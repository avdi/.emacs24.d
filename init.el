; Avdi Grimm's Emacs 24 Configuration
(setq abg-emacs-init-file load-file-name)
(setq abg-emacs-config-dir
      (file-name-directory abg-emacs-init-file))

(setq user-emacs-directory abg-emacs-config-dir)

(setq backup-directory-alist
      (list (cons "." (expand-file-name "backup" user-emacs-directory))))


;; Set up 'custom' system
(setq custom-file (expand-file-name "emacs-customizations.el" abg-emacs-config-dir))
(load custom-file)

