import ContactForm from "@/components/pages/contact/ContactForm";
import ContactHero from "@/components/pages/contact/ContactHero";
import ContactInfo from "@/components/pages/contact/ContactInfo";
import { generateMetadata as generateMeta, generateBreadcrumbSchema } from '@/utils/metadata';

export const metadata = generateMeta({
  title: 'Contactez-Nous',
  description: 'Contactez le Groupe Ahmed Soltan pour tous vos besoins immobiliers. Nos experts sont à votre écoute. Adresse : Ben Redouane, Bordj El Kiffan, Alger. Tél : +213(0)797 46 37 22',
  path: '/contact',
  keywords: [
    'contact GAS',
    'contacter Groupe Ahmed Soltan',
    'rendez-vous immobilier',
    'agence immobilière Alger',
    'contact promoteur Algérie',
    'demande information logement',
  ],
  ogImage: '/assets/og-contact.jpg',
  ogImageAlt: 'Contactez le Groupe Ahmed Soltan',
  structuredData: generateBreadcrumbSchema([
    { name: 'Accueil', path: '/' },
    { name: 'Contact', path: '/contact' },
  ]),
});

export default async function ContactPage() {
    	const res = await fetch(`${process.env.NEXT_PUBLIC_STRAPI_URL}/api/faqs?populate=*`, {
		next: { revalidate: 3600 }, // revalidate every hour
	});
	const faqs = await res.json();
  console.log("About page images data:", faqs);
  return (
<>
<ContactHero />
<ContactForm/>
<ContactInfo faqs={faqs.data} />
</>
  );
}