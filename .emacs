(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(setq inhibit-startup-message t)
(tool-bar-mode -1)
(tooltip-mode -1)
(menu-bar-mode -1)

(require 'js2-refactor)
(add-hook 'js2-mode-hook #'js2-refactor-mode)
(js2r-add-keybindings-with-prefix "C-c C-m")

(require 'semantic)
(global-semanticdb-minor-mode 1)
(global-semantic-idle-scheduler-mode 1)
(semantic-mode 1)
(semantic-enable)

(setq semantic-new-buffer-setup-functions
      (remove-if (lambda (buffer-setup-function)
                   (member (car buffer-setup-function)
                           '(python-mode html-mode)))
                 semantic-new-buffer-setup-functions))

(remove-hook 'python-mode-hook 'wisent-python-default-setup)

(add-to-list 'custom-theme-load-path "~/.emacs.d/emacs-themes/")
(load-theme 'melancholy t)




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(js2-refactor js2-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "#333333" :foreground "#DEDEDE" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 101 :width normal :foundry "unknown" :family "Input")))))

