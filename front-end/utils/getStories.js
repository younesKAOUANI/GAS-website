// lib/getStories.js
export async function getStories() {
  const res = await fetch(
    `${process.env.NEXT_PUBLIC_STRAPI_URL}/api/stories` +
      `?filters[isActive][$eq]=true` +
      `&filters[expiresAt][$gt]=${new Date().toISOString()}` +
      `&populate=media`,
    {
      next: { revalidate: 60 }, 
    }
  );

  
  const json = await res.json();
  console.log("Fetched stories:", json);
  if (!res.ok) return [];
  return json.data;
}
