# Key Findings and Recommendations

> Workstream 1 | INSEAD AI-Assisted Application Development Framework | Version 0.1 (draft) | 3 September 2026
>
> Workstream 1 documents: [01 - Tool Assessment Matrix](01_Tool_Assessment_Matrix.md) | [02 - Sanctioned Sandbox Principles](02_Sanctioned_Sandbox_Principles.md) | [03 - Tool Profiles](03_Tool_Profiles.md) | [04 - Key Findings & Recommendations](04_Key_Findings_and_Recommendations.md) | [05 - Sources and References](05_Sources_and_References.md) | [06 - Glossary](06_Glossary.md) | [07 - Dependencies and Handoffs](07_Dependencies_and_Handoffs.md)
>
> Executive summary for the AI Development Tools & Safe Development Environments workstream. Evidence base: [01 - Tool Assessment Matrix](01_Tool_Assessment_Matrix.md), [02 - Sanctioned Sandbox Principles](02_Sanctioned_Sandbox_Principles.md), [03 - Tool Profiles](03_Tool_Profiles.md), [05 - Sources and References](05_Sources_and_References.md).

## 1. Key findings

1. The market has split into three tool classes with different governance shapes. IDE assistants (Copilot, Cursor, Windsurf, JetBrains AI) live inside the developer's editor. Browser app builders (Replit, Lovable, Bolt.new, v0) turn prompts into deployed apps for non-developers. Agentic CLIs (Claude Code, Codex, Gemini CLI, Cline, Aider, OpenHands) run semi-autonomously in the terminal. Each class needs a different rule shape: assistants need tier controls, builders need data and hosting rules, CLIs need endpoint and secrets rules.
2. Enterprise tiers have converged on the controls INSEAD actually needs. SAML SSO with SCIM provisioning, contractual no-training commitments, audit logs, content exclusion or privacy modes, data residency options and IP indemnity now exist on the enterprise tier of almost every major tool. The Approved versus Experimental difference is almost never the tool. It is the tier, and whether that tier is configured.
3. The free and consumer tiers are where the risk lives, and that is where students sit by default. Training clauses appear there (Amazon Q Developer's free tier under [AWS Service Terms section 50.13](https://aws.amazon.com/service-terms/), Replit's machine-learning improvement rights, Lovable's free-tier default), with no SSO and no audit. The framework's main job is channelling hundreds of default-free-tier users into a governed space.
4. GitHub and Microsoft form the deepest Approved stack. Copilot Business/Enterprise provides SSO, SCIM, content exclusions, audit events, a global model policy (GA August 2026), US and EU data residency (April 2026) and IP indemnity. Azure OpenAI adds [no-training commitments](https://learn.microsoft.com/en-us/azure/ai-foundry/responsible-ai/openai/data-privacy), content filters, monitoring and the [EU Data Boundary](https://learn.microsoft.com/en-us/privacy/eudb/). Note the [June 2026 shift of Copilot to usage-based billing](https://github.blog/news-insights/github-copilot-is-moving-to-usage-based-billing/): budgets now need monitoring, not just a per-seat forecast.
5. EU data residency is a solved category if INSEAD buys the right tier. Azure EU Data Boundary, Copilot Enterprise EU residency, Lovable's region selection and Cursor's residency program all exist today. The remaining residency questions are about specific tiers and about Microsoft's documented exceptions for optional capabilities.
6. Agency is the new axis of risk. Copilot's coding agent, Claude Code, Replit Agent and Devin move from suggesting code to acting on repositories. [OWASP LLM08 (Excessive Agency)](https://genai.owasp.org/llmrisk/llm08-excessive-agency/) applies to the development loop itself, not just to applications INSEAD builds. Review gates on agentic changes matter as much as data rules.
7. The community is debating AI code quality right now. In the last 30 days (engine data, 2026-08-04 to 2026-09-03) the top threads were "New codebase + AI code smells" on r/ExperiencedDevs (156 points, 203 comments) and "AI coding has made me dramatically faster" on r/ChatGPTCoding, while Meta launched its [Muse Code and Muse Spark](https://venturebeat.com/orchestration/meta-enters-the-ai-coding-wars-with-muse-spark-1-2-and-muse-code-with-persistent-async-background-agents) coding agent. The tool market moves fast enough that the register needs a quarterly review cadence, and code review standards need to assume AI-generated code by default.
8. Education entitlements are shifting. GitHub's free student Copilot is reportedly being reduced (flagged for re-verification each term), and vendor student discounts exist but with thin published terms. INSEAD cannot plan Amber-data work on free-tier assumptions.
9. Open-source BYOK tools are a governance pattern, not a vendor risk. Cline, Aider, OpenHands and Continue.dev add no new data controller. Pointed at an institutional gateway (Azure OpenAI or an enterprise API), they inherit enterprise protections; pointed at personal keys, they create leak and spend risk with no audit.
10. The sandbox is implementable now. Identity, a dedicated GitHub organisation, a tool register, data rules and named owners are configuration and policy, not a build project. The expensive part is the one thing INSEAD must do anyway: procuring at least one enterprise-grade stack.

## Numbers in brief

- 22 tools assessed across four groups, plus 4 emerging entries on the watchlist (Document 01).
- Verdicts: 15 Approved (5 of them conditional on vendor confirmation), 7 Experimental, 1 Restricted, 2 watchlist, 1 resource.
- The matrix carries 90+ source links, every one HTTP-checked on 3 September 2026.
- The approved default stack (GitHub Copilot Business/Enterprise plus Azure OpenAI) meets every gate criterion: SSO, SCIM, no-training terms, audit logs, content exclusions, EU residency, IP indemnity.
- 36 facts remain flagged "To be researched", each naming the exact page that will close it.

## Trade-offs accepted in this version

1. Speed against certainty: five Approved verdicts are conditional rather than delayed, so procurement closes them instead of the research phase. The cost is that leadership must read the condition inside the verdict.
2. Reach against audit: Experimental tools on personal accounts accept that Tier 0 work has no institutional audit trail. The trade is Green-only data and a registration requirement the moment work becomes Tier 1.
3. Strictness against usability: Red data never enters the sandbox, which is the safe default but pushes legitimate Red-data projects straight into formal review. Workstream 2 can relax this once its classification and DPIA thresholds exist.
4. Minimal stack against optionality: the recommended Approved set starts with GitHub and Microsoft only, which is cheaper and easier to operate but leaves strong tools (Cursor, Lovable) on the conditional list until the first quarterly review.

## 2. Proposed structure of the final deliverable

Workstream 1 feeds the framework at the BUILD SAFELY stage and answers the "where and with which tools" question for every tier:

- [01 - Tool Assessment Matrix](01_Tool_Assessment_Matrix.md): the evidence table, one row per tool and tier, with named sources and explicit "to be researched" flags.
- [02 - Sanctioned Sandbox Principles](02_Sanctioned_Sandbox_Principles.md): the environment definition (separation, data rules, identity, register, ownership, review) and the Approved / Experimental / Restricted definitions.
- [03 - Tool Profiles](03_Tool_Profiles.md): readable per-tool profiles behind the matrix.
- [04 - Key Findings and Recommendations](04_Key_Findings_and_Recommendations.md): this document, the checkpoint artefact for leadership.
- [05 - Sources and References](05_Sources_and_References.md): the categorised reference list.
- [06 - Glossary](06_Glossary.md): shared vocabulary, including the terms Workstreams 2 and 3 will reuse.

In the framework pipeline, IDEA to CLASSIFY uses the risk tiers; BUILD SAFELY uses Documents 01, 02 and 03; TEST/REVIEW and PROMOTE use Workstream 3's gate; OWN/MONITOR/RETIRE uses Workstream 3's lifecycle model. Workstream 2's data classification sits between CLASSIFY and BUILD SAFELY and is the dependency flagged in Section 6.

## 3. Top recommendations

1. Adopt the three-category tool register (Approved / Experimental / Restricted) as policy, published and reviewed quarterly, with a two-week fast track for adding new tools.
2. Procure the Approved stack now: GitHub Copilot Business/Enterprise with SSO, content exclusions, model policy and audit enabled, plus Azure OpenAI Service for EU-sensitive model workloads. Budget for usage-based Copilot billing and Azure spend alerts.
3. Stand up the sandbox before the next academic term: dedicated GitHub organisation, sandbox cloud subscription with spend alerts, secrets manager, and a two-minute project registry.
4. Mandate institutional accounts for institutional work, stated in one line of the Acceptable Use Policy, enforced through SSO provisioning.
5. Ship the 15-minute onboarding module and AUP acknowledgment as the gate to sandbox access, with the two plain-language data tests from Document 02.
6. Default Experimental tools to Green data, and print that rule on the register itself, so the consumer-tier long tail becomes safe without being banned.
7. Require a named owner and a registry entry for every sandbox project, creating the audit trail and the ownership record that promotion will need.
8. Define the promotion trigger: a prototype leaves the sandbox only through Workstream 3's gate and outcome routes (adopt, rebuild, vendor, roadmap, stop).
9. Instrument what exists: Copilot Enterprise audit logs, Azure activity logs and registry metrics, reviewed quarterly to spot shadow-AI hotspots.
10. Run the four representative scenarios (student event app, learning-platform analytics, AI assistant on student submissions, student app proposed for deployment) against the sandbox before sign-off. If the sandbox cannot answer each scenario's questions quickly, it is not ready.

## 4. Key decisions needed

These are decisions INSEAD leadership must make, with the workstream's recommended default in brackets:

1. Budget envelope for the Approved stack, including the new usage-based Copilot billing model. [Recommend: Business or Enterprise seats for staff and developers, plus an Azure OpenAI subscription with spend alerts.]
2. Student provisioning model: institutional Business seats versus free GitHub Education accounts. [Recommend: Education accounts as the Experimental default, sponsored seats when a project reaches Amber data or team scale.]
3. Sandbox placement: a separate GitHub organisation versus a namespace inside the existing estate. [Recommend: separate organisation, reviewed against administration overhead.]
4. Who owns the tool register and its quarterly review. [Recommend: Digital/IT operates it, the AI governance working group approves verdicts.]
5. IP position on AI-generated code, separately for student coursework and staff work. [Needs Legal; feeds Workstream 3's ownership model.]
6. Risk appetite for the first register: a minimal Approved stack (GitHub/Microsoft only) versus a wider one including Cursor Teams, Lovable Business and JetBrains AI. [Recommend: start minimal, admit more at the first quarterly review.]
7. Autonomous agents (Devin and similar): confirm the Restricted default until enterprise controls are verified. [Recommend: yes.]
8. EU-first data posture: confirm that Amber/Red workloads default to Azure EU regions and EU Data Boundary, with exceptions documented. [Recommend: yes.]

## 5. Open questions requiring stakeholder input

1. Where does "Amber with review" get reviewed, and by whom? (Proposed: a lightweight data-use note reviewed by Digital/IT.)
2. Do we tolerate Experimental tools on personal accounts for institutional prototyping, or require registration for everything? (Trade-off: visibility versus friction.)
3. How do visiting faculty, PhD researchers and short-stay users fit the institutional-account rule? (Needs HR and IT input.)
4. Which telemetry is acceptable on Approved tools, given that telemetry clauses are usually separate from content clauses? (Needs Data Protection input.)
5. What does procurement need from vendors beyond DPAs: indemnity wording, audit rights, breach notification? (Needs Legal and Procurement.)
6. Are there INSEAD-specific data rules (beyond the working Green/Amber/Red hypothesis) that override the vendor-tier analysis, for example for research data? (Needs Workstream 2.)

## 6. Gaps and dependencies on other workstreams

From Workstream 2 (Data, Privacy, Cybersecurity and AI Risk):

- The final Green / Amber / Red classification model. The sandbox currently runs on the working hypothesis from the brief.
- A decision table for "can I put this data into this tool", per tool category and data class.
- DPIA guidance and thresholds for when Cybersecurity must be involved.
- Secrets and credential handling standards for sandbox projects.
- The AI-specific control list (prompt injection, excessive agency, disclosure) that Tier 2/3 promotion will require.

From Workstream 3 (Prototype-to-Production, Ownership and Sustainability):

- The production-readiness gate and checklist that the sandbox exit triggers.
- The ownership and lifecycle model, including what happens when a creator leaves.
- Approved hosting and SSO standards, expected to align with the Azure path proposed here.
- The definition of a "reviewed integration" for sandbox-to-system connections.

From other INSEAD functions: Legal and Procurement (DPA and indemnity review per tool, vendor onboarding), Digital/IT (identity integration, effort estimates), Learning and Talent (onboarding module), and Communications (how the register and AUP are published to students and staff).

---

## Key sources for this summary

- Tool matrix with per-fact citations: [01 - Tool Assessment Matrix](01_Tool_Assessment_Matrix.md)
- GitHub Copilot usage-based billing: <https://github.blog/news-insights/github-copilot-is-moving-to-usage-based-billing/>
- Copilot global model policy (GA Aug 2026): <https://github.blog/changelog/2026-08-26-global-model-policy-generally-available/>
- Copilot data residency (US/EU/FedRAMP): <https://docs.github.com/en/enterprise-cloud@latest/admin/data-residency/github-copilot-with-data-residency>
- Azure OpenAI data privacy: <https://learn.microsoft.com/en-us/azure/ai-foundry/responsible-ai/openai/data-privacy>
- Microsoft EU Data Boundary: <https://learn.microsoft.com/en-us/privacy/eudb/>
- AWS Service Terms section 50.13: <https://aws.amazon.com/service-terms/>
- OWASP LLM08 Excessive Agency: <https://genai.owasp.org/llmrisk/llm08-excessive-agency/>
- Community evidence (AI code smells): <https://www.reddit.com/r/ExperiencedDevs/comments/1vvj60z/new_codebase_ai_code_smells/>
- Muse Code launch coverage: <https://venturebeat.com/orchestration/meta-enters-the-ai-coding-wars-with-muse-spark-1-2-and-muse-code-with-persistent-async-background-agents>
- Harvard HUIT AI Sandbox precedent: <https://harvard.service-now.com/ithelp?id=kb_article&sys_id=ca9dd14447f07950566cf147536d433b>
- Full source list: [05 - Sources and References](05_Sources_and_References.md)

---

*Working note: findings 1 through 10 cite the matrix and profiles, whose vendor facts carry named sources accessed 3 September 2026. Community signals in finding 7 come from the last30days research engine runs saved under Documents/Last30Days (raw files new-ai-coding-tools-raw-2026-09-03.md and ai-development-tools-discover-raw.md) and are identified as community evidence, not vendor commitments.*
