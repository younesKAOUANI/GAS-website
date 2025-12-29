import { getStories } from "@/utils/getStories";
import StoriesClient from "./StoriesClient";

export default async function StoriesWrapper() {
  const stories = await getStories();
  if (!stories?.length) return null;

  // Pass stories to client component
  return <StoriesClient stories={stories} />;
}
