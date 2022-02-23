
(set-logic ALL)

(set-option :random-seed 123)

(declare-datatypes ( (Node 0) ) ((
(Node!val!0) 
(Node!val!1) 
)))

(declare-datatypes ( (Epoch 0) ) ((
(Epoch!val!2) 
(Epoch!val!1) 
(Epoch!val!0) 
(Epoch!val!4) 
(Epoch!val!3) 
)))

(declare-datatypes ( (ModelId 0) ) ((
(Model_DUMMYMODEL) 
(Model_48_pos) 
(Model_1_pos) 
(Model_41_pos) 
(Model_77_ice) 
(Model_47_pos) 
(Model_44_pos) 
(Model_36_pos) 
(Model_0_pos) 
(Model_39_pos) 
(Model_42_pos) 
(Model_46_pos) 
(Model_51_pos) 
(Model_38_pos) 
(Model_5_pos) 
(Model_43_pos) 
(Model_37_pos) 
(Model_50_pos) 
(Model_49_pos) 
(Model_2_pos) 
(Model_45_pos) 
(Model_40_pos) 
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
    (ite (= a0 Model_5_pos)
        (ite (= a2 Node!val!0)
            Epoch!val!2
;        if a2 IN [Node!val!1, ] 
            Epoch!val!1
        )
    (ite (= a0 Model_37_pos)
        (ite (= a2 Node!val!0)
            Epoch!val!0
;        if a2 IN [Node!val!1, ] 
            Epoch!val!2
        )
    (ite (= a0 Model_38_pos)
        (ite (= a2 Node!val!0)
            Epoch!val!0
;        if a2 IN [Node!val!1, ] 
            Epoch!val!2
        )
    (ite (= a0 Model_41_pos)
        (ite (= a2 Node!val!0)
            Epoch!val!0
;        if a2 IN [Node!val!1, ] 
            Epoch!val!2
        )
    (ite (= a0 Model_42_pos)
        (ite (= a2 Node!val!0)
            Epoch!val!0
;        if a2 IN [Node!val!1, ] 
            Epoch!val!2
        )
    (ite (= a0 Model_43_pos)
        (ite (= a2 Node!val!0)
            Epoch!val!0
;        if a2 IN [Node!val!1, ] 
            Epoch!val!2
        )
    (ite (= a0 Model_44_pos)
        (ite (= a2 Node!val!0)
            Epoch!val!0
;        if a2 IN [Node!val!1, ] 
            Epoch!val!2
        )
    (ite (= a0 Model_45_pos)
        (ite (= a2 Node!val!0)
            Epoch!val!0
;        if a2 IN [Node!val!1, ] 
            Epoch!val!2
        )
    (ite (= a0 Model_77_ice)
        (ite (= a1 S1)
            Epoch!val!1
;        if a1 IN [S2, ] 
            Epoch!val!2
        )
    (ite (= a0 Model_0_pos)
        Epoch!val!1
    (ite (= a0 Model_40_pos)
        Epoch!val!3
    (ite (or (= a0 Model_51_pos) (= a0 Model_46_pos) (= a0 Model_1_pos) (= a0 Model_50_pos) )
        Epoch!val!0
;    if a0 IN [Model_48_pos, Model_47_pos, Model_49_pos, Model_36_pos, Model_39_pos, Model_2_pos, ] 
        Epoch!val!2
    ))))))))))))
))

(declare-fun held_dummy (ModelId StateId Node) Bool)
(define-fun held ((a0 ModelId) (a1 StateId) (a2 Node)) Bool
(ite (= a0 Model_DUMMYMODEL) (held_dummy a0 a1 a2 )
    (ite (= a0 Model_5_pos)
        (ite (= a2 Node!val!0)
            false
;        if a2 IN [Node!val!1, ] 
            true
        )
    (ite (= a0 Model_37_pos)
        (ite (= a2 Node!val!0)
            false
;        if a2 IN [Node!val!1, ] 
            true
        )
    (ite (= a0 Model_38_pos)
        (ite (= a2 Node!val!0)
            false
;        if a2 IN [Node!val!1, ] 
            true
        )
    (ite (= a0 Model_41_pos)
        (ite (= a2 Node!val!0)
            false
;        if a2 IN [Node!val!1, ] 
            true
        )
    (ite (= a0 Model_42_pos)
        (ite (= a2 Node!val!0)
            false
;        if a2 IN [Node!val!1, ] 
            true
        )
    (ite (= a0 Model_43_pos)
        (ite (= a2 Node!val!0)
            false
;        if a2 IN [Node!val!1, ] 
            true
        )
    (ite (= a0 Model_44_pos)
        (ite (= a2 Node!val!0)
            false
;        if a2 IN [Node!val!1, ] 
            true
        )
    (ite (= a0 Model_45_pos)
        (ite (= a2 Node!val!0)
            false
;        if a2 IN [Node!val!1, ] 
            true
        )
    (ite (= a0 Model_77_ice)
        (ite (= a1 S1)
            false
;        if a1 IN [S2, ] 
            true
        )
;    if a0 IN [Model_48_pos, Model_51_pos, Model_47_pos, Model_49_pos, Model_36_pos, Model_1_pos, Model_0_pos, Model_39_pos, Model_40_pos, Model_50_pos, Model_2_pos, Model_46_pos, ] 
        true
    )))))))))
))

(declare-fun transfer_dummy (ModelId StateId Epoch Node) Bool)
(define-fun transfer ((a0 ModelId) (a1 StateId) (a2 Epoch) (a3 Node)) Bool
(ite (= a0 Model_DUMMYMODEL) (transfer_dummy a0 a1 a2 a3 )
    (ite (= a1 S1)
        (ite (= a2 Epoch!val!0)
            false
;        if a2 IN [Epoch!val!2, Epoch!val!1, ] 
            true
        )
    (ite (= a1 S2)
        (ite (= a2 Epoch!val!0)
            false
;        if a2 IN [Epoch!val!2, Epoch!val!1, ] 
            true
        )
;    if a1 IN [init, ] 
        false
    ))
))

(declare-fun locked_dummy (ModelId StateId Epoch Node) Bool)
(define-fun locked ((a0 ModelId) (a1 StateId) (a2 Epoch) (a3 Node)) Bool
(ite (= a0 Model_DUMMYMODEL) (locked_dummy a0 a1 a2 a3 )
    (ite (= a1 S2)
        (ite (= a2 Epoch!val!2)
            true
;        if a2 IN [Epoch!val!0, Epoch!val!1, ] 
            false
        )
;    if a1 IN [S1, init, ] 
        false
    )
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
        (ite (= a0 Model_1_pos)
            (ite (= a2 Epoch!val!0)
                true
;            if a2 IN [Epoch!val!2, Epoch!val!1, ] 
                false
            )
        (ite (= a0 Model_5_pos)
            (ite (= a2 Epoch!val!0)
                true
;            if a2 IN [Epoch!val!2, Epoch!val!1, ] 
                false
            )
        (ite (= a0 Model_36_pos)
            (ite (= a2 Epoch!val!1)
                false
;            if a2 IN [Epoch!val!0, Epoch!val!2, ] 
                true
            )
        (ite (= a0 Model_39_pos)
            (ite (or (= a2 Epoch!val!4) (= a2 Epoch!val!1) )
                false
;            if a2 IN [Epoch!val!0, Epoch!val!2, Epoch!val!3, ] 
                true
            )
        (ite (= a0 Model_40_pos)
            (ite (or (= a2 Epoch!val!0) (= a2 Epoch!val!2) )
                true
;            if a2 IN [Epoch!val!4, Epoch!val!1, Epoch!val!3, ] 
                false
            )
        (ite (= a0 Model_46_pos)
            (ite (= a2 Epoch!val!4)
                false
;            if a2 IN [Epoch!val!0, Epoch!val!1, Epoch!val!2, Epoch!val!3, ] 
                true
            )
        (ite (= a0 Model_47_pos)
            (ite (or (= a2 Epoch!val!4) (= a2 Epoch!val!1) )
                false
;            if a2 IN [Epoch!val!0, Epoch!val!2, Epoch!val!3, ] 
                true
            )
        (ite (= a0 Model_48_pos)
            (ite (or (= a2 Epoch!val!0) (= a2 Epoch!val!3) )
                true
;            if a2 IN [Epoch!val!4, Epoch!val!2, Epoch!val!1, ] 
                false
            )
        (ite (= a0 Model_49_pos)
            (ite (or (= a2 Epoch!val!4) (= a2 Epoch!val!2) )
                false
;            if a2 IN [Epoch!val!0, Epoch!val!1, Epoch!val!3, ] 
                true
            )
        (ite (= a0 Model_50_pos)
            (ite (= a2 Epoch!val!0)
                true
;            if a2 IN [Epoch!val!1, Epoch!val!2, Epoch!val!3, ] 
                false
            )
        (ite (= a0 Model_51_pos)
            (ite (= a2 Epoch!val!3)
                false
;            if a2 IN [Epoch!val!0, Epoch!val!2, Epoch!val!1, ] 
                true
            )
;        if a0 IN [Model_38_pos, Model_77_ice, Model_44_pos, Model_43_pos, Model_41_pos, Model_45_pos, Model_37_pos, Model_2_pos, Model_42_pos, ] 
            true
        ))))))))))))
    (ite (= a1 Epoch!val!2)
        (ite (= a2 Epoch!val!0)
            (ite (or (= a0 Model_48_pos) (= a0 Model_5_pos) (= a0 Model_1_pos) (= a0 Model_0_pos) (= a0 Model_50_pos) (= a0 Model_49_pos) )
                true
;            if a0 IN [Model_51_pos, Model_47_pos, Model_38_pos, Model_77_ice, Model_44_pos, Model_36_pos, Model_43_pos, Model_41_pos, Model_45_pos, Model_39_pos, Model_37_pos, Model_40_pos, Model_2_pos, Model_42_pos, Model_46_pos, ] 
                false
            )
        (ite (= a2 Epoch!val!1)
            (ite (or (= a0 Model_47_pos) (= a0 Model_36_pos) (= a0 Model_43_pos) (= a0 Model_45_pos) (= a0 Model_39_pos) (= a0 Model_37_pos) (= a0 Model_40_pos) (= a0 Model_2_pos) (= a0 Model_77_ice) )
                false
;            if a0 IN [Model_48_pos, Model_51_pos, Model_38_pos, Model_5_pos, Model_44_pos, Model_1_pos, Model_0_pos, Model_41_pos, Model_50_pos, Model_49_pos, Model_42_pos, Model_46_pos, ] 
                true
            )
        (ite (= a2 Epoch!val!3)
            (ite (or (= a0 Model_48_pos) (= a0 Model_49_pos) )
                true
;            if a0 IN [Model_51_pos, Model_47_pos, Model_39_pos, Model_40_pos, Model_50_pos, Model_46_pos, ] 
                false
            )
        (ite (= a2 Epoch!val!2)
            true
;        if a2 IN [Epoch!val!4, ] 
            false
        ))))
    (ite (= a1 Epoch!val!1)
        (ite (= a2 Epoch!val!0)
            (ite (or (= a0 Model_48_pos) (= a0 Model_47_pos) (= a0 Model_5_pos) (= a0 Model_36_pos) (= a0 Model_1_pos) (= a0 Model_0_pos) (= a0 Model_39_pos) (= a0 Model_40_pos) (= a0 Model_50_pos) )
                true
;            if a0 IN [Model_51_pos, Model_38_pos, Model_77_ice, Model_44_pos, Model_49_pos, Model_43_pos, Model_41_pos, Model_45_pos, Model_37_pos, Model_2_pos, Model_42_pos, Model_46_pos, ] 
                false
            )
        (ite (= a2 Epoch!val!2)
            (ite (or (= a0 Model_47_pos) (= a0 Model_36_pos) (= a0 Model_43_pos) (= a0 Model_45_pos) (= a0 Model_39_pos) (= a0 Model_37_pos) (= a0 Model_40_pos) (= a0 Model_2_pos) (= a0 Model_77_ice) )
                true
;            if a0 IN [Model_48_pos, Model_51_pos, Model_38_pos, Model_5_pos, Model_44_pos, Model_1_pos, Model_0_pos, Model_41_pos, Model_50_pos, Model_49_pos, Model_42_pos, Model_46_pos, ] 
                false
            )
        (ite (= a2 Epoch!val!3)
            (ite (or (= a0 Model_51_pos) (= a0 Model_46_pos) (= a0 Model_50_pos) )
                false
;            if a0 IN [Model_48_pos, Model_47_pos, Model_39_pos, Model_40_pos, Model_49_pos, ] 
                true
            )
        (ite (= a2 Epoch!val!1)
            true
;        if a2 IN [Epoch!val!4, ] 
            false
        ))))
    (ite (= a1 Epoch!val!3)
        (ite (= a2 Epoch!val!0)
            (ite (or (= a0 Model_51_pos) (= a0 Model_40_pos) (= a0 Model_50_pos) )
                true
;            if a0 IN [Model_48_pos, Model_47_pos, Model_39_pos, Model_49_pos, Model_46_pos, ] 
                false
            )
        (ite (= a2 Epoch!val!2)
            (ite (or (= a0 Model_48_pos) (= a0 Model_49_pos) )
                false
;            if a0 IN [Model_51_pos, Model_47_pos, Model_39_pos, Model_40_pos, Model_50_pos, Model_46_pos, ] 
                true
            )
        (ite (= a2 Epoch!val!1)
            (ite (or (= a0 Model_51_pos) (= a0 Model_46_pos) (= a0 Model_50_pos) )
                true
;            if a0 IN [Model_48_pos, Model_47_pos, Model_39_pos, Model_40_pos, Model_49_pos, ] 
                false
            )
        (ite (= a2 Epoch!val!3)
            true
;        if a2 IN [Epoch!val!4, ] 
            false
        ))))
;    if a1 IN [Epoch!val!4, ] 
        true
    ))))
))

(declare-fun zero_dummy (ModelId) Epoch)
(define-fun zero ((a0 ModelId)) Epoch
(ite (= a0 Model_DUMMYMODEL) (zero_dummy a0 )
    (ite (= a0 Model_36_pos)
        Epoch!val!1
    (ite (or (= a0 Model_51_pos) (= a0 Model_50_pos) )
        Epoch!val!3
    (ite (or (= a0 Model_5_pos) (= a0 Model_1_pos) (= a0 Model_0_pos) )
        Epoch!val!2
    (ite (or (= a0 Model_48_pos) (= a0 Model_47_pos) (= a0 Model_39_pos) (= a0 Model_40_pos) (= a0 Model_49_pos) (= a0 Model_46_pos) )
        Epoch!val!4
;    if a0 IN [Model_38_pos, Model_77_ice, Model_44_pos, Model_43_pos, Model_41_pos, Model_45_pos, Model_37_pos, Model_2_pos, Model_42_pos, ] 
        Epoch!val!0
    ))))
))

(declare-fun one_dummy (ModelId) Epoch)
(define-fun one ((a0 ModelId)) Epoch
(ite (= a0 Model_DUMMYMODEL) (one_dummy a0 )
    (ite (= a0 Model_40_pos)
        Epoch!val!3
    (ite (or (= a0 Model_5_pos) (= a0 Model_77_ice) (= a0 Model_0_pos) )
        Epoch!val!1
    (ite (or (= a0 Model_51_pos) (= a0 Model_46_pos) (= a0 Model_1_pos) (= a0 Model_50_pos) )
        Epoch!val!0
;    if a0 IN [Model_48_pos, Model_47_pos, Model_38_pos, Model_44_pos, Model_49_pos, Model_36_pos, Model_43_pos, Model_41_pos, Model_45_pos, Model_39_pos, Model_37_pos, Model_2_pos, Model_42_pos, ] 
        Epoch!val!2
    )))
))

(declare-fun first_dummy (ModelId) Node)
(define-fun first ((a0 ModelId)) Node
(ite (= a0 Model_DUMMYMODEL) (first_dummy a0 )
    (ite (or (= a0 Model_38_pos) (= a0 Model_5_pos) (= a0 Model_44_pos) (= a0 Model_43_pos) (= a0 Model_41_pos) (= a0 Model_45_pos) (= a0 Model_37_pos) (= a0 Model_42_pos) )
        Node!val!1
;    if a0 IN [Model_48_pos, Model_51_pos, Model_47_pos, Model_49_pos, Model_36_pos, Model_1_pos, Model_0_pos, Model_39_pos, Model_40_pos, Model_50_pos, Model_2_pos, Model_77_ice, Model_46_pos, ] 
        Node!val!0
    )
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

;Declaring functions corresponding to nonterminals
(define-fun inv_Node__2 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b84 
 n1 
 (first m))
)
(define-fun inv_Epoch__3 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b85 
 (zero m) 
 (one m))
)
(define-fun inv_Node__1 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b67 
 n1 
 (first m))
)
(define-fun inv_Node__0 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b97 
 n1 
 (first m))
)
(define-fun inv_Node__4 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b50 
 n1 
 (first m))
)
(define-fun inv_Epoch__11 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b81 
 (zero m) 
 (one m))
)
(define-fun inv_Node__10 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b68 
 n1 
 (first m))
)
(define-fun inv_Epoch__0 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b48 
 (zero m) 
 (one m))
)
(define-fun inv_Node__14 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b54 
 n1 
 (first m))
)
(define-fun inv_Epoch__10 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b79 
 (zero m) 
 (one m))
)
(define-fun inv_Node__3 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b62 
 n1 
 (first m))
)
(define-fun inv_Node__11 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b90 
 n1 
 (first m))
)
(define-fun inv_Epoch__1 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b92 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__7 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b95 
 (zero m) 
 (one m))
)
(define-fun inv_Node__12 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b64 
 n1 
 (first m))
)
(define-fun inv_Epoch__13 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b83 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__17 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b86 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__8 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b82 
 (zero m) 
 (one m))
)
(define-fun inv_Node__16 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b45 
 n1 
 (first m))
)
(define-fun inv_Epoch__16 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b60 
 (zero m) 
 (one m))
)
(define-fun inv_Node__8 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b93 
 n1 
 (first m))
)
(define-fun inv_Epoch__14 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b77 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__2 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b91 
 (zero m) 
 (one m))
)
(define-fun inv_Node__17 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b52 
 n1 
 (first m))
)
(define-fun inv_Node__20 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b88 
 n1 
 (first m))
)
(define-fun inv_Node__5 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b53 
 n1 
 (first m))
)
(define-fun inv_Atom_2 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b3 
 (le m (inv_Epoch__0 m s n1) (inv_Epoch__1 m s n1)) 
 (ite inv_b4 
 (held m s (inv_Node__0 m s n1)) 
 (ite inv_b5 
 (transfer m s (inv_Epoch__2 m s n1) (inv_Node__1 m s n1)) 
 (ite inv_b6 
 (locked m s (inv_Epoch__3 m s n1) (inv_Node__2 m s n1)) 
 (ite inv_b7 
 (= n1 (first m)) 
 (ite inv_b8 
 (= (zero m) (one m)) 
 (ite inv_b9 
 (= (zero m) (ep m s (inv_Node__3 m s n1))) 
 (= (one m) (ep m s (inv_Node__4 m s n1))))))))))
)
(define-fun inv_Epoch__6 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b98 
 (zero m) 
 (one m))
)
(define-fun inv_Node__26 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b69 
 n1 
 (first m))
)
(define-fun inv_Node__19 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b49 
 n1 
 (first m))
)
(define-fun inv_Epoch__15 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b57 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__12 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b87 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__9 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b46 
 (zero m) 
 (one m))
)
(define-fun inv_Node__13 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b59 
 n1 
 (first m))
)
(define-fun inv_Epoch__19 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b47 
 (zero m) 
 (one m))
)
(define-fun inv_Node__22 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b78 
 n1 
 (first m))
)
(define-fun inv_Epoch__23 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b89 
 (zero m) 
 (one m))
)
(define-fun inv_Node__29 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b63 
 n1 
 (first m))
)
(define-fun inv_Epoch__4 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b94 
 (zero m) 
 (one m))
)
(define-fun inv_Node__23 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b61 
 n1 
 (first m))
)
(define-fun inv_Epoch__18 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b80 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__5 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b51 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__22 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b96 
 (zero m) 
 (one m))
)
(define-fun inv_Epoch__21 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b70 
 (zero m) 
 (one m))
)
(define-fun inv_Atom_5 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b17 
 (le m (inv_Epoch__8 m s n1) (inv_Epoch__9 m s n1)) 
 (ite inv_b18 
 (held m s (inv_Node__10 m s n1)) 
 (ite inv_b19 
 (transfer m s (inv_Epoch__10 m s n1) (inv_Node__11 m s n1)) 
 (ite inv_b20 
 (locked m s (inv_Epoch__11 m s n1) (inv_Node__12 m s n1)) 
 (ite inv_b21 
 (= n1 (first m)) 
 (ite inv_b22 
 (= (zero m) (one m)) 
 (ite inv_b23 
 (= (zero m) (ep m s (inv_Node__13 m s n1))) 
 (= (one m) (ep m s (inv_Node__14 m s n1))))))))))
)
(define-fun inv_Epoch__20 ((m ModelId) (s StateId) (n1 Node)) Epoch
(ite inv_b66 
 (zero m) 
 (one m))
)
(define-fun inv_Node__21 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b55 
 n1 
 (first m))
)
(define-fun inv_Node__24 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b76 
 n1 
 (first m))
)
(define-fun inv_Node__18 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b75 
 n1 
 (first m))
)
(define-fun inv_Node__15 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b74 
 n1 
 (first m))
)
(define-fun inv_Atom_0 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b24 
 (le m (inv_Epoch__12 m s n1) (inv_Epoch__13 m s n1)) 
 (ite inv_b25 
 (held m s (inv_Node__15 m s n1)) 
 (ite inv_b26 
 (transfer m s (inv_Epoch__14 m s n1) (inv_Node__16 m s n1)) 
 (ite inv_b27 
 (locked m s (inv_Epoch__15 m s n1) (inv_Node__17 m s n1)) 
 (ite inv_b28 
 (= n1 (first m)) 
 (ite inv_b29 
 (= (zero m) (one m)) 
 (ite inv_b30 
 (= (zero m) (ep m s (inv_Node__18 m s n1))) 
 (= (one m) (ep m s (inv_Node__19 m s n1))))))))))
)
(define-fun inv_Node__6 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b72 
 n1 
 (first m))
)
(define-fun inv_Node__7 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b71 
 n1 
 (first m))
)
(define-fun inv_Atom_3 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b31 
 (le m (inv_Epoch__16 m s n1) (inv_Epoch__17 m s n1)) 
 (ite inv_b32 
 (held m s (inv_Node__20 m s n1)) 
 (ite inv_b33 
 (transfer m s (inv_Epoch__18 m s n1) (inv_Node__21 m s n1)) 
 (ite inv_b34 
 (locked m s (inv_Epoch__19 m s n1) (inv_Node__22 m s n1)) 
 (ite inv_b35 
 (= n1 (first m)) 
 (ite inv_b36 
 (= (zero m) (one m)) 
 (ite inv_b37 
 (= (zero m) (ep m s (inv_Node__23 m s n1))) 
 (= (one m) (ep m s (inv_Node__24 m s n1))))))))))
)
(define-fun inv_Node__27 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b73 
 n1 
 (first m))
)
(define-fun inv_Node__9 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b58 
 n1 
 (first m))
)
(define-fun inv_Atom_1 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b10 
 (le m (inv_Epoch__4 m s n1) (inv_Epoch__5 m s n1)) 
 (ite inv_b11 
 (held m s (inv_Node__5 m s n1)) 
 (ite inv_b12 
 (transfer m s (inv_Epoch__6 m s n1) (inv_Node__6 m s n1)) 
 (ite inv_b13 
 (locked m s (inv_Epoch__7 m s n1) (inv_Node__7 m s n1)) 
 (ite inv_b14 
 (= n1 (first m)) 
 (ite inv_b15 
 (= (zero m) (one m)) 
 (ite inv_b16 
 (= (zero m) (ep m s (inv_Node__8 m s n1))) 
 (= (one m) (ep m s (inv_Node__9 m s n1))))))))))
)
(define-fun inv_Node__25 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b65 
 n1 
 (first m))
)
(define-fun inv_Node__28 ((m ModelId) (s StateId) (n1 Node)) Node
(ite inv_b56 
 n1 
 (first m))
)
(define-fun inv_Atom_4 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b38 
 (le m (inv_Epoch__20 m s n1) (inv_Epoch__21 m s n1)) 
 (ite inv_b39 
 (held m s (inv_Node__25 m s n1)) 
 (ite inv_b40 
 (transfer m s (inv_Epoch__22 m s n1) (inv_Node__26 m s n1)) 
 (ite inv_b41 
 (locked m s (inv_Epoch__23 m s n1) (inv_Node__27 m s n1)) 
 (ite inv_b42 
 (= n1 (first m)) 
 (ite inv_b43 
 (= (zero m) (one m)) 
 (ite inv_b44 
 (= (zero m) (ep m s (inv_Node__28 m s n1))) 
 (= (one m) (ep m s (inv_Node__29 m s n1))))))))))
)
(define-fun inv_Start_0 ((m ModelId) (s StateId) (n1 Node)) Bool
(ite inv_b0 
 (inv_Atom_0 m s n1) 
 (ite inv_b1 
 (and (inv_Atom_1 m s n1) (inv_Atom_2 m s n1)) 
 (ite inv_b2 
 (or (inv_Atom_3 m s n1) (inv_Atom_4 m s n1)) 
 (not (inv_Atom_5 m s n1)))))
)

;Function to be synthesised
(define-fun inv ((m ModelId) (s StateId) (n1 Node)) Bool (inv_Start_0 m s n1))
(assert (and (inv Model_0_pos init Node!val!0)))


(assert (and (inv Model_1_pos init Node!val!0)))


(assert (and (inv Model_2_pos init Node!val!0)))


(assert (and (inv Model_5_pos init Node!val!0)))


(assert (and (inv Model_36_pos init Node!val!0)))


(assert (and (inv Model_37_pos init Node!val!0)))


(assert (and (inv Model_38_pos init Node!val!0)))


(assert (and (inv Model_39_pos init Node!val!0)))


(assert (and (inv Model_40_pos init Node!val!0)))


(assert (and (inv Model_41_pos init Node!val!0)))


(assert (and (inv Model_42_pos init Node!val!0)))


(assert (and (inv Model_43_pos init Node!val!0)))


(assert (and (inv Model_44_pos init Node!val!0)))


(assert (and (inv Model_45_pos init Node!val!0)))


(assert (and (inv Model_46_pos init Node!val!0)))


(assert (and (inv Model_47_pos init Node!val!0)))


(assert (and (inv Model_48_pos init Node!val!0)))


(assert (and (inv Model_49_pos init Node!val!0)))


(assert (and (inv Model_50_pos init Node!val!0)))


(assert (and (inv Model_51_pos init Node!val!0)))


(assert (or (not (and (inv Model_77_ice S1 Node!val!0)))
    (and (and (inv Model_77_ice S1 Node!val!0))
         (inv Model_77_ice S2 Node!val!0))))

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
  (not (locked Model_DUMMYMODEL
               DUMMYSTATE
               (zero Model_DUMMYMODEL)
               (first Model_DUMMYMODEL)))))
(assert (forall ((Node_1 Node))
  (not (= (zero Model_DUMMYMODEL)
          (ep Model_DUMMYMODEL DUMMYSTATE (first Model_DUMMYMODEL))))))
(assert (forall ((Node_1 Node))
  (not (transfer Model_DUMMYMODEL
                 DUMMYSTATE
                 (zero Model_DUMMYMODEL)
                 (first Model_DUMMYMODEL)))))
(assert (forall ((Node_1 Node))
  (not (locked Model_DUMMYMODEL DUMMYSTATE (zero Model_DUMMYMODEL) Node_1))))
(assert (forall ((Node_1 Node))
  (not (transfer Model_DUMMYMODEL DUMMYSTATE (zero Model_DUMMYMODEL) Node_1))))
(assert (forall ((Node_1 Node))
  (or (locked Model_DUMMYMODEL
              DUMMYSTATE
              (ep Model_DUMMYMODEL DUMMYSTATE (first Model_DUMMYMODEL))
              (first Model_DUMMYMODEL))
      (= (one Model_DUMMYMODEL)
         (ep Model_DUMMYMODEL DUMMYSTATE (first Model_DUMMYMODEL))))))
(assert (forall ((Node_1 Node))
  (and (le Model_DUMMYMODEL
           (one Model_DUMMYMODEL)
           (ep Model_DUMMYMODEL DUMMYSTATE (first Model_DUMMYMODEL)))
       (le Model_DUMMYMODEL
           (ep Model_DUMMYMODEL DUMMYSTATE Node_1)
           (ep Model_DUMMYMODEL DUMMYSTATE Node_1)))))
(assert (forall ((Node_1 Node))
  (not (locked Model_DUMMYMODEL
               DUMMYSTATE
               (one Model_DUMMYMODEL)
               (first Model_DUMMYMODEL)))))
(assert (forall ((Node_1 Node))
  (or (= (one Model_DUMMYMODEL)
         (ep Model_DUMMYMODEL DUMMYSTATE (first Model_DUMMYMODEL)))
      (transfer Model_DUMMYMODEL
                DUMMYSTATE
                (ep Model_DUMMYMODEL DUMMYSTATE (first Model_DUMMYMODEL))
                (first Model_DUMMYMODEL)))))
(assert (not (inv Model_DUMMYMODEL DUMMYSTATE Node!val!0)))

; the following is to assert that we don't get True as an invariant
(declare-fun N1 () Node)
;(assert (not (inv Model_DUMMYMODEL DUMMYSTATE N1)))



(check-sat)
(get-value (inv_b0 inv_b1 inv_b2 inv_b3 inv_b4 inv_b5 inv_b6 inv_b7 inv_b8 inv_b9 inv_b10 inv_b11 inv_b12 inv_b13 inv_b14 inv_b15 inv_b16 inv_b17 inv_b18 inv_b19 inv_b20 inv_b21 inv_b22 inv_b23 inv_b24 inv_b25 inv_b26 inv_b27 inv_b28 inv_b29 inv_b30 inv_b31 inv_b32 inv_b33 inv_b34 inv_b35 inv_b36 inv_b37 inv_b38 inv_b39 inv_b40 inv_b41 inv_b42 inv_b43 inv_b44 inv_b45 inv_b46 inv_b47 inv_b48 inv_b49 inv_b50 inv_b51 inv_b52 inv_b53 inv_b54 inv_b55 inv_b56 inv_b57 inv_b58 inv_b59 inv_b60 inv_b61 inv_b62 inv_b63 inv_b64 inv_b65 inv_b66 inv_b67 inv_b68 inv_b69 inv_b70 inv_b71 inv_b72 inv_b73 inv_b74 inv_b75 inv_b76 inv_b77 inv_b78 inv_b79 inv_b80 inv_b81 inv_b82 inv_b83 inv_b84 inv_b85 inv_b86 inv_b87 inv_b88 inv_b89 inv_b90 inv_b91 inv_b92 inv_b93 inv_b94 inv_b95 inv_b96 inv_b97 inv_b98))