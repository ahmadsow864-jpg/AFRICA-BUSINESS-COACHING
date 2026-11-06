// Outils communs à toutes les pages.
(function () {
  var cfg = window.ABC_CONFIG || {};
  var data = window.ABC_DATA || { services: [], settings: {}, countries: [], poles: {} };
  var base = document.documentElement.getAttribute("data-base") || "";

  var configured = !!(cfg.SUPABASE_URL && cfg.SUPABASE_ANON_KEY && window.supabase);
  if (/^sb_secret_/.test(cfg.SUPABASE_ANON_KEY || "") || /service_role/.test(atob64Safe(cfg.SUPABASE_ANON_KEY))) {
    // Garde-fou : refuser une clé secrète placée par erreur dans le navigateur.
    configured = false;
    console.error("Clé service_role détectée dans config.js : retirez-la immédiatement.");
  }
  var sb = configured
    ? window.supabase.createClient(cfg.SUPABASE_URL, cfg.SUPABASE_ANON_KEY, {
        auth: { persistSession: true, autoRefreshToken: true }
      })
    : null;

  function atob64Safe(jwt) {
    try { return atob(String(jwt || "").split(".")[1].replace(/-/g, "+").replace(/_/g, "/")); }
    catch (e) { return ""; }
  }

  // Création sûre d'éléments DOM (le texte n'est jamais interprété comme du HTML).
  function h(tag, attrs) {
    var el = document.createElement(tag);
    if (attrs) {
      Object.keys(attrs).forEach(function (k) {
        var v = attrs[k];
        if (v === null || v === undefined || v === false) return;
        if (k === "class") el.className = v;
        else if (k === "text") el.textContent = v;
        else if (k.slice(0, 2) === "on" && typeof v === "function") el.addEventListener(k.slice(2), v);
        else if (k === "href" || k === "src") el.setAttribute(k, safeUrl(v));
        else el.setAttribute(k, v === true ? "" : String(v));
      });
    }
    for (var i = 2; i < arguments.length; i++) append(el, arguments[i]);
    return el;
  }
  function append(el, child) {
    if (child === null || child === undefined || child === false) return;
    if (Array.isArray(child)) { child.forEach(function (c) { append(el, c); }); return; }
    el.appendChild(typeof child === "string" || typeof child === "number" ? document.createTextNode(String(child)) : child);
  }
  function clear(el) { while (el.firstChild) el.removeChild(el.firstChild); return el; }

  // N'autorise que les liens sûrs (pas de javascript:).
  function safeUrl(u) {
    u = String(u || "");
    if (/^(https:\/\/|mailto:|tel:|#|\.{0,2}\/|[a-z0-9_-]+(\/|\.html|\?))/i.test(u) || u === "") return u;
    return "#";
  }
  // Images : URL https (ex. Supabase Storage) ou image locale "img/…".
  function imgUrl(u) {
    u = String(u || "");
    if (/^https:\/\//.test(u)) return u;
    if (/^img\//.test(u)) return base + u;
    return "";
  }

  function byOrder(a, b) { return (a.sort || 0) - (b.sort || 0); }

  async function loadServices() {
    if (sb) {
      var r = await sb.from("services").select("*").eq("published", true).order("sort");
      if (!r.error && r.data && r.data.length) return r.data;
    }
    return data.services.slice().sort(byOrder);
  }

  async function loadSettings() {
    var s = Object.assign({}, data.settings);
    if (sb) {
      var r = await sb.from("site_settings").select("key,value");
      if (!r.error && r.data) r.data.forEach(function (row) { if (row.value) s[row.key] = row.value; });
    }
    return s;
  }

  function flag() {
    return h("span", { class: "flag-sn", "aria-hidden": "true" }, h("span"), h("span"), h("span"));
  }

  function notice(el, msg, type) {
    clear(el);
    el.className = "msg" + (type ? " msg--" + type : "");
    el.textContent = msg || "";
  }

  // Menu mobile + année
  document.addEventListener("DOMContentLoaded", function () {
    var y = document.getElementById("year");
    if (y) y.textContent = new Date().getFullYear();
    var toggle = document.querySelector(".nav-toggle");
    var nav = document.querySelector(".nav");
    if (toggle && nav) {
      toggle.addEventListener("click", function () {
        var open = nav.classList.toggle("is-open");
        toggle.setAttribute("aria-expanded", open ? "true" : "false");
      });
      nav.querySelectorAll("a").forEach(function (a) {
        a.addEventListener("click", function () {
          nav.classList.remove("is-open");
          toggle.setAttribute("aria-expanded", "false");
        });
      });
    }
  });

  window.ABC = {
    sb: sb, configured: configured, data: data, base: base,
    h: h, clear: clear, imgUrl: imgUrl, safeUrl: safeUrl, flag: flag, notice: notice,
    loadServices: loadServices, loadSettings: loadSettings
  };
})();
