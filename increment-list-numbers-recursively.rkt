#lang racket


(define (map f xs)
  (if (null? xs)
      null
      (cons (f (car xs)) (map f (cdr xs)))))
(define (increment x)
  (+ x 1))

(map increment (list 1 2 3))