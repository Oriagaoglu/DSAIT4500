**Critical Audit Feedback – Community Structural Risk Monitor (CSRM)**

**Strengths**

The proportionality logic is solid: data access only widens when multiple independent signals converge, and "access follows accountability" is baked into the architecture rather than left as a policy promise. Treating the output as a question rather than a verdict is a meaningful guard against over-reliance, and building in a feedback loop where expert disagreements improve future thresholds is the kind of human-in-the-loop design that makes systems like this more accurate and trustworthy over time. The cross-departmental panel also sets a healthy bar for turning a flag into action.

**Areas for Improvement & Open Questions**

*Signal completeness and structural bias.* 
The system may be quietest in the places that need it most. Housing signals are easier to generate in rental stock than in owner-occupied homes; school dropout signals depend on schools having social workers to notice them, which is less likely in under-resourced schools. The result is that a well-served neighbourhood having a rough patch could trigger the system faster than a chronically stressed one where data barely gets recorded. One practical fix: weight signals by source coverage. A referral from a poorly covered area is arguably stronger evidence than one from a well-monitored one, because it's harder to produce.

*Convergence criterion and baseline blindspots.* 
If both crime and stress signals need to go up before a flag is raised, areas where stress has been high for years may never trigger since there's no upward movement to detect. Chronic deprivation is likely more criminogenic than a sudden short-term spike, so the convergence requirement may miss the neighbourhoods most at risk. It's worth considering whether hitting an absolute threshold, and not just a relative increase, should also be enough to highlight the existing stress. Is the stress-crime relationship modelled as linear, and if not, how does the system capture that?

*Historical bias in thresholds.* 
Calibrating on historical data means inheriting the biases of whoever was recording crime and distributing services at the time. A practical safeguard would be periodic bias audits, comparing where the system flags against independent assessments of neighbourhood need, with results shared with the validation panel. Who is currently responsible for noticing when the model appears systematically off, and what is the process for correcting it?

*The 12-month window — historical or prospective?* 
It's unclear whether the system looks back at existing data or starts tracking from the moment a flag is raised. These serve different purposes: historical data helps explain how a situation developed, live tracking shows whether it's getting better or worse. Combining both, showing historical context alongside current indicators in the panel view, could make the flag much more useful to the people acting on it.

*Collaboration under siloed access.*
When a flag is raised, a labour department analyst and a GGD researcher looking at the same area may each have part of the explanation but no way to compare notes. More broadly, insights derived from publicly funded data sources — CBS, GGD, municipal records — arguably shouldn't be locked behind departmental access controls at all. Making aggregate structural findings public by default, while keeping operational flags restricted, would naturally enable cross-departmental collaboration without requiring new infrastructure, and would increase transparency as a side effect. What is the reasoning behind keeping these insights internal, and has a public-by-default model for outputs been considered?

*Bad-faith scenarios.* 
A flag existing at all is sensitive, even if the underlying data is hidden. Police who know an area has been flagged may act on that alone, which is exactly the automation bias the design is trying to prevent. Framing notifications as "a panel has been convened for area X" rather than "area X has been flagged" is a small change that better reflects the deliberative intent. On the access side: what stops an actor like a housing corporation from using their partial data view in ways that serve their own interests? Access logging with anomaly detection reviewed by an independent auditor would be a reasonable addition.