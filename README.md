# PM Skills

There's a document that every PM has written and every PM has nodded at in a meeting and nobody can quote two days later. The strategy memo that considers the landscape carefully and lands on: we should move thoughtfully. The PRD where the solution is six bullet points. The metrics framework with three north stars because they're all important.

You know the one.

The frustrating thing isn't that it's wrong. It's that it's not wrong enough to argue with — and work nobody argues with is work that never gets better.

The best practitioners have something embedded that's hard to name. An instinct for when a strategy is missing its diagnosis. A reflex that fires when a roadmap is a feature list dressed as a plan. A standard that runs on every finding before they'll say it out loud. They've done this long enough that it's just how they think — they don't apply these things, they are these things.

Claude isn't these things. It's very good at thorough. These prompts try to close the gap — not by making Claude smarter, but by embedding the specific judgment each artifact type needs. Give it context, get back something with a position in it. Not always right. But at least worth disagreeing with.

25 skills across strategy, discovery, execution, and GTM.

## Install

```bash
git clone https://github.com/kaushalvyas010/pm-skills.git ~/pm-skills
cd ~/pm-skills
chmod +x install.sh
./install.sh
```

Restart Claude Code. Type `/` and they're all there.

## What's here

**Discovery**
`/interview-script` `/summarise-interviews` `/define-metrics` `/analyse-data` `/create-prototype` `/design-experiment` `/map-assumptions`

Interview scripts that can't accidentally confirm what you already believe. Synthesis that maps what's actually driving behaviour, not just what people said. Metrics that connect to decisions — anything that doesn't gets cut. Experiment designs that name every way you could fool yourself before the test runs, not after.

**Strategy**
`/write-strategy-memo` `/critique-product-strategy` `/value-proposition` `/business-model` `/competitive-research` `/pricing-analysis`

Strategy memos that take a position someone can be held accountable for. Critiques that open by identifying which structural leg is missing, before picking apart the details. Value propositions that start from what customers actually use instead of your product — not a blank template. Business models that name what happens when their core advantage erodes. Pricing that rules out the four ways monetisation goes wrong before recommending anything.

**Execution**
`/write-prd` `/technical-deep-dive` `/create-epics` `/create-stories` `/internal-update` `/meeting-notes`

PRDs where the solution reads as a user narrative, not a feature list. Technical deep dives that surface decisions, not just information. Epics that require you to narrate what users can do end-to-end before they're finalised — if the story breaks, the structure is wrong. Stories with acceptance criteria a QA engineer can use without a follow-up conversation. Exec updates where every sentence is actionable, opinionated, or clear, and nothing that isn't gets through.

**GTM**
`/plan-launch` `/write-campaign-brief` `/prfaq` `/write-changelog` `/write-blog-post` `/enablement`

Launch plans that declare who's driving activation and what the customer needs to get value — before any of it turns into a tactics list. Campaign briefs that require positioning to be settled before writing starts. PR/FAQs that ask whether what you're building is genuinely hard to copy, not just delightful. Changelogs that sound like the same product that wrote the last five entries. Blog posts with a test for whether they say something the reader didn't already believe. Enablement docs where the rep understands not just what changed, but why it matters to the specific customer sitting across from them.

## Using them

Run a skill and Claude asks for what it needs. Or give it context upfront:

```
/write-prd We're adding a waitlist feature for B2B SaaS. Admins need to
control rollout to new signups without blocking the sales pipeline.
```

## How it works

Each skill is a folder with a `SKILL.md` file. The install script symlinks them into `~/.claude/skills/` so a `git pull` keeps everything current.

```bash
./install.sh --uninstall
```
