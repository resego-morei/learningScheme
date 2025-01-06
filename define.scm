#lang sicp

;(let ((var1 value1)(var2 value2) (...)) (body))

(let ((x 2) (y 3) (i 4)) (+ x y i))

;(if (cond) (true statement) (false statement))

(define x 9)

(if (even? x) (+ x 1) (- x 1))

;combination of the two
(let ((x 4) (y 10)) (if (= x y) (+ x y) (- y x)))

;(cond ((condition) (true statement)) ((condition) (true statement)) (... ...))
(define (getPositiveOddValues li)
  (cond
    ((null? li) '())
    (else
     (let ((head (car li)) (tail (cdr li))) (cond
                                              ((and (> head 0) (odd? head)) (cons head (getPositiveOddValues tail)))
                                              (else (getPositiveOddValues tail)))))
    )
  )