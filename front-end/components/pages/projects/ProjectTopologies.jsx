"use client";

import React from "react";

export default function ProjectTopologies({ items = [] }) {
  return (
    <section className="mx-auto max-w-7xl px-6 py-20">
      {/* Title */}
      <h2 className="mb-12 text-center text-3xl font-bold">
        Typologies des appartements
      </h2>

      {/* Grid */}
      <div className="grid gap-6 sm:grid-cols-2 lg:grid-cols-4">
        {items.map((item, index) => (
          <div
            key={index}
            className="flex flex-col items-center rounded-xl border bg-white p-6 text-center shadow-sm transition hover:shadow-md"
          >
            {/* Type */}
            <h3 className="text-3xl font-bold">{item.code}</h3>

            {/* Status */}
            <span
              className={`mt-2 text-sm font-semibold ${
                item.statusTypologie === "Disponible"
                  ? "text-green-500"
                  : item.statusTypologie === "Réservé"
                  ? "text-yellow-500"
                  : "text-red-500"
              }`}
            >
              {item.statusTypologie}
            </span>

            {/* Surface */}
            <p className="mt-4 text-lg font-semibold text-gray-500">
              {item.surfaceMin} m² à {item.surfaceMax} m²
            </p>

            {/* Price */}
            <p className="mt-2 text-base font-medium">
              A partir de{" "}
              {item.priceFrom < 1000
                ? `${item.priceFrom} millions`
                : `${(item.priceFrom / 1000).toFixed(1)} milliards`}
            </p>
            <button
              disabled={item.status === "vendu"}
              className={`mt-6 w-full rounded-lg py-2 font-medium text-white transition ${
                item.status === "vendu"
                  ? "cursor-not-allowed bg-gray-400"
                  : "bg-primary hover:bg-blue-800 "
              }`}
            >
              Je réserve
            </button>
          </div>
        ))}
      </div>
    </section>
  );
}
