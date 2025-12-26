import React from "react";
import Card from "../../main/ui/Card";

export default function LocalityCard({ name, info }) {
  return (
    <Card className="p-4">
      <h3 className="font-semibold">{name}</h3>
      <p className="text-sm text-zinc-600">{info}</p>
    </Card>
  );
}
