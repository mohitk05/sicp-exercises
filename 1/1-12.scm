;Pascal's triangle
;f(row, col) = val
;f(x, y) = f(x-1, y-1) + f(x-1, y)

(define (pascal x y) (
    cond ((or (< y 1) (> y (+ x 1))) 0)
    ((or (= y 1) (= y (+ x 1))) 1) 
    (else (+ (pascal (- x 1) (- y 1)) (pascal (- x 1) y)))
))

(pascal 5 3)