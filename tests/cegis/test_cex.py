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

    # cand_invar = lambda M, S: \
    #     QForAll([Node, Epoch],
    #     lambda n, e: Implies(S.transfer(e, n), S.locked(e, n))).z3expr

    # cand_invar = lambda M, S: \
    #     QForAll([Node], lambda n: S.transfer(S.ep(n), n)).z3expr


    cg = CEXGen(DistLockModel)
    cex = cg.get_neg_cex(cand_invar)

    return cex
    assert not cex.exists()

#cex = test_2()
# %%

def test_synthed_invars():
    # this list of invariants was generated by our synth tool.
    # but we only need inv1 and inv5 to prove correctness!!

    invars = """
    Inv0:  ForAll(n1,
        Or(Not(locked(Model_M1, S, ep(Model_M1, S, n1), n1)),
            transfer(Model_M1, S, ep(Model_M1, S, n1), n1)))
    Inv1:  ForAll([n1, e1],
        Or(Not(locked(Model_M1, S, e1, n1)),
            transfer(Model_M1, S, e1, n1)))
    Inv2:  ForAll([n1, e1],
        Or(Not(locked(Model_M1, S, e1, n1)),
            le(Model_M1, e1, ep(Model_M1, S, n1))))
    Inv3:  ForAll([n1, e1],
        Or(Not(locked(Model_M1, S, e1, n1)),
            transfer(Model_M1, S, ep(Model_M1, S, n1), n1)))
    Inv4:  ForAll(n1,
        Or(Not(transfer(Model_M1, S, ep(Model_M1, S, n1), n1)),
            locked(Model_M1, S, ep(Model_M1, S, n1), n1)))
    Inv5:  ForAll([n1, n2, e1],
        Or(Not(transfer(Model_M1, S, e1, n2)), n2 == n1))
    """

    inv0 = lambda M, S: QForAll([Node],
            lambda n1: Implies(
                S.locked(S.ep(n1), n1), S.transfer(S.ep(n1), n1)
            )).z3expr
    
    inv1 = lambda M, S: QForAll([Node, Epoch],
            lambda n1, e1: Implies(
                S.locked(e1, n1), S.transfer(e1, n1)
            )).z3expr
    
    inv2 = lambda M, S: QForAll([Node, Epoch],
            lambda n1, e1: Implies(
                S.locked(e1, n1), M.le(e1, S.ep(n1))
            )).z3expr
    
    inv3 = lambda M, S: QForAll([Node, Epoch],
            lambda n1, e1: Implies(
                S.locked(e1, n1), S.transfer(S.ep(n1), n1)
            )).z3expr

    inv4 = lambda M, S: QForAll([Node],
            lambda n1: Implies(
                S.transfer(S.ep(n1), n1), S.locked(S.ep(n1), n1)
            )).z3expr
    
    inv5 = lambda M, S: QForAll([Node, Node, Epoch],
            lambda n1, n2, e1: Implies(
                #S.transfer(e1, n2), n2 == n1
                And(
                    S.transfer(e1, n1),
                    S.transfer(e1, n2)
                ), n2 == n1
            )).z3expr
    
    cg = CEXGen(DistLockModel)
    cg.invars = [inv0, inv1, inv2, inv3, inv4]
    cex = cg.get_cex(inv5)
    
    return cex
    assert not cex.exists()

    cg = CEXGen(DistLockModel)
    cg.invars = [inv1]
    cex = cg.get_cex(inv5)

    return cex
    # !!!!! what ? !!!!!
    # we only need inv1 and inv5 for this protocol. wt?
    assert not cex.exists()

    return cex

#cex = test_synthed_invars()
# %%

def test_whats_going_on():
    # for some reason, the above test shows only inv1 and inv5 are needed
    # but inv5 doesn't look like an inductive invariant.
    # this test is to reproduce and debug this issue.

    inv1 = lambda M, S: QForAll([Node, Epoch],
            lambda n1, e1: Implies(
                S.locked(e1, n1), S.transfer(e1, n1)
            )).z3expr

    inv5 = lambda M, S: QForAll([Node, Node, Epoch],
            lambda n1, n2, e1: Implies(
                S.transfer(e1, n2), n2 == n1
            )).z3expr
    
    M = DistLockModel('wat')
    S1 = M.get_state('S1')
    S2 = M.get_state('S2')

    solver = SolverWrapper(debug=False)
    solver.add(M.get_z3_axioms(), "2")
    # solver.add(inv1(M, S1), "3")

    # solver.add(inv5(M, S1), "4")
    #solver.add(Not(inv5(M, S2)), "5")

    for name, action in M.get_actions():
        solver.push()
        solver.add(
            action.get_z3_prec(M, S1, S2), f"{name}_prec"
        )
        # should assert that the prec is satisfiable
        # but i've asserted not(cand_invar(M, S2)) above for efficiency

        solver.add(
            action.get_z3_formula(M, S1, S2),
            f"{name}_formula"
        )

        if solver.check() == sat:
            return ImplicationCEX(solver, solver.model(), M, inv5, S1, S2)
        
        return ImplicationCEX(solver, None, M, inv5, S1, S2)
        solver.pop()
    
    return ImplicationCEX(solver, None, M, inv5, S1, S2)

#cex = test_whats_going_on()
# %%
