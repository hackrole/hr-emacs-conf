;; emacs conf for rst-mode
;; if emacs-version <= 24.3 need another download install
;; WARNING: maybe need to remove /usr/share/emacs/24.3/lisp/textmodes/rst.elc
(add-to-list 'load-path "~/.emacs.d/plugins/rst")
(require 'rst)

;; define key for yasnippet
(defun hr-rst-mode-hook ()
  "my hook for rst-mode, set some keys and variable"
  (local-set-key (kbd "C-1") 'yas-expand))
(add-hook 'rst-mode-hook 'hr-rst-mode-hook)

;; TODO other keys


;; provide
(provide 'hr-rst-conf)
