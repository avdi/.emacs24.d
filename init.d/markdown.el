(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(setq markdown-mode-hook nil)
(add-to-list 'markdown-mode-hook 'turn-on-auto-fill)
(add-to-list 'markdown-mode-hook 
             (lambda () (longlines-mode t)))
