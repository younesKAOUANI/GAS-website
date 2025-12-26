import InvestmentMap from "@/components/pages/localities/InvestementMap";

export default async function LocalitiesPage() {

    	const res = await fetch(`${process.env.NEXT_PUBLIC_STRAPI_URL}/api/localities?populate=*`, {
		next: { revalidate: 3600 }, // revalidate every hour
	});
	const localities = await res.json();
  console.log("Localities data:", localities);

  return (
    <>
<InvestmentMap  residences={localities.data} />
    </>
  );
}
