# %%
import time
from z3 import *
import itertools
from invar_synth.protocols.protocol import *
from invar_synth.protocols.dist_lock import *
from invar_synth.cegis.cex import *
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


from string import Template
import subprocess

class CEGISLearner():
    # TODO:
    #   (X) Add the invariants discovered so far to the synth_str
    #   (X) Don't move to a new template till we can't find invariants for the current template
    #   [ ] Just because our template has an epoch variable doesn't mean the invariant generated will use epoch at all. This causes duplicates that we must be aware of.
    def __init__(self, invars=[], max_terms = 5, load_N_pos_cex_from_traces=0):
        self.allowed_quantifiers = ['FORALL'] #, 'EXISTS']
        self.allowed_sorts = [Node, Epoch]

        set_option('smt.random_seed', 123)
        self.cex_gen = CEXGen(DistLockModel)

        self.dummyM = DistLockModel('M1')
        self.dummyS = self.dummyM.get_state('S')
    
        self.counter_examples = self.dummyM.get_pos_cex_from_traces()[:load_N_pos_cex_from_traces]

        self.invars = [lambda M, S: M.get_axioms()] + invars
        self.cur_invar = lambda M, S: False
        self.template_generator = list(template_generator(
            self.allowed_quantifiers,
            self.allowed_sorts,
            max_terms
        ))
        self.perm_storage = {} # maps template index to random crap
        self.perm_storage['cex'] = []

        # vars:
        #   $universe_declarations
        #   $inv_args
        #   $node_universe
        #   $epoch_universe
        self.synth_str_template = Template("""
(set-logic ALL)

(set-option :random-seed 123)

(declare-sort ModelId)
(declare-sort StateId)
(declare-sort Node)
(declare-sort Epoch)

$universe_declarations

(declare-fun held (ModelId StateId Node) Bool)
(declare-fun locked (ModelId StateId Epoch Node) Bool)
(declare-fun transfer (ModelId StateId Epoch Node) Bool)
(declare-fun ep (ModelId StateId Node) Epoch)
(declare-fun le (ModelId Epoch Epoch) Bool)
(declare-fun zero (ModelId) Epoch)
(declare-fun one (ModelId) Epoch)
(declare-fun first (ModelId) Node)

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

;(declare-fun DUMMYMODEL () ModelId)
;(declare-fun DUMMYSTATE () StateId)
$dummy_vars


;(assert (not (= (inv DUMMYMODEL DUMMYSTATE $dummy_args) true)))

(check-synth)
        """)
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
            print("WINNER: ", self.cur_invar(self.dummyM, self.dummyS))
            # reset synth_generator
            synth_generator = self.synth(min_depth, max_depth)
            
            # throw away all inductive cexs.
            # because the inductive cexs may be spurios.
            # ideally, we only wanna throw away those inductive cexs where
            # cur_invar(cex.S1) is false. Meaning, that counter example's pre state
            # is unreachable. (see discussion with adithya)
            self.counter_examples = [cex for cex in self.counter_examples if (isinstance(cex, PositiveCEX))]
            
            start = time.time()
            cex = self.cex_gen.get_neg_cex(lambda *args: True, debug)
            end = time.time()
            print("Neg-CEX query time: {}".format(end-start))
            if cex.exists():
                self.counter_examples.append(cex)
                self.perm_storage['cex'].append(cex)
                self.cur_invar = next(synth_generator)
            else:
                print("No counter-example found.")
                return True

        return False
    
    def print_winners_so_far(self):
        print("==========================================================")
        for inv in self.invars:
            print("Inv: ", inv(self.dummyM, self.dummyS))
        print("==========================================================")
    
    def get_synth_str(self, qs, sorts):
        synthesized_inv = Function('inv', ModelId, StateId, *(sorts + [BoolSort()]))

        universes = {}
        for s in self.allowed_sorts:
            universes[s] = set()
        universes[ModelId] = set()
        universes[StateId] = set()

        constraints = []
        # for inv in self.invars:
        #     if isinstance(inv, ExprRef):

        for cex in self.counter_examples:
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

            constraint = cex.get_synth_constraint(self.invars, inv_expr)
            sexpr = constraint.sexpr()
            constraints.append(f"(constraint {sexpr})")
            constraints.append("\n")
        
        # known_invars = And(*[inv(M, S) for inv in self.invars])
        # constraints.append(f"(constraint (not (=> {known_invars.sexpr()} {synthesized_inv.sexpr()})))")
        
        universe_declarations = []
        for s, elems in universes.items():
            for elem in elems:
                #if s != ModelId:
                #    universe_declarations.append(f"(declare-fun {elem}_m (ModelId) {s.name()})")
                #else:
                universe_declarations.append(f"(declare-fun {elem} () {s.name()})")
            universe_declarations.append("")
        
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
        # for i, inv1 in enumerate(self.cur_templ_invars):
        #     unique_invar_asserts.append(inv1)
        #     lhs = f"(inv{i} DUMMYMODEL {dummy_args})"
        #     rhs = f"(inv DUMMYMODEL {dummy_args})"
        #     unique_invar_asserts.append(f"(assert (not (= {lhs} {rhs})))")
        
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
            unique_invar_asserts='\n'.join(unique_invar_asserts)
        )
    
    def synth(self, min_depth, max_depth):
        for depth in range(min_depth, max_depth+1):
            valid_templates = [(qs, sorts) for qs, sorts in self.template_generator if Node in sorts]
            templ_ptr = 0
            while templ_ptr < len(valid_templates):
                qs, sorts = valid_templates[templ_ptr]
                print(f"Depth={depth}, template=", qs, sorts)

                synth_str = self.get_synth_str(qs, sorts)
                synth_file = '/home/parth/598mp/src/invar_synth/cegis/test_synth.sy'
                with open(synth_file,'w') as f:
                   f.write(synth_str)

                # time this function
                start = time.time()
                synthesized_invar_defs = self.run_minisy(synth_file, min_depth=depth, max_depth=depth)
                end = time.time()
                print(f"Time taken for synth: ", end - start)

                if len(synthesized_invar_defs) == 0:
                    print(f"-------------------Depth={depth} Exhausted template ", qs, sorts, '-------------------\n')
                    #valid_templates = valid_templates[:templ_ptr] + valid_templates[templ_ptr+1:]
                    #if len(valid_templates) == 0:
                    #    break
                    #templ_ptr = (templ_ptr) % len(valid_templates)
                    templ_ptr = (templ_ptr + 1) #% len(valid_templates)
                    continue
                
                #templ_ptr = (templ_ptr + 1) % len(valid_templates)

                for defn in synthesized_invar_defs:
                    print("Candidate: ", defn)
                    with open(synth_file,'a') as f:
                        f.write('; Synthesized invariant:\n')
                        f.write('; ' + defn)
                    #L = len(self.cur_templ_invars)
                    #inv_str = defn.replace("inv ", f"inv{L} ")
                    #self.cur_templ_invars.append(inv_str)
                    res = self.parse_inv_defn(qs, sorts, defn)
                    #print("Simplified candidate: ", res(M, S))
                    yield res
            
            print(f"=================Depth exhausted: {depth}===========================\n")

    def run_minisy(self, synth_file, min_depth, max_depth):
        cmd = f'source ~/.zshrc; minisy {synth_file} --min-depth={min_depth} --max-depth={max_depth}'
        print(f"Running {cmd}")
        out = subprocess.check_output(
            cmd,
            shell=True, executable="/bin/zsh", encoding='utf-8'
        )
        lines = out.split('\n')
        defs = []
        for line in lines:
            line = line.strip()
            if line == 'sat' or line == '':
                continue
            if line == 'unsat':
                break
            if line.startswith('(define-fun'):
                defs.append(line)
            else:
                defs[-1] += '\n' + line

        return [d.strip() for d in defs]
    
    def parse_inv_defn(self, quantifiers, sorts, defn):
        defn += "\n"
        sort_counts = {}

        indent = 1
        q_opens = ""
        q_closes = ""
        args = []
        for q, s in zip(quantifiers, sorts):
            sort_counts[s] = sort_counts.get(s, 0) + 1
            count = sort_counts[s]
            pref = s.name()[0].lower()
            name = pref + str(count)
            defn += f"(declare-fun {name} () {s.name()})\n"
            args += [name]
            q_opens += f"{('   ')*indent}({q.lower()} (({name} {s.name()}))\n"
            q_closes = f"{('   ')*indent})\n" + q_closes
            indent += 1
        
        defn += f"(assert\n{q_opens}{('   ')*indent}(inv m s {' '.join(args)})\n{q_closes})\n"
        # print(defn)
        # return

        def inv(M, S):
            sorts = {'StateId': StateId, 'ModelId': ModelId}
            for s in M.sorts:
                sorts[str(s)] = s
            
            decls = {'m': M.model_sym, 's': S.state_sym}
            for name, partial_func in \
                    list(M.globals.items()) + \
                    list(S.vars.items()):
                # need .func at the end because they're partials and not functions
                decls[name] = partial_func.func
            
            return simplify(parse_smt2_string(defn, sorts=sorts, decls=decls)[0])
        
        return inv

if __name__ == '__main__':
    cegis_learner = CEGISLearner(max_terms=3, load_N_pos_cex_from_traces=10)
    try:
        cegis_learner.loop(max_iters=1000)
        # cegis_learner.template_generator = [(('FORALL', 'FORALL', 'FORALL'), (Node, Node, Epoch)),]
        # cegis_learner.loop(max_iters=1000, min_depth=4, max_depth=4)
    except:
        print("Error")
        cegis_learner.print_winners_so_far()
        raise

    cegis_learner.print_winners_so_far()

# %%
