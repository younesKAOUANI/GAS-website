import { notFound } from "next/navigation";

export default async function ProjectPage({ params }) {
  const { slug } = params;

  // Placeholder: in a real app, fetch project data by slug here
  const projects = {
    "project-alpha": { title: "Project Alpha", body: "Details about Project Alpha." },
    "project-beta": { title: "Project Beta", body: "Details about Project Beta." },
  };

  const project = projects[slug];
  if (!project) return notFound();

  return (
    <article>
      <h1 className="text-3xl font-bold">{project.title}</h1>
      <p className="mt-4 text-zinc-600 dark:text-zinc-400">{project.body}</p>
    </article>
  );
}
