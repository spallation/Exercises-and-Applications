(in-package :cs325-user)

(defun stable-union (ls1 ls2)
  (append ls1 (stable-set-difference ls2 ls1)))

(defun stable-set-difference (ls1 ls2)
  (do ((l1 ls1 (cdr l1))
       (l nil (consing-not (car l1) l ls2)))
      ((null l1) (reverse l))))

(defun consing-not (obj l ls2)
  (if (member obj ls2)
      l
    (cons obj l)))