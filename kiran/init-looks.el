
;; inhibit welcome screen
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)

;; Load theme
;;(load-theme 'zenburn t)

;; Set frame font

;;;;;;;;;;;;;; Font Options ;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;;(set-frame-font "Office Code Pro 14")  ;;
;; ;;(set-frame-font "Inconsolata 13")      ;;
;; ;;(set-frame-font "M+ 1m 13")            ;;
;; ;;(set-frame-font "M+ 2m 15")            ;;
;; ;;(set-frame-font "Droid Sans Mono 13")  ;;
;; ;;(set-frame-font "DejaVu Sans Mono 13") ;;
;; ;;(set-frame-font "Fira Code 15")        ;;
;; ;;(set-frame-font "Cutive Mono 17")      ;;
;; ;;(set-frame-font "Input Mono 14")       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(set-frame-font "Source Code Pro 15")

;; Uncomment this to disable font antialiasing
;;(setq mac-allow-anti-aliasing nil)

; don't show the menu bar
(menu-bar-mode nil)

; don't show the tool bar
(require 'tool-bar)
(tool-bar-mode nil)

; don't show the scroll bar
(scroll-bar-mode -1)

; Minimal fringe
(fringe-mode 1)

;; highlight current line
(global-hl-line-mode 1)

; add any custom themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;; Syntax Highlighting
(require 'font-lock)
(setq font-lock-maximum-decoration t)
(global-font-lock-mode 1)

; set cursor color
(set-cursor-color "#636363")

;; default frame size
(add-to-list 'default-frame-alist '(left . 80))
(add-to-list 'default-frame-alist '(top . 0))
(add-to-list 'default-frame-alist '(height . 50))
(add-to-list 'default-frame-alist '(width . 90))

; display line numbers to the right of the window
;;(global-linum-mode -1)
;;(setq linum-format "%3d ")

;; set unique names for two similar buffers
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

(provide 'init-looks)
;;; init-looks.el ends here
