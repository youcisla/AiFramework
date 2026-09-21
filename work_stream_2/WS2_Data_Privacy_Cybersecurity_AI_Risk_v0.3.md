# Workstream 2: Data, Privacy, Cybersecurity and AI Risk

> Workstream 2 | INSEAD AI-Assisted Application Development Framework | Source: Workstream_2_Data_Privacy_Cybersecurity_AI_Risk_v0.3.docx | Converted to markdown 3 September 2026
>
> This is the workstream's own draft, converted faithfully from Word for the consolidated framework. Content and positions are the author's; only formatting was changed.
>
> Workstream 1 documents: [01 - Tool Assessment Matrix](../work_stream_1/01_Tool_Assessment_Matrix.md) | [02 - Sanctioned Sandbox Principles](../work_stream_1/02_Sanctioned_Sandbox_Principles.md) | [03 - Tool Profiles](../work_stream_1/03_Tool_Profiles.md) | [04 - Key Findings & Recommendations](../work_stream_1/04_Key_Findings_and_Recommendations.md) | [05 - Sources and References](../work_stream_1/05_Sources_and_References.md) | [06 - Glossary](../work_stream_1/06_Glossary.md) | [07 - Dependencies and Handoffs](../work_stream_1/07_Dependencies_and_Handoffs.md)
>
> Framework-wide: [Consolidated framework](../consolidated/00_Consolidated_Framework.md) | [Gaps and contradictions](../consolidated/01_Gaps_Contradictions_Dependencies.md) | [Scenario walkthroughs](../consolidated/02_Scenario_Walkthroughs.md) | [Recommended changes](../consolidated/03_Recommended_Changes.md) | [Minimum operating model](../consolidated/04_Minimum_Operating_Model.md) | [White paper inputs](../consolidated/05_White_Paper_Inputs.md) | [Research refresh](../consolidated/06_Research_Refresh.md)

INSEAD, AI-assisted application development framework

Workstream 2: Data, Privacy, Cybersecurity & AI Risk

Findings, proposed classification model and risk/control matrix

Version 0.1, Draft for review, 14 September 2026

## Objective

Define the guardrails governing what data and capabilities can be used at different stages of AI-assisted development, so that the framework can answer a single practical question: can I put this data into this AI tool, and what am I then obliged to do?

## 1. Purpose and scope

This document sets out the Workstream 2 position on data handling, privacy, cybersecurity and AI-specific risk for AI-assisted application development at INSEAD. It covers three things:

- the rules that apply to data placed into AI tools, and to applications that connect to institutional systems;
- a proposed classification model for data and for integrations, used to set the level of control required;
- the risks that must be controlled, separated into traditional application risk and AI-specific risk, with the controls recommended for each.

These rules apply during the development phase and in production alike. Where an application uses an AI component to process internal data, the same restrictions apply to that component as to the application itself.

This is a Version 0.1 draft. Positions drawn from existing INSEAD policy are stated as requirements; positions proposed by this workstream are identified as proposals in the text.

## 2. Regulatory and policy baseline

Four obligations sit underneath everything else in this workstream. They are not new requirements created by the framework; they are existing obligations that AI-assisted development does not suspend.

- GDPR. Wherever an application collects or uses personal data, it must comply with the GDPR. In particular, personal data must not be collected or used without the consent of the individuals concerned.
- INSEAD Data Security Policy. Internal documents and data must not be transferred outside the internal tools provided by INSEAD unless the external tool has been approved by the Security team. See KB0010486.
- INSEAD Application Security Policy. Every application built must align with the institutional application security requirements. See KB0010484.
- INSEAD IT Security Policies. More generally, all IT security policies apply. See the IT Cyber Security pages.

## 3. Answers to the seven framework questions

The positions below are the working answers Workstream 2 proposes for the framework. They are drawn from existing INSEAD requirements and GDPR obligations, and are intended to be short enough to be applied without interpretation.

| Question | Position |
|---|---|
| Can I put this data into this AI tool? | Only if the tool is an internal tool provided by INSEAD, or an external tool explicitly approved by the Security team. No internal document or data may be transferred outside that set of tools. |
| Can I use real institutional data during prototyping? | No. Personal data may not be collected or used without the consent of the individuals concerned, and prototyping is not a basis for that consent. Institutional and real-world data should not be used during prototyping. |
| When must synthetic or anonymised data be used? | Whenever data will leave INSEAD, including a demonstration, an external tool, or AI-assisted development performed outside internal tooling. |
| When does Cybersecurity need to become involved? | Whenever the application stores employee, student or institutional information, INSEAD's Data Protection Officer (DPO) must be advised. In addition, any data leakage occurring during development must be signalled to Cybersecurity, including data pasted into an unapproved tool, a secret committed to a repository, or institutional data exposed through an AI tool. Reporting is required whether or not the leak is believed to have had consequences. |
| What changes when an application connects to an institutional system? | The application inherits responsibility for the protections of the source system. Data access protection must remain equivalent to the protection applied in the system the data comes from. The application must not become a route to data a user could not otherwise reach. |
| What additional controls apply to AI-enabled applications? | Models must come from trusted sources, and the AI component must have restricted access to data and to connected systems. The specific controls are set out in section 5. |
| What happens when an AI system can take actions rather than generate information? | Actions must be limited to the access strictly required. Any irreversible action must be validated by a human before it executes. Tools exposed to the agent must be narrow and purpose-specific, and must not offer open or derivable capability beyond their stated function. |

## 4. Proposed classification model

The brief proposes a single Green / Amber / Red scale for data. Workstream 2 recommends splitting this into two independent scales, one for the data an application holds, one for the integrations it has, because the two generate different risks and different controls. An application handling only public data can still be high risk if it can delete records in an institutional system.

The Amber band below corresponds to the band recorded as "Orange" in the working notes; the naming is aligned to the brief.

### 4.1 Data classification

| Band | Scope | Consequence |
|---|---|---|
| RED | Employee, student, personal, protected, licensed or confidential data. | Must not be used in prototyping. May only be processed in production by an approved tool chain, with DPO involvement and a documented lawful basis. |
| AMBER | Internal, non-public, non-personal information. | May not leave INSEAD-provided or Security-approved tools. Must be anonymised or replaced with synthetic data before any demonstration or external use. |
| GREEN | Public or non-sensitive information, including synthetic data. | Usable for experimentation and prototyping without additional data-specific controls. |

Anonymisation, for the purposes of this framework, means the removal of all data that could be used to link a record back to a real end user. That includes indirect identifiers as well as direct ones. A record stripped of names but still carrying a programme, intake year and nationality is not anonymised if those fields narrow it to one person. Where the remaining combination could still identify someone, the data is Red and must be replaced with synthetic values rather than masked.

### 4.2 Integration classification

| Band | Scope | Consequence |
|---|---|---|
| RED | Automated UPDATE or DELETE access to an internal system, that is, a write or delete that executes without a human confirming it. | Not permitted for prototypes. Requires Cybersecurity review, scoped credentials, full logging and a rollback position before production. |
| AMBER | GET access to an internal system, or an UPDATE / DELETE operation that a user explicitly confirms. Confirmed write access must operate at the same permission level as the user holds in the target system. | Permitted with least-privilege credentials and logging. The data retrieved must also be classified under 4.1, and carries that band's controls. |
| GREEN | No access to internal systems. | No integration-specific controls. |

### 4.3 Using the two scales together

The governing rule is the higher of the two bands. An application is treated at the level of its most sensitive dimension, not the average of the two.

- Green data + Green integration: experimentation. No review required.
- Any Amber: internal prototype. Least-privilege access, logging, no data leaves approved tooling.
- Any Red: institutional or high-impact. Cybersecurity review required; DPO advised where personal data is stored; human validation on any irreversible action.

This maps onto the risk tiers in the brief: Green/Green corresponds to Tier 0, any Amber to Tier 1, and any Red to Tier 2 or Tier 3 depending on whether the application also takes autonomous action.

## 5. AI-specific risks and controls

The five risks below are the ones judged material for AI-assisted applications at INSEAD. They correspond to entries in the OWASP Top 10 for LLM and Generative AI Applications; the names used here follow that vocabulary so the framework can be cross-referenced against it.

### 5.1 Prompt injection

Instructions hidden in content that reaches the model (typically an external document, a web page or a file supplied by a third party) cause the model to act on the attacker's intent rather than the user's. This is the most dangerous of the five because it is not reliably detectable: the input looks like ordinary content.

Controls:

- Convert images and video to text (OCR, transcription) before they enter a prompt, so that text hidden inside a file is not carried into the model unexamined.
- Strip the character classes used to conceal text, including zero-width and bidirectional control characters.
- Mark external input explicitly as data rather than instruction. This helps, but a knowledgeable attacker can work around it, and it is not a control that can be relied on alone.
- Require human verification before any operation that reaches an external system.
- Treat the combination of untrusted input, sensitive data and a state change as a high-risk operation, and gate it. Any one of the three alone is lower risk; together they are the injection path that matters.
- Read imported documents through every extraction route available, every time, not only the route that renders cleanly.
- Pin the versions of libraries and tools plugged into the agent, to limit supply-chain exposure.

### 5.2 Sensitive information disclosure

An AI component emits confidential data through any channel: a response to the user, an argument passed to an external tool call, or intermediate reasoning that is logged or displayed. The tool-call path is the one most often missed, because the data leaves without ever appearing in the answer.

Controls:

- Give the model as little as possible. What is never supplied cannot be disclosed; see 5.1 for preventing an attacker from making the model fetch it independently.
- Use anonymised or synthetic data wherever the task does not require real values.
- Never place credentials in a prompt. Where the agent must authenticate to another service, do it through a tool that holds the credential outside the model's context.

### 5.3 Excessive agency

The model is given more permissions or more tools than its function requires. The risk scales with what those tools can reach: access to confidential data, deletion, modification of institutional records.

Controls:

- Limit the tools. Do not give an agent a tool it is not meant to use.
- Limit what each tool can do. Expose only the CRUD operations actually needed, and only against the tables actually needed.
- Do not expose capability beyond the intended task. Avoid generic or open-ended tools whose scope a model can widen by choosing its own arguments.
- Require user confirmation for consequential operations, and never perform an irreversible operation without one.
- Ensure every request made to an external system complies with that system's own security policy.
- Log all tool use.
- Apply rate limiting or monitoring.

### 5.4 Supply chain

This concerns the models embedded in an application, and also models used during development where they are not well-established ones. The most common problem is data poisoning: a model trained on false or biased data, producing poor results or unsafe actions.

Unlike a downloaded program, a model cannot be verified by inspection. There is no static analysis that establishes a model is safe. It can only be tested behaviourally. That is why provenance is the control rather than an afterthought.

Controls:

- Verify the provenance of every LLM used, in development and in production.
- Verify the model's licence and its conditions of use.
- Pin model versions, so that behaviour validated in testing is the behaviour that runs.

### 5.5 Misinformation and unreliable output

An AI agent hallucinates frequently enough that its internal knowledge cannot be treated as a source. Where precise information is required, the documents containing that information must be supplied, with an instruction to use only those documents.

Controls:

- Supply precise, verified sources rather than relying on the model's own knowledge.
- Verify the information returned before it is acted on or published.
- Review every action the agent calls and the arguments it passes.
- Review generated code before it is run against anything that matters.

## 6. Traditional application risks and controls

AI-specific controls do not replace the ordinary security requirements of an application. The items below apply regardless of whether an AI component is present.

### 6.1 Authentication and authorisation

During development an application will not have an integration with INSEAD SSO. A local authentication system will therefore be needed, at least temporarily.

For anything intended for production, building the authentication system from scratch is strongly discouraged. A dedicated, maintained library should be used instead. Better Auth is one example of such a library, cited here for illustration rather than as a recommendation. The choice of library should be confirmed with the Security team.

Access to the application must be restricted to the people who need it and are authorised to have it.

Where the application holds information or offers actions that not everyone with access needs or is entitled to reach, a permission system is required. Role-Based Access Control is preferred, for consistency with the rest of the INSEAD application estate.

Where session information must be stored, it must be stored through a secure mechanism. For web applications, session tokens must be held in httpOnly, Secure, SameSite cookies, never in browser local or session storage, which any script running on the page can read and which is therefore exposed to cross-site scripting. For desktop applications, the platform secret store must be used (Keychain on macOS, Credential Manager on Windows).

### 6.2 Data storage

Application data must be held in a dedicated database, reached through a secured access path. Application data should not be co-located with unrelated systems or reached with shared, broadly-scoped credentials.

### 6.3 Secrets and environment variables

Environment variables and any other values the application needs to run but which must not be disclosed to other parties must be kept out of anything the application exposes: client-side code, error output, logs and API responses included.

### 6.4 Logging and monitoring

Logging is what makes a leak detectable and an incident reconstructable. It is also a copy of the data it records, and inherits that data's classification.

- Log authentication events, authorisation failures, access to institutional data and every change made to it, with enough detail to establish who did what and when.
- Log every AI tool call: the tool invoked, the arguments passed and the outcome. This is the path by which an agent reaches data and external systems, and it is not visible in the model's response alone.
- Never write personal data, credentials, tokens or full prompt content into logs. Where a log must reference a record, use an identifier rather than the data itself.
- Protect logs with access controls equivalent to those on the data they describe, and apply the same retention rules set out in 6.5.
- Monitor for abnormal access volume or rate, and rate-limit any path an AI component can trigger repeatedly.
- Make logs available to Cybersecurity when a leak or incident is reported.

### 6.5 GDPR compliance, retention and deletion

The application must comply with the GDPR in full, not only at the point of collection. A lawful basis is required for each processing purpose, and only the data actually needed for that purpose may be collected.

Retention and deletion are GDPR obligations in their own right, and must be specified before an application holding personal data goes into production:

- Define a retention period for every category of personal data held, derived from the purpose it was collected for. Data must not be kept longer than that purpose requires.
- Delete or irreversibly anonymise the data once the retention period expires. This must run as an automated routine, not as a manual task someone remembers to perform.
- Apply the same retention rules to derived data, not only to the primary record: prompt and tool-call logs, conversation history, caches, embeddings and vector stores, exports, and backups. AI components create copies of personal data that are easy to overlook.
- Provide a documented route to satisfy data-subject requests (access, rectification and erasure) within one month, covering every store listed above.
- Never use personal data for model training or fine-tuning without a lawful basis for that specific purpose. Training data cannot be selectively deleted after the fact.
- Record the retention period and the deletion method for each data category in the application documentation, so the obligation survives a change of maintainer.

Accountability for executing these obligations over the life of the application (including after the original creator has left) is addressed by Workstream 3.

## 7. Consolidated risk / control matrix

The final column proposes the point at which each control stops being advisory and becomes required, using the bands in section 4.

| Risk | Category | Key controls | Required from |
|---|---|---|---|
| Prompt injection | AI | Normalise files to text before prompting; Strip hidden-text characters; Mark external content as data; Human validation on external operations; Gate untrusted input + sensitive data + state change; Pin tool and library versions | Any application accepting external content |
| Sensitive information disclosure | AI | Minimise data supplied to the model; Anonymised or synthetic data by default; No credentials in prompts; authenticate via tools; Check tool-call arguments and traces, not only responses | All tiers; mandatory at Amber data |
| Excessive agency | AI | Least-privilege tool set; Narrow, purpose-specific tool capability; User confirmation before irreversible actions; Comply with the target system's security policy; Log all tool use; Rate limit and monitor | Any Amber or Red integration |
| Supply chain / model provenance | AI | Trusted model sources only; Verify provenance and licence; Pin model versions; Behavioural testing (static analysis is not available) | All tiers, including prototyping |
| Misinformation / unreliable output | AI | Ground answers in supplied, verified sources; Verify output before acting on it; Review agent actions and arguments; Review generated code | All tiers |
| Authentication and authorisation | Traditional | Local auth during development; SSO for production; Dedicated library rather than custom implementation; Access restricted to authorised users; RBAC where access needs differ; httpOnly, Secure, SameSite session cookies | Any application with real users |
| Data storage | Traditional | Dedicated database; Secured access path; Scoped credentials | Any Amber or Red data |
| Secrets exposure | Traditional | Secrets excluded from client-side code; Excluded from logs, errors and API responses; No secrets in source control | All tiers |
| Insufficient logging | Traditional | Log auth events, data access and changes; Log every AI tool call with its arguments; No personal data, secrets or tokens in logs; Access controls and retention equivalent to the data logged; Monitor volume and rate; rate-limit AI-triggered paths | Any Amber or Red data or integration |
| GDPR / personal data | Traditional | No personal data in prototyping; Lawful basis and minimisation; DPO advised where personal data is stored; Data leakage in development reported to Cybersecurity; Defined retention period per data category; Automated deletion or anonymisation at expiry, including logs, caches and backups; Documented route for data-subject requests | Any Red data |

## 8. Sources

1. AI Data Leakage, Check Point Software
2. INSEAD Data Security Policy (KB0010486)
3. INSEAD Application Security Policy (KB0010484)
4. INSEAD IT Security Policies, Cyber Security
5. Better Auth, example of an external authentication library (section 6.1).
6. OWASP Top 10 for LLM and Generative AI Applications, source of the AI risk taxonomy used in section 5.
