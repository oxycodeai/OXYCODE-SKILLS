# Dashboard Example

## Input Prompt
"Create an analytics dashboard with sidebar navigation, stats cards, and a data table"

## Output: React/TypeScript + Tailwind CSS

### app/dashboard/page.tsx
```tsx
import { Sidebar } from '@/components/sidebar'
import { StatsCard } from '@/components/stats-card'
import { DataTable } from '@/components/data-table'

export default function Dashboard() {
  return (
    <div className="flex h-screen bg-zinc-50">
      {/* Sidebar */}
      <Sidebar />
      
      {/* Main Content */}
      <div className="flex-1 flex flex-col overflow-hidden">
        {/* Header */}
        <header className="h-16 border-b border-zinc-200 bg-white flex items-center justify-between px-6">
          <div>
            <h1 className="text-lg font-semibold text-zinc-900">Analytics</h1>
            <p className="text-sm text-zinc-500">Overview of your performance</p>
          </div>
          
          <div className="flex items-center gap-4">
            <button className="px-4 py-2 text-sm font-medium text-zinc-700 border border-zinc-300 rounded-lg hover:bg-zinc-50 transition-colors">
              Export
            </button>
            <button className="px-4 py-2 text-sm font-medium text-white bg-zinc-900 rounded-lg hover:bg-zinc-800 transition-colors">
              Invite
            </button>
          </div>
        </header>
        
        {/* Content */}
        <main className="flex-1 overflow-auto p-6">
          {/* Stats Grid */}
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-4 mb-6">
            <StatsCard
              title="Total Users"
              value="12,345"
              change="+12%"
              trend="up"
            />
            <StatsCard
              title="Revenue"
              value="$45,678"
              change="+8%"
              trend="up"
            />
            <StatsCard
              title="Orders"
              value="1,234"
              change="+5%"
              trend="up"
            />
            <StatsCard
              title="Conversion"
              value="3.2%"
              change="-0.5%"
              trend="down"
            />
          </div>
          
          {/* Data Table */}
          <div className="bg-white border border-zinc-200 rounded-lg">
            <div className="px-6 py-4 border-b border-zinc-200">
              <h2 className="text-base font-semibold text-zinc-900">Recent Transactions</h2>
              <p className="text-sm text-zinc-500">Your latest orders and transactions</p>
            </div>
            <DataTable />
          </div>
        </main>
      </div>
    </div>
  )
}
```

### components/sidebar.tsx
```tsx
'use client'

import Link from 'next/link'
import { usePathname } from 'next/navigation'
import { cn } from '@/lib/utils'

const navigation = [
  { name: 'Dashboard', href: '/dashboard', icon: HomeIcon },
  { name: 'Analytics', href: '/analytics', icon: ChartIcon },
  { name: 'Customers', href: '/customers', icon: UsersIcon },
  { name: 'Products', href: '/products', icon: BoxIcon },
  { name: 'Settings', href: '/settings', icon: CogIcon },
]

export function Sidebar() {
  const pathname = usePathname()
  
  return (
    <aside className="w-64 border-r border-zinc-200 bg-white flex flex-col">
      {/* Logo */}
      <div className="h-16 flex items-center px-6 border-b border-zinc-200">
        <div className="flex items-center gap-2">
          <div className="w-8 h-8 bg-zinc-900 rounded-lg flex items-center justify-center">
            <span className="text-white text-sm font-bold">A</span>
          </div>
          <span className="text-xl font-bold text-zinc-900">Analytics</span>
        </div>
      </div>
      
      {/* Navigation */}
      <nav className="flex-1 p-4 space-y-1">
        {navigation.map((item) => {
          const isActive = pathname === item.href
          return (
            <Link
              key={item.name}
              href={item.href}
              className={cn(
                'flex items-center gap-3 px-3 py-2 text-sm font-medium rounded-lg transition-colors',
                isActive
                  ? 'bg-zinc-100 text-zinc-900'
                  : 'text-zinc-600 hover:text-zinc-900 hover:bg-zinc-50'
              )}
            >
              <item.icon className="w-5 h-5" />
              {item.name}
            </Link>
          )
        })}
      </nav>
      
      {/* User */}
      <div className="p-4 border-t border-zinc-200">
        <div className="flex items-center gap-3">
          <div className="w-10 h-10 bg-zinc-200 rounded-full flex items-center justify-center">
            <span className="text-sm font-medium text-zinc-600">JD</span>
          </div>
          <div className="flex-1 min-w-0">
            <p className="text-sm font-medium text-zinc-900 truncate">John Doe</p>
            <p className="text-xs text-zinc-500 truncate">john@example.com</p>
          </div>
        </div>
      </div>
    </aside>
  )
}

// Icon components (simplified)
function HomeIcon({ className }: { className?: string }) {
  return (
    <svg className={className} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6" />
    </svg>
  )
}

function ChartIcon({ className }: { className?: string }) {
  return (
    <svg className={className} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z" />
    </svg>
  )
}

function UsersIcon({ className }: { className?: string }) {
  return (
    <svg className={className} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M12 4.354a4 4 0 110 5.292M15 21H3v-1a6 6 0 0112 0v1zm0 0h6v-1a6 6 0 00-9-5.197M13 7a4 4 0 11-8 0 4 4 0 018 0z" />
    </svg>
  )
}

function BoxIcon({ className }: { className?: string }) {
  return (
    <svg className={className} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M20 7l-8-4-8 4m16 0l-8 4m8-4v10l-8 4m0-10L4 7m8 4v10M4 7v10l8 4" />
    </svg>
  )
}

function CogIcon({ className }: { className?: string }) {
  return (
    <svg className={className} fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M10.325 4.317c.426-1.756 2.924-1.756 3.35 0a1.724 1.724 0 002.573 1.066c1.543-.94 3.31.826 2.37 2.37a1.724 1.724 0 001.065 2.572c1.756.426 1.756 2.924 0 3.35a1.724 1.724 0 00-1.066 2.573c.94 1.543-.826 3.31-2.37 2.37a1.724 1.724 0 00-2.572 1.065c-.426 1.756-2.924 1.756-3.35 0a1.724 1.724 0 00-2.573-1.066c-1.543.94-3.31-.826-2.37-2.37a1.724 1.724 0 00-1.065-2.572c-1.756-.426-1.756-2.924 0-3.35a1.724 1.724 0 001.066-2.573c-.94-1.543.826-3.31 2.37-2.37.996.608 2.296.07 2.572-1.065z" />
      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
    </svg>
  )
}
```

### components/stats-card.tsx
```tsx
import { cn } from '@/lib/utils'

interface StatsCardProps {
  title: string
  value: string
  change: string
  trend: 'up' | 'down'
}

export function StatsCard({ title, value, change, trend }: StatsCardProps) {
  return (
    <div className="bg-white border border-zinc-200 rounded-lg p-6">
      <div className="flex items-center justify-between">
        <p className="text-sm font-medium text-zinc-500">{title}</p>
        <span
          className={cn(
            'text-xs font-medium px-2 py-1 rounded-full',
            trend === 'up'
              ? 'text-green-700 bg-green-100'
              : 'text-red-700 bg-red-100'
          )}
        >
          {change}
        </span>
      </div>
      <p className="mt-2 text-3xl font-bold text-zinc-900">{value}</p>
    </div>
  )
}
```

### components/data-table.tsx
```tsx
const data = [
  { id: 1, customer: 'John Doe', amount: '$123.45', status: 'Completed', date: '2026-08-24' },
  { id: 2, customer: 'Jane Smith', amount: '$67.89', status: 'Pending', date: '2026-08-23' },
  { id: 3, customer: 'Bob Johnson', amount: '$234.56', status: 'Completed', date: '2026-08-22' },
  { id: 4, customer: 'Alice Brown', amount: '$89.01', status: 'Failed', date: '2026-08-21' },
  { id: 5, customer: 'Charlie Wilson', amount: '$345.67', status: 'Completed', date: '2026-08-20' },
]

const statusStyles: Record<string, string> = {
  Completed: 'bg-green-100 text-green-800',
  Pending: 'bg-yellow-100 text-yellow-800',
  Failed: 'bg-red-100 text-red-800',
}

export function DataTable() {
  return (
    <div className="overflow-x-auto">
      <table className="w-full text-sm text-left">
        <thead className="text-xs text-zinc-500 uppercase bg-zinc-50">
          <tr>
            <th className="px-6 py-3 font-medium">Customer</th>
            <th className="px-6 py-3 font-medium">Amount</th>
            <th className="px-6 py-3 font-medium">Status</th>
            <th className="px-6 py-3 font-medium">Date</th>
          </tr>
        </thead>
        <tbody className="divide-y divide-zinc-200">
          {data.map((row) => (
            <tr key={row.id} className="hover:bg-zinc-50 transition-colors">
              <td className="px-6 py-4 font-medium text-zinc-900">
                {row.customer}
              </td>
              <td className="px-6 py-4 text-zinc-600">
                {row.amount}
              </td>
              <td className="px-6 py-4">
                <span
                  className={cn(
                    'inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium',
                    statusStyles[row.status]
                  )}
                >
                  {row.status}
                </span>
              </td>
              <td className="px-6 py-4 text-zinc-500">
                {row.date}
              </td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  )
}
```

### lib/utils.ts
```tsx
import { type ClassValue, clsx } from 'clsx'
import { twMerge } from 'tailwind-merge'

export function cn(...inputs: ClassValue[]) {
  return twMerge(clsx(inputs))
}
```

## Why This Is Good

✅ **No AI Slop Patterns**
- No purple/blue gradients
- No centered everything
- No rainbow colors
- No oversized border radius

✅ **Vercel-Quality Design**
- Clean zinc color palette
- Proper typography hierarchy
- Consistent spacing
- Subtle borders and shadows

✅ **Production-Ready**
- Responsive design
- Proper semantic HTML
- Accessibility attributes
- TypeScript types
- Client components where needed

✅ **Dashboard Best Practices**
- Sidebar navigation
- Stats cards with trends
- Data table with status badges
- Proper header with actions
