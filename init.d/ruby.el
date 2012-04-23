(add-hook 'ruby-mode-hook
	  (lambda () (run-hooks 'abg-code-modes-hook)))
;(add-hook 'ruby-mode-hook
;	  (lambda () (rvm-activate-corresponding-ruby)))

;; Load rcodetools
(rvm-use-default)

;; Finding rcodetools the hard way:
;;
;; (defun abg-rcodetools-path ()
;;   (let ((gem-output (shell-command-to-string "gem list -l rcodetools"))
;; 	(version-pattern (rx ?( (group (* anything)) ?))))
;;     (string-match version-pattern gem-output)
;;     (let ((version (match-string-no-properties 1 gem-output)))
;;       (concat (rvm--emacs-gemhome) "/gems/rcodetools-" version "/rcodetools.el"))))

;; (load (abg-rcodetools-path))

(require 'rcodetools)
