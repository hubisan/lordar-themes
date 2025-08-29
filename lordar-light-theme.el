;;; lordar-light-theme.el --- Short Description -*- lexical-binding: t -*-

;; Copyright (C) 2024 Daniel Hubmann

;; This file is not part of GNU Emacs

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

;; ...

;;; Code:

;;;; Requirements

(require 'lordar-themes)

;;;; Variables

;;;; Customization

(defgroup lordar-light-theme nil
  "Lordar theme customization."
  :group 'faces)

(defface lordar-light-theme-default nil
  "Default face to use."
  :group nil)

(defface lordar-light-theme-bold
  '((t (:bold t)))
  "Bold face."
  :group nil)

(defface lordar-light-theme-strong nil
  "Emphasize information of structural nature."
  :group nil)

(defface lordar-light-theme-faded nil
  "Faded face is for information that are less important."
  :group nil)

(defface lordar-light-theme-subtle nil
  "Subtle face is used to suggest a physical area on the screen."
  :group nil)

(defface lordar-light-theme-keyword nil
  "Default keyword face."
  :group nil)

(defface lordar-light-theme-type nil
  "Default type face."
  :group nil)

(defface lordar-light-theme-verbatim nil
  "Used for things like strings."
  :group nil)

(defface lordar-light-theme-highlight nil
  "Default highlight face."
  :group nil)

(defface lordar-light-theme-success nil
  "Used to show something is successfull."
  :group nil)

(defface lordar-light-theme-success-inversed nil
  "Used to show something is successfull, inversed."
  :group nil)

(defface lordar-light-theme-warning nil
  "Used for warnings."
  :group nil)

(defface lordar-light-theme-warning-inversed nil
  "Used for warnings, inversed."
  :group nil)

(defface lordar-light-theme-error nil
  "Used for errors."
  :group nil)

(defface lordar-light-theme-error-inversed nil
  "Used for errors, inversed."
  :group nil)

;;;; Helpers

;;;###autoload
(defun lordar-light-theme-enable ()
  "Load and enable `lordar-light-theme'."
  (interactive)
  (lordar-theme--enable 'lordar-light))

;;;; Define Theme

(deftheme lordar-light "Lordar-light, minimalistic light theme")

;; Faded means the colors is faded but still has a contrast ratio of around 4.5.
;; Subtle means there is just a hint of the color left.
(let* (
      (background-93 "#f7e9d5")
      (background-94 "#f8ecdb")
      (background-95 "#f9efe1")
      ;; Irgendwie kommt es auf den Bildschirm drauf an.
      (cream background-94)
      (background cream)

      (foreground-black "#000000")
      (foreground-grey "#1b1b1b")
      (foreground foreground-grey)

      (red-bright "")
      (red "#a30030")
      (red-faded "#b53e48")
      (red-subtle "#efcfb9")            ; #e9b9a6
      (brown "#7A5C31")
      (orange "#843a00")
      (orange-faded "#9a5625")
      (orange-subtle "#ebd0b4")         ; #e0bd9c

      (yellow "#634d00")
      (yellow-faded "#7c6527")
      (yellow-subtle "#e6d2b4")         ; #d5c19d
      (green "#005b4c")
      (green-faded "#3b7260")
      (green-subtle "#dcd5bd")          ; #c3c5ae
      (teal "#005290")
      (teal-faded "#48699b")
      (teal-subtle "#e0d4c6")           ; #c9c2b
      ;; (blue "#5139b4")
      (blue "#502ea1")
      ;; (blue "#27007d")
      ;; (blue "#1d0061")
      (blue-faded "#7555b9")
      (blue-subtle "#e6d0ca")           ; #d6bcc8
      (purple "#783289")
      (purple-faded "#8f5195")
      (purple-subtle "#e9d0c5")         ; #dbbcbe
      (pink "#872d67")
      (pink-faded "#9b4e78")
      (pink-subtle "#ead0c1")           ; #debbb5

      ;; Die Farbe welche Swiper nutzt, das Grün von weiss nicht wo, ist ne
      ;; coole hightlight farbe. Prüfen.
      ;; #b4eeb4 - darkseagreen2
      (grey "#505050")
      (grey-faded "#6a6764")
      (grey-subtle "#e3d4be"))          ; #cec2af

  (custom-theme-set-faces
   'lordar-light

;;;;; Base

   `(default ((t (:weight normal :foreground ,foreground :background ,background :family "SauceCodePro Nerd Font Mono"))))
   `(cursor ((t (:background ,blue-faded))))

;;;;; Custom

   `(lordar-light-theme-default ((t (:inherit default))))
   `(lordar-light-theme-bold ((t (:weight bold))))
   `(lordar-light-theme-strong ((t (:inherit lordar-light-theme-bold :foreground ,blue))))
   `(lordar-light-theme-faded ((t :foreground ,grey-faded)))
   `(lordar-light-theme-subtle ((t :foreground ,blue-subtle)))
   `(lordar-light-theme-keyword ((t :foreground ,blue)))
   `(lordar-light-theme-type ((t :foreground ,blue)))
   `(lordar-light-theme-verbatim ((t :foreground ,yellow)))
   `(lordar-light-theme-hightlight ((t :foreground ,blue)))

   ;; `(lordar-light-theme-success ((t :foreground ,green)))
   ;; `(lordar-light-theme-success-inversed ((t :foreground ,green-subtle :background ,green)))
   ;; `(lordar-light-theme-warning ((t :foreground ,orange)))
   ;; `(lordar-light-theme-warning-inversed ((t :foreground ,orange-subtle :background ,orange)))
   ;; `(lordar-light-theme-error ((t :foreground ,green)))
   ;; `(lordar-light-theme-error-inversed ((t :foreground ,red-subtle :background ,red)))

;;;;; Basis

   `(fixed-pitch ((t (:family "SauceCodePro Nerd Font Mono"))))
   `(variable-pitch ((t (:family "Noto Serif"))))
   ;; `(escape-glyph ((((background dark)) (:foreground "cyan")) (((type pc)) (:foreground "magenta")) (t (:foreground "brown"))))
   ;; `(homoglyph ((((background dark)) (:foreground "cyan")) (((type pc)) (:foreground "magenta")) (t (:foreground "brown"))))
   ;; `(minibuffer-prompt ((t (:foreground "#84ADFF"))))
   ;; #b4eeb4 - darkseagreen2
   `(highlight ((t (:background "#ede0ad" :distant-foreground ,foreground))))
   `(region ((t (:extend t :background "#ede0ad" :distant-foreground ,foreground))))
   ;; `(shadow ((t (:foreground "#e1e2e5"))))
   ;; `(secondary-selection ((t (:extend t :background "#2b293b"))))
   ;; `(trailing-whitespace ((t (:underline (:color "#FE0400" :style wave :position nil) :background "#272829"))))
   ;; `(font-lock-bracket-face ((t (:inherit (font-lock-punctuation-face)))))
   `(font-lock-builtin-face ((t (:foreground ,blue))))
   `(font-lock-comment-face ((t (:foreground "#8d8fa8"))))
   '(font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face))))
   ;; `(font-lock-constant-face ((t (:foreground "#00D7C5"))))
   ;; `(font-lock-delimiter-face ((t (:inherit (font-lock-punctuation-face)))))
   ;; `(font-lock-doc-markup-face ((t (:inherit (font-lock-constant-face)))))
   ;; `(font-lock-escape-face ((t (:inherit (font-lock-regexp-grouping-backslash)))))
   ;; `(font-lock-function-call-face ((t (:inherit (font-lock-function-name-face)))))
   `(font-lock-function-name-face ((t (:foreground ,blue))))
   `(font-lock-keyword-face ((t (:foreground ,blue))))
   ;; `(font-lock-negation-char-face ((t (:foreground "#FE0400"))))
   ;; `(font-lock-number-face ((t nil)))
   ;; `(font-lock-misc-punctuation-face ((t (:inherit (font-lock-punctuation-face)))))
   ;; `(font-lock-operator-face ((t nil)))
   ;; `(font-lock-preprocessor-face ((t (:foreground "#FF85C2"))))
   ;; `(font-lock-property-name-face ((t (:inherit (font-lock-variable-name-face)))))
   ;; `(font-lock-property-use-face ((t (:inherit (font-lock-property-name-face)))))
   ;; `(font-lock-punctuation-face ((t nil)))
   ;; `(font-lock-regexp-grouping-backslash ((t (:foreground "#00D2F2"))))
   ;; `(font-lock-regexp-grouping-construct ((t (:foreground "#C877F0"))))
   `(font-lock-string-face ((t (:foreground ,teal))))
   `(font-lock-doc-face ((t (:inherit font-lock-string-face))))
   ;; `(font-lock-type-face ((t (:foreground "#FF8A9D"))))
   `(font-lock-variable-name-face ((t (:foreground ,purple))))
   ;; `(font-lock-variable-use-face ((t (:inherit (font-lock-variable-name-face)))))
   ;; `(font-lock-warning-face ((t (:foreground "#FF6D3C"))))
   ;; `(button ((t (:underline nil :foreground "#A9A4FF"))))
   ;; `(link ((t (:underline nil :foreground "#A9A4FF"))))
   ;; `(link-visited ((t (:underline nil :foreground "#918BFF"))))
   `(fringe ((t (:inherit default :foreground "#bba98e" ,grey))))
   `(header-line ((t (:foreground ,foreground :background ,background))))
   ;; `(tooltip ((((class color)) (:inherit (variable-pitch) :foreground "black" :background "lightyellow")) (t (:inherit (variable-pitch)))))

   `(bold ((t (:weight semi-bold))))

   `(mode-line ((t (:foreground "#4e4639" :background "#e9d1c1"))))
   ;; `(mode-line-buffer-id ((t (:foreground "#00F1DD"))))
   ;; `(mode-line-emphasis ((t (:foreground "#FF80E3"))))
   ;; `(mode-line-highlight ((t (:foreground "#FF80E3"))))
   `(mode-line-inactive ((t (:background "#e8dbc8" :foreground "#90826d"))))
   `(isearch ((t (:background "darkseagreen2" :distant-foreground ,foreground))))
   ;; `(isearch-fail ((t (:foreground "#090517" :background "#FF6D3C"))))
   `(lazy-highlight ((t (:background "darkseagreen2" :distant-foreground ,foreground))))
   ;; `(match ((t (:inverse-video t :foreground "#ffb54c" :background "#090517"))))
   ;; `(next-error ((t (:inherit (region)))))
   ;; `(query-replace ((t (:inherit (isearch)))))
   `(doom-modeline ((t (:inherit mode-line :weight normal))))
   `(doom-modeline-bar ((t (:inherit mode-line))))
   `(doom-modeline-bar-inactive ((t (:inherit mode-line-inactive))))

   ;; `(hl-line ((t (:background ,blue-subtle))))
   `(hl-line ((t (:background "#ede1d0"))))
   ;; `(hl-line ((t (:background "#eedfd0"))))

   `(show-paren-match ((t (:foreground unspecified :background unspecified :weight bold))))
   `(show-paren-mismatch ((t (:inherit lordar-light-theme-error-inversed))))

   ;;;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,grey-faded))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,grey-faded))))
   `(rainbow-delimiters-unmatched-face ((t (:weight bold :foreground ,red))))
   `(rainbow-delimiters-mismatched-face ((t (:weight bold :foreground ,red))))

   ;;;; highlight-parentheses
   `(highlight-parentheses-highlight ((t (:underline t :foreground ,red))))

;;;;; Outline

   `(outline-minor-1 ((t (:foreground ,foreground :weight bold :height 1.08))))
   `(outline-minor-2 ((t (:foreground ,foreground :weight bold :height 1.04))))
   `(outline-minor-3 ((t (:foreground ,foreground :weight bold :height 1.00))))
   `(outline-minor-4 ((t (:foreground ,foreground :weight semi-bold))))
   `(outline-minor-5 ((t (:foreground ,foreground :weight semi-bold))))
   `(outline-minor-6 ((t (:foreground ,foreground :weight semi-bold))))
   `(outline-minor-7 ((t (:foreground ,foreground :weight semi-bold))))
   `(outline-minor-8 ((t (:foreground ,foreground :weight semi-bold))))

;;;;; Window-Divider

   ;; Alt color for mode line
   `(window-divider ((t (:foreground "#e8dbc8"))))
   `(window-divider-first-pixel ((t (:foreground "#e8dbc8"))))
   `(window-divider-last-pixel ((t (:foreground "#e8dbc8"))))
   )

;;;; Custom Variables

  (custom-theme-set-variables
   'lordar-light
   ;;;; pos-tip
   ;; `(pos-tip-foreground-color ,grey-lighter)
   ;; `(pos-tip-background-color ,blue2-darkest)

;;;;; Hl-Parens

   `(highlight-parentheses-background-colors '(,green))
   `(highlight-parentheses-colors '(,red))

;;;;; Evil-Mode

   `(evil-normal-state-cursor '(box ,blue))
   `(evil-motion-state-cursor '(box ,blue))
   `(evil-insert-state-cursor '(bar ,blue))
   `(evil-replace-state-cursor '(hbar ,blue))
   `(evil-operator-state-cursor '((hbar . ,(/ (window-pixel-height) (* (window-height) 2))) ,blue))
   `(evil-visual-state-cursor '(box ,green))
   `(evil-emacs-state-cursor '(box ,green))
   )
  )

;;;; Provide Theme

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'lordar-light)

;;; lordar-light-theme.el ends here
