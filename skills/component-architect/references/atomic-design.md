# Atomic Design Reference

## Overview

Atomic Design is a methodology created by Brad Frost for creating design systems. It breaks down interfaces into five levels of components:

1. **Atoms** - Basic building blocks
2. **Molecules** - Groups of atoms
3. **Organisms** - Complex components
4. **Templates** - Page layouts
5. **Pages** - Specific instances

---

## Level 1: Atoms

### Definition
Atoms are the basic building blocks of an interface. They cannot be broken down further without losing their functionality.

### Examples
- Buttons
- Inputs
- Labels
- Icons
- Badges
- Avatars
- Checkboxes
- Radio buttons
- Switches

### File Structure
```
src/components/atoms/
├── Button/
│   ├── Button.tsx
│   ├── Button.test.tsx
│   ├── Button.stories.tsx
│   └── index.ts
├── Input/
├── Badge/
├── Avatar/
├── Icon/
└── index.ts
```

### Example: Button Atom
```tsx
// atoms/Button/Button.tsx
import { cn } from '@/lib/utils'

interface ButtonProps extends React.ButtonHTMLAttributes<HTMLButtonElement> {
  variant?: 'primary' | 'secondary' | 'ghost'
  size?: 'sm' | 'md' | 'lg'
}

export function Button({
  variant = 'primary',
  size = 'md',
  className,
  children,
  ...props
}: ButtonProps) {
  return (
    <button
      className={cn(
        'inline-flex items-center justify-center font-medium rounded-lg transition-colors',
        variant === 'primary' && 'bg-zinc-900 text-white hover:bg-zinc-800',
        variant === 'secondary' && 'bg-zinc-100 text-zinc-900 hover:bg-zinc-200',
        variant === 'ghost' && 'text-zinc-600 hover:text-zinc-900 hover:bg-zinc-100',
        size === 'sm' && 'px-3 py-1.5 text-xs',
        size === 'md' && 'px-4 py-2 text-sm',
        size === 'lg' && 'px-6 py-3 text-base',
        className
      )}
      {...props}
    >
      {children}
    </button>
  )
}
```

---

## Level 2: Molecules

### Definition
Molecules are groups of atoms bonded together. They form relatively simple UI components.

### Examples
- Form fields (label + input + error)
- Card (image + title + description)
- Nav item (icon + text)
- Search bar (input + button)
- User row (avatar + name + email)

### File Structure
```
src/components/molecules/
├── form-field/
│   ├── FormField.tsx
│   ├── FormField.test.tsx
│   └── index.ts
├── card/
├── nav-item/
├── search-bar/
└── index.ts
```

### Example: Form Field Molecule
```tsx
// molecules/form-field/FormField.tsx
import { cn } from '@/lib/utils'

interface FormFieldProps {
  label: string
  error?: string
  children: React.ReactNode
}

export function FormField({ label, error, children }: FormFieldProps) {
  return (
    <div className="space-y-1">
      <label className="text-sm font-medium text-zinc-700">
        {label}
      </label>
      {children}
      {error && (
        <p className="text-xs text-red-500">{error}</p>
      )}
    </div>
  )
}

// Usage
<FormField label="Email" error="Invalid email">
  <input type="email" className="w-full px-3 py-2 border border-zinc-300 rounded-lg" />
</FormField>
```

### Example: Card Molecule
```tsx
// molecules/card/Card.tsx
import { cn } from '@/lib/utils'

interface CardProps {
  image?: string
  title: string
  description?: string
  children?: React.ReactNode
}

export function Card({ image, title, description, children }: CardProps) {
  return (
    <div className="bg-white border border-zinc-200 rounded-lg overflow-hidden">
      {image && (
        <img src={image} alt={title} className="w-full h-48 object-cover" />
      )}
      <div className="p-4">
        <h3 className="text-lg font-semibold text-zinc-900">{title}</h3>
        {description && (
          <p className="mt-1 text-sm text-zinc-500">{description}</p>
        )}
        {children}
      </div>
    </div>
  )
}
```

---

## Level 3: Organisms

### Definition
Organisms are complex UI components composed of molecules and/or atoms. They form distinct sections of an interface.

### Examples
- Header (logo + nav + search + user menu)
- Sidebar (logo + nav + user info)
- Data table (header + rows + pagination)
- Form (multiple form fields + submit button)
- Modal (overlay + content + actions)

### File Structure
```
src/components/organisms/
├── header/
│   ├── Header.tsx
│   ├── Header.test.tsx
│   └── index.ts
├── sidebar/
├── data-table/
├── form/
├── modal/
└── index.ts
```

### Example: Header Organism
```tsx
// organisms/header/Header.tsx
import { Logo } from '@/components/atoms/Logo'
import { Button } from '@/components/atoms/Button'
import { SearchBar } from '@/components/molecules/search-bar'
import { UserMenu } from '@/components/molecules/user-menu'

interface HeaderProps {
  user?: User
  onSearch?: (query: string) => void
}

export function Header({ user, onSearch }: HeaderProps) {
  return (
    <header className="h-16 border-b border-zinc-200 bg-white">
      <div className="h-full px-6 flex items-center justify-between">
        <div className="flex items-center gap-6">
          <Logo />
          <nav className="hidden md:flex items-center gap-6">
            <a href="/dashboard" className="text-sm text-zinc-600 hover:text-zinc-900">
              Dashboard
            </a>
            <a href="/analytics" className="text-sm text-zinc-600 hover:text-zinc-900">
              Analytics
            </a>
          </nav>
        </div>
        
        <div className="flex items-center gap-4">
          <SearchBar onSearch={onSearch} />
          {user && <UserMenu user={user} />}
        </div>
      </div>
    </header>
  )
}
```

### Example: Data Table Organism
```tsx
// organisms/data-table/DataTable.tsx
import { Table } from '@/components/atoms/Table'
import { Pagination } from '@/components/molecules/pagination'

interface DataTableProps {
  columns: Column[]
  data: any[]
  totalItems: number
  currentPage: number
  onPageChange: (page: number) => void
}

export function DataTable({
  columns,
  data,
  totalItems,
  currentPage,
  onPageChange
}: DataTableProps) {
  return (
    <div className="bg-white border border-zinc-200 rounded-lg">
      <Table columns={columns} data={data} />
      <div className="px-6 py-4 border-t border-zinc-200">
        <Pagination
          totalItems={totalItems}
          currentPage={currentPage}
          onPageChange={onPageChange}
        />
      </div>
    </div>
  )
}
```

---

## Level 4: Templates

### Definition
Templates are page-level objects that place components in a layout. They define the structure of a page.

### Examples
- Dashboard layout (sidebar + main content)
- Landing page (hero + features + pricing + footer)
- Auth layout (form + branding)
- Settings layout (tabs + content)

### File Structure
```
src/components/templates/
├── dashboard/
│   ├── DashboardTemplate.tsx
│   └── index.ts
├── landing/
├── auth/
├── settings/
└── index.ts
```

### Example: Dashboard Template
```tsx
// templates/dashboard/DashboardTemplate.tsx
import { Sidebar } from '@/components/organisms/sidebar'
import { Header } from '@/components/organisms/header'

interface DashboardTemplateProps {
  children: React.ReactNode
  user?: User
}

export function DashboardTemplate({ children, user }: DashboardTemplateProps) {
  return (
    <div className="flex h-screen bg-zinc-50">
      <Sidebar user={user} />
      
      <div className="flex-1 flex flex-col overflow-hidden">
        <Header user={user} />
        
        <main className="flex-1 overflow-auto p-6">
          {children}
        </main>
      </div>
    </div>
  )
}
```

### Example: Landing Template
```tsx
// templates/landing/LandingTemplate.tsx
import { Hero } from '@/components/organisms/hero'
import { Features } from '@/components/organisms/features'
import { Pricing } from '@/components/organisms/pricing'
import { Footer } from '@/components/organisms/footer'

interface LandingTemplateProps {
  children?: React.ReactNode
}

export function LandingTemplate({ children }: LandingTemplateProps) {
  return (
    <div className="min-h-screen">
      <nav>{/* Navigation */}</nav>
      <Hero />
      <Features />
      {children}
      <Pricing />
      <Footer />
    </div>
  )
}
```

---

## Level 5: Pages

### Definition
Pages are specific instances of templates. They show what a UI looks like with real data.

### Examples
- Home page
- Settings page
- Profile page
- Dashboard page
- Landing page

### File Structure
```
src/components/pages/
├── home/
│   ├── HomePage.tsx
│   └── index.ts
├── settings/
├── profile/
├── dashboard/
└── index.ts
```

### Example: Dashboard Page
```tsx
// pages/dashboard/DashboardPage.tsx
import { DashboardTemplate } from '@/components/templates/dashboard'
import { StatsCard } from '@/components/molecules/stats-card'
import { DataTable } from '@/components/organisms/data-table'

export function DashboardPage() {
  return (
    <DashboardTemplate>
      <div className="space-y-6">
        <h1 className="text-2xl font-bold text-zinc-900">Dashboard</h1>
        
        <div className="grid grid-cols-1 md:grid-cols-4 gap-4">
          <StatsCard title="Users" value="1,234" change="+12%" />
          <StatsCard title="Revenue" value="$45,678" change="+8%" />
          <StatsCard title="Orders" value="567" change="+5%" />
          <StatsCard title="Conversion" value="3.2%" change="+0.5%" />
        </div>
        
        <DataTable
          columns={columns}
          data={data}
          totalItems={100}
          currentPage={1}
          onPageChange={handlePageChange}
        />
      </div>
    </DashboardTemplate>
  )
}
```

---

## Relationship Diagram

```
Pages
  └── Templates
        └── Organisms
              └── Molecules
                    └── Atoms
```

### Real-World Example

```
DashboardPage (Page)
  └── DashboardTemplate (Template)
        ├── Sidebar (Organism)
        │     ├── Logo (Atom)
        │     ├── NavItem (Molecule)
        │     │     ├── Icon (Atom)
        │     │     └── Text (Atom)
        │     └── UserInfo (Molecule)
        │           ├── Avatar (Atom)
        │           └── Name (Atom)
        ├── Header (Organism)
        │     ├── Logo (Atom)
        │     ├── SearchBar (Molecule)
        │     │     ├── Input (Atom)
        │     │     └── Button (Atom)
        │     └── UserMenu (Molecule)
        │           ├── Avatar (Atom)
        │           └── Dropdown (Atom)
        └── Main Content
              ├── StatsCard (Molecule)
              │     ├── Title (Atom)
              │     └── Value (Atom)
              └── DataTable (Organism)
                    ├── TableHeader (Molecule)
                    │     └── ColumnHeaders (Atoms)
                    ├── TableRow (Molecule)
                    │     └── Cells (Atoms)
                    └── Pagination (Molecule)
                          ├── Button (Atom)
                          └── Text (Atom)
```

---

## Benefits

### 1. Consistency
- Components are reused across the interface
- Design tokens are applied consistently
- Patterns are established and followed

### 2. Reusability
- Atoms can be used anywhere
- Molecules combine atoms in useful ways
- Organisms compose molecules into sections

### 3. Maintainability
- Changes to atoms propagate everywhere
- Components are small and focused
- Easy to update and refactor

### 4. Scalability
- New components build on existing ones
- Patterns are established for growth
- Team can work on different levels

### 5. Documentation
- Each level has clear responsibilities
- Easy to understand component hierarchy
- Clear naming conventions

---

## Best Practices

### 1. Start with Atoms
- Build basic components first
- Ensure they're reusable
- Test thoroughly

### 2. Compose, Don't Configure
- Use composition over props
- Create compound components
- Avoid prop drilling

### 3. Separate Concerns
- UI components (atoms, molecules)
- Logic components (organisms)
- Layout components (templates)
- Page components (pages)

### 4. Name Consistently
- Use clear, descriptive names
- Follow naming conventions
- Be consistent across levels

### 5. Document Everything
- Document each component
- Provide usage examples
- Document props and variants
