# Tool Profiles

> Workstream 1 | INSEAD AI-Assisted Application Development Framework | Version 0.1 (draft) | 3 September 2026
>
> One profile per tool in [01 - Tool Assessment Matrix](01_Tool_Assessment_Matrix.md). Each profile covers what the tool does, how it fits an institution like INSEAD, what happens to data, and where it should sit (Approved / Experimental / Restricted). Sources are given inline and consolidated in [05 - Sources and References](05_Sources_and_References.md).

## GitHub Copilot (all tiers)

### Overview
Copilot is the AI coding assistant embedded across GitHub's surfaces: VS Code, JetBrains, Visual Studio, GitHub.com and the CLI. It does code completion, chat about a codebase, code review, and now agentic work through the Copilot coding agent, which plans changes and opens pull requests from an issue or spec. The Copilot CLI reached general availability in February 2026. Plans run from a free tier through Pro (about $10 per user/month), Business (about $19) and Enterprise (about $39). From 1 June 2026 GitHub moved Copilot to usage-based billing, where the base subscription stays and consumption is metered in AI credits and premium requests. Sources: [Copilot plans](https://github.com/features/copilot/plans), [usage-based billing announcement](https://github.blog/news-insights/github-copilot-is-moving-to-usage-based-billing/), [Copilot CLI GA changelog](https://github.blog/changelog/2026-02-25-github-copilot-cli-is-now-generally-available/).

### Institutional assessment
The strengths are exactly the things an institution needs: on Business and Enterprise tiers, SAML SSO with SCIM provisioning (Enterprise can enforce SSO through Enterprise Managed Users), content exclusions that keep specified repositories and files out of suggestions, Copilot audit-log events, an enterprise policy that controls which models are available (global model policy reached GA in August 2026), US and EU data residency options since April 2026, and IP indemnity through the Microsoft Customer Copyright Commitment. The weaknesses are the tier split and the billing change. Free and Pro are individual plans with none of the org controls, so they cannot be the basis for institutional work. The June 2026 switch to usage-based billing also means budgets need monitoring rather than a flat per-seat forecast, and the exact credit rates still need confirmation against the billing docs. The education route (free Copilot for verified students and teachers) is valuable but sits on individual accounts, and 2026 community discussion suggests the student benefit is being reduced, which Digital/IT should re-verify each term. Sources: [GitHub Docs: Copilot](https://docs.github.com/en/copilot), [content exclusions](https://docs.github.com/en/copilot/how-tos/configure-content-exclusion/review-changes), [audit log events](https://docs.github.com/en/enterprise-cloud@latest/admin/monitoring-activity-in-your-enterprise/reviewing-audit-logs-for-your-enterprise/audit-log-events-for-your-enterprise), [global model policy](https://github.blog/changelog/2026-08-26-global-model-policy-generally-available/), [data residency](https://docs.github.com/en/enterprise-cloud@latest/admin/data-residency/github-copilot-with-data-residency), [GitHub Education](https://education.github.com), [student plan discussion](https://github.com/orgs/community/discussions/194918).

### Data and privacy considerations
On Business and Enterprise, prompts and suggestions are not retained for training, and private code is not used to train models. Telemetry is a separate stream and is retained, so the telemetry clause should be read apart from the content clause. Content exclusions are the main IP control: an administrator can mark repositories or files so Copilot never uses them for suggestions, which is the standard defence for IP-sensitive codebases. None of this exists on Free/Pro. Source: [GitHub Trust Center](https://github.com/trust-center).

### Recommendation
Approved on Business/Enterprise, provided Digital/IT configures SSO, SCIM, content exclusions, the model policy and audit log review. Free/Pro and the GitHub Education route are Experimental: Green data only. This is the anchor tool of the Approved stack proposed in Document 02.

## GitHub Copilot Workspace / coding agent

### Overview
Copilot Workspace started as GitHub Next's agentic preview: you describe a task or open an issue, and the agent plans the change, edits the code and opens a pull request. It has since shipped as the Copilot coding agent across plans, metered through AI credits, alongside the Copilot CLI. Source: [GitHub Next: Copilot Workspace](https://githubnext.com/projects/copilot-workspace).

### Institutional assessment
This is the fastest route from idea to working prototype inside the GitHub estate, which matters for Tier 0 and Tier 1 work. It inherits whatever controls the underlying plan has, so it is only institutionally safe on Business/Enterprise. The risk is agency: the tool edits and proposes changes at machine speed, and OWASP's Excessive Agency risk (LLM08) applies to the development loop itself, not just to applications INSEAD builds. Agentic pull requests deserve the same review a junior developer's pull request would get. Source: [OWASP LLM08: Excessive Agency](https://genai.owasp.org/llmrisk/llm08-excessive-agency/).

### Data and privacy considerations
Same policy as the plan it runs on. On Business/Enterprise that means no training on code or prompts, with content exclusions and audit events available. On Free/Pro the individual-tier policy applies.

### Recommendation
Approved for developers on Business/Enterprise with a review gate on agentic changes. Experimental on Free/Pro with public/synthetic data only.

## GitHub Education

### Overview
GitHub Education gives verified students, teachers and open-source maintainers free access to Copilot, and students also get GitHub Pro benefits. Verification is individual (student ID or similar) rather than via INSEAD SSO. Sources: [GitHub Education](https://education.github.com), [free Copilot for students and teachers](https://docs.github.com/en/copilot/managing-copilot/managing-copilot-as-an-individual-subscriber/managing-your-copilot-subscription/getting-free-access-to-copilot-as-a-student-teacher-or-maintainer).

### Institutional assessment
This is the practical way hundreds of students get Copilot without INSEAD paying per seat. The trade-off is the absence of org controls: no SSO, no audit, no content exclusions, individual accounts only. Community discussion in 2026 indicates the student entitlement (premium requests and model access) is being reduced, so the value of the offer needs re-checking each term. Source: [student plan discussion](https://github.com/orgs/community/discussions/194918).

### Data and privacy considerations
Individual-tier policy applies: the Free/Pro retention and training defaults apply, and there are no org-level exclusions. This is why coursework guidance should keep Education-account use on Green data.

### Recommendation
Experimental (Green data only) as the default student route. Where a student project moves to Amber data or needs a team repository, INSEAD should sponsor Business seats instead of relying on the education route.

## GitHub Models

### Overview
GitHub Models is a playground and API inside GitHub for trying many models (OpenAI, Anthropic, Meta and others) without separate provider accounts. There is a free tier with rate limits, paid tiers for higher limits, and an upgrade path to Foundry Models on Azure. Source: [GitHub Docs: GitHub Models](https://docs.github.com/en/github-models/about-github-models).

### Institutional assessment
Useful for teaching, demos and quick model comparisons, especially because it reuses the GitHub account students already have. It is not an enterprise service: org-level controls and data residency commitments are thin or undocumented, which keeps it out of institutional data work.

### Data and privacy considerations
Data handling depends on the hosted model provider, and GitHub's service-level commitments for Models are not equivalent to Copilot Business/Enterprise or Azure OpenAI. Org-level controls: to be researched against the GitHub Models docs.

### Recommendation
Experimental: education and prototyping on public data only. For anything Amber or destined for production, route to Azure OpenAI instead.

## Azure AI Foundry + Azure OpenAI Service

### Overview
Azure AI Foundry is Microsoft's platform for building and operating AI applications, and Azure OpenAI Service is the managed gateway to OpenAI models inside Azure: token-based API, provisioned throughput, content safety filters, monitoring and enterprise identity. It is a model platform rather than a coding assistant, which is what makes it the build target for applications rather than the autocomplete layer. Sources: [Azure AI Foundry docs](https://learn.microsoft.com/en-us/azure/ai-foundry), [data privacy](https://learn.microsoft.com/en-us/azure/ai-foundry/responsible-ai/openai/data-privacy).

### Institutional assessment
This is the strongest compliance posture of the tools assessed: Microsoft Entra ID with RBAC, the documented commitment that customer prompts and completions are not used to train Microsoft or OpenAI models and are not shared with OpenAI or other customers, configurable content filters with custom blocklists, Azure Monitor diagnostics, private networking, and the Microsoft EU Data Boundary with EU regional deployment (France Central, Sweden Central). Azure for Students and academic credits make it affordable for teaching. The trade-offs: it is not an IDE assistant, so it complements rather than replaces Copilot, and pay-as-you-go token costs need budgets and alerts. Sources: [content filters](https://learn.microsoft.com/en-us/azure/ai-foundry/openai/concepts/content-filter), [EU Data Boundary](https://learn.microsoft.com/en-us/privacy/eudb/), [Azure for Education](https://azure.microsoft.com/en-us/pricing/offers/education).

### Data and privacy considerations
No training on customer content, no sharing with OpenAI or other customers, and EU residency. The caveat is documented in Microsoft's EU Data Boundary material: some optional capabilities can transfer data out of the EU, so those capabilities should stay off for Amber/Red workloads until Workstream 2 reviews them. Source: [EU Data Boundary transfers for optional capabilities](https://learn.microsoft.com/en-us/privacy/eudb/eu-data-boundary-transfers-for-optional-capabilities).

### Recommendation
Approved, and the preferred route for any INSEAD workload with EU privacy requirements. Pair it with content filters, diagnostic logging and Entra ID, and treat it as the natural hosting path for prototypes that will later promote to Tier 2.

## Cursor (Anysphere)

### Overview
Cursor is an AI-native editor built on VS Code, with an agentic layer that can edit, run and explain code. Plans run from a free Hobby tier through Pro (from $20/month), Teams (Standard $40 and Premium $120 per user/month) to Enterprise (custom). Sources: [Cursor pricing](https://cursor.com/pricing), [Cursor enterprise privacy and data governance](https://cursor.com/docs/enterprise/privacy-and-data-governance).

### Institutional assessment
The Teams and Enterprise tiers carry the controls INSEAD would need: SAML/OIDC SSO (SCIM and invoicing on Enterprise), an admin API for usage and spend, enterprise compliance logging, model access controls with blocklists and per-group limits, and a data residency program with customer-managed encryption keys on Enterprise. Cursor publishes SOC 2 Type II, ISO 27001 and ISO 42001 certifications. The main gaps are at the bottom of the stack: the student program exists but its terms were not verifiable, and individual plans only protect data if the user switches Privacy Mode on.

### Data and privacy considerations
Cursor states it does not use Inputs or Suggestions to train its models, except content flagged for security review or explicitly reported. A DPA and sub-processor list are published. Privacy Mode (code never used for training) is on by default for Enterprise, and most models run under zero-data-retention agreements, with a few models requiring admin approval. The Cloud Agents feature clones repositories to isolated encrypted virtual machines that are deleted after each run, and admins can disable it. Sources: [Cursor privacy](https://cursor.com/privacy), [Cursor security](https://cursor.com/security), [Cursor DPA](https://cursor.com/terms/dpa).

### Recommendation
Approved on Teams/Enterprise with Privacy Mode enforced and SSO configured. Experimental for students and individual plans (Green data only).

## Replit (including Replit Agent)

### Overview
Replit is a browser-based IDE with hosting, collaboration and, since 2025, the Replit Agent that builds and deploys applications from prompts. Plans: free, Core $20/month, Pro $100/month, Enterprise custom. A Teams for Education offer exists, but its terms were not verifiable this round. Source: [Replit pricing](https://replit.com/pricing).

### Institutional assessment
Replit's classroom workflow is genuinely useful, and the Enterprise plan provides SAML SSO, single-tenant environments and static outbound IPs. The problems sit in the data story: the privacy policy reserves the right to use personal data to improve machine learning technologies such as code generation, the classic public-repl training clause was not located in the current terms, and audit logging is not documented on the pages that could be fetched. For an institution, that is the difference between "good product" and "verifiable product".

### Data and privacy considerations
Users retain ownership of their content, while Replit holds a licence to host and serve it and may access private apps for troubleshooting and security. Sources: [Replit privacy](https://replit.com/site/privacy), [Replit terms](https://replit.com/site/terms).

### Recommendation
Experimental by default (public/synthetic data). Approved only on the Enterprise plan after Digital/IT confirms the training, retention and audit terms contractually, and after checking Teams for Education eligibility with Replit.

## Lovable

### Overview
Lovable generates working web applications from natural-language prompts, with connectors to GitHub and Supabase for database and auth. It is a Swedish company, which matters for EU institutions. Plans are credit-based rather than per-seat: Free, Pro, Business, Enterprise, with a confirmed student discount. Sources: [Lovable pricing](https://lovable.dev/pricing), [Lovable students](https://lovable.dev/students).

### Institutional assessment
For an EU institution this is one of the better builder options. Enterprise carries SAML/OIDC SSO (Okta, Entra ID, Google) with SCIM, server-side RBAC and approve/publish guardrails, centralised logging with one-year retention and user attribution for publishing events, SOC 2 Type II audits, and a region-selection promise for data. The weakness is the free tiers: Free and Pro train on data by default (an opt-out exists in settings), which is fine for Green data but disqualifying for anything else.

### Data and privacy considerations
Business and Enterprise data is not used for training; only anonymised and aggregated data is used otherwise, and Lovable says it never trains general-purpose models on your data without permission. You own your code, customer data and AI outputs. GDPR and UK GDPR terms, a DPA and SCCs are published. Sources: [Lovable privacy](https://lovable.dev/privacy), [Lovable security](https://lovable.dev/security).

### Recommendation
Approved on Business/Enterprise. Experimental on Free/Pro, with the opt-out guidance included in the sandbox onboarding for students.

## Bolt.new (StackBlitz)

### Overview
Bolt.new builds and runs full-stack applications in the browser on WebContainers, StackBlitz's technology for running the Node toolchain locally inside the browser tab. Bolt plans: free, Pro $25/month, Teams $30 per member/month, Enterprise custom. Source: [Bolt pricing](https://bolt.new/pricing).

### Institutional assessment
The free tier is an excellent no-install starting point for students. Enterprise offers SAML2 SSO, audit logs and an admin portal, and can be deployed as a self-hosted single-tenant Kubernetes instance for strict residency requirements. The weakness is documentation: the AI training and retention policy could not be located on the pages that could be fetched, which means the free and Pro tiers cannot be cleared for institutional data until that policy is read.

### Data and privacy considerations
StackBlitz's terms state it does not claim ownership of your data or content, and the WebContainers architecture means code executes in the browser rather than on StackBlitz servers, which reduces IP egress. Sources: [StackBlitz enterprise](https://stackblitz.com/enterprise), [StackBlitz terms of service](https://stackblitz.com/terms-of-service). The training policy itself: to be researched at bolt.new/privacy and the StackBlitz legal pages.

### Recommendation
Experimental on free/Pro/Teams (Green data only). Approved only via Enterprise after confirming the data processing agreement and training terms.

## Windsurf (Codeium)

### Overview
Windsurf is an AI-native editor (a VS Code fork) with the Cascade agent. Plans: Pro $20/month, Max $200/month, Teams from $80/month plus $40 per developer seat, Enterprise custom. Official pricing pages are JavaScript-rendered, so the figures come from a third-party guide and need verification. Sources: [Windsurf security](https://windsurf.com/security), [third-party Windsurf business guide](https://www.layer3labs.io/guides/windsurf-for-business).

### Institutional assessment
The compliance posture is strong: zero-data-retention by default on all paid plans, SOC 2 Type II and FedRAMP High, HIPAA BAA available on Enterprise, and cloud, hybrid and self-hosted deployment options. Indexing is local, only prompts and cursor context leave the machine, and .codeiumignore excludes files. Two flags: 2026 press reports associate Windsurf with a change of ownership (Cognition), which INSEAD should verify before any procurement, and the official pages need a browser to read. Sources: [Codeium privacy policy](https://codeium.com/privacy-policy), [Windsurf docs](https://docs.windsurf.com).

### Data and privacy considerations
Self-hosting keeps code on-prem; the zero-retention cloud path is the fallback for paid plans. Admin dashboard and audit specifics should be confirmed at windsurf.com/security.

### Recommendation
Approved on Enterprise (preferably self-hosted). Experimental on individual and Teams plans (Green data only). Verify ownership status first.

## JetBrains AI Assistant

### Overview
JetBrains AI Assistant brings code completion, chat and agentic features into the IntelliJ family of IDEs, licensed per user as AI Pro or AI Ultimate, with education licences through the JetBrains education program. Source: [JetBrains AI](https://www.jetbrains.com/ai/).

### Institutional assessment
JetBrains is an EU vendor (Czech headquarters), and its documented data handling is notably restrained: prompts and code fragments are sent to the LLM provider, while detailed data collection is opt-in, kept confidential, not shared with external parties, and not used to train any models that generate code or text. Users retain rights to inputs and outputs. The gaps are administrative rather than technical: the enterprise licensing and SSO details and the regional processing options need confirmation from JetBrains. Source: [how JetBrains handles your code and data](https://www.jetbrains.com/help/ai-assistant/2025.2/how-we-handle-your-code-and-data.html).

### Data and privacy considerations
Retention and deletion are managed through the JetBrains Account, with opt-out controls.

### Recommendation
Approved with org licensing, especially for teams already on JetBrains IDEs. Confirm enterprise SSO and regional processing with JetBrains before procurement.

## Amazon Q Developer

### Overview
Amazon Q Developer is AWS's assistant across the IDE (VS Code, JetBrains), the command line and the AWS console, with agentic features for code, tests and infrastructure. Plans: a free tier (about 50 agentic requests per month) and Pro at $19 per user/month. Source: [Amazon Q Developer pricing](https://aws.amazon.com/q/developer/pricing/).

### Institutional assessment
Pro carries what an institution needs: IAM Identity Center support with admin dashboards and controls, IP indemnity, and CloudWatch Logs and CloudTrail integration for audit. The load-bearing flag is the free tier: AWS Service Terms section 50.13 says free tier content may be used for service improvement, while Pro content is not used to train or improve models. Source: [AWS Service Terms](https://aws.amazon.com/service-terms/).

### Data and privacy considerations
Customer content is governed by the AWS Customer Agreement, with IP indemnity on Pro. Regional and security specifics should be confirmed at the Q Developer security page. Source: [Amazon Q Developer security](https://aws.amazon.com/q/developer/security/).

### Recommendation
Approved on Pro only, and clearly documented that the free tier is for learning with Green data, never institutional data.

## v0 by Vercel

### Overview
v0 generates React and Next.js front-ends from prompts and deploys them to Vercel. Plans: free, Premium $20/month, Team $30 per user/month, Business $100 per user/month, Enterprise custom. Sources: [v0](https://v0.app), [third-party pricing summary](https://www.bworlds.co/learn/v0-pricing/) (official cards are JavaScript-rendered; verify at v0.app/pricing).

### Institutional assessment
The Business tier excludes prompts and code from AI training, and Enterprise adds SSO and platform logging, with Vercel acting as a data processor for customer data. The exact tier boundaries (SSO, training opt-out, regional data options) need verification on the official pages before the Approved verdict is relied on. Source: [Vercel privacy policy](https://vercel.com/legal/privacy-policy).

### Data and privacy considerations
Lower tiers may use data for training with opt-out controls; Business and above do not.

### Recommendation
Approved on Business/Enterprise once the tier specifics are verified. Experimental below that (Green data only).

## Devin (Cognition)

### Overview
Devin is an autonomous software engineer agent: it plans, writes code, runs commands and opens pull requests inside cloud sandboxes. Plans: free, Pro $20/month, Max $200/month, Teams usage-based from $80/month, Enterprise custom. Sources: [new self-serve plans](https://cognition.com/blog/new-self-serve-plans-for-devin), [devin.ai](https://devin.ai).

### Institutional assessment
This is the highest-agency tool assessed, which means the highest blast radius: an autonomous cloud agent with repository access can spend money, expose keys and make destructive changes quickly. SSO, session logs and enterprise controls exist but only on Enterprise, and the training, retention and residency specifics are not publicly verifiable.

### Data and privacy considerations
Enterprise controls and sandboxed VMs are documented at a high level only. The training, retention, residency and audit specifics: to be researched at devin.ai/security before any consideration.

### Recommendation
Restricted by default. Approved only under an Enterprise contract after Digital/IT and Cybersecurity verify the controls, and then only for tightly scoped repositories.

## Tabnine

### Overview
Tabnine is a privacy-first AI code assistant with IDE plugins (VS Code, JetBrains) and a CLI, aimed at teams that need strict control over where code goes. Deployment options include cloud, self-hosted, VPC and air-gapped enterprise installations. Pricing runs about $9 per user/month for Dev and about $39 for Enterprise (verify on the pricing page). Sources: [deployment options](https://docs.tabnine.com/main/welcome/readme/architecture/deployment-options), [pricing](https://www.tabnine.com/pricing/).

### Institutional assessment
The selling point is the privacy story: zero data retention, no training on your code, SOC 2, SSO/SAML on Enterprise, and an admin console for usage. A self-hosted or air-gapped deployment removes code egress entirely, which makes Tabnine the obvious candidate for research code or anything INSEAD does not want leaving campus. The trade-offs: a smaller education offering, and audit depth beyond the admin console still needs confirmation.

### Data and privacy considerations
The code privacy page states models are not trained on your code and data is not retained; self-hosted deployment keeps everything inside the institutional boundary. Source: [Tabnine code privacy](https://www.tabnine.com/code-privacy/).

### Recommendation
Approved for privacy-sensitive projects via the self-hosted Enterprise path. Experimental on the cloud plans (Green data only). Worth evaluating alongside Copilot for research and faculty code.

## Microsoft 365 Copilot (adjacent tooling)

### Overview
Microsoft 365 Copilot is the Office productivity assistant ($30 per user/month, with a free Copilot Chat tier). It is not an application-development tool, but the brief lists Microsoft/GitHub tooling among the tools to assess, and staff will ask about it, so the register should cover it. Source: [Microsoft 365 Copilot](https://www.microsoft.com/en-us/microsoft-365/copilot).

### Institutional assessment
The enterprise controls are real: Entra ID SSO with Conditional Access, Purview eDiscovery and audit of Copilot interactions, tenant isolation, and the EU Data Boundary. Copilot Studio connectors can be used to build lightweight apps and agents, and anything built there falls under the same sandbox and promotion rules as any other tool. One flag to resolve with Microsoft: flex routing can route some processing outside the EU unless configured otherwise. Sources: [Copilot privacy](https://learn.microsoft.com/en-us/copilot/microsoft-365/microsoft-365-copilot-privacy), [Microsoft Purview](https://learn.microsoft.com/en-us/purview/), [third-party residency analysis](https://www.kriv.ai/articles/data-residency-and-sovereignty-controls-for-copilot).

### Data and privacy considerations
Microsoft states it does not train models on tenant data. The flex-routing caveat matters for the France campus and should be verified in the tenant configuration before Amber data flows through Copilot.

### Recommendation
Approved for staff productivity with the EU Data Boundary and flex-routing settings confirmed. It sits outside the application-development sandbox scope, but listing it in the register keeps the "is this allowed" question answered in one place.

## Open-source agentic CLIs (Cline, Aider, OpenHands, Continue.dev)

### Overview
These are the open-source tools technical users run locally: Cline (VS Code extension), Aider (terminal), OpenHands (Docker-based agent) and Continue.dev (IDE assistant). All are free software where the user supplies their own model API key (BYOK). Sources: [Cline](https://github.com/cline/cline), [Aider](https://aider.chat), [OpenHands](https://openhands.dev), [Continue.dev](https://continue.dev).

### Institutional assessment
Code stays on the local machine, and only the context the user sends reaches the model provider, so the tools themselves introduce no new data controller. The governance gap is institutional, not vendor: no SSO, no audit trail, no central key vault, and unmanaged spend when users attach personal or shared API keys.

### Data and privacy considerations
Everything depends on the endpoint. Pointed at an institutional gateway (Azure OpenAI or an enterprise API with zero-data-retention terms), these tools inherit enterprise protections. Pointed at a personal account, they inherit consumer terms, and keys stored in local config files become a leak risk.

### Recommendation
Approved for developers and students when configured against the institutional BYOK endpoint, with the secrets rules from Document 02 applied. Experimental when used with personal keys (Green data only).

*Note on model names: during research, some vendor pages served model and product names that could not be independently corroborated (for example unusual model labels in Cursor docs). The matrix therefore does not rely on specific model names; compliance facts (SSO, training terms, audit, residency) were verified against the cited pages. Re-verify model lists against the vendor pages at each quarterly register review.*

## OpenAI Codex (CLI + cloud)

### Overview
Codex is OpenAI's coding agent: an open-source CLI plus cloud tasks that run on ChatGPT accounts, with IDE integration. Plans run from free through Go/Plus/Pro on ChatGPT, and the tool can be pointed at an API key instead of a subscription. Sources: [OpenAI Codex docs](https://developers.openai.com/codex/), [OpenAI enterprise privacy](https://openai.com/enterprise-privacy/).

### Institutional assessment
The institutional story lives in the account tier. ChatGPT Enterprise and Edu accounts carry SAML SSO with SCIM provisioning, no training on your data by default, ownership of inputs and outputs, retention controls, a Compliance API for audit, and workspace-level model availability controls. Codex itself adds something unusual and useful: permission profiles (read-only, workspace, danger-full-access) that administrators can manage, which maps naturally onto the sandbox's least-privilege principle. On personal plans, none of the org controls exist. Sources: [your data controls](https://developers.openai.com/api/docs/guides/your-data), [permission modes](https://learn.chatgpt.com/docs/permissions), [compliance API](https://learn.chatgpt.com/docs/enterprise/compliance-api).

### Data and privacy considerations
API traffic has not been used for training since 1 March 2023, abuse logs are kept up to 30 days, and zero data retention is available to eligible customers. Europe and worldwide data residency options exist. Source: [data residency in Europe](https://openai.com/index/introducing-data-residency-in-europe/).

### Recommendation
Approved on Enterprise/Edu accounts with SAML, SCIM and the Compliance API enabled. Experimental on personal plans (Green data only).

## Claude Code (Anthropic)

### Overview
Claude Code is Anthropic's agentic coding tool for the terminal, IDE, desktop and web, backed by Claude plans (Pro/Max/Team/Enterprise). It reads the codebase, edits files, runs commands and opens pull requests, with permission modes that control what it may do without asking. Source: [Claude Code docs](https://code.claude.com/docs/en/overview).

### Institutional assessment
On Team and Enterprise, the controls INSEAD needs are present: SAML SSO and SCIM at the Enterprise account level, org-level model restrictions through managed settings, OpenTelemetry integration and spend dashboards for audit, GitHub Enterprise Server support, and zero data retention for Enterprise. Claude for Education adds a learning mode and campus agreements (early adopters include Northeastern, LSE and Champlain). On Pro/Max, training is opt-in for consumers but the org controls are absent, so personal plans stay Experimental. Sources: [admin setup](https://code.claude.com/docs/en/admin-setup), [monitoring usage](https://code.claude.com/docs/en/monitoring-usage), [Claude for Education](https://www.anthropic.com/news/introducing-claude-for-education).

### Data and privacy considerations
Commercial plans: no training on customer content, 30-day retention, ZDR on Enterprise. Consumer plans: opt-in training, with five-year retention if the user opts in and 30-day retention otherwise. A local project cache under ~/.claude/projects holds 30 days of local history. The permission modes (including a Bash sandbox and deny rules that always apply) are the notable IP control: they let INSEAD cap what the agent can touch. Source: [data usage](https://code.claude.com/docs/en/data-usage), [permission modes](https://code.claude.com/docs/en/permission-modes).

### Recommendation
Approved on Team/Enterprise with permission modes configured and monitoring enabled. Experimental on Pro/Max (Green data only). For students, Claude for Education's learning mode is the route to evaluate.

## Gemini CLI (Google)

### Overview
Gemini CLI is Google's open-source (Apache 2.0) terminal agent for Gemini, with a free tier of 60 requests per minute and 1,000 per day on a personal Google account, MCP support, file operations and Google Search grounding. Source: [Gemini CLI repository](https://github.com/google-gemini/gemini-cli), [Gemini CLI docs](https://www.geminicli.com/docs/).

### Institutional assessment
There is no enterprise story for Gemini CLI itself: it runs on personal Google accounts, with no org SSO, no audit trail and no admin controls. It is a capable personal tool and a good teaching example of an open-source agent, but it cannot carry institutional data.

### Data and privacy considerations
The data policy is the personal Google account's AI Studio settings, which were not verifiable in this round: to be researched at the AI Studio data controls pages before writing the onboarding guidance.

### Recommendation
Experimental (Green data only), on personal accounts. Institutional Gemini use should go through Gemini Code Assist or Google Cloud instead.

## Gemini Code Assist (Google Cloud)

### Overview
Gemini Code Assist is Google's enterprise coding assistant for IDEs (VS Code, JetBrains) and Google Cloud, in two editions: Standard and Enterprise. Source: [Code Assist overview](https://cloud.google.com/gemini/docs/codeassist/overview).

### Institutional assessment
The data governance page states that Gemini does not use your prompts or responses to train its models, both editions carry enterprise-grade security and Gen-AI indemnification, and responses include source citations when they quote code at length. List prices are hourly: Standard $0.0312 on monthly billing and $0.0260 on a 12-month term; Enterprise $0.0740 and $0.0616. That works out to about $19 to $22.80 per user/month for Standard and $45 to $54 for Enterprise. The gaps are verification gaps rather than known problems: SSO, audit logging, residency options and any Workspace-for-Education availability need confirmation on the security/privacy/compliance page before the Approved verdict is relied on. Sources: [data governance](https://cloud.google.com/gemini/docs/discover/data-governance), [pricing](https://cloud.google.com/products/gemini/pricing), [security/privacy/compliance](https://cloud.google.com/gemini/docs/codeassist/security-privacy-compliance).

### Data and privacy considerations
No-training commitment documented; residency and audit specifics to be confirmed (flagged in the matrix).

### Recommendation
Approved for the Enterprise edition once SSO and residency are confirmed with Google. Experimental for Standard (Green data only). If INSEAD standardises on Google Cloud for hosting, this becomes a natural part of that stack.



---

*Working note: every "to be researched" item names the page to check. Prices and model lists are volatile and should be re-verified on vendor pages at each quarterly register review.*
