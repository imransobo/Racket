#lang racket


; Funkcija prihvata broj n  i listu brojeva, vraća novu listu brojeva koji nisu djeljivi bez ostatka sa n.


(define (zadatak n xs)
  (if (empty? xs)
      null
      (if (= (modulo (car xs) n) 0)
          (zadatak n (cdr xs))
      (cons (car xs) (zadatak n (cdr xs))))))

(zadatak 3 '(1 2 3 4 5 6 7 8 9))