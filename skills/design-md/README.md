# design-md Skill

> Generate and validate DESIGN.md files following Google's open-source design system standard.

## What Does This Skill Do?

The `design-md` skill teaches AI coding agents to:
1. **Generate** DESIGN.md files from project requirements
2. **Validate** existing DESIGN.md files for completeness
3. **Convert** DESIGN.md tokens to Tailwind CSS config
4. **Apply** design tokens consistently across components

## Why Use DESIGN.md?

DESIGN.md is an open-source format created by Google Labs Code that:
- Provides a single source of truth for design decisions
- Enables AI tools to understand design systems
- Ensures consistency across projects
- Facilitates design-to-code workflows

## Quick Start

### Generate a DESIGN.md

```bash
/design-md "Create a design system for a dark-themed analytics dashboard"
```

### Validate an Existing DESIGN.md

```bash
/design-md validate ./path/to/DESIGN.md
```

### Convert to Tailwind Config

```bash
/design-md convert ./path/to/DESIGN.md
```

## Features

- ✅ Automatic color palette generation
- ✅ Typography scale with proper ratios
- ✅ Consistent spacing system
- ✅ Component token definitions
- ✅ Dark theme support
- ✅ Tailwind CSS conversion
- ✅ Validation with detailed feedback

## File Structure

```
skills/design-md/
├── SKILL.md                    # Main skill instructions
├── README.md                   # This file
├── references/
│   └── design-md-spec.md       # Full specification
├── examples/
│   ├── good-design.md          # Good examples
│   └── bad-design.md           # Bad examples
└── scripts/
    └── validate.sh             # Validation script
```

## Examples

### Input
```
Create a design system for a modern SaaS landing page
```

### Output
```markdown
# SaaS Landing Page Design System

## Colors
- primary: #2563eb
- background: #ffffff
- text: #111827
...

## Typography
- font-family: Inter, system-ui, sans-serif
- heading: 24px / 32px / 600 weight
- body: 16px / 24px / 400 weight
...
```

## Validation Rules

1. **Colors**: Must be valid hex (#RRGGBB)
2. **Typography**: Must include font-family, size, line-height, weight
3. **Spacing**: Must follow consistent scale
4. **Breakpoints**: Must be mobile-first
5. **Components**: Should define variant styles

## Resources

- [DESIGN.md Specification](https://github.com/google-labs-code/design.md)
- [Stitch by Google](https://stitch.withgoogle.com)
- [Tailwind CSS](https://tailwindcss.com)

## Contributing

See [CONTRIBUTING.md](../../CONTRIBUTING.md) for guidelines.
