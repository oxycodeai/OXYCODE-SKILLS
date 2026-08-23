# component-architect Skill

> Design scalable component architectures using atomic design patterns, compound components, and composition over configuration.

## What Does This Skill Do?

The `component-architect` skill teaches AI coding agents to:
1. **Structure** components using atomic design (atoms → molecules → organisms → templates → pages)
2. **Design** compound components for complex UI
3. **Apply** composition over configuration patterns
4. **Extract** logic into custom hooks
5. **Separate** concerns properly

## Why Use This Skill?

- **Prevents 800-line components** - Small, focused components
- **Promotes reusability** - Build once, use everywhere
- **Improves maintainability** - Easy to update and refactor
- **Scales with team** - Clear patterns for growth

## Quick Start

### Design a Component System
```bash
/component-architect "Design a component system for a dashboard"
```

### Refactor Large Components
```bash
/component-architect "Refactor this 500-line component"
```

### Create Compound Components
```bash
/component-architect "Create a compound Tabs component"
```

## Features

- ✅ Atomic design methodology
- ✅ Compound components
- ✅ Composition patterns
- ✅ Custom hooks extraction
- ✅ Concern separation
- ✅ TypeScript types
- ✅ Documentation generation

## File Structure

```
skills/component-architect/
├── SKILL.md                    # Main skill instructions
├── README.md                   # This file
├── references/
│   └── atomic-design.md        # Atomic design methodology
└── examples/
    └── component-patterns.md   # Common patterns
```

## Atomic Design Levels

### 1. Atoms (Basic Building Blocks)
- Button, Input, Badge, Icon
- Cannot be broken down further
- Reusable across the interface

### 2. Molecules (Groups of Atoms)
- Form field, Card, Nav item
- Combinations of atoms
- Simple UI components

### 3. Organisms (Complex Components)
- Header, Sidebar, Data table
- Composed of molecules/atoms
- Distinct sections of interface

### 4. Templates (Page Layouts)
- Dashboard, Landing, Auth
- Define page structure
- Place components in layout

### 5. Pages (Specific Instances)
- Home, Settings, Profile
- Real data instances
- End-user facing

## Component Patterns

### Compound Components
```tsx
<Tabs>
  <Tabs.List>
    <Tabs.Trigger value="tab1">Tab 1</Tabs.Trigger>
  </Tabs.List>
  <Tabs.Content value="tab1">Content</Tabs.Content>
</Tabs>
```

### Render Props
```tsx
<DataList items={items}>
  {(item) => <DataList.Item>{item.name}</DataList.Item>}
</DataList>
```

### Custom Hooks
```tsx
function useToggle() {
  const [value, setValue] = useState(false)
  const toggle = () => setValue(v => !v)
  return { value, toggle }
}
```

### Higher-Order Components
```tsx
const withLoading = (Component) => ({ isLoading, ...props }) =>
  isLoading ? <Spinner /> : <Component {...props} />
```

### Context Providers
```tsx
<ThemeProvider>
  <App />
</ThemeProvider>
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

## Examples

See [examples/component-patterns.md](examples/component-patterns.md) for common patterns.

## Resources

- [Atomic Design](https://atomicdesign.bradfrost.com/)
- [React Patterns](https://reactpatterns.com/)
- [ui.shadcn.com](https://ui.shadcn.com/)

## Contributing

See [CONTRIBUTING.md](../../CONTRIBUTING.md) for guidelines.
