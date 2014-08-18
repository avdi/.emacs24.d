(setq abg-html-code-font-family "\"Source Code Pro\", \"Inconsolata\", \"Ubuntu Mono\", \"Monaco\", \"Consolas\"")

(defun abg-copy-as-html ()
  "Copy the current region to X clipboard as HTML"
  (interactive)
  (save-excursion
    (let ((source-buffer (current-buffer))
          (foreground-color (face-attribute 'default :foreground)))
      (with-temp-buffer
        (let ((body-buffer (current-buffer)))
          (let* ((htmlize-output-type 'inline-css)
                 (html-buffer (with-current-buffer source-buffer (htmlize-region (point) (mark))))
                 (html (with-current-buffer html-buffer (buffer-string))))
            (with-current-buffer html-buffer 
              (call-process-region 
               (point-min) (point-max) "xmllint" nil body-buffer nil
               "--xpath" "//body/*" "--recover" "--nowarning" "--html" "-")))
          (with-current-buffer body-buffer
            (goto-char (point-min))
            (search-forward "<pre>" nil t)
            (replace-match (concat 
                            "<pre style='color: " foreground-color "; "
                            "font-family: " abg-html-code-font-family ";'>"))
            (call-process-region (point-min) (point-max) "xclip" nil 0 nil "-i" "-selection" "clipboard" "-t" "text/html")))))))

(global-set-key (kbd "C-c M-w") 'abg-copy-as-html)
