
(autoload 'run-prolog "prolog" "Start a Prolog sub-process." t)

(autoload 'prolog-mode "prolog" "Major mode for editing Prolog programs." t)

(autoload 'mercury-mode "prolog" "Major mode for editing Mercury programs." t)

(setq prolog-system 'swi)

(setq auto-mode-alist (append '(("\\.pl$" . prolog-mode)
                                ("\\.m$" . mercury-mode))
                               auto-mode-alist))

(use-package edi-prolog
  :defer t
  :bind ([f10] . ediprolog-dwim))

(provide 'init-prolog)
;;; init-prolog.el ends here
