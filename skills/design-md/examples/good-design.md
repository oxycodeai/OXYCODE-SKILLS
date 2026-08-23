# Good DESIGN.md Examples

## Example 1: Dark Dashboard

```markdown
# Analytics Dashboard Design System

## Overview
Dark-themed analytics dashboard for data visualization.
Optimized for long viewing sessions with reduced eye strain.

## Colors

### Background
- background-primary: #09090b (zinc-950)
- background-secondary: #18181b (zinc-900)
- background-tertiary: #27272a (zinc-800)

### Text
- text-primary: #fafafa (zinc-50)
- text-secondary: #a1a1aa (zinc-400)
- text-tertiary: #71717a (zinc-500)

### Borders
- border-primary: #27272a (zinc-800)
- border-secondary: #3f3f46 (zinc-700)

### Accent
- accent-primary: #3b82f6 (blue-500)
- accent-hover: #2563eb (blue-600)

### Semantic
- success: #22c55e (green-500)
- warning: #f59e0b (amber-500)
- error: #ef4444 (red-500)

## Typography

### Font Family
- headings: Inter, system-ui, sans-serif
- body: Inter, system-ui, sans-serif
- mono: JetBrains Mono, monospace

### Type Scale
- display: 30px / 36px / 700 weight
- heading-lg: 20px / 28px / 600 weight
- heading-md: 16px / 24px / 600 weight
- heading-sm: 14px / 20px / 600 weight
- body-lg: 16px / 24px / 400 weight
- body-md: 14px / 20px / 400 weight
- body-sm: 12px / 16px / 400 weight
- code: 14px / 20px / 400 weight

## Spacing
- xs: 4px
- sm: 8px
- md: 16px
- lg: 24px
- xl: 32px

## Borders
- radius-sm: 4px
- radius-md: 8px
- radius-lg: 12px

## Breakpoints
- sm: 640px
- md: 768px
- lg: 1024px
```

### Why This Is Good:
✅ Clear color hierarchy (primary, secondary, tertiary)
✅ Consistent spacing scale
✅ Proper typography with weights
✅ Dark theme optimized
✅ Semantic colors defined

---

## Example 2: Light SaaS Landing Page

```markdown
# SaaS Landing Page Design System

## Overview
Clean, modern landing page for B2B SaaS product.
Focus on trust signals and conversion.

## Colors

### Background
- background: #ffffff (white)
- background-alt: #f9fafb (gray-50)

### Text
- text-primary: #111827 (gray-900)
- text-secondary: #6b7280 (gray-500)
- text-tertiary: #9ca3af (gray-400)

### Primary
- primary: #2563eb (blue-600)
- primary-hover: #1d4ed8 (blue-700)

### Secondary
- secondary: #f3f4f6 (gray-100)
- secondary-hover: #e5e7eb (gray-200)

### Border
- border: #e5e7eb (gray-200)

### Semantic
- success: #059669 (emerald-600)
- warning: #d97706 (amber-600)
- error: #dc2626 (red-600)

## Typography

### Font Family
- headings: Inter, system-ui, sans-serif
- body: Inter, system-ui, sans-serif

### Type Scale
- display: 48px / 56px / 700 weight
- heading-lg: 30px / 36px / 700 weight
- heading-md: 24px / 32px / 600 weight
- heading-sm: 20px / 28px / 600 weight
- body-lg: 18px / 28px / 400 weight
- body-md: 16px / 24px / 400 weight
- body-sm: 14px / 20px / 400 weight

## Spacing
- xs: 4px
- sm: 8px
- md: 16px
- lg: 24px
- xl: 32px
- 2xl: 48px
- 3xl: 64px
- 4xl: 96px

## Borders
- radius-sm: 4px
- radius-md: 8px
- radius-lg: 12px
- radius-xl: 16px
- radius-full: 9999px

## Shadows
- shadow-sm: 0 1px 2px 0 rgb(0 0 0 / 0.05)
- shadow-md: 0 4px 6px -1px rgb(0 0 0 / 0.1), 0 2px 4px -2px rgb(0 0 0 / 0.1)
- shadow-lg: 0 10px 15px -3px rgb(0 0 0 / 0.1), 0 4px 6px -4px rgb(0 0 0 / 0.1)

## Breakpoints
- sm: 640px
- md: 768px
- lg: 1024px
- xl: 1280px

## Components

### Button
- Primary: primary bg, white text, radius-full, padding 12px 24px
- Secondary: secondary bg, text-primary text, radius-full, padding 12px 24px
- Ghost: transparent bg, text-primary text, radius-full, padding 12px 24px

### Card
- Background: white
- Border: border
- Radius: lg
- Shadow: md
- Padding: lg

### Badge
- Background: primary with 10% opacity
- Text: primary
- Radius: full
- Padding: 4px 12px
```

### Why This Is Good:
✅ Light theme optimized
✅ Clear visual hierarchy
✅ Generous spacing for landing page
✅ Component variants defined
✅ Conversion-focused (trust signals)

---

## Example 3: Mobile-First App

```markdown
# Mobile App Design System

## Overview
iOS/Android mobile app design system.
Optimized for touch interactions and small screens.

## Colors

### Background
- background: #ffffff (white)
- background-secondary: #f9fafb (gray-50)

### Text
- text-primary: #111827 (gray-900)
- text-secondary: #6b7280 (gray-500)

### Primary
- primary: #8b5cf6 (violet-500)
- primary-hover: #7c3aed (violet-600)

### Border
- border: #e5e7eb (gray-200)

## Typography

### Font Family
- body: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif

### Type Scale
- heading-lg: 28px / 34px / 700 weight
- heading-md: 22px / 28px / 600 weight
- heading-sm: 18px / 24px / 600 weight
- body-lg: 17px / 24px / 400 weight
- body-md: 15px / 22px / 400 weight
- body-sm: 13px / 18px / 400 weight

## Spacing
- xs: 4px
- sm: 8px
- md: 16px
- lg: 24px
- xl: 32px

## Touch Targets
- minimum: 44px x 44px
- comfortable: 48px x 48px

## Breakpoints
- sm: 375px (iPhone SE)
- md: 390px (iPhone 14)
- lg: 428px (iPhone 14 Pro Max)
```

### Why This Is Good:
✅ Mobile-specific touch targets
✅ System font stack for performance
✅ Larger body text for readability
✅ Proper spacing for thumbs
