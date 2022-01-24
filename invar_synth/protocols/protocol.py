# %%

import sys
sys.path.append('/home/parth/598mp/')

from z3 import *
from tqdm import tqdm
import itertools
from functools import partial

from invar_synth.utils.qexpr import QExpr, QForAll, QExists

# %%

ModelId = DeclareSort('ModelId')
StateId = DeclareSort('StateId')

# %%

class ProtocolState():
    def __init__(self, model_sym, state_name):
        self.model_sym = model_sym
        self.state_name = state_name

        self.state_sym = Const(state_name, StateId)
        self.vars = {}

    def _add_state_fn(self, name, *types):
        assert name not in self.vars, f'{name} already registered'

        self.vars[name] = partial(
            Function(name, ModelId, StateId, *types),
            self.model_sym, self.state_sym
        )
        setattr(self, name, self.vars[name])

class ProtocolAction():
    def __init__(self, *sorts):
        self.sorts = sorts

    def get_prec(self, M, S1, S2):        
        return QExists(
            self.sorts,
            partial(self._prec_impl, M, S1, S2)
        )
    
    def get_z3_prec(self, M, S1, S2):
        return self.get_prec(M, S1, S2).z3expr
    
    def get_formula(self, M, S1, S2):
        return QForAll(
            self.sorts,
            lambda *args: Implies(
                self._prec_impl(M, S1, S2, *args),
                self._postc_impl(M, S1, S2, *args)
            )
        )
    
    def get_z3_formula(self, M, S1, S2):
        return self.get_formula(M, S1, S2).z3expr
    
    def _record_update(self, S1, S2, fn, *args):
        # last value in args is the new value
        nsorts = S1.vars[fn].func.arity() - 2
        # -2 because first two are pre-filled with ModelId and StateId
        if len(args) != 0:
            assert nsorts == len(args)-1, f'{fn} takes {nsorts} args, got {len(args)-1}'

        sorts = [S1.vars[fn].func.domain(2+i) for i in range(nsorts)]

        if len(args) == 0:
            return QForAll(sorts, lambda *fargs: \
                S2.vars[fn](*fargs) == S1.vars[fn](*fargs))
        
        args, val = args[:-1], args[-1]
        return QForAll(
            sorts,
            lambda *fargs: \
                S2.vars[fn](*fargs) == If(
                    And(*[fa == a for fa, a in zip(fargs, args)]),
                    val,
                    S1.vars[fn](*fargs)
                )
        )
    
    def _record_updates(self, S1, S2, updates):
        ups = []
        missing_fns = set(S1.vars.keys()) - set(updates.keys())

        for fn in missing_fns:
            ups.append(self._record_update(S1, S2, fn))
        
        for fn, args in updates.items():
            ups.append(self._record_update(S1, S2, fn, *args))
        
        return And(*[u.z3expr for u in ups])
    
    def _prec_impl(self, M, S1, S2, *args):
        raise NotImplementedError()
    
    def _postc_impl(self, M, S1, S2, *args):
        raise NotImplementedError()

class ProtocolModel():
    def __init__(self, protocol_name, model_name, sorts, state_class: ProtocolState):
        self.protocol_name = protocol_name
        self.model_name = f'Model_{model_name}'
        self.sorts = sorts
        self.state_class = state_class

        self.model_sym = Const(f'Model_{model_name}', ModelId)

        self.globals = {}
        self.states = {}
        self.actions = {}
    
    def _add_global_fn(self, name, *types):
        assert name not in self.globals, f'{name} already registered'

        self.globals[name] = partial(
            Function(name, ModelId, *types),
            self.model_sym
        )
        setattr(self, name, self.globals[name])
    
    def get_state(self, state_name):
        if state_name not in self.states:
            self.states[state_name] = self.state_class(self.model_sym, state_name)
        return self.states[state_name]
    
    def get_actions(self):
        """returns (name: str, act: ProtocolAction) pairs"""
        return list(self.actions.items())
    
    def get_safety_cond(self, S):
        raise NotImplementedError()
    
    def get_z3_safety_cond(self, S):
        cond = self.get_safety_cond(S)
        if isinstance(cond, QExpr):
            return cond.z3expr
        return cond
    
    def get_axioms(self):
        raise NotImplementedError()
    
    def get_z3_axioms(self):
        ax = self.get_axioms()
        if isinstance(ax, QExpr):
            return ax.z3expr
        return ax
    
    def get_init_state_cond(self):
        raise NotImplementedError()
    
    def get_z3_init_state_cond(self):
        cond = self.get_init_state_cond()
        if isinstance(cond, QExpr):
            return cond.z3expr
        return cond
    
    def store_z3model(self, m):
        self.z3model = m
        #self.universe = {}

        # unsure whether I need to bind the model's constants to the model.
        # probably don't need to. It's probably just enough to force the
        # functions to consider the model...but let's see.

    def get_universe(self, sort):
        return self.z3model.get_universe(sort)
    
