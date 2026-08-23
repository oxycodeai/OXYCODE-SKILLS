# ui-builder Skill

> Generate production-ready UI components and pages from text prompts. Creates Vercel-quality React/TypeScript code with Tailwind CSS.

## What Does This Skill Do?

The `ui-builder` skill teaches AI coding agents to:
1. **Generate** UI components from text descriptions
2. **Create** full pages (dashboards, landing pages, etc.)
3. **Apply** design tokens from DESIGN.md files
4. **Ensure** Vercel-quality output (no AI slop)

## Why Use This Skill?

Most AI-generated UI looks bad:
- Purple/blue gradients everywhere
- Centered everything
- Rainbow colors
- Oversized border radius
- Generic Inter font

This skill teaches AI to generate clean, modern UI like Vercel, Linear, or Stripe.

## Quick Start

### Generate a Component
```bash
/ui-builder "Create a stats card with title, value, and percentage change"
```

### Generate a Page
```bash
/ui-builder "Build a SaaS landing page with hero, features, pricing, and testimonials"
```

### Generate with Design System
```bash
/ui-builder "Create a dashboard using the design tokens from DESIGN.md"
```

## Features

- ✅ React/TypeScript output
- ✅ Tailwind CSS styling
- ✅ Responsive design
- ✅ Accessibility attributes
- ✅ Design token support
- ✅ No AI slop patterns
- ✅ Production-ready code

## File Structure

```
skills/ui-builder/
├── SKILL.md                    # Main skill instructions
├── README.md                   # This file
├── references/
│   ├── component-patterns.md   # Reusable component patterns
│   ├── layout-system.md        # Grid and flexbox patterns
│   └── polish-checklist.md     # Quality checklist
├── examples/
│   ├── landing-page.md         # Landing page example
│   └── dashboard.md            # Dashboard example
└── templates/
    └── starter-components/     # Starter templates
```

## Component Patterns

### Card
```tsx
<div className="bg-white border border-zinc-200 rounded-lg p-6 shadow-sm">
  {children}
</div>
```

### Button
```tsx
<button className="px-4 py-2 text-sm font-medium text-white bg-zinc-900 rounded-lg hover:bg-zinc-800 transition-colors">
  Click me
</button>
```

### Input
```tsx
<input
  type="text"
  className="w-full px-3 py-2 text-sm border border-zinc-300 rounded-lg focus:ring-2 focus:ring-zinc-500 focus:border-transparent"
  placeholder="Enter text..."
/>
```

## Layout Patterns

### Dashboard
```tsx
<div className="flex h-screen">
  <aside className="w-64 border-r border-zinc-200">Sidebar</aside>
  <main className="flex-1 p-6">Content</main>
</div>
```

### Landing Page
```tsx
<div className="min-h-screen">
  <nav>Navigation</nav>
  <section>Hero</section>
  <section>Features</section>
  <footer>Footer</footer>
</div>
```

## Anti-Patterns to Avoid

### ❌ Don't Use Gradients
```tsx
// BAD
<div className="bg-gradient-to-br from-purple-500 to-blue-500">

// GOOD
<div className="bg-zinc-900">
```

### ❌ Don't Center Everything
```tsx
// BAD
<div className="text-center">

// GOOD (when appropriate)
<div className="text-left">
```

### ❌ Don't Use Rainbow Colors
```tsx
// BAD
<div className="text-red-500 text-blue-500 text-green-500">

// GOOD
<div className="text-zinc-100">
```

## Examples

See [examples/landing-page.md](examples/landing-page.md) for a complete landing page example.

See [examples/dashboard.md](examples/dashboard.md) for a complete dashboard example.

## Validation Checklist

Before delivering UI code, verify:
- [ ] Uses design tokens (no hardcoded values)
- [ ] Semantic HTML elements
- [ ] Accessibility attributes
- [ ] Responsive design
- [ ] TypeScript types
- [ ] No anti-patterns
- [ ] Consistent spacing
- [ ] Proper color hierarchy

## Resources

- [Vercel Design System](https://vercel.com/design)
- [shadcn/ui](https://ui.shadcn.com/)
- [Tailwind CSS](https://tailwindcss.com)
- [DESIGN.md Spec](https://github.com/google-labs-code/design.md)

## Contributing

See [CONTRIBUTING.md](../../CONTRIBUTING.md) for guidelines.
