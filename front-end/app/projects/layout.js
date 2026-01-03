import { generateMetadata as generateMeta, generateBreadcrumbSchema } from '@/utils/metadata';

export const metadata = generateMeta({
  title: 'Nos Projets Immobiliers',
  description: 'Explorez nos projets immobiliers à Alger : Draria, Bordj El Kiffan, Bordj El Bahri, Kouba. Appartements neufs, différentes finitions et typologies disponibles.',
  path: '/projects',
  keywords: [
    'projets immobiliers Alger',
    'résidences neuves Algérie',
    'appartements Draria',
    'logements Bordj El Kiffan',
    'immobilier Kouba',
    'acheter appartement Alger',
    'promoteur immobilier projets',
  ],
  ogImage: '/assets/og-projects.jpg',
  ogImageAlt: 'Projets immobiliers du Groupe Ahmed Soltan',
  structuredData: generateBreadcrumbSchema([
    { name: 'Accueil', path: '/' },
    { name: 'Projets', path: '/projects' },
  ]),
});

export default function ProjectsLayout({ children }) {
  return children;
}
