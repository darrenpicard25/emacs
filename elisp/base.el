;;; base.el --- Summary
;;; Commentary:

;;; Code:

;; Set default font size
(defvar alpha2phi/default-font-size 100)
(set-face-attribute 'default nil :height alpha2phi/default-font-size)

(global-display-line-numbers-mode)
(show-paren-mode 1)
(setq make-backup-files nil)

;; Delete trailing whitespace before save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(provide 'base)
;;; base.el ends here
