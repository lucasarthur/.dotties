;; -*- lexical-binding: t; -*-

(defun lsp-booster--advice-json-parse (old-fn &rest args)
  (or
   (when (equal (following-char) ?#)
     (let ((bytecode (read (current-buffer))))
       (when (byte-code-function-p bytecode)
         (funcall bytecode))))
   (apply old-fn args)))

(defun lsp-booster--advice-final-command (old-fn cmd &optional test?)
  (defvar lsp-use-plists)
  (let ((orig-result (funcall old-fn cmd test?)))
    (if (and (not test?)
             (not (file-remote-p default-directory))
             lsp-use-plists
             (not (functionp 'json-rpc-connection))
             (executable-find "emacs-lsp-booster"))
        (progn
          (when-let ((command-from-exec-path (executable-find (car orig-result))))
            (setcar orig-result command-from-exec-path))
          (message "Using emacs-lsp-booster for %s!" orig-result)
          (cons "emacs-lsp-booster" orig-result))
      orig-result)))

(defun lsp-booster--get-json-fn ()
  (if (progn (require 'json)
             (fboundp 'json-parse-buffer))
      'json-parse-buffer
    'json-read))

(defun lsp-booster-setup ()
  (advice-add (lsp-booster--get-json-fn) :around #'lsp-booster--advice-json-parse)
  (advice-add 'lsp-resolve-final-command :around #'lsp-booster--advice-final-command))

(provide 'lsp-booster)
