from functools import partial
import typing
from z3 import *
import itertools
from typing import Callable, List, Tuple
from invar_synth.protocols.protocol import ProtocolModel, ProtocolState
from invar_synth.utils.solver_wrapper import *
from invar_synth.utils.qexpr import QExpr, QForAll

cex_id = 0

class CEX():
    def __init__(self, solver, z3model, M, cand_invar):
        global cex_id
        self.id = cex_id
        self.solver = solver
        self.z3model = z3model
        self.M = M
        self.cand_invar = None
        if self.z3model:
            self.M.store_z3model(self.z3model)
            self.bro = self.z3model.sexpr()

        cex_id += 1
    
    def exists(self):
        return self.z3model is not None

    def get_synth_constraint(known_invars, invar_expr):
        """
        Takes an expression that asserts that an invariant holds in a given model.
        This expression is used to form the constraint, depending upon the type of CEX.

        Positive CEX:
            This counter example is a (model, S) pair, where S is the state that the invariant doesn't
            include, but it should.

            The constraint will be of the form:
                S => invar_expr

        Negative CEX:
            This counter example is a (model, S) pair, where S is the state that the invariant
            includes, but is not safe.

            The constraint will be of the form:
                state_conditions => NOT(invar_expr)   | all evaluations done in the context of the model
        
        Inductiveness CEX:
            This counter example is a (model, S1, S2) triplet, where invariant holds in S1, but not in S2.
            We want our new invariant to either not hold in S1 or hold in both.

            The constraint will be of the form:
                S1 => Not(invar_expr) OR (S1 => invar_expr AND S2 => invar_expr)  | all evaluations done in the context of the model
                S1 => Not(invar_expr) OR ((S1 OR S2) => invar_expr)               | all evaluations done in the context of the model
            
            p => q AND r => q
            (~p V q) AND (~r V q)
            (~p AND ~r) V q
            ~(p OR r) V q
            (p V r) => q
        """
        raise NotImplementedError()
    
    def get_valuations_violating_invariant(
        self,
        S : ProtocolState,
        invar_fn : Callable[[ProtocolModel, ProtocolState], QExpr],
        all=False,
        except_valuations=[]
    ) -> typing.Union[None, Tuple[Symbol], List[Tuple[Symbol]]]:
        """
        Part of the cheap constraints idea - finds valuations of the invariant that violate it.
        invar_fn is a function that takes M and S, and returns a QExpr
        """
        valuations = [] # list of tuples of size |args_of_invar_fn|
        universes = []
        invar_qexpr = invar_fn(self.M, S)
        for s in invar_qexpr.sorts:
            universes.append(self.M.get_universe(s))
        
        all_args = itertools.product(*universes)
        for args in all_args:
            if args in except_valuations:
                continue
            eval = self.z3model.eval(invar_qexpr.body(*args), model_completion=True)
            if eval == False:
                if all == False:
                    return args
                valuations.append(args)
        
        if len(valuations) == 0 and all == False:
            return None
        return valuations

    def get_formula_of_state(self, S, include_global=False):
        """
        Converts a given state into a boolean formula describing the state.
        Specifically, converts relations of a state S from z3 function to a ground formula in the model's universe
        Appends the known invariants to the formula.
        """

        univ = {}
        for s in self.M.sorts:
            univ[s] = self.M.get_universe(s)
        
        decls = [(n, fn, False) for n, fn in S.vars.items()]
        if include_global:
            decls += [(n, fn, True) for n, fn in self.M.globals.items()]

        formulas = {}
        for name, fn, is_global in decls:
            start = 1 if is_global else 2
            universes = [univ[fn.func.domain(i)] for i in range(start, fn.func.arity())]
            
            all_args = itertools.product(*universes)
            # TODO Optimization: remove those for which model_completion was necessary (i.e, don't care inputs)
            conjuncts = []
            for args in all_args:
                lhs = fn(*args)
                rhs = self.z3model.eval(fn(*args), model_completion=True)
                conjuncts.append(lhs == rhs)
            
            func_as_formula = And(*conjuncts)
            formulas[name] = func_as_formula

        return formulas, And(
           *(formulas.values())
        )
    
    def get_formula_of_state_for_ite(self, S, include_global=False, cheap_universes=False):
        """
        Same as get_formula_of_state, but returns a formula that can be used in an ITE.
        Specifically, returns a dictionary mapping names to a list of (lhs, rhs) pairs.
        This is essentially a partial evaluation of the functions describing the model/state.

        "Partial" because we're only evaluating the functions for this specific state in this specific model (cex).
        """
        
        univ = cheap_universes
        if not univ:
            univ = {}
            for s in self.M.sorts:
                univ[s] = self.M.get_universe(s)
            
        decls = [(n, fn, False) for n, fn in S.vars.items()]
        if include_global:
            decls += [(n, fn, True) for n, fn in self.M.globals.items()]

        formulas = {}
        for name, fn, is_global in decls:
            start = 1 if is_global else 2
            universes = [univ[fn.func.domain(i)] for i in range(start, fn.func.arity())]
            
            all_args = itertools.product(*universes)
            # TODO Optimization: remove those for which model_completion was necessary (i.e, don't care inputs)
            formulas[name] = []
            for args in all_args:
                lhs = [self.M.model_sym]
                if not is_global:
                    lhs.append(S.state_sym)
                lhs += args

                rhs = self.z3model.eval(fn(*args), model_completion=True)
                formulas[name].append((lhs, rhs))

        return formulas
    
    def get_model_desc(self, cheap_constraints=False):
        return self.get_formula_of_state_for_ite(self.S, include_global=True, cheap_universes=None)
    
    def generate_inv_expr_for_tmpl(self, tmpl_qs, tmpl_sorts, synthesized_inv, lazy=False):
        # TODO: for slowgrowth/cheap constraints, modify this part.
        #       currently it evaluates the invariant over the entire model
        #       but cheap constraints == evaluation over selected elements
        #
        #       Perhaps the counter example itself could contain the information
        #       about violating valuations.
        assert lazy == False, "Lazy invariant expression generation should be defined for Positive/Implication counter examples. Not here."
        arg_values = [self.M.get_universe(s) for s in tmpl_sorts]
        inv_expr = lambda M, S: QExpr(tmpl_qs, tmpl_sorts,
            partial(synthesized_inv, M.model_sym, S.state_sym))\
                .to_ground_expr(arg_values)
        
        return inv_expr

class PositiveCEX(CEX):
    def __init__(self, solver, z3model, M, cand_invar, S):
        super().__init__(solver, z3model, M, cand_invar)
        self.S = S
        self.cand_invar = cand_invar(M, S)

        # the following two are related to the cheap constraints idea.
        self.template_to_lazy_valuations = {} # maps template to list of valuations under that template.
                                              # the list is lazily expanded.
        
        # unused for now.
        # Expand the universe lazily too. i.e., only define state/model functions (e.g., held, le etc.)
        # relevant to the valuations under use.
        if self.exists():
            self.lazy_universes = {
                sort : set(self.M.get_universe(sort)[:1]) for sort in self.M.sorts
            }
    
    def get_model_desc(self, cheap_constraints=False):
        return self.get_formula_of_state_for_ite(
            self.S,
            include_global=True,
            cheap_universes=self.lazy_universes if cheap_constraints else None
        )
    
    def expand_lazy_valuations_set(self, invar_fn : Callable[[ProtocolModel, ProtocolState], QExpr]) -> Bool:
        """Returns True if successfully expanded, else False."""
        invar_qexpr = invar_fn(self.M, self.S)
        tmpl_qs, tmpl_sorts = invar_qexpr.qs, invar_qexpr.sorts
        tmpl = str((tmpl_qs, tmpl_sorts))
        if tmpl not in self.template_to_lazy_valuations:
            assert False, "Should've been filled in already"
            self.template_to_lazy_valuations[tmpl] = []

        valuation = self.get_valuations_violating_invariant(
            self.S, invar_fn, all=False, except_valuations=self.template_to_lazy_valuations[tmpl]
        )
        if valuation is None:
            # the new invariant doesn't violate this counter example. No need to expand.
            return False

        #assert valuation not in self.template_to_lazy_valuations[tmpl], \
        #    f"Valuation {valuation} already in lazy valuations set."
        self.template_to_lazy_valuations[tmpl].append(valuation)
        for i, v in enumerate(valuation):
            self.lazy_universes[tmpl_sorts[i]].add(v)
        
        return True
    
    def generate_inv_expr_for_tmpl(self, tmpl_qs, tmpl_sorts, synthesized_inv, lazy=True):
        if not lazy:
            return super().generate_inv_expr_for_tmpl(tmpl_qs, tmpl_sorts, synthesized_inv, lazy=False)

        assert "EXISTS" not in tmpl_qs, "Lazy invariant evaluation is only supported for \forall quantifiers."

        tmpl = str((tmpl_qs, tmpl_sorts))
        if tmpl in self.template_to_lazy_valuations:
            valuations = self.template_to_lazy_valuations[tmpl]
            if len(valuations) == 0:
                print(self.solver)
            assert len(valuations) > 0, f"No valuations to expand for template {tmpl}."
        else:
            valuations = [
                [self.M.get_universe(s)[0] for s in tmpl_sorts]
            ]
            self.template_to_lazy_valuations[tmpl] = valuations
            #valuations = [self.get_valuations_violating_invariant(
            #    self.S,
            #    lambda M, S: QForAll(tmpl_sorts, lambda *x: BoolVal(False)),
            #    all=False
            #)]

        inv_expr = lambda M, S: QForAll(tmpl_sorts,
            partial(synthesized_inv, M.model_sym, S.state_sym))\
                .eval_over_valuations(valuations)
        
        return inv_expr
    
    def get_synth_constraint(self, known_invars, inv_fn, include_state=True):
        _, formula = self.get_formula_of_state(
            self.S, include_global=True
        )
        
        #known_invars = And(*[inv(self.M, self.S) for inv in known_invars])
        #extra = Not(Implies(known_invars, invar_expr)) # to make sure we get meaningful results, we don't want our new invariant to be directly implied by known invariants
        if include_state:
            return And(formula, inv_fn(self.M, self.S))
        return inv_fn(self.M, self.S)
        #Implies(formula, invar_expr)
        #return And(Implies(formula, invar_expr), extra)

class NegativeCEX(CEX):
    def __init__(self, solver, z3model, M, cand_invar, S):
        super().__init__(solver, z3model, M, cand_invar)
        self.S = S
        self.cand_invar = cand_invar(M, S)
    
    def get_synth_constraint(self, known_invars, inv_fn, include_state=True):
        _, formula = self.get_formula_of_state(self.S, include_global=True)
        #known_invars = And(*[inv(self.M, S) for inv in known_invars])
        #extra = Not(Implies(known_invars, inv_fn)) # to make sure we get meaningful results, we don't want our new invariant to be directly implied by known invariants
        #return And(Implies(formula, Not(invar_expr)), extra)
        
        # negative cex = a state that is not safe, so the invariant should
        # not include it.
        if include_state:
            return And(formula, Not(inv_fn(self.M, self.S)))
        return Not(inv_fn(self.M, self.S))
        #, (get_safety_property_as_expr(self.M, self.S))) #Implies(formula, Not(invar_expr))

# %%
class ImplicationCEX(CEX):
    def __init__(self, solver, z3model, M, cand_invar, S1, S2):
        super().__init__(solver, z3model, M, cand_invar)
        self.S1 = S1
        self.S2 = S2
        self.cand_invar = cand_invar(M, S1)
    
    def get_model_desc(self, cheap_constraints=False):
        formulas = self.get_formula_of_state_for_ite(self.S1, True)
        formulas2 = self.get_formula_of_state_for_ite(self.S2, False)
        for name, f in formulas2.items():
            formulas[name] += f
        return formulas
    
    def get_synth_constraint(self, known_invars, inv_fn, include_state=True):
        _, pre_formula = self.get_formula_of_state(self.S1, include_global=True)
        _, post_formula = self.get_formula_of_state(self.S2) # no need for global here.

        inv1, inv2 = inv_fn(self.M, self.S1), inv_fn(self.M, self.S2)
        
        if include_state:
            constraint1 = And(pre_formula, Not(inv1))
            constraint2 = And(pre_formula, inv1, post_formula, inv2)

            return Or(constraint1, constraint2)
        
        constraint1 = Not(inv1)
        constraint2 = And(inv1, inv2)
        return Or(constraint1, constraint2)

# %%

class CEXGen():
    def __init__(self, protocol_model):
        self.invars = []
        self.cex_ctr = 0
        self.protocol_model = protocol_model

    def add_invariant(self, inv):
        self.invars.append(inv)
    
    def get_cex(self, cand_invar, debug=False):
        pcex = self.get_pos_cex(cand_invar, debug)
        if pcex.exists():
            return pcex
        
        icex = self.get_implication_cex(cand_invar, debug)
        if icex.exists():
            return icex
        
        ncex = self.get_neg_cex(cand_invar, debug)
        if ncex.exists():
            return ncex
        
        return ncex
    
    def get_pos_cex(self, cand_invar, debug=False):
        M = self.protocol_model(f'{self.cex_ctr}_pos')
        S = M.get_state('init')

        inv = lambda M, S: And(*[inv(M, S).z3expr for inv in self.invars])

        solver = SolverWrapper(debug=debug)
        solver.add(M.get_z3_init_state_cond(), "1")
        solver.add(M.get_z3_axioms(), "2") # not sure if this is required
        # solver.add(inv(M, S), "3") # redundant
        solver.add(Not(cand_invar(M, S).z3expr), "4")

        if solver.check() == sat:
            self.cex_ctr += 1
            return PositiveCEX(solver, solver.model(), M, cand_invar, S)
        
        return PositiveCEX(solver, None, M, cand_invar, S)
    
    def get_neg_cex(self, cur_invar=None, debug=False):
        M = self.protocol_model(f'{self.cex_ctr}_neg')
        S = M.get_state('S1')

        inv = lambda M, S: And(*[inv(M, S).z3expr for inv in self.invars])

        solver = SolverWrapper(debug=debug)
        solver.add(M.get_z3_axioms(), "2")
        solver.add(inv(M, S), "3")
        if cur_invar is not None:
            solver.add(cur_invar(M, S).z3expr, "4")
        else:
            cur_invar = self.invars[-1]
        solver.add(Not(M.get_z3_safety_cond(S)), "5")

        if solver.check() == sat:
            self.cex_ctr += 1
            return NegativeCEX(solver, solver.model(), M, cur_invar, S)
        
        return NegativeCEX(solver, None, M, cur_invar, S)
    
    def get_implication_cex(self, cand_invar, debug=False):
        M = self.protocol_model(f'{self.cex_ctr}_ice')
        S1 = M.get_state('S1')
        S2 = M.get_state('S2')

        inv = lambda M, S: And(*[inv(M, S).z3expr for inv in self.invars])

        solver = SolverWrapper(debug=debug)
        solver.add(M.get_z3_axioms(), "2")
        solver.add(inv(M, S1), "3")
        solver.add(cand_invar(M, S1).z3expr, "3")
        solver.add(inv(M, S2), "4") #-> do we need this?
        solver.add(Not(cand_invar(M, S2).z3expr), "5")

        # optimization: check for counter examples that are safe
        solver.push()
        solver.add(M.get_z3_safety_cond(S1), "6")
        solver.add(M.get_z3_safety_cond(S2), "7")

        passed = 0
        for name, action in M.get_actions():
            solver.push()
            #solver.add(
            #    action.get_z3_prec(M, S1, S2), f"{name}_prec"
            #)
            # should assert that the prec is satisfiable
            # but i've asserted not(cand_invar(M, S2)) above for efficiency

            solver.add(
                action.get_z3_formula(M, S1, S2),
                f"{name}_formula"
            )

            if solver.check() == sat:
                self.cex_ctr += 1
                return ImplicationCEX(solver, solver.model(), M, cand_invar, S1, S2)
            
            solver.pop()
        
        # if we didn't find such counter examples, find "stupid" counter examples.
        solver.pop()

        passed = 0
        for name, action in M.get_actions():
            solver.push()
            #solver.add(
            #    action.get_z3_prec(M, S1, S2), f"{name}_prec"
            #)
            # should assert that the prec is satisfiable
            # but i've asserted not(cand_invar(M, S2)) above for efficiency

            solver.add(
                action.get_z3_formula(M, S1, S2),
                f"{name}_formula"
            )

            if solver.check() == sat:
                self.cex_ctr += 1
                return ImplicationCEX(solver, solver.model(), M, cand_invar, S1, S2)
            
            solver.pop()
        
        # wrong
        #solver.add(Or(...every actin's precdontion))
        #solver.add(And(every action's formula of the form prec => post))

        # loop over all actions
        # one sat query for every action.
        # if you find at least one counter example, return it.
        
        return ImplicationCEX(solver, None, M, cand_invar, S1, S2)
