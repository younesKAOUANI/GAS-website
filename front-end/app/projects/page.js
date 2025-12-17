import Link from "next/link";

const sample = [
  { slug: "project-alpha", title: "Project Alpha" },
  { slug: "project-beta", title: "Project Beta" },
];

export default function ProjectsPage() {
  return (
    <section>
      <h1 className="text-3xl font-bold">Projects</h1>
      <p className="mt-2 text-zinc-600 dark:text-zinc-400">A list of projects.</p>
      <ul className="mt-4 space-y-2">
        {sample.map((p) => (
          <li key={p.slug}>
            <Link href={`/projects/${p.slug}`} className="text-indigo-600 hover:underline">
              {p.title}
            </Link>
          </li>
        ))}
      </ul>
    </section>
  );
}
