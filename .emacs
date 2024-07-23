(tool-bar-mode -1)

(add-to-list 'initial-frame-alist '(fullscreen . maximized))

(setq ring-bell-function 'ignore)

(setq-default mac-right-option-modifier nil)

(setq shell-file-name "/bin/bash")

;; melpa
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; evil mode
(setq evil-want-C-u-scroll t)
(setq evil-want-C-i-jump nil)
(evil-mode 1)
(evil-set-undo-system 'undo-redo)

;; doom themes
(use-package doom-themes
  :ensure t
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-one t)

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  ;; Enable custom neotree theme (all-the-icons must be installed!)
  (doom-themes-neotree-config)
  ;; or for treemacs users
  (setq doom-themes-treemacs-theme "doom-atom") ; use "doom-colors" for less minimal icon theme
  (doom-themes-treemacs-config)
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))

;; terraform mode
(require 'terraform-mode)

;; lsp-mode
(require 'lsp-mode)
(setq lsp-disabled-clients '(tfls)) ;; use hashicorp terraform-ls

;; org-mode
(org-babel-do-load-languages 'org-babel-load-languages
  '(
    (shell . t)
  )
)

;; org-roam
(setq org-roam-directory (file-truename "~/workspace/notes"))

;; emacs server
(load "server")
(unless (server-running-p) (server-start))
(add-hook 'terraform-mode-hook #'lsp)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(doom-themes org-roam terraform-mode lsp-mode dockerfile-mode markdown-mode evil magit)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
