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
	  (bg         "grey13")       ;; #212121
	  (bg_darker  "grey11")       ;; #1c1c1c
	  (bg_lighter "grey17")       ;; #2b2b2b
	  (fg         "grey58")       ;; #949494
	  (fg_muted   "grey30")       ;; #333333
	  (comment "LightSalmon4")    ;; #8b5742
	  (cursor  "DarkGoldenrod3")  ;; #cd9b1d
	  (keyword "DarkGoldenrod4")  ;; #8b6508
      (str     "LightGoldenrod4") ;; #8b8878
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
   `(font-lock-keyword-face         ((t (:foreground ,keyword))))
   `(font-lock-string-face          ((t (:foreground ,str))))
   `(font-lock-type-face            ((t (:foreground ,keyword))))
   `(font-lock-variable-name-face   ((t (:foreground ,fg))))
   `(font-lock-warning-face         ((t (:foreground ,fg :weight bold ))))
   `(fringe                         ((t (:background ,bg_darker :foreground ,fg))))
   `(hl-line                        ((t (:background ,bg_darker))))
   `(line-number                    ((t (:background ,bg_darker :foreground ,fg_muted))))
   `(line-number-current-line       ((t (:background ,bg_lighter :foreground ,keyword))))
   `(link                           ((t (:foreground ,keyword :underline t))))
   `(minibuffer-prompt              ((t (:foreground ,keyword :bold t))))
   `(mode-line                      ((t (:foreground ,fg :background ,bg_darker))))
   `(mode-line-inactive             ((t (:foreground ,fg_muted :background ,bg_darker))))
   `(region                         ((t (:background ,bg_darker))))
   `(shadow                         ((t (:foreground ,comment))))
   `(highlight                      ((t (:background ,bg_lighter :foreground ,cursor))))
   `(vertical-border                ((t (:foreground ,bg_darker))))

   ;; Parenthesis Mode:
   `(show-paren-match               ((t (:background ,bg_lighter :foreground ,cursor))))

   ;; Completions
   `(completions-common-part        ((t (:foreground ,keyword))))

   ;; I Search:
   `(isearch                        ((t (:background ,bg_lighter :foreground ,cursor))))
   `(lazy-highlight                 ((t (:background ,cursor :foreground ,bg_darker))))

   ;; Dired:
   `(dired-header                   ((t (:foreground ,keyword))))
   `(dired-directory                ((t (:foreground ,fg :bold t))))

   ;; Completions:
   `(compilation-info               ((t (:foreground ,keyword))))
   `(completions-first-difference   ((t (:foreground ,fg :weight bold))))
   `(completions-annotations        ((t (:foreground ,fg_muted))))

   ;; Org Mode:
   `(org-level-1                    ((t (:foreground ,keyword :bold t))))
   `(org-level-2                    ((t (:foreground ,fg))))
   `(org-level-3                    ((t (:foreground ,fg))))
   `(org-todo                       ((t (:foreground ,fg :bold t))))
   `(org-done                       ((t (:foreground ,fg_muted :bold t))))
   `(org-agenda-structure           ((t (:foreground ,fg))))
   `(org-agenda-date                ((t (:foreground ,fg))))
   `(org-agenda-date-today          ((t (:foreground ,fg :bold t))))
   `(org-agenda-done                ((t (:foreground ,fg_muted))))
   `(org-scheduled                  ((t (:foreground ,fg))))
   `(org-scheduled-today            ((t (:foreground ,fg :bold t))))
   `(org-date                       ((t (:foreground ,keyword :underline t))))
   `(org-drawer                     ((t (:foreground ,str))))
   `(org-special-keyword            ((t (:foreground ,str))))


   ;; Web Mode:
   `(web-mode-doctype-face          ((t (:foreground ,fg))))
   `(web-mode-html-tag-bracket-face ((t (:foreground ,fg))))
   `(web-mode-html-attr-name-face   ((t (:foreground ,fg))))
   `(web-mode-html-tag-face         ((t (:foreground ,fg))))

   ;; Company Mode:
   `(company-tooltip                ((t (:background ,bg_darker :foreground ,fg))))
   `(company-tooltip-annotation     ((t (:foreground ,fg_muted))))
   `(company-tooltip-common         ((t (:background ,bg_lighter :foreground ,cursor))))
   `(company-tooltip-selection      ((t (:background ,bg_lighter :foreground ,cursor))))
   `(company-scrollbar-bg           ((t (:background ,bg_lighter))))
   `(company-scrollbar-fg           ((t (:background ,cursor))))
    ;; company-tooltip-search
    ;; company-tooltip-search-selection
    ;; company-tooltip-mouse
    ;; company-preview
    ;; company-preview-common
    ;; company-preview-search
    ;; company-template-field
    ;; company-box-candidate

   ;; LSP User Interface:
   `(lsp-ui-doc-background         ((t (:background ,bg_darker))))
   ;; lsp-ui-doc-background
   ;; lsp-ui-peek-filename
   ;; lsp-ui-peek-header
   ;; lsp-ui-peek-selection
   ;; lsp-ui-peek-list
   ;; lsp-ui-peek-peek
   ;; lsp-ui-peek-highlight
   ;; lsp-ui-peek-line-number
   ;; lsp-ui-sideline-code-action
   ;; lsp-ui-sideline-current-symbol
   ;; lsp-ui-sideline-symbol-info

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
