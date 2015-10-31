(in-package :cs325-user)

(defun bst-elements (bst)
  (if (null bst)
      nil
    (let ((max-element (node-elt (bst-max bst))))
      (let ((bst (bst-remove max-element bst #'<)))
        (cons max-element (bst-elements bst))))))

#|
(defun bst-elements (bst)
  (cond ((not (node-p bst)) nil)
        (t (append (bst-elements (node-r bst))
                   (cons (node-elt bst)
                         (bst-elements (node-l bst)))))))
|#
               