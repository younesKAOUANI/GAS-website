import Image from "next/image";

export default function ContactHero() {
  const backgroundImage = "/assets/contact-hero-bg.jpg";

  return (
    <section className="relative w-full min-h-[60vh] md:min-h-[70vh] lg:min-h-[700px]">
      {/* Background image */}
      <Image
        src={backgroundImage}
        alt="Contact banner"
        fill
        priority
        className="object-cover"
      />

      {/* Overlay */}
      <div className="absolute inset-0 bg-black/40" />

      {/* Content */}
      <div className="relative z-10 flex min-h-[60vh] md:min-h-[70vh] lg:min-h-[700px] items-center justify-center px-4">
        <h1 className="text-center font-bold text-white leading-loose
          text-2xl sm:text-3xl md:text-4xl lg:text-5xl ">
          N’hésitez pas à nous <br />
          <span className="text-primary">Contacter</span>
        </h1>
      </div>
    </section>
  );
}
