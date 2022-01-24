;; universe for Epoch:
;;   Ep1 Ep0 Ep2 
;; -----------
;; definitions for universe elements:
(declare-fun Ep1 () Epoch)
(declare-fun Ep0 () Epoch)
(declare-fun Ep2 () Epoch)
;; cardinality constraint:
(forall ((x Epoch)) (or (= x Ep1) (= x Ep0) (= x Ep2)))
;; -----------
;; universe for Node:
;;   Node1 Node0 
;; -----------
;; definitions for universe elements:
(declare-fun Node1 () Node)
(declare-fun Node0 () Node)
;; cardinality constraint:
(forall ((x Node)) (or (= x Node1) (= x Node0)))
;; -----------
(define-fun zero () Epoch
  Ep0)
(define-fun one () Epoch
  Ep1)
(define-fun first () Node
  Node0)


;;;;;;;;;; INIT ;;;;;;;;;;

(define-fun init.held ((x0 Node)) Bool
  (= x0 Node0))
(define-fun init.locked ((x0 Epoch) (x1 Node)) Bool
  false)
(define-fun init.transfer ((x0 Epoch) (x1 Node)) Bool
  false)
(define-fun init.ep ((x0 Node)) Epoch
  (ite (= x0 Node0) Ep1
    Ep0))

;;;;;;;;;; PRE ;;;;;;;;;;
; This is completely nonsensical, because pre.held == False, which cannot be true.
; Not sure how z3 is coming up with this. To me it seems that the induction from init state isn't working.

(define-fun pre.ep ((x0 Node)) Epoch
  Ep1)
(define-fun pre.locked ((x0 Epoch) (x1 Node)) Bool
  false)
(define-fun pre.held ((x0 Node)) Bool
  false)
(define-fun pre.transfer ((x0 Epoch) (x1 Node)) Bool
  false)

;;;;;;;;;; POST ;;;;;;;;;;
; This seems like a bigger problem, because post.held == True, but pre.held == False. How is this possible?

(define-fun post.held ((x0 Node)) Bool
  true)
(define-fun post.ep ((x0 Node)) Epoch
  Ep1)
(define-fun post.locked ((x0 Epoch) (x1 Node)) Bool
  false)
(define-fun post.transfer ((x0 Epoch) (x1 Node)) Bool
  false)

;;;;;;;;;; LE ;;;;;;;;;;
(define-fun le ((x0 Epoch) (x1 Epoch)) Bool
  (or (and (= x0 Ep0)
           (not (= x1 Ep1))
           (not (= x1 Ep0)))
      (and (not (= x0 Ep1))
           (not (= x0 Ep0))
           (not (= x1 Ep1))
           (not (= x1 Ep0)))
      (and (= x0 Ep0) (= x1 Ep1) (not (= x1 Ep0)))
      (and (= x0 Ep1)
           (not (= x0 Ep0))
           (not (= x1 Ep1))
           (not (= x1 Ep0)))
      (and (= x0 Ep0) (= x1 Ep0))
      (and (= x0 Ep1)
           (not (= x0 Ep0))
           (= x1 Ep1)
           (not (= x1 Ep0)))))

