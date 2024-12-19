This is a [Next.js](https://nextjs.org) project set up with **pnpm create next-app@latest (15.1)**

## Shadcn

- pnpm dlx shadcn@latest init
- pnpm dlx shadcn@latest add card (and other components)
  **[Dark mode](https://ui.shadcn.com/docs/dark-mode/next)**

- pnpm add next-themes
- Create the theme provider and import into the root layout

## Supabase

[Setting up Server-Side Auth for Next.js](https://supabase.com/docs/guides/auth/server-side/nextjs)

## More setup

- Add the loccation of images to `next.config.ts`
- Add the @tailwindcss/typography plugin and modify the tailwind config

## Getting Started

```bash
pnpm dev
pnpm build
pnpm start
```

This project uses [`next/font`](https://nextjs.org/docs/app/building-your-application/optimizing/fonts) to automatically optimize and load [Geist](https://vercel.com/font), a new font family for Vercel.
