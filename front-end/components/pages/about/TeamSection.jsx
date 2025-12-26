import Image from "next/image";

const teamMembers = [
  {
    name: "Designer D’intérieur",
    image: "/assets/team/interieur-designer.png", // replace with your image path
  },
  {
    name: "Designer Extérieur",
    image: "/assets/team/exterieur-designer.png",
  },
  {
    name: "Chef De Projet",
    image: "/assets/team/project-manager.png",
  },
  {
    name: "Cadre Commercial",
    image: "/assets/team/commercial.png",
  },
];

export default function TeamSection() {
  return (
    <section className="py-24 px-4 bg-white">
      <div className="mx-auto container text-center">
        <h2 className="text-4xl font-bold text-primary mb-4">
          Derrière Les Murs Une Équipe
        </h2>
        <p className="mx-auto max-w-3xl text-xl mb-12">
          Notre histoire ne se résume pas aux bâtiments : elle se vit grâce à
          l’engagement de chaque collaborateur. Découvrez l’équipe qui œuvre
          pour votre confiance
        </p>

        <div className="grid gap-8 sm:grid-cols-2 md:grid-cols-4">
          {teamMembers.map((member, index) => (
            <div
              key={index}
              className="rounded-lg bg-white shadow-md pb-6 flex flex-col items-center"
            >
              <div className="relative w-full min-h-64 rounded-lg overflow-hidden mb-6">
                <Image
                  src={member.image}
                  alt={member.name}
                  fill
                  className="object-cover"
                />
              </div>
              <p className="font-black  text-center">{member.name}</p>
            </div>
          ))}
        </div>
      </div>
    </section>
  );
}
