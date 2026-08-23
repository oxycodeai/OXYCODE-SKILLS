# Component Architecture Patterns

## Pattern 1: Compound Components

### Problem
Configuration overload with too many props.

### Solution
Use compound components for complex UI.

### Example: Tabs

```tsx
// ❌ BAD: Configuration overload
<Tabs
  items={[
    { label: 'Tab 1', content: 'Content 1' },
    { label: 'Tab 2', content: 'Content 2' },
  ]}
  activeTab={activeTab}
  onChange={setActiveTab}
  variant="underline"
  size="md"
  fullWidth
/>

// ✅ GOOD: Compound components
<Tabs value={activeTab} onChange={setActiveTab}>
  <Tabs.List>
    <Tabs.Trigger value="tab1">Tab 1</Tabs.Trigger>
    <Tabs.Trigger value="tab2">Tab 2</Tabs.Trigger>
  </Tabs.List>
  <Tabs.Content value="tab1">Content 1</Tabs.Content>
  <Tabs.Content value="tab2">Content 2</Tabs.Content>
</Tabs>
```

### Implementation

```tsx
// components/tabs/Tabs.tsx
import { createContext, useContext, useState } from 'react'

interface TabsContextValue {
  value: string
  onChange: (value: string) => void
}

const TabsContext = createContext<TabsContextValue | null>(null)

function useTabsContext() {
  const context = useContext(TabsContext)
  if (!context) {
    throw new Error('Tabs components must be used within <Tabs>')
  }
  return context
}

interface TabsProps {
  value: string
  onChange: (value: string) => void
  children: React.ReactNode
}

export function Tabs({ value, onChange, children }: TabsProps) {
  return (
    <TabsContext.Provider value={{ value, onChange }}>
      <div>{children}</div>
    </TabsContext.Provider>
  )
}

Tabs.List = function TabsList({ children }: { children: React.ReactNode }) {
  return (
    <div className="flex border-b border-zinc-200" role="tablist">
      {children}
    </div>
  )
}

Tabs.Trigger = function TabsTrigger({
  value,
  children
}: {
  value: string
  children: React.ReactNode
}) {
  const { value: selectedValue, onChange } = useTabsContext()
  const isSelected = selectedValue === value
  
  return (
    <button
      role="tab"
      aria-selected={isSelected}
      className={`px-4 py-2 text-sm font-medium border-b-2 transition-colors ${
        isSelected
          ? 'border-zinc-900 text-zinc-900'
          : 'border-transparent text-zinc-500 hover:text-zinc-700'
      }`}
      onClick={() => onChange(value)}
    >
      {children}
    </button>
  )
}

Tabs.Content = function TabsContent({
  value,
  children
}: {
  value: string
  children: React.ReactNode
}) {
  const { value: selectedValue } = useTabsContext()
  
  if (selectedValue !== value) {
    return null
  }
  
  return (
    <div role="tabpanel" className="py-4">
      {children}
    </div>
  )
}
```

---

## Pattern 2: Render Props

### Problem
Need to customize rendering of list items.

### Solution
Use render props for flexible rendering.

### Example: DataList

```tsx
// ❌ BAD: Limited customization
<DataList items={items} renderItem={renderItem} />

// ✅ GOOD: Render props
<DataList items={items}>
  {(item) => (
    <DataList.Item key={item.id}>
      <DataList.Content>{item.name}</DataList.Content>
    </DataList.Item>
  )}
</DataList>
```

### Implementation

```tsx
// components/data-list/DataList.tsx
interface DataListProps<T> {
  items: T[]
  children: (item: T) => React.ReactNode
}

export function DataList<T>({ items, children }: DataListProps<T>) {
  return (
    <div className="divide-y divide-zinc-200">
      {items.map(children)}
    </div>
  )
}

DataList.Item = function DataListItem({ children }: { children: React.ReactNode }) {
  return <div className="py-4">{children}</div>
}

DataList.Content = function DataListContent({ children }: { children: React.ReactNode }) {
  return <div className="text-sm text-zinc-900">{children}</div>
}
```

---

## Pattern 3: Custom Hooks

### Problem
Logic is duplicated across components.

### Solution
Extract logic into custom hooks.

### Example: useToggle

```tsx
// ❌ BAD: Duplicated logic
function Component1() {
  const [isOpen, setIsOpen] = useState(false)
  const toggle = () => setIsOpen(!isOpen)
}

function Component2() {
  const [isOpen, setIsOpen] = useState(false)
  const toggle = () => setIsOpen(!isOpen)
}

// ✅ GOOD: Custom hook
function useToggle(initialValue = false) {
  const [value, setValue] = useState(initialValue)
  const toggle = useCallback(() => setValue(v => !v), [])
  const setTrue = useCallback(() => setValue(true), [])
  const setFalse = useCallback(() => setValue(false), [])
  
  return { value, toggle, setTrue, setFalse }
}

function Component1() {
  const { value: isOpen, toggle } = useToggle()
}

function Component2() {
  const { value: isOpen, toggle } = useToggle()
}
```

### Example: useMediaQuery

```tsx
// hooks/useMediaQuery.ts
import { useState, useEffect } from 'react'

export function useMediaQuery(query: string) {
  const [matches, setMatches] = useState(false)
  
  useEffect(() => {
    const media = window.matchMedia(query)
    setMatches(media.matches)
    
    const listener = (e: MediaQueryListEvent) => setMatches(e.matches)
    media.addEventListener('change', listener)
    
    return () => media.removeEventListener('change', listener)
  }, [query])
  
  return matches
}

// Usage
function Component() {
  const isMobile = useMediaQuery('(max-width: 768px)')
  
  return isMobile ? <MobileLayout /> : <DesktopLayout />
}
```

---

## Pattern 4: Higher-Order Components

### Problem
Need to add behavior to multiple components.

### Solution
Use higher-order components.

### Example: withLoading

```tsx
// ❌ BAD: Duplicated loading logic
function Component1({ isLoading, data }) {
  if (isLoading) return <Spinner />
  return <div>{data}</div>
}

function Component2({ isLoading, data }) {
  if (isLoading) return <Spinner />
  return <div>{data}</div>
}

// ✅ GOOD: HOC
function withLoading<P>(
  WrappedComponent: React.ComponentType<P>
) {
  return function WithLoadingComponent({
    isLoading,
    ...props
  }: P & { isLoading: boolean }) {
    if (isLoading) return <Spinner />
    return <WrappedComponent {...(props as P)} />
  }
}

const UserCardWithLoading = withLoading(UserCard)

// Usage
<UserCardWithLoading isLoading={loading} user={user} />
```

---

## Pattern 5: Context Providers

### Problem
Need to share state across many components.

### Solution
Use context providers.

### Example: ThemeProvider

```tsx
// ❌ BAD: Prop drilling
function App() {
  const [theme, setTheme] = useState('light')
  return <Layout theme={theme} setTheme={setTheme} />
}

function Layout({ theme, setTheme }) {
  return <Header theme={theme} setTheme={setTheme} />
}

function Header({ theme, setTheme }) {
  return <ThemeToggle theme={theme} setTheme={setTheme} />
}

// ✅ GOOD: Context provider
const ThemeContext = createContext<{
  theme: string
  setTheme: (theme: string) => void
} | null>(null)

function ThemeProvider({ children }: { children: React.ReactNode }) {
  const [theme, setTheme] = useState('light')
  
  return (
    <ThemeContext.Provider value={{ theme, setTheme }}>
      {children}
    </ThemeContext.Provider>
  )
}

function useTheme() {
  const context = useContext(ThemeContext)
  if (!context) {
    throw new Error('useTheme must be used within ThemeProvider')
  }
  return context
}

// Usage
function App() {
  return (
    <ThemeProvider>
      <Layout />
    </ThemeProvider>
  )
}

function Header() {
  const { theme, setTheme } = useTheme()
  return <ThemeToggle theme={theme} setTheme={setTheme} />
}
```

---

## Pattern 6: Polymorphic Components

### Problem
Component should render different elements.

### Solution
Use polymorphic components with `as` prop.

### Example: Box

```tsx
// ❌ BAD: Fixed element
function Box({ children }) {
  return <div className="p-4">{children}</div>
}

// Usage
<Box as="section">Section</Box>  // ❌ Can't do this

// ✅ GOOD: Polymorphic
interface BoxProps {
  as?: React.ElementType
  children: React.ReactNode
}

function Box({ as: Component = 'div', children, ...props }: BoxProps) {
  return <Component className="p-4" {...props}>{children}</Component>
}

// Usage
<Box as="section">Section</Box>  // ✅ Renders <section>
<Box as="article">Article</Box>  // ✅ Renders <article>
<Box>Div</Box>                    // ✅ Renders <div>
```

---

## Pattern 7: Controlled/Uncontrolled

### Problem
Component needs to work both ways.

### Solution
Support both controlled and uncontrolled modes.

### Example: Input

```tsx
interface InputProps {
  value?: string
  defaultValue?: string
  onChange?: (value: string) => void
}

function Input({ value, defaultValue, onChange, ...props }: InputProps) {
  const [internalValue, setInternalValue] = useState(defaultValue || '')
  
  const isControlled = value !== undefined
  const currentValue = isControlled ? value : internalValue
  
  const handleChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const newValue = e.target.value
    if (!isControlled) {
      setInternalValue(newValue)
    }
    onChange?.(newValue)
  }
  
  return <input value={currentValue} onChange={handleChange} {...props} />
}

// Controlled usage
const [value, setValue] = useState('')
<Input value={value} onChange={setValue} />

// Uncontrolled usage
<Input defaultValue="initial" />
```

---

## Pattern 8: Compound Component with Reducer

### Problem
Complex state management in compound components.

### Solution
Use reducer for complex state.

### Example: Accordion

```tsx
type AccordionAction =
  | { type: 'TOGGLE'; value: string }
  | { type: 'CLOSE_ALL' }

interface AccordionState {
  openItems: Set<string>
}

function accordionReducer(state: AccordionState, action: AccordionAction): AccordionState {
  switch (action.type) {
    case 'TOGGLE': {
      const newOpenItems = new Set(state.openItems)
      if (newOpenItems.has(action.value)) {
        newOpenItems.delete(action.value)
      } else {
        newOpenItems.add(action.value)
      }
      return { openItems: newOpenItems }
    }
    case 'CLOSE_ALL':
      return { openItems: new Set() }
    default:
      return state
  }
}

interface AccordionContextValue {
  state: AccordionState
  dispatch: React.Dispatch<AccordionAction>
}

const AccordionContext = createContext<AccordionContextValue | null>(null)

function Accordion({ children }: { children: React.ReactNode }) {
  const [state, dispatch] = useReducer(accordionReducer, { openItems: new Set() })
  
  return (
    <AccordionContext.Provider value={{ state, dispatch }}>
      <div className="divide-y divide-zinc-200">{children}</div>
    </AccordionContext.Provider>
  )
}

Accordion.Item = function AccordionItem({
  value,
  children
}: {
  value: string
  children: React.ReactNode
}) {
  return <div>{children}</div>
}

Accordion.Trigger = function AccordionTrigger({
  value,
  children
}: {
  value: string
  children: React.ReactNode
}) {
  const { state, dispatch } = useContext(AccordionContext)!
  const isOpen = state.openItems.has(value)
  
  return (
    <button
      className="w-full py-4 text-left flex items-center justify-between"
      onClick={() => dispatch({ type: 'TOGGLE', value })}
    >
      {children}
      <ChevronDown className={`w-5 h-5 transition-transform ${isOpen ? 'rotate-180' : ''}`} />
    </button>
  )
}

Accordion.Content = function AccordionContent({
  value,
  children
}: {
  value: string
  children: React.ReactNode
}) {
  const { state } = useContext(AccordionContext)!
  const isOpen = state.openItems.has(value)
  
  if (!isOpen) return null
  
  return <div className="pb-4">{children}</div>
}
```

---

## Summary

### When to Use Each Pattern

| Pattern | Use When |
|---------|----------|
| Compound Components | Complex UI with multiple parts |
| Render Props | Need to customize rendering |
| Custom Hooks | Extract reusable logic |
| HOC | Add behavior to multiple components |
| Context Providers | Share state across many components |
| Polymorphic | Component should render different elements |
| Controlled/Uncontrolled | Component needs flexibility |
| Reducer | Complex state management |

### Best Practices

1. **Start simple** - Don't over-engineer
2. **Extract when duplicated** - If you copy, extract
3. **Document usage** - Show examples
4. **Type everything** - Use TypeScript
5. **Test thoroughly** - Unit + integration tests
