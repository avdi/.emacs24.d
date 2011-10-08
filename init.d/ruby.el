(add-hook 'ruby-mode-hook
	  (lambda () (run-hooks 'abg-code-modes-hook)))
(add-hook 'ruby-mode-hook
	  (lambda () (rvm-activate-corresponding-ruby)))

