(defvar EMACS_ROOT "/home/geegee/myshelf/emacs" "This is where I am going to store all my emacs file")
(add-to-list 'load-path (concat EMACS_ROOT "/libs"))


(iswitchb-mode t)
(set-default-font "Courier 10 Pitch")
(require 'dbus)
(defun send-desktop-notifications (summary  body timeout)
  "call notification-deamon method METHOD with ARGS over dbus"
  (dbus-call-method
   :session ; use the session not the system bus
   "org.freedesktop.Notifications" ; service name
   "/org/freedesktop/Notifications" ; path name
   "org.freedesktop.Notifications" "Notify" ; method
   "emacs"
   0
   ""
   summary
   body
   '(:array)
   '(:array :signature "{sv}")
   ':int32 timeout))
(send-desktop-notifications "From Emacs" "Hello" 1000)
(setq x-select-enable-clipboard t) 
(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)


(require 'php-mode)
(global-set-key [(f10)] 'undo)
(global-set-key [(f1)] (lambda () (interactive) (manual-entry (current-word))))
(setq auto-mode-alist (cons '("\\.tpl$" . html-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.php$". php-mode) auto-mode-alist))
(add-to-list 'auto-mode-alist '("\\.org$". org-mode))


(defun clip()
  ;; to enable cut and paste from other windows
  (interactive)
  (setq x-select-enable-clipboard t)
  (setq interprogram-paste-function 'x-cut-buffer-or-selection-value))

(defun plain()
  (interactive )
(menu-bar-mode nil)
(tool-bar-mode nil)
(scroll-bar-mode nil))

(clip)                 
(plain)


(setq inhibit-startup-message t)        


(when (fboundp 'global-font-lock-mode)
             (global-font-lock-mode t))        

(setq frame-title-format
        (concat  "%b - emacs@" system-name))

(setq-default indent-tabs-mode nil)
(transient-mark-mode t)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(show-paren-mode t)
(setq show-paren-style 'expression)
