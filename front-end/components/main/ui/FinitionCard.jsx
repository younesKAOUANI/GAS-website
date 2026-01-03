import Image from "next/image";

export default function FinitionCard({ image, title, description, href }) {
  return (
    <article className="flex flex-col overflow-hidden rounded-lg bg-white shadow-sm inner-shadow">
      <div className="h-80 w-full relative">
        <Image src={image} alt={title} fill className="object-cover" unoptimized />
      </div>

      <div className="px-4 py-6 flex flex-col items-center text-center">
        <h3 className="text-primary text-2xl font-black mb-2">{title}</h3>
        <p className="text-md text-zinc-600 mb-4">{description}</p>
        <a
          href={href || '#'}
          className="mt-auto inline-block rounded-md px-8 py-2 text-xl font-medium border-2 border-primary text-primary bg-transparent transition-colors duration-200 ease-in-out hover:bg-primary hover:text-white hover:border-transparent focus:outline-none focus:ring-2 focus:ring-primary/40"
        >
          Découvrir
        </a>
      </div>
    </article>
  );
}
