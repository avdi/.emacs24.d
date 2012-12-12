(add-to-list 'el-get-sources
             '(:name highlight :type emacswiki))
(el-get 'sync '("highlight"))

(define-key ctl-x-map [(control ?y)] 'hlt-highlight)
(define-key ctl-x-map [(down-mouse-2)] 'hlt-highlighter)
(define-key ctl-x-map [(S-down-mouse-2)] 'hlt-eraser)
(global-set-key [(shift control ?p)]
                'hlt-previous-highlight)
(global-set-key [(shift control ?n)]
                'hlt-next-highlight)
