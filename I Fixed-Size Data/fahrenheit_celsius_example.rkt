;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname fahrenheit_celsius_example) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/batch-io)

(define (C f)
  (* 5/9 (- f 32)))


(define (convert in out)
  (write-file out
     (string-append
      (number->string
       (C
        (string->number
          (read-file in))))
      "\n")))
         
(write-file "sample.dat" "212")

(convert "sample.dat" 'stdout)

(convert "sample.dat" "out.dat")


(read-file "out.dat")

