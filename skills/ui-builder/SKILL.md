---
name: ui-builder
description: Build production-quality UI with React, Tailwind, and Next.js
---

# ui-builder

## Description

Generate production-ready UI components and pages from text prompts. Creates Vercel-quality React/TypeScript code with Tailwind CSS, following design system tokens from DESIGN.md files.

## Trigger

Use this skill when:
- User asks to create UI components
- User wants to build a page or layout
- User says "build a dashboard" or "create a landing page"
- User provides a DESIGN.md and wants UI generated from it
- User says "ui-builder" followed by a description

## Instructions

### Step 1: Understand the Request

Before generating UI, understand:
- What type of UI (dashboard, landing page, form, etc.)
- Components needed (sidebar, cards, tables, etc.)
- Layout requirements (grid, flex, etc.)
- Responsive breakpoints
- Dark/light theme support

### Step 2: Read DESIGN.md (If Provided)

If a DESIGN.md file exists:
1. Parse design tokens (colors, typography, spacing)
2. Apply tokens to all generated code
3. Ensure consistency with existing design system

If no DESIGN.md exists:
1. Use default Vercel-style tokens
2. Generate a DESIGN.md for future reference

### Step 3: Generate Components

Generate React/TypeScript components with:

```tsx
// Component structure
import { cn } from '@/lib/utils'

interface ComponentProps {
  // TypeScript props
}

export function Component({ ...props }: ComponentProps) {
  return (
    <div className={cn(
      // Base styles
      "base-classes",
      // Variant classes
      variant && "variant-classes",
      // Custom classes
      className
    )}>
      {/* Content */}
    </div>
  )
}
```

### Step 4: Apply Design Tokens

Use design tokens consistently:

```tsx
// ✅ CORRECT: Using design tokens
<div className="bg-zinc-950 border border-zinc-800 rounded-lg p-6">

// ❌ WRONG: Hardcoded values
<div className="bg-[#09090b] border border-[#27272a] rounded-[12px] p-6">
```

### Step 5: Ensure Quality

Check for:
- ✅ Semantic HTML (section, article, nav, etc.)
- ✅ Accessibility (aria-labels, roles, etc.)
- ✅ Responsive design (mobile-first)
- ✅ TypeScript types
- ✅ Proper component composition
- ✅ No hardcoded values

### Step 6: Generate Before/After

Show the difference:

**Before (AI Slop):**
```tsx
<div className="bg-gradient-to-br from-purple-500 to-blue-500 p-8 rounded-2xl">
  <h1 className="text-3xl font-bold text-white text-center">Welcome</h1>
</div>
```

**After (Vercel-Quality):**
```tsx
<section className="bg-zinc-950 border border-zinc-800 rounded-xl p-6">
  <h2 className="text-xl font-semibold text-zinc-100 tracking-tight">
    Welcome
  </h2>
  <p className="mt-2 text-sm text-zinc-400 leading-relaxed">
    Description here
  </p>
</section>
```

## Component Patterns

### Card Pattern
```tsx
<div className="bg-white border border-zinc-200 rounded-lg p-6 shadow-sm">
  <h3 className="text-lg font-semibold text-zinc-900">Title</h3>
  <p className="mt-2 text-sm text-zinc-500">Description</p>
</div>
```

### Button Pattern
```tsx
<button className="inline-flex items-center justify-center px-4 py-2 text-sm font-medium text-white bg-zinc-900 rounded-lg hover:bg-zinc-800 transition-colors">
  Click me
</button>
```

### Input Pattern
```tsx
<input
  type="text"
  className="w-full px-3 py-2 text-sm border border-zinc-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-zinc-500 focus:border-transparent"
  placeholder="Enter text..."
/>
```

### Navigation Pattern
```tsx
<nav className="flex items-center gap-6 px-6 py-4 border-b border-zinc-200">
  <a href="/" className="text-sm font-medium text-zinc-900">Home</a>
  <a href="/about" className="text-sm text-zinc-500 hover:text-zinc-900">About</a>
</nav>
```

### Table Pattern
```tsx
<table className="w-full text-sm text-left">
  <thead className="text-xs text-zinc-500 uppercase bg-zinc-50">
    <tr>
      <th className="px-6 py-3">Name</th>
      <th className="px-6 py-3">Status</th>
    </tr>
  </thead>
  <tbody className="divide-y divide-zinc-200">
    <tr>
      <td className="px-6 py-4">Item 1</td>
      <td className="px-6 py-4">Active</td>
    </tr>
  </tbody>
</table>
```

## Layout Patterns

### Dashboard Layout
```tsx
<div className="flex h-screen">
  {/* Sidebar */}
  <aside className="w-64 border-r border-zinc-200 bg-zinc-50">
    {/* Navigation */}
  </aside>
  
  {/* Main Content */}
  <main className="flex-1 overflow-auto">
    {/* Header */}
    <header className="border-b border-zinc-200 px-6 py-4">
      <h1 className="text-lg font-semibold">Dashboard</h1>
    </header>
    
    {/* Content */}
    <div className="p-6">
      {/* Cards, tables, etc. */}
    </div>
  </main>
</div>
```

### Landing Page Layout
```tsx
<div className="min-h-screen">
  {/* Navigation */}
  <nav className="border-b border-zinc-200">
    {/* Logo, links, CTA */}
  </nav>
  
  {/* Hero Section */}
  <section className="py-20 px-6 text-center">
    <h1 className="text-4xl font-bold">Headline</h1>
    <p className="mt-4 text-lg text-zinc-500">Subheadline</p>
  </section>
  
  {/* Features */}
  <section className="py-20 px-6 bg-zinc-50">
    {/* Feature cards */}
  </section>
  
  {/* Footer */}
  <footer className="py-12 px-6 border-t border-zinc-200">
    {/* Footer content */}
  </footer>
</div>
```

## Examples

### Example 1: Analytics Dashboard

**Input:**
"Create an analytics dashboard with sidebar navigation, stats cards, and a data table"

**Output:**
```tsx
// app/dashboard/page.tsx
import { Sidebar } from '@/components/sidebar'
import { StatsCard } from '@/components/stats-card'
import { DataTable } from '@/components/data-table'

export default function Dashboard() {
  return (
    <div className="flex h-screen bg-zinc-950">
      <Sidebar />
      
      <main className="flex-1 overflow-auto">
        <header className="border-b border-zinc-800 px-6 py-4">
          <h1 className="text-lg font-semibold text-zinc-100">Analytics</h1>
        </header>
        
        <div className="p-6 space-y-6">
          {/* Stats Grid */}
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-4">
            <StatsCard title="Total Users" value="12,345" change="+12%" />
            <StatsCard title="Revenue" value="$45,678" change="+8%" />
            <StatsCard title="Orders" value="1,234" change="+5%" />
            <StatsCard title="Conversion" value="3.2%" change="+0.5%" />
          </div>
          
          {/* Data Table */}
          <div className="bg-zinc-900 border border-zinc-800 rounded-lg">
            <DataTable />
          </div>
        </div>
      </main>
    </div>
  )
}
```

### Example 2: SaaS Landing Page

**Input:**
"Build a SaaS landing page with hero section, pricing table, and testimonials"

**Output:**
```tsx
// app/page.tsx
import { Hero } from '@/components/hero'
import { Pricing } from '@/components/pricing'
import { Testimonials } from '@/components/testimonials'

export default function LandingPage() {
  return (
    <div className="min-h-screen bg-white">
      {/* Navigation */}
      <nav className="border-b border-zinc-200">
        <div className="max-w-7xl mx-auto px-6 py-4 flex items-center justify-between">
          <span className="text-xl font-bold">SaaS</span>
          <div className="flex items-center gap-6">
            <a href="#features" className="text-sm text-zinc-600 hover:text-zinc-900">Features</a>
            <a href="#pricing" className="text-sm text-zinc-600 hover:text-zinc-900">Pricing</a>
            <button className="px-4 py-2 text-sm font-medium text-white bg-zinc-900 rounded-lg hover:bg-zinc-800">
              Get Started
            </button>
          </div>
        </div>
      </nav>
      
      <Hero />
      <Pricing />
      <Testimonials />
      
      {/* Footer */}
      <footer className="border-t border-zinc-200 py-12">
        <div className="max-w-7xl mx-auto px-6 text-center text-sm text-zinc-500">
          © 2026 SaaS. All rights reserved.
        </div>
      </footer>
    </div>
  )
}
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

### ❌ Don't Use Large Border Radius
```tsx
// BAD
<div className="rounded-3xl">

// GOOD
<div className="rounded-lg">
```

## References

- [Vercel Design System](https://vercel.com/design)
- [shadcn/ui](https://ui.shadcn.com/)
- [Tailwind CSS](https://tailwindcss.com)
- [DESIGN.md Spec](https://github.com/google-labs-code/design.md)

## Validation Checklist

Before delivering UI code, verify:
- [ ] Uses design tokens (no hardcoded values)
- [ ] Semantic HTML elements
- [ ] Accessibility attributes
- [ ] Responsive design
- [ ] TypeScript types
- [ ] No anti-patterns (gradients, centered everything, rainbow colors)
- [ ] Consistent spacing
- [ ] Proper color hierarchy
