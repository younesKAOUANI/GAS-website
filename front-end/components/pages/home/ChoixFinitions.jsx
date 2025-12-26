import FinitionCard from "@/components/main/ui/FinitionCard";

export default async function ChoixFinitions() {

	const res = await fetch(`${process.env.NEXT_PUBLIC_STRAPI_URL}/api/images-finition?populate=*`, {
		next: { revalidate: 3600 }, // revalidate every hour
	});
	const images = await res.json();
	// Safely map Strapi response to the card images
	const cards = [
		{
			image:
				images.data?.semiFinition?.formats?.small?.url
					? `${process.env.NEXT_PUBLIC_STRAPI_URL}${images.data.semiFinition.formats.small.url}`
					: "/assets/backup/semi-fini.jpg",
			title: "Appartement semi-fini",
			description: "Un prix avantageux pour un logement que vous modelez à votre image.",
			href: "/projects",
		},
		{
			image:
				images.data?.finitionTroisTiers?.formats?.small?.url
					? `${process.env.NEXT_PUBLIC_STRAPI_URL}${images.data.finitionTroisTiers.formats.small.url}`
					: "/assets/backup/trois-tiers-fini.jpg",
			title: "Appartement fini à 75%",
			description: "Plomberie, électricité et gros œuvre terminés. Vous personnalisez le reste",
			href: "/projects",
		},
		{
			image:
				images.data?.fini?.formats?.small?.url
					? `${process.env.NEXT_PUBLIC_STRAPI_URL}${images.data.fini.formats.small.url}`
					: "/assets/backup/fini.jpg",
			title: "Appartement fini",
			description: "Confort, modernité et tranquillité, dans une résidence sécurisée",
			href: "/projects",
		},
	];

	return (
		<section className="bg-gray-50 py-12">
			<div className="mx-auto max-w-6xl px-6">
				<h2 className="text-4xl font-semibold text-center">Nos choix de finitions</h2>
				<p className="mt-3 text-center text-2xl text-black">
					Parce que chaque famille a des besoins différents, nous vous offrons trois solutions de finition adaptées à vos envies et à votre budget
				</p>

				<div className="mt-8 grid gap-6 sm:grid-cols-2 lg:grid-cols-3">
					{cards.map((c) => (
						<FinitionCard key={c.title} image={c.image} title={c.title} description={c.description} href={c.href} />
					))}
				</div>
			</div>
		</section>
	);
}
