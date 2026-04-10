// Section 4 — Cross-Auditing

= Cross-Audit: Subgroup A's Proposal <audit-a>

*Strengths*

The proportionality logic is solid: data access only widens when multiple independent signals converge, and "access follows accountability" is baked into the architecture rather than left as a policy promise. Treating the output as a question rather than a verdict is a meaningful guard against over-reliance, and building in a feedback loop where expert disagreements improve future thresholds is the kind of human-in-the-loop design that makes systems like this more accurate and trustworthy over time. The cross-departmental panel also sets a healthy bar for turning a flag into action.

*Areas for Improvement and Open Questions*

*Signal completeness and structural bias.*
The system may be quietest in the places that need it most. Housing signals are easier to generate in rental stock than in owner-occupied homes; school dropout signals depend on schools having social workers to notice them, which is less likely in under-resourced schools. The result is that a well-served neighbourhood having a rough patch could trigger the system faster than a chronically stressed one where data barely gets recorded. One practical fix: weight signals by source coverage. A referral from a poorly covered area is arguably stronger evidence than one from a well-monitored one, because it is harder to produce.

*Convergence criterion and baseline blindspots.*
If both crime and stress signals need to go up before a flag is raised, areas where stress has been high for years may never trigger since there is no upward movement to detect. Chronic deprivation is likely more criminogenic than a sudden short-term spike, so the convergence requirement may miss the neighbourhoods most at risk. It is worth considering whether hitting an absolute threshold, and not just a relative increase, should also be enough to highlight the existing stress. Is the stress-crime relationship modeled as linear, and if not, how does the system capture that?

*Historical bias in thresholds.*
Calibrating on historical data means inheriting the biases of whoever was recording crime and distributing services at the time. A practical safeguard would be periodic bias audits, comparing where the system flags against independent assessments of neighbourhood need, with results shared with the validation panel. Who is currently responsible for noticing when the model appears systematically off, and what is the process for correcting it?

*The 12-month window --- historical or prospective?*
It is unclear whether the system looks back at existing data or starts tracking from the moment a flag is raised. These serve different purposes: historical data helps explain how a situation developed, live tracking shows whether it is getting better or worse. Combining both, showing historical context alongside current indicators in the panel view, could make the flag much more useful to the people acting on it.

*Collaboration under siloed access.*
When a flag is raised, a labour department analyst and a GGD researcher looking at the same area may each have part of the explanation but no way to compare notes. More broadly, insights derived from publicly funded data sources --- CBS, GGD, municipal records --- arguably should not be locked behind departmental access controls at all. Making aggregate structural findings public by default, while keeping operational flags restricted, would naturally enable cross-departmental collaboration without requiring new infrastructure, and would increase transparency as a side effect. What is the reasoning behind keeping these insights internal, and has a public-by-default model for outputs been considered?

*Bad-faith scenarios.*
A flag existing at all is sensitive, even if the underlying data is hidden. Police who know an area has been flagged may act on that alone, which is exactly the automation bias the design is trying to prevent. Framing notifications as "a panel has been convened for area X" rather than "area X has been flagged" is a small change that better reflects the deliberative intent. On the access side: what stops an actor like a housing corporation from using their partial data view in ways that serve their own interests? Access logging with anomaly detection reviewed by an independent auditor would be a reasonable addition.

== Response by Subgroup A <audit-a-response>
// TODO: ~1 page — respond to the audit, propose improvements

== Revised Proposal by Subgroup A <audit-a-revised>

=== Revised Tool / Intervention Proposal
// TODO: updated proposal, mark what changed from Section 3

=== Revised Human--Machine Interaction Design
// TODO: updated interaction design with flow diagram and mockup, mark changes

#pagebreak()

= Cross-Audit: Subgroup B's Proposal <audit-b>

== Critical Audit by Subgroup A <audit-b-feedback>

There is a lot to like about SRRAD. The way the proposal identifies how people behave under decision-making pressure and then designs around that is strong. The reasoning from "officers will defer to a confident-looking number" to "so we build friction into the interface" makes sense, and the cognitive friction gate --- where you have to acknowledge the confidence level, pick an action, and write a justification before anything happens --- is a genuinely good idea. It slows things down in a way that forces the officer to actually think instead of just clicking through. That is more humane, not necessarily better, but it puts a human back in a process that easily becomes automatic.

That said, we have some concerns.

*The Bias Risk Flag is contradictory.* SRRAD shows a confidence interval and a bias risk flag alongside each score. But if the system is telling you "this prediction might be biased," what is the officer supposed to do with that? They are not a data scientist. And more fundamentally, you are asking the same system to judge its own reliability. That is circular. If we do not trust the model enough to use it without a bias warning, maybe the question is whether we should be showing that score at all, not whether we should put a small flag next to it.

*Grid-based districts create artificial boundaries.* Dividing a city into a grid and coloring cells by risk level means you are drawing lines that do not exist in reality. One side of a street is "high risk," the other is "low risk," based on where an arbitrary boundary fell. That worries us. It is the same kind of labeling problem that heatmaps have always had --- you are attaching a risk score to a place, and everyone who lives or works in that place inherits that label whether they had anything to do with it or not. We would like to hear how SRRAD deals with edge effects and whether the grid resolution was chosen for a reason beyond technical convenience.

*Environmental signals can be proxies for poverty.* The proposal says it avoids demographic data to prevent bias, which is good. But inputs like broken streetlights, abandoned vehicles, and recurring vandalism reports are strongly correlated with municipal underfunding and poverty. A neighbourhood with an underfunded council will always have more broken infrastructure, and under this model, it will always score higher on risk. So the system might end up measuring deprivation rather than crime risk, which brings the bias in through a different door. How do you separate genuine crime signals from signals that just reflect that an area is poor?

*The feedback loop might not actually be solved.* Discounting patrol-discovered incidents during model retraining is a smart idea. But the commander still sees the heatmap, still sends patrols to the red cells, and those patrols still generate reports from those areas --- even if the reports are weighted less. Over time, does the discount actually break the loop, or does it just slow it down? We would want to see evidence or at least an argument for why the discount rate is enough.

*Adversarial users are not addressed.* The friction gate assumes good faith. A commander writes a justification, and that goes into the audit log. But what stops a bad-faith officer from typing "high risk score, deploying as recommended" every single time? The log would look compliant, but no real human judgment happened. Every IT system has adversarial users, and in a policing context the consequences of gaming the system are serious --- you could use SRRAD to justify patrols you already wanted to do in certain neighbourhoods. The proposal needs to address what happens when someone actively misuses the tool, not just when someone passively over-relies on it.

*The flow diagram could go further.* The current diagram shows the path from data to decision, but the steps between a commander seeing the heatmap and actually filing a report or making a deployment could be more detailed. What happens if two commanders disagree about the same cell? What if the debrief contradicts the original score --- who resolves that, and how quickly does it feed back?

== Response by Subgroup B <audit-b-response>

We thank Subgroup B for their rigorous audit of SRRAD. Their analysis highlights valid concerns regarding our spatial design, environmental data proxies, and human-machine interaction framework. We recognise that features intended for transparency (such as the bias flag and friction gate) could cause confusion or enable adversarial misuse. Below are the concrete improvements we will integrate into the revised proposal.

*1. Redefining Metrics and Data Integrity*

The audit noted that presenting both a confidence interval and a bias risk flag shifts an unfair analytical burden onto officers and creates circular logic. Furthermore, discounting patrol-discovered incidents may only slow, rather than break, the feedback loop.

- *Unified Certainty Metric:* We will replace the independent bias flag with a single "Certainty" metric. Certainty will only increase when multiple, heavily weighted, and independent signals corroborate a prediction.
- *Upstream Bias Mitigation:* Data engineers, not officers, will handle bias. Biased sources will be aggressively filtered, unbiased sources will be handled during preprocessing, or biased sources will be excluded from the model entirely.
- *Feedback Loop Thresholds:* We will introduce a saturation threshold. If an area receives repeated deployment recommendations, the system will pause further scoring until data analysts conduct a mandatory manual recalibration.

*2. Spatial Representation and Environmental Proxies*

We agree that arbitrary grid lines create artificial edge effects and that infrastructure telemetry (e.g., broken streetlights) risks measuring poverty rather than crime, potentially reinforcing institutional prejudice.

- *Contextual Zoning:* We will eliminate the arbitrary grid. SRRAD will instead use amorphous, dynamically generated heat zones or rely strictly on established municipal and socio-economic boundaries.
- *Expert Validation:* We will consult criminologists to rigorously separate genuine crime-driving signals from baseline poverty indicators before weighting telemetry data.
- *Cross-Agency Interventions:* We will leverage environmental data to shift responses away from purely punitive patrols. When risk scores are driven by infrastructure decay, SRRAD will explicitly prompt commanders to request municipal interventions (e.g., street repair) instead of police deployment.

*3. Human-Machine Interaction and Governance*

The audit rightly pointed out that our cognitive friction gate assumes good-faith users and fails to account for adversarial "rubber-stamping." The initial flow diagram also lacked necessary operational depth.

- *Multi-Officer Authorisation:* For deployments in previously unpatrolled or highly sensitive areas, SRRAD will require consensus. Two commanders must independently review the data and log a joint decision.
- *Audit Log Peer Review:* We will introduce mandatory, random administrative reviews of command decision logs. Officers identified as habitually bypassing the friction gate with generic, bad-faith entries will face operational penalties.
- *Expanded Operational Flow:* We will update the flow diagram to map edge cases. This will detail pathways for resolving commander disagreements, managing contradictions between the initial score and post-patrol debriefs, and establishing strict timelines for how quickly feedback updates the live model.

== Revised Proposal by Subgroup B <audit-b-revised>

=== Revised Tool / Intervention Proposal

We propose the *Spatial Risk and Resource Allocation Dashboard (SRRAD)*: a decision-support tool designed to help police commanders allocate patrol resources more effectively by surfacing where and when crime risk is elevated. The tool divides a municipality into [Updated] contextual zones based on established municipal boundaries and socio-economic similarities, replacing arbitrary grids to prevent edge-effect labeling and artificial division. SRRAD assigns each zone a continuously updated risk score, visualised as an interactive heatmap.

SRRAD is an advisory instrument only: it has no authority to dispatch officers, trigger alerts, or take any action. Every operational decision remains with the human commander. SRRAD deliberately avoids demographic data and raw arrest statistics, since these inputs can encode historical policing bias back into future predictions. Instead, the model draws exclusively on direct environmental and behavioral signals:

- [Updated] Municipal infrastructure telemetry (expert-validated to separate genuine crime signals from baseline poverty indicators): broken streetlights, abandoned vehicles, recurring vandalism reports.
- Anonymized emergency service logs: police interventions with confirmed outcomes, ambulance dispatches for physical trauma, and firefighter callouts.
- Commercial security incidents: shoplifting, aggressive behavior, and trespassing reports from local businesses.
- Insurance claims: aggregated theft, robbery, vandalism, and arson data.
- Public tips: anonymized suspicious-activity reports from the public tip line.
- Safety surveys: community-level perception data.
- Live deployment data: police presence per grid cell to contextualize scores and detect feedback-loop inflation.
- Electronic monitoring signals: anonymized activity flags from individuals under judicial supervision.
- Prediction feedback: structured post-patrol debriefs allowing officers to confirm, challenge, or correct prior assessments.

[Updated] Alongside each risk score, SRRAD displays a single, unified "Certainty" metric. We have removed independent bias risk flags to avoid placing circular analytical burdens on officers. Instead, bias is aggressively filtered and un-biased upstream by data engineers. The Certainty metric only increases when multiple, heavily weighted, and independent signals corroborate a prediction.

=== Revised Human--Machine Interaction Design

*Human--Machine Interaction Design*

A major risk in any decision-support system is that users stop questioning it. Under pressure, people naturally defer to a confident-looking number on a screen. In predictive policing, this tendency is dangerous. It can concentrate police presence in already over-policed areas, erode officer judgment, and create legal and ethical exposure.

SRRAD uses a human-in-command governing principle. The interface is actively designed to slow down deference, force engagement with the underlying data, and keep responsibility strictly with the officer making the call.

*The Interaction Flow*

The diagram below illustrates how information moves from raw data sources through to a logged deployment decision and back into the model.

#figure(
    image("../figures/flow-diagram-2-updated.png", width: 120%),
    caption: [The flow diagram has been expanded to map edge cases. It now includes detailed pathways for multi-officer consensus loops, managing contradictions between the initial score and the debrief, and strict temporal rules for how quickly feedback updates the live model.]
)

*Page 1: Risk Heatmap*

The main screen shows the [Updated] amorphous, dynamically generated heat zones overlaid on a municipal map. Each [Updated] zone is color-coded by risk score, but the display deliberately foregrounds uncertainty. Zones with low data coverage show a reduced-opacity fill. A commander scanning the map immediately sees how confident the model is based on the [Updated] Certainty metric. The "Advisory Only" banner is permanent, serving as a legal reminder that the heatmap is a starting point for judgment, not a conclusion.

#figure(
    image("../figures/mock-screen-1.png"),
    caption: [Remove arbitrary grid lines in favor of amorphous zones or municipal boundaries.]
)

*Page 2: Prediction Breakdown and Command Decision Log*

Clicking a cell opens the prediction breakdown, which translates feature importance into plain-language drivers. [Updated] We emphasize cross-agency interventions: seeing that a score is heavily driven by infrastructure decay (e.g., broken streetlights), SRRAD explicitly prompts the commander to request municipal repair services instead of deploying a punitive patrol unit.

Crucially, there is no quick-deploy button. To log any action, the commander must acknowledge the Certainty level, select an action type, and enter a brief written justification. This creates a cognitive friction gate, a deliberate pause that reduces blind deference. [Updated] To counter adversarial users who might approve decisions without consideration, deployments in previously unpatrolled or highly sensitive areas require multi-officer authorisation: two commanders must independently review the data and log a joint decision. Furthermore, all logs are subject to mandatory, random administrative peer reviews.

*Page 3: Prediction Correction and Post-Patrol Debrief*

The third screen manages the feedback loop and protects the long-term integrity of the model. After a patrol, officers complete a structured debrief. First, they log whether an incident was found and whether it was patrol-discovered or spontaneously reported. Patrol-discovered incidents get a discounted weight in future training. [Updated] To guarantee this discount breaks the feedback loop, we introduce a saturation threshold: if an area receives repeated deployment recommendations, the system pauses further scoring until data analysts conduct a mandatory manual recalibration.

Second, the screen allows officers to flag data sources they believe are improperly weighted. Finally, it captures qualitative observations the model cannot see, such as community tension or visible disorder, which are attached to the audit log for analysts.

#figure(
  image("../figures/mock-screen-2.png", width: 50%)
)

*Addressing the Challenges*

This design directly responds to the tensions identified in the stakeholder analysis. Automation bias is countered by the cognitive friction gate and the requirement to articulate a justification. [Updated] Adversarial misuse is mitigated through multi-officer consensus rules and mandatory peer reviews of audit logs. The feedback-loop problem is addressed structurally by discounting patrol-discovered incidents [Updated] and enforcing saturation thresholds that mandate human recalibration. Finally, accountability and liability are made fully traceable through the immutable audit log, making it clear that operational responsibility rests with the commander who made the decision.
