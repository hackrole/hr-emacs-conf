;; python conf

;; use python-mode
;; (require 'python-mode)
;; (add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))

;; ipython
(require 'ipython)
(defvar py-mode-map python-mode-map)

;; anything
(require 'anything)
(require 'anything-ipython)
(when (require 'anything-show-completion nil t)
  (use-anything-show-completion 'anything-ipython-complete
								'(length initial-pattern)))

;; pycomplete
(add-to-list 'load-path "~/.emacs.d/plugins/pycomplete")
(require 'pycomplete)

;; pylookup
(setq pylookup-dir "~/.emacs.d/plugins/pylookup/")
(add-to-list 'load-path pylookup-dir)
(eval-when-compile (require 'pylookup))
(setq pylookup-program (concat pylookup-dir "/pylookup.py"))
(setq pylookup-db-file (concat pylookup-dir "/pylookup.db"))
(autoload 'pylookup-lookup "pylookup" "Lookup  searcm-term in the python html indexes." t)
(autoload 'pylookup-update "pylookup" "Run pylookup-update at 'pylookup-db-file" t)
(global-set-key (kbd "\C-c <f1>") 'pylookup-lookup)

;; autopair
;; TODO: move to hr-common.el 
(autoload 'autopair-global-mode "autopair" nil t)
(autopair-global-mode)
;;(add-hook 'lisp-mode-hook #'(lambda () (setq autopair-dont-activate t)))
;;(add-hook 'python-mode-hook #'(lambda () (push '(?' . ?')
;;											   (getf autopair-extra-pairs :code))
;;								(setq autopair-handle-action-fns
;;									  (list #'autopair-default-handle-action
;;											#'autopair-python-triple-quote-action))))


;; python pep8 and pyling
; fix pep8 and pylint errors
(require 'tramp)
(require 'python-pep8)
(require 'python-pylint)

;; provide
(provide 'hr-python-conf)
