;(custom-set-variables
;  ;; custom-set-variables was added by Custom.
;  ;; If you edit it by hand, you could mess it up, so be careful.
;  ;; Your init file should contain only one such instance.
;  ;; If there is more than one, they won't work right.
; )
;(custom-set-faces
;  ;; custom-set-faces was added by Custom.
;  ;; If you edit it by hand, you could mess it up, so be careful.
;  ;; Your init file should contain only one such instance.
;  ;; If there is more than one, they won't work right.
; '(org-level-4 ((t (:inherit outline-4 :foreground "#F04" :weight bold)))))
;
(setq inferior-lisp-program "/usr/bin/clisp")
(add-to-list 'load-path "/usr/share/emacs/site-lisp/slime/")
(require 'slime)
(slime-setup)

(add-to-list 'load-path "~/.emacs.d/erlang")
(setq erlang-root-dir "/usr/lib/erlang")
(setq exec-path (cons "/usr/lib/erlang/bin" exec-path))
(require 'erlang-start)
(add-to-list 'auto-mode-alist '("\\.erl\\'" . erlang-mode))


;(add-to-list 'load-path "~/.emacs.d/twisted_emacs/")
;(require 'twisted-dev)

(add-hook 'erlang-mode-hook
          (lambda ()
                ;; when starting an Erlang shell in Emacs, default in
            ;; the node name
            (setq inferior-erlang-machine-options '("-sname" "emacs" "-setcookie" "GNKLJMBXGHZGBUTLADHT"))  
            ;; add Erlang functions to an imenu menu
            (imenu-add-to-menubar "imenu")))

(add-to-list 'load-path "/home/kpi/.emacs.d/distel/elisp")
(require 'distel)
(distel-setup)

(require 'pymacs)
(pymacs-load "ropemacs" "rope-")

(setq whitespace-line-column 80)

(require 'color-theme)
(autoload 'python-mode "python-mode.el" "Python mode." t)
(setq auto-mode-alist (append '(("/*.\.py$" . python-mode)) auto-mode-alist))

(autoload 'sgml-mode "psgml" "Major mode to edit SGML files." t)
(autoload 'xml-mode "psgml" "Major mode to edit XML files." t)

