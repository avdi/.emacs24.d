;;; rvm-loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (rvm-open-gem rvm-use rvm-activate-corresponding-ruby
;;;;;;  rvm-use-default) "../elisp/external/rvm.el/rvm" "../elisp/external/rvm.el/rvm.el"
;;;;;;  (20111 56746))
;;; Generated autoloads from ../elisp/external/rvm.el/rvm.el

(autoload 'rvm-use-default "../elisp/external/rvm.el/rvm" "\
use the rvm-default ruby as the current ruby version

\(fn)" t nil)

(autoload 'rvm-activate-corresponding-ruby "../elisp/external/rvm.el/rvm" "\
activate the corresponding ruby version for the file in the current buffer.
This function searches for an .rvmrc file and activates the configured ruby.
If no .rvmrc file is found, the default ruby is used insted.

\(fn)" t nil)

(autoload 'rvm-use "../elisp/external/rvm.el/rvm" "\
switch the current ruby version to any ruby, which is installed with rvm

\(fn NEW-RUBY NEW-GEMSET)" t nil)

(autoload 'rvm-open-gem "../elisp/external/rvm.el/rvm" "\


\(fn GEMHOME)" t nil)

;;;***

(provide 'rvm-loaddefs)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; rvm-loaddefs.el ends here
