;;; Compiled snippets and support files for `python-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'python-mode
					 '(("TRhand" "class ${1:`(concat (capitalize text) \"Handler\")`}(${2:tornado.web.RequestHandler}):\n	  $0" "tornado request handler" nil nil nil nil nil nil)
					   ("__" "__${init}__" "__...__" nil nil nil nil nil nil)
					   ("class" "class ${1:ClassName}(${2:object}):\n    \"\"\"$3\n    \"\"\"\n\n    def __init__(self, $4):\n        \"\"\"$5\n        ${4:$\n        (let* ((indent\n                (concat \"\\n\" (make-string (current-column) 32)))\n               (args\n                (mapconcat\n                 '(lambda (x)\n                    (if (not (string= (nth 0 x) \"\"))\n                        (concat \"- \" (char-to-string 96) (nth 0 x)\n                                (char-to-string 96) \":\")))\n                 (mapcar\n                  '(lambda (x)\n                     (mapcar\n                      (lambda (x)\n                        (replace-regexp-in-string \"[[:blank:]]*$\" \"\"\n                         (replace-regexp-in-string \"^[[:blank:]]*\" \"\" x))) x))\n                  (mapcar '(lambda (x) (split-string x \"=\"))\n                          (split-string text \",\")))\n                 indent)))\n          (if (string= args \"\")\n              (make-string 3 34)\n            (mapconcat\n             'identity\n             (list \"\" \"Arguments:\" args (make-string 3 34))\n             indent)))\n        }\n        ${4:$\n        (mapconcat\n         '(lambda (x)\n            (if (not (string= (nth 0 x) \"\"))\n                (concat \"self._\" (nth 0 x) \" = \" (nth 0 x))))\n         (mapcar\n          '(lambda (x)\n             (mapcar\n              '(lambda (x)\n                 (replace-regexp-in-string \"[[:blank:]]*$\" \"\"\n                  (replace-regexp-in-string \"^[[:blank:]]*\" \"\" x)))\n              x))\n          (mapcar '(lambda (x) (split-string x \"=\"))\n                  (split-string text \",\")))\n         (concat \"\\n\" (make-string (current-column) 32)))\n        }\n        $0" "class" nil nil nil nil nil nil)
					   ("def" "def ${1:name}($2):\n    \"\"\"$3\n    ${2:$\n      (let* \n        ((indent\n            (concat \"\\n\" (make-string (current-column) 32)))\n           (args\n            (mapconcat\n             '(lambda (x)\n                (if (not (string= (nth 0 x) \"\"))\n                    (concat \"- \" (char-to-string 96) (nth 0 x)\n                            (char-to-string 96) \":\")))\n             (mapcar\n              '(lambda (x)\n                 (mapcar\n                  '(lambda (x)\n                     (replace-regexp-in-string \"[[:blank:]]*$\" \"\"\n                      (replace-regexp-in-string \"^[[:blank:]]*\" \"\" x)))\n                  x))\n              (mapcar '(lambda (x) (split-string x \"=\"))\n                      (split-string text \",\")))\n             indent)))\n      (if (string= args \"\")\n          (make-string 3 34)\n        (mapconcat\n         'identity\n         (list \"\" \"Arguments:\" args (make-string 3 34))\n         indent)))\n    }\n    $0" "def" nil nil nil nil nil nil)
					   ("defm" "def ${1:name}(self, $2):\n    \"\"\"$3\n    ${2:$\n    (let* ((indent\n            (concat \"\\n\" (make-string (current-column) 32)))\n           (args\n            (mapconcat\n             '(lambda (x)\n                (if (not (string= (nth 0 x) \"\"))\n                    (concat \"- \" (char-to-string 96) (nth 0 x)\n                            (char-to-string 96) \":\")))\n             (mapcar\n              '(lambda (x)\n                 (mapcar\n                  '(lambda (x)\n                     (replace-regexp-in-string \"[[:blank:]]*$\" \"\"\n                      (replace-regexp-in-string \"^[[:blank:]]*\" \"\" x)))\n                  x))\n              (mapcar '(lambda (x) (split-string x \"=\"))\n                      (split-string text \",\")))\n             indent)))\n      (if (string= args \"\")\n          (make-string 3 34)\n        (mapconcat\n         'identity\n         (list \"\" \"Arguments:\" args (make-string 3 34))\n         indent)))\n    }\n    $0" "defm" nil nil nil nil nil nil)
					   ("for" "for ${var} in ${collection}:\n    $0" "for ... in ... : ..." nil nil nil nil nil nil)
					   ("head" "#!/usr/bin/env python\n#coding=utf8\n\n$1\n" "#!/python ... #coding" nil nil nil nil nil nil)
					   ("ifmain" "if __name__ == '__main__':\n    $0" "if __name__ == '__main__': ..." nil nil nil nil nil nil)
					   ("prop" "def ${1:foo}():\n   doc = \"\"\"${2:Doc string}\"\"\"\n   def fget(self):\n       return self._$1\n   def fset(self, value):\n       self._$1 = value\n   def fdel(self):\n       del self._$1\n   return locals()\n$1 = property(**$1())\n\n$0" "prop" nil nil nil nil nil nil)
					   ("propg" "def _get_${1:foo}(self):\n    return self._$1\n\n$1 = property(_get_$1)\n\n$0" "_get_foo ... foo=property(...)" nil nil nil nil nil nil)
					   ("propsg" "def _set_${1:foo}(self, value):\n    self._$1 = value\n\ndef _get_$1(self):\n    return self._$1\n\n$1 = property(_get_$1, _set_$1)\n\n$0" "_get_foo ... _set_foo ... foo=property(...)" nil nil nil nil nil nil)
					   ("pyhead" "#!/usr/bin/env python\n#coding=utf-8\n\n$0\n" "#!/usr/bin/env python ..." nil nil nil nil nil nil)
					   ("tormain" "def main():\n	application = tornado.web.Application([\n				(r\"/\", MainHandler),\n			 	(r\"/story/([0-9]+)\", StoryHandler),\n			 	])\n	application.listen(8888)\n	tornado.ioloop.IOLoop.instance().start()\n" "tornado main(): ..." nil nil nil nil nil nil)
					   ("while" "while ${condition}:\n    $0" "while ... : ..." nil nil nil nil nil nil)))


;;; Do not edit! File generated at Thu May 30 15:18:16 2013
