#lang racket

;Zadatak 

;Neka je sa d(n) označen zbir svih prirodnih djelilaca broja n manjih od n. 
;Ukoliko je d(a)=b i d(b)=a, kažemo da su brojevi blizanci. 
;Npr. d(220)=1+2+4+5+10+11+20+22+44+55+110=284, te d(284)=1+2+4+71+142=220, pa su brojevi 220 i 284 blizanci. 
;Napisati funkciju koja za dva proslijeđena broja provjerava da li su blizanciili ne.


(define (suma-djelilaca n i)
  (if (= 1 i)
      1
      (if (= (remainder n i) 0)
          (+ i (suma-djelilaca n (- i 1)))
       (suma-djelilaca n (- i 1)))))


(define (zadatak n)
  (suma-djelilaca n (- n 1)))

(define (rez x y)
  (if (= x 0)
      y
      (if (= y 0)
          x
          (if (= (zadatak x) y)
              (print "Blizanci su")
          (print "Nisu blizanci")))))

(zadatak 220) ;; => 22
(rez 220 284)