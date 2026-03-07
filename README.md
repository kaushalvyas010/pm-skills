# PM Skills

Claude is good at PM work. Too good, sometimes — it knows every framework, names them, structures them neatly. The output looks right but reads like it was written by nobody in particular.

I started writing prompts that skip the scaffolding. Give it 2-3 things, get back something usable. Not always perfect, but at least it sounds like a person made a decision.

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

**Discovery** — `/interview-script`, `/summarise-interviews`, `/define-metrics`, `/analyse-data`, `/create-prototype`, `/design-experiment`, `/map-assumptions`

**Strategy** — `/write-strategy-memo`, `/critique-product-strategy`, `/value-proposition`, `/business-model`, `/competitive-research`, `/pricing-analysis`

**Execution** — `/write-prd`, `/technical-deep-dive`, `/create-epics`, `/create-stories`, `/internal-update`, `/meeting-notes`

**GTM** — `/plan-launch`, `/write-campaign-brief`, `/prfaq`, `/write-changelog`, `/write-blog-post`, `/enablement`

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
