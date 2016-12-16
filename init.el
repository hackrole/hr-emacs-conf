;; init dir
(defvar dotfiles-dir "~/.emacs.d")

;; ELPA 
(require 'package)
(setq package-user-dir (concat dotfiles-dir "/elpa"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
;;(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-default-packages '())
;;(add-to-list 'my-default-packages 'ecb)
(add-to-list 'my-default-packages 'yasnippet)
(add-to-list 'my-default-packages 'auto-complete)
(add-to-list 'my-default-packages 'color-theme)
(add-to-list 'my-default-packages 'erlang)
(add-to-list 'my-default-packages 'eredis)
(add-to-list 'my-default-packages 'xcscope)
(add-to-list 'my-default-packages 'rst)
(add-to-list 'my-default-packages 'magit)
(add-to-list 'my-default-packages 'popup)
(add-to-list 'my-default-packages 'tabbar)
(add-to-list 'my-default-packages 'emmet-mode)
(add-to-list 'my-default-packages 'w3)
(add-to-list 'my-default-packages 'slime)
(add-to-list 'my-default-packages 'undo-tree)
(add-to-list 'my-default-packages 'neotree)
(add-to-list 'my-default-packages 'google-translate)
(add-to-list 'my-default-packages 'mongo)
(add-to-list 'my-default-packages 'markdown-mode)
(add-to-list 'my-default-packages 'go-mode)
(add-to-list 'my-default-packages 'flymake-go)
(add-to-list 'my-default-packages 'python-pylint)

;; install package
(dolist (p my-default-packages)
  (when (not (package-installed-p p))
	(package-install p)))


;; custom file			 
(setq  custom-file (concat dotfiles-dir "/custom.el"))

;; tramp back settings
;; TODO: temps set here, time to move the my-lisps/
(setq tramp-auto-save-directory "~/.emacs.d/temp/tramp")

;; for error debug
(setq stack-trace-on-error t)

;; load my-setting
;;(add-to-list 'load-path (concat dotfiles-dir "/my-lisps"))
;;(require 'hr-total-conf)









