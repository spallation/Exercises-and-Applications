(in-package :cs325-user)

(defun stable-set-difference (ls1 ls2)
  (let ((l nil))
    (dolist (obj ls1)
      (unless (member obj ls2)
        (push obj l)))
    (reverse l)))