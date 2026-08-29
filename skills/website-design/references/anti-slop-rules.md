# Anti-Slop Rules

## What is AI Slop?

AI slop is generic, template-driven UI that looks polished but lacks intention. It follows the same patterns regardless of context. Every dark website ends up looking identical.

## The Anti-Slop Checklist

### Colors

| Slop | Why It's Bad | Fix |
|------|-------------|-----|
| `#0a0a1a` background | Looks like every other AI website | `#000` — pure black |
| `#00d4ff` cyan accent | Overused, looks synthetic | `#3b82f6` blue or `#fff` white |
| Purple-blue gradients | Gradients are decorative, not functional | Solid colors only |
| Gradient text | Hard to read, looks gimmicky | `text-white` |
| `bg-white/5` card backgrounds | Makes everything look the same | `bg-transparent` or `bg-white/[0.02]` |

### Effects

| Slop | Why It's Bad | Fix |
|------|-------------|-----|
| `backdrop-blur` glassmorphism | Overused, hurts performance | Solid backgrounds |
| `shadow-cyan-500/20` glow | Looks like neon, not professional | `shadow-sm` or none |
| `hover:shadow-lg hover:shadow-cyan-500/10` | Distracting, not functional | `hover:bg-gray-200 transition-colors` |
| SVG doodle backgrounds | Clutters the page, adds no value | Pure `#000` |
| Radial gradient dots | Looks like every AI landing page | Solid background |

### Animation

| Slop | Why It's Bad | Fix |
|------|-------------|-----|
| `initial={{ opacity: 0, y: 20 }}` | Content invisible on load | Content visible immediately |
| `whileInView` scroll reveal | Slows down browsing | No scroll animations |
| `staggerChildren` | Delays information delivery | Static layout |
| `whileHover={{ scale: 1.05 }}` | Distracting micro-interactions | `transition-colors` only |
| `whileTap={{ scale: 0.95 }}` | Over-animated | No tap animation |
| Framer Motion for page load | Adds 40KB+ bundle for no reason | CSS transitions |

### Typography

| Slop | Why It's Bad | Fix |
|------|-------------|-----|
| `text-center` on hero | Looks like a template | `text-left` |
| Center-aligned body text | Hard to read | `text-left` |
| `text-6xl font-bold` everywhere | No hierarchy | Proper h1 → h2 → h3 |
| `gradient-text` | Hard to read, looks gimmicky | `text-white` |

### Layout

| Slop | Why It's Bad | Fix |
|------|-------------|-----|
| `min-h-screen` hero | Forces full viewport | `py-32` for natural height |
| `flex items-center justify-center` everywhere | Everything centered | Left-aligned by default |
| `grid-cols-1 md:grid-cols-3` always | Same layout every time | Layout matches content |
| `max-w-7xl` container | Too wide for most content | `max-w-6xl` or `max-w-4xl` |

### Components

| Slop | Why It's Bad | Fix |
|------|-------------|-----|
| Gradient CTA button | Looks like every other AI site | Solid `bg-white text-black` |
| `border-cyan-400/30` | Colored borders look synthetic | `border-white/10` |
| `bg-gradient-to-r from-cyan-400/20` | Gradient buttons are distracting | Solid backgrounds |
| Lucide icons everywhere | Adds dependency, looks generic | Text or simple SVG |
| Star ratings in testimonials | Fake social proof | Remove unless real data |
| Carousel testimonials | Hard to browse | Grid layout |

---

## Detection Script

Before shipping, check for these patterns:

```bash
# Check for AI slop patterns
grep -r "#0a0a1a\|#0d1117\|#0f172a" src/
grep -r "backdrop-blur" src/
grep -r "from-purple\|to-blue\|from-cyan" src/
grep -r "shadow-cyan\|shadow-purple" src/
grep -r "initial={{" src/
grep -r "whileInView" src/
grep -r "staggerChildren" src/
grep -r "text-center" src/
```

---

## Why This Matters

AI slop is:
- **Boring** — Every website looks the same
- **Slow** — Gradients, blur, and animations hurt performance
- **Hard to read** — Low contrast, gradient text, centered layouts
- **Unprofessional** — Looks like a template, not a product
- **Forgettable** — Nothing distinctive, nothing memorable

Vercel quality is:
- **Fast** — No unnecessary effects
- **Readable** — Clear typography hierarchy
- **Professional** — Clean, minimal, intentional
- **Memorable** — Distinctive through restraint
- **Accessible** — Works for everyone
