(add-to-list 'load-path "~/.emacs.d/packages/ri-emacs/")
(setq ri-ruby-script "~/.emacs.d/packages/ri-emacs/ri-emacs.rb")
(autoload 'ri "~/.emacs.d/packages/ri-emacs/ri-ruby.el" nil t)

(add-hook 'ruby-mode-hook (lambda ()
                               (local-set-key "\M-f1" 'ri)
                               (local-set-key "\M-\C-i" 'ri-ruby-complete-symbol)
                               (local-set-key "\M-f2" 'ri-ruby-show-args)
                               ))
(provide 'ri-emacs-init)
