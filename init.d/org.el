(add-to-list 'el-get-sources
             '(:name org-tree-slide
                     :description "A presentation tool for org-mode"
                     :type git
                     :url "https://github.com/avdi/org-tree-slide.git"))
(el-get 'sync '(org-tree-slide))
(define-key org-mode-map (kbd "<f11>") 'org-tree-slide-mode)
(define-key org-mode-map (kbd "S-<f11>") 'org-tree-slide-skip-done-toggle)
(add-hook 'org-mode-hook
          'turn-on-auto-fill)
(add-hook 'org-mode-hook
          'turn-on-flyspell)
