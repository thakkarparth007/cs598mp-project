# %%

import sys
sys.path.append('/home/parth/598mp/')

from z3 import *
from invar_synth.protocols.protocol import ProtocolModel, ProtocolState, ProtocolAction
from invar_synth.utils.qexpr import QForAll

# %%

Node = DeclareSort('Node')
Epoch = DeclareSort('Epoch')

class DistLockState(ProtocolState):
    def __init__(self, model_sym, name):
        super().__init__(model_sym, name)

        self._add_state_fn('ep', Node, Epoch)
        self._add_state_fn('held', Node, BoolSort())
        self._add_state_fn('transfer', Epoch, Node, BoolSort())
        self._add_state_fn('locked', Epoch, Node, BoolSort())

# %%

class DistLockModel(ProtocolModel):
    def __init__(self, model_name):
        super().__init__(
            'DistLock',
            model_name,
            [Node, Epoch],
            DistLockState)
        
        self._add_global_fn('le', Epoch, Epoch, BoolSort())
        self._add_global_fn('zero', Epoch)
        self._add_global_fn('one', Epoch)
        self._add_global_fn('first', Node)

        self.axioms = None

        self.actions = {
            'grant': GrantAction(),
            'accept': AcceptAction(),
        }
    
    def get_axioms(self):
        if self.axioms is not None:
            return self.axioms
        
        self.axioms = QForAll(
            [Epoch, Epoch, Epoch],
            lambda e1, e2, e3: And(
                # reflexivity
                self.le(e1, e1),
                # transitivity
                Implies(And(self.le(e1, e2), self.le(e2, e3)), self.le(e1, e3)),
                # antisymmetry
                Implies(And(self.le(e1, e2), self.le(e2, e1)), e1 == e2),
                # totality
                Or(self.le(e1, e2), self.le(e2, e1)),

                # zero
                self.le(self.zero(), e1),
                self.one() != self.zero(),
            )
        )
        return self.axioms

    def get_init_state_cond(self):
        S = self.get_state('init')

        return QForAll(
            [Node, Epoch],
            lambda n, e: And(
                S.held(n) == (n == self.first()),
                Implies(n != self.first(),
                        S.ep(n) == self.zero()),
                S.ep(self.first()) == self.one(),
                S.transfer(e, n) == False,
                S.locked(e, n) == False,
            )
        )
    
    def get_safety_cond(self, S):
        return QForAll(
            [Epoch, Node, Node],
            lambda e, n1, n2: Implies(
                And(
                    S.locked(e, n1),
                    S.locked(e, n2),
                ),
                n1 == n2
            )
        )

# %%

class GrantAction(ProtocolAction):
    """
    action grant(n1:node, n2:node, e:epoch) = {
        # release the lock and send a transfer message
        require held(n1);
        require ~le(e, ep(n1));   # jump to some strictly higher epoch
        transfer(e, n2) := true;
        held(n1) := false;
    }
    """
    def __init__(self):
        super().__init__(Node, Node, Epoch)
    
    def _prec_impl(self, M, S1, S2, n1, n2, e):
        return And(
            S1.held(n1),
            Not(M.le(e, S1.ep(n1))),
        )
    
    def _postc_impl(self, M, S1, S2, n1, n2, e):
        return self._record_updates(S1, S2, {
            'transfer': (e, n2, True),
            'held': (n1, False),
        })


class AcceptAction(ProtocolAction):
    """
    action accept(n:node, e:epoch) = {
        # receive a transfer message and take the lock, sending a locked message
        require transfer(e,n);
        if ~le(e, ep(n)) {
            held(n) := true;
            ep(n) := e;
            locked(e, n) := true;
        };
    }
    """
    def __init__(self):
        super().__init__(Node, Epoch)
    
    def _prec_impl(self, M, S1, S2, n, e):
        return And(
            S1.transfer(e, n),
            Not(M.le(e, S1.ep(n)))
        )
    
    def _postc_impl(self, M, S1, S2, n, e):
        return self._record_updates(S1, S2, {
            'held': (n, True),
            'ep': (n, e),
            'locked': (e, n, True),
        })

