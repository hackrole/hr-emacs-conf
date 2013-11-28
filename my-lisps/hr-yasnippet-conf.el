;; yasnippet conf
(require 'yasnippet)
(yas--initialize)
(yas/load-directory "~/.emacs.d/elpa/yasnippet-0.8.0/snippets")

;; set keys
(setq yas-trigger-key (kbd "\C-c y"))
;; (setq yas-next-field-key (kbd "\C->"))
;; (setq yas-prev-field-key (kbd "\C-"))

;; provide
(provide 'hr-yasnippet-conf)
