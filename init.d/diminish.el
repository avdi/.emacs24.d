;(abg-require-package 'diminish)
(when (require 'diminish nil 'noerror)
  (eval-after-load "abbrev"
    '(diminish 'abbrev-mode "Ab"))
  (eval-after-load "yasnippet"
    '(diminish 'yas-minor-mode " Y"))
  (eval-after-load "centered-cursor-mode"
    '(diminish 'centered-cursor-mode "Ctr")))
