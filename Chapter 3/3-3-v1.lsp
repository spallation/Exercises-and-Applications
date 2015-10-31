(in-package :cs325-user)

(defun occurrences (ls)
  (do ((l ls (rest l))
       (count-list nil 
                   (if (and (assoc (car l) count-list)
                            (incf (cdr (assoc (car l) count-list))))
                       count-list
                     (push (cons (car l) 1) count-list))))
      ((null l) (sort count-list #'> :key #'cdr))))