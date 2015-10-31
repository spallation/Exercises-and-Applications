(in-package :cs325-user)

(defun longest-path (start end net)
  (if (eql start end)
      (cons start (reverse (dfs end nil net)))
    (reverse (dfs end (list start) net))))

(defun dfs (end path net)
  (do ((neighbour-nodes (first-neighbour end path net) (cdr neighbour-nodes))
       (bpath nil (updated-path bpath (car neighbour-nodes) path end net)))
      ((null neighbour-nodes) bpath)))

(defun first-neighbour (end path net)
  (if (null path)
      (cdr (assoc end net))
    (cdr (assoc (car path) net))))

(defun updated-path (bpath node path end net)
  (cond ((eql node end)
         (longer bpath (cons node path)))
        ((null (member node path))
         (longer bpath (valid-path-p (dfs end (cons node path) net) end)))
        (t bpath)))

(defun valid-path-p (path end)
  (if (eql end (car path)) path nil))

#|
(defun updated-path (bpath node path end net)
  (cond ((null (member node path))
         (longer bpath (dfs end (cons node path) net)))
        ((and (eql node end) (eql node (start-of-lpath bpath)))
         (longer bpath (cons node path)))
        (t bpath)))
|#

(defun longer (path longest-path)
  (if (> (length path) (length longest-path))
      path
    longest-path))