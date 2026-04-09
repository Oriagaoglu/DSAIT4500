// Section 3 — Subgroup Proposals

= Subgroup Proposals

== Subgroup A — Orhan Ağaoğlu & Petar Verzaal <subgroup-a>

=== Tool / Intervention Proposal

We're proposing something we call the *Community Structural Risk Monitor (CSRM)*. The idea is to give the police a way to do crime prevention that goes beyond just showing up more. Instead of a heatmap that says "crime happens here," CSRM tries to figure out _why_ it's happening and helps the police coordinate with the right people to deal with it --- municipalities, health services, social workers, housing corporations. The police are still running the show, they're just doing something smarter with the information than sending more patrols.

How it works: the system watches two things at the same time. One is regular crime reports from the police --- stuff that already happened. The other is what we call stress signals --- things like emergency calls, social services referrals, housing complaints, kids dropping out of school. These tend to show up before crime gets worse. When both of these start going up in the same area at the same time, the system opens up a 12-month window and starts pulling in neighbourhood-level data for that area.

The data it collects comes from places like CBS for income statistics, GGD for healthcare access, housing corporations for eviction numbers, and municipal records for things like benefit uptake. None of this is personal data --- it's all aggregated at the neighbourhood level. That's a big difference from existing Dutch systems like Top600 in Amsterdam or ProKid 12-SI, which actually create risk scores for individual people @galic2023. We don't think that's the right approach. Our system looks at the area as a whole and checks if the conditions there match the crime trends. It never singles anyone out.

We also don't just throw in any data we can find. The indicators have to be validated by people who actually know the field --- criminologists, sociologists, public health researchers --- as stuff that's known to relate to crime. And the most important rule we came up with: you can only see the data if you can actually do something about it. Doctor shortages go to the health ministry. Unemployment numbers go to the labour office. Housing problems go to housing corporations. If you can't fix it, you can't see it. We've been calling this "access follows accountability."

The output is simple. A pin on the map, and only when everything lines up --- crime going up, stress signals going up, and the structural indicators matching. No scores, no rankings, no red zones. Just a pin that says "something seems to be going on here, take a look." What happens after that is a human decision.

=== Human--Machine Interaction Design

The whole point of how CSRM works is that the system helps you notice things, it doesn't decide things for you. That sounds like it should be obvious but CAS showed how quickly it falls apart. Galic, Das and Schuilenburg (2023) wrote about how officers ended up treating the CAS heatmap as if it was telling them what to do, even though it was just a prediction @galic2023 @waardenburg2018. The map looked authoritative, so people treated it that way. We wanted to avoid that from the start.

==== How the Interaction Works

There are four stages to how someone uses CSRM:

+ *Nothing happens (most of the time).* The system is running in the background, watching the two signal streams across all neighbourhoods. Unless things actually start lining up, it stays quiet.

+ *A pattern shows up.* If the system picks up something --- crimes happening in the same spot, same kind of crime, or similar situations for the people involved --- it opens a data window and starts gathering the structural indicators for that area.

+ *A pin appears.* If the structural data actually matches the crime and stress pattern over the window period, a pin shows up on the map. That's the only thing the system ever does.

+ *People talk about it.* The pin goes out as a notification to the relevant departments. A panel meets, discusses whether something needs to happen, and decides. The system doesn't get a vote.

#figure(
  image("../figures/flow-diagram-1.png", width: 85%),
  caption: [CSRM interaction flow: from monitoring to human deliberation.],
)

==== When People Disagree with the System

We actually expect people to disagree with the flags, and that's fine. Pozzi, Sand, and Jongsma (2026) make the argument for medicine that disagreement between humans and AI isn't a problem to solve, it's actually useful @pozzi2026. Same idea here.

A community worker who's been in the neighbourhood for ten years knows stuff that no dataset is going to capture --- who actually talks to who, what programs are already running, whether things are actually as bad as the numbers make them look. If they look at a flag and go "no, that's not what's happening," they should be the ones we listen to. The pin is basically asking "did you know about this?" not saying "do something about this."

That's the big difference from CAS. The CAS heatmap felt like a fact @waardenburg2018. It had colours and squares and it looked like it knew something. Our system is just a dot on a map with a question behind it. It's saying "we noticed something, do you see it too?"

If the experts look at it and decide it's nothing, the window closes and that's the end of it. But that decision gets saved so the validation panel can use it to adjust the thresholds later. So over time the system gets better at knowing when to raise a flag because it's learning from the times humans said "no, you're wrong."

==== Who Sees What

Nobody gets to see everything. Each person only sees what's related to their job:

- *Police* see: that a flag was raised, who got notified, and whether anything came of it. They don't see the income data or the healthcare numbers --- that's not what they're there for.
- *Urban planners* see: "this area needs attention." That's it, no details.
- *GGD / health services* see: healthcare stuff only --- how long people wait for a GP, whether there's enough addiction support.
- *Labour department* sees: jobs and income data.
- *Housing corporations* see: eviction rates, how much rent is unpaid, building conditions.

This isn't just about privacy for the sake of it. There's a real problem in the Netherlands where data that was collected for one thing ends up being used for something completely different @galic2023 @schuilenburg2023. If the police can't see the socioeconomic data, they can't use it to profile areas. If journalists can't get the flags, there's no "top 10 worst neighbourhoods" list. The way the system is built makes misuse hard, instead of just having a rule that says "please don't misuse this."

#figure(
  image("../figures/mockup-1.png", width: 95%),
  caption: [CSRM dashboard mockup --- GGD health services view. The logged-in user only sees health-related indicators. Employment, housing, and income data are hidden because that's not their department.],
)


#line(length: 100%, stroke: 0.5pt + gray)

== Subgroup B — Alex Hautelman & Mart van der Lugt <subgroup-b>

=== Tool / Intervention Proposal

We propose the *Spatial Risk and Resource Allocation Dashboard (SRRAD)*: a decision-support tool designed to help police commanders allocate patrol resources more effectively by surfacing where and when crime risk is elevated. The tool divides a municipality into a fine-grained grid and assigns each cell a continuously updated risk score, visualized as an interactive heatmap. SRRAD is an advisory instrument only: it has no authority to dispatch officers, trigger alerts, or take any action. Every operational decision remains with the human commander. SRRAD deliberately avoids demographic data and raw arrest statistics, since these inputs can encode historical policing bias back into future predictions. Instead, the model draws exclusively on direct environmental and behavioral signals:

- Municipal infrastructure telemetry: broken streetlights, abandoned vehicles, recurring vandalism reports.
- Anonymized emergency service logs: police interventions with confirmed outcomes, ambulance dispatches for physical trauma, and firefighter callouts.
- Commercial security incidents: shoplifting, aggressive behavior, and trespassing reports from local businesses.
- Insurance claims: aggregated theft, robbery, vandalism, and arson data.
- Public tips: anonymized suspicious-activity reports from the public tip line.
- Safety surveys: community-level perception data.
- Live deployment data: police presence per grid cell to contextualize scores and detect feedback-loop inflation.
- Electronic monitoring signals: anonymized activity flags from individuals under judicial supervision.
- Prediction feedback: structured post-patrol debriefs allowing officers to confirm, challenge, or correct prior assessments.

Alongside each risk score, SRRAD displays a confidence interval and a bias risk flag. Built on an interpretable statistical framework like generalized additive models, every score can be traced back to its specific underlying signals.

=== Human--Machine Interaction Design

A major risk in any decision-support system is that users stop questioning it. Under pressure, people naturally defer to a confident-looking number on a screen. In predictive policing, this tendency is dangerous. It can concentrate police presence in already over-policed areas, erode officer judgment, and create legal and ethical exposure.

SRRAD uses a human-in-command governing principle. The interface is actively designed to slow down deference, force engagement with the underlying data, and keep responsibility strictly with the officer making the call.

==== The Interaction Flow

The diagram below illustrates how information moves from raw data sources through to a logged deployment decision and back into the model.

#figure(
  image("../figures/flow-diagram-2.png",)
)

==== Page 1: Risk Heatmap

The main screen shows the grid overlaid on a municipal map. Each cell is color-coded by risk score, but the display deliberately foregrounds uncertainty. Cells with low data coverage show a reduced-opacity fill, and cells driven by a single data source carry a visible bias risk flag. A commander scanning the map immediately sees how confident the model is and whether that confidence is warranted. The "Advisory Only" banner is permanent, serving as a legal reminder that the heatmap is a starting point for judgment, not a conclusion.

#figure(
  image("../figures/mock-screen-1.png",)
)

==== Page 2: Prediction Breakdown and Command Decision Log

Clicking a cell opens the prediction breakdown, which translates feature importance into plain-language drivers. Seeing that a score is driven by broken streetlights might prompt a commander to request municipal repair services instead of deploying a patrol unit.

Crucially, there is no quick-deploy button. To log any action, the commander must acknowledge the confidence level, select an action type, and enter a brief written justification. This creates a cognitive friction gate, a deliberate pause that reduces blind deference. It also produces a timestamped, immutable log linking each decision to the model version and the stated reasoning.

==== Page 3: Prediction Correction and Post-Patrol Debrief

The third screen manages the feedback loop and protects the long-term integrity of the model. After a patrol, officers complete a structured debrief. First, they log if an incident was found and whether it was patrol-discovered or spontaneously reported. Patrol-discovered incidents get a discounted weight in future training to prevent a self-reinforcing loop where police presence inflates future scores.

Second, the screen allows officers to flag data sources they believe are improperly weighted. Finally, it captures qualitative observations the model cannot see, such as community tension or visible disorder, which are attached to the audit log for analysts.

#figure(
  image("../figures/mock-screen-2.png", width: 50%)
)

==== Addressing the Challenges

This design directly responds to the three tensions identified in the stakeholder analysis. Automation bias is countered by the cognitive friction gate and the requirement to articulate a justification. The feedback-loop problem is addressed structurally by discounting patrol-discovered incidents during model training. Finally, accountability and liability are made fully traceable through the immutable audit log, making it clear that operational responsibility rests with the commander who made the decision.
