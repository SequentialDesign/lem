(in-package :lem)

(define-key *global-keymap* "C-x C-c" 'exit-lem)
(define-key *global-keymap* "C-g" 'keyboard-quit)
(define-key *global-keymap* "Escape" 'escape)
(define-key *global-keymap* "NopKey" 'nop-command)
(define-key *global-keymap* "M-~" 'unmark-buffer)
(define-key *global-keymap* "C-x C-q" 'toggle-read-only)
(define-key *global-keymap* "C-q" 'quoted-insert)
(define-key *global-keymap* "Return" 'newline)
(define-key *global-keymap* "C-o" 'open-line)
(define-key *global-keymap* "C-d" 'delete-next-char)
(define-key *global-keymap* "Delete" 'delete-next-char)
(define-key *global-keymap* "C-h" 'delete-previous-char)
(define-key *global-keymap* "Backspace" 'delete-previous-char)
(define-key *global-keymap* "M-w" 'copy-region)
(define-key *global-keymap* "C-w" 'kill-region)
(define-key *global-keymap* "C-k" 'kill-line)
(define-key *global-keymap* "C-y" 'yank)
(define-key *global-keymap* "M-y" 'yank-pop)
(define-key *global-keymap* "C-n" 'next-line)
(define-key *global-keymap* "Down" 'next-line)
(define-key *global-keymap* "C-p" 'previous-line)
(define-key *global-keymap* "Up" 'previous-line)
(define-key *global-keymap* "C-f" 'forward-char)
(define-key *global-keymap* "Right" 'forward-char)
(define-key *global-keymap* "C-b" 'backward-char)
(define-key *global-keymap* "Left" 'backward-char)
(define-key *global-keymap* "M-<" 'move-to-beginning-of-buffer)
(define-key *global-keymap* "M->" 'move-to-end-of-buffer)
(define-key *global-keymap* "C-a" 'move-to-beginning-of-line)
(define-key *global-keymap* "Home" 'move-to-beginning-of-line)
(define-key *global-keymap* "C-e" 'move-to-end-of-line)
(define-key *global-keymap* "End" 'move-to-end-of-line)
(define-key *global-keymap* "C-v" 'next-page)
(define-key *global-keymap* "PageDown" 'next-page)
(define-key *global-keymap* "M-v" 'previous-page)
(define-key *global-keymap* "PageUp" 'previous-page)
(define-key *global-keymap* "C-x ]" 'next-page-char)
(define-key *global-keymap* "C-x [" 'previous-page-char)
(define-key *global-keymap* "C-x C-o" 'delete-blank-lines)
(define-key *global-keymap* "M-Space" 'just-one-space)
(define-key *global-keymap* "M-^" 'delete-indentation)
(define-key *global-keymap* "C-t" 'transpose-characters)
(define-key *global-keymap* "M-m" 'back-to-indentation-command)
(define-key *global-keymap* "C-\\" 'undo)
(define-key *global-keymap* "C-_" 'redo)
(define-key *global-keymap* "C-@" 'mark-set)
(define-key *global-keymap* "C-Space" 'mark-set)
(define-key *global-keymap* "C-x C-x" 'exchange-point-mark)
(define-key *global-keymap* "C-x h" 'mark-set-whole-buffer)
(define-key *global-keymap* "M-g" 'goto-line)
(define-key *global-keymap* "C-x #" 'filter-buffer)
(define-key *global-keymap* "C-x @" 'pipe-command)

(define-key *global-keymap* "C-x C-f" 'find-file)
(define-key *global-keymap* "C-x C-r" 'read-file)
(define-key *global-keymap* "C-x C-s" 'save-current-buffer)
(define-key *global-keymap* "C-x C-w" 'write-file)
(define-key *global-keymap* "C-x Tab" 'insert-file)
(define-key *global-keymap* "C-x s" 'save-some-buffers)

(define-key *global-keymap* "C-x b" 'select-buffer)
(define-key *global-keymap* "C-x k" 'kill-buffer)
(define-key *global-keymap* "C-x Left" 'previous-buffer)
(define-key *global-keymap* "C-x Right" 'next-buffer)
(define-key *global-keymap* "C-l" 'recenter)
(define-key *global-keymap* "C-x 2" 'split-active-window-vertically)
(define-key *global-keymap* "C-x 3" 'split-active-window-horizontally)
(define-key *global-keymap* "C-x o" 'other-window)
(define-key *global-keymap* "M-o" 'other-window-or-split-window)
(define-key *global-keymap* "C-x 1" 'delete-other-windows)
(define-key *global-keymap* "C-x 0" 'delete-active-window)
(define-key *global-keymap* "C-x ^" 'grow-window)
(define-key *global-keymap* "C-x C-z" 'shrink-window)
(define-key *global-keymap* "C-x }" 'grow-window-horizontally)
(define-key *global-keymap* "C-x {" 'shrink-window-horizontally)
(define-key *global-keymap* "C-Down" 'scroll-down)
(define-key *global-keymap* "M-Down" 'scroll-down)
(define-key *global-keymap* "C-Up" 'scroll-up)
(define-key *global-keymap* "M-Up" 'scroll-up)
(define-key *global-keymap* "C-x 4 f" 'find-file-other-window)
(define-key *global-keymap* "C-x 4 r" 'read-file-other-window)
(define-key *global-keymap* "C-x 4 b" 'select-buffer-other-window)

(define-key *global-keymap* "M-f" 'forward-word)
(define-key *global-keymap* "C-Right" 'forward-word)
(define-key *global-keymap* "M-b" 'previous-word)
(define-key *global-keymap* "C-Left" 'previous-word)
(define-key *global-keymap* "M-d" 'delete-word)
(define-key *global-keymap* "C-Delete" 'delete-word)
(define-key *global-keymap* "C-M-h" 'backward-delete-word)
(define-key *global-keymap* "M-Backspace" 'backward-delete-word)
(define-key *global-keymap* "C-Backspace" 'backward-delete-word)
(define-key *global-keymap* "C-x C-l" 'downcase-region)
(define-key *global-keymap* "C-x C-u" 'uppercase-region)
(define-key *global-keymap* "M-c" 'capitalize-word)
(define-key *global-keymap* "M-l" 'lowercase-word)
(define-key *global-keymap* "M-u" 'uppercase-word)
(define-key *global-keymap* "M-}" 'forward-paragraph)
(define-key *global-keymap* "M-{" 'backward-paragraph)
(define-key *global-keymap* "M-k" 'kill-paragraph)
(define-key *global-keymap* "M-=" 'count-words)

(define-key *global-keymap* "C-M-f" 'forward-sexp)
(define-key *global-keymap* "C-M-b" 'backward-sexp)
(define-key *global-keymap* "C-M-n" 'forward-list)
(define-key *global-keymap* "C-M-p" 'backward-list)
(define-key *global-keymap* "C-M-d" 'down-list)
(define-key *global-keymap* "C-M-u" 'backward-up-list)
(define-key *global-keymap* "C-M-@" 'mark-sexp)
(define-key *global-keymap* "C-M-k" 'kill-sexp)
(define-key *global-keymap* "C-M-t" 'transpose-sexps)
(define-key *global-keymap* "C-M-y" 'kill-around-form)

(define-key *global-keymap* "C-x ?" 'describe-key)
(define-key *global-keymap* "M-x" 'execute-command)
