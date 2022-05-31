#lang racket


;Funkcija koja prihvata dvije liste i vraca zbir elemenata liste sa
; manjim posljednjim elementom

(define (manji xs ys)
  (if (empty? xs)
      ys
      (if (< (car (reverse xs)) (car (reverse ys)))
          xs
          ys)))

(define (z-suma xs)
  (if (empty? xs)
      0
      (+ (car xs) (z-suma (cdr xs)))))

(define (rez xs ys)
  (z-suma (manji xs ys)))

(rez '(1 2 3) '(2 3 4))