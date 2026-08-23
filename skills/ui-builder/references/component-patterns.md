# Component Patterns Reference

## Base Patterns

### 1. Container Pattern
```tsx
// Standard container with max-width and padding
<div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
  {children}
</div>

// Full-width container
<div className="w-full px-4 sm:px-6 lg:px-8">
  {children}
</div>
```

### 2. Card Pattern
```tsx
// Basic card
<div className="bg-white border border-zinc-200 rounded-lg p-6 shadow-sm">
  {children}
</div>

// Card with hover effect
<div className="bg-white border border-zinc-200 rounded-lg p-6 shadow-sm hover:shadow-md transition-shadow">
  {children}
</div>

// Interactive card
<button className="w-full text-left bg-white border border-zinc-200 rounded-lg p-6 shadow-sm hover:border-zinc-300 transition-colors">
  {children}
</button>
```

### 3. Button Pattern
```tsx
// Primary button
<button className="inline-flex items-center justify-center px-4 py-2 text-sm font-medium text-white bg-zinc-900 rounded-lg hover:bg-zinc-800 transition-colors">
  {children}
</button>

// Secondary button
<button className="inline-flex items-center justify-center px-4 py-2 text-sm font-medium text-zinc-900 bg-zinc-100 rounded-lg hover:bg-zinc-200 transition-colors">
  {children}
</button>

// Ghost button
<button className="inline-flex items-center justify-center px-4 py-2 text-sm font-medium text-zinc-600 hover:text-zinc-900 hover:bg-zinc-100 rounded-lg transition-colors">
  {children}
</button>

// Button with icon
<button className="inline-flex items-center gap-2 px-4 py-2 text-sm font-medium text-white bg-zinc-900 rounded-lg hover:bg-zinc-800 transition-colors">
  <Icon className="w-4 h-4" />
  {children}
</button>
```

### 4. Input Pattern
```tsx
// Text input
<input
  type="text"
  className="w-full px-3 py-2 text-sm border border-zinc-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-zinc-500 focus:border-transparent"
  placeholder="Enter text..."
/>

// Input with label
<div className="space-y-1">
  <label className="text-sm font-medium text-zinc-700">
    Email
  </label>
  <input
    type="email"
    className="w-full px-3 py-2 text-sm border border-zinc-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-zinc-500 focus:border-transparent"
    placeholder="you@example.com"
  />
</div>

// Input with error
<div className="space-y-1">
  <label className="text-sm font-medium text-zinc-700">
    Email
  </label>
  <input
    type="email"
    className="w-full px-3 py-2 text-sm border border-red-500 rounded-lg focus:outline-none focus:ring-2 focus:ring-red-500 focus:border-transparent"
    placeholder="you@example.com"
  />
  <p className="text-xs text-red-500">Invalid email address</p>
</div>
```

### 5. Badge Pattern
```tsx
// Default badge
<span className="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-zinc-100 text-zinc-800">
  {children}
</span>

// Success badge
<span className="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-green-100 text-green-800">
  Active
</span>

// Warning badge
<span className="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-yellow-100 text-yellow-800">
  Pending
</span>

// Error badge
<span className="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-red-100 text-red-800">
  Failed
</span>
```

### 6. Avatar Pattern
```tsx
// Simple avatar
<div className="w-10 h-10 rounded-full bg-zinc-200 flex items-center justify-center">
  <span className="text-sm font-medium text-zinc-600">JD</span>
</div>

// Avatar with image
<img
  src="/avatar.jpg"
  alt="User avatar"
  className="w-10 h-10 rounded-full object-cover"
/>

// Avatar group
<div className="flex -space-x-2">
  <img src="/avatar1.jpg" className="w-8 h-8 rounded-full border-2 border-white" />
  <img src="/avatar2.jpg" className="w-8 h-8 rounded-full border-2 border-white" />
  <img src="/avatar3.jpg" className="w-8 h-8 rounded-full border-2 border-white" />
</div>
```

### 7. Table Pattern
```tsx
// Basic table
<div className="overflow-x-auto">
  <table className="w-full text-sm text-left">
    <thead className="text-xs text-zinc-500 uppercase bg-zinc-50">
      <tr>
        <th className="px-6 py-3">Name</th>
        <th className="px-6 py-3">Status</th>
        <th className="px-6 py-3">Role</th>
      </tr>
    </thead>
    <tbody className="divide-y divide-zinc-200">
      <tr className="hover:bg-zinc-50">
        <td className="px-6 py-4 font-medium">John Doe</td>
        <td className="px-6 py-4">
          <span className="px-2 py-1 text-xs font-medium bg-green-100 text-green-800 rounded-full">
            Active
          </span>
        </td>
        <td className="px-6 py-4 text-zinc-500">Admin</td>
      </tr>
    </tbody>
  </table>
</div>
```

### 8. Modal Pattern
```tsx
// Modal overlay
<div className="fixed inset-0 z-50 overflow-y-auto">
  <div className="flex min-h-full items-center justify-center p-4">
    {/* Backdrop */}
    <div className="fixed inset-0 bg-black/50 transition-opacity" />
    
    {/* Modal content */}
    <div className="relative w-full max-w-md bg-white rounded-xl shadow-xl">
      {/* Header */}
      <div className="flex items-center justify-between p-6 border-b border-zinc-200">
        <h2 className="text-lg font-semibold">Modal Title</h2>
        <button className="p-1 hover:bg-zinc-100 rounded-lg">
          <X className="w-5 h-5" />
        </button>
      </div>
      
      {/* Body */}
      <div className="p-6">
        <p className="text-sm text-zinc-500">Modal content goes here.</p>
      </div>
      
      {/* Footer */}
      <div className="flex items-center justify-end gap-3 p-6 border-t border-zinc-200">
        <button className="px-4 py-2 text-sm font-medium text-zinc-700 hover:bg-zinc-100 rounded-lg">
          Cancel
        </button>
        <button className="px-4 py-2 text-sm font-medium text-white bg-zinc-900 hover:bg-zinc-800 rounded-lg">
          Confirm
        </button>
      </div>
    </div>
  </div>
</div>
```

## Layout Patterns

### 1. Dashboard Layout
```tsx
<div className="flex h-screen bg-zinc-50">
  {/* Sidebar */}
  <aside className="w-64 border-r border-zinc-200 bg-white">
    {/* Logo */}
    <div className="h-16 flex items-center px-6 border-b border-zinc-200">
      <span className="text-xl font-bold">Logo</span>
    </div>
    
    {/* Navigation */}
    <nav className="p-4 space-y-1">
      <a href="/dashboard" className="flex items-center gap-3 px-3 py-2 text-sm font-medium text-zinc-900 bg-zinc-100 rounded-lg">
        <Home className="w-5 h-5" />
        Dashboard
      </a>
      <a href="/analytics" className="flex items-center gap-3 px-3 py-2 text-sm font-medium text-zinc-600 hover:text-zinc-900 hover:bg-zinc-50 rounded-lg">
        <BarChart className="w-5 h-5" />
        Analytics
      </a>
    </nav>
  </aside>
  
  {/* Main Content */}
  <div className="flex-1 flex flex-col overflow-hidden">
    {/* Header */}
    <header className="h-16 border-b border-zinc-200 bg-white flex items-center justify-between px-6">
      <h1 className="text-lg font-semibold">Dashboard</h1>
      <div className="flex items-center gap-4">
        <button className="p-2 hover:bg-zinc-100 rounded-lg">
          <Bell className="w-5 h-5" />
        </button>
        <img src="/avatar.jpg" className="w-8 h-8 rounded-full" />
      </div>
    </header>
    
    {/* Content */}
    <main className="flex-1 overflow-auto p-6">
      {children}
    </main>
  </div>
</div>
```

### 2. Landing Page Layout
```tsx
<div className="min-h-screen bg-white">
  {/* Navigation */}
  <nav className="sticky top-0 z-50 border-b border-zinc-200 bg-white/80 backdrop-blur-sm">
    <div className="max-w-7xl mx-auto px-6 h-16 flex items-center justify-between">
      <span className="text-xl font-bold">Brand</span>
      <div className="flex items-center gap-6">
        <a href="#features" className="text-sm text-zinc-600 hover:text-zinc-900">Features</a>
        <a href="#pricing" className="text-sm text-zinc-600 hover:text-zinc-900">Pricing</a>
        <button className="px-4 py-2 text-sm font-medium text-white bg-zinc-900 rounded-lg hover:bg-zinc-800">
          Get Started
        </button>
      </div>
    </div>
  </nav>
  
  {/* Hero */}
  <section className="py-24 px-6">
    <div className="max-w-4xl mx-auto text-center">
      <h1 className="text-5xl font-bold tracking-tight">Headline</h1>
      <p className="mt-6 text-xl text-zinc-500">Subheadline</p>
      <div className="mt-8 flex items-center justify-center gap-4">
        <button className="px-6 py-3 text-base font-medium text-white bg-zinc-900 rounded-lg hover:bg-zinc-800">
          Get Started
        </button>
        <button className="px-6 py-3 text-base font-medium text-zinc-700 border border-zinc-300 rounded-lg hover:bg-zinc-50">
          Learn More
        </button>
      </div>
    </div>
  </section>
  
  {/* Features */}
  <section className="py-24 px-6 bg-zinc-50">
    <div className="max-w-7xl mx-auto">
      <h2 className="text-3xl font-bold text-center">Features</h2>
      <div className="mt-12 grid grid-cols-1 md:grid-cols-3 gap-8">
        {/* Feature cards */}
      </div>
    </div>
  </section>
  
  {/* Footer */}
  <footer className="py-12 px-6 border-t border-zinc-200">
    <div className="max-w-7xl mx-auto text-center text-sm text-zinc-500">
      © 2026 Brand. All rights reserved.
    </div>
  </footer>
</div>
```

### 3. Auth Layout
```tsx
<div className="min-h-screen flex">
  {/* Left side - Form */}
  <div className="flex-1 flex items-center justify-center p-8">
    <div className="w-full max-w-sm space-y-8">
      <div>
        <h1 className="text-2xl font-bold">Welcome back</h1>
        <p className="mt-2 text-sm text-zinc-500">
          Sign in to your account
        </p>
      </div>
      
      <form className="space-y-4">
        <div className="space-y-1">
          <label className="text-sm font-medium text-zinc-700">Email</label>
          <input
            type="email"
            className="w-full px-3 py-2 border border-zinc-300 rounded-lg focus:ring-2 focus:ring-zinc-500 focus:border-transparent"
          />
        </div>
        
        <div className="space-y-1">
          <label className="text-sm font-medium text-zinc-700">Password</label>
          <input
            type="password"
            className="w-full px-3 py-2 border border-zinc-300 rounded-lg focus:ring-2 focus:ring-zinc-500 focus:border-transparent"
          />
        </div>
        
        <button className="w-full py-2 text-sm font-medium text-white bg-zinc-900 rounded-lg hover:bg-zinc-800">
          Sign In
        </button>
      </form>
    </div>
  </div>
  
  {/* Right side - Image/Brand */}
  <div className="hidden lg:flex flex-1 bg-zinc-900 items-center justify-center">
    <div className="text-center text-white">
      <h2 className="text-3xl font-bold">Brand</h2>
      <p className="mt-2 text-zinc-400">Tagline</p>
    </div>
  </div>
</div>
```

## Utility Patterns

### 1. Responsive Grid
```tsx
// 2 columns on mobile, 3 on tablet, 4 on desktop
<div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-4">
  {items.map(item => (
    <Card key={item.id} {...item} />
  ))}
</div>
```

### 2. Stack Pattern
```tsx
// Vertical stack with gap
<div className="space-y-4">
  {items.map(item => (
    <div key={item.id}>{item.name}</div>
  ))}
</div>

// Horizontal stack with gap
<div className="flex items-center gap-4">
  <Button>Cancel</Button>
  <Button>Confirm</Button>
</div>
```

### 3. Center Pattern
```tsx
// Center both horizontally and vertically
<div className="flex items-center justify-center min-h-screen">
  {children}
</div>

// Center horizontally only
<div className="flex justify-center">
  {children}
</div>
```

### 4. Cover Pattern
```tsx
// Full cover
<div className="min-h-screen flex items-center justify-center">
  {children}
</div>
```
