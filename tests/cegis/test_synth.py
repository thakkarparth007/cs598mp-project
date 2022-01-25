from invar_synth.protocols.dist_lock import *
from invar_synth.cegis.synth import *

def test_templ():
    a = [t for t in template_generator(['FORALL'], [Node, Epoch], 3)]
    a = [(tuple(q), tuple(s)) for q, s in a]
    # print(a)
    assert set(a) == set([
        (('FORALL',), (Node,)),
        (('FORALL',), (Epoch,)),
        (('FORALL', 'FORALL'), (Node, Node)),
        (('FORALL', 'FORALL'), (Node, Epoch)),
        #(('FORALL', 'FORALL'), (Epoch, Node)),
        (('FORALL', 'FORALL'), (Epoch, Epoch)),
        
        (('FORALL', 'FORALL', 'FORALL'), (Node, Node, Node)),
        (('FORALL', 'FORALL', 'FORALL'), (Node, Node, Epoch)),
        (('FORALL', 'FORALL', 'FORALL'), (Node, Epoch, Epoch)),
        (('FORALL', 'FORALL', 'FORALL'), (Epoch, Epoch, Epoch)),
    ])