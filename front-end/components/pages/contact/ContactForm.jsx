"use client";

import { useState } from "react";

export default function ContactForm() {
  const [formData, setFormData] = useState({
    firstName: "",
    lastName: "",
    email: "",
    phone: "",
    subject: "",
    message: "",
    requestType: "",
  });

  const [acceptedTerms, setAcceptedTerms] = useState(false);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState("");
  const [success, setSuccess] = useState(false);

  const handleChange = (e) => {
    setFormData((prev) => ({
      ...prev,
      [e.target.name]: e.target.value,
    }));
  };

  const validateForm = () => {
    if (
      !formData.firstName ||
      !formData.lastName ||
      !formData.email ||
      !formData.message ||
      !formData.requestType
    ) {
      return "Veuillez remplir tous les champs obligatoires.";
    }

    if (!/^\S+@\S+\.\S+$/.test(formData.email)) {
      return "Adresse email invalide.";
    }

    if (!acceptedTerms) {
      return "Vous devez accepter les conditions avant d’envoyer.";
    }

    return null;
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    setError("");
    setSuccess(false);

    const validationError = validateForm();
    if (validationError) {
      setError(validationError);
      return;
    }

    try {
      setLoading(true);

      const res = await fetch(
        `${process.env.NEXT_PUBLIC_STRAPI_URL}/api/contact-responses`,
        {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({
            data: formData, // ✅ English keys only
          }),
        }
      );

      if (!res.ok) {
        throw new Error("Erreur lors de l’envoi du message.");
      }

      setSuccess(true);
      setFormData({
        firstName: "",
        lastName: "",
        email: "",
        phone: "",
        subject: "",
        message: "",
        requestType: "",
      });
      setAcceptedTerms(false);
    } catch (err) {
      setError(err.message);
    } finally {
      setLoading(false);
    }
  };

  return (
    <section className="py-20 bg-white">
      <div className="mx-auto max-w-3xl px-6">
        <div className="rounded-2xl bg-[#EEF1FF] p-8 shadow-sm">
          <h2 className="mb-6 text-xl font-semibold">
            Laissez-nous vos coordonnées :
          </h2>

          <form className="space-y-5" onSubmit={handleSubmit}>
            {/* Name */}
            <div className="grid grid-cols-1 gap-4 md:grid-cols-2">
              <input
                name="lastName"
                value={formData.lastName}
                onChange={handleChange}
                placeholder="Nom"
                className="input"
              />
              <input
                name="firstName"
                value={formData.firstName}
                onChange={handleChange}
                placeholder="Prénom"
                className="input"
              />
            </div>

            <input
              name="email"
              type="email"
              value={formData.email}
              onChange={handleChange}
              placeholder="Email"
              className="input"
            />

            <input
              name="phone"
              value={formData.phone}
              onChange={handleChange}
              placeholder="Téléphone"
              className="input"
            />

            <input
              name="subject"
              value={formData.subject}
              onChange={handleChange}
              placeholder="Objet"
              className="input"
            />

            <textarea
              name="message"
              value={formData.message}
              onChange={handleChange}
              rows={4}
              placeholder="Message"
              className="input"
            />

            <select
              name="requestType"
              value={formData.requestType}
              onChange={handleChange}
              className="input"
            >
              <option value="">-- Type de demande --</option>
              <option value="Information">Information</option>
              <option value="Visit">Visite</option>
              <option value="Complaint">Réclamation</option>
            </select>

            {/* Terms */}
            <div className="flex gap-2">
              <input
                type="checkbox"
                checked={acceptedTerms}
                onChange={(e) => setAcceptedTerms(e.target.checked)}
              />
              <p className="text-sm text-gray-600">
                J’accepte les Conditions Générales d’Utilisation
              </p>
            </div>

            {error && <p className="text-sm text-red-600">{error}</p>}
            {success && (
              <p className="text-sm text-green-600">
                Message envoyé avec succès.
              </p>
            )}

            <button
              type="submit"
              disabled={loading}
              className="w-full rounded-md bg-primary py-2 text-white disabled:opacity-50"
            >
              {loading ? "Envoi..." : "Envoyer"}
            </button>
          </form>
        </div>
      </div>

      <style jsx>{`
        .input {
          width: 100%;
          border-radius: 6px;
          border: 1px solid #d1d5db;
          padding: 10px;
          outline: none;
        }
        .input:focus {
          border-color: var(--color-primary);
        }
      `}</style>
    </section>
  );
}
