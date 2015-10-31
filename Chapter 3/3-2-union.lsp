(in-package :cs325-user)

(defun stable-union (ls1 ls2)
  (let ((l (reverse ls1)))
    (dolist (obj ls2)
      (pushnew obj l))
    (reverse l)))