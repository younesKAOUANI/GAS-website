import ProjectDetailsBanner from "@/components/pages/projects/ProjectDetailsBanner";
import ProjectForm from "@/components/pages/projects/ProjectForm";
import ProjectGallery from "@/components/pages/projects/ProjectGallery";
import ProjectPresentation from "@/components/pages/projects/ProjectPresentation";
import ProjectTopologies from "@/components/pages/projects/ProjectTopologies";
import { getProjectFullDetails } from "@/services/projects.service";
import { notFound } from "next/navigation";

const BASE_URL = process.env.NEXT_PUBLIC_STRAPI_URL || "http://127.0.0.1:1337";


export default async function ProjectPage({ params }) {
  const { slug } = await params;
  const project = await getProjectFullDetails(slug);

  if (!project) {
    notFound();
  }

  console.log(project);
  return (
    <article>
      <ProjectDetailsBanner
        image={project.coverImage?.url ? `${BASE_URL}${project.coverImage.url}` : "/assets/finish1.jpg"}
        title={project.name}
        status={project.projectStatus}
        location={project.location}
      />
      
      <ProjectPresentation
        projectName={project.name}
        title={project.shortDescription}
        description={project.description}
        mapImage={project.mapImage?.url ? `${BASE_URL}${project.mapImage.url}` : "/images/maps/lotus-map.png"}
        timings={project.timings}
        features={project.features}
      />

      <ProjectGallery
        images={project.gallery?.length ? project.gallery.map((img) => `${BASE_URL}${img.url}`) : []}
      />

      <ProjectTopologies items={project.typologies} />
      
      <ProjectForm projectName={project.name} />
    </article>
  );
}