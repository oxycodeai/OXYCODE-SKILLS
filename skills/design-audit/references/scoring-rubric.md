# Design Audit Scoring Rubric

## Overview

This rubric provides detailed criteria for scoring UI code across 10 dimensions. Each dimension is scored 0-10, for a total of 100 points.

---

## Dimension 1: Color System (10 points)

### 10/10: Excellent
- Uses design tokens exclusively
- Proper color hierarchy (primary, secondary, neutral)
- Semantic colors defined (success, warning, error)
- Good contrast ratios (4.5:1 for text)
- No hardcoded colors
- Dark/light theme support

### 8-9/10: Good
- Mostly uses design tokens
- Minor inconsistencies
- Good contrast
- Mostly semantic colors

### 6-7/10: Average
- Some hardcoded colors
- Inconsistent hierarchy
- Some contrast issues
- Missing semantic colors

### 4-5/10: Poor
- Many hardcoded colors
- Poor hierarchy
- Many contrast issues
- No semantic colors

### 0-3/10: Terrible
- All hardcoded colors
- No hierarchy
- Poor contrast
- Random colors

### Detection Checklist
```
✅ Uses design tokens (no hardcoded values)
✅ Proper color hierarchy
✅ Semantic colors defined
✅ Good contrast ratios
✅ No random colors
✅ Dark/light theme support
```

---

## Dimension 2: Typography (10 points)

### 10/10: Excellent
- Consistent font family
- Proper type scale (display, heading, body)
- Correct font weights
- Readable line heights (1.5 for body)
- No orphan headings
- Responsive typography

### 8-9/10: Good
- Mostly consistent
- Minor issues
- Good readability
- Mostly proper weights

### 6-7/10: Average
- Some inconsistencies
- Some readability issues
- Inconsistent weights

### 4-5/10: Poor
- Many inconsistencies
- Poor readability
- Random weights

### 0-3/10: Terrible
- No consistent font
- No type scale
- Poor readability

### Detection Checklist
```
✅ Consistent font family
✅ Proper type scale
✅ Correct font weights
✅ Readable line heights
✅ No orphan headings
✅ Responsive typography
```

---

## Dimension 3: Spacing (10 points)

### 10/10: Excellent
- Consistent spacing scale (4, 8, 16, 24, 32)
- Proper padding/margins
- Visual rhythm maintained
- No cramped elements
- No excessive whitespace
- Responsive spacing

### 8-9/10: Good
- Mostly consistent
- Minor issues
- Good rhythm
- Mostly proper

### 6-7/10: Average
- Some inconsistencies
- Some rhythm issues
- Inconsistent spacing

### 4-5/10: Poor
- Many inconsistencies
- Poor rhythm
- Random spacing

### 0-3/10: Terrible
- No spacing system
- No rhythm
- Random values

### Detection Checklist
```
✅ Consistent spacing scale
✅ Proper padding/margins
✅ Visual rhythm maintained
✅ No cramped elements
✅ No excessive whitespace
✅ Responsive spacing
```

---

## Dimension 4: Layout (10 points)

### 10/10: Excellent
- Proper grid/flex usage
- Responsive design (mobile-first)
- No overflow issues
- Clean alignment
- Consistent gutters
- Proper container widths

### 8-9/10: Good
- Mostly proper
- Minor issues
- Mostly responsive
- Good alignment

### 6-7/10: Average
- Some layout problems
- Some responsive issues
- Some alignment issues

### 4-5/10: Poor
- Many layout problems
- Poor responsive
- Poor alignment

### 0-3/10: Terrible
- Broken layout
- Not responsive
- No alignment

### Detection Checklist
```
✅ Proper grid/flex usage
✅ Responsive design
✅ No overflow issues
✅ Clean alignment
✅ Consistent gutters
✅ Proper container widths
```

---

## Dimension 5: Components (10 points)

### 10/10: Excellent
- Consistent styling
- Proper states (hover, focus, active, disabled)
- Accessible
- Reusable
- Well-structured
- Proper variants

### 8-9/10: Good
- Mostly consistent
- Most states present
- Mostly accessible
- Mostly reusable

### 6-7/10: Average
- Some inconsistencies
- Some missing states
- Some accessibility issues

### 4-5/10: Poor
- Many inconsistencies
- Many missing states
- Poor accessibility

### 0-3/10: Terrible
- No consistency
- No states
- Not accessible

### Detection Checklist
```
✅ Consistent styling
✅ Proper states (hover, focus, active, disabled)
✅ Accessible
✅ Reusable
✅ Well-structured
✅ Proper variants
```

---

## Dimension 6: Accessibility (10 points)

### 10/10: Excellent
- Semantic HTML (nav, section, article, main)
- Proper ARIA attributes
- Keyboard navigation
- Color contrast (4.5:1 for text)
- Screen reader support
- Focus indicators

### 8-9/10: Good
- Mostly semantic
- Most ARIA attributes
- Mostly keyboard accessible
- Good contrast
- Mostly screen reader accessible

### 6-7/10: Average
- Some semantic issues
- Some missing ARIA
- Some keyboard issues
- Some contrast issues

### 4-5/10: Poor
- Many semantic issues
- Many missing ARIA
- Poor keyboard support
- Poor contrast

### 0-3/10: Terrible
- No semantics
- No ARIA
- Not keyboard accessible
- Poor contrast

### Detection Checklist
```
✅ Semantic HTML
✅ Proper ARIA attributes
✅ Keyboard navigation
✅ Color contrast
✅ Screen reader support
✅ Focus indicators
```

---

## Dimension 7: Visual Hierarchy (10 points)

### 10/10: Excellent
- Clear focal points
- Proper size contrast
- Weight contrast
- Color contrast
- Spacing contrast
- Clear reading flow

### 8-9/10: Good
- Mostly clear hierarchy
- Good contrast
- Good flow
- Minor issues

### 6-7/10: Average
- Some hierarchy issues
- Some contrast issues
- Some flow issues

### 4-5/10: Poor
- Poor hierarchy
- Poor contrast
- Poor flow

### 0-3/10: Terrible
- No hierarchy
- No contrast
- No flow

### Detection Checklist
```
✅ Clear focal points
✅ Proper size contrast
✅ Weight contrast
✅ Color contrast
✅ Spacing contrast
✅ Clear reading flow
```

---

## Dimension 8: Consistency (10 points)

### 10/10: Excellent
- Consistent patterns
- Consistent naming
- Consistent spacing
- Consistent colors
- Consistent typography
- Consistent components

### 8-9/10: Good
- Mostly consistent
- Minor inconsistencies
- Good patterns

### 6-7/10: Average
- Some inconsistencies
- Some pattern issues

### 4-5/10: Poor
- Many inconsistencies
- Poor patterns

### 0-3/10: Terrible
- No consistency
- No patterns

### Detection Checklist
```
✅ Consistent patterns
✅ Consistent naming
✅ Consistent spacing
✅ Consistent colors
✅ Consistent typography
✅ Consistent components
```

---

## Dimension 9: Polish (10 points)

### 10/10: Excellent
- Subtle animations
- Proper loading states
- Error states
- Empty states
- Attention to detail
- Smooth transitions

### 8-9/10: Good
- Most animations present
- Most states present
- Good attention to detail

### 6-7/10: Average
- Some missing animations
- Some missing states
- Some detail issues

### 4-5/10: Poor
- Many missing animations
- Many missing states
- Poor attention to detail

### 0-3/10: Terrible
- No animations
- No states
- No attention to detail

### Detection Checklist
```
✅ Subtle animations
✅ Proper loading states
✅ Error states
✅ Empty states
✅ Attention to detail
✅ Smooth transitions
```

---

## Dimension 10: Code Quality (10 points)

### 10/10: Excellent
- Proper TypeScript types
- Good component structure
- Reusable components
- Maintainable code
- Good performance
- No code smells

### 8-9/10: Good
- Mostly typed
- Good structure
- Mostly reusable
- Good performance

### 6-7/10: Average
- Some typing issues
- Some structure issues
- Some reusability issues

### 4-5/10: Poor
- Many typing issues
- Poor structure
- Poor reusability

### 0-3/10: Terrible
- No TypeScript
- Poor structure
- Not reusable

### Detection Checklist
```
✅ Proper TypeScript types
✅ Good component structure
✅ Reusable components
✅ Maintainable code
✅ Good performance
✅ No code smells
```

---

## Score Calculation

```
Total Score = Sum of all dimensions (0-100)
```

### Score Interpretation
- **90-100**: Excellent (Vercel-quality, production-ready)
- **80-89**: Good (Minor improvements needed)
- **70-79**: Average (Several issues to fix)
- **60-69**: Below Average (Many issues to fix)
- **50-59**: Poor (Significant issues)
- **0-49**: Terrible (Complete rewrite needed)

---

## Priority Levels

### HIGH PRIORITY (Score Impact: 5-10 points)
- Accessibility issues (legal risk)
- Responsive issues (user experience)
- Color contrast issues (readability)
- Broken layouts

### MEDIUM PRIORITY (Score Impact: 2-4 points)
- Missing hover states
- Inconsistent spacing
- Typography issues
- Missing loading states

### LOW PRIORITY (Score Impact: 1 point)
- Minor polish issues
- Missing animations
- Code quality improvements
- Documentation

---

## Usage

### Step 1: Score Each Dimension
Rate the UI code on each of the 10 dimensions (0-10).

### Step 2: Calculate Total
Add up all scores to get a total out of 100.

### Step 3: Identify Issues
Note specific issues in each dimension.

### Step 4: Prioritize Fixes
Fix high-impact issues first:
1. Accessibility issues (legal risk)
2. Responsive issues (user experience)
3. Color contrast issues (readability)
4. Component issues (usability)

### Step 5: Re-score
After fixes, re-score to verify improvement.
