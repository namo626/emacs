
;; window size
(defun halve-other-window-height ()
  "Expand current window to use half of the other window's lines."
  (interactive)
  (enlarge-window (/ (window-height (next-window)) 2)))

(defun halve-current-window-height ()
  "Shrink current window to half"
  (interactive)
  (shrink-window (/ (window-height (next-window)) 2)))

;; https://gist.github.com/mads-hartmann/3402786
(defun toggle-maximize-buffer ()
  "Maximize buffer"
  (interactive)
  (if (= 1 (length (window-list)))
      (jump-to-register '_)
    (progn
      (window-configuration-to-register '_)
      (delete-other-windows))))

(global-set-key (kbd "<f7>") 'halve-other-window-height)
(global-set-key (kbd "<f6>") 'halve-current-window-height)
(global-set-key (kbd "M-y") 'toggle-maximize-buffer)


;; general usage
(global-set-key "\M- " 'hippie-expand)
(global-set-key (kbd "M-o") 'other-window)
(global-set-key (kbd "M-g") 'magit-status)
(global-set-key (kbd "M-a") 'align-regexp)
(global-set-key (kbd "M-[") (kbd "C-u - 3 C-x ^"))
(global-set-key (kbd "M-]") (kbd "C-- - 3 C-x ^"))
(global-set-key (kbd "M-0") (kbd "C-x 0"))
(global-set-key (kbd "M-1") (kbd "C-x 1"))
(global-set-key (kbd "M-2") (kbd "C-x 2"))
(global-set-key (kbd "M-e") 'dante-eval-block)
(global-set-key (kbd "M-c") 'comment-region)
(global-set-key (kbd "M-u") 'uncomment-region)
(global-set-key [f4] 'winner-undo)
(global-set-key [f5] 'winner-redo)
