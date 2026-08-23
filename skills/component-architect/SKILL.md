# component-architect

## Description

Design scalable component architectures using atomic design patterns, compound components, and composition over configuration. Prevents 800-line components and teaches proper structure.

## Trigger

Use this skill when:
- User asks to design a component system
- User wants to refactor large components
- User says "architect this component" or "design a component library"
- Building a design system
- Components are getting too complex

## Instructions

### Step 1: Analyze Current State

Before designing, understand:
- Current component structure
- Pain points (too large, hard to maintain)
- Reuse patterns
- Dependencies

### Step 2: Apply Atomic Design

Structure components using atomic design:

```
src/
├── components/
│   ├── atoms/           # Basic building blocks
│   │   ├── Button/
│   │   ├── Input/
│   │   ├── Badge/
│   │   └── Icon/
│   ├── molecules/       # Groups of atoms
│   │   ├── form-field/
│   │   ├── card/
│   │   └── nav-item/
│   ├── organisms/       # Complex components
│   │   ├── header/
│   │   ├── sidebar/
│   │   └── data-table/
│   ├── templates/       # Page layouts
│   │   ├── dashboard/
│   │   ├── landing/
│   │   └── auth/
│   └── pages/           # Specific instances
│       ├── home/
│       ├── settings/
│       └── profile/
```

### Step 3: Design Compound Components

Use compound components for complex UI:

```tsx
// ❌ BAD: Configuration overload
<Select
  options={options}
  value={value}
  onChange={onChange}
  placeholder="Select..."
  isSearchable
  isClearable
  isDisabled
  isLoading
  formatOptionLabel={formatLabel}
  formatGroupLabel={formatGroup}
/>

// ✅ GOOD: Compound components
<Select value={value} onChange={onChange}>
  <Select.Trigger>
    <Select.Value placeholder="Select..." />
    <Select.Icon />
  </Select.Trigger>
  <Select.Content>
    {options.map(option => (
      <Select.Item key={option.value} value={option.value}>
        {option.label}
      </Select.Item>
    ))}
  </Select.Content>
</Select>
```

### Step 4: Use Composition Pattern

Compose components instead of configuring:

```tsx
// ❌ BAD: One giant component
<Card
  title="Title"
  description="Description"
  image="/image.jpg"
  actions={<Button>Action</Button>}
  footer={<div>Footer</div>}
  header={<div>Header</div>}
  variant="outlined"
  size="large"
/>

// ✅ GOOD: Composition
<Card>
  <Card.Header>
    <Card.Title>Title</Card.Title>
    <Card.Description>Description</Card.Description>
  </Card.Header>
  <Card.Image src="/image.jpg" />
  <Card.Content>
    {/* Content here */}
  </Card.Content>
  <Card.Footer>
    <Button>Action</Button>
  </Card.Footer>
</Card>
```

### Step 5: Separate Concerns

Split components by concern:

```tsx
// ❌ BAD: Mixed concerns
function UserCard({ user }) {
  const [isEditing, setIsEditing] = useState(false)
  const [formData, setFormData] = useState(user)
  
  const handleSubmit = async () => {
    await updateUser(formData)
    setIsEditing(false)
  }
  
  return (
    <div>
      {isEditing ? (
        <form onSubmit={handleSubmit}>
          {/* Edit form */}
        </form>
      ) : (
        <div>
          {/* Display user */}
        </div>
      )}
    </div>
  )
}

// ✅ GOOD: Separated concerns
function UserCard({ user }) {
  return (
    <Card>
      <Card.Content>
        <UserInfo user={user} />
      </Card.Content>
      <Card.Footer>
        <UserActions user={user} />
      </Card.Footer>
    </Card>
  )
}

function UserInfo({ user }) {
  return <div>{/* Display user */}</div>
}

function UserActions({ user }) {
  const [isEditing, setIsEditing] = useState(false)
  return <Button onClick={() => setIsEditing(true)}>Edit</Button>
}
```

### Step 6: Create Component Variants

Use variants instead of props:

```tsx
// ❌ BAD: Too many props
<Button
  primary
  secondary
  danger
  outline
  ghost
  size="small"
  size="medium"
  size="large"
  loading
  disabled
  icon={<Icon />}
/>

// ✅ GOOD: Variants
<Button variant="primary">Primary</Button>
<Button variant="secondary">Secondary</Button>
<Button variant="danger">Danger</Button>
<Button variant="outline">Outline</Button>
<Button variant="ghost">Ghost</Button>
<Button size="sm">Small</Button>
<Button size="md">Medium</Button>
<Button size="lg">Large</Button>
```

### Step 7: Extract Custom Hooks

Extract logic into custom hooks:

```tsx
// ❌ BAD: Logic in component
function DataTable({ data }) {
  const [sort, setSort] = useState('name')
  const [filter, setFilter] = useState('')
  const [page, setPage] = useState(1)
  
  const filteredData = data.filter(item => 
    item.name.includes(filter)
  )
  
  const sortedData = filteredData.sort((a, b) => 
    a[sort].localeCompare(b[sort])
  )
  
  const paginatedData = sortedData.slice(
    (page - 1) * 10,
    page * 10
  )
  
  return <Table data={paginatedData} />
}

// ✅ GOOD: Custom hook
function useDataTable(data) {
  const [sort, setSort] = useState('name')
  const [filter, setFilter] = useState('')
  const [page, setPage] = useState(1)
  
  const filteredData = data.filter(item => 
    item.name.includes(filter)
  )
  
  const sortedData = filteredData.sort((a, b) => 
    a[sort].localeCompare(b[sort])
  )
  
  const paginatedData = sortedData.slice(
    (page - 1) * 10,
    page * 10
  )
  
  return { data: paginatedData, sort, setSort, filter, setFilter, page, setPage }
}

function DataTable({ data }) {
  const { data: tableData } = useDataTable(data)
  return <Table data={tableData} />
}
```

### Step 8: Document Components

Create clear documentation:

```tsx
/**
 * Button component for user actions.
 * 
 * @example
 * <Button variant="primary" size="md">
 *   Click me
 * </Button>
 * 
 * @example
 * <Button variant="outline" isLoading>
 *   Loading
 * </Button>
 */
interface ButtonProps {
  /** Button variant */
  variant?: 'primary' | 'secondary' | 'danger' | 'outline' | 'ghost'
  /** Button size */
  size?: 'sm' | 'md' | 'lg'
  /** Loading state */
  isLoading?: boolean
  /** Disabled state */
  disabled?: boolean
  /** Button content */
  children: React.ReactNode
  /** Click handler */
  onClick?: () => void
}
```

## Component Patterns

### 1. Compound Components
```tsx
<Tabs>
  <Tabs.List>
    <Tabs.Trigger value="tab1">Tab 1</Tabs.Trigger>
    <Tabs.Trigger value="tab2">Tab 2</Tabs.Trigger>
  </Tabs.List>
  <Tabs.Content value="tab1">Content 1</Tabs.Content>
  <Tabs.Content value="tab2">Content 2</Tabs.Content>
</Tabs>
```

### 2. Render Props
```tsx
<DataList items={items}>
  {(item) => (
    <DataList.Item key={item.id}>
      <DataList.Content>{item.name}</DataList.Content>
    </DataList.Item>
  )}
</DataList>
```

### 3. Higher-Order Components
```tsx
const withLoading = (WrappedComponent) => {
  return function WithLoadingComponent({ isLoading, ...props }) {
    if (isLoading) return <Spinner />
    return <WrappedComponent {...props} />
  }
}

const UserCardWithLoading = withLoading(UserCard)
```

### 4. Custom Hooks
```tsx
function useToggle(initialValue = false) {
  const [value, setValue] = useState(initialValue)
  const toggle = useCallback(() => setValue(v => !v), [])
  return [value, toggle]
}
```

### 5. Context Providers
```tsx
const ThemeContext = createContext()

function ThemeProvider({ children }) {
  const [theme, setTheme] = useState('light')
  return (
    <ThemeContext.Provider value={{ theme, setTheme }}>
      {children}
    </ThemeContext.Provider>
  )
}
```

## Anti-Patterns

### ❌ 800-Line Components
```tsx
// BAD: One giant component
function Dashboard() {
  // 800 lines of code
}
```

### ✅ Split Into Smaller Components
```tsx
// GOOD: Split by concern
function Dashboard() {
  return (
    <DashboardLayout>
      <DashboardHeader />
      <DashboardStats />
      <DashboardTable />
      <DashboardFooter />
    </DashboardLayout>
  )
}
```

### ❌ Configuration Overload
```tsx
// BAD: Too many props
<Component
  prop1={value1}
  prop2={value2}
  prop3={value3}
  prop4={value4}
  prop5={value5}
  prop6={value6}
  prop7={value7}
  prop8={value8}
/>
```

### ✅ Composition
```tsx
// GOOD: Compose components
<Component>
  <Component.Header>Header</Component.Header>
  <Component.Content>Content</Component.Content>
  <Component.Footer>Footer</Component.Footer>
</Component>
```

### ❌ Mixed Concerns
```tsx
// BAD: UI + logic + data fetching
function UserCard() {
  const [user, setUser] = useState(null)
  const [loading, setLoading] = useState(true)
  
  useEffect(() => {
    fetchUser().then(setUser)
  }, [])
  
  if (loading) return <Spinner />
  
  return (
    <div>
      {/* UI + logic + data */}
    </div>
  )
}
```

### ✅ Separated Concerns
```tsx
// GOOD: Separate UI, logic, data
function UserCard({ user }) {
  return (
    <Card>
      <UserInfo user={user} />
      <UserActions user={user} />
    </Card>
  )
}

function useUser(id) {
  const [user, setUser] = useState(null)
  useEffect(() => {
    fetchUser(id).then(setUser)
  }, [id])
  return user
}
```

## File Structure

```
src/
├── components/
│   ├── atoms/
│   │   ├── Button/
│   │   │   ├── Button.tsx
│   │   │   ├── Button.test.tsx
│   │   │   ├── Button.stories.tsx
│   │   │   └── index.ts
│   │   ├── Input/
│   │   └── Badge/
│   ├── molecules/
│   │   ├── form-field/
│   │   └── card/
│   ├── organisms/
│   │   ├── header/
│   │   └── sidebar/
│   ├── templates/
│   └── pages/
├── hooks/
│   ├── useToggle.ts
│   ├── useDataTable.ts
│   └── useMediaQuery.ts
├── lib/
│   ├── utils.ts
│   └── cn.ts
└── styles/
    └── globals.css
```

## Examples

### Example 1: Button Component

```tsx
// atoms/Button/Button.tsx
import { cn } from '@/lib/utils'

interface ButtonProps extends React.ButtonHTMLAttributes<HTMLButtonElement> {
  variant?: 'primary' | 'secondary' | 'danger' | 'outline' | 'ghost'
  size?: 'sm' | 'md' | 'lg'
  isLoading?: boolean
}

const variants = {
  primary: 'bg-zinc-900 text-white hover:bg-zinc-800',
  secondary: 'bg-zinc-100 text-zinc-900 hover:bg-zinc-200',
  danger: 'bg-red-600 text-white hover:bg-red-700',
  outline: 'border border-zinc-300 text-zinc-700 hover:bg-zinc-50',
  ghost: 'text-zinc-600 hover:text-zinc-900 hover:bg-zinc-100',
}

const sizes = {
  sm: 'px-3 py-1.5 text-xs',
  md: 'px-4 py-2 text-sm',
  lg: 'px-6 py-3 text-base',
}

export function Button({
  variant = 'primary',
  size = 'md',
  isLoading,
  disabled,
  className,
  children,
  ...props
}: ButtonProps) {
  return (
    <button
      className={cn(
        'inline-flex items-center justify-center font-medium rounded-lg transition-colors',
        'disabled:opacity-50 disabled:cursor-not-allowed',
        variants[variant],
        sizes[size],
        className
      )}
      disabled={disabled || isLoading}
      {...props}
    >
      {isLoading && <Spinner className="mr-2" />}
      {children}
    </button>
  )
}
```

### Example 2: Card Component

```tsx
// molecules/Card/Card.tsx
import { cn } from '@/lib/utils'

interface CardProps extends React.HTMLAttributes<HTMLDivElement> {}

export function Card({ className, children, ...props }: CardProps) {
  return (
    <div
      className={cn(
        'bg-white border border-zinc-200 rounded-lg',
        className
      )}
      {...props}
    >
      {children}
    </div>
  )
}

Card.Header = function CardHeader({ className, children, ...props }) {
  return (
    <div
      className={cn('px-6 py-4 border-b border-zinc-200', className)}
      {...props}
    >
      {children}
    </div>
  )
}

Card.Title = function CardTitle({ className, children, ...props }) {
  return (
    <h3
      className={cn('text-lg font-semibold text-zinc-900', className)}
      {...props}
    >
      {children}
    </h3>
  )
}

Card.Content = function CardContent({ className, children, ...props }) {
  return (
    <div className={cn('px-6 py-4', className)} {...props}>
      {children}
    </div>
  )
}

Card.Footer = function CardFooter({ className, children, ...props }) {
  return (
    <div
      className={cn('px-6 py-4 border-t border-zinc-200', className)}
      {...props}
    >
      {children}
    </div>
  )
}
```

### Example 3: Custom Hook

```tsx
// hooks/useToggle.ts
import { useState, useCallback } from 'react'

export function useToggle(initialValue = false) {
  const [value, setValue] = useState(initialValue)
  
  const toggle = useCallback(() => {
    setValue(v => !v)
  }, [])
  
  const setTrue = useCallback(() => {
    setValue(true)
  }, [])
  
  const setFalse = useCallback(() => {
    setValue(false)
  }, [])
  
  return { value, toggle, setTrue, setFalse }
}
```

## References

- [Atomic Design](https://atomicdesign.bradfrost.com/)
- [Compound Components](https://www.youtube.com/watch?v=v9ContrapKto)
- [React Patterns](https://reactpatterns.com/)
- [ui.shadcn.com](https://ui.shadcn.com/)

## Validation Checklist

Before delivering component architecture:
- [ ] Components follow atomic design
- [ ] No 800+ line components
- [ ] Compound components used appropriately
- [ ] Composition over configuration
- [ ] Concerns separated
- [ ] Custom hooks extracted
- [ ] TypeScript types defined
- [ ] Documentation provided
