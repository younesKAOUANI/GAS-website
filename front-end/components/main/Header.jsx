"use client";
import Link from "next/link";
import Image from "next/image";
import { useState, useEffect, useRef } from "react";
import { useRouter } from "next/navigation";

export default function Header() {
  const [open, setOpen] = useState(false);
  const [query, setQuery] = useState("");
  const [suggestions, setSuggestions] = useState([]);
  const [allProjectsCache, setAllProjectsCache] = useState(null);
  const [loadingSearch, setLoadingSearch] = useState(false);
  const [showDropdown, setShowDropdown] = useState(false);
  const [searchOpen, setSearchOpen] = useState(false);
  
  const dropdownRef = useRef(null);
  const inputRef = useRef(null);
  const router = useRouter();

  // Normalization helper
  const normalize = (s) =>
    String(s || "")
      .normalize("NFD")
      .replace(/\p{Diacritic}/gu, "")
      .replace(/-/g, " ")
      .trim()
      .toLowerCase();

  // Fetch all projects - Updated for Strapi v5
  const fetchAllProjects = async () => {
    try {
      const res = await fetch(
        `${process.env.NEXT_PUBLIC_STRAPI_URL}/api/projects?populate=coverImage`
      );
      if (!res.ok) return [];
      
      const json = await res.json();
      const data = json.data || [];
console.log(data	);
      const mapped = data.map((item) => {
        // Strapi v5 structure
        const coverImageData = item.coverImage;
        let imageUrl = null;

        if (coverImageData) {
          const url = coverImageData.url || coverImageData.formats?.small?.url;
          imageUrl = url ? `${process.env.NEXT_PUBLIC_STRAPI_URL}${url}` : null;
        }

        const name = item.name || item.title || "";
        const slugFromName = name
          ? name.toString().toLowerCase().replace(/\s+/g, "-")
          : null;

        return {
          id: item.documentId || item.id,
          slug: item.slug || slugFromName || String(item.id),
          title: name || "Untitled",
          location: (item.location || "").toString(),
          image: imageUrl,
        };
      });

      return mapped;
    } catch (err) {
      console.error("Failed to fetch projects for search", err);
      return [];
    }
  };

  // Search logic with debounce
  useEffect(() => {
    if (!query.trim()) {
      setSuggestions([]);
      setShowDropdown(false);
      return;
    }

    let mounted = true;
    const handler = setTimeout(async () => {
      setLoadingSearch(true);
      try {
        let list = allProjectsCache;
        if (!list) {
          list = await fetchAllProjects();
          if (mounted) setAllProjectsCache(list);
        }

        const q = normalize(query);
        const matched = (list || []).filter((p) => {
          return (
            normalize(p.title).includes(q) || normalize(p.location).includes(q)
          );
        });

        if (mounted) {
          setSuggestions(matched);
          setShowDropdown(matched.length > 0);
        }
      } catch (err) {
        console.error("Search failed", err);
      } finally {
        if (mounted) setLoadingSearch(false);
      }
    }, 300);

    return () => {
      mounted = false;
      clearTimeout(handler);
    };
  }, [query, allProjectsCache]);

  // Close dropdown on outside click
  useEffect(() => {
    const onDoc = (e) => {
      if (!dropdownRef.current) return;
      if (!dropdownRef.current.contains(e.target)) {
        setShowDropdown(false);
      }
    };
    document.addEventListener("click", onDoc);
    return () => document.removeEventListener("click", onDoc);
  }, []);

  // Handle suggestion click
  const handleSuggestionClick = (slug) => {
    setShowDropdown(false);
    setQuery("");
    setSearchOpen(false);
    setSuggestions([]);
    router.push(`/projects/${slug}`);
  };

  // Close mobile menu when route changes
  useEffect(() => {
    setOpen(false);
  }, []);

  const leftPages = [
    { href: "/about", label: "À propos" },
    { href: "/projects", label: "Projets" },
  ];

  const rightPages = [
    { href: "/localities", label: "Nos Localités" },
    { href: "/blog", label: "Actualité" },
    { href: "/contact", label: "Contact" },
  ];

  return (
    <header className="absolute z-40 w-full bg-white/60 backdrop-blur-sm shadow-sm">
      <div className="mx-auto flex max-w-6xl items-center justify-between md:justify-center md:gap-8 px-4 py-1 sm:px-6">
        {/* Left nav (desktop) */}
        <nav className="hidden md:flex md:items-center md:gap-4">
          {leftPages.map((p) => (
            <Link
              key={p.href}
              href={p.href}
              className="text-lg font-semibold hover:text-primary transition"
            >
              {p.label}
            </Link>
          ))}
        </nav>

        {/* Logo in center */}
        <div className="flex items-center justify-center">
          <Link href="/" className="flex items-center gap-2">
            <Image
              src="/assets/header-logo.png"
              alt="GAS"
              width={124}
              height={64}
              className="rounded"
              priority
            />
            <span className="sr-only">GAS Home</span>
          </Link>
        </div>

        {/* Right nav (desktop) */}
        <nav className="hidden md:flex md:items-center md:gap-4">
          {rightPages.map((p) => (
            <Link
              key={p.href}
              href={p.href}
              className="text-lg font-semibold hover:text-primary transition"
            >
              {p.label}
            </Link>
          ))}
        </nav>

        {/* Desktop Search */}
        <div className="hidden md:block md:absolute md:right-6" ref={dropdownRef}>
          {!searchOpen ? (
            <button
              className="inline-flex h-9 w-9 items-center justify-center rounded-full bg-primary text-white hover:opacity-90 transition"
              aria-label="Open search"
              onClick={() => {
                setSearchOpen(true);
                setTimeout(() => inputRef.current?.focus(), 50);
              }}
            >
              <svg
                className="h-5 w-5"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                strokeWidth="2"
              >
                <circle cx="11" cy="11" r="8" />
                <path d="m21 21-4.35-4.35" />
              </svg>
            </button>
          ) : (
            <div className="flex items-center gap-2">
              <input
                ref={inputRef}
                value={query}
                onChange={(e) => {
                  setQuery(e.target.value);
                }}
                placeholder="Rechercher des projets..."
                className="w-64 rounded-md border border-gray-300 px-3 py-2 text-sm shadow-sm focus:border-primary focus:outline-none focus:ring-2 focus:ring-primary/30"
                aria-label="Search projects"
                onFocus={() => query.trim() && setShowDropdown(true)}
              />
              <button
                className="inline-flex h-9 w-9 items-center justify-center rounded-full bg-gray-100 hover:bg-gray-200 transition"
                aria-label="Close search"
                onClick={() => {
                  setSearchOpen(false);
                  setQuery("");
                  setSuggestions([]);
                  setShowDropdown(false);
                }}
              >
                <svg
                  className="h-4 w-4"
                  viewBox="0 0 24 24"
                  fill="none"
                  stroke="currentColor"
                  strokeWidth="2"
                >
                  <path d="M18 6 6 18M6 6l12 12" />
                </svg>
              </button>
            </div>
          )}

          {/* Search dropdown */}
          {showDropdown && (
            <ul className="absolute right-0 top-full z-50 mt-2 w-80 max-h-96 overflow-y-auto rounded-lg bg-white shadow-xl border border-gray-200">
              {loadingSearch ? (
                <li className="px-4 py-3 text-sm text-gray-500">
                  Recherche en cours...
                </li>
              ) : suggestions.length > 0 ? (
                suggestions.slice(0, 6).map((s) => (
                  <li key={s.slug} className="border-b border-gray-100 last:border-b-0">
                    <button
                      onClick={() => handleSuggestionClick(s.slug)}
                      className="flex items-start gap-3 w-full text-left px-4 py-3 hover:bg-gray-50 transition"
                    >
                      {s.image && (
                        <img
                          src={s.coverImage?.url}
                          alt={s.title}
                          className="rounded object-cover flex-shrink-0"
                        />
                      )}
                      <div className="flex-1 min-w-0">
                        <span className="font-medium text-gray-900 block truncate">
                          {s.title}
                        </span>
                        <span className="text-xs text-gray-500">{s.location}</span>
                      </div>
                    </button>
                  </li>
                ))
              ) : (
                <li className="px-4 py-3 text-sm text-gray-500">
                  Aucun résultat trouvé
                </li>
              )}
            </ul>
          )}
        </div>

        {/* Mobile menu button */}
        <div className="md:hidden flex items-center gap-2">
          <button
            aria-label="Toggle menu"
            onClick={() => setOpen((s) => !s)}
            className="inline-flex h-9 w-9 items-center justify-center rounded-md bg-transparent text-zinc-700 hover:bg-black/[.04]"
          >
            <svg
              className="h-5 w-5"
              viewBox="0 0 24 24"
              fill="none"
              stroke="currentColor"
              strokeWidth="2"
            >
              {open ? (
                <path d="M6 18L18 6M6 6l12 12" />
              ) : (
                <path d="M4 6h16M4 12h16M4 18h16" />
              )}
            </svg>
          </button>
        </div>
      </div>

      {/* Mobile panel */}
      <div
        className={`${
          open ? "block" : "hidden"
        } md:hidden border-t border-black/[.04] bg-white/60 backdrop-blur-sm`}
      >
        <div className="mx-auto max-w-6xl px-4 py-3 sm:px-6">
          {/* Mobile search */}
          <div className="mb-3 relative" ref={dropdownRef}>
            <div className="relative">
              <input
                value={query}
                onChange={(e) => setQuery(e.target.value)}
                placeholder="Rechercher des projets..."
                className="w-full rounded-md border border-gray-300 pl-10 pr-3 py-2 text-sm shadow-sm focus:border-primary focus:outline-none focus:ring-2 focus:ring-primary/30"
                aria-label="Search projects"
              />
              <svg
                className="absolute left-3 top-1/2 -translate-y-1/2 h-4 w-4 text-gray-400"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                strokeWidth="2"
              >
                <circle cx="11" cy="11" r="8" />
                <path d="m21 21-4.35-4.35" />
              </svg>
            </div>

            {/* Mobile search dropdown */}
            {query.trim() && (
              <ul className="absolute left-0 right-0 top-full z-50 mt-1 max-h-64 overflow-y-auto rounded-lg bg-white shadow-xl border border-gray-200">
                {loadingSearch ? (
                  <li className="px-4 py-3 text-sm text-gray-500">
                    Recherche en cours...
                  </li>
                ) : suggestions.length > 0 ? (
                  suggestions.slice(0, 6).map((s) => (
                    <li key={s.slug} className="border-b border-gray-100 last:border-b-0">
                      <button
                        onClick={() => {
                          handleSuggestionClick(s.slug);
                          setOpen(false);
                        }}
                        className="flex items-start gap-3 w-full text-left px-4 py-3 hover:bg-gray-50 transition"
                      >
                        {s.image && (
                          <Image
                            src={s.image}
                            alt={s.title}
                            width={40}
                            height={40}
                            className="rounded object-cover flex-shrink-0"
                          />
                        )}
                        <div className="flex-1 min-w-0">
                          <span className="font-medium text-gray-900 block truncate text-sm">
                            {s.title}
                          </span>
                          <span className="text-xs text-gray-500">{s.location}</span>
                        </div>
                      </button>
                    </li>
                  ))
                ) : (
                  <li className="px-4 py-3 text-sm text-gray-500">
                    Aucun résultat trouvé
                  </li>
                )}
              </ul>
            )}
          </div>

          {/* Mobile navigation links */}
          <div className="flex flex-col gap-2">
            {[...leftPages, ...rightPages].map((p) => (
              <Link
                key={p.href}
                href={p.href}
                onClick={() => setOpen(false)}
                className="block rounded px-2 py-2 text-sm font-medium text-zinc-700 hover:bg-black/[.03]"
              >
                {p.label}
              </Link>
            ))}
          </div>
        </div>
      </div>
    </header>
  );
}