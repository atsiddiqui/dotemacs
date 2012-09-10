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

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Open Emacs in Fullscreen without the Toolbar
(defun toggle-fullscreen (&optional f)
  (menu-bar-mode -1)
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  (interactive)
  (let ((current-value (frame-parameter nil 'fullscreen)))
    (set-frame-parameter nil 'fullscreen
			 (if (equal 'fullboth current-value)
			     (if (boundp 'old-fullscreen) old-fullscreen nil)
			   (progn (setq old-fullscreen current-value)
				  'fullboth)))))

(global-set-key [f11] 'toggle-fullscreen)

;; Make new frames fullscreen by default. Note: this hook doesn't do
;; anything to the initial frame if it's in your .emacs, since that file is
;; read _after_ the initial frame is created.
(add-hook 'after-make-frame-functions 'toggle-fullscreen)

(load "~/.emacs.d/themes/color-theme-solarized.el")
(require 'color-theme-solarized)
(color-theme-solarized-dark)

;; Set Face

;; Font
(set-default-font "Inconsolata-11")

;; automatic indentation
 (global-set-key "\C-m" 'newline-and-indent)

(setq c-default-style "bsd"
            c-basic-offset 4)

;; Other Customization
;; (global-hl-line-mode )
(setq show-trailing-whitespace t)
(global-font-lock-mode 1)

(load "~/.emacs.d/highlight-current-line.el")
(require 'highlight-current-line)
(highlight-current-line-on t)
(set-face-background 'highlight-current-line-face "light yellow")

;; auto-complition
(add-to-list 'load-path "~/.emacs.d/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)

;; Mouse

;; PHP
;; Toggle between PHP & HTML Helper mode.  Useful when working on
;; php files, that can been intertwined with HTML code
(defun toggle-php-html-mode ()
    (interactive)
    "Toggle mode between PHP & HTML Helper modes"
    (cond ((string= mode-name "HTML helper")
           (php-mode))
          ((string= mode-name "PHP")
           (html-helper-mode))))

(global-set-key [f5] 'toggle-php-html-mode)

(defconst ezsystems-php-style
  ;; Always indent c/c++ sources, never insert tabs
  '((c-tab-always-indent        . t)
    (c-basic-offset . 4)
    ;; Offset for line only comments
    (c-comment-only-line-offset . 0)
    ;; Controls the insertion of newlines before and after braces.
    (c-hanging-braces-alist     . ((substatement-open after)
                                   (brace-list-open)))
    ;; Controls the insertion of newlines before and after certain colons.
    (c-hanging-colons-alist     . ((member-init-intro before)
                                   (inher-intro)
                                   (case-label after)
                                   (label after)
                                   (access-label after)))
    ;; List of various C/C++/ObjC constructs to "clean up".
    (c-cleanup-list             . (scope-operator
                                   empty-defun-braces
                                   defun-close-semi))
    ;; Association list of syntactic element symbols and indentation offsets.
    (c-offsets-alist            . (
                                   (arglist-close . c-lineup-arglist)
                                   (substatement-open . 0)
                                   (case-label        . +)
                                   (block-open        . 0)
                                   (access-label      . -)
                                   (label              . 0)
                                   (knr-argdecl-intro . -)
                                   (inline-open . 0)))
    )
  "eZ systems PHP Programming Style")


;; Python


