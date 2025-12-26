import ArticleCard from "./ArticleCard";

export default function ArticlesListSection({ articles = [] }) {
  if (!articles.length) return null;

  const latestArticles = articles.slice(0, 2);
  const otherArticles = articles.slice(2);

  return (
    <section className="mx-auto max-w-6xl px-6 py-16 pt-36 space-y-16">
      
      {/* Nouvelle */}
      <div>
        <h2 className="mb-8 text-2xl font-bold">
          Nouvelle
        </h2>

        <div className="grid gap-8 md:grid-cols-2">
{latestArticles.map((article) => (
  <ArticleCard
    key={article.id}
    id={article.id}
    title={article.title}
    excerpt={article.excerpt}
    slug={article.slug}
    publishedAt={article.publishedAt}
    shares={article.shares}
    authorName={article.author.name}
    authorAvatar={article.author.avatar}
    coverImage={article.coverImage.url}
    coverAlt={article.coverImage.alt}
  />
))}

        </div>
      </div>

      {/* L’Actualité du Groupe */}
      {otherArticles.length > 0 && (
        <div>
          <h2 className="mb-8 text-2xl font-bold">
            L’Actualité du Groupe
          </h2>

          <div className="grid gap-8 md:grid-cols-2">
{otherArticles.map((article) => (
  <ArticleCard
    key={article.id}
    id={article.id}
    title={article.title}
    excerpt={article.excerpt}
    slug={article.slug}
    publishedAt={article.publishedAt}
    shares={article.shares}
    authorName={article.author.name}
    authorAvatar={article.author.avatar}
    coverImage={article.coverImage.url}
    coverAlt={article.coverImage.alt}
  />
))}

          </div>
        </div>
      )}
    </section>
  );
}
