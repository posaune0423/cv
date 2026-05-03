---
name: ats-optimize-typst-cv
description: "Use this skill whenever the user wants to tailor this Typst-based CV for a specific job posting. Triggers: 'tailor my resume', 'CV for [company]', 'customize CV for this JD', 'apply to [company]', or any request matching the candidate to a job description. The skill edits asuma_yamada.typ on a per-application git branch, reverse-engineers ATS recruiter-search keywords, runs a Jobscan-aligned rubric, and builds a 2-page PDF via the existing Nix pipeline. Do NOT use for cover letters or generic resume advice."
argument-hint: "[company name] [job title or JD URL/text]"
allowed-tools: Read Write Edit Bash Glob Grep WebSearch WebFetch
license: MIT
---

# ats-optimize-typst-cv

You are an ATS optimization specialist working on a single canonical CV: `asuma_yamada.typ` (Typst). Your job is to take a target JD + company name and produce a tailored 2-page PDF on its own git branch.

The master resume already exists. You do **not** generate JSON, `.docx`, or call any external renderer. You edit Typst, you build with Nix, and you commit to a branch.

---

## Repo facts (memorize these)

- **Master resume:** `asuma_yamada.typ` (Typst). Calls `alta(...)` from `alta-typst.typ`.
- **Build:** `nix build` → `result/asuma_yamada.pdf`. The source filename is hardcoded in `flake.nix:127`, so **do not rename the file**.
- **2-page constraint:** enforced by `nix flake check` (`pdf-page-count` job). PDFs that exceed 2 pages fail the check; you must trim, not bypass.
- **Date format already used:** `Mon YYYY --- Mon YYYY` (e.g. `Apr 2025 --- Dec 2025`). Jobscan-compliant. Preserve this.
- **Available Typst primitives** from `alta-typst.typ`: `term[period][location]`, `styled-link("url")[label]`, `icon("name")`, `skill(name, rating)`. Don't invent new commands.

---

## Workflow design

Guardrailed workflow, not rigid choreography. Required stages cannot be skipped. Gates are hard stops.

```
[INTAKE] ──G1──> [JD ANALYSIS] ──G2──> [STRATEGY] ──G3──> [CONTENT TAILORING]
                       ^                                            |
              [OPT: company research]                       [humanization]
              [OPT: team inference]                                  |
                                                            ──G4──> [ATS CHECK]
                                                                          |
                                                                  ──G5──> [BRANCH + EDIT TYP]
                                                                              |
                                                                       ──G6──> [NIX BUILD + VERIFY]
                                                                                   |
                                                                            ──G7──> [DELIVER]
```

Announce each stage before starting it:

```
=== [Stage Name] ===
```

---

## Hard sequencing rules

- No drafting before JD analysis is complete (G2)
- No ATS check before bullet selection and rewriting (G4)
- No branch creation before ATS check passes (G5)
- No `nix build` before the .typ edit is complete and saved (G6)
- No delivery before page count = 2 is verified (G7)

---

## Stage 1 — Intake (Required)

The master resume is **always** `asuma_yamada.typ` in the repo root. Do not ask the user for it.

**Required inputs:**

- Target company name
- Job description (text or URL — fetch with WebFetch if URL)
- Target job title (extract from JD if not given)

**Optional inputs** (skip if not provided):

- Branch slug override
- Phone, postal address (the master resume omits these by default — only add if the user provides; never invent)
- Roles or projects to emphasize or downplay
- Tone preference (`conservative / modern_professional / technical / analytical`)

**Flexibility:** Ask only what is blocking. If JD + company are clear, move directly to G1. Otherwise, ask at most 3 concise questions.

### GATE 1

- [ ] Target company name known
- [ ] Job description content available (not just a URL — actually fetched)
- [ ] Target job title known
- [ ] `asuma_yamada.typ` read into context

---

## Stage 2 — JD Analysis (Required)

Extract from the JD:

- **Exact job title** + 2-3 plausible variants (e.g. "Smart Contracts Developer" → "Smart Contract Engineer", "Solidity Engineer", "Blockchain Engineer")
- Required vs. preferred qualifications (distinguish clearly)
- Repeated skills and action verbs — high-signal ATS keywords
- Domain/industry terms (e.g. "DeFi", "L2", "EVM", "MEV", "MPC", "RWA", "RAG", "agentic")
- Seniority clues (IC vs. lead vs. manager, scope of ownership)
- Business function: product / growth / platform / data / engineering / research / etc.

### Recruiter-search reverse-engineering (required)

A human recruiter at this company will search the ATS for specific strings. Predict them:

- The **exact** job title (verbatim)
- 3-5 hard-skill keywords (languages, frameworks, protocols)
- 1-2 domain terms
- 1-2 seniority signals if the JD uses them ("Senior", "Staff", "Lead")

Output a short list: "ATS search terms a recruiter is likely to use:". This list drives Stage 4 keyword placement.

### GATE 2

- [ ] Exact job title captured verbatim
- [ ] Required qualifications extracted
- [ ] Top 5-8 ATS keywords identified
- [ ] Recruiter-search-term list produced
- [ ] Role seniority and business function determined

---

## Stage 2a — Company Research (Optional)

**Run when:** company is unfamiliar or the JD lacks context.
**Skip when:** household name with widely-known business model.

Use WebSearch: `"<company name>" business model products customers`

Identify business model, core products, likely KPIs, company size/stage.

**Domain language mapping** (align candidate language to company language):

| Domain                 | Key language                                                            |
| ---------------------- | ----------------------------------------------------------------------- |
| B2B SaaS               | product adoption, ARR, churn, activation, time-to-value, seat expansion |
| eCommerce              | conversion, ROAS, CAC, LTV, funnel, merchandising, cart abandonment     |
| Healthcare / insurance | compliance, accuracy, turnaround, cost containment, prior auth          |
| Marketplace            | supply-demand balance, pricing, merchant health, fulfillment, take rate |
| Adtech                 | incrementality, attribution, campaign performance, clean room, reach    |
| Staffing / HR tech     | placement rate, time-to-fill, candidate quality, client retention       |
| Fintech / payments     | payment volume, fraud rate, underwriting, activation, regulatory        |
| Crypto / DeFi          | TVL, MEV, on-chain volume, gas, L1/L2, validators, settlement, oracles  |
| AI / ML platform       | latency, eval quality, RAG, agentic workflows, fine-tuning, throughput  |

## Stage 2b — Team Inference (Optional)

Run if the JD names a reporting line, team size, or cross-functional partners. Infer who the candidate would collaborate with and adjust framing accordingly.

---

## Stage 3 — Strategy (Required)

Before editing a single line, write the strategy:

1. **Top 3 strengths to lead with** — link existing experience in `asuma_yamada.typ` to JD requirements.
2. **1-2 areas to downplay** — irrelevant or distracting bullets to drop or shorten.
3. **Page 1 headline story** — what the recruiter sees in 10 seconds.
4. **Section order** — current order in the file is: Experience → Awards & Speaking → Selected Projects → Selected OSS → Skills → Education → Selected Qualifications. Re-order only if the JD strongly motivates it (e.g., a research-heavy role might benefit from Projects above Awards).
5. **Sections to keep/drop:** all current sections are short; default is keep. Drop only if a section actively distracts and trimming buys page-budget room.

### GATE 3

- [ ] Strategy written out (not just decided internally)
- [ ] Section ordering decision made (keep or specific reorder)
- [ ] At least 3 specific strengths linking candidate experience → JD

---

## Stage 4 — Content Tailoring (Required)

Edit the `alta(...)` call body in `asuma_yamada.typ`. **Do not modify** `alta-typst.typ` or any other file.

### 4a — Tagline / summary

The `tagline:` field at the top is the resume summary. Rewrite it to:

- Start with or include the **exact JD job title** (verbatim).
- Mention 2-3 of the recruiter-search keywords.
- Stay 2-3 sentences. No buzzwords.

If the candidate has not held the exact title before, frame as: "Software engineer building [domain X], targeting `<Exact Title>` roles, with experience in …"

### 4b — Bullet selection

For each role:

- Select bullets based on **target fit**, not recency.
- Drop good-but-irrelevant bullets to free page budget.
- Keep 2-4 bullets per recent/relevant role; 1-2 for older or less relevant roles.
- Reorder bullets so the highest-signal one is first.

### 4c — Bullet rewriting

Strong bullet structure:

> Action verb → what was built/analyzed/driven → method or tool → measurable result → scale or context

**Rules:**

- Use concrete verbs: built, shipped, designed, automated, reduced, led, indexed, optimized.
- Embed JD keywords naturally where the underlying work supports them. Do **not** invent.
- Vary sentence rhythm — avoid 3+ consecutive bullets starting the same way.
- Banned phrases: "responsible for", "helped with", "assisted in", "supported", "results-driven", "dynamic", "passionate", "proven track record".
- Every bullet must pass: "Could the candidate explain this naturally in 30 seconds?"
- Every metric must pass: "Would a hiring manager believe this at this level?"

If a bullet has no metric, use a concrete dimension instead (scale / speed / accuracy / adoption / throughput).

### 4d — Skills section

The Skills section already enumerates languages, infra, and domain areas. Edit it to:

- Front-load JD-required tech (e.g., if JD wants Solidity, list it first among smart-contract languages).
- Add JD-specific tools the candidate has used but the master CV omits — only if truthful.
- Drop tools that distract from the target role.

### 4e — Humanization pass (Required)

Run this and print results:

```
Humanization check:
[PASS] No vague buzzwords
[PASS] No repeated sentence syntax across 3+ consecutive bullets
[PASS] No suspicious over-optimization
[PASS] No generic AI summary patterns
[PASS] All bullets sound like a real person wrote them
```

If any check fails, rewrite the offending lines before proceeding.

### GATE 4

- [ ] Tagline rewritten with exact JD job title verbatim
- [ ] Bullets selected and rewritten across all kept roles
- [ ] Skills section reordered/edited
- [ ] Humanization pass complete with all checks passing
- [ ] No invented metrics, tools, titles, or projects

---

## Stage 5 — ATS Check (Jobscan-aligned, Required)

Run this against the proposed Typst content **before** creating a branch or building. Print results:

```
ATS check:
[PASS] Contact — Email present in `links`
[ ?  ] Contact — Phone (flag if missing; do not invent)
[ ?  ] Contact — Address/Location (flag if missing; do not invent)
[PASS] Summary section present (the `tagline:` block)
[PASS] Job Title Match — exact JD title appears verbatim in tagline or recent role
[PASS] Education heading present (== Education)
[PASS] Work History heading present (== Experience; optionally rename to "Work Experience")
[PASS] Date format — all `term[...]` use `Mon YYYY --- Mon YYYY` or `Mon YYYY --- Present`
[PASS] Job Level Match — tenure aligns with JD's years-of-experience requirement (if specified)
[PASS] Measurable Results — at least 5 quantified bullets across the resume
[PASS] Resume Tone — no buzzwords/cliches
[PASS] Web Presence — website + GitHub + LinkedIn in `links`
[PASS] Word Count — body under 1000 words (use `wc -w` on the .typ minus markup)
[PASS] No keyword stuffing — keywords appear in natural context
[PASS] No decorative symbols or icons in body text beyond existing `icon(...)` calls
```

Word count helper:

```bash
# rough body word count from the .typ source (strips Typst markup)
sed -E 's/#[a-zA-Z_-]+(\[[^]]*\])*(\([^)]*\))?//g; s/[#=*_`~|/-]+//g' asuma_yamada.typ | wc -w
```

If any required check fails (anything other than `[ ?  ]` gaps the user must fill), fix before proceeding. Phone/address gaps are surfaced to the user but do not block the build.

### GATE 5

- [ ] All required ATS checks pass
- [ ] At least 5 JD keywords appear naturally in the content
- [ ] Body word count < 1000

---

## Stage 6 — Branch, Edit, Build (Required)

Cannot run before G5.

### 6a — Branch

Confirm a clean working tree first:

```bash
git status --short
```

If there are uncommitted changes that are not related to this application, ask the user before continuing.

Slug the branch: `application/<company-slug>-<role-slug>` (kebab-case ASCII, lowercase). Example: `application/stripe-smart-contracts-developer`.

```bash
git switch main
git switch -c application/<slug>
```

If the branch already exists, ask the user whether to switch into it (and rebuild) or pick a new slug.

### 6b — Apply edits to `asuma_yamada.typ`

- Edit only the body inside the `alta(...)` call.
- Keep the filename `asuma_yamada.typ` — `nix build` and `pdf-page-count` are hardcoded to it.
- Preserve the `links:` block; only add phone/location entries if the user provided them.
- All Typst primitives must come from `alta-typst.typ` (`term`, `styled-link`, `icon`, `skill`).

### 6c — Build and verify

```bash
nix build
qpdf --show-npages result/asuma_yamada.pdf   # must print 2
nix flake check                              # runs pdf-page-count + typos + gitleaks
```

If `pdf-page-count` fails, **trim content** (drop the lowest-signal bullets) and rebuild. Do not modify the page-count check, do not bypass `nix flake check`.

If `typos` flags a word, either fix the spelling or add it to `typos.toml` if it's a legitimate proper noun.

### 6d — Commit

```bash
git add asuma_yamada.typ
git commit -m "tailor: <Exact JD Title> @ <Company>"
```

Do **not** push and do **not** open a PR — those are user-driven actions.

### GATE 6

- [ ] Branch created and checked out
- [ ] `asuma_yamada.typ` edited and saved
- [ ] `nix build` succeeded
- [ ] `qpdf --show-npages` returned exactly 2
- [ ] `nix flake check` is green
- [ ] Commit created on the application branch

---

## Stage 7 — Final Validation & Delivery (Required)

Confirm:

- [ ] No placeholder text in the .typ (no "TODO", "YOUR NAME", etc.)
- [ ] Section order matches the strategy decided in Stage 3
- [ ] No duplicate bullets across roles
- [ ] PDF opens (sanity-check file size > 0)

Deliver to the user:

- **Branch name** (e.g. `application/stripe-smart-contracts-developer`)
- **PDF path:** `result/asuma_yamada.pdf` (Nix store symlink)
- **Strategy summary:** what was emphasized, what was downplayed, which ATS keywords were woven in
- **Honest gaps:** missing phone/address, any JD requirements the candidate doesn't meet, any keywords the recruiter will likely search for that you couldn't include truthfully
- **Next steps for the user:** review the PDF, push the branch if satisfied (`git push -u origin <branch>`), submit application

---

## What NOT to do

- Do not invent tools, metrics, projects, titles, or experience the candidate doesn't have
- Do not rename `asuma_yamada.typ` (breaks the Nix build)
- Do not modify `alta-typst.typ`, `flake.nix`, or any non-resume file
- Do not skip the page-count check or edit it to allow > 2 pages
- Do not use `--no-verify` to bypass pre-commit hooks
- Do not push the branch or open a PR — leave that to the user
- Do not produce `.docx`, JSON, or any non-PDF output
- Do not keyword-stuff
- Do not use generic AI summary language ("passionate engineer who thrives in dynamic environments")
- Do not ask more than 3 clarifying questions at a time
- Do not skip a required stage even if the input looks complete
