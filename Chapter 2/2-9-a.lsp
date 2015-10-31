(in-package :cs325-user)

; The 1st was not changed after remove function, the removed list is the return value of remove function.
(defun summit (1st)
  (apply #'+ (remove nil 1st)))