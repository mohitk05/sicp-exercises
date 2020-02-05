(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

;This causes an infinite loop with applicative-order evaluation as the arguments are evaluated first.
; (p) => (p) => (p) .... so on.

;In case of normal-order eval, test is replaced with if that resolves to true, hence (p) is never reached.