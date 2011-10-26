; Keyboard Bindings

;; I accidentally hit the following keys WAY too often.
(global-unset-key (kbd "C-x C-c")) 
(global-unset-key (kbd "C-x C-z"))

(global-set-key (kbd "<f8>") 'gist-region-or-buffer)
(global-set-key (kbd "<f9>") 'org2blog/wp-new-entry)
(global-set-key (kbd "S-<f9>") 'org2blog/wp-post-buffer)


