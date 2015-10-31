(in-package :cs325-user)

#|
if atom print it
else print [
then print (car l)
loop printing " obj" until atom
then print " . obj" if not nil
then print ]
|#

(defun show-list (l)
  (cond ((atom l) (format t "~A" l))
        (t 
         (format t "[")
         (show-list (car l))
         (do ((lst (cdr l) (cdr lst)))
             ((atom lst) (unless (null lst) (format t " . ~A" lst)))
           (format t " ")
           (show-list (car lst)))
         (format t "]"))))

#|
(defun show-list (l)
  (cond ((atom l) (format t "~A" l))
        (t 
         (format t "[")
         (show-list (car l))
         (cond 
          ((and (consp (cdr l)) (consp (cadr l)))
           (format t " ")
           (show-list (cadr l)))
          (t 
           (do 
               ((lst (cdr l) (cdr lst)))
               ((atom lst) (unless (null lst)) 
                               (format t " . ~A" lst)))
             (format t " ~A" (car lst)))
         (format t "]")))))
|#

#|
(defun show-list (l)
  (if (atom l) 
      (format t "~A" l)
    (format t "[~A]" (list-to-string l))))

(defun list-to-string (l)
  (cond ((null l) nil)
        ((atom l) l)
        ((atom (car l))
         (format nil "~A" (print-in-list l)))
        ((null (cdr l))
         (format nil "~A~A~A"
                   (format nil "[")
                   (format nil "~A"
                           (print-in-list (list (car l))))
                   (format nil "]")))
        (t
         (format nil "~A~A~A ~A"
                   (format nil "[")
                   (format nil "~A"
                           (print-in-list (list (car l))))
                   (format nil "]")
                   (format nil "~A"
                           (print-in-list (cdr l)))))))

(defun print-in-list (l)
  (cond ((null l) nil)
        ((atom l) l)
        ((null (cdr l))
         (format nil "~A" (list-to-string (car l))))
        ((atom (cdr l))
         (format nil "~A . ~A"
                 (list-to-string (car l))
                 (list-to-string (cdr l))))
         (t 
          (format nil "~A ~A"
                  (list-to-string (car l))
                  (list-to-string (cdr l))))))
|#
