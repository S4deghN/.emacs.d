(menu-bar-mode 1)
(tool-bar-mode 0)
(set-fringe-mode 0)
(setq frame-resize-pixelwise t)

(setq inhibit-startup-screen t)
(setq visible-bell nil)
(setq ring-bell-function 'ignore)

(column-number-mode 1)

;; Change backup behavior to save in a specified directory
(setq backup-directory-alist '(("." . "~/.emacs.d/backup-dir/"))
 backup-by-copying      t
 version-control        t
 delete-old-versions    t
 kept-new-versions      6
 kept-old-versions      2)

(setq kill-whole-line t)

(global-set-key (kbd "C-w") 'backward-kill-word)
(define-prefix-command 'leader)
(global-set-key (kbd "C-z") 'leader)
(global-set-key (kbd "C-z C-b") 'compile)


(set-face-attribute 'default nil :family "Iosevka" :height 140 :weight 'normal :width 'normal)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'oblivion t)
