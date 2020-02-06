;cube-roots

(define (average a b) (/ (+ a b) 2))

(define (square x) (* x x))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (good-enough? prev-guess guess x)
  (< (/ (abs (- prev-guess guess)) x) 0.000000000001))

(define (cbrt-iter prev-guess guess x)
  (if (good-enough? prev-guess guess x)
          guess
          (cbrt-iter guess (improve guess x)
                     x)))

(define (cbrt-iter-init guess x) (cbrt-iter guess (improve guess x) x))

(cbrt-iter-init 1.0 28)