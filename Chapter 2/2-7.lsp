(in-package :cs325-user)

; critique: This can be done with just COND, or just AND, OR and NOT.
; Pick one or the other and do that. No need to mix here.
(defun has-list-p (ls)
  (cond ((null ls) nil)
        ((listp (car ls)) t)
        (t (has-list-p (cdr ls)))))