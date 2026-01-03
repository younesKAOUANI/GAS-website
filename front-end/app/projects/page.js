"use client";

import ProjectsBanner from "@/components/pages/projects/ProjectsBanner";
import ProjectsList from "@/components/pages/projects/ProjectsList";
import { Suspense, useEffect, useState } from "react";
import { useSearchParams } from "next/navigation";

export const dynamic = "force-dynamic";


function ProjectsPageContent() {
  const searchParams = useSearchParams();
  const [filters, setFilters] = useState({
    location: "",
    status: "",
    typology: "",
    finish: "",
  });

  const [appliedFilters, setAppliedFilters] = useState(filters);

  useEffect(() => {
    const locationFromUrl = searchParams.get("location") || "";

    if (!locationFromUrl) return;

    const nextFilters = {
      location: locationFromUrl,
      status: "",
      typology: "",
      finish: "",
    };

    setFilters(nextFilters);
    setAppliedFilters(nextFilters);
  }, [searchParams]);

  return (
    <>
      <ProjectsBanner
        filters={filters}
        setFilters={setFilters}
        onSearch={() => setAppliedFilters(filters)}
        onReset={() => {
          const empty = { location: "", status: "", typology: "", finish: "" };
          setFilters(empty);
          setAppliedFilters(empty);
        }}
      />

      <ProjectsList filters={appliedFilters} />
    </>
  );
}

export default function ProjectsPage() {
  return (
    <Suspense fallback={<div className="min-h-[50vh] flex items-center justify-center">Chargement...</div>}>
      <ProjectsPageContent />
    </Suspense>
  );
}
