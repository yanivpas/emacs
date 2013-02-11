(defun my/comint-delchar-or-eof-or-kill-buffer (arg)
  (interactive "p")
  (if (null (get-buffer-process (current-buffer)))
      (kill-buffer)
    (comint-delchar-or-maybe-eof arg)))

(add-hook 'shell-mode-hook
          (lambda ()
            (define-key shell-mode-map
              (kbd "C-d") 'my/comint-delchar-or-eof-or-kill-buffer)))

(add-hook 'eshell-mode-hook
	  (lambda ()
	    (local-set-key (kbd "<down>") 'next-line)
	    (local-set-key (kbd "<up>") 'previous-line)))
