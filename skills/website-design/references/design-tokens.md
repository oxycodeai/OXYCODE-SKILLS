# Design Tokens

## Colors

### Backgrounds

| Token | Hex | Tailwind | Use |
|-------|-----|----------|-----|
| `--bg` | `#000` | `bg-black` | Page background |
| `--bg-subtle` | `#0a0a0a` | `bg-neutral-950` | Subtle section backgrounds |
| `--surface` | `#111` | `bg-neutral-900` | Card backgrounds |
| `--surface-hover` | `#1a1a1a` | `bg-neutral-800` | Card hover states |

### Borders

| Token | Hex | Tailwind | Use |
|-------|-----|----------|-----|
| `--border` | `#222` | `border-neutral-800` | Default borders |
| `--border-subtle` | `rgba(255,255,255,0.05)` | `border-white/5` | Subtle separators |
| `--border-strong` | `rgba(255,255,255,0.1)` | `border-white/10` | Stronger borders |

### Text

| Token | Hex | Tailwind | Use |
|-------|-----|----------|-----|
| `--text` | `#fff` | `text-white` | Primary text |
| `--text-secondary` | `#888` | `text-neutral-400` | Secondary text |
| `--text-muted` | `#555` | `text-neutral-500` | Muted text |
| `--text-inverse` | `#000` | `text-black` | Text on light backgrounds |

### Interactive

| Token | Hex | Tailwind | Use |
|-------|-----|----------|-----|
| `--accent` | `#3b82f6` | `text-blue-500` | Links, interactive elements |
| `--accent-hover` | `#2563eb` | `text-blue-600` | Link hover states |
| `--focus-ring` | `rgba(59,130,246,0.5)` | `ring-blue-500/50` | Focus states |

---

## Typography

### Font Stack

```css
font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
```

Or with Inter:

```css
font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
```

### Type Scale

| Level | Size | Weight | Line Height | Letter Spacing | Tailwind |
|-------|------|--------|-------------|----------------|----------|
| Display | 48px | 700 | 1.1 | -0.02em | `text-5xl font-bold tracking-tight leading-tight` |
| H1 | 36px | 700 | 1.2 | -0.01em | `text-4xl font-bold tracking-tight` |
| H2 | 28px | 600 | 1.3 | 0 | `text-2xl font-semibold` |
| H3 | 20px | 600 | 1.4 | 0 | `text-xl font-semibold` |
| Body | 16px | 400 | 1.6 | 0 | `text-base` |
| Body Large | 18px | 400 | 1.6 | 0 | `text-lg` |
| Small | 14px | 400 | 1.5 | 0 | `text-sm` |
| Caption | 12px | 400 | 1.5 | 0 | `text-xs` |

### Line Length

- Body text: `max-w-2xl` (672px) — optimal reading line length
- Headings: `max-w-3xl` or `max-w-4xl`
- Never exceed `max-w-5xl` for text content

---

## Spacing

### 8px Grid

All spacing should be multiples of 8px (or 4px for tight spacing).

| Token | Value | Tailwind |
|-------|-------|----------|
| `--space-0` | 0 | `p-0` / `m-0` |
| `--space-1` | 4px | `p-1` / `m-1` |
| `--space-2` | 8px | `p-2` / `m-2` |
| `--space-3` | 12px | `p-3` / `m-3` |
| `--space-4` | 16px | `p-4` / `m-4` |
| `--space-5` | 20px | `p-5` / `m-5` |
| `--space-6` | 24px | `p-6` / `m-6` |
| `--space-8` | 32px | `p-8` / `m-8` |
| `--space-10` | 40px | `p-10` / `m-10` |
| `--space-12` | 48px | `p-12` / `m-12` |
| `--space-16` | 64px | `p-16` / `m-16` |
| `--space-20` | 80px | `p-20` / `m-20` |
| `--space-24` | 96px | `p-24` / `m-24` |
| `--space-32` | 128px | `p-32` / `m-32` |

### Section Spacing

| Context | Spacing | Tailwind |
|---------|---------|----------|
| Between sections | 96px | `py-24` |
| Section to content | 48px | `mb-12` |
| Between elements | 24px | `gap-6` or `mb-6` |
| Between tight elements | 16px | `gap-4` or `mb-4` |
| Inside cards | 24px | `p-6` |

---

## Borders

### Border Radius

| Token | Value | Tailwind | Use |
|-------|-------|----------|-----|
| `--radius-sm` | 6px | `rounded-md` | Buttons, inputs |
| `--radius-md` | 8px | `rounded-lg` | Cards, small containers |
| `--radius-lg` | 12px | `rounded-xl` | Large cards, modals |
| `--radius-full` | 9999px | `rounded-full` | Avatars, pills |

### Border Width

| Token | Value | Tailwind | Use |
|-------|-------|----------|-----|
| Default | 1px | `border` | Standard borders |
| Strong | 2px | `border-2` | Emphasis borders |

---

## Shadows

| Token | Value | Tailwind | Use |
|-------|-------|----------|-----|
| None | `none` | `shadow-none` | Default |
| Small | `0 1px 2px rgba(0,0,0,0.5)` | `shadow-sm` | Subtle elevation |
| Default | `0 4px 6px rgba(0,0,0,0.5)` | `shadow` | Cards |
| Large | `0 10px 15px rgba(0,0,0,0.5)` | `shadow-lg` | Modals, dropdowns |

**Never use colored shadows.** No `shadow-cyan`, no `shadow-purple`.

---

## Transitions

| Token | Duration | Easing | Tailwind |
|-------|----------|--------|----------|
| Micro | 150ms | ease | `transition duration-150` |
| Default | 200ms | ease | `transition` |
| Slow | 300ms | ease-out | `transition duration-300` |

### Transition Properties

| Element | Property | Tailwind |
|---------|----------|----------|
| Background | `background-color` | `transition-colors` |
| Text color | `color` | `transition-colors` |
| Border | `border-color` | `transition-colors` |
| Opacity | `opacity` | `transition-opacity` |
| Transform | `transform` | `transition-transform` |
| Shadow | `box-shadow` | `transition-shadow` |

---

## Breakpoints

| Name | Width | Tailwind |
|------|-------|----------|
| sm | 640px | `sm:` |
| md | 768px | `md:` |
| lg | 1024px | `lg:` |
| xl | 1280px | `xl:` |
| 2xl | 1536px | `2xl:` |

---

## Z-Index

| Token | Value | Tailwind | Use |
|-------|-------|----------|-----|
| Behind | -1 | `-z-10` | Background elements |
| Default | 0 | `z-0` | Normal flow |
| Above | 10 | `z-10` | Sticky elements |
| Dropdown | 20 | `z-20` | Dropdowns, popovers |
| Modal | 30 | `z-30` | Modals, overlays |
| Toast | 40 | `z-40` | Toast notifications |
| Skip link | 50 | `z-50` | Skip to content |

---

## Container Widths

| Name | Max Width | Tailwind | Use |
|------|-----------|----------|-----|
| Narrow | 640px | `max-w-xl` | Articles, forms |
| Default | 768px | `max-w-2xl` | Blog posts |
| Wide | 1024px | `max-w-4xl` | Content pages |
| Extra Wide | 1280px | `max-w-6xl` | Landing pages, dashboards |
| Full | 1536px | `max-w-7xl` | Full-width layouts |

---

## Example: Complete Tailwind Config

```js
// tailwind.config.js
module.exports = {
  theme: {
    extend: {
      colors: {
        bg: '#000',
        surface: '#111',
        border: '#222',
        muted: '#555',
      },
      maxWidth: {
        'content': '672px',
        'prose': '768px',
      },
      spacing: {
        '18': '4.5rem',
        '88': '22rem',
        '128': '32rem',
      },
    },
  },
};
```
