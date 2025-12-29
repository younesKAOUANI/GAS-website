"use client";

import React, { useRef } from "react";

export default function ProjectGallery({ images = [] }) {
  const sliderRef = useRef(null);

  const scroll = (direction) => {
    if (!sliderRef.current) return;

    const scrollAmount = 320;
    sliderRef.current.scrollBy({
      left: direction === "left" ? -scrollAmount : scrollAmount,
      behavior: "smooth",
    });
  };

  return (
    <section className="relative mx-auto max-w-7xl px-6 py-20">
      {/* Title */}
      <h2 className="mb-10 text-center text-3xl font-bold">
        Galerie du projet
      </h2>

      {/* Desktop (LG+) arrows */}
      <button
        onClick={() => scroll("left")}
        className="hidden lg:flex absolute -left-6 top-1/2 z-10 -translate-y-1/2 rounded-full border-2 border-primary bg-white p-3 shadow transition hover:scale-105"
        aria-label="Scroll left"
      >
        ❮
      </button>

      <button
        onClick={() => scroll("right")}
        className="hidden lg:flex absolute -right-6 top-1/2 z-10 -translate-y-1/2 rounded-full border-2 border-primary bg-white p-3 shadow transition hover:scale-105"
        aria-label="Scroll right"
      >
        ❯
      </button>

      {/* Gallery */}
      <div
        ref={sliderRef}
        className="flex gap-6 overflow-x-auto scroll-smooth scrollbar-hide"
      >
        {images.map((src, index) => (
          <div
            key={index}
            className="min-w-[280px] overflow-hidden rounded-2xl bg-gray-100 shadow-md"
          >
            <img
              src={src}
              alt={`Project image ${index + 1}`}
              className="h-[360px] w-full object-cover transition-transform duration-300 hover:scale-105"
            />
          </div>
        ))}
      </div>

      {/* Mobile + Medium arrows */}
      <div className="mt-8 flex justify-center gap-6 lg:hidden">
        <button
          onClick={() => scroll("left")}
          className="rounded-full border-2 border-primary bg-white p-3 shadow transition hover:scale-105"
          aria-label="Scroll left"
        >
          ❮
        </button>

        <button
          onClick={() => scroll("right")}
          className="rounded-full border-2 border-primary bg-white p-3 shadow transition hover:scale-105"
          aria-label="Scroll right"
        >
          ❯
        </button>
      </div>
    </section>
  );
}
