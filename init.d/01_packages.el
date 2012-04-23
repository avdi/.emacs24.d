(require 'eieio)
(setq package-archives 
      '(("gnu"       . "http://elpa.gnu.org/packages/") 
	("marmalade" . "http://marmalade-repo.org/packages/") 
	("Tromey"    . "http://tromey.com/elpa/")))
(package-initialize)

;; el-get - see https://github.com/dimitri/el-get
(add-to-list 'load-path 
             (expand-file-name "el-get/el-get" user-emacs-directory))

(unless (require 'el-get nil t) 
  (url-retrieve "https://raw.github.com/dimitri/el-get/master/el-get-install.el" 
                (lambda (s) (end-of-buffer) (eval-print-last-sexp))))
(el-get 'sync)

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
        (:name yasnippet :type elpa)
        (:name feature-mode :type elpa)
        (:name findr :type elpa)
        (:name gh :type elpa)
        (:name hexrgb :type elpa)
        (:name inflections :type elpa)
        (:name jump :type elpa)
        (:name magit-gh-pulls :type elpa)
        (:name xml-rpc :type elpa)
        (:name zenburn-theme :type elpa)))

(setq my-packages
      (append
       '(el-get 
         yasnippet
         gist
         org2blog
         rvm
         rhtml-mode
         org-mode
         coffee-mode
         feature-mode
         fill-column-indicator
         findr
         gh
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
         rinari
         sass-mode
         scss-mode
         xml-rpc
         zenburn-theme)
       (mapcar 'el-get-source-name el-get-sources)))

(el-get 'sync my-packages)

