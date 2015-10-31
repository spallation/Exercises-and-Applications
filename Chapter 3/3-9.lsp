(in-package :cs325-user)

(defun longest-path (start end net)
  (dfs start end net '() (list start)))

(defun dfs (start end net path longest-path)
  (cond ((null start) nil)
        ((equal start end) (longer-path (append path (list end)) longest-path))
        (t 
         (let ((path (append path (list start))))
           (do ((new-path 
                 (valid-path (cdr (assoc start net)) path end) 
                 (valid-path (cdr new-path) path end))
                (l longest-path  (dfs (car new-path) 
                                      end 
                                      net 
                                      path 
                                      l)))
             ((null new-path) l))))))
        ;(t (new-paths start end net path longest-path))))

(defun longer-path (path longest-path)
  (if (> (length path) (length longest-path))
      path
    longest-path))

(defun valid-path (new-path path end)
  (cond ((equal (car new-path) end) new-path)
        ((null (member (car new-path) path)) new-path)
        (t (cdr new-path))))

#|
(defun new-paths (start end net path longest-path)
  (mapcar #'(lambda (n)
              (dfs n end net (cons start path) (cons start longest-path)))
          (cdr (assoc start net))))
|#