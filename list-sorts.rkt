#lang racket



(define (max-val1 xs)
  (cond
    [(null? (cdr xs)) (car xs)]
    [else (max (car xs) (max-val1 (cdr xs)))]))


(define (max-val2 xs)
  (cond
    [(null? (cdr xs)) (car xs)]
    [(> (car xs) (max-val2 (cdr xs))) (car xs)]
    [else (max-val2 (cdr xs))]))

(define (max-val3 xs)
  (cond
    [(empty? (cdr xs)) (car xs)]
    [else (max (car xs) (max-val3 (cdr xs)))]))

;(max-val3  '(1 2 3 100))


(define (max-val4 xs)
  (local
    [(define max-rest (cond[(empty? (cdr xs)) (car xs)]
                           [else (max-val4 (cdr xs))]))]
    (cond
      [(empty? (cdr xs)) (car xs)]
      [(> (car xs) max-rest) (car xs)]
      [else max-rest])))

;(max-val4 '(1 23 202020 20203 23))