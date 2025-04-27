(setq custom-file "~/.emacs.custom.el")
(package-initialize)
(tool-bar-mode 0)
(menu-bar-mode 1)
(scroll-bar-mode 0)
(column-number-mode 1)
(show-paren-mode 1)
(global-display-line-numbers-mode 1)

;(inhibit-startup-message)
(setq initial-scratch-message nil) 
(setq inhibit-startup-screen t)
(setq inhibit-startup-message t)

(setq ring-bell-function 'ignore)
(set-default 'truncate-lines t)
;TABS
;(setq-default indent-tabs-mode nil)
;(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 3)
(setq indent-line-function 'insert-tab)
(setq c-default-style "linux")
(setq c-default-offset 3)
(c-set-offset 'comment-intro 0)
   
   
;COMPANY
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'prog-mode-hook 'company-mode)
(add-hook 'cmake-mode-hook 'company-mode)
;(define-key c-mode-map [(tab)] 'company-complete)
;(define-key c++-mode-map [(tab)] 'company-complete)
(setq company-clang-executable "/usr/bin/clang-13")

;IDO

(ido-mode 1)

;FONT
(add-to-list 'default-frame-alist '(font . "JetBrains Mono-11"))
(add-to-list 'default-frame-alist '(line-spacing . 0.2))(set-frame-font "JetBrains Mono-11")

(company-mode)
(company-clang 1)


(defun kill-all-buffers()
  (interactive)
  (mapc 'kill-buffer (buffer-list)))

    
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-abort-manual-when-too-short t)
 '(confirm-nonexistent-file-or-buffer nil)
 '(custom-enabled-themes '(gruber-darker))
 '(custom-safe-themes
   '("e13beeb34b932f309fb2c360a04a460821ca99fe58f69e65557d6c1b10ba18c7" default))
 '(delete-selection-mode nil)
 '(ido-enable-dot-prefix t)
 '(ido-enable-flex-matching t)
 '(ido-enable-prefix t)
 '(ido-everywhere t)
 '(ido-file-extensions-order '(".php" ".el" ".py" ".txt"))
 '(indent-tabs-mode nil)
 '(package-selected-packages '(company ## gruber-darker-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



;PHP-MODE
(defun my-php-mode-init ()
  (subword-mode 1)
  (setq-local show-trailing-whitespace t)
  (setq-local ac-disable-faces '(font-lock-comment-face font-lock-string-face))
  (add-hook 'hack-local-variables-hook 'php-ide-turn-on nil t))

(with-eval-after-load 'php-mode
  (add-hook 'php-mode-hook #'my-php-mode-init)
  (custom-set-variables
   '(php-mode-coding-style 'psr2)
   '(php-mode-template-compatibility nil)
   '(php-imenu-generic-expression 'php-imenu-generic-expression-simple))

  ;; If you find phpcs to be bothersome, you can disable it.
  (when (require 'flycheck nil)
    (add-to-list 'flycheck-disabled-checkers 'php-phpmd)
    (add-to-list 'flycheck-disabled-checkers 'php-phpcs)))


;;; Minimal setup to load latest `org-mode'.

;; Activate debugging.
(setq debug-on-error t
      debug-on-signal nil
      debug-on-quit nil)

;; Add latest Org mode to load path.
(add-to-list 'load-path (expand-file-name "/home/user/.emacs.d/elpa/org-9.7.21"))

(add-hook 'org-tab-first-hook
    (lambda ()
        (when (org-in-src-block-p t)
            (let* ((elt (org-element-at-point))
                 (lang (intern (org-element-property :language elt)))
                 (langs org-babel-load-languages))
             (unless (alist-get lang langs)
                 (indent-to 4))))))
    
