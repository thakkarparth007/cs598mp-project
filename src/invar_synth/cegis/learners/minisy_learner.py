# %%
import time
from z3 import *
from invar_synth.protocols.protocol import *
# from invar_synth.protocols.dist_lock import *
from invar_synth.cegis.cex import *
from invar_synth.cegis.learners.learner import CEGISLearner
from invar_synth.utils.minisy_wrapper import MiniSyWrapper
from invar_synth.cegis.learners.grammar import SynthGrammar

class MinisyLearner(CEGISLearner):
    # TODO:
    #   (X) Add the invariants discovered so far to the synth_str
    #   (X) Don't move to a new template till we can't find invariants for the current template
    #   [ ] Just because our template has an epoch variable doesn't mean the invariant generated will use epoch at all. This causes duplicates that we must be aware of.
    def __init__(
        self, protocol_model, invars=[], max_terms = 5, load_N_pos_cex_from_traces=0, interactive=False, cheap_constraints=True,
        run_name=None,
        use_id3=True,
        iter_deep=True
    ):
        super().__init__(protocol_model, invars, max_terms, load_N_pos_cex_from_traces, interactive, cheap_constraints, iter_deep)

        self.minisy = MiniSyWrapper(run_name)
        self.grammar = SynthGrammar(self.dummyM, 123, use_id3=use_id3)
        self.cheap_constraints = cheap_constraints
    
    def get_candidates(self, qs, sorts, min_depth, max_depth):
        start = time.time()
        synth_str = self.grammar.get_synth_str(
            qs, sorts, self.counter_examples, self.invars,
            cheap_constraints=self.cheap_constraints
        )
        end = time.time()
        print('get_synth_str took {} seconds'.format(end-start))

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
    
