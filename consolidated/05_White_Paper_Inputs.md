# White Paper Inputs

> Framework-wide documents: [00 - Consolidated Framework](00_Consolidated_Framework.md) | [01 - Gaps, Contradictions and Dependencies](01_Gaps_Contradictions_Dependencies.md) | [02 - Scenario Walkthroughs](02_Scenario_Walkthroughs.md) | [03 - Recommended Changes](03_Recommended_Changes.md) | [04 - Minimum Operating Model](04_Minimum_Operating_Model.md) | [05 - White Paper Inputs](05_White_Paper_Inputs.md) | [06 - Research Refresh](06_Research_Refresh.md)
>
> Workstream sources: [WS1 tools and sandbox](../work_stream_1/01_Tool_Assessment_Matrix.md) | [WS2 data, privacy, cybersecurity, AI risk](../work_stream_2/WS2_Data_Privacy_Cybersecurity_AI_Risk_v0.3.md) | [WS3 prototype to production](../work_stream_3/WS3_Prototype_to_Production_Checkpoint.md)

## The framework in one page

(Finding) The problem: students, faculty and staff already build software with AI tools such as Copilot, Cursor, Lovable and Claude Code, mostly on personal accounts. This happens whether or not INSEAD governs it, and without governance it is shadow AI: no data protection, no audit trail, and no path from a good idea to an institutional asset.

(Proposed) The position: the framework does not govern whether people use AI to build applications. It governs how an AI-assisted prototype progresses from experiment to institutional product, with governance rising in proportion to risk and impact.

(Proposed) The model: a project's risk is derived, not declared. Two independent classifications are recorded: a data band (Green, Amber, Red) for the information an application holds, and an integration band (Green, Amber, Red) for what it can do to institutional systems. The higher of the two bands sets the effective tier, Tier 0 through Tier 3. (Finding) A project does not choose its tier; the two bands place it there, which removes an argument that used to be a matter of opinion.

(Proposed) The control inputs: four things set what is allowed. A published tool register categorises every tool as Approved, Experimental or Restricted. The data and integration bands set what data and what access are permitted. Identity rules require institutional accounts for institutional work. (Existing requirement) These sit on top of existing INSEAD policy: the Data Security Policy (KB0010486), the Application Security Policy (KB0010484), the IT security policies and the GDPR.

(Proposed) The gate: a prototype leaves the sandbox only through a production-readiness gate, a checklist of sixteen areas scaled by tier, from ownership and security review through testing, logging, support and retirement. (Proposed) Completing the checklist does not auto-approve; a small review point signs off, because accountability must land on a named person, not a completed form.

(Proposed) Ownership: before Tier 2 production an application has two named owners, a business owner for purpose and funding and a technical owner for running and maintaining it. (Proposed) Ownership never rests on a student alone; a Tier 1 prototype has a named sponsor, and Tier 3 adds a documented succession plan.

(Proposed) The five outcomes: a validated prototype ends in one of five routes: adopt, rebuild on an approved platform, implement through an existing vendor, retain requirements and learning, or stop. (Finding) Stop and retain learning are legitimate, expected outcomes, not failures.

## Proposed white paper outline

(Proposed) The outline below states, for each section, the argument it must make and the source document that carries the evidence.

| Section | The argument it must make | Evidence source |
|---|---|---|
| 1. The problem: shadow AI is already here | (Finding) AI-assisted development is already happening on personal accounts, so the real choice is between a governed path and invisible use | [WS1 sandbox principles](../work_stream_1/02_Sanctioned_Sandbox_Principles.md), [WS1 findings](../work_stream_1/04_Key_Findings_and_Recommendations.md) |
| 2. The model: risk is derived, not declared | (Proposed) Data band plus integration band place a project in a tier, and the higher band governs | [WS2](../work_stream_2/WS2_Data_Privacy_Cybersecurity_AI_Risk_v0.3.md), [00 - Consolidated Framework](00_Consolidated_Framework.md) |
| 3. The controls: seven questions answered | (Proposed) Seven plain-language questions turn the data and integration rules into something a non-specialist can apply | [WS2](../work_stream_2/WS2_Data_Privacy_Cybersecurity_AI_Risk_v0.3.md), [00](00_Consolidated_Framework.md) |
| 4. The AI-specific and traditional controls | (Proposed) Five AI risks plus traditional application controls, and the point each becomes mandatory | [WS2](../work_stream_2/WS2_Data_Privacy_Cybersecurity_AI_Risk_v0.3.md), [00](00_Consolidated_Framework.md) |
| 5. The gate and promotion | (Proposed) A prototype becomes an application only when it passes a scaled gate and a named review point signs | [WS3](../work_stream_3/WS3_Prototype_to_Production_Checkpoint.md), [00](00_Consolidated_Framework.md) |
| 6. Ownership and lifecycle | (Proposed) Two named owners, succession, and retirement decided at approval, because the builder is often temporary | [WS3](../work_stream_3/WS3_Prototype_to_Production_Checkpoint.md), [00](00_Consolidated_Framework.md) |
| 7. The five outcomes | (Proposed) Every prototype has a legitimate ending, including stop and retain learning | [WS1](../work_stream_1/02_Sanctioned_Sandbox_Principles.md), [WS3](../work_stream_3/WS3_Prototype_to_Production_Checkpoint.md), [00](00_Consolidated_Framework.md) |
| 8. What is new and what already exists | (Proposed) The framework restates GDPR and INSEAD policy and adds only the operating layer those policies do not cover | This document, section 5 |
| 9. The decisions asked of leadership | (Decision required) Eight decisions, each stated as a question with a recommended answer | [01 - Gaps register](01_Gaps_Contradictions_Dependencies.md), this document section 6 |
| 10. The ask: operating model and funding | (Implementation work) A minimal operating model and funding for a pilot and review capacity | [01 - Gaps register](01_Gaps_Contradictions_Dependencies.md), [04 - Minimum Operating Model](04_Minimum_Operating_Model.md) |

## Key messages

(Proposed) At most seven messages, one sentence each, with the evidence line that supports each.

1. (Finding) AI-assisted development is already happening on personal accounts, so the choice is between a governed path and invisible shadow AI. Evidence: WS1 sandbox principles section 1.2 records existing use of Copilot, Cursor, Lovable, Bolt and Claude Code.
2. (Finding) Risk is derived from the data and the integration, not declared by the builder, and the higher of the two bands sets the controls. Evidence: the scenario walkthroughs show the derived tier removes arguments about how serious a project is (02, cross-scenario summary).
3. (Existing requirement) Red data never enters prototyping, because personal data cannot be collected or used without a lawful basis and prototyping is not one. Evidence: WS2 question 2.
4. (Finding) AI-generated code needs the same scrutiny as hand-written code, arguably more, not less. Evidence: WS3 finding 1.2 cites a 2025 scan of 5,600 vibe-coded applications in which AI-generated code carried more privilege-escalation paths.
5. (Proposed) A prototype becomes an institutional application only when two owners are named and a gate is passed, and a completed checklist alone does not approve it. Evidence: WS3 section 4.2 and recommendation 4.
6. (Finding) Stop and retain learning are legitimate, expected outcomes, not failures, and they keep the framework honest. Evidence: 00 section 7 and the scenario walkthroughs.
7. (Existing requirement) The framework creates no new compliance regime; it restates GDPR and INSEAD data and application security policy and applies them to AI-assisted development. Evidence: WS2 section 2.

## The evidence table

(Proposed) The table lists the claims the white paper will make, the evidence behind each, the source document, and the strength of that evidence. Strength is one of: existing requirement, vendor documentation, standards, community signal, or scenario finding.

| Claim | Evidence | Source document | Strength of evidence |
|---|---|---|---|
| Staff and students already use AI coding tools on personal accounts | Observed use of Copilot, Cursor, Lovable, Bolt and Claude Code, largely on personal accounts | WS1 sandbox principles 1.2 | community signal |
| Internal data must not leave INSEAD-provided or Security-approved tools | INSEAD Data Security Policy KB0010486 | WS2 section 2 | existing requirement |
| Personal data requires a lawful basis, minimisation and DPO involvement | GDPR obligations | WS2 section 2 | existing requirement |
| Enterprise tiers now carry SSO, SCIM, no-training terms, audit logs and EU residency | Vendor trust centres and changelogs; 90 plus source links checked 3 September 2026 | WS1 matrix | vendor documentation |
| AI-generated code carries a higher vulnerability rate | WS3 cites a 2025 scan of 5,600 vibe-coded applications with more privilege-escalation paths in AI-generated code | WS3 finding 1.2 | community signal |
| Named accountability across the full lifecycle is a hard requirement | ISO/IEC 42001 and the NIST AI Risk Management Framework | WS3 finding 1.3 | standards |
| Retirement is a named, funded stage, not an afterthought | IT asset decommissioning practice and the zombie-estate problem | WS3 finding 1.7 | standards |
| The tier is derived from data and integration, not chosen | All four scenario walkthroughs | 02 scenario walkthroughs | scenario finding |
| Amber data during prototyping has no unambiguous path | Contradiction C1 surfaces in Scenario B | 01 gaps register, 02 | scenario finding |
| Real users arrive before the gate is complete | F7 and gap G15 in Scenarios B and D | 02 scenario walkthroughs, 01 | scenario finding |
| A limited pilot state between sandbox and production is missing | Gap G15, decision D5 | 01 gaps register | scenario finding |
| IP ownership for student-built work is unresolved | Gap G10 blocks Scenario D from completing | 01 gaps register, 02 | scenario finding |
| A student-built prototype can become an institutional system | The cited NCSU REPORTER precedent | WS3 finding 1.5 | community signal |
| Stop and retain learning keep the framework honest | Reviewers still treat them as failures unless leadership says otherwise | 00 section 7, 02 | scenario finding |
| The vendor outcome route has no procurement fast path | Gap G12 | 01 gaps register | scenario finding |

## What is genuinely new here versus existing INSEAD policy

(Proposed) The white paper must separate the two explicitly, because the brief asks for that distinction.

(Existing requirement) Existing obligations the framework restates rather than creates:

- GDPR: personal data may not be collected or used without a lawful basis, and data-subject rights must be honoured.
- INSEAD Data Security Policy (KB0010486): internal documents and data must not be transferred outside INSEAD-provided internal tools unless the external tool is approved by the Security team.
- INSEAD Application Security Policy (KB0010484): every application must align with institutional application security requirements.
- INSEAD IT security policies generally, including the Cyber Security pages.

(Proposed) New additions the framework proposes, none of which exist in the policies above:

- The two-scale classification (data band plus integration band) and the derived tier.
- The sanctioned sandbox as a governed environment for Tier 0 and Tier 1 work, defined by policy, identity, approved tooling, dedicated repositories and review.
- The tool register categorising tools as Approved, Experimental or Restricted, reviewed quarterly, with two sign-offs: a Digital/IT operational verdict and Security approval for external transfer.
- The seven framework questions as a plain-language operating rule set for non-specialists.
- The AI-specific control set: prompt injection, sensitive information disclosure, excessive agency, supply chain and model provenance, and unreliable output.
- The production-readiness gate, scaled by tier, with a review point that signs off rather than a self-certified checklist.
- The ownership model: business owner plus technical owner, a Tier 1 sponsor, a Tier 3 succession plan, and orphan handling.
- The five outcome routes, including stop and retain learning.
- Lifecycle review of owned applications and retirement criteria decided at approval.

(Decision required) Leadership must also decide, and (Implementation work) the organisation must build, a third group of items that are neither settled policy nor a proposal. These are the decisions in section 6 below and the implementation items in the gaps register, such as the register build, the Security approval workflow, the evidence verification step and the abandoned-project process.

## Decisions the white paper must ask leadership to make

(Decision required) The following are the eight decisions from section 5 of the gaps register, restated as questions with the recommended answer.

| ID | Question | Recommended answer |
|---|---|---|
| D1 | May Amber data be used during prototyping? | Yes, in Security-approved tools, at Tier 1, with a data-use note and logging, keeping Red out of prototyping entirely. |
| D2 | Who approves tools and who signs off promotions? | Digital/IT operates the register and its quarterly review; Security approves external data transfer; a small review point signs promotions. |
| D3 | What happens to an application with no owner and no activity? | Downgrade to Tier 0 after a set inactivity period, then retire with data disposal, subject to notice. The register proposes 90 days inactivity and 180 days retirement. |
| D4 | When is the DPO notified? | When personal data is stored (Red), with an Amber note to Digital/IT for non-personal internal data. Subject to DPO confirmation. |
| D5 | Is there a limited pilot state with real users before the full gate? | Yes: a defined pilot state with an owner, a data limit, a time limit and a review at the end. |
| D6 | Is Azure the approved hosting and model default? | Yes, Azure with EU regions as the default path, pending Digital/IT and procurement sign-off. |
| D7 | Is there funding for a pilot and for review capacity? | Yes: fund a minimal pilot and confirm review capacity, using the operating model in 04. |
| D8 | What is the IP position on AI-generated student work? | Legal to advise; the framework needs an answer before the first student adoption. |

## Visuals to include

(Proposed) Each visual below is one diagram the white paper should carry, with a one line description and a reference to the diagram or table already in the framework documents.

1. Tier derivation. How data band plus integration band combine into an effective tier, with the higher band governing. Reuse the table in 00 section 2.2.
2. End to end flow. Idea, classify, tier, promote, gate, outcome route, production. Reuse the mermaid flowchart in 00 section 8.
3. The gate. The sixteen checklist areas, scaled to the tier, with the review point shown as the sign-off. Reuse the table in 00 section 5.1 and the checklist in WS3 section 3.
4. The ownership lifecycle. Creator, sponsor, business and technical owner, succession, and retirement, with the handover points marked. Reuse the table in 00 section 6 and WS3 section 4.
5. The outcome routes. The five routes a validated prototype can take, including stop and retain learning. Reuse the table in 00 section 7 and the identical lists in WS1 and WS3.

## Open questions for stakeholders and their owners

(Proposed) The following questions are open, each with the owner recommended in the gaps register or the workstream documents.

| Open question | Owner |
|---|---|
| Where is Amber with review reviewed, and by whom? | Digital/IT with Security (gap G4) |
| What is the retention and deletion rule for Tier 0 and Tier 1 sandbox work? | Digital/IT with DPO guidance (gap G2) |
| Who checks that promotion evidence is truthful rather than merely present? | Promotion review point (gap G3) |
| Which accessibility standard applies, for example WCAG 2.2 AA? | Digital/IT (gap G7) |
| Is there an incident reporting path for development-time leaks? | Security with Digital/IT (gap G8) |
| Who owns model provenance verification? | Security (gap G6) |
| Does the vendor tooling deliver the tool-call logging the framework requires? | Digital/IT with Security (gap G5) |
| Who reviews owned applications annually after promotion? | Digital/IT (gap G9) |
| What is the IP position on AI-generated student work? | Legal (gap G10) |
| What is the procurement fast path for the vendor outcome route? | Procurement (gap G12) |
| What is the budget line and spend-alert threshold for the sandbox? | Digital/IT with Finance (gap G13) |
| Are GitHub Education entitlements still available each term? | Digital/IT (gap G14) |
| How do visiting faculty, PhD researchers and short-stay users fit the institutional-account rule? | HR with Digital/IT |
| Which telemetry is acceptable on Approved tools? | DPO with WS2 (dependency DEP11) |
| What does procurement need beyond data processing agreements, for example indemnity and audit rights? | Legal and Procurement |
| Does an existing application onboarding or decommissioning policy exist to build on? | Digital/IT |
| Who acts as business owner for existing INSEAD-built tools today, and does that model work? | Digital/IT |
| What is Digital/IT's current capacity to own additional applications? | Digital/IT (gap G11) |

## Communication risks

(Proposed) The following are the ways the framework could be misread, each with the sentence the white paper should use to prevent the misreading.

| Misreading | Preventing sentence |
|---|---|
| That this is a ban on AI tools | (Proposed) The framework bans no tool category; it routes each tool to the data it may safely touch and publishes an approved alternative for every restricted use. |
| That this is surveillance of staff | (Proposed) The controls attach to data, integrations and institutional projects, not to individuals; personal experiments on personal accounts sit outside the framework's logging, and audit records are reviewed to spot shadow-AI risk, not to watch people. |
| That this promises support that does not exist | (Proposed) The framework is explicit that a prototype becomes an application only when a named technical owner and funding exist, and where they do not exist the defined outcome is to retain the learning and stop. |
| That Red data can never be worked with at all | (Existing requirement) Red data never enters prototyping, but it can be handled in production through the full gate with DPO and Cybersecurity involvement, which is a route, not a prohibition. |
| That stopping a prototype is a failure | (Finding) Stop and retain learning are named, legitimate outcomes, and most prototypes should end in one of them. |
| That this duplicates existing policy and adds nothing | (Proposed) The framework restates GDPR and INSEAD data and application security policy and adds only the operating layer those policies do not cover: the sandbox, the register, the tier derivation and the gate. |
| That this is only for developers | (Finding) The framework is written for a student or staff member who has never built software, because that is the person now building software. |

## Quotable statements

(Proposed) The following are short statements the white paper can quote, each attributed to the position it summarises. None is attributed to a person.

- "We are not governing whether people use AI to build applications; we are governing how a prototype becomes an institutional product." The working principle of the framework.
- "Risk is derived, not declared: the data and the integration place a project in its tier." The two-scale model.
- "Red data never enters prototyping." The data rule.
- "A checklist completed is not a checklist passed; a named person signs." The gate.
- "Ownership never rests on the student alone." The ownership model.
- "Most prototypes should end in stop or retain learning, and that is a good result." The outcomes.
- "AI-generated code needs the same scrutiny as hand-written code, arguably more." The production-readiness position.
