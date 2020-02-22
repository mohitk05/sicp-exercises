;A function f is defined by the rule that f(n) = n if n<3 and f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n> 3. Write a procedure that computes f by means of a recursive process. Write a procedure that computes f by means of an iterative process.

;recursive
(define (f n) 
    (if (< n 3) n
        (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))
    )
)

(f 4)

;iterative
;n = 3 -> f(n) = f(2) + 2f(1) + 3f(0)
;n = 5 -> f(4) + 2f(3) + 3f(2) -> f(3) + 2f(2) + 3f(3) + 2f(3) + 3f(2) -> 6f(3) + 5f(2) -> 6(f(2) + 2f(1) + 3f(0)) + 5f(2) -> 11f(2) + 12f(1) + 18f(0)