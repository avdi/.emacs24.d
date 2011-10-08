(setq abg-secrets-file
      (expand-file-name "secrets.el" abg-emacs-config-dir))

(when (file-exists-p abg-secrets-file)
  (load abg-secrets-file))
