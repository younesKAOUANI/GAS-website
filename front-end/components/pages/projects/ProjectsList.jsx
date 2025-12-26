"use client";

import { useEffect, useState } from "react";
import Link from "next/link";
import ProjectCard from "./ProjectsCard";

const SKELETON_COUNT = 6;

export default function ProjectsList({ filters = {} }) {
  const [allProjects, setAllProjects] = useState([]);
  const [projects, setProjects] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const fetchProjects = async () => {
      try {
        const res = await fetch(
          `${process.env.NEXT_PUBLIC_STRAPI_URL}/api/projects?populate=coverImage`
        );

        if (!res.ok) {
          throw new Error(`HTTP error! Status: ${res.status}`);
        }

        const json = await res.json();

        if (!json.data) {
          console.warn("No project data returned from Strapi", json);
          setAllProjects([]);
          setProjects([]);
          return;
        }

        const mapped = json.data.map((item) => {
          // Support both Strapi v4 shape (item.attributes) and older/alternate shapes
          const attrs = item.attributes ?? item;

          // Resolve cover image robustly across shapes
          const coverUrl =
            attrs.coverImage?.data?.attributes?.url ||
            attrs.coverImage?.url ||
            item.coverImage?.url ||
            null;
          const imageUrl = coverUrl ? `${process.env.NEXT_PUBLIC_STRAPI_URL}${coverUrl}` : null;

          // Map typologies relation (oneToMany) - can be relation objects or simple arrays
          let typologies = [];
          if (Array.isArray(attrs.typologies?.data)) {
            typologies = attrs.typologies.data
              .map((t) => t?.attributes?.slug || t?.attributes?.name || String(t?.id))
              .filter(Boolean);
          } else if (Array.isArray(attrs.typologies)) {
            typologies = attrs.typologies.map((t) => (t?.slug || t?.name || String(t))).filter(Boolean);
          }

          const name = attrs.name || attrs.title || item.name || item.title || "";
          const slugFromName = name ? name.toString().toLowerCase().replace(/\s+/g, "-") : null;

          return {
            id: item.id,
            slug: attrs.slug || item.slug || slugFromName || String(item.id),
            title: name || "Untitled",
            details: attrs.shortDescription || attrs.description || item.shortDescription || "",
            location: (attrs.location || item.location || "").toString(),
            status: (attrs.projectStatus || attrs.status || item.projectStatus || "").toString(),
            typologies,
            finish: (attrs.finish || item.finish || "").toString(),
            image: imageUrl,
          };
        });

        console.log("Fetched projects (mapped):", mapped);

        setAllProjects(mapped);
        setProjects(mapped);
      } catch (err) {
        console.error("Failed to fetch projects", err);
        setAllProjects([]);
        setProjects([]); // fallback to empty array
      } finally {
        setLoading(false);
      }
    };

    fetchProjects();
  }, []);

  // Apply client-side filters when `filters` or the fetched projects change
  useEffect(() => {
    if (!allProjects || allProjects.length === 0) {
      setProjects([]);
      return;
    }

    // Normalization helper: remove diacritics, replace `-` with space, trim and lowercase
    const normalize = (s) =>
      String(s || "")
        .normalize("NFD")
        .replace(/\p{Diacritic}/gu, "")
        .replace(/-/g, " ")
        .trim()
        .toLowerCase();

    const filtered = allProjects.filter((p) => {
      // Location exact match
      if (filters.location && normalize(p.location) !== normalize(filters.location)) return false;

      // Status: normalize both sides (allow mapping like 'en-cours' -> 'en cours')
      if (filters.status && normalize(p.status) !== normalize(filters.status)) return false;

      // Typology: project may have multiple typologies (relation)
      if (filters.typology) {
        const wanted = normalize(filters.typology);
        const hasTypology = Array.isArray(p.typologies) && p.typologies.some((t) => normalize(t) === wanted);
        if (!hasTypology) return false;
      }

      // Finish: optional attribute (not present in schema by default) — compare if present
      if (filters.finish && p.finish) {
        if (normalize(p.finish) !== normalize(filters.finish)) return false;
      } else if (filters.finish) {
        // If filter requests finish but project has no finish data, exclude
        return false;
      }

      return true;
    });

    setProjects(filtered);
  }, [filters, allProjects]);

  return (
    <section className="mx-auto max-w-7xl px-6 py-16 sm:pt-32 pt-72">
      <div className="grid gap-6 sm:grid-cols-2 lg:grid-cols-3">
        {loading
          ? Array.from({ length: SKELETON_COUNT }).map((_, i) => (
            <ProjectCardSkeleton key={i} />
          ))
          : projects.length > 0
            ? projects.map((project) => (
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
            ))
            : <p className="col-span-full text-center text-gray-500">No projects available.</p>
        }
      </div>
    </section>
  );
}

function ProjectCardSkeleton() {
  return (
    <div className="animate-pulse rounded-2xl border bg-white p-4 shadow-sm">
      {/* Image */}
      <div className="mb-4 h-48 w-full rounded-xl bg-gray-200" />

      {/* Title */}
      <div className="mb-2 h-4 w-3/4 rounded bg-gray-200" />

      {/* Details */}
      <div className="mb-2 h-3 w-2/3 rounded bg-gray-200" />

      {/* Location */}
      <div className="h-3 w-1/2 rounded bg-gray-200" />
    </div>
  );
}
