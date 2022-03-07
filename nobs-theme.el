;;; nobs-theme.el --- Color theme intended for vanilla Emacs users.

;; Copyright (C) 2021-2022 Vernon Grant

;; Author: Vernon Grant <vernon@ruppell.io>
;; URL: https://github.com/VernonGrant/nobs-theme
;; Version: 1.0.0

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; This theme is intended for vanilla Emacs users. It doesn't provide
;; highlighting support for 3rd party extensions. Aside from this, it only
;; really highlights strings, keywords and comments.

;;; Code:

(deftheme nobs)
(let ((class '((class color) (min-colors 89)))
	  (bg      "#273433")
	  (bg_dark "#1f2b2a")
	  (comment "#c58249")
	  (cursor  "#28a719")
	  (fg      "#d0ce94")
	  (muted   "#4d5e5c")
	  (keyword "#95c779")
      (str     "#b6b861")
	  )

  (custom-theme-set-faces
   'nobs

   `(cursor                         ((t (:background ,cursor :foreground, fg))))
   `(default                        ((t (:background ,bg :foreground ,fg))))
   `(fill-column-indicator          ((t (:foreground ,fg))))
   `(font-lock-builtin-face         ((t (:foreground ,fg))))
   `(font-lock-comment-face         ((t (:foreground ,comment))))
   `(font-lock-constant-face        ((t (:foreground ,keyword))))
   `(font-lock-doc-face             ((t (:foreground ,comment))))
   `(font-lock-function-name-face   ((t (:foreground ,fg))))
   `(font-lock-keyword-face         ((t (:foreground ,keyword :weight bold))))
   `(font-lock-string-face          ((t (:foreground ,str))))
   `(font-lock-type-face            ((t (:foreground ,keyword))))
   `(font-lock-variable-name-face   ((t (:foreground ,fg))))
   `(font-lock-warning-face         ((t (:foreground ,fg :weight bold ))))
   `(fringe                         ((t (:background ,bg_dark :foreground ,fg))))
   `(hl-line                        ((t (:background ,bg_dark))))
   `(line-number                    ((t (:background ,bg_dark :foreground ,fg))))
   `(link                           ((t (:foreground ,keyword :underline t))))
   `(minibuffer-prompt              ((t (:foreground ,keyword :bold t))))
   `(mode-line                      ((t (:foreground ,fg :background ,bg_dark :box (:line-width 1)))))
   `(mode-line-inactive             ((t (:foreground ,fg :background ,bg_dark))))
   `(region                         ((t (:background ,bg_dark))))
   `(shadow                         ((t (:foreground ,comment))))
   `(vertical-border                ((t (:foreground ,fg))))

   ;; Dired:
   `(dired-header                   ((t (:foreground ,keyword))))
   `(dired-directory                ((t (:foreground ,fg :weight bold))))

   ;; Completions:
   `(compilation-info               ((t (:foreground ,keyword))))
   `(completions-first-difference   ((t (:foreground ,fg :weight bold))))
   `(completions-annotations        ((t (:foreground ,muted))))

   ;; Org Mode:
   `(org-level-1                   ((t (:foreground ,keyword :bold t))))
   `(org-level-2                   ((t (:foreground ,keyword))))
   `(org-level-3                   ((t (:foreground ,keyword))))
   `(org-todo                      ((t (:foreground ,comment :bold t))))
   `(org-agenda-structure          ((t (:foreground ,fg))))
   `(org-agenda-date               ((t (:foreground ,fg))))
   `(org-agenda-date-today         ((t (:foreground ,fg :bold t))))
   `(org-scheduled                 ((t (:foreground ,fg))))
   `(org-scheduled-today           ((t (:foreground ,keyword))))
   `(org-date                      ((t (:foreground ,fg :underline t))))


   ;; Web Mode:
   `(web-mode-doctype-face          ((t (:foreground ,fg))))
   `(web-mode-html-tag-bracket-face ((t (:foreground ,fg))))
   `(web-mode-html-attr-name-face   ((t (:foreground ,fg))))
   `(web-mode-html-tag-face         ((t (:foreground ,fg))))

   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'nobs)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; nobs-theme.el ends here
