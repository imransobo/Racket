#lang racket

;Zadatak 3. Napisati funkciju koja će za proslijeđenu listu
;vratiti najveći proizvod 3 uzastopna broja u listi.
;Za listu [1, 4, 3, 5, 2], funkcija bi vratila proizvod 60 (proizvod 4, 3 i 5).

(define (max-el xs)
  (cond [(empty? (cdr xs)) (car xs)]
        [else (max(car xs) (max-el(cdr xs)))]))

(define (proizvod-3 xs)
  (cond [(< (length xs) 3) '()]
        [else (cons (* (first xs)(second xs)(third xs)) (proizvod-3 (cdr xs)))]))

(define (zadatak3 xs) (max-el( proizvod-3 xs)))

;(max-el '(1 4 3 5 2))
(zadatak3 '(1 4 3 5 2))