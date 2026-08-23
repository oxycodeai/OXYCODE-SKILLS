# Polish Checklist

## Visual Quality

### ✅ Color System
- [ ] Using design tokens (no hardcoded colors)
- [ ] Consistent color hierarchy (primary, secondary, neutral)
- [ ] Proper contrast ratios (4.5:1 for text)
- [ ] Semantic colors defined (success, warning, error)
- [ ] Dark/light theme support

### ✅ Typography
- [ ] Consistent font family
- [ ] Proper type scale (display, heading, body)
- [ ] Correct font weights
- [ ] Readable line heights (1.5 for body)
- [ ] No orphan headings

### ✅ Spacing
- [ ] Consistent spacing scale (4, 8, 16, 24, 32)
- [ ] Proper padding/margins
- [ ] Visual rhythm maintained
- [ ] No cramped elements

### ✅ Borders & Shadows
- [ ] Consistent border radius
- [ ] Subtle borders (zinc-200 or zinc-800)
- [ ] Appropriate shadows for elevation
- [ ] No harsh outlines

## Layout Quality

### ✅ Grid System
- [ ] Responsive grid (mobile-first)
- [ ] Consistent gutters
- [ ] Proper column spans
- [ ] No overflow issues

### ✅ Flexbox
- [ ] Proper alignment
- [ ] Consistent gaps
- [ ] No stretching issues
- [ ] Proper wrapping

### ✅ Responsive Design
- [ ] Mobile-first approach
- [ ] Proper breakpoints
- [ ] No horizontal scroll
- [ ] Touch-friendly targets (44px min)

## Component Quality

### ✅ Buttons
- [ ] Proper padding (12px 24px)
- [ ] Consistent border radius
- [ ] Hover states
- [ ] Focus states
- [ ] Disabled states
- [ ] Loading states

### ✅ Inputs
- [ ] Proper padding
- [ ] Focus states
- [ ] Error states
- [ ] Helper text
- [ ] Labels

### ✅ Cards
- [ ] Consistent padding
- [ ] Proper shadows
- [ ] Hover effects (if interactive)
- [ ] No content overflow

### ✅ Tables
- [ ] Proper header styling
- [ ] Row hover effects
- [ ] Responsive (horizontal scroll on mobile)
- [ ] Proper alignment

## Accessibility

### ✅ Semantic HTML
- [ ] Using proper HTML elements (section, article, nav, etc.)
- [ ] Proper heading hierarchy (h1 → h2 → h3)
- [ ] Lists for list content
- [ ] Tables for tabular data

### ✅ ARIA Attributes
- [ ] aria-label for icon buttons
- [ ] aria-describedby for helper text
- [ ] aria-expanded for dropdowns
- [ ] aria-hidden for decorative elements

### ✅ Keyboard Navigation
- [ ] Focusable elements
- [ ] Logical tab order
- [ ] Skip navigation link
- [ ] Escape to close modals

### ✅ Color Contrast
- [ ] Text: 4.5:1 minimum
- [ ] Large text: 3:1 minimum
- [ ] UI components: 3:1 minimum
- [ ] Focus indicators: 3:1 minimum

## Performance

### ✅ Images
- [ ] Proper sizing
- [ ] Lazy loading
- [ ] Alt text
- [ ] Responsive images

### ✅ Bundle Size
- [ ] No unnecessary imports
- [ ] Tree shaking enabled
- [ ] Code splitting
- [ ] Dynamic imports

### ✅ Rendering
- [ ] No layout shifts
- [ ] Proper loading states
- [ ] Skeleton screens
- [ ] Error boundaries

## Code Quality

### ✅ TypeScript
- [ ] Proper types
- [ ] No `any` types
- [ ] Interface definitions
- [ ] Prop types

### ✅ Component Structure
- [ ] Single responsibility
- [ ] Proper composition
- [ ] Reusable components
- [ ] No prop drilling

### ✅ Styling
- [ ] Using design tokens
- [ ] No inline styles
- [ ] Consistent class names
- [ ] No !important

### ✅ State Management
- [ ] Local state for UI
- [ ] Global state for shared data
- [ ] Proper loading states
- [ ] Error handling

## Anti-Patterns Check

### ❌ AI Slop Patterns
- [ ] No purple/blue gradients
- [ ] No centered everything
- [ ] No rainbow colors
- [ ] No oversized border radius
- [ ] No Inter font default
- [ ] No generic card layouts

### ❌ Common Mistakes
- [ ] No hardcoded colors
- [ ] No inline styles
- [ ] No !important
- [ ] No vague class names
- [ ] No deep nesting

## Final Polish

### ✅ Visual Polish
- [ ] Consistent alignment
- [ ] Proper whitespace
- [ ] Visual hierarchy clear
- [ ] No orphan elements

### ✅ Interaction Polish
- [ ] Hover states
- [ ] Focus states
- [ ] Active states
- [ ] Transitions (subtle, fast)

### ✅ Content Polish
- [ ] No lorem ipsum
- [ ] Real content examples
- [ ] Proper copy
- [ ] No typos

## Testing Checklist

### ✅ Cross-Browser
- [ ] Chrome
- [ ] Firefox
- [ ] Safari
- [ ] Edge

### ✅ Responsive
- [ ] Mobile (375px)
- [ ] Tablet (768px)
- [ ] Desktop (1024px)
- [ ] Large desktop (1280px)

### ✅ Accessibility
- [ ] Screen reader test
- [ ] Keyboard navigation test
- [ ] Color contrast test
- [ ] Zoom test (200%)

## Documentation

### ✅ Component Docs
- [ ] Usage examples
- [ ] Props documentation
- [ ] Variants explained
- [ ] Accessibility notes

### ✅ Design System Docs
- [ ] Design tokens defined
- [ ] Component patterns
- [ ] Layout guidelines
- [ ] Responsive breakpoints
