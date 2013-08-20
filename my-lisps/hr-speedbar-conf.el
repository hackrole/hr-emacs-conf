;; path settings
(add-to-list 'load-path "~/.emacs.d/plugins/speedbar-ext")

;; the speedbar conf
(require 'speedbar)
;; TODO: 当前有错，不可用
(require 'speedbar-extension)
(require 'sr-speedbar)

;; the keybind, see hr-keys

;; set the direction
(setq sr-speedbar-right-side nil)

;; speedbar
;; (defun hr-sr-speedbar-fun ()
;;   "load sr-speedbar if file 'speedbar-extension' already exists, else
;; message to tell user to download the plugin"
;;   (progn 
;; 	(require 'sr-speedbar)
;; 	(require 'speedbar-extension)
;; 	(setq sr-speedbar-right-side nil)))

;; (if (file-exists-p (concat "~/.emacs.d" "/plugins" "/speedbar-extension.el"))
;; 	(hr-sr-speedbar-fun)
;;   (message "speedbar-extension.el need, search the emacs wiki for it,
;; 	and put it in the load-path"))

;; provide 
(provide 'hr-speedbar-conf)
