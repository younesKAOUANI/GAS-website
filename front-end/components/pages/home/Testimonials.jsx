
import VideoTestimonialsCarousel from "./VideoTestimonialCarousel";


export default async function TestimonialsSection() {
  const res = await fetch(
    `${process.env.NEXT_PUBLIC_STRAPI_URL}/api/testimonials?populate=*`,
    { next: { revalidate: 3600 } }
  );

  const testimonials = await res.json();
  if (!testimonials?.data?.length) {
    return null;
  }
  return (
    <section className="py-24 bg-[#EEF1FF]">
      <div className="mx-auto max-w-6xl px-6">
        {/* Title */}
        <h2 className="text-center text-4xl font-bold text-primary">
          Ils nous ont fait confiance
        </h2>

        {/* Description */}
        <p className="mx-auto mt-4 max-w-2xl text-center text-gray-600 text-xl">
          Rien ne vaut la parole de ceux qui vivent déjà l’expérience avec Groupe Ahmed Soltan. Découvrez leurs histoires et leur satisfaction.
        </p>

        {/* Video testimonials */}
        <div className="mt-16">
          <VideoTestimonialsCarousel testimonials={testimonials.data} />
        </div>
      </div>
    </section>
  );
}
