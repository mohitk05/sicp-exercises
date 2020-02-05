; Since new-if is a function, the arguments are evaluated first, one of which has new-if itself, causing an infinite loop.

(define (new-if predicate yes no) (cond (predicate yes) (else no)))

(define (average a b) (/ (+ a b) 2))

(define (square x) (* x x))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

(sqrt-iter 1 9)