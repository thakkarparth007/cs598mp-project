# %%
import time
from z3 import *
import itertools
from invar_synth.protocols.protocol import ProtocolModel
from invar_synth.cegis.cex import *
from invar_synth.utils.qexpr import QForAll
from tqdm import tqdm

def template_generator(allowed_quantifiers, allowed_sorts, max_terms = 5):
    def picker(options, how_many):
        if len(allowed_quantifiers) > 1:
            # needs optimization.
            # this generates many duplicates, even after using set
            # for example, it considers ((forall, forall) (node, epoch)) and ((forall, forall) (epoch, node)) the same.
            return set(itertools.permutations(options*how_many, how_many))
        else:
            return itertools.combinations_with_replacement(options, how_many)
    
    for i in range(1, max_terms+1):
        # loop over i-permutations of quantifiers
        for quantifiers in picker(allowed_quantifiers, i):
            # loop over i-permutations of sorts
            for sorts in picker(allowed_sorts, i):
                # hack
                #if len(set(sorts)) != len(allowed_sorts):
                #    continue
                yield list(quantifiers), list(sorts)

class CEGISLearner():
    # TODO:
    #   (X) Add the invariants discovered so far to the synth_str
    #   (X) Don't move to a new template till we can't find invariants for the current template
    #   [ ] Just because our template has an epoch variable doesn't mean the invariant generated will use epoch at all. This causes duplicates that we must be aware of.
    def __init__(
        self, protocol_model: ProtocolModel, invars=[], max_terms = 5, load_N_pos_cex_from_traces=0, interactive=False,
        cheap_constraints=True
    ):
        set_option('smt.random_seed', 123)
        self.cex_gen = CEXGen(protocol_model)

        self.dummyM = protocol_model('DUMMYMODEL')
        self.dummyS = self.dummyM.get_state('S')

        self.allowed_quantifiers = ['FORALL'] #, 'EXISTS']
        self.allowed_sorts = self.dummyM.sorts

        self.counter_examples = [] #self.dummyM.get_pos_cex_from_traces()[:load_N_pos_cex_from_traces]

        self.invars = [lambda M, S: M.get_axioms()] + invars
        self.cur_invar = lambda M, S: QForAll([self.dummyM.sorts[0]], lambda n1: BoolVal(False))
        self.template_generator = list(template_generator(
            self.allowed_quantifiers,
            self.allowed_sorts,
            max_terms
        ))
        self.perm_storage = {} # maps template index to random crap
        self.perm_storage['cex'] = []
        self.safe = False

        self.interactive = interactive
        self.cheap_constraints = cheap_constraints

    # $unique_invar_asserts ^ insert above    
    def loop(self, max_iters=10, time_limit=30, min_depth=1, max_depth=4, debug=False, interactive=False):
        time_limit *= 60 # convert to seconds
        time_loop_start = time.time()
        self.end_time = end_time = time_loop_start + time_limit

        synth_generator = self.synth(min_depth, max_depth)
        # for i in tqdm(range(max_iters)): # docker-compose mixes stderr and stdout, causing havoc with logging if tqdm is running
        for i in (range(max_iters)):
            now = time.time()
            print(f"> Iteration: {i}/{max_iters} ({int(100*i/max_iters)}%),\tTime taken: {int(now - time_loop_start)}s,\tTime left: {int(end_time - now)}s")
            if now > end_time:
                print(f"Time limit reached. Stopping after {i} iterations. Extra time: {now - end_time}")
                break

            # stats
            cex_type_counts = {'pos': 0, 'imp': 0, 'neg': 0, 'highest': 0}
            for cex in self.counter_examples:
                if isinstance(cex, PositiveCEX): cex_type_counts['pos'] += 1
                elif isinstance(cex, NegativeCEX): cex_type_counts['neg'] += 1
                else: cex_type_counts['imp'] += 1
                cex_type_counts['highest'] = max(cex_type_counts['highest'], cex.id)
            print("Total number of pos counter examples: ", cex_type_counts['pos'])
            print("Total number of neg counter examples: ", cex_type_counts['neg'])
            print("Total number of imp counter examples: ", cex_type_counts['imp'])
            print("Highest counter example id: ", cex_type_counts['highest'])

            need_new_pos_cex = True
            if self.cheap_constraints:
                for cex in self.counter_examples:
                    if isinstance(cex, PositiveCEX):
                        if cex.expand_lazy_valuations_set(self.cur_invar):
                            need_new_pos_cex = False
                            break

            if need_new_pos_cex:
                start = time.time()
                cex = self.cex_gen.get_pos_cex(self.cur_invar, debug)
                end = time.time()
                print("Pos-CEX query time: {}".format(end-start))

                if cex.exists():
                    self.counter_examples.append(cex)
                    self.perm_storage['cex'].append(cex)
            else:
                invar_qexpr = self.cur_invar(self.dummyM, self.dummyS)
                tmpl_qs, tmpl_sorts = invar_qexpr.qs, invar_qexpr.sorts
                tmpl = str((tmpl_qs, tmpl_sorts))
                print(f"Expanded old cex {cex.id} to have ", len(cex.template_to_lazy_valuations[tmpl]), " lazy valuations under template ", tmpl)
            
            if cex.exists():
                # overwrite the current invariant, it's useless
                self.cur_invar = next(synth_generator)
                continue

            # # now that we've found an invariant that includes the initial
            # # state, we don't need to worry about positive counter examples
            # # because all future invariants will be ANDed with the
            # # invariants that include the initial state.
            # self.counter_examples = []

            start = time.time()
            cex = self.cex_gen.get_implication_cex(self.cur_invar, debug)
            end = time.time()
            print("I-CEX query time: {}".format(end-start))
            if cex.exists():
                self.counter_examples.append(cex)
                self.perm_storage['cex'].append(cex)
                # overwrite the current invariant, it's useless
                self.cur_invar = next(synth_generator)
                continue
            
            # # check if our invariant is already implied by existing invariants
            # # if so, it's useless
            # solver = Solver()
            # known_invars = And(*[inv(M, S) for inv in self.invars])
            # solver.add(Not(Implies(known_invars, self.cur_invar(M, S))))
            # if solver.check() == unsat and False:
            #     continue
            
            # store the current invariant, because it's inductive
            self.invars.append(self.cur_invar)
            self.cex_gen.invars.append(self.cur_invar)
            print("WINNER: ", self.cur_invar(self.dummyM, self.dummyS).z3expr,
                 f"\nFound after {time.time() - time_loop_start} seconds")
            # reset synth_generator
            synth_generator = self.synth(min_depth, max_depth)

            # throw away all inductive cexs.
            # because the inductive cexs may be spurios.
            # ideally, we only wanna throw away those inductive cexs where
            # cur_invar(cex.S1) is false. Meaning, that counter example's pre state
            # is unreachable. (see discussion with adithya)
            self.counter_examples = [cex for cex in self.counter_examples if (isinstance(cex, PositiveCEX))]
            
            start = time.time()
            cex = self.cex_gen.get_neg_cex(debug=debug)
            end = time.time()
            print("Neg-CEX query time: {}".format(end-start))
            if cex.exists():
                #self.counter_examples.append(cex)
                #self.perm_storage['cex'].append(cex)
                self.cur_invar = next(synth_generator)
            else:
                print("No counter-example found.")
                self.safe = True
                return True

        return False
    
    def print_winners_so_far(self):
        print("==========================================================")
        for i, inv in enumerate(self.invars):
            print(f"Inv#{i}: ", inv(self.dummyM, self.dummyS).z3expr)
        print("==========================================================")
        print(f"Protocol proved safe? : {self.safe}")
    
    def synth(self, min_depth, max_depth):
        for depth in range(min_depth, max_depth+1):
            valid_templates = [(qs, sorts) for qs, sorts in self.template_generator]
            templ_ptr = 0
            while templ_ptr < len(valid_templates):
                if time.time() > self.end_time:
                    print("Time limit exceeded")
                    return

                qs, sorts = valid_templates[templ_ptr]
                print(f"Depth={depth}, Winners={len(self.invars)} template=", qs, sorts)

                synthesized_invar_candidates = self.get_candidates(qs, sorts, min_depth=depth, max_depth=depth)
                if self.interactive:
                    input("Go?")

                if len(synthesized_invar_candidates) == 0:
                    print(f"-------------------Depth={depth} Exhausted template ", qs, sorts, '-------------------\n')
                    #valid_templates = valid_templates[:templ_ptr] + valid_templates[templ_ptr+1:]
                    #if len(valid_templates) == 0:
                    #    break
                    #templ_ptr = (templ_ptr) % len(valid_templates)
                    templ_ptr = (templ_ptr + 1) #% len(valid_templates)
                    continue
                
                #templ_ptr = (templ_ptr + 1) % len(valid_templates)

                for cand in synthesized_invar_candidates:
                    #print("Simplified candidate: ", res(M, S))
                    yield cand
            
            print(f"=================Depth exhausted: {depth}===========================\n")
    
    def get_candidates(self, qs, sorts, min_depth, max_depth):
        raise NotImplementedError()

# %%
