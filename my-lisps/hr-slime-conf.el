;; slime-mode conf
(require 'slime)
(slime-setup)
(require 'slime-autoloads)

(setq inferior-lisp-program "/usr/bin/clisp")

;; multi lisp implement
;; (setq slime-lisp-implementations
;;       '((clisp ("/usr/bin/clisp"))
;;         (sbcl ("/usr/bin/sbcl") :coding-system utf-8-unix)))

;; provide
(global-set-key (kbd "<C-f5>") 'slime-abort-connection)
(global-set-key (kbd "<f5>") 'slime)
(provide 'hr-slime-conf)