;; -*- mode: elisp -*-

;; enable tab mode
(tab-bar-mode 1)

;; standard indent is 4 spaces
(setq standard-indent 4)

;; show line and column numbers
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
;; Highlight parenthesis
(show-paren-mode 1)

;; Matching parenthesis
(show-paren-mode 1)
(electric-pair-mode t)

;; default *.py to python-mode
(add-to-list 'auto-mode-alist '("\.py\'" . python-mode))

;; Disable the splash screen (to enable it agin, replace the t with 0)
(setq inhibit-splash-screen t)

;; Enable transient mark mode
(transient-mark-mode 1)

;;;;Org mode configuration
;; Enable Org mode
(require 'org)
;; Make Org mode work with files ending in .org
;; (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;; The above is the default in recent emacsen

;; Set org agenda files
(setq org-agenda-files (directory-files-recursively "~/Documents/org" "\\.org$"))

;; set key C-ca for agenda
(global-set-key "\C-ca" 'org-agenda)

;; Set todo keywords in org mode
(setq org-todo-keywords
      '((sequence "TODO" "IN-PROGRESS" "REVIEW" "DONE")))
;; Set tags
(setq org-tag-alist '(("semantiva" . ?w) ("research" . ?h) ("misc" . ?m)))
`

;; Then do all the Org setup
(with-eval-after-load 'org
  (setq org-directory "~/Documents/org")
  (setq org-default-notes-file "~/Documents/org/semantiva/notes.org"))

(defun open-semantiva-notes ()
  "Open the Semantiva notes.org file."
  (interactive)
  (find-file "~/Documents/org/semantiva/notes.org"))

(global-set-key (kbd "C-c s") #'open-semantiva-notes)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files '("~/Documents/2.org")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Use aspell as backend
(setq ispell-program-name "aspell")

;; Enable spell check in Org-mode (and text modes)
(add-hook 'org-mode-hook #'flyspell-mode)
(add-hook 'text-mode-hook #'flyspell-mode)
;; Enable identation mode
(add-hook 'org-mode-hook #'org-indent-mode)
