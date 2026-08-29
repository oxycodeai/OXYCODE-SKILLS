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

```tsx
// ❌ AI Slop — har AI agent yeh banata hai
<div className="bg-gradient-to-br from-purple-500 to-blue-500 p-8 rounded-2xl backdrop-blur-md">
  <h1 className="text-3xl font-bold text-white text-center">Welcome</h1>
</div>
```

### The Solution

```tsx
// ✅ Vercel-Quality — oxycode-skills ke baad
<section className="py-24">
  <div className="max-w-6xl mx-auto px-6">
    <h1 className="text-5xl font-bold tracking-tight">Welcome</h1>
    <p className="text-xl text-gray-400 mt-4 max-w-2xl">Description here</p>
  </div>
</section>
```

## Demo Video

| Before (AI Slop) | After (oxycode-skills) |
|---|---|
| [![Before](https://img.shields.io/badge/▶_Watch-FF0000?style=for-the-badge&logo=telegram&logoColor=white)](https://t.me/OXYCODE_SKILLS_PREVIEW/2) | [![After](https://img.shields.io/badge/▶_Watch-00AA00?style=for-the-badge&logo=telegram&logoColor=white)](https://t.me/OXYCODE_SKILLS_PREVIEW/3) |

---

## ⚡ Quick Install — Copy Your Command

**Apna agent select karo aur command copy karo:**

### Claude Code
```bash
npx skills add oxycodeai/OXYCODE-SKILLS --agent claude-code
```

### OpenCode
```bash
npx skills add oxycodeai/OXYCODE-SKILLS --agent opencode
```

### Codex
```bash
npx skills add oxycodeai/OXYCODE-SKILLS --agent codex
```

### Cursor
```bash
npx skills add oxycodeai/OXYCODE-SKILLS --agent cursor
```

### Antigravity
```bash
npx skills add oxycodeai/OXYCODE-SKILLS --agent antigravity
```

### Sab Agents Ke Liye
```bash
npx skills add oxycodeai/OXYCODE-SKILLS --all
```

---

## 🎯 Specific Skill Install

```bash
# Sirf UI builder
npx skills add oxycodeai/OXYCODE-SKILLS --skill ui-builder --agent claude-code

# Sirf anti-slop
npx skills add oxycodeai/OXYCODE-SKILLS --skill anti-slop --agent opencode

# Dono skills + dono agents
npx skills add oxycodeai/OXYCODE-SKILLS --skill ui-builder --skill anti-slop --agent claude-code --agent opencode
```

---

## Skills Included

| Skill | Description | Kya karta hai |
|-------|-------------|---------------|
| `ui-builder` | Full UI workflow | Brief → Tokens → Components → Polish |
| `design-md` | DESIGN.md generator | Google standard design system files |
| `anti-slop` | AI slop blocker | Gradients, glassmorphism, glow detect karta hai |
| `design-audit` | Quality scorer | UI ko 0-100 score karta hai (10 dimensions) |
| `component-architect` | Architecture guide | Atomic design patterns |
| `website-design` | Website patterns | Vercel-quality design rules |

---

## Supported Agents

| Agent | Format | Command |
|-------|--------|---------|
| **Claude Code** | `.claude-plugin/` | `--agent claude-code` |
| **OpenCode** | `.opencode/` | `--agent opencode` |
| **Codex** | `.codex-plugin/` | `--agent codex` |
| **Cursor** | `.cursor-plugin/` | `--agent cursor` |
| **Antigravity** | `.agents/` | `--agent antigravity` |
| **Universal** | `.agents/skills/` | `--agent universal` |
| + 70 more agents | Auto-detected | `--agent '*'` |

---

## How It Works

```
1. Run command     →  npx skills add oxycodeai/OXYCODE-SKILLS
2. Select agent    →  Claude Code / OpenCode / Codex / etc.
3. Select skills   →  ui-builder / anti-slop / etc.
4. Done!           →  Skills ready to use in your AI agent
```

### Use Skills

```bash
# UI builder
/ui-builder "Create a stats card with title, value, and percentage"

# Anti-slop check
/anti-slop "Review this component for AI slop patterns"

# Design audit
/design-audit "Score this landing page"

# Design system
/design-md "Create design tokens for a dark dashboard"

# Component architecture
/component-architect "Design a button component system"
```

---

## What Makes This Different?

| Feature | Other Skills | oxycode-skills |
|---------|:---:|:---:|
| DESIGN.md support | ❌ | ✅ |
| Anti-slop enforcement | ❌ | ✅ |
| React/TypeScript output | ❌ | ✅ |
| Next.js integration | ❌ | ✅ |
| Quality scoring | ❌ | ✅ |
| 77+ agents supported | ❌ | ✅ |
| Interactive install | ❌ | ✅ |

---

## Contributing

Contributions welcome! Read [Contributing Guide](CONTRIBUTING.md) first.

## License

MIT — see [LICENSE](LICENSE)

## Support

- 📧 Email: oxycodeai@gmail.com
- 🐦 X: @oxycode_ai
- ✈️ Telegram: [OXYCODEAI](https://t.me/OXYCODEAI)
- 💬 Group: [Join](https://t.me/+YXwFGkYYjdJlNjE1)

---

Built with ❤️ by [OXYCODE](https://github.com/oxycodeai)
