;;; workspace.el --- Workspace configuration
;;; Commentary:
;; Set up workspace

;;; Code:
;; Set up projectile
(use-package projectile
  :defer 0
  :diminish projectile-mode
  :config
  (setq projectile-completion-system 'ivy)
  (projectile-global-mode)
  ; :bind-keymap
  ; ("C-c p" . projectile-command-map)
  :init
  (setq projectile-project-search-path '("~/"))
  (setq projectile-switch-project-action #'projectile-dired))

(use-package counsel-projectile
  :defer 0
  :after projectile
  ; :bind
  ; ("C-SPC" . counsel-projectile-switch-project)
  :config
  (counsel-projectile-mode))

(use-package all-the-icons)
(use-package neotree)
(setq neo-theme 'icons)

(provide 'workspace)
