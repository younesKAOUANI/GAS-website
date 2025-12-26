import React from 'react';
import Image from 'next/image';

const History = ({ imageSrc }) => {
    return (
        <section className="relative w-full container mx-auto px-6 py-20 mt-16 overflow-hidden">

            <div className="grid grid-cols-1 lg:grid-cols-2 gap-12 items-center bg-[#EEF1FF] rounded-xl">

                <div className="flex flex-col space-y-6 py-12 px-8">
                    <div className="flex flex-col items-center gap-12">
                        <h2 className="text-4xl md:text-5xl font-medium leading-snug">
                            Une histoire ancrée à l’Est d’Alger
                        </h2>
                        <p className="leading-loose text-justify space-y-4 text-2xl">
                            Depuis plus de 5 ans, le Groupe Ahmed Soltan accompagne les familles et investisseurs dans la réalisation de leurs rêves immobiliers. De la conception à la livraison, chaque résidence incarne notre promesse : bâtir des lieux de vie modernes, durables et pensés pour le bien-être
                        </p>
                    </div>

                </div>
                <div className="relative overflow-hidden h-full">
                    <Image
                        src={imageSrc}
                        alt="Our History"
                        fill
                        className="object-cover transition-transform duration-500 "
                    />
                </div>
            </div>
        </section>
    );
};

export default History;