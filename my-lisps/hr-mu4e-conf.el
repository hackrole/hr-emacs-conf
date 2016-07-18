(require 'mu4e)
(require 'smtpmail)
(require 'starttls)

;; default
(setq mu4e-maildir "~/Mails/gmail")
(setq mu4e-drafts-folder "/[Gmail].Drafts")
(setq mu4e-sent-folder "/[Gmail].Sent Mail")
(setq mu4e-trash-folder "/[Gmail].Trash")

;; donot save mesage to Sent Mesasges.
;; Gmail/IMAP takes care of this.
(setq mu4e-sent-message-behavior 'delete)

;; setup some handy shortcuts
(setq mu4e-maildir-shortcuts
      '( ("/INBOX" . ?i)
         ("/[Gmail].Sent Mail"  . ?s)
         ("/[Gmail].Trash" . ?t)
         ("/[Gmail].All Mail" . ?a)))

;; allow for updating mail using 'U' in the main view
(setq mu4e-get-mail-command "offlineimap")

;; something about ourselves
(setq
 user-mail-address "daipeng123456@gmail.com"
 user-full-name "hackrole"
 message-signature
 (concat
  "hackrole\n"
  "Email: daipeng123456@gmail.com\n"
  "Blog: note.hackrole.com\n"
  "\n"))

;; use context for multiple account
(setq mu4e-contexts
      `( ,(make-mu4e-context
           :name "gmail"
           :match-func (lambda (_) (string-equal "home" (mu4e-context-name mu4e-context-current)))
           :enter-func '()
           :leave-func (lambda () (mu4e-clear-caches))
           :vars '((mu4e-maildir . "~/Mails/gmail")
                   (mu4e-get-mail-command . "offlineimap -a gmail")
                   (mu4e-drafts-folder . "/[Gmail].Drafts")
                   (mu4e-sent-folder "/[Gmail].Sent Mail")
                   (mu4e-trash-folder "/[Gmail].Trash")))
           ,(make-mu4e-context
             :name "bigsec"
             :match-func (lambda (msg) (mu4e-message-contact-field-matches
                                        msg :to "peng.dai@bigsec.com"))
             :enter-func '()
             :leave-func (lambda () (mu4e-clear-caches))
             :vars '((mu4e-maildir . "~/Mails/bigsec")
                     (mu4e-get-mail-command . "offlineimap -a bigsec")
                     (mu4e-draft-mail-folder . "/Drafts")
                     (mu4e-sent-folder . "Sent Messages")
                     (mu4e-trash-folder . "Deleted Messages")))
         )
)
             
;; context policy
(setq mu4e-context-policy 'ask)
(setq mu4e-compose-context-policy 'ask)
                                                                           

;; sending mail
(setq message-send-mail-function 'message-send-mail-with-sendmail)
(setq sendmail-program "/usr/local/bin/msmtp")

;; donot keep message buffers around
(setq message-kill-buffer-on-exit 1)

(provide 'hr-mu4e-conf)