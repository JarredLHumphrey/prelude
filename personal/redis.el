;;; package --- Redis
;;; Commentary:
;;;  Functions that interface with redis.

;;; Code:

(defvar redis-server-buffer)
(setq redis-server-buffer "*redis-server*")

(defun start-redis-server ()
  "Open a shell and start a redis server."
  (interactive)
  (shell redis-server-buffer)
  (insert "cd ~")
  (comint-send-input)
  (insert "source ~/.bash_profile;")
  (comint-send-input)
  (insert "redis")
  (comint-send-input))

;; TODO:
;; Look into making it so we don't have a confirmation
;; prompt in order to kill the active processes
(defun stop-redis-server ()
  "Stop any currently running redis processes."
  (interactive)
  (switch-to-buffer redis-server-buffer)
  (comint-interrupt-subjob)
  (insert "exit")
  (comint-send-input)
  (kill-buffer redis-server-buffer))

(defvar redis-cli-buffer)
(setq redis-cli-buffer "*redis-cli*")

(defun start-redis-cli ()
  "Open a shell and start a redis cli."
  (interactive)
  (shell redis-cli-buffer)
  (insert "cd ~")
  (comint-send-input)
  (insert "source ~/.bash_profile;")
  (comint-send-input)
  (insert "redis-cli")
  (comint-send-input))

;; TODO:
;; Look into making it so we don't have a confirmation
;; prompt in order to kill the active processes
(defun stop-redis-cli ()
  "Stop any currently running redis processes."
  (interactive)
  (switch-to-buffer redis-cli-buffer)
  (comint-interrupt-subjob)
  (insert "exit")
  (comint-send-input)
  (kill-buffer redis-cli-buffer))

(provide 'redis)
;;; redis.el ends here
