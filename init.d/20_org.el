(add-to-list 'load-path 
             (expand-file-name "external/org-8.0.3/lisp" abg-elisp-dir))
(require 'org)
(org-reload)

;; (add-to-list 'el-get-sources
;;              '(:name org-tree-slide
;;                      :description "A presentation tool for org-mode"
;;                      :type git
;;                      :url "https://github.com/avdi/org-tree-slide.git"))
;; (el-get 'sync '(org-tree-slide))

;; (add-to-list 'el-get-sources
;;              '(:name org-markdown
;;                      :description "org markdown export"
;;                      :type git
;;                      :url "https://github.com/alexhenning/ORGMODE-Markdown.git")
             ;; )
;(el-get 'sync '(org-markdown))
;(require 'org-export-generic)
;(load "markdown")


;; (define-key org-mode-map (kbd "<f11>") 'org-tree-slide-mode)
;; (define-key org-mode-map (kbd "S-<f11>") 'org-tree-slide-skip-done-toggle)
(add-hook 'org-mode-hook
          'turn-on-auto-fill)
(add-hook 'org-mode-hook
          'turn-on-flyspell)

;; Reveal.js support
(require 'ox-reveal)
