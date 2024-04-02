
(setq solarized-distinct-fringe-background t)

;; Don't change the font for some headings and titles
(setq solarized-use-variable-pitch nil)

;; make the modeline high contrast
(setq solarized-high-contrast-mode-line t)

;; Use less bolding
(setq solarized-use-less-bold t)

;; Use more italics
(setq solarized-use-more-italic t)

;; Use less colors for indicators such as git:gutter, flycheck and similar
(setq solarized-emphasize-indicators nil)

;; Don't change size of org-mode headlines (but keep other size-changes)
(setq solarized-scale-org-headlines nil)

;; Avoid all font-size changes
(setq solarized-height-minus-1 1.0)
(setq solarized-height-plus-1 1.0)
(setq solarized-height-plus-2 1.0)
(setq solarized-height-plus-3 1.0)
(setq solarized-height-plus-4 1.0)

(load-theme 'solarized-light t)
;(load-theme 'solarized-dark t)

;; Fonts
  ;(set-face-attribute 'default nil :font "Hack" :height 105 :weight 'normal)
  ;(set-face-attribute 'default nil :font "IBM Plex Mono" :height 105 :weight 'medium)
;(set-face-attribute 'default nil :font "Input Mono Narrow-17" :weight 'medium)
(set-face-attribute 'default nil :font "JetBrains Mono-10" :weight 'normal)
  ;(set-face-attribute 'default nil :font "M PLUS Code Latin 50" :height 105 :weight 'regular)
  ;(set-face-attribute 'default nil :font "Source Code Pro-17" :weight 'medium)
  ;(set-face-attribute 'default nil :font "Office Code Pro-11"))

;; Line number color
;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
; '(font-lock-comment-face ((t (:background "#fdf6e3" :foreground "#93a1a1" :slant normal))))
; '(linum ((t (:background "#eee8d5" :foreground "dim gray" :underline nil :weight normal))))
; '(linum-relative-current-face ((t (:inherit linum)))))

(global-prettify-symbols-mode 1)

;; Prettify symbols
(setq prettify-symbols-alist
      '((">=" . ?≥)))
