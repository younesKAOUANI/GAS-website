export default {
  async rewrites() {
    return [
      {
        source: '/uploads/:path*',
        destination: 'https://admin.groupahmedsoltan.com/uploads/:path*', // proxy to Strapi
      },
    ];
  },
  images: {
    remotePatterns: [
      {
        protocol: 'http',
        hostname: '127.0.0.1',
        port: '1337',
        pathname: '/uploads/**',
      },
      {
        protocol: 'https',
        hostname: 'admin.groupahmedsoltan.com',
        pathname: '/uploads/**',
      },
    ],
  },
};
