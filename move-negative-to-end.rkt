#lang racket

;Zadatak.
;Napisati funkciju koja prihvata listu brojeva. Funkcija modifikuje listu, tako što sve negativne brojeve pomjera
;na kraj liste u istom poretku u kojem su se nalazili u originalnoj listi, a ostale elemente sortira po veličini i
;smješta na početak liste. Npr. ukoliko je dat vektor [-1, -5, 0, 9, 4, 0, 0, 3, 5, 9], nakon poziva funkcije, vektor
;postaje [0, 0, 0, 3, 4, 5, 9, 9, -1, -5]. Zadatak riješiti u programskom jeziku Racket.

(define (get-neg xs)
  (if (empty? xs)
      null
      (if (< (car xs) 0)
          (cons (car xs) (get-neg (cdr xs)))
      (get-neg (cdr xs)))))


(define (get-pos xs)
  (if (empty? xs)
      null
      (if (>= (car xs) 0)
          (cons (car xs) (get-pos (cdr xs)))
          (get-pos (cdr xs)))))


(define (my-append xs ys)
  (if (empty? xs)
      ys
      (cons (car xs) (my-append (cdr xs) ys))))

(define (rezultat xs)
  (my-append (sort(get-pos xs)<) (get-neg xs)))


(rezultat '(-1 -5 -3 0 9 4 0 0 3 5 9))

