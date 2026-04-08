// Section 3 — Subgroup Proposals

= Subgroup Proposals

// ============================================================
// Subgroup A: [Names]
// Subgroup B: [Names]
// ============================================================

== Subgroup A — [Names] <subgroup-a>

=== Tool / Intervention Proposal

We propose the *Community Structural Risk Monitor (CSRM)*, a causal indicator dashboard designed for municipal policymakers, social services, and civil infrastructure planners --- commissioned by the national police as part of a broader crime prevention strategy, but deliberately routing actionable output to the government actors best positioned to address root causes. Rather than predicting _where_ crime will occur, CSRM investigates _why_ crime is emerging in a given area by surfacing correlations between crime patterns and deteriorating structural conditions.

The system operates on a *dual-trigger model*. Police-reported crime frequency acts as a _lagging indicator_ --- confirming that something has already materialised. Individual stress signals act as _leading indicators_ --- emergency service calls, social services referrals, housing complaints, and school dropout notices that suggest structural pressure is building before it manifests as crime. When both streams rise simultaneously in the same area, the system opens a *12-month data collection window* for that neighbourhood.

During this window, CSRM aggregates neighbourhood-level statistics from existing government datasets --- CBS income distribution, GGD healthcare access and addiction treatment capacity, housing corporation eviction and arrears data, and municipal social benefit uptake. Crucially, no individual-level data is stored or displayed. This is a deliberate departure from existing Dutch predictive systems such as Amsterdam's Top600 programme and the ProKid 12-SI instrument, both of which generate individual-level risk scores for specific people @galic2023. CSRM uses *ecological correlation* instead: it asks whether the neighbourhood profile as a whole correlates with the observed crime trend, never linking any individual to a cause or producing a personal risk score.

The indicators tracked are not chosen arbitrarily. They are *pre-validated by domain experts* --- criminologists, sociologists, and public health researchers --- as variables with established causal relationships to crime emergence. The system only tracks what is known to be fixable, and *data is only accessible to the stakeholder capable of acting on it*. A GP shortage indicator routes to the GGD and health ministry. Unemployment trends route to the labour department. Housing stress routes to housing corporations. Access follows accountability.

The system's output is deliberately minimal: a map pin appears only when crime frequency, individual stress signals, and structural indicators all converge in the same area over time. _The machine is the nudger, not the judge._ The pin triggers human expert deliberation --- it never prescribes action.


=== Human--Machine Interaction Design

The central design principle of CSRM is that *automated output should narrow attention, not determine action*. This reflects both the requirement that humans retain final decision authority, and the lesson from CAS's failure --- documented by Galic, Das and Schuilenburg (2023) --- that human subjectivity inevitably shapes how automated outputs are interpreted in practice @galic2023 @waardenburg2018. Rather than fighting this, CSRM is designed around it: the system produces only a flag, and the meaning of that flag is deliberately left to human expert judgement.

==== Four-Stage Interaction Flow

The interaction is structured in four stages:

+ *Silent monitoring.* The system continuously monitors dual-signal streams (police crime reports and individual stress signals) across all neighbourhoods. No output is raised unless convergence thresholds are met.

+ *Pattern detection and data window.* When a pattern is detected --- same location, same crime type, or recurring socioeconomic victim profile --- a 12-month data collection window opens and structural indicators are aggregated for that area.

+ *Convergence flag.* If structural indicators correlate with the observed crime-and-stress pattern within the window, a map pin appears in the dashboard.

+ *Human deliberation.* The pin triggers a review process: relevant municipal departments are notified, a cross-departmental panel is convened, and human experts decide whether and how to intervene.

// TODO: Insert flow diagram figure here
// #figure(
//   image("../figures/flow-diagram.png", width: 90%),
//   caption: [CSRM interaction flow: from silent monitoring to human deliberation.],
// )

==== Handling Disagreement

Disagreement between human judgement and the system's signal is explicitly anticipated and welcomed, in line with the framework proposed by Pozzi, Sand, and Jongsma (2026) for handling clinician--AI disagreement @pozzi2026. A local community worker or social services officer who knows the area may have contextual knowledge the system cannot capture --- informal support networks, recent community initiatives, cultural dynamics. Their assessment takes precedence. The system's pin is an _invitation to look_, not a directive to act.

This directly addresses one of the core criticisms of CAS: that the heatmap output created an implicit pressure on officers to act on flagged areas even when their own judgement suggested otherwise, because the system's output carried an unwarranted air of objectivity @waardenburg2018. CSRM's output is framed as a _question_, not an answer.

If experts review the flagged area and conclude the structural conditions do not warrant intervention, the window closes and no action is taken. This outcome is recorded and fed back to the expert validation panel to refine future indicator thresholds --- creating a *learning loop* that improves the system based on human expert judgement rather than purely on data.

==== Tiered Access Model

The tiered access model ensures that no single actor sees the complete picture. Each stakeholder sees only the indicators within their domain of action and responsibility:

- *Urban planners* see: "Area X flagged --- needs attention."
- *GGD / health services* see: healthcare-specific indicators (GP wait times, addiction treatment capacity).
- *Labour department* sees: employment and income indicators.
- *Housing corporations* see: eviction rates, arrears, housing quality.

This also addresses a documented risk in Dutch predictive systems: that data aggregated for one purpose gets repurposed by other actors --- including police --- in ways that were never intended @galic2023 @schuilenburg2023. By design, CSRM's data architecture makes such repurposing *structurally impossible* rather than merely prohibited by policy.

// TODO: Insert mockup figure here
// #figure(
//   image("../figures/mockup.png", width: 90%),
//   caption: [CSRM dashboard mockup showing role-based tiered access.],
// )


#line(length: 100%, stroke: 0.5pt + gray)

== Subgroup B — [Names] <subgroup-b>

=== Tool / Intervention Proposal

// TODO: ~300 words / 0.5 page

#emph[Subgroup B's proposal here.]


=== Human--Machine Interaction Design

// TODO: ~2 pages, including flow diagram and mockup

#emph[Subgroup B's interaction design here.]
