# %%
from z3 import *

from invar_synth.protocols.dist_lock import *
from invar_synth.cegis.cex import *
from invar_synth.utils.qexpr import *

def test_1():
    M = DistLockModel('M1')
    S = M.get_state('pre')

    solver = SolverWrapper()
    solver.add(M.get_z3_init_state_cond(), "1")
    solver.add(M.get_z3_axioms(), "2")

    print(solver.check())
    model = solver.model()
    print(model)

    c = CEX(solver, model, M, None)
    print(c.get_formula_of_state(S, True))

# %%
# test_1 ()

# %%

def test_2():
    M = DistLockModel('M1')
    S = M.get_state('pre')

    solver = SolverWrapper()
    solver.add(M.get_z3_init_state_cond(), "1")
    solver.add(M.get_z3_axioms(), "2")

    print(solver.check())
    model = solver.model()
    print(model)

    cand_invar = lambda M, S: \
        QForAll([Node, Epoch],
        lambda n, e: Implies(S.locked(e, n), S.transfer(e, n))).z3expr

    cg = CEXGen(DistLockModel)
    cex = cg.get_implication_cex(cand_invar)
    
    assert not cex.exists()

    cand_invar = lambda M, S: \
        QForAll([Node, Epoch],
        lambda n, e: Implies(S.transfer(e, n), S.locked(e, n))).z3expr

    cg = CEXGen(DistLockModel)
    cex = cg.get_implication_cex(cand_invar)
    
    assert cex.exists()

# cex = test_2()