#lang sicp

(define (getNegativeEvenValues li)
  (cond
    ((null? li) '())
    (else
     (let ((head (car li))(tail (cdr li)))
       (cond
         ((and (< head 0) (negative? head)) (cons head (getNegativeEvenValues tail)))
         (else
          (getNegativeEvenValues tail)
          )
         )
       )
     )
    )
  )