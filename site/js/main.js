// Africa Business Development Consulting — page d'accueil
(function () {
  var A = window.ABC, h = A.h;
  var services = [];
  var settings = {};

  document.getElementById("hero-flag").appendChild(A.flag());

  function renderServices() {
    var grid = A.clear(document.getElementById("services-grid"));
    services.forEach(function (s) {
      var img = A.imgUrl(s.image_url);
      grid.appendChild(
        h("a", { class: "card card--module", href: "module.html?m=" + encodeURIComponent(s.id), "data-cat": s.pole },
          h("div", { class: "card__media" },
            img ? h("img", { src: img, alt: "Illustration " + s.title, loading: "lazy", width: "800", height: "500" })
                : h("span", { class: "card__icon", text: s.icon || "•" }),
            h("span", { class: "card__pole", text: A.data.poles[s.pole] || "" })
          ),
          h("div", { class: "card__body" },
            h("h3", { text: s.title }),
            s.badge ? h("span", { class: "badge", text: s.badge }) : null,
            h("p", { text: s.short }),
            h("ul", { class: "card__features" }, (s.features || []).slice(0, 3).map(function (f) { return h("li", { text: f }); })),
            h("span", { class: "card__more", text: "Découvrir le module →" })
          )
        )
      );
    });
    document.getElementById("stat-modules").textContent = services.length;
    applyFilter(currentFilter);

    var sel = document.getElementById("contact-service");
    services.forEach(function (s) { sel.appendChild(h("option", { text: s.title })); });
    sel.appendChild(h("option", { text: "Autre demande" }));
    var wanted = new URLSearchParams(location.search).get("service");
    if (wanted) sel.value = wanted;
  }

  var currentFilter = "all";
  function applyFilter(cat) {
    currentFilter = cat;
    document.querySelectorAll(".filter").forEach(function (b) {
      b.classList.toggle("is-active", b.getAttribute("data-filter") === cat);
    });
    document.querySelectorAll("#services-grid .card").forEach(function (c) {
      c.classList.toggle("is-hidden", !(cat === "all" || c.getAttribute("data-cat") === cat));
    });
  }
  document.querySelectorAll(".filter").forEach(function (b) {
    b.addEventListener("click", function () { applyFilter(b.getAttribute("data-filter")); });
  });

  function renderCountries() {
    var wrap = document.getElementById("regions");
    var sel = document.getElementById("contact-country");
    var total = 0;
    A.data.countries.forEach(function (r) {
      total += r.list.length;
      wrap.appendChild(h("div", { class: "region" },
        h("h3", { text: r.region }),
        h("ul", { class: "chips" }, r.list.map(function (c) { return h("li", { text: c }); }))
      ));
      var group = h("optgroup", { label: r.region });
      r.list.forEach(function (c) { group.appendChild(h("option", { text: c })); });
      sel.appendChild(group);
    });
    sel.appendChild(h("option", { text: "Autre pays" }));
    document.getElementById("stat-countries").textContent = total;
  }

  function applySettings() {
    if (settings.hero_title) document.getElementById("hero-title").textContent = settings.hero_title;
    if (settings.hero_lead) document.getElementById("hero-lead").textContent = settings.hero_lead;
    if (settings.contact_email) {
      var e = document.getElementById("c-email");
      e.textContent = settings.contact_email;
      e.setAttribute("href", "mailto:" + settings.contact_email);
    }
    if (settings.contact_phone) {
      var p = document.getElementById("c-phone");
      p.textContent = settings.contact_phone;
      p.setAttribute("href", "tel:" + settings.contact_phone.replace(/[^+\d]/g, ""));
    }
    if (settings.contact_city) document.getElementById("c-city").textContent = settings.contact_city;
  }

  // Formulaire de contact : enregistré dans Supabase si configuré, sinon ouverture de la messagerie.
  var form = document.getElementById("contact-form");
  var error = document.getElementById("form-error");
  form.addEventListener("submit", async function (e) {
    e.preventDefault();
    var d = new FormData(form);
    var v = function (k) { return String(d.get(k) || "").trim(); };
    var msg = {
      name: v("nom"), company: v("entreprise"), email: v("email"), phone: v("telephone"),
      country: v("pays"), service: v("service"), message: v("message")
    };
    error.className = "form__error";
    if (v("site_web")) return; // robot
    if (msg.name.length < 2 || !msg.email || !msg.service || msg.message.length < 2) {
      error.textContent = "Merci de remplir les champs obligatoires (*).";
      return;
    }
    if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(msg.email)) {
      error.textContent = "Adresse email invalide.";
      return;
    }
    error.textContent = "";
    var btn = form.querySelector("button[type=submit]");

    if (A.sb) {
      btn.disabled = true;
      var r = await A.sb.from("contact_messages").insert(msg);
      btn.disabled = false;
      if (!r.error) {
        form.reset();
        error.className = "form__error form__ok";
        error.textContent = "Merci ! Votre message a bien été envoyé. Nous vous répondrons rapidement.";
        return;
      }
      // En cas d'erreur, on bascule sur la messagerie.
    }
    var to = settings.contact_email || "sowsenfoods2026@outlook.fr";
    var body = "Nom : " + msg.name + "\nEntreprise : " + msg.company + "\nEmail : " + msg.email +
      "\nTéléphone : " + msg.phone + "\nPays : " + msg.country + "\nService : " + msg.service + "\n\n" + msg.message;
    window.location.href = "mailto:" + to + "?subject=" + encodeURIComponent("Demande : " + msg.service) +
      "&body=" + encodeURIComponent(body);
  });

  renderCountries();
  Promise.all([A.loadServices(), A.loadSettings()]).then(function (res) {
    services = res[0];
    settings = res[1];
    renderServices();
    applySettings();
  });
})();
