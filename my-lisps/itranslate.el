;; code
(provide 'itranslate.el)
(require 'comint)

;; customization and buffer variables

(defgroup itranslate nil
  "interact with a google translate shell."
  :group 'processes
  :group 'unix)

(defcustom itranslate-default-source-language "en"
  "default source language to translation"
  :type 'string
  :group 'itranslate)

(defcustom itranslate-default-target-language "zh"
  "default target language to translation"
  :type 'string
  :group 'itranslate)

(defcustom itranslate-history-file nil
  "if set use this to save the history"
  :type 'string
  :group 'itranslate)

(defvar itranslate-mode-map
  (let ((map (nconc (make-sparse-keymap) comint-mode-map)))
    (define-key map "\C-c\C-f" 'itranslate-hello-command)
    map))

(defun itranslate-hello-command ()
  "echo hello"
  (message "hello itranslate"))

(define-derived-mode itranslate-mode comint-mode "itranslate"
  "major mode for interacting with a google-translate-shell."
  )