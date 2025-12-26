import Link from "next/link";

export default function NewsCard({ item }) {
  return (
    <div className="overflow-hidden rounded-2xl border bg-white shadow-sm transition hover:shadow-md">
      <img src={item.coverImage.url} alt={item.title} className="h-48 w-full object-cover" />

      <div className="p-5">
        <h3 className="font-semibold text-2xl text-gray-900">{item.title}</h3>
        <p className="mt-2 text-sm text-gray-600">{item.description}</p>

        <Link href={`/blog/${item.slug}`} className="block text-center mt-4 rounded-md w-full border border-primary px-4 py-2 text-lg text-primary transition hover:bg-primary hover:text-white">
          Lire l’article
        </Link>
      </div>
    </div>
  );
}
