# Research Refresh

> Framework-wide documents: [00 - Consolidated Framework](00_Consolidated_Framework.md) | [01 - Gaps, Contradictions and Dependencies](01_Gaps_Contradictions_Dependencies.md) | [02 - Scenario Walkthroughs](02_Scenario_Walkthroughs.md) | [03 - Recommended Changes](03_Recommended_Changes.md) | [04 - Minimum Operating Model](04_Minimum_Operating_Model.md) | [05 - White Paper Inputs](05_White_Paper_Inputs.md) | [06 - Research Refresh](06_Research_Refresh.md)
>
> Workstream sources: [WS1 tools and sandbox](../work_stream_1/01_Tool_Assessment_Matrix.md) | [WS2 data, privacy, cybersecurity, AI risk](../work_stream_2/WS2_Data_Privacy_Cybersecurity_AI_Risk_v0.3.md) | [WS3 prototype to production](../work_stream_3/WS3_Prototype_to_Production_Checkpoint.md)
>
> Version 0.1 (draft) | 3 September 2026

## What this is

A targeted research refresh run after the consolidated framework was written, to check the framework against what practitioners are saying right now and to catch tools the register had not seen. Method: the last30days engine over Reddit, Hacker News, GitHub and YouTube for the window 2026-08-22 to 2026-09-21, plus GitHub repository search. The platform CLIs behind agent-reach (mcporter, opencli and the login-backed social tools) are not installed in this environment, so the web and social sweep was carried by the last30days engine and GitHub search instead. This document is additive: it corroborates or extends the framework, and nothing in Documents 00 to 05 is invalidated.

## What the sweep confirmed

These are practitioner signals that line up with positions the framework already takes. Each is a finding, not a new requirement.

| Signal | What it says | Supports |
|---|---|---|
| Vibe-coded internal apps are becoming a shadow AI security problem (r/AskNetsec) | Practitioners are seeing the exact failure mode the framework exists to prevent: internal apps built with AI tools, outside governance, becoming a security problem | The premise; C1; the sandbox and register |
| AI coding has made CI a bottleneck (Linear) | Team throughput shifts from human review to CI, and CI has to be reworked to keep up | The gate's testing and code quality areas; R7 agentic review |
| If AI coding is lowering your code quality, you are not managing quality right (i-kh.net) | Quality is a management choice, not an AI inevitability | The gate as a genuine gate; WS3's "AI code needs equal or greater scrutiny" |
| Do AI coding agents need an architecture enforcement layer (r/LLMDevs) | Teams want a structural layer to stop agents drifting outside the architecture | R7 branch protection and the narrow tool rule |
| Are code reviews still worth it when the code is AI generated (r/codereview) | The question is live and the answer matters to reviewers | The review point in 00 section 5.2 |
| AI coding outpaces governance (InfoQ, citing GitLab research) | Tool adoption is ahead of the controls around it | The whole framework; white paper evidence |
| Reflections on Trusting Trust, revisited: poisoning self-modifying AI coding (arXiv) | Supply-chain and model poisoning risk applies to the coding loop itself | R6 model provenance; WS2 supply-chain control |
| If your AI agent can touch production and your main safety layer is a prompt, you do not have governance (r/mcp) | Governance means capability limits, not prompt wording | C8; WS2 excessive agency controls; R7 |
| I read 100 AI governance job descriptions (r/AI_Governance) | A named AI governance role is emerging in industry | 04 operating model staffing |

## New tools and watchlist additions

From GitHub search and the engine, tools worth adding to the next register review. None changes a current verdict; each is either a watchlist item or a confirmation of an existing category.

| Tool | What it is | Register treatment |
|---|---|---|
| OpenSpec (Fission-AI) | Spec-driven development for AI coding assistants, around 70k stars | Not a new tool to govern; a practice to adopt. Recommend adding "write the spec before the agent writes the code" to the sandbox guidance |
| Tabby (TabbyML) | Self-hosted AI coding assistant, around 34k stars | Add to the self-hosted candidates alongside Tabnine for privacy-sensitive code |
| Copilot for Xcode (github/CopilotForXcode) | Official Copilot extension for Apple development | Note in the matrix that Copilot coverage now includes Xcode |
| ZCode (zai-org), Friday (itskie), Prokop (capek-dev), OKF Agent Memory (okf-memory) | New agentic coding harnesses and persistent-memory MCP servers | Watchlist: too new for enterprise trust data; same Experimental default as the open-source CLI group |
| Matt Pocock's skills (mattpocock/skills) | Reusable agent skill set | Watchlist as an example of skill-packaged tooling; raises the same MCP integration review question |

## New sources

- Shadow AI security problem, r/AskNetsec: <https://www.reddit.com/r/AskNetsec/comments/1wbv1q8/vibecoded_internal_apps_are_becoming_a_shadow_ai/>
- If AI coding is lowering your code quality: <https://www.i-kh.net/p/if-ai-coding-is-lowering-your-code>
- CI bottleneck reworked, Linear: <https://linear.app/now/ci-bottleneck-reworked>
- Architecture enforcement for AI coding agents, r/LLMDevs: <https://www.reddit.com/r/LLMDevs/comments/1wd35lt/do_ai_coding_agents_need_an_architecture/>
- Are code reviews still worth it for AI generated code, r/codereview: <https://www.reddit.com/r/codereview/comments/1wfzzac/are_code_reviews_still_worth_it_when_the_code_is/>
- AI coding outpaces governance, InfoQ: <https://www.infoq.com/news/2026/06/ai-coding-outpaces-governance/>
- Trusting Trust revisited, arXiv: <https://arxiv.org/abs/2609.17817>
- Governance is not a prompt, r/mcp: <https://www.reddit.com/r/mcp/comments/1w6sx3f/hot_take_if_your_ai_agent_can_touch_production/>
- AI governance job descriptions, r/AI_Governance: <https://www.reddit.com/r/AI_Governance/comments/1whe4c9/i_read_100_ai_governance_job_descriptions_to_see/>
- University of Sydney staff strike over AI and job security, The Guardian: <https://www.theguardian.com/australia-news/2026/sep/02/we-have-had-enough-thousands-of-staff-at-the-university-of-sydney-walk-off-the-job-over-ai-job-security>
- OpenSpec: <https://github.com/Fission-AI/OpenSpec>
- Tabby: <https://github.com/TabbyML/tabby>
- Copilot for Xcode: <https://github.com/github/CopilotForXcode>
- ZCode: <https://github.com/zai-org/ZCode>
- Friday: <https://github.com/itskie/friday>
- Prokop: <https://github.com/capek-dev/prokop>
- OKF Agent Memory: <https://github.com/okf-memory/okf-agent-memory>

## Suggested small updates

1. Add "write the spec before the agent writes the code" to the sandbox onboarding and to the gate's code quality area. This is the single cheapest control the sweep surfaced, and it answers the code review question directly.
2. Add Tabby to the self-hosted Approved candidates in the register, alongside Tabnine, when the next quarterly review runs.
3. Note in the matrix that Copilot now ships an Xcode extension, so the Apple platform gap is closed.
4. Add the Sydney strike as a communication risk example in the white paper: the framework is about how prototypes become supported products, and it should be explicit that it is not a job-replacement exercise. 05 already lists this misreading; the strike is fresh evidence for it.
5. Watch the InfoQ and GitLab line on tool adoption outrunning governance as the opening statistic for the white paper problem statement.

## What did not change

No verdict in Document 01 moved. The contradictions in Document 01 are unaffected. The five outcome routes, the tier model, the gate, and the operating model all stand. This refresh adds evidence and a handful of watchlist items, nothing more.
