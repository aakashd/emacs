(load-file 
 (concat
	(car 
			(split-string
			 (shell-command-to-string "gem which haml | grep rb")
			 "/lib/haml.rb\n" t)
			)
	"/extra/haml-mode.el")
 )
(provide 'haml-init)