;; Exercise 1.11

;; Recursive function where f(n) = n if n < 3 or
;; f(n) = f(n-1) + 2f(n-2) + 3f(n-3) if n >= 3.
(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1)) 
         (* 2 (f (- n 2)))
         (* 3 (f (- n 3))))))

;; Iterative version
(define (f2 n)
  (define (f-iter a b c n)
    (if (= n 0)
        a
        (f-iter b c (+ c (* 2 b) (* 3 a)) (- n 1))))
  (f-iter 0 1 2 n))
