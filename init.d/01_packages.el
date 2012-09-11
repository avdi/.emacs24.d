(require 'package)
(add-to-list 'package-archives 
            '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
            '("ELPA" . "http://tromey.com/elpa/"))
(package-initialize)


;; el-get - see https://github.com/dimitri/el-get
(setq el-get-dir (expand-file-name "el-get" user-emacs-directory))

(add-to-list 'load-path 
             (expand-file-name "el-get/el-get" user-emacs-directory))
(unless (require 'el-get nil t) 
  (url-retrieve "https://raw.github.com/dimitri/el-get/master/el-get-install.el" 
                (lambda (s) (end-of-buffer) (eval-print-last-sexp))))

;; local sources
(setq el-get-sources
      '((:name asciidoc
	       :type elpa
	       :after (lambda ()
			(autoload 'doc-mode "doc-mode" nil t)
			(add-to-list 'auto-mode-alist '("\\.adoc$" . doc-mode))
			(add-hook 'doc-mode-hook '(lambda ()
						    (turn-on-auto-fill)
						    (require 'asciidoc)))))
        (:name xml-rpc :type elpa)
        (:name yasnippet :type elpa)
        (:name feature-mode :type elpa)
        (:name findr :type elpa)
        (:name gh :type elpa)
        (:name hexrgb :type emacswiki)
        (:name inflections :type elpa)
        (:name jump :type elpa)
        (:name magit-gh-pulls :type elpa)        
	(:name eieio :type elpa)
	(:name gist :type elpa)))

(setq abg-packages
      '(eieio
	xml-rpc
	gh
	inflections
	jump
	feature-mode
	yasnippet
	rvm
	rhtml-mode
	org-mode
	coffee-mode
	fill-column-indicator
	findr
	haml-mode
        hexrgb
	htmlize
	inflections
	inf-ruby
	jump
	magit
	magit-gh-pulls
	magithub
	minimap
	multi-term
	scss-mode))

;; Annoying packages that explode during install if their deps are not
;; met.
(setq abg-dependent-packages
      '(org2blog 
	; gist
	sass-mode))


(el-get 'sync (mapcar 'prin1-to-string abg-packages))
(el-get 'sync (mapcar 'prin1-to-string abg-dependent-packages))
