(in-package :cs325-user)

(defun position+ (ls)
  (let ((ith -1))
    (mapcar #'(lambda (x) (+ x (incf ith))) ls)))