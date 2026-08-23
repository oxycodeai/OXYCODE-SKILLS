# design-md

Generate and validate DESIGN.md files following Google's open-source design system standard.

## Usage

```bash
/design-md "Create a design system for a dark-themed analytics dashboard"
```

## Description

This skill teaches AI coding agents to generate DESIGN.md files that define design tokens (colors, typography, spacing, shadows) for consistent UI across projects.

## Features

- Automatic color palette generation
- Typography scale with proper ratios
- Consistent spacing system
- Component token definitions
- Dark theme support
- Tailwind CSS conversion

## Examples

### Dashboard Design System
```bash
/design-md "Create a design system for a dark-themed analytics dashboard"
```

### Landing Page Design System
```bash
/design-md "Generate a design system for a modern SaaS landing page"
```

### Validate Existing DESIGN.md
```bash
/design-md validate ./path/to/DESIGN.md
```

## Validation Rules

1. Colors must be valid hex (#RRGGBB)
2. Typography must include font-family, size, line-height, weight
3. Spacing must follow consistent scale
4. Breakpoints must be mobile-first
5. Components should define variant styles

## Resources

- [DESIGN.md Specification](https://github.com/google-labs-code/design.md)
- [Stitch by Google](https://stitch.withgoogle.com)
- [Tailwind CSS](https://tailwindcss.com)
