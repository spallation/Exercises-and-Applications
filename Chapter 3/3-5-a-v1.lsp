(in-package :cs325-user)

(defun position+ (ls &optional (ith 0))
  (and (not (null ls))
      (cons (+ ith (car ls)) (position+ (cdr ls) (1+ ith)))))