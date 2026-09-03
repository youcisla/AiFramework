# Dependencies and Handoffs

> Workstream 1 | INSEAD AI-Assisted Application Development Framework | Version 0.1 (draft) | 3 September 2026
>
> Workstream 1 documents: [01 - Tool Assessment Matrix](01_Tool_Assessment_Matrix.md) | [02 - Sanctioned Sandbox Principles](02_Sanctioned_Sandbox_Principles.md) | [03 - Tool Profiles](03_Tool_Profiles.md) | [04 - Key Findings & Recommendations](04_Key_Findings_and_Recommendations.md) | [05 - Sources and References](05_Sources_and_References.md) | [06 - Glossary](06_Glossary.md) | [07 - Dependencies and Handoffs](07_Dependencies_and_Handoffs.md)

## Purpose

This file states what Workstream 1 needs from the other workstreams and from INSEAD functions to turn version 0.1 into the final framework. Each item says why it matters, what version 0.1 assumes while it is open, and who owns it. It is the checklist the workstream leads review together.

## From Workstream 2 (Arthur): data, privacy, cybersecurity and AI risk

| Item | Why WS1 needs it | What v0.1 assumes meanwhile | Status |
|---|---|---|---|
| Final Green / Amber / Red data classification | It determines which tools and which data are allowed in the sandbox | The working hypothesis from the brief is used in Documents 01 and 02 | Requested |
| A "can I put this data into this tool" decision table per category | It turns the tool register into a rule users can apply in ten seconds | The two quick tests in Document 02, section 3.3 stand in | Requested |
| DPIA thresholds and Cybersecurity trigger points | It defines when a project leaves the sandbox path for formal review | Red data never enters the sandbox (safe default) | Requested |
| Secrets and credential standards for prototypes | Sandbox principle P6 needs the authoritative institutional standard | The OWASP Secrets Management Cheat Sheet is cited as interim | Requested |
| The AI-specific control list (prompt injection, excessive agency, output verification) | It feeds the Tier 2/3 review gate and the agentic-risk column of the register | OWASP LLM Top 10 is cited as interim | Requested |

## From Workstream 3 (Salah): prototype to production, ownership, sustainability

| Item | Why WS1 needs it | What v0.1 assumes meanwhile | Status |
|---|---|---|---|
| Production-readiness gate and checklist | Document 02, section 3.5 exit criteria reference it as the promotion trigger | A placeholder summary of the gate is listed | Requested |
| Ownership and lifecycle model | It decides the IP and owner wording behind principle P5 and Document 04 decision 5 | The named-owner requirement stands in | Requested |
| Approved hosting and SSO standards | It tells sandbox projects which hosting targets to build toward | The Azure path is proposed as the default | Requested |
| Definition of a reviewed integration | It sets the bar for sandbox-scoped connections to institutional systems | "Reviewed, sandbox-scoped interfaces only" stands in | Requested |

## From other INSEAD functions

- Legal and Procurement: DPA and indemnity review per Approved tool, plus vendor onboarding steps.
- Digital/IT: identity integration (Entra ID and SCIM), GitHub organisation setup, effort estimates for the sandbox stand-up.
- Learning and Talent: content for the 15-minute onboarding module.
- Communications: publication of the Acceptable Use Policy and the tool register to students and staff.
- Data Protection Officer: the telemetry acceptability question in Document 04, section 5.

## What blocks what

- Workstream 2's classification blocks the final Amber wording and the per-tool data table, not the register itself.
- Workstream 3's gate blocks the final promotion wording, not the sandbox operation.
- Neither blocks the sandbox infrastructure stand-up (GitHub organisation, Azure subscription, secrets manager) or the quarterly register review, which can start now.

## What WS1 hands over to the others

- The tool register and glance table (Document 01) become Workstream 2's "which tool for which data" input.
- The sandbox exit criteria (Document 02, section 3.5) become Workstream 3's gate input.
- The glossary (Document 06) is the shared vocabulary for both workstreams.

## Questions for the other workstream leads

For Arthur (WS2): Is the Green/Amber/Red hypothesis the final model, or does research data need a fourth class? Which telemetry clauses are acceptable on Approved tools? When must Cybersecurity be involved in an Amber-data prototype?

For Salah (WS3): Will the promotion gate be a checklist, a review board, or both? Who becomes the owner when a student's prototype is adopted? Does the approved hosting standard include the Azure path proposed here?
