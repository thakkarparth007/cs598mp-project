# %%
from z3 import *
from tqdm import tqdm
import itertools
from functools import partial

# %% [markdown]
# Todo:
# 
# (0) Programmatically generate the synth condition
#    - Sorts
#    - Universe
#    - Relations
#    - synth-fun (Grammar)
#    - Constraints
#       
# (1) Template
# - iterate over different signatures of invariant
# - for each signature, iterate over different quantifiers<br>
#    (or)
# - iterate over different "templates"
# 
# (2) Write the CEGIS loop
#    - quantify the synthesized invariant
#    - verify
#    - synthesize again

# %% [markdown]
# ## Sorts

# %%
# create uninterpreted sort Node and Epoch
ModelId = DeclareSort('ModelId')
Node = DeclareSort('Node')
Epoch = DeclareSort('Epoch')

# %% [markdown]
# ## State and Model

# %%
class DistLockState():
    def __init__(self, model_name, name):
        self.model_name = model_name
        self.name = name

        # relations
        self.ep = Function(f'{name}.ep', Node, Epoch)
        self.held = Function(f'{name}.held', Node, BoolSort())
        self.transfer = Function(f'{name}.transfer', Epoch, Node, BoolSort())
        self.locked = Function(f'{name}.locked', Epoch, Node, BoolSort())

DistLockState(Const('m', ModelId), 'test_pre') # only for testing

# %%
class DistLockModel():
    def __init__(self, model_name='m'):
        # constants
        self.model_name = model_name
        self.m = Function('Model_' + str(model_name), ModelId)()
        self.le = Function(f'le', Epoch, Epoch, BoolSort())
        # can't use partial here because these are constants, and we need to evaluate the function directly.
        # would've been nice if partial returned the function evaluation if the function accepted only a single argument.
        self.zero = Function(f'zero', Epoch)()
        self.one = Function(f'one', Epoch)()
        self.first = Function(f'first', Node)()

        self.states = {}
    
    def get_state(self, name):
        if name not in self.states:
            self.states[name] = DistLockState(self.model_name, name)
        return self.states[name]
    
    def get_axioms(self):
        e1, e2, e3 = Consts('e1 e2 e3', Epoch)
        
        Axioms = ForAll([e1, e2, e3],
            And(
                # reflexivity
                self.le(e1, e1),
                # transitivity
                Implies(And(self.le(e1, e2), self.le(e2, e3)), self.le(e1, e3)),
                # antisymmetry
                Implies(And(self.le(e1, e2), self.le(e2, e1)), e1 == e2),
                # totality
                Or(self.le(e1, e2), self.le(e2, e1)),

                # zero
                self.le(self.zero, e1),
                self.one != self.zero,
            ),
        )

        return Axioms
    
    def get_init_state_cond(self):
        S = self.get_state('init')

        n = Const('n', Node)
        e = Const('e', Epoch)

        cond = ForAll([n, e],
            And(
                S.held(n) == (n == self.first),
                Implies(n != self.first, S.ep(n) == self.zero),
                S.ep(self.first) == self.one,
                S.transfer(e, n) == False,
                S.locked(e, n) == False,
            )
        )

        return cond
    
    def store_z3model(self, m):
        self.z3model = m
        self.universe = {
            Node: {},
            Epoch: {},
        }
        self.substitution_map = []
        self.substitution_map2 = {}

        for s in self.universe.keys():
            # TODO: translate the z3 model's elements by adding the model id
            # what's unclear is if we should be modifying all the expressions such as le, transfer etc. too
            # e.g., z3 model may refer to le(m, Epoch!Val!0, Epoch!Val!1) and we'd have to translate Epoch!Val!0 to
            # Epoch!Val!0 (m) and Epoch!Val!1 to Epoch!Val!1 (m)
            
            self.universe[s] = []
            for elem in self.z3model.get_universe(s):
                fn = Function(str(elem) + "_m", ModelId, s)(self.m)
                self.substitution_map.append((elem, fn))
                self.substitution_map2[fn] = elem
                self.universe[s].append(fn)

        # def substitute_func(funcDecl, funcInterp):
        #     F = Function(funcDecl.name() + "_m", ModelId, *[funcDecl.domain(i) for i in range(funcDecl.arity())])
        #     F = partial(self.m)

        #     def helper(func_list):
        #         if len(func_list) == 1:
        #             return substitute(func_list[0], *self.substitution_map)
                
        #         cur, rest = func_list[0], func_list[1:]
        #         args = [substitute(a, *self.substitution_map) for a in cur[:-1]]
        #         res = substitute(cur[-1], *self.substitution_map)
        #         rest = helper(rest)
        #         return 

        # self.interp = {}
        # for f in self.z3model.decls():
        #     inp = model.get_interp(f)
        #     if isinstance(inp, FuncInterp):

    
    def get_universe(self, sort):
        return self.universe[sort]
    
    def get_interp(self, model: ModelRef = None):
        if model is None:
            model = self.z3model
        if self.z3model is None:
            self.z3model = model
        # create a dict of all the functions
        interp = {}
        for f in model.decls():
            interp[f.name()] = model.get_interp(f)
        
        return interp

M = DistLockModel()
M.get_axioms() # only for testing

# %% [markdown]
# ## Invariants

# %% [markdown]
# ### Swiss Invariants

# %%
def inv_fn_0(M, S, model = None, nodes = None, epochs = None):
    def body(N, E):
        return Implies(S.locked(E,N),S.transfer(E,N))
    
    if nodes is not None:
        return all([model.eval(body(n,e)) for n in nodes for e in epochs])
    else:
        N = Const('N', Node)
        E = Const('E', Epoch)
        inv = ForAll([N, E], body(N, E))
        return inv

def inv_fn_1(M, S, model=None, nodes=None, epochs=None):
    """
    conjecture (held(N) & held(M) -> N=M)
        & ((transfer(E1, N1) & ~le(E1, ep(N1)) & transfer(E2, N2) & ~le(E2, ep(N2))) -> (E1=E2 & N1=N2))
        & (( transfer(E1, N1) & ~le(E1, ep(N1))) -> ~held(N2))
    """
    N, eM, N1, N2 = Consts('N M N1 N2', Node)
    E1, E2 = Consts('E1 E2', Epoch)

    def body(N, eM, N1, N2, E1, E2):
        return And(
            Implies(
                And(S.held(N), S.held(eM)),
                N == eM
            ),
            Implies(
                And(
                    S.transfer(E1, N1),
                    Not(M.le(E1, S.ep(N1))),
                    S.transfer(E2, N2),
                    Not(M.le(E2, S.ep(N2)))
                ),
                And(
                    E1 == E2,
                    N1 == N2,
                )
            ),
            Implies(
                And(
                    S.transfer(E1, N1),
                    Not(M.le(E1, S.ep(N1)))
                ),
                Not(S.held(N2))
            )
        )
    
    if nodes is not None:
        return all([model.eval(body(n,eM,n1,n2,e1,e2)) for n, eM, n1, n2, e1, e2 in itertools.product(nodes, nodes, nodes, nodes, epochs, epochs)])

    inv = ForAll([N, eM, N1, N2, E1, E2], body(N, eM, N1, N2, E1, E2))
    return inv

def inv_fn_2(M, S, model=None, nodes=None, epochs=None):
    """
    conjecture (( transfer(E, N) & ~le(E, ep(N))) & transfer(E1, N1) & (N~=N1 | E~=E1) -> ~le(E,E1))
            & (held(N) & transfer(E1,N1) -> le(E1,ep(N)))
    """

    N, N1 = Consts('N N1', Node)
    E, E1 = Consts('E E1', Epoch)

    def body(N, N1, E, E1):
        return And(
            Implies(
                And(
                    S.transfer(E, N),
                    Not(M.le(E, S.ep(N))),
                    S.transfer(E1, N1),
                    Or(
                        Not(N == N1),
                        Not(E == E1)
                    ),
                ),
                Not(M.le(E, E1))
            ),
            Implies(
                And(S.held(N), S.transfer(E1, N1)),
                M.le(E1, S.ep(N))
            )
        )

    if nodes is not None:
        return all([model.eval(body(n,n1,e,e1)) for n, n1, e, e1 in itertools.product(nodes, nodes, epochs, epochs)])

    inv = ForAll([N, N1, E, E1], body(N, N1, E, E1))
    return inv

def inv_fn_3(M, S, model=None, nodes=None, epochs=None):
    """
    conjecture (( transfer(E, N) & ~le(E, ep(N))) -> ~le(E, ep(N1)))
            & (held(N) -> le(ep(N1), ep(N)))
    """

    N, N1 = Consts('N N1', Node)
    E = Const('E', Epoch)

    def body(N, N1, E):
        return And(
            Implies(
                And(
                    S.transfer(E, N),
                    Not(M.le(E, S.ep(N))),
                ),
                Not(M.le(E, S.ep(N1)))
            ),
            Implies(
                S.held(N),
                M.le(S.ep(N1), S.ep(N))
            )
        )
    
    if nodes is not None:
        return all([model.eval(body(n,n1,e)) for n, n1, e in itertools.product(nodes, nodes, epochs)])

    inv = ForAll([N, N1, E], body(N, N1, E))
    return inv

swiss_invars = [inv_fn_0, inv_fn_1, inv_fn_2, inv_fn_3]

# %% [markdown]
# ### DistAI invariants

# %%
invariants = """
le(E1, E2) & E1 ~= E2 -> le(E1,ep(N1)) | ~le(E2,ep(N1))
le(E1, E2) & E1 ~= E2 -> locked(E1,N1) | ~transfer(E1,N1) | ~transfer(E2,N1)
le(E1, E2) & E1 ~= E2 -> locked(E1,N1) | ~transfer(E1,N1) | ~le(E2,ep(N1))
le(E1, E2) & E1 ~= E2 -> le(E1,ep(N1)) | ~locked(E2,N1)
le(E1, E2) & E1 ~= E2 -> locked(E1,N1) | ~transfer(E1,N1) | ~locked(E2,N1)
le(E1, E2) & E1 ~= E2 -> le(E1,ep(N1)) | ~transfer(E1,N1) | ~transfer(E2,N1)
le(E1, E2) & E1 ~= E2 & N1 ~= N2 -> ~le(E2,ep(N1)) | ~le(ep(N1),ep(N2)) | ~le(ep(N2),ep(N1))
le(E1, E2) & E1 ~= E2 & N1 ~= N2 -> le(E1,ep(N1)) | le(ep(N1),ep(N2)) | ~locked(E2,N2)
le(E1, E2) & E1 ~= E2 & N1 ~= N2 -> le(E1,ep(N1)) | ~transfer(E1,N1) | ~locked(E2,N2)
le(E1, E2) & E1 ~= E2 & N1 ~= N2 -> locked(E1,N1) | ~transfer(E1,N1) | ~le(E2,ep(N2))
le(E1, E2) & E1 ~= E2 & N1 ~= N2 -> le(E1,ep(N1)) | ~held(N2) | ~transfer(E2,N1)
le(E1, E2) & E1 ~= E2 & N1 ~= N2 -> le(E1,ep(N1)) | ~transfer(E1,N1) | ~le(E2,ep(N2))
le(E1, E2) & E1 ~= E2 & N1 ~= N2 -> le(E1,ep(N1)) | ~locked(E2,N2) | ~le(ep(N2),ep(N1))
le(E1, E2) & E1 ~= E2 & N1 ~= N2 -> locked(E1,N1) | ~transfer(E1,N1) | ~transfer(E2,N2)
le(E1, E2) & E1 ~= E2 & N1 ~= N2 -> le(E1,ep(N1)) | le(ep(N1),ep(N2)) | ~le(E2,ep(N2))
le(E1, E2) & E1 ~= E2 & N1 ~= N2 -> le(E1,ep(N1)) | ~transfer(E1,N1) | ~transfer(E2,N2)
le(E1, E2) & E1 ~= E2 & N1 ~= N2 -> le(E1,ep(N1)) | ~transfer(E2,N1) | ~le(E2,ep(N2))
le(E1, E2) & E1 ~= E2 & N1 ~= N2 -> le(E1,ep(N1)) | ~le(ep(N2),ep(N1)) | ~le(E2,ep(N2))
le(E1, E2) & E1 ~= E2 & N1 ~= N2 -> locked(E1,N1) | ~transfer(E1,N1) | ~locked(E2,N2)
locked(E1,N1) | ~transfer(E1,N1) | ~le(E1,ep(N1))
locked(E1,N1) | ~held(N1) | ~transfer(E1,N1)
le(E1,ep(N1)) | ~held(N1) | ~transfer(E1,N1)
transfer(E1,N1) | ~locked(E1,N1)
le(E1,ep(N1)) | ~locked(E1,N1)
N1 ~= N2 -> ~le(ep(N1),ep(N2)) | ~le(ep(N2),ep(N1)) | ~first=N1
N1 ~= N2 -> le(E1,ep(N1)) | le(ep(N1),ep(N2)) | ~locked(E1,N2)
N1 ~= N2 -> le(E1,ep(N1)) | le(ep(N1),ep(N2)) | ~le(E1,ep(N2))
N1 ~= N2 -> le(ep(N1),ep(N2)) | ~held(N2)
N1 ~= N2 -> ~held(N1) | ~le(ep(N1),ep(N2))
N1 ~= N2 -> locked(E1,N1) | ~held(N2) | ~transfer(E1,N1)
N1 ~= N2 -> le(ep(N1),ep(N2)) | le(ep(N2),ep(N1))
N1 ~= N2 -> le(E1,ep(N1)) | ~locked(E1,N2) | ~le(ep(N2),ep(N1))
N1 ~= N2 -> ~held(N1) | ~held(N2)
N1 ~= N2 -> locked(E1,N1) | ~transfer(E1,N1) | ~le(E1,ep(N2))
N1 ~= N2 -> ~locked(E1,N1) | ~locked(E1,N2)
N1 ~= N2 -> ~first=N1 | ~first=N2
N1 ~= N2 -> ~transfer(E1,N1) | ~transfer(E1,N2)
N1 ~= N2 -> le(E1,ep(N1)) | ~held(N1) | ~transfer(E1,N2)
N1 ~= N2 -> ~transfer(E1,N1) | ~locked(E1,N2)
N1 ~= N2 -> ~locked(E1,N1) | ~le(ep(N1),ep(N2)) | ~le(ep(N2),ep(N1))
N1 ~= N2 -> le(E1,ep(N1)) | ~held(N1) | ~locked(E1,N2)
N1 ~= N2 -> le(E1,ep(N1)) | ~le(ep(N2),ep(N1)) | ~le(E1,ep(N2))
N1 ~= N2 -> le(E1,ep(N1)) | ~held(N1) | ~le(E1,ep(N2))
N1 ~= N2 -> le(E1,ep(N1)) | ~held(N2) | ~transfer(E1,N1)
N1 ~= N2 -> le(E1,ep(N1)) | ~transfer(E1,N1) | ~le(E1,ep(N2))
""".replace("~=", "!=").strip().split("\n")

def parse(inv_str, vars):
    inv_str = inv_str.strip()

    if inv_str.count("->") > 1:
        raise Exception("Too many ->")

    if '->' in inv_str:
        left, right = inv_str.split('->')
        return f"Implies({parse(left, vars)},{parse(right, vars)})"

    if "&" in inv_str:
        parts = inv_str.split("&")
        return f"And([{','.join([parse(p, vars) for p in parts])}])"

    if "|" in inv_str:
        parts = inv_str.split("|")
        return f"Or([{','.join([parse(p, vars) for p in parts])}])"

    if "~" in inv_str:
        return f"Not({parse(inv_str[1:], vars)})"

    if "!=" in inv_str:
        left, right = inv_str.split("!=")
        return f"{parse(left, vars)} != {parse(right, vars)}"
    
    if "=" in inv_str:
        left, right = inv_str.split("=")
        return f"{parse(left, vars)} == {parse(right, vars)}"

    if inv_str.endswith(")"):
        first_brace_idx = inv_str.index("(")
        name = inv_str[:first_brace_idx]
        args = inv_str[first_brace_idx+1:-1].split(",")
        prefix = "M." if name == 'le' else "S."
        return f"{prefix}{name}({','.join([parse(a, vars) for a in args])})"

    if inv_str == "first":
        return "M.first"

    vars.add(inv_str)
    return inv_str

def get_inv_fn(fn_name, inv_str, only_code=False):
    vars = set()
    inv_fn_str = parse(inv_str, vars)

    nodes = [v for v in vars if v.startswith("N")]
    epochs = [v for v in vars if v.startswith("E")]

    code = []
    if len(nodes) == 1:
        code += [nodes[0] + " = Const('" + nodes[0] + "', Node)"]
    elif len(nodes) > 1:
        code += [", ".join(nodes) + " = Consts('" + " ".join(nodes) + "', Node)"]
    
    if len(epochs) == 1:
        code += [epochs[0] + " = Const('" + epochs[0] + "', Epoch)"]
    elif len(epochs) > 1:
        code += [", ".join(epochs) + " = Consts('" + " ".join(epochs) + "', Epoch)"]
    
    code += ["inv = ForAll([" + ", ".join(vars) + "], " + inv_fn_str + ")"]
    code += ["return inv"]

    code = f"def {fn_name}(M, S):\n\t" + "\n\t".join(code)
    if only_code:
        return code

    ldict = {}
    exec(code)
    exec(f"ldict['fn'] = {fn_name}")
    return ldict['fn']

distai_invars = [get_inv_fn("inv_fn_" + str(i), inv) for i, inv in enumerate(invariants)]

# %%
M = DistLockModel()
S = M.get_state('pre')

print(invariants[0])
distai_invars[0](M, S)

# %% [markdown]
# ### All invariants

# %%
# all_invars = swiss_invars
all_invars = distai_invars

# %% [markdown]
# ## Conditions

# %% [markdown]
# ### Safety Condition

# %%
# Inv: safety property locked(E, N1) & locked(E, N2) -> N1 = N2

def get_safety_inv(M: DistLockModel, S: DistLockState, model=None, nodes=None, epochs=None):
    e1 = Const('e1', Epoch)
    n1, n2 = Consts('n1 n2', Node)

    def body(e1, n1, n2):
        return Implies(
            And(
                S.locked(e1, n1),
                S.locked(e1, n2)
            ),
            n1 == n2
        )

    if model is not None:
        return ([model.eval(body(e1, n1, n2)) for e1, n1, n2 in itertools.product(epochs, nodes, nodes)])

    Inv = ForAll([e1, n1, n2], body(e1, n1, n2))

    return Inv

M = DistLockModel()
S = M.get_state('pre')
get_safety_inv(M, S) # only for testing

# %% [markdown]
# ### Actions

# %%
# Grant action

def get_grant_action(M: DistLockModel, S1: DistLockState, S2: DistLockState, onlyPreq=False):
    """
    action grant(n1:node, n2:node, e:epoch) = {
        # release the lock and send a transfer message
        require held(n1);
        require ~le(e, ep(n1));   # jump to some strictly higher epoch
        transfer(e, n2) := true;
        held(n1) := false;
    }
    """
    e, EE = Consts('e EE', Epoch)
    n1, n2, NN = Consts('n1 n2 NN', Node)

    prec = Exists([n1, n2, e],
        And(
            S1.held(n1),
            Not(M.le(e, S1.ep(n1)))
        )
    )
    if onlyPreq:
        return prec

    AcceptAction = ForAll([n1, n2, e],
        Implies(
            # precondition
            And(
                S1.held(n1),
                Not(M.le(e, S1.ep(n1)))
            ),
            # postcondition
            And(
                # for everything, use S1's values unless there's a change.
                ForAll([EE, NN],
                    S2.transfer(EE, NN) == If(And(EE == e, NN == n2), True, S1.transfer(EE, NN))),
                ForAll([NN],
                    S2.held(NN) == If(NN == n1, False, S1.held(NN))),
                ForAll([EE, NN],
                    S2.locked(EE, NN) == S1.locked(EE, NN)),
                ForAll([NN],
                    S2.ep(NN) == S1.ep(NN))
            )
        )
    )

    return AcceptAction

M = DistLockModel()
S1 = M.get_state('pre')
S2 = M.get_state('post')
get_grant_action(M, S1, S2) # only for testing

# %%
# Accept action

def get_accept_action(M: DistLockModel, S1: DistLockState, S2: DistLockState, onlyPreq=False):
    """
    action accept(n:node, e:epoch) = {
        # receive a transfer message and take the lock, sending a locked message
        require transfer(e,n);
        if ~le(e, ep(n)) {
            held(n) := true;
            ep(n) := e;
            locked(e, n) := true;
        };
    }
    """
    e, EE = Consts('e EE', Epoch)
    n, NN = Consts('n NN', Node)

    prec = Exists([n, e],
        And(
            S1.transfer(e, n),
            Not(M.le(e, S1.ep(n)))
        )
    )
    if onlyPreq:
        return prec

    AcceptAction = ForAll([n, e],
        Implies(
            And(
                S1.transfer(e, n),
                Not(M.le(e, S1.ep(n)))
            ),
            And(
                ## Precise formulation
                ForAll([NN],
                    S2.held(NN) == If(n == NN, True, S1.held(NN))),
                ForAll([NN],
                    S2.ep(NN) == If(n == NN, e, S1.ep(NN))),
                ForAll([EE, NN],
                    S2.locked(EE, NN) == If(And(EE == e, NN == n), True, S1.locked(EE, NN))),
                ForAll([EE, NN],
                    S2.transfer(EE, NN) == S1.transfer(EE, NN)),
            )
        )
    )

    return AcceptAction

M = DistLockModel()
S1 = M.get_state('pre')
S2 = M.get_state('post')
get_accept_action(M, S1, S2) # only for testing

# %%
all_invars = distai_invars[1:2]

# %% [markdown]
# ## Verification

# %% [markdown]
# ### Invariants(Init) -- Initial condition

# %%
M = DistLockModel()
S1 = M.get_state('pre')
S2 = M.get_state('post')

inv = lambda M, S: And(*[inv(M, S) for inv in all_invars[:]])

solver = Solver()
solver.assert_and_track(M.get_init_state_cond(), "1")
solver.assert_and_track(M.get_axioms(), "2")
solver.assert_and_track(Not(inv(M, M.get_state('init'))), "3")

assert solver.check() == unsat

# %% [markdown]
# ^ unsat means that the initial state satisfies all invariants

# %% [markdown]
# ### Invariants(Step) -- Inductiveness

# %%
solver = Solver()
p, q, r = Bools('p q r')
solver.add(And(Implies(p, q), Implies(r, q)) != Implies(Or(p, r), q))
solver.check()

# %% [markdown]
# ## Counter examples

# %%
cex_id = 0

class CEX():
    def __init__(self, solver, z3model, M, cand_invar):
        global cex_id
        self.id = cex_id
        self.solver = solver
        self.z3model = z3model
        self.M = M
        self.cand_invar = cand_invar
        if self.z3model:
            self.M.store_z3model(self.z3model)
            self.bro = self.z3model.sexpr()

        cex_id += 1
    
    def exists(self):
        return self.z3model is not None

    def get_synth_constraint(known_invars, invar_expr):
        """
        Takes an expression that asserts that an invariant holds in a given model.
        This expression is used to form the constraint, depending upon the type of CEX.

        Positive CEX:
            This counter example is a (model, S) pair, where S is the state that the invariant doesn't
            include, but it should.

            The constraint will be of the form:
                S => invar_expr

        Negative CEX:
            This counter example is a (model, S) pair, where S is the state that the invariant
            includes, but is not safe.

            The constraint will be of the form:
                state_conditions => NOT(invar_expr)   | all evaluations done in the context of the model
        
        Inductiveness CEX:
            This counter example is a (model, S1, S2) triplet, where invariant holds in S1, but not in S2.
            We want our new invariant to either not hold in S1 or hold in both.

            The constraint will be of the form:
                S1 => Not(invar_expr) OR (S1 => invar_expr AND S2 => invar_expr)  | all evaluations done in the context of the model
                S1 => Not(invar_expr) OR ((S1 OR S2) => invar_expr)               | all evaluations done in the context of the model
            
            p => q AND r => q
            (~p V q) AND (~r V q)
            (~p AND ~r) V q
            ~(p OR r) V q
            (p V r) => q
        """
        raise NotImplementedError()
    
    def get_formula_of_state(self, S, known_invars, include_global=False):
        """
        Converts a given state into a boolean formula describing the state.
        Specifically, converts relations of a state S from z3 function to a ground formula in the model's universe
        Appends the known invariants to the formula.
        """

        node_univ, epoch_univ = self.M.get_universe(Node), self.M.get_universe(Epoch)
        univ = {Node: node_univ, Epoch: epoch_univ}
        decls = self.z3model.decls()

        #global_decls = must be included in general
        decls_ = []
        for d in decls:
            if d.name().endswith("_m") or d.name().startswith("Model_") or d.name().startswith("inv"):
                continue
            if d.name().startswith(S.name) or (include_global and "." not in d.name()):
                dargs = [d.domain(i) for i in range(d.arity())]
                drange = d.range()
                fn = Function(d.name() + "_m", ModelId, *dargs, drange)
                decls_.append((d, fn))
        
        formulas = {}
        for d, fn in decls_:
            universes = [univ[d.domain(i)] for i in range(d.arity())]
            all_args = itertools.product(*universes)
            # TODO Optimization: remove those for which model_completion was necessary (i.e, don't care inputs)
            conjuncts = []
            for args in all_args:
                args2 = [self.M.substitution_map2[a] for a in args]
                lhs = fn(self.M.m, *args)
                rhs = self.z3model.eval(d(*args2), model_completion=True)
                rhs = substitute(rhs, *self.M.substitution_map)
                conjuncts.append(lhs == rhs)
            
            func_as_formula = And(*conjuncts)
            formulas[fn.name()] = func_as_formula

        known_invars = And(*[inv(self.M, S) for inv in known_invars])
        extra = True # known_invars -> this is unnecessary, I think
        return formulas, And(
            *([f for n, f in formulas.items() if n != 'inv']) # + [extra])
        )


# %%
class PositiveCEX(CEX):
    def __init__(self, solver, z3model, M, cand_invar, S):
        super().__init__(solver, z3model, M, cand_invar)
        self.S = S
    
    def get_synth_constraint(self, known_invars, invar_expr):
        _, formula = self.get_formula_of_state(self.S, known_invars, include_global=True)
        known_invars = And(*[inv(self.M, S) for inv in known_invars])
        extra = Not(Implies(known_invars, invar_expr)) # to make sure we get meaningful results, we don't want our new invariant to be directly implied by known invariants
        return And(formula, invar_expr) #Implies(formula, invar_expr)
        #return And(Implies(formula, invar_expr), extra)

# %%
class NegativeCEX(CEX):
    def __init__(self, solver, z3model, M, cand_invar, S):
        super().__init__(solver, z3model, M, cand_invar)
        self.S = S
    
    def get_synth_constraint(self, known_invars, invar_expr):
        _, formula = self.get_formula_of_state(self.S, known_invars, include_global=True)
        known_invars = And(*[inv(self.M, S) for inv in known_invars])
        extra = Not(Implies(known_invars, invar_expr)) # to make sure we get meaningful results, we don't want our new invariant to be directly implied by known invariants
        #return And(Implies(formula, Not(invar_expr)), extra)
        return And(formula, Not(invar_expr)) #, (get_safety_property_as_expr(self.M, self.S))) #Implies(formula, Not(invar_expr))

# %%
class InductivenessCEX(CEX):
    def __init__(self, solver, z3model, M, cand_invar, S1, S2):
        super().__init__(solver, z3model, M, cand_invar)
        self.S1 = S1
        self.S2 = S2
    
    def get_synth_constraint(self, known_invars, invar_expr):
        _, pre_formula = self.get_formula_of_state(self.S1, known_invars, include_global=True)
        _, post_formula = self.get_formula_of_state(self.S2, known_invars) # no need for global here.

        constraint1 = And(simplify(pre_formula), Not(simplify(invar_expr)))
        constraint2 = And(Or(simplify(pre_formula), simplify(post_formula)), simplify(invar_expr))

        known_invars = And(*[inv(self.M, S) for inv in known_invars])
        extra = Not(Implies(known_invars, invar_expr)) # to make sure we get meaningful results, we don't want our new invariant to be directly implied by known invariants

        return Or(constraint1, constraint2)
        #return And(Or(constraint1, constraint2), extra)

# %%
class SolverWrapper(Solver):
    def __init__(self, debug=False):
        super().__init__()
        self.debug = debug
    
    def add(self, c, name=None):
        if self.debug:
            print("Adding constraint:", c, "with name:", name)
            return self.assert_and_track(c, name)
        else:
            return super().add(c)

s = SolverWrapper(True)
p, q = Bools('p q')
s.add(p != p, "temp")
print(s.check())
s.unsat_core()

# %%

def get_positive_cex(model_id, invars, assert_and_track=False):
    M = DistLockModel(model_id)
    S1 = M.get_state('init')

    inv = lambda M, S: And(*[inv(M, S) for inv in invars])

    solver = SolverWrapper(assert_and_track)
    solver.add(M.get_init_state_cond(), "1")
    solver.add(M.get_axioms(), "2") # check if it's necessary to add the axioms

    cand_invar = inv(M, M.get_state('init'))
    solver.add(Not(cand_invar), "3")

    if solver.check() == sat:
        return PositiveCEX(solver, solver.model(), M, cand_invar, S1)
    
    return PositiveCEX(solver, None, M, cand_invar, S1)

cex = get_positive_cex(model_id=1, invars=distai_invars[:1])
print(cex.exists())

# %%

def get_negative_cex(model_id, invars, assert_and_track=False):
    M = DistLockModel(model_id)
    S = M.get_state('pre')

    inv = lambda M, S: And(*[inv(M, S) for inv in invars])

    solver = SolverWrapper(assert_and_track)
    # solver.add(M.get_init_state_cond(), "1")
    solver.add(M.get_axioms(), "2")
    cand_invar = inv(M, S)
    solver.add(cand_invar, "3")

    ## Safety VC:
    solver.add(Not(get_safety_inv(M, S)), "8")

    if solver.check() == sat:
        return NegativeCEX(solver, solver.model(), M, cand_invar, S)
    
    return NegativeCEX(solver, None, M, cand_invar, S)

cex = get_negative_cex(model_id=1, invars=distai_invars[:1])
print(cex.exists())

# %%
def get_inductiveness_cex(model_id, invars, assert_and_track=False):
    M = DistLockModel(model_id)
    S1 = M.get_state('pre')
    S2 = M.get_state('post')

    solver = SolverWrapper()
    # solver.add(M.get_init_state_cond(), "1")
    solver.add(M.get_axioms(), "2")
    # solver.add(inv(M, S1), "3")
    solver.add(get_grant_action(M, S1, S2), "4")
    solver.add(get_accept_action(M, S1, S2), "5")

    # important. This asserts that at least one of the actions is taken.
    # More specifically, it asserts that pre-condition for at least one of the actions is true.
    # Without this, z3 is free to come up with a non sensical Pre state. The reason is,
    # our transition relation is defined as prec -> post, and z3 is free to set prec == False.
    solver.add(Or(get_grant_action(M, S1, S2, True), get_accept_action(M, S1, S2, True)), "6")

    # However, ideally, the above thing shouldn't be required and should be captured by the invariant.

    ## Asking z3 to solve it this way can cause it to hang.
    # solver.add(Not(inv(M, S2)), "7")

    ## So we manually "unroll" as below.
    ## It is equivalent because AND(P, Not(q1, q2)) == Or(And(P, Not(q1)), And(P, Not(q2)))
    #enumeration = tqdm(enumerate(invars[:])) if assert_and_track else enumerate(invars[:])
    # for i, inv_i in enumeration:
    #     solver.push()
    #     for j, inv_j in enumerate(invars[:i+1]):
    #         solver.add(inv_j(M, S1), "6.5_" + str(j))
    #     solver.add(Not(inv_i(M, S2)), "7")
    #     if solver.check() == sat:
    #         # print("Invariant set is not inductive")
    #         return InductivenessCEX(solver, solver.model(), M, S1, S2)
    #     solver.pop()

    for i, inv_i in enumerate(invars):
        solver.add(inv_i(M, S1), "6.5_" + str(i))
    # for sanity check: maybe assert all invars[:-1] hold on S2.
    cand_invar = invars[-1](M, S2)
    solver.add(Not(cand_invar), "7")
    if solver.check() == sat:
        return InductivenessCEX(solver, solver.model(), M, cand_invar, S1, S2)

    # print("Invariant set is inductive.")
    return InductivenessCEX(solver, None, M, cand_invar, S1, S2)

cex = get_inductiveness_cex(model_id=1, invars=distai_invars[:2])
# cex = get_inductiveness_cex([lambda M, S: True])
cex.exists()

# %%
def get_invar_expr_for_model(inv, quantifiers, sorts, model):
    """
    Takes reference to the uninterpreted invariant function along with its siganture (quantifiers, sorts), and a model.
    Returns a formula that asserts that the invariant holds on the given model.
    Note that "invariants holds on the given model" is a weird clause, because invariants hold on a state, and this function doesn't take a state.
    But the thing is, this function is a helper function. It returns an expression that asserts that the invariant holds,
    but this expression is later used in the right side of an implication of the form `StateConditions -> InvariantExpr`.
    The reason "model" is involved, is because different models have different universes, and we want the invariant
    expression in that universe.

    Example:
    quantifiers = ['EXISTS', 'FORALL']
    sorts       = [Node, Epoch]
    universes   = [node_univ, epoch_univ]

    invar = Function('invar', Node, Epoch, BoolSort())
    ForAll(N), Exists(E) such that invar(N, E) == True
    And([
        Or([
            invar(n, e)
            for e in epoch_univ
        ])
        for n in node_univ
    ])
    """
    universes = [model.get_universe(s) for s in sorts]

    def helper(qList, uList, args):
        q, u = qList[0], uList[0]
        assert q in ['FORALL', 'EXISTS']

        Q = And if q.upper() == 'FORALL' else Or

        if len(qList) == 1 and len(uList) == 1:
            # print(q, u, Q([synthesized_inv(*(args + [elem])) for elem in u]))
            return Q([inv(*(args + [elem])) for elem in u])
        
        # print(q, u, Q([helper(qList[1:], uList[1:], args + [elem]) for elem in u]))
        return Q([helper(qList[1:], uList[1:], args + [elem]) for elem in u])

    # return synthesized_inv, helper(quantifiers, universes, [])
    return helper(quantifiers, universes, [])

# inv_expr = synth_invar(['FORALL', 'FORALL'], [Epoch, Epoch], m)
synthesized_inv = Function('inv', *([Epoch, Epoch] + [BoolSort()]))
inv_expr = get_invar_expr_for_model(synthesized_inv, ['FORALL', 'EXISTS'], [Epoch, Epoch], cex.M)
print(inv_expr.sexpr())

# %%

def get_safety_property_as_expr(M, S):
    locked_m = Function('locked_m', ModelId, Epoch, Node, BoolSort())
    def prop_eval(e1, n1, n2):
        return Implies(And(
            locked_m(M.m, e1, n1),
            locked_m(M.m, e1, n2),
        ), n1 == n2)
    return simplify(get_invar_expr_for_model(prop_eval, ['FORALL', 'FORALL', 'FORALL'], [Epoch, Node, Node], M))

prop = get_safety_property_as_expr(cex.M, cex.S1)
print(prop)
# print(simplify(prop))

# %%

def template_generator(allowed_quantifiers, allowed_sorts, max_terms = 5):
    def picker(options, how_many):
        if len(allowed_quantifiers) > 1:
            # needs optimization.
            # this generates many duplicates, even after using set
            # for example, it considers ((forall, forall) (node, epoch)) and ((forall, forall) (epoch, node)) the same.
            return set(itertools.permutations(options*how_many, how_many))
        else:
            return itertools.combinations_with_replacement(options, how_many)
    
    for i in range(1, max_terms+1):
        # loop over i-permutations of quantifiers
        for quantifiers in picker(allowed_quantifiers, i):
            # loop over i-permutations of sorts
            for sorts in picker(allowed_sorts, i):
                # hack
                if len(set(sorts)) != len(allowed_sorts):
                    continue
                yield list(quantifiers), list(sorts)

a = [t for t in template_generator(['FORALL'], [Node, Epoch], 3)]
#print(len(a), len(set(a)))
a
# %%

from string import Template
import subprocess

class CEGISLearner():
    # TODO:
    #   (X) Add the invariants discovered so far to the synth_str
    #   (X) Don't move to a new template till we can't find invariants for the current template
    #   [ ] Just because our template has an epoch variable doesn't mean the invariant generated will use epoch at all. This causes duplicates that we must be aware of.
    def __init__(self, invars=[], max_terms = 5):
        self.allowed_quantifiers = ['FORALL'] #, 'EXISTS']
        self.allowed_sorts = [Node, Epoch]
    
        self.counter_examples = []
        self.invars = [lambda M, S: M.get_axioms()] + invars
        self.cur_invar = lambda M, S: False
        self.template_generator = template_generator(
            self.allowed_quantifiers,
            self.allowed_sorts,
            max_terms
        )

        # vars:
        #   $universe_declarations
        #   $inv_args
        #   $node_universe
        #   $epoch_universe
        self.synth_str_template = Template("""
(set-logic ALL)

(declare-sort ModelId)
(declare-sort Node)
(declare-sort Epoch)

$universe_declarations

(declare-fun held_m (ModelId Node) Bool)
(declare-fun locked_m (ModelId Epoch Node) Bool)
(declare-fun transfer_m (ModelId Epoch Node) Bool)
(declare-fun ep_m (ModelId Node) Epoch)
(declare-fun le_m (ModelId Epoch Epoch) Bool)
(declare-fun zero_m (ModelId) Epoch)
(declare-fun one_m (ModelId) Epoch)
(declare-fun first_m (ModelId) Node)

(synth-fun inv ((m ModelId) $inv_args) Bool

    ;; Declare the non-terminals that would be used in the grammar
    ((Start Bool) (Atom Bool) (Node_ Node) (Epoch_ Epoch))

    ;; Define the grammar for allowed implementations of inv
    (
        (Start Bool 
            (
                (and Atom Atom)
                (or Atom Atom)
                (=> Atom Atom)
                (not Atom)
            )
        )

        (Atom Bool 
            (
                (held_m m Node_)
                (locked_m m Epoch_ Node_)
                (transfer_m m Epoch_ Node_)
                (le_m m Epoch_ Epoch_)
            )
        )

        (Node_ Node
            (
                $node_universe
            )
        )

        (Epoch_ Epoch
            (
                $epoch_universe
                (ep_m m Node_)
            )
        )
    
    )
)

$constraints

(declare-fun DUMMYMODEL () ModelId)
$dummy_vars

$unique_invar_asserts
(assert (not (= (inv DUMMYMODEL $dummy_args) true)))

(check-synth)
        """)
    
    def loop(self, max_iters=10, debug=False):
        synth_generator = self.synth()
        model_id = 0
        for i in tqdm(range(max_iters)):
            cex = get_positive_cex(model_id, self.invars + [self.cur_invar], debug)
            if cex.exists():
                model_id += 1
                self.counter_examples.append(cex)
                # overwrite the current invariant, it's useless
                self.cur_invar = next(synth_generator)
                continue

            # # now that we've found an invariant that includes the initial
            # # state, we don't need to worry about positive counter examples
            # # because all future invariants will be ANDed with the
            # # invariants that include the initial state.
            # self.counter_examples = []

            cex = get_inductiveness_cex(model_id, self.invars + [self.cur_invar], debug)
            if cex.exists():
                model_id += 1
                self.counter_examples.append(cex)
                # overwrite the current invariant, it's useless
                self.cur_invar = next(synth_generator)
                continue
            
            # # check if our invariant is already implied by existing invariants
            # # if so, it's useless
            # solver = Solver()
            # known_invars = And(*[inv(M, S) for inv in self.invars])
            # solver.add(Not(Implies(known_invars, self.cur_invar(M, S))))
            # if solver.check() == unsat and False:
            #     continue
            
            # store the current invariant, because it's inductive
            self.invars.append(self.cur_invar)
            print("WINNER: ", self.cur_invar(M, S))
            # throw away all inductive cexs.
            # because the inductive cexs may be spurios.
            # ideally, we only wanna throw away those inductive cexs where
            # cur_invar(cex.S1) is false. Meaning, that counter example's pre state
            # is unreachable. (see discussion with adithya)
            # self.counter_examples = [cex for cex in self.counter_examples if not(isinstance(cex, InductivenessCEX))]
            
            cex = get_negative_cex(model_id, self.invars, debug)
            if cex.exists():
                model_id += 1
                self.counter_examples.append(cex)
                self.cur_invar = next(synth_generator)
            else:
                print("No counter-example found.")
                return True

        return False

    def gen_cex(self):
        cex = get_inductiveness_cex(self.invars + [self.cur_invar], assert_and_track=False)
        if cex is not None:
            self.counter_examples.append(cex)
            return cex
        return None
    
    def get_synth_str(self, qs, sorts):
        synthesized_inv = Function('inv', ModelId, *(sorts + [BoolSort()]))

        universes = {}
        for s in self.allowed_sorts:
            universes[s] = set()
        universes[ModelId] = set()

        constraints = []
        for cex in self.counter_examples:
            universes[ModelId].add(cex.M.m)
            
            constraints.append('; candidate invariant was : (cex type: ' + str(type(cex)) + ')')
            constraints.append("\n".join([
                "; " + l for l in cex.cand_invar.sexpr().split("\n")
            ]))
            cex_constraints = str(cex.solver)
            constraints.append("\n".join([
                "; " + l for l in cex_constraints.split("\n")
            ]))
            constraints.append("\n".join([
                "; " + l for l in cex.bro.split("\n")
            ]))

            for s in self.allowed_sorts:
                # shouldn't be cex.M, because we want the generic constant names,
                # not the constants bound to the model
                univ = cex.z3model.get_universe(s)
                for elem in univ:
                    universes[s].add(str(elem))
                
                elems = " ".join(
                    [f"({str(elem)}_m {cex.M.m}) " for elem in univ]
                )
                constraints.append(f"(constraint (distinct {elems}))")
            
            # here we need cex.M because we want the constants bound to the model
            inv_expr = get_invar_expr_for_model(partial(synthesized_inv, cex.M.m), qs, sorts, cex.M)
            constraint = cex.get_synth_constraint(self.invars, inv_expr)
            sexpr = constraint.sexpr() #.replace("init.", "").replace("pre.", "").replace("post.", "")
            constraints.append(f"(constraint {sexpr})")
            constraints.append("\n")
        
        # known_invars = And(*[inv(M, S) for inv in self.invars])
        # constraints.append(f"(constraint (not (=> {known_invars.sexpr()} {synthesized_inv.sexpr()})))")
        
        universe_declarations = []
        for s, elems in universes.items():
            for elem in elems:
                if s != ModelId:
                    universe_declarations.append(f"(declare-fun {elem}_m (ModelId) {s.name()})")
                else:
                    universe_declarations.append(f"(declare-fun {elem} () {s.name()})")
            universe_declarations.append("")
        
        inv_args = []
        dummy_vars = []
        dummy_args = []
        args_of_type = {Node: [], Epoch: []}
        for s in sorts:
            arg_name = s.name().lower()[0] + str(len(args_of_type[s])+1)
            args_of_type[s].append(arg_name)
            inv_args.append(f"({arg_name} {s.name()})")
            dummy_vars += [f"(declare-fun {arg_name.upper()} () {s.name()})"]
            dummy_args += [arg_name.upper()]
        
        inv_args = " ".join(inv_args)
        dummy_vars = "\n".join(dummy_vars)
        dummy_args = ' '.join(dummy_args)
        unique_invar_asserts = []
        for i, inv1 in enumerate(self.cur_templ_invars):
            unique_invar_asserts.append(inv1)
            lhs = f"(inv{i} DUMMYMODEL {dummy_args})"
            rhs = f"(inv DUMMYMODEL {dummy_args})"
            unique_invar_asserts.append(f"(assert (not (= {lhs} {rhs})))")
        
        node_universe = '\n'.join(args_of_type[Node])
        epoch_universe = '\n'.join(args_of_type[Epoch])
        # if len(node_universe) > 0:
        #     epoch_universe += '\n' + '(ep Node_)'

        return self.synth_str_template.substitute(
            universe_declarations='\n'.join(universe_declarations),
            inv_args=inv_args,
            node_universe=node_universe,
            epoch_universe=epoch_universe,
            constraints='\n'.join(constraints).replace("init.", "").replace("pre.", "").replace("post.", ""),
            dummy_vars=dummy_vars,
            dummy_args=dummy_args,
            unique_invar_asserts='\n'.join(unique_invar_asserts)
        )
    
    def synth(self):
        for qs, sorts in self.template_generator:
            self.cur_templ_invars = []
            while True:
                synth_str = self.get_synth_str(qs, sorts)
                synth_file = 'test_synth.sy'
                with open(synth_file,'w') as f:
                    f.write(synth_str)

                synthesized_invar_defs, invars_orig = self.run_minisy(synth_file, nsols=1)

                if len(synthesized_invar_defs) == 0:
                    break

                for defn, defn_orig in zip(synthesized_invar_defs, invars_orig):
                    print("Candidate: ", defn)
                    L = len(self.cur_templ_invars)
                    inv_str = defn_orig.replace("inv ", f"inv{L} ")
                    self.cur_templ_invars.append(inv_str)
                    res = self.parse_inv_defn(qs, sorts, defn)
                    #print("Simplified candidate: ", res(M, S))
                    yield res

    def run_minisy(self, synth_file, nsols=1):
        cmd = f'source ~/.zshrc; minisy {synth_file} --num-solutions={nsols}'
        # cmd = f'source ~/.zshrc; minisy {synth_file} --stream'
        # process = subprocess.Popen(cmd,
        #     shell=True,
        #     executable='/bin/zsh',
        #     encoding='utf-8',
        #     stdout=subprocess.PIPE)
        out = subprocess.check_output(
            cmd,
            shell=True, executable="/bin/zsh", encoding='utf-8'
        )
        #print(out)
        lines = out.split('\n')
        # lines = iter(process.stdout.readline, b'')
        defs = []
        defs2 = []
        for line in lines:
            line = line.strip()
            if line == 'sat' or line == '':
                continue
            if line == 'unsat':
                break
            if line.startswith('(define-fun'):
                # if len(defs):
                #     yield defs[-1].strip()
                defs2.append(line)
                line = line.replace("(m ModelId) ", "")
                line = line.replace("_m m", "")
                # TODO: in the invariant definition, there'll be references to held_m, ep_m, etc., which need to be replaced. Or maybe don't call them that in the grammar?
                defs.append(line)
            else:
                # print("BRO", line, defs)
                defs[-1] += '\n' + line
                defs2[-1] += "\n" + line
        # if len(defs):
        #     yield defs[-1].strip()
        return [d.strip() for d in defs], [d.strip() for d in defs2]
    
    def parse_inv_defn(self, quantifiers, sorts, defn):
        defn += "\n"
        sort_counts = {}

        indent = 1
        q_opens = ""
        q_closes = ""
        args = []
        for q, s in zip(quantifiers, sorts):
            sort_counts[s] = sort_counts.get(s, 0) + 1
            count = sort_counts[s]
            pref = s.name()[0].lower()
            name = pref + str(count)
            defn += f"(declare-fun {name} () {s.name()})\n"
            args += [name]
            q_opens += f"{('   ')*indent}({q.lower()} (({name} {s.name()}))\n"
            q_closes = f"{('   ')*indent})\n" + q_closes
            indent += 1
        
        defn += f"(assert\n{q_opens}{('   ')*indent}(inv {' '.join(args)})\n{q_closes})\n"
        # print(defn)
        # return

        def inv(M, S):
            sorts = {'Node': Node, 'Epoch': Epoch}
            decls = {'held': S.held, 'locked': S.locked, 'transfer': S.transfer,
                    'ep': S.ep, 'le': M.le}
            return simplify(parse_smt2_string(defn, sorts=sorts, decls=decls)[0])
        
        return inv


cegis_learner = CEGISLearner()
cegis_learner.loop(max_iters=50)

exit()
# %%

# %%
# synthesized_inv = Function('inv', Node, BoolSort())

# inv_expr = synth_invar(['FORALL', 'EXISTS'], [Epoch, Epoch], m)
inv_expr = synth_invar(['FORALL', 'EXISTS'], [Node, Epoch], m)

# \forall n
ice_constraint_1 = Implies(pre_formula, Not(inv_expr))
ice_constraint_1_sexpr = (ice_constraint_1.sexpr().replace('pre.',''))
print(ice_constraint_1_sexpr)
# ice_constraint_2 = And(pre_formula, post_formula)

# ice_constraint = Or(ice_constraint_1, ice_constraint_2)
# ice_constraint

# %%
synth_str = f"""
(set-logic ALL)

(declare-sort Node)
(declare-sort Epoch)

;; universe for Epoch:
;;   Epoch!val!3 Epoch!val!4 Epoch!val!2 Epoch!val!1 Epoch!val!0 
;; -----------
;; definitions for universe elements:
(declare-fun Epoch!val!3 () Epoch)
(declare-fun Epoch!val!4 () Epoch)
(declare-fun Epoch!val!2 () Epoch)
(declare-fun Epoch!val!1 () Epoch)
(declare-fun Epoch!val!0 () Epoch)
;; cardinality constraint: - not having here

;; -----------
;; universe for Node:
;;   Node!val!0 
;; -----------
;; definitions for universe elements:
(declare-fun Node!val!0 () Node)
;; cardinality constraint: - not having here

(declare-fun held (Node) Bool)
(declare-fun locked (Epoch Node) Bool)
(declare-fun transfer (Epoch Node) Bool)
(declare-fun ep (Node) Epoch)
(declare-fun le (Epoch Epoch) Bool)

;;(synth-fun inv ((e1 Epoch) (e2 Epoch)) Bool
(synth-fun inv ((n1 Node) (e1 Epoch)) Bool
    
    ;; Declare the non-terminals that would be used in the grammar
    ((Start Bool) (Atom Bool) (Node_ Node) (Epoch_ Epoch))

    ;; Define the grammar for allowed implementations of max2
    (
        (Start Bool 
               (
                (and Atom Atom)
                (or Atom Atom)
                (=> Atom Atom)
                (not Atom)
               )
        )

        (Atom Bool 
               (
                (held Node_)
                (locked Epoch_ Node_)
                (transfer Epoch_ Node_)
                (le Epoch_ Epoch_)
               )
        )

        (Node_ Node
            (
                n1
            )
        )

        (Epoch_ Epoch
            (
                e1
                ;; e2
                (ep Node_)
            )
        )
     
    )
)

(constraint {ice_constraint_1_sexpr})

(check-synth)
"""

# write synth_str to file
with open('synth.smt2', 'w') as f:
    f.write(synth_str)

# run minisy (with the above file)
# spawn childprocess or subprocess and read the stdout


print(synth_str)
with open('test_synth.sy','w') as synth_file:
    synth_file.write(synth_str)

# %%
def parse_inv_defn(quantifiers, sorts, defn):
    defn += "\n"
    sort_counts = {}

    indent = 1
    q_opens = ""
    q_closes = ""
    args = []
    for q, s in zip(quantifiers, sorts):
        sort_counts[s] = sort_counts.get(s, 0) + 1
        count = sort_counts[s]
        pref = s.name()[0].lower()
        name = pref + str(count)
        defn += f"(declare-fun {name} () {s.name()})\n"
        args += [name]
        q_opens += f"{('   ')*indent}({q.lower()} (({name} {s.name()}))\n"
        q_closes = f"{('   ')*indent})\n" + q_closes
        indent += 1
    
    defn += f"(assert\n{q_opens}{('   ')*indent}(inv {' '.join(args)})\n{q_closes})\n"
    # print(defn)
    # return

    def inv(M, S):
        sorts = {'Node': Node, 'Epoch': Epoch}
        decls = {'held': S.held, 'locked': S.locked, 'transfer': S.transfer,
                 'ep': S.ep, 'le': M.le}
        return parse_smt2_string(defn, sorts=sorts, decls=decls)[0]
    
    return inv

defn = '(define-fun inv ((n1 Node) (e1 Epoch)) Bool\n(or (le e1 (ep n1)) (le (ep n1) (ep n1)))\n)'
inv_fn = parse_inv_defn(['FORALL', 'FORALL'], [Node, Epoch], defn)
# f = parse_smt2_string('(define-fun inv ((n1 Node) (e1 Epoch)) Bool\n(or (le e1 (ep n1)) (le (ep n1) (ep n1)))\n)\n (declare-fun n1 () Node) (declare-fun e1 () Epoch) (assert (inv n1 e1))')
# type(f)

# %%
inv_fn(M, S1)

# %%
import subprocess

def run_minisy(synth_file):
    out = subprocess.check_output(f'source ~/.zshrc; minisy {synth_file} --num-solutions=2', shell=True, executable="/bin/zsh", encoding='utf-8')
    # print(out)
    lines = out.split('\n')
    defs = []
    for line in lines:
        if line == 'sat':
            continue
        if line == 'unsat':
            break
        if line.startswith('(define-fun'):
            defs.append(line)
        else:
            # print(line, defs)
            defs[-1] += '\n' + line
    return [d.strip() for d in defs]

run_minisy('test_synth.sy')

# %%
def cegis_loop(iters):
    while iters > 0:
        iters -= 1
        print(f'iter {iters}')
        run_minisy('test_synth.sy')
        inv_fn(M, S1)


# %% [markdown]
# ### Invariants => Safety

# %% [markdown]
# The stuff below gives unsat (as expected) for DistAI invariants, but not for Swiss invariants. Not sure why. But essentially, invariants allow a state like this one:
# 
# ```
# (define-fun pre.locked ((x!0 Epoch) (x!1 Node)) Bool
#   (or (and (not (= x!0 Epoch!val!3))
#            (not (= x!0 Epoch!val!1))
#            (not (= x!0 Epoch!val!4))
#            (not (= x!0 Epoch!val!2))
#            (= x!1 Node!val!1))
#       (and (not (= x!0 Epoch!val!3))
#            (not (= x!0 Epoch!val!1))
#            (not (= x!0 Epoch!val!4))
#            (not (= x!0 Epoch!val!2))
#            (not (= x!1 Node!val!1)))))
# ```
# 
# Which is essentially `True` if `(x!0 == Epoch!val!0)` regardless of the node's value. This shouldn't be allowed!

# %%
M = DistLockModel()
S = M.get_state('pre')

inv = lambda M, S: And(*[inv(M, S) for inv in all_invars[:]])

solver = Solver()
solver.assert_and_track(M.get_init_state_cond(), "1")
solver.assert_and_track(M.get_axioms(), "2")
solver.assert_and_track(inv(M, S), "3")

## Safety VC:
solver.assert_and_track(Not(get_safety_inv(M, S)), "8")

assert solver.check() == unsat

# %%
model = solver.model()
d_model = M.get_interp(model)
d_model

# %%
all_nodes, all_epochs = model.get_universe(Node), model.get_universe(Epoch)

# %%
all([all_invars[i](M, S, model, all_nodes, all_epochs) for i in range(len(all_invars))])

# %%
all_nodes, all_epochs

# %%
get_safety_inv(M, S)

# %%
list(itertools.product(all_epochs, all_nodes, all_nodes))

# %%
get_safety_inv(M, S, model, all_nodes, all_epochs)

# %%
def cmp(e1, e2):
    return model.eval(M.le(e1, e2))

# bubble sort
def bubble_sort(l):
    for i in range(len(l)):
        for j in range(len(l)-1):
            if cmp(l[j], l[j+1]) == False:
                l[j], l[j+1] = l[j+1], l[j]
    return l

sorted_epochs = bubble_sort(all_epochs)
sorted_epochs

# %%
print(solver.model().sexpr())

# %%




# %%
