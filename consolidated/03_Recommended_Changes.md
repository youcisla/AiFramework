# Recommended Changes

> Framework-wide documents: [00 - Consolidated Framework](00_Consolidated_Framework.md) | [01 - Gaps, Contradictions and Dependencies](01_Gaps_Contradictions_Dependencies.md) | [02 - Scenario Walkthroughs](02_Scenario_Walkthroughs.md) | [03 - Recommended Changes](03_Recommended_Changes.md) | [04 - Minimum Operating Model](04_Minimum_Operating_Model.md) | [05 - White Paper Inputs](05_White_Paper_Inputs.md)
>
> Workstream sources: [WS1 tools and sandbox](../work_stream_1/01_Tool_Assessment_Matrix.md) | [WS2 data, privacy, cybersecurity, AI risk](../work_stream_2/WS2_Data_Privacy_Cybersecurity_AI_Risk_v0.3.md) | [WS3 prototype to production](../work_stream_3/WS3_Prototype_to_Production_Checkpoint.md)
>
> Version 0.1 (draft) | 3 September 2026

## 1. How to read this document

Every change below is traced to the finding, contradiction, gap or decision that produced it, and labelled as one of: Existing requirement (the change restates or applies something INSEAD already requires), Proposed (a design choice the framework adds), Decision required (leadership must choose), or Implementation work (something must be built, staffed or published). Reference codes point to [01 - Gaps, Contradictions and Dependencies](01_Gaps_Contradictions_Dependencies.md) for C, G and D codes and to [02 - Scenario Walkthroughs](02_Scenario_Walkthroughs.md) for F codes.

## 2. Classification and tiers

| ID | Change | Addresses | Type | Owner | Effort |
|---|---|---|---|---|---|
| R1 | Add one sentence to the framework and the Acceptable Use Policy that tells a person when they have left Tier 0: "When anyone other than you relies on it, register it and name yourself as the contact." | F1 | Proposed | WS1 with Digital/IT | Hours |
| R2 | Publish the derived tier rule as the single method for classifying a project: classify the data band and the integration band, take the higher, and record both. | Consolidation of WS1 and WS2 | Proposed | WS2 with WS1 | Days |
| R3 | Add a reassessment trigger: any change that adds autonomous action, a new integration, or a new data band forces reclassification before the change is deployed, with a simple change note. | F9, C3 | Proposed | WS2 | Days |
| R4 | Confirm the DPO notification threshold: notify the DPO when personal data is stored, and record an Amber note with Digital/IT for non-personal internal data. | C7, F12 | Decision required (D4) | DPO with framework leads | Days |
| R5 | Resolve the Amber prototyping contradiction by adopting Option b from the register: Amber is permitted at Tier 1 in Security-approved tools with a data-use note, and never in Experimental tools. | C1, F4 | Decision required (D1) | Framework leads with Security and the DPO | Days |

## 3. Sandbox and tools

| ID | Change | Addresses | Type | Owner | Effort |
|---|---|---|---|---|---|
| R6 | Add two columns to the tool register: model provenance (which models may be called, licence, pinned version) and action capability (what the tool can do, including whether it can write to repositories or systems). | G6, C6, WS2 supply chain controls | Implementation work | Security with Digital/IT | Weeks |
| R7 | Require agentic tools to work on branches with protection rules, to hold no production credentials, and to have human approval before any push to a protected branch or deployment. | C8 | Proposed | Digital/IT | Days |
| R8 | Publish a short incident route for development-time leaks: where to report a secret in a repository, institutional data pasted into an unapproved tool, or exposure through an AI tool, with a contact and a target response time. | G8 | Implementation work | Security with Digital/IT | Days |
| R9 | Provide a plain-language, student-facing view of the register that says why each tool is Approved, Experimental or Restricted in one line. | F3 | Implementation work | Digital/IT with Communications | Days |

## 4. Data, privacy, security and AI controls

| ID | Change | Addresses | Type | Owner | Effort |
|---|---|---|---|---|---|
| R10 | Offer a snapshot pattern for read access during prototyping: a classified extract or synthetic equivalent with a defined refresh, so the sandbox does not need live production credentials. | F6, G4 | Implementation work | Digital/IT with WS2 | Weeks |
| R11 | Define the data-use note review route and service level, for example two working days, with a named reviewer in Digital/IT and Security consultation for Amber integrations. | F5, G4 | Implementation work | Digital/IT with Security | Days |
| R12 | Move prompt-injection defences to the platform: text normalisation of imported files, stripping of hidden-text characters, and tool-call logging provided by the approved platform rather than implemented per project. | F11 | Implementation work | Digital/IT with Security | Weeks to months |
| R13 | Assign an owner for deletion of derived data, with spot checks: prompts, tool-call logs, caches, embeddings, vector stores, exports and backups. Record the retention period and deletion method in the application documentation. | F10, G2 | Implementation work | WS2 with the DPO and Digital/IT | Weeks |
| R14 | Extend retention and deletion rules to Tier 0 and Tier 1 sandbox work, including repositories and prototype data, so that abandoned experiments do not accumulate indefinitely. | G2 | Proposed | Digital/IT with the DPO | Days |
| R15 | Test what audit logging the approved tools actually provide before promising the granularity WS2 requires, and record the result in the register. | G5 | Implementation work | Digital/IT with Security | Days |

## 5. Promotion and the gate

| ID | Change | Addresses | Type | Owner | Effort |
|---|---|---|---|---|---|
| R16 | Define a limited pilot state between the sandbox and production: at most a stated number of real users, data band no higher than Amber, a named owner, a time limit of 90 days, and a review at the end that either promotes, extends once, or stops. | F7, G15, D5 | Decision required (D5) | WS1 and WS3 with Digital/IT | Weeks |
| R17 | Name the accessibility standard for the gate, for example WCAG 2.2 AA for web applications, and define when a gate item is genuinely not applicable so "not applicable" stops being a judgement call. | F8, G7 | Decision required | Digital/IT | Days |
| R18 | Add an evidence verification step to the gate: a named person checks that the submitted evidence is truthful rather than only present, and records the check. | G3 | Proposed | Promotion review point | Days |
| R19 | Publish the evidence pack as a single checklist with the artefact named for each item, so a project owner can self-serve before requesting promotion. | 00 section 5.3 | Implementation work | WS3 with Digital/IT | Days |

## 6. Ownership and lifecycle

| ID | Change | Addresses | Type | Owner | Effort |
|---|---|---|---|---|---|
| R20 | Make ownership transfer a signed commitment by two named individuals, the business owner and the technical owner, as a condition of promotion for any student-built application. | F13, G10 | Proposed | WS3 with Digital/IT | Days |
| R21 | Define the orphan rule: after 90 days with no owner action and no activity, an application is downgraded to Tier 0 and its integrations are disabled; after 180 days it is retired with data disposal, subject to notice. | G1, D3 | Decision required (D3) | Digital/IT with the governance working group | Weeks |
| R22 | Add an annual lifecycle review for owned applications, covering data bands, integrations, cost, support and retirement criteria, separate from the quarterly tool register review. | G9 | Implementation work | Digital/IT | Weeks |
| R23 | Offer students a positive route and recognition: publish the five outcome routes in student-facing language, and credit the student when the idea proceeds even if the code is rebuilt or the work is retained for the roadmap. | F14, F16 | Implementation work | WS3 with Communications | Days |
| R24 | Confirm review capacity and the named technical owners for adopted applications, or state plainly that adoption depends on available capacity. | G11, D7 | Decision required (D7) | Digital/IT with leadership | Weeks |

## 7. Process, capacity and funding

| ID | Change | Addresses | Type | Owner | Effort |
|---|---|---|---|---|---|
| R25 | Confirm Azure with EU regions as the default hosting and model platform for promoted applications, subject to Digital/IT and Procurement sign-off. | D6 | Decision required (D6) | Digital/IT with Procurement | Weeks |
| R26 | Fund a minimal pilot with the operating model in [04 - Minimum Operating Model](04_Minimum_Operating_Model.md), including the review capacity it requires. | D7, G13 | Decision required (D7) | Leadership with Digital/IT and Finance | Weeks |
| R27 | Define a light procurement route for the vendor outcome route, so that buying or configuring an existing product is not slower than rebuilding. | G12 | Implementation work | Procurement | Weeks |
| R28 | Re-verify GitHub Education entitlements each term and hold a small number of sponsored seats as a fallback for students whose work reaches Amber data. | G14 | Implementation work | Digital/IT | Days per term |

## 8. Ready-to-use wording for the four clauses that matter most

These are drafts for the framework document and the Acceptable Use Policy. They are written to be read by a student or a staff member, not by a governance specialist.

Tier 0 to Tier 1 trigger (R1):

"While you are the only person using it, it is a personal experiment: keep it on public or synthetic data and use your own account. As soon as anyone else depends on it, or it touches an INSEAD system or INSEAD data, register it, name yourself as the contact, and move it into the sandbox repositories."

Limited pilot state (R16):

"A prototype may run for up to 90 days with a limited group of real users before the full production gate, provided that it holds no Red data, names an owner, writes nothing to institutional systems without confirmation, and is reviewed at the end of the period. The review either promotes it, extends it once for a further 90 days with a stated reason, or stops it."

Reassessment trigger (R3):

"Any change that lets the application take an action rather than produce information, connects it to a new INSEAD system, or introduces a new class of data requires reclassification before the change goes live. Record the new bands and, if the tier changes, follow the requirements of the higher tier from that point."

Orphan rule (R21):

"If an application has no owner response and no activity for 90 days, it is downgraded, its integrations are disabled and its data is frozen. If the position is unchanged at 180 days, it is retired and its data is disposed of under the retention rules. Notice is sent to the last known owner and the originating department before each step."

## 9. What we deliberately did not change

Three things were considered and left alone. The five outcome routes stay as WS1 and WS3 wrote them, because both workstreams produced identical lists and they already cover every scenario. The tier names stay as Tier 0 to 3, because the brief and both later workstreams use them. The control set stays as WS2 wrote it, because it maps to OWASP vocabulary that the white paper can cite and because rewriting it would break the traceability between the framework and the standards it draws on.
