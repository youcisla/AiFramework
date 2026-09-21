# Workstream 3: Prototype to Production, Ownership and Sustainability

> Workstream 3 | INSEAD AI-Assisted Application Development Framework | Source: Workstream3_Checkpoint.docx | Converted to markdown 3 September 2026
>
> This is the workstream's own draft, converted faithfully from Word for the consolidated framework. Content and positions are the author's; only formatting was changed.
>
> Workstream 1 documents: [01 - Tool Assessment Matrix](../work_stream_1/01_Tool_Assessment_Matrix.md) | [02 - Sanctioned Sandbox Principles](../work_stream_1/02_Sanctioned_Sandbox_Principles.md) | [03 - Tool Profiles](../work_stream_1/03_Tool_Profiles.md) | [04 - Key Findings & Recommendations](../work_stream_1/04_Key_Findings_and_Recommendations.md) | [05 - Sources and References](../work_stream_1/05_Sources_and_References.md) | [06 - Glossary](../work_stream_1/06_Glossary.md) | [07 - Dependencies and Handoffs](../work_stream_1/07_Dependencies_and_Handoffs.md)
>
> Framework-wide: [Consolidated framework](../consolidated/00_Consolidated_Framework.md) | [Gaps and contradictions](../consolidated/01_Gaps_Contradictions_Dependencies.md) | [Scenario walkthroughs](../consolidated/02_Scenario_Walkthroughs.md) | [Recommended changes](../consolidated/03_Recommended_Changes.md) | [Minimum operating model](../consolidated/04_Minimum_Operating_Model.md) | [White paper inputs](../consolidated/05_White_Paper_Inputs.md) | [Research refresh](../consolidated/06_Research_Refresh.md)

Initial research checkpoint: AI-Assisted Application Development Framework

Prepared by JARI Salah Eddine

Core question: A prototype works. What needs to be true before INSEAD can actually use, operate and support it?

## 1. Key findings

The research points to one consistent theme across governance standards, low-code/citizen-development literature, and IT operations practice: the technology gate (does it work, is it tested) is well understood; the ownership and lifecycle gate (who is accountable once the original builder is gone) is the part institutions consistently under-invest in, and it is exactly the gap AI-assisted "vibe coding" is about to widen.

### 1.1 Prototype vs. production is a threshold, not a spectrum

Industry framing of "shadow AI" / "shadow IT" describes production as the point an application has to scale, connect to core systems, handle sensitive data, meet compliance requirements, or be maintained by more than the person who built it, not a gradual drift. That maps onto the brief's Tier 1 → Tier 2 boundary and gives Workstream 3 a concrete trigger condition rather than a vague one.

- Citizen Development Hit Its Ceiling. Now What? Veilsun: <https://www.veilsun.com/blog/citizen-development-hit-its-ceiling-now-what>

### 1.2 AI-generated code carries a measurably higher vulnerability rate

A cited 2025 scan of 5,600 production "vibe-coded" applications found zero with basic security controls in place, and AI-generated code carried 322% more privilege-escalation paths than human-written code. That's a concrete reason the production-readiness gate can't be waived just because the code "already works". AI-assisted code needs the same scrutiny as hand-written code, arguably more, not less.

- Citizen Development Hit Its Ceiling. Now What? Veilsun: <https://www.veilsun.com/blog/citizen-development-hit-its-ceiling-now-what>

### 1.3 Established governance standards converge on the same core requirement: named accountability across the full lifecycle

ISO/IEC 42001 (the international AI management system standard) requires organisations to define and document roles and responsibilities for the AI system lifecycle, with top management assigning ownership rather than leaving it to individual departments. The NIST AI Risk Management Framework similarly treats AI risk as spanning the full lifecycle "from design through deployment and retirement," with its Govern function centred on assigned accountability. Neither standard treats retirement/decommissioning as optional, it's a named stage, not an afterthought.

- ISO/IEC 42001 explained, Scilife: <https://www.scilife.io/blog/iso/iec-42001-explained-the-ai-management-system-standard-for-life-sciences>
- ISO 42001: The AI Management System Standard, Konfirmity: <https://www.konfirmity.com/blog/iso-42001>
- NIST AI RMF Explained, Orca Security: <https://orca.security/resources/blog/nist-ai-risk-management-framework-ai-rmf/>

### 1.4 The citizen-development / low-code literature has already solved a very similar problem

Research on governing citizen developers (people building apps without being professional developers, directly analogous to students using AI coding tools) shows that governance for this population needs to differ from conventional software governance: it relies more heavily on platform-level guardrails, pre-approved data sources, and a clear promotion path when an app "grows beyond its initial purpose" (e.g. a personal tool becoming a team-wide or institution-wide system). This is a strong parallel for how INSEAD should think about student-built AI applications specifically.

- Governing Citizen Development to Address Low-Code Platform Challenges, TUM / MIS Quarterly Executive: <https://portal.fis.tum.de/en/publications/governing-citizen-development-to-address-low-code-platform-challe/>
- Why Citizen Developers Need Governance in Low-Code Platforms, Caspio: <https://www.caspio.com/blog/citizen-developer-governance-framework/>

### 1.5 A real precedent exists for "student-built prototype becomes institutional system"

North Carolina State University had student interns build a low-code MVP ("REPORTER") for non-credit course registration after vendor quotes for an off-the-shelf system came back at $3-10M over five years. The MVP was built in roughly two months and the full system launched three months later, at a low six-figure total cost. That's a real case for Case D in the brief (student builds something useful, proposes institutional adoption), and a good scenario to test our pathway against.

- When to Build vs. Buy Software, Mendix: <https://www.mendix.com/blog/build-vs-buy-its-time-to-build/>

### 1.6 Production-readiness gates in industry practice are remarkably consistent

Across enterprise go-live and SRE literature, the recurring gate categories are: infrastructure/hosting validated, dependencies mapped, security and compliance reviewed, testing (unit/integration/UAT) passed, support and escalation paths defined, and rollback/business-continuity plans in place. This validates the checklist structure proposed in the brief and gives Workstream 3 external benchmarks to cite rather than inventing criteria from scratch.

- A production readiness checklist for software development, TechTarget: <https://www.techtarget.com/searchsoftwarequality/tip/A-production-readiness-checklist-for-software-development>
- Go Live Checklist For Software Projects, DevCom: <https://devcom.com/tech-blog/go-live-checklist/>

### 1.7 Retirement/decommissioning is a named, funded stage, not a shutdown

IT asset and application decommissioning practice treats retirement as its own governance process with defined initiators (usually the service owner), approvers (security/GRC, who confirm data classification and sanitisation), and executors (operations), not simply "turning something off." Skip this and you get what one source calls "zombie estates": applications retired on paper while data, integrations, or access quietly stay live. That's the case for including retirement criteria in the production-readiness gate from day one, as the brief requests, rather than treating it as a later problem.

- IT Asset Disposition (ITAD), Cloudaware: <https://cloudaware.com/blog/it-asset-disposition/>
- Legacy System Decommissioning Plan: A CTO's Playbook: <https://softwaremodernizationservices.com/insights/legacy-system-decommissioning-plan/>

## 2. Proposed structure for Workstream 3

### 2.1 Definitions: prototype vs. production; the trigger conditions that force the transition (scale, sensitive data, core-system integration, multi-person maintenance need)

### 2.2 Production-readiness gate: the checklist (below), scaled to the Tier 0-3 model from Workstream 2/the framework

### 2.3 Ownership & accountability model: named business owner + technical owner, and what happens when a student/creator leaves (the succession problem)

### 2.4 Outcome routes: what happens to a validated-but-unsuitable prototype (adopt / rebuild / vendor / retain-learnings / stop)

### 2.5 Lifecycle & retirement: criteria and process for eventually decommissioning an app, decided at the same time it's approved, not after

### 2.6 Scenario testing: Cases A-D from the brief run against the gate and pathway

## 3. Production-readiness gate (draft checklist)

Draft only, designed to scale with the Tier 0-3 model. Full gate applies from Tier 2 upward; Tier 1 uses a lighter version; Tier 0 is exempt.

| Area | What must be true before production | Notes |
| --- | --- | --- |
| Ownership | Named business/product owner AND named technical owner, both accountable after handover. | Core gap for student-built prototypes: creator graduates or leaves. |
| Architecture & security review | Architecture reviewed; cybersecurity review completed and any findings closed or accepted with sign-off. | Overlaps Workstream 2 risk/control matrix. |
| Privacy & data review | Data classification confirmed (see WS2); any Amber/Red data use approved. | Depends on WS2 classification model. |
| Hosting & auth | Deployed on INSEAD-approved hosting; SSO/authentication integrated, no standalone credentials. | Rules out personal cloud accounts / free-tier hosting for anything beyond Tier 0. |
| Source control & code quality | Code lives in an INSEAD-controlled repository; passes agreed quality/testing bar (unit + integration, ideally automated). | AI-generated code needs explicit review: see finding on vulnerability rates below. |
| Testing | Automated test coverage for core flows; a documented test/QA pass before go-live. | Aligned to go-live checklist practice (TechTarget, DevCom). |
| Accessibility | Meets baseline accessibility standard for an academic institution. | Often skipped in prototypes: needs explicit gate. |
| Secrets management | No hard-coded credentials/API keys; uses an approved secrets store. | Common AI-coding failure mode. |
| Logging & monitoring | Basic logging, error monitoring, and alerting in place proportional to Tier. | Not needed at Tier 0; mandatory from Tier 2 up. |
| Backup & recovery | Backup/recovery plan defined for any persistent data. | |
| Deployment & change mgmt | Documented deployment process; change requests go through an agreed process, not ad hoc pushes. | |
| Documentation | README, architecture note, and a runbook exist and are handed to the technical owner. | Prevents "only the creator understands it." |
| Support model | A support/helpdesk path is defined: who does a user contact when it breaks. | |
| Licensing / IP / procurement | IP ownership clarified (INSEAD vs individual); any third-party licences/vendor terms checked. | Relevant when the creator is a student, not an employee. |
| Cost & funding | Ongoing hosting/maintenance cost identified and a budget line or owner confirmed. | Prototypes are usually free/cheap to run; production isn't. |
| Business continuity | Plan for what happens if the app fails or the vendor/tool it depends on changes. | |
| Retirement / decommissioning | Criteria for when and how the app will eventually be retired, with data handling defined. | Own it from day one, don't leave it as an afterthought. |

## 4. Ownership & lifecycle model

### 4.1 The core problem

Most AI-assisted prototypes at INSEAD will originate from students, who are structurally temporary (a semester, an internship, a degree programme) or from staff/faculty who may change roles. A prototype cannot become institutional software on the strength of "it works" alone: someone has to be accountable for it after the original creator is gone. That's the single point the brief emphasises most strongly for this workstream, and it's the one governance standards (ISO 42001, NIST AI RMF) treat as a hard requirement: named roles across the full lifecycle, not just at build time.

### 4.2 Outcome routes for a validated prototype

A prototype proving a real need doesn't mean its code should become the production system. Five routes, matching the brief:

| Route | When to use it | What it requires |
| --- | --- | --- |
| Adopt / secure the prototype | The prototype's architecture is sound and the tool used is on an approved list. | Full production-readiness gate applied to the existing codebase; new technical owner assigned. |
| Rebuild on an approved platform | The idea is validated but the code/tool is unsuitable for production (security, scalability, unsupported stack). | Requirements captured from the prototype; rebuilt by IT or an approved team. |
| Implement via existing vendor/product | An existing INSEAD-licensed tool already does this, or could with configuration. | Gap analysis against the vendor product; procurement engaged. |
| Retain requirements & learning only | The need is real but timing, budget, or priority doesn't support building now. | Findings logged to the roadmap/backlog; prototype decommissioned. |
| Stop | The need isn't validated, risk outweighs value, or a cheaper alternative exists. | Prototype decommissioned; data disposed of per policy. |

### 4.3 Risk-tier alignment (working hypothesis, per Section 6 of the brief)

| Tier | Gate weight | Example ownership requirement |
| --- | --- | --- |
| Tier 0: Personal experiment | Minimal, no formal gate. | None required; informal awareness only. |
| Tier 1: Internal prototype | Light gate, key risks checked, not full checklist. | A faculty/staff sponsor named, even if not a full technical owner yet. |
| Tier 2: Institutional application | Full production-readiness gate applies. | Named business owner + named technical owner, both required before go-live. |
| Tier 3: High-impact / sensitive | Full gate plus additional review (security, legal, possibly ethics/data protection office). | Owner accountability formally documented; succession plan required, not optional. |

## 5. Proposed recommendations (draft, for discussion)

1. Treat "named business owner + named technical owner" as a hard requirement before Tier 2 production, not a best-effort ask; every framework we reviewed treats this the same way.
2. Decide the retirement/decommissioning criteria at the same time an app is approved for production, not after: this avoids "zombie" apps nobody remembers to turn off.
3. Apply the full production-readiness gate uniformly regardless of whether the code was AI-generated or hand-written: evidence suggests AI-assisted code needs equal or greater scrutiny, not less, so a lighter gate for "vibe-coded" apps would be the wrong direction.
4. Build the gate as a genuine gate (a go/no-go checkpoint with a named approver), not a self-certified checklist: otherwise it will be skipped under time pressure, as seen repeatedly in the go-live literature.
5. Make the "stop" and "retain requirements only" outcome routes explicitly acceptable and normal: a workstream that only ever recommends adoption or rebuild will quietly pressure reviewers to wave things through.
6. Scale the gate to the Tier 0-3 model rather than having one gate for everything: a synthetic-data personal prototype should not face the same process as an application touching student records.
7. Require a documentation handover (README, architecture note, runbook) as a gate condition, specifically because the creator (often a student) will not be around to explain the system informally.
8. When a student proposes institutional adoption (Case D), treat it as triggering the full gate immediately; do not let it run informally "because it's just one student's project."
9. For vendor/build decisions, capture requirements from the prototype even when the code itself is discarded: the NCSU precedent shows that a rejected prototype's learning is often more valuable than its code.
10. Align the ownership/lifecycle model's terminology directly with Workstream 2's data classification (Green/Amber/Red) and Workstream 1's sandbox tiers, so the three streams read as one framework rather than three separate vocabularies.

## 6. Alignment with Workstream 1 (Youcef), confirmed

Youcef's sandbox framework (github.com/youcisla/AiFramework) is already built to hand off to this gate: sandbox covers Tier 0/1, and "leaving the sandbox is a promotion decision" that routes through the Workstream 3 gate and the five outcome routes above. Terminology now matches. His Document 07 raises three questions for this workstream: answered below so both docs stay consistent.

### Q1. Will the promotion gate be a checklist, a review board, or both?

Both, deliberately. The checklist (Section 3) is the scalable, self-serve artifact: it lets a project owner see exactly what's missing before requesting promotion. But completion of the checklist alone should not auto-approve a Tier 2/3 promotion: a small review point (not a full board; realistically the technical owner-to-be, a Digital/IT rep, and Andreas or a delegate) has to sign off, because accountability has to land on a named person making a judgment call, not a form being fully ticked. This mirrors Youcef's own Principle P8 (human accountability, proportionate review) and keeps Tier 0/1 review light while making Tier 2/3 review real.

### Q2. Who becomes the owner when a student's prototype is adopted?

Never the student alone, and never by default. Ownership transfers to a named INSEAD staff or faculty business owner plus a named technical owner (typically Digital/IT or an appointed maintaining team) as part of the promotion decision itself: this transfer is a gate condition, not a follow-up task. The student can stay involved (documentation, initial knowledge transfer, even continued contribution if still enrolled), but institutional accountability can't rest on someone who is structurally temporary. This matches Youcef's Document 02 Case D outcome ("INSEAD via the adopting team, not the student alone"), our models already agree here.

### Q3. Does the approved hosting standard include the Azure path proposed here?

Provisional yes, pending Digital/IT confirmation. Azure OpenAI/Azure hosting is a reasonable default to propose jointly: it keeps sandbox and production on the same institutional cloud vendor, which simplifies the Tier 1 → Tier 2 transition Youcef's model already assumes. This should be flagged in the white paper as a joint WS1/WS3 recommendation still needing formal Digital/IT and procurement sign-off, not treated as settled.

## 7. Key decisions INSEAD will eventually need to make

- Who has formal authority to approve the promotion of a prototype from Tier 1 to Tier 2 (a single reviewer, a small board, IT/Digital team)?
- What happens by default to a student-built prototype when the student leaves and no one has claimed ownership: is there a default "orphan" process (e.g. automatic Tier-0 downgrade, automatic retirement after N months)?
- Does INSEAD IT have the capacity to be the "technical owner of last resort," or does an unowned app simply get retired?
- How is IP ownership handled when a student (not an employee) builds something INSEAD later wants to adopt?
- Is there budget/headcount for the production-readiness review itself, or does this depend entirely on existing IT bandwidth?

## 8. Questions requiring stakeholder validation

- Does INSEAD already have an existing application/vendor onboarding or decommissioning policy we should build on rather than duplicate? (The brief explicitly asks us to distinguish external best practice from existing INSEAD requirements.)
- Who currently acts as "business owner" for existing INSEAD-built tools, and does that model already work, or is it informal/undocumented?
- What is Digital/IT's actual current capacity to support additional owned applications coming out of this initiative?
- Is there an existing procurement fast-path for the "implement via vendor" outcome route, or would that be a new process to design?
- (from Youcef's Document 02, Q4) How do we reconcile "institutional work in institutional accounts" with visiting faculty, PhD researchers and short-stay users? Needs HR/IT input: touches WS3's ownership model directly since these users have the same "temporary owner" problem as students.
- (from Youcef's Document 02, Q5) What is Legal's position on IP in AI-generated code for students' coursework versus staff work? Directly determines how firmly WS3's ownership-transfer model can be stated.

## 9. Gaps & dependencies on other workstreams

- Workstream 2 (Arthur), STILL OPEN: my gate's privacy/security review step depends entirely on Workstream 2's final Green/Amber/Red classification and risk/control matrix. Need Arthur's draft before finalising which Tier requires which review depth.
- Open gap, no owner yet: none of the three workstreams currently owns "who decides an app is abandoned" (no owner responds, no activity for N months). This sits at the boundary of WS3's ownership model and general IT governance.
