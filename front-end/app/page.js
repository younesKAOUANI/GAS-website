import StoriesWrapper from "@/components/main/StoriesWrapper";
import ChoixFinitions from "@/components/pages/home/ChoixFinitions";
import HomeHero from "@/components/pages/home/Hero";
import { NewsSection } from "@/components/pages/home/NewsSection";
import OpportunitiesSection from "@/components/pages/home/Opportunities";
import TestimonialsSection from "@/components/pages/home/Testimonials";
import WhyGAS from "@/components/pages/home/WhyGAS";
import { generateMetadata as generateMeta, generateOrganizationSchema } from '@/utils/metadata';

export const metadata = generateMeta({
  title: 'Promoteur Immobilier en Algérie',
  description: 'Groupe Ahmed Soltan - Promoteur immobilier de confiance en Algérie. Découvrez nos résidences de qualité à Alger, Draria, Bordj El Kiffan, Bordj El Bahri, et Kouba. Trouvez votre futur logement.',
  path: '/',
  keywords: [
    'immobilier Algérie',
    'promoteur immobilier Alger',
    'résidence Alger',
    'appartement Alger',
    'logement neuf Algérie',
    'Groupe Ahmed Soltan',
    'GAS immobilier',
    'promotion immobilière Algérie',
  ],
  ogImage: '/assets/og-home.jpg',
  ogImageAlt: 'Groupe Ahmed Soltan - Promoteur Immobilier en Algérie',
  structuredData: generateOrganizationSchema(),
});

export default async function Home() {
  	const res = await fetch(
		`${process.env.NEXT_PUBLIC_STRAPI_URL}/api/opportunity-moments?populate=*`,
		{ next: { revalidate: 3600 } }
	);

    const resHero = await fetch(`${process.env.NEXT_PUBLIC_STRAPI_URL}/api/hero-media?populate=*`, {
		next: { revalidate: 3600 }, // revalidate every hour
	});
  
const heroCarousel = await resHero.json();

// Map media to specific attributes
let mappedHeroCarousel = [];
if (resHero.ok) {
  mappedHeroCarousel = [
    heroCarousel.data.firstItem || null,
    heroCarousel.data.secondItem || null,
    heroCarousel.data.thirdItem || null,
  ].filter(Boolean); // remove nulls
} else {
  // Fallback: use static or empty array
  mappedHeroCarousel = [];
}
	const opportunities = await res.json();

  return (
    <main className="relative">
                     <div className="fixed md:top-32 top-3 left-6 z-40">
                <StoriesWrapper />
              </div>
      <HomeHero media={mappedHeroCarousel} />
      <ChoixFinitions />
      <WhyGAS />  
      <TestimonialsSection />
      {opportunities &&
      <OpportunitiesSection opportunities={opportunities.data} />
      }
      <NewsSection/>
    </main>
  );
}