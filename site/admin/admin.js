// Espace administrateur — Africa Business Development Consulting
// La sécurité réelle est assurée côté Supabase (RLS + MFA aal2) : cette page ne fait
// qu'afficher ce que la base autorise. Sans double authentification, aucune donnée admin n'est lisible.
(function () {
  var A = window.ABC, h = A.h, sb = A.sb;
  var IDLE_MINUTES = 30;
  var POLES = A.data.poles;
  var CYCLES = { pro: "Formation professionnelle", college: "Collège", lycee: "Lycée", licence: "Licence", master: "Master", doctorat: "Doctorat" };
  var me = null;
  var LABELS = { nouveau: "Nouveau", traite: "Traité", archive: "Archivé", en_attente: "En attente", active: "Active", refusee: "Refusée", expiree: "Expirée" };
  function statusTag(st) { return h("span", { class: "status status--" + st, text: LABELS[st] || st }); }

  function $(id) { return document.getElementById(id); }
  function show(id) {
    ["login-view", "mfa-view", "info-view", "app-view"].forEach(function (v) { $(v).hidden = v !== id; });
  }
  function info(title, text) { $("info-title").textContent = title; $("info-text").textContent = text; show("info-view"); }
  function flash(text, type) { A.notice($("app-msg"), text, type); if (text) window.scrollTo(0, 0); }
  function fail(r) { if (r && r.error) { flash("Erreur : " + r.error.message, "error"); return true; } return false; }
  function dt(d) { return d ? new Date(d).toLocaleString("fr-FR") : "—"; }
  function field(label, input) { return h("label", null, label, input); }
  function input(name, value, attrs) { return h("input", Object.assign({ name: name, value: value == null ? "" : value }, attrs || {})); }
  function textarea(name, value, rows) { var t = h("textarea", { name: name, rows: rows || 4 }); t.value = value || ""; return t; }
  function select(name, options, value) {
    var s = h("select", { name: name });
    options.forEach(function (o) { s.appendChild(h("option", { value: o[0], text: o[1] })); });
    s.value = value == null ? "" : String(value);
    return s;
  }
  function checkbox(name, checked, label) {
    var c = h("input", { type: "checkbox", name: name });
    c.checked = !!checked;
    return h("label", { class: "check" }, c, " " + label);
  }
  function table(headers, rows) {
    return h("div", { class: "table-wrap" }, h("table", { class: "table" },
      h("thead", null, h("tr", null, headers.map(function (x) { return h("th", { text: x }); }))),
      h("tbody", null, rows.length ? rows : h("tr", null, h("td", { colspan: headers.length, class: "muted", text: "Aucune donnée." })))
    ));
  }
  function btn(text, onclick, cls) { return h("button", { type: "button", class: "btn btn--small " + (cls || ""), text: text, onclick: onclick }); }
  function confirmDo(text, fn) { return function () { if (window.confirm(text)) fn(); }; }

  if (!sb) {
    info("Supabase non configuré", "Renseignez SUPABASE_URL et SUPABASE_ANON_KEY dans js/config.js (voir docs/INSTALLATION.md), puis rechargez cette page.");
    return;
  }

  // ===================== AUTHENTIFICATION =====================
  async function start() {
    var s = await sb.auth.getSession();
    if (!s.data.session) return show("login-view");
    me = s.data.session.user;
    $("admin-email").textContent = me.email;
    $("admin-user").hidden = false;

    var role = await sb.rpc("has_admin_role");
    if (role.error || role.data !== true) {
      await sb.auth.signOut();
      return info("Accès refusé", "Ce compte n'a pas les droits administrateur.");
    }
    var aal = await sb.auth.mfa.getAuthenticatorAssuranceLevel();
    if (aal.data && aal.data.currentLevel === "aal2") return openApp();
    return startMfa();
  }

  $("login-form").addEventListener("submit", async function (e) {
    e.preventDefault();
    var d = new FormData(e.target);
    A.notice($("login-msg"), "Connexion…");
    var r = await sb.auth.signInWithPassword({ email: String(d.get("email")).trim(), password: String(d.get("password")) });
    if (r.error) return A.notice($("login-msg"), "Identifiants incorrects.", "error");
    e.target.reset();
    start();
  });

  var mfaFactorId = null;
  async function startMfa() {
    show("mfa-view");
    var f = await sb.auth.mfa.listFactors();
    var all = (f.data && f.data.all) || [];
    var verified = all.filter(function (x) { return x.factor_type === "totp" && x.status === "verified"; })[0];
    if (verified) {
      mfaFactorId = verified.id;
      $("mfa-enroll").hidden = true;
      $("mfa-verify-text").hidden = false;
      return;
    }
    // Nettoyer d'anciennes inscriptions non terminées, puis inscrire un nouveau facteur.
    for (var i = 0; i < all.length; i++) {
      if (all[i].status !== "verified") await sb.auth.mfa.unenroll({ factorId: all[i].id });
    }
    var en = await sb.auth.mfa.enroll({ factorType: "totp", friendlyName: "Admin ABDC " + new Date().toISOString().slice(0, 10) });
    if (en.error) return A.notice($("mfa-msg"), "Erreur MFA : " + en.error.message, "error");
    mfaFactorId = en.data.id;
    if (/^data:image\/svg\+xml/.test(en.data.totp.qr_code)) $("mfa-qr").setAttribute("src", en.data.totp.qr_code);
    $("mfa-secret").textContent = en.data.totp.secret;
    $("mfa-enroll").hidden = false;
    $("mfa-verify-text").hidden = true;
  }

  $("mfa-form").addEventListener("submit", async function (e) {
    e.preventDefault();
    var code = String(new FormData(e.target).get("code")).trim();
    if (!/^\d{6}$/.test(code)) return A.notice($("mfa-msg"), "Le code doit contenir 6 chiffres.", "error");
    var r = await sb.auth.mfa.challengeAndVerify({ factorId: mfaFactorId, code: code });
    if (r.error) return A.notice($("mfa-msg"), "Code incorrect ou expiré.", "error");
    e.target.reset();
    A.notice($("mfa-msg"), "");
    openApp();
  });

  $("logout").addEventListener("click", logout);
  async function logout() { await sb.auth.signOut(); location.reload(); }

  // Déconnexion automatique après inactivité.
  var idleTimer;
  function resetIdle() {
    clearTimeout(idleTimer);
    idleTimer = setTimeout(async function () {
      await sb.auth.signOut();
      info("Session expirée", "Vous avez été déconnecté après " + IDLE_MINUTES + " minutes d'inactivité.");
      $("admin-user").hidden = true;
    }, IDLE_MINUTES * 60 * 1000);
  }

  // ===================== APPLICATION =====================
  async function openApp() {
    var ok = await sb.rpc("is_admin");
    if (ok.data !== true) return info("Accès refusé", "La double authentification est requise.");
    show("app-view");
    ["click", "keydown", "mousemove", "touchstart"].forEach(function (ev) { document.addEventListener(ev, resetIdle, { passive: true }); });
    resetIdle();
    $("admin-nav").querySelectorAll("button").forEach(function (b) {
      b.addEventListener("click", function () { go(b.getAttribute("data-view")); });
    });
    go("dashboard");
  }

  function go(view) {
    $("admin-nav").querySelectorAll("button").forEach(function (b) { b.classList.toggle("is-active", b.getAttribute("data-view") === view); });
    flash("");
    var c = A.clear($("content"));
    c.appendChild(h("p", { class: "muted", text: "Chargement…" }));
    VIEWS[view](c);
  }

  async function profilesMap() {
    var r = await sb.from("profiles").select("id,full_name,email,country,role");
    var m = {};
    (r.data || []).forEach(function (p) { m[p.id] = p; });
    return m;
  }

  var VIEWS = {};

  // ----- Tableau de bord -----
  VIEWS.dashboard = async function (c) {
    function count(t, filter) {
      var q = sb.from(t).select("*", { count: "exact", head: true });
      if (filter) q = q.eq(filter[0], filter[1]);
      return q;
    }
    var r = await Promise.all([
      count("contact_messages", ["status", "nouveau"]), count("services"), count("profiles", ["role", "student"]),
      count("subscriptions", ["status", "en_attente"]), count("subscriptions", ["status", "active"]), count("courses")
    ]);
    var labels = ["Nouveaux messages", "Services", "Élèves inscrits", "Abonnements en attente", "Abonnements actifs", "Cours"];
    A.clear(c).appendChild(h("h1", { text: "Tableau de bord" }));
    c.appendChild(h("div", { class: "kpis" }, r.map(function (x, i) {
      return h("div", { class: "kpi" }, h("strong", { text: x.count == null ? "—" : String(x.count) }), h("span", { text: labels[i] }));
    })));
    c.appendChild(h("p", { class: "muted", text: "Connecté avec double authentification. Déconnexion automatique après " + IDLE_MINUTES + " minutes d'inactivité." }));
  };

  // ----- Messages -----
  VIEWS.messages = async function (c) {
    var r = await sb.from("contact_messages").select("*").order("created_at", { ascending: false }).limit(300);
    A.clear(c).appendChild(h("h1", { text: "Messages de contact" }));
    if (fail(r)) return;
    c.appendChild(table(["Date", "Contact", "Service / Pays", "Message", "Statut", ""], r.data.map(function (m) {
      return h("tr", null,
        h("td", { text: dt(m.created_at) }),
        h("td", null, h("strong", { text: m.name }), h("br"), m.company, h("br"),
          h("a", { href: "mailto:" + m.email, text: m.email }), m.phone ? [h("br"), m.phone] : null),
        h("td", { text: m.service + (m.country ? " · " + m.country : "") }),
        h("td", { class: "pre", text: m.message }),
        h("td", null, statusTag(m.status)),
        h("td", { class: "actions" },
          m.status !== "traite" ? btn("Traité", async function () { if (!fail(await sb.from("contact_messages").update({ status: "traite" }).eq("id", m.id))) go("messages"); }) : null,
          m.status !== "archive" ? btn("Archiver", async function () { if (!fail(await sb.from("contact_messages").update({ status: "archive" }).eq("id", m.id))) go("messages"); }, "btn--ghost") : null,
          btn("Supprimer", confirmDo("Supprimer définitivement ce message ?", async function () { if (!fail(await sb.from("contact_messages").delete().eq("id", m.id))) go("messages"); }), "btn--danger")
        ));
    })));
  };

  // ----- Services -----
  VIEWS.services = async function (c) {
    var r = await sb.from("services").select("*").order("sort");
    A.clear(c).appendChild(h("h1", { text: "Services du site" }));
    if (fail(r)) return;
    c.appendChild(h("p", null, btn("+ Nouveau service", function () { serviceForm(c, null); })));
    c.appendChild(table(["Image", "Service", "Pôle", "Ordre", "Publié", ""], r.data.map(function (s) {
      var img = A.imgUrl(s.image_url);
      return h("tr", null,
        h("td", null, img ? h("img", { class: "thumb", src: img, alt: "" }) : s.icon),
        h("td", null, h("strong", { text: s.title }), h("br"), h("span", { class: "muted", text: s.short })),
        h("td", { text: POLES[s.pole] || s.pole }),
        h("td", { text: String(s.sort) }),
        h("td", { text: s.published ? "Oui" : "Non" }),
        h("td", { class: "actions" },
          btn("Modifier", function () { serviceForm(c, s); }),
          btn("Supprimer", confirmDo("Supprimer le service « " + s.title + " » ?", async function () { if (!fail(await sb.from("services").delete().eq("id", s.id))) go("services"); }), "btn--danger")
        ));
    })));
  };

  function serviceForm(c, s) {
    var isNew = !s;
    s = s || { id: "", pole: "rh", title: "", short: "", description: "", features: [], icon: "", image_url: "", badge: "", sort: 200, published: true };
    var preview = h("img", { class: "preview", alt: "Aperçu" });
    function refreshPreview(u) { var x = A.imgUrl(u); if (x) { preview.setAttribute("src", x); preview.hidden = false; } else preview.hidden = true; }
    var imgInput = input("image_url", s.image_url, { placeholder: "img/modules/… ou https://…", oninput: function () { refreshPreview(this.value); } });
    var file = h("input", { type: "file", accept: "image/png,image/jpeg,image/webp" });
    file.addEventListener("change", async function () {
      var f = file.files[0];
      if (!f) return;
      if (!/^image\/(png|jpeg|webp)$/.test(f.type)) return flash("Formats acceptés : PNG, JPEG, WebP.", "error");
      if (f.size > 2 * 1024 * 1024) return flash("Image trop lourde (2 Mo maximum).", "error");
      var key = (form.elements.id.value || "service") + "-" + Date.now() + "." + f.type.split("/")[1].replace("jpeg", "jpg");
      flash("Envoi de l'image…");
      var up = await sb.storage.from("media").upload("services/" + key, f, { contentType: f.type, upsert: false });
      if (fail(up)) return;
      var url = sb.storage.from("media").getPublicUrl("services/" + key).data.publicUrl;
      imgInput.value = url;
      refreshPreview(url);
      flash("Image envoyée. Pensez à enregistrer.", "ok");
    });

    var form = h("form", { class: "form form--light form--wide" },
      h("div", { class: "form__row" },
        field("Identifiant (lettres, chiffres, tirets)", input("id", s.id, { required: true, pattern: "[a-z0-9-]{2,40}", readonly: isNew ? null : "readonly" })),
        field("Pôle", select("pole", Object.keys(POLES).map(function (k) { return [k, POLES[k]]; }), s.pole))
      ),
      h("div", { class: "form__row" },
        field("Titre", input("title", s.title, { required: true, maxlength: 120 })),
        field("Badge (optionnel)", input("badge", s.badge, { maxlength: 40 }))
      ),
      field("Résumé court", input("short", s.short, { maxlength: 300 })),
      field("Description", textarea("description", s.description, 4)),
      field("Fonctionnalités (une par ligne)", textarea("features", (s.features || []).join("\n"), 7)),
      h("div", { class: "form__row" },
        field("Icône (emoji)", input("icon", s.icon, { maxlength: 8 })),
        field("Ordre d'affichage", input("sort", s.sort, { type: "number" }))
      ),
      field("Image", imgInput),
      field("…ou envoyer une photo (PNG, JPEG, WebP — 2 Mo max)", file),
      preview,
      checkbox("published", s.published, "Publié sur le site"),
      h("div", { class: "actions" },
        h("button", { class: "btn", type: "submit", text: "Enregistrer" }),
        btn("Annuler", function () { go("services"); }, "btn--ghost")
      )
    );
    refreshPreview(s.image_url);
    form.addEventListener("submit", async function (e) {
      e.preventDefault();
      var el = form.elements;
      var row = {
        id: el.id.value.trim(), pole: el.pole.value, title: el.title.value.trim(), badge: el.badge.value.trim(),
        short: el.short.value.trim(), description: el.description.value.trim(),
        features: el.features.value.split("\n").map(function (x) { return x.trim(); }).filter(Boolean),
        icon: el.icon.value.trim(), sort: Number(el.sort.value) || 0, image_url: el.image_url.value.trim(),
        published: el.published.checked, updated_at: new Date().toISOString()
      };
      if (!/^[a-z0-9-]{2,40}$/.test(row.id)) return flash("Identifiant invalide.", "error");
      if (row.image_url && !/^(https:\/\/|img\/)/.test(row.image_url)) return flash("L'image doit commencer par https:// ou img/.", "error");
      var r = isNew ? await sb.from("services").insert(row) : await sb.from("services").update(row).eq("id", row.id);
      if (!fail(r)) { go("services"); flash("Service enregistré.", "ok"); }
    });
    A.clear(c).appendChild(h("h1", { text: isNew ? "Nouveau service" : "Modifier : " + s.title }));
    c.appendChild(form);
  }

  // ----- Paramètres -----
  VIEWS.settings = async function (c) {
    var r = await sb.from("site_settings").select("*");
    A.clear(c).appendChild(h("h1", { text: "Paramètres du site" }));
    if (fail(r)) return;
    var values = Object.assign({}, A.data.settings);
    r.data.forEach(function (x) { values[x.key] = x.value; });
    var LABELS = {
      hero_title: "Titre de la page d'accueil", hero_lead: "Texte d'introduction",
      contact_email: "Email de contact", contact_phone: "Téléphone", contact_city: "Ville / pays",
      payment_instructions: "Instructions de paiement (affichées aux élèves)"
    };
    var freeForAll = values.courses_free_for_all === "true";
    var toggle = h("div", { class: "panel" },
      h("h2", { text: "Accès aux cours" }),
      checkbox("courses_free_for_all", freeForAll, "Tous les cours sont gratuits pour tout le monde, sans abonnement"),
      h("p", { class: "muted", text: "Activé : chaque leçon, même marquée « Abonnés », s'ouvre pour n'importe quel visiteur, y compris sans compte. "
        + "Désactivé : les leçons marquées « Abonnés » redeviennent réservées aux élèves avec un abonnement actif. "
        + "Ce choix ne change rien aux formules ni aux abonnements déjà enregistrés : vous pouvez l'activer et le désactiver à tout moment." })
    );
    var form = h("form", { class: "form form--light form--wide" },
      Object.keys(LABELS).map(function (k) { return field(LABELS[k], textarea(k, values[k], k.length > 12 ? 3 : 1)); }),
      h("button", { class: "btn", type: "submit", text: "Enregistrer" })
    );
    form.addEventListener("submit", async function (e) {
      e.preventDefault();
      var rows = Object.keys(LABELS).map(function (k) { return { key: k, value: form.elements[k].value.trim(), updated_at: new Date().toISOString() }; });
      if (!fail(await sb.from("site_settings").upsert(rows))) flash("Paramètres enregistrés.", "ok");
    });
    toggle.querySelector("input[type=checkbox]").addEventListener("change", async function (e) {
      var r2 = await sb.from("site_settings").upsert({ key: "courses_free_for_all", value: e.target.checked ? "true" : "false", updated_at: new Date().toISOString() });
      if (fail(r2)) { e.target.checked = !e.target.checked; return; }
      flash(e.target.checked ? "Tous les cours sont maintenant gratuits pour tout le monde." : "Les abonnements sont de nouveau nécessaires pour les leçons payantes.", "ok");
    });
    c.appendChild(toggle);
    c.appendChild(form);
  };

  // ----- Cours & leçons -----
  VIEWS.courses = async function (c) {
    var r = await Promise.all([sb.from("levels").select("*").order("sort"), sb.from("courses").select("*").order("sort")]);
    A.clear(c).appendChild(h("h1", { text: "Cours & leçons" }));
    if (fail(r[0]) || fail(r[1])) return;
    var levels = r[0].data, lv = {};
    levels.forEach(function (l) { lv[l.id] = l; });
    c.appendChild(h("p", null, btn("+ Nouveau cours", function () { courseForm(c, null, levels); })));
    c.appendChild(table(["Niveau", "Cours", "Matière", "Publié", ""], r[1].data.map(function (x) {
      var l = lv[x.level_id];
      return h("tr", null,
        h("td", { text: l ? CYCLES[l.cycle] + " · " + l.name : "" }),
        h("td", { text: x.title }), h("td", { text: x.subject }),
        h("td", { text: x.published ? "Oui" : "Non" }),
        h("td", { class: "actions" },
          btn("Leçons", function () { lessonsView(c, x); }),
          btn("Modifier", function () { courseForm(c, x, levels); }, "btn--ghost"),
          btn("Supprimer", confirmDo("Supprimer le cours et toutes ses leçons ?", async function () { if (!fail(await sb.from("courses").delete().eq("id", x.id))) go("courses"); }), "btn--danger")
        ));
    })));
  };

  function courseForm(c, x, levels) {
    var isNew = !x;
    x = x || { level_id: levels[0] && levels[0].id, subject: "", title: "", description: "", published: false, sort: 100 };
    var form = h("form", { class: "form form--light form--wide" },
      h("div", { class: "form__row" },
        field("Niveau", select("level_id", levels.map(function (l) { return [l.id, CYCLES[l.cycle] + " · " + l.name]; }), x.level_id)),
        field("Matière", input("subject", x.subject, { maxlength: 80 }))
      ),
      field("Titre du cours", input("title", x.title, { required: true, maxlength: 160 })),
      field("Description", textarea("description", x.description, 4)),
      field("Ordre", input("sort", x.sort, { type: "number" })),
      checkbox("published", x.published, "Publié dans le catalogue"),
      h("div", { class: "actions" }, h("button", { class: "btn", type: "submit", text: "Enregistrer" }), btn("Annuler", function () { go("courses"); }, "btn--ghost"))
    );
    form.addEventListener("submit", async function (e) {
      e.preventDefault();
      var el = form.elements;
      var row = { level_id: Number(el.level_id.value), subject: el.subject.value.trim(), title: el.title.value.trim(),
        description: el.description.value.trim(), sort: Number(el.sort.value) || 0, published: el.published.checked };
      var r = isNew ? await sb.from("courses").insert(row) : await sb.from("courses").update(row).eq("id", x.id);
      if (!fail(r)) { go("courses"); flash("Cours enregistré.", "ok"); }
    });
    A.clear(c).appendChild(h("h1", { text: isNew ? "Nouveau cours" : "Modifier : " + x.title }));
    c.appendChild(form);
  }

  async function lessonsView(c, course) {
    var r = await sb.from("lessons").select("*").eq("course_id", course.id).order("sort");
    A.clear(c).appendChild(h("h1", { text: "Leçons : " + course.title }));
    if (fail(r)) return;
    c.appendChild(h("p", { class: "actions" },
      btn("+ Nouvelle leçon", function () { lessonForm(c, course, null); }),
      btn("← Retour aux cours", function () { go("courses"); }, "btn--ghost")));
    c.appendChild(table(["Ordre", "Leçon", "Type", "Accès", ""], r.data.map(function (l) {
      return h("tr", null,
        h("td", { text: String(l.sort) }), h("td", { text: l.title }),
        h("td", { text: (l.kind === "video" ? "Vidéo" : "Texte") + " · " + l.duration_min + " min" }),
        h("td", { text: l.is_free ? "Gratuite" : "Abonnés" }),
        h("td", { class: "actions" },
          btn("Modifier", function () { lessonForm(c, course, l); }),
          btn("Supprimer", confirmDo("Supprimer cette leçon ?", async function () { if (!fail(await sb.from("lessons").delete().eq("id", l.id))) lessonsView(c, course); }), "btn--danger")
        ));
    })));
  }

  function lessonForm(c, course, l) {
    var isNew = !l;
    l = l || { title: "", content: "", video_url: "", is_free: false, sort: 100, kind: "texte", duration_min: 45 };
    var form = h("form", { class: "form form--light form--wide" },
      field("Titre", input("title", l.title, { required: true, maxlength: 160 })),
      field("Contenu (blocs séparés par une ligne vide ; « ## » = intertitre ; « - » = liste)", textarea("content", l.content, 18)),
      field("Lien vidéo (https://…, optionnel)", input("video_url", l.video_url, { type: "url" })),
      h("div", { class: "form__row" },
        field("Type", select("kind", [["texte", "Leçon écrite"], ["video", "Cours vidéo"]], l.kind || "texte")),
        field("Durée (minutes)", input("duration_min", l.duration_min || 45, { type: "number", min: 1, max: 600 })),
        field("Ordre", input("sort", l.sort, { type: "number" }))
      ),
      checkbox("is_free", l.is_free, "Leçon gratuite (visible sans abonnement)"),
      h("div", { class: "actions" }, h("button", { class: "btn", type: "submit", text: "Enregistrer" }), btn("Annuler", function () { lessonsView(c, course); }, "btn--ghost"))
    );
    form.addEventListener("submit", async function (e) {
      e.preventDefault();
      var el = form.elements;
      var row = { course_id: course.id, title: el.title.value.trim(), content: el.content.value, video_url: el.video_url.value.trim(),
        sort: Number(el.sort.value) || 0, is_free: el.is_free.checked,
        kind: el.kind.value, duration_min: Math.min(600, Math.max(1, Number(el.duration_min.value) || 45)) };
      if (row.video_url && !/^https:\/\//.test(row.video_url)) return flash("Le lien vidéo doit commencer par https://", "error");
      var r = isNew ? await sb.from("lessons").insert(row) : await sb.from("lessons").update(row).eq("id", l.id);
      if (!fail(r)) { lessonsView(c, course); flash("Leçon enregistrée.", "ok"); }
    });
    A.clear(c).appendChild(h("h1", { text: (isNew ? "Nouvelle leçon — " : "Modifier — ") + course.title }));
    c.appendChild(form);
  }

  // ----- Formules -----
  VIEWS.plans = async function (c) {
    var r = await Promise.all([sb.from("levels").select("*").order("sort"), sb.from("plans").select("*").order("id")]);
    A.clear(c).appendChild(h("h1", { text: "Formules d'abonnement" }));
    if (fail(r[0]) || fail(r[1])) return;
    var levels = r[0].data, lv = {};
    levels.forEach(function (l) { lv[l.id] = l; });
    var opts = [["", "Tous les niveaux"]].concat(levels.map(function (l) { return [l.id, CYCLES[l.cycle] + " · " + l.name]; }));

    function planForm(p) {
      var isNew = !p;
      p = p || { name: "", level_id: "", price_xof: 0, duration_days: 30, active: true };
      var form = h("form", { class: "form form--light form--wide" },
        field("Nom de la formule", input("name", p.name, { required: true, maxlength: 80 })),
        h("div", { class: "form__row" },
          field("Niveau", select("level_id", opts, p.level_id == null ? "" : p.level_id)),
          field("Prix (FCFA)", input("price_xof", p.price_xof, { type: "number", min: 0 })),
          field("Durée (jours)", input("duration_days", p.duration_days, { type: "number", min: 1, max: 1100 }))
        ),
        checkbox("active", p.active, "Formule proposée aux élèves"),
        h("div", { class: "actions" }, h("button", { class: "btn", type: "submit", text: "Enregistrer" }), btn("Annuler", function () { go("plans"); }, "btn--ghost"))
      );
      form.addEventListener("submit", async function (e) {
        e.preventDefault();
        var el = form.elements;
        var row = { name: el.name.value.trim(), level_id: el.level_id.value ? Number(el.level_id.value) : null,
          price_xof: Number(el.price_xof.value) || 0, duration_days: Number(el.duration_days.value) || 30, active: el.active.checked };
        var res = isNew ? await sb.from("plans").insert(row) : await sb.from("plans").update(row).eq("id", p.id);
        if (!fail(res)) { go("plans"); flash("Formule enregistrée.", "ok"); }
      });
      A.clear(c).appendChild(h("h1", { text: isNew ? "Nouvelle formule" : "Modifier : " + p.name }));
      c.appendChild(form);
    }

    c.appendChild(h("p", null, btn("+ Nouvelle formule", function () { planForm(null); })));
    c.appendChild(table(["Formule", "Niveau", "Prix", "Durée", "Active", ""], r[1].data.map(function (p) {
      var l = lv[p.level_id];
      return h("tr", null,
        h("td", { text: p.name }), h("td", { text: l ? l.name : "Tous" }),
        h("td", { text: new Intl.NumberFormat("fr-FR").format(p.price_xof) + " FCFA" }),
        h("td", { text: p.duration_days + " j" }), h("td", { text: p.active ? "Oui" : "Non" }),
        h("td", { class: "actions" }, btn("Modifier", function () { planForm(p); })));
    })));
  };

  // ----- Abonnements -----
  VIEWS.subscriptions = async function (c) {
    var r = await Promise.all([
      sb.from("subscriptions").select("*, plans(name)").order("created_at", { ascending: false }).limit(500),
      profilesMap()
    ]);
    A.clear(c).appendChild(h("h1", { text: "Abonnements" }));
    if (fail(r[0])) return;
    var pm = r[1];
    var order = { en_attente: 0, active: 1, refusee: 2, expiree: 3 };
    var list = r[0].data.slice().sort(function (a, b) { return order[a.status] - order[b.status]; });
    c.appendChild(table(["Demandé le", "Élève", "Formule", "Référence paiement", "Statut", "Période", ""], list.map(function (s) {
      var p = pm[s.user_id] || {};
      return h("tr", null,
        h("td", { text: dt(s.created_at) }),
        h("td", null, h("strong", { text: p.full_name || "—" }), h("br"), p.email || "", p.country ? " · " + p.country : ""),
        h("td", { text: s.plans ? s.plans.name : "" }),
        h("td", { text: s.payment_ref }),
        h("td", null, statusTag(s.status)),
        h("td", { text: s.starts_at ? dt(s.starts_at) + " → " + dt(s.ends_at) : "—" }),
        h("td", { class: "actions" },
          s.status !== "active" ? btn("Activer", confirmDo("Confirmez-vous avoir reçu le paiement « " + s.payment_ref + " » ?", async function () {
            if (!fail(await sb.rpc("activate_subscription", { p_id: s.id }))) { go("subscriptions"); flash("Abonnement activé.", "ok"); }
          })) : null,
          s.status === "en_attente" ? btn("Refuser", confirmDo("Refuser cette demande ?", async function () {
            if (!fail(await sb.from("subscriptions").update({ status: "refusee" }).eq("id", s.id))) go("subscriptions");
          }), "btn--danger") : null,
          s.status === "active" ? btn("Suspendre", confirmDo("Mettre fin à cet abonnement maintenant ?", async function () {
            if (!fail(await sb.from("subscriptions").update({ status: "expiree" }).eq("id", s.id))) go("subscriptions");
          }), "btn--ghost") : null
        ));
    })));
  };

  // ----- Utilisateurs -----
  VIEWS.users = async function (c) {
    var r = await sb.from("profiles").select("*").order("created_at", { ascending: false });
    A.clear(c).appendChild(h("h1", { text: "Utilisateurs" }));
    if (fail(r)) return;
    c.appendChild(h("p", { class: "muted", text: "Un nouvel administrateur devra activer sa double authentification à sa première connexion." }));
    c.appendChild(table(["Inscrit le", "Nom", "Email", "Pays", "Rôle", ""], r.data.map(function (p) {
      var self = p.id === me.id;
      return h("tr", null,
        h("td", { text: dt(p.created_at) }), h("td", { text: p.full_name }), h("td", { text: p.email }),
        h("td", { text: p.country }),
        h("td", null, h("span", { class: "status status--" + p.role, text: p.role === "admin" ? "Administrateur" : "Élève" })),
        h("td", { class: "actions" }, self ? h("span", { class: "muted", text: "(vous)" }) :
          p.role === "admin"
            ? btn("Retirer admin", confirmDo("Retirer les droits administrateur de " + p.email + " ?", async function () { if (!fail(await sb.from("profiles").update({ role: "student" }).eq("id", p.id))) go("users"); }), "btn--ghost")
            : btn("Nommer admin", confirmDo("Donner TOUS les droits administrateur à " + p.email + " ?", async function () { if (!fail(await sb.from("profiles").update({ role: "admin" }).eq("id", p.id))) go("users"); }), "btn--danger")
        ));
    })));
  };

  // ----- Journal -----
  VIEWS.audit = async function (c) {
    var r = await Promise.all([sb.from("audit_logs").select("*").order("created_at", { ascending: false }).limit(300), profilesMap()]);
    A.clear(c).appendChild(h("h1", { text: "Journal d'audit" }));
    if (fail(r[0])) return;
    var ACT = { INSERT: "Création", UPDATE: "Modification", DELETE: "Suppression" };
    c.appendChild(h("p", { class: "muted", text: "Les 300 dernières actions. Le journal ne peut pas être modifié depuis le site." }));
    c.appendChild(table(["Date", "Auteur", "Action", "Table", "Élément"], r[0].data.map(function (l) {
      var p = r[1][l.actor] || {};
      return h("tr", null,
        h("td", { text: dt(l.created_at) }), h("td", { text: p.email || (l.actor ? l.actor.slice(0, 8) : "système") }),
        h("td", { text: ACT[l.action] || l.action }), h("td", { text: l.table_name }), h("td", { text: l.row_id || "" }));
    })));
  };

  start();
})();
