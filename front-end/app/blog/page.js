import ArticlesListSection from "@/components/pages/blog/ArticlesListSection";
import NewsletterBanner from "@/components/pages/blog/NewsletterBanner";
import { generateMetadata as generateMeta, generateBreadcrumbSchema } from '@/utils/metadata';

export const metadata = generateMeta({
  title: "L'Actu du Groupe",
  description: "Suivez l'actualité du Groupe Ahmed Soltan : conseils immobiliers, nouveaux projets, tendances du marché en Algérie et actualités du secteur.",
  path: '/blog',
  keywords: [
    'actualité immobilière Algérie',
    'blog immobilier',
    'conseils achat appartement',
    'tendances immobilier Alger',
    'GAS actualités',
    'articles immobilier',
  ],
  ogImage: '/assets/og-blog.jpg',
  ogImageAlt: "L'actualité du Groupe Ahmed Soltan",
  structuredData: generateBreadcrumbSchema([
    { name: 'Accueil', path: '/' },
    { name: 'Blog', path: '/blog' },
  ]),
});

async function getArticles() {
  const res = await fetch(
    `${process.env.NEXT_PUBLIC_STRAPI_URL}/api/articles?populate=*`,
    {
      next: { revalidate: 3600 }, // ISR: revalidate every hour
    }
  );

  if (!res.ok) {
    console.error("Failed to fetch articles:", res.status, res.statusText);
    throw new Error("Failed to fetch articles");
  }

  const articles = await res.json();
  console.log("Fetched articles data:", articles);
  return articles.data?.map((item) => ({
    id: item.id,
    title: item.title,
    excerpt: item.description,
    slug: item.slug,
    publishedAt: item.publishedAt,
    shares: item.shares,

    author: {
      name: item.author?.name,
      avatar:
        item.author?.data?.avatar?.data?.url,
    },

    coverImage: {
      url: item.cover?.url,
      alt: item.coverAlt || item.title,
    },
  }));
}

export default async function BlogPage() {
  let articles = [];
  let error = null;
  try {
    articles = await getArticles();
    if (!articles || !Array.isArray(articles)) {
      throw new Error('Aucun article trouvé.');
    }
  } catch (e) {
    error = e.message || 'Erreur lors du chargement des articles.';
  }

  if (error) {
    return (
      <div className="container min-h-[600px] flex items-center justify-center mx-auto px-4 py-24 pt-36">
        <div className="text-center text-red-600 bg-red-50 border border-red-200 rounded p-6">
          Erreur lors du chargement des articles.
        </div>
      </div>
    );
  }

  return (
    <>
      <NewsletterBanner backgroundImage="/assets/articles-page-bg.jpg" />
      <ArticlesListSection articles={articles} />
    </>
  );
}
