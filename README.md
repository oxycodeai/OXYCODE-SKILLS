# oxycode-skills

> Vercel-quality UI skills for AI coding agents. No more AI slop.

<p align="center">
  <img src="https://img.shields.io/badge/license-MIT-green" alt="License">
  <img src="https://img.shields.io/badge/version-1.1.0-blue" alt="Version">
  <img src="https://img.shields.io/badge/agents-5-purple" alt="Agents">
</p>

## What is this?

**oxycode-skills** teaches AI coding agents to produce Vercel-quality UI instead of generic "AI slop" — the purple gradients, backdrop-blur, and centered cards that every developer hates.

### The Problem

AI-generated UI usually looks like this:
```tsx
// ❌ AI Slop
<div className="bg-gradient-to-br from-purple-500 to-blue-500 p-8 rounded-2xl backdrop-blur-md">
  <h1 className="text-3xl font-bold text-white text-center">Welcome</h1>
</div>
```

### The Solution

With oxycode-skills, AI generates this:
```tsx
// ✅ Vercel-Quality UI
<section className="py-24">
  <div className="max-w-6xl mx-auto px-6">
    <h1 className="text-5xl font-bold tracking-tight">Welcome</h1>
    <p className="text-xl text-gray-400 mt-4 max-w-2xl">Description here</p>
  </div>
</section>
```

## Demo Video

### Before (AI Slop)
[![Watch Before Video](https://img.shields.io/badge/▶_Watch_Before_Video-FF0000?style=for-the-badge&logo=telegram&logoColor=white)](https://t.me/OXYCODE_SKILLS_PREVIEW/2)

### After (oxycode-skills)
[![Watch After Video](https://img.shields.io/badge/▶_Watch_After_Video-00AA00?style=for-the-badge&logo=telegram&logoColor=white)](https://t.me/OXYCODE_SKILLS_PREVIEW/3)

## Skills Included

| Skill | Description |
|-------|-------------|
| `ui-builder` | Full UI workflow: brief → tokens → components → polish |
| `design-md` | Generate & validate DESIGN.md files (Google's standard) |
| `anti-slop` | Block generic AI patterns (gradients, glassmorphism, glow) |
| `design-audit` | Score UI quality 0-100 with 10-dimension rubric |
| `component-architect` | Atomic design patterns & compound components |
| `website-design` | Vercel-quality website patterns & anti-slop rules |

## Installation

### Interactive Install (Recommended)

```bash
npx skills add oxycodeai/OXYCODE-SKILLS
```

The CLI will prompt you to:
1. **Select your agent** — Claude Code, Codex, OpenCode, Antigravity, Cursor, or Universal
2. **Select skills** — Choose which skills to install

### Quick Install (All Skills, All Agents)

```bash
npx skills add oxycodeai/OXYCODE-SKILLS --all
```

### Install for Specific Agent

```bash
# Claude Code
npx skills add oxycodeai/OXYCODE-SKILLS --agent claude-code

# Codex
npx skills add oxycodeai/OXYCODE-SKILLS --agent codex

# OpenCode
npx skills add oxycodeai/OXYCODE-SKILLS --agent opencode

# Antigravity
npx skills add oxycodeai/OXYCODE-SKILLS --agent antigravity

# Universal (works on all agents)
npx skills add oxycodeai/OXYCODE-SKILLS --agent universal
```

### Install Specific Skills

```bash
# Just ui-builder
npx skills add oxycodeai/OXYCODE-SKILLS --skill ui-builder

# Multiple skills
npx skills add oxycodeai/OXYCODE-SKILLS --skill ui-builder --skill anti-slop
```

## Supported Agents

| Agent | Status | Install Command |
|-------|--------|----------------|
| Claude Code | ✅ | `--agent claude-code` |
| Codex | ✅ | `--agent codex` |
| OpenCode | ✅ | `--agent opencode` |
| Antigravity | ✅ | `--agent antigravity` |
| Cursor | ✅ | `--agent cursor` |
| Universal | ✅ | `--agent universal` |

## Quick Start

### 1. Install skills
```bash
npx skills add oxycodeai/OXYCODE-SKILLS --all
```

### 2. Use in your AI agent
```bash
# Generate a dashboard
/ui-builder "Create an analytics dashboard with sidebar navigation"

# Generate a landing page
/ui-builder "Build a SaaS landing page with pricing table"

# Audit existing UI
/design-audit "Score this landing page for design quality"

# Fix AI slop
/anti-slop "Review this component for AI slop patterns"
```

### 3. Get production-ready code
- React/TypeScript components
- Tailwind CSS styling
- Responsive design
- Accessibility attributes
- Design token integration

## What Makes This Different?

| Feature | Other Skills | oxycode-skills |
|---------|--------------|----------------|
| DESIGN.md support | ❌ | ✅ |
| Anti-slop enforcement | ❌ | ✅ |
| React/TypeScript output | ❌ | ✅ |
| Next.js integration | ❌ | ✅ |
| Quality scoring | ❌ | ✅ |
| 5+ agents supported | ❌ | ✅ |
| Interactive install | ❌ | ✅ |

## Contributing

Contributions are welcome! Please read our [Contributing Guide](CONTRIBUTING.md) first.

## License

MIT License - see [LICENSE](LICENSE) for details.

## Support

- 📧 Email: oxycodeai@gmail.com
- 🐦 X (Twitter): @oxycode_ai
- ✈️ Telegram Channel: [Join](https://t.me/OXYCODEAI)
- 💬 Telegram Group: [Join](https://t.me/+YXwFGkYYjdJlNjE1)

---

Built with ❤️ by [OXYCODE](https://github.com/oxycodeai)
