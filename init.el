;;reference from http://emacs-jp.github.io/packages/package-management/package-el.html
(require 'package)

;; MELPAを追加
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

;; MELPA-stableを追加
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; Marmaladeを追加
(add-to-list 'package-archives  '("marmalade" . "http://marmalade-repo.org/packages/") t)

;; Orgを追加
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

;; 初期化
(package-initialize)
;;reference from/>

;; タブにスペースを使用する
(setq-default tab-width 4 indent-tabs-mode nil)

;; gocodeのパスを指定する
(add-to-list 'load-path "/Users/nagaiyouta/go/src/github.com/nsf/gocode/emacs")

;; go-flymakeのパスを通す
(add-to-list 'load-path "/Users/nagaiyouta/go/src/github.com/dougm/goflymake")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (go-eldoc go-autocomplete flycheck company-go))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;gocodeをloadする
(require 'go-autocomplete)
(require 'auto-complete-config)
(ac-config-default)

;;goflymakeをloadlする
(require 'go-flymake)
