# Bad DESIGN.md Examples (What NOT To Do)

## ❌ Example 1: Incomplete Design System

```markdown
# My Design System

## Colors
- blue: #3b82f6
- red: #ef4444
- green: #22c55e

## Font
- font: Inter
```

### Why This Is Bad:
❌ No color hierarchy (no shades)
❌ No semantic meaning for colors
❌ No typography scale
❌ No spacing system
❌ No component definitions
❌ Missing essential sections

---

## ❌ Example 2: Too Many Colors

```markdown
# Rainbow Design System

## Colors
- red: #ff0000
- orange: #ff8800
- yellow: #ffff00
- green: #00ff00
- cyan: #00ffff
- blue: #0000ff
- purple: #8800ff
- pink: #ff00ff
- maroon: #800000
- olive: #808000
- lime: #00ff00
- aqua: #00ffff
- teal: #008080
- navy: #000080
- fuchsia: #ff00ff
```

### Why This Is Bad:
❌ Too many colors (overwhelming)
❌ No primary/secondary hierarchy
❌ No semantic meaning
❌ Hard to maintain
❌ Inconsistent naming

---

## ❌ Example 3: Inconsistent Spacing

```markdown
# Spacing System

## Sizes
- tiny: 3px
- small: 7px
- medium: 15px
- large: 23px
- huge: 41px
- massive: 67px
```

### Why This Is Bad:
❌ Inconsistent values (not on a grid)
❌ Arbitrary names
❌ Not following standard scale (4, 8, 16, 24, etc.)
❌ Hard to remember

---

## ❌ Example 4: No Typography Scale

```markdown
# Typography

## Font
- font: Inter

## Sizes
- small: 12px
- medium: 16px
- large: 20px
- extra large: 24px
- huge: 32px
```

### Why This Is Bad:
❌ No line-height defined
❌ No font-weight defined
❌ No font-family for different contexts
❌ Not following type scale ratio
❌ Missing code/mono font

---

## ❌ Example 5: Missing Dark Theme

```markdown
# Light Theme Only

## Colors
- background: #ffffff
- text: #000000
- primary: #007bff
- secondary: #6c757d
```

### Why This Is Bad:
❌ No dark theme support
❌ No semantic colors (success, error, warning)
❌ No neutral palette
❌ Limited use cases

---

## ❌ Example 6: Random Breakpoints

```markdown
# Breakpoints

## Sizes
- xs: 320px
- sm: 480px
- md: 600px
- lg: 768px
- xl: 900px
- xxl: 1024px
- xxxl: 1200px
- huge: 1440px
```

### Why This Is Bad:
❌ Non-standard breakpoints
❌ Too many breakpoints
❌ Not mobile-first
❌ Hard to remember
❌ Inconsistent naming

---

## ❌ Example 7: No Component Tokens

```markdown
# Design System

## Colors
- primary: #3b82f6
- background: #ffffff

## Typography
- font: Inter
- size: 16px
```

### Why This Is Bad:
❌ No component-specific tokens
❌ No button styles
❌ No card styles
❌ No input styles
❌ Forces developers to guess

---

## Summary: What Makes a Bad DESIGN.md

| Issue | Impact |
|-------|--------|
| Missing sections | Incomplete design system |
| Too many colors | Visual chaos |
| Inconsistent spacing | Unpredictable layouts |
| No typography scale | Inconsistent text |
| No dark theme | Limited use cases |
| Random breakpoints | Responsive chaos |
| No component tokens | Developer confusion |

---

## How To Fix

1. **Add all required sections** (Colors, Typography, Spacing, etc.)
2. **Use consistent naming** (primary-500, neutral-100, etc.)
3. **Follow standard scales** (4, 8, 16, 24 for spacing)
4. **Include dark theme** (background-dark, text-dark, etc.)
5. **Define component tokens** (button-primary, card-bg, etc.)
6. **Use standard breakpoints** (sm: 640, md: 768, lg: 1024)
