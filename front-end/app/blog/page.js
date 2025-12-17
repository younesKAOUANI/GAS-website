import Link from "next/link";

const posts = [
  { slug: "welcome", title: "Welcome" },
  { slug: "changelog", title: "Changelog" },
];

export default function BlogPage() {
  return (
    <section>
      <h1 className="text-3xl font-bold">Blog</h1>
      <p className="mt-2 text-zinc-600 dark:text-zinc-400">Latest posts.</p>
      <ul className="mt-4 space-y-2">
        {posts.map((p) => (
          <li key={p.slug}>
            <Link href={`/blog/${p.slug}`} className="text-indigo-600 hover:underline">
              {p.title}
            </Link>
          </li>
        ))}
      </ul>
    </section>
  );
}
