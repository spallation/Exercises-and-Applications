(in-package :cs325-user)

(defun position+ (ls)
  (do ((ith 0 (1+ ith))
       (lst ls (rest lst))
       (l nil (cons (+ (car lst) ith) l)))
      ((null lst) (reverse l))))