// Section 3 — Subgroup Proposals

= Subgroup Proposals

== Subgroup A — [Names] <subgroup-a>

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

== Subgroup B — [Names] <subgroup-b>

=== Tool / Intervention Proposal
// TODO: ~300 words

=== Human--Machine Interaction Design
// TODO: ~2 pages with flow diagram and mockup
