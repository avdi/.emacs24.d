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

; Keyboard Bindings
(global-set-key (kbd "<f8>") 'gist-region-or-buffer)


;; Set up 'custom' system
(setq custom-file (expand-file-name "emacs-customizations.el" abg-emacs-config-dir))
(load custom-file)

