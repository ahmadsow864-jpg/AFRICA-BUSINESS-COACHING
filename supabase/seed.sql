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

-- Cours : Économie générale L1 : marchés, agrégats et monnaie en zone UEMOA
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'economie-generale-l1', (select id from public.levels where name = 'Licence 1'), null, 'Économie', 'Économie générale L1 : marchés, agrégats et monnaie en zone UEMOA', 'Ce cours d''introduction couvre les fondements de la microéconomie (offre, demande, équilibre, élasticités) et de la macroéconomie (PIB, inflation, chômage), puis le fonctionnement de la monnaie et de la BCEAO dans l''UEMOA. Il s''adresse aux étudiants de première année en économie, gestion ou droit. Prérequis : calcul de pourcentages et équations du premier degré.', true, 10
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Introduction à l''économie : rareté, agents et circuit économique', '## Objectifs de la leçon

- Définir l''économie comme science de l''allocation de ressources rares.
- Identifier les grands agents économiques et leurs fonctions.
- Représenter le circuit économique et distinguer microéconomie et macroéconomie.
- Utiliser le raisonnement à la marge et la notion de coût d''opportunité.

## 1. Qu''est-ce que l''économie ?

L''économie est la science qui étudie la manière dont les individus, les entreprises et les États utilisent des ressources rares pour satisfaire des besoins qui, eux, semblent illimités. La rareté est le point de départ : la terre cultivable de la vallée du fleuve Sénégal, le temps de travail d''un commerçant de Sandaga, le budget d''une commune ou les devises d''un pays sont limités. Il faut donc choisir.

Tout choix a un coût d''opportunité : c''est la valeur de la meilleure option à laquelle on renonce. Si un étudiant de Thiès consacre son samedi à un emploi de livreur payé 6 000 FCFA plutôt qu''à réviser, le coût d''opportunité de la révision est de 6 000 FCFA ; inversement, le coût d''opportunité du travail est la note qu''il aurait pu améliorer. Raisonner en économiste, c''est toujours se demander : à quoi renonce-t-on ?

## 2. Les agents économiques

Pour simplifier une réalité complexe, les économistes regroupent les acteurs en grandes catégories appelées agents économiques :

- Les ménages : ils fournissent leur travail, perçoivent des revenus, consomment et épargnent.
- Les entreprises (sociétés non financières) : elles produisent des biens et services marchands en combinant capital et travail ; leur objectif principal est le profit.
- Les administrations publiques : État, collectivités territoriales, organismes de sécurité sociale ; elles produisent des services non marchands (école publique, santé, sécurité) financés par les prélèvements obligatoires, et redistribuent les revenus.
- Les institutions financières : banques, institutions de microfinance, assurances ; elles collectent l''épargne et financent l''économie.
- Le reste du monde : les agents étrangers avec lesquels on échange biens, services et capitaux ; les transferts des migrants en sont un exemple important pour de nombreux pays d''Afrique de l''Ouest.

## 3. Le circuit économique

Le circuit économique représente les flux entre agents. Dans sa version la plus simple, à deux agents, les ménages offrent leur travail aux entreprises (flux réel) et reçoivent des salaires (flux monétaire) ; les entreprises vendent des biens aux ménages (flux réel) et reçoivent le paiement de ces achats (flux monétaire). Les flux réels et monétaires circulent en sens inverse.

En ajoutant l''État, les banques et le reste du monde, on obtient un circuit plus riche : impôts et cotisations vers l''État, prestations et salaires des fonctionnaires vers les ménages, épargne vers les banques, crédits vers les entreprises, exportations et importations avec l''extérieur. Ce schéma servira de base à la comptabilité nationale et au calcul du PIB.

## 4. Microéconomie et macroéconomie

La microéconomie étudie les comportements individuels : comment un ménage répartit son budget, comment une boulangerie fixe son prix, comment se forme le prix de l''oignon sur un marché. La macroéconomie étudie les grands agrégats d''un pays ou d''une zone : production totale (PIB), niveau général des prix, chômage, solde extérieur, politique monétaire et budgétaire.

Les deux approches sont complémentaires : une hausse générale des prix (macro) modifie les choix des ménages (micro), et la somme des décisions individuelles détermine la croissance (macro).

## 5. Méthode : raisonner à la marge et « toutes choses égales par ailleurs »

Deux outils reviennent sans cesse :

- Le raisonnement marginal : on compare le bénéfice et le coût d''une unité supplémentaire. Un transporteur se demande si un trajet de plus rapporte davantage qu''il ne coûte en carburant et en usure.
- La clause « toutes choses égales par ailleurs » (ceteris paribus) : pour isoler l''effet d''une variable, on suppose les autres constantes. Par exemple, on étudie l''effet du prix du riz sur la quantité achetée en supposant le revenu des ménages inchangé.

Enfin, on distingue l''économie positive, qui décrit ce qui est (« la hausse du prix du gaz réduit la consommation »), et l''économie normative, qui dit ce qui devrait être (« l''État devrait subventionner le gaz »).

## Exemple d''application

Une couturière de Kaolack dispose de 40 heures par semaine. Elle peut coudre des boubous (4 heures chacun, marge de 5 000 FCFA) ou des chemises (2 heures chacune, marge de 2 000 FCFA). Une heure consacrée aux boubous rapporte 1 250 FCFA, une heure consacrée aux chemises 1 000 FCFA. Si la demande le permet, elle a intérêt à privilégier les boubous ; le coût d''opportunité d''une chemise est la demi-marge d''un boubou, soit 2 500 FCFA, supérieur aux 2 000 FCFA qu''elle rapporte.

## Points clés

- L''économie étudie les choix face à la rareté ; tout choix a un coût d''opportunité.
- Ménages, entreprises, administrations, institutions financières et reste du monde sont reliés par des flux réels et monétaires.
- La microéconomie analyse les comportements individuels, la macroéconomie les agrégats.
- Le raisonnement marginal et la clause « toutes choses égales par ailleurs » structurent l''analyse.

## Exercices

- Exercice 1 : Un étudiant hésite entre un stage non rémunéré et un emploi de vendeur payé 60 000 FCFA par mois. Quel est le coût d''opportunité du stage ? Citez un avantage non monétaire du stage.
- Exercice 2 : Classez les acteurs suivants par agent économique : une IMF de Ziguinchor, la mairie de Rufisque, une famille de Pikine, une société de transformation de noix de cajou, un importateur ivoirien.
- Exercice 3 : Dites si chaque phrase relève de l''économie positive ou normative : a) « Le prix du ciment a augmenté de 8 % cette année. » b) « Il faut baisser les droits de douane sur les intrants agricoles. »
## Corrigé

- Exercice 1 : Le coût d''opportunité du stage est le salaire perdu, soit 60 000 FCFA par mois. Avantages non monétaires : expérience, réseau professionnel, compétences valorisables plus tard, ce qui peut augmenter les revenus futurs.
- Exercice 2 : IMF de Ziguinchor : institution financière ; mairie de Rufisque : administration publique (collectivité territoriale) ; famille de Pikine : ménage ; société de transformation de cajou : entreprise ; importateur ivoirien : reste du monde (vu du Sénégal).
- Exercice 3 : a) positive (constat vérifiable) ; b) normative (jugement de valeur, recommandation).', 'texte', 45, true, 10
from public.courses c where c.slug = 'economie-generale-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Introduction à l''économie : rareté, agents et circuit économique');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Offre, demande et équilibre de marché', '## Objectifs de la leçon

- Construire et interpréter les courbes de demande et d''offre.
- Déterminer l''équilibre d''un marché par le calcul et par le graphique.
- Distinguer déplacement le long d''une courbe et déplacement de la courbe.
- Analyser les effets d''un prix plafond ou plancher.

## 1. La demande

La demande d''un bien est la quantité que les acheteurs sont prêts à acheter à chaque niveau de prix, toutes choses égales par ailleurs. La loi de la demande énonce qu''en général, lorsque le prix augmente, la quantité demandée diminue. Deux effets l''expliquent : l''effet de substitution (le bien devient relativement plus cher, on se reporte sur d''autres biens : le mil plutôt que le riz) et l''effet revenu (le pouvoir d''achat réel baisse).

La courbe de demande est donc décroissante. Elle se déplace lorsque change un déterminant autre que le prix : revenu des ménages, prix des biens substituables ou complémentaires, goûts, taille de la population, anticipations. Par exemple, à l''approche de la Tabaski, la demande de moutons se déplace vers la droite : à chaque prix, on achète davantage.

## 2. L''offre

L''offre est la quantité que les producteurs sont prêts à vendre à chaque niveau de prix. En général, elle est croissante : un prix plus élevé rend la production plus rentable et attire de nouveaux producteurs. La courbe d''offre se déplace avec le coût des intrants (engrais, carburant), la technologie, la météo pour l''agriculture, le nombre de producteurs ou les taxes. Une bonne pluviométrie déplace l''offre d''arachide vers la droite ; une hausse du prix du gasoil déplace l''offre de transport vers la gauche.

## 3. L''équilibre du marché

L''équilibre est atteint au prix pour lequel la quantité demandée est égale à la quantité offerte. Graphiquement, c''est le point d''intersection des deux courbes. Si le prix est au-dessus de l''équilibre, il y a excédent d''offre (des invendus) et les vendeurs baissent leurs prix ; s''il est en dessous, il y a excès de demande (pénurie) et les prix montent.

Méthode de calcul avec des fonctions linéaires :

- Écrire Qd = Qs.
- Résoudre l''équation pour trouver le prix d''équilibre P*.
- Remplacer P* dans l''une des fonctions pour obtenir la quantité d''équilibre Q*.
- Vérifier avec l''autre fonction.

## Exemple chiffré : le marché de l''oignon

Sur un marché de Dakar, la demande hebdomadaire d''oignons (en tonnes) est Qd = 1 000 − 2P et l''offre Qs = 200 + 2P, P étant le prix en FCFA par kg.

À l''équilibre : 1 000 − 2P = 200 + 2P, donc 800 = 4P et P* = 200 FCFA/kg. La quantité est Q* = 1 000 − 2 × 200 = 600 tonnes. Vérification : 200 + 2 × 200 = 600. La recette totale des vendeurs est 200 FCFA × 600 000 kg = 120 millions de FCFA.

Si les autorités imposaient un prix plafond de 150 FCFA/kg (prix maximum), on aurait Qd = 1 000 − 300 = 700 tonnes et Qs = 200 + 300 = 500 tonnes : une pénurie de 200 tonnes. Les conséquences classiques sont les files d''attente, le rationnement et l''apparition de marchés parallèles. À l''inverse, un prix plancher au-dessus de l''équilibre (par exemple un prix minimum garanti aux producteurs) crée un excédent que l''État doit souvent acheter ou stocker.

## 4. Déplacements et chocs

Il faut distinguer :

- Un mouvement le long de la courbe : causé par une variation du prix du bien lui-même.
- Un déplacement de la courbe : causé par un autre déterminant.

Analyse d''un choc en quatre étapes : 1) quelle courbe est touchée ? 2) dans quel sens se déplace-t-elle ? 3) que deviennent le prix et la quantité d''équilibre ? 4) qui gagne, qui perd ?

Exemple : une hausse du prix des engrais déplace l''offre de tomates vers la gauche. Le prix d''équilibre monte et la quantité échangée baisse. Exemple 2 : la hausse des revenus des ménages urbains déplace la demande de produits laitiers vers la droite : prix et quantité augmentent.

## Points clés

- La demande est décroissante, l''offre croissante en fonction du prix.
- L''équilibre se trouve en résolvant Qd = Qs.
- Un changement de prix fait bouger le long de la courbe ; un autre déterminant déplace la courbe.
- Les prix plafonds créent des pénuries, les prix planchers des excédents.

## Exercices

- Exercice 1 : Sur le marché du poisson braisé d''une ville, Qd = 600 − 3P et Qs = 100 + 2P (P en dizaines de FCFA, Q en portions par jour). Calculez l''équilibre.
- Exercice 2 : La demande devient Qd = 700 − 3P (afflux de touristes). Calculez le nouvel équilibre et commentez.
- Exercice 3 : Pour quel déterminant la courbe d''offre de riz local se déplace-t-elle dans chacun des cas : a) nouvelles variétés à haut rendement ; b) inondations ; c) hausse du prix du riz importé ?
- Exercice 4 : Avec les données de l''exercice 1, la mairie fixe un prix plafond P = 80. Calculez le déséquilibre.

## Corrigé

- Exercice 1 : 600 − 3P = 100 + 2P donc 500 = 5P, P* = 100, soit 1 000 FCFA la portion puisque P est exprimé en dizaines de FCFA. Q* = 600 − 300 = 300 portions. Vérification : 100 + 200 = 300.
- Exercice 2 : 700 − 3P = 100 + 2P donc 600 = 5P, P* = 120 ; Q* = 700 − 360 = 340 (vérification : 100 + 240 = 340). La hausse de la demande augmente à la fois le prix et la quantité d''équilibre.
- Exercice 3 : a) technologie : l''offre se déplace vers la droite ; b) conditions climatiques : l''offre se déplace vers la gauche ; c) ce n''est pas un déterminant de l''offre de riz local mais de sa demande : le riz local, substitut, voit sa demande augmenter (déplacement à droite de la demande), ce qui provoque un mouvement le long de la courbe d''offre.
- Exercice 4 : Qd = 600 − 240 = 360 et Qs = 100 + 160 = 260. Pénurie de 100 portions par jour.', 'texte', 50, false, 20
from public.courses c where c.slug = 'economie-generale-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Offre, demande et équilibre de marché');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Les élasticités : mesurer la sensibilité de la demande', '## Objectifs de la leçon

- Définir et calculer l''élasticité-prix de la demande.
- Relier l''élasticité à l''évolution de la recette totale.
- Calculer l''élasticité-revenu et l''élasticité croisée et en tirer une classification des biens.
- Utiliser ces outils pour des décisions de prix et de politique publique.

## 1. Pourquoi mesurer la sensibilité ?

Savoir que la demande baisse quand le prix monte ne suffit pas : il faut savoir de combien. Un boulanger qui augmente le prix de sa baguette veut savoir si ses clients vont réduire fortement leurs achats ou non. L''État qui augmente une taxe sur le tabac veut prévoir l''effet sur la consommation et sur les recettes fiscales. L''élasticité mesure la sensibilité d''une variable à une autre, en pourcentage, ce qui la rend indépendante des unités.

## 2. L''élasticité-prix de la demande

Définition : ep = (variation en % de la quantité demandée) / (variation en % du prix).

La variation en % se calcule par (valeur finale − valeur initiale) / valeur initiale × 100. L''élasticité-prix est en général négative ; on raisonne souvent sur sa valeur absolue :

- |ep| > 1 : demande élastique (la quantité réagit plus que proportionnellement).
- |ep| < 1 : demande inélastique (réaction moins que proportionnelle).
- |ep| = 1 : élasticité unitaire.
- ep = 0 : demande parfaitement inélastique (certains médicaments vitaux).

Pour éviter que le résultat dépende du sens de la variation, on peut utiliser la méthode du point milieu (élasticité d''arc) : on divise les variations par la moyenne des valeurs initiale et finale.

Les déterminants de l''élasticité-prix sont : l''existence de substituts (plus il y en a, plus la demande est élastique), la part du bien dans le budget, le caractère de nécessité ou de luxe, et l''horizon temporel (à long terme, les ménages s''adaptent davantage).

## 3. Élasticité et recette totale

La recette totale (RT) du vendeur est RT = P × Q. Règle essentielle :

- Si la demande est inélastique, une hausse du prix augmente la recette totale.
- Si la demande est élastique, une hausse du prix diminue la recette totale.
- Si l''élasticité est unitaire, la recette reste à peu près constante.

## Exemple chiffré : le pain à Saint-Louis

Une boulangerie vend 1 000 baguettes par jour à 150 FCFA. Elle passe à 175 FCFA et vend 950 baguettes.

- Variation du prix : (175 − 150) / 150 = 16,67 %.
- Variation de la quantité : (950 − 1 000) / 1 000 = −5 %.
- ep = −5 / 16,67 ≈ −0,30 : demande inélastique.
- Recette avant : 150 × 1 000 = 150 000 FCFA ; après : 175 × 950 = 166 250 FCFA. La recette augmente, conformément à la règle.

## 4. L''élasticité-revenu

Définition : eR = (variation en % de la quantité demandée) / (variation en % du revenu).

- eR < 0 : bien inférieur (sa consommation baisse quand le revenu augmente ; par exemple certains produits de qualité basse remplacés par d''autres).
- 0 < eR < 1 : bien normal de nécessité (riz, savon).
- eR > 1 : bien de luxe ou supérieur (restaurants, voyages, véhicules).

Exemple : si le revenu moyen d''un quartier augmente de 10 % et que la consommation de riz augmente de 4 %, eR = 0,4 : le riz est un bien normal de nécessité. Si les dépenses de restaurant augmentent de 25 %, eR = 2,5 : bien de luxe.

## 5. L''élasticité croisée

Définition : eAB = (variation en % de la quantité demandée de A) / (variation en % du prix de B).

- eAB > 0 : biens substituables (riz importé et riz local ; transport par car et par taxi-brousse).
- eAB < 0 : biens complémentaires (téléphone et crédit de communication ; voiture et carburant).
- eAB proche de 0 : biens indépendants.

## 6. Méthode de résolution

- Identifier la variable expliquée (quantité) et la variable explicative (prix, revenu, prix d''un autre bien).
- Calculer les deux variations en pourcentage, avec la même méthode (simple ou point milieu).
- Faire le rapport et garder le signe.
- Interpréter : sens, intensité, conséquence sur la recette ou la classification du bien.

## Points clés

- L''élasticité mesure une sensibilité en pourcentage.
- |ep| > 1 : élastique ; |ep| < 1 : inélastique ; le lien avec la recette totale est central.
- L''élasticité-revenu classe les biens (inférieurs, nécessité, luxe).
- L''élasticité croisée distingue substituts et compléments.

## Exercices

- Exercice 1 : Le prix d''un forfait internet passe de 500 à 600 FCFA ; les ventes passent de 2 000 à 1 500 forfaits par jour. Calculez ep et l''évolution de la recette.
- Exercice 2 : Le revenu d''un ménage augmente de 20 % ; sa consommation de viande augmente de 30 % et celle de brisures de riz baisse de 5 %. Calculez les élasticités-revenu et classez les biens.
- Exercice 3 : Le prix du gaz butane augmente de 10 % et la demande de charbon de bois augmente de 6 %. Calculez et interprétez l''élasticité croisée.
- Exercice 4 : Pourquoi la demande de carburant est-elle plus élastique à long terme qu''à court terme ?

## Corrigé

- Exercice 1 : Variation du prix : +20 % ; variation de quantité : (1 500 − 2 000)/2 000 = −25 %. ep = −25/20 = −1,25 : demande élastique. Recette : 500 × 2 000 = 1 000 000 FCFA avant ; 600 × 1 500 = 900 000 FCFA après : la recette baisse de 100 000 FCFA, ce qui est cohérent avec une demande élastique.
- Exercice 2 : Viande : eR = 30/20 = 1,5 > 1 : bien de luxe (supérieur). Brisures : eR = −5/20 = −0,25 < 0 : bien inférieur.
- Exercice 3 : eAB = 6/10 = 0,6 > 0 : gaz et charbon de bois sont des substituts ; la hausse du prix du gaz pousse une partie des ménages vers le charbon.
- Exercice 4 : À court terme, les ménages et entreprises ont peu d''alternatives (même véhicule, mêmes trajets). À long terme, ils peuvent changer de véhicule, déménager, utiliser les transports collectifs, réorganiser la production : les possibilités de substitution augmentent, donc l''élasticité aussi.', 'texte', 50, false, 30
from public.courses c where c.slug = 'economie-generale-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Les élasticités : mesurer la sensibilité de la demande');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Macroéconomie : PIB, croissance, inflation et chômage', '## Objectifs de la leçon

- Définir le PIB et connaître ses trois optiques de calcul.
- Distinguer PIB nominal et PIB réel, calculer un déflateur et un taux de croissance.
- Mesurer l''inflation à partir d''un indice des prix.
- Définir le chômage et ses limites de mesure dans les économies à fort secteur informel.

## 1. Le produit intérieur brut

Le PIB mesure la valeur de l''ensemble des biens et services finals produits sur le territoire d''un pays pendant une période, en général une année. « Intérieur » signifie que l''on retient la production réalisée sur le territoire, quelle que soit la nationalité des producteurs. « Brut » signifie que l''on ne déduit pas l''usure du capital (amortissement).

Le PIB se calcule selon trois optiques qui, en théorie, donnent le même résultat :

- Optique production : somme des valeurs ajoutées (VA = production − consommations intermédiaires), plus les impôts sur les produits nets de subventions.
- Optique dépenses : PIB = C + I + G + (X − M), soit consommation des ménages, investissement, dépenses publiques, exportations moins importations.
- Optique revenus : somme des rémunérations des salariés, de l''excédent brut d''exploitation et des impôts sur la production nets de subventions.

Au Sénégal, les comptes nationaux sont élaborés par l''Agence nationale de la statistique et de la démographie (ANSD). Une difficulté propre aux économies africaines est la mesure du secteur informel, très important ; les statisticiens utilisent des enquêtes spécifiques pour l''estimer.

## 2. PIB nominal, PIB réel et croissance

Le PIB nominal est évalué aux prix de l''année courante ; il augmente si les quantités augmentent ou si les prix augmentent. Le PIB réel (en volume) est évalué aux prix d''une année de base : il isole l''évolution des quantités.

- Déflateur du PIB = PIB nominal / PIB réel × 100.
- PIB réel = PIB nominal / (déflateur / 100).
- Taux de croissance = (PIB réel année n − PIB réel année n−1) / PIB réel année n−1 × 100.

Exemple fictif : le PIB nominal d''un pays passe de 5 000 milliards de FCFA (année de base) à 5 500 milliards. Le déflateur de la deuxième année est 104. PIB réel = 5 500 / 1,04 ≈ 5 288,5 milliards. Croissance réelle ≈ (5 288,5 − 5 000)/5 000 ≈ 5,77 %, alors que la croissance nominale est de 10 %.

## 3. L''inflation

L''inflation est une hausse générale et durable du niveau des prix. Elle se mesure par l''indice harmonisé des prix à la consommation (IHPC) dans les pays de l''UEMOA. On suit le coût d''un panier représentatif de la consommation des ménages.

- Indice de l''année n = coût du panier en n / coût du panier de base × 100.
- Taux d''inflation = (indice n − indice n−1) / indice n−1 × 100.

Exemple : le panier coûte 50 000 FCFA l''année de base, 52 000 FCFA l''année 1, 53 560 FCFA l''année 2. Indices : 100 ; 104 ; 107,12. Inflation : 4 % en année 1, puis (107,12 − 104)/104 = 3 % en année 2.

Causes de l''inflation : inflation par la demande (la demande globale dépasse les capacités de production), inflation par les coûts (hausse du prix du pétrole, des denrées importées, des salaires), inflation importée (hausse des prix mondiaux ; dans une zone à change fixe, la parité limite l''effet de change mais pas celui des prix mondiaux), inflation monétaire (création monétaire excessive). Conséquences : baisse du pouvoir d''achat des revenus fixes, perte de valeur de l''épargne, redistribution au profit des emprunteurs. La déflation (baisse générale des prix) est aussi dangereuse, car elle incite à reporter les achats.

## 4. Le chômage

Selon la définition du Bureau international du travail (BIT), un chômeur est une personne en âge de travailler qui, au cours d''une période de référence, n''a pas travaillé, est disponible pour travailler et recherche activement un emploi.

- Population active = personnes en emploi + chômeurs.
- Taux de chômage = chômeurs / population active × 100.

Exemple fictif : 180 000 chômeurs pour une population active de 2 000 000 personnes donnent un taux de chômage de 9 %.

Dans les pays où domine l''emploi informel, le taux de chômage au sens strict sous-estime les difficultés : beaucoup de personnes travaillent quelques heures, pour un revenu faible, sans protection sociale. On complète donc avec le sous-emploi (lié à la durée du travail), le taux d''emploi informel et la part des jeunes ni en emploi, ni en études, ni en formation.

## Points clés

- PIB = somme des valeurs ajoutées = C + I + G + X − M = somme des revenus primaires.
- La croissance se mesure sur le PIB réel, pas sur le PIB nominal.
- L''inflation se calcule à partir de l''évolution d''un indice des prix.
- Le chômage BIT se complète par des mesures du sous-emploi et de l''informalité.

## Exercices

- Exercice 1 : Un producteur vend des arachides à une huilerie pour 100 ; l''huilerie vend son huile à un commerçant pour 250 ; le commerçant la revend aux ménages pour 320. Calculez les valeurs ajoutées et la contribution au PIB.
- Exercice 2 : PIB nominal année 1 : 8 000 milliards ; année 2 : 8 640 milliards ; déflateur année 2 (base année 1) : 105. Calculez la croissance réelle.
- Exercice 3 : L''indice des prix passe de 112 à 115,36. Calculez le taux d''inflation.
- Exercice 4 : Une région compte 500 000 personnes en emploi et 60 000 chômeurs. Calculez le taux de chômage. Pourquoi ce chiffre peut-il donner une image incomplète ?

## Corrigé

- Exercice 1 : VA producteur = 100 (on suppose qu''il n''a pas de consommations intermédiaires) ; VA huilerie = 250 − 100 = 150 ; VA commerçant = 320 − 250 = 70. Total = 320, égal à la valeur du bien final.
- Exercice 2 : PIB réel année 2 = 8 640 / 1,05 ≈ 8 228,6 milliards. Croissance réelle ≈ 228,6 / 8 000 ≈ 2,86 %, contre 8 % en nominal.
- Exercice 3 : (115,36 − 112)/112 = 3,36/112 = 0,03, soit 3 %.
- Exercice 4 : Population active = 560 000 ; taux = 60 000/560 000 ≈ 10,7 %. Le chiffre ignore le sous-emploi, les emplois informels précaires et les personnes découragées qui ne cherchent plus d''emploi (elles ne sont pas comptées comme chômeurs).', 'texte', 55, false, 40
from public.courses c where c.slug = 'economie-generale-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Macroéconomie : PIB, croissance, inflation et chômage');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Monnaie, banques, UEMOA et BCEAO', '## Objectifs de la leçon

- Connaître les fonctions et les formes de la monnaie.
- Comprendre la création monétaire par les banques.
- Présenter l''UEMOA, la BCEAO et les mécanismes généraux de la zone franc.
- Comprendre les instruments de la politique monétaire commune.

## 1. Les fonctions de la monnaie

La monnaie remplit trois fonctions classiques : intermédiaire des échanges (elle évite les difficultés du troc, qui suppose une double coïncidence des besoins), unité de compte (elle permet de comparer la valeur de biens différents) et réserve de valeur (elle permet de reporter une dépense dans le temps, à condition que l''inflation reste modérée).

## 2. Les formes de la monnaie

La monnaie a pris des formes successives : monnaie marchandise (cauris, sel, métaux), monnaie métallique, monnaie fiduciaire (billets et pièces, dont la valeur repose sur la confiance) et monnaie scripturale (soldes des comptes bancaires, mobilisés par chèque, virement ou carte). La monnaie électronique, très développée en Afrique de l''Ouest grâce au paiement par téléphone mobile, est encadrée par la réglementation de la banque centrale : les unités de valeur émises doivent être adossées à des fonds déposés.

## 3. La création monétaire

Contrairement à une idée reçue, la plus grande partie de la monnaie est créée par les banques commerciales lorsqu''elles accordent des crédits : « les crédits font les dépôts ». Quand une banque prête 5 millions de FCFA à un commerçant, elle crédite son compte ; une monnaie nouvelle apparaît. Lorsque le crédit est remboursé, la monnaie est détruite.

Cette création est limitée par plusieurs facteurs : le besoin des banques de se refinancer auprès de la banque centrale pour obtenir de la monnaie centrale (billets, réserves), les réserves obligatoires, les règles prudentielles et la demande de crédit solvable.

Modèle simplifié du multiplicateur : si les banques doivent conserver une fraction r de leurs dépôts en réserves et que toute la monnaie reste dans le circuit bancaire, un dépôt initial D peut, au maximum, donner D × 1/r de dépôts au total. Avec r = 10 % (taux fictif pour l''exemple), un dépôt de 1 000 000 FCFA peut au maximum générer 10 000 000 FCFA de dépôts. Ce modèle est pédagogique : dans la réalité, les fuites en billets sont importantes dans nos économies, ce qui réduit fortement le multiplicateur.

## 4. L''UEMOA et la BCEAO

L''Union économique et monétaire ouest-africaine (UEMOA) regroupe huit pays : Bénin, Burkina Faso, Côte d''Ivoire, Guinée-Bissau, Mali, Niger, Sénégal et Togo. Ils partagent une monnaie commune, le franc CFA, et une banque centrale commune, la Banque centrale des États de l''Afrique de l''Ouest (BCEAO), dont le siège est à Dakar.

Le franc CFA de l''UEMOA est lié à l''euro par une parité fixe : 1 euro = 655,957 FCFA. Cette parité facilite les échanges avec la zone euro et contribue à une inflation généralement modérée, mais elle prive les États de l''outil du taux de change pour absorber un choc et elle soulève des débats sur la compétitivité et la souveraineté monétaire.

Les mécanismes historiques de la coopération monétaire avec la France reposaient sur quatre principes : la garantie de convertibilité par le Trésor français, la fixité de la parité, la libre transférabilité au sein de la zone, et la centralisation d''une partie des réserves de change. Une réforme annoncée fin 2019 a notamment prévu le changement de nom de la monnaie (projet « Eco »), la fin de l''obligation de dépôt des réserves auprès du Trésor français et le retrait de la France des instances de gouvernance, tout en maintenant à ce stade la parité fixe et la garantie. La mise en œuvre et l''avenir de la monnaie font l''objet de discussions régionales : il convient de suivre les informations officielles les plus récentes.

## 5. La politique monétaire de la BCEAO

L''objectif principal de la BCEAO est la stabilité des prix ; sans préjudice de cet objectif, elle apporte son soutien aux politiques économiques de l''Union. Ses instruments principaux sont :

- Les taux directeurs : le taux auquel elle prête aux banques lors de ses opérations de refinancement (appels d''offres) et le taux du guichet de prêt marginal. Une hausse des taux renchérit le crédit et freine la demande et l''inflation ; une baisse soutient l''activité.
- Les réserves obligatoires : une fraction des dépôts que les banques doivent conserver à la banque centrale ; les relever réduit la capacité de prêt.
- La surveillance du système bancaire et de la microfinance, en lien avec la Commission bancaire de l''UMOA.

La politique budgétaire reste nationale, mais elle est encadrée par des critères de convergence (notamment sur le déficit budgétaire, l''endettement et l''inflation), afin d''éviter qu''un pays ne fragilise la monnaie commune. Les valeurs de ces critères sont fixées par les textes de l''Union : il faut toujours vérifier la version en vigueur.

## Points clés

- La monnaie est intermédiaire des échanges, unité de compte et réserve de valeur.
- Les banques créent la monnaie en accordant des crédits, sous la contrainte du refinancement et des règles.
- Huit pays de l''UEMOA partagent le franc CFA et la BCEAO, avec une parité fixe à l''euro.
- La BCEAO agit principalement par ses taux directeurs et les réserves obligatoires.

## Exercices

- Exercice 1 : Citez les trois fonctions de la monnaie et illustrez chacune par un exemple tiré de la vie quotidienne au Sénégal.
- Exercice 2 : Avec un coefficient de réserves de 5 % (taux fictif), quel est le multiplicateur théorique ? Quel montant maximal de dépôts peut résulter d''un dépôt initial de 2 millions de FCFA ?
- Exercice 3 : Convertissez 1 500 euros en FCFA à la parité fixe.
- Exercice 4 : Expliquez pourquoi une hausse des taux directeurs de la BCEAO peut réduire l''inflation.
## Corrigé

- Exercice 1 : Intermédiaire des échanges : payer son ticket de bus en FCFA ; unité de compte : comparer le prix d''un sac de riz et d''un bidon d''huile ; réserve de valeur : épargner sur un compte ou dans une tontine pour la rentrée scolaire.
- Exercice 2 : Multiplicateur = 1/0,05 = 20. Dépôts maximaux = 2 000 000 × 20 = 40 000 000 FCFA (dans un modèle sans fuite en billets).
- Exercice 3 : 1 500 × 655,957 = 983 935,5 FCFA, soit environ 983 936 FCFA.
- Exercice 4 : Le refinancement des banques coûte plus cher, elles relèvent leurs taux débiteurs, le crédit diminue, la demande de consommation et d''investissement ralentit, ce qui réduit la pression sur les prix.', 'texte', 55, false, 50
from public.courses c where c.slug = 'economie-generale-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Monnaie, banques, UEMOA et BCEAO');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : de l''équilibre de marché à la politique monétaire', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 1 en économie, gestion ou droit.
- Objectifs : maîtriser l''équilibre de marché et les élasticités, calculer et interpréter PIB, inflation et chômage, comprendre le fonctionnement de la monnaie dans l''UEMOA.
- Matériel : tableau blanc ou diaporama, calculatrice, graphiques offre-demande préparés, carte de l''UEMOA.
- Prérequis : pourcentages, résolution d''une équation du premier degré.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et fil conducteur

Bonjour à toutes et à tous. Pendant une heure et demie, nous allons parcourir l''essentiel de l''économie générale de première année. Je vous propose un fil conducteur : le prix d''un sac de riz à Dakar. Pourquoi ce prix est-il ce qu''il est ? Comment réagissent les ménages quand il augmente ? Qu''est-ce que cela change pour le PIB, pour l''inflation et pour la banque centrale ? À la fin de la séance, vous saurez répondre à ces questions avec des outils précis.

Visuel : diapositive titre avec une photo de marché et le plan en quatre parties : marchés, élasticités, agrégats, monnaie.

Question à la classe : qui a déjà constaté une hausse des prix au marché récemment ? Notez mentalement le produit concerné, nous y reviendrons.

## 05:00 – 15:00 · L''économie, science des choix

Commençons par la base. L''économie étudie comment on utilise des ressources rares pour satisfaire des besoins illimités. La rareté oblige à choisir, et chaque choix a un coût d''opportunité : ce à quoi on renonce. Quand l''État consacre un milliard de FCFA à une route, ce milliard ne va pas à un hôpital.

Je dessine au tableau le circuit économique : ménages et entreprises reliés par le travail et les salaires, les biens et les dépenses de consommation. J''ajoute l''État, les banques et le reste du monde. Retenez que les flux réels et les flux monétaires circulent en sens inverse.

Enfin, distinguez la microéconomie, qui regarde un marché ou un agent, et la macroéconomie, qui regarde l''ensemble du pays. Nous allons passer de l''une à l''autre.

## 15:00 – 30:00 · Offre, demande et équilibre

Visuel : graphique avec une courbe de demande décroissante et une courbe d''offre croissante.

La demande baisse quand le prix monte, à cause de l''effet de substitution et de l''effet revenu. L''offre augmente avec le prix, car produire devient plus rentable. L''équilibre est au croisement.

Faisons un calcul ensemble. Demande d''oignons : Qd = 1 000 − 2P. Offre : Qs = 200 + 2P. On écrit Qd = Qs : 1 000 − 2P = 200 + 2P, donc 800 = 4P, P = 200 FCFA le kilo. La quantité est 1 000 − 400 = 600 tonnes. Vérifiez avec l''offre : 200 + 400 = 600. C''est bon.

Maintenant, imaginons un prix plafond de 150 FCFA. Calculez vous-mêmes la demande et l''offre. Je vous laisse une minute. Réponse : Qd = 700 et Qs = 500, donc une pénurie de 200 tonnes. Voilà pourquoi les prix administrés s''accompagnent souvent de files d''attente ou de ventes au-dessus du prix officiel.

Point de méthode essentiel : un changement du prix du bien fait bouger le long de la courbe ; un changement d''un autre facteur, comme le revenu ou le coût des engrais, déplace la courbe entière. Question : la Tabaski approche, quelle courbe se déplace sur le marché des moutons, et dans quel sens ? Réponse attendue : la demande, vers la droite ; prix et quantité augmentent.

## 30:00 – 42:00 · Les élasticités

Savoir que la demande baisse ne suffit pas, il faut mesurer de combien. L''élasticité-prix est le rapport entre la variation en pourcentage de la quantité et la variation en pourcentage du prix.

Exemple : la baguette passe de 150 à 175 FCFA, soit plus 16,67 %. Les ventes passent de 1 000 à 950, soit moins 5 %. L''élasticité vaut −5 divisé par 16,67, environ −0,3. La demande est inélastique. Conséquence : la recette augmente, de 150 000 à 166 250 FCFA.

Retenez la règle : demande inélastique, la hausse de prix augmente la recette ; demande élastique, elle la diminue.

Visuel : tableau récapitulatif des élasticités. Élasticité-revenu négative : bien inférieur ; entre 0 et 1 : bien de nécessité ; supérieure à 1 : bien de luxe. Élasticité croisée positive : substituts, comme le riz local et le riz importé ; négative : compléments, comme le téléphone et le crédit de communication.

Question : pourquoi les États taxent-ils volontiers les carburants et le tabac ? Parce que la demande est inélastique : la taxe rapporte, la consommation baisse peu.

## 42:00 – 50:00 · Pause interactive et quiz

Faisons une pause active de quelques minutes. Répondez sur votre feuille ou dans le chat.

- Question 1 : Qd = 600 − 3P et Qs = 100 + 2P. Quel est le prix d''équilibre ? Réponse : 500 = 5P, donc P = 100, et Q = 300.
- Question 2 : Le prix passe de 500 à 600 et la quantité de 2 000 à 1 500. Élastique ou inélastique ? Réponse : −25 % / 20 % = −1,25, élastique ; la recette baisse.
- Question 3 : Le revenu monte de 10 % et la consommation de viande de 15 %. Quel type de bien ? Réponse : élasticité 1,5, bien de luxe.

Prenez une minute pour vous étirer, nous passons à la macroéconomie.

## 50:00 – 1:02:00 · Le PIB et la croissance

Le PIB mesure la valeur des biens et services finals produits sur le territoire en un an. On peut le calculer par la production, en additionnant les valeurs ajoutées ; par les dépenses, avec C + I + G + X − M ; ou par les revenus.

Exemple au tableau : l''arachide vendue 100 à l''huilerie, l''huile vendue 250 au commerçant, puis 320 aux ménages. Les valeurs ajoutées sont 100, 150 et 70, total 320. Si l''on additionnait les ventes, on obtiendrait 670 : on compterait l''arachide trois fois.

Distinguez PIB nominal et PIB réel. Si le PIB nominal passe de 5 000 à 5 500 milliards avec un déflateur de 104, le PIB réel est 5 500 divisé par 1,04, soit environ 5 288,5 milliards. La croissance réelle est d''environ 5,8 %, et non 10 %. La différence, c''est la hausse des prix.

Point d''attention pour nos pays : une grande partie de l''activité est informelle. L''ANSD l''estime par des enquêtes, mais la mesure reste délicate. Et le PIB par habitant ne dit rien des inégalités.

## 1:02:00 – 1:12:00 · Inflation et chômage

L''inflation est une hausse générale et durable des prix. Dans l''UEMOA, on la mesure par l''indice harmonisé des prix à la consommation. Si le panier coûte 50 000 FCFA, puis 52 000, l''indice passe de 100 à 104 : 4 % d''inflation.

Visuel : schéma des causes de l''inflation. Inflation par la demande, par les coûts, importée, monétaire. Pour un pays importateur de riz, de blé et de produits pétroliers, l''inflation importée est un enjeu majeur.

Le chômage, au sens du BIT, concerne les personnes sans emploi, disponibles et en recherche active. Taux de chômage égale chômeurs sur population active. Mais dans nos économies, beaucoup de personnes ne sont pas au chômage au sens strict tout en étant sous-employées : un vendeur ambulant qui travaille quelques heures par jour pour un faible revenu. C''est pourquoi on complète avec le sous-emploi et l''emploi informel.

Question à la classe : un diplômé qui a cessé de chercher un emploi par découragement est-il chômeur au sens du BIT ? Réponse : non, il n''est plus dans la population active, ce qui peut faire baisser artificiellement le taux de chômage.

## 1:12:00 – 1:22:00 · Monnaie, UEMOA et BCEAO

La monnaie a trois fonctions : intermédiaire des échanges, unité de compte, réserve de valeur. Aujourd''hui, l''essentiel est scriptural ou électronique ; le paiement par téléphone mobile en est un exemple quotidien.

Qui crée la monnaie ? Principalement les banques, en accordant des crédits. Mais elles doivent se refinancer auprès de la banque centrale et respecter des réserves obligatoires.

Visuel : carte des huit pays de l''UEMOA : Bénin, Burkina Faso, Côte d''Ivoire, Guinée-Bissau, Mali, Niger, Sénégal et Togo. Leur banque centrale commune est la BCEAO, dont le siège est à Dakar. Le franc CFA est arrimé à l''euro par une parité fixe : 1 euro égale 655,957 FCFA.

Avantages : stabilité des prix, crédibilité. Limites : pas d''ajustement par le change en cas de choc, débat sur la souveraineté. Une réforme annoncée en 2019 a modifié certains mécanismes, notamment la centralisation des réserves et la présence française dans les instances ; l''évolution de la monnaie reste un sujet de discussions régionales, à suivre dans les sources officielles.

La BCEAO a pour objectif principal la stabilité des prix. Son instrument phare : les taux directeurs. Si elle les relève, le crédit renchérit, la demande ralentit, l''inflation baisse.

## 1:22:00 – 1:30:00 · Synthèse et évaluation finale

Revenons à notre sac de riz. Son prix résulte de l''offre et de la demande ; sa demande est peu élastique car c''est un bien de nécessité ; une hausse de son prix mondial alimente l''inflation importée ; la BCEAO peut agir sur la demande globale par ses taux, mais pas sur le prix mondial. Vous voyez comment micro et macro se rejoignent.

Évaluation finale, cinq questions :

- Question 1 : Qd = 900 − 4P et Qs = 100 + 4P. Calculez l''équilibre. Réponse : 800 = 8P, P = 100, Q = 500.
- Question 2 : Une hausse de prix de 10 % fait baisser la quantité de 4 %. Élasticité et effet sur la recette ? Réponse : −0,4, inélastique, la recette augmente.
- Question 3 : PIB nominal 6 300 milliards, déflateur 105, PIB réel de l''année précédente 5 800 milliards. Croissance réelle ? Réponse : PIB réel = 6 000 ; croissance = 200/5 800 ≈ 3,45 %.
- Question 4 : Indice des prix de 120 à 123. Inflation ? Réponse : 3/120 = 2,5 %.
- Question 5 : Quel est l''objectif principal de la BCEAO et quel est son instrument principal ? Réponse : la stabilité des prix ; les taux directeurs, complétés par les réserves obligatoires.

Merci pour votre attention. Pour la prochaine séance, refaites les exercices des cinq leçons écrites et préparez une question sur l''actualité économique de votre pays.', 'video', 90, false, 60
from public.courses c where c.slug = 'economie-generale-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : de l''équilibre de marché à la politique monétaire');

-- Cours : Gérer la paie et les RH au Sénégal
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'formation-paie-senegal', (select id from public.levels where name = 'Formation professionnelle'), 'paie-senegal', 'Paie et ressources humaines', 'Gérer la paie et les RH au Sénégal', 'Cette formation professionnelle apprend à gérer la paie et l''administration du personnel dans une entreprise sénégalaise : cadre juridique, dossier salarié, temps de travail, construction du bulletin du brut au net, déclarations et solde de tout compte. Elle s''adresse aux comptables, assistants RH, gestionnaires de paie et dirigeants de PME. Prérequis : maîtrise des pourcentages et notions de base en comptabilité ; les exemples utilisent des taux fictifs signalés, à remplacer par les textes officiels en vigueur.', true, 10
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Le cadre juridique de la paie et des RH au Sénégal', '## Objectifs de la leçon

- Situer la paie dans son environnement juridique sénégalais : loi, règlements, conventions collectives, contrat.
- Comprendre le rôle général des organismes sociaux (IPRES, CSS, IPM) et de l''administration fiscale.
- Savoir où chercher une règle et comment vérifier qu''elle est à jour, notamment dans le contexte de la réforme du Code du travail.

## Pourquoi le cadre juridique est la première compétence du gestionnaire de paie

Un bulletin de paie n''est pas un simple calcul : chaque ligne applique une règle de droit. Le salaire de base découle du contrat et de la classification conventionnelle, les heures supplémentaires d''une règle de durée du travail, les cotisations d''un texte de sécurité sociale, la retenue d''impôt d''un texte fiscal.

## La hiérarchie des sources

Au Sénégal, comme dans la plupart des pays d''Afrique francophone, les règles applicables à la relation de travail s''empilent selon une hiérarchie :

- La Constitution et les conventions internationales ratifiées (notamment celles de l''Organisation internationale du travail).
- La loi : le Code du travail actuellement en vigueur est la loi n° 97-17 du 1er décembre 1997, complétée par ses textes d''application (décrets et arrêtés).
- Les textes de sécurité sociale et le Code général des impôts pour la partie fiscale du salaire.
- Les conventions collectives : la convention collective nationale interprofessionnelle et les conventions de branche (commerce, banques, bâtiment, industries, etc.), avec leurs grilles de classification et leurs avantages.
- Les accords d''établissement, le règlement intérieur et les usages de l''entreprise.
- Le contrat de travail individuel.

Le principe directeur est celui de la règle la plus favorable au salarié : un contrat peut accorder plus que la convention collective, une convention plus que la loi, mais jamais moins sur les points d''ordre public social.

## Une transition à surveiller : le nouveau Code du travail

Le Sénégal est engagé dans une réforme de son droit du travail. Un projet de loi portant nouveau Code du travail (projet de loi n° 15/2026) est en cours de procédure. Tant qu''il n''est pas définitivement adopté, promulgué et accompagné de ses textes d''application, c''est le Code de 1997 qui s''applique. Le gestionnaire de paie doit donc adopter une attitude de veille : suivre la publication au Journal officiel, lire les dispositions transitoires, identifier les rubriques de paie potentiellement concernées (durée du travail, congés, rupture, contrats) et prévoir une date de bascule dans le logiciel.

## Les acteurs de la paie

- L''employeur : il calcule, retient, déclare et verse. Il est responsable même s''il sous-traite la paie à un cabinet.
- L''IPRES (Institution de prévoyance retraite du Sénégal) : elle gère la retraite des salariés du secteur privé, avec un régime général et un régime complémentaire pour les cadres. Les cotisations sont partagées entre employeur et salarié.
- La CSS (Caisse de sécurité sociale) : elle gère principalement les prestations familiales et la branche accidents du travail et maladies professionnelles. Ces cotisations sont à la charge de l''employeur.
- Les IPM (institutions de prévoyance maladie) : elles couvrent une partie des frais de santé des salariés et de leur famille ; l''adhésion est obligatoire selon les règles en vigueur et les cotisations sont partagées.
- L''administration fiscale (Direction générale des impôts et domaines) : l''employeur retient à la source l''impôt sur le revenu des salariés et la TRIMF, et acquitte certaines contributions patronales sur les salaires.
- L''inspection du travail : elle contrôle l''application du droit du travail, reçoit certaines déclarations et intervient dans les conflits.

## Méthode : vérifier une règle avant de la paramétrer

Face à une question (« Quel taux de cotisation retraite appliquer ? », « Cette prime est-elle imposable ? »), appliquez une méthode en quatre temps :

- Identifier la nature de la question : droit du travail, sécurité sociale, fiscalité ou convention collective.
- Trouver le texte officiel en vigueur à la date de paie (Journal officiel, site de l''organisme, circulaires, convention collective applicable à l''entreprise).
- Vérifier la date d''effet : un taux ou un plafond qui change en cours d''année s''applique aux salaires de la période concernée, pas avant.
- Documenter : noter la source et la date dans un dossier de paramétrage, afin de pouvoir justifier chaque valeur en cas de contrôle.

## Exemple concret

Une PME de distribution de Kaolack change de cabinet. Le nouveau gestionnaire constate que les salariés sont classés selon une grille périmée. Il identifie la convention applicable à l''activité principale, se procure la grille à jour, vérifie le régime de l''indemnité de transport dans les textes, puis propose un plan de régularisation.

## Points clés

- Chaque ligne du bulletin repose sur une source juridique identifiable.
- La règle la plus favorable au salarié prévaut, dans le respect de l''ordre public.
- Le Code du travail de 1997 reste applicable tant que le nouveau Code n''est pas en vigueur ; la veille juridique est une tâche permanente.
- IPRES (retraite), CSS (famille, accidents du travail), IPM (maladie) et administration fiscale sont les interlocuteurs principaux.
- Aucun taux ne se paramètre sans source officielle datée.

## Exercices

- Exercice 1 : Classez par ordre hiérarchique : contrat de travail, Code du travail, convention collective de branche, règlement intérieur.
- Exercice 2 : Un contrat prévoit 2 jours de congé de plus que la loi. La direction veut les supprimer en invoquant la loi. Que répondez-vous ?
- Exercice 3 : Associez chaque risque à son organisme : retraite, allocations familiales, accident du travail, frais médicaux.
- Exercice 4 : Le nouveau Code du travail est annoncé dans la presse. Listez trois actions concrètes du service paie.

## Corrigé

- Exercice 1 : Code du travail, puis convention collective de branche, puis règlement intérieur, puis contrat de travail. Attention : le contrat, bien que placé en bas, s''applique s''il est plus favorable.
- Exercice 2 : Le contrat est plus favorable que la loi ; ces jours constituent un engagement contractuel. L''employeur ne peut pas les supprimer unilatéralement en invoquant la loi, qui fixe un minimum. Une modification nécessiterait l''accord du salarié, selon les règles de modification du contrat.
- Exercice 3 : Retraite : IPRES. Allocations familiales : CSS. Accident du travail : CSS. Frais médicaux : IPM.
- Exercice 4 : Par exemple : surveiller la publication officielle et les textes d''application ; recenser les rubriques de paie et les procédures RH potentiellement modifiées ; planifier avec l''éditeur du logiciel une mise à jour datée et des tests avant la date d''entrée en vigueur. On peut ajouter l''information des salariés et des représentants du personnel.', 'texte', 45, true, 10
from public.courses c where c.slug = 'formation-paie-senegal'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Le cadre juridique de la paie et des RH au Sénégal');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Le dossier du salarié et les contrats de travail', '## Objectifs de la leçon

- Constituer un dossier salarié complet et conforme dès l''embauche.
- Distinguer les principaux types de contrats de travail et leurs conséquences en paie.
- Mettre en place les formalités d''embauche et la mise à jour des données de paie.

## Le dossier du salarié : la base de données de la paie

La paie ne peut être juste que si les données du salarié sont justes. Le dossier salarié rassemble les informations administratives, contractuelles et sociales nécessaires au calcul et aux déclarations. Il existe généralement sous deux formes : un dossier physique ou numérisé (pièces justificatives) et une fiche dans le logiciel de paie (données paramétrées).

Contenu recommandé du dossier :

- Identité : pièce d''identité, date et lieu de naissance, adresse, numéro d''identification nationale.
- Situation familiale : certificat de mariage, extraits de naissance des enfants. Ces pièces servent au calcul des parts fiscales et aux prestations familiales.
- Contrat de travail signé et ses avenants.
- Numéros d''immatriculation auprès de l''IPRES, de la CSS et de l''IPM.
- Coordonnées bancaires ou de paiement électronique pour le virement du salaire.
- Visite médicale d''embauche et documents de santé au travail.

Ces données personnelles doivent être protégées (accès restreint, conservation limitée), conformément à la législation sénégalaise sur les données personnelles.

## Les principaux contrats de travail

Le droit sénégalais distingue notamment :

- Le contrat à durée indéterminée (CDI) : c''est la forme normale de la relation de travail. Il peut comporter une période d''essai, dont la durée dépend de la catégorie professionnelle selon les textes et conventions.
- Le contrat à durée déterminée (CDD) : il comporte un terme précis ou est conclu pour un objet déterminé. Le droit encadre sa durée et son renouvellement ; un CDD qui ne respecte pas ces règles peut être requalifié en CDI.
- Les contrats particuliers : travail temporaire, contrat saisonnier, contrat d''apprentissage, stage, travail à temps partiel. Chacun obéit à des règles spécifiques de rémunération et de déclaration.

Ces règles font partie des points susceptibles d''évoluer avec le nouveau Code du travail en projet : vérifiez toujours le texte applicable à la date de signature du contrat.

## Clauses du contrat qui intéressent la paie

- La date d''entrée : point de départ de l''ancienneté et du calcul des congés.
- La qualification et la catégorie : elles déterminent le salaire minimum conventionnel.
- Le salaire de base et ses éléments fixes (primes contractuelles, avantages en nature comme le logement ou le véhicule).
- La durée du travail : temps plein, temps partiel, forfait éventuel.
- La période d''essai et le préavis.

## Méthode : les formalités d''embauche en six étapes

- Étape 1 : rédiger et faire signer le contrat avant ou au plus tard le jour de l''embauche, en vérifiant la classification.
- Étape 2 : accomplir la déclaration d''embauche auprès des services compétents (inspection du travail ou service de la main-d''œuvre, selon les procédures en vigueur).
- Étape 3 : immatriculer ou rattacher le salarié auprès de l''IPRES, de la CSS et de l''IPM.
- Étape 4 : organiser la visite médicale d''embauche.
- Étape 5 : créer la fiche salarié dans le logiciel avec toutes les données, puis la faire contrôler par une seconde personne.
- Étape 6 : inscrire le salarié au registre de l''employeur et remettre les documents d''accueil (règlement intérieur, consignes de sécurité).

## Exemple concret

Une société de services informatiques de Dakar embauche Moussa, développeur, en CDI au 15 mars. Son contrat indique : catégorie conventionnelle « agent de maîtrise », salaire de base 450 000 FCFA, période d''essai de trois mois. Moussa est marié et a deux enfants. Le gestionnaire crée la fiche : date d''entrée 15 mars (le premier mois sera calculé au prorata), situation familiale justifiée par les pièces (pour les parts fiscales et les prestations familiales), immatriculations IPRES, CSS, IPM lancées. Pour mars, il calcule un salaire au prorata du temps de présence. Avec la méthode des jours calendaires, Moussa est présent 17 jours sur 31 : 450 000 × 17/31 ≈ 246 774 FCFA. La méthode de proratisation (jours calendaires, jours ouvrables, heures) doit être celle prévue par l''entreprise ou la convention, et appliquée de façon constante.

## Les mises à jour en cours de contrat

Le dossier vit : changement d''adresse, naissance d''un enfant, promotion, passage à temps partiel, mutation dans une autre ville. Chaque événement doit être daté, justifié et saisi avant la clôture de paie. Une bonne pratique consiste à fixer une date limite mensuelle (par exemple le 20 du mois) pour transmettre les variables au service paie, et à tracer chaque modification (qui, quand, quelle pièce).

## Points clés

- Le dossier salarié est la source de vérité de la paie : données complètes, justifiées, protégées.
- Le CDI est la norme ; le CDD et les contrats particuliers sont strictement encadrés et peuvent être requalifiés.
- Date d''entrée, classification, salaire et durée du travail sont les clauses clés pour la paie.
- Les formalités d''embauche (déclaration, immatriculations, visite médicale) conditionnent la conformité.
- Toute modification doit être datée, justifiée et contrôlée.

## Exercices

- Exercice 1 : Citez cinq pièces indispensables au dossier d''un salarié marié avec trois enfants.
- Exercice 2 : Fatou est embauchée le 10 juin avec un salaire de base de 300 000 FCFA. Calculez son salaire de base de juin au prorata des jours calendaires.
- Exercice 3 : Pourquoi un CDD renouvelé au-delà des limites légales présente-t-il un risque pour l''employeur ?
- Exercice 4 : Un salarié annonce la naissance de son enfant le 28 du mois, après la clôture de paie. Que faites-vous ?

## Corrigé

- Exercice 1 : Pièce d''identité, contrat signé, certificat de mariage, extraits de naissance des trois enfants, numéros d''immatriculation IPRES, CSS et IPM, coordonnées bancaires. Toute combinaison pertinente de cinq pièces est acceptée.
- Exercice 2 : Juin compte 30 jours ; Fatou est présente du 10 au 30, soit 21 jours. Salaire : 300 000 × 21/30 = 210 000 FCFA.
- Exercice 3 : Le CDD irrégulier peut être requalifié en CDI par le juge. L''employeur perd alors la possibilité de mettre fin au contrat à l''échéance : la rupture devient un licenciement, avec préavis, indemnités et éventuels dommages-intérêts.
- Exercice 4 : Demander l''extrait de naissance, mettre à jour la fiche avec la date de l''événement et appliquer les effets (parts fiscales, prestations familiales) sur la paie suivante, avec régularisation si la règle prévoit un effet à une date antérieure. Tracer la modification.', 'texte', 45, false, 20
from public.courses c where c.slug = 'formation-paie-senegal'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Le dossier du salarié et les contrats de travail');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Temps de travail, heures supplémentaires, absences et congés', '## Objectifs de la leçon

- Comprendre les notions de durée légale, de temps de travail effectif et d''heures supplémentaires.
- Savoir valoriser les heures supplémentaires et les absences en paie.
- Maîtriser le mécanisme d''acquisition et de paiement des congés payés.

## Durée du travail : les notions de base

La durée légale du travail est la référence au-delà de laquelle les heures deviennent des heures supplémentaires. Le Code du travail actuel fixe une durée hebdomadaire de référence pour les établissements non agricoles (40 heures) et un régime spécifique, exprimé sur l''année, pour les exploitations agricoles. Vérifiez ces valeurs dans le texte en vigueur, car la réforme du Code du travail en projet pourrait modifier certaines règles de durée et d''aménagement du temps.

Le temps de travail effectif est le temps pendant lequel le salarié est à la disposition de l''employeur et se conforme à ses directives.

Pour passer d''une durée hebdomadaire à une durée mensuelle, on utilise l''horaire mensuel moyen : 40 heures × 52 semaines / 12 mois = 173,33 heures. Le taux horaire d''un salarié mensualisé se calcule ainsi : salaire de base / 173,33.

## Les heures supplémentaires

Une heure supplémentaire est une heure de travail effectif accomplie au-delà de la durée légale (ou de la durée équivalente), à la demande ou avec l''accord de l''employeur. Elle donne droit à une majoration de salaire dont le taux varie selon :

- le rang de l''heure dans la semaine (les premières heures sont moins majorées que les suivantes) ;
- le moment où elle est effectuée (jour, nuit) ;
- le jour (jour ouvrable, repos hebdomadaire, jour férié).

Les taux de majoration sont fixés par les textes réglementaires et les conventions collectives : ne les inventez jamais, consultez le texte en vigueur. Le nombre d''heures supplémentaires est en outre plafonné.

Méthode de calcul :

- Étape 1 : compter les heures effectives de chaque semaine à partir des relevés de pointage ou des feuilles de temps validées.
- Étape 2 : identifier les heures au-delà de la durée de référence et les classer par tranche (rang, nuit, dimanche, férié).
- Étape 3 : calculer le taux horaire de base.
- Étape 4 : appliquer à chaque tranche le taux de majoration officiel : montant = nombre d''heures × taux horaire × (1 + taux de majoration).

Exemple avec taux fictifs : Ibrahima, magasinier à Rufisque, gagne 260 000 FCFA. Son taux horaire est 260 000 / 173,33 ≈ 1 500 FCFA. Dans le mois, il a effectué 6 heures de jour au-delà de la durée légale (majoration fictive de 15 %) et 4 heures un dimanche (majoration fictive de 60 %). Taux fictifs pour l''exemple : vérifier le texte officiel en vigueur.

- 6 h × 1 500 × 1,15 = 10 350 FCFA.
- 4 h × 1 500 × 1,60 = 9 600 FCFA.
- Total heures supplémentaires : 19 950 FCFA, ajoutés au brut.

## Les absences

Une absence peut être rémunérée (congé payé, jour férié chômé selon les règles, absence autorisée par la convention, comme certains événements familiaux), indemnisée par un organisme (accident du travail par exemple) ou non rémunérée (absence injustifiée, congé sans solde).

Pour une absence non rémunérée, on retire du salaire la valeur de la période non travaillée. Plusieurs méthodes existent : retenue en heures (heures d''absence × taux horaire), en jours ouvrables ou en jours calendaires. L''entreprise doit retenir une méthode conforme aux textes et à la jurisprudence, et l''appliquer de façon constante.

Exemple : un salarié à 260 000 FCFA s''absente sans justification 2 jours de 8 heures. Méthode horaire : 16 × 1 500 = 24 000 FCFA retenus.

Pour la maladie, les textes prévoient souvent un maintien de salaire selon l''ancienneté ; l''accident du travail relève de la CSS.

## Les congés payés : acquisition et indemnisation

Le salarié acquiert des droits à congé au fur et à mesure de son travail, selon un nombre de jours par mois de service fixé par la loi, éventuellement augmenté par la convention collective (ancienneté, mères de famille, etc.). Ces droits sont pris pendant une période et selon un ordre des départs organisés par l''employeur.

Pendant le congé, le salarié perçoit une allocation de congé. Le principe général est qu''elle doit correspondre à la rémunération moyenne perçue pendant la période de référence (salaire de base et éléments qui en sont l''accessoire). Le mécanisme est donc :

- Étape 1 : déterminer la période de référence et les jours acquis.
- Étape 2 : calculer la rémunération moyenne de la période, selon les éléments retenus par les textes.
- Étape 3 : en déduire l''allocation correspondant aux jours pris.
- Étape 4 : à la sortie, payer les droits acquis non pris sous forme d''indemnité compensatrice.

Le suivi des compteurs de congés (acquis, pris, restants) doit figurer sur le bulletin ou dans un état annexé, et être rapproché chaque mois.

## Points clés

- Le taux horaire d''un mensualisé à 40 h se calcule sur 173,33 heures.
- Les heures supplémentaires sont classées par tranche et majorées selon les taux officiels en vigueur.
- Les absences non rémunérées se valorisent selon une méthode constante et justifiable.
- Les congés s''acquièrent mois après mois et se paient sur la base de la rémunération moyenne.

## Exercices

- Exercice 1 : Calculez le taux horaire d''une salariée payée 346 660 FCFA par mois à temps plein (40 h).
- Exercice 2 : Avec ce taux, valorisez 8 heures supplémentaires de jour à un taux de majoration fictif de 15 %.
- Exercice 3 : Un salarié à 200 000 FCFA est absent sans justification 4 heures. Calculez la retenue (méthode horaire, arrondi au franc).
- Exercice 4 : Expliquez pourquoi l''allocation de congé ne se limite pas toujours au salaire de base.

## Corrigé

- Exercice 1 : 346 660 / 173,33 = 2 000 FCFA (346 660 / 173,33 = 2 000,0 environ).
- Exercice 2 : 8 × 2 000 × 1,15 = 18 400 FCFA (taux fictif, à vérifier dans le texte officiel).
- Exercice 3 : Taux horaire : 200 000 / 173,33 ≈ 1 153,87 FCFA. Retenue : 4 × 1 153,87 ≈ 4 615 FCFA.
- Exercice 4 : Parce que l''allocation doit refléter la rémunération habituelle du salarié pendant la période de référence ; certains éléments réguliers liés au travail (primes, heures supplémentaires habituelles, selon ce que prévoient les textes) peuvent entrer dans la base. Se limiter au salaire de base peut léser le salarié.', 'texte', 50, false, 30
from public.courses c where c.slug = 'formation-paie-senegal'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Temps de travail, heures supplémentaires, absences et congés');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Construire le bulletin de paie : du brut au net', '## Objectifs de la leçon

- Connaître la structure d''un bulletin de paie et ses rubriques.
- Distinguer les différentes assiettes : brut, brut soumis à cotisations, brut imposable, net.
- Construire un bulletin complet du brut au net avec une méthode rigoureuse.

## La structure d''un bulletin

Un bulletin de paie se lit de haut en bas comme un raisonnement :

- En-tête : employeur (raison sociale, adresse, numéros d''immatriculation), salarié (nom, matricule, emploi, catégorie, date d''entrée), période de paie.
- Éléments de rémunération : salaire de base, primes et indemnités, heures supplémentaires, avantages en nature, retenues pour absence.
- Cotisations sociales : part salariale et part patronale, avec base, taux et montant.
- Impôts retenus à la source.
- Net à payer, après déduction des acomptes ou avances.

## Les assiettes : la clé de la paie

Toutes les rubriques ne subissent pas les mêmes prélèvements. On distingue :

- Le salaire brut total : somme de tous les éléments de rémunération.
- Le brut soumis à cotisations : éléments ayant le caractère de salaire au sens de la sécurité sociale. Certaines indemnités représentatives de frais (transport, par exemple, dans les limites prévues) peuvent en être exclues.
- La base plafonnée : certaines cotisations ne s''appliquent que jusqu''à un plafond mensuel fixé par les textes. Au-delà, la part du salaire n''est pas cotisée pour ce risque.
- Le brut imposable : base de l''impôt sur le revenu retenu à la source, déterminée selon le Code général des impôts (avec ses abattements et exonérations éventuels).

Chaque rubrique du logiciel doit donc être paramétrée avec trois questions : entre-t-elle dans le brut ? Est-elle soumise à cotisations ? Est-elle imposable ?

## Les principales retenues au Sénégal (mécanismes)

- Retraite IPRES : cotisation partagée entre salarié et employeur, sur une base plafonnée ; régime complémentaire pour les cadres.
- IPM : cotisation maladie partagée, dans les conditions de l''institution.
- CSS : prestations familiales et accidents du travail, à la charge exclusive de l''employeur, sur une base plafonnée.
- Impôt sur le revenu : calculé selon le barème progressif et le système des parts (quotient familial), retenu chaque mois.
- TRIMF : taxe représentative de l''impôt du minimum fiscal, montant forfaitaire selon une grille de revenus.
- Contributions patronales sur les salaires (comme la CFCE) : à la charge de l''employeur, elles n''apparaissent pas en retenue sur le salarié.

Les taux, plafonds et barèmes évoluent : ils doivent être pris dans les textes officiels en vigueur. Dans les exemples ci-dessous, tous les taux sont fictifs.

## Méthode : construire un bulletin en sept étapes

- Étape 1 : rassembler les variables du mois (heures, absences, primes, avances).
- Étape 2 : calculer les gains : salaire de base, primes, heures supplémentaires, moins les absences.
- Étape 3 : déterminer les assiettes (brut soumis, base plafonnée, brut imposable).
- Étape 4 : calculer les cotisations salariales et patronales.
- Étape 5 : calculer l''impôt retenu à la source et la TRIMF.
- Étape 6 : calculer le net, puis le net à payer après acomptes.
- Étape 7 : contrôler (cohérence, comparaison avec le mois précédent, cumuls).

## Exemple complet (taux fictifs pour l''exemple)

Aminata, comptable dans une entreprise de BTP à Saint-Louis, 3 ans d''ancienneté, salaire de base 300 000 FCFA. En octobre : 8 heures supplémentaires de jour, indemnité de transport 20 000 FCFA, avance sur salaire 20 000 FCFA.

Hypothèses fictives (à remplacer par les valeurs officielles en vigueur) : prime d''ancienneté 3 % du salaire de base ; majoration des heures supplémentaires 15 % ; indemnité de transport non soumise ; retraite salariale 6 % sous un plafond fictif de 400 000 FCFA ; IPM salariale 3 % sur une base plafonnée fictive de 250 000 FCFA ; impôt calculé ici de façon simplifiée à 8 % du brut imposable ; TRIMF forfaitaire fictive de 1 000 FCFA.

Gains :

- Salaire de base : 300 000.
- Prime d''ancienneté : 300 000 × 3 % = 9 000.
- Heures supplémentaires : taux horaire 300 000 / 173,33 ≈ 1 731 ; 1 731 × 1,15 ≈ 1 990,65 ; × 8 ≈ 15 925.
- Brut soumis et imposable : 300 000 + 9 000 + 15 925 = 324 925.
- Indemnité de transport (non soumise) : 20 000.
- Brut total : 344 925.

Retenues salariales :

- Retraite : 324 925 × 6 % ≈ 19 496 (base sous le plafond fictif).
- IPM : 250 000 × 3 % = 7 500 (base plafonnée).
- Impôt (simplifié) : 324 925 × 8 % = 25 994.
- TRIMF : 1 000.
- Total retenues : 53 990.

Net : 344 925 − 53 990 = 290 935 FCFA. Net à payer après l''avance : 290 935 − 20 000 = 270 935 FCFA.

Dans la réalité, l''impôt se calcule en annualisant le revenu imposable, en appliquant le barème progressif et les parts, puis en ramenant le résultat au mois : le taux unique de 8 % n''est qu''une simplification pédagogique.

## Points clés

- Le bulletin suit un raisonnement : gains, assiettes, cotisations, impôts, net.
- Chaque rubrique se paramètre selon trois questions : brut, soumis, imposable.
- Les cotisations plafonnées ne s''appliquent que jusqu''au plafond.

## Exercices

- Exercice 1 : Avec les taux fictifs de l''exemple, calculez la cotisation IPM salariale d''un salarié dont le brut soumis est 180 000 FCFA.
- Exercice 2 : Un salarié a un brut soumis de 500 000 FCFA. Avec le plafond fictif de 400 000 FCFA et le taux fictif de 6 %, calculez sa cotisation retraite.
- Exercice 3 : Reprenez l''exemple d''Aminata sans heures supplémentaires ni avance. Calculez son net à payer.

## Corrigé

- Exercice 1 : 180 000 est sous le plafond fictif de 250 000 : 180 000 × 3 % = 5 400 FCFA.
- Exercice 2 : La base est plafonnée à 400 000 : 400 000 × 6 % = 24 000 FCFA.
- Exercice 3 : Brut soumis : 300 000 + 9 000 = 309 000. Brut total : 329 000. Retraite : 309 000 × 6 % = 18 540. IPM : 7 500. Impôt : 309 000 × 8 % = 24 720. TRIMF : 1 000. Total retenues : 51 760. Net à payer : 329 000 − 51 760 = 277 240 FCFA.', 'texte', 60, false, 40
from public.courses c where c.slug = 'formation-paie-senegal'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Construire le bulletin de paie : du brut au net');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Déclarations sociales et fiscales, contrôles et solde de tout compte', '## Objectifs de la leçon

- Organiser les déclarations sociales et fiscales liées à la paie et respecter les échéances.
- Préparer l''entreprise à un contrôle social ou fiscal.
- Établir un solde de tout compte et les documents de fin de contrat.

## Les déclarations : principe général

Retenir des cotisations et de l''impôt sur le salaire ne suffit pas : l''employeur doit les déclarer et les reverser aux organismes, dans des délais fixés par les textes. Ces obligations sont périodiques (mensuelles ou trimestrielles selon l''organisme et la taille de l''entreprise) et annuelles (récapitulatifs nominatifs). Le Sénégal développe les téléprocédures : déclaration et paiement en ligne auprès de l''administration fiscale et, de plus en plus, des organismes sociaux. Le gestionnaire doit tenir un calendrier précis, car les retards entraînent majorations et pénalités.

## Les principales déclarations

- Déclarations aux organismes sociaux (IPRES et CSS) : elles récapitulent les salaires et les cotisations dues pour la période ; une déclaration annuelle nominative permet de reconstituer les droits de chaque salarié (notamment ses points de retraite).
- Cotisations IPM : versées selon les modalités de l''institution à laquelle l''entreprise adhère.
- Déclaration fiscale des retenues sur salaires : l''employeur déclare et verse l''impôt sur le revenu retenu, la TRIMF et les contributions patronales assises sur les salaires.
- Déclaration annuelle des salaires : état récapitulatif par salarié des rémunérations versées et des retenues, qui permet à l''administration de recouper.
- Déclaration d''accident du travail à la CSS, dans les délais réglementaires.

## Méthode : le cycle de clôture mensuelle

- Étape 1 : verrouiller les variables à la date limite.
- Étape 2 : lancer le calcul et éditer le journal de paie.
- Étape 3 : contrôler (comparaison avec le mois précédent, effectifs entrés et sortis, bases plafonnées).
- Étape 4 : valider, payer les salaires (virement bancaire ou paiement électronique).
- Étape 5 : comptabiliser la paie (charges de personnel, dettes envers les salariés et organismes).
- Étape 6 : établir les déclarations à partir du journal et des états de cotisations.
- Étape 7 : payer les organismes et l''administration, archiver les justificatifs.
- Étape 8 : rapprocher chaque mois les comptes de dettes sociales et fiscales avec les déclarations.

Le rapprochement de l''étape 8 est essentiel : le total des cotisations du journal de paie doit égaler le total déclaré et le total payé. Un écart signale une erreur ou un oubli.

## Se préparer aux contrôles

Les organismes sociaux, l''administration fiscale et l''inspection du travail peuvent contrôler l''entreprise. Ils vérifient notamment que tous les éléments de salaire ont été soumis correctement, que les déclarations correspondent aux livres de paie, que les salariés sont déclarés et que les règles du travail sont respectées. Bonnes pratiques :

- Conserver les journaux de paie, bulletins, déclarations et preuves de paiement pendant la durée légale de conservation.
- Tenir un dossier de paramétrage : chaque taux et chaque règle avec sa source et sa date d''effet.
- Corriger spontanément une erreur détectée, par une régularisation documentée.

## Le solde de tout compte

À la fin du contrat, quelle qu''en soit la cause (démission, licenciement, fin de CDD, départ à la retraite, rupture d''un commun accord), l''employeur établit le décompte final des sommes dues. Les éléments possibles :

- Le salaire de la dernière période travaillée, au prorata.
- L''indemnité compensatrice de congés payés pour les jours acquis et non pris.
- L''indemnité compensatrice de préavis si le préavis n''est pas exécuté à l''initiative de l''employeur.
- L''indemnité de licenciement en cas de licenciement (hors faute lourde), calculée selon l''ancienneté et un pourcentage du salaire moyen fixé par la convention collective.
- L''indemnité de fin de contrat ou de précarité pour certains CDD, si les textes la prévoient.
- Les primes dues au prorata (13e mois, gratification) si le contrat ou l''usage le prévoit.
- Moins : les avances et prêts restant dus, dans les limites légales de compensation.

Chaque indemnité a son régime social et fiscal propre : certaines sont soumises comme du salaire, d''autres partiellement ou totalement exonérées. Vérifiez le texte en vigueur pour chacune.

Les documents à remettre : le dernier bulletin, le certificat de travail, le reçu pour solde de tout compte et, selon les cas, l''attestation destinée aux organismes. Le nouveau Code du travail en projet pourrait modifier certaines règles de rupture et d''indemnisation : appliquez celles en vigueur à la date de rupture.

## Exemple chiffré (taux fictifs pour l''exemple)

Khady, agent commercial à Ziguinchor, salaire de base 240 000 FCFA, quitte l''entreprise par démission le 20 avril, préavis exécuté. Il lui reste 12 jours de congés acquis non pris. Hypothèse simplifiée : la rémunération journalière de référence pour les congés est de 240 000 / 26 jours ouvrables ≈ 9 231 FCFA (méthode fictive pour l''exemple).

- Salaire d''avril au prorata calendaire : 240 000 × 20/30 = 160 000 FCFA.
- Indemnité compensatrice de congés : 12 × 9 231 = 110 772 FCFA.
- Pas d''indemnité de licenciement (démission).
- Avance restant due : 30 000 FCFA à déduire après calcul du net.

Total brut : 270 772 FCFA, sur lequel on applique les cotisations et impôts selon le régime de chaque élément, avant de déduire l''avance.

## Points clés

- Retenir n''est pas suffisant : il faut déclarer et reverser à temps.
- Journal de paie, déclarations et paiements doivent se rapprocher exactement.
- Un dossier de paramétrage sourcé est la meilleure défense en cas de contrôle.
- Le solde de tout compte reprend toutes les sommes dues ; chaque indemnité a son régime propre.

## Exercices

- Exercice 1 : Le journal de paie indique 1 250 000 FCFA de cotisations IPRES, la déclaration 1 180 000 FCFA. Quelle démarche ?
- Exercice 2 : Mamadou est licencié pour motif économique. Listez les éléments possibles de son solde de tout compte.
- Exercice 3 : Reprenez l''exemple de Khady avec 15 jours de congés restants. Calculez le total brut.

## Corrigé

- Exercice 1 : Écart de 70 000 FCFA. Rechercher la cause (salarié omis, entrée ou sortie non prise en compte, erreur de plafond), corriger la déclaration ou la paie, régulariser auprès de l''organisme et documenter.
- Exercice 2 : Salaire au prorata, indemnité compensatrice de congés, indemnité de préavis si non exécuté à la demande de l''employeur, indemnité de licenciement selon l''ancienneté et la convention, primes au prorata si prévues, moins les avances. Plus les documents : certificat de travail, dernier bulletin, reçu pour solde de tout compte.
- Exercice 3 : Congés : 15 × 9 231 = 138 465 FCFA. Total brut : 160 000 + 138 465 = 298 465 FCFA.', 'texte', 50, false, 50
from public.courses c where c.slug = 'formation-paie-senegal'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Déclarations sociales et fiscales, contrôles et solde de tout compte');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : construire un bulletin de paie pas à pas', '## Fiche du cours vidéo

- Durée : 1h30.
- Titre de l''atelier : construire un bulletin de paie pas à pas.
- Objectifs : construire un bulletin complet à partir d''un dossier salarié et de variables mensuelles ; calculer les parts salariale et patronale ; obtenir le net à payer et le coût employeur ; mettre en place des contrôles.
- Matériel : diaporama, tableau blanc, un tableur partagé à l''écran, fiche de cas imprimée pour les participants, calculatrice.
- Prérequis : leçons 1 à 4 du cours (cadre juridique, dossier salarié, temps de travail, assiettes).
- Avertissement : tous les taux, plafonds et forfaits utilisés dans cet atelier sont des taux fictifs pour l''exemple. Ils ne doivent jamais être utilisés en paie réelle ; vérifiez toujours le texte officiel en vigueur.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et règles du jeu

Texte du formateur : « Bonjour à toutes et à tous, et bienvenue dans cet atelier pratique. Pendant une heure et demie, nous allons construire ensemble, ligne par ligne, le bulletin de paie d''une salariée. Pas de théorie abstraite : un dossier, des variables, un tableur et une méthode. Une règle d''or avant de commencer : tous les taux que vous verrez à l''écran sont fictifs. Je les ai choisis pour que les calculs soient lisibles. En entreprise, vous irez chercher chaque taux dans le texte officiel en vigueur, et vous noterez la source. »

Visuel : diapositive titre avec la mention « Taux fictifs pour l''exemple » en bandeau.

Question à poser : « Qui parmi vous a déjà établi un bulletin de paie, même à la main ? Qu''est-ce qui vous a paru le plus difficile ? »

## 05:00 – 15:00 · Présentation du cas : le dossier d''Awa

Texte du formateur : « Voici Awa Ndiaye, assistante comptable dans une PME de transformation de céréales à Thiès. Elle est en CDI depuis deux ans, catégorie employée, temps plein à 40 heures par semaine. Son salaire de base contractuel est de 250 000 FCFA. Nous établissons sa paie du mois de mai. Les variables transmises par son responsable sont les suivantes : 6 heures supplémentaires de jour, validées ; une journée d''absence non justifiée ; une indemnité de transport mensuelle de 15 000 FCFA. Pas d''avance ce mois-ci. »

« Première étape, toujours : vérifier le dossier. Le salaire de base respecte-t-il le minimum conventionnel de sa catégorie ? Sa situation familiale est-elle à jour ? Ses immatriculations IPRES, CSS et IPM sont-elles enregistrées ? On ne calcule pas un bulletin sur un dossier incomplet. »

Visuel : fiche salarié d''Awa projetée, avec les champs à contrôler surlignés.

Question : « Quelle pièce manquante pourrait fausser son impôt ? » Réponse attendue : les justificatifs de situation familiale, qui déterminent les parts.

## 15:00 – 25:00 · Les paramètres fictifs de l''atelier

Texte du formateur : « Avant de calculer, on affiche la table des paramètres. Dans un vrai logiciel, c''est le cœur du système : une table datée, sourcée, mise à jour à chaque changement réglementaire. Pour l''atelier, voici nos valeurs fictives. »

Visuel : tableau des paramètres fictifs.

- Prime d''ancienneté : 2 % du salaire de base (fictif).
- Majoration heures supplémentaires de jour : 15 % (fictif).
- Retenue pour absence : méthode du trentième, salaire de base / 30 par jour (choix de méthode pour l''exemple).
- Indemnité de transport : non soumise aux cotisations ni à l''impôt (hypothèse fictive).
- Retraite : 6 % salarié, 9 % employeur, sans plafond atteint (fictif).
- IPM : 3 % salarié, 3 % employeur, base plafonnée à 250 000 FCFA (fictif).
- Prestations familiales : 7 % employeur, base plafonnée à 70 000 FCFA (fictif).
- Accidents du travail : 1 % employeur, base plafonnée à 70 000 FCFA (fictif).
- Contribution patronale sur salaires : 3 % du brut soumis (fictif).
- Impôt sur le revenu : 8 % du brut imposable, simplification pédagogique (fictif).
- TRIMF : forfait de 1 000 FCFA (fictif).

« Remarquez la colonne "source" vide : en entreprise, elle serait remplie avec la référence du texte et la date d''effet. C''est ce que demandera un contrôleur. »

## 25:00 – 35:00 · Étape 1 : les gains

Texte du formateur : « On commence par les gains. Le salaire de base : 250 000 FCFA. La prime d''ancienneté : 250 000 × 2 % = 5 000 FCFA. Ensuite les heures supplémentaires. On calcule le taux horaire : 250 000 divisé par 173,33, soit environ 1 442 FCFA. Pourquoi 173,33 ? Parce que 40 heures × 52 semaines / 12 mois = 173,33 heures par mois. L''heure majorée vaut 1 442 × 1,15 = 1 658 FCFA en arrondissant. Six heures : 6 × 1 658 = 9 948 FCFA. »

« Puis l''absence. Avec la méthode du trentième, une journée vaut 250 000 / 30 = 8 333 FCFA. On l''inscrit en négatif. »

Visuel : le tableur se remplit ligne par ligne.

- Salaire de base : 250 000.
- Prime d''ancienneté : 5 000.
- Heures supplémentaires : 9 948.
- Absence : − 8 333.
- Sous-total soumis et imposable : 256 615.
- Indemnité de transport : 15 000.
- Brut total : 271 615.

Question : « Pourquoi l''indemnité de transport est-elle placée après le sous-total ? » Réponse : parce qu''elle n''entre pas, dans notre hypothèse, dans l''assiette des cotisations et de l''impôt.

## 35:00 – 45:00 · Étape 2 : les assiettes

Texte du formateur : « C''est le moment le plus important de l''atelier. Une erreur d''assiette, c''est une erreur sur toutes les cotisations. Nous avons trois bases. Le brut soumis : 256 615 FCFA. La base IPM, plafonnée à 250 000 FCFA : comme 256 615 dépasse le plafond fictif, on retient 250 000. La base prestations familiales et accidents du travail, plafonnée à 70 000 : on retient 70 000. Enfin, le brut imposable : dans notre cas simplifié, 256 615 FCFA. »

Visuel : schéma en entonnoir, du brut total vers les différentes bases.

Question : « Si Awa gagnait 60 000 FCFA, quelle serait sa base prestations familiales ? » Réponse : 60 000, car on retient le plus petit entre le salaire et le plafond.

## 45:00 – 50:00 · Pause interactive et quiz éclair

Texte du formateur : « Faisons une pause active de cinq minutes. Je vous pose trois questions, répondez dans le chat ou à main levée. »

- Question 1 : Quel est le taux horaire d''un salarié à 346 660 FCFA par mois à 40 heures ? Réponse : 2 000 FCFA.
- Question 2 : Une indemnité non soumise entre-t-elle dans le brut total ? Réponse : oui, elle entre dans le brut total mais pas dans l''assiette des cotisations.
- Question 3 : Une cotisation plafonnée à 70 000 FCFA pour un salaire de 500 000 FCFA se calcule sur quelle base ? Réponse : 70 000 FCFA.

« Bravo. Respirez, buvez un peu d''eau, on reprend avec les retenues. »

## 50:00 – 60:00 · Étape 3 : les retenues salariales et le net

Texte du formateur : « Calculons maintenant ce qui est retenu sur le salaire d''Awa. Retraite : 256 615 × 6 % = 15 396,90, arrondi à 15 397 FCFA. IPM : 250 000 × 3 % = 7 500 FCFA. Impôt simplifié : 256 615 × 8 % = 20 529,20, arrondi à 20 529 FCFA. TRIMF : 1 000 FCFA. Total des retenues : 15 397 + 7 500 + 20 529 + 1 000 = 44 426 FCFA. »

« Le net : brut total 271 615 moins 44 426, soit 227 189 FCFA. Pas d''avance ce mois-ci : le net à payer est de 227 189 FCFA. »

« Attention, je le répète : le vrai calcul de l''impôt sur le revenu au Sénégal passe par l''annualisation du revenu imposable, l''application du barème progressif et du système des parts familiales, puis le retour au mois. Notre taux unique de 8 % sert uniquement à apprendre la mécanique du bulletin. »

Visuel : partie « Retenues » du bulletin et encadré « Net à payer ».

## 1:00:00 – 1:10:00 · Étape 4 : les charges patronales et le coût employeur

Texte du formateur : « Le bulletin montre aussi ce que l''employeur paie en plus du brut. Retraite employeur : 256 615 × 9 % = 23 095,35, soit 23 095 FCFA. Prestations familiales : 70 000 × 7 % = 4 900 FCFA. Accidents du travail : 70 000 × 1 % = 700 FCFA. IPM employeur : 250 000 × 3 % = 7 500 FCFA. Contribution patronale sur salaires : 256 615 × 3 % = 7 698,45, soit 7 698 FCFA. Total des charges patronales : 43 893 FCFA. »

« Le coût total d''Awa pour l''entreprise est donc : 271 615 + 43 893 = 315 508 FCFA. C''est le chiffre qu''un dirigeant doit avoir en tête quand il budgète une embauche : non pas le salaire de base, mais le coût complet. »

Question : « Quel est le rapport entre coût total et net à payer ? » Réponse : 315 508 / 227 189 ≈ 1,39 avec nos taux fictifs.

## 1:10:00 – 1:18:00 · Étape 5 : les contrôles

Texte du formateur : « Un bulletin n''est terminé que lorsqu''il est contrôlé. Voici ma liste de contrôle en cinq points. Un : le total des gains moins le total des retenues donne-t-il bien le net ? Deux : les bases plafonnées sont-elles plafonnées ? Trois : le salaire de base respecte-t-il le minimum de la catégorie ? Quatre : la variation par rapport au mois précédent est-elle expliquée ? Ici, l''absence et les heures supplémentaires l''expliquent. Cinq : les compteurs de congés et les cumuls annuels sont-ils mis à jour ? »

Visuel : check-list projetée, cochée en direct.

## 1:18:00 – 1:24:00 · Étape 6 : de la paie aux déclarations

Texte du formateur : « Ce bulletin alimente trois flux. Le virement du net sur le compte d''Awa. L''écriture comptable : charges de personnel au débit, dettes envers le personnel, les organismes sociaux et l''État au crédit. Et les déclarations : retraite, prestations familiales, accidents du travail, IPM, impôts. Le total des cotisations du journal de paie doit correspondre exactement aux déclarations et aux paiements. »

Visuel : schéma des trois flux.

## 1:24:00 – 1:30:00 · Synthèse et évaluation finale

Texte du formateur : « Récapitulons la méthode : dossier vérifié, paramètres sourcés, gains, assiettes, retenues, charges patronales, contrôles, déclarations. Retenez surtout le réflexe de la source : aucun taux sans texte officiel daté. Et gardez à l''esprit que le Sénégal prépare un nouveau Code du travail ; votre table de paramètres devra être revue à son entrée en vigueur. Passons à l''évaluation finale. »

- Question 1 : Pourquoi divise-t-on le salaire de base par 173,33 ? Réponse : c''est l''horaire mensuel moyen pour 40 heures par semaine (40 × 52 / 12).
- Question 2 : Avec les paramètres fictifs de l''atelier, quelle serait la retenue retraite d''un brut soumis de 300 000 FCFA ? Réponse : 300 000 × 6 % = 18 000 FCFA.
- Question 3 : Quelle est la base IPM fictive d''un salarié dont le brut soumis est de 180 000 FCFA ? Réponse : 180 000 FCFA, car il est sous le plafond de 250 000.
- Question 4 : Quelle différence entre net à payer et coût employeur ? Réponse : le net est ce que reçoit le salarié après retenues ; le coût employeur est le brut total augmenté des charges patronales.
- Question 5 : Citez deux contrôles à faire avant de valider un bulletin. Réponse : par exemple, cohérence gains moins retenues égale net, plafonds appliqués, respect du minimum conventionnel, variation expliquée par rapport au mois précédent.

« Merci pour votre participation. Pour vous entraîner, refaites le bulletin d''Awa avec 10 heures supplémentaires et sans absence. »', 'video', 90, false, 60
from public.courses c where c.slug = 'formation-paie-senegal'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : construire un bulletin de paie pas à pas');

-- Cours : Mathématiques 6e : nombres, géométrie et proportionnalité
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'maths-6e', (select id from public.levels where name = '6e'), null, 'Mathématiques', 'Mathématiques 6e : nombres, géométrie et proportionnalité', 'Ce cours couvre l''essentiel du programme de mathématiques de 6e : nombres entiers et décimaux, fractions, géométrie de base, périmètres et aires, proportionnalité. Il s''adresse aux élèves entrant au collège et à leurs parents. Prérequis : maîtriser les quatre opérations sur les entiers vues à l''école élémentaire.', true, 10
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Nombres entiers et nombres décimaux', '## Objectifs de la leçon

- Lire, écrire et décomposer les nombres entiers et les nombres décimaux.
- Comparer, ranger et arrondir des nombres décimaux.
- Effectuer les quatre opérations et résoudre des problèmes de la vie courante.

## Les nombres entiers

Un nombre entier naturel sert à compter : 0, 1, 2, 3… Pour l''écrire, on utilise dix chiffres (0 à 9) et la position de chaque chiffre donne sa valeur. Dans 4 527 318, le chiffre 4 est le chiffre des millions, 5 celui des centaines de mille, 2 celui des dizaines de mille, 7 celui des unités de mille, 3 celui des centaines, 1 celui des dizaines et 8 celui des unités.

Pour lire facilement un grand nombre, on le sépare en tranches de trois chiffres en partant de la droite : 4 527 318 se lit « quatre millions cinq cent vingt-sept mille trois cent dix-huit ».

## Les nombres décimaux

Un nombre décimal possède une partie entière et une partie décimale, séparées par une virgule. Dans 25,476 : la partie entière est 25 ; le chiffre 4 est le chiffre des dixièmes, 7 celui des centièmes et 6 celui des millièmes.

- 1 dixième = 1/10 = 0,1
- 1 centième = 1/100 = 0,01
- 1 millième = 1/1 000 = 0,001

On peut donc écrire 25,476 = 25 + 4/10 + 7/100 + 6/1 000. Un nombre décimal peut aussi s''écrire comme une fraction décimale : 25,476 = 25 476/1 000.

Remarque importante : on peut ajouter ou supprimer des zéros à droite de la partie décimale sans changer le nombre. 3,5 = 3,50 = 3,500. En revanche 3,05 n''est pas égal à 3,5.

## Comparer et ranger des décimaux

Méthode :
- On compare d''abord les parties entières : le nombre qui a la plus grande partie entière est le plus grand.
- Si les parties entières sont égales, on compare les chiffres des dixièmes, puis des centièmes, puis des millièmes.

Exemple : comparer 12,8 et 12,75. Les parties entières sont égales (12). Chiffre des dixièmes : 8 contre 7. Donc 12,8 > 12,75. Piège : 12,75 n''est pas plus grand « parce que 75 > 8 » ; écrivez 12,80 et 12,75 pour comparer.

Ranger dans l''ordre croissant, c''est écrire du plus petit au plus grand avec le symbole < ; dans l''ordre décroissant, du plus grand au plus petit avec >.

## Arrondir et donner une valeur approchée

Pour arrondir au dixième, on regarde le chiffre des centièmes : s''il vaut 0, 1, 2, 3 ou 4, on garde le chiffre des dixièmes ; s''il vaut 5, 6, 7, 8 ou 9, on ajoute 1 au chiffre des dixièmes.

Exemple : 14,368 arrondi à l''unité donne 14 ; au dixième 14,4 ; au centième 14,37.

## Les quatre opérations

Addition et soustraction posées : on aligne les virgules les unes sous les autres, on complète avec des zéros si nécessaire, puis on calcule comme avec des entiers. Exemple : 125,6 + 38,75 = 164,35 et 200 − 64,8 = 135,2.

Multiplication : on multiplie sans tenir compte des virgules, puis on place la virgule dans le résultat de sorte qu''il ait autant de chiffres après la virgule que les deux facteurs réunis. Exemple : 3,4 × 2,5. On calcule 34 × 25 = 850 ; il y a 2 décimales au total, donc 3,4 × 2,5 = 8,50 = 8,5.

Multiplier par 10, 100, 1 000 : on décale la virgule de 1, 2 ou 3 rangs vers la droite. 4,56 × 100 = 456. Diviser par 10, 100, 1 000 : on décale vers la gauche. 37 ÷ 100 = 0,37.

Division euclidienne : diviser 157 par 12, c''est trouver le quotient q et le reste r tels que 157 = 12 × q + r avec r < 12. Ici 12 × 13 = 156, donc q = 13 et r = 1.

## Exemple de la vie courante

Au marché Sandaga, Fatou achète 2,5 kg de tomates à 600 FCFA le kilogramme et un sac d''oignons à 1 750 FCFA. Prix des tomates : 2,5 × 600 = 1 500 FCFA. Total : 1 500 + 1 750 = 3 250 FCFA. Si elle paie avec un billet de 5 000 FCFA, on lui rend 5 000 − 3 250 = 1 750 FCFA.

## Points clés

- La valeur d''un chiffre dépend de sa position dans le nombre.
- Pour comparer des décimaux, on compare chiffre par chiffre de gauche à droite, après avoir égalisé le nombre de décimales.
- Dans une addition posée, on aligne les virgules ; dans une multiplication, on compte les décimales.

## Exercices

Exercice 1 : Écrire en chiffres « deux millions trois cent mille quarante-cinq », puis donner le chiffre des dizaines de mille.

Exercice 2 : Ranger dans l''ordre croissant : 3,5 ; 3,05 ; 3,505 ; 3,055.

Exercice 3 : Calculer : a) 12,75 + 8,4 ; b) 50 − 17,35 ; c) 2,5 × 1,2 ; d) 63,8 ÷ 10.

Exercice 4 : Arrondir 7,846 à l''unité, au dixième puis au centième.

Exercice 5 : Awa achète 3 kg de riz à 450 FCFA le kilogramme et 2 litres d''huile à 1 250 FCFA le litre. Elle paie avec un billet de 5 000 FCFA. Combien lui rend-on ?

## Corrigé

Exercice 1 : 2 300 045. Le chiffre des dizaines de mille est 0 (on lit 2 / 3 0 0 / 0 4 5 : millions 2, centaines de mille 3, dizaines de mille 0).

Exercice 2 : On écrit tous les nombres avec trois décimales : 3,500 ; 3,050 ; 3,505 ; 3,055. Donc 3,05 < 3,055 < 3,5 < 3,505.

Exercice 3 : a) 12,75 + 8,40 = 21,15. b) 50,00 − 17,35 = 32,65. c) 25 × 12 = 300, deux décimales, donc 2,5 × 1,2 = 3,00 = 3. d) 63,8 ÷ 10 = 6,38.

Exercice 4 : À l''unité : 8 (le chiffre des dixièmes est 8, on arrondit au-dessus). Au dixième : 7,8 (le chiffre des centièmes est 4). Au centième : 7,85 (le chiffre des millièmes est 6).

Exercice 5 : Riz : 3 × 450 = 1 350 FCFA. Huile : 2 × 1 250 = 2 500 FCFA. Total : 1 350 + 2 500 = 3 850 FCFA. Monnaie rendue : 5 000 − 3 850 = 1 150 FCFA.', 'texte', 45, true, 10
from public.courses c where c.slug = 'maths-6e'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Nombres entiers et nombres décimaux');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Les fractions', '## Objectifs de la leçon

- Comprendre ce que représente une fraction.
- Reconnaître des fractions égales et simplifier une fraction.
- Comparer, additionner et soustraire des fractions simples.
- Calculer une fraction d''une quantité.

## Qu''est-ce qu''une fraction ?

Une fraction s''écrit a/b, où a est le numérateur et b le dénominateur (b n''est jamais égal à 0). Le dénominateur indique en combien de parts égales on partage l''unité ; le numérateur indique combien de parts on prend.

Exemple : on partage une galette en 8 parts égales et Ibrahima en mange 3. Il a mangé 3/8 de la galette.

Une fraction est aussi le résultat d''une division : 3/4 = 3 ÷ 4 = 0,75. Ainsi 1/2 = 0,5 ; 1/4 = 0,25 ; 3/4 = 0,75 ; 1/5 = 0,2. Certaines fractions comme 1/3 ne tombent pas juste : 1/3 ≈ 0,333.

- Si le numérateur est plus petit que le dénominateur, la fraction est plus petite que 1 (exemple 2/5).
- Si le numérateur est égal au dénominateur, la fraction vaut 1 (exemple 7/7).
- Si le numérateur est plus grand, la fraction est plus grande que 1 (exemple 9/4 = 2 + 1/4).

## Fractions égales et simplification

Propriété : on ne change pas une fraction en multipliant (ou en divisant) son numérateur et son dénominateur par un même nombre non nul.

Exemple : 2/3 = (2 × 4)/(3 × 4) = 8/12. Et 15/20 = (15 ÷ 5)/(20 ÷ 5) = 3/4.

Simplifier une fraction, c''est l''écrire avec un numérateur et un dénominateur plus petits. On utilise les critères de divisibilité :
- un nombre est divisible par 2 s''il se termine par 0, 2, 4, 6 ou 8 ;
- par 5 s''il se termine par 0 ou 5 ;
- par 3 si la somme de ses chiffres est divisible par 3 ;
- par 9 si la somme de ses chiffres est divisible par 9.

Une fraction est irréductible quand on ne peut plus la simplifier. Exemple : 36/48. On divise par 12 (ou par 2 plusieurs fois, puis par 3) : 36/48 = 3/4, qui est irréductible.

## Comparer des fractions

- Même dénominateur : la plus grande est celle qui a le plus grand numérateur. 5/9 > 2/9.
- Même numérateur : la plus grande est celle qui a le plus petit dénominateur. 3/4 > 3/7 (des quarts sont plus gros que des septièmes).
- Dénominateurs différents : on réduit au même dénominateur. Pour comparer 2/3 et 3/5, on écrit 2/3 = 10/15 et 3/5 = 9/15. Donc 2/3 > 3/5.

## Additionner et soustraire

Si les dénominateurs sont égaux, on additionne (ou soustrait) les numérateurs et on garde le dénominateur : 2/7 + 3/7 = 5/7 ; 8/9 − 5/9 = 3/9 = 1/3.

Si les dénominateurs sont différents, on commence par les rendre égaux. Exemple : 1/2 + 1/4 = 2/4 + 1/4 = 3/4. Autre exemple : 5/6 − 1/3 = 5/6 − 2/6 = 3/6 = 1/2.

Attention à l''erreur classique : 1/2 + 1/4 n''est pas égal à 2/6. On n''additionne jamais les dénominateurs.

## Fraction d''une quantité

Pour prendre a/b d''une quantité, on divise la quantité par b puis on multiplie par a (ou l''inverse).

Exemple : un commerçant de Thiès a un stock de 120 sacs de ciment. Il en vend les 3/4. Il a vendu 120 ÷ 4 × 3 = 30 × 3 = 90 sacs. Il lui reste 30 sacs, c''est-à-dire 1/4 du stock.

Autre exemple : un élève dépense les 2/5 de son argent de poche de 2 500 FCFA. Il dépense 2 500 ÷ 5 × 2 = 1 000 FCFA.

## Méthode pour un problème de partage

- Repérer l''unité (le tout) : le champ, le salaire, le stock…
- Écrire chaque part sous forme de fraction.
- Réduire au même dénominateur et additionner les parts connues.
- Trouver la part restante en retirant de 1 (c''est-à-dire de b/b).
- Calculer la quantité correspondante.

## Points clés

- a/b = a ÷ b ; le dénominateur n''est jamais nul.
- Multiplier ou diviser le numérateur et le dénominateur par un même nombre ne change pas la fraction.
- Pour additionner ou comparer, il faut le même dénominateur.
- Prendre a/b d''une quantité : diviser par b, multiplier par a.

## Exercices

Exercice 1 : Simplifier pour obtenir une fraction irréductible : a) 18/24 ; b) 35/49 ; c) 45/60.

Exercice 2 : Comparer 3/5 et 7/10.

Exercice 3 : Calculer : a) 2/7 + 3/7 ; b) 5/6 − 1/3 ; c) 3/4 + 1/8.

Exercice 4 : Mariama reçoit 2 000 FCFA. Elle en dépense les 3/4 pour acheter des fournitures. Combien a-t-elle dépensé ? Combien lui reste-t-il ?

Exercice 5 : Moussa cultive un champ de 1 500 m². Il plante 2/5 du champ en arachide et 1/3 en mil. Le reste est planté en niébé. Quelle fraction du champ est plantée en niébé ? Quelle surface cela représente-t-il ?

## Corrigé

Exercice 1 : a) 18/24 : on divise par 6 : 3/4. b) 35/49 : on divise par 7 : 5/7. c) 45/60 : on divise par 15 : 3/4.

Exercice 2 : 3/5 = 6/10. Comme 6/10 < 7/10, on a 3/5 < 7/10.

Exercice 3 : a) 5/7. b) 5/6 − 2/6 = 3/6 = 1/2. c) 6/8 + 1/8 = 7/8.

Exercice 4 : 2 000 ÷ 4 × 3 = 500 × 3 = 1 500 FCFA dépensés. Il lui reste 2 000 − 1 500 = 500 FCFA (soit 1/4 de la somme).

Exercice 5 : Parts connues : 2/5 + 1/3 = 6/15 + 5/15 = 11/15. Part du niébé : 15/15 − 11/15 = 4/15. Surface : 1 500 ÷ 15 × 4 = 100 × 4 = 400 m². Vérification : arachide 600 m², mil 500 m², niébé 400 m², total 1 500 m².', 'texte', 45, false, 20
from public.courses c where c.slug = 'maths-6e'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Les fractions');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Géométrie de base : droites, angles et triangles', '## Objectifs de la leçon

- Connaître le vocabulaire de base : point, droite, demi-droite, segment.
- Reconnaître des droites parallèles et perpendiculaires et utiliser leurs propriétés.
- Mesurer, construire et classer des angles.
- Connaître les triangles particuliers et la somme des angles d''un triangle.

## Points, droites, segments

Un point se note avec une lettre majuscule. Par deux points distincts A et B passe une seule droite, notée (AB). Une droite est illimitée des deux côtés.

- La demi-droite [AB) commence en A et passe par B, sans fin de l''autre côté.
- Le segment [AB] est la portion de droite limitée par A et B. Sa longueur se note AB.
- Le milieu I du segment [AB] est le point de [AB] tel que AI = IB.

Des points sont alignés lorsqu''ils appartiennent à une même droite.

## Droites parallèles et perpendiculaires

Deux droites sont sécantes si elles se coupent en un point. Elles sont perpendiculaires si elles se coupent en formant un angle droit ; on note (d) ⊥ (d''). Deux droites qui ne se coupent jamais sont parallèles ; on note (d) // (d'').

Trois propriétés à connaître :
- Si deux droites sont parallèles à une même troisième, alors elles sont parallèles entre elles.
- Si deux droites sont perpendiculaires à une même troisième, alors elles sont parallèles entre elles.
- Si deux droites sont parallèles et qu''une troisième est perpendiculaire à l''une, alors elle est perpendiculaire à l''autre.

Exemple concret : sur un plan du quartier, deux rues tracées perpendiculairement à la même grande avenue sont parallèles entre elles.

La médiatrice d''un segment est la droite perpendiculaire à ce segment qui passe par son milieu. Tout point de la médiatrice est à égale distance des deux extrémités du segment.

## Les angles

Un angle est formé par deux demi-droites de même origine, appelée sommet. On le mesure en degrés avec un rapporteur.

- Angle nul : 0°.
- Angle aigu : entre 0° et 90°.
- Angle droit : 90° (on le vérifie avec l''équerre).
- Angle obtus : entre 90° et 180°.
- Angle plat : 180°.

Méthode pour mesurer un angle avec le rapporteur : placer le centre du rapporteur sur le sommet ; aligner le zéro d''une graduation sur un côté de l''angle ; lire la mesure sur la même graduation, là où passe l''autre côté. Vérifier ensuite à l''œil : un angle visiblement aigu ne peut pas mesurer 140°.

La bissectrice d''un angle est la demi-droite qui le partage en deux angles de même mesure.

## Les triangles

Un triangle ABC a trois sommets, trois côtés et trois angles.

Propriété fondamentale : la somme des mesures des trois angles d''un triangle est toujours égale à 180°.

Triangles particuliers :
- Triangle isocèle : deux côtés de même longueur. Les deux angles à la base sont égaux.
- Triangle équilatéral : trois côtés de même longueur. Ses trois angles mesurent 60° (180 ÷ 3).
- Triangle rectangle : il possède un angle droit. Les deux autres angles sont aigus et leur somme vaut 90°. Le côté opposé à l''angle droit s''appelle l''hypoténuse.

Inégalité triangulaire : pour qu''un triangle existe, la longueur de chaque côté doit être inférieure à la somme des deux autres. Par exemple, avec des côtés de 3 cm, 4 cm et 8 cm, c''est impossible car 3 + 4 = 7 < 8.

## Construire un triangle

Pour construire un triangle ABC avec AB = 6 cm, AC = 5 cm et BC = 4 cm :
- tracer le segment [AB] de 6 cm ;
- avec le compas, tracer un arc de centre A et de rayon 5 cm ;
- tracer un arc de centre B et de rayon 4 cm ;
- le point d''intersection des deux arcs est C ; relier A, B et C.

## Exemple d''application

Le toit d''une case a la forme d''un triangle isocèle dont l''angle au sommet mesure 100°. Les angles à la base sont égaux et leur somme vaut 180° − 100° = 80°. Chacun mesure donc 80 ÷ 2 = 40°.

## Points clés

- Deux perpendiculaires à une même droite sont parallèles.
- Somme des angles d''un triangle : 180°.
- Isocèle : deux angles égaux ; équilatéral : trois angles de 60° ; rectangle : un angle de 90°.
- Un triangle n''existe que si chaque côté est plus petit que la somme des deux autres.

## Exercices

Exercice 1 : Donner la nature des angles suivants : 35° ; 90° ; 130° ; 180°.

Exercice 2 : Dans un triangle ABC, l''angle en A mesure 50° et l''angle en B mesure 60°. Calculer l''angle en C.

Exercice 3 : Un triangle isocèle a un angle principal (au sommet) de 40°. Calculer ses angles à la base.

Exercice 4 : Les droites (d1) et (d2) sont toutes les deux perpendiculaires à la droite (d). Que peut-on dire de (d1) et (d2) ? Justifier.

Exercice 5 : Peut-on construire un triangle dont les côtés mesurent 5 cm, 7 cm et 10 cm ? Et avec 2 cm, 3 cm et 6 cm ?

## Corrigé

Exercice 1 : 35° : angle aigu ; 90° : angle droit ; 130° : angle obtus ; 180° : angle plat.

Exercice 2 : Angle C = 180° − (50° + 60°) = 180° − 110° = 70°.

Exercice 3 : Les deux angles à la base sont égaux. Leur somme vaut 180° − 40° = 140°, donc chacun mesure 140 ÷ 2 = 70°.

Exercice 4 : (d1) et (d2) sont parallèles, car si deux droites sont perpendiculaires à une même droite, alors elles sont parallèles entre elles.

Exercice 5 : 5, 7, 10 : le plus grand côté est 10 et 5 + 7 = 12 > 10, le triangle existe. 2, 3, 6 : 2 + 3 = 5 < 6, le triangle n''existe pas.', 'texte', 50, false, 30
from public.courses c where c.slug = 'maths-6e'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Géométrie de base : droites, angles et triangles');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Périmètres et aires', '## Objectifs de la leçon

- Distinguer périmètre et aire.
- Connaître les formules du rectangle, du carré, du triangle et du cercle.
- Convertir des unités de longueur et d''aire.
- Résoudre des problèmes concrets (clôture, carrelage, champ).

## Périmètre et aire : deux notions différentes

Le périmètre d''une figure est la longueur de son contour. Il s''exprime en unités de longueur : m, cm, km…

L''aire d''une figure est la mesure de la surface qu''elle occupe. Elle s''exprime en unités d''aire : m², cm², hectares…

Exemple : pour clôturer un terrain, on a besoin de son périmètre (longueur de grillage). Pour le carreler ou le cultiver, on a besoin de son aire.

## Les unités

Longueurs : km, hm, dam, m, dm, cm, mm. Chaque unité vaut 10 fois l''unité suivante. 1 km = 1 000 m ; 1 m = 100 cm.

Aires : km², hm², dam², m², dm², cm², mm². Chaque unité vaut 100 fois l''unité suivante. 1 m² = 100 dm² = 10 000 cm².

Unités agraires, très utilisées pour les champs et les terrains :
- 1 are (a) = 1 dam² = 100 m² ;
- 1 hectare (ha) = 1 hm² = 10 000 m².

Exemple : un champ de 2,5 ha mesure 2,5 × 10 000 = 25 000 m².

## Formules à connaître

Rectangle de longueur L et de largeur l :
- Périmètre P = 2 × (L + l)
- Aire A = L × l

Carré de côté c :
- P = 4 × c
- A = c × c = c²

Triangle de base b et de hauteur h (la hauteur est perpendiculaire à la base et passe par le sommet opposé) :
- A = (b × h) / 2
- Le périmètre est la somme des trois côtés.

Triangle rectangle : les deux côtés de l''angle droit jouent le rôle de base et de hauteur, donc A = (côté 1 × côté 2) / 2.

Cercle et disque de rayon r (le diamètre vaut d = 2 × r) :
- Périmètre du cercle P = 2 × π × r = π × d
- Aire du disque A = π × r × r = π × r²
- On prend souvent π ≈ 3,14.

## Méthode de résolution

- Faire un schéma et y reporter les mesures.
- Vérifier que toutes les longueurs sont dans la même unité ; sinon, convertir.
- Choisir la bonne formule (contour ou surface ?).
- Calculer, puis écrire l''unité correcte (m pour un périmètre, m² pour une aire).
- Répondre par une phrase.

## Exemples

Exemple 1 : une salle de classe rectangulaire mesure 9 m sur 7 m. Périmètre : 2 × (9 + 7) = 32 m. Aire : 9 × 7 = 63 m². Si un carreau carré mesure 50 cm de côté, son aire est 0,5 × 0,5 = 0,25 m². Il faut 63 ÷ 0,25 = 252 carreaux (sans compter les pertes).

Exemple 2 : un puits circulaire a un rayon de 1 m. Le tour de la margelle mesure environ 2 × 3,14 × 1 = 6,28 m et l''ouverture a une aire d''environ 3,14 × 1 × 1 = 3,14 m².

Exemple 3 : une figure composée. Un terrain a la forme d''un rectangle de 20 m sur 12 m auquel on ajoute un triangle rectangle dont les côtés de l''angle droit mesurent 12 m et 5 m. Aire totale : 20 × 12 + (12 × 5) / 2 = 240 + 30 = 270 m².

## Erreurs fréquentes

- Confondre périmètre et aire.
- Oublier de convertir : on ne multiplie pas des mètres par des centimètres.
- Utiliser le diamètre à la place du rayon dans π × r².
- Pour le triangle, oublier de diviser par 2.

## Points clés

- Périmètre : longueur du contour ; aire : mesure de la surface.
- Rectangle : P = 2(L + l), A = L × l. Carré : P = 4c, A = c².
- Triangle : A = b × h / 2. Cercle : P = 2πr ; disque : A = πr².
- 1 m² = 10 000 cm² ; 1 ha = 10 000 m².

## Exercices

Exercice 1 : Calculer le périmètre et l''aire d''un rectangle de 12 m sur 7,5 m.

Exercice 2 : Calculer le périmètre et l''aire d''un carré de 6 cm de côté.

Exercice 3 : Calculer l''aire d''un triangle de base 10 cm et de hauteur 6 cm.

Exercice 4 : Un bassin circulaire a un rayon de 5 m. Calculer la longueur de son bord et son aire (π ≈ 3,14).

Exercice 5 : M. Ndiaye veut clôturer son jardin rectangulaire de 25 m sur 18 m. Il laisse une ouverture de 3 m pour le portail. Le grillage coûte 1 500 FCFA le mètre. Calculer la longueur de grillage nécessaire et le prix à payer.

## Corrigé

Exercice 1 : P = 2 × (12 + 7,5) = 2 × 19,5 = 39 m. A = 12 × 7,5 = 90 m².

Exercice 2 : P = 4 × 6 = 24 cm. A = 6 × 6 = 36 cm².

Exercice 3 : A = (10 × 6) / 2 = 60 / 2 = 30 cm².

Exercice 4 : Bord : P = 2 × 3,14 × 5 = 31,4 m. Aire : A = 3,14 × 5 × 5 = 3,14 × 25 = 78,5 m².

Exercice 5 : Périmètre du jardin : 2 × (25 + 18) = 2 × 43 = 86 m. Grillage : 86 − 3 = 83 m. Prix : 83 × 1 500 = 124 500 FCFA.', 'texte', 50, false, 40
from public.courses c where c.slug = 'maths-6e'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Périmètres et aires');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'La proportionnalité et les pourcentages', '## Objectifs de la leçon

- Reconnaître une situation de proportionnalité.
- Compléter un tableau de proportionnalité par différentes méthodes.
- Calculer et appliquer un pourcentage.
- Utiliser une échelle sur un plan ou une carte.

## Qu''est-ce que la proportionnalité ?

Deux grandeurs sont proportionnelles lorsqu''on passe des valeurs de l''une aux valeurs de l''autre en multipliant toujours par le même nombre, appelé coefficient de proportionnalité.

Exemple : au marché, le kilogramme de mangues coûte 500 FCFA.

- 1 kg → 500 FCFA
- 2 kg → 1 000 FCFA
- 3 kg → 1 500 FCFA
- 5 kg → 2 500 FCFA

Le prix est proportionnel à la masse : on multiplie toujours par 500. Le coefficient de proportionnalité est 500.

Contre-exemple : un taxi demande 500 FCFA de prise en charge plus 200 FCFA par kilomètre. Pour 1 km on paie 700 FCFA, pour 2 km 900 FCFA. 700 × 2 = 1 400 ≠ 900 : le prix n''est pas proportionnel à la distance.

Autre contre-exemple : la taille d''un enfant n''est pas proportionnelle à son âge.

## Reconnaître un tableau de proportionnalité

On calcule le quotient de chaque valeur de la deuxième ligne par la valeur correspondante de la première ligne. Si tous les quotients sont égaux, le tableau est un tableau de proportionnalité.

Exemple : 2 → 6 ; 5 → 15 ; 8 → 24. Les quotients 6/2, 15/5 et 24/8 valent tous 3 : c''est un tableau de proportionnalité de coefficient 3.

## Méthodes pour compléter un tableau

Méthode 1, le coefficient : on cherche le nombre par lequel on multiplie et on l''applique.

Méthode 2, le passage par l''unité (règle de trois) : 4 cahiers coûtent 1 000 FCFA. Un cahier coûte 1 000 ÷ 4 = 250 FCFA. Donc 7 cahiers coûtent 7 × 250 = 1 750 FCFA.

Méthode 3, les propriétés de linéarité : si 4 cahiers coûtent 1 000 FCFA, alors 8 cahiers (le double) coûtent 2 000 FCFA ; et 12 cahiers (4 + 8) coûtent 1 000 + 2 000 = 3 000 FCFA.

Méthode 4, le produit en croix (quatrième proportionnelle) : si a/b = c/x, alors x = (b × c) / a. Exemple : 3 kg de riz pour 12 personnes ; pour 20 personnes il faut x kg avec 3/12 = x/20, donc x = (3 × 20) / 12 = 60 / 12 = 5 kg.

## Les pourcentages

Un pourcentage est une proportion rapportée à 100. « 15 % » signifie « 15 pour 100 », c''est-à-dire 15/100.

Pour calculer t % d''une quantité Q, on calcule Q × t / 100.

Exemple : une boutique de Dakar accorde une remise de 20 % sur une paire de chaussures à 12 500 FCFA. Remise : 12 500 × 20 / 100 = 2 500 FCFA. Nouveau prix : 12 500 − 2 500 = 10 000 FCFA.

Pour exprimer une proportion en pourcentage : dans une classe de 50 élèves, 30 sont des filles. La proportion de filles est 30/50 = 60/100 = 60 %.

## Les échelles

Sur un plan ou une carte, les distances sont proportionnelles aux distances réelles. L''échelle est le coefficient qui permet de passer de la réalité au plan : échelle = distance sur le plan / distance réelle (dans la même unité).

Exemple : sur une carte au 1/50 000, 1 cm représente 50 000 cm, c''est-à-dire 500 m. Une distance de 3 cm sur la carte représente 3 × 50 000 = 150 000 cm = 1,5 km.

## Méthode générale

- Vérifier que la situation est bien proportionnelle (le coefficient est-il constant ?).
- Organiser les données dans un tableau.
- Choisir la méthode la plus simple : coefficient, unité, linéarité ou produit en croix.
- Vérifier la vraisemblance du résultat et rédiger une phrase-réponse.

## Points clés

- Proportionnalité : on multiplie toujours par le même coefficient.
- Le passage par l''unité et le produit en croix permettent de trouver une valeur manquante.
- t % de Q = Q × t / 100.
- Échelle = distance sur le plan / distance réelle, dans la même unité.

## Exercices

Exercice 1 : 4 cahiers coûtent 1 000 FCFA. Quel est le prix de 7 cahiers ? de 10 cahiers ?

Exercice 2 : Les tableaux suivants sont-ils des tableaux de proportionnalité ? a) 2 → 6 ; 5 → 15 ; 8 → 24. b) 3 → 12 ; 5 → 20 ; 7 → 30.

Exercice 3 : Un pagne coûte 8 000 FCFA. Le commerçant accorde une remise de 15 %. Calculer le montant de la remise et le prix payé.

Exercice 4 : Sur une carte au 1/50 000, deux villages sont séparés de 3 cm. Quelle est la distance réelle en km ?

Exercice 5 : Pour préparer un thiéboudiène pour 12 personnes, une cuisinière utilise 3 kg de riz. Quelle quantité de riz faut-il pour 20 personnes ?

## Corrigé

Exercice 1 : Prix d''un cahier : 1 000 ÷ 4 = 250 FCFA. 7 cahiers : 7 × 250 = 1 750 FCFA. 10 cahiers : 10 × 250 = 2 500 FCFA.

Exercice 2 : a) 6/2 = 15/5 = 24/8 = 3 : oui, coefficient 3. b) 12/3 = 4 et 20/5 = 4, mais 30/7 ≈ 4,29 ≠ 4 : ce n''est pas un tableau de proportionnalité.

Exercice 3 : Remise : 8 000 × 15 / 100 = 1 200 FCFA. Prix payé : 8 000 − 1 200 = 6 800 FCFA.

Exercice 4 : 3 × 50 000 = 150 000 cm = 1 500 m = 1,5 km.

Exercice 5 : x = (3 × 20) / 12 = 60 / 12 = 5 kg de riz. Vérification par l''unité : 3 kg pour 12 personnes, soit 0,25 kg par personne ; 20 × 0,25 = 5 kg.', 'texte', 45, false, 50
from public.courses c where c.slug = 'maths-6e'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'La proportionnalité et les pourcentages');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : révision guidée du programme de 6e', '## Fiche du cours vidéo

- Durée : 1h30.
- Thème : révision guidée du programme de 6e, des nombres décimaux à la proportionnalité.
- Objectifs : consolider le calcul sur les décimaux et les fractions, réinvestir la géométrie (angles, triangles), calculer périmètres et aires, résoudre des problèmes de proportionnalité.
- Matériel : tableau ou diaporama, règle, équerre, rapporteur, compas, calculatrice (seulement pour vérifier), cahier de brouillon.
- Prérequis : avoir lu les cinq leçons écrites du cours.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et présentation de la séance

« Bonjour à toutes et à tous, et bienvenue dans ce cours vidéo de mathématiques de 6e. Pendant une heure trente, nous allons faire ensemble le tour de tout ce que vous avez appris : les nombres décimaux, les fractions, la géométrie, les périmètres et les aires, et enfin la proportionnalité. Préparez votre cahier de brouillon, votre règle, votre équerre et votre rapporteur. Je vous demanderai souvent de mettre la vidéo en pause pour chercher seuls avant de regarder la correction : c''est comme cela que l''on progresse. »

Visuel : le plan de la séance en cinq blocs, avec une icône pour chacun.

## 05:00 – 18:00 · Bloc 1 : les nombres décimaux

« Commençons par un petit défi. Au tableau, j''écris quatre nombres : 4,7 ; 4,07 ; 4,70 ; 4,007. Lesquels sont égaux ? Mettez en pause et réfléchissez. »

« Correction : 4,7 et 4,70 sont égaux, car on peut ajouter un zéro à droite de la partie décimale sans changer le nombre. 4,07 a 0 dixième et 7 centièmes : il est plus petit. 4,007 est le plus petit des quatre. Rangement croissant : 4,007 < 4,07 < 4,7 = 4,70. »

Ensuite, le formateur pose une multiplication : « Calculons 1,25 × 3,2. Je multiplie 125 par 32 : 125 × 32 = 4 000. Il y a deux décimales dans 1,25 et une dans 3,2, soit trois au total. Le résultat est donc 4,000, c''est-à-dire 4. Vérifions par un ordre de grandeur : 1 × 3 = 3 et 1,5 × 3 = 4,5 ; 4 est bien entre les deux. »

Problème rapide : « Un taxi-brousse transporte 14 passagers ; chacun paie 2 750 FCFA. Quelle est la recette ? » Réponse détaillée : 14 × 2 750 = 14 × 2 000 + 14 × 750 = 28 000 + 10 500 = 38 500 FCFA.

Question à poser : « Pourquoi est-il utile de calculer un ordre de grandeur ? » Réponse attendue : pour détecter une erreur de virgule.

## 18:00 – 30:00 · Bloc 2 : les fractions

« Passons aux fractions. Rappelez-vous : a/b, c''est a divisé par b. Le dénominateur dit en combien de parts on coupe l''unité. »

Visuel : un rectangle partagé en 12 cases dont 8 sont coloriées. « Quelle fraction est coloriée ? 8/12. Simplifions : on divise par 4, on obtient 2/3. Le dessin le confirme : si je regroupe les cases par 4, j''ai 3 groupes dont 2 sont coloriés. »

Calcul au tableau : « 1/2 + 1/3. Attention, ce n''est pas 2/5 ! Je mets au même dénominateur : 1/2 = 3/6 et 1/3 = 2/6. Donc 1/2 + 1/3 = 5/6. »

Problème : « Une famille de Kaolack consacre 1/4 de son budget à la nourriture et 1/6 au transport. Le budget mensuel est de 240 000 FCFA. Quelle fraction reste-t-il ? Combien cela fait-il ? » Correction : 1/4 + 1/6 = 3/12 + 2/12 = 5/12 ; reste 7/12 ; 240 000 ÷ 12 × 7 = 20 000 × 7 = 140 000 FCFA. Vérification : nourriture 60 000, transport 40 000, reste 140 000, total 240 000.

## 30:00 – 42:00 · Bloc 3 : droites, angles et triangles

« Prenez votre équerre. Tracez une droite (d), puis deux droites (d1) et (d2) perpendiculaires à (d). Que remarquez-vous ? Elles ne se coupent pas : elles sont parallèles. C''est une propriété que vous devez savoir citer pour justifier. »

« Maintenant, les angles. Je montre trois angles au tableau. Le premier mesure 45° : il est aigu. Le deuxième 90° : droit. Le troisième 150° : obtus. »

Démonstration visuelle : on découpe les trois coins d''un triangle en papier et on les met côte à côte ; ils forment un angle plat. « Voilà pourquoi la somme des angles d''un triangle vaut 180°. »

Exercice guidé : « Dans un triangle rectangle, un angle aigu mesure 35°. Combien mesure l''autre ? » Réponse : 90° − 35° = 55°, car les deux angles aigus d''un triangle rectangle ont une somme de 90°.

Question : « Un triangle peut-il avoir deux angles obtus ? » Réponse : non, car deux angles de plus de 90° dépasseraient déjà 180°.

## 42:00 – 50:00 · Pause active et quiz interactif

« Faisons une pause active. Levez-vous, étirez-vous, puis répondez à ces cinq questions en deux minutes, sans calculatrice. »

- Question 1 : 0,5 + 0,25 = ? Réponse : 0,75.
- Question 2 : 3/4 de 80 = ? Réponse : 60.
- Question 3 : un triangle équilatéral a des angles de combien de degrés ? Réponse : 60°.
- Question 4 : combien de m² dans un hectare ? Réponse : 10 000 m².
- Question 5 : 10 % de 4 500 FCFA = ? Réponse : 450 FCFA.

« Comptez vos points. Quatre ou cinq bonnes réponses : excellent. Moins de trois : reprenez les leçons concernées après la séance. »

## 50:00 – 1:02:00 · Bloc 4 : périmètres et aires

« Un terrain de football de quartier mesure 90 m sur 45 m. Pour tracer les lignes de touche et de but, il faut le périmètre : 2 × (90 + 45) = 270 m. Pour savoir combien de gazon semer, il faut l''aire : 90 × 45 = 4 050 m². »

Visuel : une figure composée en forme de maison, un carré de 8 m de côté surmonté d''un triangle de base 8 m et de hauteur 3 m. « Aire du carré : 8 × 8 = 64 m². Aire du triangle : 8 × 3 / 2 = 12 m². Aire totale : 76 m². »

Le cercle : « Une roue de charrette a un diamètre de 1 m. Quelle distance parcourt-elle en un tour ? Son périmètre : π × d ≈ 3,14 × 1 = 3,14 m. En 100 tours, elle parcourt environ 314 m. »

Question piège : « Un carré de 4 cm de côté et un rectangle de 8 cm sur 2 cm ont-ils la même aire ? le même périmètre ? » Réponse : même aire (16 cm²) mais périmètres différents (16 cm et 20 cm).

## 1:02:00 – 1:14:00 · Bloc 5 : proportionnalité et pourcentages

« Dernier bloc. Une couturière de Saint-Louis utilise 2,5 m de tissu pour 1 boubou. Combien de tissu pour 6 boubous ? Situation proportionnelle : 6 × 2,5 = 15 m. Et avec 40 m de tissu, combien de boubous ? 40 ÷ 2,5 = 16 boubous. »

Tableau au diaporama : boubous 1, 2, 6, 16 ; tissu 2,5 ; 5 ; 15 ; 40. « Le coefficient est 2,5. »

Pourcentage : « Le prix d''un sac de riz de 25 kg passe de 12 000 FCFA à 13 200 FCFA. De combien de pour cent a-t-il augmenté ? Hausse : 1 200 FCFA. 1 200 / 12 000 = 0,1 = 10 %. »

Échelle : « Sur un plan au 1/200, une chambre mesure 2 cm sur 1,5 cm. Dimensions réelles : 2 × 200 = 400 cm = 4 m et 1,5 × 200 = 300 cm = 3 m. »

## 1:14:00 – 1:22:00 · Synthèse

« Résumons ce que vous devez retenir. »

- Décimaux : aligner les virgules pour additionner, compter les décimales pour multiplier.
- Fractions : même dénominateur pour additionner et comparer ; a/b d''une quantité = diviser par b, multiplier par a.
- Géométrie : deux perpendiculaires à une même droite sont parallèles ; somme des angles d''un triangle = 180°.
- Mesures : périmètre en m, aire en m² ; ne pas oublier la division par 2 pour le triangle.
- Proportionnalité : coefficient constant, passage par l''unité, t % de Q = Q × t / 100.

## 1:22:00 – 1:30:00 · Évaluation finale

« Pour terminer, une évaluation de cinq questions. Mettez la vidéo en pause, faites-les sur votre cahier, puis regardez les réponses. »

- Question 1 : Ranger dans l''ordre croissant 2,3 ; 2,03 ; 2,33. Réponse : 2,03 < 2,3 < 2,33.
- Question 2 : Calculer 2/3 + 1/6. Réponse : 4/6 + 1/6 = 5/6.
- Question 3 : Dans un triangle isocèle, les angles à la base mesurent 65°. Combien mesure l''angle au sommet ? Réponse : 180° − 2 × 65° = 50°.
- Question 4 : Aire d''un disque de rayon 10 cm (π ≈ 3,14). Réponse : 3,14 × 100 = 314 cm².
- Question 5 : 5 stylos coûtent 750 FCFA. Prix de 8 stylos ? Réponse : 750 ÷ 5 = 150 FCFA le stylo ; 8 × 150 = 1 200 FCFA.

« Bravo pour votre travail. Pour progresser encore, refaites les exercices des leçons sans regarder le corrigé, puis comparez. À bientôt ! »', 'video', 90, false, 60
from public.courses c where c.slug = 'maths-6e'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : révision guidée du programme de 6e');

-- Cours : Gérer les parkings d'une entreprise
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'formation-parking-entreprise', (select id from public.levels where name = 'Formation professionnelle'), 'parking-entreprise', 'Gestion des parkings', 'Gérer les parkings d''une entreprise', 'Cette formation apprend à organiser et piloter le parking d''une entreprise, d''une administration ou d''un site industriel : plan et attribution des places, politique d''accès et badges, accueil des visiteurs, sécurité et optimisation du taux d''occupation. Elle s''adresse aux responsables des services généraux, gestionnaires de sites, agents de sécurité encadrants et assistants de direction. Aucun prérequis technique n''est demandé ; savoir utiliser un tableur est un plus.', true, 60
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Le parking d''entreprise : enjeux, acteurs et diagnostic', '## Objectifs de la leçon

- Comprendre pourquoi le parking est une ressource stratégique et coûteuse pour l''entreprise.
- Identifier les acteurs concernés et leurs attentes.
- Réaliser un premier diagnostic du parking d''un site.

## Le parking, une ressource rare et coûteuse

Dans beaucoup de villes d''Afrique de l''Ouest, et particulièrement à Dakar, le foncier est cher et la circulation dense. Une place de stationnement occupe en moyenne 12 à 13 m² de surface, auxquels il faut ajouter les voies de circulation : on compte couramment 25 m² par place en surface. Un parking de 100 places mobilise donc environ 2 500 m², soit l''équivalent d''un petit immeuble de bureaux. Que l''entreprise soit propriétaire du terrain ou locataire, chaque place a un coût : loyer ou amortissement, entretien, éclairage, gardiennage, assurance.

Pourtant, le parking est souvent géré "au fil de l''eau" : les premiers arrivés se garent, les places réservées se multiplient au gré des promotions, les visiteurs tournent dans la rue. Le résultat est connu : des conflits entre salariés, des clients mécontents, des véhicules garés sur les voies pompiers et des places payées mais vides une partie de la journée.

Gérer le parking, c''est donc appliquer une démarche de gestionnaire : connaître l''offre, mesurer la demande, fixer des règles équitables, les faire respecter et améliorer en continu.

## Les acteurs et leurs attentes

Un parking d''entreprise concerne plusieurs groupes dont les intérêts peuvent diverger :

- La direction générale : maîtriser les coûts, préserver l''image de l''entreprise, garantir la sécurité.
- Les salariés : trouver une place facilement, de façon équitable, sans perdre de temps.
- Les visiteurs et clients : être accueillis sans attendre et se garer à proximité de l''entrée.
- Les fournisseurs et livreurs : accéder aux quais et zones de livraison à heure fixe.
- Le service de sécurité : contrôler les entrées, prévenir les vols et les accidents.
- Les voisins et la commune : éviter le stationnement sauvage dans la rue.

Le gestionnaire du parking, souvent rattaché aux services généraux, joue le rôle d''arbitre. Il doit écrire des règles claires, validées par la direction et, si possible, présentées aux représentants du personnel.

## Les notions de base

L''offre est le nombre de places réellement utilisables, par catégorie : places standard, places pour personnes à mobilité réduite (PMR), places deux-roues, places visiteurs, places de service (véhicules de la flotte), zones de livraison.

La demande est le nombre de véhicules qui souhaitent stationner, heure par heure. Elle dépend des effectifs présents, des horaires, du télétravail, des visites et de la saisonnalité (fin de mois, inventaires, fêtes).

Le taux d''occupation est le rapport entre les places occupées et les places disponibles à un instant donné. Nous l''étudierons en détail dans la leçon 5.

La règle d''attribution est la façon dont une place est donnée : place nominative (toujours la même personne), place partagée (premier arrivé, premier servi), place réservée par créneau.

## Méthode : le diagnostic en cinq étapes

- Étape 1 : faire l''inventaire physique des places, par catégorie, avec un plan à jour.
- Étape 2 : recenser les ayants droit (salariés autorisés, véhicules de service, prestataires).
- Étape 3 : compter les véhicules présents à plusieurs heures de la journée pendant au moins une semaine.
- Étape 4 : interroger les usagers (questionnaire court) sur leurs difficultés.
- Étape 5 : calculer le coût annuel du parking et le coût par place.

## Exemple : le siège d''une société de distribution à Dakar

Une société de distribution installée à Dakar dispose d''un parking de 80 places sur un terrain loué. Le diagnostic donne les résultats suivants :

- 80 places : 4 PMR, 10 visiteurs, 6 véhicules de service, 60 salariés.
- 95 salariés déclarent venir en voiture au moins deux jours par semaine.
- Comptage à 10 h sur cinq jours : en moyenne 71 véhicules présents.
- Plaintes principales : visiteurs sans place, places réservées aux cadres vides le matin.

Le coût annuel est estimé ainsi : loyer du terrain 9 600 000 FCFA, gardiennage 4 800 000 FCFA, éclairage et entretien 1 200 000 FCFA, soit 15 600 000 FCFA. Le coût par place et par an est donc 15 600 000 / 80 = 195 000 FCFA, soit 16 250 FCFA par mois.

Ce chiffre change la discussion : une place réservée inoccupée la moitié du temps "gaspille" environ 8 000 FCFA par mois. Le diagnostic montre aussi que l''offre (80 places) dépasse la présence moyenne (71 véhicules) : le problème n''est pas le manque de places mais leur mauvaise répartition.

## Points clés

- Le parking a un coût réel qu''il faut chiffrer par place.
- Plusieurs acteurs ont des attentes différentes : le gestionnaire arbitre avec des règles écrites.
- Avant de décider, on mesure : inventaire, ayants droit, comptages, enquête, coûts.
- Un manque de places ressenti est souvent un problème d''organisation plutôt que de capacité.

## Exercices

- Exercice 1 : citez quatre catégories de places qu''on doit distinguer dans l''inventaire.
- Exercice 2 : un parking de 120 places coûte 21 600 000 FCFA par an. Calculez le coût par place et par mois.
- Exercice 3 : sur un site de 50 places, on compte 32, 45, 48 et 30 véhicules à 8 h, 10 h, 12 h et 16 h. À quelle heure la tension est-elle maximale et quel est le taux d''occupation à ce moment ?
- Exercice 4 : pourquoi faut-il compter pendant au moins une semaine et non un seul jour ?

## Corrigé

Exercice 1 : par exemple places standard salariés, places PMR, places visiteurs, places des véhicules de service ; on peut aussi citer les places deux-roues et les zones de livraison.

Exercice 2 : coût par place et par an = 21 600 000 / 120 = 180 000 FCFA ; par mois = 180 000 / 12 = 15 000 FCFA.

Exercice 3 : la tension est maximale à 12 h avec 48 véhicules. Taux d''occupation = 48 / 50 = 0,96 soit 96 %. Le parking est presque saturé à midi.

Exercice 4 : la demande varie selon les jours (réunions, jours de marché, télétravail, fins de mois). Un seul comptage peut tomber sur un jour atypique et conduire à de mauvaises décisions ; une semaine donne une moyenne et révèle les pics.', 'texte', 45, true, 10
from public.courses c where c.slug = 'formation-parking-entreprise'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Le parking d''entreprise : enjeux, acteurs et diagnostic');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Concevoir le plan du parking et attribuer les places', '## Objectifs de la leçon

- Lire et produire un plan de parking utile à la gestion.
- Répartir les places entre les différentes catégories d''usagers.
- Choisir et justifier des règles d''attribution équitables.

## Le plan du parking : un outil de gestion

Le plan n''est pas un simple dessin d''architecte. Pour le gestionnaire, c''est une carte de référence qui doit indiquer pour chaque place un numéro unique, sa catégorie, ses dimensions, et les éléments de circulation : entrées, sorties, sens de circulation, passages piétons, voies réservées aux secours, emplacements des extincteurs et de l''éclairage.

La numérotation doit être logique : par exemple une lettre pour la zone (A, B, C) et un numéro dans la zone (A01 à A30). Elle est peinte au sol ou affichée sur le mur, et reprise dans le tableau d''attribution. Sans numérotation, impossible d''attribuer, de contrôler ou de signaler un incident.

## Dimensions et circulation

Les dimensions usuelles d''une place en épi droit (perpendiculaire à la voie) sont d''environ 2,50 m de large sur 5 m de long, avec une allée de circulation d''environ 5,50 à 6 m pour manœuvrer. Les places en épi à 45° demandent une allée plus étroite mais occupent plus de longueur de bordure. Les places PMR sont plus larges (on prévoit une bande latérale pour ouvrir la porte et sortir un fauteuil) et placées au plus près de l''entrée. Ces valeurs sont des repères de conception : pour un projet neuf, l''architecte applique les normes et règles d''urbanisme en vigueur.

Le gestionnaire vérifie surtout trois points de circulation :

- La voie pompiers et les accès de secours restent libres en permanence.
- Les piétons disposent d''un cheminement protégé jusqu''à l''entrée du bâtiment.
- Les camions de livraison n''ont pas à traverser les zones de stationnement des voitures.

## Répartir les places par catégorie

La répartition se fait à partir du diagnostic. On commence par les places "non négociables" : PMR, secours, livraisons, véhicules de service indispensables. Viennent ensuite les visiteurs, dont le nombre se calcule à partir des rendez-vous constatés : si l''accueil reçoit en pointe 8 véhicules visiteurs simultanés, on prévoit 8 à 10 places visiteurs proches de l''entrée. Le reste est attribué aux salariés.

## Les règles d''attribution aux salariés

Trois grandes formules existent, souvent combinées.

La place nominative : un salarié a toujours la même place. Avantage : simplicité, confort. Inconvénient : la place reste vide quand le titulaire est en mission, en congé ou en télétravail.

Le pool partagé : un ensemble de places est ouvert à un groupe d''ayants droit, sans place fixe. Avantage : meilleure utilisation. Inconvénient : incertitude pour l''usager, surtout s''il arrive tard.

La réservation : l''usager réserve une place pour une journée ou une demi-journée via un tableau partagé ou une application. Avantage : équilibre entre certitude et efficacité. Inconvénient : demande un outil et de la discipline (libérer une réservation non utilisée).

Pour décider qui a droit à une place, l''entreprise fixe des critères objectifs et écrits : contraintes de santé, nécessité de service (commerciaux itinérants, astreintes), horaires décalés, éloignement du domicile, covoiturage. Le rang hiérarchique peut être un critère, mais il est perçu comme moins équitable lorsqu''il est le seul.

## Le foisonnement

Comme tous les ayants droit ne sont jamais présents en même temps, on peut attribuer un pool à plus de personnes qu''il n''y a de places. Le coefficient de foisonnement est le rapport entre le nombre d''ayants droit et le nombre de places du pool. Par exemple, 75 ayants droit pour 60 places donnent un coefficient de 75 / 60 = 1,25. Ce coefficient se fixe à partir des comptages : si la présence maximale observée des ayants droit est de 80 %, alors 60 places couvrent 60 / 0,80 = 75 ayants droit.

## Exemple : refonte de l''attribution d''un siège à Thiès

Une entreprise de BTP à Thiès dispose de 60 places. Avant refonte : 30 places nominatives pour les cadres, 30 places libres pour 70 autres salariés. Les comptages montrent que les places nominatives sont occupées à 55 % en moyenne (déplacements sur les chantiers), tandis que le pool libre est saturé dès 8 h.

La refonte retient : 6 places de service, 4 PMR et visiteurs prioritaires, 6 places visiteurs, 8 places nominatives pour les fonctions à contrainte (direction, astreinte), et un pool réservable de 36 places. Les places nominatives non occupées à 10 h sont libérées pour la journée. Le nombre de salariés servis augmente sans créer une seule place.

## Points clés

- Chaque place a un numéro, une catégorie et figure sur un plan à jour.
- On attribue d''abord les places de sécurité et de service, puis les visiteurs, puis les salariés.
- Les critères d''attribution sont écrits, objectifs et communiqués.
- Le foisonnement permet de servir plus d''usagers que de places, à condition de mesurer la présence réelle.

## Exercices

- Exercice 1 : citez deux avantages et deux inconvénients de la place nominative.
- Exercice 2 : un pool de 40 places est destiné à des salariés dont la présence maximale observée est de 80 %. Combien d''ayants droit peut-on accepter ?
- Exercice 3 : 54 ayants droit partagent 45 places. Calculez le coefficient de foisonnement.
- Exercice 4 : dans quel ordre attribue-t-on les catégories de places ? Justifiez.
- Exercice 5 : proposez trois critères objectifs pour accorder une place à un salarié.

## Corrigé

Exercice 1 : avantages : simplicité de gestion, confort et certitude pour le titulaire. Inconvénients : place vide pendant les absences du titulaire, sentiment d''injustice chez les autres salariés.

Exercice 2 : nombre d''ayants droit = 40 / 0,80 = 50 personnes.

Exercice 3 : coefficient = 54 / 45 = 1,2.

Exercice 4 : d''abord les places liées à la sécurité et aux obligations (secours, PMR), ensuite les places indispensables à l''activité (livraisons, véhicules de service), puis les visiteurs qui représentent l''image de l''entreprise, enfin les salariés avec le solde. On sécurise d''abord ce qui ne peut pas être sacrifié.

Exercice 5 : par exemple raison de santé ou handicap, nécessité de service (déplacements fréquents, astreinte), horaires décalés sans transport public, pratique du covoiturage, éloignement du domicile.', 'texte', 50, false, 20
from public.courses c where c.slug = 'formation-parking-entreprise'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Concevoir le plan du parking et attribuer les places');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Politique d''accès, badges et accueil des visiteurs', '## Objectifs de la leçon

- Rédiger une politique d''accès au parking.
- Choisir un système de contrôle d''accès et gérer les badges.
- Organiser l''accueil et le stationnement des visiteurs.

## La politique d''accès : un document de référence

La politique d''accès est un document court, validé par la direction, qui répond à cinq questions : qui peut entrer, avec quel véhicule, à quelles heures, par quel moyen d''identification, et que se passe-t-il en cas de non-respect. Elle est intégrée au règlement intérieur ou annexée à celui-ci, et portée à la connaissance de tous les usagers. Un usager qui signe la charte du parking reconnaît connaître les règles.

Elle précise notamment :

- Les catégories d''ayants droit et la procédure pour obtenir une autorisation.
- Les horaires d''ouverture et la procédure pour les entrées hors horaires.
- Les règles de circulation : vitesse limitée sur le site, sens de circulation, interdiction de stationner hors des places.
- Les sanctions graduées : rappel oral, avertissement écrit, suspension de l''autorisation.
- La responsabilité : l''entreprise précise ce qu''elle couvre ou non en cas de vol ou de dégât, après vérification avec son assureur.

## Les moyens de contrôle d''accès

Selon la taille du site et le budget, plusieurs solutions existent.

Le contrôle humain : un agent de sécurité à la barrière vérifie une vignette ou une liste. C''est la solution la plus répandue sur les petits sites ; elle est souple mais dépend de la rigueur de l''agent.

La vignette ou macaron : un autocollant numéroté posé sur le pare-brise. Peu coûteux, il est facile à contrôler visuellement mais difficile à retirer quand un salarié quitte l''entreprise.

Le badge sans contact : une carte ou un porte-clés lu par une borne qui commande la barrière. Le système enregistre chaque passage. Le badge se désactive à distance en cas de perte ou de départ.

La lecture de plaques d''immatriculation : une caméra lit la plaque et ouvre la barrière si le véhicule est enregistré. Confortable, mais plus coûteuse et sensible à la propreté des plaques. Ces systèmes enregistrent des données personnelles : leur usage doit respecter la réglementation sur la protection des données (au Sénégal, la Commission de protection des données personnelles, CDP).

## Gérer le cycle de vie des badges

Le badge est un objet de sécurité. Sa gestion suit un cycle précis :

- Demande : formulaire signé par le responsable hiérarchique.
- Attribution : enregistrement dans un registre (numéro de badge, nom, immatriculation, catégorie, date).
- Utilisation : le badge est personnel, il ne se prête pas.
- Perte : déclaration immédiate, désactivation, remplacement éventuellement facturé selon la politique.
- Restitution : à la fin du contrat ou du droit, avec désactivation le jour même.

Le contrôle clé est la revue périodique : chaque trimestre, on compare la liste des badges actifs avec la liste du personnel transmise par les ressources humaines. Tout badge sans titulaire présent est désactivé.

## Accueillir les visiteurs

Le visiteur se fait une première impression de l''entreprise dès le portail. Une bonne organisation comprend :

- Une signalétique claire depuis la rue jusqu''aux places visiteurs.
- Une pré-annonce : l''hôte déclare son visiteur la veille (nom, société, immatriculation, heure).
- Un enregistrement à l''arrivée sur un registre papier ou numérique, avec remise d''un badge ou ticket visiteur temporaire.
- Une durée de validité limitée et la restitution du badge à la sortie.
- Des places proches de l''accueil, réservées et contrôlées.

Pour les livraisons, on définit des créneaux et une zone dédiée afin que les camions ne bloquent pas l''entrée aux heures de pointe.

## Exemple : la clinique de Saint-Louis

Une clinique privée de Saint-Louis reçoit chaque jour des patients, des visiteurs, des médecins vacataires et des fournisseurs de produits médicaux. Le parking de 45 places était saturé par les véhicules du personnel. La clinique a mis en place : badges pour le personnel limités à une zone arrière de 25 places, 15 places patients à l''avant avec contrôle par l''agent d''accueil, 2 places ambulance strictement réservées, 3 places livraisons utilisables de 7 h à 10 h seulement, puis ouvertes aux patients. La revue trimestrielle des badges a permis de désactiver 9 badges d''anciens vacataires dès la première vérification.

## Points clés

- La politique d''accès est écrite, validée, communiquée et assortie de sanctions graduées.
- Le choix du moyen de contrôle dépend du volume, du budget et du niveau de sécurité recherché.
- Le badge a un cycle de vie : demande, attribution, perte, restitution, revue périodique.
- L''accueil des visiteurs commence avant leur arrivée grâce à la pré-annonce.

## Exercices

- Exercice 1 : citez les cinq questions auxquelles répond une politique d''accès.
- Exercice 2 : un salarié quitte l''entreprise le 15 du mois. Décrivez ce qui doit se passer pour son badge.
- Exercice 3 : lors de la revue trimestrielle, le système compte 212 badges actifs et la liste RH 197 salariés ayants droit, dont 4 qui n''ont pas de badge. Combien de badges sont à examiner pour désactivation ?
- Exercice 4 : proposez une procédure d''accueil d''un visiteur en quatre étapes.

## Corrigé

Exercice 1 : qui peut entrer ; avec quel véhicule ; à quelles heures ; par quel moyen d''identification ; quelles sanctions en cas de non-respect.

Exercice 2 : le jour de son départ, il restitue son badge (et sa vignette éventuelle) ; le gestionnaire désactive le badge dans le système le jour même et l''indique dans le registre avec la date. Si le badge n''est pas rendu, il reste désactivé et la procédure prévue (facturation éventuelle) s''applique.

Exercice 3 : ayants droit ayant un badge = 197 - 4 = 193. Badges sans titulaire valide = 212 - 193 = 19 badges à examiner (à désactiver sauf justification : prestataire autorisé, véhicule de service).

Exercice 4 : 1) l''hôte pré-annonce le visiteur la veille ; 2) à l''arrivée, l''agent vérifie l''identité et l''immatriculation et enregistre l''entrée ; 3) il remet un badge visiteur et indique la place ; 4) à la sortie, le badge est restitué et l''heure de sortie notée.', 'texte', 50, false, 30
from public.courses c where c.slug = 'formation-parking-entreprise'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Politique d''accès, badges et accueil des visiteurs');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sécuriser le parking : risques, prévention et incidents', '## Objectifs de la leçon

- Identifier les risques propres à un parking.
- Mettre en place des mesures de prévention et des consignes.
- Gérer un incident et en tirer des enseignements.

## Les risques d''un parking

Un parking concentre des personnes, des véhicules en mouvement et des biens de valeur. On distingue quatre familles de risques :

- Risques pour les personnes : piétons renversés, chutes (sol glissant, nids de poule), agressions, malaises liés à la chaleur.
- Risques pour les véhicules : vols de véhicules ou d''accessoires (batteries, rétroviseurs, roues), rayures, accrochages.
- Risques pour le site : intrusion par le parking, incendie (véhicule, végétation sèche, stockage sauvage), inondation en saison des pluies.
- Risques organisationnels : voie pompiers obstruée, fraude au badge, conflits entre usagers.

## Évaluer les risques

La méthode simple consiste à noter chaque risque selon sa probabilité (de 1 rare à 4 fréquent) et sa gravité (de 1 faible à 4 très grave). La criticité est le produit des deux : criticité = probabilité × gravité, sur une échelle de 1 à 16. On traite en priorité les risques dont la criticité est la plus élevée. Ces évaluations alimentent le document d''évaluation des risques de l''entreprise exigé en matière de santé et sécurité au travail.

## Les mesures de prévention

Aménagement : éclairage suffisant sur toutes les allées et les cheminements piétons, marquage au sol visible, ralentisseurs, miroirs aux angles morts, caniveaux entretenus avant l''hivernage, clôture en bon état.

Équipements : extincteurs adaptés à proximité, accessibles et vérifiés selon la périodicité prévue, trousse de premiers secours au poste de garde, vidéoprotection aux entrées et aux zones sensibles, interphone à la barrière.

Organisation : rondes de gardiennage à horaires variables, registre de main courante, consignes écrites pour les agents, interdiction de laisser des objets de valeur visibles, interdiction de stocker carburant ou matériel dans le parking.

Information : panneaux de vitesse limitée (par exemple 10 km/h sur site, règle interne), rappel des règles à l''arrivée des nouveaux salariés, affichage des numéros d''urgence.

## Les consignes de sécurité

Une consigne doit être courte, actionnable et affichée là où elle sert. Exemple de consigne incendie pour l''agent de parking : donner l''alerte au poste de sécurité ; appeler les sapeurs-pompiers ; si cela est possible sans danger, utiliser l''extincteur ; éloigner les personnes ; dégager la voie d''accès des secours ; accueillir les secours et les guider.

## Gérer un incident

Tout incident, même mineur, est enregistré. La fiche d''incident comprend : date, heure, lieu (numéro de place ou zone), description des faits, personnes et véhicules impliqués, témoins, mesures immédiates, photos, suites données. En cas d''accrochage entre deux véhicules de salariés, l''entreprise rappelle aux conducteurs de remplir un constat amiable et de prévenir leurs assureurs ; elle peut fournir les images de vidéoprotection selon les règles applicables.

Après l''incident, on analyse les causes : pourquoi l''accident s''est-il produit, et pourquoi cette cause existait-elle ? Cette méthode des "pourquoi successifs" évite de s''arrêter à la faute individuelle et fait apparaître les défauts d''organisation (éclairage en panne, marquage effacé, consigne inconnue).

## Exemple : l''entrepôt de la zone industrielle

Un entrepôt de la zone industrielle de Dakar subit trois vols de batteries en deux mois dans son parking du personnel. L''évaluation donne : probabilité 3, gravité 2, criticité 6. Le risque "piéton renversé par un chariot ou un camion" est noté probabilité 2, gravité 4, criticité 8 : il est en réalité prioritaire, même s''il fait moins parler.

Plan d''action retenu : séparation physique du flux camions et du flux piétons par des barrières et un passage marqué ; réparation de l''éclairage de la zone arrière ; déplacement d''une caméra vers la zone des vols ; rondes à horaires variables la nuit. Trois mois plus tard, aucun vol n''est constaté et le flux piétons est sécurisé.

## Points clés

- Quatre familles de risques : personnes, véhicules, site, organisation.
- Criticité = probabilité × gravité : on traite d''abord les risques les plus critiques.
- La prévention combine aménagement, équipements, organisation et information.
- Chaque incident est enregistré et analysé pour en trouver les causes profondes.

## Exercices

- Exercice 1 : citez deux risques pour chacune des quatre familles.
- Exercice 2 : calculez la criticité d''un risque de probabilité 2 et de gravité 3, puis d''un risque de probabilité 4 et de gravité 1. Lequel traiter en premier ?
- Exercice 3 : rédigez la liste des informations d''une fiche d''incident.
- Exercice 4 : un salarié a heurté un poteau en reculant la nuit. Proposez deux "pourquoi" successifs et une mesure corrective.

## Corrigé

Exercice 1 : personnes : piéton renversé, agression ; véhicules : vol de batterie, rayures ; site : intrusion, incendie ; organisation : voie pompiers bloquée, prêt de badge.

Exercice 2 : 2 × 3 = 6 et 4 × 1 = 4. Le premier risque (criticité 6) est prioritaire. Il faut toutefois rester attentif aux risques de gravité élevée, même peu probables.

Exercice 3 : date, heure, lieu précis, description des faits, personnes et véhicules impliqués, témoins, mesures immédiates prises, photos ou images, suites données et responsable du suivi.

Exercice 4 : Pourquoi a-t-il heurté le poteau ? Parce qu''il ne le voyait pas. Pourquoi ne le voyait-il pas ? Parce que le lampadaire de la zone est en panne et que le poteau n''est pas signalé. Mesures : réparer l''éclairage et peindre le poteau avec des bandes réfléchissantes ; vérifier l''éclairage lors des rondes.', 'texte', 50, false, 40
from public.courses c where c.slug = 'formation-parking-entreprise'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sécuriser le parking : risques, prévention et incidents');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Taux d''occupation, indicateurs et optimisation', '## Objectifs de la leçon

- Mesurer le taux d''occupation et les indicateurs du parking.
- Interpréter les résultats pour décider.
- Proposer des actions d''optimisation chiffrées.

## Les indicateurs essentiels

Le taux d''occupation instantané est égal au nombre de places occupées divisé par le nombre de places disponibles, à une heure donnée. Exemple : 102 véhicules sur 120 places à 10 h, taux = 102 / 120 = 85 %.

Le taux d''occupation moyen sur la journée est la moyenne des taux mesurés à intervalles réguliers (par exemple toutes les heures de 7 h à 18 h).

Le taux de pointe est le taux maximal observé. C''est lui qui détermine la sensation de saturation.

Le taux d''utilisation d''une place nominative est la part du temps où cette place est effectivement occupée par son titulaire.

Le coût par place utilisée rapporte le coût du parking au nombre moyen de places réellement occupées, et non au nombre total de places.

En pratique, on considère qu''un parking dont le taux de pointe dépasse 85 à 90 % est vécu comme plein : les usagers tournent pour trouver les dernières places. À l''inverse, un taux moyen faible signale une surcapacité ou une mauvaise répartition.

## Comment collecter les données

- Comptage manuel : l''agent parcourt le parking à heures fixes et note le nombre de véhicules par zone sur une fiche.
- Données de barrière : le système de badges fournit les entrées et sorties ; on en déduit le nombre de véhicules présents.
- Capteurs de place ou caméras : plus précis, utiles sur les grands sites.

Les données sont saisies dans un tableur : une ligne par relevé, avec la date, l''heure, la zone, le nombre de véhicules. Un tableau croisé donne ensuite la moyenne par heure et par jour de la semaine.

## Méthode d''analyse

- Tracer la courbe d''occupation heure par heure pour un jour moyen.
- Repérer le pic et l''heure à laquelle il survient.
- Comparer les zones : certaines sont saturées pendant que d''autres sont vides.
- Comparer les places nominatives à leur utilisation réelle.
- Chiffrer le gaspillage : places payées mais non utilisées.

## Les leviers d''optimisation

Mieux répartir : transformer des places nominatives peu utilisées en places partagées, libérer à 10 h les places réservées inoccupées.

Lisser la demande : décaler certains horaires d''arrivée, planifier les réunions avec visiteurs hors des heures de pointe, organiser les livraisons tôt le matin.

Réduire la demande : encourager le covoiturage avec des places réservées aux voitures de deux personnes ou plus, mettre en place une navette depuis un point de regroupement, faciliter les deux-roues avec un abri sécurisé.

Augmenter l''offre seulement en dernier recours : remarquage plus dense, location d''un terrain voisin, convention avec un parking public. Chaque option est chiffrée et comparée.

## Exemple chiffré : un siège de 120 places

Une banque régionale dispose de 120 places dont 30 nominatives. Le coût annuel du parking est de 21 600 000 FCFA, soit 15 000 FCFA par place et par mois. Les relevés d''un mois donnent :

- Taux de pointe : 96 % à 10 h, d''où les plaintes.
- Taux moyen sur la journée : 68 %.
- Places nominatives : utilisées en moyenne 50 % du temps, soit 15 places vides en moyenne.

Coût des places nominatives inutilisées : 15 places × 15 000 FCFA = 225 000 FCFA par mois, soit 2 700 000 FCFA par an. Décision : on conserve 10 places nominatives pour les fonctions à contrainte et on bascule 20 places dans un pool réservable. Avec un foisonnement de 1,25, ces 20 places servent 25 ayants droit au lieu de 20. Le taux de pointe baisse à 88 % après la mise en place, sans investissement.

## Points clés

- Le taux d''occupation se calcule à l''instant donné, en moyenne journalière et en pointe.
- Au-delà d''environ 85 à 90 % en pointe, le parking est perçu comme saturé.
- On optimise d''abord par l''organisation (répartition, lissage, covoiturage) avant d''investir.
- Chaque place vide a un coût qu''on sait chiffrer.

## Exercices

- Exercice 1 : un parking de 150 places compte 126 véhicules à 11 h. Calculez le taux d''occupation.
- Exercice 2 : relevés sur 4 heures : 60 %, 80 %, 90 %, 70 %. Calculez le taux moyen et le taux de pointe.
- Exercice 3 : 24 places nominatives sont utilisées 40 % du temps. Combien de places sont vides en moyenne ? Avec un coût de 16 000 FCFA par place et par mois, quel est le coût mensuel de ces places vides ?
- Exercice 4 : citez trois leviers pour réduire la pointe sans créer de places.
- Exercice 5 : un parking de 80 places coûte 1 200 000 FCFA par mois et l''occupation moyenne est de 60 places. Calculez le coût par place et le coût par place utilisée.

## Corrigé

Exercice 1 : 126 / 150 = 0,84 soit 84 %.

Exercice 2 : moyenne = (60 + 80 + 90 + 70) / 4 = 300 / 4 = 75 % ; pointe = 90 %.

Exercice 3 : places occupées en moyenne = 24 × 0,40 = 9,6 ; places vides = 24 - 9,6 = 14,4 places. Coût = 14,4 × 16 000 = 230 400 FCFA par mois.

Exercice 4 : par exemple libérer à 10 h les places réservées inoccupées, décaler les horaires de certains services ou des livraisons, encourager le covoiturage, proposer un abri deux-roues ou une navette.

Exercice 5 : coût par place = 1 200 000 / 80 = 15 000 FCFA par mois ; coût par place utilisée = 1 200 000 / 60 = 20 000 FCFA par mois.', 'texte', 55, false, 50
from public.courses c where c.slug = 'formation-parking-entreprise'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Taux d''occupation, indicateurs et optimisation');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : piloter le parking d''une entreprise de A à Z', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : responsables des services généraux, gestionnaires de sites, chefs de poste de sécurité.
- Objectifs : diagnostiquer un parking d''entreprise, organiser l''attribution et l''accès, sécuriser le site et piloter l''occupation avec des indicateurs.
- Matériel : diaporama, tableau blanc, plan d''un parking fictif imprimé, tableur projeté, fiches de comptage.
- Prérequis : avoir lu les cinq leçons du module ou connaître le fonctionnement d''un site d''entreprise.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et cas fil rouge

Bonjour à toutes et à tous, et bienvenue dans cette séance consacrée à la gestion des parkings d''entreprise. Pendant une heure et demie, nous allons travailler sur un cas unique que je vous présente tout de suite : la société fictive Teranga Logistique, installée à Dakar, compte 180 salariés et dispose d''un parking de 100 places. La direction reçoit chaque semaine des plaintes : les visiteurs ne trouvent pas de place, les cadres se disputent les emplacements ombragés, et un camion de livraison a bloqué la voie pompiers la semaine dernière. Notre mission : proposer à la direction un plan d''action complet.

Visuel : plan du parking de Teranga Logistique, avec ses trois zones A, B et C. Question à la salle : d''après vous, le problème vient-il d''un manque de places ? Notez votre réponse, nous la vérifierons dans une heure.

## 05:00 – 15:00 · Pourquoi le parking est un sujet de gestion

Commençons par une idée simple : une place de parking coûte de l''argent. Sur le plan, chaque place occupe environ 25 mètres carrés en comptant les allées. Teranga Logistique loue son terrain 12 000 000 FCFA par an et paie 4 800 000 FCFA de gardiennage et 1 200 000 FCFA d''entretien et d''éclairage. Faisons le calcul ensemble au tableau : 12 000 000 plus 4 800 000 plus 1 200 000, cela fait 18 000 000 FCFA par an. Divisé par 100 places, chaque place coûte 180 000 FCFA par an, soit 15 000 FCFA par mois.

Retenez ce chiffre : il va transformer toutes les discussions. Quand un directeur demande une place réservée qu''il n''utilise que deux jours par semaine, vous pourrez lui dire combien coûte cette place vide.

Visuel : diapositive "Les acteurs du parking" : direction, salariés, visiteurs, livreurs, sécurité, voisins. Je vous demande de citer, pour chaque acteur, une attente et une source de conflit possible. Prenez deux minutes avec votre voisin.

## 15:00 – 27:00 · Le diagnostic : inventaire et comptages

Pour décider, il faut mesurer. Le diagnostic de Teranga Logistique a donné ceci : 100 places, dont 4 PMR, 6 visiteurs, 8 véhicules de service, 2 livraisons et 80 places salariés, dont 35 nominatives. Les comptages, réalisés toutes les heures pendant deux semaines, montrent une présence moyenne de 78 véhicules à 10 h et une pointe à 92 véhicules à 11 h.

Visuel : la courbe d''occupation heure par heure, qui monte de 40 % à 7 h à 92 % à 11 h, redescend à 70 % à 14 h puis à 30 % à 18 h.

Regardez bien : à 11 h, il reste 8 places libres. Mais où sont-elles ? Le relevé par zone répond : elles sont toutes en zone A, celle des places nominatives des cadres, dont le taux d''utilisation moyen n''est que de 55 %. Pendant ce temps, les places visiteurs sont occupées par des salariés et les visiteurs se garent dans la rue.

Alors, revenons à la question du début : manque-t-on de places ? La réponse est non. Le problème est un problème de répartition et de contrôle. C''est le constat le plus fréquent dans les entreprises.

## 27:00 – 40:00 · Plan et règles d''attribution

Passons à la reconstruction. Première règle : on attribue d''abord les places qui ne se négocient pas. Les 4 places PMR restent au plus près de l''entrée. La voie pompiers est matérialisée par un marquage jaune et des plots. Les 2 places de livraison sont réservées de 7 h à 10 h, puis ouvertes aux visiteurs.

Deuxième règle : on dimensionne les visiteurs à partir des rendez-vous réels. L''accueil enregistre jusqu''à 9 véhicules visiteurs simultanés : on passe donc de 6 à 10 places visiteurs, contrôlées par l''agent.

Troisième règle : les places nominatives sont réservées aux fonctions à contrainte. Sur 35, on en garde 12 : direction générale, astreintes, salariés avec contrainte de santé. Les 23 autres rejoignent un pool réservable.

Calculons le pool : 80 places salariés moins 4 places transférées aux visiteurs, cela donne 76 places ; moins 12 nominatives, il reste 64 places dans le pool. La présence maximale observée des ayants droit est de 80 % : avec un foisonnement de 1 divisé par 0,80, soit 1,25, le pool peut servir 64 × 1,25 = 80 ayants droit.

Visuel : le nouveau plan coloré par catégorie. Question : quels critères écririez-vous pour être admis dans le pool ? Je note vos propositions au tableau : covoiturage, horaires décalés, éloignement, nécessité de service.

## 40:00 – 45:00 · Pause et quiz interactif

Faisons une courte pause active. Je projette cinq questions, répondez à main levée ou dans le chat.

Question 1 : un parking de 60 places coûte 10 800 000 FCFA par an : combien coûte une place par mois ? Réponse : 10 800 000 divisé par 60 donne 180 000 par an, soit 15 000 FCFA par mois.

Question 2 : quel est le coefficient de foisonnement si 66 ayants droit partagent 55 places ? Réponse : 66 divisé par 55, soit 1,2.

Question 3 : vrai ou faux, un taux d''occupation moyen de 65 % prouve qu''il n''y a jamais de saturation ? Réponse : faux, c''est le taux de pointe qui mesure la saturation.

Question 4 : quelle catégorie de places attribue-t-on en premier ? Réponse : les places liées à la sécurité et aux obligations, comme la voie pompiers et les places PMR.

Question 5 : une place nominative utilisée 40 % du temps coûte 15 000 FCFA par mois ; combien coûte sa part inutilisée ? Réponse : 60 % de 15 000, soit 9 000 FCFA par mois.

## 45:00 – 57:00 · Politique d''accès, badges et visiteurs

Reprenons. Teranga Logistique contrôle aujourd''hui l''accès par une vignette collée sur le pare-brise. Problème : 140 vignettes ont été distribuées en trois ans et personne ne sait combien sont encore valables. Nous proposons un passage au badge sans contact, avec un registre.

Le registre contient pour chaque badge : son numéro, le nom du titulaire, l''immatriculation, la catégorie de droit, la date d''attribution et la date de fin. Chaque trimestre, le gestionnaire compare la liste des badges actifs avec la liste du personnel fournie par les ressources humaines. Tout badge sans titulaire présent est désactivé.

Pour les visiteurs, la procédure tient en quatre temps : l''hôte pré-annonce son visiteur la veille ; l''agent enregistre l''arrivée et remet un badge temporaire ; il indique la place ; le badge est restitué à la sortie.

Attention à un point : si vous choisissez la lecture de plaques d''immatriculation ou la vidéoprotection, vous traitez des données personnelles. Vous devez informer les personnes, limiter la durée de conservation et respecter les formalités auprès de l''autorité de protection des données, au Sénégal la CDP. Vérifiez toujours les textes en vigueur avant de déployer.

Visuel : modèle de charte du parking d''une page. Question : quelles sanctions graduées prévoir pour un salarié qui se gare sur une place visiteur ?

## 57:00 – 1:09:00 · Sécurité du parking

Passons à la sécurité. Je vous propose de construire ensemble la grille des risques de Teranga Logistique. Pour chaque risque, nous notons la probabilité de 1 à 4 et la gravité de 1 à 4, puis nous calculons la criticité, qui est leur produit.

Premier risque : piéton renversé par un camion de livraison. Probabilité 2, gravité 4, criticité 8. Deuxième risque : vol de batterie la nuit. Probabilité 3, gravité 2, criticité 6. Troisième risque : voie pompiers bloquée. Probabilité 3, gravité 4, criticité 12. Quatrième risque : inondation de la zone C pendant l''hivernage. Probabilité 2, gravité 2, criticité 4.

Visuel : la matrice de criticité colorée du vert au rouge. Vous voyez que le risque prioritaire n''est pas le vol, dont on parle beaucoup, mais la voie pompiers bloquée. Les mesures : marquage, plots, consigne aux livreurs, contrôle par l''agent à chaque ronde.

Pour le piéton, on sépare les flux : un passage piéton protégé de la zone B jusqu''à l''entrée, et un créneau de livraison avant 10 h. Pour les vols, on répare l''éclairage de la zone arrière et on varie les horaires des rondes. Enfin, chaque incident est noté sur une fiche : date, heure, lieu, faits, personnes, témoins, mesures, suites.

## 1:09:00 – 1:20:00 · Piloter avec des indicateurs

Un plan d''action sans suivi s''essouffle en trois mois. Nous allons donc définir le tableau de bord mensuel du parking. Il contient cinq indicateurs : le taux de pointe, le taux moyen journalier, le taux d''utilisation des places nominatives, le nombre d''incidents, et le nombre de plaintes enregistrées.

Visuel : le tableur projeté. Je saisis les relevés d''une semaine type après réorganisation : pointe à 86 %, taux moyen à 66 %, utilisation des nominatives à 82 %, un incident mineur, deux plaintes.

Calculons le gain : avant, 35 nominatives utilisées à 55 % laissaient en moyenne 35 × 0,45 = 15,75 places vides, soit environ 236 000 FCFA par mois à 15 000 FCFA la place. Après, 12 nominatives utilisées à 82 % laissent 12 × 0,18 = 2,16 places vides, soit environ 32 400 FCFA par mois. L''économie d''usage dépasse 200 000 FCFA par mois, sans aucun investissement.

Question à la salle : quel seuil d''alerte fixeriez-vous pour le taux de pointe ? Une réponse raisonnable est 90 % : au-delà, on réexamine le foisonnement ou on active des leviers comme le covoiturage.

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Faisons la synthèse. Un parking d''entreprise se gère comme toute ressource : on le chiffre, on le mesure, on fixe des règles écrites et équitables, on contrôle l''accès, on prévient les risques et on pilote avec des indicateurs. Dans le cas de Teranga Logistique, le sentiment de manque de places venait d''une mauvaise répartition, pas d''une capacité insuffisante.

Évaluation finale, cinq questions. Notez vos réponses, puis je donne la correction.

Question 1 : donnez la formule du taux d''occupation instantané. Réponse : nombre de places occupées divisé par nombre de places disponibles, à une heure donnée.

Question 2 : un pool de 48 places et une présence maximale de 80 % : combien d''ayants droit ? Réponse : 48 divisé par 0,80, soit 60 ayants droit.

Question 3 : citez les quatre étapes du cycle de vie d''un badge après la demande. Réponse : attribution avec inscription au registre, utilisation personnelle, déclaration et désactivation en cas de perte, restitution et désactivation au départ, complétées par une revue périodique.

Question 4 : un risque a une probabilité de 3 et une gravité de 3 ; quelle est sa criticité ? Réponse : 3 × 3 = 9.

Question 5 : citez deux leviers d''optimisation sans création de places. Réponse : par exemple transformer des places nominatives en pool réservable, libérer à 10 h les places réservées inoccupées, encourager le covoiturage, lisser les horaires de livraison.

Merci pour votre participation. Pour la suite, je vous invite à réaliser le diagnostic de votre propre site avec la fiche de comptage fournie.', 'video', 90, false, 60
from public.courses c where c.slug = 'formation-parking-entreprise'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : piloter le parking d''une entreprise de A à Z');
