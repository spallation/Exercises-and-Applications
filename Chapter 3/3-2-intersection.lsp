(in-package :cs325-user)

(defun stable-intersection (ls1 ls2)
  (let ((l nil))
    (dolist (obj ls1)
      (when (member obj ls2)
          (push obj l)))
    (reverse l)))