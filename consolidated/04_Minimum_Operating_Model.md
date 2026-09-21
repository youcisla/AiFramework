# Minimum Operating Model for a Pilot

> Framework-wide documents: [00 - Consolidated Framework](00_Consolidated_Framework.md) | [01 - Gaps, Contradictions and Dependencies](01_Gaps_Contradictions_Dependencies.md) | [02 - Scenario Walkthroughs](02_Scenario_Walkthroughs.md) | [03 - Recommended Changes](03_Recommended_Changes.md) | [04 - Minimum Operating Model](04_Minimum_Operating_Model.md) | [05 - White Paper Inputs](05_White_Paper_Inputs.md)
>
> Workstream sources: [WS1 tools and sandbox](../work_stream_1/01_Tool_Assessment_Matrix.md) | [WS2 data, privacy, cybersecurity, AI risk](../work_stream_2/WS2_Data_Privacy_Cybersecurity_AI_Risk_v0.3.md) | [WS3 prototype to production](../work_stream_3/WS3_Prototype_to_Production_Checkpoint.md)

Every substantive statement below carries one of five labels, exactly as the consolidated framework uses them: Existing requirement, Proposed, Finding, Decision required, Implementation work. Headings, table headers and the navigation block are not labelled.

## 1. Purpose and scope of the pilot

The pilot is a controlled, time-boxed test of the consolidated framework run end to end on a small number of real projects, before the framework is applied at scale. (Proposed)

The pilot exists to prove five specific things that are currently only asserted on paper:

| What the pilot must prove | Why it is in doubt today | Label |
|---|---|---|
| The derived tier works | The framework says a project's tier is set by the higher of its data band and its integration band, not chosen by the builder (change R2). Scenario testing found this removed an argument that used to be a matter of opinion, but it has never been run live | Proposed; Finding |
| The data-use note review is fast enough | No reviewer or service level is defined for Amber work, so the most common internal use case has no predictable turnaround (gap G4, change R11) | Finding |
| The gate is proportionate | Tier 1 is meant to be light and Tier 2 full, but nobody has measured whether the light gate catches what it must or whether the full gate stalls a small project | Proposed; Finding |
| Ownership transfer is realistic | The framework requires named business and technical owners before Tier 2, but the scenario walkthroughs show this currently rests on a document rather than a signed commitment (finding F13, change R20) | Finding |
| The limited pilot state holds | Real users have arrived before the full gate in every relevant scenario, and no governed state exists between the sandbox and production (gap G15, change R16) | Finding |

The pilot is not a production launch. It is an instrumented test whose outputs are the success measures in section 7 and the go/no-go recommendation in section 8. (Proposed)

## 2. Participants and roles

Each role is listed with what it decides and what it does. The role set is Proposed. Where an existing INSEAD function already carries an obligation, that obligation is Existing requirement and is marked as such.

| Role | What they decide | What they do | Label |
|---|---|---|---|
| Pilot lead | Day to day go/no-go within the pilot scope; escalations to leadership; whether a project leaves the pilot early | Runs the weekly operational check, owns the pilot registry during the pilot, maintains the pilot log, convenes the monthly review | Proposed |
| WS1 lead (tools and sandbox) | Final wording of the tool register categories used in the pilot | Supplies the register, the sandbox principles and the onboarding module; flags register drift | Proposed |
| WS2 lead (data, privacy, cybersecurity, AI risk) | Final wording of the classification and control rules used in the pilot | Supplies the data and integration band definitions and the control matrix; advises on Amber and Red boundaries | Proposed |
| WS3 lead (prototype to production) | Final wording of the gate checklist and ownership rules used in the pilot | Supplies the gate, the evidence pack list and the outcome route definitions | Proposed |
| Digital/IT operator | Tool verdicts in the register and the quarterly review; the hosting and SSO standard; sandbox infrastructure placement | Stands up the sandbox GitHub organisation, cloud subscription, secrets manager and registry; holds the technical owner role for adopted pilot projects | Proposed; the hosting and SSO standard is Decision required (D6) |
| Security reviewer | Whether an external tool may process institutional data | Approves external data transfer, reviews Amber interfaces, receives development-time leak reports | Existing requirement (KB0010486); the split of tool sign-off is Proposed (C2) |
| DPO contact | Whether and when the DPO is notified | Advises where personal data is stored; confirms the notification threshold | Existing requirement for personal data; the threshold is Decision required (D4) |
| Business owners (pilot projects) | Purpose, funding and continued existence of their application | Accept accountability for the application's purpose and funding after promotion | Proposed; the naming process is Decision required |
| Technical owners (pilot projects) | Whether the code is fit to run and maintain | Accept accountability for running, maintaining and retiring the application; sign the gate | Proposed; the naming process is Decision required |
| Student participants | What they build inside the sandbox rules | Build against the permitted data and tools, accept the AUP, register their project, support handover if adopted | Proposed |

Two roles carry accountabilities that nobody can currently be confirmed to hold. The promotion review point is proposed by WS3 as the incoming technical owner, a Digital/IT representative and a named leadership delegate (the WS3 draft names Andreas or a delegate; confirm who holds this role). The reviewer of Amber data-use notes is proposed as Digital/IT. Both are Decision required. (Proposed; Finding)

## 3. Scope limits

The pilot is deliberately small. The numbers below are Proposed starting points and are Decision required for leadership to confirm; they are not INSEAD figures.

| Dimension | In scope | Out of scope | Label |
|---|---|---|---|
| Number of projects | 6 to 10 projects drawn from the four scenario types (A, B, C, D) so each path is exercised at least once | A broad open call; the pilot is a controlled cohort | Proposed; Decision required on the exact number |
| Tiers | Tier 0 and Tier 1 in the sandbox; up to two attempted Tier 2 promotions to test the gate | Tier 3, which is high impact and does not belong in a pilot | Proposed |
| Tool categories | Approved and Experimental tools from the register | Restricted tools, unregistered tools, and autonomous agents beyond the approved scopes | Proposed; the Restricted default for autonomous agents is Proposed |
| Data bands | Green by default; Amber only if decision D1 permits, in Approved tools, with a data-use note | Red data, which never enters prototyping | Existing requirement for Red; Decision required for Amber (D1) |
| Integrations | Green (no access) and Amber (read-only GET access with least privilege) | Red integration (automated write or delete), which is not permitted for prototypes | Existing requirement for Red integration; Proposed for Amber |
| Adoption outcomes | Adopt, rebuild, vendor, retain learning and stop may all be exercised | A full procurement exercise; the vendor route is limited to gap analysis during the pilot | Proposed |

Explicitly out of scope for the pilot: production deployment at institutional scale, Tier 3 applications, Red data or Red integration, autonomous write or delete capability, retirement of any pre-existing application, and any tool not on the pilot register. (Proposed)

## 4. The workflow from intake to outcome

The pilot runs the consolidated framework stages from idea to outcome. Each step lists the artefact it produces and the target turnaround time the pilot will test. The stages are from the consolidated framework; the turnaround targets are Proposed starting points to be tested, not commitments.

| Stage | Action | Artefact produced | Target turnaround to test | Label |
|---|---|---|---|---|
| Idea | A student, faculty or staff member proposes an idea and reads the register | None; the registry entry comes at registration | Onboarding to first build within one hour | Proposed |
| Classify | Record the data band and the integration band; the higher band sets the effective tier | Classification record (data band, integration band, effective tier) | Same day as registration | Proposed; the derived tier is a Finding that scenario testing supports |
| Build safely | Work proceeds in the sandbox under the data and tool rules | Sandbox repository, AUP acknowledgement, tool choice | Continuous | Proposed |
| Register | Register the project once it is a Tier 1 prototype rather than a personal experiment | Registry entry (contact, tool, data band, tier, repository link) | Two minutes | Proposed |
| Data-use note | For any Amber data, file a short note and get it reviewed | Data-use note with reviewer sign-off | Two working days | Proposed; the reviewer is gap G4 and the service level is to be tested |
| Test/review | The pilot checks the work against the light or full gate depending on tier | Gate checklist (light for Tier 1, full for Tier 2) | To be measured during the pilot | Proposed |
| Promote | A promotion request assembles the evidence and reaches the review point | Evidence pack (filled checklist, bands, test evidence, security review, accessibility, secrets and logging, documentation, owners, cost, retirement plan) | Proposed starting target of five working days from a complete evidence pack to a decision, to be tested | Proposed; the review point is Decision required |
| Own/monitor/retire | Named owners accept accountability; support and retirement are set at approval | Ownership record signed by the business and technical owners | At promotion, not after | Proposed; the transfer is a Finding that currently rests on a document |

One artefact has no owner today: nobody checks that the evidence pack is truthful rather than merely present (gap G3, change R18). The pilot will add a verification step with a named reviewer and measure it. (Implementation work)

## 5. Decision rights

Who may say yes and who may say no, and where unresolved decisions escalate. (Proposed)

| Decision | Who says yes | Who says no | Who escalates | Label |
|---|---|---|---|---|
| A tool enters the Approved or Experimental register category | Digital/IT operates the verdict; the AI governance working group approves | Security for any external tool that would process institutional data | Digital/IT escalates split verdicts to leadership | Proposed; the Security sign-off is Existing requirement (C2) |
| Amber data is used in a Tier 1 project | Digital/IT as the data-use note reviewer | Security or the DPO where the note crosses into personal data | The pilot lead escalates disputed notes to the monthly review | Proposed; Decision required (D1, D4) |
| A prototype is promoted out of the sandbox | The promotion review point (technical owner, Digital/IT representative, leadership delegate) | Any reviewer who withholds sign-off on an open finding | The pilot lead escalates a stalled promotion to leadership | Proposed; the named approvers are Decision required (D2) |
| A project leaves the pilot early or stops | The pilot lead | The business owner or technical owner | Either party escalates to the monthly review | Proposed |

Decisions from the gaps register that must be settled before the pilot can start:

| Decision | Why it blocks the pilot | Can it wait | Label |
|---|---|---|---|
| D1: may Amber data be used during prototyping | Scenario B, the most common internal use case, has no path without it, so it happens outside the framework | No; settle before the pilot opens | Decision required |
| D2: who approves tools and who signs off promotions | The register and the gate both need named approvers | No | Decision required |
| D4: when is the DPO notified | Determines whether Amber and Red cases are routine or escalate | Settle before the first Amber or Red case | Decision required |
| D5: is there a limited pilot state with real users | This pilot is the limited state, and it must be authorised before it runs | No | Decision required |
| D7: is there funding for a pilot and for review capacity | The pilot cannot run without it | No | Decision required |

Decisions that can be settled during the pilot, before the first case that needs them: D3 (what happens to an ownerless application) before the first student adoption, D6 (whether Azure is the default hosting and model platform) before the first promotion build, and D8 (the IP position on AI-generated student work) before the first adoption. (Decision required)

## 6. Cadence

The pilot runs two reviews: a weekly operational check and a monthly review with leadership. (Proposed)

The weekly operational check (Proposed) answers:

- How many new registrations came in this week, and are any unregistered Tier 1 projects visible
- What is the turnaround on any Amber data-use note, and did any exceed the two working day target
- Are there any tool issues, near misses, secret leaks or development-time leaks to report
- Is any project approaching a tier boundary or a promotion, and who is its owner
- What is blocked, and who owns the unblocking

The monthly leadership review (Proposed) answers:

- Is the derived tier holding up, or are projects arguing with their classification
- Is the data-use note review fast enough, and where is the friction
- Is the gate proportionate, or is it stalling small projects or waving through large ones
- Are ownership transfers completing at promotion, or drifting after
- What decisions are needed from leadership this month
- What is the actual cost and effort against the section 9 plan, and is there shadow-AI drift outside the pilot

Each review records a named owner and a due date for every action; actions are tracked in the pilot log. (Proposed)

## 7. Success measures

The pilot is judged a success only if all three groups of measures pass. The thresholds are Proposed and are Decision required for leadership to confirm.

Friction and time (Proposed):

- The median data-use note turnaround meets the service level, proposed at two working days
- The median registry entry is two minutes, and onboarding to first build is within one hour
- No Amber project waits without a clear reviewer and a date

Control (Proposed):

- Zero Red data enters the sandbox during the pilot
- Zero development-time leaks go unreported; every reported leak reaches Security through the defined path (change R8)
- Every Amber project uses an Approved tool and has a data-use note on file
- 100 percent of Tier 1 projects are registered

Ownership (Proposed):

- Every promoted project has a named business owner and a named technical owner before go-live
- Ownership transfer completes at promotion, not as a follow-up task
- No project reaches promotion without a signed ownership record

The specific numeric targets (two working days, two minutes, one hour) are to be tested and revised by the pilot, not imposed as fixed commitments. (Proposed; Decision required)

## 8. Exit criteria and what happens to pilot projects afterwards

The pilot exits when its 90 days complete and the section 7 measures have been reported against, producing a go/no-go recommendation for scaling the framework. (Proposed)

Every pilot project then takes one of the five outcome routes, which WS1 and WS3 list identically:

| Route | What happens to the project | What happens to the data and code | Label |
|---|---|---|---|
| Adopt or secure the prototype | Full gate applied to the existing codebase; technical owner assigned | Code and data move into the production estate under the named owners | Proposed |
| Rebuild on an approved platform | Requirements captured; rebuilt by IT or an approved team | Prototype is decommissioned; its requirements are retained | Proposed |
| Implement through an existing vendor product | Gap analysis against the licensed product; procurement engaged | Prototype is decommissioned; requirements feed the vendor fit | Proposed |
| Retain requirements and learning | Findings logged to the roadmap; prototype decommissioned | Data disposed of per policy; learning retained in the roadmap | Proposed |
| Stop | Prototype decommissioned | Data disposed of per policy; the need is recorded as not validated | Proposed |

Scenario testing found that the stop and retain learning routes are the ones that keep the framework honest, and that reviewers still treat them as failures unless leadership says otherwise (Finding). The pilot will treat all five routes as legitimate endings and record the route chosen for each project. (Proposed)

No pilot project may simply continue running as an informal production service after the pilot closes. Any project that has real users at pilot end must either pass the gate or be stopped with its data disposed of. A project that touched real users runs under the limited pilot state in change R16, whose end review either promotes it, extends it once for a stated reason, or stops it. (Proposed; Decision required via D5)

## 9. Cost and effort

The pilot has identifiable cost lines and staffing effort, but none of the figures are known. This document deliberately does not invent them.

| Cost line | What it covers | Who must confirm it | Label |
|---|---|---|---|
| Approved tool stack | Copilot Business or Enterprise seats and Azure OpenAI usage, including the usage-based Copilot billing that began in June 2026 | Digital/IT with Procurement and Finance | Proposed; the usage-based shift is a Finding from WS1 |
| Sandbox infrastructure | Dedicated GitHub organisation, cloud subscription with spend alerts, secrets manager and registry | Digital/IT with Finance | Proposed |
| Staffing effort | Pilot lead, Digital/IT operator, Security reviewer and DPO contact time, plus workstream lead time | Digital/IT, Security, the DPO and Finance or HR | Proposed; unknown |
| Review capacity | Time to run data-use note reviews and gate reviews | Digital/IT with Security | Proposed; the capacity is open gap G11 |
| Contingency | Usage spikes and unplanned spend alerts | Digital/IT with Finance | Proposed |

The staffing effort is expected to be a part-time commitment for each named role rather than new headcount, but this is an assumption to be confirmed, not a fact. (Proposed; Decision required via D7)

## 10. A 90 day plan

Three blocks of 30 days, each with concrete deliverables. The plan is Proposed.

Block 1, days 1 to 30 (Proposed): stand up and authorise

- Settle decisions D1, D2, D4, D5 and D7 before the sandbox opens
- Stand up the sandbox: GitHub organisation, cloud subscription with spend alerts, secrets manager and the two minute registry
- Publish the pilot register and the 15 minute onboarding module with the AUP
- Name the pilot lead, the Digital/IT operator, the Security reviewer and the DPO contact
- Recruit the 6 to 10 pilot projects and record their classification

Block 2, days 31 to 60 (Proposed): run and measure

- Run Tier 0 and Tier 1 projects; put the first Amber data-use note through review
- Start the weekly operational check and the first monthly leadership review
- Record turnaround times against the section 7 targets
- Exercise the incident path at least once, even as a drill, to prove the leak reporting route

Block 3, days 61 to 90 (Proposed): promote and decide

- Attempt up to two Tier 2 promotions through the gate and the review point
- Complete at least one ownership transfer with a signed ownership record
- Route every pilot project through one of the five outcome routes
- Produce the pilot report with the section 7 results and the go/no-go recommendation

## 11. Risks to the pilot and their mitigations

| Risk | Why it matters | Mitigation | Label |
|---|---|---|---|
| The pilot itself becomes shadow production | Real users arrive before the gate, and projects keep running informally (findings F7, F13, gap G15) | Run the pilot under an authorised limited state with an owner, a data limit, a time limit and a review at the end; treat real-user arrival as a trigger to promote or stop | Proposed; Decision required via D5 |
| The Amber contradiction stalls scenario B | Without D1 there is no lawful path for the most common use case, so it happens outside the framework (finding F4) | Settle D1 before the pilot opens | Decision required |
| The data-use note review becomes a bottleneck | Amber work is where internal friction concentrates, and no reviewer or service level exists (finding F5, gap G4) | Name the reviewer and a two working day service level; measure it weekly | Proposed |
| Evidence is present but not checked | The gate becomes form filling (gap G3) | Add a named reviewer who verifies that evidence is truthful, not merely present | Implementation work |
| Tool-call logging is not deliverable | The audit trail the framework promises may not exist in the tools INSEAD buys (gap G5) | Test logging on the pilot tools and record what is actually available before relying on it | Implementation work |
| Review capacity is assumed but unconfirmed | The gate and the ownership model both assume named people with time (gap G11) | Confirm capacity in decision D7; size the pilot to the capacity | Decision required |
| Students bypass the registry | Friction at onboarding pushes people back to personal accounts (findings F1 to F3) | Keep onboarding under an hour and the registry at two minutes; publish plain-language reasons for each tool category | Proposed |
| Usage-based billing surprises the budget | Copilot moved to usage-based billing in June 2026, so per-seat forecasts no longer hold (Finding from WS1) | Set spend alerts and review actual spend in the monthly review | Proposed |
