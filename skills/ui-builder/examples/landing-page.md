# Landing Page Example

## Input Prompt
"Create a modern SaaS landing page with hero section, features, pricing table, and testimonials"

## Output: React/TypeScript + Tailwind CSS

### app/page.tsx
```tsx
import { Hero } from '@/components/hero'
import { Features } from '@/components/features'
import { Pricing } from '@/components/pricing'
import { Testimonials } from '@/components/testimonials'
import { Footer } from '@/components/footer'

export default function LandingPage() {
  return (
    <div className="min-h-screen bg-white">
      {/* Navigation */}
      <nav className="sticky top-0 z-50 border-b border-zinc-200 bg-white/80 backdrop-blur-sm">
        <div className="max-w-7xl mx-auto px-6 h-16 flex items-center justify-between">
          <div className="flex items-center gap-2">
            <div className="w-8 h-8 bg-zinc-900 rounded-lg flex items-center justify-center">
              <span className="text-white text-sm font-bold">S</span>
            </div>
            <span className="text-xl font-bold text-zinc-900">SaaS</span>
          </div>
          
          <div className="hidden md:flex items-center gap-8">
            <a href="#features" className="text-sm text-zinc-600 hover:text-zinc-900 transition-colors">
              Features
            </a>
            <a href="#pricing" className="text-sm text-zinc-600 hover:text-zinc-900 transition-colors">
              Pricing
            </a>
            <a href="#testimonials" className="text-sm text-zinc-600 hover:text-zinc-900 transition-colors">
              Testimonials
            </a>
          </div>
          
          <div className="flex items-center gap-4">
            <button className="hidden sm:inline-flex px-4 py-2 text-sm font-medium text-zinc-700 hover:text-zinc-900 transition-colors">
              Sign in
            </button>
            <button className="px-4 py-2 text-sm font-medium text-white bg-zinc-900 rounded-lg hover:bg-zinc-800 transition-colors">
              Get started
            </button>
          </div>
        </div>
      </nav>

      {/* Hero Section */}
      <section className="py-24 px-6">
        <div className="max-w-4xl mx-auto text-center">
          <div className="inline-flex items-center gap-2 px-3 py-1 bg-zinc-100 rounded-full text-sm text-zinc-600 mb-6">
            <span className="w-2 h-2 bg-green-500 rounded-full animate-pulse" />
            Now in public beta
          </div>
          
          <h1 className="text-4xl sm:text-5xl lg:text-6xl font-bold tracking-tight text-zinc-900">
            Build faster with
            <br />
            <span className="text-zinc-500">modern tools</span>
          </h1>
          
          <p className="mt-6 text-lg text-zinc-500 max-w-2xl mx-auto">
            The all-in-one platform that helps teams ship products faster.
            Automate your workflow and focus on what matters.
          </p>
          
          <div className="mt-10 flex flex-col sm:flex-row items-center justify-center gap-4">
            <button className="w-full sm:w-auto px-6 py-3 text-base font-medium text-white bg-zinc-900 rounded-lg hover:bg-zinc-800 transition-colors">
              Start for free
            </button>
            <button className="w-full sm:w-auto px-6 py-3 text-base font-medium text-zinc-700 border border-zinc-300 rounded-lg hover:bg-zinc-50 transition-colors">
              Watch demo
            </button>
          </div>
          
          <p className="mt-4 text-sm text-zinc-500">
            No credit card required • 14-day free trial
          </p>
        </div>
      </section>

      {/* Features Section */}
      <section id="features" className="py-24 px-6 bg-zinc-50">
        <div className="max-w-7xl mx-auto">
          <div className="text-center max-w-2xl mx-auto">
            <h2 className="text-3xl font-bold text-zinc-900">
              Everything you need
            </h2>
            <p className="mt-4 text-lg text-zinc-500">
              Powerful features to help you build and scale your product.
            </p>
          </div>
          
          <div className="mt-16 grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
            {/* Feature 1 */}
            <div className="bg-white p-6 rounded-xl border border-zinc-200">
              <div className="w-10 h-10 bg-zinc-900 rounded-lg flex items-center justify-center">
                <svg className="w-5 h-5 text-white" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M13 10V3L4 14h7v7l9-11h-7z" />
                </svg>
              </div>
              <h3 className="mt-4 text-lg font-semibold text-zinc-900">Lightning Fast</h3>
              <p className="mt-2 text-sm text-zinc-500">
                Built for speed with modern technologies. Your users will love it.
              </p>
            </div>
            
            {/* Feature 2 */}
            <div className="bg-white p-6 rounded-xl border border-zinc-200">
              <div className="w-10 h-10 bg-zinc-900 rounded-lg flex items-center justify-center">
                <svg className="w-5 h-5 text-white" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M12 15v2m-6 4h12a2 2 0 002-2v-6a2 2 0 00-2-2H6a2 2 0 00-2 2v6a2 2 0 002 2zm10-10V7a4 4 0 00-8 0v4h8z" />
                </svg>
              </div>
              <h3 className="mt-4 text-lg font-semibold text-zinc-900">Secure by Default</h3>
              <p className="mt-2 text-sm text-zinc-500">
                Enterprise-grade security out of the box. Sleep soundly.
              </p>
            </div>
            
            {/* Feature 3 */}
            <div className="bg-white p-6 rounded-xl border border-zinc-200">
              <div className="w-10 h-10 bg-zinc-900 rounded-lg flex items-center justify-center">
                <svg className="w-5 h-5 text-white" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z" />
                </svg>
              </div>
              <h3 className="mt-4 text-lg font-semibold text-zinc-900">Analytics Built-in</h3>
              <p className="mt-2 text-sm text-zinc-500">
                Understand your users with powerful analytics. No setup required.
              </p>
            </div>
          </div>
        </div>
      </section>

      {/* Pricing Section */}
      <section id="pricing" className="py-24 px-6">
        <div className="max-w-7xl mx-auto">
          <div className="text-center max-w-2xl mx-auto">
            <h2 className="text-3xl font-bold text-zinc-900">
              Simple pricing
            </h2>
            <p className="mt-4 text-lg text-zinc-500">
              Choose the plan that works for you.
            </p>
          </div>
          
          <div className="mt-16 grid grid-cols-1 md:grid-cols-3 gap-8">
            {/* Starter Plan */}
            <div className="bg-white p-8 rounded-xl border border-zinc-200">
              <h3 className="text-lg font-semibold text-zinc-900">Starter</h3>
              <p className="mt-2 text-sm text-zinc-500">Perfect for small projects</p>
              <div className="mt-6">
                <span className="text-4xl font-bold text-zinc-900">$9</span>
                <span className="text-zinc-500">/month</span>
              </div>
              <ul className="mt-8 space-y-4">
                <li className="flex items-center gap-3 text-sm text-zinc-600">
                  <svg className="w-5 h-5 text-green-500" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M5 13l4 4L19 7" />
                  </svg>
                  1,000 API calls
                </li>
                <li className="flex items-center gap-3 text-sm text-zinc-600">
                  <svg className="w-5 h-5 text-green-500" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M5 13l4 4L19 7" />
                  </svg>
                  Basic analytics
                </li>
                <li className="flex items-center gap-3 text-sm text-zinc-600">
                  <svg className="w-5 h-5 text-green-500" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M5 13l4 4L19 7" />
                  </svg>
                  Email support
                </li>
              </ul>
              <button className="mt-8 w-full py-2 text-sm font-medium text-zinc-700 border border-zinc-300 rounded-lg hover:bg-zinc-50 transition-colors">
                Get started
              </button>
            </div>
            
            {/* Pro Plan */}
            <div className="bg-zinc-900 p-8 rounded-xl text-white relative">
              <div className="absolute -top-3 left-1/2 -translate-x-1/2 px-3 py-1 bg-zinc-900 text-white text-xs font-medium rounded-full border border-zinc-700">
                Most popular
              </div>
              <h3 className="text-lg font-semibold">Pro</h3>
              <p className="mt-2 text-sm text-zinc-400">For growing teams</p>
              <div className="mt-6">
                <span className="text-4xl font-bold">$29</span>
                <span className="text-zinc-400">/month</span>
              </div>
              <ul className="mt-8 space-y-4">
                <li className="flex items-center gap-3 text-sm text-zinc-300">
                  <svg className="w-5 h-5 text-green-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M5 13l4 4L19 7" />
                  </svg>
                  10,000 API calls
                </li>
                <li className="flex items-center gap-3 text-sm text-zinc-300">
                  <svg className="w-5 h-5 text-green-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M5 13l4 4L19 7" />
                  </svg>
                  Advanced analytics
                </li>
                <li className="flex items-center gap-3 text-sm text-zinc-300">
                  <svg className="w-5 h-5 text-green-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M5 13l4 4L19 7" />
                  </svg>
                  Priority support
                </li>
              </ul>
              <button className="mt-8 w-full py-2 text-sm font-medium text-zinc-900 bg-white rounded-lg hover:bg-zinc-100 transition-colors">
                Get started
              </button>
            </div>
            
            {/* Enterprise Plan */}
            <div className="bg-white p-8 rounded-xl border border-zinc-200">
              <h3 className="text-lg font-semibold text-zinc-900">Enterprise</h3>
              <p className="mt-2 text-sm text-zinc-500">For large organizations</p>
              <div className="mt-6">
                <span className="text-4xl font-bold text-zinc-900">$99</span>
                <span className="text-zinc-500">/month</span>
              </div>
              <ul className="mt-8 space-y-4">
                <li className="flex items-center gap-3 text-sm text-zinc-600">
                  <svg className="w-5 h-5 text-green-500" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M5 13l4 4L19 7" />
                  </svg>
                  Unlimited API calls
                </li>
                <li className="flex items-center gap-3 text-sm text-zinc-600">
                  <svg className="w-5 h-5 text-green-500" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M5 13l4 4L19 7" />
                  </svg>
                  Custom analytics
                </li>
                <li className="flex items-center gap-3 text-sm text-zinc-600">
                  <svg className="w-5 h-5 text-green-500" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M5 13l4 4L19 7" />
                  </svg>
                  24/7 support
                </li>
              </ul>
              <button className="mt-8 w-full py-2 text-sm font-medium text-zinc-700 border border-zinc-300 rounded-lg hover:bg-zinc-50 transition-colors">
                Contact sales
              </button>
            </div>
          </div>
        </div>
      </section>

      {/* Testimonials Section */}
      <section id="testimonials" className="py-24 px-6 bg-zinc-50">
        <div className="max-w-7xl mx-auto">
          <div className="text-center max-w-2xl mx-auto">
            <h2 className="text-3xl font-bold text-zinc-900">
              Loved by teams
            </h2>
            <p className="mt-4 text-lg text-zinc-500">
              See what our customers have to say.
            </p>
          </div>
          
          <div className="mt-16 grid grid-cols-1 md:grid-cols-3 gap-8">
            {/* Testimonial 1 */}
            <div className="bg-white p-6 rounded-xl border border-zinc-200">
              <div className="flex items-center gap-1 text-yellow-500">
                {[...Array(5)].map((_, i) => (
                  <svg key={i} className="w-5 h-5 fill-current" viewBox="0 0 20 20">
                    <path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z" />
                  </svg>
                ))}
              </div>
              <p className="mt-4 text-sm text-zinc-600">
                "This product has transformed how we work. Highly recommended!"
              </p>
              <div className="mt-6 flex items-center gap-3">
                <div className="w-10 h-10 bg-zinc-200 rounded-full flex items-center justify-center">
                  <span className="text-sm font-medium text-zinc-600">JD</span>
                </div>
                <div>
                  <p className="text-sm font-medium text-zinc-900">John Doe</p>
                  <p className="text-xs text-zinc-500">CEO, TechCorp</p>
                </div>
              </div>
            </div>
            
            {/* Testimonial 2 */}
            <div className="bg-white p-6 rounded-xl border border-zinc-200">
              <div className="flex items-center gap-1 text-yellow-500">
                {[...Array(5)].map((_, i) => (
                  <svg key={i} className="w-5 h-5 fill-current" viewBox="0 0 20 20">
                    <path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z" />
                  </svg>
                ))}
              </div>
              <p className="mt-4 text-sm text-zinc-600">
                "Best investment we've made this year. The ROI is incredible."
              </p>
              <div className="mt-6 flex items-center gap-3">
                <div className="w-10 h-10 bg-zinc-200 rounded-full flex items-center justify-center">
                  <span className="text-sm font-medium text-zinc-600">AS</span>
                </div>
                <div>
                  <p className="text-sm font-medium text-zinc-900">Alice Smith</p>
                  <p className="text-xs text-zinc-500">CTO, StartupXYZ</p>
                </div>
              </div>
            </div>
            
            {/* Testimonial 3 */}
            <div className="bg-white p-6 rounded-xl border border-zinc-200">
              <div className="flex items-center gap-1 text-yellow-500">
                {[...Array(5)].map((_, i) => (
                  <svg key={i} className="w-5 h-5 fill-current" viewBox="0 0 20 20">
                    <path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z" />
                  </svg>
                ))}
              </div>
              <p className="mt-4 text-sm text-zinc-600">
                "Finally, a tool that actually delivers on its promises."
              </p>
              <div className="mt-6 flex items-center gap-3">
                <div className="w-10 h-10 bg-zinc-200 rounded-full flex items-center justify-center">
                  <span className="text-sm font-medium text-zinc-600">BJ</span>
                </div>
                <div>
                  <p className="text-sm font-medium text-zinc-900">Bob Johnson</p>
                  <p className="text-xs text-zinc-500">Founder, DevShop</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* Footer */}
      <footer className="py-12 px-6 border-t border-zinc-200">
        <div className="max-w-7xl mx-auto">
          <div className="flex flex-col md:flex-row items-center justify-between gap-6">
            <div className="flex items-center gap-2">
              <div className="w-8 h-8 bg-zinc-900 rounded-lg flex items-center justify-center">
                <span className="text-white text-sm font-bold">S</span>
              </div>
              <span className="text-xl font-bold text-zinc-900">SaaS</span>
            </div>
            
            <div className="flex items-center gap-6">
              <a href="#" className="text-sm text-zinc-500 hover:text-zinc-900 transition-colors">
                Privacy
              </a>
              <a href="#" className="text-sm text-zinc-500 hover:text-zinc-900 transition-colors">
                Terms
              </a>
              <a href="#" className="text-sm text-zinc-500 hover:text-zinc-900 transition-colors">
                Contact
              </a>
            </div>
            
            <p className="text-sm text-zinc-500">
              © 2026 SaaS. All rights reserved.
            </p>
          </div>
        </div>
      </footer>
    </div>
  )
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
