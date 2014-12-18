;;; Compiled snippets and support files for `org-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'org-mode
                     '(("nhead" "#+Author: hackrole\n#+Email: daipeng123456@gmail.com\n#+Date: `(format-time-string \"%Y-%m-%d\")`\n\n$0" "notehead" nil nil nil nil nil nil)
                       ("phd" "#+Author: hackrole\n#+Email: daipeng123456@gmail.com\n#+Date: `(format-time-string \"%Y-%m-%d\")`\n#+TITLE: `(format-time-string \"%Y-%m-%d\")`工作计划\n#+TODO: TODO(t!) | DONE(d!) CANCLED(c@)\n\n$0\n" "work plan head" nil nil nil nil nil nil)
                       ("src" "#+BEGIN_SRC $1\n$0\n#+END\n" "begin_src .. end" nil nil
                        ((yas/indent-line "not"))
                        nil nil nil)))


;;; Do not edit! File generated at Tue Dec 16 09:38:55 2014
