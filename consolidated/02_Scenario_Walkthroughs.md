# Scenario Walkthroughs

> Framework-wide documents: [00 - Consolidated Framework](00_Consolidated_Framework.md) | [01 - Gaps, Contradictions and Dependencies](01_Gaps_Contradictions_Dependencies.md) | [02 - Scenario Walkthroughs](02_Scenario_Walkthroughs.md) | [03 - Recommended Changes](03_Recommended_Changes.md) | [04 - Minimum Operating Model](04_Minimum_Operating_Model.md) | [05 - White Paper Inputs](05_White_Paper_Inputs.md) | [06 - Research Refresh](06_Research_Refresh.md)
>
> Workstream sources: [WS1 tools and sandbox](../work_stream_1/01_Tool_Assessment_Matrix.md) | [WS2 data, privacy, cybersecurity, AI risk](../work_stream_2/WS2_Data_Privacy_Cybersecurity_AI_Risk_v0.3.md) | [WS3 prototype to production](../work_stream_3/WS3_Prototype_to_Production_Checkpoint.md)
>
> Version 0.1 (draft) | 3 September 2026

## How these walkthroughs work

Each scenario is run from idea to outcome through the consolidated framework. Every step states what the framework requires, what evidence is produced, where the process is unclear or creates friction, and what remains as decision or implementation work. Findings are numbered F1 onward and carried into [03 - Recommended Changes](03_Recommended_Changes.md).

---

## Scenario A: low-risk prototype on public or synthetic data

A student builds an event and timetable application for a club, using synthetic or public data. It is a personal project that may later be offered to the club.

| Step | What the framework requires | Evidence produced |
|---|---|---|
| Classify | Data band Green (public or synthetic), integration band Green (no institutional system access). Effective tier: Tier 0 | The classification is recorded when the project is registered |
| Build | Any Approved or Experimental tool from the register. No institutional credentials, no production systems | Tool choice and the AUP acknowledgement |
| Register | A registry entry once the work becomes a Tier 1 prototype rather than a personal experiment: contact, tool, data band, tier, repository link | Registry entry, two minutes |
| Keep it clean | Sandbox repository, secrets kept out of code, no institutional data | Repository and commit history |
| Promote or stop | If the club wants it officially, promotion is requested. Otherwise it stays personal or is archived | Promotion request, or an archive note |

Friction found:

- F1: The boundary between Tier 0 and Tier 1 is defined by intent, not by a trigger. A student who shares a link with ten classmates has arguably left Tier 0 without noticing. The framework needs one sentence that tells a person when they have crossed the line, for example "when anyone other than you relies on it, register it".
- F2: The registry is a manual form. This scenario is exactly the case where a two-minute form is worth it and where a longer one would be skipped.
- F3: Experimental tools are Green-only, which this scenario satisfies, but the register's categories do not explain why the student's favourite tool is Experimental. Plain-language reasons belong in the student-facing view of the register.

Decisions and implementation work remaining: the Tier 0 to Tier 1 trigger sentence (decision, small); the registry form and its student-facing view (implementation).

---

## Scenario B: internal use case with Amber data or a reviewed integration

A programme office wants a dashboard over learning-platform data, reading enrolment and engagement figures. No personal data is displayed, but the source system is internal and the application reads from it.

| Step | What the framework requires | Evidence produced |
|---|---|---|
| Classify | Data band Amber (internal, non-personal), integration band Amber (read access to an internal system). Effective tier: Tier 1, moving to Tier 2 when other staff rely on it | Classification record |
| Tool choice | An Approved tool only, because institutional data is involved and the tool must be Security-approved for external transfer | Register entry with the Security approval on file |
| Data rules | Amber data stays inside INSEAD-provided or Security-approved tools. No demonstration outside without anonymisation. Least-privilege read credentials, logging on | Data-use note, credential scope, logging configuration |
| Build | Sandbox with a reviewed, sandbox-scoped interface to the source system. No production credentials | Interface review record |
| Promote | Promotion request with the evidence pack, then the gate and the review point | Filled gate checklist, owners named, hosting and SSO confirmed |
| Own | Business owner named by the programme office, technical owner named by Digital/IT | Ownership record |

Friction found:

- F4: This is contradiction C1 in practice. WS2's draft says real institutional data should not be used during prototyping; the Tier 1 sandbox assumes it may be, with review. Until D1 is decided, this scenario has no unambiguous path and will be built anyway.
- F5: The data-use note has no defined reviewer or service level (gap G4). The programme office waits, or proceeds and informs afterwards.
- F6: Read access to a live source system during prototyping requires credentials that the sandbox is not supposed to hold. The framework says "reviewed, sandbox-scoped interface" but does not say who builds it, how long it takes, or whether a snapshot or synthetic extract would do instead. A data snapshot with a defined refresh is the obvious answer and is not yet offered.
- F7: Real users arrive before the gate is complete (gap G15). Two colleagues start using the dashboard during the pilot, which technically makes it production, and the transition is informal.
- F8: The gate asks for accessibility and backup criteria that nobody has defined for this scale (gap G7), so the checklist items are either skipped or answered with "not applicable" on judgement.

Decisions and implementation work remaining: D1 (Amber during prototyping), D5 (limited pilot state), the reviewer and service level for data-use notes, a defined snapshot or interface pattern, and a named accessibility standard.

---

## Scenario C: sensitive-data AI use case as a boundary case

A faculty member wants an assistant that reads student submissions and produces feedback summaries for the instructor. Student work is personal data and may contain sensitive content.

| Step | What the framework requires | Evidence produced |
|---|---|---|
| Classify | Data band Red (student and personal data), integration band at least Amber. Effective tier: Tier 2, and Tier 3 if the assistant can act autonomously, for example sending feedback or writing grades | Classification record and the DPO notification |
| Prototyping | Red data never enters prototyping. The assistant is developed against synthetic submissions that reproduce the structure and difficulty of real ones | Synthetic dataset description |
| Controls | Lawful basis recorded, minimisation, DPO involved, retention and deletion defined for the data and for every derived copy including prompts, logs, caches, embeddings and backups. Prompt-injection controls because submissions are untrusted content. Human validation before anything irreversible | Data protection record, retention schedule, control configuration |
| Build | Approved tools only, on approved hosting, with SSO, RBAC, logging of every AI call, and no personal data in logs | Architecture note, logging evidence |
| Promote | Full gate, plus Tier 3 additional review if the assistant acts. A succession plan is required at Tier 3 | Evidence pack, review outcome, succession plan |
| Own | Business owner in the faculty, technical owner in Digital/IT, documented accountability | Ownership record |

Friction found:

- F9: The boundary between Tier 2 and Tier 3 is the point where the assistant can act. Most assistants start as read-and-summarise and grow a "send feedback" button later. The framework has no rule for the reassessment that this change requires, so a Tier 2 application can quietly become Tier 3.
- F10: Retention of derived data is demanding and easy to under-scope. Prompt logs, vector stores and backups of an AI assistant are copies of personal data that the faculty member will not think of, and the framework says they must be deleted on schedule without saying who checks.
- F11: Prompt injection is a real path here, because student submissions are untrusted content that reaches the model. The control set is written for builders of AI applications, and this faculty member is not a builder. Someone has to make the control configuration part of the platform rather than homework for the academic.
- F12: The DPO notification threshold (C7) determines whether this case is routine or escalates, and the drafts disagree on when the DPO is notified.

Decisions and implementation work remaining: D4 (DPO threshold), the reassessment trigger between Tier 2 and Tier 3, a platform-level control configuration so that academics do not have to implement injection defences themselves, and an owner for checking deletion of derived data.

---

## Scenario D: student-built application considered for institutional adoption

A student has built a working application that solves a real administrative problem. It uses synthetic data with a design that could connect to an institutional system. The department wants to adopt it.

| Step | What the framework requires | Evidence produced |
|---|---|---|
| Recognise the trigger | A proposal for institutional use is not a sandbox activity. It triggers the full gate immediately | Promotion request |
| Classify | Current bands (likely Green or Amber) plus the bands the adopted version would have, including the intended integration | Classification record for both states |
| Choose the outcome route | Adopt, rebuild, vendor, retain learning or stop. The route is chosen before engineering effort is committed | Route decision with reasoning |
| If adopt | Full gate applied to the existing codebase, including code quality and security review of AI-generated code, documentation, tests, accessibility and secrets | Filled checklist and review outcome |
| Ownership transfer | Ownership moves to a named staff or faculty business owner plus a named technical owner, as a condition of promotion rather than a follow-up task. The student may support the handover | Ownership record signed by both owners |
| IP and licensing | IP position resolved for student work, third-party licences checked | Legal position, licence review |
| Support and retirement | Support path defined and retirement criteria set at approval | Support model, retirement plan |

Friction found:

- F13: The student is structurally temporary and the framework knows it, but nothing prevents a department from adopting the application and then failing to name a technical owner for months. The gate is the only defence, and it is a document.
- F14: Rebuilding is often the better answer and feels like a rejection. The NCSU precedent in WS3 shows the learning is often worth more than the code, but the framework does not say who tells the student that, or how the student is credited and involved.
- F15: IP and licensing are unresolved (gap G10) and this scenario cannot complete without them.
- F16: The gate assumes a technical owner exists inside Digital/IT. If capacity does not exist (gap G11), the honest outcome is "retain learning" or "vendor", and the framework should make that a respectable result rather than a failure.
- F17: There is no route for the case where the student's application is good but the department has no budget for hosting and maintenance. Cost and funding is a gate item with no default answer.

Decisions and implementation work remaining: D3 (ownership and orphan handling), D8 (IP position), confirmation of review capacity, a short student-facing description of the five outcome routes, and a credit or recognition mechanism for adopted student work.

---

## Cross-scenario summary

| Finding | Scenarios affected | Type | Where it is addressed |
|---|---|---|---|
| The Tier 0 to Tier 1 trigger is intent-based, not observable | A | Friction | Recommended change R1 |
| Amber during prototyping is unresolved (C1) | B, D | Contradiction | Decision D1 |
| The data-use note has no reviewer or service level | B | Gap | Recommended change R2 |
| Live source access needs a snapshot pattern | B | Implementation | Recommended change R3 |
| A limited pilot state is missing between sandbox and production | B, D | Gap | Decision D5, change R4 |
| Accessibility and backup criteria are undefined at small scale | B, D | Gap | Change R5 |
| Tier 2 to Tier 3 reassessment has no trigger | C | Gap | Change R6 |
| Derived-data deletion has no owner or check | C | Gap | Change R7 |
| Injection defences must be platform-level, not academic homework | C | Implementation | Change R8 |
| DPO notification threshold is ambiguous | B, C | Contradiction | Decision D4 |
| Ownership transfer relies on a document, not a commitment | D | Friction | Change R9 |
| Rebuilding or retaining learning needs a positive framing and student credit | D | Friction | Change R10 |
| IP and licensing block adoption | D | Gap | Decision D8 |
| Review capacity is assumed but unconfirmed | B, C, D | Gap | Decision D7 |

What held up well across all four scenarios: the derived tier (data band plus integration band, higher band governs) removed arguments about how serious a project was; the two-scale model caught Scenario B, where the data is unremarkable but the integration is not; the five outcome routes gave every scenario a legitimate ending, including the two that do not end in production; and the distinction between existing requirements and proposals kept the discussion about INSEAD policy separate from the discussion about the framework's own design.
