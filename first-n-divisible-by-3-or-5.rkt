#lang racket

;Zadatak 5

;Napisati funkciju koja prihvata broj n,
;te vraća niz sačinjen od prvih n prirodnih brojeva
;djeljivih sa 3 ili sa 5, ali ne i sa 3 i sa 5. 
;Npr. broj 15 se ne može nalaziti u listi,
;dok se brojevi 9 ili 25 mogu nalaziti u listi.

(define (djeljiv n)
  (cond
    [(= 0 n) 0]
    [(= 0 (modulo n 3)) (or (= 0 (modulo n 5))) true]
    [else false]))
    
(define (prvih-n f n)
  (if (= n 0)
      null
      (if (f n)
          (cons n (prvih-n f (- n 1)))
      (prvih-n f (- n 1)))))
      
(prvih-n djeljiv 9)
