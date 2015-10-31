(in-package :cs325-user)

(defun get-a-count (ls)

(defun get-a-count (ls)
  (let ((count 0))
    (dolist (obj ls)
      (and (equal obj 'a)
           (setf count (+ count 1))))
    count))