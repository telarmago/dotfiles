;; Show matching parentheses
(show-paren-mode 1)

;; Spaces > tabs!
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

; ;; Turn line numbers on for text and code; doesn't work in older emacs versions
; (add-hook 'text-mode-hook 'linum-mode)
; (add-hook 'prog-mode-hook 'linum-mode)

;; Move all backups to a single, hidden directory
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))
(setq auto-save-file-name-transforms
      `((".*" ,"~/.emacs.d/autosaves/" t)))