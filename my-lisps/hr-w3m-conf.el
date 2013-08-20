;; hr w3m broswer conf
;; emacs-w3m浏览器配置

(add-to-list 'load-path "~/.emacs.d/plugins/w3m")
;;(setq w3m-icon-directory "~/.w3m/w3m/cons")
(require 'w3m)

;; set w3m as default url browser
;; 设置w3m为默认浏览器
(setq browse-url-browser-function 'w3m-browse-url)

(setq w3m-use-form t)
(setq w3m-tab-width 8)
(setq w3m-use-cookies t)
(setq w3m-use-toolbar t)
(setq w3m-use-mule-ucs t)
(setq w3m-fill-column 120)
(setq w3m-default-display-inline-image t)
(setq w3m-default-toggle-inline-images t)

;; home page
(setq w3m-home-page "http://www.google.com/ncr")

(setq w3m-view-this-url-new-session-in-background t)

;; cookie set
(setq w3m-use-cookies t)
(setq w3m-cookie-file "~/.emacs.d/temp/w3m/cookies")

;; provide
(provide 'hr-w3m-conf)

;; TODO: 乱码问题

;; make this comment if you have no a proper proxy
;; TODO: use proxy
;; (setq w3m-command-arguments-alist
;; 	  '((""
;; 		"-o"
;; 		"http_proxy=http://127.0.0.1:8087/")))
