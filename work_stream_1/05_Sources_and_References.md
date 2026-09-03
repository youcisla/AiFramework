# Sources and References

> Workstream 1 | INSEAD AI-Assisted Application Development Framework | Version 0.1 (draft) | 3 September 2026
>
> Every source cited across the workstream documents, grouped by category. Date accessed: 3 September 2026 unless noted. Items marked "bot-gated" returned HTTP 403 to automated checks but are live pages in a browser; items marked "JS-rendered" need a browser to read and were summarised from third-party pages where noted.

## Vendor official documentation

### GitHub and Microsoft

- GitHub Copilot documentation. <https://docs.github.com/en/copilot> - the Copilot feature and policy reference used throughout the matrix.
- GitHub Copilot plans. <https://github.com/features/copilot/plans> - tier structure and per-seat prices before the June 2026 billing change.
- GitHub Trust Center. <https://github.com/trust-center> - data handling, training and retention commitments.
- GitHub Blog: GitHub Copilot is moving to usage-based billing. <https://github.blog/news-insights/github-copilot-is-moving-to-usage-based-billing/> - the June 2026 AI-credit billing change.
- GitHub Docs: content exclusions for Copilot. <https://docs.github.com/en/copilot/how-tos/configure-content-exclusion/review-changes> - repository and file exclusions for IP-sensitive code.
- GitHub Docs: audit log events for your enterprise. <https://docs.github.com/en/enterprise-cloud@latest/admin/monitoring-activity-in-your-enterprise/reviewing-audit-logs-for-your-enterprise/audit-log-events-for-your-enterprise> - Copilot audit event coverage.
- GitHub changelog: global model policy GA. <https://github.blog/changelog/2026-08-26-global-model-policy-generally-available/> - enterprise model restriction capability.
- GitHub Docs: Copilot with data residency. <https://docs.github.com/en/enterprise-cloud@latest/admin/data-residency/github-copilot-with-data-residency> - US/EU/FedRAMP residency options.
- GitHub Education. <https://education.github.com> - student, teacher and maintainer benefits.
- GitHub community discussion 194918. <https://github.com/orgs/community/discussions/194918> - reports that the student Copilot benefit is being reduced; flagged for re-verification.
- GitHub Docs: GitHub Models. <https://docs.github.com/en/github-models/about-github-models> - playground and API terms.
- GitHub Next: Copilot Workspace. <https://githubnext.com/projects/copilot-workspace> - origin of the agentic coding agent.
- GitHub changelog: Copilot CLI GA. <https://github.blog/changelog/2026-02-25-github-copilot-cli-is-now-generally-available/> - agentic coding in the terminal.
- Microsoft Learn: GitHub Copilot contractual protections. <https://learn.microsoft.com/en-us/training/modules/github-copilot-management-and-customizations/3-github-copilot-contractual-protections-disabling-matching-public-code> - Customer Copyright Commitment and IP indemnity scope.
- Azure AI Foundry documentation. <https://learn.microsoft.com/en-us/azure/ai-foundry> - platform documentation.
- Azure AI Foundry: data privacy for Azure OpenAI. <https://learn.microsoft.com/en-us/azure/ai-foundry/responsible-ai/openai/data-privacy> - no-training and no-sharing commitments.
- Azure AI Foundry: content filters. <https://learn.microsoft.com/en-us/azure/ai-foundry/openai/concepts/content-filter> - filter categories, severity thresholds and blocklists.
- Microsoft EU Data Boundary. <https://learn.microsoft.com/en-us/privacy/eudb/> - EU residency commitment and its exceptions for optional capabilities.
- Azure for Education offers. <https://azure.microsoft.com/en-us/pricing/offers/education> - student and academic credits.

### OpenAI, Anthropic and Google

- OpenAI enterprise privacy. <https://openai.com/enterprise-privacy/> (bot-gated; verified via search) - no-training default, ownership, retention controls.
- OpenAI API: your data controls. <https://developers.openai.com/api/docs/guides/your-data> - training cutoff, abuse logs, ZDR.
- OpenAI Codex documentation. <https://developers.openai.com/codex/> - permission modes and security administration.
- ChatGPT Learn: enterprise compliance API. <https://learn.chatgpt.com/docs/enterprise/compliance-api> - audit export for Enterprise/Edu.
- ChatGPT Learn: workspace model availability. <https://learn.chatgpt.com/docs/enterprise/workspace-model-availability> - model restriction controls.
- OpenAI: data residency in Europe. <https://openai.com/index/introducing-data-residency-in-europe/> - EU residency option.
- OpenAI help: compliance API. <https://help.openai.com/en/articles/9261474> - audit capabilities.
- ChatGPT pricing. <https://learn.chatgpt.com/docs/pricing> - plan tiers.
- OpenAI Codex CLI repository. <https://github.com/openai/codex> - the open-source CLI.
- Claude Code documentation. <https://code.claude.com/docs/en/overview> - product and admin reference.
- Claude Code: permission modes. <https://code.claude.com/docs/en/permission-modes> - permission and sandbox controls.
- Claude Code: data usage. <https://code.claude.com/docs/en/data-usage> - training, retention and local cache policy.
- Claude Code: admin setup. <https://code.claude.com/docs/en/admin-setup> - SAML SSO, SCIM, model restrictions.
- Claude Code: monitoring usage. <https://code.claude.com/docs/en/monitoring-usage> - OpenTelemetry and spend dashboards.
- Claude Code: costs. <https://code.claude.com/docs/en/costs> - residency pricing.
- Claude Code: GitHub Enterprise Server. <https://code.claude.com/docs/en/github-enterprise-server> - enterprise repo integration.
- Claude Enterprise administrator guide. <https://claude.com/resources/tutorials/claude-enterprise-administrator-guide> - enterprise admin walkthrough.
- Claude pricing. <https://claude.com/pricing> - plan tiers.
- Anthropic: introducing Claude for Education. <https://www.anthropic.com/news/introducing-claude-for-education> - learning mode and campus agreements.
- Gemini CLI repository. <https://github.com/google-gemini/gemini-cli> - open-source license, free tier, MCP.
- Gemini CLI documentation. <https://www.geminicli.com/docs/> - install and usage.
- Google Cloud: Gemini Code Assist overview. <https://cloud.google.com/gemini/docs/codeassist/overview> - editions.
- Google Cloud: Gemini data governance. <https://cloud.google.com/gemini/docs/discover/data-governance> - no-training commitment and citations.
- Google Cloud: Gemini pricing. <https://cloud.google.com/products/gemini/pricing> - edition pricing and indemnification.
- Google Cloud: Code Assist security, privacy and compliance. <https://cloud.google.com/gemini/docs/codeassist/security-privacy-compliance> - SSO, audit and residency details to confirm.
- Google Cloud: Code Assist FAQ. <https://cloud.google.com/gemini/docs/codeassist/faqs> - edition details and data commitments.
- Google Cloud: audit logs. <https://cloud.google.com/logging/docs/audit> - Admin Activity and Cloud Audit Logs.
- Google Cloud: security products (VPC Service Controls, CMEK). <https://cloud.google.com/security/products/> - data-protection controls.

### Builders, IDEs and other vendors

- Cursor pricing. <https://cursor.com/pricing> - plan tiers and per-user prices.
- Cursor privacy policy. <https://cursor.com/privacy> - training and input handling commitments.
- Cursor security. <https://cursor.com/security> - certifications and security program.
- Cursor enterprise privacy and data governance. <https://cursor.com/docs/enterprise/privacy-and-data-governance> - Privacy Mode, ZDR, model controls, residency.
- Cursor DPA. <https://cursor.com/terms/dpa> - data processing terms.
- Replit pricing. <https://replit.com/pricing> - plan tiers and enterprise features.
- Replit privacy policy. <https://replit.com/site/privacy> - machine-learning improvement rights.
- Replit terms. <https://replit.com/site/terms> - ownership and access clauses.
- Lovable pricing. <https://lovable.dev/pricing> - credit-based plans and ownership statement.
- Lovable privacy. <https://lovable.dev/privacy> - GDPR posture, training opt-outs.
- Lovable security. <https://lovable.dev/security> - SSO, logging, SOC 2, residency.
- Lovable students. <https://lovable.dev/students> - student discount.
- Bolt pricing. <https://bolt.new/pricing> - tiers and enterprise security notes.
- StackBlitz enterprise. <https://stackblitz.com/enterprise> - self-hosted single-tenant and SSO.
- StackBlitz terms of service. <https://stackblitz.com/terms-of-service> - content ownership clause.
- Windsurf security. <https://windsurf.com/security> - ZDR, self-hosting, certifications (JS-rendered).
- Codeium privacy policy. <https://codeium.com/privacy-policy> - data handling.
- Windsurf documentation. <https://docs.windsurf.com> - Cascade and .codeiumignore.
- JetBrains AI: how we handle your code and data. <https://www.jetbrains.com/help/ai-assistant/2025.2/how-we-handle-your-code-and-data.html> - data flow and no-training-on-code commitment.
- JetBrains AI. <https://www.jetbrains.com/ai/> - licensing overview.
- Amazon Q Developer pricing. <https://aws.amazon.com/q/developer/pricing/> - tiers, Identity Center, indemnity.
- AWS Service Terms. <https://aws.amazon.com/service-terms/> - section 50.13: free tier content may be used for service improvement.
- Amazon Q Developer security. <https://aws.amazon.com/q/developer/security/> - security program.
- v0 by Vercel. <https://v0.app> - product page.
- Vercel privacy policy. <https://vercel.com/legal/privacy-policy> - processor role and training opt-outs.
- Cognition: new self-serve plans for Devin. <https://cognition.com/blog/new-self-serve-plans-for-devin> - plan structure.
- Devin. <https://devin.ai> - product and enterprise controls overview.
- Cline. <https://github.com/cline/cline> - open-source agentic extension.
- Aider. <https://aider.chat> - open-source terminal agent.
- OpenHands. <https://openhands.dev> - open-source agent platform.
- Continue.dev. <https://continue.dev> - open-source IDE assistant.
- Tabnine deployment options. <https://docs.tabnine.com/main/welcome/readme/architecture/deployment-options> - self-hosted, VPC and air-gapped options.
- Tabnine code privacy. <https://www.tabnine.com/code-privacy/> - zero data retention and no-training commitments.
- Tabnine pricing. <https://www.tabnine.com/pricing/> - plan tiers (verify before procurement).
- Microsoft 365 Copilot. <https://www.microsoft.com/en-us/microsoft-365/copilot> - product and pricing.
- Microsoft 365 Copilot privacy. <https://learn.microsoft.com/en-us/copilot/microsoft-365/microsoft-365-copilot-privacy> - no training on tenant data.
- Microsoft Purview. <https://learn.microsoft.com/en-us/purview/> - audit and eDiscovery of Copilot interactions.
- Amazon Q Developer data storage. <https://docs.aws.amazon.com/amazonq/latest/qdeveloper-ug/data-storage.html> - content storage and training statements.
- Model Context Protocol. <https://modelcontextprotocol.io/> - the MCP standard (glossary).
- Docker: what is a container. <https://docs.docker.com/get-started/docker-concepts/the-basics/what-is-a-container/> - glossary definition.
- OpenAI: enterprise privacy. <https://openai.com/enterprise-privacy/> (bot-gated; verified via search) - enterprise data commitments.
- Anthropic: commercial terms. <https://www.anthropic.com/legal/commercial-terms> - data usage terms.
- OpenAI: model optimization (fine-tuning). <https://developers.openai.com/api/docs/guides/model-optimization> - fine-tuning documentation (glossary).
- Microsoft Entra: what is single sign-on. <https://learn.microsoft.com/en-us/entra/identity/enterprise-apps/what-is-single-sign-on> - SSO definition.
- Microsoft Entra: SCIM provisioning. <https://learn.microsoft.com/en-us/entra/identity/app-provisioning/use-scim-to-provision-users-and-groups> - provisioning definition.
- Microsoft Azure: data residency. <https://azure.microsoft.com/en-us/explore/global-infrastructure/data-residency/> - residency definition.
- Gartner glossary: shadow IT. <https://www.gartner.com/en/information-technology/glossary/shadow-it> (bot-gated; verified via search) - shadow IT definition.
- GitHub Docs: what is GitHub Copilot. <https://docs.github.com/en/copilot/about-github-copilot/what-is-github-copilot> - AI-assisted development definition.

### Third-party summaries (used where official pages are JS-rendered)

- Layer3 Labs: Windsurf for business. <https://www.layer3labs.io/guides/windsurf-for-business> - pricing and enterprise summary.
- Bworlds: v0 pricing. <https://www.bworlds.co/learn/v0-pricing/> - pricing summary; official page to be verified.
- Kriv: data residency and sovereignty controls for Microsoft 365 Copilot. <https://www.kriv.ai/articles/data-residency-and-sovereignty-controls-for-copilot> - flex-routing analysis; verify with Microsoft.

## Security and compliance resources

- OWASP Top 10 for LLM Applications. <https://genai.owasp.org/> - the AI-specific risk list; LLM01 (prompt injection) and LLM08 (excessive agency) are cited throughout.
- OWASP CI/CD Security Cheat Sheet. <https://cheatsheetseries.owasp.org/cheatsheets/CI_CD_Security_Cheat_Sheet.html> - pipeline controls for promoted applications.
- OWASP Secrets Management Cheat Sheet. <https://cheatsheetseries.owasp.org/cheatsheets/Secrets_Management_Cheat_Sheet.html> - sandbox secrets rules.
- OWASP Docker Security Cheat Sheet. <https://cheatsheetseries.owasp.org/cheatsheets/Docker_Security_Cheat_Sheet.html> - container isolation guidance.
- MITRE ATLAS. <https://atlas.mitre.org/> - threat knowledge base for AI systems.
- OWASP AI Exchange. <https://owaspai.org/docs/> - vendor-neutral AI threat and controls catalogue.
- OWASP AI Security Governance and Adoption initiative (LLM AI Security & Governance Checklist). <https://genai.owasp.org/initiatives/ai-security-governance-and-adoption/> - a ready controls checklist for sandbox configuration and review gates.
- CNIL (French data protection authority). <https://www.cnil.fr/> - the supervisory authority for INSEAD's France campus.
- AWS Service Terms (see vendor section) - the free-tier training clause example.

## Higher education and institutional examples

- EDUCAUSE: Strategies for Integrating Generative AI into Higher Education (2025 Horizon report teaching and learning). <https://library.educause.edu/-/media/files/library/2025/5/2025hrteachinglearning.pdf> - sector-level guidance on institutional GenAI adoption.
- EDUCAUSE Review: Ethics Is the Edge: The Future of AI in Higher Education. <https://er.educause.edu/articles/2025/6/ethics-is-the-edge-the-future-of-ai-in-higher-education> - institutional ethics framing.
- Jisc National Centre for AI: Navigating the Future: Higher Education policies and guidance on generative AI. <https://nationalcentreforai.jiscinvolve.org/wp/2024/07/31/navigating-the-future-higher-education-policies-and-guidance-on-generative-ai/> - UK sector policy comparison.
- Jisc National Centre for AI: How to support students/learners with generative AI. <https://nationalcentreforai.jiscinvolve.org/wp/2024/03/28/how-to-support-students-learners-with-generative-ai/> - student-facing guidance model.
- Harvard Office of the Provost: Guidelines for Using ChatGPT and other Generative AI tools at Harvard. <https://provost.harvard.edu/guidelines-using-chatgpt-and-other-generative-ai-tools-harvard> - example of institutional guardrails layered on vendor tools.
- GitHub Education (see vendor section) - the de facto standard for giving students Copilot.

- Harvard HUIT: AI Sandbox knowledge base article. <https://harvard.service-now.com/ithelp?id=kb_article&sys_id=ca9dd14447f07950566cf147536d433b> - a managed, isolated AI experimentation environment; the closest published precedent for an INSEAD sandbox.
- University of Michigan: Generative AI resources (GenAI at U-M). <https://genai.umich.edu/resources> - central campus hub for tools, guidance and training.
- University of Michigan: Safe Computing. <https://safecomputing.umich.edu/> - security guidance including GenAI data-protection advisories.
- EDUCAUSE: AI topic hub. <https://library.educause.edu/topics/artificial-intelligence> - sector-wide policy frameworks and the Horizon reports.
- Arizona State University: ASU and OpenAI expand collaboration. <https://tech.asu.edu/features/asu-and-openai-expand-collaboration-scaling-ai> - a large-scale university deployment of ChatGPT Enterprise, a precedent for institutional LLM procurement. Companion: <https://openai.com/index/asu/>.
- Stanford: AI tools guidance. To be researched - check <https://uit.stanford.edu/ai> and <https://teachingcommons.stanford.edu/>.
- University of Oxford: student AI guidance. To be researched - check <https://www.ox.ac.uk/students/academic/guidance/skills/ai>.
- University of Edinburgh: AI guidance. To be researched - check <https://www.ed.ac.uk/information-services/> AI and GenAI guidance pages.
- Jisc National Centre for AI. <https://nationalcentreforai.jiscinvolve.org/> (main site: <https://www.jisc.ac.uk/>) - UK tertiary-sector AI guidance and maturity frameworks; current status to be re-checked.

## Standards and frameworks

- NIST AI Risk Management Framework (AI RMF 1.0). <https://nvlpubs.nist.gov/nistpubs/ai/NIST.AI.100-1.pdf> (landing page: <https://www.nist.gov/itl/ai-risk-management-framework>) - GOVERN/MAP/MEASURE/MANAGE functions referenced by the sandbox principles.
- NIST AI 600-1: Generative AI Profile. <https://nvlpubs.nist.gov/nistpubs/ai/NIST.AI.600-1.pdf> - GenAI-specific risk guidance (hallucination, information integrity).
- NIST SP 800-218: Secure Software Development Framework (SSDF). <https://csrc.nist.gov/pubs/sp/800/218/final> - secure development practices applying to AI-generated code.
- ISO/IEC 42001:2023: Artificial intelligence management system. <https://www.iso.org/standard/81230.html> (bot-gated; paid standard) - management system for AI governance.
- ISO/IEC 42005:2025: AI system impact assessment. <https://www.iso.org/standard/42005.html> (bot-gated; paid standard) - impact assessment standard for Tier 3.
- Regulation (EU) 2016/679 (GDPR). <https://eur-lex.europa.eu/eli/reg/2016/679/oj> - personal data rules applying to France campus operations.
- Regulation (EU) 2024/1689 (EU AI Act). <https://eur-lex.europa.eu/eli/reg/2024/1689/oj> - deployer obligations for EU use of AI systems.

## Market pulse and community evidence (last30days engine, window 2026-08-04 to 2026-09-03)

Community sources are evidence of practitioner sentiment, not vendor commitments. Raw engine outputs are saved under Documents/Last30Days.

- Nolan Lawson: The asteroid currently hitting front-end web development (2026-08-23), discussed on Hacker News. <https://nolanlawson.com/2026/08/23/the-asteroid-currently-hitting-frontend-web-development/> - the discovery-run topic on AI's effect on front-end work.
- r/ExperiencedDevs: New codebase + AI code smells (2026-08-22). <https://www.reddit.com/r/ExperiencedDevs/comments/1vvj60z/new_codebase_ai_code_smells/> - AI code quality debate (156 points, 203 comments).
- r/ChatGPTCoding: AI coding has made me dramatically faster (2026-08-27). <https://www.reddit.com/r/ChatGPTCoding/comments/1w045is/ai_coding_has_made_me_dramatically_faster_but_im/> - adoption and maintenance concerns.
- Cal Newport: AI Coding and Its Discontents (2026-08-21), discussed on Hacker News. <https://calnewport.com/on-ai-coding-and-its-discontents/> - critique of AI-assisted development practice.
- VentureBeat: Meta enters the AI coding wars with Muse Spark 1.2 and Muse Code (2026-08). <https://venturebeat.com/orchestration/meta-enters-the-ai-coding-wars-with-muse-spark-1-2-and-muse-code-with-persistent-async-background-agents> - launch coverage of the Muse coding agent.
- Meta AI blog: introducing Muse Code and Muse Spark 1.2. <https://research.meta.ai/blog/introducing-muse-code-and-muse-spark-1-2> - first-party launch post.
- rtk-ai/rtk. <https://github.com/rtk-ai/rtk> - open-source agentic framework gaining traction (about 77k stars).
- VibeLeaderboard: index of the best vibe coding tools. <https://www.vibeleaderboard.ai/tools> - community tool index for register reviews.
- r/SideProject: Swarmforce (2026-09-03). <https://www.reddit.com/r/SideProject/comments/1w6j6q0/this_is_swarmforce_a_new_way_to_visualize_ai/> - early tool signal, watchlist only.
- r/LocalLLaMA: community as an AI news source (2026-09-02). <https://www.reddit.com/r/LocalLLaMA/comments/1w50ur8/localllama_is_unironically_one_of_the_best_places/> - community resource for the quarterly review.
- Wikipedia: Vibe coding. <https://en.wikipedia.org/wiki/Vibe_coding> - term origin (glossary).
- Simon Willison: Not all AI-assisted programming is vibe coding. <https://simonwillison.net/2025/Mar/19/vibe-coding/> - useful distinction for training material.

---

*Working note: every URL in this list was checked on 3 September 2026; bot-gated pages are marked, and items labelled "to be researched" carry the page to check. Prices are volatile and should be re-verified on the vendor pricing pages before procurement.*
