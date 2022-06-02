#lang racket

;Zadatak 

;Napisati funkciju koja prihvata dvije liste a i b prirodnih brojeva. Liste su iste dužine. 
;Funkcija vraća novu listu koja se dobije tako što svaki element ai ponovimo bi puta unutar rezultujuće liste, za svako i. 
;Npr. ukoliko su date liste [1, 2, 3] i [2, 4, 3], funkcija vraća listu [1, 1, 2, 2, 2, 2, 3, 3, 3], gdje je broj 1 ponovljen 2 puta, broj 2 je ponovljen 4 puta i broj 3 je ponovljen 3 puta.


(define (dupl xs ys)
  (if (empty? ys)
      xs
      (cons (make-list (car ys) (car xs)) (dupl (cdr xs) (cdr ys)))))

(dupl '(1 2 3) '(2 4 3))