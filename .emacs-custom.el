(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cua-mode t nil (cua-base))
 '(cua-rectangle-mark-key (kbd "C-x <C-return>"))
 '(custom-safe-themes (quote ("fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" "545287ef14b1b686cd88a99cf6ab3629e55ef6b73d59a76253eec65f4ead4fee" "4d66773cc6d32566eaf2c9c7ce11269d9eb26e428a1a4fa10e97bae46ff615da" default)))
 '(display-time-mode t)
 '(long-line-limit 100)
 '(minimap-window-location (quote right))
 '(ns-pop-up-frames nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Droid Sans Mono" :foundry "unknown" :slant normal :weight normal :height 113 :width normal))))
 '(ace-jump-face-foreground ((t (:foreground "red" :weight bold))) t)
 '(helm-selection ((t (:background "dark red" :underline t))))
 '(mc/cursor-face ((t (:background "deep sky blue" :foreground "black"))))
 '(minimap-active-region-background ((t (:background "#333"))) t))

(font-lock-add-keywords 'python-mode
    '(("\\_<\\(from\\|import\\|as\\|assert\\)\\_>" 0 'font-lock-special-keyword-face)))

(setq-default cursor-type 'bar)
