# DESIGN.md Specification

## Overview

DESIGN.md is an open-source format created by Google Labs Code for defining design systems in a human-readable, machine-parseable format.

## Purpose

- Single source of truth for design decisions
- Enables AI tools to understand design systems
- Ensures consistency across projects
- Facilitates design-to-code workflows

## File Structure

```markdown
# [Project Name] Design System

## Overview
Brief description of the design system purpose and scope.

## Colors
Color definitions organized by category.

## Typography
Font families, sizes, weights, and line heights.

## Spacing
Consistent spacing units.

## Borders
Border radius and width definitions.

## Shadows
Box shadow definitions.

## Breakpoints
Responsive breakpoint values.

## Components
Component-specific design tokens.
```

## Required Sections

### 1. Overview
- Project name
- Design philosophy
- Target audience
- Platform(s)

### 2. Colors
Must include:
- Primary palette (50-900 shades)
- Neutral palette (50-900 shades)
- Semantic colors (success, warning, error, info)
- Background/foreground colors

Format:
```
- [name]: [hex value]
```

### 3. Typography
Must include:
- Font families (headings, body, mono)
- Type scale with sizes, line-heights, weights
- Font weight definitions

Format:
```
- [level]: [size] / [line-height] / [weight] weight
```

### 4. Spacing
Must include:
- Consistent unit system
- Named spacing values (xs, sm, md, lg, xl, etc.)

Format:
```
- [name]: [value]
```

### 5. Borders
Must include:
- Border radius values
- Border width values (optional)

### 6. Shadows
Must include:
- Box shadow definitions
- Organized by elevation level

### 7. Breakpoints
Must include:
- Mobile-first breakpoint values
- Standard breakpoints (sm, md, lg, xl, 2xl)

### 8. Components (Optional)
Component-specific tokens for:
- Buttons
- Cards
- Inputs
- Navigation
- etc.

## Validation Rules

### Colors
- Must be valid hex format (#RRGGBB or #RRGGBBAA)
- Must include enough shades for light/dark themes

### Typography
- Must specify font-family
- Must include size, line-height, and weight
- Should follow type scale ratio (1.25 or 1.333)

### Spacing
- Must use consistent unit (px, rem, or em)
- Should follow a scale (4, 8, 16, 24, 32, etc.)

### Breakpoints
- Must be in ascending order
- Must start with mobile-first (< 640px)

## Example: Minimal DESIGN.md

```markdown
# MyApp Design System

## Colors
- primary: #3b82f6
- background: #ffffff
- text: #111827

## Typography
- font-family: Inter, system-ui, sans-serif
- heading: 24px / 32px / 600 weight
- body: 16px / 24px / 400 weight

## Spacing
- sm: 8px
- md: 16px
- lg: 24px

## Breakpoints
- md: 768px
- lg: 1024px
```

## Example: Full DESIGN.md

```markdown
# Enterprise Dashboard Design System

## Overview
A comprehensive design system for enterprise analytics dashboards.
Designed for data-heavy interfaces with dark theme support.

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
```

## Resources

- [GitHub: google-labs-code/design.md](https://github.com/google-labs-code/design.md)
- [Stitch by Google](https://stitch.withgoogle.com)
- [Tailwind CSS](https://tailwindcss.com)
