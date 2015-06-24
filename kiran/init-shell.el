
;; set zsh as shell in emacs
(setenv "ESHELL" "/bin/zsh")
(setenv "SHELL" "/bin/zsh")

;; bash completion for emacs shell
(autoload 'bash-completion-dynamic-complete
  "bash-completion"
  "BASH completion hook")
(add-hook 'shell-dynamic-complete-functions
  'bash-completion-dynamic-complete)
(add-hook 'shell-command-complete-functions
  'bash-completion-dynamic-complete)

(setenv "PAGER" "cat")

(add-hook 'eshell-mode-hook
          (lambda ()
            ;; The 'ls' executable requires the Gnu version on the Mac
            (let ((ls (if (file-exists-p "/usr/local/bin/gls")
                          "/usr/local/bin/gls"
                        "/bin/ls")))
              (eshell/alias "ll" (concat ls " -AlohG --color=always")))))


(setq eshell-cmpl-cycle-completions nil
      eshell-save-history-on-exit t
      eshell-cmpl-dir-ignore "\\`\\(\\.\\.?\\|CVS\\|\\.svn\\|\\.git\\)/\\'")

;; git status
(defun eshell/gst (&rest args)
    (magit-status (pop args) nil)
    (eshell/echo))

;; git diff
(defalias 'gd 'magit-diff-unstaged)
(defalias 'gds 'magit-diff-staged)

(defun eshell/ef (filename &optional dir)
  "Searches for the first matching filename and loads it into a
file to edit."
  (let* ((files (eshell/f filename dir))
         (file (car (s-split "\n" files))))
    (find-file file)))

(provide 'init-shell)
;;; init-shell.el ends here
