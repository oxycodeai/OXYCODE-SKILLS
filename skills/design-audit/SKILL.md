# design-audit

## Description

Score UI quality across 10 dimensions and generate a ranked fix list with code snippets. Provides comprehensive design audit with actionable recommendations.

## Trigger

Use this skill when:
- User wants to review UI quality
- User asks "how good is this UI?"
- User wants a design audit
- User says "audit this design" or "score this UI"
- Before shipping UI code

## Instructions

### Step 1: Analyze the UI

Examine the code for these 10 dimensions:

#### 1. Color System (10 points)
- Uses design tokens
- Proper color hierarchy
- Semantic colors (success, warning, error)
- No random colors
- Good contrast ratios

#### 2. Typography (10 points)
- Consistent font family
- Proper type scale
- Correct font weights
- Readable line heights
- No orphan headings

#### 3. Spacing (10 points)
- Consistent spacing scale
- Proper padding/margins
- Visual rhythm maintained
- No cramped elements
- No excessive whitespace

#### 4. Layout (10 points)
- Proper grid/flex usage
- Responsive design
- No overflow issues
- Clean alignment
- Consistent gutters

#### 5. Components (10 points)
- Consistent styling
- Proper states (hover, focus, active)
- Accessible
- Reusable
- Well-structured

#### 6. Accessibility (10 points)
- Semantic HTML
- ARIA attributes
- Keyboard navigation
- Color contrast
- Screen reader support

#### 7. Visual Hierarchy (10 points)
- Clear focal points
- Proper size contrast
- Weight contrast
- Color contrast
- Spacing contrast

#### 8. Consistency (10 points)
- Consistent patterns
- Consistent naming
- Consistent spacing
- Consistent colors
- Consistent typography

#### 9. Polish (10 points)
- Subtle animations
- Proper loading states
- Error states
- Empty states
- Attention to detail

#### 10. Code Quality (10 points)
- TypeScript types
- Component structure
- Reusability
- Maintainability
- Performance

### Step 2: Score Each Dimension

Rate each dimension 0-10:
- **10**: Excellent, production-ready
- **8-9**: Good, minor improvements
- **6-7**: Average, several issues
- **4-5**: Poor, many issues
- **0-3**: Terrible, complete rewrite

### Step 3: Calculate Total Score

```
Total Score = Sum of all dimensions (0-100)
```

### Step 4: Generate Fix List

Create a ranked list of issues:

```markdown
## Issues Found (Ranked by Impact)

### HIGH PRIORITY
1. **Issue**: [Description]
   - **Impact**: [Why it matters]
   - **Fix**: [Code snippet]
   - **Score Impact**: +X points

2. **Issue**: [Description]
   - **Impact**: [Why it matters]
   - **Fix**: [Code snippet]
   - **Score Impact**: +X points

### MEDIUM PRIORITY
3. **Issue**: [Description]
   - **Impact**: [Why it matters]
   - **Fix**: [Code snippet]
   - **Score Impact**: +X points

### LOW PRIORITY
4. **Issue**: [Description]
   - **Impact**: [Why it matters]
   - **Fix**: [Code snippet]
   - **Score Impact**: +X points
```

### Step 5: Provide Recommendations

```markdown
## Recommendations

### Immediate Actions
1. Fix accessibility issues (legal risk)
2. Fix responsive issues (user experience)
3. Fix color contrast (readability)

### Short-term Improvements
1. Add loading states
2. Add error states
3. Add empty states

### Long-term Enhancements
1. Add animations
2. Add dark mode
3. Add i18n support
```

## Scoring Matrix

| Dimension | 0-3 | 4-5 | 6-7 | 8-9 | 10 |
|-----------|-----|-----|-----|-----|-----|
| Color | Random colors | Some tokens | Mostly tokens | All tokens | Perfect system |
| Typography | No scale | Inconsistent | Mostly consistent | Consistent | Perfect scale |
| Spacing | Random | Inconsistent | Mostly consistent | Consistent | Perfect system |
| Layout | Broken | Mostly broken | Works | Clean | Perfect |
| Components | Inconsistent | Mostly inconsistent | Mostly consistent | Consistent | Perfect system |
| Accessibility | None | Basic | Good | Very good | Excellent |
| Hierarchy | None | Weak | Good | Strong | Perfect |
| Consistency | None | Low | Medium | High | Perfect |
| Polish | None | Basic | Good | Very good | Excellent |
| Code Quality | Poor | Fair | Good | Very good | Excellent |

## Output Format

```markdown
# Design Audit Report

## Score: XX/100

### Dimension Breakdown
| Dimension | Score | Notes |
|-----------|-------|-------|
| Color System | X/10 | [Notes] |
| Typography | X/10 | [Notes] |
| Spacing | X/10 | [Notes] |
| Layout | X/10 | [Notes] |
| Components | X/10 | [Notes] |
| Accessibility | X/10 | [Notes] |
| Visual Hierarchy | X/10 | [Notes] |
| Consistency | X/10 | [Notes] |
| Polish | X/10 | [Notes] |
| Code Quality | X/10 | [Notes] |

## Issues Found

### HIGH PRIORITY
1. [Issue]
   - Impact: [Impact]
   - Fix: [Code]
   - Score Impact: +X

### MEDIUM PRIORITY
2. [Issue]
   - Impact: [Impact]
   - Fix: [Code]
   - Score Impact: +X

### LOW PRIORITY
3. [Issue]
   - Impact: [Impact]
   - Fix: [Code]
   - Score Impact: +X

## Recommendations

### Immediate Actions
1. [Action]

### Short-term Improvements
1. [Improvement]

### Long-term Enhancements
1. [Enhancement]
```

## Examples

### Example 1: Stats Card Audit

**Input:**
```tsx
<div className="bg-white border border-zinc-200 rounded-lg p-6">
  <p className="text-sm text-zinc-500">Revenue</p>
  <p className="text-3xl font-bold text-zinc-900">$45,678</p>
</div>
```

**Output:**
```markdown
# Design Audit Report

## Score: 85/100

### Dimension Breakdown
| Dimension | Score | Notes |
|-----------|-------|-------|
| Color System | 9/10 | Uses zinc tokens, good hierarchy |
| Typography | 8/10 | Consistent, could add line-height |
| Spacing | 9/10 | Consistent scale |
| Layout | 8/10 | Clean, responsive |
| Components | 8/10 | Good structure |
| Accessibility | 7/10 | Missing aria-label |
| Visual Hierarchy | 9/10 | Clear focal point |
| Consistency | 9/10 | Follows patterns |
| Polish | 7/10 | Missing hover state |
| Code Quality | 9/10 | Clean, typed |

## Issues Found

### HIGH PRIORITY
1. **Missing aria-label**
   - Impact: Screen readers can't identify element
   - Fix: Add `aria-label="Revenue stat"`
   - Score Impact: +3

### MEDIUM PRIORITY
2. **No hover state**
   - Impact: No interactive feedback
   - Fix: Add `hover:border-zinc-300 transition-colors`
   - Score Impact: +2

### LOW PRIORITY
3. **Missing line-height**
   - Impact: Minor readability issue
   - Fix: Add `leading-relaxed` to paragraph
   - Score Impact: +1

## Recommendations

### Immediate Actions
1. Add aria-label for accessibility

### Short-term Improvements
1. Add hover state for interactivity

### Long-term Enhancements
1. Add loading skeleton
2. Add dark mode variant
```

## References

- [WCAG 2.1 Guidelines](https://www.w3.org/WAI/WCAG21/quickref/)
- [Vercel Design System](https://vercel.com/design)
- [Design Systems Checklist](https://designsystemschecklist.com/)

## Validation Checklist

Before delivering audit:
- [ ] All 10 dimensions scored
- [ ] Issues ranked by impact
- [ ] Code fixes provided
- [ ] Recommendations clear
- [ ] Score is accurate
