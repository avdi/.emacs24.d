(require 'ansi-color)
(require 'multi-term)

;; Copy the (possibly themed) ansi-color-names-vector to the
;; (annoyingly separate) ansi-term-color-vector
;; (add-hook 'term-mode-hook
;;           (lambda ()
;;             (set-variable 'ansi-term-color-vector ansi-color-names-vector)
;;             (local-set-key (kbd "<f2>") 'rename-buffer)))



(defun abg-shell-init ()
  (local-set-key (kbd "C-z") 'self-insert-command)
  (local-set-key (kbd "<f2>") 'rename-buffer))

(add-hook 'shell-mode-hook
          'abg-shell-init)



(defun abg-open-shell-frame ()
  (interactive)
  (let ((frame (make-frame)))
    (select-frame frame)
    (multi-term-dedicated-open)
    (delete-other-windows)))
