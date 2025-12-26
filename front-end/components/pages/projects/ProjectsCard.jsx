

export default function ProjectCard({
  image,
  title,
  details,
  location,
  status = "livré",
}) {
  return (
    <div className="w-full max-w-sm overflow-hidden rounded-2xl bg-white shadow-md">
      {/* Image */}
      <div className="relative">
        <img
          src={image}
          alt={title}
          className="h-64 w-full object-cover"
        />

        {/* Status badge */}
        <span className="absolute left-4 top-4 rounded-full bg-white/90 px-4 py-1 text-sm font-medium text-gray-700 shadow">
          {status}
        </span>
      </div>

      {/* Content */}
      <div className="p-5">
        <h3 className="text-lg font-semibold text-gray-900">
          {title}
        </h3>

        <p className="mt-1 text-sm text-gray-700">
          {details}
        </p>

        {/* Location */}
        <div className="mt-3 flex items-center gap-2 text-sm text-gray-600">
          <svg width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg">
            <rect width="28" height="28" rx="14" fill="#3C8FCD" fillOpacity="0.18" />
            <path d="M19.5 11.6C19.5 10.8646 19.3577 10.1364 19.0813 9.45697C18.8049 8.77755 18.3998 8.16021 17.8891 7.6402C17.3784 7.12019 16.772 6.7077 16.1048 6.42627C15.4375 6.14485 14.7223 6 14 6C13.2777 6 12.5625 6.14485 11.8952 6.42627C11.228 6.7077 10.6216 7.12019 10.1109 7.6402C9.60019 8.16021 9.19506 8.77755 8.91866 9.45697C8.64226 10.1364 8.5 10.8646 8.5 11.6C8.5 12.7096 8.82136 13.7416 9.36821 14.612H9.36193L14 22L18.6381 14.612H18.6326C19.199 13.7133 19.5001 12.6679 19.5 11.6ZM14 14C13.3748 14 12.7753 13.7471 12.3332 13.2971C11.8912 12.847 11.6429 12.2365 11.6429 11.6C11.6429 10.9635 11.8912 10.353 12.3332 9.90294C12.7753 9.45286 13.3748 9.2 14 9.2C14.6252 9.2 15.2247 9.45286 15.6668 9.90294C16.1088 10.353 16.3571 10.9635 16.3571 11.6C16.3571 12.2365 16.1088 12.847 15.6668 13.2971C15.2247 13.7471 14.6252 14 14 14Z" fill="#3C8FCD" />
          </svg>

          <span>{location}</span>
        </div>

        {/* Button */}
        <button className="mt-6 w-full rounded-md bg-primary py-3 text-sm font-medium text-white transition hover:opacity-90 active:scale-[0.98]">
          Voir plus
        </button>
      </div>
    </div>
  );
}
