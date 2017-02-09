;;initializes for el.get
(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

;;パッケージインストール
(el-get-bundle auto-complete)
(package-initialize)

;;ruby-mode
 (autoload 'ruby-mode "ruby-mode"
   "Mode for editing ruby source files" t)
  (add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
  (add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
  (add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
  (add-to-list 'auto-mode-alist '("[Rr]akefile$" . ruby-mode))


;;linuxコーディング規約用
(add-hook 'c-mode-common-hook
          (lambda ()
            ;; Add kernel style                                                                                                             
            (c-add-style
             "linux-tabs-only"
             '("linux" (c-offsets-alist
                        (arglist-cont-nonempty
                         c-lineup-gcc-asm-reg
                         c-lineup-arglist-tabs-only))))))

(add-hook 'c-mode-hook
          (lambda ()
            (when (eq major-mode 'c-mode)
              (setq indent-tabs-mode t)
              (setq show-trailing-whitespace t)
              (c-set-style "linux-tabs-only"))))

(prefer-coding-system 'utf-8-unix)


(custom-set-variables
 '(package-selected-packages
   (quote
    (dirtree yasnippet web-mode use-package smex smartparens projectile prodigy powerline popwin pallet nyan-mode neotree multiple-cursors move-text magit idle-highlight-mode htmlize flycheck-cask expand-region exec-path-from-shell drag-stuff auto-complete))))
(custom-set-faces)

