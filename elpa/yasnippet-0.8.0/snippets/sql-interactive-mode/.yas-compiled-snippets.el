;;; Compiled snippets and support files for `sql-interactive-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'sql-interactive-mode
                     '(("ct" "select count(*) from $1\n" "select count(*) ..." nil nil nil nil nil nil)
                       ("cw" "select count(${0:*}) from $1 where $2;\n" "select count(*) .. where" nil nil nil nil nil nil)
                       ("d" "desc $1\n" "desc .." nil nil nil nil nil nil)
                       ("s1" "select ${0:*} from $1;\n" "select .. from ..;" nil nil nil nil nil nil)
                       ("sa" "select ${0:*} from $1 where $2 order by $3 limit $4;\n" "select .. from .. where order limit" nil nil nil nil nil nil)
                       ("show" "show databases;" "show database" nil nil nil nil nil nil)
                       ("shi" "show index from $1;\n" "show index from .." nil nil nil nil nil nil)
                       ("sht" "show create table $0\n" "show create table ..." nil nil nil nil nil nil)))


;;; Do not edit! File generated at Tue Dec 16 09:38:55 2014
