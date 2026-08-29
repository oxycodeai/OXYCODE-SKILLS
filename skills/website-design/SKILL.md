---
name: website-design
description: "Professional website design with clean typography, proper spacing, and Vercel-quality patterns. Use when building landing pages, SaaS websites, portfolios, or any modern web application."
---

# Website Design Skill

## Non-Negotiable Rules

1. **Background is pure black** — `#000` only. Never `#0a0a1a`, `#0d1117`, `#0f172a`, or any other near-black.
2. **Never add gradients** — No purple-to-blue, no cyan, no gradient text. Solid colors only.
3. **Never add glow effects** — No `shadow-cyan`, no `shadow-purple`, no colored shadows.
4. **Never add glassmorphism** — No `backdrop-blur`, no `bg-white/5`, no frosted glass cards.
5. **Never add doodle/pattern backgrounds** — No SVG patterns, no radial-gradient dots.
6. **Never use Framer Motion for page load animations** — No `initial={{ opacity: 0, y: 20 }}`. No `whileInView`. No stagger animations. Content is visible immediately.
7. **Text is left-aligned** — Never center-align hero headings. Never center-align body text.
8. **Typography is hierarchical** — One `h1` per page, proper `h2` → `h3` → `p` hierarchy.

---

## Design Tokens

### Colors

| Token | Value | Use |
|-------|-------|-----|
| `--bg` | `#000` | Page background |
| `--bg-subtle` | `#0a0a0a` | Subtle section backgrounds |
| `--surface` | `#111` | Card backgrounds |
| `--border` | `#222` | Borders |
| `--text` | `#fff` | Primary text |
| `--text-secondary` | `#888` | Secondary text |
| `--text-muted` | `#555` | Muted text |
| `--accent` | `#3b82f6` | Links, buttons, interactive |

### Typography

| Level | Font | Size | Weight | Line Height |
|-------|------|------|--------|-------------|
| Display | Inter/system | 48px | 700 | 1.1 |
| H1 | Inter/system | 36px | 700 | 1.2 |
| H2 | Inter/system | 28px | 600 | 1.3 |
| H3 | Inter/system | 20px | 600 | 1.4 |
| Body | Inter/system | 16px | 400 | 1.6 |
| Small | Inter/system | 14px | 400 | 1.5 |

### Spacing (8px grid)

| Token | Value |
|-------|-------|
| `--space-1` | 4px |
| `--space-2` | 8px |
| `--space-3` | 12px |
| `--space-4` | 16px |
| `--space-6` | 24px |
| `--space-8` | 32px |
| `--space-12` | 48px |
| `--space-16` | 64px |
| `--space-24` | 96px |
| `--space-32` | 128px |

### Transitions

| Type | Duration | Easing |
|------|----------|--------|
| Micro (hover) | 150ms | ease |
| Default | 200ms | ease |
| Slow | 300ms | ease-out |

---

## Layout Patterns

### Page Container

```tsx
<div className="min-h-screen bg-black text-white">
  <div className="max-w-6xl mx-auto px-6">
    {/* Content */}
  </div>
</div>
```

### Section Spacing

```tsx
<section className="py-24">
  <div className="max-w-6xl mx-auto px-6">
    <h2 className="text-3xl font-bold mb-4">Section Title</h2>
    <p className="text-gray-400 text-lg mb-12 max-w-2xl">
      Section description text.
    </p>
    {/* Section content */}
  </div>
</section>
```

### Grid

```tsx
<div className="grid grid-cols-1 md:grid-cols-3 gap-6">
  {/* Items */}
</div>
```

### Two-Column Layout

```tsx
<div className="grid grid-cols-1 lg:grid-cols-2 gap-16 items-start">
  <div>
    {/* Left column */}
  </div>
  <div>
    {/* Right column */}
  </div>
</div>
```

---

## Component Patterns

### Navigation

```tsx
<nav className="border-b border-white/10">
  <div className="max-w-6xl mx-auto px-6 h-16 flex items-center justify-between">
    <a href="/" className="text-lg font-semibold">
      Logo
    </a>
    <div className="flex items-center gap-8">
      <a href="#features" className="text-sm text-gray-400 hover:text-white transition-colors">
        Features
      </a>
      <a href="#pricing" className="text-sm text-gray-400 hover:text-white transition-colors">
        Pricing
      </a>
      <button className="bg-white text-black text-sm font-medium px-4 py-2 rounded-lg hover:bg-gray-200 transition-colors">
        Get Started
      </button>
    </div>
  </div>
</nav>
```

**Rules:**
- No `backdrop-blur`. No glassmorphism. Solid background.
- Border-bottom: `border-white/10` or `border-white/5`
- Height: `h-16` (64px) standard
- Logo: text-based, not image (unless brand logo exists)

### Hero Section

```tsx
<section className="py-32">
  <div className="max-w-6xl mx-auto px-6">
    <h1 className="text-5xl md:text-6xl font-bold tracking-tight mb-6">
      Build faster.<br />Ship better.
    </h1>
    <p className="text-xl text-gray-400 mb-10 max-w-2xl">
      One paragraph that explains what this product does. Keep it under 2 lines.
    </p>
    <div className="flex items-center gap-4">
      <button className="bg-white text-black text-sm font-medium px-5 py-3 rounded-lg hover:bg-gray-200 transition-colors">
        Get Started
      </button>
      <button className="border border-white/20 text-white text-sm font-medium px-5 py-3 rounded-lg hover:bg-white/5 transition-colors">
        Learn More
      </button>
    </div>
  </div>
</section>
```

**Rules:**
- Text is left-aligned. Never centered.
- `h1`: `text-5xl md:text-6xl font-bold tracking-tight`
- One-line subtitle: `text-xl text-gray-400 max-w-2xl`
- CTA buttons: Primary (white bg, black text) + Secondary (border only)
- Max height: no `min-h-screen`. Use `py-32` for breathing room.

### Feature Card

```tsx
<div className="p-6">
  <div className="w-10 h-10 rounded-lg bg-white/5 flex items-center justify-center mb-4">
    {/* Icon */}
  </div>
  <h3 className="text-base font-semibold mb-2">Feature Name</h3>
  <p className="text-sm text-gray-400 leading-relaxed">
    Feature description. Keep it to 2 lines max.
  </p>
</div>
```

**Rules:**
- No card backgrounds. Just padding.
- If cards needed: `border border-white/10 rounded-xl p-6`
- Icon container: `w-10 h-10 rounded-lg bg-white/5`
- No hover glow. No hover shadow. No colored shadows.

### Pricing Card

```tsx
<div className="border border-white/10 rounded-xl p-8">
  <h3 className="text-lg font-semibold mb-2">Pro</h3>
  <p className="text-sm text-gray-400 mb-6">For growing teams</p>
  <div className="mb-6">
    <span className="text-4xl font-bold">$29</span>
    <span className="text-gray-400 text-sm">/month</span>
  </div>
  <ul className="space-y-3 mb-8">
    <li className="flex items-center gap-3 text-sm">
      <span className="text-white">✓</span> Feature one
    </li>
    <li className="flex items-center gap-3 text-sm">
      <span className="text-white">✓</span> Feature two
    </li>
  </ul>
  <button className="w-full bg-white text-black text-sm font-medium py-3 rounded-lg hover:bg-gray-200 transition-colors">
    Get Started
  </button>
</div>
```

**Rules:**
- No gradient borders. No "featured" tier with glow.
- Checkmark: `✓` character, not icon library
- Price: `text-4xl font-bold`
- Monthly toggle: simple `text-sm text-gray-400` toggle, not animated

### Testimonial

```tsx
<div className="border border-white/10 rounded-xl p-6">
  <p className="text-sm text-gray-300 mb-4 leading-relaxed">
    "Quote text goes here. Keep it to 2-3 sentences max."
  </p>
  <div className="flex items-center gap-3">
    <div className="w-8 h-8 rounded-full bg-white/10" />
    <div>
      <p className="text-sm font-medium">Name</p>
      <p className="text-xs text-gray-500">Company, Role</p>
    </div>
  </div>
</div>
```

**Rules:**
- No star ratings (unless explicitly requested)
- No carousel (grid is better for 3-6 testimonials)
- Avatar: `w-8 h-8 rounded-full bg-white/10` (placeholder)
- Quote: `text-sm text-gray-300 leading-relaxed`

### Footer

```tsx
<footer className="border-t border-white/10 py-12">
  <div className="max-w-6xl mx-auto px-6">
    <div className="grid grid-cols-2 md:grid-cols-4 gap-8">
      <div>
        <h4 className="text-sm font-semibold mb-4">Product</h4>
        <ul className="space-y-2">
          <li><a href="#" className="text-sm text-gray-400 hover:text-white transition-colors">Features</a></li>
        </ul>
      </div>
    </div>
    <div className="mt-12 pt-8 border-t border-white/10">
      <p className="text-xs text-gray-500">© 2026 Company. All rights reserved.</p>
    </div>
  </div>
</footer>
```

---

## What NOT to Do (AI Slop)

| Pattern | ❌ Never | ✅ Instead |
|---------|---------|-----------|
| Background | `#0a0a1a`, `#0d1117` | `#000` |
| Accent | `#00d4ff` (cyan) | `#3b82f6` (blue) or `#fff` |
| Gradient | `from-purple-500 to-blue-500` | Solid colors |
| Gradient text | `bg-clip-text text-transparent` | `text-white` |
| Glass | `backdrop-blur-md bg-white/5` | Solid bg or no bg |
| Glow | `shadow-cyan-500/20` | `shadow-sm` or none |
| Pattern bg | SVG doodles, radial dots | Pure `#000` |
| Animation | `initial={{ opacity: 0 }}` | Content visible immediately |
| Hover | `whileHover={{ scale: 1.05 }}` | `hover:bg-gray-200 transition-colors` |
| Center align | `text-center` on hero | `text-left` |
| Framer Motion | Page load animations | CSS transitions only |
| Icon library | Lucide/Heroicons everywhere | Text or simple SVG |
| Card bg | `bg-white/5` | `bg-transparent` or `bg-white/[0.02]` |

---

## Accessibility

- `aria-label` on icon-only buttons
- `role="navigation"` on nav
- Focus states: `focus-visible:ring-2 focus-visible:ring-white/20`
- Skip link: `<a href="#main" className="sr-only focus:not-sr-only">Skip to content</a>`
- Semantic HTML: `<nav>`, `<main>`, `<footer>`, `<section>`

---

## Responsive

- Mobile-first: `grid-cols-1 md:grid-cols-2 lg:grid-cols-3`
- Container: `max-w-6xl mx-auto px-6`
- Text: `text-3xl md:text-5xl` for headings
- Navigation: hamburger menu on mobile (`md:hidden`)

---

## Final Checklist

- [ ] Background is `#000` (pure black)
- [ ] No gradients anywhere
- [ ] No glassmorphism / backdrop-blur
- [ ] No glow effects / colored shadows
- [ ] No doodle/pattern backgrounds
- [ ] No Framer Motion page load animations
- [ ] Text is left-aligned (not centered)
- [ ] Typography hierarchy is correct
- [ ] Transitions are 150-200ms max
- [ ] Mobile responsive
- [ ] Accessibility (aria labels, focus states)
- [ ] Semantic HTML

---

## Reference Files

- `references/anti-slop-rules.md` — Full list of AI slop patterns to avoid
- `references/design-tokens.md` — Complete design token system
