"use client";

import { useEffect, useState } from "react";
import Link from "next/link";
import ProjectCard from "./ProjectsCard";

const SKELETON_COUNT = 6;

export default function ProjectsList({ filters = {} }) {
  const [allProjects, setAllProjects] = useState([]);
  const [projects, setProjects] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  /**
   * 🔕 Disable Next.js dev overlay caused by console.error
   * (CLIENT ONLY, SAFE)
   */
  useEffect(() => {
    if (process.env.NODE_ENV === "development") {
      console.error = () => {};
    }
  }, []);

  useEffect(() => {
    const fetchProjects = async () => {
      setLoading(true);
      setError(null);

      try {
        const res = await fetch(
          `${process.env.NEXT_PUBLIC_STRAPI_URL}/api/projects?populate=coverImage`
        );

        // ❌ NO THROW
        if (!res.ok) {
          setError(
            "Impossible de charger les projets pour le moment. Veuillez réessayer plus tard."
          );
          setAllProjects([]);
          setProjects([]);
          return;
        }

        const json = await res.json();

        if (!json?.data || json.data.length === 0) {
          setAllProjects([]);
          setProjects([]);
          return;
        }

        const mapped = json.data.map((item) => {
          const attrs = item.attributes ?? item;

          const coverUrl =
            attrs.coverImage?.data?.attributes?.url ||
            attrs.coverImage?.url ||
            null;

          const image = coverUrl
            ? `${process.env.NEXT_PUBLIC_STRAPI_URL}${coverUrl}`
            : null;

          return {
            id: item.id,
            slug: attrs.slug || item.id.toString(),
            title: attrs.name || attrs.title || "Sans titre",
            details: attrs.shortDescription || "",
            location: attrs.location || "",
            status: attrs.projectStatus || "",
            typologies: [],
            finish: "",
            image,
          };
        });

        setAllProjects(mapped);
        setProjects(mapped);
      } catch {
        // ❌ NO console.error
        setError(
          "Impossible de charger les projets pour le moment. Veuillez réessayer plus tard."
        );
        setAllProjects([]);
        setProjects([]);
      } finally {
        setLoading(false);
      }
    };

    fetchProjects();
  }, []);

  useEffect(() => {
    if (!allProjects.length) {
      setProjects([]);
      return;
    }

    const normalize = (s) =>
      String(s || "")
        .normalize("NFD")
        .replace(/\p{Diacritic}/gu, "")
        .replace(/-/g, " ")
        .trim()
        .toLowerCase();

    const filtered = allProjects.filter((p) => {
      if (
        filters.location &&
        normalize(p.location) !== normalize(filters.location)
      )
        return false;

      if (
        filters.status &&
        normalize(p.status) !== normalize(filters.status)
      )
        return false;

      return true;
    });

    setProjects(filtered);
  }, [filters, allProjects]);

  return (
    <section className="mx-auto max-w-7xl px-6 py-16 sm:pt-32 pt-72">
      <div className="grid gap-6 sm:grid-cols-2 lg:grid-cols-3">
        {loading &&
          Array.from({ length: SKELETON_COUNT }).map((_, i) => (
            <ProjectCardSkeleton key={i} />
          ))}

        {!loading && error && (
          <p className="col-span-full text-center text-red-500">
            {error}
          </p>
        )}

        {!loading && !error && projects.length === 0 && (
          <p className="col-span-full text-center text-gray-500">
            Aucun projet disponible.
          </p>
        )}

        {!loading &&
          !error &&
          projects.length > 0 &&
          projects.map((project) => (
            <Link
              key={project.slug}
              href={`/projects/${project.slug}`}
              className="block"
            >
              <ProjectCard
                image={project.image}
                title={project.title}
                details={project.details}
                location={project.location}
                status={project.status}
              />
            </Link>
          ))}
      </div>
    </section>
  );
}

function ProjectCardSkeleton() {
  return (
    <div className="animate-pulse rounded-2xl border bg-white p-4 shadow-sm">
      <div className="mb-4 h-48 w-full rounded-xl bg-gray-200" />
      <div className="mb-2 h-4 w-3/4 rounded bg-gray-200" />
      <div className="mb-2 h-3 w-2/3 rounded bg-gray-200" />
      <div className="h-3 w-1/2 rounded bg-gray-200" />
    </div>
  );
}
