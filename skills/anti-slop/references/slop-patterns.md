# AI Slop Patterns Catalog

## Overview

This document catalogs common AI-generated UI patterns that look generic, unprofessional, or "AI-generated." Use this to detect and fix AI slop in your code.

---

## 1. Gradient Abuse

### Detection Patterns
```
bg-gradient-to-br
bg-gradient-to-r
bg-gradient-to-tl
bg-gradient-to-bl
from-purple-*
from-blue-*
from-violet-*
from-indigo-*
from-fuchsia-*
from-pink-*
to-purple-*
to-blue-*
to-violet-*
to-indigo-*
to-fuchsia-*
to-pink-*
```

### Examples

#### ❌ Bad: Purple Gradient Hero
```tsx
<div className="min-h-screen bg-gradient-to-br from-purple-900 via-blue-900 to-indigo-900">
  <h1 className="text-6xl font-bold text-white text-center">Welcome</h1>
</div>
```

#### ✅ Good: Solid Color Hero
```tsx
<div className="min-h-screen bg-zinc-950">
  <h1 className="text-4xl font-semibold text-zinc-100">Welcome</h1>
</div>
```

### Fix Rules
1. Replace `bg-gradient-to-*` with solid `bg-*`
2. Use zinc palette for backgrounds
3. Use semantic colors only for status (success, warning, error)

---

## 2. Centered Everything

### Detection Patterns
```
text-center
items-center justify-center
flex items-center justify-center
grid place-items-center
```

### Examples

#### ❌ Bad: Centered Layout
```tsx
<div className="min-h-screen flex items-center justify-center">
  <div className="text-center max-w-2xl">
    <h1 className="text-4xl font-bold text-center mb-4">Title</h1>
    <p className="text-gray-500 text-center mb-8">Description</p>
    <div className="flex justify-center">
      <button>Click me</button>
    </div>
  </div>
</div>
```

#### ✅ Good: Intentional Alignment
```tsx
<div className="min-h-screen flex items-center justify-center px-6">
  <div className="max-w-2xl">
    <h1 className="text-4xl font-semibold text-zinc-100">Title</h1>
    <p className="mt-4 text-lg text-zinc-400">Description</p>
    <div className="mt-8 flex items-center gap-4">
      <button>Primary</button>
      <button>Secondary</button>
    </div>
  </div>
</div>
```

### Fix Rules
1. Text: Use `text-left` by default
2. Flex: Use `justify-start` unless centering is intentional
3. Grid: Use `place-items-start` unless centering is intentional
4. Only center when it makes design sense (hero sections, modals)

---

## 3. Rainbow Colors

### Detection Patterns
```
text-red-*
text-blue-*
text-green-*
text-purple-*
text-pink-*
text-yellow-*
text-orange-*
text-indigo-*
text-violet-*
text-fuchsia-*
```

### Examples

#### ❌ Bad: Rainbow Text
```tsx
<div>
  <h1 className="text-purple-600">Purple Title</h1>
  <p className="text-blue-500">Blue Description</p>
  <span className="text-green-400">Green Badge</span>
  <a className="text-pink-500">Pink Link</a>
</div>
```

#### ✅ Good: Semantic Colors
```tsx
<div>
  <h1 className="text-zinc-900">Title</h1>
  <p className="text-zinc-500">Description</p>
  <span className="text-green-600">Success</span>
  <a className="text-zinc-600 hover:text-zinc-900">Link</a>
</div>
```

### Fix Rules
1. Primary text: `text-zinc-900` (light) or `text-zinc-100` (dark)
2. Secondary text: `text-zinc-500` or `text-zinc-400`
3. Success: `text-green-600` only
4. Warning: `text-amber-600` only
5. Error: `text-red-600` only
6. Links: `text-zinc-600 hover:text-zinc-900`

---

## 4. Oversized Border Radius

### Detection Patterns
```
rounded-3xl
rounded-[2rem]
rounded-[24px]
rounded-full (on large elements)
```

### Examples

#### ❌ Bad: Too Round
```tsx
<div className="bg-white p-8 rounded-3xl shadow-xl">
  <button className="px-8 py-4 rounded-full text-lg">Click</button>
</div>
```

#### ✅ Good: Subtle Radius
```tsx
<div className="bg-white border border-zinc-200 p-6 rounded-lg">
  <button className="px-4 py-2 text-sm rounded-lg">Click</button>
</div>
```

### Fix Rules
1. Cards: `rounded-lg` (8px)
2. Buttons: `rounded-lg` (8px)
3. Inputs: `rounded-lg` (8px)
4. Modals: `rounded-xl` (12px)
5. Badges: `rounded-full` (small elements only)

---

## 5. Inter Font Default

### Detection Patterns
```
font-sans (with Inter)
Inter, system-ui
fontFamily: 'Inter'
```

### Examples

#### ❌ Bad: Inter Default
```tsx
<div className="font-sans">
  <h1 className="font-bold">Title</h1>
</div>
```

#### ✅ Good: System Stack
```tsx
<div className="font-sans">
  <h1 className="font-semibold">Title</h1>
</div>
```

### Fix Rules
1. Use system font stack: `system-ui, -apple-system, sans-serif`
2. Or specify a different font: `font-['Inter']`
3. Don't rely on Inter as default

---

## 6. Generic Cards

### Detection Patterns
```
bg-white rounded-2xl shadow-xl
bg-white/10 backdrop-blur
bg-gradient-to-br from-white to-gray-50
```

### Examples

#### ❌ Bad: Generic Card
```tsx
<div className="bg-white p-8 rounded-2xl shadow-xl text-center">
  <div className="w-16 h-16 bg-purple-100 rounded-full flex items-center justify-center mx-auto mb-4">
    <Icon className="w-8 h-8 text-purple-600" />
  </div>
  <h3 className="text-xl font-bold mb-2">Title</h3>
  <p className="text-gray-500 mb-4">Description</p>
  <button className="bg-purple-600 text-white px-6 py-2 rounded-full">Action</button>
</div>
```

#### ✅ Good: Purposeful Card
```tsx
<div className="bg-white border border-zinc-200 p-6 rounded-lg">
  <div className="w-10 h-10 bg-zinc-900 rounded-lg flex items-center justify-center">
    <Icon className="w-5 h-5 text-white" />
  </div>
  <h3 className="mt-4 text-lg font-semibold text-zinc-900">Title</h3>
  <p className="mt-2 text-sm text-zinc-500">Description</p>
  <button className="mt-4 px-4 py-2 text-sm font-medium text-white bg-zinc-900 rounded-lg hover:bg-zinc-800">
    Action
  </button>
</div>
```

### Fix Rules
1. Use borders instead of shadows: `border border-zinc-200`
2. Use `rounded-lg` not `rounded-2xl`
3. Use semantic colors not random colors
4. Left-align content by default
5. Use appropriate spacing

---

## 7. Hover Effects Overkill

### Detection Patterns
```
hover:scale-105
hover:scale-110
hover:rotate-1
hover:shadow-2xl
hover:shadow-3xl
transition-all duration-500
transition-all duration-700
```

### Examples

#### ❌ Bad: Hover Overkill
```tsx
<button className="bg-purple-600 text-white px-6 py-3 rounded-full hover:scale-110 hover:shadow-xl transition-all duration-500">
  Click me
</button>
```

#### ✅ Good: Subtle Hover
```tsx
<button className="bg-zinc-900 text-white px-4 py-2 rounded-lg hover:bg-zinc-800 transition-colors">
  Click me
</button>
```

### Fix Rules
1. Use `transition-colors` not `transition-all`
2. Use `hover:bg-*` not `hover:scale-*`
3. Keep transitions fast (150-200ms)
4. No transform animations on buttons

---

## 8. Fake Data

### Detection Patterns
```
Lorem ipsum
John Doe
johndoe@example.com
123-456-7890
Acme Corp
```

### Examples

#### ❌ Bad: Fake Data
```tsx
<div>
  <h2>John Doe</h2>
  <p>johndoe@example.com</p>
  <p>123-456-7890</p>
</div>
```

#### ✅ Good: Realistic Data
```tsx
<div>
  <h2>Sarah Chen</h2>
  <p>sarah@acme.com</p>
  <p>+1 (555) 234-5678</p>
</div>
```

### Fix Rules
1. Use realistic names
2. Use realistic emails
3. Use realistic phone numbers
4. Use realistic company names
5. Use realistic addresses

---

## 9. Shadow Overuse

### Detection Patterns
```
shadow-xl
shadow-2xl
shadow-3xl
hover:shadow-xl
hover:shadow-2xl
```

### Examples

#### ❌ Bad: Shadow Overuse
```tsx
<div className="bg-white p-6 rounded-2xl shadow-2xl">
  <button className="shadow-xl hover:shadow-2xl">Click</button>
</div>
```

#### ✅ Good: Subtle Shadows
```tsx
<div className="bg-white border border-zinc-200 p-6 rounded-lg">
  <button>Click</button>
</div>
```

### Fix Rules
1. Cards: Use `border` not `shadow`
2. Buttons: No shadow
3. Modals: `shadow-lg` max
4. Dropdowns: `shadow-lg`

---

## 10. Backdrop Blur Abuse

### Detection Patterns
```
backdrop-blur
backdrop-blur-sm
backdrop-blur-md
backdrop-blur-lg
backdrop-blur-xl
```

### Examples

#### ❌ Bad: Backdrop Blur
```tsx
<div className="bg-white/10 backdrop-blur-xl border border-white/20 rounded-2xl">
  Content
</div>
```

#### ✅ Good: Solid Background
```tsx
<div className="bg-zinc-900 border border-zinc-800 rounded-lg">
  Content
</div>
```

### Fix Rules
1. Use solid backgrounds
2. Avoid glassmorphism unless intentional
3. Use opacity sparingly

---

## Quality Score Calculation

```
Starting Score: 100

Deductions:
- Gradient pattern: -15 points
- Centered everything: -10 points
- Rainbow colors: -10 points
- Oversized radius: -10 points
- Inter font default: -5 points
- Generic cards: -10 points
- Hover overkill: -10 points
- Fake data: -5 points
- Shadow overuse: -10 points
- Backdrop blur abuse: -10 points

Minimum Score: 0
```

### Score Interpretation
- **90-100**: Vercel-quality, production-ready
- **70-89**: Good, minor improvements needed
- **50-69**: Average, several AI slop patterns
- **30-49**: Poor, many AI patterns present
- **0-29**: Terrible, pure AI slop
