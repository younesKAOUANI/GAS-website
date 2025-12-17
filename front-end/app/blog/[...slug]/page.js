import { notFound } from "next/navigation";

export default function BlogPostPage({ params }) {
  const slugArray = params.slug || [];
  const slug = Array.isArray(slugArray) ? slugArray.join("/") : slugArray;

  // Placeholder posts
  const posts = {
    welcome: { title: "Welcome", body: "Welcome to our blog." },
    changelog: { title: "Changelog", body: "Project updates and changelog." },
  };

  const post = posts[slug];
  if (!post) return notFound();

  return (
    <article>
      <h1 className="text-3xl font-bold">{post.title}</h1>
      <p className="mt-4 text-zinc-600 dark:text-zinc-400">{post.body}</p>
    </article>
  );
}
