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

Retenir des cotisations et de l''impôt sur le salaire ne suffit pas : l''employeur doit les déclarer et les reverser aux organismes, dans des délais fixés par les textes. Ces obligations sont périodiques (mensuelles ou trimestrielles selon l''organisme et la taille de l''entreprise) et annuelles (récapitulatifs nominatifs). Les téléprocédures (déclaration et paiement en ligne) se développent. Le gestionnaire doit tenir un calendrier précis, car les retards entraînent majorations et pénalités.

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

-- Cours : Comptabilité générale L1 : les bases du SYSCOHADA révisé
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'comptabilite-generale-l1', (select id from public.levels where name = 'Licence 1'), null, 'Comptabilité', 'Comptabilité générale L1 : les bases du SYSCOHADA révisé', 'Ce cours présente les principes de la comptabilité générale dans le cadre du SYSCOHADA révisé : bilan, compte de résultat, partie double, écritures courantes, mécanisme de la TVA et travaux d''inventaire. Il s''adresse aux étudiants de première année et aux futurs collaborateurs comptables. Aucun prérequis comptable n''est exigé, seulement l''aisance avec les pourcentages.', true, 20
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Introduction à la comptabilité, SYSCOHADA révisé et principes comptables', '## Objectifs de la leçon

- Comprendre le rôle de la comptabilité générale dans l''entreprise.
- Situer le SYSCOHADA révisé dans le droit OHADA.
- Connaître les principes comptables fondamentaux.
- Se repérer dans les classes du plan de comptes.

## 1. À quoi sert la comptabilité ?

La comptabilité générale est un système d''organisation de l''information financière qui permet de saisir, classer et enregistrer des données chiffrées, puis de présenter des états financiers donnant une image fidèle du patrimoine, de la situation financière et du résultat de l''entité.

Elle répond à plusieurs besoins : pour le dirigeant, piloter l''activité ; pour les associés, connaître la rentabilité de leurs apports ; pour la banque ou l''institution de microfinance, apprécier la capacité de remboursement ; pour l''administration fiscale, calculer l''impôt ; pour les salariés et les partenaires, évaluer la solidité de l''entreprise.

## 2. Le cadre OHADA et le SYSCOHADA révisé

L''Organisation pour l''harmonisation en Afrique du droit des affaires (OHADA) regroupe dix-sept États, dont le Sénégal et l''ensemble des pays de l''UEMOA. Elle adopte des Actes uniformes directement applicables dans les États membres. En matière comptable, l''Acte uniforme relatif au droit comptable et à l''information financière (AUDCIF), adopté en 2017, a institué le SYSCOHADA révisé, entré en vigueur pour les comptes personnels des entités à partir de 2018. Il rapproche le référentiel des normes internationales tout en restant adapté aux réalités africaines.

Le SYSCOHADA prévoit deux systèmes selon la taille de l''entité : le système normal pour la plupart des entreprises et le système minimal de trésorerie (SMT) pour les très petites entités, qui tiennent une comptabilité simplifiée basée sur les recettes et les dépenses. Les seuils d''application sont fixés par les textes : il faut les vérifier dans la version en vigueur.

## 3. Les principes comptables

Les principes garantissent la fiabilité et la comparabilité des comptes :

- Prudence : on ne comptabilise pas un gain probable, mais on tient compte des pertes probables (dépréciations, provisions).
- Continuité d''exploitation : les comptes sont établis en supposant que l''entreprise poursuivra son activité.
- Permanence des méthodes : on applique les mêmes méthodes d''un exercice à l''autre, sauf changement justifié et expliqué.
- Coût historique : les biens sont enregistrés à leur coût d''acquisition ou de production.
- Spécialisation (indépendance) des exercices : on rattache à chaque exercice les charges et produits qui le concernent, quelle que soit la date de paiement.
- Intangibilité du bilan d''ouverture : le bilan d''ouverture d''un exercice est identique au bilan de clôture du précédent.
- Non-compensation : on ne compense pas une dette et une créance, ni une charge et un produit.
- Importance significative : toute information susceptible d''influencer le jugement des utilisateurs doit être fournie.
- Transparence et prééminence de la réalité sur l''apparence : l''information traduit la réalité économique des opérations.

## 4. Le plan de comptes

Le plan de comptes SYSCOHADA classe les comptes en neuf classes, chaque compte étant identifié par un numéro dont le premier chiffre indique la classe :

- Classe 1 : comptes de ressources durables (capital, réserves, emprunts).
- Classe 2 : comptes d''actif immobilisé (terrains, bâtiments, matériel).
- Classe 3 : comptes de stocks.
- Classe 4 : comptes de tiers (fournisseurs, clients, personnel, État).
- Classe 5 : comptes de trésorerie (banques, caisse).
- Classe 6 : comptes de charges des activités ordinaires.
- Classe 7 : comptes de produits des activités ordinaires.
- Classe 8 : comptes des autres charges et des autres produits (notamment hors activités ordinaires, HAO).
- Classe 9 : comptes des engagements hors bilan et comptabilité analytique de gestion.

Les classes 1 à 5 sont des comptes de bilan ; les classes 6 à 8 des comptes de gestion qui servent à calculer le résultat.

## 5. Méthode : identifier le bon compte

Face à une opération, posez trois questions : 1) s''agit-il d''un élément de patrimoine (bilan) ou d''un flux de l''exercice (gestion) ? 2) si c''est un bien, va-t-il servir durablement (immobilisation, classe 2) ou être consommé ou revendu (charge ou stock) ? 3) qui est le tiers concerné (classe 4) et comment paie-t-on (classe 5) ?

Exemple : une boutique de Ziguinchor achète un réfrigérateur pour conserver les boissons qu''elle vend : c''est du matériel qui servira plusieurs années, donc une immobilisation (classe 2). Les boissons achetées pour être revendues sont des achats de marchandises (classe 6). Le loyer du local est une charge (classe 6). Le paiement par virement concerne la classe 5.

## Points clés

- La comptabilité produit une information fiable pour de nombreux utilisateurs.
- Le SYSCOHADA révisé, issu de l''AUDCIF, s''applique dans les États OHADA.
- Les principes comptables (prudence, permanence, coût historique…) encadrent les enregistrements.
- Les classes 1 à 5 relèvent du bilan, 6 à 8 de la gestion.

## Exercices

- Exercice 1 : Citez quatre utilisateurs de l''information comptable et leur besoin principal.
- Exercice 2 : Indiquez la classe de chacun des comptes suivants : capital, clients, caisse, achats de marchandises, matériel de transport, ventes de marchandises, stocks de marchandises.
- Exercice 3 : Quel principe est en jeu ? a) Un litige risque de coûter 2 millions de FCFA à l''entreprise : on constate une provision. b) L''entreprise change chaque année de méthode d''évaluation des stocks sans explication.
- Exercice 4 : Le loyer de janvier N+1 est payé le 28 décembre N. À quel exercice faut-il rattacher cette charge ? Quel principe s''applique ?

## Corrigé

- Exercice 1 : Le dirigeant (pilotage et décisions), les associés (rentabilité), la banque (solvabilité et capacité de remboursement), l''administration fiscale (calcul de l''impôt). On peut aussi citer les fournisseurs, les salariés ou les investisseurs.
- Exercice 2 : Capital : classe 1 ; clients : classe 4 ; caisse : classe 5 ; achats de marchandises : classe 6 ; matériel de transport : classe 2 ; ventes de marchandises : classe 7 ; stocks de marchandises : classe 3.
- Exercice 3 : a) Prudence : on tient compte d''une perte probable. b) Violation de la permanence des méthodes : les comptes ne sont plus comparables.
- Exercice 4 : À l''exercice N+1, car le loyer concerne janvier N+1. C''est le principe de spécialisation des exercices ; le paiement anticipé sera traité comme une charge constatée d''avance à l''inventaire de N.', 'texte', 45, true, 10
from public.courses c where c.slug = 'comptabilite-generale-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Introduction à la comptabilité, SYSCOHADA révisé et principes comptables');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Le bilan et le compte de résultat', '## Objectifs de la leçon

- Lire et construire un bilan simplifié selon la logique SYSCOHADA.
- Comprendre la structure du compte de résultat et ses soldes successifs.
- Relier le résultat de l''exercice aux capitaux propres.

## 1. Le bilan : une photographie du patrimoine

Le bilan décrit, à une date donnée (en général le 31 décembre), ce que l''entreprise possède et utilise (actif) et l''origine des ressources qui financent ces emplois (passif). Par construction, total actif = total passif.

Dans la présentation SYSCOHADA, les postes sont classés selon leur fonction et leur liquidité :

- Actif immobilisé : immobilisations incorporelles (logiciels, brevets), corporelles (terrains, bâtiments, matériel) et financières (titres, dépôts et cautionnements), présentées en brut, amortissements et dépréciations, et net.
- Actif circulant : stocks, créances clients et autres créances.
- Trésorerie-actif : banques, caisse, placements à court terme.
- Capitaux propres et ressources assimilées : capital, réserves, report à nouveau, résultat net de l''exercice, subventions d''investissement.
- Dettes financières et ressources assimilées : emprunts à moyen et long terme.
- Passif circulant : dettes fournisseurs, dettes fiscales et sociales, autres dettes.
- Trésorerie-passif : découverts et crédits de trésorerie.

L''ensemble capitaux propres plus dettes financières forme les ressources stables.

## 2. Le compte de résultat : un film de l''exercice

Le compte de résultat récapitule les produits et les charges de l''exercice. Résultat = produits − charges. S''il est positif, c''est un bénéfice ; s''il est négatif, une perte.

Le SYSCOHADA révisé présente le compte de résultat en liste, en faisant apparaître des soldes intermédiaires successifs :

- Marge commerciale = ventes de marchandises − coût d''achat des marchandises vendues (achats ± variation de stock).
- Valeur ajoutée = production et marge de l''exercice − consommations en provenance des tiers (transports, services extérieurs, matières consommées, impôts et taxes, autres charges).
- Excédent brut d''exploitation (EBE) = valeur ajoutée − charges de personnel.
- Résultat d''exploitation = EBE ± reprises et dotations aux amortissements, provisions et dépréciations.
- Résultat financier = produits financiers − charges financières.
- Résultat des activités ordinaires (RAO) = résultat d''exploitation + résultat financier.
- Résultat hors activités ordinaires (HAO) : opérations exceptionnelles, comme la cession d''une immobilisation.
- Résultat net = RAO + résultat HAO − participation des travailleurs − impôt sur le résultat.

## Exemple chiffré : la boutique « Diallo Alimentation »

Au 31/12/N, l''entreprise présente les données suivantes (en milliers de FCFA) : matériel 6 000, amortissements du matériel 1 200, stock de marchandises 2 500, clients 1 300, banque 2 400, caisse 300, capital 7 000, emprunt bancaire 2 000, fournisseurs 1 100, dettes fiscales 200. Le résultat net est à déterminer.

Actif : matériel net 6 000 − 1 200 = 4 800 ; stocks 2 500 ; clients 1 300 ; banque et caisse 2 700. Total actif = 11 300.

Passif hors résultat : 7 000 + 2 000 + 1 100 + 200 = 10 300. Le résultat net est donc 11 300 − 10 300 = 1 000, soit un bénéfice d''un million de FCFA.

Compte de résultat simplifié de la même entreprise (en milliers de FCFA) : ventes de marchandises 18 000 ; achats de marchandises 12 500 ; variation de stock (stock initial 2 000, stock final 2 500) ; transports et services extérieurs 1 300 ; impôts et taxes 200 ; charges de personnel 2 100 ; dotations aux amortissements 600 ; charges d''intérêts 200 ; impôt sur le résultat 600.

- Coût d''achat des marchandises vendues = 12 500 + (2 000 − 2 500) = 12 000.
- Marge commerciale = 18 000 − 12 000 = 6 000.
- Valeur ajoutée = 6 000 − 1 300 − 200 = 4 500.
- EBE = 4 500 − 2 100 = 2 400.
- Résultat d''exploitation = 2 400 − 600 = 1 800.
- Résultat financier = −200 ; RAO = 1 600.
- Résultat net = 1 600 − 600 = 1 000. On retrouve le bénéfice du bilan.

## 3. Méthode d''analyse rapide

- Vérifier l''égalité actif = passif.
- Comparer ressources stables et actif immobilisé : les biens durables doivent être financés par des ressources durables.
- Lire les soldes du compte de résultat de haut en bas pour localiser l''origine du bénéfice ou de la perte : marge trop faible ? charges de personnel trop lourdes ? endettement coûteux ?

## Points clés

- Le bilan présente le patrimoine à une date ; le compte de résultat retrace l''activité d''une période.
- Le SYSCOHADA révisé fait apparaître marge commerciale, valeur ajoutée, EBE, résultat d''exploitation, résultat financier, RAO, HAO et résultat net.
- Le résultat net, inscrit dans les capitaux propres, relie les deux documents.

## Exercices

- Exercice 1 : Classez dans le bilan : terrain, découvert bancaire, créances clients, emprunt sur 5 ans, réserves, stock de tissus.
- Exercice 2 : Ventes de marchandises 25 000 ; achats 16 000 ; stock initial 3 000 ; stock final 4 000. Calculez le coût d''achat des marchandises vendues et la marge commerciale (en milliers de FCFA).
- Exercice 3 : Avec une valeur ajoutée de 9 000, des charges de personnel de 4 500, des dotations de 1 500, des charges financières de 800 et un impôt de 660, calculez EBE, résultat d''exploitation, RAO et résultat net (pas d''opérations HAO).
- Exercice 4 : Total actif 50 000 ; capital 20 000 ; réserves 5 000 ; dettes 22 000. Calculez le résultat.

## Corrigé

- Exercice 1 : Terrain : actif immobilisé ; découvert bancaire : trésorerie-passif ; créances clients : actif circulant ; emprunt sur 5 ans : dettes financières ; réserves : capitaux propres ; stock de tissus : actif circulant.
- Exercice 2 : Coût d''achat des marchandises vendues = 16 000 + (3 000 − 4 000) = 15 000. Marge commerciale = 25 000 − 15 000 = 10 000.
- Exercice 3 : EBE = 9 000 − 4 500 = 4 500 ; résultat d''exploitation = 4 500 − 1 500 = 3 000 ; RAO = 3 000 − 800 = 2 200 ; résultat net = 2 200 − 660 = 1 540.
- Exercice 4 : Passif hors résultat = 20 000 + 5 000 + 22 000 = 47 000. Résultat = 50 000 − 47 000 = 3 000 (bénéfice).', 'texte', 50, false, 20
from public.courses c where c.slug = 'comptabilite-generale-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Le bilan et le compte de résultat');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'La partie double : journal, grand livre et balance', '## Objectifs de la leçon

- Comprendre la notion de compte, de débit et de crédit.
- Appliquer le principe de la partie double.
- Enregistrer des opérations au journal, les reporter au grand livre et établir la balance.

## 1. Le compte

Un compte est un tableau à deux colonnes qui enregistre les mouvements d''un élément : à gauche le débit, à droite le crédit. Le solde est la différence entre le total des débits et le total des crédits ; il est débiteur si les débits l''emportent, créditeur dans le cas contraire.

Règles de fonctionnement :

- Comptes d''actif (classes 2, 3, et la plupart des comptes de trésorerie et de créances) : ils augmentent au débit et diminuent au crédit ; leur solde est normalement débiteur.
- Comptes de passif (classe 1, dettes fournisseurs, dettes fiscales) : ils augmentent au crédit et diminuent au débit ; solde normalement créditeur.
- Comptes de charges (classe 6) : ils fonctionnent au débit.
- Comptes de produits (classe 7) : ils fonctionnent au crédit.

## 2. Le principe de la partie double

Toute opération est enregistrée au moins dans deux comptes : un ou plusieurs comptes débités, un ou plusieurs comptes crédités, pour des montants égaux. Total des débits = total des crédits. Ce principe découle d''une idée simple : toute opération a une origine (une ressource, le crédit) et une destination (un emploi, le débit).

Méthode en quatre étapes pour chaque opération :

- Identifier les comptes concernés.
- Déterminer pour chacun s''il augmente ou diminue.
- En déduire le sens (débit ou crédit) grâce aux règles de fonctionnement.
- Vérifier l''égalité des montants.

## 3. Le journal

Le journal enregistre chronologiquement toutes les opérations. Chaque écriture comporte la date, les numéros et intitulés des comptes débités puis crédités, un libellé et les montants. En pratique, on utilise un logiciel ; mais savoir passer une écriture « à la main » reste indispensable pour contrôler.

## Exemple : création de l''entreprise « Ndiaye Services » (montants en FCFA)

- 2 janvier : M. Ndiaye apporte 5 000 000 en numéraire, déposés en banque. Débit 521 Banques 5 000 000 ; crédit 101 Capital social 5 000 000. La banque (actif) augmente, le capital (ressource) augmente.
- 5 janvier : achat d''un ordinateur et d''une imprimante pour 900 000, payés par virement. Débit 244 Matériel et mobilier 900 000 ; crédit 521 Banques 900 000.
- 8 janvier : achat de marchandises à crédit auprès d''un fournisseur de Dakar pour 1 200 000. Débit 601 Achats de marchandises 1 200 000 ; crédit 401 Fournisseurs 1 200 000.
- 15 janvier : vente de marchandises à crédit pour 1 600 000. Débit 411 Clients 1 600 000 ; crédit 701 Ventes de marchandises 1 600 000.
- 20 janvier : retrait de 200 000 de la banque pour alimenter la caisse. Débit 571 Caisse 200 000 ; crédit 521 Banques 200 000.
- 25 janvier : le client règle 1 000 000 par chèque. Débit 521 Banques 1 000 000 ; crédit 411 Clients 1 000 000.
- 30 janvier : règlement du fournisseur par virement, 1 200 000. Débit 401 Fournisseurs 1 200 000 ; crédit 521 Banques 1 200 000.

(Pour simplifier, la TVA est ignorée ici ; elle sera traitée à la leçon suivante.)

## 4. Le grand livre

Le grand livre regroupe l''ensemble des comptes. On y reporte chaque ligne du journal dans le compte concerné. Pour le compte 521 Banques de notre exemple :

- Débits : 5 000 000 + 1 000 000 = 6 000 000.
- Crédits : 900 000 + 200 000 + 1 200 000 = 2 300 000.
- Solde débiteur : 3 700 000.

Compte 411 Clients : débit 1 600 000, crédit 1 000 000, solde débiteur 600 000. Compte 401 Fournisseurs : débit 1 200 000, crédit 1 200 000, solde nul.

## 5. La balance

La balance liste tous les comptes avec leurs totaux et leurs soldes. Elle permet de vérifier l''égalité : total des soldes débiteurs = total des soldes créditeurs.

Balance de Ndiaye Services au 31 janvier (soldes) :

- Soldes débiteurs : 244 Matériel 900 000 ; 411 Clients 600 000 ; 521 Banques 3 700 000 ; 571 Caisse 200 000 ; 601 Achats 1 200 000. Total = 6 600 000.
- Soldes créditeurs : 101 Capital 5 000 000 ; 701 Ventes 1 600 000. Total = 6 600 000.

L''égalité est respectée. Attention : une balance équilibrée ne prouve pas l''absence d''erreur (une écriture oubliée ou passée dans un mauvais compte n''est pas détectée), mais un déséquilibre prouve qu''il y a une erreur.

## Points clés

- Débit à gauche, crédit à droite ; l''actif et les charges augmentent au débit, le passif et les produits au crédit.
- Partie double : total des débits = total des crédits pour chaque écriture.
- Journal (chronologique) → grand livre (par compte) → balance (contrôle).

## Exercices

- Exercice 1 : Passez au journal les opérations suivantes : a) achat de marchandises au comptant par chèque, 750 000 ; b) vente au comptant en espèces, 300 000 ; c) emprunt bancaire obtenu, 4 000 000, versé sur le compte ; d) paiement du loyer en espèces, 150 000 (compte 622 Locations et charges locatives).
- Exercice 2 : Un compte Banques présente des débits de 8 450 000 et des crédits de 6 920 000. Quel est son solde ?
- Exercice 3 : Une balance présente un total des soldes débiteurs de 12 300 000 et créditeurs de 12 120 000. Que peut-on conclure ? Donnez deux causes possibles.

## Corrigé

- Exercice 1 : a) Débit 601 Achats de marchandises 750 000 ; crédit 521 Banques 750 000. b) Débit 571 Caisse 300 000 ; crédit 701 Ventes de marchandises 300 000. c) Débit 521 Banques 4 000 000 ; crédit 162 Emprunts auprès des établissements de crédit 4 000 000. d) Débit 622 Locations et charges locatives 150 000 ; crédit 571 Caisse 150 000.
- Exercice 2 : Solde débiteur de 8 450 000 − 6 920 000 = 1 530 000 FCFA.
- Exercice 3 : La balance n''est pas équilibrée (écart de 180 000) : il y a nécessairement une erreur. Causes possibles : une écriture déséquilibrée au journal, un report erroné au grand livre (montant ou sens), une erreur d''addition dans le calcul d''un solde.', 'texte', 50, false, 30
from public.courses c where c.slug = 'comptabilite-generale-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'La partie double : journal, grand livre et balance');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Écritures courantes : achats, ventes, règlements et TVA', '## Objectifs de la leçon

- Enregistrer les achats et les ventes avec TVA.
- Comprendre le mécanisme de la TVA collectée, déductible et due.
- Enregistrer les règlements, les frais bancaires et les salaires de façon simplifiée.

## 1. Le mécanisme de la TVA

La taxe sur la valeur ajoutée (TVA) est un impôt indirect sur la consommation. L''entreprise assujettie n''en supporte pas la charge : elle la collecte pour le compte de l''État.

- Sur ses ventes, elle facture la TVA au client : c''est la TVA collectée.
- Sur ses achats, elle paie la TVA au fournisseur : c''est la TVA déductible (récupérable).
- Chaque période, elle verse à l''État la différence : TVA due = TVA collectée − TVA déductible. Si la différence est négative, elle dispose d''un crédit de TVA.

Au final, la TVA est supportée par le consommateur final, et chaque entreprise ne verse que la TVA correspondant à sa propre valeur ajoutée.

Important : dans cette leçon, nous utilisons un taux de 20 %, taux fictif choisi pour faciliter les calculs. Les taux réels (taux normal, taux réduits, exonérations) sont fixés par le code général des impôts de chaque pays et peuvent évoluer : vérifiez toujours le texte en vigueur.

Formules : TVA = HT × taux ; TTC = HT × (1 + taux) ; HT = TTC / (1 + taux).

## 2. Les comptes utilisés

- 4452 État, TVA récupérable sur achats (et 4451 sur immobilisations).
- 4431 État, TVA facturée sur ventes.
- 4441 État, TVA due ; 4449 État, crédit de TVA à reporter.
- 401 Fournisseurs ; 411 Clients ; 521 Banques ; 571 Caisse.
- 601 Achats de marchandises ; 701 Ventes de marchandises.

Vérifiez toujours les intitulés et subdivisions dans le plan de comptes officiel utilisé par votre entreprise.

## 3. Les achats

Les achats sont enregistrés hors taxes en charges ; la TVA est enregistrée séparément.

Exemple : le 3 mars, la quincaillerie « Keur Baye » achète des marchandises pour 2 000 000 HT, TVA 20 % (taux fictif), à crédit. TVA = 400 000 ; TTC = 2 400 000.

- Débit 601 Achats de marchandises 2 000 000.
- Débit 4452 TVA récupérable sur achats 400 000.
- Crédit 401 Fournisseurs 2 400 000.

Les réductions commerciales accordées directement sur la facture (remise, rabais) sont déduites avant le calcul de la TVA : on enregistre le net commercial.

## 4. Les ventes

Le 10 mars, Keur Baye vend des marchandises pour 3 000 000 HT à un client, à crédit. TVA = 600 000 ; TTC = 3 600 000.

- Débit 411 Clients 3 600 000.
- Crédit 701 Ventes de marchandises 3 000 000.
- Crédit 4431 TVA facturée sur ventes 600 000.

## 5. Les règlements

Le 20 mars, le client paie par virement 3 600 000 : débit 521 Banques ; crédit 411 Clients. Le 25 mars, Keur Baye règle son fournisseur par chèque 2 400 000 : débit 401 Fournisseurs ; crédit 521 Banques.

Frais bancaires : la banque prélève 15 000 de frais de tenue de compte : débit 631 Frais bancaires 15 000 ; crédit 521 Banques 15 000. Selon la réglementation fiscale applicable, ces frais peuvent supporter une taxe spécifique ; on simplifie ici.

## 6. La déclaration de TVA

À la fin du mois de mars : TVA collectée = 600 000 ; TVA déductible = 400 000 ; TVA due = 200 000.

Écriture de liquidation :

- Débit 4431 TVA facturée sur ventes 600 000.
- Crédit 4452 TVA récupérable sur achats 400 000.
- Crédit 4441 État, TVA due 200 000.

Paiement à l''administration fiscale : débit 4441 État, TVA due 200 000 ; crédit 521 Banques 200 000.

Si la TVA déductible avait été supérieure à la TVA collectée, on aurait débité 4449 Crédit de TVA à reporter, imputable sur les déclarations suivantes.

## 7. Les salaires (version simplifiée)

La paie fait intervenir le salaire brut, les retenues salariales (cotisations sociales, impôt sur le revenu retenu à la source) et les charges patronales. Les taux et plafonds sont fixés par les textes nationaux et ne sont pas étudiés ici. Schéma simplifié : débit 661 Rémunérations directes versées au personnel (salaire brut) ; crédit 422 Personnel, rémunérations dues (net à payer) et crédit des comptes d''organismes sociaux et de l''État pour les retenues. Au Sénégal, le droit du travail est en cours de transition vers un nouveau Code du travail (projet de loi n°15/2026) : la paie devra suivre les textes définitivement adoptés.

## Points clés

- Charges et produits s''enregistrent hors taxes ; la TVA a ses propres comptes.
- TVA due = TVA collectée − TVA déductible.
- Les règlements soldent les comptes de tiers 401 et 411.
- Le taux de 20 % utilisé ici est fictif : vérifiez toujours le taux légal.

## Exercices

On utilise un taux de TVA fictif de 20 %.

- Exercice 1 : Achat de marchandises 1 500 000 HT au comptant par chèque. Passez l''écriture.
- Exercice 2 : Vente de marchandises pour 2 160 000 TTC, à crédit. Calculez le HT et la TVA, puis passez l''écriture.
- Exercice 3 : Sur le mois, TVA collectée 900 000 et TVA déductible 1 050 000. Que se passe-t-il ? Passez l''écriture de liquidation.
- Exercice 4 : Un commerçant achète 100 HT et revend 160 HT. Montrez que la TVA versée à l''État correspond à la TVA sur sa valeur ajoutée.

## Corrigé

- Exercice 1 : TVA = 300 000 ; TTC = 1 800 000. Débit 601 1 500 000 ; débit 4452 300 000 ; crédit 521 1 800 000.
- Exercice 2 : HT = 2 160 000 / 1,2 = 1 800 000 ; TVA = 360 000. Débit 411 2 160 000 ; crédit 701 1 800 000 ; crédit 4431 360 000.
- Exercice 3 : La TVA déductible dépasse la TVA collectée : crédit de TVA de 150 000. Écriture : débit 4431 900 000 ; débit 4449 Crédit de TVA à reporter 150 000 ; crédit 4452 1 050 000.
- Exercice 4 : TVA déductible = 20 ; TVA collectée = 32 ; TVA versée = 12. Valeur ajoutée = 160 − 100 = 60 ; 60 × 20 % = 12. Les deux montants sont égaux.', 'texte', 55, false, 40
from public.courses c where c.slug = 'comptabilite-generale-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Écritures courantes : achats, ventes, règlements et TVA');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Les travaux d''inventaire : amortissements, dépréciations, stocks et régularisations', '## Objectifs de la leçon

- Comprendre la finalité des travaux d''inventaire.
- Calculer et enregistrer un amortissement linéaire.
- Enregistrer une dépréciation de créance et la variation des stocks.
- Régulariser les charges et produits selon le principe de spécialisation des exercices.

## 1. Pourquoi des travaux d''inventaire ?

En fin d''exercice, la comptabilité tenue au jour le jour ne donne pas encore une image fidèle. Il faut constater l''usure des immobilisations, les pertes probables, le stock réellement présent et rattacher chaque charge et chaque produit au bon exercice. Ces opérations s''appuient sur un inventaire physique (comptage des stocks, vérification des immobilisations) et sur l''analyse des comptes.

## 2. Les amortissements

L''amortissement constate la consommation des avantages économiques d''une immobilisation sur sa durée d''utilité. En mode linéaire, l''annuité est constante :

- Annuité = base amortissable / durée d''utilité (ou base × taux, avec taux = 100 % / durée).
- La première année, on applique un prorata temporis à partir de la date de mise en service.

Exemple : un camion de livraison acquis 12 000 000 FCFA HT et mis en service le 1er avril N, durée d''utilité 5 ans, valeur résiduelle nulle. Annuité pleine = 12 000 000 / 5 = 2 400 000. Pour N (9 mois) : 2 400 000 × 9/12 = 1 800 000.

Écriture au 31/12/N : débit 681 Dotations aux amortissements d''exploitation 1 800 000 ; crédit 2845 Amortissements du matériel de transport 1 800 000. Au bilan, le camion apparaît pour 12 000 000 brut, 1 800 000 d''amortissements et 10 200 000 net.

Plan d''amortissement : N : 1 800 000 ; N+1 à N+4 : 2 400 000 par an ; N+5 : 600 000 (3 mois). Total = 1 800 000 + 4 × 2 400 000 + 600 000 = 12 000 000.

## 3. Les dépréciations des créances

Par prudence, une créance dont le recouvrement est incertain doit être dépréciée. On la transfère d''abord en créance douteuse, puis on constate une dépréciation égale à la perte probable, calculée sur le montant hors taxes, car la TVA pourra en principe être récupérée en cas de perte définitive selon les règles fiscales applicables.

Exemple : un client doit 1 800 000 TTC (soit 1 500 000 HT avec un taux de TVA fictif de 20 %). On estime la perte probable à 40 %. Dépréciation = 1 500 000 × 40 % = 600 000.

- Transfert : débit 416 Créances clients litigieuses ou douteuses 1 800 000 ; crédit 411 Clients 1 800 000.
- Dépréciation : débit 659 Charges pour dépréciations et provisions pour risques à court terme d''exploitation 600 000 ; crédit 491 Dépréciations des comptes clients 600 000.

Si l''exercice suivant le client paie, la dépréciation devenue sans objet est reprise (compte de reprise de classe 7).

## 4. La variation des stocks

En inventaire intermittent, les achats sont enregistrés en charges pendant l''exercice ; en fin d''exercice, on annule le stock initial et on constate le stock final par le compte de variation des stocks.

Exemple : stock initial de marchandises 2 000 000 ; stock final compté 2 600 000.

- Annulation du stock initial : débit 6031 Variation des stocks de marchandises 2 000 000 ; crédit 311 Marchandises 2 000 000.
- Constatation du stock final : débit 311 Marchandises 2 600 000 ; crédit 6031 Variation des stocks de marchandises 2 600 000.

Le compte 6031 présente un solde créditeur de 600 000 : le stock a augmenté, une partie des achats n''a pas été consommée, ce qui diminue les charges de l''exercice.

## 5. Les régularisations de charges et de produits

Principe de spécialisation : seules les charges et produits de l''exercice doivent figurer au compte de résultat.

- Charge constatée d''avance : une charge payée en N mais concernant N+1. Exemple : assurance annuelle de 1 200 000 payée le 1er octobre N. Part concernant N+1 : 9 mois, soit 900 000. Écriture : débit 476 Charges constatées d''avance 900 000 ; crédit 625 Primes d''assurance 900 000.
- Produit constaté d''avance : un produit facturé en N pour une prestation de N+1 (compte 477).
- Charges à payer et produits à recevoir : une facture d''électricité de décembre non encore reçue est une charge de N ; elle est enregistrée à l''inventaire avec un compte de tiers (par exemple fournisseurs, factures non parvenues).

Ces écritures sont contrepassées (annulées) au début de l''exercice suivant.

## Points clés

- L''inventaire ajuste les comptes pour donner une image fidèle.
- Amortissement linéaire : annuité = base / durée, avec prorata temporis.
- Les dépréciations de créances se calculent sur le HT.
- La variation des stocks corrige les achats ; les régularisations rattachent charges et produits au bon exercice.

## Exercices

- Exercice 1 : Une machine de 8 400 000 FCFA est mise en service le 1er juillet N, durée 7 ans. Calculez la dotation de N et de N+1 et la valeur nette au 31/12/N+1.
- Exercice 2 : Une créance de 1 200 000 TTC (TVA fictive 20 %) est jugée irrécouvrable à 50 %. Calculez la dépréciation.
- Exercice 3 : Stock initial 5 000 000, stock final 4 200 000. Passez les écritures et interprétez le solde du compte de variation.
- Exercice 4 : Un loyer trimestriel de 600 000 est payé le 1er décembre N pour décembre, janvier et février. Passez l''écriture de régularisation au 31/12/N.

## Corrigé

- Exercice 1 : Annuité = 8 400 000 / 7 = 1 200 000. N : 1 200 000 × 6/12 = 600 000. N+1 : 1 200 000. Valeur nette au 31/12/N+1 = 8 400 000 − 1 800 000 = 6 600 000.
- Exercice 2 : HT = 1 200 000 / 1,2 = 1 000 000 ; dépréciation = 1 000 000 × 50 % = 500 000.
- Exercice 3 : Débit 6031 5 000 000 / crédit 311 5 000 000 ; débit 311 4 200 000 / crédit 6031 4 200 000. Solde débiteur de 6031 : 800 000. Le stock a diminué : l''entreprise a consommé plus qu''elle n''a acheté, ce qui augmente les charges de l''exercice.
- Exercice 4 : Part de N+1 = 2 mois × 200 000 = 400 000. Débit 476 Charges constatées d''avance 400 000 ; crédit 622 Locations et charges locatives 400 000.', 'texte', 55, false, 50
from public.courses c where c.slug = 'comptabilite-generale-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Les travaux d''inventaire : amortissements, dépréciations, stocks et régularisations');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : tenir la comptabilité d''un exercice complet', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 1 en gestion, comptabilité, économie.
- Objectifs : appliquer la partie double, enregistrer achats, ventes et TVA, établir une balance, réaliser les principaux travaux d''inventaire et présenter bilan et compte de résultat selon la logique du SYSCOHADA révisé.
- Matériel : tableau ou diaporama, modèle de journal et de comptes en T, extrait du plan de comptes, calculatrice.
- Prérequis : leçons 1 à 5 de ce cours ; aisance avec les pourcentages.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture et cas fil rouge

Bonjour à tous. Aujourd''hui, nous allons tenir ensemble la comptabilité d''une petite entreprise du début à la fin d''un exercice. Notre cas fil rouge s''appelle « Sow Distribution », un grossiste en produits alimentaires installé à Kaolack. Nous allons passer ses écritures, calculer sa TVA, faire son inventaire et produire ses états financiers. Rappel important : dans tous nos calculs, la TVA est à 20 %, un taux fictif pour l''exemple ; dans votre pratique, vérifiez toujours le taux légal en vigueur.

Visuel : diapositive avec le nom de l''entreprise, son activité et les quatre étapes de la séance.

## 05:00 – 15:00 · Rappels : SYSCOHADA, principes et plan de comptes

Le SYSCOHADA révisé est le référentiel comptable des pays de l''OHADA, issu de l''Acte uniforme relatif au droit comptable et à l''information financière. Il impose des principes : prudence, continuité d''exploitation, permanence des méthodes, coût historique, spécialisation des exercices, intangibilité du bilan d''ouverture, non-compensation.

Visuel : les neuf classes du plan de comptes. Classes 1 à 5 : bilan. Classes 6 à 8 : gestion. Classe 9 : engagements hors bilan et analytique.

Question à la classe : un ordinateur acheté pour le service comptable, c''est quelle classe ? Réponse : classe 2, c''est une immobilisation, car il servira plusieurs années. Et le carton de savon acheté pour être revendu ? Classe 6, achats de marchandises.

Remarque de méthode : avant chaque écriture, posez-vous toujours les trois mêmes questions : quels comptes, augmentent-ils ou diminuent-ils, débit ou crédit ? C''est la clé de toute la séance.

## 15:00 – 27:00 · La partie double en action

Rappel des règles : l''actif et les charges augmentent au débit ; le passif et les produits augmentent au crédit. Chaque écriture est équilibrée.

Opérations de Sow Distribution, au tableau :

Le 2 janvier, apport en capital de 10 000 000 déposés en banque : débit 521 Banques, crédit 101 Capital social. Le 4 janvier, emprunt de 6 000 000 : débit 521, crédit 162 Emprunts. Le 6 janvier, achat d''un camion de 12 000 000 HT payé par virement, TVA récupérable 2 400 000 : débit 245 Matériel de transport 12 000 000, débit 4451 TVA récupérable sur immobilisations 2 400 000, crédit 521 Banques 14 400 000.

Question : la banque peut-elle payer 14 400 000 alors qu''elle dispose de 16 000 000 ? Oui, il reste 1 600 000. Notez le solde : nous allons le suivre.

## 27:00 – 40:00 · Achats, ventes et TVA

Visuel : schéma du mécanisme de la TVA, du fournisseur au consommateur final.

L''entreprise collecte la TVA sur ses ventes, récupère celle de ses achats et verse la différence. Enregistrons :

Achat de marchandises à crédit pour 8 000 000 HT. TVA 1 600 000. Débit 601 8 000 000, débit 4452 1 600 000, crédit 401 Fournisseurs 9 600 000.

Vente de marchandises à crédit pour 11 000 000 HT. TVA 2 200 000. Débit 411 Clients 13 200 000, crédit 701 11 000 000, crédit 4431 2 200 000.

Liquidation de la TVA du mois : TVA collectée 2 200 000. TVA déductible : 1 600 000 sur achats plus 2 400 000 sur le camion, soit 4 000 000. La TVA déductible dépasse la TVA collectée : crédit de TVA de 1 800 000, à reporter sur les déclarations suivantes. Écriture : débit 4431 2 200 000, débit 4449 Crédit de TVA à reporter 1 800 000, crédit 4451 2 400 000, crédit 4452 1 600 000. Vérifions l''équilibre : 4 000 000 au débit et 4 000 000 au crédit.

Question à la classe : pourquoi un crédit de TVA est-il fréquent l''année où l''entreprise investit ? Parce qu''elle récupère la TVA sur un gros achat d''immobilisation alors que ses ventes démarrent à peine.

## 40:00 – 48:00 · Pause interactive et quiz

Pause de quelques minutes. Répondez sur votre feuille.

- Question 1 : Une facture fait 3 000 000 TTC. Quel est le HT au taux fictif de 20 % ? Réponse : 2 500 000 ; TVA 500 000.
- Question 2 : Le client paie 13 200 000 par virement. Quelle écriture ? Réponse : débit 521, crédit 411.
- Question 3 : Une balance est équilibrée : cela prouve-t-il qu''il n''y a aucune erreur ? Réponse : non, une écriture oubliée ou passée dans le mauvais compte n''est pas détectée.

## 48:00 – 58:00 · Grand livre et balance

Visuel : comptes en T du 521 Banques et du 411 Clients.

Reportons. Compte 521 : débits 10 000 000 + 6 000 000 + 13 200 000 (règlement client) = 29 200 000. Crédits : 14 400 000 pour le camion ; ajoutons le règlement du fournisseur, 9 600 000 ; total crédits 24 000 000. Solde débiteur : 5 200 000.

Le compte 411 est soldé après le règlement, le 401 aussi. Je vous montre ensuite la balance : liste des comptes, totaux des débits et des crédits, soldes. Le contrôle fondamental : total des soldes débiteurs égal total des soldes créditeurs.

## 58:00 – 1:12:00 · Les travaux d''inventaire

Nous sommes au 31 décembre. Quatre travaux.

Premièrement, l''amortissement du camion : 12 000 000 sur 5 ans, mis en service le 6 janvier ; pour simplifier, on retient une année complète, soit 2 400 000. Débit 681 Dotations aux amortissements, crédit 2845 Amortissements du matériel de transport.

Deuxièmement, une créance douteuse : un client doit 1 200 000 TTC et risque de ne payer que la moitié. On calcule sur le HT : 1 000 000, perte probable 50 %, dépréciation 500 000. Débit 659, crédit 491. Pourquoi sur le HT ? Parce que la TVA n''est pas un produit de l''entreprise et pourra en principe être récupérée selon les règles fiscales.

Troisièmement, les stocks : stock initial nul puisque l''entreprise démarre, stock final compté 1 500 000. Débit 311 Marchandises, crédit 6031 Variation des stocks. Le coût d''achat des marchandises vendues devient 8 000 000 − 1 500 000 = 6 500 000.

Quatrièmement, une assurance de 600 000 payée le 1er octobre pour un an. Part de l''exercice suivant : 9 mois, 450 000. Débit 476 Charges constatées d''avance, crédit 625 Primes d''assurance.

Question à la classe : quel principe justifie cette dernière écriture ? Réponse : la spécialisation des exercices.

## 1:12:00 – 1:22:00 · Les états financiers

Visuel : compte de résultat en liste avec les soldes successifs.

Supposons, pour l''année complète, des ventes de 40 000 000, un coût d''achat des marchandises vendues de 28 000 000, des services extérieurs et transports de 3 000 000, des impôts et taxes de 500 000, des charges de personnel de 4 000 000, des dotations de 2 900 000 (amortissement 2 400 000 et dépréciation 500 000), des charges d''intérêts de 600 000 et un impôt sur le résultat fixé, pour l''exemple, à 300 000.

Marge commerciale : 12 000 000. Valeur ajoutée : 12 000 000 − 3 000 000 − 500 000 = 8 500 000. EBE : 8 500 000 − 4 000 000 = 4 500 000. Résultat d''exploitation : 4 500 000 − 2 900 000 = 1 600 000. Résultat financier : −600 000. Résultat des activités ordinaires : 1 000 000. Sans opération HAO, résultat net : 1 000 000 − 300 000 = 700 000.

Ce bénéfice de 700 000 vient s''inscrire au passif du bilan, dans les capitaux propres. Au bilan, le camion figure pour 12 000 000 brut, 2 400 000 d''amortissements, 9 600 000 net ; la créance douteuse est diminuée de sa dépréciation ; le stock de 1 500 000 figure à l''actif circulant.

## 1:22:00 – 1:30:00 · Synthèse et évaluation finale

Ce qu''il faut retenir : la partie double garantit l''équilibre ; la TVA ne touche pas le résultat ; l''inventaire ajuste les comptes à la réalité ; le compte de résultat SYSCOHADA se lit de haut en bas, de la marge au résultat net.

Évaluation finale, cinq questions :

- Question 1 : Écriture d''un achat de marchandises au comptant par chèque de 500 000 HT, TVA fictive 20 %. Réponse : débit 601 500 000, débit 4452 100 000, crédit 521 600 000.
- Question 2 : TVA collectée 750 000 et déductible 420 000. Montant à verser ? Réponse : 330 000 de TVA due.
- Question 3 : Matériel de 6 000 000 sur 4 ans, mis en service le 1er octobre. Dotation de la première année ? Réponse : 1 500 000 × 3/12 = 375 000.
- Question 4 : Stock initial 3 000 000, stock final 2 000 000. Effet sur les charges ? Réponse : variation de stock débitrice de 1 000 000, les charges augmentent.
- Question 5 : Valeur ajoutée 5 000 000, charges de personnel 2 000 000, dotations 1 000 000. EBE et résultat d''exploitation ? Réponse : EBE 3 000 000, résultat d''exploitation 2 000 000.

Merci à tous. Pour la prochaine fois, reprenez le cas Sow Distribution et établissez vous-mêmes la balance complète après inventaire.', 'video', 90, false, 60
from public.courses c where c.slug = 'comptabilite-generale-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : tenir la comptabilité d''un exercice complet');

-- Cours : Paie et RH multi-pays UEMOA / CEDEAO
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'formation-paie-uemoa', (select id from public.levels where name = 'Formation professionnelle'), 'paie-uemoa', 'Paie et ressources humaines', 'Paie et RH multi-pays UEMOA / CEDEAO', 'Cette formation prépare les responsables paie, RH et finance à gérer le personnel d''une entreprise présente dans plusieurs pays d''Afrique de l''Ouest. Elle couvre le rôle de l''UEMOA, de la CEDEAO, de l''OHADA et de la CIPRES, la comparaison des référentiels nationaux, le paramétrage d''un logiciel multi-pays à règles versionnées, la mobilité des salariés et le reporting RH consolidé. Prérequis : connaître les bases de la paie dans au moins un pays (par exemple la formation « Gérer la paie et les RH au Sénégal »). Les taux utilisés dans les exemples sont fictifs et signalés comme tels.', true, 20
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Les institutions régionales : UEMOA, CEDEAO, OHADA, CIPRES', '## Objectifs de la leçon

- Connaître le rôle de l''UEMOA, de la CEDEAO, de l''OHADA et de la CIPRES pour un responsable paie et RH.
- Comprendre pourquoi le droit du travail et la sécurité sociale restent essentiellement nationaux.
- Savoir quelles règles régionales peuvent malgré tout influencer la gestion du personnel.

## Pourquoi un responsable paie doit connaître les institutions régionales

De nombreuses entreprises sénégalaises se développent dans la sous-région : un groupe agroalimentaire de Dakar ouvre une filiale à Abidjan, une société de services informatiques recrute des consultants à Bamako et à Lomé, un cabinet envoie un auditeur en mission à Cotonou. Le responsable paie se retrouve alors à gérer plusieurs législations. Il doit savoir ce qui relève d''une règle commune et ce qui relève de chaque pays.

## L''UEMOA : une union économique et monétaire

L''Union économique et monétaire ouest-africaine regroupe huit États : Bénin, Burkina Faso, Côte d''Ivoire, Guinée-Bissau, Mali, Niger, Sénégal et Togo. Ses membres partagent le franc CFA émis par la BCEAO, dont le siège est à Dakar. L''Union a harmonisé de nombreux domaines économiques : marché commun, tarif extérieur commun, réglementation bancaire, certaines règles de fiscalité indirecte.

Conséquences pour la paie :

- La monnaie commune simplifie la consolidation : un salaire versé à Dakar ou à Ouagadougou s''exprime dans la même devise.
- Les règles bancaires et de change communes facilitent les virements de salaires entre pays membres.
- En revanche, les taux de cotisations, les impôts sur salaires, les salaires minimaux et le droit du travail restent fixés par chaque État.

## La CEDEAO : libre circulation et coopération

La Communauté économique des États de l''Afrique de l''Ouest, créée en 1975, a une couverture plus large que l''UEMOA, avec des pays anglophones et lusophones et plusieurs monnaies. Elle a adopté des protocoles sur la libre circulation des personnes et le droit de résidence et d''établissement. Le paysage institutionnel évolue : le Burkina Faso, le Mali et le Niger se sont retirés de la CEDEAO en 2025 pour former l''Alliance des États du Sahel, tout en restant membres de l''UEMOA. Avant toute mobilité, vérifiez donc les règles applicables entre les deux pays concernés.

Pour la sécurité sociale, une convention générale de sécurité sociale a été adoptée au niveau de la CEDEAO pour faciliter la coordination des droits des travailleurs migrants (totalisation des périodes, maintien des droits acquis). Son application concrète dépend des ratifications et des arrangements administratifs entre organismes : il faut vérifier, pays par pays, si elle est effectivement opérationnelle.

## L''OHADA : le droit des affaires, pas (encore) le droit du travail

L''Organisation pour l''harmonisation en Afrique du droit des affaires regroupe dix-sept États et adopte des Actes uniformes directement applicables : droit commercial général, sociétés commerciales, sûretés, procédures collectives, comptabilité (le système comptable SYSCOHADA), arbitrage, etc.

Pour la paie, l''apport principal de l''OHADA est comptable : le SYSCOHADA fixe les comptes dans lesquels on enregistre les charges de personnel et les dettes sociales, ce qui facilite la consolidation d''un groupe. Un projet d''Acte uniforme sur le droit du travail a fait l''objet de travaux, mais il n''a pas été adopté : le droit du travail reste national.

## La CIPRES : la supervision de la prévoyance sociale

La Conférence interafricaine de la prévoyance sociale regroupe des États d''Afrique de l''Ouest et du Centre. Sa mission principale est de contrôler et d''améliorer la gestion des organismes nationaux de prévoyance sociale (comme l''IPRES et la CSS au Sénégal ou les caisses nationales dans d''autres pays), d''harmoniser certaines règles de gestion et de favoriser la coordination. Elle a également élaboré un cadre de convention multilatérale de sécurité sociale. La CIPRES ne fixe pas, en règle générale, les taux de cotisation : ceux-ci restent nationaux.

## Méthode : la grille « régional ou national ? »

Face à une question de paie multi-pays, posez-vous successivement :

- Est-ce une question de monnaie, de banque ou de comptabilité ? Les règles communes (BCEAO, SYSCOHADA) jouent un rôle important.
- Est-ce une question de droit du travail (contrat, durée, congés, rupture) ? C''est la loi et la convention collective du pays d''exécution du travail.
- Est-ce une question de cotisations sociales ? En principe le pays d''activité, sauf convention de sécurité sociale (détachement, coordination).
- Est-ce une question d''impôt sur le salaire ? Le droit fiscal national et, le cas échéant, une convention fiscale entre les deux pays.

## Exemple

Une société de Thiès détache un ingénieur pendant quatre mois sur un chantier à Niamey. Monnaie : pas de change, tous deux utilisent le FCFA. Droit du travail : le contrat sénégalais continue, mais certaines règles impératives du Niger (sécurité, durée du travail) peuvent s''imposer sur place. Sécurité sociale : il faut vérifier si une convention permet le maintien au régime sénégalais. Impôt : il faut analyser la résidence fiscale et l''éventuelle convention fiscale. On voit que quatre questions appellent quatre réponses différentes.

## Points clés

- UEMOA : monnaie et économie communes, mais paie nationale.
- CEDEAO : libre circulation et coordination, paysage institutionnel en évolution depuis 2025.
- OHADA : droit des affaires et comptabilité harmonisés ; pas d''Acte uniforme du travail adopté.
- CIPRES : supervision des organismes de prévoyance sociale.
- Toujours se demander si une règle est régionale ou nationale.

## Exercices

- Exercice 1 : Citez les huit États membres de l''UEMOA.
- Exercice 2 : Un dirigeant affirme : « Comme nous sommes dans l''UEMOA, les cotisations sont les mêmes à Dakar et à Abidjan. » Corrigez-le.
- Exercice 3 : Quel est l''apport principal de l''OHADA pour le service paie ?
- Exercice 4 : Quel est le rôle principal de la CIPRES ?

## Corrigé

- Exercice 1 : Bénin, Burkina Faso, Côte d''Ivoire, Guinée-Bissau, Mali, Niger, Sénégal, Togo.
- Exercice 2 : L''UEMOA harmonise la monnaie et de nombreuses règles économiques, mais pas les cotisations sociales ni le droit du travail. Chaque pays a ses organismes (IPRES et CSS au Sénégal, CNPS en Côte d''Ivoire), ses taux et ses plafonds.
- Exercice 3 : Le SYSCOHADA, qui harmonise l''enregistrement comptable des charges de personnel et des dettes sociales, ce qui facilite la consolidation. Les procédures collectives règlent aussi le rang des créances salariales.
- Exercice 4 : Contrôler et améliorer la gestion des organismes nationaux de prévoyance sociale, harmoniser certaines règles de gestion et favoriser la coordination entre États.', 'texte', 45, true, 10
from public.courses c where c.slug = 'formation-paie-uemoa'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Les institutions régionales : UEMOA, CEDEAO, OHADA, CIPRES');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comparer les référentiels nationaux de paie', '## Objectifs de la leçon

- Identifier les points communs entre les systèmes de paie des pays d''Afrique de l''Ouest francophone.
- Repérer les différences qui obligent à paramétrer chaque pays séparément.
- Construire un tableau comparatif fiable et sourcé.

## Une architecture commune

Les pays francophones d''Afrique de l''Ouest partagent une histoire juridique commune : leurs codes du travail sont issus d''une même matrice et ont évolué séparément. On retrouve donc presque partout la même architecture :

- Un Code du travail national et des conventions collectives (interprofessionnelle et de branche) qui fixent les classifications et les salaires minimaux.
- Un salaire minimum légal, souvent distinct pour le secteur agricole.
- Une durée légale du travail et un régime d''heures supplémentaires majorées.
- Des congés payés acquis mensuellement.
- Un ou plusieurs organismes de sécurité sociale couvrant la retraite, les prestations familiales et les accidents du travail, avec des cotisations patronales et salariales sur des bases souvent plafonnées.
- Un impôt sur les salaires retenu à la source par l''employeur, calculé selon un barème progressif, souvent avec une prise en compte de la situation familiale.
- Des taxes patronales sur les salaires (contribution forfaitaire, taxe d''apprentissage ou de formation professionnelle selon les pays).

Cette architecture commune est une bonne nouvelle : le même modèle de bulletin et le même moteur de calcul peuvent servir dans plusieurs pays, à condition de paramétrer les différences.

## Les différences à paramétrer

Les différences portent principalement sur :

- Les organismes : au Sénégal, la retraite relève de l''IPRES, les prestations familiales et accidents du travail de la CSS, et la maladie des IPM. En Côte d''Ivoire, la CNPS gère retraite, famille et accidents du travail, et une couverture maladie universelle a été mise en place. Au Mali, au Burkina Faso, au Bénin, au Togo ou au Niger, ce sont des caisses ou instituts nationaux.
- Les taux, plafonds et assiettes de chaque cotisation.
- L''impôt sur les salaires : nom (impôt sur le revenu et TRIMF au Sénégal, impôt sur les traitements et salaires en Côte d''Ivoire, impôt unique sur les traitements et salaires au Burkina Faso, par exemple), barème, abattements, mode de prise en compte de la famille.
- Le salaire minimum et les grilles conventionnelles.
- Les règles de congés, d''ancienneté, de préavis et d''indemnités de rupture.
- Les périodicités et les supports de déclaration (en ligne ou papier, mensuel ou trimestriel).
- Le calendrier des jours fériés.

De plus, chaque pays fait évoluer ses règles à son rythme. Au Sénégal, par exemple, un nouveau Code du travail est en projet (projet de loi n° 15/2026) ; d''autres pays ont révisé leur code ou leur salaire minimum ces dernières années.

## Méthode : construire un tableau comparatif sourcé

- Étape 1 : lister les rubriques à comparer (une ligne par rubrique : salaire minimum, durée légale, chaque cotisation, impôt, taxes patronales, congés, préavis, indemnités).
- Étape 2 : créer une colonne par pays, avec pour chaque cellule trois informations : la valeur, la source (texte, circulaire, site officiel) et la date d''effet.
- Étape 3 : faire valider chaque colonne par un correspondant local (cabinet, expert-comptable, responsable RH de la filiale).
- Étape 4 : fixer une fréquence de mise à jour (au minimum à chaque loi de finances et à chaque changement de salaire minimum).
- Étape 5 : n''utiliser le tableau qu''en citant sa date ; un tableau non daté est dangereux.

## Exemple de comparaison (taux fictifs pour l''exemple)

Un groupe compare le coût d''un comptable payé 400 000 FCFA bruts dans deux pays A et B. Hypothèses fictives :

- Pays A : charges patronales totales de 20 % sur l''ensemble du salaire, retenues salariales de 8 %.
- Pays B : charges patronales de 25 % sur une base plafonnée fictive de 300 000 FCFA, plus une taxe patronale de 2 % sur le brut total ; retenues salariales de 6 % sur la même base plafonnée.

Calcul :

- Pays A : charges patronales 400 000 × 20 % = 80 000 ; coût total 480 000 FCFA. Retenues 400 000 × 8 % = 32 000.
- Pays B : 300 000 × 25 % = 75 000, plus 400 000 × 2 % = 8 000, soit 83 000 ; coût total 483 000 FCFA. Retenues 300 000 × 6 % = 18 000.

Le coût employeur est presque identique, mais le salarié du pays B conserve davantage avant impôt. Ce type d''analyse est utile pour les décisions d''implantation, à condition de remplacer les taux fictifs par les textes officiels en vigueur et d''intégrer l''impôt sur le revenu.

## Les pièges fréquents

- Copier le paramétrage d''un pays pour en créer un autre « en changeant juste les taux ».
- Oublier qu''un plafond peut être mensuel dans un pays et annuel dans un autre.
- Ignorer les conventions collectives locales, qui imposent souvent des primes obligatoires.

## Points clés

- Architecture commune, paramètres nationaux.
- Différences majeures : organismes, taux et plafonds, impôt, salaire minimum, conventions, calendriers.
- Un tableau comparatif doit être sourcé, daté et validé localement.

## Exercices

- Exercice 1 : Citez cinq rubriques à comparer entre deux pays avant d''ouvrir une filiale.
- Exercice 2 : Pourquoi un tableau comparatif doit-il être daté ?
- Exercice 3 : Reprenez l''exemple avec un salaire de 250 000 FCFA. Calculez le coût total dans les pays A et B.
- Exercice 4 : Un collègue propose de dupliquer le paramétrage sénégalais pour créer la paie ivoirienne. Quels risques soulignez-vous ?

## Corrigé

- Exercice 1 : Salaire minimum, durée légale, cotisations sociales (taux et plafonds), impôt sur les salaires, taxes patronales, congés, préavis et indemnités de rupture, jours fériés. Cinq de ces rubriques suffisent.
- Exercice 2 : Parce que les taux, plafonds, barèmes et salaires minimaux changent ; une valeur exacte hier peut être fausse aujourd''hui. La date permet de savoir si le tableau est encore fiable.
- Exercice 3 : Pays A : 250 000 × 20 % = 50 000, coût 300 000 FCFA. Pays B : le salaire est sous le plafond, donc 250 000 × 25 % = 62 500 plus 250 000 × 2 % = 5 000, soit 67 500 ; coût 317 500 FCFA.
- Exercice 4 : Organismes différents (CNPS au lieu de IPRES, CSS et IPM), assiettes et plafonds différents, impôt sur les salaires construit différemment, conventions collectives et jours fériés différents, déclarations différentes. Il faut un paramétrage pays construit à partir des textes ivoiriens.', 'texte', 45, false, 20
from public.courses c where c.slug = 'formation-paie-uemoa'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comparer les référentiels nationaux de paie');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Paramétrer un logiciel de paie multi-pays : le moteur de règles versionné', '## Objectifs de la leçon

- Comprendre l''architecture d''un logiciel de paie multi-pays.
- Concevoir un moteur de règles paramétrable et versionné dans le temps.
- Organiser les tests et la gouvernance des mises à jour.

## Le problème à résoudre

Un groupe présent au Sénégal, en Côte d''Ivoire et au Burkina Faso veut une seule application de paie. Il doit gérer trois législations qui changent à des dates différentes, conserver la capacité de recalculer un bulletin ancien exactement comme il avait été calculé, et produire un reporting consolidé. La solution professionnelle repose sur un principe : séparer le moteur de calcul (le programme) des règles (les données).

## L''architecture en couches

- Les référentiels communs : salariés, entités juridiques, établissements, devises, calendriers.
- Les paramètres pays : taux, plafonds, barèmes, salaires minimaux, jours fériés, stockés dans des tables.
- Les rubriques de paie : chaque rubrique (salaire de base, prime, cotisation, impôt) est définie par une formule, une assiette et des propriétés (soumise ou non, imposable ou non).
- Le moteur de calcul : il exécute les rubriques dans l''ordre et produit les résultats.
- Les sorties : bulletins, journaux, déclarations, écritures comptables, indicateurs RH.

Exemple de rubrique décrite en données plutôt qu''en code : « RET_SAL_SN = min(BRUT_SOUMIS, PLAFOND_RET_SN) × TAUX_RET_SAL_SN ». Le moteur ne connaît pas le Sénégal : il applique la formule avec les valeurs du pays et de la date.

## Le versionnement : la notion de date d''effet

Une règle de paie n''est pas une valeur unique : c''est une suite de valeurs dans le temps. Chaque paramètre doit donc être stocké avec une date de début et, le cas échéant, une date de fin de validité. Exemple de table (valeurs fictives pour l''exemple) :

- Pays SN, paramètre TAUX_RET_SAL, valeur 6 %, du 1er janvier 2025 au 30 juin 2026, source : texte X.
- Pays SN, paramètre TAUX_RET_SAL, valeur 6,5 %, à partir du 1er juillet 2026, source : texte Y.

Le moteur choisit automatiquement la valeur en vigueur à la date de la période de paie. Avantages :

- Une mise à jour réglementaire se prépare à l''avance, sans attendre le jour J.
- Un rappel de salaire sur une période antérieure se recalcule avec les règles de l''époque.
- Un contrôleur peut vérifier quelle règle a été appliquée et pourquoi.

Le même principe vaut pour les règles de droit du travail : si le nouveau Code du travail sénégalais en projet est adopté, les nouvelles règles seront ajoutées avec leur date d''effet, sans effacer les anciennes.

## Les autres principes de conception

- La traçabilité : chaque modification de paramètre est enregistrée (auteur, date, ancienne et nouvelle valeur, justification).
- La séparation des droits : celui qui modifie un paramètre n''est pas celui qui le valide.
- La localisation : libellés de bulletin, mentions obligatoires et formats de déclaration propres à chaque pays.
- Le multi-devises : le FCFA pour les pays de l''UEMOA, mais aussi d''autres monnaies si le groupe s''étend (Ghana, Nigeria, Guinée).
- La protection des données : accès limité par pays et par rôle, hébergement et transferts conformes aux lois nationales.

## Méthode : déployer un nouveau pays

- Étape 1 : collecter les règles (tableau comparatif sourcé de la leçon précédente).
- Étape 2 : rédiger les spécifications des rubriques (formule, assiette, ordre de calcul).
- Étape 3 : paramétrer dans un environnement de test.
- Étape 4 : constituer un jeu de cas tests : salarié simple, cadre au-dessus des plafonds, temps partiel, entrée et sortie en cours de mois, absences, heures supplémentaires.
- Étape 5 : calculer les résultats attendus indépendamment (à la main ou avec un tableur validé par un expert local).
- Étape 6 : effectuer une paie en parallèle pendant un à trois mois avec l''ancien système et analyser les écarts.
- Étape 7 : basculer en production et documenter.

## Exemple de test de non-régression (valeurs fictives)

Un cas test « cadre Dakar » a un brut soumis de 900 000 FCFA. Avec un plafond fictif de retraite de 600 000 FCFA et un taux salarial fictif de 6 %, le résultat attendu est 600 000 × 6 % = 36 000 FCFA. Après une mise à jour du logiciel, le moteur affiche 54 000 FCFA, soit 900 000 × 6 % : le plafond n''est plus appliqué. Le test détecte l''anomalie avant qu''elle ne touche les vrais bulletins.

## Points clés

- Séparer le moteur (code) des règles (données).
- Versionner chaque paramètre avec des dates d''effet et une source.
- Tracer, séparer les droits, localiser, protéger les données.
- Tester systématiquement avec des cas types et une paie parallèle.

## Exercices

- Exercice 1 : Expliquez en deux phrases pourquoi on ne doit pas écrire les taux directement dans le code du logiciel.
- Exercice 2 : Un taux fictif passe de 6 % à 6,5 % le 1er juillet. On recalcule en août un rappel portant sur mai. Quel taux s''applique ?
- Exercice 3 : Proposez quatre cas tests pour un nouveau pays.
- Exercice 4 : Avec un plafond fictif de 600 000 FCFA et un taux fictif de 6,5 %, calculez la cotisation d''un brut soumis de 450 000 FCFA puis de 750 000 FCFA.

## Corrigé

- Exercice 1 : Les taux changent régulièrement et diffèrent selon les pays ; les coder en dur obligerait à modifier et redéployer le programme à chaque changement, avec un risque d''erreur. Stockés en données datées, ils se mettent à jour sans toucher au moteur et restent traçables.
- Exercice 2 : Le taux en vigueur en mai, soit 6 %, puisque le rappel concerne une période antérieure au changement.
- Exercice 3 : Salarié simple sous les plafonds ; cadre au-dessus des plafonds ; entrée en cours de mois ; sortie avec solde de tout compte ; temps partiel ; heures supplémentaires ; absence non rémunérée. Quatre suffisent.
- Exercice 4 : 450 000 × 6,5 % = 29 250 FCFA. Pour 750 000, la base est plafonnée : 600 000 × 6,5 % = 39 000 FCFA.', 'texte', 50, false, 30
from public.courses c where c.slug = 'formation-paie-uemoa'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Paramétrer un logiciel de paie multi-pays : le moteur de règles versionné');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Mobilité internationale : missions, détachement et expatriation', '## Objectifs de la leçon

- Distinguer les situations de mobilité : mission, détachement, expatriation, contrat local.
- Comprendre les principes qui déterminent le droit du travail, la sécurité sociale et l''impôt applicables.
- Construire une politique de mobilité et un dossier de mobilité.

## Les différentes situations de mobilité

- La mission de courte durée : le salarié se rend quelques jours ou semaines dans un autre pays, puis revient. Son contrat et sa paie restent inchangés ; seuls les frais de déplacement sont pris en charge.
- Le détachement : le salarié travaille temporairement dans un autre pays pour le compte de son employeur d''origine, avec l''intention de revenir. Le lien avec l''employeur d''origine est maintenu.
- L''expatriation : le salarié est envoyé pour une longue durée, souvent avec un contrat ou un avenant spécifique, et il est généralement rattaché à la sécurité sociale du pays d''accueil, sauf exception.
- Le contrat local : le salarié est recruté directement par la filiale du pays d''accueil, selon le droit local, sans lien de paie avec la maison mère.

La qualification exacte dépend des faits (durée, intention de retour, lien de subordination, lieu de paiement) et des textes applicables : il ne suffit pas d''écrire « détachement » sur un document.

## Les trois questions juridiques

Pour chaque mobilité, on traite trois questions séparément.

Le droit du travail : le contrat peut prévoir la loi applicable, mais certaines règles impératives du pays où le travail est exécuté s''appliquent toujours (sécurité, durée du travail, salaire minimum). Les formalités locales d''emploi des étrangers, comme une autorisation ou un visa de contrat, doivent être vérifiées ; la libre circulation dans l''espace CEDEAO facilite le séjour, mais ne supprime pas toutes les formalités d''emploi.

La sécurité sociale : le principe est l''affiliation au régime du pays où le travail est exercé. Des conventions bilatérales ou multilatérales (dans le cadre de la CEDEAO ou de la CIPRES par exemple) peuvent permettre au salarié détaché de rester affilié au régime d''origine pendant une durée limitée, et organiser la totalisation des périodes pour la retraite. Leur application dépend des ratifications et des procédures administratives : il faut obtenir les formulaires ou attestations requis avant le départ.

L''impôt sur le revenu : il dépend de la résidence fiscale du salarié et du lieu d''exercice de l''activité. Une convention fiscale entre les deux pays (les États de l''UEMOA disposent d''un dispositif communautaire de non double imposition, dont l''application doit être vérifiée au cas par cas) peut répartir le droit d''imposer. Sans convention, le risque de double imposition est réel.

## La politique de mobilité

Une entreprise qui envoie régulièrement du personnel à l''étranger doit formaliser une politique de mobilité :

- Les critères de choix entre mission, détachement, expatriation et contrat local.
- Les éléments de rémunération : salaire de référence, prime de mobilité ou d''expatriation, prise en charge du logement, de la scolarité des enfants, des billets de retour, de l''assurance santé.
- Le principe d''égalisation fiscale éventuel : l''entreprise garantit au salarié un net équivalent à celui qu''il aurait eu dans son pays, en prenant en charge le surcoût fiscal.
- Les conditions de retour et de réintégration.

## Méthode : le dossier de mobilité en sept points

- Point 1 : qualifier la situation (durée, intention de retour, employeur).
- Point 2 : rédiger l''avenant ou le contrat (lieu, durée, rémunération, loi applicable).
- Point 3 : déterminer le régime de sécurité sociale et obtenir les attestations.
- Point 4 : analyser la situation fiscale avec un conseil si nécessaire.
- Point 5 : accomplir les formalités d''immigration et d''emploi.
- Point 6 : paramétrer la paie (pays de paie, rubriques de mobilité, éventuelle paie scindée entre deux pays).
- Point 7 : planifier le suivi (dates d''échéance du détachement, renouvellements, retour).

## Exemple chiffré (taux fictifs pour l''exemple)

Rokhaya, ingénieure à Dakar, salaire de base 800 000 FCFA, part 18 mois à Abidjan pour ouvrir une filiale. La politique prévoit une prime de mobilité de 20 % du salaire de base et la prise en charge d''un logement de 350 000 FCFA par mois. Le budget mensuel de rémunération directe est donc : 800 000 + 160 000 = 960 000 FCFA, plus le logement de 350 000 FCFA, soit 1 310 000 FCFA. Si l''on ajoute des charges patronales fictives de 18 % sur la rémunération soumise (on suppose ici, à titre fictif, que le logement est un avantage soumis), le coût mensuel est 1 310 000 × 1,18 = 1 545 800 FCFA. Sur 18 mois : 27 824 400 FCFA, hors billets d''avion et frais d''installation. Le traitement réel du logement et des cotisations dépendra du pays d''affiliation et des textes en vigueur.

## Points clés

- Mission, détachement, expatriation et contrat local sont des situations différentes.
- Droit du travail, sécurité sociale et impôt se traitent séparément.
- Les conventions de sécurité sociale et fiscales doivent être vérifiées et activées avant le départ.
- Une politique de mobilité écrite garantit l''équité et la maîtrise des coûts.

## Exercices

- Exercice 1 : Différenciez détachement et contrat local.
- Exercice 2 : Pourquoi faut-il obtenir les attestations de sécurité sociale avant le départ ?
- Exercice 3 : Reprenez l''exemple de Rokhaya avec une prime de 15 % et un logement de 300 000 FCFA. Calculez le coût mensuel.
- Exercice 4 : Qu''est-ce que l''égalisation fiscale ?

## Corrigé

- Exercice 1 : En détachement, le salarié reste lié à son employeur d''origine et travaille temporairement à l''étranger avec intention de retour. En contrat local, il est employé directement par l''entité du pays d''accueil, selon le droit local.
- Exercice 2 : Sans attestation, le salarié risque d''être affilié dans les deux pays (double cotisation) ou de perdre des droits ; les organismes du pays d''accueil peuvent exiger les cotisations locales.
- Exercice 3 : Prime : 800 000 × 15 % = 120 000. Total : 800 000 + 120 000 + 300 000 = 1 220 000. Coût : 1 220 000 × 1,18 = 1 439 600 FCFA par mois (hypothèses fictives).
- Exercice 4 : Un mécanisme par lequel l''employeur garantit au salarié mobile un revenu net équivalent à celui qu''il aurait perçu dans son pays d''origine, en prenant en charge la différence d''impôt.', 'texte', 50, false, 40
from public.courses c where c.slug = 'formation-paie-uemoa'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Mobilité internationale : missions, détachement et expatriation');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Consolidation et reporting RH multi-pays', '## Objectifs de la leçon

- Consolider les données de paie et de personnel de plusieurs pays.
- Choisir et calculer des indicateurs RH pertinents.
- Construire un reporting fiable, comparable et utile à la direction.

## Pourquoi consolider

La direction d''un groupe veut répondre à des questions simples : combien de personnes employons-nous ? Combien nous coûte notre masse salariale ? Où se situent les risques (absentéisme, départs, écarts de salaires) ? Chaque filiale produit déjà ses données, mais avec ses propres définitions, ses codes et parfois sa monnaie. Consolider, c''est rendre ces données comparables et les additionner sans erreur.

## Harmoniser avant d''additionner

- Le référentiel des entités : chaque société, établissement et pays a un code unique.
- Le référentiel des emplois : une nomenclature commune de métiers et de niveaux (par exemple cadre, agent de maîtrise, employé, ouvrier), avec une table de correspondance vers les classifications conventionnelles locales.
- Le plan de rubriques de reporting : salaire de base, primes, heures supplémentaires, avantages, charges patronales, regroupés de la même façon dans tous les pays.
- Les définitions des indicateurs : un « effectif » doit vouloir dire la même chose partout.
- La devise : les pays de l''UEMOA sont en FCFA ; pour une filiale hors zone, on convertit avec un taux défini (taux moyen du mois pour les charges, taux de clôture pour les soldes), conformément aux règles comptables du groupe.
- Le plan comptable : le SYSCOHADA facilite l''alignement des comptes de charges de personnel entre pays membres de l''OHADA.

## Les indicateurs essentiels

- Effectif au dernier jour : nombre de salariés sous contrat à une date.
- Effectif moyen : moyenne des effectifs de fin de mois sur la période.
- Équivalent temps plein (ETP) : un salarié à mi-temps compte pour 0,5.
- Masse salariale brute et coût total employeur (brut plus charges patronales).
- Coût moyen par ETP : coût total / ETP moyen.
- Taux de rotation : (nombre de départs sur la période / effectif moyen) × 100.
- Taux d''absentéisme : (heures d''absence / heures théoriques de travail) × 100.
- Part des heures supplémentaires : (coût des heures supplémentaires / masse salariale brute) × 100.
- Répartition femmes-hommes par niveau et écart de rémunération moyen.

## Méthode : le cycle de reporting mensuel

- Étape 1 : chaque filiale clôture sa paie et transmet un fichier normalisé (gabarit unique) avant une date fixe.
- Étape 2 : contrôles automatiques : présence de toutes les entités, totaux égaux au journal de paie local, variations anormales.
- Étape 3 : conversion des devises si nécessaire.
- Étape 4 : agrégation et calcul des indicateurs.
- Étape 5 : analyse et commentaires (expliquer chaque écart significatif).
- Étape 6 : diffusion d''un tableau de bord synthétique, avec accès restreint aux données individuelles.

## Exemple chiffré

Un groupe de services présent dans trois pays de l''UEMOA présente pour le mois de mars (toutes données en FCFA) :

- Filiale Sénégal : 120 ETP, coût total 54 000 000.
- Filiale Côte d''Ivoire : 80 ETP, coût total 40 000 000.
- Filiale Mali : 50 ETP, coût total 17 500 000.

Total : 250 ETP et 111 500 000 FCFA. Coût moyen par ETP : 111 500 000 / 250 = 446 000 FCFA. Par filiale : Sénégal 450 000, Côte d''Ivoire 500 000, Mali 350 000. L''écart s''explique peut-être par la structure des emplois (plus de cadres à Abidjan) ou par des niveaux de charges différents : l''analyse doit le vérifier avant toute conclusion.

Sur le premier trimestre, le Sénégal a enregistré 9 départs pour un effectif moyen de 120 : taux de rotation trimestriel = 9 / 120 × 100 = 7,5 %.

## Qualité et confidentialité

Un indicateur faux est pire qu''une absence d''indicateur. Il faut documenter chaque définition, rapprocher systématiquement les totaux du reporting avec les journaux de paie et la comptabilité, et limiter l''accès aux données nominatives. Les lois nationales sur la protection des données personnelles s''appliquent aussi aux transferts de données entre filiales.

## Points clés

- Harmoniser les référentiels avant d''additionner.
- Définir précisément chaque indicateur et le calculer de la même façon partout.
- Rapprocher le reporting des journaux de paie.
- Commenter les écarts au lieu de se contenter de chiffres.

## Exercices

- Exercice 1 : Une filiale compte 40 salariés à temps plein et 10 à mi-temps. Calculez l''effectif et l''ETP.
- Exercice 2 : Un groupe a 6 départs sur l''année pour un effectif moyen de 75. Calculez le taux de rotation.
- Exercice 3 : 1 200 heures d''absence pour 60 000 heures théoriques. Calculez le taux d''absentéisme.
- Exercice 4 : Pourquoi un coût moyen par ETP plus élevé dans une filiale ne prouve-t-il pas que ses salaires sont trop élevés ?

## Corrigé

- Exercice 1 : Effectif : 50 salariés. ETP : 40 + 10 × 0,5 = 45.
- Exercice 2 : 6 / 75 × 100 = 8 %.
- Exercice 3 : 1 200 / 60 000 × 100 = 2 %.
- Exercice 4 : Le coût moyen dépend de la structure des emplois (proportion de cadres), de l''ancienneté, des charges patronales locales, des primes conventionnelles obligatoires et de la mobilité (expatriés). Il faut comparer à emploi et niveau équivalents.', 'texte', 45, false, 50
from public.courses c where c.slug = 'formation-paie-uemoa'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Consolidation et reporting RH multi-pays');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : piloter la paie d''un groupe dans trois pays de l''UEMOA', '## Fiche du cours vidéo

- Durée : 1h30.
- Titre de la séance : piloter la paie d''un groupe dans trois pays de l''UEMOA.
- Objectifs : appliquer la grille « régional ou national » ; concevoir une table de paramètres versionnée ; traiter un cas de détachement ; produire un reporting consolidé commenté.
- Matériel : diaporama, tableau blanc, tableur partagé, fiche de cas « Groupe Teranga Services » remise aux participants.
- Prérequis : leçons 1 à 5 de la formation.
- Avertissement : tous les taux et plafonds utilisés sont des taux fictifs pour l''exemple. Vérifiez toujours le texte officiel en vigueur dans chaque pays.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture

Texte du formateur : « Bonjour et bienvenue. Aujourd''hui, vous êtes le nouveau responsable paie d''un groupe fictif, Teranga Services, basé à Dakar, avec des filiales à Abidjan et à Bamako. Votre directeur général vous a confié trois missions pour les quatre-vingt-dix prochaines minutes : comprendre ce qui est commun et ce qui est national, mettre de l''ordre dans le paramétrage du logiciel, et lui présenter un tableau de bord. Rappel important : tous les chiffres réglementaires de cette séance sont fictifs. »

Visuel : carte de l''Afrique de l''Ouest avec Dakar, Abidjan et Bamako.

Question : « Selon vous, qu''est-ce qui est le même dans ces trois pays pour la paie ? »

## 05:00 – 15:00 · Rappel des institutions

Texte du formateur : « Les trois pays sont membres de l''UEMOA : même monnaie, le franc CFA, même banque centrale, la BCEAO. Ils sont aussi membres de l''OHADA : même référentiel comptable, le SYSCOHADA. Ils relèvent de la CIPRES pour la supervision de leurs organismes de prévoyance. Mais attention : le Mali a quitté la CEDEAO en 2025, avec le Burkina Faso et le Niger, tout en restant dans l''UEMOA. Pour la libre circulation et les conventions de sécurité sociale CEDEAO, la situation entre le Sénégal et le Mali doit donc être vérifiée. Et surtout, chaque pays garde son code du travail, ses organismes sociaux, ses taux et son impôt sur les salaires. »

Visuel : tableau à deux colonnes « commun » et « national ».

Question : « Dans quelle colonne placez-vous le salaire minimum ? » Réponse : national.

## 15:00 – 27:00 · Atelier 1 : la grille « régional ou national »

Texte du formateur : « Je vous projette six questions posées par les filiales. Pour chacune, dites-moi si la réponse est régionale ou nationale, et où chercher. »

- « Peut-on virer les salaires de Bamako depuis une banque de Dakar ? » Cadre bancaire commun UEMOA, avec les règles de chaque banque et de chaque pays sur la paie.
- « Quel est le taux de cotisation retraite à Abidjan ? » National : textes ivoiriens et organisme compétent.
- « Dans quel compte enregistrer les charges sociales ? » Commun : SYSCOHADA.
- « Combien de jours de congés pour un salarié de Bamako ? » National : code du travail malien et convention applicable.
- « Le Sénégal change son Code du travail : cela touche-t-il Abidjan ? » Non, seulement les contrats régis par le droit sénégalais.
- « Peut-on conserver la retraite sénégalaise d''un salarié envoyé à Abidjan ? » Dépend des conventions de sécurité sociale applicables et de leur mise en œuvre.

Texte du formateur : « Vous voyez que cette grille évite la majorité des erreurs. Un réflexe : avant de répondre, identifiez le type de règle. »

## 27:00 – 40:00 · Atelier 2 : la table de paramètres versionnée

Texte du formateur : « Ouvrons le logiciel du groupe. Constat : les taux sont écrits directement dans les formules, sans date ni source. Si le Sénégal modifie un taux au 1er juillet, quelqu''un devra modifier la formule le jour même, et les rappels sur les mois précédents seront faux. Nous allons reconstruire la table. »

Visuel : tableur avec les colonnes Pays, Code paramètre, Valeur, Date début, Date fin, Source, Validé par.

Texte du formateur : « Exemple fictif : SN, TAUX_RET_SAL, 6 %, du 1er janvier 2025 au 30 juin 2026 ; puis SN, TAUX_RET_SAL, 6,5 %, à partir du 1er juillet 2026. CI, TAUX_RET_SAL, 6,3 %, à partir du 1er janvier 2025. ML, TAUX_RET_SAL, 3,6 %, à partir du 1er janvier 2025. Toutes ces valeurs sont fictives. La formule de la rubrique devient : minimum entre brut soumis et plafond du pays à la date, multiplié par le taux du pays à la date. »

Question : « Un rappel de salaire calculé en août pour le mois de mai : quel taux sénégalais ? » Réponse : 6 %, le taux en vigueur en mai.

## 40:00 – 45:00 · Atelier 2 bis : les tests

Texte du formateur : « Une table de paramètres ne vaut que si elle est testée. Nous créons trois cas tests par pays : un salarié sous le plafond, un cadre au-dessus, et une entrée en cours de mois. Pour le cadre dakarois à 900 000 FCFA de brut soumis, avec un plafond fictif de 600 000 FCFA et un taux de 6 %, le résultat attendu est 36 000 FCFA. Si le logiciel affiche 54 000 FCFA, le plafond a sauté. »

## 45:00 – 52:00 · Pause interactive et quiz

Texte du formateur : « Pause active. Trois questions, trente secondes chacune. »

- Question 1 : L''OHADA a-t-elle adopté un Acte uniforme sur le droit du travail ? Réponse : non, des travaux ont eu lieu, mais le droit du travail reste national.
- Question 2 : Pourquoi stocker une date de début pour chaque taux ? Réponse : pour appliquer automatiquement la bonne valeur selon la période de paie et pouvoir recalculer le passé.
- Question 3 : Un mi-temps compte pour combien d''ETP ? Réponse : 0,5.

« Prenez deux minutes pour vous étirer, puis nous passons au cas de mobilité. »

## 52:00 – 1:05:00 · Atelier 3 : le détachement de Cheikh

Texte du formateur : « Cheikh, chef de projet à Dakar, salaire de base 700 000 FCFA, part douze mois à Abidjan pour superviser l''installation d''un système informatique. Il reviendra à Dakar. Appliquons le dossier de mobilité. Qualification : intention de retour, employeur d''origine maintenu, durée limitée, c''est a priori un détachement. Contrat : un avenant précisant la durée, le lieu, la rémunération et la loi applicable. Sécurité sociale : vérifier si une convention permet le maintien au régime sénégalais ; si oui, obtenir l''attestation avant le départ ; sinon, affiliation en Côte d''Ivoire. Impôt : analyser la résidence fiscale et le dispositif de non double imposition entre États de l''UEMOA. Formalités : vérifier les démarches d''emploi en Côte d''Ivoire. »

Texte du formateur : « Chiffrons avec des hypothèses fictives : prime de détachement de 20 %, soit 140 000 FCFA ; logement pris en charge 300 000 FCFA. Rémunération mensuelle : 700 000 + 140 000 + 300 000 = 1 140 000 FCFA. Avec des charges patronales fictives de 18 % sur l''ensemble : 1 140 000 × 1,18 = 1 345 200 FCFA par mois, soit 16 142 400 FCFA sur douze mois, hors voyages. »

Visuel : fiche de mobilité de Cheikh remplie au fur et à mesure.

Question : « Que se passe-t-il si l''on oublie l''attestation de sécurité sociale ? » Réponse : risque de double cotisation ou de redressement par l''organisme ivoirien.

## 1:05:00 – 1:18:00 · Atelier 4 : le reporting consolidé

Texte du formateur : « Passons au tableau de bord. Les trois filiales envoient leurs données de mars en FCFA. Sénégal : 120 ETP, coût total 54 000 000. Côte d''Ivoire : 80 ETP, 40 000 000. Mali : 50 ETP, 17 500 000. Total : 250 ETP et 111 500 000 FCFA, soit un coût moyen de 446 000 FCFA par ETP. Par filiale : 450 000 à Dakar, 500 000 à Abidjan, 350 000 à Bamako. »

« Le directeur général demande : "Abidjan paie-t-il trop cher ?" Votre réponse professionnelle : "Pas forcément. Je vérifie la structure des emplois, les charges patronales locales, la présence d''un expatrié comme Cheikh, et les primes conventionnelles obligatoires avant de conclure." »

Visuel : graphique en barres du coût moyen par ETP par filiale, avec une zone de commentaire.

Question : « Avec 9 départs au trimestre pour 120 ETP moyens à Dakar, quel est le taux de rotation trimestriel ? » Réponse : 7,5 %.

## 1:18:00 – 1:24:00 · Gouvernance et veille

Texte du formateur : « Dernier point : la gouvernance. Désignez un correspondant réglementaire par pays, abonnez-vous aux publications officielles, tenez un calendrier des changements prévisibles, par exemple les lois de finances et, au Sénégal, l''éventuelle entrée en vigueur du nouveau Code du travail en projet. Toute modification de paramètre passe par la règle des quatre yeux : une personne saisit, une autre valide. »

## 1:24:00 – 1:30:00 · Synthèse et évaluation finale

Texte du formateur : « Retenons quatre idées : régional pour la monnaie et la comptabilité, national pour le travail, la protection sociale et l''impôt ; des paramètres datés et sourcés ; des mobilités qualifiées et préparées ; un reporting harmonisé et commenté. Évaluation finale. »

- Question 1 : Citez deux domaines harmonisés au niveau régional utiles à la paie. Réponse : la monnaie et le cadre bancaire (UEMOA, BCEAO) et la comptabilité (SYSCOHADA de l''OHADA).
- Question 2 : Pourquoi le Sénégal et la Côte d''Ivoire ont-ils des cotisations différentes alors qu''ils partagent la même monnaie ? Réponse : parce que la sécurité sociale relève de chaque État, avec ses organismes, taux et plafonds.
- Question 3 : Avec un plafond fictif de 600 000 FCFA et un taux fictif de 6,5 %, calculez la cotisation sur 800 000 FCFA. Réponse : 600 000 × 6,5 % = 39 000 FCFA.
- Question 4 : Quelles sont les trois questions juridiques d''une mobilité ? Réponse : droit du travail applicable, régime de sécurité sociale, imposition du revenu.
- Question 5 : Comment calcule-t-on le coût moyen par ETP ? Réponse : coût total employeur divisé par le nombre d''ETP.

« Merci à tous. Pour aller plus loin, construisez la table de paramètres de votre propre entreprise, avec une colonne source remplie pour chaque ligne. »', 'video', 90, false, 60
from public.courses c where c.slug = 'formation-paie-uemoa'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : piloter la paie d''un groupe dans trois pays de l''UEMOA');

-- Cours : Français 5e : grammaire, lecture et écriture du récit
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'francais-5e', (select id from public.levels where name = '5e'), null, 'Français', 'Français 5e : grammaire, lecture et écriture du récit', 'Ce cours de français de 5e consolide la grammaire (nature et fonction), la conjugaison des temps du récit et l''orthographe, puis entraîne à la lecture méthodique et à la rédaction d''un récit. Il s''adresse aux élèves de 5e et à ceux qui veulent consolider leurs bases. Prérequis : savoir lire couramment et connaître les notions de 6e (classes de mots, présent).', true, 20
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Grammaire : nature et fonction des mots', '## Objectifs de la leçon

- Identifier la nature (classe grammaticale) des mots d''une phrase.
- Identifier la fonction des mots et des groupes de mots.
- Ne plus confondre nature et fonction.

## Nature et fonction : la différence

La nature d''un mot, c''est ce qu''il est, sa « carte d''identité ». Elle ne change pas, quelle que soit la phrase : on la trouve dans le dictionnaire. Le mot « baobab » est toujours un nom commun.

La fonction d''un mot, c''est le rôle qu''il joue dans une phrase donnée. Elle change selon la phrase. Dans « Le baobab domine le village », « le baobab » est sujet ; dans « Les enfants admirent le baobab », il est complément d''objet direct.

Image utile : une personne est toujours la même personne (nature), mais elle peut être tour à tour élève, capitaine de l''équipe ou grand frère (fonctions).

## Les principales natures

Les mots variables (ils changent de forme) :
- Le nom : commun (marché, pirogue) ou propre (Ziguinchor, Aminata).
- Le déterminant : article (le, une, des), possessif (mon, leur), démonstratif (ce, cette), indéfini (quelques, chaque), numéral (deux, cent), interrogatif (quel).
- L''adjectif qualificatif : il précise le nom (une pirogue colorée).
- Le pronom : il remplace un nom ou un groupe nominal : personnel (il, les, lui), possessif (le mien), démonstratif (celui-ci), relatif (qui, que, dont, où).
- Le verbe : il exprime une action ou un état et se conjugue.

Les mots invariables :
- L''adverbe : il modifie le sens d''un verbe, d''un adjectif ou d''un autre adverbe (vite, très, hier, ne… pas).
- La préposition : à, de, pour, avec, sans, dans, sur, par, vers.
- La conjonction de coordination : mais, ou, et, donc, or, ni, car.
- La conjonction de subordination : que, quand, comme, si, lorsque, parce que.
- L''interjection : ah ! oh ! hélas !

## Les principales fonctions

Autour du verbe :
- Le sujet : il fait ou subit l''action et commande l''accord du verbe. On le trouve avec la question « Qui est-ce qui ? » ou « Qu''est-ce qui ? » posée avant le verbe.
- Le complément d''objet direct (COD) : construit sans préposition. Question : verbe + « qui ? » ou « quoi ? ». Exemple : Le pêcheur répare son filet.
- Le complément d''objet indirect (COI) : introduit par une préposition (à, de). Exemple : Il parle à son fils.
- L''attribut du sujet : après un verbe d''état (être, paraître, sembler, devenir, demeurer, rester, avoir l''air). Exemple : La mer semble calme.
- Les compléments circonstanciels (CC) : ils indiquent le lieu, le temps, la manière, la cause, le but… On peut souvent les déplacer ou les supprimer. Exemple : Ce matin, à Mbour, les pirogues sont rentrées rapidement.

Autour du nom :
- L''épithète : adjectif placé directement à côté du nom (une pirogue neuve).
- Le complément du nom : groupe introduit par une préposition qui complète un nom (le filet du pêcheur).
- L''apposition : mot ou groupe séparé du nom par une virgule (Dakar, capitale du Sénégal, est une presqu''île).

## Méthode d''analyse

Pour analyser un mot, on donne toujours sa nature puis sa fonction.
- Trouver le verbe conjugué et son sujet.
- Poser les questions « quoi ? », « à qui ? », « de quoi ? » pour les compléments d''objet.
- Tester la suppression et le déplacement pour les compléments circonstanciels.
- Repérer les adjectifs et les compléments du nom autour de chaque nom.

## Exemple d''analyse complète

Phrase : « Hier, la vieille Coumba racontait une histoire merveilleuse aux enfants du quartier. »

- « Hier » : adverbe, complément circonstanciel de temps.
- « la vieille Coumba » : groupe nominal, sujet du verbe « racontait ».
- « vieille » : adjectif qualificatif, épithète du nom Coumba.
- « racontait » : verbe raconter à l''imparfait de l''indicatif.
- « une histoire merveilleuse » : groupe nominal, COD du verbe « racontait ».
- « merveilleuse » : adjectif qualificatif, épithète de « histoire ».
- « aux enfants du quartier » : groupe nominal prépositionnel, COI (complément d''objet second) du verbe « racontait ».
- « du quartier » : groupe nominal prépositionnel, complément du nom « enfants ».

## Points clés

- Nature = identité fixe ; fonction = rôle variable dans la phrase.
- Le sujet commande l''accord du verbe.
- COD sans préposition ; COI avec préposition.
- L''attribut suit un verbe d''état ; l''épithète est collée au nom.
- Le CC se déplace et se supprime souvent.

## Exercices

Exercice 1 : Donner la nature des mots élèves, studieux, réussissent, souvent et leurs dans la phrase : « Les élèves studieux réussissent souvent leurs examens. ».

Exercice 2 : Donner la fonction des groupes : « Le soir, mon grand-père écoute la radio dans la cour. »

Exercice 3 : Dans les phrases suivantes, « calme » est-il épithète ou attribut ? a) La mer est calme. b) Nous aimons cette mer calme.

Exercice 4 : Souligner le COD ou le COI : a) Awa téléphone à sa tante. b) Le commerçant vend des tissus. c) Je me souviens de cette fête.

Exercice 5 : Analyser (nature et fonction) le mot « Thiès » dans : a) Thiès est une ville du Sénégal. b) Nous visitons Thiès.

## Corrigé

Exercice 1 : élèves : nom commun ; studieux : adjectif qualificatif ; réussissent : verbe ; souvent : adverbe ; leurs : déterminant possessif.

Exercice 2 : « Le soir » : CC de temps ; « mon grand-père » : sujet du verbe écoute ; « la radio » : COD du verbe écoute ; « dans la cour » : CC de lieu.

Exercice 3 : a) attribut du sujet « la mer » (après le verbe d''état être). b) épithète du nom « mer ».

Exercice 4 : a) « à sa tante » : COI. b) « des tissus » : COD. c) « de cette fête » : COI (se souvenir de quelque chose).

Exercice 5 : a) nom propre, sujet du verbe « est ». b) nom propre, COD du verbe « visitons ». La nature ne change pas, la fonction change.', 'texte', 45, true, 10
from public.courses c where c.slug = 'francais-5e'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Grammaire : nature et fonction des mots');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Conjugaison : les temps de l''indicatif et du récit', '## Objectifs de la leçon

- Identifier le radical et la terminaison d''un verbe.
- Conjuguer au présent, à l''imparfait, au passé simple, au futur et au passé composé de l''indicatif.
- Choisir le bon temps dans un récit.

## Rappels : les trois groupes

- 1er groupe : verbes en -er (sauf aller) : chanter, danser, pêcher.
- 2e groupe : verbes en -ir qui font -issons à la 1re personne du pluriel du présent : finir (nous finissons), grandir, choisir.
- 3e groupe : tous les autres : aller, prendre, venir, voir, faire, partir (nous partons), dormir…

Un verbe conjugué comprend un radical (qui porte le sens) et une terminaison (qui indique la personne, le temps et le mode). Dans « nous chantions », le radical est « chant- » et la terminaison « -ions ».

## Le présent de l''indicatif

- 1er groupe : -e, -es, -e, -ons, -ez, -ent. Je chante, tu chantes, il chante, nous chantons, vous chantez, ils chantent.
- 2e groupe : -is, -is, -it, -issons, -issez, -issent. Je finis… nous finissons, ils finissent.
- 3e groupe : souvent -s, -s, -t (ou -d), -ons, -ez, -ent. Je prends, tu prends, il prend, nous prenons, vous prenez, ils prennent.

Verbes à connaître par cœur : être (je suis, nous sommes, ils sont), avoir (j''ai, nous avons, ils ont), aller (je vais, nous allons, ils vont), faire (je fais, vous faites, ils font).

## L''imparfait

Formation : radical de la 1re personne du pluriel du présent + -ais, -ais, -ait, -ions, -iez, -aient. Nous finissons → je finissais. Nous faisons → je faisais. Seule exception : être → j''étais.

Emplois : description, décor, action habituelle ou qui dure dans le passé. « Chaque soir, les femmes pilaient le mil. »

## Le passé simple

C''est le temps des actions de premier plan dans un récit écrit : actions ponctuelles, qui se succèdent.

- 1er groupe : -ai, -as, -a, -âmes, -âtes, -èrent. Il chanta, ils chantèrent.
- 2e groupe : -is, -is, -it, -îmes, -îtes, -irent. Il finit, nous finîmes.
- 3e groupe : en -is (prendre : il prit ; faire : il fit ; voir : il vit), en -us (être : il fut ; avoir : il eut ; vouloir : il voulut), ou en -ins (venir : il vint ; tenir : il tint).

Attention : à la 3e personne du singulier, le 1er groupe s''écrit sans -t (il chanta), alors que les autres groupes ont un -t (il finit, il prit, il vint).

## Le futur simple

Formation : infinitif + -ai, -as, -a, -ons, -ez, -ont. Je chanterai, tu finiras. Pour les verbes en -re, on enlève le e : prendre → je prendrai.

Futurs irréguliers : être → je serai ; avoir → j''aurai ; aller → j''irai ; faire → je ferai ; venir → je viendrai ; voir → je verrai ; pouvoir → je pourrai ; vouloir → je voudrai.

## Le passé composé

Formation : auxiliaire avoir ou être au présent + participe passé. J''ai mangé ; elle est partie ; nous avons pris.

On emploie être avec la plupart des verbes de mouvement ou de changement d''état (aller, venir, partir, arriver, entrer, sortir, naître, mourir, rester, tomber…) et avec les verbes pronominaux. Le passé composé s''utilise surtout à l''oral, dans les dialogues et les textes au présent.

## Méthode : choisir le temps dans un récit au passé

- Le décor, les descriptions, les habitudes : imparfait.
- Les actions principales qui font avancer l''histoire : passé simple.
- Les paroles rapportées au style direct : présent, passé composé, futur.

Exemple : « Le soleil se couchait sur le fleuve. Les pêcheurs rentraient lentement. Soudain, un cri retentit : une pirogue chavira près de la rive. » Les verbes « se couchait » et « rentraient » posent le décor (imparfait) ; « retentit » et « chavira » sont des actions soudaines (passé simple).

## Points clés

- Imparfait : -ais, -ais, -ait, -ions, -iez, -aient pour tous les verbes.
- Passé simple du 1er groupe : -ai, -as, -a, -âmes, -âtes, -èrent.
- Futur : on entend presque toujours le r de l''infinitif.
- Récit : imparfait pour l''arrière-plan, passé simple pour le premier plan.

## Exercices

Exercice 1 : Conjuguer à l''imparfait : nous (finir), ils (être), tu (manger), vous (faire).

Exercice 2 : Conjuguer au passé simple à la 3e personne du singulier puis du pluriel : marcher, prendre, venir, avoir.

Exercice 3 : Conjuguer au futur à la personne indiquée : je (aller), nous (voir), elle (faire), vous (pouvoir).

Exercice 4 : Mettre les verbes entre parenthèses au temps qui convient (imparfait ou passé simple) : « Il (faire) chaud. Les enfants (jouer) sous le manguier. Tout à coup, un orage (éclater). »

Exercice 5 : Mettre au passé composé : a) Elles (arriver) hier. b) Nous (prendre) le car rapide.

## Corrigé

Exercice 1 : nous finissions ; ils étaient ; tu mangeais (on garde le e pour conserver le son « j ») ; vous faisiez.

Exercice 2 : il marcha / ils marchèrent ; il prit / ils prirent ; il vint / ils vinrent ; il eut / ils eurent.

Exercice 3 : j''irai ; nous verrons ; elle fera ; vous pourrez.

Exercice 4 : « Il faisait chaud. Les enfants jouaient sous le manguier. Tout à coup, un orage éclata. » Les deux premiers verbes décrivent le décor (imparfait) ; « éclata » est une action soudaine (passé simple).

Exercice 5 : a) Elles sont arrivées hier (auxiliaire être, accord avec le sujet). b) Nous avons pris le car rapide.', 'texte', 45, false, 20
from public.courses c where c.slug = 'francais-5e'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Conjugaison : les temps de l''indicatif et du récit');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Orthographe : accords et homophones', '## Objectifs de la leçon

- Réaliser les accords dans le groupe nominal et entre le sujet et le verbe.
- Accorder le participe passé employé avec être et avec avoir.
- Distinguer les principaux homophones grammaticaux.

## Les accords dans le groupe nominal

Le déterminant et l''adjectif s''accordent en genre et en nombre avec le nom.

- Pluriel en -s : un pagne neuf → des pagnes neufs.
- Noms et adjectifs en -al : -aux (un journal national → des journaux nationaux), sauf bal, carnaval, festival, chacal, récital… (des festivals).
- Noms en -eau, -au, -eu : -x (des bateaux, des feux), sauf pneu, bleu (des pneus).
- Noms en -ou : -s, sauf bijou, caillou, chou, genou, hibou, joujou, pou qui prennent -x.
- Féminin des adjectifs : on ajoute souvent -e (grand → grande), mais attention : beau → belle, vieux → vieille, blanc → blanche, heureux → heureuse, neuf → neuve.

Quand un adjectif se rapporte à plusieurs noms dont l''un est masculin, il se met au masculin pluriel : une chemise et un pantalon blancs.

## L''accord sujet-verbe

Le verbe s''accorde avec son sujet, même quand celui-ci est éloigné ou placé après le verbe.

- « Les femmes du village préparent la fête » : le sujet est « les femmes », pas « village ».
- « Dans la cour jouent les enfants » : sujet inversé « les enfants ».
- « Ma sœur et moi partons » : deux sujets dont « moi » → 1re personne du pluriel.

## L''accord du participe passé

Avec l''auxiliaire être, le participe passé s''accorde avec le sujet : « Les filles sont parties. » « La porte est fermée. »

Avec l''auxiliaire avoir, le participe passé ne s''accorde jamais avec le sujet. Il s''accorde avec le COD seulement si celui-ci est placé avant le verbe.
- « Elles ont mangé du riz » : pas d''accord (COD après le verbe).
- « Les mangues que j''ai achetées sont mûres » : le COD « que » (mis pour « les mangues ») est placé avant, donc accord au féminin pluriel.
- « Ces lettres, je les ai lues » : COD « les » avant le verbe, accord.

Astuce pour savoir si on écrit -é ou -er : on remplace par un verbe du 3e groupe comme « vendre / vendu ». « Il a (mangé/manger) » → « il a vendu » → participe passé, donc mangé. « Il va (mangé/manger) » → « il va vendre » → infinitif, donc manger.

## Les homophones grammaticaux

Ce sont des mots qui se prononcent de la même façon mais s''écrivent différemment. On les distingue par un test de remplacement.

- a / à : « a » est le verbe avoir (on peut dire « avait »). « Il a faim » → « il avait faim ». « à » est une préposition : « Il va à Dakar ».
- et / est : « est » est le verbe être (remplaçable par « était »). « et » est une conjonction (remplaçable par « et puis »).
- son / sont : « sont » = verbe être (« étaient ») ; « son » = déterminant possessif (« mon »).
- ou / où : « ou » = « ou bien » ; « où » indique le lieu ou le temps.
- ces / ses / c''est / s''est : « ces » = démonstratif (« ces maisons-là ») ; « ses » = possessif (« les siens ») ; « c''est » = « cela est » ; « s''est » = devant un participe passé d''un verbe pronominal (« il s''est levé »).
- on / ont : « ont » = verbe avoir (« avaient ») ; « on » = pronom (remplaçable par « il »).
- leur / leurs : devant un verbe, « leur » est pronom et ne prend jamais de s (« je leur parle ») ; devant un nom, c''est un déterminant qui s''accorde (« leurs cahiers »).

## Méthode de relecture

Après avoir écrit, relisez votre texte trois fois avec un objectif à chaque lecture :
- 1re lecture : les accords sujet-verbe (entourer chaque verbe, flécher vers son sujet).
- 2e lecture : les accords dans les groupes nominaux et les participes passés.
- 3e lecture : les homophones et la ponctuation.

## Points clés

- Déterminant, nom et adjectif s''accordent ensemble.
- Participe passé avec être : accord avec le sujet. Avec avoir : accord avec le COD placé avant.
- Pour les homophones, toujours faire le test de remplacement.

## Exercices

Exercice 1 : Mettre au pluriel : un cheval rapide ; un beau bijou ; un festival national.

Exercice 2 : Compléter par a ou à, et ou est : « Fatou … partie … Kaolack … elle … emporté ses bagages. »

Exercice 3 : Accorder les participes passés : a) Les invités sont (arrivé). b) Les poissons que nous avons (pêché) sont frais. c) Mes cousines ont (préparé) le repas.

Exercice 4 : Choisir entre ces / ses / c''est / s''est : « Moussa … levé tôt. Il a pris … outils. … une belle journée pour travailler dans … champs-là. »

Exercice 5 : Écrire -é ou -er : « Nous allons visit… le musée. Hier, nous avons visit… la maison des esclaves à Gorée. »

## Corrigé

Exercice 1 : des chevaux rapides ; de beaux bijoux (devant un adjectif au pluriel, « des » devient souvent « de ») ; des festivals nationaux.

Exercice 2 : « Fatou est partie à Kaolack et elle a emporté ses bagages. » Tests : était partie ; avait emporté ; et puis elle…

Exercice 3 : a) arrivés (être, accord avec « les invités »). b) pêchés (COD « que » mis pour « les poissons », placé avant). c) préparé (COD « le repas » placé après : pas d''accord).

Exercice 4 : « Moussa s''est levé tôt. Il a pris ses outils. C''est une belle journée pour travailler dans ces champs-là. »

Exercice 5 : « Nous allons visiter (= vendre) le musée. Hier, nous avons visité (= vendu) la maison des esclaves à Gorée. »', 'texte', 45, false, 30
from public.courses c where c.slug = 'francais-5e'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Orthographe : accords et homophones');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'La lecture méthodique d''un texte', '## Objectifs de la leçon

- Connaître les étapes de la lecture méthodique.
- Repérer les indices du texte (énonciation, champs lexicaux, figures de style, temps).
- Construire une interprétation organisée autour d''axes de lecture.

## Qu''est-ce que la lecture méthodique ?

La lecture méthodique est une lecture attentive et organisée d''un texte court. Elle ne consiste pas à raconter le texte, mais à montrer comment il fonctionne et ce qu''il veut produire chez le lecteur. Elle s''appuie toujours sur des indices précis relevés dans le texte.

## Les étapes

Étape 1 : la situation du texte. Qui est l''auteur ? De quelle œuvre est tiré l''extrait ? Quel est son genre (roman, conte, poème, théâtre) ? Où se place-t-il dans l''œuvre ?

Étape 2 : les observations. On relève des indices :
- l''énonciation : qui parle ? à qui ? (pronoms je, tu, nous, il) ;
- le type de texte : narratif, descriptif, argumentatif, explicatif ;
- les temps verbaux ;
- les champs lexicaux : ensemble de mots qui se rapportent à un même thème (champ lexical de la mer : vague, pirogue, filet, rive, écume) ;
- les figures de style : comparaison (avec un outil : comme, tel que), métaphore (sans outil), personnification (une chose agit comme un humain), énumération, hyperbole (exagération), répétition ;
- la ponctuation et la structure des phrases.

Étape 3 : les hypothèses de lecture. À partir des indices, on formule une ou deux idées générales sur le sens du texte : ce sont les axes de lecture.

Étape 4 : l''interprétation. Pour chaque axe, on présente les indices et on explique ce qu''ils produisent : émotion, critique, portrait…

Étape 5 : la conclusion. On résume les axes et on donne un avis personnel argumenté ou une ouverture.

## Exemple de texte (texte rédigé pour cette leçon)

« Le fleuve dormait encore lorsque Demba poussa la pirogue dans l''eau grise. Autour de lui, le village se taisait ; seuls les coqs, comme des sentinelles fidèles, saluaient l''aube. Demba pensait à son père, parti un matin semblable et jamais revenu. La peur lui serrait le ventre, mais il pagaya avec force. Le fleuve, ce vieux compagnon, ce voleur d''hommes, l''emporta lentement vers le large. »

## Application de la méthode

Situation : extrait d''un récit à la 3e personne, au passé ; le personnage principal est un jeune pêcheur.

Observations :
- Temps : imparfait pour le décor (dormait, se taisait, pensait, serrait) ; passé simple pour les actions (poussa, pagaya, emporta).
- Personnification : « Le fleuve dormait », « le village se taisait ». La nature semble vivante.
- Comparaison : « les coqs, comme des sentinelles fidèles ».
- Métaphores en apposition : « ce vieux compagnon, ce voleur d''hommes » : le fleuve est à la fois ami et ennemi.
- Champ lexical de la peur et du deuil : peur, serrait, jamais revenu.
- Opposition introduite par « mais » : la peur / le courage.

Axes de lecture :
- Axe 1 : un décor vivant et ambigu. Les personnifications et les métaphores font du fleuve un véritable personnage, qui nourrit et qui tue.
- Axe 2 : le portrait d''un jeune homme courageux. Malgré le souvenir douloureux du père, Demba agit : le passé simple « pagaya avec force » montre sa détermination.

Conclusion possible : ce court passage met en scène le courage face à la peur héritée du passé. On peut le rapprocher des récits de pêcheurs de la Langue de Barbarie ou des contes où l''eau est une puissance mystérieuse.

## Conseils

- Toujours citer le texte entre guillemets.
- Ne jamais relever une figure de style sans expliquer son effet.
- Organiser l''interprétation en paragraphes : une idée, des citations, une explication.
- Utiliser des verbes précis : le texte « suggère », « souligne », « oppose », « met en valeur ».

## Points clés

- Situer, observer, formuler des axes, interpréter, conclure.
- Un indice n''a de valeur que s''il est expliqué.
- Les temps, l''énonciation, les champs lexicaux et les figures de style sont les principaux indices.

## Exercices

Exercice 1 : Relever dans le texte de Demba deux personnifications et expliquer leur effet.

Exercice 2 : Quelle est la différence entre une comparaison et une métaphore ? Donner un exemple de chaque tiré du texte.

Exercice 3 : Relever trois mots du champ lexical de l''eau dans le texte.

Exercice 4 : Pourquoi l''auteur utilise-t-il l''imparfait dans les deux premières phrases ?

Exercice 5 : Proposer un titre pour ce texte et le justifier en une phrase.

## Corrigé

Exercice 1 : « Le fleuve dormait » et « le village se taisait ». Ces personnifications créent une atmosphère calme et silencieuse, presque inquiétante, et donnent l''impression que la nature observe Demba.

Exercice 2 : La comparaison rapproche deux éléments à l''aide d''un outil (comme) : « les coqs, comme des sentinelles fidèles ». La métaphore les rapproche sans outil : « ce voleur d''hommes » désigne le fleuve.

Exercice 3 : fleuve, eau, pirogue, pagaya, large (pirogue et pagaya appartiennent au champ lexical de la navigation, lié à l''eau).

Exercice 4 : L''imparfait installe le décor et la situation de départ, qui servent d''arrière-plan aux actions racontées au passé simple.

Exercice 5 : Exemple : « Le courage de Demba », car le texte montre un jeune homme qui surmonte sa peur pour partir sur le fleuve. D''autres titres sont acceptés s''ils sont justifiés.', 'texte', 50, false, 40
from public.courses c where c.slug = 'francais-5e'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'La lecture méthodique d''un texte');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Expression écrite : rédiger un récit', '## Objectifs de la leçon

- Connaître le schéma narratif et les éléments d''un récit.
- Construire un récit cohérent à partir d''un sujet.
- Insérer une description et un dialogue correctement ponctués.

## Les éléments d''un récit

Un récit raconte une histoire. Il comporte :
- un narrateur : interne (« je », il participe à l''histoire) ou externe (« il », il raconte de l''extérieur) ;
- des personnages : principal (le héros), secondaires, adjuvants (qui aident), opposants (qui gênent) ;
- un cadre spatio-temporel : où et quand se passe l''histoire ;
- une intrigue organisée selon le schéma narratif.

## Le schéma narratif

- Situation initiale : présentation des personnages, du lieu, du moment. Temps : imparfait.
- Élément perturbateur (ou déclencheur) : un événement rompt l''équilibre. Souvent introduit par « un jour », « soudain ». Temps : passé simple.
- Péripéties : actions et rebondissements par lesquels le héros tente de résoudre le problème.
- Élément de résolution : l''événement qui met fin aux difficultés.
- Situation finale : nouvel équilibre, heureux ou malheureux. Parfois une morale, surtout dans le conte.

Exemple sur un conte : Situation initiale : Leuk le lièvre vivait en paix dans la brousse. Élément perturbateur : un jour, Bouki l''hyène lui vola sa réserve de mil. Péripéties : Leuk chercha des témoins, demanda conseil à la tortue, tendit un piège. Résolution : Bouki tomba dans le piège devant tous les animaux. Situation finale : Bouki fut chassée de l''assemblée et Leuk récupéra son mil. Morale : la ruse vient à bout de la force.

## Méthode pour rédiger un récit

1. Analyser le sujet : souligner les mots-clés ; repérer la personne imposée (je ou il), le temps (passé), le type d''histoire.
2. Chercher des idées au brouillon : qui ? où ? quand ? quel problème ? comment se termine l''histoire ?
3. Faire un plan en suivant le schéma narratif : une à deux phrases par étape.
4. Rédiger : un paragraphe par étape, avec des connecteurs temporels (d''abord, ensuite, puis, soudain, alors, enfin, le lendemain).
5. Relire : cohérence des temps, accords, ponctuation, homophones.

## Insérer une description

Une courte description rend le récit vivant. On utilise l''imparfait, des adjectifs précis, des comparaisons, et on fait appel aux cinq sens.

Exemple : « Le marché de Tilène bourdonnait comme une ruche. L''odeur du poisson séché se mêlait à celle des épices, et les cris des vendeuses couvraient le klaxon des cars. »

## Insérer un dialogue

Règles de présentation :
- ouvrir les guillemets au début du dialogue et les fermer à la fin ;
- aller à la ligne et mettre un tiret à chaque changement d''interlocuteur ;
- utiliser des verbes de parole variés : demander, répondre, s''écrier, murmurer, protester.

Exemple :
« Où étais-tu ? demanda la mère.
- Au terrain de foot, répondit Ousmane en baissant les yeux.
- Et tes devoirs ? »

## Exemple de sujet traité

Sujet : « Racontez une journée où vous avez aidé quelqu''un en difficulté. » (narrateur interne, au passé).

Plan :
- Situation initiale : un samedi matin, je me rendais au marché pour ma mère.
- Élément perturbateur : soudain, une vieille femme tomba en traversant la route.
- Péripéties : je l''aidai à se relever, ramassai ses légumes, arrêtai un taxi ; elle n''avait pas d''argent.
- Résolution : un commerçant que je connaissais paya la course.
- Situation finale : le lendemain, la vieille femme vint remercier ma mère ; j''avais compris la valeur de l''entraide.

## Points clés

- Cinq étapes : situation initiale, élément perturbateur, péripéties, résolution, situation finale.
- Imparfait pour le décor, passé simple pour les actions.
- Connecteurs temporels, description et dialogue rendent le récit vivant.
- Toujours faire un plan au brouillon.

## Exercices

Exercice 1 : Remettre dans l''ordre du schéma narratif : a) Enfin, le pêcheur retrouva son village. b) Un jour, une tempête emporta sa pirogue. c) Il y avait une fois un pêcheur très habile. d) Il nagea pendant des heures, lutta contre les vagues. e) Un bateau le recueillit au petit matin.

Exercice 2 : Le narrateur de la phrase « Je sentis mon cœur battre très fort » est-il interne ou externe ? Pourquoi ?

Exercice 3 : Ponctuer ce dialogue : Tu viens demanda Aïda Oui j''arrive répondit Lamine

Exercice 4 : Écrire une description de trois phrases d''une gare routière en utilisant au moins deux sens.

Exercice 5 : Rédiger le plan (cinq étapes) d''un récit sur le sujet : « Un objet perdu ».

## Corrigé

Exercice 1 : c (situation initiale) – b (élément perturbateur) – d (péripéties) – e (résolution) – a (situation finale).

Exercice 2 : Interne, car il utilise « je » et participe à l''histoire : il raconte ce qu''il ressent.

Exercice 3 :
« Tu viens ? demanda Aïda.
- Oui, j''arrive ! répondit Lamine. »

Exercice 4 : Exemple : « La gare routière grouillait de monde. Les apprentis criaient les destinations de leurs cars, et une forte odeur de carburant flottait dans l''air chaud. Sous un abri de tôle, des vendeuses proposaient des beignets encore tièdes. » (ouïe : criaient ; odorat : odeur ; toucher : air chaud, tièdes).

Exercice 5 : Exemple : Situation initiale : je rentrais de l''école avec ma montre neuve. Élément perturbateur : arrivé à la maison, je découvris qu''elle avait disparu. Péripéties : je refis le chemin, interrogeai le boutiquier et mes camarades. Résolution : le gardien de l''école l''avait trouvée et me la rendit. Situation finale : je promis d''être plus attentif et j''offris un cadeau au gardien.', 'texte', 50, false, 50
from public.courses c where c.slug = 'francais-5e'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Expression écrite : rédiger un récit');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : lire et écrire un conte', '## Fiche du cours vidéo

- Durée : 1h30.
- Thème : lire et écrire un conte, de la grammaire à la rédaction.
- Objectifs : réviser nature et fonction, utiliser les temps du récit, appliquer la lecture méthodique à un conte, rédiger un récit court sans fautes d''accord.
- Matériel : tableau ou diaporama, texte du conte projeté, cahier de brouillon, stylos de deux couleurs.
- Prérequis : leçons 1 à 5 du cours.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

« Bonjour à tous ! Aujourd''hui, nous allons travailler comme de véritables écrivains. Nous allons lire un conte, l''analyser, puis vous écrirez vous-mêmes un petit récit. Tout au long de la séance, nous réviserons la grammaire, la conjugaison et l''orthographe, car on n''écrit bien que si l''on maîtrise la langue. Préparez deux stylos de couleurs différentes : un pour écrire, un pour corriger. »

Visuel : le plan de la séance : 1. Lecture du conte. 2. Grammaire. 3. Temps du récit. 4. Pause-quiz. 5. Lecture méthodique. 6. Atelier d''écriture. 7. Orthographe. 8. Évaluation.

## 05:00 – 15:00 · Lecture du conte

Le formateur lit à voix haute le conte projeté (texte rédigé pour ce cours) :

« Il était une fois, dans un village du Saloum, une jeune fille nommée Penda qui gardait les chèvres de son père. Chaque jour, elle les menait près d''un grand baobab. Un matin, une chèvre disparut. Penda chercha partout, appela, pleura. Alors une voix grave sortit du baobab : “Si tu me donnes ta plus belle chanson, je te rendrai ta chèvre.” Penda chanta si joliment que les oiseaux se turent pour l''écouter. Le baobab ouvrit son tronc et la chèvre en sortit en bêlant. Depuis ce jour, on dit au village que celui qui partage ce qu''il a de plus beau ne perd jamais rien. »

« Première question, à l''oral : quel est le personnage principal ? Où se passe l''histoire ? Quel est le problème ? » Réponses attendues : Penda ; un village du Saloum, près d''un baobab ; la disparition d''une chèvre.

## 15:00 – 27:00 · Grammaire : nature et fonction dans le conte

« Prenons la phrase : “Chaque jour, elle les menait près d''un grand baobab.” Analysons-la ensemble. »

- « Chaque jour » : groupe nominal, complément circonstanciel de temps.
- « elle » : pronom personnel, sujet du verbe « menait ».
- « les » : pronom personnel, COD du verbe « menait » ; il remplace « les chèvres ».
- « près d''un grand baobab » : groupe prépositionnel, complément circonstanciel de lieu.
- « grand » : adjectif qualificatif, épithète de « baobab ».

« Remarquez que le mot “les” n''est pas un déterminant ici, puisqu''il est placé devant un verbe : c''est un pronom. C''est exactement la différence entre nature et fonction : il faut regarder le mot dans sa phrase. »

Question à poser : « Dans “Penda chanta si joliment”, quelle est la nature de “joliment” ? » Réponse : adverbe, il modifie le verbe chanta.

## 27:00 – 40:00 · Les temps du récit

« Relisez le conte et relevez les verbes. Mettez la vidéo en pause deux minutes. »

Correction projetée en deux colonnes. Imparfait : gardait, menait. Passé simple : disparut, chercha, appela, pleura, sortit, chanta, se turent, ouvrit, sortit. Présent : dit, partage, perd (morale, vérité générale). Futur : rendrai (paroles du baobab).

« Que remarquez-vous ? L''imparfait sert à la situation initiale et aux habitudes : “chaque jour, elle les menait”. Le passé simple fait avancer l''histoire. Le présent final exprime une vérité générale, la morale. Et dans les paroles du baobab, on trouve le présent et le futur, parce que ce sont des paroles rapportées. »

Exercice flash : conjuguer au passé simple à la 3e personne : prendre (il prit), venir (il vint), aller (il alla), finir (il finit), se taire (il se tut).

## 40:00 – 48:00 · Pause et quiz interactif

« Petite pause ! Buvez un peu d''eau, puis répondez à ce quiz. »

- Question 1 : « Les élèves ont (fini/finis) leurs devoirs. » Réponse : fini (auxiliaire avoir, COD placé après).
- Question 2 : « Elle … partie. » est ou et ? Réponse : est (était partie).
- Question 3 : Quel est le futur de « voir » à la 1re personne du singulier ? Réponse : je verrai.
- Question 4 : « La mer est calme » : fonction de « calme » ? Réponse : attribut du sujet.
- Question 5 : Quelle étape du schéma narratif commence souvent par « un jour » ? Réponse : l''élément perturbateur.

## 48:00 – 60:00 · Lecture méthodique du conte

« Appliquons maintenant la méthode de lecture méthodique. D''abord, la situation : c''est un conte, il commence par la formule “Il était une fois” et se termine par une morale. »

Observations au tableau :
- Le merveilleux : un baobab qui parle et qui ouvre son tronc.
- La personnification : le baobab est un personnage, il parle et négocie.
- L''hyperbole : « si joliment que les oiseaux se turent ».
- Le schéma narratif complet en quelques lignes.

« Quels axes de lecture pouvons-nous proposer ? Premier axe : un conte merveilleux, où la nature est vivante et magique. Deuxième axe : une leçon de générosité, exprimée dans la morale finale. Pour chaque axe, je cite le texte et j''explique l''effet produit. »

Question : « Pourquoi le baobab demande-t-il une chanson et pas de l''argent ? » Réponse attendue : le conte valorise ce qui vient du cœur, le talent et le partage, plutôt que la richesse matérielle.

## 1:00:00 – 1:15:00 · Atelier d''écriture

« À vous ! Sujet : “Imaginez la suite : un an plus tard, le baobab demande un nouveau service à Penda.” Vous avez dix minutes. Consignes : narrateur externe, récit au passé, au moins un dialogue correctement ponctué, une courte description du village. »

Le formateur montre le plan au tableau : situation initiale (Penda a grandi), élément perturbateur (la sécheresse frappe le village), péripéties (le baobab demande qu''on plante dix jeunes arbres ; les villageois hésitent), résolution (Penda convainc les anciens), situation finale (la pluie revient ; le village prend soin des arbres).

Il lit ensuite un exemple de début : « Une année passa. La saison sèche durait plus longtemps que d''habitude, et la terre craquait sous les pieds. Un soir, Penda entendit de nouveau la voix grave : “Petite, j''ai besoin de toi.” »

« Observez ce début. La première phrase, très courte, marque le passage du temps. Les deux verbes à l''imparfait, “durait” et “craquait”, installent le décor de la sécheresse ; c''est une petite description qui fait appel au toucher : on sent la terre sèche sous les pieds. Puis “un soir” introduit l''élément perturbateur au passé simple : “entendit”. Enfin, les paroles du baobab sont au présent, entre guillemets, car ce sont des paroles rapportées. Vous voyez que tout ce que nous avons révisé aujourd''hui sert directement à écrire. »

Pendant que les élèves écrivent, le formateur affiche une liste d''aide : connecteurs temporels (d''abord, ensuite, soudain, alors, le lendemain, finalement), verbes de parole (demander, répondre, s''écrier, murmurer, supplier), et rappelle de prévoir une phrase finale qui exprime une morale ou un sentiment.

## 1:15:00 – 1:22:00 · Relecture et orthographe

« Prenez votre stylo de correction. Relisez votre texte trois fois. Première lecture : flèche de chaque verbe vers son sujet. Deuxième lecture : accords des groupes nominaux et des participes passés. Troisième lecture : homophones a/à, et/est, son/sont, ces/ses. »

Exemple corrigé au tableau : « Les villageois a plantés les arbres » devient « Les villageois ont planté les arbres » : le verbe s''accorde avec « les villageois » et le participe passé avec avoir ne s''accorde pas avec le sujet.

## 1:22:00 – 1:30:00 · Synthèse et évaluation finale

« Retenons l''essentiel : la nature d''un mot est fixe, sa fonction dépend de la phrase ; le récit au passé alterne imparfait et passé simple ; la lecture méthodique s''appuie sur des indices expliqués ; un bon récit suit le schéma narratif et se relit. Voici votre évaluation finale. »

- Question 1 : Nature et fonction de « vieux » dans « Le vieux pêcheur rentre ». Réponse : adjectif qualificatif, épithète de « pêcheur ».
- Question 2 : Conjuguer « faire » à l''imparfait, 2e personne du pluriel. Réponse : vous faisiez.
- Question 3 : Accorder : « Les chansons qu''elle a (chanté) ». Réponse : chantées (COD « qu'' » mis pour « les chansons », placé avant).
- Question 4 : Quelle figure de style dans « le fleuve, ce voleur d''hommes » ? Réponse : une métaphore.
- Question 5 : Citer les cinq étapes du schéma narratif. Réponse : situation initiale, élément perturbateur, péripéties, élément de résolution, situation finale.

« Merci pour votre attention. Terminez votre récit à la maison, recopiez-le proprement et relisez-le une dernière fois à voix haute. Bon travail ! »', 'video', 90, false, 60
from public.courses c where c.slug = 'francais-5e'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : lire et écrire un conte');

-- Cours : Transport et logistique : de la commande à la livraison
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'formation-transport-logistique', (select id from public.levels where name = 'Formation professionnelle'), 'transport-logistique', 'Transport et logistique', 'Transport et logistique : de la commande à la livraison', 'Cette formation professionnelle couvre toute la chaîne logistique : flux et coûts, entreposage et gestion des stocks (méthode ABC, FIFO, inventaires), planification des tournées, documents de transport et principes des incoterms, puis indicateurs de performance. Elle s''adresse aux gérants de PME, magasiniers, responsables de parc et logisticiens d''Afrique francophone. Aucun prérequis autre que les quatre opérations et l''usage des pourcentages.', true, 30
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'La chaîne logistique : flux, acteurs et coûts', '## Objectifs de la leçon

À la fin de cette leçon, vous serez capable de définir la chaîne logistique, d''identifier ses trois types de flux, de nommer les principaux acteurs qui interviennent entre la commande et la livraison, et de calculer un coût logistique complet par unité livrée.

## Qu''est-ce que la chaîne logistique ?

La chaîne logistique (en anglais supply chain) est l''ensemble des étapes qui permettent de mettre un produit à la disposition du client, au bon endroit, au bon moment, en bonne quantité, en bon état et au meilleur coût. Elle commence chez le fournisseur de matières premières et se termine chez le consommateur final. Pour une entreprise de distribution, elle couvre l''achat, le transport d''approvisionnement, la réception, le stockage, la préparation des commandes, le transport de livraison et le service après-livraison.

On résume souvent cet objectif par les « 5 B » : bon produit, bonne quantité, bon endroit, bon moment, bon coût.

## Les trois flux

Une chaîne logistique fait circuler trois types de flux qui doivent rester synchronisés.

- Les flux physiques : ce sont les marchandises elles-mêmes, qui se déplacent du fournisseur vers le client (sacs de riz, cartons d''huile, pièces détachées).
- Les flux d''information : bons de commande, bons de livraison, factures, états de stock, messages entre le client, le commercial, le magasinier et le chauffeur.
- Les flux financiers : paiements des clients, règlements aux fournisseurs et aux transporteurs, frais de douane et de manutention.

Problème classique dans les PME : la marchandise sort mais le stock n''est pas mis à jour, ou la facture part avec des jours de retard. Résultat : ruptures « surprises » et trésorerie dégradée.

## Les acteurs

Entre la commande et la livraison, plusieurs acteurs interviennent :

- le fournisseur ou fabricant, qui produit ou vend la marchandise ;
- le transitaire et le commissionnaire en douane, qui organisent le transport international et accomplissent les formalités douanières ;
- le transporteur (maritime, routier, aérien, ferroviaire) ;
- le gestionnaire d''entrepôt, qui reçoit, stocke et prépare les commandes ;
- le distributeur (grossiste, demi-grossiste, détaillant) ;
- le client final.

Dans une petite entreprise, le gérant tient souvent plusieurs de ces rôles ; en grandissant, il faut les séparer et formaliser les procédures.

## Le coût logistique total

Le coût logistique total regroupe toutes les dépenses engagées pour faire passer la marchandise du fournisseur au client. On distingue généralement :

- le transport d''approvisionnement (amont) ;
- la manutention (chargement, déchargement) ;
- le stockage (loyer de l''entrepôt, gardiennage, assurance, pertes) ;
- le transport de distribution (aval) ;
- les frais administratifs liés à la logistique (saisie, suivi, documents).

La méthode consiste à recenser toutes ces dépenses sur une période (par exemple un mois), puis à les diviser par la quantité livrée sur la même période. On obtient un coût logistique unitaire, comparable d''un mois à l''autre.

## Exemple chiffré : un distributeur de riz à Dakar

Une entreprise de Dakar importe du riz par le port, le stocke dans un entrepôt de la zone industrielle et le distribue à des grossistes à Thiès, Kaolack et Touba. Elle livre 500 tonnes par mois. Ses coûts logistiques mensuels (chiffres fictifs) ramenés à la tonne sont :

- transport amont (port vers entrepôt) : 12 000 FCFA par tonne ;
- stockage : 3 000 FCFA par tonne ;
- manutention : 2 500 FCFA par tonne ;
- distribution vers les régions : 9 500 FCFA par tonne ;
- frais administratifs : 1 000 FCFA par tonne.

Coût logistique total par tonne : 12 000 + 3 000 + 2 500 + 9 500 + 1 000 = 28 000 FCFA.

Coût logistique mensuel : 28 000 × 500 = 14 000 000 FCFA.

Une baisse de 1 000 FCFA par tonne sur la distribution ferait économiser 500 000 FCFA par mois, soit 6 000 000 FCFA par an. On voit aussi que la distribution représente 9 500 / 28 000, soit environ 33,9 % du coût logistique : c''est un poste prioritaire à surveiller.

## Méthode : cartographier sa chaîne

Dessinez le parcours de la marchandise (port, entrepôt, dépôt, point de vente), notez pour chaque étape qui agit, quel document circule, combien de temps et combien d''argent elle consomme, puis repérez les attentes, doubles manipulations et postes de coût les plus lourds.

## Points clés

- La chaîne logistique relie le fournisseur au client final et vise les « 5 B ».
- Elle fait circuler des flux physiques, d''information et financiers qui doivent rester synchronisés.
- De nombreux acteurs interviennent : fournisseur, transitaire, transporteur, entrepôt, distributeur.
- Le coût logistique total se calcule en additionnant tous les postes puis en divisant par les quantités livrées.
- Cartographier sa chaîne permet d''identifier les postes et les étapes à améliorer.

## Exercices

Exercice 1. Classez chacun des éléments suivants dans le bon type de flux : a) un camion de ciment qui quitte l''usine ; b) un bon de livraison signé ; c) un virement au transporteur ; d) un message de confirmation de commande ; e) des cartons d''huile déchargés à l''entrepôt.

Exercice 2. Dans l''exemple du distributeur de riz, le riz est vendu en sacs de 50 kg. Calculez le coût logistique par sac.

Exercice 3. Une PME de Ziguinchor qui vend des produits d''entretien supporte en un mois : transport amont 1 800 000 FCFA, stockage 600 000 FCFA, manutention 300 000 FCFA, distribution 1 500 000 FCFA, frais administratifs 200 000 FCFA. Elle a livré 220 tonnes. Calculez le coût logistique total et le coût par tonne.

Exercice 4. Dans l''exercice 3, quel poste pèse le plus ? Calculez sa part en pourcentage du coût total.

## Corrigé

Exercice 1. a) flux physique ; b) flux d''information ; c) flux financier ; d) flux d''information ; e) flux physique.

Exercice 2. Une tonne correspond à 1 000 kg, soit 1 000 / 50 = 20 sacs. Coût par sac : 28 000 / 20 = 1 400 FCFA.

Exercice 3. Coût total : 1 800 000 + 600 000 + 300 000 + 1 500 000 + 200 000 = 4 400 000 FCFA. Coût par tonne : 4 400 000 / 220 = 20 000 FCFA.

Exercice 4. Le poste le plus lourd est le transport amont (1 800 000 FCFA). Sa part : 1 800 000 / 4 400 000 ≈ 0,409, soit environ 40,9 % du coût logistique total. C''est ce poste qu''il faut analyser en premier (choix du transporteur, regroupement des approvisionnements).', 'texte', 45, true, 10
from public.courses c where c.slug = 'formation-transport-logistique'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'La chaîne logistique : flux, acteurs et coûts');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Entreposage et gestion des stocks : ABC, FIFO et inventaires', '## Objectifs de la leçon

Savoir organiser un entrepôt, classer les articles avec la méthode ABC, valoriser et faire sortir les stocks selon la méthode FIFO, calculer un point de commande et conduire un inventaire en analysant les écarts.

## Le rôle de l''entrepôt

L''entrepôt remplit quatre fonctions : la réception (contrôle des quantités et de l''état des produits), le stockage (rangement sûr et accessible), la préparation des commandes (prélèvement des articles demandés) et l''expédition (chargement et documents). Un entrepôt bien organisé distingue physiquement ces zones : quai de réception, zone de stockage, zone de préparation, quai d''expédition.

Règles de base : chaque emplacement a une adresse (allée, rayonnage, niveau), les produits les plus demandés sont près de la préparation, et rien n''entre ni ne sort sans document.

## La méthode ABC

On ne peut pas surveiller tous les articles avec la même intensité. La méthode ABC (inspirée de la loi de Pareto) classe les articles selon leur valeur de consommation annuelle (quantité consommée × coût unitaire).

Méthode :

- calculer la valeur de consommation annuelle de chaque article ;
- classer les articles par valeur décroissante ;
- calculer le pourcentage cumulé de la valeur ;
- affecter les classes : A jusqu''à environ 80 % de la valeur cumulée, B de 80 à 95 %, C au-delà.

Exemple : un grossiste de Kaolack a 8 articles, pour une valeur totale de 100 000 000 FCFA par an.

- Riz : 48 000 000 FCFA, cumul 48 %.
- Huile : 30 000 000 FCFA, cumul 78 %.
- Sucre : 12 000 000 FCFA, cumul 90 %.
- Lait en poudre : 4 000 000 FCFA, cumul 94 %.
- Savon : 2 500 000 FCFA, cumul 96,5 %.
- Pâtes : 1 800 000 FCFA, cumul 98,3 %.
- Allumettes : 1 000 000 FCFA, cumul 99,3 %.
- Bougies : 700 000 FCFA, cumul 100 %.

Classe A : riz et huile (25 % des articles, 78 % de la valeur). Classe B : sucre et lait. Classe C : les quatre autres. Les articles A sont comptés souvent (par exemple chaque semaine) et commandés avec précision ; les C sont gérés plus simplement.

## La méthode FIFO

FIFO signifie « First In, First Out » : premier entré, premier sorti. Physiquement, on fait sortir en priorité les lots les plus anciens, ce qui évite le vieillissement des produits. Pour les produits périssables (lait, médicaments, produits alimentaires), on applique une variante, le FEFO (« First Expired, First Out ») : on sort d''abord le lot dont la date de péremption est la plus proche.

FIFO est aussi une méthode de valorisation des sorties : chaque sortie est valorisée au coût des lots les plus anciens.

Exemple : stock initial 100 sacs à 15 000 FCFA ; entrée de 200 sacs à 16 000 FCFA ; sortie de 250 sacs.

- Sortie valorisée : 100 × 15 000 + 150 × 16 000 = 1 500 000 + 2 400 000 = 3 900 000 FCFA.
- Stock restant : 50 sacs à 16 000 FCFA, soit 800 000 FCFA.

## Stock de sécurité et point de commande

Le stock de sécurité protège contre les imprévus. Le point de commande est le niveau de stock auquel il faut passer commande :

Point de commande = consommation journalière × délai de livraison (en jours) + stock de sécurité.

Exemple : consommation 40 sacs par jour, délai fournisseur 5 jours, stock de sécurité 60 sacs. Point de commande = 40 × 5 + 60 = 260 sacs. Dès que le stock descend à 260 sacs, on commande.

## Les inventaires

L''inventaire consiste à compter physiquement les stocks et à comparer avec le stock théorique (celui des fiches ou du logiciel).

- Inventaire annuel (ou intermittent) : on compte tout, en général à la clôture de l''exercice, souvent en fermant le magasin.
- Inventaire tournant : on compte une partie des articles chaque semaine, les articles A plus souvent.
- Inventaire permanent : c''est la tenue continue des fiches de stock, qui donne à tout moment le stock théorique.

Bonnes pratiques : compter en binôme, bloquer les mouvements pendant le comptage, recompter en cas d''écart important.

Écart d''inventaire = stock physique − stock théorique. Taux d''écart = écart / stock théorique.

Exemple : stock théorique 1 250 cartons, stock compté 1 232 cartons. Écart = −18 cartons. Taux = 18 / 1 250 = 1,44 %. Causes à rechercher : erreurs de saisie, casse, livraisons non enregistrées, vols.

## Points clés

- L''entrepôt réceptionne, stocke, prépare et expédie : chaque zone a son rôle.
- La méthode ABC concentre l''effort de contrôle sur les articles à forte valeur.
- FIFO (et FEFO pour les périssables) fait sortir les lots les plus anciens et valorise les sorties au coût le plus ancien.
- Point de commande = consommation journalière × délai + stock de sécurité.
- L''inventaire compare le physique au théorique ; tout écart doit être expliqué.

## Exercices

Exercice 1. Classez en A, B, C les articles suivants (valeur annuelle) : P1 6 000 000 FCFA ; P2 2 000 000 FCFA ; P3 1 200 000 FCFA ; P4 500 000 FCFA ; P5 300 000 FCFA.

Exercice 2. Stock initial : 40 cartons à 10 000 FCFA. Entrée : 60 cartons à 11 000 FCFA. Sortie : 70 cartons. Valorisez la sortie et le stock final selon FIFO.

Exercice 3. Une quincaillerie de Saint-Louis consomme 25 cartons de clous par jour. Le fournisseur livre en 8 jours. Le stock de sécurité est fixé à 50 cartons. Calculez le point de commande.

Exercice 4. Stock théorique : 800 bidons. Stock physique : 776 bidons. Calculez l''écart et le taux d''écart.

## Corrigé

Exercice 1. Total : 10 000 000 FCFA. Cumuls : P1 60 % ; P2 80 % ; P3 92 % ; P4 97 % ; P5 100 %. Classe A : P1 et P2 (80 %). Classe B : P3. Classe C : P4 et P5.

Exercice 2. Sortie : 40 × 10 000 + 30 × 11 000 = 400 000 + 330 000 = 730 000 FCFA. Stock final : 30 cartons à 11 000 FCFA = 330 000 FCFA.

Exercice 3. Point de commande = 25 × 8 + 50 = 250 cartons.

Exercice 4. Écart = 776 − 800 = −24 bidons. Taux = 24 / 800 = 3 %. Écart élevé : recomptage puis recherche des causes.', 'texte', 60, false, 20
from public.courses c where c.slug = 'formation-transport-logistique'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Entreposage et gestion des stocks : ABC, FIFO et inventaires');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Planifier les tournées de livraison', '## Objectifs de la leçon

Savoir construire une tournée de livraison réaliste en respectant la capacité du véhicule, les horaires des clients et le temps de travail, puis en calculer la distance, la durée et le coût.

## Les notions de base

Une tournée est un circuit qui part d''un dépôt, dessert plusieurs clients et revient au dépôt. Planifier une tournée, c''est décider quels clients sont livrés par quel véhicule et dans quel ordre.

Les contraintes à respecter :

- la capacité du véhicule (en poids et en volume) ;
- les fenêtres horaires des clients (une boutique de marché ne reçoit pas à midi ; certains clients ferment le vendredi après-midi) ;
- la durée de travail du chauffeur et les pauses ;
- les conditions de circulation (heures de pointe à Dakar, routes dégradées en saison des pluies, restrictions de circulation des poids lourds dans certaines zones) ;
- les temps d''arrêt chez chaque client (déchargement, contrôle, signature).

L''objectif est de minimiser la distance et le temps total tout en livrant tous les clients à l''heure.

## Méthode en cinq étapes

- Étape 1 : lister les commandes du jour avec le poids, l''adresse et la fenêtre horaire de chaque client.
- Étape 2 : regrouper les clients par secteur géographique (par exemple : Pikine-Guédiawaye, Rufisque, centre-ville). Chaque secteur devient une tournée potentielle.
- Étape 3 : vérifier que la charge de chaque secteur tient dans un véhicule. Sinon, découper le secteur.
- Étape 4 : ordonner les arrêts. Une méthode simple est celle du « plus proche voisin » : depuis le dépôt, on va au client le plus proche, puis de ce client au client non encore visité le plus proche, et ainsi de suite, avant de revenir au dépôt.
- Étape 5 : calculer la durée totale (trajets + arrêts), vérifier les horaires, puis calculer le coût.

La méthode du plus proche voisin ne donne pas toujours le meilleur circuit possible, mais elle donne rapidement une solution correcte. On peut ensuite essayer d''inverser deux arrêts pour voir si la distance diminue.

## Exemple chiffré

Un distributeur de boissons part de son dépôt O et doit livrer quatre clients A, B, C et E. Les distances (en km) sont :

- O-A : 8 ; O-B : 12 ; O-C : 15 ; O-E : 10.
- A-B : 5 ; A-C : 11 ; A-E : 9.
- B-C : 6 ; B-E : 14.
- C-E : 7.

Application du plus proche voisin :

- Depuis O, le plus proche est A (8 km).
- Depuis A, on compare B (5), C (11), E (9) : on choisit B.
- Depuis B, on compare C (6) et E (14) : on choisit C.
- Depuis C, il reste E (7).
- Retour E-O : 10 km.

Tournée : O-A-B-C-E-O. Distance : 8 + 5 + 6 + 7 + 10 = 36 km.

Vérifions une autre possibilité, O-A-E-C-B-O : 8 + 9 + 7 + 6 + 12 = 42 km. Elle est plus longue, on garde la première.

Capacité : le camion porte 5 tonnes. Les commandes sont A 1,2 t ; B 0,8 t ; C 1,5 t ; E 1,0 t, soit 4,5 tonnes. La capacité est respectée, avec un taux de remplissage de 4,5 / 5 = 90 %.

Durée : vitesse moyenne en ville 25 km/h, donc 36 / 25 = 1,44 heure, soit environ 1 h 26 min de conduite. Avec 20 minutes d''arrêt par client (4 × 20 = 80 min), la tournée dure environ 2 h 46 min. Un départ à 8 h 00 permet un retour vers 10 h 46, et donc une seconde tournée dans la journée.

Coût : si le coût d''exploitation du camion est de 650 FCFA par km (valeur fictive incluant carburant, entretien et pneus), la tournée coûte 36 × 650 = 23 400 FCFA, hors salaire du chauffeur. Coût par tonne livrée : 23 400 / 4,5 = 5 200 FCFA.

## Conseils pratiques

- Préparer les tournées la veille, à partir des commandes validées.
- Charger le camion dans l''ordre inverse des livraisons : le premier client livré est chargé en dernier, près des portes.
- Remettre au chauffeur une feuille de route indiquant l''ordre des arrêts, les contacts des clients et les heures prévues.
- Recueillir au retour les bons de livraison signés, les heures réelles et les kilomètres parcourus, pour améliorer les prochaines tournées.

## Points clés

- Une tournée part du dépôt, dessert plusieurs clients et y revient.
- Contraintes : capacité, fenêtres horaires, temps de travail, circulation, temps d''arrêt.
- Méthode : regrouper par secteur, vérifier la charge, ordonner (plus proche voisin), calculer durée et coût.
- Le coût par tonne livrée permet de comparer les tournées.

## Exercices

Exercice 1. Un dépôt O doit livrer trois clients P, Q et R. Distances : O-P 4 km ; O-Q 6 km ; O-R 9 km ; P-Q 3 km ; P-R 7 km ; Q-R 4 km. Construisez la tournée par la méthode du plus proche voisin et calculez sa distance.

Exercice 2. Comparez votre résultat avec les tournées O-P-R-Q-O et O-Q-P-R-O. Laquelle est la plus courte ?

Exercice 3. La tournée de l''exercice 1 est faite à 20 km/h de moyenne, avec 15 minutes d''arrêt par client. Le départ a lieu à 8 h 00. À quelle heure le camion revient-il ?

Exercice 4. Le coût d''exploitation est de 700 FCFA par km (valeur fictive). Les charges livrées sont P 0,8 t ; Q 1,2 t ; R 1,0 t. Calculez le coût de la tournée et le coût par tonne.

## Corrigé

Exercice 1. Depuis O, le plus proche est P (4). Depuis P : Q (3) ou R (7), on choisit Q. Depuis Q : R (4). Retour R-O : 9. Tournée O-P-Q-R-O = 4 + 3 + 4 + 9 = 20 km.

Exercice 2. O-P-R-Q-O = 4 + 7 + 4 + 6 = 21 km. O-Q-P-R-O = 6 + 3 + 7 + 9 = 25 km. La tournée O-P-Q-R-O (20 km) est la plus courte des trois.

Exercice 3. Conduite : 20 / 20 = 1 heure. Arrêts : 3 × 15 = 45 minutes. Durée totale : 1 h 45. Retour à 9 h 45.

Exercice 4. Coût : 20 × 700 = 14 000 FCFA. Charge totale : 0,8 + 1,2 + 1,0 = 3 tonnes. Coût par tonne : 14 000 / 3 ≈ 4 667 FCFA.', 'texte', 60, false, 30
from public.courses c where c.slug = 'formation-transport-logistique'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Planifier les tournées de livraison');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Documents de transport et incoterms : les principes', '## Objectifs de la leçon

Connaître les principaux documents qui accompagnent une marchandise, comprendre le rôle des incoterms, distinguer les règles les plus utilisées et calculer un coût de revient rendu entrepôt pour une importation.

## Pourquoi des documents ?

Les documents prouvent ce qui a été remis et reçu, transfèrent la responsabilité d''un acteur à l''autre, permettent le dédouanement et déclenchent le paiement. Un document manquant peut bloquer un conteneur au port et générer des frais importants.

## Les principaux documents

- Le bon de commande : il formalise la demande du client (articles, quantités, prix, date et lieu de livraison).
- Le bon de livraison : il accompagne la marchandise ; le client le signe à la réception, en notant les réserves éventuelles (colis abîmés, manquants).
- La lettre de voiture : document du transport routier qui matérialise le contrat de transport entre l''expéditeur, le transporteur et le destinataire.
- Le connaissement (Bill of Lading) : document du transport maritime. Il prouve la prise en charge de la marchandise par le transporteur et, dans sa forme négociable, il représente la marchandise elle-même : celui qui le détient peut en prendre livraison.
- La facture commerciale : elle indique la valeur de la marchandise et sert de base au dédouanement.
- La liste de colisage : détail du contenu de chaque colis (poids, dimensions, nombre).
- Le certificat d''origine : il atteste du pays d''origine, ce qui peut avoir un effet sur les droits applicables.
- La déclaration en douane : établie en général par un commissionnaire en douane agréé, elle permet de dédouaner la marchandise.

Règle pratique : à la réception, vérifier la concordance commande – bon de livraison – facture – marchandise, et noter des réserves précises avant de signer.

## Les incoterms : à quoi servent-ils ?

Les incoterms sont des règles internationales publiées par la Chambre de commerce internationale. La version la plus récente en usage est celle de 2020. Ils précisent, dans un contrat de vente, la répartition entre vendeur et acheteur :

- des frais (transport, assurance, chargement, dédouanement) ;
- des risques (à quel moment la marchandise voyage aux risques de l''acheteur) ;
- de certaines formalités (dédouanement export, dédouanement import).

Attention : les incoterms ne fixent ni le prix, ni le moment du transfert de propriété, ni les conditions de paiement. Ils doivent toujours être suivis d''un lieu précis et de la version, par exemple « FOB port de chargement, Incoterms 2020 ».

## Les onze règles en deux familles

Règles utilisables pour tous les modes de transport : EXW, FCA, CPT, CIP, DAP, DPU, DDP.

Règles réservées au transport maritime et fluvial : FAS, FOB, CFR, CIF.

Quelques règles très utilisées, en principe :

- EXW (à l''usine) : marchandise mise à disposition chez le vendeur ; l''acheteur fait presque tout.
- FOB (franco à bord) : le vendeur livre à bord du navire au port de chargement ; ensuite frais et risques passent à l''acheteur, qui paie le fret.
- CFR (coût et fret) : le vendeur paie le fret jusqu''au port de destination, mais le risque passe à l''acheteur dès le chargement à bord au départ.
- CIF (coût, assurance et fret) : comme CFR, avec en plus une assurance souscrite par le vendeur au profit de l''acheteur. Le risque passe aussi au chargement à bord.
- DAP (rendu au lieu de destination) : frais et risques au vendeur jusqu''au lieu convenu ; dédouanement import à l''acheteur.
- DDP (rendu droits acquittés) : le vendeur assume tout, y compris le dédouanement import et les droits.

Point souvent mal compris : en CFR et CIF, si la marchandise est endommagée en mer, c''est l''acheteur qui supporte le risque.

## Exemple : coût de revient rendu entrepôt

Un importateur de Dakar achète du matériel électrique en FOB port d''Asie. Données (montants fictifs) :

- valeur FOB : 10 000 000 FCFA ;
- fret maritime : 1 500 000 FCFA ;
- assurance : 100 000 FCFA ;
- droits et taxes à l''importation : 2 000 000 FCFA (montant fictif ; les taux dépendent du tarif douanier en vigueur, à vérifier auprès d''un commissionnaire agréé) ;
- frais de transit et de manutention portuaire : 400 000 FCFA ;
- transport du port à l''entrepôt : 250 000 FCFA.

Valeur CIF (valeur rendue au port de destination) : 10 000 000 + 1 500 000 + 100 000 = 11 600 000 FCFA.

Coût de revient rendu entrepôt : 11 600 000 + 2 000 000 + 400 000 + 250 000 = 14 250 000 FCFA.

Le prix FOB ne représente ici qu''environ 70 % du coût réel (10 000 000 / 14 250 000) : comparer des fournisseurs sur ce seul prix est trompeur.

## Points clés

- Chaque mouvement de marchandise est accompagné de documents qui prouvent, transfèrent la responsabilité et permettent le paiement.
- Le connaissement maritime négociable représente la marchandise.
- Les incoterms répartissent frais, risques et formalités ; ils ne règlent ni le prix ni la propriété.
- Toujours indiquer l''incoterm, le lieu précis et la version.
- Le coût de revient rendu entrepôt inclut fret, assurance, droits, transit et transport final.

## Exercices

Exercice 1. Dans une vente FOB, qui paie le fret maritime ? Et dans une vente CIF ?

Exercice 2. En CIF, la marchandise est endommagée pendant le voyage en mer. Qui supporte le risque ?

Exercice 3. Valeur FOB 8 000 000 FCFA, fret 1 200 000 FCFA, assurance 60 000 FCFA. Calculez la valeur CIF.

Exercice 4. Un acheteur de Bamako, débutant, ne veut s''occuper d''aucune formalité ni d''aucun transport. Quelle règle lui est la plus favorable ? Laquelle serait la plus défavorable ?

Exercice 5. Citez trois documents à vérifier lors de la réception d''une livraison.

## Corrigé

Exercice 1. En FOB, l''acheteur paie le fret maritime. En CIF, c''est le vendeur.

Exercice 2. L''acheteur : en CIF, le risque passe au chargement à bord au port de départ. Il sera indemnisé par l''assurance souscrite par le vendeur à son profit, dans les limites de la police.

Exercice 3. CIF = 8 000 000 + 1 200 000 + 60 000 = 9 260 000 FCFA.

Exercice 4. La plus favorable est DDP, où le vendeur assume tout jusqu''à destination, dédouanement import compris. La plus défavorable est EXW, où l''acheteur doit tout organiser depuis les locaux du vendeur.

Exercice 5. Par exemple : le bon de commande, le bon de livraison et la facture (ou la lettre de voiture, la liste de colisage).', 'texte', 60, false, 40
from public.courses c where c.slug = 'formation-transport-logistique'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Documents de transport et incoterms : les principes');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Mesurer la performance logistique : les indicateurs', '## Objectifs de la leçon

Savoir choisir, calculer et interpréter les principaux indicateurs de performance logistique (taux de service, remplissage, rotation des stocks, coûts unitaires, qualité de préparation) et les organiser dans un tableau de bord simple.

## Pourquoi mesurer ?

« Ce qui ne se mesure pas ne s''améliore pas. » Un responsable logistique doit pouvoir répondre chaque mois à trois questions : servons-nous bien nos clients ? Utilisons-nous bien nos moyens ? Combien cela nous coûte-t-il ? Un indicateur (ou KPI, Key Performance Indicator) est une mesure chiffrée qui répond à l''une de ces questions et que l''on compare à un objectif.

Un bon indicateur est simple à comprendre, calculé toujours de la même façon, alimenté par des données fiables, et associé à un responsable qui peut agir.

## Les indicateurs de service client

- Taux de service OTIF (On Time In Full, à l''heure et complet) = nombre de commandes livrées à l''heure et complètes / nombre total de commandes. C''est l''indicateur le plus exigeant, car une commande en retard ou incomplète compte comme un échec.
- Délai moyen de livraison : temps moyen entre la commande et la livraison.
- Taux de réclamations : réclamations / livraisons.

Exemple : sur 480 commandes du mois, 432 ont été livrées à l''heure et complètes. OTIF = 432 / 480 = 90 %.

## Les indicateurs d''utilisation des moyens

- Taux de remplissage des véhicules = charge transportée / capacité. Un camion de 10 tonnes qui roule en moyenne avec 7,5 tonnes a un taux de remplissage de 75 %.
- Taux de disponibilité de la flotte = jours où les véhicules sont disponibles / jours prévus.
- Productivité de préparation = lignes de commande préparées par heure de travail.

## Les indicateurs de stock

- Rotation des stocks = coût d''achat des marchandises vendues sur l''année / stock moyen (en valeur).
- Couverture des stocks (en jours) = 365 / rotation, ou stock moyen / consommation journalière.
- Taux de rupture = nombre de références en rupture / nombre total de références suivies.

Exemple : coût d''achat des marchandises vendues sur l''année 120 000 000 FCFA, stock moyen 15 000 000 FCFA. Rotation = 120 000 000 / 15 000 000 = 8 fois par an. Couverture = 365 / 8 ≈ 45,6 jours. L''entreprise garde en moyenne un mois et demi de ventes en stock. Si son fournisseur livre en une semaine, ce stock est probablement trop élevé : de la trésorerie dort dans l''entrepôt.

## Les indicateurs de coût

- Coût par kilomètre = dépenses de la flotte / kilomètres parcourus.
- Coût par tonne livrée = coût logistique total / tonnes livrées.
- Coût logistique en pourcentage du chiffre d''affaires.

Exemple : la flotte a coûté 3 900 000 FCFA dans le mois pour 6 000 km parcourus. Coût par km = 3 900 000 / 6 000 = 650 FCFA.

## Les indicateurs de qualité

- Taux d''erreur de préparation = lignes erronées / lignes préparées. Exemple : 12 erreurs sur 1 600 lignes, soit 0,75 %.
- Taux de casse ou d''avarie = valeur des marchandises endommagées / valeur transportée.
- Écart d''inventaire (vu en leçon 2).

## Construire un tableau de bord

Méthode :

- choisir 6 à 8 indicateurs maximum, répartis entre service, moyens, stocks, coûts et qualité ;
- fixer pour chacun un objectif réaliste et des seuils : vert (objectif atteint), orange (vigilance), rouge (action immédiate) ;
- définir la source des données, la fréquence (hebdomadaire ou mensuelle) et le responsable ;
- présenter les résultats sur une page, avec l''évolution sur plusieurs mois ;
- pour chaque indicateur en rouge, écrire une action corrective, un responsable et une échéance.

Exemple de lecture : si l''OTIF baisse de 90 % à 82 % alors que le taux de remplissage monte de 75 % à 92 %, on peut soupçonner que l''on attend trop de commandes pour remplir les camions, au détriment des délais. Les indicateurs se lisent ensemble, jamais isolément.

## Points clés

- Un indicateur répond à une question précise et se compare à un objectif.
- OTIF mesure le service ; remplissage et disponibilité mesurent l''utilisation des moyens.
- Rotation et couverture mesurent l''efficacité des stocks.
- Coût par km et coût par tonne permettent de piloter les dépenses.
- Un tableau de bord court, régulier et suivi d''actions vaut mieux qu''une longue liste de chiffres.

## Exercices

Exercice 1. Sur 250 livraisons, 230 sont arrivées à l''heure, parmi lesquelles 220 étaient aussi complètes. Calculez le taux de ponctualité et l''OTIF.

Exercice 2. Coût d''achat des marchandises vendues : 90 000 000 FCFA par an. Stock moyen : 18 000 000 FCFA. Calculez la rotation et la couverture en jours.

Exercice 3. Un camion de 20 tonnes transporte en moyenne 14 tonnes. Calculez son taux de remplissage.

Exercice 4. Le coût logistique du mois est de 2 600 000 FCFA pour 400 tonnes livrées. Calculez le coût par tonne.

Exercice 5. L''OTIF est en rouge depuis deux mois. Proposez deux causes possibles et une action pour chacune.

## Corrigé

Exercice 1. Ponctualité = 230 / 250 = 92 %. OTIF = 220 / 250 = 88 %.

Exercice 2. Rotation = 90 000 000 / 18 000 000 = 5 fois par an. Couverture = 365 / 5 = 73 jours.

Exercice 3. Taux de remplissage = 14 / 20 = 70 %.

Exercice 4. Coût par tonne = 2 600 000 / 400 = 6 500 FCFA.

Exercice 5. Exemples : ruptures de stock sur des articles A (action : revoir le point de commande et le stock de sécurité) ; tournées mal planifiées ou camions indisponibles (action : planifier la veille et renforcer l''entretien préventif). Toute réponse cohérente associant une cause et une action mesurable est acceptée.', 'texte', 45, false, 50
from public.courses c where c.slug = 'formation-transport-logistique'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Mesurer la performance logistique : les indicateurs');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : de la commande à la livraison, piloter sa logistique', '## Fiche du cours vidéo

Durée : 1h30. Public : responsables logistiques, gérants de PME de distribution, magasiniers et chefs de parc, étudiants en formation professionnelle.

Objectifs : relier en une séance les grandes étapes de la chaîne logistique ; savoir classer un stock en ABC, valoriser en FIFO et calculer un point de commande ; construire une tournée simple ; distinguer les incoterms principaux ; lire un tableau de bord logistique.

Matériel : diaporama, tableau blanc, calculatrice, un exemple de bon de livraison et de connaissement (modèles vierges), un tableur pour la démonstration.

Prérequis : avoir lu les leçons 1 à 5 de la formation, ou disposer d''une expérience pratique en entrepôt ou en livraison.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et fil rouge

Texte du formateur : « Bonjour à toutes et à tous, et bienvenue dans ce cours consacré à la logistique, de la commande jusqu''à la livraison. Pendant une heure trente, nous allons suivre un fil rouge : une entreprise fictive, Distri-Sahel, grossiste en produits alimentaires installée à Dakar, qui livre des boutiques et des demi-grossistes à Dakar, Thiès et Mbour. Chaque fois que nous verrons une notion, nous l''appliquerons à Distri-Sahel. À la fin, vous aurez une méthode complète que vous pourrez reproduire dans votre propre entreprise. »

Visuel : carte schématique Dakar – Thiès – Mbour avec l''entrepôt et les clients.

Question posée : « Dans votre entreprise, qui est responsable du trajet complet de la marchandise, de la commande à l''encaissement ? » Laisser quelques réponses : souvent, personne n''a la vision complète.

## 05:00 – 15:00 · La chaîne logistique et ses trois flux

Texte du formateur : « La chaîne logistique, c''est l''ensemble des étapes qui amènent le bon produit, en bonne quantité, au bon endroit, au bon moment et au bon coût. Chez Distri-Sahel, la chaîne commence au port, où arrivent les conteneurs de riz et d''huile, passe par l''entrepôt de la zone industrielle, puis par les camions de livraison, et se termine au comptoir du boutiquier. Trois flux circulent en parallèle : les marchandises, les informations et l''argent. Le jour où ces trois flux se désynchronisent, les problèmes commencent : on livre sans facturer, on vend un produit qui n''est plus en stock, on paie un transporteur deux fois. »

Visuel : schéma à trois bandes horizontales (physique, information, financier) avec les documents qui accompagnent chaque étape.

Texte du formateur : « Distri-Sahel livre 500 tonnes par mois. Son coût logistique est de 28 000 FCFA par tonne, soit 14 millions de FCFA par mois. Le poste le plus lourd après l''approvisionnement, c''est la distribution, avec 9 500 FCFA par tonne, environ un tiers du total. Retenez la méthode : additionner tous les postes, diviser par les quantités livrées, puis attaquer le poste le plus lourd. »

## 15:00 – 27:00 · L''entrepôt et la méthode ABC

Texte du formateur : « Entrons dans l''entrepôt. Il a quatre zones : réception, stockage, préparation, expédition. Chaque emplacement doit avoir une adresse. Si un nouveau magasinier ne trouve pas un article en moins d''une minute, l''entrepôt est mal organisé. »

Texte du formateur : « Distri-Sahel gère 8 articles principaux. Faut-il surveiller la boîte d''allumettes autant que le sac de riz ? Évidemment non. La méthode ABC nous aide. On calcule pour chaque article la valeur consommée sur l''année, on classe par ordre décroissant, on calcule le pourcentage cumulé. Riz 48 %, huile 30 % : à eux deux, 78 % de la valeur. Ce sont les articles A. Sucre et lait en poudre portent le cumul à 94 % : ce sont les B. Le reste, ce sont les C. »

Visuel : tableau ABC et courbe cumulée en forme de coude.

Question posée : « Quelle fréquence d''inventaire proposeriez-vous pour les articles A ? » Réponse attendue : un comptage tournant fréquent, par exemple hebdomadaire.

## 27:00 – 38:00 · FIFO, point de commande et inventaire

Texte du formateur : « Deuxième règle d''or de l''entrepôt : premier entré, premier sorti. Le sac arrivé le premier doit partir le premier. Pour le lait en poudre, on va plus loin : on fait sortir le lot qui périme le premier, c''est le FEFO. FIFO sert aussi à valoriser : si j''ai 100 sacs à 15 000 FCFA et 200 sacs à 16 000 FCFA, et que je sors 250 sacs, je valorise 100 sacs à 15 000 et 150 sacs à 16 000, soit 3 900 000 FCFA. »

Texte du formateur : « Quand faut-il commander ? Distri-Sahel vend 40 sacs de riz par jour, son fournisseur local livre en 5 jours, et elle garde 60 sacs de sécurité. Point de commande : 40 fois 5 plus 60, soit 260 sacs. Le magasinier doit donc alerter dès que le stock passe à 260. »

Texte du formateur : « Enfin, l''inventaire. Stock théorique 1 250 cartons, stock compté 1 232 : écart de 18 cartons, soit 1,44 %. Un écart n''est pas une faute en soi, mais il doit toujours être expliqué. »

Visuel : fiche de comptage vierge, fiche de stock FIFO.

## 38:00 – 45:00 · Pause interactive et quiz

Texte du formateur : « Faisons une pause active. Je vous propose quatre questions. Notez vos réponses, nous corrigeons dans trois minutes. »

- Question 1 : citez les trois flux de la chaîne logistique.
- Question 2 : un article représente 5 % de la valeur et le cumul atteint 97 %. Dans quelle classe est-il ?
- Question 3 : consommation 30 unités par jour, délai 4 jours, stock de sécurité 40. Point de commande ?
- Question 4 : vrai ou faux, FEFO s''applique surtout aux produits périssables ?

Correction : 1) physique, information, financier ; 2) classe C ; 3) 30 × 4 + 40 = 160 unités ; 4) vrai.

## 45:00 – 58:00 · Planifier une tournée

Texte du formateur : « Sortons de l''entrepôt. Demain, Distri-Sahel doit livrer quatre clients, A, B, C et E, avec un camion de 5 tonnes. Nous avons le tableau des distances. Appliquons la méthode du plus proche voisin : depuis le dépôt, le client le plus proche est A, à 8 km. Depuis A, le plus proche est B, à 5 km. Depuis B, c''est C, à 6 km. Depuis C, il reste E, à 7 km, puis le retour, 10 km. Total : 36 km. »

Visuel : tableau des distances, puis tracé progressif de la tournée sur la carte.

Texte du formateur : « Vérifions la capacité : 1,2 plus 0,8 plus 1,5 plus 1 égale 4,5 tonnes, sur 5 possibles. La durée : 36 km à 25 km/h en ville, environ 1 h 26, plus 4 arrêts de 20 minutes, soit environ 2 h 46. Le coût : 36 km à 650 FCFA, soit 23 400 FCFA, ou 5 200 FCFA par tonne livrée. N''oubliez pas : on charge le camion dans l''ordre inverse des livraisons. »

Question posée : « Que se passe-t-il si le client C n''accepte les livraisons qu''après 11 h ? » Discussion : il faut réordonner la tournée ou le placer sur une seconde tournée.

## 58:00 – 1:10:00 · Documents et incoterms

Texte du formateur : « Revenons au début de la chaîne : l''importation. Le riz de Distri-Sahel arrive par la mer. Le document clé est le connaissement : sous sa forme négociable, il représente la marchandise. Sans lui, pas de retrait au port. Ajoutez la facture commerciale, la liste de colisage, le certificat d''origine si nécessaire, et la déclaration en douane établie par le commissionnaire agréé. »

Texte du formateur : « Les incoterms, publiés par la Chambre de commerce internationale, précisent qui paie quoi et qui supporte quels risques. Il y en a onze dans la version 2020. Quatre sont réservés au maritime : FAS, FOB, CFR et CIF. Le piège classique : en CIF, le vendeur paie le fret et l''assurance, mais le risque passe à l''acheteur dès le chargement à bord au départ. »

Visuel : frise du trajet usine – port de départ – navire – port d''arrivée – entrepôt, avec le point de transfert des risques pour EXW, FOB, CIF, DAP, DDP.

Texte du formateur : « Calculons un coût de revient. Valeur FOB 10 millions, fret 1,5 million, assurance 100 000 : valeur CIF 11,6 millions. Ajoutons des droits et taxes, ici 2 millions, montant fictif pour l''exemple car les taux dépendent du tarif en vigueur, puis 400 000 de transit et 250 000 de transport jusqu''à l''entrepôt : 14,25 millions. Le prix FOB ne représente qu''environ 70 % du coût réel. »

## 1:10:00 – 1:20:00 · Le tableau de bord logistique

Texte du formateur : « Dernière étape : piloter. Voici le tableau de bord mensuel de Distri-Sahel. OTIF : 432 commandes à l''heure et complètes sur 480, soit 90 %. Taux de remplissage des camions : 75 %. Rotation du stock : 8 fois par an, soit une couverture d''environ 46 jours. Coût par km : 650 FCFA. Taux d''erreur de préparation : 0,75 %. »

Visuel : tableau de bord d''une page avec code couleur vert, orange, rouge et courbes sur six mois.

Texte du formateur : « Comment lire ce tableau ? La couverture de 46 jours est élevée alors que le fournisseur local livre en 5 jours : il y a de la trésorerie immobilisée. Le remplissage à 75 % suggère qu''on pourrait regrouper certaines tournées, à condition de ne pas dégrader l''OTIF. On lit toujours les indicateurs ensemble. »

Question posée : « Si vous ne pouviez suivre que trois indicateurs, lesquels choisiriez-vous pour votre entreprise, et pourquoi ? »

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Texte du formateur : « Récapitulons. Un : la chaîne logistique fait circuler trois flux qui doivent rester synchronisés. Deux : dans l''entrepôt, ABC concentre l''effort, FIFO fait tourner le stock, le point de commande évite les ruptures, l''inventaire vérifie. Trois : une tournée se construit par secteur, se vérifie en capacité et en temps, se chiffre en coût par tonne. Quatre : les documents et les incoterms sécurisent l''importation. Cinq : le tableau de bord transforme tout cela en décisions. »

Évaluation finale, cinq questions :

- Question 1 : coût logistique de 4 400 000 FCFA pour 220 tonnes. Coût par tonne ? Réponse : 20 000 FCFA.
- Question 2 : stock initial 40 cartons à 10 000 FCFA, entrée 60 cartons à 11 000 FCFA, sortie 70 cartons. Valeur FIFO de la sortie ? Réponse : 400 000 + 330 000 = 730 000 FCFA.
- Question 3 : tournée de 20 km à 700 FCFA/km pour 3 tonnes. Coût par tonne ? Réponse : 14 000 / 3 ≈ 4 667 FCFA.
- Question 4 : en FOB, qui paie le fret maritime ? Réponse : l''acheteur.
- Question 5 : 250 livraisons, 220 à l''heure et complètes. OTIF ? Réponse : 88 %.

Texte du formateur : « Merci pour votre attention. Votre mission pour la semaine : cartographier votre propre chaîne logistique et calculer votre coût par tonne ou par colis livré. Ce sera votre point de départ. »', 'video', 90, false, 60
from public.courses c where c.slug = 'formation-transport-logistique'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : de la commande à la livraison, piloter sa logistique');

-- Cours : Informatique L1 : algorithmique, programmation Python et bases de données
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'informatique-programmation-l1', (select id from public.levels where name = 'Licence 1'), null, 'Informatique', 'Informatique L1 : algorithmique, programmation Python et bases de données', 'Ce cours initie à la pensée algorithmique et à la programmation en Python : variables, conditions, boucles, fonctions et listes, avec des exemples tirés de la vie économique locale. Il se termine par une introduction aux bases de données relationnelles et au langage SQL. Il s''adresse aux étudiants de première année, sans prérequis en informatique.', true, 30
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Algorithmique et premiers pas en Python : variables, types et entrées-sorties', '## Objectifs de la leçon

- Définir un algorithme et savoir l''écrire en pseudo-code.
- Comprendre les notions de variable, de type et d''affectation.
- Écrire ses premiers programmes Python avec entrées et sorties.

## 1. Qu''est-ce qu''un algorithme ?

Un algorithme est une suite finie et non ambiguë d''instructions qui permet de résoudre un problème ou d''obtenir un résultat à partir de données. Une recette de thiéboudienne, un itinéraire pour aller de la gare routière au campus, la procédure pour envoyer de l''argent par téléphone mobile sont des algorithmes de la vie courante.

Un bon algorithme possède quatre qualités : il se termine (nombre fini d''étapes), il est précis (chaque instruction a un seul sens), il est correct (il donne le bon résultat pour toutes les données prévues) et il est, autant que possible, efficace (il utilise peu de temps et de mémoire).

On écrit d''abord l''algorithme en pseudo-code, un langage intermédiaire entre le français et le langage de programmation, puis on le traduit dans un langage comme Python.

## 2. Les variables et les types

Une variable est un emplacement mémoire désigné par un nom, qui contient une valeur pouvant changer au cours du programme. Chaque valeur a un type :

- Entier (int) : 25, −3, 150000.
- Réel ou flottant (float) : 3.14, 655.957 (en programmation, on utilise le point décimal).
- Chaîne de caractères (str) : "Dakar", "Bonjour".
- Booléen (bool) : True ou False.

L''affectation donne une valeur à une variable. En pseudo-code, on écrit prix ← 500 ; en Python, prix = 500. Attention : en programmation, le signe = n''est pas une égalité mathématique mais une affectation. L''instruction compteur = compteur + 1 signifie « prendre la valeur actuelle de compteur, lui ajouter 1 et ranger le résultat dans compteur ».

Règles de nommage en Python : commencer par une lettre ou un tiret bas, pas d''espace ni d''accent recommandé, respecter la casse (Prix et prix sont deux variables différentes).

## 3. Les opérations

- Arithmétiques : + (addition), − (en Python le signe moins du clavier), * (multiplication), / (division réelle), // (division entière), % (reste de la division entière), pow(a, b) ou l''opérateur formé de deux étoiles (puissance a^b).
- Comparaisons : ==, !=, <, <=, >, >= ; elles donnent un booléen.
- Logiques : and, or, not.

Exemples : 17 // 5 vaut 3 et 17 % 5 vaut 2, car 17 = 5 × 3 + 2. Le reste sert souvent à tester la parité : un nombre n est pair si n % 2 == 0.

## 4. Entrées et sorties en Python

La fonction print affiche un résultat ; la fonction input lit une saisie au clavier, toujours sous forme de chaîne. Il faut donc la convertir avec int() ou float() si l''on attend un nombre.

Premier programme : conversion d''euros en francs CFA à la parité fixe.

taux = 655.957
euros = float(input("Montant en euros : "))
fcfa = euros * taux
print("Montant en FCFA :", round(fcfa))

Si l''utilisateur saisit 100, le programme affiche 65596, car 100 × 655,957 = 65 595,7, arrondi à 65 596.

## 5. Méthode : de l''énoncé au programme

- Identifier les données d''entrée (ce que l''on connaît).
- Identifier le résultat attendu (la sortie).
- Décrire le traitement qui transforme les entrées en sortie.
- Écrire le pseudo-code, puis le traduire.
- Tester avec des valeurs simples dont on connaît le résultat, puis avec des cas limites (zéro, valeur négative).

## Exemple : facture d''un cybercafé

Énoncé : un cybercafé facture 300 FCFA par tranche de 30 minutes commencée. Écrire un algorithme qui calcule le montant à payer pour une durée donnée en minutes.

Analyse : entrée : la durée d en minutes. Sortie : le montant. Traitement : nombre de tranches = partie entière de (d + 29) / 30, ce qui arrondit à la tranche supérieure ; montant = tranches × 300.

Pseudo-code :

Lire d
tranches ← (d + 29) div 30
montant ← tranches × 300
Afficher montant

Python :

d = int(input("Durée en minutes : "))
tranches = (d + 29) // 30
print("À payer :", tranches * 300, "FCFA")

Tests : d = 30 donne 59 // 30 = 1 tranche, soit 300 FCFA ; d = 31 donne 60 // 30 = 2 tranches, soit 600 FCFA ; d = 75 donne 104 // 30 = 3 tranches, soit 900 FCFA. Le résultat est conforme : 75 minutes correspondent bien à trois tranches commencées.

## Points clés

- Un algorithme est une suite finie et précise d''instructions.
- Une variable a un nom, un type et une valeur ; l''affectation se note = en Python.
- input renvoie une chaîne : il faut la convertir pour calculer.
- // donne le quotient entier, % le reste.

## Exercices

- Exercice 1 : Quelle est la valeur de a et b après les instructions suivantes ? a = 5 ; b = 3 ; a = a + b ; b = a − b ; a = a − b.
- Exercice 2 : Écrivez un programme Python qui lit un prix hors taxes et un taux de TVA (en %) et affiche le prix TTC.
- Exercice 3 : Calculez 47 // 6 et 47 % 6. Vérifiez par une égalité.
- Exercice 4 : Écrivez un programme qui convertit une durée donnée en secondes en heures, minutes et secondes.

## Corrigé

- Exercice 1 : Après a = a + b : a = 8, b = 3. Après b = a − b : b = 5. Après a = a − b : a = 3. Les valeurs ont été échangées : a = 3, b = 5.
- Exercice 2 : ht = float(input("Prix HT : ")) ; taux = float(input("Taux de TVA en % : ")) ; ttc = ht * (1 + taux / 100) ; print("Prix TTC :", ttc). Par exemple, avec 1000 et 20 (taux fictif), le programme affiche 1200.0.
- Exercice 3 : 47 // 6 = 7 et 47 % 6 = 5, car 6 × 7 + 5 = 47.
- Exercice 4 : s = int(input("Secondes : ")) ; h = s // 3600 ; m = (s % 3600) // 60 ; r = s % 60 ; print(h, "h", m, "min", r, "s"). Pour 3725 secondes : h = 1, m = 125 // 60 = 2, r = 5, soit 1 h 2 min 5 s.', 'texte', 45, true, 10
from public.courses c where c.slug = 'informatique-programmation-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Algorithmique et premiers pas en Python : variables, types et entrées-sorties');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Conditions et boucles', '## Objectifs de la leçon

- Écrire des structures conditionnelles simples et imbriquées.
- Utiliser les boucles « pour » et « tant que ».
- Choisir la bonne structure de contrôle selon le problème.

## 1. Les conditions

Une structure conditionnelle permet d''exécuter des instructions seulement si une condition est vraie. En pseudo-code : Si condition Alors … Sinon … FinSi. En Python, on utilise if, elif (sinon si) et else ; le bloc d''instructions est défini par l''indentation (en général quatre espaces) et la ligne de condition se termine par deux-points.

Exemple : mention d''un étudiant selon sa moyenne sur 20.

moyenne = float(input("Moyenne : "))
if moyenne >= 16:
    print("Très bien")
elif moyenne >= 14:
    print("Bien")
elif moyenne >= 12:
    print("Assez bien")
elif moyenne >= 10:
    print("Passable")
else:
    print("Ajourné")

L''ordre des tests est important : Python s''arrête au premier test vrai. Avec une moyenne de 15, le premier test est faux, le deuxième vrai : le programme affiche « Bien » et n''examine pas les suivants.

On peut combiner des conditions avec and, or et not. Par exemple, une bourse est attribuée si la moyenne est au moins 12 et si le revenu familial est inférieur à un plafond : if moyenne >= 12 and revenu < plafond:.

## 2. La boucle « pour » (for)

La boucle for répète un bloc un nombre de fois connu à l''avance. En Python, range(n) génère les entiers de 0 à n − 1 ; range(a, b) de a à b − 1 ; range(a, b, p) avec un pas p.

Exemple : table de multiplication de 7.

for i in range(1, 11):
    print("7 x", i, "=", 7 * i)

Exemple d''accumulateur : somme des entiers de 1 à 100.

somme = 0
for i in range(1, 101):
    somme = somme + i
print(somme)

Le programme affiche 5050, ce que l''on peut vérifier avec la formule n(n + 1)/2 = 100 × 101 / 2 = 5050.

## 3. La boucle « tant que » (while)

La boucle while répète un bloc tant qu''une condition reste vraie. On l''utilise quand on ne connaît pas à l''avance le nombre de répétitions. Il faut s''assurer que la condition finira par devenir fausse, sinon on obtient une boucle infinie.

Exemple : une tontine. Une étudiante épargne 15 000 FCFA par mois et veut atteindre 100 000 FCFA pour acheter un ordinateur d''occasion. Combien de mois lui faut-il ?

epargne = 0
mois = 0
while epargne < 100000:
    epargne = epargne + 15000
    mois = mois + 1
print(mois, "mois, épargne :", epargne)

Déroulement : après 6 mois, l''épargne vaut 90 000 (encore inférieure à 100 000) ; après 7 mois, 105 000 : la boucle s''arrête. Le programme affiche 7 mois et 105 000.

## 4. Validation d''une saisie

La boucle while est très utile pour obliger l''utilisateur à saisir une valeur correcte :

note = float(input("Note sur 20 : "))
while note < 0 or note > 20:
    note = float(input("Erreur, recommencez : "))

## 5. Méthode : choisir sa structure

- Une décision entre plusieurs cas : if / elif / else.
- Une répétition dont on connaît le nombre : for.
- Une répétition jusqu''à ce qu''un événement se produise : while.
- Pour calculer une somme, un compteur ou un maximum : initialiser une variable avant la boucle, la mettre à jour dans la boucle, l''utiliser après.

Pour vérifier une boucle, faites une trace d''exécution : un tableau dont chaque ligne indique la valeur des variables à chaque tour.

## Exemple : facture d''électricité par tranches

Une société d''électricité (tarif fictif pour l''exemple) facture 100 FCFA le kWh pour les 150 premiers kWh et 120 FCFA le kWh au-delà.

conso = float(input("Consommation en kWh : "))
if conso <= 150:
    montant = conso * 100
else:
    montant = 150 * 100 + (conso - 150) * 120
print("Montant :", montant, "FCFA")

Pour 200 kWh : 15 000 + 50 × 120 = 21 000 FCFA. Pour 100 kWh : 10 000 FCFA.

## Points clés

- if / elif / else : le premier test vrai l''emporte ; l''indentation délimite les blocs.
- for avec range pour un nombre de répétitions connu.
- while pour une répétition conditionnelle ; attention aux boucles infinies.
- Accumulateurs et compteurs s''initialisent avant la boucle.

## Exercices

- Exercice 1 : Écrivez un programme qui lit un entier et affiche s''il est pair ou impair.
- Exercice 2 : Écrivez une boucle qui calcule le produit 1 × 2 × 3 × … × 6 (factorielle de 6). Quel résultat obtient-on ?
- Exercice 3 : Un capital de 500 000 FCFA est placé à 5 % par an (taux fictif, intérêts composés). Écrivez une boucle qui détermine au bout de combien d''années il dépasse 600 000 FCFA.
- Exercice 4 : Que affiche le programme suivant ? x = 1 ; tant que x < 50 : x = x * 3 ; puis afficher x.

## Corrigé

- Exercice 1 : n = int(input("Entier : ")) puis if n % 2 == 0: print("pair") else: print("impair").
- Exercice 2 : p = 1 ; for i in range(1, 7): p = p * i ; print(p). Résultat : 720.
- Exercice 3 : c = 500000 ; annees = 0 ; while c <= 600000: c = c * 1.05 ; annees = annees + 1. Valeurs : 525 000 ; 551 250 ; 578 812,5 ; 607 753,1. Le capital dépasse 600 000 FCFA au bout de 4 ans.
- Exercice 4 : x prend les valeurs 1, 3, 9, 27, 81. Quand x = 81, la condition x < 50 est fausse : le programme affiche 81.', 'texte', 50, false, 20
from public.courses c where c.slug = 'informatique-programmation-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Conditions et boucles');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Les fonctions : structurer et réutiliser son code', '## Objectifs de la leçon

- Comprendre l''intérêt de découper un programme en fonctions.
- Définir et appeler une fonction en Python, avec paramètres et valeur de retour.
- Distinguer variables locales et globales et documenter son code.

## 1. Pourquoi des fonctions ?

Une fonction est un bloc d''instructions nommé, qui réalise une tâche précise et peut être appelé plusieurs fois. Les fonctions évitent de répéter du code, rendent le programme plus lisible, facilitent les tests et permettent de travailler à plusieurs : chaque membre d''une équipe peut écrire et tester ses propres fonctions.

Vous utilisez déjà des fonctions prédéfinies : print, input, len, round, int. Vous allez maintenant créer les vôtres.

## 2. Définir et appeler une fonction

En Python, on utilise le mot-clé def, suivi du nom de la fonction, de ses paramètres entre parenthèses et de deux-points. Le corps est indenté. L''instruction return renvoie le résultat et termine la fonction.

def prix_ttc(ht, taux):
    return ht * (1 + taux / 100)

L''appel prix_ttc(1000, 20) renvoie 1200.0 (le taux de 20 % est ici fictif). Les noms ht et taux sont les paramètres ; les valeurs 1000 et 20 sont les arguments.

Une fonction peut ne rien renvoyer : elle réalise alors une action, comme afficher. En Python, elle renvoie implicitement la valeur spéciale None.

def saluer(nom):
    print("Bienvenue", nom)

On peut donner une valeur par défaut à un paramètre : def prix_ttc(ht, taux=20): permet d''appeler prix_ttc(1000) sans préciser le taux (20 % est un taux fictif ; dans un vrai logiciel, le taux applicable doit venir d''un paramétrage vérifié dans les textes officiels).

## 3. Variables locales et globales

Une variable créée à l''intérieur d''une fonction est locale : elle n''existe que pendant l''exécution de la fonction. Une variable définie en dehors de toute fonction est globale. Bonne pratique : faire passer les informations par les paramètres et le return plutôt que par des variables globales, afin que chaque fonction soit indépendante et testable.

## 4. Documenter et tester

On place juste sous la ligne def une chaîne de documentation (docstring) qui explique ce que fait la fonction, ses paramètres et son résultat. On teste ensuite la fonction sur des cas connus, par exemple avec l''instruction assert, qui provoque une erreur si une condition est fausse :

assert prix_ttc(1000, 20) == 1200

## 5. Méthode : décomposer un problème

- Lister les sous-tâches du problème.
- Pour chacune, définir une fonction : son nom (un verbe ou un nom explicite), ses entrées, sa sortie.
- Écrire et tester chaque fonction séparément.
- Écrire le programme principal qui appelle les fonctions dans le bon ordre.

## Exemple : calcul de la mensualité d''un crédit

Une institution de microfinance veut un petit outil qui calcule la mensualité d''un prêt à remboursements constants. Formule : M = C × t / (1 − (1 + t)^(−n)), où C est le capital, t le taux mensuel et n le nombre de mois.

def mensualite(capital, taux_annuel, mois):
    t = taux_annuel / 100 / 12
    if t == 0:
        return capital / mois
    return capital * t / (1 - pow(1 + t, -mois))

def cout_total(capital, taux_annuel, mois):
    return mensualite(capital, taux_annuel, mois) * mois - capital

m = mensualite(1200000, 12, 12)
print(round(m))

Avec un taux annuel de 12 % (taux fictif pour l''exemple), t = 0,01. (1,01)^12 ≈ 1,126825, donc (1,01)^(−12) ≈ 0,887449 et 1 − 0,887449 = 0,112551. M ≈ 1 200 000 × 0,01 / 0,112551 ≈ 106 619 FCFA (le programme affiche 106619). Le coût total du crédit est d''environ 106 618,55 × 12 − 1 200 000 ≈ 79 423 FCFA. On remarque que la fonction cout_total réutilise mensualite : c''est tout l''intérêt de la décomposition. Le cas t == 0 est traité à part pour éviter une division par zéro.

## 6. Fonctions récursives (aperçu)

Une fonction peut s''appeler elle-même : c''est la récursivité. Exemple : la factorielle, définie par n! = n × (n − 1)! et 0! = 1.

def factorielle(n):
    if n == 0:
        return 1
    return n * factorielle(n - 1)

factorielle(5) renvoie 5 × 4 × 3 × 2 × 1 = 120. Il faut toujours un cas de base (ici n == 0) pour que la récursion s''arrête.

## Points clés

- def nom(paramètres): définit une fonction ; return renvoie un résultat.
- Les variables locales n''existent que dans la fonction.
- Une fonction bien nommée, documentée et testée rend le programme fiable.
- Décomposer un problème en fonctions simplifie sa résolution.

## Exercices

- Exercice 1 : Écrivez une fonction maximum(a, b) qui renvoie le plus grand des deux nombres, sans utiliser la fonction max.
- Exercice 2 : Écrivez une fonction est_bissextile(annee) : une année est bissextile si elle est divisible par 4 mais pas par 100, ou si elle est divisible par 400. Testez avec 2024, 1900 et 2000.
- Exercice 3 : Écrivez une fonction moyenne_ponderee(n1, c1, n2, c2) qui calcule la moyenne de deux notes avec coefficients. Calculez-la pour 12 coefficient 2 et 15 coefficient 3.
- Exercice 4 : Que renvoie la fonction f(n) définie par : si n <= 1 renvoyer n, sinon renvoyer f(n − 1) + f(n − 2), pour n = 6 ?

## Corrigé

- Exercice 1 : def maximum(a, b): puis if a >= b: return a, sinon return b.
- Exercice 2 : def est_bissextile(annee): return (annee % 4 == 0 and annee % 100 != 0) or annee % 400 == 0. Résultats : 2024 : True ; 1900 : False (divisible par 100 mais pas par 400) ; 2000 : True.
- Exercice 3 : def moyenne_ponderee(n1, c1, n2, c2): return (n1 * c1 + n2 * c2) / (c1 + c2). Pour 12 (coef. 2) et 15 (coef. 3) : (24 + 45) / 5 = 69 / 5 = 13,8.
- Exercice 4 : C''est la suite de Fibonacci : f(0) = 0, f(1) = 1, f(2) = 1, f(3) = 2, f(4) = 3, f(5) = 5, f(6) = 8. La fonction renvoie 8.', 'texte', 50, false, 30
from public.courses c where c.slug = 'informatique-programmation-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Les fonctions : structurer et réutiliser son code');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Listes, algorithmes classiques et dictionnaires', '## Objectifs de la leçon

- Créer et manipuler des listes en Python.
- Parcourir une liste et programmer les algorithmes classiques : somme, moyenne, maximum, recherche, comptage.
- Comprendre le principe d''un algorithme de tri et découvrir les dictionnaires.

## 1. Les listes

Une liste (appelée tableau en algorithmique) est une collection ordonnée de valeurs, accessible par un indice. En Python, on l''écrit entre crochets : ventes = [12000, 8500, 15000, 9800, 11200]. Le premier élément a l''indice 0 : ventes[0] vaut 12000 et ventes[4] vaut 11200. L''indice −1 désigne le dernier élément.

Opérations utiles :

- len(ventes) : nombre d''éléments (ici 5).
- ventes.append(13000) : ajoute un élément à la fin.
- ventes[1] = 9000 : modifie un élément.
- ventes.remove(9800) : supprime la première occurrence d''une valeur.
- x in ventes : teste la présence d''une valeur.
- ventes[1:3] : tranche contenant les éléments d''indice 1 et 2.

## 2. Parcourir une liste

Deux façons de parcourir : par les valeurs (for v in ventes:) ou par les indices (for i in range(len(ventes)):), utile quand on a besoin de la position.

## 3. Les algorithmes classiques

Somme et moyenne :

total = 0
for v in ventes:
    total = total + v
moyenne = total / len(ventes)

Avec la liste initiale, total = 12000 + 8500 + 15000 + 9800 + 11200 = 56 500 et moyenne = 11 300.

Maximum et sa position :

imax = 0
for i in range(1, len(ventes)):
    if ventes[i] > ventes[imax]:
        imax = i

Ici, imax vaut 2 : la meilleure journée est la troisième, avec 15 000 FCFA.

Recherche séquentielle : on parcourt la liste jusqu''à trouver la valeur cherchée. Dans le pire cas, on examine tous les éléments : le temps est proportionnel à la taille n de la liste.

def rechercher(liste, x):
    for i in range(len(liste)):
        if liste[i] == x:
            return i
    return -1

Comptage : nombre de journées au-dessus de 10 000 FCFA.

compte = 0
for v in ventes:
    if v > 10000:
        compte = compte + 1

Résultat : 3 (12 000, 15 000 et 11 200).

Python offre aussi des fonctions prêtes : sum(ventes), max(ventes), min(ventes), sorted(ventes). Il est cependant indispensable de savoir les programmer soi-même, car c''est la base du raisonnement algorithmique.

## 4. Le tri par sélection

Principe : on cherche le plus petit élément et on l''échange avec le premier ; puis on cherche le plus petit parmi les éléments restants et on l''échange avec le deuxième ; et ainsi de suite.

def tri_selection(t):
    n = len(t)
    for i in range(n - 1):
        imin = i
        for j in range(i + 1, n):
            if t[j] < t[imin]:
                imin = j
        t[i], t[imin] = t[imin], t[i]
    return t

Trace sur [5, 2, 8, 1] : i = 0, le minimum est 1 (indice 3) : on obtient [1, 2, 8, 5] ; i = 1, le minimum restant est 2, déjà en place ; i = 2, le minimum de [8, 5] est 5 : on obtient [1, 2, 5, 8]. Ce tri effectue environ n²/2 comparaisons : il devient lent pour de grandes listes, d''où l''existence d''algorithmes plus rapides, comme le tri fusion.

Sur une liste triée, on peut utiliser la recherche dichotomique : on compare la valeur cherchée à l''élément du milieu et on élimine la moitié de la liste à chaque étape. Pour 1 000 éléments, une dizaine de comparaisons suffisent, car 2^10 = 1 024.

## 5. Les dictionnaires (aperçu)

Un dictionnaire associe des clés à des valeurs. Exemple : stock = {"riz": 40, "huile": 25, "sucre": 18}. stock["riz"] vaut 40 ; stock["lait"] = 10 ajoute une entrée. On le parcourt avec for produit, quantite in stock.items():. Les dictionnaires préparent à la notion d''enregistrement que l''on retrouve dans les bases de données.

## Points clés

- Une liste est indexée à partir de 0 ; len donne sa taille.
- Somme, moyenne, maximum, recherche et comptage reposent sur un parcours avec accumulateur.
- Le tri par sélection est simple mais en n² ; la dichotomie exige une liste triée.
- Le dictionnaire associe clés et valeurs.

## Exercices

- Exercice 1 : Soit notes = [12, 9, 15, 7, 14, 10]. Calculez à la main la somme, la moyenne et le nombre de notes supérieures ou égales à 10.
- Exercice 2 : Écrivez une fonction minimum(liste) qui renvoie la plus petite valeur sans utiliser min.
- Exercice 3 : Faites la trace du tri par sélection sur [4, 3, 9, 1, 6].
- Exercice 4 : Avec le dictionnaire stock = {"riz": 40, "huile": 25, "sucre": 18}, écrivez une boucle qui affiche les produits dont la quantité est inférieure à 30.

## Corrigé

- Exercice 1 : Somme = 12 + 9 + 15 + 7 + 14 + 10 = 67 ; moyenne = 67/6 ≈ 11,17 ; notes ≥ 10 : 12, 15, 14, 10, soit 4 notes.
- Exercice 2 : def minimum(liste): m = liste[0] ; for v in liste: if v < m: m = v ; return m.
- Exercice 3 : i = 0 : minimum 1, échange avec 4 : [1, 3, 9, 4, 6]. i = 1 : minimum restant 3, déjà en place. i = 2 : minimum de [9, 4, 6] = 4, échange : [1, 3, 4, 9, 6]. i = 3 : minimum de [9, 6] = 6, échange : [1, 3, 4, 6, 9].
- Exercice 4 : for produit, q in stock.items(): if q < 30: print(produit). Affiche « huile » et « sucre ».', 'texte', 55, false, 40
from public.courses c where c.slug = 'informatique-programmation-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Listes, algorithmes classiques et dictionnaires');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Bases de données relationnelles et langage SQL', '## Objectifs de la leçon

- Comprendre ce qu''est une base de données relationnelle.
- Connaître les notions de table, d''enregistrement, de clé primaire et de clé étrangère.
- Écrire des requêtes SQL simples : sélection, filtre, tri, agrégats et jointure.

## 1. Pourquoi une base de données ?

Un tableur suffit pour quelques centaines de lignes, mais une banque, un opérateur de téléphonie, une université ou un service des impôts gèrent des millions d''informations, consultées et modifiées en même temps par de nombreux utilisateurs. Une base de données est un ensemble structuré de données, géré par un système de gestion de bases de données (SGBD), qui assure le stockage, la cohérence, la sécurité, les accès simultanés et la sauvegarde. Exemples de SGBD libres : PostgreSQL, MySQL, SQLite.

## 2. Le modèle relationnel

Dans le modèle relationnel, les données sont organisées en tables (relations). Chaque table comporte des colonnes (attributs, avec un type) et des lignes (enregistrements).

- Clé primaire : colonne (ou groupe de colonnes) qui identifie chaque ligne de façon unique, par exemple le numéro d''étudiant.
- Clé étrangère : colonne qui fait référence à la clé primaire d''une autre table et crée un lien entre les tables.

Exemple : la scolarité d''une université utilise trois tables.

- ETUDIANT (num_etu, nom, prenom, ville) avec num_etu clé primaire.
- MATIERE (code_mat, intitule, coefficient) avec code_mat clé primaire.
- NOTE (num_etu, code_mat, note) : num_etu et code_mat sont des clés étrangères ; leur couple forme la clé primaire.

Ce découpage évite les redondances : le nom d''un étudiant n''est enregistré qu''une fois, même s''il a dix notes. C''est le principe de la normalisation.

## 3. Le langage SQL

SQL (Structured Query Language) permet de créer les tables, d''insérer, de modifier et surtout d''interroger les données.

Création et insertion :

CREATE TABLE etudiant (num_etu INTEGER PRIMARY KEY, nom TEXT, prenom TEXT, ville TEXT);
INSERT INTO etudiant VALUES (1, ''Diop'', ''Awa'', ''Thiès'');
INSERT INTO etudiant VALUES (2, ''Faye'', ''Moussa'', ''Dakar'');
INSERT INTO etudiant VALUES (3, ''Ba'', ''Fatou'', ''Thiès'');

Sélection et filtre :

SELECT nom, prenom FROM etudiant WHERE ville = ''Thiès'';

Résultat : Diop Awa et Ba Fatou.

Tri : SELECT * FROM etudiant ORDER BY nom; trie par ordre alphabétique (Ba, Diop, Faye). Ajouter DESC pour un ordre décroissant.

Modification et suppression : UPDATE etudiant SET ville = ''Saint-Louis'' WHERE num_etu = 2; et DELETE FROM etudiant WHERE num_etu = 3;. Attention : sans clause WHERE, UPDATE et DELETE s''appliquent à toutes les lignes.

## 4. Fonctions d''agrégation et regroupement

Les fonctions COUNT, SUM, AVG, MIN et MAX calculent une valeur sur un ensemble de lignes. GROUP BY regroupe les lignes par valeur d''une colonne ; HAVING filtre les groupes.

Supposons la table NOTE suivante : (1, ''MATH'', 14), (1, ''INFO'', 16), (2, ''MATH'', 9), (2, ''INFO'', 12), (3, ''MATH'', 11).

- SELECT AVG(note) FROM note WHERE code_mat = ''MATH''; renvoie (14 + 9 + 11) / 3 ≈ 11,33.
- SELECT num_etu, AVG(note) FROM note GROUP BY num_etu; renvoie 15 pour l''étudiant 1, 10,5 pour l''étudiant 2 et 11 pour l''étudiant 3.
- En ajoutant HAVING AVG(note) >= 11, on ne garde que les étudiants 1 et 3.

## 5. Les jointures

Une jointure combine plusieurs tables grâce aux clés :

SELECT e.nom, n.code_mat, n.note
FROM etudiant e JOIN note n ON e.num_etu = n.num_etu
WHERE n.note >= 12;

Résultat : Diop MATH 14, Diop INFO 16, Faye INFO 12.

## 6. Méthode pour écrire une requête

- Quelles colonnes veut-on afficher ? (SELECT)
- Dans quelles tables se trouvent-elles ? (FROM, et JOIN si plusieurs tables)
- Quelles lignes garder ? (WHERE)
- Faut-il regrouper ou calculer ? (GROUP BY, fonctions d''agrégation, HAVING)
- Dans quel ordre présenter ? (ORDER BY)

## 7. Python et SQL

Python peut interroger une base grâce au module sqlite3 de la bibliothèque standard :

import sqlite3
con = sqlite3.connect("scolarite.db")
for ligne in con.execute("SELECT nom, ville FROM etudiant"):
    print(ligne)
con.close()

C''est ainsi que sont construites de nombreuses applications de gestion : une interface, un programme et une base de données.

## Points clés

- Une base relationnelle organise les données en tables reliées par des clés.
- SELECT … FROM … WHERE … ORDER BY constitue la requête de base.
- COUNT, SUM, AVG avec GROUP BY permettent les statistiques ; JOIN relie les tables.
- Ne jamais lancer UPDATE ou DELETE sans WHERE réfléchi.

## Exercices

En utilisant les tables ETUDIANT et NOTE de la leçon (avant modification et suppression) :

- Exercice 1 : Écrivez la requête qui affiche le nombre d''étudiants habitant Thiès.
- Exercice 2 : Écrivez la requête qui affiche la note maximale en INFO.
- Exercice 3 : Écrivez la requête qui affiche le nom de chaque étudiant et sa moyenne, triés de la meilleure à la moins bonne moyenne. Donnez le résultat.
- Exercice 4 : Pourquoi ne stocke-t-on pas le nom de l''étudiant dans la table NOTE ?

## Corrigé

- Exercice 1 : SELECT COUNT(*) FROM etudiant WHERE ville = ''Thiès''; Résultat : 2.
- Exercice 2 : SELECT MAX(note) FROM note WHERE code_mat = ''INFO''; Résultat : 16.
- Exercice 3 : SELECT e.nom, AVG(n.note) AS moy FROM etudiant e JOIN note n ON e.num_etu = n.num_etu GROUP BY e.num_etu, e.nom ORDER BY moy DESC; Résultat : Diop 15, Ba 11, Faye 10,5.
- Exercice 4 : Pour éviter la redondance : le nom serait répété pour chaque note, avec un risque d''incohérence (une faute corrigée à un endroit et pas à l''autre). La clé étrangère num_etu suffit à retrouver le nom par jointure.', 'texte', 55, false, 50
from public.courses c where c.slug = 'informatique-programmation-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Bases de données relationnelles et langage SQL');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : du problème au programme et à la base de données', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 1 (informatique, gestion, sciences).
- Objectifs : passer d''un problème à un programme Python structuré (variables, conditions, boucles, fonctions, listes), puis stocker et interroger les données avec SQL.
- Matériel : diaporama, ordinateur avec Python 3 installé (ou un environnement en ligne), éditeur de code, base SQLite de démonstration.
- Prérequis : leçons écrites 1 à 5 de ce cours.

## Déroulé minuté

## 00:00 – 05:00 · Présentation du projet de la séance

Bonjour à toutes et à tous. Aujourd''hui, nous allons construire pas à pas un petit programme de gestion pour une boutique de quartier à Pikine, « Boutique Fallou ». Le gérant note ses ventes dans un cahier ; nous allons lui proposer un programme qui calcule le total, la moyenne, la meilleure journée, et qui enregistre les ventes dans une base de données. À chaque étape, je vous montre le code et je vous demande de prédire le résultat avant de l''exécuter.

Visuel : la page du cahier du gérant avec sept montants de ventes journalières.

## 05:00 – 15:00 · Rappels : algorithme, variables et types

Un algorithme, c''est une suite finie d''instructions précises. Avant de coder, on identifie les entrées, le traitement et la sortie. Ici, l''entrée est la liste des ventes, la sortie un petit rapport.

Je tape dans l''éditeur : nom_boutique = "Boutique Fallou", puis jours = 7. Question : quel est le type de chaque variable ? Réponse : une chaîne de caractères et un entier.

Rappel sur input : la saisie est toujours une chaîne. Si j''écris montant = input("Vente : ") puis montant * 2 avec la saisie 500, Python affiche 500500 et non 1000. Il faut écrire int(input(...)). C''est l''erreur la plus fréquente des débutants, retenez-la.

Avant d''ouvrir l''éditeur, écrivons ensemble le pseudo-code du rapport, en français structuré : lire les sept ventes ; calculer le total ; calculer la moyenne ; chercher la meilleure journée ; afficher le rapport. Ce plan en cinq lignes deviendra plus tard cinq fonctions. Je vous conseille de toujours commencer ainsi, sur papier : un programme mal pensé reste mal pensé, même tapé très vite. Question : quelle est la différence entre une erreur de syntaxe et une erreur de logique ? Réponse : la première empêche le programme de s''exécuter et Python la signale ; la seconde donne un résultat faux sans message, et seuls les tests permettent de la détecter.

## 15:00 – 27:00 · Conditions et boucles appliquées

Le gérant veut savoir si une journée est bonne. Règle choisie : au-dessus de 20 000 FCFA, « bonne journée » ; entre 10 000 et 20 000, « journée moyenne » ; en dessous, « journée faible ». J''écris un if, elif, else. Attention à l''ordre des tests et à l''indentation.

Ensuite, la boucle for pour traiter les sept jours. J''écris : for i in range(7): puis la saisie et le test. Question : combien de fois la boucle s''exécute-t-elle, et quelles valeurs prend i ? Réponse : sept fois, i va de 0 à 6.

Puis la boucle while : le gérant veut savoir combien de jours il lui faut pour atteindre 100 000 FCFA de chiffre d''affaires. Tant que le cumul est inférieur à 100 000, on ajoute la vente du jour et on compte. Je montre la trace d''exécution dans un tableau à trois colonnes : jour, vente, cumul.

## 27:00 – 40:00 · Fonctions : structurer le programme

Notre programme commence à être long. Découpons-le. Je définis une fonction categorie(vente) qui renvoie la catégorie de la journée, une fonction total(liste) et une fonction moyenne(liste) qui appelle total.

def total(liste):
    s = 0
    for v in liste:
        s = s + v
    return s

def moyenne(liste):
    return total(liste) / len(liste)

Insistez avec moi sur la différence entre afficher et renvoyer. Une fonction qui fait print montre un résultat à l''écran mais ne permet pas de le réutiliser dans un calcul ; une fonction qui fait return renvoie une valeur réutilisable.

Je documente chaque fonction par une courte phrase placée juste sous la ligne def, puis j''écris des tests avec assert. Par exemple, assert total([1, 2, 3]) == 6. Si le test échoue, Python s''arrête et signale l''erreur : c''est beaucoup plus sûr que de vérifier à l''œil.

Je teste : avec ventes = [15000, 22000, 9000, 18000, 25000, 12000, 7000], total vaut 108 000 et moyenne environ 15 428,6. Question : qui peut vérifier le total de tête ? 15 + 22 + 9 + 18 + 25 + 12 + 7 = 108 milliers. C''est juste.

## 40:00 – 48:00 · Pause interactive et quiz

Petite pause active. Prédisez les résultats.

- Question 1 : Que vaut 23 // 4 et 23 % 4 ? Réponse : 5 et 3.
- Question 2 : Que affiche ce code : x = 2, puis tant que x < 20, x = x * 2, puis afficher x ? Réponse : x vaut 4, 8, 16, 32 ; on affiche 32.
- Question 3 : ventes[−1] désigne quel élément ? Réponse : le dernier, ici 7 000.

Levez-vous, étirez-vous, on reprend avec les listes.

## 48:00 – 1:00:00 · Listes : maximum, comptage, tri

Le gérant veut connaître sa meilleure journée. J''écris l''algorithme du maximum avec l''indice : on suppose que le premier est le meilleur, puis on compare chaque élément. Résultat : indice 4, soit le cinquième jour, avec 25 000 FCFA.

Comptage des bonnes journées, au-dessus de 20 000 : 22 000 et 25 000, donc 2.

Puis le tri par sélection. Je fais la trace au tableau sur une petite liste de quatre valeurs, en expliquant chaque échange. Je compare ensuite avec sorted(ventes), qui renvoie [7000, 9000, 12000, 15000, 18000, 22000, 25000]. Question : pourquoi apprendre le tri à la main si Python le fait ? Réponse : pour comprendre le coût des algorithmes, être capable de résoudre des problèmes nouveaux et réussir les examens et entretiens techniques.

Enfin, un dictionnaire pour le stock : stock = {"riz": 40, "huile": 25, "savon": 60}. On affiche les produits à réapprovisionner quand la quantité est inférieure à 30.

## 1:00:00 – 1:12:00 · Introduction aux bases de données

Le cahier se perd, les fichiers se multiplient : il faut une base de données. Visuel : schéma de deux tables, PRODUIT (code, libelle, prix) et VENTE (num, date_vente, code_produit, quantite), reliées par la clé étrangère code_produit.

J''explique la clé primaire, qui identifie chaque ligne de façon unique, et la clé étrangère, qui relie la vente au produit. Question : pourquoi ne pas répéter le libellé et le prix dans chaque vente ? Réponse : pour éviter la redondance et les incohérences.

Je crée les tables avec CREATE TABLE, puis j''insère quelques lignes avec INSERT INTO. Par exemple : CREATE TABLE produit (code TEXT PRIMARY KEY, libelle TEXT, prix INTEGER); puis INSERT INTO produit VALUES (''R25'', ''Riz 25 kg'', 15000); Je précise que ce prix est fictif, il sert seulement à l''exemple. Je montre aussi ce qui se passe si l''on insère deux fois le même code : le SGBD refuse, car la clé primaire doit être unique. C''est une protection précieuse contre les erreurs de saisie.

Question à la classe : dans une table VENTE, peut-on avoir deux lignes avec le même code_produit ? Réponse : oui, bien sûr, un produit est vendu plusieurs fois ; c''est la clé étrangère, elle n''a pas à être unique. Seul le numéro de vente, clé primaire, est unique.

## 1:12:00 – 1:22:00 · Requêtes SQL et lien avec Python

Première requête : SELECT libelle, prix FROM produit WHERE prix > 1000 ORDER BY prix DESC; Puis une agrégation : SELECT code_produit, SUM(quantite) FROM vente GROUP BY code_produit; qui donne les quantités vendues par produit. Puis la jointure pour calculer le chiffre d''affaires par produit :

SELECT p.libelle, SUM(v.quantite * p.prix) AS ca
FROM vente v JOIN produit p ON v.code_produit = p.code
GROUP BY p.libelle ORDER BY ca DESC;

Enfin, je montre comment Python exécute cette requête avec le module sqlite3 : connexion, execute, boucle sur les lignes, fermeture. Le programme du gérant est maintenant complet : saisie, calculs, stockage, rapport.

Rappel de sécurité : jamais de DELETE ou d''UPDATE sans clause WHERE, et toujours une sauvegarde avant de modifier une base réelle.

## 1:22:00 – 1:30:00 · Synthèse et évaluation finale

Récapitulons : un problème se décompose en entrées, traitement, sortie ; les conditions et les boucles contrôlent le déroulement ; les fonctions structurent le code ; les listes et dictionnaires stockent les données en mémoire ; la base de données les conserve durablement et SQL les interroge.

Évaluation finale, cinq questions :

- Question 1 : Quelle est la différence entre = et == en Python ? Réponse : = affecte une valeur, == compare deux valeurs et renvoie un booléen.
- Question 2 : Combien de fois s''exécute for i in range(2, 10, 2) et quelles valeurs prend i ? Réponse : 4 fois, i vaut 2, 4, 6, 8.
- Question 3 : Écrivez une fonction carre(x) qui renvoie x². Réponse : def carre(x): return x * x.
- Question 4 : Que renvoie sum([3, 5, 7]) / len([3, 5, 7]) ? Réponse : 15 / 3 = 5.0.
- Question 5 : Écrivez la requête SQL qui compte les produits dont le prix dépasse 500. Réponse : SELECT COUNT(*) FROM produit WHERE prix > 500;

Merci à tous. Pour la prochaine séance, ajoutez au programme une fonction qui affiche le jour le plus faible et une requête SQL qui calcule le chiffre d''affaires total.', 'video', 90, false, 60
from public.courses c where c.slug = 'informatique-programmation-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : du problème au programme et à la base de données');

-- Cours : Mathématiques 3e : préparer le BFEM
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'maths-3e', (select id from public.levels where name = '3e'), null, 'Mathématiques', 'Mathématiques 3e : préparer le BFEM', 'Ce cours reprend les grands chapitres du programme de 3e : calcul littéral et identités remarquables, équations, inéquations et systèmes, théorèmes de Pythagore et de Thalès, trigonométrie, statistiques. Il vise la réussite au BFEM grâce à des méthodes de rédaction et un sujet type commenté. Prérequis : programme de 4e (calcul sur les relatifs et les fractions, puissances, triangle rectangle).', true, 30
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Calcul littéral et identités remarquables', '## Objectifs de la leçon

- Développer et réduire une expression littérale.
- Connaître et utiliser les trois identités remarquables.
- Factoriser une expression (facteur commun, identités remarquables).

## Vocabulaire

Une expression littérale contient des lettres qui représentent des nombres. Développer, c''est transformer un produit en somme. Factoriser, c''est l''inverse : transformer une somme en produit. Réduire, c''est regrouper les termes de même nature (les x², les x, les constantes).

## La distributivité

- Simple distributivité : k(a + b) = ka + kb.
- Double distributivité : (a + b)(c + d) = ac + ad + bc + bd.

Exemple : (2x + 3)(x − 4) = 2x × x + 2x × (−4) + 3 × x + 3 × (−4) = 2x² − 8x + 3x − 12 = 2x² − 5x − 12.

Attention aux signes devant une parenthèse : −(x − 5) = −x + 5. Quand on soustrait un produit, on le développe d''abord entre crochets, puis on change tous les signes.

## Les identités remarquables

Pour tous nombres a et b :
- (a + b)² = a² + 2ab + b²
- (a − b)² = a² − 2ab + b²
- (a + b)(a − b) = a² − b²

Exemples de développement :
- (x + 4)² = x² + 2 × x × 4 + 4² = x² + 8x + 16.
- (3x − 2)² = (3x)² − 2 × 3x × 2 + 2² = 9x² − 12x + 4.
- (5 + 2x)(5 − 2x) = 25 − 4x².

Erreur très fréquente : (a + b)² n''est pas égal à a² + b². On oublie le « double produit » 2ab. Vérification avec a = 3 et b = 4 : (3 + 4)² = 49, alors que 3² + 4² = 25.

Calcul mental grâce aux identités : 51² = (50 + 1)² = 2 500 + 100 + 1 = 2 601. 49 × 51 = (50 − 1)(50 + 1) = 2 500 − 1 = 2 499.

## Factoriser

Méthode 1, le facteur commun : ka + kb = k(a + b).
Exemple : (x + 1)(2x − 5) + (x + 1)(x + 3). Le facteur commun est (x + 1). On obtient (x + 1)[(2x − 5) + (x + 3)] = (x + 1)(3x − 2).

Méthode 2, reconnaître une identité remarquable :
- x² − 25 = x² − 5² = (x − 5)(x + 5).
- 9x² + 6x + 1 = (3x)² + 2 × 3x × 1 + 1² = (3x + 1)².
- 4x² − 20x + 25 = (2x − 5)².
- (x + 2)² − 9 = (x + 2 − 3)(x + 2 + 3) = (x − 1)(x + 5).

Pour reconnaître a² + 2ab + b², on cherche deux carrés, puis on vérifie que le terme restant est bien le double produit.

## Méthode générale pour un exercice de type BFEM

On donne souvent une expression E et on demande : développer et réduire E ; factoriser E ; calculer E pour une valeur ; résoudre E = 0.
- Pour calculer E pour une valeur, choisir la forme la plus pratique (souvent la forme factorisée).
- Vérifier une factorisation en la redéveloppant.

## Exemple concret

Un terrain carré de côté x mètres à Diamniadio est agrandi de 3 m sur chaque dimension. Sa nouvelle aire est (x + 3)² = x² + 6x + 9. L''augmentation d''aire est donc 6x + 9 m². Pour x = 20 m, l''aire passe de 400 m² à 529 m², soit 129 m² de plus (6 × 20 + 9 = 129).

## Points clés

- Développer : produit → somme. Factoriser : somme → produit.
- (a + b)² = a² + 2ab + b² ; (a − b)² = a² − 2ab + b² ; (a + b)(a − b) = a² − b².
- Ne jamais oublier le double produit.
- Toujours vérifier une factorisation en redéveloppant.

## Exercices

Exercice 1 : Développer et réduire : a) (x + 5)² ; b) (2x − 3)² ; c) (3x + 1)(3x − 1).

Exercice 2 : Factoriser : a) x² − 49 ; b) 4x² + 12x + 9 ; c) (x + 2)(3x − 1) + (x + 2)(x + 4).

Exercice 3 : Calculer mentalement en utilisant une identité : a) 101² ; b) 99 × 101.

Exercice 4 : On donne E = (2x + 1)² − (x − 3)(2x + 1). a) Développer et réduire E. b) Factoriser E. c) Calculer E pour x = −1/2.

Exercice 5 : Un champ rectangulaire mesure (x + 6) m de long et (x − 6) m de large. Exprimer son aire en fonction de x, puis la calculer pour x = 30.

## Corrigé

Exercice 1 : a) x² + 10x + 25. b) 4x² − 12x + 9. c) 9x² − 1.

Exercice 2 : a) (x − 7)(x + 7). b) (2x + 3)², car 4x² = (2x)², 9 = 3² et 12x = 2 × 2x × 3. c) (x + 2)[(3x − 1) + (x + 4)] = (x + 2)(4x + 3).

Exercice 3 : a) 101² = (100 + 1)² = 10 000 + 200 + 1 = 10 201. b) 99 × 101 = (100 − 1)(100 + 1) = 10 000 − 1 = 9 999.

Exercice 4 : a) (2x + 1)² = 4x² + 4x + 1 ; (x − 3)(2x + 1) = 2x² + x − 6x − 3 = 2x² − 5x − 3. E = 4x² + 4x + 1 − 2x² + 5x + 3 = 2x² + 9x + 4. b) E = (2x + 1)[(2x + 1) − (x − 3)] = (2x + 1)(x + 4). Vérification : (2x + 1)(x + 4) = 2x² + 8x + x + 4 = 2x² + 9x + 4. c) Pour x = −1/2, 2x + 1 = 0, donc E = 0.

Exercice 5 : Aire = (x + 6)(x − 6) = x² − 36. Pour x = 30 : 900 − 36 = 864 m² (vérification : 36 × 24 = 864).', 'texte', 50, true, 10
from public.courses c where c.slug = 'maths-3e'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Calcul littéral et identités remarquables');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Équations, inéquations et systèmes', '## Objectifs de la leçon

- Résoudre une équation du premier degré et une équation produit nul.
- Résoudre une inéquation du premier degré et représenter ses solutions.
- Résoudre un système de deux équations à deux inconnues.
- Mettre un problème en équation.

## Équations du premier degré

Une équation est une égalité contenant une inconnue. La résoudre, c''est trouver toutes les valeurs de l''inconnue qui rendent l''égalité vraie.

Règles :
- On peut ajouter ou soustraire un même nombre aux deux membres.
- On peut multiplier ou diviser les deux membres par un même nombre non nul.

Exemple : 5x − 4 = 2x + 11. On soustrait 2x : 3x − 4 = 11. On ajoute 4 : 3x = 15. On divise par 3 : x = 5. Vérification : 5 × 5 − 4 = 21 et 2 × 5 + 11 = 21.

## Équation produit nul

Propriété : un produit de facteurs est nul si et seulement si l''un au moins des facteurs est nul.

Exemple : (x − 3)(2x + 5) = 0 équivaut à x − 3 = 0 ou 2x + 5 = 0, donc x = 3 ou x = −5/2. L''ensemble des solutions est {−5/2 ; 3}.

Utilité : pour résoudre x² − 16 = 0, on factorise : (x − 4)(x + 4) = 0, donc x = 4 ou x = −4.

## Inéquations du premier degré

On résout comme une équation, avec une règle supplémentaire très importante : quand on multiplie ou divise les deux membres par un nombre négatif, on change le sens de l''inégalité.

Exemple 1 : 3x + 2 < 14. 3x < 12, donc x < 4. Les solutions sont tous les nombres strictement inférieurs à 4 ; sur une droite graduée, on hachure la partie à droite de 4 (partie qui n''est pas solution) et on met un crochet tourné vers l''extérieur de la zone solution pour montrer que 4 est exclu.

Exemple 2 : −2x + 5 ≥ 11. −2x ≥ 6. On divise par −2, on change le sens : x ≤ −3.

## Systèmes de deux équations à deux inconnues

Méthode par substitution :
- exprimer une inconnue en fonction de l''autre dans une équation ;
- remplacer dans l''autre équation ;
- résoudre puis calculer la seconde inconnue.

Exemple : x + y = 10 et 2x + 3y = 26. De la première : x = 10 − y. Dans la seconde : 2(10 − y) + 3y = 26, soit 20 + y = 26, donc y = 6 et x = 4.

Méthode par combinaison (addition) : on multiplie les équations pour que les coefficients d''une inconnue soient opposés, puis on additionne.
Exemple : 3x + 2y = 16 et 5x − 2y = 16. En additionnant : 8x = 32, donc x = 4 ; puis 12 + 2y = 16, donc y = 2.

On vérifie toujours le couple trouvé dans les deux équations.

## Mettre un problème en équation

- Choisir l''inconnue et l''écrire clairement (« soit x le prix… »).
- Traduire l''énoncé par une équation ou un système.
- Résoudre.
- Vérifier et répondre par une phrase avec l''unité.

Exemple : un tailleur de Pikine vend des chemises à 6 000 FCFA. Ses frais fixes mensuels sont de 90 000 FCFA et chaque chemise lui coûte 2 500 FCFA en tissu et fil. Combien doit-il en vendre au minimum pour faire un bénéfice positif ? Soit x le nombre de chemises. Bénéfice = 6 000x − 2 500x − 90 000 = 3 500x − 90 000. On veut 3 500x − 90 000 > 0, soit x > 90 000 / 3 500 ≈ 25,7. Il doit vendre au moins 26 chemises.

## Points clés

- Équation : mêmes opérations sur les deux membres.
- Produit nul : l''un des facteurs est nul.
- Inéquation : on change le sens quand on multiplie ou divise par un négatif.
- Système : substitution ou combinaison, puis vérification.

## Exercices

Exercice 1 : Résoudre 3x − 7 = 2x + 5.

Exercice 2 : Résoudre (x − 4)(2x + 6) = 0.

Exercice 3 : Résoudre les inéquations : a) 5x − 3 ≤ 2x + 9 ; b) −2x + 1 > 7.

Exercice 4 : Résoudre le système : x + y = 10 et 2x + 3y = 26 (par combinaison cette fois).

Exercice 5 : Au marché Castors, 3 kg de mangues et 2 kg d''oranges coûtent 2 600 FCFA ; 1 kg de mangues et 4 kg d''oranges coûtent 2 200 FCFA. Trouver le prix d''un kilogramme de chaque fruit.

## Corrigé

Exercice 1 : 3x − 2x = 5 + 7, donc x = 12. Vérification : 36 − 7 = 29 et 24 + 5 = 29.

Exercice 2 : x − 4 = 0 ou 2x + 6 = 0, donc x = 4 ou x = −3.

Exercice 3 : a) 3x ≤ 12, donc x ≤ 4. b) −2x > 6 ; on divise par −2 et on change le sens : x < −3.

Exercice 4 : On multiplie la première équation par −2 : −2x − 2y = −20. On additionne avec 2x + 3y = 26 : y = 6. Puis x = 10 − 6 = 4. Solution (4 ; 6).

Exercice 5 : Soit m le prix d''un kg de mangues et o celui d''un kg d''oranges. 3m + 2o = 2 600 et m + 4o = 2 200. De la seconde : m = 2 200 − 4o. Dans la première : 6 600 − 12o + 2o = 2 600, soit −10o = −4 000, donc o = 400 et m = 2 200 − 1 600 = 600. Le kg de mangues coûte 600 FCFA et le kg d''oranges 400 FCFA. Vérification : 1 800 + 800 = 2 600 et 600 + 1 600 = 2 200.', 'texte', 50, false, 20
from public.courses c where c.slug = 'maths-3e'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Équations, inéquations et systèmes');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Théorèmes de Pythagore et de Thalès', '## Objectifs de la leçon

- Utiliser le théorème de Pythagore et sa réciproque.
- Utiliser le théorème de Thalès et sa réciproque.
- Rédiger correctement une démonstration géométrique.

## Le théorème de Pythagore

Énoncé : si un triangle ABC est rectangle en A, alors BC² = AB² + AC². Le côté [BC], opposé à l''angle droit, est l''hypoténuse : c''est le plus long côté.

Utilisation : calculer une longueur dans un triangle rectangle.

Exemple : ABC est rectangle en A avec AB = 5 cm et AC = 12 cm. BC² = 25 + 144 = 169, donc BC = √169 = 13 cm.

Calcul d''un côté de l''angle droit : si BC = 10 et AB = 6, alors AC² = BC² − AB² = 100 − 36 = 64, donc AC = 8.

## La réciproque de Pythagore

Énoncé : si dans un triangle ABC on a BC² = AB² + AC², alors le triangle est rectangle en A.

Méthode : calculer séparément le carré du plus grand côté et la somme des carrés des deux autres. S''il y a égalité, le triangle est rectangle ; sinon, il ne l''est pas (c''est la contraposée).

Application pratique : les maçons utilisent la « règle du 3-4-5 » pour vérifier un angle droit : 3² + 4² = 9 + 16 = 25 = 5².

## Le théorème de Thalès

Configuration : deux droites (BM) et (CN) sécantes en A, avec (MN) parallèle à (BC) (configuration « triangle emboîté » ou « papillon »).

Énoncé : si les points A, M, B d''une part et A, N, C d''autre part sont alignés, et si (MN) // (BC), alors AM/AB = AN/AC = MN/BC.

Exemple : AM = 4, AB = 10, AC = 15, BC = 12, (MN) // (BC). AN = AM × AC / AB = 4 × 15 / 10 = 6. MN = AM × BC / AB = 4 × 12 / 10 = 4,8.

Application : mesurer la hauteur d''un arbre. Un bâton vertical de 1,5 m projette une ombre de 2 m ; au même moment, un fromager projette une ombre de 12 m. Les rayons du soleil sont parallèles, donc par Thalès : hauteur / 1,5 = 12 / 2, soit hauteur = 1,5 × 6 = 9 m.

## La réciproque de Thalès

Énoncé : si les points A, M, B et A, N, C sont alignés dans le même ordre, et si AM/AB = AN/AC, alors (MN) // (BC).

Méthode : calculer les deux rapports séparément (sous forme décimale ou fractions simplifiées), comparer, vérifier l''ordre des points, puis conclure.

Contraposée : si AM/AB ≠ AN/AC, alors les droites (MN) et (BC) ne sont pas parallèles.

## Rédaction type

« Dans le triangle ABC, M ∈ [AB] et N ∈ [AC], et (MN) // (BC). D''après le théorème de Thalès, AM/AB = AN/AC = MN/BC. Donc… »

Une démonstration se rédige toujours en trois temps : les données (on sait que…), la propriété utilisée (or, d''après…), la conclusion (donc…).

## Points clés

- Pythagore : triangle rectangle → calcul de longueur.
- Réciproque de Pythagore : égalité des carrés → triangle rectangle.
- Thalès : droites parallèles → rapports égaux.
- Réciproque de Thalès : rapports égaux et même ordre → droites parallèles.

## Exercices

Exercice 1 : ABC est rectangle en A, AB = 6 cm et AC = 8 cm. Calculer BC.

Exercice 2 : Un triangle a pour côtés 5 cm, 12 cm et 13 cm. Est-il rectangle ?

Exercice 3 : Dans un triangle rectangle, l''hypoténuse mesure 15 cm et un côté de l''angle droit 9 cm. Calculer le troisième côté.

Exercice 4 : Dans le triangle ABC, M ∈ [AB], N ∈ [AC] et (MN) // (BC). AM = 3 cm, AB = 5 cm, AC = 7,5 cm, BC = 6 cm. Calculer AN et MN.

Exercice 5 : A, M, B sont alignés dans cet ordre, ainsi que A, N, C. AM = 2, AB = 5, AN = 3, AC = 7,5. Les droites (MN) et (BC) sont-elles parallèles ?

## Corrigé

Exercice 1 : D''après Pythagore, BC² = 6² + 8² = 36 + 64 = 100, donc BC = 10 cm.

Exercice 2 : Le plus grand côté est 13 : 13² = 169. 5² + 12² = 25 + 144 = 169. Il y a égalité ; d''après la réciproque de Pythagore, le triangle est rectangle (l''angle droit est opposé au côté de 13 cm).

Exercice 3 : x² = 15² − 9² = 225 − 81 = 144, donc x = 12 cm.

Exercice 4 : D''après Thalès, AM/AB = AN/AC = MN/BC, soit 3/5 = AN/7,5 = MN/6. AN = 3 × 7,5 / 5 = 4,5 cm. MN = 3 × 6 / 5 = 3,6 cm.

Exercice 5 : AM/AB = 2/5 = 0,4 et AN/AC = 3/7,5 = 0,4. Les rapports sont égaux et les points sont alignés dans le même ordre ; d''après la réciproque de Thalès, (MN) // (BC).', 'texte', 50, false, 30
from public.courses c where c.slug = 'maths-3e'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Théorèmes de Pythagore et de Thalès');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Trigonométrie dans le triangle rectangle', '## Objectifs de la leçon

- Définir le cosinus, le sinus et la tangente d''un angle aigu.
- Calculer une longueur ou un angle dans un triangle rectangle.
- Utiliser les relations cos² x + sin² x = 1 et tan x = sin x / cos x.

## Définitions

Dans un triangle ABC rectangle en A, pour l''angle aigu B :
- le côté adjacent à B est [AB] ;
- le côté opposé à B est [AC] ;
- l''hypoténuse est [BC].

On définit :
- cos B = côté adjacent / hypoténuse = AB / BC ;
- sin B = côté opposé / hypoténuse = AC / BC ;
- tan B = côté opposé / côté adjacent = AC / AB.

Moyen mnémotechnique : « SOH CAH TOA » (Sinus = Opposé / Hypoténuse ; Cosinus = Adjacent / Hypoténuse ; Tangente = Opposé / Adjacent).

Pour un angle aigu, le cosinus et le sinus sont compris entre 0 et 1 (car l''hypoténuse est le plus grand côté). La tangente est un nombre positif quelconque.

## Relations trigonométriques

Pour tout angle aigu x :
- cos² x + sin² x = 1 ;
- tan x = sin x / cos x.

Démonstration rapide de la première : cos² B + sin² B = (AB² + AC²) / BC² = BC² / BC² = 1, d''après Pythagore.

Exemple : si cos x = 0,8, alors sin² x = 1 − 0,64 = 0,36, donc sin x = 0,6 (positif car x est aigu), et tan x = 0,6 / 0,8 = 0,75.

## Valeurs remarquables

- cos 30° = √3/2 ≈ 0,866 ; sin 30° = 1/2 ; tan 30° = √3/3 ≈ 0,577.
- cos 45° = sin 45° = √2/2 ≈ 0,707 ; tan 45° = 1.
- cos 60° = 1/2 ; sin 60° = √3/2 ≈ 0,866 ; tan 60° = √3 ≈ 1,732.

## Méthode : calculer une longueur

- Repérer l''angle connu et situer les côtés (adjacent, opposé, hypoténuse).
- Choisir la formule qui relie le côté connu et le côté cherché.
- Écrire l''égalité, puis isoler l''inconnue.

Exemple : ABC rectangle en A, angle B = 40°, BC = 8 cm. Calculer AB. AB est adjacent à B et BC est l''hypoténuse : cos 40° = AB / 8, donc AB = 8 × cos 40° ≈ 8 × 0,766 ≈ 6,13 cm.

## Méthode : calculer un angle

On calcule le cosinus, le sinus ou la tangente de l''angle, puis on utilise la touche cos⁻¹ (ou Arccos), sin⁻¹ ou tan⁻¹ de la calculatrice, réglée en degrés.

Exemple : une rampe d''accès pour fauteuil roulant monte de 1 m sur une distance horizontale de 12 m. tan x = 1 / 12 ≈ 0,0833, donc x ≈ 4,8°.

## Application concrète

Un technicien installe une antenne de téléphonie près de Louga. Il tend un câble entre le sommet de l''antenne et un point du sol situé à 15 m de son pied. Le câble fait un angle de 60° avec le sol. Hauteur de l''antenne : tan 60° = h / 15, donc h = 15 × √3 ≈ 25,98 m, soit environ 26 m. Longueur du câble : cos 60° = 15 / L, donc L = 15 / 0,5 = 30 m.

## Points clés

- cos = adjacent / hypoténuse ; sin = opposé / hypoténuse ; tan = opposé / adjacent.
- cos² x + sin² x = 1 et tan x = sin x / cos x.
- Calculatrice en mode degrés ; arrondir seulement à la fin.

## Exercices

Exercice 1 : ABC est rectangle en A avec AB = 4, AC = 3 et BC = 5. Calculer cos B, sin B et tan B.

Exercice 2 : ABC est rectangle en A, l''angle B mesure 30° et BC = 10 cm. Calculer AC et AB (valeur exacte et arrondi au centième).

Exercice 3 : x est un angle aigu tel que cos x = 0,6. Calculer sin x et tan x.

Exercice 4 : Une échelle de 5 m est appuyée contre un mur vertical. Elle fait un angle de 60° avec le sol horizontal. À quelle hauteur arrive-t-elle sur le mur ? À quelle distance du mur est son pied ?

Exercice 5 : Dans un triangle rectangle en A, AB = AC = 7 cm. Calculer la mesure de l''angle B.

## Corrigé

Exercice 1 : cos B = AB / BC = 4/5 = 0,8 ; sin B = AC / BC = 3/5 = 0,6 ; tan B = AC / AB = 3/4 = 0,75. Vérification : 0,8² + 0,6² = 0,64 + 0,36 = 1.

Exercice 2 : AC est opposé à B : sin 30° = AC / 10, donc AC = 10 × 1/2 = 5 cm. AB est adjacent : cos 30° = AB / 10, donc AB = 10 × √3/2 = 5√3 ≈ 8,66 cm.

Exercice 3 : sin² x = 1 − 0,36 = 0,64, donc sin x = 0,8. tan x = 0,8 / 0,6 = 4/3 ≈ 1,33.

Exercice 4 : Hauteur : sin 60° = h / 5, donc h = 5 × √3/2 ≈ 4,33 m. Distance au mur : cos 60° = d / 5, donc d = 5 × 0,5 = 2,5 m.

Exercice 5 : tan B = AC / AB = 7/7 = 1, donc B = 45°. (Le triangle est rectangle isocèle.)', 'texte', 45, false, 40
from public.courses c where c.slug = 'maths-3e'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Trigonométrie dans le triangle rectangle');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Statistiques et méthode pour le BFEM', '## Objectifs de la leçon

- Organiser des données et calculer effectifs, fréquences et effectifs cumulés.
- Calculer une moyenne (simple et pondérée), une médiane, un mode, une étendue.
- Représenter une série (diagramme en bâtons, circulaire, histogramme).
- Adopter une méthode efficace pour l''épreuve de mathématiques du BFEM.

## Vocabulaire

- Population : l''ensemble étudié (les élèves d''une classe, les boutiques d''un quartier).
- Caractère : ce que l''on étudie (la note, le nombre d''enfants, le chiffre d''affaires).
- Effectif d''une valeur : le nombre de fois où elle apparaît. Effectif total : N.
- Fréquence : effectif / effectif total. On l''exprime souvent en pourcentage.
- Effectif cumulé croissant : somme des effectifs des valeurs inférieures ou égales.

## Les indicateurs

- Moyenne : somme des valeurs / effectif total. Si les données sont dans un tableau, moyenne pondérée = (somme des valeurs × effectifs) / N.
- Médiane : valeur qui partage la série ordonnée en deux groupes de même effectif. Si N est impair, c''est la valeur du milieu ; si N est pair, c''est la moyenne des deux valeurs centrales.
- Mode : la valeur qui a le plus grand effectif.
- Étendue : plus grande valeur − plus petite valeur.

## Exemple 1 : une série simple

Notes sur 20 de 11 élèves : 8 ; 12 ; 15 ; 10 ; 9 ; 14 ; 12 ; 7 ; 16 ; 12 ; 11.
Série ordonnée : 7 ; 8 ; 9 ; 10 ; 11 ; 12 ; 12 ; 12 ; 14 ; 15 ; 16.
- Somme : 126. Moyenne : 126 / 11 ≈ 11,45.
- Médiane : N = 11, la 6e valeur : 12.
- Mode : 12 (trois fois). Étendue : 16 − 7 = 9.

## Exemple 2 : un tableau d''effectifs

Une enquête dans un quartier de Rufisque porte sur le nombre d''enfants de 50 familles :
- 0 enfant : 4 familles ; 1 : 6 ; 2 : 10 ; 3 : 12 ; 4 : 8 ; 5 : 6 ; 6 : 4.

Moyenne : (0 × 4 + 1 × 6 + 2 × 10 + 3 × 12 + 4 × 8 + 5 × 6 + 6 × 4) / 50 = (0 + 6 + 20 + 36 + 32 + 30 + 24) / 50 = 148 / 50 = 2,96 enfants.

Effectifs cumulés croissants : 4 ; 10 ; 20 ; 32 ; 40 ; 46 ; 50. La médiane est la moyenne des 25e et 26e valeurs ; toutes deux valent 3 (car l''effectif cumulé passe de 20 à 32 pour la valeur 3). Médiane : 3.

Fréquence des familles de 3 enfants : 12 / 50 = 0,24 = 24 %.

## Représentations graphiques

- Diagramme en bâtons : pour un caractère discret ; hauteur du bâton proportionnelle à l''effectif.
- Diagramme circulaire : angle d''un secteur = 360° × effectif / N. Pour 12 familles sur 50 : 360 × 12 / 50 = 86,4°.
- Histogramme : pour des données regroupées en classes de même amplitude ; rectangles accolés.

Pour une série en classes, on calcule la moyenne en utilisant le centre de chaque classe : centre de [10 ; 20[ = 15.

## Préparer l''épreuve de mathématiques du BFEM

Les informations officielles (durée, barème, coefficients) sont fixées par l''Office du BFEM et le ministère : consultez toujours les textes et annales officielles de l''année. Voici une méthode générale qui vaut pour toute épreuve écrite :
- Lire tout le sujet au début (5 minutes) et commencer par l''exercice où l''on est le plus à l''aise.
- Écrire les calculs intermédiaires : une bonne démarche rapporte des points même si le résultat final est faux.
- Rédiger les démonstrations avec « on sait que », « d''après », « donc ».
- Faire des figures propres, avec règle et compas, en respectant les mesures.
- Garder 10 minutes à la fin pour relire, vérifier les unités et les réponses rédigées.
- S''entraîner sur des annales en temps limité dans les semaines qui précèdent l''examen.

## Points clés

- Moyenne pondérée : somme des produits valeur × effectif, divisée par N.
- Médiane : ranger d''abord la série ; utiliser les effectifs cumulés.
- Angle du diagramme circulaire : 360° × effectif / N.
- Au BFEM : démarche visible, rédaction rigoureuse, relecture.

## Exercices

Exercice 1 : Série : 5 ; 8 ; 8 ; 10 ; 12 ; 15 ; 18 ; 20. Calculer la moyenne, la médiane, le mode et l''étendue.

Exercice 2 : Une vendeuse note le nombre de sachets d''eau vendus par jour pendant 30 jours : [0 ; 10[ : 5 jours ; [10 ; 20[ : 8 jours ; [20 ; 30[ : 12 jours ; [30 ; 40[ : 5 jours. Calculer la moyenne en utilisant les centres des classes.

Exercice 3 : Dans l''exercice 2, quelle est la fréquence en pourcentage de la classe [20 ; 30[ ?

Exercice 4 : Toujours dans l''exercice 2, calculer l''angle du secteur de la classe [20 ; 30[ dans un diagramme circulaire.

Exercice 5 : Un élève a obtenu 14 en mathématiques (coefficient 4), 11 en français (coefficient 3), 13 en SVT (coefficient 2) et 15 en anglais (coefficient 1). Calculer sa moyenne.

## Corrigé

Exercice 1 : Somme : 5 + 8 + 8 + 10 + 12 + 15 + 18 + 20 = 96 ; moyenne : 96 / 8 = 12. Médiane : N = 8, moyenne des 4e et 5e valeurs : (10 + 12) / 2 = 11. Mode : 8. Étendue : 20 − 5 = 15.

Exercice 2 : Centres : 5 ; 15 ; 25 ; 35. Moyenne : (5 × 5 + 15 × 8 + 25 × 12 + 35 × 5) / 30 = (25 + 120 + 300 + 175) / 30 = 620 / 30 ≈ 20,7 sachets par jour.

Exercice 3 : 12 / 30 = 0,4 = 40 %.

Exercice 4 : 360° × 12 / 30 = 144°.

Exercice 5 : (14 × 4 + 11 × 3 + 13 × 2 + 15 × 1) / (4 + 3 + 2 + 1) = (56 + 33 + 26 + 15) / 10 = 130 / 10 = 13.', 'texte', 50, false, 50
from public.courses c where c.slug = 'maths-3e'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Statistiques et méthode pour le BFEM');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : sujet type de BFEM commenté', '## Fiche du cours vidéo

- Durée : 1h30.
- Thème : sujet type de BFEM commenté pas à pas.
- Objectifs : traiter un sujet complet couvrant calcul littéral, équations, Pythagore et Thalès, trigonométrie et statistiques ; apprendre à rédiger et à gérer son temps.
- Matériel : tableau ou diaporama, règle, équerre, compas, calculatrice scientifique, brouillon.
- Prérequis : leçons 1 à 5 du cours. Le sujet présenté est un sujet d''entraînement conçu pour ce cours, pas un sujet officiel.

## Déroulé minuté

## 00:00 – 05:00 · Introduction

« Bonjour à tous. Aujourd''hui, nous faisons ensemble un sujet complet de type BFEM. Je vais vous montrer non seulement les réponses, mais surtout la manière de rédiger. À l''examen, ce n''est pas seulement le résultat qui compte : le correcteur veut voir votre raisonnement. Avant chaque exercice, je vous demanderai de mettre la vidéo en pause et de chercher seuls. »

Visuel : le sujet en trois parties : Activités numériques (exercices 1 et 2), Activités géométriques (exercices 3 et 4), Statistiques (exercice 5).

## 05:00 – 12:00 · Méthode : lire le sujet et gérer son temps

« La première chose à faire le jour de l''examen, c''est de lire tout le sujet. Soulignez les verbes : “développer”, “factoriser”, “justifier”, “en déduire”. Le mot “en déduire” signifie que vous devez utiliser le résultat de la question précédente. Ensuite, répartissez votre temps : un peu plus pour la géométrie, qui demande une figure. Gardez toujours dix minutes à la fin pour relire. »

Question à poser : « Si vous bloquez sur une question, que faites-vous ? » Réponse : on admet le résultat et on continue avec les questions suivantes.

## 12:00 – 25:00 · Exercice 1 : calcul littéral

Énoncé affiché : « On donne F = (3x − 2)² − (3x − 2)(x + 4). 1) Développer et réduire F. 2) Factoriser F. 3) Résoudre F = 0. 4) Calculer F pour x = 0. »

« Pause, cherchez cinq minutes. »

Correction rédigée au tableau :
- (3x − 2)² = 9x² − 12x + 4.
- (3x − 2)(x + 4) = 3x² + 12x − 2x − 8 = 3x² + 10x − 8.
- F = 9x² − 12x + 4 − 3x² − 10x + 8 = 6x² − 22x + 12.

« Attention au signe moins devant le produit : je développe d''abord le produit, puis je change tous les signes. »

Factorisation : F = (3x − 2)[(3x − 2) − (x + 4)] = (3x − 2)(2x − 6). « Je vérifie : (3x − 2)(2x − 6) = 6x² − 18x − 4x + 12 = 6x² − 22x + 12. C''est bon. »

Équation : F = 0 équivaut à 3x − 2 = 0 ou 2x − 6 = 0, donc x = 2/3 ou x = 3.

Calcul pour x = 0 : avec la forme développée, F = 12. « Toujours choisir la forme la plus simple pour calculer. »

## 25:00 – 37:00 · Exercice 2 : système et problème

Énoncé : « Pour une kermesse à l''école, on vend des tickets adultes et des tickets enfants. On a vendu 120 tickets pour une recette de 54 000 FCFA. Un ticket adulte coûte 600 FCFA et un ticket enfant 300 FCFA. Combien de tickets de chaque sorte ? »

« Je choisis mes inconnues : soit a le nombre de tickets adultes et e le nombre de tickets enfants. Je traduis : a + e = 120 et 600a + 300e = 54 000. Je simplifie la seconde équation en divisant par 300 : 2a + e = 180. Je soustrais la première : a = 60. Donc e = 60. »

Vérification : 60 + 60 = 120 et 600 × 60 + 300 × 60 = 36 000 + 18 000 = 54 000. « Réponse rédigée : on a vendu 60 tickets adultes et 60 tickets enfants. »

## 37:00 – 45:00 · Pause et quiz interactif

« Petite pause de deux minutes, puis quiz éclair. »

- Question 1 : (a − b)² = ? Réponse : a² − 2ab + b².
- Question 2 : Résoudre −3x > 12. Réponse : x < −4.
- Question 3 : Un triangle de côtés 6, 8, 10 est-il rectangle ? Réponse : oui, 36 + 64 = 100.
- Question 4 : Que vaut cos 60° ? Réponse : 1/2.
- Question 5 : Médiane de 3 ; 5 ; 9 ; 11 ? Réponse : (5 + 9) / 2 = 7.

## 45:00 – 58:00 · Exercice 3 : Pythagore et Thalès

Énoncé : « ABC est un triangle tel que AB = 9 cm, AC = 12 cm, BC = 15 cm. 1) Montrer que ABC est rectangle. 2) M est le point de [AB] tel que AM = 3 cm ; la parallèle à (BC) passant par M coupe [AC] en N. Calculer AN et MN. »

« Question 1 : le plus grand côté est [BC]. BC² = 225. AB² + AC² = 81 + 144 = 225. Rédaction : on constate que BC² = AB² + AC² ; d''après la réciproque du théorème de Pythagore, le triangle ABC est rectangle en A. »

« Question 2 : on sait que M ∈ [AB], N ∈ [AC] et (MN) // (BC). D''après le théorème de Thalès : AM/AB = AN/AC = MN/BC, soit 3/9 = AN/12 = MN/15. Donc AN = 12 × 3 / 9 = 4 cm et MN = 15 × 3 / 9 = 5 cm. »

Visuel : la figure construite à l''échelle, avec le codage de l''angle droit en A.

« Un mot sur la figure. Pour la construire, je trace d''abord [AB] de 9 cm, puis la perpendiculaire en A avec l''équerre, sur laquelle je place C à 12 cm. Je contrôle : [BC] doit mesurer 15 cm, ce qui confirme mon calcul. Ensuite je place M à 3 cm de A sur [AB] et je trace la parallèle à (BC) avec la règle et l''équerre. Je mesure AN : je dois trouver 4 cm. Une figure soignée permet de vérifier vos résultats et de détecter une erreur de calcul. »

## 58:00 – 1:08:00 · Exercice 4 : trigonométrie

Énoncé : « Dans le triangle ABC précédent, rectangle en A, calculer cos B, puis la mesure de l''angle B arrondie au degré. »

« cos B = AB / BC = 9 / 15 = 0,6. Avec la calculatrice en mode degrés, cos⁻¹(0,6) ≈ 53,13°, donc B ≈ 53°. Je peux vérifier avec la tangente : tan B = AC / AB = 12 / 9 ≈ 1,333, et tan⁻¹(1,333) ≈ 53,13°. Les deux résultats concordent. »

Question à poser : « Combien mesure alors l''angle C ? » Réponse : environ 90° − 53,13° = 36,87°, soit environ 37°.

## 1:08:00 – 1:18:00 · Exercice 5 : statistiques

Énoncé : « Le tableau donne l''âge des 25 joueurs d''une équipe de navétanes : 18 ans : 3 ; 19 ans : 5 ; 20 ans : 8 ; 21 ans : 6 ; 22 ans : 3. Calculer l''âge moyen, l''âge médian et le mode. »

« Moyenne : (18 × 3 + 19 × 5 + 20 × 8 + 21 × 6 + 22 × 3) / 25 = (54 + 95 + 160 + 126 + 66) / 25 = 501 / 25 = 20,04 ans. »

« Médiane : N = 25, c''est la 13e valeur. Effectifs cumulés : 3 ; 8 ; 16 ; 22 ; 25. La 13e valeur est dans la classe 20 ans, donc la médiane est 20 ans. Le mode est 20 ans, car c''est l''effectif le plus grand (8). »

« On peut aussi demander la fréquence des joueurs de 20 ans : 8 / 25 = 0,32, soit 32 %. Et pour un diagramme circulaire, l''angle correspondant serait 360° × 8 / 25 = 115,2°. »

## 1:18:00 – 1:24:00 · Synthèse : les erreurs à éviter

- Oublier le double produit dans (a + b)².
- Oublier de changer les signes devant une parenthèse précédée d''un moins.
- Oublier de changer le sens d''une inéquation quand on divise par un négatif.
- Utiliser Pythagore sans avoir justifié que le triangle est rectangle.
- Calculatrice en mode radians au lieu de degrés.
- Calculer une médiane sans avoir rangé la série.

## 1:24:00 – 1:30:00 · Évaluation finale

« Dernières minutes : cinq questions pour vérifier vos acquis. »

- Question 1 : Factoriser x² − 64. Réponse : (x − 8)(x + 8).
- Question 2 : Résoudre 4x − 9 = x + 6. Réponse : 3x = 15, x = 5.
- Question 3 : ABC rectangle en A, AB = 7, AC = 24. Calculer BC. Réponse : √(49 + 576) = √625 = 25.
- Question 4 : Dans un triangle rectangle, côté opposé 5 et hypoténuse 10 : quel est l''angle ? Réponse : sin = 0,5, angle = 30°.
- Question 5 : Moyenne de 10, 12, 14, 16 ? Réponse : 52 / 4 = 13.

« Bravo ! Refaites ce sujet seuls dans quelques jours, en temps limité, sans regarder la correction. C''est la meilleure préparation au BFEM. Bon courage ! »', 'video', 90, false, 60
from public.courses c where c.slug = 'maths-3e'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : sujet type de BFEM commenté');

-- Cours : Maîtriser les dépenses de carburant
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'formation-carburant', (select id from public.levels where name = 'Formation professionnelle'), 'carburant', 'Gestion du carburant', 'Maîtriser les dépenses de carburant', 'Cette formation apprend à mesurer la consommation (L/100 km), organiser les bons et cartes carburant, détecter les fraudes et anomalies, bâtir un budget, déployer l''éco-conduite et suivre un tableau de bord. Elle s''adresse aux responsables de flotte, gestionnaires administratifs et financiers, chefs de parc et dirigeants de PME. Prérequis : savoir calculer un pourcentage et utiliser un tableur simple.', true, 40
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Mesurer la consommation : le L/100 km et ses facteurs', '## Objectifs de la leçon

Savoir calculer la consommation d''un véhicule en litres aux 100 km par la méthode du « plein à plein », calculer la consommation horaire d''un engin, transformer une consommation en coût au kilomètre et identifier les facteurs qui font varier la consommation.

## Pourquoi mesurer d''abord ?

Dans beaucoup d''entreprises, le carburant est l''un des premiers postes de dépenses de la flotte, et souvent le moins bien suivi. On connaît le montant total payé à la station, mais pas la consommation réelle de chaque véhicule. Sans mesure, impossible de savoir si un véhicule consomme trop, si un chauffeur gaspille ou si des litres disparaissent. La première étape de toute maîtrise des dépenses est donc la mesure fiable.

## La consommation aux 100 km

La consommation s''exprime en litres aux 100 kilomètres (L/100 km) :

Consommation = litres consommés / kilomètres parcourus × 100.

Exemple : un véhicule a consommé 66 litres pour parcourir 600 km. Consommation = 66 / 600 × 100 = 11 L/100 km.

## La méthode du plein à plein

C''est la méthode la plus fiable sans équipement électronique.

- Étape 1 : faire le plein complet et noter le kilométrage au compteur (par exemple 45 230 km).
- Étape 2 : utiliser normalement le véhicule, en notant chaque ravitaillement intermédiaire (litres et kilométrage).
- Étape 3 : refaire le plein complet et noter le kilométrage (par exemple 45 830 km) et les litres servis.
- Étape 4 : additionner les litres servis depuis le premier plein (exclu) jusqu''au dernier plein (inclus), et diviser par la distance.

Exemple : entre 45 230 km et 45 830 km, on a parcouru 600 km. Un ravitaillement intermédiaire de 30 L, puis un plein final de 36 L : total 66 L. Consommation : 11 L/100 km.

Le piège principal : un kilométrage mal noté. Une erreur de 100 km sur 600 km fausse le résultat d''environ 17 %. Il faut donc exiger le relevé du compteur à chaque ravitaillement, idéalement vérifié par une personne autre que le chauffeur.

## Les engins et groupes électrogènes : la consommation horaire

Pour un groupe électrogène, une pelleteuse ou un chariot élévateur, on raisonne en litres par heure de fonctionnement :

Consommation horaire = litres consommés / heures de fonctionnement (lues sur le compteur horaire).

Exemple : un groupe électrogène d''un hôtel de Saly a consommé 540 L pendant 120 heures de marche. Consommation = 540 / 120 = 4,5 L/h.

## Du litre au coût au kilomètre

Coût carburant au km = consommation (L/100 km) / 100 × prix du litre.

Exemple avec un prix de 800 FCFA par litre (prix fictif pour l''exemple ; les prix à la pompe sont fixés par les autorités et évoluent, il faut utiliser le prix en vigueur) : 11 / 100 × 800 = 88 FCFA par km. Un véhicule qui roule 3 000 km par mois coûte donc 264 000 FCFA de carburant par mois.

## Les facteurs qui font varier la consommation

- Le véhicule : type, motorisation, âge, état d''entretien (filtres, injecteurs, réglages).
- Les pneus : sous-gonflés, ils augmentent la résistance au roulement.
- La charge : un camion chargé consomme plus qu''à vide ; la surcharge augmente encore la consommation et l''usure.
- L''itinéraire : embouteillages urbains, pistes, relief, routes dégradées en saison des pluies.
- La conduite : accélérations brutales, vitesse élevée, freinages tardifs, moteur au ralenti à l''arrêt.
- La climatisation et les équipements consommateurs.

C''est pourquoi il faut comparer chaque véhicule à une consommation de référence établie pour sa catégorie et son type de mission (urbain, interurbain, chantier), à partir de l''historique de l''entreprise et des données du constructeur, plutôt qu''à un chiffre unique pour toute la flotte.

## Points clés

- Consommation = litres / km × 100.
- La méthode du plein à plein donne une mesure fiable à condition que les kilométrages soient exacts.
- Pour les engins et groupes : litres par heure.
- Coût au km = L/100 km / 100 × prix du litre.
- Chaque véhicule se compare à une référence adaptée à sa catégorie et à sa mission.

## Exercices

Exercice 1. Un pick-up est passé de 12 400 km à 13 150 km. Les litres servis depuis le premier plein (exclu) jusqu''au dernier plein (inclus) sont 40 L puis 50 L. Calculez sa consommation.

Exercice 2. Avec un prix fictif de 800 FCFA par litre, calculez le coût carburant au km de ce pick-up, puis le coût pour 2 500 km par mois.

Exercice 3. Un groupe électrogène a tourné 200 heures et consommé 1 000 L. Calculez sa consommation horaire.

Exercice 4. Un chauffeur a noté 13 050 km au lieu de 13 150 km au dernier plein de l''exercice 1. Quelle consommation aurait-on calculée ? Commentez.

## Corrigé

Exercice 1. Distance : 13 150 − 12 400 = 750 km. Litres : 40 + 50 = 90 L. Consommation : 90 / 750 × 100 = 12 L/100 km.

Exercice 2. Coût au km : 12 / 100 × 800 = 96 FCFA. Pour 2 500 km : 2 500 × 96 = 240 000 FCFA par mois.

Exercice 3. 1 000 / 200 = 5 L/h.

Exercice 4. Distance erronée : 13 050 − 12 400 = 650 km. Consommation : 90 / 650 × 100 ≈ 13,8 L/100 km. Une simple erreur de relevé fait apparaître une surconsommation d''environ 15 % qui n''existe pas. Le contrôle des kilométrages est donc indispensable avant toute conclusion.', 'texte', 45, true, 10
from public.courses c where c.slug = 'formation-carburant'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Mesurer la consommation : le L/100 km et ses facteurs');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Bons, cartes carburant et procédures d''approvisionnement', '## Objectifs de la leçon

Comprendre les différents modes d''approvisionnement en carburant (bons papier, cartes carburant, cuve interne), mettre en place une procédure claire de la demande au rapprochement, et savoir rapprocher les bons émis avec le relevé du fournisseur.

## Les trois modes d''approvisionnement

Le paiement en espèces par le chauffeur est le mode le plus risqué : il laisse peu de traces et rend les contrôles très difficiles. Les entreprises qui veulent maîtriser leurs dépenses utilisent l''un des trois modes suivants.

- Les bons carburant papier : carnets à souches pré-numérotés, remis par la station partenaire ou édités par l''entreprise. Chaque bon indique le véhicule, la quantité ou le montant autorisé, la date et la signature de l''autorisateur. La station facture ensuite l''entreprise en joignant les bons utilisés.
- Les cartes carburant : cartes émises par un réseau de stations, attribuées à un véhicule ou à un chauffeur, protégées par un code personnel. Elles permettent de fixer des plafonds (litres par jour, montant par mois), de limiter les produits autorisés et d''obtenir un relevé électronique détaillé de chaque transaction (date, heure, station, litres, montant, kilométrage saisi).
- La cuve interne : l''entreprise achète en gros et distribue sur son site. Il faut alors tenir un registre de distribution, sécuriser la pompe et jauger régulièrement la cuve.

Chaque mode a ses avantages. Les bons sont simples mais lourds à contrôler. Les cartes donnent une traçabilité forte mais dépendent du réseau de stations disponible sur les itinéraires. La cuve interne réduit les déplacements, mais exige une gestion de stock rigoureuse.

## La procédure d''approvisionnement

Une bonne procédure sépare les rôles : celui qui demande n''est pas celui qui autorise, et celui qui autorise n''est pas celui qui contrôle.

- Demande : le chauffeur ou le chef de parc exprime le besoin (véhicule, mission, kilométrage actuel).
- Autorisation : le responsable vérifie la cohérence (le véhicule a-t-il été ravitaillé récemment ? la mission justifie-t-elle la quantité ?) et signe le bon, ou vérifie que la carte est active.
- Approvisionnement : le chauffeur se ravitaille, fait noter les litres, le montant et le kilométrage sur le bon ou les saisit sur le terminal.
- Remise des justificatifs : le chauffeur rapporte la souche ou le ticket le jour même.
- Saisie : les données sont saisies dans un registre ou un tableur (date, véhicule, chauffeur, km, litres, montant).
- Rapprochement : en fin de mois, on compare les données internes avec la facture ou le relevé du fournisseur.

## Le rapprochement bons / relevé

Le rapprochement consiste à vérifier ligne par ligne que chaque transaction facturée correspond à une autorisation interne, et inversement.

Exemple : une entreprise de BTP de Thiès a émis 5 bons en une semaine. Registre interne :

- bon 1201 : véhicule AA-01, 60 L ;
- bon 1202 : véhicule AA-02, 45 L ;
- bon 1203 : véhicule AA-03, 70 L ;
- bon 1204 : véhicule AA-01, 55 L ;
- bon 1205 : annulé (souche barrée).

Relevé de la station :

- bon 1201 : 60 L ;
- bon 1202 : 54 L ;
- bon 1203 : 70 L ;
- bon 1204 : 55 L ;
- bon 1205 : 40 L.

Constats : le bon 1202 est facturé 54 L au lieu de 45 L (écart de 9 L à expliquer) ; le bon 1205, annulé chez nous, a été utilisé à la station (anomalie grave : un bon annulé doit être restitué ou détruit sous contrôle). Avant de payer la facture, il faut demander les justificatifs à la station et entendre les personnes concernées.

## Règles de sécurité des bons et cartes

- Conserver les carnets de bons sous clé et tenir un registre des carnets remis.
- Ne jamais signer un bon en blanc.
- Récupérer ou neutraliser les bons annulés.
- Pour les cartes : code personnel non communiqué, plafonds adaptés à la mission, opposition immédiate en cas de perte ou de départ du chauffeur.
- Exiger la saisie du kilométrage à chaque transaction.

## Points clés

- Éviter les paiements en espèces non tracés.
- Bons, cartes et cuve interne exigent chacun des règles de contrôle adaptées.
- Séparer demande, autorisation et contrôle.
- Rapprocher chaque mois registre interne et relevé fournisseur avant paiement.

## Exercices

Exercice 1. Citez deux avantages des cartes carburant par rapport aux bons papier.

Exercice 2. Rapprochez les données suivantes. Registre : bon 3301 = 50 L ; bon 3302 = 40 L ; bon 3303 = 60 L. Relevé : bon 3301 = 50 L ; bon 3302 = 40 L ; bon 3303 = 66 L ; bon 3304 = 35 L. Quelles anomalies relevez-vous ?

Exercice 3. Pourquoi la personne qui autorise un bon ne devrait-elle pas être celle qui fait le rapprochement ?

Exercice 4. Le réservoir du véhicule AA-03 a une capacité de 65 L. Le bon 1203 de l''exemple (70 L) vous paraît-il normal ?

## Corrigé

Exercice 1. Par exemple : relevé électronique détaillé de chaque transaction (date, heure, station, litres) ; plafonds automatiques ; possibilité de faire opposition immédiatement ; limitation des produits autorisés.

Exercice 2. Bon 3303 : 66 L facturés au lieu de 60 L, écart de 6 L à justifier. Bon 3304 : facturé mais absent du registre ; il faut vérifier si le carnet a été perdu ou si un bon a été utilisé sans autorisation. Paiement à suspendre sur ces deux lignes.

Exercice 3. C''est le principe de séparation des tâches : une même personne ne peut pas à la fois autoriser une dépense et vérifier qu''elle est régulière, sinon une erreur ou une fraude pourrait ne jamais être détectée.

Exercice 4. Non : 70 L dépassent la capacité du réservoir (65 L), même en arrivant à sec. Soit une partie du carburant a été mise dans un autre récipient ou un autre véhicule, soit la quantité est mal saisie. C''est une anomalie à vérifier.', 'texte', 45, false, 20
from public.courses c where c.slug = 'formation-carburant'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Bons, cartes carburant et procédures d''approvisionnement');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Contrôler et détecter les fraudes et anomalies', '## Objectifs de la leçon

Connaître les principales formes de fraude et d''anomalie sur le carburant, appliquer des tests de cohérence simples, analyser les écarts de consommation par rapport à une référence et mettre en place un dispositif de contrôle équitable.

## Anomalie ou fraude ?

Une anomalie est une donnée qui sort de la normale : consommation trop élevée, ravitaillement à une heure inhabituelle, quantité supérieure au réservoir. Une anomalie n''est pas forcément une fraude : elle peut venir d''une erreur de saisie, d''un véhicule défectueux ou d''une mission inhabituelle. Le rôle du contrôleur est de repérer les anomalies, de les vérifier, puis seulement de conclure. Toute sanction doit respecter le règlement intérieur, les droits de la défense et la réglementation du travail en vigueur.

## Les formes de fraude les plus courantes

- Siphonnage : carburant retiré du réservoir pour être revendu.
- Ravitaillement d''un véhicule personnel avec la carte ou les bons de l''entreprise.
- Remplissage de bidons en même temps que le véhicule.
- Surfacturation : la quantité facturée dépasse la quantité réellement servie, parfois avec complicité à la station.
- Kilométrages falsifiés pour masquer une surconsommation.
- Détournement à la cuve interne : distribution non enregistrée.
- Trajets privés avec le véhicule de service.

## Les tests de cohérence

Ces tests se font simplement dans un tableur, chaque mois.

- Test de capacité : litres servis supérieurs à la capacité du réservoir.
- Test de fréquence : deux ravitaillements trop rapprochés (même jour, peu de kilomètres entre les deux).
- Test d''horaire : ravitaillement la nuit, le dimanche ou pendant un congé du chauffeur.
- Test de lieu : station éloignée de l''itinéraire de la mission.
- Test de kilométrage : kilométrage qui diminue, qui ne bouge pas, ou nombres trop « ronds ».
- Test de consommation : consommation hors de la fourchette de référence.

## L''analyse par écart à la référence

Méthode :

- fixer une consommation de référence par catégorie (par exemple 12 L/100 km pour les camionnettes de livraison urbaine de l''entreprise, valeur interne fondée sur l''historique) ;
- fixer une tolérance (par exemple plus ou moins 15 %, seuil interne à adapter) ;
- calculer la consommation réelle de chaque véhicule sur le mois ;
- signaler les véhicules hors fourchette.

Fourchette : 12 × 0,85 = 10,2 et 12 × 1,15 = 13,8 L/100 km.

Exemple sur cinq camionnettes :

- V1 : 1 500 km, 180 L, soit 12,0 L/100 km : normal.
- V2 : 1 200 km, 186 L, soit 15,5 L/100 km : alerte.
- V3 : 900 km, 99 L, soit 11,0 L/100 km : normal.
- V4 : 2 000 km, 230 L, soit 11,5 L/100 km : normal.
- V5 : 800 km, 128 L, soit 16,0 L/100 km : alerte.

Pour V2 et V5, on vérifie d''abord les relevés de kilométrage, puis l''état mécanique (passage à l''atelier), puis les missions (charge, itinéraire). Si rien ne l''explique, on examine les transactions une à une avec les tests de cohérence. L''excédent de V5 par rapport à la référence est de 128 − 800 × 12 / 100 = 128 − 96 = 32 L sur le mois.

## Les moyens de contrôle complémentaires

- La télématique (boîtier GPS) : elle donne les kilomètres réels, les trajets et les temps de ralenti, et certaines solutions mesurent le niveau du réservoir.
- Les contrôles inopinés : jaugeage des réservoirs, vérification des compteurs.
- Le bouchon de réservoir antivol et le scellé sur les cuves.
- La rotation des personnes chargées du contrôle.
- La communication : expliquer que des contrôles existent a souvent un effet dissuasif fort.

## Points clés

- Une anomalie se vérifie avant de conclure à une fraude.
- Six tests simples : capacité, fréquence, horaire, lieu, kilométrage, consommation.
- Comparer chaque véhicule à une référence de sa catégorie avec une tolérance.
- Combiner analyse des données, contrôles physiques et dissuasion.

## Exercices

Exercice 1. Référence : 30 L/100 km pour les camions de l''entreprise, tolérance de plus ou moins 10 %. Calculez la fourchette admise.

Exercice 2. Camion T1 : 2 400 km, 744 L. Camion T2 : 1 800 km, 612 L. Camion T3 : 3 000 km, 870 L. Calculez leurs consommations et identifiez les alertes.

Exercice 3. Pour le camion en alerte, calculez l''excédent en litres et son coût avec un prix fictif de 750 FCFA par litre.

Exercice 4. Une carte carburant a enregistré deux transactions le même jour, à 7 h 10 et à 9 h 40, pour 60 L chacune, avec un kilométrage passé de 80 120 à 80 165 km. Que concluez-vous ?

## Corrigé

Exercice 1. 30 × 0,9 = 27 et 30 × 1,1 = 33 L/100 km.

Exercice 2. T1 : 744 / 2 400 × 100 = 31 L/100 km, normal. T2 : 612 / 1 800 × 100 = 34 L/100 km, alerte. T3 : 870 / 3 000 × 100 = 29 L/100 km, normal.

Exercice 3. Consommation de référence pour T2 : 1 800 × 30 / 100 = 540 L. Excédent : 612 − 540 = 72 L. Coût : 72 × 750 = 54 000 FCFA sur la période.

Exercice 4. 120 L pour 45 km parcourus, c''est incohérent : le premier plein aurait dû suffire largement. C''est une anomalie forte (test de fréquence) : vérifier les tickets, interroger le chauffeur, contrôler si du carburant a pu être mis dans un autre véhicule ou un bidon.', 'texte', 60, false, 30
from public.courses c where c.slug = 'formation-carburant'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Contrôler et détecter les fraudes et anomalies');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Construire un budget carburant et déployer l''éco-conduite', '## Objectifs de la leçon

Savoir construire un budget carburant à partir de l''activité prévue, analyser l''écart entre budget et réalisé en séparant l''effet prix et l''effet quantité, et chiffrer l''intérêt d''un programme d''éco-conduite.

## Construire le budget

Un budget carburant sérieux ne se construit pas en ajoutant un pourcentage aux dépenses de l''an passé. Il part de l''activité prévue :

Budget = kilomètres prévus × consommation de référence / 100 × prix prévu du litre.

Méthode :

- estimer les kilomètres par véhicule ou par catégorie, à partir des missions prévues (tournées, chantiers, contrats) ;
- appliquer la consommation de référence de chaque catégorie ;
- appliquer le prix du litre prévu (prix en vigueur au moment du budget, avec éventuellement une hypothèse d''évolution) ;
- ajouter les engins et groupes électrogènes (heures prévues × L/h) ;
- découper le budget par mois pour tenir compte de la saisonnalité (campagne agricole, saison des pluies, fêtes).

Exemple : une société de distribution de Dakar a 10 camionnettes qui roulent chacune 3 000 km par mois, avec une référence de 12 L/100 km et un prix fictif de 800 FCFA par litre.

- Litres par mois : 10 × 3 000 × 12 / 100 = 3 600 L.
- Budget mensuel : 3 600 × 800 = 2 880 000 FCFA.
- Budget annuel : 2 880 000 × 12 = 34 560 000 FCFA.

Sensibilité au prix : si le prix augmente de 5 %, le budget mensuel augmente de 2 880 000 × 5 % = 144 000 FCFA.

## Analyser l''écart budget / réalisé

En fin de mois, on compare le réalisé au budget et on décompose l''écart :

- écart total = coût réel − coût budgété ;
- écart sur prix = (prix réel − prix budgété) × quantité réelle ;
- écart sur quantité = (quantité réelle − quantité budgétée) × prix budgété.

La somme des deux écarts égale l''écart total.

Exemple : budget 3 600 L à 800 FCFA, soit 2 880 000 FCFA. Réalisé : 3 900 L à 820 FCFA, soit 3 198 000 FCFA.

- Écart total : 3 198 000 − 2 880 000 = 318 000 FCFA (défavorable).
- Écart sur prix : (820 − 800) × 3 900 = 78 000 FCFA.
- Écart sur quantité : (3 900 − 3 600) × 800 = 240 000 FCFA.
- Vérification : 78 000 + 240 000 = 318 000 FCFA.

Lecture : l''essentiel du dépassement vient des quantités, sur lesquelles l''entreprise peut agir. Il faut alors savoir si les kilomètres ont augmenté (plus d''activité, ce qui peut être une bonne nouvelle) ou si c''est la consommation aux 100 km qui a dérivé.

## L''éco-conduite

L''éco-conduite est une manière de conduire qui réduit la consommation, l''usure et les accidents. Ses principes :

- anticiper la circulation pour éviter les freinages et accélérations brusques ;
- passer les rapports tôt et rouler à régime modéré ;
- respecter les limitations de vitesse et adopter une vitesse stable sur route ;
- couper le moteur lors des arrêts prolongés (attente chez un client, chargement) ;
- vérifier régulièrement la pression des pneus ;
- éviter la surcharge et les charges inutiles ;
- utiliser la climatisation avec mesure ;
- respecter le plan d''entretien (filtres, vidanges, réglages).

Un programme d''éco-conduite comprend une formation théorique et pratique, un suivi individuel de la consommation et une reconnaissance des progrès (classement, prime, félicitations).

## Chiffrer le gain

Les économies varient beaucoup selon le point de départ ; il faut les mesurer sur sa propre flotte. Prenons une hypothèse de 8 % de réduction de la consommation (hypothèse fictive pour l''exemple).

- Litres économisés par mois : 3 600 × 8 % = 288 L.
- Économie mensuelle : 288 × 800 = 230 400 FCFA.
- Économie annuelle : 230 400 × 12 = 2 764 800 FCFA.
- Si la formation coûte 1 500 000 FCFA, le délai de récupération est de 1 500 000 / 230 400 ≈ 6,5 mois.

## Points clés

- Budget = km prévus × référence / 100 × prix.
- L''écart se décompose en effet prix (subi) et effet quantité (pilotable).
- L''éco-conduite agit sur la consommation, l''usure et la sécurité.
- Tout gain se mesure avant et après, sur la flotte réelle.

## Exercices

Exercice 1. Une ONG de Tambacounda a 4 véhicules tout-terrain roulant chacun 2 500 km par mois, avec une référence de 14 L/100 km et un prix fictif de 780 FCFA par litre. Calculez le budget mensuel et annuel.

Exercice 2. Budget : 1 400 L à 780 FCFA. Réalisé : 1 500 L à 800 FCFA. Calculez l''écart total, l''écart sur prix et l''écart sur quantité.

Exercice 3. Avec une hypothèse fictive de 10 % d''économie grâce à l''éco-conduite, quel est le gain mensuel pour l''ONG de l''exercice 1 ? Si la formation coûte 600 000 FCFA, en combien de mois est-elle remboursée ?

## Corrigé

Exercice 1. Litres : 4 × 2 500 × 14 / 100 = 1 400 L par mois. Budget mensuel : 1 400 × 780 = 1 092 000 FCFA. Budget annuel : 1 092 000 × 12 = 13 104 000 FCFA.

Exercice 2. Réel : 1 500 × 800 = 1 200 000 FCFA. Écart total : 1 200 000 − 1 092 000 = 108 000 FCFA défavorable. Écart sur prix : (800 − 780) × 1 500 = 30 000 FCFA. Écart sur quantité : (1 500 − 1 400) × 780 = 78 000 FCFA. Vérification : 30 000 + 78 000 = 108 000 FCFA.

Exercice 3. Économie : 1 400 × 10 % = 140 L par mois, soit 140 × 780 = 109 200 FCFA. Délai de récupération : 600 000 / 109 200 ≈ 5,5 mois.', 'texte', 60, false, 40
from public.courses c where c.slug = 'formation-carburant'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Construire un budget carburant et déployer l''éco-conduite');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Piloter avec un tableau de bord carburant', '## Objectifs de la leçon

Savoir choisir les indicateurs d''un tableau de bord carburant, organiser la collecte des données, présenter les résultats sur une page et transformer les alertes en actions.

## À quoi sert le tableau de bord ?

Le tableau de bord carburant répond chaque mois à quatre questions : combien avons-nous dépensé par rapport au budget ? Nos véhicules consomment-ils normalement ? Nos données sont-elles fiables ? Quelles anomalies faut-il traiter ? Il s''adresse au responsable de flotte, au contrôleur de gestion et à la direction.

## Les indicateurs recommandés

Indicateurs de dépense :

- dépense totale du mois et cumul depuis le début de l''année, comparés au budget ;
- coût carburant par kilomètre (FCFA/km) ;
- prix moyen payé par litre.

Indicateurs de consommation :

- consommation par véhicule (L/100 km ou L/h) et écart à la référence ;
- consommation moyenne par catégorie ;
- nombre de véhicules hors tolérance.

Indicateurs de fiabilité des données :

- pourcentage de transactions avec kilométrage renseigné ;
- nombre de bons ou tickets non rapprochés.

Indicateurs de contrôle :

- nombre d''anomalies détectées, vérifiées, confirmées ;
- litres excédentaires par rapport à la référence et leur valeur.

## Organiser les données

Le tableau de bord ne vaut que par la qualité de ses données. Il faut une base unique (un tableur suffit au début) avec une ligne par ravitaillement et les colonnes suivantes : date, heure, véhicule, chauffeur, station ou cuve, kilométrage, litres, prix unitaire, montant, numéro de bon ou de transaction.

Les calculs se font ensuite automatiquement. Par exemple, dans un tableur où la colonne B contient les kilomètres du mois et la colonne C les litres, la consommation en D s''obtient par la formule =C2/B2*100. Un tableau croisé dynamique permet de totaliser les litres et montants par véhicule.

## Présenter sur une page

Une bonne présentation comprend :

- un bandeau de synthèse : dépense du mois, budget, écart en valeur et en pourcentage ;
- un tableau par véhicule : km, litres, L/100 km, référence, écart, couleur ;
- un graphique d''évolution sur 12 mois de la dépense et du coût au km ;
- la liste des anomalies avec leur statut et le responsable du traitement.

Code couleur : vert si l''indicateur est dans l''objectif, orange en zone de vigilance, rouge s''il faut agir. Les seuils sont fixés à l''avance, par exemple pour la consommation : vert jusqu''à 5 % au-dessus de la référence, orange de 5 à 15 %, rouge au-delà (seuils internes à adapter).

## Exemple de synthèse mensuelle

Une entreprise de distribution de Kaolack présente pour le mois :

- dépense : 3 198 000 FCFA pour un budget de 2 880 000 FCFA, soit un écart de 318 000 FCFA (+11 %) ;
- kilomètres parcourus : 30 750 km ;
- coût par km : 3 198 000 / 30 750 = 104 FCFA ;
- transactions avec kilométrage renseigné : 172 sur 184, soit environ 93,5 % ;
- anomalies : 6 détectées, 4 vérifiées, 1 confirmée.

Lecture : la dépense dépasse le budget de 11 % ; il faut savoir si c''est dû à l''activité (les kilomètres prévus étaient de 30 000) ou à la consommation. Consommation moyenne réelle : 3 900 L / 30 750 km × 100 ≈ 12,7 L/100 km, contre 12 de référence : la dérive est d''environ 5,7 %, zone orange. Avec 12 transactions sans kilométrage, une partie des calculs n''est pas fiable : l''action prioritaire est d''exiger le kilométrage à chaque ravitaillement.

## De l''alerte à l''action

Chaque indicateur rouge doit donner lieu à une fiche d''action : constat, cause probable, action décidée, responsable, échéance, résultat attendu. Le tableau de bord du mois suivant vérifie si l''action a produit son effet. Un tableau de bord qui n''entraîne aucune décision devient vite un rapport que personne ne lit.

## Points clés

- Quatre familles d''indicateurs : dépense, consommation, fiabilité des données, contrôle.
- Une base de données unique, une ligne par ravitaillement.
- Une page de synthèse avec code couleur et évolution sur 12 mois.
- Chaque alerte rouge déclenche une action suivie.

## Exercices

Exercice 1. Dépense du mois : 1 650 000 FCFA ; kilomètres : 15 000. Calculez le coût par km.

Exercice 2. Sur 240 transactions, 210 ont un kilométrage renseigné. Calculez le taux de fiabilité.

Exercice 3. Référence 12 L/100 km. Seuils : vert jusqu''à +5 %, orange de +5 à +15 %, rouge au-delà. Classez trois véhicules consommant 12,4 ; 13,2 et 14,1 L/100 km.

Exercice 4. Dans un tableur, la colonne E contient les litres et la colonne F les kilomètres. Écrivez la formule de consommation pour la ligne 5.

## Corrigé

Exercice 1. 1 650 000 / 15 000 = 110 FCFA par km.

Exercice 2. 210 / 240 = 87,5 %.

Exercice 3. Seuils : 12 × 1,05 = 12,6 et 12 × 1,15 = 13,8. 12,4 : vert ; 13,2 : orange ; 14,1 : rouge.

Exercice 4. =E5/F5*100.', 'texte', 45, false, 50
from public.courses c where c.slug = 'formation-carburant'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Piloter avec un tableau de bord carburant');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : reprendre le contrôle des dépenses de carburant', '## Fiche du cours vidéo

Durée : 1h30. Public : responsables de flotte, chefs de parc, comptables et contrôleurs de gestion, dirigeants de PME et d''ONG.

Objectifs : calculer une consommation fiable ; organiser bons, cartes et rapprochements ; détecter les anomalies par des tests simples ; construire un budget et analyser les écarts ; chiffrer l''éco-conduite ; lire un tableau de bord carburant.

Matériel : diaporama, tableau blanc, calculatrice, un tableur avec un fichier d''exemple de ravitaillements, un modèle de bon carburant vierge.

Prérequis : avoir suivi les leçons 1 à 5, ou gérer au quotidien les dépenses d''une flotte.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture : le carburant, une dépense qui fuit

Texte du formateur : « Bonjour à tous. Commençons par une question simple : combien votre entreprise a-t-elle dépensé en carburant le mois dernier ? Et combien de litres chacun de vos véhicules a-t-il consommés aux 100 kilomètres ? En général, on connaît la première réponse, rarement la seconde. Or, tant qu''on ne mesure pas la consommation véhicule par véhicule, on ne maîtrise rien. Aujourd''hui, nous allons suivre une entreprise fictive, Transports Baobab, basée à Thiès, qui exploite dix camionnettes et deux groupes électrogènes, et dont la facture de carburant dépasse le budget depuis trois mois. »

Visuel : courbe des dépenses de Transports Baobab sur six mois, au-dessus de la ligne de budget.

## 05:00 – 17:00 · Mesurer : le plein à plein

Texte du formateur : « Première étape : mesurer. La formule est simple : litres divisés par kilomètres, multipliés par 100. Toute la difficulté est dans la qualité des relevés. Prenons la camionnette n°4. Plein complet à 45 230 km. Ravitaillement intermédiaire de 30 litres. Plein complet à 45 830 km avec 36 litres. Distance : 600 km. Litres : 66. Consommation : 11 litres aux 100. »

Texte du formateur : « Attention à l''erreur de relevé. Si le chauffeur note 100 km de moins, la consommation calculée grimpe artificiellement. Avant d''accuser quelqu''un, on vérifie toujours le compteur. Pour les groupes électrogènes, on raisonne en litres par heure, avec le compteur horaire : 540 litres pour 120 heures, soit 4,5 litres par heure. »

Texte du formateur : « Transformons en argent. Avec un prix fictif de 800 FCFA le litre, 11 litres aux 100, c''est 88 FCFA par kilomètre. À 3 000 km par mois, 264 000 FCFA pour un seul véhicule. »

Question posée : « Quels facteurs, dans votre contexte, font monter la consommation ? » Réponses attendues : embouteillages, pistes, charge, pneus mal gonflés, ralenti, climatisation.

## 17:00 – 30:00 · Organiser : bons, cartes, procédure et rapprochement

Texte du formateur : « Chez Transports Baobab, les chauffeurs paient souvent en espèces et rapportent un ticket, quand ils y pensent. C''est la porte ouverte aux erreurs et aux abus. Trois solutions : les bons pré-numérotés, les cartes carburant avec plafonds et code personnel, ou une cuve interne bien gérée. Quelle que soit la solution, appliquez la séparation des tâches : celui qui demande n''autorise pas, celui qui autorise ne contrôle pas. »

Visuel : schéma de la procédure demande – autorisation – ravitaillement – remise du justificatif – saisie – rapprochement.

Texte du formateur : « Faisons ensemble un rapprochement. Registre interne : bon 1202, 45 litres. Relevé de la station : 54 litres. Écart de 9 litres. Bon 1205 : annulé chez nous, mais facturé 40 litres par la station. Que fait-on ? On suspend le paiement de ces lignes, on demande les justificatifs, on entend les personnes. On ne paie jamais une facture carburant sans rapprochement. »

## 30:00 – 45:00 · Détecter : les six tests de cohérence

Texte du formateur : « Passons à la détection. Retenez six tests : capacité, fréquence, horaire, lieu, kilométrage, consommation. Un plein de 70 litres pour un réservoir de 65 : impossible. Deux pleins à deux heures d''intervalle avec 45 kilomètres entre les deux : suspect. Un ravitaillement un dimanche à 23 heures alors que le véhicule est au garage : à vérifier. »

Texte du formateur : « Le test de consommation est le plus puissant. Fixons une référence de 12 litres aux 100 pour les camionnettes, avec une tolérance de 15 %. La fourchette est de 10,2 à 13,8. Regardons les cinq premières camionnettes. V1 : 12. V3 : 11. V4 : 11,5. Tout va bien. V2 : 15,5. V5 : 16. Ces deux-là sont en alerte. Pour V5, l''excédent est de 32 litres sur le mois. »

Visuel : tableau des cinq véhicules avec mise en forme conditionnelle.

Texte du formateur : « Et je le répète : une anomalie n''est pas une preuve. On vérifie d''abord le compteur, puis la mécanique, puis la mission. Ensuite seulement, on examine les transactions une par une. »

Texte du formateur : « Quels outils complètent ces tests ? La télématique d''abord : un boîtier GPS donne les kilomètres réellement parcourus, les trajets et les temps de moteur au ralenti. Si le boîtier indique 1 000 km et que le chauffeur en déclare 1 200, la discussion change de nature. Ensuite les contrôles physiques inopinés : on jauge un réservoir au retour de mission, on vérifie le compteur, on contrôle les scellés de la cuve. Enfin la dissuasion : annoncer clairement que les données sont analysées chaque mois réduit souvent les abus avant même le premier contrôle. Et n''oubliez pas le cadre : toute sanction se prend dans le respect du règlement intérieur et de la réglementation du travail en vigueur. »

Question posée : « Dans votre entreprise, lequel de ces six tests pourriez-vous mettre en place dès la semaine prochaine, avec les données que vous avez déjà ? » Laisser deux ou trois participants répondre et noter les réponses au tableau.

## 45:00 – 52:00 · Pause interactive et quiz

Texte du formateur : « Petite pause active. Quatre questions, trois minutes. »

- Question 1 : 90 litres pour 750 km. Consommation ?
- Question 2 : référence 30 L/100 km, tolérance 10 %. Fourchette ?
- Question 3 : un camion consomme 34 L/100 km sur 1 800 km avec une référence de 30. Excédent en litres ?
- Question 4 : qui ne doit pas faire le rapprochement des bons ?

Correction : 1) 12 L/100 km ; 2) 27 à 33 L/100 km ; 3) 612 − 540 = 72 litres ; 4) la personne qui a autorisé les bons.

## 52:00 – 1:05:00 · Budgéter et analyser les écarts

Texte du formateur : « Construisons le budget de Transports Baobab. Dix camionnettes, 3 000 km par mois chacune, référence 12 litres aux 100 : 3 600 litres par mois. Au prix fictif de 800 FCFA : 2 880 000 FCFA par mois, 34 560 000 FCFA par an. »

Texte du formateur : « Le mois dernier, réalisé : 3 900 litres à 820 FCFA, soit 3 198 000 FCFA. Écart : 318 000 FCFA. D''où vient-il ? Écart sur prix : 20 FCFA de plus par litre, multipliés par 3 900 litres réels, soit 78 000 FCFA. Écart sur quantité : 300 litres de plus, multipliés par 800 FCFA budgétés, soit 240 000 FCFA. Total : 318 000. Le prix, on le subit ; les quantités, on peut les piloter. »

Visuel : graphique en barres décomposant l''écart en effet prix et effet quantité.

Question posée : « Les 300 litres en plus sont-ils forcément une mauvaise nouvelle ? » Réponse : non, si l''activité a augmenté ; il faut comparer les kilomètres réels aux kilomètres prévus.

## 1:05:00 – 1:13:00 · Économiser : l''éco-conduite

Texte du formateur : « L''éco-conduite, c''est anticiper, rouler à régime modéré, couper le moteur à l''arrêt, surveiller les pneus, éviter la surcharge. C''est aussi une question de sécurité : un chauffeur qui anticipe freine moins et a moins d''accidents. Chiffrons : avec une hypothèse fictive de 8 % d''économie, Transports Baobab économise 288 litres par mois, soit 230 400 FCFA. Une formation à 1 500 000 FCFA est remboursée en six mois et demi environ. Mais attention : on mesure avant et après, sur sa propre flotte, au lieu de croire une promesse. »

Visuel : liste des huit gestes d''éco-conduite illustrés.

Question posée : « Comment motiver les chauffeurs sans les mettre sous pression ? » Pistes attendues : partager les résultats individuels de façon respectueuse, féliciter les progrès, associer les chauffeurs au choix des gestes, prévoir une reconnaissance collective quand l''objectif est atteint.

## 1:13:00 – 1:21:00 · Piloter : le tableau de bord sur une page

Texte du formateur : « Tout cela se résume dans un tableau de bord mensuel. En haut, la synthèse : dépense, budget, écart. Au milieu, un tableau par véhicule avec la consommation, la référence et une couleur. En bas, la liste des anomalies et leur statut. À Transports Baobab, 172 transactions sur 184 ont un kilométrage renseigné, soit 93,5 % : tant que ce chiffre n''atteint pas 100 %, une partie de nos calculs reste fragile. »

Visuel : maquette du tableau de bord avec code couleur.

Texte du formateur : « Chaque case rouge devient une fiche d''action : constat, cause, action, responsable, échéance. Le mois suivant, on vérifie le résultat. »

## 1:21:00 – 1:30:00 · Synthèse et évaluation finale

Texte du formateur : « Récapitulons en cinq verbes : mesurer, organiser, détecter, budgéter, piloter. Mesurer avec le plein à plein et des kilométrages fiables. Organiser avec des bons ou des cartes et la séparation des tâches. Détecter avec six tests de cohérence. Budgéter à partir de l''activité et séparer effet prix et effet quantité. Piloter avec un tableau de bord d''une page suivi d''actions. »

Évaluation finale, cinq questions :

- Question 1 : 66 litres pour 600 km. Consommation ? Réponse : 11 L/100 km.
- Question 2 : 12 L/100 km et un prix fictif de 800 FCFA/L. Coût au km ? Réponse : 96 FCFA.
- Question 3 : budget 1 400 L à 780 FCFA ; réel 1 500 L à 800 FCFA. Écart sur prix ? Réponse : 20 × 1 500 = 30 000 FCFA.
- Question 4 : citez trois tests de cohérence. Réponse : par exemple capacité, fréquence, horaire (ou lieu, kilométrage, consommation).
- Question 5 : 1 650 000 FCFA pour 15 000 km. Coût par km ? Réponse : 110 FCFA.

Texte du formateur : « Votre mission : dès demain, créez votre fichier de ravitaillements, une ligne par plein, avec le kilométrage. Dans un mois, vous aurez votre premier tableau de bord. Merci à toutes et à tous. »', 'video', 90, false, 60
from public.courses c where c.slug = 'formation-carburant'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : reprendre le contrôle des dépenses de carburant');

-- Cours : Organiser un service de transport de voyageurs et du personnel
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'formation-gestion-transport', (select id from public.levels where name = 'Formation professionnelle'), 'transport', 'Transport de voyageurs', 'Organiser un service de transport de voyageurs et du personnel', 'Cette formation montre comment concevoir des lignes et des horaires, affecter chauffeurs et véhicules, organiser la billetterie et le contrôle des recettes, piloter la sécurité routière et la qualité de service, et calculer la rentabilité d''une ligne. Elle s''adresse aux exploitants de transport urbain et interurbain, aux responsables du transport du personnel et aux gestionnaires de flotte. Prérequis : aisance avec les calculs de base et les pourcentages.', true, 50
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Concevoir les lignes et les horaires', '## Objectifs de la leçon

Savoir décrire une ligne de transport, calculer son temps de rotation, déterminer la fréquence nécessaire à partir de la demande, calculer le nombre de véhicules à mobiliser et construire une grille horaire, pour une ligne ouverte au public comme pour un circuit de transport du personnel.

## Les notions de base

- Une ligne est un itinéraire fixe entre deux terminus, desservant des arrêts.
- Le temps de parcours est la durée d''un trajet d''un terminus à l''autre, arrêts compris.
- Le battement (ou temps de terminus) est la pause au terminus avant le départ suivant : il sert à absorber les retards, à laisser souffler le chauffeur et à embarquer les passagers.
- Le temps de rotation (ou temps de cycle) est la durée d''un aller-retour complet : aller + battement + retour + battement.
- L''intervalle est le temps qui sépare deux départs successifs dans le même sens. La fréquence est le nombre de départs par heure : fréquence = 60 / intervalle (en minutes).

## Calculer le nombre de véhicules

Nombre de véhicules nécessaires = temps de rotation / intervalle, arrondi à l''entier supérieur.

Exemple : une ligne urbaine de 18 km. Aller : 50 minutes. Retour : 50 minutes. Battement : 10 minutes à chaque terminus. Temps de rotation : 50 + 10 + 50 + 10 = 120 minutes. Si l''on veut un départ toutes les 15 minutes, il faut 120 / 15 = 8 véhicules en ligne. Si l''intervalle voulu était de 14 minutes, on aurait 120 / 14 ≈ 8,6, soit 9 véhicules.

## Déterminer l''intervalle à partir de la demande

On part de la demande à l''heure de pointe, dans le sens le plus chargé, au point le plus chargé de la ligne.

Nombre de passages nécessaires par heure = demande horaire / capacité utile d''un véhicule.

La capacité utile est le nombre de places que l''on accepte d''occuper, compte tenu du confort et des règles de sécurité. On ne planifie jamais en surcharge.

Exemple : 480 voyageurs par heure dans le sens le plus chargé, véhicules de 60 places. Il faut 480 / 60 = 8 passages par heure, soit un intervalle de 60 / 8 = 7,5 minutes. En heures creuses, si la demande tombe à 180 voyageurs par heure, 3 passages suffisent, soit un intervalle de 20 minutes.

Moduler l''intervalle selon les heures permet de ne pas faire rouler des véhicules vides en milieu de journée.

## Construire la grille horaire

Méthode :

- fixer l''heure du premier et du dernier départ en fonction des besoins (début des cours, des marchés, des prises de poste) ;
- découper la journée en périodes (pointe du matin, creuse, pointe du soir) avec un intervalle pour chacune ;
- calculer les heures de passage à chaque arrêt principal en ajoutant les temps de parcours partiels ;
- vérifier que le nombre de véhicules disponibles permet de tenir l''intervalle de pointe ;
- afficher la grille aux arrêts et la communiquer (affichage, messagerie, radio locale).

Exemple : premier départ 6 h 00, intervalle de 15 minutes jusqu''à 9 h 00 : 6 h 00, 6 h 15, 6 h 30, 6 h 45, 7 h 00, et ainsi de suite.

## Le transport du personnel

Pour une usine, une zone industrielle ou un grand hôtel, on organise des circuits de ramassage. La logique est différente :

- les horaires sont dictés par les prises et fins de poste (par exemple équipes de 6 h, 14 h et 22 h) ;
- on recense les adresses des employés et on les regroupe par quartiers ;
- chaque circuit part du quartier le plus éloigné et arrive sur le site un peu avant la prise de poste, pour laisser le temps de se changer ;
- la capacité est connue à l''avance : on dimensionne exactement.

Exemple : une usine de Diamniadio emploie 210 personnes sur l''équipe du matin. Avec des minibus de 30 places, il faut au moins 210 / 30 = 7 circuits. Si les employés viennent de quatre zones (Rufisque, Keur Massar, Pikine, Bargny), on répartit les 7 minibus selon les effectifs de chaque zone.

## Points clés

- Temps de rotation = aller + retour + battements.
- Nombre de véhicules = rotation / intervalle, arrondi au supérieur.
- L''intervalle se déduit de la demande au point le plus chargé et de la capacité utile.
- La grille horaire varie selon les périodes de la journée.
- Le transport du personnel suit les horaires d''équipe et les lieux de résidence.

## Exercices

Exercice 1. Une ligne a un aller de 35 minutes, un retour de 35 minutes et un battement de 5 minutes à chaque terminus. Calculez le temps de rotation et le nombre de véhicules nécessaires pour un intervalle de 20 minutes.

Exercice 2. La demande de pointe est de 300 voyageurs par heure, avec des véhicules de 50 places. Calculez le nombre de passages par heure et l''intervalle.

Exercice 3. Écrivez la grille des départs de 6 h 00 à 7 h 00 avec un intervalle de 20 minutes.

Exercice 4. Une entreprise doit transporter 95 agents avec des minibus de 25 places. Combien de minibus faut-il au minimum ?

## Corrigé

Exercice 1. Rotation : 35 + 5 + 35 + 5 = 80 minutes. Véhicules : 80 / 20 = 4 véhicules.

Exercice 2. Passages : 300 / 50 = 6 par heure. Intervalle : 60 / 6 = 10 minutes.

Exercice 3. 6 h 00, 6 h 20, 6 h 40, 7 h 00.

Exercice 4. 95 / 25 = 3,8, arrondi au supérieur : 4 minibus.', 'texte', 60, true, 10
from public.courses c where c.slug = 'formation-gestion-transport'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Concevoir les lignes et les horaires');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Affecter les chauffeurs et les véhicules', '## Objectifs de la leçon

Savoir calculer le parc de véhicules nécessaire en incluant une réserve, dimensionner l''effectif de chauffeurs, construire un roulement équitable et organiser l''affectation quotidienne dans le respect de la réglementation et de la sécurité.

## Du besoin en ligne au parc total

Le calcul de la leçon précédente donne le nombre de véhicules en ligne à l''heure de pointe. Mais il faut aussi des véhicules de réserve pour remplacer ceux qui sont en panne, en entretien préventif ou en contrôle technique.

Parc total = véhicules en ligne + réserve.

Le taux de réserve se fixe selon l''âge du parc et la qualité de l''entretien. Avec un taux de réserve de 10 % (taux interne fictif pour l''exemple) et 8 véhicules en ligne : 8 × 10 % = 0,8, arrondi à 1 véhicule de réserve. Parc total : 9 véhicules.

Un planning d''entretien préventif (vidanges, freins, pneus) doit être tenu : on immobilise les véhicules à tour de rôle, de préférence en heures creuses ou le dimanche, pour ne jamais descendre sous le nombre requis à la pointe.

## Le service et le roulement

Un service (ou vacation) est la journée de travail d''un chauffeur : heure de prise, trajets, pauses, heure de fin. Un roulement est l''organisation qui fait tourner les chauffeurs sur les différents services et jours de repos, sur plusieurs semaines.

Règles à respecter :

- la réglementation en vigueur sur la durée du travail, les temps de conduite, les pauses et le repos ; elle doit être vérifiée auprès des textes officiels et peut évoluer (le Sénégal prépare notamment un nouveau Code du travail) ;
- le permis de conduire de la catégorie requise pour le transport de personnes, en cours de validité, et les éventuelles aptitudes médicales exigées ;
- l''équité : services du matin, du soir et du week-end répartis entre tous ;
- la stabilité : un chauffeur qui connaît sa ligne est plus sûr et plus ponctuel.

## Dimensionner l''effectif de chauffeurs

Méthode :

- compter le nombre de services à assurer par semaine ;
- diviser par le nombre de services qu''un chauffeur fait par semaine ;
- ajouter une marge pour les congés, maladies et formations.

Exemple : 8 véhicules en ligne, de 6 h à 22 h, 7 jours sur 7, avec deux services par véhicule et par jour (6 h – 14 h et 14 h – 22 h).

- Services par semaine : 8 × 2 × 7 = 112.
- Si chaque chauffeur fait 6 services par semaine : 112 / 6 ≈ 18,67 chauffeurs.
- Avec une marge de 10 % pour absences (taux fictif pour l''exemple) : 18,67 × 1,10 ≈ 20,5, arrondi à 21 chauffeurs.

La durée de chaque service doit être compatible avec la réglementation applicable ; l''exemple illustre seulement la méthode de calcul.

## L''affectation quotidienne

Chaque soir, le chef d''exploitation (ou régulateur) prépare l''affectation du lendemain : quel chauffeur prend quel véhicule pour quel service. Il tient compte :

- des véhicules disponibles (état transmis par l''atelier) ;
- des chauffeurs présents (congés, absences signalées) ;
- des compétences (certains chauffeurs connaissent certaines lignes ou sont habilités à certains véhicules).

Un outil simple est le tableau d''affectation : en lignes les services, en colonnes le chauffeur, le véhicule, les heures de prise et de fin, et une case de signature à la prise de service. Le matin, le chauffeur fait la vérification de son véhicule (pneus, feux, freins, niveaux, extincteur) et signe la fiche avant de partir.

## Exemple d''affectation pour le transport du personnel

Une société minière de la région de Thiès assure le transport de 3 équipes. Elle dispose de 6 bus et de 9 chauffeurs. Chaque bus fait le ramassage d''une équipe, puis ramène l''équipe sortante. Le régulateur fixe un chauffeur titulaire par bus et par équipe, et garde des chauffeurs en réserve pour les remplacements. Le principe : un chauffeur titulaire, un véhicule attitré autant que possible, des remplaçants identifiés à l''avance.

## Points clés

- Parc total = véhicules en ligne + réserve pour pannes et entretien.
- Effectif de chauffeurs = services par semaine / services par chauffeur, plus une marge pour absences.
- Toujours respecter la réglementation en vigueur sur le temps de travail et la conduite.
- L''affectation quotidienne croise véhicules disponibles, chauffeurs présents et compétences.

## Exercices

Exercice 1. Une ligne nécessite 12 véhicules en ligne. Le taux de réserve est de 15 % (taux fictif). Calculez le parc total.

Exercice 2. Un réseau assure 5 véhicules en ligne, 2 services par jour, 6 jours par semaine. Chaque chauffeur fait 5 services par semaine. Calculez l''effectif nécessaire avant et après une marge de 10 % (fictive).

Exercice 3. Citez trois éléments que le régulateur doit vérifier avant de finaliser l''affectation du lendemain.

Exercice 4. Pourquoi est-il préférable de conserver un même chauffeur sur une même ligne ?

## Corrigé

Exercice 1. Réserve : 12 × 15 % = 1,8, arrondi à 2. Parc total : 14 véhicules.

Exercice 2. Services : 5 × 2 × 6 = 60. Effectif : 60 / 5 = 12 chauffeurs. Avec la marge : 12 × 1,10 = 13,2, arrondi à 14 chauffeurs.

Exercice 3. La disponibilité des véhicules (état de l''atelier), la présence des chauffeurs (congés, absences) et leurs compétences ou habilitations ; on peut aussi citer le respect des temps de repos entre deux services.

Exercice 4. Il connaît l''itinéraire, les arrêts, les difficultés de circulation et les habitudes des passagers : il est plus ponctuel, plus sûr et la qualité de service est meilleure.', 'texte', 60, false, 20
from public.courses c where c.slug = 'formation-gestion-transport'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Affecter les chauffeurs et les véhicules');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Billetterie et contrôle des recettes', '## Objectifs de la leçon

Connaître les principaux modes de billetterie, organiser le contrôle des recettes de la vente jusqu''au dépôt en banque, calculer la recette attendue à partir des titres vendus et analyser les écarts.

## Les modes de vente

- Le ticket papier numéroté, vendu à bord par un receveur ou en kiosque. Les carnets sont pré-numérotés, ce qui permet de savoir exactement combien de tickets ont été vendus.
- Le carnet ou la carte de plusieurs voyages, vendu à prix réduit pour fidéliser.
- L''abonnement mensuel, pour les élèves, étudiants et travailleurs.
- La billettique électronique : carte sans contact ou ticket à code, validé à bord.
- Le paiement mobile, de plus en plus répandu, qui réduit la manipulation d''espèces.

Pour le transport du personnel, il n''y a souvent pas de billet : l''accès se fait sur présentation du badge ou d''une liste nominative, et le coût est supporté par l''employeur ou facturé à l''entreprise cliente selon un contrat.

## Pourquoi contrôler les recettes ?

Les recettes d''un transport de voyageurs sont faites de nombreuses petites sommes en espèces, encaissées loin du bureau. Les risques sont réels : tickets non délivrés (le receveur encaisse sans donner de ticket), tickets réutilisés, erreurs de rendu de monnaie, pertes ou vols d''espèces. Un contrôle sérieux protège l''entreprise, mais aussi les receveurs honnêtes.

## La chaîne de contrôle

- Dotation : le matin, chaque receveur reçoit des carnets dont les numéros sont enregistrés (du numéro au numéro) et un fonds de caisse.
- Vente : chaque voyageur reçoit son ticket, détaché dans l''ordre.
- Contrôle en ligne : des contrôleurs montent à bord et vérifient que chaque voyageur a un ticket valable.
- Arrêté de caisse : le soir, le receveur indique le dernier numéro vendu et compte ses espèces en présence d''un caissier.
- Rapprochement : recette attendue = nombre de tickets vendus × tarif ; on la compare aux espèces et paiements mobiles versés.
- Dépôt : la recette est mise au coffre puis déposée en banque, avec bordereau.

## Calcul de la recette attendue

Nombre de tickets vendus = dernier numéro vendu − premier numéro vendu + 1.

Exemple : un receveur a vendu les tickets 004501 à 004780 au tarif de 300 FCFA (tarif fictif pour l''exemple).

- Tickets vendus : 4 780 − 4 501 + 1 = 280.
- Recette attendue : 280 × 300 = 84 000 FCFA.
- Recette versée : 81 600 FCFA.
- Écart : 81 600 − 84 000 = −2 400 FCFA, soit l''équivalent de 8 tickets.

On n''oublie pas le « + 1 » : du ticket 1 au ticket 10, on a vendu 10 tickets, pas 9.

L''écart doit être expliqué : erreur de rendu, ticket gratuit accordé sans autorisation, perte. Les écarts répétés d''un même receveur appellent un entretien et un suivi, dans le respect du règlement intérieur.

## Les indicateurs de recettes

- Recette par voyage = recette totale / nombre de voyages effectués.
- Recette par kilomètre = recette totale / kilomètres parcourus.
- Taux de fraude constaté = voyageurs sans titre valable / voyageurs contrôlés.
- Écart de caisse cumulé par receveur.

Exemple : sur une journée, une ligne a fait 24 voyages pour 432 km et encaissé 518 400 FCFA. Recette par voyage : 518 400 / 24 = 21 600 FCFA. Recette par km : 518 400 / 432 = 1 200 FCFA. Si les contrôleurs ont vérifié 400 voyageurs et trouvé 14 sans titre, le taux de fraude constaté est de 14 / 400 = 3,5 %.

Comparer la recette par voyage d''un jour à l''autre et d''un receveur à l''autre, sur une même ligne et un même horaire, permet de repérer des anomalies.

## Points clés

- Les carnets pré-numérotés permettent de calculer exactement la recette attendue.
- Tickets vendus = dernier − premier + 1.
- Chaque écart de caisse est expliqué et suivi.
- Recette par voyage, par km et taux de fraude sont les indicateurs de base.

## Exercices

Exercice 1. Un receveur a vendu les tickets 012340 à 012589 au tarif fictif de 250 FCFA. Il verse 62 000 FCFA. Calculez la recette attendue et l''écart.

Exercice 2. Une ligne a encaissé 360 000 FCFA en 20 voyages et 300 km. Calculez la recette par voyage et par km.

Exercice 3. Les contrôleurs ont vérifié 250 voyageurs et en ont trouvé 10 sans titre. Calculez le taux de fraude constaté.

Exercice 4. Proposez deux mesures pour réduire les tickets non délivrés.

## Corrigé

Exercice 1. Tickets : 12 589 − 12 340 + 1 = 250. Recette attendue : 250 × 250 = 62 500 FCFA. Écart : 62 000 − 62 500 = −500 FCFA, soit 2 tickets.

Exercice 2. Par voyage : 360 000 / 20 = 18 000 FCFA. Par km : 360 000 / 300 = 1 200 FCFA.

Exercice 3. 10 / 250 = 4 %.

Exercice 4. Par exemple : contrôles inopinés à bord, sensibiliser les voyageurs à exiger leur ticket, développer le paiement mobile ou la billettique électronique, comparer la recette par voyage entre receveurs.', 'texte', 60, false, 30
from public.courses c where c.slug = 'formation-gestion-transport'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Billetterie et contrôle des recettes');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sécurité routière et qualité de service', '## Objectifs de la leçon

Mettre en place les règles essentielles de sécurité routière pour un service de transport de voyageurs, savoir réagir en cas d''accident, définir les critères de qualité de service et les mesurer avec des indicateurs simples.

## La sécurité, priorité absolue

Transporter des personnes engage la responsabilité de l''exploitant. Un accident a des conséquences humaines dramatiques, mais aussi juridiques, financières et sur la réputation. La sécurité repose sur trois piliers : le véhicule, le conducteur et l''organisation.

## Le véhicule

- Contrôle technique et assurance à jour, documents à bord.
- Vérification avant départ, chaque jour, par le chauffeur : pneus (usure, pression), freins, feux et clignotants, essuie-glaces, rétroviseurs, niveaux, portes, ceintures si le véhicule en est équipé.
- Équipements de sécurité : extincteur vérifié, trousse de premiers secours, triangle de signalisation.
- Entretien préventif suivi selon un planning ; tout défaut signalé est réparé avant remise en service.

## Le conducteur

- Permis valide de la catégorie requise et aptitude vérifiée selon la réglementation.
- Zéro alcool et aucune substance altérant la vigilance.
- Respect des limitations de vitesse et du code de la route.
- Pas de téléphone tenu en main en conduisant.
- Gestion de la fatigue : respect des temps de conduite et de repos prévus par les textes en vigueur, pauses réelles.
- Formation régulière : conduite défensive, premiers secours, gestion des conflits avec les voyageurs.

## L''organisation

- Interdiction stricte de la surcharge : on ne prend pas plus de voyageurs que le nombre de places autorisé.
- Horaires réalistes : un horaire trop serré pousse à la vitesse.
- Procédure en cas d''accident connue de tous : sécuriser les lieux (feux de détresse, triangle), alerter les secours, porter assistance sans déplacer les blessés sauf danger immédiat, prévenir l''exploitation, remplir le constat, conserver les éléments utiles.
- Analyse de chaque accident ou incident pour en tirer des leçons, sans chercher seulement un coupable.

## La qualité de service

Pour les voyageurs, la qualité se juge sur quelques critères simples :

- la ponctualité : le véhicule part et passe à l''heure annoncée ;
- la régularité : les intervalles sont respectés, sans « trous » ;
- la propreté du véhicule ;
- l''accueil et la courtoisie du personnel ;
- l''information : horaires affichés, annonce des perturbations ;
- le confort et la sécurité ressentie ;
- la gestion des réclamations.

Pour le transport du personnel, la ponctualité est critique : un bus en retard, c''est une équipe entière qui commence en retard, avec un coût direct pour l''entreprise cliente.

## Mesurer : les indicateurs

- Taux de ponctualité = départs à l''heure / départs prévus. On définit « à l''heure » par une règle interne, par exemple entre 1 minute d''avance et 3 minutes de retard.
- Taux de réalisation = voyages effectués / voyages prévus.
- Fréquence des accidents = nombre d''accidents / kilomètres parcourus × 100 000 (accidents pour 100 000 km).
- Taux de réclamations = réclamations / voyageurs transportés × 10 000.

Exemple : sur un mois, 1 240 départs prévus, 1 091 à l''heure. Taux de ponctualité : 1 091 / 1 240 ≈ 88,0 %. Le réseau a parcouru 450 000 km et enregistré 3 accidents matériels : 3 / 450 000 × 100 000 ≈ 0,67 accident pour 100 000 km. Ces chiffres se comparent d''un mois à l''autre et entre lignes ; il ne s''agit pas de normes officielles.

## Améliorer en continu

Méthode simple :

- mesurer chaque mois les indicateurs ;
- identifier la ligne ou l''horaire le plus problématique ;
- rechercher les causes avec les chauffeurs (embouteillage récurrent, temps de parcours sous-estimé, véhicule souvent en panne) ;
- décider une action (ajuster l''horaire, changer d''itinéraire, renforcer l''entretien) ;
- vérifier le résultat le mois suivant.

## Points clés

- La sécurité repose sur le véhicule, le conducteur et l''organisation.
- Vérification quotidienne avant départ, zéro alcool, pas de surcharge, horaires réalistes.
- Une procédure d''accident claire et une analyse de chaque incident.
- Ponctualité, régularité, propreté, accueil et information font la qualité.
- Les indicateurs se suivent mensuellement et déclenchent des actions.

## Exercices

Exercice 1. Sur 860 départs prévus, 774 sont partis à l''heure. Calculez le taux de ponctualité.

Exercice 2. Un réseau a parcouru 320 000 km et connu 2 accidents. Calculez la fréquence pour 100 000 km.

Exercice 3. Citez cinq points que le chauffeur vérifie avant le départ.

Exercice 4. Un chauffeur arrive au terminus avec 15 minutes de retard tous les jours à 7 h 30. Proposez une démarche.

## Corrigé

Exercice 1. 774 / 860 = 90 %.

Exercice 2. 2 / 320 000 × 100 000 = 0,625 accident pour 100 000 km.

Exercice 3. Par exemple : pneus, freins, feux et clignotants, essuie-glaces, rétroviseurs, niveaux, extincteur, trousse de secours.

Exercice 4. Ne pas sanctionner d''emblée : analyser les causes avec le chauffeur (embouteillage récurrent à cette heure, temps de parcours sous-estimé, départ tardif du dépôt). Si le temps de parcours est irréaliste, ajuster l''horaire ou le battement ; vérifier ensuite la ponctualité le mois suivant.', 'texte', 60, false, 40
from public.courses c where c.slug = 'formation-gestion-transport'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sécurité routière et qualité de service');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Calculer la rentabilité d''une ligne', '## Objectifs de la leçon

Savoir calculer les recettes et les coûts d''une ligne, distinguer coûts variables et coûts fixes, déterminer le résultat et le seuil de rentabilité en nombre de voyageurs et en taux de remplissage, et utiliser ces calculs pour décider.

## Les recettes

Pour une ligne ouverte au public :

Recettes = nombre de voyageurs × tarif moyen.

Nombre de voyageurs = nombre de voyages × capacité × taux de remplissage moyen.

Pour le transport du personnel, la recette est souvent un forfait contractuel (par mois, par circuit ou par kilomètre) payé par l''entreprise cliente.

## Les coûts

Les coûts variables dépendent des kilomètres parcourus :

- carburant ;
- pneus ;
- entretien et réparations.

On les exprime en FCFA par km.

Les coûts fixes ne dépendent pas directement des kilomètres sur la période :

- salaires et charges des chauffeurs et receveurs (s''ils sont mensualisés) ;
- amortissement du véhicule (prix d''achat réparti sur sa durée d''utilisation) ;
- assurances, vignettes, taxes et autorisations ;
- part des frais de structure (bureau, régulation, encadrement).

## Exemple complet

Une société exploite une ligne interurbaine de 70 km avec un autocar de 30 places. Toutes les valeurs sont fictives.

Activité :

- 4 allers-retours par jour, soit 8 voyages par jour ;
- 26 jours d''exploitation par mois : 8 × 26 = 208 voyages ;
- kilomètres par mois : 208 × 70 = 14 560 km.

Recettes :

- taux de remplissage moyen 75 %, soit 30 × 0,75 = 22,5 voyageurs par voyage ;
- voyageurs par mois : 208 × 22,5 = 4 680 ;
- tarif : 1 500 FCFA ;
- recettes mensuelles : 4 680 × 1 500 = 7 020 000 FCFA.

Coûts variables :

- carburant : 25 L/100 km × 800 FCFA/L (prix fictif) = 200 FCFA/km ;
- entretien et pneus : 60 FCFA/km ;
- total : 260 FCFA/km × 14 560 km = 3 785 600 FCFA.

Coûts fixes mensuels :

- salaires chargés chauffeurs et receveurs : 900 000 FCFA ;
- amortissement du car : 1 000 000 FCFA ;
- assurances, taxes et autorisations : 250 000 FCFA ;
- frais de structure : 400 000 FCFA ;
- total : 2 550 000 FCFA.

Résultat :

- coût total : 3 785 600 + 2 550 000 = 6 335 600 FCFA ;
- résultat mensuel : 7 020 000 − 6 335 600 = 684 400 FCFA ;
- marge sur coûts variables : 7 020 000 − 3 785 600 = 3 234 400 FCFA.

## Le seuil de rentabilité

Sur une ligne régulière, les kilomètres sont fixés par l''horaire : le coût total du mois est donc connu à l''avance, quel que soit le nombre de voyageurs. Le seuil de rentabilité est le nombre de voyageurs qui couvre ce coût :

Voyageurs au seuil = coût total / tarif = 6 335 600 / 1 500 ≈ 4 223,7, soit 4 224 voyageurs par mois.

Par voyage : 4 224 / 208 ≈ 20,3 voyageurs. Taux de remplissage au seuil : 20,3 / 30 ≈ 67,7 %.

Lecture : la ligne est rentable tant que le car est rempli en moyenne à plus des deux tiers environ. À 75 %, la marge de sécurité est réelle mais faible : une baisse de fréquentation ou une hausse du carburant peut faire basculer la ligne dans le rouge.

## Utiliser le calcul pour décider

- Tester une hausse du prix du carburant : si le carburant passe à 220 FCFA/km, les coûts variables augmentent de 20 × 14 560 = 291 200 FCFA, et le résultat tombe à 393 200 FCFA.
- Tester la suppression d''un aller-retour en heure creuse : moins de kilomètres, mais aussi moins de voyageurs ; il faut connaître le remplissage de cet horaire précis.
- Négocier un contrat de transport du personnel : calculer le coût complet par km ou par mois, puis ajouter une marge, plutôt que de s''aligner sur un prix sans calcul.

## Points clés

- Recettes = voyageurs × tarif ; voyageurs = voyages × places × remplissage.
- Coûts variables au km ; coûts fixes au mois.
- Résultat = recettes − coûts variables − coûts fixes.
- Seuil de rentabilité en voyageurs = coût total / tarif ; on le traduit en taux de remplissage.
- Les simulations aident à décider des tarifs, des horaires et des contrats.

## Exercices

Exercice 1. Une ligne urbaine fait 12 voyages par jour, 25 jours par mois, sur 20 km par voyage. Calculez le nombre de voyages et de kilomètres par mois.

Exercice 2. Chaque voyage transporte en moyenne 40 voyageurs au tarif fictif de 250 FCFA. Calculez les recettes mensuelles.

Exercice 3. Coûts variables : 300 FCFA/km. Coûts fixes : 900 000 FCFA par mois. Calculez le coût total et le résultat.

Exercice 4. Le bus a 60 places. Calculez le seuil de rentabilité en voyageurs par mois, par voyage et en taux de remplissage.

## Corrigé

Exercice 1. Voyages : 12 × 25 = 300. Kilomètres : 300 × 20 = 6 000 km.

Exercice 2. Voyageurs : 300 × 40 = 12 000. Recettes : 12 000 × 250 = 3 000 000 FCFA.

Exercice 3. Coûts variables : 6 000 × 300 = 1 800 000 FCFA. Coût total : 1 800 000 + 900 000 = 2 700 000 FCFA. Résultat : 3 000 000 − 2 700 000 = 300 000 FCFA.

Exercice 4. Voyageurs au seuil : 2 700 000 / 250 = 10 800 par mois. Par voyage : 10 800 / 300 = 36. Taux de remplissage : 36 / 60 = 60 %. Avec 40 voyageurs en moyenne (environ 67 %), la ligne est rentable.', 'texte', 60, false, 50
from public.courses c where c.slug = 'formation-gestion-transport'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Calculer la rentabilité d''une ligne');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : organiser et rentabiliser un service de transport de voyageurs', '## Fiche du cours vidéo

Durée : 1h30. Public : exploitants de transport urbain et interurbain, responsables du transport du personnel, régulateurs, gestionnaires de flotte.

Objectifs : dimensionner une ligne (rotation, intervalle, véhicules) ; calculer l''effectif de chauffeurs ; contrôler les recettes ; piloter sécurité et qualité ; calculer le résultat et le seuil de rentabilité d''une ligne.

Matériel : diaporama, tableau blanc, calculatrice, un plan de ligne, un modèle de feuille d''affectation et un modèle d''arrêté de caisse.

Prérequis : avoir suivi les leçons 1 à 5, ou avoir une expérience de l''exploitation d''un service de transport.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture : un service de transport, c''est une horloge

Texte du formateur : « Bonjour et bienvenue. Un service de transport de voyageurs, c''est une horloge : des véhicules, des chauffeurs et des voyageurs qui doivent se retrouver au bon endroit, à la bonne minute, chaque jour. Quand un seul rouage se grippe, tout le système souffre. Aujourd''hui, nous allons suivre Sahel Mobilité, une entreprise fictive qui veut ouvrir une ligne urbaine dans l''agglomération dakaroise, une ligne interurbaine et un contrat de transport du personnel pour une usine. »

Question posée : « Selon vous, quel est le premier motif de mécontentement des voyageurs ? » Réponses fréquentes : l''attente, l''incertitude sur l''horaire, la surcharge.

## 05:00 – 18:00 · Dimensionner une ligne

Texte du formateur : « Notre ligne urbaine fait 18 km. Aller : 50 minutes, retour : 50 minutes, battement de 10 minutes à chaque bout. Temps de rotation : 120 minutes. À la pointe du matin, nous comptons 480 voyageurs par heure dans le sens le plus chargé, avec des bus de 60 places. Il faut 8 passages par heure, soit un intervalle de 7,5 minutes. Combien de bus ? 120 divisé par 7,5, cela fait 16 bus. »

Visuel : schéma de la ligne avec les terminus, les arrêts et les temps de parcours.

Texte du formateur : « Seize bus, c''est beaucoup. Peut-on accepter 15 minutes d''intervalle ? Alors 8 bus suffisent, mais chaque passage devrait embarquer 120 personnes dans des bus de 60 places : c''est la surcharge, interdite. Le calcul nous montre donc que, pour cette demande, il faut soit 16 bus, soit des véhicules plus grands. Les chiffres ne décident pas à notre place, mais ils évitent de promettre l''impossible. »

Texte du formateur : « En heure creuse, la demande tombe à 180 voyageurs par heure : 3 passages suffisent, soit 20 minutes d''intervalle et seulement 6 bus. On libère donc des bus pour l''entretien en milieu de journée. »

Texte du formateur : « Pour le transport du personnel de l''usine, la logique change : ce sont les prises de poste qui commandent. L''équipe du matin compte 210 personnes réparties dans quatre quartiers. Avec des minibus de 30 places, il faut au moins 7 circuits, que l''on répartit selon les effectifs de chaque quartier, en arrivant sur le site quelques minutes avant la prise de poste. »

## 18:00 – 30:00 · Véhicules de réserve et chauffeurs

Texte du formateur : « Restons sur un scénario plus modeste de 8 bus en ligne. Il faut une réserve pour les pannes et l''entretien : avec un taux interne de 10 %, cela fait 1 bus de plus, 9 au total. Côté chauffeurs : 8 bus, deux services par jour, sept jours sur sept, cela fait 112 services par semaine. Si un chauffeur assure 6 services par semaine, il en faut environ 18,7. Avec une marge de 10 % pour les congés et absences, on arrive à 21 chauffeurs. »

Texte du formateur : « Attention : la durée des services, les temps de conduite et les repos doivent respecter la réglementation en vigueur. Vérifiez toujours les textes officiels, d''autant que le Sénégal prépare un nouveau Code du travail. »

Visuel : tableau d''affectation type (service, chauffeur, véhicule, heures, signature).

Question posée : « Que faites-vous à 5 h 30 si un chauffeur ne se présente pas ? » Réponse : un remplaçant d''astreinte identifié la veille et un véhicule de réserve prêt.

## 30:00 – 42:00 · La billetterie et les recettes

Texte du formateur : « Chez Sahel Mobilité, les receveurs vendent des tickets à 300 FCFA, tarif fictif. Le matin, chaque receveur reçoit des carnets dont on note les numéros. Le soir, il indique le dernier ticket vendu. Le receveur Moussa a vendu du 004501 au 004780. Combien de tickets ? Attention au piège : 4 780 moins 4 501 plus 1, soit 280 tickets. Recette attendue : 84 000 FCFA. Il verse 81 600 : il manque 2 400 FCFA, l''équivalent de 8 tickets. »

Texte du formateur : « Un écart n''est pas une accusation, c''est une question. Erreur de rendu ? Voyageur autorisé à voyager gratuitement ? On écoute, on note, et on suit dans le temps. C''est la répétition qui doit alerter. »

Visuel : modèle d''arrêté de caisse avec les numéros de tickets, la recette attendue et la recette versée.

## 42:00 – 50:00 · Pause interactive et quiz

Texte du formateur : « Pause active. Quatre questions. »

- Question 1 : aller 35 min, retour 35 min, battements 5 + 5 min, intervalle 20 min. Combien de véhicules ?
- Question 2 : 300 voyageurs par heure, véhicules de 50 places. Intervalle ?
- Question 3 : tickets vendus du 012340 au 012589. Combien de tickets ?
- Question 4 : 12 véhicules en ligne et 15 % de réserve. Parc total ?

Correction : 1) rotation 80 min, 4 véhicules ; 2) 6 passages par heure, intervalle 10 min ; 3) 250 tickets ; 4) 12 + 2 = 14 véhicules.

## 50:00 – 1:02:00 · Sécurité routière et qualité de service

Texte du formateur : « Parlons maintenant de ce qui ne se négocie pas : la sécurité. Trois piliers. Le véhicule : vérification chaque matin, entretien préventif, extincteur et trousse de secours à bord. Le conducteur : permis adapté, zéro alcool, pas de téléphone en main, respect des vitesses, repos suffisant. L''organisation : pas de surcharge, des horaires réalistes, une procédure d''accident connue de tous. »

Visuel : check-list de prise de service et schéma de la procédure en cas d''accident.

Texte du formateur : « Arrêtons-nous sur la procédure en cas d''accident, car le stress fait oublier les bons gestes. Premier réflexe : sécuriser, avec les feux de détresse et le triangle, et faire descendre les voyageurs du côté opposé à la circulation si c''est sans danger. Deuxième réflexe : alerter les secours et l''exploitation, en donnant le lieu exact et le nombre de blessés. Troisième réflexe : porter assistance sans déplacer un blessé, sauf danger immédiat comme un risque d''incendie. Ensuite seulement viennent le constat, les témoignages et les photos. Le lendemain, on analyse l''accident avec le chauffeur pour comprendre ce qui s''est passé et éviter qu''il se reproduise. L''objectif n''est pas de trouver un coupable à tout prix, mais d''améliorer le système. »

Texte du formateur : « Côté qualité, mesurons. Le mois dernier, 1 240 départs prévus, 1 091 à l''heure : 88 % de ponctualité. 3 accidents matériels pour 450 000 km : environ 0,67 accident pour 100 000 km. Ces chiffres sont des repères internes, que l''on compare de mois en mois et de ligne en ligne. »

Question posée : « Si une ligne est toujours en retard à la même heure, la faute en revient-elle forcément au chauffeur ? » Discussion : souvent, c''est l''horaire qui est irréaliste.

## 1:02:00 – 1:18:00 · La rentabilité d''une ligne interurbaine

Texte du formateur : « Passons à la ligne interurbaine de Sahel Mobilité : 70 km, un autocar de 30 places, 8 voyages par jour, 26 jours par mois. Cela fait 208 voyages et 14 560 km par mois. Avec un remplissage moyen de 75 %, soit 22,5 voyageurs par voyage, on transporte 4 680 voyageurs. À 1 500 FCFA, tarif fictif, la recette est de 7 020 000 FCFA. »

Texte du formateur : « Les coûts variables : carburant à 200 FCFA par km et entretien à 60 FCFA, soit 260 FCFA par km, donc 3 785 600 FCFA. Les coûts fixes : salaires, amortissement, assurances et structure, 2 550 000 FCFA. Coût total : 6 335 600 FCFA. Résultat : 684 400 FCFA par mois. »

Visuel : tableau recettes – coûts – résultat, puis graphique du résultat en fonction du taux de remplissage.

Texte du formateur : « Où est le seuil ? Coût total divisé par le tarif : environ 4 224 voyageurs par mois, soit 20,3 par voyage, soit un remplissage d''environ 67,7 %. Nous sommes à 75 % : rentable, mais avec une marge étroite. Si le carburant passe à 220 FCFA par km, le résultat tombe à 393 200 FCFA. Ce type de simulation doit précéder toute décision de tarif ou d''horaire. »

Question posée : « Pour le contrat de transport du personnel, comment fixer le prix ? » Réponse : calculer le coût complet par mois du circuit (kilomètres × coût variable + coûts fixes affectés), puis ajouter une marge, au lieu de s''aligner sur un prix sans calcul.

## 1:18:00 – 1:30:00 · Synthèse et évaluation finale

Texte du formateur : « Récapitulons. Une ligne se dimensionne avec la rotation, l''intervalle et la demande. On ajoute une réserve de véhicules et une marge de chauffeurs. Les recettes se contrôlent grâce aux carnets numérotés. La sécurité repose sur le véhicule, le conducteur et l''organisation, et la qualité se mesure. Enfin, la rentabilité se calcule et se simule avant de décider. »

Évaluation finale, cinq questions :

- Question 1 : rotation de 120 minutes et intervalle de 15 minutes. Combien de véhicules ? Réponse : 8.
- Question 2 : 5 véhicules en ligne, 2 services par jour, 6 jours, 5 services par chauffeur. Effectif sans marge ? Réponse : 60 / 5 = 12 chauffeurs.
- Question 3 : 774 départs à l''heure sur 860. Ponctualité ? Réponse : 90 %.
- Question 4 : coût total 2 700 000 FCFA et tarif 250 FCFA. Voyageurs au seuil ? Réponse : 10 800.
- Question 5 : 36 voyageurs par voyage au seuil pour un bus de 60 places. Taux de remplissage au seuil ? Réponse : 60 %.

Texte du formateur : « Votre mission : choisissez une ligne ou un circuit que vous connaissez et calculez son temps de rotation, son besoin en véhicules et son seuil de rentabilité. Merci pour votre participation. »', 'video', 90, false, 60
from public.courses c where c.slug = 'formation-gestion-transport'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : organiser et rentabiliser un service de transport de voyageurs');

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

-- Cours : Exploiter un parking public ou privé
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'formation-parking-public', (select id from public.levels where name = 'Formation professionnelle'), 'parking-public', 'Gestion des parkings', 'Exploiter un parking public ou privé', 'Cette formation prépare à exploiter un parking ouvert au public, en gestion propre ou déléguée : modèle économique, construction d''une grille tarifaire horaire et d''abonnements avec calculs de rentabilité, caisse et contrôle des recettes, pilotage de plusieurs sites par indicateurs. Elle s''adresse aux exploitants, investisseurs, chefs de parking, caissiers principaux et agents des collectivités. Les calculs utilisent les quatre opérations et les pourcentages ; un tableur est recommandé.', true, 70
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Le métier d''exploitant et le modèle économique d''un parking', '## Objectifs de la leçon

- Comprendre les différentes formes d''exploitation d''un parking.
- Identifier les sources de recettes et les postes de charges.
- Calculer un résultat prévisionnel et un seuil de rentabilité.

## Le métier d''exploitant

Exploiter un parking, c''est vendre du temps de stationnement sur un espace limité. Le produit paraît simple, mais l''activité combine de l''immobilier (un terrain ou un ouvrage), du service (accueil, sécurité, propreté), de la gestion d''encaissements souvent en espèces, et du marketing (attirer les automobilistes et les abonnés). Dans les villes d''Afrique de l''Ouest où la voirie est saturée, comme Dakar, Abidjan ou Bamako, les parkings organisés répondent à une vraie demande autour des quartiers d''affaires, des marchés, des hôpitaux, des gares et des aéroports.

## Les modes d''exploitation

- Le propriétaire-exploitant : il possède le terrain ou l''ouvrage et l''exploite lui-même. Il garde toute la marge mais supporte tous les risques.
- Le locataire-exploitant : il loue le terrain et paie un loyer fixe ; tout ce qui dépasse le loyer et les charges constitue sa marge.
- Le concessionnaire ou délégataire : une collectivité confie l''exploitation d''un parking public pour une durée définie, contre une redevance (fixe, variable ou mixte) et des obligations de service (horaires, tarifs encadrés, entretien). Les conditions sont fixées par le contrat.
- Le gestionnaire pour compte : il exploite pour le compte d''un propriétaire et perçoit une rémunération (forfait ou pourcentage). Le résultat appartient au propriétaire.

Chaque mode répartit différemment le risque : plus l''exploitant prend de risque (loyer fixe, investissement), plus il attend une marge élevée.

## Les recettes

- Recettes horaires : payées par les usagers occasionnels selon la durée.
- Abonnements : forfaits mensuels pour les salariés du quartier, les résidents, les entreprises.
- Services annexes : lavage, petit entretien, recharge de véhicules électriques, consigne, publicité sur les murs et les tickets.
- Recettes exceptionnelles : événements, foires, locations de zone pour un tournage ou un salon.

## Les charges

Les charges fixes ne varient pas avec la fréquentation : loyer ou redevance fixe, salaires des agents et caissiers, gardiennage de nuit, électricité de base, maintenance des barrières et caisses, assurance, amortissement des équipements.

Les charges variables évoluent avec l''activité : commissions sur paiements électroniques, consommables (tickets, papier), redevance variable éventuelle, usure des équipements.

## Les grandeurs de base

L''offre se mesure en places-heures : nombre de places × nombre d''heures d''ouverture. Un parking de 150 places ouvert 14 heures offre 150 × 14 = 2 100 places-heures par jour.

Le taux d''occupation est le pourcentage de places-heures vendues.

Le revenu moyen par place-heure occupée est la recette horaire divisée par les places-heures occupées. Il dépend de la grille tarifaire et des durées de stationnement.

## Méthode : construire un compte prévisionnel mensuel

- Calculer les places-heures offertes par jour.
- Appliquer un taux d''occupation prudent, fondé sur des comptages ou une étude de marché.
- Multiplier par le revenu moyen par place-heure occupée.
- Multiplier par le nombre de jours d''ouverture du mois.
- Retrancher les charges variables, puis les charges fixes.

## Exemple chiffré : un parking près du marché de Sandaga

Un exploitant étudie un parking de 150 places ouvert de 7 h à 21 h (14 heures), 30 jours par mois. Hypothèses : occupation moyenne 60 %, revenu moyen 220 FCFA par place-heure occupée, charges fixes 5 500 000 FCFA par mois, charges variables égales à 8 % des recettes.

- Places-heures offertes par jour : 150 × 14 = 2 100.
- Places-heures occupées : 2 100 × 0,60 = 1 260.
- Recette par jour : 1 260 × 220 = 277 200 FCFA.
- Recette mensuelle : 277 200 × 30 = 8 316 000 FCFA.
- Charges variables : 8 % × 8 316 000 = 665 280 FCFA.
- Marge sur coûts variables : 8 316 000 - 665 280 = 7 650 720 FCFA.
- Résultat : 7 650 720 - 5 500 000 = 2 150 720 FCFA par mois.

Le seuil de rentabilité est la recette qui couvre exactement toutes les charges. La marge sur coûts variables représente 92 % des recettes, donc : seuil = charges fixes / 0,92 = 5 500 000 / 0,92 ≈ 5 978 261 FCFA. En recette maximale théorique (100 % d''occupation), le parking ferait 2 100 × 220 × 30 = 13 860 000 FCFA. Le seuil correspond donc à une occupation d''environ 5 978 261 / 13 860 000 ≈ 43 %. En dessous de ce taux, l''exploitant perd de l''argent.

## Points clés

- Le mode d''exploitation détermine qui porte le risque et qui garde la marge.
- On raisonne en places-heures offertes, occupées et en revenu moyen par place-heure.
- Charges fixes et variables se séparent pour calculer le seuil de rentabilité.
- Le taux d''occupation de seuil est un repère essentiel avant d''investir.

## Exercices

- Exercice 1 : citez quatre modes d''exploitation et indiquez qui garde le résultat dans chacun.
- Exercice 2 : un parking de 80 places est ouvert 12 heures par jour. Combien de places-heures offre-t-il par jour ?
- Exercice 3 : avec 55 % d''occupation et 250 FCFA par place-heure occupée, quelle est la recette journalière du parking de l''exercice 2 ? Et sur 30 jours ?
- Exercice 4 : charges fixes 2 700 000 FCFA par mois, charges variables 10 % des recettes. Calculez le seuil de rentabilité mensuel.

## Corrigé

Exercice 1 : propriétaire-exploitant (il garde le résultat) ; locataire-exploitant (il garde le résultat après loyer) ; concessionnaire ou délégataire (il garde le résultat après redevance, dans le cadre du contrat) ; gestionnaire pour compte (le résultat revient au propriétaire, le gestionnaire perçoit sa rémunération).

Exercice 2 : 80 × 12 = 960 places-heures par jour.

Exercice 3 : places-heures occupées = 960 × 0,55 = 528 ; recette = 528 × 250 = 132 000 FCFA par jour ; sur 30 jours : 3 960 000 FCFA.

Exercice 4 : la marge sur coûts variables est de 90 % des recettes ; seuil = 2 700 000 / 0,90 = 3 000 000 FCFA par mois.', 'texte', 50, true, 10
from public.courses c where c.slug = 'formation-parking-public'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Le métier d''exploitant et le modèle économique d''un parking');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Construire une grille tarifaire horaire', '## Objectifs de la leçon

- Connaître les composantes d''une grille tarifaire horaire.
- Calculer le montant payé par un usager selon différentes règles.
- Choisir une structure tarifaire adaptée à l''objectif de l''exploitant.

## Pourquoi la tarification est stratégique

Le tarif ne sert pas seulement à encaisser. Il oriente le comportement des usagers. Un tarif qui augmente avec la durée encourage les arrêts courts et donc la rotation : c''est utile près des commerces et des administrations, où l''on veut servir beaucoup de clients différents. Un tarif qui diminue avec la durée attire les stationnements longs : c''est adapté aux parkings de gare, d''aéroport ou de périphérie. Avant de fixer des prix, l''exploitant doit donc répondre à la question : quel usage est-ce que je veux favoriser ?

Pour un parking public en délégation, les tarifs peuvent être encadrés par le contrat avec la collectivité : il faut toujours vérifier ce qui est autorisé avant de modifier une grille.

## Les composantes d''une grille

- La franchise : une durée gratuite (par exemple 15 minutes) pour déposer quelqu''un ou faire demi-tour.
- La première heure : souvent à un prix spécifique.
- Les heures suivantes : prix constant, croissant (progressif) ou décroissant (dégressif).
- L''unité de facturation : l''heure entamée, la demi-heure ou le quart d''heure.
- Le plafond : un montant maximal par période de 24 heures ou par journée d''ouverture.
- Les tarifs particuliers : nuit, week-end, événements.
- Le forfait ticket perdu : montant dû quand l''usager ne présente pas son ticket, souvent égal au plafond journalier.

## Méthode de calcul

- Mesurer la durée exacte : heure de sortie moins heure d''entrée.
- Vérifier la franchise : si la durée est inférieure ou égale à la franchise, rien n''est dû.
- Découper la durée selon l''unité de facturation, en arrondissant à l''unité supérieure si toute unité entamée est due.
- Appliquer les prix de chaque tranche.
- Comparer au plafond et retenir le montant le plus faible.

## Exemple 1 : facturation à l''heure entamée

Grille : franchise 15 minutes, première heure 300 FCFA, heures suivantes 200 FCFA, plafond 2 000 FCFA par journée, toute heure entamée est due.

Un automobiliste entre à 9 h 10 et sort à 12 h 30 : durée 3 h 20. Il a entamé 4 heures. Montant : 300 + 3 × 200 = 900 FCFA.

À partir de quelle durée le plafond s''applique-t-il ? Pour h heures entamées, le montant est 300 + 200 × (h - 1). Pour 9 heures : 300 + 1 600 = 1 900 FCFA ; pour 10 heures : 300 + 1 800 = 2 100 FCFA, ramené au plafond de 2 000 FCFA. Le plafond joue donc à partir de la 10e heure entamée.

## Exemple 2 : facturation au quart d''heure

Même grille, mais après la première heure on facture 50 FCFA par quart d''heure entamé (soit toujours 200 FCFA par heure pleine). Pour 3 h 20 : première heure 300 FCFA ; il reste 2 h 20, soit 140 minutes ; 140 / 15 = 9,33, donc 10 quarts d''heure entamés ; 10 × 50 = 500 FCFA. Total : 800 FCFA.

L''usager paie 100 FCFA de moins qu''avec l''heure entamée. Le fractionnement est perçu comme plus juste et favorise la confiance, mais il réduit un peu la recette moyenne. L''exploitant doit simuler l''effet sur sa clientèle réelle.

## Exemple 3 : tarif progressif pour la rotation

Près d''un centre commercial de Dakar, l''exploitant veut éviter que des salariés du quartier occupent les places toute la journée. Grille : première heure 200 FCFA, deuxième heure 300 FCFA, chaque heure suivante 500 FCFA, sans plafond avant 21 h. Un client qui reste 2 heures paie 500 FCFA. Un salarié qui reste 8 heures paie 200 + 300 + 6 × 500 = 3 500 FCFA. Ce prix dissuade le stationnement long, qui se reportera vers les abonnements (leçon suivante) ou vers d''autres parkings.

## Fixer le niveau de prix

Trois repères aident à fixer le niveau :

- Les coûts : le revenu moyen par place-heure occupée doit couvrir les charges au taux d''occupation attendu.
- La concurrence : tarifs des parkings voisins et coût réel du stationnement dans la rue (y compris le risque d''amende ou de vol).
- La valeur pour l''usager : proximité, sécurité, ombre, gardiennage, facilité de paiement.

Toute modification se teste sur une période, en mesurant l''occupation et la recette avant et après.

## Points clés

- La structure tarifaire découle de l''usage que l''on veut favoriser : rotation ou longue durée.
- Une grille comprend franchise, première heure, heures suivantes, unité, plafond et cas particuliers.
- La méthode de calcul est toujours la même : durée, franchise, découpage, prix, plafond.
- Le fractionnement fin est plus juste mais réduit la recette moyenne : il faut simuler.

## Exercices

- Exercice 1 : avec la grille de l''exemple 1, calculez le montant pour 12 minutes, 1 h 05 et 5 h 00 exactement.
- Exercice 2 : avec la grille de l''exemple 1, quel montant paie un usager resté 11 heures ?
- Exercice 3 : avec la grille au quart d''heure de l''exemple 2, calculez le montant pour 2 h 50.
- Exercice 4 : quel type de grille recommandez-vous pour un parking d''aéroport ? Justifiez.

## Corrigé

Exercice 1 : 12 minutes est inférieur à la franchise de 15 minutes : 0 FCFA. 1 h 05 : 2 heures entamées, 300 + 200 = 500 FCFA. 5 h 00 exactement : 5 heures, 300 + 4 × 200 = 1 100 FCFA.

Exercice 2 : 11 heures donnent 300 + 10 × 200 = 2 300 FCFA, supérieur au plafond : l''usager paie 2 000 FCFA.

Exercice 3 : première heure 300 FCFA ; reste 1 h 50, soit 110 minutes ; 110 / 15 = 7,33, donc 8 quarts d''heure ; 8 × 50 = 400 FCFA. Total 700 FCFA.

Exercice 4 : un tarif dégressif avec forfaits à la journée ou à la semaine, car les usagers stationnent longtemps (voyages) ; l''objectif n''est pas la rotation mais la fidélisation sur des durées longues, avec un prix lisible.', 'texte', 50, false, 20
from public.courses c where c.slug = 'formation-parking-public'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Construire une grille tarifaire horaire');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Abonnements et rentabilité : dimensionner et chiffrer l''offre', '## Objectifs de la leçon

- Concevoir une offre d''abonnements cohérente avec la grille horaire.
- Calculer le nombre d''abonnements qu''on peut vendre sans saturer le parking.
- Mesurer l''effet des abonnements sur le résultat.

## Les différentes formules

- L''abonnement jour : accès en semaine aux heures de bureau, pour les salariés du quartier.
- L''abonnement permanent : accès 24 heures sur 24, 7 jours sur 7, souvent avec une place réservée.
- L''abonnement résident ou nuit : accès le soir et la nuit, pour les habitants du quartier sans garage.
- Les contrats entreprises : un lot d''abonnements vendu à une société pour ses salariés ou ses véhicules de service, avec facturation mensuelle.
- Les cartes prépayées : un crédit d''heures à prix réduit.

L''abonnement apporte une recette régulière, payée d''avance, qui réduit le risque. En contrepartie, il occupe des places, parfois aux heures où l''exploitant aurait pu les vendre plus cher à l''heure.

## Comparer abonnement et horaire

Un salarié qui stationne 8 heures par jour, 22 jours par mois, avec la grille horaire standard (première heure 300 FCFA, suivantes 200 FCFA, plafond 2 000 FCFA) paie chaque jour 300 + 7 × 200 = 1 700 FCFA, soit 1 700 × 22 = 37 400 FCFA par mois. Si l''abonnement jour est vendu 25 000 FCFA, le salarié économise 12 400 FCFA, soit environ 33 %. C''est un argument commercial fort.

Pour l''exploitant, la question est : combien rapporte en moyenne une place vendue à l''heure ? Avec une occupation moyenne de 60 %, 14 heures d''ouverture et 220 FCFA par place-heure occupée, une place rapporte 14 × 0,60 × 220 = 1 848 FCFA par jour, soit environ 55 440 FCFA sur 30 jours. Ce chiffre est une moyenne : une place supplémentaire mise en vente à l''heure en dehors des pointes rapporte beaucoup moins, car la demande est déjà servie. C''est pourquoi on vend des abonnements sur la capacité que les clients horaires n''utilisent pas aux heures de pointe.

## Méthode : dimensionner le quota d''abonnements

- Mesurer la demande horaire maximale, à l''heure de pointe, sur plusieurs semaines.
- En déduire la capacité libre à la pointe : places totales moins demande horaire de pointe, moins une marge de confort.
- Mesurer ou estimer le taux de présence simultanée des abonnés (tous ne sont pas là en même temps).
- Quota d''abonnements = capacité libre à la pointe / taux de présence maximal des abonnés.

## Exemple chiffré

Le parking de 150 places de la leçon 1 a une demande horaire de pointe de 92 véhicules à 11 h. L''exploitant garde une marge de confort de 8 places pour ne pas refuser de clients horaires. Capacité libre à la pointe : 150 - 92 - 8 = 50 places. Les comptages sur des parkings comparables montrent une présence simultanée maximale des abonnés de 80 %. Quota = 50 / 0,80 = 62,5, arrondi à 62 abonnements (on arrondit à l''inférieur par prudence).

Recette d''abonnements : 62 × 25 000 = 1 550 000 FCFA par mois.

Nouveau compte mensuel, en supposant que les abonnés n''évincent pas de clients horaires :

- Recettes horaires : 8 316 000 FCFA.
- Abonnements : 1 550 000 FCFA.
- Total : 9 866 000 FCFA.
- Charges variables (8 %) : 789 280 FCFA.
- Charges fixes : 5 500 000 FCFA.
- Résultat : 9 866 000 - 789 280 - 5 500 000 = 3 576 720 FCFA.

Le résultat passe de 2 150 720 à 3 576 720 FCFA, soit une hausse de 1 426 000 FCFA, ce qui correspond à la marge de 92 % sur 1 550 000 FCFA. L''hypothèse de non-éviction doit être vérifiée chaque mois en suivant le nombre de refus de clients horaires.

## Fixer le prix de l''abonnement

On encadre le prix entre deux bornes. Borne haute : le coût horaire équivalent pour l''usager (ici 37 400 FCFA) ; au-delà, personne n''a intérêt à s''abonner. Borne basse : le prix qui ne fait pas perdre d''argent sur les places concernées, compte tenu des charges et de la recette horaire perdue aux heures pleines. Entre les deux, on se positionne selon la concurrence et l''objectif de remplissage. On peut moduler : abonnement jour 25 000 FCFA, permanent 35 000 FCFA, nuit 15 000 FCFA, avec une remise pour les lots d''entreprise.

## Les conditions générales

Un abonnement est un contrat : durée, prix, modalités de paiement (d''avance, en début de mois), droit d''accès (horaires, zone), règles en cas de retard de paiement (suspension du badge), conditions de résiliation, responsabilité de l''exploitant, et traitement des données de l''abonné. Il doit être rédigé clairement et signé.

## Points clés

- L''abonnement sécurise la recette mais consomme de la capacité.
- On vend des abonnements sur la capacité libre à la pointe, corrigée du taux de présence des abonnés.
- Le prix se situe entre le coût horaire équivalent pour l''usager et le seuil qui protège la marge.
- Le suivi des refus de clients horaires vérifie qu''on n''a pas trop vendu.

## Exercices

- Exercice 1 : un usager stationne 6 heures par jour, 20 jours par mois. Avec la grille standard, combien paierait-il au mois ? Quelle économie fait-il avec un abonnement à 20 000 FCFA ?
- Exercice 2 : parking de 200 places, demande horaire de pointe 130 véhicules, marge de confort 10 places, présence des abonnés 75 %. Calculez le quota d''abonnements.
- Exercice 3 : avec 80 abonnements à 22 000 FCFA et une marge sur coûts variables de 92 %, de combien augmente le résultat mensuel ?
- Exercice 4 : citez cinq clauses d''un contrat d''abonnement.

## Corrigé

Exercice 1 : par jour 300 + 5 × 200 = 1 300 FCFA ; par mois 1 300 × 20 = 26 000 FCFA. Économie : 26 000 - 20 000 = 6 000 FCFA, soit environ 23 %.

Exercice 2 : capacité libre = 200 - 130 - 10 = 60 places ; quota = 60 / 0,75 = 80 abonnements.

Exercice 3 : recette = 80 × 22 000 = 1 760 000 FCFA ; hausse du résultat = 1 760 000 × 0,92 = 1 619 200 FCFA par mois (si aucun client horaire n''est évincé).

Exercice 4 : durée, prix et modalités de paiement, horaires et zone d''accès, conséquences d''un retard de paiement, conditions de résiliation, responsabilité de l''exploitant, traitement des données personnelles.', 'texte', 55, false, 30
from public.courses c where c.slug = 'formation-parking-public'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Abonnements et rentabilité : dimensionner et chiffrer l''offre');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Caisse, encaissement et contrôle des recettes', '## Objectifs de la leçon

- Organiser l''encaissement selon les moyens de paiement.
- Réaliser un rapprochement entre véhicules, tickets et recettes.
- Mettre en place des contrôles contre les erreurs et la fraude.

## Pourquoi la caisse est le point sensible

Un parking encaisse chaque jour des centaines de petits montants, souvent en espèces, à des heures étendues et par plusieurs agents successifs. C''est le terrain idéal pour les erreurs (rendu de monnaie, ticket mal lu) et pour la fraude (ticket réutilisé, sortie déclarée gratuite, recette non saisie). Un écart de quelques milliers de francs par jour représente, sur un an, des sommes importantes. Le contrôle des recettes est donc au cœur du métier d''exploitant.

## Les moyens d''encaissement

- La caisse manuelle tenue par un caissier, avec un logiciel qui calcule le montant à partir du ticket.
- La caisse automatique (borne de paiement) qui accepte espèces et cartes.
- Le paiement mobile (porte-monnaie électronique), très répandu en Afrique de l''Ouest, qui laisse une trace électronique.
- Le paiement par carte bancaire.
- La facturation mensuelle pour les abonnés et les entreprises.

Plus la part de paiements électroniques est élevée, plus le contrôle est facile, car chaque paiement est enregistré par un tiers. Les commissions associées sont des charges variables à intégrer au calcul de rentabilité.

## Les règles de base de la caisse

- Chaque caissier a son propre code et sa propre caisse ; on ne partage jamais un tiroir.
- Le fond de caisse est remis et compté en début de poste, signé par les deux parties.
- Chaque ticket est numéroté de façon continue : un numéro manquant doit s''expliquer.
- Les sorties gratuites (franchise, véhicule d''urgence, erreur) sont justifiées et validées par un responsable.
- À la fin du poste, on édite l''état de caisse (souvent appelé ticket Z) qui récapitule les opérations.
- Le comptage des espèces se fait à deux, et les fonds sont mis au coffre ou déposés en banque selon une procédure écrite.

## Le rapprochement physique

Le rapprochement vérifie que tous les véhicules entrés sont justifiés. Sur une journée :

Entrées horaires = sorties payantes + sorties gratuites + tickets perdus + véhicules encore présents en fin de journée.

Le nombre de véhicules présents se constate par un inventaire physique (comptage ou relevé des plaques) à la fermeture ou à une heure fixe.

## Le rapprochement financier

Recette théorique = montant calculé par le système pour toutes les sorties payantes et tickets perdus.

Recette encaissée = espèces comptées (hors fond de caisse) + paiements mobiles + paiements par carte.

Écart = recette encaissée - recette théorique. Un écart nul est l''objectif ; un petit écart s''explique souvent par le rendu de monnaie ; un écart important ou répété déclenche une enquête.

## Exemple chiffré

Journée du lundi, parking de 150 places. Le système enregistre 812 entrées horaires. Les sorties se répartissent ainsi : 780 sorties payantes, 15 sorties gratuites (franchise de 15 minutes), 3 tickets perdus. L''inventaire de 21 h compte 14 véhicules présents.

Rapprochement physique : 780 + 15 + 3 + 14 = 812. Les comptes sont équilibrés.

Recette théorique du système : 486 400 FCFA. Le caissier remet 362 000 FCFA en espèces, dont un fond de caisse de 50 000 FCFA, soit 312 000 FCFA de recettes en espèces. Les paiements mobiles s''élèvent à 170 900 FCFA. Recette encaissée : 312 000 + 170 900 = 482 900 FCFA. Écart : 482 900 - 486 400 = -3 500 FCFA.

L''écart est faible, mais on le note dans le registre des écarts avec le nom du caissier. S''il se répète chaque jour, il représente plus de 100 000 FCFA par mois et justifie une vérification.

## Les indicateurs d''alerte

- Taux de sorties gratuites : sorties gratuites / entrées. Ici 15 / 812 ≈ 1,8 %. Une hausse soudaine chez un caissier particulier est un signal d''alerte classique.
- Nombre de tickets perdus par jour et par caissier.
- Écarts de caisse cumulés par caissier.
- Véhicules présents la nuit inexpliqués (ni abonnés, ni tickets).

## Les contrôles complémentaires

- Séparation des tâches : celui qui encaisse ne saisit pas les annulations et ne fait pas le rapprochement.
- Contrôles inopinés de caisse en cours de poste.
- Rotation des caissiers entre postes et sites.
- Vidéoprotection de la zone de caisse, dans le respect des règles sur les données personnelles.
- Revue mensuelle par la direction des écarts et des indicateurs d''alerte.

## Points clés

- La caisse est le point le plus exposé aux erreurs et à la fraude.
- Deux rapprochements quotidiens : physique (véhicules) et financier (montants).
- Les sorties gratuites, tickets perdus et annulations sont justifiés et validés.
- La séparation des tâches et les contrôles inopinés sont indispensables.

## Exercices

- Exercice 1 : 640 entrées, 598 sorties payantes, 12 gratuites, 2 tickets perdus. Combien de véhicules devraient être présents à la fermeture ? L''inventaire en compte 24 : que concluez-vous ?
- Exercice 2 : recette théorique 395 600 FCFA ; espèces remises 300 000 FCFA dont fond de caisse 40 000 FCFA ; paiements mobiles 132 100 FCFA. Calculez l''écart.
- Exercice 3 : un caissier enregistre 45 sorties gratuites sur 500 entrées, ses collègues environ 2 %. Calculez son taux et commentez.
- Exercice 4 : citez trois mesures de séparation des tâches ou de contrôle.

## Corrigé

Exercice 1 : véhicules attendus = 640 - 598 - 12 - 2 = 28. L''inventaire en trouve 24 : 4 véhicules sont sortis sans être enregistrés (barrière ouverte manuellement, erreur de saisie ou fraude). Il faut analyser les ouvertures manuelles et la vidéoprotection.

Exercice 2 : espèces de recette = 300 000 - 40 000 = 260 000 FCFA ; encaissé = 260 000 + 132 100 = 392 100 FCFA ; écart = 392 100 - 395 600 = -3 500 FCFA.

Exercice 3 : 45 / 500 = 9 %, soit plus de quatre fois le taux habituel. C''est un signal d''alerte : vérifier les justificatifs de chaque sortie gratuite, les images de caisse, et faire un contrôle inopiné.

Exercice 4 : par exemple, l''encaissement et la validation des annulations par deux personnes différentes ; le rapprochement fait par un responsable qui n''encaisse pas ; les contrôles inopinés de caisse ; la rotation des caissiers.', 'texte', 55, false, 40
from public.courses c where c.slug = 'formation-parking-public'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Caisse, encaissement et contrôle des recettes');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Piloter un ou plusieurs sites avec des indicateurs', '## Objectifs de la leçon

- Choisir les indicateurs pour piloter un ou plusieurs parkings.
- Comparer des sites de tailles différentes.
- Organiser la gestion multi-sites et décider des actions.

## Pourquoi des indicateurs

Quand un exploitant gère un seul parking, il le voit chaque jour. Quand il en gère trois, cinq ou dix, dans plusieurs quartiers ou plusieurs villes, il ne peut plus tout observer. Il lui faut un tableau de bord commun, avec des indicateurs calculés de la même façon partout, pour comparer les sites, repérer les anomalies et décider où investir ou réduire les coûts.

## Les indicateurs d''activité

- Taux d''occupation moyen : places-heures occupées / places-heures offertes.
- Taux de pointe : occupation maximale observée.
- Nombre d''entrées par jour.
- Taux de rotation : nombre d''entrées horaires par place et par jour. Un taux de 4 signifie qu''en moyenne chaque place a accueilli 4 véhicules dans la journée.
- Durée moyenne de stationnement.

## Les indicateurs économiques

- Recette par place et par mois (souvent appelée revenu par place disponible) : recette totale / nombre de places. Il permet de comparer des parkings de tailles différentes.
- Ticket moyen : recette horaire / nombre de sorties payantes.
- Part des abonnements dans la recette.
- Charges par place.
- Marge du site : recettes - charges directes du site ; taux de marge = marge / recettes.

## Les indicateurs de qualité et de contrôle

- Écarts de caisse cumulés et taux de sorties gratuites.
- Taux de disponibilité des équipements (barrières, bornes de paiement).
- Nombre de réclamations et d''incidents.
- Nombre de refus de clients faute de place.

## Exemple : un exploitant avec trois sites

Un exploitant gère trois parkings. Données d''un mois :

- Site A, Plateau (Dakar) : 200 places, recettes 12 000 000 FCFA, charges directes 7 000 000 FCFA, 25 000 sorties payantes, recette horaire 10 000 000 FCFA.
- Site B, Almadies (Dakar) : 120 places, recettes 4 800 000 FCFA, charges directes 3 600 000 FCFA.
- Site C, centre de Thiès : 80 places, recettes 2 000 000 FCFA, charges directes 1 900 000 FCFA.

Calculons la recette par place et par mois : A : 12 000 000 / 200 = 60 000 FCFA ; B : 4 800 000 / 120 = 40 000 FCFA ; C : 2 000 000 / 80 = 25 000 FCFA.

Marges : A : 12 000 000 - 7 000 000 = 5 000 000 FCFA, soit 41,7 % ; B : 4 800 000 - 3 600 000 = 1 200 000 FCFA, soit 25 % ; C : 2 000 000 - 1 900 000 = 100 000 FCFA, soit 5 %.

Ensemble : recettes 18 800 000 FCFA, charges directes 12 500 000 FCFA, marge 6 300 000 FCFA avant frais du siège.

Pour le site A : ticket moyen = 10 000 000 / 25 000 = 400 FCFA ; sorties par jour = 25 000 / 30 ≈ 833 ; rotation ≈ 833 / 200 ≈ 4,2 véhicules par place et par jour.

## Interpréter et décider

Le site C est presque à l''équilibre. Avant de le fermer, on analyse : est-ce un problème de demande (faible occupation), de prix (ticket moyen bas) ou de coûts (trop de personnel pour 80 places) ? Si l''occupation est bonne mais le ticket faible, on revoit la grille. Si les coûts sont élevés, on mutualise.

## Organiser la gestion multi-sites

La mutualisation est le principal avantage d''un réseau de parkings :

- Supervision centralisée : un poste central surveille les barrières et répond aux interphones de plusieurs sites, ce qui réduit le personnel de nuit.
- Logiciel unique : mêmes grilles, mêmes règles de caisse, consolidation automatique des données.
- Maintenance commune : un technicien et un stock de pièces pour tous les sites.
- Abonnements réseau : un abonné peut accéder à plusieurs sites, ce qui augmente la valeur de l''offre.
- Procédures standard : manuel d''exploitation commun, formation identique des agents.

Le responsable de réseau anime une revue mensuelle par site : indicateurs, écarts par rapport à l''objectif, causes, actions et responsables.

## Points clés

- On compare des sites différents avec des ratios : recette par place, marge en pourcentage, rotation, ticket moyen.
- Les indicateurs couvrent l''activité, l''économie, la qualité et le contrôle.
- Un site faible s''analyse par la demande, le prix et les coûts avant toute décision.
- La mutualisation (supervision, logiciel, maintenance, abonnements) est le levier du multi-sites.

## Exercices

- Exercice 1 : un parking de 90 places réalise 3 150 000 FCFA de recettes par mois. Calculez la recette par place.
- Exercice 2 : recette horaire 6 000 000 FCFA pour 16 000 sorties payantes. Calculez le ticket moyen.
- Exercice 3 : 120 places, 14 400 sorties horaires en 30 jours. Calculez le taux de rotation.
- Exercice 4 : recettes 5 500 000 FCFA, charges directes 4 400 000 FCFA. Calculez la marge et le taux de marge.
- Exercice 5 : proposez trois actions pour un site dont l''occupation est bonne mais la marge faible.

## Corrigé

Exercice 1 : 3 150 000 / 90 = 35 000 FCFA par place et par mois.

Exercice 2 : 6 000 000 / 16 000 = 375 FCFA.

Exercice 3 : sorties par jour = 14 400 / 30 = 480 ; rotation = 480 / 120 = 4 véhicules par place et par jour.

Exercice 4 : marge = 5 500 000 - 4 400 000 = 1 100 000 FCFA ; taux = 1 100 000 / 5 500 000 = 20 %.

Exercice 5 : revoir la grille tarifaire (ticket moyen trop bas, plafond trop faible) ; réduire les charges en mutualisant la supervision de nuit ou la maintenance ; contrôler la caisse (écarts, sorties gratuites) ; développer des recettes annexes (lavage, publicité).', 'texte', 50, false, 50
from public.courses c where c.slug = 'formation-parking-public'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Piloter un ou plusieurs sites avec des indicateurs');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : exploiter un parking rentable, du tarif au tableau de bord', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : exploitants et futurs exploitants de parkings, chefs de parking, responsables financiers, agents des collectivités.
- Objectifs : bâtir le modèle économique d''un parking, construire une grille tarifaire et une offre d''abonnements chiffrées, contrôler les recettes, piloter plusieurs sites.
- Matériel : diaporama, tableur projeté, calculatrice, tableau blanc.
- Prérequis : maîtriser les pourcentages ; avoir lu les leçons du module est recommandé.

## Déroulé minuté

## 00:00 – 06:00 · Introduction et cas fil rouge

Bonjour et bienvenue. Aujourd''hui, nous allons nous mettre dans la peau d''un exploitant de parking. Notre cas fil rouge : la société fictive Ndar Parking vient de remporter l''exploitation d''un parking de 120 places près de l''hôpital régional de Saint-Louis, ouvert de 6 h à 22 h, soit 16 heures par jour. Elle exploite déjà deux petits parkings en ville. Notre mission tout au long de la séance : construire son modèle économique, ses tarifs, ses procédures de caisse et son tableau de bord.

Visuel : photo d''un parking de surface avec barrière, guérite et borne de paiement. Question d''ouverture : selon vous, qui sont les clients d''un parking d''hôpital ? Notez trois catégories.

## 06:00 – 18:00 · Le modèle économique

Les clients d''un parking d''hôpital sont les visiteurs de patients, les patients en consultation, le personnel soignant et les fournisseurs. Les deux premiers sont des clients horaires ; le personnel peut devenir abonné.

Construisons le compte prévisionnel. L''offre est de 120 places × 16 heures = 1 920 places-heures par jour. Ndar Parking retient une occupation prudente de 50 %, soit 960 places-heures occupées. Le revenu moyen par place-heure est estimé à 200 FCFA. Recette par jour : 960 × 200 = 192 000 FCFA. Sur 30 jours : 5 760 000 FCFA.

Les charges fixes s''élèvent à 3 200 000 FCFA par mois : redevance fixe à la collectivité, quatre agents, gardiennage de nuit, électricité, maintenance. Les charges variables représentent 10 % des recettes. La marge sur coûts variables vaut donc 90 % de 5 760 000, soit 5 184 000 FCFA, et le résultat 5 184 000 - 3 200 000 = 1 984 000 FCFA par mois.

Seuil de rentabilité : 3 200 000 divisé par 0,90, soit environ 3 555 556 FCFA. La recette maximale à 100 % d''occupation serait 1 920 × 200 × 30 = 11 520 000 FCFA. Le seuil correspond donc à une occupation d''environ 31 %. Visuel : graphique recettes et charges qui se croisent au seuil. Question : que se passe-t-il si la redevance devient variable au lieu d''être fixe ? Réponse attendue : le seuil baisse et le risque est partagé avec la collectivité.

## 18:00 – 32:00 · La grille tarifaire horaire

Dans un parking d''hôpital, les visites durent souvent entre une et trois heures, mais certains accompagnants restent toute la journée. Ndar Parking veut un tarif simple et humain. Proposition : franchise 15 minutes, première heure 200 FCFA, heures suivantes 150 FCFA, toute heure entamée due, plafond 1 500 FCFA par journée.

Calculons ensemble. Un visiteur reste 2 h 40 : il entame 3 heures, il paie 200 + 2 × 150 = 500 FCFA. Un accompagnant reste 11 heures : 200 + 10 × 150 = 1 700 FCFA, ramené au plafond de 1 500 FCFA. À partir de combien d''heures le plafond joue-t-il ? Pour h heures, le montant est 200 + 150 × (h - 1). Pour 9 heures, 200 + 1 200 = 1 400 FCFA ; pour 10 heures, 1 550 FCFA, donc le plafond s''applique dès la 10e heure.

Visuel : tableau de la grille et courbe du montant en fonction de la durée. Discutons du fractionnement au quart d''heure : plus juste pour l''usager, il réduit légèrement la recette. Pour 2 h 40 au quart d''heure, avec 37,5 FCFA par quart d''heure, on aurait un montant non rond ; c''est pourquoi on choisit des prix divisibles, comme 50 FCFA le quart d''heure pour 200 FCFA l''heure. Question à la salle : faut-il un tarif plus élevé pour favoriser la rotation près d''un hôpital ? Écoutons vos arguments sur l''équité et l''accès aux soins.

## 32:00 – 44:00 · Les abonnements du personnel

Le personnel de l''hôpital stationne en moyenne 9 heures par jour, 22 jours par mois. À l''heure, il paierait 200 + 8 × 150 = 1 400 FCFA par jour, soit 30 800 FCFA par mois. Ndar Parking propose un abonnement à 18 000 FCFA, soit une économie de 12 800 FCFA, plus de 40 %.

Combien d''abonnements vendre ? La demande horaire de pointe, mesurée à 10 h, est de 70 véhicules. On garde une marge de confort de 10 places. Capacité libre à la pointe : 120 - 70 - 10 = 40 places. Le personnel travaillant en équipes, la présence simultanée maximale des abonnés est de 65 %. Quota : 40 divisé par 0,65, environ 61,5, arrondi à 61 abonnements.

Recette supplémentaire : 61 × 18 000 = 1 098 000 FCFA par mois. Avec 90 % de marge sur coûts variables, le résultat augmente de 988 200 FCFA, à condition de ne pas évincer de clients horaires. Visuel : tableau comparatif avant et après abonnements.

## 44:00 – 50:00 · Pause et quiz interactif

Petite pause active. Cinq questions, répondez dans le chat.

Question 1 : un parking de 100 places ouvert 12 heures offre combien de places-heures par jour ? Réponse : 1 200.

Question 2 : avec la grille de Ndar Parking, combien paie-t-on pour 1 h 10 ? Réponse : 2 heures entamées, 200 + 150 = 350 FCFA.

Question 3 : charges fixes 1 800 000 FCFA, marge sur coûts variables 90 % : quel seuil ? Réponse : 2 000 000 FCFA.

Question 4 : capacité libre de 30 places, présence des abonnés 75 % : quel quota ? Réponse : 40 abonnements.

Question 5 : qu''est-ce que le forfait ticket perdu ? Réponse : le montant dû quand l''usager ne présente pas son ticket, souvent égal au plafond journalier.

## 50:00 – 1:04:00 · Caisse et contrôle des recettes

Passons à la caisse, le point le plus sensible. Ndar Parking encaisse en espèces et par paiement mobile. Rappelons les règles : un code et un tiroir par caissier, un fond de caisse compté et signé, des tickets numérotés en continu, des sorties gratuites justifiées et validées, un état de caisse en fin de poste, un comptage à deux.

Exercice en direct. Mardi : 540 entrées horaires ; 505 sorties payantes ; 10 sorties gratuites ; 2 tickets perdus ; l''inventaire de 22 h compte 23 véhicules. Faisons le rapprochement physique : 505 + 10 + 2 + 23 = 540. C''est équilibré.

Rapprochement financier : recette théorique 268 300 FCFA. Le caissier remet 215 000 FCFA d''espèces dont 30 000 FCFA de fond de caisse, soit 185 000 FCFA de recettes ; paiements mobiles 81 300 FCFA. Total encaissé : 266 300 FCFA. Écart : moins 2 000 FCFA. On l''inscrit au registre des écarts.

Visuel : le tableau des indicateurs d''alerte par caissier. Le caissier du soir enregistre 6 % de sorties gratuites contre 2 % pour les autres. Question : que faites-vous ? Réponse attendue : vérifier chaque justificatif, consulter la vidéoprotection de la caisse dans le respect des règles, procéder à un contrôle inopiné, et rappeler la procédure, sans accuser avant d''avoir des faits.

## 1:04:00 – 1:18:00 · Piloter trois sites

Ndar Parking gère maintenant trois sites. Visuel : tableau du mois. Site hôpital : 120 places, recettes 6 858 000 FCFA, charges directes 3 900 000 FCFA. Site centre-ville : 60 places, recettes 2 100 000 FCFA, charges 1 500 000 FCFA. Site gare routière : 50 places, recettes 1 000 000 FCFA, charges 1 050 000 FCFA.

Calculons la recette par place : hôpital 6 858 000 / 120 = 57 150 FCFA ; centre-ville 2 100 000 / 60 = 35 000 FCFA ; gare routière 1 000 000 / 50 = 20 000 FCFA. Les marges : hôpital 2 958 000 FCFA, soit environ 43 % ; centre-ville 600 000 FCFA, soit environ 29 % ; gare routière moins 50 000 FCFA, une perte.

Avant de fermer la gare routière, analysons. Son occupation est de 75 %, donc la demande existe. Mais son ticket moyen est de 150 FCFA seulement et elle emploie deux agents de jour et un de nuit. Les actions : revoir la grille avec un forfait journée adapté aux voyageurs, mutualiser le gardiennage de nuit avec le centre-ville par une supervision centralisée, et proposer des abonnements aux transporteurs. Question à la salle : quel indicateur suivriez-vous chaque semaine pour vérifier l''effet de ces actions ?

## 1:18:00 – 1:30:00 · Synthèse et évaluation finale

Résumons. Un parking est une entreprise de services dont la matière première est la place-heure. Le modèle économique sépare charges fixes et variables pour calculer le seuil de rentabilité. La grille tarifaire oriente les comportements. Les abonnements se vendent sur la capacité libre à la pointe. La caisse se contrôle par deux rapprochements quotidiens. Le multi-sites se pilote avec des ratios comparables et la mutualisation.

Évaluation finale, cinq questions.

Question 1 : un parking de 200 places ouvert 10 heures, occupé à 60 %, avec 250 FCFA par place-heure : recette journalière ? Réponse : 200 × 10 × 0,60 × 250 = 300 000 FCFA.

Question 2 : grille 300 FCFA la première heure, 200 FCFA les suivantes, heure entamée due : montant pour 4 h 15 ? Réponse : 5 heures entamées, 300 + 4 × 200 = 1 100 FCFA.

Question 3 : capacité libre 45 places, présence des abonnés 90 % : quota ? Réponse : 50 abonnements.

Question 4 : 700 entrées, 660 sorties payantes, 14 gratuites, 1 ticket perdu : combien de véhicules attendus à l''inventaire ? Réponse : 700 - 660 - 14 - 1 = 25.

Question 5 : recettes 4 000 000 FCFA, charges directes 3 000 000 FCFA : taux de marge ? Réponse : 1 000 000 / 4 000 000 = 25 %.

Merci à tous. Votre travail personnel : construire le compte prévisionnel et la grille tarifaire d''un parking que vous connaissez, avec le modèle de tableur fourni.', 'video', 90, false, 60
from public.courses c where c.slug = 'formation-parking-public'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : exploiter un parking rentable, du tarif au tableau de bord');

-- Cours : Gestion de flotte automobile
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'formation-gestion-flotte', (select id from public.levels where name = 'Formation professionnelle'), 'flotte', 'Gestion de flotte', 'Gestion de flotte automobile', 'Cette formation donne les méthodes pour gérer un parc de véhicules d''entreprise ou d''administration : inventaire et dossier véhicule, maintenance préventive et curative, pneumatiques, assurances et échéances administratives, calcul du coût total de possession (TCO) et politique conducteurs. Elle s''adresse aux gestionnaires de flotte, chefs de parc, responsables des services généraux et dirigeants de PME. Prérequis : calculs de base, pourcentages et usage d''un tableur.', true, 90
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Organiser la gestion de flotte : inventaire et dossier véhicule', '## Objectifs de la leçon

- Comprendre le rôle du gestionnaire de flotte.
- Construire l''inventaire du parc et le dossier de chaque véhicule.
- Mettre en place les outils de suivi de base.

## Qu''est-ce que la gestion de flotte ?

Une flotte automobile est l''ensemble des véhicules qu''une organisation possède, loue ou met à disposition de ses salariés : voitures de direction, véhicules commerciaux, pick-up de chantier, camionnettes de livraison, motos de coursiers, minibus de transport du personnel. Pour une entreprise de distribution, une ONG ou un projet de développement au Sénégal, la flotte représente souvent l''un des premiers postes de dépenses après les salaires.

Gérer une flotte, c''est garantir que les bons véhicules sont disponibles au bon moment, en bon état, en règle avec la réglementation, conduits par des personnes autorisées, au coût le plus juste. Le gestionnaire de flotte coordonne l''achat ou la location, l''affectation, l''entretien, les assurances, le carburant, les sinistres et la revente.

## Les missions du gestionnaire

- Tenir l''inventaire du parc et les dossiers véhicules.
- Planifier et suivre la maintenance.
- Gérer les échéances administratives : assurances, visites techniques, taxes.
- Contrôler les dépenses : carburant, réparations, pneus, péages.
- Gérer les conducteurs : autorisations, règles, sinistres, amendes.
- Analyser les coûts et proposer le renouvellement des véhicules.

## L''inventaire du parc

L''inventaire est la liste exhaustive des véhicules, mise à jour à chaque entrée ou sortie. Chaque véhicule reçoit un code interne unique (par exemple VL-012 pour un véhicule léger, PL-003 pour un poids lourd). L''inventaire comporte au minimum :

- Le code interne et l''immatriculation.
- La marque, le modèle, la version, la motorisation et le type de carburant.
- Le numéro de châssis (numéro d''identification du véhicule).
- La date de mise en circulation et la date d''entrée dans le parc.
- Le mode de détention : achat, crédit, location longue durée, mise à disposition.
- La valeur d''achat ou le loyer.
- Le service et le conducteur affectés.
- Le kilométrage à date.
- L''état général (bon, moyen, à réformer).

On recommande de faire chaque année un inventaire physique : on vérifie que chaque véhicule existe, qu''il est au bon endroit, que le kilométrage déclaré est exact et que les documents sont à bord.

## Le dossier véhicule

Chaque véhicule a un dossier, papier et numérique, qui suit le véhicule toute sa vie dans l''entreprise. Il contient :

- Les documents d''identité du véhicule : carte grise (certificat d''immatriculation), facture d''achat ou contrat de location, certificat de dédouanement le cas échéant.
- Les documents de conformité : attestation d''assurance, procès-verbal de visite technique, justificatifs de taxes.
- Le carnet d''entretien et l''historique des interventions avec les factures.
- Les fiches de sinistres et les constats.
- Les procès-verbaux de remise du véhicule aux conducteurs successifs, avec l''état des lieux et le kilométrage.

Les originaux sont conservés au bureau ; des copies certifiées ou les documents exigés sont placés à bord, selon la réglementation et les recommandations de l''assureur.

## Les outils de suivi

Pour une petite flotte, un tableur bien structuré suffit : un onglet inventaire, un onglet échéances, un onglet interventions, un onglet carburant. Au-delà d''une trentaine de véhicules, un logiciel de gestion de flotte devient utile : alertes automatiques, saisie des pleins, tableaux de bord, lien avec la géolocalisation.

L''information de base qui alimente tout le système est le kilométrage. Il est relevé régulièrement (à chaque plein, chaque semaine ou par le traceur GPS) et sert à planifier l''entretien et à calculer les coûts au kilomètre.

## Exemple : une ONG à Kaolack

Une ONG de santé basée à Kaolack possède 18 véhicules, dont 10 pick-up utilisés pour les tournées dans les villages. Lors de la prise de poste du nouveau gestionnaire, aucun inventaire n''existait. Il a réalisé en deux semaines : la liste complète avec les codes VL-001 à VL-018, la vérification physique de chaque véhicule, et un dossier par véhicule. Il a découvert deux véhicules dont l''assurance avait expiré, un pick-up immobilisé depuis quatre mois dans un garage en attente d''une pièce, et un écart de 12 000 km entre le kilométrage déclaré et le compteur réel d''un véhicule. Ces constats ont justifié la mise en place d''un suivi mensuel.

## Points clés

- La flotte est un poste de dépenses majeur qu''il faut gérer comme un actif.
- L''inventaire est exhaustif, codifié, et vérifié physiquement chaque année.
- Chaque véhicule a un dossier complet qui le suit toute sa vie.
- Le kilométrage est l''information de base de tout le suivi.

## Exercices

- Exercice 1 : citez six informations obligatoires de l''inventaire d''un véhicule.
- Exercice 2 : quels documents mettez-vous dans le dossier d''un véhicule acheté neuf ?
- Exercice 3 : un pick-up affiche 86 400 km au 1er janvier et 113 400 km au 31 décembre. Calculez son kilométrage annuel et mensuel moyen.
- Exercice 4 : pourquoi faut-il un procès-verbal de remise à chaque changement de conducteur ?

## Corrigé

Exercice 1 : par exemple code interne, immatriculation, marque et modèle, numéro de châssis, date de mise en circulation, mode de détention, conducteur affecté, kilométrage.

Exercice 2 : la carte grise, la facture d''achat, l''attestation d''assurance, le carnet d''entretien et la garantie constructeur, le procès-verbal de remise au premier conducteur ; puis, au fil du temps, les visites techniques, factures d''entretien et fiches de sinistres.

Exercice 3 : kilométrage annuel = 113 400 - 86 400 = 27 000 km ; mensuel moyen = 27 000 / 12 = 2 250 km.

Exercice 4 : il établit l''état du véhicule, le kilométrage et les équipements au moment de la remise. En cas de dommage, de pièce manquante ou d''écart de kilométrage, on sait à quelle période et à quel conducteur l''attribuer.', 'texte', 45, true, 10
from public.courses c where c.slug = 'formation-gestion-flotte'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Organiser la gestion de flotte : inventaire et dossier véhicule');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Maintenance préventive et curative', '## Objectifs de la leçon

- Distinguer maintenance préventive et curative.
- Construire un plan de maintenance préventive.
- Suivre les interventions et calculer les indicateurs de maintenance.

## Deux types de maintenance

La maintenance préventive est réalisée avant la panne, selon un calendrier ou un kilométrage : vidange, remplacement des filtres, contrôle des freins, de la courroie de distribution, des liquides, de la batterie. Elle suit les préconisations du constructeur inscrites dans le carnet d''entretien, adaptées aux conditions d''usage.

La maintenance curative est réalisée après une panne ou un accident : remplacement d''un alternateur défaillant, réparation d''une suspension cassée, carrosserie après un choc.

Le préventif coûte moins cher que le curatif, car une panne entraîne souvent des dégâts en chaîne (une courroie qui casse peut endommager le moteur), une immobilisation imprévue, un dépannage et parfois un accident. Un gestionnaire cherche donc à augmenter la part du préventif.

## Les conditions sévères

En Afrique de l''Ouest, de nombreux véhicules roulent dans des conditions que les constructeurs qualifient de sévères : chaleur, poussière et latérite, pistes dégradées, trajets courts en ville avec embouteillages, charges lourdes. Les carnets d''entretien prévoient souvent des intervalles raccourcis pour ces usages. Le gestionnaire doit les lire et appliquer le programme adapté, notamment pour les filtres à air et les vidanges.

## Construire un plan de maintenance préventive

- Lister pour chaque modèle les opérations du carnet et leur intervalle (en kilomètres et en mois, le premier atteint faisant foi).
- Relever le kilométrage de chaque véhicule régulièrement.
- Calculer pour chaque opération le prochain kilométrage ou la prochaine date d''échéance.
- Programmer l''intervention quelques jours avant l''échéance, en coordination avec le service utilisateur.
- Enregistrer l''intervention réalisée et recalculer l''échéance suivante.

Exemple de calcul : un véhicule dont la vidange est prévue tous les 10 000 km (valeur d''exemple, à vérifier dans le carnet) a eu sa dernière vidange à 40 000 km. Il affiche aujourd''hui 47 200 km. Prochaine vidange à 50 000 km, soit dans 2 800 km. S''il roule 250 km par jour ouvré, l''échéance arrive dans environ 2 800 / 250 = 11,2 jours ouvrés : on programme l''intervention dans 10 jours.

## L''ordre de réparation

Toute intervention, interne ou en garage, fait l''objet d''un ordre de réparation : véhicule, kilométrage, symptômes ou opérations demandées, date d''entrée, devis accepté, pièces remplacées, main-d''œuvre, date de sortie, coût total. Sans ordre de réparation signé, aucune facture n''est payée. Cette règle simple évite les travaux non demandés et les surfacturations.

## Choisir les prestataires

Le gestionnaire compare plusieurs garages sur des critères écrits : compétence sur les modèles du parc, disponibilité des pièces, délais, prix de la main-d''œuvre, garantie sur les réparations, proximité. Il négocie un tarif horaire et des délais, et vérifie régulièrement les pièces remplacées (on peut demander la restitution des pièces usagées).

## Les indicateurs de maintenance

Le taux de disponibilité mesure la part du temps où les véhicules sont utilisables : taux = jours disponibles / jours calendaires. Pour 25 véhicules sur 30 jours, on a 750 jours-véhicules. Si les immobilisations totalisent 48 jours, la disponibilité est (750 - 48) / 750 = 702 / 750 = 93,6 %.

La part du préventif est le coût du préventif divisé par le coût total de maintenance.

Le coût de maintenance au kilomètre est le coût total de maintenance divisé par les kilomètres parcourus.

La durée moyenne d''immobilisation est le nombre de jours d''immobilisation divisé par le nombre d''interventions.

## Exemple : une société de distribution à Dakar

Sur une année, la flotte de 25 véhicules d''une société de distribution a parcouru 750 000 km. Les dépenses de maintenance s''élèvent à 9 000 000 FCFA, dont 5 400 000 FCFA de préventif et 3 600 000 FCFA de curatif.

- Coût au kilomètre : 9 000 000 / 750 000 = 12 FCFA par km.
- Part du préventif : 5 400 000 / 9 000 000 = 60 %.

L''analyse des interventions curatives montre que 40 % concernent les freins et les suspensions de quatre camionnettes affectées à des livraisons en zone périurbaine sur pistes. Décision : contrôle des freins et des suspensions à chaque vidange pour ces véhicules et formation des chauffeurs au chargement. L''objectif est de faire passer le préventif à 70 % l''année suivante.

## Points clés

- Le préventif coûte moins cher que le curatif et réduit les immobilisations.
- Le plan de maintenance suit le carnet du constructeur, adapté aux conditions sévères.
- Aucune intervention sans ordre de réparation signé.
- On suit la disponibilité, la part du préventif, le coût au km et la durée d''immobilisation.

## Exercices

- Exercice 1 : classez en préventif ou curatif : vidange, remplacement d''un pare-brise fissuré, changement du filtre à air, réparation d''un démarreur, contrôle des plaquettes de frein.
- Exercice 2 : dernière vidange à 62 000 km, intervalle 7 500 km, compteur à 67 900 km. Combien de kilomètres reste-t-il avant la vidange ?
- Exercice 3 : 12 véhicules, mois de 31 jours, 22 jours d''immobilisation au total. Calculez le taux de disponibilité.
- Exercice 4 : maintenance totale 4 800 000 FCFA dont 2 160 000 FCFA de curatif, 320 000 km parcourus. Calculez la part du préventif et le coût au km.

## Corrigé

Exercice 1 : préventif : vidange, filtre à air, contrôle des plaquettes. Curatif : pare-brise fissuré, réparation du démarreur.

Exercice 2 : prochaine vidange à 62 000 + 7 500 = 69 500 km ; reste 69 500 - 67 900 = 1 600 km.

Exercice 3 : jours-véhicules = 12 × 31 = 372 ; disponibles = 372 - 22 = 350 ; taux = 350 / 372 ≈ 94,1 %.

Exercice 4 : préventif = 4 800 000 - 2 160 000 = 2 640 000 FCFA ; part = 2 640 000 / 4 800 000 = 55 %. Coût au km = 4 800 000 / 320 000 = 15 FCFA.', 'texte', 55, false, 20
from public.courses c where c.slug = 'formation-gestion-flotte'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Maintenance préventive et curative');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Gérer les pneumatiques de la flotte', '## Objectifs de la leçon

- Lire les marquages d''un pneumatique.
- Organiser le suivi et l''entretien des pneus de la flotte.
- Calculer le coût des pneus au kilomètre et l''effet d''une mauvaise gestion.

## Pourquoi les pneus méritent une attention particulière

Le pneu est le seul contact entre le véhicule et la route. Il conditionne le freinage, la tenue de route, la consommation de carburant et le confort. C''est aussi un poste de dépenses important et souvent mal contrôlé : pneus changés trop tôt ou trop tard, pneus de qualité douteuse, vols ou échanges frauduleux. Sur des routes chaudes et parfois dégradées, une bonne gestion des pneus fait une différence nette sur les coûts et la sécurité.

## Lire le marquage d''un pneu

Prenons le marquage 205/55 R16 91V :

- 205 : largeur du pneu en millimètres.
- 55 : rapport entre la hauteur du flanc et la largeur, en pourcentage. La hauteur du flanc est 205 × 0,55 ≈ 113 mm.
- R : structure radiale.
- 16 : diamètre de la jante en pouces.
- 91 : indice de charge ; il correspond à 615 kg par pneu selon le tableau normalisé.
- V : indice de vitesse ; il correspond à 240 km/h maximum.

La date de fabrication figure dans un code à quatre chiffres : 2324 signifie 23e semaine de 2024. Un pneu ancien, même peu usé, durcit et se fissure ; beaucoup de professionnels évitent de monter des pneus stockés depuis trop longtemps.

Les pneus de remplacement doivent respecter les dimensions et les indices prévus pour le véhicule (indiqués dans le carnet ou sur l''étiquette de la portière). Un indice de charge insuffisant sur une camionnette chargée est dangereux.

## Les règles d''entretien

La pression se contrôle à froid, au moins une fois par mois et avant un long trajet, selon les valeurs du constructeur. Un pneu sous-gonflé s''use plus vite sur les bords, chauffe, augmente la consommation et risque l''éclatement. Un pneu surgonflé s''use au centre et adhère moins.

La profondeur des sculptures se mesure avec une jauge. La réglementation fixe une profondeur minimale ; vérifiez la valeur en vigueur. De nombreux gestionnaires fixent un seuil interne de remplacement plus élevé que le minimum légal, pour garder une bonne adhérence sous la pluie pendant l''hivernage.

La permutation consiste à échanger la position des pneus (avant et arrière) à intervalles réguliers pour égaliser l''usure, selon les préconisations du constructeur.

Le parallélisme et l''équilibrage se contrôlent après un choc, lors d''un changement de pneus ou en cas d''usure irrégulière ou de vibrations.

## Organiser le suivi

Chaque pneu peut être identifié (marquage interne ou numéro de série) et suivi dans une fiche : véhicule, position, date et kilométrage de montage, profondeur aux contrôles, date et kilométrage de dépose, motif (usure, crevaison, éclatement). Cette traçabilité permet de calculer la durée de vie réelle par marque et par véhicule, de repérer les conducteurs ou itinéraires qui usent anormalement, et d''éviter le remplacement de pneus en bon état par des pneus usés.

Le stock de pneus neufs est tenu en magasin fermé, à l''abri du soleil et de la chaleur, avec des entrées et sorties enregistrées. Un pneu usé n''est remplacé que contre restitution de l''ancien.

## Calcul du coût au kilomètre

Coût au km = (prix des pneus + montage et équilibrage) / kilomètres parcourus avec ces pneus.

Exemple : un véhicule léger reçoit 4 pneus à 60 000 FCFA, plus 20 000 FCFA de montage et d''équilibrage, soit 260 000 FCFA. Avec un entretien correct, le train dure 40 000 km : coût = 260 000 / 40 000 = 6,5 FCFA par km.

Si la pression n''est pas surveillée et que le train ne dure que 30 000 km : coût = 260 000 / 30 000 ≈ 8,67 FCFA par km.

Pour une flotte de 20 véhicules qui roulent chacun 40 000 km par an, soit 800 000 km : surcoût = (8,67 - 6,5) × 800 000 ≈ 1 733 000 FCFA par an. Sans compter le carburant supplémentaire et le risque d''accident.

## Exemple : une entreprise de BTP à Mbour

Une entreprise de BTP constate que les pneus de ses pick-up durent en moyenne 25 000 km. Le suivi par pneu montre que les pneus avant droits s''usent deux fois plus vite sur trois véhicules : parallélisme déréglé après des passages sur chantier. Le gestionnaire impose un contrôle de géométrie tous les trois mois, un contrôle mensuel de la pression par le chef de parc et des pneus adaptés aux pistes pour les véhicules de chantier. La durée moyenne remonte à 35 000 km.

## Points clés

- Le marquage indique dimensions, charge, vitesse et date : on respecte les spécifications du véhicule.
- Pression, profondeur, permutation et géométrie sont les quatre gestes d''entretien.
- Chaque pneu est tracé du montage à la dépose ; le stock est contrôlé.
- Le coût au km mesure l''efficacité de la gestion des pneus.

## Exercices

- Exercice 1 : décodez le marquage 195/65 R15 91H, sachant que H correspond à 210 km/h. Calculez la hauteur du flanc.
- Exercice 2 : que signifie le code de date 0825 ?
- Exercice 3 : 4 pneus à 75 000 FCFA, montage 24 000 FCFA, durée 48 000 km. Calculez le coût au km.
- Exercice 4 : citez trois conséquences d''un sous-gonflage.

## Corrigé

Exercice 1 : largeur 195 mm ; hauteur du flanc égale à 65 % de la largeur, soit 195 × 0,65 = 126,75 mm, environ 127 mm ; structure radiale ; jante de 15 pouces ; indice de charge 91 (615 kg par pneu) ; vitesse maximale 210 km/h.

Exercice 2 : pneu fabriqué la 8e semaine de 2025.

Exercice 3 : coût total = 4 × 75 000 + 24 000 = 324 000 FCFA ; coût au km = 324 000 / 48 000 = 6,75 FCFA.

Exercice 4 : usure rapide des bords, hausse de la consommation de carburant, échauffement et risque d''éclatement, tenue de route dégradée.', 'texte', 45, false, 30
from public.courses c where c.slug = 'formation-gestion-flotte'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Gérer les pneumatiques de la flotte');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Assurances, échéances et politique conducteurs', '## Objectifs de la leçon

- Comprendre les garanties d''assurance d''une flotte et la gestion des sinistres.
- Tenir un échéancier des obligations administratives.
- Rédiger une politique conducteurs.

## L''assurance automobile

Dans les pays membres de la CIMA (Conférence interafricaine des marchés d''assurances), dont le Sénégal, l''assurance de responsabilité civile automobile est obligatoire : elle couvre les dommages causés aux tiers. Le Code des assurances de la CIMA encadre ces contrats. Au-delà de cette garantie obligatoire, l''entreprise choisit des garanties complémentaires selon la valeur et l''usage des véhicules :

- Dommages au véhicule (tierce collision ou tous accidents).
- Vol et incendie.
- Bris de glace.
- Défense et recours.
- Personnes transportées et individuelle conducteur.
- Assistance (remorquage, dépannage).

La franchise est la part du dommage qui reste à la charge de l''assuré. Une franchise élevée réduit la prime, mais augmente le coût de chaque sinistre pour l''entreprise.

Pour une flotte, l''assureur propose souvent un contrat flotte unique couvrant tous les véhicules, avec des conditions négociées. Sa prime dépend notamment du nombre et du type de véhicules, des garanties et de l''historique des sinistres. Les montants et barèmes varient selon les compagnies et doivent être obtenus par devis.

## Gérer les sinistres

Le ratio de sinistralité compare le coût des sinistres à la prime payée : ratio = montant des sinistres / primes. Un ratio élevé et durable conduit l''assureur à augmenter la prime ou à durcir les conditions.

La procédure sinistre de l''entreprise prévoit : sécuriser les lieux et les personnes, remplir un constat amiable avec l''autre partie, prendre des photos, prévenir le gestionnaire de flotte immédiatement, déclarer le sinistre à l''assureur dans le délai prévu au contrat, faire expertiser le véhicule, suivre la réparation et l''indemnisation. Chaque sinistre est analysé pour identifier les causes : vitesse, fatigue, itinéraire dangereux, état du véhicule.

## L''échéancier administratif

Un véhicule n''a le droit de circuler que si ses documents sont valides. Les principales échéances sont :

- L''assurance (date de renouvellement de l''attestation).
- La visite technique périodique, selon la périodicité fixée par la réglementation pour chaque catégorie de véhicule.
- Les taxes et vignettes éventuelles applicables aux véhicules.
- Les autorisations spécifiques (transport public, matières dangereuses) le cas échéant.
- Les contrats de location ou de crédit (fin de contrat, kilométrage maximal).

L''échéancier est un tableau avec une ligne par véhicule et une colonne par échéance. Une mise en forme conditionnelle colore en orange les échéances à moins de 30 jours et en rouge les échéances dépassées. Chaque lundi, le gestionnaire consulte les alertes et lance les démarches. Un véhicule dont un document est expiré est immobilisé jusqu''à régularisation.

## La politique conducteurs

La politique conducteurs (ou charte d''utilisation des véhicules) est un document signé par chaque conducteur. Elle précise :

- Les conditions pour conduire : permis valide de la bonne catégorie, vérifié et copié au dossier, autorisation écrite de la direction.
- L''usage autorisé : professionnel seulement, ou usage privé encadré (horaires, distance, carburant).
- Les règles de conduite : respect du code de la route, interdiction de l''alcool et des stupéfiants, interdiction du téléphone tenu en main, port de la ceinture, temps de repos sur les longs trajets.
- Les obligations d''entretien courant : contrôles quotidiens (niveaux, pneus, feux), signalement immédiat des anomalies.
- Le carnet de bord : relevé des trajets, kilomètres et pleins.
- La gestion des amendes : l''amende liée au comportement du conducteur est à sa charge, selon les règles internes et le droit applicable.
- Les sanctions en cas de manquement, dans le respect du règlement intérieur et du droit du travail.

La charte doit être cohérente avec le règlement intérieur et le droit du travail ; au Sénégal, celui-ci est en cours de réforme avec un projet de nouveau Code du travail, il convient donc de faire valider la charte par un juriste en tenant compte des textes en vigueur.

## Exemple : une société de services à Ziguinchor

Une société de maintenance de 30 véhicules a subi 14 sinistres en un an pour 9 000 000 FCFA de primes ; les sinistres ont coûté 7 200 000 FCFA, soit un ratio de 7 200 000 / 9 000 000 = 80 %. L''analyse montre que 9 sinistres sur 14 se sont produits en fin de journée, au retour des interventions, et concernent 5 conducteurs. Mesures : limitation des journées de conduite, formation à la conduite défensive pour les 5 conducteurs, rappel de la charte. L''année suivante, le nombre de sinistres tombe à 6.

## Points clés

- La responsabilité civile est obligatoire ; les garanties complémentaires se choisissent selon la valeur et l''usage.
- La sinistralité se mesure et s''analyse pour en réduire les causes.
- L''échéancier avec alertes évite de faire circuler un véhicule non conforme.
- La charte conducteurs, signée, fixe les droits, obligations et sanctions.

## Exercices

- Exercice 1 : citez quatre garanties complémentaires d''assurance automobile.
- Exercice 2 : primes 6 500 000 FCFA, sinistres 4 550 000 FCFA. Calculez le ratio de sinistralité.
- Exercice 3 : nous sommes le 1er mars. La visite technique d''un véhicule expire le 20 mars et son assurance le 15 février. Quelle couleur pour chaque échéance et quelle décision prenez-vous ?
- Exercice 4 : citez cinq rubriques d''une charte conducteurs.

## Corrigé

Exercice 1 : dommages tous accidents, vol et incendie, bris de glace, défense et recours, personnes transportées, assistance.

Exercice 2 : 4 550 000 / 6 500 000 = 0,70, soit 70 %.

Exercice 3 : la visite technique est dans 19 jours : orange, il faut prendre rendez-vous. L''assurance est expirée depuis le 15 février : rouge. Le véhicule doit être immobilisé immédiatement jusqu''au renouvellement de l''assurance, et l''on vérifie pourquoi l''alerte n''a pas été traitée.

Exercice 4 : conditions pour conduire, usage autorisé, règles de conduite, contrôles quotidiens, carnet de bord, gestion des amendes, sanctions.', 'texte', 55, false, 40
from public.courses c where c.slug = 'formation-gestion-flotte'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Assurances, échéances et politique conducteurs');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Calculer le coût total de possession (TCO)', '## Objectifs de la leçon

- Définir le coût total de possession (TCO) d''un véhicule.
- Calculer le TCO total, annuel et au kilomètre.
- Utiliser le TCO pour choisir entre plusieurs véhicules ou modes de détention.

## Définition

Le coût total de possession, souvent désigné par son sigle anglais TCO (total cost of ownership), est la somme de tous les coûts supportés par l''entreprise pour un véhicule, de son acquisition à sa revente. Le prix d''achat n''est qu''une partie de ce coût.

## Les composantes du TCO

- La dépréciation : prix d''achat (avec frais d''immatriculation et de mise en route) moins prix de revente estimé en fin d''utilisation.
- Le coût du financement : intérêts d''emprunt ou coût d''opportunité de l''argent immobilisé.
- Le carburant.
- La maintenance préventive et curative.
- Les pneumatiques.
- L''assurance.
- Les taxes, visites techniques et frais administratifs.
- Les coûts indirects : temps de gestion, immobilisations, véhicule de remplacement.

## Méthode de calcul

- Fixer la durée de détention (par exemple 4 ans) et le kilométrage annuel.
- Calculer la dépréciation.
- Estimer chaque coût annuel à partir de l''historique de la flotte ou des devis.
- Multiplier par la durée et additionner.
- Diviser par le nombre de kilomètres pour obtenir le coût au km, et par le nombre de mois pour le coût mensuel.

## Exemple complet

Une entreprise étudie un véhicule utilitaire léger : prix d''achat 18 000 000 FCFA, revente estimée après 4 ans 6 000 000 FCFA, 30 000 km par an, consommation 8 L/100 km. Le prix du carburant retenu est 800 FCFA le litre ; c''est un prix fictif pour l''exemple : au Sénégal les prix à la pompe sont fixés par les autorités et il faut utiliser le prix en vigueur. Les autres coûts annuels sont estimés à partir de l''historique : maintenance 600 000 FCFA, pneus 400 000 FCFA, assurance 450 000 FCFA (montant fictif pour l''exemple, à remplacer par le devis réel), taxes et visites 100 000 FCFA.

Calculs sur 4 ans :

- Dépréciation : 18 000 000 - 6 000 000 = 12 000 000 FCFA.
- Carburant : 30 000 × 8 / 100 = 2 400 L par an ; 2 400 × 800 = 1 920 000 FCFA par an ; sur 4 ans 7 680 000 FCFA.
- Maintenance : 600 000 × 4 = 2 400 000 FCFA.
- Pneus : 400 000 × 4 = 1 600 000 FCFA.
- Assurance : 450 000 × 4 = 1 800 000 FCFA.
- Taxes et visites : 100 000 × 4 = 400 000 FCFA.

TCO = 12 000 000 + 7 680 000 + 2 400 000 + 1 600 000 + 1 800 000 + 400 000 = 25 880 000 FCFA.

Kilométrage total : 30 000 × 4 = 120 000 km. Coût au km : 25 880 000 / 120 000 ≈ 216 FCFA. Coût mensuel : 25 880 000 / 48 ≈ 539 167 FCFA.

Observation : la dépréciation représente 12 000 000 / 25 880 000 ≈ 46 % du TCO et le carburant environ 30 %. Les leviers principaux sont donc le choix du modèle (valeur de revente) et la consommation.

## Comparer deux modes de détention

Le même véhicule est proposé en location longue durée (LLD) sur 4 ans à 380 000 FCFA par mois, maintenance, pneus et assurance compris. L''entreprise paie en plus le carburant et les frais administratifs non inclus.

- Loyers : 380 000 × 48 = 18 240 000 FCFA.
- Carburant : 7 680 000 FCFA.
- Frais administratifs : 400 000 FCFA.
- Total LLD : 26 320 000 FCFA.

L''achat revient moins cher de 26 320 000 - 25 880 000 = 440 000 FCFA sur 4 ans, soit environ 1,7 %. Mais l''achat immobilise 18 000 000 FCFA, fait porter le risque de revente à l''entreprise et ignore ici le coût du financement. La LLD offre un budget fixe. La décision dépend donc de la situation financière de l''entreprise, pas seulement du chiffre final.

## Utiliser le TCO dans la gestion

- Choisir les modèles lors du renouvellement, en comparant les TCO et non les prix d''achat.
- Fixer la durée de détention optimale : au-delà d''un certain kilométrage, la maintenance augmente plus vite que la dépréciation ne diminue.
- Suivre l''écart entre TCO prévu et TCO réel.

## Points clés

- Le TCO additionne dépréciation, financement, carburant, maintenance, pneus, assurance, taxes et coûts indirects.
- On l''exprime en total, par mois et par kilomètre.
- Dépréciation et carburant sont généralement les deux premiers postes.
- Achat et location se comparent sur le TCO, mais aussi sur la trésorerie et le risque.

## Exercices

- Exercice 1 : citez six composantes du TCO.
- Exercice 2 : véhicule acheté 12 000 000 FCFA, revendu 4 500 000 FCFA après 3 ans, 25 000 km par an, 7 L/100 km, carburant à 750 FCFA le litre (prix fictif), maintenance 450 000 FCFA par an, pneus 300 000 FCFA par an, assurance 350 000 FCFA par an (fictif), taxes 80 000 FCFA par an. Calculez le TCO sur 3 ans.
- Exercice 3 : calculez le coût au km du véhicule de l''exercice 2.
- Exercice 4 : pourquoi un véhicule moins cher à l''achat peut-il avoir un TCO plus élevé ?

## Corrigé

Exercice 1 : dépréciation, financement, carburant, maintenance, pneumatiques, assurance, taxes et visites, coûts indirects.

Exercice 2 : dépréciation 12 000 000 - 4 500 000 = 7 500 000 FCFA. Carburant : 25 000 × 7 / 100 = 1 750 L par an ; 1 750 × 750 = 1 312 500 FCFA par an ; 3 937 500 FCFA sur 3 ans. Maintenance 1 350 000 FCFA ; pneus 900 000 FCFA ; assurance 1 050 000 FCFA ; taxes 240 000 FCFA. TCO = 7 500 000 + 3 937 500 + 1 350 000 + 900 000 + 1 050 000 + 240 000 = 14 977 500 FCFA.

Exercice 3 : kilométrage total 75 000 km ; coût au km = 14 977 500 / 75 000 ≈ 199,7 FCFA.

Exercice 4 : parce qu''il peut consommer plus de carburant, demander plus de réparations, avoir des pièces plus chères ou moins disponibles, et se revendre à un prix plus faible : ces coûts dépassent l''économie réalisée à l''achat.', 'texte', 60, false, 50
from public.courses c where c.slug = 'formation-gestion-flotte'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Calculer le coût total de possession (TCO)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : piloter une flotte automobile, de l''inventaire au TCO', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : gestionnaires de flotte, chefs de parc, responsables administratifs et financiers.
- Objectifs : organiser l''inventaire et les échéances, piloter la maintenance et les pneus, calculer un TCO, mettre en place une politique conducteurs.
- Matériel : diaporama, tableur projeté avec un modèle de suivi de flotte, tableau blanc, calculatrice.
- Prérequis : pourcentages et règle de trois ; lecture des leçons du module recommandée.

## Déroulé minuté

## 00:00 – 05:00 · Introduction et cas fil rouge

Bonjour à tous. Aujourd''hui, vous êtes le nouveau gestionnaire de flotte de Sahel Distribution, une société fictive installée à Dakar avec des dépôts à Thiès et Kaolack. Elle possède 40 véhicules : 6 voitures de direction, 22 véhicules utilitaires légers, 8 camions et 4 motos. Le directeur financier vous fait trois reproches : les coûts augmentent, les véhicules sont souvent en panne, et un camion a été arrêté sur la route avec une assurance expirée. Vous avez une heure et demie pour lui présenter un plan.

Visuel : organigramme simplifié de Sahel Distribution et carte des trois sites. Question : par quoi commenceriez-vous ? Réponse attendue : savoir exactement ce que l''on gère.

## 05:00 – 17:00 · Inventaire et dossiers véhicules

Première étape : l''inventaire. Je projette le modèle de tableur. Chaque ligne est un véhicule avec un code interne, VL pour les véhicules légers, PL pour les poids lourds, MO pour les motos. Les colonnes : immatriculation, marque et modèle, numéro de châssis, date de mise en circulation, mode de détention, valeur, site, conducteur, kilométrage, état.

En faisant l''inventaire physique, votre prédécesseur aurait trouvé ce que l''on trouve presque toujours : des véhicules affectés à des personnes parties, des kilométrages non mis à jour, des documents manquants. Chez Sahel Distribution, l''inventaire révèle 3 véhicules sans carte grise au dossier, 2 camions dont l''assurance expire dans moins de 30 jours et un véhicule utilitaire immobilisé depuis cinq mois dans un garage de Thiès.

Ensuite, on crée un dossier par véhicule : documents d''identité, documents de conformité, carnet et historique d''entretien, sinistres, procès-verbaux de remise. Visuel : la liste de contrôle du dossier véhicule. Question à la salle : pourquoi le procès-verbal de remise est-il si important ? Réponse : il fixe l''état et le kilométrage au moment où le conducteur prend le véhicule.

## 17:00 – 30:00 · Échéances, assurances et sinistres

Deuxième étape : l''échéancier. Je construis devant vous un onglet avec une colonne assurance, une colonne visite technique, une colonne taxes. Une formule calcule le nombre de jours restants : date d''échéance moins date du jour. Une mise en forme conditionnelle colore en orange les valeurs inférieures à 30 et en rouge les valeurs négatives.

Règle de gestion : tout véhicule en rouge est immobilisé. C''est non négociable, car circuler sans assurance de responsabilité civile, obligatoire dans l''espace CIMA, expose l''entreprise à des sanctions et à des conséquences financières très lourdes en cas d''accident.

Parlons sinistres. Sahel Distribution a payé 12 000 000 FCFA de primes et ses sinistres ont coûté 9 600 000 FCFA. Calculons le ratio : 9 600 000 divisé par 12 000 000, soit 80 %. L''assureur annonce une hausse de prime. Que faire ? Analyser : où, quand, qui, pourquoi. Visuel : carte des sinistres. On constate que la moitié se produit sur le même axe entre Dakar et Thiès, en fin de journée. Les actions : revoir les horaires de tournée, former les conducteurs concernés à la conduite défensive, rappeler la charte.

## 30:00 – 42:00 · Maintenance préventive et curative

Troisième étape : la maintenance. L''an dernier, Sahel Distribution a dépensé 16 000 000 FCFA de maintenance pour 1 280 000 km parcourus. Coût au km : 16 000 000 divisé par 1 280 000, soit 12,5 FCFA. Mais seulement 6 400 000 FCFA concernaient le préventif, soit 40 %. Le reste, 60 %, est du curatif : on répare après la panne.

Visuel : graphique en barres préventif contre curatif. Le message est clair : il faut inverser la tendance. Construisons le plan préventif. Pour chaque modèle, on reprend le carnet du constructeur, on choisit le programme conditions sévères car nos véhicules roulent dans la poussière et la chaleur, et on calcule l''échéance de chaque opération.

Exemple au tableau : un utilitaire a eu sa dernière vidange à 85 000 km, l''intervalle prévu dans notre exemple est de 7 500 km, il affiche 91 300 km. Prochaine vidange à 92 500 km, il reste 1 200 km. Il roule 200 km par jour : l''intervention doit être faite dans les 6 jours.

Calculons aussi la disponibilité. 40 véhicules sur 30 jours font 1 200 jours-véhicules. Les immobilisations ont totalisé 132 jours. Disponibilité : 1 068 divisé par 1 200, soit 89 %. Objectif : dépasser 95 %. Rappel de la règle d''or : aucune facture payée sans ordre de réparation signé.

## 42:00 – 48:00 · Pause et quiz interactif

Pause active de quelques minutes. Répondez dans le chat.

Question 1 : un véhicule passe de 52 000 km à 79 000 km en un an : kilométrage mensuel moyen ? Réponse : 27 000 divisé par 12, soit 2 250 km.

Question 2 : primes 5 000 000 FCFA, sinistres 3 000 000 FCFA : ratio ? Réponse : 60 %.

Question 3 : vrai ou faux, on peut laisser circuler un véhicule dont la visite technique est expirée depuis deux jours si le trajet est court ? Réponse : faux, il est immobilisé jusqu''à régularisation.

Question 4 : 10 véhicules, 30 jours, 15 jours d''immobilisation : disponibilité ? Réponse : 285 divisé par 300, soit 95 %.

Question 5 : que signifie le chiffre 16 dans 205/55 R16 ? Réponse : le diamètre de la jante en pouces.

## 48:00 – 58:00 · Les pneumatiques

Quatrième étape : les pneus. Sahel Distribution achète ses pneus au fil des crevaisons, sans suivi. Résultat : des pneus de dimensions différentes sur un même essieu et une durée de vie moyenne de 28 000 km sur les utilitaires.

Visuel : un flanc de pneu agrandi avec son marquage. Je vous rappelle la lecture : largeur, rapport hauteur sur largeur, structure, diamètre de jante, indice de charge, indice de vitesse, et le code de date à quatre chiffres.

Calculons l''enjeu. Un train de 4 pneus coûte 260 000 FCFA montage compris. À 28 000 km de durée, le coût est 260 000 divisé par 28 000, soit environ 9,3 FCFA par km. Avec un bon entretien, on vise 40 000 km, soit 6,5 FCFA par km. Les 22 utilitaires roulent ensemble environ 700 000 km par an. Gain potentiel : 2,8 FCFA par km multiplié par 700 000 km, soit environ 1 960 000 FCFA par an.

Les actions : contrôle mensuel de la pression par le chef de parc, fiche de suivi par pneu, stock fermé avec échange pneu usé contre pneu neuf, contrôle de la géométrie après chaque choc signalé.

## 58:00 – 1:12:00 · Le coût total de possession

Cinquième étape : le TCO. Le directeur financier veut renouveler 10 utilitaires. Deux modèles sont en concurrence. Le modèle A coûte 17 000 000 FCFA, se revend 5 500 000 FCFA après 4 ans, consomme 8,5 L aux 100 km. Le modèle B coûte 19 000 000 FCFA, se revend 8 000 000 FCFA, consomme 7,5 L aux 100 km. Les deux roulent 30 000 km par an. Nous retenons un carburant à 800 FCFA le litre, prix fictif pour l''exercice. Maintenance, pneus, assurance et taxes : 1 550 000 FCFA par an pour A et 1 450 000 FCFA pour B.

Calculons ensemble pour le modèle A. Dépréciation : 17 000 000 moins 5 500 000, soit 11 500 000. Carburant par an : 30 000 fois 8,5 divisé par 100, soit 2 550 litres, fois 800, soit 2 040 000 FCFA, et 8 160 000 sur 4 ans. Autres coûts : 1 550 000 fois 4, soit 6 200 000. TCO de A : 11 500 000 plus 8 160 000 plus 6 200 000, soit 25 860 000 FCFA.

Modèle B. Dépréciation : 19 000 000 moins 8 000 000, soit 11 000 000. Carburant : 30 000 fois 7,5 divisé par 100, soit 2 250 litres, fois 800, soit 1 800 000 par an et 7 200 000 sur 4 ans. Autres coûts : 1 450 000 fois 4, soit 5 800 000. TCO de B : 11 000 000 plus 7 200 000 plus 5 800 000, soit 24 000 000 FCFA.

Le modèle B, plus cher de 2 000 000 FCFA à l''achat, coûte 1 860 000 FCFA de moins sur 4 ans. Pour 10 véhicules, l''économie atteint 18 600 000 FCFA. Coût au km de B : 24 000 000 divisé par 120 000, soit 200 FCFA. Visuel : graphique empilé des composantes du TCO pour A et B. Question à la salle : quelles informations faudrait-il encore vérifier avant de décider ? Réponses attendues : disponibilité des pièces, réseau de garages, fiabilité constatée sur des pistes, coût du financement.

## 1:12:00 – 1:21:00 · La politique conducteurs

Dernière étape : les conducteurs, qui déterminent une grande partie des coûts. Nous rédigeons ensemble les rubriques de la charte : conditions pour conduire avec permis vérifié et autorisation écrite ; usage autorisé ; règles de conduite, dont l''interdiction de l''alcool et du téléphone tenu en main ; contrôles quotidiens ; carnet de bord ; gestion des amendes ; sanctions.

Chaque conducteur la signe, et elle est cohérente avec le règlement intérieur. Je rappelle que le droit du travail sénégalais est en cours de réforme avec un projet de nouveau Code du travail : faites valider vos sanctions par un juriste selon les textes en vigueur. Visuel : exemple de fiche de contrôle quotidien du véhicule. Question : comment rendre la charte vivante ? Réponses : formation à l''arrivée, rappel annuel, analyse partagée des sinistres, reconnaissance des bons conducteurs.

## 1:21:00 – 1:30:00 · Synthèse et évaluation finale

Récapitulons le plan présenté au directeur financier : un inventaire et des dossiers complets ; un échéancier avec immobilisation des véhicules non conformes ; un plan préventif pour porter la part du préventif au-delà de 60 % ; un suivi des pneus ; des choix de véhicules fondés sur le TCO ; une charte conducteurs signée. Chaque mois, un tableau de bord suit la disponibilité, le coût au km, la part du préventif, la sinistralité et les échéances.

Évaluation finale.

Question 1 : citez trois documents du dossier véhicule. Réponse : carte grise, attestation d''assurance, procès-verbal de visite technique ; on accepte aussi le carnet d''entretien ou les procès-verbaux de remise.

Question 2 : 20 véhicules, 30 jours, 36 jours d''immobilisation : disponibilité ? Réponse : (600 - 36) / 600 = 94 %.

Question 3 : maintenance 7 200 000 FCFA dont 4 680 000 de préventif : part du préventif ? Réponse : 65 %.

Question 4 : 4 pneus pour 300 000 FCFA au total, durée 50 000 km : coût au km ? Réponse : 6 FCFA.

Question 5 : achat 15 000 000 FCFA, revente 5 000 000 FCFA, autres coûts sur la période 9 000 000 FCFA, 100 000 km : TCO et coût au km ? Réponse : 10 000 000 + 9 000 000 = 19 000 000 FCFA, soit 190 FCFA par km.

Merci pour votre attention. Votre mission : appliquer le modèle de tableur à votre propre flotte et calculer le TCO de vos trois véhicules les plus utilisés.', 'video', 90, false, 60
from public.courses c where c.slug = 'formation-gestion-flotte'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : piloter une flotte automobile, de l''inventaire au TCO');

-- Cours : Apprendre et enseigner en ligne efficacement
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'formation-education-numerique', (select id from public.levels where name = 'Formation professionnelle'), 'education', 'Éducation et compétences numériques', 'Apprendre et enseigner en ligne efficacement', 'Cette formation donne aux étudiants, enseignants et formateurs les méthodes pour réussir l''apprentissage et l''enseignement en ligne : mémorisation par répétition espacée, prise de notes, organisation du travail, conception d''un cours en ligne de qualité, évaluation et sécurité numérique. Les exemples sont adaptés aux réalités de l''Afrique de l''Ouest, notamment au coût de la connexion et à l''usage du téléphone. Aucun prérequis n''est demandé, en dehors d''une pratique de base du téléphone ou de l''ordinateur.', true, 120
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comment on apprend : mémoire, récupération active et répétition espacée', '## Objectifs de la leçon

- Comprendre comment la mémoire fonctionne et pourquoi on oublie.
- Utiliser la récupération active et la répétition espacée pour retenir durablement.
- Construire un plan de révision personnel adapté aux études ou à une formation professionnelle.

## Apprendre, c''est d''abord retenir et comprendre

Beaucoup d''élèves et d''étudiants relisent leurs cours plusieurs fois, surlignent, recopient, et sont surpris d''avoir tout oublié le jour de l''examen. Ce n''est pas un manque d''intelligence : c''est une mauvaise méthode. Les recherches en psychologie cognitive ont montré depuis longtemps que certaines stratégies sont beaucoup plus efficaces que d''autres. La bonne nouvelle : elles ne demandent ni matériel coûteux ni connexion permanente.

## Les notions clés

La mémoire de travail : c''est l''espace mental où l''on manipule les informations en ce moment. Elle est très limitée : on ne peut y garder que quelques éléments à la fois. Un cours trop dense, une vidéo trop rapide ou un environnement bruyant la saturent.

La mémoire à long terme : c''est le stockage durable. Pour qu''une information y entre et puisse en ressortir, il faut la relier à ce que l''on sait déjà et la réactiver régulièrement.

La courbe de l''oubli : le psychologue Hermann Ebbinghaus a montré, à la fin du XIXe siècle, que l''on oublie très vite après un premier apprentissage, puis plus lentement. Chaque révision bien placée ralentit l''oubli.

La récupération active : se tester, c''est-à-dire essayer de retrouver une information sans regarder ses notes, renforce la mémoire bien plus que relire. On parle d''« effet de test ».

La répétition espacée : répartir les révisions dans le temps, avec des intervalles croissants, est plus efficace que tout réviser la veille.

L''entrelacement : alterner des types d''exercices (par exemple des problèmes de pourcentages, de proportionnalité et d''équations) oblige le cerveau à choisir la bonne méthode, ce qui prépare mieux à l''examen.

## Méthode : les fiches question-réponse et les boîtes de révision

- Étape 1 : après chaque cours, transformez l''essentiel en questions. Au recto : « Qu''est-ce que la BCEAO ? » ; au verso : la réponse courte.
- Étape 2 : rangez les fiches dans des boîtes numérotées (système de Leitner). Boîte 1 : à revoir chaque jour ; boîte 2 : tous les 2 jours ; boîte 3 : tous les 4 jours ; boîte 4 : chaque semaine ; boîte 5 : avant l''examen.
- Étape 3 : quand vous répondez juste, la fiche avance d''une boîte ; quand vous vous trompez, elle revient en boîte 1.
- Étape 4 : chaque jour, ne révisez que les boîtes prévues. Dix à vingt minutes suffisent.

Ce système fonctionne sur papier (cartons découpés, enveloppes) ou sur téléphone avec une application de cartes de révision fonctionnant hors ligne, ce qui est précieux quand la connexion est chère ou instable.

## Autres techniques efficaces

- L''auto-explication : expliquer à voix haute, ou à un camarade, pourquoi une solution est juste.
- La pratique de rappel libre : sur une feuille blanche, écrire tout ce dont on se souvient d''un chapitre, puis comparer avec le cours.
- Le double codage : associer un texte à un schéma, une carte ou un tableau.
- Les exemples concrets : relier une notion abstraite à une situation connue (le prix du riz au marché pour l''inflation, le budget de la famille pour les pourcentages).

À l''inverse, le surlignage massif, la relecture passive et le « bachotage » de la dernière nuit donnent une impression de maîtrise mais produisent peu de mémorisation durable.

## Exemple : le plan de révision de Mariama

Mariama prépare un BTS en comptabilité à Dakar et a un examen dans six semaines. Elle a 8 chapitres. Son plan :

- Chaque soir, 20 minutes de fiches question-réponse selon ses boîtes.
- Chaque samedi, un rappel libre sur deux chapitres et une série d''exercices mélangés.
- Une semaine avant l''examen, un sujet blanc en conditions réelles.

En répartissant ainsi 20 minutes par jour sur 42 jours, elle consacre 840 minutes, soit 14 heures, aux révisions espacées, sans nuit blanche.

## Points clés

- On oublie vite, mais chaque révision espacée ralentit l''oubli.
- Se tester est plus efficace que relire.
- Espacer, alterner, expliquer et illustrer.
- Un petit temps quotidien vaut mieux qu''une longue séance de dernière minute.

## Exercices

- Exercice 1 : Expliquez la différence entre mémoire de travail et mémoire à long terme.
- Exercice 2 : Transformez ce passage en trois fiches question-réponse : « L''UEMOA regroupe huit États qui utilisent le franc CFA émis par la BCEAO, dont le siège est à Dakar. »
- Exercice 3 : Une fiche est en boîte 3. Vous vous trompez. Où va-t-elle ? Et si vous aviez répondu juste ?
- Exercice 4 : Un étudiant révise 30 minutes par jour pendant 5 semaines. Combien d''heures cela représente-t-il ?

## Corrigé

- Exercice 1 : La mémoire de travail traite les informations du moment ; elle est très limitée et se sature vite. La mémoire à long terme stocke durablement les connaissances ; on y fait entrer une information en la reliant à ce que l''on sait et en la réactivant.
- Exercice 2 : Par exemple : « Combien d''États compte l''UEMOA ? » : huit. « Quelle monnaie utilisent-ils ? » : le franc CFA. « Quelle institution l''émet et où est son siège ? » : la BCEAO, à Dakar.
- Exercice 3 : En cas d''erreur, elle revient en boîte 1. En cas de bonne réponse, elle passe en boîte 4.
- Exercice 4 : 5 semaines = 35 jours ; 35 × 30 = 1 050 minutes = 17 heures 30 minutes.', 'texte', 45, true, 10
from public.courses c where c.slug = 'formation-education-numerique'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comment on apprend : mémoire, récupération active et répétition espacée');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Prendre des notes et organiser son travail d''étudiant', '## Objectifs de la leçon

- Prendre des notes utiles, en cours en présentiel comme devant une vidéo.
- Organiser son temps d''étude et son environnement de travail.
- Gérer la contrainte de la connexion et du matériel.

## Pourquoi prendre des notes

Prendre des notes n''est pas recopier. Une bonne prise de notes oblige à sélectionner, reformuler et organiser ; ce travail actif aide déjà à mémoriser. Les notes servent ensuite de matière première pour les fiches de révision vues à la leçon précédente.

## La méthode des notes en colonnes (méthode Cornell)

On divise la page en trois zones :

- Une grande colonne de droite : les notes prises pendant le cours, en phrases courtes, avec abréviations.
- Une colonne étroite à gauche : remplie après le cours, elle contient les mots-clés et les questions auxquelles répondent les notes.
- Une bande en bas de page : un résumé de la page en deux ou trois phrases.

Pour réviser, on cache la colonne de droite et on essaie de répondre aux questions de la colonne de gauche : c''est de la récupération active intégrée aux notes.

## Les autres formats

- La carte mentale : le sujet au centre, les idées principales en branches, les détails en sous-branches. Utile pour les sujets riches en relations (histoire, gestion, biologie).
- Le tableau comparatif : idéal pour comparer des notions (par exemple CDI et CDD, ou deux pays).
- Le plan hiérarchisé : titres, sous-titres, puces ; adapté aux cours très structurés.

## Abréviations et symboles utiles

- « + » pour « plus, en hausse » ; « − » pour « moins, en baisse ».
- « → » pour « entraîne, conduit à ».
- « ≠ » pour « différent de » ; « ≈ » pour « environ ».
- « ex. » pour exemple ; « cf. » pour se reporter à ; « qqch » pour quelque chose.

Créez votre propre code et gardez-le stable.

## Prendre des notes devant une vidéo

Le grand avantage du cours en ligne est la possibilité de faire pause. Utilisez-la : regardez une séquence de quelques minutes, mettez en pause, notez l''idée principale avec vos mots, puis reprenez. Notez aussi le minutage des passages importants (par exemple « 23:40 calcul du taux horaire ») pour y revenir sans tout revoir. Si la connexion est faible, réduisez la qualité de la vidéo ou téléchargez-la quand le réseau est meilleur, si la plateforme le permet.

## Organiser son temps

Les étudiants en ligne ont souvent plus de liberté, donc plus de risques de procrastination. Quelques règles :

- Un planning hebdomadaire fixe : les mêmes créneaux chaque semaine (par exemple lundi, mercredi et vendredi de 19 h à 21 h).
- Le travail par blocs chronométrés : 25 minutes de concentration, 5 minutes de pause, puis une pause plus longue après quatre blocs.
- La règle des deux minutes : si une tâche prend moins de deux minutes (répondre à un message du formateur, télécharger un document), faites-la tout de suite.
- La liste de tâches du jour : trois priorités maximum.
- Le bilan de fin de semaine : ce qui a été fait, ce qui reste, ce qu''il faut ajuster.

## Organiser son environnement

- Un lieu calme, même modeste : un coin de chambre, une bibliothèque de quartier, un espace numérique universitaire.
- Le téléphone en mode silencieux ou hors de portée pendant les blocs de travail.
- Des dossiers numériques bien nommés : « 2026_Compta_Chap3_Notes », plutôt que « document final 2 ».
- Une sauvegarde régulière des notes (nous y reviendrons à la leçon 5).

## Gérer le coût de la connexion

En Afrique de l''Ouest, les données mobiles représentent un budget. Stratégies :

- Télécharger les ressources via le wifi d''un campus, d''un centre de formation ou d''un espace public sûr.
- Privilégier les documents texte et PDF légers pour la révision.
- Utiliser les fonctions hors ligne des applications.
- Planifier les sessions en direct (classes virtuelles) et couper la vidéo de sa caméra quand elle n''est pas nécessaire pour économiser la bande passante.

## Exemple : la semaine d''Ousmane

Ousmane travaille comme agent commercial à Kaolack et suit une formation en ligne en gestion. Il dispose de 6 heures par semaine. Son organisation : mardi et jeudi soir, 1 h 30 chacun pour les vidéos et les notes en colonnes ; samedi matin, 2 h pour les exercices et la révision des fiches ; dimanche, 1 h pour le bilan et la préparation de la semaine. Total : 1,5 + 1,5 + 2 + 1 = 6 heures. Il télécharge les vidéos le samedi au centre de formation, où le wifi est gratuit.

## Points clés

- Prendre des notes, c''est sélectionner, reformuler et organiser.
- La méthode en colonnes intègre la révision active dans les notes.
- Un planning fixe et des blocs chronométrés limitent la procrastination.
- Anticiper la connexion fait partie de l''organisation.

## Exercices

- Exercice 1 : Décrivez les trois zones de la méthode des notes en colonnes et leur rôle.
- Exercice 2 : Quel format de notes choisiriez-vous pour comparer le salaire brut et le salaire net ? Justifiez.
- Exercice 3 : Une étudiante enchaîne 6 blocs de 25 minutes avec 5 minutes de pause entre chaque bloc et une pause de 20 minutes après le 4e bloc (à la place de la courte). Quelle est la durée totale de la séance, du début du premier bloc à la fin du sixième ?
- Exercice 4 : Proposez trois actions pour réduire le coût de la connexion.

## Corrigé

- Exercice 1 : Colonne de droite : notes prises pendant le cours. Colonne de gauche : mots-clés et questions ajoutés après le cours. Bande du bas : résumé en quelques phrases. La colonne de gauche sert à se tester.
- Exercice 2 : Un tableau comparatif, car il met en regard les deux notions ligne par ligne (définition, composantes, calcul, exemple).
- Exercice 3 : 6 blocs × 25 = 150 minutes. Il y a 5 pauses entre les 6 blocs : 4 courtes de 5 minutes (20 minutes) et 1 longue de 20 minutes, soit 40 minutes. Total : 190 minutes, soit 3 h 10.
- Exercice 4 : Télécharger via un wifi gratuit et sûr ; réduire la qualité vidéo ; utiliser les modes hors ligne ; couper la caméra en classe virtuelle ; préférer les documents légers.', 'texte', 45, false, 20
from public.courses c where c.slug = 'formation-education-numerique'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Prendre des notes et organiser son travail d''étudiant');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Créer un cours en ligne de qualité (pour les formateurs)', '## Objectifs de la leçon

- Concevoir un cours en ligne à partir d''objectifs d''apprentissage précis.
- Appliquer le principe d''alignement entre objectifs, activités et évaluations.
- Produire des contenus clairs, accessibles et adaptés aux contraintes de connexion.

## Le point de départ : les objectifs

Un formateur qui commence par « ce que je vais dire » produit souvent un cours trop long. Un bon cours commence par « ce que l''apprenant saura faire à la fin ». Un objectif d''apprentissage s''écrit avec un verbe d''action observable :

- À éviter : « comprendre la paie » (non observable).
- À préférer : « calculer le salaire net à partir d''un brut et d''une liste de retenues ».

La taxonomie de Bloom aide à choisir le niveau : se souvenir, comprendre, appliquer, analyser, évaluer, créer. Un cours professionnel doit dépasser le simple « se souvenir » et faire appliquer.

## L''alignement pédagogique

Le principe d''alignement (développé notamment par John Biggs) dit que trois éléments doivent correspondre :

- L''objectif : ce que l''apprenant doit savoir faire.
- L''activité : ce qu''il fait pour l''apprendre.
- L''évaluation : comment on vérifie qu''il sait le faire.

Exemple : si l''objectif est « calculer un net à payer », l''activité doit être un exercice de calcul guidé, et l''évaluation un calcul à réaliser, pas un QCM sur des définitions.

## Le modèle de conception en cinq phases

Le modèle ADDIE est un cadre classique :

- Analyse : qui sont les apprenants (niveau, équipement, temps disponible, langue) ? Quel est le besoin ?
- Design (conception) : objectifs, plan, choix des activités et des évaluations.
- Développement : production des textes, vidéos, exercices.
- Implémentation : mise en ligne, accompagnement, animation.
- Évaluation : retours des apprenants, résultats, améliorations.

## Concevoir les contenus

- Découper : des modules courts, des vidéos de quelques minutes centrées sur une idée, des leçons écrites structurées par intertitres.
- Limiter la charge cognitive : un concept à la fois, un vocabulaire défini, pas d''animations décoratives inutiles.
- Associer texte et image : un schéma commenté vaut mieux qu''un long paragraphe ; mais évitez de lire à l''écran un texte identique à celui de la diapositive.
- Contextualiser : des exemples tirés de la réalité des apprenants (une boutique à Thiès, une coopérative agricole en Casamance, un budget en FCFA).
- Faire agir : toutes les 10 à 15 minutes d''apprentissage, une question, un exercice ou une réflexion.

## Accessibilité et faible bande passante

- Proposer pour chaque vidéo une version texte ou un résumé, et des sous-titres.
- Compresser les vidéos et proposer une qualité basse.
- Fournir les documents en PDF légers téléchargeables.
- Vérifier la lisibilité sur téléphone, car beaucoup d''apprenants suivent les cours sur mobile.
- Utiliser des contrastes suffisants et des polices lisibles.

## L''animation : la présence du formateur

Un cours en ligne sans accompagnement connaît souvent de nombreux abandons. La présence du formateur se manifeste par un message d''accueil, un calendrier clair, un forum ou un groupe de discussion modéré, des réponses rapides aux questions, des retours personnalisés sur les travaux et, si possible, quelques classes virtuelles en direct.

## Méthode : la fiche de conception d''une séquence

- Titre de la séquence et public.
- Durée estimée de travail pour l''apprenant.
- Deux à quatre objectifs avec verbes d''action.
- Prérequis.
- Activités (lecture, vidéo, exercice, discussion), avec la durée de chacune.
- Évaluation alignée sur chaque objectif.
- Ressources et versions accessibles.

## Exemple

Une formatrice de Saint-Louis crée une séquence « Tenir le cahier de caisse d''une boutique ». Public : commerçants débutants, sur téléphone. Durée : 2 heures. Objectifs : enregistrer les entrées et sorties ; calculer le solde de caisse du jour ; détecter un écart. Activités : vidéo de 6 minutes avec un exemple de journée de vente, fiche PDF d''une page, exercice sur un cahier fictif de 10 opérations, échange sur le groupe de discussion. Évaluation : calculer le solde d''une nouvelle journée et expliquer un écart. Chaque objectif a son activité et son évaluation : la séquence est alignée.

## Points clés

- Commencer par les objectifs, formulés avec des verbes d''action.
- Aligner objectifs, activités et évaluations.
- Découper, contextualiser, faire agir.
- Penser mobile, bas débit et accessibilité.
- Accompagner les apprenants.

## Exercices

- Exercice 1 : Réécrivez l''objectif « connaître la TVA » sous une forme observable.
- Exercice 2 : Un formateur veut que les apprenants sachent rédiger un CV, mais l''évalue par un QCM. Qu''en pensez-vous ?
- Exercice 3 : Citez les cinq phases du modèle ADDIE.
- Exercice 4 : Proposez trois mesures pour rendre un cours accessible avec une connexion faible.

## Corrigé

- Exercice 1 : Par exemple : « calculer le montant de TVA et le prix toutes taxes comprises à partir d''un prix hors taxes et d''un taux donné ».
- Exercice 2 : L''évaluation n''est pas alignée : un QCM vérifie des connaissances, pas la capacité de rédiger. Il faut demander la rédaction d''un CV, évaluée avec une grille de critères.
- Exercice 3 : Analyse, Design (conception), Développement, Implémentation, Évaluation.
- Exercice 4 : Résumés texte des vidéos, vidéos compressées ou en basse qualité, documents PDF légers téléchargeables, contenus testés sur téléphone.', 'texte', 50, false, 30
from public.courses c where c.slug = 'formation-education-numerique'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Créer un cours en ligne de qualité (pour les formateurs)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Évaluer les apprentissages en ligne', '## Objectifs de la leçon

- Distinguer les fonctions de l''évaluation : diagnostique, formative, sommative.
- Rédiger des questions à choix multiples et des grilles critériées de qualité.
- Limiter la fraude et garantir l''équité des évaluations en ligne.

## Les trois fonctions de l''évaluation

- L''évaluation diagnostique : au début d''un cours, elle mesure les acquis et les besoins. Elle permet d''adapter le parcours.
- L''évaluation formative : pendant l''apprentissage, elle aide l''apprenant à progresser grâce à un retour immédiat. Elle compte peu ou pas dans la note finale.
- L''évaluation sommative : à la fin, elle certifie le niveau atteint (examen, certificat).

Dans un cours en ligne, l''évaluation formative est la plus précieuse : quiz après chaque leçon, exercices corrigés automatiquement, retours du formateur. C''est aussi une application directe de l''effet de test vu en leçon 1.

## Rédiger de bonnes questions à choix multiples

Un QCM bien conçu peut évaluer bien plus que la mémoire. Règles :

- Une seule idée par question, formulée clairement, sans double négation.
- Une seule bonne réponse indiscutable (ou une consigne explicite si plusieurs).
- Des distracteurs plausibles, qui correspondent à des erreurs fréquentes.
- Des options de longueur comparable : la bonne réponse ne doit pas être la plus longue.
- Éviter « toutes les réponses ci-dessus » et les indices grammaticaux.
- Préférer des mises en situation : « Un salarié gagne 200 000 FCFA ; ses retenues sont de 30 000 FCFA ; quel est son net ? »

Exemple de question avec distracteurs fondés sur des erreurs courantes :

« Un article coûte 10 000 FCFA hors taxes. Avec un taux de TVA de 18 %, quel est le prix TTC ? »

- A. 10 018 FCFA (erreur : addition du taux comme un nombre).
- B. 11 800 FCFA (bonne réponse : 10 000 × 1,18).
- C. 8 200 FCFA (erreur : soustraction).
- D. 1 800 FCFA (erreur : calcul de la seule TVA).

## Les grilles critériées

Pour les productions complexes (rapport, projet, présentation), on utilise une grille avec des critères et des niveaux. Exemple pour un plan d''affaires :

- Critère 1 : clarté de l''offre (insuffisant, acceptable, bien, très bien).
- Critère 2 : étude de marché.
- Critère 3 : cohérence des chiffres.
- Critère 4 : qualité de la présentation.

Chaque niveau est décrit précisément (par exemple pour « cohérence des chiffres, très bien » : les prévisions de ventes, de charges et de trésorerie sont reliées et vérifiables). La grille est communiquée à l''avance : l''apprenant sait ce qui est attendu, le correcteur est plus juste, et deux correcteurs donnent des notes proches.

## L''évaluation par les pairs et l''auto-évaluation

Dans les cours à fort effectif, les apprenants peuvent évaluer les travaux de leurs camarades avec la grille. Cette pratique développe l''esprit critique et allège la charge du formateur, à condition de former les apprenants à la grille, de faire évaluer chaque travail par plusieurs pairs et de prévoir un recours. L''auto-évaluation, avant remise du travail, aide l''apprenant à se corriger.

## Intégrité et équité en ligne

La fraude est plus facile à distance. Plutôt que de multiplier les contrôles intrusifs, on privilégie la conception :

- Banques de questions et tirage aléatoire, ordre des réponses mélangé.
- Valeurs numériques différentes pour chaque apprenant dans les exercices de calcul.
- Questions d''application et de réflexion plutôt que de simple restitution.
- Travaux personnalisés : appliquer la méthode à sa propre entreprise ou à son quartier.
- Courte soutenance orale en visioconférence pour les évaluations certifiantes.

L''équité impose aussi de tenir compte des contraintes techniques : prévoir un délai raisonnable, autoriser la reprise en cas de coupure, éviter les épreuves en temps très limité qui pénalisent ceux qui ont une connexion lente.

## Exploiter les résultats

Les statistiques d''un quiz renseignent le formateur : une question ratée par la majorité signale soit une explication insuffisante, soit une question mal rédigée. On calcule par exemple le taux de réussite d''une question : nombre de bonnes réponses / nombre de répondants × 100.

## Points clés

- Diagnostique au début, formative pendant, sommative à la fin.
- Un bon QCM a des distracteurs fondés sur des erreurs réelles.
- Les grilles critériées rendent l''évaluation transparente et juste.
- L''intégrité se construit surtout par la conception des épreuves.

## Exercices

- Exercice 1 : Classez : quiz d''entrée de formation ; exercice corrigé après une vidéo ; examen final certifiant.
- Exercice 2 : Repérez deux défauts dans cette question : « Lequel n''est pas un élément qui ne figure pas sur le bulletin de paie ? A. Le net à payer B. Toutes les réponses ci-dessus ».
- Exercice 3 : 120 apprenants ont répondu à une question ; 78 ont trouvé la bonne réponse. Calculez le taux de réussite.
- Exercice 4 : Proposez deux moyens de limiter la fraude dans un exercice de calcul en ligne.

## Corrigé

- Exercice 1 : Quiz d''entrée : diagnostique. Exercice après la vidéo : formative. Examen final : sommative.
- Exercice 2 : Double négation qui rend la question incompréhensible ; option « toutes les réponses ci-dessus » ; une seule option réelle, donc pas de distracteurs.
- Exercice 3 : 78 / 120 × 100 = 65 %.
- Exercice 4 : Données numériques différentes pour chaque apprenant ; tirage aléatoire des questions ; demander la justification de la démarche ; courte vérification orale.', 'texte', 45, false, 40
from public.courses c where c.slug = 'formation-education-numerique'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Évaluer les apprentissages en ligne');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Outils numériques et bonnes pratiques de sécurité', '## Objectifs de la leçon

- Choisir des outils numériques adaptés à l''apprentissage et à l''enseignement.
- Protéger ses comptes, ses appareils et ses données.
- Reconnaître et éviter les arnaques en ligne les plus courantes.

## Choisir ses outils

Il n''est pas nécessaire d''avoir beaucoup d''outils ; il faut des outils fiables et maîtrisés. Les grandes catégories :

- La plateforme d''apprentissage : elle centralise cours, exercices, évaluations et suivi.
- La visioconférence : pour les classes virtuelles et le tutorat.
- La messagerie de groupe : pour l''entraide, à condition d''être modérée.
- La bureautique : traitement de texte, tableur, présentation ; des suites libres et gratuites existent.
- Les cartes de révision et la prise de notes numérique, de préférence avec mode hors ligne.
- Le stockage en ligne : pour sauvegarder et partager des fichiers.

Critères de choix : fonctionne-t-il sur téléphone et avec une connexion faible ? Est-il gratuit ou abordable ? Où sont stockées les données ? Est-il facile à utiliser pour tous ?

## Protéger ses comptes

Les comptes d''un étudiant ou d''un formateur (messagerie, plateforme de cours, réseaux sociaux, porte-monnaie électronique) sont des cibles. Bonnes pratiques :

- Des mots de passe longs : une phrase de passe de plusieurs mots est plus robuste et plus facile à retenir qu''un mot court compliqué. Exemple de principe : quatre mots sans lien, avec un chiffre et un signe.
- Un mot de passe différent pour chaque compte important : si un site est piraté, les autres comptes restent protégés.
- Un gestionnaire de mots de passe pour les retenir.
- La double authentification (un code reçu ou généré en plus du mot de passe) activée sur la messagerie et les comptes sensibles.
- Ne jamais communiquer un code reçu par SMS : aucun service sérieux ne vous le demandera.

## Protéger ses appareils

- Installer les mises à jour du système et des applications, qui corrigent des failles.
- Télécharger les applications uniquement depuis les magasins officiels.
- Verrouiller le téléphone par un code ou une empreinte.
- Se méfier des clés USB partagées au cybercafé et analyser les fichiers avec un antivirus.
- Sur un ordinateur partagé, se déconnecter de tous les comptes et ne pas enregistrer les mots de passe.

## Sauvegarder : la règle 3-2-1

- 3 copies de vos fichiers importants (mémoire, notes, travaux) ;
- sur 2 supports différents (par exemple ordinateur et clé USB) ;
- dont 1 copie hors du lieu habituel (stockage en ligne ou chez un proche).

Un étudiant dont l''ordinateur est volé la veille de la remise de son mémoire comprend vite l''intérêt de cette règle.

## Reconnaître les arnaques

L''hameçonnage consiste à vous faire cliquer sur un lien ou à vous faire donner des informations en se faisant passer pour une organisation de confiance. Signes d''alerte :

- Une urgence artificielle : « Votre compte sera bloqué dans 24 heures. »
- Une offre trop belle : bourse d''études à l''étranger contre « frais de dossier », gain à un concours auquel vous n''avez pas participé.
- Une adresse d''expéditeur ou un lien légèrement différent de l''officiel.
- Une demande de code secret, de mot de passe ou de transfert d''argent.

Arnaques fréquentes dans le contexte ouest-africain : faux transferts d''argent par téléphone (« je vous ai envoyé par erreur 50 000 FCFA, renvoyez-les »), fausses offres d''emploi demandant un paiement, faux diplômes ou fausses inscriptions universitaires. Réflexe : vérifier par un canal officiel (site de l''établissement, numéro connu, agence) avant toute action.

## Protéger les données des autres

Un formateur manipule des données d''apprenants : noms, notes, numéros de téléphone. Il doit les limiter au nécessaire, ne pas les publier dans un groupe ouvert, protéger les fichiers et respecter la législation nationale sur les données personnelles. En classe virtuelle, il faut demander l''accord avant d''enregistrer et préciser l''usage de l''enregistrement.

## La citoyenneté numérique

Respecter les autres dans les forums, citer ses sources, ne pas plagier, vérifier une information avant de la partager : ces comportements font partie des compétences numériques attendues d''un étudiant comme d''un professionnel.

## Points clés

- Peu d''outils, mais fiables, adaptés au mobile et au bas débit.
- Phrases de passe, mots de passe uniques, double authentification.
- Mises à jour, verrouillage, sauvegarde 3-2-1.
- Urgence, offre trop belle, demande de code : signes d''arnaque.

## Exercices

- Exercice 1 : Pourquoi faut-il un mot de passe différent pour chaque compte important ?
- Exercice 2 : Vous recevez : « Félicitations ! Vous avez obtenu une bourse au Canada. Envoyez 25 000 FCFA de frais de dossier sous 24 h. » Listez les signes d''alerte et la bonne réaction.
- Exercice 3 : Appliquez la règle 3-2-1 à votre mémoire de fin d''études.
- Exercice 4 : Citez trois critères pour choisir un outil numérique pour une classe en zone rurale.

## Corrigé

- Exercice 1 : Si un site est piraté et que le mot de passe fuit, les pirates l''essaient sur d''autres services. Avec des mots de passe uniques, seul le compte du site piraté est exposé.
- Exercice 2 : Signes : gain non sollicité, urgence (24 h), demande d''argent. Réaction : ne pas payer, ne pas cliquer, vérifier auprès de l''organisme officiel de bourses ou de l''ambassade, signaler le message.
- Exercice 3 : Une copie sur l''ordinateur, une sur une clé USB ou un disque externe, une dans un stockage en ligne ou chez un proche ; mise à jour après chaque séance de travail importante.
- Exercice 4 : Fonctionnement sur téléphone, consommation de données faible ou mode hors ligne, gratuité ou faible coût, simplicité d''utilisation, protection des données.', 'texte', 45, false, 50
from public.courses c where c.slug = 'formation-education-numerique'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Outils numériques et bonnes pratiques de sécurité');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : apprendre à apprendre et concevoir une séquence en ligne', '## Fiche du cours vidéo

- Durée : 1h30.
- Titre de la séance : apprendre à apprendre et concevoir une séquence en ligne.
- Objectifs : appliquer la récupération active et la répétition espacée ; prendre des notes en colonnes ; concevoir une séquence de cours alignée ; rédiger un bon QCM ; adopter les réflexes de sécurité numérique.
- Matériel : diaporama, tableau blanc ou tableau numérique, feuilles et stylos, téléphone ou ordinateur pour le quiz, fiche de conception de séquence à télécharger.
- Prérequis : aucun ; les leçons 1 à 5 sont recommandées.
- Public : étudiants, formateurs, enseignants et professionnels en formation continue.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et défi de départ

Texte du formateur : « Bonjour et bienvenue. Cette séance a deux publics : celles et ceux qui apprennent, et celles et ceux qui enseignent. En réalité, nous sommes tous les deux à la fois. Je commence par un petit défi : prenez une feuille, et sans regarder vos notes, écrivez tout ce dont vous vous souvenez du dernier cours que vous avez suivi, il y a une semaine ou un mois. Vous avez deux minutes. »

« Alors ? Pour la plupart d''entre nous, la feuille est presque vide. Ce n''est pas grave : c''est normal. Aujourd''hui, nous allons comprendre pourquoi, et comment changer cela. »

Visuel : diapositive « Qu''avez-vous retenu ? » avec un minuteur.

## 05:00 – 15:00 · Comment fonctionne la mémoire

Texte du formateur : « Notre mémoire de travail est petite : elle ne garde que quelques éléments à la fois. Notre mémoire à long terme est immense, mais il faut savoir y ranger les informations et les en ressortir. Ebbinghaus a montré que l''on oublie très vite après avoir appris, puis plus lentement. Chaque révision bien placée remonte la courbe et la rend moins raide. »

Visuel : courbe de l''oubli, puis la même courbe avec des révisions successives qui la relèvent.

« Deux idées à retenir. Première idée : se tester est plus efficace que relire. Deuxième idée : espacer les révisions est plus efficace que tout concentrer la veille. »

Question : « Combien d''entre vous révisent principalement en relisant ? Qu''est-ce que vous pourriez changer dès demain ? »

## 15:00 – 27:00 · Atelier 1 : fiches et boîtes de révision

Texte du formateur : « Construisons ensemble un système de boîtes de révision. Je prends un extrait de cours : "L''UEMOA regroupe huit États qui partagent le franc CFA émis par la BCEAO, dont le siège est à Dakar." Transformons-le en questions. Première fiche : combien d''États dans l''UEMOA ? Deuxième : quelle monnaie ? Troisième : quelle banque centrale et où est son siège ? »

« Maintenant les boîtes. Boîte 1 : chaque jour. Boîte 2 : tous les deux jours. Boîte 3 : tous les quatre jours. Boîte 4 : chaque semaine. Boîte 5 : avant l''examen. Bonne réponse : la fiche avance. Erreur : retour en boîte 1. Vous pouvez faire cela avec des cartons et des enveloppes, ou avec une application de cartes de révision qui fonctionne hors ligne. »

Visuel : schéma des cinq boîtes avec des flèches.

Activité : chaque participant rédige trois fiches sur un sujet de son choix.

## 27:00 – 40:00 · Atelier 2 : les notes en colonnes

Texte du formateur : « Je vais vous montrer une vidéo de trois minutes sur le calcul d''un pourcentage. Préparez votre page : une grande colonne à droite pour les notes, une colonne étroite à gauche pour les questions, une bande en bas pour le résumé. Pendant la vidéo, n''écrivez qu''à droite, avec des abréviations. »

Après la vidéo : « Maintenant, remplissez la colonne de gauche : quelles questions vos notes permettent-elles de répondre ? Puis écrivez un résumé en deux phrases. Cachez la colonne de droite et répondez aux questions de gauche : vous venez de faire votre première révision active. »

Visuel : modèle de page en colonnes, puis un exemple rempli sur le calcul d''une hausse de 10 % sur un prix de 5 000 FCFA, qui donne 5 500 FCFA.

Question : « Qu''est-ce qui a été le plus difficile : écrire vite ou formuler les questions ? »

## 40:00 – 47:00 · Pause interactive et quiz

Texte du formateur : « Faisons une pause active avec un quiz de trois questions. Répondez dans le chat ou sur vos téléphones. »

- Question 1 : Qu''est-ce qui est le plus efficace pour retenir : relire trois fois ou se tester une fois ? Réponse : se tester.
- Question 2 : Une fiche en boîte 2 est ratée. Où va-t-elle ? Réponse : en boîte 1.
- Question 3 : Un étudiant révise 20 minutes par jour pendant 30 jours. Combien d''heures au total ? Réponse : 600 minutes, soit 10 heures.

« Ce quiz lui-même est un exemple d''évaluation formative : il vous aide à apprendre. Levez-vous, étirez-vous, nous reprenons dans deux minutes. »

## 47:00 – 1:00:00 · Atelier 3 : concevoir une séquence alignée

Texte du formateur : « Changeons de casquette. Vous êtes formateur. Vous devez créer une séquence de deux heures sur le thème "Tenir le cahier de caisse d''une boutique" pour des commerçants qui suivent le cours sur téléphone. Première question : que sauront-ils faire à la fin ? Pas "connaître la caisse", mais "enregistrer les entrées et sorties", "calculer le solde du jour", "repérer un écart". Ce sont des verbes d''action observables. »

« Deuxième question : quelle activité pour chaque objectif ? Une vidéo courte avec une journée de vente, un exercice sur un cahier fictif de dix opérations. Troisième question : comment évaluer ? En faisant calculer le solde d''une nouvelle journée. Objectif, activité, évaluation : c''est l''alignement. »

Visuel : fiche de conception de séquence à trois colonnes : objectifs, activités, évaluations.

Activité : par groupes de trois, les participants remplissent la fiche pour un sujet de leur métier.

Exemple chiffré à montrer : solde d''ouverture 25 000 FCFA, ventes 68 500 FCFA, achats payés en espèces 31 000 FCFA, solde théorique 25 000 + 68 500 − 31 000 = 62 500 FCFA. Si la caisse contient 61 500 FCFA, l''écart est de 1 000 FCFA à expliquer.

## 1:00:00 – 1:10:00 · Atelier 4 : rédiger un bon QCM

Texte du formateur : « Prenons une question : "Un article coûte 10 000 FCFA hors taxes, la TVA est de 18 %. Quel est le prix TTC ?" Bonne réponse : 11 800 FCFA. Les distracteurs doivent correspondre à des erreurs réelles : 10 018 si l''on ajoute 18 comme un nombre, 1 800 si l''on calcule seulement la TVA, 8 200 si l''on soustrait. Un distracteur absurde, comme 1 000 000, n''apprend rien. »

« Règles d''or : une idée par question, pas de double négation, des options de longueur comparable, pas de "toutes les réponses ci-dessus". Et pour limiter la fraude, changez les valeurs pour chaque apprenant. »

Activité : chaque groupe rédige une question avec trois distracteurs justifiés.

## 1:10:00 – 1:20:00 · Atelier 5 : la sécurité numérique

Texte du formateur : « Dernière compétence : protéger son travail et ses comptes. Je vous lis un message reçu par une étudiante : "Félicitations, vous avez gagné une bourse d''études. Envoyez 25 000 FCFA de frais de dossier avant ce soir." Quels sont les signaux d''alerte ? Un gain non sollicité, l''urgence, une demande d''argent. La bonne réaction : ne pas payer, vérifier auprès de l''organisme officiel. »

« Trois réflexes à adopter ce soir : activer la double authentification sur votre messagerie, utiliser une phrase de passe différente pour chaque compte important, et appliquer la règle 3-2-1 à vos travaux : trois copies, deux supports, une copie hors du lieu habituel. »

Visuel : capture d''écran fictive d''un message frauduleux annotée.

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Texte du formateur : « Récapitulons. Pour apprendre : se tester, espacer, alterner, prendre des notes actives, organiser son temps. Pour enseigner : partir des objectifs, aligner activités et évaluations, penser mobile et bas débit, accompagner. Pour tous : sécuriser ses comptes et sauvegarder. Voici l''évaluation finale. »

- Question 1 : Citez deux techniques d''apprentissage dont l''efficacité est bien établie. Réponse : la récupération active (se tester) et la répétition espacée.
- Question 2 : Quelles sont les trois zones de la méthode des notes en colonnes ? Réponse : les notes à droite, les questions et mots-clés à gauche, le résumé en bas.
- Question 3 : Réécrivez l''objectif « connaître le cahier de caisse » de façon observable. Réponse : par exemple « calculer le solde de caisse d''une journée à partir des entrées et des sorties ».
- Question 4 : Dans l''exemple de la caisse, le solde théorique est de 62 500 FCFA et la caisse contient 61 500 FCFA. Quel est l''écart ? Réponse : un manque de 1 000 FCFA.
- Question 5 : Que signifie la règle 3-2-1 ? Réponse : trois copies des fichiers, sur deux supports différents, dont une hors du lieu habituel.

« Merci à toutes et à tous. Votre mission pour la semaine : créer dix fiches de révision et les réviser chaque jour selon les boîtes, ou, si vous êtes formateur, finaliser votre fiche de séquence alignée. »', 'video', 90, false, 60
from public.courses c where c.slug = 'formation-education-numerique'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : apprendre à apprendre et concevoir une séquence en ligne');
