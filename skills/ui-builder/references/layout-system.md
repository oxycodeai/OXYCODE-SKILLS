# Layout System Reference

## Grid System

### Basic Grid
```tsx
// 2 columns
<div className="grid grid-cols-2 gap-4">
  <div>Column 1</div>
  <div>Column 2</div>
</div>

// 3 columns
<div className="grid grid-cols-3 gap-4">
  <div>Column 1</div>
  <div>Column 2</div>
  <div>Column 3</div>
</div>

// 4 columns
<div className="grid grid-cols-4 gap-4">
  <div>Column 1</div>
  <div>Column 2</div>
  <div>Column 3</div>
  <div>Column 4</div>
</div>
```

### Responsive Grid
```tsx
// 1 col mobile, 2 col tablet, 3 col desktop
<div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
  {items.map(item => (
    <Card key={item.id} {...item} />
  ))}
</div>

// 1 col mobile, 2 col tablet, 4 col desktop
<div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
  {items.map(item => (
    <Card key={item.id} {...item} />
  ))}
</div>
```

### Grid with Span
```tsx
// Full width + 2 columns
<div className="grid grid-cols-1 lg:grid-cols-3 gap-4">
  <div className="lg:col-span-2">Main content</div>
  <div>Sidebar</div>
</div>

// Full width + 3 columns
<div className="grid grid-cols-1 lg:grid-cols-4 gap-4">
  <div className="lg:col-span-3">Main content</div>
  <div>Sidebar</div>
</div>

// 2 columns + full width
<div className="grid grid-cols-1 lg:grid-cols-2 gap-4">
  <div>Column 1</div>
  <div>Column 2</div>
  <div className="lg:col-span-2">Full width</div>
</div>
```

### Auto Grid
```tsx
// Auto-fit columns
<div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-4">
  {items.map(item => (
    <Card key={item.id} {...item} />
  ))}
</div>

// Auto-fill with min-width
<div className="grid grid-cols-[repeat(auto-fill,minmax(300px,1fr))] gap-4">
  {items.map(item => (
    <Card key={item.id} {...item} />
  ))}
</div>
```

## Flexbox Patterns

### Basic Flex
```tsx
// Horizontal
<div className="flex">
  <div>Item 1</div>
  <div>Item 2</div>
  <div>Item 3</div>
</div>

// Vertical
<div className="flex flex-col">
  <div>Item 1</div>
  <div>Item 2</div>
  <div>Item 3</div>
</div>
```

### Flex with Gap
```tsx
// Horizontal with gap
<div className="flex gap-4">
  <div>Item 1</div>
  <div>Item 2</div>
  <div>Item 3</div>
</div>

// Vertical with gap
<div className="flex flex-col gap-4">
  <div>Item 1</div>
  <div>Item 2</div>
  <div>Item 3</div>
</div>
```

### Flex Alignment
```tsx
// Center items
<div className="flex items-center justify-center">
  <div>Centered content</div>
</div>

// Space between
<div className="flex items-center justify-between">
  <div>Left</div>
  <div>Right</div>
</div>

// Space around
<div className="flex items-center justify-around">
  <div>Item 1</div>
  <div>Item 2</div>
  <div>Item 3</div>
</div>

// Space evenly
<div className="flex items-center justify-evenly">
  <div>Item 1</div>
  <div>Item 2</div>
  <div>Item 3</div>
</div>
```

### Flex Wrap
```tsx
// Wrap items
<div className="flex flex-wrap gap-2">
  {tags.map(tag => (
    <span key={tag} className="px-3 py-1 bg-zinc-100 rounded-full text-sm">
      {tag}
    </span>
  ))}
</div>
```

### Flex with Grow
```tsx
// Items grow to fill space
<div className="flex gap-4">
  <div className="flex-1">Fixed width</div>
  <div className="flex-1">Fixed width</div>
  <div className="flex-1">Fixed width</div>
</div>

// Different grow amounts
<div className="flex gap-4">
  <div className="flex-1">1x</div>
  <div className="flex-2">2x</div>
  <div className="flex-1">1x</div>
</div>
```

## Spacing Patterns

### Padding
```tsx
// All sides
<div className="p-4">All sides</div>

// Horizontal only
<div className="px-4">Horizontal</div>

// Vertical only
<div className="py-4">Vertical</div>

// Individual sides
<div className="pt-4 pr-4 pb-4 pl-4">Individual</div>

// Responsive padding
<div className="p-4 md:p-6 lg:p-8">Responsive</div>
```

### Margin
```tsx
// All sides
<div className="m-4">All sides</div>

// Horizontal only
<div className="mx-auto">Centered</div>

// Vertical only
<div className="my-4">Vertical</div>

// Auto margins
<div className="ml-auto">Push right</div>
<div className="mr-auto">Push left</div>
<div className="mx-auto">Center</div>
```

### Gap
```tsx
// Flex gap
<div className="flex gap-4">Flex gap</div>

// Grid gap
<div className="grid grid-cols-3 gap-4">Grid gap</div>

// Responsive gap
<div className="flex gap-2 md:gap-4 lg:gap-6">Responsive gap</div>
```

## Sizing Patterns

### Width
```tsx
// Fixed width
<div className="w-64">Fixed 256px</div>

// Full width
<div className="w-full">Full width</div>

// Screen width
<div className="w-screen">Screen width</div>

// Min/max width
<div className="min-w-0 max-w-md">Min/max</div>

// Percentage
<div className="w-1/2">50%</div>
<div className="w-1/3">33%</div>
<div className="w-2/3">66%</div>
```

### Height
```tsx
// Fixed height
<div className="h-64">Fixed 256px</div>

// Full height
<div className="h-full">Full height</div>

// Screen height
<div className="h-screen">Screen height</div>

// Min height
<div className="min-h-screen">Min screen</div>

// Max height
<div className="max-h-96">Max 384px</div>
```

### Responsive Sizing
```tsx
// Responsive width
<div className="w-full md:w-1/2 lg:w-1/3">Responsive width</div>

// Responsive height
<div className="h-64 md:h-96 lg:h-screen">Responsive height</div>
```

## Common Layouts

### Holy Grail Layout
```tsx
<div className="flex flex-col min-h-screen">
  <header className="h-16 border-b border-zinc-200">Header</header>
  
  <div className="flex flex-1">
    <aside className="w-64 border-r border-zinc-200">Sidebar</aside>
    
    <main className="flex-1 p-6">Main content</main>
    
    <aside className="w-64 border-l border-zinc-200">Right sidebar</aside>
  </div>
  
  <footer className="h-16 border-t border-zinc-200">Footer</footer>
</div>
```

### Sidebar Layout
```tsx
<div className="flex h-screen">
  <aside className="w-64 border-r border-zinc-200">Sidebar</aside>
  <main className="flex-1 p-6">Main content</main>
</div>
```

### Content with Sidebar
```tsx
<div className="flex gap-6">
  <main className="flex-1">Main content</main>
  <aside className="w-80">Sidebar</aside>
</div>
```

### Two Column Layout
```tsx
<div className="grid grid-cols-2 gap-6">
  <div>Column 1</div>
  <div>Column 2</div>
</div>
```

### Three Column Layout
```tsx
<div className="grid grid-cols-3 gap-6">
  <div>Column 1</div>
  <div>Column 2</div>
  <div>Column 3</div>
</div>
```

### Dashboard Layout
```tsx
<div className="flex h-screen bg-zinc-50">
  {/* Sidebar */}
  <aside className="w-64 border-r border-zinc-200 bg-white">
    <div className="h-16 flex items-center px-6 border-b border-zinc-200">
      Logo
    </div>
    <nav className="p-4 space-y-1">
      {/* Navigation items */}
    </nav>
  </aside>
  
  {/* Main Content */}
  <div className="flex-1 flex flex-col overflow-hidden">
    <header className="h-16 border-b border-zinc-200 bg-white px-6 flex items-center">
      Header
    </header>
    <main className="flex-1 overflow-auto p-6">
      Content
    </main>
  </div>
</div>
```

### Landing Page Layout
```tsx
<div className="min-h-screen bg-white">
  <nav className="sticky top-0 z-50 border-b border-zinc-200 bg-white/80 backdrop-blur-sm">
    Navigation
  </nav>
  
  <section className="py-24 px-6">
    Hero section
  </section>
  
  <section className="py-24 px-6 bg-zinc-50">
    Features section
  </section>
  
  <section className="py-24 px-6">
    Pricing section
  </section>
  
  <footer className="py-12 px-6 border-t border-zinc-200">
    Footer
  </footer>
</div>
```

### Auth Layout
```tsx
<div className="min-h-screen flex">
  <div className="flex-1 flex items-center justify-center p-8">
    Form
  </div>
  <div className="hidden lg:flex flex-1 bg-zinc-900 items-center justify-center">
    Branding
  </div>
</div>
```

## Responsive Patterns

### Mobile First
```tsx
// Base: 1 column
// md: 2 columns
// lg: 3 columns
<div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
  {items.map(item => (
    <Card key={item.id} {...item} />
  ))}
</div>
```

### Hide on Mobile
```tsx
// Hidden on mobile, visible on desktop
<div className="hidden md:block">Desktop only</div>

// Visible on mobile, hidden on desktop
<div className="block md:hidden">Mobile only</div>
```

### Responsive Padding
```tsx
// Small padding on mobile, larger on desktop
<div className="p-4 md:p-6 lg:p-8">Responsive padding</div>
```

### Responsive Text
```tsx
// Small text on mobile, larger on desktop
<h1 className="text-2xl md:text-3xl lg:text-4xl">Responsive heading</h1>
```
