# Dependencies and Handoffs

> Workstream 1 | INSEAD AI-Assisted Application Development Framework | Version 0.1 (draft) | 3 September 2026
>
> Workstream 1 documents: [01 - Tool Assessment Matrix](01_Tool_Assessment_Matrix.md) | [02 - Sanctioned Sandbox Principles](02_Sanctioned_Sandbox_Principles.md) | [03 - Tool Profiles](03_Tool_Profiles.md) | [04 - Key Findings & Recommendations](04_Key_Findings_and_Recommendations.md) | [05 - Sources and References](05_Sources_and_References.md) | [06 - Glossary](06_Glossary.md) | [07 - Dependencies and Handoffs](07_Dependencies_and_Handoffs.md)

## Purpose

This file states what Workstream 1 needs from the other workstreams and from INSEAD functions to turn version 0.1 into the final framework. Each item says when it is needed by, its current status, why it matters, and what version 0.1 assumes while it is open.

## From Workstream 2 (Arthur): data, privacy, cybersecurity and AI risk

| Item | Needed by | Status | Why WS1 needs it | What v0.1 assumes meanwhile |
|---|---|---|---|---|
| Final Green / Amber / Red data classification | Before the first Amber-data approval | Not started | It determines which tools and which data are allowed in the sandbox | The working hypothesis from the brief is used in Documents 01 and 02 |
| A "can I put this data into this tool" decision table per category | Before the AUP ships to users | Not started | It turns the tool register into a rule users can apply in ten seconds | The two quick tests in Document 02, section 3.3 stand in |
| DPIA thresholds and Cybersecurity trigger points | Before any Tier 2 work starts | Not started | It defines when a project leaves the sandbox path for formal review | Red data never enters the sandbox (safe default) |
| Secrets and credential standards for prototypes | Before the sandbox infrastructure stand-up | Not started | Sandbox principle P6 needs the authoritative institutional standard | The OWASP Secrets Management Cheat Sheet is cited as interim |
| The AI-specific control list (prompt injection, excessive agency, output verification) | Before the first promotion gate review | Not started | It feeds the Tier 2/3 review gate and the agentic-risk column of the register | OWASP LLM Top 10 is cited as interim |

## From Workstream 3 (Salah): prototype to production, ownership, sustainability

| Item | Needed by | Status | Why WS1 needs it | What v0.1 assumes meanwhile |
|---|---|---|---|---|
| Production-readiness gate and checklist | Before the first promotion decision | Not started | Document 02, section 3.5 exit criteria reference it as the promotion trigger | A placeholder summary of the gate is listed |
| Ownership and lifecycle model | Before the first student adoption case | Not started | It decides the IP and owner wording behind principle P5 and Document 04 decision 5 | The named-owner requirement stands in |
| Approved hosting and SSO standards | Before the first promotion build | Not started | It tells sandbox projects which hosting targets to build toward | The Azure path is proposed as the default |
| Definition of a reviewed integration | Before the first Amber-data interface | Not started | It sets the bar for sandbox-scoped connections to institutional systems | "Reviewed, sandbox-scoped interfaces only" stands in |

## From other INSEAD functions

| Function | What WS1 needs | Needed by | Status |
|---|---|---|---|
| Legal and Procurement | DPA and indemnity review per Approved tool, vendor onboarding steps | Before Amber data flows through any tool | Not started |
| Digital/IT | Identity integration (Entra ID and SCIM), GitHub organisation setup, effort estimates | Before the sandbox stand-up | Not started |
| Learning and Talent | Content for the 15-minute onboarding module | Before the module ships | Not started |
| Communications | Publication of the AUP and the tool register | Before the register goes public | Not started |
| Data Protection Officer | Position on acceptable telemetry (Document 04, section 5) | Before Approved tool configuration | Not started |

## What blocks what

- Workstream 2's classification blocks the final Amber wording and the per-tool data table, not the register itself.
- Workstream 3's gate blocks the final promotion wording, not the sandbox operation.
- Neither blocks the sandbox infrastructure stand-up (GitHub organisation, Azure subscription, secrets manager) or the quarterly register review, which can start now.

## What WS1 hands over to the others

- The tool register and glance table (Document 01) become Workstream 2's "which tool for which data" input.
- The sandbox exit criteria (Document 02, section 3.5) become Workstream 3's gate input.
- The glossary (Document 06) is the shared vocabulary for both workstreams, including the acronyms list.
- WS1 offers to run the four scenario tests (Document 02, section 6) as shared test cases once WS2 and WS3 finalise their parts.

## Questions for the other workstream leads

For Arthur (WS2): Is the Green/Amber/Red hypothesis the final model, or does research data need a fourth class? Which telemetry clauses are acceptable on Approved tools? When must Cybersecurity be involved in an Amber-data prototype?

For Salah (WS3): Will the promotion gate be a checklist, a review board, or both? Who becomes the owner when a student's prototype is adopted? Does the approved hosting standard include the Azure path proposed here?
