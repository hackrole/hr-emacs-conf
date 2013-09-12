;; hr keys conf
;; this will be often to improve and change
;; C-\ map
(define-prefix-command 'ctrl-L-map)
(global-set-key (kbd "C-\\") 'ctrl-L-map)
;; C-r map, for register
(define-prefix-command 'ctrl-register-map)
(global-set-key (kbd "\C-r") 'register-map)
;; M-h map, for mark
(define-prefix-command 'meta-mark-map)
(global-set-key (kbd "M-h") 'meta-mark-map)

;; for the key translate
;; redefine the ctrl-x to ctrl-q, and unset the ctrl-x
(global-set-key (kbd "C-q") ctl-x-map)
(global-unset-key (kbd "C-x"))

(global-set-key (kbd "<f8>") 'eshell)
(global-set-key (kbd "<f9>") 'w3m)
(global-set-key (kbd "\C-c <f8>") 'shell)
(global-set-key (kbd "<f7>") 'ielm)
(global-set-key (kbd "C-c <f6>") 'emms-add-playlist)
(global-set-key (kbd "<f6>") 'emms-playlist-mode-go)
(global-set-key (kbd "\C-ch") 'windmove-left)
(global-set-key (kbd "\C-cj") 'windmove-down)
(global-set-key (kbd "\C-ck") 'windmove-up)
(global-set-key (kbd "\C-cl") 'windmove-right)
(global-set-key (kbd "<f10>") 'menu-bar-mode)
(global-set-key (kbd "<f1>") 'sr-speedbar-toggle)
(global-set-key (kbd "<f2>") 'speedbar)
(global-set-key (kbd "\C-t") 'set-mark-command)
(global-set-key (kbd "\C-cB") 'eval-buffer)
(global-set-key (kbd "\C-x\C-b") 'ibuffer)

;; yasnipett
(global-set-key (kbd "\C-c y") 'yas-expand)

;; font size
;; emacs 字体大小快捷键
(global-set-key (kbd "C-c C-=") 'text-scale-increase) 
(global-set-key (kbd "C-c C--") 'text-scale-decrease)
          
;; reload file
;; 文件重加载
(global-set-key (kbd "C-c r") 'revert-buffer)
;; 覆盖buffer
(global-set-key (kbd "C-c Y") 'bury-buffer)

;; scroll
;; 一次滚动2行
(global-set-key (kbd "C-}") (lambda () (interactive) (scroll-up 2)))
(global-set-key (kbd "C-{") (lambda () (interactive) (scroll-down 2)))

;; windmove
(define-key 'ctrl-L-map (kbd "h") 'windmove-left)
(define-key 'ctrl-L-map (kbd "k") 'windmove-up)
(define-key 'ctrl-L-map (kbd "j") 'windmove-down)
(define-key 'ctrl-L-map (kbd "l") 'windmove-right)
;; (global-set-key (kbd "<M-up>") 'windmove-up)
;; (global-set-key (kbd "<M-down>") 'windmove-down)
;; (global-set-key (kbd "<M-left>") 'windmove-left)
;; (global-set-key (kbd "<M-right>") 'windmove-right)

;; org conf keys
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; set the mark keys
;; (define-key 'meta-mark-map (kbd "c") 'exchange-point-and-mark)
;; (define-key 'meta-mark-map (kbd "w") 'mark-word)
;; (define-key 'meta-mark-map (kbd "s") 'mark-sexp)
;; (define-key 'meta-mark-map (kbd "f") 'mark-defun)
;; (define-key 'meta-mark-map (kbd "p") 'mark-page)
;; (define-key 'meta-mark-map (kbd "b") 'mark-whole-buffer)

;; register 
(define-key 'ctrl-register-map (kbd "j") 'jump-to-register)
(define-key 'ctrl-register-map (kbd "r") 'point-to-register)

;; for python_koans 
;;(global-set-key (kbd "<C-return>") (lambda () (interactive) (search-forword "__")))

;; provide
(provide 'hr-keys-conf)
