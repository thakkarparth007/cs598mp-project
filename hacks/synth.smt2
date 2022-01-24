
(set-logic ALL)

(declare-sort Node)
(declare-sort Epoch)

;; universe for Epoch:
;;   Epoch!val!3 Epoch!val!4 Epoch!val!2 Epoch!val!1 Epoch!val!0 
;; -----------
;; definitions for universe elements:
(declare-fun Epoch!val!3 () Epoch)
(declare-fun Epoch!val!4 () Epoch)
(declare-fun Epoch!val!2 () Epoch)
(declare-fun Epoch!val!1 () Epoch)
(declare-fun Epoch!val!0 () Epoch)
;; cardinality constraint: - not having here

;; -----------
;; universe for Node:
;;   Node!val!0 
;; -----------
;; definitions for universe elements:
(declare-fun Node!val!0 () Node)
;; cardinality constraint: - not having here

(declare-fun held (Node) Bool)
(declare-fun locked (Epoch Node) Bool)
(declare-fun transfer (Epoch Node) Bool)
(declare-fun ep (Node) Epoch)
(declare-fun le (Epoch Epoch) Bool)

;;(synth-fun inv ((e1 Epoch) (e2 Epoch)) Bool
(synth-fun inv ((n1 Node) (e1 Epoch)) Bool
    
    ;; Declare the non-terminals that would be used in the grammar
    ((Start Bool) (Atom Bool) (Node_ Node) (Epoch_ Epoch))

    ;; Define the grammar for allowed implementations of max2
    (
        (Start Bool 
               (
                (and Atom Atom)
                (or Atom Atom)
                (=> Atom Atom)
                (not Atom)
               )
        )

        (Atom Bool 
               (
                (held Node_)
                (locked Epoch_ Node_)
                (transfer Epoch_ Node_)
                (le Epoch_ Epoch_)
               )
        )

        (Node_ Node
            (
                n1
            )
        )

        (Epoch_ Epoch
            (
                e1
                ;; e2
                (ep Node_)
            )
        )
     
    )
)

(constraint (let ((a!1 (not (and (or (inv Node!val!0 Epoch!val!3)
                         (inv Node!val!0 Epoch!val!2)
                         (inv Node!val!0 Epoch!val!1)
                         (inv Node!val!0 Epoch!val!0))))))
  (=> (and (= (ep Node!val!0) Epoch!val!3)
           (= (locked Epoch!val!3 Node!val!0) false)
           (= (locked Epoch!val!2 Node!val!0) false)
           (= (locked Epoch!val!1 Node!val!0) false)
           (= (locked Epoch!val!0 Node!val!0) false)
           (= (held Node!val!0) true)
           (= (transfer Epoch!val!3 Node!val!0) false)
           (= (transfer Epoch!val!2 Node!val!0) false)
           (= (transfer Epoch!val!1 Node!val!0) false)
           (= (transfer Epoch!val!0 Node!val!0) true))
      a!1)))

(check-synth)
