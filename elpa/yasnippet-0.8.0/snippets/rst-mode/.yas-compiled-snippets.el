;;; Compiled snippets and support files for `rst-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'rst-mode
                     '(("chap" "${1:Chapter}\n${1:$(make-string (string-width text) ?\\=)}\n\n$0" "Chapter title" nil nil nil nil nil nil)
                       ("sec" "${1:Section}\n${1:$(make-string (string-width text) ?\\-)}\n\n$0" "Section title" nil nil nil nil nil nil)
                       ("tit" "${1:$(make-string (string-width text) ?\\=)}\n${1:Title}\n${1:$(make-string (string-width text) ?\\=)}\n\n$0\n" "Document title" nil nil nil nil nil nil)
                       ("url" "    ::\n		\n		@url  $1\n\n		@method ${2:GET}\n\n		@param\n\n			$3\n\n		@result  $0\n" "test for rest" nil nil
                        ((yas-indent-line 'fixed))
                        nil nil nil)))


;;; Do not edit! File generated at Thu Jan  9 11:43:28 2014
