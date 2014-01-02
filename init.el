;; init dir
(defvar dotfiles-dir "~/.emacs.d")

;; ELPA 
(require 'cl)
(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)
(setq package-user-dir (concat dotfiles-dir "/elpa"))

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-default-packages
  '(ecb
	yasnippet
	auto-complete
	sr-speedbar
	color-theme
	google-translate))
(dolist (p my-default-packages)
  (when (not (package-installed-p p))
	(package-install p)))


;; add load-path
(add-to-list 'load-path dotfiles-dir)
(add-to-list 'load-path (concat dotfiles-dir "/my-lisps"))
(add-to-list 'load-path (concat dotfiles-dir "/plugins"))

;; custom file			 
(setq  custom-file (concat dotfiles-dir "/custom.el"))

;; tramp back settings
;; TODO: temps set here, time to move the my-lisps/
(setq tramp-auto-save-directory "~/.emacs.d/temp/tramp/")

;; for error debug
(setq stack-trace-on-error t)

;; load my-setting
(require 'hr-total-conf)


;; the init end here

(put 'dired-find-alternate-file 'disabled nil)
(put 'scroll-left 'disabled nil)
