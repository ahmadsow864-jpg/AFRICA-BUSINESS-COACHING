// Données de départ du site (utilisées tant que Supabase n'est pas configuré,
// et pour générer supabase/seed.sql via tools/generate-seed.mjs).
// Une fois Supabase branché, l'administrateur modifie ces contenus depuis /admin.
window.ABC_DATA = {
  poles: {
    rh: "Paie & RH",
    transport: "Transport & Logistique",
    vehicules: "Véhicules & GPS",
    education: "Éducation en ligne"
  },

  services: [
    {
      id: "paie-senegal", pole: "rh", sort: 10, icon: "💼",
      title: "Paie & RH Sénégal",
      badge: "SoftwarePaie-Sénégal",
      image_url: "img/modules/paie-senegal.svg",
      short: "Gestion de la paie et des RH selon le droit du travail sénégalais.",
      description: "Logiciel de gestion de la paie et des ressources humaines construit sur le droit du travail et de la sécurité sociale sénégalais, avec un moteur juridique versionné : chaque règle est datée et sourcée (texte, article). Éditions Windows, Web et Cloud.",
      features: [
        "Entreprise, établissements, services et postes",
        "Dossier salarié, contrats, avenants et carrière",
        "Temps, présences et heures supplémentaires",
        "Congés et absences (annuel, maladie, maternité…)",
        "Variables : primes, indemnités, avantages",
        "Calcul brut → net, cotisations et fiscalité",
        "Bulletins de paie et déclarations",
        "Avances, prêts et soldes de tout compte",
        "Rôles et permissions, journal d'audit"
      ]
    },
    {
      id: "paie-uemoa", pole: "rh", sort: 20, icon: "🌍",
      title: "Paie & RH UEMOA / CEDEAO",
      badge: "Version multi-pays",
      image_url: "img/modules/paie-uemoa.svg",
      short: "Un noyau commun, des référentiels juridiques par pays.",
      description: "Un noyau de paie et RH réutilisable, complété par un référentiel juridique, social et fiscal propre à chaque pays. Les entreprises présentes dans plusieurs pays gèrent leurs salariés sur une seule plateforme.",
      features: [
        "Référentiels de règles par pays",
        "Gestion multi-sociétés et multi-sites",
        "Paramétrage des devises et calendriers",
        "Bulletins et déclarations par pays",
        "Consolidation des effectifs et de la masse salariale",
        "Historique des règles et traçabilité"
      ]
    },
    {
      id: "transport-logistique", pole: "transport", sort: 30, icon: "📦",
      title: "Transport & Logistique",
      badge: "",
      image_url: "img/modules/transport-logistique.svg",
      short: "Expéditions, entrepôts, livraisons et suivi des marchandises.",
      description: "Pilotez toute la chaîne logistique : de la commande à la preuve de livraison, en passant par l'entrepôt et la planification des tournées.",
      features: [
        "Commandes et ordres de transport",
        "Gestion des entrepôts et des stocks",
        "Planification des livraisons",
        "Suivi des colis et des marchandises",
        "Bons de livraison et preuves de livraison",
        "Facturation des prestations"
      ]
    },
    {
      id: "carburant", pole: "transport", sort: 40, icon: "⛽",
      title: "Gestion Carburant",
      badge: "",
      image_url: "img/modules/carburant.svg",
      short: "Approvisionnement, consommation et contrôle des dépenses.",
      description: "Maîtrisez vos dépenses de carburant : achats, bons et cartes, consommation par véhicule et détection des anomalies.",
      features: [
        "Achats et approvisionnements",
        "Bons et cartes carburant",
        "Consommation par véhicule et par conducteur",
        "Détection des anomalies de consommation",
        "Budgets et rapports de dépenses"
      ]
    },
    {
      id: "transport", pole: "transport", sort: 50, icon: "🚌",
      title: "Gestion Transport",
      badge: "",
      image_url: "img/modules/transport.svg",
      short: "Lignes, trajets, chauffeurs, voyageurs et recettes.",
      description: "Organisez le transport de voyageurs et du personnel : lignes, horaires, affectations, billetterie et recettes.",
      features: [
        "Lignes, trajets et horaires",
        "Affectation des chauffeurs et véhicules",
        "Billetterie et réservations",
        "Transport du personnel",
        "Recettes et rapports d'activité"
      ]
    },
    {
      id: "parking-entreprise", pole: "transport", sort: 60, icon: "🅿️",
      title: "Parking dans les entreprises",
      badge: "",
      image_url: "img/modules/parking-entreprise.svg",
      short: "Places, badges et accès pour le personnel et les visiteurs.",
      description: "Gérez les parkings de vos sites : attribution des places, badges d'accès, visiteurs et taux d'occupation.",
      features: [
        "Plan et attribution des places",
        "Badges et autorisations d'accès",
        "Accueil et enregistrement des visiteurs",
        "Historique des entrées et sorties",
        "Taux d'occupation en temps réel"
      ]
    },
    {
      id: "parking-public", pole: "transport", sort: 70, icon: "🏙️",
      title: "Parkings hors entreprise",
      badge: "",
      image_url: "img/modules/parking-public.svg",
      short: "Parkings publics et privés : tickets, abonnements, caisse.",
      description: "Exploitez des parkings publics ou privés sur plusieurs sites : tickets, abonnements, tarifs et recettes.",
      features: [
        "Parkings publics et privés, multi-sites",
        "Tickets horaires et abonnements",
        "Tarification paramétrable",
        "Caisse et paiements",
        "Rapports de recettes et d'occupation"
      ]
    },
    {
      id: "station-service", pole: "transport", sort: 80, icon: "🛢️",
      title: "Station-service avancée",
      badge: "",
      image_url: "img/modules/station-service.svg",
      short: "Pompes, cuves, boutique, lavage et caisse de la station.",
      description: "Une gestion complète de station-service : distribution, stocks en cuves, boutique, lavage, équipes et contrôle des écarts.",
      features: [
        "Pompes, index et volumes distribués",
        "Cuves, jaugeage et livraisons",
        "Boutique, lubrifiants et lavage",
        "Caisse, pompistes et relèves d'équipe",
        "Clients professionnels et crédits",
        "Rapprochement et contrôle des écarts"
      ]
    },
    {
      id: "flotte", pole: "vehicules", sort: 90, icon: "🚚",
      title: "Gestion des Flottes",
      badge: "",
      image_url: "img/modules/flotte.svg",
      short: "Véhicules, entretien, assurances, conducteurs et coûts.",
      description: "Suivez chaque véhicule de votre parc : documents, entretien, échéances, conducteurs et coût total.",
      features: [
        "Parc de véhicules et documents",
        "Entretien, réparations et pneumatiques",
        "Assurances, visites techniques et échéances",
        "Conducteurs et affectations",
        "Coût total par véhicule"
      ]
    },
    {
      id: "vente-vehicules", pole: "vehicules", sort: 100, icon: "🚗",
      title: "Vente de Véhicules",
      badge: "",
      image_url: "img/modules/vente-vehicules.svg",
      short: "Stock, clients, devis, ventes et suivi après-vente.",
      description: "Pour les concessionnaires et revendeurs : stock, prospects, devis, ventes, paiements et après-vente.",
      features: [
        "Stock de véhicules neufs et d'occasion",
        "Fiches clients et prospects",
        "Devis, commandes et factures",
        "Paiements et échéanciers",
        "Suivi après-vente et garanties"
      ]
    },
    {
      id: "gps", pole: "vehicules", sort: 110, icon: "🛰️",
      title: "GPS avancé",
      badge: "",
      image_url: "img/modules/gps.svg",
      short: "Géolocalisation en temps réel, itinéraires et alertes.",
      description: "Localisez vos véhicules en temps réel, analysez les trajets et recevez des alertes.",
      features: [
        "Localisation des véhicules en temps réel",
        "Historique des trajets",
        "Zones géographiques et alertes",
        "Excès de vitesse et arrêts",
        "Rapports kilométriques"
      ]
    },
    {
      id: "education", pole: "education", sort: 120, icon: "🎓",
      title: "Éducation en ligne",
      badge: "Nouveau",
      image_url: "img/modules/education.svg",
      short: "Cours en ligne du collège au doctorat, par abonnement.",
      description: "Une plateforme d'apprentissage en ligne pour les élèves et étudiants, du collège au doctorat. Chaque élève crée son compte, choisit une formule d'abonnement et accède aux cours de son niveau.",
      features: [
        "Collège, lycée, licence, master et doctorat",
        "Compte personnel élève / étudiant",
        "Abonnement par niveau ou tous niveaux",
        "Leçons gratuites de découverte",
        "Cours et leçons publiés par l'administrateur",
        "Accès sécurisé aux contenus payants"
      ]
    }
  ],

  // Pays francophones (le français y est langue officielle ou largement utilisé).
  countries: [
    { region: "Afrique de l'Ouest", list: ["Sénégal", "Côte d'Ivoire", "Mali", "Burkina Faso", "Niger", "Guinée", "Bénin", "Togo", "Mauritanie"] },
    { region: "Afrique centrale", list: ["Cameroun", "Gabon", "Congo", "RD Congo", "Tchad", "Centrafrique", "Guinée équatoriale", "Burundi", "Rwanda"] },
    { region: "Océan Indien & Corne", list: ["Madagascar", "Comores", "Maurice", "Seychelles", "Djibouti"] },
    { region: "Afrique du Nord", list: ["Maroc", "Algérie", "Tunisie"] },
    { region: "Europe", list: ["France", "Belgique", "Suisse", "Luxembourg", "Monaco"] },
    { region: "Amériques", list: ["Canada (Québec)", "Haïti"] }
  ],

  settings: {
    contact_email: "sowsenfoods2026@outlook.fr",
    contact_phone: "+221 70 912 84 96",
    contact_city: "Thiès, Sénégal",
    hero_title: "Des logiciels de gestion pour les entreprises de la francophonie",
    hero_lead: "Paie & Ressources Humaines, transport et logistique, carburant, parkings, stations-service, flottes, vente de véhicules, GPS et éducation en ligne : une plateforme de services pensée au Sénégal pour l'Afrique et toute la francophonie.",
    payment_instructions: "Effectuez le paiement selon les instructions communiquées par l'administrateur, puis saisissez la référence de la transaction. Votre accès est activé après vérification."
  }
};
