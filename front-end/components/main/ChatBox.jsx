"use client";

import { useState } from "react";

// Logo image component
const Logo = () => (
  <img
    src="/assets/header-logo.png"
    alt="Logo"
    className="h-10 w-10 p-1 mr-2 rounded-full bg-white object-cover border-2 border-primary shadow"
    style={{ minWidth: 48, minHeight: 48 }}
  />
);
// Simple SVG chat icon
const ChatIcon = () => (
  <svg width="32" height="32" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path d="M21 15.5A2.5 2.5 0 0 1 18.5 18H7.414l-3.707 3.707A1 1 0 0 1 2 20.293V5.5A2.5 2.5 0 0 1 4.5 3h14A2.5 2.5 0 0 1 21 5.5v10Z" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round"/>
  </svg>
);

export default function ChatBox() {
  const [open, setOpen] = useState(false);
  const [messages, setMessages] = useState([
    {
      type: "bot",
      text: "Vous avez des questions ? Je me ferai un plaisir de vous aider."
    }
  ]);
  const [input, setInput] = useState("");
  const [isLoading, setIsLoading] = useState(false);

  const sendMessage = async () => {
    if (isLoading) return;
    if (!input.trim()) return;

    const userMessage = input.trim();
    // append user message using functional update to avoid stale state
    setMessages(prev => [...prev, { type: "user", text: userMessage }]);
    setInput("");
    setIsLoading(true);

    try {
      const res = await fetch("/api/chat", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ message: userMessage }),
      });

      if (!res.ok) {
        // Try to extract error message from response body
        let errText = `Erreur ${res.status}`;
        try {
          const errJson = await res.json();
          if (errJson?.error) errText = errJson.error;
        } catch (e) {
          // ignore json parse error
        }
        throw new Error(errText);
      }

      let data;
      try {
        data = await res.json();
      } catch (e) {
        throw new Error('Réponse du serveur invalide');
      }

      const reply = data?.reply ?? 'Désolé, je n\'ai pas de réponse.';
      setMessages(prev => [...prev, { type: "bot", text: reply }]);
    } catch (err) {
      console.error('Chat API error:', err);
      setMessages(prev => [...prev, { type: 'bot', text: 'Erreur de communication avec le serveur. Veuillez réessayer.' }]);
    } finally {
      setIsLoading(false);
    }
  };

  return (
    <div className="fixed bottom-6 right-6 z-50">
      {/* Chat bubble toggle */}
      {!open && (
        <button
          onClick={() => setOpen(true)}
          className="w-14 h-14 rounded-full bg-primary shadow-lg text-white flex items-center justify-center transition-transform duration-300 hover:scale-110 focus:outline-none"
          aria-label="Open chat"
        >
          <ChatIcon />
        </button>
      )}

      {/* Chat window with animation */}
      {open && (
        <div
          className="w-80 h-96 bg-white border border-gray-200 rounded-2xl shadow-2xl flex flex-col animate-fade-in"
          style={{ animation: 'fadeInUp 0.3s cubic-bezier(.4,0,.2,1)' }}
        >
          {/* Banner at the top */}
          <div className="bg-primary text-white py-3 font-semibold text-base flex items-center justify-between relative rounded-t-2xl px-4">
            <div className="flex items-center">
              <Logo />
              <span>Groupe Ahmed Soltan</span>
            </div>
            <button
              type="button"
              className="absolute right-3 top-1/2 -translate-y-1/2 text-white hover:text-gray-200"
              onClick={() => setOpen(false)}
              aria-label="Fermer le chat"
            >
              <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" strokeWidth={2} stroke="currentColor" className="w-5 h-5">
                <path strokeLinecap="round" strokeLinejoin="round" d="M6 18L18 6M6 6l12 12" />
              </svg>
            </button>
          </div>

          <div className="flex-1 p-3 overflow-y-auto space-y-2 bg-gray-50">
            {messages.map((m, i) => (
              <div
                key={i}
                className={`flex ${m.type === "user" ? "justify-end" : "justify-start"}`}
              >
                {m.type === "bot" && (
                  <span className="flex items-start mr-2">
                    <Logo />
                  </span>
                )}
                <span
                  className={`inline-block px-4 py-2 rounded-2xl shadow-sm max-w-[75%] text-sm bg-primary text-white ${
                    m.type === "user" ? "rounded-br-none" : "rounded-bl-none"
                  }`}
                  {...(m.type === 'bot' ? { dangerouslySetInnerHTML: { __html: m.text } } : {})}
                >
                  {m.type === 'user' ? m.text : null}
                </span>
              </div>
            ))}
          </div>

          <form
            className="flex p-3 border-t gap-2 bg-white rounded-b-2xl"
            onSubmit={e => {
              e.preventDefault();
              sendMessage();
            }}
          >
            <input
              className="flex-1 border border-gray-300 rounded-lg px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-primary"
              value={input}
              onChange={e => setInput(e.target.value)}
              placeholder="Écrivez votre message..."
              onKeyDown={e => e.key === "Enter" && sendMessage()}
              autoFocus
            />
            <button
              type="submit"
              className="bg-primary hover:bg-primary/90 text-white px-4 py-2 rounded-lg transition-colors text-sm font-semibold shadow"
            >
              Envoyer
            </button>
          </form>
        </div>
      )}
      {/* Animation keyframes */}
      <style jsx>{`
        @keyframes fadeInUp {
          0% { opacity: 0; transform: translateY(40px) scale(0.95); }
          100% { opacity: 1; transform: translateY(0) scale(1); }
        }
        .animate-fade-in {
          animation: fadeInUp 0.3s cubic-bezier(.4,0,.2,1);
        }
      `}</style>
    </div>
  );
}
