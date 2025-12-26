"use client";

import ProjectsBanner from "@/components/pages/projects/ProjectsBanner";
import ProjectsList from "@/components/pages/projects/ProjectsList";
import { useState } from "react";


export default function ProjectsPage() {
  const [filters, setFilters] = useState({
    location: "",
    status: "",
    typology: "",
    finish: "",
  });

  const [appliedFilters, setAppliedFilters] = useState(filters);

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
