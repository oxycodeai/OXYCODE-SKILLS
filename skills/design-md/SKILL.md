# design-md

## Description

Generate and validate DESIGN.md files following Google's open-source design system standard. DESIGN.md defines design tokens (colors, typography, spacing, shadows) that ensure consistent UI across projects.

## Trigger

Use this skill when:
- User asks to create a design system
- User wants to generate DESIGN.md
- User needs to validate an existing DESIGN.md
- User says "create design tokens" or "set up design system"

## Instructions

### Step 1: Understand the Project

Before generating DESIGN.md, understand:
- Project type (dashboard, landing page, ecommerce, etc.)
- Brand colors (if provided)
- Target audience
- Platform (web, mobile, both)

### Step 2: Generate DESIGN.md

Create a DESIGN.md file with these sections:

```markdown
# [Project Name] Design System

## Overview
Brief description of the design system.

## Colors

### Primary Palette
- primary-50: #eff6ff
- primary-100: #dbeafe
- primary-200: #bfdbfe
- primary-300: #93c5fd
- primary-400: #60a5fa
- primary-500: #3b82f6
- primary-600: #2563eb
- primary-700: #1d4ed8
- primary-800: #1e40af
- primary-900: #1e3a8a

### Neutral Palette
- neutral-50: #fafafa
- neutral-100: #f4f4f5
- neutral-200: #e4e4e7
- neutral-300: #d4d4d8
- neutral-400: #a1a1aa
- neutral-500: #71717a
- neutral-600: #52525b
- neutral-700: #3f3f46
- neutral-800: #27272a
- neutral-900: #18181b

### Semantic Colors
- success: #22c55e
- warning: #f59e0b
- error: #ef4444
- info: #3b82f6

## Typography

### Font Family
- Headings: Inter, system-ui, sans-serif
- Body: Inter, system-ui, sans-serif
- Mono: JetBrains Mono, monospace

### Type Scale
- display-lg: 36px / 40px / 700 weight
- display-md: 30px / 36px / 700 weight
- display-sm: 24px / 32px / 600 weight
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
- 2xl: 48px
- 3xl: 64px

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
- shadow-xl: 0 20px 25px -5px rgb(0 0 0 / 0.1), 0 8px 10px -6px rgb(0 0 0 / 0.1)

## Breakpoints

- sm: 640px
- md: 768px
- lg: 1024px
- xl: 1280px
- 2xl: 1536px

## Components

### Button
- Primary: primary-600 bg, white text, radius-md
- Secondary: neutral-100 bg, neutral-900 text, radius-md
- Ghost: transparent bg, neutral-600 text, radius-md

### Card
- Background: white
- Border: neutral-200
- Radius: lg
- Shadow: md
- Padding: lg

### Input
- Background: white
- Border: neutral-300
- Focus border: primary-500
- Radius: md
- Padding: sm md

### Navigation
- Background: white
- Border bottom: neutral-200
- Height: 64px
```

### Step 3: Validate DESIGN.md

Check the DESIGN.md for:
- All required sections present
- Color values are valid hex
- Typography has font families and sizes
- Spacing is consistent
- Breakpoints are standard

### Step 4: Convert to Tailwind Config

Generate a tailwind.config.js that uses the DESIGN.md tokens:

```javascript
/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ['./src/**/*.{js,ts,jsx,tsx,mdx}'],
  theme: {
    extend: {
      colors: {
        primary: {
          50: '#eff6ff',
          100: '#dbeafe',
          // ... all values from DESIGN.md
        },
        neutral: {
          50: '#fafafa',
          // ... all values from DESIGN.md
        },
      },
      fontFamily: {
        sans: ['Inter', 'system-ui', 'sans-serif'],
        mono: ['JetBrains Mono', 'monospace'],
      },
      fontSize: {
        'display-lg': ['36px', { lineHeight: '40px', fontWeight: '700' }],
        // ... all values from DESIGN.md
      },
      spacing: {
        xs: '4px',
        sm: '8px',
        md: '16px',
        lg: '24px',
        xl: '32px',
        '2xl': '48px',
        '3xl': '64px',
      },
      borderRadius: {
        sm: '4px',
        md: '8px',
        lg: '12px',
        xl: '16px',
        full: '9999px',
      },
      boxShadow: {
        sm: '0 1px 2px 0 rgb(0 0 0 / 0.05)',
        md: '0 4px 6px -1px rgb(0 0 0 / 0.1), 0 2px 4px -2px rgb(0 0 0 / 0.1)',
        lg: '0 10px 15px -3px rgb(0 0 0 / 0.1), 0 4px 6px -4px rgb(0 0 0 / 0.1)',
        xl: '0 20px 25px -5px rgb(0 0 0 / 0.1), 0 8px 10px -6px rgb(0 0 0 / 0.1)',
      },
    },
  },
  plugins: [],
}
```

## Examples

### Example 1: Dashboard Design System

**Input:**
"Create a design system for a dark-themed analytics dashboard"

**Output:**
```markdown
# Analytics Dashboard Design System

## Colors
- background: #09090b (zinc-950)
- surface: #18181b (zinc-900)
- border: #27272a (zinc-800)
- text-primary: #fafafa (zinc-50)
- text-secondary: #a1a1aa (zinc-400)
- accent: #3b82f6 (blue-500)
```

### Example 2: Ecommerce Design System

**Input:**
"Generate a design system for a modern ecommerce site"

**Output:**
```markdown
# Ecommerce Design System

## Colors
- background: #ffffff (white)
- surface: #f9fafb (gray-50)
- border: #e5e7eb (gray-200)
- primary: #111827 (gray-900)
- accent: #2563eb (blue-600)
- success: #059669 (emerald-600)
```

## References

- [Google DESIGN.md Spec](https://github.com/google-labs-code/design.md)
- [Tailwind CSS Documentation](https://tailwindcss.com/docs)
- [shadcn/ui](https://ui.shadcn.com/)

## Validation Rules

1. **Colors**: Must be valid hex (#RRGGBB or #RRGGBBAA)
2. **Typography**: Must include font-family, size, line-height, weight
3. **Spacing**: Must be consistent unit (px, rem, or em)
4. **Breakpoints**: Must follow mobile-first approach
5. **Components**: Must define variant styles
