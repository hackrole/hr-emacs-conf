;; conf for doc-view mode to view pdf and others

;; disable linum-mode when in doc-view mode
(require 'linum)
(define-global-minor-mode my-global-linum-mode global-linum-mode
  (lambda ()
    (when (not (memq major-mode (list 'doc-view-mode)))
      (linum-mode t))))

(my-global-linum-mode 1)


;; provide
(provide 'hr-doc-view-conf)
