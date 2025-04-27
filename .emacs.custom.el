(load-file custom-file)
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
 '(package-selected-packages '(org company ## gruber-darker-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )






(company-mode t)
(add-hook 'after-init-hook 'global-company-mode)
