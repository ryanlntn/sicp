;; Exercise 1.6
;;
;; Because new-if is not a special form it is evaluated in applicative order
;; resulting in the recursive else clause being evaluated regardless of the
;; truthiness of the predicate. This infinite recursion is caught as a runtime
;; error (maximum recursion depth reached!). 
