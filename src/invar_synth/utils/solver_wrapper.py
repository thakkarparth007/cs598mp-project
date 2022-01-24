from z3 import *

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
