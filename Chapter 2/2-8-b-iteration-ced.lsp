(in-package :cs325-user)

(defun get-a-count (ls)
    (do ((1st ls (cdr 1st))
         (count 0 (+ count (if (eql (car 1st) 'a) 1 0))))
        ((null 1st) count)))