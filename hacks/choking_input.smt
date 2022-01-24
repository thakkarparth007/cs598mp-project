(set-logic ALL)

(declare-sort Epoch 0)
(declare-sort Node 0)
(declare-fun post.transfer (Epoch Node) Bool)
(declare-fun post.locked (Epoch Node) Bool)
(declare-fun le (Epoch Epoch) Bool)
(declare-fun post.ep (Node) Epoch)
(declare-fun post.held (Node) Bool)
(declare-fun pre.ep (Node) Epoch)
(declare-fun pre.held (Node) Bool)
(declare-fun pre.transfer (Epoch Node) Bool)
(declare-fun pre.locked (Epoch Node) Bool)
(declare-fun zero () Epoch)
(declare-fun one () Epoch)
(assert (let ((a!1 (forall ((e1 Epoch) (e2 Epoch) (e3 Epoch))
             (and (le e1 e1)
                  (=> (and (le e1 e2) (le e2 e3)) (le e1 e3))
                  (=> (and (le e1 e2) (le e2 e1)) (= e1 e2))
                  (or (le e1 e2) (le e2 e1))
                  (le zero e1)
                  (distinct one zero))))
      (a!2 (forall ((E2 Epoch) (N1 Node) (E1 Epoch))
             (let ((a!1 (or (le E1 (pre.ep N1)) (not (le E2 (pre.ep N1))))))
               (=> (and (le E1 E2) (distinct E1 E2)) a!1))))
      (a!3 (forall ((E2 Epoch) (N1 Node) (E1 Epoch))
             (=> (and (le E1 E2) (distinct E1 E2))
                 (or (pre.locked E1 N1)
                     (not (pre.transfer E1 N1))
                     (not (pre.transfer E2 N1))))))
      (a!4 (forall ((n1 Node) (n2 Node) (e Epoch))
             (let ((a!1 (and (pre.held n1) (not (le e (pre.ep n1))))))
               (=> a!1 (and (post.transfer e n2) (= (post.held n1) false))))))
      (a!5 (forall ((E2 Epoch) (N1 Node) (E1 Epoch))
             (let ((a!1 (or (le E1 (post.ep N1)) (not (le E2 (post.ep N1))))))
               (=> (and (le E1 E2) (distinct E1 E2)) a!1))))
      (a!6 (forall ((E2 Epoch) (N1 Node) (E1 Epoch))
             (=> (and (le E1 E2) (distinct E1 E2))
                 (or (post.locked E1 N1)
                     (not (post.transfer E1 N1))
                     (not (post.transfer E2 N1)))))))
  (and a!1 a!2 a!3 a!4 (not (and a!5 a!6)))))

(check-sat)