;; init dir
(defvar dotfiles-dir "~/.emacs.d")

(defun plist-to-alist (the-plist)
  (defun get-tuple-form-plist (the-plist)
    (when the-plist
      (cons (car the-plist) (cadr the-plist))))
  (let ((alist '()))
    (while the-plist
      (add-to-list 'alist (get-tuple-from-plist the-plist))
      (setq the-plist (cddr the-plist)))
    alist))

;; ELPA 
(require 'cl)
(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
;; (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
;; (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)
(setq package-user-dir (concat dotfiles-dir "/elpa"))

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-default-packages '())
(add-to-list 'my-default-packages 'ecb)
(add-to-list 'my-default-packages 'yasnippet)
(add-to-list 'my-default-packages 'auto-complete)
(add-to-list 'my-default-packages 'color-theme)
(add-to-list 'my-default-packages 'go-mode)
(add-to-list 'my-default-packages 'flymake-go)
(add-to-list 'my-default-packages 'python-pep8)

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
(setq tramp-auto-save-directory "~/.emacs.d/temp/tramp")

;; for error debug
(setq stack-trace-on-error t)

;; load my-setting
(require 'hr-total-conf)


;; the init end here

(put 'dired-find-alternate-file 'disabled nil)
(put 'scroll-left 'disabled nil)
