# Design Audit Report Examples

## Example 1: Stats Card

### Input Code
```tsx
<div className="bg-white border border-zinc-200 rounded-lg p-6">
  <p className="text-sm text-zinc-500">Revenue</p>
  <p className="text-3xl font-bold text-zinc-900">$45,678</p>
</div>
```

### Audit Report

```markdown
# Design Audit Report

## Score: 82/100

### Dimension Breakdown
| Dimension | Score | Notes |
|-----------|-------|-------|
| Color System | 9/10 | Uses zinc tokens, good hierarchy |
| Typography | 8/10 | Consistent, missing line-height |
| Spacing | 9/10 | Consistent scale |
| Layout | 8/10 | Clean, responsive |
| Components | 7/10 | Missing hover state |
| Accessibility | 6/10 | Missing aria-label |
| Visual Hierarchy | 9/10 | Clear focal point |
| Consistency | 9/10 | Follows patterns |
| Polish | 7/10 | Missing loading state |
| Code Quality | 8/10 | Clean, typed |

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

3. **Missing line-height**
   - Impact: Minor readability issue
   - Fix: Add `leading-relaxed` to paragraph
   - Score Impact: +1

### LOW PRIORITY
4. **No loading state**
   - Impact: No loading feedback
   - Fix: Add skeleton loading variant
   - Score Impact: +1

## Recommendations

### Immediate Actions
1. Add aria-label for accessibility

### Short-term Improvements
1. Add hover state for interactivity
2. Add line-height for readability

### Long-term Enhancements
1. Add loading skeleton
2. Add dark mode variant
```

---

## Example 2: Landing Page

### Input Code
```tsx
<div className="min-h-screen bg-gradient-to-br from-purple-900 via-blue-900 to-indigo-900 flex items-center justify-center p-8">
  <div className="bg-white/10 backdrop-blur-lg rounded-3xl p-8 text-center max-w-md border border-white/20">
    <h1 className="text-4xl font-bold text-white mb-4">Welcome</h1>
    <p className="text-purple-200 mb-6">Start your journey</p>
    <button className="bg-gradient-to-r from-purple-500 to-blue-500 text-white px-8 py-3 rounded-full font-medium hover:scale-105 transition-transform">
      Get Started
    </button>
  </div>
</div>
```

### Audit Report

```markdown
# Design Audit Report

## Score: 35/100

### Dimension Breakdown
| Dimension | Score | Notes |
|-----------|-------|-------|
| Color System | 2/10 | Gradient, random colors |
| Typography | 4/10 | Inconsistent scale |
| Spacing | 3/10 | Random spacing |
| Layout | 4/10 | Centered everything |
| Components | 3/10 | Gradient button, hover scale |
| Accessibility | 2/10 | No semantics, no ARIA |
| Visual Hierarchy | 4/10 | Some hierarchy |
| Consistency | 3/10 | Inconsistent patterns |
| Polish | 4/10 | Has animation |
| Code Quality | 6/10 | Clean code |

## Issues Found

### HIGH PRIORITY
1. **Gradient background**
   - Impact: Looks like AI slop
   - Fix: Replace with solid `bg-zinc-950`
   - Score Impact: +5

2. **Centered everything**
   - Impact: Generic look
   - Fix: Use `text-left` for text
   - Score Impact: +3

3. **No semantic HTML**
   - Impact: Poor accessibility
   - Fix: Use `<section>`, `<h1>`, `<button>`
   - Score Impact: +4

4. **No ARIA attributes**
   - Impact: Screen readers can't parse
   - Fix: Add proper ARIA labels
   - Score Impact: +3

### MEDIUM PRIORITY
5. **Gradient button**
   - Impact: AI slop pattern
   - Fix: Use solid `bg-zinc-100`
   - Score Impact: +3

6. **Hover scale**
   - Impact: Over-the-top animation
   - Fix: Use `hover:bg-white transition-colors`
   - Score Impact: +2

7. **Oversized radius**
   - Impact: Too round
   - Fix: Use `rounded-lg` instead of `rounded-3xl`
   - Score Impact: +2

### LOW PRIORITY
8. **Backdrop blur**
   - Impact: Unnecessary effect
   - Fix: Remove, use solid background
   - Score Impact: +1

## Recommendations

### Immediate Actions
1. Replace gradient with solid color
2. Add semantic HTML
3. Add ARIA attributes
4. Fix text alignment

### Short-term Improvements
1. Replace gradient button
2. Fix hover animation
3. Fix border radius

### Long-term Enhancements
1. Add responsive design
2. Add dark/light theme
3. Add loading states
```

---

## Example 3: Dashboard

### Input Code
```tsx
<div className="flex h-screen bg-zinc-50">
  <aside className="w-64 border-r border-zinc-200 bg-white">
    <nav className="p-4 space-y-1">
      <a href="/dashboard" className="flex items-center gap-3 px-3 py-2 text-sm font-medium text-zinc-900 bg-zinc-100 rounded-lg">
        Dashboard
      </a>
      <a href="/analytics" className="flex items-center gap-3 px-3 py-2 text-sm font-medium text-zinc-600 hover:text-zinc-900 hover:bg-zinc-50 rounded-lg">
        Analytics
      </a>
    </nav>
  </aside>
  
  <main className="flex-1 p-6">
    <h1 className="text-2xl font-bold text-zinc-900 mb-6">Dashboard</h1>
    
    <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
      <div className="bg-white border border-zinc-200 rounded-lg p-6">
        <p className="text-sm text-zinc-500">Users</p>
        <p className="text-2xl font-bold text-zinc-900">1,234</p>
      </div>
      <div className="bg-white border border-zinc-200 rounded-lg p-6">
        <p className="text-sm text-zinc-500">Revenue</p>
        <p className="text-2xl font-bold text-zinc-900">$45,678</p>
      </div>
      <div className="bg-white border border-zinc-200 rounded-lg p-6">
        <p className="text-sm text-zinc-500">Orders</p>
        <p className="text-2xl font-bold text-zinc-900">567</p>
      </div>
    </div>
  </main>
</div>
```

### Audit Report

```markdown
# Design Audit Report

## Score: 88/100

### Dimension Breakdown
| Dimension | Score | Notes |
|-----------|-------|-------|
| Color System | 9/10 | Uses zinc tokens |
| Typography | 9/10 | Consistent scale |
| Spacing | 9/10 | Consistent scale |
| Layout | 9/10 | Proper grid/flex |
| Components | 8/10 | Good structure |
| Accessibility | 7/10 | Missing some ARIA |
| Visual Hierarchy | 9/10 | Clear hierarchy |
| Consistency | 9/10 | Very consistent |
| Polish | 7/10 | Missing hover states |
| Code Quality | 9/10 | Clean code |

## Issues Found

### HIGH PRIORITY
1. **Missing skip navigation**
   - Impact: Keyboard users can't skip sidebar
   - Fix: Add skip navigation link
   - Score Impact: +2

### MEDIUM PRIORITY
2. **No hover states on cards**
   - Impact: No interactive feedback
   - Fix: Add `hover:border-zinc-300 transition-colors`
   - Score Impact: +2

3. **Missing aria-current on active nav**
   - Impact: Screen readers don't know current page
   - Fix: Add `aria-current="page"` to active link
   - Score Impact: +1

### LOW PRIORITY
4. **No loading states**
   - Impact: No loading feedback
   - Fix: Add skeleton loading variants
   - Score Impact: +1

5. **No mobile menu**
   - Impact: Poor mobile experience
   - Fix: Add hamburger menu for mobile
   - Score Impact: +1

## Recommendations

### Immediate Actions
1. Add skip navigation link
2. Add aria-current to active nav

### Short-term Improvements
1. Add hover states to cards
2. Add mobile menu

### Long-term Enhancements
1. Add loading skeletons
2. Add dark mode
3. Add animations
```

---

## Example 4: Form

### Input Code
```tsx
<div className="max-w-md mx-auto p-6">
  <h2 className="text-2xl font-bold mb-6">Contact Us</h2>
  
  <form className="space-y-4">
    <div>
      <input
        type="text"
        placeholder="Your name"
        className="w-full px-4 py-2 border border-gray-300 rounded-lg"
      />
    </div>
    <div>
      <input
        type="email"
        placeholder="Your email"
        className="w-full px-4 py-2 border border-gray-300 rounded-lg"
      />
    </div>
    <div>
      <textarea
        placeholder="Your message"
        className="w-full px-4 py-2 border border-gray-300 rounded-lg h-32"
      />
    </div>
    <button
      type="submit"
      className="w-full bg-blue-500 text-white py-2 rounded-lg hover:bg-blue-600"
    >
      Send Message
    </button>
  </form>
</div>
```

### Audit Report

```markdown
# Design Audit Report

## Score: 62/100

### Dimension Breakdown
| Dimension | Score | Notes |
|-----------|-------|-------|
| Color System | 5/10 | Uses gray, blue (not tokens) |
| Typography | 6/10 | Basic, missing scale |
| Spacing | 7/10 | Mostly consistent |
| Layout | 7/10 | Clean, responsive |
| Components | 5/10 | Missing states |
| Accessibility | 3/10 | No labels, no ARIA |
| Visual Hierarchy | 6/10 | Basic hierarchy |
| Consistency | 6/10 | Mostly consistent |
| Polish | 5/10 | Basic styling |
| Code Quality | 7/10 | Clean code |

## Issues Found

### HIGH PRIORITY
1. **No form labels**
   - Impact: Accessibility violation
   - Fix: Add `<label>` elements
   - Score Impact: +4

2. **No ARIA attributes**
   - Impact: Screen readers can't parse
   - Fix: Add `aria-required`, `aria-describedby`
   - Score Impact: +3

3. **No error states**
   - Impact: No validation feedback
   - Fix: Add error messages and styles
   - Score Impact: +3

### MEDIUM PRIORITY
4. **Using gray instead of zinc**
   - Impact: Inconsistent with design system
   - Fix: Replace `gray-*` with `zinc-*`
   - Score Impact: +2

5. **Using blue instead of zinc**
   - Impact: Inconsistent with design system
   - Fix: Replace `blue-*` with `zinc-900`
   - Score Impact: +2

6. **No focus states**
   - Impact: No keyboard feedback
   - Fix: Add `focus:ring-2 focus:ring-zinc-500`
   - Score Impact: +2

### LOW PRIORITY
7. **No loading state**
   - Impact: No submission feedback
   - Fix: Add loading spinner on submit
   - Score Impact: +1

8. **No success state**
   - Impact: No success feedback
   - Fix: Add success message after submit
   - Score Impact: +1

## Recommendations

### Immediate Actions
1. Add form labels
2. Add ARIA attributes
3. Add error states

### Short-term Improvements
1. Replace gray/blue with zinc
2. Add focus states
3. Add validation

### Long-term Enhancements
1. Add loading state
2. Add success state
3. Add multi-step form
```

---

## Summary

### Key Takeaways

1. **Score accurately** — Be honest about issues
2. **Prioritize fixes** — Accessibility first
3. **Provide code fixes** — Don't just list problems
4. **Give clear recommendations** — Actionable steps
5. **Re-score after fixes** — Verify improvement

### Score Interpretation

- **90-100**: Ship it!
- **80-89**: Minor polish needed
- **70-79**: Several improvements
- **60-69**: Significant work needed
- **50-59**: Major issues
- **0-49**: Complete rewrite
