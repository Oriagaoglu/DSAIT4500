// ============================================================
// CS4500 / DSAIT4500 — Responsible Computer Science
// Group Work Report
// ============================================================

#set document(
  title: "Responsible CS — Group Work Report",
  author: ("Student A", "Student B", "Student C", "Student D"),
)

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 2.5cm, right: 2.5cm),
  numbering: "1",
)

#set text(font: "New Computer Modern", size: 11pt)
#set par(justify: true, leading: 0.65em)
#set heading(numbering: "1.1")

// ---------- title page ----------
#align(center)[
  #v(3cm)
  #text(size: 14pt, weight: "bold")[CS4500 Responsible Computer Science \ DSAIT4500 Responsible Data Science and AI Engineering]
  #v(1cm)
  #text(size: 20pt, weight: "bold")[Group Work Report]
  #v(1.5cm)
  #text(size: 12pt)[
    *Group X* \
    \
    Student A — Student Number \
    Student B — Student Number \
    Student C — Student Number \
    Student D — Student Number \
  ]
  #v(1cm)
  #text(size: 11pt)[Delft University of Technology \ April 2026]
]

#pagebreak()

// ---------- table of contents ----------
#outline(indent: auto, depth: 3)
#pagebreak()

// ---------- sections ----------
#include "sections/01-context.typ"
#pagebreak()

#include "sections/02-individual.typ"
#pagebreak()

#include "sections/03-subgroup.typ"
#pagebreak()

#include "sections/04-cross-audit.typ"
#pagebreak()

#include "sections/05-ai-disclosure.typ"
#pagebreak()

// ---------- references ----------
#bibliography("references.bib", style: "ieee")
