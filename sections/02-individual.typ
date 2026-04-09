// Section 2 — Individual Thoughts and Questions

= Individual Thoughts and Questions

== Orhan Ağaoğlu  <individual-a>

=== Individual Proposal

When I first read about CAS, the thing that stuck out to me was that it was basically just showing where crimes happened before and assuming they'd happen there again. But that doesn't really tell you anything useful. If there's a lot of theft in some area, sure you can send more police there, but that doesn't solve why people are stealing in the first place.

What I'd want to build instead is something that looks at the reasons behind the crime. When you see crime going up somewhere, check what else is happening --- are people losing jobs, is it hard to see a doctor, are kids dropping out of school, are utility bills going unpaid? Basically try to connect the crime to the conditions around it.

This would still be a police tool, but it changes what they actually do with the information. Instead of just patrolling an area more, the police would use the system to flag that something deeper is going on and pass it to whoever can actually help --- the municipality for infrastructure, GGD for healthcare, social services for support programs. Police can't fix poverty or open a clinic, but they can be the ones to say "this area needs something." That's still crime prevention, just not the patrol-more-cars kind.

I'd also want different people to see different things. An urban planner just sees "this area needs attention." A health department gets the healthcare numbers. The police see that a referral was made but don't get the socioeconomic details --- that's not their job. You only see what you can actually do something about. The system doesn't tell anyone what to do, it just goes "hey, look here." Then people figure it out.

=== Questions for Experts

*Question 1 --- To someone who actually used CAS in the Dutch police* \
_Expertise:_ Day-to-day experience with CAS as a police analyst or officer. \
_Question:_ What was CAS actually doing for you on a normal workday? Did you find the heatmap helpful or did it mostly just sit there? \
_Why:_ I want to know what the real problem was before I try to fix it. What CAS was supposed to do and what it actually did are probably pretty different.

*Question 2 --- To a legal expert in Dutch law* \
_Expertise:_ Dutch administrative and criminal law, especially around discrimination. \
_Question:_ If a municipality notices socioeconomic indicators going downhill in an area, are they allowed to put extra resources there just based on that? At what point does proactive policy become profiling? Galic, Das, and Schuilenburg (2023) raised similar legal concerns about Dutch predictive systems. \
_Why:_ My whole proposal is about acting before things get worse. But I'm not sure if acting on trends rather than actual problems crosses any legal lines.

*Question 3 --- To a sociologist who studies urban inequality* \
_Expertise:_ How neighbourhoods get labelled and what happens to people when they do. \
_Question:_ If you start directing resources to an area, how do you avoid basically branding it as a problem area? Is there a way to help without making it worse through stigma? \
_Why:_ Even well-intentioned flagging could scare off businesses, raise insurance, or make people feel watched. I don't know how to avoid that.


== Petar Verzaal  <individual-b>

=== Individual Proposal
// TODO: ~300 words

=== Questions for Experts
// TODO: 3+ questions to 3 different experts


== Alex Hautelman  <individual-c>

=== Individual Proposal

*Tool Proposal: Two-Tier Crime Prevention Support System* \
*Proposal.* I propose a two-tier decision-support system that helps police work more efficiently by combining geographic crime pattern mapping with a targeted monitoring component for people on supervised release. Crucially, the system does not make decisions; instead, it gives officers better information to act on.

*Tier 1 --- Crime Heatmap.* A straightforward statistical model pulls together confirmed police reports and validated historical data to build a real-time map of where criminal activity is more likely to occur. This helps officers decide where to deploy faster and more deliberately. Public tip-offs can feed in too, but are down-weighted because some neighbourhoods get disproportionately reported regardless of what is actually happening there. The model is simple and explainable and handles only aggregated location data, so no personal information is involved. A built-in audit mechanism regularly checks whether the underlying data is skewing results due to historical over-policing of certain areas.

*Tier 2 --- Repeat Offender Monitoring.* This component focuses on people with prior convictions under monitoring conditions set by a court, similar to how parole already works. The legal authority comes from the judge, not from asking people to consent (which would not be meaningful consent anyway). The focus is justified: 47% of adult ex-prisoners reoffend within two years of release @wodc2023, making this a sensible group to pay closer attention to. Monitoring is time-limited, restricted to a minimal and clearly defined set of signals, and feeds into the Tier 1 heatmap. When a geographic hotspot overlaps with a Tier 2 signal, that combined indicator gets weighted more heavily, giving officers a stronger, more specific prompt to act.

*When humans and the model disagree.* An officer's judgment always wins. The system has no authority to direct anyone. But disagreements should be logged, not ignored. If officers are consistently overriding the system in certain areas or situations, that is valuable feedback that can be used to retrain and improve the model over time. This keeps humans in control while still letting the system learn.

=== Questions for Experts

*Question 1 --- To a legal or privacy expert (GDPR / EU AI Act)* \
_Question:_ What kinds of monitoring can actually be imposed as a court condition under Dutch and EU law, and what safeguards need to be in place to make sure it stays proportionate? \
_Why:_ The whole legitimacy of Tier 2 depends on this. If the court-ordered framing does not hold for certain types of data collection, the design has to change before any technical work starts. This is the first question that needs an answer.

*Question 2 --- To a criminologist or recidivism researcher* \
_Question:_ Is prior imprisonment actually a reliable predictor of future offending once you account for things like poverty, mental health, or lack of support after release, and does that relation hold across different types of crime? \
_Why:_ The 47% reoffending statistic @wodc2023 gives us a reason to focus on this group, but a general correlation is not the same as a validated risk model. We need to understand what is actually driving the pattern before we build a system around it; otherwise, we risk encoding existing inequalities rather than genuine risk.

*Question 3 --- To a frontline police officer or operations lead* \
_Question:_ When would you trust a heatmap signal enough to act on it, and when would you ignore it? What would the tool need to show you for it to actually be useful rather than just another screen to click past? \
_Why:_ A tool that officers routinely override without thinking, or blindly follow without questioning, does not work. Real operational trust has to be designed in from the start, and officers know things about local context and day-to-day constraints that system designers simply do not.

*Question 4 --- To an ethicist or civil liberties researcher* \
_Question:_ What would need to be built into this system --- things like expiry dates, independent audits, and hard limits on scope --- to make sure it does not quietly expand beyond what it was originally designed to do? \
_Why:_ Surveillance systems have a well-documented tendency to grow over time. Independent ethical oversight should not be something bolted on after criticism; it should be part of the architecture from the beginning.


== Mart van der Lugt <individual-d>

=== Individual Proposal

The Crime Anticipation System (CAS) was based largely on historical police data. This means that initially, the historical patterns of policing and the inherent biases of the police force were encoded in the predictions. If an area was patrolled more, as it was deemed less safe by the police force, the chance of catching crime in that area would be higher, even if the actual crime rate was not necessarily higher.

Furthermore, this creates a positive feedback loop. Areas that were deemed high-risk would be patrolled more, more crime would be caught, and the model would intensify the high-risk prediction even more.

In a future model, the key improvement would be to separate the data source for the model from the patrol intensity. To do this, we can use other indicators of crime rate, like insurance reports, break-in attempts, and safety surveys, which have a lower bias than crimes caught by police. Crimes reported by police patrols could still be used as data but should be controlled using the intensity of patrols in a certain area.

The most important change would be in the output of the model. Instead of just reporting the risk areas, the model should also report the uncertainty related to that risk area. If the model reports increased police-reported crime in an area that is also patrolled more, the human operator should be able to see that. Likewise, the operator should also be able to see which areas have increased insurance-reported crime while police-reported crime has remained consistent. The operator is then able to take these factors into account, prevent positive feedback loops, and limit inherent biases.

=== Questions for Experts

*Question 1 --- To a criminologist familiar with the impact of patrols on crime rates* \
_Question:_ The model assumes that a higher patrol rate results in a higher detected crime rate, as more of the crime happening in an area is caught. Presumably, this caused a positive feedback loop in the CAS model. What is the exact studied relationship between these factors? Furthermore, does increasing patrol intensity eventually result in lower crime rates, or are there more effective policing measures that can be taken?

*Question 2 --- To a statistician at the CBS* \
_Question:_ An important input for the new model is safety surveys. Could you give an indication of the reliability of these surveys? Are there any important biases that should be considered? Furthermore, at what level do these surveys operate? Is it possible to get an indication of safety or crime rate at the street level, or at the neighbourhood level?

*Question 3 --- To a lawyer familiar with insurance and data protection* \
_Question:_ The most important input for the model is crime information that is not necessarily reported by the police. The most straightforward data source would be insurance reports. Is this something that the police could get access to at a large scale? What privacy considerations should be taken? How could we convince the insurance companies to collaborate on this issue?
