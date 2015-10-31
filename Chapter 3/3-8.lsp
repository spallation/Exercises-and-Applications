(in-package :cs325-user)

#|
(defun show-dots (l)
  (cond ((null l) (format t "NIL"))
        ((atom l) (format t "~A" l))
        (t 
         (format t "(~A . ~A)"
                 (show-dots (car l))
                 (show-dots (cdr l))))))
|#


(defun show-dots (l)
  (cond ((atom l) (format t "~A" l))
        (t 
         (format t "(")
         (show-dots (car l))
         (format t " . ")
         (show-dots (cdr l))
         (format t ")"))))

#|
(defun show-dots (l)
  (format t "~A" (list-to-string l)))

(defun list-to-string (l)
  (cond ((null l) nil)
        ((atom l) l)
        (t (format nil "(~A . ~A)"
                   (list-to-string (car l))
                   (list-to-string (cdr l))))))
|#