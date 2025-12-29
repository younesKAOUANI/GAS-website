
// Next.js App Router API route
export async function POST(request) {
  try {
    const body = await request.json();
    const { message } = body || {};
    console.log('[Chat API] Incoming request body:', JSON.stringify(body));

    if (!message || !message.trim()) {
      console.warn('[Chat API] No message provided in request');
      return new Response(JSON.stringify({ error: 'Aucun message fourni' }), {
        status: 400,
        headers: { 'Content-Type': 'application/json' },
      });
    }

    const strapiBase = process.env.NEXT_PUBLIC_STRAPI_URL;
    if (!strapiBase) {
      console.error('[Chat API] NEXT_PUBLIC_STRAPI_URL is not set');
      return new Response(JSON.stringify({ error: 'URL de Strapi non configurée' }), {
        status: 500,
        headers: { 'Content-Type': 'application/json' },
      });
    }

    // Fetch all active chat responses from Strapi (populate rich text & relations)
    const fetchUrl = `${strapiBase.replace(/\/$/, '')}/api/chat-responses?filters[enabled][$eq]=true&populate=*`;
    console.log('[Chat API] Fetching Strapi URL:', fetchUrl);
    const strapiRes = await fetch(fetchUrl);
    console.log('[Chat API] Strapi response status:', strapiRes.status);
    if (!strapiRes.ok) {
      const text = await strapiRes.text().catch(() => '');
      console.error('[Chat API] Strapi fetch failed:', strapiRes.status, text.slice(0, 200));
      return new Response(JSON.stringify({ error: `Strapi a répondu avec ${strapiRes.status}`, details: text.slice(0, 1000) }), {
        status: 502,
        headers: { 'Content-Type': 'application/json' },
      });
    }

    let data;
    try {
      data = await strapiRes.json();
    } catch (e) {
      console.error('[Chat API] Failed to parse JSON from Strapi:', e);
      return new Response(JSON.stringify({ error: 'JSON invalide depuis Strapi' }), {
        status: 502,
        headers: { 'Content-Type': 'application/json' },
      });
    }

    const items = Array.isArray(data?.data) ? data.data : [];
    console.log('[Chat API] Strapi returned items count:', items.length);

    // Simple keyword matching (case-insensitive) - support both Strapi shapes
    const responseObj = items.find(r => {
      const trigger = r?.attributes?.trigger ?? r?.trigger ?? '';
      if (!trigger) return false;
      try {
        return message.toLowerCase().includes(String(trigger).toLowerCase());
      } catch (e) {
        return false;
      }
    });

    if (!responseObj) {
      console.log('[Chat API] No matching trigger found for message:', message);
    } else {
      console.log('[Chat API] Matched object shape:', responseObj.attributes ? 'attributes' : 'flat');
    }

    // Convert Strapi rich-text / component nodes to HTML
    const nodeToHtml = (node) => {
      if (node == null) return '';
      if (typeof node === 'string') return node;
      if (typeof node === 'number' || typeof node === 'boolean') return String(node);
      if (Array.isArray(node)) return node.map(nodeToHtml).join('');

      // Strapi often wraps populated single entry in { data: { attributes: ... } }
      if (node.data) return nodeToHtml(node.data);

      // Rich text common structures
      if (node.type === 'paragraph') {
        return `<p>${nodeToHtml(node.content || node.children || [])}</p>`;
      }
      if (node.type === 'heading' || node.type?.startsWith('heading')) {
        const level = node.level || 2;
        return `<h${level}>${nodeToHtml(node.content || node.children || [])}</h${level}>`;
      }
      if (node.type === 'list') {
        const items = (node.content || []).map(i => `<li>${nodeToHtml(i.content || i.children || [])}</li>`).join('');
        return `<ul>${items}</ul>`;
      }

      // Text leaf nodes
      if (node.text) return node.text;

      // Some rich text use 'content' arrays
      if (node.content) return nodeToHtml(node.content);

      // Direct value
      if (node.value) return node.value;

      // attributes wrapper (components)
      if (node.attributes) return nodeToHtml(node.attributes.response ?? node.attributes);

      // Fallback: concatenate object values
      try {
        return Object.values(node).map(nodeToHtml).join(' ');
      } catch (e) {
        return '';
      }
    };

    const rawResponse = responseObj ? (responseObj.attributes?.response ?? responseObj.response) : null;
    console.log('[Chat API] Raw response attribute:', JSON.stringify(rawResponse));

    let replyHtml = "<p>Désolé, je n'ai pas compris.</p>";
    if (rawResponse) {
      const html = nodeToHtml(rawResponse).trim();
      if (html) replyHtml = html;
      else {
        try { replyHtml = `<p>${String(rawResponse).slice(0,1000)}</p>`; } catch (e) { /* ignore */ }
      }
    }

    console.log('[Chat API] Replying with (HTML):', replyHtml.replace(/\n/g, ' '));

    return new Response(JSON.stringify({ reply: replyHtml }), {
      status: 200,
      headers: { 'Content-Type': 'application/json' },
    });
  } catch (err) {
    console.error('Chat API error:', err);
    return new Response(JSON.stringify({ error: 'Erreur interne du serveur' }), {
      status: 500,
      headers: { 'Content-Type': 'application/json' },
    });
  }
}
