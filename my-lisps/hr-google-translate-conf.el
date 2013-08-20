(require 'google-translate)
(global-set-key (kbd "\C-ct") 'google-translate-at-point)
(global-set-key (kbd "\C-cT") 'google-translate-query-translate)
(setq google-translate-default-source-language "en")
(setq google-translate-default-target-language "zh-CN")

;; provide
(provide 'hr-google-translate-conf)
