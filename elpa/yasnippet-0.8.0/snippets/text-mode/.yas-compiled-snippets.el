;;; Compiled snippets and support files for `text-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'text-mode
					 '(("email" "`(replace-regexp-in-string \"@\" \"@NOSPAM.\" user-mail-address)`" "(user's email)" nil nil nil nil nil nil)
					   ("gae_app" "application: $1\nversion: ${2:default 1}\nruntime: ${3:default python}\napi_version: ${4:default 1}\n\nhandlers:\n$0\n" "gae_app.yaml" nil nil nil nil nil nil)
					   ("gae_h" "- urls: $1\n  script: $2\n\n$0\n" "gae_app.yaml handler" nil nil nil nil nil nil)
					   ("time" "`(current-time-string)`" "(current time)" nil nil nil nil nil nil)))


;;; Do not edit! File generated at Tue Dec 24 16:37:07 2013
