;; init.el - Emacs Configuration File

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(require 'dashboard)
(dashboard-setup-startup-hook)

(ac-config-default)
(move-text-default-bindings)
(load-theme 'gruvbox-dark-hard t)
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(delete-selection-mode t)
(global-visual-line-mode t)
;; (desktop-save-mode 1)

(keymap-global-set "C-/" 'comment-line)

(keymap-global-set "C-c q" '(lambda ()
                  (interactive)
                  (find-file "/ssh:Levente@Kiraly-NAS:/volume1/homes/Levente")))


(setq
 backup-directory-alist `((".*" . ,temporary-file-directory))
 auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(auto-complete dashboard gruvbox-theme move-text sublimity treemacs)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
