;; Exercise 1.7
;;
;; Consider the following procedure:
;;
;; (define (good-enough? guess x)
;;   (< (abs (- (square guess) x)) 0.001))
;;
;; This test is adequate for medium sized numbers but breaks down for
;; very large or very small values of x. For example, computing (sqrt 0.0001)
;; yields 0.03230844833048122 instead of the expected 0.01. Similarly machine
;; precision is unable to represent small differences between very large numbers.
;;
;; Instead, a more accurate way of determining if a guess is good enough would
;; watch how guess changes from one iteration to the next and stop when the 
;; difference reaches the determined threshold.

(define (good-enough? guess x)
  (< (abs (- (improve guess x) guess))
     (* guess 0.001)))
