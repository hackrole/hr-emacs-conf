;;; rst-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (rst-minor-mode rst-mode) "rst" "rst.el" (21207
;;;;;;  17276))
;;; Generated autoloads from rst.el
 (add-to-list 'auto-mode-alist (purecopy '("\\.re?st\\'" . rst-mode)))

(autoload 'rst-mode "rst" "\
Major mode for editing reStructuredText documents.
\\<rst-mode-map>

Turning on `rst-mode' calls the normal hooks `text-mode-hook'
and `rst-mode-hook'.  This mode also supports font-lock
highlighting.

\\{rst-mode-map}

\(fn)" t nil)

(autoload 'rst-minor-mode "rst" "\
Toggle ReST minor mode.
With a prefix argument ARG, enable ReST minor mode if ARG is
positive, and disable it otherwise.  If called from Lisp, enable
the mode if ARG is omitted or nil.

When ReST minor mode is enabled, the ReST mode keybindings
are installed on top of the major mode bindings.  Use this
for modes derived from Text mode, like Mail mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("rst-pkg.el") (21207 17276 384961))

;;;***

(provide 'rst-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; rst-autoloads.el ends here
