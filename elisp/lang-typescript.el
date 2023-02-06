;;; lang-typescript --- Small configuration file for typescript DAP and LSP support

;;; Commentary:

;;; Code:
(use-package typescript-mode
             :mode ("\\.ts\\'" "\\.js\\'")
             :hook (typescript-mode . lsp-deferred)
             :config
             (defvar typescript-indent-level 2))


(provide 'lang-typescript)
;;; lang-typescript.el ends here
