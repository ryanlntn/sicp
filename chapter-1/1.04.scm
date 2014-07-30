;; Exercise 1.4

(define (a-plus-abs-b a b) ;; Define the procedure a-plus-abs-b which
                           ;; takes two arguments: a and b.

  ((if (> b 0) + -) a b))  ;; If b is greater than 0 return the + operator
                           ;; otherwise return the - operator. Then apply
                           ;; the returned operator to a and b.
