# oxycode-skills

> Vercel-quality UI skills for AI coding agents. No more AI slop.

<p align="center">
  <img src="https://img.shields.io/badge/license-MIT-green" alt="License">
  <img src="https://img.shields.io/badge/version-1.0.0-blue" alt="Version">
  <img src="https://img.shields.io/badge/platform-Claude%20%7C%20Codex%20%7C%20OpenCode%20%7C%20Cursor%20%7C%20Gemini-purple" alt="Platforms">
</p>

## What is this?

**oxycode-skills** teaches AI coding agents to produce Vercel-quality UI instead of generic "AI slop" — the purple gradients, Inter font, and centered cards that every developer hates.

### The Problem

AI-generated UI usually looks like this:
```tsx
// ❌ AI Slop
<div className="bg-gradient-to-br from-purple-500 to-blue-500 p-8 rounded-2xl">
  <h1 className="text-3xl font-bold text-white text-center">Welcome</h1>
</div>
```

### The Solution

With oxycode-skills, AI generates this:
```tsx
// ✅ Vercel-Quality UI
<section className="bg-zinc-950 border border-zinc-800 rounded-xl p-6">
  <h2 className="text-xl font-semibold text-zinc-100 tracking-tight">
    Welcome
  </h2>
  <p className="mt-2 text-sm text-zinc-400 leading-relaxed">
    Description here
  </p>
</section>
```

## Demo Video

### Before (AI Slop)
[![Watch Before Video](https://img.shields.io/badge/▶_Watch_Before_Video-FF0000?style=for-the-badge&logo=telegram&logoColor=white)](https://t.me/OXYCODE_SKILLS_PREVIEW/2)

### After (oxycode-skills)
[![Watch After Video](https://img.shields.io/badge/▶_Watch_After_Video-00AA00?style=for-the-badge&logo=telegram&logoColor=white)](https://t.me/OXYCODE_SKILLS_PREVIEW/3)

## Skills Included

| Skill | Description | Status |
|-------|-------------|--------|
| `ui-builder` | Full UI workflow: brief → tokens → components → polish | ✅ Ready |
| `design-md` | Generate & validate DESIGN.md files (Google's standard) | ✅ Ready |
| `anti-slop` | Block generic AI patterns | ✅ Ready |
| `design-audit` | Score UI quality 0-100 | ✅ Ready |
| `component-architect` | Atomic design patterns | ✅ Ready |

## Installation

### For Claude Code
```bash
/install-skill oxycode-skills/ui-builder
```

### For OpenCode / Codex / Cursor / Gemini
```bash
npx skills add oxycode-skills --skill ui-builder
```

### All Skills
```bash
npx skills add oxycode-skills --all
```

## Quick Start

### 1. Create a DESIGN.md
```markdown
# My App Design System

## Colors
- Primary: #18181b (zinc-900)
- Secondary: #27272a (zinc-800)
- Accent: #3b82f6 (blue-500)

## Typography
- Font: Inter
- Headings: 600 weight, tracking-tight
- Body: 400 weight, leading-relaxed

## Spacing
- XS: 4px
- SM: 8px
- MD: 16px
- LG: 24px
- XL: 32px
```

### 2. Use the ui-builder skill
```bash
# Generate a dashboard
/ui-builder "Create a analytics dashboard with sidebar navigation"

# Generate a landing page
/ui-builder "Build a SaaS landing page with pricing table"
```

### 3. Get production-ready code
The skill will output:
- React/TypeScript components
- Tailwind CSS styling
- Responsive design
- Dark mode support
- Accessibility attributes

## Platforms Supported

- ✅ Claude Code
- ✅ OpenCode
- ✅ Codex
- ✅ Cursor
- ✅ Gemini CLI

## What Makes This Different?

| Feature | Other Skills | oxycode-skills |
|---------|--------------|----------------|
| DESIGN.md support | ❌ | ✅ |
| Anti-slop enforcement | ❌ | ✅ |
| React/TypeScript output | ❌ | ✅ |
| Next.js integration | ❌ | ✅ |
| Quality scoring | ❌ | ✅ |
| Cross-platform | ❌ | ✅ |

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
