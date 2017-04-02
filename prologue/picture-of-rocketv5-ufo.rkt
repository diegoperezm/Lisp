;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname picture-of-rocketv5-ufo) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)
(require 2htdp/universe)

; constants
(define WIDTH 100 )
(define HEIGHT 60 )
(define MTSCN (empty-scene WIDTH HEIGHT))


(define UFO
  (overlay (circle 10 "solid" "green")
         (rectangle 40 4 "solid" "green"))
  )

(define UFO-CENTER-TO-TOP
  (- HEIGHT (/ (image-height UFO) 2))) 
  

; functions
(define (picture-of-ufo h) 
  (cond
    [(<= h UFO-CENTER-TO-TOP)
     (place-image UFO 50 h MTSCN)]
    [(> h UFO-CENTER-TO-TOP) 
     (place-image UFO 50 UFO-CENTER-TO-TOP MTSCN)]))

(animate picture-of-ufo)
