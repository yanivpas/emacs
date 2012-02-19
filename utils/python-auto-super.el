(defun python-auto-super ()
  (interactive)
  (let (methodname classname)
    (save-excursion
      (or (py-beginning-of-def)
          (error "Enclosing def not found"))
      (or (looking-at "[ \t]*def[ \t]+\\([a-zA-Z0-9_]+\\)")
          (error "Can't determine method name"))
      (setq methodname (match-string 1))
      (or (py-beginning-of-class)
          (error "Enclosing class not found"))
      (or (looking-at "[ \t]*class[ \t]+\\([a-zA-Z0-9_]+\\)")
          (error "Can't determine class name"))
      (setq classname (match-string 1)))
    (insert (format "super(%s, self).%s()" classname methodname))
    (backward-char)))