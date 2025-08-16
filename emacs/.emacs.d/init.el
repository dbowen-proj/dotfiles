

(require 'org)
(org-babel-load-file
 (expand-file-name "emacs-init.org"
                   user-emacs-directory))
; setup package manager
;; (require 'package)
;; (setq package-enable-at-startup nil)
;; (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
;; (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
;; (add-to-list 'package-archives '("nongnu" . "https://elpa.nongnu.org/nongnu/"))
;; (package-initialize)
;; (setq use-package-compute-statistics t)

;; (unless (package-installed-p 'use-package)
;;   (package-refresh-contents)
;;   (package-install 'use-package))

;; (eval-and-compile
;;   (setq use-package-always-ensure t
;;         use-package-expand-minimally t))

;; packages
; update keyring
;(setq package-check-signature nil) 
;(use-package gnu-elpa-keyring-update :ensure t)

;theme packages
;; (if (not (package-installed-p 'tron-legacy-theme))
;;     (package-install 'tron-legacy-theme))

;; (if (not (package-installed-p 'nordic-night-theme))
;;     (package-install 'nordic-night-theme))

;; (if (not (package-installed-p 'zenburn-theme))
;;     (package-install 'zenburn-theme))

;; (if (not (package-installed-p 'spacemacs-theme))
;;     (package-install 'spacemacs-theme))

;; (if (not (package-installed-p 'gruvbox-theme))
;;     (package-install 'gruvbox-theme))

;; (if (not (package-installed-p 'material-theme))
;;     (package-install 'material-theme))

;; (if (not (package-installed-p 'ample-theme))
;;     (package-install 'ample-theme))

;language packages
;; (use-package php-mode
;;   :ensure t)

;; (use-package rjsx-mode
;;   :ensure t)

;; (use-package web-mode
;;   :ensure t)

;; (use-package yasnippet
;;   :ensure t
;;   :hook ((text-mode
;;           prog-mode
;;           conf-mode
;;           snippet-mode) . yas-minor-mode-on)
;;   :init
;;   (setq yas-snippet-dirs '("~/.emacs.d/snippets")))

;; ;; setup web-mode
;; (add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.vue\\'" . web-mode))

;; (defun split-and-follow-horizontally ()
;;   (interactive)
;;   (split-window-below)
;;   (balance-windows)
;;   (other-window 1))
;; (global-set-key (kbd "C-x 3") 'split-and-follow-horizontally)

;; (defun split-and-follow-vertically ()
;;   (interactive)
;;   (split-window-right)
;;   (balance-windows)
;;   (other-window 1))
;; (global-set-key (kbd "C-x 3") 'split-and-follow-vertically)

;; (defun list-buffers-and-follow ()
;;   (interactive)
;;   (list-buffers)
;;   (other-window 1))
;; (global-set-key (kbd "C-x C-b") 'list-buffers-and-follow)

;; ;; set back up files\
;; (setq
;;   backup-by-copying t                ; don't clobber symlinks
;;   backup-directory-alist
;;     '(("." . "~/.emacs.d/backups/"))  ; don't litter my fs tree
;;   delete-old-versions t
;;   kept-new-versions 6
;;   kept-old-versions 2
;;   version-control t)                ; use versioned backups

;; ;; lock files
;; (setq lock-file-name-transforms
;;   '(("\\`/.*/\\([^/]+\\)\\'" "~/.emacs.d/lockfiles/\\1" t)))

;; ;; set indent mode to spaces
;; (setq-default indent-tabs-mode nil)

;; ;; set c indention
;; (setq-default c-basic-offset 4)

;; ;; auto close bracket
;; (electric-pair-mode 1)

;; ;;scrolling
;; (setq scroll-conservatively 1)

;; ;;line numbers
;; (global-display-line-numbers-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(spacemacs-dark))
 '(custom-safe-themes
   '("9fb561389e5ac5b9ead13a24fb4c2a3544910f67f12cfcfe77b75f36248017d0" "821c37a78c8ddf7d0e70f0a7ca44d96255da54e613aa82ff861fe5942d3f1efc" "7fd8b914e340283c189980cd1883dbdef67080ad1a3a9cc3df864ca53bdc89cf" "7342266ffff707cc104313c9153342e44a47a9f22ed7157e4893aac74091ad27" "90a6f96a4665a6a56e36dec873a15cbedf761c51ec08dd993d6604e32dd45940" "0b3cbb13f4ab503b9d583dec7e0f51d7c0cbb820750e5b4759a43b8c1712c509" "f1b2de4bc88d1120782b0417fe97f97cc9ac7c5798282087d4d1d9290e3193bb" default))
 '(package-selected-packages
   '(yasnippe yasnippet web-mode rjsx-mode php-mode apropospriate-theme ample-theme material-theme gruvbox-theme spacemacs-theme zenburn-theme nordic-night-theme tron-legacy-theme gnu-elpa-keyring-update use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
