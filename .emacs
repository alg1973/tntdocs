(defun c-style-hook ()
	(c-set-style "Linux")
	(setq blank-style "color")
;;	(blank-mode)
)


(defun c-lineup-arglist-tabs-only (ignored)
"Line up argument lists by tabs, not spaces"
(let* ((anchor (c-langelem-pos c-syntactic-element))
    (column (c-langelem-2nd-pos c-syntactic-element))
    (offset (- (1+ column) anchor))
    (steps (floor offset c-basic-offset)))
    (* (max steps 1)
    c-basic-offset)))

(add-hook 'c-mode-common-hook
	(lambda ()
	    ;; Add kernel style
	    (c-add-style
	    "linux-tabs-only"
	    '("linux" (c-offsets-alist
			(arglist-cont-nonempty
			c-lineup-gcc-asm-reg
			c-lineup-arglist-tabs-only))))))

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

(add-hook 'before-save-hook 'whitespace-cleanup)
