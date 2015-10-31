(in-package :cs325-user)

(defun longest-path (start end net)
  (reverse (dfs end (list start) (list start) net)))

(defun dfs (end path longest-path net)
  (do ((new-paths 
        (valid-path (cdr (assoc (car path) net)) path end)
        (valid-path (cdr new-paths) path end))
       (l longest-path (longer-path l (dfs end (cons (car new-paths) path) l net))))
      ((or (null new-paths)
           (and (eql (car new-paths) end)
                (not (null (member (car new-paths) path)))))
       (let ((longer-path (longer-path path l)))
         (cond ((eql (car new-paths) end) (longer-path (cons end path) longer-path))
               ((eql (car longer-path) end) longer-path)
               (t nil))))))

(defun longer-path (path longest-path)
  (if (> (length path) (length longest-path))
      path
    longest-path))

(defun valid-path (new-path path end)
  (if (or (null (member (car new-path) path))
          (and (eql (car new-path) end)
               (eql end (car (reverse path)))))
      new-path
    (cdr new-path)))