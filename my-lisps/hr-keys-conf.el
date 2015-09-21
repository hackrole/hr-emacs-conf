;; hr keys conf, this will be often to improve and change

;; C-\ key-map
(define-prefix-command 'ctrl-L-map)
(global-set-key (kbd "\C-\\") 'ctrl-L-map)
;(defun insert_backlash ()
  ;"use to insert a backlash"
  ;(interactive)
  ;(insert-char ?\\ 1))
;(global-set-key (kbd "C-\\") 'insert_backlash)

;; \ r key-map (register key map)
(define-prefix-command 'L-R-map)
(global-set-key (kbd "\C-\\ r") 'L-R-map)

;; register key define
(define-key 'L-R-map (kbd "r") 'point-to-register)
(define-key 'L-R-map (kbd "j") 'jump-to-register)
(define-key 'L-R-map (kbd "s") 'copy-to-register)
(define-key 'L-R-map (kbd "i") 'insert-register)
(define-key 'L-R-map (kbd "t") 'copy-rectangle-to-register)

;; for the key translate
;; redefine the ctrl-x to ctrl-q, and unset the ctrl-x
(global-set-key (kbd "C-q") ctl-x-map)
(global-unset-key (kbd "C-x"))

(global-set-key (kbd "<f8>") 'eshell)
(global-set-key (kbd "\C-c <f8>") 'shell)
(global-set-key (kbd "<f7>") 'ielm)
(global-set-key (kbd "C-c <f6>") 'emms-add-playlist)
(global-set-key (kbd "<f6>") 'emms-playlist-mode-go)
(global-set-key (kbd "<f10>") 'menu-bar-mode)
(global-set-key (kbd "<C-f2>") 'sr-speedbar-toggle)
(global-set-key (kbd "<f1>") 'speedbar)
(global-set-key (kbd "\C-cB") 'eval-buffer)
(defalias 'list-buffers 'ibuffer)

;; help command
(global-set-key (kbd "\C-h a") 'apropos)

;; search and replace keys

;; some often-use edit key
(global-set-key (kbd "\C-t") 'set-mark-command)
(global-set-key (kbd "C-d") 'kill-whole-line)
(global-set-key (kbd "<RET>") 'newline-and-indent)
(global-set-key (kbd "C-<RET>") 'newline)
(global-unset-key (kbd "C-j"))
(global-unset-key (kbd "C-<SPC>"))
(global-set-key (kbd "C-\\ j") 'join-line)

;; font size, emacs 字体大小快捷键
(global-set-key (kbd "C-c C-=") 'text-scale-increase) 
(global-set-key (kbd "C-c C--") 'text-scale-decrease)

;; easy key to split window.
(global-set-key (kbd "M-3") 'delete-other-windows)
(global-set-key (kbd "M-4") 'split-window-vertically)
(global-set-key (kbd "C-4") 'split-window-horizontally)
(global-set-key (kbd "C-3") 'delete-window)
(global-set-key (kbd "M-o") 'other-window)

;; reload file
;; 文件重加载
(global-set-key (kbd "C-\\ r") 'revert-buffer)
;; 覆盖buffer
(global-set-key (kbd "C-\\ Y") 'bury-buffer)

;; scroll
;; 一次滚动8行
(global-set-key (kbd "C-v") (lambda () (interactive) (scroll-up 8)))
(global-set-key (kbd "M-v") (lambda () (interactive) (scroll-down 8)))

;; windmove
;;(global-set-key (kbd "\\ k") 'windmove-up)
;;(global-set-key (kbd "\\ j") 'windmove-down)
;;(global-set-key (kbd "\\ h") 'windmove-left)
;;(global-set-key (kbd "\\ l") 'windmove-right)

;; org conf keys
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; provide
(provide 'hr-keys-conf)
