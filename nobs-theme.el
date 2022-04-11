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

;; A soft dark theme that's intended for HDR monitors. The theme uses a lot of
;; mat colors to help keep things from being overly bright on HDR displays.

;;; Code:

(deftheme nobs)
(let ((class '((class color) (min-colors 89)))
	  (bg         "#394f3f")
	  (bg_darker  "#273b2d")
	  (bg_lighter "#3f5e48")
	  (fg         "#eee8aa")
	  (fg_darker  "#bdb76b")
	  (fg_lighter "#fafad2")
	  (fg_muted   "#698b69")
	  (comment    "#a7cc5a")
	  (cursor     "#f4a460")
	  (keyword    "#cec227")
      (str        "#d2b547")
	  (warning    "#db6464")
	  )

  (custom-theme-set-faces
   'nobs
   `(cursor                            ((t (:background ,cursor :foreground, fg))))
   `(default                           ((t (:background ,bg :foreground ,fg))))
   `(fill-column-indicator             ((t (:foreground ,fg))))
   `(font-lock-builtin-face            ((t (:foreground ,fg))))
   `(font-lock-comment-face            ((t (:foreground ,comment))))
   `(font-lock-comment-delimiter-face  ((t (:foreground ,comment))))
   `(font-lock-constant-face           ((t (:foreground ,keyword))))
   `(font-lock-doc-face                ((t (:foreground ,comment))))
   `(font-lock-negation-char-face      ((t (:foreground ,fg))))
   `(font-lock-function-name-face      ((t (:foreground ,fg))))
   `(font-lock-keyword-face            ((t (:foreground ,keyword))))
   `(font-lock-string-face             ((t (:foreground ,str))))
   `(font-lock-type-face               ((t (:foreground ,keyword))))
   `(font-lock-variable-name-face      ((t (:foreground ,fg_darker))))
   `(font-lock-warning-face            ((t (:foreground ,fg :weight bold))))
   `(fringe                            ((t (:background ,bg_darker :foreground ,fg))))
   `(hl-line                           ((t (:background ,bg_darker))))
   `(line-number                       ((t (:background ,bg_darker :foreground ,fg_muted))))
   `(line-number-current-line          ((t (:background ,bg_lighter :foreground ,keyword))))
   `(link                              ((t (:foreground ,keyword :underline t))))
   `(minibuffer-prompt                 ((t (:foreground ,keyword :bold t))))
   `(mode-line                         ((t (:foreground ,fg :background ,bg_darker))))
   `(mode-line-inactive                ((t (:foreground ,fg_muted :background ,bg_darker))))
   `(region                            ((t (:background ,bg_darker))))
   `(shadow                            ((t (:foreground ,comment))))
   `(highlight                         ((t (:background ,bg_lighter :foreground ,cursor))))
   `(vertical-border                   ((t (:foreground ,bg_darker))))
   `(error                             ((t (:background ,bg_lighter :foreground ,warning))))

   ;; Parenthesis Mode:
   `(show-paren-match                  ((t (:background ,bg_lighter :foreground ,cursor))))

   ;; Completions
   `(completions-common-part           ((t (:foreground ,keyword))))

   ;; I Search:
   `(isearch                           ((t (:background ,bg_lighter :foreground ,cursor))))
   `(lazy-highlight                    ((t (:background ,cursor :foreground ,bg_darker))))

   ;; Dired:
   `(dired-header                      ((t (:foreground ,keyword))))
   `(dired-directory                   ((t (:foreground ,fg :bold t))))
   `(dired-marked                      ((t (:background ,bg_lighter :foreground ,cursor))))
   `(dired-flagged                     ((t (:background ,bg_lighter :foreground ,warning))))

   ;; Completions:
   `(compilation-info                  ((t (:foreground ,keyword))))
   `(completions-first-difference      ((t (:foreground ,fg :weight bold))))
   `(completions-annotations           ((t (:foreground ,fg_muted))))

   ;; Org Mode:
   `(org-level-1                       ((t (:foreground ,keyword :bold t))))
   `(org-level-2                       ((t (:foreground ,fg))))
   `(org-level-3                       ((t (:foreground ,fg))))
   `(org-todo                          ((t (:foreground ,fg :bold t))))
   `(org-done                          ((t (:foreground ,fg_muted :bold t))))
   `(org-agenda-structure              ((t (:foreground ,fg))))
   `(org-agenda-date                   ((t (:foreground ,fg))))
   `(org-agenda-date-today             ((t (:foreground ,fg :bold t))))
   `(org-agenda-done                   ((t (:foreground ,fg_muted))))
   `(org-headline-done                 ((t (:foreground ,fg_muted))))
   `(org-scheduled                     ((t (:foreground ,fg))))
   `(org-scheduled-today               ((t (:foreground ,fg :bold t))))
   `(org-date                          ((t (:foreground ,keyword :underline t))))
   `(org-drawer                        ((t (:foreground ,str))))
   `(org-special-keyword               ((t (:foreground ,str))))
   `(org-scheduled-previously          ((t (:foreground ,warning)))) ;; Change this to proper face color.
   `(org-document-info                 ((t (:foreground ,keyword))))
   `(org-document-title                ((t (:foreground ,keyword))))

   ;; Web Mode:
   `(web-mode-doctype-face             ((t (:foreground ,fg))))
   `(web-mode-html-tag-bracket-face    ((t (:foreground ,fg))))
   `(web-mode-html-attr-name-face      ((t (:foreground ,fg_darker))))
   `(web-mode-html-tag-face            ((t (:foreground ,fg))))

   ;; Company Mode:
   `(company-tooltip                   ((t (:background ,bg_darker :foreground ,fg))))
   `(company-tooltip-annotation        ((t (:foreground ,fg_muted))))
   `(company-tooltip-common            ((t (:background ,bg_lighter :foreground ,cursor))))
   `(company-tooltip-selection         ((t (:background ,bg_lighter :foreground ,cursor))))
   `(company-scrollbar-bg              ((t (:background ,bg_lighter))))
   `(company-scrollbar-fg              ((t (:background ,cursor))))

   ;; LSP User Interface:
   `(lsp-ui-doc-background            ((t (:background ,bg_darker))))
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
