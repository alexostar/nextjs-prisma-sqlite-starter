export function SiteFooter() {
  return (
    <footer>
      <div className='mb-6 mt-14 flex flex-col items-center'>
        <a
          href='https://natturuvinir.is'
          target='_blank'
          className='mb-2 text-sm text-muted-foreground'>
          &copy; {new Date().getFullYear()} Vinir íslenskrar náttúru
        </a>
        <p className='text-sm text-muted-foreground'>
          This site is under development
        </p>
      </div>
    </footer>
  );
}
