(add-hook 'sql-interactive-mode-hook
		  '(lambda ()
			  (auto-complete-mode t)
			 ))
(add-hook 'sql-mode-hook
		  '(lambda ()
			  (auto-complete-mode t)
			 ))

;; provide
(provide 'hr-sql-conf)
