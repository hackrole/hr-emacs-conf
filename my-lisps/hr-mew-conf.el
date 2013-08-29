;; mew for email send and receive
;; add mew to load path. ugly now.
;; TODO: beautiful it
(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/mew")
(autoload 'mew "mew" nil t)
(autoload 'mew-send "mew" nil t)
(if (boundp 'read-mail-command)
	(setq read-mail-command 'mew))
(autoload 'mew-user-agent-compose "mew" nil t)
(if (boundp 'mail-user-agent)
	(setq mail-user-agent 'mew-user-agent))
(if (fboundp 'define-mail-user-agent)
	(define-mail-user-agent
	  'mew-user-agent
	  'mew-user-agent-compose
	  'mew-draft-send-message
	  'mew-draft-kill
	  'mew-send-hook))

;; set mailbox list
(setq mew-config-alist
	  '(
		;; default gmail
		(default
		  (mailbox-type imap)
		  (proto "%")
		  (name "hackrole")
		  (user "daipeng123456")
		  (mail-domain "gmail.com")
		  (imap-server "imap.gmail.com")
		  (imap-user "daipeng123456@gmail.com")
		  (imap-auth t)
		  (imap-ssl t)
		  (imap-ssl-port 993)
		  (imap-size 0)
		  (imap-delete t)
		  (imap-queue-folder "%queue")
		  (imap-trash-folder "%Trash")
		  (smtp-ssl t)
		  (smtp-ssl-port 587)
		  (smtp-auth t)
		  (smtp-auth-list ("PLAIN" "LOGIN" "CRAM-MD5"))
		  (smtp-user "daipeng123456@gmail.com")
		  (smtp-server "smtp.gmail.com"))
		;; todo others
))

;; provide
;;(provide 'hr-mew-conf)
	
