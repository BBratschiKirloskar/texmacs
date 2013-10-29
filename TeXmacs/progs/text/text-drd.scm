
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; MODULE      : text-drd.scm
;; DESCRIPTION : data relation definitions for text mode
;; COPYRIGHT   : (C) 2005  Joris van der Hoeven
;;
;; This software falls under the GNU general public license version 3 or later.
;; It comes WITHOUT ANY WARRANTY WHATSOEVER. For details, see the file LICENSE
;; in the root directory or <http://www.gnu.org/licenses/gpl-3.0.html>.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(texmacs-module (text text-drd)
  (:use (utils edit variants)))

;; General groups

(define-group variant-tag
  (section-tag) (list-tag) (figure-tag)
  (enunciation-tag) (prominent-tag) (frame-tag)
  (textual-tag) (code-tag) (ornament-tag))

(define-group similar-tag
  (section-tag) (list-tag) (figure-tag)
  (enunciation-tag) (prominent-tag) (frame-tag)
  (textual-tag) (code-tag) (equation-tag) (ornament-tag))

(define-group numbered-tag
  (section-tag)
  (theorem-tag) (definition-tag) (remark-tag) (exercise-tag)
  (figure-tag) (equation-tag))

;; Environments with titles

(define-group titled-tag
  (auto-titled-tag) (render-titled-tag))

(define-group auto-titled-tag
  (enunciation-tag) proof (figure-tag))

(define-group render-titled-tag
  (render-enunciation-tag) render-proof (render-figure-tag))

;; Sections

(define-group section-tag
  part chapter appendix
  section subsection subsubsection
  paragraph subparagraph)

(define-group section*-tag
  part* chapter* appendix*
  section* subsection* subsubsection*
  paragraph* subparagraph*)

(define-group special-section-tag
  prologue epilogue)

(define-group automatic-section-tag
  table-of-contents bibliography the-index the-glossary
  list-of-figures list-of-tables)

(define-group long-principal-section-tag
  part part* chapter chapter* appendix appendix*
  (special-section-tag) (automatic-section-tag))

(define-group short-principal-section-tag
  section section* (long-principal-section-tag))

;; Lists

(define-group list-tag
  (itemize-tag) (enumerate-tag) (description-tag))

(define-group itemize-tag
  itemize itemize-minus itemize-dot itemize-arrow)

(define-group enumerate-tag
  enumerate enumerate-numeric enumerate-roman
  enumerate-Roman enumerate-alpha enumerate-Alpha)

(define-group description-tag
  description description-compact description-aligned
  description-dash description-long)

;; Document titles

(define-group doc-title-tag
  (doc-title-active-tag) (doc-title-inactive-tag) doc-title-options)

(define-group doc-title-active-tag
  doc-title doc-subtitle doc-author doc-date doc-misc doc-note)

(define-group doc-title-inactive-tag
  doc-running-title doc-running-author)

(define-group doc-author-tag
  author-data)

(define-group author-data-tag
  author-name author-affiliation author-email author-homepage author-misc
  author-note)

(define-group abstract-data-tag
  abstract abstract-acm abstract-arxiv abstract-pacs abstract-msc
  abstract-keywords)

;; Enunciations

(define-group enunciation-tag
  (theorem-tag) (definition-tag) (remark-tag) (exercise-tag) (solution-tag))

(define-group theorem-tag
  theorem proposition lemma corollary conjecture)

(define-group definition-tag
  definition axiom notation)

(define-group remark-tag
  remark note example convention warning acknowledgments)

(define-group exercise-tag
  exercise problem question)

(define-group solution-tag
  solution answer)

(define-group render-enunciation-tag
  render-theorem render-remark render-exercise render-solution)

;; Other textual environments

(define-group prominent-tag
  quote-env quotation verse)

(define-group frame-tag
  padded overlined underlined bothlined framed ornamented)

;; Textual markup tags

(define-group textual-tag
  (strong-tag) (name-tag) (monospaced-tag) (size-tag) (opacity-tag))

(define-group strong-tag
  strong em dfn underline)

(define-group name-tag
  name person cite*)

(define-group monospaced-tag
  kbd code* var)

(define-group size-tag
  really-tiny tiny very-small small
  normal-size large very-large huge really-huge)

(define-group opacity-tag
  pastel greyed light)

;; Figures and tables

(define-group figure-tag
  (small-figure-tag) (big-figure-tag))

(define-group small-figure-tag
  small-figure small-table)

(define-group big-figure-tag
  big-figure big-table)

(define-group render-figure-tag
  render-small-figure render-big-figure)

;; Figures and tables

(define-group equation-tag
  equation eqnarray)

;; Algorithms

(define-group algorithm-tag
  algorithm algorithm* named-algorithm
  specified-algorithm specified-algorithm* named-specified-algorithm)

;; Code fragments

(define-group code-tag
  (inline-code-tag) (block-code-tag))

(define-group inline-code-tag
  verbatim scm mmx cpp shell)

(define-group block-code-tag
  verbatim-code scm-code mmx-code cpp-code shell-code)

;; ornaments

(define-group ornament-tag
  manila-paper rough-paper ridged-paper pine granite metal)