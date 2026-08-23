# anti-slop Skill

> Block generic AI-generated UI patterns and enforce Vercel-quality design.

## What Does This Skill Do?

The `anti-slop` skill teaches AI coding agents to:
1. **Detect** common AI slop patterns (gradients, centered everything, rainbow colors)
2. **Score** UI quality on a 0-100 scale
3. **Fix** AI slop with Vercel-quality patterns
4. **Enforce** design best practices

## Why Use This Skill?

Most AI-generated UI looks bad:
- Purple/blue gradients everywhere
- Centered everything
- Rainbow colors
- Oversized border radius
- Generic Inter font

This skill detects and fixes these patterns to produce professional UI.

## Quick Start

### Review UI Code
```bash
/anti-slop "Review this component for AI slop"
```

### Fix AI Slop
```bash
/anti-slop "Fix the AI slop in this code"
```

### Score UI Quality
```bash
/anti-slop "Score this UI on a 0-100 scale"
```

## Features

- ✅ Detects 10+ AI slop patterns
- ✅ Scores UI quality 0-100
- ✅ Generates fixed code
- ✅ Provides detailed feedback
- ✅ Enforces design best practices

## File Structure

```
skills/anti-slop/
├── SKILL.md                    # Main skill instructions
├── README.md                   # This file
├── references/
│   ├── slop-patterns.md        # Complete pattern catalog
│   └── quality-rubric.md       # Scoring criteria
└── examples/
    └── before-after.md         # Before/after comparisons
```

## Slop Patterns Detected

| Pattern | Detection | Fix |
|---------|-----------|-----|
| Gradients | `bg-gradient-to-*` | Solid `bg-*` |
| Centered | `text-center` everywhere | Intentional alignment |
| Rainbow | `text-purple-*`, `text-blue-*` | Semantic colors |
| Radius | `rounded-3xl` | `rounded-lg` |
| Inter | `font-sans` with Inter | System stack |
| Cards | `bg-white rounded-2xl shadow-xl` | `border rounded-lg` |
| Hover | `hover:scale-105` | `hover:bg-*` |
| Fake data | "Lorem ipsum", "John Doe" | Realistic content |

## Quality Score

```
Score = 100 - (Slop Patterns × 10)

Examples:
- 0 slop patterns = 100 score
- 3 slop patterns = 70 score
- 5 slop patterns = 50 score
- 10 slop patterns = 0 score
```

### Score Interpretation
- **90-100**: Vercel-quality, production-ready
- **70-89**: Good, minor improvements needed
- **50-69**: Average, several AI slop patterns
- **30-49**: Poor, many AI patterns present
- **0-29**: Terrible, pure AI slop

## Examples

See [examples/before-after.md](examples/before-after.md) for before/after comparisons.

## Resources

- [Vercel Design System](https://vercel.com/design)
- [Linear Design](https://linear.app)
- [Stripe UI](https://stripe.com)

## Contributing

See [CONTRIBUTING.md](../../CONTRIBUTING.md) for guidelines.
