;; for javascript and nodejs
(defun hr-js-mode-hook ()
  "define some hook set for javascript and nodejs"
  (setq tab-width 2)
  (setq tab-always-indent nil))

(add-hook 'js-mode-hook 'hr-js-mode-hook)


;; provide
(provide 'hr-js-conf)
