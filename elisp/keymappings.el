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
    "rb" '(org-roam-buffer-toggle :which-key "buffer")
    "rf" '(org-roam-node-find :which-key "find")
    "ri" '(org-roam-node-insert :which-key "insert")
    "rI" '(org-roam-node-insert-immediate :which-key "insert immediate")
    "rF" '(lefv/org-roam-find-project :which-key "find project")
    "rt" '(lefv/org-roam-capture-task :which-key "capture task")
    "rI" '(lefv/org-roam-capture-inbox :which-key "capture inbox")
    "rd" '(:ignore t :which-key "dailies")
    "rdt" '(org-roam-dailies-capture-today :which-key "capture today")
    "rdy" '(org-roam-dailies-capture-yesterday :which-key "capture yesterday")
    "rdT" '(org-roam-dailies-capture-tomorrow :which-key "capture tomorrow")

    ;;"obt" '(org-babel-tangel :which-key "org babel tangel")

    "w"  '(:ignore t :which-key "window")
    "wt" '(eshell :which-key "eshell")
    "wb" '(split-window-below :which-key "split window below")
    "wr" '(split-window-right :which-key "split window right")

    ))

(provide 'keymappings)
;;; keymappings.el ends here
