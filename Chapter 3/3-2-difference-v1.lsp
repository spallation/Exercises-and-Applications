(in-package :cs325-user)

(defun stable-set-difference (ls1 ls2)
  (do ((l1 ls1 (cdr l1))
       (l nil))
      ((null l1) (reverse l))
    (unless (member (car l1) ls2)
      (push (car l1) l))))