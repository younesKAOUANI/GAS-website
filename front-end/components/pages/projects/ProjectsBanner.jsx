"use client";

import Image from "next/image";
import { FilterSelect } from "@/components/main/ui/FiltersSelect";

// Filter options arrays - modify these as needed
const FILTER_OPTIONS = {
  location: [
    { value: "", label: "Toutes les localisations" },
    { value: "Draria", label: "Draria" },
    { value: "Bordj El Kiffan", label: "Bordj El Kiffan" },
    { value: "Bordj El Bahri", label: "Bordj El Bahri" },
    { value: "Kouba", label: "Kouba" },
    { value: "Alger Centre", label: "Alger Centre" },
  ],
  
  status: [
    { value: "", label: "Tous les avancements" },
    { value: "en cours", label: "En cours" },
    { value: "livré", label: "Livré" },
    { value: "à venir", label: "À venir" },
  ],
  
  typology: [
    { value: "", label: "Toutes les typologies" },
    { value: "f2", label: "F2" },
    { value: "f3", label: "F3" },
    { value: "f4", label: "F4" },
    { value: "f5", label: "F5+" },
    { value: "studio", label: "Studio" },
    { value: "duplex", label: "Duplex" },
  ],
  
  finish: [
    { value: "", label: "Tous les niveaux" },
    { value: "haut-standing", label: "Haut standing" },
    { value: "standing", label: "Standing" },
    { value: "economique", label: "Économique" },
    { value: "semi-fini", label: "Semi-fini" },
    { value: "cle-en-main", label: "Clé en main" },
  ],
};

export default function ProjectsBanner({
  filters,
  setFilters,
  onSearch,
  onReset,
}) {
  return (
    <section className="relative h-[520px] md:h-[680px] w-full">
      {/* Background image (optimized) */}
      <Image
        src="/assets/projects-banner.jpg"
        alt="Projects banner"
        fill
        priority
        className="object-cover"
        sizes="100vw"
      />

      {/* Overlay */}
      <div className="absolute inset-0 bg-black/50" />

      {/* Text */}
      <div className="relative z-10 mx-auto flex h-full max-w-7xl flex-col justify-center px-4 sm:px-6">
        <div className="max-w-3xl text-white md:text-right text-center">
          <h1 className="text-3xl sm:text-4xl lg:text-6xl font-bold leading-tight">
            Découvrez nos résidences <br />
            votre futur cadre de vie
          </h1>

          <p className="mt-4 text-base sm:text-lg lg:text-2xl text-white/90">
            Explorez nos projets à Alger Est et Ouest. Filtrez par localisation,
            typologie et niveau de finition.
          </p>
        </div>
      </div>

      {/* Filters */}
      <div
        className="
          absolute left-1/2 -bottom-64 sm:-bottom-12
          z-50 w-[95%] max-w-7xl
          -translate-x-1/2
          rounded-3xl bg-white
          p-4 sm:p-6
          shadow-xl
        "
      >
        <div className="grid grid-cols-1 gap-4 sm:grid-cols-2 md:grid-cols-6">
          <FilterSelect
            label="Localisation"
            value={filters.location}
            onChange={(v) => setFilters((f) => ({ ...f, location: v }))}
            options={FILTER_OPTIONS.location}
          />

          <FilterSelect
            label="Avancement"
            value={filters.status}
            onChange={(v) => setFilters((f) => ({ ...f, status: v }))}
            options={FILTER_OPTIONS.status}
          />

          <FilterSelect
            label="Typologies"
            value={filters.typology}
            onChange={(v) => setFilters((f) => ({ ...f, typology: v }))}
            options={FILTER_OPTIONS.typology}
          />

          <FilterSelect
            label="Niveau de finition"
            value={filters.finish}
            onChange={(v) => setFilters((f) => ({ ...f, finish: v }))}
            options={FILTER_OPTIONS.finish}
          />

          <button
            onClick={onReset}
            className="
              rounded-md border border-gray-300
              px-4 py-3 text-sm font-medium
              text-gray-700 transition
              hover:bg-gray-100 hover:border-gray-400
            "
          >
            Réinitialiser
          </button>

          <button
            onClick={onSearch}
            className="
              rounded-md bg-primary
              px-4 py-3 text-sm font-medium
              text-white transition
              hover:opacity-90
            "
          >
            Rechercher
          </button>
        </div>
      </div>
    </section>
  );
}
