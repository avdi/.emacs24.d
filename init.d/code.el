(setq abg-code-modes-hook nil)

;; Color-code matching delimiters
(el-get 'sync '(rainbow-delimiters))
(add-hook 'abg-code-modes-hook
	  (lambda () (rainbow-delimiters-mode 1)))

(autoload 'fci-mode "fill-column-indicator"
  "Toggle fill column indicator"
  t)

;; Line numbers
(add-hook 'abg-code-modes-hook
	  (lambda () (linum-mode 1)))

;; Show whitespace
;; (add-hook 'abg-code-modes-hook
;; 	  (lambda () (whitespace-mode 1)))

;; Truncate lines
(add-hook 'abg-code-modes-hook
	  (lambda () (setq truncate-lines t)))

;; Clean up whitespace on save
(add-hook 'abg-code-modes-hook
          (lambda ()
            (add-hook 'before-save-hook 'whitespace-cleanup nil t)))

;; Show an indicator of the fill column
;; (add-hook 'abg-code-modes-hook
;;           (lambda () (fci-mode 1)))            
;; This interacts badly with org-mode HTML export

(add-hook 'org-export-preprocess-hook
          (lambda () (fci-mode -1)))

(add-hook 'abg-code-modes-hook
          (lambda () (hl-line-mode 1)))

;; (add-hook 'abg-code-modes-hook
;;           (lambda () 
;;             (vline-mode 1)
;;             (setq vline-idle-time 1.0)
;;             (setq vline-use-timer t)))

(defun abg-run-code-modes-hook ()
  (run-hooks 'abg-code-modes-hook))
