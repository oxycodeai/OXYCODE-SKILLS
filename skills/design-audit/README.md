# design-audit Skill

> Score UI quality across 10 dimensions and generate a ranked fix list with code snippets.

## What Does This Skill Do?

The `design-audit` skill teaches AI coding agents to:
1. **Analyze** UI code across 10 dimensions
2. **Score** each dimension 0-10 (total 0-100)
3. **Identify** issues ranked by impact
4. **Generate** code fixes for each issue
5. **Provide** actionable recommendations

## Why Use This Skill?

- **Quality Gate**: Ensure UI meets production standards
- **Consistent Scoring**: Objective criteria for evaluation
- **Actionable Feedback**: Not just problems, but solutions
- **Prioritized Fixes**: Focus on high-impact issues first

## Quick Start

### Audit a Component
```bash
/design-audit "Audit this stats card component"
```

### Score UI Quality
```bash
/design-audit "Score this UI on a 0-100 scale"
```

### Get Fix Recommendations
```bash
/design-audit "What issues does this UI have?"
```

## Features

- ✅ 10-dimension scoring system
- ✅ 0-100 quality score
- ✅ Ranked issue list
- ✅ Code fixes for each issue
- ✅ Prioritized recommendations
- ✅ Before/after examples

## File Structure

```
skills/design-audit/
├── SKILL.md                    # Main skill instructions
├── README.md                   # This file
├── references/
│   └── scoring-rubric.md       # Detailed scoring criteria
└── examples/
    └── audit-report.md         # Example audit reports
```

## Scoring Dimensions

| Dimension | Points | Description |
|-----------|--------|-------------|
| Color System | 10 | Design tokens, hierarchy, contrast |
| Typography | 10 | Font family, scale, weights |
| Spacing | 10 | Consistent scale, rhythm |
| Layout | 10 | Grid/flex, responsive |
| Components | 10 | States, accessibility, reusability |
| Accessibility | 10 | Semantics, ARIA, keyboard |
| Visual Hierarchy | 10 | Focal points, contrast |
| Consistency | 10 | Patterns, naming |
| Polish | 10 | Animations, states |
| Code Quality | 10 | TypeScript, structure |

## Score Interpretation

- **90-100**: Excellent (Vercel-quality)
- **80-89**: Good (Minor improvements)
- **70-79**: Average (Several issues)
- **60-69**: Below Average (Many issues)
- **50-59**: Poor (Significant issues)
- **0-49**: Terrible (Complete rewrite)

## Priority Levels

### HIGH PRIORITY (5-10 points)
- Accessibility issues
- Responsive issues
- Color contrast issues
- Broken layouts

### MEDIUM PRIORITY (2-4 points)
- Missing hover states
- Inconsistent spacing
- Typography issues
- Missing loading states

### LOW PRIORITY (1 point)
- Minor polish issues
- Missing animations
- Code quality improvements

## Examples

See [examples/audit-report.md](examples/audit-report.md) for complete audit report examples.

## Resources

- [WCAG 2.1 Guidelines](https://www.w3.org/WAI/WCAG21/quickref/)
- [Vercel Design System](https://vercel.com/design)
- [Design Systems Checklist](https://designsystemschecklist.com/)

## Contributing

See [CONTRIBUTING.md](../../CONTRIBUTING.md) for guidelines.
