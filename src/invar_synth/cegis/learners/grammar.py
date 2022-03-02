from typing import Dict, List
from invar_synth.protocols.protocol import *
from invar_synth.cegis.cex import CEX, ImplicationCEX, PositiveCEX
from invar_synth.utils.qexpr import QExpr

import numpy as np

from string import Template

val_list_sz_sum = 0
val_list_sz_ct  = 0
def get_ite_from_val_list2(name, val_list):
    global val_list_sz_sum, val_list_sz_ct

    val_list_sz_sum += len(val_list)
    val_list_sz_ct += 1
    print("Size of val_list:", len(val_list), "avg:", val_list_sz_sum/val_list_sz_ct)

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
        forbidden_splits.add(best_arg)

        allLs = sorted(merged_Ls + list(r2L_map.values()), key=lambda x: len(x))
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

def get_ite_from_val_list3(name, val_list):
    global val_list_sz_sum, val_list_sz_ct

    val_list = np.array(val_list, dtype=object)

    val_list_sz_sum += len(val_list)
    val_list_sz_ct += 1
    print("Size of val_list:", len(val_list), "avg:", val_list_sz_sum/val_list_sz_ct)

    NUM_ARGS = len(val_list[0][0])
    ARG_IDX_SET = set(range(NUM_ARGS))

    ret = "(ite (= a0 Model_DUMMYMODEL)"
    default_val = f"({name}_dummy "
    for i in range(NUM_ARGS):
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
        rhs_idx = {} # maps rhs value to an integer - to allow dealing with rhses via integers
        rhs_counts = []
        argsplit_infos = [{} for _ in range(NUM_ARGS)]

        valid_js = list(ARG_IDX_SET).difference(forbidden_splits)
        for (lhs, rhs) in val_list:
            if rhs not in rhs_idx:
                rhs_idx[rhs] = len(rhs_idx)
                rhs_counts.append(0)
            else:
                rhs_counts[rhs_idx[rhs]] += 1

        if len(rhs_counts) == 1:
            rhs_val = list(rhs_counts.keys())[0]
            if is_bool(rhs_val):
                rhs_val = "true" if rhs_val else "false"
            else:
                rhs_val = str(rhs_val)
            
            # Ls = set([lhs[0] for lhs, _ in val_list])

            return ("    "*(indent)) + rhs_val + "\n"

        for (lhs, rhs) in val_list:
            rhs = rhs_idx[rhs]
            for j in valid_js:
                L = lhs[j]
                argsplit_infos[j][L] = argsplit_infos[j].get(L, np.zeros(len(rhs_counts)))
                argsplit_infos[j][L][rhs] += 1

        den = len(val_list)
        rhs_counts = np.array(rhs_counts)
        #entropy = -sum([rhs_counts[rhs]/den * math.log(rhs_counts[rhs]/den, 2) for rhs in rhs_counts])
        entropy = -np.sum(rhs_counts/den * np.log2(rhs_counts/den))

        # calculate the entropy after splitting on every argument
        info_gain = [-1 for _ in range(NUM_ARGS)]
        for j in valid_js:
            info_gain[j] = entropy
            for L, rhs_info in argsplit_infos[j].items():
                den = np.sum(list(rhs_info.values()))
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
        forbidden_splits.add(best_arg)

        allLs = sorted(merged_Ls + list(r2L_map.values()), key=lambda x: len(x))
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

class SynthGrammar:
    def __init__(self, M: ProtocolModel, rnd_seed, use_id3=True):
        self.M = M
        self.S = S = M.get_state('DUMMYSTATE')
        self.seed = rnd_seed
    
        self.types = M.sorts

        self.fns = {
            name : fn.func
            for name, fn in list(M.globals.items()) + \
                            list(S.vars.items())
        }

        self.fns_by_type = {}
        for name, fn in self.fns.items():
            rng = fn.range()
            self.fns_by_type[rng] = self.fns_by_type.get(rng, []) + [name]
        
        self.counter_examples : List[CEX] = []
        self.known_invars : List[QExpr] = []
        self.use_id3 = use_id3

        # vars:
        #   - $seed                  : seed passed on to z3
        #   - $universe_declarations : includes ModelId and StateId, along with other sorts
        #                              all declared as enumerated sorts
        #   - $fn_defns              : definitions of function that define the models
        #   - $inv_args              : formal argument list of the synthesized invariant
        #   - $non_terminals         : One for every sort defined in the protocol
        #   - $bool_predicates       : Every fn that returns a bool
        #   - $equality_atoms        : Every equality atom, expanded to avoid terms like (= x x)
        #   - $non_terminal_expansions: One for every sort defined in the protocol,
        #                               with a list of all possible expansions
        #   - $constraints           : All synthesis constraints
        #   - $unique_invar_asserts  : non-triviality constraints in the form of (assert )s
        #   - $dummy_vars            : dummy variables for the synthesized invariant
        #                             to avoid returning True (useless if non-triviality constraints used)
        #   - $dummy_args            : usage of $dummy_vars.

        self.synth_str_template = Template("""
(set-logic ALL)

(set-option :random-seed $seed)

$universe_declarations

;; definitions of functions defining models.
$fn_defns

(synth-fun inv ((m ModelId) (s StateId) $inv_args) Bool

    ;; Declare the non-terminals that would be used in the grammar

    (
        (Start Bool)
        (Atom Bool)
        $non_terminals
    )

    ;; Define the grammar for allowed implementations of inv
    (
        (Start Bool
            (
                Atom
                (and Start Start)
                (or Start Start)
                (=> Start Start)
                (not Start)
            )
        )

        (Atom Bool
            (
                $bool_predicates

                $equality_atoms

;                (and Atom Atom)
;                (or Atom Atom)
;                (=> Atom Atom)
;                (not Atom)
            )
        )

        $non_terminal_expansions
    )
)

$constraints

; this one includes assertion of axioms, so no need to assert it again
$unique_invar_asserts

; the following is to assert that we don't get True as an invariant
$dummy_vars
(assert (not (inv Model_DUMMYMODEL DUMMYSTATE $dummy_args)))

(check-synth)

""")

    def get_synth_str(self, tmpl_qs, tmpl_sorts, counter_examples, known_invars, cheap_constraints=False):
        synthesized_inv = Function('inv', ModelId, StateId, *(tmpl_sorts + [BoolSort()]))

        universes = {}
        model_descs = {}
        constraints = []

        # init universes
        for s in self.types:
            universes[s] = set()
        universes[ModelId] = set()
        universes[StateId] = set()

        for cex in counter_examples:
            self._update_model_descs_in_loop(model_descs, cex, cheap_constraints)
            self._update_universes_in_loop(universes, cex)
            # self._append_cex_desc_as_comment_in_loop(constraints, cex)

            if isinstance(cex, PositiveCEX):
                inv_expr = cex.generate_inv_expr_for_tmpl(tmpl_qs, tmpl_sorts, synthesized_inv, cheap_constraints)
            else:
                inv_expr = cex.generate_inv_expr_for_tmpl(tmpl_qs, tmpl_sorts, synthesized_inv, False)

            constraint = cex.get_synth_constraint(known_invars, inv_expr, False)
            sexpr = constraint.sexpr()
            constraints.append(f"(constraint {sexpr})")
            constraints.append("\n")
        constraints = "\n".join(constraints)
        
        universe_declarations = self._get_universe_decls_as_str(universes)
        
        fn_defns = self._get_fn_defns_as_str(model_descs)

        inv_args = ""
        dummy_vars = ""
        dummy_args = ""
        args_of_type = {t: [] for t in self.types}
        for s in tmpl_sorts:
            arg_name = s.name().lower()[0] + str(len(args_of_type[s])+1)
            args_of_type[s].append(arg_name)
            inv_args += f"({arg_name} {s.name()}) "
            dummy_vars += f"(declare-fun {arg_name.upper()} () {s.name()})\n"
            dummy_args += arg_name.upper() + " "
        
        non_terminals = ""
        non_terminal_expansions = ""
        equality_atoms = ""
        for t in self.types:
            non_terminals += f"({t}_ {t})\n\t\t"

            elems = self._get_terms_of_type(t, args_of_type)
            non_terminal_expansions += f"({t}_ {t} (\n\t\t\t" + "\n\t\t\t".join(elems) + "\n\t\t))\n\t\t"

            for i in range(len(elems)):
                for j in range(i+1, len(elems)):
                    equality_atoms += f"(= {elems[i]} {elems[j]})\n\t\t\t\t"
        
        bool_predicates = "\n\t\t\t\t".join([term for term in self._get_terms_of_type(BoolSort(), {})])

        
        unique_invar_asserts = self._get_unique_invar_asserts(
            tmpl_sorts, synthesized_inv, universes, known_invars, cheap_constraints
        )
        # unique_invar_asserts = ""

        return self.synth_str_template.substitute(
            seed=self.seed,
            universe_declarations=universe_declarations.strip(),
            fn_defns=fn_defns.strip(),
            non_terminals=non_terminals.strip(),
            bool_predicates=bool_predicates.strip(),
            equality_atoms=equality_atoms.strip(),
            non_terminal_expansions=non_terminal_expansions.strip(),
            constraints=constraints.strip(),
            unique_invar_asserts=unique_invar_asserts.strip(),
            dummy_vars=dummy_vars.strip(),
            dummy_args=dummy_args.strip(),
            inv_args=inv_args.strip(),
        )

    def _get_unique_invar_asserts(self, tmpl_sorts, synthesized_inv, universes, known_invars, cheap_constraints=False):
        # the witness thing. Find an invariant that eliminates at least one ~state~ valuation
        # that other invariants don't.
        DUMMYMODEL = self.M
        DUMMYSTATE = DUMMYMODEL.get_state('DUMMYSTATE')
        unique_invar_asserts = ""

        for inv1 in known_invars:
            inv1_qexpr = inv1(DUMMYMODEL, DUMMYSTATE)
            if cheap_constraints and False:
                qexpr_universes = [list(universes[s])[:1] for s in inv1_qexpr.sorts]
                inv1_z3expr = inv1_qexpr.to_ground_expr(qexpr_universes)
            else:
                #qexpr_universes = [list(universes[s]) for s in inv1_qexpr.sorts]
                inv1_z3expr = inv1_qexpr.z3expr
            
            unique_invar_asserts += f"(assert {inv1_z3expr.sexpr()})\n"

        # TODO: Check if this works correctly. DISABLING THIS FOR NOW.
        #       INSTEAD, the grammar file asserts that invariant eliminates *some* valuation (using dummy vars).
        # for asserting that this invariant eliminates some state
        # we just need to pick any arbitrary element of each sort        
        # qexpr_universes = [list(universes[s])[0] for s in tmpl_sorts]
        # inv_z3expr = synthesized_inv(
        #     DUMMYMODEL.model_sym, DUMMYSTATE.state_sym,
        #     *qexpr_universes
        # )
        # unique_invar_asserts += f"(assert (not {inv_z3expr.sexpr()}))\n"

        return unique_invar_asserts
    
    def _update_universes_in_loop(self, universes: Dict, cex: CEX):
        universes[ModelId].add(cex.M.model_sym)
        if isinstance(cex, ImplicationCEX):
            universes[StateId].add(cex.S1.state_sym)
            universes[StateId].add(cex.S2.state_sym)
        else:
            universes[StateId].add(cex.S.state_sym)
        
        for s in self.types:
            univ = cex.z3model.get_universe(s)
            for elem in univ:
                universes[s].add(elem)
    
    def _update_model_descs_in_loop(self, model_descs: Dict, cex: CEX, cheap_constraints=False):
        model_desc = cex.get_model_desc(cheap_constraints=cheap_constraints)
        for name, desc in model_desc.items():
            if name in model_descs:
                model_descs[name] += desc
            else:
                model_descs[name] = desc
    
    def _append_cex_desc_as_comment_in_loop(self, constraints: List[str], cex: CEX):
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

    def _get_universe_decls_as_str(self, universes):
        universe_declarations = []
        for s, elems in universes.items():
            universe_declarations += [f"(declare-datatypes ( ({s.name()} 0) ) (("]
            if s == ModelId:
                universe_declarations.append("(Model_DUMMYMODEL) ")
            elif s == StateId:
                universe_declarations.append("(DUMMYSTATE) ")
            for elem in elems:
                universe_declarations.append(f"({elem}) ")
            universe_declarations.append(")))\n")
        return "\n".join(universe_declarations)

    def _get_fn_defns_as_str(self, model_descs):
        fn_defns = []
        for name, desc in model_descs.items():
            # get function's argument types
            fn = self.fns[name]
            sorts = [str(fn.domain(i)) for i in range(fn.arity())]
            rng = str(fn.range())

            farg_list = ' '.join(f'(a{i} {s})' for i, s in enumerate(sorts))

            fn_defn = f"(define-fun {name} ({farg_list}) {rng}\n"
            if self.use_id3:
                fn_defn += get_ite_from_val_list2(name, desc)
            else:
                fn_defn += get_ite_from_val_list(name, desc)
            fn_defn += ")\n"

            fn_defns.append(f"(declare-fun {name}_dummy ({' '.join(sorts)}) {rng})")
            fn_defns.append(fn_defn)
        
        return "\n".join(fn_defns)
    
    def _get_terms_of_type(self, T, universe):
        terms = [str(e) for e in universe.get(T, [])]
        for name in self.fns_by_type[T]:
            fn = self.fns[name]
            fn_arg_types = ['m']
            start = 1
            if name in self.S.vars:
                fn_arg_types += ['s']
                start = 2
            fn_arg_types += [str(fn.domain(i)) + "_"
                             for i in range(start, fn.arity())]
            fn_arg_types = ' '.join(fn_arg_types)
            terms.append(f"({name} {fn_arg_types})")
        
        return terms