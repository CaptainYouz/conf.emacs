;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;	SPECIALIST
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/config")
(require 'config-lite)

;;(load "std.el")
;;(load "std_comment.el")


(if (file-exists-p "~/.myemacs")
    (load-file "~/.myemacs"))
(global-set-key[f12] 'delete-trailing-whitespace) ;; Supprime espace blanc
(setq show-trailing-whitespace t) ;; Affiche les espaces blanc
(setq-default show-trailing-whitespace t) ;; en rouge
(custom-set-variables
 '(show-paren-mode t))
(custom-set-faces) ;; affiche les parenthese correspondante en bleu

(add-hook 'c-mode-common-hook 'hs-minor-mode)
(add-hook 'lisp-mode-hook 'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
(add-hook 'python-mode-hook 'hs-minor-mode)
(global-set-key [f5] 'hs-hide-block) ;; Ferme (visuelement) un block
(global-set-key [f6] 'hs-show-block) ;; Ouvre
(global-set-key [f7] 'insert-protect-header) ;; Insert un header proteger (emacs.d/skeleton.el)
(global-set-key [f8] 'create-makefile) ;; Makefile de base (emacs.d/skeleton.el)
(global-set-key [f9] 'new_c_fic)
(column-number-mode t) ;; Nb colonnes
(line-number-mode t) ;; Nb lignes

;; Les skeleton (insert protect header && makefile (possibilité de les configuré))
(load-file "~/.emacs.d/skeleton.el")

;; TEXT HIGHLIGHTING
(defun eightycols nil
 (defface line-overflow
   '((t (:foreground "red")))
   "Face to use for `hl-line-face'.")
 (highlight-regexp "^.\\{80,\\}$" 'line-overflow)
)
;;(add-hook 'find-file-hook 'eightycols)		;; highlight when > 80 cols

;; line length is 80 chars
(setq fill-column 80)
(setq-default comment-coulumn 80)

;;; afficher l'heure
(display-time)
