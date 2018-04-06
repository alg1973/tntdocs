(defun c-style-hook ()
	(c-set-style "Linux")
  	(setq blank-style "color")
;;  	(blank-mode)
)
	
;; (setq-default c-indent-level      8)
;; (setq-default c-basic-offset      8)
;; (setq-default tab-width                8)
;; (add-hook 'c-mode-hook 'tabs-on)
;; Above lines replaced with Linux style
(add-hook 'c-mode-hook 'c-style-hook)
(add-hook 'c++-mode-hook 'c-style-hook)

(set-face-foreground 'font-lock-keyword-face "dark red")
