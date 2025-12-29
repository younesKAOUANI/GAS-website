import React from "react";
import Card from "../../main/ui/Card";

export default function ProjectDetail({ project }) {
  if (!project) return null;

  return (
    <Card className="p-6">
      <h1 className="text-2xl font-bold">{project.title}</h1>
      <p className="mt-3 text-zinc-600">{project.body}</p>
    </Card>
  );
}
