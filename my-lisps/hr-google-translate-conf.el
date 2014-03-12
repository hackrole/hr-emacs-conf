(require 'google-translate)
(global-set-key (kbd "\C-ct") 'google-translate-at-point)
(global-set-key (kbd "\C-cT") 'google-translate-query-translate)
(setq google-translate-default-source-language "en")
(setq google-translate-default-target-language "zh-CN")

;; key set
(define-prefix-command 'google-translate-map)
(global-set-key (kbd "\\ g") 'google-translate-map)
(global-unset-key (kbd "C-c t"))
(global-unset-key (kbd "C-c T"))
(global-set-key (kbd "\\ g t") 'google-translate-at-point)
(global-set-key (kbd "\\ g q") 'google-translate-query-translate)
(global-set-key (kbd "\\ g T") 'google-translate-at-point-reverse)
(global-set-key (kbd "\\ g Q") 'google-translate-query-translate-reverse)

;; provide
(provide 'hr-google-translate-conf)
