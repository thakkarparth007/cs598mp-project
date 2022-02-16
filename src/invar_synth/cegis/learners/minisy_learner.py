# %%
import time
from z3 import *
from invar_synth.protocols.protocol import *
# from invar_synth.protocols.dist_lock import *
from invar_synth.cegis.cex import *
from invar_synth.cegis.learners.learner import CEGISLearner
from invar_synth.utils.minisy_wrapper import MiniSyWrapper
from invar_synth.cegis.grammar import SynthGrammar

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

class MinisyLearner(CEGISLearner):
    # TODO:
    #   (X) Add the invariants discovered so far to the synth_str
    #   (X) Don't move to a new template till we can't find invariants for the current template
    #   [ ] Just because our template has an epoch variable doesn't mean the invariant generated will use epoch at all. This causes duplicates that we must be aware of.
    def __init__(self, protocol_model, invars=[], max_terms = 5, load_N_pos_cex_from_traces=0):
        super().__init__(protocol_model, invars, max_terms, load_N_pos_cex_from_traces)

        self.minisy = MiniSyWrapper()
        self.grammar = SynthGrammar(self.dummyM, 123)
    
    def get_candidates(self, qs, sorts, min_depth, max_depth):
        synth_str = self.grammar.get_synth_str(
            qs, sorts, self.counter_examples, self.invars,
            lazy_witness=False
        )

        # time this function
        start = time.time()
        synthesized_invar_defs = self.minisy.invoke(synth_str, min_depth=min_depth, max_depth=max_depth)
        end = time.time()
        print(f"Time taken for synth: ", end - start)

        # raise NotImplementedError("TODO: get_candidates")

        candidates = []
        for defn in synthesized_invar_defs:
            print("Candidate: ", defn)
            # with open(synth_file,'a') as f:
            #     f.write('; Synthesized invariant:\n')
            #     f.write('; ' + defn)
            res = self.minisy.parse_inv_defn_v2(qs, sorts, defn)
            candidates.append(res)
        
        return candidates
    
