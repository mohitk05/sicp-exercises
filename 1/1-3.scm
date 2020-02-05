;Exercise 1.3.  Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers.

(define (sum_sqr a b) (+ (* a a) (* b b)))
(define (f x y z) (if (> x y) (sum_sqr x (if (> z y) z y)) (sum_sqr y (if (> z x) z x))))

(f 10 2 3)