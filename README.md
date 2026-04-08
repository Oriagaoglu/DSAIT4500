# DSAIT4500 — Responsible Data Science and AI Engineering

Group work report for CS4500 / DSAIT4500 at TU Delft.

## Project Structure

```
main.typ              ← main entry point (compile this)
references.bib        ← bibliography (IEEE style)
sections/
  01-context.typ      ← Section 1: problem context
  02-individual.typ   ← Section 2: individual proposals (one per group member)
  03-subgroup.typ     ← Section 3: subgroup proposals (A and B)
  04-cross-audit.typ  ← Section 4: cross-auditing
  05-ai-disclosure.typ← Section 5: GenAI disclosure
figures/              ← flow diagrams and mockup images go here
```

## How to Edit

**Option A — Typst.app (recommended for collaboration):**
Upload all files to [typst.app](https://typst.app) and share the project link. Everyone can edit in-browser.

**Option B — Local editing:**
1. Install Typst: `brew install typst` (macOS) or see [typst.app](https://github.com/typst/typst)
2. Clone this repo
3. Edit the `.typ` files in any text editor
4. Compile: `typst compile main.typ`
5. Preview with live reload: `typst watch main.typ`

## What To Fill In

All sections that need your input are marked with `// TODO:` comments. Key tasks:

- **Section 2:** Each group member writes their individual proposal (~300 words) and 3 expert questions (~0.5 page) in `02-individual.typ`
- **Section 3:** Subgroup B writes their proposal and interaction design in `03-subgroup.typ`
- **Section 4:** Both subgroups write cross-audit feedback, responses, and revised proposals in `04-cross-audit.typ`
- **Figures:** Add flow diagram and mockup images to `figures/` and uncomment the `#figure()` blocks in the section files

## Deadline

**10 April 2026, 18:00**
