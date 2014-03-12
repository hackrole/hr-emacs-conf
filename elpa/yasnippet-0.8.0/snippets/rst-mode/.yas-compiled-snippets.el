;;; Compiled snippets and support files for `rst-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'rst-mode
                     '(("chap" "${1:Chapter}\n${1:$(make-string (string-width text) ?\\=)}\n\n$0" "Chapter title" nil nil nil nil nil nil)
                       ("param" ":$1:    $2\n" "rst dd/dt list" nil nil
                        ((yas-indent-line 'fixed))
                        nil nil nil)
                       ("sec" "${1:Section}\n${1:$(make-string (string-width text) ?\\-)}\n\n$0" "Section title" nil nil nil nil nil nil)
                       ("tit" "${1:$(make-string (string-width text) ?\\=)}\n${1:Title}\n${1:$(make-string (string-width text) ?\\=)}\n\n$0\n" "Document title" nil nil nil nil nil nil)
                       ("url" "\nurl\n    /index.php?r=$1\n\nmethod\n    ${2:GET}\n\nparamter\n    $3\n\nresult\n    $4\n\n$0\n" "rst url name list" nil nil
                        ((yas-indent-line 'fixed))
                        nil nil nil)))


;;; Do not edit! File generated at Mon Jan 13 11:23:11 2014
