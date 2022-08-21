
(defvar ediff-window-setup-functin 'ediff-setup-windows-plain)

(use-package magit
;;  :bind ("C-x g s" . magit-status)
  :ensure t)

(use-package forge :after magit)

(provide 'init-vcs)
