;;; org-settings --- Summary:
;;; Commentary:


;;; Code:
(global-set-key (kbd "C-c a") 'org-agenda)

;; Org file and agenda locations
(setq org-agenda-files '("~/Documents/notes/todo.org")
      org-directory '("~/Documents/notes"))

;;set priority range from A to C with default A
(setq org-highest-priority ?A
      org-lowest-priority ?C
      org-default-priority ?A)

;;set colours for priorities
(setq org-priority-faces '((?A . (:foreground "#eb3a34" :weight bold))
                           (?B . (:foreground "#fc6e0f"))
                           (?C . (:foreground "#f5e107"))))

;;capture todo items using C-c c t
(define-key global-map (kbd "C-c c") 'org-capture)
(setq org-capture-templates
      '(("t" "todo" entry (file+headline "~/Documents/notes/todo.org" "Tasks")
         "* TODO [#A] %?")))

(provide 'org-settings)

;;; org-settings.el ends here
