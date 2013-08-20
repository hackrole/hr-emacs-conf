;; auto-complete conf
;; the best complete plugin
(require 'auto-complete-config)
(setq ac-dict "~/.emacs.d/elpa/auto-complete-1.4/dict")
(add-to-list 'ac-dictionary-directories ac-dict)
(ac-config-default)

;; auto-complete history file
(setq ac-comphist-file "~/.emacs.d/temp/ac-comphist.dat")

;; set the auto-complete key to \C-1
(define-key ac-mode-map (kbd "M-1") 'auto-complete)
(ac-set-trigger-key nil)
(setq ac-auto-start 3)

(set-default 'ac-sources '(ac-source-words-in-same-mode-buffers
						  ac-source-dictionary
						  ;;ac-source-yasnippet ;; not correct now
						  ac-source-filename))
;; TODO: redefine the use key, undefine the RET to nil
;;(define-key ac-mode-map (kbd "") nil)
;;(define-key ac-mode-map (kbd "<return>") nil)

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


;; provide
(provide 'hr-auto-complete-conf)
