(setq hippie-expand-try-functions-list
      '(yas/hippie-try-expand 
        try-expand-all-abbrevs
        try-expand-list
        try-expand-dabbrev
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill
        try-expand-line
        try-complete-file-name-partially
        try-complete-file-name 
        try-complete-lisp-symbol-partially
        try-complete-lisp-symbol))
