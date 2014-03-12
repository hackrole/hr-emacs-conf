;; the speedbar conf
(require 'speedbar)

(defun hr-speedbar-key-hook ()
  "define some useful key for speedbar"
  )
(add-hook 'speedbar-mode-hook 'hr-speedbar-key-hook)

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
