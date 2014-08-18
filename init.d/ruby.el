(require 'chruby)
(chruby "ruby-2.1.2")

(add-hook 'ruby-mode-hook
	  (lambda () (run-hooks 'abg-code-modes-hook)))

;(add-hook 'ruby-mode-hook
;	  (lambda () (rvm-activate-corresponding-ruby)))

;; Load rcodetools

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

     (require 'rcodetools)
     (setq xmpfilter-command-name "ruby -S xmpfilter --dev --fork --detect-rbtest")
     (define-key ruby-mode-map (kbd "C-c C-c") 'xmp)))

;(abg-require-package 'rspec-mode)
(autoload 'rspec-mode "rspec-mode")
(add-hook 'ruby-mode-hook (lambda () (rspec-mode)))

(add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile" . ruby-mode))
