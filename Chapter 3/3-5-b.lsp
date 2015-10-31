(in-package :cs325-user)

(defun position+ (ls)
  (let ((l nil))
    (do ((ith 0 (1+ ith))
         (lst ls (cdr lst)))
        ((null lst) nil)
      (push (+ (car lst)  ith) l))
    (reverse l)))