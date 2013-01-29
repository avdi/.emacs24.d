;; Zenburn is a low-contrast theme, good for long stretches of
;; coding. Also uses the newer theming system.
(add-to-list 'el-get-sources
             '(:name zenburn-theme :type elpa))
(el-get 'sync '(color-theme zenburn-theme))

;(add-hook 'after-init-hook 'color-theme-molokai)
(add-hook 'after-init-hook (lambda () (load-theme 'zenburn)))

