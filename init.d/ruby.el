(add-hook 'ruby-mode-hook
	  (lambda () (run-hooks 'abg-code-modes-hook)))

;(add-hook 'ruby-mode-hook
;	  (lambda () (rvm-activate-corresponding-ruby)))

;; Finding rcodetools the hard way:
;;
;; (defun abg-rcodetools-path ()
;;   (let ((gem-output (shell-command-to-string "gem list -l rcodetools"))
;; 	(version-pattern (rx ?( (group (* anything)) ?))))
;;     (string-match version-pattern gem-output)
;;     (let ((version (match-string-no-properties 1 gem-output)))
;;       (concat (rvm--emacs-gemhome) "/gems/rcodetools-" version "/rcodetools.el"))))

;; (load (abg-rcodetools-path))

(eval-after-load 'ruby-mode
  '(progn 
     (rvm-use-default)

     (require 'rcodetools)
     (define-key ruby-mode-map (kbd "C-c C-c") 'xmp)))

