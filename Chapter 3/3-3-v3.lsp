(in-package :cs325-user)

(defun occurrences (ls)
  (do ((l ls (rest l))
       (count-list nil (updated-list (car l) count-list)))
      ((null l) (sort count-list #'> :key #'cdr))))

(defun updated-list (obj count-list)
  (let ((pair (assoc obj count-list)))
    (cond ((consp pair)
           (incf (cdr pair))
           count-list)
          (t (acons obj 1 count-list)))))
  

#|
(defun occurrences (ls)
  (do ((l ls (rest l))
       (count-list nil (updated-list (car l) 
                                     (assoc (car l) count-list)
                                     count-list)))
      ((null l) (sort count-list #'> :key #'cdr))))

(defun updated-list (obj lst count-list)
  (cond ((consp lst) 
         (incf (cdr lst))
         count-list)
        (t (acons obj 1 count-list))))
|#