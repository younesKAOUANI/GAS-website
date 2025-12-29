"use client";

import { useState } from "react";

export default function NewsletterBanner({ backgroundImage }) {
  const [email, setEmail] = useState("");
  const [loading, setLoading] = useState(false);
  const [success, setSuccess] = useState(false);
  const [error, setError] = useState("");

  const handleSubmit = async (e) => {
    e.preventDefault();
    setError("");
    setSuccess(false);

    if (!email) {
      setError("Veuillez entrer un email valide.");
      return;
    }

    try {
      setLoading(true);

      const res = await fetch(
        `${process.env.NEXT_PUBLIC_STRAPI_URL}/api/newsletters`,
        {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ data: { email } }),
        }
      );

      if (!res.ok) throw new Error();

      setSuccess(true);
      setEmail("");
    } catch {
      setError("Une erreur est survenue. Réessayez.");
    } finally {
      setLoading(false);
    }
  };

  return (
    <section
      className="relative min-h-[600px] bg-cover bg-center py-32 flex items-center justify-center"
      style={{ backgroundImage: `url(${backgroundImage})` }}
    >
      {/* Overlay */}
      <div className="absolute inset-0 bg-black/40" />

      {/* Content */}
      <div className="relative z-10 mx-auto max-w-5xl px-6 text-center">
        <h1 className="text-3xl sm:text-4xl font-bold text-white">
          L’ACTU DU Group
        </h1>
      </div>

      {/* Newsletter Box */}
      <div
        className="
          absolute left-1/2 -bottom-20 sm:-bottom-24
          -translate-x-1/2
          w-[92%] sm:w-[80%] lg:w-[70%]
          rounded-2xl bg-white p-6 sm:p-8 lg:px-24
          text-center shadow-xl
        "
      >
        <h2 className="text-xl sm:text-2xl font-bold text-primary">
          Abonnez-Vous À Notre Newsletter
        </h2>

        <p className="mt-2 text-gray-600 text-sm sm:text-base">
          Trouvez des guides, des articles et des infographies pour vous aider à améliorer votre activité.
        </p>

        <form
          onSubmit={handleSubmit}
          className="mt-6 flex flex-col gap-4 sm:flex-row"
        >
          <input
            type="email"
            placeholder="Votre Email"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            className="flex-1 rounded-lg border border-gray-300 px-4 py-3
                       focus:border-primary focus:outline-none focus:ring-2 focus:ring-primary"
          />

          <button
            type="submit"
            disabled={loading}
            className="rounded-lg bg-primary px-8 py-3 font-medium text-white
                       transition hover:opacity-90 disabled:opacity-60"
          >
            {loading ? "..." : "S’abonne"}
          </button>
        </form>

        {success && (
          <p className="mt-3 text-green-600">
            Inscription réussie 🎉
          </p>
        )}

        {error && (
          <p className="mt-3 text-red-500">
            {error}
          </p>
        )}
      </div>
    </section>
  );
}
