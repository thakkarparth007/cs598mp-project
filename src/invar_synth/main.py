# take 2 args:
# learner name
# protocol

import argparse

argparser = argparse.ArgumentParser()
argparser.add_argument('--run_name', type=str) #, default='run')
argparser.add_argument('--learner', type=str, default='minisy_learner')
argparser.add_argument('--protocol', type=str, default='dist_lock')
argparser.add_argument('--interactive', action='store_true')
argparser.add_argument('--num_iters', type=int, default=100)
argparser.add_argument('--max_depth', type=int, default=6)

argparser.add_argument('--cheap', dest='cheap', action='store_true')
argparser.add_argument('--no-cheap', dest='cheap', action='store_false')
argparser.set_defaults(cheap=False)

argparser.add_argument('--id3', dest='id3', action='store_true')
argparser.add_argument('--no-id3', dest='id3', action='store_false')
argparser.set_defaults(id3=False)

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
    else:
        raise Exception(f'Unknown protocol: {protocol_name}')

def main():
    Learner = get_learner(args.learner)
    Protocol = get_protocol(args.protocol)

    cegis_learner = Learner(
        Protocol, invars=[], max_terms=3, load_N_pos_cex_from_traces=0,
        interactive=args.interactive,
        cheap_constraints=args.cheap,
        run_name = args.run_name,
        use_id3 = args.id3,
    )
    try:
        cegis_learner.loop(max_depth=args.max_depth, max_iters=args.num_iters)
        # cegis_learner.template_generator = [(('FORALL', 'FORALL', 'FORALL'), (Node, Node, Epoch)),]
        # cegis_learner.loop(max_iters=1000, min_depth=4, max_depth=4)
    except:
        print("Error")
        cegis_learner.print_winners_so_far()
        raise

    cegis_learner.print_winners_so_far()

main()