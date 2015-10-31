(in-package :cs325-user)

(defun stable-intersection (ls1 ls2)
  (do ((l1 ls1 (cdr l1))
       (l nil (if (member (car l1) ls2) (cons (car l1) l) l)))
      ((null l1) (reverse l))))
