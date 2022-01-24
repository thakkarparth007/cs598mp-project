(declare-sort Node)
(declare-sort Epoch)

(declare-fun held (Node) Bool)

(define-fun inv ((n1 Node) (e1 Epoch)) Bool (=> (held n1) (held n1)))

(declare-fun N1 () Node)
(declare-fun E1 () Epoch)

(assert (distinct (inv N1 E1) true))

(check-sat)