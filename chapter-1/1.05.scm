;; Exercise 1.5

;; (define (p) (p))
;;
;; (define (test x y)
;;   (if (= x 0)
;;    0
;;    y))
;;
;; (test 0 (p))
;;
;; Applicative-Order Evaluation:
;;
;; We start at the leaf node (p). Since p returns a call to itself we
;; enter an infinite loop of p calling p. test is never executed and the 
;; program never terminates.
;;
;; Normative-Order Evaluation:
;;
;; Starting at the root node we expand (test 0 (p)) to (if (= 0 0) 0 (p)).
;; Since the predicate returns true the consequent is evaluated returning
;; 0 and terminating execution.
