// Page détail d'un module : module.html?m=<identifiant>
(function () {
  var A = window.ABC, h = A.h;
  var id = new URLSearchParams(location.search).get("m") || "";

  A.loadServices().then(function (list) {
    var s = list.filter(function (x) { return x.id === id; })[0];
    if (!s) {
      document.getElementById("m-title").textContent = "Module introuvable";
      document.getElementById("m-desc").textContent = "Ce module n'existe pas ou n'est plus publié.";
      document.getElementById("m-cta").setAttribute("href", "index.html#services");
      document.getElementById("m-cta").textContent = "Voir tous les services";
      return;
    }
    document.title = s.title + " — Africa Business Development Consulting";
    var meta = document.querySelector('meta[name="description"]');
    if (meta) meta.setAttribute("content", s.short);
    document.getElementById("m-pole").textContent = A.data.poles[s.pole] || "";
    document.getElementById("m-title").textContent = s.title;
    document.getElementById("m-badge").textContent = s.badge || "";
    document.getElementById("m-desc").textContent = s.description || s.short;

    var cta = document.getElementById("m-cta");
    if (s.pole === "education") {
      cta.setAttribute("href", "education/index.html");
      cta.textContent = "Accéder aux cours";
    } else {
      cta.setAttribute("href", "index.html?service=" + encodeURIComponent(s.title) + "#contact");
    }

    var img = A.imgUrl(s.image_url);
    var vis = document.getElementById("m-visual");
    if (img) vis.appendChild(h("img", { src: img, alt: "Illustration " + s.title, width: "800", height: "500" }));
    else vis.appendChild(h("span", { class: "card__icon card__icon--big", text: s.icon || "" }));

    var course = (window.ABC_CATALOG || []).filter(function (c) { return c.module === s.id; })[0];
    if (course) {
      var mins = course.lessons.reduce(function (t, l) { return t + (Number(l.duration_min) || 0); }, 0);
      document.getElementById("m-course").appendChild(h("div", { class: "module-course" },
        h("strong", { text: "🎓 Formation associée : " + course.title }),
        h("p", { class: "course-meta", text: course.lessons.length + " leçons · environ " + Math.round(mins / 60) + " h · dont un cours vidéo de 1h30" }),
        h("a", { href: "education/cours.html?c=" + encodeURIComponent(course.slug), text: "Voir la formation →" })
      ));
    }

    var ul = document.getElementById("m-features");
    (s.features || []).forEach(function (f) { ul.appendChild(h("li", { text: f })); });

    var others = document.getElementById("m-others");
    list.filter(function (x) { return x.id !== s.id; }).forEach(function (o) {
      var oi = A.imgUrl(o.image_url);
      others.appendChild(h("a", { class: "card card--mini", href: "module.html?m=" + encodeURIComponent(o.id) },
        oi ? h("img", { src: oi, alt: "", loading: "lazy", width: "800", height: "500" }) : null,
        h("span", { text: o.title })
      ));
    });
  });
})();
