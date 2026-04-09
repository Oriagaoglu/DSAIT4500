// Section 4 — Cross-Auditing

= Cross-Audit: Subgroup A's Proposal <audit-a>

== Critical Audit by Subgroup B <audit-a-feedback>

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
// TODO: ~1 page — respond to the audit

== Revised Proposal by Subgroup B <audit-b-revised>

=== Revised Tool / Intervention Proposal
// TODO: updated proposal, mark what changed

=== Revised Human--Machine Interaction Design
// TODO: updated interaction design, mark changes
