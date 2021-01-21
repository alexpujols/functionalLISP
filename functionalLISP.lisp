; __author__ = "Alex Pujols"
; __copyright__ = "Copyright 2020, functional LISP TIM-6110 wk3"
; __credits__ = ["Alex Pujols"]
; __license__ = "GPL"
; __version__ = "1.0.1"
; __maintainer__ = "Alex Pujols"
; __email__ = "alex.pujols@gmail.com"
; __status__ = "Prototype"

; Define functions

; Function that lists sub-strings
(defun split_sentence (string)
  (loop for i = 0 then (1+ j)
    as j = (position #\Space string :start i)
    collect (subseq string i j)
    while j))
; Function to rejoin strings
(defun join_sentence (string-list)
  (format nil "~{~A~^ ~}" string-list))
; Main code begins

; Write a short "Hello World" in LISP
(terpri)
(write-line "************ PART 1 ************")
(write-line "Hello World") ; greet the world
(terpri)
; Beginning of the converter
(write-line "************ PART 2 ************")
(defvar fahrenheit)
(write-line "Please enter the temperature that is to be converted to celsius: ")
(setq fahrenheit (read))
(terpri)
(defvar celsius)
(setq celsius ( * (- fahrenheit 32) (/ 5 9)))
(format t "You entered ~d and the equivilent in celsius is ~d" fahrenheit celsius)
(terpri)
(terpri)
; Beginning of the string manipulator
(write-line "************ PART 3 ************")
(defvar old_sentence)
(write-line "Please type the sentence to put through the reverser: ")
(setq old_sentence (read-line))
(defvar new_sentence)
(setf new_sentence (join_sentence ( nreverse ( split_sentence old_sentence))))
(format t "The reversed sentence is: ~s" new_sentence)
