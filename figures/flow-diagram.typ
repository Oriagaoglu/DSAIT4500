// Standalone flow diagram — compile separately or import as image
#set page(width: 18cm, height: 32cm, margin: 1cm)
#set text(font: "New Computer Modern", size: 9pt)

#align(center)[
  #text(size: 14pt, weight: "bold")[CSRM Interaction Flow]
  #v(0.5cm)
]

// Helper function for boxes
#let stage-box(title, content, color) = {
  rect(
    width: 100%,
    radius: 6pt,
    stroke: 1pt + color,
    fill: color.lighten(90%),
    inset: 12pt,
  )[
    #text(weight: "bold", fill: color)[#title] \
    #text(size: 8.5pt)[#content]
  ]
}

#let arrow() = {
  align(center)[
    #text(size: 16pt)[#sym.arrow.b]
  ]
}

#let decision-diamond(content) = {
  align(center)[
    #rect(
      width: 70%,
      radius: 4pt,
      stroke: 1pt + rgb("#e67e22"),
      fill: rgb("#fef3e2"),
      inset: 10pt,
    )[
      #align(center)[#text(size: 8.5pt, style: "italic")[#content]]
    ]
  ]
}

// --- DATA INPUTS ---
#grid(
  columns: (1fr, 1fr),
  gutter: 12pt,
  rect(
    width: 100%,
    radius: 6pt,
    stroke: 1pt + rgb("#3498db"),
    fill: rgb("#ebf5fb"),
    inset: 10pt,
  )[
    #align(center)[
      #text(weight: "bold", fill: rgb("#3498db"))[Police Crime Reports] \
      #text(size: 8pt)[Lagging indicator — confirmed events]
    ]
  ],
  rect(
    width: 100%,
    radius: 6pt,
    stroke: 1pt + rgb("#3498db"),
    fill: rgb("#ebf5fb"),
    inset: 10pt,
  )[
    #align(center)[
      #text(weight: "bold", fill: rgb("#3498db"))[Stress Signals] \
      #text(size: 8pt)[Leading indicator — emergency calls, referrals, complaints]
    ]
  ],
)

#arrow()

// --- STAGE 1 ---
#stage-box(
  [Stage 1: Silent Monitoring],
  [Both streams are monitored continuously across all neighbourhoods. No output is produced unless convergence thresholds are met.],
  rgb("#2c3e50"),
)

#arrow()

#decision-diamond[Do both streams show rising trends in the same area?]

#grid(
  columns: (1fr, 1fr),
  gutter: 0pt,
  align(center)[#text(size: 8pt, fill: gray)[No #sym.arrow.r continue monitoring]],
  align(center)[#text(size: 8pt, fill: rgb("#27ae60"))[Yes #sym.arrow.b]],
)

#v(0.2cm)

// --- STAGE 2 ---
#stage-box(
  [Stage 2: Pattern Detection & Data Window],
  [A 12-month data collection window opens. Neighbourhood-level indicators are aggregated from CBS, GGD, housing corporations, and municipal services. No individual data.],
  rgb("#8e44ad"),
)

#arrow()

#decision-diamond[Do structural indicators correlate with the crime + stress pattern?]

#grid(
  columns: (1fr, 1fr),
  gutter: 0pt,
  align(center)[#text(size: 8pt, fill: gray)[No #sym.arrow.r window closes silently]],
  align(center)[#text(size: 8pt, fill: rgb("#27ae60"))[Yes #sym.arrow.b]],
)

#v(0.2cm)

// --- STAGE 3 ---
#stage-box(
  [Stage 3: Convergence Flag],
  [A map pin appears on the dashboard. Relevant departments are notified with only the indicators they can act on (tiered access).],
  rgb("#e67e22"),
)

#arrow()

// --- STAGE 4 ---
#stage-box(
  [Stage 4: Human Deliberation],
  [Cross-departmental panel convenes. Community workers and domain experts review the flag. They decide whether to intervene, what form it takes, or dismiss the flag entirely.],
  rgb("#27ae60"),
)

#arrow()

#decision-diamond[Does the panel agree intervention is warranted?]

#v(0.3cm)

#grid(
  columns: (1fr, 1fr),
  gutter: 12pt,
  rect(
    width: 100%,
    radius: 6pt,
    stroke: 1pt + rgb("#95a5a6"),
    fill: rgb("#f8f9fa"),
    inset: 10pt,
  )[
    #align(center)[
      #text(weight: "bold", size: 8.5pt)[No — Flag Dismissed] \
      #text(size: 8pt)[Window closes. Decision recorded and fed back to refine future thresholds.]
    ]
  ],
  rect(
    width: 100%,
    radius: 6pt,
    stroke: 1pt + rgb("#27ae60"),
    fill: rgb("#eafaf1"),
    inset: 10pt,
  )[
    #align(center)[
      #text(weight: "bold", size: 8.5pt)[Yes — Intervention Planned] \
      #text(size: 8pt)[Each department acts within its domain. Outcomes tracked for feedback loop.]
    ]
  ],
)
