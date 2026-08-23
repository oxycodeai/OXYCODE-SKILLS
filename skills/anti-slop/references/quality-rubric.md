# Quality Rubric

## Overview

This rubric defines the criteria for evaluating UI code quality. Use this to score UI components and identify areas for improvement.

---

## Scoring Dimensions

### 1. Visual Design (25 points)

| Criteria | Points | Description |
|----------|--------|-------------|
| Color System | 5 | Uses design tokens, proper hierarchy, no random colors |
| Typography | 5 | Consistent scale, proper weights, readable |
| Spacing | 5 | Consistent scale, proper padding/margins |
| Layout | 5 | Grid/flex used correctly, responsive |
| Visual Hierarchy | 5 | Clear focal points, proper size/weight contrast |

### 2. Code Quality (25 points)

| Criteria | Points | Description |
|----------|--------|-------------|
| TypeScript | 5 | Proper types, no `any` |
| Component Structure | 5 | Single responsibility, reusable |
| Naming | 5 | Clear, descriptive names |
| Imports | 5 | Organized, no unused imports |
| Comments | 5 | Useful comments where needed |

### 3. Accessibility (25 points)

| Criteria | Points | Description |
|----------|--------|-------------|
| Semantic HTML | 5 | Proper elements (nav, section, article) |
| ARIA Attributes | 5 | Labels, roles, states |
| Keyboard Navigation | 5 | Focusable, logical tab order |
| Color Contrast | 5 | 4.5:1 for text, 3:1 for UI |
| Screen Reader | 5 | Readable by assistive technology |

### 4. Performance (25 points)

| Criteria | Points | Description |
|----------|--------|-------------|
| Bundle Size | 5 | No unnecessary imports |
| Rendering | 5 | No layout shifts |
| Images | 5 | Optimized, lazy loaded |
| Code Splitting | 5 | Dynamic imports where needed |
| Caching | 5 | Proper cache headers |

---

## Scoring Guide

### 90-100: Excellent (Vercel-Quality)
- Production-ready code
- No AI slop patterns
- Excellent accessibility
- Optimized performance
- Clean, maintainable code

### 70-89: Good
- Minor improvements needed
- Mostly follows best practices
- Good accessibility
- Acceptable performance

### 50-69: Average
- Several issues to fix
- Some AI slop patterns
- Accessibility issues
- Performance concerns

### 30-49: Poor
- Many issues to fix
- Significant AI slop
- Poor accessibility
- Performance problems

### 0-29: Terrible
- Complete rewrite needed
- Pure AI slop
- No accessibility
- Major performance issues

---

## Detailed Criteria

### Visual Design

#### Color System (5 points)
- **5**: Uses design tokens, proper hierarchy, semantic colors only
- **4**: Mostly uses tokens, minor inconsistencies
- **3**: Some hardcoded values, inconsistent hierarchy
- **2**: Many hardcoded values, random colors
- **1**: Pure AI slop (purple gradients, rainbow colors)

#### Typography (5 points)
- **5**: Consistent scale, proper weights, readable line heights
- **4**: Mostly consistent, minor issues
- **3**: Inconsistent sizes/weights
- **2**: Poor readability
- **1**: Random sizes, no hierarchy

#### Spacing (5 points)
- **5**: Consistent scale (4, 8, 16, 24, 32)
- **4**: Mostly consistent
- **3**: Some inconsistent spacing
- **2**: Random spacing values
- **1**: No spacing system

#### Layout (5 points)
- **5**: Proper grid/flex, responsive, clean
- **4**: Mostly correct, minor issues
- **3**: Some layout problems
- **2**: Broken on mobile
- **1**: Complete layout chaos

#### Visual Hierarchy (5 points)
- **5**: Clear focal points, proper contrast
- **4**: Good hierarchy, minor issues
- **3**: Some confusion in hierarchy
- **2**: Poor hierarchy
- **1**: No visual hierarchy

---

### Code Quality

#### TypeScript (5 points)
- **5**: Proper types, no `any`, interfaces defined
- **4**: Mostly typed, minor issues
- **3**: Some `any` types
- **2**: Many untyped values
- **1**: No TypeScript usage

#### Component Structure (5 points)
- **5**: Single responsibility, reusable, composable
- **4**: Mostly well-structured
- **3**: Some monolithic components
- **2**: Poor structure
- **1**: One giant component

#### Naming (5 points)
- **5**: Clear, descriptive, follows conventions
- **4**: Mostly clear
- **3**: Some unclear names
- **2**: Poor naming
- **1**: Cryptic names

#### Imports (5 points)
- **5**: Organized, no unused, proper aliases
- **4**: Mostly organized
- **3**: Some messiness
- **2**: Many unused imports
- **1**: Complete chaos

#### Comments (5 points)
- **5**: Useful comments where needed
- **4**: Mostly helpful
- **3**: Some unnecessary comments
- **2**: Missing important comments
- **1**: No comments or spam comments

---

### Accessibility

#### Semantic HTML (5 points)
- **5**: Proper elements (nav, section, article, main)
- **4**: Mostly semantic
- **3**: Some divs where elements needed
- **2**: Many accessibility issues
- **1**: All divs, no semantics

#### ARIA Attributes (5 points)
- **5**: Proper labels, roles, states
- **4**: Mostly complete
- **3**: Some missing attributes
- **2**: Many missing attributes
- **1**: No ARIA usage

#### Keyboard Navigation (5 points)
- **5**: All interactive elements focusable, logical order
- **4**: Mostly keyboard accessible
- **3**: Some issues
- **2**: Many keyboard traps
- **1**: Not keyboard accessible

#### Color Contrast (5 points)
- **5**: All text 4.5:1, UI 3:1
- **4**: Mostly compliant
- **3**: Some contrast issues
- **2**: Many contrast issues
- **1**: Poor contrast

#### Screen Reader (5 points)
- **5**: Readable by assistive technology
- **4**: Mostly readable
- **3**: Some issues
- **2**: Many issues
- **1**: Not screen reader accessible

---

### Performance

#### Bundle Size (5 points)
- **5**: No unnecessary imports, tree shaking
- **4**: Mostly optimized
- **3**: Some large imports
- **2**: Many unnecessary imports
- **1**: Huge bundle

#### Rendering (5 points)
- **5**: No layout shifts, proper loading
- **4**: Mostly stable
- **3**: Some layout shifts
- **2**: Many layout shifts
- **1**: Constant layout shifts

#### Images (5 points)
- **5**: Optimized, lazy loaded, responsive
- **4**: Mostly optimized
- **3**: Some issues
- **2**: Many issues
- **1**: Unoptimized images

#### Code Splitting (5 points)
- **5**: Dynamic imports where needed
- **4**: Mostly split
- **3**: Some large chunks
- **2**: No code splitting
- **1**: One giant bundle

#### Caching (5 points)
- **5**: Proper cache headers
- **4**: Mostly cached
- **3**: Some caching issues
- **2**: No caching
- **1**: Cache busting issues

---

## Usage

### Step 1: Score Each Dimension
Rate the UI code on each of the 4 dimensions (Visual Design, Code Quality, Accessibility, Performance).

### Step 2: Calculate Total
Add up all scores to get a total out of 100.

### Step 3: Identify Issues
Note specific issues in each dimension.

### Step 4: Prioritize Fixes
Fix high-impact issues first:
1. Accessibility issues (legal risk)
2. Visual design issues (user experience)
3. Code quality issues (maintainability)
4. Performance issues (user experience)

### Step 5: Re-score
After fixes, re-score to verify improvement.

---

## Example Scoring

### Component: Stats Card

**Visual Design: 22/25**
- Color System: 5/5 (uses design tokens)
- Typography: 4/5 (slight inconsistency)
- Spacing: 5/5 (consistent scale)
- Layout: 4/5 (minor responsive issue)
- Visual Hierarchy: 4/5 (good but could be better)

**Code Quality: 23/25**
- TypeScript: 5/5 (proper types)
- Component Structure: 5/5 (single responsibility)
- Naming: 4/5 (mostly clear)
- Imports: 5/5 (organized)
- Comments: 4/5 (useful but sparse)

**Accessibility: 20/25**
- Semantic HTML: 4/5 (mostly semantic)
- ARIA Attributes: 4/5 (some missing)
- Keyboard Navigation: 4/5 (mostly accessible)
- Color Contrast: 4/5 (mostly compliant)
- Screen Reader: 4/5 (mostly readable)

**Performance: 22/25**
- Bundle Size: 5/5 (optimized)
- Rendering: 4/5 (minor issues)
- Images: 5/5 (optimized)
- Code Splitting: 4/5 (mostly split)
- Caching: 4/5 (mostly cached)

**Total: 87/100 (Good)**

**Issues to Fix:**
1. Typography inconsistency
2. Minor responsive issue
3. Missing ARIA attributes
4. Screen reader improvements

**Priority:**
1. Fix ARIA attributes (accessibility)
2. Fix responsive issue (visual)
3. Fix typography (visual)
4. Improve screen reader (accessibility)
