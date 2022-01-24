from z3 import *
from invar_synth.utils.qexpr import QExpr, QForAll, QExists

def test_1():
    q1 = QExpr(
        ['FORALL', 'FORALL'],
        [BoolSort(), BoolSort()],
        lambda x, y: x == y
    )

    x, y = Bools('x y')
    zq1 = ForAll([x, y], x == y)

    S = Solver()
    S.add(zq1 != q1.z3expr)
    assert S.check() == unsat

def test_2():
    q1 = QExpr(
        ['FORALL', 'FORALL'],
        [IntSort(), IntSort()],
        lambda x, y: x + y < 10
    )

    A, B, C = Ints('A B C')
    g1 = q1.to_ground_expr([[A, B, C], [A, B, C]])

    g2 = And(
        A + A < 10,
        A + B < 10,
        A + C < 10,
        B + A < 10,
        B + B < 10,
        B + C < 10,
        C + A < 10,
        C + B < 10,
        C + C < 10,
    )

    assert simplify(g1 == g2)