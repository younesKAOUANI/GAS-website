import Link from "next/link";
import Image from "next/image";

export default function Footer() {
  const nav = [
    { href: "/", label: "Accueil" },
    { href: "/projects", label: "Projets" },
    { href: "/about", label: "À Propos" },
    { href: "/blog", label: "L'Actu du Groupe" },
  ];

  const localities = ["Draria", "Bordj El Kiffan", "Bordj El Bahri", "Kouba"];

  return (
    <footer className="relative overflow-hidden">
      {/* background image placed absolutely to exactly fill the footer container */}
      <div className="absolute inset-0 -z-20">
        <Image 
          src="/assets/footer-bg.png" 
          alt="footer background" 
          fill 
          className="object-cover" 
        />
      </div>

      {/* subtle overlay to improve contrast over background image */}
      <div 
        className="absolute inset-0 z-10 bg-[#1C1C1A]/90 pointer-events-none" 
        aria-hidden="true" 
      />

      <div className="relative z-20 mx-auto container md:px-0 px-4 sm:px-6 lg:px-8 pt-8 pb-2 sm:pt-6 lg:pt-8">
        {/* Main Grid Container */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-11 gap-6 sm:gap-8 lg:gap-10 text-white">
          
          {/* Navigation - Takes 2 columns on large screens */}
          <div className="lg:col-span-2">
            <h3 className="text-xl sm:text-2xl font-semibold mb-3 sm:mb-4">Navigation</h3>
              <div className="h-[3px] w-12 rounded-full bg-[#3C8FCD] mb-3 sm:mb-6"></div>
            <ul className="space-y-1.5 sm:space-y-2 text-white sm:text-lg">
              {nav.map((n) => (
                <li key={n.href} className="flex items-start gap-2 sm:gap-3">
                  <span 
                    aria-hidden 
                    className="mt-1.5 sm:mt-2 h-1.5 w-1.5 sm:h-2 sm:w-2 flex-shrink-0 rounded-full bg-white/90" 
                  />
                  <Link href={n.href} className="hover:underline font-light break-words">
                    {n.label}
                  </Link>
                </li>
              ))}
            </ul>
          </div>

          {/* Localities - Takes 2 columns on large screens */}
          <div className="lg:col-span-2">
            <h3 className="text-lg sm:text-2xl font-semibold mb-1 sm:mb-2">Localités</h3>
              <div className="h-[3px] w-12 rounded-full bg-[#3C8FCD] mb-3 sm:mb-6"></div>
            <ul className="space-y-1.5 sm:space-y-2 text-base sm:text-lg">
              {localities.map((l) => (
                <li key={l} className="flex items-start font-semibold gap-2 sm:gap-3">
                  <span 
                    aria-hidden 
                    className="mt-1.5 sm:mt-2 h-1.5 w-1.5 sm:h-2 sm:w-2 flex-shrink-0 rounded-full bg-white/90" 
                  />
                  <Link 
                    href={`/projects?location=${encodeURIComponent(l)}`} 
                    className="break-words hover:underline"
                  >
                    {l}
                  </Link>
                </li>
              ))}
            </ul>
          </div>

          {/* Coordinates - Takes 4 columns on large screens, spans 2 on medium */}
          <div className="sm:col-span-2 lg:col-span-4">
            <h3 className="text-xl sm:text-2xl font-semibold mb-1 sm:mb-2">Coordonnées</h3>
              <div className="h-[3px] w-12 rounded-full bg-[#3C8FCD] mb-3 sm:mb-6"></div>

            <div className="space-y-2.5 sm:space-y-3 text-base font-light sm:text-lg">
              
              <div className="flex items-start gap-2 sm:gap-3">
                <svg 
                  className="flex-shrink-0 mt-0.5 sm:mt-1 w-4 h-5 sm:w-[17px] sm:h-[22px]" 
                  viewBox="0 0 17 22" 
                  fill="none" 
                  xmlns="http://www.w3.org/2000/svg"
                >
                  <path d="M8.5 0C6.24648 0.00265854 4.08602 0.899045 2.49253 2.49253C0.899053 4.08601 0.00266759 6.24647 9.04313e-06 8.49999C-0.00269001 10.3416 0.598857 12.1332 1.71237 13.6C1.71237 13.6 1.94419 13.9052 1.98205 13.9493L8.5 21.6363L15.021 13.9454C15.055 13.9044 15.2876 13.6 15.2876 13.6L15.2884 13.5977C16.4014 12.1315 17.0026 10.3407 17 8.49999C16.9973 6.24647 16.1009 4.08601 14.5075 2.49253C12.914 0.899045 10.7535 0.00265854 8.5 0ZM8.5 11.5909C7.88868 11.5909 7.29108 11.4096 6.78278 11.07C6.27449 10.7304 5.87832 10.2476 5.64438 9.68283C5.41043 9.11804 5.34922 8.49656 5.46849 7.89699C5.58775 7.29741 5.88213 6.74666 6.3144 6.31439C6.74667 5.88212 7.29742 5.58774 7.89699 5.46848C8.49657 5.34921 9.11805 5.41042 9.68284 5.64437C10.2476 5.87831 10.7304 6.27448 11.07 6.78278C11.4096 7.29107 11.5909 7.88867 11.5909 8.49999C11.5899 9.31944 11.2639 10.105 10.6845 10.6845C10.105 11.2639 9.31945 11.5899 8.5 11.5909Z" fill="white" />
                </svg>
                <p className="break-words">Ben Redouane, Bordj El Kiffan, Alger</p>
              </div>

              <div className="flex items-center gap-2 sm:gap-3">
<svg width="17" height="14" viewBox="0 0 17 14" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M5.38991e-09 3.98533L8.23264 8.295C8.31522 8.33822 8.40692 8.36078 8.5 8.36078C8.59308 8.36078 8.68478 8.33822 8.76736 8.295L17 3.98611V11.4722C17 12.1179 16.7546 12.7391 16.3141 13.2084C15.8735 13.6777 15.2713 13.9596 14.6308 13.9961L14.4886 14H2.51136C1.86989 14 1.25272 13.753 0.786458 13.3096C0.320193 12.8662 0.0401808 12.26 0.00386373 11.6153L5.38991e-09 11.4722V3.98533ZM2.51136 5.42515e-09H14.4886C15.1301 -4.22697e-05 15.7473 0.246986 16.2135 0.690411C16.6798 1.13384 16.9598 1.74004 16.9961 2.38467L17 2.52778V2.67089L8.5 7.11978L5.38991e-09 2.67089V2.52778C-4.19952e-05 1.88212 0.245383 1.26091 0.685928 0.791598C1.12647 0.322285 1.72874 0.0404434 2.36918 0.00388898L2.51136 5.42515e-09H14.4886H2.51136Z" fill="white"/>
</svg>

                <p className="break-words">contact@groupeahmedsoltan.com</p>
              </div>

              <div className="flex items-start gap-2 sm:gap-3">
                <svg 
                  className="flex-shrink-0 mt-0.5 sm:mt-1 w-3 h-4 sm:w-[13px] sm:h-[17px]" 
                  viewBox="0 0 13 17" 
                  fill="none" 
                  xmlns="http://www.w3.org/2000/svg"
                >
                  <path d="M6.44472 5.93409L5.10068 7.19537C5.27712 7.83187 5.52535 8.44415 5.84015 9.01929C6.16778 9.59047 6.56192 10.1169 7.01354 10.5865L8.75413 10.0256C9.72925 9.71112 10.7938 10.0341 11.4422 10.8415L12.4336 12.0756C12.835 12.571 13.0362 13.2104 12.9946 13.8583C12.9531 14.5062 12.672 15.1118 12.2109 15.5467C10.5939 17.0901 8.10405 17.612 6.23995 16.0804C4.60163 14.7312 3.21541 13.0773 2.15094 11.2019C1.08413 9.33528 0.370179 7.27167 0.0479279 5.12327C-0.309616 2.70611 1.38222 0.771697 3.49173 0.112162C4.74964 -0.2822 6.09205 0.394334 6.55361 1.65561L7.09805 3.14297C7.4556 4.12207 7.19881 5.22526 6.44472 5.93239V5.93409Z" fill="white" />
                </svg>
                <p className="break-words">+213(0)797 46 37 22</p>
              </div>
            </div>
          </div>

          {/* Catalogue - Takes 4 columns on large screens, 2 rows deep */}
          <div className="lg:col-span-3 lg:row-span-2">
            <div className="flex flex-col items-start gap-3 sm:gap-4 max-w-sm">
              <div className="w-full overflow-hidden rounded bg-black/5">
                <Image 
                  src="/assets/catalogue-preview.png" 
                  alt="Catalogue" 
                  width={320} 
                  height={320} 
                  className="w-full h-auto object-cover" 
                />
              </div>

              <p className="text-xs sm:text-sm">
                Découvrez notre catalogue complet tous nos projets, plans et finitions
              </p>

              <a 
                href="/assets/catalogue.pdf" 
                download 
                className="inline-block rounded border-2 border-primary px-4 sm:px-6 py-2 sm:py-2.5 text-base sm:text-xl font-black text-primary hover:bg-primary hover:text-white transition-colors w-full text-center"
              >
                Télécharger
              </a>
            </div>
          </div>

          {/* Logo - Takes 3 columns on large screens, positioned in second row */}
          <div className="lg:col-span-8 col-span-1 sm:col-span-2 flex  items-end mt-6 sm:mt-8 lg:mt-0 gap-3">
            <Image 
              src="/assets/logo-white.png" 
              alt="GAS logo" 
              width={250} 
              height={48} 
              className="w-40 sm:w-52 lg:w-64 h-auto object-contain" 
            />

            <div className="flex items-center gap-3 text-center mb-2">
              <span className="text-xs text-white/80">Développé et conçu par</span>
              <Link href="https://evolvit.tech" target="_blank" rel="noopener noreferrer" className="inline-block">
                <Image
                  src="/assets/dev-logo.png"
                  alt="Agence partenaire"
                  width={80}
                  height={24}
                  className="w-20 sm:w-24 h-auto object-contain"
                />
              </Link>
            </div>
          </div>
        </div>
      </div>
    </footer>
  );
}