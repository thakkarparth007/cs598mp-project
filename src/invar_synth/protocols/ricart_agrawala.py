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


class MutexState(ProtocolState):
    def __init__(self, model_sym, name):
        super().__init__(model_sym, name)

        self._add_state_fn('requested', Node, Node, BoolSort())
        self._add_state_fn('replied', Node, Node, BoolSort())
        self._add_state_fn('holds', Node, BoolSort())

# %%


class MutexModel(ProtocolModel):
    def __init__(self, model_name):
        super().__init__(
            'Mutex',
            model_name,
            [Node],
            MutexState)

        self.axioms = None

        self.actions = {
            'request': RequestAction(),
            'reply': ReplyAction(),
            'enter': EnterAction(),
            'leave': LeaveAction(),
        }

    def get_axioms(self):
        if self.axioms is not None:
            return self.axioms

        # TODO: change this so it doesn't quantify over anything
        self.axioms = QForAll(
            [Node],
            lambda n1: BoolVal(True)
        )
        return self.axioms

    def get_init_state_cond(self):
        S = self.get_state('init')

        return QForAll(
            [Node, Node],
            lambda n1, n2: And(
                S.requested(n1, n2) == BoolVal(False),
                S.replied(n1, n2) == BoolVal(False),
                S.holds(n1) == BoolVal(False)
            )
        )

    def get_safety_cond(self, S):
        return QForAll(
            [Node, Node],
            lambda n1, n2: Implies(
                And(
                    S.holds(n1),
                    S.holds(n2),
                ),
                n1 == n2
            )
        )


class RequestAction(ProtocolAction):
    """
    action request(requester: node, responder: node) = {
    require ~requested(requester, responder);
    require requester ~= responder;
    requested(requester, responder) := true;
    }
    """
    def __init__(self):
        super().__init__(Node, Node)

    def _prec_impl(self, M, preS, postS, requester, responder):
        return And(
            Not(preS.requested(requester, responder)),
            requester != responder,
        )

    def _postc_impl(self, M, preS, postS, requester, responder):
        return self._record_updates(preS, postS, {
            'requested': (requester, responder, True)
        })


class ReplyAction(ProtocolAction):
    """
    action reply(requester: node, responder: node) = {
    require ~replied(requester, responder);
    require ~holds(responder);
    require ~replied(responder, requester);
    require requested(requester, responder);
    require requester ~= responder;
    requested(requester, responder) := false;
    replied(requester, responder) := true;
    }
    """
    def __init__(self):
        super().__init__(Node, Node)

    def _prec_impl(self, M, preS, postS, requester, responder):
        return And(
            Not(preS.replied(requester, responder)),
            Not(preS.holds(responder)),
            Not(preS.replied(responder, requester)),
            preS.requested(requester, responder),
            requester != responder
        )

    def _postc_impl(self, M, preS, postS, requester, responder):
        return self._record_updates(preS, postS, {
            'requested': (requester, responder, False),
            'replied': (requester, responder, True)
        })


class EnterAction(ProtocolAction):
    """
    action enter(requester: node) = {
    require N ~= requester -> replied(requester, N);
    holds(requester) := true;
    }
    """
    def __init__(self):
        super().__init__(Node)

    def _prec_impl(self, M, preS, postS, requester):
        return QForAll([Node], lambda N: Implies(N != requester, preS.replied(requester, N))).z3expr

    def _postc_impl(self, M, preS, postS, requester):
        return self._record_updates(preS, postS, {
            'holds': (requester, True)
        })


class LeaveAction(ProtocolAction):
    """
    action leave(requester: node) = {
    require holds(requester);
    holds(requester) := false;
    replied(requester, N) := false;
    }
    """
    def __init__(self):
        super().__init__(Node)

    def _prec_impl(self, M, preS, postS, requester):
        return preS.holds(requester)

    def _postc_impl(self, M, preS, postS, requester):
        return And(
        QForAll([Node,Node], lambda n1, n2: postS.requested(n1,n2) == preS.requested(n1,n2)).z3expr,
        QForAll([Node,Node], lambda n1, n2: If(n1 == requester, postS.replied(n1, n2) == BoolVal(False), postS.replied(n1,n2) == preS.replied(n1,n2))).z3expr,
        QForAll([Node], lambda n: If(n == requester, postS.holds(n) == BoolVal(False), postS.holds(n) == preS.holds(n))).z3expr    
        )
    #     return And(
    #     QForAll([Node, Node], lambda n1, n2: postS.requested(n1, n2) == preS.requested(n1, n2)).z3expr,
    #     QForAll([Node, Node], lambda n1, n2: postS.replied(n1,n2) == If(n1 == requester, BoolVal(False), preS.replied(n1, n2))).z3expr,
    #     QForAll([Node], lambda n: postS.holds(n) == If(n == requester, BoolVal(False), preS.holds(n))).z3expr
    # )
