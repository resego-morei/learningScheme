#lang sicp

(let ((circleCircumference (lambda (c)
                             ;body of lambda
                             (let ((pi 3.14))
                               ;body of inner let
                               (cond
                                 ((negative? c) 0)
                                 (else
                                  (* 2 pi c)
                                  )
                                 )
                               ))))

  ;outer let body
  (circleCircumference 3)
  )

(define (getNegative li)
  (cond
    ((null? li) '())
    (else
     (let ((head (car li)) (tail (cdr li)))
       ;body of let
       (cond
         ((and (< head 0) (negative? head)) (cons head (getNegative tail)))
         (else
          (getNegative tail)
          )
         )
       )
     )
    )
  )