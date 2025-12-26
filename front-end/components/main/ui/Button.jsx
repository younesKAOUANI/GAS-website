"use client";
import React from "react";

export default function Button({ children, variant = "primary", className = "", ...props }) {
  const base = "inline-flex items-center justify-center rounded-md px-4 py-2 text-sm font-medium transition";
  const variants = {
    primary: "bg-[var(--color-primary)] text-white hover:opacity-90",
    secondary: "bg-white border border-gray-200 text-gray-900 hover:bg-gray-50",
    ghost: "bg-transparent text-indigo-600 hover:bg-indigo-50",
  };

  // Spread remaining props so callers can pass `onClick`, `aria-*`, `disabled`, custom attributes, etc.
  return (
    <button {...props} className={`${base} ${variants[variant] || variants.primary} ${className}`}>
      {children}
    </button>
  );
}
