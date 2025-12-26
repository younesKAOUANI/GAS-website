'use client';
import { useState, useMemo } from 'react';
import Image from 'next/image';
import { useRouter } from 'next/navigation';

const LOCATIONS = ['Bordj El Bahri', 'Bordj El Kiffan', 'Draria', 'Kouba'];

const InvestmentMap = ({ residences = [] }) => {
  const router = useRouter();
  const [selectedLocation, setSelectedLocation] = useState('');
  const [search, setSearch] = useState('');
  const [hoveredResidenceIndex, setHoveredResidenceIndex] = useState(null);

  const filteredResidences = useMemo(() => {
    let filtered = selectedLocation
      ? residences.filter(res => res.location === selectedLocation)
      : residences;

    if (search.trim()) {
      filtered = filtered.filter(res =>
        res.location?.toLowerCase().includes(search.toLowerCase()) ||
        res.name?.toLowerCase().includes(search.toLowerCase())
      );
    }
    return filtered;
  }, [residences, selectedLocation, search]);

  const displayedResidence =
    hoveredResidenceIndex !== null
      ? filteredResidences[hoveredResidenceIndex]
      : filteredResidences[0]; // Show first residence by default

  const handleResidenceClick = (residence) => {
    // Navigate to projects page with location as query parameter
    const locationParam = encodeURIComponent(residence.location);
    router.push(`/projects?location=${locationParam}`);
  };

  return (
    <div className="container mx-auto px-4 py-12 pt-28 md:pt-36">
      {/* Filters */}
      <div className="flex flex-col md:flex-row md:items-center md:justify-between gap-4 mb-8">
        {/* Location buttons */}
        <div className="flex flex-wrap gap-2">
          <button
            className={`px-4 py-2 rounded-full transition text-sm md:text-base ${
              selectedLocation === ''
                ? 'bg-primary text-white'
                : 'border border-primary text-primary hover:bg-primary/10'
            }`}
            onClick={() => setSelectedLocation('')}
          >
            Toutes les localités
          </button>

          {LOCATIONS.map(loc => (
            <button
              key={loc}
              className={`px-4 py-2 rounded-full transition text-sm md:text-base ${
                selectedLocation === loc
                  ? 'bg-primary text-white'
                  : 'border border-primary text-primary hover:bg-primary/10'
              }`}
              onClick={() => setSelectedLocation(loc)}
            >
              {loc}
            </button>
          ))}
        </div>

        {/* Search */}
        <div className="w-full md:w-72">
          <div className="relative">
            <span className="absolute inset-y-0 left-3 flex items-center pointer-events-none">
              <svg width="17" height="17" viewBox="0 0 17 17" fill="none">
                <path
                  d="M6.91504 13.834C8.3125 13.834 9.62207 13.4121 10.7119 12.6914L14.5615 16.5498C14.8164 16.7959 15.1416 16.9189 15.4932 16.9189C16.2227 16.9189 16.7588 16.3477 16.7588 15.627C16.7588 15.293 16.6445 14.9678 16.3984 14.7217L12.5752 10.8809C13.3662 9.75586 13.832 8.39355 13.832 6.91699C13.832 3.11133 10.7207 0 6.91504 0C3.11816 0 -0.00195312 3.11133 -0.00195312 6.91699C-0.00195312 10.7227 3.10938 13.834 6.91504 13.834Z"
                  fill="#3C8FCD"
                />
              </svg>
            </span>
            <input
              type="text"
              placeholder="Localité, ex : Bordj El-Bahri"
              value={search}
              onChange={e => setSearch(e.target.value)}
              className="w-full pl-10 pr-3 py-2 bg-[#EEF1FF] border border-primary rounded-xl focus:outline-none focus:ring-2 focus:ring-primary text-sm md:text-base"
            />
          </div>
        </div>
      </div>

      {/* Content */}
      <div className="flex flex-col md:flex-row gap-6">
        {/* Map / Details – hidden on mobile */}
        <div className="hidden md:flex md:w-1/2 items-center justify-center rounded">
          {displayedResidence && displayedResidence.mapImage?.url ? (
            <div className="relative w-full">
              <Image
                src={displayedResidence.mapImage.url}
                alt={displayedResidence.name}
                width={600}
                height={1000}
                className="rounded object-cover h-full w-full transition-opacity duration-300"
                priority
              />
              {/* Optional: Display residence name on map */}
              <div className="absolute bottom-4 left-4 bg-white/90 backdrop-blur-sm px-4 py-2 rounded-lg shadow-lg">
                <p className="font-semibold text-primary">{displayedResidence.name}</p>
                <p className="text-sm text-gray-600">{displayedResidence.location}</p>
              </div>
            </div>
          ) : (
            <div className="text-gray-400 text-center">
              {filteredResidences.length === 0 
                ? 'Aucune résidence disponible'
                : 'Survolez une résidence pour voir sa localisation'}
            </div>
          )}
        </div>

        {/* Residences grid */}
        <div className="w-full md:w-1/2">
          <h2 className="font-semibold text-xl md:text-2xl mb-4">
            Où vous pouvez investir
          </h2>

          <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
            {filteredResidences.length === 0 ? (
              <div className="col-span-full text-center text-gray-500 py-8">
                Aucune résidence trouvée.
              </div>
            ) : (
              filteredResidences.map((res, i) => (
                <div
                  key={i}
                  onMouseEnter={() => setHoveredResidenceIndex(i)}
                  onMouseLeave={() => setHoveredResidenceIndex(null)}
                  onClick={() => handleResidenceClick(res)}
                  className={`bg-white rounded overflow-hidden cursor-pointer border transition-all duration-200 ${
                    hoveredResidenceIndex === i
                      ? 'md:scale-105 border-primary shadow-lg'
                      : 'hover:scale-[1.02] hover:shadow-md border-gray-200'
                  }`}
                >
                  <div className="relative">
                    <Image
                      src={res.image?.url}
                      alt={res.name}
                      width={400}
                      height={400}
                      className="w-full h-48 object-cover"
                    />
                    
                    {/* Hover overlay with location info */}
                    <div className={`absolute inset-0 bg-primary/90 flex items-center justify-center transition-opacity duration-200 ${
                      hoveredResidenceIndex === i ? 'opacity-100' : 'opacity-0'
                    }`}>
                      <div className="text-center text-white px-4">
                        <span className="inline-block px-4 py-2 bg-white text-primary rounded-full text-sm font-semibold">
                          Voir les projets →
                        </span>
                      </div>
                    </div>
                  </div>
                </div>
              ))
            )}
          </div>
        </div>
      </div>
    </div>
  );
};

export default InvestmentMap;