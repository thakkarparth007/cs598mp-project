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
    
    def get_pos_cex_from_traces(self):
        cexes = []

        curdir = os.path.abspath('.')
        distai_traces_path = os.path.join(os.path.join(curdir,"distai"),"traces")

        df = pd.read_csv(os.path.join(distai_traces_path,"distributed_lock.csv"))
        cols = df.columns
        
        N1, N2 = Consts('N1 N2', Node)
        E1, E2 = Consts('E1 E2', Epoch)

        for I, row in enumerate(df.to_dict(orient="records")):
            M = DistLockModel(f'M{I}_trace_pos')
            S1 = M.get_state('S1')

            e = Const('e', Epoch)
            n = Const('n', Node)
            constraints = [
                ForAll([e], Or(e == E1, e == E2, e == S1.ep(N1), e == S1.ep(N2), e == M.zero(), e == M.one())),
                ForAll([n], Or(n == N1, n == N2, n == M.first())),
            ]
            for col in cols:
                fn = col.split('(')[0]
                if fn in S1.vars:
                    fn = S1.vars[fn]
                elif fn in M.globals:
                    fn = M.globals[fn]
                elif fn.startswith("first="):
                    fn = M.globals['first']
                    val = col.split('=')[1]
                    val = {'N1': N1, 'N2': N2}[val]
                    if row[col] == '1':
                        constraints.append(fn() == val)
                    else:
                        constraints.append(fn() != val)
                    continue
                else:
                    raise ValueError(f"Unknown function {fn}")

                args = col[col.index('(')+1 : -1].split(',')
                for i in range(len(args)):
                    if args[i] == 'ep(N1)':
                        args[i] = S1.ep(N1)
                    elif args[i] == 'ep(N2)':
                        args[i] = S1.ep(N2)
                    else:
                        args[i] = {'N1': N1, 'N2': N2, 'E1': E1, 'E2': E2}[args[i]]
                
                if row[col] == 1:
                    constraints.append(fn(*args) == True)
                else:
                    constraints.append(fn(*args) == False)
            
            solver = Solver()
            solver.add(And(*constraints))
            #print(And(*constraints).sexpr())
            print(I, solver.check())
            z3model = solver.model()
            pos_cex = PositiveCEX(solver, z3model, M, lambda M, S: False, S1)
            cexes.append(pos_cex)
            #model_desc = And(*[constraints])
            #print(model_desc.sexpr())
            #break
        
        return cexes

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

