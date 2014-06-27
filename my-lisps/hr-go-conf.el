(require 'go-mode)
(require 'go-mode-load)
(require 'go-autocomplete)

;; tab width
(setq default-tab-width 4)
(setq tab-width 4)

;; key shortcut
(global-set-key "<F1>" )

;; (defun my-fullscreen ()
;;   (interactive)
;;   (x-send-client-message
;;    nil 0 nil "_NET_WM_STATE" 32
;;    '(2 "_NET_WM_STATE_FULLSCREEN" 0)))