(add-to-list 'custom-theme-load-path "~/.config/emacs/themes/")
;; load monokai theme 
(load-theme 'monokai t)

;; no startup message
(setq inhibit-startup-message t)

;; show line and column numbers
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
;; Highlight parenthesis
(show-paren-mode 1)

;; standard indent is 4 spaces
(setq standard-indent 4)

;; Matching parenthesis
(show-paren-mode 1)
(electric-pair-mode t)

;; default *.py to python-mode
(add-to-list 'auto-mode-alist '("\.py\'" . python-mode))

(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-clang-arguments '("-std=c++11"))
 '(package-selected-packages
   '(treemacs cpputils-cmake ## company-irony company jedi-core cmake-mode))
 '(safe-local-variable-values
   '((company-clang-arguments "-I/home/deros/Desktop/sandiaFactory/include/"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Enable company
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

;; Use company with clang
(require 'cc-mode)
(setq company-backends (delete 'company-semantic company-backends))
(define-key c-mode-map  [(tab)] 'company-complete)
(define-key c++-mode-map  [(tab)] 'company-complete)

;; enable jedi complete'
(defun my/python-mode-hook ()
  (add-to-list 'company-backends 'company-jedi))

(add-hook 'python-mode-hook 'my/python-mode-hook)

;; treemacs
(with-eval-after-load 'treemacs
  (define-key treemacs-mode-map [mouse-1] #'treemacs-single-click-expand-action))
