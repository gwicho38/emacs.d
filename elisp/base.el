;;; base.el --- Base configuration
;;; Commentary:
;; Set up base configuration

;;; Code:
;; Set default font size
(defvar lefv/default-font-size 160)
(set-face-attribute 'default nil :height lefv/default-font-size)

;; Custom file
(defvar lefv/custom-file (expand-file-name "custom.el" user-emacs-directory))

;; Package repositories
(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; Install use-package
(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)

; (defconst private-dir  (expand-file-name "private" user-emacs-directory))
; (defconst temp-dir (format "%s/cache" private-dir) "elisp temp directories")

;; Emacs customizations
(setq custom-file                        lefv/custom-file
      make-backup-files                  nil
      display-line-numbers-type          'global
      inhibit-startup-message            t
      use-package-always-ensure          t)

;; enable word wrap
(toggle-word-wrap)
;; Keep buffers automatically up to date
(global-auto-revert-mode t)

;; Display line number
(global-display-line-numbers-mode)

;; Show matching parentheses
(show-paren-mode 1)

;; Need to load custom file to avoid being overwritten
;; more at https://www.gnu.org/software/emacs/manual/html_node/emacs/Saving-Customizations.html
(if (file-exists-p lefv/custom-file)
  (load custom-file))

;; Delete trailing whitespace before save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; helpful package
(use-package helpful)

;; command log
(use-package command-log-mode)

;; rainbow delimiters
(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(provide 'base)
;;; base.el ends here
