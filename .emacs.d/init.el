;; (setq mozc-candidate-style 'echo-area)
;; (add-to-list 'load-path "/usr/share/emacs24/site-lisp/emacs-mozc")
;; (require 'mozc)
;; (set-language-environment "Japanese")
;; (setq default-input-method "japanese-mozc")
;; (setq mozc-candidate-style 'echo-area)

(require 'cask "~/.cask/cask.el")
(cask-initialize)

;; (require 'auto-complete )
;; (global-auto-complete-mode t)
;; (setq ac-use-menu-map t)
;; (setq ac-use-fuzzy t)

;; (when load-file-name
;;   (setq user-emacs-directory (file-name-directory load-file-name)))

;; (add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
;; (unless (require 'el-get nil 'noerror)
;;   (with-current-buffer
;;       (url-retrieve-synchronously
;;        "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
;;     (goto-char (point-max))
;;     (eval-print-last-sexp)))
;; (setq company-transformers '(company-sort-by-statistics company-sort-by-backend-importance))


(require 'company)
(global-company-mode) ; 全バッファを有効にする; 
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\.js$" . js2-mode))
(add-hook 'js2-mode-hook
	  (lambda ()
	    (tern-mode t)))

(add-to-list 'company-backends 'company-tern) 
(custom-set-variables '(company-tern-show-info t))
(setq company-tern-property-marker nil)
(setq company-tern-meta-as-single-line t)
(setq company-tooltip-align-annotations t)

(defun company-tern-depth (candidate)
  "Return depth attribute for CANDIDATE. 'nil' entries are treated as 0."
  (let ((depth (get-text-property 0 'depth candidate)))
    (if (eq depth nil) 0 depth)))

(setq company-idle-delay 0) ; デフォルトは0.5
(setq company-minimum-prefix-length 2) ; デフォルトは4
(setq company-selection-wrap-around t) ; 候補の一番下でさらに下に行こうとすると一番上に戻る

