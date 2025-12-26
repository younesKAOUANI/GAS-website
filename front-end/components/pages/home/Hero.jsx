"use client";

import React, { useEffect, useState, useRef } from "react";
import Image from "next/image";
import Button from "../../main/ui/Button";

export default function HomeHero({ media = {}, interval = 5000 }) {
  const [activeIndex, setActiveIndex] = useState(0);
  const videoRef = useRef(null);
  const timerRef = useRef(null);

  // Convert media object { firstItem, secondItem, thirdItem } into an array
  const mediaArray = Object.values(media).filter(Boolean).map((item) => ({
    src: item.url,
    type: item.mime?.startsWith("video") ? "video" : "image",
    poster: item.previewUrl || "",
  }));

  const goToNext = () => {
    setActiveIndex((prev) => (prev + 1) % mediaArray.length);
  };

  const goToPrevious = () => {
    setActiveIndex((prev) => (prev - 1 + mediaArray.length) % mediaArray.length);
  };

  const goToSlide = (index) => {
    setActiveIndex(index);
  };

  // Handle automatic progression for images
  useEffect(() => {
    if (mediaArray.length <= 1) return;
    
    const currentItem = mediaArray[activeIndex];
    
    // Only set timer for images, videos handle their own progression
    if (currentItem?.type === "image") {
      timerRef.current = setTimeout(() => {
        goToNext();
      }, interval);
    }

    return () => {
      if (timerRef.current) {
        clearTimeout(timerRef.current);
      }
    };
  }, [activeIndex, mediaArray.length, interval]);

  // Handle video end event
  const handleVideoEnd = () => {
    goToNext();
  };

  return (
    <section className="relative flex h-screen w-full items-center overflow-hidden px-4 md:px-0">
      {/* Background carousel */}
      <div className="absolute inset-0">
        {mediaArray.map((item, index) => (
          <div
            key={index}
            className={`absolute inset-0 transition-opacity duration-[800ms] ease-in-out ${
              index === activeIndex ? "opacity-100" : "opacity-0"
            }`}
          >
            {item.type === "video" ? (
              <video
                ref={index === activeIndex ? videoRef : null}
                className="h-full w-full object-cover"
                src={item.src}
                poster={item.poster}
                autoPlay
                muted
                playsInline
                onEnded={handleVideoEnd}
              />
            ) : (
              <Image
                src={item.src}
                alt={`Hero media ${index + 1}`}
                fill
                priority={index === 0}
                className="object-cover"
              />
            )}
          </div>
        ))}
      </div>

      {/* Overlay */}
      <div className="absolute inset-0 bg-black/30" aria-hidden="true" />

      {/* Navigation buttons */}
      {mediaArray.length > 1 && (
        <>
          {/* Previous button */}
          <button
            onClick={goToPrevious}
            className="absolute left-4 top-1/2 z-20 -translate-y-1/2 rounded-full bg-white/20 p-3 backdrop-blur-sm transition-all hover:bg-white/30 focus:outline-none focus:ring-2 focus:ring-white/50"
            aria-label="Previous slide"
          >
            <svg
              className="h-6 w-6 text-white"
              fill="none"
              stroke="currentColor"
              viewBox="0 0 24 24"
            >
              <path
                strokeLinecap="round"
                strokeLinejoin="round"
                strokeWidth={2}
                d="M15 19l-7-7 7-7"
              />
            </svg>
          </button>

          {/* Next button */}
          <button
            onClick={goToNext}
            className="absolute right-4 top-1/2 z-20 -translate-y-1/2 rounded-full bg-white/20 p-3 backdrop-blur-sm transition-all hover:bg-white/30 focus:outline-none focus:ring-2 focus:ring-white/50"
            aria-label="Next slide"
          >
            <svg
              className="h-6 w-6 text-white"
              fill="none"
              stroke="currentColor"
              viewBox="0 0 24 24"
            >
              <path
                strokeLinecap="round"
                strokeLinejoin="round"
                strokeWidth={2}
                d="M9 5l7 7-7 7"
              />
            </svg>
          </button>

          {/* Dot indicators */}
          <div className="absolute bottom-8 left-1/2 z-20 flex -translate-x-1/2 gap-2">
            {mediaArray.map((_, index) => (
              <button
                key={index}
                onClick={() => goToSlide(index)}
                className={`h-2 rounded-full transition-all ${
                  index === activeIndex
                    ? "w-8 bg-white"
                    : "w-2 bg-white/50 hover:bg-white/75"
                }`}
                aria-label={`Go to slide ${index + 1}`}
              />
            ))}
          </div>
        </>
      )}

      {/* Card content */}
      <div className="relative z-10 mx-auto h-[400px] w-full max-w-6xl">
        <div className="absolute left-0 top-0 min-h-[392px] min-w-[360px] max-w-2xl overflow-hidden rounded-3xl">
          <Image
            src="/assets/card-hero.png"
            alt="card"
            fill
            className="object-cover"
          />

          <div className="absolute inset-0 flex flex-col justify-center bg-transparent p-6 md:p-8">
            <h1 className="my-2 text-lg font-bold leading-relaxed text-primary md:text-xl lg:text-4xl">
              Votre nouvelle adresse, notre passion
            </h1>

            <p className="mt-3 max-w-prose text-md text-zinc-700">
              Découvrez nos résidences et trouvez l'appartement qui vous
              ressemble.
            </p>

            <div className="mt-6 w-full">
              <Button variant="primary" className="w-full text-xl">
                Je trouve mon logement
              </Button>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
}