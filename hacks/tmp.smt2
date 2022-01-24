(declare-sort Epoch 0)
(declare-sort Node 0)
(declare-fun init.locked (Epoch Node) Bool)
(declare-fun init.transfer (Epoch Node) Bool)
(declare-fun one () Epoch)
(declare-fun init.ep (Node) Epoch)
(declare-fun first () Node)
(declare-fun zero () Epoch)
(declare-fun init.held (Node) Bool)
(declare-fun le (Epoch Epoch) Bool)
(declare-fun pre.ep (Node) Epoch)
(declare-fun post.ep (Node) Epoch)
(declare-fun pre.locked (Epoch Node) Bool)
(declare-fun post.locked (Epoch Node) Bool)
(declare-fun pre.held (Node) Bool)
(declare-fun post.held (Node) Bool)
(declare-fun pre.transfer (Epoch Node) Bool)
(declare-fun post.transfer (Epoch Node) Bool)
(define-funs-rec ( ( inv ((x!1 Node) (x!2 Epoch)) Bool))
                 ( (=> (post.locked x!2 x!1) (post.transfer x!2 x!1))))
(assert (forall ((n Node) (e Epoch))
  (and (= (init.held n) (= n first))
       (=> (distinct n first) (= (init.ep n) zero))
       (= (init.ep first) one)
       (= (init.transfer e n) false)
       (= (init.locked e n) false))))
(assert (forall ((e1 Epoch) (e2 Epoch) (e3 Epoch))
  (and (le e1 e1)
       (=> (and (le e1 e2) (le e2 e3)) (le e1 e3))
       (=> (and (le e1 e2) (le e2 e1)) (= e1 e2))
       (or (le e1 e2) (le e2 e1))
       (le zero e1)
       (distinct one zero))))
(assert (forall ((n1 Node) (n2 Node) (e Epoch))
  (let ((a!1 (and (pre.held n1) (not (le e (pre.ep n1)))))
        (a!2 (forall ((EE Epoch) (NN Node))
               (= (post.transfer EE NN)
                  (ite (and (= EE e) (= NN n2)) true (pre.transfer EE NN)))))
        (a!3 (forall ((NN Node))
               (= (post.held NN) (ite (= NN n1) false (pre.held NN))))))
  (let ((a!4 (and a!2
                  a!3
                  (forall ((EE Epoch) (NN Node))
                    (= (post.locked EE NN) (pre.locked EE NN)))
                  (forall ((NN Node)) (= (post.ep NN) (pre.ep NN))))))
    (=> a!1 a!4)))))
(assert (forall ((n Node) (e Epoch))
  (let ((a!1 (and (pre.transfer e n) (not (le e (pre.ep n)))))
        (a!2 (forall ((NN Node))
               (= (post.held NN) (ite (= n NN) true (pre.held NN)))))
        (a!3 (forall ((NN Node)) (= (post.ep NN) (ite (= n NN) e (pre.ep NN)))))
        (a!4 (forall ((EE Epoch) (NN Node))
               (= (post.locked EE NN)
                  (ite (and (= EE e) (= NN n)) true (pre.locked EE NN))))))
  (let ((a!5 (and a!2
                  a!3
                  a!4
                  (forall ((EE Epoch) (NN Node))
                    (= (post.transfer EE NN) (pre.transfer EE NN))))))
    (=> a!1 a!5)))))
(assert (let ((a!1 (exists ((n1 Node) (n2 Node) (e Epoch))
             (and (pre.held n1) (not (le e (pre.ep n1))))))
      (a!2 (exists ((n Node) (e Epoch))
             (and (pre.transfer e n) (not (le e (pre.ep n)))))))
  (or a!1 a!2)))

(check-sat)