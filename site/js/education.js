// Éducation en ligne : catalogue, cours, espace élève.
(function () {
  var A = window.ABC, h = A.h, sb = A.sb;
  var page = document.body.getAttribute("data-page");
  var CYCLES = { pro: "Formation professionnelle", college: "Collège", lycee: "Lycée", licence: "Licence", master: "Master", doctorat: "Doctorat" };
  var CATALOG = window.ABC_CATALOG || [];
  var STATUS = { en_attente: "En attente de validation", active: "Active", refusee: "Refusée", expiree: "Expirée" };
  var DEFAULT_LEVELS = [
    ["college", "6e"], ["college", "5e"], ["college", "4e"], ["college", "3e"],
    ["lycee", "Seconde"], ["lycee", "Première"], ["lycee", "Terminale"],
    ["licence", "Licence 1"], ["licence", "Licence 2"], ["licence", "Licence 3"],
    ["master", "Master 1"], ["master", "Master 2"], ["doctorat", "Doctorat"], ["pro", "Formation professionnelle"]
  ].map(function (l, i) { return { id: i + 1, cycle: l[0], name: l[1], sort: i }; });

  // Cours du catalogue intégré (utilisé tant que la base n'est pas branchée).
  function catalogCourses(levels) {
    var byName = {};
    levels.forEach(function (l) { byName[l.name] = l.id; });
    return CATALOG.map(function (c) {
      return { slug: c.slug, level_id: byName[c.level], subject: c.subject, title: c.title, description: c.description, sort: c.sort, lessons: c.lessons };
    });
  }
  function courseHref(c) { return "cours.html?" + (c.slug ? "c=" + encodeURIComponent(c.slug) : "id=" + encodeURIComponent(c.id)); }
  function duration(m) { m = Number(m) || 0; return m >= 60 ? Math.floor(m / 60) + "h" + (m % 60 ? String(m % 60).padStart(2, "0") : "") : m + " min"; }

  // Mise en forme sûre d'une leçon : "## " = intertitre, lignes "- " = liste, sinon paragraphe.
  function renderContent(box, text) {
    String(text || "").split(/\n\s*\n/).forEach(function (block) {
      block = block.replace(/^\n+|\s+$/g, "");
      if (!block) return;
      if (/^## /.test(block)) {
        var lines = block.split("\n");
        box.appendChild(h("h3", { class: "lesson-h", text: lines[0].slice(3) }));
        if (lines.length > 1) renderContent(box, lines.slice(1).join("\n"));
        return;
      }
      // Regroupe les lignes consécutives : « - » = liste à puces, sinon paragraphe.
      var para = [], list = null;
      function flushPara() { if (para.length) { box.appendChild(h("p", { class: "lesson-text", text: para.join("\n") })); para = []; } }
      block.split("\n").forEach(function (line) {
        if (/^\s*- /.test(line)) {
          flushPara();
          if (!list) { list = h("ul", { class: "lesson-list" }); box.appendChild(list); }
          list.appendChild(h("li", { text: line.replace(/^\s*- /, "") }));
        } else {
          list = null;
          para.push(line);
        }
      });
      flushPara();
    });
  }

  function $(id) { return document.getElementById(id); }
  function price(p) { return p.price_xof === 0 ? "Gratuit" : new Intl.NumberFormat("fr-FR").format(p.price_xof) + " FCFA"; }
  function date(d) { return d ? new Date(d).toLocaleDateString("fr-FR") : "—"; }
  function pageUrl(file) { return location.href.replace(/[^/]*([?#].*)?$/, file); }

  function fillCountries(sel) {
    if (!sel) return;
    A.data.countries.forEach(function (r) {
      var g = h("optgroup", { label: r.region });
      r.list.forEach(function (c) { g.appendChild(h("option", { text: c })); });
      sel.appendChild(g);
    });
    sel.appendChild(h("option", { text: "Autre pays" }));
  }
  fillCountries($("signup-country"));
  fillCountries($("profile-country"));

  // ===================== CATALOGUE =====================
  async function initIndex() {
    var levels = DEFAULT_LEVELS, courses = [], plans = [];
    var cmsg = $("catalogue-msg");
    if (sb) {
      var r = await Promise.all([
        sb.from("levels").select("*").order("sort"),
        sb.from("courses").select("id,slug,level_id,subject,title,description,sort").eq("published", true).order("sort"),
        sb.from("plans").select("*").eq("active", true).order("price_xof")
      ]);
      if (!r[0].error && r[0].data.length) levels = r[0].data;
      courses = (r[1].data || []).map(function (c) {
        var local = CATALOG.filter(function (x) { return x.slug && x.slug === c.slug; })[0];
        return Object.assign({ lessons: local ? local.lessons : [] }, c);
      });
      plans = r[2].data || [];
    }
    if (!courses.length) courses = catalogCourses(levels);

    var wanted = new URLSearchParams(location.search).get("niveau");
    var start = levels.filter(function (l) { return l.name === wanted; })[0];
    var currentCycle = start ? start.cycle : "pro", currentLevel = start ? start.id : null;
    var cf = $("cycle-filters");
    Object.keys(CYCLES).forEach(function (c) {
      if (!levels.some(function (l) { return l.cycle === c; })) return;
      cf.appendChild(h("button", { class: "filter", "data-cycle": c, text: CYCLES[c], onclick: function () { currentCycle = c; currentLevel = null; draw(); } }));
    });

    function draw() {
      cf.querySelectorAll(".filter").forEach(function (b) { b.classList.toggle("is-active", b.getAttribute("data-cycle") === currentCycle); });
      var lv = A.clear($("levels"));
      var inCycle = levels.filter(function (l) { return l.cycle === currentCycle; });
      if (currentLevel === null && inCycle[0]) currentLevel = inCycle[0].id;
      inCycle.forEach(function (l) {
        lv.appendChild(h("button", { class: "chip" + (l.id === currentLevel ? " is-active" : ""), text: l.name, onclick: function () { currentLevel = l.id; draw(); } }));
      });
      var grid = A.clear($("courses"));
      var list = courses.filter(function (c) { return c.level_id === currentLevel; });
      list.forEach(function (c) {
        var ls = c.lessons || [];
        var mins = ls.reduce(function (t, l) { return t + (Number(l.duration_min) || 0); }, 0);
        grid.appendChild(h("a", { class: "card card--course", href: courseHref(c) },
          c.subject ? h("span", { class: "card__pole card__pole--static", text: c.subject }) : null,
          h("h3", { text: c.title }),
          h("p", { text: (c.description || "").slice(0, 220) }),
          ls.length ? h("p", { class: "course-meta", text: ls.length + " leçons · " + duration(mins) + (function (n) { return n ? " · 🎬 " + (n > 1 ? n + " cours vidéo de 1h30" : "cours vidéo 1h30") : ""; })(ls.filter(function (l) { return l.kind === "video"; }).length) }) : null,
          h("span", { class: "card__more", text: "Ouvrir le cours →" })
        ));
      });
      A.notice(cmsg, list.length ? "" : "Aucun cours publié pour ce niveau pour le moment.", list.length ? "" : "info");
    }
    draw();

    var pw = $("plans");
    if (!plans.length) pw.appendChild(h("p", { class: "muted", text: "Les formules seront annoncées prochainement." }));
    plans.forEach(function (p) {
      var lvl = levels.filter(function (l) { return l.id === p.level_id; })[0];
      pw.appendChild(h("div", { class: "plan" },
        h("h3", { text: p.name }),
        h("p", { class: "plan__price", text: price(p) }),
        h("p", { class: "muted", text: (lvl ? "Niveau : " + lvl.name : "Tous les niveaux") + " · " + p.duration_days + " jours" }),
        h("a", { class: "btn btn--small", href: "espace.html", text: "S'abonner" })
      ));
    });

    initAuth();
  }

  // ===================== CONNEXION / INSCRIPTION =====================
  async function initAuth() {
    var msg = $("auth-msg");
    var login = $("login-form"), signup = $("signup-form");
    document.querySelectorAll(".tab").forEach(function (t) {
      t.addEventListener("click", function () {
        document.querySelectorAll(".tab").forEach(function (x) { x.classList.toggle("is-active", x === t); });
        login.hidden = t.getAttribute("data-tab") !== "login";
        signup.hidden = t.getAttribute("data-tab") !== "signup";
        A.notice(msg, "");
      });
    });
    if (!sb) {
      A.notice(msg, "Les inscriptions ouvriront au lancement de la plateforme.", "info");
      login.querySelectorAll("input,button").forEach(function (e) { e.disabled = true; });
      signup.querySelectorAll("input,select,button").forEach(function (e) { e.disabled = true; });
      return;
    }
    var s = await sb.auth.getSession();
    if (s.data.session) {
      $("auth-box").hidden = true;
      $("logged-box").hidden = false;
      $("logged-text").textContent = "Vous êtes connecté(e) : " + s.data.session.user.email;
    }

    login.addEventListener("submit", async function (e) {
      e.preventDefault();
      var d = new FormData(login);
      A.notice(msg, "Connexion…");
      var r = await sb.auth.signInWithPassword({ email: String(d.get("email")).trim(), password: String(d.get("password")) });
      if (r.error) return A.notice(msg, "Email ou mot de passe incorrect, ou email non confirmé.", "error");
      location.href = "espace.html";
    });

    signup.addEventListener("submit", async function (e) {
      e.preventDefault();
      var d = new FormData(signup);
      var pw = String(d.get("password")), name = String(d.get("full_name")).trim();
      if (name.length < 2) return A.notice(msg, "Indiquez votre nom complet.", "error");
      if (!d.get("country")) return A.notice(msg, "Choisissez votre pays.", "error");
      if (pw.length < 8) return A.notice(msg, "Le mot de passe doit contenir au moins 8 caractères.", "error");
      if (pw !== String(d.get("password2"))) return A.notice(msg, "Les deux mots de passe sont différents.", "error");
      A.notice(msg, "Création du compte…");
      var r = await sb.auth.signUp({
        email: String(d.get("email")).trim(), password: pw,
        options: { data: { full_name: name, country: String(d.get("country")) }, emailRedirectTo: pageUrl("espace.html") }
      });
      if (r.error) return A.notice(msg, "Inscription impossible : " + r.error.message, "error");
      signup.reset();
      A.notice(msg, "Compte créé ! Ouvrez l'email de confirmation que vous venez de recevoir, puis connectez-vous.", "ok");
    });

    $("forgot").addEventListener("click", async function () {
      var email = String(new FormData(login).get("email") || "").trim();
      if (!email) return A.notice(msg, "Saisissez d'abord votre email ci-dessus.", "error");
      await sb.auth.resetPasswordForEmail(email, { redirectTo: pageUrl("espace.html") });
      A.notice(msg, "Si un compte existe, un email de réinitialisation vient d'être envoyé.", "ok");
    });
  }

  // ===================== PAGE COURS =====================
  async function initCours() {
    var qs = new URLSearchParams(location.search);
    var slug = qs.get("c") || "", id = qs.get("id") || "";
    var box = $("c-lesson");
    var c = null, outline = [], local = CATALOG.filter(function (x) { return x.slug === slug; })[0];

    if (sb) {
      var q = sb.from("courses").select("id,slug,title,description,subject,levels(name,cycle)");
      q = slug ? q.eq("slug", slug) : q.eq("id", id);
      var r = await q.maybeSingle();
      if (r.data) {
        c = r.data;
        var o = await sb.rpc("course_outline", { p_course: c.id });
        outline = o.data || [];
      }
    }
    if (!c && local) {
      var lv = DEFAULT_LEVELS.filter(function (l) { return l.name === local.level; })[0];
      c = { title: local.title, description: local.description, subject: local.subject, levels: lv ? { name: lv.name, cycle: lv.cycle } : null };
      outline = local.lessons.map(function (l, i) { return Object.assign({ idx: i }, l); });
    }
    if (!c) { $("c-title").textContent = "Cours introuvable"; return; }

    document.title = c.title + " — Éducation en ligne";
    $("c-title").textContent = c.title;
    $("c-desc").textContent = c.description || "";
    $("c-level").textContent = (c.levels ? (CYCLES[c.levels.cycle] === c.levels.name ? c.levels.name : CYCLES[c.levels.cycle] + " · " + c.levels.name) : "") + (c.subject ? " · " + c.subject : "");

    var ol = $("c-outline");
    outline.forEach(function (l) {
      ol.appendChild(h("li", null, h("button", { class: "lesson-link", onclick: function () { openLesson(l); } },
        h("span", { class: "lesson-link__title" },
          h("span", { text: l.title }),
          h("small", { class: "muted", text: (l.kind === "video" ? "🎬 Vidéo · " : "📄 ") + duration(l.duration_min) })),
        h("span", { class: "tag" + (l.is_free ? " tag--free" : ""), text: l.is_free ? "Gratuit" : "🔒 Abonnés" })
      )));
    });
    if (!outline.length) ol.appendChild(h("li", { class: "muted", text: "Leçons en préparation." }));

    async function openLesson(l, noScroll) {
      A.clear(box).appendChild(h("p", { class: "muted", text: "Chargement…" }));
      var data = null;
      if (sb && l.id) {
        var q2 = await sb.from("lessons").select("title,content,video_url,kind,duration_min").eq("id", l.id).maybeSingle();
        data = q2.data;
      } else if (l.content) {
        data = l;
      }
      A.clear(box);
      box.appendChild(h("h2", { text: l.title }));
      box.appendChild(h("p", { class: "course-meta", text: (l.kind === "video" ? "🎬 Cours vidéo · " : "📄 Leçon · ") + duration(l.duration_min) }));
      if (!data) {
        var sess = sb ? await sb.auth.getSession() : { data: {} };
        var logged = !!(sess.data && sess.data.session);
        box.appendChild(h("p", { class: "msg msg--info", text: !sb
          ? "Cette leçon est réservée aux abonnés. Les abonnements ouvriront au lancement de la plateforme."
          : logged ? "Cette leçon est réservée aux abonnés de ce niveau. Demandez un abonnement depuis votre espace."
                   : "Cette leçon est réservée aux abonnés. Connectez-vous ou créez un compte." }));
        if (sb) box.appendChild(h("a", { class: "btn", href: logged ? "espace.html" : "index.html#compte", text: logged ? "Mon espace" : "Se connecter" }));
        return;
      }
      if (/^https:\/\//.test(data.video_url || "")) {
        box.appendChild(h("p", null, h("a", { class: "btn btn--small", href: data.video_url, target: "_blank", rel: "noopener noreferrer", text: "▶ Regarder la vidéo" })));
      } else if (l.kind === "video") {
        box.appendChild(h("p", { class: "msg msg--info", text: "Vidéo en cours de tournage : voici le plan minuté et le texte complet de la séance." }));
      }
      renderContent(box, data.content);
      if (!noScroll) box.scrollIntoView({ behavior: "smooth", block: "start" });
    }
    if (outline[0]) openLesson(outline[0], true);
  }

  // ===================== ESPACE ÉLÈVE =====================
  async function initEspace() {
    var msg = $("espace-msg");
    if (!sb) { A.notice(msg, "La plateforme ouvre très bientôt.", "info"); return; }

    sb.auth.onAuthStateChange(function (event) {
      if (event === "PASSWORD_RECOVERY") { $("recovery-box").hidden = false; $("espace").hidden = true; }
    });
    $("recovery-form").addEventListener("submit", async function (e) {
      e.preventDefault();
      var pw = String(new FormData(e.target).get("password"));
      if (pw.length < 8) return A.notice(msg, "8 caractères minimum.", "error");
      var r = await sb.auth.updateUser({ password: pw });
      if (r.error) return A.notice(msg, r.error.message, "error");
      $("recovery-box").hidden = true;
      A.notice(msg, "Mot de passe modifié.", "ok");
      load();
    });

    var s = await sb.auth.getSession();
    if (!s.data.session) { $("need-login").hidden = false; return; }
    var user = s.data.session.user;

    $("logout").addEventListener("click", async function () { await sb.auth.signOut(); location.href = "index.html"; });
    var recovering = /type=recovery/.test(location.hash);
    if (recovering) $("recovery-box").hidden = false;

    $("profile-form").addEventListener("submit", async function (e) {
      e.preventDefault();
      var d = new FormData(e.target);
      var r = await sb.from("profiles").update({ full_name: String(d.get("full_name")).trim(), country: String(d.get("country")) }).eq("id", user.id);
      A.notice(msg, r.error ? "Erreur : " + r.error.message : "Profil enregistré.", r.error ? "error" : "ok");
    });

    $("sub-form").addEventListener("submit", async function (e) {
      e.preventDefault();
      var d = new FormData(e.target);
      var ref = String(d.get("ref")).trim();
      if (!d.get("plan")) return A.notice(msg, "Aucune formule disponible pour le moment.", "error");
      if (ref.length < 3) return A.notice(msg, "Indiquez la référence de votre paiement.", "error");
      var r = await sb.from("subscriptions").insert({ user_id: user.id, plan_id: Number(d.get("plan")), payment_ref: ref });
      if (r.error) return A.notice(msg, "Erreur : " + r.error.message, "error");
      e.target.reset();
      A.notice(msg, "Demande envoyée. Votre accès sera activé après vérification du paiement.", "ok");
      load();
    });

    async function load() {
      $("espace").hidden = false;
      var r = await Promise.all([
        sb.from("profiles").select("full_name,country,email").eq("id", user.id).maybeSingle(),
        sb.from("plans").select("*").eq("active", true).order("price_xof"),
        sb.from("subscriptions").select("status,starts_at,ends_at,payment_ref,created_at,plans(name)").order("created_at", { ascending: false }),
        A.loadSettings()
      ]);
      var p = r[0].data || {};
      var f = $("profile-form");
      f.elements.full_name.value = p.full_name || "";
      f.elements.country.value = p.country || "";
      $("profile-email").textContent = "Email : " + (p.email || user.email);

      var sel = A.clear($("sub-plan"));
      (r[1].data || []).forEach(function (pl) {
        sel.appendChild(h("option", { value: pl.id, text: pl.name + " — " + price(pl) + " / " + pl.duration_days + " jours" }));
      });
      if (!sel.options.length) sel.appendChild(h("option", { value: "", text: "Aucune formule disponible pour le moment" }));
      $("pay-instructions").textContent = r[3].payment_instructions || "";

      var tb = A.clear(document.querySelector("#subs tbody"));
      (r[2].data || []).forEach(function (x) {
        var st = x.status === "active" && x.ends_at && new Date(x.ends_at) < new Date() ? "expiree" : x.status;
        tb.appendChild(h("tr", null,
          h("td", { text: x.plans ? x.plans.name : "" }),
          h("td", null, h("span", { class: "status status--" + st, text: STATUS[st] || st })),
          h("td", { text: date(x.starts_at) }), h("td", { text: date(x.ends_at) }),
          h("td", { text: x.payment_ref })
        ));
      });
      if (!tb.children.length) tb.appendChild(h("tr", null, h("td", { colspan: "5", class: "muted", text: "Aucun abonnement pour le moment." })));
    }
    if (!recovering) load();
  }

  if (page === "edu-index") initIndex();
  if (page === "edu-cours") initCours();
  if (page === "edu-espace") initEspace();
})();
