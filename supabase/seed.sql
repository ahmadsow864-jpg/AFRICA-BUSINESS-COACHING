-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Contenus initiaux du site. À exécuter après migrations/001_schema.sql.

insert into public.services (id, pole, title, short, description, features, icon, image_url, badge, sort) values
  ('paie-senegal', 'rh', 'Paie & RH Sénégal', 'Gestion de la paie et des RH selon le droit du travail sénégalais.', 'Logiciel de gestion de la paie et des ressources humaines construit sur le droit du travail et de la sécurité sociale sénégalais, avec un moteur juridique versionné : chaque règle est datée et sourcée (texte, article). Éditions Windows, Web et Cloud.', array['Entreprise, établissements, services et postes', 'Dossier salarié, contrats, avenants et carrière', 'Temps, présences et heures supplémentaires', 'Congés et absences (annuel, maladie, maternité…)', 'Variables : primes, indemnités, avantages', 'Calcul brut → net, cotisations et fiscalité', 'Bulletins de paie et déclarations', 'Avances, prêts et soldes de tout compte', 'Rôles et permissions, journal d''audit']::text[], '💼', 'img/modules/paie-senegal.svg', 'SoftwarePaie-Sénégal', 10),
  ('paie-uemoa', 'rh', 'Paie & RH UEMOA / CEDEAO', 'Un noyau commun, des référentiels juridiques par pays.', 'Un noyau de paie et RH réutilisable, complété par un référentiel juridique, social et fiscal propre à chaque pays. Les entreprises présentes dans plusieurs pays gèrent leurs salariés sur une seule plateforme.', array['Référentiels de règles par pays', 'Gestion multi-sociétés et multi-sites', 'Paramétrage des devises et calendriers', 'Bulletins et déclarations par pays', 'Consolidation des effectifs et de la masse salariale', 'Historique des règles et traçabilité']::text[], '🌍', 'img/modules/paie-uemoa.svg', 'Version multi-pays', 20),
  ('transport-logistique', 'transport', 'Transport & Logistique', 'Expéditions, entrepôts, livraisons et suivi des marchandises.', 'Pilotez toute la chaîne logistique : de la commande à la preuve de livraison, en passant par l''entrepôt et la planification des tournées.', array['Commandes et ordres de transport', 'Gestion des entrepôts et des stocks', 'Planification des livraisons', 'Suivi des colis et des marchandises', 'Bons de livraison et preuves de livraison', 'Facturation des prestations']::text[], '📦', 'img/modules/transport-logistique.svg', '', 30),
  ('carburant', 'transport', 'Gestion Carburant', 'Approvisionnement, consommation et contrôle des dépenses.', 'Maîtrisez vos dépenses de carburant : achats, bons et cartes, consommation par véhicule et détection des anomalies.', array['Achats et approvisionnements', 'Bons et cartes carburant', 'Consommation par véhicule et par conducteur', 'Détection des anomalies de consommation', 'Budgets et rapports de dépenses']::text[], '⛽', 'img/modules/carburant.svg', '', 40),
  ('transport', 'transport', 'Gestion Transport', 'Lignes, trajets, chauffeurs, voyageurs et recettes.', 'Organisez le transport de voyageurs et du personnel : lignes, horaires, affectations, billetterie et recettes.', array['Lignes, trajets et horaires', 'Affectation des chauffeurs et véhicules', 'Billetterie et réservations', 'Transport du personnel', 'Recettes et rapports d''activité']::text[], '🚌', 'img/modules/transport.svg', '', 50),
  ('parking-entreprise', 'transport', 'Parking dans les entreprises', 'Places, badges et accès pour le personnel et les visiteurs.', 'Gérez les parkings de vos sites : attribution des places, badges d''accès, visiteurs et taux d''occupation.', array['Plan et attribution des places', 'Badges et autorisations d''accès', 'Accueil et enregistrement des visiteurs', 'Historique des entrées et sorties', 'Taux d''occupation en temps réel']::text[], '🅿️', 'img/modules/parking-entreprise.svg', '', 60),
  ('parking-public', 'transport', 'Parkings hors entreprise', 'Parkings publics et privés : tickets, abonnements, caisse.', 'Exploitez des parkings publics ou privés sur plusieurs sites : tickets, abonnements, tarifs et recettes.', array['Parkings publics et privés, multi-sites', 'Tickets horaires et abonnements', 'Tarification paramétrable', 'Caisse et paiements', 'Rapports de recettes et d''occupation']::text[], '🏙️', 'img/modules/parking-public.svg', '', 70),
  ('station-service', 'transport', 'Station-service avancée', 'Pompes, cuves, boutique, lavage et caisse de la station.', 'Une gestion complète de station-service : distribution, stocks en cuves, boutique, lavage, équipes et contrôle des écarts.', array['Pompes, index et volumes distribués', 'Cuves, jaugeage et livraisons', 'Boutique, lubrifiants et lavage', 'Caisse, pompistes et relèves d''équipe', 'Clients professionnels et crédits', 'Rapprochement et contrôle des écarts']::text[], '🛢️', 'img/modules/station-service.svg', '', 80),
  ('flotte', 'vehicules', 'Gestion des Flottes', 'Véhicules, entretien, assurances, conducteurs et coûts.', 'Suivez chaque véhicule de votre parc : documents, entretien, échéances, conducteurs et coût total.', array['Parc de véhicules et documents', 'Entretien, réparations et pneumatiques', 'Assurances, visites techniques et échéances', 'Conducteurs et affectations', 'Coût total par véhicule']::text[], '🚚', 'img/modules/flotte.svg', '', 90),
  ('vente-vehicules', 'vehicules', 'Vente de Véhicules', 'Stock, clients, devis, ventes et suivi après-vente.', 'Pour les concessionnaires et revendeurs : stock, prospects, devis, ventes, paiements et après-vente.', array['Stock de véhicules neufs et d''occasion', 'Fiches clients et prospects', 'Devis, commandes et factures', 'Paiements et échéanciers', 'Suivi après-vente et garanties']::text[], '🚗', 'img/modules/vente-vehicules.svg', '', 100),
  ('gps', 'vehicules', 'GPS avancé', 'Géolocalisation en temps réel, itinéraires et alertes.', 'Localisez vos véhicules en temps réel, analysez les trajets et recevez des alertes.', array['Localisation des véhicules en temps réel', 'Historique des trajets', 'Zones géographiques et alertes', 'Excès de vitesse et arrêts', 'Rapports kilométriques']::text[], '🛰️', 'img/modules/gps.svg', '', 110),
  ('education', 'education', 'Éducation en ligne', 'Cours en ligne du collège au doctorat, par abonnement.', 'Une plateforme d''apprentissage en ligne pour les élèves et étudiants, du collège au doctorat. Chaque élève crée son compte, choisit une formule d''abonnement et accède aux cours de son niveau.', array['Collège, lycée, licence, master et doctorat', 'Compte personnel élève / étudiant', 'Abonnement par niveau ou tous niveaux', 'Leçons gratuites de découverte', 'Cours et leçons publiés par l''administrateur', 'Accès sécurisé aux contenus payants']::text[], '🎓', 'img/modules/education.svg', 'Nouveau', 120)
on conflict (id) do nothing;

insert into public.site_settings (key, value) values
  ('contact_email', 'sowsenfoods2026@outlook.fr'),
  ('contact_phone', '+221 70 912 84 96'),
  ('contact_city', 'Thiès, Sénégal'),
  ('hero_title', 'Des logiciels de gestion pour les entreprises de la francophonie'),
  ('hero_lead', 'Paie & Ressources Humaines, transport et logistique, carburant, parkings, stations-service, flottes, vente de véhicules, GPS et éducation en ligne : une plateforme de services pensée au Sénégal pour l''Afrique et toute la francophonie.'),
  ('payment_instructions', 'Effectuez le paiement selon les instructions communiquées par l''administrateur, puis saisissez la référence de la transaction. Votre accès est activé après vérification.')
on conflict (key) do nothing;

insert into public.levels (cycle, name, sort) values
  ('college', '6e', 10),
  ('college', '5e', 20),
  ('college', '4e', 30),
  ('college', '3e', 40),
  ('lycee', 'Seconde', 50),
  ('lycee', 'Première', 60),
  ('lycee', 'Terminale', 70),
  ('licence', 'Licence 1', 80),
  ('licence', 'Licence 2', 90),
  ('licence', 'Licence 3', 100),
  ('master', 'Master 1', 110),
  ('master', 'Master 2', 120),
  ('doctorat', 'Doctorat', 130),
  ('pro', 'Formation professionnelle', 140)
on conflict (name) do nothing;
