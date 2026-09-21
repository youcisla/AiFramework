# Tool Assessment Matrix

> Workstream 1 | INSEAD AI-Assisted Application Development Framework | Version 0.1 (draft) | 3 September 2026
>
> Workstream 1 documents: [01 - Tool Assessment Matrix](01_Tool_Assessment_Matrix.md) | [02 - Sanctioned Sandbox Principles](02_Sanctioned_Sandbox_Principles.md) | [03 - Tool Profiles](03_Tool_Profiles.md) | [04 - Key Findings & Recommendations](04_Key_Findings_and_Recommendations.md) | [05 - Sources and References](05_Sources_and_References.md) | [06 - Glossary](06_Glossary.md) | [07 - Dependencies and Handoffs](07_Dependencies_and_Handoffs.md)
>
> Framework-wide: [Consolidated framework](../consolidated/00_Consolidated_Framework.md) | [Gaps and contradictions](../consolidated/01_Gaps_Contradictions_Dependencies.md) | [Scenario walkthroughs](../consolidated/02_Scenario_Walkthroughs.md) | [Recommended changes](../consolidated/03_Recommended_Changes.md) | [Minimum operating model](../consolidated/04_Minimum_Operating_Model.md) | [White paper inputs](../consolidated/05_White_Paper_Inputs.md) | [Research refresh](../consolidated/06_Research_Refresh.md)
>
> Companion documents: [02 - Sanctioned Sandbox Principles](02_Sanctioned_Sandbox_Principles.md), [03 - Tool Profiles](03_Tool_Profiles.md). The matrix is the evidence base for the Approved / Experimental / Restricted categories defined in Document 02, Section 4.

## At a glance: verdicts for all assessed tools

One row per tool or watchlist entry. The full 15-column evidence tables follow below.

| Tool | Best institutional tier | Verdict | Key condition | Data rule |
|---|---|---|---|---|
| GitHub Copilot (Business/Enterprise) | Enterprise | Approved | Configure SSO, content exclusions, model policy, audit | Green + Amber with review |
| GitHub Copilot (Free/Pro) | None | Experimental | Personal accounts | Green only |
| GitHub Copilot Workspace / coding agent | Business/Enterprise | Approved (inherits plan) | Review gates on agentic pull requests | Per plan |
| GitHub Education | None | Experimental | Monitor entitlement changes | Green only |
| GitHub Models | None | Experimental | Public data only | Green only |
| Azure AI Foundry + Azure OpenAI Service | Azure subscription | Approved | Content filters, logging, Entra ID | Green + Amber; EU Data Boundary |
| OpenAI Codex (CLI + cloud) | ChatGPT Enterprise/Edu | Approved | SAML, SCIM, Compliance API | Green + Amber with review |
| Claude Code | Team/Enterprise | Approved | Permission modes + monitoring | Green + Amber with review |
| Gemini CLI | None | Experimental | Personal Google account | Green only |
| Gemini Code Assist | Enterprise | Approved (conditional) | Confirm SSO, audit, residency with Google | Green + Amber after confirmation |
| Cursor | Teams/Enterprise | Approved | Privacy Mode + SSO | Green + Amber with review |
| Replit (incl. Agent) | Enterprise | Experimental by default | Confirm training and retention terms | Green only until confirmed |
| Lovable | Business/Enterprise | Approved | Opt out of training on free tiers | Green + Amber with review |
| Bolt.new (StackBlitz) | Enterprise self-hosted | Experimental by default | Confirm DPA and training terms | Green only until confirmed |
| Windsurf (Codeium) | Enterprise self-hosted | Approved (conditional) | Verify ownership status first | Green + Amber after verification |
| JetBrains AI Assistant | Org licensing | Approved (conditional) | Confirm org licensing and SSO | Green + Amber after confirmation |
| Amazon Q Developer | Pro | Approved | Never use the free tier with institutional data | Green + Amber on Pro |
| v0 by Vercel | Business/Enterprise | Approved (conditional) | Confirm SSO and training opt-out tiers | Green only until confirmed |
| Devin (Cognition) | Enterprise | Restricted by default | Verify controls under contract | No institutional use until approved |
| Tabnine | Enterprise self-hosted | Approved | Self-hosted deployment | Green + Amber; privacy-sensitive code |
| Microsoft 365 Copilot | M365 Copilot | Approved (conditional, adjacent) | Confirm EU Data Boundary and flex routing | Staff productivity; outside dev sandbox |
| Open-source agentic CLIs | Institutional BYOK endpoint | Approved via gateway | Institutional keys only | Green + Amber via gateway |
| Muse Code / Muse Spark 1.2 (Meta) | None yet | Watchlist | Quarterly review | None yet |
| rtk (rtk-ai) | None | Experimental | BYOK rules | Green only |
| Swarmforce | None | Watchlist | Low maturity | None |
| VibeLeaderboard | None | Resource | Monitoring use only | None |

## Purpose and method

This matrix assesses each AI development tool against the institutional considerations from the Intern Research Brief: enterprise/education account availability, SSO, data retention and training policy, IP exposure and privacy controls, auditability, repository integration, model restriction, data residency, cost, and suitability for students, staff and developers.

Method notes:

1. Facts come from vendor documentation, trust centres and changelogs, all accessed 3 September 2026. Sources are numbered [S#] and listed under each table group.
2. Where a fact could not be confirmed from an authoritative page, the cell says "To be researched" and names the page to check. This follows the brief's rule: flag uncertainties rather than assume.
3. Last verified: every fact in this matrix was checked against its source on 3 September 2026. The register process in Document 02 re-verifies each row quarterly, and any row whose vendor pages have changed gets a fresh verification date before it is relied on for procurement.
4. Cells are intentionally short. Document 03 carries the full per-tool profiles.
5. Verdicts use the framework categories: Approved (institutional use under defined conditions), Experimental (prototyping with public/synthetic/non-sensitive data only), Restricted/Prohibited (unsuitable for institutional data or development).
6. Verdicts assume the sandbox context in Document 02: Tier 0 and Tier 1 prototyping with Green data by default, Amber only in Approved tools with review, Red data never in the sandbox.

## Group A: GitHub and Microsoft tooling

| Tool | Enterprise/Education account | SSO support | Data retention / model training policy | IP exposure / privacy controls | Auditability / logging | Repository integration | Model restriction capability | Data residency | Cost / licensing | Suitability: students | Suitability: staff | Suitability: developers | Overall assessment | Key source(s) |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| GitHub Copilot (Free / Pro) | Individual plans only; no organisation account [S2]. Students and teachers can get Copilot free via verification instead [S9] | None at organisation level; personal GitHub account [S1][S2] | Business/Enterprise are not trained on prompts/suggestions. Free/Pro telemetry and optional snippet sharing differ; exact Free/Pro training defaults: To be researched (trust centre) [S3] | No content exclusions on individual plans [S5]; no Customer Copyright Commitment (that sits on paid org tiers) [S17] | No organisation audit logs [S6] | GitHub.com, VS Code, JetBrains, Visual Studio, CLI [S2] | None [S7] | US processing; EU residency is an enterprise feature. Which tiers get it: To be researched [S8] | Pro about $10 per user/month historically; usage-based billing (AI credits, premium requests) from 1 June 2026 [S1][S4] | Fine for personal learning and coursework | Not suitable for institutional work (no SSO, no audit) | Fine for personal and open-source work | Experimental: public/synthetic data only | S1 S2 S3 S4 S5 |
| GitHub Copilot (Business / Enterprise) | Organisation-wide on GitHub Enterprise Cloud [S2]; education route is GitHub Education [S9] | Yes: SAML SSO and SCIM; enforced SSO via Enterprise Managed Users [S2] | Prompts and suggestions are not retained for training; code is not used to train models [S2][S3] | Content exclusions for repositories and files (enterprise admins since Oct 2024) [S5]; IP indemnity via Microsoft Customer Copyright Commitment [S17] | Copilot organisation audit log events; richer in Enterprise [S6] | GitHub.com, VS Code, JetBrains, Visual Studio, CLI, issues and PRs via the coding agent [S2] | Enterprise can control model availability and set a global model policy (GA Aug 2026) [S7] | US and EU data residency, plus FedRAMP-authorised models (Apr 2026) [S8] | About $19 (Business) and $39 (Enterprise) per user/month, now plus usage metering; exact credit rates: To be researched (billing docs) [S4] | Yes, via sponsored Business seats or Education | Recommended default | Recommended default; strongest agentic feature set | Approved, with org controls configured (SSO, exclusions, policy) | S1 S2 S3 S5 S6 S7 S8 |
| GitHub Copilot Workspace / coding agent | Same plans as Copilot; agentic coding is GA across Free/Pro/Business/Enterprise [S15][S16] | Inherits the underlying Copilot plan [S2] | Same policy as the underlying plan [S3] | Same controls as the underlying plan [S5] | Same as the underlying plan [S6] | Deep: plans and edits from issues/specs and opens PRs [S15] | Inherited from plan; Enterprise policy applies [S7] | Inherited from plan [S8] | Metered via AI credits / premium requests [S4] | Yes, for project work; outputs need human review | Yes, with review gates on agentic changes | Yes; treat agentic PRs like junior-developer PRs (review required) | Approved on Business/Enterprise; Experimental on Free/Pro | S15 S16 S2 S4 |
| GitHub Education program | Free Copilot for verified students, teachers and maintainers, plus GitHub Pro benefits for students [S9] | None; individual accounts via verification [S9] | Individual-tier policy applies [S3] | No org-level exclusions [S5] | No org audit [S6] | Same surfaces as Pro [S2] | None [S7] | US processing [S8] | Free (verified) [S9] | Primary student route, but 2026 discussions say the student benefit is being reduced: To be researched [S10] | Teachers only, via verification | Maintainers via verification | Experimental (Green data only); monitor entitlement changes | S9 S10 |
| GitHub Models | Free playground and API for many models (OpenAI, Anthropic, Meta and others) with rate limits; paid higher limits; upgrade path to Foundry Models on Azure [S14] | GitHub account; org-level controls: To be researched [S14] | Depends on the hosted model provider; not an enterprise service [S14] | None beyond GitHub account settings [S14] | No enterprise audit [S14] | GitHub-centric; API access [S14] | Pick any hosted model (no institutional restriction) [S14] | Not enterprise-grade; provider-dependent: To be researched [S14] | Free tier plus usage tiers [S14] | Good for learning and demos | Fine for exploration on public data | Fine for quick model comparisons | Experimental (public data only) | S14 |
| Azure AI Foundry + Azure OpenAI Service | Azure subscription; Azure for Students and academic credits for education; EA/MCA for enterprise [S18] | Microsoft Entra ID with RBAC across Foundry and Azure OpenAI [S11] | Customer prompts and completions are not used to train Microsoft or OpenAI models, and are not shared with OpenAI or other customers [S11] | Configurable content filters (hate, sexual, violence, self-harm) with severity thresholds and custom blocklists [S12] | Azure Monitor diagnostic and activity logs; content-filter logging; Private Link/VNet [S11] | SDK/REST and Foundry agents; no native git integration (a cloud model platform) [S11] | Strong: per-deployment models, RBAC, network restrictions, pinned versions [S11] | Microsoft EU Data Boundary; Azure OpenAI deployable in EU regions such as France Central and Sweden Central [S13] | Pay-as-you-go per token plus provisioned throughput units; exact rates: To be researched (pricing page) [S11] | Good, via Azure for Students credits | Good for approved internal apps | Preferred compliant route for EU-sensitive LLM workloads | Approved (preferred for GDPR-sensitive workloads) | S11 S12 S13 S18 |

Sources for Group A:

- S1: GitHub Copilot plans, <https://github.com/features/copilot/plans>
- S2: GitHub Copilot documentation, <https://docs.github.com/en/copilot>
- S3: GitHub Trust Center, <https://github.com/trust-center>
- S4: GitHub Blog, Copilot moves to usage-based billing, <https://github.blog/news-insights/github-copilot-is-moving-to-usage-based-billing/>
- S5: GitHub Docs, content exclusions, <https://docs.github.com/en/copilot/how-tos/configure-content-exclusion/review-changes>
- S6: GitHub Docs, audit log events, <https://docs.github.com/en/enterprise-cloud@latest/admin/monitoring-activity-in-your-enterprise/reviewing-audit-logs-for-your-enterprise/audit-log-events-for-your-enterprise>
- S7: GitHub changelog, global model policy GA, <https://github.blog/changelog/2026-08-26-global-model-policy-generally-available/>
- S8: GitHub Docs, Copilot data residency, <https://docs.github.com/en/enterprise-cloud@latest/admin/data-residency/github-copilot-with-data-residency>
- S9: GitHub Education, <https://education.github.com>
- S10: GitHub community discussion on the student plan, <https://github.com/orgs/community/discussions/194918>
- S11: Azure AI Foundry docs, data privacy, <https://learn.microsoft.com/en-us/azure/ai-foundry/responsible-ai/openai/data-privacy>
- S12: Azure AI Foundry docs, content filters, <https://learn.microsoft.com/en-us/azure/ai-foundry/openai/concepts/content-filter>
- S13: Microsoft EU Data Boundary, <https://learn.microsoft.com/en-us/privacy/eudb/>
- S14: GitHub Docs, GitHub Models, <https://docs.github.com/en/github-models/about-github-models>
- S15: GitHub Next, Copilot Workspace, <https://githubnext.com/projects/copilot-workspace>
- S16: GitHub changelog, Copilot CLI GA, <https://github.blog/changelog/2026-02-25-github-copilot-cli-is-now-generally-available/>
- S17: Microsoft Learn, Copilot contractual protections, <https://learn.microsoft.com/en-us/training/modules/github-copilot-management-and-customizations/3-github-copilot-contractual-protections-disabling-matching-public-code>
- S18: Azure for Education offers, <https://azure.microsoft.com/en-us/free/students/>

## Group B: OpenAI, Anthropic and Google coding assistants

## Group B: OpenAI, Anthropic and Google coding assistants

| Tool | Enterprise/Education account | SSO support | Data retention / model training policy | IP exposure / privacy controls | Auditability / logging | Repository integration | Model restriction capability | Data residency | Cost / licensing | Suitability: students | Suitability: staff | Suitability: developers | Overall assessment | Key source(s) |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| OpenAI Codex (CLI + cloud, on ChatGPT plans) | ChatGPT Enterprise/Edu/Teachers accounts exist; no training on your data by default, you own inputs and outputs, and retention is controllable on Enterprise/Edu [B1] | SAML SSO plus SCIM provisioning on Enterprise/Edu [B1][B3] | API not used for training since 1 Mar 2023; abuse logs kept up to 30 days; zero data retention available to eligible customers [B2] | ZDR, Eyes Off (BAA/PHI) and Safety Retention options; AES-256, SOC 2 [B1][B2] | Compliance API on Enterprise/Edu/Teachers [B3][B21] | Codex Security pull-request reviews on GitHub plus a Security CLI [B7] | Workspace-level model availability across CLI, IDE, cloud and API [B5] | Europe and worldwide data residency options [B6] | Free/Go/Plus/Pro tiers on ChatGPT; third-party reports Plus $20 and Pro $100 (verify at chatgpt.com/codex/pricing) [B22]; the CLI is open source [B27] | Personal plans for learning; Experimental | Enterprise/Edu with SAML, SCIM and Compliance API | Strong agentic CLI; read-only/workspace/danger-full-access permission profiles are a real control [B4] | Approved (Enterprise/Edu); Experimental (personal plans) | B1 B2 B3 B4 B5 B6 B7 |
| Claude Code (Anthropic) | Pro/Max/Team/Enterprise plans; Claude for Education with learning mode and campus agreements [B13][B14] | SAML SSO and SCIM at the Claude Enterprise account level; not on Pro/Max [B10] | Consumer plans: opt-in training (5-year retention if on, 30-day if off). Commercial: no training, 30-day retention, ZDR for Enterprise [B9] | Permission modes (default/acceptEdits/plan/auto/dontAsk/bypassPermissions) plus a Bash sandbox; deny rules always apply; local project cache kept 30 days [B8][B9] | OpenTelemetry integration, spend reports and dashboards [B11] | GitHub Enterprise Server support and pull-request review workflows [B23] | Enterprise-level org model restrictions; availableModels in managed settings [B10] | API data residency available at a 1.1x cost [B12] | Pro/Max/Team/Enterprise; third-party figures $20/$100/$200 (verify) [B13] | Learning mode and campus agreements [B14] | Yes on Team/Enterprise | Best-in-class agentic terminal tool; permission modes help with oversight | Approved (Team/Enterprise); Experimental (Pro/Max) | B8 B9 B10 B11 B12 B13 B14 B23 |
| Gemini CLI (Google) | None: open source, runs on a personal Google account; free tier 60 requests/min, 1,000 requests/day [B15][B16] | None at organisation level [B15] | Personal Google account data settings apply; exact policy: To be researched (ai.google.dev data controls) [B16] | Open source (Apache 2.0), runs locally; Google Search grounding and MCP integrations [B15] | None at organisation level [B15] | Local repos plus MCP connectors [B15] | None [B15] | Depends on the personal account; not verified [B16] | Free tier with a personal Google account; paid API keys optional [B15] | Fine for learning | Not for institutional data | Terminal agent for personal work | Experimental (Green data only) | B15 B16 |
| Gemini Code Assist (Google Cloud) | Standard and Enterprise editions; availability through Google Workspace for Education: To be researched [B17][B20] | Google Cloud Identity and IAM with Workspace SSO [B20] | Does not use your prompts or responses to train its models [B18] | Source citations when quoting code at length; enterprise-grade security plus Gen-AI indemnification on both editions; VPC Service Controls and CMEK [B18][B19][B26] | Cloud Audit Logs and Admin Activity logs [B25] | IDE plugins (VS Code, JetBrains) with Google Cloud integration [B17] | Edition-based controls with model pinning: To be researched [B20] | EU regions and data-residency options [B20][B26] | Standard about $19 to $22.80 per user/month; Enterprise about $45 to $54 [B19][B24] | Standard via Workspace for Education if available | Enterprise edition | Good if the team is on Google Cloud | Approved (conditional: confirm SSO, audit and residency with Google) on Enterprise; Experimental (Standard) | B17 B18 B19 B20 B24 B25 B26 |

Sources for Group B:

- B1: OpenAI enterprise privacy, <https://openai.com/enterprise-privacy/>
- B2: OpenAI API docs, your data controls, <https://developers.openai.com/api/docs/guides/your-data>
- B3: ChatGPT Learn, enterprise compliance API, <https://learn.chatgpt.com/docs/enterprise/compliance-api>
- B4: ChatGPT Learn, Codex permission modes, <https://learn.chatgpt.com/docs/permissions>
- B5: ChatGPT Learn, workspace model availability, <https://learn.chatgpt.com/docs/enterprise/workspace-model-availability>
- B6: OpenAI, data residency in Europe, <https://openai.com/index/introducing-data-residency-in-europe/>
- B7: ChatGPT Learn, Codex security administration, <https://learn.chatgpt.com/docs/security-administration>
- B8: Claude Code docs, permission modes, <https://code.claude.com/docs/en/permission-modes>
- B9: Claude Code docs, data usage, <https://code.claude.com/docs/en/data-usage>
- B10: Claude Code docs, admin setup, <https://code.claude.com/docs/en/admin-setup>
- B11: Claude Code docs, monitoring usage, <https://code.claude.com/docs/en/monitoring-usage>
- B12: Claude Code docs, costs, <https://code.claude.com/docs/en/costs>
- B13: Claude pricing, <https://claude.com/pricing>
- B14: Anthropic, introducing Claude for Education, <https://www.anthropic.com/news/introducing-claude-for-education>
- B15: Gemini CLI repository, <https://github.com/google-gemini/gemini-cli>
- B16: Gemini CLI documentation, <https://www.geminicli.com/docs/>
- B17: Google Cloud, Gemini Code Assist overview, <https://cloud.google.com/gemini/docs/codeassist/overview>
- B18: Google Cloud, Gemini data governance, <https://cloud.google.com/gemini/docs/discover/data-governance>
- B19: Google Cloud, Gemini pricing, <https://cloud.google.com/products/gemini/pricing>
- B20: Google Cloud, Code Assist security/privacy/compliance, <https://cloud.google.com/gemini/docs/codeassist/security-privacy-compliance>
- B21: OpenAI help, compliance API article, <https://help.openai.com/en/articles/9261474>
- B22: ChatGPT pricing, <https://learn.chatgpt.com/docs/pricing>
- B23: Claude Code docs, GitHub Enterprise Server, <https://code.claude.com/docs/en/github-enterprise-server>
- B24: Google Cloud, Code Assist FAQ, <https://cloud.google.com/gemini/docs/codeassist/faqs>
- B25: Google Cloud, audit logs, <https://cloud.google.com/logging/docs/audit>
- B26: Google Cloud, security products (VPC Service Controls, CMEK), <https://cloud.google.com/security/products/>
- B27: OpenAI Codex CLI repository, <https://github.com/openai/codex>

## Group C: Browser and IDE-native app builders, plus other significant tools

## Group C: Browser and IDE-native app builders, plus other significant tools

| Tool | Enterprise/Education account | SSO support | Data retention / model training policy | IP exposure / privacy controls | Auditability / logging | Repository integration | Model restriction capability | Data residency | Cost / licensing | Suitability: students | Suitability: staff | Suitability: developers | Overall assessment | Key source(s) |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Cursor (Anysphere) | Teams: Standard $40 / Premium $120 per user/month; Enterprise custom; free Hobby and Pro from $20; a student program exists but terms: To be researched (cursor.com/students) [C1] | SAML/OIDC on Teams; SCIM and invoicing on Enterprise [C1] | Privacy Mode means code is never used for training, default on for Enterprise; most models run under zero-data-retention agreements, a few retain data and need admin approval [C4] | No training on Inputs or Suggestions except security-flagged content; DPA and sub-processor list published [C2][C5] | Enterprise compliance logging; admin API for usage and spend [C1][C3] | Cloud Agents (optional, can be disabled) clone repos to isolated encrypted VMs, deleted after the run [C4] | Model access control, blocklists, per-group model limits [C4] | Data residency program pins processing to a region; customer-managed encryption keys on Enterprise [C4] | Free; Pro from $20; Teams $40-120 per user/month; Enterprise custom [C1] | Good free and $20 tiers; Experimental without Privacy Mode | Yes on Teams/Enterprise with SSO and Privacy Mode | Excellent; note Cloud Agents process repo code transiently | Approved (Teams/Enterprise with Privacy Mode + SSO); Experimental otherwise | C1 C2 C3 C4 C5 |
| Replit (incl. Replit Agent) | Free; Core $20/mo; Pro $100/mo; Enterprise custom; Teams for Education exists, terms: To be researched (docs.replit.com) [C6] | SAML SSO on Enterprise [C6] | Privacy policy (updated 3 Aug 2026) keeps a legitimate-interest right to use personal data to improve machine learning, including code generation; no separate public-repl training clause appears in the current privacy policy or terms [C7] | You own your content; Replit holds a licence to host/serve and may access private apps for troubleshooting and security [C8] | Not located on fetched pages: To be researched (docs.replit.com) | Repls are the main artifact; GitHub import supported [C8] | Not documented: To be researched (docs.replit.com) | Enterprise: single-tenant environments and static outbound IPs [C6] | Free; Core $20; Pro $100; Enterprise custom [C6] | Good free tier and classroom flows; training ambiguity to clarify | Only on Enterprise, after contractual confirmation | Strong agent, but the data policy is murkier than Cursor's | Experimental by default; Approved only at Enterprise with confirmed terms | C6 C7 C8 |
| Lovable | Free / Pro / Business / Enterprise, credit-based (not per seat); student discount confirmed at lovable.dev/students; exact Pro/Business prices: To be researched [C9][C12] | SAML/OIDC (Okta, Entra ID, Google) plus SCIM on Enterprise [C11] | Business/Enterprise data not used for training; Free/Pro users can opt out in settings; otherwise only anonymised/aggregated data [C10][C11] | You own your code, customer data and AI outputs [C9] | Centralised logging with 1-year retention; publishing events logged with user attribution; SOC 2 Type II audits [C10][C11] | Git/GitHub and Supabase connectors with permission boundaries [C11] | Server-side RBAC; approve/publish guardrails [C11] | Data stays in the region you select (Enterprise); ISO 27001/SOC 2 data centres [C11] | Free; credit-based Pro/Business (exact price: To be researched); Enterprise custom [C9] | Free tier plus student discount; Free trains by default (opt-out exists) | Yes on Business/Enterprise | Fast web-app prototyping; strong EU/GDPR posture | Approved (Business/Enterprise); Experimental (Free/Pro) | C9 C10 C11 C12 |
| Bolt.new (StackBlitz) | Bolt: Free; Pro $25/mo; Teams $30/member/mo; Enterprise custom. StackBlitz: Free/Pro/Teams/Enterprise [C13] | SAML2 SSO on Enterprise (Bolt lists SSO and audit logs under advanced security) [C13][C14] | AI training policy not found on fetched pages: To be researched (bolt.new/privacy, stackblitz legal pages) [C13] | StackBlitz terms say it does not claim ownership of your data or content [C15] | Enterprise audit logs and admin portal [C13][C14] | WebContainers run the Node toolchain in the browser; GitHub import; private NPM [C13] | Admin access and usage controls on Teams/Enterprise [C13][C14] | Enterprise is a self-hosted single-tenant Kubernetes instance (on-prem/VPC) [C13] | Bolt Free; Pro $25; Teams $30/user; Enterprise custom [C13] | Excellent free in-browser tier, no install needed | Enterprise self-hosted suits strict residency needs | Code runs locally in the browser, which reduces IP egress | Experimental (free/Pro, training policy unverified); Approved only via Enterprise after DPA confirmation | C13 C14 C15 |
| Windsurf (Codeium) | Pro $20/mo; Max $200/mo; Teams $80 base + $40/developer seat; Enterprise custom (figures from third-party summary; official pages are JS-rendered: To be researched) [C16][L1] | SSO plus dedicated deployment on Enterprise [L1] | Zero-data-retention default for all paid plans; SOC 2 Type II and FedRAMP High; HIPAA BAA available on Enterprise; cloud, hybrid and self-hosted options [C16][C17] | Indexing is local; only prompts and cursor context go to the cloud (or stay on-prem if self-hosted); .codeiumignore excludes files [C16] | Enterprise admin dashboard; verify details: To be researched (windsurf.com/security) [C16] | Local IDE indexing; self-hosted keeps code on-prem [C16] | Cascade models; .codeiumignore sets data boundaries [C18] | Self-hosted/hybrid keeps data on-prem; zero-retention cloud for paid plans [C16] | As above; verify on official pages [L1] | Free/Pro fine | Self-hosted Enterprise suits regulated or sensitive work | Strong agentic IDE; ZDR is a differentiator | Approved (conditional: verify ownership status and security wording first) on Enterprise, self-hosted; Experimental otherwise | C16 C17 C18 L1 |
| JetBrains AI Assistant | AI Pro / AI Ultimate per-user licences; education licences via the JetBrains education program [C19] | Via JetBrains Account and org licensing; details: To be researched (jetbrains.com team tools) [C19] | Prompts and code fragments go to the LLM provider; detailed data collection is opt-in, kept confidential, not shared, and not used to train code or text models [C19] | You retain rights to inputs and outputs [C19] | Retention and deletion via JetBrains Account; opt-out controls [C19] | In-IDE across the IntelliJ family; local code context [C19] | Limited provider/model selection; enterprise options: To be researched [C19] | EU vendor (Czech HQ); regional processing options: To be researched [C19] | Per-user subscription; exact price: To be researched (jetbrains.com/ai/pricing) | Yes via education licences | Yes with org licensing; no-training-on-code posture is solid | Familiar in-IDE assistant | Approved (conditional: confirm org licensing and SSO with JetBrains) | C19 C20 |
| Amazon Q Developer | Free tier plus Pro at $19/user/mo; enterprise via AWS Organizations [C21] | Pro adds IAM Identity Center support with admin dashboards and controls [C21] | Free tier content may be used for service improvement (AWS Service Terms section 50.13); Pro content is not used to train or improve models, and the data-storage docs state content is not stored [C22][C38] | IP indemnity included on Pro; AWS Customer Agreement governs content [C21][C23][C38] | CloudWatch Logs and CloudTrail integration; verify details: To be researched [C23] | IDE plugins (VS Code, JetBrains) and CLI; AWS-native [C21] | IAM-based access control; admin dashboards on Pro [C21] | Regional; specifics: To be researched [C23] | Free tier (50 agentic requests/month); Pro $19/user/mo [C21] | Free tier fine for learning; flag the free-tier improvement clause | Yes on Pro with IAM and indemnity | Good if the team is already AWS-aligned | Approved (Pro tier only); do not use the Free tier with institutional data | C21 C22 C23 C38 |
| v0 by Vercel | Free; Premium $20/mo; Team $30/user/mo; Business $100/user/mo; Enterprise custom (pricing partly third-party; verify at v0.app/pricing) [C24][L2] | SSO on Enterprise (and Business per Vercel tiers; verify) [L2] | Business excludes prompts and code from AI training; lower tiers may use data, with opt-out controls [C25] | Vercel acts as processor for Customer Data [C25] | Vercel platform logging on Enterprise: To be researched (vercel.com/security) | Generates Next.js; GitHub and Vercel deploy integration [C24] | Team/Enterprise access controls: To be researched | Regional data options on Enterprise: To be researched | As above [L2] | Free/Premium fine for learning | Business/Enterprise | Strong React/Next.js output | Approved (conditional: confirm SSO and training opt-out tiers with Vercel) on Business/Enterprise; Experimental below | C24 C25 L2 |
| Devin (Cognition) | Free; Pro $20/mo; Max $200/mo; Teams usage-based from $80/mo; Enterprise custom [C26] | Enterprise only [C26] | Enterprise controls exist; specifics: To be researched (devin.ai/security) | Enterprise controls and sandboxed VMs; specifics: To be researched [C27] | Enterprise session logs: To be researched [C27] | Git/GitHub; tasks run in cloud sandboxes [C27] | Enterprise model/access controls: To be researched | Not captured: To be researched [C27] | Free; $20; $200; Teams $80+; Enterprise custom [C26] | Free/Pro fine | Autonomous cloud agent, high blast radius; Enterprise controls required | Powerful but needs tight repo and permission scoping | Restricted by default; Approved only with Enterprise contract and verified controls | C26 C27 |
| Tabnine | Enterprise plan with self-hosted, VPC and air-gapped deployment options [C32] | SSO/SAML on Enterprise [C32] | Zero data retention; models are not trained on your code [C33] | SOC 2; self-hosted deployment keeps code from egress [C33] | Admin console for usage; audit depth: To be researched [C32] | IDE plugins (VS Code, JetBrains) and CLI [C32] | Pin or switch models; self-hosted model serving [C32] | On-prem and self-hosted means residency is fully controlled [C32] | Dev about $9 per user/month; Enterprise about $39 (verify) [C34] | Limited offering | Good for privacy-sensitive work | Strong self-hosted option | Approved for privacy-sensitive projects via self-hosted; Experimental otherwise | C32 C33 C34 |
| Microsoft 365 Copilot (adjacent tooling, not a code environment) | M365 Copilot at $30/user/mo for staff; free Copilot Chat tier [C35] | Entra ID SSO with Conditional Access [C35] | Microsoft states it does not train models on tenant data [C36] | Tenant isolation plus EU Data Boundary [C36] | Purview eDiscovery and audit of Copilot interactions [C37] | Office apps and Copilot Studio connectors; no code repository role [C35] | Copilot Studio allows custom or pinned models [C35] | EU Data Boundary available; flex routing can route outside the EU unless configured (third-party note: verify with Microsoft) [C36][L3] | $30/user/mo [C35] | Limited | Good for Office productivity, not for app building | Adjacent tooling rather than a dev environment | Approved (conditional: EU Data Boundary and flex-routing settings confirmed with Microsoft); sits outside the app-dev sandbox scope | C35 C36 C37 L3 |
| Open-source agentic CLIs (Cline, Aider, OpenHands, Continue.dev) | All free and open source; bring your own key (BYOK) [C28][C29][C30][C31] | None locally; SSO depends on the model gateway you attach | Requests go from your machine to your own model provider, subject to that provider's terms; no tool-internal collection [C29][C31] | Local execution; code stays local except the context sent to your LLM [C28][C31] | None at institutional level; local shell logs only [C29] | Direct local repo access [C28] | You choose models and providers; enforce via an institutional gateway or proxy [C31] | Depends on your provider; self-hosting via Ollama/vLLM possible [C29] | Free software; pay only model tokens [C29] | Fine for learning | Governance is DIY; key-handling and unmanaged spend are the main risks | Fine technically, if fronted by a managed gateway | Approved when run against an institutional BYOK endpoint (Azure or enterprise API); Experimental with personal keys | C28 C29 C30 C31 |

Sources for Group C:

- C1: Cursor pricing, <https://cursor.com/pricing>
- C2: Cursor privacy policy, <https://cursor.com/privacy>
- C3: Cursor security, <https://cursor.com/security>
- C4: Cursor enterprise privacy and data governance, <https://cursor.com/docs/enterprise/privacy-and-data-governance>
- C5: Cursor DPA, <https://cursor.com/terms/dpa>
- C6: Replit pricing, <https://replit.com/pricing>
- C7: Replit privacy, <https://replit.com/site/privacy>
- C8: Replit terms, <https://replit.com/site/terms>
- C9: Lovable pricing, <https://lovable.dev/pricing>
- C10: Lovable privacy, <https://lovable.dev/privacy>
- C11: Lovable security, <https://lovable.dev/security>
- C12: Lovable students, <https://lovable.dev/students>
- C13: Bolt pricing, <https://bolt.new/pricing>
- C14: StackBlitz enterprise, <https://stackblitz.com/enterprise>
- C15: StackBlitz terms of service, <https://stackblitz.com/terms-of-service>
- C16: Windsurf security, <https://windsurf.com/security>
- C17: Codeium privacy policy, <https://codeium.com/privacy-policy>
- C18: Windsurf docs, <https://docs.windsurf.com>
- C19: JetBrains AI: how we handle your code and data, <https://www.jetbrains.com/help/ai-assistant/2025.2/how-we-handle-your-code-and-data.html>
- C20: JetBrains AI, <https://www.jetbrains.com/ai/>
- C21: Amazon Q Developer pricing, <https://aws.amazon.com/q/developer/pricing/>
- C22: AWS Service Terms, <https://aws.amazon.com/service-terms/>
- C23: Amazon Q Developer security, <https://docs.aws.amazon.com/amazonq/latest/qdeveloper-ug/security.html>
- C24: v0 by Vercel, <https://v0.app>
- C25: Vercel privacy policy, <https://vercel.com/legal/privacy-policy>
- C26: Cognition, new self-serve plans for Devin, <https://cognition.com/blog/new-self-serve-plans-for-devin>
- C27: Devin, <https://devin.ai>
- C28: Cline, <https://github.com/cline/cline>
- C29: Aider, <https://aider.chat>
- C30: OpenHands, <https://openhands.dev>
- C31: Continue.dev, <https://continue.dev>
- L1: third-party Windsurf business guide (official pages JS-rendered), <https://www.layer3labs.io/guides/windsurf-for-business>
- L2: third-party v0 pricing summary (verify at v0.app/pricing), <https://www.bworlds.co/learn/v0-pricing/>
- C32: Tabnine deployment options, <https://docs.tabnine.com/main/welcome/readme/architecture/deployment-options>
- C33: Tabnine code privacy, <https://www.tabnine.com/code-privacy/>
- C34: Tabnine pricing, <https://www.tabnine.com/pricing/>
- C35: Microsoft 365 Copilot, <https://www.microsoft.com/en-us/microsoft-365/copilot>
- C36: Microsoft 365 Copilot privacy, <https://learn.microsoft.com/en-us/copilot/microsoft-365/microsoft-365-copilot-privacy>
- C37: Microsoft Purview, <https://learn.microsoft.com/en-us/purview/>
- C38: Amazon Q Developer data storage, <https://docs.aws.amazon.com/amazonq/latest/qdeveloper-ug/data-storage.html>
- L3: third-party Microsoft 365 Copilot residency analysis (verify with Microsoft), <https://www.kriv.ai/articles/data-residency-and-sovereignty-controls-for-copilot>

## Group D: Emerging tools and market pulse (window 2026-08-04 to 2026-09-03)

Rows for tools that gained traction in the last 30 days, gathered with the last30days research engine plus press verification:

| Tool | What it is | Institutional status | Sources |
|---|---|---|---|
| Muse Code / Muse Spark 1.2 (Meta) | Meta's coding agent and coding-focused model line, launched Aug 2026 with persistent async background agents | Watchlist: too new for enterprise trust data; keep on the quarterly review queue, Experimental at best until SSO/audit/training terms are published | VentureBeat coverage, <https://venturebeat.com/orchestration/meta-enters-the-ai-coding-wars-with-muse-spark-1-2-and-muse-code-with-persistent-async-background-agents>; Meta AI blog, <https://research.meta.ai/blog/introducing-muse-code-and-muse-spark-1-2> |
| rtk (rtk-ai) | Open-source agentic framework ("AI agents on GitHub"), about 77k stars, supports 13 AI coding tools | Experimental for technical staff on Green data; BYOK model access and local execution, same rules as the open-source CLI group in Group C | <https://github.com/rtk-ai/rtk> |
| Swarmforce | Community tool for visualising AI agents (r/SideProject, Sep 2026) | Watchlist only; low maturity and engagement | <https://www.reddit.com/r/SideProject/comments/1w6j6q0/this_is_swarmforce_a_new_way_to_visualize_ai/> |
| VibeLeaderboard | Community-maintained index of vibe coding tools | Not a tool itself; useful monitoring resource for the quarterly register review | <https://www.vibeleaderboard.ai/tools> |

## Named Restricted examples (institutional data)

Tools and tiers named Restricted for institutional data, with the reason. Each name maps to a row in the tables above; the register publishes this list so the restriction is explainable, not arbitrary.

| Named Restricted item | Reason | Where to go instead |
|---|---|---|
| Free consumer ChatGPT | Trains on user data by default; no org controls | ChatGPT Enterprise/Edu |
| Amazon Q Developer free tier | Content may be used for service improvement (AWS Service Terms section 50.13) | Amazon Q Pro |
| Replit free/Core for staff institutional work | Legitimate-interest machine-learning clause (privacy policy, updated 3 Aug 2026) | Replit Enterprise after confirmation, or Lovable/Cursor |
| Devin outside an Enterprise contract | Unverified controls on an autonomous cloud agent | Enterprise contract with verified controls |
| Any tool that needs institutional credentials pasted in | Credential exposure with no audit trail | BYOK tools against the institutional gateway only |
| Unregistered browser extensions with opaque data collection | No data-flow transparency | Register for review, or use the approved set |

## How the categories map to risk tiers

| Risk tier | Typical tool category | Typical data |
|---|---|---|
| Tier 0 (personal experiment) | Approved or Experimental | Green only |
| Tier 1 (internal prototype) | Approved (Experimental with sponsor) | Green; Amber with review |
| Tier 2 (institutional application) | Approved only | Per Workstream 2 classification |
| Tier 3 (high-impact/sensitive) | Approved only, plus additional controls | Red-capable, with Workstream 2 and Cybersecurity involvement |

---

*Working note: every "To be researched" cell names the exact page to check. The matrix is reviewed against the register process in Document 02, Section 5.*