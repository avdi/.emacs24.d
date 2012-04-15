(autoload 'fci-mode "fill-column-indicator"
  "Toggle fill column indicator"
  t)

;; Line numbers
(add-hook 'abg-code-modes-hook
	  (lambda () (linum-mode 1)))

;; Show whitespace
(add-hook 'abg-code-modes-hook
	  (lambda () (whitespace-mode 1)))

;; Truncate lines
(add-hook 'abg-code-modes-hook
	  (lambda () (setq truncate-lines t)))

;; Clean up whitespace on save
(add-hook 'abg-code-modes-hook
          (lambda ()
            (add-hook 'before-save-hook 'whitespace-cleanup nil t)))

;; Show an indicator of the fill column
(add-hook 'abg-code-modes-hook
          (lambda () (fci-mode 1)))            
