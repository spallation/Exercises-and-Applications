(in-package :cs325-user)

(defun get-a-count (ls)
  (cond ((null ls) 0)
        ((eql (car ls) 'a) (1+ (get-a-count (cdr ls))))
        (t
         (get-a-count (cdr ls)))))