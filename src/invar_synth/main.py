# take 2 args:
# learner name
# protocol

import argparse

argparser = argparse.ArgumentParser()
argparser.add_argument('--learner', type=str, default='minisy_learner')
argparser.add_argument('--protocol', type=str, default='dist_lock')
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

    cegis_learner = Learner(Protocol, invars=[], max_terms=3, load_N_pos_cex_from_traces=0)
    try:
        cegis_learner.loop(max_iters=100)
        # cegis_learner.template_generator = [(('FORALL', 'FORALL', 'FORALL'), (Node, Node, Epoch)),]
        # cegis_learner.loop(max_iters=1000, min_depth=4, max_depth=4)
    except:
        print("Error")
        cegis_learner.print_winners_so_far()
        raise

    cegis_learner.print_winners_so_far()

main()