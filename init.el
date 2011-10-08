; Avdi Grimm's Emacs 24 Configuration
(setq abg-emacs-init-file load-file-name)
(setq abg-emacs-config-dir
      (file-name-directory abg-emacs-init-file))
(setq abg-elisp-dir (expand-file-name "elisp" abg-emacs-config-dir))
(setq abg-elisp-external-dir
      (expand-file-name "external" abg-elisp-dir))
(setq abg-secrets-file
      (expand-file-name "secrets.el" abg-emacs-config-dir))

(when (file-exists-p abg-secrets-file)
  (load abg-secrets-file))

(add-to-list 'load-path abg-elisp-dir)

; Add external projects to load path
(dolist (project (directory-files abg-elisp-external-dir t "\\w+"))
  (when (file-directory-p project)
    (add-to-list 'load-path project)))

(setq user-emacs-directory abg-emacs-config-dir)

(setq backup-directory-alist
      (list (cons "." (expand-file-name "backup" user-emacs-directory))))


(require 'eieio)			; needed for gh.el
(require 'gist)
(setq gist-authenticate-function 'gist-basic-authentication)

(setq package-archives 
      '(("gnu" . "http://elpa.gnu.org/packages/") 
	("marmalade" . "http://marmalade-repo.org/packages/") 
	("Tromey" . "http://tromey.com/elpa/")))
(package-initialize)
(setq abg-required-packages 
      (list 'xml-rpc 'magit 'gh))
(dolist (package abg-required-packages)
  (when (not (package-installed-p package))
    (package-refresh-contents)
    (package-install package)))

(require 'netrc)
(require 'org2blog)
(setq abg-netrc-vc (netrc-machine (netrc-parse "~/.netrc") "virtuouscode" t))
(setq org2blog/wp-blog-alist
      '(("virtuouscode"
	 :url "http://avdi.org/devblog/xmlrpc.php"
	 :username (netrc-get abg-netrc-vc "login")
	 :password (netrc-get abg-netrc-vc "password")
	 :tags-as-categories nil)))

;; Line numbers
(add-hook 'abg-code-modes-hook
	  (lambda () (linum-mode 1)))
(add-hook 'ruby-mode-hook
	  (lambda () (run-hooks 'abg-code-modes-hook)))

; Autoloads
(autoload 'Lorem-ipsum-insert-paragraphs "lorem-ipsum" "" t)
(autoload 'Lorem-ipsum-insert-sentences "lorem-ipsum" "" t)
(autoload 'Lorem-ipsum-insert-list "lorem-ipsum" "" t)

; Keyboard Bindings
(global-set-key (kbd "<f8>") 'gist-region-or-buffer)
(global-set-key (kbd "<f9>") 'org2blog/wp-new-entry)
(global-set-key (kbd "S-<f9>") 'org2blog/wp-post-buffer)

;; Set up 'custom' system
(setq custom-file (expand-file-name "emacs-customizations.el" abg-emacs-config-dir))
(load custom-file)

