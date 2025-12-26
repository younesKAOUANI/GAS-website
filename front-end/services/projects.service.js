export const BASE_URL = process.env.NEXT_PUBLIC_STRAPI_URL;

export async function getProjectFullDetails(slug) {
  try {
    // 1️⃣ Fetch main project data
    const projectRes = await fetch(
      `${BASE_URL}/api/projects?filters[slug][$eq]=${slug}&populate[coverImage][fields]=url&populate[mapImage][fields]=url&populate[gallery][fields]=url`,
      { cache: "no-store" }
    );
    
    if (!projectRes.ok) return null;

    const projectData = await projectRes.json();
    const project = projectData.data?.[0];
    
    if (!project) return null;

    const projectId = project.id;
    const projectFields = project.attributes || project;
    // 2️⃣ Fetch related data in parallel
    const [featuresRes, timingsRes, typologiesRes] = await Promise.all([
      fetch(`${BASE_URL}/api/project-features?filters[project][id][$eq]=${projectId}`),
      fetch(`${BASE_URL}/api/project-timings?filters[project][id][$eq]=${projectId}`),
      fetch(`${BASE_URL}/api/project-typologies?filters[project][id][$eq]=${projectId}`)
    ]);

    // Parse JSON only if the response was successful
    const fJson = featuresRes.ok ? await featuresRes.json() : { data: [] };
    const tJson = timingsRes.ok ? await timingsRes.json() : { data: [] };
    const tyJson = typologiesRes.ok ? await typologiesRes.json() : { data: [] };

    // 3️⃣ Safe Mapping
    return {
      ...projectFields,
      features: fJson?.data?.map(f => f.attributes || f) || [],
      timings: tJson?.data?.map(t => t.attributes || t) || [],
      typologies: tyJson?.data?.map(t => t.attributes || t) || [],
    };
  } catch (err) {
    console.error("Error fetching project details:", err);
    return null;
  }
}