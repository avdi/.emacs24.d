; Avdi Grimm's Emacs 24 Configuration

;; Directories and file names
(setq abg-emacs-init-file (or load-file-name buffer-file-name))
(setq abg-emacs-config-dir
      (file-name-directory abg-emacs-init-file))
(setq user-emacs-directory abg-emacs-config-dir)
(setq abg-elisp-dir (expand-file-name "elisp" abg-emacs-config-dir))
(setq abg-elisp-external-dir
      (expand-file-name "external" abg-elisp-dir))
(setq abg-themes-dir
      (expand-file-name "themes" abg-elisp-dir))
(setq abg-init-dir
      (expand-file-name "init.d" abg-emacs-config-dir))

;; I hate putting package-specific config in this file, but this line
;; MUST come before Org is loaded
(setq org-replace-disputed-keys t)

;; Set up 'custom' system
(setq custom-file (expand-file-name "emacs-customizations.el" abg-emacs-config-dir))
(load custom-file)

;; Load all elisp files in ./init.d
(if (file-exists-p abg-init-dir)
    (dolist (file (directory-files abg-init-dir t "\\.el$"))
      (load file)))


