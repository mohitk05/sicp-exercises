;factorial of a number

;factorial of n = product of numbers from 1 to n

(define (factorial n)
    (define (multiply-next prod x) (if (= x n) (* prod n) (multiply-next (* prod x) (+ 1 x))))
    (multiply-next 1 1)
)

(factorial 5)


(define (f n) (if (= n 1) 1 (* n (f (- n 1)))))

(f 5)