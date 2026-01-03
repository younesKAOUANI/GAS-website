import AboutBanner from "@/components/pages/about/AboutBanner";
import History from "@/components/pages/about/HistorySection";
import TeamSection from "@/components/pages/about/TeamSection";
import VisionSection from "@/components/pages/about/VisionSection";
import { generateMetadata as generateMeta, generateBreadcrumbSchema } from '@/utils/metadata';

export const metadata = generateMeta({
  title: 'À Propos de Nous',
  description: 'Découvrez l\'histoire et les valeurs du Groupe Ahmed Soltan, promoteur immobilier de confiance depuis des années. Notre mission : offrir des logements de qualité en Algérie.',
  path: '/about',
  keywords: [
    'Groupe Ahmed Soltan',
    'histoire GAS',
    'promoteur immobilier Algérie',
    'valeurs immobilières',
    'entreprise immobilière Alger',
    'qui sommes-nous',
  ],
  ogImage: '/assets/og-about.jpg',
  ogImageAlt: 'L\'équipe du Groupe Ahmed Soltan',
  structuredData: generateBreadcrumbSchema([
    { name: 'Accueil', path: '/' },
    { name: 'À Propos', path: '/about' },
  ]),
});

export default async function AboutPage() {

  	const res = await fetch(`${process.env.NEXT_PUBLIC_STRAPI_URL}/api/about?populate=*`, {
		next: { revalidate: 3600 }, // revalidate every hour
	});
	const images = await res.json();

  return (
    <div className="bg-white">
      <AboutBanner image={
        images.data?.ImageBanner?.formats?.large?.url
          ? (images.data.ImageBanner.formats.large.url.startsWith('http')
              ? images.data.ImageBanner.formats.large.url
              : `${process.env.NEXT_PUBLIC_STRAPI_URL}${images.data.ImageBanner.formats.large.url}`)
          : "/assets/backup/aboutBanner.jpg"
      } />
      <History imageSrc={
        images.data?.ImageHistoire?.formats?.large?.url
          ? (images.data.ImageHistoire.formats.large.url.startsWith('http')
              ? images.data.ImageHistoire.formats.large.url
              : `${process.env.NEXT_PUBLIC_STRAPI_URL}${images.data.ImageHistoire.formats.large.url}`)
          : "/assets/backup/aboutHistory.png"
      } />
      <TeamSection />
      <VisionSection mapImage={
        images.data?.ImageVision?.formats?.large?.url
          ? (images.data.ImageVision.formats.large.url.startsWith('http')
              ? images.data.ImageVision.formats.large.url
              : `${process.env.NEXT_PUBLIC_STRAPI_URL}${images.data.ImageVision.formats.large.url}`)
          : "/assets/backup/aboutMap.png"
      } />
    </div>
  );
}