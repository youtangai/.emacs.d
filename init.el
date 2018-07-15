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

;;;; util
;; set theme path
(add-to-list 'custom-theme-load-path "/Users/nagaiyouta/.emacs.d/themes/")

;; change theme
(load-theme 'monokai t)

;; タブにスペースを使用する
(setq-default tab-width 4 indent-tabs-mode nil)

;;カッコを補完する
(electric-pair-mode 1)

;; 列数を表示する
(column-number-mode t)

;; 行数を表示する
(global-linum-mode t)

;; 対応する括弧を光らせる
(show-paren-mode 1)

;; C-kで行全体を削除する
(setq kill-whole-line t)

;; スクロールは1行ごとに
(setq mouse-wheel-scroll-amount '(1 ((shift) . 5)))

;; スクロールの加速をやめる
(setq mouse-wheel-progressive-speed nil)

;;;; for go
;; gocodeのパスを指定する
(add-to-list 'load-path "/Users/nagaiyouta/go/src/github.com/nsf/gocode/emacs")

;; go-flymakeのパスを通す
(add-to-list 'load-path "/Users/nagaiyouta/go/src/github.com/dougm/goflymake")

;;gocodeをloadする
(require 'go-autocomplete)
(require 'auto-complete-config)
(ac-config-default)

;;goflymakeをloadlする
(require 'go-flymake)

(require 'go-eldoc)
(add-hook 'go-mode-hook 'go-eldoc-setup)

;;;;for neotree
(require 'all-the-icons)
(require 'neotree)
;; 隠しファイルをデフォルトで表示
(setq neo-show-hidden-files t)
;; cotrol + t でneotreeを起動
(global-set-key "\C-t" 'neotree-toggle)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (all-the-icons neotree go-eldoc go-autocomplete flycheck company-go))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
