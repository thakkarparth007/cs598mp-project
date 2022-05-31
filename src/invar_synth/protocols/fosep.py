# %%

import sys
sys.path.append('/home/parth/598mp/')

from z3 import *
from invar_synth.protocols.protocol import ProtocolModel, ProtocolState, ProtocolAction
from invar_synth.utils.qexpr import QForAll
from invar_synth.cegis.cex import PositiveCEX

import pandas as pd

# %%

Node = DeclareSort('Node')


class FOSepState(ProtocolState):
    def __init__(self, model_sym, name):
        super().__init__(model_sym, name)

        # # forall x,y. R(x,y) iff R(y,x)
        # self._add_state_fn('R', Node, Node, BoolSort())

        # le(E1, E2) & E1 ~= E2 -> locked(E1,N1) | ~transfer(E1,N1) | ~transfer(E2,N1)
        self._add_state_fn('le', Node, Node, BoolSort())
        self._add_state_fn('locked', Node, Node, BoolSort())
        self._add_state_fn('transfer', Node, Node, BoolSort())


# %%


class FOSepModel(ProtocolModel):
    def __init__(self, model_name):
        super().__init__(
            'FOSep',
            model_name,
            [Node],
            FOSepState)

        self.axioms = None

        self.actions = {}

    def get_target_formula(self):
        # # forall x,y. R(x,y) iff R(y,x)
        # return lambda M,S: QForAll(
        #     [Node, Node],
        #     lambda x, y: S.R(x, y) == S.R(y, x)
        #     ).z3expr
        # le(E1, E2) & E1 ~= E2 -> locked(E1,N1) | ~transfer(E1,N1) | ~transfer(E2,N1)
        return lambda M,S: QForAll(
            [Node, Node, Node],
            lambda x, y, z: Implies(And(S.le(x, y),
                                        x != y),
                                    Or(S.locked(x, z),
                                       Not(S.transfer(x, z)),
                                       Not(S.transfer(y, z))))
            ).z3expr
