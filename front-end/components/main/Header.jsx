"use client";
import Link from "next/link";
import Image from "next/image";
import { useState } from "react";

export default function Header() {
	const [open, setOpen] = useState(false);

	const leftPages = [
		{ href: "/about", label: " À propos" },
		{ href: "/projects", label: "Projets " },
	];

	const rightPages = [
		{ href: "/localities", label: "Nos Localités" },
		{ href: "/blog", label: "Actualité" },
		{ href: "/contact", label: "Contact" },
	];

	return (
		<header className="absolute z-40 w-full bg-white/60 backdrop-blur-sm shadow-sm">
			<div className="mx-auto flex max-w-6xl items-center md:justify-center justify-end md:gap-8  px-4 py-1 sm:px-6">
				{/* left nav (desktop) */}
				<nav className="hidden md:flex md:items-center md:gap-4">
					{leftPages.map((p) => (
						<Link key={p.href} href={p.href} className="text-lg font-semibold  hover:text-primary transition">
							{p.label}
						</Link>
					))}
				</nav>

				{/* logo in center */}
				<div className="flex items-center justify-center">
					<Link href="/" className="flex items-center gap-2">
						<Image src="/assets/header-logo.png" alt="GAS" width={124} height={64} className="rounded" priority />
						<span className="sr-only">GAS Home</span>
					</Link>
				</div>

				{/* right nav (desktop) */}
				<nav className="hidden md:flex md:items-center md:gap-4">
					{rightPages.map((p) => (
						<Link key={p.href} href={p.href} className="text-lg font-semibold  hover:text-primary transition">
							{p.label}
						</Link>
					))}
				</nav>

				{/* mobile menu button */}
				<div className="md:hidden">
					<button
						aria-label="Toggle menu"
						onClick={() => setOpen((s) => !s)}
						className="inline-flex h-9 w-9 items-center justify-center rounded-md bg-transparent text-zinc-700 hover:bg-black/[.04]"
					>
						<svg className="h-5 w-5" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
							{open ? (
								<path d="M6 18L18 6M6 6l12 12" />
							) : (
								<path d="M4 6h16M4 12h16M4 18h16" />
							)}
						</svg>
					</button>
				</div>
			</div>

			{/* mobile panel */}
			<div className={`${open ? "block" : "hidden"} md:hidden border-t border-black/[.04] bg-white/60`}>
				<div className="mx-auto max-w-6xl px-4 py-3 sm:px-6">
					<div className="flex flex-col gap-2">
						{[...leftPages, ...rightPages].map((p) => (
							<Link key={p.href} href={p.href} className="block rounded px-2 py-2 text-sm font-medium text-zinc-700 hover:bg-black/[.03]">
								{p.label}
							</Link>
						))}
					</div>
				</div>
			</div>
		</header>
	);
}
