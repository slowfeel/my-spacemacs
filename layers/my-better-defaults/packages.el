;;; packages.el --- my-better-defaults layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2018 Sylvain Benner & Contributors
;;
;; Author:  <JiangHong@JIANGHONG-PC>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `my-better-defaults-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `my-better-defaults/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `my-better-defaults/pre-init-PACKAGE' and/or
;;   `my-better-defaults/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst my-better-defaults-packages
  '(
    ;; (dired-mode :location built-in)
    (profiler :location built-in)
    (recentf :location built-in)
    ))


(defun my-better-defaults/post-init-recentf()
  (progn
    (setq recentf-exclude
          '(".*png$" "\\.pdg$" "\\.mkv$" "\\.mp[34]$" "\\.avi$"))
    (setq recentf-max-saved-items 1024)))

(defun my-better-defaults/init-profiler()
  (use-package profiler
    :init
    (evilified-state-evilify profiler-report-mode profiler-report-mode-map)))

;;; packages.el ends here
