#lang sicp


;(operator operand1 operand2 ...) this is what we want to pass. rather the arguement
(+ 3 4)

(* 3 4)

;Nested Expression
(+ 5 (* 2 2))

;Simple Definitions
(define foo 3)

;Simple Functions
(define (square x) (* x x))

;Simple Flow Control
(define (abs x) (if (< x 0) (- x) (x)))

;simple data structure
(list 9 3 5)

;weird recursion
(define (sum vs) (if (= 1 (length vs)) (car vs) (+ (car vs) (sum (cdr vs)))))

(define (getPositiveOddValues lst)
  (if (null? lst)
      ;; If the list is empty, return an empty list
      '()
      ;; Otherwise, process the first element and recursively process the rest
      (let ((head (car lst))
            (tail (cdr lst)))
        (if (and (> head 0) (odd? head))
            ;; Include it in the result if it is
            (cons head (getPositiveOddValues tail))
            ;; Otherwise, skip it and continue with the rest of the list
            (getPositiveOddValues tail)))))