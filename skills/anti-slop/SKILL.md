---
name: anti-slop
description: Block generic AI patterns like purple gradients and centered cards
---

# anti-slop

## Description

Block generic AI-generated UI patterns ("AI slop") and enforce Vercel-quality design. Detects and fixes common AI mistakes like purple gradients, centered everything, rainbow colors, and oversized border radius.

## Trigger

Use this skill when:
- User asks to review UI code for quality
- User wants to fix "AI-looking" UI
- User says "remove AI slop" or "make it look professional"
- Reviewing generated UI components
- User says "anti-slop" followed by code or description

## Instructions

### Step 1: Detect AI Slop Patterns

Scan code for these anti-patterns:

#### 1. Gradient Abuse
```tsx
// ❌ DETECT: Purple/blue gradients
className="bg-gradient-to-br from-purple-500 to-blue-500"
className="bg-gradient-to-r from-violet-500 to-indigo-500"
className="bg-gradient-to-tl from-fuchsia-500 to-pink-500"

// ✅ FIX: Use solid colors
className="bg-zinc-900"
className="bg-zinc-800"
```

#### 2. Centered Everything
```tsx
// ❌ DETECT: Everything centered
className="text-center flex items-center justify-center"

// ✅ FIX: Intentional alignment
className="text-left"  // For text
className="flex justify-start"  // For flex items
```

#### 3. Rainbow Colors
```tsx
// ❌ DETECT: Random colorful classes
className="text-red-500 text-blue-500 text-green-500 text-purple-500"

// ✅ FIX: Use semantic colors
className="text-zinc-100"  // Primary text
className="text-zinc-500"  // Secondary text
className="text-green-600"  // Success only
```

#### 4. Oversized Border Radius
```tsx
// ❌ DETECT: Too round
className="rounded-3xl rounded-[2rem]"
className="rounded-full p-8"

// ✅ FIX: Subtle radius
className="rounded-lg"
className="rounded-xl"
```

#### 5. Inter Font Default
```tsx
// ❌ DETECT: Explicit Inter (AI loves this)
className="font-sans"  // With Inter as default
fontFamily: 'Inter, system-ui, sans-serif'

// ✅ FIX: Use system stack or specific font
fontFamily: 'system-ui, -apple-system, sans-serif'
```

#### 6. Generic Card Patterns
```tsx
// ❌ DETECT: Boring centered cards
<div className="p-8 bg-white rounded-2xl shadow-lg text-center">
  <h2 className="text-2xl font-bold mb-4">Title</h2>
  <p className="text-gray-500">Description</p>
</div>

// ✅ FIX: Purposeful card design
<div className="p-6 bg-white border border-zinc-200 rounded-lg">
  <h3 className="text-lg font-semibold text-zinc-900">Title</h3>
  <p className="mt-2 text-sm text-zinc-500">Description</p>
</div>
```

#### 7. Hover Effects Overkill
```tsx
// ❌ DETECT: Too many hover transforms
className="hover:scale-105 hover:shadow-xl hover:rotate-1 transition-all duration-300"

// ✅ FIX: Subtle interactions
className="hover:bg-zinc-800 transition-colors"
```

#### 8. Fake Data Patterns
```tsx
// ❌ DETECT: Generic placeholder content
"Lorem ipsum dolor sit amet"
"John Doe"
"johndoe@example.com"
"123-456-7890"

// ✅ FIX: Realistic examples
"Acme Inc"
"sales@acme.com"
"+1 (555) 123-4567"
```

### Step 2: Score the UI

Rate the UI on a 0-100 scale:

| Score | Description |
|-------|-------------|
| 90-100 | Vercel-quality, production-ready |
| 70-89 | Good, minor improvements needed |
| 50-69 | Average, several AI slop patterns |
| 30-49 | Poor, many AI patterns present |
| 0-29 | Terrible, pure AI slop |

### Step 3: Generate Fixed Code

Replace AI slop with Vercel-quality patterns:

```tsx
// Before (AI Slop)
<div className="min-h-screen bg-gradient-to-br from-purple-900 via-blue-900 to-indigo-900 flex items-center justify-center p-8">
  <div className="bg-white/10 backdrop-blur-lg rounded-3xl p-8 text-center max-w-md">
    <h1 className="text-4xl font-bold text-white mb-4">Welcome!</h1>
    <p className="text-purple-200 mb-6">Start your journey today</p>
    <button className="bg-gradient-to-r from-purple-500 to-blue-500 text-white px-8 py-3 rounded-full font-medium hover:scale-105 transition-transform">
      Get Started
    </button>
  </div>
</div>

// After (Vercel-Quality)
<div className="min-h-screen bg-zinc-950 flex items-center justify-center p-8">
  <div className="bg-zinc-900 border border-zinc-800 rounded-xl p-8 max-w-md">
    <h1 className="text-2xl font-semibold text-zinc-100">Welcome</h1>
    <p className="mt-2 text-sm text-zinc-400">Start your journey today</p>
    <button className="mt-6 px-4 py-2 text-sm font-medium text-white bg-zinc-100 rounded-lg hover:bg-white transition-colors">
      Get Started
    </button>
  </div>
</div>
```

### Step 4: Apply Design Tokens

Replace hardcoded values with design tokens:

```tsx
// ❌ Hardcoded
className="p-[23px] text-[15px] rounded-[8px]"

// ✅ Design tokens
className="p-6 text-base rounded-lg"
```

### Step 5: Add Quality Checklist

Before delivering, verify:
- [ ] No purple/blue gradients
- [ ] No centered everything
- [ ] No rainbow colors
- [ ] No oversized border radius
- [ ] No Inter font default
- [ ] No generic cards
- [ ] No hover overkill
- [ ] No fake data
- [ ] Uses design tokens
- [ ] Semantic HTML

## Slop Pattern Catalog

### Gradient Patterns
| Pattern | Detection | Fix |
|---------|-----------|-----|
| `bg-gradient-to-br` | from-purple, from-blue, from-violet | `bg-zinc-900` |
| `bg-gradient-to-r` | from-fuchsia, from-pink | `bg-zinc-800` |
| `bg-gradient-to-tl` | from-indigo, from-cyan | `bg-zinc-950` |

### Color Patterns
| Pattern | Detection | Fix |
|---------|-----------|-----|
| `text-purple-*` | Any purple text | `text-zinc-100` |
| `text-blue-*` | Any blue text | `text-zinc-500` |
| `text-pink-*` | Any pink text | `text-green-600` (if success) |

### Layout Patterns
| Pattern | Detection | Fix |
|---------|-----------|-----|
| `text-center` | Everywhere | `text-left` (intentional) |
| `items-center justify-center` | On every container | Purposeful alignment |
| `rounded-3xl` | Large radius | `rounded-lg` |

### Typography Patterns
| Pattern | Detection | Fix |
|---------|-----------|-----|
| `font-sans` | With Inter default | `font-sans` with system stack |
| `text-4xl font-bold` | Every heading | Appropriate size/weight |
| `tracking-tight` | Everywhere | Only for large headings |

### Shadow Patterns
| Pattern | Detection | Fix |
|---------|-----------|-----|
| `shadow-xl` | On every card | `shadow-sm` or none |
| `shadow-2xl` | On modals | `shadow-lg` |
| `hover:shadow-xl` | On hover | `hover:shadow-md` |

## Examples

### Example 1: Hero Section

**Input (AI Slop):**
```tsx
<div className="min-h-screen bg-gradient-to-br from-purple-600 via-blue-600 to-indigo-700 flex items-center justify-center">
  <div className="text-center max-w-3xl px-8">
    <h1 className="text-6xl font-bold text-white mb-6 tracking-tight">
      Build Something Amazing
    </h1>
    <p className="text-xl text-purple-100 mb-8">
      The future of development starts here
    </p>
    <button className="bg-white text-purple-600 px-8 py-4 rounded-full text-lg font-semibold hover:scale-110 transition-transform duration-300 shadow-xl hover:shadow-2xl">
      Get Started Free
    </button>
  </div>
</div>
```

**Output (Vercel-Quality):**
```tsx
<div className="min-h-screen bg-zinc-950 flex items-center justify-center px-6">
  <div className="max-w-2xl text-left">
    <h1 className="text-4xl sm:text-5xl font-bold text-zinc-100 tracking-tight">
      Build Something Amazing
    </h1>
    <p className="mt-6 text-lg text-zinc-400">
      The future of development starts here
    </p>
    <div className="mt-8 flex items-center gap-4">
      <button className="px-6 py-3 text-sm font-medium text-zinc-900 bg-zinc-100 rounded-lg hover:bg-white transition-colors">
        Get Started Free
      </button>
      <button className="px-6 py-3 text-sm font-medium text-zinc-400 hover:text-zinc-100 transition-colors">
        Learn more →
      </button>
    </div>
  </div>
</div>
```

### Example 2: Card Component

**Input (AI Slop):**
```tsx
<div className="bg-gradient-to-br from-white to-gray-50 p-8 rounded-3xl shadow-2xl hover:shadow-3xl hover:scale-105 transition-all duration-500 border border-gray-100">
  <div className="w-16 h-16 bg-gradient-to-br from-purple-500 to-blue-500 rounded-2xl flex items-center justify-center mb-6">
    <Star className="w-8 h-8 text-white" />
  </div>
  <h3 className="text-2xl font-bold text-gray-900 mb-3 text-center">Premium Feature</h3>
  <p className="text-gray-500 text-center leading-relaxed">
    Unlock powerful tools to supercharge your workflow
  </p>
  <button className="mt-6 w-full bg-gradient-to-r from-purple-500 to-blue-500 text-white py-3 rounded-xl font-medium hover:from-purple-600 hover:to-blue-600 transition-all">
    Upgrade Now
  </button>
</div>
```

**Output (Vercel-Quality):**
```tsx
<div className="bg-white border border-zinc-200 rounded-lg p-6">
  <div className="w-10 h-10 bg-zinc-900 rounded-lg flex items-center justify-center">
    <Star className="w-5 h-5 text-white" />
  </div>
  <h3 className="mt-4 text-lg font-semibold text-zinc-900">Premium Feature</h3>
  <p className="mt-2 text-sm text-zinc-500">
    Unlock powerful tools to supercharge your workflow
  </p>
  <button className="mt-4 w-full px-4 py-2 text-sm font-medium text-white bg-zinc-900 rounded-lg hover:bg-zinc-800 transition-colors">
    Upgrade Now
  </button>
</div>
```

## References

- [Vercel Design System](https://vercel.com/design)
- [Linear Design](https://linear.app)
- [Stripe UI](https://stripe.com)
- [Tailwind CSS](https://tailwindcss.com)

## Quality Score Calculator

```
Score = 100 - (Slop Patterns × 10)

Examples:
- 0 slop patterns = 100 score
- 3 slop patterns = 70 score
- 5 slop patterns = 50 score
- 10 slop patterns = 0 score
```
