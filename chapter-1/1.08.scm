;; Exercise 1.8

(define (cube-root x)
  (cube-iter 1.0 x))

(define (cube-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-iter (improve guess x) x)))

(define (good-enough? guess x)
  (< (abs (- (improve guess x) guess))
     (* guess 0.001)))

;; Improve using Newton's method for cube roots
(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess))
     3))

(define (square x)
  (* x x))

