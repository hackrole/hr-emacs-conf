;; conf the undo-tree minor-mode
(require 'undo-tree)
(global-undo-tree-mode 1)

;; set the keys
(defalias 'redo 'undo-tree-redo)

;; provide
(provide 'hr-undo-tree-conf)
