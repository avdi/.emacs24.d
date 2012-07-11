;; Molokai is a nice fruity high-contrast theme. Nice for screencasts,
;; demos, and presentations.
(add-to-list 'el-get-sources
             '(:name color-theme-molokai :type elpa))
(el-get 'sync '(color-theme-molokai))


;; Zenburn is a low-contrast theme, good for long stretches of
;; coding. Also uses the newer theming system.
(add-to-list 'el-get-sources
             '(:name zenburn-theme :type elpa))
(el-get 'sync '(zenburn-theme))

;(add-hook 'after-init-hook 'color-theme-molokai)
(add-hook 'after-init-hook (lambda () (load-theme 'zenburn)))

