(in-package :cs325-user)

(defun occurrences (ls)
  (let ((l nil))
    (dolist (obj ls)
      (if (assoc obj l)
          (incf (cdr (assoc obj l)))
        (push (cons obj 1) l)))
    (sort l #'> :key #'cdr)))