;The good-enough? test used in computing square roots will not be very effective for finding the square roots of very small numbers. Also, in real computers, arithmetic operations are almost always performed with limited precision. This makes our test inadequate for very large numbers. Explain these statements, with examples showing how the test fails for small and large numbers. An alternative strategy for implementing good-enough? is to watch how guess changes from one iteration to the next and to stop when the change is a very small fraction of the guess. Design a square-root procedure that uses this kind of end test. Does this work better for small and large numbers?

; (define (new-if predicate yes no) (cond (predicate yes) (else no)))

(define (average a b) (/ (+ a b) 2))

(define (square x) (* x x))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? prev-guess guess x)
  (< (/ (abs (- prev-guess guess)) x) 0.000000000001))

(define (sqrt-iter prev-guess guess x)
  (if (good-enough? prev-guess guess x)
          guess
          (sqrt-iter guess (improve guess x)
                     x)))

(define (sqrt-iter-init guess x) (sqrt-iter guess (improve guess x) x))

(sqrt-iter-init 1.0 10000000000000000)