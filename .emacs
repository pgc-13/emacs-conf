(tool-bar-mode -1)

(add-to-list 'initial-frame-alist '(fullscreen . maximized))

(setq ring-bell-function 'ignore)

(setq-default mac-right-option-modifier nil)

(load-theme 'tsdh-dark t)

(setq evil-want-C-u-scroll t)
(setq evil-want-C-i-jump nil)
(evil-mode 1)
(evil-set-undo-system 'undo-redo)

(load "server")
(unless (server-running-p) (server-start))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(dockerfile-mode markdown-mode evil magit)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
