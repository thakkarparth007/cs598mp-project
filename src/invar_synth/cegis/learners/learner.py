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
    def __init__(self, protocol_model: ProtocolModel, invars=[], max_terms = 5, load_N_pos_cex_from_traces=0):
        set_option('smt.random_seed', 123)
        self.cex_gen = CEXGen(protocol_model)

        self.dummyM = protocol_model('DUMMYMODEL')
        self.dummyS = self.dummyM.get_state('S')

        self.allowed_quantifiers = ['FORALL'] #, 'EXISTS']
        self.allowed_sorts = self.dummyM.sorts

        self.counter_examples = [] #self.dummyM.get_pos_cex_from_traces()[:load_N_pos_cex_from_traces]

        self.invars = [lambda M, S: M.get_axioms()] + invars
        self.cur_invar = lambda M, S: QForAll([BoolSort()], lambda n1: False)
        self.template_generator = list(template_generator(
            self.allowed_quantifiers,
            self.allowed_sorts,
            max_terms
        ))
        self.perm_storage = {} # maps template index to random crap
        self.perm_storage['cex'] = []
        self.safe = False

    # $unique_invar_asserts ^ insert above    
    def loop(self, max_iters=10, min_depth=1, max_depth=4, debug=False):
        synth_generator = self.synth(min_depth, max_depth)
        for i in tqdm(range(max_iters)):
            start = time.time()
            cex = self.cex_gen.get_pos_cex(self.cur_invar, debug)
            end = time.time()
            print("Pos-CEX query time: {}".format(end-start))
            if cex.exists():
                self.counter_examples.append(cex)
                self.perm_storage['cex'].append(cex)
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
            print("WINNER: ", self.cur_invar(self.dummyM, self.dummyS).z3expr)
            # reset synth_generator
            synth_generator = self.synth(min_depth, max_depth)

            # throw away all inductive cexs.
            # because the inductive cexs may be spurios.
            # ideally, we only wanna throw away those inductive cexs where
            # cur_invar(cex.S1) is false. Meaning, that counter example's pre state
            # is unreachable. (see discussion with adithya)
            self.counter_examples = [cex for cex in self.counter_examples if (isinstance(cex, PositiveCEX))]
            
            start = time.time()
            cex = self.cex_gen.get_neg_cex(debug)
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
        for inv in self.invars:
            print("Inv: ", inv(self.dummyM, self.dummyS).z3expr)
        print("==========================================================")
        print(f"Protocol proved safe? : {self.safe}")
    
    def synth(self, min_depth, max_depth):
        for depth in range(min_depth, max_depth+1):
            valid_templates = [(qs, sorts) for qs, sorts in self.template_generator]
            templ_ptr = 0
            while templ_ptr < len(valid_templates):
                qs, sorts = valid_templates[templ_ptr]
                print(f"Depth={depth}, template=", qs, sorts)

                synthesized_invar_candidates = self.get_candidates(qs, sorts, min_depth=depth, max_depth=depth)

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
