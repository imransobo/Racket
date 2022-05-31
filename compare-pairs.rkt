#lang racket


; Napisati funkciju koja prihvata dva para cijelih brojeva.
; Ukoliko su parovi jednaki, funkcija vraća -1.
; Ukoliko je suma elemenata prvog para veća od sume elemenata drugog para,
; funkcija vraća 1. Ukoliko je suma elemenata prvog para manja od sume
; elemenata drugog para, funkcija vraća 2.
; Ukoliko su sume jednake, funkcija vraća 0.


(define (sumFirst p1)
  (+ (car p1) (cdr p1)))

(define (sumSecond p2)
  (+ (car p2) (cdr p2)))

(define (equalPairs p1 p2)
  (cond
    [(= (car p1) (car p2)) (and (= (cdr p1) (cdr p2))) -1]))
       
(define (z2 p1 p2)
  (cond
    [(= (car p1) (car p2)) (and (= (cdr p1) (cdr p2))) -1]
    [(> (sumFirst p1) (sumSecond p2)) 1]
    [(< (sumFirst p1) (sumSecond p2)) 2]
    [(= (sumFirst p1) (sumSecond p2)) 0]))

(z2 (cons 2 3) (cons 4 5))