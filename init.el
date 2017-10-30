
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-file-apps
   (quote
    ((auto-mode . emacs)
     ("\\.mm\\'" . default)
     ("\\.x?html?\\'" . default)
     ("\\.pdf\\'" . "okular %s"))))
 '(org-hide-emphasis-markers nil)
 '(org-modules
   (quote
    (org-bbdb org-bibtex org-docview org-gnus org-habit org-info org-irc org-mhe org-rmail org-w3m)))
 '(package-selected-packages (quote (org-edna racket-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Meslo LG S for Powerline" :foundry "PfEd" :slant normal :weight normal :height 122 :width normal)))))

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(set-default 'tab-always-indent 'complete)
(show-paren-mode 1)

(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)

;;(setq org-log-done t)

(setq org-hide-emphasis-markers t)
(setq org-agenda-files (list "~/Dropbox/work.org"
			     "~/Dropbox/personal.org"))

;;evil mode
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)

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
(setq google-calendars '(
			 "https://calendar.google.com/calendar/ical/namo26june%40gmail.com/private-8437d83d32b741c004f7e21ddd6de4a6/basic.ics"
                         ))
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

(setq-default org-list-indent-offset 4)
