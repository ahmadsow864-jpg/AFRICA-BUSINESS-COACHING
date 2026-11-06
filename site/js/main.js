// Africa Business Coaching — scripts du site vitrine
(function () {
  // Année du pied de page
  document.getElementById("year").textContent = new Date().getFullYear();

  // Menu mobile
  var toggle = document.querySelector(".nav-toggle");
  var nav = document.querySelector(".nav");
  toggle.addEventListener("click", function () {
    var open = nav.classList.toggle("is-open");
    toggle.setAttribute("aria-expanded", open ? "true" : "false");
  });
  nav.querySelectorAll("a").forEach(function (link) {
    link.addEventListener("click", function () {
      nav.classList.remove("is-open");
      toggle.setAttribute("aria-expanded", "false");
    });
  });

  // Filtres des services
  var filters = document.querySelectorAll(".filter");
  var cards = document.querySelectorAll(".card");
  filters.forEach(function (btn) {
    btn.addEventListener("click", function () {
      filters.forEach(function (b) { b.classList.remove("is-active"); });
      btn.classList.add("is-active");
      var cat = btn.getAttribute("data-filter");
      cards.forEach(function (card) {
        var show = cat === "all" || card.getAttribute("data-cat") === cat;
        card.classList.toggle("is-hidden", !show);
      });
    });
  });

  // Formulaire de contact : ouvre la messagerie (aucun serveur nécessaire)
  var form = document.getElementById("contact-form");
  var error = document.getElementById("form-error");
  form.addEventListener("submit", function (e) {
    e.preventDefault();
    var data = new FormData(form);
    var nom = (data.get("nom") || "").trim();
    var email = (data.get("email") || "").trim();
    var service = data.get("service") || "";
    var message = (data.get("message") || "").trim();
    var entreprise = (data.get("entreprise") || "").trim();

    if (!nom || !email || !service || !message) {
      error.textContent = "Merci de remplir les champs obligatoires.";
      return;
    }
    if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
      error.textContent = "Adresse email invalide.";
      return;
    }
    error.textContent = "";

    var subject = "Demande : " + service;
    var body =
      "Nom : " + nom + "\n" +
      "Entreprise : " + entreprise + "\n" +
      "Email : " + email + "\n" +
      "Service : " + service + "\n\n" +
      message;

    window.location.href =
      "mailto:sowsenfoods2026@outlook.fr?subject=" +
      encodeURIComponent(subject) + "&body=" + encodeURIComponent(body);
  });
})();
