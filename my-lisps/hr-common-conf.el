;; some usefill message
(setq user-full-name "hackrole")
(setq user-mail-address "daipeng123456@gmail.com")

;; 设置等宽字体，其实我还是比较喜欢ubuntu默认字体
;; TODO: 等寛字体对org无效
;;(set-default-font "-unknown-文泉驿等宽正黑-normal-normal-normal-*-17-*-*-*-*-0-iso10646-1")
(set-default-font "-microsoft-Consolas-normal-normal-normal-*-17-*-*-*-m-0-iso10646-1")

;; 光标显示为直线
(setq-default cursor-type 'bar)
;; 光标不闪
(blink-cursor-mode nil)

;; 显示时间
(display-time-mode t)

;; linum mode
(global-linum-mode t)

;; 高亮当前行
(require 'hl-line)
;;(global-hl-line-mode t)
;; highlight
(font-lock-mode t)

;; 关闭自动保存模式
(setq auto-save-mode t)
;; 不生成##文件
(setq auto-save-default nil)

;; 可以递归的使用minibuffer
;;(setq enable-recursive-minibuffers t)
(setq max-mini-window-height 1)

;; 行首时同时删除该行
(setq-default kill-whole-line t)

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

;; 显示行尾空白
(setq show-trailing-whitespace t)

;; set frame title
;; 设置emacs标题栏文字
(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
)

;; 编辑设置
;; tab settings
(setq default-tab-width 4)
;;(setq tab-width 4) set on the marjor-mode hook

;; bookmark settings
(setq bookmark-default-file "~/.emacs.d/conf_data/bookmarks")

;; back up settings
(setq make-backup-files t)
(setq auto-save-default nil)
(setq kept-old-versions 2)
(setq kept-new-version 5)
(setq delete-old-versions t)
(setq backup-directory-alist (quote (("." . "~/.emacs.d/temp/backups"))))

;; start the ido-mode for switch-buffer and open-file
(ido-mode 1)

;; debug error
(setq debug-on-error t)

;; provide
(provide 'hr-common-conf)
