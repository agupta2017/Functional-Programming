#lang racket

;Problem 1
(define (tempConverter f) (* (- f 32) (/ 5 9)))
(tempConverter 212)
(tempConverter 73)

;Problem 2
(define (leapYear y)
  (cond
    [(= (remainder y 400) 0) true]
    [(= (remainder y 100) 0) false]
    [(= (remainder y 4) 0) true]
    [else false]))
(leapYear 2016)
(leapYear 2100)

;Problem 3
(define (countdown n)
   (cond
     [(<= n 0) "Blastoff"]
     [else (string-append (number->string n) " " (countdown (- n 1)))])
 )
(countdown 19)
(countdown 0)

;Problem 4
(define (summation n)
  (cond
    [(= n 0) 0]
    [else (+ n (summation (- n 1)))])
 )
(summation 3)
(summation 10)

;Problem 5
(define (num-digits n)
  (cond
    [(< n 10) 1]
    [else (+ 1 (num-digits (quotient n 10)))]))
(num-digits 123456789)
(num-digits 0)

;Problem 6
(define (create-list size)
  (cond
    [(= size 0) empty]
    [else (cons size (create-list (- size 1)))])
)
(create-list 8)
(create-list 0)

;Problem 7
(define (length l)
  (cond
    [(empty? l) 0]
    [else (+ 1 (length (rest l)))])
)
(length (list 1 2 3 4 5 6 7))
