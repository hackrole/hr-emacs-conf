;; cedet within emacs conf
(require 'cedet)

;; helper tools and semantic
(custom-set-variables
 '(semantic-default-submodes (quote (global-semantic-decoration-mode
									 global-semantic-idle-completions-mode
									 global-semantic-idle-scheduler-mode
									 global-semanticdb-minor-mode
									 global-semantic-idle-summary-mode
									 global-semantic-mru-bookmark-mode)))
 '(semantic-idle-scheduler-idle-time 3))

(semantic-mode t)

;; semantic/ia for smart complitions and code jumps
(require 'semantic/ia)
(setq-mode-local c-mode semanticdb-find-default-throttle
				 '(project unloaded system recursive))
(setq-mode-local c++-mode semanticdb-find-default-throttle
				 '(project unloaded system recursive))

;; include settings 
;; for c and c++ program, include the system and user header files
;; (require 'semantic/bovine/gcc)
;; (require 'semantic/bovine/c)

;; (defconst cedet-user-include-dirs
;;   (lists ".." "../include" "../inc" "../common" "../public" "."
;; 		 "../.." "../../include"))

;; (setq cedet-sys-include-dirs (list "/usr/include"
;; 								   "/usr/include/gnu"
;; 								   "/usr/local/include"))
;; (setq semantic-c-dependency-system-include-path "/usr/include")

;; tags menu, user imenu to show the fun/tags/variable
(defun my-semantic-hook ()
  (imenu-add-to-menubar "TAGS"))
(add-hook 'semantic-init-hook 'my-semantic-hook)
								   
;; semantic db save path
(setq semanticdb-default-save-directory
	  (expand-file-name "~/.emacs.d/temp/semanticdb"))

;; ede 
(global-ede-mode t)
(setq ede-project-placeholder-cache-file "~/.emacs.d/temp/ede/ede-project.el")

;; provide 
(provide 'hr-cedet-conf)
