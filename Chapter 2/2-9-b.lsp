(in-package :cs325-user)

; The recursion does not have an exit, which means the function will never end.
(defun summit (1st)
  (if 1st
      (let ((x (car 1st)))
        (if (null x)
            (summit (cdr 1st))
          (+ x (summit (cdr 1st)))))
    0))
