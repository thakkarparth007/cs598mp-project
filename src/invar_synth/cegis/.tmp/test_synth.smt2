
(set-option :random-seed 123)

;(declare-sort ModelId)
;(declare-sort StateId)
;(declare-sort Node)
;(declare-sort Epoch)

(declare-datatypes ( (Node 0) ) ((
(Node!val!0) 
(Node!val!2) 
(Node!val!1) 
)))

(declare-datatypes ( (Epoch 0) ) ((
(Epoch!val!2) 
(Epoch!val!1) 
(Epoch!val!0) 
(Epoch!val!5) 
(Epoch!val!4) 
(Epoch!val!3) 
)))

(declare-datatypes ( (ModelId 0) ) ((
(Model_DUMMYMODEL) 
(Model_83_ice) 
(Model_1_pos) 
(Model_87_ice) 
(Model_94_ice) 
(Model_85_ice) 
(Model_98_ice) 
(Model_90_ice) 
(Model_86_ice) 
(Model_82_ice) 
(Model_95_ice) 
(Model_96_ice) 
(Model_97_ice) 
(Model_84_ice) 
(Model_0_pos) 
(Model_88_ice) 
(Model_92_ice) 
(Model_93_ice) 
(Model_89_ice) 
(Model_91_ice) 
(Model_99_ice) 
(Model_81_ice) 
)))

(declare-datatypes ( (StateId 0) ) ((
(DUMMYSTATE) 
(S2) 
(S1) 
(init) 
)))


;(declare-fun held (ModelId StateId Node) Bool)
;(declare-fun locked (ModelId StateId Epoch Node) Bool)
;(declare-fun transfer (ModelId StateId Epoch Node) Bool)
;(declare-fun ep (ModelId StateId Node) Epoch)
;(declare-fun le (ModelId Epoch Epoch) Bool)
;(declare-fun zero (ModelId) Epoch)
;(declare-fun one (ModelId) Epoch)
;(declare-fun first (ModelId) Node)

(declare-fun held_dummy (ModelId StateId Node) Bool)
(define-fun held ((a0 ModelId) (a1 StateId) (a2 Node)) Bool
    (ite (= a0 Model_DUMMYMODEL) (held_dummy a0 a1 a2 )
    (ite (= a0 Model_1_pos)
        (ite (= a2 Node!val!0)
            false
;        if a2 IN [Node!val!1, ] 
            true
        )
    (ite (= a0 Model_81_ice)
        (ite (= a1 S1)
            (ite (= a2 Node!val!0)
                true
;            if a2 IN [Node!val!1, ] 
                false
            )
;        if a1 IN [S2, ] 
            false
        )
    (ite (= a0 Model_82_ice)
        (ite (= a1 S1)
            false
;        if a1 IN [S2, ] 
            true
        )
    (ite (= a0 Model_83_ice)
        (ite (= a1 S1)
            true
;        if a1 IN [S2, ] 
            false
        )
    (ite (= a0 Model_84_ice)
        (ite (= a1 S1)
            (ite (= a2 Node!val!0)
                true
;            if a2 IN [Node!val!1, ] 
                false
            )
;        if a1 IN [S2, ] 
            false
        )
    (ite (= a0 Model_85_ice)
        (ite (= a1 S1)
            false
;        if a1 IN [S2, ] 
            true
        )
    (ite (= a0 Model_86_ice)
        (ite (= a1 S2)
            (ite (= a2 Node!val!0)
                false
;            if a2 IN [Node!val!1, ] 
                true
            )
;        if a1 IN [S1, ] 
            true
        )
    (ite (= a0 Model_87_ice)
        (ite (= a1 S1)
            false
;        if a1 IN [S2, ] 
            true
        )
    (ite (= a0 Model_88_ice)
        (ite (= a1 S2)
            (ite (= a2 Node!val!0)
                false
;            if a2 IN [Node!val!1, ] 
                true
            )
;        if a1 IN [S1, ] 
            true
        )
    (ite (= a0 Model_89_ice)
        (ite (= a1 S1)
            (ite (= a2 Node!val!0)
                true
;            if a2 IN [Node!val!1, ] 
                false
            )
;        if a1 IN [S2, ] 
            false
        )
    (ite (= a0 Model_90_ice)
        (ite (= a1 S1)
            (ite (= a2 Node!val!0)
                true
;            if a2 IN [Node!val!1, ] 
                false
            )
;        if a1 IN [S2, ] 
            false
        )
    (ite (= a0 Model_91_ice)
        (ite (= a1 S2)
            (ite (= a2 Node!val!0)
                false
;            if a2 IN [Node!val!1, ] 
                true
            )
;        if a1 IN [S1, ] 
            true
        )
    (ite (= a0 Model_92_ice)
        (ite (= a1 S2)
            (ite (= a2 Node!val!0)
                false
;            if a2 IN [Node!val!1, ] 
                true
            )
;        if a1 IN [S1, ] 
            false
        )
    (ite (= a0 Model_93_ice)
        (ite (= a2 Node!val!1)
            (ite (= a1 S1)
                true
;            if a1 IN [S2, ] 
                false
            )
;        if a2 IN [Node!val!0, Node!val!2, ] 
            false
        )
    (ite (= a0 Model_94_ice)
        (ite (= a2 Node!val!1)
            (ite (= a1 S1)
                true
;            if a1 IN [S2, ] 
                false
            )
;        if a2 IN [Node!val!0, Node!val!2, ] 
            false
        )
    (ite (= a0 Model_95_ice)
        (ite (= a2 Node!val!1)
            (ite (= a1 S1)
                true
;            if a1 IN [S2, ] 
                false
            )
;        if a2 IN [Node!val!0, Node!val!2, ] 
            false
        )
    (ite (= a0 Model_96_ice)
        (ite (= a2 Node!val!1)
            (ite (= a1 S1)
                true
;            if a1 IN [S2, ] 
                false
            )
;        if a2 IN [Node!val!0, Node!val!2, ] 
            false
        )
    (ite (= a0 Model_97_ice)
        (ite (= a2 Node!val!1)
            (ite (= a1 S1)
                true
;            if a1 IN [S2, ] 
                false
            )
        (ite (= a2 Node!val!0)
            false
;        if a2 IN [Node!val!2, ] 
            true
        ))
    (ite (= a0 Model_98_ice)
        (ite (= a1 S1)
            (ite (= a2 Node!val!0)
                true
;            if a2 IN [Node!val!1, ] 
                false
            )
;        if a1 IN [S2, ] 
            true
        )
    (ite (= a0 Model_99_ice)
        (ite (= a2 Node!val!1)
            (ite (= a1 S1)
                true
;            if a1 IN [S2, ] 
                false
            )
        (ite (= a2 Node!val!0)
            true
;        if a2 IN [Node!val!2, ] 
            false
        ))
;    if a0 IN [Model_0_pos, ] 
        true
    ))))))))))))))))))))
)
)
(declare-fun locked_dummy (ModelId StateId Epoch Node) Bool)
(define-fun locked ((a0 ModelId) (a1 StateId) (a2 Epoch) (a3 Node)) Bool
    (ite (= a0 Model_DUMMYMODEL) (locked_dummy a0 a1 a2 a3 )
    (ite (= a0 Model_82_ice)
        (ite (= a2 Epoch!val!3)
            (ite (= a1 S1)
                false
;            if a1 IN [S2, ] 
                true
            )
;        if a2 IN [Epoch!val!0, Epoch!val!2, Epoch!val!1, ] 
            false
        )
    (ite (= a0 Model_83_ice)
        (ite (or (= a2 Epoch!val!0) (= a2 Epoch!val!4) )
            true
;        if a2 IN [Epoch!val!1, Epoch!val!2, Epoch!val!3, ] 
            false
        )
    (ite (= a0 Model_85_ice)
        (ite (= a2 Epoch!val!3)
            (ite (= a1 S1)
                false
;            if a1 IN [S2, ] 
                true
            )
;        if a2 IN [Epoch!val!0, Epoch!val!4, Epoch!val!2, Epoch!val!1, ] 
            false
        )
    (ite (= a0 Model_87_ice)
        (ite (= a2 Epoch!val!3)
            (ite (= a1 S1)
                false
;            if a1 IN [S2, ] 
                true
            )
        (ite (= a2 Epoch!val!2)
            true
;        if a2 IN [Epoch!val!0, Epoch!val!1, ] 
            false
        ))
    (ite (= a0 Model_89_ice)
        (ite (= a2 Epoch!val!3)
            (ite (= a3 Node!val!0)
                true
;            if a3 IN [Node!val!1, ] 
                false
            )
;        if a2 IN [Epoch!val!0, Epoch!val!4, Epoch!val!2, Epoch!val!1, ] 
            false
        )
    (ite (= a0 Model_90_ice)
        (ite (= a2 Epoch!val!4)
            (ite (= a3 Node!val!0)
                false
;            if a3 IN [Node!val!1, ] 
                true
            )
;        if a2 IN [Epoch!val!0, Epoch!val!1, Epoch!val!2, Epoch!val!3, ] 
            false
        )
    (ite (= a0 Model_92_ice)
        (ite (= a2 Epoch!val!4)
            (ite (= a1 S2)
                (ite (= a3 Node!val!0)
                    false
;                if a3 IN [Node!val!1, ] 
                    true
                )
;            if a1 IN [S1, ] 
                false
            )
;        if a2 IN [Epoch!val!0, Epoch!val!1, Epoch!val!2, Epoch!val!3, ] 
            false
        )
    (ite (= a0 Model_93_ice)
        (ite (= a2 Epoch!val!2)
            (ite (= a3 Node!val!1)
                true
;            if a3 IN [Node!val!0, Node!val!2, ] 
                false
            )
;        if a2 IN [Epoch!val!0, Epoch!val!4, Epoch!val!1, Epoch!val!3, ] 
            false
        )
    (ite (= a0 Model_94_ice)
        (ite (= a2 Epoch!val!2)
            (ite (= a3 Node!val!1)
                true
;            if a3 IN [Node!val!0, Node!val!2, ] 
                false
            )
;        if a2 IN [Epoch!val!0, Epoch!val!4, Epoch!val!1, Epoch!val!3, ] 
            false
        )
    (ite (= a0 Model_95_ice)
        (ite (= a2 Epoch!val!5)
            (ite (= a3 Node!val!2)
                true
;            if a3 IN [Node!val!0, Node!val!1, ] 
                false
            )
;        if a2 IN [Epoch!val!2, Epoch!val!1, Epoch!val!0, Epoch!val!4, Epoch!val!3, ] 
            false
        )
    (ite (= a0 Model_97_ice)
        (ite (= a2 Epoch!val!4)
            (ite (= a3 Node!val!2)
                true
;            if a3 IN [Node!val!0, Node!val!1, ] 
                false
            )
        (ite (= a2 Epoch!val!2)
            (ite (= a3 Node!val!1)
                true
;            if a3 IN [Node!val!0, Node!val!2, ] 
                false
            )
;        if a2 IN [Epoch!val!0, Epoch!val!1, Epoch!val!3, ] 
            false
        ))
    (ite (= a0 Model_98_ice)
        (ite (= a2 Epoch!val!3)
            (ite (= a1 S2)
                (ite (= a3 Node!val!0)
                    false
;                if a3 IN [Node!val!1, ] 
                    true
                )
;            if a1 IN [S1, ] 
                false
            )
;        if a2 IN [Epoch!val!0, Epoch!val!4, Epoch!val!2, Epoch!val!1, ] 
            false
        )
    (ite (= a0 Model_99_ice)
        (ite (= a2 Epoch!val!2)
            (ite (= a3 Node!val!1)
                true
;            if a3 IN [Node!val!0, Node!val!2, ] 
                false
            )
;        if a2 IN [Epoch!val!0, Epoch!val!4, Epoch!val!1, Epoch!val!3, ] 
            false
        )
;    if a0 IN [Model_96_ice, Model_84_ice, Model_1_pos, Model_0_pos, Model_91_ice, Model_88_ice, Model_86_ice, Model_81_ice, ] 
        false
    )))))))))))))
)
)
(declare-fun transfer_dummy (ModelId StateId Epoch Node) Bool)
(define-fun transfer ((a0 ModelId) (a1 StateId) (a2 Epoch) (a3 Node)) Bool
    (ite (= a0 Model_DUMMYMODEL) (transfer_dummy a0 a1 a2 a3 )
    (ite (= a2 Epoch!val!0)
        (ite (= a0 Model_81_ice)
            (ite (= a1 S2)
                (ite (= a3 Node!val!0)
                    false
;                if a3 IN [Node!val!1, ] 
                    true
                )
;            if a1 IN [S1, ] 
                false
            )
        (ite (= a0 Model_96_ice)
            (ite (= a3 Node!val!2)
                (ite (= a1 S1)
                    false
;                if a1 IN [S2, ] 
                    true
                )
;            if a3 IN [Node!val!0, Node!val!1, ] 
                false
            )
        (ite (= a0 Model_83_ice)
            true
;        if a0 IN [Model_95_ice, Model_99_ice, Model_92_ice, Model_84_ice, Model_97_ice, Model_93_ice, Model_1_pos, Model_0_pos, Model_87_ice, Model_88_ice, Model_91_ice, Model_94_ice, Model_85_ice, Model_98_ice, Model_90_ice, Model_89_ice, Model_86_ice, Model_82_ice, ] 
            false
        )))
    (ite (= a2 Epoch!val!2)
        (ite (= a0 Model_86_ice)
            (ite (= a1 S2)
                (ite (= a3 Node!val!0)
                    false
;                if a3 IN [Node!val!1, ] 
                    true
                )
;            if a1 IN [S1, ] 
                false
            )
        (ite (= a0 Model_88_ice)
            (ite (= a1 S2)
                (ite (= a3 Node!val!0)
                    false
;                if a3 IN [Node!val!1, ] 
                    true
                )
;            if a1 IN [S1, ] 
                false
            )
        (ite (= a0 Model_89_ice)
            (ite (= a1 S2)
                (ite (= a3 Node!val!0)
                    false
;                if a3 IN [Node!val!1, ] 
                    true
                )
;            if a1 IN [S1, ] 
                false
            )
        (ite (= a0 Model_90_ice)
            (ite (= a1 S2)
                (ite (= a3 Node!val!0)
                    false
;                if a3 IN [Node!val!1, ] 
                    true
                )
;            if a1 IN [S1, ] 
                false
            )
        (ite (= a0 Model_93_ice)
            (ite (= a3 Node!val!1)
                true
;            if a3 IN [Node!val!0, Node!val!2, ] 
                false
            )
        (ite (= a0 Model_94_ice)
            (ite (= a3 Node!val!1)
                true
;            if a3 IN [Node!val!0, Node!val!2, ] 
                false
            )
        (ite (= a0 Model_95_ice)
            (ite (= a3 Node!val!2)
                (ite (= a1 S1)
                    false
;                if a1 IN [S2, ] 
                    true
                )
;            if a3 IN [Node!val!0, Node!val!1, ] 
                false
            )
        (ite (= a0 Model_97_ice)
            (ite (= a3 Node!val!1)
                true
;            if a3 IN [Node!val!0, Node!val!2, ] 
                false
            )
        (ite (= a0 Model_99_ice)
            (ite (= a3 Node!val!1)
                true
;            if a3 IN [Node!val!0, Node!val!2, ] 
                false
            )
        (ite (= a0 Model_87_ice)
            true
;        if a0 IN [Model_96_ice, Model_92_ice, Model_84_ice, Model_83_ice, Model_1_pos, Model_0_pos, Model_91_ice, Model_85_ice, Model_98_ice, Model_81_ice, Model_82_ice, ] 
            false
        ))))))))))
    (ite (= a2 Epoch!val!3)
        (ite (= a0 Model_83_ice)
            (ite (= a1 S1)
                false
;            if a1 IN [S2, ] 
                true
            )
        (ite (= a0 Model_84_ice)
            (ite (= a1 S2)
                (ite (= a3 Node!val!0)
                    false
;                if a3 IN [Node!val!1, ] 
                    true
                )
;            if a1 IN [S1, ] 
                false
            )
        (ite (= a0 Model_89_ice)
            (ite (= a3 Node!val!0)
                true
;            if a3 IN [Node!val!1, ] 
                false
            )
        (ite (= a0 Model_91_ice)
            (ite (= a1 S2)
                (ite (= a3 Node!val!0)
                    false
;                if a3 IN [Node!val!1, ] 
                    true
                )
;            if a1 IN [S1, ] 
                false
            )
        (ite (= a0 Model_93_ice)
            (ite (= a3 Node!val!2)
                (ite (= a1 S1)
                    false
;                if a1 IN [S2, ] 
                    true
                )
;            if a3 IN [Node!val!0, Node!val!1, ] 
                false
            )
        (ite (= a0 Model_97_ice)
            (ite (= a3 Node!val!2)
                (ite (= a1 S1)
                    false
;                if a1 IN [S2, ] 
                    true
                )
;            if a3 IN [Node!val!0, Node!val!1, ] 
                false
            )
        (ite (= a0 Model_98_ice)
            (ite (= a3 Node!val!0)
                false
;            if a3 IN [Node!val!1, ] 
                true
            )
        (ite (= a0 Model_99_ice)
            (ite (= a3 Node!val!2)
                (ite (= a1 S1)
                    false
;                if a1 IN [S2, ] 
                    true
                )
;            if a3 IN [Node!val!0, Node!val!1, ] 
                false
            )
        (ite (or (= a0 Model_87_ice) (= a0 Model_85_ice) (= a0 Model_82_ice) )
            true
;        if a0 IN [Model_95_ice, Model_96_ice, Model_92_ice, Model_88_ice, Model_94_ice, Model_90_ice, Model_86_ice, Model_81_ice, ] 
            false
        )))))))))
    (ite (= a2 Epoch!val!4)
        (ite (= a0 Model_90_ice)
            (ite (= a3 Node!val!0)
                false
;            if a3 IN [Node!val!1, ] 
                true
            )
        (ite (= a0 Model_92_ice)
            (ite (= a3 Node!val!0)
                false
;            if a3 IN [Node!val!1, ] 
                true
            )
        (ite (= a0 Model_94_ice)
            (ite (= a3 Node!val!2)
                (ite (= a1 S1)
                    false
;                if a1 IN [S2, ] 
                    true
                )
;            if a3 IN [Node!val!0, Node!val!1, ] 
                false
            )
        (ite (= a0 Model_97_ice)
            (ite (= a3 Node!val!2)
                true
;            if a3 IN [Node!val!0, Node!val!1, ] 
                false
            )
        (ite (= a0 Model_83_ice)
            true
;        if a0 IN [Model_95_ice, Model_96_ice, Model_93_ice, Model_88_ice, Model_85_ice, Model_98_ice, Model_99_ice, Model_89_ice, Model_86_ice, ] 
            false
        )))))
    (ite (= a2 Epoch!val!5)
        (ite (= a3 Node!val!2)
            true
;        if a3 IN [Node!val!0, Node!val!1, ] 
            false
        )
;    if a2 IN [Epoch!val!1, ] 
        false
    )))))
)
)
(declare-fun ep_dummy (ModelId StateId Node) Epoch)
(define-fun ep ((a0 ModelId) (a1 StateId) (a2 Node)) Epoch
    (ite (= a0 Model_DUMMYMODEL) (ep_dummy a0 a1 a2 )
    (ite (= a0 Model_1_pos)
        (ite (= a2 Node!val!0)
            Epoch!val!2
;        if a2 IN [Node!val!1, ] 
            Epoch!val!1
        )
    (ite (= a0 Model_82_ice)
        (ite (= a1 S1)
            Epoch!val!2
;        if a1 IN [S2, ] 
            Epoch!val!3
        )
    (ite (= a0 Model_84_ice)
        (ite (= a2 Node!val!0)
            Epoch!val!2
;        if a2 IN [Node!val!1, ] 
            Epoch!val!3
        )
    (ite (= a0 Model_85_ice)
        (ite (= a1 S1)
            Epoch!val!4
;        if a1 IN [S2, ] 
            Epoch!val!3
        )
    (ite (= a0 Model_86_ice)
        (ite (= a2 Node!val!0)
            Epoch!val!3
;        if a2 IN [Node!val!1, ] 
            Epoch!val!4
        )
    (ite (= a0 Model_87_ice)
        (ite (= a1 S1)
            Epoch!val!2
;        if a1 IN [S2, ] 
            Epoch!val!3
        )
    (ite (= a0 Model_88_ice)
        (ite (= a2 Node!val!0)
            Epoch!val!3
;        if a2 IN [Node!val!1, ] 
            Epoch!val!4
        )
    (ite (= a0 Model_89_ice)
        (ite (= a2 Node!val!0)
            Epoch!val!3
;        if a2 IN [Node!val!1, ] 
            Epoch!val!4
        )
    (ite (= a0 Model_90_ice)
        (ite (= a2 Node!val!0)
            Epoch!val!3
;        if a2 IN [Node!val!1, ] 
            Epoch!val!4
        )
    (ite (= a0 Model_91_ice)
        (ite (= a2 Node!val!0)
            Epoch!val!2
;        if a2 IN [Node!val!1, ] 
            Epoch!val!3
        )
    (ite (= a0 Model_92_ice)
        (ite (= a2 Node!val!1)
            (ite (= a1 S1)
                Epoch!val!0
;            if a1 IN [S2, ] 
                Epoch!val!4
            )
;        if a2 IN [Node!val!0, ] 
            Epoch!val!3
        )
    (ite (= a0 Model_93_ice)
        (ite (= a2 Node!val!0)
            Epoch!val!3
        (ite (= a2 Node!val!1)
            Epoch!val!2
;        if a2 IN [Node!val!2, ] 
            Epoch!val!4
        ))
    (ite (= a0 Model_94_ice)
        (ite (= a2 Node!val!0)
            Epoch!val!3
        (ite (= a2 Node!val!1)
            Epoch!val!2
;        if a2 IN [Node!val!2, ] 
            Epoch!val!4
        ))
    (ite (= a0 Model_95_ice)
        (ite (= a2 Node!val!0)
            Epoch!val!4
        (ite (= a2 Node!val!1)
            Epoch!val!3
;        if a2 IN [Node!val!2, ] 
            Epoch!val!5
        ))
    (ite (= a0 Model_96_ice)
        (ite (= a2 Node!val!1)
            Epoch!val!1
;        if a2 IN [Node!val!0, Node!val!2, ] 
            Epoch!val!4
        )
    (ite (= a0 Model_97_ice)
        (ite (= a2 Node!val!0)
            Epoch!val!3
        (ite (= a2 Node!val!1)
            Epoch!val!2
;        if a2 IN [Node!val!2, ] 
            Epoch!val!4
        ))
    (ite (= a0 Model_98_ice)
        (ite (= a2 Node!val!1)
            (ite (= a1 S1)
                Epoch!val!2
;            if a1 IN [S2, ] 
                Epoch!val!3
            )
;        if a2 IN [Node!val!0, ] 
            Epoch!val!4
        )
    (ite (= a0 Model_99_ice)
        (ite (= a2 Node!val!0)
            Epoch!val!3
        (ite (= a2 Node!val!1)
            Epoch!val!2
;        if a2 IN [Node!val!2, ] 
            Epoch!val!4
        ))
    (ite (= a0 Model_83_ice)
        Epoch!val!4
;    if a0 IN [Model_0_pos, Model_81_ice, ] 
        Epoch!val!1
    )))))))))))))))))))
)
)
(declare-fun le_dummy (ModelId Epoch Epoch) Bool)
(define-fun le ((a0 ModelId) (a1 Epoch) (a2 Epoch)) Bool
    (ite (= a0 Model_DUMMYMODEL) (le_dummy a0 a1 a2 )
    (ite (= a1 Epoch!val!0)
        (ite (= a2 Epoch!val!2)
            (ite (or (= a0 Model_97_ice) (= a0 Model_83_ice) (= a0 Model_87_ice) (= a0 Model_94_ice) (= a0 Model_90_ice) (= a0 Model_89_ice) )
                true
;            if a0 IN [Model_95_ice, Model_96_ice, Model_92_ice, Model_84_ice, Model_93_ice, Model_1_pos, Model_0_pos, Model_91_ice, Model_88_ice, Model_85_ice, Model_98_ice, Model_99_ice, Model_86_ice, Model_81_ice, Model_82_ice, ] 
                false
            )
        (ite (= a2 Epoch!val!1)
            (ite (or (= a0 Model_85_ice) (= a0 Model_92_ice) (= a0 Model_1_pos) (= a0 Model_90_ice) )
                true
;            if a0 IN [Model_95_ice, Model_96_ice, Model_97_ice, Model_84_ice, Model_83_ice, Model_93_ice, Model_0_pos, Model_87_ice, Model_88_ice, Model_91_ice, Model_94_ice, Model_98_ice, Model_99_ice, Model_89_ice, Model_86_ice, Model_81_ice, Model_82_ice, ] 
                false
            )
        (ite (= a2 Epoch!val!3)
            (ite (or (= a0 Model_92_ice) (= a0 Model_84_ice) (= a0 Model_83_ice) (= a0 Model_97_ice) (= a0 Model_87_ice) (= a0 Model_94_ice) (= a0 Model_90_ice) (= a0 Model_89_ice) (= a0 Model_82_ice) )
                true
;            if a0 IN [Model_95_ice, Model_96_ice, Model_93_ice, Model_91_ice, Model_88_ice, Model_85_ice, Model_98_ice, Model_99_ice, Model_86_ice, Model_81_ice, ] 
                false
            )
        (ite (= a2 Epoch!val!4)
            (ite (or (= a0 Model_92_ice) (= a0 Model_83_ice) (= a0 Model_94_ice) (= a0 Model_98_ice) (= a0 Model_90_ice) )
                true
;            if a0 IN [Model_95_ice, Model_96_ice, Model_97_ice, Model_93_ice, Model_88_ice, Model_85_ice, Model_99_ice, Model_89_ice, Model_86_ice, ] 
                false
            )
        (ite (= a2 Epoch!val!0)
            true
;        if a2 IN [Epoch!val!5, ] 
            false
        )))))
    (ite (= a1 Epoch!val!2)
        (ite (= a2 Epoch!val!0)
            (ite (or (= a0 Model_97_ice) (= a0 Model_83_ice) (= a0 Model_87_ice) (= a0 Model_94_ice) (= a0 Model_90_ice) (= a0 Model_89_ice) )
                false
;            if a0 IN [Model_95_ice, Model_96_ice, Model_92_ice, Model_84_ice, Model_93_ice, Model_1_pos, Model_0_pos, Model_91_ice, Model_88_ice, Model_85_ice, Model_98_ice, Model_99_ice, Model_86_ice, Model_81_ice, Model_82_ice, ] 
                true
            )
        (ite (= a2 Epoch!val!1)
            (ite (or (= a0 Model_96_ice) (= a0 Model_92_ice) (= a0 Model_1_pos) (= a0 Model_0_pos) (= a0 Model_85_ice) (= a0 Model_81_ice) )
                true
;            if a0 IN [Model_95_ice, Model_99_ice, Model_97_ice, Model_84_ice, Model_83_ice, Model_93_ice, Model_87_ice, Model_88_ice, Model_91_ice, Model_94_ice, Model_98_ice, Model_90_ice, Model_89_ice, Model_86_ice, Model_82_ice, ] 
                false
            )
        (ite (= a2 Epoch!val!3)
            (ite (or (= a0 Model_95_ice) (= a0 Model_96_ice) (= a0 Model_88_ice) (= a0 Model_90_ice) (= a0 Model_89_ice) (= a0 Model_86_ice) (= a0 Model_81_ice) )
                false
;            if a0 IN [Model_92_ice, Model_84_ice, Model_83_ice, Model_93_ice, Model_97_ice, Model_87_ice, Model_91_ice, Model_94_ice, Model_85_ice, Model_98_ice, Model_99_ice, Model_82_ice, ] 
                true
            )
        (ite (= a2 Epoch!val!4)
            (ite (or (= a0 Model_95_ice) (= a0 Model_97_ice) (= a0 Model_88_ice) (= a0 Model_99_ice) (= a0 Model_89_ice) )
                false
;            if a0 IN [Model_96_ice, Model_92_ice, Model_83_ice, Model_93_ice, Model_94_ice, Model_85_ice, Model_98_ice, Model_90_ice, Model_86_ice, ] 
                true
            )
;        if a2 IN [Epoch!val!5, Epoch!val!2, ] 
            true
        ))))
    (ite (= a1 Epoch!val!1)
        (ite (= a0 Model_0_pos)
            (ite (= a2 Epoch!val!2)
                false
;            if a2 IN [Epoch!val!0, Epoch!val!1, ] 
                true
            )
        (ite (= a0 Model_1_pos)
            (ite (= a2 Epoch!val!1)
                true
;            if a2 IN [Epoch!val!0, Epoch!val!2, ] 
                false
            )
        (ite (= a0 Model_81_ice)
            (ite (or (= a2 Epoch!val!2) (= a2 Epoch!val!3) )
                false
;            if a2 IN [Epoch!val!0, Epoch!val!1, ] 
                true
            )
        (ite (= a0 Model_85_ice)
            (ite (= a2 Epoch!val!1)
                true
;            if a2 IN [Epoch!val!0, Epoch!val!4, Epoch!val!2, Epoch!val!3, ] 
                false
            )
        (ite (= a0 Model_90_ice)
            (ite (= a2 Epoch!val!0)
                false
;            if a2 IN [Epoch!val!4, Epoch!val!1, Epoch!val!2, Epoch!val!3, ] 
                true
            )
        (ite (= a0 Model_92_ice)
            (ite (= a2 Epoch!val!1)
                true
;            if a2 IN [Epoch!val!0, Epoch!val!4, Epoch!val!2, Epoch!val!3, ] 
                false
            )
        (ite (= a0 Model_96_ice)
            (ite (or (= a2 Epoch!val!0) (= a2 Epoch!val!1) )
                true
;            if a2 IN [Epoch!val!4, Epoch!val!2, Epoch!val!3, ] 
                false
            )
;        if a0 IN [Model_95_ice, Model_97_ice, Model_84_ice, Model_83_ice, Model_93_ice, Model_87_ice, Model_88_ice, Model_91_ice, Model_94_ice, Model_98_ice, Model_99_ice, Model_89_ice, Model_86_ice, Model_82_ice, ] 
            true
        )))))))
    (ite (= a1 Epoch!val!3)
        (ite (= a2 Epoch!val!0)
            (ite (or (= a0 Model_92_ice) (= a0 Model_84_ice) (= a0 Model_83_ice) (= a0 Model_97_ice) (= a0 Model_87_ice) (= a0 Model_94_ice) (= a0 Model_90_ice) (= a0 Model_89_ice) (= a0 Model_82_ice) )
                false
;            if a0 IN [Model_95_ice, Model_96_ice, Model_93_ice, Model_91_ice, Model_88_ice, Model_85_ice, Model_98_ice, Model_99_ice, Model_86_ice, Model_81_ice, ] 
                true
            )
        (ite (= a2 Epoch!val!2)
            (ite (or (= a0 Model_95_ice) (= a0 Model_96_ice) (= a0 Model_88_ice) (= a0 Model_90_ice) (= a0 Model_89_ice) (= a0 Model_86_ice) (= a0 Model_81_ice) )
                true
;            if a0 IN [Model_92_ice, Model_84_ice, Model_83_ice, Model_93_ice, Model_97_ice, Model_87_ice, Model_91_ice, Model_94_ice, Model_85_ice, Model_98_ice, Model_99_ice, Model_82_ice, ] 
                false
            )
        (ite (= a2 Epoch!val!1)
            (ite (or (= a0 Model_96_ice) (= a0 Model_92_ice) (= a0 Model_85_ice) (= a0 Model_81_ice) )
                true
;            if a0 IN [Model_95_ice, Model_99_ice, Model_97_ice, Model_84_ice, Model_83_ice, Model_93_ice, Model_87_ice, Model_88_ice, Model_91_ice, Model_94_ice, Model_98_ice, Model_90_ice, Model_89_ice, Model_86_ice, Model_82_ice, ] 
                false
            )
        (ite (= a2 Epoch!val!4)
            (ite (or (= a0 Model_96_ice) (= a0 Model_93_ice) (= a0 Model_94_ice) (= a0 Model_98_ice) (= a0 Model_90_ice) (= a0 Model_86_ice) )
                true
;            if a0 IN [Model_95_ice, Model_92_ice, Model_97_ice, Model_83_ice, Model_88_ice, Model_85_ice, Model_99_ice, Model_89_ice, ] 
                false
            )
;        if a2 IN [Epoch!val!5, Epoch!val!3, ] 
            true
        ))))
    (ite (= a1 Epoch!val!4)
        (ite (= a2 Epoch!val!3)
            (ite (or (= a0 Model_96_ice) (= a0 Model_93_ice) (= a0 Model_94_ice) (= a0 Model_98_ice) (= a0 Model_90_ice) (= a0 Model_86_ice) )
                false
;            if a0 IN [Model_95_ice, Model_92_ice, Model_97_ice, Model_83_ice, Model_88_ice, Model_85_ice, Model_99_ice, Model_89_ice, ] 
                true
            )
        (ite (= a2 Epoch!val!0)
            (ite (or (= a0 Model_92_ice) (= a0 Model_83_ice) (= a0 Model_94_ice) (= a0 Model_98_ice) (= a0 Model_90_ice) )
                false
;            if a0 IN [Model_95_ice, Model_96_ice, Model_97_ice, Model_93_ice, Model_88_ice, Model_85_ice, Model_99_ice, Model_89_ice, Model_86_ice, ] 
                true
            )
        (ite (= a2 Epoch!val!2)
            (ite (or (= a0 Model_95_ice) (= a0 Model_97_ice) (= a0 Model_88_ice) (= a0 Model_99_ice) (= a0 Model_89_ice) )
                true
;            if a0 IN [Model_96_ice, Model_92_ice, Model_83_ice, Model_93_ice, Model_94_ice, Model_85_ice, Model_98_ice, Model_90_ice, Model_86_ice, ] 
                false
            )
        (ite (= a2 Epoch!val!1)
            (ite (or (= a0 Model_96_ice) (= a0 Model_92_ice) (= a0 Model_85_ice) )
                true
;            if a0 IN [Model_95_ice, Model_99_ice, Model_97_ice, Model_83_ice, Model_93_ice, Model_88_ice, Model_94_ice, Model_98_ice, Model_90_ice, Model_89_ice, Model_86_ice, ] 
                false
            )
;        if a2 IN [Epoch!val!4, Epoch!val!5, ] 
            true
        ))))
;    if a1 IN [Epoch!val!5, ] 
        (ite (or (= a2 Epoch!val!0) (= a2 Epoch!val!5) )
            true
;        if a2 IN [Epoch!val!4, Epoch!val!1, Epoch!val!2, Epoch!val!3, ] 
            false
        )
    )))))
)
)
(declare-fun zero_dummy (ModelId) Epoch)
(define-fun zero ((a0 ModelId)) Epoch
    (ite (= a0 Model_DUMMYMODEL) (zero_dummy a0 )
    (ite (= a0 Model_90_ice)
        Epoch!val!0
    (ite (or (= a0 Model_96_ice) (= a0 Model_81_ice) )
        Epoch!val!3
    (ite (or (= a0 Model_85_ice) (= a0 Model_1_pos) (= a0 Model_92_ice) (= a0 Model_0_pos) )
        Epoch!val!2
;    if a0 IN [Model_95_ice, Model_97_ice, Model_84_ice, Model_83_ice, Model_93_ice, Model_87_ice, Model_88_ice, Model_91_ice, Model_94_ice, Model_98_ice, Model_99_ice, Model_89_ice, Model_86_ice, Model_82_ice, ] 
        Epoch!val!1
    )))
)
)
(declare-fun one_dummy (ModelId) Epoch)
(define-fun one ((a0 ModelId)) Epoch
    (ite (= a0 Model_DUMMYMODEL) (one_dummy a0 )
    (ite (or (= a0 Model_96_ice) (= a0 Model_81_ice) (= a0 Model_83_ice) )
        Epoch!val!2
    (ite (or (= a0 Model_92_ice) (= a0 Model_1_pos) (= a0 Model_0_pos) (= a0 Model_85_ice) (= a0 Model_90_ice) )
        Epoch!val!1
;    if a0 IN [Model_95_ice, Model_97_ice, Model_84_ice, Model_93_ice, Model_87_ice, Model_88_ice, Model_91_ice, Model_94_ice, Model_98_ice, Model_99_ice, Model_89_ice, Model_86_ice, Model_82_ice, ] 
        Epoch!val!0
    ))
)
)
(declare-fun first_dummy (ModelId) Node)
(define-fun first ((a0 ModelId)) Node
    (ite (= a0 Model_DUMMYMODEL) (first_dummy a0 )
    (ite (= a0 Model_1_pos)
        Node!val!1
;    if a0 IN [Model_83_ice, Model_87_ice, Model_94_ice, Model_85_ice, Model_98_ice, Model_90_ice, Model_86_ice, Model_82_ice, Model_95_ice, Model_96_ice, Model_97_ice, Model_84_ice, Model_0_pos, Model_88_ice, Model_92_ice, Model_93_ice, Model_89_ice, Model_91_ice, Model_99_ice, Model_81_ice, ] 
        Node!val!0
    )
)
)


;Declaring boolean variables to encode grammar
(declare-const inv_b0 Bool)
(declare-const inv_b1 Bool)
(declare-const inv_b2 Bool)
(declare-const inv_b3 Bool)
(declare-const inv_b4 Bool)
(declare-const inv_b5 Bool)
(declare-const inv_b6 Bool)
(declare-const inv_b7 Bool)
(declare-const inv_b8 Bool)
(declare-const inv_b9 Bool)
(declare-const inv_b10 Bool)
(declare-const inv_b11 Bool)
(declare-const inv_b12 Bool)
(declare-const inv_b13 Bool)
(declare-const inv_b14 Bool)
(declare-const inv_b15 Bool)
(declare-const inv_b16 Bool)
(declare-const inv_b17 Bool)
(declare-const inv_b18 Bool)
(declare-const inv_b19 Bool)
(declare-const inv_b20 Bool)
(declare-const inv_b21 Bool)
(declare-const inv_b22 Bool)
(declare-const inv_b23 Bool)
(declare-const inv_b24 Bool)
(declare-const inv_b25 Bool)
(declare-const inv_b26 Bool)
(declare-const inv_b27 Bool)
(declare-const inv_b28 Bool)
(declare-const inv_b29 Bool)
(declare-const inv_b30 Bool)
(declare-const inv_b31 Bool)
(declare-const inv_b32 Bool)
(declare-const inv_b33 Bool)
(declare-const inv_b34 Bool)
(declare-const inv_b35 Bool)
(declare-const inv_b36 Bool)
(declare-const inv_b37 Bool)
(declare-const inv_b38 Bool)
(declare-const inv_b39 Bool)
(declare-const inv_b40 Bool)
(declare-const inv_b41 Bool)
(declare-const inv_b42 Bool)
(declare-const inv_b43 Bool)
(declare-const inv_b44 Bool)
(declare-const inv_b45 Bool)
(declare-const inv_b46 Bool)
(declare-const inv_b47 Bool)
(declare-const inv_b48 Bool)
(declare-const inv_b49 Bool)
(declare-const inv_b50 Bool)
(declare-const inv_b51 Bool)
(declare-const inv_b52 Bool)
(declare-const inv_b53 Bool)
(declare-const inv_b54 Bool)
(declare-const inv_b55 Bool)
(declare-const inv_b56 Bool)
(declare-const inv_b57 Bool)
(declare-const inv_b58 Bool)
(declare-const inv_b59 Bool)
(declare-const inv_b60 Bool)
(declare-const inv_b61 Bool)
(declare-const inv_b62 Bool)
(declare-const inv_b63 Bool)
(declare-const inv_b64 Bool)
(declare-const inv_b65 Bool)
(declare-const inv_b66 Bool)
(declare-const inv_b67 Bool)
(declare-const inv_b68 Bool)
(declare-const inv_b69 Bool)
(declare-const inv_b70 Bool)
(declare-const inv_b71 Bool)
(declare-const inv_b72 Bool)
(declare-const inv_b73 Bool)
(declare-const inv_b74 Bool)
(declare-const inv_b75 Bool)
(declare-const inv_b76 Bool)
(declare-const inv_b77 Bool)
(declare-const inv_b78 Bool)
(declare-const inv_b79 Bool)
(declare-const inv_b80 Bool)
(declare-const inv_b81 Bool)
(declare-const inv_b82 Bool)
(declare-const inv_b83 Bool)
(declare-const inv_b84 Bool)
(declare-const inv_b85 Bool)
(declare-const inv_b86 Bool)
(declare-const inv_b87 Bool)
(declare-const inv_b88 Bool)
(declare-const inv_b89 Bool)
(declare-const inv_b90 Bool)
(declare-const inv_b91 Bool)
(declare-const inv_b92 Bool)
(declare-const inv_b93 Bool)
(declare-const inv_b94 Bool)
(declare-const inv_b95 Bool)
(declare-const inv_b96 Bool)
(declare-const inv_b97 Bool)
(declare-const inv_b98 Bool)
(declare-const inv_b99 Bool)
(declare-const inv_b100 Bool)
(declare-const inv_b101 Bool)
(declare-const inv_b102 Bool)
(declare-const inv_b103 Bool)
(declare-const inv_b104 Bool)
(declare-const inv_b105 Bool)
(declare-const inv_b106 Bool)
(declare-const inv_b107 Bool)
(declare-const inv_b108 Bool)
(declare-const inv_b109 Bool)
(declare-const inv_b110 Bool)
(declare-const inv_b111 Bool)
(declare-const inv_b112 Bool)
(declare-const inv_b113 Bool)
(declare-const inv_b114 Bool)
(declare-const inv_b115 Bool)
(declare-const inv_b116 Bool)
(declare-const inv_b117 Bool)
(declare-const inv_b118 Bool)
(declare-const inv_b119 Bool)
(declare-const inv_b120 Bool)
(declare-const inv_b121 Bool)
(declare-const inv_b122 Bool)
(declare-const inv_b123 Bool)
(declare-const inv_b124 Bool)
(declare-const inv_b125 Bool)
(declare-const inv_b126 Bool)
(declare-const inv_b127 Bool)
(declare-const inv_b128 Bool)
(declare-const inv_b129 Bool)
(declare-const inv_b130 Bool)
(declare-const inv_b131 Bool)
(declare-const inv_b132 Bool)
(declare-const inv_b133 Bool)
(declare-const inv_b134 Bool)
(declare-const inv_b135 Bool)
(declare-const inv_b136 Bool)
(declare-const inv_b137 Bool)
(declare-const inv_b138 Bool)
(declare-const inv_b139 Bool)
(declare-const inv_b140 Bool)
(declare-const inv_b141 Bool)
(declare-const inv_b142 Bool)
(declare-const inv_b143 Bool)
(declare-const inv_b144 Bool)
(declare-const inv_b145 Bool)
(declare-const inv_b146 Bool)
(declare-const inv_b147 Bool)
(declare-const inv_b148 Bool)
(declare-const inv_b149 Bool)
(declare-const inv_b150 Bool)
(declare-const inv_b151 Bool)
(declare-const inv_b152 Bool)
(declare-const inv_b153 Bool)
(declare-const inv_b154 Bool)
(declare-const inv_b155 Bool)
(declare-const inv_b156 Bool)
(declare-const inv_b157 Bool)
(declare-const inv_b158 Bool)
(declare-const inv_b159 Bool)
(declare-const inv_b160 Bool)
(declare-const inv_b161 Bool)
(declare-const inv_b162 Bool)
(declare-const inv_b163 Bool)
(declare-const inv_b164 Bool)
(declare-const inv_b165 Bool)
(declare-const inv_b166 Bool)
(declare-const inv_b167 Bool)
(declare-const inv_b168 Bool)
(declare-const inv_b169 Bool)
(declare-const inv_b170 Bool)
(declare-const inv_b171 Bool)
(declare-const inv_b172 Bool)
(declare-const inv_b173 Bool)
(declare-const inv_b174 Bool)
(declare-const inv_b175 Bool)
(declare-const inv_b176 Bool)
(declare-const inv_b177 Bool)
(declare-const inv_b178 Bool)
(declare-const inv_b179 Bool)
(declare-const inv_b180 Bool)
(declare-const inv_b181 Bool)
(declare-const inv_b182 Bool)
(declare-const inv_b183 Bool)
(declare-const inv_b184 Bool)
(declare-const inv_b185 Bool)
(declare-const inv_b186 Bool)
(declare-const inv_b187 Bool)
(declare-const inv_b188 Bool)
(declare-const inv_b189 Bool)
(declare-const inv_b190 Bool)
(declare-const inv_b191 Bool)
(declare-const inv_b192 Bool)
(declare-const inv_b193 Bool)
(declare-const inv_b194 Bool)
(declare-const inv_b195 Bool)
(declare-const inv_b196 Bool)
(declare-const inv_b197 Bool)
(declare-const inv_b198 Bool)
(declare-const inv_b199 Bool)
(declare-const inv_b200 Bool)
(declare-const inv_b201 Bool)
(declare-const inv_b202 Bool)
(declare-const inv_b203 Bool)
(declare-const inv_b204 Bool)
(declare-const inv_b205 Bool)
(declare-const inv_b206 Bool)
(declare-const inv_b207 Bool)
(declare-const inv_b208 Bool)
(declare-const inv_b209 Bool)
(declare-const inv_b210 Bool)
(declare-const inv_b211 Bool)
(declare-const inv_b212 Bool)
(declare-const inv_b213 Bool)
(declare-const inv_b214 Bool)
(declare-const inv_b215 Bool)
(declare-const inv_b216 Bool)
(declare-const inv_b217 Bool)
(declare-const inv_b218 Bool)
(declare-const inv_b219 Bool)
(declare-const inv_b220 Bool)
(declare-const inv_b221 Bool)
(declare-const inv_b222 Bool)
(declare-const inv_b223 Bool)
(declare-const inv_b224 Bool)
(declare-const inv_b225 Bool)
(declare-const inv_b226 Bool)
(declare-const inv_b227 Bool)
(declare-const inv_b228 Bool)
(declare-const inv_b229 Bool)
(declare-const inv_b230 Bool)
(declare-const inv_b231 Bool)
(declare-const inv_b232 Bool)
(declare-const inv_b233 Bool)
(declare-const inv_b234 Bool)
(declare-const inv_b235 Bool)
(declare-const inv_b236 Bool)
(declare-const inv_b237 Bool)
(declare-const inv_b238 Bool)
(declare-const inv_b239 Bool)
(declare-const inv_b240 Bool)
(declare-const inv_b241 Bool)
(declare-const inv_b242 Bool)
(declare-const inv_b243 Bool)
(declare-const inv_b244 Bool)
(declare-const inv_b245 Bool)
(declare-const inv_b246 Bool)
(declare-const inv_b247 Bool)
(declare-const inv_b248 Bool)
(declare-const inv_b249 Bool)
(declare-const inv_b250 Bool)
(declare-const inv_b251 Bool)
(declare-const inv_b252 Bool)
(declare-const inv_b253 Bool)
(declare-const inv_b254 Bool)
(declare-const inv_b255 Bool)
(declare-const inv_b256 Bool)
(declare-const inv_b257 Bool)
(declare-const inv_b258 Bool)
(declare-const inv_b259 Bool)
(declare-const inv_b260 Bool)
(declare-const inv_b261 Bool)
(declare-const inv_b262 Bool)
(declare-const inv_b263 Bool)
(declare-const inv_b264 Bool)
(declare-const inv_b265 Bool)
(declare-const inv_b266 Bool)
(declare-const inv_b267 Bool)
(declare-const inv_b268 Bool)
(declare-const inv_b269 Bool)
(declare-const inv_b270 Bool)
(declare-const inv_b271 Bool)
(declare-const inv_b272 Bool)
(declare-const inv_b273 Bool)
(declare-const inv_b274 Bool)
(declare-const inv_b275 Bool)
(declare-const inv_b276 Bool)
(declare-const inv_b277 Bool)
(declare-const inv_b278 Bool)
(declare-const inv_b279 Bool)
(declare-const inv_b280 Bool)
(declare-const inv_b281 Bool)
(declare-const inv_b282 Bool)
(declare-const inv_b283 Bool)
(declare-const inv_b284 Bool)
(declare-const inv_b285 Bool)
(declare-const inv_b286 Bool)
(declare-const inv_b287 Bool)
(declare-const inv_b288 Bool)
(declare-const inv_b289 Bool)
(declare-const inv_b290 Bool)
(declare-const inv_b291 Bool)
(declare-const inv_b292 Bool)
(declare-const inv_b293 Bool)
(declare-const inv_b294 Bool)
(declare-const inv_b295 Bool)
(declare-const inv_b296 Bool)
(declare-const inv_b297 Bool)
(declare-const inv_b298 Bool)
(declare-const inv_b299 Bool)
(declare-const inv_b300 Bool)
(declare-const inv_b301 Bool)
(declare-const inv_b302 Bool)
(declare-const inv_b303 Bool)
(declare-const inv_b304 Bool)
(declare-const inv_b305 Bool)
(declare-const inv_b306 Bool)
(declare-const inv_b307 Bool)
(declare-const inv_b308 Bool)
(declare-const inv_b309 Bool)
(declare-const inv_b310 Bool)
(declare-const inv_b311 Bool)
(declare-const inv_b312 Bool)
(declare-const inv_b313 Bool)
(declare-const inv_b314 Bool)
(declare-const inv_b315 Bool)
(declare-const inv_b316 Bool)
(declare-const inv_b317 Bool)
(declare-const inv_b318 Bool)
(declare-const inv_b319 Bool)
(declare-const inv_b320 Bool)
(declare-const inv_b321 Bool)
(declare-const inv_b322 Bool)
(declare-const inv_b323 Bool)
(declare-const inv_b324 Bool)
(declare-const inv_b325 Bool)
(declare-const inv_b326 Bool)
(declare-const inv_b327 Bool)
(declare-const inv_b328 Bool)
(declare-const inv_b329 Bool)
(declare-const inv_b330 Bool)
(declare-const inv_b331 Bool)
(declare-const inv_b332 Bool)
(declare-const inv_b333 Bool)
(declare-const inv_b334 Bool)
(declare-const inv_b335 Bool)
(declare-const inv_b336 Bool)
(declare-const inv_b337 Bool)
(declare-const inv_b338 Bool)
(declare-const inv_b339 Bool)
(declare-const inv_b340 Bool)
(declare-const inv_b341 Bool)
(declare-const inv_b342 Bool)
(declare-const inv_b343 Bool)
(declare-const inv_b344 Bool)
(declare-const inv_b345 Bool)
(declare-const inv_b346 Bool)
(declare-const inv_b347 Bool)
(declare-const inv_b348 Bool)
(declare-const inv_b349 Bool)
(declare-const inv_b350 Bool)
(declare-const inv_b351 Bool)
(declare-const inv_b352 Bool)
(declare-const inv_b353 Bool)
(declare-const inv_b354 Bool)
(declare-const inv_b355 Bool)
(declare-const inv_b356 Bool)
(declare-const inv_b357 Bool)
(declare-const inv_b358 Bool)
(declare-const inv_b359 Bool)
(declare-const inv_b360 Bool)
(declare-const inv_b361 Bool)
(declare-const inv_b362 Bool)
(declare-const inv_b363 Bool)
(declare-const inv_b364 Bool)
(declare-const inv_b365 Bool)
(declare-const inv_b366 Bool)
(declare-const inv_b367 Bool)
(declare-const inv_b368 Bool)
(declare-const inv_b369 Bool)
(declare-const inv_b370 Bool)
(declare-const inv_b371 Bool)
(declare-const inv_b372 Bool)
(declare-const inv_b373 Bool)
(declare-const inv_b374 Bool)
(declare-const inv_b375 Bool)
(declare-const inv_b376 Bool)
(declare-const inv_b377 Bool)
(declare-const inv_b378 Bool)
(declare-const inv_b379 Bool)
(declare-const inv_b380 Bool)
(declare-const inv_b381 Bool)
(declare-const inv_b382 Bool)
(declare-const inv_b383 Bool)
(declare-const inv_b384 Bool)
(declare-const inv_b385 Bool)
(declare-const inv_b386 Bool)
(declare-const inv_b387 Bool)
(declare-const inv_b388 Bool)
(declare-const inv_b389 Bool)
(declare-const inv_b390 Bool)
(declare-const inv_b391 Bool)
(declare-const inv_b392 Bool)
(declare-const inv_b393 Bool)
(declare-const inv_b394 Bool)
(declare-const inv_b395 Bool)
(declare-const inv_b396 Bool)
(declare-const inv_b397 Bool)
(declare-const inv_b398 Bool)
(declare-const inv_b399 Bool)
(declare-const inv_b400 Bool)
(declare-const inv_b401 Bool)
(declare-const inv_b402 Bool)
(declare-const inv_b403 Bool)
(declare-const inv_b404 Bool)
(declare-const inv_b405 Bool)
(declare-const inv_b406 Bool)
(declare-const inv_b407 Bool)
(declare-const inv_b408 Bool)
(declare-const inv_b409 Bool)
(declare-const inv_b410 Bool)
(declare-const inv_b411 Bool)
(declare-const inv_b412 Bool)
(declare-const inv_b413 Bool)
(declare-const inv_b414 Bool)
(declare-const inv_b415 Bool)
(declare-const inv_b416 Bool)
(declare-const inv_b417 Bool)
(declare-const inv_b418 Bool)
(declare-const inv_b419 Bool)
(declare-const inv_b420 Bool)
(declare-const inv_b421 Bool)
(declare-const inv_b422 Bool)
(declare-const inv_b423 Bool)
(declare-const inv_b424 Bool)
(declare-const inv_b425 Bool)
(declare-const inv_b426 Bool)
(declare-const inv_b427 Bool)
(declare-const inv_b428 Bool)
(declare-const inv_b429 Bool)
(declare-const inv_b430 Bool)
(declare-const inv_b431 Bool)
(declare-const inv_b432 Bool)
(declare-const inv_b433 Bool)
(declare-const inv_b434 Bool)
(declare-const inv_b435 Bool)
(declare-const inv_b436 Bool)
(declare-const inv_b437 Bool)
(declare-const inv_b438 Bool)
(declare-const inv_b439 Bool)
(declare-const inv_b440 Bool)
(declare-const inv_b441 Bool)
(declare-const inv_b442 Bool)
(declare-const inv_b443 Bool)
(declare-const inv_b444 Bool)
(declare-const inv_b445 Bool)
(declare-const inv_b446 Bool)
(declare-const inv_b447 Bool)
(declare-const inv_b448 Bool)
(declare-const inv_b449 Bool)
(declare-const inv_b450 Bool)
(declare-const inv_b451 Bool)
(declare-const inv_b452 Bool)
(declare-const inv_b453 Bool)
(declare-const inv_b454 Bool)
(declare-const inv_b455 Bool)
(declare-const inv_b456 Bool)
(declare-const inv_b457 Bool)
(declare-const inv_b458 Bool)
(declare-const inv_b459 Bool)
(declare-const inv_b460 Bool)
(declare-const inv_b461 Bool)
(declare-const inv_b462 Bool)
(declare-const inv_b463 Bool)
(declare-const inv_b464 Bool)
(declare-const inv_b465 Bool)
(declare-const inv_b466 Bool)
(declare-const inv_b467 Bool)
(declare-const inv_b468 Bool)
(declare-const inv_b469 Bool)
(declare-const inv_b470 Bool)
(declare-const inv_b471 Bool)
(declare-const inv_b472 Bool)
(declare-const inv_b473 Bool)
(declare-const inv_b474 Bool)
(declare-const inv_b475 Bool)
(declare-const inv_b476 Bool)
(declare-const inv_b477 Bool)
(declare-const inv_b478 Bool)
(declare-const inv_b479 Bool)
(declare-const inv_b480 Bool)
(declare-const inv_b481 Bool)
(declare-const inv_b482 Bool)
(declare-const inv_b483 Bool)
(declare-const inv_b484 Bool)
(declare-const inv_b485 Bool)
(declare-const inv_b486 Bool)
(declare-const inv_b487 Bool)
(declare-const inv_b488 Bool)
(declare-const inv_b489 Bool)
(declare-const inv_b490 Bool)
(declare-const inv_b491 Bool)
(declare-const inv_b492 Bool)
(declare-const inv_b493 Bool)
(declare-const inv_b494 Bool)
(declare-const inv_b495 Bool)
(declare-const inv_b496 Bool)
(declare-const inv_b497 Bool)
(declare-const inv_b498 Bool)
(declare-const inv_b499 Bool)
(declare-const inv_b500 Bool)
(declare-const inv_b501 Bool)
(declare-const inv_b502 Bool)
(declare-const inv_b503 Bool)
(declare-const inv_b504 Bool)
(declare-const inv_b505 Bool)
(declare-const inv_b506 Bool)
(declare-const inv_b507 Bool)
(declare-const inv_b508 Bool)
(declare-const inv_b509 Bool)
(declare-const inv_b510 Bool)
(declare-const inv_b511 Bool)
(declare-const inv_b512 Bool)
(declare-const inv_b513 Bool)
(declare-const inv_b514 Bool)
(declare-const inv_b515 Bool)
(declare-const inv_b516 Bool)
(declare-const inv_b517 Bool)
(declare-const inv_b518 Bool)
(declare-const inv_b519 Bool)
(declare-const inv_b520 Bool)
(declare-const inv_b521 Bool)
(declare-const inv_b522 Bool)
(declare-const inv_b523 Bool)
(declare-const inv_b524 Bool)
(declare-const inv_b525 Bool)
(declare-const inv_b526 Bool)
(declare-const inv_b527 Bool)
(declare-const inv_b528 Bool)
(declare-const inv_b529 Bool)
(declare-const inv_b530 Bool)
(declare-const inv_b531 Bool)
(declare-const inv_b532 Bool)
(declare-const inv_b533 Bool)
(declare-const inv_b534 Bool)
(declare-const inv_b535 Bool)
(declare-const inv_b536 Bool)
(declare-const inv_b537 Bool)
(declare-const inv_b538 Bool)
(declare-const inv_b539 Bool)
(declare-const inv_b540 Bool)
(declare-const inv_b541 Bool)
(declare-const inv_b542 Bool)
(declare-const inv_b543 Bool)
(declare-const inv_b544 Bool)
(declare-const inv_b545 Bool)
(declare-const inv_b546 Bool)
(declare-const inv_b547 Bool)
(declare-const inv_b548 Bool)
(declare-const inv_b549 Bool)
(declare-const inv_b550 Bool)
(declare-const inv_b551 Bool)
(declare-const inv_b552 Bool)
(declare-const inv_b553 Bool)
(declare-const inv_b554 Bool)
(declare-const inv_b555 Bool)
(declare-const inv_b556 Bool)
(declare-const inv_b557 Bool)
(declare-const inv_b558 Bool)
(declare-const inv_b559 Bool)
(declare-const inv_b560 Bool)
(declare-const inv_b561 Bool)
(declare-const inv_b562 Bool)
(declare-const inv_b563 Bool)
(declare-const inv_b564 Bool)
(declare-const inv_b565 Bool)
(declare-const inv_b566 Bool)
(declare-const inv_b567 Bool)
(declare-const inv_b568 Bool)
(declare-const inv_b569 Bool)
(declare-const inv_b570 Bool)
(declare-const inv_b571 Bool)
(declare-const inv_b572 Bool)
(declare-const inv_b573 Bool)
(declare-const inv_b574 Bool)
(declare-const inv_b575 Bool)
(declare-const inv_b576 Bool)
(declare-const inv_b577 Bool)
(declare-const inv_b578 Bool)
(declare-const inv_b579 Bool)
(declare-const inv_b580 Bool)
(declare-const inv_b581 Bool)
(declare-const inv_b582 Bool)
(declare-const inv_b583 Bool)
(declare-const inv_b584 Bool)
(declare-const inv_b585 Bool)
(declare-const inv_b586 Bool)
(declare-const inv_b587 Bool)
(declare-const inv_b588 Bool)
(declare-const inv_b589 Bool)
(declare-const inv_b590 Bool)
(declare-const inv_b591 Bool)
(declare-const inv_b592 Bool)
(declare-const inv_b593 Bool)
(declare-const inv_b594 Bool)
(declare-const inv_b595 Bool)
(declare-const inv_b596 Bool)
(declare-const inv_b597 Bool)
(declare-const inv_b598 Bool)
(declare-const inv_b599 Bool)
(declare-const inv_b600 Bool)
(declare-const inv_b601 Bool)
(declare-const inv_b602 Bool)
(declare-const inv_b603 Bool)
(declare-const inv_b604 Bool)
(declare-const inv_b605 Bool)
(declare-const inv_b606 Bool)
(declare-const inv_b607 Bool)
(declare-const inv_b608 Bool)
(declare-const inv_b609 Bool)
(declare-const inv_b610 Bool)
(declare-const inv_b611 Bool)
(declare-const inv_b612 Bool)
(declare-const inv_b613 Bool)
(declare-const inv_b614 Bool)
(declare-const inv_b615 Bool)
(declare-const inv_b616 Bool)
(declare-const inv_b617 Bool)
(declare-const inv_b618 Bool)
(declare-const inv_b619 Bool)
(declare-const inv_b620 Bool)
(declare-const inv_b621 Bool)
(declare-const inv_b622 Bool)
(declare-const inv_b623 Bool)
(declare-const inv_b624 Bool)
(declare-const inv_b625 Bool)
(declare-const inv_b626 Bool)
(declare-const inv_b627 Bool)
(declare-const inv_b628 Bool)
(declare-const inv_b629 Bool)
(declare-const inv_b630 Bool)
(declare-const inv_b631 Bool)
(declare-const inv_b632 Bool)
(declare-const inv_b633 Bool)
(declare-const inv_b634 Bool)
(declare-const inv_b635 Bool)
(declare-const inv_b636 Bool)
(declare-const inv_b637 Bool)
(declare-const inv_b638 Bool)
(declare-const inv_b639 Bool)
(declare-const inv_b640 Bool)
(declare-const inv_b641 Bool)
(declare-const inv_b642 Bool)
(declare-const inv_b643 Bool)
(declare-const inv_b644 Bool)
(declare-const inv_b645 Bool)
(declare-const inv_b646 Bool)
(declare-const inv_b647 Bool)
(declare-const inv_b648 Bool)
(declare-const inv_b649 Bool)
(declare-const inv_b650 Bool)
(declare-const inv_b651 Bool)
(declare-const inv_b652 Bool)
(declare-const inv_b653 Bool)
(declare-const inv_b654 Bool)
(declare-const inv_b655 Bool)
(declare-const inv_b656 Bool)
(declare-const inv_b657 Bool)
(declare-const inv_b658 Bool)
(declare-const inv_b659 Bool)
(declare-const inv_b660 Bool)
(declare-const inv_b661 Bool)
(declare-const inv_b662 Bool)
(declare-const inv_b663 Bool)
(declare-const inv_b664 Bool)
(declare-const inv_b665 Bool)
(declare-const inv_b666 Bool)
(declare-const inv_b667 Bool)
(declare-const inv_b668 Bool)
(declare-const inv_b669 Bool)
(declare-const inv_b670 Bool)
(declare-const inv_b671 Bool)
(declare-const inv_b672 Bool)
(declare-const inv_b673 Bool)
(declare-const inv_b674 Bool)
(declare-const inv_b675 Bool)
(declare-const inv_b676 Bool)
(declare-const inv_b677 Bool)
(declare-const inv_b678 Bool)
(declare-const inv_b679 Bool)
(declare-const inv_b680 Bool)
(declare-const inv_b681 Bool)
(declare-const inv_b682 Bool)
(declare-const inv_b683 Bool)
(declare-const inv_b684 Bool)
(declare-const inv_b685 Bool)
(declare-const inv_b686 Bool)
(declare-const inv_b687 Bool)
(declare-const inv_b688 Bool)
(declare-const inv_b689 Bool)
(declare-const inv_b690 Bool)
(declare-const inv_b691 Bool)
(declare-const inv_b692 Bool)
(declare-const inv_b693 Bool)
(declare-const inv_b694 Bool)
(declare-const inv_b695 Bool)
(declare-const inv_b696 Bool)
(declare-const inv_b697 Bool)
(declare-const inv_b698 Bool)
(declare-const inv_b699 Bool)
(declare-const inv_b700 Bool)
(declare-const inv_b701 Bool)
(declare-const inv_b702 Bool)
(declare-const inv_b703 Bool)
(declare-const inv_b704 Bool)
(declare-const inv_b705 Bool)
(declare-const inv_b706 Bool)
(declare-const inv_b707 Bool)
(declare-const inv_b708 Bool)
(declare-const inv_b709 Bool)
(declare-const inv_b710 Bool)
(declare-const inv_b711 Bool)
(declare-const inv_b712 Bool)
(declare-const inv_b713 Bool)
(declare-const inv_b714 Bool)
(declare-const inv_b715 Bool)
(declare-const inv_b716 Bool)
(declare-const inv_b717 Bool)
(declare-const inv_b718 Bool)
(declare-const inv_b719 Bool)
(declare-const inv_b720 Bool)
(declare-const inv_b721 Bool)
(declare-const inv_b722 Bool)
(declare-const inv_b723 Bool)
(declare-const inv_b724 Bool)
(declare-const inv_b725 Bool)
(declare-const inv_b726 Bool)
(declare-const inv_b727 Bool)
(declare-const inv_b728 Bool)
(declare-const inv_b729 Bool)
(declare-const inv_b730 Bool)
(declare-const inv_b731 Bool)
(declare-const inv_b732 Bool)
(declare-const inv_b733 Bool)
(declare-const inv_b734 Bool)
(declare-const inv_b735 Bool)
(declare-const inv_b736 Bool)
(declare-const inv_b737 Bool)
(declare-const inv_b738 Bool)
(declare-const inv_b739 Bool)
(declare-const inv_b740 Bool)
(declare-const inv_b741 Bool)
(declare-const inv_b742 Bool)
(declare-const inv_b743 Bool)
(declare-const inv_b744 Bool)
(declare-const inv_b745 Bool)
(declare-const inv_b746 Bool)
(declare-const inv_b747 Bool)
(declare-const inv_b748 Bool)
(declare-const inv_b749 Bool)
(declare-const inv_b750 Bool)
(declare-const inv_b751 Bool)
(declare-const inv_b752 Bool)
(declare-const inv_b753 Bool)
(declare-const inv_b754 Bool)
(declare-const inv_b755 Bool)
(declare-const inv_b756 Bool)
(declare-const inv_b757 Bool)
(declare-const inv_b758 Bool)
(declare-const inv_b759 Bool)
(declare-const inv_b760 Bool)
(declare-const inv_b761 Bool)
(declare-const inv_b762 Bool)
(declare-const inv_b763 Bool)
(declare-const inv_b764 Bool)
(declare-const inv_b765 Bool)
(declare-const inv_b766 Bool)
(declare-const inv_b767 Bool)
(declare-const inv_b768 Bool)
(declare-const inv_b769 Bool)
(declare-const inv_b770 Bool)
(declare-const inv_b771 Bool)
(declare-const inv_b772 Bool)
(declare-const inv_b773 Bool)
(declare-const inv_b774 Bool)
(declare-const inv_b775 Bool)
(declare-const inv_b776 Bool)
(declare-const inv_b777 Bool)
(declare-const inv_b778 Bool)
(declare-const inv_b779 Bool)
(declare-const inv_b780 Bool)
(declare-const inv_b781 Bool)
(declare-const inv_b782 Bool)
(declare-const inv_b783 Bool)
(declare-const inv_b784 Bool)
(declare-const inv_b785 Bool)
(declare-const inv_b786 Bool)
(declare-const inv_b787 Bool)
(declare-const inv_b788 Bool)
(declare-const inv_b789 Bool)
(declare-const inv_b790 Bool)
(declare-const inv_b791 Bool)
(declare-const inv_b792 Bool)
(declare-const inv_b793 Bool)
(declare-const inv_b794 Bool)
(declare-const inv_b795 Bool)
(declare-const inv_b796 Bool)
(declare-const inv_b797 Bool)
(declare-const inv_b798 Bool)
(declare-const inv_b799 Bool)
(declare-const inv_b800 Bool)
(declare-const inv_b801 Bool)
(declare-const inv_b802 Bool)
(declare-const inv_b803 Bool)
(declare-const inv_b804 Bool)
(declare-const inv_b805 Bool)
(declare-const inv_b806 Bool)
(declare-const inv_b807 Bool)
(declare-const inv_b808 Bool)
(declare-const inv_b809 Bool)
(declare-const inv_b810 Bool)
(declare-const inv_b811 Bool)
(declare-const inv_b812 Bool)
(declare-const inv_b813 Bool)
(declare-const inv_b814 Bool)
(declare-const inv_b815 Bool)
(declare-const inv_b816 Bool)
(declare-const inv_b817 Bool)
(declare-const inv_b818 Bool)
(declare-const inv_b819 Bool)
(declare-const inv_b820 Bool)
(declare-const inv_b821 Bool)
(declare-const inv_b822 Bool)
(declare-const inv_b823 Bool)
(declare-const inv_b824 Bool)
(declare-const inv_b825 Bool)
(declare-const inv_b826 Bool)
(declare-const inv_b827 Bool)
(declare-const inv_b828 Bool)
(declare-const inv_b829 Bool)
(declare-const inv_b830 Bool)
(declare-const inv_b831 Bool)
(declare-const inv_b832 Bool)
(declare-const inv_b833 Bool)
(declare-const inv_b834 Bool)
(declare-const inv_b835 Bool)
(declare-const inv_b836 Bool)
(declare-const inv_b837 Bool)
(declare-const inv_b838 Bool)
(declare-const inv_b839 Bool)
(declare-const inv_b840 Bool)
(declare-const inv_b841 Bool)
(declare-const inv_b842 Bool)
(declare-const inv_b843 Bool)
(declare-const inv_b844 Bool)
(declare-const inv_b845 Bool)
(declare-const inv_b846 Bool)
(declare-const inv_b847 Bool)
(declare-const inv_b848 Bool)
(declare-const inv_b849 Bool)
(declare-const inv_b850 Bool)
(declare-const inv_b851 Bool)
(declare-const inv_b852 Bool)
(declare-const inv_b853 Bool)
(declare-const inv_b854 Bool)
(declare-const inv_b855 Bool)
(declare-const inv_b856 Bool)
(declare-const inv_b857 Bool)
(declare-const inv_b858 Bool)
(declare-const inv_b859 Bool)
(declare-const inv_b860 Bool)
(declare-const inv_b861 Bool)
(declare-const inv_b862 Bool)
(declare-const inv_b863 Bool)
(declare-const inv_b864 Bool)
(declare-const inv_b865 Bool)
(declare-const inv_b866 Bool)
(declare-const inv_b867 Bool)
(declare-const inv_b868 Bool)
(declare-const inv_b869 Bool)
(declare-const inv_b870 Bool)
(declare-const inv_b871 Bool)
(declare-const inv_b872 Bool)
(declare-const inv_b873 Bool)
(declare-const inv_b874 Bool)
(declare-const inv_b875 Bool)
(declare-const inv_b876 Bool)
(declare-const inv_b877 Bool)
(declare-const inv_b878 Bool)
(declare-const inv_b879 Bool)
(declare-const inv_b880 Bool)
(declare-const inv_b881 Bool)
(declare-const inv_b882 Bool)
(declare-const inv_b883 Bool)
(declare-const inv_b884 Bool)
(declare-const inv_b885 Bool)
(declare-const inv_b886 Bool)
(declare-const inv_b887 Bool)
(declare-const inv_b888 Bool)
(declare-const inv_b889 Bool)
(declare-const inv_b890 Bool)
(declare-const inv_b891 Bool)
(declare-const inv_b892 Bool)
(declare-const inv_b893 Bool)
(declare-const inv_b894 Bool)
(declare-const inv_b895 Bool)
(declare-const inv_b896 Bool)
(declare-const inv_b897 Bool)
(declare-const inv_b898 Bool)
(declare-const inv_b899 Bool)
(declare-const inv_b900 Bool)
(declare-const inv_b901 Bool)
(declare-const inv_b902 Bool)
(declare-const inv_b903 Bool)
(declare-const inv_b904 Bool)
(declare-const inv_b905 Bool)
(declare-const inv_b906 Bool)
(declare-const inv_b907 Bool)
(declare-const inv_b908 Bool)
(declare-const inv_b909 Bool)
(declare-const inv_b910 Bool)
(declare-const inv_b911 Bool)
(declare-const inv_b912 Bool)
(declare-const inv_b913 Bool)
(declare-const inv_b914 Bool)
(declare-const inv_b915 Bool)
(declare-const inv_b916 Bool)
(declare-const inv_b917 Bool)
(declare-const inv_b918 Bool)
(declare-const inv_b919 Bool)
(declare-const inv_b920 Bool)
(declare-const inv_b921 Bool)
(declare-const inv_b922 Bool)
(declare-const inv_b923 Bool)
(declare-const inv_b924 Bool)
(declare-const inv_b925 Bool)
(declare-const inv_b926 Bool)
(declare-const inv_b927 Bool)
(declare-const inv_b928 Bool)
(declare-const inv_b929 Bool)
(declare-const inv_b930 Bool)
(declare-const inv_b931 Bool)
(declare-const inv_b932 Bool)
(declare-const inv_b933 Bool)
(declare-const inv_b934 Bool)
(declare-const inv_b935 Bool)
(declare-const inv_b936 Bool)
(declare-const inv_b937 Bool)
(declare-const inv_b938 Bool)
(declare-const inv_b939 Bool)
(declare-const inv_b940 Bool)
(declare-const inv_b941 Bool)
(declare-const inv_b942 Bool)
(declare-const inv_b943 Bool)
(declare-const inv_b944 Bool)
(declare-const inv_b945 Bool)
(declare-const inv_b946 Bool)
(declare-const inv_b947 Bool)
(declare-const inv_b948 Bool)
(declare-const inv_b949 Bool)
(declare-const inv_b950 Bool)
(declare-const inv_b951 Bool)
(declare-const inv_b952 Bool)
(declare-const inv_b953 Bool)
(declare-const inv_b954 Bool)
(declare-const inv_b955 Bool)
(declare-const inv_b956 Bool)
(declare-const inv_b957 Bool)
(declare-const inv_b958 Bool)
(declare-const inv_b959 Bool)
(declare-const inv_b960 Bool)
(declare-const inv_b961 Bool)
(declare-const inv_b962 Bool)
(declare-const inv_b963 Bool)
(declare-const inv_b964 Bool)
(declare-const inv_b965 Bool)
(declare-const inv_b966 Bool)
(declare-const inv_b967 Bool)
(declare-const inv_b968 Bool)
(declare-const inv_b969 Bool)
(declare-const inv_b970 Bool)
(declare-const inv_b971 Bool)
(declare-const inv_b972 Bool)
(declare-const inv_b973 Bool)
(declare-const inv_b974 Bool)
(declare-const inv_b975 Bool)
(declare-const inv_b976 Bool)
(declare-const inv_b977 Bool)
(declare-const inv_b978 Bool)
(declare-const inv_b979 Bool)
(declare-const inv_b980 Bool)
(declare-const inv_b981 Bool)
(declare-const inv_b982 Bool)
(declare-const inv_b983 Bool)
(declare-const inv_b984 Bool)
(declare-const inv_b985 Bool)
(declare-const inv_b986 Bool)
(declare-const inv_b987 Bool)
(declare-const inv_b988 Bool)
(declare-const inv_b989 Bool)
(declare-const inv_b990 Bool)
(declare-const inv_b991 Bool)
(declare-const inv_b992 Bool)
(declare-const inv_b993 Bool)
(declare-const inv_b994 Bool)
(declare-const inv_b995 Bool)
(declare-const inv_b996 Bool)
(declare-const inv_b997 Bool)
(declare-const inv_b998 Bool)
(declare-const inv_b999 Bool)
(declare-const inv_b1000 Bool)
(declare-const inv_b1001 Bool)
(declare-const inv_b1002 Bool)
(declare-const inv_b1003 Bool)
(declare-const inv_b1004 Bool)
(declare-const inv_b1005 Bool)
(declare-const inv_b1006 Bool)
(declare-const inv_b1007 Bool)
(declare-const inv_b1008 Bool)
(declare-const inv_b1009 Bool)
(declare-const inv_b1010 Bool)
(declare-const inv_b1011 Bool)
(declare-const inv_b1012 Bool)
(declare-const inv_b1013 Bool)
(declare-const inv_b1014 Bool)
(declare-const inv_b1015 Bool)
(declare-const inv_b1016 Bool)
(declare-const inv_b1017 Bool)
(declare-const inv_b1018 Bool)
(declare-const inv_b1019 Bool)
(declare-const inv_b1020 Bool)
(declare-const inv_b1021 Bool)
(declare-const inv_b1022 Bool)
(declare-const inv_b1023 Bool)
(declare-const inv_b1024 Bool)
(declare-const inv_b1025 Bool)
(declare-const inv_b1026 Bool)
(declare-const inv_b1027 Bool)
(declare-const inv_b1028 Bool)
(declare-const inv_b1029 Bool)
(declare-const inv_b1030 Bool)
(declare-const inv_b1031 Bool)
(declare-const inv_b1032 Bool)
(declare-const inv_b1033 Bool)
(declare-const inv_b1034 Bool)
(declare-const inv_b1035 Bool)
(declare-const inv_b1036 Bool)
(declare-const inv_b1037 Bool)
(declare-const inv_b1038 Bool)
(declare-const inv_b1039 Bool)
(declare-const inv_b1040 Bool)
(declare-const inv_b1041 Bool)
(declare-const inv_b1042 Bool)
(declare-const inv_b1043 Bool)
(declare-const inv_b1044 Bool)
(declare-const inv_b1045 Bool)
(declare-const inv_b1046 Bool)
(declare-const inv_b1047 Bool)
(declare-const inv_b1048 Bool)
(declare-const inv_b1049 Bool)
(declare-const inv_b1050 Bool)
(declare-const inv_b1051 Bool)
(declare-const inv_b1052 Bool)
(declare-const inv_b1053 Bool)
(declare-const inv_b1054 Bool)
(declare-const inv_b1055 Bool)
(declare-const inv_b1056 Bool)
(declare-const inv_b1057 Bool)
(declare-const inv_b1058 Bool)
(declare-const inv_b1059 Bool)
(declare-const inv_b1060 Bool)
(declare-const inv_b1061 Bool)
(declare-const inv_b1062 Bool)
(declare-const inv_b1063 Bool)
(declare-const inv_b1064 Bool)
(declare-const inv_b1065 Bool)
(declare-const inv_b1066 Bool)
(declare-const inv_b1067 Bool)
(declare-const inv_b1068 Bool)
(declare-const inv_b1069 Bool)
(declare-const inv_b1070 Bool)
(declare-const inv_b1071 Bool)
(declare-const inv_b1072 Bool)
(declare-const inv_b1073 Bool)
(declare-const inv_b1074 Bool)
(declare-const inv_b1075 Bool)
(declare-const inv_b1076 Bool)
(declare-const inv_b1077 Bool)
(declare-const inv_b1078 Bool)
(declare-const inv_b1079 Bool)
(declare-const inv_b1080 Bool)
(declare-const inv_b1081 Bool)
(declare-const inv_b1082 Bool)
(declare-const inv_b1083 Bool)
(declare-const inv_b1084 Bool)
(declare-const inv_b1085 Bool)
(declare-const inv_b1086 Bool)
(declare-const inv_b1087 Bool)
(declare-const inv_b1088 Bool)
(declare-const inv_b1089 Bool)
(declare-const inv_b1090 Bool)
(declare-const inv_b1091 Bool)
(declare-const inv_b1092 Bool)
(declare-const inv_b1093 Bool)
(declare-const inv_b1094 Bool)
(declare-const inv_b1095 Bool)
(declare-const inv_b1096 Bool)
(declare-const inv_b1097 Bool)
(declare-const inv_b1098 Bool)
(declare-const inv_b1099 Bool)
(declare-const inv_b1100 Bool)
(declare-const inv_b1101 Bool)
(declare-const inv_b1102 Bool)
(declare-const inv_b1103 Bool)
(declare-const inv_b1104 Bool)
(declare-const inv_b1105 Bool)
(declare-const inv_b1106 Bool)
(declare-const inv_b1107 Bool)
(declare-const inv_b1108 Bool)
(declare-const inv_b1109 Bool)
(declare-const inv_b1110 Bool)
(declare-const inv_b1111 Bool)
(declare-const inv_b1112 Bool)
(declare-const inv_b1113 Bool)
(declare-const inv_b1114 Bool)
(declare-const inv_b1115 Bool)
(declare-const inv_b1116 Bool)
(declare-const inv_b1117 Bool)
(declare-const inv_b1118 Bool)
(declare-const inv_b1119 Bool)
(declare-const inv_b1120 Bool)
(declare-const inv_b1121 Bool)
(declare-const inv_b1122 Bool)
(declare-const inv_b1123 Bool)
(declare-const inv_b1124 Bool)
(declare-const inv_b1125 Bool)
(declare-const inv_b1126 Bool)
(declare-const inv_b1127 Bool)
(declare-const inv_b1128 Bool)
(declare-const inv_b1129 Bool)
(declare-const inv_b1130 Bool)
(declare-const inv_b1131 Bool)
(declare-const inv_b1132 Bool)
(declare-const inv_b1133 Bool)
(declare-const inv_b1134 Bool)
(declare-const inv_b1135 Bool)
(declare-const inv_b1136 Bool)
(declare-const inv_b1137 Bool)
(declare-const inv_b1138 Bool)
(declare-const inv_b1139 Bool)
(declare-const inv_b1140 Bool)
(declare-const inv_b1141 Bool)
(declare-const inv_b1142 Bool)
(declare-const inv_b1143 Bool)
(declare-const inv_b1144 Bool)
(declare-const inv_b1145 Bool)
(declare-const inv_b1146 Bool)
(declare-const inv_b1147 Bool)
(declare-const inv_b1148 Bool)
(declare-const inv_b1149 Bool)
(declare-const inv_b1150 Bool)
(declare-const inv_b1151 Bool)
(declare-const inv_b1152 Bool)
(declare-const inv_b1153 Bool)
(declare-const inv_b1154 Bool)
(declare-const inv_b1155 Bool)
(declare-const inv_b1156 Bool)
(declare-const inv_b1157 Bool)
(declare-const inv_b1158 Bool)
(declare-const inv_b1159 Bool)
(declare-const inv_b1160 Bool)
(declare-const inv_b1161 Bool)
(declare-const inv_b1162 Bool)
(declare-const inv_b1163 Bool)
(declare-const inv_b1164 Bool)
(declare-const inv_b1165 Bool)
(declare-const inv_b1166 Bool)
(declare-const inv_b1167 Bool)
(declare-const inv_b1168 Bool)
(declare-const inv_b1169 Bool)
(declare-const inv_b1170 Bool)
(declare-const inv_b1171 Bool)
(declare-const inv_b1172 Bool)
(declare-const inv_b1173 Bool)
(declare-const inv_b1174 Bool)
(declare-const inv_b1175 Bool)
(declare-const inv_b1176 Bool)
(declare-const inv_b1177 Bool)
(declare-const inv_b1178 Bool)
(declare-const inv_b1179 Bool)
(declare-const inv_b1180 Bool)
(declare-const inv_b1181 Bool)
(declare-const inv_b1182 Bool)
(declare-const inv_b1183 Bool)
(declare-const inv_b1184 Bool)
(declare-const inv_b1185 Bool)
(declare-const inv_b1186 Bool)
(declare-const inv_b1187 Bool)
(declare-const inv_b1188 Bool)
(declare-const inv_b1189 Bool)
(declare-const inv_b1190 Bool)
(declare-const inv_b1191 Bool)
(declare-const inv_b1192 Bool)
(declare-const inv_b1193 Bool)
(declare-const inv_b1194 Bool)
(declare-const inv_b1195 Bool)
(declare-const inv_b1196 Bool)
(declare-const inv_b1197 Bool)
(declare-const inv_b1198 Bool)
(declare-const inv_b1199 Bool)
(declare-const inv_b1200 Bool)
(declare-const inv_b1201 Bool)
(declare-const inv_b1202 Bool)
(declare-const inv_b1203 Bool)
(declare-const inv_b1204 Bool)
(declare-const inv_b1205 Bool)
(declare-const inv_b1206 Bool)
(declare-const inv_b1207 Bool)
(declare-const inv_b1208 Bool)
(declare-const inv_b1209 Bool)
(declare-const inv_b1210 Bool)
(declare-const inv_b1211 Bool)
(declare-const inv_b1212 Bool)
(declare-const inv_b1213 Bool)
(declare-const inv_b1214 Bool)
(declare-const inv_b1215 Bool)
(declare-const inv_b1216 Bool)
(declare-const inv_b1217 Bool)
(declare-const inv_b1218 Bool)
(declare-const inv_b1219 Bool)
(declare-const inv_b1220 Bool)
(declare-const inv_b1221 Bool)
(declare-const inv_b1222 Bool)
(declare-const inv_b1223 Bool)
(declare-const inv_b1224 Bool)
(declare-const inv_b1225 Bool)
(declare-const inv_b1226 Bool)
(declare-const inv_b1227 Bool)
(declare-const inv_b1228 Bool)
(declare-const inv_b1229 Bool)
(declare-const inv_b1230 Bool)
(declare-const inv_b1231 Bool)
(declare-const inv_b1232 Bool)
(declare-const inv_b1233 Bool)
(declare-const inv_b1234 Bool)
(declare-const inv_b1235 Bool)
(declare-const inv_b1236 Bool)
(declare-const inv_b1237 Bool)
(declare-const inv_b1238 Bool)
(declare-const inv_b1239 Bool)
(declare-const inv_b1240 Bool)
(declare-const inv_b1241 Bool)
(declare-const inv_b1242 Bool)
(declare-const inv_b1243 Bool)
(declare-const inv_b1244 Bool)
(declare-const inv_b1245 Bool)
(declare-const inv_b1246 Bool)
(declare-const inv_b1247 Bool)
(declare-const inv_b1248 Bool)
(declare-const inv_b1249 Bool)
(declare-const inv_b1250 Bool)
(declare-const inv_b1251 Bool)
(declare-const inv_b1252 Bool)
(declare-const inv_b1253 Bool)
(declare-const inv_b1254 Bool)
(declare-const inv_b1255 Bool)
(declare-const inv_b1256 Bool)
(declare-const inv_b1257 Bool)
(declare-const inv_b1258 Bool)
(declare-const inv_b1259 Bool)
(declare-const inv_b1260 Bool)
(declare-const inv_b1261 Bool)
(declare-const inv_b1262 Bool)
(declare-const inv_b1263 Bool)
(declare-const inv_b1264 Bool)
(declare-const inv_b1265 Bool)
(declare-const inv_b1266 Bool)
(declare-const inv_b1267 Bool)
(declare-const inv_b1268 Bool)
(declare-const inv_b1269 Bool)
(declare-const inv_b1270 Bool)
(declare-const inv_b1271 Bool)
(declare-const inv_b1272 Bool)
(declare-const inv_b1273 Bool)
(declare-const inv_b1274 Bool)
(declare-const inv_b1275 Bool)
(declare-const inv_b1276 Bool)
(declare-const inv_b1277 Bool)
(declare-const inv_b1278 Bool)
(declare-const inv_b1279 Bool)
(declare-const inv_b1280 Bool)
(declare-const inv_b1281 Bool)
(declare-const inv_b1282 Bool)
(declare-const inv_b1283 Bool)
(declare-const inv_b1284 Bool)
(declare-const inv_b1285 Bool)
(declare-const inv_b1286 Bool)
(declare-const inv_b1287 Bool)
(declare-const inv_b1288 Bool)
(declare-const inv_b1289 Bool)
(declare-const inv_b1290 Bool)
(declare-const inv_b1291 Bool)
(declare-const inv_b1292 Bool)
(declare-const inv_b1293 Bool)
(declare-const inv_b1294 Bool)
(declare-const inv_b1295 Bool)
(declare-const inv_b1296 Bool)
(declare-const inv_b1297 Bool)
(declare-const inv_b1298 Bool)
(declare-const inv_b1299 Bool)
(declare-const inv_b1300 Bool)
(declare-const inv_b1301 Bool)
(declare-const inv_b1302 Bool)
(declare-const inv_b1303 Bool)
(declare-const inv_b1304 Bool)
(declare-const inv_b1305 Bool)
(declare-const inv_b1306 Bool)
(declare-const inv_b1307 Bool)
(declare-const inv_b1308 Bool)
(declare-const inv_b1309 Bool)
(declare-const inv_b1310 Bool)
(declare-const inv_b1311 Bool)
(declare-const inv_b1312 Bool)
(declare-const inv_b1313 Bool)
(declare-const inv_b1314 Bool)
(declare-const inv_b1315 Bool)
(declare-const inv_b1316 Bool)
(declare-const inv_b1317 Bool)
(declare-const inv_b1318 Bool)
(declare-const inv_b1319 Bool)
(declare-const inv_b1320 Bool)
(declare-const inv_b1321 Bool)
(declare-const inv_b1322 Bool)
(declare-const inv_b1323 Bool)
(declare-const inv_b1324 Bool)
(declare-const inv_b1325 Bool)
(declare-const inv_b1326 Bool)
(declare-const inv_b1327 Bool)
(declare-const inv_b1328 Bool)
(declare-const inv_b1329 Bool)
(declare-const inv_b1330 Bool)
(declare-const inv_b1331 Bool)
(declare-const inv_b1332 Bool)
(declare-const inv_b1333 Bool)
(declare-const inv_b1334 Bool)
(declare-const inv_b1335 Bool)
(declare-const inv_b1336 Bool)
(declare-const inv_b1337 Bool)
(declare-const inv_b1338 Bool)
(declare-const inv_b1339 Bool)
(declare-const inv_b1340 Bool)
(declare-const inv_b1341 Bool)
(declare-const inv_b1342 Bool)
(declare-const inv_b1343 Bool)
(declare-const inv_b1344 Bool)
(declare-const inv_b1345 Bool)
(declare-const inv_b1346 Bool)
(declare-const inv_b1347 Bool)
(declare-const inv_b1348 Bool)
(declare-const inv_b1349 Bool)
(declare-const inv_b1350 Bool)
(declare-const inv_b1351 Bool)
(declare-const inv_b1352 Bool)
(declare-const inv_b1353 Bool)
(declare-const inv_b1354 Bool)
(declare-const inv_b1355 Bool)
(declare-const inv_b1356 Bool)
(declare-const inv_b1357 Bool)
(declare-const inv_b1358 Bool)
(declare-const inv_b1359 Bool)
(declare-const inv_b1360 Bool)
(declare-const inv_b1361 Bool)
(declare-const inv_b1362 Bool)
(declare-const inv_b1363 Bool)
(declare-const inv_b1364 Bool)
(declare-const inv_b1365 Bool)
(declare-const inv_b1366 Bool)
(declare-const inv_b1367 Bool)
(declare-const inv_b1368 Bool)
(declare-const inv_b1369 Bool)
(declare-const inv_b1370 Bool)
(declare-const inv_b1371 Bool)
(declare-const inv_b1372 Bool)
(declare-const inv_b1373 Bool)
(declare-const inv_b1374 Bool)
(declare-const inv_b1375 Bool)
(declare-const inv_b1376 Bool)
(declare-const inv_b1377 Bool)
(declare-const inv_b1378 Bool)
(declare-const inv_b1379 Bool)
(declare-const inv_b1380 Bool)
(declare-const inv_b1381 Bool)
(declare-const inv_b1382 Bool)
(declare-const inv_b1383 Bool)
(declare-const inv_b1384 Bool)
(declare-const inv_b1385 Bool)
(declare-const inv_b1386 Bool)
(declare-const inv_b1387 Bool)
(declare-const inv_b1388 Bool)
(declare-const inv_b1389 Bool)
(declare-const inv_b1390 Bool)
(declare-const inv_b1391 Bool)
(declare-const inv_b1392 Bool)
(declare-const inv_b1393 Bool)
(declare-const inv_b1394 Bool)
(declare-const inv_b1395 Bool)
(declare-const inv_b1396 Bool)
(declare-const inv_b1397 Bool)
(declare-const inv_b1398 Bool)
(declare-const inv_b1399 Bool)
(declare-const inv_b1400 Bool)
(declare-const inv_b1401 Bool)
(declare-const inv_b1402 Bool)
(declare-const inv_b1403 Bool)
(declare-const inv_b1404 Bool)
(declare-const inv_b1405 Bool)
(declare-const inv_b1406 Bool)
(declare-const inv_b1407 Bool)
(declare-const inv_b1408 Bool)
(declare-const inv_b1409 Bool)
(declare-const inv_b1410 Bool)
(declare-const inv_b1411 Bool)
(declare-const inv_b1412 Bool)
(declare-const inv_b1413 Bool)
(declare-const inv_b1414 Bool)
(declare-const inv_b1415 Bool)
(declare-const inv_b1416 Bool)
(declare-const inv_b1417 Bool)
(declare-const inv_b1418 Bool)
(declare-const inv_b1419 Bool)
(declare-const inv_b1420 Bool)
(declare-const inv_b1421 Bool)
(declare-const inv_b1422 Bool)
(declare-const inv_b1423 Bool)
(declare-const inv_b1424 Bool)
(declare-const inv_b1425 Bool)
(declare-const inv_b1426 Bool)
(declare-const inv_b1427 Bool)
(declare-const inv_b1428 Bool)
(declare-const inv_b1429 Bool)
(declare-const inv_b1430 Bool)
(declare-const inv_b1431 Bool)
(declare-const inv_b1432 Bool)
(declare-const inv_b1433 Bool)
(declare-const inv_b1434 Bool)
(declare-const inv_b1435 Bool)
(declare-const inv_b1436 Bool)
(declare-const inv_b1437 Bool)
(declare-const inv_b1438 Bool)
(declare-const inv_b1439 Bool)
(declare-const inv_b1440 Bool)
(declare-const inv_b1441 Bool)
(declare-const inv_b1442 Bool)
(declare-const inv_b1443 Bool)
(declare-const inv_b1444 Bool)
(declare-const inv_b1445 Bool)
(declare-const inv_b1446 Bool)
(declare-const inv_b1447 Bool)
(declare-const inv_b1448 Bool)
(declare-const inv_b1449 Bool)
(declare-const inv_b1450 Bool)
(declare-const inv_b1451 Bool)
(declare-const inv_b1452 Bool)
(declare-const inv_b1453 Bool)
(declare-const inv_b1454 Bool)
(declare-const inv_b1455 Bool)
(declare-const inv_b1456 Bool)
(declare-const inv_b1457 Bool)
(declare-const inv_b1458 Bool)
(declare-const inv_b1459 Bool)
(declare-const inv_b1460 Bool)
(declare-const inv_b1461 Bool)
(declare-const inv_b1462 Bool)
(declare-const inv_b1463 Bool)
(declare-const inv_b1464 Bool)
(declare-const inv_b1465 Bool)
(declare-const inv_b1466 Bool)
(declare-const inv_b1467 Bool)
(declare-const inv_b1468 Bool)
(declare-const inv_b1469 Bool)
(declare-const inv_b1470 Bool)
(declare-const inv_b1471 Bool)
(declare-const inv_b1472 Bool)
(declare-const inv_b1473 Bool)
(declare-const inv_b1474 Bool)
(declare-const inv_b1475 Bool)
(declare-const inv_b1476 Bool)
(declare-const inv_b1477 Bool)
(declare-const inv_b1478 Bool)
(declare-const inv_b1479 Bool)
(declare-const inv_b1480 Bool)
(declare-const inv_b1481 Bool)
(declare-const inv_b1482 Bool)
(declare-const inv_b1483 Bool)
(declare-const inv_b1484 Bool)
(declare-const inv_b1485 Bool)
(declare-const inv_b1486 Bool)
(declare-const inv_b1487 Bool)
(declare-const inv_b1488 Bool)
(declare-const inv_b1489 Bool)
(declare-const inv_b1490 Bool)
(declare-const inv_b1491 Bool)
(declare-const inv_b1492 Bool)
(declare-const inv_b1493 Bool)
(declare-const inv_b1494 Bool)
(declare-const inv_b1495 Bool)
(declare-const inv_b1496 Bool)
(declare-const inv_b1497 Bool)
(declare-const inv_b1498 Bool)
(declare-const inv_b1499 Bool)
(declare-const inv_b1500 Bool)
(declare-const inv_b1501 Bool)
(declare-const inv_b1502 Bool)
(declare-const inv_b1503 Bool)
(declare-const inv_b1504 Bool)
(declare-const inv_b1505 Bool)
(declare-const inv_b1506 Bool)
(declare-const inv_b1507 Bool)
(declare-const inv_b1508 Bool)
(declare-const inv_b1509 Bool)
(declare-const inv_b1510 Bool)
(declare-const inv_b1511 Bool)
(declare-const inv_b1512 Bool)
(declare-const inv_b1513 Bool)
(declare-const inv_b1514 Bool)
(declare-const inv_b1515 Bool)
(declare-const inv_b1516 Bool)
(declare-const inv_b1517 Bool)
(declare-const inv_b1518 Bool)
(declare-const inv_b1519 Bool)
(declare-const inv_b1520 Bool)
(declare-const inv_b1521 Bool)
(declare-const inv_b1522 Bool)
(declare-const inv_b1523 Bool)
(declare-const inv_b1524 Bool)
(declare-const inv_b1525 Bool)
(declare-const inv_b1526 Bool)
(declare-const inv_b1527 Bool)
(declare-const inv_b1528 Bool)
(declare-const inv_b1529 Bool)
(declare-const inv_b1530 Bool)
(declare-const inv_b1531 Bool)
(declare-const inv_b1532 Bool)
(declare-const inv_b1533 Bool)
(declare-const inv_b1534 Bool)
(declare-const inv_b1535 Bool)
(declare-const inv_b1536 Bool)
(declare-const inv_b1537 Bool)
(declare-const inv_b1538 Bool)
(declare-const inv_b1539 Bool)
(declare-const inv_b1540 Bool)
(declare-const inv_b1541 Bool)
(declare-const inv_b1542 Bool)
(declare-const inv_b1543 Bool)
(declare-const inv_b1544 Bool)
(declare-const inv_b1545 Bool)
(declare-const inv_b1546 Bool)
(declare-const inv_b1547 Bool)
(declare-const inv_b1548 Bool)
(declare-const inv_b1549 Bool)
(declare-const inv_b1550 Bool)
(declare-const inv_b1551 Bool)
(declare-const inv_b1552 Bool)
(declare-const inv_b1553 Bool)
(declare-const inv_b1554 Bool)
(declare-const inv_b1555 Bool)
(declare-const inv_b1556 Bool)
(declare-const inv_b1557 Bool)
(declare-const inv_b1558 Bool)
(declare-const inv_b1559 Bool)
(declare-const inv_b1560 Bool)
(declare-const inv_b1561 Bool)
(declare-const inv_b1562 Bool)
(declare-const inv_b1563 Bool)
(declare-const inv_b1564 Bool)
(declare-const inv_b1565 Bool)
(declare-const inv_b1566 Bool)
(declare-const inv_b1567 Bool)
(declare-const inv_b1568 Bool)
(declare-const inv_b1569 Bool)
(declare-const inv_b1570 Bool)
(declare-const inv_b1571 Bool)
(declare-const inv_b1572 Bool)
(declare-const inv_b1573 Bool)
(declare-const inv_b1574 Bool)
(declare-const inv_b1575 Bool)
(declare-const inv_b1576 Bool)
(declare-const inv_b1577 Bool)
(declare-const inv_b1578 Bool)
(declare-const inv_b1579 Bool)
(declare-const inv_b1580 Bool)
(declare-const inv_b1581 Bool)
(declare-const inv_b1582 Bool)
(declare-const inv_b1583 Bool)
(declare-const inv_b1584 Bool)
(declare-const inv_b1585 Bool)
(declare-const inv_b1586 Bool)
(declare-const inv_b1587 Bool)
(declare-const inv_b1588 Bool)
(declare-const inv_b1589 Bool)
(declare-const inv_b1590 Bool)
(declare-const inv_b1591 Bool)
(declare-const inv_b1592 Bool)
(declare-const inv_b1593 Bool)
(declare-const inv_b1594 Bool)
(declare-const inv_b1595 Bool)
(declare-const inv_b1596 Bool)
(declare-const inv_b1597 Bool)
(declare-const inv_b1598 Bool)
(declare-const inv_b1599 Bool)
(declare-const inv_b1600 Bool)
(declare-const inv_b1601 Bool)
(declare-const inv_b1602 Bool)
(declare-const inv_b1603 Bool)
(declare-const inv_b1604 Bool)
(declare-const inv_b1605 Bool)
(declare-const inv_b1606 Bool)
(declare-const inv_b1607 Bool)
(declare-const inv_b1608 Bool)
(declare-const inv_b1609 Bool)
(declare-const inv_b1610 Bool)
(declare-const inv_b1611 Bool)
(declare-const inv_b1612 Bool)
(declare-const inv_b1613 Bool)
(declare-const inv_b1614 Bool)
(declare-const inv_b1615 Bool)
(declare-const inv_b1616 Bool)
(declare-const inv_b1617 Bool)
(declare-const inv_b1618 Bool)
(declare-const inv_b1619 Bool)
(declare-const inv_b1620 Bool)
(declare-const inv_b1621 Bool)
(declare-const inv_b1622 Bool)
(declare-const inv_b1623 Bool)
(declare-const inv_b1624 Bool)
(declare-const inv_b1625 Bool)
(declare-const inv_b1626 Bool)
(declare-const inv_b1627 Bool)
(declare-const inv_b1628 Bool)
(declare-const inv_b1629 Bool)
(declare-const inv_b1630 Bool)
(declare-const inv_b1631 Bool)
(declare-const inv_b1632 Bool)
(declare-const inv_b1633 Bool)
(declare-const inv_b1634 Bool)
(declare-const inv_b1635 Bool)
(declare-const inv_b1636 Bool)
(declare-const inv_b1637 Bool)
(declare-const inv_b1638 Bool)
(declare-const inv_b1639 Bool)
(declare-const inv_b1640 Bool)
(declare-const inv_b1641 Bool)
(declare-const inv_b1642 Bool)
(declare-const inv_b1643 Bool)
(declare-const inv_b1644 Bool)
(declare-const inv_b1645 Bool)
(declare-const inv_b1646 Bool)
(declare-const inv_b1647 Bool)
(declare-const inv_b1648 Bool)
(declare-const inv_b1649 Bool)
(declare-const inv_b1650 Bool)
(declare-const inv_b1651 Bool)
(declare-const inv_b1652 Bool)
(declare-const inv_b1653 Bool)
(declare-const inv_b1654 Bool)
(declare-const inv_b1655 Bool)
(declare-const inv_b1656 Bool)
(declare-const inv_b1657 Bool)
(declare-const inv_b1658 Bool)
(declare-const inv_b1659 Bool)
(declare-const inv_b1660 Bool)
(declare-const inv_b1661 Bool)
(declare-const inv_b1662 Bool)
(declare-const inv_b1663 Bool)
(declare-const inv_b1664 Bool)
(declare-const inv_b1665 Bool)
(declare-const inv_b1666 Bool)
(declare-const inv_b1667 Bool)
(declare-const inv_b1668 Bool)
(declare-const inv_b1669 Bool)
(declare-const inv_b1670 Bool)
(declare-const inv_b1671 Bool)
(declare-const inv_b1672 Bool)
(declare-const inv_b1673 Bool)
(declare-const inv_b1674 Bool)
(declare-const inv_b1675 Bool)
(declare-const inv_b1676 Bool)
(declare-const inv_b1677 Bool)
(declare-const inv_b1678 Bool)
(declare-const inv_b1679 Bool)
(declare-const inv_b1680 Bool)
(declare-const inv_b1681 Bool)
(declare-const inv_b1682 Bool)
(declare-const inv_b1683 Bool)
(declare-const inv_b1684 Bool)
(declare-const inv_b1685 Bool)
(declare-const inv_b1686 Bool)
(declare-const inv_b1687 Bool)
(declare-const inv_b1688 Bool)
(declare-const inv_b1689 Bool)
(declare-const inv_b1690 Bool)
(declare-const inv_b1691 Bool)
(declare-const inv_b1692 Bool)
(declare-const inv_b1693 Bool)
(declare-const inv_b1694 Bool)
(declare-const inv_b1695 Bool)
(declare-const inv_b1696 Bool)
(declare-const inv_b1697 Bool)
(declare-const inv_b1698 Bool)
(declare-const inv_b1699 Bool)
(declare-const inv_b1700 Bool)
(declare-const inv_b1701 Bool)
(declare-const inv_b1702 Bool)
(declare-const inv_b1703 Bool)
(declare-const inv_b1704 Bool)
(declare-const inv_b1705 Bool)
(declare-const inv_b1706 Bool)
(declare-const inv_b1707 Bool)
(declare-const inv_b1708 Bool)
(declare-const inv_b1709 Bool)
(declare-const inv_b1710 Bool)
(declare-const inv_b1711 Bool)
(declare-const inv_b1712 Bool)
(declare-const inv_b1713 Bool)
(declare-const inv_b1714 Bool)
(declare-const inv_b1715 Bool)
(declare-const inv_b1716 Bool)
(declare-const inv_b1717 Bool)
(declare-const inv_b1718 Bool)
(declare-const inv_b1719 Bool)
(declare-const inv_b1720 Bool)
(declare-const inv_b1721 Bool)
(declare-const inv_b1722 Bool)
(declare-const inv_b1723 Bool)
(declare-const inv_b1724 Bool)
(declare-const inv_b1725 Bool)
(declare-const inv_b1726 Bool)
(declare-const inv_b1727 Bool)
(declare-const inv_b1728 Bool)
(declare-const inv_b1729 Bool)
(declare-const inv_b1730 Bool)
(declare-const inv_b1731 Bool)
(declare-const inv_b1732 Bool)
(declare-const inv_b1733 Bool)
(declare-const inv_b1734 Bool)
(declare-const inv_b1735 Bool)
(declare-const inv_b1736 Bool)
(declare-const inv_b1737 Bool)
(declare-const inv_b1738 Bool)
(declare-const inv_b1739 Bool)
(declare-const inv_b1740 Bool)
(declare-const inv_b1741 Bool)
(declare-const inv_b1742 Bool)
(declare-const inv_b1743 Bool)
(declare-const inv_b1744 Bool)
(declare-const inv_b1745 Bool)
(declare-const inv_b1746 Bool)
(declare-const inv_b1747 Bool)
(declare-const inv_b1748 Bool)
(declare-const inv_b1749 Bool)
(declare-const inv_b1750 Bool)
(declare-const inv_b1751 Bool)
(declare-const inv_b1752 Bool)
(declare-const inv_b1753 Bool)
(declare-const inv_b1754 Bool)
(declare-const inv_b1755 Bool)
(declare-const inv_b1756 Bool)
(declare-const inv_b1757 Bool)
(declare-const inv_b1758 Bool)
(declare-const inv_b1759 Bool)
(declare-const inv_b1760 Bool)
(declare-const inv_b1761 Bool)
(declare-const inv_b1762 Bool)
(declare-const inv_b1763 Bool)
(declare-const inv_b1764 Bool)
(declare-const inv_b1765 Bool)
(declare-const inv_b1766 Bool)
(declare-const inv_b1767 Bool)
(declare-const inv_b1768 Bool)
(declare-const inv_b1769 Bool)
(declare-const inv_b1770 Bool)
(declare-const inv_b1771 Bool)
(declare-const inv_b1772 Bool)
(declare-const inv_b1773 Bool)
(declare-const inv_b1774 Bool)
(declare-const inv_b1775 Bool)
(declare-const inv_b1776 Bool)
(declare-const inv_b1777 Bool)
(declare-const inv_b1778 Bool)
(declare-const inv_b1779 Bool)
(declare-const inv_b1780 Bool)
(declare-const inv_b1781 Bool)
(declare-const inv_b1782 Bool)
(declare-const inv_b1783 Bool)
(declare-const inv_b1784 Bool)
(declare-const inv_b1785 Bool)
(declare-const inv_b1786 Bool)
(declare-const inv_b1787 Bool)
(declare-const inv_b1788 Bool)
(declare-const inv_b1789 Bool)
(declare-const inv_b1790 Bool)
(declare-const inv_b1791 Bool)
(declare-const inv_b1792 Bool)
(declare-const inv_b1793 Bool)
(declare-const inv_b1794 Bool)
(declare-const inv_b1795 Bool)
(declare-const inv_b1796 Bool)
(declare-const inv_b1797 Bool)
(declare-const inv_b1798 Bool)
(declare-const inv_b1799 Bool)
(declare-const inv_b1800 Bool)
(declare-const inv_b1801 Bool)
(declare-const inv_b1802 Bool)
(declare-const inv_b1803 Bool)
(declare-const inv_b1804 Bool)
(declare-const inv_b1805 Bool)
(declare-const inv_b1806 Bool)
(declare-const inv_b1807 Bool)
(declare-const inv_b1808 Bool)
(declare-const inv_b1809 Bool)
(declare-const inv_b1810 Bool)
(declare-const inv_b1811 Bool)
(declare-const inv_b1812 Bool)
(declare-const inv_b1813 Bool)
(declare-const inv_b1814 Bool)
(declare-const inv_b1815 Bool)
(declare-const inv_b1816 Bool)
(declare-const inv_b1817 Bool)
(declare-const inv_b1818 Bool)
(declare-const inv_b1819 Bool)
(declare-const inv_b1820 Bool)
(declare-const inv_b1821 Bool)
(declare-const inv_b1822 Bool)
(declare-const inv_b1823 Bool)
(declare-const inv_b1824 Bool)
(declare-const inv_b1825 Bool)
(declare-const inv_b1826 Bool)
(declare-const inv_b1827 Bool)
(declare-const inv_b1828 Bool)
(declare-const inv_b1829 Bool)
(declare-const inv_b1830 Bool)
(declare-const inv_b1831 Bool)
(declare-const inv_b1832 Bool)
(declare-const inv_b1833 Bool)
(declare-const inv_b1834 Bool)
(declare-const inv_b1835 Bool)
(declare-const inv_b1836 Bool)
(declare-const inv_b1837 Bool)
(declare-const inv_b1838 Bool)
(declare-const inv_b1839 Bool)
(declare-const inv_b1840 Bool)
(declare-const inv_b1841 Bool)
(declare-const inv_b1842 Bool)
(declare-const inv_b1843 Bool)
(declare-const inv_b1844 Bool)
(declare-const inv_b1845 Bool)
(declare-const inv_b1846 Bool)
(declare-const inv_b1847 Bool)
(declare-const inv_b1848 Bool)
(declare-const inv_b1849 Bool)
(declare-const inv_b1850 Bool)
(declare-const inv_b1851 Bool)
(declare-const inv_b1852 Bool)
(declare-const inv_b1853 Bool)
(declare-const inv_b1854 Bool)
(declare-const inv_b1855 Bool)
(declare-const inv_b1856 Bool)
(declare-const inv_b1857 Bool)
(declare-const inv_b1858 Bool)
(declare-const inv_b1859 Bool)
(declare-const inv_b1860 Bool)
(declare-const inv_b1861 Bool)
(declare-const inv_b1862 Bool)
(declare-const inv_b1863 Bool)
(declare-const inv_b1864 Bool)
(declare-const inv_b1865 Bool)
(declare-const inv_b1866 Bool)
(declare-const inv_b1867 Bool)
(declare-const inv_b1868 Bool)
(declare-const inv_b1869 Bool)
(declare-const inv_b1870 Bool)
(declare-const inv_b1871 Bool)
(declare-const inv_b1872 Bool)
(declare-const inv_b1873 Bool)
(declare-const inv_b1874 Bool)
(declare-const inv_b1875 Bool)
(declare-const inv_b1876 Bool)
(declare-const inv_b1877 Bool)
(declare-const inv_b1878 Bool)
(declare-const inv_b1879 Bool)
(declare-const inv_b1880 Bool)
(declare-const inv_b1881 Bool)
(declare-const inv_b1882 Bool)
(declare-const inv_b1883 Bool)
(declare-const inv_b1884 Bool)
(declare-const inv_b1885 Bool)
(declare-const inv_b1886 Bool)
(declare-const inv_b1887 Bool)
(declare-const inv_b1888 Bool)
(declare-const inv_b1889 Bool)
(declare-const inv_b1890 Bool)
(declare-const inv_b1891 Bool)
(declare-const inv_b1892 Bool)
(declare-const inv_b1893 Bool)
(declare-const inv_b1894 Bool)
(declare-const inv_b1895 Bool)
(declare-const inv_b1896 Bool)
(declare-const inv_b1897 Bool)
(declare-const inv_b1898 Bool)
(declare-const inv_b1899 Bool)
(declare-const inv_b1900 Bool)
(declare-const inv_b1901 Bool)
(declare-const inv_b1902 Bool)
(declare-const inv_b1903 Bool)
(declare-const inv_b1904 Bool)
(declare-const inv_b1905 Bool)
(declare-const inv_b1906 Bool)
(declare-const inv_b1907 Bool)
(declare-const inv_b1908 Bool)
(declare-const inv_b1909 Bool)
(declare-const inv_b1910 Bool)
(declare-const inv_b1911 Bool)
(declare-const inv_b1912 Bool)
(declare-const inv_b1913 Bool)
(declare-const inv_b1914 Bool)
(declare-const inv_b1915 Bool)
(declare-const inv_b1916 Bool)
(declare-const inv_b1917 Bool)
(declare-const inv_b1918 Bool)
(declare-const inv_b1919 Bool)
(declare-const inv_b1920 Bool)
(declare-const inv_b1921 Bool)
(declare-const inv_b1922 Bool)
(declare-const inv_b1923 Bool)
(declare-const inv_b1924 Bool)
(declare-const inv_b1925 Bool)
(declare-const inv_b1926 Bool)
(declare-const inv_b1927 Bool)
(declare-const inv_b1928 Bool)
(declare-const inv_b1929 Bool)
(declare-const inv_b1930 Bool)
(declare-const inv_b1931 Bool)
(declare-const inv_b1932 Bool)
(declare-const inv_b1933 Bool)
(declare-const inv_b1934 Bool)
(declare-const inv_b1935 Bool)
(declare-const inv_b1936 Bool)
(declare-const inv_b1937 Bool)
(declare-const inv_b1938 Bool)
(declare-const inv_b1939 Bool)
(declare-const inv_b1940 Bool)
(declare-const inv_b1941 Bool)
(declare-const inv_b1942 Bool)
(declare-const inv_b1943 Bool)
(declare-const inv_b1944 Bool)
(declare-const inv_b1945 Bool)
(declare-const inv_b1946 Bool)
(declare-const inv_b1947 Bool)
(declare-const inv_b1948 Bool)
(declare-const inv_b1949 Bool)
(declare-const inv_b1950 Bool)
(declare-const inv_b1951 Bool)
(declare-const inv_b1952 Bool)
(declare-const inv_b1953 Bool)
(declare-const inv_b1954 Bool)
(declare-const inv_b1955 Bool)
(declare-const inv_b1956 Bool)
(declare-const inv_b1957 Bool)
(declare-const inv_b1958 Bool)
(declare-const inv_b1959 Bool)
(declare-const inv_b1960 Bool)
(declare-const inv_b1961 Bool)
(declare-const inv_b1962 Bool)
(declare-const inv_b1963 Bool)
(declare-const inv_b1964 Bool)
(declare-const inv_b1965 Bool)
(declare-const inv_b1966 Bool)
(declare-const inv_b1967 Bool)
(declare-const inv_b1968 Bool)
(declare-const inv_b1969 Bool)
(declare-const inv_b1970 Bool)
(declare-const inv_b1971 Bool)
(declare-const inv_b1972 Bool)
(declare-const inv_b1973 Bool)
(declare-const inv_b1974 Bool)
(declare-const inv_b1975 Bool)
(declare-const inv_b1976 Bool)
(declare-const inv_b1977 Bool)
(declare-const inv_b1978 Bool)
(declare-const inv_b1979 Bool)
(declare-const inv_b1980 Bool)
(declare-const inv_b1981 Bool)
(declare-const inv_b1982 Bool)
(declare-const inv_b1983 Bool)
(declare-const inv_b1984 Bool)
(declare-const inv_b1985 Bool)
(declare-const inv_b1986 Bool)
(declare-const inv_b1987 Bool)
(declare-const inv_b1988 Bool)
(declare-const inv_b1989 Bool)
(declare-const inv_b1990 Bool)
(declare-const inv_b1991 Bool)
(declare-const inv_b1992 Bool)
(declare-const inv_b1993 Bool)
(declare-const inv_b1994 Bool)
(declare-const inv_b1995 Bool)
(declare-const inv_b1996 Bool)
(declare-const inv_b1997 Bool)
(declare-const inv_b1998 Bool)
(declare-const inv_b1999 Bool)
(declare-const inv_b2000 Bool)
(declare-const inv_b2001 Bool)
(declare-const inv_b2002 Bool)
(declare-const inv_b2003 Bool)
(declare-const inv_b2004 Bool)
(declare-const inv_b2005 Bool)
(declare-const inv_b2006 Bool)
(declare-const inv_b2007 Bool)
(declare-const inv_b2008 Bool)
(declare-const inv_b2009 Bool)
(declare-const inv_b2010 Bool)
(declare-const inv_b2011 Bool)
(declare-const inv_b2012 Bool)
(declare-const inv_b2013 Bool)
(declare-const inv_b2014 Bool)
(declare-const inv_b2015 Bool)
(declare-const inv_b2016 Bool)
(declare-const inv_b2017 Bool)
(declare-const inv_b2018 Bool)
(declare-const inv_b2019 Bool)
(declare-const inv_b2020 Bool)
(declare-const inv_b2021 Bool)
(declare-const inv_b2022 Bool)
(declare-const inv_b2023 Bool)
(declare-const inv_b2024 Bool)
(declare-const inv_b2025 Bool)
(declare-const inv_b2026 Bool)
(declare-const inv_b2027 Bool)
(declare-const inv_b2028 Bool)
(declare-const inv_b2029 Bool)
(declare-const inv_b2030 Bool)
(declare-const inv_b2031 Bool)
(declare-const inv_b2032 Bool)
(declare-const inv_b2033 Bool)
(declare-const inv_b2034 Bool)
(declare-const inv_b2035 Bool)
(declare-const inv_b2036 Bool)
(declare-const inv_b2037 Bool)
(declare-const inv_b2038 Bool)
(declare-const inv_b2039 Bool)
(declare-const inv_b2040 Bool)
(declare-const inv_b2041 Bool)
(declare-const inv_b2042 Bool)
(declare-const inv_b2043 Bool)
(declare-const inv_b2044 Bool)
(declare-const inv_b2045 Bool)
(declare-const inv_b2046 Bool)
(declare-const inv_b2047 Bool)
(declare-const inv_b2048 Bool)
(declare-const inv_b2049 Bool)
(declare-const inv_b2050 Bool)
(declare-const inv_b2051 Bool)
(declare-const inv_b2052 Bool)
(declare-const inv_b2053 Bool)
(declare-const inv_b2054 Bool)
(declare-const inv_b2055 Bool)
(declare-const inv_b2056 Bool)
(declare-const inv_b2057 Bool)
(declare-const inv_b2058 Bool)
(declare-const inv_b2059 Bool)
(declare-const inv_b2060 Bool)
(declare-const inv_b2061 Bool)
(declare-const inv_b2062 Bool)
(declare-const inv_b2063 Bool)
(declare-const inv_b2064 Bool)
(declare-const inv_b2065 Bool)
(declare-const inv_b2066 Bool)
(declare-const inv_b2067 Bool)
(declare-const inv_b2068 Bool)
(declare-const inv_b2069 Bool)
(declare-const inv_b2070 Bool)
(declare-const inv_b2071 Bool)
(declare-const inv_b2072 Bool)
(declare-const inv_b2073 Bool)
(declare-const inv_b2074 Bool)
(declare-const inv_b2075 Bool)
(declare-const inv_b2076 Bool)
(declare-const inv_b2077 Bool)
(declare-const inv_b2078 Bool)
(declare-const inv_b2079 Bool)
(declare-const inv_b2080 Bool)
(declare-const inv_b2081 Bool)
(declare-const inv_b2082 Bool)
(declare-const inv_b2083 Bool)
(declare-const inv_b2084 Bool)
(declare-const inv_b2085 Bool)
(declare-const inv_b2086 Bool)
(declare-const inv_b2087 Bool)
(declare-const inv_b2088 Bool)
(declare-const inv_b2089 Bool)
(declare-const inv_b2090 Bool)
(declare-const inv_b2091 Bool)
(declare-const inv_b2092 Bool)
(declare-const inv_b2093 Bool)
(declare-const inv_b2094 Bool)
(declare-const inv_b2095 Bool)
(declare-const inv_b2096 Bool)
(declare-const inv_b2097 Bool)
(declare-const inv_b2098 Bool)
(declare-const inv_b2099 Bool)
(declare-const inv_b2100 Bool)
(declare-const inv_b2101 Bool)
(declare-const inv_b2102 Bool)
(declare-const inv_b2103 Bool)
(declare-const inv_b2104 Bool)
(declare-const inv_b2105 Bool)
(declare-const inv_b2106 Bool)
(declare-const inv_b2107 Bool)
(declare-const inv_b2108 Bool)
(declare-const inv_b2109 Bool)
(declare-const inv_b2110 Bool)
(declare-const inv_b2111 Bool)
(declare-const inv_b2112 Bool)
(declare-const inv_b2113 Bool)
(declare-const inv_b2114 Bool)
(declare-const inv_b2115 Bool)
(declare-const inv_b2116 Bool)
(declare-const inv_b2117 Bool)
(declare-const inv_b2118 Bool)
(declare-const inv_b2119 Bool)
(declare-const inv_b2120 Bool)
(declare-const inv_b2121 Bool)
(declare-const inv_b2122 Bool)
(declare-const inv_b2123 Bool)
(declare-const inv_b2124 Bool)
(declare-const inv_b2125 Bool)
(declare-const inv_b2126 Bool)
(declare-const inv_b2127 Bool)
(declare-const inv_b2128 Bool)
(declare-const inv_b2129 Bool)
(declare-const inv_b2130 Bool)
(declare-const inv_b2131 Bool)
(declare-const inv_b2132 Bool)
(declare-const inv_b2133 Bool)
(declare-const inv_b2134 Bool)
(declare-const inv_b2135 Bool)
(declare-const inv_b2136 Bool)
(declare-const inv_b2137 Bool)
(declare-const inv_b2138 Bool)
(declare-const inv_b2139 Bool)
(declare-const inv_b2140 Bool)
(declare-const inv_b2141 Bool)
(declare-const inv_b2142 Bool)
(declare-const inv_b2143 Bool)
(declare-const inv_b2144 Bool)
(declare-const inv_b2145 Bool)
(declare-const inv_b2146 Bool)
(declare-const inv_b2147 Bool)
(declare-const inv_b2148 Bool)
(declare-const inv_b2149 Bool)
(declare-const inv_b2150 Bool)
(declare-const inv_b2151 Bool)
(declare-const inv_b2152 Bool)
(declare-const inv_b2153 Bool)
(declare-const inv_b2154 Bool)
(declare-const inv_b2155 Bool)
(declare-const inv_b2156 Bool)
(declare-const inv_b2157 Bool)
(declare-const inv_b2158 Bool)
(declare-const inv_b2159 Bool)
(declare-const inv_b2160 Bool)
(declare-const inv_b2161 Bool)
(declare-const inv_b2162 Bool)
(declare-const inv_b2163 Bool)
(declare-const inv_b2164 Bool)
(declare-const inv_b2165 Bool)
(declare-const inv_b2166 Bool)
(declare-const inv_b2167 Bool)
(declare-const inv_b2168 Bool)
(declare-const inv_b2169 Bool)
(declare-const inv_b2170 Bool)
(declare-const inv_b2171 Bool)
(declare-const inv_b2172 Bool)
(declare-const inv_b2173 Bool)
(declare-const inv_b2174 Bool)
(declare-const inv_b2175 Bool)
(declare-const inv_b2176 Bool)
(declare-const inv_b2177 Bool)
(declare-const inv_b2178 Bool)
(declare-const inv_b2179 Bool)
(declare-const inv_b2180 Bool)
(declare-const inv_b2181 Bool)
(declare-const inv_b2182 Bool)
(declare-const inv_b2183 Bool)
(declare-const inv_b2184 Bool)
(declare-const inv_b2185 Bool)
(declare-const inv_b2186 Bool)
(declare-const inv_b2187 Bool)
(declare-const inv_b2188 Bool)
(declare-const inv_b2189 Bool)
(declare-const inv_b2190 Bool)
(declare-const inv_b2191 Bool)
(declare-const inv_b2192 Bool)
(declare-const inv_b2193 Bool)
(declare-const inv_b2194 Bool)
(declare-const inv_b2195 Bool)
(declare-const inv_b2196 Bool)
(declare-const inv_b2197 Bool)
(declare-const inv_b2198 Bool)
(declare-const inv_b2199 Bool)
(declare-const inv_b2200 Bool)
(declare-const inv_b2201 Bool)
(declare-const inv_b2202 Bool)
(declare-const inv_b2203 Bool)
(declare-const inv_b2204 Bool)
(declare-const inv_b2205 Bool)
(declare-const inv_b2206 Bool)
(declare-const inv_b2207 Bool)
(declare-const inv_b2208 Bool)
(declare-const inv_b2209 Bool)
(declare-const inv_b2210 Bool)
(declare-const inv_b2211 Bool)
(declare-const inv_b2212 Bool)
(declare-const inv_b2213 Bool)
(declare-const inv_b2214 Bool)
(declare-const inv_b2215 Bool)
(declare-const inv_b2216 Bool)
(declare-const inv_b2217 Bool)
(declare-const inv_b2218 Bool)
(declare-const inv_b2219 Bool)
(declare-const inv_b2220 Bool)
(declare-const inv_b2221 Bool)
(declare-const inv_b2222 Bool)
(declare-const inv_b2223 Bool)
(declare-const inv_b2224 Bool)
(declare-const inv_b2225 Bool)
(declare-const inv_b2226 Bool)
(declare-const inv_b2227 Bool)
(declare-const inv_b2228 Bool)
(declare-const inv_b2229 Bool)
(declare-const inv_b2230 Bool)
(declare-const inv_b2231 Bool)
(declare-const inv_b2232 Bool)
(declare-const inv_b2233 Bool)
(declare-const inv_b2234 Bool)
(declare-const inv_b2235 Bool)
(declare-const inv_b2236 Bool)
(declare-const inv_b2237 Bool)
(declare-const inv_b2238 Bool)
(declare-const inv_b2239 Bool)
(declare-const inv_b2240 Bool)
(declare-const inv_b2241 Bool)
(declare-const inv_b2242 Bool)
(declare-const inv_b2243 Bool)
(declare-const inv_b2244 Bool)
(declare-const inv_b2245 Bool)
(declare-const inv_b2246 Bool)
(declare-const inv_b2247 Bool)
(declare-const inv_b2248 Bool)
(declare-const inv_b2249 Bool)
(declare-const inv_b2250 Bool)
(declare-const inv_b2251 Bool)
(declare-const inv_b2252 Bool)
(declare-const inv_b2253 Bool)
(declare-const inv_b2254 Bool)
(declare-const inv_b2255 Bool)
(declare-const inv_b2256 Bool)
(declare-const inv_b2257 Bool)
(declare-const inv_b2258 Bool)
(declare-const inv_b2259 Bool)
(declare-const inv_b2260 Bool)
(declare-const inv_b2261 Bool)
(declare-const inv_b2262 Bool)
(declare-const inv_b2263 Bool)
(declare-const inv_b2264 Bool)
(declare-const inv_b2265 Bool)
(declare-const inv_b2266 Bool)
(declare-const inv_b2267 Bool)
(declare-const inv_b2268 Bool)
(declare-const inv_b2269 Bool)
(declare-const inv_b2270 Bool)
(declare-const inv_b2271 Bool)
(declare-const inv_b2272 Bool)
(declare-const inv_b2273 Bool)
(declare-const inv_b2274 Bool)
(declare-const inv_b2275 Bool)
(declare-const inv_b2276 Bool)
(declare-const inv_b2277 Bool)
(declare-const inv_b2278 Bool)
(declare-const inv_b2279 Bool)
(declare-const inv_b2280 Bool)
(declare-const inv_b2281 Bool)
(declare-const inv_b2282 Bool)
(declare-const inv_b2283 Bool)
(declare-const inv_b2284 Bool)
(declare-const inv_b2285 Bool)
(declare-const inv_b2286 Bool)
(declare-const inv_b2287 Bool)
(declare-const inv_b2288 Bool)
(declare-const inv_b2289 Bool)
(declare-const inv_b2290 Bool)
(declare-const inv_b2291 Bool)
(declare-const inv_b2292 Bool)
(declare-const inv_b2293 Bool)
(declare-const inv_b2294 Bool)
(declare-const inv_b2295 Bool)
(declare-const inv_b2296 Bool)
(declare-const inv_b2297 Bool)
(declare-const inv_b2298 Bool)
(declare-const inv_b2299 Bool)
(declare-const inv_b2300 Bool)
(declare-const inv_b2301 Bool)
(declare-const inv_b2302 Bool)
(declare-const inv_b2303 Bool)
(declare-const inv_b2304 Bool)
(declare-const inv_b2305 Bool)
(declare-const inv_b2306 Bool)
(declare-const inv_b2307 Bool)
(declare-const inv_b2308 Bool)
(declare-const inv_b2309 Bool)
(declare-const inv_b2310 Bool)
(declare-const inv_b2311 Bool)
(declare-const inv_b2312 Bool)
(declare-const inv_b2313 Bool)
(declare-const inv_b2314 Bool)
(declare-const inv_b2315 Bool)
(declare-const inv_b2316 Bool)
(declare-const inv_b2317 Bool)
(declare-const inv_b2318 Bool)
(declare-const inv_b2319 Bool)
(declare-const inv_b2320 Bool)
(declare-const inv_b2321 Bool)
(declare-const inv_b2322 Bool)
(declare-const inv_b2323 Bool)
(declare-const inv_b2324 Bool)
(declare-const inv_b2325 Bool)
(declare-const inv_b2326 Bool)
(declare-const inv_b2327 Bool)
(declare-const inv_b2328 Bool)
(declare-const inv_b2329 Bool)
(declare-const inv_b2330 Bool)
(declare-const inv_b2331 Bool)
(declare-const inv_b2332 Bool)
(declare-const inv_b2333 Bool)
(declare-const inv_b2334 Bool)
(declare-const inv_b2335 Bool)
(declare-const inv_b2336 Bool)
(declare-const inv_b2337 Bool)
(declare-const inv_b2338 Bool)
(declare-const inv_b2339 Bool)
(declare-const inv_b2340 Bool)
(declare-const inv_b2341 Bool)
(declare-const inv_b2342 Bool)
(declare-const inv_b2343 Bool)
(declare-const inv_b2344 Bool)
(declare-const inv_b2345 Bool)
(declare-const inv_b2346 Bool)
(declare-const inv_b2347 Bool)
(declare-const inv_b2348 Bool)
(declare-const inv_b2349 Bool)
(declare-const inv_b2350 Bool)
(declare-const inv_b2351 Bool)
(declare-const inv_b2352 Bool)
(declare-const inv_b2353 Bool)
(declare-const inv_b2354 Bool)
(declare-const inv_b2355 Bool)
(declare-const inv_b2356 Bool)
(declare-const inv_b2357 Bool)
(declare-const inv_b2358 Bool)
(declare-const inv_b2359 Bool)
(declare-const inv_b2360 Bool)
(declare-const inv_b2361 Bool)
(declare-const inv_b2362 Bool)
(declare-const inv_b2363 Bool)
(declare-const inv_b2364 Bool)
(declare-const inv_b2365 Bool)
(declare-const inv_b2366 Bool)
(declare-const inv_b2367 Bool)
(declare-const inv_b2368 Bool)
(declare-const inv_b2369 Bool)
(declare-const inv_b2370 Bool)
(declare-const inv_b2371 Bool)
(declare-const inv_b2372 Bool)
(declare-const inv_b2373 Bool)
(declare-const inv_b2374 Bool)
(declare-const inv_b2375 Bool)
(declare-const inv_b2376 Bool)
(declare-const inv_b2377 Bool)
(declare-const inv_b2378 Bool)
(declare-const inv_b2379 Bool)
(declare-const inv_b2380 Bool)
(declare-const inv_b2381 Bool)
(declare-const inv_b2382 Bool)
(declare-const inv_b2383 Bool)
(declare-const inv_b2384 Bool)
(declare-const inv_b2385 Bool)
(declare-const inv_b2386 Bool)
(declare-const inv_b2387 Bool)
(declare-const inv_b2388 Bool)
(declare-const inv_b2389 Bool)
(declare-const inv_b2390 Bool)
(declare-const inv_b2391 Bool)
(declare-const inv_b2392 Bool)
(declare-const inv_b2393 Bool)
(declare-const inv_b2394 Bool)
(declare-const inv_b2395 Bool)
(declare-const inv_b2396 Bool)
(declare-const inv_b2397 Bool)
(declare-const inv_b2398 Bool)
(declare-const inv_b2399 Bool)
(declare-const inv_b2400 Bool)
(declare-const inv_b2401 Bool)
(declare-const inv_b2402 Bool)
(declare-const inv_b2403 Bool)
(declare-const inv_b2404 Bool)
(declare-const inv_b2405 Bool)
(declare-const inv_b2406 Bool)
(declare-const inv_b2407 Bool)
(declare-const inv_b2408 Bool)
(declare-const inv_b2409 Bool)
(declare-const inv_b2410 Bool)
(declare-const inv_b2411 Bool)
(declare-const inv_b2412 Bool)
(declare-const inv_b2413 Bool)
(declare-const inv_b2414 Bool)
(declare-const inv_b2415 Bool)
(declare-const inv_b2416 Bool)
(declare-const inv_b2417 Bool)
(declare-const inv_b2418 Bool)
(declare-const inv_b2419 Bool)
(declare-const inv_b2420 Bool)
(declare-const inv_b2421 Bool)
(declare-const inv_b2422 Bool)
(declare-const inv_b2423 Bool)
(declare-const inv_b2424 Bool)
(declare-const inv_b2425 Bool)
(declare-const inv_b2426 Bool)
(declare-const inv_b2427 Bool)
(declare-const inv_b2428 Bool)
(declare-const inv_b2429 Bool)
(declare-const inv_b2430 Bool)
(declare-const inv_b2431 Bool)
(declare-const inv_b2432 Bool)
(declare-const inv_b2433 Bool)
(declare-const inv_b2434 Bool)
(declare-const inv_b2435 Bool)
(declare-const inv_b2436 Bool)
(declare-const inv_b2437 Bool)
(declare-const inv_b2438 Bool)
(declare-const inv_b2439 Bool)
(declare-const inv_b2440 Bool)
(declare-const inv_b2441 Bool)
(declare-const inv_b2442 Bool)
(declare-const inv_b2443 Bool)
(declare-const inv_b2444 Bool)
(declare-const inv_b2445 Bool)
(declare-const inv_b2446 Bool)
(declare-const inv_b2447 Bool)
(declare-const inv_b2448 Bool)
(declare-const inv_b2449 Bool)
(declare-const inv_b2450 Bool)
(declare-const inv_b2451 Bool)
(declare-const inv_b2452 Bool)
(declare-const inv_b2453 Bool)
(declare-const inv_b2454 Bool)
(declare-const inv_b2455 Bool)
(declare-const inv_b2456 Bool)
(declare-const inv_b2457 Bool)
(declare-const inv_b2458 Bool)
(declare-const inv_b2459 Bool)
(declare-const inv_b2460 Bool)
(declare-const inv_b2461 Bool)
(declare-const inv_b2462 Bool)
(declare-const inv_b2463 Bool)
(declare-const inv_b2464 Bool)
(declare-const inv_b2465 Bool)
(declare-const inv_b2466 Bool)
(declare-const inv_b2467 Bool)
(declare-const inv_b2468 Bool)
(declare-const inv_b2469 Bool)
(declare-const inv_b2470 Bool)
(declare-const inv_b2471 Bool)
(declare-const inv_b2472 Bool)
(declare-const inv_b2473 Bool)
(declare-const inv_b2474 Bool)
(declare-const inv_b2475 Bool)
(declare-const inv_b2476 Bool)
(declare-const inv_b2477 Bool)
(declare-const inv_b2478 Bool)
(declare-const inv_b2479 Bool)
(declare-const inv_b2480 Bool)
(declare-const inv_b2481 Bool)
(declare-const inv_b2482 Bool)
(declare-const inv_b2483 Bool)
(declare-const inv_b2484 Bool)
(declare-const inv_b2485 Bool)
(declare-const inv_b2486 Bool)
(declare-const inv_b2487 Bool)
(declare-const inv_b2488 Bool)
(declare-const inv_b2489 Bool)
(declare-const inv_b2490 Bool)
(declare-const inv_b2491 Bool)
(declare-const inv_b2492 Bool)
(declare-const inv_b2493 Bool)
(declare-const inv_b2494 Bool)
(declare-const inv_b2495 Bool)
(declare-const inv_b2496 Bool)
(declare-const inv_b2497 Bool)
(declare-const inv_b2498 Bool)
(declare-const inv_b2499 Bool)
(declare-const inv_b2500 Bool)
(declare-const inv_b2501 Bool)
(declare-const inv_b2502 Bool)
(declare-const inv_b2503 Bool)
(declare-const inv_b2504 Bool)
(declare-const inv_b2505 Bool)
(declare-const inv_b2506 Bool)
(declare-const inv_b2507 Bool)
(declare-const inv_b2508 Bool)
(declare-const inv_b2509 Bool)
(declare-const inv_b2510 Bool)
(declare-const inv_b2511 Bool)
(declare-const inv_b2512 Bool)
(declare-const inv_b2513 Bool)
(declare-const inv_b2514 Bool)
(declare-const inv_b2515 Bool)
(declare-const inv_b2516 Bool)
(declare-const inv_b2517 Bool)
(declare-const inv_b2518 Bool)
(declare-const inv_b2519 Bool)
(declare-const inv_b2520 Bool)
(declare-const inv_b2521 Bool)
(declare-const inv_b2522 Bool)
(declare-const inv_b2523 Bool)
(declare-const inv_b2524 Bool)
(declare-const inv_b2525 Bool)
(declare-const inv_b2526 Bool)
(declare-const inv_b2527 Bool)
(declare-const inv_b2528 Bool)
(declare-const inv_b2529 Bool)
(declare-const inv_b2530 Bool)
(declare-const inv_b2531 Bool)
(declare-const inv_b2532 Bool)
(declare-const inv_b2533 Bool)
(declare-const inv_b2534 Bool)
(declare-const inv_b2535 Bool)
(declare-const inv_b2536 Bool)
(declare-const inv_b2537 Bool)
(declare-const inv_b2538 Bool)
(declare-const inv_b2539 Bool)
(declare-const inv_b2540 Bool)
(declare-const inv_b2541 Bool)
(declare-const inv_b2542 Bool)
(declare-const inv_b2543 Bool)
(declare-const inv_b2544 Bool)
(declare-const inv_b2545 Bool)
(declare-const inv_b2546 Bool)
(declare-const inv_b2547 Bool)
(declare-const inv_b2548 Bool)
(declare-const inv_b2549 Bool)
(declare-const inv_b2550 Bool)
(declare-const inv_b2551 Bool)
(declare-const inv_b2552 Bool)
(declare-const inv_b2553 Bool)
(declare-const inv_b2554 Bool)
(declare-const inv_b2555 Bool)
(declare-const inv_b2556 Bool)
(declare-const inv_b2557 Bool)
(declare-const inv_b2558 Bool)
(declare-const inv_b2559 Bool)
(declare-const inv_b2560 Bool)
(declare-const inv_b2561 Bool)
(declare-const inv_b2562 Bool)
(declare-const inv_b2563 Bool)
(declare-const inv_b2564 Bool)
(declare-const inv_b2565 Bool)
(declare-const inv_b2566 Bool)
(declare-const inv_b2567 Bool)
(declare-const inv_b2568 Bool)
(declare-const inv_b2569 Bool)
(declare-const inv_b2570 Bool)
(declare-const inv_b2571 Bool)
(declare-const inv_b2572 Bool)
(declare-const inv_b2573 Bool)
(declare-const inv_b2574 Bool)
(declare-const inv_b2575 Bool)
(declare-const inv_b2576 Bool)
(declare-const inv_b2577 Bool)
(declare-const inv_b2578 Bool)
(declare-const inv_b2579 Bool)
(declare-const inv_b2580 Bool)
(declare-const inv_b2581 Bool)
(declare-const inv_b2582 Bool)
(declare-const inv_b2583 Bool)
(declare-const inv_b2584 Bool)
(declare-const inv_b2585 Bool)
(declare-const inv_b2586 Bool)
(declare-const inv_b2587 Bool)
(declare-const inv_b2588 Bool)
(declare-const inv_b2589 Bool)
(declare-const inv_b2590 Bool)
(declare-const inv_b2591 Bool)
(declare-const inv_b2592 Bool)
(declare-const inv_b2593 Bool)
(declare-const inv_b2594 Bool)
(declare-const inv_b2595 Bool)
(declare-const inv_b2596 Bool)
(declare-const inv_b2597 Bool)
(declare-const inv_b2598 Bool)
(declare-const inv_b2599 Bool)
(declare-const inv_b2600 Bool)
(declare-const inv_b2601 Bool)
(declare-const inv_b2602 Bool)
(declare-const inv_b2603 Bool)
(declare-const inv_b2604 Bool)
(declare-const inv_b2605 Bool)
(declare-const inv_b2606 Bool)
(declare-const inv_b2607 Bool)
(declare-const inv_b2608 Bool)
(declare-const inv_b2609 Bool)
(declare-const inv_b2610 Bool)
(declare-const inv_b2611 Bool)
(declare-const inv_b2612 Bool)
(declare-const inv_b2613 Bool)
(declare-const inv_b2614 Bool)
(declare-const inv_b2615 Bool)
(declare-const inv_b2616 Bool)
(declare-const inv_b2617 Bool)
(declare-const inv_b2618 Bool)
(declare-const inv_b2619 Bool)
(declare-const inv_b2620 Bool)
(declare-const inv_b2621 Bool)
(declare-const inv_b2622 Bool)
(declare-const inv_b2623 Bool)
(declare-const inv_b2624 Bool)
(declare-const inv_b2625 Bool)
(declare-const inv_b2626 Bool)
(declare-const inv_b2627 Bool)
(declare-const inv_b2628 Bool)
(declare-const inv_b2629 Bool)
(declare-const inv_b2630 Bool)
(declare-const inv_b2631 Bool)
(declare-const inv_b2632 Bool)
(declare-const inv_b2633 Bool)
(declare-const inv_b2634 Bool)
(declare-const inv_b2635 Bool)
(declare-const inv_b2636 Bool)
(declare-const inv_b2637 Bool)
(declare-const inv_b2638 Bool)
(declare-const inv_b2639 Bool)
(declare-const inv_b2640 Bool)
(declare-const inv_b2641 Bool)
(declare-const inv_b2642 Bool)
(declare-const inv_b2643 Bool)
(declare-const inv_b2644 Bool)
(declare-const inv_b2645 Bool)
(declare-const inv_b2646 Bool)
(declare-const inv_b2647 Bool)
(declare-const inv_b2648 Bool)
(declare-const inv_b2649 Bool)
(declare-const inv_b2650 Bool)
(declare-const inv_b2651 Bool)
(declare-const inv_b2652 Bool)
(declare-const inv_b2653 Bool)
(declare-const inv_b2654 Bool)
(declare-const inv_b2655 Bool)
(declare-const inv_b2656 Bool)
(declare-const inv_b2657 Bool)
(declare-const inv_b2658 Bool)
(declare-const inv_b2659 Bool)
(declare-const inv_b2660 Bool)
(declare-const inv_b2661 Bool)
(declare-const inv_b2662 Bool)
(declare-const inv_b2663 Bool)
(declare-const inv_b2664 Bool)
(declare-const inv_b2665 Bool)
(declare-const inv_b2666 Bool)
(declare-const inv_b2667 Bool)
(declare-const inv_b2668 Bool)
(declare-const inv_b2669 Bool)
(declare-const inv_b2670 Bool)
(declare-const inv_b2671 Bool)
(declare-const inv_b2672 Bool)
(declare-const inv_b2673 Bool)
(declare-const inv_b2674 Bool)
(declare-const inv_b2675 Bool)
(declare-const inv_b2676 Bool)
(declare-const inv_b2677 Bool)
(declare-const inv_b2678 Bool)
(declare-const inv_b2679 Bool)
(declare-const inv_b2680 Bool)
(declare-const inv_b2681 Bool)
(declare-const inv_b2682 Bool)
(declare-const inv_b2683 Bool)
(declare-const inv_b2684 Bool)
(declare-const inv_b2685 Bool)
(declare-const inv_b2686 Bool)
(declare-const inv_b2687 Bool)
(declare-const inv_b2688 Bool)
(declare-const inv_b2689 Bool)
(declare-const inv_b2690 Bool)
(declare-const inv_b2691 Bool)
(declare-const inv_b2692 Bool)
(declare-const inv_b2693 Bool)
(declare-const inv_b2694 Bool)
(declare-const inv_b2695 Bool)
(declare-const inv_b2696 Bool)
(declare-const inv_b2697 Bool)
(declare-const inv_b2698 Bool)
(declare-const inv_b2699 Bool)
(declare-const inv_b2700 Bool)
(declare-const inv_b2701 Bool)
(declare-const inv_b2702 Bool)
(declare-const inv_b2703 Bool)
(declare-const inv_b2704 Bool)
(declare-const inv_b2705 Bool)
(declare-const inv_b2706 Bool)
(declare-const inv_b2707 Bool)
(declare-const inv_b2708 Bool)
(declare-const inv_b2709 Bool)
(declare-const inv_b2710 Bool)
(declare-const inv_b2711 Bool)
(declare-const inv_b2712 Bool)
(declare-const inv_b2713 Bool)
(declare-const inv_b2714 Bool)
(declare-const inv_b2715 Bool)
(declare-const inv_b2716 Bool)
(declare-const inv_b2717 Bool)
(declare-const inv_b2718 Bool)
(declare-const inv_b2719 Bool)
(declare-const inv_b2720 Bool)
(declare-const inv_b2721 Bool)
(declare-const inv_b2722 Bool)
(declare-const inv_b2723 Bool)
(declare-const inv_b2724 Bool)
(declare-const inv_b2725 Bool)
(declare-const inv_b2726 Bool)
(declare-const inv_b2727 Bool)
(declare-const inv_b2728 Bool)
(declare-const inv_b2729 Bool)
(declare-const inv_b2730 Bool)
(declare-const inv_b2731 Bool)
(declare-const inv_b2732 Bool)
(declare-const inv_b2733 Bool)
(declare-const inv_b2734 Bool)
(declare-const inv_b2735 Bool)
(declare-const inv_b2736 Bool)
(declare-const inv_b2737 Bool)
(declare-const inv_b2738 Bool)
(declare-const inv_b2739 Bool)
(declare-const inv_b2740 Bool)
(declare-const inv_b2741 Bool)
(declare-const inv_b2742 Bool)
(declare-const inv_b2743 Bool)
(declare-const inv_b2744 Bool)
(declare-const inv_b2745 Bool)
(declare-const inv_b2746 Bool)
(declare-const inv_b2747 Bool)
(declare-const inv_b2748 Bool)
(declare-const inv_b2749 Bool)
(declare-const inv_b2750 Bool)
(declare-const inv_b2751 Bool)
(declare-const inv_b2752 Bool)
(declare-const inv_b2753 Bool)
(declare-const inv_b2754 Bool)
(declare-const inv_b2755 Bool)
(declare-const inv_b2756 Bool)
(declare-const inv_b2757 Bool)
(declare-const inv_b2758 Bool)
(declare-const inv_b2759 Bool)
(declare-const inv_b2760 Bool)
(declare-const inv_b2761 Bool)
(declare-const inv_b2762 Bool)
(declare-const inv_b2763 Bool)
(declare-const inv_b2764 Bool)
(declare-const inv_b2765 Bool)
(declare-const inv_b2766 Bool)
(declare-const inv_b2767 Bool)
(declare-const inv_b2768 Bool)
(declare-const inv_b2769 Bool)
(declare-const inv_b2770 Bool)
(declare-const inv_b2771 Bool)
(declare-const inv_b2772 Bool)
(declare-const inv_b2773 Bool)
(declare-const inv_b2774 Bool)
(declare-const inv_b2775 Bool)
(declare-const inv_b2776 Bool)
(declare-const inv_b2777 Bool)
(declare-const inv_b2778 Bool)
(declare-const inv_b2779 Bool)
(declare-const inv_b2780 Bool)
(declare-const inv_b2781 Bool)
(declare-const inv_b2782 Bool)
(declare-const inv_b2783 Bool)
(declare-const inv_b2784 Bool)
(declare-const inv_b2785 Bool)
(declare-const inv_b2786 Bool)
(declare-const inv_b2787 Bool)
(declare-const inv_b2788 Bool)
(declare-const inv_b2789 Bool)
(declare-const inv_b2790 Bool)
(declare-const inv_b2791 Bool)
(declare-const inv_b2792 Bool)
(declare-const inv_b2793 Bool)
(declare-const inv_b2794 Bool)
(declare-const inv_b2795 Bool)
(declare-const inv_b2796 Bool)
(declare-const inv_b2797 Bool)
(declare-const inv_b2798 Bool)
(declare-const inv_b2799 Bool)
(declare-const inv_b2800 Bool)
(declare-const inv_b2801 Bool)
(declare-const inv_b2802 Bool)
(declare-const inv_b2803 Bool)
(declare-const inv_b2804 Bool)
(declare-const inv_b2805 Bool)
(declare-const inv_b2806 Bool)
(declare-const inv_b2807 Bool)
(declare-const inv_b2808 Bool)
(declare-const inv_b2809 Bool)
(declare-const inv_b2810 Bool)
(declare-const inv_b2811 Bool)
(declare-const inv_b2812 Bool)
(declare-const inv_b2813 Bool)
(declare-const inv_b2814 Bool)
(declare-const inv_b2815 Bool)
(declare-const inv_b2816 Bool)
(declare-const inv_b2817 Bool)
(declare-const inv_b2818 Bool)
(declare-const inv_b2819 Bool)
(declare-const inv_b2820 Bool)
(declare-const inv_b2821 Bool)
(declare-const inv_b2822 Bool)
(declare-const inv_b2823 Bool)
(declare-const inv_b2824 Bool)
(declare-const inv_b2825 Bool)
(declare-const inv_b2826 Bool)
(declare-const inv_b2827 Bool)
(declare-const inv_b2828 Bool)
(declare-const inv_b2829 Bool)
(declare-const inv_b2830 Bool)
(declare-const inv_b2831 Bool)
(declare-const inv_b2832 Bool)
(declare-const inv_b2833 Bool)
(declare-const inv_b2834 Bool)
(declare-const inv_b2835 Bool)
(declare-const inv_b2836 Bool)
(declare-const inv_b2837 Bool)
(declare-const inv_b2838 Bool)
(declare-const inv_b2839 Bool)
(declare-const inv_b2840 Bool)
(declare-const inv_b2841 Bool)
(declare-const inv_b2842 Bool)
(declare-const inv_b2843 Bool)
(declare-const inv_b2844 Bool)
(declare-const inv_b2845 Bool)
(declare-const inv_b2846 Bool)
(declare-const inv_b2847 Bool)
(declare-const inv_b2848 Bool)
(declare-const inv_b2849 Bool)
(declare-const inv_b2850 Bool)
(declare-const inv_b2851 Bool)

;Declaring functions corresponding to nonterminals
(define-fun inv_Node__1003 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2428 
 n1 
 n2)
)
(define-fun inv_Node__1537 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1722 
 n1 
 n2)
)
(define-fun inv_Node__544 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1377 
 n1 
 n2)
)
(define-fun inv_Node__1539 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1344 
 n1 
 n2)
)
(define-fun inv_Node__545 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1522 
 n1 
 n2)
)
(define-fun inv_Node__1653 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2359 
 n1 
 n2)
)
(define-fun inv_Node__1004 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2050 
 n1 
 n2)
)
(define-fun inv_Node__1158 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1639 
 n1 
 n2)
)
(define-fun inv_Node__1695 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1665 
 n1 
 n2)
)
(define-fun inv_Node__1756 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1576 
 n1 
 n2)
)
(define-fun inv_Node__529 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1737 
 n1 
 n2)
)
(define-fun inv_Node__1451 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1530 
 n1 
 n2)
)
(define-fun inv_Node__1701 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1559 
 n1 
 n2)
)
(define-fun inv_Node__663 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2326 
 n1 
 n2)
)
(define-fun inv_Node__390 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1914 
 n1 
 n2)
)
(define-fun inv_Node__1758 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2264 
 n1 
 n2)
)
(define-fun inv_Node__1047 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1405 
 n1 
 n2)
)
(define-fun inv_Node__1005 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2164 
 n1 
 n2)
)
(define-fun inv_Node__1198 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2322 
 n1 
 n2)
)
(define-fun inv_Node__527 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1948 
 n1 
 n2)
)
(define-fun inv_Node__1350 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2762 
 n1 
 n2)
)
(define-fun inv_Node__975 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1456 
 n1 
 n2)
)
(define-fun inv_Node__1144 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2114 
 n1 
 n2)
)
(define-fun inv_Node__892 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1758 
 n1 
 n2)
)
(define-fun inv_Node__388 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2689 
 n1 
 n2)
)
(define-fun inv_Node__528 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2143 
 n1 
 n2)
)
(define-fun inv_Node__936 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1872 
 n1 
 n2)
)
(define-fun inv_Node__695 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2835 
 n1 
 n2)
)
(define-fun inv_Node__935 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2799 
 n1 
 n2)
)
(define-fun inv_Node__389 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2061 
 n1 
 n2)
)
(define-fun inv_Node__1830 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1888 
 n1 
 n2)
)
(define-fun inv_Node__890 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2100 
 n1 
 n2)
)
(define-fun inv_Node__845 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2160 
 n1 
 n2)
)
(define-fun inv_Node__454 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1823 
 n1 
 n2)
)
(define-fun inv_Node__1831 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2029 
 n1 
 n2)
)
(define-fun inv_Node__738 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2790 
 n1 
 n2)
)
(define-fun inv_Node__1494 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2147 
 n1 
 n2)
)
(define-fun inv_Node__1463 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2299 
 n1 
 n2)
)
(define-fun inv_Node__546 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2307 
 n1 
 n2)
)
(define-fun inv_Node__1633 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2297 
 n1 
 n2)
)
(define-fun inv_Node__604 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1856 
 n1 
 n2)
)
(define-fun inv_Epoch__230 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1653 m s n1 n2))
)
(define-fun inv_Node__1156 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1620 
 n1 
 n2)
)
(define-fun inv_Node__906 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2602 
 n1 
 n2)
)
(define-fun inv_Node__1632 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2012 
 n1 
 n2)
)
(define-fun inv_Node__1780 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2714 
 n1 
 n2)
)
(define-fun inv_Node__1538 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1882 
 n1 
 n2)
)
(define-fun inv_Node__605 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1727 
 n1 
 n2)
)
(define-fun inv_Node__736 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2001 
 n1 
 n2)
)
(define-fun inv_Node__1199 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2129 
 n1 
 n2)
)
(define-fun inv_Node__714 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2615 
 n1 
 n2)
)
(define-fun inv_Node__1495 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2840 
 n1 
 n2)
)
(define-fun inv_Node__1630 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2478 
 n1 
 n2)
)
(define-fun inv_Node__218 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b679 
 n1 
 n2)
)
(define-fun inv_Node__740 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1921 
 n1 
 n2)
)
(define-fun inv_Node__1250 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2306 
 n1 
 n2)
)
(define-fun inv_Node__905 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2776 
 n1 
 n2)
)
(define-fun inv_Epoch__176 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__890 m s n1 n2))
)
(define-fun inv_Node__160 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1212 
 n1 
 n2)
)
(define-fun inv_Node__995 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2642 
 n1 
 n2)
)
(define-fun inv_Node__1657 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2414 
 n1 
 n2)
)
(define-fun inv_Node__1248 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2670 
 n1 
 n2)
)
(define-fun inv_Node__1779 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1897 
 n1 
 n2)
)
(define-fun inv_Node__937 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2750 
 n1 
 n2)
)
(define-fun inv_Node__1431 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1489 
 n1 
 n2)
)
(define-fun inv_Epoch__179 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1831 m s n1 n2))
)
(define-fun inv_Node__1331 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2693 
 n1 
 n2)
)
(define-fun inv_Node__691 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1433 
 n1 
 n2)
)
(define-fun inv_Node__1157 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2569 
 n1 
 n2)
)
(define-fun inv_Node__1496 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2120 
 n1 
 n2)
)
(define-fun inv_Node__1631 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1947 
 n1 
 n2)
)
(define-fun inv_Node__985 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1633 
 n1 
 n2)
)
(define-fun inv_Node__1475 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1714 
 n1 
 n2)
)
(define-fun inv_Node__124 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b843 
 n1 
 n2)
)
(define-fun inv_Node__1624 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2269 
 n1 
 n2)
)
(define-fun inv_Node__1626 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2739 
 n1 
 n2)
)
(define-fun inv_Node__384 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1607 
 n1 
 n2)
)
(define-fun inv_Atom_217 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b720 
 (held m s (inv_Node__544 m s n1 n2)) 
 (= (inv_Node__545 m s n1 n2) (inv_Node__546 m s n1 n2)))
)
(define-fun inv_Node__1584 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2500 
 n1 
 n2)
)
(define-fun inv_Node__1458 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1829 
 n1 
 n2)
)
(define-fun inv_Node__1737 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1759 
 n1 
 n2)
)
(define-fun inv_Node__1757 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1420 
 n1 
 n2)
)
(define-fun inv_Epoch__178 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1695 m s n1 n2))
)
(define-fun inv_Node__659 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2843 
 n1 
 n2)
)
(define-fun inv_Node__458 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2142 
 n1 
 n2)
)
(define-fun inv_Node__883 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2215 
 n1 
 n2)
)
(define-fun inv_Node__732 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2261 
 n1 
 n2)
)
(define-fun inv_Epoch__175 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1701 m s n1 n2))
)
(define-fun inv_Atom_213 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1012 
 (held m s (inv_Node__1156 m s n1 n2)) 
 (= (inv_Node__1157 m s n1 n2) (inv_Node__1158 m s n1 n2)))
)
(define-fun inv_Node__1484 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1933 
 n1 
 n2)
)
(define-fun inv_Node__1644 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1717 
 n1 
 n2)
)
(define-fun inv_Node__606 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2008 
 n1 
 n2)
)
(define-fun inv_Node__1587 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1873 
 n1 
 n2)
)
(define-fun inv_Node__161 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1178 
 n1 
 n2)
)
(define-fun inv_Atom_274 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1189 
 (held m s (inv_Node__1537 m s n1 n2)) 
 (= (inv_Node__1538 m s n1 n2) (inv_Node__1539 m s n1 n2)))
)
(define-fun inv_Node__318 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b644 
 n1 
 n2)
)
(define-fun inv_Node__1329 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2343 
 n1 
 n2)
)
(define-fun inv_Node__446 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1419 
 n1 
 n2)
)
(define-fun inv_Node__512 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2137 
 n1 
 n2)
)
(define-fun inv_Node__884 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1538 
 n1 
 n2)
)
(define-fun inv_Atom_211 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b929 
 (held m s (inv_Node__1003 m s n1 n2)) 
 (= (inv_Node__1004 m s n1 n2) (inv_Node__1005 m s n1 n2)))
)
(define-fun inv_Node__1564 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1838 
 n1 
 n2)
)
(define-fun inv_Node__1604 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2664 
 n1 
 n2)
)
(define-fun inv_Node__162 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b740 
 n1 
 n2)
)
(define-fun inv_Node__539 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1430 
 n1 
 n2)
)
(define-fun inv_Node__1453 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1636 
 n1 
 n2)
)
(define-fun inv_Node__1465 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1939 
 n1 
 n2)
)
(define-fun inv_Node__984 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1710 
 n1 
 n2)
)
(define-fun inv_Node__1752 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1390 
 n1 
 n2)
)
(define-fun inv_Node__1114 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2044 
 n1 
 n2)
)
(define-fun inv_Node__713 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2253 
 n1 
 n2)
)
(define-fun inv_Node__966 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1520 
 n1 
 n2)
)
(define-fun inv_Node__1658 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2388 
 n1 
 n2)
)
(define-fun inv_Node__973 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2214 
 n1 
 n2)
)
(define-fun inv_Node__385 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1995 
 n1 
 n2)
)
(define-fun inv_Node__1622 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2640 
 n1 
 n2)
)
(define-fun inv_Node__1116 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2340 
 n1 
 n2)
)
(define-fun inv_Node__1568 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2483 
 n1 
 n2)
)
(define-fun inv_Node__460 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2289 
 n1 
 n2)
)
(define-fun inv_Atom_215 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1282 
 (held m s (inv_Node__1756 m s n1 n2)) 
 (= (inv_Node__1757 m s n1 n2) (inv_Node__1758 m s n1 n2)))
)
(define-fun inv_Node__216 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b866 
 n1 
 n2)
)
(define-fun inv_Node__1659 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2048 
 n1 
 n2)
)
(define-fun inv_Node__1452 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2472 
 n1 
 n2)
)
(define-fun inv_Node__1462 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2148 
 n1 
 n2)
)
(define-fun inv_Epoch__177 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1568 m s n1 n2))
)
(define-fun inv_Node__1038 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1732 
 n1 
 n2)
)
(define-fun inv_Node__904 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2006 
 n1 
 n2)
)
(define-fun inv_Node__1257 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2277 
 n1 
 n2)
)
(define-fun inv_Atom_275 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b628 
 (held m s (inv_Node__388 m s n1 n2)) 
 (= (inv_Node__389 m s n1 n2) (inv_Node__390 m s n1 n2)))
)
(define-fun inv_Node__463 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2351 
 n1 
 n2)
)
(define-fun inv_Node__690 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1569 
 n1 
 n2)
)
(define-fun inv_Node__1115 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2110 
 n1 
 n2)
)
(define-fun inv_Atom_278 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b709 
 (held m s (inv_Node__527 m s n1 n2)) 
 (= (inv_Node__528 m s n1 n2) (inv_Node__529 m s n1 n2)))
)
(define-fun inv_Node__1398 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2815 
 n1 
 n2)
)
(define-fun inv_Node__1200 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2466 
 n1 
 n2)
)
(define-fun inv_Node__685 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1391 
 n1 
 n2)
)
(define-fun inv_Node__532 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2553 
 n1 
 n2)
)
(define-fun inv_Node__1287 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1618 
 n1 
 n2)
)
(define-fun inv_Node__190 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b799 
 n1 
 n2)
)
(define-fun inv_Node__214 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1221 
 n1 
 n2)
)
(define-fun inv_Node__661 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2166 
 n1 
 n2)
)
(define-fun inv_Node__1599 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1352 
 n1 
 n2)
)
(define-fun inv_Node__541 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1781 
 n1 
 n2)
)
(define-fun inv_Node__662 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2062 
 n1 
 n2)
)
(define-fun inv_Node__1356 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2201 
 n1 
 n2)
)
(define-fun inv_Node__1625 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2231 
 n1 
 n2)
)
(define-fun inv_Node__1286 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2104 
 n1 
 n2)
)
(define-fun inv_Node__533 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2742 
 n1 
 n2)
)
(define-fun inv_Node__1689 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1968 
 n1 
 n2)
)
(define-fun inv_Node__1190 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1775 
 n1 
 n2)
)
(define-fun inv_Node__765 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2686 
 n1 
 n2)
)
(define-fun inv_Node__957 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2373 
 n1 
 n2)
)
(define-fun inv_Node__1691 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1736 
 n1 
 n2)
)
(define-fun inv_Node__1355 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1806 
 n1 
 n2)
)
(define-fun inv_Node__1645 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2155 
 n1 
 n2)
)
(define-fun inv_Node__489 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1494 
 n1 
 n2)
)
(define-fun inv_Epoch__231 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1350 m s n1 n2))
)
(define-fun inv_Node__974 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1534 
 n1 
 n2)
)
(define-fun inv_Node__678 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1547 
 n1 
 n2)
)
(define-fun inv_Atom_276 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1153 
 (held m s (inv_Node__1451 m s n1 n2)) 
 (= (inv_Node__1452 m s n1 n2) (inv_Node__1453 m s n1 n2)))
)
(define-fun inv_Node__1001 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2367 
 n1 
 n2)
)
(define-fun inv_Node__1751 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1891 
 n1 
 n2)
)
(define-fun inv_Node__1354 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1999 
 n1 
 n2)
)
(define-fun inv_Node__664 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2381 
 n1 
 n2)
)
(define-fun inv_Node__456 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1386 
 n1 
 n2)
)
(define-fun inv_Node__1174 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1441 
 n1 
 n2)
)
(define-fun inv_Node__1593 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2805 
 n1 
 n2)
)
(define-fun inv_Atom_212 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1105 
 (held m s (inv_Node__1354 m s n1 n2)) 
 (= (inv_Node__1355 m s n1 n2) (inv_Node__1356 m s n1 n2)))
)
(define-fun inv_Node__870 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1395 
 n1 
 n2)
)
(define-fun inv_Node__1567 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1733 
 n1 
 n2)
)
(define-fun inv_Node__1774 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1730 
 n1 
 n2)
)
(define-fun inv_Node__572 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2820 
 n1 
 n2)
)
(define-fun inv_Node__759 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1678 
 n1 
 n2)
)
(define-fun inv_Node__1137 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2096 
 n1 
 n2)
)
(define-fun inv_Node__1550 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2408 
 n1 
 n2)
)
(define-fun inv_Node__1828 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2800 
 n1 
 n2)
)
(define-fun inv_Node__958 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2391 
 n1 
 n2)
)
(define-fun inv_Atom_216 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1241 
 (held m s (inv_Node__1657 m s n1 n2)) 
 (= (inv_Node__1658 m s n1 n2) (inv_Node__1659 m s n1 n2)))
)
(define-fun inv_Node__368 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2536 
 n1 
 n2)
)
(define-fun inv_Node__665 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2782 
 n1 
 n2)
)
(define-fun inv_Node__513 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2562 
 n1 
 n2)
)
(define-fun inv_Node__435 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2338 
 n1 
 n2)
)
(define-fun inv_Node__1270 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2192 
 n1 
 n2)
)
(define-fun inv_Node__215 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b750 
 n1 
 n2)
)
(define-fun inv_Atom_277 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1029 
 (held m s (inv_Node__1198 m s n1 n2)) 
 (= (inv_Node__1199 m s n1 n2) (inv_Node__1200 m s n1 n2)))
)
(define-fun inv_Node__1576 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1349 
 n1 
 n2)
)
(define-fun inv_Node__404 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1937 
 n1 
 n2)
)
(define-fun inv_Node__478 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2467 
 n1 
 n2)
)
(define-fun inv_Node__959 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2511 
 n1 
 n2)
)
(define-fun inv_Node__130 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1089 
 n1 
 n2)
)
(define-fun inv_Node__1461 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2007 
 n1 
 n2)
)
(define-fun inv_Node__917 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2363 
 n1 
 n2)
)
(define-fun inv_Node__530 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2632 
 n1 
 n2)
)
(define-fun inv_Node__1519 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2430 
 n1 
 n2)
)
(define-fun inv_Node__1649 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2620 
 n1 
 n2)
)
(define-fun inv_Node__1559 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2475 
 n1 
 n2)
)
(define-fun inv_Node__1173 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2108 
 n1 
 n2)
)
(define-fun inv_Atom_352 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b904 
 (held m s (inv_Node__957 m s n1 n2)) 
 (= (inv_Node__958 m s n1 n2) (inv_Node__959 m s n1 n2)))
)
(define-fun inv_Epoch__146 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1830 m s n1 n2))
)
(define-fun inv_Node__1397 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2426 
 n1 
 n2)
)
(define-fun inv_Node__1060 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1850 
 n1 
 n2)
)
(define-fun inv_Node__1647 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1675 
 n1 
 n2)
)
(define-fun inv_Node__1399 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1895 
 n1 
 n2)
)
(define-fun inv_Node__1238 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2631 
 n1 
 n2)
)
(define-fun inv_Node__1490 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2754 
 n1 
 n2)
)
(define-fun inv_Node__1848 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1531 
 n1 
 n2)
)
(define-fun inv_Node__494 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1573 
 n1 
 n2)
)
(define-fun inv_Node__1132 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1437 
 n1 
 n2)
)
(define-fun inv_Node__514 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2310 
 n1 
 n2)
)
(define-fun inv_Epoch__229 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1144 m s n1 n2))
)
(define-fun inv_Node__915 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1903 
 n1 
 n2)
)
(define-fun inv_Node__1239 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2481 
 n1 
 n2)
)
(define-fun inv_Node__1791 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1505 
 n1 
 n2)
)
(define-fun inv_Node__903 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2525 
 n1 
 n2)
)
(define-fun inv_Node__1464 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2095 
 n1 
 n2)
)
(define-fun inv_Node__402 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2529 
 n1 
 n2)
)
(define-fun inv_Node__1043 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2798 
 n1 
 n2)
)
(define-fun inv_Node__1383 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2099 
 n1 
 n2)
)
(define-fun inv_Node__1069 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2161 
 n1 
 n2)
)
(define-fun inv_Epoch__325 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__892 m s n1 n2))
)
(define-fun inv_Atom_82 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b777 
 (held m s (inv_Node__663 m s n1 n2)) 
 (= (inv_Node__664 m s n1 n2) (inv_Node__665 m s n1 n2)))
)
(define-fun inv_Node__308 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1044 
 n1 
 n2)
)
(define-fun inv_Epoch__228 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__845 m s n1 n2))
)
(define-fun inv_Node__965 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1548 
 n1 
 n2)
)
(define-fun inv_Node__1131 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2276 
 n1 
 n2)
)
(define-fun inv_Node__897 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1809 
 n1 
 n2)
)
(define-fun inv_Node__1040 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2320 
 n1 
 n2)
)
(define-fun inv_Node__1101 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2282 
 n1 
 n2)
)
(define-fun inv_Node__1476 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1695 
 n1 
 n2)
)
(define-fun inv_Node__217 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b673 
 n1 
 n2)
)
(define-fun inv_Node__1384 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1477 
 n1 
 n2)
)
(define-fun inv_Node__741 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1807 
 n1 
 n2)
)
(define-fun inv_Node__1154 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2625 
 n1 
 n2)
)
(define-fun inv_Node__1044 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1638 
 n1 
 n2)
)
(define-fun inv_Node__122 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1192 
 n1 
 n2)
)
(define-fun inv_Node__742 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2554 
 n1 
 n2)
)
(define-fun inv_Node__752 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1739 
 n1 
 n2)
)
(define-fun inv_Node__1801 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1763 
 n1 
 n2)
)
(define-fun inv_Node__1382 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2040 
 n1 
 n2)
)
(define-fun inv_Node__782 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2290 
 n1 
 n2)
)
(define-fun inv_Node__1690 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1346 
 n1 
 n2)
)
(define-fun inv_Node__395 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2069 
 n1 
 n2)
)
(define-fun inv_Atom_179 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b896 
 (held m s (inv_Node__935 m s n1 n2)) 
 (= (inv_Node__936 m s n1 n2) (inv_Node__937 m s n1 n2)))
)
(define-fun inv_Node__531 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1655 
 n1 
 n2)
)
(define-fun inv_Node__1364 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1772 
 n1 
 n2)
)
(define-fun inv_Node__1512 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1667 
 n1 
 n2)
)
(define-fun inv_Node__1648 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2413 
 n1 
 n2)
)
(define-fun inv_Node__611 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1676 
 n1 
 n2)
)
(define-fun inv_Epoch__327 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1047 m s n1 n2))
)
(define-fun inv_Node__556 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1978 
 n1 
 n2)
)
(define-fun inv_Node__1646 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1989 
 n1 
 n2)
)
(define-fun inv_Node__307 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1297 
 n1 
 n2)
)
(define-fun inv_Node__1035 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1603 
 n1 
 n2)
)
(define-fun inv_Atom_341 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b914 
 (held m s (inv_Node__973 m s n1 n2)) 
 (= (inv_Node__974 m s n1 n2) (inv_Node__975 m s n1 n2)))
)
(define-fun inv_Node__1439 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1544 
 n1 
 n2)
)
(define-fun inv_Node__1099 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1500 
 n1 
 n2)
)
(define-fun inv_Node__133 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1166 
 n1 
 n2)
)
(define-fun inv_Epoch__233 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__454 m s n1 n2))
)
(define-fun inv_Node__477 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2831 
 n1 
 n2)
)
(define-fun inv_Node__1714 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2851 
 n1 
 n2)
)
(define-fun inv_Node__453 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2223 
 n1 
 n2)
)
(define-fun inv_Node__1517 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2551 
 n1 
 n2)
)
(define-fun inv_Node__1133 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1590 
 n1 
 n2)
)
(define-fun inv_Node__1565 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2374 
 n1 
 n2)
)
(define-fun inv_Node__1127 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1817 
 n1 
 n2)
)
(define-fun inv_Atom_339 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1232 
 (held m s (inv_Node__1630 m s n1 n2)) 
 (= (inv_Node__1631 m s n1 n2) (inv_Node__1632 m s n1 n2)))
)
(define-fun inv_Node__895 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1811 
 n1 
 n2)
)
(define-fun inv_Node__640 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1708 
 n1 
 n2)
)
(define-fun inv_Node__1788 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2421 
 n1 
 n2)
)
(define-fun inv_Node__1039 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2703 
 n1 
 n2)
)
(define-fun inv_Node__1433 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1832 
 n1 
 n2)
)
(define-fun inv_Node__1002 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2070 
 n1 
 n2)
)
(define-fun inv_Atom_79 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1157 
 (held m s (inv_Node__1463 m s n1 n2)) 
 (= (inv_Node__1464 m s n1 n2) (inv_Node__1465 m s n1 n2)))
)
(define-fun inv_Node__1781 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1767 
 n1 
 n2)
)
(define-fun inv_Node__1249 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2691 
 n1 
 n2)
)
(define-fun inv_Node__1767 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2501 
 n1 
 n2)
)
(define-fun inv_Node__712 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1574 
 n1 
 n2)
)
(define-fun inv_Node__963 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1886 
 n1 
 n2)
)
(define-fun inv_Node__427 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1606 
 n1 
 n2)
)
(define-fun inv_Node__1742 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2556 
 n1 
 n2)
)
(define-fun inv_Node__1615 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1704 
 n1 
 n2)
)
(define-fun inv_Node__1790 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2493 
 n1 
 n2)
)
(define-fun inv_Node__898 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2014 
 n1 
 n2)
)
(define-fun inv_Node__739 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2053 
 n1 
 n2)
)
(define-fun inv_Node__1432 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1343 
 n1 
 n2)
)
(define-fun inv_Node__616 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1731 
 n1 
 n2)
)
(define-fun inv_Node__159 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b713 
 n1 
 n2)
)
(define-fun inv_Node__1597 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2287 
 n1 
 n2)
)
(define-fun inv_Node__521 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2212 
 n1 
 n2)
)
(define-fun inv_Node__1557 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2377 
 n1 
 n2)
)
(define-fun inv_Node__1738 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2088 
 n1 
 n2)
)
(define-fun inv_Node__1492 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1835 
 n1 
 n2)
)
(define-fun inv_Node__737 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1896 
 n1 
 n2)
)
(define-fun inv_Epoch__62 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__966 m s n1 n2))
)
(define-fun inv_Node__617 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1565 
 n1 
 n2)
)
(define-fun inv_Node__1231 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2633 
 n1 
 n2)
)
(define-fun inv_Node__1771 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1719 
 n1 
 n2)
)
(define-fun inv_Node__761 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2074 
 n1 
 n2)
)
(define-fun inv_Epoch__61 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1633 m s n1 n2))
)
(define-fun inv_Atom_78 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1230 
 (held m s (inv_Node__1624 m s n1 n2)) 
 (= (inv_Node__1625 m s n1 n2) (inv_Node__1626 m s n1 n2)))
)
(define-fun inv_Node__802 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2024 
 n1 
 n2)
)
(define-fun inv_Node__1404 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2429 
 n1 
 n2)
)
(define-fun inv_Node__1282 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1786 
 n1 
 n2)
)
(define-fun inv_Node__134 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1163 
 n1 
 n2)
)
(define-fun inv_Node__438 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1482 
 n1 
 n2)
)
(define-fun inv_Node__433 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2218 
 n1 
 n2)
)
(define-fun inv_Node__1082 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2657 
 n1 
 n2)
)
(define-fun inv_Node__1361 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2542 
 n1 
 n2)
)
(define-fun inv_Node__781 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2139 
 n1 
 n2)
)
(define-fun inv_Node__829 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2325 
 n1 
 n2)
)
(define-fun inv_Node__1598 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2334 
 n1 
 n2)
)
(define-fun inv_Node__1128 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2491 
 n1 
 n2)
)
(define-fun inv_Node__1585 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2733 
 n1 
 n2)
)
(define-fun inv_Node__1390 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2256 
 n1 
 n2)
)
(define-fun inv_Node__1513 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1571 
 n1 
 n2)
)
(define-fun inv_Node__1430 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2735 
 n1 
 n2)
)
(define-fun inv_Node__1330 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2644 
 n1 
 n2)
)
(define-fun inv_Node__1753 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2086 
 n1 
 n2)
)
(define-fun inv_Node__1806 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2849 
 n1 
 n2)
)
(define-fun inv_Node__1071 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1416 
 n1 
 n2)
)
(define-fun inv_Node__1152 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1930 
 n1 
 n2)
)
(define-fun inv_Node__660 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1512 
 n1 
 n2)
)
(define-fun inv_Node__270 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1082 
 n1 
 n2)
)
(define-fun inv_Node__1569 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1697 
 n1 
 n2)
)
(define-fun inv_Node__1574 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2622 
 n1 
 n2)
)
(define-fun inv_Epoch__144 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__695 m s n1 n2))
)
(define-fun inv_Node__386 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1556 
 n1 
 n2)
)
(define-fun inv_Node__1847 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2386 
 n1 
 n2)
)
(define-fun inv_Node__983 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2656 
 n1 
 n2)
)
(define-fun inv_Node__789 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2157 
 n1 
 n2)
)
(define-fun inv_Node__1407 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2808 
 n1 
 n2)
)
(define-fun inv_Node__1061 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2546 
 n1 
 n2)
)
(define-fun inv_Node__502 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2574 
 n1 
 n2)
)
(define-fun inv_Node__1018 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2676 
 n1 
 n2)
)
(define-fun inv_Node__403 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1953 
 n1 
 n2)
)
(define-fun inv_Node__1215 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2659 
 n1 
 n2)
)
(define-fun inv_Node__464 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1471 
 n1 
 n2)
)
(define-fun inv_Node__1348 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1455 
 n1 
 n2)
)
(define-fun inv_Node__447 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1662 
 n1 
 n2)
)
(define-fun inv_Node__163 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b746 
 n1 
 n2)
)
(define-fun inv_Node__345 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b686 
 n1 
 n2)
)
(define-fun inv_Atom_279 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1173 
 (held m s (inv_Node__1494 m s n1 n2)) 
 (= (inv_Node__1495 m s n1 n2) (inv_Node__1496 m s n1 n2)))
)
(define-fun inv_Node__383 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1421 
 n1 
 n2)
)
(define-fun inv_Node__1175 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1626 
 n1 
 n2)
)
(define-fun inv_Node__1051 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1728 
 n1 
 n2)
)
(define-fun inv_Node__896 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1792 
 n1 
 n2)
)
(define-fun inv_Node__803 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2494 
 n1 
 n2)
)
(define-fun inv_Node__283 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1175 
 n1 
 n2)
)
(define-fun inv_Atom_176 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b881 
 (held m s (inv_Node__903 m s n1 n2)) 
 (= (inv_Node__904 m s n1 n2) (inv_Node__905 m s n1 n2)))
)
(define-fun inv_Node__1548 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1990 
 n1 
 n2)
)
(define-fun inv_Node__1421 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1378 
 n1 
 n2)
)
(define-fun inv_Node__1873 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2300 
 n1 
 n2)
)
(define-fun inv_Epoch__232 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__611 m s n1 n2))
)
(define-fun inv_Epoch__149 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1788 m s n1 n2))
)
(define-fun inv_Node__1849 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1668 
 n1 
 n2)
)
(define-fun inv_Node__733 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1876 
 n1 
 n2)
)
(define-fun inv_Node__1729 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1694 
 n1 
 n2)
)
(define-fun inv_Node__766 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2115 
 n1 
 n2)
)
(define-fun inv_Node__743 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1934 
 n1 
 n2)
)
(define-fun inv_Atom_181 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b804 
 (held m s (inv_Node__736 m s n1 n2)) 
 (= (inv_Node__737 m s n1 n2) (inv_Node__738 m s n1 n2)))
)
(define-fun inv_Node__1549 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2158 
 n1 
 n2)
)
(define-fun inv_Node__1083 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1868 
 n1 
 n2)
)
(define-fun inv_Node__1555 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1774 
 n1 
 n2)
)
(define-fun inv_Node__1744 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2596 
 n1 
 n2)
)
(define-fun inv_Node__1588 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2072 
 n1 
 n2)
)
(define-fun inv_Atom_342 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1236 
 (held m s (inv_Node__1644 m s n1 n2)) 
 (= (inv_Node__1645 m s n1 n2) (inv_Node__1646 m s n1 n2)))
)
(define-fun inv_Node__1854 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2427 
 n1 
 n2)
)
(define-fun inv_Node__411 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2682 
 n1 
 n2)
)
(define-fun inv_Atom_288 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1048 
 (held m s (inv_Node__1248 m s n1 n2)) 
 (= (inv_Node__1249 m s n1 n2) (inv_Node__1250 m s n1 n2)))
)
(define-fun inv_Node__923 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1610 
 n1 
 n2)
)
(define-fun inv_Node__583 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1508 
 n1 
 n2)
)
(define-fun inv_Node__441 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2171 
 n1 
 n2)
)
(define-fun inv_Node__511 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2617 
 n1 
 n2)
)
(define-fun inv_Node__439 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2248 
 n1 
 n2)
)
(define-fun inv_Node__1477 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1836 
 n1 
 n2)
)
(define-fun inv_Node__1184 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2073 
 n1 
 n2)
)
(define-fun inv_Node__911 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1979 
 n1 
 n2)
)
(define-fun inv_Atom_340 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b745 
 (held m s (inv_Node__604 m s n1 n2)) 
 (= (inv_Node__605 m s n1 n2) (inv_Node__606 m s n1 n2)))
)
(define-fun inv_Node__1054 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1492 
 n1 
 n2)
)
(define-fun inv_Node__394 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2004 
 n1 
 n2)
)
(define-fun inv_Epoch__329 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1190 m s n1 n2))
)
(define-fun inv_Node__581 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1568 
 n1 
 n2)
)
(define-fun inv_Node__1256 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2209 
 n1 
 n2)
)
(define-fun inv_Node__1575 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1673 
 n1 
 n2)
)
(define-fun inv_Node__827 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1825 
 n1 
 n2)
)
(define-fun inv_Node__110 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1050 
 n1 
 n2)
)
(define-fun inv_Node__1716 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2327 
 n1 
 n2)
)
(define-fun inv_Epoch__220 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__740 m s n1 n2))
)
(define-fun inv_Node__612 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2020 
 n1 
 n2)
)
(define-fun inv_Node__588 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1646 
 n1 
 n2)
)
(define-fun inv_Epoch__122 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__427 m s n1 n2))
)
(define-fun inv_Node__1502 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2288 
 n1 
 n2)
)
(define-fun inv_Node__755 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1870 
 n1 
 n2)
)
(define-fun inv_Node__1775 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1742 
 n1 
 n2)
)
(define-fun inv_Node__269 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b963 
 n1 
 n2)
)
(define-fun inv_Atom_387 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b922 
 (held m s (inv_Node__983 m s n1 n2)) 
 (= (inv_Node__984 m s n1 n2) (inv_Node__985 m s n1 n2)))
)
(define-fun inv_Node__1373 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1567 
 n1 
 n2)
)
(define-fun inv_Node__1216 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1447 
 n1 
 n2)
)
(define-fun inv_Node__457 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1458 
 n1 
 n2)
)
(define-fun inv_Node__962 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1643 
 n1 
 n2)
)
(define-fun inv_Node__763 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2847 
 n1 
 n2)
)
(define-fun inv_Node__1544 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1837 
 n1 
 n2)
)
(define-fun inv_Node__964 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2817 
 n1 
 n2)
)
(define-fun inv_Node__857 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2383 
 n1 
 n2)
)
(define-fun inv_Node__762 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2778 
 n1 
 n2)
)
(define-fun inv_Node__1283 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2672 
 n1 
 n2)
)
(define-fun inv_Atom_178 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1162 
 (held m s (inv_Node__1475 m s n1 n2)) 
 (= (inv_Node__1476 m s n1 n2) (inv_Node__1477 m s n1 n2)))
)
(define-fun inv_Node__1100 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1969 
 n1 
 n2)
)
(define-fun inv_Node__939 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2568 
 n1 
 n2)
)
(define-fun inv_Node__674 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1794 
 n1 
 n2)
)
(define-fun inv_Node__1652 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2281 
 n1 
 n2)
)
(define-fun inv_Node__1735 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2081 
 n1 
 n2)
)
(define-fun inv_Node__753 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1976 
 n1 
 n2)
)
(define-fun inv_Node__534 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1436 
 n1 
 n2)
)
(define-fun inv_Epoch__296 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1490 m s n1 n2))
)
(define-fun inv_Node__1808 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2422 
 n1 
 n2)
)
(define-fun inv_Node__1237 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2333 
 n1 
 n2)
)
(define-fun inv_Node__848 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1790 
 n1 
 n2)
)
(define-fun inv_Node__885 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2250 
 n1 
 n2)
)
(define-fun inv_Node__311 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1280 
 n1 
 n2)
)
(define-fun inv_Node__689 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2134 
 n1 
 n2)
)
(define-fun inv_Node__459 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2376 
 n1 
 n2)
)
(define-fun inv_Atom_280 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b712 
 (held m s (inv_Node__532 m s n1 n2)) 
 (= (inv_Node__533 m s n1 n2) (inv_Node__534 m s n1 n2)))
)
(define-fun inv_Node__1165 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2804 
 n1 
 n2)
)
(define-fun inv_Node__507 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1892 
 n1 
 n2)
)
(define-fun inv_Node__799 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2222 
 n1 
 n2)
)
(define-fun inv_Node__1318 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1830 
 n1 
 n2)
)
(define-fun inv_Node__1055 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2746 
 n1 
 n2)
)
(define-fun inv_Node__1360 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1682 
 n1 
 n2)
)
(define-fun inv_Node__1314 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2345 
 n1 
 n2)
)
(define-fun inv_Node__1527 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1654 
 n1 
 n2)
)
(define-fun inv_Node__1049 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2669 
 n1 
 n2)
)
(define-fun inv_Node__1247 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2131 
 n1 
 n2)
)
(define-fun inv_Node__548 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2484 
 n1 
 n2)
)
(define-fun inv_Atom_265 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b698 
 (held m s (inv_Node__512 m s n1 n2)) 
 (= (inv_Node__513 m s n1 n2) (inv_Node__514 m s n1 n2)))
)
(define-fun inv_Node__1167 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2395 
 n1 
 n2)
)
(define-fun inv_Node__901 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2471 
 n1 
 n2)
)
(define-fun inv_Node__1795 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2102 
 n1 
 n2)
)
(define-fun inv_Node__41 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b855 
 n1 
 n2)
)
(define-fun inv_Node__735 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2652 
 n1 
 n2)
)
(define-fun inv_Atom_388 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b871 
 (held m s (inv_Node__883 m s n1 n2)) 
 (= (inv_Node__884 m s n1 n2) (inv_Node__885 m s n1 n2)))
)
(define-fun inv_Node__278 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1025 
 n1 
 n2)
)
(define-fun inv_Node__1734 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1791 
 n1 
 n2)
)
(define-fun inv_Epoch__294 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1270 m s n1 n2))
)
(define-fun inv_Node__431 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2228 
 n1 
 n2)
)
(define-fun inv_Atom_438 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1220 
 (held m s (inv_Node__1597 m s n1 n2)) 
 (= (inv_Node__1598 m s n1 n2) (inv_Node__1599 m s n1 n2)))
)
(define-fun inv_Epoch__218 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1439 m s n1 n2))
)
(define-fun inv_Epoch__367 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__539 m s n1 n2))
)
(define-fun inv_Node__442 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2583 
 n1 
 n2)
)
(define-fun inv_Node__1743 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2692 
 n1 
 n2)
)
(define-fun inv_Node__1203 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2293 
 n1 
 n2)
)
(define-fun inv_Node__1533 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2600 
 n1 
 n2)
)
(define-fun inv_Node__1381 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2205 
 n1 
 n2)
)
(define-fun inv_Node__549 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1907 
 n1 
 n2)
)
(define-fun inv_Node__109 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1124 
 n1 
 n2)
)
(define-fun inv_Node__585 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1899 
 n1 
 n2)
)
(define-fun inv_Epoch__326 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1421 m s n1 n2))
)
(define-fun inv_Epoch__143 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1431 m s n1 n2))
)
(define-fun inv_Node__1048 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1880 
 n1 
 n2)
)
(define-fun inv_Node__472 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2076 
 n1 
 n2)
)
(define-fun inv_Node__398 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2446 
 n1 
 n2)
)
(define-fun inv_Node__791 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1706 
 n1 
 n2)
)
(define-fun inv_Epoch__328 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1484 m s n1 n2))
)
(define-fun inv_Atom_435 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1279 
 (held m s (inv_Node__1751 m s n1 n2)) 
 (= (inv_Node__1752 m s n1 n2) (inv_Node__1753 m s n1 n2)))
)
(define-fun inv_Node__1288 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2658 
 n1 
 n2)
)
(define-fun inv_Epoch__145 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__965 m s n1 n2))
)
(define-fun inv_Node__1583 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2441 
 n1 
 n2)
)
(define-fun inv_Node__1777 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2127 
 n1 
 n2)
)
(define-fun inv_Node__397 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2459 
 n1 
 n2)
)
(define-fun inv_Node__916 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1700 
 n1 
 n2)
)
(define-fun inv_Atom_389 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1130 
 (held m s (inv_Node__1397 m s n1 n2)) 
 (= (inv_Node__1398 m s n1 n2) (inv_Node__1399 m s n1 n2)))
)
(define-fun inv_Node__610 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1435 
 n1 
 n2)
)
(define-fun inv_Node__609 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1770 
 n1 
 n2)
)
(define-fun inv_Node__992 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1749 
 n1 
 n2)
)
(define-fun inv_Node__1803 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1454 
 n1 
 n2)
)
(define-fun inv_Node__1563 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2054 
 n1 
 n2)
)
(define-fun inv_Node__1050 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1810 
 n1 
 n2)
)
(define-fun inv_Node__641 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2021 
 n1 
 n2)
)
(define-fun inv_Atom_28 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b363 
 (held m s (inv_Node__214 m s n1 n2)) 
 (ite inv_b364 
 (locked m s (inv_Epoch__228 m s n1 n2) (inv_Node__215 m s n1 n2)) 
 (ite inv_b365 
 (transfer m s (inv_Epoch__229 m s n1 n2) (inv_Node__216 m s n1 n2)) 
 (ite inv_b366 
 (le m (inv_Epoch__230 m s n1 n2) (inv_Epoch__231 m s n1 n2)) 
 (ite inv_b367 
 (= (inv_Node__217 m s n1 n2) (inv_Node__218 m s n1 n2)) 
 (ite inv_b368 
 (= (inv_Epoch__232 m s n1 n2) (inv_Epoch__233 m s n1 n2)) 
 (ite inv_b369 
 (and (inv_Atom_274 m s n1 n2) (inv_Atom_275 m s n1 n2)) 
 (ite inv_b370 
 (or (inv_Atom_276 m s n1 n2) (inv_Atom_277 m s n1 n2)) 
 (ite inv_b371 
 (=> (inv_Atom_278 m s n1 n2) (inv_Atom_279 m s n1 n2)) 
 (not (inv_Atom_280 m s n1 n2)))))))))))
)
(define-fun inv_Node__1163 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1496 
 n1 
 n2)
)
(define-fun inv_Atom_390 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1121 
 (held m s (inv_Node__1382 m s n1 n2)) 
 (= (inv_Node__1383 m s n1 n2) (inv_Node__1384 m s n1 n2)))
)
(define-fun inv_Node__1528 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2821 
 n1 
 n2)
)
(define-fun inv_Node__722 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2275 
 n1 
 n2)
)
(define-fun inv_Epoch__17 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__41 m s n1 n2))
)
(define-fun inv_Node__858 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1761 
 n1 
 n2)
)
(define-fun inv_Epoch__140 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__897 m s n1 n2))
)
(define-fun inv_Node__1715 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2812 
 n1 
 n2)
)
(define-fun inv_Node__1684 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1949 
 n1 
 n2)
)
(define-fun inv_Atom_356 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b943 
 (held m s (inv_Node__1038 m s n1 n2)) 
 (= (inv_Node__1039 m s n1 n2) (inv_Node__1040 m s n1 n2)))
)
(define-fun inv_Node__1872 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2065 
 n1 
 n2)
)
(define-fun inv_Epoch__16 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__124 m s n1 n2))
)
(define-fun inv_Node__1000 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1693 
 n1 
 n2)
)
(define-fun inv_Node__851 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1723 
 n1 
 n2)
)
(define-fun inv_Node__697 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1756 
 n1 
 n2)
)
(define-fun inv_Node__1412 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2578 
 n1 
 n2)
)
(define-fun inv_Node__260 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1004 
 n1 
 n2)
)
(define-fun inv_Node__1613 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2156 
 n1 
 n2)
)
(define-fun inv_Node__550 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1683 
 n1 
 n2)
)
(define-fun inv_Atom_214 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b988 
 (held m s (inv_Node__1114 m s n1 n2)) 
 (= (inv_Node__1115 m s n1 n2) (inv_Node__1116 m s n1 n2)))
)
(define-fun inv_Epoch__363 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1458 m s n1 n2))
)
(define-fun inv_Node__1650 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1938 
 n1 
 n2)
)
(define-fun inv_Node__547 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2601 
 n1 
 n2)
)
(define-fun inv_Node__1218 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1962 
 n1 
 n2)
)
(define-fun inv_Node__143 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1218 
 n1 
 n2)
)
(define-fun inv_Node__646 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1575 
 n1 
 n2)
)
(define-fun inv_Node__1408 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2787 
 n1 
 n2)
)
(define-fun inv_Node__1147 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2233 
 n1 
 n2)
)
(define-fun inv_Node__54 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b821 
 n1 
 n2)
)
(define-fun inv_Node__587 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2064 
 n1 
 n2)
)
(define-fun inv_Node__13 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b526 
 n1 
 n2)
)
(define-fun inv_Atom_284 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1096 
 (held m s (inv_Node__1329 m s n1 n2)) 
 (= (inv_Node__1330 m s n1 n2) (inv_Node__1331 m s n1 n2)))
)
(define-fun inv_Node__1009 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1342 
 n1 
 n2)
)
(define-fun inv_Node__1834 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2146 
 n1 
 n2)
)
(define-fun inv_Node__692 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2244 
 n1 
 n2)
)
(define-fun inv_Node__538 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2765 
 n1 
 n2)
)
(define-fun inv_Epoch__366 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__995 m s n1 n2))
)
(define-fun inv_Node__924 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2416 
 n1 
 n2)
)
(define-fun inv_Node__1766 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1762 
 n1 
 n2)
)
(define-fun inv_Node__1389 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1958 
 n1 
 n2)
)
(define-fun inv_Node__1566 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1358 
 n1 
 n2)
)
(define-fun inv_Epoch__297 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__502 m s n1 n2))
)
(define-fun inv_Node__1677 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1509 
 n1 
 n2)
)
(define-fun inv_Node__553 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1651 
 n1 
 n2)
)
(define-fun inv_Node__933 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1901 
 n1 
 n2)
)
(define-fun inv_Node__1212 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1925 
 n1 
 n2)
)
(define-fun inv_Node__1037 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2460 
 n1 
 n2)
)
(define-fun inv_Node__976 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1869 
 n1 
 n2)
)
(define-fun inv_Atom_430 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b794 
 (held m s (inv_Node__712 m s n1 n2)) 
 (= (inv_Node__713 m s n1 n2) (inv_Node__714 m s n1 n2)))
)
(define-fun inv_Node__522 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1384 
 n1 
 n2)
)
(define-fun inv_Node__1805 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1525 
 n1 
 n2)
)
(define-fun inv_Epoch__174 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__906 m s n1 n2))
)
(define-fun inv_Epoch__324 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__732 m s n1 n2))
)
(define-fun inv_Node__801 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1954 
 n1 
 n2)
)
(define-fun inv_Node__1614 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2292 
 n1 
 n2)
)
(define-fun inv_Node__1560 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2504 
 n1 
 n2)
)
(define-fun inv_Node__988 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2485 
 n1 
 n2)
)
(define-fun inv_Atom_419 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1203 
 (held m s (inv_Node__1564 m s n1 n2)) 
 (= (inv_Node__1565 m s n1 n2) (inv_Node__1566 m s n1 n2)))
)
(define-fun inv_Node__878 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1898 
 n1 
 n2)
)
(define-fun inv_Node__372 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2274 
 n1 
 n2)
)
(define-fun inv_Node__1540 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2169 
 n1 
 n2)
)
(define-fun inv_Node__698 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2357 
 n1 
 n2)
)
(define-fun inv_Node__1586 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1692 
 n1 
 n2)
)
(define-fun inv_Node__1290 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1354 
 n1 
 n2)
)
(define-fun inv_Node__249 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1171 
 n1 
 n2)
)
(define-fun inv_Node__1098 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1564 
 n1 
 n2)
)
(define-fun inv_Node__1258 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1987 
 n1 
 n2)
)
(define-fun inv_Node__1747 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2576 
 n1 
 n2)
)
(define-fun inv_Epoch__15 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__318 m s n1 n2))
)
(define-fun inv_Node__574 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2832 
 n1 
 n2)
)
(define-fun inv_Node__1835 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2336 
 n1 
 n2)
)
(define-fun inv_Node__1827 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2296 
 n1 
 n2)
)
(define-fun inv_Epoch__283 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__685 m s n1 n2))
)
(define-fun inv_Node__443 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1658 
 n1 
 n2)
)
(define-fun inv_Atom_337 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1296 
 (held m s (inv_Node__1779 m s n1 n2)) 
 (= (inv_Node__1780 m s n1 n2) (inv_Node__1781 m s n1 n2)))
)
(define-fun inv_Node__1183 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2573 
 n1 
 n2)
)
(define-fun inv_Node__225 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b654 
 n1 
 n2)
)
(define-fun inv_Node__573 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1632 
 n1 
 n2)
)
(define-fun inv_Node__568 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2591 
 n1 
 n2)
)
(define-fun inv_Node__1106 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1906 
 n1 
 n2)
)
(define-fun inv_Node__378 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2462 
 n1 
 n2)
)
(define-fun inv_Node__700 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1579 
 n1 
 n2)
)
(define-fun inv_Node__1392 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1877 
 n1 
 n2)
)
(define-fun inv_Node__615 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2708 
 n1 
 n2)
)
(define-fun inv_Node__448 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1685 
 n1 
 n2)
)
(define-fun inv_Node__555 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2225 
 n1 
 n2)
)
(define-fun inv_Epoch__147 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1743 m s n1 n2))
)
(define-fun inv_Node__1762 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2612 
 n1 
 n2)
)
(define-fun inv_Node__1272 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1904 
 n1 
 n2)
)
(define-fun inv_Node__1053 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1861 
 n1 
 n2)
)
(define-fun inv_Epoch__236 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__556 m s n1 n2))
)
(define-fun inv_Node__1800 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2796 
 n1 
 n2)
)
(define-fun inv_Node__55 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b726 
 n1 
 n2)
)
(define-fun inv_Node__370 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1516 
 n1 
 n2)
)
(define-fun inv_Node__309 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b719 
 n1 
 n2)
)
(define-fun inv_Atom_26 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b270 
 (held m s (inv_Node__159 m s n1 n2)) 
 (ite inv_b271 
 (locked m s (inv_Epoch__174 m s n1 n2) (inv_Node__160 m s n1 n2)) 
 (ite inv_b272 
 (transfer m s (inv_Epoch__175 m s n1 n2) (inv_Node__161 m s n1 n2)) 
 (ite inv_b273 
 (le m (inv_Epoch__176 m s n1 n2) (inv_Epoch__177 m s n1 n2)) 
 (ite inv_b274 
 (= (inv_Node__162 m s n1 n2) (inv_Node__163 m s n1 n2)) 
 (ite inv_b275 
 (= (inv_Epoch__178 m s n1 n2) (inv_Epoch__179 m s n1 n2)) 
 (ite inv_b276 
 (and (inv_Atom_211 m s n1 n2) (inv_Atom_212 m s n1 n2)) 
 (ite inv_b277 
 (or (inv_Atom_213 m s n1 n2) (inv_Atom_214 m s n1 n2)) 
 (ite inv_b278 
 (=> (inv_Atom_215 m s n1 n2) (inv_Atom_216 m s n1 n2)) 
 (not (inv_Atom_217 m s n1 n2)))))))))))
)
(define-fun inv_Node__1246 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1923 
 n1 
 n2)
)
(define-fun inv_Node__1146 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1951 
 n1 
 n2)
)
(define-fun inv_Node__814 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2794 
 n1 
 n2)
)
(define-fun inv_Node__1531 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2392 
 n1 
 n2)
)
(define-fun inv_Node__1740 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2687 
 n1 
 n2)
)
(define-fun inv_Epoch__348 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1737 m s n1 n2))
)
(define-fun inv_Atom_170 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b665 
 (held m s (inv_Node__458 m s n1 n2)) 
 (= (inv_Node__459 m s n1 n2) (inv_Node__460 m s n1 n2)))
)
(define-fun inv_Node__880 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2404 
 n1 
 n2)
)
(define-fun inv_Atom_149 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b625 
 (held m s (inv_Node__384 m s n1 n2)) 
 (= (inv_Node__385 m s n1 n2) (inv_Node__386 m s n1 n2)))
)
(define-fun inv_Node__1541 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2150 
 n1 
 n2)
)
(define-fun inv_Node__1182 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2257 
 n1 
 n2)
)
(define-fun inv_Atom_84 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1329 
 (held m s (inv_Node__1847 m s n1 n2)) 
 (= (inv_Node__1848 m s n1 n2) (inv_Node__1849 m s n1 n2)))
)
(define-fun inv_Node__726 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2803 
 n1 
 n2)
)
(define-fun inv_Node__1627 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1741 
 n1 
 n2)
)
(define-fun inv_Node__1059 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1589 
 n1 
 n2)
)
(define-fun inv_Node__1860 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2690 
 n1 
 n2)
)
(define-fun inv_Node__524 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1549 
 n1 
 n2)
)
(define-fun inv_Node__479 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2510 
 n1 
 n2)
)
(define-fun inv_Node__221 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1084 
 n1 
 n2)
)
(define-fun inv_Node__658 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1641 
 n1 
 n2)
)
(define-fun inv_Atom_440 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b776 
 (held m s (inv_Node__659 m s n1 n2)) 
 (= (inv_Node__660 m s n1 n2) (inv_Node__661 m s n1 n2)))
)
(define-fun inv_Node__282 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b635 
 n1 
 n2)
)
(define-fun inv_Node__1768 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2558 
 n1 
 n2)
)
(define-fun inv_Node__1864 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2619 
 n1 
 n2)
)
(define-fun inv_Atom_432 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1067 
 (held m s (inv_Node__1286 m s n1 n2)) 
 (= (inv_Node__1287 m s n1 n2) (inv_Node__1288 m s n1 n2)))
)
(define-fun inv_Atom_263 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1214 
 (held m s (inv_Node__1583 m s n1 n2)) 
 (= (inv_Node__1584 m s n1 n2) (inv_Node__1585 m s n1 n2)))
)
(define-fun inv_Node__1022 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2783 
 n1 
 n2)
)
(define-fun inv_Node__993 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1552 
 n1 
 n2)
)
(define-fun inv_Node__167 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1000 
 n1 
 n2)
)
(define-fun inv_Node__812 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1864 
 n1 
 n2)
)
(define-fun inv_Node__1066 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2663 
 n1 
 n2)
)
(define-fun inv_Node__132 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1210 
 n1 
 n2)
)
(define-fun inv_Node__1375 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2302 
 n1 
 n2)
)
(define-fun inv_Node__334 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1204 
 n1 
 n2)
)
(define-fun inv_Node__373 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2531 
 n1 
 n2)
)
(define-fun inv_Node__921 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1900 
 n1 
 n2)
)
(define-fun inv_Node__1046 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2009 
 n1 
 n2)
)
(define-fun inv_Node__1260 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1432 
 n1 
 n2)
)
(define-fun inv_Node__1434 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2654 
 n1 
 n2)
)
(define-fun inv_Node__1309 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2673 
 n1 
 n2)
)
(define-fun inv_Node__331 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b700 
 n1 
 n2)
)
(define-fun inv_Atom_354 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1215 
 (held m s (inv_Node__1586 m s n1 n2)) 
 (= (inv_Node__1587 m s n1 n2) (inv_Node__1588 m s n1 n2)))
)
(define-fun inv_Node__12 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b571 
 n1 
 n2)
)
(define-fun inv_Node__1045 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2433 
 n1 
 n2)
)
(define-fun inv_Epoch__298 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1622 m s n1 n2))
)
(define-fun inv_Node__437 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2646 
 n1 
 n2)
)
(define-fun inv_Node__409 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1635 
 n1 
 n2)
)
(define-fun inv_Node__346 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b882 
 n1 
 n2)
)
(define-fun inv_Node__486 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2240 
 n1 
 n2)
)
(define-fun inv_Node__899 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1452 
 n1 
 n2)
)
(define-fun inv_Node__207 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b724 
 n1 
 n2)
)
(define-fun inv_Node__1379 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2217 
 n1 
 n2)
)
(define-fun inv_Node__1232 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1584 
 n1 
 n2)
)
(define-fun inv_Node__1042 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2049 
 n1 
 n2)
)
(define-fun inv_Node__706 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2606 
 n1 
 n2)
)
(define-fun inv_Node__501 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2013 
 n1 
 n2)
)
(define-fun inv_Node__496 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1506 
 n1 
 n2)
)
(define-fun inv_Node__310 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b682 
 n1 
 n2)
)
(define-fun inv_Node__1024 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2149 
 n1 
 n2)
)
(define-fun inv_Node__204 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1286 
 n1 
 n2)
)
(define-fun inv_Node__1493 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2140 
 n1 
 n2)
)
(define-fun inv_Node__1410 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1591 
 n1 
 n2)
)
(define-fun inv_Node__1265 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1814 
 n1 
 n2)
)
(define-fun inv_Node__410 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1602 
 n1 
 n2)
)
(define-fun inv_Node__586 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2268 
 n1 
 n2)
)
(define-fun inv_Node__268 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1081 
 n1 
 n2)
)
(define-fun inv_Node__436 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1529 
 n1 
 n2)
)
(define-fun inv_Epoch__282 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1282 m s n1 n2))
)
(define-fun inv_Node__254 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1292 
 n1 
 n2)
)
(define-fun inv_Epoch__268 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__489 m s n1 n2))
)
(define-fun inv_Node__131 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b756 
 n1 
 n2)
)
(define-fun inv_Node__1153 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1481 
 n1 
 n2)
)
(define-fun inv_Atom_81 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1266 
 (held m s (inv_Node__1714 m s n1 n2)) 
 (= (inv_Node__1715 m s n1 n2) (inv_Node__1716 m s n1 n2)))
)
(define-fun inv_Node__1303 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2605 
 n1 
 n2)
)
(define-fun inv_Node__874 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1592 
 n1 
 n2)
)
(define-fun inv_Node__1545 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2196 
 n1 
 n2)
)
(define-fun inv_Node__1852 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2243 
 n1 
 n2)
)
(define-fun inv_Epoch__234 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__368 m s n1 n2))
)
(define-fun inv_Atom_439 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b786 
 (held m s (inv_Node__689 m s n1 n2)) 
 (= (inv_Node__690 m s n1 n2) (inv_Node__691 m s n1 n2)))
)
(define-fun inv_Node__352 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b655 
 n1 
 n2)
)
(define-fun inv_Node__455 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1684 
 n1 
 n2)
)
(define-fun inv_Epoch__295 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__921 m s n1 n2))
)
(define-fun inv_Node__1726 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1801 
 n1 
 n2)
)
(define-fun inv_Node__1065 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1867 
 n1 
 n2)
)
(define-fun inv_Node__619 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2028 
 n1 
 n2)
)
(define-fun inv_Node__667 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2066 
 n1 
 n2)
)
(define-fun inv_Epoch__239 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1604 m s n1 n2))
)
(define-fun inv_Node__1295 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2026 
 n1 
 n2)
)
(define-fun inv_Node__607 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2279 
 n1 
 n2)
)
(define-fun inv_Node__1233 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1924 
 n1 
 n2)
)
(define-fun inv_Node__1084 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1462 
 n1 
 n2)
)
(define-fun inv_Node__894 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2226 
 n1 
 n2)
)
(define-fun inv_Node__1105 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2694 
 n1 
 n2)
)
(define-fun inv_Node__1307 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2630 
 n1 
 n2)
)
(define-fun inv_Node__758 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1981 
 n1 
 n2)
)
(define-fun inv_Node__396 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1561 
 n1 
 n2)
)
(define-fun inv_Node__768 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1919 
 n1 
 n2)
)
(define-fun inv_Node__1812 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2019 
 n1 
 n2)
)
(define-fun inv_Node__940 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2401 
 n1 
 n2)
)
(define-fun inv_Node__351 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b683 
 n1 
 n2)
)
(define-fun inv_Node__764 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2052 
 n1 
 n2)
)
(define-fun inv_Node__1680 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2561 
 n1 
 n2)
)
(define-fun inv_Node__445 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1929 
 n1 
 n2)
)
(define-fun inv_Node__203 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1131 
 n1 
 n2)
)
(define-fun inv_Node__727 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1601 
 n1 
 n2)
)
(define-fun inv_Node__1799 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2434 
 n1 
 n2)
)
(define-fun inv_Node__639 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2533 
 n1 
 n2)
)
(define-fun inv_Node__461 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1887 
 n1 
 n2)
)
(define-fun inv_Node__719 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2371 
 n1 
 n2)
)
(define-fun inv_Node__1478 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1528 
 n1 
 n2)
)
(define-fun inv_Node__1406 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2535 
 n1 
 n2)
)
(define-fun inv_Epoch__181 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1137 m s n1 n2))
)
(define-fun inv_Node__650 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1554 
 n1 
 n2)
)
(define-fun inv_Node__1357 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1804 
 n1 
 n2)
)
(define-fun inv_Node__1486 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1819 
 n1 
 n2)
)
(define-fun inv_Node__1166 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2312 
 n1 
 n2)
)
(define-fun inv_Atom_182 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b816 
 (held m s (inv_Node__761 m s n1 n2)) 
 (= (inv_Node__762 m s n1 n2) (inv_Node__763 m s n1 n2)))
)
(define-fun inv_Node__1454 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2419 
 n1 
 n2)
)
(define-fun inv_Node__1589 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2526 
 n1 
 n2)
)
(define-fun inv_Node__1793 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1388 
 n1 
 n2)
)
(define-fun inv_Node__1833 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1449 
 n1 
 n2)
)
(define-fun inv_Node__1723 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1644 
 n1 
 n2)
)
(define-fun inv_Node__1418 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1443 
 n1 
 n2)
)
(define-fun inv_Node__1547 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2165 
 n1 
 n2)
)
(define-fun inv_Node__670 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2208 
 n1 
 n2)
)
(define-fun inv_Node__1254 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2030 
 n1 
 n2)
)
(define-fun inv_Node__1532 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1746 
 n1 
 n2)
)
(define-fun inv_Node__1829 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1365 
 n1 
 n2)
)
(define-fun inv_Node__584 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2304 
 n1 
 n2)
)
(define-fun inv_Node__1482 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1616 
 n1 
 n2)
)
(define-fun inv_Epoch__185 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1567 m s n1 n2))
)
(define-fun inv_Node__1319 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1935 
 n1 
 n2)
)
(define-fun inv_Node__1839 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2488 
 n1 
 n2)
)
(define-fun inv_Atom_224 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b768 
 (held m s (inv_Node__639 m s n1 n2)) 
 (= (inv_Node__640 m s n1 n2) (inv_Node__641 m s n1 n2)))
)
(define-fun inv_Epoch__364 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__457 m s n1 n2))
)
(define-fun inv_Node__1594 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1364 
 n1 
 n2)
)
(define-fun inv_Node__1033 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2238 
 n1 
 n2)
)
(define-fun inv_Node__1341 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1686 
 n1 
 n2)
)
(define-fun inv_Node__415 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1659 
 n1 
 n2)
)
(define-fun inv_Node__487 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1587 
 n1 
 n2)
)
(define-fun inv_Node__1358 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1374 
 n1 
 n2)
)
(define-fun inv_Epoch__285 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__662 m s n1 n2))
)
(define-fun inv_Node__1609 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2443 
 n1 
 n2)
)
(define-fun inv_Epoch__180 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1803 m s n1 n2))
)
(define-fun inv_Node__778 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2780 
 n1 
 n2)
)
(define-fun inv_Node__515 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1743 
 n1 
 n2)
)
(define-fun inv_Node__1802 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1863 
 n1 
 n2)
)
(define-fun inv_Node__591 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2349 
 n1 
 n2)
)
(define-fun inv_Node__806 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2624 
 n1 
 n2)
)
(define-fun inv_Node__1874 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1379 
 n1 
 n2)
)
(define-fun inv_Node__707 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2581 
 n1 
 n2)
)
(define-fun inv_Node__723 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1656 
 n1 
 n2)
)
(define-fun inv_Node__881 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2355 
 n1 
 n2)
)
(define-fun inv_Node__771 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1841 
 n1 
 n2)
)
(define-fun inv_Node__1471 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2758 
 n1 
 n2)
)
(define-fun inv_Node__1240 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2648 
 n1 
 n2)
)
(define-fun inv_Node__1388 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2527 
 n1 
 n2)
)
(define-fun inv_Node__197 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1024 
 n1 
 n2)
)
(define-fun inv_Node__1789 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1805 
 n1 
 n2)
)
(define-fun inv_Node__1863 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2523 
 n1 
 n2)
)
(define-fun inv_Node__783 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1672 
 n1 
 n2)
)
(define-fun inv_Epoch__368 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__507 m s n1 n2))
)
(define-fun inv_Node__757 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1351 
 n1 
 n2)
)
(define-fun inv_Node__107 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b939 
 n1 
 n2)
)
(define-fun inv_Node__506 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1883 
 n1 
 n2)
)
(define-fun inv_Node__580 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2254 
 n1 
 n2)
)
(define-fun inv_Node__166 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1205 
 n1 
 n2)
)
(define-fun inv_Epoch__370 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1544 m s n1 n2))
)
(define-fun inv_Atom_321 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1053 
 (held m s (inv_Node__1256 m s n1 n2)) 
 (= (inv_Node__1257 m s n1 n2) (inv_Node__1258 m s n1 n2)))
)
(define-fun inv_Node__1736 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2170 
 n1 
 n2)
)
(define-fun inv_Node__669 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1855 
 n1 
 n2)
)
(define-fun inv_Node__387 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1540 
 n1 
 n2)
)
(define-fun inv_Atom_151 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b633 
 (held m s (inv_Node__402 m s n1 n2)) 
 (= (inv_Node__403 m s n1 n2) (inv_Node__404 m s n1 n2)))
)
(define-fun inv_Epoch__360 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1218 m s n1 n2))
)
(define-fun inv_Node__40 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b954 
 n1 
 n2)
)
(define-fun inv_Node__813 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2200 
 n1 
 n2)
)
(define-fun inv_Node__497 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2211 
 n1 
 n2)
)
(define-fun inv_Node__1728 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2396 
 n1 
 n2)
)
(define-fun inv_Node__862 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2418 
 n1 
 n2)
)
(define-fun inv_Node__557 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2584 
 n1 
 n2)
)
(define-fun inv_Atom_431 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b661 
 (held m s (inv_Node__446 m s n1 n2)) 
 (= (inv_Node__447 m s n1 n2) (inv_Node__448 m s n1 n2)))
)
(define-fun inv_Node__705 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2285 
 n1 
 n2)
)
(define-fun inv_Node__1362 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2303 
 n1 
 n2)
)
(define-fun inv_Node__1573 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2567 
 n1 
 n2)
)
(define-fun inv_Atom_80 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b998 
 (held m s (inv_Node__1131 m s n1 n2)) 
 (= (inv_Node__1132 m s n1 n2) (inv_Node__1133 m s n1 n2)))
)
(define-fun inv_Node__835 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1431 
 n1 
 n2)
)
(define-fun inv_Node__347 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b862 
 n1 
 n2)
)
(define-fun inv_Node__734 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1955 
 n1 
 n2)
)
(define-fun inv_Atom_150 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1042 
 (held m s (inv_Node__1238 m s n1 n2)) 
 (= (inv_Node__1239 m s n1 n2) (inv_Node__1240 m s n1 n2)))
)
(define-fun inv_Node__701 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2116 
 n1 
 n2)
)
(define-fun inv_Epoch__192 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__494 m s n1 n2))
)
(define-fun inv_Node__362 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b965 
 n1 
 n2)
)
(define-fun inv_Node__493 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1417 
 n1 
 n2)
)
(define-fun inv_Node__828 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2015 
 n1 
 n2)
)
(define-fun inv_Node__997 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2766 
 n1 
 n2)
)
(define-fun inv_Node__1245 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1833 
 n1 
 n2)
)
(define-fun inv_Node__1405 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2090 
 n1 
 n2)
)
(define-fun inv_Node__893 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1916 
 n1 
 n2)
)
(define-fun inv_Node__1253 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1902 
 n1 
 n2)
)
(define-fun inv_Node__1556 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1439 
 n1 
 n2)
)
(define-fun inv_Node__1085 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2382 
 n1 
 n2)
)
(define-fun inv_Node__1651 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2022 
 n1 
 n2)
)
(define-fun inv_Node__800 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2492 
 n1 
 n2)
)
(define-fun inv_Node__1169 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2700 
 n1 
 n2)
)
(define-fun inv_Node__1289 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1410 
 n1 
 n2)
)
(define-fun inv_Node__649 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2749 
 n1 
 n2)
)
(define-fun inv_Node__843 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2017 
 n1 
 n2)
)
(define-fun inv_Node__807 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2175 
 n1 
 n2)
)
(define-fun inv_Node__1776 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2039 
 n1 
 n2)
)
(define-fun inv_Node__1020 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1918 
 n1 
 n2)
)
(define-fun inv_Node__1642 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2623 
 n1 
 n2)
)
(define-fun inv_Node__1296 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2487 
 n1 
 n2)
)
(define-fun inv_Node__1686 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2846 
 n1 
 n2)
)
(define-fun inv_Node__1855 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1444 
 n1 
 n2)
)
(define-fun inv_Atom_417 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1109 
 (held m s (inv_Node__1360 m s n1 n2)) 
 (= (inv_Node__1361 m s n1 n2) (inv_Node__1362 m s n1 n2)))
)
(define-fun inv_Node__490 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2458 
 n1 
 n2)
)
(define-fun inv_Node__481 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1849 
 n1 
 n2)
)
(define-fun inv_Node__1448 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1760 
 n1 
 n2)
)
(define-fun inv_Node__847 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1812 
 n1 
 n2)
)
(define-fun inv_Node__1214 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1820 
 n1 
 n2)
)
(define-fun inv_Atom_392 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b957 
 (held m s (inv_Node__1059 m s n1 n2)) 
 (= (inv_Node__1060 m s n1 n2) (inv_Node__1061 m s n1 n2)))
)
(define-fun inv_Node__558 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1828 
 n1 
 n2)
)
(define-fun inv_Node__251 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1307 
 n1 
 n2)
)
(define-fun inv_Node__1670 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2106 
 n1 
 n2)
)
(define-fun inv_Node__164 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b668 
 n1 
 n2)
)
(define-fun inv_Node__1422 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2636 
 n1 
 n2)
)
(define-fun inv_Node__371 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2245 
 n1 
 n2)
)
(define-fun inv_Node__416 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2809 
 n1 
 n2)
)
(define-fun inv_Node__1034 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2439 
 n1 
 n2)
)
(define-fun inv_Node__1207 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1476 
 n1 
 n2)
)
(define-fun inv_Node__1041 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2091 
 n1 
 n2)
)
(define-fun inv_Node__804 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1475 
 n1 
 n2)
)
(define-fun inv_Node__1640 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2063 
 n1 
 n2)
)
(define-fun inv_Node__495 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2522 
 n1 
 n2)
)
(define-fun inv_Node__728 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2755 
 n1 
 n2)
)
(define-fun inv_Node__1460 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2730 
 n1 
 n2)
)
(define-fun inv_Node__1415 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2593 
 n1 
 n2)
)
(define-fun inv_Node__652 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2453 
 n1 
 n2)
)
(define-fun inv_Epoch__353 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__548 m s n1 n2))
)
(define-fun inv_Node__1145 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2552 
 n1 
 n2)
)
(define-fun inv_Node__1772 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2265 
 n1 
 n2)
)
(define-fun inv_Node__1488 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2317 
 n1 
 n2)
)
(define-fun inv_Node__220 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1283 
 n1 
 n2)
)
(define-fun inv_Node__769 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1340 
 n1 
 n2)
)
(define-fun inv_Node__1518 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2117 
 n1 
 n2)
)
(define-fun inv_Node__1628 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1745 
 n1 
 n2)
)
(define-fun inv_Node__1491 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2702 
 n1 
 n2)
)
(define-fun inv_Node__1192 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1701 
 n1 
 n2)
)
(define-fun inv_Node__673 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2560 
 n1 
 n2)
)
(define-fun inv_Atom_221 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b908 
 (held m s (inv_Node__962 m s n1 n2)) 
 (= (inv_Node__963 m s n1 n2) (inv_Node__964 m s n1 n2)))
)
(define-fun inv_Node__1141 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2461 
 n1 
 n2)
)
(define-fun inv_Node__1366 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2761 
 n1 
 n2)
)
(define-fun inv_Node__1636 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2424 
 n1 
 n2)
)
(define-fun inv_Node__1446 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2094 
 n1 
 n2)
)
(define-fun inv_Node__205 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1213 
 n1 
 n2)
)
(define-fun inv_Node__1543 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2639 
 n1 
 n2)
)
(define-fun inv_Node__467 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1862 
 n1 
 n2)
)
(define-fun inv_Node__440 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2507 
 n1 
 n2)
)
(define-fun inv_Node__876 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2352 
 n1 
 n2)
)
(define-fun inv_Node__1436 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1537 
 n1 
 n2)
)
(define-fun inv_Node__1142 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2819 
 n1 
 n2)
)
(define-fun inv_Node__805 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1960 
 n1 
 n2)
)
(define-fun inv_Node__589 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1368 
 n1 
 n2)
)
(define-fun inv_Atom_148 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1019 
 (held m s (inv_Node__1173 m s n1 n2)) 
 (= (inv_Node__1174 m s n1 n2) (inv_Node__1175 m s n1 n2)))
)
(define-fun inv_Node__994 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2085 
 n1 
 n2)
)
(define-fun inv_Node__1122 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2316 
 n1 
 n2)
)
(define-fun inv_Node__1507 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1586 
 n1 
 n2)
)
(define-fun inv_Node__1206 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2725 
 n1 
 n2)
)
(define-fun inv_Node__1367 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2370 
 n1 
 n2)
)
(define-fun inv_Node__1149 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2346 
 n1 
 n2)
)
(define-fun inv_Node__877 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1478 
 n1 
 n2)
)
(define-fun inv_Node__377 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2055 
 n1 
 n2)
)
(define-fun inv_Node__598 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1474 
 n1 
 n2)
)
(define-fun inv_Node__488 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2729 
 n1 
 n2)
)
(define-fun inv_Atom_338 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b888 
 (held m s (inv_Node__915 m s n1 n2)) 
 (= (inv_Node__916 m s n1 n2) (inv_Node__917 m s n1 n2)))
)
(define-fun inv_Atom_357 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1198 
 (held m s (inv_Node__1548 m s n1 n2)) 
 (= (inv_Node__1549 m s n1 n2) (inv_Node__1550 m s n1 n2)))
)
(define-fun inv_Epoch__121 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__678 m s n1 n2))
)
(define-fun inv_Node__444 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2084 
 n1 
 n2)
)
(define-fun inv_Atom_391 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1207 
 (held m s (inv_Node__1573 m s n1 n2)) 
 (= (inv_Node__1574 m s n1 n2) (inv_Node__1575 m s n1 n2)))
)
(define-fun inv_Node__1813 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2206 
 n1 
 n2)
)
(define-fun inv_Node__462 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2105 
 n1 
 n2)
)
(define-fun inv_Node__1505 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2331 
 n1 
 n2)
)
(define-fun inv_Epoch__371 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1559 m s n1 n2))
)
(define-fun inv_Node__1413 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2707 
 n1 
 n2)
)
(define-fun inv_Node__1610 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1780 
 n1 
 n2)
)
(define-fun inv_Atom_414 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b846 
 (held m s (inv_Node__827 m s n1 n2)) 
 (= (inv_Node__828 m s n1 n2) (inv_Node__829 m s n1 n2)))
)
(define-fun inv_Node__1773 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2232 
 n1 
 n2)
)
(define-fun inv_Node__1036 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2477 
 n1 
 n2)
)
(define-fun inv_Atom_353 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b666 
 (held m s (inv_Node__462 m s n1 n2)) 
 (= (inv_Node__463 m s n1 n2) (inv_Node__464 m s n1 n2)))
)
(define-fun inv_Node__1402 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2519 
 n1 
 n2)
)
(define-fun inv_Node__1503 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1699 
 n1 
 n2)
)
(define-fun inv_Node__1230 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2777 
 n1 
 n2)
)
(define-fun inv_Node__471 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2614 
 n1 
 n2)
)
(define-fun inv_Node__1334 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2715 
 n1 
 n2)
)
(define-fun inv_Atom_281 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b928 
 (held m s (inv_Node__1000 m s n1 n2)) 
 (= (inv_Node__1001 m s n1 n2) (inv_Node__1002 m s n1 n2)))
)
(define-fun inv_Node__53 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1262 
 n1 
 n2)
)
(define-fun inv_Node__961 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2474 
 n1 
 n2)
)
(define-fun inv_Node__1514 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2067 
 n1 
 n2)
)
(define-fun inv_Node__1420 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1593 
 n1 
 n2)
)
(define-fun inv_Node__941 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2813 
 n1 
 n2)
)
(define-fun inv_Node__1273 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1878 
 n1 
 n2)
)
(define-fun inv_Node__510 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1994 
 n1 
 n2)
)
(define-fun inv_Node__860 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1463 
 n1 
 n2)
)
(define-fun inv_Node__590 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1965 
 n1 
 n2)
)
(define-fun inv_Node__1363 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1703 
 n1 
 n2)
)
(define-fun inv_Node__480 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2671 
 n1 
 n2)
)
(define-fun inv_Epoch__238 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__455 m s n1 n2))
)
(define-fun inv_Node__1112 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2379 
 n1 
 n2)
)
(define-fun inv_Node__772 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2249 
 n1 
 n2)
)
(define-fun inv_Node__1655 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2844 
 n1 
 n2)
)
(define-fun inv_Node__520 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1513 
 n1 
 n2)
)
(define-fun inv_Atom_234 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1308 
 (held m s (inv_Node__1800 m s n1 n2)) 
 (= (inv_Node__1801 m s n1 n2) (inv_Node__1802 m s n1 n2)))
)
(define-fun inv_Node__108 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b803 
 n1 
 n2)
)
(define-fun inv_Epoch__242 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1212 m s n1 n2))
)
(define-fun inv_Node__1498 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2547 
 n1 
 n2)
)
(define-fun inv_Node__1592 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1427 
 n1 
 n2)
)
(define-fun inv_Atom_223 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1155 
 (held m s (inv_Node__1460 m s n1 n2)) 
 (= (inv_Node__1461 m s n1 n2) (inv_Node__1462 m s n1 n2)))
)
(define-fun inv_Node__375 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1414 
 n1 
 n2)
)
(define-fun inv_Node__861 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2385 
 n1 
 n2)
)
(define-fun inv_Node__1201 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1912 
 n1 
 n2)
)
(define-fun inv_Node__909 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2167 
 n1 
 n2)
)
(define-fun inv_Node__1113 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2836 
 n1 
 n2)
)
(define-fun inv_Node__1068 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1782 
 n1 
 n2)
)
(define-fun inv_Node__1052 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2751 
 n1 
 n2)
)
(define-fun inv_Node__1745 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1473 
 n1 
 n2)
)
(define-fun inv_Node__1401 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1753 
 n1 
 n2)
)
(define-fun inv_Node__226 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b657 
 n1 
 n2)
)
(define-fun inv_Node__856 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1367 
 n1 
 n2)
)
(define-fun inv_Node__1155 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2709 
 n1 
 n2)
)
(define-fun inv_Atom_218 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b828 
 (held m s (inv_Node__799 m s n1 n2)) 
 (= (inv_Node__800 m s n1 n2) (inv_Node__801 m s n1 n2)))
)
(define-fun inv_Epoch__267 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1742 m s n1 n2))
)
(define-fun inv_Epoch__138 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1407 m s n1 n2))
)
(define-fun inv_Node__146 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b970 
 n1 
 n2)
)
(define-fun inv_Node__469 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2626 
 n1 
 n2)
)
(define-fun inv_Node__779 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1498 
 n1 
 n2)
)
(define-fun inv_Node__1546 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1952 
 n1 
 n2)
)
(define-fun inv_Node__991 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2660 
 n1 
 n2)
)
(define-fun inv_Node__1261 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1369 
 n1 
 n2)
)
(define-fun inv_Node__1554 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2113 
 n1 
 n2)
)
(define-fun inv_Node__1223 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2586 
 n1 
 n2)
)
(define-fun inv_Node__476 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2394 
 n1 
 n2)
)
(define-fun inv_Node__614 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1769 
 n1 
 n2)
)
(define-fun inv_Node__1409 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1628 
 n1 
 n2)
)
(define-fun inv_Node__1516 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2347 
 n1 
 n2)
)
(define-fun inv_Node__1019 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1974 
 n1 
 n2)
)
(define-fun inv_Node__891 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2399 
 n1 
 n2)
)
(define-fun inv_Node__374 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1681 
 n1 
 n2)
)
(define-fun inv_Atom_355 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1237 
 (held m s (inv_Node__1647 m s n1 n2)) 
 (= (inv_Node__1648 m s n1 n2) (inv_Node__1649 m s n1 n2)))
)
(define-fun inv_Node__1191 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2284 
 n1 
 n2)
)
(define-fun inv_Node__710 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2159 
 n1 
 n2)
)
(define-fun inv_Node__672 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1615 
 n1 
 n2)
)
(define-fun inv_Node__1687 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2003 
 n1 
 n2)
)
(define-fun inv_Node__1469 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2358 
 n1 
 n2)
)
(define-fun inv_Node__1825 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2324 
 n1 
 n2)
)
(define-fun inv_Epoch__369 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__383 m s n1 n2))
)
(define-fun inv_Node__1310 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1389 
 n1 
 n2)
)
(define-fun inv_Atom_173 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1274 
 (held m s (inv_Node__1734 m s n1 n2)) 
 (= (inv_Node__1735 m s n1 n2) (inv_Node__1736 m s n1 n2)))
)
(define-fun inv_Node__1487 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2283 
 n1 
 n2)
)
(define-fun inv_Node__1869 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2445 
 n1 
 n2)
)
(define-fun inv_Node__1255 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2219 
 n1 
 n2)
)
(define-fun inv_Atom_177 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1227 
 (held m s (inv_Node__1613 m s n1 n2)) 
 (= (inv_Node__1614 m s n1 n2) (inv_Node__1615 m s n1 n2)))
)
(define-fun inv_Node__1481 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2235 
 n1 
 n2)
)
(define-fun inv_Atom_262 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1127 
 (held m s (inv_Node__1388 m s n1 n2)) 
 (= (inv_Node__1389 m s n1 n2) (inv_Node__1390 m s n1 n2)))
)
(define-fun inv_Node__1150 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2779 
 n1 
 n2)
)
(define-fun inv_Epoch__156 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__549 m s n1 n2))
)
(define-fun inv_Node__998 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2767 
 n1 
 n2)
)
(define-fun inv_Node__432 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2038 
 n1 
 n2)
)
(define-fun inv_Node__792 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1702 
 n1 
 n2)
)
(define-fun inv_Node__1117 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2077 
 n1 
 n2)
)
(define-fun inv_Atom_190 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b979 
 (held m s (inv_Node__1099 m s n1 n2)) 
 (= (inv_Node__1100 m s n1 n2) (inv_Node__1101 m s n1 n2)))
)
(define-fun inv_Node__625 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1510 
 n1 
 n2)
)
(define-fun inv_Node__1130 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2198 
 n1 
 n2)
)
(define-fun inv_Node__554 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2193 
 n1 
 n2)
)
(define-fun inv_Node__1722 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1372 
 n1 
 n2)
)
(define-fun inv_Node__354 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b695 
 n1 
 n2)
)
(define-fun inv_Node__376 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2728 
 n1 
 n2)
)
(define-fun inv_Atom_285 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1320 
 (held m s (inv_Node__1827 m s n1 n2)) 
 (= (inv_Node__1828 m s n1 n2) (inv_Node__1829 m s n1 n2)))
)
(define-fun inv_Node__1807 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2059 
 n1 
 n2)
)
(define-fun inv_Node__1506 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1690 
 n1 
 n2)
)
(define-fun inv_Node__279 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b863 
 n1 
 n2)
)
(define-fun inv_Node__676 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1558 
 n1 
 n2)
)
(define-fun inv_Node__1380 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1852 
 n1 
 n2)
)
(define-fun inv_Epoch__14 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__190 m s n1 n2))
)
(define-fun inv_Node__1302 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2353 
 n1 
 n2)
)
(define-fun inv_Node__1297 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2144 
 n1 
 n2)
)
(define-fun inv_Node__770 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2153 
 n1 
 n2)
)
(define-fun inv_Node__126 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b934 
 n1 
 n2)
)
(define-fun inv_Node__1368 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1585 
 n1 
 n2)
)
(define-fun inv_Node__635 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2603 
 n1 
 n2)
)
(define-fun inv_Node__780 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1611 
 n1 
 n2)
)
(define-fun inv_Node__543 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1866 
 n1 
 n2)
)
(define-fun inv_Node__855 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2365 
 n1 
 n2)
)
(define-fun inv_Node__1551 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2753 
 n1 
 n2)
)
(define-fun inv_Node__1679 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1526 
 n1 
 n2)
)
(define-fun inv_Node__1643 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1440 
 n1 
 n2)
)
(define-fun inv_Epoch__148 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1593 m s n1 n2))
)
(define-fun inv_Node__135 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1091 
 n1 
 n2)
)
(define-fun inv_Node__1668 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2824 
 n1 
 n2)
)
(define-fun inv_Epoch__125 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__541 m s n1 n2))
)
(define-fun inv_Atom_434 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b823 
 (held m s (inv_Node__781 m s n1 n2)) 
 (= (inv_Node__782 m s n1 n2) (inv_Node__783 m s n1 n2)))
)
(define-fun inv_Node__724 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1846 
 n1 
 n2)
)
(define-fun inv_Node__247 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1261 
 n1 
 n2)
)
(define-fun inv_Epoch__182 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1560 m s n1 n2))
)
(define-fun inv_Epoch__65 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1805 m s n1 n2))
)
(define-fun inv_Epoch__64 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__899 m s n1 n2))
)
(define-fun inv_Node__879 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1707 
 n1 
 n2)
)
(define-fun inv_Node__1365 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2721 
 n1 
 n2)
)
(define-fun inv_Node__869 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1818 
 n1 
 n2)
)
(define-fun inv_Atom_324 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b807 
 (held m s (inv_Node__741 m s n1 n2)) 
 (= (inv_Node__742 m s n1 n2) (inv_Node__743 m s n1 n2)))
)
(define-fun inv_Node__1010 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2195 
 n1 
 n2)
)
(define-fun inv_Atom_343 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b817 
 (held m s (inv_Node__764 m s n1 n2)) 
 (= (inv_Node__765 m s n1 n2) (inv_Node__766 m s n1 n2)))
)
(define-fun inv_Node__1291 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1468 
 n1 
 n2)
)
(define-fun inv_Node__1224 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1582 
 n1 
 n2)
)
(define-fun inv_Atom_325 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1033 
 (held m s (inv_Node__1214 m s n1 n2)) 
 (= (inv_Node__1215 m s n1 n2) (inv_Node__1216 m s n1 n2)))
)
(define-fun inv_Node__1284 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2271 
 n1 
 n2)
)
(define-fun inv_Epoch__123 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__572 m s n1 n2))
)
(define-fun inv_Epoch__160 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__574 m s n1 n2))
)
(define-fun inv_Node__1712 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2270 
 n1 
 n2)
)
(define-fun inv_Node__46 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b640 
 n1 
 n2)
)
(define-fun inv_Node__987 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1889 
 n1 
 n2)
)
(define-fun inv_Atom_316 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1254 
 (held m s (inv_Node__1689 m s n1 n2)) 
 (= (inv_Node__1690 m s n1 n2) (inv_Node__1691 m s n1 n2)))
)
(define-fun inv_Node__1025 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2771 
 n1 
 n2)
)
(define-fun inv_Atom_154 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1007 
 (held m s (inv_Node__1145 m s n1 n2)) 
 (= (inv_Node__1146 m s n1 n2) (inv_Node__1147 m s n1 n2)))
)
(define-fun inv_Node__1269 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1661 
 n1 
 n2)
)
(define-fun inv_Epoch__352 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__607 m s n1 n2))
)
(define-fun inv_Epoch__60 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__719 m s n1 n2))
)
(define-fun inv_Epoch__299 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1024 m s n1 n2))
)
(define-fun inv_Node__1859 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2378 
 n1 
 n2)
)
(define-fun inv_Node__1665 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1545 
 n1 
 n2)
)
(define-fun inv_Node__1838 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2575 
 n1 
 n2)
)
(define-fun inv_Epoch__184 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__435 m s n1 n2))
)
(define-fun inv_Node__824 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2173 
 n1 
 n2)
)
(define-fun inv_Atom_283 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1200 
 (held m s (inv_Node__1554 m s n1 n2)) 
 (= (inv_Node__1555 m s n1 n2) (inv_Node__1556 m s n1 n2)))
)
(define-fun inv_Node__1696 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1793 
 n1 
 n2)
)
(define-fun inv_Epoch__241 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__649 m s n1 n2))
)
(define-fun inv_Node__1377 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2216 
 n1 
 n2)
)
(define-fun inv_Node__1340 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1784 
 n1 
 n2)
)
(define-fun inv_Atom_292 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b738 
 (held m s (inv_Node__583 m s n1 n2)) 
 (= (inv_Node__584 m s n1 n2) (inv_Node__585 m s n1 n2)))
)
(define-fun inv_Node__1125 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2563 
 n1 
 n2)
)
(define-fun inv_Node__668 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2078 
 n1 
 n2)
)
(define-fun inv_Atom_351 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b675 
 (held m s (inv_Node__476 m s n1 n2)) 
 (= (inv_Node__477 m s n1 n2) (inv_Node__478 m s n1 n2)))
)
(define-fun inv_Node__125 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b680 
 n1 
 n2)
)
(define-fun inv_Node__1086 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2337 
 n1 
 n2)
)
(define-fun inv_Epoch__191 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1430 m s n1 n2))
)
(define-fun inv_Atom_308 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1167 
 (held m s (inv_Node__1486 m s n1 n2)) 
 (= (inv_Node__1487 m s n1 n2) (inv_Node__1488 m s n1 n2)))
)
(define-fun inv_Node__767 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2513 
 n1 
 n2)
)
(define-fun inv_Node__1570 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1913 
 n1 
 n2)
)
(define-fun inv_Node__1299 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2823 
 n1 
 n2)
)
(define-fun inv_Node__1865 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1773 
 n1 
 n2)
)
(define-fun inv_Node__849 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1716 
 n1 
 n2)
)
(define-fun inv_Epoch__266 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__759 m s n1 n2))
)
(define-fun inv_Node__717 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2514 
 n1 
 n2)
)
(define-fun inv_Node__1134 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2280 
 n1 
 n2)
)
(define-fun inv_Node__1333 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1971 
 n1 
 n2)
)
(define-fun inv_Node__1268 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1353 
 n1 
 n2)
)
(define-fun inv_Node__1374 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1669 
 n1 
 n2)
)
(define-fun inv_Node__1730 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2802 
 n1 
 n2)
)
(define-fun inv_Node__171 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b966 
 n1 
 n2)
)
(define-fun inv_Node__1080 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1450 
 n1 
 n2)
)
(define-fun inv_Node__1542 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2151 
 n1 
 n2)
)
(define-fun inv_Node__996 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1434 
 n1 
 n2)
)
(define-fun inv_Node__238 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b734 
 n1 
 n2)
)
(define-fun inv_Atom_386 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1039 
 (held m s (inv_Node__1231 m s n1 n2)) 
 (= (inv_Node__1232 m s n1 n2) (inv_Node__1233 m s n1 n2)))
)
(define-fun inv_Epoch__274 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__456 m s n1 n2))
)
(define-fun inv_Atom_297 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b703 
 (held m s (inv_Node__520 m s n1 n2)) 
 (= (inv_Node__521 m s n1 n2) (inv_Node__522 m s n1 n2)))
)
(define-fun inv_Node__1595 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2002 
 n1 
 n2)
)
(define-fun inv_Node__1562 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2618 
 n1 
 n2)
)
(define-fun inv_Node__1391 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2738 
 n1 
 n2)
)
(define-fun inv_Epoch__49 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__911 m s n1 n2))
)
(define-fun inv_Node__720 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2448 
 n1 
 n2)
)
(define-fun inv_Node__725 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2273 
 n1 
 n2)
)
(define-fun inv_Node__1851 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1859 
 n1 
 n2)
)
(define-fun inv_Node__1497 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2745 
 n1 
 n2)
)
(define-fun inv_Node__1308 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2364 
 n1 
 n2)
)
(define-fun inv_Atom_210 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1238 
 (held m s (inv_Node__1650 m s n1 n2)) 
 (= (inv_Node__1651 m s n1 n2) (inv_Node__1652 m s n1 n2)))
)
(define-fun inv_Atom_437 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1191 
 (held m s (inv_Node__1540 m s n1 n2)) 
 (= (inv_Node__1541 m s n1 n2) (inv_Node__1542 m s n1 n2)))
)
(define-fun inv_Node__1607 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1970 
 n1 
 n2)
)
(define-fun inv_Node__979 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2559 
 n1 
 n2)
)
(define-fun inv_Node__1840 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2613 
 n1 
 n2)
)
(define-fun inv_Node__1063 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2555 
 n1 
 n2)
)
(define-fun inv_Node__1853 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1664 
 n1 
 n2)
)
(define-fun inv_Node__266 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1194 
 n1 
 n2)
)
(define-fun inv_Node__1629 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2828 
 n1 
 n2)
)
(define-fun inv_Atom_192 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b725 
 (held m s (inv_Node__553 m s n1 n2)) 
 (= (inv_Node__554 m s n1 n2) (inv_Node__555 m s n1 n2)))
)
(define-fun inv_Node__1456 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2795 
 n1 
 n2)
)
(define-fun inv_Atom_322 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b859 
 (held m s (inv_Node__860 m s n1 n2)) 
 (= (inv_Node__861 m s n1 n2) (inv_Node__862 m s n1 n2)))
)
(define-fun inv_Atom_180 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b944 
 (held m s (inv_Node__1041 m s n1 n2)) 
 (= (inv_Node__1042 m s n1 n2) (inv_Node__1043 m s n1 n2)))
)
(define-fun inv_Atom_293 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b948 
 (held m s (inv_Node__1048 m s n1 n2)) 
 (= (inv_Node__1049 m s n1 n2) (inv_Node__1050 m s n1 n2)))
)
(define-fun inv_Epoch__219 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1025 m s n1 n2))
)
(define-fun inv_Epoch__13 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__249 m s n1 n2))
)
(define-fun inv_Epoch__63 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1839 m s n1 n2))
)
(define-fun inv_Epoch__269 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1348 m s n1 n2))
)
(define-fun inv_Node__1681 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1977 
 n1 
 n2)
)
(define-fun inv_Atom_194 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b927 
 (held m s (inv_Node__996 m s n1 n2)) 
 (= (inv_Node__997 m s n1 n2) (inv_Node__998 m s n1 n2)))
)
(define-fun inv_Node__1322 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2123 
 n1 
 n2)
)
(define-fun inv_Node__1087 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1783 
 n1 
 n2)
)
(define-fun inv_Epoch__252 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1775 m s n1 n2))
)
(define-fun inv_Epoch__134 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__870 m s n1 n2))
)
(define-fun inv_Epoch__120 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1774 m s n1 n2))
)
(define-fun inv_Node__1151 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1963 
 n1 
 n2)
)
(define-fun inv_Node__348 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b815 
 n1 
 n2)
)
(define-fun inv_Node__675 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1857 
 n1 
 n2)
)
(define-fun inv_Node__1706 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2830 
 n1 
 n2)
)
(define-fun inv_Node__922 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1457 
 n1 
 n2)
)
(define-fun inv_Node__1079 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1893 
 n1 
 n2)
)
(define-fun inv_Node__1222 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2816 
 n1 
 n2)
)
(define-fun inv_Node__1298 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2850 
 n1 
 n2)
)
(define-fun inv_Node__1135 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2047 
 n1 
 n2)
)
(define-fun inv_Epoch__157 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__398 m s n1 n2))
)
(define-fun inv_Node__1447 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2124 
 n1 
 n2)
)
(define-fun inv_Epoch__264 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__453 m s n1 n2))
)
(define-fun inv_Node__56 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1256 
 n1 
 n2)
)
(define-fun inv_Atom_428 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b974 
 (held m s (inv_Node__1082 m s n1 n2)) 
 (= (inv_Node__1083 m s n1 n2) (inv_Node__1084 m s n1 n2)))
)
(define-fun inv_Node__592 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2651 
 n1 
 n2)
)
(define-fun inv_Node__986 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1394 
 n1 
 n2)
)
(define-fun inv_Node__1244 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2789 
 n1 
 n2)
)
(define-fun inv_Node__1275 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1957 
 n1 
 n2)
)
(define-fun inv_Node__1242 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2683 
 n1 
 n2)
)
(define-fun inv_Node__1809 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2168 
 n1 
 n2)
)
(define-fun inv_Node__1312 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2649 
 n1 
 n2)
)
(define-fun inv_Node__57 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1174 
 n1 
 n2)
)
(define-fun inv_Node__1529 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2042 
 n1 
 n2)
)
(define-fun inv_Node__859 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1360 
 n1 
 n2)
)
(define-fun inv_Node__429 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2827 
 n1 
 n2)
)
(define-fun inv_Atom_162 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1183 
 (held m s (inv_Node__1517 m s n1 n2)) 
 (= (inv_Node__1518 m s n1 n2) (inv_Node__1519 m s n1 n2)))
)
(define-fun inv_Node__1797 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2697 
 n1 
 n2)
)
(define-fun inv_Node__624 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1347 
 n1 
 n2)
)
(define-fun inv_Node__1304 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2684 
 n1 
 n2)
)
(define-fun inv_Atom_436 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b796 
 (held m s (inv_Node__722 m s n1 n2)) 
 (= (inv_Node__723 m s n1 n2) (inv_Node__724 m s n1 n2)))
)
(define-fun inv_Node__1480 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1422 
 n1 
 n2)
)
(define-fun inv_Node__790 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1631 
 n1 
 n2)
)
(define-fun inv_Epoch__217 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__752 m s n1 n2))
)
(define-fun inv_Node__350 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1117 
 n1 
 n2)
)
(define-fun inv_Node__1787 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2666 
 n1 
 n2)
)
(define-fun inv_Epoch__139 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1130 m s n1 n2))
)
(define-fun inv_Node__1739 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1623 
 n1 
 n2)
)
(define-fun inv_Node__241 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1169 
 n1 
 n2)
)
(define-fun inv_Node__306 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1264 
 n1 
 n2)
)
(define-fun inv_Node__1414 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1465 
 n1 
 n2)
)
(define-fun inv_Epoch__286 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__592 m s n1 n2))
)
(define-fun inv_Node__423 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2499 
 n1 
 n2)
)
(define-fun inv_Node__1435 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2092 
 n1 
 n2)
)
(define-fun inv_Node__294 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b947 
 n1 
 n2)
)
(define-fun inv_Node__353 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b915 
 n1 
 n2)
)
(define-fun inv_Node__1635 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1885 
 n1 
 n2)
)
(define-fun inv_Atom_23 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b223 
 (held m s (inv_Node__130 m s n1 n2)) 
 (ite inv_b224 
 (locked m s (inv_Epoch__144 m s n1 n2) (inv_Node__131 m s n1 n2)) 
 (ite inv_b225 
 (transfer m s (inv_Epoch__145 m s n1 n2) (inv_Node__132 m s n1 n2)) 
 (ite inv_b226 
 (le m (inv_Epoch__146 m s n1 n2) (inv_Epoch__147 m s n1 n2)) 
 (ite inv_b227 
 (= (inv_Node__133 m s n1 n2) (inv_Node__134 m s n1 n2)) 
 (ite inv_b228 
 (= (inv_Epoch__148 m s n1 n2) (inv_Epoch__149 m s n1 n2)) 
 (ite inv_b229 
 (and (inv_Atom_176 m s n1 n2) (inv_Atom_177 m s n1 n2)) 
 (ite inv_b230 
 (or (inv_Atom_178 m s n1 n2) (inv_Atom_179 m s n1 n2)) 
 (ite inv_b231 
 (=> (inv_Atom_180 m s n1 n2) (inv_Atom_181 m s n1 n2)) 
 (not (inv_Atom_182 m s n1 n2)))))))))))
)
(define-fun inv_Node__837 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2587 
 n1 
 n2)
)
(define-fun inv_Node__174 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1112 
 n1 
 n2)
)
(define-fun inv_Node__820 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1964 
 n1 
 n2)
)
(define-fun inv_Node__1792 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2071 
 n1 
 n2)
)
(define-fun inv_Node__688 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1381 
 n1 
 n2)
)
(define-fun inv_Node__613 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1399 
 n1 
 n2)
)
(define-fun inv_Node__1638 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1663 
 n1 
 n2)
)
(define-fun inv_Node__421 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1521 
 n1 
 n2)
)
(define-fun inv_Node__129 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1240 
 n1 
 n2)
)
(define-fun inv_Node__718 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1401 
 n1 
 n2)
)
(define-fun inv_Node__1678 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1848 
 n1 
 n2)
)
(define-fun inv_Node__750 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2538 
 n1 
 n2)
)
(define-fun inv_Node__597 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2699 
 n1 
 n2)
)
(define-fun inv_Epoch__67 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1052 m s n1 n2))
)
(define-fun inv_Node__819 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1917 
 n1 
 n2)
)
(define-fun inv_Node__682 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2384 
 n1 
 n2)
)
(define-fun inv_Node__832 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2437 
 n1 
 n2)
)
(define-fun inv_Node__1710 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1502 
 n1 
 n2)
)
(define-fun inv_Node__627 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1966 
 n1 
 n2)
)
(define-fun inv_Atom_304 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b749 
 (held m s (inv_Node__612 m s n1 n2)) 
 (= (inv_Node__613 m s n1 n2) (inv_Node__614 m s n1 n2)))
)
(define-fun inv_Node__608 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1557 
 n1 
 n2)
)
(define-fun inv_Node__1769 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1752 
 n1 
 n2)
)
(define-fun inv_Node__1666 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2203 
 n1 
 n2)
)
(define-fun inv_Node__14 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b372 
 n1 
 n2)
)
(define-fun inv_Node__1676 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1771 
 n1 
 n2)
)
(define-fun inv_Node__1419 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1398 
 n1 
 n2)
)
(define-fun inv_Node__1826 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1370 
 n1 
 n2)
)
(define-fun inv_Node__240 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1289 
 n1 
 n2)
)
(define-fun inv_Node__1746 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2744 
 n1 
 n2)
)
(define-fun inv_Node__657 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2185 
 n1 
 n2)
)
(define-fun inv_Node__337 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b710 
 n1 
 n2)
)
(define-fun inv_Atom_22 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b517 
 (held m s (inv_Node__307 m s n1 n2)) 
 (ite inv_b518 
 (locked m s (inv_Epoch__324 m s n1 n2) (inv_Node__308 m s n1 n2)) 
 (ite inv_b519 
 (transfer m s (inv_Epoch__325 m s n1 n2) (inv_Node__309 m s n1 n2)) 
 (ite inv_b520 
 (le m (inv_Epoch__326 m s n1 n2) (inv_Epoch__327 m s n1 n2)) 
 (ite inv_b521 
 (= (inv_Node__310 m s n1 n2) (inv_Node__311 m s n1 n2)) 
 (ite inv_b522 
 (= (inv_Epoch__328 m s n1 n2) (inv_Epoch__329 m s n1 n2)) 
 (ite inv_b523 
 (and (inv_Atom_386 m s n1 n2) (inv_Atom_387 m s n1 n2)) 
 (ite inv_b524 
 (or (inv_Atom_388 m s n1 n2) (inv_Atom_389 m s n1 n2)) 
 (ite inv_b525 
 (=> (inv_Atom_390 m s n1 n2) (inv_Atom_391 m s n1 n2)) 
 (not (inv_Atom_392 m s n1 n2)))))))))))
)
(define-fun inv_Epoch__270 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1576 m s n1 n2))
)
(define-fun inv_Atom_226 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1288 
 (held m s (inv_Node__1766 m s n1 n2)) 
 (= (inv_Node__1767 m s n1 n2) (inv_Node__1768 m s n1 n2)))
)
(define-fun inv_Node__1343 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1931 
 n1 
 n2)
)
(define-fun inv_Node__1187 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2366 
 n1 
 n2)
)
(define-fun inv_Epoch__351 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__530 m s n1 n2))
)
(define-fun inv_Node__1608 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2380 
 n1 
 n2)
)
(define-fun inv_Node__694 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1523 
 n1 
 n2)
)
(define-fun inv_Node__1416 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2000 
 n1 
 n2)
)
(define-fun inv_Atom_220 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1182 
 (held m s (inv_Node__1512 m s n1 n2)) 
 (= (inv_Node__1513 m s n1 n2) (inv_Node__1514 m s n1 n2)))
)
(define-fun inv_Node__1411 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1815 
 n1 
 n2)
)
(define-fun inv_Atom_301 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b748 
 (held m s (inv_Node__608 m s n1 n2)) 
 (= (inv_Node__609 m s n1 n2) (inv_Node__610 m s n1 n2)))
)
(define-fun inv_Atom_230 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b739 
 (held m s (inv_Node__586 m s n1 n2)) 
 (= (inv_Node__587 m s n1 n2) (inv_Node__588 m s n1 n2)))
)
(define-fun inv_Node__1188 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2826 
 n1 
 n2)
)
(define-fun inv_Atom_208 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1335 
 (held m s (inv_Node__1863 m s n1 n2)) 
 (= (inv_Node__1864 m s n1 n2) (inv_Node__1865 m s n1 n2)))
)
(define-fun inv_Atom_261 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1291 
 (held m s (inv_Node__1771 m s n1 n2)) 
 (= (inv_Node__1772 m s n1 n2) (inv_Node__1773 m s n1 n2)))
)
(define-fun inv_Node__1605 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2711 
 n1 
 n2)
)
(define-fun inv_Node__526 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2768 
 n1 
 n2)
)
(define-fun inv_Atom_153 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1133 
 (held m s (inv_Node__1404 m s n1 n2)) 
 (= (inv_Node__1405 m s n1 n2) (inv_Node__1406 m s n1 n2)))
)
(define-fun inv_Node__875 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1533 
 n1 
 n2)
)
(define-fun inv_Node__349 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1190 
 n1 
 n2)
)
(define-fun inv_Node__839 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1563 
 n1 
 n2)
)
(define-fun inv_Epoch__137 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__874 m s n1 n2))
)
(define-fun inv_Node__912 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2368 
 n1 
 n2)
)
(define-fun inv_Node__1320 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2788 
 n1 
 n2)
)
(define-fun inv_Node__1508 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2532 
 n1 
 n2)
)
(define-fun inv_Atom_231 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b741 
 (held m s (inv_Node__589 m s n1 n2)) 
 (= (inv_Node__590 m s n1 n2) (inv_Node__591 m s n1 n2)))
)
(define-fun inv_Epoch__12 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__122 m s n1 n2))
)
(define-fun inv_Node__1683 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1371 
 n1 
 n2)
)
(define-fun inv_Epoch__189 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1010 m s n1 n2))
)
(define-fun inv_Node__1129 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2237 
 n1 
 n2)
)
(define-fun inv_Node__1305 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2298 
 n1 
 n2)
)
(define-fun inv_Node__417 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1677 
 n1 
 n2)
)
(define-fun inv_Atom_287 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b942 
 (held m s (inv_Node__1035 m s n1 n2)) 
 (= (inv_Node__1036 m s n1 n2) (inv_Node__1037 m s n1 n2)))
)
(define-fun inv_Node__1185 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1687 
 n1 
 n2)
)
(define-fun inv_Node__234 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b946 
 n1 
 n2)
)
(define-fun inv_Epoch__188 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1454 m s n1 n2))
)
(define-fun inv_Node__1321 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2498 
 n1 
 n2)
)
(define-fun inv_Node__1093 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2468 
 n1 
 n2)
)
(define-fun inv_Node__1370 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1797 
 n1 
 n2)
)
(define-fun inv_Epoch__322 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__493 m s n1 n2))
)
(define-fun inv_Node__954 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2829 
 n1 
 n2)
)
(define-fun inv_Node__1794 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1393 
 n1 
 n2)
)
(define-fun inv_Node__1029 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2454 
 n1 
 n2)
)
(define-fun inv_Node__1017 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1543 
 n1 
 n2)
)
(define-fun inv_Epoch__198 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1643 m s n1 n2))
)
(define-fun inv_Atom_85 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b945 
 (held m s (inv_Node__1044 m s n1 n2)) 
 (= (inv_Node__1045 m s n1 n2) (inv_Node__1046 m s n1 n2)))
)
(define-fun inv_Node__647 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1418 
 n1 
 n2)
)
(define-fun inv_Node__305 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b788 
 n1 
 n2)
)
(define-fun inv_Node__336 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b814 
 n1 
 n2)
)
(define-fun inv_Node__1067 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2661 
 n1 
 n2)
)
(define-fun inv_Node__452 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1764 
 n1 
 n2)
)
(define-fun inv_Node__1590 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2801 
 n1 
 n2)
)
(define-fun inv_Atom_83 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1093 
 (held m s (inv_Node__1318 m s n1 n2)) 
 (= (inv_Node__1319 m s n1 n2) (inv_Node__1320 m s n1 n2)))
)
(define-fun inv_Atom_25 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b95 
 (held m s (inv_Node__53 m s n1 n2)) 
 (ite inv_b96 
 (locked m s (inv_Epoch__60 m s n1 n2) (inv_Node__54 m s n1 n2)) 
 (ite inv_b97 
 (transfer m s (inv_Epoch__61 m s n1 n2) (inv_Node__55 m s n1 n2)) 
 (ite inv_b98 
 (le m (inv_Epoch__62 m s n1 n2) (inv_Epoch__63 m s n1 n2)) 
 (ite inv_b99 
 (= (inv_Node__56 m s n1 n2) (inv_Node__57 m s n1 n2)) 
 (ite inv_b100 
 (= (inv_Epoch__64 m s n1 n2) (inv_Epoch__65 m s n1 n2)) 
 (ite inv_b101 
 (and (inv_Atom_78 m s n1 n2) (inv_Atom_79 m s n1 n2)) 
 (ite inv_b102 
 (or (inv_Atom_80 m s n1 n2) (inv_Atom_81 m s n1 n2)) 
 (ite inv_b103 
 (=> (inv_Atom_82 m s n1 n2) (inv_Atom_83 m s n1 n2)) 
 (not (inv_Atom_84 m s n1 n2)))))))))))
)
(define-fun inv_Atom_433 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b623 
 (held m s (inv_Node__376 m s n1 n2)) 
 (= (inv_Node__377 m s n1 n2) (inv_Node__378 m s n1 n2)))
)
(define-fun inv_Node__715 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1747 
 n1 
 n2)
)
(define-fun inv_Node__1089 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1415 
 n1 
 n2)
)
(define-fun inv_Node__836 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2145 
 n1 
 n2)
)
(define-fun inv_Atom_317 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1110 
 (held m s (inv_Node__1363 m s n1 n2)) 
 (= (inv_Node__1364 m s n1 n2) (inv_Node__1365 m s n1 n2)))
)
(define-fun inv_Atom_174 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1303 
 (held m s (inv_Node__1790 m s n1 n2)) 
 (= (inv_Node__1791 m s n1 n2) (inv_Node__1792 m s n1 n2)))
)
(define-fun inv_Node__224 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b837 
 n1 
 n2)
)
(define-fun inv_Node__1817 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1920 
 n1 
 n2)
)
(define-fun inv_Node__1704 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2360 
 n1 
 n2)
)
(define-fun inv_Node__1741 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1874 
 n1 
 n2)
)
(define-fun inv_Node__498 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2716 
 n1 
 n2)
)
(define-fun inv_Node__185 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1322 
 n1 
 n2)
)
(define-fun inv_Node__1349 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2696 
 n1 
 n2)
)
(define-fun inv_Node__1674 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2339 
 n1 
 n2)
)
(define-fun inv_Epoch__221 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1557 m s n1 n2))
)
(define-fun inv_Atom_135 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b833 
 (held m s (inv_Node__812 m s n1 n2)) 
 (= (inv_Node__813 m s n1 n2) (inv_Node__814 m s n1 n2)))
)
(define-fun inv_Node__1306 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2588 
 n1 
 n2)
)
(define-fun inv_Node__1328 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1993 
 n1 
 n2)
)
(define-fun inv_Node__111 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b770 
 n1 
 n2)
)
(define-fun inv_Node__938 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2080 
 n1 
 n2)
)
(define-fun inv_Node__711 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1385 
 n1 
 n2)
)
(define-fun inv_Node__809 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2685 
 n1 
 n2)
)
(define-fun inv_Node__401 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1426 
 n1 
 n2)
)
(define-fun inv_Atom_441 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1047 
 (held m s (inv_Node__1245 m s n1 n2)) 
 (= (inv_Node__1246 m s n1 n2) (inv_Node__1247 m s n1 n2)))
)
(define-fun inv_Node__579 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1961 
 n1 
 n2)
)
(define-fun inv_Node__833 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1634 
 n1 
 n2)
)
(define-fun inv_Node__1186 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1711 
 n1 
 n2)
)
(define-fun inv_Node__1088 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2550 
 n1 
 n2)
)
(define-fun inv_Node__821 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2075 
 n1 
 n2)
)
(define-fun inv_Node__1229 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1983 
 n1 
 n2)
)
(define-fun inv_Atom_67 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1186 
 (held m s (inv_Node__1527 m s n1 n2)) 
 (= (inv_Node__1528 m s n1 n2) (inv_Node__1529 m s n1 n2)))
)
(define-fun inv_Node__677 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2060 
 n1 
 n2)
)
(define-fun inv_Node__1266 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1550 
 n1 
 n2)
)
(define-fun inv_Node__504 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1839 
 n1 
 n2)
)
(define-fun inv_Atom_145 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b751 
 (held m s (inv_Node__615 m s n1 n2)) 
 (= (inv_Node__616 m s n1 n2) (inv_Node__617 m s n1 n2)))
)
(define-fun inv_Epoch__108 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__697 m s n1 n2))
)
(define-fun inv_Node__509 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2736 
 n1 
 n2)
)
(define-fun inv_Atom_144 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1010 
 (held m s (inv_Node__1152 m s n1 n2)) 
 (= (inv_Node__1153 m s n1 n2) (inv_Node__1154 m s n1 n2)))
)
(define-fun inv_Node__599 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2362 
 n1 
 n2)
)
(define-fun inv_Node__145 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b905 
 n1 
 n2)
)
(define-fun inv_Node__101 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b994 
 n1 
 n2)
)
(define-fun inv_Atom_152 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b877 
 (held m s (inv_Node__894 m s n1 n2)) 
 (= (inv_Node__895 m s n1 n2) (inv_Node__896 m s n1 n2)))
)
(define-fun inv_Node__1663 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1504 
 n1 
 n2)
)
(define-fun inv_Node__178 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1197 
 n1 
 n2)
)
(define-fun inv_Node__1441 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2677 
 n1 
 n2)
)
(define-fun inv_Node__1077 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2058 
 n1 
 n2)
)
(define-fun inv_Atom_415 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1170 
 (held m s (inv_Node__1491 m s n1 n2)) 
 (= (inv_Node__1492 m s n1 n2) (inv_Node__1493 m s n1 n2)))
)
(define-fun inv_Node__175 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b664 
 n1 
 n2)
)
(define-fun inv_Node__1193 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1816 
 n1 
 n2)
)
(define-fun inv_Node__426 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2655 
 n1 
 n2)
)
(define-fun inv_Node__920 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2266 
 n1 
 n2)
)
(define-fun inv_Node__1417 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2174 
 n1 
 n2)
)
(define-fun inv_Atom_222 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b653 
 (held m s (inv_Node__431 m s n1 n2)) 
 (= (inv_Node__432 m s n1 n2) (inv_Node__433 m s n1 n2)))
)
(define-fun inv_Epoch__169 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__898 m s n1 n2))
)
(define-fun inv_Node__808 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1980 
 n1 
 n2)
)
(define-fun inv_Node__1359 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2234 
 n1 
 n2)
)
(define-fun inv_Node__267 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1154 
 n1 
 n2)
)
(define-fun inv_Node__834 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2627 
 n1 
 n2)
)
(define-fun inv_Epoch__48 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1098 m s n1 n2))
)
(define-fun inv_Epoch__240 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__757 m s n1 n2))
)
(define-fun inv_Node__1479 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2321 
 n1 
 n2)
)
(define-fun inv_Node__854 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2679 
 n1 
 n2)
)
(define-fun inv_Epoch__284 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1272 m s n1 n2))
)
(define-fun inv_Node__1011 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1596 
 n1 
 n2)
)
(define-fun inv_Atom_383 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1271 
 (held m s (inv_Node__1728 m s n1 n2)) 
 (= (inv_Node__1729 m s n1 n2) (inv_Node__1730 m s n1 n2)))
)
(define-fun inv_Epoch__254 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__531 m s n1 n2))
)
(define-fun inv_Node__951 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2037 
 n1 
 n2)
)
(define-fun inv_Node__1705 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1715 
 n1 
 n2)
)
(define-fun inv_Node__560 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2516 
 n1 
 n2)
)
(define-fun inv_Node__1136 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2263 
 n1 
 n2)
)
(define-fun inv_Node__1552 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1640 
 n1 
 n2)
)
(define-fun inv_Atom_87 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b630 
 (held m s (inv_Node__394 m s n1 n2)) 
 (= (inv_Node__395 m s n1 n2) (inv_Node__396 m s n1 n2)))
)
(define-fun inv_Node__119 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1102 
 n1 
 n2)
)
(define-fun inv_Node__1472 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2508 
 n1 
 n2)
)
(define-fun inv_Epoch__287 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1680 m s n1 n2))
)
(define-fun inv_Epoch__141 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__557 m s n1 n2))
)
(define-fun inv_Node__281 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1222 
 n1 
 n2)
)
(define-fun inv_Node__1294 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1572 
 n1 
 n2)
)
(define-fun inv_Epoch__272 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1738 m s n1 n2))
)
(define-fun inv_Node__505 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2251 
 n1 
 n2)
)
(define-fun inv_Node__1786 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1376 
 n1 
 n2)
)
(define-fun inv_Node__815 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1608 
 n1 
 n2)
)
(define-fun inv_Node__425 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1413 
 n1 
 n2)
)
(define-fun inv_Atom_235 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b658 
 (held m s (inv_Node__437 m s n1 n2)) 
 (= (inv_Node__438 m s n1 n2) (inv_Node__439 m s n1 n2)))
)
(define-fun inv_Node__228 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1077 
 n1 
 n2)
)
(define-fun inv_Node__756 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1581 
 n1 
 n2)
)
(define-fun inv_Epoch__365 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__598 m s n1 n2))
)
(define-fun inv_Atom_27 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b450 
 (held m s (inv_Node__266 m s n1 n2)) 
 (ite inv_b451 
 (locked m s (inv_Epoch__282 m s n1 n2) (inv_Node__267 m s n1 n2)) 
 (ite inv_b452 
 (transfer m s (inv_Epoch__283 m s n1 n2) (inv_Node__268 m s n1 n2)) 
 (ite inv_b453 
 (le m (inv_Epoch__284 m s n1 n2) (inv_Epoch__285 m s n1 n2)) 
 (ite inv_b454 
 (= (inv_Node__269 m s n1 n2) (inv_Node__270 m s n1 n2)) 
 (ite inv_b455 
 (= (inv_Epoch__286 m s n1 n2) (inv_Epoch__287 m s n1 n2)) 
 (ite inv_b456 
 (and (inv_Atom_337 m s n1 n2) (inv_Atom_338 m s n1 n2)) 
 (ite inv_b457 
 (or (inv_Atom_339 m s n1 n2) (inv_Atom_340 m s n1 n2)) 
 (ite inv_b458 
 (=> (inv_Atom_341 m s n1 n2) (inv_Atom_342 m s n1 n2)) 
 (not (inv_Atom_343 m s n1 n2)))))))))))
)
(define-fun inv_Epoch__342 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__461 m s n1 n2))
)
(define-fun inv_Atom_318 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1119 
 (held m s (inv_Node__1379 m s n1 n2)) 
 (= (inv_Node__1380 m s n1 n2) (inv_Node__1381 m s n1 n2)))
)
(define-fun inv_Node__1251 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1594 
 n1 
 n2)
)
(define-fun inv_Node__716 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2389 
 n1 
 n2)
)
(define-fun inv_Epoch__127 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__720 m s n1 n2))
)
(define-fun inv_Node__1870 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2497 
 n1 
 n2)
)
(define-fun inv_Node__1811 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1551 
 n1 
 n2)
)
(define-fun inv_Node__1076 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1507 
 n1 
 n2)
)
(define-fun inv_Node__1591 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2524 
 n1 
 n2)
)
(define-fun inv_Atom_260 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b693 
 (held m s (inv_Node__509 m s n1 n2)) 
 (= (inv_Node__510 m s n1 n2) (inv_Node__511 m s n1 n2)))
)
(define-fun inv_Node__1274 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2112 
 n1 
 n2)
)
(define-fun inv_Node__1871 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1840 
 n1 
 n2)
)
(define-fun inv_Node__642 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2449 
 n1 
 n2)
)
(define-fun inv_Node__1814 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2318 
 n1 
 n2)
)
(define-fun inv_Node__172 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1085 
 n1 
 n2)
)
(define-fun inv_Node__1877 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2457 
 n1 
 n2)
)
(define-fun inv_Node__277 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b935 
 n1 
 n2)
)
(define-fun inv_Node__1850 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1718 
 n1 
 n2)
)
(define-fun inv_Node__1429 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1808 
 n1 
 n2)
)
(define-fun inv_Node__566 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2179 
 n1 
 n2)
)
(define-fun inv_Node__1688 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2330 
 n1 
 n2)
)
(define-fun inv_Node__173 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1302 
 n1 
 n2)
)
(define-fun inv_Node__280 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1273 
 n1 
 n2)
)
(define-fun inv_Epoch__128 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__891 m s n1 n2))
)
(define-fun inv_Node__1470 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1350 
 n1 
 n2)
)
(define-fun inv_Node__219 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b722 
 n1 
 n2)
)
(define-fun inv_Node__1070 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1740 
 n1 
 n2)
)
(define-fun inv_Node__620 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2565 
 n1 
 n2)
)
(define-fun inv_Atom_420 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1078 
 (held m s (inv_Node__1302 m s n1 n2)) 
 (= (inv_Node__1303 m s n1 n2) (inv_Node__1304 m s n1 n2)))
)
(define-fun inv_Atom_397 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b923 
 (held m s (inv_Node__986 m s n1 n2)) 
 (= (inv_Node__987 m s n1 n2) (inv_Node__988 m s n1 n2)))
)
(define-fun inv_Atom_429 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1134 
 (held m s (inv_Node__1408 m s n1 n2)) 
 (= (inv_Node__1409 m s n1 n2) (inv_Node__1410 m s n1 n2)))
)
(define-fun inv_Node__831 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1785 
 n1 
 n2)
)
(define-fun inv_Node__1090 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1630 
 n1 
 n2)
)
(define-fun inv_Epoch__117 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1826 m s n1 n2))
)
(define-fun inv_Node__1209 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2650 
 n1 
 n2)
)
(define-fun inv_Node__537 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1666 
 n1 
 n2)
)
(define-fun inv_Node__1424 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1831 
 n1 
 n2)
)
(define-fun inv_Node__168 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1125 
 n1 
 n2)
)
(define-fun inv_Node__1697 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2400 
 n1 
 n2)
)
(define-fun inv_Node__1711 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1826 
 n1 
 n2)
)
(define-fun inv_Atom_161 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b822 
 (held m s (inv_Node__778 m s n1 n2)) 
 (= (inv_Node__779 m s n1 n2) (inv_Node__780 m s n1 n2)))
)
(define-fun inv_Node__408 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1423 
 n1 
 n2)
)
(define-fun inv_Node__709 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1600 
 n1 
 n2)
)
(define-fun inv_Node__523 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2035 
 n1 
 n2)
)
(define-fun inv_Node__1504 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2585 
 n1 
 n2)
)
(define-fun inv_Node__900 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2109 
 n1 
 n2)
)
(define-fun inv_Node__1699 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1577 
 n1 
 n2)
)
(define-fun inv_Atom_319 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1310 
 (held m s (inv_Node__1806 m s n1 n2)) 
 (= (inv_Node__1807 m s n1 n2) (inv_Node__1808 m s n1 n2)))
)
(define-fun inv_Epoch__249 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__573 m s n1 n2))
)
(define-fun inv_Epoch__275 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__558 m s n1 n2))
)
(define-fun inv_Atom_219 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b997 
 (held m s (inv_Node__1127 m s n1 n2)) 
 (= (inv_Node__1128 m s n1 n2) (inv_Node__1129 m s n1 n2)))
)
(define-fun inv_Node__1530 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1469 
 n1 
 n2)
)
(define-fun inv_Epoch__237 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__753 m s n1 n2))
)
(define-fun inv_Node__542 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2415 
 n1 
 n2)
)
(define-fun inv_Epoch__243 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1422 m s n1 n2))
)
(define-fun inv_Atom_303 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b967 
 (held m s (inv_Node__1069 m s n1 n2)) 
 (= (inv_Node__1070 m s n1 n2) (inv_Node__1071 m s n1 n2)))
)
(define-fun inv_Node__1030 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2479 
 n1 
 n2)
)
(define-fun inv_Node__1164 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1515 
 n1 
 n2)
)
(define-fun inv_Node__1577 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2411 
 n1 
 n2)
)
(define-fun inv_Node__1091 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1936 
 n1 
 n2)
)
(define-fun inv_Atom_172 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b950 
 (held m s (inv_Node__1053 m s n1 n2)) 
 (= (inv_Node__1054 m s n1 n2) (inv_Node__1055 m s n1 n2)))
)
(define-fun inv_Atom_209 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1069 
 (held m s (inv_Node__1289 m s n1 n2)) 
 (= (inv_Node__1290 m s n1 n2) (inv_Node__1291 m s n1 n2)))
)
(define-fun inv_Node__303 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1325 
 n1 
 n2)
)
(define-fun inv_Epoch__245 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__739 m s n1 n2))
)
(define-fun inv_Atom_196 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1143 
 (held m s (inv_Node__1432 m s n1 n2)) 
 (= (inv_Node__1433 m s n1 n2) (inv_Node__1434 m s n1 n2)))
)
(define-fun inv_Node__1078 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1614 
 n1 
 n2)
)
(define-fun inv_Node__932 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1725 
 n1 
 n2)
)
(define-fun inv_Node__103 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b976 
 n1 
 n2)
)
(define-fun inv_Node__671 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2726 
 n1 
 n2)
)
(define-fun inv_Atom_175 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1111 
 (held m s (inv_Node__1366 m s n1 n2)) 
 (= (inv_Node__1367 m s n1 n2) (inv_Node__1368 m s n1 n2)))
)
(define-fun inv_Epoch__257 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1670 m s n1 n2))
)
(define-fun inv_Atom_412 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b830 
 (held m s (inv_Node__806 m s n1 n2)) 
 (= (inv_Node__807 m s n1 n2) (inv_Node__808 m s n1 n2)))
)
(define-fun inv_Atom_327 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1139 
 (held m s (inv_Node__1418 m s n1 n2)) 
 (= (inv_Node__1419 m s n1 n2) (inv_Node__1420 m s n1 n2)))
)
(define-fun inv_Node__83 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b634 
 n1 
 n2)
)
(define-fun inv_Atom_328 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1276 
 (held m s (inv_Node__1744 m s n1 n2)) 
 (= (inv_Node__1745 m s n1 n2) (inv_Node__1746 m s n1 n2)))
)
(define-fun inv_Node__930 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2518 
 n1 
 n2)
)
(define-fun inv_Node__1634 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2775 
 n1 
 n2)
)
(define-fun inv_Epoch__20 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__331 m s n1 n2))
)
(define-fun inv_Node__1804 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2756 
 n1 
 n2)
)
(define-fun inv_Atom_159 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1022 
 (held m s (inv_Node__1182 m s n1 n2)) 
 (= (inv_Node__1183 m s n1 n2) (inv_Node__1184 m s n1 n2)))
)
(define-fun inv_Node__1474 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2747 
 n1 
 n2)
)
(define-fun inv_Node__1092 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2732 
 n1 
 n2)
)
(define-fun inv_Atom_90 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b937 
 (held m s (inv_Node__1018 m s n1 n2)) 
 (= (inv_Node__1019 m s n1 n2) (inv_Node__1020 m s n1 n2)))
)
(define-fun inv_Atom_320 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1180 
 (held m s (inv_Node__1506 m s n1 n2)) 
 (= (inv_Node__1507 m s n1 n2) (inv_Node__1508 m s n1 n2)))
)
(define-fun inv_Node__1202 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2537 
 n1 
 n2)
)
(define-fun inv_Node__773 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1642 
 n1 
 n2)
)
(define-fun inv_Node__1612 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1499 
 n1 
 n2)
)
(define-fun inv_Node__731 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1373 
 n1 
 n2)
)
(define-fun inv_Epoch__52 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1569 m s n1 n2))
)
(define-fun inv_Node__79 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b723 
 n1 
 n2)
)
(define-fun inv_Node__745 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2079 
 n1 
 n2)
)
(define-fun inv_Epoch__124 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1684 m s n1 n2))
)
(define-fun inv_Atom_165 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b890 
 (held m s (inv_Node__922 m s n1 n2)) 
 (= (inv_Node__923 m s n1 n2) (inv_Node__924 m s n1 n2)))
)
(define-fun inv_Node__152 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1079 
 n1 
 n2)
)
(define-fun inv_Atom_407 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b858 
 (held m s (inv_Node__856 m s n1 n2)) 
 (= (inv_Node__857 m s n1 n2) (inv_Node__858 m s n1 n2)))
)
(define-fun inv_Atom_65 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1015 
 (held m s (inv_Node__1165 m s n1 n2)) 
 (= (inv_Node__1166 m s n1 n2) (inv_Node__1167 m s n1 n2)))
)
(define-fun inv_Node__475 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1688 
 n1 
 n2)
)
(define-fun inv_Atom_110 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b660 
 (held m s (inv_Node__443 m s n1 n2)) 
 (= (inv_Node__444 m s n1 n2) (inv_Node__445 m s n1 n2)))
)
(define-fun inv_Node__17 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b322 
 n1 
 n2)
)
(define-fun inv_Atom_410 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b854 
 (held m s (inv_Node__847 m s n1 n2)) 
 (= (inv_Node__848 m s n1 n2) (inv_Node__849 m s n1 n2)))
)
(define-fun inv_Node__128 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b973 
 n1 
 n2)
)
(define-fun inv_Node__704 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2311 
 n1 
 n2)
)
(define-fun inv_Node__970 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2540 
 n1 
 n2)
)
(define-fun inv_Node__43 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b707 
 n1 
 n2)
)
(define-fun inv_Node__116 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1054 
 n1 
 n2)
)
(define-fun inv_Node__1007 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2662 
 n1 
 n2)
)
(define-fun inv_Atom_393 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b825 
 (held m s (inv_Node__789 m s n1 n2)) 
 (= (inv_Node__790 m s n1 n2) (inv_Node__791 m s n1 n2)))
)
(define-fun inv_Node__882 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2350 
 n1 
 n2)
)
(define-fun inv_Node__1483 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2503 
 n1 
 n2)
)
(define-fun inv_Atom_72 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1323 
 (held m s (inv_Node__1833 m s n1 n2)) 
 (= (inv_Node__1834 m s n1 n2) (inv_Node__1835 m s n1 n2)))
)
(define-fun inv_Node__468 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1696 
 n1 
 n2)
)
(define-fun inv_Node__603 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1779 
 n1 
 n2)
)
(define-fun inv_Node__754 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2490 
 n1 
 n2)
)
(define-fun inv_Epoch__216 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1595 m s n1 n2))
)
(define-fun inv_Node__1073 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2239 
 n1 
 n2)
)
(define-fun inv_Epoch__251 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1696 m s n1 n2))
)
(define-fun inv_Node__1235 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1637 
 n1 
 n2)
)
(define-fun inv_Node__902 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2027 
 n1 
 n2)
)
(define-fun inv_Node__925 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2087 
 n1 
 n2)
)
(define-fun inv_Epoch__362 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1051 m s n1 n2))
)
(define-fun inv_Node__1259 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2033 
 n1 
 n2)
)
(define-fun inv_Node__582 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1944 
 n1 
 n2)
)
(define-fun inv_Node__70 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b991 
 n1 
 n2)
)
(define-fun inv_Node__1450 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1800 
 n1 
 n2)
)
(define-fun inv_Node__1094 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2469 
 n1 
 n2)
)
(define-fun inv_Node__1170 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2834 
 n1 
 n2)
)
(define-fun inv_Node__1211 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1566 
 n1 
 n2)
)
(define-fun inv_Atom_256 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b829 
 (held m s (inv_Node__802 m s n1 n2)) 
 (= (inv_Node__803 m s n1 n2) (inv_Node__804 m s n1 n2)))
)
(define-fun inv_Node__516 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1597 
 n1 
 n2)
)
(define-fun inv_Epoch__344 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1237 m s n1 n2))
)
(define-fun inv_Node__563 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2582 
 n1 
 n2)
)
(define-fun inv_Node__1378 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1674 
 n1 
 n2)
)
(define-fun inv_Node__1300 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1517 
 n1 
 n2)
)
(define-fun inv_Node__636 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1407 
 n1 
 n2)
)
(define-fun inv_Node__1006 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2822 
 n1 
 n2)
)
(define-fun inv_Atom_264 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1231 
 (held m s (inv_Node__1627 m s n1 n2)) 
 (= (inv_Node__1628 m s n1 n2) (inv_Node__1629 m s n1 n2)))
)
(define-fun inv_Node__693 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2797 
 n1 
 n2)
)
(define-fun inv_Node__842 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2447 
 n1 
 n2)
)
(define-fun inv_Node__1124 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2653 
 n1 
 n2)
)
(define-fun inv_Epoch__193 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1825 m s n1 n2))
)
(define-fun inv_Node__227 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1073 
 n1 
 n2)
)
(define-fun inv_Node__316 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1269 
 n1 
 n2)
)
(define-fun inv_Node__934 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2181 
 n1 
 n2)
)
(define-fun inv_Node__355 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1196 
 n1 
 n2)
)
(define-fun inv_Node__1162 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1943 
 n1 
 n2)
)
(define-fun inv_Node__622 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1985 
 n1 
 n2)
)
(define-fun inv_Epoch__361 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__501 m s n1 n2))
)
(define-fun inv_Node__1713 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2182 
 n1 
 n2)
)
(define-fun inv_Node__1107 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1356 
 n1 
 n2)
)
(define-fun inv_Atom_24 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b468 
 (held m s (inv_Node__279 m s n1 n2)) 
 (ite inv_b469 
 (locked m s (inv_Epoch__294 m s n1 n2) (inv_Node__280 m s n1 n2)) 
 (ite inv_b470 
 (transfer m s (inv_Epoch__295 m s n1 n2) (inv_Node__281 m s n1 n2)) 
 (ite inv_b471 
 (le m (inv_Epoch__296 m s n1 n2) (inv_Epoch__297 m s n1 n2)) 
 (ite inv_b472 
 (= (inv_Node__282 m s n1 n2) (inv_Node__283 m s n1 n2)) 
 (ite inv_b473 
 (= (inv_Epoch__298 m s n1 n2) (inv_Epoch__299 m s n1 n2)) 
 (ite inv_b474 
 (and (inv_Atom_351 m s n1 n2) (inv_Atom_352 m s n1 n2)) 
 (ite inv_b475 
 (or (inv_Atom_353 m s n1 n2) (inv_Atom_354 m s n1 n2)) 
 (ite inv_b476 
 (=> (inv_Atom_355 m s n1 n2) (inv_Atom_356 m s n1 n2)) 
 (not (inv_Atom_357 m s n1 n2)))))))))))
)
(define-fun inv_Node__250 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1172 
 n1 
 n2)
)
(define-fun inv_Node__1332 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2425 
 n1 
 n2)
)
(define-fun inv_Node__1682 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1776 
 n1 
 n2)
)
(define-fun inv_Atom_171 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1072 
 (held m s (inv_Node__1298 m s n1 n2)) 
 (= (inv_Node__1299 m s n1 n2) (inv_Node__1300 m s n1 n2)))
)
(define-fun inv_Node__977 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2152 
 n1 
 n2)
)
(define-fun inv_Node__517 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2199 
 n1 
 n2)
)
(define-fun inv_Node__1376 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1778 
 n1 
 n2)
)
(define-fun inv_Epoch__340 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__976 m s n1 n2))
)
(define-fun inv_Node__1195 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2224 
 n1 
 n2)
)
(define-fun inv_Node__361 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b875 
 n1 
 n2)
)
(define-fun inv_Atom_268 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1014 
 (held m s (inv_Node__1162 m s n1 n2)) 
 (= (inv_Node__1163 m s n1 n2) (inv_Node__1164 m s n1 n2)))
)
(define-fun inv_Atom_448 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1331 
 (held m s (inv_Node__1850 m s n1 n2)) 
 (= (inv_Node__1851 m s n1 n2) (inv_Node__1852 m s n1 n2)))
)
(define-fun inv_Node__1161 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2720 
 n1 
 n2)
)
(define-fun inv_Node__1832 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1890 
 n1 
 n2)
)
(define-fun inv_Node__1810 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2741 
 n1 
 n2)
)
(define-fun inv_Node__1228 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2712 
 n1 
 n2)
)
(define-fun inv_Epoch__133 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1085 m s n1 n2))
)
(define-fun inv_Epoch__116 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1674 m s n1 n2))
)
(define-fun inv_Node__200 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b838 
 n1 
 n2)
)
(define-fun inv_Node__638 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2678 
 n1 
 n2)
)
(define-fun inv_Node__317 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b778 
 n1 
 n2)
)
(define-fun inv_Atom_68 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b849 
 (held m s (inv_Node__834 m s n1 n2)) 
 (= (inv_Node__835 m s n1 n2) (inv_Node__836 m s n1 n2)))
)
(define-fun inv_Node__1243 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2609 
 n1 
 n2)
)
(define-fun inv_Node__1386 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2432 
 n1 
 n2)
)
(define-fun inv_Atom_55 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b581 
 (held m s (inv_Node__345 m s n1 n2)) 
 (ite inv_b582 
 (locked m s (inv_Epoch__360 m s n1 n2) (inv_Node__346 m s n1 n2)) 
 (ite inv_b583 
 (transfer m s (inv_Epoch__361 m s n1 n2) (inv_Node__347 m s n1 n2)) 
 (ite inv_b584 
 (le m (inv_Epoch__362 m s n1 n2) (inv_Epoch__363 m s n1 n2)) 
 (ite inv_b585 
 (= (inv_Node__348 m s n1 n2) (inv_Node__349 m s n1 n2)) 
 (ite inv_b586 
 (= (inv_Epoch__364 m s n1 n2) (inv_Epoch__365 m s n1 n2)) 
 (ite inv_b587 
 (and (inv_Atom_428 m s n1 n2) (inv_Atom_429 m s n1 n2)) 
 (ite inv_b588 
 (or (inv_Atom_430 m s n1 n2) (inv_Atom_431 m s n1 n2)) 
 (ite inv_b589 
 (=> (inv_Atom_432 m s n1 n2) (inv_Atom_433 m s n1 n2)) 
 (not (inv_Atom_434 m s n1 n2)))))))))))
)
(define-fun inv_Node__1262 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2442 
 n1 
 n2)
)
(define-fun inv_Node__253 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b989 
 n1 
 n2)
)
(define-fun inv_Node__322 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1142 
 n1 
 n2)
)
(define-fun inv_Atom_169 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b977 
 (held m s (inv_Node__1091 m s n1 n2)) 
 (= (inv_Node__1092 m s n1 n2) (inv_Node__1093 m s n1 n2)))
)
(define-fun inv_Node__262 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b650 
 n1 
 n2)
)
(define-fun inv_Node__1138 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1472 
 n1 
 n2)
)
(define-fun inv_Node__222 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b959 
 n1 
 n2)
)
(define-fun inv_Node__1400 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2431 
 n1 
 n2)
)
(define-fun inv_Node__1168 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2023 
 n1 
 n2)
)
(define-fun inv_Node__1673 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2580 
 n1 
 n2)
)
(define-fun inv_Node__223 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b872 
 n1 
 n2)
)
(define-fun inv_Node__653 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2748 
 n1 
 n2)
)
(define-fun inv_Node__552 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2136 
 n1 
 n2)
)
(define-fun inv_Node__950 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1757 
 n1 
 n2)
)
(define-fun inv_Node__1444 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2674 
 n1 
 n2)
)
(define-fun inv_Epoch__168 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__698 m s n1 n2))
)
(define-fun inv_Epoch__110 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1314 m s n1 n2))
)
(define-fun inv_Node__795 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2743 
 n1 
 n2)
)
(define-fun inv_Atom_382 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1305 
 (held m s (inv_Node__1793 m s n1 n2)) 
 (= (inv_Node__1794 m s n1 n2) (inv_Node__1795 m s n1 n2)))
)
(define-fun inv_Node__865 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2057 
 n1 
 n2)
)
(define-fun inv_Node__165 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b773 
 n1 
 n2)
)
(define-fun inv_Node__631 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2051 
 n1 
 n2)
)
(define-fun inv_Node__1352 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2121 
 n1 
 n2)
)
(define-fun inv_Node__811 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2034 
 n1 
 n2)
)
(define-fun inv_Atom_107 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b659 
 (held m s (inv_Node__440 m s n1 n2)) 
 (= (inv_Node__441 m s n1 n2) (inv_Node__442 m s n1 n2)))
)
(define-fun inv_Atom_197 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1338 
 (held m s (inv_Node__1872 m s n1 n2)) 
 (= (inv_Node__1873 m s n1 n2) (inv_Node__1874 m s n1 n2)))
)
(define-fun inv_Atom_307 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b925 
 (held m s (inv_Node__992 m s n1 n2)) 
 (= (inv_Node__993 m s n1 n2) (inv_Node__994 m s n1 n2)))
)
(define-fun inv_Epoch__309 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1859 m s n1 n2))
)
(define-fun inv_Node__419 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2369 
 n1 
 n2)
)
(define-fun inv_Node__1062 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1657 
 n1 
 n2)
)
(define-fun inv_Epoch__343 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1497 m s n1 n2))
)
(define-fun inv_Node__264 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b711 
 n1 
 n2)
)
(define-fun inv_Node__465 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1612 
 n1 
 n2)
)
(define-fun inv_Node__1862 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1789 
 n1 
 n2)
)
(define-fun inv_Node__562 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2837 
 n1 
 n2)
)
(define-fun inv_Node__1675 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2403 
 n1 
 n2)
)
(define-fun inv_Node__1724 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1721 
 n1 
 n2)
)
(define-fun inv_Epoch__153 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1762 m s n1 n2))
)
(define-fun inv_Node__1749 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1751 
 n1 
 n2)
)
(define-fun inv_Node__1428 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1967 
 n1 
 n2)
)
(define-fun inv_Epoch__36 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__294 m s n1 n2))
)
(define-fun inv_Node__1108 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1424 
 n1 
 n2)
)
(define-fun inv_Node__1139 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1578 
 n1 
 n2)
)
(define-fun inv_Node__51 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b631 
 n1 
 n2)
)
(define-fun inv_Node__11 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b516 
 n1 
 n2)
)
(define-fun inv_Node__1824 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1988 
 n1 
 n2)
)
(define-fun inv_Node__1344 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2512 
 n1 
 n2)
)
(define-fun inv_Node__774 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2191 
 n1 
 n2)
)
(define-fun inv_Node__868 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2122 
 n1 
 n2)
)
(define-fun inv_Atom_416 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b802 
 (held m s (inv_Node__733 m s n1 n2)) 
 (= (inv_Node__734 m s n1 n2) (inv_Node__735 m s n1 n2)))
)
(define-fun inv_Node__632 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2611 
 n1 
 n2)
)
(define-fun inv_Node__1189 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1802 
 n1 
 n2)
)
(define-fun inv_Node__84 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b909 
 n1 
 n2)
)
(define-fun inv_Epoch__23 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__135 m s n1 n2))
)
(define-fun inv_Node__1561 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1649 
 n1 
 n2)
)
(define-fun inv_Node__34 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b311 
 n1 
 n2)
)
(define-fun inv_Node__730 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2423 
 n1 
 n2)
)
(define-fun inv_Node__656 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1950 
 n1 
 n2)
)
(define-fun inv_Node__1641 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2811 
 n1 
 n2)
)
(define-fun inv_Node__206 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1008 
 n1 
 n2)
)
(define-fun inv_Node__1326 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2480 
 n1 
 n2)
)
(define-fun inv_Node__1473 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2770 
 n1 
 n2)
)
(define-fun inv_Node__154 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b844 
 n1 
 n2)
)
(define-fun inv_Node__683 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2791 
 n1 
 n2)
)
(define-fun inv_Node__60 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b715 
 n1 
 n2)
)
(define-fun inv_Node__1618 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1542 
 n1 
 n2)
)
(define-fun inv_Node__1140 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1813 
 n1 
 n2)
)
(define-fun inv_Node__1725 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2482 
 n1 
 n2)
)
(define-fun inv_Node__952 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1911 
 n1 
 n2)
)
(define-fun inv_Node__1707 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2621 
 n1 
 n2)
)
(define-fun inv_Node__1785 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1847 
 n1 
 n2)
)
(define-fun inv_Atom_141 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b819 
 (held m s (inv_Node__771 m s n1 n2)) 
 (= (inv_Node__772 m s n1 n2) (inv_Node__773 m s n1 n2)))
)
(define-fun inv_Atom_326 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1115 
 (held m s (inv_Node__1373 m s n1 n2)) 
 (= (inv_Node__1374 m s n1 n2) (inv_Node__1375 m s n1 n2)))
)
(define-fun inv_Node__127 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b903 
 n1 
 n2)
)
(define-fun inv_Node__565 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1796 
 n1 
 n2)
)
(define-fun inv_Node__978 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2667 
 n1 
 n2)
)
(define-fun inv_Epoch__135 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1283 m s n1 n2))
)
(define-fun inv_Node__1449 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1843 
 n1 
 n2)
)
(define-fun inv_Node__1197 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1598 
 n1 
 n2)
)
(define-fun inv_Node__62 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1304 
 n1 
 n2)
)
(define-fun inv_Node__1118 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2717 
 n1 
 n2)
)
(define-fun inv_Node__1440 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2295 
 n1 
 n2)
)
(define-fun inv_Node__104 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1135 
 n1 
 n2)
)
(define-fun inv_Node__648 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1453 
 n1 
 n2)
)
(define-fun inv_Node__8 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b114 
 n1 
 n2)
)
(define-fun inv_Node__1841 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2604 
 n1 
 n2)
)
(define-fun inv_Epoch__126 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1155 m s n1 n2))
)
(define-fun inv_Atom_282 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1249 
 (held m s (inv_Node__1675 m s n1 n2)) 
 (= (inv_Node__1676 m s n1 n2) (inv_Node__1677 m s n1 n2)))
)
(define-fun inv_Epoch__142 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__758 m s n1 n2))
)
(define-fun inv_Epoch__202 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1068 m s n1 n2))
)
(define-fun inv_Epoch__346 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1516 m s n1 n2))
)
(define-fun inv_Node__302 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1068 
 n1 
 n2)
)
(define-fun inv_Epoch__151 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1665 m s n1 n2))
)
(define-fun inv_Node__618 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2597 
 n1 
 n2)
)
(define-fun inv_Node__1798 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1555 
 n1 
 n2)
)
(define-fun inv_Atom_302 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1026 
 (held m s (inv_Node__1191 m s n1 n2)) 
 (= (inv_Node__1192 m s n1 n2) (inv_Node__1193 m s n1 n2)))
)
(define-fun inv_Atom_332 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1035 
 (held m s (inv_Node__1222 m s n1 n2)) 
 (= (inv_Node__1223 m s n1 n2) (inv_Node__1224 m s n1 n2)))
)
(define-fun inv_Atom_241 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1233 
 (held m s (inv_Node__1634 m s n1 n2)) 
 (= (inv_Node__1635 m s n1 n2) (inv_Node__1636 m s n1 n2)))
)
(define-fun inv_Node__1385 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1359 
 n1 
 n2)
)
(define-fun inv_Node__1177 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1609 
 n1 
 n2)
)
(define-fun inv_Atom_401 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b620 
 (held m s (inv_Node__370 m s n1 n2)) 
 (= (inv_Node__371 m s n1 n2) (inv_Node__372 m s n1 n2)))
)
(define-fun inv_Node__989 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2701 
 n1 
 n2)
)
(define-fun inv_Node__746 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2241 
 n1 
 n2)
)
(define-fun inv_Node__491 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2515 
 n1 
 n2)
)
(define-fun inv_Epoch__331 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1446 m s n1 n2))
)
(define-fun inv_Node__1457 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2412 
 n1 
 n2)
)
(define-fun inv_Epoch__50 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__599 m s n1 n2))
)
(define-fun inv_Node__113 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b763 
 n1 
 n2)
)
(define-fun inv_Node__434 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1750 
 n1 
 n2)
)
(define-fun inv_Node__485 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2177 
 n1 
 n2)
)
(define-fun inv_Node__10 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b570 
 n1 
 n2)
)
(define-fun inv_Node__536 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1827 
 n1 
 n2)
)
(define-fun inv_Epoch__183 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1006 m s n1 n2))
)
(define-fun inv_Node__77 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1156 
 n1 
 n2)
)
(define-fun inv_Atom_64 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b797 
 (held m s (inv_Node__726 m s n1 n2)) 
 (= (inv_Node__727 m s n1 n2) (inv_Node__728 m s n1 n2)))
)
(define-fun inv_Node__1338 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2589 
 n1 
 n2)
)
(define-fun inv_Node__518 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1619 
 n1 
 n2)
)
(define-fun inv_Node__1339 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1798 
 n1 
 n2)
)
(define-fun inv_Node__0 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b289 
 n1 
 n2)
)
(define-fun inv_Node__1671 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2406 
 n1 
 n2)
)
(define-fun inv_Epoch__104 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1207 m s n1 n2))
)
(define-fun inv_Node__1778 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2806 
 n1 
 n2)
)
(define-fun inv_Atom_418 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b880 
 (held m s (inv_Node__900 m s n1 n2)) 
 (= (inv_Node__901 m s n1 n2) (inv_Node__902 m s n1 n2)))
)
(define-fun inv_Atom_203 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b894 
 (held m s (inv_Node__932 m s n1 n2)) 
 (= (inv_Node__933 m s n1 n2) (inv_Node__934 m s n1 n2)))
)
(define-fun inv_Node__1572 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2848 
 n1 
 n2)
)
(define-fun inv_Node__1821 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1986 
 n1 
 n2)
)
(define-fun inv_Node__873 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1536 
 n1 
 n2)
)
(define-fun inv_Epoch__0 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__197 m s n1 n2))
)
(define-fun inv_Node__405 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2734 
 n1 
 n2)
)
(define-fun inv_Node__257 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b674 
 n1 
 n2)
)
(define-fun inv_Epoch__303 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__881 m s n1 n2))
)
(define-fun inv_Epoch__187 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1747 m s n1 n2))
)
(define-fun inv_Node__817 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2635 
 n1 
 n2)
)
(define-fun inv_Atom_106 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b897 
 (held m s (inv_Node__939 m s n1 n2)) 
 (= (inv_Node__940 m s n1 n2) (inv_Node__941 m s n1 n2)))
)
(define-fun inv_Node__1600 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1744 
 n1 
 n2)
)
(define-fun inv_Atom_228 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b780 
 (held m s (inv_Node__672 m s n1 n2)) 
 (= (inv_Node__673 m s n1 n2) (inv_Node__674 m s n1 n2)))
)
(define-fun inv_Node__850 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2496 
 n1 
 n2)
)
(define-fun inv_Epoch__377 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1265 m s n1 n2))
)
(define-fun inv_Node__1500 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1464 
 n1 
 n2)
)
(define-fun inv_Atom_37 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b187 
 (held m s (inv_Node__107 m s n1 n2)) 
 (ite inv_b188 
 (locked m s (inv_Epoch__120 m s n1 n2) (inv_Node__108 m s n1 n2)) 
 (ite inv_b189 
 (transfer m s (inv_Epoch__121 m s n1 n2) (inv_Node__109 m s n1 n2)) 
 (ite inv_b190 
 (le m (inv_Epoch__122 m s n1 n2) (inv_Epoch__123 m s n1 n2)) 
 (ite inv_b191 
 (= (inv_Node__110 m s n1 n2) (inv_Node__111 m s n1 n2)) 
 (ite inv_b192 
 (= (inv_Epoch__124 m s n1 n2) (inv_Epoch__125 m s n1 n2)) 
 (ite inv_b193 
 (and (inv_Atom_148 m s n1 n2) (inv_Atom_149 m s n1 n2)) 
 (ite inv_b194 
 (or (inv_Atom_150 m s n1 n2) (inv_Atom_151 m s n1 n2)) 
 (ite inv_b195 
 (=> (inv_Atom_152 m s n1 n2) (inv_Atom_153 m s n1 n2)) 
 (not (inv_Atom_154 m s n1 n2)))))))))))
)
(define-fun inv_Node__297 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b744 
 n1 
 n2)
)
(define-fun inv_Atom_186 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1265 
 (held m s (inv_Node__1711 m s n1 n2)) 
 (= (inv_Node__1712 m s n1 n2) (inv_Node__1713 m s n1 n2)))
)
(define-fun inv_Epoch__225 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1033 m s n1 n2))
)
(define-fun inv_Atom_244 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b848 
 (held m s (inv_Node__831 m s n1 n2)) 
 (= (inv_Node__832 m s n1 n2) (inv_Node__833 m s n1 n2)))
)
(define-fun inv_Node__1662 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2476 
 n1 
 n2)
)
(define-fun inv_Node__169 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b839 
 n1 
 n2)
)
(define-fun inv_Node__630 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2645 
 n1 
 n2)
)
(define-fun inv_Node__1427 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2764 
 n1 
 n2)
)
(define-fun inv_Node__1553 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1726 
 n1 
 n2)
)
(define-fun inv_Node__651 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1927 
 n1 
 n2)
)
(define-fun inv_Atom_296 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b752 
 (held m s (inv_Node__618 m s n1 n2)) 
 (= (inv_Node__619 m s n1 n2) (inv_Node__620 m s n1 n2)))
)
(define-fun inv_Node__304 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b840 
 n1 
 n2)
)
(define-fun inv_Epoch__112 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1244 m s n1 n2))
)
(define-fun inv_Epoch__155 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1341 m s n1 n2))
)
(define-fun inv_Node__1217 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2041 
 n1 
 n2)
)
(define-fun inv_Node__400 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2616 
 n1 
 n2)
)
(define-fun inv_Node__540 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2046 
 n1 
 n2)
)
(define-fun inv_Node__1423 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2393 
 n1 
 n2)
)
(define-fun inv_Atom_443 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b779 
 (held m s (inv_Node__667 m s n1 n2)) 
 (= (inv_Node__668 m s n1 n2) (inv_Node__669 m s n1 n2)))
)
(define-fun inv_Epoch__337 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1349 m s n1 n2))
)
(define-fun inv_Node__193 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1145 
 n1 
 n2)
)
(define-fun inv_Node__1732 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2722 
 n1 
 n2)
)
(define-fun inv_Epoch__99 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__550 m s n1 n2))
)
(define-fun inv_Epoch__349 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__472 m s n1 n2))
)
(define-fun inv_Node__500 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1881 
 n1 
 n2)
)
(define-fun inv_Epoch__19 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__306 m s n1 n2))
)
(define-fun inv_Node__787 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2769 
 n1 
 n2)
)
(define-fun inv_Node__1180 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1485 
 n1 
 n2)
)
(define-fun inv_Node__1023 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2534 
 n1 
 n2)
)
(define-fun inv_Node__261 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b761 
 n1 
 n2)
)
(define-fun inv_Node__1437 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2590 
 n1 
 n2)
)
(define-fun inv_Node__760 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1588 
 n1 
 n2)
)
(define-fun inv_Atom_291 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1235 
 (held m s (inv_Node__1640 m s n1 n2)) 
 (= (inv_Node__1641 m s n1 n2) (inv_Node__1642 m s n1 n2)))
)
(define-fun inv_Epoch__107 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1122 m s n1 n2))
)
(define-fun inv_Epoch__150 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__387 m s n1 n2))
)
(define-fun inv_Atom_305 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1295 
 (held m s (inv_Node__1776 m s n1 n2)) 
 (= (inv_Node__1777 m s n1 n2) (inv_Node__1778 m s n1 n2)))
)
(define-fun inv_Node__449 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2197 
 n1 
 n2)
)
(define-fun inv_Node__1861 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2509 
 n1 
 n2)
)
(define-fun inv_Node__49 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1065 
 n1 
 n2)
)
(define-fun inv_Node__1008 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2543 
 n1 
 n2)
)
(define-fun inv_Epoch__339 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__491 m s n1 n2))
)
(define-fun inv_Atom_163 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1030 
 (held m s (inv_Node__1201 m s n1 n2)) 
 (= (inv_Node__1202 m s n1 n2) (inv_Node__1203 m s n1 n2)))
)
(define-fun inv_Atom_454 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1253 
 (held m s (inv_Node__1686 m s n1 n2)) 
 (= (inv_Node__1687 m s n1 n2) (inv_Node__1688 m s n1 n2)))
)
(define-fun inv_Epoch__235 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1663 m s n1 n2))
)
(define-fun inv_Node__246 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b955 
 n1 
 n2)
)
(define-fun inv_Node__1611 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2444 
 n1 
 n2)
)
(define-fun inv_Node__293 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b681 
 n1 
 n2)
)
(define-fun inv_Node__252 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1058 
 n1 
 n2)
)
(define-fun inv_Node__333 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b969 
 n1 
 n2)
)
(define-fun inv_Epoch__256 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1429 m s n1 n2))
)
(define-fun inv_Node__1558 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2548 
 n1 
 n2)
)
(define-fun inv_Node__82 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b649 
 n1 
 n2)
)
(define-fun inv_Node__360 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b765 
 n1 
 n2)
)
(define-fun inv_Epoch__166 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__436 m s n1 n2))
)
(define-fun inv_Node__243 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b995 
 n1 
 n2)
)
(define-fun inv_Epoch__85 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1417 m s n1 n2))
)
(define-fun inv_Node__1110 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2752 
 n1 
 n2)
)
(define-fun inv_Epoch__71 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1305 m s n1 n2))
)
(define-fun inv_Node__287 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1080 
 n1 
 n2)
)
(define-fun inv_Node__144 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b841 
 n1 
 n2)
)
(define-fun inv_Atom_347 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1187 
 (held m s (inv_Node__1531 m s n1 n2)) 
 (= (inv_Node__1532 m s n1 n2) (inv_Node__1533 m s n1 n2)))
)
(define-fun inv_Node__229 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b691 
 n1 
 n2)
)
(define-fun inv_Atom_299 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1055 
 (held m s (inv_Node__1259 m s n1 n2)) 
 (= (inv_Node__1260 m s n1 n2) (inv_Node__1261 m s n1 n2)))
)
(define-fun inv_Node__213 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b895 
 n1 
 n2)
)
(define-fun inv_Atom_266 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1132 
 (held m s (inv_Node__1400 m s n1 n2)) 
 (= (inv_Node__1401 m s n1 n2) (inv_Node__1402 m s n1 n2)))
)
(define-fun inv_Node__1176 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1844 
 n1 
 n2)
)
(define-fun inv_Atom_164 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1202 
 (held m s (inv_Node__1561 m s n1 n2)) 
 (= (inv_Node__1562 m s n1 n2) (inv_Node__1563 m s n1 n2)))
)
(define-fun inv_Node__623 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2138 
 n1 
 n2)
)
(define-fun inv_Node__1459 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2111 
 n1 
 n2)
)
(define-fun inv_Atom_229 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1199 
 (held m s (inv_Node__1551 m s n1 n2)) 
 (= (inv_Node__1552 m s n1 n2) (inv_Node__1553 m s n1 n2)))
)
(define-fun inv_Epoch__334 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1502 m s n1 n2))
)
(define-fun inv_Epoch__291 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1459 m s n1 n2))
)
(define-fun inv_Node__699 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2557 
 n1 
 n2)
)
(define-fun inv_Node__482 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2260 
 n1 
 n2)
)
(define-fun inv_Node__158 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1257 
 n1 
 n2)
)
(define-fun inv_Node__1111 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2571 
 n1 
 n2)
)
(define-fun inv_Node__1205 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2356 
 n1 
 n2)
)
(define-fun inv_Atom_86 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b982 
 (held m s (inv_Node__1105 m s n1 n2)) 
 (= (inv_Node__1106 m s n1 n2) (inv_Node__1107 m s n1 n2)))
)
(define-fun inv_Epoch__379 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1447 m s n1 n2))
)
(define-fun inv_Node__721 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2125 
 n1 
 n2)
)
(define-fun inv_Atom_44 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b342 
 (held m s (inv_Node__203 m s n1 n2)) 
 (ite inv_b343 
 (locked m s (inv_Epoch__216 m s n1 n2) (inv_Node__204 m s n1 n2)) 
 (ite inv_b344 
 (transfer m s (inv_Epoch__217 m s n1 n2) (inv_Node__205 m s n1 n2)) 
 (ite inv_b345 
 (le m (inv_Epoch__218 m s n1 n2) (inv_Epoch__219 m s n1 n2)) 
 (ite inv_b346 
 (= (inv_Node__206 m s n1 n2) (inv_Node__207 m s n1 n2)) 
 (ite inv_b347 
 (= (inv_Epoch__220 m s n1 n2) (inv_Epoch__221 m s n1 n2)) 
 (ite inv_b348 
 (and (inv_Atom_260 m s n1 n2) (inv_Atom_261 m s n1 n2)) 
 (ite inv_b349 
 (or (inv_Atom_262 m s n1 n2) (inv_Atom_263 m s n1 n2)) 
 (ite inv_b350 
 (=> (inv_Atom_264 m s n1 n2) (inv_Atom_265 m s n1 n2)) 
 (not (inv_Atom_266 m s n1 n2)))))))))))
)
(define-fun inv_Epoch__265 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__869 m s n1 n2))
)
(define-fun inv_Node__258 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1242 
 n1 
 n2)
)
(define-fun inv_Node__1511 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2530 
 n1 
 n2)
)
(define-fun inv_Node__684 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2221 
 n1 
 n2)
)
(define-fun inv_Epoch__165 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__938 m s n1 n2))
)
(define-fun inv_Node__1878 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2607 
 n1 
 n2)
)
(define-fun inv_Node__1393 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2579 
 n1 
 n2)
)
(define-fun inv_Node__1582 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2194 
 n1 
 n2)
)
(define-fun inv_Epoch__308 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__506 m s n1 n2))
)
(define-fun inv_Node__288 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b931 
 n1 
 n2)
)
(define-fun inv_Node__1074 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1425 
 n1 
 n2)
)
(define-fun inv_Atom_385 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1334 
 (held m s (inv_Node__1860 m s n1 n2)) 
 (= (inv_Node__1861 m s n1 n2) (inv_Node__1862 m s n1 n2)))
)
(define-fun inv_Node__1281 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1787 
 n1 
 n2)
)
(define-fun inv_Atom_232 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b792 
 (held m s (inv_Node__705 m s n1 n2)) 
 (= (inv_Node__706 m s n1 n2) (inv_Node__707 m s n1 n2)))
)
(define-fun inv_Node__259 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1193 
 n1 
 n2)
)
(define-fun inv_Atom_204 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b641 
 (held m s (inv_Node__415 m s n1 n2)) 
 (= (inv_Node__416 m s n1 n2) (inv_Node__417 m s n1 n2)))
)
(define-fun inv_Atom_74 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b787 
 (held m s (inv_Node__692 m s n1 n2)) 
 (= (inv_Node__693 m s n1 n2) (inv_Node__694 m s n1 n2)))
)
(define-fun inv_Node__153 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1075 
 n1 
 n2)
)
(define-fun inv_Node__634 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2637 
 n1 
 n2)
)
(define-fun inv_Node__1097 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2135 
 n1 
 n2)
)
(define-fun inv_Atom_335 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b775 
 (held m s (inv_Node__656 m s n1 n2)) 
 (= (inv_Node__657 m s n1 n2) (inv_Node__658 m s n1 n2)))
)
(define-fun inv_Node__947 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2133 
 n1 
 n2)
)
(define-fun inv_Node__1252 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1380 
 n1 
 n2)
)
(define-fun inv_Node__960 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1992 
 n1 
 n2)
)
(define-fun inv_Node__822 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1541 
 n1 
 n2)
)
(define-fun inv_Atom_124 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1161 
 (held m s (inv_Node__1472 m s n1 n2)) 
 (= (inv_Node__1473 m s n1 n2) (inv_Node__1474 m s n1 n2)))
)
(define-fun inv_Atom_183 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1165 
 (held m s (inv_Node__1481 m s n1 n2)) 
 (= (inv_Node__1482 m s n1 n2) (inv_Node__1483 m s n1 n2)))
)
(define-fun inv_Node__179 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b853 
 n1 
 n2)
)
(define-fun inv_Node__913 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1580 
 n1 
 n2)
)
(define-fun inv_Epoch__341 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__568 m s n1 n2))
)
(define-fun inv_Node__1763 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2610 
 n1 
 n2)
)
(define-fun inv_Node__340 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1098 
 n1 
 n2)
)
(define-fun inv_Epoch__316 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1457 m s n1 n2))
)
(define-fun inv_Atom_128 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1138 
 (held m s (inv_Node__1414 m s n1 n2)) 
 (= (inv_Node__1415 m s n1 n2) (inv_Node__1416 m s n1 n2)))
)
(define-fun inv_Epoch__70 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1255 m s n1 n2))
)
(define-fun inv_Atom_379 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1164 
 (held m s (inv_Node__1478 m s n1 n2)) 
 (= (inv_Node__1479 m s n1 n2) (inv_Node__1480 m s n1 n2)))
)
(define-fun inv_Atom_188 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b930 
 (held m s (inv_Node__1007 m s n1 n2)) 
 (= (inv_Node__1008 m s n1 n2) (inv_Node__1009 m s n1 n2)))
)
(define-fun inv_Node__1702 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2760 
 n1 
 n2)
)
(define-fun inv_Atom_233 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1106 
 (held m s (inv_Node__1357 m s n1 n2)) 
 (= (inv_Node__1358 m s n1 n2) (inv_Node__1359 m s n1 n2)))
)
(define-fun inv_Epoch__40 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__278 m s n1 n2))
)
(define-fun inv_Atom_56 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b590 
 (held m s (inv_Node__350 m s n1 n2)) 
 (ite inv_b591 
 (locked m s (inv_Epoch__366 m s n1 n2) (inv_Node__351 m s n1 n2)) 
 (ite inv_b592 
 (transfer m s (inv_Epoch__367 m s n1 n2) (inv_Node__352 m s n1 n2)) 
 (ite inv_b593 
 (le m (inv_Epoch__368 m s n1 n2) (inv_Epoch__369 m s n1 n2)) 
 (ite inv_b594 
 (= (inv_Node__353 m s n1 n2) (inv_Node__354 m s n1 n2)) 
 (ite inv_b595 
 (= (inv_Epoch__370 m s n1 n2) (inv_Epoch__371 m s n1 n2)) 
 (ite inv_b596 
 (and (inv_Atom_435 m s n1 n2) (inv_Atom_436 m s n1 n2)) 
 (ite inv_b597 
 (or (inv_Atom_437 m s n1 n2) (inv_Atom_438 m s n1 n2)) 
 (ite inv_b598 
 (=> (inv_Atom_439 m s n1 n2) (inv_Atom_440 m s n1 n2)) 
 (not (inv_Atom_441 m s n1 n2)))))))))))
)
(define-fun inv_Atom_133 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b975 
 (held m s (inv_Node__1088 m s n1 n2)) 
 (= (inv_Node__1089 m s n1 n2) (inv_Node__1090 m s n1 n2)))
)
(define-fun inv_Atom_329 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1005 
 (held m s (inv_Node__1138 m s n1 n2)) 
 (= (inv_Node__1139 m s n1 n2) (inv_Node__1140 m s n1 n2)))
)
(define-fun inv_Node__335 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b670 
 n1 
 n2)
)
(define-fun inv_Node__1445 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1670 
 n1 
 n2)
)
(define-fun inv_Node__73 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b708 
 n1 
 n2)
)
(define-fun inv_Atom_4 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b22 
 (held m s (inv_Node__10 m s n1 n2)) 
 (ite inv_b23 
 (locked m s (inv_Epoch__12 m s n1 n2) (inv_Node__11 m s n1 n2)) 
 (ite inv_b24 
 (transfer m s (inv_Epoch__13 m s n1 n2) (inv_Node__12 m s n1 n2)) 
 (ite inv_b25 
 (le m (inv_Epoch__14 m s n1 n2) (inv_Epoch__15 m s n1 n2)) 
 (ite inv_b26 
 (= (inv_Node__13 m s n1 n2) (inv_Node__14 m s n1 n2)) 
 (ite inv_b27 
 (= (inv_Epoch__16 m s n1 n2) (inv_Epoch__17 m s n1 n2)) 
 (ite inv_b28 
 (and (inv_Atom_22 m s n1 n2) (inv_Atom_23 m s n1 n2)) 
 (ite inv_b29 
 (or (inv_Atom_24 m s n1 n2) (inv_Atom_25 m s n1 n2)) 
 (ite inv_b30 
 (=> (inv_Atom_26 m s n1 n2) (inv_Atom_27 m s n1 n2)) 
 (not (inv_Atom_28 m s n1 n2)))))))))))
)
(define-fun inv_Atom_245 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1062 
 (held m s (inv_Node__1273 m s n1 n2)) 
 (= (inv_Node__1274 m s n1 n2) (inv_Node__1275 m s n1 n2)))
)
(define-fun inv_Node__929 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2162 
 n1 
 n2)
)
(define-fun inv_Node__50 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1002 
 n1 
 n2)
)
(define-fun inv_Epoch__314 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__882 m s n1 n2))
)
(define-fun inv_Atom_52 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b421 
 (held m s (inv_Node__250 m s n1 n2)) 
 (ite inv_b422 
 (locked m s (inv_Epoch__264 m s n1 n2) (inv_Node__251 m s n1 n2)) 
 (ite inv_b423 
 (transfer m s (inv_Epoch__265 m s n1 n2) (inv_Node__252 m s n1 n2)) 
 (ite inv_b424 
 (le m (inv_Epoch__266 m s n1 n2) (inv_Epoch__267 m s n1 n2)) 
 (ite inv_b425 
 (= (inv_Node__253 m s n1 n2) (inv_Node__254 m s n1 n2)) 
 (ite inv_b426 
 (= (inv_Epoch__268 m s n1 n2) (inv_Epoch__269 m s n1 n2)) 
 (ite inv_b427 
 (and (inv_Atom_316 m s n1 n2) (inv_Atom_317 m s n1 n2)) 
 (ite inv_b428 
 (or (inv_Atom_318 m s n1 n2) (inv_Atom_319 m s n1 n2)) 
 (ite inv_b429 
 (=> (inv_Atom_320 m s n1 n2) (inv_Atom_321 m s n1 n2)) 
 (not (inv_Atom_322 m s n1 n2)))))))))))
)
(define-fun inv_Atom_94 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b716 
 (held m s (inv_Node__536 m s n1 n2)) 
 (= (inv_Node__537 m s n1 n2) (inv_Node__538 m s n1 n2)))
)
(define-fun inv_Node__1351 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2397 
 n1 
 n2)
)
(define-fun inv_Epoch__28 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__40 m s n1 n2))
)
(define-fun inv_Atom_48 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b214 
 (held m s (inv_Node__125 m s n1 n2)) 
 (ite inv_b215 
 (locked m s (inv_Epoch__138 m s n1 n2) (inv_Node__126 m s n1 n2)) 
 (ite inv_b216 
 (transfer m s (inv_Epoch__139 m s n1 n2) (inv_Node__127 m s n1 n2)) 
 (ite inv_b217 
 (le m (inv_Epoch__140 m s n1 n2) (inv_Epoch__141 m s n1 n2)) 
 (ite inv_b218 
 (= (inv_Node__128 m s n1 n2) (inv_Node__129 m s n1 n2)) 
 (ite inv_b219 
 (= (inv_Epoch__142 m s n1 n2) (inv_Epoch__143 m s n1 n2)) 
 (ite inv_b220 
 (and (inv_Atom_169 m s n1 n2) (inv_Atom_170 m s n1 n2)) 
 (ite inv_b221 
 (or (inv_Atom_171 m s n1 n2) (inv_Atom_172 m s n1 n2)) 
 (ite inv_b222 
 (=> (inv_Atom_173 m s n1 n2) (inv_Atom_174 m s n1 n2)) 
 (not (inv_Atom_175 m s n1 n2)))))))))))
)
(define-fun inv_Node__1520 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1460 
 n1 
 n2)
)
(define-fun inv_Node__38 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b310 
 n1 
 n2)
)
(define-fun inv_Node__907 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1821 
 n1 
 n2)
)
(define-fun inv_Node__1639 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2107 
 n1 
 n2)
)
(define-fun inv_Node__990 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1535 
 n1 
 n2)
)
(define-fun inv_Node__1879 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2329 
 n1 
 n2)
)
(define-fun inv_Node__1204 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1777 
 n1 
 n2)
)
(define-fun inv_Node__208 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b638 
 n1 
 n2)
)
(define-fun inv_Node__1335 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2577 
 n1 
 n2)
)
(define-fun inv_Atom_242 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b685 
 (held m s (inv_Node__486 m s n1 n2)) 
 (= (inv_Node__487 m s n1 n2) (inv_Node__488 m s n1 n2)))
)
(define-fun inv_Node__391 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1755 
 n1 
 n2)
)
(define-fun inv_Atom_367 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b813 
 (held m s (inv_Node__754 m s n1 n2)) 
 (= (inv_Node__755 m s n1 n2) (inv_Node__756 m s n1 n2)))
)
(define-fun inv_Node__1064 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1871 
 n1 
 n2)
)
(define-fun inv_Node__102 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b907 
 n1 
 n2)
)
(define-fun inv_Node__567 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2463 
 n1 
 n2)
)
(define-fun inv_Atom_77 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1275 
 (held m s (inv_Node__1739 m s n1 n2)) 
 (= (inv_Node__1740 m s n1 n2) (inv_Node__1741 m s n1 n2)))
)
(define-fun inv_Node__1324 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2688 
 n1 
 n2)
)
(define-fun inv_Node__1021 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2781 
 n1 
 n2)
)
(define-fun inv_Epoch__350 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__624 m s n1 n2))
)
(define-fun inv_Atom_195 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1311 
 (held m s (inv_Node__1809 m s n1 n2)) 
 (= (inv_Node__1810 m s n1 n2) (inv_Node__1811 m s n1 n2)))
)
(define-fun inv_Node__1719 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2126 
 n1 
 n2)
)
(define-fun inv_Node__525 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2608 
 n1 
 n2)
)
(define-fun inv_Node__466 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1709 
 n1 
 n2)
)
(define-fun inv_Node__1581 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2595 
 n1 
 n2)
)
(define-fun inv_Node__1160 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2323 
 n1 
 n2)
)
(define-fun inv_Atom_395 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b667 
 (held m s (inv_Node__466 m s n1 n2)) 
 (= (inv_Node__467 m s n1 n2) (inv_Node__468 m s n1 n2)))
)
(define-fun inv_Epoch__6 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__221 m s n1 n2))
)
(define-fun inv_Node__1580 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2772 
 n1 
 n2)
)
(define-fun inv_Node__569 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2818 
 n1 
 n2)
)
(define-fun inv_Node__844 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1397 
 n1 
 n2)
)
(define-fun inv_Epoch__109 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__397 m s n1 n2))
)
(define-fun inv_Atom_336 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b789 
 (held m s (inv_Node__699 m s n1 n2)) 
 (= (inv_Node__700 m s n1 n2) (inv_Node__701 m s n1 n2)))
)
(define-fun inv_Node__972 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1411 
 n1 
 n2)
)
(define-fun inv_Atom_403 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1226 
 (held m s (inv_Node__1610 m s n1 n2)) 
 (= (inv_Node__1611 m s n1 n2) (inv_Node__1612 m s n1 n2)))
)
(define-fun inv_Node__596 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1480 
 n1 
 n2)
)
(define-fun inv_Atom_69 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1086 
 (held m s (inv_Node__1307 m s n1 n2)) 
 (= (inv_Node__1308 m s n1 n2) (inv_Node__1309 m s n1 n2)))
)
(define-fun inv_Epoch__335 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1113 m s n1 n2))
)
(define-fun inv_Node__123 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b622 
 n1 
 n2)
)
(define-fun inv_Node__1031 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1409 
 n1 
 n2)
)
(define-fun inv_Epoch__38 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__70 m s n1 n2))
)
(define-fun inv_Node__838 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1910 
 n1 
 n2)
)
(define-fun inv_Node__1072 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2833 
 n1 
 n2)
)
(define-fun inv_Atom_112 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1337 
 (held m s (inv_Node__1869 m s n1 n2)) 
 (= (inv_Node__1870 m s n1 n2) (inv_Node__1871 m s n1 n2)))
)
(define-fun inv_Node__841 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2705 
 n1 
 n2)
)
(define-fun inv_Node__1836 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2372 
 n1 
 n2)
)
(define-fun inv_Node__89 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b884 
 n1 
 n2)
)
(define-fun inv_Node__1013 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1972 
 n1 
 n2)
)
(define-fun inv_Node__1081 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1467 
 n1 
 n2)
)
(define-fun inv_Node__888 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2724 
 n1 
 n2)
)
(define-fun inv_Node__1721 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2719 
 n1 
 n2)
)
(define-fun inv_Atom_348 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b818 
 (held m s (inv_Node__768 m s n1 n2)) 
 (= (inv_Node__769 m s n1 n2) (inv_Node__770 m s n1 n2)))
)
(define-fun inv_Node__1016 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2230 
 n1 
 n2)
)
(define-fun inv_Atom_425 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b737 
 (held m s (inv_Node__579 m s n1 n2)) 
 (= (inv_Node__580 m s n1 n2) (inv_Node__581 m s n1 n2)))
)
(define-fun inv_Node__696 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2681 
 n1 
 n2)
)
(define-fun inv_Node__329 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1177 
 n1 
 n2)
)
(define-fun inv_Atom_113 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1152 
 (held m s (inv_Node__1448 m s n1 n2)) 
 (= (inv_Node__1449 m s n1 n2) (inv_Node__1450 m s n1 n2)))
)
(define-fun inv_Node__1815 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2810 
 n1 
 n2)
)
(define-fun inv_Atom_360 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b772 
 (held m s (inv_Node__650 m s n1 n2)) 
 (= (inv_Node__651 m s n1 n2) (inv_Node__652 m s n1 n2)))
)
(define-fun inv_Epoch__78 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1799 m s n1 n2))
)
(define-fun inv_Atom_409 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1128 
 (held m s (inv_Node__1391 m s n1 n2)) 
 (= (inv_Node__1392 m s n1 n2) (inv_Node__1393 m s n1 n2)))
)
(define-fun inv_Node__75 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b842 
 n1 
 n2)
)
(define-fun inv_Node__1845 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1884 
 n1 
 n2)
)
(define-fun inv_Atom_453 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1097 
 (held m s (inv_Node__1332 m s n1 n2)) 
 (= (inv_Node__1333 m s n1 n2) (inv_Node__1334 m s n1 n2)))
)
(define-fun inv_Atom_396 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b938 
 (held m s (inv_Node__1021 m s n1 n2)) 
 (= (inv_Node__1022 m s n1 n2) (inv_Node__1023 m s n1 n2)))
)
(define-fun inv_Node__30 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b352 
 n1 
 n2)
)
(define-fun inv_Atom_36 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b280 
 (held m s (inv_Node__164 m s n1 n2)) 
 (ite inv_b281 
 (locked m s (inv_Epoch__180 m s n1 n2) (inv_Node__165 m s n1 n2)) 
 (ite inv_b282 
 (transfer m s (inv_Epoch__181 m s n1 n2) (inv_Node__166 m s n1 n2)) 
 (ite inv_b283 
 (le m (inv_Epoch__182 m s n1 n2) (inv_Epoch__183 m s n1 n2)) 
 (ite inv_b284 
 (= (inv_Node__167 m s n1 n2) (inv_Node__168 m s n1 n2)) 
 (ite inv_b285 
 (= (inv_Epoch__184 m s n1 n2) (inv_Epoch__185 m s n1 n2)) 
 (ite inv_b286 
 (and (inv_Atom_218 m s n1 n2) (inv_Atom_219 m s n1 n2)) 
 (ite inv_b287 
 (or (inv_Atom_220 m s n1 n2) (inv_Atom_221 m s n1 n2)) 
 (ite inv_b288 
 (=> (inv_Atom_222 m s n1 n2) (inv_Atom_223 m s n1 n2)) 
 (not (inv_Atom_224 m s n1 n2)))))))))))
)
(define-fun inv_Atom_286 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b688 
 (held m s (inv_Node__495 m s n1 n2)) 
 (= (inv_Node__496 m s n1 n2) (inv_Node__497 m s n1 n2)))
)
(define-fun inv_Epoch__374 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1710 m s n1 n2))
)
(define-fun inv_Node__655 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1712 
 n1 
 n2)
)
(define-fun inv_Epoch__260 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__582 m s n1 n2))
)
(define-fun inv_Epoch__89 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__929 m s n1 n2))
)
(define-fun inv_Node__233 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b865 
 n1 
 n2)
)
(define-fun inv_Epoch__37 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__362 m s n1 n2))
)
(define-fun inv_Atom_247 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1049 
 (held m s (inv_Node__1252 m s n1 n2)) 
 (= (inv_Node__1253 m s n1 n2) (inv_Node__1254 m s n1 n2)))
)
(define-fun inv_Node__155 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b912 
 n1 
 n2)
)
(define-fun inv_Atom_119 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b999 
 (held m s (inv_Node__1134 m s n1 n2)) 
 (= (inv_Node__1135 m s n1 n2) (inv_Node__1136 m s n1 n2)))
)
(define-fun inv_Node__948 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2005 
 n1 
 n2)
)
(define-fun inv_Node__1754 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1491 
 n1 
 n2)
)
(define-fun inv_Node__420 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1412 
 n1 
 n2)
)
(define-fun inv_Epoch__1 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__220 m s n1 n2))
)
(define-fun inv_Node__399 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2786 
 n1 
 n2)
)
(define-fun inv_Node__1387 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2470 
 n1 
 n2)
)
(define-fun inv_Atom_400 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1038 
 (held m s (inv_Node__1228 m s n1 n2)) 
 (= (inv_Node__1229 m s n1 n2) (inv_Node__1230 m s n1 n2)))
)
(define-fun inv_Epoch__376 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__515 m s n1 n2))
)
(define-fun inv_Node__508 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2572 
 n1 
 n2)
)
(define-fun inv_Atom_373 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1009 
 (held m s (inv_Node__1149 m s n1 n2)) 
 (= (inv_Node__1150 m s n1 n2) (inv_Node__1151 m s n1 n2)))
)
(define-fun inv_Node__643 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2056 
 n1 
 n2)
)
(define-fun inv_Epoch__102 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__547 m s n1 n2))
)
(define-fun inv_Atom_227 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b795 
 (held m s (inv_Node__715 m s n1 n2)) 
 (= (inv_Node__716 m s n1 n2) (inv_Node__717 m s n1 n2)))
)
(define-fun inv_Node__1263 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1997 
 n1 
 n2)
)
(define-fun inv_Node__106 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b917 
 n1 
 n2)
)
(define-fun inv_Node__919 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2774 
 n1 
 n2)
)
(define-fun inv_Node__600 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1429 
 n1 
 n2)
)
(define-fun inv_Atom_71 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1160 
 (held m s (inv_Node__1469 m s n1 n2)) 
 (= (inv_Node__1470 m s n1 n2) (inv_Node__1471 m s n1 n2)))
)
(define-fun inv_Node__864 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1583 
 n1 
 n2)
)
(define-fun inv_Node__1693 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2093 
 n1 
 n2)
)
(define-fun inv_Node__1700 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2068 
 n1 
 n2)
)
(define-fun inv_Node__818 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1461 
 n1 
 n2)
)
(define-fun inv_Epoch__173 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1824 m s n1 n2))
)
(define-fun inv_Node__45 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1201 
 n1 
 n2)
)
(define-fun inv_Atom_270 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1016 
 (held m s (inv_Node__1168 m s n1 n2)) 
 (= (inv_Node__1169 m s n1 n2) (inv_Node__1170 m s n1 n2)))
)
(define-fun inv_Epoch__289 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1832 m s n1 n2))
)
(define-fun inv_Node__192 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1083 
 n1 
 n2)
)
(define-fun inv_Node__140 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b958 
 n1 
 n2)
)
(define-fun inv_Node__312 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b801 
 n1 
 n2)
)
(define-fun inv_Node__74 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b952 
 n1 
 n2)
)
(define-fun inv_Epoch__129 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1700 m s n1 n2))
)
(define-fun inv_Epoch__319 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__670 m s n1 n2))
)
(define-fun inv_Epoch__288 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1117 m s n1 n2))
)
(define-fun inv_Node__1276 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2763 
 n1 
 n2)
)
(define-fun inv_Epoch__244 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1310 m s n1 n2))
)
(define-fun inv_Atom_191 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b851 
 (held m s (inv_Node__841 m s n1 n2)) 
 (= (inv_Node__842 m s n1 n2) (inv_Node__843 m s n1 n2)))
)
(define-fun inv_Epoch__313 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1456 m s n1 n2))
)
(define-fun inv_Node__470 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2727 
 n1 
 n2)
)
(define-fun inv_Node__139 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b911 
 n1 
 n2)
)
(define-fun inv_Node__1708 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2348 
 n1 
 n2)
)
(define-fun inv_Atom_269 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b870 
 (held m s (inv_Node__878 m s n1 n2)) 
 (= (inv_Node__879 m s n1 n2) (inv_Node__880 m s n1 n2)))
)
(define-fun inv_Epoch__8 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__247 m s n1 n2))
)
(define-fun inv_Atom_53 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b373 
 (held m s (inv_Node__222 m s n1 n2)) 
 (ite inv_b374 
 (locked m s (inv_Epoch__234 m s n1 n2) (inv_Node__223 m s n1 n2)) 
 (ite inv_b375 
 (transfer m s (inv_Epoch__235 m s n1 n2) (inv_Node__224 m s n1 n2)) 
 (ite inv_b376 
 (le m (inv_Epoch__236 m s n1 n2) (inv_Epoch__237 m s n1 n2)) 
 (ite inv_b377 
 (= (inv_Node__225 m s n1 n2) (inv_Node__226 m s n1 n2)) 
 (ite inv_b378 
 (= (inv_Epoch__238 m s n1 n2) (inv_Epoch__239 m s n1 n2)) 
 (ite inv_b379 
 (and (inv_Atom_281 m s n1 n2) (inv_Atom_282 m s n1 n2)) 
 (ite inv_b380 
 (or (inv_Atom_283 m s n1 n2) (inv_Atom_284 m s n1 n2)) 
 (ite inv_b381 
 (=> (inv_Atom_285 m s n1 n2) (inv_Atom_286 m s n1 n2)) 
 (not (inv_Atom_287 m s n1 n2)))))))))))
)
(define-fun inv_Node__1241 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1570 
 n1 
 n2)
)
(define-fun inv_Epoch__246 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1605 m s n1 n2))
)
(define-fun inv_Node__946 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1497 
 n1 
 n2)
)
(define-fun inv_Atom_16 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b560 
 (held m s (inv_Node__333 m s n1 n2)) 
 (ite inv_b561 
 (locked m s (inv_Epoch__348 m s n1 n2) (inv_Node__334 m s n1 n2)) 
 (ite inv_b562 
 (transfer m s (inv_Epoch__349 m s n1 n2) (inv_Node__335 m s n1 n2)) 
 (ite inv_b563 
 (le m (inv_Epoch__350 m s n1 n2) (inv_Epoch__351 m s n1 n2)) 
 (ite inv_b564 
 (= (inv_Node__336 m s n1 n2) (inv_Node__337 m s n1 n2)) 
 (ite inv_b565 
 (= (inv_Epoch__352 m s n1 n2) (inv_Epoch__353 m s n1 n2)) 
 (ite inv_b566 
 (and (inv_Atom_414 m s n1 n2) (inv_Atom_415 m s n1 n2)) 
 (ite inv_b567 
 (or (inv_Atom_416 m s n1 n2) (inv_Atom_417 m s n1 n2)) 
 (ite inv_b568 
 (=> (inv_Atom_418 m s n1 n2) (inv_Atom_419 m s n1 n2)) 
 (not (inv_Atom_420 m s n1 n2)))))))))))
)
(define-fun inv_Node__64 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b956 
 n1 
 n2)
)
(define-fun inv_Node__971 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1383 
 n1 
 n2)
)
(define-fun inv_Node__1656 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1625 
 n1 
 n2)
)
(define-fun inv_Node__424 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1942 
 n1 
 n2)
)
(define-fun inv_Node__654 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1671 
 n1 
 n2)
)
(define-fun inv_Node__1521 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2176 
 n1 
 n2)
)
(define-fun inv_Node__90 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1250 
 n1 
 n2)
)
(define-fun inv_Epoch__54 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__795 m s n1 n2))
)
(define-fun inv_Node__729 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1448 
 n1 
 n2)
)
(define-fun inv_Node__1709 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1788 
 n1 
 n2)
)
(define-fun inv_Node__1369 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1982 
 n1 
 n2)
)
(define-fun inv_Node__27 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b537 
 n1 
 n2)
)
(define-fun inv_Atom_138 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b964 
 (held m s (inv_Node__1065 m s n1 n2)) 
 (= (inv_Node__1066 m s n1 n2) (inv_Node__1067 m s n1 n2)))
)
(define-fun inv_Node__1208 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1527 
 n1 
 n2)
)
(define-fun inv_Epoch__158 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1185 m s n1 n2))
)
(define-fun inv_Node__1727 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2207 
 n1 
 n2)
)
(define-fun inv_Node__1301 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2784 
 n1 
 n2)
)
(define-fun inv_Node__428 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1660 
 n1 
 n2)
)
(define-fun inv_Epoch__255 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1769 m s n1 n2))
)
(define-fun inv_Node__969 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1803 
 n1 
 n2)
)
(define-fun inv_Node__852 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2436 
 n1 
 n2)
)
(define-fun inv_Epoch__317 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1217 m s n1 n2))
)
(define-fun inv_Atom_345 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1071 
 (held m s (inv_Node__1295 m s n1 n2)) 
 (= (inv_Node__1296 m s n1 n2) (inv_Node__1297 m s n1 n2)))
)
(define-fun inv_Node__1858 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1853 
 n1 
 n2)
)
(define-fun inv_Epoch__130 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__767 m s n1 n2))
)
(define-fun inv_Atom_368 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b637 
 (held m s (inv_Node__409 m s n1 n2)) 
 (= (inv_Node__410 m s n1 n2) (inv_Node__411 m s n1 n2)))
)
(define-fun inv_Node__1667 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1348 
 n1 
 n2)
)
(define-fun inv_Atom_380 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b705 
 (held m s (inv_Node__523 m s n1 n2)) 
 (= (inv_Node__524 m s n1 n2) (inv_Node__525 m s n1 n2)))
)
(define-fun inv_Node__76 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1168 
 n1 
 n2)
)
(define-fun inv_Node__483 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1366 
 n1 
 n2)
)
(define-fun inv_Node__1731 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2242 
 n1 
 n2)
)
(define-fun inv_Node__96 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b626 
 n1 
 n2)
)
(define-fun inv_Node__551 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1768 
 n1 
 n2)
)
(define-fun inv_Node__1317 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2375 
 n1 
 n2)
)
(define-fun inv_Node__633 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2520 
 n1 
 n2)
)
(define-fun inv_Node__1876 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1648 
 n1 
 n2)
)
(define-fun inv_Epoch__336 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__893 m s n1 n2))
)
(define-fun inv_Atom_166 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1301 
 (held m s (inv_Node__1785 m s n1 n2)) 
 (= (inv_Node__1786 m s n1 n2) (inv_Node__1787 m s n1 n2)))
)
(define-fun inv_Node__99 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b926 
 n1 
 n2)
)
(define-fun inv_Epoch__227 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1594 m s n1 n2))
)
(define-fun inv_Node__1027 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2409 
 n1 
 n2)
)
(define-fun inv_Node__1694 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2187 
 n1 
 n2)
)
(define-fun inv_Epoch__271 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1498 m s n1 n2))
)
(define-fun inv_Atom_306 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1270 
 (held m s (inv_Node__1725 m s n1 n2)) 
 (= (inv_Node__1726 m s n1 n2) (inv_Node__1727 m s n1 n2)))
)
(define-fun inv_Atom_455 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b836 
 (held m s (inv_Node__818 m s n1 n2)) 
 (= (inv_Node__819 m s n1 n2) (inv_Node__820 m s n1 n2)))
)
(define-fun inv_Node__256 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b704 
 n1 
 n2)
)
(define-fun inv_Node__999 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1689 
 n1 
 n2)
)
(define-fun inv_Node__44 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1313 
 n1 
 n2)
)
(define-fun inv_Node__239 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1252 
 n1 
 n2)
)
(define-fun inv_Atom_330 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b621 
 (held m s (inv_Node__373 m s n1 n2)) 
 (= (inv_Node__374 m s n1 n2) (inv_Node__375 m s n1 n2)))
)
(define-fun inv_Node__286 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1277 
 n1 
 n2)
)
(define-fun inv_Node__338 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b921 
 n1 
 n2)
)
(define-fun inv_Node__1637 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2541 
 n1 
 n2)
)
(define-fun inv_Node__1014 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2189 
 n1 
 n2)
)
(define-fun inv_Node__1466 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2180 
 n1 
 n2)
)
(define-fun inv_Node__315 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1290 
 n1 
 n2)
)
(define-fun inv_Node__871 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2335 
 n1 
 n2)
)
(define-fun inv_Node__1748 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2332 
 n1 
 n2)
)
(define-fun inv_Node__324 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b867 
 n1 
 n2)
)
(define-fun inv_Atom_156 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b924 
 (held m s (inv_Node__989 m s n1 n2)) 
 (= (inv_Node__990 m s n1 n2) (inv_Node__991 m s n1 n2)))
)
(define-fun inv_Atom_273 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1043 
 (held m s (inv_Node__1241 m s n1 n2)) 
 (= (inv_Node__1242 m s n1 n2) (inv_Node__1243 m s n1 n2)))
)
(define-fun inv_Atom_250 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b676 
 (held m s (inv_Node__479 m s n1 n2)) 
 (= (inv_Node__480 m s n1 n2) (inv_Node__481 m s n1 n2)))
)
(define-fun inv_Node__367 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1051 
 n1 
 n2)
)
(define-fun inv_Epoch__206 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1301 m s n1 n2))
)
(define-fun inv_Node__1623 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1915 
 n1 
 n2)
)
(define-fun inv_Epoch__304 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1266 m s n1 n2))
)
(define-fun inv_Epoch__197 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__490 m s n1 n2))
)
(define-fun inv_Node__255 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b759 
 n1 
 n2)
)
(define-fun inv_Node__418 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1459 
 n1 
 n2)
)
(define-fun inv_Node__687 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2841 
 n1 
 n2)
)
(define-fun inv_Node__949 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1629 
 n1 
 n2)
)
(define-fun inv_Node__1015 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1488 
 n1 
 n2)
)
(define-fun inv_Atom_267 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1195 
 (held m s (inv_Node__1545 m s n1 n2)) 
 (= (inv_Node__1546 m s n1 n2) (inv_Node__1547 m s n1 n2)))
)
(define-fun inv_Epoch__161 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1789 m s n1 n2))
)
(define-fun inv_Node__1056 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1652 
 n1 
 n2)
)
(define-fun inv_Atom_139 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b916 
 (held m s (inv_Node__977 m s n1 n2)) 
 (= (inv_Node__978 m s n1 n2) (inv_Node__979 m s n1 n2)))
)
(define-fun inv_Node__406 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1605 
 n1 
 n2)
)
(define-fun inv_Epoch__55 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__821 m s n1 n2))
)
(define-fun inv_Node__180 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b879 
 n1 
 n2)
)
(define-fun inv_Node__1323 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2398 
 n1 
 n2)
)
(define-fun inv_Epoch__69 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1034 m s n1 n2))
)
(define-fun inv_Node__1353 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2628 
 n1 
 n2)
)
(define-fun inv_Epoch__383 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__859 m s n1 n2))
)
(define-fun inv_Node__299 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b647 
 n1 
 n2)
)
(define-fun inv_Node__794 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1645 
 n1 
 n2)
)
(define-fun inv_Epoch__203 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__596 m s n1 n2))
)
(define-fun inv_Epoch__86 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1723 m s n1 n2))
)
(define-fun inv_Node__237 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1327 
 n1 
 n2)
)
(define-fun inv_Node__1143 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2495 
 n1 
 n2)
)
(define-fun inv_Epoch__159 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__725 m s n1 n2))
)
(define-fun inv_Node__1220 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2592 
 n1 
 n2)
)
(define-fun inv_Epoch__41 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__64 m s n1 n2))
)
(define-fun inv_Atom_205 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1224 
 (held m s (inv_Node__1607 m s n1 n2)) 
 (= (inv_Node__1608 m s n1 n2) (inv_Node__1609 m s n1 n2)))
)
(define-fun inv_Node__830 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2438 
 n1 
 n2)
)
(define-fun inv_Node__231 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b747 
 n1 
 n2)
)
(define-fun inv_Node__578 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2629 
 n1 
 n2)
)
(define-fun inv_Node__629 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1445 
 n1 
 n2)
)
(define-fun inv_Epoch__190 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1211 m s n1 n2))
)
(define-fun inv_Node__1438 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2128 
 n1 
 n2)
)
(define-fun inv_Epoch__273 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__526 m s n1 n2))
)
(define-fun inv_Node__1123 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2544 
 n1 
 n2)
)
(define-fun inv_Node__1842 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1845 
 n1 
 n2)
)
(define-fun inv_Node__601 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2486 
 n1 
 n2)
)
(define-fun inv_Node__1720 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2010 
 n1 
 n2)
)
(define-fun inv_Node__1455 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1387 
 n1 
 n2)
)
(define-fun inv_Node__1026 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1956 
 n1 
 n2)
)
(define-fun inv_Node__236 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b755 
 n1 
 n2)
)
(define-fun inv_Node__918 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2665 
 n1 
 n2)
)
(define-fun inv_Epoch__330 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1087 m s n1 n2))
)
(define-fun inv_Node__430 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2259 
 n1 
 n2)
)
(define-fun inv_Node__785 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2740 
 n1 
 n2)
)
(define-fun inv_Node__1822 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2082 
 n1 
 n2)
)
(define-fun inv_Node__775 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2305 
 n1 
 n2)
)
(define-fun inv_Atom_394 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1144 
 (held m s (inv_Node__1436 m s n1 n2)) 
 (= (inv_Node__1437 m s n1 n2) (inv_Node__1438 m s n1 n2)))
)
(define-fun inv_Node__392 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2410 
 n1 
 n2)
)
(define-fun inv_Atom_399 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1216 
 (held m s (inv_Node__1589 m s n1 n2)) 
 (= (inv_Node__1590 m s n1 n2) (inv_Node__1591 m s n1 n2)))
)
(define-fun inv_Node__142 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1066 
 n1 
 n2)
)
(define-fun inv_Epoch__171 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__960 m s n1 n2))
)
(define-fun inv_Node__1703 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1851 
 n1 
 n2)
)
(define-fun inv_Node__1313 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2103 
 n1 
 n2)
)
(define-fun inv_Epoch__170 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1679 m s n1 n2))
)
(define-fun inv_Node__863 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1362 
 n1 
 n2)
)
(define-fun inv_Node__58 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b717 
 n1 
 n2)
)
(define-fun inv_Epoch__247 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1543 m s n1 n2))
)
(define-fun inv_Node__381 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1621 
 n1 
 n2)
)
(define-fun inv_Node__499 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1363 
 n1 
 n2)
)
(define-fun inv_Node__1823 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1361 
 n1 
 n2)
)
(define-fun inv_Node__1515 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2204 
 n1 
 n2)
)
(define-fun inv_Node__777 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2545 
 n1 
 n2)
)
(define-fun inv_Atom_238 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1234 
 (held m s (inv_Node__1637 m s n1 n2)) 
 (= (inv_Node__1638 m s n1 n2) (inv_Node__1639 m s n1 n2)))
)
(define-fun inv_Epoch__194 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1413 m s n1 n2))
)
(define-fun inv_Node__702 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2710 
 n1 
 n2)
)
(define-fun inv_Node__301 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b873 
 n1 
 n2)
)
(define-fun inv_Atom_146 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1312 
 (held m s (inv_Node__1812 m s n1 n2)) 
 (= (inv_Node__1813 m s n1 n2) (inv_Node__1814 m s n1 n2)))
)
(define-fun inv_Atom_381 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1179 
 (held m s (inv_Node__1503 m s n1 n2)) 
 (= (inv_Node__1504 m s n1 n2) (inv_Node__1505 m s n1 n2)))
)
(define-fun inv_Atom_134 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b781 
 (held m s (inv_Node__675 m s n1 n2)) 
 (= (inv_Node__676 m s n1 n2) (inv_Node__677 m s n1 n2)))
)
(define-fun inv_Epoch__172 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1029 m s n1 n2))
)
(define-fun inv_Node__1109 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1546 
 n1 
 n2)
)
(define-fun inv_Node__908 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1484 
 n1 
 n2)
)
(define-fun inv_Node__626 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2319 
 n1 
 n2)
)
(define-fun inv_Node__156 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b806 
 n1 
 n2)
)
(define-fun inv_Node__784 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2757 
 n1 
 n2)
)
(define-fun inv_Epoch__196 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__805 m s n1 n2))
)
(define-fun inv_Atom_207 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b793 
 (held m s (inv_Node__709 m s n1 n2)) 
 (= (inv_Node__710 m s n1 n2) (inv_Node__711 m s n1 n2)))
)
(define-fun inv_Node__117 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1136 
 n1 
 n2)
)
(define-fun inv_Node__1571 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2036 
 n1 
 n2)
)
(define-fun inv_Node__1311 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2502 
 n1 
 n2)
)
(define-fun inv_Node__230 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1150 
 n1 
 n2)
)
(define-fun inv_Atom_70 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b972 
 (held m s (inv_Node__1079 m s n1 n2)) 
 (= (inv_Node__1080 m s n1 n2) (inv_Node__1081 m s n1 n2)))
)
(define-fun inv_Node__519 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2294 
 n1 
 n2)
)
(define-fun inv_Node__1755 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1766 
 n1 
 n2)
)
(define-fun inv_Node__42 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b876 
 n1 
 n2)
)
(define-fun inv_Node__928 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2455 
 n1 
 n2)
)
(define-fun inv_Node__1325 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2528 
 n1 
 n2)
)
(define-fun inv_Node__1692 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1946 
 n1 
 n2)
)
(define-fun inv_Epoch__111 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__760 m s n1 n2))
)
(define-fun inv_Atom_237 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1318 
 (held m s (inv_Node__1821 m s n1 n2)) 
 (= (inv_Node__1822 m s n1 n2) (inv_Node__1823 m s n1 n2)))
)
(define-fun inv_Epoch__114 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__718 m s n1 n2))
)
(define-fun inv_Node__1578 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1647 
 n1 
 n2)
)
(define-fun inv_Node__177 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b627 
 n1 
 n2)
)
(define-fun inv_Atom_236 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b669 
 (held m s (inv_Node__469 m s n1 n2)) 
 (= (inv_Node__470 m s n1 n2) (inv_Node__471 m s n1 n2)))
)
(define-fun inv_Node__1316 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2680 
 n1 
 n2)
)
(define-fun inv_Node__330 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b847 
 n1 
 n2)
)
(define-fun inv_Atom_193 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1332 
 (held m s (inv_Node__1853 m s n1 n2)) 
 (= (inv_Node__1854 m s n1 n2) (inv_Node__1855 m s n1 n2)))
)
(define-fun inv_Node__1213 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1879 
 n1 
 n2)
)
(define-fun inv_Node__776 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1720 
 n1 
 n2)
)
(define-fun inv_Node__1442 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2031 
 n1 
 n2)
)
(define-fun inv_Node__953 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2402 
 n1 
 n2)
)
(define-fun inv_Epoch__136 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__578 m s n1 n2))
)
(define-fun inv_Node__450 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1490 
 n1 
 n2)
)
(define-fun inv_Node__176 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b678 
 n1 
 n2)
)
(define-fun inv_Atom_137 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b774 
 (held m s (inv_Node__653 m s n1 n2)) 
 (= (inv_Node__654 m s n1 n2) (inv_Node__655 m s n1 n2)))
)
(define-fun inv_Node__120 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b696 
 n1 
 n2)
)
(define-fun inv_Epoch__186 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1086 m s n1 n2))
)
(define-fun inv_Node__503 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2246 
 n1 
 n2)
)
(define-fun inv_Node__1672 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1514 
 n1 
 n2)
)
(define-fun inv_Node__1796 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2387 
 n1 
 n2)
)
(define-fun inv_Node__97 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1316 
 n1 
 n2)
)
(define-fun inv_Node__151 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b852 
 n1 
 n2)
)
(define-fun inv_Epoch__131 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__961 m s n1 n2))
)
(define-fun inv_Node__944 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1627 
 n1 
 n2)
)
(define-fun inv_Epoch__53 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1592 m s n1 n2))
)
(define-fun inv_Node__198 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b990 
 n1 
 n2)
)
(define-fun inv_Node__186 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b762 
 n1 
 n2)
)
(define-fun inv_Epoch__250 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1530 m s n1 n2))
)
(define-fun inv_Node__666 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1894 
 n1 
 n2)
)
(define-fun inv_Node__1292 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2440 
 n1 
 n2)
)
(define-fun inv_Node__926 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2839 
 n1 
 n2)
)
(define-fun inv_Epoch__213 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1306 m s n1 n2))
)
(define-fun inv_Atom_323 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1255 
 (held m s (inv_Node__1692 m s n1 n2)) 
 (= (inv_Node__1693 m s n1 n2) (inv_Node__1694 m s n1 n2)))
)
(define-fun inv_Node__943 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1941 
 n1 
 n2)
)
(define-fun inv_Node__232 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b718 
 n1 
 n2)
)
(define-fun inv_Node__473 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2011 
 n1 
 n2)
)
(define-fun inv_Epoch__195 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__632 m s n1 n2))
)
(define-fun inv_Node__181 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1074 
 n1 
 n2)
)
(define-fun inv_Node__1327 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2258 
 n1 
 n2)
)
(define-fun inv_Atom_239 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b869 
 (held m s (inv_Node__875 m s n1 n2)) 
 (= (inv_Node__876 m s n1 n2) (inv_Node__877 m s n1 n2)))
)
(define-fun inv_Node__357 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b646 
 n1 
 n2)
)
(define-fun inv_Atom_408 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1006 
 (held m s (inv_Node__1141 m s n1 n2)) 
 (= (inv_Node__1142 m s n1 n2) (inv_Node__1143 m s n1 n2)))
)
(define-fun inv_Node__1816 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2045 
 n1 
 n2)
)
(define-fun inv_Node__380 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1940 
 n1 
 n2)
)
(define-fun inv_Node__793 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2132 
 n1 
 n2)
)
(define-fun inv_Node__1267 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1408 
 n1 
 n2)
)
(define-fun inv_Node__1468 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1613 
 n1 
 n2)
)
(define-fun inv_Atom_34 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b242 
 (held m s (inv_Node__142 m s n1 n2)) 
 (ite inv_b243 
 (locked m s (inv_Epoch__156 m s n1 n2) (inv_Node__143 m s n1 n2)) 
 (ite inv_b244 
 (transfer m s (inv_Epoch__157 m s n1 n2) (inv_Node__144 m s n1 n2)) 
 (ite inv_b245 
 (le m (inv_Epoch__158 m s n1 n2) (inv_Epoch__159 m s n1 n2)) 
 (ite inv_b246 
 (= (inv_Node__145 m s n1 n2) (inv_Node__146 m s n1 n2)) 
 (ite inv_b247 
 (= (inv_Epoch__160 m s n1 n2) (inv_Epoch__161 m s n1 n2)) 
 (ite inv_b248 
 (and (inv_Atom_190 m s n1 n2) (inv_Atom_191 m s n1 n2)) 
 (ite inv_b249 
 (or (inv_Atom_192 m s n1 n2) (inv_Atom_193 m s n1 n2)) 
 (ite inv_b250 
 (=> (inv_Atom_194 m s n1 n2) (inv_Atom_195 m s n1 n2)) 
 (not (inv_Atom_196 m s n1 n2)))))))))))
)
(define-fun inv_Epoch__21 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__101 m s n1 n2))
)
(define-fun inv_Node__184 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1120 
 n1 
 n2)
)
(define-fun inv_Node__564 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1486 
 n1 
 n2)
)
(define-fun inv_Atom_384 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1306 
 (held m s (inv_Node__1796 m s n1 n2)) 
 (= (inv_Node__1797 m s n1 n2) (inv_Node__1798 m s n1 n2)))
)
(define-fun inv_Node__1032 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2390 
 n1 
 n2)
)
(define-fun inv_Node__1181 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2252 
 n1 
 n2)
)
(define-fun inv_Node__313 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1321 
 n1 
 n2)
)
(define-fun inv_Node__1616 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1406 
 n1 
 n2)
)
(define-fun inv_Epoch__87 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__631 m s n1 n2))
)
(define-fun inv_Node__751 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2236 
 n1 
 n2)
)
(define-fun inv_Atom_33 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b301 
 (held m s (inv_Node__175 m s n1 n2)) 
 (ite inv_b302 
 (locked m s (inv_Epoch__192 m s n1 n2) (inv_Node__176 m s n1 n2)) 
 (ite inv_b303 
 (transfer m s (inv_Epoch__193 m s n1 n2) (inv_Node__177 m s n1 n2)) 
 (ite inv_b304 
 (le m (inv_Epoch__194 m s n1 n2) (inv_Epoch__195 m s n1 n2)) 
 (ite inv_b305 
 (= (inv_Node__178 m s n1 n2) (inv_Node__179 m s n1 n2)) 
 (ite inv_b306 
 (= (inv_Epoch__196 m s n1 n2) (inv_Epoch__197 m s n1 n2)) 
 (ite inv_b307 
 (and (inv_Atom_232 m s n1 n2) (inv_Atom_233 m s n1 n2)) 
 (ite inv_b308 
 (or (inv_Atom_234 m s n1 n2) (inv_Atom_235 m s n1 n2)) 
 (ite inv_b309 
 (=> (inv_Atom_236 m s n1 n2) (inv_Atom_237 m s n1 n2)) 
 (not (inv_Atom_238 m s n1 n2)))))))))))
)
(define-fun inv_Node__1121 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2450 
 n1 
 n2)
)
(define-fun inv_Node__1293 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1824 
 n1 
 n2)
)
(define-fun inv_Node__703 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2506 
 n1 
 n2)
)
(define-fun inv_Node__157 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b714 
 n1 
 n2)
)
(define-fun inv_Node__121 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b983 
 n1 
 n2)
)
(define-fun inv_Node__1654 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1748 
 n1 
 n2)
)
(define-fun inv_Node__112 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b961 
 n1 
 n2)
)
(define-fun inv_Atom_240 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b936 
 (held m s (inv_Node__1015 m s n1 n2)) 
 (= (inv_Node__1016 m s n1 n2) (inv_Node__1017 m s n1 n2)))
)
(define-fun inv_Atom_66 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1326 
 (held m s (inv_Node__1840 m s n1 n2)) 
 (= (inv_Node__1841 m s n1 n2) (inv_Node__1842 m s n1 n2)))
)
(define-fun inv_Node__1783 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1524 
 n1 
 n2)
)
(define-fun inv_Atom_258 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b883 
 (held m s (inv_Node__907 m s n1 n2)) 
 (= (inv_Node__908 m s n1 n2) (inv_Node__909 m s n1 n2)))
)
(define-fun inv_Node__1279 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1446 
 n1 
 n2)
)
(define-fun inv_Atom_73 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1245 
 (held m s (inv_Node__1666 m s n1 n2)) 
 (= (inv_Node__1667 m s n1 n2) (inv_Node__1668 m s n1 n2)))
)
(define-fun inv_Node__956 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1396 
 n1 
 n2)
)
(define-fun inv_Epoch__95 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1515 m s n1 n2))
)
(define-fun inv_Node__59 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b687 
 n1 
 n2)
)
(define-fun inv_Node__1219 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1560 
 n1 
 n2)
)
(define-fun inv_Epoch__323 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1111 m s n1 n2))
)
(define-fun inv_Node__1485 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2505 
 n1 
 n2)
)
(define-fun inv_Epoch__91 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__953 m s n1 n2))
)
(define-fun inv_Node__1159 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1650 
 n1 
 n2)
)
(define-fun inv_Atom_442 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b771 
 (held m s (inv_Node__646 m s n1 n2)) 
 (= (inv_Node__647 m s n1 n2) (inv_Node__648 m s n1 n2)))
)
(define-fun inv_Epoch__253 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__822 m s n1 n2))
)
(define-fun inv_Node__1285 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1991 
 n1 
 n2)
)
(define-fun inv_Epoch__201 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__666 m s n1 n2))
)
(define-fun inv_Node__914 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1519 
 n1 
 n2)
)
(define-fun inv_Atom_160 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b642 
 (held m s (inv_Node__418 m s n1 n2)) 
 (= (inv_Node__419 m s n1 n2) (inv_Node__420 m s n1 n2)))
)
(define-fun inv_Node__31 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b515 
 n1 
 n2)
)
(define-fun inv_Node__1760 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2178 
 n1 
 n2)
)
(define-fun inv_Node__61 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b652 
 n1 
 n2)
)
(define-fun inv_Atom_290 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b960 
 (held m s (inv_Node__1062 m s n1 n2)) 
 (= (inv_Node__1063 m s n1 n2) (inv_Node__1064 m s n1 n2)))
)
(define-fun inv_Node__561 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1466 
 n1 
 n2)
)
(define-fun inv_Node__853 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1724 
 n1 
 n2)
)
(define-fun inv_Node__1761 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2344 
 n1 
 n2)
)
(define-fun inv_Node__393 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2549 
 n1 
 n2)
)
(define-fun inv_Node__945 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1865 
 n1 
 n2)
)
(define-fun inv_Epoch__51 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1411 m s n1 n2))
)
(define-fun inv_Node__1315 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2792 
 n1 
 n2)
)
(define-fun inv_Epoch__93 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1703 m s n1 n2))
)
(define-fun inv_Atom_115 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b850 
 (held m s (inv_Node__837 m s n1 n2)) 
 (= (inv_Node__838 m s n1 n2) (inv_Node__839 m s n1 n2)))
)
(define-fun inv_Node__1784 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1735 
 n1 
 n2)
)
(define-fun inv_Epoch__280 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__597 m s n1 n2))
)
(define-fun inv_Atom_206 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b826 
 (held m s (inv_Node__792 m s n1 n2)) 
 (= (inv_Node__793 m s n1 n2) (inv_Node__794 m s n1 n2)))
)
(define-fun inv_Atom_294 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1239 
 (held m s (inv_Node__1654 m s n1 n2)) 
 (= (inv_Node__1655 m s n1 n2) (inv_Node__1656 m s n1 n2)))
)
(define-fun inv_Node__289 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b736 
 n1 
 n2)
)
(define-fun inv_Node__1227 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2598 
 n1 
 n2)
)
(define-fun inv_Atom_32 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b400 
 (held m s (inv_Node__237 m s n1 n2)) 
 (ite inv_b401 
 (locked m s (inv_Epoch__252 m s n1 n2) (inv_Node__238 m s n1 n2)) 
 (ite inv_b402 
 (transfer m s (inv_Epoch__253 m s n1 n2) (inv_Node__239 m s n1 n2)) 
 (ite inv_b403 
 (le m (inv_Epoch__254 m s n1 n2) (inv_Epoch__255 m s n1 n2)) 
 (ite inv_b404 
 (= (inv_Node__240 m s n1 n2) (inv_Node__241 m s n1 n2)) 
 (ite inv_b405 
 (= (inv_Epoch__256 m s n1 n2) (inv_Epoch__257 m s n1 n2)) 
 (ite inv_b406 
 (and (inv_Atom_302 m s n1 n2) (inv_Atom_303 m s n1 n2)) 
 (ite inv_b407 
 (or (inv_Atom_304 m s n1 n2) (inv_Atom_305 m s n1 n2)) 
 (ite inv_b408 
 (=> (inv_Atom_306 m s n1 n2) (inv_Atom_307 m s n1 n2)) 
 (not (inv_Atom_308 m s n1 n2)))))))))))
)
(define-fun inv_Node__314 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1122 
 n1 
 n2)
)
(define-fun inv_Node__422 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2570 
 n1 
 n2)
)
(define-fun inv_Node__1685 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2291 
 n1 
 n2)
)
(define-fun inv_Epoch__199 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1213 m s n1 n2))
)
(define-fun inv_Epoch__58 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1121 m s n1 n2))
)
(define-fun inv_Node__235 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1299 
 n1 
 n2)
)
(define-fun inv_Node__320 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b981 
 n1 
 n2)
)
(define-fun inv_Atom_167 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1070 
 (held m s (inv_Node__1292 m s n1 n2)) 
 (= (inv_Node__1293 m s n1 n2) (inv_Node__1294 m s n1 n2)))
)
(define-fun inv_Epoch__119 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1558 m s n1 n2))
)
(define-fun inv_Epoch__66 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1878 m s n1 n2))
)
(define-fun inv_Atom_452 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1031 
 (held m s (inv_Node__1204 m s n1 n2)) 
 (= (inv_Node__1205 m s n1 n2) (inv_Node__1206 m s n1 n2)))
)
(define-fun inv_Node__1236 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2723 
 n1 
 n2)
)
(define-fun inv_Node__451 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1428 
 n1 
 n2)
)
(define-fun inv_Atom_54 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b431 
 (held m s (inv_Node__256 m s n1 n2)) 
 (ite inv_b432 
 (locked m s (inv_Epoch__270 m s n1 n2) (inv_Node__257 m s n1 n2)) 
 (ite inv_b433 
 (transfer m s (inv_Epoch__271 m s n1 n2) (inv_Node__258 m s n1 n2)) 
 (ite inv_b434 
 (le m (inv_Epoch__272 m s n1 n2) (inv_Epoch__273 m s n1 n2)) 
 (ite inv_b435 
 (= (inv_Node__259 m s n1 n2) (inv_Node__260 m s n1 n2)) 
 (ite inv_b436 
 (= (inv_Epoch__274 m s n1 n2) (inv_Epoch__275 m s n1 n2)) 
 (ite inv_b437 
 (and (inv_Atom_323 m s n1 n2) (inv_Atom_324 m s n1 n2)) 
 (ite inv_b438 
 (or (inv_Atom_325 m s n1 n2) (inv_Atom_326 m s n1 n2)) 
 (ite inv_b439 
 (=> (inv_Atom_327 m s n1 n2) (inv_Atom_328 m s n1 n2)) 
 (not (inv_Atom_329 m s n1 n2)))))))))))
)
(define-fun inv_Node__1280 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1357 
 n1 
 n2)
)
(define-fun inv_Epoch__164 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__721 m s n1 n2))
)
(define-fun inv_Atom_168 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b632 
 (held m s (inv_Node__399 m s n1 n2)) 
 (= (inv_Node__400 m s n1 n2) (inv_Node__401 m s n1 n2)))
)
(define-fun inv_Node__575 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2272 
 n1 
 n2)
)
(define-fun inv_Atom_289 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b757 
 (held m s (inv_Node__625 m s n1 n2)) 
 (= (inv_Node__626 m s n1 n2) (inv_Node__627 m s n1 n2)))
)
(define-fun inv_Node__328 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1011 
 n1 
 n2)
)
(define-fun inv_Node__602 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1404 
 n1 
 n2)
)
(define-fun inv_Node__637 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1765 
 n1 
 n2)
)
(define-fun inv_Node__300 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1017 
 n1 
 n2)
)
(define-fun inv_Atom_31 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b260 
 (held m s (inv_Node__154 m s n1 n2)) 
 (ite inv_b261 
 (locked m s (inv_Epoch__168 m s n1 n2) (inv_Node__155 m s n1 n2)) 
 (ite inv_b262 
 (transfer m s (inv_Epoch__169 m s n1 n2) (inv_Node__156 m s n1 n2)) 
 (ite inv_b263 
 (le m (inv_Epoch__170 m s n1 n2) (inv_Epoch__171 m s n1 n2)) 
 (ite inv_b264 
 (= (inv_Node__157 m s n1 n2) (inv_Node__158 m s n1 n2)) 
 (ite inv_b265 
 (= (inv_Epoch__172 m s n1 n2) (inv_Epoch__173 m s n1 n2)) 
 (ite inv_b266 
 (and (inv_Atom_204 m s n1 n2) (inv_Atom_205 m s n1 n2)) 
 (ite inv_b267 
 (or (inv_Atom_206 m s n1 n2) (inv_Atom_207 m s n1 n2)) 
 (ite inv_b268 
 (=> (inv_Atom_208 m s n1 n2) (inv_Atom_209 m s n1 n2)) 
 (not (inv_Atom_210 m s n1 n2)))))))))))
)
(define-fun inv_Node__1403 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1905 
 n1 
 n2)
)
(define-fun inv_Node__1119 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1922 
 n1 
 n2)
)
(define-fun inv_Atom_298 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b767 
 (held m s (inv_Node__636 m s n1 n2)) 
 (= (inv_Node__637 m s n1 n2) (inv_Node__638 m s n1 n2)))
)
(define-fun inv_Node__1875 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1345 
 n1 
 n2)
)
(define-fun inv_Node__183 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b906 
 n1 
 n2)
)
(define-fun inv_Atom_243 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1260 
 (held m s (inv_Node__1704 m s n1 n2)) 
 (= (inv_Node__1705 m s n1 n2) (inv_Node__1706 m s n1 n2)))
)
(define-fun inv_Atom_251 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b996 
 (held m s (inv_Node__1123 m s n1 n2)) 
 (= (inv_Node__1124 m s n1 n2) (inv_Node__1125 m s n1 n2)))
)
(define-fun inv_Epoch__4 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__300 m s n1 n2))
)
(define-fun inv_Atom_89 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1094 
 (held m s (inv_Node__1321 m s n1 n2)) 
 (= (inv_Node__1322 m s n1 n2) (inv_Node__1323 m s n1 n2)))
)
(define-fun inv_Node__327 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b706 
 n1 
 n2)
)
(define-fun inv_Atom_300 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1090 
 (held m s (inv_Node__1315 m s n1 n2)) 
 (= (inv_Node__1316 m s n1 n2) (inv_Node__1317 m s n1 n2)))
)
(define-fun inv_Epoch__293 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1112 m s n1 n2))
)
(define-fun inv_Node__942 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1984 
 n1 
 n2)
)
(define-fun inv_Atom_406 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b860 
 (held m s (inv_Node__863 m s n1 n2)) 
 (= (inv_Node__864 m s n1 n2) (inv_Node__865 m s n1 n2)))
)
(define-fun inv_Node__1698 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2016 
 n1 
 n2)
)
(define-fun inv_Atom_200 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b766 
 (held m s (inv_Node__633 m s n1 n2)) 
 (= (inv_Node__634 m s n1 n2) (inv_Node__635 m s n1 n2)))
)
(define-fun inv_Node__1336 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2737 
 n1 
 n2)
)
(define-fun inv_Node__1443 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2227 
 n1 
 n2)
)
(define-fun inv_Atom_8 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b382 
 (held m s (inv_Node__227 m s n1 n2)) 
 (ite inv_b383 
 (locked m s (inv_Epoch__240 m s n1 n2) (inv_Node__228 m s n1 n2)) 
 (ite inv_b384 
 (transfer m s (inv_Epoch__241 m s n1 n2) (inv_Node__229 m s n1 n2)) 
 (ite inv_b385 
 (le m (inv_Epoch__242 m s n1 n2) (inv_Epoch__243 m s n1 n2)) 
 (ite inv_b386 
 (= (inv_Node__230 m s n1 n2) (inv_Node__231 m s n1 n2)) 
 (ite inv_b387 
 (= (inv_Epoch__244 m s n1 n2) (inv_Epoch__245 m s n1 n2)) 
 (ite inv_b388 
 (and (inv_Atom_288 m s n1 n2) (inv_Atom_289 m s n1 n2)) 
 (ite inv_b389 
 (or (inv_Atom_290 m s n1 n2) (inv_Atom_291 m s n1 n2)) 
 (ite inv_b390 
 (=> (inv_Atom_292 m s n1 n2) (inv_Atom_293 m s n1 n2)) 
 (not (inv_Atom_294 m s n1 n2)))))))))))
)
(define-fun inv_Atom_199 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b689 
 (held m s (inv_Node__498 m s n1 n2)) 
 (= (inv_Node__499 m s n1 n2) (inv_Node__500 m s n1 n2)))
)
(define-fun inv_Epoch__68 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__750 m s n1 n2))
)
(define-fun inv_Node__1196 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2638 
 n1 
 n2)
)
(define-fun inv_Epoch__248 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1284 m s n1 n2))
)
(define-fun inv_Atom_225 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b968 
 (held m s (inv_Node__1072 m s n1 n2)) 
 (= (inv_Node__1073 m s n1 n2) (inv_Node__1074 m s n1 n2)))
)
(define-fun inv_Node__170 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b845 
 n1 
 n2)
)
(define-fun inv_Node__1028 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2213 
 n1 
 n2)
)
(define-fun inv_Epoch__25 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__208 m s n1 n2))
)
(define-fun inv_Atom_447 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b662 
 (held m s (inv_Node__449 m s n1 n2)) 
 (= (inv_Node__450 m s n1 n2) (inv_Node__451 m s n1 n2)))
)
(define-fun inv_Epoch__347 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__824 m s n1 n2))
)
(define-fun inv_Node__366 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b987 
 n1 
 n2)
)
(define-fun inv_Node__33 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b104 
 n1 
 n2)
)
(define-fun inv_Node__744 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2361 
 n1 
 n2)
)
(define-fun inv_Epoch__212 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__785 m s n1 n2))
)
(define-fun inv_Epoch__338 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__465 m s n1 n2))
)
(define-fun inv_Node__365 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b690 
 n1 
 n2)
)
(define-fun inv_Epoch__318 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__540 m s n1 n2))
)
(define-fun inv_Epoch__163 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__551 m s n1 n2))
)
(define-fun inv_Node__47 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b648 
 n1 
 n2)
)
(define-fun inv_Epoch__3 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__58 m s n1 n2))
)
(define-fun inv_Node__826 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2328 
 n1 
 n2)
)
(define-fun inv_Node__358 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b697 
 n1 
 n2)
)
(define-fun inv_Node__98 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b910 
 n1 
 n2)
)
(define-fun inv_Node__559 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2089 
 n1 
 n2)
)
(define-fun inv_Atom_398 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1095 
 (held m s (inv_Node__1326 m s n1 n2)) 
 (= (inv_Node__1327 m s n1 n2) (inv_Node__1328 m s n1 n2)))
)
(define-fun inv_Epoch__5 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__174 m s n1 n2))
)
(define-fun inv_Node__87 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b800 
 n1 
 n2)
)
(define-fun inv_Node__577 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2130 
 n1 
 n2)
)
(define-fun inv_Atom_12 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b290 
 (held m s (inv_Node__169 m s n1 n2)) 
 (ite inv_b291 
 (locked m s (inv_Epoch__186 m s n1 n2) (inv_Node__170 m s n1 n2)) 
 (ite inv_b292 
 (transfer m s (inv_Epoch__187 m s n1 n2) (inv_Node__171 m s n1 n2)) 
 (ite inv_b293 
 (le m (inv_Epoch__188 m s n1 n2) (inv_Epoch__189 m s n1 n2)) 
 (ite inv_b294 
 (= (inv_Node__172 m s n1 n2) (inv_Node__173 m s n1 n2)) 
 (ite inv_b295 
 (= (inv_Epoch__190 m s n1 n2) (inv_Epoch__191 m s n1 n2)) 
 (ite inv_b296 
 (and (inv_Atom_225 m s n1 n2) (inv_Atom_226 m s n1 n2)) 
 (ite inv_b297 
 (or (inv_Atom_227 m s n1 n2) (inv_Atom_228 m s n1 n2)) 
 (ite inv_b298 
 (=> (inv_Atom_229 m s n1 n2) (inv_Atom_230 m s n1 n2)) 
 (not (inv_Atom_231 m s n1 n2)))))))))))
)
(define-fun inv_Node__1510 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2564 
 n1 
 n2)
)
(define-fun inv_Epoch__115 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1159 m s n1 n2))
)
(define-fun inv_Node__369 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2286 
 n1 
 n2)
)
(define-fun inv_Node__628 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1959 
 n1 
 n2)
)
(define-fun inv_Atom_249 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1146 
 (held m s (inv_Node__1440 m s n1 n2)) 
 (= (inv_Node__1441 m s n1 n2) (inv_Node__1442 m s n1 n2)))
)
(define-fun inv_Node__1856 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1680 
 n1 
 n2)
)
(define-fun inv_Node__263 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b699 
 n1 
 n2)
)
(define-fun inv_Node__1234 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2354 
 n1 
 n2)
)
(define-fun inv_Epoch__11 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__317 m s n1 n2))
)
(define-fun inv_Node__968 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2641 
 n1 
 n2)
)
(define-fun inv_Atom_259 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1268 
 (held m s (inv_Node__1720 m s n1 n2)) 
 (= (inv_Node__1721 m s n1 n2) (inv_Node__1722 m s n1 n2)))
)
(define-fun inv_Atom_198 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b702 
 (held m s (inv_Node__517 m s n1 n2)) 
 (= (inv_Node__518 m s n1 n2) (inv_Node__519 m s n1 n2)))
)
(define-fun inv_Atom_158 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b727 
 (held m s (inv_Node__559 m s n1 n2)) 
 (= (inv_Node__560 m s n1 n2) (inv_Node__561 m s n1 n2)))
)
(define-fun inv_Atom_374 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1059 
 (held m s (inv_Node__1267 m s n1 n2)) 
 (= (inv_Node__1268 m s n1 n2) (inv_Node__1269 m s n1 n2)))
)
(define-fun inv_Atom_423 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b857 
 (held m s (inv_Node__853 m s n1 n2)) 
 (= (inv_Node__854 m s n1 n2) (inv_Node__855 m s n1 n2)))
)
(define-fun inv_Atom_295 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1206 
 (held m s (inv_Node__1570 m s n1 n2)) 
 (= (inv_Node__1571 m s n1 n2) (inv_Node__1572 m s n1 n2)))
)
(define-fun inv_Node__1867 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2315 
 n1 
 n2)
)
(define-fun inv_Node__1868 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2643 
 n1 
 n2)
)
(define-fun inv_Epoch__378 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__543 m s n1 n2))
)
(define-fun inv_Node__816 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2417 
 n1 
 n2)
)
(define-fun inv_Node__1664 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1799 
 n1 
 n2)
)
(define-fun inv_Epoch__57 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__830 m s n1 n2))
)
(define-fun inv_Node__1837 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2706 
 n1 
 n2)
)
(define-fun inv_Epoch__312 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1623 m s n1 n2))
)
(define-fun inv_Epoch__315 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1251 m s n1 n2))
)
(define-fun inv_Node__321 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1248 
 n1 
 n2)
)
(define-fun inv_Node__114 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b933 
 n1 
 n2)
)
(define-fun inv_Epoch__200 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__954 m s n1 n2))
)
(define-fun inv_Epoch__75 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__452 m s n1 n2))
)
(define-fun inv_Node__32 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b538 
 n1 
 n2)
)
(define-fun inv_Atom_201 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1251 
 (held m s (inv_Node__1681 m s n1 n2)) 
 (= (inv_Node__1682 m s n1 n2) (inv_Node__1683 m s n1 n2)))
)
(define-fun inv_Node__52 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1114 
 n1 
 n2)
)
(define-fun inv_Node__1012 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1624 
 n1 
 n2)
)
(define-fun inv_Atom_136 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1116 
 (held m s (inv_Node__1376 m s n1 n2)) 
 (= (inv_Node__1377 m s n1 n2) (inv_Node__1378 m s n1 n2)))
)
(define-fun inv_Node__1058 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2202 
 n1 
 n2)
)
(define-fun inv_Atom_30 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b76 
 (held m s (inv_Node__42 m s n1 n2)) 
 (ite inv_b77 
 (locked m s (inv_Epoch__48 m s n1 n2) (inv_Node__43 m s n1 n2)) 
 (ite inv_b78 
 (transfer m s (inv_Epoch__49 m s n1 n2) (inv_Node__44 m s n1 n2)) 
 (ite inv_b79 
 (le m (inv_Epoch__50 m s n1 n2) (inv_Epoch__51 m s n1 n2)) 
 (ite inv_b80 
 (= (inv_Node__45 m s n1 n2) (inv_Node__46 m s n1 n2)) 
 (ite inv_b81 
 (= (inv_Epoch__52 m s n1 n2) (inv_Epoch__53 m s n1 n2)) 
 (ite inv_b82 
 (and (inv_Atom_64 m s n1 n2) (inv_Atom_65 m s n1 n2)) 
 (ite inv_b83 
 (or (inv_Atom_66 m s n1 n2) (inv_Atom_67 m s n1 n2)) 
 (ite inv_b84 
 (=> (inv_Atom_68 m s n1 n2) (inv_Atom_69 m s n1 n2)) 
 (not (inv_Atom_70 m s n1 n2)))))))))))
)
(define-fun inv_Node__1095 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2098 
 n1 
 n2)
)
(define-fun inv_Node__2 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b548 
 n1 
 n2)
)
(define-fun inv_Node__1210 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2018 
 n1 
 n2)
)
(define-fun inv_Node__474 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1996 
 n1 
 n2)
)
(define-fun inv_Node__118 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1103 
 n1 
 n2)
)
(define-fun inv_Node__1371 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2190 
 n1 
 n2)
)
(define-fun inv_Atom_121 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1324 
 (held m s (inv_Node__1836 m s n1 n2)) 
 (= (inv_Node__1837 m s n1 n2) (inv_Node__1838 m s n1 n2)))
)
(define-fun inv_Node__955 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1503 
 n1 
 n2)
)
(define-fun inv_Atom_117 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b729 
 (held m s (inv_Node__565 m s n1 n2)) 
 (= (inv_Node__566 m s n1 n2) (inv_Node__567 m s n1 n2)))
)
(define-fun inv_Atom_364 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b798 
 (held m s (inv_Node__729 m s n1 n2)) 
 (= (inv_Node__730 m s n1 n2) (inv_Node__731 m s n1 n2)))
)
(define-fun inv_Atom_142 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b784 
 (held m s (inv_Node__682 m s n1 n2)) 
 (= (inv_Node__683 m s n1 n2) (inv_Node__684 m s n1 n2)))
)
(define-fun inv_Atom_334 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1087 
 (held m s (inv_Node__1311 m s n1 n2)) 
 (= (inv_Node__1312 m s n1 n2) (inv_Node__1313 m s n1 n2)))
)
(define-fun inv_Atom_155 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b985 
 (held m s (inv_Node__1108 m s n1 n2)) 
 (= (inv_Node__1109 m s n1 n2) (inv_Node__1110 m s n1 n2)))
)
(define-fun inv_Node__681 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1795 
 n1 
 n2)
)
(define-fun inv_Atom_108 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1099 
 (held m s (inv_Node__1338 m s n1 n2)) 
 (= (inv_Node__1339 m s n1 n2) (inv_Node__1340 m s n1 n2)))
)
(define-fun inv_Node__48 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b811 
 n1 
 n2)
)
(define-fun inv_Node__708 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1822 
 n1 
 n2)
)
(define-fun inv_Node__379 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2220 
 n1 
 n2)
)
(define-fun inv_Atom_21 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b391 
 (held m s (inv_Node__232 m s n1 n2)) 
 (ite inv_b392 
 (locked m s (inv_Epoch__246 m s n1 n2) (inv_Node__233 m s n1 n2)) 
 (ite inv_b393 
 (transfer m s (inv_Epoch__247 m s n1 n2) (inv_Node__234 m s n1 n2)) 
 (ite inv_b394 
 (le m (inv_Epoch__248 m s n1 n2) (inv_Epoch__249 m s n1 n2)) 
 (ite inv_b395 
 (= (inv_Node__235 m s n1 n2) (inv_Node__236 m s n1 n2)) 
 (ite inv_b396 
 (= (inv_Epoch__250 m s n1 n2) (inv_Epoch__251 m s n1 n2)) 
 (ite inv_b397 
 (and (inv_Atom_295 m s n1 n2) (inv_Atom_296 m s n1 n2)) 
 (ite inv_b398 
 (or (inv_Atom_297 m s n1 n2) (inv_Atom_298 m s n1 n2)) 
 (ite inv_b399 
 (=> (inv_Atom_299 m s n1 n2) (inv_Atom_300 m s n1 n2)) 
 (not (inv_Atom_301 m s n1 n2)))))))))))
)
(define-fun inv_Node__202 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1244 
 n1 
 n2)
)
(define-fun inv_Epoch__300 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1520 m s n1 n2))
)
(define-fun inv_Atom_252 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b643 
 (held m s (inv_Node__421 m s n1 n2)) 
 (= (inv_Node__422 m s n1 n2) (inv_Node__423 m s n1 n2)))
)
(define-fun inv_Node__1759 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2154 
 n1 
 n2)
)
(define-fun inv_Node__1102 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1854 
 n1 
 n2)
)
(define-fun inv_Node__866 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1355 
 n1 
 n2)
)
(define-fun inv_Atom_449 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b629 
 (held m s (inv_Node__391 m s n1 n2)) 
 (= (inv_Node__392 m s n1 n2) (inv_Node__393 m s n1 n2)))
)
(define-fun inv_Node__211 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b782 
 n1 
 n2)
)
(define-fun inv_Epoch__320 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1435 m s n1 n2))
)
(define-fun inv_Node__810 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1392 
 n1 
 n2)
)
(define-fun inv_Node__967 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2101 
 n1 
 n2)
)
(define-fun inv_Node__645 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2713 
 n1 
 n2)
)
(define-fun inv_Node__1467 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2718 
 n1 
 n2)
)
(define-fun inv_Node__182 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b986 
 n1 
 n2)
)
(define-fun inv_Node__749 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2473 
 n1 
 n2)
)
(define-fun inv_Node__1148 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2267 
 n1 
 n2)
)
(define-fun inv_Atom_99 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b856 
 (held m s (inv_Node__850 m s n1 n2)) 
 (= (inv_Node__851 m s n1 n2) (inv_Node__852 m s n1 n2)))
)
(define-fun inv_Atom_189 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1023 
 (held m s (inv_Node__1187 m s n1 n2)) 
 (= (inv_Node__1188 m s n1 n2) (inv_Node__1189 m s n1 n2)))
)
(define-fun inv_Epoch__310 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__784 m s n1 n2))
)
(define-fun inv_Node__1264 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2814 
 n1 
 n2)
)
(define-fun inv_Atom_147 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b889 
 (held m s (inv_Node__918 m s n1 n2)) 
 (= (inv_Node__919 m s n1 n2) (inv_Node__920 m s n1 n2)))
)
(define-fun inv_Node__78 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1107 
 n1 
 n2)
)
(define-fun inv_Atom_132 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b645 
 (held m s (inv_Node__424 m s n1 n2)) 
 (= (inv_Node__425 m s n1 n2) (inv_Node__426 m s n1 n2)))
)
(define-fun inv_Node__18 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b505 
 n1 
 n2)
)
(define-fun inv_Node__570 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1341 
 n1 
 n2)
)
(define-fun inv_Atom_313 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1263 
 (held m s (inv_Node__1707 m s n1 n2)) 
 (= (inv_Node__1708 m s n1 n2) (inv_Node__1709 m s n1 n2)))
)
(define-fun inv_Node__872 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2566 
 n1 
 n2)
)
(define-fun inv_Node__341 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1046 
 n1 
 n2)
)
(define-fun inv_Epoch__162 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__542 m s n1 n2))
)
(define-fun inv_Epoch__279 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1094 m s n1 n2))
)
(define-fun inv_Node__292 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1319 
 n1 
 n2)
)
(define-fun inv_Epoch__306 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1412 m s n1 n2))
)
(define-fun inv_Epoch__132 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1186 m s n1 n2))
)
(define-fun inv_Atom_444 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b692 
 (held m s (inv_Node__503 m s n1 n2)) 
 (= (inv_Node__504 m s n1 n2) (inv_Node__505 m s n1 n2)))
)
(define-fun inv_Node__797 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2032 
 n1 
 n2)
)
(define-fun inv_Epoch__380 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1879 m s n1 n2))
)
(define-fun inv_Node__1372 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1382 
 n1 
 n2)
)
(define-fun inv_Epoch__73 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1403 m s n1 n2))
)
(define-fun inv_Node__1661 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2255 
 n1 
 n2)
)
(define-fun inv_Epoch__96 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__603 m s n1 n2))
)
(define-fun inv_Node__81 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1300 
 n1 
 n2)
)
(define-fun inv_Node__100 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b663 
 n1 
 n2)
)
(define-fun inv_Atom_370 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b901 
 (held m s (inv_Node__949 m s n1 n2)) 
 (= (inv_Node__950 m s n1 n2) (inv_Node__951 m s n1 n2)))
)
(define-fun inv_Atom_363 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b760 
 (held m s (inv_Node__628 m s n1 n2)) 
 (= (inv_Node__629 m s n1 n2) (inv_Node__630 m s n1 n2)))
)
(define-fun inv_Node__576 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1595 
 n1 
 n2)
)
(define-fun inv_Node__1844 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1599 
 n1 
 n2)
)
(define-fun inv_Node__686 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2456 
 n1 
 n2)
)
(define-fun inv_Node__265 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b701 
 n1 
 n2)
)
(define-fun inv_Epoch__90 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1352 m s n1 n2))
)
(define-fun inv_Epoch__118 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1804 m s n1 n2))
)
(define-fun inv_Node__1171 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2163 
 n1 
 n2)
)
(define-fun inv_Node__1342 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2695 
 n1 
 n2)
)
(define-fun inv_Node__1396 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2184 
 n1 
 n2)
)
(define-fun inv_Atom_377 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b672 
 (held m s (inv_Node__473 m s n1 n2)) 
 (= (inv_Node__474 m s n1 n2) (inv_Node__475 m s n1 n2)))
)
(define-fun inv_Atom_362 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1113 
 (held m s (inv_Node__1370 m s n1 n2)) 
 (= (inv_Node__1371 m s n1 n2) (inv_Node__1372 m s n1 n2)))
)
(define-fun inv_Atom_255 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1284 
 (held m s (inv_Node__1759 m s n1 n2)) 
 (= (inv_Node__1760 m s n1 n2) (inv_Node__1761 m s n1 n2)))
)
(define-fun inv_Epoch__332 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1678 m s n1 n2))
)
(define-fun inv_Node__326 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b835 
 n1 
 n2)
)
(define-fun inv_Node__141 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b949 
 n1 
 n2)
)
(define-fun inv_Epoch__321 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__956 m s n1 n2))
)
(define-fun inv_Atom_29 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b205 
 (held m s (inv_Node__117 m s n1 n2)) 
 (ite inv_b206 
 (locked m s (inv_Epoch__132 m s n1 n2) (inv_Node__118 m s n1 n2)) 
 (ite inv_b207 
 (transfer m s (inv_Epoch__133 m s n1 n2) (inv_Node__119 m s n1 n2)) 
 (ite inv_b208 
 (le m (inv_Epoch__134 m s n1 n2) (inv_Epoch__135 m s n1 n2)) 
 (ite inv_b209 
 (= (inv_Node__120 m s n1 n2) (inv_Node__121 m s n1 n2)) 
 (ite inv_b210 
 (= (inv_Epoch__136 m s n1 n2) (inv_Epoch__137 m s n1 n2)) 
 (ite inv_b211 
 (and (inv_Atom_162 m s n1 n2) (inv_Atom_163 m s n1 n2)) 
 (ite inv_b212 
 (or (inv_Atom_164 m s n1 n2) (inv_Atom_165 m s n1 n2)) 
 (ite inv_b213 
 (=> (inv_Atom_166 m s n1 n2) (inv_Atom_167 m s n1 n2)) 
 (not (inv_Atom_168 m s n1 n2)))))))))))
)
(define-fun inv_Node__382 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1705 
 n1 
 n2)
)
(define-fun inv_Epoch__84 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1455 m s n1 n2))
)
(define-fun inv_Node__319 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1330 
 n1 
 n2)
)
(define-fun inv_Atom_314 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b899 
 (held m s (inv_Node__945 m s n1 n2)) 
 (= (inv_Node__946 m s n1 n2) (inv_Node__947 m s n1 n2)))
)
(define-fun inv_Epoch__9 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__141 m s n1 n2))
)
(define-fun inv_Node__1782 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1713 
 n1 
 n2)
)
(define-fun inv_Atom_375 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b791 
 (held m s (inv_Node__702 m s n1 n2)) 
 (= (inv_Node__703 m s n1 n2) (inv_Node__704 m s n1 n2)))
)
(define-fun inv_Node__7 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b94 
 n1 
 n2)
)
(define-fun inv_Node__644 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2188 
 n1 
 n2)
)
(define-fun inv_Node__359 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1293 
 n1 
 n2)
)
(define-fun inv_Atom_42 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b506 
 (held m s (inv_Node__301 m s n1 n2)) 
 (ite inv_b507 
 (locked m s (inv_Epoch__318 m s n1 n2) (inv_Node__302 m s n1 n2)) 
 (ite inv_b508 
 (transfer m s (inv_Epoch__319 m s n1 n2) (inv_Node__303 m s n1 n2)) 
 (ite inv_b509 
 (le m (inv_Epoch__320 m s n1 n2) (inv_Epoch__321 m s n1 n2)) 
 (ite inv_b510 
 (= (inv_Node__304 m s n1 n2) (inv_Node__305 m s n1 n2)) 
 (ite inv_b511 
 (= (inv_Epoch__322 m s n1 n2) (inv_Epoch__323 m s n1 n2)) 
 (ite inv_b512 
 (and (inv_Atom_379 m s n1 n2) (inv_Atom_380 m s n1 n2)) 
 (ite inv_b513 
 (or (inv_Atom_381 m s n1 n2) (inv_Atom_382 m s n1 n2)) 
 (ite inv_b514 
 (=> (inv_Atom_383 m s n1 n2) (inv_Atom_384 m s n1 n2)) 
 (not (inv_Atom_385 m s n1 n2)))))))))))
)
(define-fun inv_Atom_91 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b651 
 (held m s (inv_Node__428 m s n1 n2)) 
 (= (inv_Node__429 m s n1 n2) (inv_Node__430 m s n1 n2)))
)
(define-fun inv_Node__356 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1281 
 n1 
 n2)
)
(define-fun inv_Node__63 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b671 
 n1 
 n2)
)
(define-fun inv_Node__414 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1909 
 n1 
 n2)
)
(define-fun inv_Atom_88 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b940 
 (held m s (inv_Node__1026 m s n1 n2)) 
 (= (inv_Node__1027 m s n1 n2) (inv_Node__1028 m s n1 n2)))
)
(define-fun inv_Node__1278 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2043 
 n1 
 n2)
)
(define-fun inv_Node__115 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b656 
 n1 
 n2)
)
(define-fun inv_Node__931 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1860 
 n1 
 n2)
)
(define-fun inv_Node__325 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b764 
 n1 
 n2)
)
(define-fun inv_Atom_426 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b898 
 (held m s (inv_Node__942 m s n1 n2)) 
 (= (inv_Node__943 m s n1 n2) (inv_Node__944 m s n1 n2)))
)
(define-fun inv_Epoch__276 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__928 m s n1 n2))
)
(define-fun inv_Epoch__205 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__844 m s n1 n2))
)
(define-fun inv_Node__273 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1217 
 n1 
 n2)
)
(define-fun inv_Node__29 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b241 
 n1 
 n2)
)
(define-fun inv_Epoch__32 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__47 m s n1 n2))
)
(define-fun inv_Epoch__301 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1369 m s n1 n2))
)
(define-fun inv_Node__1857 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1495 
 n1 
 n2)
)
(define-fun inv_Epoch__113 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1171 m s n1 n2))
)
(define-fun inv_Atom_378 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b832 
 (held m s (inv_Node__809 m s n1 n2)) 
 (= (inv_Node__810 m s n1 n2) (inv_Node__811 m s n1 n2)))
)
(define-fun inv_Atom_75 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1056 
 (held m s (inv_Node__1262 m s n1 n2)) 
 (= (inv_Node__1263 m s n1 n2) (inv_Node__1264 m s n1 n2)))
)
(define-fun inv_Atom_140 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1148 
 (held m s (inv_Node__1443 m s n1 n2)) 
 (= (inv_Node__1444 m s n1 n2) (inv_Node__1445 m s n1 n2)))
)
(define-fun inv_Node__332 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b694 
 n1 
 n2)
)
(define-fun inv_Node__1337 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1501 
 n1 
 n2)
)
(define-fun inv_Node__199 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b730 
 n1 
 n2)
)
(define-fun inv_Node__825 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1754 
 n1 
 n2)
)
(define-fun inv_Node__364 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1315 
 n1 
 n2)
)
(define-fun inv_Atom_333 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1100 
 (held m s (inv_Node__1342 m s n1 n2)) 
 (= (inv_Node__1343 m s n1 n2) (inv_Node__1344 m s n1 n2)))
)
(define-fun inv_Node__16 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b559 
 n1 
 n2)
)
(define-fun inv_Epoch__381 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__826 m s n1 n2))
)
(define-fun inv_Node__1057 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2407 
 n1 
 n2)
)
(define-fun inv_Node__413 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1518 
 n1 
 n2)
)
(define-fun inv_Epoch__46 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__338 m s n1 n2))
)
(define-fun inv_Atom_118 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b913 
 (held m s (inv_Node__969 m s n1 n2)) 
 (= (inv_Node__970 m s n1 n2) (inv_Node__971 m s n1 n2)))
)
(define-fun inv_Atom_104 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1247 
 (held m s (inv_Node__1671 m s n1 n2)) 
 (= (inv_Node__1672 m s n1 n2) (inv_Node__1673 m s n1 n2)))
)
(define-fun inv_Node__1347 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1738 
 n1 
 n2)
)
(define-fun inv_Node__1345 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1691 
 n1 
 n2)
)
(define-fun inv_Node__67 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1057 
 n1 
 n2)
)
(define-fun inv_Node__1104 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2301 
 n1 
 n2)
)
(define-fun inv_Node__149 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1060 
 n1 
 n2)
)
(define-fun inv_Epoch__94 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1724 m s n1 n2))
)
(define-fun inv_Node__1617 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1998 
 n1 
 n2)
)
(define-fun inv_Atom_35 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b105 
 (held m s (inv_Node__59 m s n1 n2)) 
 (ite inv_b106 
 (locked m s (inv_Epoch__66 m s n1 n2) (inv_Node__60 m s n1 n2)) 
 (ite inv_b107 
 (transfer m s (inv_Epoch__67 m s n1 n2) (inv_Node__61 m s n1 n2)) 
 (ite inv_b108 
 (le m (inv_Epoch__68 m s n1 n2) (inv_Epoch__69 m s n1 n2)) 
 (ite inv_b109 
 (= (inv_Node__62 m s n1 n2) (inv_Node__63 m s n1 n2)) 
 (ite inv_b110 
 (= (inv_Epoch__70 m s n1 n2) (inv_Epoch__71 m s n1 n2)) 
 (ite inv_b111 
 (and (inv_Atom_85 m s n1 n2) (inv_Atom_86 m s n1 n2)) 
 (ite inv_b112 
 (or (inv_Atom_87 m s n1 n2) (inv_Atom_88 m s n1 n2)) 
 (ite inv_b113 
 (=> (inv_Atom_89 m s n1 n2) (inv_Atom_90 m s n1 n2)) 
 (not (inv_Atom_91 m s n1 n2)))))))))))
)
(define-fun inv_Epoch__97 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1324 m s n1 n2))
)
(define-fun inv_Epoch__210 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__552 m s n1 n2))
)
(define-fun inv_Atom_366 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b971 
 (held m s (inv_Node__1076 m s n1 n2)) 
 (= (inv_Node__1077 m s n1 n2) (inv_Node__1078 m s n1 n2)))
)
(define-fun inv_Epoch__258 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1014 m s n1 n2))
)
(define-fun inv_Epoch__222 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__516 m s n1 n2))
)
(define-fun inv_Atom_13 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b312 
 (held m s (inv_Node__181 m s n1 n2)) 
 (ite inv_b313 
 (locked m s (inv_Epoch__198 m s n1 n2) (inv_Node__182 m s n1 n2)) 
 (ite inv_b314 
 (transfer m s (inv_Epoch__199 m s n1 n2) (inv_Node__183 m s n1 n2)) 
 (ite inv_b315 
 (le m (inv_Epoch__200 m s n1 n2) (inv_Epoch__201 m s n1 n2)) 
 (ite inv_b316 
 (= (inv_Node__184 m s n1 n2) (inv_Node__185 m s n1 n2)) 
 (ite inv_b317 
 (= (inv_Epoch__202 m s n1 n2) (inv_Epoch__203 m s n1 n2)) 
 (ite inv_b318 
 (and (inv_Atom_239 m s n1 n2) (inv_Atom_240 m s n1 n2)) 
 (ite inv_b319 
 (or (inv_Atom_241 m s n1 n2) (inv_Atom_242 m s n1 n2)) 
 (ite inv_b320 
 (=> (inv_Atom_243 m s n1 n2) (inv_Atom_244 m s n1 n2)) 
 (not (inv_Atom_245 m s n1 n2)))))))))))
)
(define-fun inv_Node__1426 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2845 
 n1 
 n2)
)
(define-fun inv_Node__339 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b902 
 n1 
 n2)
)
(define-fun inv_Atom_361 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b785 
 (held m s (inv_Node__686 m s n1 n2)) 
 (= (inv_Node__687 m s n1 n2) (inv_Node__688 m s n1 n2)))
)
(define-fun inv_Atom_111 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b887 
 (held m s (inv_Node__912 m s n1 n2)) 
 (= (inv_Node__913 m s n1 n2) (inv_Node__914 m s n1 n2)))
)
(define-fun inv_Epoch__214 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__708 m s n1 n2))
)
(define-fun inv_Node__1843 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2210 
 n1 
 n2)
)
(define-fun inv_Epoch__211 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__408 m s n1 n2))
)
(define-fun inv_Node__295 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1108 
 n1 
 n2)
)
(define-fun inv_Node__65 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1147 
 n1 
 n2)
)
(define-fun inv_Node__571 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1653 
 n1 
 n2)
)
(define-fun inv_Atom_100 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1027 
 (held m s (inv_Node__1195 m s n1 n2)) 
 (= (inv_Node__1196 m s n1 n2) (inv_Node__1197 m s n1 n2)))
)
(define-fun inv_Node__1717 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1483 
 n1 
 n2)
)
(define-fun inv_Node__1596 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2759 
 n1 
 n2)
)
(define-fun inv_Node__1846 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1729 
 n1 
 n2)
)
(define-fun inv_Atom_413 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1158 
 (held m s (inv_Node__1466 m s n1 n2)) 
 (= (inv_Node__1467 m s n1 n2) (inv_Node__1468 m s n1 n2)))
)
(define-fun inv_Node__1606 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1945 
 n1 
 n2)
)
(define-fun inv_Node__1425 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2313 
 n1 
 n2)
)
(define-fun inv_Atom_246 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1333 
 (held m s (inv_Node__1856 m s n1 n2)) 
 (= (inv_Node__1857 m s n1 n2) (inv_Node__1858 m s n1 n2)))
)
(define-fun inv_Atom_114 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1211 
 (held m s (inv_Node__1580 m s n1 n2)) 
 (= (inv_Node__1581 m s n1 n2) (inv_Node__1582 m s n1 n2)))
)
(define-fun inv_Node__1579 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1734 
 n1 
 n2)
)
(define-fun inv_Atom_369 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b820 
 (held m s (inv_Node__775 m s n1 n2)) 
 (= (inv_Node__776 m s n1 n2) (inv_Node__777 m s n1 n2)))
)
(define-fun inv_Node__291 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b900 
 n1 
 n2)
)
(define-fun inv_Atom_143 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b735 
 (held m s (inv_Node__575 m s n1 n2)) 
 (= (inv_Node__576 m s n1 n2) (inv_Node__577 m s n1 n2)))
)
(define-fun inv_Epoch__152 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__751 m s n1 n2))
)
(define-fun inv_Node__196 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b984 
 n1 
 n2)
)
(define-fun inv_Epoch__2 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__324 m s n1 n2))
)
(define-fun inv_Atom_157 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1314 
 (held m s (inv_Node__1815 m s n1 n2)) 
 (= (inv_Node__1816 m s n1 n2) (inv_Node__1817 m s n1 n2)))
)
(define-fun inv_Epoch__215 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1325 m s n1 n2))
)
(define-fun inv_Node__1179 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2451 
 n1 
 n2)
)
(define-fun inv_Node__1126 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1470 
 n1 
 n2)
)
(define-fun inv_Node__867 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1479 
 n1 
 n2)
)
(define-fun inv_Node__105 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1104 
 n1 
 n2)
)
(define-fun inv_Epoch__39 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__355 m s n1 n2))
)
(define-fun inv_Atom_359 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1298 
 (held m s (inv_Node__1782 m s n1 n2)) 
 (= (inv_Node__1783 m s n1 n2) (inv_Node__1784 m s n1 n2)))
)
(define-fun inv_Atom_202 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1228 
 (held m s (inv_Node__1616 m s n1 n2)) 
 (= (inv_Node__1617 m s n1 n2) (inv_Node__1618 m s n1 n2)))
)
(define-fun inv_Node__1096 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1493 
 n1 
 n2)
)
(define-fun inv_Node__1103 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1604 
 n1 
 n2)
)
(define-fun inv_Node__201 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1045 
 n1 
 n2)
)
(define-fun inv_Node__1120 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2599 
 n1 
 n2)
)
(define-fun inv_Atom_51 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b178 
 (held m s (inv_Node__102 m s n1 n2)) 
 (ite inv_b179 
 (locked m s (inv_Epoch__114 m s n1 n2) (inv_Node__103 m s n1 n2)) 
 (ite inv_b180 
 (transfer m s (inv_Epoch__115 m s n1 n2) (inv_Node__104 m s n1 n2)) 
 (ite inv_b181 
 (le m (inv_Epoch__116 m s n1 n2) (inv_Epoch__117 m s n1 n2)) 
 (ite inv_b182 
 (= (inv_Node__105 m s n1 n2) (inv_Node__106 m s n1 n2)) 
 (ite inv_b183 
 (= (inv_Epoch__118 m s n1 n2) (inv_Epoch__119 m s n1 n2)) 
 (ite inv_b184 
 (and (inv_Atom_141 m s n1 n2) (inv_Atom_142 m s n1 n2)) 
 (ite inv_b185 
 (or (inv_Atom_143 m s n1 n2) (inv_Atom_144 m s n1 n2)) 
 (ite inv_b186 
 (=> (inv_Atom_145 m s n1 n2) (inv_Atom_146 m s n1 n2)) 
 (not (inv_Atom_147 m s n1 n2)))))))))))
)
(define-fun inv_Epoch__226 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__369 m s n1 n2))
)
(define-fun inv_Atom_14 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b169 
 (held m s (inv_Node__96 m s n1 n2)) 
 (ite inv_b170 
 (locked m s (inv_Epoch__108 m s n1 n2) (inv_Node__97 m s n1 n2)) 
 (ite inv_b171 
 (transfer m s (inv_Epoch__109 m s n1 n2) (inv_Node__98 m s n1 n2)) 
 (ite inv_b172 
 (le m (inv_Epoch__110 m s n1 n2) (inv_Epoch__111 m s n1 n2)) 
 (ite inv_b173 
 (= (inv_Node__99 m s n1 n2) (inv_Node__100 m s n1 n2)) 
 (ite inv_b174 
 (= (inv_Epoch__112 m s n1 n2) (inv_Epoch__113 m s n1 n2)) 
 (ite inv_b175 
 (and (inv_Atom_134 m s n1 n2) (inv_Atom_135 m s n1 n2)) 
 (ite inv_b176 
 (or (inv_Atom_136 m s n1 n2) (inv_Atom_137 m s n1 n2)) 
 (ite inv_b177 
 (=> (inv_Atom_138 m s n1 n2) (inv_Atom_139 m s n1 n2)) 
 (not (inv_Atom_140 m s n1 n2)))))))))))
)
(define-fun inv_Epoch__10 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__277 m s n1 n2))
)
(define-fun inv_Atom_411 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1064 
 (held m s (inv_Node__1279 m s n1 n2)) 
 (= (inv_Node__1280 m s n1 n2) (inv_Node__1281 m s n1 n2)))
)
(define-fun inv_Node__272 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b677 
 n1 
 n2)
)
(define-fun inv_Atom_101 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b624 
 (held m s (inv_Node__380 m s n1 n2)) 
 (= (inv_Node__381 m s n1 n2) (inv_Node__382 m s n1 n2)))
)
(define-fun inv_Node__85 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1287 
 n1 
 n2)
)
(define-fun inv_Node__1509 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2842 
 n1 
 n2)
)
(define-fun inv_Epoch__56 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1755 m s n1 n2))
)
(define-fun inv_Epoch__372 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1685 m s n1 n2))
)
(define-fun inv_Epoch__333 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__955 m s n1 n2))
)
(define-fun inv_Node__680 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2464 
 n1 
 n2)
)
(define-fun inv_Node__1770 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2025 
 n1 
 n2)
)
(define-fun inv_Node__886 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2704 
 n1 
 n2)
)
(define-fun inv_Node__887 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1617 
 n1 
 n2)
)
(define-fun inv_Node__191 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b962 
 n1 
 n2)
)
(define-fun inv_Epoch__373 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1770 m s n1 n2))
)
(define-fun inv_Atom_331 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b932 
 (held m s (inv_Node__1011 m s n1 n2)) 
 (= (inv_Node__1012 m s n1 n2) (inv_Node__1013 m s n1 n2)))
)
(define-fun inv_Node__492 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2731 
 n1 
 n2)
)
(define-fun inv_Node__187 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b805 
 n1 
 n2)
)
(define-fun inv_Epoch__278 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__967 m s n1 n2))
)
(define-fun inv_Atom_187 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b874 
 (held m s (inv_Node__886 m s n1 n2)) 
 (= (inv_Node__887 m s n1 n2) (inv_Node__888 m s n1 n2)))
)
(define-fun inv_Node__846 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2341 
 n1 
 n2)
)
(define-fun inv_Node__1669 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1403 
 n1 
 n2)
)
(define-fun inv_Atom_11 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b528 
 (held m s (inv_Node__312 m s n1 n2)) 
 (ite inv_b529 
 (locked m s (inv_Epoch__330 m s n1 n2) (inv_Node__313 m s n1 n2)) 
 (ite inv_b530 
 (transfer m s (inv_Epoch__331 m s n1 n2) (inv_Node__314 m s n1 n2)) 
 (ite inv_b531 
 (le m (inv_Epoch__332 m s n1 n2) (inv_Epoch__333 m s n1 n2)) 
 (ite inv_b532 
 (= (inv_Node__315 m s n1 n2) (inv_Node__316 m s n1 n2)) 
 (ite inv_b533 
 (= (inv_Epoch__334 m s n1 n2) (inv_Epoch__335 m s n1 n2)) 
 (ite inv_b534 
 (and (inv_Atom_393 m s n1 n2) (inv_Atom_394 m s n1 n2)) 
 (ite inv_b535 
 (or (inv_Atom_395 m s n1 n2) (inv_Atom_396 m s n1 n2)) 
 (ite inv_b536 
 (=> (inv_Atom_397 m s n1 n2) (inv_Atom_398 m s n1 n2)) 
 (not (inv_Atom_399 m s n1 n2)))))))))))
)
(define-fun inv_Node__1225 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1698 
 n1 
 n2)
)
(define-fun inv_Node__1718 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2186 
 n1 
 n2)
)
(define-fun inv_Atom_76 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b743 
 (held m s (inv_Node__600 m s n1 n2)) 
 (= (inv_Node__601 m s n1 n2) (inv_Node__602 m s n1 n2)))
)
(define-fun inv_Atom_19 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b196 
 (held m s (inv_Node__112 m s n1 n2)) 
 (ite inv_b197 
 (locked m s (inv_Epoch__126 m s n1 n2) (inv_Node__113 m s n1 n2)) 
 (ite inv_b198 
 (transfer m s (inv_Epoch__127 m s n1 n2) (inv_Node__114 m s n1 n2)) 
 (ite inv_b199 
 (le m (inv_Epoch__128 m s n1 n2) (inv_Epoch__129 m s n1 n2)) 
 (ite inv_b200 
 (= (inv_Node__115 m s n1 n2) (inv_Node__116 m s n1 n2)) 
 (ite inv_b201 
 (= (inv_Epoch__130 m s n1 n2) (inv_Epoch__131 m s n1 n2)) 
 (ite inv_b202 
 (and (inv_Atom_155 m s n1 n2) (inv_Atom_156 m s n1 n2)) 
 (ite inv_b203 
 (or (inv_Atom_157 m s n1 n2) (inv_Atom_158 m s n1 n2)) 
 (ite inv_b204 
 (=> (inv_Atom_159 m s n1 n2) (inv_Atom_160 m s n1 n2)) 
 (not (inv_Atom_161 m s n1 n2)))))))))))
)
(define-fun inv_Atom_123 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b993 
 (held m s (inv_Node__1118 m s n1 n2)) 
 (= (inv_Node__1119 m s n1 n2) (inv_Node__1120 m s n1 n2)))
)
(define-fun inv_Node__412 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1875 
 n1 
 n2)
)
(define-fun inv_Atom_451 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b834 
 (held m s (inv_Node__815 m s n1 n2)) 
 (= (inv_Node__816 m s n1 n2) (inv_Node__817 m s n1 n2)))
)
(define-fun inv_Node__150 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1003 
 n1 
 n2)
)
(define-fun inv_Epoch__209 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1596 m s n1 n2))
)
(define-fun inv_Node__927 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2308 
 n1 
 n2)
)
(define-fun inv_Epoch__59 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__931 m s n1 n2))
)
(define-fun inv_Node__1660 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2183 
 n1 
 n2)
)
(define-fun inv_Node__788 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2668 
 n1 
 n2)
)
(define-fun inv_Atom_248 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1208 
 (held m s (inv_Node__1577 m s n1 n2)) 
 (= (inv_Node__1578 m s n1 n2) (inv_Node__1579 m s n1 n2)))
)
(define-fun inv_Node__1603 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1973 
 n1 
 n2)
)
(define-fun inv_Node__194 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1209 
 n1 
 n2)
)
(define-fun inv_Node__786 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2517 
 n1 
 n2)
)
(define-fun inv_Node__1765 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2785 
 n1 
 n2)
)
(define-fun inv_Node__138 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b878 
 n1 
 n2)
)
(define-fun inv_Epoch__106 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__671 m s n1 n2))
)
(define-fun inv_Node__72 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b886 
 n1 
 n2)
)
(define-fun inv_Epoch__26 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__186 m s n1 n2))
)
(define-fun inv_Epoch__88 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__696 m s n1 n2))
)
(define-fun inv_Atom_446 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b728 
 (held m s (inv_Node__562 m s n1 n2)) 
 (= (inv_Node__563 m s n1 n2) (inv_Node__564 m s n1 n2)))
)
(define-fun inv_Node__1764 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1375 
 n1 
 n2)
)
(define-fun inv_Epoch__345 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__434 m s n1 n2))
)
(define-fun inv_Node__407 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2773 
 n1 
 n2)
)
(define-fun inv_Atom_309 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1339 
 (held m s (inv_Node__1875 m s n1 n2)) 
 (= (inv_Node__1876 m s n1 n2) (inv_Node__1877 m s n1 n2)))
)
(define-fun inv_Atom_257 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1285 
 (held m s (inv_Node__1763 m s n1 n2)) 
 (= (inv_Node__1764 m s n1 n2) (inv_Node__1765 m s n1 n2)))
)
(define-fun inv_Node__248 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b732 
 n1 
 n2)
)
(define-fun inv_Node__147 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b758 
 n1 
 n2)
)
(define-fun inv_Node__242 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b919 
 n1 
 n2)
)
(define-fun inv_Atom_450 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1032 
 (held m s (inv_Node__1208 m s n1 n2)) 
 (= (inv_Node__1209 m s n1 n2) (inv_Node__1210 m s n1 n2)))
)
(define-fun inv_Node__1075 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2083 
 n1 
 n2)
)
(define-fun inv_Node__484 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1511 
 n1 
 n2)
)
(define-fun inv_Node__747 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2229 
 n1 
 n2)
)
(define-fun inv_Epoch__281 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__774 m s n1 n2))
)
(define-fun inv_Node__4 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b599 
 n1 
 n2)
)
(define-fun inv_Atom_346 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1243 
 (held m s (inv_Node__1660 m s n1 n2)) 
 (= (inv_Node__1661 m s n1 n2) (inv_Node__1662 m s n1 n2)))
)
(define-fun inv_Node__1178 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1928 
 n1 
 n2)
)
(define-fun inv_Node__21 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b419 
 n1 
 n2)
)
(define-fun inv_Node__748 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2825 
 n1 
 n2)
)
(define-fun inv_Node__1601 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2647 
 n1 
 n2)
)
(define-fun inv_Atom_59 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b549 
 (held m s (inv_Node__326 m s n1 n2)) 
 (ite inv_b550 
 (locked m s (inv_Epoch__342 m s n1 n2) (inv_Node__327 m s n1 n2)) 
 (ite inv_b551 
 (transfer m s (inv_Epoch__343 m s n1 n2) (inv_Node__328 m s n1 n2)) 
 (ite inv_b552 
 (le m (inv_Epoch__344 m s n1 n2) (inv_Epoch__345 m s n1 n2)) 
 (ite inv_b553 
 (= (inv_Node__329 m s n1 n2) (inv_Node__330 m s n1 n2)) 
 (ite inv_b554 
 (= (inv_Epoch__346 m s n1 n2) (inv_Epoch__347 m s n1 n2)) 
 (ite inv_b555 
 (and (inv_Atom_407 m s n1 n2) (inv_Atom_408 m s n1 n2)) 
 (ite inv_b556 
 (or (inv_Atom_409 m s n1 n2) (inv_Atom_410 m s n1 n2)) 
 (ite inv_b557 
 (=> (inv_Atom_411 m s n1 n2) (inv_Atom_412 m s n1 n2)) 
 (not (inv_Atom_413 m s n1 n2)))))))))))
)
(define-fun inv_Atom_254 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b941 
 (held m s (inv_Node__1030 m s n1 n2)) 
 (= (inv_Node__1031 m s n1 n2) (inv_Node__1032 m s n1 n2)))
)
(define-fun inv_Epoch__356 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__482 m s n1 n2))
)
(define-fun inv_Node__1221 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2314 
 n1 
 n2)
)
(define-fun inv_Node__323 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b831 
 n1 
 n2)
)
(define-fun inv_Node__20 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b299 
 n1 
 n2)
)
(define-fun inv_Node__23 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b341 
 n1 
 n2)
)
(define-fun inv_Epoch__167 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1160 m s n1 n2))
)
(define-fun inv_Epoch__92 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1353 m s n1 n2))
)
(define-fun inv_Atom_109 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1140 
 (held m s (inv_Node__1423 m s n1 n2)) 
 (= (inv_Node__1424 m s n1 n2) (inv_Node__1425 m s n1 n2)))
)
(define-fun inv_Atom_116 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b868 
 (held m s (inv_Node__871 m s n1 n2)) 
 (= (inv_Node__872 m s n1 n2) (inv_Node__873 m s n1 n2)))
)
(define-fun inv_Epoch__382 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1336 m s n1 n2))
)
(define-fun inv_Node__1489 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1842 
 n1 
 n2)
)
(define-fun inv_Epoch__375 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__379 m s n1 n2))
)
(define-fun inv_Node__1226 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1975 
 n1 
 n2)
)
(define-fun inv_Atom_38 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b142 
 (held m s (inv_Node__81 m s n1 n2)) 
 (ite inv_b143 
 (locked m s (inv_Epoch__90 m s n1 n2) (inv_Node__82 m s n1 n2)) 
 (ite inv_b144 
 (transfer m s (inv_Epoch__91 m s n1 n2) (inv_Node__83 m s n1 n2)) 
 (ite inv_b145 
 (le m (inv_Epoch__92 m s n1 n2) (inv_Epoch__93 m s n1 n2)) 
 (ite inv_b146 
 (= (inv_Node__84 m s n1 n2) (inv_Node__85 m s n1 n2)) 
 (ite inv_b147 
 (= (inv_Epoch__94 m s n1 n2) (inv_Epoch__95 m s n1 n2)) 
 (ite inv_b148 
 (and (inv_Atom_113 m s n1 n2) (inv_Atom_114 m s n1 n2)) 
 (ite inv_b149 
 (or (inv_Atom_115 m s n1 n2) (inv_Atom_116 m s n1 n2)) 
 (ite inv_b150 
 (=> (inv_Atom_117 m s n1 n2) (inv_Atom_118 m s n1 n2)) 
 (not (inv_Atom_119 m s n1 n2)))))))))))
)
(define-fun inv_Atom_60 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b251 
 (held m s (inv_Node__149 m s n1 n2)) 
 (ite inv_b252 
 (locked m s (inv_Epoch__162 m s n1 n2) (inv_Node__150 m s n1 n2)) 
 (ite inv_b253 
 (transfer m s (inv_Epoch__163 m s n1 n2) (inv_Node__151 m s n1 n2)) 
 (ite inv_b254 
 (le m (inv_Epoch__164 m s n1 n2) (inv_Epoch__165 m s n1 n2)) 
 (ite inv_b255 
 (= (inv_Node__152 m s n1 n2) (inv_Node__153 m s n1 n2)) 
 (ite inv_b256 
 (= (inv_Epoch__166 m s n1 n2) (inv_Epoch__167 m s n1 n2)) 
 (ite inv_b257 
 (and (inv_Atom_197 m s n1 n2) (inv_Atom_198 m s n1 n2)) 
 (ite inv_b258 
 (or (inv_Atom_199 m s n1 n2) (inv_Atom_200 m s n1 n2)) 
 (ite inv_b259 
 (=> (inv_Atom_201 m s n1 n2) (inv_Atom_202 m s n1 n2)) 
 (not (inv_Atom_203 m s n1 n2)))))))))))
)
(define-fun inv_Epoch__277 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__645 m s n1 n2))
)
(define-fun inv_Atom_404 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1021 
 (held m s (inv_Node__1179 m s n1 n2)) 
 (= (inv_Node__1180 m s n1 n2) (inv_Node__1181 m s n1 n2)))
)
(define-fun inv_Epoch__44 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__219 m s n1 n2))
)
(define-fun inv_Epoch__18 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__361 m s n1 n2))
)
(define-fun inv_Node__798 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1932 
 n1 
 n2)
)
(define-fun inv_Epoch__259 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1664 m s n1 n2))
)
(define-fun inv_Atom_315 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b769 
 (held m s (inv_Node__642 m s n1 n2)) 
 (= (inv_Node__643 m s n1 n2) (inv_Node__644 m s n1 n2)))
)
(define-fun inv_Node__66 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1151 
 n1 
 n2)
)
(define-fun inv_Atom_371 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b809 
 (held m s (inv_Node__747 m s n1 n2)) 
 (= (inv_Node__748 m s n1 n2) (inv_Node__749 m s n1 n2)))
)
(define-fun inv_Node__290 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b790 
 n1 
 n2)
)
(define-fun inv_Node__363 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b733 
 n1 
 n2)
)
(define-fun inv_Epoch__7 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__332 m s n1 n2))
)
(define-fun inv_Epoch__223 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__968 m s n1 n2))
)
(define-fun inv_Node__1818 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2838 
 n1 
 n2)
)
(define-fun inv_Epoch__262 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1337 m s n1 n2))
)
(define-fun inv_Atom_102 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1034 
 (held m s (inv_Node__1219 m s n1 n2)) 
 (= (inv_Node__1220 m s n1 n2) (inv_Node__1221 m s n1 n2)))
)
(define-fun inv_Atom_445 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1123 
 (held m s (inv_Node__1385 m s n1 n2)) 
 (= (inv_Node__1386 m s n1 n2) (inv_Node__1387 m s n1 n2)))
)
(define-fun inv_Node__15 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b609 
 n1 
 n2)
)
(define-fun inv_Node__1394 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2342 
 n1 
 n2)
)
(define-fun inv_Node__80 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b721 
 n1 
 n2)
)
(define-fun inv_Node__245 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b920 
 n1 
 n2)
)
(define-fun inv_Atom_405 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b731 
 (held m s (inv_Node__569 m s n1 n2)) 
 (= (inv_Node__570 m s n1 n2) (inv_Node__571 m s n1 n2)))
)
(define-fun inv_Node__1534 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1539 
 n1 
 n2)
)
(define-fun inv_Node__1820 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1438 
 n1 
 n2)
)
(define-fun inv_Atom_365 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b808 
 (held m s (inv_Node__744 m s n1 n2)) 
 (= (inv_Node__745 m s n1 n2) (inv_Node__746 m s n1 n2)))
)
(define-fun inv_Node__3 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b569 
 n1 
 n2)
)
(define-fun inv_Node__275 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1052 
 n1 
 n2)
)
(define-fun inv_Epoch__77 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1606 m s n1 n2))
)
(define-fun inv_Node__19 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b409 
 n1 
 n2)
)
(define-fun inv_Node__823 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2452 
 n1 
 n2)
)
(define-fun inv_Node__1866 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2119 
 n1 
 n2)
)
(define-fun inv_Atom_402 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1258 
 (held m s (inv_Node__1697 m s n1 n2)) 
 (= (inv_Node__1698 m s n1 n2) (inv_Node__1699 m s n1 n2)))
)
(define-fun inv_Node__136 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1225 
 n1 
 n2)
)
(define-fun inv_Epoch__208 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1148 m s n1 n2))
)
(define-fun inv_Epoch__305 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1754 m s n1 n2))
)
(define-fun inv_Node__285 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b754 
 n1 
 n2)
)
(define-fun inv_Atom_421 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b639 
 (held m s (inv_Node__412 m s n1 n2)) 
 (= (inv_Node__413 m s n1 n2) (inv_Node__414 m s n1 n2)))
)
(define-fun inv_Epoch__22 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__191 m s n1 n2))
)
(define-fun inv_Node__9 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b430 
 n1 
 n2)
)
(define-fun inv_Node__1819 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2405 
 n1 
 n2)
)
(define-fun inv_Node__195 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1018 
 n1 
 n2)
)
(define-fun inv_Atom_17 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b600 
 (held m s (inv_Node__356 m s n1 n2)) 
 (ite inv_b601 
 (locked m s (inv_Epoch__372 m s n1 n2) (inv_Node__357 m s n1 n2)) 
 (ite inv_b602 
 (transfer m s (inv_Epoch__373 m s n1 n2) (inv_Node__358 m s n1 n2)) 
 (ite inv_b603 
 (le m (inv_Epoch__374 m s n1 n2) (inv_Epoch__375 m s n1 n2)) 
 (ite inv_b604 
 (= (inv_Node__359 m s n1 n2) (inv_Node__360 m s n1 n2)) 
 (ite inv_b605 
 (= (inv_Epoch__376 m s n1 n2) (inv_Epoch__377 m s n1 n2)) 
 (ite inv_b606 
 (and (inv_Atom_442 m s n1 n2) (inv_Atom_443 m s n1 n2)) 
 (ite inv_b607 
 (or (inv_Atom_444 m s n1 n2) (inv_Atom_445 m s n1 n2)) 
 (ite inv_b608 
 (=> (inv_Atom_446 m s n1 n2) (inv_Atom_447 m s n1 n2)) 
 (not (inv_Atom_448 m s n1 n2)))))))))))
)
(define-fun inv_Node__796 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1553 
 n1 
 n2)
)
(define-fun inv_Node__1499 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1400 
 n1 
 n2)
)
(define-fun inv_Node__981 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2594 
 n1 
 n2)
)
(define-fun inv_Atom_61 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b441 
 (held m s (inv_Node__261 m s n1 n2)) 
 (ite inv_b442 
 (locked m s (inv_Epoch__276 m s n1 n2) (inv_Node__262 m s n1 n2)) 
 (ite inv_b443 
 (transfer m s (inv_Epoch__277 m s n1 n2) (inv_Node__263 m s n1 n2)) 
 (ite inv_b444 
 (le m (inv_Epoch__278 m s n1 n2) (inv_Epoch__279 m s n1 n2)) 
 (ite inv_b445 
 (= (inv_Node__264 m s n1 n2) (inv_Node__265 m s n1 n2)) 
 (ite inv_b446 
 (= (inv_Epoch__280 m s n1 n2) (inv_Epoch__281 m s n1 n2)) 
 (ite inv_b447 
 (and (inv_Atom_330 m s n1 n2) (inv_Atom_331 m s n1 n2)) 
 (ite inv_b448 
 (or (inv_Atom_332 m s n1 n2) (inv_Atom_333 m s n1 n2)) 
 (ite inv_b449 
 (=> (inv_Atom_334 m s n1 n2) (inv_Atom_335 m s n1 n2)) 
 (not (inv_Atom_336 m s n1 n2)))))))))))
)
(define-fun inv_Node__594 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2675 
 n1 
 n2)
)
(define-fun inv_Atom_253 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b892 
 (held m s (inv_Node__925 m s n1 n2)) 
 (= (inv_Node__926 m s n1 n2) (inv_Node__927 m s n1 n2)))
)
(define-fun inv_Node__271 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b893 
 n1 
 n2)
)
(define-fun inv_Epoch__307 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1161 m s n1 n2))
)
(define-fun inv_Atom_40 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b332 
 (held m s (inv_Node__198 m s n1 n2)) 
 (ite inv_b333 
 (locked m s (inv_Epoch__210 m s n1 n2) (inv_Node__199 m s n1 n2)) 
 (ite inv_b334 
 (transfer m s (inv_Epoch__211 m s n1 n2) (inv_Node__200 m s n1 n2)) 
 (ite inv_b335 
 (le m (inv_Epoch__212 m s n1 n2) (inv_Epoch__213 m s n1 n2)) 
 (ite inv_b336 
 (= (inv_Node__201 m s n1 n2) (inv_Node__202 m s n1 n2)) 
 (ite inv_b337 
 (= (inv_Epoch__214 m s n1 n2) (inv_Epoch__215 m s n1 n2)) 
 (ite inv_b338 
 (and (inv_Atom_253 m s n1 n2) (inv_Atom_254 m s n1 n2)) 
 (ite inv_b339 
 (or (inv_Atom_255 m s n1 n2) (inv_Atom_256 m s n1 n2)) 
 (ite inv_b340 
 (=> (inv_Atom_257 m s n1 n2) (inv_Atom_258 m s n1 n2)) 
 (not (inv_Atom_259 m s n1 n2)))))))))))
)
(define-fun inv_Epoch__207 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__492 m s n1 n2))
)
(define-fun inv_Epoch__103 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__930 m s n1 n2))
)
(define-fun inv_Node__1346 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1532 
 n1 
 n2)
)
(define-fun inv_Atom_349 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1020 
 (held m s (inv_Node__1176 m s n1 n2)) 
 (= (inv_Node__1177 m s n1 n2) (inv_Node__1178 m s n1 n2)))
)
(define-fun inv_Atom_98 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1040 
 (held m s (inv_Node__1234 m s n1 n2)) 
 (= (inv_Node__1235 m s n1 n2) (inv_Node__1236 m s n1 n2)))
)
(define-fun inv_Node__910 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2521 
 n1 
 n2)
)
(define-fun inv_Node__22 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b420 
 n1 
 n2)
)
(define-fun inv_Node__210 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b951 
 n1 
 n2)
)
(define-fun inv_Epoch__204 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1843 m s n1 n2))
)
(define-fun inv_Node__1 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b619 
 n1 
 n2)
)
(define-fun inv_Atom_20 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b133 
 (held m s (inv_Node__76 m s n1 n2)) 
 (ite inv_b134 
 (locked m s (inv_Epoch__84 m s n1 n2) (inv_Node__77 m s n1 n2)) 
 (ite inv_b135 
 (transfer m s (inv_Epoch__85 m s n1 n2) (inv_Node__78 m s n1 n2)) 
 (ite inv_b136 
 (le m (inv_Epoch__86 m s n1 n2) (inv_Epoch__87 m s n1 n2)) 
 (ite inv_b137 
 (= (inv_Node__79 m s n1 n2) (inv_Node__80 m s n1 n2)) 
 (ite inv_b138 
 (= (inv_Epoch__88 m s n1 n2) (inv_Epoch__89 m s n1 n2)) 
 (ite inv_b139 
 (and (inv_Atom_106 m s n1 n2) (inv_Atom_107 m s n1 n2)) 
 (ite inv_b140 
 (or (inv_Atom_108 m s n1 n2) (inv_Atom_109 m s n1 n2)) 
 (ite inv_b141 
 (=> (inv_Atom_110 m s n1 n2) (inv_Atom_111 m s n1 n2)) 
 (not (inv_Atom_112 m s n1 n2)))))))))))
)
(define-fun inv_Node__1602 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2435 
 n1 
 n2)
)
(define-fun inv_Node__840 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2118 
 n1 
 n2)
)
(define-fun inv_Node__1523 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2172 
 n1 
 n2)
)
(define-fun inv_Epoch__74 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1702 m s n1 n2))
)
(define-fun inv_Node__621 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2807 
 n1 
 n2)
)
(define-fun inv_Atom_6 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b31 
 (held m s (inv_Node__15 m s n1 n2)) 
 (ite inv_b32 
 (locked m s (inv_Epoch__18 m s n1 n2) (inv_Node__16 m s n1 n2)) 
 (ite inv_b33 
 (transfer m s (inv_Epoch__19 m s n1 n2) (inv_Node__17 m s n1 n2)) 
 (ite inv_b34 
 (le m (inv_Epoch__20 m s n1 n2) (inv_Epoch__21 m s n1 n2)) 
 (ite inv_b35 
 (= (inv_Node__18 m s n1 n2) (inv_Node__19 m s n1 n2)) 
 (ite inv_b36 
 (= (inv_Epoch__22 m s n1 n2) (inv_Epoch__23 m s n1 n2)) 
 (ite inv_b37 
 (and (inv_Atom_29 m s n1 n2) (inv_Atom_30 m s n1 n2)) 
 (ite inv_b38 
 (or (inv_Atom_31 m s n1 n2) (inv_Atom_32 m s n1 n2)) 
 (ite inv_b39 
 (=> (inv_Atom_33 m s n1 n2) (inv_Atom_34 m s n1 n2)) 
 (not (inv_Atom_35 m s n1 n2)))))))))))
)
(define-fun inv_Node__342 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1149 
 n1 
 n2)
)
(define-fun inv_Epoch__355 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__999 m s n1 n2))
)
(define-fun inv_Node__6 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b300 
 n1 
 n2)
)
(define-fun inv_Node__244 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1092 
 n1 
 n2)
)
(define-fun inv_Node__1535 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2262 
 n1 
 n2)
)
(define-fun inv_Node__298 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1246 
 n1 
 n2)
)
(define-fun inv_Node__5 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b321 
 n1 
 n2)
)
(define-fun inv_Atom_272 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b978 
 (held m s (inv_Node__1095 m s n1 n2)) 
 (= (inv_Node__1096 m s n1 n2) (inv_Node__1097 m s n1 n2)))
)
(define-fun inv_Node__212 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1309 
 n1 
 n2)
)
(define-fun inv_Node__188 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1259 
 n1 
 n2)
)
(define-fun inv_Atom_50 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b85 
 (held m s (inv_Node__48 m s n1 n2)) 
 (ite inv_b86 
 (locked m s (inv_Epoch__54 m s n1 n2) (inv_Node__49 m s n1 n2)) 
 (ite inv_b87 
 (transfer m s (inv_Epoch__55 m s n1 n2) (inv_Node__50 m s n1 n2)) 
 (ite inv_b88 
 (le m (inv_Epoch__56 m s n1 n2) (inv_Epoch__57 m s n1 n2)) 
 (ite inv_b89 
 (= (inv_Node__51 m s n1 n2) (inv_Node__52 m s n1 n2)) 
 (ite inv_b90 
 (= (inv_Epoch__58 m s n1 n2) (inv_Epoch__59 m s n1 n2)) 
 (ite inv_b91 
 (and (inv_Atom_71 m s n1 n2) (inv_Atom_72 m s n1 n2)) 
 (ite inv_b92 
 (or (inv_Atom_73 m s n1 n2) (inv_Atom_74 m s n1 n2)) 
 (ite inv_b93 
 (=> (inv_Atom_75 m s n1 n2) (inv_Atom_76 m s n1 n2)) 
 (not (inv_Atom_77 m s n1 n2)))))))))))
)
(define-fun inv_Node__24 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b440 
 n1 
 n2)
)
(define-fun inv_Node__1750 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2141 
 n1 
 n2)
)
(define-fun inv_Epoch__261 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__972 m s n1 n2))
)
(define-fun inv_Atom_312 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1037 
 (held m s (inv_Node__1225 m s n1 n2)) 
 (= (inv_Node__1226 m s n1 n2) (inv_Node__1227 m s n1 n2)))
)
(define-fun inv_Epoch__98 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__846 m s n1 n2))
)
(define-fun inv_Epoch__224 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1603 m s n1 n2))
)
(define-fun inv_Atom_120 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b953 
 (held m s (inv_Node__1056 m s n1 n2)) 
 (= (inv_Node__1057 m s n1 n2) (inv_Node__1058 m s n1 n2)))
)
(define-fun inv_Epoch__311 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1285 m s n1 n2))
)
(define-fun inv_Node__189 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b810 
 n1 
 n2)
)
(define-fun inv_Node__284 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b885 
 n1 
 n2)
)
(define-fun inv_Node__209 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1041 
 n1 
 n2)
)
(define-fun inv_Node__1733 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2278 
 n1 
 n2)
)
(define-fun inv_Node__71 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1001 
 n1 
 n2)
)
(define-fun inv_Node__1501 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1908 
 n1 
 n2)
)
(define-fun inv_Node__1536 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2097 
 n1 
 n2)
)
(define-fun inv_Epoch__154 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1489 m s n1 n2))
)
(define-fun inv_Atom_185 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b980 
 (held m s (inv_Node__1102 m s n1 n2)) 
 (= (inv_Node__1103 m s n1 n2) (inv_Node__1104 m s n1 n2)))
)
(define-fun inv_Node__1271 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2793 
 n1 
 n2)
)
(define-fun inv_Atom_2 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b58 
 (held m s (inv_Node__30 m s n1 n2)) 
 (ite inv_b59 
 (locked m s (inv_Epoch__36 m s n1 n2) (inv_Node__31 m s n1 n2)) 
 (ite inv_b60 
 (transfer m s (inv_Epoch__37 m s n1 n2) (inv_Node__32 m s n1 n2)) 
 (ite inv_b61 
 (le m (inv_Epoch__38 m s n1 n2) (inv_Epoch__39 m s n1 n2)) 
 (ite inv_b62 
 (= (inv_Node__33 m s n1 n2) (inv_Node__34 m s n1 n2)) 
 (ite inv_b63 
 (= (inv_Epoch__40 m s n1 n2) (inv_Epoch__41 m s n1 n2)) 
 (ite inv_b64 
 (and (inv_Atom_50 m s n1 n2) (inv_Atom_51 m s n1 n2)) 
 (ite inv_b65 
 (or (inv_Atom_52 m s n1 n2) (inv_Atom_53 m s n1 n2)) 
 (ite inv_b66 
 (=> (inv_Atom_54 m s n1 n2) (inv_Atom_55 m s n1 n2)) 
 (not (inv_Atom_56 m s n1 n2)))))))))))
)
(define-fun inv_Epoch__81 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1485 m s n1 n2))
)
(define-fun inv_Node__92 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b864 
 n1 
 n2)
)
(define-fun inv_Atom_311 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1141 
 (held m s (inv_Node__1426 m s n1 n2)) 
 (= (inv_Node__1427 m s n1 n2) (inv_Node__1428 m s n1 n2)))
)
(define-fun inv_Atom_105 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b827 
 (held m s (inv_Node__796 m s n1 n2)) 
 (= (inv_Node__797 m s n1 n2) (inv_Node__798 m s n1 n2)))
)
(define-fun inv_Epoch__83 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__825 m s n1 n2))
)
(define-fun inv_Atom_10 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b539 
 (held m s (inv_Node__319 m s n1 n2)) 
 (ite inv_b540 
 (locked m s (inv_Epoch__336 m s n1 n2) (inv_Node__320 m s n1 n2)) 
 (ite inv_b541 
 (transfer m s (inv_Epoch__337 m s n1 n2) (inv_Node__321 m s n1 n2)) 
 (ite inv_b542 
 (le m (inv_Epoch__338 m s n1 n2) (inv_Epoch__339 m s n1 n2)) 
 (ite inv_b543 
 (= (inv_Node__322 m s n1 n2) (inv_Node__323 m s n1 n2)) 
 (ite inv_b544 
 (= (inv_Epoch__340 m s n1 n2) (inv_Epoch__341 m s n1 n2)) 
 (ite inv_b545 
 (and (inv_Atom_400 m s n1 n2) (inv_Atom_401 m s n1 n2)) 
 (ite inv_b546 
 (or (inv_Atom_402 m s n1 n2) (inv_Atom_403 m s n1 n2)) 
 (ite inv_b547 
 (=> (inv_Atom_404 m s n1 n2) (inv_Atom_405 m s n1 n2)) 
 (not (inv_Atom_406 m s n1 n2)))))))))))
)
(define-fun inv_Node__137 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b891 
 n1 
 n2)
)
(define-fun inv_Node__68 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1126 
 n1 
 n2)
)
(define-fun inv_Node__535 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2465 
 n1 
 n2)
)
(define-fun inv_Node__679 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2539 
 n1 
 n2)
)
(define-fun inv_Atom_184 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1188 
 (held m s (inv_Node__1534 m s n1 n2)) 
 (= (inv_Node__1535 m s n1 n2) (inv_Node__1536 m s n1 n2)))
)
(define-fun inv_Atom_122 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b753 
 (held m s (inv_Node__621 m s n1 n2)) 
 (= (inv_Node__622 m s n1 n2) (inv_Node__623 m s n1 n2)))
)
(define-fun inv_Atom_49 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b486 
 (held m s (inv_Node__289 m s n1 n2)) 
 (ite inv_b487 
 (locked m s (inv_Epoch__306 m s n1 n2) (inv_Node__290 m s n1 n2)) 
 (ite inv_b488 
 (transfer m s (inv_Epoch__307 m s n1 n2) (inv_Node__291 m s n1 n2)) 
 (ite inv_b489 
 (le m (inv_Epoch__308 m s n1 n2) (inv_Epoch__309 m s n1 n2)) 
 (ite inv_b490 
 (= (inv_Node__292 m s n1 n2) (inv_Node__293 m s n1 n2)) 
 (ite inv_b491 
 (= (inv_Epoch__310 m s n1 n2) (inv_Epoch__311 m s n1 n2)) 
 (ite inv_b492 
 (and (inv_Atom_365 m s n1 n2) (inv_Atom_366 m s n1 n2)) 
 (ite inv_b493 
 (or (inv_Atom_367 m s n1 n2) (inv_Atom_368 m s n1 n2)) 
 (ite inv_b494 
 (=> (inv_Atom_369 m s n1 n2) (inv_Atom_370 m s n1 n2)) 
 (not (inv_Atom_371 m s n1 n2)))))))))))
)
(define-fun inv_Epoch__30 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__339 m s n1 n2))
)
(define-fun inv_Epoch__82 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__910 m s n1 n2))
)
(define-fun inv_Epoch__27 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__187 m s n1 n2))
)
(define-fun inv_Atom_271 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1278 
 (held m s (inv_Node__1748 m s n1 n2)) 
 (= (inv_Node__1749 m s n1 n2) (inv_Node__1750 m s n1 n2)))
)
(define-fun inv_Atom_63 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b354 
 (held m s (inv_Node__209 m s n1 n2)) 
 (ite inv_b355 
 (locked m s (inv_Epoch__222 m s n1 n2) (inv_Node__210 m s n1 n2)) 
 (ite inv_b356 
 (transfer m s (inv_Epoch__223 m s n1 n2) (inv_Node__211 m s n1 n2)) 
 (ite inv_b357 
 (le m (inv_Epoch__224 m s n1 n2) (inv_Epoch__225 m s n1 n2)) 
 (ite inv_b358 
 (= (inv_Node__212 m s n1 n2) (inv_Node__213 m s n1 n2)) 
 (ite inv_b359 
 (= (inv_Epoch__226 m s n1 n2) (inv_Epoch__227 m s n1 n2)) 
 (ite inv_b360 
 (and (inv_Atom_267 m s n1 n2) (inv_Atom_268 m s n1 n2)) 
 (ite inv_b361 
 (or (inv_Atom_269 m s n1 n2) (inv_Atom_270 m s n1 n2)) 
 (ite inv_b362 
 (=> (inv_Atom_271 m s n1 n2) (inv_Atom_272 m s n1 n2)) 
 (not (inv_Atom_273 m s n1 n2)))))))))))
)
(define-fun inv_Epoch__34 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__188 m s n1 n2))
)
(define-fun inv_Atom_310 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1328 
 (held m s (inv_Node__1844 m s n1 n2)) 
 (= (inv_Node__1845 m s n1 n2) (inv_Node__1846 m s n1 n2)))
)
(define-fun inv_Node__26 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b279 
 n1 
 n2)
)
(define-fun inv_Epoch__33 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__271 m s n1 n2))
)
(define-fun inv_Epoch__72 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1351 m s n1 n2))
)
(define-fun inv_Node__25 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b495 
 n1 
 n2)
)
(define-fun inv_Node__93 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1036 
 n1 
 n2)
)
(define-fun inv_Node__1172 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2489 
 n1 
 n2)
)
(define-fun inv_Node__982 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1679 
 n1 
 n2)
)
(define-fun inv_Epoch__29 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__189 m s n1 n2))
)
(define-fun inv_Atom_9 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b610 
 (held m s (inv_Node__363 m s n1 n2)) 
 (ite inv_b611 
 (locked m s (inv_Epoch__378 m s n1 n2) (inv_Node__364 m s n1 n2)) 
 (ite inv_b612 
 (transfer m s (inv_Epoch__379 m s n1 n2) (inv_Node__365 m s n1 n2)) 
 (ite inv_b613 
 (le m (inv_Epoch__380 m s n1 n2) (inv_Epoch__381 m s n1 n2)) 
 (ite inv_b614 
 (= (inv_Node__366 m s n1 n2) (inv_Node__367 m s n1 n2)) 
 (ite inv_b615 
 (= (inv_Epoch__382 m s n1 n2) (inv_Epoch__383 m s n1 n2)) 
 (ite inv_b616 
 (and (inv_Atom_449 m s n1 n2) (inv_Atom_450 m s n1 n2)) 
 (ite inv_b617 
 (or (inv_Atom_451 m s n1 n2) (inv_Atom_452 m s n1 n2)) 
 (ite inv_b618 
 (=> (inv_Atom_453 m s n1 n2) (inv_Atom_454 m s n1 n2)) 
 (not (inv_Atom_455 m s n1 n2)))))))))))
)
(define-fun inv_Epoch__24 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__180 m s n1 n2))
)
(define-fun inv_Epoch__47 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__248 m s n1 n2))
)
(define-fun inv_Atom_126 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1336 
 (held m s (inv_Node__1866 m s n1 n2)) 
 (= (inv_Node__1867 m s n1 n2) (inv_Node__1868 m s n1 n2)))
)
(define-fun inv_Atom_39 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b232 
 (held m s (inv_Node__136 m s n1 n2)) 
 (ite inv_b233 
 (locked m s (inv_Epoch__150 m s n1 n2) (inv_Node__137 m s n1 n2)) 
 (ite inv_b234 
 (transfer m s (inv_Epoch__151 m s n1 n2) (inv_Node__138 m s n1 n2)) 
 (ite inv_b235 
 (le m (inv_Epoch__152 m s n1 n2) (inv_Epoch__153 m s n1 n2)) 
 (ite inv_b236 
 (= (inv_Node__139 m s n1 n2) (inv_Node__140 m s n1 n2)) 
 (ite inv_b237 
 (= (inv_Epoch__154 m s n1 n2) (inv_Epoch__155 m s n1 n2)) 
 (ite inv_b238 
 (and (inv_Atom_183 m s n1 n2) (inv_Atom_184 m s n1 n2)) 
 (ite inv_b239 
 (or (inv_Atom_185 m s n1 n2) (inv_Atom_186 m s n1 n2)) 
 (ite inv_b240 
 (=> (inv_Atom_187 m s n1 n2) (inv_Atom_188 m s n1 n2)) 
 (not (inv_Atom_189 m s n1 n2)))))))))))
)
(define-fun inv_Epoch__290 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__840 m s n1 n2))
)
(define-fun inv_Node__593 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1834 
 n1 
 n2)
)
(define-fun inv_Atom_424 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b861 
 (held m s (inv_Node__866 m s n1 n2)) 
 (= (inv_Node__867 m s n1 n2) (inv_Node__868 m s n1 n2)))
)
(define-fun inv_Epoch__263 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1669 m s n1 n2))
)
(define-fun inv_Node__980 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2247 
 n1 
 n2)
)
(define-fun inv_Node__1194 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1562 
 n1 
 n2)
)
(define-fun inv_Atom_358 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1267 
 (held m s (inv_Node__1717 m s n1 n2)) 
 (= (inv_Node__1718 m s n1 n2) (inv_Node__1719 m s n1 n2)))
)
(define-fun inv_Atom_18 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b323 
 (held m s (inv_Node__192 m s n1 n2)) 
 (ite inv_b324 
 (locked m s (inv_Epoch__204 m s n1 n2) (inv_Node__193 m s n1 n2)) 
 (ite inv_b325 
 (transfer m s (inv_Epoch__205 m s n1 n2) (inv_Node__194 m s n1 n2)) 
 (ite inv_b326 
 (le m (inv_Epoch__206 m s n1 n2) (inv_Epoch__207 m s n1 n2)) 
 (ite inv_b327 
 (= (inv_Node__195 m s n1 n2) (inv_Node__196 m s n1 n2)) 
 (ite inv_b328 
 (= (inv_Epoch__208 m s n1 n2) (inv_Epoch__209 m s n1 n2)) 
 (ite inv_b329 
 (and (inv_Atom_246 m s n1 n2) (inv_Atom_247 m s n1 n2)) 
 (ite inv_b330 
 (or (inv_Atom_248 m s n1 n2) (inv_Atom_249 m s n1 n2)) 
 (ite inv_b331 
 (=> (inv_Atom_250 m s n1 n2) (inv_Atom_251 m s n1 n2)) 
 (not (inv_Atom_252 m s n1 n2)))))))))))
)
(define-fun inv_Node__1522 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1402 
 n1 
 n2)
)
(define-fun inv_Atom_376 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b636 
 (held m s (inv_Node__405 m s n1 n2)) 
 (= (inv_Node__406 m s n1 n2) (inv_Node__407 m s n1 n2)))
)
(define-fun inv_Epoch__302 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__952 m s n1 n2))
)
(define-fun inv_Atom_350 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1176 
 (held m s (inv_Node__1499 m s n1 n2)) 
 (= (inv_Node__1500 m s n1 n2) (inv_Node__1501 m s n1 n2)))
)
(define-fun inv_Node__889 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1442 
 n1 
 n2)
)
(define-fun inv_Epoch__357 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1271 m s n1 n2))
)
(define-fun inv_Atom_344 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1272 
 (held m s (inv_Node__1731 m s n1 n2)) 
 (= (inv_Node__1732 m s n1 n2) (inv_Node__1733 m s n1 n2)))
)
(define-fun inv_Atom_95 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b783 
 (held m s (inv_Node__679 m s n1 n2)) 
 (= (inv_Node__680 m s n1 n2) (inv_Node__681 m s n1 n2)))
)
(define-fun inv_Atom_131 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b918 
 (held m s (inv_Node__980 m s n1 n2)) 
 (= (inv_Node__981 m s n1 n2) (inv_Node__982 m s n1 n2)))
)
(define-fun inv_Node__595 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1926 
 n1 
 n2)
)
(define-fun inv_Node__276 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b812 
 n1 
 n2)
)
(define-fun inv_Node__1277 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2634 
 n1 
 n2)
)
(define-fun inv_Atom_93 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b684 
 (held m s (inv_Node__483 m s n1 n2)) 
 (= (inv_Node__484 m s n1 n2) (inv_Node__485 m s n1 n2)))
)
(define-fun inv_Epoch__292 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1335 m s n1 n2))
)
(define-fun inv_Epoch__35 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__147 m s n1 n2))
)
(define-fun inv_Atom_372 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b742 
 (held m s (inv_Node__593 m s n1 n2)) 
 (= (inv_Node__594 m s n1 n2) (inv_Node__595 m s n1 n2)))
)
(define-fun inv_Atom_15 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b477 
 (held m s (inv_Node__284 m s n1 n2)) 
 (ite inv_b478 
 (locked m s (inv_Epoch__300 m s n1 n2) (inv_Node__285 m s n1 n2)) 
 (ite inv_b479 
 (transfer m s (inv_Epoch__301 m s n1 n2) (inv_Node__286 m s n1 n2)) 
 (ite inv_b480 
 (le m (inv_Epoch__302 m s n1 n2) (inv_Epoch__303 m s n1 n2)) 
 (ite inv_b481 
 (= (inv_Node__287 m s n1 n2) (inv_Node__288 m s n1 n2)) 
 (ite inv_b482 
 (= (inv_Epoch__304 m s n1 n2) (inv_Epoch__305 m s n1 n2)) 
 (ite inv_b483 
 (and (inv_Atom_358 m s n1 n2) (inv_Atom_359 m s n1 n2)) 
 (ite inv_b484 
 (or (inv_Atom_360 m s n1 n2) (inv_Atom_361 m s n1 n2)) 
 (ite inv_b485 
 (=> (inv_Atom_362 m s n1 n2) (inv_Atom_363 m s n1 n2)) 
 (not (inv_Atom_364 m s n1 n2)))))))))))
)
(define-fun inv_Atom_125 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b824 
 (held m s (inv_Node__786 m s n1 n2)) 
 (= (inv_Node__787 m s n1 n2) (inv_Node__788 m s n1 n2)))
)
(define-fun inv_Node__274 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1219 
 n1 
 n2)
)
(define-fun inv_Atom_7 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b4 
 (held m s (inv_Node__0 m s n1 n2)) 
 (ite inv_b5 
 (locked m s (inv_Epoch__0 m s n1 n2) (inv_Node__1 m s n1 n2)) 
 (ite inv_b6 
 (transfer m s (inv_Epoch__1 m s n1 n2) (inv_Node__2 m s n1 n2)) 
 (ite inv_b7 
 (le m (inv_Epoch__2 m s n1 n2) (inv_Epoch__3 m s n1 n2)) 
 (ite inv_b8 
 (= (inv_Node__3 m s n1 n2) (inv_Node__4 m s n1 n2)) 
 (ite inv_b9 
 (= (inv_Epoch__4 m s n1 n2) (inv_Epoch__5 m s n1 n2)) 
 (ite inv_b10 
 (and (inv_Atom_8 m s n1 n2) (inv_Atom_9 m s n1 n2)) 
 (ite inv_b11 
 (or (inv_Atom_10 m s n1 n2) (inv_Atom_11 m s n1 n2)) 
 (ite inv_b12 
 (=> (inv_Atom_12 m s n1 n2) (inv_Atom_13 m s n1 n2)) 
 (not (inv_Atom_14 m s n1 n2)))))))))))
)
(define-fun inv_Atom_41 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b410 
 (held m s (inv_Node__242 m s n1 n2)) 
 (ite inv_b411 
 (locked m s (inv_Epoch__258 m s n1 n2) (inv_Node__243 m s n1 n2)) 
 (ite inv_b412 
 (transfer m s (inv_Epoch__259 m s n1 n2) (inv_Node__244 m s n1 n2)) 
 (ite inv_b413 
 (le m (inv_Epoch__260 m s n1 n2) (inv_Epoch__261 m s n1 n2)) 
 (ite inv_b414 
 (= (inv_Node__245 m s n1 n2) (inv_Node__246 m s n1 n2)) 
 (ite inv_b415 
 (= (inv_Epoch__262 m s n1 n2) (inv_Epoch__263 m s n1 n2)) 
 (ite inv_b416 
 (and (inv_Atom_309 m s n1 n2) (inv_Atom_310 m s n1 n2)) 
 (ite inv_b417 
 (or (inv_Atom_311 m s n1 n2) (inv_Atom_312 m s n1 n2)) 
 (ite inv_b418 
 (=> (inv_Atom_313 m s n1 n2) (inv_Atom_314 m s n1 n2)) 
 (not (inv_Atom_315 m s n1 n2)))))))))))
)
(define-fun inv_Epoch__31 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__325 m s n1 n2))
)
(define-fun inv_Node__296 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1061 
 n1 
 n2)
)
(define-fun inv_Node__1395 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1487 
 n1 
 n2)
)
(define-fun inv_Atom_422 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1129 
 (held m s (inv_Node__1394 m s n1 n2)) 
 (= (inv_Node__1395 m s n1 n2) (inv_Node__1396 m s n1 n2)))
)
(define-fun inv_Epoch__359 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1126 m s n1 n2))
)
(define-fun inv_Node__1526 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1622 
 n1 
 n2)
)
(define-fun inv_Atom_3 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b40 
 (held m s (inv_Node__20 m s n1 n2)) 
 (ite inv_b41 
 (locked m s (inv_Epoch__24 m s n1 n2) (inv_Node__21 m s n1 n2)) 
 (ite inv_b42 
 (transfer m s (inv_Epoch__25 m s n1 n2) (inv_Node__22 m s n1 n2)) 
 (ite inv_b43 
 (le m (inv_Epoch__26 m s n1 n2) (inv_Epoch__27 m s n1 n2)) 
 (ite inv_b44 
 (= (inv_Node__23 m s n1 n2) (inv_Node__24 m s n1 n2)) 
 (ite inv_b45 
 (= (inv_Epoch__28 m s n1 n2) (inv_Epoch__29 m s n1 n2)) 
 (ite inv_b46 
 (and (inv_Atom_36 m s n1 n2) (inv_Atom_37 m s n1 n2)) 
 (ite inv_b47 
 (or (inv_Atom_38 m s n1 n2) (inv_Atom_39 m s n1 n2)) 
 (ite inv_b48 
 (=> (inv_Atom_40 m s n1 n2) (inv_Atom_41 m s n1 n2)) 
 (not (inv_Atom_42 m s n1 n2)))))))))))
)
(define-fun inv_Epoch__42 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__255 m s n1 n2))
)
(define-fun inv_Atom_92 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1181 
 (held m s (inv_Node__1509 m s n1 n2)) 
 (= (inv_Node__1510 m s n1 n2) (inv_Node__1511 m s n1 n2)))
)
(define-fun inv_Node__86 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1028 
 n1 
 n2)
)
(define-fun inv_Node__1621 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2420 
 n1 
 n2)
)
(define-fun inv_Atom_427 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1063 
 (held m s (inv_Node__1276 m s n1 n2)) 
 (= (inv_Node__1277 m s n1 n2) (inv_Node__1278 m s n1 n2)))
)
(define-fun inv_Epoch__100 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__889 m s n1 n2))
)
(define-fun inv_Atom_130 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1101 
 (held m s (inv_Node__1345 m s n1 n2)) 
 (= (inv_Node__1346 m s n1 n2) (inv_Node__1347 m s n1 n2)))
)
(define-fun inv_Epoch__80 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__948 m s n1 n2))
)
(define-fun inv_Atom_0 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b13 
 (held m s (inv_Node__5 m s n1 n2)) 
 (ite inv_b14 
 (locked m s (inv_Epoch__6 m s n1 n2) (inv_Node__6 m s n1 n2)) 
 (ite inv_b15 
 (transfer m s (inv_Epoch__7 m s n1 n2) (inv_Node__7 m s n1 n2)) 
 (ite inv_b16 
 (le m (inv_Epoch__8 m s n1 n2) (inv_Epoch__9 m s n1 n2)) 
 (ite inv_b17 
 (= (inv_Node__8 m s n1 n2) (inv_Node__9 m s n1 n2)) 
 (ite inv_b18 
 (= (inv_Epoch__10 m s n1 n2) (inv_Epoch__11 m s n1 n2)) 
 (ite inv_b19 
 (and (inv_Atom_15 m s n1 n2) (inv_Atom_16 m s n1 n2)) 
 (ite inv_b20 
 (or (inv_Atom_17 m s n1 n2) (inv_Atom_18 m s n1 n2)) 
 (ite inv_b21 
 (=> (inv_Atom_19 m s n1 n2) (inv_Atom_20 m s n1 n2)) 
 (not (inv_Atom_21 m s n1 n2)))))))))))
)
(define-fun inv_Atom_103 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1317 
 (held m s (inv_Node__1818 m s n1 n2)) 
 (= (inv_Node__1819 m s n1 n2) (inv_Node__1820 m s n1 n2)))
)
(define-fun inv_Node__343 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1013 
 n1 
 n2)
)
(define-fun inv_Epoch__358 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1172 m s n1 n2))
)
(define-fun inv_Node__1619 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2698 
 n1 
 n2)
)
(define-fun inv_Atom_47 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b459 
 (held m s (inv_Node__272 m s n1 n2)) 
 (ite inv_b460 
 (locked m s (inv_Epoch__288 m s n1 n2) (inv_Node__273 m s n1 n2)) 
 (ite inv_b461 
 (transfer m s (inv_Epoch__289 m s n1 n2) (inv_Node__274 m s n1 n2)) 
 (ite inv_b462 
 (le m (inv_Epoch__290 m s n1 n2) (inv_Epoch__291 m s n1 n2)) 
 (ite inv_b463 
 (= (inv_Node__275 m s n1 n2) (inv_Node__276 m s n1 n2)) 
 (ite inv_b464 
 (= (inv_Epoch__292 m s n1 n2) (inv_Epoch__293 m s n1 n2)) 
 (ite inv_b465 
 (and (inv_Atom_344 m s n1 n2) (inv_Atom_345 m s n1 n2)) 
 (ite inv_b466 
 (or (inv_Atom_346 m s n1 n2) (inv_Atom_347 m s n1 n2)) 
 (ite inv_b467 
 (=> (inv_Atom_348 m s n1 n2) (inv_Atom_349 m s n1 n2)) 
 (not (inv_Atom_350 m s n1 n2)))))))))))
)
(define-fun inv_Epoch__79 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__508 m s n1 n2))
)
(define-fun inv_Node__344 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b992 
 n1 
 n2)
)
(define-fun inv_Node__28 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b269 
 n1 
 n2)
)
(define-fun inv_Node__37 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b558 
 n1 
 n2)
)
(define-fun inv_Atom_57 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b124 
 (held m s (inv_Node__71 m s n1 n2)) 
 (ite inv_b125 
 (locked m s (inv_Epoch__78 m s n1 n2) (inv_Node__72 m s n1 n2)) 
 (ite inv_b126 
 (transfer m s (inv_Epoch__79 m s n1 n2) (inv_Node__73 m s n1 n2)) 
 (ite inv_b127 
 (le m (inv_Epoch__80 m s n1 n2) (inv_Epoch__81 m s n1 n2)) 
 (ite inv_b128 
 (= (inv_Node__74 m s n1 n2) (inv_Node__75 m s n1 n2)) 
 (ite inv_b129 
 (= (inv_Epoch__82 m s n1 n2) (inv_Epoch__83 m s n1 n2)) 
 (ite inv_b130 
 (and (inv_Atom_99 m s n1 n2) (inv_Atom_100 m s n1 n2)) 
 (ite inv_b131 
 (or (inv_Atom_101 m s n1 n2) (inv_Atom_102 m s n1 n2)) 
 (ite inv_b132 
 (=> (inv_Atom_103 m s n1 n2) (inv_Atom_104 m s n1 n2)) 
 (not (inv_Atom_105 m s n1 n2)))))))))))
)
(define-fun inv_Node__69 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1076 
 n1 
 n2)
)
(define-fun inv_Epoch__101 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__823 m s n1 n2))
)
(define-fun inv_Node__1524 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1451 
 n1 
 n2)
)
(define-fun inv_Epoch__45 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__123 m s n1 n2))
)
(define-fun inv_Epoch__354 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1194 m s n1 n2))
)
(define-fun inv_Atom_46 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b496 
 (held m s (inv_Node__295 m s n1 n2)) 
 (ite inv_b497 
 (locked m s (inv_Epoch__312 m s n1 n2) (inv_Node__296 m s n1 n2)) 
 (ite inv_b498 
 (transfer m s (inv_Epoch__313 m s n1 n2) (inv_Node__297 m s n1 n2)) 
 (ite inv_b499 
 (le m (inv_Epoch__314 m s n1 n2) (inv_Epoch__315 m s n1 n2)) 
 (ite inv_b500 
 (= (inv_Node__298 m s n1 n2) (inv_Node__299 m s n1 n2)) 
 (ite inv_b501 
 (= (inv_Epoch__316 m s n1 n2) (inv_Epoch__317 m s n1 n2)) 
 (ite inv_b502 
 (and (inv_Atom_372 m s n1 n2) (inv_Atom_373 m s n1 n2)) 
 (ite inv_b503 
 (or (inv_Atom_374 m s n1 n2) (inv_Atom_375 m s n1 n2)) 
 (ite inv_b504 
 (=> (inv_Atom_376 m s n1 n2) (inv_Atom_377 m s n1 n2)) 
 (not (inv_Atom_378 m s n1 n2)))))))))))
)
(define-fun inv_Node__36 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b351 
 n1 
 n2)
)
(define-fun inv_Node__1620 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1858 
 n1 
 n2)
)
(define-fun inv_Node__88 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1118 
 n1 
 n2)
)
(define-fun inv_Atom_97 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1184 
 (held m s (inv_Node__1521 m s n1 n2)) 
 (= (inv_Node__1522 m s n1 n2) (inv_Node__1523 m s n1 n2)))
)
(define-fun inv_Node__39 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b527 
 n1 
 n2)
)
(define-fun inv_Atom_43 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b572 
 (held m s (inv_Node__340 m s n1 n2)) 
 (ite inv_b573 
 (locked m s (inv_Epoch__354 m s n1 n2) (inv_Node__341 m s n1 n2)) 
 (ite inv_b574 
 (transfer m s (inv_Epoch__355 m s n1 n2) (inv_Node__342 m s n1 n2)) 
 (ite inv_b575 
 (le m (inv_Epoch__356 m s n1 n2) (inv_Epoch__357 m s n1 n2)) 
 (ite inv_b576 
 (= (inv_Node__343 m s n1 n2) (inv_Node__344 m s n1 n2)) 
 (ite inv_b577 
 (= (inv_Epoch__358 m s n1 n2) (inv_Epoch__359 m s n1 n2)) 
 (ite inv_b578 
 (and (inv_Atom_421 m s n1 n2) (inv_Atom_422 m s n1 n2)) 
 (ite inv_b579 
 (or (inv_Atom_423 m s n1 n2) (inv_Atom_424 m s n1 n2)) 
 (ite inv_b580 
 (=> (inv_Atom_425 m s n1 n2) (inv_Atom_426 m s n1 n2)) 
 (not (inv_Atom_427 m s n1 n2)))))))))))
)
(define-fun inv_Atom_45 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b151 
 (held m s (inv_Node__86 m s n1 n2)) 
 (ite inv_b152 
 (locked m s (inv_Epoch__96 m s n1 n2) (inv_Node__87 m s n1 n2)) 
 (ite inv_b153 
 (transfer m s (inv_Epoch__97 m s n1 n2) (inv_Node__88 m s n1 n2)) 
 (ite inv_b154 
 (le m (inv_Epoch__98 m s n1 n2) (inv_Epoch__99 m s n1 n2)) 
 (ite inv_b155 
 (= (inv_Node__89 m s n1 n2) (inv_Node__90 m s n1 n2)) 
 (ite inv_b156 
 (= (inv_Epoch__100 m s n1 n2) (inv_Epoch__101 m s n1 n2)) 
 (ite inv_b157 
 (and (inv_Atom_120 m s n1 n2) (inv_Atom_121 m s n1 n2)) 
 (ite inv_b158 
 (or (inv_Atom_122 m s n1 n2) (inv_Atom_123 m s n1 n2)) 
 (ite inv_b159 
 (=> (inv_Atom_124 m s n1 n2) (inv_Atom_125 m s n1 n2)) 
 (not (inv_Atom_126 m s n1 n2)))))))))))
)
(define-fun inv_Node__35 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b353 
 n1 
 n2)
)
(define-fun inv_Node__94 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1159 
 n1 
 n2)
)
(define-fun inv_Node__1525 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b2309 
 n1 
 n2)
)
(define-fun inv_Atom_96 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1229 
 (held m s (inv_Node__1619 m s n1 n2)) 
 (= (inv_Node__1620 m s n1 n2) (inv_Node__1621 m s n1 n2)))
)
(define-fun inv_Atom_5 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b49 
 (held m s (inv_Node__25 m s n1 n2)) 
 (ite inv_b50 
 (locked m s (inv_Epoch__30 m s n1 n2) (inv_Node__26 m s n1 n2)) 
 (ite inv_b51 
 (transfer m s (inv_Epoch__31 m s n1 n2) (inv_Node__27 m s n1 n2)) 
 (ite inv_b52 
 (le m (inv_Epoch__32 m s n1 n2) (inv_Epoch__33 m s n1 n2)) 
 (ite inv_b53 
 (= (inv_Node__28 m s n1 n2) (inv_Node__29 m s n1 n2)) 
 (ite inv_b54 
 (= (inv_Epoch__34 m s n1 n2) (inv_Epoch__35 m s n1 n2)) 
 (ite inv_b55 
 (and (inv_Atom_43 m s n1 n2) (inv_Atom_44 m s n1 n2)) 
 (ite inv_b56 
 (or (inv_Atom_45 m s n1 n2) (inv_Atom_46 m s n1 n2)) 
 (ite inv_b57 
 (=> (inv_Atom_47 m s n1 n2) (inv_Atom_48 m s n1 n2)) 
 (not (inv_Atom_49 m s n1 n2)))))))))))
)
(define-fun inv_Atom_129 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1223 
 (held m s (inv_Node__1600 m s n1 n2)) 
 (= (inv_Node__1601 m s n1 n2) (inv_Node__1602 m s n1 n2)))
)
(define-fun inv_Atom_127 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b1185 
 (held m s (inv_Node__1524 m s n1 n2)) 
 (= (inv_Node__1525 m s n1 n2) (inv_Node__1526 m s n1 n2)))
)
(define-fun inv_Epoch__105 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__1075 m s n1 n2))
)
(define-fun inv_Node__91 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1088 
 n1 
 n2)
)
(define-fun inv_Node__148 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1137 
 n1 
 n2)
)
(define-fun inv_Node__95 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b1294 
 n1 
 n2)
)
(define-fun inv_Epoch__76 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__535 m s n1 n2))
)
(define-fun inv_Atom_58 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b160 
 (held m s (inv_Node__91 m s n1 n2)) 
 (ite inv_b161 
 (locked m s (inv_Epoch__102 m s n1 n2) (inv_Node__92 m s n1 n2)) 
 (ite inv_b162 
 (transfer m s (inv_Epoch__103 m s n1 n2) (inv_Node__93 m s n1 n2)) 
 (ite inv_b163 
 (le m (inv_Epoch__104 m s n1 n2) (inv_Epoch__105 m s n1 n2)) 
 (ite inv_b164 
 (= (inv_Node__94 m s n1 n2) (inv_Node__95 m s n1 n2)) 
 (ite inv_b165 
 (= (inv_Epoch__106 m s n1 n2) (inv_Epoch__107 m s n1 n2)) 
 (ite inv_b166 
 (and (inv_Atom_127 m s n1 n2) (inv_Atom_128 m s n1 n2)) 
 (ite inv_b167 
 (or (inv_Atom_129 m s n1 n2) (inv_Atom_130 m s n1 n2)) 
 (ite inv_b168 
 (=> (inv_Atom_131 m s n1 n2) (inv_Atom_132 m s n1 n2)) 
 (not (inv_Atom_133 m s n1 n2)))))))))))
)
(define-fun inv_Atom_62 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b115 
 (held m s (inv_Node__65 m s n1 n2)) 
 (ite inv_b116 
 (locked m s (inv_Epoch__72 m s n1 n2) (inv_Node__66 m s n1 n2)) 
 (ite inv_b117 
 (transfer m s (inv_Epoch__73 m s n1 n2) (inv_Node__67 m s n1 n2)) 
 (ite inv_b118 
 (le m (inv_Epoch__74 m s n1 n2) (inv_Epoch__75 m s n1 n2)) 
 (ite inv_b119 
 (= (inv_Node__68 m s n1 n2) (inv_Node__69 m s n1 n2)) 
 (ite inv_b120 
 (= (inv_Epoch__76 m s n1 n2) (inv_Epoch__77 m s n1 n2)) 
 (ite inv_b121 
 (and (inv_Atom_92 m s n1 n2) (inv_Atom_93 m s n1 n2)) 
 (ite inv_b122 
 (or (inv_Atom_94 m s n1 n2) (inv_Atom_95 m s n1 n2)) 
 (ite inv_b123 
 (=> (inv_Atom_96 m s n1 n2) (inv_Atom_97 m s n1 n2)) 
 (not (inv_Atom_98 m s n1 n2)))))))))))
)
(define-fun inv_Epoch__43 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__148 m s n1 n2))
)
(define-fun inv_Atom_1 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b67 
 (held m s (inv_Node__35 m s n1 n2)) 
 (ite inv_b68 
 (locked m s (inv_Epoch__42 m s n1 n2) (inv_Node__36 m s n1 n2)) 
 (ite inv_b69 
 (transfer m s (inv_Epoch__43 m s n1 n2) (inv_Node__37 m s n1 n2)) 
 (ite inv_b70 
 (le m (inv_Epoch__44 m s n1 n2) (inv_Epoch__45 m s n1 n2)) 
 (ite inv_b71 
 (= (inv_Node__38 m s n1 n2) (inv_Node__39 m s n1 n2)) 
 (ite inv_b72 
 (= (inv_Epoch__46 m s n1 n2) (inv_Epoch__47 m s n1 n2)) 
 (ite inv_b73 
 (and (inv_Atom_57 m s n1 n2) (inv_Atom_58 m s n1 n2)) 
 (ite inv_b74 
 (or (inv_Atom_59 m s n1 n2) (inv_Atom_60 m s n1 n2)) 
 (ite inv_b75 
 (=> (inv_Atom_61 m s n1 n2) (inv_Atom_62 m s n1 n2)) 
 (not (inv_Atom_63 m s n1 n2)))))))))))
)
(define-fun inv_Start_0 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b0 
 (inv_Atom_0 m s n1 n2) 
 (ite inv_b1 
 (and (inv_Atom_1 m s n1 n2) (inv_Atom_2 m s n1 n2)) 
 (ite inv_b2 
 (or (inv_Atom_3 m s n1 n2) (inv_Atom_4 m s n1 n2)) 
 (ite inv_b3 
 (=> (inv_Atom_5 m s n1 n2) (inv_Atom_6 m s n1 n2)) 
 (not (inv_Atom_7 m s n1 n2))))))
)

;Function to be synthesised
(define-fun inv ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool (inv_Start_0 m s n1 n2))
; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.PositiveCEX'>)
; <invar_synth.utils.qexpr.QForAll object at 0x7fe2e17529d0>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Node_1,
;         ForAll(Epoch_1,
;                And(held(Model_0_pos, init, Node_1) ==
;                    (Node_1 == first(Model_0_pos)),
;                    Implies(Node_1 != first(Model_0_pos),
;                            ep(Model_0_pos, init, Node_1) ==
;                            zero(Model_0_pos)),
;                    ep(Model_0_pos, init, first(Model_0_pos)) ==
;                    one(Model_0_pos),
;                    transfer(Model_0_pos,
;                             init,
;                             Epoch_1,
;                             Node_1) ==
;                    False,
;                    locked(Model_0_pos,
;                           init,
;                           Epoch_1,
;                           Node_1) ==
;                    False))),
;  ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_0_pos, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_0_pos,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_0_pos,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_0_pos,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_0_pos,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_0_pos,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_0_pos,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_0_pos,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_0_pos,
;                              zero(Model_0_pos),
;                              Epoch_1),
;                           one(Model_0_pos) !=
;                           zero(Model_0_pos))))),
;  Not(ForAll(Node_1, False))]
;;;;;;;; Counter example generation constraints end ;;;;;;;;
;;;;;;;; Counter example model description: ;;;;;;;;
; ;; universe for ModelId:
; ;;   ModelId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun ModelId!val!0 () ModelId)
; ;; cardinality constraint:
; (forall ((x ModelId)) (= x ModelId!val!0))
; ;; -----------
; ;; universe for StateId:
; ;;   StateId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun StateId!val!0 () StateId)
; ;; cardinality constraint:
; (forall ((x StateId)) (= x StateId!val!0))
; ;; -----------
; ;; universe for Node:
; ;;   Node!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Node!val!0 () Node)
; ;; cardinality constraint:
; (forall ((x Node)) (= x Node!val!0))
; ;; -----------
; ;; universe for Epoch:
; ;;   Epoch!val!0 Epoch!val!2 Epoch!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Epoch!val!0 () Epoch)
; (declare-fun Epoch!val!2 () Epoch)
; (declare-fun Epoch!val!1 () Epoch)
; ;; cardinality constraint:
; (forall ((x Epoch)) (or (= x Epoch!val!0) (= x Epoch!val!2) (= x Epoch!val!1)))
; ;; -----------
; (define-fun Model_0_pos () ModelId
;   ModelId!val!0)
; (define-fun init () StateId
;   StateId!val!0)
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   false)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (ite (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0))
;        Epoch!val!1
;        Epoch!val!2))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!1))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!1) (= x!2 Epoch!val!1))))
; (define-fun first ((x!0 ModelId)) Node
;   Node!val!0)
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0)))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!2)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   false)
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (and (inv Model_0_pos init Node!val!0 Node!val!0)))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.PositiveCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fe2e16e1730>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Node_1,
;         ForAll(Epoch_1,
;                And(held(Model_1_pos, init, Node_1) ==
;                    (Node_1 == first(Model_1_pos)),
;                    Implies(Node_1 != first(Model_1_pos),
;                            ep(Model_1_pos, init, Node_1) ==
;                            zero(Model_1_pos)),
;                    ep(Model_1_pos, init, first(Model_1_pos)) ==
;                    one(Model_1_pos),
;                    transfer(Model_1_pos,
;                             init,
;                             Epoch_1,
;                             Node_1) ==
;                    False,
;                    locked(Model_1_pos,
;                           init,
;                           Epoch_1,
;                           Node_1) ==
;                    False))),
;  ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_1_pos, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_1_pos,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_1_pos,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_1_pos,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_1_pos,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_1_pos,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_1_pos,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_1_pos,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_1_pos,
;                              zero(Model_1_pos),
;                              Epoch_1),
;                           one(Model_1_pos) !=
;                           zero(Model_1_pos))))),
;  Not(ForAll(Node_1, held(Model_1_pos, init, Node_1)))]
;;;;;;;; Counter example generation constraints end ;;;;;;;;
;;;;;;;; Counter example model description: ;;;;;;;;
; ;; universe for ModelId:
; ;;   ModelId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun ModelId!val!0 () ModelId)
; ;; cardinality constraint:
; (forall ((x ModelId)) (= x ModelId!val!0))
; ;; -----------
; ;; universe for StateId:
; ;;   StateId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun StateId!val!0 () StateId)
; ;; cardinality constraint:
; (forall ((x StateId)) (= x StateId!val!0))
; ;; -----------
; ;; universe for Node:
; ;;   Node!val!0 Node!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Node!val!0 () Node)
; (declare-fun Node!val!1 () Node)
; ;; cardinality constraint:
; (forall ((x Node)) (or (= x Node!val!0) (= x Node!val!1)))
; ;; -----------
; ;; universe for Epoch:
; ;;   Epoch!val!0 Epoch!val!2 Epoch!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Epoch!val!0 () Epoch)
; (declare-fun Epoch!val!2 () Epoch)
; (declare-fun Epoch!val!1 () Epoch)
; ;; cardinality constraint:
; (forall ((x Epoch)) (or (= x Epoch!val!0) (= x Epoch!val!2) (= x Epoch!val!1)))
; ;; -----------
; (define-fun Model_1_pos () ModelId
;   ModelId!val!0)
; (define-fun init () StateId
;   StateId!val!0)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (ite (and (= x!0 ModelId!val!0)
;             (= x!1 StateId!val!0)
;             (not (= x!2 Node!val!1)))
;        Epoch!val!2
;        (ite (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!1))
;             Epoch!val!1
;             Epoch!val!0)))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!1))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!1) (= x!2 Epoch!val!1))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!1))))
; (define-fun first ((x!0 ModelId)) Node
;   Node!val!1)
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!1)))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   false)
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!2)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   false)
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (and (inv Model_1_pos init Node!val!0 Node!val!0)
     (inv Model_1_pos init Node!val!0 Node!val!1)
     (inv Model_1_pos init Node!val!1 Node!val!0)
     (inv Model_1_pos init Node!val!1 Node!val!1)))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fe2e151ce50>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_81_ice, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_81_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_81_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_81_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_81_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_81_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_81_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_81_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_81_ice,
;                              zero(Model_81_ice),
;                              Epoch_1),
;                           one(Model_81_ice) !=
;                           zero(Model_81_ice))))),
;  And(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_81_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_81_ice,
;                                S1,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Or(held(Model_81_ice, S1, Node_1),
;                le(Model_81_ice,
;                   ep(Model_81_ice, S1, Node_1),
;                   ep(Model_81_ice, S1, Node_1)))),
;      ForAll(Node_1,
;             le(Model_81_ice,
;                ep(Model_81_ice, S1, Node_1),
;                ep(Model_81_ice, S1, Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_81_ice,
;                           S1,
;                           ep(Model_81_ice, S1, Node_1),
;                           Node_1)),
;                transfer(Model_81_ice,
;                         S1,
;                         ep(Model_81_ice, S1, Node_1),
;                         Node_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(le(Model_81_ice,
;                          Epoch_1,
;                          ep(Model_81_ice, S1, Node_1)),
;                       le(Model_81_ice,
;                          ep(Model_81_ice, S1, Node_1),
;                          Epoch_1)))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_81_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_81_ice,
;                                S1,
;                                ep(Model_81_ice, S1, Node_1),
;                                Node_1)))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_81_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       locked(Model_81_ice,
;                              S1,
;                              ep(Model_81_ice, S1, Node_1),
;                              Node_1)))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_81_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       le(Model_81_ice,
;                          Epoch_1,
;                          ep(Model_81_ice, S1, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Epoch_1 ==
;                       ep(Model_81_ice, S1, Node_1),
;                       Not(le(Model_81_ice,
;                              ep(Model_81_ice, S1, Node_1),
;                              Epoch_1)),
;                       Not(le(Model_81_ice,
;                              Epoch_1,
;                              ep(Model_81_ice, S1, Node_1))))))),
;  ForAll(Node_1,
;         ForAll(Epoch_1,
;                Not(transfer(Model_81_ice,
;                             S1,
;                             Epoch_1,
;                             Node_1)))),
;  And(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_81_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_81_ice,
;                                S2,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Or(held(Model_81_ice, S2, Node_1),
;                le(Model_81_ice,
;                   ep(Model_81_ice, S2, Node_1),
;                   ep(Model_81_ice, S2, Node_1)))),
;      ForAll(Node_1,
;             le(Model_81_ice,
;                ep(Model_81_ice, S2, Node_1),
;                ep(Model_81_ice, S2, Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_81_ice,
;                           S2,
;                           ep(Model_81_ice, S2, Node_1),
;                           Node_1)),
;                transfer(Model_81_ice,
;                         S2,
;                         ep(Model_81_ice, S2, Node_1),
;                         Node_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(le(Model_81_ice,
;                          Epoch_1,
;                          ep(Model_81_ice, S2, Node_1)),
;                       le(Model_81_ice,
;                          ep(Model_81_ice, S2, Node_1),
;                          Epoch_1)))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_81_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_81_ice,
;                                S2,
;                                ep(Model_81_ice, S2, Node_1),
;                                Node_1)))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(locked(Model_81_ice,
;                              S2,
;                              ep(Model_81_ice, S2, Node_1),
;                              Node_1),
;                       Not(locked(Model_81_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_81_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       le(Model_81_ice,
;                          Epoch_1,
;                          ep(Model_81_ice, S2, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Epoch_1 ==
;                       ep(Model_81_ice, S2, Node_1),
;                       Not(le(Model_81_ice,
;                              ep(Model_81_ice, S2, Node_1),
;                              Epoch_1)),
;                       Not(le(Model_81_ice,
;                              Epoch_1,
;                              ep(Model_81_ice, S2, Node_1))))))),
;  Not(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Not(transfer(Model_81_ice,
;                                 S2,
;                                 Epoch_1,
;                                 Node_1))))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_81_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_1),
; ...
;;;;;;;; Counter example generation constraints end ;;;;;;;;
;;;;;;;; Counter example model description: ;;;;;;;;
; ;; universe for ModelId:
; ;;   ModelId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun ModelId!val!0 () ModelId)
; ;; cardinality constraint:
; (forall ((x ModelId)) (= x ModelId!val!0))
; ;; -----------
; ;; universe for StateId:
; ;;   StateId!val!1 StateId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun StateId!val!1 () StateId)
; (declare-fun StateId!val!0 () StateId)
; ;; cardinality constraint:
; (forall ((x StateId)) (or (= x StateId!val!1) (= x StateId!val!0)))
; ;; -----------
; ;; universe for Node:
; ;;   Node!val!0 Node!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Node!val!0 () Node)
; (declare-fun Node!val!1 () Node)
; ;; cardinality constraint:
; (forall ((x Node)) (or (= x Node!val!0) (= x Node!val!1)))
; ;; -----------
; ;; universe for Epoch:
; ;;   Epoch!val!3 Epoch!val!0 Epoch!val!2 Epoch!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Epoch!val!3 () Epoch)
; (declare-fun Epoch!val!0 () Epoch)
; (declare-fun Epoch!val!2 () Epoch)
; (declare-fun Epoch!val!1 () Epoch)
; ;; cardinality constraint:
; (forall ((x Epoch))
;         (or (= x Epoch!val!3)
;             (= x Epoch!val!0)
;             (= x Epoch!val!2)
;             (= x Epoch!val!1)))
; ;; -----------
; (define-fun S1 () StateId
;   StateId!val!1)
; (define-fun S2 () StateId
;   StateId!val!0)
; (define-fun Model_81_ice () ModelId
;   ModelId!val!0)
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!0)
;        (= x!2 Epoch!val!0)
;        (not (= x!2 Epoch!val!3))
;        (not (= x!2 Epoch!val!2))
;        (= x!3 Node!val!1)))
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   Epoch!val!1)
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!2) (= x!2 Epoch!val!2))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!2))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2)))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!3)
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (not (= x!2 Node!val!1))))
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!2)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   false)
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_81_ice S1 Node!val!0 Node!val!0)
                (inv Model_81_ice S1 Node!val!0 Node!val!1)
                (inv Model_81_ice S1 Node!val!1 Node!val!0)
                (inv Model_81_ice S1 Node!val!1 Node!val!1))))
  (or (not a!1)
      (and a!1
           (inv Model_81_ice S2 Node!val!0 Node!val!0)
           (inv Model_81_ice S2 Node!val!0 Node!val!1)
           (inv Model_81_ice S2 Node!val!1 Node!val!0)
           (inv Model_81_ice S2 Node!val!1 Node!val!1)))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fe2e15f2130>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_82_ice, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_82_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_82_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_82_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_82_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_82_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_82_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_82_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_82_ice,
;                              zero(Model_82_ice),
;                              Epoch_1),
;                           one(Model_82_ice) !=
;                           zero(Model_82_ice))))),
;  And(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_82_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_82_ice,
;                                S1,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Or(held(Model_82_ice, S1, Node_1),
;                le(Model_82_ice,
;                   ep(Model_82_ice, S1, Node_1),
;                   ep(Model_82_ice, S1, Node_1)))),
;      ForAll(Node_1,
;             le(Model_82_ice,
;                ep(Model_82_ice, S1, Node_1),
;                ep(Model_82_ice, S1, Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_82_ice,
;                           S1,
;                           ep(Model_82_ice, S1, Node_1),
;                           Node_1)),
;                transfer(Model_82_ice,
;                         S1,
;                         ep(Model_82_ice, S1, Node_1),
;                         Node_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(le(Model_82_ice,
;                          Epoch_1,
;                          ep(Model_82_ice, S1, Node_1)),
;                       le(Model_82_ice,
;                          ep(Model_82_ice, S1, Node_1),
;                          Epoch_1)))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(transfer(Model_82_ice,
;                                S1,
;                                ep(Model_82_ice, S1, Node_1),
;                                Node_1),
;                       Not(locked(Model_82_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(locked(Model_82_ice,
;                              S1,
;                              ep(Model_82_ice, S1, Node_1),
;                              Node_1),
;                       Not(locked(Model_82_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_82_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       le(Model_82_ice,
;                          Epoch_1,
;                          ep(Model_82_ice, S1, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(le(Model_82_ice,
;                              Epoch_1,
;                              ep(Model_82_ice, S1, Node_1))),
;                       Not(le(Model_82_ice,
;                              ep(Model_82_ice, S1, Node_1),
;                              Epoch_1)),
;                       Epoch_1 ==
;                       ep(Model_82_ice, S1, Node_1))))),
;  ForAll(Node_1,
;         ForAll(Epoch_1,
;                Not(locked(Model_82_ice, S1, Epoch_1, Node_1)))),
;  And(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_82_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_82_ice,
;                                S2,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Or(held(Model_82_ice, S2, Node_1),
;                le(Model_82_ice,
;                   ep(Model_82_ice, S2, Node_1),
;                   ep(Model_82_ice, S2, Node_1)))),
;      ForAll(Node_1,
;             le(Model_82_ice,
;                ep(Model_82_ice, S2, Node_1),
;                ep(Model_82_ice, S2, Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_82_ice,
;                           S2,
;                           ep(Model_82_ice, S2, Node_1),
;                           Node_1)),
;                transfer(Model_82_ice,
;                         S2,
;                         ep(Model_82_ice, S2, Node_1),
;                         Node_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(le(Model_82_ice,
;                          Epoch_1,
;                          ep(Model_82_ice, S2, Node_1)),
;                       le(Model_82_ice,
;                          ep(Model_82_ice, S2, Node_1),
;                          Epoch_1)))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(transfer(Model_82_ice,
;                                S2,
;                                ep(Model_82_ice, S2, Node_1),
;                                Node_1),
;                       Not(locked(Model_82_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(locked(Model_82_ice,
;                              S2,
;                              ep(Model_82_ice, S2, Node_1),
;                              Node_1),
;                       Not(locked(Model_82_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_82_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       le(Model_82_ice,
;                          Epoch_1,
;                          ep(Model_82_ice, S2, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Epoch_1 ==
;                       ep(Model_82_ice, S2, Node_1),
;                       Not(le(Model_82_ice,
;                              Epoch_1,
;                              ep(Model_82_ice, S2, Node_1))),
;                       Not(le(Model_82_ice,
;                              ep(Model_82_ice, S2, Node_1),
;                              Epoch_1)))))),
;  Not(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Not(locked(Model_82_ice,
;                               S2,
;                               Epoch_1,
;                               Node_1))))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_82_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_82_ice,
;                                         S1,
;                                         Epoch_1,
; ...
;;;;;;;; Counter example generation constraints end ;;;;;;;;
;;;;;;;; Counter example model description: ;;;;;;;;
; ;; universe for ModelId:
; ;;   ModelId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun ModelId!val!0 () ModelId)
; ;; cardinality constraint:
; (forall ((x ModelId)) (= x ModelId!val!0))
; ;; -----------
; ;; universe for StateId:
; ;;   StateId!val!1 StateId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun StateId!val!1 () StateId)
; (declare-fun StateId!val!0 () StateId)
; ;; cardinality constraint:
; (forall ((x StateId)) (or (= x StateId!val!1) (= x StateId!val!0)))
; ;; -----------
; ;; universe for Epoch:
; ;;   Epoch!val!3 Epoch!val!0 Epoch!val!2 Epoch!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Epoch!val!3 () Epoch)
; (declare-fun Epoch!val!0 () Epoch)
; (declare-fun Epoch!val!2 () Epoch)
; (declare-fun Epoch!val!1 () Epoch)
; ;; cardinality constraint:
; (forall ((x Epoch))
;         (or (= x Epoch!val!3)
;             (= x Epoch!val!0)
;             (= x Epoch!val!2)
;             (= x Epoch!val!1)))
; ;; -----------
; ;; universe for Node:
; ;;   Node!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Node!val!0 () Node)
; ;; cardinality constraint:
; (forall ((x Node)) (= x Node!val!0))
; ;; -----------
; (define-fun S2 () StateId
;   StateId!val!0)
; (define-fun S1 () StateId
;   StateId!val!1)
; (define-fun Model_82_ice () ModelId
;   ModelId!val!0)
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!0) (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))))
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (ite (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0))
;        Epoch!val!3
;        (ite (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1))
;             Epoch!val!2
;             Epoch!val!0)))
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0)))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!0)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!0)
;        (= x!2 Epoch!val!3)
;        (not (= x!2 Epoch!val!1))
;        (not (= x!2 Epoch!val!0))))
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (or (not (and (inv Model_82_ice S1 Node!val!0 Node!val!0)))
    (and (and (inv Model_82_ice S1 Node!val!0 Node!val!0))
         (inv Model_82_ice S2 Node!val!0 Node!val!0))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fe2e15c0e80>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_83_ice, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_83_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_83_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_83_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_83_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_83_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_83_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_83_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_83_ice,
;                              zero(Model_83_ice),
;                              Epoch_1),
;                           one(Model_83_ice) !=
;                           zero(Model_83_ice))))),
;  And(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_83_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_83_ice,
;                                S1,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Or(held(Model_83_ice, S1, Node_1),
;                le(Model_83_ice,
;                   ep(Model_83_ice, S1, Node_1),
;                   ep(Model_83_ice, S1, Node_1)))),
;      ForAll(Node_1,
;             le(Model_83_ice,
;                ep(Model_83_ice, S1, Node_1),
;                ep(Model_83_ice, S1, Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_83_ice,
;                           S1,
;                           ep(Model_83_ice, S1, Node_1),
;                           Node_1)),
;                transfer(Model_83_ice,
;                         S1,
;                         ep(Model_83_ice, S1, Node_1),
;                         Node_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(le(Model_83_ice,
;                          ep(Model_83_ice, S1, Node_1),
;                          Epoch_1),
;                       le(Model_83_ice,
;                          Epoch_1,
;                          ep(Model_83_ice, S1, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_83_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_83_ice,
;                                S1,
;                                ep(Model_83_ice, S1, Node_1),
;                                Node_1)))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_83_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       locked(Model_83_ice,
;                              S1,
;                              ep(Model_83_ice, S1, Node_1),
;                              Node_1)))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_83_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       le(Model_83_ice,
;                          Epoch_1,
;                          ep(Model_83_ice, S1, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Epoch_1 ==
;                       ep(Model_83_ice, S1, Node_1),
;                       Not(le(Model_83_ice,
;                              Epoch_1,
;                              ep(Model_83_ice, S1, Node_1))),
;                       Not(le(Model_83_ice,
;                              ep(Model_83_ice, S1, Node_1),
;                              Epoch_1)))))),
;  ForAll(Node_1,
;         ForAll(Epoch_1,
;                Or(Not(locked(Model_83_ice,
;                              S1,
;                              Epoch_1,
;                              Node_1)),
;                   held(Model_83_ice, S1, Node_1)))),
;  And(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_83_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_83_ice,
;                                S2,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Or(held(Model_83_ice, S2, Node_1),
;                le(Model_83_ice,
;                   ep(Model_83_ice, S2, Node_1),
;                   ep(Model_83_ice, S2, Node_1)))),
;      ForAll(Node_1,
;             le(Model_83_ice,
;                ep(Model_83_ice, S2, Node_1),
;                ep(Model_83_ice, S2, Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_83_ice,
;                           S2,
;                           ep(Model_83_ice, S2, Node_1),
;                           Node_1)),
;                transfer(Model_83_ice,
;                         S2,
;                         ep(Model_83_ice, S2, Node_1),
;                         Node_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(le(Model_83_ice,
;                          Epoch_1,
;                          ep(Model_83_ice, S2, Node_1)),
;                       le(Model_83_ice,
;                          ep(Model_83_ice, S2, Node_1),
;                          Epoch_1)))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(transfer(Model_83_ice,
;                                S2,
;                                ep(Model_83_ice, S2, Node_1),
;                                Node_1),
;                       Not(locked(Model_83_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(locked(Model_83_ice,
;                              S2,
;                              ep(Model_83_ice, S2, Node_1),
;                              Node_1),
;                       Not(locked(Model_83_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_83_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       le(Model_83_ice,
;                          Epoch_1,
;                          ep(Model_83_ice, S2, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(le(Model_83_ice,
;                              ep(Model_83_ice, S2, Node_1),
;                              Epoch_1)),
;                       Epoch_1 ==
;                       ep(Model_83_ice, S2, Node_1),
;                       Not(le(Model_83_ice,
;                              Epoch_1,
;                              ep(Model_83_ice, S2, Node_1))))))),
;  Not(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_83_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       held(Model_83_ice, S2, Node_1))))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_83_ice,
;                                         S1,
; ...
;;;;;;;; Counter example generation constraints end ;;;;;;;;
;;;;;;;; Counter example model description: ;;;;;;;;
; ;; universe for ModelId:
; ;;   ModelId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun ModelId!val!0 () ModelId)
; ;; cardinality constraint:
; (forall ((x ModelId)) (= x ModelId!val!0))
; ;; -----------
; ;; universe for StateId:
; ;;   StateId!val!1 StateId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun StateId!val!1 () StateId)
; (declare-fun StateId!val!0 () StateId)
; ;; cardinality constraint:
; (forall ((x StateId)) (or (= x StateId!val!1) (= x StateId!val!0)))
; ;; -----------
; ;; universe for Epoch:
; ;;   Epoch!val!3 Epoch!val!0 Epoch!val!4 Epoch!val!2 Epoch!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Epoch!val!3 () Epoch)
; (declare-fun Epoch!val!0 () Epoch)
; (declare-fun Epoch!val!4 () Epoch)
; (declare-fun Epoch!val!2 () Epoch)
; (declare-fun Epoch!val!1 () Epoch)
; ;; cardinality constraint:
; (forall ((x Epoch))
;         (or (= x Epoch!val!3)
;             (= x Epoch!val!0)
;             (= x Epoch!val!4)
;             (= x Epoch!val!2)
;             (= x Epoch!val!1)))
; ;; -----------
; ;; universe for Node:
; ;;   Node!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Node!val!0 () Node)
; ;; cardinality constraint:
; (forall ((x Node)) (= x Node!val!0))
; ;; -----------
; (define-fun Model_83_ice () ModelId
;   ModelId!val!0)
; (define-fun S2 () StateId
;   StateId!val!0)
; (define-fun S1 () StateId
;   StateId!val!1)
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!2) (= x!2 Epoch!val!2))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!2))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!2))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2)))))
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (ite (or (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0))
;            (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1)))
;        Epoch!val!4
;        Epoch!val!3))
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1)))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2)))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!2)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2)))))
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (or (not (and (inv Model_83_ice S1 Node!val!0 Node!val!0)))
    (and (and (inv Model_83_ice S1 Node!val!0 Node!val!0))
         (inv Model_83_ice S2 Node!val!0 Node!val!0))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fe2e14b4700>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_84_ice, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_84_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_84_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_84_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_84_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_84_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_84_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_84_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_84_ice,
;                              zero(Model_84_ice),
;                              Epoch_1),
;                           one(Model_84_ice) !=
;                           zero(Model_84_ice))))),
;  And(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_84_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_84_ice,
;                                S1,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Or(held(Model_84_ice, S1, Node_1),
;                le(Model_84_ice,
;                   ep(Model_84_ice, S1, Node_1),
;                   ep(Model_84_ice, S1, Node_1)))),
;      ForAll(Node_1,
;             le(Model_84_ice,
;                ep(Model_84_ice, S1, Node_1),
;                ep(Model_84_ice, S1, Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_84_ice,
;                           S1,
;                           ep(Model_84_ice, S1, Node_1),
;                           Node_1)),
;                transfer(Model_84_ice,
;                         S1,
;                         ep(Model_84_ice, S1, Node_1),
;                         Node_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(le(Model_84_ice,
;                          ep(Model_84_ice, S1, Node_1),
;                          Epoch_1),
;                       le(Model_84_ice,
;                          Epoch_1,
;                          ep(Model_84_ice, S1, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(transfer(Model_84_ice,
;                                S1,
;                                ep(Model_84_ice, S1, Node_1),
;                                Node_1),
;                       Not(locked(Model_84_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(locked(Model_84_ice,
;                              S1,
;                              ep(Model_84_ice, S1, Node_1),
;                              Node_1),
;                       Not(locked(Model_84_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_84_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       le(Model_84_ice,
;                          Epoch_1,
;                          ep(Model_84_ice, S1, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(le(Model_84_ice,
;                              Epoch_1,
;                              ep(Model_84_ice, S1, Node_1))),
;                       Not(le(Model_84_ice,
;                              ep(Model_84_ice, S1, Node_1),
;                              Epoch_1)),
;                       Epoch_1 ==
;                       ep(Model_84_ice, S1, Node_1))))),
;  ForAll(Node_1,
;         Or(Not(transfer(Model_84_ice,
;                         S1,
;                         ep(Model_84_ice, S1, Node_1),
;                         Node_1)),
;            locked(Model_84_ice,
;                   S1,
;                   ep(Model_84_ice, S1, Node_1),
;                   Node_1))),
;  And(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_84_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_84_ice,
;                                S2,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Or(held(Model_84_ice, S2, Node_1),
;                le(Model_84_ice,
;                   ep(Model_84_ice, S2, Node_1),
;                   ep(Model_84_ice, S2, Node_1)))),
;      ForAll(Node_1,
;             le(Model_84_ice,
;                ep(Model_84_ice, S2, Node_1),
;                ep(Model_84_ice, S2, Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_84_ice,
;                           S2,
;                           ep(Model_84_ice, S2, Node_1),
;                           Node_1)),
;                transfer(Model_84_ice,
;                         S2,
;                         ep(Model_84_ice, S2, Node_1),
;                         Node_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(le(Model_84_ice,
;                          ep(Model_84_ice, S2, Node_1),
;                          Epoch_1),
;                       le(Model_84_ice,
;                          Epoch_1,
;                          ep(Model_84_ice, S2, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(transfer(Model_84_ice,
;                                S2,
;                                ep(Model_84_ice, S2, Node_1),
;                                Node_1),
;                       Not(locked(Model_84_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(locked(Model_84_ice,
;                              S2,
;                              ep(Model_84_ice, S2, Node_1),
;                              Node_1),
;                       Not(locked(Model_84_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_84_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       le(Model_84_ice,
;                          Epoch_1,
;                          ep(Model_84_ice, S2, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(le(Model_84_ice,
;                              ep(Model_84_ice, S2, Node_1),
;                              Epoch_1)),
;                       Epoch_1 ==
;                       ep(Model_84_ice, S2, Node_1),
;                       Not(le(Model_84_ice,
;                              Epoch_1,
;                              ep(Model_84_ice, S2, Node_1))))))),
;  Not(ForAll(Node_1,
;             Or(Not(transfer(Model_84_ice,
;                             S2,
;                             ep(Model_84_ice, S2, Node_1),
;                             Node_1)),
;                locked(Model_84_ice,
;                       S2,
;                       ep(Model_84_ice, S2, Node_1),
;                       Node_1)))),
;  ForAll(Epoch_1,
; ...
;;;;;;;; Counter example generation constraints end ;;;;;;;;
;;;;;;;; Counter example model description: ;;;;;;;;
; ;; universe for ModelId:
; ;;   ModelId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun ModelId!val!0 () ModelId)
; ;; cardinality constraint:
; (forall ((x ModelId)) (= x ModelId!val!0))
; ;; -----------
; ;; universe for StateId:
; ;;   StateId!val!1 StateId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun StateId!val!1 () StateId)
; (declare-fun StateId!val!0 () StateId)
; ;; cardinality constraint:
; (forall ((x StateId)) (or (= x StateId!val!1) (= x StateId!val!0)))
; ;; -----------
; ;; universe for Epoch:
; ;;   Epoch!val!3 Epoch!val!0 Epoch!val!2 Epoch!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Epoch!val!3 () Epoch)
; (declare-fun Epoch!val!0 () Epoch)
; (declare-fun Epoch!val!2 () Epoch)
; (declare-fun Epoch!val!1 () Epoch)
; ;; cardinality constraint:
; (forall ((x Epoch))
;         (or (= x Epoch!val!3)
;             (= x Epoch!val!0)
;             (= x Epoch!val!2)
;             (= x Epoch!val!1)))
; ;; -----------
; ;; universe for Node:
; ;;   Node!val!0 Node!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Node!val!0 () Node)
; (declare-fun Node!val!1 () Node)
; ;; cardinality constraint:
; (forall ((x Node)) (or (= x Node!val!0) (= x Node!val!1)))
; ;; -----------
; (define-fun S2 () StateId
;   StateId!val!0)
; (define-fun Model_84_ice () ModelId
;   ModelId!val!0)
; (define-fun S1 () StateId
;   StateId!val!1)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   false)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (let ((a!1 (ite (and (= x!0 ModelId!val!0)
;                        (= x!1 StateId!val!0)
;                        (not (= x!2 Node!val!0)))
;                   Epoch!val!3
;                   Epoch!val!1)))
;   (let ((a!2 (ite (or (and (= x!0 ModelId!val!0)
;                            (= x!1 StateId!val!0)
;                            (= x!2 Node!val!0))
;                       (and (= x!0 ModelId!val!0)
;                            (= x!1 StateId!val!1)
;                            (= x!2 Node!val!0)))
;                   Epoch!val!2
;                   a!1)))
;     (ite (and (= x!0 ModelId!val!0)
;               (= x!1 StateId!val!1)
;               (not (= x!2 Node!val!0)))
;          Epoch!val!3
;          a!2))))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!3) (= x!2 Epoch!val!3))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!3))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!3))
;            (= x!2 Epoch!val!3))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!3))
;            (= x!2 Epoch!val!3))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!3))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!3))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!3))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!3))
;            (= x!2 Epoch!val!3))))
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (= x!2 Node!val!0)))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!0)
;        (= x!2 Epoch!val!3)
;        (not (= x!3 Node!val!0))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!0)
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_84_ice S1 Node!val!0 Node!val!0)
                (inv Model_84_ice S1 Node!val!0 Node!val!1)
                (inv Model_84_ice S1 Node!val!1 Node!val!0)
                (inv Model_84_ice S1 Node!val!1 Node!val!1))))
  (or (not a!1)
      (and a!1
           (inv Model_84_ice S2 Node!val!0 Node!val!0)
           (inv Model_84_ice S2 Node!val!0 Node!val!1)
           (inv Model_84_ice S2 Node!val!1 Node!val!0)
           (inv Model_84_ice S2 Node!val!1 Node!val!1)))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fe2e13da0d0>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_85_ice, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_85_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_85_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_85_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_85_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_85_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_85_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_85_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_85_ice,
;                              zero(Model_85_ice),
;                              Epoch_1),
;                           one(Model_85_ice) !=
;                           zero(Model_85_ice))))),
;  And(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_85_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_85_ice,
;                                S1,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Or(held(Model_85_ice, S1, Node_1),
;                le(Model_85_ice,
;                   ep(Model_85_ice, S1, Node_1),
;                   ep(Model_85_ice, S1, Node_1)))),
;      ForAll(Node_1,
;             le(Model_85_ice,
;                ep(Model_85_ice, S1, Node_1),
;                ep(Model_85_ice, S1, Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_85_ice,
;                           S1,
;                           ep(Model_85_ice, S1, Node_1),
;                           Node_1)),
;                transfer(Model_85_ice,
;                         S1,
;                         ep(Model_85_ice, S1, Node_1),
;                         Node_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(le(Model_85_ice,
;                          Epoch_1,
;                          ep(Model_85_ice, S1, Node_1)),
;                       le(Model_85_ice,
;                          ep(Model_85_ice, S1, Node_1),
;                          Epoch_1)))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(transfer(Model_85_ice,
;                                S1,
;                                ep(Model_85_ice, S1, Node_1),
;                                Node_1),
;                       Not(locked(Model_85_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(locked(Model_85_ice,
;                              S1,
;                              ep(Model_85_ice, S1, Node_1),
;                              Node_1),
;                       Not(locked(Model_85_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_85_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       le(Model_85_ice,
;                          Epoch_1,
;                          ep(Model_85_ice, S1, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Epoch_1 ==
;                       ep(Model_85_ice, S1, Node_1),
;                       Not(le(Model_85_ice,
;                              ep(Model_85_ice, S1, Node_1),
;                              Epoch_1)),
;                       Not(le(Model_85_ice,
;                              Epoch_1,
;                              ep(Model_85_ice, S1, Node_1))))))),
;  ForAll(Node_1,
;         ForAll(Epoch_1,
;                Or(Not(locked(Model_85_ice,
;                              S1,
;                              ep(Model_85_ice, S1, Node_1),
;                              Node_1)),
;                   le(Model_85_ice,
;                      Epoch_1,
;                      ep(Model_85_ice, S1, Node_1))))),
;  And(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_85_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_85_ice,
;                                S2,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Or(held(Model_85_ice, S2, Node_1),
;                le(Model_85_ice,
;                   ep(Model_85_ice, S2, Node_1),
;                   ep(Model_85_ice, S2, Node_1)))),
;      ForAll(Node_1,
;             le(Model_85_ice,
;                ep(Model_85_ice, S2, Node_1),
;                ep(Model_85_ice, S2, Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_85_ice,
;                           S2,
;                           ep(Model_85_ice, S2, Node_1),
;                           Node_1)),
;                transfer(Model_85_ice,
;                         S2,
;                         ep(Model_85_ice, S2, Node_1),
;                         Node_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(le(Model_85_ice,
;                          ep(Model_85_ice, S2, Node_1),
;                          Epoch_1),
;                       le(Model_85_ice,
;                          Epoch_1,
;                          ep(Model_85_ice, S2, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(transfer(Model_85_ice,
;                                S2,
;                                ep(Model_85_ice, S2, Node_1),
;                                Node_1),
;                       Not(locked(Model_85_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_85_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       locked(Model_85_ice,
;                              S2,
;                              ep(Model_85_ice, S2, Node_1),
;                              Node_1)))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_85_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       le(Model_85_ice,
;                          Epoch_1,
;                          ep(Model_85_ice, S2, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Epoch_1 ==
;                       ep(Model_85_ice, S2, Node_1),
;                       Not(le(Model_85_ice,
;                              ep(Model_85_ice, S2, Node_1),
;                              Epoch_1)),
;                       Not(le(Model_85_ice,
;                              Epoch_1,
;                              ep(Model_85_ice, S2, Node_1))))))),
;  Not(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_85_ice,
;                                  S2,
;                                  ep(Model_85_ice,
;                                     S2,
;                                     Node_1),
;                                  Node_1)),
;                       le(Model_85_ice,
;                          Epoch_1,
; ...
;;;;;;;; Counter example generation constraints end ;;;;;;;;
;;;;;;;; Counter example model description: ;;;;;;;;
; ;; universe for ModelId:
; ;;   ModelId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun ModelId!val!0 () ModelId)
; ;; cardinality constraint:
; (forall ((x ModelId)) (= x ModelId!val!0))
; ;; -----------
; ;; universe for StateId:
; ;;   StateId!val!1 StateId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun StateId!val!1 () StateId)
; (declare-fun StateId!val!0 () StateId)
; ;; cardinality constraint:
; (forall ((x StateId)) (or (= x StateId!val!1) (= x StateId!val!0)))
; ;; -----------
; ;; universe for Epoch:
; ;;   Epoch!val!3 Epoch!val!0 Epoch!val!4 Epoch!val!2 Epoch!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Epoch!val!3 () Epoch)
; (declare-fun Epoch!val!0 () Epoch)
; (declare-fun Epoch!val!4 () Epoch)
; (declare-fun Epoch!val!2 () Epoch)
; (declare-fun Epoch!val!1 () Epoch)
; ;; cardinality constraint:
; (forall ((x Epoch))
;         (or (= x Epoch!val!3)
;             (= x Epoch!val!0)
;             (= x Epoch!val!4)
;             (= x Epoch!val!2)
;             (= x Epoch!val!1)))
; ;; -----------
; ;; universe for Node:
; ;;   Node!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Node!val!0 () Node)
; ;; cardinality constraint:
; (forall ((x Node)) (= x Node!val!0))
; ;; -----------
; (define-fun Model_85_ice () ModelId
;   ModelId!val!0)
; (define-fun S2 () StateId
;   StateId!val!0)
; (define-fun S1 () StateId
;   StateId!val!1)
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!1) (= x!2 Epoch!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!1))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!1))))
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (ite (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1))
;        Epoch!val!4
;        Epoch!val!3))
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0)))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1)))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!2)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!0)
;        (= x!2 Epoch!val!3)
;        (not (= x!2 Epoch!val!2))
;        (not (= x!2 Epoch!val!1))))
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (or (not (and (inv Model_85_ice S1 Node!val!0 Node!val!0)))
    (and (and (inv Model_85_ice S1 Node!val!0 Node!val!0))
         (inv Model_85_ice S2 Node!val!0 Node!val!0))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fe2e139f550>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_86_ice, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_86_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_86_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_86_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_86_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_86_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_86_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_86_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_86_ice,
;                              zero(Model_86_ice),
;                              Epoch_1),
;                           one(Model_86_ice) !=
;                           zero(Model_86_ice))))),
;  And(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_86_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_86_ice,
;                                S1,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Or(held(Model_86_ice, S1, Node_1),
;                le(Model_86_ice,
;                   ep(Model_86_ice, S1, Node_1),
;                   ep(Model_86_ice, S1, Node_1)))),
;      ForAll(Node_1,
;             le(Model_86_ice,
;                ep(Model_86_ice, S1, Node_1),
;                ep(Model_86_ice, S1, Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_86_ice,
;                           S1,
;                           ep(Model_86_ice, S1, Node_1),
;                           Node_1)),
;                transfer(Model_86_ice,
;                         S1,
;                         ep(Model_86_ice, S1, Node_1),
;                         Node_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(le(Model_86_ice,
;                          Epoch_1,
;                          ep(Model_86_ice, S1, Node_1)),
;                       le(Model_86_ice,
;                          ep(Model_86_ice, S1, Node_1),
;                          Epoch_1)))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(transfer(Model_86_ice,
;                                S1,
;                                ep(Model_86_ice, S1, Node_1),
;                                Node_1),
;                       Not(locked(Model_86_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(locked(Model_86_ice,
;                              S1,
;                              ep(Model_86_ice, S1, Node_1),
;                              Node_1),
;                       Not(locked(Model_86_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_86_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       le(Model_86_ice,
;                          Epoch_1,
;                          ep(Model_86_ice, S1, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(le(Model_86_ice,
;                              ep(Model_86_ice, S1, Node_1),
;                              Epoch_1)),
;                       Epoch_1 ==
;                       ep(Model_86_ice, S1, Node_1),
;                       Not(le(Model_86_ice,
;                              Epoch_1,
;                              ep(Model_86_ice, S1, Node_1))))))),
;  ForAll(Node_1,
;         ForAll(Epoch_1,
;                Or(Not(Or(Not(held(Model_86_ice, S1, Node_1)),
;                          transfer(Model_86_ice,
;                                   S1,
;                                   Epoch_1,
;                                   Node_1))),
;                   le(Model_86_ice,
;                      ep(Model_86_ice, S1, Node_1),
;                      Epoch_1)))),
;  And(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_86_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_86_ice,
;                                S2,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Or(held(Model_86_ice, S2, Node_1),
;                le(Model_86_ice,
;                   ep(Model_86_ice, S2, Node_1),
;                   ep(Model_86_ice, S2, Node_1)))),
;      ForAll(Node_1,
;             le(Model_86_ice,
;                ep(Model_86_ice, S2, Node_1),
;                ep(Model_86_ice, S2, Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_86_ice,
;                           S2,
;                           ep(Model_86_ice, S2, Node_1),
;                           Node_1)),
;                transfer(Model_86_ice,
;                         S2,
;                         ep(Model_86_ice, S2, Node_1),
;                         Node_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(le(Model_86_ice,
;                          Epoch_1,
;                          ep(Model_86_ice, S2, Node_1)),
;                       le(Model_86_ice,
;                          ep(Model_86_ice, S2, Node_1),
;                          Epoch_1)))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_86_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_86_ice,
;                                S2,
;                                ep(Model_86_ice, S2, Node_1),
;                                Node_1)))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_86_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       locked(Model_86_ice,
;                              S2,
;                              ep(Model_86_ice, S2, Node_1),
;                              Node_1)))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_86_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       le(Model_86_ice,
;                          Epoch_1,
;                          ep(Model_86_ice, S2, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Epoch_1 ==
;                       ep(Model_86_ice, S2, Node_1),
;                       Not(le(Model_86_ice,
;                              ep(Model_86_ice, S2, Node_1),
;                              Epoch_1)),
;                       Not(le(Model_86_ice,
;                              Epoch_1,
;                              ep(Model_86_ice, S2, Node_1))))))),
;  Not(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(Or(Not(held(Model_86_ice,
;                                       S2,
;                                       Node_1)),
;                              transfer(Model_86_ice,
;                                       S2,
;                                       Epoch_1,
;                                       Node_1))),
; ...
;;;;;;;; Counter example generation constraints end ;;;;;;;;
;;;;;;;; Counter example model description: ;;;;;;;;
; ;; universe for ModelId:
; ;;   ModelId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun ModelId!val!0 () ModelId)
; ;; cardinality constraint:
; (forall ((x ModelId)) (= x ModelId!val!0))
; ;; -----------
; ;; universe for StateId:
; ;;   StateId!val!1 StateId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun StateId!val!1 () StateId)
; (declare-fun StateId!val!0 () StateId)
; ;; cardinality constraint:
; (forall ((x StateId)) (or (= x StateId!val!1) (= x StateId!val!0)))
; ;; -----------
; ;; universe for Epoch:
; ;;   Epoch!val!3 Epoch!val!0 Epoch!val!4 Epoch!val!2 Epoch!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Epoch!val!3 () Epoch)
; (declare-fun Epoch!val!0 () Epoch)
; (declare-fun Epoch!val!4 () Epoch)
; (declare-fun Epoch!val!2 () Epoch)
; (declare-fun Epoch!val!1 () Epoch)
; ;; cardinality constraint:
; (forall ((x Epoch))
;         (or (= x Epoch!val!3)
;             (= x Epoch!val!0)
;             (= x Epoch!val!4)
;             (= x Epoch!val!2)
;             (= x Epoch!val!1)))
; ;; -----------
; ;; universe for Node:
; ;;   Node!val!0 Node!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Node!val!0 () Node)
; (declare-fun Node!val!1 () Node)
; ;; cardinality constraint:
; (forall ((x Node)) (or (= x Node!val!0) (= x Node!val!1)))
; ;; -----------
; (define-fun S1 () StateId
;   StateId!val!1)
; (define-fun S2 () StateId
;   StateId!val!0)
; (define-fun Model_86_ice () ModelId
;   ModelId!val!0)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (let ((a!1 (or (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!0)
;                       (not (= x!2 Node!val!0)))
;                  (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!1)
;                       (not (= x!2 Node!val!0))))))
;     (ite a!1 Epoch!val!4 Epoch!val!3)))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!0) (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))))
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (= x!2 Node!val!0))
;       (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (not (= x!2 Node!val!0)))
;       (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (not (= x!2 Node!val!0)))))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!0)
;        (= x!2 Epoch!val!2)
;        (not (= x!2 Epoch!val!1))
;        (not (= x!2 Epoch!val!0))
;        (not (= x!3 Node!val!0))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!0)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   false)
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_86_ice S1 Node!val!0 Node!val!0)
                (inv Model_86_ice S1 Node!val!0 Node!val!1)
                (inv Model_86_ice S1 Node!val!1 Node!val!0)
                (inv Model_86_ice S1 Node!val!1 Node!val!1))))
  (or (not a!1)
      (and a!1
           (inv Model_86_ice S2 Node!val!0 Node!val!0)
           (inv Model_86_ice S2 Node!val!0 Node!val!1)
           (inv Model_86_ice S2 Node!val!1 Node!val!0)
           (inv Model_86_ice S2 Node!val!1 Node!val!1)))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fe2e15029a0>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_87_ice, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_87_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_87_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_87_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_87_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_87_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_87_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_87_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_87_ice,
;                              zero(Model_87_ice),
;                              Epoch_1),
;                           one(Model_87_ice) !=
;                           zero(Model_87_ice))))),
;  And(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_87_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_87_ice,
;                                S1,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Or(held(Model_87_ice, S1, Node_1),
;                le(Model_87_ice,
;                   ep(Model_87_ice, S1, Node_1),
;                   ep(Model_87_ice, S1, Node_1)))),
;      ForAll(Node_1,
;             le(Model_87_ice,
;                ep(Model_87_ice, S1, Node_1),
;                ep(Model_87_ice, S1, Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_87_ice,
;                           S1,
;                           ep(Model_87_ice, S1, Node_1),
;                           Node_1)),
;                transfer(Model_87_ice,
;                         S1,
;                         ep(Model_87_ice, S1, Node_1),
;                         Node_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(le(Model_87_ice,
;                          ep(Model_87_ice, S1, Node_1),
;                          Epoch_1),
;                       le(Model_87_ice,
;                          Epoch_1,
;                          ep(Model_87_ice, S1, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(transfer(Model_87_ice,
;                                S1,
;                                ep(Model_87_ice, S1, Node_1),
;                                Node_1),
;                       Not(locked(Model_87_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(locked(Model_87_ice,
;                              S1,
;                              ep(Model_87_ice, S1, Node_1),
;                              Node_1),
;                       Not(locked(Model_87_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_87_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       le(Model_87_ice,
;                          Epoch_1,
;                          ep(Model_87_ice, S1, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(le(Model_87_ice,
;                              ep(Model_87_ice, S1, Node_1),
;                              Epoch_1)),
;                       Epoch_1 ==
;                       ep(Model_87_ice, S1, Node_1),
;                       Not(le(Model_87_ice,
;                              Epoch_1,
;                              ep(Model_87_ice, S1, Node_1))))))),
;  ForAll(Node_1,
;         ForAll(Epoch_1,
;                Or(Not(Or(Not(le(Model_87_ice,
;                                 Epoch_1,
;                                 Epoch_1)),
;                          locked(Model_87_ice,
;                                 S1,
;                                 Epoch_1,
;                                 Node_1))),
;                   ep(Model_87_ice, S1, Node_1) == Epoch_1))),
;  And(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_87_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_87_ice,
;                                S2,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Or(held(Model_87_ice, S2, Node_1),
;                le(Model_87_ice,
;                   ep(Model_87_ice, S2, Node_1),
;                   ep(Model_87_ice, S2, Node_1)))),
;      ForAll(Node_1,
;             le(Model_87_ice,
;                ep(Model_87_ice, S2, Node_1),
;                ep(Model_87_ice, S2, Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_87_ice,
;                           S2,
;                           ep(Model_87_ice, S2, Node_1),
;                           Node_1)),
;                transfer(Model_87_ice,
;                         S2,
;                         ep(Model_87_ice, S2, Node_1),
;                         Node_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(le(Model_87_ice,
;                          ep(Model_87_ice, S2, Node_1),
;                          Epoch_1),
;                       le(Model_87_ice,
;                          Epoch_1,
;                          ep(Model_87_ice, S2, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(transfer(Model_87_ice,
;                                S2,
;                                ep(Model_87_ice, S2, Node_1),
;                                Node_1),
;                       Not(locked(Model_87_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_87_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       locked(Model_87_ice,
;                              S2,
;                              ep(Model_87_ice, S2, Node_1),
;                              Node_1)))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_87_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       le(Model_87_ice,
;                          Epoch_1,
;                          ep(Model_87_ice, S2, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Epoch_1 ==
;                       ep(Model_87_ice, S2, Node_1),
;                       Not(le(Model_87_ice,
;                              ep(Model_87_ice, S2, Node_1),
;                              Epoch_1)),
;                       Not(le(Model_87_ice,
;                              Epoch_1,
;                              ep(Model_87_ice, S2, Node_1))))))),
;  Not(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(Or(Not(le(Model_87_ice,
;                                     Epoch_1,
;                                     Epoch_1)),
;                              locked(Model_87_ice,
;                                     S2,
;                                     Epoch_1,
;                                     Node_1))),
; ...
;;;;;;;; Counter example generation constraints end ;;;;;;;;
;;;;;;;; Counter example model description: ;;;;;;;;
; ;; universe for ModelId:
; ;;   ModelId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun ModelId!val!0 () ModelId)
; ;; cardinality constraint:
; (forall ((x ModelId)) (= x ModelId!val!0))
; ;; -----------
; ;; universe for StateId:
; ;;   StateId!val!1 StateId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun StateId!val!1 () StateId)
; (declare-fun StateId!val!0 () StateId)
; ;; cardinality constraint:
; (forall ((x StateId)) (or (= x StateId!val!1) (= x StateId!val!0)))
; ;; -----------
; ;; universe for Epoch:
; ;;   Epoch!val!3 Epoch!val!0 Epoch!val!2 Epoch!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Epoch!val!3 () Epoch)
; (declare-fun Epoch!val!0 () Epoch)
; (declare-fun Epoch!val!2 () Epoch)
; (declare-fun Epoch!val!1 () Epoch)
; ;; cardinality constraint:
; (forall ((x Epoch))
;         (or (= x Epoch!val!3)
;             (= x Epoch!val!0)
;             (= x Epoch!val!2)
;             (= x Epoch!val!1)))
; ;; -----------
; ;; universe for Node:
; ;;   Node!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Node!val!0 () Node)
; ;; cardinality constraint:
; (forall ((x Node)) (= x Node!val!0))
; ;; -----------
; (define-fun S1 () StateId
;   StateId!val!1)
; (define-fun Model_87_ice () ModelId
;   ModelId!val!0)
; (define-fun S2 () StateId
;   StateId!val!0)
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!1) (= x!2 Epoch!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1)))))
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (ite (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0))
;        Epoch!val!3
;        (ite (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1))
;             Epoch!val!2
;             Epoch!val!1)))
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0)))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1)))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!0)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1)))))
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (or (not (and (inv Model_87_ice S1 Node!val!0 Node!val!0)))
    (and (and (inv Model_87_ice S1 Node!val!0 Node!val!0))
         (inv Model_87_ice S2 Node!val!0 Node!val!0))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fe2e15821c0>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_88_ice, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_88_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_88_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_88_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_88_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_88_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_88_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_88_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_88_ice,
;                              zero(Model_88_ice),
;                              Epoch_1),
;                           one(Model_88_ice) !=
;                           zero(Model_88_ice))))),
;  And(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_88_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_88_ice,
;                                S1,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Or(held(Model_88_ice, S1, Node_1),
;                le(Model_88_ice,
;                   ep(Model_88_ice, S1, Node_1),
;                   ep(Model_88_ice, S1, Node_1)))),
;      ForAll(Node_1,
;             le(Model_88_ice,
;                ep(Model_88_ice, S1, Node_1),
;                ep(Model_88_ice, S1, Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_88_ice,
;                           S1,
;                           ep(Model_88_ice, S1, Node_1),
;                           Node_1)),
;                transfer(Model_88_ice,
;                         S1,
;                         ep(Model_88_ice, S1, Node_1),
;                         Node_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(le(Model_88_ice,
;                          Epoch_1,
;                          ep(Model_88_ice, S1, Node_1)),
;                       le(Model_88_ice,
;                          ep(Model_88_ice, S1, Node_1),
;                          Epoch_1)))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(transfer(Model_88_ice,
;                                S1,
;                                ep(Model_88_ice, S1, Node_1),
;                                Node_1),
;                       Not(locked(Model_88_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(locked(Model_88_ice,
;                              S1,
;                              ep(Model_88_ice, S1, Node_1),
;                              Node_1),
;                       Not(locked(Model_88_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_88_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       le(Model_88_ice,
;                          Epoch_1,
;                          ep(Model_88_ice, S1, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Epoch_1 ==
;                       ep(Model_88_ice, S1, Node_1),
;                       Not(le(Model_88_ice,
;                              ep(Model_88_ice, S1, Node_1),
;                              Epoch_1)),
;                       Not(le(Model_88_ice,
;                              Epoch_1,
;                              ep(Model_88_ice, S1, Node_1))))))),
;  ForAll(Node_1,
;         ForAll(Epoch_1,
;                Or(Not(And(held(Model_88_ice, S1, Node_1),
;                           transfer(Model_88_ice,
;                                    S1,
;                                    Epoch_1,
;                                    Node_1))),
;                   le(Model_88_ice,
;                      Epoch_1,
;                      ep(Model_88_ice, S1, Node_1))))),
;  And(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_88_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_88_ice,
;                                S2,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Or(held(Model_88_ice, S2, Node_1),
;                le(Model_88_ice,
;                   ep(Model_88_ice, S2, Node_1),
;                   ep(Model_88_ice, S2, Node_1)))),
;      ForAll(Node_1,
;             le(Model_88_ice,
;                ep(Model_88_ice, S2, Node_1),
;                ep(Model_88_ice, S2, Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_88_ice,
;                           S2,
;                           ep(Model_88_ice, S2, Node_1),
;                           Node_1)),
;                transfer(Model_88_ice,
;                         S2,
;                         ep(Model_88_ice, S2, Node_1),
;                         Node_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(le(Model_88_ice,
;                          Epoch_1,
;                          ep(Model_88_ice, S2, Node_1)),
;                       le(Model_88_ice,
;                          ep(Model_88_ice, S2, Node_1),
;                          Epoch_1)))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(transfer(Model_88_ice,
;                                S2,
;                                ep(Model_88_ice, S2, Node_1),
;                                Node_1),
;                       Not(locked(Model_88_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(locked(Model_88_ice,
;                              S2,
;                              ep(Model_88_ice, S2, Node_1),
;                              Node_1),
;                       Not(locked(Model_88_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_88_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       le(Model_88_ice,
;                          Epoch_1,
;                          ep(Model_88_ice, S2, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Epoch_1 ==
;                       ep(Model_88_ice, S2, Node_1),
;                       Not(le(Model_88_ice,
;                              ep(Model_88_ice, S2, Node_1),
;                              Epoch_1)),
;                       Not(le(Model_88_ice,
;                              Epoch_1,
;                              ep(Model_88_ice, S2, Node_1))))))),
;  Not(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(And(held(Model_88_ice, S2, Node_1),
;                               transfer(Model_88_ice,
;                                        S2,
;                                        Epoch_1,
;                                        Node_1))),
;                       le(Model_88_ice,
;                          Epoch_1,
; ...
;;;;;;;; Counter example generation constraints end ;;;;;;;;
;;;;;;;; Counter example model description: ;;;;;;;;
; ;; universe for ModelId:
; ;;   ModelId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun ModelId!val!0 () ModelId)
; ;; cardinality constraint:
; (forall ((x ModelId)) (= x ModelId!val!0))
; ;; -----------
; ;; universe for StateId:
; ;;   StateId!val!1 StateId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun StateId!val!1 () StateId)
; (declare-fun StateId!val!0 () StateId)
; ;; cardinality constraint:
; (forall ((x StateId)) (or (= x StateId!val!1) (= x StateId!val!0)))
; ;; -----------
; ;; universe for Epoch:
; ;;   Epoch!val!3 Epoch!val!0 Epoch!val!4 Epoch!val!2 Epoch!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Epoch!val!3 () Epoch)
; (declare-fun Epoch!val!0 () Epoch)
; (declare-fun Epoch!val!4 () Epoch)
; (declare-fun Epoch!val!2 () Epoch)
; (declare-fun Epoch!val!1 () Epoch)
; ;; cardinality constraint:
; (forall ((x Epoch))
;         (or (= x Epoch!val!3)
;             (= x Epoch!val!0)
;             (= x Epoch!val!4)
;             (= x Epoch!val!2)
;             (= x Epoch!val!1)))
; ;; -----------
; ;; universe for Node:
; ;;   Node!val!0 Node!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Node!val!0 () Node)
; (declare-fun Node!val!1 () Node)
; ;; cardinality constraint:
; (forall ((x Node)) (or (= x Node!val!0) (= x Node!val!1)))
; ;; -----------
; (define-fun S1 () StateId
;   StateId!val!1)
; (define-fun Model_88_ice () ModelId
;   ModelId!val!0)
; (define-fun S2 () StateId
;   StateId!val!0)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (ite (or (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!1))
;            (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (= x!2 Node!val!1)))
;        Epoch!val!4
;        Epoch!val!3))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!0) (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!0))))
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!1))
;       (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (= x!2 Node!val!1))
;       (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (not (= x!2 Node!val!1)))))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!0)
;        (= x!2 Epoch!val!2)
;        (not (= x!2 Epoch!val!3))
;        (not (= x!2 Epoch!val!1))
;        (not (= x!2 Epoch!val!0))
;        (= x!3 Node!val!1)))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!0)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   false)
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_88_ice S1 Node!val!0 Node!val!0)
                (inv Model_88_ice S1 Node!val!0 Node!val!1)
                (inv Model_88_ice S1 Node!val!1 Node!val!0)
                (inv Model_88_ice S1 Node!val!1 Node!val!1))))
  (or (not a!1)
      (and a!1
           (inv Model_88_ice S2 Node!val!0 Node!val!0)
           (inv Model_88_ice S2 Node!val!0 Node!val!1)
           (inv Model_88_ice S2 Node!val!1 Node!val!0)
           (inv Model_88_ice S2 Node!val!1 Node!val!1)))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fe2e15f25e0>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_89_ice, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_89_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_89_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_89_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_89_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_89_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_89_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_89_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_89_ice,
;                              zero(Model_89_ice),
;                              Epoch_1),
;                           one(Model_89_ice) !=
;                           zero(Model_89_ice))))),
;  And(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_89_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_89_ice,
;                                S1,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Or(held(Model_89_ice, S1, Node_1),
;                le(Model_89_ice,
;                   ep(Model_89_ice, S1, Node_1),
;                   ep(Model_89_ice, S1, Node_1)))),
;      ForAll(Node_1,
;             le(Model_89_ice,
;                ep(Model_89_ice, S1, Node_1),
;                ep(Model_89_ice, S1, Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_89_ice,
;                           S1,
;                           ep(Model_89_ice, S1, Node_1),
;                           Node_1)),
;                transfer(Model_89_ice,
;                         S1,
;                         ep(Model_89_ice, S1, Node_1),
;                         Node_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(le(Model_89_ice,
;                          ep(Model_89_ice, S1, Node_1),
;                          Epoch_1),
;                       le(Model_89_ice,
;                          Epoch_1,
;                          ep(Model_89_ice, S1, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_89_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_89_ice,
;                                S1,
;                                ep(Model_89_ice, S1, Node_1),
;                                Node_1)))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_89_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       locked(Model_89_ice,
;                              S1,
;                              ep(Model_89_ice, S1, Node_1),
;                              Node_1)))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_89_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       le(Model_89_ice,
;                          Epoch_1,
;                          ep(Model_89_ice, S1, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(le(Model_89_ice,
;                              ep(Model_89_ice, S1, Node_1),
;                              Epoch_1)),
;                       Epoch_1 ==
;                       ep(Model_89_ice, S1, Node_1),
;                       Not(le(Model_89_ice,
;                              Epoch_1,
;                              ep(Model_89_ice, S1, Node_1))))))),
;  ForAll(Node_1,
;         ForAll(Epoch_1,
;                ForAll(Epoch_2,
;                       Or(Not(And(locked(Model_89_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_1),
;                                  locked(Model_89_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_1))),
;                          And(le(Model_89_ice,
;                                 Epoch_2,
;                                 Epoch_1),
;                              held(Model_89_ice, S1, Node_1)))))),
;  And(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_89_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_89_ice,
;                                S2,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Or(held(Model_89_ice, S2, Node_1),
;                le(Model_89_ice,
;                   ep(Model_89_ice, S2, Node_1),
;                   ep(Model_89_ice, S2, Node_1)))),
;      ForAll(Node_1,
;             le(Model_89_ice,
;                ep(Model_89_ice, S2, Node_1),
;                ep(Model_89_ice, S2, Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_89_ice,
;                           S2,
;                           ep(Model_89_ice, S2, Node_1),
;                           Node_1)),
;                transfer(Model_89_ice,
;                         S2,
;                         ep(Model_89_ice, S2, Node_1),
;                         Node_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(le(Model_89_ice,
;                          ep(Model_89_ice, S2, Node_1),
;                          Epoch_1),
;                       le(Model_89_ice,
;                          Epoch_1,
;                          ep(Model_89_ice, S2, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(transfer(Model_89_ice,
;                                S2,
;                                ep(Model_89_ice, S2, Node_1),
;                                Node_1),
;                       Not(locked(Model_89_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(locked(Model_89_ice,
;                              S2,
;                              ep(Model_89_ice, S2, Node_1),
;                              Node_1),
;                       Not(locked(Model_89_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_89_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       le(Model_89_ice,
;                          Epoch_1,
;                          ep(Model_89_ice, S2, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(le(Model_89_ice,
;                              ep(Model_89_ice, S2, Node_1),
;                              Epoch_1)),
;                       Not(le(Model_89_ice,
;                              Epoch_1,
;                              ep(Model_89_ice, S2, Node_1))),
;                       Epoch_1 ==
;                       ep(Model_89_ice, S2, Node_1))))),
;  Not(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    ForAll(Epoch_2,
;                           Or(Not(And(locked(Model_89_ice,
; ...
;;;;;;;; Counter example generation constraints end ;;;;;;;;
;;;;;;;; Counter example model description: ;;;;;;;;
; ;; universe for ModelId:
; ;;   ModelId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun ModelId!val!0 () ModelId)
; ;; cardinality constraint:
; (forall ((x ModelId)) (= x ModelId!val!0))
; ;; -----------
; ;; universe for StateId:
; ;;   StateId!val!1 StateId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun StateId!val!1 () StateId)
; (declare-fun StateId!val!0 () StateId)
; ;; cardinality constraint:
; (forall ((x StateId)) (or (= x StateId!val!1) (= x StateId!val!0)))
; ;; -----------
; ;; universe for Epoch:
; ;;   Epoch!val!3 Epoch!val!0 Epoch!val!4 Epoch!val!2 Epoch!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Epoch!val!3 () Epoch)
; (declare-fun Epoch!val!0 () Epoch)
; (declare-fun Epoch!val!4 () Epoch)
; (declare-fun Epoch!val!2 () Epoch)
; (declare-fun Epoch!val!1 () Epoch)
; ;; cardinality constraint:
; (forall ((x Epoch))
;         (or (= x Epoch!val!3)
;             (= x Epoch!val!0)
;             (= x Epoch!val!4)
;             (= x Epoch!val!2)
;             (= x Epoch!val!1)))
; ;; -----------
; ;; universe for Node:
; ;;   Node!val!0 Node!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Node!val!0 () Node)
; (declare-fun Node!val!1 () Node)
; ;; cardinality constraint:
; (forall ((x Node)) (or (= x Node!val!0) (= x Node!val!1)))
; ;; -----------
; (define-fun Model_89_ice () ModelId
;   ModelId!val!0)
; (define-fun S2 () StateId
;   StateId!val!0)
; (define-fun S1 () StateId
;   StateId!val!1)
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!2) (= x!2 Epoch!val!2))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!2))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!2))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!2))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!2))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!2)))))
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (let ((a!1 (or (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!0)
;                       (not (= x!2 Node!val!0)))
;                  (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!1)
;                       (not (= x!2 Node!val!0)))))
;         (a!2 (ite (or (and (= x!0 ModelId!val!0)
;                            (= x!1 StateId!val!0)
;                            (= x!2 Node!val!0))
;                       (and (= x!0 ModelId!val!0)
;                            (= x!1 StateId!val!1)
;                            (= x!2 Node!val!0)))
;                   Epoch!val!3
;                   Epoch!val!0)))
;     (ite a!1 Epoch!val!4 a!2)))
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (= x!2 Node!val!0)))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!2)
;            (not (= x!3 Node!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!2))
;            (= x!3 Node!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!2))
;            (= x!3 Node!val!0))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!0)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!2))
;            (= x!3 Node!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!2))
;            (= x!3 Node!val!0))))
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_89_ice S1 Node!val!0 Node!val!0)
                (inv Model_89_ice S1 Node!val!0 Node!val!1)
                (inv Model_89_ice S1 Node!val!1 Node!val!0)
                (inv Model_89_ice S1 Node!val!1 Node!val!1))))
  (or (not a!1)
      (and a!1
           (inv Model_89_ice S2 Node!val!0 Node!val!0)
           (inv Model_89_ice S2 Node!val!0 Node!val!1)
           (inv Model_89_ice S2 Node!val!1 Node!val!0)
           (inv Model_89_ice S2 Node!val!1 Node!val!1)))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fe2e13b0ca0>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_90_ice, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_90_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_90_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_90_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_90_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_90_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_90_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_90_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_90_ice,
;                              zero(Model_90_ice),
;                              Epoch_1),
;                           one(Model_90_ice) !=
;                           zero(Model_90_ice))))),
;  And(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_90_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_90_ice,
;                                S1,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Or(held(Model_90_ice, S1, Node_1),
;                le(Model_90_ice,
;                   ep(Model_90_ice, S1, Node_1),
;                   ep(Model_90_ice, S1, Node_1)))),
;      ForAll(Node_1,
;             le(Model_90_ice,
;                ep(Model_90_ice, S1, Node_1),
;                ep(Model_90_ice, S1, Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_90_ice,
;                           S1,
;                           ep(Model_90_ice, S1, Node_1),
;                           Node_1)),
;                transfer(Model_90_ice,
;                         S1,
;                         ep(Model_90_ice, S1, Node_1),
;                         Node_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(le(Model_90_ice,
;                          Epoch_1,
;                          ep(Model_90_ice, S1, Node_1)),
;                       le(Model_90_ice,
;                          ep(Model_90_ice, S1, Node_1),
;                          Epoch_1)))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_90_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_90_ice,
;                                S1,
;                                ep(Model_90_ice, S1, Node_1),
;                                Node_1)))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(locked(Model_90_ice,
;                              S1,
;                              ep(Model_90_ice, S1, Node_1),
;                              Node_1),
;                       Not(locked(Model_90_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_90_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       le(Model_90_ice,
;                          Epoch_1,
;                          ep(Model_90_ice, S1, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(le(Model_90_ice,
;                              Epoch_1,
;                              ep(Model_90_ice, S1, Node_1))),
;                       Not(le(Model_90_ice,
;                              ep(Model_90_ice, S1, Node_1),
;                              Epoch_1)),
;                       Epoch_1 ==
;                       ep(Model_90_ice, S1, Node_1))))),
;  ForAll(Node_1,
;         ForAll(Epoch_1,
;                ForAll(Epoch_2,
;                       Or(Not(And(locked(Model_90_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_1),
;                                  transfer(Model_90_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_1))),
;                          Epoch_2 ==
;                          ep(Model_90_ice, S1, Node_1))))),
;  And(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_90_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_90_ice,
;                                S2,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Or(held(Model_90_ice, S2, Node_1),
;                le(Model_90_ice,
;                   ep(Model_90_ice, S2, Node_1),
;                   ep(Model_90_ice, S2, Node_1)))),
;      ForAll(Node_1,
;             le(Model_90_ice,
;                ep(Model_90_ice, S2, Node_1),
;                ep(Model_90_ice, S2, Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_90_ice,
;                           S2,
;                           ep(Model_90_ice, S2, Node_1),
;                           Node_1)),
;                transfer(Model_90_ice,
;                         S2,
;                         ep(Model_90_ice, S2, Node_1),
;                         Node_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(le(Model_90_ice,
;                          ep(Model_90_ice, S2, Node_1),
;                          Epoch_1),
;                       le(Model_90_ice,
;                          Epoch_1,
;                          ep(Model_90_ice, S2, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(transfer(Model_90_ice,
;                                S2,
;                                ep(Model_90_ice, S2, Node_1),
;                                Node_1),
;                       Not(locked(Model_90_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(locked(Model_90_ice,
;                              S2,
;                              ep(Model_90_ice, S2, Node_1),
;                              Node_1),
;                       Not(locked(Model_90_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_90_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       le(Model_90_ice,
;                          Epoch_1,
;                          ep(Model_90_ice, S2, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Epoch_1 ==
;                       ep(Model_90_ice, S2, Node_1),
;                       Not(le(Model_90_ice,
;                              ep(Model_90_ice, S2, Node_1),
;                              Epoch_1)),
;                       Not(le(Model_90_ice,
;                              Epoch_1,
;                              ep(Model_90_ice, S2, Node_1))))))),
;  Not(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    ForAll(Epoch_2,
;                           Or(Not(And(locked(Model_90_ice,
;                                         S2,
;                                         Epoch_1,
; ...
;;;;;;;; Counter example generation constraints end ;;;;;;;;
;;;;;;;; Counter example model description: ;;;;;;;;
; ;; universe for ModelId:
; ;;   ModelId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun ModelId!val!0 () ModelId)
; ;; cardinality constraint:
; (forall ((x ModelId)) (= x ModelId!val!0))
; ;; -----------
; ;; universe for StateId:
; ;;   StateId!val!1 StateId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun StateId!val!1 () StateId)
; (declare-fun StateId!val!0 () StateId)
; ;; cardinality constraint:
; (forall ((x StateId)) (or (= x StateId!val!1) (= x StateId!val!0)))
; ;; -----------
; ;; universe for Epoch:
; ;;   Epoch!val!3 Epoch!val!0 Epoch!val!4 Epoch!val!2 Epoch!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Epoch!val!3 () Epoch)
; (declare-fun Epoch!val!0 () Epoch)
; (declare-fun Epoch!val!4 () Epoch)
; (declare-fun Epoch!val!2 () Epoch)
; (declare-fun Epoch!val!1 () Epoch)
; ;; cardinality constraint:
; (forall ((x Epoch))
;         (or (= x Epoch!val!3)
;             (= x Epoch!val!0)
;             (= x Epoch!val!4)
;             (= x Epoch!val!2)
;             (= x Epoch!val!1)))
; ;; -----------
; ;; universe for Node:
; ;;   Node!val!0 Node!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Node!val!0 () Node)
; (declare-fun Node!val!1 () Node)
; ;; cardinality constraint:
; (forall ((x Node)) (or (= x Node!val!0) (= x Node!val!1)))
; ;; -----------
; (define-fun S1 () StateId
;   StateId!val!1)
; (define-fun S2 () StateId
;   StateId!val!0)
; (define-fun Model_90_ice () ModelId
;   ModelId!val!0)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (ite (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (= x!2 Node!val!1))
;     Epoch!val!4
;     (let ((a!1 (or (and (= x!0 ModelId!val!0)
;                         (= x!1 StateId!val!0)
;                         (not (= x!2 Node!val!1)))
;                    (and (= x!0 ModelId!val!0)
;                         (= x!1 StateId!val!1)
;                         (not (= x!2 Node!val!1))))))
;       (ite a!1
;            Epoch!val!3
;            (ite (and (= x!0 ModelId!val!0)
;                      (= x!1 StateId!val!0)
;                      (= x!2 Node!val!1))
;                 Epoch!val!4
;                 Epoch!val!1)))))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!2) (= x!2 Epoch!val!2))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!2))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!2))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!2))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2)))))
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (not (= x!2 Node!val!1))))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!2)
;            (= x!3 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (= x!3 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (= x!3 Node!val!1))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!0)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (= x!3 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (= x!3 Node!val!1))))
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_90_ice S1 Node!val!0 Node!val!0)
                (inv Model_90_ice S1 Node!val!0 Node!val!1)
                (inv Model_90_ice S1 Node!val!1 Node!val!0)
                (inv Model_90_ice S1 Node!val!1 Node!val!1))))
  (or (not a!1)
      (and a!1
           (inv Model_90_ice S2 Node!val!0 Node!val!0)
           (inv Model_90_ice S2 Node!val!0 Node!val!1)
           (inv Model_90_ice S2 Node!val!1 Node!val!0)
           (inv Model_90_ice S2 Node!val!1 Node!val!1)))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fe2e13daa00>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_91_ice, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_91_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_91_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_91_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_91_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_91_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_91_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_91_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_91_ice,
;                              zero(Model_91_ice),
;                              Epoch_1),
;                           one(Model_91_ice) !=
;                           zero(Model_91_ice))))),
;  And(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_91_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_91_ice,
;                                S1,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Or(held(Model_91_ice, S1, Node_1),
;                le(Model_91_ice,
;                   ep(Model_91_ice, S1, Node_1),
;                   ep(Model_91_ice, S1, Node_1)))),
;      ForAll(Node_1,
;             le(Model_91_ice,
;                ep(Model_91_ice, S1, Node_1),
;                ep(Model_91_ice, S1, Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_91_ice,
;                           S1,
;                           ep(Model_91_ice, S1, Node_1),
;                           Node_1)),
;                transfer(Model_91_ice,
;                         S1,
;                         ep(Model_91_ice, S1, Node_1),
;                         Node_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(le(Model_91_ice,
;                          ep(Model_91_ice, S1, Node_1),
;                          Epoch_1),
;                       le(Model_91_ice,
;                          Epoch_1,
;                          ep(Model_91_ice, S1, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(transfer(Model_91_ice,
;                                S1,
;                                ep(Model_91_ice, S1, Node_1),
;                                Node_1),
;                       Not(locked(Model_91_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_91_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       locked(Model_91_ice,
;                              S1,
;                              ep(Model_91_ice, S1, Node_1),
;                              Node_1)))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_91_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       le(Model_91_ice,
;                          Epoch_1,
;                          ep(Model_91_ice, S1, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(le(Model_91_ice,
;                              Epoch_1,
;                              ep(Model_91_ice, S1, Node_1))),
;                       Epoch_1 ==
;                       ep(Model_91_ice, S1, Node_1),
;                       Not(le(Model_91_ice,
;                              ep(Model_91_ice, S1, Node_1),
;                              Epoch_1)))))),
;  ForAll(Node_1,
;         Or(Not(transfer(Model_91_ice,
;                         S1,
;                         ep(Model_91_ice, S1, Node_1),
;                         Node_1)),
;            locked(Model_91_ice,
;                   S1,
;                   ep(Model_91_ice, S1, Node_1),
;                   Node_1),
;            Not(Or(Not(le(Model_91_ice,
;                          ep(Model_91_ice, S1, Node_1),
;                          ep(Model_91_ice, S1, Node_1))),
;                   held(Model_91_ice, S1, Node_1))))),
;  And(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_91_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_91_ice,
;                                S2,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Or(held(Model_91_ice, S2, Node_1),
;                le(Model_91_ice,
;                   ep(Model_91_ice, S2, Node_1),
;                   ep(Model_91_ice, S2, Node_1)))),
;      ForAll(Node_1,
;             le(Model_91_ice,
;                ep(Model_91_ice, S2, Node_1),
;                ep(Model_91_ice, S2, Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_91_ice,
;                           S2,
;                           ep(Model_91_ice, S2, Node_1),
;                           Node_1)),
;                transfer(Model_91_ice,
;                         S2,
;                         ep(Model_91_ice, S2, Node_1),
;                         Node_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(le(Model_91_ice,
;                          Epoch_1,
;                          ep(Model_91_ice, S2, Node_1)),
;                       le(Model_91_ice,
;                          ep(Model_91_ice, S2, Node_1),
;                          Epoch_1)))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(transfer(Model_91_ice,
;                                S2,
;                                ep(Model_91_ice, S2, Node_1),
;                                Node_1),
;                       Not(locked(Model_91_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(locked(Model_91_ice,
;                              S2,
;                              ep(Model_91_ice, S2, Node_1),
;                              Node_1),
;                       Not(locked(Model_91_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_91_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       le(Model_91_ice,
;                          Epoch_1,
;                          ep(Model_91_ice, S2, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(le(Model_91_ice,
;                              ep(Model_91_ice, S2, Node_1),
;                              Epoch_1)),
;                       Not(le(Model_91_ice,
;                              Epoch_1,
;                              ep(Model_91_ice, S2, Node_1))),
;                       Epoch_1 ==
;                       ep(Model_91_ice, S2, Node_1))))),
;  Not(ForAll(Node_1,
;             Or(Not(transfer(Model_91_ice,
;                             S2,
;                             ep(Model_91_ice, S2, Node_1),
;                             Node_1)),
;                Not(Or(Not(le(Model_91_ice,
; ...
;;;;;;;; Counter example generation constraints end ;;;;;;;;
;;;;;;;; Counter example model description: ;;;;;;;;
; ;; universe for ModelId:
; ;;   ModelId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun ModelId!val!0 () ModelId)
; ;; cardinality constraint:
; (forall ((x ModelId)) (= x ModelId!val!0))
; ;; -----------
; ;; universe for StateId:
; ;;   StateId!val!1 StateId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun StateId!val!1 () StateId)
; (declare-fun StateId!val!0 () StateId)
; ;; cardinality constraint:
; (forall ((x StateId)) (or (= x StateId!val!1) (= x StateId!val!0)))
; ;; -----------
; ;; universe for Epoch:
; ;;   Epoch!val!3 Epoch!val!0 Epoch!val!2 Epoch!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Epoch!val!3 () Epoch)
; (declare-fun Epoch!val!0 () Epoch)
; (declare-fun Epoch!val!2 () Epoch)
; (declare-fun Epoch!val!1 () Epoch)
; ;; cardinality constraint:
; (forall ((x Epoch))
;         (or (= x Epoch!val!3)
;             (= x Epoch!val!0)
;             (= x Epoch!val!2)
;             (= x Epoch!val!1)))
; ;; -----------
; ;; universe for Node:
; ;;   Node!val!0 Node!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Node!val!0 () Node)
; (declare-fun Node!val!1 () Node)
; ;; cardinality constraint:
; (forall ((x Node)) (or (= x Node!val!0) (= x Node!val!1)))
; ;; -----------
; (define-fun Model_91_ice () ModelId
;   ModelId!val!0)
; (define-fun S2 () StateId
;   StateId!val!0)
; (define-fun S1 () StateId
;   StateId!val!1)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (ite (or (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!0))
;            (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (= x!2 Node!val!0)))
;        Epoch!val!2
;        Epoch!val!3))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!0) (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!0))))
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (= x!2 Node!val!0))
;       (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (not (= x!2 Node!val!0)))
;       (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (not (= x!2 Node!val!0)))))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!0)
;        (= x!2 Epoch!val!3)
;        (not (= x!2 Epoch!val!0))
;        (not (= x!3 Node!val!0))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!0)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   false)
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_91_ice S1 Node!val!0 Node!val!0)
                (inv Model_91_ice S1 Node!val!0 Node!val!1)
                (inv Model_91_ice S1 Node!val!1 Node!val!0)
                (inv Model_91_ice S1 Node!val!1 Node!val!1))))
  (or (not a!1)
      (and a!1
           (inv Model_91_ice S2 Node!val!0 Node!val!0)
           (inv Model_91_ice S2 Node!val!0 Node!val!1)
           (inv Model_91_ice S2 Node!val!1 Node!val!0)
           (inv Model_91_ice S2 Node!val!1 Node!val!1)))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fe2e15890a0>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_92_ice, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_92_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_92_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_92_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_92_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_92_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_92_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_92_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_92_ice,
;                              zero(Model_92_ice),
;                              Epoch_1),
;                           one(Model_92_ice) !=
;                           zero(Model_92_ice))))),
;  And(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_92_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_92_ice,
;                                S1,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Or(held(Model_92_ice, S1, Node_1),
;                le(Model_92_ice,
;                   ep(Model_92_ice, S1, Node_1),
;                   ep(Model_92_ice, S1, Node_1)))),
;      ForAll(Node_1,
;             le(Model_92_ice,
;                ep(Model_92_ice, S1, Node_1),
;                ep(Model_92_ice, S1, Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_92_ice,
;                           S1,
;                           ep(Model_92_ice, S1, Node_1),
;                           Node_1)),
;                transfer(Model_92_ice,
;                         S1,
;                         ep(Model_92_ice, S1, Node_1),
;                         Node_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(le(Model_92_ice,
;                          ep(Model_92_ice, S1, Node_1),
;                          Epoch_1),
;                       le(Model_92_ice,
;                          Epoch_1,
;                          ep(Model_92_ice, S1, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(transfer(Model_92_ice,
;                                S1,
;                                ep(Model_92_ice, S1, Node_1),
;                                Node_1),
;                       Not(locked(Model_92_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(locked(Model_92_ice,
;                              S1,
;                              ep(Model_92_ice, S1, Node_1),
;                              Node_1),
;                       Not(locked(Model_92_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_92_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       le(Model_92_ice,
;                          Epoch_1,
;                          ep(Model_92_ice, S1, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Epoch_1 ==
;                       ep(Model_92_ice, S1, Node_1),
;                       Not(le(Model_92_ice,
;                              ep(Model_92_ice, S1, Node_1),
;                              Epoch_1)),
;                       Not(le(Model_92_ice,
;                              Epoch_1,
;                              ep(Model_92_ice, S1, Node_1))))))),
;  ForAll(Node_1,
;         ForAll(Node_2,
;                And(Or(Not(held(Model_92_ice, S1, Node_2)),
;                       le(Model_92_ice,
;                          ep(Model_92_ice, S1, Node_1),
;                          ep(Model_92_ice, S1, Node_2))),
;                    Or(Not(transfer(Model_92_ice,
;                                    S1,
;                                    ep(Model_92_ice,
;                                       S1,
;                                       Node_1),
;                                    Node_1)),
;                       locked(Model_92_ice,
;                              S1,
;                              ep(Model_92_ice, S1, Node_2),
;                              Node_1))))),
;  And(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_92_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_92_ice,
;                                S2,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Or(held(Model_92_ice, S2, Node_1),
;                le(Model_92_ice,
;                   ep(Model_92_ice, S2, Node_1),
;                   ep(Model_92_ice, S2, Node_1)))),
;      ForAll(Node_1,
;             le(Model_92_ice,
;                ep(Model_92_ice, S2, Node_1),
;                ep(Model_92_ice, S2, Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_92_ice,
;                           S2,
;                           ep(Model_92_ice, S2, Node_1),
;                           Node_1)),
;                transfer(Model_92_ice,
;                         S2,
;                         ep(Model_92_ice, S2, Node_1),
;                         Node_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(le(Model_92_ice,
;                          ep(Model_92_ice, S2, Node_1),
;                          Epoch_1),
;                       le(Model_92_ice,
;                          Epoch_1,
;                          ep(Model_92_ice, S2, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(transfer(Model_92_ice,
;                                S2,
;                                ep(Model_92_ice, S2, Node_1),
;                                Node_1),
;                       Not(locked(Model_92_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(locked(Model_92_ice,
;                              S2,
;                              ep(Model_92_ice, S2, Node_1),
;                              Node_1),
;                       Not(locked(Model_92_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_92_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       le(Model_92_ice,
;                          Epoch_1,
;                          ep(Model_92_ice, S2, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Epoch_1 ==
;                       ep(Model_92_ice, S2, Node_1),
;                       Not(le(Model_92_ice,
;                              ep(Model_92_ice, S2, Node_1),
;                              Epoch_1)),
;                       Not(le(Model_92_ice,
;                              Epoch_1,
;                              ep(Model_92_ice, S2, Node_1))))))),
;  Not(ForAll(Node_1,
;             ForAll(Node_2,
;                    And(Or(Not(held(Model_92_ice, S2, Node_2)),
; ...
;;;;;;;; Counter example generation constraints end ;;;;;;;;
;;;;;;;; Counter example model description: ;;;;;;;;
; ;; universe for ModelId:
; ;;   ModelId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun ModelId!val!0 () ModelId)
; ;; cardinality constraint:
; (forall ((x ModelId)) (= x ModelId!val!0))
; ;; -----------
; ;; universe for StateId:
; ;;   StateId!val!1 StateId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun StateId!val!1 () StateId)
; (declare-fun StateId!val!0 () StateId)
; ;; cardinality constraint:
; (forall ((x StateId)) (or (= x StateId!val!1) (= x StateId!val!0)))
; ;; -----------
; ;; universe for Node:
; ;;   Node!val!0 Node!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Node!val!0 () Node)
; (declare-fun Node!val!1 () Node)
; ;; cardinality constraint:
; (forall ((x Node)) (or (= x Node!val!0) (= x Node!val!1)))
; ;; -----------
; ;; universe for Epoch:
; ;;   Epoch!val!3 Epoch!val!0 Epoch!val!4 Epoch!val!2 Epoch!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Epoch!val!3 () Epoch)
; (declare-fun Epoch!val!0 () Epoch)
; (declare-fun Epoch!val!4 () Epoch)
; (declare-fun Epoch!val!2 () Epoch)
; (declare-fun Epoch!val!1 () Epoch)
; ;; cardinality constraint:
; (forall ((x Epoch))
;         (or (= x Epoch!val!3)
;             (= x Epoch!val!0)
;             (= x Epoch!val!4)
;             (= x Epoch!val!2)
;             (= x Epoch!val!1)))
; ;; -----------
; (define-fun S2 () StateId
;   StateId!val!0)
; (define-fun S1 () StateId
;   StateId!val!1)
; (define-fun Model_92_ice () ModelId
;   ModelId!val!0)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!0)
;        (= x!2 Epoch!val!4)
;        (not (= x!2 Epoch!val!0))
;        (= x!3 Node!val!1)))
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (ite (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!1))
;     Epoch!val!4
;   (ite (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (= x!2 Node!val!1))
;     Epoch!val!0
;     Epoch!val!3)))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!0) (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!0)))))
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!1)))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!2)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!1)
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_92_ice S1 Node!val!0 Node!val!0)
                (inv Model_92_ice S1 Node!val!0 Node!val!1)
                (inv Model_92_ice S1 Node!val!1 Node!val!0)
                (inv Model_92_ice S1 Node!val!1 Node!val!1))))
  (or (not a!1)
      (and a!1
           (inv Model_92_ice S2 Node!val!0 Node!val!0)
           (inv Model_92_ice S2 Node!val!0 Node!val!1)
           (inv Model_92_ice S2 Node!val!1 Node!val!0)
           (inv Model_92_ice S2 Node!val!1 Node!val!1)))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fe2e1541250>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_93_ice, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_93_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_93_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_93_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_93_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_93_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_93_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_93_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_93_ice,
;                              zero(Model_93_ice),
;                              Epoch_1),
;                           one(Model_93_ice) !=
;                           zero(Model_93_ice))))),
;  And(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_93_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_93_ice,
;                                S1,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Or(held(Model_93_ice, S1, Node_1),
;                le(Model_93_ice,
;                   ep(Model_93_ice, S1, Node_1),
;                   ep(Model_93_ice, S1, Node_1)))),
;      ForAll(Node_1,
;             le(Model_93_ice,
;                ep(Model_93_ice, S1, Node_1),
;                ep(Model_93_ice, S1, Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_93_ice,
;                           S1,
;                           ep(Model_93_ice, S1, Node_1),
;                           Node_1)),
;                transfer(Model_93_ice,
;                         S1,
;                         ep(Model_93_ice, S1, Node_1),
;                         Node_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(le(Model_93_ice,
;                          Epoch_1,
;                          ep(Model_93_ice, S1, Node_1)),
;                       le(Model_93_ice,
;                          ep(Model_93_ice, S1, Node_1),
;                          Epoch_1)))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_93_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_93_ice,
;                                S1,
;                                ep(Model_93_ice, S1, Node_1),
;                                Node_1)))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(locked(Model_93_ice,
;                              S1,
;                              ep(Model_93_ice, S1, Node_1),
;                              Node_1),
;                       Not(locked(Model_93_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_93_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       le(Model_93_ice,
;                          Epoch_1,
;                          ep(Model_93_ice, S1, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(le(Model_93_ice,
;                              ep(Model_93_ice, S1, Node_1),
;                              Epoch_1)),
;                       Not(le(Model_93_ice,
;                              Epoch_1,
;                              ep(Model_93_ice, S1, Node_1))),
;                       Epoch_1 ==
;                       ep(Model_93_ice, S1, Node_1))))),
;  ForAll(Node_1,
;         ForAll(Node_2,
;                Or(Not(le(Model_93_ice,
;                          ep(Model_93_ice, S1, Node_1),
;                          ep(Model_93_ice, S1, Node_2))),
;                   locked(Model_93_ice,
;                          S1,
;                          ep(Model_93_ice, S1, Node_1),
;                          Node_1),
;                   Not(Or(Not(Or(Not(held(Model_93_ice,
;                                         S1,
;                                         Node_1)),
;                                 Node_2 == Node_1)),
;                          transfer(Model_93_ice,
;                                   S1,
;                                   ep(Model_93_ice,
;                                      S1,
;                                      Node_1),
;                                   Node_2)))))),
;  And(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_93_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_93_ice,
;                                S2,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Or(held(Model_93_ice, S2, Node_1),
;                le(Model_93_ice,
;                   ep(Model_93_ice, S2, Node_1),
;                   ep(Model_93_ice, S2, Node_1)))),
;      ForAll(Node_1,
;             le(Model_93_ice,
;                ep(Model_93_ice, S2, Node_1),
;                ep(Model_93_ice, S2, Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_93_ice,
;                           S2,
;                           ep(Model_93_ice, S2, Node_1),
;                           Node_1)),
;                transfer(Model_93_ice,
;                         S2,
;                         ep(Model_93_ice, S2, Node_1),
;                         Node_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(le(Model_93_ice,
;                          ep(Model_93_ice, S2, Node_1),
;                          Epoch_1),
;                       le(Model_93_ice,
;                          Epoch_1,
;                          ep(Model_93_ice, S2, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(transfer(Model_93_ice,
;                                S2,
;                                ep(Model_93_ice, S2, Node_1),
;                                Node_1),
;                       Not(locked(Model_93_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_93_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       locked(Model_93_ice,
;                              S2,
;                              ep(Model_93_ice, S2, Node_1),
;                              Node_1)))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_93_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       le(Model_93_ice,
;                          Epoch_1,
;                          ep(Model_93_ice, S2, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(le(Model_93_ice,
;                              Epoch_1,
;                              ep(Model_93_ice, S2, Node_1))),
;                       Not(le(Model_93_ice,
;                              ep(Model_93_ice, S2, Node_1),
;                              Epoch_1)),
;                       Epoch_1 ==
;                       ep(Model_93_ice, S2, Node_1))))),
; ...
;;;;;;;; Counter example generation constraints end ;;;;;;;;
;;;;;;;; Counter example model description: ;;;;;;;;
; ;; universe for ModelId:
; ;;   ModelId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun ModelId!val!0 () ModelId)
; ;; cardinality constraint:
; (forall ((x ModelId)) (= x ModelId!val!0))
; ;; -----------
; ;; universe for StateId:
; ;;   StateId!val!1 StateId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun StateId!val!1 () StateId)
; (declare-fun StateId!val!0 () StateId)
; ;; cardinality constraint:
; (forall ((x StateId)) (or (= x StateId!val!1) (= x StateId!val!0)))
; ;; -----------
; ;; universe for Node:
; ;;   Node!val!0 Node!val!1 Node!val!2 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Node!val!0 () Node)
; (declare-fun Node!val!1 () Node)
; (declare-fun Node!val!2 () Node)
; ;; cardinality constraint:
; (forall ((x Node)) (or (= x Node!val!0) (= x Node!val!1) (= x Node!val!2)))
; ;; -----------
; ;; universe for Epoch:
; ;;   Epoch!val!3 Epoch!val!0 Epoch!val!4 Epoch!val!2 Epoch!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Epoch!val!3 () Epoch)
; (declare-fun Epoch!val!0 () Epoch)
; (declare-fun Epoch!val!4 () Epoch)
; (declare-fun Epoch!val!2 () Epoch)
; (declare-fun Epoch!val!1 () Epoch)
; ;; cardinality constraint:
; (forall ((x Epoch))
;         (or (= x Epoch!val!3)
;             (= x Epoch!val!0)
;             (= x Epoch!val!4)
;             (= x Epoch!val!2)
;             (= x Epoch!val!1)))
; ;; -----------
; (define-fun S2 () StateId
;   StateId!val!0)
; (define-fun S1 () StateId
;   StateId!val!1)
; (define-fun Model_93_ice () ModelId
;   ModelId!val!0)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (let ((a!1 (ite (and (= x!0 ModelId!val!0)
;                        (= x!1 StateId!val!0)
;                        (not (= x!2 Node!val!2))
;                        (not (= x!2 Node!val!1)))
;                   Epoch!val!3
;                   Epoch!val!1)))
;   (let ((a!2 (ite (and (= x!0 ModelId!val!0)
;                        (= x!1 StateId!val!0)
;                        (= x!2 Node!val!2)
;                        (not (= x!2 Node!val!1)))
;                   Epoch!val!4
;                   a!1)))
;   (let ((a!3 (ite (or (and (= x!0 ModelId!val!0)
;                            (= x!1 StateId!val!0)
;                            (= x!2 Node!val!1))
;                       (and (= x!0 ModelId!val!0)
;                            (= x!1 StateId!val!1)
;                            (= x!2 Node!val!1)))
;                   Epoch!val!2
;                   a!2)))
;   (let ((a!4 (ite (and (= x!0 ModelId!val!0)
;                        (= x!1 StateId!val!1)
;                        (not (= x!2 Node!val!2))
;                        (not (= x!2 Node!val!1)))
;                   Epoch!val!3
;                   a!3)))
;     (ite (and (= x!0 ModelId!val!0)
;               (= x!1 StateId!val!1)
;               (= x!2 Node!val!2)
;               (not (= x!2 Node!val!1)))
;          Epoch!val!4
;          a!4))))))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!0) (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))))
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (= x!2 Node!val!1)))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!2)
;            (not (= x!3 Node!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!0)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1))))
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_93_ice S1 Node!val!0 Node!val!0)
                (inv Model_93_ice S1 Node!val!0 Node!val!1)
                (inv Model_93_ice S1 Node!val!0 Node!val!2)
                (inv Model_93_ice S1 Node!val!1 Node!val!0)
                (inv Model_93_ice S1 Node!val!1 Node!val!1)
                (inv Model_93_ice S1 Node!val!1 Node!val!2)
                (inv Model_93_ice S1 Node!val!2 Node!val!0)
                (inv Model_93_ice S1 Node!val!2 Node!val!1)
                (inv Model_93_ice S1 Node!val!2 Node!val!2))))
  (or (not a!1)
      (and a!1
           (inv Model_93_ice S2 Node!val!0 Node!val!0)
           (inv Model_93_ice S2 Node!val!0 Node!val!1)
           (inv Model_93_ice S2 Node!val!0 Node!val!2)
           (inv Model_93_ice S2 Node!val!1 Node!val!0)
           (inv Model_93_ice S2 Node!val!1 Node!val!1)
           (inv Model_93_ice S2 Node!val!1 Node!val!2)
           (inv Model_93_ice S2 Node!val!2 Node!val!0)
           (inv Model_93_ice S2 Node!val!2 Node!val!1)
           (inv Model_93_ice S2 Node!val!2 Node!val!2)))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fe2e13cecd0>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_94_ice, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_94_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_94_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_94_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_94_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_94_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_94_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_94_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_94_ice,
;                              zero(Model_94_ice),
;                              Epoch_1),
;                           one(Model_94_ice) !=
;                           zero(Model_94_ice))))),
;  And(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_94_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_94_ice,
;                                S1,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Or(held(Model_94_ice, S1, Node_1),
;                le(Model_94_ice,
;                   ep(Model_94_ice, S1, Node_1),
;                   ep(Model_94_ice, S1, Node_1)))),
;      ForAll(Node_1,
;             le(Model_94_ice,
;                ep(Model_94_ice, S1, Node_1),
;                ep(Model_94_ice, S1, Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_94_ice,
;                           S1,
;                           ep(Model_94_ice, S1, Node_1),
;                           Node_1)),
;                transfer(Model_94_ice,
;                         S1,
;                         ep(Model_94_ice, S1, Node_1),
;                         Node_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(le(Model_94_ice,
;                          ep(Model_94_ice, S1, Node_1),
;                          Epoch_1),
;                       le(Model_94_ice,
;                          Epoch_1,
;                          ep(Model_94_ice, S1, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_94_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_94_ice,
;                                S1,
;                                ep(Model_94_ice, S1, Node_1),
;                                Node_1)))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(locked(Model_94_ice,
;                              S1,
;                              ep(Model_94_ice, S1, Node_1),
;                              Node_1),
;                       Not(locked(Model_94_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_94_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       le(Model_94_ice,
;                          Epoch_1,
;                          ep(Model_94_ice, S1, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(le(Model_94_ice,
;                              Epoch_1,
;                              ep(Model_94_ice, S1, Node_1))),
;                       Epoch_1 ==
;                       ep(Model_94_ice, S1, Node_1),
;                       Not(le(Model_94_ice,
;                              ep(Model_94_ice, S1, Node_1),
;                              Epoch_1)))))),
;  ForAll(Node_1,
;         ForAll(Node_2,
;                Or(Not(le(Model_94_ice,
;                          ep(Model_94_ice, S1, Node_2),
;                          ep(Model_94_ice, S1, Node_1))),
;                   locked(Model_94_ice,
;                          S1,
;                          ep(Model_94_ice, S1, Node_2),
;                          Node_2),
;                   Not(Or(Not(Or(Not(held(Model_94_ice,
;                                         S1,
;                                         Node_2)),
;                                 Node_1 == Node_2)),
;                          transfer(Model_94_ice,
;                                   S1,
;                                   ep(Model_94_ice,
;                                      S1,
;                                      Node_1),
;                                   Node_1)))))),
;  And(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_94_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_94_ice,
;                                S2,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Or(held(Model_94_ice, S2, Node_1),
;                le(Model_94_ice,
;                   ep(Model_94_ice, S2, Node_1),
;                   ep(Model_94_ice, S2, Node_1)))),
;      ForAll(Node_1,
;             le(Model_94_ice,
;                ep(Model_94_ice, S2, Node_1),
;                ep(Model_94_ice, S2, Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_94_ice,
;                           S2,
;                           ep(Model_94_ice, S2, Node_1),
;                           Node_1)),
;                transfer(Model_94_ice,
;                         S2,
;                         ep(Model_94_ice, S2, Node_1),
;                         Node_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(le(Model_94_ice,
;                          ep(Model_94_ice, S2, Node_1),
;                          Epoch_1),
;                       le(Model_94_ice,
;                          Epoch_1,
;                          ep(Model_94_ice, S2, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_94_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_94_ice,
;                                S2,
;                                ep(Model_94_ice, S2, Node_1),
;                                Node_1)))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(locked(Model_94_ice,
;                              S2,
;                              ep(Model_94_ice, S2, Node_1),
;                              Node_1),
;                       Not(locked(Model_94_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_94_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       le(Model_94_ice,
;                          Epoch_1,
;                          ep(Model_94_ice, S2, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Epoch_1 ==
;                       ep(Model_94_ice, S2, Node_1),
;                       Not(le(Model_94_ice,
;                              ep(Model_94_ice, S2, Node_1),
;                              Epoch_1)),
;                       Not(le(Model_94_ice,
;                              Epoch_1,
;                              ep(Model_94_ice, S2, Node_1))))))),
; ...
;;;;;;;; Counter example generation constraints end ;;;;;;;;
;;;;;;;; Counter example model description: ;;;;;;;;
; ;; universe for ModelId:
; ;;   ModelId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun ModelId!val!0 () ModelId)
; ;; cardinality constraint:
; (forall ((x ModelId)) (= x ModelId!val!0))
; ;; -----------
; ;; universe for StateId:
; ;;   StateId!val!1 StateId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun StateId!val!1 () StateId)
; (declare-fun StateId!val!0 () StateId)
; ;; cardinality constraint:
; (forall ((x StateId)) (or (= x StateId!val!1) (= x StateId!val!0)))
; ;; -----------
; ;; universe for Node:
; ;;   Node!val!0 Node!val!1 Node!val!2 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Node!val!0 () Node)
; (declare-fun Node!val!1 () Node)
; (declare-fun Node!val!2 () Node)
; ;; cardinality constraint:
; (forall ((x Node)) (or (= x Node!val!0) (= x Node!val!1) (= x Node!val!2)))
; ;; -----------
; ;; universe for Epoch:
; ;;   Epoch!val!3 Epoch!val!0 Epoch!val!4 Epoch!val!2 Epoch!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Epoch!val!3 () Epoch)
; (declare-fun Epoch!val!0 () Epoch)
; (declare-fun Epoch!val!4 () Epoch)
; (declare-fun Epoch!val!2 () Epoch)
; (declare-fun Epoch!val!1 () Epoch)
; ;; cardinality constraint:
; (forall ((x Epoch))
;         (or (= x Epoch!val!3)
;             (= x Epoch!val!0)
;             (= x Epoch!val!4)
;             (= x Epoch!val!2)
;             (= x Epoch!val!1)))
; ;; -----------
; (define-fun S2 () StateId
;   StateId!val!0)
; (define-fun Model_94_ice () ModelId
;   ModelId!val!0)
; (define-fun S1 () StateId
;   StateId!val!1)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (ite (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (= x!2 Node!val!2))
;     Epoch!val!4
;     (let ((a!1 (or (and (= x!0 ModelId!val!0)
;                         (= x!1 StateId!val!0)
;                         (= x!2 Node!val!1)
;                         (not (= x!2 Node!val!2)))
;                    (and (= x!0 ModelId!val!0)
;                         (= x!1 StateId!val!1)
;                         (= x!2 Node!val!1)
;                         (not (= x!2 Node!val!2)))))
;           (a!2 (ite (and (= x!0 ModelId!val!0)
;                          (= x!1 StateId!val!0)
;                          (not (= x!2 Node!val!1))
;                          (not (= x!2 Node!val!2)))
;                     Epoch!val!3
;                     Epoch!val!1)))
;     (let ((a!3 (ite a!1
;                     Epoch!val!2
;                     (ite (and (= x!0 ModelId!val!0)
;                               (= x!1 StateId!val!0)
;                               (= x!2 Node!val!2))
;                          Epoch!val!4
;                          a!2))))
;       (ite (and (= x!0 ModelId!val!0)
;                 (= x!1 StateId!val!1)
;                 (not (= x!2 Node!val!1))
;                 (not (= x!2 Node!val!2)))
;            Epoch!val!3
;            a!3)))))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!0) (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0)))))
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!1)
;        (= x!2 Node!val!1)
;        (not (= x!2 Node!val!2))))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1)
;            (not (= x!3 Node!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1)
;            (not (= x!3 Node!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!2))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!0)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1)
;            (not (= x!3 Node!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1)
;            (not (= x!3 Node!val!2)))))
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_94_ice S1 Node!val!0 Node!val!0)
                (inv Model_94_ice S1 Node!val!0 Node!val!1)
                (inv Model_94_ice S1 Node!val!0 Node!val!2)
                (inv Model_94_ice S1 Node!val!1 Node!val!0)
                (inv Model_94_ice S1 Node!val!1 Node!val!1)
                (inv Model_94_ice S1 Node!val!1 Node!val!2)
                (inv Model_94_ice S1 Node!val!2 Node!val!0)
                (inv Model_94_ice S1 Node!val!2 Node!val!1)
                (inv Model_94_ice S1 Node!val!2 Node!val!2))))
  (or (not a!1)
      (and a!1
           (inv Model_94_ice S2 Node!val!0 Node!val!0)
           (inv Model_94_ice S2 Node!val!0 Node!val!1)
           (inv Model_94_ice S2 Node!val!0 Node!val!2)
           (inv Model_94_ice S2 Node!val!1 Node!val!0)
           (inv Model_94_ice S2 Node!val!1 Node!val!1)
           (inv Model_94_ice S2 Node!val!1 Node!val!2)
           (inv Model_94_ice S2 Node!val!2 Node!val!0)
           (inv Model_94_ice S2 Node!val!2 Node!val!1)
           (inv Model_94_ice S2 Node!val!2 Node!val!2)))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fe2e1588610>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_95_ice, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_95_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_95_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_95_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_95_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_95_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_95_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_95_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_95_ice,
;                              zero(Model_95_ice),
;                              Epoch_1),
;                           one(Model_95_ice) !=
;                           zero(Model_95_ice))))),
;  And(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_95_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_95_ice,
;                                S1,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Or(held(Model_95_ice, S1, Node_1),
;                le(Model_95_ice,
;                   ep(Model_95_ice, S1, Node_1),
;                   ep(Model_95_ice, S1, Node_1)))),
;      ForAll(Node_1,
;             le(Model_95_ice,
;                ep(Model_95_ice, S1, Node_1),
;                ep(Model_95_ice, S1, Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_95_ice,
;                           S1,
;                           ep(Model_95_ice, S1, Node_1),
;                           Node_1)),
;                transfer(Model_95_ice,
;                         S1,
;                         ep(Model_95_ice, S1, Node_1),
;                         Node_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(le(Model_95_ice,
;                          Epoch_1,
;                          ep(Model_95_ice, S1, Node_1)),
;                       le(Model_95_ice,
;                          ep(Model_95_ice, S1, Node_1),
;                          Epoch_1)))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(transfer(Model_95_ice,
;                                S1,
;                                ep(Model_95_ice, S1, Node_1),
;                                Node_1),
;                       Not(locked(Model_95_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(locked(Model_95_ice,
;                              S1,
;                              ep(Model_95_ice, S1, Node_1),
;                              Node_1),
;                       Not(locked(Model_95_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_95_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       le(Model_95_ice,
;                          Epoch_1,
;                          ep(Model_95_ice, S1, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(le(Model_95_ice,
;                              ep(Model_95_ice, S1, Node_1),
;                              Epoch_1)),
;                       Not(le(Model_95_ice,
;                              Epoch_1,
;                              ep(Model_95_ice, S1, Node_1))),
;                       Epoch_1 ==
;                       ep(Model_95_ice, S1, Node_1))))),
;  ForAll(Node_1,
;         ForAll(Node_2,
;                Or(Not(Or(Not(held(Model_95_ice, S1, Node_1)),
;                          held(Model_95_ice, S1, Node_2))),
;                   locked(Model_95_ice,
;                          S1,
;                          ep(Model_95_ice, S1, Node_1),
;                          Node_1),
;                   Not(Or(Not(le(Model_95_ice,
;                                 ep(Model_95_ice, S1, Node_1),
;                                 ep(Model_95_ice, S1, Node_2))),
;                          transfer(Model_95_ice,
;                                   S1,
;                                   ep(Model_95_ice,
;                                      S1,
;                                      Node_1),
;                                   Node_2)))))),
;  And(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_95_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_95_ice,
;                                S2,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Or(held(Model_95_ice, S2, Node_1),
;                le(Model_95_ice,
;                   ep(Model_95_ice, S2, Node_1),
;                   ep(Model_95_ice, S2, Node_1)))),
;      ForAll(Node_1,
;             le(Model_95_ice,
;                ep(Model_95_ice, S2, Node_1),
;                ep(Model_95_ice, S2, Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_95_ice,
;                           S2,
;                           ep(Model_95_ice, S2, Node_1),
;                           Node_1)),
;                transfer(Model_95_ice,
;                         S2,
;                         ep(Model_95_ice, S2, Node_1),
;                         Node_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(le(Model_95_ice,
;                          ep(Model_95_ice, S2, Node_1),
;                          Epoch_1),
;                       le(Model_95_ice,
;                          Epoch_1,
;                          ep(Model_95_ice, S2, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(transfer(Model_95_ice,
;                                S2,
;                                ep(Model_95_ice, S2, Node_1),
;                                Node_1),
;                       Not(locked(Model_95_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_95_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       locked(Model_95_ice,
;                              S2,
;                              ep(Model_95_ice, S2, Node_1),
;                              Node_1)))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_95_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       le(Model_95_ice,
;                          Epoch_1,
;                          ep(Model_95_ice, S2, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(le(Model_95_ice,
;                              Epoch_1,
;                              ep(Model_95_ice, S2, Node_1))),
;                       Not(le(Model_95_ice,
;                              ep(Model_95_ice, S2, Node_1),
;                              Epoch_1)),
;                       Epoch_1 ==
;                       ep(Model_95_ice, S2, Node_1))))),
;  Not(ForAll(Node_1,
;             ForAll(Node_2,
; ...
;;;;;;;; Counter example generation constraints end ;;;;;;;;
;;;;;;;; Counter example model description: ;;;;;;;;
; ;; universe for ModelId:
; ;;   ModelId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun ModelId!val!0 () ModelId)
; ;; cardinality constraint:
; (forall ((x ModelId)) (= x ModelId!val!0))
; ;; -----------
; ;; universe for StateId:
; ;;   StateId!val!1 StateId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun StateId!val!1 () StateId)
; (declare-fun StateId!val!0 () StateId)
; ;; cardinality constraint:
; (forall ((x StateId)) (or (= x StateId!val!1) (= x StateId!val!0)))
; ;; -----------
; ;; universe for Node:
; ;;   Node!val!0 Node!val!1 Node!val!2 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Node!val!0 () Node)
; (declare-fun Node!val!1 () Node)
; (declare-fun Node!val!2 () Node)
; ;; cardinality constraint:
; (forall ((x Node)) (or (= x Node!val!0) (= x Node!val!1) (= x Node!val!2)))
; ;; -----------
; ;; universe for Epoch:
; ;;   Epoch!val!3 Epoch!val!0 Epoch!val!4 Epoch!val!5 Epoch!val!2 Epoch!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Epoch!val!3 () Epoch)
; (declare-fun Epoch!val!0 () Epoch)
; (declare-fun Epoch!val!4 () Epoch)
; (declare-fun Epoch!val!5 () Epoch)
; (declare-fun Epoch!val!2 () Epoch)
; (declare-fun Epoch!val!1 () Epoch)
; ;; cardinality constraint:
; (forall ((x Epoch))
;         (or (= x Epoch!val!3)
;             (= x Epoch!val!0)
;             (= x Epoch!val!4)
;             (= x Epoch!val!5)
;             (= x Epoch!val!2)
;             (= x Epoch!val!1)))
; ;; -----------
; (define-fun Model_95_ice () ModelId
;   ModelId!val!0)
; (define-fun S2 () StateId
;   StateId!val!0)
; (define-fun S1 () StateId
;   StateId!val!1)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!5)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!2))
;            (= x!3 Node!val!2))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!5)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!2))
;            (= x!3 Node!val!2))))
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (let ((a!1 (or (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!0)
;                       (not (= x!2 Node!val!1))
;                       (not (= x!2 Node!val!2)))
;                  (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!1)
;                       (not (= x!2 Node!val!1))
;                       (not (= x!2 Node!val!2))))))
;     (ite (or (and (= x!0 ModelId!val!0)
;                   (= x!1 StateId!val!0)
;                   (= x!2 Node!val!2))
;              (and (= x!0 ModelId!val!0)
;                   (= x!1 StateId!val!1)
;                   (= x!2 Node!val!2)))
;          Epoch!val!5
;          (ite a!1 Epoch!val!4 Epoch!val!3))))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!2) (= x!2 Epoch!val!2))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!2))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!2))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!5)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (= x!2 Epoch!val!5)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!5)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!5)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!5)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!5)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!2 Epoch!val!5))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!5))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!2 Epoch!val!5))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!5))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!2 Epoch!val!5))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!5))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!5)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!5))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!2))))
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!1)
;        (= x!2 Node!val!1)
;        (not (= x!2 Node!val!2))))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!5)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!2))
;            (= x!3 Node!val!2))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!2)
;            (= x!3 Node!val!2))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!5)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!2))
;            (= x!3 Node!val!2))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!0)
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_95_ice S1 Node!val!0 Node!val!0)
                (inv Model_95_ice S1 Node!val!0 Node!val!1)
                (inv Model_95_ice S1 Node!val!0 Node!val!2)
                (inv Model_95_ice S1 Node!val!1 Node!val!0)
                (inv Model_95_ice S1 Node!val!1 Node!val!1)
                (inv Model_95_ice S1 Node!val!1 Node!val!2)
                (inv Model_95_ice S1 Node!val!2 Node!val!0)
                (inv Model_95_ice S1 Node!val!2 Node!val!1)
                (inv Model_95_ice S1 Node!val!2 Node!val!2))))
  (or (not a!1)
      (and a!1
           (inv Model_95_ice S2 Node!val!0 Node!val!0)
           (inv Model_95_ice S2 Node!val!0 Node!val!1)
           (inv Model_95_ice S2 Node!val!0 Node!val!2)
           (inv Model_95_ice S2 Node!val!1 Node!val!0)
           (inv Model_95_ice S2 Node!val!1 Node!val!1)
           (inv Model_95_ice S2 Node!val!1 Node!val!2)
           (inv Model_95_ice S2 Node!val!2 Node!val!0)
           (inv Model_95_ice S2 Node!val!2 Node!val!1)
           (inv Model_95_ice S2 Node!val!2 Node!val!2)))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fe2f7b03790>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_96_ice, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_96_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_96_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_96_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_96_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_96_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_96_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_96_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_96_ice,
;                              zero(Model_96_ice),
;                              Epoch_1),
;                           one(Model_96_ice) !=
;                           zero(Model_96_ice))))),
;  And(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_96_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_96_ice,
;                                S1,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Or(held(Model_96_ice, S1, Node_1),
;                le(Model_96_ice,
;                   ep(Model_96_ice, S1, Node_1),
;                   ep(Model_96_ice, S1, Node_1)))),
;      ForAll(Node_1,
;             le(Model_96_ice,
;                ep(Model_96_ice, S1, Node_1),
;                ep(Model_96_ice, S1, Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_96_ice,
;                           S1,
;                           ep(Model_96_ice, S1, Node_1),
;                           Node_1)),
;                transfer(Model_96_ice,
;                         S1,
;                         ep(Model_96_ice, S1, Node_1),
;                         Node_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(le(Model_96_ice,
;                          ep(Model_96_ice, S1, Node_1),
;                          Epoch_1),
;                       le(Model_96_ice,
;                          Epoch_1,
;                          ep(Model_96_ice, S1, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(transfer(Model_96_ice,
;                                S1,
;                                ep(Model_96_ice, S1, Node_1),
;                                Node_1),
;                       Not(locked(Model_96_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_96_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       locked(Model_96_ice,
;                              S1,
;                              ep(Model_96_ice, S1, Node_1),
;                              Node_1)))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_96_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       le(Model_96_ice,
;                          Epoch_1,
;                          ep(Model_96_ice, S1, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Epoch_1 ==
;                       ep(Model_96_ice, S1, Node_1),
;                       Not(le(Model_96_ice,
;                              ep(Model_96_ice, S1, Node_1),
;                              Epoch_1)),
;                       Not(le(Model_96_ice,
;                              Epoch_1,
;                              ep(Model_96_ice, S1, Node_1))))))),
;  ForAll(Node_1,
;         ForAll(Node_2,
;                And(Or(Not(Or(Not(held(Model_96_ice,
;                                       S1,
;                                       Node_2)),
;                              held(Model_96_ice, S1, Node_1))),
;                       le(Model_96_ice,
;                          ep(Model_96_ice, S1, Node_2),
;                          ep(Model_96_ice, S1, Node_1))),
;                    Or(Not(transfer(Model_96_ice,
;                                    S1,
;                                    ep(Model_96_ice,
;                                       S1,
;                                       Node_1),
;                                    Node_1)),
;                       locked(Model_96_ice,
;                              S1,
;                              ep(Model_96_ice, S1, Node_2),
;                              Node_1))))),
;  And(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_96_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_96_ice,
;                                S2,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Or(held(Model_96_ice, S2, Node_1),
;                le(Model_96_ice,
;                   ep(Model_96_ice, S2, Node_1),
;                   ep(Model_96_ice, S2, Node_1)))),
;      ForAll(Node_1,
;             le(Model_96_ice,
;                ep(Model_96_ice, S2, Node_1),
;                ep(Model_96_ice, S2, Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_96_ice,
;                           S2,
;                           ep(Model_96_ice, S2, Node_1),
;                           Node_1)),
;                transfer(Model_96_ice,
;                         S2,
;                         ep(Model_96_ice, S2, Node_1),
;                         Node_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(le(Model_96_ice,
;                          Epoch_1,
;                          ep(Model_96_ice, S2, Node_1)),
;                       le(Model_96_ice,
;                          ep(Model_96_ice, S2, Node_1),
;                          Epoch_1)))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(transfer(Model_96_ice,
;                                S2,
;                                ep(Model_96_ice, S2, Node_1),
;                                Node_1),
;                       Not(locked(Model_96_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(locked(Model_96_ice,
;                              S2,
;                              ep(Model_96_ice, S2, Node_1),
;                              Node_1),
;                       Not(locked(Model_96_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_96_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       le(Model_96_ice,
;                          Epoch_1,
;                          ep(Model_96_ice, S2, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(le(Model_96_ice,
;                              ep(Model_96_ice, S2, Node_1),
;                              Epoch_1)),
;                       Not(le(Model_96_ice,
;                              Epoch_1,
;                              ep(Model_96_ice, S2, Node_1))),
;                       Epoch_1 ==
;                       ep(Model_96_ice, S2, Node_1))))),
; ...
;;;;;;;; Counter example generation constraints end ;;;;;;;;
;;;;;;;; Counter example model description: ;;;;;;;;
; ;; universe for ModelId:
; ;;   ModelId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun ModelId!val!0 () ModelId)
; ;; cardinality constraint:
; (forall ((x ModelId)) (= x ModelId!val!0))
; ;; -----------
; ;; universe for StateId:
; ;;   StateId!val!1 StateId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun StateId!val!1 () StateId)
; (declare-fun StateId!val!0 () StateId)
; ;; cardinality constraint:
; (forall ((x StateId)) (or (= x StateId!val!1) (= x StateId!val!0)))
; ;; -----------
; ;; universe for Node:
; ;;   Node!val!0 Node!val!1 Node!val!2 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Node!val!0 () Node)
; (declare-fun Node!val!1 () Node)
; (declare-fun Node!val!2 () Node)
; ;; cardinality constraint:
; (forall ((x Node)) (or (= x Node!val!0) (= x Node!val!1) (= x Node!val!2)))
; ;; -----------
; ;; universe for Epoch:
; ;;   Epoch!val!3 Epoch!val!0 Epoch!val!4 Epoch!val!2 Epoch!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Epoch!val!3 () Epoch)
; (declare-fun Epoch!val!0 () Epoch)
; (declare-fun Epoch!val!4 () Epoch)
; (declare-fun Epoch!val!2 () Epoch)
; (declare-fun Epoch!val!1 () Epoch)
; ;; cardinality constraint:
; (forall ((x Epoch))
;         (or (= x Epoch!val!3)
;             (= x Epoch!val!0)
;             (= x Epoch!val!4)
;             (= x Epoch!val!2)
;             (= x Epoch!val!1)))
; ;; -----------
; (define-fun Model_96_ice () ModelId
;   ModelId!val!0)
; (define-fun S1 () StateId
;   StateId!val!1)
; (define-fun S2 () StateId
;   StateId!val!0)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (let ((a!1 (or (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!0)
;                       (= x!2 Node!val!2))
;                  (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!1)
;                       (= x!2 Node!val!2))
;                  (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!1)
;                       (not (= x!2 Node!val!1))
;                       (not (= x!2 Node!val!2)))))
;         (a!2 (or (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!0)
;                       (= x!2 Node!val!1)
;                       (not (= x!2 Node!val!2)))
;                  (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!1)
;                       (= x!2 Node!val!1)
;                       (not (= x!2 Node!val!2)))))
;         (a!3 (ite (and (= x!0 ModelId!val!0)
;                        (= x!1 StateId!val!0)
;                        (not (= x!2 Node!val!1))
;                        (not (= x!2 Node!val!2)))
;                   Epoch!val!4
;                   Epoch!val!3)))
;     (ite a!1 Epoch!val!4 (ite a!2 Epoch!val!1 a!3))))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!2) (= x!2 Epoch!val!2))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!2))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2)))))
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!1)
;        (= x!2 Node!val!1)
;        (not (= x!2 Node!val!2))))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!0)
;        (= x!2 Epoch!val!0)
;        (not (= x!2 Epoch!val!3))
;        (not (= x!2 Epoch!val!1))
;        (not (= x!2 Epoch!val!2))
;        (= x!3 Node!val!2)))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!3)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!2)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   false)
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_96_ice S1 Node!val!0 Node!val!0)
                (inv Model_96_ice S1 Node!val!0 Node!val!1)
                (inv Model_96_ice S1 Node!val!0 Node!val!2)
                (inv Model_96_ice S1 Node!val!1 Node!val!0)
                (inv Model_96_ice S1 Node!val!1 Node!val!1)
                (inv Model_96_ice S1 Node!val!1 Node!val!2)
                (inv Model_96_ice S1 Node!val!2 Node!val!0)
                (inv Model_96_ice S1 Node!val!2 Node!val!1)
                (inv Model_96_ice S1 Node!val!2 Node!val!2))))
  (or (not a!1)
      (and a!1
           (inv Model_96_ice S2 Node!val!0 Node!val!0)
           (inv Model_96_ice S2 Node!val!0 Node!val!1)
           (inv Model_96_ice S2 Node!val!0 Node!val!2)
           (inv Model_96_ice S2 Node!val!1 Node!val!0)
           (inv Model_96_ice S2 Node!val!1 Node!val!1)
           (inv Model_96_ice S2 Node!val!1 Node!val!2)
           (inv Model_96_ice S2 Node!val!2 Node!val!0)
           (inv Model_96_ice S2 Node!val!2 Node!val!1)
           (inv Model_96_ice S2 Node!val!2 Node!val!2)))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fe2e1572040>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_97_ice, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_97_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_97_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_97_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_97_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_97_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_97_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_97_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_97_ice,
;                              zero(Model_97_ice),
;                              Epoch_1),
;                           one(Model_97_ice) !=
;                           zero(Model_97_ice))))),
;  And(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_97_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_97_ice,
;                                S1,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Or(held(Model_97_ice, S1, Node_1),
;                le(Model_97_ice,
;                   ep(Model_97_ice, S1, Node_1),
;                   ep(Model_97_ice, S1, Node_1)))),
;      ForAll(Node_1,
;             le(Model_97_ice,
;                ep(Model_97_ice, S1, Node_1),
;                ep(Model_97_ice, S1, Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_97_ice,
;                           S1,
;                           ep(Model_97_ice, S1, Node_1),
;                           Node_1)),
;                transfer(Model_97_ice,
;                         S1,
;                         ep(Model_97_ice, S1, Node_1),
;                         Node_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(le(Model_97_ice,
;                          ep(Model_97_ice, S1, Node_1),
;                          Epoch_1),
;                       le(Model_97_ice,
;                          Epoch_1,
;                          ep(Model_97_ice, S1, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(transfer(Model_97_ice,
;                                S1,
;                                ep(Model_97_ice, S1, Node_1),
;                                Node_1),
;                       Not(locked(Model_97_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_97_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       locked(Model_97_ice,
;                              S1,
;                              ep(Model_97_ice, S1, Node_1),
;                              Node_1)))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_97_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       le(Model_97_ice,
;                          Epoch_1,
;                          ep(Model_97_ice, S1, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(le(Model_97_ice,
;                              Epoch_1,
;                              ep(Model_97_ice, S1, Node_1))),
;                       Epoch_1 ==
;                       ep(Model_97_ice, S1, Node_1),
;                       Not(le(Model_97_ice,
;                              ep(Model_97_ice, S1, Node_1),
;                              Epoch_1)))))),
;  ForAll(Node_1,
;         ForAll(Node_2,
;                Or(locked(Model_97_ice,
;                          S1,
;                          ep(Model_97_ice, S1, Node_2),
;                          Node_2),
;                   Not(Or(Not(Or(Not(held(Model_97_ice,
;                                         S1,
;                                         Node_2)),
;                                 Node_2 == Node_1)),
;                          transfer(Model_97_ice,
;                                   S1,
;                                   ep(Model_97_ice,
;                                      S1,
;                                      Node_2),
;                                   Node_1))),
;                   Not(held(Model_97_ice, S1, Node_1))))),
;  And(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_97_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_97_ice,
;                                S2,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Or(held(Model_97_ice, S2, Node_1),
;                le(Model_97_ice,
;                   ep(Model_97_ice, S2, Node_1),
;                   ep(Model_97_ice, S2, Node_1)))),
;      ForAll(Node_1,
;             le(Model_97_ice,
;                ep(Model_97_ice, S2, Node_1),
;                ep(Model_97_ice, S2, Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_97_ice,
;                           S2,
;                           ep(Model_97_ice, S2, Node_1),
;                           Node_1)),
;                transfer(Model_97_ice,
;                         S2,
;                         ep(Model_97_ice, S2, Node_1),
;                         Node_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(le(Model_97_ice,
;                          ep(Model_97_ice, S2, Node_1),
;                          Epoch_1),
;                       le(Model_97_ice,
;                          Epoch_1,
;                          ep(Model_97_ice, S2, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(transfer(Model_97_ice,
;                                S2,
;                                ep(Model_97_ice, S2, Node_1),
;                                Node_1),
;                       Not(locked(Model_97_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(locked(Model_97_ice,
;                              S2,
;                              ep(Model_97_ice, S2, Node_1),
;                              Node_1),
;                       Not(locked(Model_97_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_97_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       le(Model_97_ice,
;                          Epoch_1,
;                          ep(Model_97_ice, S2, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Epoch_1 ==
;                       ep(Model_97_ice, S2, Node_1),
;                       Not(le(Model_97_ice,
;                              ep(Model_97_ice, S2, Node_1),
;                              Epoch_1)),
;                       Not(le(Model_97_ice,
;                              Epoch_1,
;                              ep(Model_97_ice, S2, Node_1))))))),
;  Not(ForAll(Node_1,
;             ForAll(Node_2,
; ...
;;;;;;;; Counter example generation constraints end ;;;;;;;;
;;;;;;;; Counter example model description: ;;;;;;;;
; ;; universe for ModelId:
; ;;   ModelId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun ModelId!val!0 () ModelId)
; ;; cardinality constraint:
; (forall ((x ModelId)) (= x ModelId!val!0))
; ;; -----------
; ;; universe for StateId:
; ;;   StateId!val!1 StateId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun StateId!val!1 () StateId)
; (declare-fun StateId!val!0 () StateId)
; ;; cardinality constraint:
; (forall ((x StateId)) (or (= x StateId!val!1) (= x StateId!val!0)))
; ;; -----------
; ;; universe for Node:
; ;;   Node!val!0 Node!val!1 Node!val!2 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Node!val!0 () Node)
; (declare-fun Node!val!1 () Node)
; (declare-fun Node!val!2 () Node)
; ;; cardinality constraint:
; (forall ((x Node)) (or (= x Node!val!0) (= x Node!val!1) (= x Node!val!2)))
; ;; -----------
; ;; universe for Epoch:
; ;;   Epoch!val!3 Epoch!val!0 Epoch!val!4 Epoch!val!2 Epoch!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Epoch!val!3 () Epoch)
; (declare-fun Epoch!val!0 () Epoch)
; (declare-fun Epoch!val!4 () Epoch)
; (declare-fun Epoch!val!2 () Epoch)
; (declare-fun Epoch!val!1 () Epoch)
; ;; cardinality constraint:
; (forall ((x Epoch))
;         (or (= x Epoch!val!3)
;             (= x Epoch!val!0)
;             (= x Epoch!val!4)
;             (= x Epoch!val!2)
;             (= x Epoch!val!1)))
; ;; -----------
; (define-fun S2 () StateId
;   StateId!val!0)
; (define-fun S1 () StateId
;   StateId!val!1)
; (define-fun Model_97_ice () ModelId
;   ModelId!val!0)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (let ((a!1 (or (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!0)
;                       (= x!2 Node!val!2)
;                       (not (= x!2 Node!val!1)))
;                  (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!1)
;                       (= x!2 Node!val!2)
;                       (not (= x!2 Node!val!1)))))
;         (a!2 (ite (and (= x!0 ModelId!val!0)
;                        (= x!1 StateId!val!0)
;                        (not (= x!2 Node!val!2))
;                        (not (= x!2 Node!val!1)))
;                   Epoch!val!3
;                   Epoch!val!1)))
;   (let ((a!3 (ite (or (and (= x!0 ModelId!val!0)
;                            (= x!1 StateId!val!0)
;                            (= x!2 Node!val!1))
;                       (and (= x!0 ModelId!val!0)
;                            (= x!1 StateId!val!1)
;                            (= x!2 Node!val!1)))
;                   Epoch!val!2
;                   a!2)))
;   (let ((a!4 (ite (and (= x!0 ModelId!val!0)
;                        (= x!1 StateId!val!1)
;                        (not (= x!2 Node!val!2))
;                        (not (= x!2 Node!val!1)))
;                   Epoch!val!3
;                   a!3)))
;     (ite a!1 Epoch!val!4 a!4)))))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!4) (= x!2 Epoch!val!4))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!4)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!4))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!4)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!4))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!4)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!4))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!4)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!4))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!4)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!4)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!4)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!4))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!4)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!4))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!4)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!4)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!4)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!4)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!4))
;            (= x!2 Epoch!val!4))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!4))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!4)))))
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (= x!2 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Node!val!2)
;            (not (= x!2 Node!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Node!val!2)
;            (not (= x!2 Node!val!1)))))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!4)
;            (= x!3 Node!val!2)
;            (not (= x!3 Node!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!4)
;            (= x!3 Node!val!2)
;            (not (= x!3 Node!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!4))
;            (= x!3 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!4))
;            (= x!3 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!4))
;            (= x!3 Node!val!2)
;            (not (= x!3 Node!val!1)))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!0)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!4)
;            (= x!3 Node!val!2)
;            (not (= x!3 Node!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!4)
;            (= x!3 Node!val!2)
;            (not (= x!3 Node!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!4))
;            (= x!3 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!4))
;            (= x!3 Node!val!1))))
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_97_ice S1 Node!val!0 Node!val!0)
                (inv Model_97_ice S1 Node!val!0 Node!val!1)
                (inv Model_97_ice S1 Node!val!0 Node!val!2)
                (inv Model_97_ice S1 Node!val!1 Node!val!0)
                (inv Model_97_ice S1 Node!val!1 Node!val!1)
                (inv Model_97_ice S1 Node!val!1 Node!val!2)
                (inv Model_97_ice S1 Node!val!2 Node!val!0)
                (inv Model_97_ice S1 Node!val!2 Node!val!1)
                (inv Model_97_ice S1 Node!val!2 Node!val!2))))
  (or (not a!1)
      (and a!1
           (inv Model_97_ice S2 Node!val!0 Node!val!0)
           (inv Model_97_ice S2 Node!val!0 Node!val!1)
           (inv Model_97_ice S2 Node!val!0 Node!val!2)
           (inv Model_97_ice S2 Node!val!1 Node!val!0)
           (inv Model_97_ice S2 Node!val!1 Node!val!1)
           (inv Model_97_ice S2 Node!val!1 Node!val!2)
           (inv Model_97_ice S2 Node!val!2 Node!val!0)
           (inv Model_97_ice S2 Node!val!2 Node!val!1)
           (inv Model_97_ice S2 Node!val!2 Node!val!2)))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fe2e15f2730>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_98_ice, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_98_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_98_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_98_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_98_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_98_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_98_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_98_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_98_ice,
;                              zero(Model_98_ice),
;                              Epoch_1),
;                           one(Model_98_ice) !=
;                           zero(Model_98_ice))))),
;  And(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_98_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_98_ice,
;                                S1,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Or(held(Model_98_ice, S1, Node_1),
;                le(Model_98_ice,
;                   ep(Model_98_ice, S1, Node_1),
;                   ep(Model_98_ice, S1, Node_1)))),
;      ForAll(Node_1,
;             le(Model_98_ice,
;                ep(Model_98_ice, S1, Node_1),
;                ep(Model_98_ice, S1, Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_98_ice,
;                           S1,
;                           ep(Model_98_ice, S1, Node_1),
;                           Node_1)),
;                transfer(Model_98_ice,
;                         S1,
;                         ep(Model_98_ice, S1, Node_1),
;                         Node_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(le(Model_98_ice,
;                          ep(Model_98_ice, S1, Node_1),
;                          Epoch_1),
;                       le(Model_98_ice,
;                          Epoch_1,
;                          ep(Model_98_ice, S1, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(transfer(Model_98_ice,
;                                S1,
;                                ep(Model_98_ice, S1, Node_1),
;                                Node_1),
;                       Not(locked(Model_98_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(locked(Model_98_ice,
;                              S1,
;                              ep(Model_98_ice, S1, Node_1),
;                              Node_1),
;                       Not(locked(Model_98_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_98_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       le(Model_98_ice,
;                          Epoch_1,
;                          ep(Model_98_ice, S1, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(le(Model_98_ice,
;                              Epoch_1,
;                              ep(Model_98_ice, S1, Node_1))),
;                       Epoch_1 ==
;                       ep(Model_98_ice, S1, Node_1),
;                       Not(le(Model_98_ice,
;                              ep(Model_98_ice, S1, Node_1),
;                              Epoch_1)))))),
;  ForAll(Node_1,
;         ForAll(Node_2,
;                Or(Not(And(held(Model_98_ice, S1, Node_1),
;                           held(Model_98_ice, S1, Node_2))),
;                   locked(Model_98_ice,
;                          S1,
;                          ep(Model_98_ice, S1, Node_2),
;                          Node_1),
;                   Not(Or(Not(Node_1 == Node_2),
;                          transfer(Model_98_ice,
;                                   S1,
;                                   ep(Model_98_ice,
;                                      S1,
;                                      Node_1),
;                                   Node_1)))))),
;  And(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_98_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_98_ice,
;                                S2,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Or(held(Model_98_ice, S2, Node_1),
;                le(Model_98_ice,
;                   ep(Model_98_ice, S2, Node_1),
;                   ep(Model_98_ice, S2, Node_1)))),
;      ForAll(Node_1,
;             le(Model_98_ice,
;                ep(Model_98_ice, S2, Node_1),
;                ep(Model_98_ice, S2, Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_98_ice,
;                           S2,
;                           ep(Model_98_ice, S2, Node_1),
;                           Node_1)),
;                transfer(Model_98_ice,
;                         S2,
;                         ep(Model_98_ice, S2, Node_1),
;                         Node_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(le(Model_98_ice,
;                          ep(Model_98_ice, S2, Node_1),
;                          Epoch_1),
;                       le(Model_98_ice,
;                          Epoch_1,
;                          ep(Model_98_ice, S2, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(transfer(Model_98_ice,
;                                S2,
;                                ep(Model_98_ice, S2, Node_1),
;                                Node_1),
;                       Not(locked(Model_98_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(locked(Model_98_ice,
;                              S2,
;                              ep(Model_98_ice, S2, Node_1),
;                              Node_1),
;                       Not(locked(Model_98_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_98_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       le(Model_98_ice,
;                          Epoch_1,
;                          ep(Model_98_ice, S2, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Epoch_1 ==
;                       ep(Model_98_ice, S2, Node_1),
;                       Not(le(Model_98_ice,
;                              ep(Model_98_ice, S2, Node_1),
;                              Epoch_1)),
;                       Not(le(Model_98_ice,
;                              Epoch_1,
;                              ep(Model_98_ice, S2, Node_1))))))),
;  Not(ForAll(Node_1,
;             ForAll(Node_2,
;                    Or(locked(Model_98_ice,
;                              S2,
; ...
;;;;;;;; Counter example generation constraints end ;;;;;;;;
;;;;;;;; Counter example model description: ;;;;;;;;
; ;; universe for ModelId:
; ;;   ModelId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun ModelId!val!0 () ModelId)
; ;; cardinality constraint:
; (forall ((x ModelId)) (= x ModelId!val!0))
; ;; -----------
; ;; universe for StateId:
; ;;   StateId!val!1 StateId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun StateId!val!1 () StateId)
; (declare-fun StateId!val!0 () StateId)
; ;; cardinality constraint:
; (forall ((x StateId)) (or (= x StateId!val!1) (= x StateId!val!0)))
; ;; -----------
; ;; universe for Node:
; ;;   Node!val!0 Node!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Node!val!0 () Node)
; (declare-fun Node!val!1 () Node)
; ;; cardinality constraint:
; (forall ((x Node)) (or (= x Node!val!0) (= x Node!val!1)))
; ;; -----------
; ;; universe for Epoch:
; ;;   Epoch!val!3 Epoch!val!0 Epoch!val!4 Epoch!val!2 Epoch!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Epoch!val!3 () Epoch)
; (declare-fun Epoch!val!0 () Epoch)
; (declare-fun Epoch!val!4 () Epoch)
; (declare-fun Epoch!val!2 () Epoch)
; (declare-fun Epoch!val!1 () Epoch)
; ;; cardinality constraint:
; (forall ((x Epoch))
;         (or (= x Epoch!val!3)
;             (= x Epoch!val!0)
;             (= x Epoch!val!4)
;             (= x Epoch!val!2)
;             (= x Epoch!val!1)))
; ;; -----------
; (define-fun Model_98_ice () ModelId
;   ModelId!val!0)
; (define-fun S2 () StateId
;   StateId!val!0)
; (define-fun S1 () StateId
;   StateId!val!1)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (let ((a!1 (ite (and (= x!0 ModelId!val!0)
;                        (= x!1 StateId!val!0)
;                        (not (= x!2 Node!val!1)))
;                   Epoch!val!4
;                   Epoch!val!3)))
;     (ite (and (= x!0 ModelId!val!0)
;               (= x!1 StateId!val!1)
;               (not (= x!2 Node!val!1)))
;          Epoch!val!4
;          (ite (and (= x!0 ModelId!val!0)
;                    (= x!1 StateId!val!1)
;                    (= x!2 Node!val!1))
;               Epoch!val!2
;               a!1))))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!0) (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))))
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (not (= x!2 Node!val!1)))
;       (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!1))
;       (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (not (= x!2 Node!val!1)))))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!0)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!0)
;        (= x!2 Epoch!val!3)
;        (not (= x!2 Epoch!val!4))
;        (not (= x!2 Epoch!val!1))
;        (not (= x!2 Epoch!val!0))
;        (= x!3 Node!val!1)))
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_98_ice S1 Node!val!0 Node!val!0)
                (inv Model_98_ice S1 Node!val!0 Node!val!1)
                (inv Model_98_ice S1 Node!val!1 Node!val!0)
                (inv Model_98_ice S1 Node!val!1 Node!val!1))))
  (or (not a!1)
      (and a!1
           (inv Model_98_ice S2 Node!val!0 Node!val!0)
           (inv Model_98_ice S2 Node!val!0 Node!val!1)
           (inv Model_98_ice S2 Node!val!1 Node!val!0)
           (inv Model_98_ice S2 Node!val!1 Node!val!1)))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fe2f7b18640>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_99_ice, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_99_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_99_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_99_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_99_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_99_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_99_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_99_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_99_ice,
;                              zero(Model_99_ice),
;                              Epoch_1),
;                           one(Model_99_ice) !=
;                           zero(Model_99_ice))))),
;  And(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_99_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_99_ice,
;                                S1,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Or(held(Model_99_ice, S1, Node_1),
;                le(Model_99_ice,
;                   ep(Model_99_ice, S1, Node_1),
;                   ep(Model_99_ice, S1, Node_1)))),
;      ForAll(Node_1,
;             le(Model_99_ice,
;                ep(Model_99_ice, S1, Node_1),
;                ep(Model_99_ice, S1, Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_99_ice,
;                           S1,
;                           ep(Model_99_ice, S1, Node_1),
;                           Node_1)),
;                transfer(Model_99_ice,
;                         S1,
;                         ep(Model_99_ice, S1, Node_1),
;                         Node_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(le(Model_99_ice,
;                          ep(Model_99_ice, S1, Node_1),
;                          Epoch_1),
;                       le(Model_99_ice,
;                          Epoch_1,
;                          ep(Model_99_ice, S1, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_99_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_99_ice,
;                                S1,
;                                ep(Model_99_ice, S1, Node_1),
;                                Node_1)))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_99_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       locked(Model_99_ice,
;                              S1,
;                              ep(Model_99_ice, S1, Node_1),
;                              Node_1)))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_99_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       le(Model_99_ice,
;                          Epoch_1,
;                          ep(Model_99_ice, S1, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Epoch_1 ==
;                       ep(Model_99_ice, S1, Node_1),
;                       Not(le(Model_99_ice,
;                              ep(Model_99_ice, S1, Node_1),
;                              Epoch_1)),
;                       Not(le(Model_99_ice,
;                              Epoch_1,
;                              ep(Model_99_ice, S1, Node_1))))))),
;  ForAll(Node_1,
;         ForAll(Node_2,
;                Or(locked(Model_99_ice,
;                          S1,
;                          ep(Model_99_ice, S1, Node_2),
;                          Node_2),
;                   Not(held(Model_99_ice, S1, Node_2)),
;                   Not(Or(Not(le(Model_99_ice,
;                                 ep(Model_99_ice, S1, Node_1),
;                                 ep(Model_99_ice, S1, Node_2))),
;                          transfer(Model_99_ice,
;                                   S1,
;                                   ep(Model_99_ice,
;                                      S1,
;                                      Node_2),
;                                   Node_1)))))),
;  And(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_99_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_99_ice,
;                                S2,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Or(held(Model_99_ice, S2, Node_1),
;                le(Model_99_ice,
;                   ep(Model_99_ice, S2, Node_1),
;                   ep(Model_99_ice, S2, Node_1)))),
;      ForAll(Node_1,
;             le(Model_99_ice,
;                ep(Model_99_ice, S2, Node_1),
;                ep(Model_99_ice, S2, Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_99_ice,
;                           S2,
;                           ep(Model_99_ice, S2, Node_1),
;                           Node_1)),
;                transfer(Model_99_ice,
;                         S2,
;                         ep(Model_99_ice, S2, Node_1),
;                         Node_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(le(Model_99_ice,
;                          ep(Model_99_ice, S2, Node_1),
;                          Epoch_1),
;                       le(Model_99_ice,
;                          Epoch_1,
;                          ep(Model_99_ice, S2, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_99_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_99_ice,
;                                S2,
;                                ep(Model_99_ice, S2, Node_1),
;                                Node_1)))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_99_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       locked(Model_99_ice,
;                              S2,
;                              ep(Model_99_ice, S2, Node_1),
;                              Node_1)))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_99_ice,
;                                  S2,
;                                  Epoch_1,
;                                  Node_1)),
;                       le(Model_99_ice,
;                          Epoch_1,
;                          ep(Model_99_ice, S2, Node_1))))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(le(Model_99_ice,
;                              Epoch_1,
;                              ep(Model_99_ice, S2, Node_1))),
;                       Epoch_1 ==
;                       ep(Model_99_ice, S2, Node_1),
;                       Not(le(Model_99_ice,
;                              ep(Model_99_ice, S2, Node_1),
;                              Epoch_1)))))),
;  Not(ForAll(Node_1,
;             ForAll(Node_2,
;                    Or(locked(Model_99_ice,
; ...
;;;;;;;; Counter example generation constraints end ;;;;;;;;
;;;;;;;; Counter example model description: ;;;;;;;;
; ;; universe for ModelId:
; ;;   ModelId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun ModelId!val!0 () ModelId)
; ;; cardinality constraint:
; (forall ((x ModelId)) (= x ModelId!val!0))
; ;; -----------
; ;; universe for StateId:
; ;;   StateId!val!1 StateId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun StateId!val!1 () StateId)
; (declare-fun StateId!val!0 () StateId)
; ;; cardinality constraint:
; (forall ((x StateId)) (or (= x StateId!val!1) (= x StateId!val!0)))
; ;; -----------
; ;; universe for Node:
; ;;   Node!val!0 Node!val!1 Node!val!2 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Node!val!0 () Node)
; (declare-fun Node!val!1 () Node)
; (declare-fun Node!val!2 () Node)
; ;; cardinality constraint:
; (forall ((x Node)) (or (= x Node!val!0) (= x Node!val!1) (= x Node!val!2)))
; ;; -----------
; ;; universe for Epoch:
; ;;   Epoch!val!3 Epoch!val!0 Epoch!val!4 Epoch!val!2 Epoch!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Epoch!val!3 () Epoch)
; (declare-fun Epoch!val!0 () Epoch)
; (declare-fun Epoch!val!4 () Epoch)
; (declare-fun Epoch!val!2 () Epoch)
; (declare-fun Epoch!val!1 () Epoch)
; ;; cardinality constraint:
; (forall ((x Epoch))
;         (or (= x Epoch!val!3)
;             (= x Epoch!val!0)
;             (= x Epoch!val!4)
;             (= x Epoch!val!2)
;             (= x Epoch!val!1)))
; ;; -----------
; (define-fun Model_99_ice () ModelId
;   ModelId!val!0)
; (define-fun S1 () StateId
;   StateId!val!1)
; (define-fun S2 () StateId
;   StateId!val!0)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (ite (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (= x!2 Node!val!2))
;     Epoch!val!4
;     (let ((a!1 (or (and (= x!0 ModelId!val!0)
;                         (= x!1 StateId!val!0)
;                         (= x!2 Node!val!1)
;                         (not (= x!2 Node!val!2)))
;                    (and (= x!0 ModelId!val!0)
;                         (= x!1 StateId!val!1)
;                         (= x!2 Node!val!1)
;                         (not (= x!2 Node!val!2)))))
;           (a!2 (ite (and (= x!0 ModelId!val!0)
;                          (= x!1 StateId!val!0)
;                          (not (= x!2 Node!val!1))
;                          (not (= x!2 Node!val!2)))
;                     Epoch!val!3
;                     Epoch!val!0)))
;     (let ((a!3 (ite a!1
;                     Epoch!val!2
;                     (ite (and (= x!0 ModelId!val!0)
;                               (= x!1 StateId!val!0)
;                               (= x!2 Node!val!2))
;                          Epoch!val!4
;                          a!2))))
;       (ite (and (= x!0 ModelId!val!0)
;                 (= x!1 StateId!val!1)
;                 (not (= x!2 Node!val!1))
;                 (not (= x!2 Node!val!2)))
;            Epoch!val!3
;            a!3)))))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!4) (= x!2 Epoch!val!4))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!4))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!4)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!4))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!4)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!4)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!4))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!4)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!4)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!4))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!4)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!4))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!4)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!4))
;            (= x!2 Epoch!val!4))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!4))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!4)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!4))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!4)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!4))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!4)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!4)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!4)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!4)))))
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Node!val!1))
;            (not (= x!2 Node!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Node!val!1)
;            (not (= x!2 Node!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Node!val!1))
;            (not (= x!2 Node!val!2)))))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (= x!3 Node!val!1)
;            (not (= x!3 Node!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (= x!3 Node!val!1)
;            (not (= x!3 Node!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (= x!3 Node!val!2))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!0)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (= x!3 Node!val!1)
;            (not (= x!3 Node!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (= x!3 Node!val!1)
;            (not (= x!3 Node!val!2)))))
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_99_ice S1 Node!val!0 Node!val!0)
                (inv Model_99_ice S1 Node!val!0 Node!val!1)
                (inv Model_99_ice S1 Node!val!0 Node!val!2)
                (inv Model_99_ice S1 Node!val!1 Node!val!0)
                (inv Model_99_ice S1 Node!val!1 Node!val!1)
                (inv Model_99_ice S1 Node!val!1 Node!val!2)
                (inv Model_99_ice S1 Node!val!2 Node!val!0)
                (inv Model_99_ice S1 Node!val!2 Node!val!1)
                (inv Model_99_ice S1 Node!val!2 Node!val!2))))
  (or (not a!1)
      (and a!1
           (inv Model_99_ice S2 Node!val!0 Node!val!0)
           (inv Model_99_ice S2 Node!val!0 Node!val!1)
           (inv Model_99_ice S2 Node!val!0 Node!val!2)
           (inv Model_99_ice S2 Node!val!1 Node!val!0)
           (inv Model_99_ice S2 Node!val!1 Node!val!1)
           (inv Model_99_ice S2 Node!val!1 Node!val!2)
           (inv Model_99_ice S2 Node!val!2 Node!val!0)
           (inv Model_99_ice S2 Node!val!2 Node!val!1)
           (inv Model_99_ice S2 Node!val!2 Node!val!2)))))



;(declare-fun Model_DUMMYMODEL () ModelId)
;(declare-fun DUMMYSTATE () StateId)
(declare-fun N1 () Node)
(declare-fun N2 () Node)

; this one includes assertion of axioms, so no need to assert it again
(assert (and (le Model_DUMMYMODEL Epoch!val!2 Epoch!val!2)
     (=> (and (le Model_DUMMYMODEL Epoch!val!2 Epoch!val!2)
              (le Model_DUMMYMODEL Epoch!val!2 Epoch!val!2))
         (le Model_DUMMYMODEL Epoch!val!2 Epoch!val!2))
     (=> (and (le Model_DUMMYMODEL Epoch!val!2 Epoch!val!2)
              (le Model_DUMMYMODEL Epoch!val!2 Epoch!val!2))
         (= Epoch!val!2 Epoch!val!2))
     (or (le Model_DUMMYMODEL Epoch!val!2 Epoch!val!2)
         (le Model_DUMMYMODEL Epoch!val!2 Epoch!val!2))
     (le Model_DUMMYMODEL (zero Model_DUMMYMODEL) Epoch!val!2)
     (distinct (one Model_DUMMYMODEL) (zero Model_DUMMYMODEL))))
(assert (and (or (not (locked Model_DUMMYMODEL DUMMYSTATE Epoch!val!2 Node!val!0))
         (transfer Model_DUMMYMODEL DUMMYSTATE Epoch!val!2 Node!val!0))))
(assert (and (or (held Model_DUMMYMODEL DUMMYSTATE Node!val!0)
         (le Model_DUMMYMODEL
             (ep Model_DUMMYMODEL DUMMYSTATE Node!val!0)
             (ep Model_DUMMYMODEL DUMMYSTATE Node!val!0)))))
(assert (and (le Model_DUMMYMODEL
         (ep Model_DUMMYMODEL DUMMYSTATE Node!val!0)
         (ep Model_DUMMYMODEL DUMMYSTATE Node!val!0))))
(assert (let ((a!1 (or (not (locked Model_DUMMYMODEL
                            DUMMYSTATE
                            (ep Model_DUMMYMODEL DUMMYSTATE Node!val!0)
                            Node!val!0))
               (transfer Model_DUMMYMODEL
                         DUMMYSTATE
                         (ep Model_DUMMYMODEL DUMMYSTATE Node!val!0)
                         Node!val!0))))
  (and a!1)))
(assert (and (or (le Model_DUMMYMODEL
             Epoch!val!2
             (ep Model_DUMMYMODEL DUMMYSTATE Node!val!0))
         (le Model_DUMMYMODEL
             (ep Model_DUMMYMODEL DUMMYSTATE Node!val!0)
             Epoch!val!2))))
(assert (and (or (transfer Model_DUMMYMODEL
                   DUMMYSTATE
                   (ep Model_DUMMYMODEL DUMMYSTATE Node!val!0)
                   Node!val!0)
         (not (locked Model_DUMMYMODEL DUMMYSTATE Epoch!val!2 Node!val!0)))))
(assert (and (or (not (locked Model_DUMMYMODEL DUMMYSTATE Epoch!val!2 Node!val!0))
         (locked Model_DUMMYMODEL
                 DUMMYSTATE
                 (ep Model_DUMMYMODEL DUMMYSTATE Node!val!0)
                 Node!val!0))))
(assert (and (or (not (locked Model_DUMMYMODEL DUMMYSTATE Epoch!val!2 Node!val!0))
         (le Model_DUMMYMODEL
             Epoch!val!2
             (ep Model_DUMMYMODEL DUMMYSTATE Node!val!0)))))
(assert (let ((a!1 (or (not (le Model_DUMMYMODEL
                        (ep Model_DUMMYMODEL DUMMYSTATE Node!val!0)
                        Epoch!val!2))
               (= Epoch!val!2 (ep Model_DUMMYMODEL DUMMYSTATE Node!val!0))
               (not (le Model_DUMMYMODEL
                        Epoch!val!2
                        (ep Model_DUMMYMODEL DUMMYSTATE Node!val!0))))))
  (and a!1)))
(assert (not (inv Model_DUMMYMODEL DUMMYSTATE Node!val!0 Node!val!0)))

(assert (not (inv Model_DUMMYMODEL DUMMYSTATE N1 N2)))


        (check-sat)
(get-value (inv_b0 inv_b1 inv_b2 inv_b3 inv_b4 inv_b5 inv_b6 inv_b7 inv_b8 inv_b9 inv_b10 inv_b11 inv_b12 inv_b13 inv_b14 inv_b15 inv_b16 inv_b17 inv_b18 inv_b19 inv_b20 inv_b21 inv_b22 inv_b23 inv_b24 inv_b25 inv_b26 inv_b27 inv_b28 inv_b29 inv_b30 inv_b31 inv_b32 inv_b33 inv_b34 inv_b35 inv_b36 inv_b37 inv_b38 inv_b39 inv_b40 inv_b41 inv_b42 inv_b43 inv_b44 inv_b45 inv_b46 inv_b47 inv_b48 inv_b49 inv_b50 inv_b51 inv_b52 inv_b53 inv_b54 inv_b55 inv_b56 inv_b57 inv_b58 inv_b59 inv_b60 inv_b61 inv_b62 inv_b63 inv_b64 inv_b65 inv_b66 inv_b67 inv_b68 inv_b69 inv_b70 inv_b71 inv_b72 inv_b73 inv_b74 inv_b75 inv_b76 inv_b77 inv_b78 inv_b79 inv_b80 inv_b81 inv_b82 inv_b83 inv_b84 inv_b85 inv_b86 inv_b87 inv_b88 inv_b89 inv_b90 inv_b91 inv_b92 inv_b93 inv_b94 inv_b95 inv_b96 inv_b97 inv_b98 inv_b99 inv_b100 inv_b101 inv_b102 inv_b103 inv_b104 inv_b105 inv_b106 inv_b107 inv_b108 inv_b109 inv_b110 inv_b111 inv_b112 inv_b113 inv_b114 inv_b115 inv_b116 inv_b117 inv_b118 inv_b119 inv_b120 inv_b121 inv_b122 inv_b123 inv_b124 inv_b125 inv_b126 inv_b127 inv_b128 inv_b129 inv_b130 inv_b131 inv_b132 inv_b133 inv_b134 inv_b135 inv_b136 inv_b137 inv_b138 inv_b139 inv_b140 inv_b141 inv_b142 inv_b143 inv_b144 inv_b145 inv_b146 inv_b147 inv_b148 inv_b149 inv_b150 inv_b151 inv_b152 inv_b153 inv_b154 inv_b155 inv_b156 inv_b157 inv_b158 inv_b159 inv_b160 inv_b161 inv_b162 inv_b163 inv_b164 inv_b165 inv_b166 inv_b167 inv_b168 inv_b169 inv_b170 inv_b171 inv_b172 inv_b173 inv_b174 inv_b175 inv_b176 inv_b177 inv_b178 inv_b179 inv_b180 inv_b181 inv_b182 inv_b183 inv_b184 inv_b185 inv_b186 inv_b187 inv_b188 inv_b189 inv_b190 inv_b191 inv_b192 inv_b193 inv_b194 inv_b195 inv_b196 inv_b197 inv_b198 inv_b199 inv_b200 inv_b201 inv_b202 inv_b203 inv_b204 inv_b205 inv_b206 inv_b207 inv_b208 inv_b209 inv_b210 inv_b211 inv_b212 inv_b213 inv_b214 inv_b215 inv_b216 inv_b217 inv_b218 inv_b219 inv_b220 inv_b221 inv_b222 inv_b223 inv_b224 inv_b225 inv_b226 inv_b227 inv_b228 inv_b229 inv_b230 inv_b231 inv_b232 inv_b233 inv_b234 inv_b235 inv_b236 inv_b237 inv_b238 inv_b239 inv_b240 inv_b241 inv_b242 inv_b243 inv_b244 inv_b245 inv_b246 inv_b247 inv_b248 inv_b249 inv_b250 inv_b251 inv_b252 inv_b253 inv_b254 inv_b255 inv_b256 inv_b257 inv_b258 inv_b259 inv_b260 inv_b261 inv_b262 inv_b263 inv_b264 inv_b265 inv_b266 inv_b267 inv_b268 inv_b269 inv_b270 inv_b271 inv_b272 inv_b273 inv_b274 inv_b275 inv_b276 inv_b277 inv_b278 inv_b279 inv_b280 inv_b281 inv_b282 inv_b283 inv_b284 inv_b285 inv_b286 inv_b287 inv_b288 inv_b289 inv_b290 inv_b291 inv_b292 inv_b293 inv_b294 inv_b295 inv_b296 inv_b297 inv_b298 inv_b299 inv_b300 inv_b301 inv_b302 inv_b303 inv_b304 inv_b305 inv_b306 inv_b307 inv_b308 inv_b309 inv_b310 inv_b311 inv_b312 inv_b313 inv_b314 inv_b315 inv_b316 inv_b317 inv_b318 inv_b319 inv_b320 inv_b321 inv_b322 inv_b323 inv_b324 inv_b325 inv_b326 inv_b327 inv_b328 inv_b329 inv_b330 inv_b331 inv_b332 inv_b333 inv_b334 inv_b335 inv_b336 inv_b337 inv_b338 inv_b339 inv_b340 inv_b341 inv_b342 inv_b343 inv_b344 inv_b345 inv_b346 inv_b347 inv_b348 inv_b349 inv_b350 inv_b351 inv_b352 inv_b353 inv_b354 inv_b355 inv_b356 inv_b357 inv_b358 inv_b359 inv_b360 inv_b361 inv_b362 inv_b363 inv_b364 inv_b365 inv_b366 inv_b367 inv_b368 inv_b369 inv_b370 inv_b371 inv_b372 inv_b373 inv_b374 inv_b375 inv_b376 inv_b377 inv_b378 inv_b379 inv_b380 inv_b381 inv_b382 inv_b383 inv_b384 inv_b385 inv_b386 inv_b387 inv_b388 inv_b389 inv_b390 inv_b391 inv_b392 inv_b393 inv_b394 inv_b395 inv_b396 inv_b397 inv_b398 inv_b399 inv_b400 inv_b401 inv_b402 inv_b403 inv_b404 inv_b405 inv_b406 inv_b407 inv_b408 inv_b409 inv_b410 inv_b411 inv_b412 inv_b413 inv_b414 inv_b415 inv_b416 inv_b417 inv_b418 inv_b419 inv_b420 inv_b421 inv_b422 inv_b423 inv_b424 inv_b425 inv_b426 inv_b427 inv_b428 inv_b429 inv_b430 inv_b431 inv_b432 inv_b433 inv_b434 inv_b435 inv_b436 inv_b437 inv_b438 inv_b439 inv_b440 inv_b441 inv_b442 inv_b443 inv_b444 inv_b445 inv_b446 inv_b447 inv_b448 inv_b449 inv_b450 inv_b451 inv_b452 inv_b453 inv_b454 inv_b455 inv_b456 inv_b457 inv_b458 inv_b459 inv_b460 inv_b461 inv_b462 inv_b463 inv_b464 inv_b465 inv_b466 inv_b467 inv_b468 inv_b469 inv_b470 inv_b471 inv_b472 inv_b473 inv_b474 inv_b475 inv_b476 inv_b477 inv_b478 inv_b479 inv_b480 inv_b481 inv_b482 inv_b483 inv_b484 inv_b485 inv_b486 inv_b487 inv_b488 inv_b489 inv_b490 inv_b491 inv_b492 inv_b493 inv_b494 inv_b495 inv_b496 inv_b497 inv_b498 inv_b499 inv_b500 inv_b501 inv_b502 inv_b503 inv_b504 inv_b505 inv_b506 inv_b507 inv_b508 inv_b509 inv_b510 inv_b511 inv_b512 inv_b513 inv_b514 inv_b515 inv_b516 inv_b517 inv_b518 inv_b519 inv_b520 inv_b521 inv_b522 inv_b523 inv_b524 inv_b525 inv_b526 inv_b527 inv_b528 inv_b529 inv_b530 inv_b531 inv_b532 inv_b533 inv_b534 inv_b535 inv_b536 inv_b537 inv_b538 inv_b539 inv_b540 inv_b541 inv_b542 inv_b543 inv_b544 inv_b545 inv_b546 inv_b547 inv_b548 inv_b549 inv_b550 inv_b551 inv_b552 inv_b553 inv_b554 inv_b555 inv_b556 inv_b557 inv_b558 inv_b559 inv_b560 inv_b561 inv_b562 inv_b563 inv_b564 inv_b565 inv_b566 inv_b567 inv_b568 inv_b569 inv_b570 inv_b571 inv_b572 inv_b573 inv_b574 inv_b575 inv_b576 inv_b577 inv_b578 inv_b579 inv_b580 inv_b581 inv_b582 inv_b583 inv_b584 inv_b585 inv_b586 inv_b587 inv_b588 inv_b589 inv_b590 inv_b591 inv_b592 inv_b593 inv_b594 inv_b595 inv_b596 inv_b597 inv_b598 inv_b599 inv_b600 inv_b601 inv_b602 inv_b603 inv_b604 inv_b605 inv_b606 inv_b607 inv_b608 inv_b609 inv_b610 inv_b611 inv_b612 inv_b613 inv_b614 inv_b615 inv_b616 inv_b617 inv_b618 inv_b619 inv_b620 inv_b621 inv_b622 inv_b623 inv_b624 inv_b625 inv_b626 inv_b627 inv_b628 inv_b629 inv_b630 inv_b631 inv_b632 inv_b633 inv_b634 inv_b635 inv_b636 inv_b637 inv_b638 inv_b639 inv_b640 inv_b641 inv_b642 inv_b643 inv_b644 inv_b645 inv_b646 inv_b647 inv_b648 inv_b649 inv_b650 inv_b651 inv_b652 inv_b653 inv_b654 inv_b655 inv_b656 inv_b657 inv_b658 inv_b659 inv_b660 inv_b661 inv_b662 inv_b663 inv_b664 inv_b665 inv_b666 inv_b667 inv_b668 inv_b669 inv_b670 inv_b671 inv_b672 inv_b673 inv_b674 inv_b675 inv_b676 inv_b677 inv_b678 inv_b679 inv_b680 inv_b681 inv_b682 inv_b683 inv_b684 inv_b685 inv_b686 inv_b687 inv_b688 inv_b689 inv_b690 inv_b691 inv_b692 inv_b693 inv_b694 inv_b695 inv_b696 inv_b697 inv_b698 inv_b699 inv_b700 inv_b701 inv_b702 inv_b703 inv_b704 inv_b705 inv_b706 inv_b707 inv_b708 inv_b709 inv_b710 inv_b711 inv_b712 inv_b713 inv_b714 inv_b715 inv_b716 inv_b717 inv_b718 inv_b719 inv_b720 inv_b721 inv_b722 inv_b723 inv_b724 inv_b725 inv_b726 inv_b727 inv_b728 inv_b729 inv_b730 inv_b731 inv_b732 inv_b733 inv_b734 inv_b735 inv_b736 inv_b737 inv_b738 inv_b739 inv_b740 inv_b741 inv_b742 inv_b743 inv_b744 inv_b745 inv_b746 inv_b747 inv_b748 inv_b749 inv_b750 inv_b751 inv_b752 inv_b753 inv_b754 inv_b755 inv_b756 inv_b757 inv_b758 inv_b759 inv_b760 inv_b761 inv_b762 inv_b763 inv_b764 inv_b765 inv_b766 inv_b767 inv_b768 inv_b769 inv_b770 inv_b771 inv_b772 inv_b773 inv_b774 inv_b775 inv_b776 inv_b777 inv_b778 inv_b779 inv_b780 inv_b781 inv_b782 inv_b783 inv_b784 inv_b785 inv_b786 inv_b787 inv_b788 inv_b789 inv_b790 inv_b791 inv_b792 inv_b793 inv_b794 inv_b795 inv_b796 inv_b797 inv_b798 inv_b799 inv_b800 inv_b801 inv_b802 inv_b803 inv_b804 inv_b805 inv_b806 inv_b807 inv_b808 inv_b809 inv_b810 inv_b811 inv_b812 inv_b813 inv_b814 inv_b815 inv_b816 inv_b817 inv_b818 inv_b819 inv_b820 inv_b821 inv_b822 inv_b823 inv_b824 inv_b825 inv_b826 inv_b827 inv_b828 inv_b829 inv_b830 inv_b831 inv_b832 inv_b833 inv_b834 inv_b835 inv_b836 inv_b837 inv_b838 inv_b839 inv_b840 inv_b841 inv_b842 inv_b843 inv_b844 inv_b845 inv_b846 inv_b847 inv_b848 inv_b849 inv_b850 inv_b851 inv_b852 inv_b853 inv_b854 inv_b855 inv_b856 inv_b857 inv_b858 inv_b859 inv_b860 inv_b861 inv_b862 inv_b863 inv_b864 inv_b865 inv_b866 inv_b867 inv_b868 inv_b869 inv_b870 inv_b871 inv_b872 inv_b873 inv_b874 inv_b875 inv_b876 inv_b877 inv_b878 inv_b879 inv_b880 inv_b881 inv_b882 inv_b883 inv_b884 inv_b885 inv_b886 inv_b887 inv_b888 inv_b889 inv_b890 inv_b891 inv_b892 inv_b893 inv_b894 inv_b895 inv_b896 inv_b897 inv_b898 inv_b899 inv_b900 inv_b901 inv_b902 inv_b903 inv_b904 inv_b905 inv_b906 inv_b907 inv_b908 inv_b909 inv_b910 inv_b911 inv_b912 inv_b913 inv_b914 inv_b915 inv_b916 inv_b917 inv_b918 inv_b919 inv_b920 inv_b921 inv_b922 inv_b923 inv_b924 inv_b925 inv_b926 inv_b927 inv_b928 inv_b929 inv_b930 inv_b931 inv_b932 inv_b933 inv_b934 inv_b935 inv_b936 inv_b937 inv_b938 inv_b939 inv_b940 inv_b941 inv_b942 inv_b943 inv_b944 inv_b945 inv_b946 inv_b947 inv_b948 inv_b949 inv_b950 inv_b951 inv_b952 inv_b953 inv_b954 inv_b955 inv_b956 inv_b957 inv_b958 inv_b959 inv_b960 inv_b961 inv_b962 inv_b963 inv_b964 inv_b965 inv_b966 inv_b967 inv_b968 inv_b969 inv_b970 inv_b971 inv_b972 inv_b973 inv_b974 inv_b975 inv_b976 inv_b977 inv_b978 inv_b979 inv_b980 inv_b981 inv_b982 inv_b983 inv_b984 inv_b985 inv_b986 inv_b987 inv_b988 inv_b989 inv_b990 inv_b991 inv_b992 inv_b993 inv_b994 inv_b995 inv_b996 inv_b997 inv_b998 inv_b999 inv_b1000 inv_b1001 inv_b1002 inv_b1003 inv_b1004 inv_b1005 inv_b1006 inv_b1007 inv_b1008 inv_b1009 inv_b1010 inv_b1011 inv_b1012 inv_b1013 inv_b1014 inv_b1015 inv_b1016 inv_b1017 inv_b1018 inv_b1019 inv_b1020 inv_b1021 inv_b1022 inv_b1023 inv_b1024 inv_b1025 inv_b1026 inv_b1027 inv_b1028 inv_b1029 inv_b1030 inv_b1031 inv_b1032 inv_b1033 inv_b1034 inv_b1035 inv_b1036 inv_b1037 inv_b1038 inv_b1039 inv_b1040 inv_b1041 inv_b1042 inv_b1043 inv_b1044 inv_b1045 inv_b1046 inv_b1047 inv_b1048 inv_b1049 inv_b1050 inv_b1051 inv_b1052 inv_b1053 inv_b1054 inv_b1055 inv_b1056 inv_b1057 inv_b1058 inv_b1059 inv_b1060 inv_b1061 inv_b1062 inv_b1063 inv_b1064 inv_b1065 inv_b1066 inv_b1067 inv_b1068 inv_b1069 inv_b1070 inv_b1071 inv_b1072 inv_b1073 inv_b1074 inv_b1075 inv_b1076 inv_b1077 inv_b1078 inv_b1079 inv_b1080 inv_b1081 inv_b1082 inv_b1083 inv_b1084 inv_b1085 inv_b1086 inv_b1087 inv_b1088 inv_b1089 inv_b1090 inv_b1091 inv_b1092 inv_b1093 inv_b1094 inv_b1095 inv_b1096 inv_b1097 inv_b1098 inv_b1099 inv_b1100 inv_b1101 inv_b1102 inv_b1103 inv_b1104 inv_b1105 inv_b1106 inv_b1107 inv_b1108 inv_b1109 inv_b1110 inv_b1111 inv_b1112 inv_b1113 inv_b1114 inv_b1115 inv_b1116 inv_b1117 inv_b1118 inv_b1119 inv_b1120 inv_b1121 inv_b1122 inv_b1123 inv_b1124 inv_b1125 inv_b1126 inv_b1127 inv_b1128 inv_b1129 inv_b1130 inv_b1131 inv_b1132 inv_b1133 inv_b1134 inv_b1135 inv_b1136 inv_b1137 inv_b1138 inv_b1139 inv_b1140 inv_b1141 inv_b1142 inv_b1143 inv_b1144 inv_b1145 inv_b1146 inv_b1147 inv_b1148 inv_b1149 inv_b1150 inv_b1151 inv_b1152 inv_b1153 inv_b1154 inv_b1155 inv_b1156 inv_b1157 inv_b1158 inv_b1159 inv_b1160 inv_b1161 inv_b1162 inv_b1163 inv_b1164 inv_b1165 inv_b1166 inv_b1167 inv_b1168 inv_b1169 inv_b1170 inv_b1171 inv_b1172 inv_b1173 inv_b1174 inv_b1175 inv_b1176 inv_b1177 inv_b1178 inv_b1179 inv_b1180 inv_b1181 inv_b1182 inv_b1183 inv_b1184 inv_b1185 inv_b1186 inv_b1187 inv_b1188 inv_b1189 inv_b1190 inv_b1191 inv_b1192 inv_b1193 inv_b1194 inv_b1195 inv_b1196 inv_b1197 inv_b1198 inv_b1199 inv_b1200 inv_b1201 inv_b1202 inv_b1203 inv_b1204 inv_b1205 inv_b1206 inv_b1207 inv_b1208 inv_b1209 inv_b1210 inv_b1211 inv_b1212 inv_b1213 inv_b1214 inv_b1215 inv_b1216 inv_b1217 inv_b1218 inv_b1219 inv_b1220 inv_b1221 inv_b1222 inv_b1223 inv_b1224 inv_b1225 inv_b1226 inv_b1227 inv_b1228 inv_b1229 inv_b1230 inv_b1231 inv_b1232 inv_b1233 inv_b1234 inv_b1235 inv_b1236 inv_b1237 inv_b1238 inv_b1239 inv_b1240 inv_b1241 inv_b1242 inv_b1243 inv_b1244 inv_b1245 inv_b1246 inv_b1247 inv_b1248 inv_b1249 inv_b1250 inv_b1251 inv_b1252 inv_b1253 inv_b1254 inv_b1255 inv_b1256 inv_b1257 inv_b1258 inv_b1259 inv_b1260 inv_b1261 inv_b1262 inv_b1263 inv_b1264 inv_b1265 inv_b1266 inv_b1267 inv_b1268 inv_b1269 inv_b1270 inv_b1271 inv_b1272 inv_b1273 inv_b1274 inv_b1275 inv_b1276 inv_b1277 inv_b1278 inv_b1279 inv_b1280 inv_b1281 inv_b1282 inv_b1283 inv_b1284 inv_b1285 inv_b1286 inv_b1287 inv_b1288 inv_b1289 inv_b1290 inv_b1291 inv_b1292 inv_b1293 inv_b1294 inv_b1295 inv_b1296 inv_b1297 inv_b1298 inv_b1299 inv_b1300 inv_b1301 inv_b1302 inv_b1303 inv_b1304 inv_b1305 inv_b1306 inv_b1307 inv_b1308 inv_b1309 inv_b1310 inv_b1311 inv_b1312 inv_b1313 inv_b1314 inv_b1315 inv_b1316 inv_b1317 inv_b1318 inv_b1319 inv_b1320 inv_b1321 inv_b1322 inv_b1323 inv_b1324 inv_b1325 inv_b1326 inv_b1327 inv_b1328 inv_b1329 inv_b1330 inv_b1331 inv_b1332 inv_b1333 inv_b1334 inv_b1335 inv_b1336 inv_b1337 inv_b1338 inv_b1339 inv_b1340 inv_b1341 inv_b1342 inv_b1343 inv_b1344 inv_b1345 inv_b1346 inv_b1347 inv_b1348 inv_b1349 inv_b1350 inv_b1351 inv_b1352 inv_b1353 inv_b1354 inv_b1355 inv_b1356 inv_b1357 inv_b1358 inv_b1359 inv_b1360 inv_b1361 inv_b1362 inv_b1363 inv_b1364 inv_b1365 inv_b1366 inv_b1367 inv_b1368 inv_b1369 inv_b1370 inv_b1371 inv_b1372 inv_b1373 inv_b1374 inv_b1375 inv_b1376 inv_b1377 inv_b1378 inv_b1379 inv_b1380 inv_b1381 inv_b1382 inv_b1383 inv_b1384 inv_b1385 inv_b1386 inv_b1387 inv_b1388 inv_b1389 inv_b1390 inv_b1391 inv_b1392 inv_b1393 inv_b1394 inv_b1395 inv_b1396 inv_b1397 inv_b1398 inv_b1399 inv_b1400 inv_b1401 inv_b1402 inv_b1403 inv_b1404 inv_b1405 inv_b1406 inv_b1407 inv_b1408 inv_b1409 inv_b1410 inv_b1411 inv_b1412 inv_b1413 inv_b1414 inv_b1415 inv_b1416 inv_b1417 inv_b1418 inv_b1419 inv_b1420 inv_b1421 inv_b1422 inv_b1423 inv_b1424 inv_b1425 inv_b1426 inv_b1427 inv_b1428 inv_b1429 inv_b1430 inv_b1431 inv_b1432 inv_b1433 inv_b1434 inv_b1435 inv_b1436 inv_b1437 inv_b1438 inv_b1439 inv_b1440 inv_b1441 inv_b1442 inv_b1443 inv_b1444 inv_b1445 inv_b1446 inv_b1447 inv_b1448 inv_b1449 inv_b1450 inv_b1451 inv_b1452 inv_b1453 inv_b1454 inv_b1455 inv_b1456 inv_b1457 inv_b1458 inv_b1459 inv_b1460 inv_b1461 inv_b1462 inv_b1463 inv_b1464 inv_b1465 inv_b1466 inv_b1467 inv_b1468 inv_b1469 inv_b1470 inv_b1471 inv_b1472 inv_b1473 inv_b1474 inv_b1475 inv_b1476 inv_b1477 inv_b1478 inv_b1479 inv_b1480 inv_b1481 inv_b1482 inv_b1483 inv_b1484 inv_b1485 inv_b1486 inv_b1487 inv_b1488 inv_b1489 inv_b1490 inv_b1491 inv_b1492 inv_b1493 inv_b1494 inv_b1495 inv_b1496 inv_b1497 inv_b1498 inv_b1499 inv_b1500 inv_b1501 inv_b1502 inv_b1503 inv_b1504 inv_b1505 inv_b1506 inv_b1507 inv_b1508 inv_b1509 inv_b1510 inv_b1511 inv_b1512 inv_b1513 inv_b1514 inv_b1515 inv_b1516 inv_b1517 inv_b1518 inv_b1519 inv_b1520 inv_b1521 inv_b1522 inv_b1523 inv_b1524 inv_b1525 inv_b1526 inv_b1527 inv_b1528 inv_b1529 inv_b1530 inv_b1531 inv_b1532 inv_b1533 inv_b1534 inv_b1535 inv_b1536 inv_b1537 inv_b1538 inv_b1539 inv_b1540 inv_b1541 inv_b1542 inv_b1543 inv_b1544 inv_b1545 inv_b1546 inv_b1547 inv_b1548 inv_b1549 inv_b1550 inv_b1551 inv_b1552 inv_b1553 inv_b1554 inv_b1555 inv_b1556 inv_b1557 inv_b1558 inv_b1559 inv_b1560 inv_b1561 inv_b1562 inv_b1563 inv_b1564 inv_b1565 inv_b1566 inv_b1567 inv_b1568 inv_b1569 inv_b1570 inv_b1571 inv_b1572 inv_b1573 inv_b1574 inv_b1575 inv_b1576 inv_b1577 inv_b1578 inv_b1579 inv_b1580 inv_b1581 inv_b1582 inv_b1583 inv_b1584 inv_b1585 inv_b1586 inv_b1587 inv_b1588 inv_b1589 inv_b1590 inv_b1591 inv_b1592 inv_b1593 inv_b1594 inv_b1595 inv_b1596 inv_b1597 inv_b1598 inv_b1599 inv_b1600 inv_b1601 inv_b1602 inv_b1603 inv_b1604 inv_b1605 inv_b1606 inv_b1607 inv_b1608 inv_b1609 inv_b1610 inv_b1611 inv_b1612 inv_b1613 inv_b1614 inv_b1615 inv_b1616 inv_b1617 inv_b1618 inv_b1619 inv_b1620 inv_b1621 inv_b1622 inv_b1623 inv_b1624 inv_b1625 inv_b1626 inv_b1627 inv_b1628 inv_b1629 inv_b1630 inv_b1631 inv_b1632 inv_b1633 inv_b1634 inv_b1635 inv_b1636 inv_b1637 inv_b1638 inv_b1639 inv_b1640 inv_b1641 inv_b1642 inv_b1643 inv_b1644 inv_b1645 inv_b1646 inv_b1647 inv_b1648 inv_b1649 inv_b1650 inv_b1651 inv_b1652 inv_b1653 inv_b1654 inv_b1655 inv_b1656 inv_b1657 inv_b1658 inv_b1659 inv_b1660 inv_b1661 inv_b1662 inv_b1663 inv_b1664 inv_b1665 inv_b1666 inv_b1667 inv_b1668 inv_b1669 inv_b1670 inv_b1671 inv_b1672 inv_b1673 inv_b1674 inv_b1675 inv_b1676 inv_b1677 inv_b1678 inv_b1679 inv_b1680 inv_b1681 inv_b1682 inv_b1683 inv_b1684 inv_b1685 inv_b1686 inv_b1687 inv_b1688 inv_b1689 inv_b1690 inv_b1691 inv_b1692 inv_b1693 inv_b1694 inv_b1695 inv_b1696 inv_b1697 inv_b1698 inv_b1699 inv_b1700 inv_b1701 inv_b1702 inv_b1703 inv_b1704 inv_b1705 inv_b1706 inv_b1707 inv_b1708 inv_b1709 inv_b1710 inv_b1711 inv_b1712 inv_b1713 inv_b1714 inv_b1715 inv_b1716 inv_b1717 inv_b1718 inv_b1719 inv_b1720 inv_b1721 inv_b1722 inv_b1723 inv_b1724 inv_b1725 inv_b1726 inv_b1727 inv_b1728 inv_b1729 inv_b1730 inv_b1731 inv_b1732 inv_b1733 inv_b1734 inv_b1735 inv_b1736 inv_b1737 inv_b1738 inv_b1739 inv_b1740 inv_b1741 inv_b1742 inv_b1743 inv_b1744 inv_b1745 inv_b1746 inv_b1747 inv_b1748 inv_b1749 inv_b1750 inv_b1751 inv_b1752 inv_b1753 inv_b1754 inv_b1755 inv_b1756 inv_b1757 inv_b1758 inv_b1759 inv_b1760 inv_b1761 inv_b1762 inv_b1763 inv_b1764 inv_b1765 inv_b1766 inv_b1767 inv_b1768 inv_b1769 inv_b1770 inv_b1771 inv_b1772 inv_b1773 inv_b1774 inv_b1775 inv_b1776 inv_b1777 inv_b1778 inv_b1779 inv_b1780 inv_b1781 inv_b1782 inv_b1783 inv_b1784 inv_b1785 inv_b1786 inv_b1787 inv_b1788 inv_b1789 inv_b1790 inv_b1791 inv_b1792 inv_b1793 inv_b1794 inv_b1795 inv_b1796 inv_b1797 inv_b1798 inv_b1799 inv_b1800 inv_b1801 inv_b1802 inv_b1803 inv_b1804 inv_b1805 inv_b1806 inv_b1807 inv_b1808 inv_b1809 inv_b1810 inv_b1811 inv_b1812 inv_b1813 inv_b1814 inv_b1815 inv_b1816 inv_b1817 inv_b1818 inv_b1819 inv_b1820 inv_b1821 inv_b1822 inv_b1823 inv_b1824 inv_b1825 inv_b1826 inv_b1827 inv_b1828 inv_b1829 inv_b1830 inv_b1831 inv_b1832 inv_b1833 inv_b1834 inv_b1835 inv_b1836 inv_b1837 inv_b1838 inv_b1839 inv_b1840 inv_b1841 inv_b1842 inv_b1843 inv_b1844 inv_b1845 inv_b1846 inv_b1847 inv_b1848 inv_b1849 inv_b1850 inv_b1851 inv_b1852 inv_b1853 inv_b1854 inv_b1855 inv_b1856 inv_b1857 inv_b1858 inv_b1859 inv_b1860 inv_b1861 inv_b1862 inv_b1863 inv_b1864 inv_b1865 inv_b1866 inv_b1867 inv_b1868 inv_b1869 inv_b1870 inv_b1871 inv_b1872 inv_b1873 inv_b1874 inv_b1875 inv_b1876 inv_b1877 inv_b1878 inv_b1879 inv_b1880 inv_b1881 inv_b1882 inv_b1883 inv_b1884 inv_b1885 inv_b1886 inv_b1887 inv_b1888 inv_b1889 inv_b1890 inv_b1891 inv_b1892 inv_b1893 inv_b1894 inv_b1895 inv_b1896 inv_b1897 inv_b1898 inv_b1899 inv_b1900 inv_b1901 inv_b1902 inv_b1903 inv_b1904 inv_b1905 inv_b1906 inv_b1907 inv_b1908 inv_b1909 inv_b1910 inv_b1911 inv_b1912 inv_b1913 inv_b1914 inv_b1915 inv_b1916 inv_b1917 inv_b1918 inv_b1919 inv_b1920 inv_b1921 inv_b1922 inv_b1923 inv_b1924 inv_b1925 inv_b1926 inv_b1927 inv_b1928 inv_b1929 inv_b1930 inv_b1931 inv_b1932 inv_b1933 inv_b1934 inv_b1935 inv_b1936 inv_b1937 inv_b1938 inv_b1939 inv_b1940 inv_b1941 inv_b1942 inv_b1943 inv_b1944 inv_b1945 inv_b1946 inv_b1947 inv_b1948 inv_b1949 inv_b1950 inv_b1951 inv_b1952 inv_b1953 inv_b1954 inv_b1955 inv_b1956 inv_b1957 inv_b1958 inv_b1959 inv_b1960 inv_b1961 inv_b1962 inv_b1963 inv_b1964 inv_b1965 inv_b1966 inv_b1967 inv_b1968 inv_b1969 inv_b1970 inv_b1971 inv_b1972 inv_b1973 inv_b1974 inv_b1975 inv_b1976 inv_b1977 inv_b1978 inv_b1979 inv_b1980 inv_b1981 inv_b1982 inv_b1983 inv_b1984 inv_b1985 inv_b1986 inv_b1987 inv_b1988 inv_b1989 inv_b1990 inv_b1991 inv_b1992 inv_b1993 inv_b1994 inv_b1995 inv_b1996 inv_b1997 inv_b1998 inv_b1999 inv_b2000 inv_b2001 inv_b2002 inv_b2003 inv_b2004 inv_b2005 inv_b2006 inv_b2007 inv_b2008 inv_b2009 inv_b2010 inv_b2011 inv_b2012 inv_b2013 inv_b2014 inv_b2015 inv_b2016 inv_b2017 inv_b2018 inv_b2019 inv_b2020 inv_b2021 inv_b2022 inv_b2023 inv_b2024 inv_b2025 inv_b2026 inv_b2027 inv_b2028 inv_b2029 inv_b2030 inv_b2031 inv_b2032 inv_b2033 inv_b2034 inv_b2035 inv_b2036 inv_b2037 inv_b2038 inv_b2039 inv_b2040 inv_b2041 inv_b2042 inv_b2043 inv_b2044 inv_b2045 inv_b2046 inv_b2047 inv_b2048 inv_b2049 inv_b2050 inv_b2051 inv_b2052 inv_b2053 inv_b2054 inv_b2055 inv_b2056 inv_b2057 inv_b2058 inv_b2059 inv_b2060 inv_b2061 inv_b2062 inv_b2063 inv_b2064 inv_b2065 inv_b2066 inv_b2067 inv_b2068 inv_b2069 inv_b2070 inv_b2071 inv_b2072 inv_b2073 inv_b2074 inv_b2075 inv_b2076 inv_b2077 inv_b2078 inv_b2079 inv_b2080 inv_b2081 inv_b2082 inv_b2083 inv_b2084 inv_b2085 inv_b2086 inv_b2087 inv_b2088 inv_b2089 inv_b2090 inv_b2091 inv_b2092 inv_b2093 inv_b2094 inv_b2095 inv_b2096 inv_b2097 inv_b2098 inv_b2099 inv_b2100 inv_b2101 inv_b2102 inv_b2103 inv_b2104 inv_b2105 inv_b2106 inv_b2107 inv_b2108 inv_b2109 inv_b2110 inv_b2111 inv_b2112 inv_b2113 inv_b2114 inv_b2115 inv_b2116 inv_b2117 inv_b2118 inv_b2119 inv_b2120 inv_b2121 inv_b2122 inv_b2123 inv_b2124 inv_b2125 inv_b2126 inv_b2127 inv_b2128 inv_b2129 inv_b2130 inv_b2131 inv_b2132 inv_b2133 inv_b2134 inv_b2135 inv_b2136 inv_b2137 inv_b2138 inv_b2139 inv_b2140 inv_b2141 inv_b2142 inv_b2143 inv_b2144 inv_b2145 inv_b2146 inv_b2147 inv_b2148 inv_b2149 inv_b2150 inv_b2151 inv_b2152 inv_b2153 inv_b2154 inv_b2155 inv_b2156 inv_b2157 inv_b2158 inv_b2159 inv_b2160 inv_b2161 inv_b2162 inv_b2163 inv_b2164 inv_b2165 inv_b2166 inv_b2167 inv_b2168 inv_b2169 inv_b2170 inv_b2171 inv_b2172 inv_b2173 inv_b2174 inv_b2175 inv_b2176 inv_b2177 inv_b2178 inv_b2179 inv_b2180 inv_b2181 inv_b2182 inv_b2183 inv_b2184 inv_b2185 inv_b2186 inv_b2187 inv_b2188 inv_b2189 inv_b2190 inv_b2191 inv_b2192 inv_b2193 inv_b2194 inv_b2195 inv_b2196 inv_b2197 inv_b2198 inv_b2199 inv_b2200 inv_b2201 inv_b2202 inv_b2203 inv_b2204 inv_b2205 inv_b2206 inv_b2207 inv_b2208 inv_b2209 inv_b2210 inv_b2211 inv_b2212 inv_b2213 inv_b2214 inv_b2215 inv_b2216 inv_b2217 inv_b2218 inv_b2219 inv_b2220 inv_b2221 inv_b2222 inv_b2223 inv_b2224 inv_b2225 inv_b2226 inv_b2227 inv_b2228 inv_b2229 inv_b2230 inv_b2231 inv_b2232 inv_b2233 inv_b2234 inv_b2235 inv_b2236 inv_b2237 inv_b2238 inv_b2239 inv_b2240 inv_b2241 inv_b2242 inv_b2243 inv_b2244 inv_b2245 inv_b2246 inv_b2247 inv_b2248 inv_b2249 inv_b2250 inv_b2251 inv_b2252 inv_b2253 inv_b2254 inv_b2255 inv_b2256 inv_b2257 inv_b2258 inv_b2259 inv_b2260 inv_b2261 inv_b2262 inv_b2263 inv_b2264 inv_b2265 inv_b2266 inv_b2267 inv_b2268 inv_b2269 inv_b2270 inv_b2271 inv_b2272 inv_b2273 inv_b2274 inv_b2275 inv_b2276 inv_b2277 inv_b2278 inv_b2279 inv_b2280 inv_b2281 inv_b2282 inv_b2283 inv_b2284 inv_b2285 inv_b2286 inv_b2287 inv_b2288 inv_b2289 inv_b2290 inv_b2291 inv_b2292 inv_b2293 inv_b2294 inv_b2295 inv_b2296 inv_b2297 inv_b2298 inv_b2299 inv_b2300 inv_b2301 inv_b2302 inv_b2303 inv_b2304 inv_b2305 inv_b2306 inv_b2307 inv_b2308 inv_b2309 inv_b2310 inv_b2311 inv_b2312 inv_b2313 inv_b2314 inv_b2315 inv_b2316 inv_b2317 inv_b2318 inv_b2319 inv_b2320 inv_b2321 inv_b2322 inv_b2323 inv_b2324 inv_b2325 inv_b2326 inv_b2327 inv_b2328 inv_b2329 inv_b2330 inv_b2331 inv_b2332 inv_b2333 inv_b2334 inv_b2335 inv_b2336 inv_b2337 inv_b2338 inv_b2339 inv_b2340 inv_b2341 inv_b2342 inv_b2343 inv_b2344 inv_b2345 inv_b2346 inv_b2347 inv_b2348 inv_b2349 inv_b2350 inv_b2351 inv_b2352 inv_b2353 inv_b2354 inv_b2355 inv_b2356 inv_b2357 inv_b2358 inv_b2359 inv_b2360 inv_b2361 inv_b2362 inv_b2363 inv_b2364 inv_b2365 inv_b2366 inv_b2367 inv_b2368 inv_b2369 inv_b2370 inv_b2371 inv_b2372 inv_b2373 inv_b2374 inv_b2375 inv_b2376 inv_b2377 inv_b2378 inv_b2379 inv_b2380 inv_b2381 inv_b2382 inv_b2383 inv_b2384 inv_b2385 inv_b2386 inv_b2387 inv_b2388 inv_b2389 inv_b2390 inv_b2391 inv_b2392 inv_b2393 inv_b2394 inv_b2395 inv_b2396 inv_b2397 inv_b2398 inv_b2399 inv_b2400 inv_b2401 inv_b2402 inv_b2403 inv_b2404 inv_b2405 inv_b2406 inv_b2407 inv_b2408 inv_b2409 inv_b2410 inv_b2411 inv_b2412 inv_b2413 inv_b2414 inv_b2415 inv_b2416 inv_b2417 inv_b2418 inv_b2419 inv_b2420 inv_b2421 inv_b2422 inv_b2423 inv_b2424 inv_b2425 inv_b2426 inv_b2427 inv_b2428 inv_b2429 inv_b2430 inv_b2431 inv_b2432 inv_b2433 inv_b2434 inv_b2435 inv_b2436 inv_b2437 inv_b2438 inv_b2439 inv_b2440 inv_b2441 inv_b2442 inv_b2443 inv_b2444 inv_b2445 inv_b2446 inv_b2447 inv_b2448 inv_b2449 inv_b2450 inv_b2451 inv_b2452 inv_b2453 inv_b2454 inv_b2455 inv_b2456 inv_b2457 inv_b2458 inv_b2459 inv_b2460 inv_b2461 inv_b2462 inv_b2463 inv_b2464 inv_b2465 inv_b2466 inv_b2467 inv_b2468 inv_b2469 inv_b2470 inv_b2471 inv_b2472 inv_b2473 inv_b2474 inv_b2475 inv_b2476 inv_b2477 inv_b2478 inv_b2479 inv_b2480 inv_b2481 inv_b2482 inv_b2483 inv_b2484 inv_b2485 inv_b2486 inv_b2487 inv_b2488 inv_b2489 inv_b2490 inv_b2491 inv_b2492 inv_b2493 inv_b2494 inv_b2495 inv_b2496 inv_b2497 inv_b2498 inv_b2499 inv_b2500 inv_b2501 inv_b2502 inv_b2503 inv_b2504 inv_b2505 inv_b2506 inv_b2507 inv_b2508 inv_b2509 inv_b2510 inv_b2511 inv_b2512 inv_b2513 inv_b2514 inv_b2515 inv_b2516 inv_b2517 inv_b2518 inv_b2519 inv_b2520 inv_b2521 inv_b2522 inv_b2523 inv_b2524 inv_b2525 inv_b2526 inv_b2527 inv_b2528 inv_b2529 inv_b2530 inv_b2531 inv_b2532 inv_b2533 inv_b2534 inv_b2535 inv_b2536 inv_b2537 inv_b2538 inv_b2539 inv_b2540 inv_b2541 inv_b2542 inv_b2543 inv_b2544 inv_b2545 inv_b2546 inv_b2547 inv_b2548 inv_b2549 inv_b2550 inv_b2551 inv_b2552 inv_b2553 inv_b2554 inv_b2555 inv_b2556 inv_b2557 inv_b2558 inv_b2559 inv_b2560 inv_b2561 inv_b2562 inv_b2563 inv_b2564 inv_b2565 inv_b2566 inv_b2567 inv_b2568 inv_b2569 inv_b2570 inv_b2571 inv_b2572 inv_b2573 inv_b2574 inv_b2575 inv_b2576 inv_b2577 inv_b2578 inv_b2579 inv_b2580 inv_b2581 inv_b2582 inv_b2583 inv_b2584 inv_b2585 inv_b2586 inv_b2587 inv_b2588 inv_b2589 inv_b2590 inv_b2591 inv_b2592 inv_b2593 inv_b2594 inv_b2595 inv_b2596 inv_b2597 inv_b2598 inv_b2599 inv_b2600 inv_b2601 inv_b2602 inv_b2603 inv_b2604 inv_b2605 inv_b2606 inv_b2607 inv_b2608 inv_b2609 inv_b2610 inv_b2611 inv_b2612 inv_b2613 inv_b2614 inv_b2615 inv_b2616 inv_b2617 inv_b2618 inv_b2619 inv_b2620 inv_b2621 inv_b2622 inv_b2623 inv_b2624 inv_b2625 inv_b2626 inv_b2627 inv_b2628 inv_b2629 inv_b2630 inv_b2631 inv_b2632 inv_b2633 inv_b2634 inv_b2635 inv_b2636 inv_b2637 inv_b2638 inv_b2639 inv_b2640 inv_b2641 inv_b2642 inv_b2643 inv_b2644 inv_b2645 inv_b2646 inv_b2647 inv_b2648 inv_b2649 inv_b2650 inv_b2651 inv_b2652 inv_b2653 inv_b2654 inv_b2655 inv_b2656 inv_b2657 inv_b2658 inv_b2659 inv_b2660 inv_b2661 inv_b2662 inv_b2663 inv_b2664 inv_b2665 inv_b2666 inv_b2667 inv_b2668 inv_b2669 inv_b2670 inv_b2671 inv_b2672 inv_b2673 inv_b2674 inv_b2675 inv_b2676 inv_b2677 inv_b2678 inv_b2679 inv_b2680 inv_b2681 inv_b2682 inv_b2683 inv_b2684 inv_b2685 inv_b2686 inv_b2687 inv_b2688 inv_b2689 inv_b2690 inv_b2691 inv_b2692 inv_b2693 inv_b2694 inv_b2695 inv_b2696 inv_b2697 inv_b2698 inv_b2699 inv_b2700 inv_b2701 inv_b2702 inv_b2703 inv_b2704 inv_b2705 inv_b2706 inv_b2707 inv_b2708 inv_b2709 inv_b2710 inv_b2711 inv_b2712 inv_b2713 inv_b2714 inv_b2715 inv_b2716 inv_b2717 inv_b2718 inv_b2719 inv_b2720 inv_b2721 inv_b2722 inv_b2723 inv_b2724 inv_b2725 inv_b2726 inv_b2727 inv_b2728 inv_b2729 inv_b2730 inv_b2731 inv_b2732 inv_b2733 inv_b2734 inv_b2735 inv_b2736 inv_b2737 inv_b2738 inv_b2739 inv_b2740 inv_b2741 inv_b2742 inv_b2743 inv_b2744 inv_b2745 inv_b2746 inv_b2747 inv_b2748 inv_b2749 inv_b2750 inv_b2751 inv_b2752 inv_b2753 inv_b2754 inv_b2755 inv_b2756 inv_b2757 inv_b2758 inv_b2759 inv_b2760 inv_b2761 inv_b2762 inv_b2763 inv_b2764 inv_b2765 inv_b2766 inv_b2767 inv_b2768 inv_b2769 inv_b2770 inv_b2771 inv_b2772 inv_b2773 inv_b2774 inv_b2775 inv_b2776 inv_b2777 inv_b2778 inv_b2779 inv_b2780 inv_b2781 inv_b2782 inv_b2783 inv_b2784 inv_b2785 inv_b2786 inv_b2787 inv_b2788 inv_b2789 inv_b2790 inv_b2791 inv_b2792 inv_b2793 inv_b2794 inv_b2795 inv_b2796 inv_b2797 inv_b2798 inv_b2799 inv_b2800 inv_b2801 inv_b2802 inv_b2803 inv_b2804 inv_b2805 inv_b2806 inv_b2807 inv_b2808 inv_b2809 inv_b2810 inv_b2811 inv_b2812 inv_b2813 inv_b2814 inv_b2815 inv_b2816 inv_b2817 inv_b2818 inv_b2819 inv_b2820 inv_b2821 inv_b2822 inv_b2823 inv_b2824 inv_b2825 inv_b2826 inv_b2827 inv_b2828 inv_b2829 inv_b2830 inv_b2831 inv_b2832 inv_b2833 inv_b2834 inv_b2835 inv_b2836 inv_b2837 inv_b2838 inv_b2839 inv_b2840 inv_b2841 inv_b2842 inv_b2843 inv_b2844 inv_b2845 inv_b2846 inv_b2847 inv_b2848 inv_b2849 inv_b2850 inv_b2851))