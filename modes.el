
;; IDO MODE -------------------------------------------------------------
(ido-mode 1)
(setq ido-default-buffer-method 'selected-window)


;; EVIL MODE ----------------------------------------------------------
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)
(evil-set-initial-state 'dired-mode 'emacs)
(evil-set-initial-state 'help-mode 'emacs)
(evil-set-initial-state 'haskell-interactive-mode 'emacs)
(evil-set-initial-state 'slime-mode 'emacs)
(evil-set-initial-state 'racket-repl-mode 'emacs)
(evil-set-initial-state 'ein:notebooklist-mode 'emacs)
;;(define-key evil-normal-state-map "\C-r" 'undo-tree-redo)

;;evil haskell fix
(defun haskell-evil-open-above ()
  (interactive)
  (evil-digit-argument-or-evil-beginning-of-line)
  (haskell-indentation-newline-and-indent)
  (evil-previous-line)
  (haskell-indentation-indent-line)
  (evil-append-line nil))

(defun haskell-evil-open-below ()
  (interactive)
  (evil-append-line nil)
  (haskell-indentation-newline-and-indent))

(evil-define-key 'normal haskell-mode-map "o" 'haskell-evil-open-below
  "O" 'haskell-evil-open-above)


;; HASKELL -------------------------------------------------------------
(require' dante)
(add-hook 'haskell-mode-hook 'dante-mode)


;; COMMON LISP -----------------------------------------------------------
(require 'slime-autoloads)
(setq inferior-lisp-program "/usr/bin/sbcl")
(setq slime-contribs '(slime-fancy))


;; SCHEME -------------------------------------------------------------
(defun mechanics ()
  (interactive)
  (run-scheme
   "/usr/bin/scheme --library /usr/local/scmutils/mit-scheme/lib"))


;; RELATIVE LINE NUMBER -------------------------------------------------
(require 'linum)
(require 'linum-relative)
(setq linum-disabled-modes-list '(speedbar-mode
				  org-mode
				  compilation-mode
				  dired-mode
				  doc-view-mode
				  pdf-virtual-view-mode))
;;overwrite default linum-on
(defun linum-on ()
  (unless (or (minibufferp)
	      (member major-mode linum-disabled-modes-list)
	      (and (not (eq (buffer-name) "*scratch*"))
		   (string-match "*" (buffer-name))))
    (linum-mode t)))
(global-linum-mode t)
(linum-relative-toggle)


;; MATLAB -------------------------------------------------------------
(add-hook 'matlab-mode
          (lambda ()
            (auto-complete-mode 1)))



;; PYTHON --------------------------------------------------------------
; http://www.jesshamrick.com/2012/09/18/emacs-as-a-python-ide/
;(setq python-shell-interpreter "ipython")
;(setq python-shell-interpreter-args "--simple-prompt -i")
(setq python-shell-interpreter "~/miniconda3/envs/chg/bin/ipython")



;; MISCELLANEOUS ---------------------------------------------------------
(global-auto-revert-mode t)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq-default column-number-mode t)
(setq-default indent-tabs-mode nil)
(set-default 'tab-always-indent 'complete)
(show-paren-mode 1)
(setq TeX-PDF-mode t)
(setq compilation-window-height 10)
(winner-mode t)
(global-evil-surround-mode t)

(set-default 'preview-scale-function 1.5)


(setq mouse-wheel-progressive-speed nil)
(setq mouse-wheel-scroll-amount '(5 ((shift) . 1) ((control))))

(add-hook 'LaTeX-mode-hook 'turn-on-reftex)   ; with AUCTeX LaTeX mode
(add-hook 'latex-mode-hook 'turn-on-reftex)   ; with Emacs latex mode

(setq-default TeX-engine 'xetex)

;; CMAKE
(setq load-path (cons (expand-file-name "/dir/with/cmake-mode") load-path))
(require 'cmake-mode)

;; IMENU
(imenu-list-minor-mode)
(global-set-key (kbd "C-'") #'imenu-list-smart-toggle)
;; (setq imenu-list-after-jump-hook nil)

(with-eval-after-load 'evil-maps (define-key evil-motion-state-map [down-mouse-1] nil))
