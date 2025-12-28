// lib/metadata.js

/**
 * Generate comprehensive SEO metadata for Next.js pages
 * @param {Object} options - Metadata configuration options
 * @returns {Object} Next.js metadata object
 */
export function generateMetadata({
  // Basic metadata
  title,
  description,
  keywords = [],
  
  // Page-specific
  path = '/',
  locale = 'fr',
  alternateLocales = ['en', 'ar'],
  
  // OpenGraph
  ogType = 'website',
  ogImage,
  ogImageAlt,
  
  // Twitter
  twitterCard = 'summary_large_image',
  twitterImage,
  
  // Additional
  author = 'Groupe Ahmed Soltan',
  canonical,
  noindex = false,
  nofollow = false,
  
  // Structured data
  structuredData,
} = {}) {
  
  const siteUrl = process.env.NEXT_PUBLIC_SITE_URL || 'https://groupeahmedsoltan.com';
  const siteName = 'Groupe Ahmed Soltan';
  const defaultDescription = 'Groupe Ahmed Soltan - Promoteur immobilier de confiance en Algérie. Découvrez nos résidences de qualité à Alger, Draria, Burj Al-Kifan, et plus.';
  const defaultImage = `${siteUrl}/assets/og-image.jpg`;
  
  const fullTitle = title ? `${title} | ${siteName}` : siteName;
  const finalDescription = description || defaultDescription;
  const canonicalUrl = canonical || `${siteUrl}${path}`;
  const finalOgImage = ogImage || defaultImage;
  const finalTwitterImage = twitterImage || finalOgImage;
  
  // Build robots string
  const robotsDirectives = [];
  if (noindex) robotsDirectives.push('noindex');
  if (nofollow) robotsDirectives.push('nofollow');
  const robots = robotsDirectives.length > 0 
    ? robotsDirectives.join(', ')
    : 'index, follow, max-image-preview:large, max-snippet:-1, max-video-preview:-1';
  
  // Generate alternate language URLs
  const alternates = {
    canonical: canonicalUrl,
    languages: {}
  };
  
  alternateLocales.forEach(loc => {
    alternates.languages[loc] = `${siteUrl}/${loc}${path}`;
  });
  
  const metadata = {
    // Basic metadata
    title: fullTitle,
    description: finalDescription,
    keywords: keywords.length > 0 ? keywords.join(', ') : undefined,
    authors: [{ name: author }],
    creator: author,
    publisher: siteName,
    
    // Language and locale
    alternates,
    
    // Robots
    robots,
    
    // OpenGraph
    openGraph: {
      type: ogType,
      locale: locale === 'fr' ? 'fr_FR' : locale === 'ar' ? 'ar_DZ' : 'en_US',
      url: canonicalUrl,
      title: fullTitle,
      description: finalDescription,
      siteName,
      images: [
        {
          url: finalOgImage,
          width: 1200,
          height: 630,
          alt: ogImageAlt || fullTitle,
        },
      ],
    },
    
    // Twitter
    twitter: {
      card: twitterCard,
      title: fullTitle,
      description: finalDescription,
      images: [finalTwitterImage],
      creator: '@groupeahmedsoltan',
      site: '@groupeahmedsoltan',
    },
    
    // Additional metadata
    metadataBase: new URL(siteUrl),
    
    // Verification (add your actual verification codes)
    verification: {
      google: process.env.NEXT_PUBLIC_GOOGLE_SITE_VERIFICATION,
      yandex: process.env.NEXT_PUBLIC_YANDEX_VERIFICATION,
      // other: {
      //   'facebook-domain-verification': 'your-code',
      // }
    },
    
    // Icons (match files present in public/)
    icons: {
      icon: [
        { url: '/favicon.ico' },
        { url: '/favicon-96x96.png', sizes: '96x96', type: 'image/png' },
        { url: '/favicon.svg', type: 'image/svg+xml' },
      ],
      apple: [
        { url: '/apple-touch-icon.png', sizes: '180x180', type: 'image/png' },
      ],
    },
    
    // Manifest
    manifest: '/site.webmanifest',
    
    // App links (for mobile apps if applicable)
    // appLinks: {
    //   ios: {
    //     url: 'https://apps.apple.com/app/your-app',
    //     app_store_id: 'your-app-id',
    //   },
    //   android: {
    //     package: 'com.yourcompany.app',
    //     app_name: 'Your App Name',
    //   },
    // },
  };
  
  // Add structured data if provided
  if (structuredData) {
    metadata.other = {
      'script:ld+json': JSON.stringify(structuredData),
    };
  }
  
  return metadata;
}

/**
 * Generate structured data (JSON-LD) for organization
 */
export function generateOrganizationSchema() {
  return {
    '@context': 'https://schema.org',
    '@type': 'RealEstateAgent',
    name: 'Groupe Ahmed Soltan',
    alternateName: 'GAS',
    url: process.env.NEXT_PUBLIC_SITE_URL || 'https://groupeahmedsoltan.com',
    logo: `${process.env.NEXT_PUBLIC_SITE_URL || 'https://groupeahmedsoltan.com'}/assets/logo.png`,
    description: 'Promoteur immobilier de confiance en Algérie, spécialisé dans les résidences de qualité.',
    address: {
      '@type': 'PostalAddress',
      streetAddress: 'Ben Redouane, Bordj El Kiffan',
      addressLocality: 'Alger',
      addressRegion: 'Alger',
      addressCountry: 'DZ',
    },
    contactPoint: {
      '@type': 'ContactPoint',
      telephone: '+213-797-46-37-22',
      contactType: 'customer service',
      email: 'contact@groupeahmedsoltan.com',
      availableLanguage: ['French', 'Arabic', 'English'],
    },
    sameAs: [
      'https://www.facebook.com/groupeahmedsoltan',
      'https://www.instagram.com/groupeahmedsoltan',
      'https://www.linkedin.com/company/groupeahmedsoltan',
    ],
    areaServed: [
      {
        '@type': 'City',
        name: 'Draria',
      },
      {
        '@type': 'City',
        name: 'Burj Al-Kifan',
      },
      {
        '@type': 'City',
        name: 'Burj Al Bahri',
      },
      {
        '@type': 'City',
        name: 'Kouba',
      },
    ],
  };
}

/**
 * Generate breadcrumb structured data
 */
export function generateBreadcrumbSchema(items) {
  const siteUrl = process.env.NEXT_PUBLIC_SITE_URL || 'https://groupeahmedsoltan.com';
  
  return {
    '@context': 'https://schema.org',
    '@type': 'BreadcrumbList',
    itemListElement: items.map((item, index) => ({
      '@type': 'ListItem',
      position: index + 1,
      name: item.name,
      item: `${siteUrl}${item.path}`,
    })),
  };
}

/**
 * Generate real estate listing structured data
 */
export function generateRealEstateSchema({
  name,
  description,
  image,
  address,
  price,
  priceCurrency = 'DZD',
  numberOfRooms,
  floorSize,
  url,
}) {
  const siteUrl = process.env.NEXT_PUBLIC_SITE_URL || 'https://groupeahmedsoltan.com';
  
  return {
    '@context': 'https://schema.org',
    '@type': 'Apartment',
    name,
    description,
    image: `${siteUrl}${image}`,
    address: {
      '@type': 'PostalAddress',
      streetAddress: address.street,
      addressLocality: address.city,
      addressRegion: address.region,
      addressCountry: 'DZ',
    },
    offers: {
      '@type': 'Offer',
      price,
      priceCurrency,
      availability: 'https://schema.org/InStock',
      url: `${siteUrl}${url}`,
    },
    numberOfRooms,
    floorSize: {
      '@type': 'QuantitativeValue',
      value: floorSize,
      unitCode: 'MTK', // Square meters
    },
  };
}

/**
 * Default metadata for the root layout
 */
export const defaultMetadata = generateMetadata({
  title: 'Promoteur Immobilier en Algérie',
  description: 'Groupe Ahmed Soltan - Promoteur immobilier de confiance en Algérie. Découvrez nos résidences de qualité à Alger, Draria, Burj Al-Kifan, Burj Al Bahri, et Kouba. Trouvez votre futur logement.',
  keywords: [
    'immobilier Algérie',
    'promoteur immobilier',
    'résidence Alger',
    'appartement Alger',
    'logement neuf Algérie',
    'Groupe Ahmed Soltan',
    'GAS immobilier',
    'Draria',
    'Burj Al-Kifan',
    'Kouba',
    'promotion immobilière',
  ],
  structuredData: generateOrganizationSchema(),
});