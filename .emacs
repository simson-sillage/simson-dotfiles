;;; no welcome screen:
(setq inhibit-startup-screen t)

;;; Disable menu, tool and scroll bar:
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;;; start scrolling before reaching end of buffer
(setq scroll-margin 5)

;;; Add personal Emacs library:
(add-to-list 'load-path "~/.emacs.d/lib/")

;;; Changes folder for backups of edited files to ~/.emacs-backups
(setq backup-directory-alist `(("." . "~/.emacs-backups")))
; auto save path
(defvar autosave-dir (concat "~/.emacs-backups" "/"))
(make-directory autosave-dir t)
(setq auto-save-file-name-transforms
            `(("\\(?:[^/]*/\\)*\\(.*\\)" ,(concat autosave-dir "\\1") t)))

;;; tabs are 4 spaces:
(setq-default tab-width 4)

;;; spaces instead of tabs:
;(setq-default indent-tabs-mode nil)

;;; Languages:
;;; Ruby
(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)

;;; C
;(setq c-default-style "bsd"
;		c-basic-offset 4)

;;; JavaScript:
;;; Indentation to 2 spaces:
(setq js-indent-level 2)

;;; Custom shortcuts:
;;; bother: spaceline doesn't show E for emacs state if evil mode is turned off
(global-set-key (kbd "<f1>") 'evil-mode) ; toggle evil mode
(global-set-key (kbd "<f12>") 'read-only-mode) ; toggle write protection

;;; re-reads file from disk if modified:
;;; But only if buffer doesn't contain unsaved changes!
(global-auto-revert-mode t)

;;; column at which emacs will wrap when filling:
(setq-default fill-column 80)

;;; show line numbers:
(require 'linum)
(global-linum-mode t)
;;; use customized linum-format: add a additional space after the line number
;;; (if not running in X) FIXME: depreceated, use hooks instead
(when (not (display-graphic-p))
  (setq linum-format
        (lambda (line) (propertize (format (let ((w (length (number-to-string (count-lines (point-min) (point-max)))))) (concat "%" (number-to-string w) "d ")) line) 'face 'linum))))

;;; Highlights characters past column 79, but only in prog-mode:
;(setq-default
; whitespace-line-column 80
; whitespace-style       '(face lines-tail))
;(add-hook 'prog-mode-hook #'whitespace-mode)

;;; move through wrapped lines like they are real lines:
(global-visual-line-mode 1)
(setq-default line-move-visual t)

;;; Set Color Scheme:
(load-theme 'adwaita t)
;;; changes color of line numbers:
(set-face-foreground 'linum "gray")

;;; Adds Melpa package repository:
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;;; Package specific option:
;;; Spaceline
;;; Activate space line (modern looking line mode theme):
(require 'spaceline-config)
(spaceline-spacemacs-theme)

;;; Evil
;;; Activates vim like controls:
(evil-mode 1)
;; Make evil-mode up/down operate in screen lines instead of logical lines
(define-key evil-motion-state-map "j" 'evil-next-visual-line)
(define-key evil-motion-state-map "k" 'evil-previous-visual-line)
(define-key evil-visual-state-map "j" 'evil-next-visual-line)
(define-key evil-visual-state-map "k" 'evil-previous-visual-line)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; GNU-Emacs
;;; ---------
;;; load ~/.gnu-emacs or, if not exists /etc/skel/.gnu-emacs
;;; For a description and the settings see /etc/skel/.gnu-emacs
;;; ... for your private ~/.gnu-emacs your are on your one.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; commented out because it overwrites my stuff:
;(if (file-readable-p "~/.gnu-emacs")
;  (load "~/.gnu-emacs" nil t))

;;Preload org-install
(load "~/.emacs.d/.cfg/org-init.el" t t)

;; Custum Settings
;; ===============
;; To avoid any trouble with the customization system of GNU emacs
;; we set the default file ~/.gnu-emacs-custom
(setq custom-file "~/.emacs.d/.cfg/gnu-emacs-custom")
(load "~/.emacs.d/.cfg/gnu-emacs-custom" t t)
;;;
