from z3 import *
from invar_synth.utils.solver_wrapper import *

def test_1():
    s = SolverWrapper(True)
    p, q = Bools('p q')
    s.add(p != p, "temp")
    assert s.check() == unsat
    s.unsat_core()
