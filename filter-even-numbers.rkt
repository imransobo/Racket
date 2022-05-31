#lang racket


(define (filter f xs)
  (if (null? xs)
      null
      (if (f (car xs))
          (cons (car xs) (filter f (cdr xs)))
          (filter f (cdr xs)))))
(define (paran x)
  (= 0 (modulo x 2)))

;(filter paran (list 1 2 3 4 5 6))