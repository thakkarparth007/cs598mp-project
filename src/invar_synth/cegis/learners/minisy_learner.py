# %%
import time
from z3 import *
from invar_synth.protocols.protocol import *
from invar_synth.protocols.dist_lock import *
from invar_synth.cegis.cex import *
from invar_synth.cegis.learners.learner import CEGISLearner
from invar_synth.utils.minisy_wrapper import MiniSyWrapper

from string import Template

class MinisyLearner(CEGISLearner):
    # TODO:
    #   (X) Add the invariants discovered so far to the synth_str
    #   (X) Don't move to a new template till we can't find invariants for the current template
    #   [ ] Just because our template has an epoch variable doesn't mean the invariant generated will use epoch at all. This causes duplicates that we must be aware of.
    def __init__(self, protocol_model, invars=[], max_terms = 5, load_N_pos_cex_from_traces=0):
        super().__init__(protocol_model, invars, max_terms, load_N_pos_cex_from_traces)

        self.minisy = MiniSyWrapper()
        # vars:
        #   $universe_declarations
        #   $inv_args
        #   $node_universe
        #   $epoch_universe
        self.synth_str_template = Template(f"""
(set-option :random-seed 123)

;(declare-sort ModelId)
;(declare-sort StateId)
;(declare-sort Node)
;(declare-sort Epoch)

$universe_declarations

;(declare-fun held (ModelId StateId Node) Bool)
;(declare-fun locked (ModelId StateId Epoch Node) Bool)
;(declare-fun transfer (ModelId StateId Epoch Node) Bool)
;(declare-fun ep (ModelId StateId Node) Epoch)
;(declare-fun le (ModelId Epoch Epoch) Bool)
;(declare-fun zero (ModelId) Epoch)
;(declare-fun one (ModelId) Epoch)
;(declare-fun first (ModelId) Node)

(declare-fun held_dummy (ModelId StateId Node) Bool)
(define-fun held ((a0 ModelId) (a1 StateId) (a2 Node)) Bool
    $held_desc_str
)
(declare-fun locked_dummy (ModelId StateId Epoch Node) Bool)
(define-fun locked ((a0 ModelId) (a1 StateId) (a2 Epoch) (a3 Node)) Bool
    $locked_desc_str
)
(declare-fun transfer_dummy (ModelId StateId Epoch Node) Bool)
(define-fun transfer ((a0 ModelId) (a1 StateId) (a2 Epoch) (a3 Node)) Bool
    $transfer_desc_str
)
(declare-fun ep_dummy (ModelId StateId Node) Epoch)
(define-fun ep ((a0 ModelId) (a1 StateId) (a2 Node)) Epoch
    $ep_desc_str
)
(declare-fun le_dummy (ModelId Epoch Epoch) Bool)
(define-fun le ((a0 ModelId) (a1 Epoch) (a2 Epoch)) Bool
    $le_desc_str
)
(declare-fun zero_dummy (ModelId) Epoch)
(define-fun zero ((a0 ModelId)) Epoch
    $zero_desc_str
)
(declare-fun one_dummy (ModelId) Epoch)
(define-fun one ((a0 ModelId)) Epoch
    $one_desc_str
)
(declare-fun first_dummy (ModelId) Node)
(define-fun first ((a0 ModelId)) Node
    $first_desc_str
)

(synth-fun inv ((m ModelId) (s StateId) $inv_args) Bool

    ;; Declare the non-terminals that would be used in the grammar
    ((Start Bool) (Atom Bool) (Node_ Node) (Epoch_ Epoch))

    ;; Define the grammar for allowed implementations of inv
    (
        (Start Bool 
            (
                Atom
                (and Atom Atom)
                (or Atom Atom)
                (=> Atom Atom)
                (not Atom)
            )
        )

        (Atom Bool 
            (
                (held m s Node_)
                (locked m s Epoch_ Node_)
                (transfer m s Epoch_ Node_)
                (le m Epoch_ Epoch_)

                (= Node_ Node_)
                (= Epoch_ Epoch_)

                (and Atom Atom)
                (or Atom Atom)
                (=> Atom Atom)
                (not Atom)     
            )
        )

        (Node_ Node
            (
                $node_universe
            )
        )

        (Epoch_ Epoch
            (
                $epoch_universe
                (ep m s Node_)
            )
        )
    
    )
)

$constraints

;(declare-fun Model_DUMMYMODEL () ModelId)
;(declare-fun DUMMYSTATE () StateId)
$dummy_vars

; this one includes assertion of axioms, so no need to assert it again
$unique_invar_asserts

(assert (not (inv Model_DUMMYMODEL DUMMYSTATE $dummy_args)))

(check-synth)
        """)
    # $unique_invar_asserts ^ insert above
    
    def get_ite_from_val_list(self, name, val_list, default_val=None):
        if len(val_list) == 0:
            return f"\t{default_val}"
        
        lhs, rhs = val_list[0]
        cond = "(and "
        for i, L in enumerate(lhs):
            dummyVar = f"a{i}"
            cond += f"(= {dummyVar} {L}) "
        cond += ")"

        if default_val is None:
            default_val = f"({name}_dummy "
            for i in range(len(lhs)):
                default_val += f"a{i} "
            default_val += ")"

        if isinstance(rhs, bool) or "BoolRef" in str(type(rhs)):
            rhs = "true" if rhs else "false"

        else_str = self.get_ite_from_val_list(name, val_list[1:], default_val)

        return f"\t(ite {cond} {rhs}\n{else_str})"
    
    def get_synth_str(self, qs, sorts):
        synthesized_inv = Function('inv', ModelId, StateId, *(sorts + [BoolSort()]))

        universes = {}
        for s in self.allowed_sorts:
            universes[s] = set()
        universes[ModelId] = set()
        universes[StateId] = set()

        constraints = []
        model_descs = {}
        # for inv in self.invars:
        #     if isinstance(inv, ExprRef):

        for cex in self.counter_examples:
            model_desc = cex.get_model_desc()
            for name, desc in model_desc.items():
                if name in model_descs:
                    model_descs[name] += desc
                else:
                    model_descs[name] = desc
            
            universes[ModelId].add(cex.M.model_sym)
            if isinstance(cex, ImplicationCEX):
                universes[StateId].add(cex.S1.state_sym)
                universes[StateId].add(cex.S2.state_sym)
            else:
                universes[StateId].add(cex.S.state_sym)
            
            constraints.append('; candidate invariant was : (cex type: ' + str(type(cex)) + ')')
            if isinstance(cex.cand_invar, ExprRef):
                constraints.append("\n".join([
                    "; " + l for l in cex.cand_invar.sexpr().split("\n")
                ]))
            else:
                constraints.append("; " + str(cex.cand_invar))
            constraints.append(";;;;;;;; Counter example generation constraints: ;;;;;;;;")
            cex_constraints = str(cex.solver)
            constraints.append("\n".join([
                "; " + l for l in cex_constraints.split("\n")
            ]))
            constraints.append(";;;;;;;; Counter example generation constraints end ;;;;;;;;")
            constraints.append(";;;;;;;; Counter example model description: ;;;;;;;;")
            constraints.append("\n".join([
                "; " + l for l in cex.bro.split("\n")
            ]))
            constraints.append(";;;;;;;; Counter example model description end ;;;;;;;;")

            for s in self.allowed_sorts:
                # shouldn't be cex.M, because we want the generic constant names,
                # not the constants bound to the model
                univ = cex.z3model.get_universe(s)
                for elem in univ:
                    universes[s].add(elem)
                
                #elems = " ".join(univ)
                #constraints.append(f"(constraint (distinct {elems}))")
            
            # here we need cex.M because we want the constants bound to the model
            #inv_expr = get_invar_expr_for_model(partial(synthesized_inv, cex.M.m), qs, sorts, cex.M)
            arg_values = [cex.M.get_universe(s) for s in sorts]
            inv_expr = lambda M, S: QExpr(qs, sorts,
                partial(synthesized_inv, M.model_sym, S.state_sym))\
                    .to_ground_expr(arg_values)

            constraint = cex.get_synth_constraint(self.invars, inv_expr, False)
            sexpr = constraint.sexpr()
            constraints.append(f"(constraint {sexpr})")
            constraints.append("\n")
        
        model_desc_tmpl_strs = {}
        for name, desc in model_descs.items():
            model_desc_tmpl_strs[name + "_desc_str"] = self.get_ite_from_val_list(name, desc)

        # known_invars = And(*[inv(M, S) for inv in self.invars])
        # constraints.append(f"(constraint (not (=> {known_invars.sexpr()} {synthesized_inv.sexpr()})))")
        
        universe_declarations = []
        for s, elems in universes.items():
            universe_declarations += [f"(declare-datatypes ( ({s.name()} 0) ) (("]
            if s == ModelId:
                universe_declarations.append("(Model_DUMMYMODEL) ")
            elif s == StateId:
                universe_declarations.append("(DUMMYSTATE) ")
            for elem in elems:
                #if s != ModelId:
                #    universe_declarations.append(f"(declare-fun {elem}_m (ModelId) {s.name()})")
                #else:
                universe_declarations.append(f"({elem}) ")
            universe_declarations.append(")))\n")
        
        inv_args = []
        dummy_vars = []
        dummy_args = []
        args_of_type = {Node: [], Epoch: []}
        for s in sorts:
            arg_name = s.name().lower()[0] + str(len(args_of_type[s])+1)
            args_of_type[s].append(arg_name)
            inv_args.append(f"({arg_name} {s.name()})")
            dummy_vars += [f"(declare-fun {arg_name.upper()} () {s.name()})"]
            dummy_args += [arg_name.upper()]
        
        inv_args = " ".join(inv_args)
        dummy_vars = "\n".join(dummy_vars)
        dummy_args = ' '.join(dummy_args)
        unique_invar_asserts = []

        # TODO: witness thing. Find an invariant that eliminates at least one state that other invariants don't.

        DUMMYMODEL = self.dummyM
        DUMMYSTATE = DUMMYMODEL.get_state('DUMMYSTATE')
        for inv1 in self.invars:
           unique_invar_asserts.append(f"(assert {inv1(DUMMYMODEL, DUMMYSTATE).sexpr()})")
        # for i, inv1 in enumerate(self.cur_templ_invars):
            # unique_invar_asserts.append(inv1)
            # lhs = f"(inv{i} DUMMYMODEL {dummy_args})"
            # rhs = f"(inv DUMMYMODEL {dummy_args})"
            # unique_invar_asserts.append(f"(assert (not (= {lhs} {rhs})))")
        
        node_universe = '\n'.join(args_of_type[Node])
        epoch_universe = '\n'.join(args_of_type[Epoch])
        # if len(node_universe) > 0:
        #     epoch_universe += '\n' + '(ep Node_)'

        return self.synth_str_template.substitute(
            universe_declarations='\n'.join(universe_declarations),
            inv_args=inv_args,
            node_universe=node_universe,
            epoch_universe=epoch_universe,
            constraints='\n'.join(constraints),
            dummy_vars=dummy_vars,
            dummy_args=dummy_args,
            unique_invar_asserts='\n'.join(unique_invar_asserts),
            **model_desc_tmpl_strs
        )
    
    def get_candidates(self, qs, sorts, min_depth, max_depth):
        synth_str = self.get_synth_str(qs, sorts)

        # time this function
        start = time.time()
        synthesized_invar_defs = self.minisy.invoke(synth_str, min_depth=min_depth, max_depth=max_depth)
        end = time.time()
        print(f"Time taken for synth: ", end - start)

        candidates = []
        for defn in synthesized_invar_defs:
            print("Candidate: ", defn)
            # with open(synth_file,'a') as f:
            #     f.write('; Synthesized invariant:\n')
            #     f.write('; ' + defn)
            res = self.minisy.parse_inv_defn(qs, sorts, defn)
            candidates.append(res)
        
        return candidates
    
