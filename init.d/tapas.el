(el-get 'sync '(centered-cursor-mode))

(defun abg-slow-playback () "Kill region and then play it back slowly" (interactive)
  (save-excursion
    (when (> (point) (mark)) (exchange-point-and-mark))
    (deactivate-mark)
    (kill-region (point) (mark t))      
    (let ((wait 0.1)(text (current-kill 0)))
      (dotimes (i (length text))
	; (sit-for 0.2)	
	(insert (aref text i))
	(when (read-char (number-to-string (- (length text) i)) nil wait)
	  (if wait
	      (set 'wait nil)
	    (set 'wait 0.1)))))))


(defun make-rubytapas-frame ()
  (interactive)

  (require 'color-theme)
  (require 'color-theme-rubytapas)
  (require 'centered-cursor-mode)
  (let* ((color-theme-is-global nil)
         (frame-alist '((width . 80)
                       (height . 30)
                       (menu-bar-lines . 0)
                       (name . "RubyTapas")))
         (frame (make-frame frame-alist)))
    (select-frame frame)
    (color-theme-rubytapas)
    (set-frame-font "Inconsolata:pixelsize=24:foundry=unknown:weight=normal:slant=normal:width=normal:spacing=100:scalable=true" nil)
    (switch-to-buffer "RubyTapas")
    (ruby-mode)
    (whitespace-mode -1)
    (menu-bar-mode -1)
    (set (make-local-variable 'xmpfilter-command-name)
         "ruby -S xmpfilter --no-warnings --dev --fork --detect-rbtest")
    (fci-mode -1)
    (set (make-local-variable 'fill-column) 80)
    (rainbow-delimiters-mode 1)
    (centered-cursor-mode 1)
    ;; Why the hell doesn't this "take" in the color theme???
    (set-face-attribute 'hl-line-face
                        frame
                        :background "#293739"
                        :inherit nil)

    (hl-line-mode 1)
    (local-set-key (kbd "<f8>") 'abg-slow-playback)))

(defun rubytapas-file-title ()
  (capitalize 
   (replace-regexp-in-string "[0-9x]\\{3\\}-" ""
                             (file-name-sans-extension 
                              (file-name-nondirectory buffer-file-name)))))


(defun rubytapas-insert-episode-boilerplate ()
  (insert "rtscript")
  (yas-expand))

(setq rubytapas-dir (expand-file-name "~/Dropbox/rubytapas"))

(defun rubytapas-auto-insert ()
  (if (equal (string-match 
              (regexp-quote rubytapas-dir) 
              (buffer-file-name)) 
             0)
      (rubytapas-insert-episode-boilerplate)))

(add-to-list 'auto-insert-alist
             '(org-mode . rubytapas-auto-insert))
