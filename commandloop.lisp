(in-package :lem)

(export '(interactive-p
          add-continue-flag
          continue-flag))

(defvar *interactive-p* nil)
(defun interactive-p () *interactive-p*)

(defvar *last-flags* nil)
(defvar *curr-flags* nil)

(defvar *continue-command-flags*
  (list :next-line :kill :undo :yank :completion))

(defun add-continue-flag (keyword)
  (pushnew keyword *continue-command-flags*))

(defun %make-flags ()
  (mapcar #'(lambda (sym)
              (cons sym nil))
          *continue-command-flags*))

(defun continue-flag (flag)
  (prog1 (cdr (assoc flag *last-flags*))
    (push (cons flag t) *last-flags*)
    (push (cons flag t) *curr-flags*)))

(defun cmd-call (cmd arg)
  (run-hooks 'pre-command-hook)
  (prog1 (funcall cmd arg)
    (buffer-undo-boundary)
    (run-hooks 'post-command-hook)))

(defmacro do-commandloop (() &body body)
  `(do ((*curr-flags* (%make-flags) (%make-flags))
        (*last-flags* (%make-flags) *curr-flags*))
       (nil)
     (let ((*interactive-p* t))
       ,@body)))
