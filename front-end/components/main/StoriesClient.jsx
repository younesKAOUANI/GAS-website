"use client";

import { useState, useEffect } from "react";
import StoriesBubble from "./StoriesBubble";
import StoriesViewer from "./StoriesViewer";

export default function StoriesClient({ stories }) {
  const [open, setOpen] = useState(false);
  const [clientStories, setClientStories] = useState([]);

  // hydrate stories safely on client
  useEffect(() => {
    setClientStories(stories);
  }, [stories]);

  return (
    <>
      <StoriesBubble
        hasStories={clientStories.length > 0}
        onClick={() => setOpen(true)}
      />

      {open && (
        <StoriesViewer
          stories={clientStories}
          onClose={() => setOpen(false)}
        />
      )}
    </>
  );
}
