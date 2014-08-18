(require 'yasnippet)
(yas-global-mode 1)
(setq abg-snippets-dir 
      (expand-file-name "snippets" abg-emacs-config-dir))
(add-to-list 'yas/root-directory abg-snippets-dir)
(yas-reload-all)

;; See http://stackoverflow.com/questions/9418148/conflicts-between-org-mode-and-yasnippet
(defun yas/org-very-safe-expand ()
  (let ((yas/fallback-behavior 'return-nil)) (yas/expand)))

(add-hook 'org-mode-hook
          (lambda ()
            (make-variable-buffer-local 'yas/trigger-key)
            (setq yas/trigger-key [tab])
            (add-to-list 'org-tab-first-hook 'yas/org-very-safe-expand)
            (define-key yas/keymap [tab] 'yas/next-field)))

(add-to-list 'hippie-expand-try-functions-list 'yas/hippie-try-expand)

(auto-insert-mode 1)
