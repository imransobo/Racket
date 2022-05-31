#lang racket
; Zadatak
; Napisati funkciju koja prihvata prirodan broj n,
; te vraća vrijednost najmanje parne cifre broja.
; Ukoliko broj ne sadrži parnu cifru (0, 2, 4, 6 ili 8), program vraća grešku.

(define (min-element x y) (if (< x y) x y))

(define (min-list ls)
    (if (null? (cdr ls))
        (car ls)
        (min-element (car ls) (min-list (cdr ls)))))

;Pretvara broj u listu
(define (number->list num)
  (map (lambda (c) (- (char->integer c) (char->integer #\0)))
       (string->list
        (number->string num))))

;Filtrira parne brojeve liste
(define (filter f xs)
  (if (null? xs)
      null
      (if (f (car xs))
          (cons (car xs) (filter f (cdr xs)))
          (filter f (cdr xs)))))

(define (paran x)
  (= 0 (modulo x 2)))

(define (rezultat n)
  (min-list (sort (filter paran (number->list n)) < )))

(rezultat 246)