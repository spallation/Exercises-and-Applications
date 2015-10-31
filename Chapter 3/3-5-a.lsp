(in-package :cs325-user)

(defun position+ (ls &optional (ith 0))
  (when ls
    (do ((i 0 (1+ i)))
        ((>= i ith))
      (incf (car ls)))
    (position+ (cdr ls) (1+ ith))
    ls))

;(defun position+ (ls &optional (ith 0))
; (when ls
;  (cons (+ ith (car ls)) (position+ (cdr ls) (1+ ith)))))
