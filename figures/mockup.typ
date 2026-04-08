#set page(width: 20cm, height: 14cm, margin: 0.5cm)
#set text(font: "New Computer Modern", size: 8pt)

// Dashboard frame
#rect(
  width: 100%,
  height: 100%,
  radius: 4pt,
  stroke: 1pt + rgb("#ddd"),
  fill: rgb("#f9f9f9"),
  inset: 0pt,
)[
  // Top bar
  #rect(
    width: 100%,
    fill: rgb("#2c3e50"),
    inset: (x: 12pt, y: 8pt),
    radius: (top-left: 4pt, top-right: 4pt),
  )[
    #grid(
      columns: (1fr, auto),
      text(fill: white, weight: "bold", size: 10pt)[CSRM Dashboard],
      text(fill: rgb("#bbb"), size: 8pt)[
        Logged in as: *J. de Vries* · Role: #box(
          rect(
            fill: rgb("#3498db"),
            radius: 3pt,
            inset: (x: 6pt, y: 2pt),
          )[#text(fill: white, size: 7pt)[GGD / Health Services]]
        )
      ],
    )
  ]

  #v(8pt)
  #pad(x: 12pt)[
    #grid(
      columns: (55%, 45%),
      gutter: 12pt,

      // LEFT: Map area
      rect(
        width: 100%,
        height: 9.5cm,
        radius: 4pt,
        stroke: 1pt + rgb("#ddd"),
        fill: rgb("#eef2f7"),
        inset: 10pt,
      )[
        #text(size: 7pt, fill: rgb("#999"))[Amsterdam Metropolitan Area · Last updated: 2026-04-07]
        #v(0.3cm)

        // Fake map with pins
        #rect(
          width: 100%,
          height: 6.5cm,
          fill: rgb("#dce6f0"),
          radius: 4pt,
          stroke: 0.5pt + rgb("#bbb"),
          inset: 8pt,
        )[
          // Grid lines to suggest map
          #v(0.5cm)
          #grid(
            columns: (1fr, 1fr, 1fr),
            rows: (auto, auto, auto),
            gutter: 8pt,

            // Empty cells with a few "pins"
            [],
            align(center)[
              #rect(fill: rgb("#e67e22"), radius: 50%, width: 12pt, height: 12pt, inset: 0pt)[
                #align(center + horizon)[#text(fill: white, size: 6pt, weight: "bold")[!]]
              ]
              #text(size: 6pt, fill: rgb("#666"))[Nieuw-West]
            ],
            [],

            align(center)[
              #rect(fill: rgb("#f39c12"), radius: 50%, width: 10pt, height: 10pt, inset: 0pt)[
                #align(center + horizon)[#text(fill: white, size: 5pt)[?]]
              ]
              #text(size: 6pt, fill: rgb("#666"))[Geuzenveld]
            ],
            [],
            align(center)[
              #rect(fill: rgb("#e74c3c"), radius: 50%, width: 14pt, height: 14pt, inset: 0pt)[
                #align(center + horizon)[#text(fill: white, size: 7pt, weight: "bold")[!]]
              ]
              #text(size: 6pt, fill: rgb("#666"))[Zuidoost]
            ],

            [],
            align(center)[
              #rect(fill: rgb("#95a5a6"), radius: 50%, width: 8pt, height: 8pt, inset: 0pt)[]
              #text(size: 6pt, fill: rgb("#999"))[Centrum]
              #text(size: 5pt, fill: rgb("#bbb"))[(no flag)]
            ],
            [],
          )
        ]

        #v(0.3cm)
        #grid(
          columns: (auto, auto, auto, auto),
          gutter: 10pt,
          [#rect(fill: rgb("#e74c3c"), radius: 50%, width: 8pt, height: 8pt, inset: 0pt)[] #text(size: 6pt)[Strong convergence]],
          [#rect(fill: rgb("#e67e22"), radius: 50%, width: 8pt, height: 8pt, inset: 0pt)[] #text(size: 6pt)[Moderate]],
          [#rect(fill: rgb("#f39c12"), radius: 50%, width: 8pt, height: 8pt, inset: 0pt)[] #text(size: 6pt)[Emerging]],
          [#rect(fill: rgb("#95a5a6"), radius: 50%, width: 8pt, height: 8pt, inset: 0pt)[] #text(size: 6pt)[No flag]],
        )
      ],

      // RIGHT: Detail panel
      [
        // Selected pin details
        #rect(
          width: 100%,
          radius: 4pt,
          stroke: 1pt + rgb("#e74c3c"),
          fill: white,
          inset: 10pt,
        )[
          #text(weight: "bold", size: 9pt)[Zuidoost — Strong Convergence]
          #v(2pt)
          #text(size: 7pt, fill: rgb("#666"))[Flag raised: 2026-03-15 · Window: 12 months active]
          #v(6pt)

          #text(weight: "bold", size: 8pt, fill: rgb("#2c3e50"))[Your indicators (Health):]
          #v(4pt)

          #rect(width: 100%, fill: rgb("#fef9f0"), inset: 8pt, radius: 3pt, stroke: 0.5pt + rgb("#eee"))[
            #grid(
              columns: (1fr, auto),
              row-gutter: 6pt,
              text(size: 7.5pt)[GP wait time (avg)], text(size: 7.5pt, fill: rgb("#e74c3c"), weight: "bold")[14 days #sym.arrow.t],
              text(size: 7.5pt)[Addiction treatment wait], text(size: 7.5pt, fill: rgb("#e74c3c"), weight: "bold")[8 weeks #sym.arrow.t],
              text(size: 7.5pt)[Mental health referrals], text(size: 7.5pt, fill: rgb("#e67e22"), weight: "bold")[+23% YoY],
              text(size: 7.5pt)[Emergency room visits], text(size: 7.5pt, fill: rgb("#95a5a6"))[stable],
            )
          ]

          #v(6pt)
          #text(size: 7pt, fill: rgb("#999"))[Other departments have been notified with their own indicators. You do not have access to employment, housing, or income data.]
        ]

        #v(8pt)

        // Actions
        #rect(
          width: 100%,
          radius: 4pt,
          stroke: 1pt + rgb("#ddd"),
          fill: white,
          inset: 10pt,
        )[
          #text(weight: "bold", size: 8pt)[Actions]
          #v(6pt)
          #rect(width: 100%, fill: rgb("#27ae60"), radius: 4pt, inset: (x: 10pt, y: 6pt))[
            #align(center)[#text(fill: white, size: 8pt, weight: "bold")[Request Panel Review]]
          ]
          #v(4pt)
          #rect(width: 100%, fill: rgb("#3498db"), radius: 4pt, inset: (x: 10pt, y: 6pt))[
            #align(center)[#text(fill: white, size: 8pt, weight: "bold")[Add Field Notes]]
          ]
          #v(4pt)
          #rect(width: 100%, fill: white, radius: 4pt, inset: (x: 10pt, y: 6pt), stroke: 1pt + rgb("#ccc"))[
            #align(center)[#text(fill: rgb("#666"), size: 8pt)[Dismiss Flag (with reason)]]
          ]
        ]

        #v(8pt)

        // Disclaimer
        #rect(
          width: 100%,
          radius: 4pt,
          fill: rgb("#fff8e1"),
          stroke: 0.5pt + rgb("#f0d060"),
          inset: 8pt,
        )[
          #text(size: 6.5pt, fill: rgb("#8a6d00"))[
            *Note:* No individual-level data is shown. All figures are neighbourhood aggregates. This flag is an invitation to investigate, not a directive to act. Your local knowledge may override these indicators.
          ]
        ]
      ],
    )
  ]
]
