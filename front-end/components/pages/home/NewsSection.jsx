import NewsCard from "@/components/main/ui/NewsCard";

async function getArticles() {
  const res = await fetch(
    `${process.env.NEXT_PUBLIC_STRAPI_URL}/api/articles?populate=*`,
    { next: { revalidate: 3600 } } // ISR: revalidate every hour
  );
  if (!res.ok) {
    throw new Error("Failed to fetch articles");
  }
  const articles = await res.json();
  return articles.data?.map((item) => ({
    id: item.id,
    title: item.title,
    excerpt: item.excerpt,
    slug: item.slug,
    publishedAt: item.publishedAt,
    shares: item.shares,
    author: {
      name: item.author?.name,
      avatar: item.author?.data?.avatar?.data?.url,
    },
    coverImage: {
      url: item.cover?.url,
      alt: item.coverAlt || item.title,
    },
  }));
}

export async function NewsSection() {
  const news = await getArticles();
  const latest = (news || [])
    .filter((n) => n?.publishedAt)
    .sort((a, b) => new Date(b.publishedAt) - new Date(a.publishedAt))
    .slice(0, 3);
  return (
    <section className="py-16 px-4 max-w-6xl mx-auto">
      <h2 className="text-4xl font-semibold text-primary"> L’Actu du Groupe </h2>
      <p className="mt-2 text-gray-600"> Suivez nos dernières nouvelles </p>
      <div className="mt-8 grid gap-6 md:grid-cols-3">
        {latest.map((item) => (
          <NewsCard key={item.id} item={item} />
        ))}
      </div>
    </section>
  );
}