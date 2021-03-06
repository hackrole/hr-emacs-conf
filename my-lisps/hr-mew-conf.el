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
;; .mew.el
(setq mew-ssl-verify-level 0) 
;; cache the password temporarily in momery
;;(setq mew-use-cached-passwd t) 
;; cache the password forever,due to google two steps valid
(setq mew-use-master-passwd t)

(setq mew-config-alist 
 '( 
   ("default" 
	 ("mailbox-type"	 imap) 
	 ("proto"	 "%") 
	 ("prog-ssl" "/usr/bin/mewstunnel") 
	 ("imap-ssl" nil) 
	 ("imap-server"  "imap.gmail.com") 
	 ("imap-user"	 "daipeng123456") 
	 ("imap-ssl-port" "993") 
	 ("user"   "daipeng123456") 
	 ("mail-domain"	 "gmail.com")
	 ("imap-size"	 0) 
	 ("imap-delete"	 t) 
	 ("imap-queue-folder"	"%queue") 
	 ("imap-trash-folder"	"%Trash") 
	 ("smtp-ssl" t) 
	 ("smtp-auth-list"	("PLAIN" "LOGIN" "CRAM-MD5")) 
	 ("smtp-user"	 "daipeng123456") 
	 ("smtp-server"	 "smtp.gmail.com") 
	 ("smtp-ssl-port" "465") 
	 )
   ("163"
	("name" . "daipeng45645")
	("user" . "daipeng45645")
	("mail-domain" . "163.com")
	("pop-server" . "pop.163.com")
	("pop-port" . "110")
	("pop-user" . "daipeng45645")
	("pop-auth" . pass)
	("smtp-server" . "smtp.163.com")
	("smtp-port" . "25")
	("smtp-user" . "daipeng45645")
	("smtp-auth-list" . ("PALIN" "LOGIN" "CRAM-MD5"))
	)
   ))

;; provide
(provide 'hr-mew-conf)
	
