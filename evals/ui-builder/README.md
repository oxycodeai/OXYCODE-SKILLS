# ui-builder Evals

Test cases for the ui-builder skill.

## Test Cases

### TC-001: Stats Card

**Input:**
```
/ui-builder "Create a stats card with title, value, and percentage change"
```

**Expected Output:**
- React component with TypeScript
- Props: title, value, change, trend
- Tailwind CSS classes
- Proper styling (zinc colors, no gradients)
- Responsive design

**Validation:**
- [ ] Component compiles without errors
- [ ] Uses design tokens (no hardcoded values)
- [ ] Proper TypeScript types
- [ ] No AI slop patterns

---

### TC-002: Landing Page

**Input:**
```
/ui-builder "Build a SaaS landing page with hero, features, pricing, and testimonials"
```

**Expected Output:**
- Complete landing page component
- Navigation bar
- Hero section
- Features section
- Pricing table
- Testimonials
- Footer

**Validation:**
- [ ] All sections present
- [ ] Responsive design
- [ ] Proper typography hierarchy
- [ ] No AI slop patterns

---

### TC-003: Dashboard

**Input:**
```
/ui-builder "Create an analytics dashboard with sidebar navigation, stats cards, and a data table"
```

**Expected Output:**
- Dashboard layout with sidebar
- Header with actions
- Stats cards grid
- Data table with sorting

**Validation:**
- [ ] Sidebar navigation works
- [ ] Stats cards display correctly
- [ ] Data table is sortable
- [ ] Responsive design

---

### TC-004: Auth Page

**Input:**
```
/ui-builder "Create a login page with email/password form and social login buttons"
```

**Expected Output:**
- Login form with email/password
- Social login buttons
- Proper form validation
- Responsive design

**Validation:**
- [ ] Form inputs work
- [ ] Social login buttons styled
- [ ] Accessible labels
- [ ] Responsive design

---

### TC-005: Settings Page

**Input:**
```
/ui-builder "Build a settings page with tabs for profile, billing, and notifications"
```

**Expected Output:**
- Tab navigation
- Profile settings tab
- Billing settings tab
- Notifications settings tab

**Validation:**
- [ ] Tabs switch correctly
- [ ] Each tab has proper content
- [ ] Form inputs work
- [ ] Responsive design

---

## Anti-Pattern Tests

### TC-AP-001: No Gradients

**Input:**
```
/ui-builder "Create a colorful card"
```

**Expected:**
- No `bg-gradient-to-*` classes
- Uses solid colors from design tokens

---

### TC-AP-002: No Centered Everything

**Input:**
```
/ui-builder "Create a hero section"
```

**Expected:**
- Text alignment is intentional
- Not everything is `text-center`

---

### TC-AP-003: No Rainbow Colors

**Input:**
```
/ui-builder "Create a badge component"
```

**Expected:**
- Uses semantic colors (success, warning, error)
- Not random rainbow colors

---

## Accessibility Tests

### TC-A11Y-001: Semantic HTML

**Input:**
```
/ui-builder "Create a navigation menu"
```

**Expected:**
- Uses `<nav>` element
- Proper ARIA labels
- Keyboard navigation

---

### TC-A11Y-002: Form Labels

**Input:**
```
/ui-builder "Create a contact form"
```

**Expected:**
- All inputs have labels
- Proper `htmlFor` attributes
- Error messages associated with inputs

---

## Responsive Tests

### TC-RESP-001: Mobile First

**Input:**
```
/ui-builder "Create a pricing table with 3 tiers"
```

**Expected:**
- Stacks on mobile
- 3 columns on desktop
- Proper breakpoints

---

### TC-RESP-002: Sidebar Collapse

**Input:**
```
/ui-builder "Create a dashboard with sidebar"
```

**Expected:**
- Sidebar hidden on mobile
- Hamburger menu on mobile
- Full sidebar on desktop

---

## Running Tests

1. Run each test case through the skill
2. Verify output matches expected
3. Check validation criteria
4. Document any failures
5. Fix issues and re-test
