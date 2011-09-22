;Basic set-up
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


;End

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(jde-jdk (quote jdk16))
 '(jde-jdk-registry (quote (("jdk16" . "/home/rasztasd/bin/jdk1.6.0_25/")))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
