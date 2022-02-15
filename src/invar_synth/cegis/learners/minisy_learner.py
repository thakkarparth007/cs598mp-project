# %%
import time
from z3 import *
from invar_synth.protocols.protocol import *
from invar_synth.protocols.dist_lock import *
from invar_synth.cegis.cex import *
from invar_synth.cegis.learners.learner import CEGISLearner
from invar_synth.utils.minisy_wrapper import MiniSyWrapper

from string import Template
    
def get_ite_from_val_list2(name, val_list):
    ret = "(ite (= a0 Model_DUMMYMODEL)"
    default_val = f"({name}_dummy "
    for i in range(len(val_list[0][0])):
        default_val += f"a{i} "
    default_val += ")"
    ret += f" {default_val}\n"

    def is_bool(val):
        return isinstance(val, bool) or "BoolRef" in str(type(val))

    # split along an attribute if there are different RHS values
    # after splitting, we want to merge branches that lead to the same RHS value
    # for the last RHS value, we don't need if, just use the else clause.
    def ID3(val_list, indent=0, forbidden_splits=set()):
        # find entropy of val_list
        rhs_counts = {}
        argsplit_infos = {}
        for i, (lhs, rhs) in enumerate(val_list):
            rhs_counts[rhs] = rhs_counts.get(rhs, 0) + 1

            for j, L in enumerate(lhs):
                if j not in argsplit_infos:
                    argsplit_infos[j] = {}
                argsplit_infos[j][L] = argsplit_infos[j].get(L, {})
                argsplit_infos[j][L][rhs] = argsplit_infos[j][L].get(rhs, 0) + 1
        
        if len(rhs_counts) == 1:
            rhs_val = list(rhs_counts.keys())[0]
            if is_bool(rhs_val):
                rhs_val = "true" if rhs_val else "false"
            else:
                rhs_val = str(rhs_val)
            
            # Ls = set([lhs[0] for lhs, _ in val_list])

            return ("    "*(indent)) + rhs_val + "\n"
        
        den = len(val_list)
        entropy = -sum([rhs_counts[rhs]/den * math.log(rhs_counts[rhs]/den, 2) for rhs in rhs_counts])

        # calculate the entropy after splitting on every argument
        info_gain = {}
        for j in argsplit_infos:
            if j in forbidden_splits:
                info_gain[j] = -1
                continue
            info_gain[j] = entropy
            for L, rhs_info in argsplit_infos[j].items():
                den = sum(rhs_info.values())
                split_entropy = -sum([rhs_info[rhs]/den * math.log(rhs_info[rhs]/den, 2)
                                        for rhs in rhs_info])
                info_gain[j] -= den/len(val_list)*split_entropy
        
        # find the argument with the lowest entropy
        best_arg = max(info_gain, key=info_gain.get)
        best_split_info = argsplit_infos[best_arg]
        if len(best_split_info) == 1:
            # if this happens, it means that the best possible split is on a constant
            # which means, all rhs values are the same
            # but that case is already handled by the previous if statement (len(rhs_counts) == 1)
            assert False, "This should not happen."
        
        val_lists_after_split = {}
        for lhs, rhs in val_list:
            L = lhs[best_arg]
            if L not in val_lists_after_split:
                val_lists_after_split[L] = {"val_lists": [], "rhs_vals": set([])}
            
            val_lists_after_split[L]["val_lists"].append((lhs, rhs))
            val_lists_after_split[L]["rhs_vals"].add(rhs)

        r2L_map = {}
        merged_Ls = []
        for L, val_list_after_split in val_lists_after_split.items():
            if len(val_list_after_split["rhs_vals"]) > 1:
                merged_Ls.append([L])
            else:
                rhs = list(val_list_after_split["rhs_vals"])[0]
                if rhs in r2L_map:
                    r2L_map[rhs].add(L)
                else:
                    r2L_map[rhs] = set([L])

        ret = ""
        allLs = merged_Ls + list(r2L_map.values())
        forbidden_splits.add(best_arg)

        for Ls in allLs[:-1]:
            val_lists = []
            for L in Ls:
                val_lists += val_lists_after_split[L]["val_lists"]

            if len(Ls) == 1:
                cond = f"(= a{best_arg} {Ls.pop()})"
            else:
                cond = f"(or "
                for L in Ls:
                    cond += f"(= a{best_arg} {L}) "
                cond += ")"
            
            ret += f"{'    '*indent}(ite {cond}\n"
            ret += ID3(val_lists, indent+1, forbidden_splits)

        lastLs = allLs[-1]
        val_lists = []
        Ls_str = ""
        for L in lastLs:
            val_lists += val_lists_after_split[L]["val_lists"]
            Ls_str += f"{L}, "
        ret += f";{'    '*indent}if a{best_arg} IN [{Ls_str}] \n"
        ret += ID3(val_lists, indent+1, forbidden_splits)
        ret += f"{'    '*indent}{')'*(len(allLs)-1)}\n"

        forbidden_splits.remove(best_arg)
        return ret
    
    ret += ID3(val_list, 1)
    ret += ")"
    return ret

def get_ite_from_val_list(name, val_list, default_val=None, is_grouped=False, is_sorted=False):
    if len(val_list) == 0:
        return f"\t{default_val}"

    if is_grouped:
        lhses, rhs = val_list[0]
        cond = "(or "
        for lhs in lhses:
            cond += "(and "
            for i, L in enumerate(lhs):
                dummyVar = f"a{i}"
                cond += f"(= {dummyVar} {L}) "
            cond += ") "
        cond += ") "
    else:
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

    else_str = get_ite_from_val_list(name, val_list[1:], default_val, is_grouped, is_sorted)

    return f"\t(ite {cond} {rhs}\n{else_str})"

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

    def group_val_list_by_value(self, val_list):
        # TODO: group by model and state too
        #
        # takes a list of (lhs, rhs) tuples and groups them by rhs
        # returns a list of ([lhs1, lhs2, ...], rhs) tuples

        rhs2lhs = {}
        for lhs, rhs in val_list:
            if rhs not in rhs2lhs:
                rhs2lhs[rhs] = [lhs]
            else:
                rhs2lhs[rhs].append(lhs)
        
        return [(lhs_list, rhs) for rhs, lhs_list in rhs2lhs.items()]
    
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
            #desc_grouped = self.group_val_list_by_value(desc)
            model_desc_tmpl_strs[name + "_desc_str"] = get_ite_from_val_list2(name, desc)

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
        dummy_arg_syms = []
        args_of_type = {Node: [], Epoch: []}
        for s in sorts:
            arg_name = s.name().lower()[0] + str(len(args_of_type[s])+1)
            args_of_type[s].append(arg_name)
            inv_args.append(f"({arg_name} {s.name()})")
            dummy_vars += [f"(declare-fun {arg_name.upper()} () {s.name()})"]
            dummy_args += [arg_name.upper()]
            dummy_arg_syms += [Const(arg_name.upper(), s)]
        
        inv_args = " ".join(inv_args)
        dummy_vars = "\n".join(dummy_vars)
        dummy_args = ' '.join(dummy_args)
        unique_invar_asserts = []

        # the witness thing. Find an invariant that eliminates at least one ~state~ valuation
        # that other invariants don't.
        DUMMYMODEL = self.dummyM
        DUMMYSTATE = DUMMYMODEL.get_state('DUMMYSTATE')
        for inv1 in self.invars:
            inv1_qexpr = inv1(DUMMYMODEL, DUMMYSTATE)
            qexpr_universes = [list(universes[s])[:1] for s in inv1_qexpr.sorts]
            inv1_z3expr = inv1_qexpr.to_ground_expr(qexpr_universes)
            unique_invar_asserts.append(f"(assert {inv1_z3expr.sexpr()})")
        
        qexpr_universes = [list(universes[s])[0] for s in sorts]
        inv_z3expr = synthesized_inv(
            DUMMYMODEL.model_sym, DUMMYSTATE.state_sym,
            *qexpr_universes
        )
        unique_invar_asserts.append(f"(assert (not {inv_z3expr.sexpr()}))")

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
            res = self.minisy.parse_inv_defn_v2(qs, sorts, defn)
            candidates.append(res)
        
        return candidates
    
