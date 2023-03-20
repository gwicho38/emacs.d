;;; keymappings.el --- Key mappings
;;; Commentary:
;;; General key mappings


;;; Code:
(use-package general
  :after evil
  :config
  (general-create-definer lefv/leader-keys
    :keymaps '(normal insert visual emacs)
    :prefix "SPC"
    :global-prefix "C-SPC")

  (lefv/leader-keys
    "t"  '(:ignore t :which-key "theme")
    "tt" '(counsel-load-theme :which-key "choose theme")

    "p"  '(:ignore t :which-key "project")
    "pp" '(counsel-projectile-switch-project :which-key "choose project")
    "pc" '(projectile-command-map :which-key "choose action")

    "f"  '(:ignore t :which-key "find")
    "ff" '(counsel-fzf :which-key "fuzzy find")
    "fb" '(switch-to-buffer :which-key "switch buffer")
    "fx" '(counsel-M-x :which-key "M-x")
    "ft" '(treemacs :which-key "neotree")
    "fd" '(dired :which-key "dired")
    "fr" '(revert-buffer :which-key "revert-buffer")
    "fs" '(save-buffer :which-key "save-buffer")
    "fm" '(imenu :which-key "imenu")

    "g"  '(:ignore t :which-key "git")
    "gs" '(magit-status :which-key "git status")

    "d"  '(:ignore t :which-key "debug")
    "dd" '(dap-debug :which-key "start debugging")
    "dba" '(dap-breakpoint-add :which-key "add breakpoint")
    "dbd" '(dap-breakpoint-delete :which-key "delete breakpoint")
    "dr" '(dap-ui-repl :which-key "repl")
    "du" '(dap-ui-mode :which-key "ui")

    "h"  '(:ignore t :which-key "helpful")
    "hv" '(helpful-variable :which-key "helpful variable")
    "hC" '(helpful-callable :which-key "helpful callable")
    "hk" '(helpful-key :which-key "helpful key")
    "hp" '(helpful-at-point :which-key "helpful at point")
    "hf" '(helpful-function :which-key "helpful function")
    "hc" '(helpful-command :which-key "helpful command")

    "o"  '(:ignore t :which-key "org mode")
    "oa" '(org-agenda :which-key "org agenda")
    "ot" '(counsel-org-tag :which-key "org tag")
    "ose" '(org-set-effort :which-key "org set effort")
    "oc" '(org-capture :which-key "org capture")

    "r"  '(:ignore t :which-key "roam")
    "rb" '(:ignore t :which-key "buffer")
    "rbt" '(org-roam-buffer-toggle :which-key "toggle")
    "rbi" '(org-roam-node-insert :which-key "insert")
    "rbI" '(org-roam-node-insert-immediate :which-key "insert immediate")
    "rf" '(:ignore t :which-key "find")
    "rfn" '(org-roam-node-find :which-key "find")
    "rfp" '(lefv/org-roam-find-project :which-key "project")
    "rc" '(:ignore t :which-key "capture")
    "rct" '(lefv/org-roam-capture-task :which-key "capture task")
    "rci" '(lefv/org-roam-capture-inbox :which-key "capture inbox")
    "rcd" '(org-roam-dailies-capture-today :which-key "capture today")
    "rcy" '(org-roam-dailies-capture-yesterday :which-key "capture yesterday")
    "rct" '(org-roam-dailies-capture-tomorrow :which-key "capture tomorrow")

    ;;"obt" '(org-babel-tangel :which-key "org babel tangel")

    "w"  '(:ignore t :which-key "window")
    "wt" '(eshell :which-key "eshell")
    "wh" '(split-window-below :which-key "horizontal")
    "wv" '(split-window-right :which-key "vertical")

    "m" '(:ignore t :which-key "mark")
    "ml" '(list-bookmarks :which-key "list")
    "ms" '(bookmark-set-no-overwrite :which-key "set")
    "mj" '(bookmark-jump :which-key "jump")
    "mS" '(bookmark-save :which-key "save")
    "md" '(bookmark-delete :which-key "delete")
    "mi" '(bookmark-insert-location :which-key "insert")
    ))

;; floating keybind definitions
;; window
(global-set-key (kbd "C-c <right>") 'evil-window-right)
(global-set-key (kbd "C-c <left>") 'evil-window-left)
(global-set-key (kbd "C-c <up>") 'evil-window-up)
(global-set-key (kbd "C-c <down>") 'evil-window-down)

(xterm-mouse-mode 1)
(provide 'keymappings)
;;; keymappings.el ends here
