(defun abg-create-intermediate-directories ()
  (when buffer-file-name
    (let ((dir (file-name-directory buffer-file-name)))
      (when (and (not (file-exists-p dir))
                 (y-or-n-p (format "Directory %s does not exist. Create it?" dir)))
        (make-directory dir t)))))

(add-hook 'before-save-hook 'abg-create-intermediate-directories)
