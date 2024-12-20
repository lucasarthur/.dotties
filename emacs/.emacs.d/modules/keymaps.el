;; -*- lexical-binding: t; -*-

(require 'functions)

(keymap-global-set "C-s" 'isearch-forward-regexp)
(keymap-global-set "C-r" 'isearch-backward-regexp)
(keymap-global-set "C-M-s" 'isearch-forward)
(keymap-global-set "C-M-r" 'isearch-backward)
(keymap-global-set "C-c /" 'query-replace-global)
(keymap-global-set "M-%" 'query-replace-regexp)
(keymap-global-set "M-|" 'align-regexp)
(keymap-global-set "C-c M-/" 'hippie-expand)
(keymap-global-set "C-;" 'comment-line)
(keymap-global-set "C-c <left>" 'windmove-swap-states-left)
(keymap-global-set "C-c <right>" 'windmove-swap-states-right)
(keymap-global-set "C-c <up>" 'windmove-swap-states-up)
(keymap-global-set "C-c <down>" 'windmove-swap-states-down)
(keymap-global-set "C-c k a" 'kill-all-buffers)
(keymap-global-set "C-c k o" 'kill-other-buffers)
(keymap-global-set "C-c f p" 'find-file-at-point)
(keymap-global-set "C-c g h" (lambda () (interactive) (cd "~")))

(provide 'keymaps)
