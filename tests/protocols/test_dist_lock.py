# %%

from z3 import *
import itertools
from invar_synth.protocols.dist_lock import *
from invar_synth.utils.solver_wrapper import *
from invar_synth.cegis.cex import *
import pytest

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

@pytest.fixture
def swiss_invars():
    return [inv_fn_0, inv_fn_1, inv_fn_2, inv_fn_3]

# %% [markdown]
# ### DistAI invariants

# %%

@pytest.fixture
def distai_invars_strs():
    return """
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
        return "M.first()"

    vars.add(inv_str)
    return inv_str

def get_inv_fn(fn_name, inv_str, only_code=False):
    vars = set()
    inv_fn_str = parse(inv_str, vars)

    vars = [v for v in vars if v != '']
    sorts = ['Node' if v.startswith("N") else 'Epoch'
            for v in vars]

    lamb_da = f"""lambda {','.join(vars)}: {inv_fn_str}"""
    expr = f"""QForAll([{','.join(sorts)}], {lamb_da}).z3expr"""

    code = [f"return {expr}"]

    # nodes = [v for v in vars if v.startswith("N")]
    # epochs = [v for v in vars if v.startswith("E")]

    # code = []
    # if len(nodes) == 1:
    #     code += [nodes[0] + " = Const('" + nodes[0] + "', Node)"]
    # elif len(nodes) > 1:
    #     code += [", ".join(nodes) + " = Consts('" + " ".join(nodes) + "', Node)"]
    
    # if len(epochs) == 1:
    #     code += [epochs[0] + " = Const('" + epochs[0] + "', Epoch)"]
    # elif len(epochs) > 1:
    #     code += [", ".join(epochs) + " = Consts('" + " ".join(epochs) + "', Epoch)"]
    
    # code += ["inv = ForAll([" + ", ".join(vars) + "], " + inv_fn_str + ")"]
    # code += ["return inv"]

    code = f"def {fn_name}(M, S):\n\t" + "\n\t".join(code)
    if only_code:
        return code

    ldict = {}
    exec(code)
    exec(f"ldict['fn'] = {fn_name}")
    return ldict['fn']

@pytest.fixture
def distai_invars(distai_invars_strs):
    return [
        get_inv_fn("inv_fn_" + str(i), inv)
        for i, inv in enumerate(distai_invars_strs)
    ]

@pytest.fixture
def M():
    return DistLockModel('M1')
# %%

def test_1(M):
    S1 = M.get_state('S1')
    S2 = M.get_state('S2')

    print("Grant action:")
    print(M.actions['grant'].get_z3_formula(M, S1, S2).sexpr())
    print("==========================\n")

    print("Accept action:")
    print(M.actions['accept'].get_z3_formula(M, S1, S2).sexpr())
    print("==========================\n")

    print("Initial state:")
    print(M.get_z3_init_state_cond().sexpr())
    print("==========================\n")

# %%

def test_2(M, distai_invars_strs, distai_invars):
    S = M.get_state('pre')

    print(distai_invars_strs[0])
    print(distai_invars[0](M, S))


# %%
def test_3(M):
    S = M.get_state('pre')

    print(M.get_z3_safety_cond(S).sexpr())

# %%
@pytest.mark.parametrize("all_invars,I,J,expect_pass", [
    ("distai_invars", 0,    1, True),
    ("distai_invars", 0, None, True),
    ([lambda M, S: QForAll([Node], lambda N: Not(S.held(N))).z3expr],
      0, None, False),
])
def test_init_conds(all_invars, I, J, expect_pass, request):
    M = DistLockModel('M1')
    S = M.get_state('pre')

    if type(all_invars) == str:
        all_invars = request.getfixturevalue(all_invars)
    all_invars = all_invars[I:J]

    inv = lambda M, S: And(*[
        inv(M, S) for inv in all_invars])

    solver = SolverWrapper()
    solver.add(M.get_z3_init_state_cond(), "1")
    solver.add(M.get_z3_axioms(), "2")
    solver.add(Not(inv(M, M.get_state('init'))), "3")

    if solver.check() == unsat:
        assert expect_pass
    else:
        assert not expect_pass

# %%
@pytest.mark.parametrize("all_invars,I,J,expect_pass", [
    ("distai_invars", 0, 2, False),
    ("distai_invars", 1, 2, False),
    ("distai_invars", 2, 3, False),
    ("swiss_invars",  0, 1, True),
    ("swiss_invars",  0, None, True),
] + [
    # ("distai_invars", 0, i+1, True)
    # for i in range(45)
])
# @pytest.mark.parametrize("all_invars,I,J,expect_pass", [
#     ("distai_invars", 0, 1, True),
#     ("distai_invars", 0, 2, True),
#     ("distai_invars", 1, 2, True),
# ])
def test_inductiveness(all_invars, I, J, expect_pass, request):
    M = DistLockModel('M1')
    S1 = M.get_state('pre')
    S2 = M.get_state('post')

    solver = SolverWrapper(debug=False)

    solver.add(M.get_z3_axioms(), "axioms")
    
    if type(all_invars) == str:
        all_invars = request.getfixturevalue(all_invars)
    
    all_invars = all_invars[I:J]

    for i, inv_i in (enumerate(all_invars[:])):
        solver.push()
        for j, inv_prev in enumerate(all_invars[:i+1]):
            solver.add(inv_prev(M, S1), f"{i}_{j}")
        solver.add(Not(inv_i(M, S2)), f"{i}_post")

        # we should get unsat for every action
        # otherwise, it means, that the invariant
        # is not inductive on at least one
        # possible action.

        passed = 0
        for name, action in M.get_actions():
            solver.push()
            #solver.add(
            #    action.get_z3_prec(M, S1, S2),
            #    f"{i}_{name}_prec")
            solver.add(
                (action.get_z3_formula(M, S1, S2)),
                f"{i}_{name}_trans")
            
            if solver.check() == sat:
                # print(i, solver.check())
                if expect_pass:
                    print(solver.sexpr())
                    print("==========================\n")
                    print(solver.model().sexpr())
                assert not expect_pass
            else:
                passed += 1
            #print(solver.unsat_core())
            #print(solver.sexpr())
            solver.pop()
        
        solver.pop()

    if passed == len(M.get_actions()):
        assert expect_pass

# %%
@pytest.mark.parametrize("all_invars,I,J,expect_pass", [
    ("distai_invars", 0, 1, False),
    ("distai_invars", 0, 2, False),
    ("distai_invars", 0, 10, False),
    ("distai_invars", 0, None, True),

    ("swiss_invars", 0, 1, False),
    ("swiss_invars", 0, None, False),
    # this one still fails for some reason.
])
def test_safety(all_invars, I, J, expect_pass, request):
    M = DistLockModel('M1')
    S = M.get_state('S')

    if type(all_invars) == str:
        all_invars = request.getfixturevalue(all_invars)
    all_invars = all_invars[I:J]

    inv = lambda M, S: And(*[inv(M, S) for inv in all_invars[:]])

    solver = SolverWrapper(False)
    solver.add(M.get_z3_init_state_cond(), "1")
    solver.add(M.get_z3_axioms(), "2")
    solver.add(inv(M, S), "3")

    ## Safety VC:
    solver.add(Not(M.get_z3_safety_cond(S)), "8")

    print(solver.check())
    if solver.check() == sat:
        if expect_pass:
            print(solver.sexpr())
            print("==========================\n")
            print(solver.model().sexpr())
        assert not expect_pass
    else:
        assert expect_pass

# %%

# def test_safety2(all_invars, I, J, expect_pass):
#     M = DistLockModel('M1')
#     S = M.get_state('S')

#     #if type(all_invars) == str:
#     #    all_invars = request.getfixturevalue(all_invars)
#     all_invars = all_invars[I:J]

#     inv = lambda M, S: And(*[inv(M, S) for inv in all_invars[:]])

#     solver = SolverWrapper(False)
#     solver.add(M.get_z3_init_state_cond(), "1")
#     solver.add(M.get_z3_axioms(), "2")
#     solver.add(inv(M, S), "3")

#     ## Safety VC:
#     solver.add(Not(M.get_z3_safety_cond(S)), "8")

#     print(solver.check())
#     if solver.check() == sat:
#         if expect_pass:
#             print(solver.sexpr())
#             print("==========================\n")
#             print(solver.model().sexpr())
#         assert not expect_pass
#     else:
#         assert expect_pass


# def test_temp():
#     M = DistLockModel('M1')
#     S = M.get_state('pre')

#     cg = CEXGen(DistLockModel)
#     cg.invars = [inv_fn_0, inv_fn_1, inv_fn_2, inv_fn_3]
#     cex = cg.get_neg_cex(lambda M, S: True)

#     return cex
#     assert not cex.exists()

# cex = test_temp()
# %%


# %%
def test_get_pos_cex_from_traces(M, distai_invars, distai_invars_strs):
    pos_cexes = M.get_pos_cex_from_traces()

    for inv, inv_str in zip(distai_invars, distai_invars_strs):
        for j, cex in enumerate(pos_cexes):
            solver = Solver()
            solver.add(cex.get_synth_constraint(None, inv))
            if solver.check() != sat:
                raise Exception(f"Failed for cex {j} for {inv_str}. {solver.sexpr()}")
    #cex_gen = CEXGen(DistLockModel)
    #cex_gen.invars = distai_invars
    #cex = cex_gen.get_cex(lambda M, S: True)

    #assert not cex.exists()
# %%

# %%
def test_first_distai_invar(M, distai_invars):
    first = distai_invars[0]
    axioms = M.get_z3_axioms()

    S1 = M.get_state('S1')
    
    solver = Solver()
    solver.add(axioms)
    solver.add(Not(first(M, S1)))

    assert solver.check() == unsat

# %%
def foobar():
    """
    Independent invariants:
0: `le(E1, E2) & E1 != E2 -> le(E1,ep(N1)) | ~le(E2,ep(N1))`
	^ this is implies by axioms
3: `le(E1, E2) & E1 != E2 -> le(E1,ep(N1)) | ~locked(E2,N1)`
14: `le(E1, E2) & E1 != E2 & N1 != N2 -> le(E1,ep(N1)) | le(ep(N1),ep(N2)) | ~le(E2,ep(N2))`
	^ this is implies by axioms
17: `le(E1, E2) & E1 != E2 & N1 != N2 -> le(E1,ep(N1)) | ~le(ep(N2),ep(N1)) | ~le(E2,ep(N2))`
	^ this is implies by axioms
22: `transfer(E1,N1) | ~locked(E1,N1)`
23: `le(E1,ep(N1)) | ~locked(E1,N1)`
26: `N1 != N2 -> le(E1,ep(N1)) | le(ep(N1),ep(N2)) | ~le(E1,ep(N2))`
	^ this is implies by axioms
30: `N1 != N2 -> le(ep(N1),ep(N2)) | le(ep(N2),ep(N1))`
	^ this is implies by axioms
35: `N1 != N2 -> ~first=N1 | ~first=N2`
	^ this is implies by axioms
41: `N1 != N2 -> le(E1,ep(N1)) | ~le(ep(N2),ep(N1)) | ~le(E1,ep(N2))`
	^ this is implies by axioms
    """
    M = DistLockModel('M1')
    cg = CEXGen(DistLockModel)

    invars_strs = distai_invars_strs()
    invars = distai_invars(invars_strs)
    print("Independent invariants:")
    for i in range(len(invars)):
        cex = cg.get_implication_cex(invars[i])
        if not cex.exists():
            print(f"{i}: `{invars_strs[i].strip()}`")

            solver = Solver()
            solver.add(M.get_z3_axioms())
            solver.add(Not(invars[i](M, M.get_state('S1'))))
            if solver.check() == unsat:
                print("\t^ this is implied by axioms")
# %%
#foobar()
# %%
