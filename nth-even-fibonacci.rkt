#lang racket


; Funkcija koja vraca n-ti Fibonnacijev parni broj

(define (nthEvenFibonacci n)
  (if (< n 1)
      n
      (if (= n 1)
          2
          (+ (* 4 (nthEvenFibonacci (- n 1))) (nthEvenFibonacci (- n 2))))))

(nthEvenFibonacci 3)