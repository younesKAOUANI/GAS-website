import React from "react";

export default function ProjectDetailsBanner({
  image,
  title,
  status,
  location,
}) {
  return (
    <section className="relative h-[700px] w-full overflow-hidden ">
      {/* Background image */}
      <img
        src={image}
        alt={title}
        className="absolute inset-0 h-full w-full object-cover"
      />

      {/* Overlay */}
      <div className="absolute inset-0 bg-gradient-to-r from-black/60 via-black/30 to-transparent" />

      {/* Content */}
      <div className="relative z-10 mx-auto flex h-full max-w-7xl items-center px-6">
        <div className="text-white">
          {/* Title + status */}
          <div className="flex items-center gap-4">
            <h1 className="text-4xl font-semibold italic md:text-5xl font-cursive">
              {title}
            </h1>

            {status && (
              <span className="rounded-lg capitalize border border-white/40 bg-white/10 px-3 py-1 text-sm backdrop-blur">
                {status}
              </span>
            )}
          </div>

          {/* Location */}
          {location && (
            <div className="mt-4 inline-block capitalize rounded-lg border border-white/40 bg-white/10 px-4 py-2 text-sm backdrop-blur">
              {location}
            </div>
          )}
        </div>
      </div>
    </section>
  );
}
