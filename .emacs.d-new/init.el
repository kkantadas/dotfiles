
;; Disable startup screen
(setq inhibit-startup-message t)

;; Enable Viper mode
(setq viper-mode t)
(require 'viper)
(setq viper-inhibit-startup-message t)

;; Clean UI
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(save-place-mode 1)

;; Auto-close brackets, quotes, etc.
(electric-pair-mode 1)

(set-face-attribute 'default nil
                    :family "CodeNewRoman Nerd Font Mono"
                    :height 143
                    :weight 'regular)
(custom-set-variables
 '(custom-enabled-themes '(wombat)))
(custom-set-faces
 )

(savehist-mode 1)
(setq history-length 30)
(setq savehist-additional-variables
      '(kill-ring
        search-ring
        regexp-search-ring))

(setq initial-scratch-message nil)
(fset 'undo-auto-amalgamate 'ignore)

;; Move customization variables to a separate file and load it
(setq custom-file (locate-user-emacs-file "custom-vars.el"))
(load custom-file 'noerror 'nomessage)

;; Don't pop up UI dialog when prompting
(setq use-dialog-box nil)
(global-auto-revert-mode 1)`

;; Revert Dired and other buffers
(setq global-auto-revert-non-file-buffers t)

