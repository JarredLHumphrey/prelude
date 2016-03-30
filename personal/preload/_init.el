;;; package --- Personal Configuration of Jarred Humphrey
;;; Commentary:
;;;   Personal Emacs initialization
;;;

;;; Code:

;; Set emacs initial height/width
(setq-default initial-frame-alist '((top . 0) (left . 0) (width . 179) (height . 51)))

;; Turn off scroll bars
(scroll-bar-mode -1)

(toggle-frame-maximized)

(provide '_init)
;;; _init.el ends here
