(setq load-path (cons "~/.emacs.d" load-path))
(setq load-path (cons "~/.emacs.d/packages" load-path))
(setq custom-file "~/.emacs.d/custom.el")

(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
;;(if (fboundp 'menu-bar-mode) (menu-bar-mode -1)) Need this on osx
(setq inhibit-splash-screen t)
(setq make-backup-files nil)
(custom-set-variables
 '(show-paren-mode t)
 '(transient-mark-mode t))
(c-mode)
(c-toggle-hungry-state)
(fset 'yes-or-no-p 'y-or-n-p)
(setq default-tab-width 2)
(setq rinari-tags-file-name "TAGS")

(defun my-settings-for(setting-name)
	(split-string 
	(shell-command-to-string (concat "cat ~/." setting-name)) 
	"\n" t))
(setq ecb-source-path (my-settings-for "work_dirs"))
(setq exec-path (append (mapcar 'expand-file-name (split-string
			(car (my-settings-for "paths")) ":")) exec-path))

(require 'maxframe)
(add-hook 'window-setup-hook 'maximize-frame t)

(autoload 'mode-compile "mode-compile"
   "Command to compile current buffer file based on the major mode" t)
(autoload 'mode-compile-kill "mode-compile"
 "Command to kill a compilation launched by `mode-compile'" t)

(defun ruby-outline-mode ()
  (interactive)
  (setq outline-regexp " *\\(def\\|if\\|when\\|do\\)"))
(setq *textmate-gf-exclude*
  "/\\.|vendor|fixtures|tmp|log|build|\\.xcodeproj|\\.nib|\\.framework|\\.app|\\.pbproj|\\.pbxproj|\\.xcode|\\.xcodeproj|\\.bundle|\\.pyc|\\.elc|\\.jar|\\.class")
(setq auto-mode-alist (cons '("Rakefile$" . ruby-mode) auto-mode-alist))
(setq highlight-current-line-globally t)
(setq initial-scratch-message nil)
(setq rct-get-all-methods-command "PAGER=cat fri -l")


(set-frame-width (selected-frame) 200)
(set-frame-height (selected-frame) 100)
(if (eq system-type 'darwin)
    (setq system-name (car (split-string system-name "\\."))))

(defun open-buffer-path ()
"Run finder on the directory of the current buffer."
(interactive)
(if (eq system-type 'darwin)
		(shell-command (concat "open " (file-name-directory (buffer-file-name))))))

;; Common
(require 'ecb-init)
(require 'linum-init)
(require 'highlight-current-line)
(require 'duplicate-line)
(require 'growl-init)
(require 'yas-init)
(require 'autocomplete-init)
(require 'anything)
(require 'anything-show-completion)
;; VC
(require 'dvc-init)
(require 'magit-init)

(require 'twit-el-init)
(require 'markdown-init)
(require 'yaml-init)
;; Web
(require 'js2-init)
(require 'espresso-init)

;;Ruby 
(require 'rsense-init)
(require 'ri-emacs-init)
(require 'rspec-init)
(require 'textmate-init)
(require 'rcodetools)
(require 'anything-rcodetools)
;; Rails
(require 'rinari-init)
(require 'haml-init)

;;(require 'php-mode)
(require 'clojure-init)
(require 'distel-init)
(require 'haskell-init)

;;Color
(require 'color-theme-init)
;;(require 'inkpot-init)
;;(require 'zenburn-init)
;;(require 'twilight-init)
(require 'zen-init)

(load "~/.emacs.d/packages/nxhtml/autostart.el")

;; Default Loads 
(require 'cl)
(require 'saveplace)
(require 'ffap)
(require 'uniquify)
(require 'ansi-color)
(require 'recentf)
(require 'ido)
(org-mode)
(color-theme-zen-and-art)
(put 'dired-find-alternate-file 'disabled nil)

<<<<<<< HEAD
<<<<<<< HEAD

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-layout-window-sizes (quote (("left8" (ecb-directories-buffer-name 0.175 . 0.2857142857142857) (ecb-sources-buffer-name 0.175 . 0.23214285714285715) (ecb-methods-buffer-name 0.175 . 0.2857142857142857) (ecb-history-buffer-name 0.175 . 0.17857142857142858)))))
 '(ecb-options-version "2.40")
 '(linum-format "%4d ")
 '(show-paren-mode t)
 '(transient-mark-mode t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
 
=======
(load-file "~/.emacs.d/custom.el")
(load-file "~/.emacs.d/key-bindings.el")
>>>>>>> a86bf382c3f750b739174b02ae05666aa38c5caf
=======
(load-file "~/.emacs.d/custom.el")
(load-file "~/.emacs.d/key-bindings.el")
>>>>>>> a86bf382c3f750b739174b02ae05666aa38c5caf
(ecb-toggle-ecb-windows)
(put 'set-goal-column 'disabled nil)
