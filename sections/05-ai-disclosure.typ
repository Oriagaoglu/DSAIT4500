// Section 5 — Generative AI Disclosure

= Generative AI Disclosure

We used AI during this assignment and are disclosing it here as required.

== Tools and Services Used

- *Claude Code (Anthropic)* --- used through the Claude Code CLI as an research assistant and visual designer. Addionaly for organization and documentation. (We used github for version control and Typst for writing, claude was used during the comands and edits of these tools)
- *Claude (Anthropic)* --- used via chat web interface for writing assistance throughout the assignment: improving note flow, narrative coherence, argument linkage, and getting feedback on structure and reasoning.
- *Gemini (Google)* --- used during the individual and subgroup proposal stages to expand stakeholder analysis and generate an early mock design.
- *Grammarly* --- used throughout the assignment for spell-checking.

== Contributions by Section

=== Section 2: Individual Thoughts and Questions

*Orhan Ağaoğlu:* I used Claude as a librarian while developing my proposal. The ideas themselves (looking at causes instead of crime locations, making the police a coordinator rather than the end user, tiered access) came from me. Claude helped me understand some of the terminology --- things like ecological correlation and data minimisation --- and explained what they actually mean so I could decide if they fit my proposal. I also asked Claude to help me understand the Galic et al. (2023) paper on CAS and Dutch predictive systems, since it's referenced in the assignment and I wanted to know what it actually says before citing it. I had initially a completely diffent idea but existing systems in Dutch police had me change my thoughts.

*Alex Hautelman:* I used Claude throughout the assignment as a writing assistant. My notes and arguments were my own and Claude helped improve flow, tighten the narrative, and strengthen links between arguments. I also used it for feedback on whether reasoning held together and where transitions were weak. Grammarly ran in the background for spell-checking.


I intentionally kept generative AI use focused on writing support and targeted stakeholder expansion, while avoiding dependence for core brainstorming. The moral interpretations, technical choices, and design decisions in this report are mine. Without AI, a comparable result was possible with more time; I used AI to improve clarity and structure more efficiently.


*Mart van der Lugt:* I used Claude to summarize and skim through sources while developing my proposal. All ideas and text in my proposal are my own. 

_Prompts used:_
```text
summarize the Galic et al. (2023) paper. Indicate key points and where to find them in the paper.
```


=== Section 3: Subgroup Proposals

*Orhan Ağaoğlu:* The technical design came out of the conversation, with me describing how I thought things should work and Claude helping put it into words you see in the diagram. Claude also generated the flow diagram and the dashboard mockup --- I described what I wanted them to show and Claude built them in Typst. I also used Claude to look up and understand specific terms and concepts that came up during the design (e.g., what Top600 and ProKid 12-SI actually do, how ecological correlation works in practice, what the Dutch Court of Audit report said about CAS).

_Prompts used:_
```text
create a mockup and flow diagram based on my proposal.
```
(plus additional manipulation on Typst)


*Alex Hautelman:* I used Gemini at a limited ideation stage to expand stakeholder analysis (especially missing stakeholders and their values/interests). Gemini was also used to generate an mock design for the dashboard, based on extensive UI description.

_Prompts Used:_
```text
Generate a UI mockup for a 'Post-Patrol Debrief' screen in a predictive policing web dashboard. The design should feature a clean, minimalistic, professional form. Inside the form include the following action-focused elements:
- 'Incident Found?' Yes/No toggles.
- 'Discovery Type' radio buttons for 'Patrol-discovered' vs 'Spontaneously reported'.
- A 'Data Source Evaluation' section with toggles to flag specific data inputs for review.
- A 'Qualitative Observations' text area.
- A 'Submit Debrief' button at the bottom.

Context:
- A predictive policing dashboard designed with a "Human-in-Command" philosophy to mitigate algorithmic bias and feedback loops.
- The user (a police officer or commander) arrives at this page after completing a patrol in a designated grid cell. The goal is to close the feedback loop by reporting what actually happened on the ground versus what the model predicted.
```


*Mart van der Lugt:* I used Claude in the same way as for my individual proposal, to summarize and skim through literature. I also used Claude to get an overview of this literature.

== Motivation and Possible Impacts

We used AI to speed up things we'd have spent a long time on otherwise --- reading through papers, figuring out what specific terms mean, and making diagrams. The design decisions and arguments are ours. One downside we ran into is that AI output is usually narrower than what we are trying to achieve in this course. If we hadn't used AI only as an assisntant for our clear purposes and aligned perspective, the report would've sounded like it was written by a different person entirely.

Using AI for this report was a deliberate choice to compensate for writing skills that are not as strong as the ideas themselves. Improving that writing independently to the same level would have been possible, but it would have required substantially more time than we had available.

A similar-quality report could have been achieved without AI given enough time, but we chose AI support instead. The consequence of that choice is that the ideas, interpretations, and decisions remain ours, and the tone stays close to our own voice, while the sentence and paragraph structure is stronger than what we would likely have produced unaided. We believe that tradeoff was worth making, the goal was to give the reader a clearer window into our thinking.

