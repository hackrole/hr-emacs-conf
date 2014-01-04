;; auto-complete conf
;; the best complete plugin
(require 'auto-complete-config)
(setq ac-dict "~/.emacs.d/elpa/auto-complete-1.4/dict")
(add-to-list 'ac-dictionary-directories ac-dict)
(ac-config-default)

;; auto-complete history file
(setq ac-comphist-file "~/.emacs.d/temp/ac-comphist.dat")

;; redefine the key
(define-key ac-menu-map (kbd "\C-n") 'ac-next)
(define-key ac-menu-map (kbd "\C-p") 'ac-previous)
(global-set-key (kbd "\M-1") 'auto-complete)
(ac-set-trigger-key nil)

;; others
(setq ac-auto-start 2)
(setq ac-dwim t)

;; ac-sources
(set-default 'ac-sources '(ac-source-words-in-same-mode-buffers
						  ac-source-dictionary
						  ;;ac-source-yasnippet ;; not correct now
						  ac-source-filename))

;; sql-interactive-mode complete
(defun hr-sql-interactive-complete ()
  "set the auto-complete for sql-interactive-mode"
  (auto-complete-mode t)
  (setq ac-sources '(ac-source-dictionary
					 ;;ac-source-yasnippet ;; not correct now
					 ac-source-words-in-buffer
					 ac-source-filename)))
(add-hook 'sql-interactive-mode-hook 'hr-sql-interactive-complete)

;; eshell complete

;; python complete
(defun hr-python-mode-complete ()
  "set the auto-complete sources for python-mode"
  (setq ac-sources '(ac-source-dictionary
					 ac-source-semantic
					 ac-source-ropemacs
					 ac-source-words-in-same-mode-buffers
					 ac-source-filename)))
(add-hook 'python-mode-hook 'hr-python-mode-complete)

;; c complete
(defun hr-cc-mode-complete ()
  "set the auto-complete sources for cc-mode"
  (setq ac-sources '(ac-source-dictionary
					 ac-source-words-in-same-mode-buffers
					 ac-source-filename)))
(add-hook 'c-mode-hook 'hr-cc-mode-complete)

;; provide
(provide 'hr-auto-complete-conf)
