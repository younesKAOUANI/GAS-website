import React from 'react';
import Image from 'next/image';

const AboutBanner = ({ image }) => {
  return (
    <section className="relative px-4 w-full h-[750px] flex flex-col items-center">
      {/* Background Image with Overlay */}
      <div className="absolute inset-0 z-0">
        <Image
          src={image} // Replace with your image path
          alt="Architectural Planning"
          fill
          className="object-cover"
          priority
        />
        <div className="absolute inset-0 bg-primary opacity-30" /> {/* Dark Overlay */}
      </div>

      {/* Floating Info Card */}
      <div className="absolute bottom-[-80px] z-20 md:container max-w-[90%] bg-white rounded-2xl inner-shadow p-8 text-center border border-gray-100">
        <h1 className="text-4xl md:text-4xl font-bold text-primary mb-4">
          Là Où Naît La Confiance
        </h1>
        <p className="text-gray-600 text-xl leading-relaxed px-12 mb-8 mx-auto">
          Au Cœur De L’Est D’Alger, Notre Siège Est Bien Plus Qu’un Lieu De Travail :
          C’est Le Symbole De Notre Stabilité, De Notre Transparence Et De Notre
          Engagement Auprès Des Familles
        </p>

        {/* CTA Button */}
        <a
          href="https://wa.me/213797463722?text=Je%20souhaite%20r%C3%A9server%20un%20rendez-vous"
          target="_blank"
          rel="noopener noreferrer"
          className="inline-flex items-center gap-2 bg-primary text-white px-8 py-3 rounded-xl font-semibold hover:bg-[#3b71a8] transition"
        >
          Je prends rendez-vous
          <svg width="38" height="38" viewBox="0 0 38 38" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M30.1628 7.77409C28.7109 6.30809 26.9819 5.1457 25.0763 4.35466C23.1708 3.56362 21.1268 3.15975 19.0636 3.16659C10.4186 3.16659 3.37276 10.2124 3.37276 18.8574C3.37276 21.6283 4.10109 24.3199 5.46276 26.6949L3.24609 34.8333L11.5586 32.6483C13.8544 33.8991 16.4353 34.5641 19.0636 34.5641C27.7086 34.5641 34.7544 27.5183 34.7544 18.8733C34.7544 14.6774 33.1236 10.7349 30.1628 7.77409ZM19.0636 31.9041C16.7203 31.9041 14.4244 31.2708 12.4136 30.0833L11.9386 29.7983L6.99859 31.0966L8.31276 26.2833L7.99609 25.7924C6.69388 23.7136 6.00256 21.3104 6.00109 18.8574C6.00109 11.6691 11.8594 5.81076 19.0478 5.81076C22.5311 5.81076 25.8086 7.17242 28.2628 9.64242C29.4782 10.8519 30.4413 12.2906 31.0963 13.8752C31.7514 15.4598 32.0852 17.1586 32.0786 18.8733C32.1103 26.0616 26.2519 31.9041 19.0636 31.9041ZM26.2203 22.1508C25.8244 21.9608 23.8928 21.0108 23.5444 20.8683C23.1803 20.7416 22.9269 20.6783 22.6578 21.0583C22.3886 21.4541 21.6444 22.3408 21.4228 22.5941C21.2011 22.8633 20.9636 22.8949 20.5678 22.6891C20.1719 22.4991 18.9053 22.0716 17.4169 20.7416C16.2453 19.6966 15.4694 18.4141 15.2319 18.0183C15.0103 17.6224 15.2003 17.4166 15.4061 17.2108C15.5803 17.0366 15.8019 16.7516 15.9919 16.5299C16.1819 16.3083 16.2611 16.1341 16.3878 15.8808C16.5144 15.6116 16.4511 15.3899 16.3561 15.1999C16.2611 15.0099 15.4694 13.0783 15.1528 12.2866C14.8361 11.5266 14.5036 11.6216 14.2661 11.6058H13.5061C13.2369 11.6058 12.8253 11.7008 12.4611 12.0966C12.1128 12.4924 11.0994 13.4424 11.0994 15.3741C11.0994 17.3058 12.5086 19.1741 12.6986 19.4274C12.8886 19.6966 15.4694 23.6549 19.3961 25.3491C20.3303 25.7608 21.0586 25.9983 21.6286 26.1724C22.5628 26.4733 23.4178 26.4258 24.0986 26.3308C24.8586 26.2199 26.4261 25.3808 26.7428 24.4624C27.0753 23.5441 27.0753 22.7683 26.9644 22.5941C26.8536 22.4199 26.6161 22.3408 26.2203 22.1508Z" fill="white" />
          </svg>
        </a>
      </div>
    </section>
  );
};

export default AboutBanner;