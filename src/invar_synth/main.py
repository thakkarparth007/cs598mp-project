# take 2 args:
# learner name
# protocol

import argparse

from z3 import *

from invar_synth.utils.qexpr import QForAll
from invar_synth.protocols.dist_lock import Node, Epoch

argparser = argparse.ArgumentParser()
argparser.add_argument('--run-name', dest='run_name', type=str) #, default='run')
argparser.add_argument('--learner', type=str, default='minisy_learner')
argparser.add_argument('--protocol', type=str, default='dist_lock')
argparser.add_argument('--interactive', action='store_true')
argparser.add_argument('--num-iters', dest='num_iters', type=int, default=10000)
argparser.add_argument('--time-limit', dest='time_limit', type=int, default=15, help='Time limit in minutes')
argparser.add_argument('--max-depth', dest='max_depth', type=int, default=10)
argparser.add_argument('--max-terms', dest='max_terms', type=int, default=4)

argparser.add_argument('--cheap', dest='cheap', action='store_true')
argparser.add_argument('--no-cheap', dest='cheap', action='store_false')
argparser.set_defaults(cheap=False)

argparser.add_argument('--id3', dest='id3', action='store_true')
argparser.add_argument('--no-id3', dest='id3', action='store_false')
argparser.set_defaults(id3=False)

argparser.add_argument('--iter-deep', dest='iter_deep', action='store_true', help='Apply iterative deepening on the grammar')
argparser.add_argument('--no-iter-deep', dest='iter_deep', action='store_false', help='Don\'t apply iterative deepening on the grammar')
argparser.set_defaults(iter_deep=True)

args = argparser.parse_args()

def get_learner(learner_name):
    if learner_name == 'minisy_learner':
        from invar_synth.cegis.learners.minisy_learner import MinisyLearner
        return MinisyLearner
    else:
        raise Exception(f'Unknown learner: {learner_name}')

def get_protocol(protocol_name):
    if protocol_name == 'dist_lock':
        from invar_synth.protocols.dist_lock import DistLockModel
        return DistLockModel
    elif protocol_name == 'ricart_agrawala':
        from invar_synth.protocols.ricart_agrawala import MutexModel
        return MutexModel
    else:
        raise Exception(f'Unknown protocol: {protocol_name}')

def main():
    Learner = get_learner(args.learner)
    Protocol = get_protocol(args.protocol)

    # (( transfer(E, N) & ~le(E, ep(N))) & transfer(E1, N1) & (N~=N1 | E~=E1) -> ~le(E,E1))
    # & (held(N) & transfer(E1,N1) -> le(E1,ep(N)))
    Protocol.real_formula = lambda _, M, S: \
        QForAll([Epoch, Node, Epoch, Node], lambda E, N, E1, N1: \
            Implies(
                And(
                    And(S.transfer(E, N), Not(M.le(E, S.ep(N)))),
                    S.transfer(E1, N1),
                    Or(N != N1, E != E1)
                ),
                And(
                    Not(M.le(E, E1)),
                    Implies(
                        And(S.held(N), S.transfer(E1, N1)),
                        M.le(E1, S.ep(N))
                    )
                )
            )
        )
    
    # M = Protocol("Noob")
    # S = M.get_state("S")

    # print(M.real_formula(M, S))
    cegis_learner = Learner(
        Protocol, invars=[], max_terms=args.max_terms, load_N_pos_cex_from_traces=0,
        interactive=args.interactive,
        cheap_constraints=args.cheap,
        run_name = args.run_name,
        use_id3 = args.id3,
        iter_deep = args.iter_deep
    )
    try:
        print(f'Running with args: {args}.')
        cegis_learner.loop(max_depth=args.max_depth, max_iters=args.num_iters, time_limit=args.time_limit)
        # cegis_learner.template_generator = [(('FORALL', 'FORALL', 'FORALL'), (Node, Node, Epoch)),]
        # cegis_learner.loop(max_iters=1000, min_depth=4, max_depth=4)
    except:
        print("Error")
        cegis_learner.print_winners_so_far()
        raise

    cegis_learner.print_winners_so_far()

main()