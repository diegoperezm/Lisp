;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname conditional_expression) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)
(require 2htdp/universe)

(define (sign x)
  (cond 
   [(> x 0) 1]
   [(= x 0) 0]
   [(< x 0) -1]))


(sign 10)
(sign -5)
(sign 0)
