# Glossary: AI development tools and safe development environments

> Workstream 1 | INSEAD AI-Assisted Application Development Framework | Version 0.1 (draft) | 3 September 2026
>
> Workstream 1 documents: [01 - Tool Assessment Matrix](01_Tool_Assessment_Matrix.md) | [02 - Sanctioned Sandbox Principles](02_Sanctioned_Sandbox_Principles.md) | [03 - Tool Profiles](03_Tool_Profiles.md) | [04 - Key Findings & Recommendations](04_Key_Findings_and_Recommendations.md) | [05 - Sources and References](05_Sources_and_References.md) | [06 - Glossary](06_Glossary.md)
>
> Definitions are adapted from the authoritative sources linked under each term. Terms marked "(INSEAD definition, proposed)" are working definitions created for this framework and should be validated by stakeholders. Companion documents: [01 - Tool Assessment Matrix](01_Tool_Assessment_Matrix.md), [02 - Sanctioned Sandbox Principles](02_Sanctioned_Sandbox_Principles.md).

## A

### Agentic AI
An AI system that, given a goal, can plan and take actions with limited human intervention, for example by calling tools, editing files, running commands or deploying code. OWASP's Top 10 for LLM Applications lists Excessive Agency (LLM08) as a dedicated risk: agents that can take consequential actions without appropriate permissioning and human oversight can cause harm at machine speed. Sources: [OWASP LLM08: Excessive Agency](https://genai.owasp.org/llmrisk/llm08-excessive-agency/) and [NIST AI 600-1, Generative AI Profile](https://nvlpubs.nist.gov/nistpubs/ai/NIST.AI.600-1.pdf).

INSEAD relevance: agentic coding tools (GitHub Copilot coding agent, Claude Code, Replit Agent, Lovable, Bolt) no longer just suggest code. They edit, execute and deploy. The degree of agency feeds both tool categorisation (Approved / Experimental / Restricted) and risk tiering (Tier 0 to 3).

### AI-Assisted Development
The use of AI tools to help humans create software: code completion and generation, review, explanation, testing, debugging and documentation. AI-generated code carries the same security obligations as human-written code; it does not exempt a project from secure development practice. Sources: [What is GitHub Copilot?](https://docs.github.com/en/copilot/about-github-copilot/what-is-github-copilot); [NIST SP 800-218, Secure Software Development Framework (SSDF)](https://csrc.nist.gov/pubs/sp/800/218/final).

INSEAD relevance: the framework governs how AI-assisted prototypes progress from experimentation to institutional products. It does not govern whether people may use AI to build (Intern Research Brief, working principle).

### AI credits (usage-based billing)
A metering unit used by GitHub Copilot's June 2026 billing model: the base subscription stays, and agentic or premium requests draw down credits beyond the included allowances. Source: [GitHub Blog: Copilot moves to usage-based billing](https://github.blog/news-insights/github-copilot-is-moving-to-usage-based-billing/).

INSEAD relevance: budgeting for Copilot becomes monitoring plus forecast, which is why Document 04 recommends spend alerts alongside the subscription.

### Approved / Experimental / Restricted (INSEAD definition, proposed)
The three outcome categories used to classify every AI development tool in this framework.

- Approved: institutional use permitted under defined conditions (SSO, configured settings, acceptable use).
- Experimental: permitted for prototyping with public, synthetic or non-sensitive data only.
- Restricted / Prohibited: unsuitable for institutional data or development (for example inputs used for model training, or no audit trail).

Full definitions and worked examples: [02 - Sanctioned Sandbox Principles](02_Sanctioned_Sandbox_Principles.md), Section 4.

## B

### BYOK (Bring Your Own Key)
A pattern used by many open-source agentic coding tools (for example Cline, Aider, OpenHands): the tool itself is local and free, but the user supplies their own LLM API key, and prompts and code are sent to that provider.

INSEAD relevance: BYOK tools offer no institutional audit trail and invite users to attach personal payment cards or, worse, institutional API keys. They should be Experimental at most, and institutional API keys must never be used in personally managed tools.

## C

### CI/CD (Continuous Integration / Continuous Delivery)
The automated pipeline that builds, tests and deploys code changes. OWASP's CI/CD Security Cheat Sheet documents the security controls a mature pipeline needs (segregated credentials, protected branches, dependency checks, review gates). Source: [OWASP CI/CD Security Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/CI_CD_Security_Cheat_Sheet.html).

INSEAD relevance: a prototype does not need CI/CD; an institutional application (Tier 2+) does. The promotion gate defined by Workstream 3 requires CI/CD with secrets isolation.

### Conditional approval (INSEAD definition, proposed)
An Approved verdict that carries a named condition to close before procurement, written into the verdict itself, for example "Approved (conditional: confirm SSO and training opt-out tiers with Vercel)". Conditional verdicts stay in the register until the condition is closed. Full treatment: [01 - Tool Assessment Matrix](01_Tool_Assessment_Matrix.md) and [02 - Sanctioned Sandbox Principles](02_Sanctioned_Sandbox_Principles.md), Section 4.

### Containerization
Packaging an application and its dependencies into an isolated, portable runtime unit (for example Docker/OCI containers) so it runs consistently across environments. Containers isolate applications from each other but are not a substitute for data governance or secure configuration. Sources: [Docker: What is a container?](https://docs.docker.com/get-started/docker-concepts/the-basics/what-is-a-container/); [OWASP Docker Security Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Docker_Security_Cheat_Sheet.html).

INSEAD relevance: the sanctioned sandbox should provide containerised, throwaway runtimes so prototypes never share infrastructure with production.

### Content Exclusion
A GitHub Copilot administrative control that excludes specified repositories or files from being used to provide suggestions. It is the primary defence for IP-sensitive codebases within Copilot. Source: [GitHub Docs: Excluding content from GitHub Copilot](https://docs.github.com/en/copilot/how-tos/configure-content-exclusion/exclude-content-from-copilot).

INSEAD relevance: part of the required configuration for any Approved Copilot deployment. It does not exist in most consumer tools, which is one reason those tools land in Experimental or Restricted.

## D

### Data Residency
The geographical location or locations where data is stored and processed. Residency commitments matter for compliance (for example GDPR restrictions on transfers outside the EEA) and for contractual assurance. Source: [Microsoft Azure: Data residency](https://azure.microsoft.com/en-us/explore/global-infrastructure/data-residency/).

INSEAD relevance: where a vendor processes code and prompts is a matrix criterion. The preference is EU processing for Amber/Red data, since INSEAD's Fontainebleau campus is in the EU.

### DPA (Data Processing Agreement)
The contract that fixes a vendor's obligations when it processes personal data on INSEAD's behalf, as GDPR article 28 requires. Source: [Regulation (EU) 2016/679 (EUR-Lex)](https://eur-lex.europa.eu/eli/reg/2016/679/oj).

INSEAD relevance: procurement should collect a signed DPA for every Approved tool before Amber data flows through it. Several vendors publish theirs (for example Cursor's DPA), which the matrix flags where available.

### DPIA (Data Protection Impact Assessment)
The GDPR article 35 assessment required before processing that is likely to result in high risk to people. Source: [Regulation (EU) 2016/679 (EUR-Lex)](https://eur-lex.europa.eu/eli/reg/2016/679/oj).

INSEAD relevance: the natural gate for Red data and Tier 3 work, owned by Workstream 2 together with the DPO.

## E

### EU AI Act
Regulation (EU) 2024/1689, the EU's risk-based regulation of AI systems, applicable to providers and deployers of AI systems in the EU market. Most internal INSEAD applications will likely fall into minimal or limited-risk categories, but high-risk or prohibited practices (for example certain biometric categorisation) must be avoided, and transparency obligations can apply. Source: [Regulation (EU) 2024/1689 (EUR-Lex)](https://eur-lex.europa.eu/eli/reg/2024/1689/oj).

INSEAD relevance: framework guardrails should be compatible with EU AI Act deployer obligations for Tier 2/3 applications used at the France campus.

### Enterprise Managed Users (EMU)
GitHub's mode in which every account in an enterprise is created and controlled by the enterprise, with enforced SAML SSO and SCIM and no personal accounts. Source: [GitHub Docs: About Enterprise Managed Users](https://docs.github.com/en/enterprise-cloud@latest/admin/identity-and-access-management/using-enterprise-managed-users-for-iam/about-enterprise-managed-users).

INSEAD relevance: the strictest way to run Copilot Enterprise, and the reference configuration for principle P3 (identity-first access) in Document 02.

## F

### Fine-tuning (vs. pre-training)
Pre-training builds a foundation model on massive corpora. Fine-tuning adapts an existing model on additional task-specific data. Vendor data policies often distinguish "we do not train on your content" from "your content may be used to improve our products/services". Both clauses must be checked per tool and per plan. Source: [OpenAI: Model optimization](https://developers.openai.com/api/docs/guides/model-optimization).

INSEAD relevance: for Red (protected) data, a "used to improve products" clause is disqualifying. For Green data it may be acceptable in Experimental tools.

## G

### GDPR (General Data Protection Regulation)
Regulation (EU) 2016/679 governing the processing of personal data in the EU/EEA. Sending personal data to a third-party AI tool is a data processing operation that requires a lawful basis and, for processors, appropriate contractual terms (a DPA). Source: [Regulation (EU) 2016/679 (EUR-Lex)](https://eur-lex.europa.eu/eli/reg/2016/679/oj).

INSEAD relevance: applies to INSEAD's France campus operations and to any tool processing personal data of EU data subjects. Overlaps with Workstream 2's data classification.

## H

### Hallucination
Plausible but incorrect or unsupported model output. The NIST Generative AI Profile treats it as a core information-integrity risk to manage through design, evaluation and human review. Source: [NIST AI 600-1, Generative AI Profile](https://nvlpubs.nist.gov/nistpubs/ai/NIST.AI.600-1.pdf).

INSEAD relevance: Tier 2/3 applications need output verification and human review. "The AI wrote it" is not an acceptable error explanation.

## I

### IP Exposure
The risk that institutional intellectual property, meaning proprietary code, research, data or trade secrets, leaves the institution's control. This can happen when content is sent to a third-party model provider, retained for training, or surfaced in another organisation's suggestions. Primary controls: no-training contractual terms, content exclusion, privacy mode, zero data retention and data classification. Source: [GitHub Trust Center](https://github.com/trust-center).

INSEAD relevance: a dedicated matrix column, and the main differentiator between Approved and Experimental tools.

## M

### MCP (Model Context Protocol)
An open standard (introduced by Anthropic in November 2024) that lets AI assistants connect to external tools and data sources through a common interface. Source: [Model Context Protocol](https://modelcontextprotocol.io/).

INSEAD relevance: every MCP server an agent connects to is both an integration and an attack surface (for example indirect prompt injection via retrieved content). MCP integrations should be reviewed like any institutional integration (Workstreams 2 and 3).

### Model Training (as a data-policy term)
Whether a vendor may use the content you submit to train or improve its models. Enterprise tiers of major vendors generally commit not to train on customer content. Consumer and free tiers often retain the right unless the user opts out. Sources: [OpenAI: Enterprise privacy](https://openai.com/enterprise-privacy/); [Anthropic: Commercial terms, data usage](https://www.anthropic.com/legal/commercial-terms).

INSEAD relevance: the single most important matrix criterion after SSO. Default rule in this framework: tools that train on submitted content are Experimental-only (Green data).

## P

### Prompt Injection
An attack in which untrusted input, such as a pasted document, a web page an agent reads, or an issue comment, is crafted to override the model's instructions and make it perform unintended actions. Direct injection comes through the prompt itself; indirect injection comes through content the model retrieves. OWASP ranks it LLM01, the top risk for LLM applications. Source: [OWASP LLM01: Prompt Injection](https://genai.owasp.org/llmrisk/llm01-prompt-injection/).

INSEAD relevance: applies twice. First, to applications INSEAD builds (AI-specific risk, Workstream 2). Second, to the development loop itself: an agent that reads an untrusted repo or web page can be injected while "helping".

## R

### Red Teaming
Structured adversarial testing of an AI system to surface harmful or unsafe behaviours before deployment. Recommended practice in the NIST AI RMF and by major vendors. Source: [NIST AI Risk Management Framework](https://nvlpubs.nist.gov/nistpubs/ai/NIST.AI.100-1.pdf).

INSEAD relevance: Tier 2/3 applications should undergo at least lightweight red-teaming or adversarial testing before promotion, especially anything agentic or exposed to untrusted content.

## S

### SAML / SCIM
SAML (Security Assertion Markup Language) enables single sign-on federation. SCIM (System for Cross-domain Identity Management) automates user provisioning and deprovisioning. Together they let IT manage who can use a SaaS AI tool and revoke access centrally. Sources: [Microsoft Entra: What is single sign-on](https://learn.microsoft.com/en-us/entra/identity/enterprise-apps/what-is-single-sign-on); [Microsoft Entra: SCIM provisioning](https://learn.microsoft.com/en-us/entra/identity/app-provisioning/use-scim-to-provision-users-and-groups).

INSEAD relevance: SSO (via SAML) and SCIM are gate criteria for the Approved tier.

### Sanctioned Sandbox (INSEAD definition, proposed)
A governed, ring-fenced environment, defined by a combination of policy, identity, approved tooling, dedicated repositories and technical boundaries rather than necessarily one physical system. Tier 0 (personal experiment) and Tier 1 (internal prototype) AI-assisted development can proceed there safely, with permitted data only and a defined exit path. Full definition: [02 - Sanctioned Sandbox Principles](02_Sanctioned_Sandbox_Principles.md).

### Secrets Management
The practice of generating, storing, rotating and revoking credentials (API keys, tokens, passwords) so they never appear in source code or prompts. Source: [OWASP Secrets Management Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Secrets_Management_Cheat_Sheet.html).

INSEAD relevance: a top failure mode of AI-assisted development is AI tools ingesting and repeating secrets. Sandbox rule: no institutional credentials in sandbox prompts, files or repos. Dedicated sandbox credentials only.

### Shadow IT (and Shadow AI)
Information technology used inside an organisation without institutional approval, visibility or control. Shadow AI is its current form: staff and students using personal AI accounts with institutional data. Source: [Gartner glossary: Shadow IT](https://www.gartner.com/en/information-technology/glossary/shadow-it).

INSEAD relevance: the sanctioned sandbox is the constructive alternative to shadow AI. The framework's goal is to channel existing usage into a governed space rather than ban it.

### SSO (Single Sign-On)
Authentication that lets a user access multiple applications with one institutional identity, centralising access control, provisioning and revocation. Source: [Microsoft Entra: What is single sign-on](https://learn.microsoft.com/en-us/entra/identity/enterprise-apps/what-is-single-sign-on).

INSEAD relevance: SSO is a gate criterion for Approved tools because it is what makes usage auditable and revocable at institutional scale.

## T

### Telemetry
Usage data a tool sends to its vendor, for example which completions are accepted, IDE events, or product-usage statistics. Telemetry is frequently retained even where code content is not, and is often excluded from "we don't train on your code" commitments. Source: [GitHub Docs: Copilot telemetry and audit](https://docs.github.com/en/copilot/managing-copilot/managing-github-copilot-in-your-organization/reviewing-audit-logs-for-copilot-business).

INSEAD relevance: when reviewing a tool's data policy, read the telemetry clause separately from the content clause. Both feed the auditability column of the matrix.

## V

### Vibe Coding
Colloquial term (coined by Andrej Karpathy, February 2025) for building software by describing what you want in natural language and accepting AI-generated code with little or no review, in his words "fully giving in to the vibes". Useful for exploration, hazardous as an engineering practice. Sources: [Wikipedia: Vibe coding](https://en.wikipedia.org/wiki/Vibe_coding); [Simon Willison: Not all AI-assisted programming is vibe coding](https://simonwillison.net/2025/Mar/19/vibe-coding/).

INSEAD relevance: acceptable in Tier 0/1 sandbox work, explicitly not acceptable for Tier 2/3 production. The framework governs the transition between the two.

## Z

### Zero Data Retention (ZDR)
A vendor option under which API requests and responses are not stored or logged by the vendor. Available for example on OpenAI's API for eligible organisations, and offered by Anthropic for qualifying customers. Source: [OpenAI: Enterprise privacy](https://openai.com/enterprise-privacy/).

INSEAD relevance: ZDR strengthens but does not replace data classification. Data still transits the vendor, so Amber/Red data decisions rest with Workstream 2's classification, not with ZDR alone.

---

*Working note: external URLs in this document were checked on 3 September 2026 and are re-verified in the final consistency pass (see 05 - Sources and References). Terms specific to this framework are marked "(INSEAD definition, proposed)".*
