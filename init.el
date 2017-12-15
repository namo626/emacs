
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(beacon-color "#f2777a")
 '(company-ghc-show-info t)
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes
   (quote
    ("628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "7f3ef7724515515443f961ef87fee655750512473b1f5bf890e2dc7e065f240c" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "125fd2180e880802ae98b85f282b17f0aa8fa6cb9fc4f33d7fb19a38c40acef0" "dc9a8d70c4f94a28aafc7833f8d05667601968e6c9bf998791c39fcb3e4679c9" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "bcc6775934c9adf5f3bd1f428326ce0dcd34d743a92df48c128e6438b815b44f" "cdfc5c44f19211cfff5994221078d7d5549eeb9feda4f595a2fd8ca40467776c" default)))
 '(fci-rule-color "#eee8d5")
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(haskell-font-lock-symbols t)
 '(haskell-hoogle-command nil)
 '(haskell-interactive-popup-errors nil)
 '(haskell-process-path-ghci "stack")
 '(haskell-process-type (quote cabal-repl))
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100))))
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(magit-diff-use-overlays nil)
 '(menu-bar-mode nil)
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(org-capture-bookmark nil)
 '(org-capture-templates
   (quote
    (("p" "Personal")
     ("pt" "TODO list" entry
      (file+headline "~/Dropbox/personal.org" "Capture")
      "\"**\"" :prepend t)
     ("w" "Work")
     ("wt" "TODO list" entry
      (file+headline "~/Dropbox/work.org" "Capture")
      (file "~/Dropbox/todo.txt")
      :prepend t))))
 '(org-file-apps
   (quote
    ((auto-mode . emacs)
     ("\\.mm\\'" . default)
     ("\\.x?html?\\'" . default)
     ("\\.pdf\\'" . "okular %s"))))
 '(org-fontify-emphasized-text t)
 '(org-format-latex-options
   (quote
    (:foreground default :background default :scale 1.5 :html-foreground "Black" :html-background "Transparent" :html-scale 1.0 :matchers
		 ("begin" "$1" "$" "$$" "\\(" "\\["))))
 '(org-hide-emphasis-markers t)
 '(org-highlight-latex-and-related (quote (latex)))
 '(org-modules
   (quote
    (org-bbdb org-bibtex org-docview org-gnus org-habit org-info org-irc org-mhe org-rmail org-w3m)))
 '(org-refile-targets (quote ((org-agenda-files :maxlevel . 2))))
 '(org-refile-use-outline-path t)
 '(org-reverse-note-order t)
 '(org-tags-column 90)
 '(package-selected-packages
   (quote
    (slime intero magit company-ghc hindent ghc haskell-mode pdf-tools color-theme-sanityinc-tomorrow gruvbox-theme color-theme-sanityinc-solarized hc-zenburn-theme zenburn-theme linum-relative org-edna racket-mode)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(server-mode t)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(solarized-distinct-doc-face t)
 '(solarized-distinct-fringe-background t)
 '(solarized-emphasize-indicators nil)
 '(solarized-height-minus-1 1.0)
 '(solarized-height-plus-1 1.0)
 '(solarized-height-plus-2 1.0)
 '(solarized-height-plus-3 1.0)
 '(solarized-height-plus-4 1.0)
 '(solarized-high-contrast-mode-line t)
 '(solarized-scale-org-headlines nil)
 '(solarized-use-variable-pitch nil)
 '(temp-buffer-resize-mode t)
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(tool-bar-mode nil)
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#dc322f")
     (40 . "#cb4b16")
     (60 . "#b58900")
     (80 . "#859900")
     (100 . "#2aa198")
     (120 . "#268bd2")
     (140 . "#d33682")
     (160 . "#6c71c4")
     (180 . "#dc322f")
     (200 . "#cb4b16")
     (220 . "#b58900")
     (240 . "#859900")
     (260 . "#2aa198")
     (280 . "#268bd2")
     (300 . "#d33682")
     (320 . "#6c71c4")
     (340 . "#dc322f")
     (360 . "#cb4b16"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83")))
 '(window-combination-resize t)
 '(winner-mode t)
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(load-theme 'solarized-dark)
(ido-mode 1)
(setq ido-default-buffer-method 'selected-window)

;;evil mode
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)
(evil-set-initial-state 'dired-mode 'emacs)
(evil-set-initial-state 'help-mode 'emacs)
(evil-set-initial-state 'haskell-interactive-mode 'emacs)
  

;;haskell-setup
(require 'haskell-mode)
(require 'haskell-interactive-mode)
(require 'haskell-process)
;;(add-hook 'haskell-mode-hook 'intero-mode)
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)
;;(eval-after-load 'haskell-mode
;;  '(define-key interactive-haskell-mode-map (kbd "C-c C-c") 'ghc-toggle-check-command))

;;keybindings
(define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-or-reload)
(define-key haskell-mode-map (kbd "C-`") 'haskell-interactive-bring)
(define-key haskell-mode-map (kbd "<f3>") 'ghc-display-errors)
;;(define-key haskell-mode-map (kbd "M-.") 'haskell-mode-jump-to-def)

(let ((my-stack-path (expand-file-name "/var/namo/.local/bin")))
  (setenv "PATH" (concat my-stack-path ":" (getenv "PATH")))
  (add-to-list 'exec-path my-stack-path))
(autoload 'ghc-init "ghc" nil t)
(autoload 'ghc-debug "ghc" nil t)
(add-hook 'haskell-mode-hook (lambda () (ghc-init)))
(setq haskell-process-type 'stack-ghci)
(setq haskell-process-path-ghci "stack")
(add-hook 'haskell-mode-hook #'hindent-mode)

;;autocompletion
(require 'company)
(add-hook 'haskell-mode-hook 'company-mode)
(add-to-list 'company-backends 'company-ghc)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-hook 'c-mode-common-hook 'company-mode)

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

;;Common Lisp
(require 'slime-autoloads)
(setq inferior-lisp-program "/usr/bin/sbcl")
(setq slime-contribs '(slime-fancy))

(set-default 'tab-always-indent 'complete)
(show-paren-mode 1)

;;keybindings
(global-set-key "\M- " 'hippie-expand)
(global-set-key (kbd "M-o") 'other-window)
(global-set-key (kbd "<f9>") (kbd "C-u - 3 C-x ^"))
(global-set-key (kbd "<f8>") (kbd "C-- - 3 C-x ^"))


(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)

;;(setq org-log-done t)

(setq org-hide-emphasis-markers t)
(setq org-agenda-files (list "~/Dropbox/work.org"
			     "~/Dropbox/personal.org"))



;;increase LaTeX size
(setq org-format-latex-options (plist-put org-format-latex-options :scale 1.5))

;;diary location
(setq diary-file "~/Dropbox/diary")

;;fancy display
(setq view-diary-entries-initially t
       mark-diary-entries-in-calendar t
       number-of-diary-entries 7)
(add-hook 'diary-display-hook 'fancy-diary-display)
(add-hook 'today-visible-calendar-hook 'calendar-mark-today)


(setq org-agenda-include-diary t)
;(setq calendar-mark-diary-entries-flag t)

(defun kill-to-end-of-buffer() "Deletes all lines after the current line"
  (interactive)
  (progn
    (forward-line 1)
    (delete-region (point) (point-max))))

;; google cal
(setq mark-diary-entries-in-calendar t)
(add-hook 'diary-mark-entries-hook 'diary-mark-included-diary-files)
(add-hook 'diary-list-entries-hook 'diary-sort-entries t)
(add-hook 'diary-list-entries-hook 'diary-include-other-diary-files)
(defun getcal (url)
  "Download ics file and add to diary"
  (let ((tmpfile (url-file-local-copy url)))
    (icalendar-import-file tmpfile "~/Dropbox/diary" t)
    (kill-buffer (car (last (split-string tmpfile "/"))))
    )
  )
(load "~/Dropbox/gcal.el")
(defun getcals ()
  (interactive)
  (find-file "~/Dropbox/diary")
  (flush-lines "^.")
  (dolist (url google-calendars) (getcal url))
  (beginning-of-buffer)
  (replace-string "&" "")
  (save-buffer)
  (kill-buffer "diary"))

;;longer agenda
(setq org-agenda-span 10
      org-agenda-start-day "-3d")

;;line numbers in appropriate buffers
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
;;(setq linum-eager nil)
;;(add-hook 'prog-mode-hook 'linum-on) ;;prevents pdf from freezing

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 122 :width normal :foundry "PfEd" :family "Meslo LG S for Powerline"))))
 '(org-agenda-date-today ((t (:inherit org-agenda-date :background "#268bd2" :foreground "#002b36" :inverse-video t :overline nil :weight bold))))
 '(org-verbatim ((t (:foreground "#2AA198" :height 130 :width normal :foundry "PfEd" :family "Courier Prime Code"))))
 '(slime-repl-inputed-output-face ((t (:foreground "#b58900")))))

;org-mode capture
(setq org-default-notes-file (concat org-directory "/notes.org"))
(define-key global-map "\C-cc" 'org-capture)

;;winner shortcuts
(global-set-key [f4] 'winner-undo)
(global-set-key [f5] 'winner-redo)
