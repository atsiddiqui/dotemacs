(add-to-list 'load-path "~/emacs.d")

;;enable syntax highlight by default
(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)
(setq font-lock-maximum-size nil)

;;disable line wrapping
(setq-default truncate-lines t)

;;disable autosave and backup
(setq auto-save-default nil)
(setq make-backup-files nil)

;; Force to use spaces for tabs and to be 3 spaces
(setq-default indent-tabs-mode nil)


;; Add customize color theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(background-color "green")
 '(background-mode dark)
 '(cursor-color nil)
 '(custom-safe-themes (quote ("1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" default)))
 '(foreground-color "blue"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Set Default color-theme
(load "~/.emacs.d/themes/color-theme-solarized.el")
(require 'color-theme-solarized)
(color-theme-solarized-dark)

;; Open Emacs in Fullscreen without the Toolbar
(defun mac-toggle-max-window ()
  (interactive)
  (set-frame-parameter nil 'fullscreen (if (frame-parameter nil 'fullscreen)
                                           nil
					 'fullboth)))
(tool-bar-mode -1)
(menu-bar-mode -1) 
(mac-toggle-max-window)
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(display-battery-mode)

;; Tiny Customizations
(global-hl-line-mode )                               ; Highlight the current line
(setq show-trailing-whitespace t)                    ; Highlight whitespaces
(savehist-mode 1)                                    ; Save the history

;; Font
(set-default-font "DejaVu Sans Mono-9")

;; automatic indentation
 (global-set-key "\C-m" 'newline-and-indent)

(setq c-default-style "bsd"
            c-basic-offset 4)

;; Python


