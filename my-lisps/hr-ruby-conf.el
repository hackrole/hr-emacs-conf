;; for ruby indent
(setq ruby-indent-level 2)
(setq nxml-child-inden 2)

(defun ruby-indent-and-newline-change ()
  "change the <C-j> and <RET> while on ruby mode"
  (global-set-key (kbd "\C-j") 'autopair-newline)
  (global-set-key (kbd "<RET>") 'reindent-then-newline-and-indent))
(add-hook 'ruby-mode-hook 'ruby-indent-and-newline-change)

;; provide
(provide 'hr-ruby-conf)
