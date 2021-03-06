;; shorter dired output
(require-from-modes-d "dired-details")
(setq-default dired-details-hidden-string "--- ")
(dired-details-install)

;; make end-of-buffer and beginning-of-buffer behave properly
(defun dired-back-to-top ()
  (interactive)
  (beginning-of-buffer)
  (next-line 2))

(defun dired-jump-to-bottom ()
  (interactive)
  (end-of-buffer)
  (next-line -1))

(add-hook 'dired-mode-hook
	     (lambda ()
	       (define-key dired-mode-map
		 (vector 'remap 'end-of-buffer) 'dired-jump-to-bottom)
	       (define-key dired-mode-map
		 (vector 'remap 'beginning-of-buffer) 'dired-back-to-top)))
