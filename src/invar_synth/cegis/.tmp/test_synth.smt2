
(set-logic ALL)

(set-option :random-seed 123)

(declare-datatypes ( (Node 0) ) ((
(Node!val!0) 
(Node!val!2) 
(Node!val!1) 
)))

(declare-datatypes ( (Epoch 0) ) ((
(Epoch!val!0) 
(Epoch!val!3) 
(Epoch!val!2) 
(Epoch!val!1) 
)))

(declare-datatypes ( (ModelId 0) ) ((
(Model_DUMMYMODEL) 
(Model_219_ice) 
(Model_233_ice) 
(Model_231_ice) 
(Model_217_ice) 
(Model_104_pos) 
(Model_214_ice) 
(Model_220_ice) 
(Model_0_pos) 
(Model_213_ice) 
(Model_227_ice) 
(Model_229_ice) 
(Model_215_ice) 
(Model_221_ice) 
(Model_226_ice) 
(Model_230_ice) 
(Model_218_ice) 
(Model_223_ice) 
(Model_232_ice) 
(Model_2_pos) 
(Model_224_ice) 
(Model_228_ice) 
(Model_216_ice) 
(Model_145_pos) 
(Model_222_ice) 
(Model_225_ice) 
)))

(declare-datatypes ( (StateId 0) ) ((
(DUMMYSTATE) 
(S2) 
(S1) 
(init) 
)))

;; definitions of functions defining models.
(declare-fun ep_dummy (ModelId StateId Node) Epoch)
(define-fun ep ((a0 ModelId) (a1 StateId) (a2 Node)) Epoch
(ite (= a0 Model_DUMMYMODEL) (ep_dummy a0 a1 a2 )
    (ite (= a0 Model_2_pos)
        (ite (= a2 Node!val!0)
            Epoch!val!2
;        if a2 IN [Node!val!1, ] 
            Epoch!val!1
        )
    (ite (= a0 Model_145_pos)
        (ite (= a2 Node!val!0)
            Epoch!val!1
;        if a2 IN [Node!val!1, ] 
            Epoch!val!2
        )
    (ite (= a0 Model_213_ice)
        (ite (= a2 Node!val!0)
            Epoch!val!2
;        if a2 IN [Node!val!1, ] 
            Epoch!val!1
        )
    (ite (= a0 Model_214_ice)
        (ite (= a1 S1)
            Epoch!val!1
;        if a1 IN [S2, ] 
            Epoch!val!2
        )
    (ite (= a0 Model_215_ice)
        (ite (= a2 Node!val!1)
            (ite (= a1 S1)
                Epoch!val!1
;            if a1 IN [S2, ] 
                Epoch!val!3
            )
;        if a2 IN [Node!val!0, ] 
            Epoch!val!2
        )
    (ite (= a0 Model_216_ice)
        (ite (= a2 Node!val!1)
            (ite (= a1 S1)
                Epoch!val!1
;            if a1 IN [S2, ] 
                Epoch!val!0
            )
;        if a2 IN [Node!val!0, ] 
            Epoch!val!2
        )
    (ite (= a0 Model_217_ice)
        (ite (= a2 Node!val!0)
            Epoch!val!2
;        if a2 IN [Node!val!1, ] 
            Epoch!val!1
        )
    (ite (= a0 Model_218_ice)
        (ite (= a1 S2)
            (ite (= a2 Node!val!0)
                Epoch!val!2
;            if a2 IN [Node!val!1, ] 
                Epoch!val!1
            )
;        if a1 IN [S1, ] 
            Epoch!val!2
        )
    (ite (= a0 Model_219_ice)
        (ite (= a2 Node!val!1)
            Epoch!val!2
;        if a2 IN [Node!val!0, Node!val!2, ] 
            Epoch!val!1
        )
    (ite (= a0 Model_220_ice)
        (ite (= a2 Node!val!1)
            (ite (= a1 S1)
                Epoch!val!1
;            if a1 IN [S2, ] 
                Epoch!val!2
            )
;        if a2 IN [Node!val!0, ] 
            Epoch!val!0
        )
    (ite (= a0 Model_221_ice)
        (ite (= a2 Node!val!0)
            Epoch!val!0
;        if a2 IN [Node!val!1, Node!val!2, ] 
            Epoch!val!2
        )
    (ite (= a0 Model_222_ice)
        (ite (= a2 Node!val!1)
            Epoch!val!2
;        if a2 IN [Node!val!0, Node!val!2, ] 
            Epoch!val!1
        )
    (ite (= a0 Model_223_ice)
        (ite (= a2 Node!val!0)
            Epoch!val!1
;        if a2 IN [Node!val!1, ] 
            Epoch!val!2
        )
    (ite (= a0 Model_225_ice)
        (ite (= a2 Node!val!0)
            Epoch!val!1
        (ite (= a2 Node!val!1)
            Epoch!val!3
;        if a2 IN [Node!val!2, ] 
            Epoch!val!2
        ))
    (ite (= a0 Model_226_ice)
        (ite (= a2 Node!val!0)
            Epoch!val!3
;        if a2 IN [Node!val!1, ] 
            Epoch!val!1
        )
    (ite (= a0 Model_227_ice)
        (ite (= a1 S1)
            Epoch!val!1
;        if a1 IN [S2, ] 
            Epoch!val!3
        )
    (ite (= a0 Model_228_ice)
        (ite (= a2 Node!val!0)
            Epoch!val!3
;        if a2 IN [Node!val!1, ] 
            Epoch!val!1
        )
    (ite (= a0 Model_229_ice)
        (ite (= a2 Node!val!0)
            Epoch!val!3
;        if a2 IN [Node!val!1, ] 
            Epoch!val!1
        )
    (ite (= a0 Model_230_ice)
        (ite (= a2 Node!val!1)
            (ite (= a1 S1)
                Epoch!val!1
;            if a1 IN [S2, ] 
                Epoch!val!2
            )
;        if a2 IN [Node!val!0, ] 
            Epoch!val!3
        )
    (ite (= a0 Model_231_ice)
        (ite (= a2 Node!val!0)
            Epoch!val!0
        (ite (= a2 Node!val!1)
            Epoch!val!2
;        if a2 IN [Node!val!2, ] 
            Epoch!val!1
        ))
    (ite (= a0 Model_232_ice)
        (ite (= a2 Node!val!0)
            Epoch!val!3
        (ite (= a2 Node!val!1)
            Epoch!val!2
;        if a2 IN [Node!val!2, ] 
            Epoch!val!1
        ))
    (ite (= a0 Model_233_ice)
        (ite (= a2 Node!val!0)
            Epoch!val!1
        (ite (= a2 Node!val!1)
            Epoch!val!2
;        if a2 IN [Node!val!2, ] 
            Epoch!val!0
        ))
    (ite (= a0 Model_224_ice)
        Epoch!val!3
;    if a0 IN [Model_0_pos, Model_104_pos, ] 
        Epoch!val!1
    )))))))))))))))))))))))
))

(declare-fun held_dummy (ModelId StateId Node) Bool)
(define-fun held ((a0 ModelId) (a1 StateId) (a2 Node)) Bool
(ite (= a0 Model_DUMMYMODEL) (held_dummy a0 a1 a2 )
    (ite (= a2 Node!val!0)
        (ite (= a0 Model_213_ice)
            (ite (= a1 S1)
                true
;            if a1 IN [S2, ] 
                false
            )
        (ite (= a0 Model_214_ice)
            (ite (= a1 S1)
                false
;            if a1 IN [S2, ] 
                true
            )
        (ite (= a0 Model_217_ice)
            (ite (= a1 S1)
                true
;            if a1 IN [S2, ] 
                false
            )
        (ite (= a0 Model_223_ice)
            (ite (= a1 S1)
                true
;            if a1 IN [S2, ] 
                false
            )
        (ite (= a0 Model_224_ice)
            (ite (= a1 S1)
                true
;            if a1 IN [S2, ] 
                false
            )
        (ite (= a0 Model_226_ice)
            (ite (= a1 S1)
                true
;            if a1 IN [S2, ] 
                false
            )
        (ite (= a0 Model_227_ice)
            (ite (= a1 S1)
                false
;            if a1 IN [S2, ] 
                true
            )
        (ite (= a0 Model_228_ice)
            (ite (= a1 S1)
                true
;            if a1 IN [S2, ] 
                false
            )
        (ite (= a0 Model_229_ice)
            (ite (= a1 S1)
                true
;            if a1 IN [S2, ] 
                false
            )
        (ite (or (= a0 Model_0_pos) (= a0 Model_104_pos) )
            true
;        if a0 IN [Model_231_ice, Model_219_ice, Model_230_ice, Model_220_ice, Model_218_ice, Model_215_ice, Model_216_ice, Model_145_pos, Model_232_ice, Model_222_ice, Model_2_pos, Model_233_ice, Model_221_ice, Model_225_ice, ] 
            false
        ))))))))))
    (ite (= a2 Node!val!1)
        (ite (= a0 Model_215_ice)
            (ite (= a1 S1)
                false
;            if a1 IN [S2, ] 
                true
            )
        (ite (= a0 Model_216_ice)
            (ite (= a1 S1)
                false
;            if a1 IN [S2, ] 
                true
            )
        (ite (= a0 Model_218_ice)
            (ite (= a1 S1)
                false
;            if a1 IN [S2, ] 
                true
            )
        (ite (= a0 Model_219_ice)
            (ite (= a1 S1)
                true
;            if a1 IN [S2, ] 
                false
            )
        (ite (= a0 Model_220_ice)
            (ite (= a1 S1)
                false
;            if a1 IN [S2, ] 
                true
            )
        (ite (= a0 Model_221_ice)
            (ite (= a1 S1)
                true
;            if a1 IN [S2, ] 
                false
            )
        (ite (= a0 Model_222_ice)
            (ite (= a1 S1)
                true
;            if a1 IN [S2, ] 
                false
            )
        (ite (= a0 Model_225_ice)
            (ite (= a1 S1)
                true
;            if a1 IN [S2, ] 
                false
            )
        (ite (= a0 Model_230_ice)
            (ite (= a1 S1)
                false
;            if a1 IN [S2, ] 
                true
            )
        (ite (= a0 Model_231_ice)
            (ite (= a1 S1)
                true
;            if a1 IN [S2, ] 
                false
            )
        (ite (= a0 Model_232_ice)
            (ite (= a1 S1)
                true
;            if a1 IN [S2, ] 
                false
            )
        (ite (= a0 Model_233_ice)
            (ite (= a1 S1)
                true
;            if a1 IN [S2, ] 
                false
            )
        (ite (or (= a0 Model_2_pos) (= a0 Model_145_pos) )
            true
;        if a0 IN [Model_217_ice, Model_226_ice, Model_223_ice, Model_213_ice, Model_228_ice, Model_229_ice, ] 
            false
        )))))))))))))
;    if a2 IN [Node!val!2, ] 
        false
    ))
))

(declare-fun transfer_dummy (ModelId StateId Epoch Node) Bool)
(define-fun transfer ((a0 ModelId) (a1 StateId) (a2 Epoch) (a3 Node)) Bool
(ite (= a0 Model_DUMMYMODEL) (transfer_dummy a0 a1 a2 a3 )
    (ite (= a0 Model_213_ice)
        (ite (= a2 Epoch!val!1)
            (ite (= a1 S2)
                (ite (= a3 Node!val!0)
                    false
;                if a3 IN [Node!val!1, ] 
                    true
                )
;            if a1 IN [S1, ] 
                false
            )
;        if a2 IN [Epoch!val!0, Epoch!val!2, ] 
            false
        )
    (ite (= a0 Model_214_ice)
        (ite (= a2 Epoch!val!2)
            true
;        if a2 IN [Epoch!val!0, Epoch!val!1, ] 
            false
        )
    (ite (= a0 Model_215_ice)
        (ite (= a2 Epoch!val!3)
            (ite (= a3 Node!val!0)
                false
;            if a3 IN [Node!val!1, ] 
                true
            )
        (ite (= a2 Epoch!val!2)
            (ite (= a3 Node!val!0)
                true
;            if a3 IN [Node!val!1, ] 
                false
            )
;        if a2 IN [Epoch!val!0, Epoch!val!1, ] 
            false
        ))
    (ite (= a0 Model_216_ice)
        (ite (= a2 Epoch!val!0)
            (ite (= a3 Node!val!0)
                false
;            if a3 IN [Node!val!1, ] 
                true
            )
;        if a2 IN [Epoch!val!2, Epoch!val!1, ] 
            false
        )
    (ite (= a0 Model_217_ice)
        (ite (= a2 Epoch!val!1)
            (ite (= a1 S2)
                (ite (= a3 Node!val!0)
                    false
;                if a3 IN [Node!val!1, ] 
                    true
                )
;            if a1 IN [S1, ] 
                false
            )
;        if a2 IN [Epoch!val!0, Epoch!val!2, ] 
            false
        )
    (ite (= a0 Model_218_ice)
        (ite (= a3 Node!val!1)
            (ite (= a2 Epoch!val!0)
                false
;            if a2 IN [Epoch!val!2, Epoch!val!1, ] 
                true
            )
;        if a3 IN [Node!val!0, ] 
            false
        )
    (ite (= a0 Model_219_ice)
        (ite (= a2 Epoch!val!1)
            (ite (= a3 Node!val!2)
                (ite (= a1 S1)
                    false
;                if a1 IN [S2, ] 
                    true
                )
;            if a3 IN [Node!val!0, Node!val!1, ] 
                false
            )
;        if a2 IN [Epoch!val!0, Epoch!val!2, ] 
            false
        )
    (ite (= a0 Model_220_ice)
        (ite (= a2 Epoch!val!2)
            (ite (= a3 Node!val!0)
                false
;            if a3 IN [Node!val!1, ] 
                true
            )
;        if a2 IN [Epoch!val!0, Epoch!val!1, ] 
            false
        )
    (ite (= a0 Model_221_ice)
        (ite (= a2 Epoch!val!1)
            (ite (= a3 Node!val!2)
                (ite (= a1 S1)
                    false
;                if a1 IN [S2, ] 
                    true
                )
;            if a3 IN [Node!val!0, Node!val!1, ] 
                false
            )
;        if a2 IN [Epoch!val!0, Epoch!val!2, ] 
            false
        )
    (ite (= a0 Model_222_ice)
        (ite (= a2 Epoch!val!1)
            (ite (= a3 Node!val!2)
                (ite (= a1 S1)
                    false
;                if a1 IN [S2, ] 
                    true
                )
            (ite (= a3 Node!val!0)
                false
;            if a3 IN [Node!val!1, ] 
                true
            ))
;        if a2 IN [Epoch!val!0, Epoch!val!2, ] 
            false
        )
    (ite (= a0 Model_223_ice)
        (ite (= a2 Epoch!val!0)
            (ite (= a1 S2)
                (ite (= a3 Node!val!0)
                    false
;                if a3 IN [Node!val!1, ] 
                    true
                )
;            if a1 IN [S1, ] 
                false
            )
;        if a2 IN [Epoch!val!2, Epoch!val!1, ] 
            false
        )
    (ite (= a0 Model_224_ice)
        (ite (= a2 Epoch!val!2)
            (ite (= a1 S1)
                false
;            if a1 IN [S2, ] 
                true
            )
        (ite (= a2 Epoch!val!3)
            true
;        if a2 IN [Epoch!val!0, Epoch!val!1, ] 
            false
        ))
    (ite (= a0 Model_225_ice)
        (ite (= a2 Epoch!val!2)
            (ite (= a3 Node!val!2)
                (ite (= a1 S1)
                    false
;                if a1 IN [S2, ] 
                    true
                )
;            if a3 IN [Node!val!0, Node!val!1, ] 
                false
            )
        (ite (= a2 Epoch!val!1)
            (ite (= a3 Node!val!0)
                true
;            if a3 IN [Node!val!1, Node!val!2, ] 
                false
            )
;        if a2 IN [Epoch!val!0, Epoch!val!3, ] 
            false
        ))
    (ite (= a0 Model_226_ice)
        (ite (= a2 Epoch!val!2)
            (ite (= a1 S2)
                (ite (= a3 Node!val!0)
                    false
;                if a3 IN [Node!val!1, ] 
                    true
                )
;            if a1 IN [S1, ] 
                false
            )
        (ite (= a2 Epoch!val!1)
            (ite (= a3 Node!val!0)
                false
;            if a3 IN [Node!val!1, ] 
                true
            )
;        if a2 IN [Epoch!val!0, Epoch!val!3, ] 
            false
        ))
    (ite (= a0 Model_227_ice)
        (ite (or (= a2 Epoch!val!1) (= a2 Epoch!val!3) )
            true
;        if a2 IN [Epoch!val!0, Epoch!val!2, ] 
            false
        )
    (ite (= a0 Model_228_ice)
        (ite (= a2 Epoch!val!2)
            (ite (= a1 S2)
                (ite (= a3 Node!val!0)
                    false
;                if a3 IN [Node!val!1, ] 
                    true
                )
;            if a1 IN [S1, ] 
                false
            )
;        if a2 IN [Epoch!val!0, Epoch!val!1, Epoch!val!3, ] 
            false
        )
    (ite (= a0 Model_229_ice)
        (ite (= a2 Epoch!val!2)
            (ite (= a1 S2)
                (ite (= a3 Node!val!0)
                    false
;                if a3 IN [Node!val!1, ] 
                    true
                )
;            if a1 IN [S1, ] 
                false
            )
;        if a2 IN [Epoch!val!0, Epoch!val!1, Epoch!val!3, ] 
            false
        )
    (ite (= a0 Model_230_ice)
        (ite (= a2 Epoch!val!2)
            (ite (= a3 Node!val!0)
                false
;            if a3 IN [Node!val!1, ] 
                true
            )
        (ite (= a2 Epoch!val!1)
            (ite (= a3 Node!val!0)
                true
;            if a3 IN [Node!val!1, ] 
                false
            )
;        if a2 IN [Epoch!val!0, Epoch!val!3, ] 
            false
        ))
    (ite (= a0 Model_231_ice)
        (ite (= a2 Epoch!val!0)
            (ite (= a3 Node!val!2)
                (ite (= a1 S1)
                    false
;                if a1 IN [S2, ] 
                    true
                )
;            if a3 IN [Node!val!0, Node!val!1, ] 
                false
            )
;        if a2 IN [Epoch!val!2, Epoch!val!1, ] 
            false
        )
    (ite (= a0 Model_232_ice)
        (ite (= a2 Epoch!val!1)
            (ite (= a3 Node!val!2)
                (ite (= a1 S1)
                    false
;                if a1 IN [S2, ] 
                    true
                )
            (ite (= a3 Node!val!0)
                true
;            if a3 IN [Node!val!1, ] 
                false
            ))
;        if a2 IN [Epoch!val!0, Epoch!val!2, Epoch!val!3, ] 
            false
        )
    (ite (= a0 Model_233_ice)
        (ite (= a2 Epoch!val!0)
            (ite (= a3 Node!val!2)
                (ite (= a1 S1)
                    false
;                if a1 IN [S2, ] 
                    true
                )
;            if a3 IN [Node!val!0, Node!val!1, ] 
                false
            )
;        if a2 IN [Epoch!val!2, Epoch!val!1, ] 
            false
        )
;    if a0 IN [Model_2_pos, Model_145_pos, Model_0_pos, Model_104_pos, ] 
        false
    )))))))))))))))))))))
))

(declare-fun locked_dummy (ModelId StateId Epoch Node) Bool)
(define-fun locked ((a0 ModelId) (a1 StateId) (a2 Epoch) (a3 Node)) Bool
(ite (= a0 Model_DUMMYMODEL) (locked_dummy a0 a1 a2 a3 )
    (ite (= a0 Model_214_ice)
        (ite (= a2 Epoch!val!2)
            (ite (= a1 S1)
                false
;            if a1 IN [S2, ] 
                true
            )
;        if a2 IN [Epoch!val!0, Epoch!val!1, ] 
            false
        )
    (ite (= a0 Model_215_ice)
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
        (ite (= a2 Epoch!val!2)
            (ite (= a3 Node!val!0)
                true
;            if a3 IN [Node!val!1, ] 
                false
            )
;        if a2 IN [Epoch!val!0, Epoch!val!1, ] 
            false
        ))
    (ite (= a0 Model_216_ice)
        (ite (= a2 Epoch!val!0)
            (ite (= a1 S2)
                (ite (= a3 Node!val!0)
                    false
;                if a3 IN [Node!val!1, ] 
                    true
                )
;            if a1 IN [S1, ] 
                false
            )
;        if a2 IN [Epoch!val!2, Epoch!val!1, ] 
            false
        )
    (ite (= a0 Model_218_ice)
        (ite (= a3 Node!val!1)
            (ite (= a2 Epoch!val!1)
                (ite (= a1 S1)
                    false
;                if a1 IN [S2, ] 
                    true
                )
            (ite (= a2 Epoch!val!0)
                false
;            if a2 IN [Epoch!val!2, ] 
                true
            ))
;        if a3 IN [Node!val!0, ] 
            false
        )
    (ite (= a0 Model_220_ice)
        (ite (= a2 Epoch!val!2)
            (ite (= a1 S2)
                (ite (= a3 Node!val!0)
                    false
;                if a3 IN [Node!val!1, ] 
                    true
                )
;            if a1 IN [S1, ] 
                false
            )
;        if a2 IN [Epoch!val!0, Epoch!val!1, ] 
            false
        )
    (ite (= a0 Model_222_ice)
        (ite (= a2 Epoch!val!1)
            (ite (= a3 Node!val!1)
                true
;            if a3 IN [Node!val!0, Node!val!2, ] 
                false
            )
;        if a2 IN [Epoch!val!0, Epoch!val!2, ] 
            false
        )
    (ite (= a0 Model_224_ice)
        (ite (= a2 Epoch!val!3)
            true
;        if a2 IN [Epoch!val!0, Epoch!val!2, Epoch!val!1, ] 
            false
        )
    (ite (= a0 Model_225_ice)
        (ite (= a2 Epoch!val!1)
            (ite (= a3 Node!val!0)
                true
;            if a3 IN [Node!val!1, Node!val!2, ] 
                false
            )
;        if a2 IN [Epoch!val!0, Epoch!val!2, Epoch!val!3, ] 
            false
        )
    (ite (= a0 Model_226_ice)
        (ite (= a2 Epoch!val!1)
            (ite (= a3 Node!val!0)
                false
;            if a3 IN [Node!val!1, ] 
                true
            )
;        if a2 IN [Epoch!val!0, Epoch!val!2, Epoch!val!3, ] 
            false
        )
    (ite (= a0 Model_227_ice)
        (ite (= a2 Epoch!val!3)
            (ite (= a1 S1)
                false
;            if a1 IN [S2, ] 
                true
            )
        (ite (= a2 Epoch!val!1)
            true
;        if a2 IN [Epoch!val!0, Epoch!val!2, ] 
            false
        ))
    (ite (= a0 Model_230_ice)
        (ite (= a2 Epoch!val!2)
            (ite (= a1 S2)
                (ite (= a3 Node!val!0)
                    false
;                if a3 IN [Node!val!1, ] 
                    true
                )
;            if a1 IN [S1, ] 
                false
            )
        (ite (= a2 Epoch!val!1)
            (ite (= a3 Node!val!0)
                true
;            if a3 IN [Node!val!1, ] 
                false
            )
;        if a2 IN [Epoch!val!0, Epoch!val!3, ] 
            false
        ))
    (ite (= a0 Model_232_ice)
        (ite (= a2 Epoch!val!1)
            (ite (= a3 Node!val!0)
                true
;            if a3 IN [Node!val!1, Node!val!2, ] 
                false
            )
;        if a2 IN [Epoch!val!0, Epoch!val!2, Epoch!val!3, ] 
            false
        )
;    if a0 IN [Model_231_ice, Model_217_ice, Model_219_ice, Model_104_pos, Model_0_pos, Model_223_ice, Model_213_ice, Model_228_ice, Model_145_pos, Model_229_ice, Model_2_pos, Model_233_ice, Model_221_ice, ] 
        false
    ))))))))))))
))

(declare-fun le_dummy (ModelId Epoch Epoch) Bool)
(define-fun le ((a0 ModelId) (a1 Epoch) (a2 Epoch)) Bool
(ite (= a0 Model_DUMMYMODEL) (le_dummy a0 a1 a2 )
    (ite (= a1 Epoch!val!0)
        (ite (= a0 Model_0_pos)
            (ite (= a2 Epoch!val!0)
                true
;            if a2 IN [Epoch!val!2, Epoch!val!1, ] 
                false
            )
        (ite (= a0 Model_2_pos)
            (ite (= a2 Epoch!val!0)
                true
;            if a2 IN [Epoch!val!2, Epoch!val!1, ] 
                false
            )
        (ite (= a0 Model_104_pos)
            (ite (= a2 Epoch!val!2)
                false
;            if a2 IN [Epoch!val!0, Epoch!val!1, ] 
                true
            )
        (ite (= a0 Model_145_pos)
            (ite (= a2 Epoch!val!1)
                false
;            if a2 IN [Epoch!val!0, Epoch!val!2, ] 
                true
            )
        (ite (= a0 Model_216_ice)
            (ite (= a2 Epoch!val!1)
                false
;            if a2 IN [Epoch!val!0, Epoch!val!2, ] 
                true
            )
        (ite (= a0 Model_223_ice)
            (ite (= a2 Epoch!val!0)
                true
;            if a2 IN [Epoch!val!2, Epoch!val!1, ] 
                false
            )
        (ite (= a0 Model_231_ice)
            (ite (= a2 Epoch!val!0)
                true
;            if a2 IN [Epoch!val!2, Epoch!val!1, ] 
                false
            )
        (ite (= a0 Model_233_ice)
            (ite (= a2 Epoch!val!0)
                true
;            if a2 IN [Epoch!val!2, Epoch!val!1, ] 
                false
            )
;        if a0 IN [Model_217_ice, Model_219_ice, Model_226_ice, Model_230_ice, Model_214_ice, Model_218_ice, Model_220_ice, Model_213_ice, Model_227_ice, Model_228_ice, Model_232_ice, Model_229_ice, Model_222_ice, Model_215_ice, Model_224_ice, Model_221_ice, Model_225_ice, ] 
            true
        ))))))))
    (ite (= a1 Epoch!val!2)
        (ite (= a2 Epoch!val!0)
            (ite (or (= a0 Model_231_ice) (= a0 Model_104_pos) (= a0 Model_0_pos) (= a0 Model_223_ice) (= a0 Model_2_pos) (= a0 Model_233_ice) )
                true
;            if a0 IN [Model_219_ice, Model_217_ice, Model_214_ice, Model_220_ice, Model_213_ice, Model_227_ice, Model_229_ice, Model_215_ice, Model_221_ice, Model_226_ice, Model_230_ice, Model_218_ice, Model_232_ice, Model_224_ice, Model_228_ice, Model_216_ice, Model_145_pos, Model_222_ice, Model_225_ice, ] 
                false
            )
        (ite (= a2 Epoch!val!1)
            (ite (or (= a0 Model_231_ice) (= a0 Model_230_ice) (= a0 Model_214_ice) (= a0 Model_220_ice) (= a0 Model_216_ice) (= a0 Model_145_pos) (= a0 Model_229_ice) (= a0 Model_215_ice) (= a0 Model_224_ice) (= a0 Model_233_ice) )
                false
;            if a0 IN [Model_217_ice, Model_219_ice, Model_226_ice, Model_104_pos, Model_218_ice, Model_0_pos, Model_223_ice, Model_213_ice, Model_227_ice, Model_228_ice, Model_232_ice, Model_222_ice, Model_2_pos, Model_221_ice, Model_225_ice, ] 
                true
            )
        (ite (= a2 Epoch!val!3)
            (ite (or (= a0 Model_227_ice) (= a0 Model_230_ice) (= a0 Model_232_ice) )
                true
;            if a0 IN [Model_226_ice, Model_228_ice, Model_229_ice, Model_215_ice, Model_224_ice, Model_225_ice, ] 
                false
            )
;        if a2 IN [Epoch!val!2, ] 
            true
        )))
    (ite (= a1 Epoch!val!1)
        (ite (= a2 Epoch!val!0)
            (ite (or (= a0 Model_231_ice) (= a0 Model_0_pos) (= a0 Model_223_ice) (= a0 Model_216_ice) (= a0 Model_145_pos) (= a0 Model_2_pos) (= a0 Model_233_ice) )
                true
;            if a0 IN [Model_217_ice, Model_219_ice, Model_226_ice, Model_104_pos, Model_230_ice, Model_214_ice, Model_218_ice, Model_220_ice, Model_213_ice, Model_227_ice, Model_228_ice, Model_232_ice, Model_229_ice, Model_222_ice, Model_215_ice, Model_224_ice, Model_221_ice, Model_225_ice, ] 
                false
            )
        (ite (= a2 Epoch!val!2)
            (ite (or (= a0 Model_231_ice) (= a0 Model_230_ice) (= a0 Model_214_ice) (= a0 Model_220_ice) (= a0 Model_216_ice) (= a0 Model_145_pos) (= a0 Model_229_ice) (= a0 Model_215_ice) (= a0 Model_224_ice) (= a0 Model_233_ice) )
                true
;            if a0 IN [Model_217_ice, Model_219_ice, Model_226_ice, Model_104_pos, Model_218_ice, Model_0_pos, Model_223_ice, Model_213_ice, Model_227_ice, Model_228_ice, Model_232_ice, Model_222_ice, Model_2_pos, Model_221_ice, Model_225_ice, ] 
                false
            )
        (ite (= a2 Epoch!val!3)
            (ite (or (= a0 Model_228_ice) (= a0 Model_226_ice) (= a0 Model_225_ice) )
                false
;            if a0 IN [Model_230_ice, Model_227_ice, Model_232_ice, Model_229_ice, Model_215_ice, Model_224_ice, ] 
                true
            )
;        if a2 IN [Epoch!val!1, ] 
            true
        )))
;    if a1 IN [Epoch!val!3, ] 
        (ite (= a2 Epoch!val!2)
            (ite (or (= a0 Model_227_ice) (= a0 Model_230_ice) (= a0 Model_232_ice) )
                false
;            if a0 IN [Model_226_ice, Model_228_ice, Model_229_ice, Model_215_ice, Model_224_ice, Model_225_ice, ] 
                true
            )
        (ite (= a2 Epoch!val!1)
            (ite (or (= a0 Model_228_ice) (= a0 Model_226_ice) (= a0 Model_225_ice) )
                true
;            if a0 IN [Model_230_ice, Model_227_ice, Model_232_ice, Model_229_ice, Model_215_ice, Model_224_ice, ] 
                false
            )
        (ite (= a2 Epoch!val!3)
            true
;        if a2 IN [Epoch!val!0, ] 
            false
        )))
    )))
))

(declare-fun zero_dummy (ModelId) Epoch)
(define-fun zero ((a0 ModelId)) Epoch
(ite (= a0 Model_DUMMYMODEL) (zero_dummy a0 )
    (ite (or (= a0 Model_2_pos) (= a0 Model_0_pos) (= a0 Model_223_ice) (= a0 Model_104_pos) )
        Epoch!val!2
    (ite (or (= a0 Model_231_ice) (= a0 Model_216_ice) (= a0 Model_145_pos) (= a0 Model_233_ice) )
        Epoch!val!1
;    if a0 IN [Model_217_ice, Model_219_ice, Model_226_ice, Model_230_ice, Model_214_ice, Model_218_ice, Model_220_ice, Model_213_ice, Model_227_ice, Model_228_ice, Model_232_ice, Model_229_ice, Model_222_ice, Model_215_ice, Model_224_ice, Model_221_ice, Model_225_ice, ] 
        Epoch!val!0
    ))
))

(declare-fun one_dummy (ModelId) Epoch)
(define-fun one ((a0 ModelId)) Epoch
(ite (= a0 Model_DUMMYMODEL) (one_dummy a0 )
    (ite (= a0 Model_215_ice)
        Epoch!val!3
    (ite (or (= a0 Model_231_ice) (= a0 Model_233_ice) )
        Epoch!val!0
    (ite (or (= a0 Model_226_ice) (= a0 Model_218_ice) (= a0 Model_213_ice) (= a0 Model_227_ice) (= a0 Model_216_ice) (= a0 Model_145_pos) (= a0 Model_221_ice) (= a0 Model_225_ice) )
        Epoch!val!2
;    if a0 IN [Model_217_ice, Model_219_ice, Model_104_pos, Model_230_ice, Model_214_ice, Model_220_ice, Model_0_pos, Model_223_ice, Model_228_ice, Model_232_ice, Model_229_ice, Model_222_ice, Model_2_pos, Model_224_ice, ] 
        Epoch!val!1
    )))
))

(declare-fun first_dummy (ModelId) Node)
(define-fun first ((a0 ModelId)) Node
(ite (= a0 Model_DUMMYMODEL) (first_dummy a0 )
    (ite (or (= a0 Model_232_ice) (= a0 Model_233_ice) )
        Node!val!2
    (ite (or (= a0 Model_217_ice) (= a0 Model_226_ice) (= a0 Model_230_ice) (= a0 Model_220_ice) (= a0 Model_228_ice) (= a0 Model_145_pos) (= a0 Model_229_ice) (= a0 Model_2_pos) (= a0 Model_221_ice) )
        Node!val!1
;    if a0 IN [Model_231_ice, Model_219_ice, Model_104_pos, Model_214_ice, Model_218_ice, Model_0_pos, Model_223_ice, Model_213_ice, Model_227_ice, Model_216_ice, Model_222_ice, Model_215_ice, Model_224_ice, Model_225_ice, ] 
        Node!val!0
    ))
))


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

;Declaring functions corresponding to nonterminals
(define-fun inv_Node__324 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1008 
 n1 
 (first m))
)
(define-fun inv_Epoch__103 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1549 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_189 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b916 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_187 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1390 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__102 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1662 
 n1 
 (first m))
)
(define-fun inv_Node__100 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1172 
 n1 
 (first m))
)
(define-fun inv_Epoch__72 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1203 
 (zero m) 
 (one m))
)
(define-fun inv_Node__140 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b836 
 n1 
 (first m))
)
(define-fun inv_Atom_136 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1192 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__103 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1408 
 n1 
 (first m))
)
(define-fun inv_Epoch__74 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1233 
 (zero m) 
 (one m))
)
(define-fun inv_Node__111 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1021 
 n1 
 (first m))
)
(define-fun inv_Node__150 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1059 
 n1 
 (first m))
)
(define-fun inv_Atom_427 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1141 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_184 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1264 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__100 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1722 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_139 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1330 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__75 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1353 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__190 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1482 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__80 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1586 
 (zero m) 
 (one m))
)
(define-fun inv_Node__113 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1505 
 n1 
 (first m))
)
(define-fun inv_Node__204 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1302 
 n1 
 (first m))
)
(define-fun inv_Atom_135 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b918 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_274 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1464 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_138 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1387 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_140 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1679 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__239 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1294 
 n1 
 (first m))
)
(define-fun inv_Node__264 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1230 
 n1 
 (first m))
)
(define-fun inv_Epoch__53 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1611 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_424 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b992 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__149 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b853 
 n1 
 (first m))
)
(define-fun inv_Epoch__189 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1567 
 (zero m) 
 (one m))
)
(define-fun inv_Node__92 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1515 
 n1 
 (first m))
)
(define-fun inv_Atom_186 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1081 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_183 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b889 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__239 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b970 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_310 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1345 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_276 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b946 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_309 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1190 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__141 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b862 
 n1 
 (first m))
)
(define-fun inv_Epoch__101 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1678 
 (zero m) 
 (one m))
)
(define-fun inv_Node__142 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b902 
 n1 
 (first m))
)
(define-fun inv_Atom_426 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1232 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__154 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1688 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__108 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1216 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_278 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1608 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__102 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1356 
 (zero m) 
 (one m))
)
(define-fun inv_Node__262 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1476 
 n1 
 (first m))
)
(define-fun inv_Atom_137 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1240 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_101 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1248 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__73 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1235 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_339 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b897 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_343 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1226 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_188 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b861 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__101 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1005 
 n1 
 (first m))
)
(define-fun inv_Atom_148 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1715 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__329 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1660 
 n1 
 (first m))
)
(define-fun inv_Epoch__82 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1543 
 (zero m) 
 (one m))
)
(define-fun inv_Node__71 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1705 
 n1 
 (first m))
)
(define-fun inv_Epoch__175 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1186 
 (zero m) 
 (one m))
)
(define-fun inv_Node__331 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1208 
 n1 
 (first m))
)
(define-fun inv_Atom_134 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1449 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_152 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b939 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__74 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1315 
 n1 
 (first m))
)
(define-fun inv_Epoch__188 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b969 
 (zero m) 
 (one m))
)
(define-fun inv_Node__143 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1228 
 n1 
 (first m))
)
(define-fun inv_Epoch__254 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1034 
 (zero m) 
 (one m))
)
(define-fun inv_Node__139 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b932 
 n1 
 (first m))
)
(define-fun inv_Epoch__173 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b989 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_334 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1097 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__81 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1231 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__185 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b966 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_411 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1128 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_185 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1718 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__168 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1175 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_153 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1599 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_203 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1339 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_200 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b829 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__153 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1685 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_336 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1373 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__212 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b974 
 n1 
 (first m))
)
(define-fun inv_Node__314 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b954 
 n1 
 (first m))
)
(define-fun inv_Node__267 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1053 
 n1 
 (first m))
)
(define-fun inv_Node__215 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b815 
 n1 
 (first m))
)
(define-fun inv_Node__255 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1188 
 n1 
 (first m))
)
(define-fun inv_Atom_344 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b823 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__126 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1096 
 n1 
 (first m))
)
(define-fun inv_Epoch__227 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1207 
 (zero m) 
 (one m))
)
(define-fun inv_Node__11 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b342 
 n1 
 (first m))
)
(define-fun inv_Atom_421 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1604 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__265 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b848 
 n1 
 (first m))
)
(define-fun inv_Atom_157 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1358 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__55 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b834 
 n1 
 (first m))
)
(define-fun inv_Node__328 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1666 
 n1 
 (first m))
)
(define-fun inv_Atom_75 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1686 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__213 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b880 
 n1 
 (first m))
)
(define-fun inv_Atom_124 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1614 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__174 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1658 
 (zero m) 
 (one m))
)
(define-fun inv_Node__114 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1728 
 n1 
 (first m))
)
(define-fun inv_Atom_151 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1653 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__178 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1270 
 (zero m) 
 (one m))
)
(define-fun inv_Node__110 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1545 
 n1 
 (first m))
)
(define-fun inv_Epoch__236 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1395 
 (zero m) 
 (one m))
)
(define-fun inv_Node__153 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b868 
 n1 
 (first m))
)
(define-fun inv_Atom_280 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1272 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__112 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1701 
 n1 
 (first m))
)
(define-fun inv_Atom_149 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1064 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_346 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b962 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_150 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1111 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_312 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1242 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__211 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1037 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_105 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1028 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__184 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1655 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__255 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1325 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__210 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1585 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_104 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1054 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__70 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1597 
 n1 
 (first m))
)
(define-fun inv_Node__56 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1596 
 n1 
 (first m))
)
(define-fun inv_Atom_302 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b830 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_449 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1083 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__279 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1182 
 n1 
 (first m))
)
(define-fun inv_Atom_16 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b320 
 (le m (inv_Epoch__100 m s n1) (inv_Epoch__101 m s n1)) 
 (ite inv_b321 
 (held m s (inv_Node__139 m s n1)) 
 (ite inv_b322 
 (transfer m s (inv_Epoch__102 m s n1) (inv_Node__140 m s n1)) 
 (ite inv_b323 
 (locked m s (inv_Epoch__103 m s n1) (inv_Node__141 m s n1)) 
 (ite inv_b324 
 (= n1 (first m)) 
 (ite inv_b325 
 (= (zero m) (one m)) 
 (ite inv_b326 
 (= (zero m) (ep m s (inv_Node__142 m s n1))) 
 (ite inv_b327 
 (= (one m) (ep m s (inv_Node__143 m s n1))) 
 (ite inv_b328 
 (and (inv_Atom_183 m s n1) (inv_Atom_184 m s n1)) 
 (ite inv_b329 
 (or (inv_Atom_185 m s n1) (inv_Atom_186 m s n1)) 
 (ite inv_b330 
 (=> (inv_Atom_187 m s n1) (inv_Atom_188 m s n1)) 
 (not (inv_Atom_189 m s n1)))))))))))))
)
(define-fun inv_Atom_364 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1706 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__226 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1707 
 (zero m) 
 (one m))
)
(define-fun inv_Node__186 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1213 
 n1 
 (first m))
)
(define-fun inv_Node__219 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1661 
 n1 
 (first m))
)
(define-fun inv_Node__235 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1490 
 n1 
 (first m))
)
(define-fun inv_Epoch__10 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b747 
 (zero m) 
 (ite inv_b748 
 (one m) 
 (ep m s (inv_Node__324 m s n1))))
)
(define-fun inv_Atom_198 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1256 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_275 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1338 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_453 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1569 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__350 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1514 
 n1 
 (first m))
)
(define-fun inv_Atom_341 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1447 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__161 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1376 
 n1 
 (first m))
)
(define-fun inv_Atom_241 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1420 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_286 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b978 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__158 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b953 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__118 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1613 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__238 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1622 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__9 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b474 
 (zero m) 
 (ite inv_b475 
 (one m) 
 (ep m s (inv_Node__204 m s n1))))
)
(define-fun inv_Node__246 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1076 
 n1 
 (first m))
)
(define-fun inv_Epoch__110 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b922 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_340 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1712 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__183 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1265 
 n1 
 (first m))
)
(define-fun inv_Atom_412 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1499 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__14 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b211 
 n1 
 (first m))
)
(define-fun inv_Atom_422 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1295 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__96 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1178 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_303 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1503 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__192 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1168 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_215 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1474 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__37 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1616 
 (zero m) 
 (one m))
)
(define-fun inv_Node__280 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b956 
 n1 
 (first m))
)
(define-fun inv_Atom_345 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1080 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__253 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b964 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_242 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1317 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_359 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1303 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__194 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1084 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_320 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1643 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__254 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b912 
 n1 
 (first m))
)
(define-fun inv_Atom_403 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1432 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__228 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1304 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_79 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b871 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__247 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1252 
 n1 
 (first m))
)
(define-fun inv_Node__136 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1424 
 n1 
 (first m))
)
(define-fun inv_Atom_84 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1500 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__54 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1355 
 n1 
 (first m))
)
(define-fun inv_Epoch__177 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1710 
 (zero m) 
 (one m))
)
(define-fun inv_Node__198 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b917 
 n1 
 (first m))
)
(define-fun inv_Atom_361 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1147 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_315 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1261 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_178 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1431 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__170 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1089 
 (zero m) 
 (one m))
)
(define-fun inv_Node__73 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1439 
 n1 
 (first m))
)
(define-fun inv_Epoch__172 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1392 
 (zero m) 
 (one m))
)
(define-fun inv_Node__242 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1683 
 n1 
 (first m))
)
(define-fun inv_Node__268 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1091 
 n1 
 (first m))
)
(define-fun inv_Atom_261 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b995 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__99 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1529 
 n1 
 (first m))
)
(define-fun inv_Epoch__109 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1434 
 (zero m) 
 (one m))
)
(define-fun inv_Node__288 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b837 
 n1 
 (first m))
)
(define-fun inv_Node__291 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1134 
 n1 
 (first m))
)
(define-fun inv_Atom_197 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1085 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__134 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b883 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_244 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1421 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_123 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1308 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__205 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1508 
 n1 
 (first m))
)
(define-fun inv_Node__243 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1180 
 n1 
 (first m))
)
(define-fun inv_Atom_406 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b854 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_338 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1095 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__151 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1074 
 n1 
 (first m))
)
(define-fun inv_Atom_306 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1069 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__231 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1418 
 (zero m) 
 (one m))
)
(define-fun inv_Node__318 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b873 
 n1 
 (first m))
)
(define-fun inv_Node__234 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1090 
 n1 
 (first m))
)
(define-fun inv_Node__236 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1517 
 n1 
 (first m))
)
(define-fun inv_Atom_402 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b882 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__278 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1275 
 n1 
 (first m))
)
(define-fun inv_Atom_81 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1483 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_217 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b988 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_305 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1575 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_120 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1285 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_455 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b927 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_409 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1132 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__240 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1700 
 n1 
 (first m))
)
(define-fun inv_Atom_279 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1361 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__202 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1407 
 n1 
 (first m))
)
(define-fun inv_Node__281 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1530 
 n1 
 (first m))
)
(define-fun inv_Node__200 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1552 
 n1 
 (first m))
)
(define-fun inv_Epoch__176 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1122 
 (zero m) 
 (one m))
)
(define-fun inv_Node__295 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1542 
 n1 
 (first m))
)
(define-fun inv_Node__347 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1220 
 n1 
 (first m))
)
(define-fun inv_Node__6 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b307 
 n1 
 (first m))
)
(define-fun inv_Epoch__11 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b434 
 (zero m) 
 (ite inv_b435 
 (one m) 
 (ep m s (inv_Node__186 m s n1))))
)
(define-fun inv_Node__317 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b926 
 n1 
 (first m))
)
(define-fun inv_Atom_425 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1093 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__65 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b906 
 (zero m) 
 (one m))
)
(define-fun inv_Node__88 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1541 
 n1 
 (first m))
)
(define-fun inv_Atom_179 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1351 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_202 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1413 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__186 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1681 
 (zero m) 
 (one m))
)
(define-fun inv_Node__152 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1501 
 n1 
 (first m))
)
(define-fun inv_Epoch__187 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1536 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_199 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1163 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__216 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1547 
 n1 
 (first m))
)
(define-fun inv_Epoch__54 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1427 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_313 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1699 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__42 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b813 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_18 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b227 
 (le m (inv_Epoch__72 m s n1) (inv_Epoch__73 m s n1)) 
 (ite inv_b228 
 (held m s (inv_Node__99 m s n1)) 
 (ite inv_b229 
 (transfer m s (inv_Epoch__74 m s n1) (inv_Node__100 m s n1)) 
 (ite inv_b230 
 (locked m s (inv_Epoch__75 m s n1) (inv_Node__101 m s n1)) 
 (ite inv_b231 
 (= n1 (first m)) 
 (ite inv_b232 
 (= (zero m) (one m)) 
 (ite inv_b233 
 (= (zero m) (ep m s (inv_Node__102 m s n1))) 
 (ite inv_b234 
 (= (one m) (ep m s (inv_Node__103 m s n1))) 
 (ite inv_b235 
 (and (inv_Atom_134 m s n1) (inv_Atom_135 m s n1)) 
 (ite inv_b236 
 (or (inv_Atom_136 m s n1) (inv_Atom_137 m s n1)) 
 (ite inv_b237 
 (=> (inv_Atom_138 m s n1) (inv_Atom_139 m s n1)) 
 (not (inv_Atom_140 m s n1)))))))))))))
)
(define-fun inv_Atom_277 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1018 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_281 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1194 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__215 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1593 
 (zero m) 
 (one m))
)
(define-fun inv_Node__10 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b746 
 n1 
 (first m))
)
(define-fun inv_Epoch__214 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1201 
 (zero m) 
 (one m))
)
(define-fun inv_Node__199 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1013 
 n1 
 (first m))
)
(define-fun inv_Atom_378 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1637 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_317 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1592 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_342 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b886 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__152 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1217 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_450 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b884 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__193 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1218 
 (zero m) 
 (one m))
)
(define-fun inv_Node__91 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1146 
 n1 
 (first m))
)
(define-fun inv_Epoch__66 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1278 
 (zero m) 
 (one m))
)
(define-fun inv_Node__327 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1280 
 n1 
 (first m))
)
(define-fun inv_Epoch__179 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1618 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_384 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1426 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_100 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1310 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_99 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1346 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_201 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1343 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_71 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b860 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_363 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1104 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_176 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b994 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_283 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1359 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__244 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1316 
 n1 
 (first m))
)
(define-fun inv_Node__214 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1115 
 n1 
 (first m))
)
(define-fun inv_Epoch__155 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1601 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__55 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1036 
 (zero m) 
 (one m))
)
(define-fun inv_Node__309 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1004 
 n1 
 (first m))
)
(define-fun inv_Node__69 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1227 
 n1 
 (first m))
)
(define-fun inv_Node__325 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b822 
 n1 
 (first m))
)
(define-fun inv_Node__293 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b947 
 n1 
 (first m))
)
(define-fun inv_Node__330 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1566 
 n1 
 (first m))
)
(define-fun inv_Atom_332 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1368 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_270 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1716 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__83 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1300 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__52 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1412 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_154 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1630 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__111 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1524 
 (zero m) 
 (one m))
)
(define-fun inv_Node__48 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1523 
 n1 
 (first m))
)
(define-fun inv_Atom_375 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1414 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_379 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1366 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_304 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1606 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_314 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b817 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__191 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1200 
 (zero m) 
 (one m))
)
(define-fun inv_Node__269 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1410 
 n1 
 (first m))
)
(define-fun inv_Atom_240 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1257 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_282 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1107 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_333 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1539 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_311 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1443 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_322 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1677 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_212 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1167 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__208 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1378 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_319 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1510 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_373 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1498 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__5 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b289 
 (zero m) 
 (ite inv_b290 
 (one m) 
 (ep m s (inv_Node__126 m s n1))))
)
(define-fun inv_Epoch__237 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1014 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_24 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b252 
 (le m (inv_Epoch__80 m s n1) (inv_Epoch__81 m s n1)) 
 (ite inv_b253 
 (held m s (inv_Node__110 m s n1)) 
 (ite inv_b254 
 (transfer m s (inv_Epoch__82 m s n1) (inv_Node__111 m s n1)) 
 (ite inv_b255 
 (locked m s (inv_Epoch__83 m s n1) (inv_Node__112 m s n1)) 
 (ite inv_b256 
 (= n1 (first m)) 
 (ite inv_b257 
 (= (zero m) (one m)) 
 (ite inv_b258 
 (= (zero m) (ep m s (inv_Node__113 m s n1))) 
 (ite inv_b259 
 (= (one m) (ep m s (inv_Node__114 m s n1))) 
 (ite inv_b260 
 (and (inv_Atom_148 m s n1) (inv_Atom_149 m s n1)) 
 (ite inv_b261 
 (or (inv_Atom_150 m s n1) (inv_Atom_151 m s n1)) 
 (ite inv_b262 
 (=> (inv_Atom_152 m s n1) (inv_Atom_153 m s n1)) 
 (not (inv_Atom_154 m s n1)))))))))))))
)
(define-fun inv_Atom_423 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1689 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_374 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1573 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_15 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b344 
 (le m (inv_Epoch__108 m s n1) (inv_Epoch__109 m s n1)) 
 (ite inv_b345 
 (held m s (inv_Node__149 m s n1)) 
 (ite inv_b346 
 (transfer m s (inv_Epoch__110 m s n1) (inv_Node__150 m s n1)) 
 (ite inv_b347 
 (locked m s (inv_Epoch__111 m s n1) (inv_Node__151 m s n1)) 
 (ite inv_b348 
 (= n1 (first m)) 
 (ite inv_b349 
 (= (zero m) (one m)) 
 (ite inv_b350 
 (= (zero m) (ep m s (inv_Node__152 m s n1))) 
 (ite inv_b351 
 (= (one m) (ep m s (inv_Node__153 m s n1))) 
 (ite inv_b352 
 (and (inv_Atom_197 m s n1) (inv_Atom_198 m s n1)) 
 (ite inv_b353 
 (or (inv_Atom_199 m s n1) (inv_Atom_200 m s n1)) 
 (ite inv_b354 
 (=> (inv_Atom_201 m s n1) (inv_Atom_202 m s n1)) 
 (not (inv_Atom_203 m s n1)))))))))))))
)
(define-fun inv_Epoch__4 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b212 
 (zero m) 
 (ite inv_b213 
 (one m) 
 (ep m s (inv_Node__92 m s n1))))
)
(define-fun inv_Epoch__119 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1629 
 (zero m) 
 (one m))
)
(define-fun inv_Node__270 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1423 
 n1 
 (first m))
)
(define-fun inv_Atom_337 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1249 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__159 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b915 
 n1 
 (first m))
)
(define-fun inv_Epoch__117 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1181 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_23 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b755 
 (le m (inv_Epoch__236 m s n1) (inv_Epoch__237 m s n1)) 
 (ite inv_b756 
 (held m s (inv_Node__327 m s n1)) 
 (ite inv_b757 
 (transfer m s (inv_Epoch__238 m s n1) (inv_Node__328 m s n1)) 
 (ite inv_b758 
 (locked m s (inv_Epoch__239 m s n1) (inv_Node__329 m s n1)) 
 (ite inv_b759 
 (= n1 (first m)) 
 (ite inv_b760 
 (= (zero m) (one m)) 
 (ite inv_b761 
 (= (zero m) (ep m s (inv_Node__330 m s n1))) 
 (ite inv_b762 
 (= (one m) (ep m s (inv_Node__331 m s n1))) 
 (ite inv_b763 
 (and (inv_Atom_421 m s n1) (inv_Atom_422 m s n1)) 
 (ite inv_b764 
 (or (inv_Atom_423 m s n1) (inv_Atom_424 m s n1)) 
 (ite inv_b765 
 (=> (inv_Atom_425 m s n1) (inv_Atom_426 m s n1)) 
 (not (inv_Atom_427 m s n1)))))))))))))
)
(define-fun inv_Atom_155 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1267 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__263 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1266 
 n1 
 (first m))
)
(define-fun inv_Node__261 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1723 
 n1 
 (first m))
)
(define-fun inv_Epoch__85 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b931 
 (zero m) 
 (one m))
)
(define-fun inv_Node__9 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b734 
 n1 
 (first m))
)
(define-fun inv_Node__217 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1435 
 n1 
 (first m))
)
(define-fun inv_Atom_265 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b972 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__135 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b993 
 n1 
 (first m))
)
(define-fun inv_Node__238 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1098 
 n1 
 (first m))
)
(define-fun inv_Epoch__98 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1644 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_125 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1504 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__171 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1331 
 (zero m) 
 (one m))
)
(define-fun inv_Node__72 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b944 
 n1 
 (first m))
)
(define-fun inv_Node__315 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1050 
 n1 
 (first m))
)
(define-fun inv_Node__277 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1400 
 n1 
 (first m))
)
(define-fun inv_Atom_74 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1638 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__159 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1725 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_160 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1212 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__135 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1635 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_181 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1250 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__8 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b766 
 n1 
 (first m))
)
(define-fun inv_Atom_266 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1244 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_408 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1553 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_401 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1594 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_27 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b603 
 (le m (inv_Epoch__188 m s n1) (inv_Epoch__189 m s n1)) 
 (ite inv_b604 
 (held m s (inv_Node__261 m s n1)) 
 (ite inv_b605 
 (transfer m s (inv_Epoch__190 m s n1) (inv_Node__262 m s n1)) 
 (ite inv_b606 
 (locked m s (inv_Epoch__191 m s n1) (inv_Node__263 m s n1)) 
 (ite inv_b607 
 (= n1 (first m)) 
 (ite inv_b608 
 (= (zero m) (one m)) 
 (ite inv_b609 
 (= (zero m) (ep m s (inv_Node__264 m s n1))) 
 (ite inv_b610 
 (= (one m) (ep m s (inv_Node__265 m s n1))) 
 (ite inv_b611 
 (and (inv_Atom_337 m s n1) (inv_Atom_338 m s n1)) 
 (ite inv_b612 
 (or (inv_Atom_339 m s n1) (inv_Atom_340 m s n1)) 
 (ite inv_b613 
 (=> (inv_Atom_341 m s n1) (inv_Atom_342 m s n1)) 
 (not (inv_Atom_343 m s n1)))))))))))))
)
(define-fun inv_Node__294 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1102 
 n1 
 (first m))
)
(define-fun inv_Node__7 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b672 
 n1 
 (first m))
)
(define-fun inv_Epoch__213 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b827 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__229 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b820 
 (zero m) 
 (one m))
)
(define-fun inv_Node__287 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1625 
 n1 
 (first m))
)
(define-fun inv_Node__241 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1487 
 n1 
 (first m))
)
(define-fun inv_Node__256 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b870 
 n1 
 (first m))
)
(define-fun inv_Node__316 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1663 
 n1 
 (first m))
)
(define-fun inv_Node__104 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1570 
 n1 
 (first m))
)
(define-fun inv_Epoch__133 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1544 
 (zero m) 
 (one m))
)
(define-fun inv_Node__5 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b293 
 n1 
 (first m))
)
(define-fun inv_Atom_377 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1277 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__39 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b980 
 (zero m) 
 (one m))
)
(define-fun inv_Node__12 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b96 
 n1 
 (first m))
)
(define-fun inv_Node__348 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1555 
 n1 
 (first m))
)
(define-fun inv_Atom_76 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1162 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_102 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b971 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__99 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b840 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_413 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1022 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__57 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1458 
 n1 
 (first m))
)
(define-fun inv_Epoch__156 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1127 
 (zero m) 
 (one m))
)
(define-fun inv_Node__46 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b928 
 n1 
 (first m))
)
(define-fun inv_Atom_330 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1445 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_362 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b852 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_452 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1623 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_308 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1574 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__209 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1724 
 n1 
 (first m))
)
(define-fun inv_Node__221 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1372 
 n1 
 (first m))
)
(define-fun inv_Atom_253 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1262 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__75 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b842 
 n1 
 (first m))
)
(define-fun inv_Atom_407 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1388 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_372 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1297 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_255 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1527 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__201 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1494 
 (zero m) 
 (one m))
)
(define-fun inv_Node__349 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1734 
 n1 
 (first m))
)
(define-fun inv_Node__51 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1289 
 n1 
 (first m))
)
(define-fun inv_Atom_376 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1184 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__50 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1324 
 n1 
 (first m))
)
(define-fun inv_Atom_331 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b981 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_397 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1702 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_454 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1670 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__222 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1179 
 n1 
 (first m))
)
(define-fun inv_Atom_307 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1144 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__212 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1441 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__230 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1001 
 (zero m) 
 (one m))
)
(define-fun inv_Node__197 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b910 
 n1 
 (first m))
)
(define-fun inv_Node__184 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1143 
 n1 
 (first m))
)
(define-fun inv_Node__271 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1148 
 n1 
 (first m))
)
(define-fun inv_Atom_159 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1703 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__266 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1467 
 n1 
 (first m))
)
(define-fun inv_Atom_321 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1528 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__258 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b959 
 n1 
 (first m))
)
(define-fun inv_Node__207 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1246 
 n1 
 (first m))
)
(define-fun inv_Atom_335 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1556 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_410 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1259 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__160 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b891 
 n1 
 (first m))
)
(define-fun inv_Atom_103 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1150 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_77 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1157 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_318 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1462 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__188 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1328 
 n1 
 (first m))
)
(define-fun inv_Node__194 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1391 
 n1 
 (first m))
)
(define-fun inv_Atom_25 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b491 
 (le m (inv_Epoch__152 m s n1) (inv_Epoch__153 m s n1)) 
 (ite inv_b492 
 (held m s (inv_Node__212 m s n1)) 
 (ite inv_b493 
 (transfer m s (inv_Epoch__154 m s n1) (inv_Node__213 m s n1)) 
 (ite inv_b494 
 (locked m s (inv_Epoch__155 m s n1) (inv_Node__214 m s n1)) 
 (ite inv_b495 
 (= n1 (first m)) 
 (ite inv_b496 
 (= (zero m) (one m)) 
 (ite inv_b497 
 (= (zero m) (ep m s (inv_Node__215 m s n1))) 
 (ite inv_b498 
 (= (one m) (ep m s (inv_Node__216 m s n1))) 
 (ite inv_b499 
 (and (inv_Atom_274 m s n1) (inv_Atom_275 m s n1)) 
 (ite inv_b500 
 (or (inv_Atom_276 m s n1) (inv_Atom_277 m s n1)) 
 (ite inv_b501 
 (=> (inv_Atom_278 m s n1) (inv_Atom_279 m s n1)) 
 (not (inv_Atom_280 m s n1)))))))))))))
)
(define-fun inv_Epoch__195 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1533 
 (zero m) 
 (one m))
)
(define-fun inv_Node__87 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b940 
 n1 
 (first m))
)
(define-fun inv_Node__68 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1580 
 n1 
 (first m))
)
(define-fun inv_Epoch__224 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1489 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_246 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1164 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_245 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1121 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__32 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1628 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__116 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1068 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_268 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1513 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_451 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1170 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_348 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1571 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_349 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b816 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__257 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1319 
 n1 
 (first m))
)
(define-fun inv_Atom_271 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b984 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_437 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1738 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_58 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b551 
 (le m (inv_Epoch__172 m s n1) (inv_Epoch__173 m s n1)) 
 (ite inv_b552 
 (held m s (inv_Node__238 m s n1)) 
 (ite inv_b553 
 (transfer m s (inv_Epoch__174 m s n1) (inv_Node__239 m s n1)) 
 (ite inv_b554 
 (locked m s (inv_Epoch__175 m s n1) (inv_Node__240 m s n1)) 
 (ite inv_b555 
 (= n1 (first m)) 
 (ite inv_b556 
 (= (zero m) (one m)) 
 (ite inv_b557 
 (= (zero m) (ep m s (inv_Node__241 m s n1))) 
 (ite inv_b558 
 (= (one m) (ep m s (inv_Node__242 m s n1))) 
 (ite inv_b559 
 (and (inv_Atom_309 m s n1) (inv_Atom_310 m s n1)) 
 (ite inv_b560 
 (or (inv_Atom_311 m s n1) (inv_Atom_312 m s n1)) 
 (ite inv_b561 
 (=> (inv_Atom_313 m s n1) (inv_Atom_314 m s n1)) 
 (not (inv_Atom_315 m s n1)))))))))))))
)
(define-fun inv_Epoch__241 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1166 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_350 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1466 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__202 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b876 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_21 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b160 
 (le m (inv_Epoch__52 m s n1) (inv_Epoch__53 m s n1)) 
 (ite inv_b161 
 (held m s (inv_Node__70 m s n1)) 
 (ite inv_b162 
 (transfer m s (inv_Epoch__54 m s n1) (inv_Node__71 m s n1)) 
 (ite inv_b163 
 (locked m s (inv_Epoch__55 m s n1) (inv_Node__72 m s n1)) 
 (ite inv_b164 
 (= n1 (first m)) 
 (ite inv_b165 
 (= (zero m) (one m)) 
 (ite inv_b166 
 (= (zero m) (ep m s (inv_Node__73 m s n1))) 
 (ite inv_b167 
 (= (one m) (ep m s (inv_Node__74 m s n1))) 
 (ite inv_b168 
 (and (inv_Atom_99 m s n1) (inv_Atom_100 m s n1)) 
 (ite inv_b169 
 (or (inv_Atom_101 m s n1) (inv_Atom_102 m s n1)) 
 (ite inv_b170 
 (=> (inv_Atom_103 m s n1) (inv_Atom_104 m s n1)) 
 (not (inv_Atom_105 m s n1)))))))))))))
)
(define-fun inv_Node__196 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1290 
 n1 
 (first m))
)
(define-fun inv_Node__106 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1301 
 n1 
 (first m))
)
(define-fun inv_Node__138 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1507 
 n1 
 (first m))
)
(define-fun inv_Node__45 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1105 
 n1 
 (first m))
)
(define-fun inv_Epoch__169 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1116 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__6 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b625 
 (zero m) 
 (ite inv_b626 
 (one m) 
 (ep m s (inv_Node__271 m s n1))))
)
(define-fun inv_Atom_382 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b812 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_216 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1337 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__47 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1156 
 n1 
 (first m))
)
(define-fun inv_Atom_243 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b924 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__252 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1129 
 (zero m) 
 (one m))
)
(define-fun inv_Node__296 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1106 
 n1 
 (first m))
)
(define-fun inv_Node__211 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1177 
 n1 
 (first m))
)
(define-fun inv_Atom_164 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1318 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__116 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1033 
 n1 
 (first m))
)
(define-fun inv_Atom_396 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1401 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__191 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1344 
 n1 
 (first m))
)
(define-fun inv_Atom_213 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1055 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__201 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1006 
 n1 
 (first m))
)
(define-fun inv_Node__311 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1099 
 n1 
 (first m))
)
(define-fun inv_Node__90 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1326 
 n1 
 (first m))
)
(define-fun inv_Atom_272 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b973 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__163 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1340 
 n1 
 (first m))
)
(define-fun inv_Epoch__140 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1535 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__225 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1589 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__87 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1461 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_73 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b877 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__233 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1197 
 n1 
 (first m))
)
(define-fun inv_Node__53 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1283 
 n1 
 (first m))
)
(define-fun inv_Atom_316 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1430 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__305 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1041 
 n1 
 (first m))
)
(define-fun inv_Epoch__141 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b825 
 (zero m) 
 (one m))
)
(define-fun inv_Node__181 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1406 
 n1 
 (first m))
)
(define-fun inv_Epoch__147 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1565 
 (zero m) 
 (one m))
)
(define-fun inv_Node__190 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1229 
 n1 
 (first m))
)
(define-fun inv_Atom_165 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1531 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__40 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b890 
 (zero m) 
 (one m))
)
(define-fun inv_Node__49 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b948 
 n1 
 (first m))
)
(define-fun inv_Atom_78 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b903 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__351 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1667 
 n1 
 (first m))
)
(define-fun inv_Node__289 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1673 
 n1 
 (first m))
)
(define-fun inv_Epoch__148 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1493 
 (zero m) 
 (one m))
)
(define-fun inv_Node__304 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1135 
 n1 
 (first m))
)
(define-fun inv_Epoch__43 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1457 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__200 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1312 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_207 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b855 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__308 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1717 
 n1 
 (first m))
)
(define-fun inv_Atom_163 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1729 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__340 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1155 
 n1 
 (first m))
)
(define-fun inv_Atom_287 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1471 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_59 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b588 
 (le m (inv_Epoch__184 m s n1) (inv_Epoch__185 m s n1)) 
 (ite inv_b589 
 (held m s (inv_Node__254 m s n1)) 
 (ite inv_b590 
 (transfer m s (inv_Epoch__186 m s n1) (inv_Node__255 m s n1)) 
 (ite inv_b591 
 (locked m s (inv_Epoch__187 m s n1) (inv_Node__256 m s n1)) 
 (ite inv_b592 
 (= n1 (first m)) 
 (ite inv_b593 
 (= (zero m) (one m)) 
 (ite inv_b594 
 (= (zero m) (ep m s (inv_Node__257 m s n1))) 
 (ite inv_b595 
 (= (one m) (ep m s (inv_Node__258 m s n1))) 
 (ite inv_b596 
 (and (inv_Atom_330 m s n1) (inv_Atom_331 m s n1)) 
 (ite inv_b597 
 (or (inv_Atom_332 m s n1) (inv_Atom_333 m s n1)) 
 (ite inv_b598 
 (=> (inv_Atom_334 m s n1) (inv_Atom_335 m s n1)) 
 (not (inv_Atom_336 m s n1)))))))))))))
)
(define-fun inv_Epoch__113 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1620 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_19 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b800 
 (le m (inv_Epoch__252 m s n1) (inv_Epoch__253 m s n1)) 
 (ite inv_b801 
 (held m s (inv_Node__347 m s n1)) 
 (ite inv_b802 
 (transfer m s (inv_Epoch__254 m s n1) (inv_Node__348 m s n1)) 
 (ite inv_b803 
 (locked m s (inv_Epoch__255 m s n1) (inv_Node__349 m s n1)) 
 (ite inv_b804 
 (= n1 (first m)) 
 (ite inv_b805 
 (= (zero m) (one m)) 
 (ite inv_b806 
 (= (zero m) (ep m s (inv_Node__350 m s n1))) 
 (ite inv_b807 
 (= (one m) (ep m s (inv_Node__351 m s n1))) 
 (ite inv_b808 
 (and (inv_Atom_449 m s n1) (inv_Atom_450 m s n1)) 
 (ite inv_b809 
 (or (inv_Atom_451 m s n1) (inv_Atom_452 m s n1)) 
 (ite inv_b810 
 (=> (inv_Atom_453 m s n1) (inv_Atom_454 m s n1)) 
 (not (inv_Atom_455 m s n1)))))))))))))
)
(define-fun inv_Atom_60 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b723 
 (le m (inv_Epoch__228 m s n1) (inv_Epoch__229 m s n1)) 
 (ite inv_b724 
 (held m s (inv_Node__314 m s n1)) 
 (ite inv_b725 
 (transfer m s (inv_Epoch__230 m s n1) (inv_Node__315 m s n1)) 
 (ite inv_b726 
 (locked m s (inv_Epoch__231 m s n1) (inv_Node__316 m s n1)) 
 (ite inv_b727 
 (= n1 (first m)) 
 (ite inv_b728 
 (= (zero m) (one m)) 
 (ite inv_b729 
 (= (zero m) (ep m s (inv_Node__317 m s n1))) 
 (ite inv_b730 
 (= (one m) (ep m s (inv_Node__318 m s n1))) 
 (ite inv_b731 
 (and (inv_Atom_407 m s n1) (inv_Atom_408 m s n1)) 
 (ite inv_b732 
 (or (inv_Atom_409 m s n1) (inv_Atom_410 m s n1)) 
 (ite inv_b733 
 (=> (inv_Atom_411 m s n1) (inv_Atom_412 m s n1)) 
 (not (inv_Atom_413 m s n1)))))))))))))
)
(define-fun inv_Atom_167 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1578 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_180 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b914 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_385 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b872 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__108 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1204 
 n1 
 (first m))
)
(define-fun inv_Node__124 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1045 
 n1 
 (first m))
)
(define-fun inv_Node__302 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b818 
 n1 
 (first m))
)
(define-fun inv_Epoch__36 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1496 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__157 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1075 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_83 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1456 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__86 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1253 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_70 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1120 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__182 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1160 
 n1 
 (first m))
)
(define-fun inv_Epoch__243 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1477 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_400 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1103 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__290 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1380 
 n1 
 (first m))
)
(define-fun inv_Epoch__203 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b846 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_257 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1721 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_122 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1636 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_284 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b894 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__35 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1052 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_360 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b949 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__260 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1397 
 n1 
 (first m))
)
(define-fun inv_Atom_347 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1484 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_214 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1691 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_80 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1631 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__208 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1114 
 n1 
 (first m))
)
(define-fun inv_Epoch__144 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1506 
 (zero m) 
 (one m))
)
(define-fun inv_Node__144 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1470 
 n1 
 (first m))
)
(define-fun inv_Atom_254 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1154 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_393 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1588 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__28 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b197 
 n1 
 (first m))
)
(define-fun inv_Atom_267 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1171 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_358 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1675 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__67 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b859 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_404 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1225 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__313 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1649 
 n1 
 (first m))
)
(define-fun inv_Epoch__41 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1495 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__97 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1690 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__34 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1173 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__47 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1048 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_434 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1433 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__245 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1559 
 n1 
 (first m))
)
(define-fun inv_Node__137 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1313 
 n1 
 (first m))
)
(define-fun inv_Atom_389 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b898 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_126 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1291 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_247 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1214 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__136 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1320 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_82 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1307 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_62 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b122 
 (le m (inv_Epoch__40 m s n1) (inv_Epoch__41 m s n1)) 
 (ite inv_b123 
 (held m s (inv_Node__53 m s n1)) 
 (ite inv_b124 
 (transfer m s (inv_Epoch__42 m s n1) (inv_Node__54 m s n1)) 
 (ite inv_b125 
 (locked m s (inv_Epoch__43 m s n1) (inv_Node__55 m s n1)) 
 (ite inv_b126 
 (= n1 (first m)) 
 (ite inv_b127 
 (= (zero m) (one m)) 
 (ite inv_b128 
 (= (zero m) (ep m s (inv_Node__56 m s n1))) 
 (ite inv_b129 
 (= (one m) (ep m s (inv_Node__57 m s n1))) 
 (ite inv_b130 
 (and (inv_Atom_78 m s n1) (inv_Atom_79 m s n1)) 
 (ite inv_b131 
 (or (inv_Atom_80 m s n1) (inv_Atom_81 m s n1)) 
 (ite inv_b132 
 (=> (inv_Atom_82 m s n1) (inv_Atom_83 m s n1)) 
 (not (inv_Atom_84 m s n1)))))))))))))
)
(define-fun inv_Epoch__89 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b824 
 (zero m) 
 (one m))
)
(define-fun inv_Node__220 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1448 
 n1 
 (first m))
)
(define-fun inv_Epoch__146 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1650 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_88 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1624 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__218 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b982 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__209 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1035 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_182 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1651 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__134 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1174 
 n1 
 (first m))
)
(define-fun inv_Node__323 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1321 
 n1 
 (first m))
)
(define-fun inv_Epoch__143 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1123 
 (zero m) 
 (one m))
)
(define-fun inv_Node__13 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b369 
 n1 
 (first m))
)
(define-fun inv_Atom_264 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1425 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_262 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1281 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__79 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1221 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_211 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1118 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_146 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1416 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_226 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1243 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__38 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b867 
 (zero m) 
 (one m))
)
(define-fun inv_Node__319 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1079 
 n1 
 (first m))
)
(define-fun inv_Atom_249 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1016 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__237 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1668 
 n1 
 (first m))
)
(define-fun inv_Atom_20 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b614 
 (le m (inv_Epoch__192 m s n1) (inv_Epoch__193 m s n1)) 
 (ite inv_b615 
 (held m s (inv_Node__266 m s n1)) 
 (ite inv_b616 
 (transfer m s (inv_Epoch__194 m s n1) (inv_Node__267 m s n1)) 
 (ite inv_b617 
 (locked m s (inv_Epoch__195 m s n1) (inv_Node__268 m s n1)) 
 (ite inv_b618 
 (= n1 (first m)) 
 (ite inv_b619 
 (= (zero m) (one m)) 
 (ite inv_b620 
 (= (zero m) (ep m s (inv_Node__269 m s n1))) 
 (ite inv_b621 
 (= (one m) (ep m s (inv_Node__270 m s n1))) 
 (ite inv_b622 
 (and (inv_Atom_344 m s n1) (inv_Atom_345 m s n1)) 
 (ite inv_b623 
 (or (inv_Atom_346 m s n1) (inv_Atom_347 m s n1)) 
 (ite inv_b624 
 (=> (inv_Atom_348 m s n1) (inv_Atom_349 m s n1)) 
 (not (inv_Atom_350 m s n1)))))))))))))
)
(define-fun inv_Node__145 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1133 
 n1 
 (first m))
)
(define-fun inv_Node__89 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1491 
 n1 
 (first m))
)
(define-fun inv_Atom_72 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1642 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_177 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1032 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_48 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b540 
 (le m (inv_Epoch__168 m s n1) (inv_Epoch__169 m s n1)) 
 (ite inv_b541 
 (held m s (inv_Node__233 m s n1)) 
 (ite inv_b542 
 (transfer m s (inv_Epoch__170 m s n1) (inv_Node__234 m s n1)) 
 (ite inv_b543 
 (locked m s (inv_Epoch__171 m s n1) (inv_Node__235 m s n1)) 
 (ite inv_b544 
 (= n1 (first m)) 
 (ite inv_b545 
 (= (zero m) (one m)) 
 (ite inv_b546 
 (= (zero m) (ep m s (inv_Node__236 m s n1))) 
 (ite inv_b547 
 (= (one m) (ep m s (inv_Node__237 m s n1))) 
 (ite inv_b548 
 (and (inv_Atom_302 m s n1) (inv_Atom_303 m s n1)) 
 (ite inv_b549 
 (or (inv_Atom_304 m s n1) (inv_Atom_305 m s n1)) 
 (ite inv_b550 
 (=> (inv_Atom_306 m s n1) (inv_Atom_307 m s n1)) 
 (not (inv_Atom_308 m s n1)))))))))))))
)
(define-fun inv_Atom_239 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1609 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__29 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b696 
 (zero m) 
 (ite inv_b697 
 (one m) 
 (ep m s (inv_Node__302 m s n1))))
)
(define-fun inv_Atom_418 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1568 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_355 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1582 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__36 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b527 
 n1 
 (first m))
)
(define-fun inv_Node__80 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1598 
 n1 
 (first m))
)
(define-fun inv_Node__164 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1010 
 n1 
 (first m))
)
(define-fun inv_Atom_258 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1149 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_414 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1108 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_392 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1117 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_238 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b968 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__196 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1030 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_263 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b936 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_17 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b562 
 (le m (inv_Epoch__176 m s n1) (inv_Epoch__177 m s n1)) 
 (ite inv_b563 
 (held m s (inv_Node__243 m s n1)) 
 (ite inv_b564 
 (transfer m s (inv_Epoch__178 m s n1) (inv_Node__244 m s n1)) 
 (ite inv_b565 
 (locked m s (inv_Epoch__179 m s n1) (inv_Node__245 m s n1)) 
 (ite inv_b566 
 (= n1 (first m)) 
 (ite inv_b567 
 (= (zero m) (one m)) 
 (ite inv_b568 
 (= (zero m) (ep m s (inv_Node__246 m s n1))) 
 (ite inv_b569 
 (= (one m) (ep m s (inv_Node__247 m s n1))) 
 (ite inv_b570 
 (and (inv_Atom_316 m s n1) (inv_Atom_317 m s n1)) 
 (ite inv_b571 
 (or (inv_Atom_318 m s n1) (inv_Atom_319 m s n1)) 
 (ite inv_b572 
 (=> (inv_Atom_320 m s n1) (inv_Atom_321 m s n1)) 
 (not (inv_Atom_322 m s n1)))))))))))))
)
(define-fun inv_Atom_260 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1088 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_269 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b987 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_121 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b814 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_174 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1442 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_381 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b996 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__206 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1669 
 n1 
 (first m))
)
(define-fun inv_Node__128 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1383 
 n1 
 (first m))
)
(define-fun inv_Node__332 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1674 
 n1 
 (first m))
)
(define-fun inv_Epoch__64 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1646 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__151 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1131 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__167 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1385 
 (zero m) 
 (one m))
)
(define-fun inv_Node__118 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1475 
 n1 
 (first m))
)
(define-fun inv_Epoch__132 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1600 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_61 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b200 
 (le m (inv_Epoch__64 m s n1) (inv_Epoch__65 m s n1)) 
 (ite inv_b201 
 (held m s (inv_Node__87 m s n1)) 
 (ite inv_b202 
 (transfer m s (inv_Epoch__66 m s n1) (inv_Node__88 m s n1)) 
 (ite inv_b203 
 (locked m s (inv_Epoch__67 m s n1) (inv_Node__89 m s n1)) 
 (ite inv_b204 
 (= n1 (first m)) 
 (ite inv_b205 
 (= (zero m) (one m)) 
 (ite inv_b206 
 (= (zero m) (ep m s (inv_Node__90 m s n1))) 
 (ite inv_b207 
 (= (one m) (ep m s (inv_Node__91 m s n1))) 
 (ite inv_b208 
 (and (inv_Atom_120 m s n1) (inv_Atom_121 m s n1)) 
 (ite inv_b209 
 (or (inv_Atom_122 m s n1) (inv_Atom_123 m s n1)) 
 (ite inv_b210 
 (=> (inv_Atom_124 m s n1) (inv_Atom_125 m s n1)) 
 (not (inv_Atom_126 m s n1)))))))))))))
)
(define-fun inv_Epoch__59 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1169 
 (zero m) 
 (one m))
)
(define-fun inv_Node__93 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1284 
 n1 
 (first m))
)
(define-fun inv_Epoch__104 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1502 
 (zero m) 
 (one m))
)
(define-fun inv_Node__162 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1086 
 n1 
 (first m))
)
(define-fun inv_Epoch__207 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b957 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_210 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1719 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__218 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1657 
 n1 
 (first m))
)
(define-fun inv_Atom_141 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1142 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_357 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1654 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__249 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b979 
 n1 
 (first m))
)
(define-fun inv_Atom_371 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1342 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__2 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b370 
 n1 
 (first m))
)
(define-fun inv_Node__117 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1334 
 n1 
 (first m))
)
(define-fun inv_Atom_380 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b904 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_205 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1693 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__60 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1548 
 n1 
 (first m))
)
(define-fun inv_Epoch__50 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b831 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__18 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b156 
 (zero m) 
 (ite inv_b157 
 (one m) 
 (ep m s (inv_Node__68 m s n1))))
)
(define-fun inv_Atom_234 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1590 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_259 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1360 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__76 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b864 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_195 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b933 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__22 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b372 
 n1 
 (first m))
)
(define-fun inv_Node__127 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b879 
 n1 
 (first m))
)
(define-fun inv_Epoch__142 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1409 
 (zero m) 
 (one m))
)
(define-fun inv_Node__131 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1511 
 n1 
 (first m))
)
(define-fun inv_Node__335 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1094 
 n1 
 (first m))
)
(define-fun inv_Epoch__206 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1305 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__114 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1711 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_285 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b885 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__344 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1532 
 n1 
 (first m))
)
(define-fun inv_Node__312 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b857 
 n1 
 (first m))
)
(define-fun inv_Node__310 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1736 
 n1 
 (first m))
)
(define-fun inv_Node__43 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1354 
 n1 
 (first m))
)
(define-fun inv_Atom_204 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1061 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__15 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b158 
 (zero m) 
 (ite inv_b159 
 (one m) 
 (ep m s (inv_Node__69 m s n1))))
)
(define-fun inv_Node__146 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1422 
 n1 
 (first m))
)
(define-fun inv_Epoch__28 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b214 
 (zero m) 
 (ite inv_b215 
 (one m) 
 (ep m s (inv_Node__93 m s n1))))
)
(define-fun inv_Node__34 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b627 
 n1 
 (first m))
)
(define-fun inv_Node__297 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1126 
 n1 
 (first m))
)
(define-fun inv_Epoch__7 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b476 
 (zero m) 
 (ite inv_b477 
 (one m) 
 (ep m s (inv_Node__205 m s n1))))
)
(define-fun inv_Atom_405 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1374 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_26 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b639 
 (le m (inv_Epoch__200 m s n1) (inv_Epoch__201 m s n1)) 
 (ite inv_b640 
 (held m s (inv_Node__277 m s n1)) 
 (ite inv_b641 
 (transfer m s (inv_Epoch__202 m s n1) (inv_Node__278 m s n1)) 
 (ite inv_b642 
 (locked m s (inv_Epoch__203 m s n1) (inv_Node__279 m s n1)) 
 (ite inv_b643 
 (= n1 (first m)) 
 (ite inv_b644 
 (= (zero m) (one m)) 
 (ite inv_b645 
 (= (zero m) (ep m s (inv_Node__280 m s n1))) 
 (ite inv_b646 
 (= (one m) (ep m s (inv_Node__281 m s n1))) 
 (ite inv_b647 
 (and (inv_Atom_358 m s n1) (inv_Atom_359 m s n1)) 
 (ite inv_b648 
 (or (inv_Atom_360 m s n1) (inv_Atom_361 m s n1)) 
 (ite inv_b649 
 (=> (inv_Atom_362 m s n1) (inv_Atom_363 m s n1)) 
 (not (inv_Atom_364 m s n1)))))))))))))
)
(define-fun inv_Epoch__8 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b513 
 (zero m) 
 (ite inv_b514 
 (one m) 
 (ep m s (inv_Node__222 m s n1))))
)
(define-fun inv_Atom_228 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1087 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_47 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b661 
 (le m (inv_Epoch__208 m s n1) (inv_Epoch__209 m s n1)) 
 (ite inv_b662 
 (held m s (inv_Node__287 m s n1)) 
 (ite inv_b663 
 (transfer m s (inv_Epoch__210 m s n1) (inv_Node__288 m s n1)) 
 (ite inv_b664 
 (locked m s (inv_Epoch__211 m s n1) (inv_Node__289 m s n1)) 
 (ite inv_b665 
 (= n1 (first m)) 
 (ite inv_b666 
 (= (zero m) (one m)) 
 (ite inv_b667 
 (= (zero m) (ep m s (inv_Node__290 m s n1))) 
 (ite inv_b668 
 (= (one m) (ep m s (inv_Node__291 m s n1))) 
 (ite inv_b669 
 (and (inv_Atom_372 m s n1) (inv_Atom_373 m s n1)) 
 (ite inv_b670 
 (or (inv_Atom_374 m s n1) (inv_Atom_375 m s n1)) 
 (ite inv_b671 
 (=> (inv_Atom_376 m s n1) (inv_Atom_377 m s n1)) 
 (not (inv_Atom_378 m s n1)))))))))))))
)
(define-fun inv_Epoch__248 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1647 
 (zero m) 
 (one m))
)
(define-fun inv_Node__185 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1011 
 n1 
 (first m))
)
(define-fun inv_Node__259 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1062 
 n1 
 (first m))
)
(define-fun inv_Node__175 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b943 
 n1 
 (first m))
)
(define-fun inv_Node__41 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b950 
 n1 
 (first m))
)
(define-fun inv_Epoch__13 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b171 
 (zero m) 
 (ite inv_b172 
 (one m) 
 (ep m s (inv_Node__75 m s n1))))
)
(define-fun inv_Atom_419 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b913 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__127 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1152 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_299 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b896 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_2 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b15 
 (le m (inv_Epoch__4 m s n1) (inv_Epoch__5 m s n1)) 
 (ite inv_b16 
 (held m s (inv_Node__5 m s n1)) 
 (ite inv_b17 
 (transfer m s (inv_Epoch__6 m s n1) (inv_Node__6 m s n1)) 
 (ite inv_b18 
 (locked m s (inv_Epoch__7 m s n1) (inv_Node__7 m s n1)) 
 (ite inv_b19 
 (= n1 (first m)) 
 (ite inv_b20 
 (= (zero m) (one m)) 
 (ite inv_b21 
 (= (zero m) (ep m s (inv_Node__8 m s n1))) 
 (ite inv_b22 
 (= (one m) (ep m s (inv_Node__9 m s n1))) 
 (ite inv_b23 
 (and (inv_Atom_15 m s n1) (inv_Atom_16 m s n1)) 
 (ite inv_b24 
 (or (inv_Atom_17 m s n1) (inv_Atom_18 m s n1)) 
 (ite inv_b25 
 (=> (inv_Atom_19 m s n1) (inv_Atom_20 m s n1)) 
 (not (inv_Atom_21 m s n1)))))))))))))
)
(define-fun inv_Atom_51 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b709 
 (le m (inv_Epoch__224 m s n1) (inv_Epoch__225 m s n1)) 
 (ite inv_b710 
 (held m s (inv_Node__308 m s n1)) 
 (ite inv_b711 
 (transfer m s (inv_Epoch__226 m s n1) (inv_Node__309 m s n1)) 
 (ite inv_b712 
 (locked m s (inv_Epoch__227 m s n1) (inv_Node__310 m s n1)) 
 (ite inv_b713 
 (= n1 (first m)) 
 (ite inv_b714 
 (= (zero m) (one m)) 
 (ite inv_b715 
 (= (zero m) (ep m s (inv_Node__311 m s n1))) 
 (ite inv_b716 
 (= (one m) (ep m s (inv_Node__312 m s n1))) 
 (ite inv_b717 
 (and (inv_Atom_400 m s n1) (inv_Atom_401 m s n1)) 
 (ite inv_b718 
 (or (inv_Atom_402 m s n1) (inv_Atom_403 m s n1)) 
 (ite inv_b719 
 (=> (inv_Atom_404 m s n1) (inv_Atom_405 m s n1)) 
 (not (inv_Atom_406 m s n1)))))))))))))
)
(define-fun inv_Atom_192 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1138 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__145 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1136 
 (zero m) 
 (one m))
)
(define-fun inv_Node__210 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1335 
 n1 
 (first m))
)
(define-fun inv_Node__120 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1472 
 n1 
 (first m))
)
(define-fun inv_Atom_367 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1072 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_325 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1386 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_365 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1282 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__30 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b366 
 (zero m) 
 (ite inv_b367 
 (one m) 
 (ep m s (inv_Node__159 m s n1))))
)
(define-fun inv_Atom_447 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b900 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__306 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1696 
 n1 
 (first m))
)
(define-fun inv_Node__25 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b184 
 n1 
 (first m))
)
(define-fun inv_Node__339 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1546 
 n1 
 (first m))
)
(define-fun inv_Atom_156 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1371 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_86 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b878 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_28 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b308 
 (le m (inv_Epoch__96 m s n1) (inv_Epoch__97 m s n1)) 
 (ite inv_b309 
 (held m s (inv_Node__134 m s n1)) 
 (ite inv_b310 
 (transfer m s (inv_Epoch__98 m s n1) (inv_Node__135 m s n1)) 
 (ite inv_b311 
 (locked m s (inv_Epoch__99 m s n1) (inv_Node__136 m s n1)) 
 (ite inv_b312 
 (= n1 (first m)) 
 (ite inv_b313 
 (= (zero m) (one m)) 
 (ite inv_b314 
 (= (zero m) (ep m s (inv_Node__137 m s n1))) 
 (ite inv_b315 
 (= (one m) (ep m s (inv_Node__138 m s n1))) 
 (ite inv_b316 
 (and (inv_Atom_176 m s n1) (inv_Atom_177 m s n1)) 
 (ite inv_b317 
 (or (inv_Atom_178 m s n1) (inv_Atom_179 m s n1)) 
 (ite inv_b318 
 (=> (inv_Atom_180 m s n1) (inv_Atom_181 m s n1)) 
 (not (inv_Atom_182 m s n1)))))))))))))
)
(define-fun inv_Atom_442 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1417 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_10 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b109 
 (le m (inv_Epoch__36 m s n1) (inv_Epoch__37 m s n1)) 
 (ite inv_b110 
 (held m s (inv_Node__47 m s n1)) 
 (ite inv_b111 
 (transfer m s (inv_Epoch__38 m s n1) (inv_Node__48 m s n1)) 
 (ite inv_b112 
 (locked m s (inv_Epoch__39 m s n1) (inv_Node__49 m s n1)) 
 (ite inv_b113 
 (= n1 (first m)) 
 (ite inv_b114 
 (= (zero m) (one m)) 
 (ite inv_b115 
 (= (zero m) (ep m s (inv_Node__50 m s n1))) 
 (ite inv_b116 
 (= (one m) (ep m s (inv_Node__51 m s n1))) 
 (ite inv_b117 
 (and (inv_Atom_71 m s n1) (inv_Atom_72 m s n1)) 
 (ite inv_b118 
 (or (inv_Atom_73 m s n1) (inv_Atom_74 m s n1)) 
 (ite inv_b119 
 (=> (inv_Atom_75 m s n1) (inv_Atom_76 m s n1)) 
 (not (inv_Atom_77 m s n1)))))))))))))
)
(define-fun inv_Atom_22 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b374 
 (le m (inv_Epoch__116 m s n1) (inv_Epoch__117 m s n1)) 
 (ite inv_b375 
 (held m s (inv_Node__160 m s n1)) 
 (ite inv_b376 
 (transfer m s (inv_Epoch__118 m s n1) (inv_Node__161 m s n1)) 
 (ite inv_b377 
 (locked m s (inv_Epoch__119 m s n1) (inv_Node__162 m s n1)) 
 (ite inv_b378 
 (= n1 (first m)) 
 (ite inv_b379 
 (= (zero m) (one m)) 
 (ite inv_b380 
 (= (zero m) (ep m s (inv_Node__163 m s n1))) 
 (ite inv_b381 
 (= (one m) (ep m s (inv_Node__164 m s n1))) 
 (ite inv_b382 
 (and (inv_Atom_211 m s n1) (inv_Atom_212 m s n1)) 
 (ite inv_b383 
 (or (inv_Atom_213 m s n1) (inv_Atom_214 m s n1)) 
 (ite inv_b384 
 (=> (inv_Atom_215 m s n1) (inv_Atom_216 m s n1)) 
 (not (inv_Atom_217 m s n1)))))))))))))
)
(define-fun inv_Epoch__150 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1393 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_388 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b908 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__167 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1595 
 n1 
 (first m))
)
(define-fun inv_Atom_399 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b925 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_429 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b983 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_250 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1063 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__122 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1209 
 n1 
 (first m))
)
(define-fun inv_Epoch__240 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1603 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_4 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b26 
 (le m (inv_Epoch__8 m s n1) (inv_Epoch__9 m s n1)) 
 (ite inv_b27 
 (held m s (inv_Node__10 m s n1)) 
 (ite inv_b28 
 (transfer m s (inv_Epoch__10 m s n1) (inv_Node__11 m s n1)) 
 (ite inv_b29 
 (locked m s (inv_Epoch__11 m s n1) (inv_Node__12 m s n1)) 
 (ite inv_b30 
 (= n1 (first m)) 
 (ite inv_b31 
 (= (zero m) (one m)) 
 (ite inv_b32 
 (= (zero m) (ep m s (inv_Node__13 m s n1))) 
 (ite inv_b33 
 (= (one m) (ep m s (inv_Node__14 m s n1))) 
 (ite inv_b34 
 (and (inv_Atom_22 m s n1) (inv_Atom_23 m s n1)) 
 (ite inv_b35 
 (or (inv_Atom_24 m s n1) (inv_Atom_25 m s n1)) 
 (ite inv_b36 
 (=> (inv_Atom_26 m s n1) (inv_Atom_27 m s n1)) 
 (not (inv_Atom_28 m s n1)))))))))))))
)
(define-fun inv_Epoch__130 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1731 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_56 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b502 
 (le m (inv_Epoch__156 m s n1) (inv_Epoch__157 m s n1)) 
 (ite inv_b503 
 (held m s (inv_Node__217 m s n1)) 
 (ite inv_b504 
 (transfer m s (inv_Epoch__158 m s n1) (inv_Node__218 m s n1)) 
 (ite inv_b505 
 (locked m s (inv_Epoch__159 m s n1) (inv_Node__219 m s n1)) 
 (ite inv_b506 
 (= n1 (first m)) 
 (ite inv_b507 
 (= (zero m) (one m)) 
 (ite inv_b508 
 (= (zero m) (ep m s (inv_Node__220 m s n1))) 
 (ite inv_b509 
 (= (one m) (ep m s (inv_Node__221 m s n1))) 
 (ite inv_b510 
 (and (inv_Atom_281 m s n1) (inv_Atom_282 m s n1)) 
 (ite inv_b511 
 (or (inv_Atom_283 m s n1) (inv_Atom_284 m s n1)) 
 (ite inv_b512 
 (=> (inv_Atom_285 m s n1) (inv_Atom_286 m s n1)) 
 (not (inv_Atom_287 m s n1)))))))))))))
)
(define-fun inv_Epoch__57 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b935 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_115 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b858 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__23 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b373 
 n1 
 (first m))
)
(define-fun inv_Atom_93 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b863 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_440 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b945 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_158 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1537 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__272 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1581 
 n1 
 (first m))
)
(define-fun inv_Node__37 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b155 
 n1 
 (first m))
)
(define-fun inv_Atom_11 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b423 
 (le m (inv_Epoch__132 m s n1) (inv_Epoch__133 m s n1)) 
 (ite inv_b424 
 (held m s (inv_Node__181 m s n1)) 
 (ite inv_b425 
 (transfer m s (inv_Epoch__134 m s n1) (inv_Node__182 m s n1)) 
 (ite inv_b426 
 (locked m s (inv_Epoch__135 m s n1) (inv_Node__183 m s n1)) 
 (ite inv_b427 
 (= n1 (first m)) 
 (ite inv_b428 
 (= (zero m) (one m)) 
 (ite inv_b429 
 (= (zero m) (ep m s (inv_Node__184 m s n1))) 
 (ite inv_b430 
 (= (one m) (ep m s (inv_Node__185 m s n1))) 
 (ite inv_b431 
 (and (inv_Atom_239 m s n1) (inv_Atom_240 m s n1)) 
 (ite inv_b432 
 (or (inv_Atom_241 m s n1) (inv_Atom_242 m s n1)) 
 (ite inv_b433 
 (=> (inv_Atom_243 m s n1) (inv_Atom_244 m s n1)) 
 (not (inv_Atom_245 m s n1)))))))))))))
)
(define-fun inv_Node__165 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1073 
 n1 
 (first m))
)
(define-fun inv_Atom_66 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1698 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__242 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b975 
 (zero m) 
 (one m))
)
(define-fun inv_Node__29 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b673 
 n1 
 (first m))
)
(define-fun inv_Node__157 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1429 
 n1 
 (first m))
)
(define-fun inv_Atom_300 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1211 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__246 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1309 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__245 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1554 
 (zero m) 
 (one m))
)
(define-fun inv_Node__81 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1333 
 n1 
 (first m))
)
(define-fun inv_Node__148 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1101 
 n1 
 (first m))
)
(define-fun inv_Atom_273 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1469 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_256 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1224 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_221 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1612 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__224 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1481 
 n1 
 (first m))
)
(define-fun inv_Node__228 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b843 
 n1 
 (first m))
)
(define-fun inv_Epoch__120 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1222 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__27 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b599 
 (zero m) 
 (ite inv_b600 
 (one m) 
 (ep m s (inv_Node__259 m s n1))))
)
(define-fun inv_Node__322 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1437 
 n1 
 (first m))
)
(define-fun inv_Atom_292 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1497 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_67 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1189 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__253 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1634 
 n1 
 (first m))
)
(define-fun inv_Atom_231 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b845 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__183 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1672 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_41 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b460 
 (le m (inv_Epoch__144 m s n1) (inv_Epoch__145 m s n1)) 
 (ite inv_b461 
 (held m s (inv_Node__198 m s n1)) 
 (ite inv_b462 
 (transfer m s (inv_Epoch__146 m s n1) (inv_Node__199 m s n1)) 
 (ite inv_b463 
 (locked m s (inv_Epoch__147 m s n1) (inv_Node__200 m s n1)) 
 (ite inv_b464 
 (= n1 (first m)) 
 (ite inv_b465 
 (= (zero m) (one m)) 
 (ite inv_b466 
 (= (zero m) (ep m s (inv_Node__201 m s n1))) 
 (ite inv_b467 
 (= (one m) (ep m s (inv_Node__202 m s n1))) 
 (ite inv_b468 
 (and (inv_Atom_260 m s n1) (inv_Atom_261 m s n1)) 
 (ite inv_b469 
 (or (inv_Atom_262 m s n1) (inv_Atom_263 m s n1)) 
 (ite inv_b470 
 (=> (inv_Atom_264 m s n1) (inv_Atom_265 m s n1)) 
 (not (inv_Atom_266 m s n1)))))))))))))
)
(define-fun inv_Atom_110 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b991 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__22 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b749 
 (zero m) 
 (ite inv_b750 
 (one m) 
 (ep m s (inv_Node__325 m s n1))))
)
(define-fun inv_Node__61 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1066 
 n1 
 (first m))
)
(define-fun inv_Atom_232 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1579 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_297 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1348 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__164 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1485 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__90 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1109 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_108 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1645 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__107 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b892 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__166 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1056 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_170 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b874 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__165 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b856 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_223 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b990 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_112 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1049 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_444 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1223 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_395 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1003 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_68 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1077 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__92 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1007 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_369 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1065 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__119 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1676 
 n1 
 (first m))
)
(define-fun inv_Atom_161 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1255 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_398 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1363 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_251 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1450 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_65 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1550 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__88 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b986 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__20 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b238 
 (zero m) 
 (ite inv_b239 
 (one m) 
 (ep m s (inv_Node__104 m s n1))))
)
(define-fun inv_Epoch__199 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b888 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_252 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b930 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__195 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b934 
 n1 
 (first m))
)
(define-fun inv_Epoch__205 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1730 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_366 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1070 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_383 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b942 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_145 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1299 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__138 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1161 
 (zero m) 
 (one m))
)
(define-fun inv_Node__292 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1375 
 n1 
 (first m))
)
(define-fun inv_Epoch__244 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1438 
 (zero m) 
 (one m))
)
(define-fun inv_Node__107 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1349 
 n1 
 (first m))
)
(define-fun inv_Atom_394 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1219 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__156 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1512 
 n1 
 (first m))
)
(define-fun inv_Atom_354 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1561 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__321 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1191 
 n1 
 (first m))
)
(define-fun inv_Atom_190 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1436 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_356 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1639 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_49 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b674 
 (le m (inv_Epoch__212 m s n1) (inv_Epoch__213 m s n1)) 
 (ite inv_b675 
 (held m s (inv_Node__292 m s n1)) 
 (ite inv_b676 
 (transfer m s (inv_Epoch__214 m s n1) (inv_Node__293 m s n1)) 
 (ite inv_b677 
 (locked m s (inv_Epoch__215 m s n1) (inv_Node__294 m s n1)) 
 (ite inv_b678 
 (= n1 (first m)) 
 (ite inv_b679 
 (= (zero m) (one m)) 
 (ite inv_b680 
 (= (zero m) (ep m s (inv_Node__295 m s n1))) 
 (ite inv_b681 
 (= (one m) (ep m s (inv_Node__296 m s n1))) 
 (ite inv_b682 
 (and (inv_Atom_379 m s n1) (inv_Atom_380 m s n1)) 
 (ite inv_b683 
 (or (inv_Atom_381 m s n1) (inv_Atom_382 m s n1)) 
 (ite inv_b684 
 (=> (inv_Atom_383 m s n1) (inv_Atom_384 m s n1)) 
 (not (inv_Atom_385 m s n1)))))))))))))
)
(define-fun inv_Epoch__233 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1619 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_428 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1112 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__23 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b489 
 (zero m) 
 (ite inv_b490 
 (one m) 
 (ep m s (inv_Node__211 m s n1))))
)
(define-fun inv_Atom_438 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1577 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__109 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1199 
 n1 
 (first m))
)
(define-fun inv_Epoch__105 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1396 
 (zero m) 
 (one m))
)
(define-fun inv_Node__193 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1241 
 n1 
 (first m))
)
(define-fun inv_Atom_64 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1009 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__27 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b528 
 n1 
 (first m))
)
(define-fun inv_Node__275 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1377 
 n1 
 (first m))
)
(define-fun inv_Atom_147 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1158 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__189 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1709 
 n1 
 (first m))
)
(define-fun inv_Node__121 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1399 
 n1 
 (first m))
)
(define-fun inv_Atom_193 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1379 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__248 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1695 
 n1 
 (first m))
)
(define-fun inv_Epoch__223 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b849 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_90 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b835 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__285 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1591 
 n1 
 (first m))
)
(define-fun inv_Epoch__220 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b965 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_142 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1336 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__221 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b819 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__149 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1446 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__78 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1057 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__137 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1314 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_370 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1306 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__222 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1739 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__84 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1486 
 (zero m) 
 (one m))
)
(define-fun inv_Node__273 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1183 
 n1 
 (first m))
)
(define-fun inv_Atom_230 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1563 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__168 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1428 
 n1 
 (first m))
)
(define-fun inv_Node__115 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1019 
 n1 
 (first m))
)
(define-fun inv_Node__172 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1451 
 n1 
 (first m))
)
(define-fun inv_Atom_45 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b478 
 (le m (inv_Epoch__148 m s n1) (inv_Epoch__149 m s n1)) 
 (ite inv_b479 
 (held m s (inv_Node__206 m s n1)) 
 (ite inv_b480 
 (transfer m s (inv_Epoch__150 m s n1) (inv_Node__207 m s n1)) 
 (ite inv_b481 
 (locked m s (inv_Epoch__151 m s n1) (inv_Node__208 m s n1)) 
 (ite inv_b482 
 (= n1 (first m)) 
 (ite inv_b483 
 (= (zero m) (one m)) 
 (ite inv_b484 
 (= (zero m) (ep m s (inv_Node__209 m s n1))) 
 (ite inv_b485 
 (= (one m) (ep m s (inv_Node__210 m s n1))) 
 (ite inv_b486 
 (and (inv_Atom_267 m s n1) (inv_Atom_268 m s n1)) 
 (ite inv_b487 
 (or (inv_Atom_269 m s n1) (inv_Atom_270 m s n1)) 
 (ite inv_b488 
 (=> (inv_Atom_271 m s n1) (inv_Atom_272 m s n1)) 
 (not (inv_Atom_273 m s n1)))))))))))))
)
(define-fun inv_Atom_44 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b265 
 (le m (inv_Epoch__84 m s n1) (inv_Epoch__85 m s n1)) 
 (ite inv_b266 
 (held m s (inv_Node__116 m s n1)) 
 (ite inv_b267 
 (transfer m s (inv_Epoch__86 m s n1) (inv_Node__117 m s n1)) 
 (ite inv_b268 
 (locked m s (inv_Epoch__87 m s n1) (inv_Node__118 m s n1)) 
 (ite inv_b269 
 (= n1 (first m)) 
 (ite inv_b270 
 (= (zero m) (one m)) 
 (ite inv_b271 
 (= (zero m) (ep m s (inv_Node__119 m s n1))) 
 (ite inv_b272 
 (= (one m) (ep m s (inv_Node__120 m s n1))) 
 (ite inv_b273 
 (and (inv_Atom_155 m s n1) (inv_Atom_156 m s n1)) 
 (ite inv_b274 
 (or (inv_Atom_157 m s n1) (inv_Atom_158 m s n1)) 
 (ite inv_b275 
 (=> (inv_Atom_159 m s n1) (inv_Atom_160 m s n1)) 
 (not (inv_Atom_161 m s n1)))))))))))))
)
(define-fun inv_Node__44 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1687 
 n1 
 (first m))
)
(define-fun inv_Epoch__123 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1245 
 (zero m) 
 (one m))
)
(define-fun inv_Node__300 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1518 
 n1 
 (first m))
)
(define-fun inv_Node__86 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1193 
 n1 
 (first m))
)
(define-fun inv_Atom_436 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1352 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__126 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1522 
 (zero m) 
 (one m))
)
(define-fun inv_Node__123 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1027 
 n1 
 (first m))
)
(define-fun inv_Node__192 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1557 
 n1 
 (first m))
)
(define-fun inv_Node__42 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1452 
 n1 
 (first m))
)
(define-fun inv_Node__286 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1323 
 n1 
 (first m))
)
(define-fun inv_Epoch__234 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1023 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_432 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1460 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_295 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b847 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__282 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b951 
 n1 
 (first m))
)
(define-fun inv_Atom_191 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b838 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_206 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1247 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__179 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b895 
 n1 
 (first m))
)
(define-fun inv_Node__125 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b921 
 n1 
 (first m))
)
(define-fun inv_Atom_46 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b447 
 (le m (inv_Epoch__140 m s n1) (inv_Epoch__141 m s n1)) 
 (ite inv_b448 
 (held m s (inv_Node__192 m s n1)) 
 (ite inv_b449 
 (transfer m s (inv_Epoch__142 m s n1) (inv_Node__193 m s n1)) 
 (ite inv_b450 
 (locked m s (inv_Epoch__143 m s n1) (inv_Node__194 m s n1)) 
 (ite inv_b451 
 (= n1 (first m)) 
 (ite inv_b452 
 (= (zero m) (one m)) 
 (ite inv_b453 
 (= (zero m) (ep m s (inv_Node__195 m s n1))) 
 (ite inv_b454 
 (= (one m) (ep m s (inv_Node__196 m s n1))) 
 (ite inv_b455 
 (and (inv_Atom_253 m s n1) (inv_Atom_254 m s n1)) 
 (ite inv_b456 
 (or (inv_Atom_255 m s n1) (inv_Atom_256 m s n1)) 
 (ite inv_b457 
 (=> (inv_Atom_257 m s n1) (inv_Atom_258 m s n1)) 
 (not (inv_Atom_259 m s n1)))))))))))))
)
(define-fun inv_Node__230 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1042 
 n1 
 (first m))
)
(define-fun inv_Atom_420 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b958 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__62 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1403 
 n1 
 (first m))
)
(define-fun inv_Node__251 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1465 
 n1 
 (first m))
)
(define-fun inv_Epoch__77 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1198 
 (zero m) 
 (one m))
)
(define-fun inv_Node__303 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1455 
 n1 
 (first m))
)
(define-fun inv_Atom_143 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1024 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_430 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1130 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_87 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b919 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_433 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1082 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__336 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1538 
 n1 
 (first m))
)
(define-fun inv_Epoch__204 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1682 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__122 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b833 
 (zero m) 
 (one m))
)
(define-fun inv_Node__155 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1125 
 n1 
 (first m))
)
(define-fun inv_Node__31 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b752 
 n1 
 (first m))
)
(define-fun inv_Node__154 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1652 
 n1 
 (first m))
)
(define-fun inv_Node__20 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b196 
 n1 
 (first m))
)
(define-fun inv_Node__283 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b866 
 n1 
 (first m))
)
(define-fun inv_Epoch__128 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1273 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_327 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1576 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__337 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b963 
 n1 
 (first m))
)
(define-fun inv_Node__334 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1478 
 n1 
 (first m))
)
(define-fun inv_Epoch__139 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1012 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_168 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1058 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__60 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1026 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__131 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1732 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_94 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1110 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__284 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1327 
 n1 
 (first m))
)
(define-fun inv_Node__30 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b410 
 n1 
 (first m))
)
(define-fun inv_Node__333 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1234 
 n1 
 (first m))
)
(define-fun inv_Node__147 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1704 
 n1 
 (first m))
)
(define-fun inv_Node__98 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b821 
 n1 
 (first m))
)
(define-fun inv_Node__84 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1488 
 n1 
 (first m))
)
(define-fun inv_Epoch__62 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1648 
 (zero m) 
 (one m))
)
(define-fun inv_Node__274 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1419 
 n1 
 (first m))
)
(define-fun inv_Atom_117 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1367 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__298 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b941 
 n1 
 (first m))
)
(define-fun inv_Atom_435 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1025 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__232 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1671 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__25 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b94 
 (zero m) 
 (ite inv_b95 
 (one m) 
 (ep m s (inv_Node__41 m s n1))))
)
(define-fun inv_Node__105 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b865 
 n1 
 (first m))
)
(define-fun inv_Node__158 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b851 
 n1 
 (first m))
)
(define-fun inv_Epoch__95 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1239 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_144 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1381 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__33 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1664 
 (zero m) 
 (one m))
)
(define-fun inv_Node__338 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1713 
 n1 
 (first m))
)
(define-fun inv_Epoch__106 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1454 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_353 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1627 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__52 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1251 
 n1 
 (first m))
)
(define-fun inv_Node__345 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1237 
 n1 
 (first m))
)
(define-fun inv_Atom_352 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1195 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_293 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1271 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__235 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1044 
 (zero m) 
 (one m))
)
(define-fun inv_Node__307 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1165 
 n1 
 (first m))
)
(define-fun inv_Atom_131 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1236 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_69 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1322 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_431 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1078 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__171 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1206 
 n1 
 (first m))
)
(define-fun inv_Atom_34 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b240 
 (le m (inv_Epoch__76 m s n1) (inv_Epoch__77 m s n1)) 
 (ite inv_b241 
 (held m s (inv_Node__105 m s n1)) 
 (ite inv_b242 
 (transfer m s (inv_Epoch__78 m s n1) (inv_Node__106 m s n1)) 
 (ite inv_b243 
 (locked m s (inv_Epoch__79 m s n1) (inv_Node__107 m s n1)) 
 (ite inv_b244 
 (= n1 (first m)) 
 (ite inv_b245 
 (= (zero m) (one m)) 
 (ite inv_b246 
 (= (zero m) (ep m s (inv_Node__108 m s n1))) 
 (ite inv_b247 
 (= (one m) (ep m s (inv_Node__109 m s n1))) 
 (ite inv_b248 
 (and (inv_Atom_141 m s n1) (inv_Atom_142 m s n1)) 
 (ite inv_b249 
 (or (inv_Atom_143 m s n1) (inv_Atom_144 m s n1)) 
 (ite inv_b250 
 (=> (inv_Atom_145 m s n1) (inv_Atom_146 m s n1)) 
 (not (inv_Atom_147 m s n1)))))))))))))
)
(define-fun inv_Node__40 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1520 
 n1 
 (first m))
)
(define-fun inv_Atom_323 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b887 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__21 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b422 
 n1 
 (first m))
)
(define-fun inv_Atom_109 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b828 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_43 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b97 
 (le m (inv_Epoch__32 m s n1) (inv_Epoch__33 m s n1)) 
 (ite inv_b98 
 (held m s (inv_Node__42 m s n1)) 
 (ite inv_b99 
 (transfer m s (inv_Epoch__34 m s n1) (inv_Node__43 m s n1)) 
 (ite inv_b100 
 (locked m s (inv_Epoch__35 m s n1) (inv_Node__44 m s n1)) 
 (ite inv_b101 
 (= n1 (first m)) 
 (ite inv_b102 
 (= (zero m) (one m)) 
 (ite inv_b103 
 (= (zero m) (ep m s (inv_Node__45 m s n1))) 
 (ite inv_b104 
 (= (one m) (ep m s (inv_Node__46 m s n1))) 
 (ite inv_b105 
 (and (inv_Atom_64 m s n1) (inv_Atom_65 m s n1)) 
 (ite inv_b106 
 (or (inv_Atom_66 m s n1) (inv_Atom_67 m s n1)) 
 (ite inv_b107 
 (=> (inv_Atom_68 m s n1) (inv_Atom_69 m s n1)) 
 (not (inv_Atom_70 m s n1)))))))))))))
)
(define-fun inv_Epoch__197 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1692 
 (zero m) 
 (one m))
)
(define-fun inv_Node__320 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1210 
 n1 
 (first m))
)
(define-fun inv_Epoch__3 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b601 
 (zero m) 
 (ite inv_b602 
 (one m) 
 (ep m s (inv_Node__260 m s n1))))
)
(define-fun inv_Epoch__0 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b458 
 (zero m) 
 (ite inv_b459 
 (one m) 
 (ep m s (inv_Node__197 m s n1))))
)
(define-fun inv_Epoch__14 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b574 
 (zero m) 
 (ite inv_b575 
 (one m) 
 (ep m s (inv_Node__248 m s n1))))
)
(define-fun inv_Epoch__115 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1296 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__19 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b92 
 (zero m) 
 (ite inv_b93 
 (one m) 
 (ep m s (inv_Node__40 m s n1))))
)
(define-fun inv_Atom_368 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1735 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__163 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1480 
 (zero m) 
 (one m))
)
(define-fun inv_Node__231 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1726 
 n1 
 (first m))
)
(define-fun inv_Epoch__121 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1196 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_443 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b899 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_196 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1159 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_38 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b698 
 (le m (inv_Epoch__220 m s n1) (inv_Epoch__221 m s n1)) 
 (ite inv_b699 
 (held m s (inv_Node__303 m s n1)) 
 (ite inv_b700 
 (transfer m s (inv_Epoch__222 m s n1) (inv_Node__304 m s n1)) 
 (ite inv_b701 
 (locked m s (inv_Epoch__223 m s n1) (inv_Node__305 m s n1)) 
 (ite inv_b702 
 (= n1 (first m)) 
 (ite inv_b703 
 (= (zero m) (one m)) 
 (ite inv_b704 
 (= (zero m) (ep m s (inv_Node__306 m s n1))) 
 (ite inv_b705 
 (= (one m) (ep m s (inv_Node__307 m s n1))) 
 (ite inv_b706 
 (and (inv_Atom_393 m s n1) (inv_Atom_394 m s n1)) 
 (ite inv_b707 
 (or (inv_Atom_395 m s n1) (inv_Atom_396 m s n1)) 
 (ite inv_b708 
 (=> (inv_Atom_397 m s n1) (inv_Atom_398 m s n1)) 
 (not (inv_Atom_399 m s n1)))))))))))))
)
(define-fun inv_Atom_417 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1415 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__198 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b977 
 (zero m) 
 (one m))
)
(define-fun inv_Node__133 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1288 
 n1 
 (first m))
)
(define-fun inv_Atom_91 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1680 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__187 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1694 
 n1 
 (first m))
)
(define-fun inv_Atom_229 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b901 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_301 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1341 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_441 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b997 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__341 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1602 
 n1 
 (first m))
)
(define-fun inv_Epoch__247 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1587 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_439 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1202 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_128 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b841 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_225 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1362 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__276 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1560 
 n1 
 (first m))
)
(define-fun inv_Epoch__44 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1000 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_291 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b955 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__17 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b294 
 (zero m) 
 (ite inv_b295 
 (one m) 
 (ep m s (inv_Node__128 m s n1))))
)
(define-fun inv_Node__35 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b108 
 n1 
 (first m))
)
(define-fun inv_Epoch__91 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b844 
 (zero m) 
 (one m))
)
(define-fun inv_Node__82 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b961 
 n1 
 (first m))
)
(define-fun inv_Node__26 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b751 
 n1 
 (first m))
)
(define-fun inv_Atom_248 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1369 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_35 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b778 
 (le m (inv_Epoch__244 m s n1) (inv_Epoch__245 m s n1)) 
 (ite inv_b779 
 (held m s (inv_Node__337 m s n1)) 
 (ite inv_b780 
 (transfer m s (inv_Epoch__246 m s n1) (inv_Node__338 m s n1)) 
 (ite inv_b781 
 (locked m s (inv_Epoch__247 m s n1) (inv_Node__339 m s n1)) 
 (ite inv_b782 
 (= n1 (first m)) 
 (ite inv_b783 
 (= (zero m) (one m)) 
 (ite inv_b784 
 (= (zero m) (ep m s (inv_Node__340 m s n1))) 
 (ite inv_b785 
 (= (one m) (ep m s (inv_Node__341 m s n1))) 
 (ite inv_b786 
 (and (inv_Atom_435 m s n1) (inv_Atom_436 m s n1)) 
 (ite inv_b787 
 (or (inv_Atom_437 m s n1) (inv_Atom_438 m s n1)) 
 (ite inv_b788 
 (=> (inv_Atom_439 m s n1) (inv_Atom_440 m s n1)) 
 (not (inv_Atom_441 m s n1)))))))))))))
)
(define-fun inv_Atom_63 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b436 
 (le m (inv_Epoch__136 m s n1) (inv_Epoch__137 m s n1)) 
 (ite inv_b437 
 (held m s (inv_Node__187 m s n1)) 
 (ite inv_b438 
 (transfer m s (inv_Epoch__138 m s n1) (inv_Node__188 m s n1)) 
 (ite inv_b439 
 (locked m s (inv_Epoch__139 m s n1) (inv_Node__189 m s n1)) 
 (ite inv_b440 
 (= n1 (first m)) 
 (ite inv_b441 
 (= (zero m) (one m)) 
 (ite inv_b442 
 (= (zero m) (ep m s (inv_Node__190 m s n1))) 
 (ite inv_b443 
 (= (one m) (ep m s (inv_Node__191 m s n1))) 
 (ite inv_b444 
 (and (inv_Atom_246 m s n1) (inv_Atom_247 m s n1)) 
 (ite inv_b445 
 (or (inv_Atom_248 m s n1) (inv_Atom_249 m s n1)) 
 (ite inv_b446 
 (=> (inv_Atom_250 m s n1) (inv_Atom_251 m s n1)) 
 (not (inv_Atom_252 m s n1)))))))))))))
)
(define-fun inv_Atom_166 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1737 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_351 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1119 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__21 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b198 
 (zero m) 
 (ite inv_b199 
 (one m) 
 (ep m s (inv_Node__86 m s n1))))
)
(define-fun inv_Epoch__112 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b826 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_219 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1332 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_220 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1029 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_326 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1382 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_89 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1584 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_445 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1287 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_162 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b832 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_222 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1347 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_194 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b850 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__69 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1039 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__68 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1060 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__71 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b929 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__94 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1260 
 (zero m) 
 (one m))
)
(define-fun inv_Node__64 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1020 
 n1 
 (first m))
)
(define-fun inv_Atom_57 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b277 
 (le m (inv_Epoch__88 m s n1) (inv_Epoch__89 m s n1)) 
 (ite inv_b278 
 (held m s (inv_Node__121 m s n1)) 
 (ite inv_b279 
 (transfer m s (inv_Epoch__90 m s n1) (inv_Node__122 m s n1)) 
 (ite inv_b280 
 (locked m s (inv_Epoch__91 m s n1) (inv_Node__123 m s n1)) 
 (ite inv_b281 
 (= n1 (first m)) 
 (ite inv_b282 
 (= (zero m) (one m)) 
 (ite inv_b283 
 (= (zero m) (ep m s (inv_Node__124 m s n1))) 
 (ite inv_b284 
 (= (one m) (ep m s (inv_Node__125 m s n1))) 
 (ite inv_b285 
 (and (inv_Atom_162 m s n1) (inv_Atom_163 m s n1)) 
 (ite inv_b286 
 (or (inv_Atom_164 m s n1) (inv_Atom_165 m s n1)) 
 (ite inv_b287 
 (=> (inv_Atom_166 m s n1) (inv_Atom_167 m s n1)) 
 (not (inv_Atom_168 m s n1)))))))))))))
)
(define-fun inv_Atom_7 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b59 
 (le m (inv_Epoch__20 m s n1) (inv_Epoch__21 m s n1)) 
 (ite inv_b60 
 (held m s (inv_Node__25 m s n1)) 
 (ite inv_b61 
 (transfer m s (inv_Epoch__22 m s n1) (inv_Node__26 m s n1)) 
 (ite inv_b62 
 (locked m s (inv_Epoch__23 m s n1) (inv_Node__27 m s n1)) 
 (ite inv_b63 
 (= n1 (first m)) 
 (ite inv_b64 
 (= (zero m) (one m)) 
 (ite inv_b65 
 (= (zero m) (ep m s (inv_Node__28 m s n1))) 
 (ite inv_b66 
 (= (one m) (ep m s (inv_Node__29 m s n1))) 
 (ite inv_b67 
 (and (inv_Atom_43 m s n1) (inv_Atom_44 m s n1)) 
 (ite inv_b68 
 (or (inv_Atom_45 m s n1) (inv_Atom_46 m s n1)) 
 (ite inv_b69 
 (=> (inv_Atom_47 m s n1) (inv_Atom_48 m s n1)) 
 (not (inv_Atom_49 m s n1)))))))))))))
)
(define-fun inv_Node__346 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1139 
 n1 
 (first m))
)
(define-fun inv_Atom_129 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1626 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_29 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b628 
 (le m (inv_Epoch__196 m s n1) (inv_Epoch__197 m s n1)) 
 (ite inv_b629 
 (held m s (inv_Node__272 m s n1)) 
 (ite inv_b630 
 (transfer m s (inv_Epoch__198 m s n1) (inv_Node__273 m s n1)) 
 (ite inv_b631 
 (locked m s (inv_Epoch__199 m s n1) (inv_Node__274 m s n1)) 
 (ite inv_b632 
 (= n1 (first m)) 
 (ite inv_b633 
 (= (zero m) (one m)) 
 (ite inv_b634 
 (= (zero m) (ep m s (inv_Node__275 m s n1))) 
 (ite inv_b635 
 (= (one m) (ep m s (inv_Node__276 m s n1))) 
 (ite inv_b636 
 (and (inv_Atom_351 m s n1) (inv_Atom_352 m s n1)) 
 (ite inv_b637 
 (or (inv_Atom_353 m s n1) (inv_Atom_354 m s n1)) 
 (ite inv_b638 
 (=> (inv_Atom_355 m s n1) (inv_Atom_356 m s n1)) 
 (not (inv_Atom_357 m s n1)))))))))))))
)
(define-fun inv_Atom_387 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b952 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__326 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1617 
 n1 
 (first m))
)
(define-fun inv_Epoch__45 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1268 
 (zero m) 
 (one m))
)
(define-fun inv_Node__170 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b923 
 n1 
 (first m))
)
(define-fun inv_Node__76 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1137 
 n1 
 (first m))
)
(define-fun inv_Atom_40 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b767 
 (le m (inv_Epoch__240 m s n1) (inv_Epoch__241 m s n1)) 
 (ite inv_b768 
 (held m s (inv_Node__332 m s n1)) 
 (ite inv_b769 
 (transfer m s (inv_Epoch__242 m s n1) (inv_Node__333 m s n1)) 
 (ite inv_b770 
 (locked m s (inv_Epoch__243 m s n1) (inv_Node__334 m s n1)) 
 (ite inv_b771 
 (= n1 (first m)) 
 (ite inv_b772 
 (= (zero m) (one m)) 
 (ite inv_b773 
 (= (zero m) (ep m s (inv_Node__335 m s n1))) 
 (ite inv_b774 
 (= (one m) (ep m s (inv_Node__336 m s n1))) 
 (ite inv_b775 
 (and (inv_Atom_428 m s n1) (inv_Atom_429 m s n1)) 
 (ite inv_b776 
 (or (inv_Atom_430 m s n1) (inv_Atom_431 m s n1)) 
 (ite inv_b777 
 (=> (inv_Atom_432 m s n1) (inv_Atom_433 m s n1)) 
 (not (inv_Atom_434 m s n1)))))))))))))
)
(define-fun inv_Epoch__58 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1047 
 (zero m) 
 (one m))
)
(define-fun inv_Node__232 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1151 
 n1 
 (first m))
)
(define-fun inv_Atom_391 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1463 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__251 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1411 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__217 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1092 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__219 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1551 
 (zero m) 
 (one m))
)
(define-fun inv_Node__301 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1051 
 n1 
 (first m))
)
(define-fun inv_Node__169 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1031 
 n1 
 (first m))
)
(define-fun inv_Atom_169 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1140 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__174 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1633 
 n1 
 (first m))
)
(define-fun inv_Atom_324 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1187 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_53 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b650 
 (le m (inv_Epoch__204 m s n1) (inv_Epoch__205 m s n1)) 
 (ite inv_b651 
 (held m s (inv_Node__282 m s n1)) 
 (ite inv_b652 
 (transfer m s (inv_Epoch__206 m s n1) (inv_Node__283 m s n1)) 
 (ite inv_b653 
 (locked m s (inv_Epoch__207 m s n1) (inv_Node__284 m s n1)) 
 (ite inv_b654 
 (= n1 (first m)) 
 (ite inv_b655 
 (= (zero m) (one m)) 
 (ite inv_b656 
 (= (zero m) (ep m s (inv_Node__285 m s n1))) 
 (ite inv_b657 
 (= (one m) (ep m s (inv_Node__286 m s n1))) 
 (ite inv_b658 
 (and (inv_Atom_365 m s n1) (inv_Atom_366 m s n1)) 
 (ite inv_b659 
 (or (inv_Atom_367 m s n1) (inv_Atom_368 m s n1)) 
 (ite inv_b660 
 (=> (inv_Atom_369 m s n1) (inv_Atom_370 m s n1)) 
 (not (inv_Atom_371 m s n1)))))))))))))
)
(define-fun inv_Atom_209 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1040 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__166 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1254 
 n1 
 (first m))
)
(define-fun inv_Atom_237 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1298 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__129 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1205 
 n1 
 (first m))
)
(define-fun inv_Epoch__93 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1002 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__181 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b938 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_415 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b985 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__182 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1311 
 (zero m) 
 (one m))
)
(define-fun inv_Node__173 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1562 
 n1 
 (first m))
)
(define-fun inv_Node__178 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1384 
 n1 
 (first m))
)
(define-fun inv_Epoch__162 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1558 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_52 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b331 
 (le m (inv_Epoch__104 m s n1) (inv_Epoch__105 m s n1)) 
 (ite inv_b332 
 (held m s (inv_Node__144 m s n1)) 
 (ite inv_b333 
 (transfer m s (inv_Epoch__106 m s n1) (inv_Node__145 m s n1)) 
 (ite inv_b334 
 (locked m s (inv_Epoch__107 m s n1) (inv_Node__146 m s n1)) 
 (ite inv_b335 
 (= n1 (first m)) 
 (ite inv_b336 
 (= (zero m) (one m)) 
 (ite inv_b337 
 (= (zero m) (ep m s (inv_Node__147 m s n1))) 
 (ite inv_b338 
 (= (one m) (ep m s (inv_Node__148 m s n1))) 
 (ite inv_b339 
 (and (inv_Atom_190 m s n1) (inv_Atom_191 m s n1)) 
 (ite inv_b340 
 (or (inv_Atom_192 m s n1) (inv_Atom_193 m s n1)) 
 (ite inv_b341 
 (=> (inv_Atom_194 m s n1) (inv_Atom_195 m s n1)) 
 (not (inv_Atom_196 m s n1)))))))))))))
)
(define-fun inv_Node__130 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1509 
 n1 
 (first m))
)
(define-fun inv_Atom_107 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b907 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_92 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1365 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_236 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1113 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__16 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b120 
 (zero m) 
 (ite inv_b121 
 (one m) 
 (ep m s (inv_Node__52 m s n1))))
)
(define-fun inv_Atom_290 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b911 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__39 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b343 
 n1 
 (first m))
)
(define-fun inv_Atom_227 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1583 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__46 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1176 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_416 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1621 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__38 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b722 
 n1 
 (first m))
)
(define-fun inv_Atom_208 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1215 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__59 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1632 
 n1 
 (first m))
)
(define-fun inv_Node__177 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1684 
 n1 
 (first m))
)
(define-fun inv_Atom_12 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b355 
 (le m (inv_Epoch__112 m s n1) (inv_Epoch__113 m s n1)) 
 (ite inv_b356 
 (held m s (inv_Node__154 m s n1)) 
 (ite inv_b357 
 (transfer m s (inv_Epoch__114 m s n1) (inv_Node__155 m s n1)) 
 (ite inv_b358 
 (locked m s (inv_Epoch__115 m s n1) (inv_Node__156 m s n1)) 
 (ite inv_b359 
 (= n1 (first m)) 
 (ite inv_b360 
 (= (zero m) (one m)) 
 (ite inv_b361 
 (= (zero m) (ep m s (inv_Node__157 m s n1))) 
 (ite inv_b362 
 (= (one m) (ep m s (inv_Node__158 m s n1))) 
 (ite inv_b363 
 (and (inv_Atom_204 m s n1) (inv_Atom_205 m s n1)) 
 (ite inv_b364 
 (or (inv_Atom_206 m s n1) (inv_Atom_207 m s n1)) 
 (ite inv_b365 
 (=> (inv_Atom_208 m s n1) (inv_Atom_209 m s n1)) 
 (not (inv_Atom_210 m s n1)))))))))))))
)
(define-fun inv_Atom_37 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b735 
 (le m (inv_Epoch__232 m s n1) (inv_Epoch__233 m s n1)) 
 (ite inv_b736 
 (held m s (inv_Node__319 m s n1)) 
 (ite inv_b737 
 (transfer m s (inv_Epoch__234 m s n1) (inv_Node__320 m s n1)) 
 (ite inv_b738 
 (locked m s (inv_Epoch__235 m s n1) (inv_Node__321 m s n1)) 
 (ite inv_b739 
 (= n1 (first m)) 
 (ite inv_b740 
 (= (zero m) (one m)) 
 (ite inv_b741 
 (= (zero m) (ep m s (inv_Node__322 m s n1))) 
 (ite inv_b742 
 (= (one m) (ep m s (inv_Node__323 m s n1))) 
 (ite inv_b743 
 (and (inv_Atom_414 m s n1) (inv_Atom_415 m s n1)) 
 (ite inv_b744 
 (or (inv_Atom_416 m s n1) (inv_Atom_417 m s n1)) 
 (ite inv_b745 
 (=> (inv_Atom_418 m s n1) (inv_Atom_419 m s n1)) 
 (not (inv_Atom_420 m s n1)))))))))))))
)
(define-fun inv_Epoch__249 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1153 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__12 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b720 
 (zero m) 
 (ite inv_b721 
 (one m) 
 (ep m s (inv_Node__313 m s n1))))
)
(define-fun inv_Atom_289 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1350 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_294 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1521 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_85 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b937 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__31 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b291 
 (zero m) 
 (ite inv_b292 
 (one m) 
 (ep m s (inv_Node__127 m s n1))))
)
(define-fun inv_Atom_224 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1656 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_114 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1046 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__124 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1015 
 (zero m) 
 (one m))
)
(define-fun inv_Node__132 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1258 
 n1 
 (first m))
)
(define-fun inv_Node__180 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1329 
 n1 
 (first m))
)
(define-fun inv_Atom_233 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b869 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__2 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b263 
 (zero m) 
 (ite inv_b264 
 (one m) 
 (ep m s (inv_Node__115 m s n1))))
)
(define-fun inv_Epoch__61 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1405 
 (zero m) 
 (one m))
)
(define-fun inv_Node__58 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1610 
 n1 
 (first m))
)
(define-fun inv_Atom_390 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b967 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__51 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b976 
 (zero m) 
 (one m))
)
(define-fun inv_Node__24 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b515 
 n1 
 (first m))
)
(define-fun inv_Node__83 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1279 
 n1 
 (first m))
)
(define-fun inv_Node__0 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b251 
 n1 
 (first m))
)
(define-fun inv_Node__250 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1038 
 n1 
 (first m))
)
(define-fun inv_Node__229 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b960 
 n1 
 (first m))
)
(define-fun inv_Node__343 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1276 
 n1 
 (first m))
)
(define-fun inv_Epoch__160 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1720 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_3 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b81 
 (le m (inv_Epoch__28 m s n1) (inv_Epoch__29 m s n1)) 
 (ite inv_b82 
 (held m s (inv_Node__35 m s n1)) 
 (ite inv_b83 
 (transfer m s (inv_Epoch__30 m s n1) (inv_Node__36 m s n1)) 
 (ite inv_b84 
 (locked m s (inv_Epoch__31 m s n1) (inv_Node__37 m s n1)) 
 (ite inv_b85 
 (= n1 (first m)) 
 (ite inv_b86 
 (= (zero m) (one m)) 
 (ite inv_b87 
 (= (zero m) (ep m s (inv_Node__38 m s n1))) 
 (ite inv_b88 
 (= (one m) (ep m s (inv_Node__39 m s n1))) 
 (ite inv_b89 
 (and (inv_Atom_57 m s n1) (inv_Atom_58 m s n1)) 
 (ite inv_b90 
 (or (inv_Atom_59 m s n1) (inv_Atom_60 m s n1)) 
 (ite inv_b91 
 (=> (inv_Atom_61 m s n1) (inv_Atom_62 m s n1)) 
 (not (inv_Atom_63 m s n1)))))))))))))
)
(define-fun inv_Node__1 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b573 
 n1 
 (first m))
)
(define-fun inv_Node__32 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b276 
 n1 
 (first m))
)
(define-fun inv_Epoch__161 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b999 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_119 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1185 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__4 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b385 
 n1 
 (first m))
)
(define-fun inv_Epoch__70 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1286 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_130 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1263 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_127 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1665 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_218 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b920 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_111 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b905 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__67 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1525 
 n1 
 (first m))
)
(define-fun inv_Atom_106 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1364 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__216 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1398 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__125 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1615 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_50 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b133 
 (le m (inv_Epoch__44 m s n1) (inv_Epoch__45 m s n1)) 
 (ite inv_b134 
 (held m s (inv_Node__58 m s n1)) 
 (ite inv_b135 
 (transfer m s (inv_Epoch__46 m s n1) (inv_Node__59 m s n1)) 
 (ite inv_b136 
 (locked m s (inv_Epoch__47 m s n1) (inv_Node__60 m s n1)) 
 (ite inv_b137 
 (= n1 (first m)) 
 (ite inv_b138 
 (= (zero m) (one m)) 
 (ite inv_b139 
 (= (zero m) (ep m s (inv_Node__61 m s n1))) 
 (ite inv_b140 
 (= (one m) (ep m s (inv_Node__62 m s n1))) 
 (ite inv_b141 
 (and (inv_Atom_85 m s n1) (inv_Atom_86 m s n1)) 
 (ite inv_b142 
 (or (inv_Atom_87 m s n1) (inv_Atom_88 m s n1)) 
 (ite inv_b143 
 (=> (inv_Atom_89 m s n1) (inv_Atom_90 m s n1)) 
 (not (inv_Atom_91 m s n1)))))))))))))
)
(define-fun inv_Epoch__26 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b408 
 (zero m) 
 (ite inv_b409 
 (one m) 
 (ep m s (inv_Node__175 m s n1))))
)
(define-fun inv_Node__18 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b371 
 n1 
 (first m))
)
(define-fun inv_Atom_95 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1274 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__342 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1453 
 n1 
 (first m))
)
(define-fun inv_Node__225 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1394 
 n1 
 (first m))
)
(define-fun inv_Node__299 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1526 
 n1 
 (first m))
)
(define-fun inv_Atom_8 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b397 
 (le m (inv_Epoch__124 m s n1) (inv_Epoch__125 m s n1)) 
 (ite inv_b398 
 (held m s (inv_Node__170 m s n1)) 
 (ite inv_b399 
 (transfer m s (inv_Epoch__126 m s n1) (inv_Node__171 m s n1)) 
 (ite inv_b400 
 (locked m s (inv_Epoch__127 m s n1) (inv_Node__172 m s n1)) 
 (ite inv_b401 
 (= n1 (first m)) 
 (ite inv_b402 
 (= (zero m) (one m)) 
 (ite inv_b403 
 (= (zero m) (ep m s (inv_Node__173 m s n1))) 
 (ite inv_b404 
 (= (one m) (ep m s (inv_Node__174 m s n1))) 
 (ite inv_b405 
 (and (inv_Atom_225 m s n1) (inv_Atom_226 m s n1)) 
 (ite inv_b406 
 (or (inv_Atom_227 m s n1) (inv_Atom_228 m s n1)) 
 (ite inv_b407 
 (=> (inv_Atom_229 m s n1) (inv_Atom_230 m s n1)) 
 (not (inv_Atom_231 m s n1)))))))))))))
)
(define-fun inv_Epoch__48 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1402 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_298 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1440 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_172 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1389 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__223 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1238 
 n1 
 (first m))
)
(define-fun inv_Atom_175 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b909 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__63 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1067 
 n1 
 (first m))
)
(define-fun inv_Atom_446 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1468 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__176 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1071 
 n1 
 (first m))
)
(define-fun inv_Node__226 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1607 
 n1 
 (first m))
)
(define-fun inv_Epoch__56 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b875 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_386 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1516 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_235 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b893 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__180 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b881 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_96 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1540 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_39 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b685 
 (le m (inv_Epoch__216 m s n1) (inv_Epoch__217 m s n1)) 
 (ite inv_b686 
 (held m s (inv_Node__297 m s n1)) 
 (ite inv_b687 
 (transfer m s (inv_Epoch__218 m s n1) (inv_Node__298 m s n1)) 
 (ite inv_b688 
 (locked m s (inv_Epoch__219 m s n1) (inv_Node__299 m s n1)) 
 (ite inv_b689 
 (= n1 (first m)) 
 (ite inv_b690 
 (= (zero m) (one m)) 
 (ite inv_b691 
 (= (zero m) (ep m s (inv_Node__300 m s n1))) 
 (ite inv_b692 
 (= (one m) (ep m s (inv_Node__301 m s n1))) 
 (ite inv_b693 
 (and (inv_Atom_386 m s n1) (inv_Atom_387 m s n1)) 
 (ite inv_b694 
 (or (inv_Atom_388 m s n1) (inv_Atom_389 m s n1)) 
 (ite inv_b695 
 (=> (inv_Atom_390 m s n1) (inv_Atom_391 m s n1)) 
 (not (inv_Atom_392 m s n1)))))))))))))
)
(define-fun inv_Epoch__129 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1727 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_296 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1459 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__19 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b471 
 n1 
 (first m))
)
(define-fun inv_Epoch__1 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b753 
 (zero m) 
 (ite inv_b754 
 (one m) 
 (ep m s (inv_Node__326 m s n1))))
)
(define-fun inv_Node__66 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1697 
 n1 
 (first m))
)
(define-fun inv_Atom_116 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1404 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_113 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1100 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_30 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b386 
 (le m (inv_Epoch__120 m s n1) (inv_Epoch__121 m s n1)) 
 (ite inv_b387 
 (held m s (inv_Node__165 m s n1)) 
 (ite inv_b388 
 (transfer m s (inv_Epoch__122 m s n1) (inv_Node__166 m s n1)) 
 (ite inv_b389 
 (locked m s (inv_Epoch__123 m s n1) (inv_Node__167 m s n1)) 
 (ite inv_b390 
 (= n1 (first m)) 
 (ite inv_b391 
 (= (zero m) (one m)) 
 (ite inv_b392 
 (= (zero m) (ep m s (inv_Node__168 m s n1))) 
 (ite inv_b393 
 (= (one m) (ep m s (inv_Node__169 m s n1))) 
 (ite inv_b394 
 (and (inv_Atom_218 m s n1) (inv_Atom_219 m s n1)) 
 (ite inv_b395 
 (or (inv_Atom_220 m s n1) (inv_Atom_221 m s n1)) 
 (ite inv_b396 
 (=> (inv_Atom_222 m s n1) (inv_Atom_223 m s n1)) 
 (not (inv_Atom_224 m s n1)))))))))))))
)
(define-fun inv_Epoch__250 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1357 
 (zero m) 
 (one m))
)
(define-fun inv_Node__79 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1017 
 n1 
 (first m))
)
(define-fun inv_Node__78 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1292 
 n1 
 (first m))
)
(define-fun inv_Atom_328 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1708 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__63 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1444 
 (zero m) 
 (one m))
)
(define-fun inv_Node__33 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b288 
 n1 
 (first m))
)
(define-fun inv_Atom_14 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b411 
 (le m (inv_Epoch__128 m s n1) (inv_Epoch__129 m s n1)) 
 (ite inv_b412 
 (held m s (inv_Node__176 m s n1)) 
 (ite inv_b413 
 (transfer m s (inv_Epoch__130 m s n1) (inv_Node__177 m s n1)) 
 (ite inv_b414 
 (locked m s (inv_Epoch__131 m s n1) (inv_Node__178 m s n1)) 
 (ite inv_b415 
 (= n1 (first m)) 
 (ite inv_b416 
 (= (zero m) (one m)) 
 (ite inv_b417 
 (= (zero m) (ep m s (inv_Node__179 m s n1))) 
 (ite inv_b418 
 (= (one m) (ep m s (inv_Node__180 m s n1))) 
 (ite inv_b419 
 (and (inv_Atom_232 m s n1) (inv_Atom_233 m s n1)) 
 (ite inv_b420 
 (or (inv_Atom_234 m s n1) (inv_Atom_235 m s n1)) 
 (ite inv_b421 
 (=> (inv_Atom_236 m s n1) (inv_Atom_237 m s n1)) 
 (not (inv_Atom_238 m s n1)))))))))))))
)
(define-fun inv_Atom_13 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b529 
 (le m (inv_Epoch__164 m s n1) (inv_Epoch__165 m s n1)) 
 (ite inv_b530 
 (held m s (inv_Node__228 m s n1)) 
 (ite inv_b531 
 (transfer m s (inv_Epoch__166 m s n1) (inv_Node__229 m s n1)) 
 (ite inv_b532 
 (locked m s (inv_Epoch__167 m s n1) (inv_Node__230 m s n1)) 
 (ite inv_b533 
 (= n1 (first m)) 
 (ite inv_b534 
 (= (zero m) (one m)) 
 (ite inv_b535 
 (= (zero m) (ep m s (inv_Node__231 m s n1))) 
 (ite inv_b536 
 (= (one m) (ep m s (inv_Node__232 m s n1))) 
 (ite inv_b537 
 (and (inv_Atom_295 m s n1) (inv_Atom_296 m s n1)) 
 (ite inv_b538 
 (or (inv_Atom_297 m s n1) (inv_Atom_298 m s n1)) 
 (ite inv_b539 
 (=> (inv_Atom_299 m s n1) (inv_Atom_300 m s n1)) 
 (not (inv_Atom_301 m s n1)))))))))))))
)
(define-fun inv_Node__3 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b319 
 n1 
 (first m))
)
(define-fun inv_Atom_448 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1659 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__227 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1269 
 n1 
 (first m))
)
(define-fun inv_Atom_118 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1572 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_288 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1733 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__252 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1043 
 n1 
 (first m))
)
(define-fun inv_Node__77 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1479 
 n1 
 (first m))
)
(define-fun inv_Node__203 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1605 
 n1 
 (first m))
)
(define-fun inv_Atom_173 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b839 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_171 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1714 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Epoch__24 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b472 
 (zero m) 
 (ite inv_b473 
 (one m) 
 (ep m s (inv_Node__203 m s n1))))
)
(define-fun inv_Node__16 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b368 
 n1 
 (first m))
)
(define-fun inv_Atom_9 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b516 
 (le m (inv_Epoch__160 m s n1) (inv_Epoch__161 m s n1)) 
 (ite inv_b517 
 (held m s (inv_Node__223 m s n1)) 
 (ite inv_b518 
 (transfer m s (inv_Epoch__162 m s n1) (inv_Node__224 m s n1)) 
 (ite inv_b519 
 (locked m s (inv_Epoch__163 m s n1) (inv_Node__225 m s n1)) 
 (ite inv_b520 
 (= n1 (first m)) 
 (ite inv_b521 
 (= (zero m) (one m)) 
 (ite inv_b522 
 (= (zero m) (ep m s (inv_Node__226 m s n1))) 
 (ite inv_b523 
 (= (one m) (ep m s (inv_Node__227 m s n1))) 
 (ite inv_b524 
 (and (inv_Atom_288 m s n1) (inv_Atom_289 m s n1)) 
 (ite inv_b525 
 (or (inv_Atom_290 m s n1) (inv_Atom_291 m s n1)) 
 (ite inv_b526 
 (=> (inv_Atom_292 m s n1) (inv_Atom_293 m s n1)) 
 (not (inv_Atom_294 m s n1)))))))))))))
)
(define-fun inv_Atom_97 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1370 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_329 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1124 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__17 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b811 
 n1 
 (first m))
)
(define-fun inv_Atom_55 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b789 
 (le m (inv_Epoch__248 m s n1) (inv_Epoch__249 m s n1)) 
 (ite inv_b790 
 (held m s (inv_Node__342 m s n1)) 
 (ite inv_b791 
 (transfer m s (inv_Epoch__250 m s n1) (inv_Node__343 m s n1)) 
 (ite inv_b792 
 (locked m s (inv_Epoch__251 m s n1) (inv_Node__344 m s n1)) 
 (ite inv_b793 
 (= n1 (first m)) 
 (ite inv_b794 
 (= (zero m) (one m)) 
 (ite inv_b795 
 (= (zero m) (ep m s (inv_Node__345 m s n1))) 
 (ite inv_b796 
 (= (one m) (ep m s (inv_Node__346 m s n1))) 
 (ite inv_b797 
 (and (inv_Atom_442 m s n1) (inv_Atom_443 m s n1)) 
 (ite inv_b798 
 (or (inv_Atom_444 m s n1) (inv_Atom_445 m s n1)) 
 (ite inv_b799 
 (=> (inv_Atom_446 m s n1) (inv_Atom_447 m s n1)) 
 (not (inv_Atom_448 m s n1)))))))))))))
)
(define-fun inv_Atom_54 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b296 
 (le m (inv_Epoch__92 m s n1) (inv_Epoch__93 m s n1)) 
 (ite inv_b297 
 (held m s (inv_Node__129 m s n1)) 
 (ite inv_b298 
 (transfer m s (inv_Epoch__94 m s n1) (inv_Node__130 m s n1)) 
 (ite inv_b299 
 (locked m s (inv_Epoch__95 m s n1) (inv_Node__131 m s n1)) 
 (ite inv_b300 
 (= n1 (first m)) 
 (ite inv_b301 
 (= (zero m) (one m)) 
 (ite inv_b302 
 (= (zero m) (ep m s (inv_Node__132 m s n1))) 
 (ite inv_b303 
 (= (one m) (ep m s (inv_Node__133 m s n1))) 
 (ite inv_b304 
 (and (inv_Atom_169 m s n1) (inv_Atom_170 m s n1)) 
 (ite inv_b305 
 (or (inv_Atom_171 m s n1) (inv_Atom_172 m s n1)) 
 (ite inv_b306 
 (=> (inv_Atom_173 m s n1) (inv_Atom_174 m s n1)) 
 (not (inv_Atom_175 m s n1)))))))))))))
)
(define-fun inv_Atom_36 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b576 
 (le m (inv_Epoch__180 m s n1) (inv_Epoch__181 m s n1)) 
 (ite inv_b577 
 (held m s (inv_Node__249 m s n1)) 
 (ite inv_b578 
 (transfer m s (inv_Epoch__182 m s n1) (inv_Node__250 m s n1)) 
 (ite inv_b579 
 (locked m s (inv_Epoch__183 m s n1) (inv_Node__251 m s n1)) 
 (ite inv_b580 
 (= n1 (first m)) 
 (ite inv_b581 
 (= (zero m) (one m)) 
 (ite inv_b582 
 (= (zero m) (ep m s (inv_Node__252 m s n1))) 
 (ite inv_b583 
 (= (one m) (ep m s (inv_Node__253 m s n1))) 
 (ite inv_b584 
 (and (inv_Atom_323 m s n1) (inv_Atom_324 m s n1)) 
 (ite inv_b585 
 (or (inv_Atom_325 m s n1) (inv_Atom_326 m s n1)) 
 (ite inv_b586 
 (=> (inv_Atom_327 m s n1) (inv_Atom_328 m s n1)) 
 (not (inv_Atom_329 m s n1)))))))))))))
)
(define-fun inv_Atom_42 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b173 
 (le m (inv_Epoch__56 m s n1) (inv_Epoch__57 m s n1)) 
 (ite inv_b174 
 (held m s (inv_Node__76 m s n1)) 
 (ite inv_b175 
 (transfer m s (inv_Epoch__58 m s n1) (inv_Node__77 m s n1)) 
 (ite inv_b176 
 (locked m s (inv_Epoch__59 m s n1) (inv_Node__78 m s n1)) 
 (ite inv_b177 
 (= n1 (first m)) 
 (ite inv_b178 
 (= (zero m) (one m)) 
 (ite inv_b179 
 (= (zero m) (ep m s (inv_Node__79 m s n1))) 
 (ite inv_b180 
 (= (one m) (ep m s (inv_Node__80 m s n1))) 
 (ite inv_b181 
 (and (inv_Atom_106 m s n1) (inv_Atom_107 m s n1)) 
 (ite inv_b182 
 (or (inv_Atom_108 m s n1) (inv_Atom_109 m s n1)) 
 (ite inv_b183 
 (=> (inv_Atom_110 m s n1) (inv_Atom_111 m s n1)) 
 (not (inv_Atom_112 m s n1)))))))))))))
)
(define-fun inv_Atom_0 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b70 
 (le m (inv_Epoch__24 m s n1) (inv_Epoch__25 m s n1)) 
 (ite inv_b71 
 (held m s (inv_Node__30 m s n1)) 
 (ite inv_b72 
 (transfer m s (inv_Epoch__26 m s n1) (inv_Node__31 m s n1)) 
 (ite inv_b73 
 (locked m s (inv_Epoch__27 m s n1) (inv_Node__32 m s n1)) 
 (ite inv_b74 
 (= n1 (first m)) 
 (ite inv_b75 
 (= (zero m) (one m)) 
 (ite inv_b76 
 (= (zero m) (ep m s (inv_Node__33 m s n1))) 
 (ite inv_b77 
 (= (one m) (ep m s (inv_Node__34 m s n1))) 
 (ite inv_b78 
 (and (inv_Atom_50 m s n1) (inv_Atom_51 m s n1)) 
 (ite inv_b79 
 (or (inv_Atom_52 m s n1) (inv_Atom_53 m s n1)) 
 (ite inv_b80 
 (=> (inv_Atom_54 m s n1) (inv_Atom_55 m s n1)) 
 (not (inv_Atom_56 m s n1)))))))))))))
)
(define-fun inv_Node__65 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b998 
 n1 
 (first m))
)
(define-fun inv_Node__96 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1640 
 n1 
 (first m))
)
(define-fun inv_Node__85 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1492 
 n1 
 (first m))
)
(define-fun inv_Node__94 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1145 
 n1 
 (first m))
)
(define-fun inv_Epoch__49 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b1534 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_132 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1473 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Atom_5 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b4 
 (le m (inv_Epoch__0 m s n1) (inv_Epoch__1 m s n1)) 
 (ite inv_b5 
 (held m s (inv_Node__0 m s n1)) 
 (ite inv_b6 
 (transfer m s (inv_Epoch__2 m s n1) (inv_Node__1 m s n1)) 
 (ite inv_b7 
 (locked m s (inv_Epoch__3 m s n1) (inv_Node__2 m s n1)) 
 (ite inv_b8 
 (= n1 (first m)) 
 (ite inv_b9 
 (= (zero m) (one m)) 
 (ite inv_b10 
 (= (zero m) (ep m s (inv_Node__3 m s n1))) 
 (ite inv_b11 
 (= (one m) (ep m s (inv_Node__4 m s n1))) 
 (ite inv_b12 
 (and (inv_Atom_8 m s n1) (inv_Atom_9 m s n1)) 
 (ite inv_b13 
 (or (inv_Atom_10 m s n1) (inv_Atom_11 m s n1)) 
 (ite inv_b14 
 (=> (inv_Atom_12 m s n1) (inv_Atom_13 m s n1)) 
 (not (inv_Atom_14 m s n1)))))))))))))
)
(define-fun inv_Atom_32 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b185 
 (le m (inv_Epoch__60 m s n1) (inv_Epoch__61 m s n1)) 
 (ite inv_b186 
 (held m s (inv_Node__81 m s n1)) 
 (ite inv_b187 
 (transfer m s (inv_Epoch__62 m s n1) (inv_Node__82 m s n1)) 
 (ite inv_b188 
 (locked m s (inv_Epoch__63 m s n1) (inv_Node__83 m s n1)) 
 (ite inv_b189 
 (= n1 (first m)) 
 (ite inv_b190 
 (= (zero m) (one m)) 
 (ite inv_b191 
 (= (zero m) (ep m s (inv_Node__84 m s n1))) 
 (ite inv_b192 
 (= (one m) (ep m s (inv_Node__85 m s n1))) 
 (ite inv_b193 
 (and (inv_Atom_113 m s n1) (inv_Atom_114 m s n1)) 
 (ite inv_b194 
 (or (inv_Atom_115 m s n1) (inv_Atom_116 m s n1)) 
 (ite inv_b195 
 (=> (inv_Atom_117 m s n1) (inv_Atom_118 m s n1)) 
 (not (inv_Atom_119 m s n1)))))))))))))
)
(define-fun inv_Atom_6 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b48 
 (le m (inv_Epoch__16 m s n1) (inv_Epoch__17 m s n1)) 
 (ite inv_b49 
 (held m s (inv_Node__20 m s n1)) 
 (ite inv_b50 
 (transfer m s (inv_Epoch__18 m s n1) (inv_Node__21 m s n1)) 
 (ite inv_b51 
 (locked m s (inv_Epoch__19 m s n1) (inv_Node__22 m s n1)) 
 (ite inv_b52 
 (= n1 (first m)) 
 (ite inv_b53 
 (= (zero m) (one m)) 
 (ite inv_b54 
 (= (zero m) (ep m s (inv_Node__23 m s n1))) 
 (ite inv_b55 
 (= (one m) (ep m s (inv_Node__24 m s n1))) 
 (ite inv_b56 
 (and (inv_Atom_36 m s n1) (inv_Atom_37 m s n1)) 
 (ite inv_b57 
 (or (inv_Atom_38 m s n1) (inv_Atom_39 m s n1)) 
 (ite inv_b58 
 (=> (inv_Atom_40 m s n1) (inv_Atom_41 m s n1)) 
 (not (inv_Atom_42 m s n1)))))))))))))
)
(define-fun inv_Atom_133 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1293 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__97 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1564 
 n1 
 (first m))
)
(define-fun inv_Node__15 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b587 
 n1 
 (first m))
)
(define-fun inv_Atom_98 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b1519 
 (= n1 (first m)) 
 (= (zero m) (one m)))
)
(define-fun inv_Node__95 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b1641 
 n1 
 (first m))
)
(define-fun inv_Atom_33 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b216 
 (le m (inv_Epoch__68 m s n1) (inv_Epoch__69 m s n1)) 
 (ite inv_b217 
 (held m s (inv_Node__94 m s n1)) 
 (ite inv_b218 
 (transfer m s (inv_Epoch__70 m s n1) (inv_Node__95 m s n1)) 
 (ite inv_b219 
 (locked m s (inv_Epoch__71 m s n1) (inv_Node__96 m s n1)) 
 (ite inv_b220 
 (= n1 (first m)) 
 (ite inv_b221 
 (= (zero m) (one m)) 
 (ite inv_b222 
 (= (zero m) (ep m s (inv_Node__97 m s n1))) 
 (ite inv_b223 
 (= (one m) (ep m s (inv_Node__98 m s n1))) 
 (ite inv_b224 
 (and (inv_Atom_127 m s n1) (inv_Atom_128 m s n1)) 
 (ite inv_b225 
 (or (inv_Atom_129 m s n1) (inv_Atom_130 m s n1)) 
 (ite inv_b226 
 (=> (inv_Atom_131 m s n1) (inv_Atom_132 m s n1)) 
 (not (inv_Atom_133 m s n1)))))))))))))
)
(define-fun inv_Atom_31 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b144 
 (le m (inv_Epoch__48 m s n1) (inv_Epoch__49 m s n1)) 
 (ite inv_b145 
 (held m s (inv_Node__63 m s n1)) 
 (ite inv_b146 
 (transfer m s (inv_Epoch__50 m s n1) (inv_Node__64 m s n1)) 
 (ite inv_b147 
 (locked m s (inv_Epoch__51 m s n1) (inv_Node__65 m s n1)) 
 (ite inv_b148 
 (= n1 (first m)) 
 (ite inv_b149 
 (= (zero m) (one m)) 
 (ite inv_b150 
 (= (zero m) (ep m s (inv_Node__66 m s n1))) 
 (ite inv_b151 
 (= (one m) (ep m s (inv_Node__67 m s n1))) 
 (ite inv_b152 
 (and (inv_Atom_92 m s n1) (inv_Atom_93 m s n1)) 
 (ite inv_b153 
 (or (inv_Atom_94 m s n1) (inv_Atom_95 m s n1)) 
 (ite inv_b154 
 (=> (inv_Atom_96 m s n1) (inv_Atom_97 m s n1)) 
 (not (inv_Atom_98 m s n1)))))))))))))
)
(define-fun inv_Atom_1 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b37 
 (le m (inv_Epoch__12 m s n1) (inv_Epoch__13 m s n1)) 
 (ite inv_b38 
 (held m s (inv_Node__15 m s n1)) 
 (ite inv_b39 
 (transfer m s (inv_Epoch__14 m s n1) (inv_Node__16 m s n1)) 
 (ite inv_b40 
 (locked m s (inv_Epoch__15 m s n1) (inv_Node__17 m s n1)) 
 (ite inv_b41 
 (= n1 (first m)) 
 (ite inv_b42 
 (= (zero m) (one m)) 
 (ite inv_b43 
 (= (zero m) (ep m s (inv_Node__18 m s n1))) 
 (ite inv_b44 
 (= (one m) (ep m s (inv_Node__19 m s n1))) 
 (ite inv_b45 
 (and (inv_Atom_29 m s n1) (inv_Atom_30 m s n1)) 
 (ite inv_b46 
 (or (inv_Atom_31 m s n1) (inv_Atom_32 m s n1)) 
 (ite inv_b47 
 (=> (inv_Atom_33 m s n1) (inv_Atom_34 m s n1)) 
 (not (inv_Atom_35 m s n1)))))))))))))
)
(define-fun inv_Start_0 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b0 
 (inv_Atom_0 m s n1) 
 (ite inv_b1 
 (and (inv_Atom_1 m s n1) (inv_Atom_2 m s n1)) 
 (ite inv_b2 
 (or (inv_Atom_3 m s n1) (inv_Atom_4 m s n1)) 
 (ite inv_b3 
 (=> (inv_Atom_5 m s n1) (inv_Atom_6 m s n1)) 
 (not (inv_Atom_7 m s n1))))))
)

;Function to be synthesised
(define-fun inv ((m ModelId) (s StateId) (n1 Node)) Bool (inv_Start_0 m s n1))
; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.PositiveCEX'>)
; <invar_synth.utils.qexpr.QForAll object at 0x7fba690975e0>
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
;  Not(ForAll(Bool_1, False))]
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
;   Epoch!val!1)
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
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
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!2)
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0)))
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   false)
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (and (inv Model_0_pos init Node!val!0)))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.PositiveCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fba6901e610>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Node_1,
;         ForAll(Epoch_1,
;                And(held(Model_2_pos, init, Node_1) ==
;                    (Node_1 == first(Model_2_pos)),
;                    Implies(Node_1 != first(Model_2_pos),
;                            ep(Model_2_pos, init, Node_1) ==
;                            zero(Model_2_pos)),
;                    ep(Model_2_pos, init, first(Model_2_pos)) ==
;                    one(Model_2_pos),
;                    transfer(Model_2_pos,
;                             init,
;                             Epoch_1,
;                             Node_1) ==
;                    False,
;                    locked(Model_2_pos,
;                           init,
;                           Epoch_1,
;                           Node_1) ==
;                    False))),
;  ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_2_pos, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_2_pos,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_2_pos,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_2_pos,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_2_pos,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_2_pos,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_2_pos,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_2_pos,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_2_pos,
;                              zero(Model_2_pos),
;                              Epoch_1),
;                           one(Model_2_pos) !=
;                           zero(Model_2_pos))))),
;  Not(ForAll(Node_1, held(Model_2_pos, init, Node_1)))]
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
; (define-fun Model_2_pos () ModelId
;   ModelId!val!0)
; (define-fun init () StateId
;   StateId!val!0)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (ite (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!1))
;     Epoch!val!1
;     Epoch!val!2))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
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
(assert (and (inv Model_2_pos init Node!val!0) (inv Model_2_pos init Node!val!1)))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.PositiveCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fba68edbfa0>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Node_1,
;         ForAll(Epoch_1,
;                And(held(Model_104_pos, init, Node_1) ==
;                    (Node_1 == first(Model_104_pos)),
;                    Implies(Node_1 != first(Model_104_pos),
;                            ep(Model_104_pos, init, Node_1) ==
;                            zero(Model_104_pos)),
;                    ep(Model_104_pos,
;                       init,
;                       first(Model_104_pos)) ==
;                    one(Model_104_pos),
;                    transfer(Model_104_pos,
;                             init,
;                             Epoch_1,
;                             Node_1) ==
;                    False,
;                    locked(Model_104_pos,
;                           init,
;                           Epoch_1,
;                           Node_1) ==
;                    False))),
;  ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_104_pos,
;                              Epoch_1,
;                              Epoch_1),
;                           Implies(And(le(Model_104_pos,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_104_pos,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_104_pos,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_104_pos,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_104_pos,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_104_pos,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_104_pos,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_104_pos,
;                              zero(Model_104_pos),
;                              Epoch_1),
;                           one(Model_104_pos) !=
;                           zero(Model_104_pos))))),
;  Not(ForAll(Epoch_1,
;             Or(Not(le(Model_104_pos,
;                       Epoch_1,
;                       one(Model_104_pos))),
;                Epoch_1 == one(Model_104_pos),
;                Epoch_1 == zero(Model_104_pos))))]
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
; (define-fun Model_104_pos () ModelId
;   ModelId!val!0)
; (define-fun init () StateId
;   StateId!val!0)
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
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
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   Epoch!val!1)
; (define-fun first ((x!0 ModelId)) Node
;   Node!val!0)
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0)))
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   false)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   false)
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!2)
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (and (inv Model_104_pos init Node!val!0)))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.PositiveCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fba7f40c760>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Node_1,
;         ForAll(Epoch_1,
;                And(held(Model_145_pos, init, Node_1) ==
;                    (Node_1 == first(Model_145_pos)),
;                    Implies(Node_1 != first(Model_145_pos),
;                            ep(Model_145_pos, init, Node_1) ==
;                            zero(Model_145_pos)),
;                    ep(Model_145_pos,
;                       init,
;                       first(Model_145_pos)) ==
;                    one(Model_145_pos),
;                    transfer(Model_145_pos,
;                             init,
;                             Epoch_1,
;                             Node_1) ==
;                    False,
;                    locked(Model_145_pos,
;                           init,
;                           Epoch_1,
;                           Node_1) ==
;                    False))),
;  ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_145_pos,
;                              Epoch_1,
;                              Epoch_1),
;                           Implies(And(le(Model_145_pos,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_145_pos,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_145_pos,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_145_pos,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_145_pos,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_145_pos,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_145_pos,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_145_pos,
;                              zero(Model_145_pos),
;                              Epoch_1),
;                           one(Model_145_pos) !=
;                           zero(Model_145_pos))))),
;  Not(ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Node_1 == first(Model_145_pos),
;                       Epoch_1 == zero(Model_145_pos),
;                       le(Model_145_pos,
;                          one(Model_145_pos),
;                          Epoch_1)))))]
;;;;;;;; Counter example generation constraints end ;;;;;;;;
;;;;;;;; Counter example model description: ;;;;;;;;
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
; ;; universe for ModelId:
; ;;   ModelId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun ModelId!val!0 () ModelId)
; ;; cardinality constraint:
; (forall ((x ModelId)) (= x ModelId!val!0))
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
; ;; universe for StateId:
; ;;   StateId!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun StateId!val!0 () StateId)
; ;; cardinality constraint:
; (forall ((x StateId)) (= x StateId!val!0))
; ;; -----------
; (define-fun Model_145_pos () ModelId
;   ModelId!val!0)
; (define-fun init () StateId
;   StateId!val!0)
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!0) (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))))
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (ite (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!1))
;     Epoch!val!2
;     Epoch!val!1))
; (define-fun first ((x!0 ModelId)) Node
;   Node!val!1)
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!1)))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!2)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   false)
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   false)
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (and (inv Model_145_pos init Node!val!0) (inv Model_145_pos init Node!val!1)))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fba7f38a310>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_213_ice,
;                              Epoch_1,
;                              Epoch_1),
;                           Implies(And(le(Model_213_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_213_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_213_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_213_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_213_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_213_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_213_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_213_ice,
;                              zero(Model_213_ice),
;                              Epoch_1),
;                           one(Model_213_ice) !=
;                           zero(Model_213_ice))))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_213_ice,
;                          S1,
;                          zero(Model_213_ice),
;                          first(Model_213_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_213_ice) ==
;                 ep(Model_213_ice, S1, first(Model_213_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_213_ice,
;                        S1,
;                        zero(Model_213_ice),
;                        first(Model_213_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_213_ice,
;                          S1,
;                          zero(Model_213_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_213_ice,
;                        S1,
;                        zero(Model_213_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_213_ice,
;                           S1,
;                           one(Model_213_ice),
;                           Node_1)),
;                transfer(Model_213_ice,
;                         S1,
;                         one(Model_213_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_213_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_213_ice))),
;                transfer(Model_213_ice,
;                         S1,
;                         Epoch_1,
;                         first(Model_213_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_213_ice,
;                       S1,
;                       first(Model_213_ice))),
;                le(Model_213_ice,
;                   one(Model_213_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_213_ice,
;                        S1,
;                        one(Model_213_ice),
;                        first(Model_213_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_213_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_213_ice))),
;                le(Model_213_ice,
;                   one(Model_213_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_213_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_213_ice,
;                                S1,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Not(And(held(Model_213_ice, S1, Node_1),
;                     zero(Model_213_ice) ==
;                     ep(Model_213_ice, S1, Node_1)))),
;      ForAll(Node_1,
;             Or(Not(Or(Not(one(Model_213_ice) ==
;                           ep(Model_213_ice,
;                              S1,
;                              first(Model_213_ice))),
;                       zero(Model_213_ice) ==
;                       one(Model_213_ice))),
;                transfer(Model_213_ice,
;                         S1,
;                         ep(Model_213_ice,
;                            S1,
;                            first(Model_213_ice)),
;                         first(Model_213_ice)))),
;      ForAll(Node_1,
;             Or(one(Model_213_ice) ==
;                ep(Model_213_ice, S1, first(Model_213_ice)),
;                locked(Model_213_ice,
;                       S1,
;                       ep(Model_213_ice,
;                          S1,
;                          first(Model_213_ice)),
;                       first(Model_213_ice)))),
;      ForAll(Node_1,
;             Not(And(locked(Model_213_ice,
;                            S1,
;                            one(Model_213_ice),
;                            Node_1),
;                     zero(Model_213_ice) ==
;                     ep(Model_213_ice, S1, Node_1))))),
;  ForAll(Node_1,
;         held(Model_213_ice, S1, first(Model_213_ice))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_213_ice,
;                          S2,
;                          zero(Model_213_ice),
;                          first(Model_213_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_213_ice) ==
;                 ep(Model_213_ice, S2, first(Model_213_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_213_ice,
;                        S2,
;                        zero(Model_213_ice),
;                        first(Model_213_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_213_ice,
;                          S2,
;                          zero(Model_213_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_213_ice,
;                        S2,
;                        zero(Model_213_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_213_ice,
;                           S2,
;                           one(Model_213_ice),
;                           Node_1)),
;                transfer(Model_213_ice,
;                         S2,
;                         one(Model_213_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_213_ice,
;                           S2,
;                           Epoch_1,
;                           first(Model_213_ice))),
;                transfer(Model_213_ice,
;                         S2,
;                         Epoch_1,
;                         first(Model_213_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_213_ice,
;                       S2,
;                       first(Model_213_ice))),
;                le(Model_213_ice,
;                   one(Model_213_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_213_ice,
;                        S2,
;                        one(Model_213_ice),
;                        first(Model_213_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_213_ice,
;                           S2,
;                           Epoch_1,
;                           first(Model_213_ice))),
;                le(Model_213_ice,
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
; ;;   Epoch!val!0 Epoch!val!2 Epoch!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Epoch!val!0 () Epoch)
; (declare-fun Epoch!val!2 () Epoch)
; (declare-fun Epoch!val!1 () Epoch)
; ;; cardinality constraint:
; (forall ((x Epoch)) (or (= x Epoch!val!0) (= x Epoch!val!2) (= x Epoch!val!1)))
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
; (define-fun Model_213_ice () ModelId
;   ModelId!val!0)
; (define-fun S1 () StateId
;   StateId!val!0)
; (define-fun S2 () StateId
;   StateId!val!1)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (ite (or (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!0))
;            (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (= x!2 Node!val!0)))
;        Epoch!val!2
;        Epoch!val!1))
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
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!2))))
; (define-fun first ((x!0 ModelId)) Node
;   Node!val!0)
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!0)))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!1)
;        (= x!2 Epoch!val!1)
;        (not (= x!2 Epoch!val!2))
;        (not (= x!3 Node!val!0))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!0)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!2)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   false)
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (or (not (and (inv Model_213_ice S1 Node!val!0)
              (inv Model_213_ice S1 Node!val!1)))
    (and (and (inv Model_213_ice S1 Node!val!0)
              (inv Model_213_ice S1 Node!val!1))
         (inv Model_213_ice S2 Node!val!0)
         (inv Model_213_ice S2 Node!val!1))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fba7f28f640>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_214_ice,
;                              Epoch_1,
;                              Epoch_1),
;                           Implies(And(le(Model_214_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_214_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_214_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_214_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_214_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_214_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_214_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_214_ice,
;                              zero(Model_214_ice),
;                              Epoch_1),
;                           one(Model_214_ice) !=
;                           zero(Model_214_ice))))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_214_ice,
;                          S1,
;                          zero(Model_214_ice),
;                          first(Model_214_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_214_ice) ==
;                 ep(Model_214_ice, S1, first(Model_214_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_214_ice,
;                        S1,
;                        zero(Model_214_ice),
;                        first(Model_214_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_214_ice,
;                          S1,
;                          zero(Model_214_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_214_ice,
;                        S1,
;                        zero(Model_214_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_214_ice,
;                           S1,
;                           one(Model_214_ice),
;                           Node_1)),
;                transfer(Model_214_ice,
;                         S1,
;                         one(Model_214_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_214_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_214_ice))),
;                transfer(Model_214_ice,
;                         S1,
;                         Epoch_1,
;                         first(Model_214_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_214_ice,
;                       S1,
;                       first(Model_214_ice))),
;                le(Model_214_ice,
;                   one(Model_214_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_214_ice,
;                        S1,
;                        one(Model_214_ice),
;                        first(Model_214_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_214_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_214_ice))),
;                le(Model_214_ice,
;                   one(Model_214_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_214_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_214_ice,
;                                S1,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Not(And(held(Model_214_ice, S1, Node_1),
;                     zero(Model_214_ice) ==
;                     ep(Model_214_ice, S1, Node_1)))),
;      ForAll(Node_1,
;             Or(Not(Or(Not(one(Model_214_ice) ==
;                           ep(Model_214_ice,
;                              S1,
;                              first(Model_214_ice))),
;                       zero(Model_214_ice) ==
;                       one(Model_214_ice))),
;                transfer(Model_214_ice,
;                         S1,
;                         ep(Model_214_ice,
;                            S1,
;                            first(Model_214_ice)),
;                         first(Model_214_ice)))),
;      ForAll(Node_1,
;             Or(one(Model_214_ice) ==
;                ep(Model_214_ice, S1, first(Model_214_ice)),
;                locked(Model_214_ice,
;                       S1,
;                       ep(Model_214_ice,
;                          S1,
;                          first(Model_214_ice)),
;                       first(Model_214_ice)))),
;      ForAll(Node_1,
;             Not(And(locked(Model_214_ice,
;                            S1,
;                            one(Model_214_ice),
;                            Node_1),
;                     zero(Model_214_ice) ==
;                     ep(Model_214_ice, S1, Node_1))))),
;  ForAll(Node_1,
;         one(Model_214_ice) ==
;         ep(Model_214_ice, S1, first(Model_214_ice))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_214_ice,
;                          S2,
;                          zero(Model_214_ice),
;                          first(Model_214_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_214_ice) ==
;                 ep(Model_214_ice, S2, first(Model_214_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_214_ice,
;                        S2,
;                        zero(Model_214_ice),
;                        first(Model_214_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_214_ice,
;                          S2,
;                          zero(Model_214_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_214_ice,
;                        S2,
;                        zero(Model_214_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_214_ice,
;                           S2,
;                           one(Model_214_ice),
;                           Node_1)),
;                transfer(Model_214_ice,
;                         S2,
;                         one(Model_214_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_214_ice,
;                           S2,
;                           Epoch_1,
;                           first(Model_214_ice))),
;                transfer(Model_214_ice,
;                         S2,
;                         Epoch_1,
;                         first(Model_214_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_214_ice,
;                       S2,
;                       first(Model_214_ice))),
;                le(Model_214_ice,
;                   one(Model_214_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_214_ice,
;                        S2,
;                        one(Model_214_ice),
;                        first(Model_214_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_214_ice,
;                           S2,
;                           Epoch_1,
;                           first(Model_214_ice))),
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
; ;;   Epoch!val!0 Epoch!val!2 Epoch!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Epoch!val!0 () Epoch)
; (declare-fun Epoch!val!2 () Epoch)
; (declare-fun Epoch!val!1 () Epoch)
; ;; cardinality constraint:
; (forall ((x Epoch)) (or (= x Epoch!val!0) (= x Epoch!val!2) (= x Epoch!val!1)))
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
;   StateId!val!1)
; (define-fun Model_214_ice () ModelId
;   ModelId!val!0)
; (define-fun S1 () StateId
;   StateId!val!0)
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!2) (= x!2 Epoch!val!2))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!2))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!2))))
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (ite (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1))
;        Epoch!val!2
;        (ite (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0))
;             Epoch!val!1
;             Epoch!val!0)))
; (define-fun first ((x!0 ModelId)) Node
;   Node!val!0)
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1)))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Epoch!val!2))
;       (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (= x!2 Epoch!val!2))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!0)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (= x!2 Epoch!val!2)))
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (or (not (and (inv Model_214_ice S1 Node!val!0)))
    (and (and (inv Model_214_ice S1 Node!val!0))
         (inv Model_214_ice S2 Node!val!0))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fba7f3d4550>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_215_ice,
;                              Epoch_1,
;                              Epoch_1),
;                           Implies(And(le(Model_215_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_215_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_215_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_215_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_215_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_215_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_215_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_215_ice,
;                              zero(Model_215_ice),
;                              Epoch_1),
;                           one(Model_215_ice) !=
;                           zero(Model_215_ice))))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_215_ice,
;                          S1,
;                          zero(Model_215_ice),
;                          first(Model_215_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_215_ice) ==
;                 ep(Model_215_ice, S1, first(Model_215_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_215_ice,
;                        S1,
;                        zero(Model_215_ice),
;                        first(Model_215_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_215_ice,
;                          S1,
;                          zero(Model_215_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_215_ice,
;                        S1,
;                        zero(Model_215_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_215_ice,
;                           S1,
;                           one(Model_215_ice),
;                           Node_1)),
;                transfer(Model_215_ice,
;                         S1,
;                         one(Model_215_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_215_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_215_ice))),
;                transfer(Model_215_ice,
;                         S1,
;                         Epoch_1,
;                         first(Model_215_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_215_ice,
;                       S1,
;                       first(Model_215_ice))),
;                le(Model_215_ice,
;                   one(Model_215_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_215_ice,
;                        S1,
;                        one(Model_215_ice),
;                        first(Model_215_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_215_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_215_ice))),
;                le(Model_215_ice,
;                   one(Model_215_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_215_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_215_ice,
;                                S1,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Not(And(held(Model_215_ice, S1, Node_1),
;                     zero(Model_215_ice) ==
;                     ep(Model_215_ice, S1, Node_1)))),
;      ForAll(Node_1,
;             Or(Not(Or(Not(one(Model_215_ice) ==
;                           ep(Model_215_ice,
;                              S1,
;                              first(Model_215_ice))),
;                       zero(Model_215_ice) ==
;                       one(Model_215_ice))),
;                transfer(Model_215_ice,
;                         S1,
;                         ep(Model_215_ice,
;                            S1,
;                            first(Model_215_ice)),
;                         first(Model_215_ice)))),
;      ForAll(Node_1,
;             Or(one(Model_215_ice) ==
;                ep(Model_215_ice, S1, first(Model_215_ice)),
;                locked(Model_215_ice,
;                       S1,
;                       ep(Model_215_ice,
;                          S1,
;                          first(Model_215_ice)),
;                       first(Model_215_ice)))),
;      ForAll(Node_1,
;             Not(And(locked(Model_215_ice,
;                            S1,
;                            one(Model_215_ice),
;                            Node_1),
;                     zero(Model_215_ice) ==
;                     ep(Model_215_ice, S1, Node_1))))),
;  ForAll(Node_1,
;         Not(locked(Model_215_ice,
;                    S1,
;                    one(Model_215_ice),
;                    Node_1))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_215_ice,
;                          S2,
;                          zero(Model_215_ice),
;                          first(Model_215_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_215_ice) ==
;                 ep(Model_215_ice, S2, first(Model_215_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_215_ice,
;                        S2,
;                        zero(Model_215_ice),
;                        first(Model_215_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_215_ice,
;                          S2,
;                          zero(Model_215_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_215_ice,
;                        S2,
;                        zero(Model_215_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_215_ice,
;                           S2,
;                           one(Model_215_ice),
;                           Node_1)),
;                transfer(Model_215_ice,
;                         S2,
;                         one(Model_215_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_215_ice,
;                           S2,
;                           Epoch_1,
;                           first(Model_215_ice))),
;                transfer(Model_215_ice,
;                         S2,
;                         Epoch_1,
;                         first(Model_215_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_215_ice,
;                       S2,
;                       first(Model_215_ice))),
;                le(Model_215_ice,
;                   one(Model_215_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_215_ice,
;                        S2,
;                        one(Model_215_ice),
;                        first(Model_215_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_215_ice,
;                           S2,
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
; (define-fun Model_215_ice () ModelId
;   ModelId!val!0)
; (define-fun S1 () StateId
;   StateId!val!0)
; (define-fun S2 () StateId
;   StateId!val!1)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (ite (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (= x!2 Node!val!1))
;     Epoch!val!3
;   (ite (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!1))
;     Epoch!val!1
;     Epoch!val!2)))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!0) (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
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
;            (= x!1 Epoch!val!0)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!1)
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
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))))
; (define-fun first ((x!0 ModelId)) Node
;   Node!val!0)
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (= x!2 Node!val!1)))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!3 Node!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!3 Node!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!0)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!3)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!3 Node!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!3 Node!val!1)))))
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (or (not (and (inv Model_215_ice S1 Node!val!0)
              (inv Model_215_ice S1 Node!val!1)))
    (and (and (inv Model_215_ice S1 Node!val!0)
              (inv Model_215_ice S1 Node!val!1))
         (inv Model_215_ice S2 Node!val!0)
         (inv Model_215_ice S2 Node!val!1))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fba68d5ac10>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_216_ice,
;                              Epoch_1,
;                              Epoch_1),
;                           Implies(And(le(Model_216_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_216_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_216_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_216_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_216_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_216_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_216_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_216_ice,
;                              zero(Model_216_ice),
;                              Epoch_1),
;                           one(Model_216_ice) !=
;                           zero(Model_216_ice))))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_216_ice,
;                          S1,
;                          zero(Model_216_ice),
;                          first(Model_216_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_216_ice) ==
;                 ep(Model_216_ice, S1, first(Model_216_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_216_ice,
;                        S1,
;                        zero(Model_216_ice),
;                        first(Model_216_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_216_ice,
;                          S1,
;                          zero(Model_216_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_216_ice,
;                        S1,
;                        zero(Model_216_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_216_ice,
;                           S1,
;                           one(Model_216_ice),
;                           Node_1)),
;                transfer(Model_216_ice,
;                         S1,
;                         one(Model_216_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_216_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_216_ice))),
;                transfer(Model_216_ice,
;                         S1,
;                         Epoch_1,
;                         first(Model_216_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_216_ice,
;                       S1,
;                       first(Model_216_ice))),
;                le(Model_216_ice,
;                   one(Model_216_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_216_ice,
;                        S1,
;                        one(Model_216_ice),
;                        first(Model_216_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_216_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_216_ice))),
;                le(Model_216_ice,
;                   one(Model_216_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_216_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_216_ice,
;                                S1,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Not(And(held(Model_216_ice, S1, Node_1),
;                     zero(Model_216_ice) ==
;                     ep(Model_216_ice, S1, Node_1)))),
;      ForAll(Node_1,
;             Or(Not(Or(Not(one(Model_216_ice) ==
;                           ep(Model_216_ice,
;                              S1,
;                              first(Model_216_ice))),
;                       zero(Model_216_ice) ==
;                       one(Model_216_ice))),
;                transfer(Model_216_ice,
;                         S1,
;                         ep(Model_216_ice,
;                            S1,
;                            first(Model_216_ice)),
;                         first(Model_216_ice)))),
;      ForAll(Node_1,
;             Or(one(Model_216_ice) ==
;                ep(Model_216_ice, S1, first(Model_216_ice)),
;                locked(Model_216_ice,
;                       S1,
;                       ep(Model_216_ice,
;                          S1,
;                          first(Model_216_ice)),
;                       first(Model_216_ice)))),
;      ForAll(Node_1,
;             Not(And(locked(Model_216_ice,
;                            S1,
;                            one(Model_216_ice),
;                            Node_1),
;                     zero(Model_216_ice) ==
;                     ep(Model_216_ice, S1, Node_1))))),
;  ForAll(Node_1,
;         Or(zero(Model_216_ice) ==
;            ep(Model_216_ice, S1, Node_1),
;            Node_1 == first(Model_216_ice))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_216_ice,
;                          S2,
;                          zero(Model_216_ice),
;                          first(Model_216_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_216_ice) ==
;                 ep(Model_216_ice, S2, first(Model_216_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_216_ice,
;                        S2,
;                        zero(Model_216_ice),
;                        first(Model_216_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_216_ice,
;                          S2,
;                          zero(Model_216_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_216_ice,
;                        S2,
;                        zero(Model_216_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_216_ice,
;                           S2,
;                           one(Model_216_ice),
;                           Node_1)),
;                transfer(Model_216_ice,
;                         S2,
;                         one(Model_216_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_216_ice,
;                           S2,
;                           Epoch_1,
;                           first(Model_216_ice))),
;                transfer(Model_216_ice,
;                         S2,
;                         Epoch_1,
;                         first(Model_216_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_216_ice,
;                       S2,
;                       first(Model_216_ice))),
;                le(Model_216_ice,
;                   one(Model_216_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_216_ice,
;                        S2,
;                        one(Model_216_ice),
;                        first(Model_216_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_216_ice,
;                           S2,
;                           Epoch_1,
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
; ;;   Epoch!val!0 Epoch!val!2 Epoch!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Epoch!val!0 () Epoch)
; (declare-fun Epoch!val!2 () Epoch)
; (declare-fun Epoch!val!1 () Epoch)
; ;; cardinality constraint:
; (forall ((x Epoch)) (or (= x Epoch!val!0) (= x Epoch!val!2) (= x Epoch!val!1)))
; ;; -----------
; (define-fun S1 () StateId
;   StateId!val!0)
; (define-fun S2 () StateId
;   StateId!val!1)
; (define-fun Model_216_ice () ModelId
;   ModelId!val!0)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!1)
;        (= x!2 Epoch!val!0)
;        (not (= x!2 Epoch!val!2))
;        (= x!3 Node!val!1)))
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (ite (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (= x!2 Node!val!1))
;     Epoch!val!0
;   (ite (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!1))
;     Epoch!val!1
;     Epoch!val!2)))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!2) (= x!2 Epoch!val!2))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!2))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!2))))
; (define-fun first ((x!0 ModelId)) Node
;   Node!val!0)
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (= x!2 Node!val!1)))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!2))
;            (= x!3 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!2))
;            (= x!3 Node!val!1))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!2)
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (or (not (and (inv Model_216_ice S1 Node!val!0)
              (inv Model_216_ice S1 Node!val!1)))
    (and (and (inv Model_216_ice S1 Node!val!0)
              (inv Model_216_ice S1 Node!val!1))
         (inv Model_216_ice S2 Node!val!0)
         (inv Model_216_ice S2 Node!val!1))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fba7f38aa60>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_217_ice,
;                              Epoch_1,
;                              Epoch_1),
;                           Implies(And(le(Model_217_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_217_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_217_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_217_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_217_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_217_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_217_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_217_ice,
;                              zero(Model_217_ice),
;                              Epoch_1),
;                           one(Model_217_ice) !=
;                           zero(Model_217_ice))))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_217_ice,
;                          S1,
;                          zero(Model_217_ice),
;                          first(Model_217_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_217_ice) ==
;                 ep(Model_217_ice, S1, first(Model_217_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_217_ice,
;                        S1,
;                        zero(Model_217_ice),
;                        first(Model_217_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_217_ice,
;                          S1,
;                          zero(Model_217_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_217_ice,
;                        S1,
;                        zero(Model_217_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_217_ice,
;                           S1,
;                           one(Model_217_ice),
;                           Node_1)),
;                transfer(Model_217_ice,
;                         S1,
;                         one(Model_217_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_217_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_217_ice))),
;                transfer(Model_217_ice,
;                         S1,
;                         Epoch_1,
;                         first(Model_217_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_217_ice,
;                       S1,
;                       first(Model_217_ice))),
;                le(Model_217_ice,
;                   one(Model_217_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_217_ice,
;                        S1,
;                        one(Model_217_ice),
;                        first(Model_217_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_217_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_217_ice))),
;                le(Model_217_ice,
;                   one(Model_217_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_217_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_217_ice,
;                                S1,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Not(And(held(Model_217_ice, S1, Node_1),
;                     zero(Model_217_ice) ==
;                     ep(Model_217_ice, S1, Node_1)))),
;      ForAll(Node_1,
;             Or(Not(Or(Not(one(Model_217_ice) ==
;                           ep(Model_217_ice,
;                              S1,
;                              first(Model_217_ice))),
;                       zero(Model_217_ice) ==
;                       one(Model_217_ice))),
;                transfer(Model_217_ice,
;                         S1,
;                         ep(Model_217_ice,
;                            S1,
;                            first(Model_217_ice)),
;                         first(Model_217_ice)))),
;      ForAll(Node_1,
;             Or(one(Model_217_ice) ==
;                ep(Model_217_ice, S1, first(Model_217_ice)),
;                locked(Model_217_ice,
;                       S1,
;                       ep(Model_217_ice,
;                          S1,
;                          first(Model_217_ice)),
;                       first(Model_217_ice)))),
;      ForAll(Node_1,
;             Not(And(locked(Model_217_ice,
;                            S1,
;                            one(Model_217_ice),
;                            Node_1),
;                     zero(Model_217_ice) ==
;                     ep(Model_217_ice, S1, Node_1))))),
;  ForAll(Node_1,
;         Not(transfer(Model_217_ice,
;                      S1,
;                      one(Model_217_ice),
;                      first(Model_217_ice)))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_217_ice,
;                          S2,
;                          zero(Model_217_ice),
;                          first(Model_217_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_217_ice) ==
;                 ep(Model_217_ice, S2, first(Model_217_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_217_ice,
;                        S2,
;                        zero(Model_217_ice),
;                        first(Model_217_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_217_ice,
;                          S2,
;                          zero(Model_217_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_217_ice,
;                        S2,
;                        zero(Model_217_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_217_ice,
;                           S2,
;                           one(Model_217_ice),
;                           Node_1)),
;                transfer(Model_217_ice,
;                         S2,
;                         one(Model_217_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_217_ice,
;                           S2,
;                           Epoch_1,
;                           first(Model_217_ice))),
;                transfer(Model_217_ice,
;                         S2,
;                         Epoch_1,
;                         first(Model_217_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_217_ice,
;                       S2,
;                       first(Model_217_ice))),
;                le(Model_217_ice,
;                   one(Model_217_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_217_ice,
;                        S2,
;                        one(Model_217_ice),
;                        first(Model_217_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_217_ice,
;                           S2,
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
; ;;   Epoch!val!0 Epoch!val!2 Epoch!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Epoch!val!0 () Epoch)
; (declare-fun Epoch!val!2 () Epoch)
; (declare-fun Epoch!val!1 () Epoch)
; ;; cardinality constraint:
; (forall ((x Epoch)) (or (= x Epoch!val!0) (= x Epoch!val!2) (= x Epoch!val!1)))
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
;   StateId!val!0)
; (define-fun S2 () StateId
;   StateId!val!1)
; (define-fun Model_217_ice () ModelId
;   ModelId!val!0)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (ite (or (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!0))
;            (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (= x!2 Node!val!0)))
;        Epoch!val!2
;        Epoch!val!1))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
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
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!1))))
; (define-fun first ((x!0 ModelId)) Node
;   Node!val!1)
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!0)))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!1)
;        (= x!2 Epoch!val!1)
;        (not (= x!3 Node!val!0))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!0)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   false)
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (or (not (and (inv Model_217_ice S1 Node!val!0)
              (inv Model_217_ice S1 Node!val!1)))
    (and (and (inv Model_217_ice S1 Node!val!0)
              (inv Model_217_ice S1 Node!val!1))
         (inv Model_217_ice S2 Node!val!0)
         (inv Model_217_ice S2 Node!val!1))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fba7f3d9610>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_218_ice,
;                              Epoch_1,
;                              Epoch_1),
;                           Implies(And(le(Model_218_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_218_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_218_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_218_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_218_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_218_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_218_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_218_ice,
;                              zero(Model_218_ice),
;                              Epoch_1),
;                           one(Model_218_ice) !=
;                           zero(Model_218_ice))))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_218_ice,
;                          S1,
;                          zero(Model_218_ice),
;                          first(Model_218_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_218_ice) ==
;                 ep(Model_218_ice, S1, first(Model_218_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_218_ice,
;                        S1,
;                        zero(Model_218_ice),
;                        first(Model_218_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_218_ice,
;                          S1,
;                          zero(Model_218_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_218_ice,
;                        S1,
;                        zero(Model_218_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_218_ice,
;                           S1,
;                           one(Model_218_ice),
;                           Node_1)),
;                transfer(Model_218_ice,
;                         S1,
;                         one(Model_218_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_218_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_218_ice))),
;                transfer(Model_218_ice,
;                         S1,
;                         Epoch_1,
;                         first(Model_218_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_218_ice,
;                       S1,
;                       first(Model_218_ice))),
;                le(Model_218_ice,
;                   one(Model_218_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_218_ice,
;                        S1,
;                        one(Model_218_ice),
;                        first(Model_218_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_218_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_218_ice))),
;                le(Model_218_ice,
;                   one(Model_218_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_218_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_218_ice,
;                                S1,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Not(And(held(Model_218_ice, S1, Node_1),
;                     zero(Model_218_ice) ==
;                     ep(Model_218_ice, S1, Node_1)))),
;      ForAll(Node_1,
;             Or(Not(Or(Not(one(Model_218_ice) ==
;                           ep(Model_218_ice,
;                              S1,
;                              first(Model_218_ice))),
;                       zero(Model_218_ice) ==
;                       one(Model_218_ice))),
;                transfer(Model_218_ice,
;                         S1,
;                         ep(Model_218_ice,
;                            S1,
;                            first(Model_218_ice)),
;                         first(Model_218_ice)))),
;      ForAll(Node_1,
;             Or(one(Model_218_ice) ==
;                ep(Model_218_ice, S1, first(Model_218_ice)),
;                locked(Model_218_ice,
;                       S1,
;                       ep(Model_218_ice,
;                          S1,
;                          first(Model_218_ice)),
;                       first(Model_218_ice)))),
;      ForAll(Node_1,
;             Not(And(locked(Model_218_ice,
;                            S1,
;                            one(Model_218_ice),
;                            Node_1),
;                     zero(Model_218_ice) ==
;                     ep(Model_218_ice, S1, Node_1))))),
;  ForAll(Node_1,
;         Or(Not(locked(Model_218_ice,
;                       S1,
;                       one(Model_218_ice),
;                       Node_1)),
;            one(Model_218_ice) ==
;            ep(Model_218_ice, S1, Node_1))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_218_ice,
;                          S2,
;                          zero(Model_218_ice),
;                          first(Model_218_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_218_ice) ==
;                 ep(Model_218_ice, S2, first(Model_218_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_218_ice,
;                        S2,
;                        zero(Model_218_ice),
;                        first(Model_218_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_218_ice,
;                          S2,
;                          zero(Model_218_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_218_ice,
;                        S2,
;                        zero(Model_218_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_218_ice,
;                           S2,
;                           one(Model_218_ice),
;                           Node_1)),
;                transfer(Model_218_ice,
;                         S2,
;                         one(Model_218_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_218_ice,
;                           S2,
;                           Epoch_1,
;                           first(Model_218_ice))),
;                transfer(Model_218_ice,
;                         S2,
;                         Epoch_1,
;                         first(Model_218_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_218_ice,
;                       S2,
;                       first(Model_218_ice))),
;                le(Model_218_ice,
;                   one(Model_218_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_218_ice,
;                        S2,
;                        one(Model_218_ice),
;                        first(Model_218_ice)))),
;      ForAll(Epoch_1,
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
; ;;   Epoch!val!0 Epoch!val!2 Epoch!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Epoch!val!0 () Epoch)
; (declare-fun Epoch!val!2 () Epoch)
; (declare-fun Epoch!val!1 () Epoch)
; ;; cardinality constraint:
; (forall ((x Epoch)) (or (= x Epoch!val!0) (= x Epoch!val!2) (= x Epoch!val!1)))
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
; (define-fun Model_218_ice () ModelId
;   ModelId!val!0)
; (define-fun S1 () StateId
;   StateId!val!0)
; (define-fun S2 () StateId
;   StateId!val!1)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (ite (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (= x!2 Node!val!1))
;     Epoch!val!1
;     Epoch!val!2))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!0) (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))))
; (define-fun first ((x!0 ModelId)) Node
;   Node!val!0)
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (= x!2 Node!val!1)))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!0)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!2)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1))))
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (or (not (and (inv Model_218_ice S1 Node!val!0)
              (inv Model_218_ice S1 Node!val!1)))
    (and (and (inv Model_218_ice S1 Node!val!0)
              (inv Model_218_ice S1 Node!val!1))
         (inv Model_218_ice S2 Node!val!0)
         (inv Model_218_ice S2 Node!val!1))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fba7f29cdf0>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_219_ice,
;                              Epoch_1,
;                              Epoch_1),
;                           Implies(And(le(Model_219_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_219_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_219_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_219_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_219_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_219_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_219_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_219_ice,
;                              zero(Model_219_ice),
;                              Epoch_1),
;                           one(Model_219_ice) !=
;                           zero(Model_219_ice))))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_219_ice,
;                          S1,
;                          zero(Model_219_ice),
;                          first(Model_219_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_219_ice) ==
;                 ep(Model_219_ice, S1, first(Model_219_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_219_ice,
;                        S1,
;                        zero(Model_219_ice),
;                        first(Model_219_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_219_ice,
;                          S1,
;                          zero(Model_219_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_219_ice,
;                        S1,
;                        zero(Model_219_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_219_ice,
;                           S1,
;                           one(Model_219_ice),
;                           Node_1)),
;                transfer(Model_219_ice,
;                         S1,
;                         one(Model_219_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_219_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_219_ice))),
;                transfer(Model_219_ice,
;                         S1,
;                         Epoch_1,
;                         first(Model_219_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_219_ice,
;                       S1,
;                       first(Model_219_ice))),
;                le(Model_219_ice,
;                   one(Model_219_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_219_ice,
;                        S1,
;                        one(Model_219_ice),
;                        first(Model_219_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_219_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_219_ice))),
;                le(Model_219_ice,
;                   one(Model_219_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_219_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_219_ice,
;                                S1,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Not(And(held(Model_219_ice, S1, Node_1),
;                     zero(Model_219_ice) ==
;                     ep(Model_219_ice, S1, Node_1)))),
;      ForAll(Node_1,
;             Or(Not(Or(Not(one(Model_219_ice) ==
;                           ep(Model_219_ice,
;                              S1,
;                              first(Model_219_ice))),
;                       zero(Model_219_ice) ==
;                       one(Model_219_ice))),
;                transfer(Model_219_ice,
;                         S1,
;                         ep(Model_219_ice,
;                            S1,
;                            first(Model_219_ice)),
;                         first(Model_219_ice)))),
;      ForAll(Node_1,
;             Or(one(Model_219_ice) ==
;                ep(Model_219_ice, S1, first(Model_219_ice)),
;                locked(Model_219_ice,
;                       S1,
;                       ep(Model_219_ice,
;                          S1,
;                          first(Model_219_ice)),
;                       first(Model_219_ice)))),
;      ForAll(Node_1,
;             Not(And(locked(Model_219_ice,
;                            S1,
;                            one(Model_219_ice),
;                            Node_1),
;                     zero(Model_219_ice) ==
;                     ep(Model_219_ice, S1, Node_1))))),
;  ForAll(Node_1,
;         Or(Not(transfer(Model_219_ice,
;                         S1,
;                         one(Model_219_ice),
;                         Node_1)),
;            Node_1 == first(Model_219_ice))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_219_ice,
;                          S2,
;                          zero(Model_219_ice),
;                          first(Model_219_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_219_ice) ==
;                 ep(Model_219_ice, S2, first(Model_219_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_219_ice,
;                        S2,
;                        zero(Model_219_ice),
;                        first(Model_219_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_219_ice,
;                          S2,
;                          zero(Model_219_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_219_ice,
;                        S2,
;                        zero(Model_219_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_219_ice,
;                           S2,
;                           one(Model_219_ice),
;                           Node_1)),
;                transfer(Model_219_ice,
;                         S2,
;                         one(Model_219_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_219_ice,
;                           S2,
;                           Epoch_1,
;                           first(Model_219_ice))),
;                transfer(Model_219_ice,
;                         S2,
;                         Epoch_1,
;                         first(Model_219_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_219_ice,
;                       S2,
;                       first(Model_219_ice))),
;                le(Model_219_ice,
;                   one(Model_219_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_219_ice,
;                        S2,
;                        one(Model_219_ice),
;                        first(Model_219_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_219_ice,
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
; ;;   Epoch!val!0 Epoch!val!2 Epoch!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Epoch!val!0 () Epoch)
; (declare-fun Epoch!val!2 () Epoch)
; (declare-fun Epoch!val!1 () Epoch)
; ;; cardinality constraint:
; (forall ((x Epoch)) (or (= x Epoch!val!0) (= x Epoch!val!2) (= x Epoch!val!1)))
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
; (define-fun S1 () StateId
;   StateId!val!0)
; (define-fun S2 () StateId
;   StateId!val!1)
; (define-fun Model_219_ice () ModelId
;   ModelId!val!0)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (ite (or (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!1))
;            (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (= x!2 Node!val!1)))
;        Epoch!val!2
;        Epoch!val!1))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!1) (= x!2 Epoch!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!1))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!1))))
; (define-fun first ((x!0 ModelId)) Node
;   Node!val!0)
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!1)))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!1)
;        (= x!2 Epoch!val!1)
;        (not (= x!3 Node!val!0))
;        (not (= x!3 Node!val!1))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!0)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   false)
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_219_ice S1 Node!val!0)
                (inv Model_219_ice S1 Node!val!1)
                (inv Model_219_ice S1 Node!val!2))))
  (or (not a!1)
      (and a!1
           (inv Model_219_ice S2 Node!val!0)
           (inv Model_219_ice S2 Node!val!1)
           (inv Model_219_ice S2 Node!val!2)))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fba68d1bf70>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_220_ice,
;                              Epoch_1,
;                              Epoch_1),
;                           Implies(And(le(Model_220_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_220_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_220_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_220_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_220_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_220_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_220_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_220_ice,
;                              zero(Model_220_ice),
;                              Epoch_1),
;                           one(Model_220_ice) !=
;                           zero(Model_220_ice))))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_220_ice,
;                          S1,
;                          zero(Model_220_ice),
;                          first(Model_220_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_220_ice) ==
;                 ep(Model_220_ice, S1, first(Model_220_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_220_ice,
;                        S1,
;                        zero(Model_220_ice),
;                        first(Model_220_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_220_ice,
;                          S1,
;                          zero(Model_220_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_220_ice,
;                        S1,
;                        zero(Model_220_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_220_ice,
;                           S1,
;                           one(Model_220_ice),
;                           Node_1)),
;                transfer(Model_220_ice,
;                         S1,
;                         one(Model_220_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_220_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_220_ice))),
;                transfer(Model_220_ice,
;                         S1,
;                         Epoch_1,
;                         first(Model_220_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_220_ice,
;                       S1,
;                       first(Model_220_ice))),
;                le(Model_220_ice,
;                   one(Model_220_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_220_ice,
;                        S1,
;                        one(Model_220_ice),
;                        first(Model_220_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_220_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_220_ice))),
;                le(Model_220_ice,
;                   one(Model_220_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_220_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_220_ice,
;                                S1,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Not(And(held(Model_220_ice, S1, Node_1),
;                     zero(Model_220_ice) ==
;                     ep(Model_220_ice, S1, Node_1)))),
;      ForAll(Node_1,
;             Or(Not(Or(Not(one(Model_220_ice) ==
;                           ep(Model_220_ice,
;                              S1,
;                              first(Model_220_ice))),
;                       zero(Model_220_ice) ==
;                       one(Model_220_ice))),
;                transfer(Model_220_ice,
;                         S1,
;                         ep(Model_220_ice,
;                            S1,
;                            first(Model_220_ice)),
;                         first(Model_220_ice)))),
;      ForAll(Node_1,
;             Or(one(Model_220_ice) ==
;                ep(Model_220_ice, S1, first(Model_220_ice)),
;                locked(Model_220_ice,
;                       S1,
;                       ep(Model_220_ice,
;                          S1,
;                          first(Model_220_ice)),
;                       first(Model_220_ice)))),
;      ForAll(Node_1,
;             Not(And(locked(Model_220_ice,
;                            S1,
;                            one(Model_220_ice),
;                            Node_1),
;                     zero(Model_220_ice) ==
;                     ep(Model_220_ice, S1, Node_1))))),
;  ForAll(Node_1,
;         Or(Node_1 == first(Model_220_ice),
;            one(Model_220_ice) ==
;            ep(Model_220_ice, S1, first(Model_220_ice)))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_220_ice,
;                          S2,
;                          zero(Model_220_ice),
;                          first(Model_220_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_220_ice) ==
;                 ep(Model_220_ice, S2, first(Model_220_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_220_ice,
;                        S2,
;                        zero(Model_220_ice),
;                        first(Model_220_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_220_ice,
;                          S2,
;                          zero(Model_220_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_220_ice,
;                        S2,
;                        zero(Model_220_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_220_ice,
;                           S2,
;                           one(Model_220_ice),
;                           Node_1)),
;                transfer(Model_220_ice,
;                         S2,
;                         one(Model_220_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_220_ice,
;                           S2,
;                           Epoch_1,
;                           first(Model_220_ice))),
;                transfer(Model_220_ice,
;                         S2,
;                         Epoch_1,
;                         first(Model_220_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_220_ice,
;                       S2,
;                       first(Model_220_ice))),
;                le(Model_220_ice,
;                   one(Model_220_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_220_ice,
;                        S2,
;                        one(Model_220_ice),
;                        first(Model_220_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_220_ice,
;                           S2,
;                           Epoch_1,
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
; ;;   Epoch!val!0 Epoch!val!2 Epoch!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Epoch!val!0 () Epoch)
; (declare-fun Epoch!val!2 () Epoch)
; (declare-fun Epoch!val!1 () Epoch)
; ;; cardinality constraint:
; (forall ((x Epoch)) (or (= x Epoch!val!0) (= x Epoch!val!2) (= x Epoch!val!1)))
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
;   StateId!val!1)
; (define-fun Model_220_ice () ModelId
;   ModelId!val!0)
; (define-fun S1 () StateId
;   StateId!val!0)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!1)
;        (= x!2 Epoch!val!2)
;        (= x!3 Node!val!1)))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!2) (= x!2 Epoch!val!2))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!2))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!2))))
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (ite (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (= x!2 Node!val!1))
;     Epoch!val!2
;   (ite (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!1))
;     Epoch!val!1
;     Epoch!val!0)))
; (define-fun first ((x!0 ModelId)) Node
;   Node!val!1)
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (= x!2 Node!val!1)))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!2)
;            (= x!3 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!2)
;            (= x!3 Node!val!1))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!0)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!1)
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (or (not (and (inv Model_220_ice S1 Node!val!0)
              (inv Model_220_ice S1 Node!val!1)))
    (and (and (inv Model_220_ice S1 Node!val!0)
              (inv Model_220_ice S1 Node!val!1))
         (inv Model_220_ice S2 Node!val!0)
         (inv Model_220_ice S2 Node!val!1))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fba68d30a60>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_221_ice,
;                              Epoch_1,
;                              Epoch_1),
;                           Implies(And(le(Model_221_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_221_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_221_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_221_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_221_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_221_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_221_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_221_ice,
;                              zero(Model_221_ice),
;                              Epoch_1),
;                           one(Model_221_ice) !=
;                           zero(Model_221_ice))))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_221_ice,
;                          S1,
;                          zero(Model_221_ice),
;                          first(Model_221_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_221_ice) ==
;                 ep(Model_221_ice, S1, first(Model_221_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_221_ice,
;                        S1,
;                        zero(Model_221_ice),
;                        first(Model_221_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_221_ice,
;                          S1,
;                          zero(Model_221_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_221_ice,
;                        S1,
;                        zero(Model_221_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_221_ice,
;                           S1,
;                           one(Model_221_ice),
;                           Node_1)),
;                transfer(Model_221_ice,
;                         S1,
;                         one(Model_221_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_221_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_221_ice))),
;                transfer(Model_221_ice,
;                         S1,
;                         Epoch_1,
;                         first(Model_221_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_221_ice,
;                       S1,
;                       first(Model_221_ice))),
;                le(Model_221_ice,
;                   one(Model_221_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_221_ice,
;                        S1,
;                        one(Model_221_ice),
;                        first(Model_221_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_221_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_221_ice))),
;                le(Model_221_ice,
;                   one(Model_221_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_221_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_221_ice,
;                                S1,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Not(And(held(Model_221_ice, S1, Node_1),
;                     zero(Model_221_ice) ==
;                     ep(Model_221_ice, S1, Node_1)))),
;      ForAll(Node_1,
;             Or(Not(Or(Not(one(Model_221_ice) ==
;                           ep(Model_221_ice,
;                              S1,
;                              first(Model_221_ice))),
;                       zero(Model_221_ice) ==
;                       one(Model_221_ice))),
;                transfer(Model_221_ice,
;                         S1,
;                         ep(Model_221_ice,
;                            S1,
;                            first(Model_221_ice)),
;                         first(Model_221_ice)))),
;      ForAll(Node_1,
;             Or(one(Model_221_ice) ==
;                ep(Model_221_ice, S1, first(Model_221_ice)),
;                locked(Model_221_ice,
;                       S1,
;                       ep(Model_221_ice,
;                          S1,
;                          first(Model_221_ice)),
;                       first(Model_221_ice)))),
;      ForAll(Node_1,
;             Not(And(locked(Model_221_ice,
;                            S1,
;                            one(Model_221_ice),
;                            Node_1),
;                     zero(Model_221_ice) ==
;                     ep(Model_221_ice, S1, Node_1))))),
;  ForAll(Node_1,
;         Or(Not(zero(Model_221_ice) ==
;                ep(Model_221_ice, S1, Node_1)),
;            held(Model_221_ice, S1, first(Model_221_ice)))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_221_ice,
;                          S2,
;                          zero(Model_221_ice),
;                          first(Model_221_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_221_ice) ==
;                 ep(Model_221_ice, S2, first(Model_221_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_221_ice,
;                        S2,
;                        zero(Model_221_ice),
;                        first(Model_221_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_221_ice,
;                          S2,
;                          zero(Model_221_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_221_ice,
;                        S2,
;                        zero(Model_221_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_221_ice,
;                           S2,
;                           one(Model_221_ice),
;                           Node_1)),
;                transfer(Model_221_ice,
;                         S2,
;                         one(Model_221_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_221_ice,
;                           S2,
;                           Epoch_1,
;                           first(Model_221_ice))),
;                transfer(Model_221_ice,
;                         S2,
;                         Epoch_1,
;                         first(Model_221_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_221_ice,
;                       S2,
;                       first(Model_221_ice))),
;                le(Model_221_ice,
;                   one(Model_221_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_221_ice,
;                        S2,
;                        one(Model_221_ice),
;                        first(Model_221_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_221_ice,
;                           S2,
;                           Epoch_1,
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
; ;;   Epoch!val!0 Epoch!val!2 Epoch!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Epoch!val!0 () Epoch)
; (declare-fun Epoch!val!2 () Epoch)
; (declare-fun Epoch!val!1 () Epoch)
; ;; cardinality constraint:
; (forall ((x Epoch)) (or (= x Epoch!val!0) (= x Epoch!val!2) (= x Epoch!val!1)))
; ;; -----------
; (define-fun Model_221_ice () ModelId
;   ModelId!val!0)
; (define-fun S2 () StateId
;   StateId!val!1)
; (define-fun S1 () StateId
;   StateId!val!0)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (let ((a!1 (or (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!0)
;                       (not (= x!2 Node!val!1))
;                       (not (= x!2 Node!val!2)))
;                  (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!1)
;                       (not (= x!2 Node!val!1))
;                       (not (= x!2 Node!val!2))))))
;     (ite a!1 Epoch!val!0 Epoch!val!2)))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!1) (= x!2 Epoch!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!1))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!1))))
; (define-fun first ((x!0 ModelId)) Node
;   Node!val!1)
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!0)
;        (= x!2 Node!val!1)
;        (not (= x!2 Node!val!2))))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!1)
;        (= x!2 Epoch!val!1)
;        (= x!3 Node!val!2)))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!0)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!2)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   false)
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_221_ice S1 Node!val!0)
                (inv Model_221_ice S1 Node!val!1)
                (inv Model_221_ice S1 Node!val!2))))
  (or (not a!1)
      (and a!1
           (inv Model_221_ice S2 Node!val!0)
           (inv Model_221_ice S2 Node!val!1)
           (inv Model_221_ice S2 Node!val!2)))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fba68ce56d0>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_222_ice,
;                              Epoch_1,
;                              Epoch_1),
;                           Implies(And(le(Model_222_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_222_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_222_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_222_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_222_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_222_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_222_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_222_ice,
;                              zero(Model_222_ice),
;                              Epoch_1),
;                           one(Model_222_ice) !=
;                           zero(Model_222_ice))))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_222_ice,
;                          S1,
;                          zero(Model_222_ice),
;                          first(Model_222_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_222_ice) ==
;                 ep(Model_222_ice, S1, first(Model_222_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_222_ice,
;                        S1,
;                        zero(Model_222_ice),
;                        first(Model_222_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_222_ice,
;                          S1,
;                          zero(Model_222_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_222_ice,
;                        S1,
;                        zero(Model_222_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_222_ice,
;                           S1,
;                           one(Model_222_ice),
;                           Node_1)),
;                transfer(Model_222_ice,
;                         S1,
;                         one(Model_222_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_222_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_222_ice))),
;                transfer(Model_222_ice,
;                         S1,
;                         Epoch_1,
;                         first(Model_222_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_222_ice,
;                       S1,
;                       first(Model_222_ice))),
;                le(Model_222_ice,
;                   one(Model_222_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_222_ice,
;                        S1,
;                        one(Model_222_ice),
;                        first(Model_222_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_222_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_222_ice))),
;                le(Model_222_ice,
;                   one(Model_222_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_222_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_222_ice,
;                                S1,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Not(And(held(Model_222_ice, S1, Node_1),
;                     zero(Model_222_ice) ==
;                     ep(Model_222_ice, S1, Node_1)))),
;      ForAll(Node_1,
;             Or(Not(Or(Not(one(Model_222_ice) ==
;                           ep(Model_222_ice,
;                              S1,
;                              first(Model_222_ice))),
;                       zero(Model_222_ice) ==
;                       one(Model_222_ice))),
;                transfer(Model_222_ice,
;                         S1,
;                         ep(Model_222_ice,
;                            S1,
;                            first(Model_222_ice)),
;                         first(Model_222_ice)))),
;      ForAll(Node_1,
;             Or(one(Model_222_ice) ==
;                ep(Model_222_ice, S1, first(Model_222_ice)),
;                locked(Model_222_ice,
;                       S1,
;                       ep(Model_222_ice,
;                          S1,
;                          first(Model_222_ice)),
;                       first(Model_222_ice)))),
;      ForAll(Node_1,
;             Not(And(locked(Model_222_ice,
;                            S1,
;                            one(Model_222_ice),
;                            Node_1),
;                     zero(Model_222_ice) ==
;                     ep(Model_222_ice, S1, Node_1))))),
;  ForAll(Node_1,
;         Or(Not(locked(Model_222_ice,
;                       S1,
;                       one(Model_222_ice),
;                       Node_1)),
;            held(Model_222_ice, S1, Node_1))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_222_ice,
;                          S2,
;                          zero(Model_222_ice),
;                          first(Model_222_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_222_ice) ==
;                 ep(Model_222_ice, S2, first(Model_222_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_222_ice,
;                        S2,
;                        zero(Model_222_ice),
;                        first(Model_222_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_222_ice,
;                          S2,
;                          zero(Model_222_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_222_ice,
;                        S2,
;                        zero(Model_222_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_222_ice,
;                           S2,
;                           one(Model_222_ice),
;                           Node_1)),
;                transfer(Model_222_ice,
;                         S2,
;                         one(Model_222_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_222_ice,
;                           S2,
;                           Epoch_1,
;                           first(Model_222_ice))),
;                transfer(Model_222_ice,
;                         S2,
;                         Epoch_1,
;                         first(Model_222_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_222_ice,
;                       S2,
;                       first(Model_222_ice))),
;                le(Model_222_ice,
;                   one(Model_222_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_222_ice,
;                        S2,
;                        one(Model_222_ice),
;                        first(Model_222_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_222_ice,
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
; ;;   Epoch!val!0 Epoch!val!2 Epoch!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Epoch!val!0 () Epoch)
; (declare-fun Epoch!val!2 () Epoch)
; (declare-fun Epoch!val!1 () Epoch)
; ;; cardinality constraint:
; (forall ((x Epoch)) (or (= x Epoch!val!0) (= x Epoch!val!2) (= x Epoch!val!1)))
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
; (define-fun S2 () StateId
;   StateId!val!1)
; (define-fun S1 () StateId
;   StateId!val!0)
; (define-fun Model_222_ice () ModelId
;   ModelId!val!0)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (ite (or (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!1))
;            (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (= x!2 Node!val!1)))
;        Epoch!val!2
;        Epoch!val!1))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!0) (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))))
; (define-fun first ((x!0 ModelId)) Node
;   Node!val!0)
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!1)))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!2)
;            (not (= x!3 Node!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!0)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1))))
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_222_ice S1 Node!val!0)
                (inv Model_222_ice S1 Node!val!1)
                (inv Model_222_ice S1 Node!val!2))))
  (or (not a!1)
      (and a!1
           (inv Model_222_ice S2 Node!val!0)
           (inv Model_222_ice S2 Node!val!1)
           (inv Model_222_ice S2 Node!val!2)))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fba68d0f400>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_223_ice,
;                              Epoch_1,
;                              Epoch_1),
;                           Implies(And(le(Model_223_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_223_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_223_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_223_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_223_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_223_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_223_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_223_ice,
;                              zero(Model_223_ice),
;                              Epoch_1),
;                           one(Model_223_ice) !=
;                           zero(Model_223_ice))))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_223_ice,
;                          S1,
;                          zero(Model_223_ice),
;                          first(Model_223_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_223_ice) ==
;                 ep(Model_223_ice, S1, first(Model_223_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_223_ice,
;                        S1,
;                        zero(Model_223_ice),
;                        first(Model_223_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_223_ice,
;                          S1,
;                          zero(Model_223_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_223_ice,
;                        S1,
;                        zero(Model_223_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_223_ice,
;                           S1,
;                           one(Model_223_ice),
;                           Node_1)),
;                transfer(Model_223_ice,
;                         S1,
;                         one(Model_223_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_223_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_223_ice))),
;                transfer(Model_223_ice,
;                         S1,
;                         Epoch_1,
;                         first(Model_223_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_223_ice,
;                       S1,
;                       first(Model_223_ice))),
;                le(Model_223_ice,
;                   one(Model_223_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_223_ice,
;                        S1,
;                        one(Model_223_ice),
;                        first(Model_223_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_223_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_223_ice))),
;                le(Model_223_ice,
;                   one(Model_223_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_223_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_223_ice,
;                                S1,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Not(And(held(Model_223_ice, S1, Node_1),
;                     zero(Model_223_ice) ==
;                     ep(Model_223_ice, S1, Node_1)))),
;      ForAll(Node_1,
;             Or(Not(Or(Not(one(Model_223_ice) ==
;                           ep(Model_223_ice,
;                              S1,
;                              first(Model_223_ice))),
;                       zero(Model_223_ice) ==
;                       one(Model_223_ice))),
;                transfer(Model_223_ice,
;                         S1,
;                         ep(Model_223_ice,
;                            S1,
;                            first(Model_223_ice)),
;                         first(Model_223_ice)))),
;      ForAll(Node_1,
;             Or(one(Model_223_ice) ==
;                ep(Model_223_ice, S1, first(Model_223_ice)),
;                locked(Model_223_ice,
;                       S1,
;                       ep(Model_223_ice,
;                          S1,
;                          first(Model_223_ice)),
;                       first(Model_223_ice)))),
;      ForAll(Node_1,
;             Not(And(locked(Model_223_ice,
;                            S1,
;                            one(Model_223_ice),
;                            Node_1),
;                     zero(Model_223_ice) ==
;                     ep(Model_223_ice, S1, Node_1))))),
;  ForAll(Node_1,
;         Or(zero(Model_223_ice) ==
;            ep(Model_223_ice, S1, Node_1),
;            held(Model_223_ice, S1, Node_1))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_223_ice,
;                          S2,
;                          zero(Model_223_ice),
;                          first(Model_223_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_223_ice) ==
;                 ep(Model_223_ice, S2, first(Model_223_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_223_ice,
;                        S2,
;                        zero(Model_223_ice),
;                        first(Model_223_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_223_ice,
;                          S2,
;                          zero(Model_223_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_223_ice,
;                        S2,
;                        zero(Model_223_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_223_ice,
;                           S2,
;                           one(Model_223_ice),
;                           Node_1)),
;                transfer(Model_223_ice,
;                         S2,
;                         one(Model_223_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_223_ice,
;                           S2,
;                           Epoch_1,
;                           first(Model_223_ice))),
;                transfer(Model_223_ice,
;                         S2,
;                         Epoch_1,
;                         first(Model_223_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_223_ice,
;                       S2,
;                       first(Model_223_ice))),
;                le(Model_223_ice,
;                   one(Model_223_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_223_ice,
;                        S2,
;                        one(Model_223_ice),
;                        first(Model_223_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_223_ice,
;                           S2,
;                           Epoch_1,
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
; ;;   Epoch!val!0 Epoch!val!2 Epoch!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Epoch!val!0 () Epoch)
; (declare-fun Epoch!val!2 () Epoch)
; (declare-fun Epoch!val!1 () Epoch)
; ;; cardinality constraint:
; (forall ((x Epoch)) (or (= x Epoch!val!0) (= x Epoch!val!2) (= x Epoch!val!1)))
; ;; -----------
; (define-fun S2 () StateId
;   StateId!val!1)
; (define-fun S1 () StateId
;   StateId!val!0)
; (define-fun Model_223_ice () ModelId
;   ModelId!val!0)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (let ((a!1 (or (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!1)
;                       (not (= x!2 Node!val!1)))
;                  (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!0)
;                       (not (= x!2 Node!val!1))))))
;     (ite (or (and (= x!0 ModelId!val!0)
;                   (= x!1 StateId!val!0)
;                   (= x!2 Node!val!1))
;              (and (= x!0 ModelId!val!0)
;                   (= x!1 StateId!val!1)
;                   (= x!2 Node!val!1)))
;          Epoch!val!2
;          (ite a!1 Epoch!val!1 Epoch!val!0))))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!0) (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!0))))
; (define-fun first ((x!0 ModelId)) Node
;   Node!val!0)
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (not (= x!2 Node!val!1))))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!1)
;        (= x!2 Epoch!val!0)
;        (= x!3 Node!val!1)))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!2)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   false)
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (or (not (and (inv Model_223_ice S1 Node!val!0)
              (inv Model_223_ice S1 Node!val!1)))
    (and (and (inv Model_223_ice S1 Node!val!0)
              (inv Model_223_ice S1 Node!val!1))
         (inv Model_223_ice S2 Node!val!0)
         (inv Model_223_ice S2 Node!val!1))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fba7f3f5370>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_224_ice,
;                              Epoch_1,
;                              Epoch_1),
;                           Implies(And(le(Model_224_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_224_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_224_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_224_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_224_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_224_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_224_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_224_ice,
;                              zero(Model_224_ice),
;                              Epoch_1),
;                           one(Model_224_ice) !=
;                           zero(Model_224_ice))))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_224_ice,
;                          S1,
;                          zero(Model_224_ice),
;                          first(Model_224_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_224_ice) ==
;                 ep(Model_224_ice, S1, first(Model_224_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_224_ice,
;                        S1,
;                        zero(Model_224_ice),
;                        first(Model_224_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_224_ice,
;                          S1,
;                          zero(Model_224_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_224_ice,
;                        S1,
;                        zero(Model_224_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_224_ice,
;                           S1,
;                           one(Model_224_ice),
;                           Node_1)),
;                transfer(Model_224_ice,
;                         S1,
;                         one(Model_224_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_224_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_224_ice))),
;                transfer(Model_224_ice,
;                         S1,
;                         Epoch_1,
;                         first(Model_224_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_224_ice,
;                       S1,
;                       first(Model_224_ice))),
;                le(Model_224_ice,
;                   one(Model_224_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_224_ice,
;                        S1,
;                        one(Model_224_ice),
;                        first(Model_224_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_224_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_224_ice))),
;                le(Model_224_ice,
;                   one(Model_224_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_224_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_224_ice,
;                                S1,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Not(And(held(Model_224_ice, S1, Node_1),
;                     zero(Model_224_ice) ==
;                     ep(Model_224_ice, S1, Node_1)))),
;      ForAll(Node_1,
;             Or(Not(Or(Not(one(Model_224_ice) ==
;                           ep(Model_224_ice,
;                              S1,
;                              first(Model_224_ice))),
;                       zero(Model_224_ice) ==
;                       one(Model_224_ice))),
;                transfer(Model_224_ice,
;                         S1,
;                         ep(Model_224_ice,
;                            S1,
;                            first(Model_224_ice)),
;                         first(Model_224_ice)))),
;      ForAll(Node_1,
;             Or(one(Model_224_ice) ==
;                ep(Model_224_ice, S1, first(Model_224_ice)),
;                locked(Model_224_ice,
;                       S1,
;                       ep(Model_224_ice,
;                          S1,
;                          first(Model_224_ice)),
;                       first(Model_224_ice)))),
;      ForAll(Node_1,
;             Not(And(locked(Model_224_ice,
;                            S1,
;                            one(Model_224_ice),
;                            Node_1),
;                     zero(Model_224_ice) ==
;                     ep(Model_224_ice, S1, Node_1))))),
;  ForAll(Node_1,
;         Or(one(Model_224_ice) ==
;            ep(Model_224_ice, S1, first(Model_224_ice)),
;            held(Model_224_ice, S1, first(Model_224_ice)))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_224_ice,
;                          S2,
;                          zero(Model_224_ice),
;                          first(Model_224_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_224_ice) ==
;                 ep(Model_224_ice, S2, first(Model_224_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_224_ice,
;                        S2,
;                        zero(Model_224_ice),
;                        first(Model_224_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_224_ice,
;                          S2,
;                          zero(Model_224_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_224_ice,
;                        S2,
;                        zero(Model_224_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_224_ice,
;                           S2,
;                           one(Model_224_ice),
;                           Node_1)),
;                transfer(Model_224_ice,
;                         S2,
;                         one(Model_224_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_224_ice,
;                           S2,
;                           Epoch_1,
;                           first(Model_224_ice))),
;                transfer(Model_224_ice,
;                         S2,
;                         Epoch_1,
;                         first(Model_224_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_224_ice,
;                       S2,
;                       first(Model_224_ice))),
;                le(Model_224_ice,
;                   one(Model_224_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_224_ice,
;                        S2,
;                        one(Model_224_ice),
;                        first(Model_224_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_224_ice,
;                           S2,
;                           Epoch_1,
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
;   StateId!val!0)
; (define-fun Model_224_ice () ModelId
;   ModelId!val!0)
; (define-fun S2 () StateId
;   StateId!val!1)
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!1) (= x!2 Epoch!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1)))))
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (ite (or (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1))
;            (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0)))
;        Epoch!val!3
;        Epoch!val!1))
; (define-fun first ((x!0 ModelId)) Node
;   Node!val!0)
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0)))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1)))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!0)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1)))))
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (or (not (and (inv Model_224_ice S1 Node!val!0)))
    (and (and (inv Model_224_ice S1 Node!val!0))
         (inv Model_224_ice S2 Node!val!0))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fba7f3d9490>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_225_ice,
;                              Epoch_1,
;                              Epoch_1),
;                           Implies(And(le(Model_225_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_225_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_225_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_225_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_225_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_225_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_225_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_225_ice,
;                              zero(Model_225_ice),
;                              Epoch_1),
;                           one(Model_225_ice) !=
;                           zero(Model_225_ice))))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_225_ice,
;                          S1,
;                          zero(Model_225_ice),
;                          first(Model_225_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_225_ice) ==
;                 ep(Model_225_ice, S1, first(Model_225_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_225_ice,
;                        S1,
;                        zero(Model_225_ice),
;                        first(Model_225_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_225_ice,
;                          S1,
;                          zero(Model_225_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_225_ice,
;                        S1,
;                        zero(Model_225_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_225_ice,
;                           S1,
;                           one(Model_225_ice),
;                           Node_1)),
;                transfer(Model_225_ice,
;                         S1,
;                         one(Model_225_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_225_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_225_ice))),
;                transfer(Model_225_ice,
;                         S1,
;                         Epoch_1,
;                         first(Model_225_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_225_ice,
;                       S1,
;                       first(Model_225_ice))),
;                le(Model_225_ice,
;                   one(Model_225_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_225_ice,
;                        S1,
;                        one(Model_225_ice),
;                        first(Model_225_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_225_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_225_ice))),
;                le(Model_225_ice,
;                   one(Model_225_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_225_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_225_ice,
;                                S1,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Not(And(held(Model_225_ice, S1, Node_1),
;                     zero(Model_225_ice) ==
;                     ep(Model_225_ice, S1, Node_1)))),
;      ForAll(Node_1,
;             Or(Not(Or(Not(one(Model_225_ice) ==
;                           ep(Model_225_ice,
;                              S1,
;                              first(Model_225_ice))),
;                       zero(Model_225_ice) ==
;                       one(Model_225_ice))),
;                transfer(Model_225_ice,
;                         S1,
;                         ep(Model_225_ice,
;                            S1,
;                            first(Model_225_ice)),
;                         first(Model_225_ice)))),
;      ForAll(Node_1,
;             Or(one(Model_225_ice) ==
;                ep(Model_225_ice, S1, first(Model_225_ice)),
;                locked(Model_225_ice,
;                       S1,
;                       ep(Model_225_ice,
;                          S1,
;                          first(Model_225_ice)),
;                       first(Model_225_ice)))),
;      ForAll(Node_1,
;             Not(And(locked(Model_225_ice,
;                            S1,
;                            one(Model_225_ice),
;                            Node_1),
;                     zero(Model_225_ice) ==
;                     ep(Model_225_ice, S1, Node_1))))),
;  ForAll(Node_1,
;         Or(Not(transfer(Model_225_ice,
;                         S1,
;                         one(Model_225_ice),
;                         Node_1)),
;            one(Model_225_ice) ==
;            ep(Model_225_ice, S1, first(Model_225_ice)))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_225_ice,
;                          S2,
;                          zero(Model_225_ice),
;                          first(Model_225_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_225_ice) ==
;                 ep(Model_225_ice, S2, first(Model_225_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_225_ice,
;                        S2,
;                        zero(Model_225_ice),
;                        first(Model_225_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_225_ice,
;                          S2,
;                          zero(Model_225_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_225_ice,
;                        S2,
;                        zero(Model_225_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_225_ice,
;                           S2,
;                           one(Model_225_ice),
;                           Node_1)),
;                transfer(Model_225_ice,
;                         S2,
;                         one(Model_225_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_225_ice,
;                           S2,
;                           Epoch_1,
;                           first(Model_225_ice))),
;                transfer(Model_225_ice,
;                         S2,
;                         Epoch_1,
;                         first(Model_225_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_225_ice,
;                       S2,
;                       first(Model_225_ice))),
;                le(Model_225_ice,
;                   one(Model_225_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_225_ice,
;                        S2,
;                        one(Model_225_ice),
;                        first(Model_225_ice)))),
;      ForAll(Epoch_1,
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
; ;;   Node!val!0 Node!val!1 Node!val!2 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Node!val!0 () Node)
; (declare-fun Node!val!1 () Node)
; (declare-fun Node!val!2 () Node)
; ;; cardinality constraint:
; (forall ((x Node)) (or (= x Node!val!0) (= x Node!val!1) (= x Node!val!2)))
; ;; -----------
; (define-fun Model_225_ice () ModelId
;   ModelId!val!0)
; (define-fun S2 () StateId
;   StateId!val!1)
; (define-fun S1 () StateId
;   StateId!val!0)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (let ((a!1 (or (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!0)
;                       (not (= x!2 Node!val!2))
;                       (not (= x!2 Node!val!1)))
;                  (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!1)
;                       (not (= x!2 Node!val!2))
;                       (not (= x!2 Node!val!1))))))
;     (ite (or (and (= x!0 ModelId!val!0)
;                   (= x!1 StateId!val!0)
;                   (= x!2 Node!val!1))
;              (and (= x!0 ModelId!val!0)
;                   (= x!1 StateId!val!1)
;                   (= x!2 Node!val!1)))
;          Epoch!val!3
;          (ite a!1 Epoch!val!1 Epoch!val!2))))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!0) (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0)))))
; (define-fun first ((x!0 ModelId)) Node
;   Node!val!0)
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!1)))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!3 Node!val!2))
;            (not (= x!3 Node!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!2)
;            (not (= x!3 Node!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!3 Node!val!2))
;            (not (= x!3 Node!val!1)))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!0)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!2)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!3 Node!val!2))
;            (not (= x!3 Node!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!3 Node!val!2))
;            (not (= x!3 Node!val!1)))))
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_225_ice S1 Node!val!0)
                (inv Model_225_ice S1 Node!val!1)
                (inv Model_225_ice S1 Node!val!2))))
  (or (not a!1)
      (and a!1
           (inv Model_225_ice S2 Node!val!0)
           (inv Model_225_ice S2 Node!val!1)
           (inv Model_225_ice S2 Node!val!2)))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fba7f3f0790>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_226_ice,
;                              Epoch_1,
;                              Epoch_1),
;                           Implies(And(le(Model_226_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_226_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_226_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_226_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_226_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_226_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_226_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_226_ice,
;                              zero(Model_226_ice),
;                              Epoch_1),
;                           one(Model_226_ice) !=
;                           zero(Model_226_ice))))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_226_ice,
;                          S1,
;                          zero(Model_226_ice),
;                          first(Model_226_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_226_ice) ==
;                 ep(Model_226_ice, S1, first(Model_226_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_226_ice,
;                        S1,
;                        zero(Model_226_ice),
;                        first(Model_226_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_226_ice,
;                          S1,
;                          zero(Model_226_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_226_ice,
;                        S1,
;                        zero(Model_226_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_226_ice,
;                           S1,
;                           one(Model_226_ice),
;                           Node_1)),
;                transfer(Model_226_ice,
;                         S1,
;                         one(Model_226_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_226_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_226_ice))),
;                transfer(Model_226_ice,
;                         S1,
;                         Epoch_1,
;                         first(Model_226_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_226_ice,
;                       S1,
;                       first(Model_226_ice))),
;                le(Model_226_ice,
;                   one(Model_226_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_226_ice,
;                        S1,
;                        one(Model_226_ice),
;                        first(Model_226_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_226_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_226_ice))),
;                le(Model_226_ice,
;                   one(Model_226_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_226_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_226_ice,
;                                S1,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Not(And(held(Model_226_ice, S1, Node_1),
;                     zero(Model_226_ice) ==
;                     ep(Model_226_ice, S1, Node_1)))),
;      ForAll(Node_1,
;             Or(Not(Or(Not(one(Model_226_ice) ==
;                           ep(Model_226_ice,
;                              S1,
;                              first(Model_226_ice))),
;                       zero(Model_226_ice) ==
;                       one(Model_226_ice))),
;                transfer(Model_226_ice,
;                         S1,
;                         ep(Model_226_ice,
;                            S1,
;                            first(Model_226_ice)),
;                         first(Model_226_ice)))),
;      ForAll(Node_1,
;             Or(one(Model_226_ice) ==
;                ep(Model_226_ice, S1, first(Model_226_ice)),
;                locked(Model_226_ice,
;                       S1,
;                       ep(Model_226_ice,
;                          S1,
;                          first(Model_226_ice)),
;                       first(Model_226_ice)))),
;      ForAll(Node_1,
;             Not(And(locked(Model_226_ice,
;                            S1,
;                            one(Model_226_ice),
;                            Node_1),
;                     zero(Model_226_ice) ==
;                     ep(Model_226_ice, S1, Node_1))))),
;  ForAll(Node_1,
;         Or(Not(transfer(Model_226_ice,
;                         S1,
;                         one(Model_226_ice),
;                         first(Model_226_ice))),
;            one(Model_226_ice) ==
;            ep(Model_226_ice, S1, first(Model_226_ice)))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_226_ice,
;                          S2,
;                          zero(Model_226_ice),
;                          first(Model_226_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_226_ice) ==
;                 ep(Model_226_ice, S2, first(Model_226_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_226_ice,
;                        S2,
;                        zero(Model_226_ice),
;                        first(Model_226_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_226_ice,
;                          S2,
;                          zero(Model_226_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_226_ice,
;                        S2,
;                        zero(Model_226_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_226_ice,
;                           S2,
;                           one(Model_226_ice),
;                           Node_1)),
;                transfer(Model_226_ice,
;                         S2,
;                         one(Model_226_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_226_ice,
;                           S2,
;                           Epoch_1,
;                           first(Model_226_ice))),
;                transfer(Model_226_ice,
;                         S2,
;                         Epoch_1,
;                         first(Model_226_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_226_ice,
;                       S2,
;                       first(Model_226_ice))),
;                le(Model_226_ice,
;                   one(Model_226_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_226_ice,
;                        S2,
;                        one(Model_226_ice),
;                        first(Model_226_ice)))),
;      ForAll(Epoch_1,
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
; (define-fun Model_226_ice () ModelId
;   ModelId!val!0)
; (define-fun S2 () StateId
;   StateId!val!1)
; (define-fun S1 () StateId
;   StateId!val!0)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1))))
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (let ((a!1 (or (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!1)
;                       (not (= x!2 Node!val!1)))
;                  (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!0)
;                       (not (= x!2 Node!val!1)))))
;         (a!2 (ite (or (and (= x!0 ModelId!val!0)
;                            (= x!1 StateId!val!0)
;                            (= x!2 Node!val!1))
;                       (and (= x!0 ModelId!val!0)
;                            (= x!1 StateId!val!1)
;                            (= x!2 Node!val!1)))
;                   Epoch!val!1
;                   Epoch!val!2)))
;     (ite a!1 Epoch!val!3 a!2)))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!0) (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0)))))
; (define-fun first ((x!0 ModelId)) Node
;   Node!val!1)
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (not (= x!2 Node!val!1))))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!0)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!2)
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (or (not (and (inv Model_226_ice S1 Node!val!0)
              (inv Model_226_ice S1 Node!val!1)))
    (and (and (inv Model_226_ice S1 Node!val!0)
              (inv Model_226_ice S1 Node!val!1))
         (inv Model_226_ice S2 Node!val!0)
         (inv Model_226_ice S2 Node!val!1))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fba7f3d9280>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_227_ice,
;                              Epoch_1,
;                              Epoch_1),
;                           Implies(And(le(Model_227_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_227_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_227_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_227_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_227_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_227_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_227_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_227_ice,
;                              zero(Model_227_ice),
;                              Epoch_1),
;                           one(Model_227_ice) !=
;                           zero(Model_227_ice))))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_227_ice,
;                          S1,
;                          zero(Model_227_ice),
;                          first(Model_227_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_227_ice) ==
;                 ep(Model_227_ice, S1, first(Model_227_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_227_ice,
;                        S1,
;                        zero(Model_227_ice),
;                        first(Model_227_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_227_ice,
;                          S1,
;                          zero(Model_227_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_227_ice,
;                        S1,
;                        zero(Model_227_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_227_ice,
;                           S1,
;                           one(Model_227_ice),
;                           Node_1)),
;                transfer(Model_227_ice,
;                         S1,
;                         one(Model_227_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_227_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_227_ice))),
;                transfer(Model_227_ice,
;                         S1,
;                         Epoch_1,
;                         first(Model_227_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_227_ice,
;                       S1,
;                       first(Model_227_ice))),
;                le(Model_227_ice,
;                   one(Model_227_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_227_ice,
;                        S1,
;                        one(Model_227_ice),
;                        first(Model_227_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_227_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_227_ice))),
;                le(Model_227_ice,
;                   one(Model_227_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_227_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_227_ice,
;                                S1,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Not(And(held(Model_227_ice, S1, Node_1),
;                     zero(Model_227_ice) ==
;                     ep(Model_227_ice, S1, Node_1)))),
;      ForAll(Node_1,
;             Or(Not(Or(Not(one(Model_227_ice) ==
;                           ep(Model_227_ice,
;                              S1,
;                              first(Model_227_ice))),
;                       zero(Model_227_ice) ==
;                       one(Model_227_ice))),
;                transfer(Model_227_ice,
;                         S1,
;                         ep(Model_227_ice,
;                            S1,
;                            first(Model_227_ice)),
;                         first(Model_227_ice)))),
;      ForAll(Node_1,
;             Or(one(Model_227_ice) ==
;                ep(Model_227_ice, S1, first(Model_227_ice)),
;                locked(Model_227_ice,
;                       S1,
;                       ep(Model_227_ice,
;                          S1,
;                          first(Model_227_ice)),
;                       first(Model_227_ice)))),
;      ForAll(Node_1,
;             Not(And(locked(Model_227_ice,
;                            S1,
;                            one(Model_227_ice),
;                            Node_1),
;                     zero(Model_227_ice) ==
;                     ep(Model_227_ice, S1, Node_1))))),
;  ForAll(Epoch_1,
;         Or(Not(locked(Model_227_ice,
;                       S1,
;                       Epoch_1,
;                       first(Model_227_ice))),
;            Epoch_1 ==
;            ep(Model_227_ice, S1, first(Model_227_ice)))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_227_ice,
;                          S2,
;                          zero(Model_227_ice),
;                          first(Model_227_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_227_ice) ==
;                 ep(Model_227_ice, S2, first(Model_227_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_227_ice,
;                        S2,
;                        zero(Model_227_ice),
;                        first(Model_227_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_227_ice,
;                          S2,
;                          zero(Model_227_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_227_ice,
;                        S2,
;                        zero(Model_227_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_227_ice,
;                           S2,
;                           one(Model_227_ice),
;                           Node_1)),
;                transfer(Model_227_ice,
;                         S2,
;                         one(Model_227_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_227_ice,
;                           S2,
;                           Epoch_1,
;                           first(Model_227_ice))),
;                transfer(Model_227_ice,
;                         S2,
;                         Epoch_1,
;                         first(Model_227_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_227_ice,
;                       S2,
;                       first(Model_227_ice))),
;                le(Model_227_ice,
;                   one(Model_227_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_227_ice,
;                        S2,
;                        one(Model_227_ice),
;                        first(Model_227_ice)))),
;      ForAll(Epoch_1,
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
; (define-fun Model_227_ice () ModelId
;   ModelId!val!0)
; (define-fun S1 () StateId
;   StateId!val!0)
; (define-fun S2 () StateId
;   StateId!val!1)
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!3) (= x!2 Epoch!val!3))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!3))
;            (= x!2 Epoch!val!3))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
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
;            (= x!2 Epoch!val!3))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!3))
;            (= x!2 Epoch!val!3))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
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
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!3))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!3))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!3)))))
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (ite (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0))
;        Epoch!val!1
;        Epoch!val!3))
; (define-fun first ((x!0 ModelId)) Node
;   Node!val!0)
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1)))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (= x!2 Epoch!val!3))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Epoch!val!3))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!3)))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!0)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!2)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (= x!2 Epoch!val!3))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!3)))))
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (or (not (and (inv Model_227_ice S1 Node!val!0)))
    (and (and (inv Model_227_ice S1 Node!val!0))
         (inv Model_227_ice S2 Node!val!0))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fba7f362a60>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_228_ice,
;                              Epoch_1,
;                              Epoch_1),
;                           Implies(And(le(Model_228_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_228_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_228_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_228_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_228_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_228_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_228_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_228_ice,
;                              zero(Model_228_ice),
;                              Epoch_1),
;                           one(Model_228_ice) !=
;                           zero(Model_228_ice))))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_228_ice,
;                          S1,
;                          zero(Model_228_ice),
;                          first(Model_228_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_228_ice) ==
;                 ep(Model_228_ice, S1, first(Model_228_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_228_ice,
;                        S1,
;                        zero(Model_228_ice),
;                        first(Model_228_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_228_ice,
;                          S1,
;                          zero(Model_228_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_228_ice,
;                        S1,
;                        zero(Model_228_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_228_ice,
;                           S1,
;                           one(Model_228_ice),
;                           Node_1)),
;                transfer(Model_228_ice,
;                         S1,
;                         one(Model_228_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_228_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_228_ice))),
;                transfer(Model_228_ice,
;                         S1,
;                         Epoch_1,
;                         first(Model_228_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_228_ice,
;                       S1,
;                       first(Model_228_ice))),
;                le(Model_228_ice,
;                   one(Model_228_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_228_ice,
;                        S1,
;                        one(Model_228_ice),
;                        first(Model_228_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_228_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_228_ice))),
;                le(Model_228_ice,
;                   one(Model_228_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_228_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_228_ice,
;                                S1,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Not(And(held(Model_228_ice, S1, Node_1),
;                     zero(Model_228_ice) ==
;                     ep(Model_228_ice, S1, Node_1)))),
;      ForAll(Node_1,
;             Or(Not(Or(Not(one(Model_228_ice) ==
;                           ep(Model_228_ice,
;                              S1,
;                              first(Model_228_ice))),
;                       zero(Model_228_ice) ==
;                       one(Model_228_ice))),
;                transfer(Model_228_ice,
;                         S1,
;                         ep(Model_228_ice,
;                            S1,
;                            first(Model_228_ice)),
;                         first(Model_228_ice)))),
;      ForAll(Node_1,
;             Or(one(Model_228_ice) ==
;                ep(Model_228_ice, S1, first(Model_228_ice)),
;                locked(Model_228_ice,
;                       S1,
;                       ep(Model_228_ice,
;                          S1,
;                          first(Model_228_ice)),
;                       first(Model_228_ice)))),
;      ForAll(Node_1,
;             Not(And(locked(Model_228_ice,
;                            S1,
;                            one(Model_228_ice),
;                            Node_1),
;                     zero(Model_228_ice) ==
;                     ep(Model_228_ice, S1, Node_1))))),
;  ForAll(Epoch_1,
;         Or(Not(transfer(Model_228_ice,
;                         S1,
;                         Epoch_1,
;                         first(Model_228_ice))),
;            Epoch_1 == one(Model_228_ice))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_228_ice,
;                          S2,
;                          zero(Model_228_ice),
;                          first(Model_228_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_228_ice) ==
;                 ep(Model_228_ice, S2, first(Model_228_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_228_ice,
;                        S2,
;                        zero(Model_228_ice),
;                        first(Model_228_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_228_ice,
;                          S2,
;                          zero(Model_228_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_228_ice,
;                        S2,
;                        zero(Model_228_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_228_ice,
;                           S2,
;                           one(Model_228_ice),
;                           Node_1)),
;                transfer(Model_228_ice,
;                         S2,
;                         one(Model_228_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_228_ice,
;                           S2,
;                           Epoch_1,
;                           first(Model_228_ice))),
;                transfer(Model_228_ice,
;                         S2,
;                         Epoch_1,
;                         first(Model_228_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_228_ice,
;                       S2,
;                       first(Model_228_ice))),
;                le(Model_228_ice,
;                   one(Model_228_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_228_ice,
;                        S2,
;                        one(Model_228_ice),
;                        first(Model_228_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_228_ice,
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
; (define-fun Model_228_ice () ModelId
;   ModelId!val!0)
; (define-fun S2 () StateId
;   StateId!val!1)
; (define-fun S1 () StateId
;   StateId!val!0)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (let ((a!1 (or (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!1)
;                       (not (= x!2 Node!val!0)))
;                  (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!0)
;                       (not (= x!2 Node!val!0))))))
;     (ite (or (and (= x!0 ModelId!val!0)
;                   (= x!1 StateId!val!0)
;                   (= x!2 Node!val!0))
;              (and (= x!0 ModelId!val!0)
;                   (= x!1 StateId!val!1)
;                   (= x!2 Node!val!0)))
;          Epoch!val!3
;          (ite a!1 Epoch!val!1 Epoch!val!0))))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!2) (= x!2 Epoch!val!2))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!2))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!1))
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
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2)))))
; (define-fun first ((x!0 ModelId)) Node
;   Node!val!1)
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!0)))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!1)
;        (= x!2 Epoch!val!2)
;        (not (= x!3 Node!val!0))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!0)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   false)
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (or (not (and (inv Model_228_ice S1 Node!val!0)
              (inv Model_228_ice S1 Node!val!1)))
    (and (and (inv Model_228_ice S1 Node!val!0)
              (inv Model_228_ice S1 Node!val!1))
         (inv Model_228_ice S2 Node!val!0)
         (inv Model_228_ice S2 Node!val!1))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fba7f3b74c0>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_229_ice,
;                              Epoch_1,
;                              Epoch_1),
;                           Implies(And(le(Model_229_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_229_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_229_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_229_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_229_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_229_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_229_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_229_ice,
;                              zero(Model_229_ice),
;                              Epoch_1),
;                           one(Model_229_ice) !=
;                           zero(Model_229_ice))))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_229_ice,
;                          S1,
;                          zero(Model_229_ice),
;                          first(Model_229_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_229_ice) ==
;                 ep(Model_229_ice, S1, first(Model_229_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_229_ice,
;                        S1,
;                        zero(Model_229_ice),
;                        first(Model_229_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_229_ice,
;                          S1,
;                          zero(Model_229_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_229_ice,
;                        S1,
;                        zero(Model_229_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_229_ice,
;                           S1,
;                           one(Model_229_ice),
;                           Node_1)),
;                transfer(Model_229_ice,
;                         S1,
;                         one(Model_229_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_229_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_229_ice))),
;                transfer(Model_229_ice,
;                         S1,
;                         Epoch_1,
;                         first(Model_229_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_229_ice,
;                       S1,
;                       first(Model_229_ice))),
;                le(Model_229_ice,
;                   one(Model_229_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_229_ice,
;                        S1,
;                        one(Model_229_ice),
;                        first(Model_229_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_229_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_229_ice))),
;                le(Model_229_ice,
;                   one(Model_229_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_229_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_229_ice,
;                                S1,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Not(And(held(Model_229_ice, S1, Node_1),
;                     zero(Model_229_ice) ==
;                     ep(Model_229_ice, S1, Node_1)))),
;      ForAll(Node_1,
;             Or(Not(Or(Not(one(Model_229_ice) ==
;                           ep(Model_229_ice,
;                              S1,
;                              first(Model_229_ice))),
;                       zero(Model_229_ice) ==
;                       one(Model_229_ice))),
;                transfer(Model_229_ice,
;                         S1,
;                         ep(Model_229_ice,
;                            S1,
;                            first(Model_229_ice)),
;                         first(Model_229_ice)))),
;      ForAll(Node_1,
;             Or(one(Model_229_ice) ==
;                ep(Model_229_ice, S1, first(Model_229_ice)),
;                locked(Model_229_ice,
;                       S1,
;                       ep(Model_229_ice,
;                          S1,
;                          first(Model_229_ice)),
;                       first(Model_229_ice)))),
;      ForAll(Node_1,
;             Not(And(locked(Model_229_ice,
;                            S1,
;                            one(Model_229_ice),
;                            Node_1),
;                     zero(Model_229_ice) ==
;                     ep(Model_229_ice, S1, Node_1))))),
;  ForAll(Epoch_1,
;         Or(Not(transfer(Model_229_ice,
;                         S1,
;                         Epoch_1,
;                         first(Model_229_ice))),
;            le(Model_229_ice, Epoch_1, one(Model_229_ice)))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_229_ice,
;                          S2,
;                          zero(Model_229_ice),
;                          first(Model_229_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_229_ice) ==
;                 ep(Model_229_ice, S2, first(Model_229_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_229_ice,
;                        S2,
;                        zero(Model_229_ice),
;                        first(Model_229_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_229_ice,
;                          S2,
;                          zero(Model_229_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_229_ice,
;                        S2,
;                        zero(Model_229_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_229_ice,
;                           S2,
;                           one(Model_229_ice),
;                           Node_1)),
;                transfer(Model_229_ice,
;                         S2,
;                         one(Model_229_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_229_ice,
;                           S2,
;                           Epoch_1,
;                           first(Model_229_ice))),
;                transfer(Model_229_ice,
;                         S2,
;                         Epoch_1,
;                         first(Model_229_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_229_ice,
;                       S2,
;                       first(Model_229_ice))),
;                le(Model_229_ice,
;                   one(Model_229_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_229_ice,
;                        S2,
;                        one(Model_229_ice),
;                        first(Model_229_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_229_ice,
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
;   StateId!val!1)
; (define-fun S1 () StateId
;   StateId!val!0)
; (define-fun Model_229_ice () ModelId
;   ModelId!val!0)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (let ((a!1 (or (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!1)
;                       (not (= x!2 Node!val!0)))
;                  (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!0)
;                       (not (= x!2 Node!val!0))))))
;     (ite a!1 Epoch!val!1 Epoch!val!3)))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!3) (= x!2 Epoch!val!3))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!3))
;            (= x!2 Epoch!val!3))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!3))
;            (= x!2 Epoch!val!3))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!3))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!3))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!3))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!3))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!3)))))
; (define-fun first ((x!0 ModelId)) Node
;   Node!val!1)
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!0)))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!1)
;        (= x!2 Epoch!val!2)
;        (not (= x!2 Epoch!val!0))
;        (not (= x!2 Epoch!val!3))
;        (not (= x!3 Node!val!0))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!0)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   false)
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (or (not (and (inv Model_229_ice S1 Node!val!0)
              (inv Model_229_ice S1 Node!val!1)))
    (and (and (inv Model_229_ice S1 Node!val!0)
              (inv Model_229_ice S1 Node!val!1))
         (inv Model_229_ice S2 Node!val!0)
         (inv Model_229_ice S2 Node!val!1))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fba7f3b4970>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_230_ice,
;                              Epoch_1,
;                              Epoch_1),
;                           Implies(And(le(Model_230_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_230_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_230_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_230_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_230_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_230_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_230_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_230_ice,
;                              zero(Model_230_ice),
;                              Epoch_1),
;                           one(Model_230_ice) !=
;                           zero(Model_230_ice))))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_230_ice,
;                          S1,
;                          zero(Model_230_ice),
;                          first(Model_230_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_230_ice) ==
;                 ep(Model_230_ice, S1, first(Model_230_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_230_ice,
;                        S1,
;                        zero(Model_230_ice),
;                        first(Model_230_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_230_ice,
;                          S1,
;                          zero(Model_230_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_230_ice,
;                        S1,
;                        zero(Model_230_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_230_ice,
;                           S1,
;                           one(Model_230_ice),
;                           Node_1)),
;                transfer(Model_230_ice,
;                         S1,
;                         one(Model_230_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_230_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_230_ice))),
;                transfer(Model_230_ice,
;                         S1,
;                         Epoch_1,
;                         first(Model_230_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_230_ice,
;                       S1,
;                       first(Model_230_ice))),
;                le(Model_230_ice,
;                   one(Model_230_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_230_ice,
;                        S1,
;                        one(Model_230_ice),
;                        first(Model_230_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_230_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_230_ice))),
;                le(Model_230_ice,
;                   one(Model_230_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_230_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_230_ice,
;                                S1,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Not(And(held(Model_230_ice, S1, Node_1),
;                     zero(Model_230_ice) ==
;                     ep(Model_230_ice, S1, Node_1)))),
;      ForAll(Node_1,
;             Or(Not(Or(Not(one(Model_230_ice) ==
;                           ep(Model_230_ice,
;                              S1,
;                              first(Model_230_ice))),
;                       zero(Model_230_ice) ==
;                       one(Model_230_ice))),
;                transfer(Model_230_ice,
;                         S1,
;                         ep(Model_230_ice,
;                            S1,
;                            first(Model_230_ice)),
;                         first(Model_230_ice)))),
;      ForAll(Node_1,
;             Or(one(Model_230_ice) ==
;                ep(Model_230_ice, S1, first(Model_230_ice)),
;                locked(Model_230_ice,
;                       S1,
;                       ep(Model_230_ice,
;                          S1,
;                          first(Model_230_ice)),
;                       first(Model_230_ice)))),
;      ForAll(Node_1,
;             Not(And(locked(Model_230_ice,
;                            S1,
;                            one(Model_230_ice),
;                            Node_1),
;                     zero(Model_230_ice) ==
;                     ep(Model_230_ice, S1, Node_1))))),
;  ForAll(Node_1,
;         Not(And(held(Model_230_ice,
;                      S1,
;                      first(Model_230_ice)),
;                 locked(Model_230_ice,
;                        S1,
;                        one(Model_230_ice),
;                        Node_1)))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_230_ice,
;                          S2,
;                          zero(Model_230_ice),
;                          first(Model_230_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_230_ice) ==
;                 ep(Model_230_ice, S2, first(Model_230_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_230_ice,
;                        S2,
;                        zero(Model_230_ice),
;                        first(Model_230_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_230_ice,
;                          S2,
;                          zero(Model_230_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_230_ice,
;                        S2,
;                        zero(Model_230_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_230_ice,
;                           S2,
;                           one(Model_230_ice),
;                           Node_1)),
;                transfer(Model_230_ice,
;                         S2,
;                         one(Model_230_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_230_ice,
;                           S2,
;                           Epoch_1,
;                           first(Model_230_ice))),
;                transfer(Model_230_ice,
;                         S2,
;                         Epoch_1,
;                         first(Model_230_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_230_ice,
;                       S2,
;                       first(Model_230_ice))),
;                le(Model_230_ice,
;                   one(Model_230_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_230_ice,
;                        S2,
;                        one(Model_230_ice),
;                        first(Model_230_ice)))),
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
; (define-fun Model_230_ice () ModelId
;   ModelId!val!0)
; (define-fun S2 () StateId
;   StateId!val!1)
; (define-fun S1 () StateId
;   StateId!val!0)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (let ((a!1 (ite (and (= x!0 ModelId!val!0)
;                        (= x!1 StateId!val!1)
;                        (not (= x!2 Node!val!1)))
;                   Epoch!val!3
;                   Epoch!val!0)))
;   (let ((a!2 (ite (and (= x!0 ModelId!val!0)
;                        (= x!1 StateId!val!1)
;                        (= x!2 Node!val!1))
;                   Epoch!val!2
;                   (ite (and (= x!0 ModelId!val!0)
;                             (= x!1 StateId!val!0)
;                             (= x!2 Node!val!1))
;                        Epoch!val!1
;                        a!1))))
;     (ite (and (= x!0 ModelId!val!0)
;               (= x!1 StateId!val!0)
;               (not (= x!2 Node!val!1)))
;          Epoch!val!3
;          a!2))))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!0) (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!0)))))
; (define-fun first ((x!0 ModelId)) Node
;   Node!val!1)
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (= x!2 Node!val!1)))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!3 Node!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!3 Node!val!1)))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!0)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!3 Node!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!3 Node!val!1)))))
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (or (not (and (inv Model_230_ice S1 Node!val!0)
              (inv Model_230_ice S1 Node!val!1)))
    (and (and (inv Model_230_ice S1 Node!val!0)
              (inv Model_230_ice S1 Node!val!1))
         (inv Model_230_ice S2 Node!val!0)
         (inv Model_230_ice S2 Node!val!1))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fba68da7310>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_231_ice,
;                              Epoch_1,
;                              Epoch_1),
;                           Implies(And(le(Model_231_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_231_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_231_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_231_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_231_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_231_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_231_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_231_ice,
;                              zero(Model_231_ice),
;                              Epoch_1),
;                           one(Model_231_ice) !=
;                           zero(Model_231_ice))))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_231_ice,
;                          S1,
;                          zero(Model_231_ice),
;                          first(Model_231_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_231_ice) ==
;                 ep(Model_231_ice, S1, first(Model_231_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_231_ice,
;                        S1,
;                        zero(Model_231_ice),
;                        first(Model_231_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_231_ice,
;                          S1,
;                          zero(Model_231_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_231_ice,
;                        S1,
;                        zero(Model_231_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_231_ice,
;                           S1,
;                           one(Model_231_ice),
;                           Node_1)),
;                transfer(Model_231_ice,
;                         S1,
;                         one(Model_231_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_231_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_231_ice))),
;                transfer(Model_231_ice,
;                         S1,
;                         Epoch_1,
;                         first(Model_231_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_231_ice,
;                       S1,
;                       first(Model_231_ice))),
;                le(Model_231_ice,
;                   one(Model_231_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_231_ice,
;                        S1,
;                        one(Model_231_ice),
;                        first(Model_231_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_231_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_231_ice))),
;                le(Model_231_ice,
;                   one(Model_231_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_231_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_231_ice,
;                                S1,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Not(And(held(Model_231_ice, S1, Node_1),
;                     zero(Model_231_ice) ==
;                     ep(Model_231_ice, S1, Node_1)))),
;      ForAll(Node_1,
;             Or(Not(Or(Not(one(Model_231_ice) ==
;                           ep(Model_231_ice,
;                              S1,
;                              first(Model_231_ice))),
;                       zero(Model_231_ice) ==
;                       one(Model_231_ice))),
;                transfer(Model_231_ice,
;                         S1,
;                         ep(Model_231_ice,
;                            S1,
;                            first(Model_231_ice)),
;                         first(Model_231_ice)))),
;      ForAll(Node_1,
;             Or(one(Model_231_ice) ==
;                ep(Model_231_ice, S1, first(Model_231_ice)),
;                locked(Model_231_ice,
;                       S1,
;                       ep(Model_231_ice,
;                          S1,
;                          first(Model_231_ice)),
;                       first(Model_231_ice)))),
;      ForAll(Node_1,
;             Not(And(locked(Model_231_ice,
;                            S1,
;                            one(Model_231_ice),
;                            Node_1),
;                     zero(Model_231_ice) ==
;                     ep(Model_231_ice, S1, Node_1))))),
;  ForAll(Node_1,
;         Not(And(zero(Model_231_ice) ==
;                 ep(Model_231_ice, S1, Node_1),
;                 transfer(Model_231_ice,
;                          S1,
;                          one(Model_231_ice),
;                          Node_1)))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_231_ice,
;                          S2,
;                          zero(Model_231_ice),
;                          first(Model_231_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_231_ice) ==
;                 ep(Model_231_ice, S2, first(Model_231_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_231_ice,
;                        S2,
;                        zero(Model_231_ice),
;                        first(Model_231_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_231_ice,
;                          S2,
;                          zero(Model_231_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_231_ice,
;                        S2,
;                        zero(Model_231_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_231_ice,
;                           S2,
;                           one(Model_231_ice),
;                           Node_1)),
;                transfer(Model_231_ice,
;                         S2,
;                         one(Model_231_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_231_ice,
;                           S2,
;                           Epoch_1,
;                           first(Model_231_ice))),
;                transfer(Model_231_ice,
;                         S2,
;                         Epoch_1,
;                         first(Model_231_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_231_ice,
;                       S2,
;                       first(Model_231_ice))),
;                le(Model_231_ice,
;                   one(Model_231_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_231_ice,
;                        S2,
;                        one(Model_231_ice),
;                        first(Model_231_ice)))),
;      ForAll(Epoch_1,
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
; ;;   Epoch!val!0 Epoch!val!2 Epoch!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Epoch!val!0 () Epoch)
; (declare-fun Epoch!val!2 () Epoch)
; (declare-fun Epoch!val!1 () Epoch)
; ;; cardinality constraint:
; (forall ((x Epoch)) (or (= x Epoch!val!0) (= x Epoch!val!2) (= x Epoch!val!1)))
; ;; -----------
; (define-fun Model_231_ice () ModelId
;   ModelId!val!0)
; (define-fun S2 () StateId
;   StateId!val!1)
; (define-fun S1 () StateId
;   StateId!val!0)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (let ((a!1 (or (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!0)
;                       (not (= x!2 Node!val!2))
;                       (not (= x!2 Node!val!1)))
;                  (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!1)
;                       (not (= x!2 Node!val!2))
;                       (not (= x!2 Node!val!1))))))
;     (ite (or (and (= x!0 ModelId!val!0)
;                   (= x!1 StateId!val!0)
;                   (= x!2 Node!val!1))
;              (and (= x!0 ModelId!val!0)
;                   (= x!1 StateId!val!1)
;                   (= x!2 Node!val!1)))
;          Epoch!val!2
;          (ite a!1 Epoch!val!0 Epoch!val!1))))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!2) (= x!2 Epoch!val!2))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!2))))
; (define-fun first ((x!0 ModelId)) Node
;   Node!val!0)
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!1)))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!1)
;        (= x!2 Epoch!val!0)
;        (not (= x!2 Epoch!val!2))
;        (= x!3 Node!val!2)
;        (not (= x!3 Node!val!1))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!0)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   false)
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_231_ice S1 Node!val!0)
                (inv Model_231_ice S1 Node!val!1)
                (inv Model_231_ice S1 Node!val!2))))
  (or (not a!1)
      (and a!1
           (inv Model_231_ice S2 Node!val!0)
           (inv Model_231_ice S2 Node!val!1)
           (inv Model_231_ice S2 Node!val!2)))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fba7f38af10>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_232_ice,
;                              Epoch_1,
;                              Epoch_1),
;                           Implies(And(le(Model_232_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_232_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_232_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_232_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_232_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_232_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_232_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_232_ice,
;                              zero(Model_232_ice),
;                              Epoch_1),
;                           one(Model_232_ice) !=
;                           zero(Model_232_ice))))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_232_ice,
;                          S1,
;                          zero(Model_232_ice),
;                          first(Model_232_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_232_ice) ==
;                 ep(Model_232_ice, S1, first(Model_232_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_232_ice,
;                        S1,
;                        zero(Model_232_ice),
;                        first(Model_232_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_232_ice,
;                          S1,
;                          zero(Model_232_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_232_ice,
;                        S1,
;                        zero(Model_232_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_232_ice,
;                           S1,
;                           one(Model_232_ice),
;                           Node_1)),
;                transfer(Model_232_ice,
;                         S1,
;                         one(Model_232_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_232_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_232_ice))),
;                transfer(Model_232_ice,
;                         S1,
;                         Epoch_1,
;                         first(Model_232_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_232_ice,
;                       S1,
;                       first(Model_232_ice))),
;                le(Model_232_ice,
;                   one(Model_232_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_232_ice,
;                        S1,
;                        one(Model_232_ice),
;                        first(Model_232_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_232_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_232_ice))),
;                le(Model_232_ice,
;                   one(Model_232_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_232_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_232_ice,
;                                S1,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Not(And(held(Model_232_ice, S1, Node_1),
;                     zero(Model_232_ice) ==
;                     ep(Model_232_ice, S1, Node_1)))),
;      ForAll(Node_1,
;             Or(Not(Or(Not(one(Model_232_ice) ==
;                           ep(Model_232_ice,
;                              S1,
;                              first(Model_232_ice))),
;                       zero(Model_232_ice) ==
;                       one(Model_232_ice))),
;                transfer(Model_232_ice,
;                         S1,
;                         ep(Model_232_ice,
;                            S1,
;                            first(Model_232_ice)),
;                         first(Model_232_ice)))),
;      ForAll(Node_1,
;             Or(one(Model_232_ice) ==
;                ep(Model_232_ice, S1, first(Model_232_ice)),
;                locked(Model_232_ice,
;                       S1,
;                       ep(Model_232_ice,
;                          S1,
;                          first(Model_232_ice)),
;                       first(Model_232_ice)))),
;      ForAll(Node_1,
;             Not(And(locked(Model_232_ice,
;                            S1,
;                            one(Model_232_ice),
;                            Node_1),
;                     zero(Model_232_ice) ==
;                     ep(Model_232_ice, S1, Node_1))))),
;  ForAll(Node_1,
;         Not(And(transfer(Model_232_ice,
;                          S1,
;                          one(Model_232_ice),
;                          first(Model_232_ice)),
;                 locked(Model_232_ice,
;                        S1,
;                        one(Model_232_ice),
;                        Node_1)))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_232_ice,
;                          S2,
;                          zero(Model_232_ice),
;                          first(Model_232_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_232_ice) ==
;                 ep(Model_232_ice, S2, first(Model_232_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_232_ice,
;                        S2,
;                        zero(Model_232_ice),
;                        first(Model_232_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_232_ice,
;                          S2,
;                          zero(Model_232_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_232_ice,
;                        S2,
;                        zero(Model_232_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_232_ice,
;                           S2,
;                           one(Model_232_ice),
;                           Node_1)),
;                transfer(Model_232_ice,
;                         S2,
;                         one(Model_232_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_232_ice,
;                           S2,
;                           Epoch_1,
;                           first(Model_232_ice))),
;                transfer(Model_232_ice,
;                         S2,
;                         Epoch_1,
;                         first(Model_232_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_232_ice,
;                       S2,
;                       first(Model_232_ice))),
;                le(Model_232_ice,
;                   one(Model_232_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_232_ice,
;                        S2,
;                        one(Model_232_ice),
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
; ;;   Node!val!0 Node!val!1 Node!val!2 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Node!val!0 () Node)
; (declare-fun Node!val!1 () Node)
; (declare-fun Node!val!2 () Node)
; ;; cardinality constraint:
; (forall ((x Node)) (or (= x Node!val!0) (= x Node!val!1) (= x Node!val!2)))
; ;; -----------
; (define-fun S2 () StateId
;   StateId!val!1)
; (define-fun Model_232_ice () ModelId
;   ModelId!val!0)
; (define-fun S1 () StateId
;   StateId!val!0)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (let ((a!1 (or (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!0)
;                       (not (= x!2 Node!val!1))
;                       (not (= x!2 Node!val!2)))
;                  (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!1)
;                       (not (= x!2 Node!val!1))
;                       (not (= x!2 Node!val!2)))))
;         (a!2 (ite (or (and (= x!0 ModelId!val!0)
;                            (= x!1 StateId!val!0)
;                            (= x!2 Node!val!2))
;                       (and (= x!0 ModelId!val!0)
;                            (= x!1 StateId!val!1)
;                            (= x!2 Node!val!2)))
;                   Epoch!val!1
;                   Epoch!val!2)))
;     (ite a!1 Epoch!val!3 a!2)))
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
;            (= x!1 Epoch!val!0)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
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
;            (= x!1 Epoch!val!0)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
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
; (define-fun first ((x!0 ModelId)) Node
;   Node!val!2)
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!0)
;        (= x!2 Node!val!1)
;        (not (= x!2 Node!val!2))))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!3 Node!val!1))
;            (not (= x!3 Node!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!3 Node!val!1))
;            (not (= x!3 Node!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!2))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!0)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!3 Node!val!1))
;            (not (= x!3 Node!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!3 Node!val!1))
;            (not (= x!3 Node!val!2)))))
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_232_ice S1 Node!val!0)
                (inv Model_232_ice S1 Node!val!1)
                (inv Model_232_ice S1 Node!val!2))))
  (or (not a!1)
      (and a!1
           (inv Model_232_ice S2 Node!val!0)
           (inv Model_232_ice S2 Node!val!1)
           (inv Model_232_ice S2 Node!val!2)))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; <invar_synth.utils.qexpr.QExpr object at 0x7fba7f3b4340>
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_233_ice,
;                              Epoch_1,
;                              Epoch_1),
;                           Implies(And(le(Model_233_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_233_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_233_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_233_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_233_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_233_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_233_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_233_ice,
;                              zero(Model_233_ice),
;                              Epoch_1),
;                           one(Model_233_ice) !=
;                           zero(Model_233_ice))))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_233_ice,
;                          S1,
;                          zero(Model_233_ice),
;                          first(Model_233_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_233_ice) ==
;                 ep(Model_233_ice, S1, first(Model_233_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_233_ice,
;                        S1,
;                        zero(Model_233_ice),
;                        first(Model_233_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_233_ice,
;                          S1,
;                          zero(Model_233_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_233_ice,
;                        S1,
;                        zero(Model_233_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_233_ice,
;                           S1,
;                           one(Model_233_ice),
;                           Node_1)),
;                transfer(Model_233_ice,
;                         S1,
;                         one(Model_233_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_233_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_233_ice))),
;                transfer(Model_233_ice,
;                         S1,
;                         Epoch_1,
;                         first(Model_233_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_233_ice,
;                       S1,
;                       first(Model_233_ice))),
;                le(Model_233_ice,
;                   one(Model_233_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_233_ice,
;                        S1,
;                        one(Model_233_ice),
;                        first(Model_233_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_233_ice,
;                           S1,
;                           Epoch_1,
;                           first(Model_233_ice))),
;                le(Model_233_ice,
;                   one(Model_233_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             ForAll(Epoch_1,
;                    Or(Not(locked(Model_233_ice,
;                                  S1,
;                                  Epoch_1,
;                                  Node_1)),
;                       transfer(Model_233_ice,
;                                S1,
;                                Epoch_1,
;                                Node_1)))),
;      ForAll(Node_1,
;             Not(And(held(Model_233_ice, S1, Node_1),
;                     zero(Model_233_ice) ==
;                     ep(Model_233_ice, S1, Node_1)))),
;      ForAll(Node_1,
;             Or(Not(Or(Not(one(Model_233_ice) ==
;                           ep(Model_233_ice,
;                              S1,
;                              first(Model_233_ice))),
;                       zero(Model_233_ice) ==
;                       one(Model_233_ice))),
;                transfer(Model_233_ice,
;                         S1,
;                         ep(Model_233_ice,
;                            S1,
;                            first(Model_233_ice)),
;                         first(Model_233_ice)))),
;      ForAll(Node_1,
;             Or(one(Model_233_ice) ==
;                ep(Model_233_ice, S1, first(Model_233_ice)),
;                locked(Model_233_ice,
;                       S1,
;                       ep(Model_233_ice,
;                          S1,
;                          first(Model_233_ice)),
;                       first(Model_233_ice)))),
;      ForAll(Node_1,
;             Not(And(locked(Model_233_ice,
;                            S1,
;                            one(Model_233_ice),
;                            Node_1),
;                     zero(Model_233_ice) ==
;                     ep(Model_233_ice, S1, Node_1))))),
;  ForAll(Node_1,
;         Not(And(zero(Model_233_ice) ==
;                 ep(Model_233_ice, S1, Node_1),
;                 transfer(Model_233_ice,
;                          S1,
;                          one(Model_233_ice),
;                          first(Model_233_ice))))),
;  And(ForAll(Node_1,
;             Not(transfer(Model_233_ice,
;                          S2,
;                          zero(Model_233_ice),
;                          first(Model_233_ice)))),
;      ForAll(Node_1,
;             Not(zero(Model_233_ice) ==
;                 ep(Model_233_ice, S2, first(Model_233_ice)))),
;      ForAll(Node_1,
;             Not(locked(Model_233_ice,
;                        S2,
;                        zero(Model_233_ice),
;                        first(Model_233_ice)))),
;      ForAll(Node_1,
;             Not(transfer(Model_233_ice,
;                          S2,
;                          zero(Model_233_ice),
;                          Node_1))),
;      ForAll(Node_1,
;             Not(locked(Model_233_ice,
;                        S2,
;                        zero(Model_233_ice),
;                        Node_1))),
;      ForAll(Node_1,
;             Or(Not(locked(Model_233_ice,
;                           S2,
;                           one(Model_233_ice),
;                           Node_1)),
;                transfer(Model_233_ice,
;                         S2,
;                         one(Model_233_ice),
;                         Node_1))),
;      ForAll(Epoch_1,
;             Or(Not(locked(Model_233_ice,
;                           S2,
;                           Epoch_1,
;                           first(Model_233_ice))),
;                transfer(Model_233_ice,
;                         S2,
;                         Epoch_1,
;                         first(Model_233_ice)))),
;      ForAll(Epoch_1,
;             Or(Not(Epoch_1 ==
;                    ep(Model_233_ice,
;                       S2,
;                       first(Model_233_ice))),
;                le(Model_233_ice,
;                   one(Model_233_ice),
;                   Epoch_1))),
;      ForAll(Node_1,
;             Not(locked(Model_233_ice,
;                        S2,
;                        one(Model_233_ice),
;                        first(Model_233_ice)))),
;      ForAll(Epoch_1,
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
; ;;   Epoch!val!0 Epoch!val!2 Epoch!val!1 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Epoch!val!0 () Epoch)
; (declare-fun Epoch!val!2 () Epoch)
; (declare-fun Epoch!val!1 () Epoch)
; ;; cardinality constraint:
; (forall ((x Epoch)) (or (= x Epoch!val!0) (= x Epoch!val!2) (= x Epoch!val!1)))
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
; (define-fun S2 () StateId
;   StateId!val!1)
; (define-fun Model_233_ice () ModelId
;   ModelId!val!0)
; (define-fun S1 () StateId
;   StateId!val!0)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   false)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (let ((a!1 (or (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!0)
;                       (not (= x!2 Node!val!2))
;                       (not (= x!2 Node!val!1)))
;                  (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!1)
;                       (not (= x!2 Node!val!2))
;                       (not (= x!2 Node!val!1)))))
;         (a!2 (or (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!1)
;                       (= x!2 Node!val!2)
;                       (not (= x!2 Node!val!1)))
;                  (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!0)
;                       (= x!2 Node!val!2)
;                       (not (= x!2 Node!val!1))))))
;     (ite a!1 Epoch!val!1 (ite a!2 Epoch!val!0 Epoch!val!2))))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!2) (= x!2 Epoch!val!2))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!2))))
; (define-fun first ((x!0 ModelId)) Node
;   Node!val!2)
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!1)))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!1)
;        (= x!2 Epoch!val!0)
;        (not (= x!2 Epoch!val!2))
;        (= x!3 Node!val!2)
;        (not (= x!3 Node!val!1))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!0)
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_233_ice S1 Node!val!0)
                (inv Model_233_ice S1 Node!val!1)
                (inv Model_233_ice S1 Node!val!2))))
  (or (not a!1)
      (and a!1
           (inv Model_233_ice S2 Node!val!0)
           (inv Model_233_ice S2 Node!val!1)
           (inv Model_233_ice S2 Node!val!2)))))

; this one includes assertion of axioms, so no need to assert it again
(assert (forall ((Epoch_1 Epoch))
  (forall ((Epoch_2 Epoch))
    (forall ((Epoch_3 Epoch))
      (and (le Model_DUMMYMODEL Epoch_1 Epoch_1)
           (=> (and (le Model_DUMMYMODEL Epoch_1 Epoch_2)
                    (le Model_DUMMYMODEL Epoch_2 Epoch_3))
               (le Model_DUMMYMODEL Epoch_1 Epoch_3))
           (=> (and (le Model_DUMMYMODEL Epoch_1 Epoch_2)
                    (le Model_DUMMYMODEL Epoch_2 Epoch_1))
               (= Epoch_1 Epoch_2))
           (or (le Model_DUMMYMODEL Epoch_1 Epoch_2)
               (le Model_DUMMYMODEL Epoch_2 Epoch_1))
           (le Model_DUMMYMODEL (zero Model_DUMMYMODEL) Epoch_1)
           (distinct (one Model_DUMMYMODEL) (zero Model_DUMMYMODEL)))))))
(assert (forall ((Node_1 Node))
  (not (transfer Model_DUMMYMODEL
                 DUMMYSTATE
                 (zero Model_DUMMYMODEL)
                 (first Model_DUMMYMODEL)))))
(assert (forall ((Node_1 Node))
  (not (= (zero Model_DUMMYMODEL)
          (ep Model_DUMMYMODEL DUMMYSTATE (first Model_DUMMYMODEL))))))
(assert (forall ((Node_1 Node))
  (not (locked Model_DUMMYMODEL
               DUMMYSTATE
               (zero Model_DUMMYMODEL)
               (first Model_DUMMYMODEL)))))
(assert (forall ((Node_1 Node))
  (not (transfer Model_DUMMYMODEL DUMMYSTATE (zero Model_DUMMYMODEL) Node_1))))
(assert (forall ((Node_1 Node))
  (not (locked Model_DUMMYMODEL DUMMYSTATE (zero Model_DUMMYMODEL) Node_1))))
(assert (forall ((Node_1 Node))
  (or (not (locked Model_DUMMYMODEL DUMMYSTATE (one Model_DUMMYMODEL) Node_1))
      (transfer Model_DUMMYMODEL DUMMYSTATE (one Model_DUMMYMODEL) Node_1))))
(assert (forall ((Epoch_1 Epoch))
  (or (not (locked Model_DUMMYMODEL DUMMYSTATE Epoch_1 (first Model_DUMMYMODEL)))
      (transfer Model_DUMMYMODEL DUMMYSTATE Epoch_1 (first Model_DUMMYMODEL)))))
(assert (forall ((Epoch_1 Epoch))
  (let ((a!1 (not (= Epoch_1
                     (ep Model_DUMMYMODEL DUMMYSTATE (first Model_DUMMYMODEL))))))
    (or a!1 (le Model_DUMMYMODEL (one Model_DUMMYMODEL) Epoch_1)))))
(assert (forall ((Node_1 Node))
  (not (locked Model_DUMMYMODEL
               DUMMYSTATE
               (one Model_DUMMYMODEL)
               (first Model_DUMMYMODEL)))))
(assert (forall ((Epoch_1 Epoch))
  (or (not (locked Model_DUMMYMODEL DUMMYSTATE Epoch_1 (first Model_DUMMYMODEL)))
      (le Model_DUMMYMODEL (one Model_DUMMYMODEL) Epoch_1))))
(assert (forall ((Node_1 Node))
  (forall ((Epoch_1 Epoch))
    (or (not (locked Model_DUMMYMODEL DUMMYSTATE Epoch_1 Node_1))
        (transfer Model_DUMMYMODEL DUMMYSTATE Epoch_1 Node_1)))))
(assert (forall ((Node_1 Node))
  (not (and (held Model_DUMMYMODEL DUMMYSTATE Node_1)
            (= (zero Model_DUMMYMODEL) (ep Model_DUMMYMODEL DUMMYSTATE Node_1))))))
(assert (forall ((Node_1 Node))
  (let ((a!1 (not (= (one Model_DUMMYMODEL)
                     (ep Model_DUMMYMODEL DUMMYSTATE (first Model_DUMMYMODEL))))))
  (let ((a!2 (not (or a!1 (= (zero Model_DUMMYMODEL) (one Model_DUMMYMODEL))))))
    (or a!2
        (transfer Model_DUMMYMODEL
                  DUMMYSTATE
                  (ep Model_DUMMYMODEL DUMMYSTATE (first Model_DUMMYMODEL))
                  (first Model_DUMMYMODEL)))))))
(assert (forall ((Node_1 Node))
  (or (= (one Model_DUMMYMODEL)
         (ep Model_DUMMYMODEL DUMMYSTATE (first Model_DUMMYMODEL)))
      (locked Model_DUMMYMODEL
              DUMMYSTATE
              (ep Model_DUMMYMODEL DUMMYSTATE (first Model_DUMMYMODEL))
              (first Model_DUMMYMODEL)))))
(assert (forall ((Node_1 Node))
  (not (and (locked Model_DUMMYMODEL DUMMYSTATE (one Model_DUMMYMODEL) Node_1)
            (= (zero Model_DUMMYMODEL) (ep Model_DUMMYMODEL DUMMYSTATE Node_1))))))
(assert (not (inv Model_DUMMYMODEL DUMMYSTATE Node!val!0)))

; the following is to assert that we don't get True as an invariant
(declare-fun N1 () Node)
;(assert (not (inv Model_DUMMYMODEL DUMMYSTATE N1)))



(check-sat)
(get-value (inv_b0 inv_b1 inv_b2 inv_b3 inv_b4 inv_b5 inv_b6 inv_b7 inv_b8 inv_b9 inv_b10 inv_b11 inv_b12 inv_b13 inv_b14 inv_b15 inv_b16 inv_b17 inv_b18 inv_b19 inv_b20 inv_b21 inv_b22 inv_b23 inv_b24 inv_b25 inv_b26 inv_b27 inv_b28 inv_b29 inv_b30 inv_b31 inv_b32 inv_b33 inv_b34 inv_b35 inv_b36 inv_b37 inv_b38 inv_b39 inv_b40 inv_b41 inv_b42 inv_b43 inv_b44 inv_b45 inv_b46 inv_b47 inv_b48 inv_b49 inv_b50 inv_b51 inv_b52 inv_b53 inv_b54 inv_b55 inv_b56 inv_b57 inv_b58 inv_b59 inv_b60 inv_b61 inv_b62 inv_b63 inv_b64 inv_b65 inv_b66 inv_b67 inv_b68 inv_b69 inv_b70 inv_b71 inv_b72 inv_b73 inv_b74 inv_b75 inv_b76 inv_b77 inv_b78 inv_b79 inv_b80 inv_b81 inv_b82 inv_b83 inv_b84 inv_b85 inv_b86 inv_b87 inv_b88 inv_b89 inv_b90 inv_b91 inv_b92 inv_b93 inv_b94 inv_b95 inv_b96 inv_b97 inv_b98 inv_b99 inv_b100 inv_b101 inv_b102 inv_b103 inv_b104 inv_b105 inv_b106 inv_b107 inv_b108 inv_b109 inv_b110 inv_b111 inv_b112 inv_b113 inv_b114 inv_b115 inv_b116 inv_b117 inv_b118 inv_b119 inv_b120 inv_b121 inv_b122 inv_b123 inv_b124 inv_b125 inv_b126 inv_b127 inv_b128 inv_b129 inv_b130 inv_b131 inv_b132 inv_b133 inv_b134 inv_b135 inv_b136 inv_b137 inv_b138 inv_b139 inv_b140 inv_b141 inv_b142 inv_b143 inv_b144 inv_b145 inv_b146 inv_b147 inv_b148 inv_b149 inv_b150 inv_b151 inv_b152 inv_b153 inv_b154 inv_b155 inv_b156 inv_b157 inv_b158 inv_b159 inv_b160 inv_b161 inv_b162 inv_b163 inv_b164 inv_b165 inv_b166 inv_b167 inv_b168 inv_b169 inv_b170 inv_b171 inv_b172 inv_b173 inv_b174 inv_b175 inv_b176 inv_b177 inv_b178 inv_b179 inv_b180 inv_b181 inv_b182 inv_b183 inv_b184 inv_b185 inv_b186 inv_b187 inv_b188 inv_b189 inv_b190 inv_b191 inv_b192 inv_b193 inv_b194 inv_b195 inv_b196 inv_b197 inv_b198 inv_b199 inv_b200 inv_b201 inv_b202 inv_b203 inv_b204 inv_b205 inv_b206 inv_b207 inv_b208 inv_b209 inv_b210 inv_b211 inv_b212 inv_b213 inv_b214 inv_b215 inv_b216 inv_b217 inv_b218 inv_b219 inv_b220 inv_b221 inv_b222 inv_b223 inv_b224 inv_b225 inv_b226 inv_b227 inv_b228 inv_b229 inv_b230 inv_b231 inv_b232 inv_b233 inv_b234 inv_b235 inv_b236 inv_b237 inv_b238 inv_b239 inv_b240 inv_b241 inv_b242 inv_b243 inv_b244 inv_b245 inv_b246 inv_b247 inv_b248 inv_b249 inv_b250 inv_b251 inv_b252 inv_b253 inv_b254 inv_b255 inv_b256 inv_b257 inv_b258 inv_b259 inv_b260 inv_b261 inv_b262 inv_b263 inv_b264 inv_b265 inv_b266 inv_b267 inv_b268 inv_b269 inv_b270 inv_b271 inv_b272 inv_b273 inv_b274 inv_b275 inv_b276 inv_b277 inv_b278 inv_b279 inv_b280 inv_b281 inv_b282 inv_b283 inv_b284 inv_b285 inv_b286 inv_b287 inv_b288 inv_b289 inv_b290 inv_b291 inv_b292 inv_b293 inv_b294 inv_b295 inv_b296 inv_b297 inv_b298 inv_b299 inv_b300 inv_b301 inv_b302 inv_b303 inv_b304 inv_b305 inv_b306 inv_b307 inv_b308 inv_b309 inv_b310 inv_b311 inv_b312 inv_b313 inv_b314 inv_b315 inv_b316 inv_b317 inv_b318 inv_b319 inv_b320 inv_b321 inv_b322 inv_b323 inv_b324 inv_b325 inv_b326 inv_b327 inv_b328 inv_b329 inv_b330 inv_b331 inv_b332 inv_b333 inv_b334 inv_b335 inv_b336 inv_b337 inv_b338 inv_b339 inv_b340 inv_b341 inv_b342 inv_b343 inv_b344 inv_b345 inv_b346 inv_b347 inv_b348 inv_b349 inv_b350 inv_b351 inv_b352 inv_b353 inv_b354 inv_b355 inv_b356 inv_b357 inv_b358 inv_b359 inv_b360 inv_b361 inv_b362 inv_b363 inv_b364 inv_b365 inv_b366 inv_b367 inv_b368 inv_b369 inv_b370 inv_b371 inv_b372 inv_b373 inv_b374 inv_b375 inv_b376 inv_b377 inv_b378 inv_b379 inv_b380 inv_b381 inv_b382 inv_b383 inv_b384 inv_b385 inv_b386 inv_b387 inv_b388 inv_b389 inv_b390 inv_b391 inv_b392 inv_b393 inv_b394 inv_b395 inv_b396 inv_b397 inv_b398 inv_b399 inv_b400 inv_b401 inv_b402 inv_b403 inv_b404 inv_b405 inv_b406 inv_b407 inv_b408 inv_b409 inv_b410 inv_b411 inv_b412 inv_b413 inv_b414 inv_b415 inv_b416 inv_b417 inv_b418 inv_b419 inv_b420 inv_b421 inv_b422 inv_b423 inv_b424 inv_b425 inv_b426 inv_b427 inv_b428 inv_b429 inv_b430 inv_b431 inv_b432 inv_b433 inv_b434 inv_b435 inv_b436 inv_b437 inv_b438 inv_b439 inv_b440 inv_b441 inv_b442 inv_b443 inv_b444 inv_b445 inv_b446 inv_b447 inv_b448 inv_b449 inv_b450 inv_b451 inv_b452 inv_b453 inv_b454 inv_b455 inv_b456 inv_b457 inv_b458 inv_b459 inv_b460 inv_b461 inv_b462 inv_b463 inv_b464 inv_b465 inv_b466 inv_b467 inv_b468 inv_b469 inv_b470 inv_b471 inv_b472 inv_b473 inv_b474 inv_b475 inv_b476 inv_b477 inv_b478 inv_b479 inv_b480 inv_b481 inv_b482 inv_b483 inv_b484 inv_b485 inv_b486 inv_b487 inv_b488 inv_b489 inv_b490 inv_b491 inv_b492 inv_b493 inv_b494 inv_b495 inv_b496 inv_b497 inv_b498 inv_b499 inv_b500 inv_b501 inv_b502 inv_b503 inv_b504 inv_b505 inv_b506 inv_b507 inv_b508 inv_b509 inv_b510 inv_b511 inv_b512 inv_b513 inv_b514 inv_b515 inv_b516 inv_b517 inv_b518 inv_b519 inv_b520 inv_b521 inv_b522 inv_b523 inv_b524 inv_b525 inv_b526 inv_b527 inv_b528 inv_b529 inv_b530 inv_b531 inv_b532 inv_b533 inv_b534 inv_b535 inv_b536 inv_b537 inv_b538 inv_b539 inv_b540 inv_b541 inv_b542 inv_b543 inv_b544 inv_b545 inv_b546 inv_b547 inv_b548 inv_b549 inv_b550 inv_b551 inv_b552 inv_b553 inv_b554 inv_b555 inv_b556 inv_b557 inv_b558 inv_b559 inv_b560 inv_b561 inv_b562 inv_b563 inv_b564 inv_b565 inv_b566 inv_b567 inv_b568 inv_b569 inv_b570 inv_b571 inv_b572 inv_b573 inv_b574 inv_b575 inv_b576 inv_b577 inv_b578 inv_b579 inv_b580 inv_b581 inv_b582 inv_b583 inv_b584 inv_b585 inv_b586 inv_b587 inv_b588 inv_b589 inv_b590 inv_b591 inv_b592 inv_b593 inv_b594 inv_b595 inv_b596 inv_b597 inv_b598 inv_b599 inv_b600 inv_b601 inv_b602 inv_b603 inv_b604 inv_b605 inv_b606 inv_b607 inv_b608 inv_b609 inv_b610 inv_b611 inv_b612 inv_b613 inv_b614 inv_b615 inv_b616 inv_b617 inv_b618 inv_b619 inv_b620 inv_b621 inv_b622 inv_b623 inv_b624 inv_b625 inv_b626 inv_b627 inv_b628 inv_b629 inv_b630 inv_b631 inv_b632 inv_b633 inv_b634 inv_b635 inv_b636 inv_b637 inv_b638 inv_b639 inv_b640 inv_b641 inv_b642 inv_b643 inv_b644 inv_b645 inv_b646 inv_b647 inv_b648 inv_b649 inv_b650 inv_b651 inv_b652 inv_b653 inv_b654 inv_b655 inv_b656 inv_b657 inv_b658 inv_b659 inv_b660 inv_b661 inv_b662 inv_b663 inv_b664 inv_b665 inv_b666 inv_b667 inv_b668 inv_b669 inv_b670 inv_b671 inv_b672 inv_b673 inv_b674 inv_b675 inv_b676 inv_b677 inv_b678 inv_b679 inv_b680 inv_b681 inv_b682 inv_b683 inv_b684 inv_b685 inv_b686 inv_b687 inv_b688 inv_b689 inv_b690 inv_b691 inv_b692 inv_b693 inv_b694 inv_b695 inv_b696 inv_b697 inv_b698 inv_b699 inv_b700 inv_b701 inv_b702 inv_b703 inv_b704 inv_b705 inv_b706 inv_b707 inv_b708 inv_b709 inv_b710 inv_b711 inv_b712 inv_b713 inv_b714 inv_b715 inv_b716 inv_b717 inv_b718 inv_b719 inv_b720 inv_b721 inv_b722 inv_b723 inv_b724 inv_b725 inv_b726 inv_b727 inv_b728 inv_b729 inv_b730 inv_b731 inv_b732 inv_b733 inv_b734 inv_b735 inv_b736 inv_b737 inv_b738 inv_b739 inv_b740 inv_b741 inv_b742 inv_b743 inv_b744 inv_b745 inv_b746 inv_b747 inv_b748 inv_b749 inv_b750 inv_b751 inv_b752 inv_b753 inv_b754 inv_b755 inv_b756 inv_b757 inv_b758 inv_b759 inv_b760 inv_b761 inv_b762 inv_b763 inv_b764 inv_b765 inv_b766 inv_b767 inv_b768 inv_b769 inv_b770 inv_b771 inv_b772 inv_b773 inv_b774 inv_b775 inv_b776 inv_b777 inv_b778 inv_b779 inv_b780 inv_b781 inv_b782 inv_b783 inv_b784 inv_b785 inv_b786 inv_b787 inv_b788 inv_b789 inv_b790 inv_b791 inv_b792 inv_b793 inv_b794 inv_b795 inv_b796 inv_b797 inv_b798 inv_b799 inv_b800 inv_b801 inv_b802 inv_b803 inv_b804 inv_b805 inv_b806 inv_b807 inv_b808 inv_b809 inv_b810 inv_b811 inv_b812 inv_b813 inv_b814 inv_b815 inv_b816 inv_b817 inv_b818 inv_b819 inv_b820 inv_b821 inv_b822 inv_b823 inv_b824 inv_b825 inv_b826 inv_b827 inv_b828 inv_b829 inv_b830 inv_b831 inv_b832 inv_b833 inv_b834 inv_b835 inv_b836 inv_b837 inv_b838 inv_b839 inv_b840 inv_b841 inv_b842 inv_b843 inv_b844 inv_b845 inv_b846 inv_b847 inv_b848 inv_b849 inv_b850 inv_b851 inv_b852 inv_b853 inv_b854 inv_b855 inv_b856 inv_b857 inv_b858 inv_b859 inv_b860 inv_b861 inv_b862 inv_b863 inv_b864 inv_b865 inv_b866 inv_b867 inv_b868 inv_b869 inv_b870 inv_b871 inv_b872 inv_b873 inv_b874 inv_b875 inv_b876 inv_b877 inv_b878 inv_b879 inv_b880 inv_b881 inv_b882 inv_b883 inv_b884 inv_b885 inv_b886 inv_b887 inv_b888 inv_b889 inv_b890 inv_b891 inv_b892 inv_b893 inv_b894 inv_b895 inv_b896 inv_b897 inv_b898 inv_b899 inv_b900 inv_b901 inv_b902 inv_b903 inv_b904 inv_b905 inv_b906 inv_b907 inv_b908 inv_b909 inv_b910 inv_b911 inv_b912 inv_b913 inv_b914 inv_b915 inv_b916 inv_b917 inv_b918 inv_b919 inv_b920 inv_b921 inv_b922 inv_b923 inv_b924 inv_b925 inv_b926 inv_b927 inv_b928 inv_b929 inv_b930 inv_b931 inv_b932 inv_b933 inv_b934 inv_b935 inv_b936 inv_b937 inv_b938 inv_b939 inv_b940 inv_b941 inv_b942 inv_b943 inv_b944 inv_b945 inv_b946 inv_b947 inv_b948 inv_b949 inv_b950 inv_b951 inv_b952 inv_b953 inv_b954 inv_b955 inv_b956 inv_b957 inv_b958 inv_b959 inv_b960 inv_b961 inv_b962 inv_b963 inv_b964 inv_b965 inv_b966 inv_b967 inv_b968 inv_b969 inv_b970 inv_b971 inv_b972 inv_b973 inv_b974 inv_b975 inv_b976 inv_b977 inv_b978 inv_b979 inv_b980 inv_b981 inv_b982 inv_b983 inv_b984 inv_b985 inv_b986 inv_b987 inv_b988 inv_b989 inv_b990 inv_b991 inv_b992 inv_b993 inv_b994 inv_b995 inv_b996 inv_b997 inv_b998 inv_b999 inv_b1000 inv_b1001 inv_b1002 inv_b1003 inv_b1004 inv_b1005 inv_b1006 inv_b1007 inv_b1008 inv_b1009 inv_b1010 inv_b1011 inv_b1012 inv_b1013 inv_b1014 inv_b1015 inv_b1016 inv_b1017 inv_b1018 inv_b1019 inv_b1020 inv_b1021 inv_b1022 inv_b1023 inv_b1024 inv_b1025 inv_b1026 inv_b1027 inv_b1028 inv_b1029 inv_b1030 inv_b1031 inv_b1032 inv_b1033 inv_b1034 inv_b1035 inv_b1036 inv_b1037 inv_b1038 inv_b1039 inv_b1040 inv_b1041 inv_b1042 inv_b1043 inv_b1044 inv_b1045 inv_b1046 inv_b1047 inv_b1048 inv_b1049 inv_b1050 inv_b1051 inv_b1052 inv_b1053 inv_b1054 inv_b1055 inv_b1056 inv_b1057 inv_b1058 inv_b1059 inv_b1060 inv_b1061 inv_b1062 inv_b1063 inv_b1064 inv_b1065 inv_b1066 inv_b1067 inv_b1068 inv_b1069 inv_b1070 inv_b1071 inv_b1072 inv_b1073 inv_b1074 inv_b1075 inv_b1076 inv_b1077 inv_b1078 inv_b1079 inv_b1080 inv_b1081 inv_b1082 inv_b1083 inv_b1084 inv_b1085 inv_b1086 inv_b1087 inv_b1088 inv_b1089 inv_b1090 inv_b1091 inv_b1092 inv_b1093 inv_b1094 inv_b1095 inv_b1096 inv_b1097 inv_b1098 inv_b1099 inv_b1100 inv_b1101 inv_b1102 inv_b1103 inv_b1104 inv_b1105 inv_b1106 inv_b1107 inv_b1108 inv_b1109 inv_b1110 inv_b1111 inv_b1112 inv_b1113 inv_b1114 inv_b1115 inv_b1116 inv_b1117 inv_b1118 inv_b1119 inv_b1120 inv_b1121 inv_b1122 inv_b1123 inv_b1124 inv_b1125 inv_b1126 inv_b1127 inv_b1128 inv_b1129 inv_b1130 inv_b1131 inv_b1132 inv_b1133 inv_b1134 inv_b1135 inv_b1136 inv_b1137 inv_b1138 inv_b1139 inv_b1140 inv_b1141 inv_b1142 inv_b1143 inv_b1144 inv_b1145 inv_b1146 inv_b1147 inv_b1148 inv_b1149 inv_b1150 inv_b1151 inv_b1152 inv_b1153 inv_b1154 inv_b1155 inv_b1156 inv_b1157 inv_b1158 inv_b1159 inv_b1160 inv_b1161 inv_b1162 inv_b1163 inv_b1164 inv_b1165 inv_b1166 inv_b1167 inv_b1168 inv_b1169 inv_b1170 inv_b1171 inv_b1172 inv_b1173 inv_b1174 inv_b1175 inv_b1176 inv_b1177 inv_b1178 inv_b1179 inv_b1180 inv_b1181 inv_b1182 inv_b1183 inv_b1184 inv_b1185 inv_b1186 inv_b1187 inv_b1188 inv_b1189 inv_b1190 inv_b1191 inv_b1192 inv_b1193 inv_b1194 inv_b1195 inv_b1196 inv_b1197 inv_b1198 inv_b1199 inv_b1200 inv_b1201 inv_b1202 inv_b1203 inv_b1204 inv_b1205 inv_b1206 inv_b1207 inv_b1208 inv_b1209 inv_b1210 inv_b1211 inv_b1212 inv_b1213 inv_b1214 inv_b1215 inv_b1216 inv_b1217 inv_b1218 inv_b1219 inv_b1220 inv_b1221 inv_b1222 inv_b1223 inv_b1224 inv_b1225 inv_b1226 inv_b1227 inv_b1228 inv_b1229 inv_b1230 inv_b1231 inv_b1232 inv_b1233 inv_b1234 inv_b1235 inv_b1236 inv_b1237 inv_b1238 inv_b1239 inv_b1240 inv_b1241 inv_b1242 inv_b1243 inv_b1244 inv_b1245 inv_b1246 inv_b1247 inv_b1248 inv_b1249 inv_b1250 inv_b1251 inv_b1252 inv_b1253 inv_b1254 inv_b1255 inv_b1256 inv_b1257 inv_b1258 inv_b1259 inv_b1260 inv_b1261 inv_b1262 inv_b1263 inv_b1264 inv_b1265 inv_b1266 inv_b1267 inv_b1268 inv_b1269 inv_b1270 inv_b1271 inv_b1272 inv_b1273 inv_b1274 inv_b1275 inv_b1276 inv_b1277 inv_b1278 inv_b1279 inv_b1280 inv_b1281 inv_b1282 inv_b1283 inv_b1284 inv_b1285 inv_b1286 inv_b1287 inv_b1288 inv_b1289 inv_b1290 inv_b1291 inv_b1292 inv_b1293 inv_b1294 inv_b1295 inv_b1296 inv_b1297 inv_b1298 inv_b1299 inv_b1300 inv_b1301 inv_b1302 inv_b1303 inv_b1304 inv_b1305 inv_b1306 inv_b1307 inv_b1308 inv_b1309 inv_b1310 inv_b1311 inv_b1312 inv_b1313 inv_b1314 inv_b1315 inv_b1316 inv_b1317 inv_b1318 inv_b1319 inv_b1320 inv_b1321 inv_b1322 inv_b1323 inv_b1324 inv_b1325 inv_b1326 inv_b1327 inv_b1328 inv_b1329 inv_b1330 inv_b1331 inv_b1332 inv_b1333 inv_b1334 inv_b1335 inv_b1336 inv_b1337 inv_b1338 inv_b1339 inv_b1340 inv_b1341 inv_b1342 inv_b1343 inv_b1344 inv_b1345 inv_b1346 inv_b1347 inv_b1348 inv_b1349 inv_b1350 inv_b1351 inv_b1352 inv_b1353 inv_b1354 inv_b1355 inv_b1356 inv_b1357 inv_b1358 inv_b1359 inv_b1360 inv_b1361 inv_b1362 inv_b1363 inv_b1364 inv_b1365 inv_b1366 inv_b1367 inv_b1368 inv_b1369 inv_b1370 inv_b1371 inv_b1372 inv_b1373 inv_b1374 inv_b1375 inv_b1376 inv_b1377 inv_b1378 inv_b1379 inv_b1380 inv_b1381 inv_b1382 inv_b1383 inv_b1384 inv_b1385 inv_b1386 inv_b1387 inv_b1388 inv_b1389 inv_b1390 inv_b1391 inv_b1392 inv_b1393 inv_b1394 inv_b1395 inv_b1396 inv_b1397 inv_b1398 inv_b1399 inv_b1400 inv_b1401 inv_b1402 inv_b1403 inv_b1404 inv_b1405 inv_b1406 inv_b1407 inv_b1408 inv_b1409 inv_b1410 inv_b1411 inv_b1412 inv_b1413 inv_b1414 inv_b1415 inv_b1416 inv_b1417 inv_b1418 inv_b1419 inv_b1420 inv_b1421 inv_b1422 inv_b1423 inv_b1424 inv_b1425 inv_b1426 inv_b1427 inv_b1428 inv_b1429 inv_b1430 inv_b1431 inv_b1432 inv_b1433 inv_b1434 inv_b1435 inv_b1436 inv_b1437 inv_b1438 inv_b1439 inv_b1440 inv_b1441 inv_b1442 inv_b1443 inv_b1444 inv_b1445 inv_b1446 inv_b1447 inv_b1448 inv_b1449 inv_b1450 inv_b1451 inv_b1452 inv_b1453 inv_b1454 inv_b1455 inv_b1456 inv_b1457 inv_b1458 inv_b1459 inv_b1460 inv_b1461 inv_b1462 inv_b1463 inv_b1464 inv_b1465 inv_b1466 inv_b1467 inv_b1468 inv_b1469 inv_b1470 inv_b1471 inv_b1472 inv_b1473 inv_b1474 inv_b1475 inv_b1476 inv_b1477 inv_b1478 inv_b1479 inv_b1480 inv_b1481 inv_b1482 inv_b1483 inv_b1484 inv_b1485 inv_b1486 inv_b1487 inv_b1488 inv_b1489 inv_b1490 inv_b1491 inv_b1492 inv_b1493 inv_b1494 inv_b1495 inv_b1496 inv_b1497 inv_b1498 inv_b1499 inv_b1500 inv_b1501 inv_b1502 inv_b1503 inv_b1504 inv_b1505 inv_b1506 inv_b1507 inv_b1508 inv_b1509 inv_b1510 inv_b1511 inv_b1512 inv_b1513 inv_b1514 inv_b1515 inv_b1516 inv_b1517 inv_b1518 inv_b1519 inv_b1520 inv_b1521 inv_b1522 inv_b1523 inv_b1524 inv_b1525 inv_b1526 inv_b1527 inv_b1528 inv_b1529 inv_b1530 inv_b1531 inv_b1532 inv_b1533 inv_b1534 inv_b1535 inv_b1536 inv_b1537 inv_b1538 inv_b1539 inv_b1540 inv_b1541 inv_b1542 inv_b1543 inv_b1544 inv_b1545 inv_b1546 inv_b1547 inv_b1548 inv_b1549 inv_b1550 inv_b1551 inv_b1552 inv_b1553 inv_b1554 inv_b1555 inv_b1556 inv_b1557 inv_b1558 inv_b1559 inv_b1560 inv_b1561 inv_b1562 inv_b1563 inv_b1564 inv_b1565 inv_b1566 inv_b1567 inv_b1568 inv_b1569 inv_b1570 inv_b1571 inv_b1572 inv_b1573 inv_b1574 inv_b1575 inv_b1576 inv_b1577 inv_b1578 inv_b1579 inv_b1580 inv_b1581 inv_b1582 inv_b1583 inv_b1584 inv_b1585 inv_b1586 inv_b1587 inv_b1588 inv_b1589 inv_b1590 inv_b1591 inv_b1592 inv_b1593 inv_b1594 inv_b1595 inv_b1596 inv_b1597 inv_b1598 inv_b1599 inv_b1600 inv_b1601 inv_b1602 inv_b1603 inv_b1604 inv_b1605 inv_b1606 inv_b1607 inv_b1608 inv_b1609 inv_b1610 inv_b1611 inv_b1612 inv_b1613 inv_b1614 inv_b1615 inv_b1616 inv_b1617 inv_b1618 inv_b1619 inv_b1620 inv_b1621 inv_b1622 inv_b1623 inv_b1624 inv_b1625 inv_b1626 inv_b1627 inv_b1628 inv_b1629 inv_b1630 inv_b1631 inv_b1632 inv_b1633 inv_b1634 inv_b1635 inv_b1636 inv_b1637 inv_b1638 inv_b1639 inv_b1640 inv_b1641 inv_b1642 inv_b1643 inv_b1644 inv_b1645 inv_b1646 inv_b1647 inv_b1648 inv_b1649 inv_b1650 inv_b1651 inv_b1652 inv_b1653 inv_b1654 inv_b1655 inv_b1656 inv_b1657 inv_b1658 inv_b1659 inv_b1660 inv_b1661 inv_b1662 inv_b1663 inv_b1664 inv_b1665 inv_b1666 inv_b1667 inv_b1668 inv_b1669 inv_b1670 inv_b1671 inv_b1672 inv_b1673 inv_b1674 inv_b1675 inv_b1676 inv_b1677 inv_b1678 inv_b1679 inv_b1680 inv_b1681 inv_b1682 inv_b1683 inv_b1684 inv_b1685 inv_b1686 inv_b1687 inv_b1688 inv_b1689 inv_b1690 inv_b1691 inv_b1692 inv_b1693 inv_b1694 inv_b1695 inv_b1696 inv_b1697 inv_b1698 inv_b1699 inv_b1700 inv_b1701 inv_b1702 inv_b1703 inv_b1704 inv_b1705 inv_b1706 inv_b1707 inv_b1708 inv_b1709 inv_b1710 inv_b1711 inv_b1712 inv_b1713 inv_b1714 inv_b1715 inv_b1716 inv_b1717 inv_b1718 inv_b1719 inv_b1720 inv_b1721 inv_b1722 inv_b1723 inv_b1724 inv_b1725 inv_b1726 inv_b1727 inv_b1728 inv_b1729 inv_b1730 inv_b1731 inv_b1732 inv_b1733 inv_b1734 inv_b1735 inv_b1736 inv_b1737 inv_b1738 inv_b1739))