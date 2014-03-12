;; hr emms conf
;; emacs 音乐播放配置
(add-to-list 'load-path "~/.emacs.d/plugins/emms/lisp")
(require 'emms-setup)
(emms-standard)
(emms-default-players)

;; emms dir
(setq emms-directory "~/.emacs.d/emms")

(setq emms-show-format "play: %s")
(setq emms-source-file-default-directory "~/Music/")
(setq emms-playlist-buffer-name "enjoy music")
(setq emms-repeat-playlist t)


(require 'emms-score)
(emms-score 1)
(require 'emms-i18n)
(require 'emms-history)
;; add the mplayer path
(add-to-list 'exec-path "/usr/bin/mplayer")
(require 'emms-player-mplayer)

(require 'emms-lyrics)
(emms-lyrics 1)

;; provide
(provide 'hr-emms-conf)
