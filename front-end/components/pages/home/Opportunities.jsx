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
    <section className="mx-auto max-w-6xl px-4 py-16 sm:px-6">
      <div className="mb-8 flex flex-col gap-4 md:flex-row md:items-center md:justify-between">
        <h2 className="text-3xl sm:text-4xl font-semibold text-primary text-center md:text-left">
          Opportunité du moment
        </h2>

        <div className="flex w-full items-center gap-2 overflow-x-auto pb-1 md:w-auto md:justify-end md:overflow-visible">
          <button
            onClick={() => setFilter("all")}
            className={`flex-shrink-0 rounded-full px-4 py-2 text-sm ${
              filter === "all"
                ? "bg-primary text-white"
                : "border text-primary"
            }`}
          >
            Tous
          </button>

          <button
            onClick={() => setFilter("appartement")}
            className={`flex-shrink-0 rounded-full px-4 py-2 text-sm ${
              filter === "appartement"
                ? "bg-primary text-white"
                : "border text-primary"
            }`}
          >
            Appartement
          </button>

          <button
            onClick={() => setFilter("local")}
            className={`flex-shrink-0 rounded-full px-4 py-2 text-sm ${
              filter === "local"
                ? "bg-primary text-white"
                : "border text-primary"
            }`}
          >
            Local commercial
          </button>
        </div>
      </div>

      <div className="grid gap-6 sm:grid-cols-2 lg:grid-cols-3">
        {filtered.map((item) => (
          <OpportunityCard key={item.id} item={item} />
        ))}
      </div>
    </section>
  );
}
