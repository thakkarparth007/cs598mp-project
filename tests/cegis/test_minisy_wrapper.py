from z3 import *
from invar_synth.protocols.dist_lock import Node, Epoch, DistLockModel
from invar_synth.utils.minisy_wrapper import MiniSyWrapper
from invar_synth.utils.qexpr import QForAll

def test_parse_1():
    defn = """(define-fun inv ((m ModelId) (s StateId) (n1 Node) (e1 Epoch)) Bool
        (=> (locked m s e1 n1) (transfer m s e1 n1))
    )"""
    gt = lambda M, S: QForAll(
        [Node, Epoch],
        lambda n1, e1: Implies(
            S.locked(e1, n1),
            S.transfer(e1, n1)
        )
    )

    MS = MiniSyWrapper()

    qs = ['FORALL', 'FORALL']
    sorts = [Node, Epoch]

    inv = MS.parse_inv_defn_v2(qs, sorts, defn)

    M1 = DistLockModel('M1')
    S1 = M1.get_state('S1')

    solver = Solver()
    solver.add(gt(M1, S1).z3expr != inv(M1, S1).z3expr)
    assert solver.check() == unsat

def test_parse_2():
    defn = """(define-fun inv ((m ModelId) (s StateId) (n1 Node) (n2 Node) (e1 Epoch)) Bool
        (=> (locked m s e1 n1) (= n2 n1))
    )"""
    gt = lambda M, S: QForAll(
        [Node, Node, Epoch],
        lambda n1, n2, e1: Implies(
            S.locked(e1, n1),
            n2 == n1
        )
    )

    MS = MiniSyWrapper()

    qs = ['FORALL', 'FORALL', 'FORALL']
    sorts = [Node, Node, Epoch]

    inv = MS.parse_inv_defn_v2(qs, sorts, defn)

    M1 = DistLockModel('M1')
    S1 = M1.get_state('S1')

    solver = Solver()
    solver.add(gt(M1, S1).z3expr != inv(M1, S1).z3expr)
    assert solver.check() == unsat
