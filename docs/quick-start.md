# Quick Start Guide

## Installation

### For Claude Code
```bash
/install-skill oxycode-skills/ui-builder
/install-skill oxycode-skills/design-md
```

### For OpenCode / Codex / Cursor / Gemini
```bash
npx skills add oxycode-skills --skill ui-builder
npx skills add oxycode-skills --skill design-md
```

### Install All Skills
```bash
npx skills add oxycode-skills --all
```

## Usage

### Step 1: Create a DESIGN.md (Optional but Recommended)

Create a `DESIGN.md` file in your project root:

```markdown
# My App Design System

## Colors
- primary: #18181b (zinc-900)
- secondary: #27272a (zinc-800)
- accent: #3b82f6 (blue-500)
- background: #ffffff (white)
- text: #111827 (gray-900)

## Typography
- font-family: Inter, system-ui, sans-serif
- heading: 24px / 32px / 600 weight
- body: 16px / 24px / 400 weight

## Spacing
- sm: 8px
- md: 16px
- lg: 24px
- xl: 32px
```

### Step 2: Generate UI

#### Generate a Component
```bash
/ui-builder "Create a stats card with title, value, and percentage change"
```

#### Generate a Page
```bash
/ui-builder "Build a SaaS landing page with hero, features, pricing, and testimonials"
```

#### Generate with Design System
```bash
/ui-builder "Create a dashboard using the design tokens from DESIGN.md"
```

### Step 3: Get Production-Ready Code

The skill will output:
- React/TypeScript components
- Tailwind CSS styling
- Responsive design
- Dark mode support
- Accessibility attributes

## Examples

### Example 1: Stats Card

**Input:**
```bash
/ui-builder "Create a stats card with title, value, and percentage change"
```

**Output:**
```tsx
interface StatsCardProps {
  title: string
  value: string
  change: string
  trend: 'up' | 'down'
}

export function StatsCard({ title, value, change, trend }: StatsCardProps) {
  return (
    <div className="bg-white border border-zinc-200 rounded-lg p-6">
      <div className="flex items-center justify-between">
        <p className="text-sm font-medium text-zinc-500">{title}</p>
        <span
          className={`text-xs font-medium px-2 py-1 rounded-full ${
            trend === 'up'
              ? 'text-green-700 bg-green-100'
              : 'text-red-700 bg-red-100'
          }`}
        >
          {change}
        </span>
      </div>
      <p className="mt-2 text-3xl font-bold text-zinc-900">{value}</p>
    </div>
  )
}
```

### Example 2: Landing Page

**Input:**
```bash
/ui-builder "Build a SaaS landing page with hero, features, pricing, and testimonials"
```

**Output:**
A complete landing page with:
- Navigation bar
- Hero section
- Features section
- Pricing table
- Testimonials
- Footer

See [examples/landing-page.md](../skills/ui-builder/examples/landing-page.md) for the full code.

### Example 3: Dashboard

**Input:**
```bash
/ui-builder "Create an analytics dashboard with sidebar navigation, stats cards, and a data table"
```

**Output:**
A complete dashboard with:
- Sidebar navigation
- Header with actions
- Stats cards grid
- Data table with sorting

See [examples/dashboard.md](../skills/ui-builder/examples/dashboard.md) for the full code.

## Tips

### 1. Be Specific
❌ "Create a button"
✅ "Create a primary button with icon and hover state"

### 2. Mention Layout
❌ "Create a page"
✅ "Create a dashboard with sidebar navigation and main content area"

### 3. Specify Style
❌ "Make it look good"
✅ "Use a dark theme with zinc colors and subtle borders"

### 4. Reference Design System
❌ "Create a card"
✅ "Create a card using the design tokens from DESIGN.md"

## Common Patterns

### Dashboard Layout
```bash
/ui-builder "Create a dashboard layout with sidebar, header, and main content area"
```

### Landing Page
```bash
/ui-builder "Build a landing page with hero, features, pricing, and CTA"
```

### Auth Page
```bash
/ui-builder "Create a login page with email/password form and social login buttons"
```

### Settings Page
```bash
/ui-builder "Build a settings page with tabs for profile, billing, and notifications"
```

## Troubleshooting

### Issue: AI generates purple gradients
**Solution:** Add "Use zinc colors, no gradients" to your prompt

### Issue: Everything is centered
**Solution:** Specify "text-left" or "left-aligned" in your prompt

### Issue: Wrong colors
**Solution:** Reference your DESIGN.md: "Use the colors from DESIGN.md"

### Issue: Not responsive
**Solution:** Add "Make it responsive for mobile and desktop"

## Next Steps

1. [Learn about component patterns](../skills/ui-builder/references/component-patterns.md)
2. [Explore layout system](../skills/ui-builder/references/layout-system.md)
3. [Check the polish checklist](../skills/ui-builder/references/polish-checklist.md)
4. [See more examples](../skills/ui-builder/examples/)
