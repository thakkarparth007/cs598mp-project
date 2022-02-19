from invar_synth.protocols.dist_lock import *
from invar_synth.cegis.learners.learner import *
from invar_synth.cegis.learners.grammar import get_ite_from_val_list, get_ite_from_val_list2

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

def test_id3():
    Model = DeclareSort('Model')
    Node = DeclareSort('Node')
    Epoch = DeclareSort('Epoch')

    M1, M2 = Consts('M1 M2', Model)
    N1, N2 = Consts('N1 N2', Node)
    E1, E2 = Consts('E1 E2', Epoch)

    val_list = [
        ([M1, N1, E1], True),
        ([M1, N1, E2], False),
        ([M1, N2, E1], False),
        ([M1, N2, E2], True),

        ([M2, N1, E1], False),
        ([M2, N1, E2], True),
        ([M2, N2, E1], True),
        ([M2, N2, E2], False),
    ]

    ite_expr1 = get_ite_from_val_list("testfn", val_list)
    ite_expr2 = get_ite_from_val_list2("testfn", val_list)

    constraint = f"""
(declare-datatypes ( (Model 0) ) ((
    (M1) 
    (M2) 
    (Model_DUMMYMODEL) 
)))

(declare-datatypes ( (Node 0) ) ((
    (N1) 
    (N2) 
)))

(declare-datatypes ( (Epoch 0) ) ((
    (E1) 
    (E2) 
)))


(declare-fun testfn_dummy (Model Node Epoch) Bool)
(define-fun test_fn1 ((a0 Model) (a1 Node) (a2 Epoch)) Bool
    {ite_expr1}
)
(define-fun test_fn2 ((a0 Model) (a1 Node) (a2 Epoch)) Bool
    {ite_expr2}
)
(declare-const A0 Model)
(declare-const A1 Node)
(declare-const A2 Epoch)
(assert (not (= (test_fn1 A0 A1 A2) (test_fn2 A0 A1 A2))))
    """

    s = Solver()
    s.from_string(constraint)
    assert s.check() == unsat

def test_id3_another():
    Model = DeclareSort('Model')
    Node = DeclareSort('Node')
    Epoch = DeclareSort('Epoch')

    M1, M2 = Consts('M1 M2', Model)
    N1, N2 = Consts('N1 N2', Node)
    E1, E2 = Consts('E1 E2', Epoch)

    val_list = [
        ([M1, N1, E1], True),
        ([M1, N1, E2], True),
        ([M1, N2, E1], True),
        ([M1, N2, E2], True),

        ([M2, N1, E1], False),
        ([M2, N1, E2], True),
        ([M2, N2, E1], True),
        ([M2, N2, E2], False),
    ]

    ite_expr1 = get_ite_from_val_list("testfn", val_list)
    ite_expr2 = get_ite_from_val_list2("testfn", val_list)

    constraint = f"""
(declare-datatypes ( (Model 0) ) ((
    (M1) 
    (M2) 
    (Model_DUMMYMODEL) 
)))

(declare-datatypes ( (Node 0) ) ((
    (N1) 
    (N2) 
)))

(declare-datatypes ( (Epoch 0) ) ((
    (E1) 
    (E2) 
)))


(declare-fun testfn_dummy (Model Node Epoch) Bool)
(define-fun test_fn1 ((a0 Model) (a1 Node) (a2 Epoch)) Bool
    {ite_expr1}
)
(define-fun test_fn2 ((a0 Model) (a1 Node) (a2 Epoch)) Bool
    {ite_expr2}
)
(declare-const A0 Model)
(declare-const A1 Node)
(declare-const A2 Epoch)
(assert (not (= (test_fn1 A0 A1 A2) (test_fn2 A0 A1 A2))))
    """

    s = Solver()
    s.from_string(constraint)
    assert s.check() == unsat