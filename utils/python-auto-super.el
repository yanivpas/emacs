(defun python-auto-super ()
  (interactive)
  (let (methodname classname)
    (save-excursion
      (beginning-of-defun)
      (or (looking-at "[ \t]*def[ \t]+\\([a-zA-Z0-9_]+\\)")
          (error "Can't determine method name"))
      (setq methodname (match-string 1))
      (python-beginning-of-block)
      (or (looking-at "[ \t]*class[ \t]+\\([a-zA-Z0-9_]+\\)")
          (error "Can't determine class name"))
      (setq classname (match-string 1)))
    (insert (format "super(%s, self).%s()" classname methodname))
    (backward-char)))
