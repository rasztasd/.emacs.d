;Basic set-up
;Turn menubar and toolbar off
(tool-bar-mode nil)

;Add vendor ~/.emacs.d/vendor and subdirectories to the load-path
(add-to-list 'load-path "~/.emacs.d/vendor")
(progn (cd "~/.emacs.d/vendor")
       (normal-top-level-add-subdirs-to-load-path))
;PHP
(require 'php-mode)

;Yasnippet
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/vendor/yasnippet-0.6.1c/snippets")
(yas/load-directory "~/.emacs.d/minimal-yasnippet-php-mode")

;Autocomplete
(add-to-list 'load-path "~/.emacs.d/autocomplete/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/autocomplete/ac-dict")
(ac-config-default)

;Pymacs
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)
(add-to-list 'load-path "~/.emacs.d/setup/python-setup/Pymacs-0.23")

;;Sass-lang

(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))

;Haml

(require 'haml-mode)


;Goto last line
(require 'goto-last-change)
(global-set-key [(meta p)(u)] 'goto-last-change)

;Layout saver
(require 'layout-restore)
(global-set-key [?\C-c ?l] 'layout-save-current)
(global-set-key [?\C-c ?\C-l ?\C-l] 'layout-restore)
(global-set-key [?\C-c ?\C-l ?\C-c] 'layout-delete-current)
;(add-hook 'after-init-hook 'layout-restore) TODO its not working - fix it
;(add-hook 'kill-emacs-hook 'layout-save-current) TODO its not working - fix it

;autosave desktop
(desktop-save-mode 1)

;winner mode
(winner-mode 1)

;theme
(require 'color-theme-solarized)
(color-theme-solarized-light)

;line numbers
(require 'line-num)
(linum-mode)

;End

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(jde-jdk (quote jdk16))
 '(jde-jdk-registry (quote (("jdk16" . "/home/rasztasd/bin/jdk1.6.0_25/"))))
 '(scroll-bar-mode (quote right)))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
