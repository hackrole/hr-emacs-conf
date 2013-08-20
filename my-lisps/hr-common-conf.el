;; linum mode
(global-linum-mode t)

;; highlight
(font-lock-mode t)

;; not menu-bar, tool-bar, scroll-bar
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;;bookmark
(setq bookmark-save-flag 1);;always save the bookmark
(setq bookmark-default-file "~/.emacs.d/bookmarks")

;; ibuffer
(require 'ibuffer)

;; some usefule conf
(setq visible-bell t)
(setq inhibit-startup-message t);; not show welcome screen
(setq column-number-mode t)
(setq default-tab-width 4);; default tab width
(show-paren-mode t);; TODO
(setq show-paren-style 'parentheses);; TODO

;; dired 
(setq dired-recursive-copies 'top)
(setq dired-recursive-deletes 'top)

;; default major mode
(setq default-major-mode 'text-mode)

;; not yes-no, only y-n
(defalias 'yes-or-no-p 'y-or-n-p)

;; break line , TODO no use
(setq-default truncate-lines nil)
(auto-fill-mode t)

;; set frame title
;; 设置emacs标题栏文字
(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
)

;; 编辑设置
;; tab settings
(setq default-tab-width 4)
;;(setq tab-width 4) set on the marjor-mode hook

;; back up settings
(setq make-backup-files t)
(setq auto-save-default nil)
(setq kept-old-versions 2)
(setq kept-new-version 5)
(setq delete-old-versions t)
(setq backup-directory-alist (quote (("." . "~/.emacs.d/temp/backups"))))

;; provide
(provide 'hr-common-conf)
