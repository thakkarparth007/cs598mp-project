# %%
from z3 import *

# in case of nested QExprs, we don't want variable name collisions, so we use this. This makes this code single-threaded.
var_ctr = {}
# %%
class QExpr():
    def __init__(self, qs, sorts, body):
        self.qs = [q.upper() for q in qs]
        assert all([q in ['FORALL', 'EXISTS'] for q in self.qs])

        self.sorts = sorts
        self.body = body
        self.formal_args = []

        for i, s in enumerate(sorts):
            var_ctr[s] = var_ctr.get(s, 0) + 1
            self.formal_args.append(
                Const(f'{s}_{var_ctr[s]}', s)
            )

        assert len(qs) == len(sorts)
        #assert len(qs) == body.__code__.co_argcount
        # the above doesn't hold for cases where we have varargs.

        self.z3expr = self._to_z3_qexpr()

        for i, s in enumerate(sorts):
            var_ctr[s] -= 1
    
    def _to_z3_qexpr(self):
        def helper(qs, fargs):
            q = ForAll if qs[0] == 'FORALL' else Exists
            a = fargs[0]

            if len(qs) == 1:
                return q(a, self.body(*self.formal_args))
            else:
                return q(a, helper(qs[1:], fargs[1:]))
        
        return helper(self.qs, self.formal_args)

    def to_ground_expr(self, universes):
        assert len(universes) == len(self.qs)

        def helper(qList, uList, args):
            q, u = qList[0], uList[0]

            Q = And if q.upper() == 'FORALL' else Or

            if len(qList) == 1 and len(uList) == 1:
                return Q([self.body(*(args + [elem]))
                            for elem in u])
            
            return Q([helper(qList[1:], uList[1:], args + [elem])
                        for elem in u])

        # return synthesized_inv, helper(quantifiers, universes, [])
        return helper(self.qs, universes, [])

class QForAll(QExpr):
    def __init__(self, sorts, body):
        super().__init__(['FORALL']*len(sorts), sorts, body)

class QExists(QExpr):
    def __init__(self, sorts, body):
        super().__init__(['EXISTS']*len(sorts), sorts, body)

# %%

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

# %%

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
# %%
