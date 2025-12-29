import Image from "next/image";
import Link from "next/link";

export default function VisionSection({ mapImage }) {
  return (
    <section className="py-24 bg-white">
      <div className="mx-auto max-w-6xl px-6 text-center">
        {/* Title */}
        <h2 className="text-4xl font-bold text-primary">
          Notre Vision Pour Demain
        </h2>

        {/* Description */}
        <p className="mx-auto mt-6 max-w-4xl text-lg text-gray-700 leading-relaxed">
          Notre Ambition Ne S’arrête Pas Là. Après Avoir Bâti Des Résidences
          Qui Font La Fierté De L’Est D’Alger, Nous Élargissons Notre Horizon
          Vers L’Ouest. Demain, Encore Plus De Familles Trouveront Refuge
          Dans Un Logement Signé Groupe Ahmed Soltan
        </p>

        {/* Map */}
        <div className="relative mt-12 overflow-hidden rounded-2xl bg-gray-100 shadow-md">
          <Image
            src={mapImage}
            alt="Carte des résidences"
            width={1200}
            height={600}
            className="w-full object-contain"
            priority
          />
        </div>

        {/* CTA */}
        <p className="mt-10 text-gray-800 font-medium">
          Vous aussi, faites partie de l’histoire
        </p>

        <div className="mt-4">
          <Link
            href="/residences"
            className="inline-flex items-center justify-center rounded-full bg-primary px-8 py-3 text-white font-medium shadow-md transition hover:opacity-90"
          >
            Je découvre les résidences
          </Link>
        </div>
      </div>
    </section>
  );
}
