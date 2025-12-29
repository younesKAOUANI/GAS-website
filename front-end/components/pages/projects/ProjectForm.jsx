"use client";

import { WILAYAS } from "@/utils/wilayas";
import React, { useState } from "react";

export default function ProjectForm({ projectName }) {
  const [form, setForm] = useState({
    firstName: "",
    lastName: "",
    phone: "",
    wilaya: "",
    locality: "",
    typology: "",
    comment: "",
  });

  const handleChange = (e) => {
    const { name, value } = e.target;
    setForm((prev) => ({ ...prev, [name]: value }));
  };

  const handleSubmit = async (e) => {
    e.preventDefault();

    // Simple validation
    if (!form.firstName || !form.lastName || !form.phone || !form.wilaya || !form.locality || !form.typology) {
      alert("Veuillez remplir tous les champs obligatoires.");
      return;
    }

    try {
      // include predefined projectName in the submitted data
      const payload = { ...form, projectName: projectName || "" };

      const res = await fetch(`${process.env.NEXT_PUBLIC_STRAPI_URL}/api/project-contacts`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ data: payload }),
      });

      if (!res.ok) throw new Error("Erreur lors de l'envoi du formulaire");

      alert("Formulaire envoyé avec succès !");
      setForm({
        firstName: "",
        lastName: "",
        phone: "",
        wilaya: "",
        locality: "",
        typology: "",
        comment: "",
      });
    } catch (err) {
      console.error(err);
      alert("Une erreur est survenue, veuillez réessayer.");
    }
  };

  return (
    <section className="mx-auto max-w-4xl px-6 py-16">
      <form onSubmit={handleSubmit} className="rounded-2xl bg-[#F2F3FF] p-8 shadow-sm">
        <h2 className="mb-8 text-2xl font-bold">Laissez-nous vos coordonnées :</h2>

        <div className="grid gap-6 md:grid-cols-2">
          <div>
            <label className="mb-2 block font-medium">Nom</label>
            <input
              name="lastName"
              value={form.lastName}
              onChange={handleChange}
              placeholder="Nom complet"
              className="w-full rounded-lg border border-blue-300 px-4 py-3 outline-none focus:ring-2 focus:ring-blue-400"
            />
          </div>

          <div>
            <label className="mb-2 block font-medium">Prénom</label>
            <input
              name="firstName"
              value={form.firstName}
              onChange={handleChange}
              placeholder="Prénom"
              className="w-full rounded-lg border border-blue-300 px-4 py-3 outline-none focus:ring-2 focus:ring-blue-400"
            />
          </div>

          <div>
            <label className="mb-2 block font-medium">Téléphone</label>
            <input
              name="phone"
              value={form.phone}
              onChange={handleChange}
              placeholder="Numéro de téléphone"
              className="w-full rounded-lg border border-blue-300 px-4 py-3 outline-none focus:ring-2 focus:ring-blue-400"
            />
          </div>

          <div>
            <label className="mb-2 block font-medium">Wilaya</label>
            <select
              name="wilaya"
              value={form.wilaya}
              onChange={handleChange}
              className="w-full rounded-lg border border-blue-300 px-4 py-3 bg-white outline-none focus:ring-2 focus:ring-blue-400"
            >
              <option value="" className="bg-white">-- Sélectionnez votre wilaya --</option>
              {WILAYAS.map((w) => (
                <option className="bg-white hover:bg-primary" key={w} value={w}>{w}</option>
              ))}
            </select>
          </div>
        </div>

        <div className="mt-6">
          <label className="mb-2 block font-medium">Localité</label>
          <input
            name="locality"
            value={form.locality}
            onChange={handleChange}
            placeholder="Localité souhaitée"
            className="w-full rounded-lg border border-blue-300 px-4 py-3 outline-none focus:ring-2 focus:ring-blue-400"
          />
        </div>

        <div className="mt-6">
          <label className="mb-2 block font-medium">Typologie</label>
          <select
            name="typology"
            value={form.typology}
            onChange={handleChange}
            className="w-full bg-white rounded-lg border border-blue-300 px-4 py-3 outline-none focus:ring-2 focus:ring-blue-400"
          >
            <option className="bg-white" value="" > -- Choisissez --</option>
            <option className="bg-white" value="F2">F2</option>
            <option className="bg-white" value="F3">F3</option>
            <option className="bg-white" value="F4">F4</option>
            <option className="bg-white" value="Duplex">Duplex</option>
          </select>
        </div>

        <div className="mt-6">
          <label className="mb-2 block font-medium">Commentaire</label>
          <textarea
            name="comment"
            value={form.comment}
            onChange={handleChange}
            rows={4}
            className="w-full rounded-lg border border-blue-300 px-4 py-3 outline-none focus:ring-2 focus:ring-blue-400"
          />
        </div>

        <button
          type="submit"
          className="mx-auto mt-8 block w-48 rounded-lg bg-primary py-3 text-white transition hover:bg-blue-800"
        >
          Envoyer
        </button>
      </form>
    </section>
  );
}
