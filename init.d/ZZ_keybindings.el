; Keyboard Bindings

;; I accidentally hit the following keys WAY too often.
(global-unset-key (kbd "C-x C-c")) 
(global-unset-key (kbd "C-z"))
(global-unset-key (kbd "C-x C-z"))


(global-set-key (kbd "<f1>") 'multi-term-dedicated-toggle) ; open/close "main" terminal
(global-set-key (kbd "M-<f1>") 'multi-term) ; new terminal
(defun abg-revert-buffer-no-confirm () 
  "Revert buffer with no confirmation"
  (interactive)
  (revert-buffer nil t))
(global-set-key (kbd "<f5>") 'abg-revert-buffer-no-confirm)
(global-set-key (kbd "<f6>") 'magit-status)
;(global-set-key (kbd "<f8>") 'gist-region-or-buffer)
(global-set-key (kbd "<f9>") 'org2blog/wp-new-entry)
(global-set-key (kbd "S-<f9>") 'org2blog/wp-post-buffer)

(global-set-key (kbd "C-<prior>") 'multi-term-prev)
(global-set-key (kbd "C-<next>") 'multi-term-next)


