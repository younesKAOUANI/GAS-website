// app/blog/[...slug]/page.js
import { notFound } from 'next/navigation';
import { marked } from "marked";
import './article.css';

marked.setOptions({
  gfm: true,
  breaks: true,
  headerIds: true,
  sanitize: false,
});

async function getSlug(params) {
  const resolvedParams = await params;
  const slug = resolvedParams.slug;
  if (!slug) return null;
  return Array.isArray(slug) ? slug.join('/') : String(slug);
}

async function fetchArticle(slug) {
  const url = `${process.env.NEXT_PUBLIC_STRAPI_URL}/api/articles?filters[slug][$eq]=${encodeURIComponent(slug)}&populate[blocks][populate]=*`;

  const res = await fetch(url, { next: { revalidate: 60 } });

  if (!res.ok) {
    console.error('Fetch failed:', res.status, res.statusText);
    return null;
  }

  const json = await res.json();
  console.log('Full article data:', JSON.stringify(json.data[0], null, 2));
  if (!json?.data?.length) return null;

  return json.data[0];
}

export async function generateMetadata({ params }) {
  const slug = await getSlug(params);
  if (!slug) return {};

  const article = await fetchArticle(slug);
  if (!article) return {};

  return {
    title: article.title,
    description: article.description ?? '',
    openGraph: {
      title: article.title,
      description: article.description ?? '',
      type: 'article',
    },
  };
}

export default async function ArticlePage({ params }) {
  const slug = await getSlug(params);
  if (!slug) notFound();

  const article = await fetchArticle(slug);
  if (!article) notFound();

  // Get cover image URL (Strapi v4/v5 compatible)
  let coverUrl = '';
  let coverAlt = article.title;
  if (article.cover) {
    if (article.cover.url) {
      coverUrl = article.cover.url.startsWith('http')
        ? article.cover.url
        : `${process.env.NEXT_PUBLIC_STRAPI_URL}${article.cover.url}`;
      coverAlt = article.cover.alternativeText || article.title;
    } else if (article.cover.data && article.cover.data.attributes?.url) {
      coverUrl = article.cover.data.attributes.url.startsWith('http')
        ? article.cover.data.attributes.url
        : `${process.env.NEXT_PUBLIC_STRAPI_URL}${article.cover.data.attributes.url}`;
      coverAlt = article.cover.data.attributes.alternativeText || article.title;
    }
  }

  return (
    <main className="container mx-auto p-4 pt-36">
      {coverUrl && (
        <div className="w-full aspect-[4/3] mb-8 rounded-xl overflow-hidden bg-gray-100">
          <img
            src={coverUrl}
            alt={coverAlt}
            className="w-full h-full object-cover"
            loading="eager"
          />
        </div>
      )}
      <h1 className="text-3xl font-bold mb-4">{article.title}</h1>
      <p className="text-gray-500 mb-6">
        {new Date(article.publishedAt).toLocaleDateString()}
      </p>

      <article className="max-w-none space-y-6">
        {article.blocks?.map((block, index) => {
          const key = `${block.__component}-${block.id || index}`;

          if (block.__component === "shared.rich-text") {
            const html = marked.parse(block.body || '');
            return (
              <div 
                key={key} 
                className="markdown-content"
                dangerouslySetInnerHTML={{ __html: html }} 
              />
            );
          }

          if (block.__component === "shared.quote") {
            return (
              <blockquote key={key} className="border-l-4 border-blue-500 pl-4 py-2 italic text-gray-700 my-6 bg-blue-50">
                {block.title && <strong className="block mb-2 text-blue-900 not-italic">{block.title}</strong>}
                <p className="mb-0">{block.body}</p>
              </blockquote>
            );
          }

          if (block.__component === "shared.slider") {
            // Try multiple possible paths for images
            const images = block.files?.data || 
                          block.files || 
                          block.images?.data || 
                          block.images || 
                          [];
            
            return (
              <div key={key} className="my-8">
                {images.length > 0 ? (
                  <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
                    {images.map((img, i) => {
                      // Handle both Strapi v4 format (with attributes) and direct format
                      const imgData = img.attributes || img;
                      const imageUrl = imgData.url?.startsWith('http') 
                        ? imgData.url 
                        : `${process.env.NEXT_PUBLIC_STRAPI_URL}${imgData.url}`;
                      
                      return (
                        <img
                          key={i}
                          src={imageUrl}
                          alt={imgData.alternativeText || `Slider image ${i + 1}`}
                          className="w-full h-64 object-cover rounded shadow-lg"
                        />
                      );
                    })}
                  </div>
                ) : (
                  <div className="text-center text-gray-500 border-2 border-dashed border-gray-300 rounded p-8">
                    No images in slider
                  </div>
                )}
              </div>
            );
          }

          return null;
        })}
      </article>
    </main>
  );
}