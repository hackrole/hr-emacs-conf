;; yasnippet conf
;; (require 'yasnippet)
;; (yas--initialize)
;; (yas/load-directory "~/.emacs.d/elpa/yasnippet-0.8.0/snippets")

;; test for new init
(require 'yasnippet)
(yas-global-mode 1)

;; set keys
(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
(define-key yas-minor-mode-map (kbd "C-1") 'yas-expand)
(define-key yas-keymap [(tab)] nil)
(define-key yas-keymap (kbd "TAB") nil)
(define-key yas-keymap [(shift tab)] nil)
(define-key yas-keymap [backtab] nil)
(define-key yas-keymap (kbd "M-2") 'yas-next-field-or-maybe-expand)
(define-key yas-keymap (kbd "C-2") 'yas-prev-field)

;; provide
(provide 'hr-yasnippet-conf)
