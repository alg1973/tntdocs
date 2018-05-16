(defun c-style-hook ()
	(c-set-style "Linux")
  	(setq blank-style "color")
;;  	(blank-mode)
)

(show-paren-mode 1)
	
;; (setq-default c-indent-level      8)
;; (setq-default c-basic-offset      8)
;; (setq-default tab-width                8)
;; (add-hook 'c-mode-hook 'tabs-on)
;; Above lines replaced with Linux style
(add-hook 'c-mode-hook 'c-style-hook)
(add-hook 'c++-mode-hook 'c-style-hook)

(set-face-foreground 'font-lock-keyword-face "dark red")



(defun create-tags (dir-name)
     "Create tags file."
     (interactive "DDirectory: ")
     (eshell-command 
      (format "find %s -type f -name \"*.[ch]*\" | etags -" dir-name)))
