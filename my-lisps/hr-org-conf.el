;; Standard key bindings, 
;; TO SEE the hr-keys-conf

;; set org-agenda
(setq org-agenda-files '("~/.org/learn.org"
						 "~/.org/read.org"
						 "~/.org/life.org"))

;; set keys
(add-hook 'org-mode-hook (lambda ()
                           (setq tab-always-indent nil)
						   (local-set-key (kbd "C-.") 'org-time-stamp)
						   (local-set-key (kbd "C-,") 'org-time-stamp-inactive)))
						   
;; provide
(provide 'hr-org-conf)
