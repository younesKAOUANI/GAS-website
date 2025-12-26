
import React from "react";

const contactCards = [
	{
		key: 'phone',
		icon: (
			<svg width="39" height="39" viewBox="0 0 39 39" fill="none" xmlns="http://www.w3.org/2000/svg">
				<path d="M7.84333 16.8783C10.9633 23.01 15.99 28.0367 22.1217 31.1567L26.8883 26.39C27.495 25.7833 28.34 25.61 29.0983 25.8483C31.525 26.65 34.125 27.0833 36.8333 27.0833C37.408 27.0833 37.9591 27.3116 38.3654 27.7179C38.7717 28.1243 39 28.6754 39 29.25V36.8333C39 37.408 38.7717 37.9591 38.3654 38.3654C37.9591 38.7717 37.408 39 36.8333 39C27.0645 39 17.6958 35.1194 10.7882 28.2118C3.88064 21.3042 0 11.9355 0 2.16667C0 1.59203 0.228273 1.04093 0.634602 0.634602C1.04093 0.228273 1.59203 0 2.16667 0H9.75C10.3246 0 10.8757 0.228273 11.2821 0.634602C11.6884 1.04093 11.9167 1.59203 11.9167 2.16667C11.9167 4.875 12.35 7.475 13.1517 9.90167C13.39 10.66 13.2167 11.505 12.61 12.1117L7.84333 16.8783Z" fill="white"/>
			</svg>
		),
		title: 'Téléphone',
		value: '+213(0)797 46 37 22',
	},
	{
		key: 'email',
		icon: (
			<svg width="33" height="26" viewBox="0 0 33 26" fill="none" xmlns="http://www.w3.org/2000/svg">
				<path d="M32.5 3.25C32.5 1.4625 31.0375 0 29.25 0H3.25C1.4625 0 0 1.4625 0 3.25V22.75C0 24.5375 1.4625 26 3.25 26H29.25C31.0375 26 32.5 24.5375 32.5 22.75V3.25ZM29.25 3.25L16.25 11.375L3.25 3.25H29.25ZM29.25 22.75H3.25V6.5L16.25 14.625L29.25 6.5V22.75Z" fill="white"/>
			</svg>
		),
		title: 'Email',
		value: 'contact@groupeahmedsoltan.com',
	},
	{
		key: 'address',
		icon: (
			<svg width="23" height="33" viewBox="0 0 23 33" fill="none" xmlns="http://www.w3.org/2000/svg">
				<path d="M11.375 15.4375C10.2976 15.4375 9.26425 15.0095 8.50238 14.2476C7.74051 13.4858 7.3125 12.4524 7.3125 11.375C7.3125 10.2976 7.74051 9.26425 8.50238 8.50238C9.26425 7.74051 10.2976 7.3125 11.375 7.3125C12.4524 7.3125 13.4858 7.74051 14.2476 8.50238C15.0095 9.26425 15.4375 10.2976 15.4375 11.375C15.4375 11.9085 15.3324 12.4368 15.1283 12.9297C14.9241 13.4225 14.6249 13.8704 14.2476 14.2476C13.8704 14.6249 13.4225 14.9241 12.9297 15.1283C12.4368 15.3324 11.9085 15.4375 11.375 15.4375ZM11.375 0C8.35816 0 5.46489 1.19843 3.33166 3.33166C1.19843 5.46489 0 8.35816 0 11.375C0 19.9062 11.375 32.5 11.375 32.5C11.375 32.5 22.75 19.9062 22.75 11.375C22.75 8.35816 21.5516 5.46489 19.4183 3.33166C17.2851 1.19843 14.3918 0 11.375 0Z" fill="white"/>
			</svg>
		),
		title: 'Adresse',
		value: 'Ben Redouane, Bordj El Kiffan, Alger',
	},
];


export default function ContactInfo({faqs=[]}) {
	return (
		<div className="w-full flex flex-col items-center gap-12 bg-white px-4">
			{/* Contact Info Cards Section */}
			<section className="w-full flex flex-col items-center">
				<div className="grid grid-cols-1 md:grid-cols-3 gap-8 w-full max-w-4xl">
					{contactCards.map(card => (
						<div key={card.key} className="flex flex-col items-center bg-white rounded-lg shadow-md p-6">
							<div className="bg-primary rounded-full w-14 h-14 p-4 flex items-center justify-center mb-4">
								{card.icon}
							</div>
							<h3 className="font-medium text-lg mb-2">{card.title}</h3>
							<p className="text-center text-sm text-primary">{card.value}</p>
						</div>
					))}
				</div>
			</section>

			{/* FAQ Section */}
			<section className="w-full max-w-3xl pb-12">
				<h2 className="text-2xl font-bold mb-6 text-center">Foire aux questions
</h2>
				<div className="space-y-4">
					{faqs.map((faq, idx) => (
						<details key={idx} className="bg-[#EEF1FF] rounded-lg shadow-md text-primary p-4">
							<summary className="font-medium text-lg cursor-pointer text-black">{faq.question}</summary>
							<p className="mt-2 text-black">{faq.answer}</p>
						</details>
					))}
				</div>
			</section>
		</div>
	);
}
