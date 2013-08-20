;;; Compiled snippets and support files for `org-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'org-mode
					 '(("make.log" "#+Title: $1\n#+Author: hackrole\n#+Email: daipeng123456@gmail.com\n#+Time: `(format-time-string \"%Y-%m-%d)`\n \n* Requirement and environment\n$2\n\n* make log\n$0" "make logs" nil nil nil nil nil nil)
					   ("nhead" "#+Author: hackrole\n#+Email: daipeng123456@gmail.com\n#+Date: `(format-time-string \"%Y-%m-%d\")`\n\n$0" "notehead" nil nil nil nil nil nil)
					   ("src" "#+BEGIN_SRC $1\n$0\n#+END" "begin_src .. end" nil nil nil nil nil nil)))


;;; Do not edit! File generated at Thu May 30 15:18:16 2013
