import React from "react";
import Link from "next/link";

export default function PostPreview({ post }) {
  return (
    <article className="rounded-lg border p-4">
      <h3 className="font-semibold">
        <Link href={`/blog/${post.slug}`} className="text-indigo-600 hover:underline">{post.title}</Link>
      </h3>
      <p className="text-sm text-zinc-600">{post.excerpt}</p>
    </article>
  );
}
