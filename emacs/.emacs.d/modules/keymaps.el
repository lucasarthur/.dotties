(require 'functions)

(keymap-global-set "C-s" 'isearch-forward-regexp)
(keymap-global-set "C-r" 'isearch-backward-regexp)
(keymap-global-set "C-M-s" 'isearch-forward)
(keymap-global-set "C-M-r" 'isearch-backward)
(keymap-global-set "M-|" 'align-regexp)
(keymap-global-set "M-/" 'hippie-expand)
(keymap-global-set "C-<return>" 'start-line-down)
(keymap-global-set "C-S-<return>" 'start-line-above)
(keymap-global-set "C-;" 'comment-line)
(keymap-global-set "C-," 'duplicate-line)
(keymap-global-set "C-c <left>" 'windmove-swap-states-left)
(keymap-global-set "C-c <right>" 'windmove-swap-states-right)
(keymap-global-set "C-c <up>" 'windmove-swap-states-up)
(keymap-global-set "C-c <down>" 'windmove-swap-states-down)
(keymap-global-set "C-c k a" 'kill-all-buffers)
(keymap-global-set "C-c k o" 'kill-other-buffers)
(keymap-global-set "C-c f p" 'find-file-at-point)
(keymap-global-set "C-c s c" 'shell-command)
(keymap-global-set "C-c s a" 'async-shell-command)
(keymap-global-set "C-c c" 'compile)
(keymap-global-set "C-c /" 'query-replace-global)
(keymap-global-set "M-%" 'anzu-query-replace)

(provide 'keymaps)
