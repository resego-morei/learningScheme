#lang sicp

;Extract Values Greater Than a Given Number

(define (getValuesGreaterThan x li)
  (cond
    ((null? li) '())
    (else
     (let ((head (car li))(tail (cdr li)))
       (cond
         ((< x head) (cons head (getValuesGreaterThan x tail)))
         (else
          (getValuesGreaterThan x tail)
          )
         )
       )
     )
    )
  )