; Avdi Grimm's Emacs 24 Configuration
(setq abg-emacs-init-file load-file-name)
(setq abg-emacs-config-dir
      (file-name-directory abg-emacs-init-file))

;; Set up 'custom' system
(setq custom-file (expand-file-name "emacs-customizations.el" abg-emacs-config-dir))
(load custom-file)
