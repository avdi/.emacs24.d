(setq abg-required-packages 
      (list 'xml-rpc 'magit 'gh 'inf-ruby))

(require 'eieio)
(setq package-archives 
      '(("gnu" . "http://elpa.gnu.org/packages/") 
	("marmalade" . "http://marmalade-repo.org/packages/") 
	("Tromey" . "http://tromey.com/elpa/")))
(package-initialize)
(dolist (package abg-required-packages)
  (when (not (package-installed-p package))
    (package-refresh-contents)
    (package-install package)))
