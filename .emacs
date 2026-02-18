(let ((custom-file "~/.emacs.custom.el"))
  (when (file-exists-p custom-file)
    (load-file custom-file)))



(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;(unless (package-installed-p 'use-package)
;  (package-install 'use-package))

;(setq use-package-always-ensure t)

(defun package-exists(pkg)
  "checa se pacote existe se nao existir instala."
  (unless (package-installed-p pkg)
    (package-install pkg)))


(defvar packages '(company lsp-mode php-mode flycheck ))



(dolist (package packages)
  (package-exists package))



(load-theme 'monokai t)


(tool-bar-mode 0)
(menu-bar-mode 1)
(scroll-bar-mode 0)
(column-number-mode 1)
(show-paren-mode 1)
(global-display-line-numbers-mode 1)
(delete-selection-mode 1)

(setq initial-scratch-message nil)
(setq inhibit-startup-screen t)
(setq inhibit-startup-message t)
(setq ring-bell-function 'ignore)




(setq-default tab-width 3)
(setq-default indent-tabs-mode nil)


;;(setq-default tab-width 3
;;              indent-tabs-mode nil
;;              standard-indent 3)


(setq-default c-basic-offset 3)
(setq-default python-indent-offset 3)
(setq-default js-indent-level 3)
(setq-default css-indent-offset 3)



(defun indentar-tabs ()
  "Insere 3 espacos em 1 tab."
  (interactive)
  (insert "   "))


(defun recuar-tabs ()
  "Remove 3 Espacos de tab."
  (interactive)
  (save-excursion
    (beginning-of-line)
    (when (looking-at "^\\s-\\{3\\}")
      (delete-char 3))))

(global-set-key (kbd "TAB") 'indentar-tabs)
(global-set-key (kbd "<backtab>") 'recuar-tabs)




;FONT
(add-to-list 'default-frame-alist '(font . "JetBrains Mono-11"))
(add-to-list 'default-frame-alist '(line-spacing . 0.2))(set-frame-font "JetBrains Mono-11")

;Ativar IDO
 (ido-mode 1)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("8dbbcb2b7ea7e7466ef575b60a92078359ac260c91fe908685b3983ab8e20e3f"
     default))
 '(package-selected-packages
   '(## company company-c-headers flycheck lsp-mode lsp-ui monokai-theme
        php-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
