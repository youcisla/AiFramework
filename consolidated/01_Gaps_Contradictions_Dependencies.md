# Gaps, Contradictions and Dependencies

> Framework-wide documents: [00 - Consolidated Framework](00_Consolidated_Framework.md) | [01 - Gaps, Contradictions and Dependencies](01_Gaps_Contradictions_Dependencies.md) | [02 - Scenario Walkthroughs](02_Scenario_Walkthroughs.md) | [03 - Recommended Changes](03_Recommended_Changes.md) | [04 - Minimum Operating Model](04_Minimum_Operating_Model.md) | [05 - White Paper Inputs](05_White_Paper_Inputs.md) | [06 - Research Refresh](06_Research_Refresh.md)
>
> Workstream sources: [WS1 tools and sandbox](../work_stream_1/01_Tool_Assessment_Matrix.md) | [WS2 data, privacy, cybersecurity, AI risk](../work_stream_2/WS2_Data_Privacy_Cybersecurity_AI_Risk_v0.3.md) | [WS3 prototype to production](../work_stream_3/WS3_Prototype_to_Production_Checkpoint.md)
>
> Version 0.1 (draft) | 3 September 2026

## 1. How to read this register

Three kinds of item are recorded here. A contradiction is a place where two workstream drafts say different things and someone must choose. A gap is something the framework needs that no workstream owns. A dependency is something one workstream needs from another or from an INSEAD function. Each item names a recommended resolution, an owner and the impact of leaving it open. Nothing here is a criticism of a draft; contradictions are what a consolidation exercise is supposed to surface.

## 2. Contradictions

| ID | Contradiction | Where it appears | Recommended resolution | Impact if unresolved |
|---|---|---|---|---|
| C1 | WS2 says real institutional data should not be used during prototyping. WS1 allows Amber data at Tier 1 in Approved tools with a data-use note and review | WS2 question 2; WS1 Document 02 sections 3.2 and 3.3 | Allow Amber for Tier 1 only, only in Security-approved tools, with a data-use note and logging. Keep Red out of prototyping entirely. The literal WS2 reading would push the same work into unapproved tools, which is the shadow-AI outcome the framework exists to prevent | The most common internal use case has no legal path inside the framework, or it happens outside it |
| C2 | WS1 gives Digital/IT and the AI governance working group the tool verdict. WS2 requires the Security team to approve any external tool that touches internal data | WS1 Document 02 P4; WS2 question 1 and KB0010486 | One register with two sign-offs: Digital/IT owns the operational verdict and the quarterly review, Security approves the external transfer of institutional data | Ambiguity about who may say yes delays every new tool and weakens the audit story |
| C3 | WS2 defines "Red integration" as automated write or delete and puts any Red at Tier 2, with Tier 3 where the application also acts autonomously. WS3 describes Tier 3 as high-impact needing additional review | WS2 section 4.3; WS3 section 4.3 | Adopt WS2's trigger (Red data or automated write) plus WS3's extra review layer for Tier 3. The consolidated framework already states this | Tier 3 becomes a matter of opinion, so the strongest controls land on whoever argues hardest |
| C4 | WS1 requires a named owner for every sandbox project, including Tier 0. WS3 requires accountable owners only from Tier 2, with a sponsor at Tier 1 | WS1 Document 02 P7; WS3 section 4.3 | Separate two roles: every project has a contact (the creator), and accountable owners are required at Tier 2. At Tier 1 the sponsor carries the accountability | Students are asked to accept institutional accountability they cannot carry, or projects run unregistered |
| C5 | WS2 requires logging of every AI tool call, with arguments and outcome. WS1 relies on vendor audit logs, which exist only on enterprise tiers | WS2 section 6.4; WS1 matrix auditability column | Keep the requirement, and restrict its scope: tool-call logging is required for Amber and Red work, which already forces Approved enterprise tools. For Green-only Tier 0 and 1 work, vendor logs plus project registration are the record | Either an unachievable requirement for student work or an invisible gap where institutional data is processed |
| C6 | WS2 requires that models come from trusted sources with verified provenance and pinned versions. WS1 allows bring-your-own-key tools and consumer model access on personal accounts | WS2 section 5.4; WS1 matrix, open-source CLI row | BYOK tools are permitted only for Green data and only against the institutional gateway for any institutional use. Personal endpoints stay outside institutional work | Unverified models process institutional data, which is precisely the supply-chain risk WS2 names |
| C7 | WS2 says the DPO must be advised whenever an application stores employee, student or institutional information, which reads as covering Amber records. WS1 routes DPO and Cybersecurity involvement to Red only | WS2 question 4; WS1 Document 02 section 3.3 | Notify the DPO whenever personal data is stored, which is Red. For Amber records, record the data-use note and notify Digital/IT. Ask the DPO to confirm the threshold | Either the DPO is copied into every internal prototype, or personal data passes without notice |
| C8 | WS2 requires human validation before any irreversible action and narrow, purpose-specific tools. WS1's Approved list includes agentic coding agents that can push code and deploy on their own | WS2 section 5.3; WS1 tool register | Apply the rule inside the development environment too: agentic tools may not push to protected branches or hold production credentials without human approval, and their tool scope is limited to the sandbox | The framework's own development loop breaks the rule the framework imposes on applications |

## 3. Gaps

| ID | Gap | Why it matters | Recommended owner | Next step |
|---|---|---|---|---|
| G1 | No process decides that an application is abandoned when no owner responds and there is no activity | Abandoned applications keep data and integrations alive; WS3 names this as an open gap with no owner | Digital/IT with the AI governance working group | Define an inactivity threshold and a default outcome (downgrade, then retire with data disposal) |
| G2 | Nothing covers retention and deletion for Tier 0 and Tier 1 work in the sandbox, while WS2 requires automated deletion including derived data at Tier 2 and above | Sandbox repositories, prototypes and their data accumulate with nobody accountable for disposal | Digital/IT with DPO guidance | Extend the retention rule to sandbox projects and their repositories |
| G3 | No one checks that promotion evidence is truthful rather than merely present | The gate becomes a form-filling exercise, which WS3 explicitly warns against | Promotion review point | Add a verification step with a named reviewer to the evidence pack |
| G4 | The review owner for Amber data-use notes is proposed as Digital/IT, but WS2 expects Security and DPO involvement | Amber work is where most internal friction will appear, so its review path must be fast and legitimate | Digital/IT with Security | Agree the route and a service level, for example two working days |
| G5 | Tool-call logging at the granularity WS2 requires may not exist in the vendor products INSEAD buys | The audit trail the framework promises may not be deliverable | Digital/IT with Security | Test logging on the pilot tools and record what is actually available |
| G6 | Model provenance verification has no owner, capability or process, yet WS2 requires it at every tier | Supply-chain risk stays unmanaged while the framework claims to control it | Security | Define a lightweight provenance check for the register: source, licence, version pinning, behaviour test |
| G7 | The accessibility baseline is a gate item but no standard is named | Prototypes reach the gate and stall, or accessibility is quietly dropped | Digital/IT | Name the standard, for example WCAG 2.2 AA for INSEAD web applications |
| G8 | No incident path exists for development-time leaks, despite WS2 requiring reporting to Cybersecurity | A leak found in a prompt or a repository has no procedure, so it is likely to be handled informally | Security with Digital/IT | Publish a short reporting route with a contact and a service level |
| G9 | Only tools are reviewed periodically; owned applications are not | Applications drift out of compliance after promotion | Digital/IT | Add an annual lifecycle review to the ownership model |
| G10 | IP ownership for student-built work is unresolved | It determines how firmly the ownership transfer in Document 00 can be stated | Legal | Obtain a position, distinguishing coursework from institutional work |
| G11 | Capacity for gate reviews and technical ownership is unknown | The gate and the ownership model both assume named people with time | Digital/IT | Estimate review load per year and confirm capacity |
| G12 | The vendor outcome route has no procurement fast path | Teams default to rebuilding instead of buying, which is usually the more expensive route | Procurement | Define a light route for configuration of existing licensed products |
| G13 | Sandbox hosting, subscriptions and spend alerts have no cost owner | The sandbox cannot be stood up without it, and usage-based billing needs monitoring | Digital/IT with Finance | Confirm the budget line and the alert thresholds |
| G14 | GitHub Education entitlements are changing, which affects the student path | The free student route is part of the current design for Tier 0 and requires re-checking each term | Digital/IT | Re-verify entitlements each term and hold sponsored seats as a fallback |
| G15 | There is no defined state between the sandbox and production for a limited pilot with real users | Scenarios B and D both stalled here: real users arrive before the full gate is complete | WS1 and WS3 jointly | Define a controlled pilot state with an owner, a data limit, a time limit and a review at the end |

## 4. Dependencies

| ID | Dependency | Needed from | Needed by | Status |
|---|---|---|---|---|
| DEP1 | Final Green, Amber and Red classification, and confirmation of the DPO threshold (C7) | WS2, Arthur, with the DPO | Before Amber guidance ships | Draft received (v0.3); confirmation pending |
| DEP2 | The per-tool data decision table, turning the register into rules users can apply | WS2 | Before the AUP ships | Not started |
| DEP3 | Production-readiness gate sign-off authority and review load | WS3, Salah, with Digital/IT | Before the first promotion | Proposed in WS3; approvers unnamed |
| DEP4 | Ownership and succession model, including orphan handling (G1) | WS3 with Digital/IT and HR | Before the first student adoption case | Partly proposed |
| DEP5 | IP position for student work (G10) | Legal | Before the first adoption case | Not started |
| DEP6 | Approved hosting and SSO standard, including the Azure path | Digital/IT | Before the first promotion build | Provisional yes in WS3; formal confirmation pending |
| DEP7 | Identity integration (Entra ID, SCIM) and sandbox repository setup | Digital/IT | Before the sandbox stand-up | Not started |
| DEP8 | Tool approval workflow and Security sign-off route (C2) | Security with Digital/IT | Before the register is published | Not started |
| DEP9 | Model provenance process (G6) | Security | Before the register is published | Not started |
| DEP10 | Incident reporting path for development-time leaks (G8) | Security | Before the sandbox opens to users | Not started |
| DEP11 | Telemetry acceptability position on Approved tools | DPO with WS2 | Before tool configuration is finalised | Not started |
| DEP12 | Procurement fast path for the vendor outcome route (G12) | Procurement | Before the first vendor route decision | Not started |

## 5. Decisions required

| ID | Decision | Options | Recommendation | Decision owner |
|---|---|---|---|---|
| D1 | May Amber data be used during prototyping? (C1) | (a) No, Green only until production. (b) Yes, in Security-approved tools, Tier 1, with a data-use note | Option b. It matches the brief's Tier 1 definition, keeps the work inside the framework, and pairs with logging and a review that option a cannot offer | Framework leads with Security and the DPO |
| D2 | Who approves tools and who signs off promotions? (C2) | (a) One body does both. (b) Digital/IT operates the register and Security approves external data transfer; a small review point signs promotions | Option b. It matches existing INSEAD policy and keeps the register fast | Digital/IT, Security, framework leads |
| D3 | What happens to an application with no owner and no activity? (G1) | (a) Leave it running. (b) Downgrade to Tier 0 after a set period, then retire with data disposal | Option b, with a 90-day inactivity trigger and a 180-day retirement, subject to notice | Digital/IT with the governance working group |
| D4 | When is the DPO notified? (C7) | (a) Whenever institutional information is stored. (b) When personal data is stored, with an Amber note to Digital/IT | Option b, pending DPO confirmation | DPO with the framework leads |
| D5 | Is there a limited pilot state with real users before the full gate? (G15) | (a) No, the gate is the only route. (b) A defined pilot state with limits and a review | Option b, since scenarios B and D both need it and the alternative is informal use | WS1 and WS3 leads with Digital/IT |
| D6 | Is Azure the approved hosting and model default? (DEP6) | (a) Leave open. (b) Confirm Azure with EU regions as the default path | Option b, as a joint WS1 and WS3 recommendation | Digital/IT with Procurement |
| D7 | Is there funding for a pilot, and for review capacity? (G11, G13) | (a) No pilot. (b) Fund a minimal pilot and confirm review capacity | Option b, using the operating model in [04 - Minimum Operating Model](04_Minimum_Operating_Model.md) | Leadership with Digital/IT and Finance |
| D8 | What is the IP position on AI-generated student work? (G10) | (a) Student retains, institution licenses. (b) Institution owns when institutional resources are used | Legal to advise; the framework needs an answer before the first adoption | Legal |

## 6. What is not a gap

Two things that look like gaps are already covered and should not be re-litigated: the outcome routes (WS1 and WS3 list the same five, and they agree) and the sandbox-to-gate handover (WS3 confirmed alignment with WS1's promotion wording, and its answers to the three questions in WS1 Document 07 are reflected in Document 00 of this folder).
