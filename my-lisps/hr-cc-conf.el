;; cc mode conf

(defun hr-cc-mode-hook ()
  "the cc mode hook, rewrite some keys and some settings"
  (local-set-key (kbd "C-d") 'kill-whole-line))

(add-hook 'c-mode-hook 'hr-cc-mode-hook)


;; provide
(provide 'hr-cc-conf)
