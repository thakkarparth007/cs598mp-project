# %%

from z3 import *
import itertools
from invar_synth.protocols.ricart_agrawala import *
from invar_synth.utils.solver_wrapper import *
from invar_synth.cegis.cex import *
import pytest


# %% [markdown]
# ### DistAI invariants

# %%

@pytest.fixture
def distai_invars_strs():
    return """
    ~replied(N1,N1)
    ~requested(N1,N1)
    N1 ~= N2 -> ~holds(N1) | ~holds(N2)
    N1 ~= N2 -> ~replied(N1,N2) | ~holds(N2)
    N1 ~= N2 -> replied(N1,N2) | ~holds(N1)
    N1 ~= N2 -> ~replied(N1,N2) | ~replied(N2,N1)
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
        prefix = "S."
        return f"{prefix}{name}({','.join([parse(a, vars) for a in args])})"

    vars.add(inv_str)
    return inv_str


def get_inv_fn(fn_name, inv_str, only_code=False):
    vars = set()
    inv_fn_str = parse(inv_str, vars)

    vars = [v for v in vars if v != '']
    sorts = ['Node' for v in vars]

    lamb_da = f"""lambda {','.join(vars)}: {inv_fn_str}"""
    expr = f"""QForAll([{','.join(sorts)}], {lamb_da}).z3expr"""

    code = [f"return {expr}"]

    # nodes = [v for v in vars if v.startswith("N")]

    # code = []
    # if len(nodes) == 1:
    #     code += [nodes[0] + " = Const('" + nodes[0] + "', Node)"]
    # elif len(nodes) > 1:
    #     code += [", ".join(nodes) + " = Consts('" + " ".join(nodes) + "', Node)"]

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
    return MutexModel('M')

# %%


def test_if_protocol_well_defined(M):
    S1 = M.get_state('S1')
    S2 = M.get_state('S2')

    print("Initial state:")
    print(M.get_z3_init_state_cond().sexpr())
    print("==========================\n")

    print("Request action:")
    print(M.actions['request'].get_z3_formula(M, S1, S2).sexpr())
    print("==========================\n")

    print("Reply action:")
    print(M.actions['reply'].get_z3_formula(M, S1, S2).sexpr())
    print("==========================\n")

    print("Enter action:")
    print(M.actions['enter'].get_z3_formula(M, S1, S2).sexpr())
    print("==========================\n")

    print("Leave action:")
    print(M.actions['leave'].get_z3_formula(M, S1, S2).sexpr())
    print("==========================\n")

    print("Safety property:")
    print(M.get_z3_safety_cond(S1).sexpr())
    print("==========================\n")
# %%


def test_groundtruth_invars_defined(M, distai_invars_strs, distai_invars):
    S = M.get_state('S')
    for i in range(len(distai_invars)):
        print(distai_invars_strs[i])
        print(distai_invars[i](M, S))
# %%


@pytest.mark.parametrize("all_invars,I,J,expect_pass", [
    ("distai_invars", 0,    1, True),
    ("distai_invars", 0, None, True),
    ([lambda M, S: QForAll([Node, Node], lambda N1, N2: And(N1 == N2, S.holds(N1), S.holds(N2))).z3expr],
      0, None, False),
])
def test_init_conds(all_invars, I, J, expect_pass, request):
    M = MutexModel('M')

    if type(all_invars) == str:
        all_invars = request.getfixturevalue(all_invars)
    all_invars = all_invars[I:J]

    inv = lambda M, S: And(*[inv(M, S) for inv in all_invars])

    solver = SolverWrapper()
    solver.add(M.get_z3_init_state_cond(), "init")
    solver.add(M.get_z3_axioms(), "axioms")
    solver.add(Not(inv(M, M.get_state('init'))), "notinv")

    result = solver.check()
    if result == unsat:
        assert expect_pass
    elif result == sat:
        assert not expect_pass
    else:
        raise ValueError(f"Solver returned {result}")
# %%


@pytest.mark.parametrize("all_invars,I,J,expect_pass", [
    # All invariants
    ("distai_invars", 0, None, True),
    # Minimal subset of invariants that work
    ("distai_invars", 4, None, True),
    # Each invariant in the minimal subset is independently inductive
    ("distai_invars", 4, 5, True),
    ("distai_invars", 5, 6, True),
    # This is the safety property. It should not be inductive by itself.
    ([lambda M, S: QForAll([Node, Node], lambda N1, N2: Implies(And(S.holds(N1), S.holds(N2)), N1 == N2)).z3expr], 
     0, None, False),
])
def test_inductiveness(all_invars, I, J, expect_pass, request):
    M = MutexModel('M')
    S1 = M.get_state('pre')
    S2 = M.get_state('post')

    if type(all_invars) == str:
        all_invars = request.getfixturevalue(all_invars)
    all_invars = all_invars[I:J]

    inv = lambda M, S: And(*[inv(M, S) for inv in all_invars])

    solver = SolverWrapper(debug=False)
    solver.add(M.get_z3_axioms(), "axioms")
    solver.add(inv(M, S1), "invpre")
    solver.add(Not(inv(M, S2)), "notinvpost")
    # we should get unsat for every action
    # otherwise, it means, that the invariant
    # is not inductive on at least one
    # possible action.
    passed = []
    for name, action in M.get_actions():
        solver.push()
        solver.add(action.get_z3_formula(M, S1, S2), f"{name}_trans")
        if solver.check() == unsat:
            passed += [name]
        solver.pop()

    if len(passed) == len(M.get_actions()):
        assert expect_pass
    else:
        assert not expect_pass
# %%


@pytest.mark.parametrize("all_invars,I,J,expect_pass", [
    # All invariants
    ("distai_invars", 0, None, True),
    # Minimal subset of invariants that work
    ("distai_invars", 4, None, True),
    # Smaller than minimal subset of invariants does not work
    ("distai_invars", 4, 5, False),
    ("distai_invars", 5, 6, False),
    # No invariants, only axioms will be used
    ("distai_invars", 0, 0, False),
])
def test_safety(all_invars, I, J, expect_pass, request):
    M = MutexModel('M')
    S = M.get_state('S')

    if type(all_invars) == str:
        all_invars = request.getfixturevalue(all_invars)
    all_invars = all_invars[I:J]

    inv = lambda M, S: And(*[inv(M, S) for inv in all_invars])

    solver = SolverWrapper(False)
    solver.add(M.get_z3_axioms(), "axioms")
    solver.add(inv(M, S), "inv")
    # Negation of safety condition
    solver.add(Not(M.get_z3_safety_cond(S)), "notsafety")

    if solver.check() == unsat:
        assert expect_pass
    else:
        assert not expect_pass
# %%
