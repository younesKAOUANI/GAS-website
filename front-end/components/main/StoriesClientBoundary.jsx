"use client";

import dynamic from "next/dynamic";

const StoriesClient = dynamic(
  () => import("./StoriesClient"),
  { ssr: false }
);

export default function StoriesClientBoundary({ stories }) {
  return <StoriesClient stories={stories} />;
}
