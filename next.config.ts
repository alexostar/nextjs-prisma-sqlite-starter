import type { NextConfig } from 'next';

const nextConfig: NextConfig = {
  /* config options here */
  output: 'standalone', // Needed for docker
  images: {
    remotePatterns: [
      {
        protocol: 'https',
        hostname: 'hlkyrtglhpmrhzudaqzu.supabase.co',
      },
    ],
  },
};

export default nextConfig;
