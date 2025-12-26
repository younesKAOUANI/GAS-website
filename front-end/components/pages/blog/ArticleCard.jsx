import Image from "next/image";
import Link from "next/link";

export default function ArticleCard({
  id,
  title,
  excerpt,
  slug,
  publishedAt,
  shares,
  authorName,
  authorAvatar,
  coverImage,
  coverAlt,
}) {
  const href = `/blog/${slug}`;

  const formattedDate = new Intl.DateTimeFormat("fr-FR", {
    day: "2-digit",
    month: "long",
    year: "numeric",
  }).format(new Date(publishedAt));

  return (
    <article className="overflow-hidden rounded-xl border border-gray-200 bg-white shadow-sm transition hover:shadow-md">
      {/* Image */}
      {coverImage && (
        <div className="relative h-56 w-full">
          <Image
            src={coverImage}
            alt={coverAlt || title}
            fill
            className="object-cover"
            sizes="(max-width: 768px) 100vw, 33vw"
          />
        </div>
      )}

      {/* Content */}
      <div className="p-5">
        {/* Title */}
        <h3 className="text-2xl font-semibold leading-snug text-gray-900">
          {title}
        </h3>

        {/* Author */}
        <div className="mt-4 flex items-center gap-3 text-sm text-gray-500">
            {authorAvatar ? (
                <Image
                    src={authorAvatar}
                    alt={authorName}
                    width={28}
                    height={28}
                    className="rounded-full"
                />
            ) : (
                <div className="w-7 h-7 rounded-full bg-gray-200 flex items-center justify-center">
                    <span className="text-gray-400 text-lg">👤</span>
                </div>
            )}

            <span className="font-medium text-gray-800">{authorName}</span>
            <span>—</span>
            <span>{formattedDate}</span>

            {shares !== undefined && (
                <>
                    <span>•</span>
                    <span className="flex items-center gap-1">🔗 {shares}</span>
                </>
            )}
        </div>

        {/* Excerpt */}
        <p className="mt-3 text-gray-600">{excerpt}</p>

        {/* CTA */}
        <Link
          href={href}
          className="mt-4 inline-block font-medium text-primary hover:underline"
        >
          Voir Article
        </Link>
      </div>

    </article>
  );
}
