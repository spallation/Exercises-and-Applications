(in-package :cs325-user)

; critique: FORMAT and other printing functions are not predicates, i.e., functions that are test a condition and return true (not NIL) or false (NIL). Therefore using them in an logical construct is semantically ill-formed.
(defun print-dots (n)
  (when (plusp n) 
    (format t ".")
    (print-dots (1- n))))