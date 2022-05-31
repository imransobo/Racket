#lang racket

;Zadatak 

;Napisati funkciju koja prihvata dva niza,
;te vraća uređeni par koji sadrži najveći
;element prvog i najveći element drugog niza.

(define (najveci xs)
  (cond
    [(null? (cdr xs)) (car xs)]
    [else (max (car xs) (najveci (cdr xs)))]))

(define (z4 xs ys)
  (if (empty? xs)
      ys
      (cons (najveci xs) (najveci ys))))

(z4 '(5 6 6 8) '(2 3 9))