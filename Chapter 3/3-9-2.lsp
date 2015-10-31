(in-package :cs325-user)

(defun longest-path (start end net)
  (reverse (dfs end (list start) (list start) net)))

(defun dfs (end path longest-path net)
  (do ((new-paths (cdr (assoc (car path) net)) (cdr new-paths))
       (l longest-path (dfs end (cons (car new-paths) path) l net)))
      ((or (null new-paths)
           (and (
       (let ((longer-path (longer-path path l)))
         (cond ((equal (car longer-path) end) longer-path)
               (t nil)))))))))
#|
      ((or (null new-paths)
           (equal (car new-paths) end))
       (let ((longer-path (longer-path path l)))
         (cond ((equal (car new-paths) end) new-paths)
               ((equal (car longer-path) end) longer-path)
               (t nil))))))
|#
          ; (equal (car path) end))

(defun longer-path (path longest-path)
  (if (> (length path) (length longest-path))
      path
    longest-path))

(defun valid-path (new-path path end)
  (if (null (member (car new-path) path))
      new-path
    (cdr new-path)))

#|
(defun valid-path (new-path path end)
  (if (or (equal (car new-path) end)
          (null (member (car new-path) path))) 
      new-path
    (cdr new-path)))
|#