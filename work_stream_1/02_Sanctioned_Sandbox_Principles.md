# Sanctioned Sandbox: Principles for Safe AI-Assisted Development at INSEAD

> Workstream 1 | INSEAD AI-Assisted Application Development Framework | Version 0.1 (draft) | 3 September 2026
>
> Workstream 1 documents: [01 - Tool Assessment Matrix](01_Tool_Assessment_Matrix.md) | [02 - Sanctioned Sandbox Principles](02_Sanctioned_Sandbox_Principles.md) | [03 - Tool Profiles](03_Tool_Profiles.md) | [04 - Key Findings & Recommendations](04_Key_Findings_and_Recommendations.md) | [05 - Sources and References](05_Sources_and_References.md) | [06 - Glossary](06_Glossary.md)
>
> Companion documents: [01 - Tool Assessment Matrix](01_Tool_Assessment_Matrix.md), [03 - Tool Profiles](03_Tool_Profiles.md), [04 - Key Findings & Recommendations](04_Key_Findings_and_Recommendations.md). This document defines the "where and how" of safe experimentation. Workstream 2 defines the data rules; Workstream 3 defines the exit (prototype-to-production) gate.

---

## 1. Definition and purpose

### 1.1 What a sanctioned sandbox is

A sanctioned sandbox is a governed, ring-fenced environment in which AI-assisted application development can proceed safely before any question of institutional deployment arises. It is not a single physical system. It is a bundle of policy, identity, approved tooling, dedicated repositories, data rules and review mechanisms that together guarantee separation from production. In practice it is the institutional answer to one question: where can a student, faculty member or staff member safely build an AI-assisted prototype?

The sandbox hosts Tier 0 work (personal experiment: public/synthetic data, no institutional integration) and Tier 1 work (internal prototype: controlled experimentation, possibly limited or sanitised institutional context) from the framework's risk-tier hypothesis. Tier 2 and Tier 3 work is, by definition, no longer sandbox activity. It is governed by the full production requirements described in the prototype-to-production pathway (Workstream 3).

### 1.2 Why INSEAD needs one

1. Usage already exists. Students and staff already use Copilot, Cursor, Lovable, Bolt, Claude Code and similar tools, largely on personal accounts. Without a sanctioned space this continues invisibly (shadow AI), with no data protection, no audit trail and no path to institutional value.
2. Vibe coding has lowered the barrier to application-building to near zero. People who would never have written software can now produce working prototypes in an afternoon. Governance must keep pace with that speed, or it will simply be bypassed. See [06 - Glossary: Vibe Coding](06_Glossary.md).
3. Risk concentrates at the edges. The dangerous combinations are not the tools themselves but the pairings: real institutional data in a consumer tool, institutional credentials pasted into a prompt, a prototype that quietly connects to a production system, an unreviewed agent that can act at machine speed (OWASP LLM08, Excessive Agency: <https://genai.owasp.org/llmrisk/llm08-excessive-agency/>).
4. Proportionate governance is the brief's working principle: "We are not governing whether people may use AI to build applications. We are governing how an AI-assisted prototype progresses from experimentation to an institutional product, with governance increasing proportionately with risk and impact." (Intern Research Brief). A sandbox is the mechanism that keeps Tier 0/1 governance light, because the boundaries are what make the risk light.

### 1.3 What the sandbox is not

- Not a production environment. Nothing in the sandbox serves real users or real business processes.
- Not a substitute for Workstream 2's data classification (Green / Amber / Red hypothesis) or Workstream 3's promotion gate.
- Not an anything-goes zone. It has explicit data, identity, tool and review rules (below). The rules exist so experimentation stays fast without drifting into risk.

---

## 2. Core principles

### P1. Separation of experimentation from production
Sandbox projects are isolated from production by default: separate GitHub organisation and repositories, separate hosting namespaces, no access to production credentials, systems or APIs. Anything that needs a production connection is automatically Tier 2 and leaves the sandbox. Basis: segmentation is a foundational secure-design control. See [NIST AI RMF](https://nvlpubs.nist.gov/nistpubs/ai/NIST.AI.100-1.pdf) (GOVERN/MANAGE) and [OWASP Top 10 for LLM Applications](https://genai.owasp.org/).

### P2. Data restrictions by default
The default data posture in the sandbox is Green only (public / synthetic / non-sensitive, Workstream 2 hypothesis). Amber (internal) data may be used only with case review and only in Approved tools. Red data (personal, confidential, student, credential, sensitive research) never enters the sandbox. The rule fits in one line: if you would not publish it on the INSEAD public website, it does not go into an Experimental tool, and Red data goes into no AI tool without an explicit, reviewed decision.

### P3. Identity-first access
All sandbox work with Approved tools uses institutional accounts (SSO/SAML, SCIM provisioning). No institutional work on personal accounts, because personal accounts are invisible to INSEAD: no revocation, no audit, no recovery when someone leaves. See [06 - Glossary: SSO](06_Glossary.md) and [Microsoft Entra: What is single sign-on](https://learn.microsoft.com/en-us/entra/identity/enterprise-apps/what-is-single-sign-on).

### P4. Tool approval through a published register
Tools are categorised Approved / Experimental / Restricted using the evidence in [01 - Tool Assessment Matrix](01_Tool_Assessment_Matrix.md) (SSO, training policy, audit, residency, cost). The register is published, searchable and reviewed quarterly. New tools are admitted via a lightweight fast-track request rather than ad hoc adoption. This converts shadow adoption into a visible queue.

### P5. Code and IP ownership are defined up front
Prototypes built with institutional accounts and repositories are institutional assets by default (subject to procurement/legal confirmation). Vendors' enterprise terms generally assign IP in generated code to the customer (see the matrix's IP column), but the sandbox rules require three things: (a) no third-party proprietary code pasted into tools without licence check, (b) awareness that AI-generated code can reproduce open-source code and trigger licence obligations, (c) a named owner for every sandbox project so ownership never becomes ambiguous later.

### P6. Least privilege and secrets hygiene
Sandbox projects use dedicated, low-value, easily revoked sandbox credentials. Never institutional API keys, never personal passwords, never production tokens. Secrets live in a secrets manager, not in prompts, code or repos ([OWASP Secrets Management Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Secrets_Management_Cheat_Sheet.html)). A suspected secret leak is an incident, reported immediately.

### P7. Transparency and auditability
All sandbox code lives in institution-managed repositories with visible attribution, and sandbox projects are registered (name, owner, tool, data class, tier) in a lightweight registry. Enterprise tools' audit logs (for example Copilot Enterprise audit logs, see [GitHub Docs](https://docs.github.com/en/copilot/managing-copilot/managing-github-copilot-in-your-organization/reviewing-audit-logs-for-copilot-business)) are retained and reviewed. If an incident occurs, INSEAD must be able to answer who did what, with which tool, and what data was involved.

### P8. Human accountability and proportionate review
Every sandbox project has a named human owner, and AI assistance never removes human accountability for code and decisions (NIST AI RMF, GOVERN 1.3: accountability structures). Review is proportionate: Tier 0 self-attests against a short checklist; Tier 1 requires a sponsor and a slightly longer checklist; exit to Tier 2 triggers the full Workstream 3 gate. Tier 0 review has to stay light or people will skip it. Tier 3 review has to be real, because that is where the downside lives.

---

## 3. Practical implementation

### 3.1 Who can access the sandbox

| Audience | Default tier | Conditions |
|---|---|---|
| Students | Tier 0 (and Tier 1 with a faculty/staff sponsor) | SSO account; completion of a short onboarding module; acceptance of the sandbox Acceptable Use Policy |
| Faculty | Tier 0-1 | Same conditions |
| Staff (non-technical, "citizen developers") | Tier 0-1 | Same conditions |
| Digital/IT and professional developers | Tier 0-1 by default; Tier 2 work under the production pathway | Same conditions plus role-based access to production tooling |
| External partners/contractors | Case-by-case | Sponsor plus contract terms covering data use |

Access is self-service after the onboarding module (target: working in the sandbox within one hour of starting). Friction at this point is what pushes people back to personal accounts.

### 3.2 What tools are available

Tools are drawn from the register in [01 - Tool Assessment Matrix](01_Tool_Assessment_Matrix.md):

- Approved tools (institutional accounts, SSO, no-training commitments, audit logs) are available to all sandbox users for Green data and, with review, Amber data. Per the matrix: GitHub Copilot Business/Enterprise, Azure AI Foundry/Azure OpenAI Service, Cursor Teams/Enterprise with Privacy Mode, Lovable Business/Enterprise, JetBrains AI under org licensing, Amazon Q Developer Pro only, v0 on Business/Enterprise once its tier specifics are verified, and Tabnine self-hosted for privacy-sensitive code.
- Experimental tools (strong products but weaker institutional controls, typically no SSO on education plans, or telemetry/training caveats) are available for Green data only, on the user's own account, with the AUP's warning that nothing sensitive may be entered. Per the matrix: GitHub Copilot Free/Pro and the Education route, GitHub Models, Cursor individual plans, Replit free/Core/Pro, Lovable Free/Pro, Bolt.new free/Pro/Teams, Windsurf individual and Teams plans, and the consumer tiers of the coding CLIs.
- Restricted tools are not to be used for any institutional work. They are listed with reasons so the restriction is explainable rather than arbitrary. Personal, non-institutional use is the user's own responsibility and remains subject to general INSEAD IT policy.

The full definitions of the three categories are in Section 4.

### 3.3 How data is handled

| Data class (Workstream 2 hypothesis) | Sandbox rule |
|---|---|
| Green (public/synthetic/non-sensitive) | Allowed in any sandbox tool (Approved or Experimental) |
| Amber (internal institutional information) | Approved tools only, with a short data-use note in the project registration |
| Red (personal/confidential/student/credential/sensitive research) | Never in the sandbox. Any need for Red data automatically moves the work to Tier 2/3 with Workstream 2 and Cybersecurity involvement |

Two quick tests are published with the AUP. Test one: could this be printed on a poster in the lobby? If yes, Green. Test two: would I want this in a public AI tool's training data? If not, it is not Green. These are interim heuristics pending Workstream 2's final classification model.

### 3.4 How the environment is technically separated

- Dedicated GitHub organisation and repo naming convention (for example a "sandbox-" prefix), separate from institutional production repos.
- Sandbox hosting in a dedicated cloud project/subscription with spend alerts and no peering to production networks.
- Containerised, disposable runtimes for prototypes (see [06 - Glossary: Containerization](06_Glossary.md)). A prototype should be reproducible from its repo alone.
- No production credentials, no production DNS names, no production APIs. Prototypes that integrate with institutional systems use reviewed, sandbox-scoped interfaces only. Such integration is itself an Amber-data event requiring a data-use note.

### 3.5 What happens when a prototype is ready to leave

Leaving the sandbox is a promotion decision, not an automatic step. The trigger is one of Workstream 3's outcome routes: Adopt/secure the prototype; Rebuild on an approved platform; Implement through an existing vendor/product; Retain requirements and learning for the roadmap; or Stop. Promotion requires the Workstream 3 production-readiness gate: named business and technical owners, architecture/security/privacy review, approved hosting and SSO, repository/code-quality/test evidence, secrets management, logging/monitoring, documentation, support model, licensing/procurement, funding and retirement plan. The sandbox's job is to have made the prototype easy to evaluate (clean repo, declared data, named owner), not to have pre-approved it.

---

## 4. Approved vs Experimental vs Restricted

These categories are tool outcomes, applied per tool and reviewed quarterly. The evidence behind each categorisation lives in [01 - Tool Assessment Matrix](01_Tool_Assessment_Matrix.md).

### Approved: institutional use permitted under defined conditions

Criteria (all required): institutional/enterprise account type exists; SSO (SAML) with SCIM provisioning; no training on customer content (contractual); defined data retention; audit/logging available to INSEAD; acceptable data residency; viable cost for hundreds of users.

Use: Green and Amber data (Amber subject to the data-use note); Tier 0-2 development depending on the tool.

Examples (per matrix): GitHub Copilot Business/Enterprise; Azure OpenAI Service; Cursor Teams/Enterprise; Lovable Business/Enterprise; JetBrains AI under org licensing; Amazon Q Developer Pro.

Obligations: configured and centrally provisioned; content exclusions and policies set by Digital/IT; AUP applies.

### Experimental: permitted for prototyping with public/synthetic/non-sensitive data only

Criteria: valuable for prototyping but missing one or more Approved criteria, typically no SSO on affordable plans, permissive telemetry, or training/improvement clauses that are acceptable for Green data but not for institutional data.

Use: Green data only; Tier 0 and Tier 1 (with sponsor); the user's own account, never institutional credentials.

Examples (per matrix): GitHub Copilot Free/Pro and the Education route; GitHub Models; Cursor individual plans; Replit free/Core/Pro with Agent; Lovable Free/Pro; Bolt.new free/Pro/Teams; Windsurf individual and Teams plans; consumer tiers of the coding CLIs.

Obligations: AUP warning signed at onboarding; no Amber/Red data; project still registered and code still committed to the sandbox repos so value is not lost.

### Restricted / Prohibited: unsuitable for institutional data or development

Criteria: inputs used for model training with no meaningful opt-out, no audit trail, no account controls, unclear data flow, or tools that inherently require institutional credentials in third-party hands.

Use: no institutional use; listed with reasons. Personal use outside INSEAD's systems remains the individual's responsibility under general IT policy.

Examples (named in the register, with reasons): free consumer ChatGPT for institutional data (trains on data by default); the Amazon Q Developer free tier (AWS Service Terms section 50.13); Replit free/Core for staff work (machine-learning improvement rights); Devin outside an Enterprise contract; and any tool that requires pasting institutional credentials.

Obligations: the register explains why, and the sandbox provides an approved alternative for the same job.

### How the tiers relate

| Risk tier | Typical category of tool | Typical data | Where |
|---|---|---|---|
| Tier 0 (personal experiment) | Approved or Experimental | Green only | Sandbox |
| Tier 1 (internal prototype) | Approved (Experimental with sponsor) | Green; Amber with review | Sandbox |
| Tier 2 (institutional application) | Approved only | Per Workstream 2 classification | Production pathway (Workstream 3 gate) |
| Tier 3 (high-impact/sensitive) | Approved only, plus additional controls | Red-capable with Workstream 2/Cybersecurity involvement | Production pathway with enhanced governance |

---

## 5. Recommendations

1. Adopt the three-category tool register as policy. Publish the register from [01 - Tool Assessment Matrix](01_Tool_Assessment_Matrix.md), review it quarterly, and give Digital/IT a fast-track route (two weeks or less) for adding new tools. Owner: Digital/IT and the AI governance working group.
2. Procure one Approved end-to-end stack now. A GitHub Copilot Business/Enterprise deployment (SSO, content exclusions, audit logs, no-training terms) plus Azure OpenAI Service gives students, staff and developers a governed default for both coding assistance and building. Owner: Digital/IT; procurement.
3. Stand up the sandbox infrastructure. Dedicated GitHub organisation, sandbox cloud subscription with spend alerts, secrets manager, and the project registry. Target: complete before the next academic term so student demand lands in a governed space. Owner: Digital/IT.
4. Mandate institutional accounts for institutional work. One short line in the AUP: "Institutional work happens in institutional accounts." Enforced by onboarding provisioning, and by the simple fact that support, audit and recovery only exist inside the institutional estate. Owner: Digital/IT.
5. Ship a 15-minute onboarding module plus AUP acknowledgment as the gate to sandbox access: data classes in plain language, the two quick tests, secrets rules, and what happens at promotion. Owner: Digital/IT with Learning/Talent teams.
6. Default Experimental tools to Green data, and say it on the register. This is the single rule that makes the long tail of consumer tools safe without banning them. Owner: AI governance working group.
7. Require a named owner and registration for every sandbox project (two-minute form: owner, tool, data class, tier, repo link). This creates the audit trail P7 requires and the ownership record Workstream 3 will need. Owner: Digital/IT.
8. Define the promotion trigger explicitly. A prototype leaves the sandbox only via Workstream 3's gate and outcome routes (adopt / rebuild / vendor / roadmap / stop). Publish the one-page checklist so nobody is surprised. Owner: framework leads (Andreas + Workstream 3).
9. Instrument what you can. Enable Copilot Enterprise audit logs, Azure subscription activity logs and registry metrics; review quarterly to spot shadow-AI hotspots and repeated near-misses. Owner: Digital/IT.
10. Run the four representative scenarios against the sandbox before sign-off (Section 6). If the sandbox cannot answer "can they build it, where, with which tools, with what data, who reviews, who owns it" for each case, it is not ready. Owner: framework leads.

---

## 6. Testing against representative scenarios

| Question | Case A: student event/timetable app (synthetic data) | Case B: team analytics app on learning-platform data | Case C: AI assistant processing student submissions | Case D: student app proposed for institutional deployment |
|---|---|---|---|---|
| Can they build it? | Yes | Yes | Only as a reviewed Tier 2/3 project | Yes |
| Where? | Sandbox | Sandbox for prototyping; production pathway for the real data | Not in the sandbox (Red data) | Sandbox, then promotion gate |
| Which tools? | Any Approved or Experimental | Approved only (Amber data) | Approved only, with Workstream 2/Cybersecurity controls | Per register; Approved for the promotion build |
| What data? | Green (synthetic) | Amber learning-platform data via a reviewed, sandbox-scoped interface | Red (personal data): requires DPIA-level review, minimisation, and likely anonymisation before any prototyping | Green/Amber only until promotion |
| What controls? | AUP + registration | Data-use note, sponsor, audit-logged tooling | Full Workstream 2/3 controls; Cybersecurity involvement mandatory | AUP + registration; institutional account |
| Who reviews? | Self-attestation | Sponsor, plus Digital/IT for the data interface | Cybersecurity, Privacy, Data owners | Promotion gate: architecture, security, privacy reviews |
| What is required for production? | Not applicable (unless promoted) | Workstream 3 gate: owners, hosting, SSO, testing, logging, support | Workstream 3 gate plus AI-specific risk assessment (OWASP LLM Top 10 controls) | Full gate; ownership transfers to a named INSEAD owner |
| Who owns it afterwards? | Student (until promoted) | Named business/technical owners in the requesting team | Named institutional owners; support model agreed | INSEAD via the adopting team, not the student alone (see Workstream 3) |

---

## 7. Open questions and trade-offs (for stakeholder validation)

1. Where does "Amber with review" get reviewed? Proposed: Digital/IT runs a lightweight data-use note review. Is that the right owner?
2. Do students get Experimental tools funded institutionally, or is personal-account use simply tolerated? Trade-off: funding personal accounts is cheaper but weakens the audit story.
3. Is a separate GitHub organisation acceptable to INSEAD's existing GitHub estate, or should the sandbox be a namespace within it? Trade-off: separation versus administration overhead.
4. How do we reconcile the "institutional work in institutional accounts" rule with visiting faculty, PhD researchers and short-stay users? Needs HR/IT input.
5. What is the position on IP in AI-generated code for students' coursework versus staff work? Needs Legal; Workstream 3's ownership model will depend on it.
6. Which tool set should be procured first, and at what cost envelope? Depends on the matrix cost data and the procurement cycle.

These are carried forward into [04 - Key Findings & Recommendations](04_Key_Findings_and_Recommendations.md).

---

*Primary references: NIST AI Risk Management Framework (<https://nvlpubs.nist.gov/nistpubs/ai/NIST.AI.100-1.pdf>); NIST AI 600-1 Generative AI Profile (<https://nvlpubs.nist.gov/nistpubs/ai/NIST.AI.600-1.pdf>); OWASP Top 10 for LLM Applications (<https://genai.owasp.org/>); OWASP CI/CD Security Cheat Sheet (<https://cheatsheetseries.owasp.org/cheatsheets/CI_CD_Security_Cheat_Sheet.html>); OWASP Secrets Management Cheat Sheet (<https://cheatsheetseries.owasp.org/cheatsheets/Secrets_Management_Cheat_Sheet.html>); ISO/IEC 42001:2023 AI management systems (<https://www.iso.org/standard/81230.html>); ISO/IEC 42005 AI system impact assessment (<https://www.iso.org/standard/42005.html>); Regulation (EU) 2016/679 GDPR (<https://eur-lex.europa.eu/eli/reg/2016/679/oj>); Regulation (EU) 2024/1689 EU AI Act (<https://eur-lex.europa.eu/eli/reg/2024/1689/oj>). Full source list: [05 - Sources and References](05_Sources_and_References.md).*
