"use client";

import { useState } from "react";
import OpportunityCard from "@/components/main/ui/OpportunityCard";

export default function OpportunitiesClient({ opportunities }) {
  const [filter, setFilter] = useState("all");

  const items = Array.isArray(opportunities) ? opportunities : [];

  const filtered =
    filter === "all"
      ? items
      : items.filter((item) => {
          const type = item?.type?.toLowerCase();
          return filter === "appartement"
            ? type === "appartement"
            : type === "local commercial";
        });
if (items.length === 0) {
    return null;
  }
  return (
    <section className="py-16 max-w-6xl mx-auto">
      <div className="mb-8 flex items-center justify-between">
        <h2 className="text-4xl font-semibold text-primary">
          Opportunité du moment
        </h2>

        <div className="flex gap-2">
          <button
            onClick={() => setFilter("all")}
            className={`rounded-full px-4 py-1 text-sm ${
              filter === "all"
                ? "bg-primary text-white"
                : "border text-primary"
            }`}
          >
            Tous
          </button>

          <button
            onClick={() => setFilter("appartement")}
            className={`rounded-full px-4 py-1 text-sm ${
              filter === "appartement"
                ? "bg-primary text-white"
                : "border text-primary"
            }`}
          >
            Appartement
          </button>

          <button
            onClick={() => setFilter("local")}
            className={`rounded-full px-4 py-1 text-sm ${
              filter === "local"
                ? "bg-primary text-white"
                : "border text-primary"
            }`}
          >
            Local commercial
          </button>
        </div>
      </div>

      <div className="grid gap-6 md:grid-cols-3">
        {filtered.map((item) => (
          <OpportunityCard key={item.id} item={item} />
        ))}
      </div>
    </section>
  );
}
