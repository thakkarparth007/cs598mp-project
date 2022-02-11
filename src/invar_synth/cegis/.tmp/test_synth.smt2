
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
(Model_38_ice) 
(Model_1_pos) 
(Model_37_ice) 
(Model_28_ice) 
(Model_27_ice) 
(Model_11_pos) 
(Model_26_ice) 
(Model_29_ice) 
(Model_30_ice) 
(Model_0_pos) 
(Model_42_ice) 
(Model_32_ice) 
(Model_43_ice) 
(Model_45_ice) 
(Model_40_ice) 
(Model_35_ice) 
(Model_34_ice) 
(Model_31_ice) 
(Model_41_ice) 
(Model_44_ice) 
(Model_39_ice) 
(Model_36_ice) 
(Model_46_ice) 
(Model_33_ice) 
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
    	(ite (and (= a0 Model_0_pos) (= a1 init) (= a2 Node!val!0) ) true
	(ite (and (= a0 Model_1_pos) (= a1 init) (= a2 Node!val!0) ) false
	(ite (and (= a0 Model_1_pos) (= a1 init) (= a2 Node!val!1) ) true
	(ite (and (= a0 Model_11_pos) (= a1 init) (= a2 Node!val!0) ) false
	(ite (and (= a0 Model_11_pos) (= a1 init) (= a2 Node!val!1) ) false
	(ite (and (= a0 Model_11_pos) (= a1 init) (= a2 Node!val!2) ) true
	(ite (and (= a0 Model_26_ice) (= a1 S1) (= a2 Node!val!0) ) true
	(ite (and (= a0 Model_26_ice) (= a1 S1) (= a2 Node!val!1) ) false
	(ite (and (= a0 Model_26_ice) (= a1 S2) (= a2 Node!val!0) ) false
	(ite (and (= a0 Model_26_ice) (= a1 S2) (= a2 Node!val!1) ) false
	(ite (and (= a0 Model_27_ice) (= a1 S1) (= a2 Node!val!0) ) false
	(ite (and (= a0 Model_27_ice) (= a1 S2) (= a2 Node!val!0) ) true
	(ite (and (= a0 Model_28_ice) (= a1 S1) (= a2 Node!val!0) ) true
	(ite (and (= a0 Model_28_ice) (= a1 S2) (= a2 Node!val!0) ) false
	(ite (and (= a0 Model_29_ice) (= a1 S1) (= a2 Node!val!0) ) false
	(ite (and (= a0 Model_29_ice) (= a1 S1) (= a2 Node!val!1) ) false
	(ite (and (= a0 Model_29_ice) (= a1 S2) (= a2 Node!val!0) ) false
	(ite (and (= a0 Model_29_ice) (= a1 S2) (= a2 Node!val!1) ) true
	(ite (and (= a0 Model_30_ice) (= a1 S1) (= a2 Node!val!0) ) true
	(ite (and (= a0 Model_30_ice) (= a1 S1) (= a2 Node!val!1) ) false
	(ite (and (= a0 Model_30_ice) (= a1 S2) (= a2 Node!val!0) ) false
	(ite (and (= a0 Model_30_ice) (= a1 S2) (= a2 Node!val!1) ) false
	(ite (and (= a0 Model_31_ice) (= a1 S1) (= a2 Node!val!0) ) true
	(ite (and (= a0 Model_31_ice) (= a1 S1) (= a2 Node!val!1) ) false
	(ite (and (= a0 Model_31_ice) (= a1 S2) (= a2 Node!val!0) ) true
	(ite (and (= a0 Model_31_ice) (= a1 S2) (= a2 Node!val!1) ) true
	(ite (and (= a0 Model_32_ice) (= a1 S1) (= a2 Node!val!0) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S1) (= a2 Node!val!1) ) true
	(ite (and (= a0 Model_32_ice) (= a1 S1) (= a2 Node!val!2) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S2) (= a2 Node!val!0) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S2) (= a2 Node!val!1) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S2) (= a2 Node!val!2) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S1) (= a2 Node!val!0) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S1) (= a2 Node!val!1) ) true
	(ite (and (= a0 Model_33_ice) (= a1 S1) (= a2 Node!val!2) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S2) (= a2 Node!val!0) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S2) (= a2 Node!val!1) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S2) (= a2 Node!val!2) ) false
	(ite (and (= a0 Model_34_ice) (= a1 S1) (= a2 Node!val!0) ) true
	(ite (and (= a0 Model_34_ice) (= a1 S1) (= a2 Node!val!1) ) false
	(ite (and (= a0 Model_34_ice) (= a1 S2) (= a2 Node!val!0) ) true
	(ite (and (= a0 Model_34_ice) (= a1 S2) (= a2 Node!val!1) ) true
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Node!val!0) ) true
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Node!val!1) ) true
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Node!val!2) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Node!val!0) ) true
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Node!val!1) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Node!val!2) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S1) (= a2 Node!val!0) ) true
	(ite (and (= a0 Model_36_ice) (= a1 S1) (= a2 Node!val!1) ) true
	(ite (and (= a0 Model_36_ice) (= a1 S1) (= a2 Node!val!2) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S2) (= a2 Node!val!0) ) true
	(ite (and (= a0 Model_36_ice) (= a1 S2) (= a2 Node!val!1) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S2) (= a2 Node!val!2) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S1) (= a2 Node!val!0) ) true
	(ite (and (= a0 Model_37_ice) (= a1 S1) (= a2 Node!val!1) ) true
	(ite (and (= a0 Model_37_ice) (= a1 S1) (= a2 Node!val!2) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S2) (= a2 Node!val!0) ) true
	(ite (and (= a0 Model_37_ice) (= a1 S2) (= a2 Node!val!1) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S2) (= a2 Node!val!2) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S1) (= a2 Node!val!0) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S1) (= a2 Node!val!1) ) true
	(ite (and (= a0 Model_38_ice) (= a1 S1) (= a2 Node!val!2) ) true
	(ite (and (= a0 Model_38_ice) (= a1 S2) (= a2 Node!val!0) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S2) (= a2 Node!val!1) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S2) (= a2 Node!val!2) ) true
	(ite (and (= a0 Model_39_ice) (= a1 S1) (= a2 Node!val!0) ) true
	(ite (and (= a0 Model_39_ice) (= a1 S1) (= a2 Node!val!1) ) true
	(ite (and (= a0 Model_39_ice) (= a1 S1) (= a2 Node!val!2) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S2) (= a2 Node!val!0) ) true
	(ite (and (= a0 Model_39_ice) (= a1 S2) (= a2 Node!val!1) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S2) (= a2 Node!val!2) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S1) (= a2 Node!val!0) ) true
	(ite (and (= a0 Model_40_ice) (= a1 S1) (= a2 Node!val!1) ) true
	(ite (and (= a0 Model_40_ice) (= a1 S1) (= a2 Node!val!2) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S2) (= a2 Node!val!0) ) true
	(ite (and (= a0 Model_40_ice) (= a1 S2) (= a2 Node!val!1) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S2) (= a2 Node!val!2) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S1) (= a2 Node!val!0) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S1) (= a2 Node!val!1) ) true
	(ite (and (= a0 Model_41_ice) (= a1 S1) (= a2 Node!val!2) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S2) (= a2 Node!val!0) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S2) (= a2 Node!val!1) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S2) (= a2 Node!val!2) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S1) (= a2 Node!val!0) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S1) (= a2 Node!val!1) ) true
	(ite (and (= a0 Model_42_ice) (= a1 S1) (= a2 Node!val!2) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S2) (= a2 Node!val!0) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S2) (= a2 Node!val!1) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S2) (= a2 Node!val!2) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S1) (= a2 Node!val!0) ) true
	(ite (and (= a0 Model_43_ice) (= a1 S1) (= a2 Node!val!1) ) true
	(ite (and (= a0 Model_43_ice) (= a1 S1) (= a2 Node!val!2) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S2) (= a2 Node!val!0) ) true
	(ite (and (= a0 Model_43_ice) (= a1 S2) (= a2 Node!val!1) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S2) (= a2 Node!val!2) ) false
	(ite (and (= a0 Model_44_ice) (= a1 S1) (= a2 Node!val!0) ) false
	(ite (and (= a0 Model_44_ice) (= a1 S1) (= a2 Node!val!1) ) false
	(ite (and (= a0 Model_44_ice) (= a1 S2) (= a2 Node!val!0) ) false
	(ite (and (= a0 Model_44_ice) (= a1 S2) (= a2 Node!val!1) ) true
	(ite (and (= a0 Model_45_ice) (= a1 S1) (= a2 Node!val!0) ) false
	(ite (and (= a0 Model_45_ice) (= a1 S1) (= a2 Node!val!1) ) false
	(ite (and (= a0 Model_45_ice) (= a1 S2) (= a2 Node!val!0) ) false
	(ite (and (= a0 Model_45_ice) (= a1 S2) (= a2 Node!val!1) ) true
	(ite (and (= a0 Model_46_ice) (= a1 S1) (= a2 Node!val!0) ) false
	(ite (and (= a0 Model_46_ice) (= a1 S1) (= a2 Node!val!1) ) false
	(ite (and (= a0 Model_46_ice) (= a1 S2) (= a2 Node!val!0) ) false
	(ite (and (= a0 Model_46_ice) (= a1 S2) (= a2 Node!val!1) ) true
	(held_dummy a0 a1 a2 )))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
)
(declare-fun locked_dummy (ModelId StateId Epoch Node) Bool)
(define-fun locked ((a0 ModelId) (a1 StateId) (a2 Epoch) (a3 Node)) Bool
    	(ite (and (= a0 Model_0_pos) (= a1 init) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_0_pos) (= a1 init) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_0_pos) (= a1 init) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_1_pos) (= a1 init) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_1_pos) (= a1 init) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_1_pos) (= a1 init) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_1_pos) (= a1 init) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_1_pos) (= a1 init) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_1_pos) (= a1 init) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_11_pos) (= a1 init) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_11_pos) (= a1 init) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_11_pos) (= a1 init) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_11_pos) (= a1 init) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_11_pos) (= a1 init) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_11_pos) (= a1 init) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_11_pos) (= a1 init) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_11_pos) (= a1 init) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_11_pos) (= a1 init) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_26_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_26_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_26_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_26_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_26_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_26_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_26_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_26_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_26_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_26_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_26_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_26_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_26_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_26_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_26_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_26_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_27_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_27_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_27_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_27_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_27_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) true
	(ite (and (= a0 Model_27_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_27_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_27_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_28_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_28_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_28_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_28_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) true
	(ite (and (= a0 Model_28_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_28_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_28_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_28_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) true
	(ite (and (= a0 Model_29_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_29_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_29_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_29_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_29_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_29_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_29_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_29_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_29_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_29_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!1) ) true
	(ite (and (= a0 Model_29_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_29_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_29_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_29_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_29_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_29_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_30_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_30_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_30_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_30_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_30_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_30_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_30_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_30_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_30_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_30_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_30_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_30_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_30_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_30_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_30_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_30_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_31_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_31_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_31_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_31_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_31_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_31_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_31_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_31_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_31_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_31_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_31_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_31_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!1) ) true
	(ite (and (= a0 Model_31_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_31_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_31_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_31_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_34_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_34_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_34_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_34_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_34_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_34_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_34_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_34_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_34_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_34_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_34_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_34_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_34_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_34_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_34_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_34_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_34_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_34_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!1) ) true
	(ite (and (= a0 Model_34_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_34_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Epoch!val!5) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Epoch!val!5) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Epoch!val!5) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Epoch!val!5) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Epoch!val!5) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Epoch!val!5) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!1) ) true
	(ite (and (= a0 Model_39_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!1) ) true
	(ite (and (= a0 Model_39_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) true
	(ite (and (= a0 Model_40_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) true
	(ite (and (= a0 Model_40_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!1) ) true
	(ite (and (= a0 Model_43_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!1) ) true
	(ite (and (= a0 Model_43_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_44_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_44_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!1) ) true
	(ite (and (= a0 Model_44_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_44_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_44_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_44_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_44_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_44_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_44_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_44_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!1) ) true
	(ite (and (= a0 Model_44_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_44_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!1) ) true
	(ite (and (= a0 Model_44_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_44_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_44_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_44_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_45_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_45_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_45_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_45_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_45_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_45_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_45_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_45_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_45_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_45_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_45_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_45_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_45_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_45_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_45_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_45_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_45_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_45_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!1) ) true
	(ite (and (= a0 Model_45_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_45_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_46_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) true
	(ite (and (= a0 Model_46_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_46_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_46_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_46_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_46_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_46_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_46_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_46_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_46_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_46_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) true
	(ite (and (= a0 Model_46_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!1) ) true
	(ite (and (= a0 Model_46_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_46_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_46_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_46_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_46_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_46_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_46_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_46_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(locked_dummy a0 a1 a2 a3 )))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
)
(declare-fun transfer_dummy (ModelId StateId Epoch Node) Bool)
(define-fun transfer ((a0 ModelId) (a1 StateId) (a2 Epoch) (a3 Node)) Bool
    	(ite (and (= a0 Model_0_pos) (= a1 init) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_0_pos) (= a1 init) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_0_pos) (= a1 init) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_1_pos) (= a1 init) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_1_pos) (= a1 init) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_1_pos) (= a1 init) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_1_pos) (= a1 init) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_1_pos) (= a1 init) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_1_pos) (= a1 init) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_11_pos) (= a1 init) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_11_pos) (= a1 init) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_11_pos) (= a1 init) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_11_pos) (= a1 init) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_11_pos) (= a1 init) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_11_pos) (= a1 init) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_11_pos) (= a1 init) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_11_pos) (= a1 init) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_11_pos) (= a1 init) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_26_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_26_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_26_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_26_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_26_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_26_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_26_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_26_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_26_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_26_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_26_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_26_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!1) ) true
	(ite (and (= a0 Model_26_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_26_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_26_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_26_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_27_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) true
	(ite (and (= a0 Model_27_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_27_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_27_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_27_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) true
	(ite (and (= a0 Model_27_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_27_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_27_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_28_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_28_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_28_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_28_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) true
	(ite (and (= a0 Model_28_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_28_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) true
	(ite (and (= a0 Model_28_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_28_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) true
	(ite (and (= a0 Model_29_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_29_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!1) ) true
	(ite (and (= a0 Model_29_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_29_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_29_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_29_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_29_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_29_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_29_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_29_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!1) ) true
	(ite (and (= a0 Model_29_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_29_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_29_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_29_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_29_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_29_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_30_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_30_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_30_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_30_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_30_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_30_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_30_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_30_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_30_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_30_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!1) ) true
	(ite (and (= a0 Model_30_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_30_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_30_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_30_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_30_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_30_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_31_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_31_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_31_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_31_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!1) ) true
	(ite (and (= a0 Model_31_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_31_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_31_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_31_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_31_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_31_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_31_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_31_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!1) ) true
	(ite (and (= a0 Model_31_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_31_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_31_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_31_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!2) ) true
	(ite (and (= a0 Model_32_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_32_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!2) ) true
	(ite (and (= a0 Model_33_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_33_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_34_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_34_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_34_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_34_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_34_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_34_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_34_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_34_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!1) ) true
	(ite (and (= a0 Model_34_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_34_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_34_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_34_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_34_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_34_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_34_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_34_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_34_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_34_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!1) ) true
	(ite (and (= a0 Model_34_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_34_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Epoch!val!5) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Epoch!val!5) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Epoch!val!5) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Epoch!val!5) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Epoch!val!5) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Epoch!val!5) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!2) ) true
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_36_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!2) ) true
	(ite (and (= a0 Model_37_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!2) ) true
	(ite (and (= a0 Model_37_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_37_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!2) ) true
	(ite (and (= a0 Model_38_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_38_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!1) ) true
	(ite (and (= a0 Model_39_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!1) ) true
	(ite (and (= a0 Model_39_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!2) ) true
	(ite (and (= a0 Model_39_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!1) ) true
	(ite (and (= a0 Model_39_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_39_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!1) ) true
	(ite (and (= a0 Model_39_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!0) ) true
	(ite (and (= a0 Model_40_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) true
	(ite (and (= a0 Model_40_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!2) ) true
	(ite (and (= a0 Model_40_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!0) ) true
	(ite (and (= a0 Model_40_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) true
	(ite (and (= a0 Model_40_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_40_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!2) ) true
	(ite (and (= a0 Model_41_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_41_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!2) ) true
	(ite (and (= a0 Model_42_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_42_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!1) ) true
	(ite (and (= a0 Model_43_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!2) ) true
	(ite (and (= a0 Model_43_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_43_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!1) ) true
	(ite (and (= a0 Model_43_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!2) ) false
	(ite (and (= a0 Model_44_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_44_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!1) ) true
	(ite (and (= a0 Model_44_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_44_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!1) ) true
	(ite (and (= a0 Model_44_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_44_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_44_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_44_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_44_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_44_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!1) ) true
	(ite (and (= a0 Model_44_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_44_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!1) ) true
	(ite (and (= a0 Model_44_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_44_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_44_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_44_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_45_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_45_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_45_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_45_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_45_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_45_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_45_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_45_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!1) ) true
	(ite (and (= a0 Model_45_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_45_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_45_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_45_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_45_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_45_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_45_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_45_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_45_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_45_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!1) ) true
	(ite (and (= a0 Model_45_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_45_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_46_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!0) ) true
	(ite (and (= a0 Model_46_ice) (= a1 S1) (= a2 Epoch!val!3) (= a3 Node!val!1) ) true
	(ite (and (= a0 Model_46_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_46_ice) (= a1 S1) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_46_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!0) ) true
	(ite (and (= a0 Model_46_ice) (= a1 S1) (= a2 Epoch!val!4) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_46_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_46_ice) (= a1 S1) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_46_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_46_ice) (= a1 S1) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_46_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!0) ) true
	(ite (and (= a0 Model_46_ice) (= a1 S2) (= a2 Epoch!val!3) (= a3 Node!val!1) ) true
	(ite (and (= a0 Model_46_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_46_ice) (= a1 S2) (= a2 Epoch!val!0) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_46_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!0) ) true
	(ite (and (= a0 Model_46_ice) (= a1 S2) (= a2 Epoch!val!4) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_46_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_46_ice) (= a1 S2) (= a2 Epoch!val!2) (= a3 Node!val!1) ) false
	(ite (and (= a0 Model_46_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!0) ) false
	(ite (and (= a0 Model_46_ice) (= a1 S2) (= a2 Epoch!val!1) (= a3 Node!val!1) ) false
	(transfer_dummy a0 a1 a2 a3 )))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
)
(declare-fun ep_dummy (ModelId StateId Node) Epoch)
(define-fun ep ((a0 ModelId) (a1 StateId) (a2 Node)) Epoch
    	(ite (and (= a0 Model_0_pos) (= a1 init) (= a2 Node!val!0) ) Epoch!val!1
	(ite (and (= a0 Model_1_pos) (= a1 init) (= a2 Node!val!0) ) Epoch!val!2
	(ite (and (= a0 Model_1_pos) (= a1 init) (= a2 Node!val!1) ) Epoch!val!1
	(ite (and (= a0 Model_11_pos) (= a1 init) (= a2 Node!val!0) ) Epoch!val!0
	(ite (and (= a0 Model_11_pos) (= a1 init) (= a2 Node!val!1) ) Epoch!val!0
	(ite (and (= a0 Model_11_pos) (= a1 init) (= a2 Node!val!2) ) Epoch!val!2
	(ite (and (= a0 Model_26_ice) (= a1 S1) (= a2 Node!val!0) ) Epoch!val!1
	(ite (and (= a0 Model_26_ice) (= a1 S1) (= a2 Node!val!1) ) Epoch!val!1
	(ite (and (= a0 Model_26_ice) (= a1 S2) (= a2 Node!val!0) ) Epoch!val!1
	(ite (and (= a0 Model_26_ice) (= a1 S2) (= a2 Node!val!1) ) Epoch!val!1
	(ite (and (= a0 Model_27_ice) (= a1 S1) (= a2 Node!val!0) ) Epoch!val!0
	(ite (and (= a0 Model_27_ice) (= a1 S2) (= a2 Node!val!0) ) Epoch!val!3
	(ite (and (= a0 Model_28_ice) (= a1 S1) (= a2 Node!val!0) ) Epoch!val!1
	(ite (and (= a0 Model_28_ice) (= a1 S2) (= a2 Node!val!0) ) Epoch!val!1
	(ite (and (= a0 Model_29_ice) (= a1 S1) (= a2 Node!val!0) ) Epoch!val!2
	(ite (and (= a0 Model_29_ice) (= a1 S1) (= a2 Node!val!1) ) Epoch!val!0
	(ite (and (= a0 Model_29_ice) (= a1 S2) (= a2 Node!val!0) ) Epoch!val!2
	(ite (and (= a0 Model_29_ice) (= a1 S2) (= a2 Node!val!1) ) Epoch!val!3
	(ite (and (= a0 Model_30_ice) (= a1 S1) (= a2 Node!val!0) ) Epoch!val!0
	(ite (and (= a0 Model_30_ice) (= a1 S1) (= a2 Node!val!1) ) Epoch!val!3
	(ite (and (= a0 Model_30_ice) (= a1 S2) (= a2 Node!val!0) ) Epoch!val!0
	(ite (and (= a0 Model_30_ice) (= a1 S2) (= a2 Node!val!1) ) Epoch!val!3
	(ite (and (= a0 Model_31_ice) (= a1 S1) (= a2 Node!val!0) ) Epoch!val!0
	(ite (and (= a0 Model_31_ice) (= a1 S1) (= a2 Node!val!1) ) Epoch!val!1
	(ite (and (= a0 Model_31_ice) (= a1 S2) (= a2 Node!val!0) ) Epoch!val!0
	(ite (and (= a0 Model_31_ice) (= a1 S2) (= a2 Node!val!1) ) Epoch!val!0
	(ite (and (= a0 Model_32_ice) (= a1 S1) (= a2 Node!val!0) ) Epoch!val!3
	(ite (and (= a0 Model_32_ice) (= a1 S1) (= a2 Node!val!1) ) Epoch!val!0
	(ite (and (= a0 Model_32_ice) (= a1 S1) (= a2 Node!val!2) ) Epoch!val!1
	(ite (and (= a0 Model_32_ice) (= a1 S2) (= a2 Node!val!0) ) Epoch!val!3
	(ite (and (= a0 Model_32_ice) (= a1 S2) (= a2 Node!val!1) ) Epoch!val!0
	(ite (and (= a0 Model_32_ice) (= a1 S2) (= a2 Node!val!2) ) Epoch!val!1
	(ite (and (= a0 Model_33_ice) (= a1 S1) (= a2 Node!val!0) ) Epoch!val!2
	(ite (and (= a0 Model_33_ice) (= a1 S1) (= a2 Node!val!1) ) Epoch!val!1
	(ite (and (= a0 Model_33_ice) (= a1 S1) (= a2 Node!val!2) ) Epoch!val!2
	(ite (and (= a0 Model_33_ice) (= a1 S2) (= a2 Node!val!0) ) Epoch!val!2
	(ite (and (= a0 Model_33_ice) (= a1 S2) (= a2 Node!val!1) ) Epoch!val!1
	(ite (and (= a0 Model_33_ice) (= a1 S2) (= a2 Node!val!2) ) Epoch!val!2
	(ite (and (= a0 Model_34_ice) (= a1 S1) (= a2 Node!val!0) ) Epoch!val!1
	(ite (and (= a0 Model_34_ice) (= a1 S1) (= a2 Node!val!1) ) Epoch!val!0
	(ite (and (= a0 Model_34_ice) (= a1 S2) (= a2 Node!val!0) ) Epoch!val!1
	(ite (and (= a0 Model_34_ice) (= a1 S2) (= a2 Node!val!1) ) Epoch!val!2
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Node!val!0) ) Epoch!val!4
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Node!val!1) ) Epoch!val!3
	(ite (and (= a0 Model_35_ice) (= a1 S1) (= a2 Node!val!2) ) Epoch!val!5
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Node!val!0) ) Epoch!val!4
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Node!val!1) ) Epoch!val!3
	(ite (and (= a0 Model_35_ice) (= a1 S2) (= a2 Node!val!2) ) Epoch!val!5
	(ite (and (= a0 Model_36_ice) (= a1 S1) (= a2 Node!val!0) ) Epoch!val!0
	(ite (and (= a0 Model_36_ice) (= a1 S1) (= a2 Node!val!1) ) Epoch!val!0
	(ite (and (= a0 Model_36_ice) (= a1 S1) (= a2 Node!val!2) ) Epoch!val!1
	(ite (and (= a0 Model_36_ice) (= a1 S2) (= a2 Node!val!0) ) Epoch!val!0
	(ite (and (= a0 Model_36_ice) (= a1 S2) (= a2 Node!val!1) ) Epoch!val!0
	(ite (and (= a0 Model_36_ice) (= a1 S2) (= a2 Node!val!2) ) Epoch!val!1
	(ite (and (= a0 Model_37_ice) (= a1 S1) (= a2 Node!val!0) ) Epoch!val!3
	(ite (and (= a0 Model_37_ice) (= a1 S1) (= a2 Node!val!1) ) Epoch!val!0
	(ite (and (= a0 Model_37_ice) (= a1 S1) (= a2 Node!val!2) ) Epoch!val!1
	(ite (and (= a0 Model_37_ice) (= a1 S2) (= a2 Node!val!0) ) Epoch!val!3
	(ite (and (= a0 Model_37_ice) (= a1 S2) (= a2 Node!val!1) ) Epoch!val!0
	(ite (and (= a0 Model_37_ice) (= a1 S2) (= a2 Node!val!2) ) Epoch!val!1
	(ite (and (= a0 Model_38_ice) (= a1 S1) (= a2 Node!val!0) ) Epoch!val!3
	(ite (and (= a0 Model_38_ice) (= a1 S1) (= a2 Node!val!1) ) Epoch!val!0
	(ite (and (= a0 Model_38_ice) (= a1 S1) (= a2 Node!val!2) ) Epoch!val!1
	(ite (and (= a0 Model_38_ice) (= a1 S2) (= a2 Node!val!0) ) Epoch!val!3
	(ite (and (= a0 Model_38_ice) (= a1 S2) (= a2 Node!val!1) ) Epoch!val!0
	(ite (and (= a0 Model_38_ice) (= a1 S2) (= a2 Node!val!2) ) Epoch!val!1
	(ite (and (= a0 Model_39_ice) (= a1 S1) (= a2 Node!val!0) ) Epoch!val!2
	(ite (and (= a0 Model_39_ice) (= a1 S1) (= a2 Node!val!1) ) Epoch!val!1
	(ite (and (= a0 Model_39_ice) (= a1 S1) (= a2 Node!val!2) ) Epoch!val!2
	(ite (and (= a0 Model_39_ice) (= a1 S2) (= a2 Node!val!0) ) Epoch!val!2
	(ite (and (= a0 Model_39_ice) (= a1 S2) (= a2 Node!val!1) ) Epoch!val!1
	(ite (and (= a0 Model_39_ice) (= a1 S2) (= a2 Node!val!2) ) Epoch!val!2
	(ite (and (= a0 Model_40_ice) (= a1 S1) (= a2 Node!val!0) ) Epoch!val!4
	(ite (and (= a0 Model_40_ice) (= a1 S1) (= a2 Node!val!1) ) Epoch!val!1
	(ite (and (= a0 Model_40_ice) (= a1 S1) (= a2 Node!val!2) ) Epoch!val!2
	(ite (and (= a0 Model_40_ice) (= a1 S2) (= a2 Node!val!0) ) Epoch!val!4
	(ite (and (= a0 Model_40_ice) (= a1 S2) (= a2 Node!val!1) ) Epoch!val!1
	(ite (and (= a0 Model_40_ice) (= a1 S2) (= a2 Node!val!2) ) Epoch!val!2
	(ite (and (= a0 Model_41_ice) (= a1 S1) (= a2 Node!val!0) ) Epoch!val!3
	(ite (and (= a0 Model_41_ice) (= a1 S1) (= a2 Node!val!1) ) Epoch!val!2
	(ite (and (= a0 Model_41_ice) (= a1 S1) (= a2 Node!val!2) ) Epoch!val!4
	(ite (and (= a0 Model_41_ice) (= a1 S2) (= a2 Node!val!0) ) Epoch!val!3
	(ite (and (= a0 Model_41_ice) (= a1 S2) (= a2 Node!val!1) ) Epoch!val!2
	(ite (and (= a0 Model_41_ice) (= a1 S2) (= a2 Node!val!2) ) Epoch!val!4
	(ite (and (= a0 Model_42_ice) (= a1 S1) (= a2 Node!val!0) ) Epoch!val!4
	(ite (and (= a0 Model_42_ice) (= a1 S1) (= a2 Node!val!1) ) Epoch!val!2
	(ite (and (= a0 Model_42_ice) (= a1 S1) (= a2 Node!val!2) ) Epoch!val!3
	(ite (and (= a0 Model_42_ice) (= a1 S2) (= a2 Node!val!0) ) Epoch!val!4
	(ite (and (= a0 Model_42_ice) (= a1 S2) (= a2 Node!val!1) ) Epoch!val!2
	(ite (and (= a0 Model_42_ice) (= a1 S2) (= a2 Node!val!2) ) Epoch!val!3
	(ite (and (= a0 Model_43_ice) (= a1 S1) (= a2 Node!val!0) ) Epoch!val!3
	(ite (and (= a0 Model_43_ice) (= a1 S1) (= a2 Node!val!1) ) Epoch!val!1
	(ite (and (= a0 Model_43_ice) (= a1 S1) (= a2 Node!val!2) ) Epoch!val!3
	(ite (and (= a0 Model_43_ice) (= a1 S2) (= a2 Node!val!0) ) Epoch!val!3
	(ite (and (= a0 Model_43_ice) (= a1 S2) (= a2 Node!val!1) ) Epoch!val!1
	(ite (and (= a0 Model_43_ice) (= a1 S2) (= a2 Node!val!2) ) Epoch!val!3
	(ite (and (= a0 Model_44_ice) (= a1 S1) (= a2 Node!val!0) ) Epoch!val!3
	(ite (and (= a0 Model_44_ice) (= a1 S1) (= a2 Node!val!1) ) Epoch!val!3
	(ite (and (= a0 Model_44_ice) (= a1 S2) (= a2 Node!val!0) ) Epoch!val!3
	(ite (and (= a0 Model_44_ice) (= a1 S2) (= a2 Node!val!1) ) Epoch!val!0
	(ite (and (= a0 Model_45_ice) (= a1 S1) (= a2 Node!val!0) ) Epoch!val!4
	(ite (and (= a0 Model_45_ice) (= a1 S1) (= a2 Node!val!1) ) Epoch!val!3
	(ite (and (= a0 Model_45_ice) (= a1 S2) (= a2 Node!val!0) ) Epoch!val!4
	(ite (and (= a0 Model_45_ice) (= a1 S2) (= a2 Node!val!1) ) Epoch!val!2
	(ite (and (= a0 Model_46_ice) (= a1 S1) (= a2 Node!val!0) ) Epoch!val!4
	(ite (and (= a0 Model_46_ice) (= a1 S1) (= a2 Node!val!1) ) Epoch!val!2
	(ite (and (= a0 Model_46_ice) (= a1 S2) (= a2 Node!val!0) ) Epoch!val!4
	(ite (and (= a0 Model_46_ice) (= a1 S2) (= a2 Node!val!1) ) Epoch!val!3
	(ep_dummy a0 a1 a2 )))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
)
(declare-fun le_dummy (ModelId Epoch Epoch) Bool)
(define-fun le ((a0 ModelId) (a1 Epoch) (a2 Epoch)) Bool
    	(ite (and (= a0 Model_0_pos) (= a1 Epoch!val!0) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_0_pos) (= a1 Epoch!val!0) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_0_pos) (= a1 Epoch!val!0) (= a2 Epoch!val!1) ) false
	(ite (and (= a0 Model_0_pos) (= a1 Epoch!val!2) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_0_pos) (= a1 Epoch!val!2) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_0_pos) (= a1 Epoch!val!2) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_0_pos) (= a1 Epoch!val!1) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_0_pos) (= a1 Epoch!val!1) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_0_pos) (= a1 Epoch!val!1) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_1_pos) (= a1 Epoch!val!0) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_1_pos) (= a1 Epoch!val!0) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_1_pos) (= a1 Epoch!val!0) (= a2 Epoch!val!1) ) false
	(ite (and (= a0 Model_1_pos) (= a1 Epoch!val!2) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_1_pos) (= a1 Epoch!val!2) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_1_pos) (= a1 Epoch!val!2) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_1_pos) (= a1 Epoch!val!1) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_1_pos) (= a1 Epoch!val!1) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_1_pos) (= a1 Epoch!val!1) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_11_pos) (= a1 Epoch!val!0) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_11_pos) (= a1 Epoch!val!0) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_11_pos) (= a1 Epoch!val!0) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_11_pos) (= a1 Epoch!val!2) (= a2 Epoch!val!0) ) false
	(ite (and (= a0 Model_11_pos) (= a1 Epoch!val!2) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_11_pos) (= a1 Epoch!val!2) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_11_pos) (= a1 Epoch!val!1) (= a2 Epoch!val!0) ) false
	(ite (and (= a0 Model_11_pos) (= a1 Epoch!val!1) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_11_pos) (= a1 Epoch!val!1) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_26_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_26_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!0) ) false
	(ite (and (= a0 Model_26_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_26_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!1) ) false
	(ite (and (= a0 Model_26_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_26_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_26_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_26_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!1) ) false
	(ite (and (= a0 Model_26_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_26_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_26_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_26_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_26_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_26_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_26_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_26_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_27_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_27_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!0) ) false
	(ite (and (= a0 Model_27_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_27_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!1) ) false
	(ite (and (= a0 Model_27_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_27_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_27_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_27_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!1) ) false
	(ite (and (= a0 Model_27_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!3) ) false
	(ite (and (= a0 Model_27_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!0) ) false
	(ite (and (= a0 Model_27_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_27_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!1) ) false
	(ite (and (= a0 Model_27_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_27_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_27_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_27_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_28_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_28_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_28_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_28_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_28_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!3) ) false
	(ite (and (= a0 Model_28_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_28_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_28_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!1) ) false
	(ite (and (= a0 Model_28_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!3) ) false
	(ite (and (= a0 Model_28_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_28_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_28_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_28_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!3) ) false
	(ite (and (= a0 Model_28_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_28_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_28_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_29_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_29_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!0) ) false
	(ite (and (= a0 Model_29_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_29_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_29_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_29_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_29_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_29_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_29_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_29_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_29_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_29_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_29_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!3) ) false
	(ite (and (= a0 Model_29_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!0) ) false
	(ite (and (= a0 Model_29_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_29_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_30_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_30_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!0) ) false
	(ite (and (= a0 Model_30_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_30_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_30_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_30_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_30_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_30_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_30_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_30_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_30_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_30_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_30_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!3) ) false
	(ite (and (= a0 Model_30_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!0) ) false
	(ite (and (= a0 Model_30_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_30_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_31_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_31_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_31_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_31_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_31_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!3) ) false
	(ite (and (= a0 Model_31_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_31_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_31_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!1) ) false
	(ite (and (= a0 Model_31_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!3) ) false
	(ite (and (= a0 Model_31_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_31_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_31_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!1) ) false
	(ite (and (= a0 Model_31_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!3) ) false
	(ite (and (= a0 Model_31_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_31_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_31_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_32_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_32_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!0) ) false
	(ite (and (= a0 Model_32_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_32_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!1) ) false
	(ite (and (= a0 Model_32_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_32_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_32_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_32_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_32_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_32_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_32_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_32_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_32_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_32_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!0) ) false
	(ite (and (= a0 Model_32_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_32_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_33_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_33_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_33_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!4) ) false
	(ite (and (= a0 Model_33_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_33_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!1) ) false
	(ite (and (= a0 Model_33_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!3) ) false
	(ite (and (= a0 Model_33_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_33_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!4) ) false
	(ite (and (= a0 Model_33_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_33_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!1) ) false
	(ite (and (= a0 Model_33_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_33_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_33_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!4) ) true
	(ite (and (= a0 Model_33_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_33_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_33_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_33_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_33_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!4) ) false
	(ite (and (= a0 Model_33_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_33_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_33_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_33_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_33_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!4) ) false
	(ite (and (= a0 Model_33_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_33_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_34_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_34_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_34_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!4) ) true
	(ite (and (= a0 Model_34_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_34_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_34_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!3) ) false
	(ite (and (= a0 Model_34_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_34_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!4) ) true
	(ite (and (= a0 Model_34_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_34_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_34_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!3) ) false
	(ite (and (= a0 Model_34_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!0) ) false
	(ite (and (= a0 Model_34_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!4) ) true
	(ite (and (= a0 Model_34_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_34_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!1) ) false
	(ite (and (= a0 Model_34_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!3) ) false
	(ite (and (= a0 Model_34_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!0) ) false
	(ite (and (= a0 Model_34_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!4) ) false
	(ite (and (= a0 Model_34_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_34_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!1) ) false
	(ite (and (= a0 Model_34_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!3) ) false
	(ite (and (= a0 Model_34_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!0) ) false
	(ite (and (= a0 Model_34_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!4) ) true
	(ite (and (= a0 Model_34_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_34_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_35_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_35_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!0) ) false
	(ite (and (= a0 Model_35_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!4) ) false
	(ite (and (= a0 Model_35_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!5) ) false
	(ite (and (= a0 Model_35_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_35_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!1) ) false
	(ite (and (= a0 Model_35_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_35_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_35_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!4) ) true
	(ite (and (= a0 Model_35_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!5) ) false
	(ite (and (= a0 Model_35_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_35_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!1) ) false
	(ite (and (= a0 Model_35_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_35_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!0) ) false
	(ite (and (= a0 Model_35_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!4) ) true
	(ite (and (= a0 Model_35_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!5) ) false
	(ite (and (= a0 Model_35_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_35_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!1) ) false
	(ite (and (= a0 Model_35_ice) (= a1 Epoch!val!5) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_35_ice) (= a1 Epoch!val!5) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_35_ice) (= a1 Epoch!val!5) (= a2 Epoch!val!4) ) true
	(ite (and (= a0 Model_35_ice) (= a1 Epoch!val!5) (= a2 Epoch!val!5) ) true
	(ite (and (= a0 Model_35_ice) (= a1 Epoch!val!5) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_35_ice) (= a1 Epoch!val!5) (= a2 Epoch!val!1) ) false
	(ite (and (= a0 Model_35_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!3) ) false
	(ite (and (= a0 Model_35_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!0) ) false
	(ite (and (= a0 Model_35_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!4) ) false
	(ite (and (= a0 Model_35_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!5) ) false
	(ite (and (= a0 Model_35_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_35_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!1) ) false
	(ite (and (= a0 Model_35_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_35_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_35_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!4) ) true
	(ite (and (= a0 Model_35_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!5) ) true
	(ite (and (= a0 Model_35_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_35_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_36_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_36_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_36_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_36_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_36_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!3) ) false
	(ite (and (= a0 Model_36_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_36_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_36_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_36_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!3) ) false
	(ite (and (= a0 Model_36_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_36_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_36_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_36_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!3) ) false
	(ite (and (= a0 Model_36_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!0) ) false
	(ite (and (= a0 Model_36_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_36_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_37_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_37_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!0) ) false
	(ite (and (= a0 Model_37_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_37_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!1) ) false
	(ite (and (= a0 Model_37_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_37_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_37_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_37_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!1) ) false
	(ite (and (= a0 Model_37_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_37_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_37_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_37_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_37_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_37_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_37_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_37_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_38_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_38_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!0) ) false
	(ite (and (= a0 Model_38_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_38_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!1) ) false
	(ite (and (= a0 Model_38_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_38_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_38_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_38_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!1) ) false
	(ite (and (= a0 Model_38_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_38_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_38_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_38_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_38_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_38_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_38_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_38_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_39_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_39_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_39_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!4) ) false
	(ite (and (= a0 Model_39_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_39_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_39_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!3) ) false
	(ite (and (= a0 Model_39_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_39_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!4) ) false
	(ite (and (= a0 Model_39_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_39_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!1) ) false
	(ite (and (= a0 Model_39_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_39_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_39_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!4) ) true
	(ite (and (= a0 Model_39_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_39_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_39_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!3) ) false
	(ite (and (= a0 Model_39_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_39_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!4) ) false
	(ite (and (= a0 Model_39_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_39_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_39_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!3) ) false
	(ite (and (= a0 Model_39_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_39_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!4) ) false
	(ite (and (= a0 Model_39_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_39_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_40_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_40_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_40_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!4) ) true
	(ite (and (= a0 Model_40_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_40_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_40_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!3) ) false
	(ite (and (= a0 Model_40_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_40_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!4) ) false
	(ite (and (= a0 Model_40_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_40_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!1) ) false
	(ite (and (= a0 Model_40_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!3) ) false
	(ite (and (= a0 Model_40_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_40_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!4) ) true
	(ite (and (= a0 Model_40_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_40_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!1) ) false
	(ite (and (= a0 Model_40_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!3) ) false
	(ite (and (= a0 Model_40_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_40_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!4) ) true
	(ite (and (= a0 Model_40_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_40_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_40_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!3) ) false
	(ite (and (= a0 Model_40_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_40_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!4) ) true
	(ite (and (= a0 Model_40_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_40_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_41_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_41_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!0) ) false
	(ite (and (= a0 Model_41_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!4) ) true
	(ite (and (= a0 Model_41_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_41_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_41_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_41_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_41_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!4) ) true
	(ite (and (= a0 Model_41_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_41_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_41_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!3) ) false
	(ite (and (= a0 Model_41_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!0) ) false
	(ite (and (= a0 Model_41_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!4) ) true
	(ite (and (= a0 Model_41_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_41_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_41_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_41_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!0) ) false
	(ite (and (= a0 Model_41_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!4) ) true
	(ite (and (= a0 Model_41_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_41_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_41_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!3) ) false
	(ite (and (= a0 Model_41_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!0) ) false
	(ite (and (= a0 Model_41_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!4) ) false
	(ite (and (= a0 Model_41_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_41_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_42_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_42_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!0) ) false
	(ite (and (= a0 Model_42_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!4) ) true
	(ite (and (= a0 Model_42_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_42_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_42_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_42_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_42_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!4) ) true
	(ite (and (= a0 Model_42_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_42_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_42_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!3) ) false
	(ite (and (= a0 Model_42_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!0) ) false
	(ite (and (= a0 Model_42_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!4) ) true
	(ite (and (= a0 Model_42_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_42_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_42_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_42_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!0) ) false
	(ite (and (= a0 Model_42_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!4) ) true
	(ite (and (= a0 Model_42_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_42_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_42_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!3) ) false
	(ite (and (= a0 Model_42_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!0) ) false
	(ite (and (= a0 Model_42_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!4) ) false
	(ite (and (= a0 Model_42_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_42_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_43_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_43_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_43_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_43_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_43_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!3) ) false
	(ite (and (= a0 Model_43_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_43_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_43_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!1) ) false
	(ite (and (= a0 Model_43_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!3) ) false
	(ite (and (= a0 Model_43_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_43_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_43_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_43_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!3) ) false
	(ite (and (= a0 Model_43_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_43_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_43_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_44_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_44_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_44_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_44_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_44_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!3) ) false
	(ite (and (= a0 Model_44_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_44_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_44_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_44_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_44_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_44_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_44_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_44_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!3) ) false
	(ite (and (= a0 Model_44_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!0) ) false
	(ite (and (= a0 Model_44_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_44_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_45_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_45_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!0) ) false
	(ite (and (= a0 Model_45_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!4) ) true
	(ite (and (= a0 Model_45_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_45_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!1) ) false
	(ite (and (= a0 Model_45_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_45_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_45_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!4) ) true
	(ite (and (= a0 Model_45_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_45_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!1) ) false
	(ite (and (= a0 Model_45_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!3) ) false
	(ite (and (= a0 Model_45_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!0) ) false
	(ite (and (= a0 Model_45_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!4) ) true
	(ite (and (= a0 Model_45_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_45_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!1) ) false
	(ite (and (= a0 Model_45_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!3) ) false
	(ite (and (= a0 Model_45_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!0) ) false
	(ite (and (= a0 Model_45_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!4) ) true
	(ite (and (= a0 Model_45_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_45_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!1) ) false
	(ite (and (= a0 Model_45_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_45_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_45_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!4) ) true
	(ite (and (= a0 Model_45_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_45_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_46_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_46_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!0) ) false
	(ite (and (= a0 Model_46_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!4) ) false
	(ite (and (= a0 Model_46_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_46_ice) (= a1 Epoch!val!3) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_46_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_46_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!0) ) true
	(ite (and (= a0 Model_46_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!4) ) true
	(ite (and (= a0 Model_46_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_46_ice) (= a1 Epoch!val!0) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_46_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_46_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!0) ) false
	(ite (and (= a0 Model_46_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!4) ) true
	(ite (and (= a0 Model_46_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_46_ice) (= a1 Epoch!val!4) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_46_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!3) ) true
	(ite (and (= a0 Model_46_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!0) ) false
	(ite (and (= a0 Model_46_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!4) ) false
	(ite (and (= a0 Model_46_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!2) ) true
	(ite (and (= a0 Model_46_ice) (= a1 Epoch!val!2) (= a2 Epoch!val!1) ) true
	(ite (and (= a0 Model_46_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!3) ) false
	(ite (and (= a0 Model_46_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!0) ) false
	(ite (and (= a0 Model_46_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!4) ) false
	(ite (and (= a0 Model_46_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!2) ) false
	(ite (and (= a0 Model_46_ice) (= a1 Epoch!val!1) (= a2 Epoch!val!1) ) true
	(le_dummy a0 a1 a2 ))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
)
(declare-fun zero_dummy (ModelId) Epoch)
(define-fun zero ((a0 ModelId)) Epoch
    	(ite (and (= a0 Model_0_pos) ) Epoch!val!2
	(ite (and (= a0 Model_1_pos) ) Epoch!val!2
	(ite (and (= a0 Model_11_pos) ) Epoch!val!0
	(ite (and (= a0 Model_26_ice) ) Epoch!val!2
	(ite (and (= a0 Model_27_ice) ) Epoch!val!1
	(ite (and (= a0 Model_28_ice) ) Epoch!val!3
	(ite (and (= a0 Model_29_ice) ) Epoch!val!2
	(ite (and (= a0 Model_30_ice) ) Epoch!val!2
	(ite (and (= a0 Model_31_ice) ) Epoch!val!3
	(ite (and (= a0 Model_32_ice) ) Epoch!val!2
	(ite (and (= a0 Model_33_ice) ) Epoch!val!4
	(ite (and (= a0 Model_34_ice) ) Epoch!val!3
	(ite (and (= a0 Model_35_ice) ) Epoch!val!1
	(ite (and (= a0 Model_36_ice) ) Epoch!val!3
	(ite (and (= a0 Model_37_ice) ) Epoch!val!2
	(ite (and (= a0 Model_38_ice) ) Epoch!val!2
	(ite (and (= a0 Model_39_ice) ) Epoch!val!4
	(ite (and (= a0 Model_40_ice) ) Epoch!val!3
	(ite (and (= a0 Model_41_ice) ) Epoch!val!0
	(ite (and (= a0 Model_42_ice) ) Epoch!val!0
	(ite (and (= a0 Model_43_ice) ) Epoch!val!3
	(ite (and (= a0 Model_44_ice) ) Epoch!val!2
	(ite (and (= a0 Model_45_ice) ) Epoch!val!1
	(ite (and (= a0 Model_46_ice) ) Epoch!val!0
	(zero_dummy a0 )))))))))))))))))))))))))
)
(declare-fun one_dummy (ModelId) Epoch)
(define-fun one ((a0 ModelId)) Epoch
    	(ite (and (= a0 Model_0_pos) ) Epoch!val!1
	(ite (and (= a0 Model_1_pos) ) Epoch!val!1
	(ite (and (= a0 Model_11_pos) ) Epoch!val!2
	(ite (and (= a0 Model_26_ice) ) Epoch!val!3
	(ite (and (= a0 Model_27_ice) ) Epoch!val!2
	(ite (and (= a0 Model_28_ice) ) Epoch!val!2
	(ite (and (= a0 Model_29_ice) ) Epoch!val!1
	(ite (and (= a0 Model_30_ice) ) Epoch!val!1
	(ite (and (= a0 Model_31_ice) ) Epoch!val!2
	(ite (and (= a0 Model_32_ice) ) Epoch!val!1
	(ite (and (= a0 Model_33_ice) ) Epoch!val!3
	(ite (and (= a0 Model_34_ice) ) Epoch!val!4
	(ite (and (= a0 Model_35_ice) ) Epoch!val!0
	(ite (and (= a0 Model_36_ice) ) Epoch!val!2
	(ite (and (= a0 Model_37_ice) ) Epoch!val!1
	(ite (and (= a0 Model_38_ice) ) Epoch!val!1
	(ite (and (= a0 Model_39_ice) ) Epoch!val!3
	(ite (and (= a0 Model_40_ice) ) Epoch!val!2
	(ite (and (= a0 Model_41_ice) ) Epoch!val!1
	(ite (and (= a0 Model_42_ice) ) Epoch!val!1
	(ite (and (= a0 Model_43_ice) ) Epoch!val!2
	(ite (and (= a0 Model_44_ice) ) Epoch!val!1
	(ite (and (= a0 Model_45_ice) ) Epoch!val!0
	(ite (and (= a0 Model_46_ice) ) Epoch!val!1
	(one_dummy a0 )))))))))))))))))))))))))
)
(declare-fun first_dummy (ModelId) Node)
(define-fun first ((a0 ModelId)) Node
    	(ite (and (= a0 Model_0_pos) ) Node!val!0
	(ite (and (= a0 Model_1_pos) ) Node!val!1
	(ite (and (= a0 Model_11_pos) ) Node!val!2
	(ite (and (= a0 Model_26_ice) ) Node!val!0
	(ite (and (= a0 Model_27_ice) ) Node!val!0
	(ite (and (= a0 Model_28_ice) ) Node!val!0
	(ite (and (= a0 Model_29_ice) ) Node!val!0
	(ite (and (= a0 Model_30_ice) ) Node!val!0
	(ite (and (= a0 Model_31_ice) ) Node!val!0
	(ite (and (= a0 Model_32_ice) ) Node!val!0
	(ite (and (= a0 Model_33_ice) ) Node!val!0
	(ite (and (= a0 Model_34_ice) ) Node!val!0
	(ite (and (= a0 Model_35_ice) ) Node!val!0
	(ite (and (= a0 Model_36_ice) ) Node!val!0
	(ite (and (= a0 Model_37_ice) ) Node!val!0
	(ite (and (= a0 Model_38_ice) ) Node!val!0
	(ite (and (= a0 Model_39_ice) ) Node!val!0
	(ite (and (= a0 Model_40_ice) ) Node!val!0
	(ite (and (= a0 Model_41_ice) ) Node!val!0
	(ite (and (= a0 Model_42_ice) ) Node!val!0
	(ite (and (= a0 Model_43_ice) ) Node!val!0
	(ite (and (= a0 Model_44_ice) ) Node!val!0
	(ite (and (= a0 Model_45_ice) ) Node!val!0
	(ite (and (= a0 Model_46_ice) ) Node!val!0
	(first_dummy a0 )))))))))))))))))))))))))
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

;Declaring functions corresponding to nonterminals
(define-fun inv_Node__109 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b335 
 n1 
 n2)
)
(define-fun inv_Node__127 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b364 
 n1 
 n2)
)
(define-fun inv_Node__81 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b307 
 n1 
 n2)
)
(define-fun inv_Node__120 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b269 
 n1 
 n2)
)
(define-fun inv_Node__113 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b199 
 n1 
 n2)
)
(define-fun inv_Node__206 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b386 
 n1 
 n2)
)
(define-fun inv_Node__215 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b348 
 n1 
 n2)
)
(define-fun inv_Node__77 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b350 
 n1 
 n2)
)
(define-fun inv_Node__99 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b270 
 n1 
 n2)
)
(define-fun inv_Node__154 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b312 
 n1 
 n2)
)
(define-fun inv_Node__178 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b359 
 n1 
 n2)
)
(define-fun inv_Node__89 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b202 
 n1 
 n2)
)
(define-fun inv_Node__125 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b363 
 n1 
 n2)
)
(define-fun inv_Node__119 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b344 
 n1 
 n2)
)
(define-fun inv_Node__177 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b248 
 n1 
 n2)
)
(define-fun inv_Node__228 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b284 
 n1 
 n2)
)
(define-fun inv_Node__205 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b349 
 n1 
 n2)
)
(define-fun inv_Node__188 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b276 
 n1 
 n2)
)
(define-fun inv_Node__199 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b184 
 n1 
 n2)
)
(define-fun inv_Node__233 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b187 
 n1 
 n2)
)
(define-fun inv_Node__240 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b177 
 n1 
 n2)
)
(define-fun inv_Node__70 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b354 
 n1 
 n2)
)
(define-fun inv_Node__187 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b347 
 n1 
 n2)
)
(define-fun inv_Node__84 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b325 
 n1 
 n2)
)
(define-fun inv_Node__123 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b266 
 n1 
 n2)
)
(define-fun inv_Node__76 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b238 
 n1 
 n2)
)
(define-fun inv_Node__135 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b272 
 n1 
 n2)
)
(define-fun inv_Node__75 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b221 
 n1 
 n2)
)
(define-fun inv_Node__111 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b196 
 n1 
 n2)
)
(define-fun inv_Node__79 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b239 
 n1 
 n2)
)
(define-fun inv_Node__80 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b313 
 n1 
 n2)
)
(define-fun inv_Node__185 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b232 
 n1 
 n2)
)
(define-fun inv_Node__227 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b182 
 n1 
 n2)
)
(define-fun inv_Node__53 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b229 
 n1 
 n2)
)
(define-fun inv_Node__139 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b251 
 n1 
 n2)
)
(define-fun inv_Node__232 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b198 
 n1 
 n2)
)
(define-fun inv_Node__91 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b376 
 n1 
 n2)
)
(define-fun inv_Node__104 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b185 
 n1 
 n2)
)
(define-fun inv_Node__122 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b334 
 n1 
 n2)
)
(define-fun inv_Node__121 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b383 
 n1 
 n2)
)
(define-fun inv_Node__231 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b240 
 n1 
 n2)
)
(define-fun inv_Node__226 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b206 
 n1 
 n2)
)
(define-fun inv_Node__92 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b258 
 n1 
 n2)
)
(define-fun inv_Node__211 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b226 
 n1 
 n2)
)
(define-fun inv_Node__78 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b372 
 n1 
 n2)
)
(define-fun inv_Node__74 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b341 
 n1 
 n2)
)
(define-fun inv_Node__87 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b256 
 n1 
 n2)
)
(define-fun inv_Node__126 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b309 
 n1 
 n2)
)
(define-fun inv_Node__110 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b228 
 n1 
 n2)
)
(define-fun inv_Node__192 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b357 
 n1 
 n2)
)
(define-fun inv_Node__249 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b230 
 n1 
 n2)
)
(define-fun inv_Node__246 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b385 
 n1 
 n2)
)
(define-fun inv_Node__158 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b262 
 n1 
 n2)
)
(define-fun inv_Node__52 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b379 
 n1 
 n2)
)
(define-fun inv_Node__229 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b194 
 n1 
 n2)
)
(define-fun inv_Node__207 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b190 
 n1 
 n2)
)
(define-fun inv_Node__69 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b387 
 n1 
 n2)
)
(define-fun inv_Node__182 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b195 
 n1 
 n2)
)
(define-fun inv_Node__85 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b338 
 n1 
 n2)
)
(define-fun inv_Node__224 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b257 
 n1 
 n2)
)
(define-fun inv_Node__252 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b178 
 n1 
 n2)
)
(define-fun inv_Node__82 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b296 
 n1 
 n2)
)
(define-fun inv_Epoch__8 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__109 m s n1 n2))
)
(define-fun inv_Node__62 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b322 
 n1 
 n2)
)
(define-fun inv_Node__0 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b170 
 n1 
 n2)
)
(define-fun inv_Node__166 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b213 
 n1 
 n2)
)
(define-fun inv_Node__251 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b225 
 n1 
 n2)
)
(define-fun inv_Epoch__3 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__80 m s n1 n2))
)
(define-fun inv_Node__247 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b343 
 n1 
 n2)
)
(define-fun inv_Node__128 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b259 
 n1 
 n2)
)
(define-fun inv_Epoch__42 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__87 m s n1 n2))
)
(define-fun inv_Node__55 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b267 
 n1 
 n2)
)
(define-fun inv_Atom_10 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b114 
 (held m s (inv_Node__119 m s n1 n2)) 
 (= (inv_Node__120 m s n1 n2) (inv_Node__121 m s n1 n2)))
)
(define-fun inv_Node__2 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b134 
 n1 
 n2)
)
(define-fun inv_Node__220 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b366 
 n1 
 n2)
)
(define-fun inv_Node__95 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b298 
 n1 
 n2)
)
(define-fun inv_Node__250 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b358 
 n1 
 n2)
)
(define-fun inv_Node__140 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b246 
 n1 
 n2)
)
(define-fun inv_Node__189 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b205 
 n1 
 n2)
)
(define-fun inv_Epoch__5 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__215 m s n1 n2))
)
(define-fun inv_Node__255 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b374 
 n1 
 n2)
)
(define-fun inv_Node__212 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b295 
 n1 
 n2)
)
(define-fun inv_Node__112 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b175 
 n1 
 n2)
)
(define-fun inv_Node__167 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b209 
 n1 
 n2)
)
(define-fun inv_Node__83 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b377 
 n1 
 n2)
)
(define-fun inv_Node__88 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b315 
 n1 
 n2)
)
(define-fun inv_Node__225 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b280 
 n1 
 n2)
)
(define-fun inv_Node__208 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b288 
 n1 
 n2)
)
(define-fun inv_Node__124 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b210 
 n1 
 n2)
)
(define-fun inv_Node__90 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b294 
 n1 
 n2)
)
(define-fun inv_Node__8 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b129 
 n1 
 n2)
)
(define-fun inv_Node__170 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b283 
 n1 
 n2)
)
(define-fun inv_Node__164 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b234 
 n1 
 n2)
)
(define-fun inv_Node__143 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b193 
 n1 
 n2)
)
(define-fun inv_Node__68 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b290 
 n1 
 n2)
)
(define-fun inv_Node__190 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b278 
 n1 
 n2)
)
(define-fun inv_Node__39 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b162 
 n1 
 n2)
)
(define-fun inv_Atom_63 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b96 
 (held m s (inv_Node__88 m s n1 n2)) 
 (= (inv_Node__89 m s n1 n2) (inv_Node__90 m s n1 n2)))
)
(define-fun inv_Node__51 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b329 
 n1 
 n2)
)
(define-fun inv_Node__200 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b203 
 n1 
 n2)
)
(define-fun inv_Atom_60 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b160 
 (held m s (inv_Node__231 m s n1 n2)) 
 (= (inv_Node__232 m s n1 n2) (inv_Node__233 m s n1 n2)))
)
(define-fun inv_Node__72 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b215 
 n1 
 n2)
)
(define-fun inv_Node__145 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b361 
 n1 
 n2)
)
(define-fun inv_Node__173 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b323 
 n1 
 n2)
)
(define-fun inv_Node__48 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b381 
 n1 
 n2)
)
(define-fun inv_Atom_59 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b94 
 (held m s (inv_Node__81 m s n1 n2)) 
 (= (inv_Node__82 m s n1 n2) (inv_Node__83 m s n1 n2)))
)
(define-fun inv_Atom_21 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b92 
 (held m s (inv_Node__77 m s n1 n2)) 
 (= (inv_Node__78 m s n1 n2) (inv_Node__79 m s n1 n2)))
)
(define-fun inv_Atom_61 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b110 
 (held m s (inv_Node__111 m s n1 n2)) 
 (= (inv_Node__112 m s n1 n2) (inv_Node__113 m s n1 n2)))
)
(define-fun inv_Node__102 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b326 
 n1 
 n2)
)
(define-fun inv_Node__248 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b293 
 n1 
 n2)
)
(define-fun inv_Node__73 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b328 
 n1 
 n2)
)
(define-fun inv_Node__241 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b191 
 n1 
 n2)
)
(define-fun inv_Node__105 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b382 
 n1 
 n2)
)
(define-fun inv_Node__108 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b192 
 n1 
 n2)
)
(define-fun inv_Node__186 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b308 
 n1 
 n2)
)
(define-fun inv_Node__43 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b286 
 n1 
 n2)
)
(define-fun inv_Atom_26 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b117 
 (held m s (inv_Node__126 m s n1 n2)) 
 (= (inv_Node__127 m s n1 n2) (inv_Node__128 m s n1 n2)))
)
(define-fun inv_Node__155 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b316 
 n1 
 n2)
)
(define-fun inv_Atom_27 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b154 
 (held m s (inv_Node__224 m s n1 n2)) 
 (= (inv_Node__225 m s n1 n2) (inv_Node__226 m s n1 n2)))
)
(define-fun inv_Atom_14 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b79 
 (held m s (inv_Node__51 m s n1 n2)) 
 (= (inv_Node__52 m s n1 n2) (inv_Node__53 m s n1 n2)))
)
(define-fun inv_Atom_22 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b155 
 (held m s (inv_Node__227 m s n1 n2)) 
 (= (inv_Node__228 m s n1 n2) (inv_Node__229 m s n1 n2)))
)
(define-fun inv_Node__138 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b314 
 n1 
 n2)
)
(define-fun inv_Node__161 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b223 
 n1 
 n2)
)
(define-fun inv_Node__242 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b300 
 n1 
 n2)
)
(define-fun inv_Node__153 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b236 
 n1 
 n2)
)
(define-fun inv_Node__129 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b197 
 n1 
 n2)
)
(define-fun inv_Atom_12 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b145 
 (held m s (inv_Node__205 m s n1 n2)) 
 (= (inv_Node__206 m s n1 n2) (inv_Node__207 m s n1 n2)))
)
(define-fun inv_Node__253 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b204 
 n1 
 n2)
)
(define-fun inv_Node__181 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b330 
 n1 
 n2)
)
(define-fun inv_Node__86 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b324 
 n1 
 n2)
)
(define-fun inv_Node__54 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b346 
 n1 
 n2)
)
(define-fun inv_Node__9 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b82 
 n1 
 n2)
)
(define-fun inv_Node__176 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b222 
 n1 
 n2)
)
(define-fun inv_Epoch__44 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__242 m s n1 n2))
)
(define-fun inv_Epoch__45 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__240 m s n1 n2))
)
(define-fun inv_Node__71 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b317 
 n1 
 n2)
)
(define-fun inv_Node__148 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b355 
 n1 
 n2)
)
(define-fun inv_Node__213 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b311 
 n1 
 n2)
)
(define-fun inv_Node__234 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b214 
 n1 
 n2)
)
(define-fun inv_Node__236 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b301 
 n1 
 n2)
)
(define-fun inv_Epoch__6 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__154 m s n1 n2))
)
(define-fun inv_Node__142 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b282 
 n1 
 n2)
)
(define-fun inv_Node__1 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b111 
 n1 
 n2)
)
(define-fun inv_Node__35 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b99 
 n1 
 n2)
)
(define-fun inv_Node__4 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b80 
 n1 
 n2)
)
(define-fun inv_Node__201 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b331 
 n1 
 n2)
)
(define-fun inv_Atom_62 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b89 
 (held m s (inv_Node__68 m s n1 n2)) 
 (= (inv_Node__69 m s n1 n2) (inv_Node__70 m s n1 n2)))
)
(define-fun inv_Node__32 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b109 
 n1 
 n2)
)
(define-fun inv_Atom_44 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b143 
 (held m s (inv_Node__199 m s n1 n2)) 
 (= (inv_Node__200 m s n1 n2) (inv_Node__201 m s n1 n2)))
)
(define-fun inv_Epoch__21 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__208 m s n1 n2))
)
(define-fun inv_Node__59 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b340 
 n1 
 n2)
)
(define-fun inv_Node__97 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b265 
 n1 
 n2)
)
(define-fun inv_Node__93 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b254 
 n1 
 n2)
)
(define-fun inv_Node__133 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b306 
 n1 
 n2)
)
(define-fun inv_Atom_46 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b95 
 (held m s (inv_Node__84 m s n1 n2)) 
 (= (inv_Node__85 m s n1 n2) (inv_Node__86 m s n1 n2)))
)
(define-fun inv_Node__141 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b384 
 n1 
 n2)
)
(define-fun inv_Atom_15 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b91 
 (held m s (inv_Node__74 m s n1 n2)) 
 (= (inv_Node__75 m s n1 n2) (inv_Node__76 m s n1 n2)))
)
(define-fun inv_Epoch__10 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__99 m s n1 n2))
)
(define-fun inv_Node__101 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b319 
 n1 
 n2)
)
(define-fun inv_Node__137 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b375 
 n1 
 n2)
)
(define-fun inv_Node__163 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b243 
 n1 
 n2)
)
(define-fun inv_Node__96 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b174 
 n1 
 n2)
)
(define-fun inv_Epoch__24 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__188 m s n1 n2))
)
(define-fun inv_Node__10 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b146 
 n1 
 n2)
)
(define-fun inv_Epoch__43 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__249 m s n1 n2))
)
(define-fun inv_Node__98 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b320 
 n1 
 n2)
)
(define-fun inv_Epoch__37 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__104 m s n1 n2))
)
(define-fun inv_Epoch__7 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__135 m s n1 n2))
)
(define-fun inv_Epoch__16 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__110 m s n1 n2))
)
(define-fun inv_Node__115 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b342 
 n1 
 n2)
)
(define-fun inv_Node__29 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b128 
 n1 
 n2)
)
(define-fun inv_Node__209 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b356 
 n1 
 n2)
)
(define-fun inv_Node__117 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b237 
 n1 
 n2)
)
(define-fun inv_Node__184 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b362 
 n1 
 n2)
)
(define-fun inv_Node__179 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b378 
 n1 
 n2)
)
(define-fun inv_Atom_28 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b132 
 (held m s (inv_Node__176 m s n1 n2)) 
 (= (inv_Node__177 m s n1 n2) (inv_Node__178 m s n1 n2)))
)
(define-fun inv_Atom_29 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b138 
 (held m s (inv_Node__185 m s n1 n2)) 
 (= (inv_Node__186 m s n1 n2) (inv_Node__187 m s n1 n2)))
)
(define-fun inv_Epoch__20 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__125 m s n1 n2))
)
(define-fun inv_Atom_38 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b98 
 (held m s (inv_Node__91 m s n1 n2)) 
 (= (inv_Node__92 m s n1 n2) (inv_Node__93 m s n1 n2)))
)
(define-fun inv_Epoch__9 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__140 m s n1 n2))
)
(define-fun inv_Node__157 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b220 
 n1 
 n2)
)
(define-fun inv_Node__210 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b289 
 n1 
 n2)
)
(define-fun inv_Node__171 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b365 
 n1 
 n2)
)
(define-fun inv_Node__183 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b189 
 n1 
 n2)
)
(define-fun inv_Epoch__46 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__255 m s n1 n2))
)
(define-fun inv_Node__156 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b245 
 n1 
 n2)
)
(define-fun inv_Node__57 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b224 
 n1 
 n2)
)
(define-fun inv_Atom_13 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b115 
 (held m s (inv_Node__122 m s n1 n2)) 
 (= (inv_Node__123 m s n1 n2) (inv_Node__124 m s n1 n2)))
)
(define-fun inv_Node__42 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b310 
 n1 
 n2)
)
(define-fun inv_Node__56 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b249 
 n1 
 n2)
)
(define-fun inv_Atom_57 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b148 
 (held m s (inv_Node__209 m s n1 n2)) 
 (= (inv_Node__210 m s n1 n2) (inv_Node__211 m s n1 n2)))
)
(define-fun inv_Node__168 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b345 
 n1 
 n2)
)
(define-fun inv_Node__61 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b250 
 n1 
 n2)
)
(define-fun inv_Atom_8 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b119 
 (held m s (inv_Node__137 m s n1 n2)) 
 (= (inv_Node__138 m s n1 n2) (inv_Node__139 m s n1 n2)))
)
(define-fun inv_Node__160 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b212 
 n1 
 n2)
)
(define-fun inv_Node__94 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b380 
 n1 
 n2)
)
(define-fun inv_Node__38 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b137 
 n1 
 n2)
)
(define-fun inv_Node__202 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b271 
 n1 
 n2)
)
(define-fun inv_Node__172 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b219 
 n1 
 n2)
)
(define-fun inv_Node__41 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b339 
 n1 
 n2)
)
(define-fun inv_Node__159 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b369 
 n1 
 n2)
)
(define-fun inv_Node__214 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b200 
 n1 
 n2)
)
(define-fun inv_Node__3 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b105 
 n1 
 n2)
)
(define-fun inv_Epoch__4 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__133 m s n1 n2))
)
(define-fun inv_Atom_58 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b83 
 (held m s (inv_Node__55 m s n1 n2)) 
 (= (inv_Node__56 m s n1 n2) (inv_Node__57 m s n1 n2)))
)
(define-fun inv_Node__203 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b373 
 n1 
 n2)
)
(define-fun inv_Node__243 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b303 
 n1 
 n2)
)
(define-fun inv_Node__238 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b274 
 n1 
 n2)
)
(define-fun inv_Epoch__47 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__117 m s n1 n2))
)
(define-fun inv_Node__169 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b201 
 n1 
 n2)
)
(define-fun inv_Node__5 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b163 
 n1 
 n2)
)
(define-fun inv_Node__219 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b304 
 n1 
 n2)
)
(define-fun inv_Epoch__1 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__166 m s n1 n2))
)
(define-fun inv_Node__222 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b186 
 n1 
 n2)
)
(define-fun inv_Node__151 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b207 
 n1 
 n2)
)
(define-fun inv_Epoch__0 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__219 m s n1 n2))
)
(define-fun inv_Node__14 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b93 
 n1 
 n2)
)
(define-fun inv_Node__118 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b291 
 n1 
 n2)
)
(define-fun inv_Node__107 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b252 
 n1 
 n2)
)
(define-fun inv_Node__165 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b253 
 n1 
 n2)
)
(define-fun inv_Epoch__2 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__220 m s n1 n2))
)
(define-fun inv_Epoch__14 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__161 m s n1 n2))
)
(define-fun inv_Atom_19 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b126 
 (held m s (inv_Node__158 m s n1 n2)) 
 (= (inv_Node__159 m s n1 n2) (inv_Node__160 m s n1 n2)))
)
(define-fun inv_Node__6 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b108 
 n1 
 n2)
)
(define-fun inv_Node__198 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b241 
 n1 
 n2)
)
(define-fun inv_Atom_9 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b90 
 (held m s (inv_Node__71 m s n1 n2)) 
 (= (inv_Node__72 m s n1 n2) (inv_Node__73 m s n1 n2)))
)
(define-fun inv_Node__50 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b173 
 n1 
 n2)
)
(define-fun inv_Node__191 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b218 
 n1 
 n2)
)
(define-fun inv_Node__64 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b297 
 n1 
 n2)
)
(define-fun inv_Atom_39 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b131 
 (held m s (inv_Node__170 m s n1 n2)) 
 (= (inv_Node__171 m s n1 n2) (inv_Node__172 m s n1 n2)))
)
(define-fun inv_Node__24 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b156 
 n1 
 n2)
)
(define-fun inv_Node__49 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b264 
 n1 
 n2)
)
(define-fun inv_Atom_18 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b140 
 (held m s (inv_Node__190 m s n1 n2)) 
 (= (inv_Node__191 m s n1 n2) (inv_Node__192 m s n1 n2)))
)
(define-fun inv_Atom_11 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b171 
 (held m s (inv_Node__251 m s n1 n2)) 
 (= (inv_Node__252 m s n1 n2) (inv_Node__253 m s n1 n2)))
)
(define-fun inv_Node__244 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b263 
 n1 
 n2)
)
(define-fun inv_Node__66 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b247 
 n1 
 n2)
)
(define-fun inv_Atom_50 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b169 
 (held m s (inv_Node__246 m s n1 n2)) 
 (= (inv_Node__247 m s n1 n2) (inv_Node__248 m s n1 n2)))
)
(define-fun inv_Node__63 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b179 
 n1 
 n2)
)
(define-fun inv_Atom_37 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b136 
 (held m s (inv_Node__182 m s n1 n2)) 
 (= (inv_Node__183 m s n1 n2) (inv_Node__184 m s n1 n2)))
)
(define-fun inv_Node__37 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b106 
 n1 
 n2)
)
(define-fun inv_Node__36 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b112 
 n1 
 n2)
)
(define-fun inv_Atom_16 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b149 
 (held m s (inv_Node__212 m s n1 n2)) 
 (= (inv_Node__213 m s n1 n2) (inv_Node__214 m s n1 n2)))
)
(define-fun inv_Node__7 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b107 
 n1 
 n2)
)
(define-fun inv_Epoch__25 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__61 m s n1 n2))
)
(define-fun inv_Node__245 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b287 
 n1 
 n2)
)
(define-fun inv_Atom_17 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b100 
 (held m s (inv_Node__94 m s n1 n2)) 
 (= (inv_Node__95 m s n1 n2) (inv_Node__96 m s n1 n2)))
)
(define-fun inv_Atom_4 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
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
(define-fun inv_Epoch__19 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__189 m s n1 n2))
)
(define-fun inv_Node__149 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b231 
 n1 
 n2)
)
(define-fun inv_Atom_56 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b78 
 (held m s (inv_Node__48 m s n1 n2)) 
 (= (inv_Node__49 m s n1 n2) (inv_Node__50 m s n1 n2)))
)
(define-fun inv_Node__254 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b370 
 n1 
 n2)
)
(define-fun inv_Atom_24 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b120 
 (held m s (inv_Node__141 m s n1 n2)) 
 (= (inv_Node__142 m s n1 n2) (inv_Node__143 m s n1 n2)))
)
(define-fun inv_Node__12 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b97 
 n1 
 n2)
)
(define-fun inv_Node__144 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b352 
 n1 
 n2)
)
(define-fun inv_Node__146 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b292 
 n1 
 n2)
)
(define-fun inv_Node__150 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b244 
 n1 
 n2)
)
(define-fun inv_Atom_48 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b76 
 (held m s (inv_Node__41 m s n1 n2)) 
 (= (inv_Node__42 m s n1 n2) (inv_Node__43 m s n1 n2)))
)
(define-fun inv_Node__131 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b302 
 n1 
 n2)
)
(define-fun inv_Node__180 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b337 
 n1 
 n2)
)
(define-fun inv_Atom_36 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b124 
 (held m s (inv_Node__155 m s n1 n2)) 
 (= (inv_Node__156 m s n1 n2) (inv_Node__157 m s n1 n2)))
)
(define-fun inv_Node__23 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b101 
 n1 
 n2)
)
(define-fun inv_Node__230 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b285 
 n1 
 n2)
)
(define-fun inv_Node__33 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b81 
 n1 
 n2)
)
(define-fun inv_Node__100 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b371 
 n1 
 n2)
)
(define-fun inv_Node__58 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b211 
 n1 
 n2)
)
(define-fun inv_Node__30 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b159 
 n1 
 n2)
)
(define-fun inv_Epoch__13 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__254 m s n1 n2))
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
(define-fun inv_Node__40 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b327 
 n1 
 n2)
)
(define-fun inv_Atom_52 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b121 
 (held m s (inv_Node__144 m s n1 n2)) 
 (= (inv_Node__145 m s n1 n2) (inv_Node__146 m s n1 n2)))
)
(define-fun inv_Node__218 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b336 
 n1 
 n2)
)
(define-fun inv_Atom_20 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b130 
 (held m s (inv_Node__167 m s n1 n2)) 
 (= (inv_Node__168 m s n1 n2) (inv_Node__169 m s n1 n2)))
)
(define-fun inv_Atom_41 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b168 
 (held m s (inv_Node__243 m s n1 n2)) 
 (= (inv_Node__244 m s n1 n2) (inv_Node__245 m s n1 n2)))
)
(define-fun inv_Epoch__11 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__250 m s n1 n2))
)
(define-fun inv_Node__221 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b188 
 n1 
 n2)
)
(define-fun inv_Node__162 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b281 
 n1 
 n2)
)
(define-fun inv_Node__239 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b333 
 n1 
 n2)
)
(define-fun inv_Epoch__41 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__98 m s n1 n2))
)
(define-fun inv_Node__15 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b147 
 n1 
 n2)
)
(define-fun inv_Node__223 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b279 
 n1 
 n2)
)
(define-fun inv_Node__60 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b277 
 n1 
 n2)
)
(define-fun inv_Node__17 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b139 
 n1 
 n2)
)
(define-fun inv_Node__132 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b353 
 n1 
 n2)
)
(define-fun inv_Node__47 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b181 
 n1 
 n2)
)
(define-fun inv_Atom_45 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b86 
 (held m s (inv_Node__62 m s n1 n2)) 
 (= (inv_Node__63 m s n1 n2) (inv_Node__64 m s n1 n2)))
)
(define-fun inv_Node__26 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b103 
 n1 
 n2)
)
(define-fun inv_Node__103 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b217 
 n1 
 n2)
)
(define-fun inv_Node__216 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b273 
 n1 
 n2)
)
(define-fun inv_Atom_2 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
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
(define-fun inv_Node__196 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b180 
 n1 
 n2)
)
(define-fun inv_Node__134 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b299 
 n1 
 n2)
)
(define-fun inv_Node__152 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b233 
 n1 
 n2)
)
(define-fun inv_Epoch__34 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__118 m s n1 n2))
)
(define-fun inv_Node__130 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b367 
 n1 
 n2)
)
(define-fun inv_Node__237 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b368 
 n1 
 n2)
)
(define-fun inv_Node__106 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b208 
 n1 
 n2)
)
(define-fun inv_Node__217 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b275 
 n1 
 n2)
)
(define-fun inv_Node__46 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b260 
 n1 
 n2)
)
(define-fun inv_Node__204 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b318 
 n1 
 n2)
)
(define-fun inv_Node__45 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b172 
 n1 
 n2)
)
(define-fun inv_Epoch__26 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__100 m s n1 n2))
)
(define-fun inv_Node__25 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b161 
 n1 
 n2)
)
(define-fun inv_Node__197 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b268 
 n1 
 n2)
)
(define-fun inv_Atom_30 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b153 
 (held m s (inv_Node__221 m s n1 n2)) 
 (= (inv_Node__222 m s n1 n2) (inv_Node__223 m s n1 n2)))
)
(define-fun inv_Atom_54 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b127 
 (held m s (inv_Node__163 m s n1 n2)) 
 (= (inv_Node__164 m s n1 n2) (inv_Node__165 m s n1 n2)))
)
(define-fun inv_Node__147 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b332 
 n1 
 n2)
)
(define-fun inv_Node__175 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b261 
 n1 
 n2)
)
(define-fun inv_Node__235 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b227 
 n1 
 n2)
)
(define-fun inv_Epoch__29 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__105 m s n1 n2))
)
(define-fun inv_Node__11 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b85 
 n1 
 n2)
)
(define-fun inv_Epoch__32 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__241 m s n1 n2))
)
(define-fun inv_Atom_31 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b144 
 (held m s (inv_Node__202 m s n1 n2)) 
 (= (inv_Node__203 m s n1 n2) (inv_Node__204 m s n1 n2)))
)
(define-fun inv_Atom_40 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b77 
 (held m s (inv_Node__45 m s n1 n2)) 
 (= (inv_Node__46 m s n1 n2) (inv_Node__47 m s n1 n2)))
)
(define-fun inv_Epoch__39 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__150 m s n1 n2))
)
(define-fun inv_Node__67 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b255 
 n1 
 n2)
)
(define-fun inv_Atom_34 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b150 
 (held m s (inv_Node__216 m s n1 n2)) 
 (= (inv_Node__217 m s n1 n2) (inv_Node__218 m s n1 n2)))
)
(define-fun inv_Atom_25 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b104 
 (held m s (inv_Node__106 m s n1 n2)) 
 (= (inv_Node__107 m s n1 n2) (inv_Node__108 m s n1 n2)))
)
(define-fun inv_Atom_23 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b123 
 (held m s (inv_Node__151 m s n1 n2)) 
 (= (inv_Node__152 m s n1 n2) (inv_Node__153 m s n1 n2)))
)
(define-fun inv_Atom_47 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b102 
 (held m s (inv_Node__101 m s n1 n2)) 
 (= (inv_Node__102 m s n1 n2) (inv_Node__103 m s n1 n2)))
)
(define-fun inv_Epoch__17 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__173 m s n1 n2))
)
(define-fun inv_Node__195 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b235 
 n1 
 n2)
)
(define-fun inv_Epoch__15 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__58 m s n1 n2))
)
(define-fun inv_Atom_33 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b167 
 (held m s (inv_Node__237 m s n1 n2)) 
 (= (inv_Node__238 m s n1 n2) (inv_Node__239 m s n1 n2)))
)
(define-fun inv_Node__116 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b183 
 n1 
 n2)
)
(define-fun inv_Epoch__12 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__129 m s n1 n2))
)
(define-fun inv_Atom_42 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b133 
 (held m s (inv_Node__179 m s n1 n2)) 
 (= (inv_Node__180 m s n1 n2) (inv_Node__181 m s n1 n2)))
)
(define-fun inv_Epoch__35 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__60 m s n1 n2))
)
(define-fun inv_Node__18 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b135 
 n1 
 n2)
)
(define-fun inv_Node__65 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b305 
 n1 
 n2)
)
(define-fun inv_Node__136 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b351 
 n1 
 n2)
)
(define-fun inv_Atom_53 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b118 
 (held m s (inv_Node__130 m s n1 n2)) 
 (= (inv_Node__131 m s n1 n2) (inv_Node__132 m s n1 n2)))
)
(define-fun inv_Node__34 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b157 
 n1 
 n2)
)
(define-fun inv_Node__13 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b152 
 n1 
 n2)
)
(define-fun inv_Epoch__33 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__54 m s n1 n2))
)
(define-fun inv_Atom_43 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b142 
 (held m s (inv_Node__196 m s n1 n2)) 
 (= (inv_Node__197 m s n1 n2) (inv_Node__198 m s n1 n2)))
)
(define-fun inv_Node__16 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b87 
 n1 
 n2)
)
(define-fun inv_Epoch__30 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__175 m s n1 n2))
)
(define-fun inv_Node__19 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b158 
 n1 
 n2)
)
(define-fun inv_Node__44 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b321 
 n1 
 n2)
)
(define-fun inv_Node__193 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b216 
 n1 
 n2)
)
(define-fun inv_Atom_1 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
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
(define-fun inv_Atom_35 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b164 
 (held m s (inv_Node__234 m s n1 n2)) 
 (= (inv_Node__235 m s n1 n2) (inv_Node__236 m s n1 n2)))
)
(define-fun inv_Node__194 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b360 
 n1 
 n2)
)
(define-fun inv_Epoch__38 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__97 m s n1 n2))
)
(define-fun inv_Atom_55 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b122 
 (held m s (inv_Node__147 m s n1 n2)) 
 (= (inv_Node__148 m s n1 n2) (inv_Node__149 m s n1 n2)))
)
(define-fun inv_Epoch__28 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__40 m s n1 n2))
)
(define-fun inv_Node__20 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b165 
 n1 
 n2)
)
(define-fun inv_Node__28 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b125 
 n1 
 n2)
)
(define-fun inv_Node__22 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b151 
 n1 
 n2)
)
(define-fun inv_Node__21 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b84 
 n1 
 n2)
)
(define-fun inv_Atom_51 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b88 
 (held m s (inv_Node__65 m s n1 n2)) 
 (= (inv_Node__66 m s n1 n2) (inv_Node__67 m s n1 n2)))
)
(define-fun inv_Epoch__31 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__44 m s n1 n2))
)
(define-fun inv_Epoch__27 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__59 m s n1 n2))
)
(define-fun inv_Epoch__18 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__134 m s n1 n2))
)
(define-fun inv_Node__174 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b242 
 n1 
 n2)
)
(define-fun inv_Epoch__40 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__162 m s n1 n2))
)
(define-fun inv_Node__27 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b166 
 n1 
 n2)
)
(define-fun inv_Epoch__22 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__174 m s n1 n2))
)
(define-fun inv_Atom_6 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
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
(define-fun inv_Node__114 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b176 
 n1 
 n2)
)
(define-fun inv_Node__31 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Node
(ite inv_b116 
 n1 
 n2)
)
(define-fun inv_Atom_32 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b113 
 (held m s (inv_Node__114 m s n1 n2)) 
 (= (inv_Node__115 m s n1 n2) (inv_Node__116 m s n1 n2)))
)
(define-fun inv_Epoch__23 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__230 m s n1 n2))
)
(define-fun inv_Atom_49 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
(ite inv_b141 
 (held m s (inv_Node__193 m s n1 n2)) 
 (= (inv_Node__194 m s n1 n2) (inv_Node__195 m s n1 n2)))
)
(define-fun inv_Epoch__36 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Epoch
(ep m s (inv_Node__136 m s n1 n2))
)
(define-fun inv_Atom_5 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
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
(define-fun inv_Atom_0 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
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
(define-fun inv_Atom_3 ((m ModelId) (s StateId) (n1 Node) (n2 Node)) Bool
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
; False
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
;  Not(False)]
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
;        Epoch!val!0))
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
; (forall ((n1 Node)) (held Model_1_pos init n1))
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
;  Not(ForAll(n1, held(Model_1_pos, init, n1)))]
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
; (define-fun init () StateId
;   StateId!val!0)
; (define-fun Model_1_pos () ModelId
;   ModelId!val!0)
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
(assert (and (inv Model_1_pos init Node!val!0 Node!val!0)
     (inv Model_1_pos init Node!val!0 Node!val!1)
     (inv Model_1_pos init Node!val!1 Node!val!0)
     (inv Model_1_pos init Node!val!1 Node!val!1)))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.PositiveCEX'>)
; (forall ((n1 Node) (n2 Node))
;   (or (not (= (ep Model_11_pos init n1) (ep Model_11_pos init n2))) (= n2 n1)))
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Node_1,
;         ForAll(Epoch_1,
;                And(held(Model_11_pos, init, Node_1) ==
;                    (Node_1 == first(Model_11_pos)),
;                    Implies(Node_1 != first(Model_11_pos),
;                            ep(Model_11_pos, init, Node_1) ==
;                            zero(Model_11_pos)),
;                    ep(Model_11_pos,
;                       init,
;                       first(Model_11_pos)) ==
;                    one(Model_11_pos),
;                    transfer(Model_11_pos,
;                             init,
;                             Epoch_1,
;                             Node_1) ==
;                    False,
;                    locked(Model_11_pos,
;                           init,
;                           Epoch_1,
;                           Node_1) ==
;                    False))),
;  ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_11_pos, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_11_pos,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_11_pos,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_11_pos,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_11_pos,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_11_pos,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_11_pos,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_11_pos,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_11_pos,
;                              zero(Model_11_pos),
;                              Epoch_1),
;                           one(Model_11_pos) !=
;                           zero(Model_11_pos))))),
;  Not(ForAll([n1, n2],
;             Or(Not(ep(Model_11_pos, init, n1) ==
;                    ep(Model_11_pos, init, n2)),
;                n2 == n1)))]
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
; (define-fun Model_11_pos () ModelId
;   ModelId!val!0)
; (define-fun init () StateId
;   StateId!val!0)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (let ((a!1 (or (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!0)
;                       (not (= x!2 Node!val!0))
;                       (not (= x!2 Node!val!2)))
;                  (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!0)
;                       (= x!2 Node!val!0)
;                       (not (= x!2 Node!val!2))))))
;     (ite a!1 Epoch!val!0 Epoch!val!2)))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!2) (= x!2 Epoch!val!2))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!2))))
; (define-fun first ((x!0 ModelId)) Node
;   Node!val!2)
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!2)))
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   false)
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   false)
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!0)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!2)
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (and (inv Model_11_pos init Node!val!0 Node!val!0)
     (inv Model_11_pos init Node!val!0 Node!val!1)
     (inv Model_11_pos init Node!val!0 Node!val!2)
     (inv Model_11_pos init Node!val!1 Node!val!0)
     (inv Model_11_pos init Node!val!1 Node!val!1)
     (inv Model_11_pos init Node!val!1 Node!val!2)
     (inv Model_11_pos init Node!val!2 Node!val!0)
     (inv Model_11_pos init Node!val!2 Node!val!1)
     (inv Model_11_pos init Node!val!2 Node!val!2)))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; (forall ((n1 Node) (e1 Epoch)) (not (transfer Model_26_ice S1 e1 n1)))
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_26_ice, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_26_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_26_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_26_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_26_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_26_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_26_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_26_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_26_ice,
;                              zero(Model_26_ice),
;                              Epoch_1),
;                           one(Model_26_ice) !=
;                           zero(Model_26_ice))))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_26_ice, S1, e1, n1)),
;                transfer(Model_26_ice, S1, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_26_ice, S1, e1, n1)),
;                transfer(Model_26_ice,
;                         S1,
;                         ep(Model_26_ice, S1, n1),
;                         n1)))),
;  ForAll([n1, e1], Not(transfer(Model_26_ice, S1, e1, n1))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_26_ice, S2, e1, n1)),
;                transfer(Model_26_ice, S2, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_26_ice, S2, e1, n1)),
;                transfer(Model_26_ice,
;                         S2,
;                         ep(Model_26_ice, S2, n1),
;                         n1)))),
;  Not(ForAll([n1, e1],
;             Not(transfer(Model_26_ice, S2, e1, n1)))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_26_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_26_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_2)),
;                               Node_1 == Node_2)))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_26_ice,
;                                         S2,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_26_ice,
;                                         S2,
;                                         Epoch_1,
;                                         Node_2)),
;                               Node_1 == Node_2)))),
;  Exists(Node_1,
;         Exists(Node_2,
;                Exists(Epoch_1,
;                       And(And(held(Model_26_ice, S1, Node_1),
;                               Not(le(Model_26_ice,
;                                      Epoch_1,
;                                      ep(Model_26_ice,
;                                         S1,
;                                         Node_1)))),
;                           And(ForAll(Node_3,
;                                      ep(Model_26_ice,
;                                         S2,
;                                         Node_3) ==
;                                      ep(Model_26_ice,
;                                         S1,
;                                         Node_3)),
;                               ForAll(Epoch_2,
;                                      ForAll(Node_3,
;                                         locked(Model_26_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_3) ==
;                                         locked(Model_26_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_3))),
;                               ForAll(Epoch_2,
;                                      ForAll(Node_3,
;                                         transfer(Model_26_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_3) ==
;                                         If(And(Epoch_2 ==
;                                         Epoch_1,
;                                         Node_3 == Node_2),
;                                         True,
;                                         transfer(Model_26_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_3)))),
;                               ForAll(Node_3,
;                                      held(Model_26_ice,
;                                         S2,
;                                         Node_3) ==
;                                      If(And(Node_3 == Node_1),
;                                         False,
;                                         held(Model_26_ice,
;                                         S1,
;                                         Node_3))))))))]
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
; (define-fun Model_26_ice () ModelId
;   ModelId!val!0)
; (define-fun S2 () StateId
;   StateId!val!0)
; (define-fun S1 () StateId
;   StateId!val!1)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   Epoch!val!1)
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!0) (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!0)))))
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (= x!2 Node!val!0)))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!0)
;        (= x!2 Epoch!val!0)
;        (not (= x!2 Epoch!val!3))
;        (= x!3 Node!val!1)))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!2)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!3)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   false)
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_26_ice S1 Node!val!0 Node!val!0)
                (inv Model_26_ice S1 Node!val!0 Node!val!1)
                (inv Model_26_ice S1 Node!val!1 Node!val!0)
                (inv Model_26_ice S1 Node!val!1 Node!val!1))))
  (or (not a!1)
      (and a!1
           (inv Model_26_ice S2 Node!val!0 Node!val!0)
           (inv Model_26_ice S2 Node!val!0 Node!val!1)
           (inv Model_26_ice S2 Node!val!1 Node!val!0)
           (inv Model_26_ice S2 Node!val!1 Node!val!1)))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; (forall ((n1 Node) (e1 Epoch)) (not (locked Model_27_ice S1 e1 n1)))
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_27_ice, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_27_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_27_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_27_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_27_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_27_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_27_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_27_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_27_ice,
;                              zero(Model_27_ice),
;                              Epoch_1),
;                           one(Model_27_ice) !=
;                           zero(Model_27_ice))))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_27_ice, S1, e1, n1)),
;                transfer(Model_27_ice, S1, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_27_ice, S1, e1, n1)),
;                transfer(Model_27_ice,
;                         S1,
;                         ep(Model_27_ice, S1, n1),
;                         n1)))),
;  ForAll([n1, e1], Not(locked(Model_27_ice, S1, e1, n1))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_27_ice, S2, e1, n1)),
;                transfer(Model_27_ice, S2, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_27_ice, S2, e1, n1)),
;                transfer(Model_27_ice,
;                         S2,
;                         ep(Model_27_ice, S2, n1),
;                         n1)))),
;  Not(ForAll([n1, e1], Not(locked(Model_27_ice, S2, e1, n1)))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_27_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_27_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_2)),
;                               Node_1 == Node_2)))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_27_ice,
;                                         S2,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_27_ice,
;                                         S2,
;                                         Epoch_1,
;                                         Node_2)),
;                               Node_1 == Node_2)))),
;  Exists(Node_1,
;         Exists(Epoch_1,
;                And(And(transfer(Model_27_ice,
;                                 S1,
;                                 Epoch_1,
;                                 Node_1),
;                        Not(le(Model_27_ice,
;                               Epoch_1,
;                               ep(Model_27_ice, S1, Node_1)))),
;                    And(ForAll(Epoch_2,
;                               ForAll(Node_2,
;                                      transfer(Model_27_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_2) ==
;                                      transfer(Model_27_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_2))),
;                        ForAll(Node_2,
;                               held(Model_27_ice, S2, Node_2) ==
;                               If(And(Node_2 == Node_1),
;                                  True,
;                                  held(Model_27_ice,
;                                       S1,
;                                       Node_2))),
;                        ForAll(Node_2,
;                               ep(Model_27_ice, S2, Node_2) ==
;                               If(And(Node_2 == Node_1),
;                                  Epoch_1,
;                                  ep(Model_27_ice,
;                                     S1,
;                                     Node_2))),
;                        ForAll(Epoch_2,
;                               ForAll(Node_2,
;                                      locked(Model_27_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_2) ==
;                                      If(And(Epoch_2 ==
;                                         Epoch_1,
;                                         Node_2 == Node_1),
;                                         True,
;                                         locked(Model_27_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_2))))))))]
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
; ;;   Node!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Node!val!0 () Node)
; ;; cardinality constraint:
; (forall ((x Node)) (= x Node!val!0))
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
; (define-fun Model_27_ice () ModelId
;   ModelId!val!0)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (ite (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0))
;        Epoch!val!3
;        (ite (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1))
;             Epoch!val!0
;             Epoch!val!2)))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!0) (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!0)))))
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0)))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2)))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!2)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!0)
;        (= x!2 Epoch!val!3)
;        (not (= x!2 Epoch!val!1))
;        (not (= x!2 Epoch!val!2))))
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (or (not (and (inv Model_27_ice S1 Node!val!0 Node!val!0)))
    (and (and (inv Model_27_ice S1 Node!val!0 Node!val!0))
         (inv Model_27_ice S2 Node!val!0 Node!val!0))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; (forall ((n1 Node) (e1 Epoch))
;   (or (not (locked Model_28_ice S1 e1 n1)) (held Model_28_ice S1 n1)))
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_28_ice, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_28_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_28_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_28_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_28_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_28_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_28_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_28_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_28_ice,
;                              zero(Model_28_ice),
;                              Epoch_1),
;                           one(Model_28_ice) !=
;                           zero(Model_28_ice))))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_28_ice, S1, e1, n1)),
;                transfer(Model_28_ice, S1, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_28_ice, S1, e1, n1)),
;                transfer(Model_28_ice,
;                         S1,
;                         ep(Model_28_ice, S1, n1),
;                         n1)))),
;  ForAll([n1, e1],
;         Or(Not(locked(Model_28_ice, S1, e1, n1)),
;            held(Model_28_ice, S1, n1))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_28_ice, S2, e1, n1)),
;                transfer(Model_28_ice, S2, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_28_ice, S2, e1, n1)),
;                transfer(Model_28_ice,
;                         S2,
;                         ep(Model_28_ice, S2, n1),
;                         n1)))),
;  Not(ForAll([n1, e1],
;             Or(Not(locked(Model_28_ice, S2, e1, n1)),
;                held(Model_28_ice, S2, n1)))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_28_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_28_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_2)),
;                               Node_1 == Node_2)))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_28_ice,
;                                         S2,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_28_ice,
;                                         S2,
;                                         Epoch_1,
;                                         Node_2)),
;                               Node_1 == Node_2)))),
;  Exists(Node_1,
;         Exists(Node_2,
;                Exists(Epoch_1,
;                       And(And(held(Model_28_ice, S1, Node_1),
;                               Not(le(Model_28_ice,
;                                      Epoch_1,
;                                      ep(Model_28_ice,
;                                         S1,
;                                         Node_1)))),
;                           And(ForAll(Node_3,
;                                      ep(Model_28_ice,
;                                         S2,
;                                         Node_3) ==
;                                      ep(Model_28_ice,
;                                         S1,
;                                         Node_3)),
;                               ForAll(Epoch_2,
;                                      ForAll(Node_3,
;                                         locked(Model_28_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_3) ==
;                                         locked(Model_28_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_3))),
;                               ForAll(Epoch_2,
;                                      ForAll(Node_3,
;                                         transfer(Model_28_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_3) ==
;                                         If(And(Epoch_2 ==
;                                         Epoch_1,
;                                         Node_3 == Node_2),
;                                         True,
;                                         transfer(Model_28_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_3)))),
;                               ForAll(Node_3,
;                                      held(Model_28_ice,
;                                         S2,
;                                         Node_3) ==
;                                      If(And(Node_3 == Node_1),
;                                         False,
;                                         held(Model_28_ice,
;                                         S1,
;                                         Node_3))))))))]
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
; ;;   Node!val!0 
; ;; -----------
; ;; definitions for universe elements:
; (declare-fun Node!val!0 () Node)
; ;; cardinality constraint:
; (forall ((x Node)) (= x Node!val!0))
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
; (define-fun Model_28_ice () ModelId
;   ModelId!val!0)
; (define-fun S2 () StateId
;   StateId!val!0)
; (define-fun S1 () StateId
;   StateId!val!1)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (ite (or (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0))
;            (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1)))
;        Epoch!val!1
;        Epoch!val!0))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!2) (= x!2 Epoch!val!2))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!2))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!3)
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
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!0)
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
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2)))))
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1)))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!3)))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!3)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!2)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!3)))))
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (or (not (and (inv Model_28_ice S1 Node!val!0 Node!val!0)))
    (and (and (inv Model_28_ice S1 Node!val!0 Node!val!0))
         (inv Model_28_ice S2 Node!val!0 Node!val!0))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; (forall ((n1 Node) (n2 Node) (e1 Epoch))
;   (or (not (locked Model_29_ice S1 e1 n1)) (= n2 n1)))
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_29_ice, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_29_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_29_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_29_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_29_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_29_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_29_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_29_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_29_ice,
;                              zero(Model_29_ice),
;                              Epoch_1),
;                           one(Model_29_ice) !=
;                           zero(Model_29_ice))))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_29_ice, S1, e1, n1)),
;                transfer(Model_29_ice, S1, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_29_ice, S1, e1, n1)),
;                transfer(Model_29_ice,
;                         S1,
;                         ep(Model_29_ice, S1, n1),
;                         n1)))),
;  ForAll([n1, n2, e1],
;         Or(Not(locked(Model_29_ice, S1, e1, n1)), n2 == n1)),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_29_ice, S2, e1, n1)),
;                transfer(Model_29_ice, S2, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_29_ice, S2, e1, n1)),
;                transfer(Model_29_ice,
;                         S2,
;                         ep(Model_29_ice, S2, n1),
;                         n1)))),
;  Not(ForAll([n1, n2, e1],
;             Or(Not(locked(Model_29_ice, S2, e1, n1)),
;                n2 == n1))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_29_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_29_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_2)),
;                               Node_1 == Node_2)))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_29_ice,
;                                         S2,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_29_ice,
;                                         S2,
;                                         Epoch_1,
;                                         Node_2)),
;                               Node_1 == Node_2)))),
;  Exists(Node_1,
;         Exists(Epoch_1,
;                And(And(transfer(Model_29_ice,
;                                 S1,
;                                 Epoch_1,
;                                 Node_1),
;                        Not(le(Model_29_ice,
;                               Epoch_1,
;                               ep(Model_29_ice, S1, Node_1)))),
;                    And(ForAll(Epoch_2,
;                               ForAll(Node_2,
;                                      transfer(Model_29_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_2) ==
;                                      transfer(Model_29_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_2))),
;                        ForAll(Node_2,
;                               held(Model_29_ice, S2, Node_2) ==
;                               If(And(Node_2 == Node_1),
;                                  True,
;                                  held(Model_29_ice,
;                                       S1,
;                                       Node_2))),
;                        ForAll(Node_2,
;                               ep(Model_29_ice, S2, Node_2) ==
;                               If(And(Node_2 == Node_1),
;                                  Epoch_1,
;                                  ep(Model_29_ice,
;                                     S1,
;                                     Node_2))),
;                        ForAll(Epoch_2,
;                               ForAll(Node_2,
;                                      locked(Model_29_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_2) ==
;                                      If(And(Epoch_2 ==
;                                         Epoch_1,
;                                         Node_2 == Node_1),
;                                         True,
;                                         locked(Model_29_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_2))))))))]
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
; (define-fun S2 () StateId
;   StateId!val!0)
; (define-fun Model_29_ice () ModelId
;   ModelId!val!0)
; (define-fun S1 () StateId
;   StateId!val!1)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (ite (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!1))
;     Epoch!val!3
;   (ite (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (= x!2 Node!val!1))
;     Epoch!val!0
;     Epoch!val!2)))
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
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!2))
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
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1)))))
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!1)))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2))
;            (= x!3 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2))
;            (= x!3 Node!val!1))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!2)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!0)
;        (= x!2 Epoch!val!3)
;        (not (= x!2 Epoch!val!1))
;        (not (= x!2 Epoch!val!2))
;        (= x!3 Node!val!1)))
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_29_ice S1 Node!val!0 Node!val!0)
                (inv Model_29_ice S1 Node!val!0 Node!val!1)
                (inv Model_29_ice S1 Node!val!1 Node!val!0)
                (inv Model_29_ice S1 Node!val!1 Node!val!1))))
  (or (not a!1)
      (and a!1
           (inv Model_29_ice S2 Node!val!0 Node!val!0)
           (inv Model_29_ice S2 Node!val!0 Node!val!1)
           (inv Model_29_ice S2 Node!val!1 Node!val!0)
           (inv Model_29_ice S2 Node!val!1 Node!val!1)))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; (forall ((n1 Node))
;   (or (not (transfer Model_30_ice S1 (ep Model_30_ice S1 n1) n1))
;       (locked Model_30_ice S1 (ep Model_30_ice S1 n1) n1)))
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_30_ice, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_30_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_30_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_30_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_30_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_30_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_30_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_30_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_30_ice,
;                              zero(Model_30_ice),
;                              Epoch_1),
;                           one(Model_30_ice) !=
;                           zero(Model_30_ice))))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_30_ice, S1, e1, n1)),
;                transfer(Model_30_ice, S1, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_30_ice, S1, e1, n1)),
;                transfer(Model_30_ice,
;                         S1,
;                         ep(Model_30_ice, S1, n1),
;                         n1)))),
;  ForAll(n1,
;         Or(Not(transfer(Model_30_ice,
;                         S1,
;                         ep(Model_30_ice, S1, n1),
;                         n1)),
;            locked(Model_30_ice,
;                   S1,
;                   ep(Model_30_ice, S1, n1),
;                   n1))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_30_ice, S2, e1, n1)),
;                transfer(Model_30_ice, S2, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_30_ice, S2, e1, n1)),
;                transfer(Model_30_ice,
;                         S2,
;                         ep(Model_30_ice, S2, n1),
;                         n1)))),
;  Not(ForAll(n1,
;             Or(Not(transfer(Model_30_ice,
;                             S2,
;                             ep(Model_30_ice, S2, n1),
;                             n1)),
;                locked(Model_30_ice,
;                       S2,
;                       ep(Model_30_ice, S2, n1),
;                       n1)))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_30_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_30_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_2)),
;                               Node_1 == Node_2)))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_30_ice,
;                                         S2,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_30_ice,
;                                         S2,
;                                         Epoch_1,
;                                         Node_2)),
;                               Node_1 == Node_2)))),
;  Exists(Node_1,
;         Exists(Node_2,
;                Exists(Epoch_1,
;                       And(And(held(Model_30_ice, S1, Node_1),
;                               Not(le(Model_30_ice,
;                                      Epoch_1,
;                                      ep(Model_30_ice,
;                                         S1,
;                                         Node_1)))),
;                           And(ForAll(Node_3,
;                                      ep(Model_30_ice,
;                                         S2,
;                                         Node_3) ==
;                                      ep(Model_30_ice,
;                                         S1,
;                                         Node_3)),
;                               ForAll(Epoch_2,
;                                      ForAll(Node_3,
;                                         locked(Model_30_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_3) ==
;                                         locked(Model_30_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_3))),
;                               ForAll(Epoch_2,
;                                      ForAll(Node_3,
;                                         transfer(Model_30_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_3) ==
;                                         If(And(Epoch_2 ==
;                                         Epoch_1,
;                                         Node_3 == Node_2),
;                                         True,
;                                         transfer(Model_30_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_3)))),
;                               ForAll(Node_3,
;                                      held(Model_30_ice,
;                                         S2,
;                                         Node_3) ==
;                                      If(And(Node_3 == Node_1),
;                                         False,
;                                         held(Model_30_ice,
;                                         S1,
;                                         Node_3))))))))]
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
; (define-fun S2 () StateId
;   StateId!val!0)
; (define-fun S1 () StateId
;   StateId!val!1)
; (define-fun Model_30_ice () ModelId
;   ModelId!val!0)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (let ((a!1 (or (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!0)
;                       (not (= x!2 Node!val!1)))
;                  (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!1)
;                       (not (= x!2 Node!val!1))))))
;     (ite a!1 Epoch!val!0 Epoch!val!3)))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!2) (= x!2 Epoch!val!2))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
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
;            (= x!1 Epoch!val!2)
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!2 Epoch!val!1))
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
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!2)))))
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (= x!2 Node!val!0)))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!0)
;        (= x!2 Epoch!val!3)
;        (= x!3 Node!val!1)))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!2)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   false)
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_30_ice S1 Node!val!0 Node!val!0)
                (inv Model_30_ice S1 Node!val!0 Node!val!1)
                (inv Model_30_ice S1 Node!val!1 Node!val!0)
                (inv Model_30_ice S1 Node!val!1 Node!val!1))))
  (or (not a!1)
      (and a!1
           (inv Model_30_ice S2 Node!val!0 Node!val!0)
           (inv Model_30_ice S2 Node!val!0 Node!val!1)
           (inv Model_30_ice S2 Node!val!1 Node!val!0)
           (inv Model_30_ice S2 Node!val!1 Node!val!1)))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; (forall ((n1 Node) (n2 Node))
;   (or (= n2 n1) (not (held Model_31_ice S1 n2)) (not (held Model_31_ice S1 n1))))
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_31_ice, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_31_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_31_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_31_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_31_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_31_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_31_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_31_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_31_ice,
;                              zero(Model_31_ice),
;                              Epoch_1),
;                           one(Model_31_ice) !=
;                           zero(Model_31_ice))))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_31_ice, S1, e1, n1)),
;                transfer(Model_31_ice, S1, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_31_ice, S1, e1, n1)),
;                transfer(Model_31_ice,
;                         S1,
;                         ep(Model_31_ice, S1, n1),
;                         n1)))),
;  ForAll([n1, n2],
;         Or(n2 == n1,
;            Not(held(Model_31_ice, S1, n2)),
;            Not(held(Model_31_ice, S1, n1)))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_31_ice, S2, e1, n1)),
;                transfer(Model_31_ice, S2, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_31_ice, S2, e1, n1)),
;                transfer(Model_31_ice,
;                         S2,
;                         ep(Model_31_ice, S2, n1),
;                         n1)))),
;  Not(ForAll([n1, n2],
;             Or(n2 == n1,
;                Not(held(Model_31_ice, S2, n2)),
;                Not(held(Model_31_ice, S2, n1))))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_31_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_31_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_2)),
;                               Node_1 == Node_2)))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_31_ice,
;                                         S2,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_31_ice,
;                                         S2,
;                                         Epoch_1,
;                                         Node_2)),
;                               Node_1 == Node_2)))),
;  Exists(Node_1,
;         Exists(Epoch_1,
;                And(And(transfer(Model_31_ice,
;                                 S1,
;                                 Epoch_1,
;                                 Node_1),
;                        Not(le(Model_31_ice,
;                               Epoch_1,
;                               ep(Model_31_ice, S1, Node_1)))),
;                    And(ForAll(Epoch_2,
;                               ForAll(Node_2,
;                                      transfer(Model_31_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_2) ==
;                                      transfer(Model_31_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_2))),
;                        ForAll(Node_2,
;                               held(Model_31_ice, S2, Node_2) ==
;                               If(And(Node_2 == Node_1),
;                                  True,
;                                  held(Model_31_ice,
;                                       S1,
;                                       Node_2))),
;                        ForAll(Node_2,
;                               ep(Model_31_ice, S2, Node_2) ==
;                               If(And(Node_2 == Node_1),
;                                  Epoch_1,
;                                  ep(Model_31_ice,
;                                     S1,
;                                     Node_2))),
;                        ForAll(Epoch_2,
;                               ForAll(Node_2,
;                                      locked(Model_31_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_2) ==
;                                      If(And(Epoch_2 ==
;                                         Epoch_1,
;                                         Node_2 == Node_1),
;                                         True,
;                                         locked(Model_31_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_2))))))))]
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
; (define-fun Model_31_ice () ModelId
;   ModelId!val!0)
; (define-fun S2 () StateId
;   StateId!val!0)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (ite (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (= x!2 Node!val!1))
;     Epoch!val!1
;     Epoch!val!0))
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
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2)))
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
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2)))))
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (not (= x!2 Node!val!1)))
;       (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!1))
;       (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (not (= x!2 Node!val!1)))))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!3))
;            (= x!3 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!3))
;            (= x!3 Node!val!1))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!3)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!2)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!0)
;        (= x!2 Epoch!val!0)
;        (not (= x!2 Epoch!val!2))
;        (not (= x!2 Epoch!val!3))
;        (= x!3 Node!val!1)))
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_31_ice S1 Node!val!0 Node!val!0)
                (inv Model_31_ice S1 Node!val!0 Node!val!1)
                (inv Model_31_ice S1 Node!val!1 Node!val!0)
                (inv Model_31_ice S1 Node!val!1 Node!val!1))))
  (or (not a!1)
      (and a!1
           (inv Model_31_ice S2 Node!val!0 Node!val!0)
           (inv Model_31_ice S2 Node!val!0 Node!val!1)
           (inv Model_31_ice S2 Node!val!1 Node!val!0)
           (inv Model_31_ice S2 Node!val!1 Node!val!1)))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; (forall ((n1 Node) (n2 Node))
;   (or (= n1 n2)
;       (= n2 n1)
;       (not (transfer Model_32_ice S1 (ep Model_32_ice S1 n2) n1))))
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_32_ice, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_32_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_32_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_32_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_32_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_32_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_32_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_32_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_32_ice,
;                              zero(Model_32_ice),
;                              Epoch_1),
;                           one(Model_32_ice) !=
;                           zero(Model_32_ice))))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_32_ice, S1, e1, n1)),
;                transfer(Model_32_ice, S1, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_32_ice, S1, e1, n1)),
;                transfer(Model_32_ice,
;                         S1,
;                         ep(Model_32_ice, S1, n1),
;                         n1)))),
;  ForAll([n1, n2],
;         Or(n1 == n2,
;            n2 == n1,
;            Not(transfer(Model_32_ice,
;                         S1,
;                         ep(Model_32_ice, S1, n2),
;                         n1)))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_32_ice, S2, e1, n1)),
;                transfer(Model_32_ice, S2, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_32_ice, S2, e1, n1)),
;                transfer(Model_32_ice,
;                         S2,
;                         ep(Model_32_ice, S2, n1),
;                         n1)))),
;  Not(ForAll([n1, n2],
;             Or(n1 == n2,
;                n2 == n1,
;                Not(transfer(Model_32_ice,
;                             S2,
;                             ep(Model_32_ice, S2, n2),
;                             n1))))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_32_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_32_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_2)),
;                               Node_1 == Node_2)))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_32_ice,
;                                         S2,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_32_ice,
;                                         S2,
;                                         Epoch_1,
;                                         Node_2)),
;                               Node_1 == Node_2)))),
;  Exists(Node_1,
;         Exists(Node_2,
;                Exists(Epoch_1,
;                       And(And(held(Model_32_ice, S1, Node_1),
;                               Not(le(Model_32_ice,
;                                      Epoch_1,
;                                      ep(Model_32_ice,
;                                         S1,
;                                         Node_1)))),
;                           And(ForAll(Node_3,
;                                      ep(Model_32_ice,
;                                         S2,
;                                         Node_3) ==
;                                      ep(Model_32_ice,
;                                         S1,
;                                         Node_3)),
;                               ForAll(Epoch_2,
;                                      ForAll(Node_3,
;                                         locked(Model_32_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_3) ==
;                                         locked(Model_32_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_3))),
;                               ForAll(Epoch_2,
;                                      ForAll(Node_3,
;                                         transfer(Model_32_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_3) ==
;                                         If(And(Epoch_2 ==
;                                         Epoch_1,
;                                         Node_3 == Node_2),
;                                         True,
;                                         transfer(Model_32_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_3)))),
;                               ForAll(Node_3,
;                                      held(Model_32_ice,
;                                         S2,
;                                         Node_3) ==
;                                      If(And(Node_3 == Node_1),
;                                         False,
;                                         held(Model_32_ice,
;                                         S1,
;                                         Node_3))))))))]
;;;;;;;; Counter example generation constraints end ;;;;;;;;
;;;;;;;; Counter example model description: ;;;;;;;;
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
; (define-fun S1 () StateId
;   StateId!val!1)
; (define-fun S2 () StateId
;   StateId!val!0)
; (define-fun Model_32_ice () ModelId
;   ModelId!val!0)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   false)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (let ((a!1 (ite (and (= x!0 ModelId!val!0)
;                        (= x!1 StateId!val!0)
;                        (not (= x!2 Node!val!1))
;                        (not (= x!2 Node!val!2)))
;                   Epoch!val!3
;                   Epoch!val!1)))
;   (let ((a!2 (ite (and (= x!0 ModelId!val!0)
;                        (= x!1 StateId!val!1)
;                        (= x!2 Node!val!1)
;                        (not (= x!2 Node!val!2)))
;                   Epoch!val!0
;                   a!1)))
;   (let ((a!3 (ite (and (= x!0 ModelId!val!0)
;                        (= x!1 StateId!val!1)
;                        (not (= x!2 Node!val!1))
;                        (not (= x!2 Node!val!2)))
;                   Epoch!val!3
;                   a!2)))
;     (ite (and (= x!0 ModelId!val!0)
;               (= x!1 StateId!val!0)
;               (= x!2 Node!val!1)
;               (not (= x!2 Node!val!2)))
;          Epoch!val!0
;          a!3)))))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!1) (= x!2 Epoch!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1)))))
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!1)
;        (= x!2 Node!val!1)
;        (not (= x!2 Node!val!2))))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!0)
;        (= x!2 Epoch!val!3)
;        (not (= x!2 Epoch!val!1))
;        (not (= x!2 Epoch!val!2))
;        (= x!3 Node!val!2)))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!2)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!1)
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_32_ice S1 Node!val!0 Node!val!0)
                (inv Model_32_ice S1 Node!val!0 Node!val!1)
                (inv Model_32_ice S1 Node!val!0 Node!val!2)
                (inv Model_32_ice S1 Node!val!1 Node!val!0)
                (inv Model_32_ice S1 Node!val!1 Node!val!1)
                (inv Model_32_ice S1 Node!val!1 Node!val!2)
                (inv Model_32_ice S1 Node!val!2 Node!val!0)
                (inv Model_32_ice S1 Node!val!2 Node!val!1)
                (inv Model_32_ice S1 Node!val!2 Node!val!2))))
  (or (not a!1)
      (and a!1
           (inv Model_32_ice S2 Node!val!0 Node!val!0)
           (inv Model_32_ice S2 Node!val!0 Node!val!1)
           (inv Model_32_ice S2 Node!val!0 Node!val!2)
           (inv Model_32_ice S2 Node!val!1 Node!val!0)
           (inv Model_32_ice S2 Node!val!1 Node!val!1)
           (inv Model_32_ice S2 Node!val!1 Node!val!2)
           (inv Model_32_ice S2 Node!val!2 Node!val!0)
           (inv Model_32_ice S2 Node!val!2 Node!val!1)
           (inv Model_32_ice S2 Node!val!2 Node!val!2)))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; (forall ((n1 Node) (n2 Node))
;   (or (held Model_33_ice S1 n1)
;       (le Model_33_ice (ep Model_33_ice S1 n1) (ep Model_33_ice S1 n2))))
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_33_ice, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_33_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_33_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_33_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_33_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_33_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_33_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_33_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_33_ice,
;                              zero(Model_33_ice),
;                              Epoch_1),
;                           one(Model_33_ice) !=
;                           zero(Model_33_ice))))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_33_ice, S1, e1, n1)),
;                transfer(Model_33_ice, S1, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_33_ice, S1, e1, n1)),
;                transfer(Model_33_ice,
;                         S1,
;                         ep(Model_33_ice, S1, n1),
;                         n1)))),
;  ForAll([n1, n2],
;         Or(held(Model_33_ice, S1, n1),
;            le(Model_33_ice,
;               ep(Model_33_ice, S1, n1),
;               ep(Model_33_ice, S1, n2)))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_33_ice, S2, e1, n1)),
;                transfer(Model_33_ice, S2, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_33_ice, S2, e1, n1)),
;                transfer(Model_33_ice,
;                         S2,
;                         ep(Model_33_ice, S2, n1),
;                         n1)))),
;  Not(ForAll([n1, n2],
;             Or(le(Model_33_ice,
;                   ep(Model_33_ice, S2, n1),
;                   ep(Model_33_ice, S2, n2)),
;                held(Model_33_ice, S2, n1)))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_33_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_33_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_2)),
;                               Node_1 == Node_2)))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_33_ice,
;                                         S2,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_33_ice,
;                                         S2,
;                                         Epoch_1,
;                                         Node_2)),
;                               Node_1 == Node_2)))),
;  Exists(Node_1,
;         Exists(Node_2,
;                Exists(Epoch_1,
;                       And(And(held(Model_33_ice, S1, Node_1),
;                               Not(le(Model_33_ice,
;                                      Epoch_1,
;                                      ep(Model_33_ice,
;                                         S1,
;                                         Node_1)))),
;                           And(ForAll(Node_3,
;                                      ep(Model_33_ice,
;                                         S2,
;                                         Node_3) ==
;                                      ep(Model_33_ice,
;                                         S1,
;                                         Node_3)),
;                               ForAll(Epoch_2,
;                                      ForAll(Node_3,
;                                         locked(Model_33_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_3) ==
;                                         locked(Model_33_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_3))),
;                               ForAll(Epoch_2,
;                                      ForAll(Node_3,
;                                         transfer(Model_33_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_3) ==
;                                         If(And(Epoch_2 ==
;                                         Epoch_1,
;                                         Node_3 == Node_2),
;                                         True,
;                                         transfer(Model_33_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_3)))),
;                               ForAll(Node_3,
;                                      held(Model_33_ice,
;                                         S2,
;                                         Node_3) ==
;                                      If(And(Node_3 == Node_1),
;                                         False,
;                                         held(Model_33_ice,
;                                         S1,
;                                         Node_3))))))))]
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
; (define-fun Model_33_ice () ModelId
;   ModelId!val!0)
; (define-fun S2 () StateId
;   StateId!val!0)
; (define-fun S1 () StateId
;   StateId!val!1)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (let ((a!1 (or (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!0)
;                       (= x!2 Node!val!1)
;                       (not (= x!2 Node!val!2)))
;                  (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!1)
;                       (= x!2 Node!val!1)
;                       (not (= x!2 Node!val!2))))))
;     (ite a!1 Epoch!val!1 Epoch!val!2)))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!3) (= x!2 Epoch!val!3))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!3))
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!3))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!3))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!3))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!3))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!3))
;            (= x!2 Epoch!val!3))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!3))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!3))
;            (= x!2 Epoch!val!3))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!3))
;            (= x!2 Epoch!val!3))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!3))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!3)))))
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!1)
;        (= x!2 Node!val!1)
;        (not (= x!2 Node!val!2))))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!0)
;        (= x!2 Epoch!val!0)
;        (not (= x!2 Epoch!val!4))
;        (= x!3 Node!val!2)))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!4)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!3)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   false)
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_33_ice S1 Node!val!0 Node!val!0)
                (inv Model_33_ice S1 Node!val!0 Node!val!1)
                (inv Model_33_ice S1 Node!val!0 Node!val!2)
                (inv Model_33_ice S1 Node!val!1 Node!val!0)
                (inv Model_33_ice S1 Node!val!1 Node!val!1)
                (inv Model_33_ice S1 Node!val!1 Node!val!2)
                (inv Model_33_ice S1 Node!val!2 Node!val!0)
                (inv Model_33_ice S1 Node!val!2 Node!val!1)
                (inv Model_33_ice S1 Node!val!2 Node!val!2))))
  (or (not a!1)
      (and a!1
           (inv Model_33_ice S2 Node!val!0 Node!val!0)
           (inv Model_33_ice S2 Node!val!0 Node!val!1)
           (inv Model_33_ice S2 Node!val!0 Node!val!2)
           (inv Model_33_ice S2 Node!val!1 Node!val!0)
           (inv Model_33_ice S2 Node!val!1 Node!val!1)
           (inv Model_33_ice S2 Node!val!1 Node!val!2)
           (inv Model_33_ice S2 Node!val!2 Node!val!0)
           (inv Model_33_ice S2 Node!val!2 Node!val!1)
           (inv Model_33_ice S2 Node!val!2 Node!val!2)))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; (forall ((n1 Node) (n2 Node))
;   (or (not (and (held Model_34_ice S1 n2) (held Model_34_ice S1 n1)))
;       (= (ep Model_34_ice S1 n2) (ep Model_34_ice S1 n1))))
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_34_ice, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_34_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_34_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_34_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_34_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_34_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_34_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_34_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_34_ice,
;                              zero(Model_34_ice),
;                              Epoch_1),
;                           one(Model_34_ice) !=
;                           zero(Model_34_ice))))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_34_ice, S1, e1, n1)),
;                transfer(Model_34_ice, S1, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_34_ice, S1, e1, n1)),
;                transfer(Model_34_ice,
;                         S1,
;                         ep(Model_34_ice, S1, n1),
;                         n1)))),
;  ForAll([n1, n2],
;         Or(Not(And(held(Model_34_ice, S1, n2),
;                    held(Model_34_ice, S1, n1))),
;            ep(Model_34_ice, S1, n2) ==
;            ep(Model_34_ice, S1, n1))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_34_ice, S2, e1, n1)),
;                transfer(Model_34_ice, S2, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_34_ice, S2, e1, n1)),
;                transfer(Model_34_ice,
;                         S2,
;                         ep(Model_34_ice, S2, n1),
;                         n1)))),
;  Not(ForAll([n1, n2],
;             Or(Not(And(held(Model_34_ice, S2, n2),
;                        held(Model_34_ice, S2, n1))),
;                ep(Model_34_ice, S2, n2) ==
;                ep(Model_34_ice, S2, n1)))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_34_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_34_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_2)),
;                               Node_1 == Node_2)))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_34_ice,
;                                         S2,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_34_ice,
;                                         S2,
;                                         Epoch_1,
;                                         Node_2)),
;                               Node_1 == Node_2)))),
;  Exists(Node_1,
;         Exists(Epoch_1,
;                And(And(transfer(Model_34_ice,
;                                 S1,
;                                 Epoch_1,
;                                 Node_1),
;                        Not(le(Model_34_ice,
;                               Epoch_1,
;                               ep(Model_34_ice, S1, Node_1)))),
;                    And(ForAll(Epoch_2,
;                               ForAll(Node_2,
;                                      transfer(Model_34_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_2) ==
;                                      transfer(Model_34_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_2))),
;                        ForAll(Node_2,
;                               held(Model_34_ice, S2, Node_2) ==
;                               If(And(Node_2 == Node_1),
;                                  True,
;                                  held(Model_34_ice,
;                                       S1,
;                                       Node_2))),
;                        ForAll(Node_2,
;                               ep(Model_34_ice, S2, Node_2) ==
;                               If(And(Node_2 == Node_1),
;                                  Epoch_1,
;                                  ep(Model_34_ice,
;                                     S1,
;                                     Node_2))),
;                        ForAll(Epoch_2,
;                               ForAll(Node_2,
;                                      locked(Model_34_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_2) ==
;                                      If(And(Epoch_2 ==
;                                         Epoch_1,
;                                         Node_2 == Node_1),
;                                         True,
;                                         locked(Model_34_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_2))))))))]
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
; (define-fun Model_34_ice () ModelId
;   ModelId!val!0)
; (define-fun S2 () StateId
;   StateId!val!0)
; (define-fun S1 () StateId
;   StateId!val!1)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (ite (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!1))
;     Epoch!val!2
;     (let ((a!1 (or (and (= x!0 ModelId!val!0)
;                         (= x!1 StateId!val!0)
;                         (not (= x!2 Node!val!1)))
;                    (and (= x!0 ModelId!val!0)
;                         (= x!1 StateId!val!1)
;                         (not (= x!2 Node!val!1))))))
;       (ite a!1 Epoch!val!1 Epoch!val!0))))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!0) (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
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
;            (= x!1 Epoch!val!0)
;            (= x!2 Epoch!val!4)
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
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
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
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
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
;            (not (= x!2 Epoch!val!0)))))
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (not (= x!2 Node!val!1)))
;       (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!1))
;       (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (not (= x!2 Node!val!1)))))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!4))
;            (= x!3 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!4))
;            (= x!3 Node!val!1))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!3)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!4)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!0)
;        (= x!2 Epoch!val!2)
;        (not (= x!2 Epoch!val!1))
;        (not (= x!2 Epoch!val!3))
;        (not (= x!2 Epoch!val!4))
;        (= x!3 Node!val!1)))
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_34_ice S1 Node!val!0 Node!val!0)
                (inv Model_34_ice S1 Node!val!0 Node!val!1)
                (inv Model_34_ice S1 Node!val!1 Node!val!0)
                (inv Model_34_ice S1 Node!val!1 Node!val!1))))
  (or (not a!1)
      (and a!1
           (inv Model_34_ice S2 Node!val!0 Node!val!0)
           (inv Model_34_ice S2 Node!val!0 Node!val!1)
           (inv Model_34_ice S2 Node!val!1 Node!val!0)
           (inv Model_34_ice S2 Node!val!1 Node!val!1)))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; (forall ((n1 Node) (n2 Node))
;   (or (held Model_35_ice S1 n2)
;       (not (le Model_35_ice (ep Model_35_ice S1 n1) (ep Model_35_ice S1 n2)))
;       (not (held Model_35_ice S1 n1))))
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_35_ice, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_35_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_35_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_35_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_35_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_35_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_35_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_35_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_35_ice,
;                              zero(Model_35_ice),
;                              Epoch_1),
;                           one(Model_35_ice) !=
;                           zero(Model_35_ice))))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_35_ice, S1, e1, n1)),
;                transfer(Model_35_ice, S1, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_35_ice, S1, e1, n1)),
;                transfer(Model_35_ice,
;                         S1,
;                         ep(Model_35_ice, S1, n1),
;                         n1)))),
;  ForAll([n1, n2],
;         Or(held(Model_35_ice, S1, n2),
;            Not(le(Model_35_ice,
;                   ep(Model_35_ice, S1, n1),
;                   ep(Model_35_ice, S1, n2))),
;            Not(held(Model_35_ice, S1, n1)))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_35_ice, S2, e1, n1)),
;                transfer(Model_35_ice, S2, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_35_ice, S2, e1, n1)),
;                transfer(Model_35_ice,
;                         S2,
;                         ep(Model_35_ice, S2, n1),
;                         n1)))),
;  Not(ForAll([n1, n2],
;             Or(Not(le(Model_35_ice,
;                       ep(Model_35_ice, S2, n1),
;                       ep(Model_35_ice, S2, n2))),
;                Not(held(Model_35_ice, S2, n1)),
;                held(Model_35_ice, S2, n2)))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_35_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_35_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_2)),
;                               Node_1 == Node_2)))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_35_ice,
;                                         S2,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_35_ice,
;                                         S2,
;                                         Epoch_1,
;                                         Node_2)),
;                               Node_1 == Node_2)))),
;  Exists(Node_1,
;         Exists(Node_2,
;                Exists(Epoch_1,
;                       And(And(held(Model_35_ice, S1, Node_1),
;                               Not(le(Model_35_ice,
;                                      Epoch_1,
;                                      ep(Model_35_ice,
;                                         S1,
;                                         Node_1)))),
;                           And(ForAll(Node_3,
;                                      ep(Model_35_ice,
;                                         S2,
;                                         Node_3) ==
;                                      ep(Model_35_ice,
;                                         S1,
;                                         Node_3)),
;                               ForAll(Epoch_2,
;                                      ForAll(Node_3,
;                                         locked(Model_35_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_3) ==
;                                         locked(Model_35_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_3))),
;                               ForAll(Epoch_2,
;                                      ForAll(Node_3,
;                                         transfer(Model_35_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_3) ==
;                                         If(And(Epoch_2 ==
;                                         Epoch_1,
;                                         Node_3 == Node_2),
;                                         True,
;                                         transfer(Model_35_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_3)))),
;                               ForAll(Node_3,
;                                      held(Model_35_ice,
;                                         S2,
;                                         Node_3) ==
;                                      If(And(Node_3 == Node_1),
;                                         False,
;                                         held(Model_35_ice,
;                                         S1,
;                                         Node_3))))))))]
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
; (define-fun S1 () StateId
;   StateId!val!1)
; (define-fun S2 () StateId
;   StateId!val!0)
; (define-fun Model_35_ice () ModelId
;   ModelId!val!0)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (let ((a!1 (or (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!1)
;                       (not (= x!2 Node!val!1))
;                       (not (= x!2 Node!val!2)))
;                  (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!0)
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
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!0) (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!5))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!5))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!5)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!5))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!5))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!5))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!5))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!5))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!5)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!5))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!5))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!5))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!5))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!5))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!5))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!5)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!5)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!5)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!5)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!5))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!5)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!5))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!5))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!5))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!5))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!5))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!5))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!5))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0)))))
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Node!val!1))
;            (not (= x!2 Node!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Node!val!1))
;            (not (= x!2 Node!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Node!val!1)
;            (not (= x!2 Node!val!2)))))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!0)
;        (= x!2 Epoch!val!2)
;        (not (= x!2 Epoch!val!0))
;        (= x!3 Node!val!2)))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!0)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   false)
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_35_ice S1 Node!val!0 Node!val!0)
                (inv Model_35_ice S1 Node!val!0 Node!val!1)
                (inv Model_35_ice S1 Node!val!0 Node!val!2)
                (inv Model_35_ice S1 Node!val!1 Node!val!0)
                (inv Model_35_ice S1 Node!val!1 Node!val!1)
                (inv Model_35_ice S1 Node!val!1 Node!val!2)
                (inv Model_35_ice S1 Node!val!2 Node!val!0)
                (inv Model_35_ice S1 Node!val!2 Node!val!1)
                (inv Model_35_ice S1 Node!val!2 Node!val!2))))
  (or (not a!1)
      (and a!1
           (inv Model_35_ice S2 Node!val!0 Node!val!0)
           (inv Model_35_ice S2 Node!val!0 Node!val!1)
           (inv Model_35_ice S2 Node!val!0 Node!val!2)
           (inv Model_35_ice S2 Node!val!1 Node!val!0)
           (inv Model_35_ice S2 Node!val!1 Node!val!1)
           (inv Model_35_ice S2 Node!val!1 Node!val!2)
           (inv Model_35_ice S2 Node!val!2 Node!val!0)
           (inv Model_35_ice S2 Node!val!2 Node!val!1)
           (inv Model_35_ice S2 Node!val!2 Node!val!2)))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; (forall ((n1 Node) (n2 Node))
;   (or (not (= (ep Model_36_ice S1 n1) (ep Model_36_ice S1 n2)))
;       (not (held Model_36_ice S1 n2))
;       (held Model_36_ice S1 n1)))
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_36_ice, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_36_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_36_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_36_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_36_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_36_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_36_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_36_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_36_ice,
;                              zero(Model_36_ice),
;                              Epoch_1),
;                           one(Model_36_ice) !=
;                           zero(Model_36_ice))))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_36_ice, S1, e1, n1)),
;                transfer(Model_36_ice, S1, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_36_ice, S1, e1, n1)),
;                transfer(Model_36_ice,
;                         S1,
;                         ep(Model_36_ice, S1, n1),
;                         n1)))),
;  ForAll([n1, n2],
;         Or(Not(ep(Model_36_ice, S1, n1) ==
;                ep(Model_36_ice, S1, n2)),
;            Not(held(Model_36_ice, S1, n2)),
;            held(Model_36_ice, S1, n1))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_36_ice, S2, e1, n1)),
;                transfer(Model_36_ice, S2, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_36_ice, S2, e1, n1)),
;                transfer(Model_36_ice,
;                         S2,
;                         ep(Model_36_ice, S2, n1),
;                         n1)))),
;  Not(ForAll([n1, n2],
;             Or(held(Model_36_ice, S2, n1),
;                Not(ep(Model_36_ice, S2, n1) ==
;                    ep(Model_36_ice, S2, n2)),
;                Not(held(Model_36_ice, S2, n2))))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_36_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_36_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_2)),
;                               Node_1 == Node_2)))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_36_ice,
;                                         S2,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_36_ice,
;                                         S2,
;                                         Epoch_1,
;                                         Node_2)),
;                               Node_1 == Node_2)))),
;  Exists(Node_1,
;         Exists(Node_2,
;                Exists(Epoch_1,
;                       And(And(held(Model_36_ice, S1, Node_1),
;                               Not(le(Model_36_ice,
;                                      Epoch_1,
;                                      ep(Model_36_ice,
;                                         S1,
;                                         Node_1)))),
;                           And(ForAll(Node_3,
;                                      ep(Model_36_ice,
;                                         S2,
;                                         Node_3) ==
;                                      ep(Model_36_ice,
;                                         S1,
;                                         Node_3)),
;                               ForAll(Epoch_2,
;                                      ForAll(Node_3,
;                                         locked(Model_36_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_3) ==
;                                         locked(Model_36_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_3))),
;                               ForAll(Epoch_2,
;                                      ForAll(Node_3,
;                                         transfer(Model_36_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_3) ==
;                                         If(And(Epoch_2 ==
;                                         Epoch_1,
;                                         Node_3 == Node_2),
;                                         True,
;                                         transfer(Model_36_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_3)))),
;                               ForAll(Node_3,
;                                      held(Model_36_ice,
;                                         S2,
;                                         Node_3) ==
;                                      If(And(Node_3 == Node_1),
;                                         False,
;                                         held(Model_36_ice,
;                                         S1,
;                                         Node_3))))))))]
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
; (define-fun S2 () StateId
;   StateId!val!0)
; (define-fun S1 () StateId
;   StateId!val!1)
; (define-fun Model_36_ice () ModelId
;   ModelId!val!0)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (let ((a!1 (or (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!0)
;                       (= x!2 Node!val!1))
;                  (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!1)
;                       (= x!2 Node!val!1))
;                  (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!0)
;                       (not (= x!2 Node!val!2))
;                       (not (= x!2 Node!val!1)))
;                  (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!1)
;                       (not (= x!2 Node!val!2))
;                       (not (= x!2 Node!val!1))))))
;     (ite a!1 Epoch!val!0 Epoch!val!1)))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!0) (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
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
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
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
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0)))))
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (= x!2 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Node!val!2))
;            (not (= x!2 Node!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Node!val!2))
;            (not (= x!2 Node!val!1)))))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!0)
;        (= x!2 Epoch!val!1)
;        (not (= x!2 Epoch!val!3))
;        (= x!3 Node!val!2)
;        (not (= x!3 Node!val!1))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!3)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!2)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   false)
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_36_ice S1 Node!val!0 Node!val!0)
                (inv Model_36_ice S1 Node!val!0 Node!val!1)
                (inv Model_36_ice S1 Node!val!0 Node!val!2)
                (inv Model_36_ice S1 Node!val!1 Node!val!0)
                (inv Model_36_ice S1 Node!val!1 Node!val!1)
                (inv Model_36_ice S1 Node!val!1 Node!val!2)
                (inv Model_36_ice S1 Node!val!2 Node!val!0)
                (inv Model_36_ice S1 Node!val!2 Node!val!1)
                (inv Model_36_ice S1 Node!val!2 Node!val!2))))
  (or (not a!1)
      (and a!1
           (inv Model_36_ice S2 Node!val!0 Node!val!0)
           (inv Model_36_ice S2 Node!val!0 Node!val!1)
           (inv Model_36_ice S2 Node!val!0 Node!val!2)
           (inv Model_36_ice S2 Node!val!1 Node!val!0)
           (inv Model_36_ice S2 Node!val!1 Node!val!1)
           (inv Model_36_ice S2 Node!val!1 Node!val!2)
           (inv Model_36_ice S2 Node!val!2 Node!val!0)
           (inv Model_36_ice S2 Node!val!2 Node!val!1)
           (inv Model_36_ice S2 Node!val!2 Node!val!2)))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; (forall ((n1 Node) (n2 Node))
;   (or (= n2 n1)
;       (not (held Model_37_ice S1 n1))
;       (not (transfer Model_37_ice S1 (ep Model_37_ice S1 n1) n2))))
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_37_ice, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_37_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_37_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_37_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_37_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_37_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_37_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_37_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_37_ice,
;                              zero(Model_37_ice),
;                              Epoch_1),
;                           one(Model_37_ice) !=
;                           zero(Model_37_ice))))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_37_ice, S1, e1, n1)),
;                transfer(Model_37_ice, S1, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_37_ice, S1, e1, n1)),
;                transfer(Model_37_ice,
;                         S1,
;                         ep(Model_37_ice, S1, n1),
;                         n1)))),
;  ForAll([n1, n2],
;         Or(n2 == n1,
;            Not(held(Model_37_ice, S1, n1)),
;            Not(transfer(Model_37_ice,
;                         S1,
;                         ep(Model_37_ice, S1, n1),
;                         n2)))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_37_ice, S2, e1, n1)),
;                transfer(Model_37_ice, S2, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_37_ice, S2, e1, n1)),
;                transfer(Model_37_ice,
;                         S2,
;                         ep(Model_37_ice, S2, n1),
;                         n1)))),
;  Not(ForAll([n1, n2],
;             Or(n2 == n1,
;                Not(transfer(Model_37_ice,
;                             S2,
;                             ep(Model_37_ice, S2, n1),
;                             n2)),
;                Not(held(Model_37_ice, S2, n1))))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_37_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_37_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_2)),
;                               Node_1 == Node_2)))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_37_ice,
;                                         S2,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_37_ice,
;                                         S2,
;                                         Epoch_1,
;                                         Node_2)),
;                               Node_1 == Node_2)))),
;  Exists(Node_1,
;         Exists(Node_2,
;                Exists(Epoch_1,
;                       And(And(held(Model_37_ice, S1, Node_1),
;                               Not(le(Model_37_ice,
;                                      Epoch_1,
;                                      ep(Model_37_ice,
;                                         S1,
;                                         Node_1)))),
;                           And(ForAll(Node_3,
;                                      ep(Model_37_ice,
;                                         S2,
;                                         Node_3) ==
;                                      ep(Model_37_ice,
;                                         S1,
;                                         Node_3)),
;                               ForAll(Epoch_2,
;                                      ForAll(Node_3,
;                                         locked(Model_37_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_3) ==
;                                         locked(Model_37_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_3))),
;                               ForAll(Epoch_2,
;                                      ForAll(Node_3,
;                                         transfer(Model_37_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_3) ==
;                                         If(And(Epoch_2 ==
;                                         Epoch_1,
;                                         Node_3 == Node_2),
;                                         True,
;                                         transfer(Model_37_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_3)))),
;                               ForAll(Node_3,
;                                      held(Model_37_ice,
;                                         S2,
;                                         Node_3) ==
;                                      If(And(Node_3 == Node_1),
;                                         False,
;                                         held(Model_37_ice,
;                                         S1,
;                                         Node_3))))))))]
;;;;;;;; Counter example generation constraints end ;;;;;;;;
;;;;;;;; Counter example model description: ;;;;;;;;
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
; (define-fun Model_37_ice () ModelId
;   ModelId!val!0)
; (define-fun S2 () StateId
;   StateId!val!0)
; (define-fun S1 () StateId
;   StateId!val!1)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   false)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (let ((a!1 (ite (and (= x!0 ModelId!val!0)
;                        (= x!1 StateId!val!0)
;                        (not (= x!2 Node!val!1))
;                        (not (= x!2 Node!val!2)))
;                   Epoch!val!3
;                   Epoch!val!1)))
;   (let ((a!2 (ite (and (= x!0 ModelId!val!0)
;                        (= x!1 StateId!val!1)
;                        (= x!2 Node!val!1)
;                        (not (= x!2 Node!val!2)))
;                   Epoch!val!0
;                   a!1)))
;   (let ((a!3 (ite (and (= x!0 ModelId!val!0)
;                        (= x!1 StateId!val!1)
;                        (not (= x!2 Node!val!1))
;                        (not (= x!2 Node!val!2)))
;                   Epoch!val!3
;                   a!2)))
;     (ite (and (= x!0 ModelId!val!0)
;               (= x!1 StateId!val!0)
;               (= x!2 Node!val!1)
;               (not (= x!2 Node!val!2)))
;          Epoch!val!0
;          a!3)))))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!0) (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1))
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
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
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
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!0))))
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Node!val!1))
;            (not (= x!2 Node!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Node!val!1))
;            (not (= x!2 Node!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Node!val!1)
;            (not (= x!2 Node!val!2)))))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!0)
;        (= x!2 Epoch!val!3)
;        (not (= x!2 Epoch!val!1))
;        (not (= x!2 Epoch!val!2))
;        (= x!3 Node!val!2)))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!2)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!1)
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_37_ice S1 Node!val!0 Node!val!0)
                (inv Model_37_ice S1 Node!val!0 Node!val!1)
                (inv Model_37_ice S1 Node!val!0 Node!val!2)
                (inv Model_37_ice S1 Node!val!1 Node!val!0)
                (inv Model_37_ice S1 Node!val!1 Node!val!1)
                (inv Model_37_ice S1 Node!val!1 Node!val!2)
                (inv Model_37_ice S1 Node!val!2 Node!val!0)
                (inv Model_37_ice S1 Node!val!2 Node!val!1)
                (inv Model_37_ice S1 Node!val!2 Node!val!2))))
  (or (not a!1)
      (and a!1
           (inv Model_37_ice S2 Node!val!0 Node!val!0)
           (inv Model_37_ice S2 Node!val!0 Node!val!1)
           (inv Model_37_ice S2 Node!val!0 Node!val!2)
           (inv Model_37_ice S2 Node!val!1 Node!val!0)
           (inv Model_37_ice S2 Node!val!1 Node!val!1)
           (inv Model_37_ice S2 Node!val!1 Node!val!2)
           (inv Model_37_ice S2 Node!val!2 Node!val!0)
           (inv Model_37_ice S2 Node!val!2 Node!val!1)
           (inv Model_37_ice S2 Node!val!2 Node!val!2)))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; (forall ((n1 Node) (n2 Node))
;   (or (held Model_38_ice S1 n1)
;       (not (transfer Model_38_ice S1 (ep Model_38_ice S1 n1) n2))
;       (not (held Model_38_ice S1 n2))))
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_38_ice, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_38_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_38_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_38_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_38_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_38_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_38_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_38_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_38_ice,
;                              zero(Model_38_ice),
;                              Epoch_1),
;                           one(Model_38_ice) !=
;                           zero(Model_38_ice))))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_38_ice, S1, e1, n1)),
;                transfer(Model_38_ice, S1, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_38_ice, S1, e1, n1)),
;                transfer(Model_38_ice,
;                         S1,
;                         ep(Model_38_ice, S1, n1),
;                         n1)))),
;  ForAll([n1, n2],
;         Or(held(Model_38_ice, S1, n1),
;            Not(transfer(Model_38_ice,
;                         S1,
;                         ep(Model_38_ice, S1, n1),
;                         n2)),
;            Not(held(Model_38_ice, S1, n2)))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_38_ice, S2, e1, n1)),
;                transfer(Model_38_ice, S2, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_38_ice, S2, e1, n1)),
;                transfer(Model_38_ice,
;                         S2,
;                         ep(Model_38_ice, S2, n1),
;                         n1)))),
;  Not(ForAll([n1, n2],
;             Or(Not(held(Model_38_ice, S2, n2)),
;                Not(transfer(Model_38_ice,
;                             S2,
;                             ep(Model_38_ice, S2, n1),
;                             n2)),
;                held(Model_38_ice, S2, n1)))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_38_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_38_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_2)),
;                               Node_1 == Node_2)))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_38_ice,
;                                         S2,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_38_ice,
;                                         S2,
;                                         Epoch_1,
;                                         Node_2)),
;                               Node_1 == Node_2)))),
;  Exists(Node_1,
;         Exists(Node_2,
;                Exists(Epoch_1,
;                       And(And(held(Model_38_ice, S1, Node_1),
;                               Not(le(Model_38_ice,
;                                      Epoch_1,
;                                      ep(Model_38_ice,
;                                         S1,
;                                         Node_1)))),
;                           And(ForAll(Node_3,
;                                      ep(Model_38_ice,
;                                         S2,
;                                         Node_3) ==
;                                      ep(Model_38_ice,
;                                         S1,
;                                         Node_3)),
;                               ForAll(Epoch_2,
;                                      ForAll(Node_3,
;                                         locked(Model_38_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_3) ==
;                                         locked(Model_38_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_3))),
;                               ForAll(Epoch_2,
;                                      ForAll(Node_3,
;                                         transfer(Model_38_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_3) ==
;                                         If(And(Epoch_2 ==
;                                         Epoch_1,
;                                         Node_3 == Node_2),
;                                         True,
;                                         transfer(Model_38_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_3)))),
;                               ForAll(Node_3,
;                                      held(Model_38_ice,
;                                         S2,
;                                         Node_3) ==
;                                      If(And(Node_3 == Node_1),
;                                         False,
;                                         held(Model_38_ice,
;                                         S1,
;                                         Node_3))))))))]
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
; (define-fun Model_38_ice () ModelId
;   ModelId!val!0)
; (define-fun S1 () StateId
;   StateId!val!1)
; (define-fun S2 () StateId
;   StateId!val!0)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (ite (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!1))
;     Epoch!val!0
;     (let ((a!1 (ite (and (= x!0 ModelId!val!0)
;                          (= x!1 StateId!val!0)
;                          (not (= x!2 Node!val!2))
;                          (not (= x!2 Node!val!1)))
;                     Epoch!val!3
;                     Epoch!val!1)))
;       (ite (and (= x!0 ModelId!val!0)
;                 (= x!1 StateId!val!1)
;                 (not (= x!2 Node!val!2))
;                 (not (= x!2 Node!val!1)))
;            Epoch!val!3
;            (ite (and (= x!0 ModelId!val!0)
;                      (= x!1 StateId!val!1)
;                      (= x!2 Node!val!1))
;                 Epoch!val!0
;                 a!1)))))
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
;            (= x!1 Epoch!val!1)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1)))))
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (= x!2 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Node!val!2)
;            (not (= x!2 Node!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Node!val!2)
;            (not (= x!2 Node!val!1)))))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!0)
;        (= x!2 Epoch!val!3)
;        (not (= x!2 Epoch!val!1))
;        (not (= x!2 Epoch!val!2))
;        (= x!3 Node!val!2)
;        (not (= x!3 Node!val!1))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!2)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   false)
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_38_ice S1 Node!val!0 Node!val!0)
                (inv Model_38_ice S1 Node!val!0 Node!val!1)
                (inv Model_38_ice S1 Node!val!0 Node!val!2)
                (inv Model_38_ice S1 Node!val!1 Node!val!0)
                (inv Model_38_ice S1 Node!val!1 Node!val!1)
                (inv Model_38_ice S1 Node!val!1 Node!val!2)
                (inv Model_38_ice S1 Node!val!2 Node!val!0)
                (inv Model_38_ice S1 Node!val!2 Node!val!1)
                (inv Model_38_ice S1 Node!val!2 Node!val!2))))
  (or (not a!1)
      (and a!1
           (inv Model_38_ice S2 Node!val!0 Node!val!0)
           (inv Model_38_ice S2 Node!val!0 Node!val!1)
           (inv Model_38_ice S2 Node!val!0 Node!val!2)
           (inv Model_38_ice S2 Node!val!1 Node!val!0)
           (inv Model_38_ice S2 Node!val!1 Node!val!1)
           (inv Model_38_ice S2 Node!val!1 Node!val!2)
           (inv Model_38_ice S2 Node!val!2 Node!val!0)
           (inv Model_38_ice S2 Node!val!2 Node!val!1)
           (inv Model_38_ice S2 Node!val!2 Node!val!2)))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; (forall ((n1 Node) (n2 Node))
;   (or (not (locked Model_39_ice S1 (ep Model_39_ice S1 n2) n1))
;       (held Model_39_ice S1 n1)
;       (not (held Model_39_ice S1 n2))))
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_39_ice, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_39_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_39_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_39_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_39_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_39_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_39_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_39_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_39_ice,
;                              zero(Model_39_ice),
;                              Epoch_1),
;                           one(Model_39_ice) !=
;                           zero(Model_39_ice))))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_39_ice, S1, e1, n1)),
;                transfer(Model_39_ice, S1, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_39_ice, S1, e1, n1)),
;                transfer(Model_39_ice,
;                         S1,
;                         ep(Model_39_ice, S1, n1),
;                         n1)))),
;  ForAll([n1, n2],
;         Or(Not(locked(Model_39_ice,
;                       S1,
;                       ep(Model_39_ice, S1, n2),
;                       n1)),
;            held(Model_39_ice, S1, n1),
;            Not(held(Model_39_ice, S1, n2)))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_39_ice, S2, e1, n1)),
;                transfer(Model_39_ice, S2, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_39_ice, S2, e1, n1)),
;                transfer(Model_39_ice,
;                         S2,
;                         ep(Model_39_ice, S2, n1),
;                         n1)))),
;  Not(ForAll([n1, n2],
;             Or(Not(held(Model_39_ice, S2, n2)),
;                Not(locked(Model_39_ice,
;                           S2,
;                           ep(Model_39_ice, S2, n2),
;                           n1)),
;                held(Model_39_ice, S2, n1)))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_39_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_39_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_2)),
;                               Node_1 == Node_2)))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_39_ice,
;                                         S2,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_39_ice,
;                                         S2,
;                                         Epoch_1,
;                                         Node_2)),
;                               Node_1 == Node_2)))),
;  Exists(Node_1,
;         Exists(Node_2,
;                Exists(Epoch_1,
;                       And(And(held(Model_39_ice, S1, Node_1),
;                               Not(le(Model_39_ice,
;                                      Epoch_1,
;                                      ep(Model_39_ice,
;                                         S1,
;                                         Node_1)))),
;                           And(ForAll(Node_3,
;                                      ep(Model_39_ice,
;                                         S2,
;                                         Node_3) ==
;                                      ep(Model_39_ice,
;                                         S1,
;                                         Node_3)),
;                               ForAll(Epoch_2,
;                                      ForAll(Node_3,
;                                         locked(Model_39_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_3) ==
;                                         locked(Model_39_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_3))),
;                               ForAll(Epoch_2,
;                                      ForAll(Node_3,
;                                         transfer(Model_39_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_3) ==
;                                         If(And(Epoch_2 ==
;                                         Epoch_1,
;                                         Node_3 == Node_2),
;                                         True,
;                                         transfer(Model_39_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_3)))),
;                               ForAll(Node_3,
;                                      held(Model_39_ice,
;                                         S2,
;                                         Node_3) ==
;                                      If(And(Node_3 == Node_1),
;                                         False,
;                                         held(Model_39_ice,
;                                         S1,
;                                         Node_3))))))))]
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
; (define-fun Model_39_ice () ModelId
;   ModelId!val!0)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (let ((a!1 (or (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!0)
;                       (= x!2 Node!val!1)
;                       (not (= x!2 Node!val!2)))
;                  (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!1)
;                       (= x!2 Node!val!1)
;                       (not (= x!2 Node!val!2))))))
;     (ite a!1 Epoch!val!1 Epoch!val!2)))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!0) (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0)))))
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Node!val!1))
;            (not (= x!2 Node!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Node!val!1))
;            (not (= x!2 Node!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Node!val!1)
;            (not (= x!2 Node!val!2)))))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!0)
;            (= x!3 Node!val!2))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1)
;            (not (= x!3 Node!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1)
;            (not (= x!3 Node!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1)
;            (not (= x!3 Node!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1)
;            (not (= x!3 Node!val!2)))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!4)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!3)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1)
;            (not (= x!3 Node!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1)
;            (not (= x!3 Node!val!2)))))
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_39_ice S1 Node!val!0 Node!val!0)
                (inv Model_39_ice S1 Node!val!0 Node!val!1)
                (inv Model_39_ice S1 Node!val!0 Node!val!2)
                (inv Model_39_ice S1 Node!val!1 Node!val!0)
                (inv Model_39_ice S1 Node!val!1 Node!val!1)
                (inv Model_39_ice S1 Node!val!1 Node!val!2)
                (inv Model_39_ice S1 Node!val!2 Node!val!0)
                (inv Model_39_ice S1 Node!val!2 Node!val!1)
                (inv Model_39_ice S1 Node!val!2 Node!val!2))))
  (or (not a!1)
      (and a!1
           (inv Model_39_ice S2 Node!val!0 Node!val!0)
           (inv Model_39_ice S2 Node!val!0 Node!val!1)
           (inv Model_39_ice S2 Node!val!0 Node!val!2)
           (inv Model_39_ice S2 Node!val!1 Node!val!0)
           (inv Model_39_ice S2 Node!val!1 Node!val!1)
           (inv Model_39_ice S2 Node!val!1 Node!val!2)
           (inv Model_39_ice S2 Node!val!2 Node!val!0)
           (inv Model_39_ice S2 Node!val!2 Node!val!1)
           (inv Model_39_ice S2 Node!val!2 Node!val!2)))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; (forall ((n1 Node) (n2 Node))
;   (or (held Model_40_ice S1 n1)
;       (not (held Model_40_ice S1 n2))
;       (not (locked Model_40_ice S1 (ep Model_40_ice S1 n1) n2))))
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_40_ice, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_40_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_40_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_40_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_40_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_40_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_40_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_40_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_40_ice,
;                              zero(Model_40_ice),
;                              Epoch_1),
;                           one(Model_40_ice) !=
;                           zero(Model_40_ice))))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_40_ice, S1, e1, n1)),
;                transfer(Model_40_ice, S1, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_40_ice, S1, e1, n1)),
;                transfer(Model_40_ice,
;                         S1,
;                         ep(Model_40_ice, S1, n1),
;                         n1)))),
;  ForAll([n1, n2],
;         Or(held(Model_40_ice, S1, n1),
;            Not(held(Model_40_ice, S1, n2)),
;            Not(locked(Model_40_ice,
;                       S1,
;                       ep(Model_40_ice, S1, n1),
;                       n2)))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_40_ice, S2, e1, n1)),
;                transfer(Model_40_ice, S2, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_40_ice, S2, e1, n1)),
;                transfer(Model_40_ice,
;                         S2,
;                         ep(Model_40_ice, S2, n1),
;                         n1)))),
;  Not(ForAll([n1, n2],
;             Or(Not(held(Model_40_ice, S2, n2)),
;                Not(locked(Model_40_ice,
;                           S2,
;                           ep(Model_40_ice, S2, n1),
;                           n2)),
;                held(Model_40_ice, S2, n1)))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_40_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_40_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_2)),
;                               Node_1 == Node_2)))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_40_ice,
;                                         S2,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_40_ice,
;                                         S2,
;                                         Epoch_1,
;                                         Node_2)),
;                               Node_1 == Node_2)))),
;  Exists(Node_1,
;         Exists(Node_2,
;                Exists(Epoch_1,
;                       And(And(held(Model_40_ice, S1, Node_1),
;                               Not(le(Model_40_ice,
;                                      Epoch_1,
;                                      ep(Model_40_ice,
;                                         S1,
;                                         Node_1)))),
;                           And(ForAll(Node_3,
;                                      ep(Model_40_ice,
;                                         S2,
;                                         Node_3) ==
;                                      ep(Model_40_ice,
;                                         S1,
;                                         Node_3)),
;                               ForAll(Epoch_2,
;                                      ForAll(Node_3,
;                                         locked(Model_40_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_3) ==
;                                         locked(Model_40_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_3))),
;                               ForAll(Epoch_2,
;                                      ForAll(Node_3,
;                                         transfer(Model_40_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_3) ==
;                                         If(And(Epoch_2 ==
;                                         Epoch_1,
;                                         Node_3 == Node_2),
;                                         True,
;                                         transfer(Model_40_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_3)))),
;                               ForAll(Node_3,
;                                      held(Model_40_ice,
;                                         S2,
;                                         Node_3) ==
;                                      If(And(Node_3 == Node_1),
;                                         False,
;                                         held(Model_40_ice,
;                                         S1,
;                                         Node_3))))))))]
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
; (define-fun Model_40_ice () ModelId
;   ModelId!val!0)
; (define-fun S1 () StateId
;   StateId!val!1)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (let ((a!1 (ite (and (= x!0 ModelId!val!0)
;                        (= x!1 StateId!val!0)
;                        (not (= x!2 Node!val!1))
;                        (not (= x!2 Node!val!2)))
;                   Epoch!val!4
;                   Epoch!val!2)))
;   (let ((a!2 (ite (and (= x!0 ModelId!val!0)
;                        (= x!1 StateId!val!1)
;                        (= x!2 Node!val!1)
;                        (not (= x!2 Node!val!2)))
;                   Epoch!val!1
;                   a!1)))
;   (let ((a!3 (ite (and (= x!0 ModelId!val!0)
;                        (= x!1 StateId!val!1)
;                        (not (= x!2 Node!val!1))
;                        (not (= x!2 Node!val!2)))
;                   Epoch!val!4
;                   a!2)))
;     (ite (and (= x!0 ModelId!val!0)
;               (= x!1 StateId!val!0)
;               (= x!2 Node!val!1)
;               (not (= x!2 Node!val!2)))
;          Epoch!val!1
;          a!3)))))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!1) (= x!2 Epoch!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1)))))
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Node!val!1))
;            (not (= x!2 Node!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Node!val!1))
;            (not (= x!2 Node!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Node!val!1)
;            (not (= x!2 Node!val!2)))))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!0)
;            (= x!3 Node!val!2))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!3 Node!val!1))
;            (not (= x!3 Node!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!3 Node!val!1))
;            (not (= x!3 Node!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!3 Node!val!1))
;            (not (= x!3 Node!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!3 Node!val!1))
;            (not (= x!3 Node!val!2)))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!3)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!2)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!3 Node!val!1))
;            (not (= x!3 Node!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!3 Node!val!1))
;            (not (= x!3 Node!val!2)))))
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_40_ice S1 Node!val!0 Node!val!0)
                (inv Model_40_ice S1 Node!val!0 Node!val!1)
                (inv Model_40_ice S1 Node!val!0 Node!val!2)
                (inv Model_40_ice S1 Node!val!1 Node!val!0)
                (inv Model_40_ice S1 Node!val!1 Node!val!1)
                (inv Model_40_ice S1 Node!val!1 Node!val!2)
                (inv Model_40_ice S1 Node!val!2 Node!val!0)
                (inv Model_40_ice S1 Node!val!2 Node!val!1)
                (inv Model_40_ice S1 Node!val!2 Node!val!2))))
  (or (not a!1)
      (and a!1
           (inv Model_40_ice S2 Node!val!0 Node!val!0)
           (inv Model_40_ice S2 Node!val!0 Node!val!1)
           (inv Model_40_ice S2 Node!val!0 Node!val!2)
           (inv Model_40_ice S2 Node!val!1 Node!val!0)
           (inv Model_40_ice S2 Node!val!1 Node!val!1)
           (inv Model_40_ice S2 Node!val!1 Node!val!2)
           (inv Model_40_ice S2 Node!val!2 Node!val!0)
           (inv Model_40_ice S2 Node!val!2 Node!val!1)
           (inv Model_40_ice S2 Node!val!2 Node!val!2)))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; (forall ((n1 Node) (n2 Node))
;   (or (not (transfer Model_41_ice S1 (ep Model_41_ice S1 n2) n1))
;       (le Model_41_ice (ep Model_41_ice S1 n1) (ep Model_41_ice S1 n2))))
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_41_ice, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_41_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_41_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_41_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_41_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_41_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_41_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_41_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_41_ice,
;                              zero(Model_41_ice),
;                              Epoch_1),
;                           one(Model_41_ice) !=
;                           zero(Model_41_ice))))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_41_ice, S1, e1, n1)),
;                transfer(Model_41_ice, S1, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_41_ice, S1, e1, n1)),
;                transfer(Model_41_ice,
;                         S1,
;                         ep(Model_41_ice, S1, n1),
;                         n1)))),
;  ForAll([n1, n2],
;         Or(Not(transfer(Model_41_ice,
;                         S1,
;                         ep(Model_41_ice, S1, n2),
;                         n1)),
;            le(Model_41_ice,
;               ep(Model_41_ice, S1, n1),
;               ep(Model_41_ice, S1, n2)))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_41_ice, S2, e1, n1)),
;                transfer(Model_41_ice, S2, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_41_ice, S2, e1, n1)),
;                transfer(Model_41_ice,
;                         S2,
;                         ep(Model_41_ice, S2, n1),
;                         n1)))),
;  Not(ForAll([n1, n2],
;             Or(Not(transfer(Model_41_ice,
;                             S2,
;                             ep(Model_41_ice, S2, n2),
;                             n1)),
;                le(Model_41_ice,
;                   ep(Model_41_ice, S2, n1),
;                   ep(Model_41_ice, S2, n2))))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_41_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_41_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_2)),
;                               Node_1 == Node_2)))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_41_ice,
;                                         S2,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_41_ice,
;                                         S2,
;                                         Epoch_1,
;                                         Node_2)),
;                               Node_1 == Node_2)))),
;  Exists(Node_1,
;         Exists(Node_2,
;                Exists(Epoch_1,
;                       And(And(held(Model_41_ice, S1, Node_1),
;                               Not(le(Model_41_ice,
;                                      Epoch_1,
;                                      ep(Model_41_ice,
;                                         S1,
;                                         Node_1)))),
;                           And(ForAll(Node_3,
;                                      ep(Model_41_ice,
;                                         S2,
;                                         Node_3) ==
;                                      ep(Model_41_ice,
;                                         S1,
;                                         Node_3)),
;                               ForAll(Epoch_2,
;                                      ForAll(Node_3,
;                                         locked(Model_41_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_3) ==
;                                         locked(Model_41_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_3))),
;                               ForAll(Epoch_2,
;                                      ForAll(Node_3,
;                                         transfer(Model_41_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_3) ==
;                                         If(And(Epoch_2 ==
;                                         Epoch_1,
;                                         Node_3 == Node_2),
;                                         True,
;                                         transfer(Model_41_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_3)))),
;                               ForAll(Node_3,
;                                      held(Model_41_ice,
;                                         S2,
;                                         Node_3) ==
;                                      If(And(Node_3 == Node_1),
;                                         False,
;                                         held(Model_41_ice,
;                                         S1,
;                                         Node_3))))))))]
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
; (define-fun Model_41_ice () ModelId
;   ModelId!val!0)
; (define-fun S1 () StateId
;   StateId!val!1)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (ite (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (= x!2 Node!val!2))
;     Epoch!val!4
;     (let ((a!1 (ite (and (= x!0 ModelId!val!0)
;                          (= x!1 StateId!val!0)
;                          (not (= x!2 Node!val!1))
;                          (not (= x!2 Node!val!2)))
;                     Epoch!val!3
;                     Epoch!val!2)))
;       (ite (and (= x!0 ModelId!val!0)
;                 (= x!1 StateId!val!1)
;                 (not (= x!2 Node!val!1))
;                 (not (= x!2 Node!val!2)))
;            Epoch!val!3
;            (ite (and (= x!0 ModelId!val!0)
;                      (= x!1 StateId!val!0)
;                      (= x!2 Node!val!2))
;                 Epoch!val!4
;                 a!1)))))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!1) (= x!2 Epoch!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!1))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!1))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!1))))
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!1)
;        (= x!2 Node!val!1)
;        (not (= x!2 Node!val!2))))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!0)
;        (= x!2 Epoch!val!3)
;        (not (= x!2 Epoch!val!0))
;        (not (= x!2 Epoch!val!1))
;        (not (= x!2 Epoch!val!4))
;        (= x!3 Node!val!2)))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!0)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   false)
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_41_ice S1 Node!val!0 Node!val!0)
                (inv Model_41_ice S1 Node!val!0 Node!val!1)
                (inv Model_41_ice S1 Node!val!0 Node!val!2)
                (inv Model_41_ice S1 Node!val!1 Node!val!0)
                (inv Model_41_ice S1 Node!val!1 Node!val!1)
                (inv Model_41_ice S1 Node!val!1 Node!val!2)
                (inv Model_41_ice S1 Node!val!2 Node!val!0)
                (inv Model_41_ice S1 Node!val!2 Node!val!1)
                (inv Model_41_ice S1 Node!val!2 Node!val!2))))
  (or (not a!1)
      (and a!1
           (inv Model_41_ice S2 Node!val!0 Node!val!0)
           (inv Model_41_ice S2 Node!val!0 Node!val!1)
           (inv Model_41_ice S2 Node!val!0 Node!val!2)
           (inv Model_41_ice S2 Node!val!1 Node!val!0)
           (inv Model_41_ice S2 Node!val!1 Node!val!1)
           (inv Model_41_ice S2 Node!val!1 Node!val!2)
           (inv Model_41_ice S2 Node!val!2 Node!val!0)
           (inv Model_41_ice S2 Node!val!2 Node!val!1)
           (inv Model_41_ice S2 Node!val!2 Node!val!2)))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; (forall ((n1 Node) (n2 Node))
;   (or (not (transfer Model_42_ice S1 (ep Model_42_ice S1 n2) n2))
;       (le Model_42_ice (ep Model_42_ice S1 n1) (ep Model_42_ice S1 n2))))
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_42_ice, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_42_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_42_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_42_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_42_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_42_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_42_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_42_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_42_ice,
;                              zero(Model_42_ice),
;                              Epoch_1),
;                           one(Model_42_ice) !=
;                           zero(Model_42_ice))))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_42_ice, S1, e1, n1)),
;                transfer(Model_42_ice, S1, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_42_ice, S1, e1, n1)),
;                transfer(Model_42_ice,
;                         S1,
;                         ep(Model_42_ice, S1, n1),
;                         n1)))),
;  ForAll([n1, n2],
;         Or(Not(transfer(Model_42_ice,
;                         S1,
;                         ep(Model_42_ice, S1, n2),
;                         n2)),
;            le(Model_42_ice,
;               ep(Model_42_ice, S1, n1),
;               ep(Model_42_ice, S1, n2)))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_42_ice, S2, e1, n1)),
;                transfer(Model_42_ice, S2, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_42_ice, S2, e1, n1)),
;                transfer(Model_42_ice,
;                         S2,
;                         ep(Model_42_ice, S2, n1),
;                         n1)))),
;  Not(ForAll([n1, n2],
;             Or(Not(transfer(Model_42_ice,
;                             S2,
;                             ep(Model_42_ice, S2, n2),
;                             n2)),
;                le(Model_42_ice,
;                   ep(Model_42_ice, S2, n1),
;                   ep(Model_42_ice, S2, n2))))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_42_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_42_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_2)),
;                               Node_1 == Node_2)))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_42_ice,
;                                         S2,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_42_ice,
;                                         S2,
;                                         Epoch_1,
;                                         Node_2)),
;                               Node_1 == Node_2)))),
;  Exists(Node_1,
;         Exists(Node_2,
;                Exists(Epoch_1,
;                       And(And(held(Model_42_ice, S1, Node_1),
;                               Not(le(Model_42_ice,
;                                      Epoch_1,
;                                      ep(Model_42_ice,
;                                         S1,
;                                         Node_1)))),
;                           And(ForAll(Node_3,
;                                      ep(Model_42_ice,
;                                         S2,
;                                         Node_3) ==
;                                      ep(Model_42_ice,
;                                         S1,
;                                         Node_3)),
;                               ForAll(Epoch_2,
;                                      ForAll(Node_3,
;                                         locked(Model_42_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_3) ==
;                                         locked(Model_42_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_3))),
;                               ForAll(Epoch_2,
;                                      ForAll(Node_3,
;                                         transfer(Model_42_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_3) ==
;                                         If(And(Epoch_2 ==
;                                         Epoch_1,
;                                         Node_3 == Node_2),
;                                         True,
;                                         transfer(Model_42_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_3)))),
;                               ForAll(Node_3,
;                                      held(Model_42_ice,
;                                         S2,
;                                         Node_3) ==
;                                      If(And(Node_3 == Node_1),
;                                         False,
;                                         held(Model_42_ice,
;                                         S1,
;                                         Node_3))))))))]
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
; (define-fun Model_42_ice () ModelId
;   ModelId!val!0)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (ite (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!1))
;     Epoch!val!2
;     (let ((a!1 (ite (and (= x!0 ModelId!val!0)
;                          (= x!1 StateId!val!0)
;                          (not (= x!2 Node!val!2))
;                          (not (= x!2 Node!val!1)))
;                     Epoch!val!4
;                     Epoch!val!3)))
;       (ite (and (= x!0 ModelId!val!0)
;                 (= x!1 StateId!val!1)
;                 (not (= x!2 Node!val!2))
;                 (not (= x!2 Node!val!1)))
;            Epoch!val!4
;            (ite (and (= x!0 ModelId!val!0)
;                      (= x!1 StateId!val!1)
;                      (= x!2 Node!val!1))
;                 Epoch!val!2
;                 a!1)))))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!1) (= x!2 Epoch!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!1))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!1))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1)))))
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!1) (= x!2 Node!val!1)))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!0)
;        (= x!2 Epoch!val!3)
;        (not (= x!2 Epoch!val!1))
;        (not (= x!2 Epoch!val!0))
;        (= x!3 Node!val!2)
;        (not (= x!3 Node!val!1))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!0)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   false)
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_42_ice S1 Node!val!0 Node!val!0)
                (inv Model_42_ice S1 Node!val!0 Node!val!1)
                (inv Model_42_ice S1 Node!val!0 Node!val!2)
                (inv Model_42_ice S1 Node!val!1 Node!val!0)
                (inv Model_42_ice S1 Node!val!1 Node!val!1)
                (inv Model_42_ice S1 Node!val!1 Node!val!2)
                (inv Model_42_ice S1 Node!val!2 Node!val!0)
                (inv Model_42_ice S1 Node!val!2 Node!val!1)
                (inv Model_42_ice S1 Node!val!2 Node!val!2))))
  (or (not a!1)
      (and a!1
           (inv Model_42_ice S2 Node!val!0 Node!val!0)
           (inv Model_42_ice S2 Node!val!0 Node!val!1)
           (inv Model_42_ice S2 Node!val!0 Node!val!2)
           (inv Model_42_ice S2 Node!val!1 Node!val!0)
           (inv Model_42_ice S2 Node!val!1 Node!val!1)
           (inv Model_42_ice S2 Node!val!1 Node!val!2)
           (inv Model_42_ice S2 Node!val!2 Node!val!0)
           (inv Model_42_ice S2 Node!val!2 Node!val!1)
           (inv Model_42_ice S2 Node!val!2 Node!val!2)))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; (forall ((n1 Node) (n2 Node))
;   (or (not (locked Model_43_ice S1 (ep Model_43_ice S1 n2) n2))
;       (held Model_43_ice S1 n2)
;       (not (held Model_43_ice S1 n1))))
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_43_ice, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_43_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_43_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_43_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_43_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_43_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_43_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_43_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_43_ice,
;                              zero(Model_43_ice),
;                              Epoch_1),
;                           one(Model_43_ice) !=
;                           zero(Model_43_ice))))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_43_ice, S1, e1, n1)),
;                transfer(Model_43_ice, S1, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_43_ice, S1, e1, n1)),
;                transfer(Model_43_ice,
;                         S1,
;                         ep(Model_43_ice, S1, n1),
;                         n1)))),
;  ForAll([n1, n2],
;         Or(Not(locked(Model_43_ice,
;                       S1,
;                       ep(Model_43_ice, S1, n2),
;                       n2)),
;            held(Model_43_ice, S1, n2),
;            Not(held(Model_43_ice, S1, n1)))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_43_ice, S2, e1, n1)),
;                transfer(Model_43_ice, S2, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_43_ice, S2, e1, n1)),
;                transfer(Model_43_ice,
;                         S2,
;                         ep(Model_43_ice, S2, n1),
;                         n1)))),
;  Not(ForAll([n1, n2],
;             Or(Not(held(Model_43_ice, S2, n1)),
;                Not(locked(Model_43_ice,
;                           S2,
;                           ep(Model_43_ice, S2, n2),
;                           n2)),
;                held(Model_43_ice, S2, n2)))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_43_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_43_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_2)),
;                               Node_1 == Node_2)))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_43_ice,
;                                         S2,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_43_ice,
;                                         S2,
;                                         Epoch_1,
;                                         Node_2)),
;                               Node_1 == Node_2)))),
;  Exists(Node_1,
;         Exists(Node_2,
;                Exists(Epoch_1,
;                       And(And(held(Model_43_ice, S1, Node_1),
;                               Not(le(Model_43_ice,
;                                      Epoch_1,
;                                      ep(Model_43_ice,
;                                         S1,
;                                         Node_1)))),
;                           And(ForAll(Node_3,
;                                      ep(Model_43_ice,
;                                         S2,
;                                         Node_3) ==
;                                      ep(Model_43_ice,
;                                         S1,
;                                         Node_3)),
;                               ForAll(Epoch_2,
;                                      ForAll(Node_3,
;                                         locked(Model_43_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_3) ==
;                                         locked(Model_43_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_3))),
;                               ForAll(Epoch_2,
;                                      ForAll(Node_3,
;                                         transfer(Model_43_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_3) ==
;                                         If(And(Epoch_2 ==
;                                         Epoch_1,
;                                         Node_3 == Node_2),
;                                         True,
;                                         transfer(Model_43_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_3)))),
;                               ForAll(Node_3,
;                                      held(Model_43_ice,
;                                         S2,
;                                         Node_3) ==
;                                      If(And(Node_3 == Node_1),
;                                         False,
;                                         held(Model_43_ice,
;                                         S1,
;                                         Node_3))))))))]
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
; (define-fun Model_43_ice () ModelId
;   ModelId!val!0)
; (define-fun S2 () StateId
;   StateId!val!0)
; (define-fun S1 () StateId
;   StateId!val!1)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (let ((a!1 (or (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!0)
;                       (= x!2 Node!val!1)
;                       (not (= x!2 Node!val!2)))
;                  (and (= x!0 ModelId!val!0)
;                       (= x!1 StateId!val!1)
;                       (= x!2 Node!val!1)
;                       (not (= x!2 Node!val!2))))))
;     (ite a!1 Epoch!val!1 Epoch!val!3)))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!3) (= x!2 Epoch!val!3))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!3))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!3))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!3))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3)))))
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Node!val!1))
;            (not (= x!2 Node!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Node!val!1))
;            (not (= x!2 Node!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Node!val!1)
;            (not (= x!2 Node!val!2)))))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!0)
;            (not (= x!2 Epoch!val!2))
;            (= x!3 Node!val!2))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!2))
;            (= x!3 Node!val!1)
;            (not (= x!3 Node!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!2))
;            (= x!3 Node!val!1)
;            (not (= x!3 Node!val!2)))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!3)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!2)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!2))
;            (= x!3 Node!val!1)
;            (not (= x!3 Node!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!2))
;            (= x!3 Node!val!1)
;            (not (= x!3 Node!val!2)))))
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_43_ice S1 Node!val!0 Node!val!0)
                (inv Model_43_ice S1 Node!val!0 Node!val!1)
                (inv Model_43_ice S1 Node!val!0 Node!val!2)
                (inv Model_43_ice S1 Node!val!1 Node!val!0)
                (inv Model_43_ice S1 Node!val!1 Node!val!1)
                (inv Model_43_ice S1 Node!val!1 Node!val!2)
                (inv Model_43_ice S1 Node!val!2 Node!val!0)
                (inv Model_43_ice S1 Node!val!2 Node!val!1)
                (inv Model_43_ice S1 Node!val!2 Node!val!2))))
  (or (not a!1)
      (and a!1
           (inv Model_43_ice S2 Node!val!0 Node!val!0)
           (inv Model_43_ice S2 Node!val!0 Node!val!1)
           (inv Model_43_ice S2 Node!val!0 Node!val!2)
           (inv Model_43_ice S2 Node!val!1 Node!val!0)
           (inv Model_43_ice S2 Node!val!1 Node!val!1)
           (inv Model_43_ice S2 Node!val!1 Node!val!2)
           (inv Model_43_ice S2 Node!val!2 Node!val!0)
           (inv Model_43_ice S2 Node!val!2 Node!val!1)
           (inv Model_43_ice S2 Node!val!2 Node!val!2)))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; (forall ((n1 Node) (n2 Node))
;   (or (not (locked Model_44_ice S1 (ep Model_44_ice S1 n2) n1))
;       (= (ep Model_44_ice S1 n2) (ep Model_44_ice S1 n1))))
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_44_ice, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_44_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_44_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_44_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_44_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_44_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_44_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_44_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_44_ice,
;                              zero(Model_44_ice),
;                              Epoch_1),
;                           one(Model_44_ice) !=
;                           zero(Model_44_ice))))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_44_ice, S1, e1, n1)),
;                transfer(Model_44_ice, S1, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_44_ice, S1, e1, n1)),
;                transfer(Model_44_ice,
;                         S1,
;                         ep(Model_44_ice, S1, n1),
;                         n1)))),
;  ForAll([n1, n2],
;         Or(Not(locked(Model_44_ice,
;                       S1,
;                       ep(Model_44_ice, S1, n2),
;                       n1)),
;            ep(Model_44_ice, S1, n2) ==
;            ep(Model_44_ice, S1, n1))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_44_ice, S2, e1, n1)),
;                transfer(Model_44_ice, S2, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_44_ice, S2, e1, n1)),
;                transfer(Model_44_ice,
;                         S2,
;                         ep(Model_44_ice, S2, n1),
;                         n1)))),
;  Not(ForAll([n1, n2],
;             Or(Not(locked(Model_44_ice,
;                           S2,
;                           ep(Model_44_ice, S2, n2),
;                           n1)),
;                ep(Model_44_ice, S2, n2) ==
;                ep(Model_44_ice, S2, n1)))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_44_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_44_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_2)),
;                               Node_1 == Node_2)))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_44_ice,
;                                         S2,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_44_ice,
;                                         S2,
;                                         Epoch_1,
;                                         Node_2)),
;                               Node_1 == Node_2)))),
;  Exists(Node_1,
;         Exists(Epoch_1,
;                And(And(transfer(Model_44_ice,
;                                 S1,
;                                 Epoch_1,
;                                 Node_1),
;                        Not(le(Model_44_ice,
;                               Epoch_1,
;                               ep(Model_44_ice, S1, Node_1)))),
;                    And(ForAll(Epoch_2,
;                               ForAll(Node_2,
;                                      transfer(Model_44_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_2) ==
;                                      transfer(Model_44_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_2))),
;                        ForAll(Node_2,
;                               held(Model_44_ice, S2, Node_2) ==
;                               If(And(Node_2 == Node_1),
;                                  True,
;                                  held(Model_44_ice,
;                                       S1,
;                                       Node_2))),
;                        ForAll(Node_2,
;                               ep(Model_44_ice, S2, Node_2) ==
;                               If(And(Node_2 == Node_1),
;                                  Epoch_1,
;                                  ep(Model_44_ice,
;                                     S1,
;                                     Node_2))),
;                        ForAll(Epoch_2,
;                               ForAll(Node_2,
;                                      locked(Model_44_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_2) ==
;                                      If(And(Epoch_2 ==
;                                         Epoch_1,
;                                         Node_2 == Node_1),
;                                         True,
;                                         locked(Model_44_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_2))))))))]
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
; (define-fun S2 () StateId
;   StateId!val!0)
; (define-fun S1 () StateId
;   StateId!val!1)
; (define-fun Model_44_ice () ModelId
;   ModelId!val!0)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (ite (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!1))
;     Epoch!val!0
;     (let ((a!1 (or (and (= x!0 ModelId!val!0)
;                         (= x!1 StateId!val!0)
;                         (not (= x!2 Node!val!1)))
;                    (and (= x!0 ModelId!val!0)
;                         (= x!1 StateId!val!1)
;                         (= x!2 Node!val!1))
;                    (and (= x!0 ModelId!val!0)
;                         (= x!1 StateId!val!1)
;                         (not (= x!2 Node!val!1))))))
;       (ite a!1 Epoch!val!3 Epoch!val!2))))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!3))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!3) (= x!2 Epoch!val!3))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!3))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!3))
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!3))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!3)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!3)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!3))
;            (= x!2 Epoch!val!3))))
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!1)))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!0)
;            (= x!3 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!0)
;            (= x!3 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!2)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!0)
;            (= x!3 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!0))
;            (= x!3 Node!val!1))))
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_44_ice S1 Node!val!0 Node!val!0)
                (inv Model_44_ice S1 Node!val!0 Node!val!1)
                (inv Model_44_ice S1 Node!val!1 Node!val!0)
                (inv Model_44_ice S1 Node!val!1 Node!val!1))))
  (or (not a!1)
      (and a!1
           (inv Model_44_ice S2 Node!val!0 Node!val!0)
           (inv Model_44_ice S2 Node!val!0 Node!val!1)
           (inv Model_44_ice S2 Node!val!1 Node!val!0)
           (inv Model_44_ice S2 Node!val!1 Node!val!1)))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; (forall ((n1 Node) (n2 Node))
;   (or (not (locked Model_45_ice S1 (ep Model_45_ice S1 n2) n2))
;       (le Model_45_ice (ep Model_45_ice S1 n1) (ep Model_45_ice S1 n2))))
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_45_ice, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_45_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_45_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_45_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_45_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_45_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_45_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_45_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_45_ice,
;                              zero(Model_45_ice),
;                              Epoch_1),
;                           one(Model_45_ice) !=
;                           zero(Model_45_ice))))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_45_ice, S1, e1, n1)),
;                transfer(Model_45_ice, S1, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_45_ice, S1, e1, n1)),
;                transfer(Model_45_ice,
;                         S1,
;                         ep(Model_45_ice, S1, n1),
;                         n1)))),
;  ForAll([n1, n2],
;         Or(Not(locked(Model_45_ice,
;                       S1,
;                       ep(Model_45_ice, S1, n2),
;                       n2)),
;            le(Model_45_ice,
;               ep(Model_45_ice, S1, n1),
;               ep(Model_45_ice, S1, n2)))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_45_ice, S2, e1, n1)),
;                transfer(Model_45_ice, S2, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_45_ice, S2, e1, n1)),
;                transfer(Model_45_ice,
;                         S2,
;                         ep(Model_45_ice, S2, n1),
;                         n1)))),
;  Not(ForAll([n1, n2],
;             Or(Not(locked(Model_45_ice,
;                           S2,
;                           ep(Model_45_ice, S2, n2),
;                           n2)),
;                le(Model_45_ice,
;                   ep(Model_45_ice, S2, n1),
;                   ep(Model_45_ice, S2, n2))))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_45_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_45_ice,
;                                         S1,
;                                         Epoch_1,
;                                         Node_2)),
;                               Node_1 == Node_2)))),
;  ForAll(Epoch_1,
;         ForAll(Node_1,
;                ForAll(Node_2,
;                       Implies(And(locked(Model_45_ice,
;                                         S2,
;                                         Epoch_1,
;                                         Node_1),
;                                   locked(Model_45_ice,
;                                         S2,
;                                         Epoch_1,
;                                         Node_2)),
;                               Node_1 == Node_2)))),
;  Exists(Node_1,
;         Exists(Epoch_1,
;                And(And(transfer(Model_45_ice,
;                                 S1,
;                                 Epoch_1,
;                                 Node_1),
;                        Not(le(Model_45_ice,
;                               Epoch_1,
;                               ep(Model_45_ice, S1, Node_1)))),
;                    And(ForAll(Epoch_2,
;                               ForAll(Node_2,
;                                      transfer(Model_45_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_2) ==
;                                      transfer(Model_45_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_2))),
;                        ForAll(Node_2,
;                               held(Model_45_ice, S2, Node_2) ==
;                               If(And(Node_2 == Node_1),
;                                  True,
;                                  held(Model_45_ice,
;                                       S1,
;                                       Node_2))),
;                        ForAll(Node_2,
;                               ep(Model_45_ice, S2, Node_2) ==
;                               If(And(Node_2 == Node_1),
;                                  Epoch_1,
;                                  ep(Model_45_ice,
;                                     S1,
;                                     Node_2))),
;                        ForAll(Epoch_2,
;                               ForAll(Node_2,
;                                      locked(Model_45_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_2) ==
;                                      If(And(Epoch_2 ==
;                                         Epoch_1,
;                                         Node_2 == Node_1),
;                                         True,
;                                         locked(Model_45_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_2))))))))]
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
; (define-fun Model_45_ice () ModelId
;   ModelId!val!0)
; (define-fun S1 () StateId
;   StateId!val!1)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (and (= x!0 ModelId!val!0)
;        (= x!1 StateId!val!0)
;        (= x!2 Epoch!val!2)
;        (not (= x!2 Epoch!val!0))
;        (not (= x!2 Epoch!val!1))
;        (= x!3 Node!val!1)))
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (ite (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!1))
;     Epoch!val!2
;     (let ((a!1 (or (and (= x!0 ModelId!val!0)
;                         (= x!1 StateId!val!0)
;                         (not (= x!2 Node!val!1)))
;                    (and (= x!0 ModelId!val!0)
;                         (= x!1 StateId!val!1)
;                         (not (= x!2 Node!val!1))))))
;       (ite a!1 Epoch!val!4 Epoch!val!3))))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!0) (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!0)))
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
;            (= x!2 Epoch!val!0))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!4)
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!2))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!2 Epoch!val!4))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!0))
;            (= x!2 Epoch!val!4)
;            (not (= x!2 Epoch!val!2))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!0)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!4))
;            (not (= x!1 Epoch!val!2))
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
;            (not (= x!2 Epoch!val!0)))))
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!1)))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (= x!3 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!2)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (= x!3 Node!val!1))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!0)
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_45_ice S1 Node!val!0 Node!val!0)
                (inv Model_45_ice S1 Node!val!0 Node!val!1)
                (inv Model_45_ice S1 Node!val!1 Node!val!0)
                (inv Model_45_ice S1 Node!val!1 Node!val!1))))
  (or (not a!1)
      (and a!1
           (inv Model_45_ice S2 Node!val!0 Node!val!0)
           (inv Model_45_ice S2 Node!val!0 Node!val!1)
           (inv Model_45_ice S2 Node!val!1 Node!val!0)
           (inv Model_45_ice S2 Node!val!1 Node!val!1)))))


; candidate invariant was : (cex type: <class 'invar_synth.cegis.cex.ImplicationCEX'>)
; (forall ((n1 Node) (n2 Node))
;   (or (not (locked Model_46_ice S1 (ep Model_46_ice S1 n2) n1))
;       (le Model_46_ice (ep Model_46_ice S1 n2) (ep Model_46_ice S1 n1))))
;;;;;;;; Counter example generation constraints: ;;;;;;;;
; [ForAll(Epoch_1,
;         ForAll(Epoch_2,
;                ForAll(Epoch_3,
;                       And(le(Model_46_ice, Epoch_1, Epoch_1),
;                           Implies(And(le(Model_46_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_46_ice,
;                                         Epoch_2,
;                                         Epoch_3)),
;                                   le(Model_46_ice,
;                                      Epoch_1,
;                                      Epoch_3)),
;                           Implies(And(le(Model_46_ice,
;                                         Epoch_1,
;                                         Epoch_2),
;                                       le(Model_46_ice,
;                                         Epoch_2,
;                                         Epoch_1)),
;                                   Epoch_1 == Epoch_2),
;                           Or(le(Model_46_ice,
;                                 Epoch_1,
;                                 Epoch_2),
;                              le(Model_46_ice,
;                                 Epoch_2,
;                                 Epoch_1)),
;                           le(Model_46_ice,
;                              zero(Model_46_ice),
;                              Epoch_1),
;                           one(Model_46_ice) !=
;                           zero(Model_46_ice))))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_46_ice, S1, e1, n1)),
;                transfer(Model_46_ice, S1, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_46_ice, S1, e1, n1)),
;                transfer(Model_46_ice,
;                         S1,
;                         ep(Model_46_ice, S1, n1),
;                         n1)))),
;  ForAll([n1, n2],
;         Or(Not(locked(Model_46_ice,
;                       S1,
;                       ep(Model_46_ice, S1, n2),
;                       n1)),
;            le(Model_46_ice,
;               ep(Model_46_ice, S1, n2),
;               ep(Model_46_ice, S1, n1)))),
;  And(ForAll([n1, e1],
;             Or(Not(locked(Model_46_ice, S2, e1, n1)),
;                transfer(Model_46_ice, S2, e1, n1))),
;      ForAll([n1, e1],
;             Or(Not(locked(Model_46_ice, S2, e1, n1)),
;                transfer(Model_46_ice,
;                         S2,
;                         ep(Model_46_ice, S2, n1),
;                         n1)))),
;  Not(ForAll([n1, n2],
;             Or(Not(locked(Model_46_ice,
;                           S2,
;                           ep(Model_46_ice, S2, n2),
;                           n1)),
;                le(Model_46_ice,
;                   ep(Model_46_ice, S2, n2),
;                   ep(Model_46_ice, S2, n1))))),
;  Exists(Node_1,
;         Exists(Epoch_1,
;                And(And(transfer(Model_46_ice,
;                                 S1,
;                                 Epoch_1,
;                                 Node_1),
;                        Not(le(Model_46_ice,
;                               Epoch_1,
;                               ep(Model_46_ice, S1, Node_1)))),
;                    And(ForAll(Epoch_2,
;                               ForAll(Node_2,
;                                      transfer(Model_46_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_2) ==
;                                      transfer(Model_46_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_2))),
;                        ForAll(Node_2,
;                               held(Model_46_ice, S2, Node_2) ==
;                               If(And(Node_2 == Node_1),
;                                  True,
;                                  held(Model_46_ice,
;                                       S1,
;                                       Node_2))),
;                        ForAll(Node_2,
;                               ep(Model_46_ice, S2, Node_2) ==
;                               If(And(Node_2 == Node_1),
;                                  Epoch_1,
;                                  ep(Model_46_ice,
;                                     S1,
;                                     Node_2))),
;                        ForAll(Epoch_2,
;                               ForAll(Node_2,
;                                      locked(Model_46_ice,
;                                         S2,
;                                         Epoch_2,
;                                         Node_2) ==
;                                      If(And(Epoch_2 ==
;                                         Epoch_1,
;                                         Node_2 == Node_1),
;                                         True,
;                                         locked(Model_46_ice,
;                                         S1,
;                                         Epoch_2,
;                                         Node_2))))))))]
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
; (define-fun Model_46_ice () ModelId
;   ModelId!val!0)
; (define-fun S1 () StateId
;   StateId!val!1)
; (define-fun S2 () StateId
;   StateId!val!0)
; (define-fun ep ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Epoch
;   (ite (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!1))
;     Epoch!val!3
;     (let ((a!1 (ite (and (= x!0 ModelId!val!0)
;                          (= x!1 StateId!val!0)
;                          (not (= x!2 Node!val!1)))
;                     Epoch!val!4
;                     Epoch!val!0)))
;       (ite (and (= x!0 ModelId!val!0)
;                 (= x!1 StateId!val!1)
;                 (not (= x!2 Node!val!1)))
;            Epoch!val!4
;            (ite (and (= x!0 ModelId!val!0)
;                      (= x!1 StateId!val!1)
;                      (= x!2 Node!val!1))
;                 Epoch!val!2
;                 a!1)))))
; (define-fun le ((x!0 ModelId) (x!1 Epoch) (x!2 Epoch)) Bool
;   (or (and (= x!0 ModelId!val!0) (= x!1 Epoch!val!2) (= x!2 Epoch!val!2))
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
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!1)
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!1))
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
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!2)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!2))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!2))
;       (and (= x!0 ModelId!val!0)
;            (not (= x!1 Epoch!val!0))
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!1)
;            (not (= x!2 Epoch!val!2)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 Epoch!val!0)
;            (not (= x!1 Epoch!val!3))
;            (not (= x!1 Epoch!val!1))
;            (not (= x!1 Epoch!val!2))
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2)))))
; (define-fun held ((x!0 ModelId) (x!1 StateId) (x!2 Node)) Bool
;   (and (= x!0 ModelId!val!0) (= x!1 StateId!val!0) (= x!2 Node!val!1)))
; (define-fun transfer ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!3 Node!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2))
;            (= x!3 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (not (= x!2 Epoch!val!3))
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!3 Node!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!3 Node!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2))
;            (= x!3 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!3 Node!val!1)))))
; (define-fun zero ((x!0 ModelId)) Epoch
;   Epoch!val!0)
; (define-fun one ((x!0 ModelId)) Epoch
;   Epoch!val!1)
; (define-fun locked ((x!0 ModelId) (x!1 StateId) (x!2 Epoch) (x!3 Node)) Bool
;   (or (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2))
;            (= x!3 Node!val!1))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!0)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!3 Node!val!1)))
;       (and (= x!0 ModelId!val!0)
;            (= x!1 StateId!val!1)
;            (= x!2 Epoch!val!3)
;            (not (= x!2 Epoch!val!0))
;            (not (= x!2 Epoch!val!1))
;            (not (= x!2 Epoch!val!2))
;            (not (= x!3 Node!val!1)))))
;;;;;;;; Counter example model description end ;;;;;;;;
(assert (let ((a!1 (and (inv Model_46_ice S1 Node!val!0 Node!val!0)
                (inv Model_46_ice S1 Node!val!0 Node!val!1)
                (inv Model_46_ice S1 Node!val!1 Node!val!0)
                (inv Model_46_ice S1 Node!val!1 Node!val!1))))
  (or (not a!1)
      (and a!1
           (inv Model_46_ice S2 Node!val!0 Node!val!0)
           (inv Model_46_ice S2 Node!val!0 Node!val!1)
           (inv Model_46_ice S2 Node!val!1 Node!val!0)
           (inv Model_46_ice S2 Node!val!1 Node!val!1)))))



;(declare-fun Model_DUMMYMODEL () ModelId)
;(declare-fun DUMMYSTATE () StateId)
(declare-fun N1 () Node)
(declare-fun N2 () Node)

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
(assert (forall ((n1 Node) (e1 Epoch))
  (or (not (locked Model_DUMMYMODEL DUMMYSTATE e1 n1))
      (transfer Model_DUMMYMODEL DUMMYSTATE e1 n1))))
(assert (forall ((n1 Node) (e1 Epoch))
  (or (not (locked Model_DUMMYMODEL DUMMYSTATE e1 n1))
      (transfer Model_DUMMYMODEL
                DUMMYSTATE
                (ep Model_DUMMYMODEL DUMMYSTATE n1)
                n1))))

(assert (not (inv Model_DUMMYMODEL DUMMYSTATE N1 N2)))


        (check-sat)
(get-value (inv_b0 inv_b1 inv_b2 inv_b3 inv_b4 inv_b5 inv_b6 inv_b7 inv_b8 inv_b9 inv_b10 inv_b11 inv_b12 inv_b13 inv_b14 inv_b15 inv_b16 inv_b17 inv_b18 inv_b19 inv_b20 inv_b21 inv_b22 inv_b23 inv_b24 inv_b25 inv_b26 inv_b27 inv_b28 inv_b29 inv_b30 inv_b31 inv_b32 inv_b33 inv_b34 inv_b35 inv_b36 inv_b37 inv_b38 inv_b39 inv_b40 inv_b41 inv_b42 inv_b43 inv_b44 inv_b45 inv_b46 inv_b47 inv_b48 inv_b49 inv_b50 inv_b51 inv_b52 inv_b53 inv_b54 inv_b55 inv_b56 inv_b57 inv_b58 inv_b59 inv_b60 inv_b61 inv_b62 inv_b63 inv_b64 inv_b65 inv_b66 inv_b67 inv_b68 inv_b69 inv_b70 inv_b71 inv_b72 inv_b73 inv_b74 inv_b75 inv_b76 inv_b77 inv_b78 inv_b79 inv_b80 inv_b81 inv_b82 inv_b83 inv_b84 inv_b85 inv_b86 inv_b87 inv_b88 inv_b89 inv_b90 inv_b91 inv_b92 inv_b93 inv_b94 inv_b95 inv_b96 inv_b97 inv_b98 inv_b99 inv_b100 inv_b101 inv_b102 inv_b103 inv_b104 inv_b105 inv_b106 inv_b107 inv_b108 inv_b109 inv_b110 inv_b111 inv_b112 inv_b113 inv_b114 inv_b115 inv_b116 inv_b117 inv_b118 inv_b119 inv_b120 inv_b121 inv_b122 inv_b123 inv_b124 inv_b125 inv_b126 inv_b127 inv_b128 inv_b129 inv_b130 inv_b131 inv_b132 inv_b133 inv_b134 inv_b135 inv_b136 inv_b137 inv_b138 inv_b139 inv_b140 inv_b141 inv_b142 inv_b143 inv_b144 inv_b145 inv_b146 inv_b147 inv_b148 inv_b149 inv_b150 inv_b151 inv_b152 inv_b153 inv_b154 inv_b155 inv_b156 inv_b157 inv_b158 inv_b159 inv_b160 inv_b161 inv_b162 inv_b163 inv_b164 inv_b165 inv_b166 inv_b167 inv_b168 inv_b169 inv_b170 inv_b171 inv_b172 inv_b173 inv_b174 inv_b175 inv_b176 inv_b177 inv_b178 inv_b179 inv_b180 inv_b181 inv_b182 inv_b183 inv_b184 inv_b185 inv_b186 inv_b187 inv_b188 inv_b189 inv_b190 inv_b191 inv_b192 inv_b193 inv_b194 inv_b195 inv_b196 inv_b197 inv_b198 inv_b199 inv_b200 inv_b201 inv_b202 inv_b203 inv_b204 inv_b205 inv_b206 inv_b207 inv_b208 inv_b209 inv_b210 inv_b211 inv_b212 inv_b213 inv_b214 inv_b215 inv_b216 inv_b217 inv_b218 inv_b219 inv_b220 inv_b221 inv_b222 inv_b223 inv_b224 inv_b225 inv_b226 inv_b227 inv_b228 inv_b229 inv_b230 inv_b231 inv_b232 inv_b233 inv_b234 inv_b235 inv_b236 inv_b237 inv_b238 inv_b239 inv_b240 inv_b241 inv_b242 inv_b243 inv_b244 inv_b245 inv_b246 inv_b247 inv_b248 inv_b249 inv_b250 inv_b251 inv_b252 inv_b253 inv_b254 inv_b255 inv_b256 inv_b257 inv_b258 inv_b259 inv_b260 inv_b261 inv_b262 inv_b263 inv_b264 inv_b265 inv_b266 inv_b267 inv_b268 inv_b269 inv_b270 inv_b271 inv_b272 inv_b273 inv_b274 inv_b275 inv_b276 inv_b277 inv_b278 inv_b279 inv_b280 inv_b281 inv_b282 inv_b283 inv_b284 inv_b285 inv_b286 inv_b287 inv_b288 inv_b289 inv_b290 inv_b291 inv_b292 inv_b293 inv_b294 inv_b295 inv_b296 inv_b297 inv_b298 inv_b299 inv_b300 inv_b301 inv_b302 inv_b303 inv_b304 inv_b305 inv_b306 inv_b307 inv_b308 inv_b309 inv_b310 inv_b311 inv_b312 inv_b313 inv_b314 inv_b315 inv_b316 inv_b317 inv_b318 inv_b319 inv_b320 inv_b321 inv_b322 inv_b323 inv_b324 inv_b325 inv_b326 inv_b327 inv_b328 inv_b329 inv_b330 inv_b331 inv_b332 inv_b333 inv_b334 inv_b335 inv_b336 inv_b337 inv_b338 inv_b339 inv_b340 inv_b341 inv_b342 inv_b343 inv_b344 inv_b345 inv_b346 inv_b347 inv_b348 inv_b349 inv_b350 inv_b351 inv_b352 inv_b353 inv_b354 inv_b355 inv_b356 inv_b357 inv_b358 inv_b359 inv_b360 inv_b361 inv_b362 inv_b363 inv_b364 inv_b365 inv_b366 inv_b367 inv_b368 inv_b369 inv_b370 inv_b371 inv_b372 inv_b373 inv_b374 inv_b375 inv_b376 inv_b377 inv_b378 inv_b379 inv_b380 inv_b381 inv_b382 inv_b383 inv_b384 inv_b385 inv_b386 inv_b387))