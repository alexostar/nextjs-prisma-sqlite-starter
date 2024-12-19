import { MainNav } from './main-nav';
import { MobileNav } from './mobile-nav';
import { ModeToggle } from './mode-toggle';

export function SiteHeader() {
  return (
    <header className='sticky top-0 w-full border-b border-border bg-background/95 backdrop-blur supports-[backdrop-filter]:bg-background/60 flex justify-center'>
      <div className='container flex h-14 max-w-screen-xl items-center px-4'>
        <div className='flex items-center justify-start'>
          <MainNav />
        </div>
        <div className='flex items-center justify-end ml-auto'>
          <nav className='flex items-center space-x-2'>
            <ModeToggle />
            <MobileNav />
          </nav>
        </div>
      </div>
    </header>
  );
}
