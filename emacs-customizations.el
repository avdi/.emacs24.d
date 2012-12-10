(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ack-executable "/usr/bin/ack-grep")
 '(coffee-tab-width 2)
 '(column-number-mode t)
 '(cua-enable-cua-keys nil)
 '(cua-mode t nil (cua-base))
 '(cua-remap-control-z t)
 '(custom-safe-themes (quote ("71efabb175ea1cf5c9768f10dad62bb2606f41d110152f4ace675325d28df8bd" "b7553781f4a831d5af6545f7a5967eb002c8daeee688c5cbf33bf27936ec18b3" "965234e8069974a8b8c83e865e331e4f53ab9e74" default)))
 '(ido-enable-flex-matching t)
 '(ido-mode (quote both) nil (ido))
 '(ido-use-filename-at-point (quote guess))
 '(ido-use-url-at-point t)
 '(indent-tabs-mode nil)
 '(js-indent-level 2)
 '(mark-even-if-inactive nil)
 '(markdown-command "redcarpet --parse-fenced_code_blocks")
 '(multi-term-dedicated-select-after-open-p t)
 '(multi-term-dedicated-window-height 10)
 '(multi-term-scroll-to-bottom-on-output t)
 '(org-babel-load-languages (quote ((emacs-lisp . t) (ruby . t) (sh . t) (awk . t) (java . t) (clojure . t) (latex . t) (C . t))))
 '(org-babel-noweb-wrap-start "#<<")
 '(org-confirm-babel-evaluate nil)
 '(org-emphasis-alist (quote (("*" bold "<strong>" "</strong>") ("/" italic "<em>" "</em>") ("_" underline "<span style=\"text-decoration:underline;\">" "</span>") ("=" org-code "<code>" "</code>" verbatim) ("~" org-verbatim "<code>" "</code>" verbatim) ("+" (:strike-through t) "<del>" "</del>"))))
 '(org-export-htmlize-output-type (quote css))
 '(org-export-htmlized-org-css-url nil)
 '(org-latex-to-pdf-process (quote ("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f" "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f" "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f")))
 '(org-link-to-org-use-id (quote create-if-interactive))
 '(org-replace-disputed-keys t)
 '(org-tree-slide-header nil)
 '(org2blog/wp-default-categories (quote ("Uncategorized")))
 '(package-archives (quote (("gnu" . "http://elpa.gnu.org/packages/") ("marmalade" . "http://marmalade-repo.org/packages/") ("Tromey" . "http://tromey.com/elpa/"))))
 '(ruby-deep-arglist nil)
 '(ruby-deep-indent-paren nil)
 '(safe-local-variable-values (quote ((encoding . utf-8) (org-babel-noweb-wrap-end . ">>") (org-babel-noweb-wrap-start . "#<<") (org-export-html-postamble . "<p style='font-size: smaller'>Copyright &copy; 2012 ShipRise and Avdi Grimm.</p>") (org-export-latex-verbatim-wrap "\\begin{Verbatim}[frame=leftline,label=Output]
" . "\\end{Verbatim}
") (org-export-latex-minted-options ("frame" "leftline") ("linenos" "true") ("stepnumber" "2")) (org-table-formula-evaluate-inline) (org-export-latex-listings . minted) (org-latex-to-pdf-process "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f" "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f" "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f") (org-export-latex-minted-langs (html "rhtml") (emacs-lisp "common-lisp") (cc "c++") (cperl "perl") (shell-script "bash") (caml "ocaml")) (org-latex-to-pdf-process quote ("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f" "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f" "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f")) (org-export-latex-minted-langs quote ((html "rhtml") (emacs-lisp "common-lisp") (cc "c++") (cperl "perl") (shell-script "bash") (caml "ocaml"))) (org-export-latex-minted . t) (org-export-latex-listings quote minted) (ruby-compilation-executable . "ruby") (ruby-compilation-executable . "ruby1.8") (ruby-compilation-executable . "ruby1.9") (ruby-compilation-executable . "rbx") (ruby-compilation-executable . "jruby"))))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tags-revert-without-query t)
 '(term-unbind-key-list (quote ("C-z" "C-x" "C-h" "C-y" "<ESC>")))
 '(tool-bar-mode nil)
 '(whitespace-style (quote (face tabs trailing space-before-tab indentation empty space-after-tab tab-mark))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "unknown" :family "Inconsolata"))))
 '(org-level-2 ((t (:inherit org-tree-slide-heading-level-2-init))))
 '(org-level-3 ((t (:inherit org-tree-slide-heading-level-3-init)))))
