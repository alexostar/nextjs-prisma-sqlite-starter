'use client';

import Link from 'next/link';
import { usePathname } from 'next/navigation';
import { cn } from '@/lib/utils';

export function MainNav() {
  const pathname = usePathname();
  return (
    <nav className='flex items-center space-x-4 lg:space-x-6'>
      <Link href='/' className='mr-6 font-bold tracking-widest'>
        <p className='text-primary'>
          CASABRAVA <span className='text-foreground'>DEMO</span>
        </p>
      </Link>
      <Link
        href='/kort/verndad'
        className={cn(
          'text-sm font-medium transition-colors hover:text-primary ',
          pathname === '/demo/login' ? 'text-foreground' : 'text-foreground/60 '
        )}>
        Route 1
      </Link>
      <Link
        href='/demo/typography'
        className={cn(
          'text-sm font-medium transition-colors hover:text-primary ',
          pathname === '/demo/typography'
            ? 'text-foreground'
            : 'text-foreground/60 '
        )}>
        Route 2
      </Link>
    </nav>
  );
}
