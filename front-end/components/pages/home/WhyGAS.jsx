"use client";

import Image from "next/image";
import { useEffect, useState, useMemo, useRef } from "react";
import { useInView } from "react-intersection-observer";

export default function WhyGAS() {
  /* ===== DATA ===== */

  const stats = useMemo(() => [
    { label: "projets en cours", value: 15 },
    { label: "ans d’expérience", value: 5 },
    { label: "appartements livrés", value: 1500 },
  ], []);

  const features = [
    {
      number: "01",
      title: "Une équipe à votre écoute",
      description:
        "Un suivi personnalisé à chaque étape, du choix de l’appartement à la remise des clés",
    },
    {
      number: "02",
      title: "Une qualité qui fait la différence",
      description:
        "Matériaux durables, finitions soignées, conçus pour votre confort",
    },
    {
      number: "03",
      title: "Un paiement souple",
      description:
        "Formule de paiement par tranches, adaptée à votre rythme",
    },
  ];

  /* ===== COUNTER LOGIC ===== */

  const [counts, setCounts] = useState(stats.map(() => 0));
  const [hasAnimated, setHasAnimated] = useState(false);
  const { ref, inView } = useInView({ triggerOnce: true, threshold: 0.3 });
  const intervalsRef = useRef([]);

  useEffect(() => {
    if (inView && !hasAnimated) {
      // Start animation on next tick to avoid cascading setState
      setTimeout(() => setHasAnimated(true), 0);
    }
  }, [inView, hasAnimated]);

  useEffect(() => {
    if (hasAnimated) {
      const duration = 2000; // 3 seconds
      const start = performance.now();
      let frameId;

      function animate(now) {
        const elapsed = Math.min(now - start, duration);
        setCounts(stats.map(stat => Math.round((stat.value * elapsed) / duration)));
        if (elapsed < duration) {
          frameId = requestAnimationFrame(animate);
        } else {
          setCounts(stats.map(stat => stat.value));
        }
      }
      frameId = requestAnimationFrame(animate);
      return () => cancelAnimationFrame(frameId);
    }
  }, [hasAnimated, stats]);

  /* ===== RENDER ===== */

  return (
    <section className="bg-secondary py-20 relative overflow-hidden" ref={ref}>
      {/* Fixed background element top right using Next.js Image */}
      <div className="pointer-events-none select-none fixed md:absolute top-0 right-0 w-[32rem] md:w-[56rem] h-[32rem] md:h-[56rem] z-0" style={{ aspectRatio: '1/1' }}>
          <Image
          src="/assets/why-gas-background-element.png"
          alt=""
          aria-hidden="true"
          fill
          sizes="(min-width: 768px) 24rem, 18rem"
          style={{ objectFit: 'contain' }}
          priority
        />
      </div>
        <div className="mx-auto max-w-6xl px-6">
            {/* Title */}
            <h2 className="mb-14 text-center text-4xl font-bold text-gray-900">
                Pourquoi Groupe Ahmed Soltan ?
            </h2>

            {/* Stats */}
            <div className="mb-20 grid gap-0.5 md:grid-cols-3 rounded-xl overflow-hidden">
                {stats.map((stat, i) => (
                    <div
                        key={stat.label}
                        className="bg-white/70 p-8 text-center shadow-inner"
                    >
                        <div className="text-4xl font-bold text-black">
                            {counts[i]}+
                        </div>
                        <p className="mt-2 text-3xl text-gray-400">{stat.label}</p>
                    </div>
                ))}
            </div>

            {/* Feature Cards */}
            <div className="grid gap-4 md:grid-cols-3 ">
                {features.map((item) => (
                    <div
                        key={item.number}
                        className="relative group rounded-3xl hover:bg-primary transition bg-white/80 p-8 shadow-[inset_0_0_6px_rgba(0,0,0,0.15)] backdrop-blur "
                    >
                        {/* Number (Right aligned) */}
                        <div className="absolute group-hover:text-white transition right-6 top-6 text-6xl font-bold text-primary">
                            {item.number}
                        </div>

                        {/* Content */}
                        <h3 className="mt-16 text-5xl group-hover:text-white transition font-medium text-primary leading-relaxed ">
                            {item.title}
                        </h3>
                        <p className="mt-3 text-xl group-hover:text-white transition leading-relaxed font-light text-primary">
                            {item.description}
                        </p>
                    </div>
                ))}
            </div>
        </div>
    </section>
);
}
