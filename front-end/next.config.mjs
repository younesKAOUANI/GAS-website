export default {
  async rewrites() {
    return [
      {
        source: '/uploads/:path*',
        destination: 'http://127.0.0.1:1337/uploads/:path*', // proxy to Strapi
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
        protocol: 'http',
        hostname: 'pharmapedia-dz.com',
        port: '1337',
        pathname: '/uploads/**',
      },
    ],
  },
};
