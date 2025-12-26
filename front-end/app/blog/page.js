import ArticlesListSection from "@/components/pages/blog/ArticlesListSection";
import NewsletterBanner from "@/components/pages/blog/NewsletterBanner";

async function getArticles() {
  const res = await fetch(
    `${process.env.NEXT_PUBLIC_STRAPI_URL}/api/articles?populate=*`,
    {
      next: { revalidate: 3600 }, // ISR: revalidate every hour
    }
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
  const articles = await getArticles();

  return (
    <>
      <NewsletterBanner backgroundImage="/assets/articles-page-bg.jpg" />
      <ArticlesListSection articles={articles} />
    </>
  );
}
