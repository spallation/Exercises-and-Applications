(in-package :cs325-user)

(defun stable-union (ls1 ls2)
  (append ls1 (stable-set-difference ls2 ls1)))

(defun stable-set-difference (ls1 ls2)
  (do ((l1 ls1 (cdr l1))
       (l nil (consing (car l1) l ls2 nil)))
      ((null l1) (reverse l))))

(defun consing (obj l ls2 type)
  (if (eql (consp (member obj ls2)) type)
      (cons obj l)
    l))