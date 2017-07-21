;; This is the installation file for an org-mode managed Emacs
;; configuration.

;; To start the installation, save this file as ~/.emacs.d/init.el. In
;; the same directory, save your configuration file as
;; config.org. When Emacs is restarted, this file will install the
;; configuration file. From that point on, all edits should be made in
;; config.org. When config.org is saved, it will automatically update
;; and replace init.el.

;; This file was inspired by Daniel Mai's approach:
;; https://github.com/danielmai/.emacs.d

;; Set up Package management.
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)

;; Bootstrap use-package. Inspired by:
;; https://stackoverflow.com/a/21065066
(if (not (package-installed-p 'use-package))
    (progn
      (package-refresh-contents)
      (package-install 'use-package)))

(require 'use-package)

;; Load the configuration file.
(org-babel-load-file (concat user-emacs-directory "config.org"))

;; That's it!
