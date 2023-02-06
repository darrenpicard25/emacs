;; t = true/enabled, nil = false/disabled, 1 = enabled, -1 = disabled

;;; Startup
;;; PACKAGE LIST
(setq package-archives 
      '(("melpa" . "https://melpa.org/packages/")
        ("elpa" . "https://elpa.gnu.org/packages/")))

;; Custom file
(defvar alpha2phi/custom-file (expand-file-name "custom.el" user-emacs-directory))
;; Need to load custom file to avoid being overwritten
;; more at https://www.gnu.org/software/emacs/manual/html_node/emacs/Saving-Customizations.html
(if (file-exists-p alpha2phi/custom-file)
  (load custom-file))


;; Load in Elisp directory where custom config files live
(add-to-list 'load-path (concat user-emacs-directory "elisp"))

;;; BOOTSTRAP USE-PACKAGE
(package-initialize)

;; Set up use-package for package management
(setq use-package-always-ensure t)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile (require 'use-package))

;; Pull in custom configurations
(require 'base)
(require 'vim)
(require 'theme)
(require 'splash)
(require 'org-settings)
(require 'completion)
(require 'lang-init)
(require 'lang-rust)
(require 'lang-typescript)
(require 'workspace)
(require 'vcs)
(require 'keymapping)
