;;; package --- Browser
;;; Commentary:
;;;  Functions that interact with your web browser.

;;; Code:


;; Install custom search engines
(require 'prelude-core)
(prelude-install-search-engine "clojuredocs" "http://www.clojuredocs.org/search?q=" "ClojureDocs: ")

(defvar default-tabs)
(setq default-tabs '(;;Inbox
                     "https://www.inbox.google.com/"
                     ;;Calendar
                     "https://www.google.com/calendar/"
                     ;;Redmine
                     "https://https://redmine.adaptly.com/"
                     ;;Github
                     "https://github.com/"
                     ;;Prelude keymappings (until I actually learn them)
                     "http://batsov.com/prelude/#keymap"))

(defun open-default-tabs ()
  "Opens a list of default tabs in my default web browser."
  (interactive)
  (dolist (url default-tabs)
    (browse-url url)))

(provide 'browser)
;;; browser.el ends here
