(autoload 'elixir-mode "elixir-mode" "Elixir mode" t)
(add-to-list 'auto-mode-alist '("\\.exs?$" . elixir-mode))
(eval-after-load "elixir-mode"
  '(add-to-list 'elixir-mode-hook 'abg-run-code-modes-hook))
