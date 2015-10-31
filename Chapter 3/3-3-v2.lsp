(in-package :cs325-user)

(defun occurrences (ls)
  (do ((l ls (rest l))
       (count-list nil (acc (car l) count-list)))
      ((null l) (sort count-list #'> :key #'cdr))))

(defun acc (obj count-list)
  (let ((lst (assoc obj count-list)))
    (if (and (consp lst) (incf (cdr lst)))
        count-list
      (acons obj 1 count-list))))