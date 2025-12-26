"use client";

import { useState } from "react";

export default function VideoTestimonialsCarousel({ testimonials = [] }) {
  const [activeIndex, setActiveIndex] = useState(0);

  if (!testimonials.length) return null;

  const prev = () => {
    setActiveIndex((i) => (i === 0 ? testimonials.length - 1 : i - 1));
  };

  const next = () => {
    setActiveIndex((i) => (i === testimonials.length - 1 ? 0 : i + 1));
  };

  const active = testimonials[activeIndex];

  // Normalize video source: accept either a YouTube id, a full YouTube URL, or a direct mp4 url
  const getVideoSource = (item) => {
    const candidate = item?.link || item?.videoUrl || item?.src || '';
    if (!candidate) return null;

    // detect mp4
    if (/\.mp4(\?|$)/i.test(candidate)) return { type: 'mp4', src: candidate };

    // if it's likely an id (no slashes, short) return as id
    if (!candidate.includes('/') && candidate.length <= 32) return { type: 'youtube-id', id: candidate };

    // try to extract YouTube id from common url patterns
    const youtubeRegex = /(?:youtube(?:-nocookie)?\.com\/(?:watch\?v=|embed\/|v\/)|youtu\.be\/)([A-Za-z0-9_-]{5,})/i;
    const m = candidate.match(youtubeRegex);
    if (m && m[1]) return { type: 'youtube-id', id: m[1] };

    // as a last resort, if candidate looks like a path segment, take the last path piece
    try {
      const u = new URL(candidate);
      const parts = u.pathname.split('/').filter(Boolean);
      const last = parts[parts.length - 1];
      if (last) return { type: 'youtube-id', id: last };
    } catch (e) {
      // ignore
    }

    return null;
  };

  const srcInfo = getVideoSource(active);
  const iframeSrc =
    srcInfo?.type === 'youtube-id'
      ? `https://www.youtube-nocookie.com/embed/${srcInfo.id}?rel=0&modestbranding=1&controls=1&iv_load_policy=3&playsinline=1&disablekb=1`
      : null;

  return (
    <div className="relative rounded-2xl bg-[#F3F5F6] p-8">
      {/* Title */}
      <h3 className="mb-6 text-center text-xl font-semibold text-gray-900">
        {active.title}
      </h3>

      {/* Video + arrows */}
      <div className="relative mx-auto flex max-w-7xl items-center gap-4">
        {/* Left Arrow */}
        <button
          onClick={prev}
          className="flex h-12 w-12 items-center justify-center rounded-full bg-white text-xl text-gray-700 shadow-md transition hover:-translate-x-1 hover:bg-gray-100 active:scale-90"
          aria-label="Previous testimonial"
        >
          ❮
        </button>

        {/* Video */}
        <div className="flex-1 overflow-hidden rounded-xl bg-black shadow-inner aspect-video">
          {srcInfo?.type === 'mp4' ? (
            <video key={srcInfo.src} controls className="h-full w-full object-cover">
              <source src={srcInfo.src} type="video/mp4" />
            </video>
          ) : iframeSrc ? (
            <iframe
              key={iframeSrc}
              src={iframeSrc}
              title={active.title}
              loading="lazy"
              allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
              allowFullScreen
              className="h-full w-full"
            />
          ) : null}
        </div>

        {/* Right Arrow */}
        <button
          onClick={next}
          className="flex h-12 w-12 items-center justify-center rounded-full bg-white text-xl text-gray-700 shadow-md transition hover:translate-x-1 hover:bg-gray-100 active:scale-90"
          aria-label="Next testimonial"
        >
          ❯
        </button>
      </div>

      {/* Index */}
      <p className="mt-4 text-center text-sm text-gray-500">
        {activeIndex + 1} / {testimonials.length}
      </p>
    </div>
  );
}
