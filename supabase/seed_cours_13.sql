-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Cours (partie 13/16). À exécuter après seed.sql.

-- Cours : Logistique et transport Licence 2 : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'lic-log-l2', (select id from public.levels where name = 'Licence 2'), null, 'Logistique et transport', 'Logistique et transport Licence 2 : réussir ses examens', 'Préparation aux partiels et examens semestriels de la Licence 2 en logistique et transport (système LMD, contexte Sénégal et UEMOA). Le cours couvre l''entreposage et la manutention (implantation, préparation de commandes, indicateurs), le transport routier et la gestion de flotte (coût de revient kilométrique, optimisation des tournées) et le commerce international et la douane (Incoterms 2020, documents, transit, dédouanement). Fiches, exercices corrigés, sujet type et trois cours vidéo de 1h30. Prérequis : notions de Licence 1 (stocks, modes de transport).', true, 392
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Licence 2 en logistique et transport', '## Objectifs de la leçon

- Situer la Licence 2 dans le parcours LMD et comprendre ce qui change par rapport à la première année.
- Connaître les trois matières de spécialité traitées dans ce cours.
- Adapter sa méthode de révision à des matières plus techniques et plus réglementaires.
- Connaître les types d''épreuves et suivre un plan de révision sur six semaines.

## La Licence 2 dans le système LMD

La Licence 2 correspond aux semestres 3 et 4 du parcours. Comme en première année, chaque semestre est organisé en unités d''enseignement (UE) composées de plusieurs matières, et chaque UE validée apporte des crédits. Les règles de validation, de compensation, de note éliminatoire et de rattrapage dépendent de chaque université ou école : consultez le règlement des études et la maquette de votre parcours auprès de la scolarité.

Ce qui change en deuxième année : les matières deviennent plus opérationnelles. On ne se contente plus de définir la logistique ; on dimensionne un entrepôt, on calcule le coût de revient d''un camion, on choisit un Incoterm et on prépare un dossier de dédouanement. Les sujets d''examen contiennent davantage de cas pratiques complets.

## Les matières clés de la Licence 2

À côté des matières transversales (comptabilité analytique, statistiques, droit des contrats et des transports, anglais professionnel, informatique de gestion), trois matières de spécialité structurent ce cours :

- Entreposage et manutention : rôle de l''entrepôt, implantation, équipements, préparation de commandes, indicateurs de performance.
- Transport routier et gestion de flotte : coût de revient kilométrique, tarification, seuil de rentabilité, indicateurs de flotte, optimisation des tournées.
- Commerce international et douane : Incoterms 2020, documents du commerce international, rôle du transitaire et du commissionnaire en douane, régimes douaniers, calcul de la valeur en douane et des droits avec des taux fictifs.

Ces matières sont liées. Une marchandise importée par conteneur passe la douane, est transportée par la route jusqu''à un entrepôt, puis préparée et livrée aux clients. Un bon sujet de synthèse suit justement ce parcours.

## Méthode de révision

Pour les matières calculatoires (entrepôt, transport routier) :

- Construisez un formulaire d''une page : taux d''occupation, productivité, coût de revient kilométrique, seuil de rentabilité, économies de Clarke et Wright.
- Refaites chaque exemple du cours en changeant un chiffre, pour vérifier que vous comprenez le raisonnement et pas seulement le résultat.
- Présentez toujours les calculs dans un tableau ou une liste claire, avec les unités.

Pour la matière réglementaire (commerce international et douane) :

- Apprenez les onze Incoterms 2020 en deux groupes : les sept règles utilisables pour tout mode de transport, et les quatre règles réservées au transport maritime et fluvial.
- Pour chaque Incoterm, retenez deux choses : où se transfère le risque, qui paie le transport principal.
- Ne citez jamais un taux de droit de douane de mémoire : à l''examen, utilisez les taux fournis par l''énoncé. Dans la vie professionnelle, on consulte le tarif officiel en vigueur.

## Les types d''épreuves

- Questions de cours : définir un Incoterm, distinguer transitaire et commissionnaire en douane, expliquer le principe du « marche en avant » dans un entrepôt.
- QCM : très fréquents sur les Incoterms et les documents.
- Exercices chiffrés : capacité d''un entrepôt, effectif de préparateurs, coût de revient kilométrique, devis, calcul de valeur en douane.
- Cas pratique : une entreprise fictive importe, stocke et distribue ; plusieurs questions enchaînées.
- Projet : plan d''implantation d''un entrepôt, étude de la flotte d''une PME, dossier d''importation complet.

Conseil : dans un cas pratique, les erreurs se propagent. Si vous n''êtes pas sûr d''un résultat intermédiaire, indiquez-le, puis poursuivez avec votre chiffre. Le correcteur valorise souvent la méthode juste appliquée à un résultat faux.

## Plan de révision sur six semaines

- Semaine 1 : entreposage, partie 1. Rôles de l''entrepôt, implantation, flux, équipements, calcul de capacité.
- Semaine 2 : entreposage, partie 2. Préparation de commandes, indicateurs, dimensionnement des effectifs.
- Semaine 3 : transport routier. Coût de revient kilométrique, devis, seuil de rentabilité, indicateurs de flotte.
- Semaine 4 : tournées et commerce international, partie 1. Méthode de Clarke et Wright, Incoterms 2020.
- Semaine 5 : douane. Documents, régimes, valeur en douane, calcul des droits avec taux fictifs ; puis un sujet type en temps limité.
- Semaine 6 : correction du sujet type, révision ciblée des erreurs, fiches de synthèse.

Prévoyez des séances courtes et régulières pour les Incoterms (vingt minutes par jour avec des cartes mémoire) et des séances longues pour les cas pratiques.

## Points clés

- La Licence 2 est plus opérationnelle : dimensionner, chiffrer, choisir.
- Formulaire d''une page pour l''entrepôt et le transport routier.
- Incoterms : risque et transport principal, en deux groupes.
- Jamais de taux douanier inventé : utilisez ceux de l''énoncé.

## Exercices pratiques

Exercice 1. Citez les onze Incoterms 2020 en les classant en deux groupes.

Exercice 2. Pour un sujet de 4 heures comportant quatre dossiers notés 5, 6, 5 et 4 points, proposez une répartition du temps avec 15 minutes de lecture et 15 minutes de relecture.

Exercice 3. Expliquez pourquoi il ne faut pas inventer un taux de droit de douane dans une copie.

Exercice 4. Décrivez en cinq étapes le parcours d''un conteneur importé, du navire jusqu''au client final, en citant à chaque étape la matière de Licence 2 concernée.

Exercice 5. Proposez trois questions de cours que vous pourriez poser à un camarade sur l''entreposage.

## Corrigé

Exercice 1. Tous modes : EXW, FCA, CPT, CIP, DAP, DPU, DDP. Maritime et voies navigables : FAS, FOB, CFR, CIF.

Exercice 2. Temps de composition : 240 − 15 − 15 = 210 minutes. Par point : 210 / 20 = 10,5 minutes. Répartition : 52,5 ; 63 ; 52,5 et 42 minutes, soit 210 minutes.

Exercice 3. Les taux changent, dépendent du produit, de son origine et des accords applicables. Un taux inventé fausse tout le calcul et montre un manque de rigueur. À l''examen, on utilise les taux fournis ; en entreprise, on consulte le tarif officiel en vigueur ou un commissionnaire agréé.

Exercice 4. Déchargement au port et formalités (commerce international et douane) ; enlèvement du conteneur et transport par camion (transport routier) ; réception et rangement à l''entrepôt (entreposage) ; préparation des commandes (entreposage) ; livraison par tournées (transport routier et gestion de flotte).

Exercice 5. Exemples : qu''est-ce qu''un taux d''occupation ? Quelle différence entre préparation « homme vers produit » et « produit vers homme » ? Pourquoi place-t-on les articles à forte rotation près des quais ?', 'texte', 45, true, 10
from public.courses c where c.slug = 'lic-log-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Licence 2 en logistique et transport');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Entreposage et manutention : l''essentiel pour l''examen', '## Objectifs de la leçon

- Expliquer les rôles d''un entrepôt et ses grandes zones.
- Appliquer les principes d''implantation (flux, rotation, indice COI).
- Décrire les méthodes de préparation de commandes.
- Calculer les indicateurs : capacité, taux d''occupation, productivité, taux d''erreur, coût unitaire, effectif nécessaire.

## Fiche 1 : rôles et zones de l''entrepôt

L''entrepôt n''est pas seulement un lieu où l''on stocke. Il sert à régulariser les flux entre production et consommation, à regrouper ou éclater des lots, à préparer les commandes, et parfois à réaliser des opérations à valeur ajoutée (étiquetage, conditionnement, montage de kits). Le cross-docking est une variante où la marchandise traverse l''entrepôt sans être stockée : reçue le matin, réexpédiée le jour même.

Les zones principales, dans l''ordre du flux :

- Quais de réception et zone de contrôle.
- Zone de stockage : palettiers (racks), stockage au sol, rayonnages pour les petites pièces, chambre froide si besoin.
- Zone de préparation de commandes.
- Zone d''emballage et de consolidation.
- Quais d''expédition.
- Locaux annexes : bureaux, charge des batteries des chariots, sanitaires.

## Fiche 2 : implantation

Principe de la marche en avant : la marchandise avance dans un sens unique, sans retour en arrière ni croisement. Trois schémas classiques, décrits en texte :

- Flux en I : réception d''un côté du bâtiment, expédition du côté opposé. Lisible, adapté aux gros volumes, mais distances longues.
- Flux en U : réception et expédition sur la même façade. Les quais peuvent être partagés et les articles rapides placés près de cette façade ; c''est le schéma le plus courant.
- Flux en L : réception et expédition sur deux façades adjacentes, utile quand le terrain l''impose.

Règle de placement : rapprocher des quais les articles qui sortent souvent et qui prennent peu de place. L''indice COI (cube per order index) le traduit : COI = place occupée / nombre de sorties (ou de commandes) sur la période. On classe les articles par COI croissant ; les plus faibles vont au plus près des quais.

Exemple. Baobab Logistique (prestataire fictif, Diamniadio). Cinq articles, place en emplacements et sorties par jour : P1 4 et 80 ; P2 6 et 30 ; P3 1 et 25 ; P4 8 et 16 ; P5 3 et 50. COI : P1 0,05 ; P2 0,2 ; P3 0,04 ; P4 0,5 ; P5 0,06. Ordre du plus proche au plus éloigné : P3, P1, P5, P2, P4.

## Fiche 3 : équipements et manutention

- Transpalette manuel ou électrique : déplacement horizontal des palettes.
- Chariot élévateur frontal : chargement des camions et stockage à hauteur moyenne.
- Chariot à mât rétractable : stockage en hauteur dans des allées plus étroites.
- Convoyeurs, tables à rouleaux, et pour les grands sites, des systèmes automatisés.

La sécurité est un point de contrôle majeur : formation des caristes, entretien des chariots, respect des charges maximales des palettiers, circulation séparée des piétons.

## Fiche 4 : la préparation de commandes

C''est souvent l''activité la plus coûteuse de l''entrepôt, car elle demande beaucoup de main-d''œuvre. Méthodes :

- Homme vers produit : le préparateur circule dans les allées avec une liste ou un terminal. Simple, mais les déplacements représentent une grande partie du temps.
- Produit vers homme : un système apporte les articles au poste du préparateur. Productif mais coûteux.
- Préparation à la commande (une commande à la fois), par lot (plusieurs commandes regroupées, puis éclatement), ou par zone (chaque préparateur gère une zone).

Le temps d''un préparateur se décompose en déplacement, recherche, prélèvement et tâches administratives. Si le déplacement représente 50 % du temps et qu''une meilleure implantation le réduit de 30 %, le temps total baisse de 50 % × 30 % = 15 %. Une productivité de 40 lignes par heure passe alors à 40 / 0,85 ≈ 47 lignes par heure.

## Fiche 5 : les indicateurs

Suite de l''exemple Baobab Logistique :

- Capacité : 240 alvéoles au sol × 5 niveaux × 2 palettes par alvéole = 2 400 emplacements palettes.
- Taux d''occupation : 2 040 palettes présentes / 2 400 = 85 %. Au-delà d''environ 85 à 90 %, l''entrepôt devient difficile à exploiter (manque d''emplacements libres pour ranger).
- Productivité de préparation : 6 préparateurs × 7,5 heures = 45 heures ; 1 800 lignes préparées ; 1 800 / 45 = 40 lignes par heure.
- Taux d''erreur de préparation : 27 erreurs / 1 800 lignes = 1,5 %.
- Coût de stockage : coûts mensuels de 18 millions FCFA / 2 040 palettes ≈ 8 824 FCFA par palette et par mois.
- Effectif nécessaire pour 2 400 lignes par jour : 2 400 / 40 = 60 heures ; 60 / 7,5 = 8 préparateurs.

Autres indicateurs : délai de mise en stock après réception, taux de commandes expédiées le jour même, nombre d''accidents, écarts d''inventaire.

## Points clés

- Marche en avant ; flux en U le plus courant.
- Articles à faible COI près des quais.
- La préparation est l''activité la plus coûteuse : réduire les déplacements.
- Indicateurs clés : occupation, productivité, erreurs, coût unitaire.

## Exercices pratiques

Exercice 1. Expliquez la différence entre un entrepôt classique et une plateforme de cross-docking.

Exercice 2. Un entrepôt compte 8 allées ; chaque allée a 2 rangées de 25 alvéoles, sur 4 niveaux, avec 3 palettes par alvéole. Calculez la capacité. 3 840 palettes sont stockées : quel est le taux d''occupation ?

Exercice 3. Classez par indice COI les articles suivants (emplacements ; sorties par jour) : R1 2 ; 40. R2 5 ; 20. R3 3 ; 90. R4 6 ; 12.

Exercice 4. 3 000 lignes sont à préparer chaque jour, la productivité est de 50 lignes par heure et un préparateur travaille 7 heures effectives. Combien de préparateurs faut-il ?

Exercice 5. Sur un mois, 12 600 lignes préparées et 42 erreurs ; coût mensuel de l''entrepôt 24 millions FCFA pour 8 000 commandes. Calculez le taux d''erreur et le coût par commande.

Exercice 6 (cas pratique). Dans un entrepôt où les préparateurs consacrent 60 % de leur temps aux déplacements, une réimplantation réduit les déplacements de 25 %. La productivité actuelle est de 36 lignes par heure. Calculez la nouvelle productivité et commentez.

## Corrigé

Exercice 1. L''entrepôt classique stocke la marchandise pour une durée variable. En cross-docking, la marchandise est reçue, triée et réexpédiée en moins de vingt-quatre heures, sans stockage : cela suppose une information fiable et une bonne synchronisation des arrivées et des départs.

Exercice 2. Capacité : 8 × 2 × 25 × 4 × 3 = 4 800 emplacements. Taux d''occupation : 3 840 / 4 800 = 80 %.

Exercice 3. COI : R1 2/40 = 0,05 ; R2 5/20 = 0,25 ; R3 3/90 ≈ 0,033 ; R4 6/12 = 0,5. Ordre : R3, R1, R2, R4. R3 va au plus près des quais.

Exercice 4. Heures nécessaires : 3 000 / 50 = 60 heures. Effectif : 60 / 7 ≈ 8,57, donc 9 préparateurs (on arrondit toujours au-dessus).

Exercice 5. Taux d''erreur : 42 / 12 600 ≈ 0,33 %. Coût par commande : 24 000 000 / 8 000 = 3 000 FCFA.

Exercice 6. Baisse du temps total : 60 % × 25 % = 15 %. Nouvelle productivité : 36 / 0,85 ≈ 42,4 lignes par heure, soit environ 18 % de plus. La réimplantation est un levier puissant et peu coûteux, à condition de la mettre à jour quand les rotations changent.', 'texte', 60, false, 20
from public.courses c where c.slug = 'lic-log-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Entreposage et manutention : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Transport routier et gestion de flotte : l''essentiel pour l''examen', '## Objectifs de la leçon

- Calculer le coût de revient kilométrique (CRK) d''un véhicule.
- Établir un devis, un seuil de rentabilité et des indicateurs de flotte.
- Appliquer la méthode des économies de Clarke et Wright pour construire des tournées.

## Fiche 1 : les coûts d''un véhicule

On distingue :

- Les coûts fixes annuels, qui ne dépendent pas des kilomètres : amortissement du véhicule, assurance, salaire et charges du conducteur, frais généraux affectés, taxes et autorisations.
- Les coûts variables, proportionnels aux kilomètres : carburant, pneumatiques, entretien et réparations.

Le coût de revient kilométrique : CRK = coûts fixes annuels / kilomètres annuels + coût variable par kilomètre.

Exemple. Transports Diallo SARL (fictive, Kaolack) exploite un camion acheté 60 millions FCFA, amorti sur 5 ans. Coûts fixes annuels : amortissement 12 000 000 ; assurance 2 400 000 (fictif) ; conducteur, salaire et charges 4 800 000 ; frais généraux 2 800 000 ; taxes 500 000 (fictif). Total 22 500 000 FCFA. Coûts variables : consommation 0,36 litre par km à 750 FCFA le litre (prix fictif pour l''exemple), soit 270 FCFA par km ; pneumatiques 25 ; entretien 45. Total 340 FCFA par km. Kilométrage annuel : 90 000 km.

- Coût fixe par km : 22 500 000 / 90 000 = 250 FCFA.
- CRK = 250 + 340 = 590 FCFA par km.

Attention : le coût fixe par kilomètre baisse si le camion roule plus. Un camion immobilisé (panne, attente au port, manque de fret) coûte cher.

## Fiche 2 : le devis

Un client demande un transport de 325 km ; le camion reviendra à vide, soit 650 km au total. Péage et frais divers : 10 000 FCFA (fictif). Marge souhaitée : 15 % du coût.

- Coût roulage : 650 × 590 = 383 500 FCFA.
- Coût total : 383 500 + 10 000 = 393 500 FCFA.
- Prix proposé : 393 500 × 1,15 ≈ 452 525 FCFA.

Variante dite trinôme, utilisée par les professionnels : coût = CK × km + CC × heures de conduite et d''attente + CJ × jours d''utilisation. Avec CK = 340, CC = 4 800 000 / 2 000 heures = 2 400 FCFA par heure et CJ = 17 700 000 / 250 jours = 70 800 FCFA par jour, un trajet de 650 km, 14 heures et 2 jours coûte : 221 000 + 33 600 + 141 600 = 396 200 FCFA. Cette méthode tient compte des attentes, fréquentes aux ports et aux frontières.

## Fiche 3 : seuil de rentabilité et indicateurs

Si le transporteur facture 700 FCFA par km parcouru, chaque km rapporte une marge sur coût variable de 700 − 340 = 360 FCFA. Seuil de rentabilité : 22 500 000 / 360 = 62 500 km par an. En dessous, le camion perd de l''argent.

Indicateurs de flotte :

- Taux de kilomètres à vide : km à vide / km totaux. Exemple : 27 000 / 90 000 = 30 %. Rechercher un fret retour est souvent le premier levier.
- Taux de remplissage : charge transportée / capacité (en tonnes, en volume ou en palettes).
- Consommation aux 100 km et coût d''entretien par km, suivis par véhicule.
- Taux de disponibilité : jours disponibles / jours ouvrables.
- Sinistralité et respect des charges : la surcharge use les routes et les véhicules et expose à des sanctions.

## Fiche 4 : optimisation des tournées

Une tournée part du dépôt, visite plusieurs clients et revient. Objectif : minimiser la distance en respectant la capacité du véhicule. La méthode des économies de Clarke et Wright est la plus enseignée.

Principe : au départ, chaque client est servi par un aller-retour. Relier deux clients i et j dans une même tournée économise s(i, j) = d(0, i) + d(0, j) − d(i, j). On classe les économies par ordre décroissant et on fusionne les tournées tant que la capacité est respectée et que i et j sont aux extrémités de leurs tournées.

Exemple. Un distributeur fictif de Thiès, capacité du camion 16 tonnes. Distances au dépôt : A 20 km, B 25, C 30, D 18. Distances entre clients : A-B 10, A-C 28, A-D 22, B-C 15, B-D 30, C-D 26. Demandes : A 8 t, B 6 t, C 9 t, D 7 t.

- Économies : B-C 25 + 30 − 15 = 40 ; A-B 35 ; C-D 22 ; A-C 22 ; A-D 16 ; B-D 13.
- B-C : 6 + 9 = 15 t, accepté. Tournée 0-B-C-0.
- A-B : 8 + 15 = 23 t, refusé. C-D : 7 + 15 = 22 t, refusé. A-C : refusé.
- A-D : 8 + 7 = 15 t, accepté. Tournée 0-A-D-0.
- Résultat : 0-B-C-0 = 25 + 15 + 30 = 70 km ; 0-A-D-0 = 20 + 22 + 18 = 60 km. Total 130 km contre 2 × (20 + 25 + 30 + 18) = 186 km en allers-retours. Économie : 56 km, soit la somme des économies retenues (40 + 16).

## Points clés

- CRK = coûts fixes / km + coût variable par km.
- Prix = coût complet + marge ; tenir compte du retour à vide.
- Seuil de rentabilité = coûts fixes / marge par km.
- Clarke et Wright : économies décroissantes, sous contrainte de capacité.

## Exercices pratiques

Exercice 1. Distinguez coûts fixes et coûts variables d''un camion, avec deux exemples de chaque.

Exercice 2. Un camion a 18 000 000 FCFA de coûts fixes annuels, 300 FCFA de coût variable par km et parcourt 75 000 km par an. Calculez le CRK.

Exercice 3. Établissez le prix d''un transport de 480 km au total avec une marge de 20 % sur le coût.

Exercice 4. Le transporteur facture 650 FCFA par km. Calculez le seuil de rentabilité en km.

Exercice 5. Dépôt 0, clients X, Y, Z. Distances : 0-X 12, 0-Y 15, 0-Z 20, X-Y 8, X-Z 18, Y-Z 9. La capacité permet de tout livrer en une tournée. Appliquez Clarke et Wright.

Exercice 6 (cas pratique). Le camion de l''exercice 2 roule à vide sur 30 % de ses kilomètres. Un commissionnaire propose du fret retour qui réduirait ce taux à 15 % sans changer le kilométrage total, avec une recette de 650 FCFA par km chargé supplémentaire. Calculez la recette supplémentaire annuelle.

## Corrigé

Exercice 1. Fixes : amortissement, assurance, salaire du conducteur, taxes. Variables : carburant, pneumatiques, entretien.

Exercice 2. Coût fixe par km : 18 000 000 / 75 000 = 240 FCFA. CRK = 240 + 300 = 540 FCFA par km.

Exercice 3. Coût : 480 × 540 = 259 200 FCFA. Prix : 259 200 × 1,20 = 311 040 FCFA.

Exercice 4. Marge par km : 650 − 300 = 350 FCFA. Seuil : 18 000 000 / 350 ≈ 51 429 km.

Exercice 5. Économies : X-Y 12 + 15 − 8 = 19 ; X-Z 12 + 20 − 18 = 14 ; Y-Z 15 + 20 − 9 = 26. On relie Y-Z (26), puis X-Y (19) : tournée 0-X-Y-Z-0 = 12 + 8 + 9 + 20 = 49 km, contre 2 × (12 + 15 + 20) = 94 km. Économie : 45 km = 26 + 19.

Exercice 6. Kilomètres passant de vide à chargé : 15 % × 75 000 = 11 250 km. Recette supplémentaire : 11 250 × 650 = 7 312 500 FCFA par an, sans coût kilométrique supplémentaire puisque ces kilomètres étaient déjà parcourus (seuls quelques frais de chargement et d''attente sont à prévoir).', 'texte', 60, false, 30
from public.courses c where c.slug = 'lic-log-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Transport routier et gestion de flotte : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Commerce international et douane : l''essentiel pour l''examen', '## Objectifs de la leçon

- Expliquer le rôle et la structure des Incoterms 2020.
- Identifier les principaux documents du commerce international.
- Distinguer les acteurs du transit et du dédouanement.
- Décrire les grandes étapes du dédouanement et les régimes douaniers.
- Calculer une valeur en douane et des droits avec des taux fictifs.

## Fiche 1 : les Incoterms 2020

Les Incoterms sont des règles publiées par la Chambre de commerce internationale. La version en vigueur est celle de 2020. Ils précisent, entre vendeur et acheteur : le point de livraison, donc le transfert des risques ; la répartition des frais (transport, assurance, formalités) ; les obligations de dédouanement. Ils ne règlent ni le transfert de propriété, ni le prix, ni le mode de paiement : ces points relèvent du contrat de vente.

On écrit l''Incoterm suivi d''un lieu précis et de la version : par exemple « FOB port de Dakar, Incoterms 2020 ».

Règles utilisables pour tout mode de transport :

- EXW (à l''usine) : le vendeur met la marchandise à disposition chez lui ; l''acheteur supporte tout, y compris le dédouanement export.
- FCA (franco transporteur) : livraison au transporteur désigné par l''acheteur ; le vendeur dédouane à l''export.
- CPT (port payé jusqu''à) : le vendeur paie le transport jusqu''à la destination, mais le risque passe à la remise au premier transporteur.
- CIP (port payé, assurance comprise) : comme CPT, avec une assurance à la charge du vendeur ; en 2020, la couverture exigée est étendue (clauses de type « tous risques »).
- DAP (rendu au lieu de destination) : livraison à destination, marchandise non déchargée.
- DPU (rendu au lieu de destination déchargé) : nouvelle appellation de 2020 ; le vendeur décharge.
- DDP (rendu droits acquittés) : le vendeur supporte tout, y compris les droits à l''importation.

Règles réservées au transport maritime et fluvial :

- FAS (franco le long du navire).
- FOB (franco à bord) : le risque passe quand la marchandise est à bord du navire au port d''embarquement.
- CFR (coût et fret) : le vendeur paie le fret jusqu''au port de destination ; le risque passe à bord au port d''embarquement.
- CIF (coût, assurance et fret) : comme CFR, avec une assurance minimale à la charge du vendeur.

Piège classique : en CFR et CIF, le vendeur paie le transport jusqu''à destination, mais le risque passe dès le port de départ. Pour un conteneur, la CCI recommande plutôt FCA, CPT ou CIP, car le conteneur est remis au transporteur avant d''être chargé à bord.

## Fiche 2 : les documents

- Facture pro forma (offre) et facture commerciale (base de la valeur).
- Liste de colisage : contenu, poids et dimensions de chaque colis.
- Documents de transport : connaissement maritime (bill of lading), lettre de transport aérien, lettre de voiture routière.
- Certificat d''origine : détermine l''origine, utile pour les préférences tarifaires.
- Certificats sanitaires ou phytosanitaires selon les produits.
- Police ou certificat d''assurance.
- Déclaration en douane, établie aujourd''hui sur des systèmes informatisés.

## Fiche 3 : les acteurs

- Le transitaire organise le transport de bout en bout pour le compte du chargeur : réservation, groupage, suivi.
- Le commissionnaire en douane agréé (déclarant) établit les déclarations en douane au nom de l''importateur ou de l''exportateur ; il doit être agréé par l''administration.
- Le consignataire de navire représente l''armateur au port.
- La douane contrôle, liquide les droits et taxes, et lutte contre la fraude.

## Fiche 4 : le dédouanement

Étapes générales à l''importation :

- Arrivée de la marchandise et dépôt du manifeste par le transporteur.
- Dépôt de la déclaration en douane : espèce tarifaire (classement dans la nomenclature), origine, valeur, régime demandé.
- Contrôle : documentaire, ou physique selon un circuit de sélection.
- Liquidation et paiement des droits et taxes.
- Bon à enlever, puis sortie de la marchandise du port.

Principaux régimes : mise à la consommation, exportation, transit (la marchandise traverse le territoire sous douane vers un autre pays, situation fréquente sur les corridors), entrepôt sous douane, admission temporaire.

Dans l''UEMOA, union douanière, un tarif extérieur commun s''applique aux importations en provenance des pays tiers ; la CEDEAO a également adopté un tarif extérieur commun. Les taux dépendent des catégories de produits et évoluent : ne les citez pas de mémoire.

## Fiche 5 : calcul de la valeur en douane et des droits

À l''importation, la valeur en douane est déterminée sur une base CAF : prix de la marchandise, plus fret et assurance jusqu''au point d''entrée. Les taux ci-dessous sont fictifs pour l''exemple.

Exemple. Sénégal Équipements (fictive) importe des machines achetées 40 000 euros FOB Le Havre. Taux de conversion : 1 euro = 655,957 FCFA (parité fixe). Fret maritime : 1 500 000 FCFA ; assurance : 120 000 FCFA. Droit de douane fictif 10 % ; autres prélèvements fictifs 2 % ; TVA fictive 18 % sur la valeur CAF augmentée des droits et prélèvements.

- Prix en FCFA : 40 000 × 655,957 = 26 238 280.
- Valeur CAF : 26 238 280 + 1 500 000 + 120 000 = 27 858 280.
- Droit de douane : 2 785 828. Autres prélèvements : 557 166 (arrondi).
- Base de TVA : 27 858 280 + 2 785 828 + 557 166 = 31 201 274 ; TVA : 5 616 229 (arrondi).
- Total droits et taxes : 8 959 223 FCFA.

Avec 600 000 FCFA de frais de transit et de transport jusqu''au magasin, le coût de revient hors TVA (récupérable pour une entreprise assujettie, selon les règles en vigueur) est : 27 858 280 + 2 785 828 + 557 166 + 600 000 = 31 801 274 FCFA.

## Points clés

- Incoterm = point de livraison (risque) + frais + formalités ; jamais la propriété.
- CFR et CIF : frais jusqu''à destination, risque transféré au départ.
- Valeur en douane CAF ; taux toujours issus de l''énoncé ou du tarif officiel.

## Exercices pratiques

Exercice 1. Qui supporte le risque pendant le transport maritime en CIF ? Qui paie le fret ?

Exercice 2. Un exportateur de Dakar ne veut s''occuper d''aucune formalité ni d''aucun transport. Quel Incoterm propose-t-il ? Quel inconvénient pour l''acheteur étranger ?

Exercice 3. Distinguez transitaire et commissionnaire en douane agréé.

Exercice 4. Un importateur achète 18 000 euros CFR Dakar ; assurance 50 000 FCFA. Taux fictifs : droit de douane 5 %, autres prélèvements 1 %, TVA 18 %. Calculez la valeur CAF, chaque droit et le total.

Exercice 5 (cas pratique). Un importateur de Bamako reçoit un conteneur au port de Dakar. Quel régime douanier utilise-t-il au Sénégal ? Quel Incoterm conseillez-vous pour un achat en conteneur auprès d''un fournisseur asiatique, et pourquoi ?

## Corrigé

Exercice 1. Le risque passe à l''acheteur dès que la marchandise est à bord au port d''embarquement ; le vendeur paie le fret et une assurance minimale jusqu''au port de destination.

Exercice 2. EXW. L''acheteur doit organiser le dédouanement export dans le pays du vendeur, ce qui peut être difficile pour un étranger ; FCA est souvent préférable.

Exercice 3. Le transitaire organise le transport ; le commissionnaire agréé accomplit les formalités douanières pour le compte de son client. Une même entreprise peut exercer les deux métiers.

Exercice 4. 18 000 × 655,957 = 11 807 226 FCFA. CAF : 11 857 226. Droit de douane : 592 861. Autres : 118 572. Base de TVA : 12 568 659 ; TVA : 2 262 359. Total : 2 973 792 FCFA.

Exercice 5. Le régime du transit : le conteneur traverse le Sénégal sous douane, puis est dédouané pour la consommation au Mali. Pour un conteneur, FCA ou CPT (ou CIP si l''on veut que le vendeur assure) est plus adapté que FOB ou CIF, car le conteneur est remis au transporteur au terminal avant le chargement à bord.', 'texte', 60, false, 40
from public.courses c where c.slug = 'lic-log-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Commerce international et douane : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Licence 2 logistique et transport (entraînement, corrigé détaillé)', '## Présentation

Sujet d''entraînement de Licence 2 logistique et transport, non officiel. Durée conseillée : 3 heures. Barème indicatif, non officiel, sur 20 points. Entreprises fictives ; tarifs et taux fictifs pour l''exemple.

## Sujet

Ndiambour Import (fictive) importe des pièces détachées agricoles, les stocke dans son entrepôt de Thiès et les livre à des revendeurs.

Dossier 1. Commerce international et douane (6 points)

L''entreprise achète un lot de 30 000 euros FCA Rotterdam. Transport jusqu''au port de Dakar : 1 800 000 FCFA ; assurance : 90 000 FCFA. Taux fictifs : droit de douane 10 %, autres prélèvements 2 %, TVA 18 %.

- 1.1 Expliquez où se transfère le risque en FCA. (1 point)
- 1.2 Calculez la valeur CAF, les droits et taxes et leur total. (3 points)
- 1.3 Citez quatre documents nécessaires au dédouanement. (2 points)

Dossier 2. Entreposage (6 points)

L''entrepôt compte 150 alvéoles au sol, 4 niveaux, 2 palettes par alvéole ; 1 020 palettes sont stockées. Chaque jour, 2 250 lignes sont préparées ; productivité 45 lignes par heure ; 7,5 heures effectives par préparateur.

- 2.1 Calculez la capacité et le taux d''occupation. (2 points)
- 2.2 Calculez l''effectif de préparateurs nécessaire. (2 points)
- 2.3 Proposez deux actions pour améliorer la productivité. (2 points)

Dossier 3. Transport routier (8 points)

Le camion de livraison a des coûts fixes de 15 000 000 FCFA par an, un coût variable de 280 FCFA par km et parcourt 60 000 km par an. Capacité : 10 tonnes. Dépôt 0, clients A, B, C : 0-A 14 km, 0-B 18, 0-C 25, A-B 9, A-C 20, B-C 12. Demandes : A 4 t, B 3 t, C 5 t.

- 3.1 Calculez le CRK. (2 points)
- 3.2 Appliquez la méthode de Clarke et Wright et donnez la distance totale. (4 points)
- 3.3 Calculez le coût des tournées obtenues avec le CRK. (2 points)

## Corrigé détaillé

1.1 En FCA, le vendeur livre la marchandise, dédouanée à l''export, au transporteur désigné par l''acheteur au lieu convenu (ici Rotterdam). Le risque passe à l''acheteur à ce moment ; le transport principal est à la charge de l''acheteur.

1.2 Prix : 30 000 × 655,957 = 19 678 710 FCFA. CAF : 19 678 710 + 1 800 000 + 90 000 = 21 568 710. Droit de douane : 2 156 871. Autres : 431 374 (arrondi). Base de TVA : 21 568 710 + 2 156 871 + 431 374 = 24 156 955 ; TVA : 4 348 252 (arrondi). Total : 2 156 871 + 431 374 + 4 348 252 = 6 936 497 FCFA.

1.3 Facture commerciale, connaissement, liste de colisage, certificat d''origine, attestation d''assurance, déclaration en douane.

2.1 Capacité : 150 × 4 × 2 = 1 200 emplacements. Occupation : 1 020 / 1 200 = 85 %, niveau élevé à surveiller.

2.2 Heures : 2 250 / 45 = 50 heures. Effectif : 50 / 7,5 ≈ 6,67, soit 7 préparateurs.

2.3 Placer les articles à faible COI près des quais ; préparer par lots ; utiliser des terminaux de lecture de codes-barres ; former les préparateurs.

3.1 Coût fixe par km : 15 000 000 / 60 000 = 250 FCFA. CRK = 250 + 280 = 530 FCFA par km.

3.2 Économies : A-B 14 + 18 − 9 = 23 ; A-C 14 + 25 − 20 = 19 ; B-C 18 + 25 − 12 = 31. B-C : 3 + 5 = 8 t, accepté, tournée 0-B-C-0. A-B : 4 + 8 = 12 t, refusé. A-C : refusé pour la même raison. Tournées : 0-B-C-0 = 18 + 12 + 25 = 55 km ; 0-A-0 = 28 km. Total : 83 km contre 114 km en allers-retours (économie 31 km).

3.3 Coût : 83 × 530 = 43 990 FCFA par jour de livraison.

## Commentaires du correcteur

- Dossier 1 : l''erreur la plus fréquente consiste à calculer la TVA sur la seule valeur CAF. Relisez l''énoncé : la base comprend ici les droits et prélèvements. Autre erreur : confondre FCA et FOB ; en FCA, le risque passe à la remise au transporteur, pas à la mise à bord.
- Dossier 2 : un effectif de 6,67 préparateurs ne veut rien dire ; on arrondit à 7 et on peut ajouter qu''un taux d''occupation de 85 % laisse peu de marge pour absorber un arrivage important.
- Dossier 3 : beaucoup de copies fusionnent A-B après B-C sans vérifier la capacité. La contrainte de 10 tonnes interdit cette fusion. Une phrase de conclusion est attendue : la solution réduit la distance de 31 km par jour, soit 31 × 530 = 16 430 FCFA d''économie journalière.
- Présentation : un calcul juste sans unité ni phrase de conclusion perd une partie des points.

## Exercices pratiques

Exercice 1. Quel Incoterm met les droits d''importation à la charge du vendeur ?

Exercice 2. Une plateforme reçoit et réexpédie sans stocker : comment s''appelle cette organisation ?

Exercice 3. Un camion parcourt 80 000 km dont 20 000 à vide. Taux de km à vide ?

Exercice 4. Convertissez 12 500 euros en FCFA.

Exercice 5. Pourquoi conseille-t-on FCA plutôt que FOB pour un envoi en conteneur ?

Exercice 6. Un entrepôt de 1 200 emplacements est occupé à 92 %. Combien d''emplacements libres reste-t-il, et quel risque cela présente-t-il ?

## Corrigé

Exercice 1. DDP.

Exercice 2. Le cross-docking.

Exercice 3. 20 000 / 80 000 = 25 %.

Exercice 4. 12 500 × 655,957 = 8 199 462,5, soit environ 8 199 463 FCFA.

Exercice 5. Le conteneur est remis au transporteur au terminal, avant la mise à bord. En FOB, le vendeur supporterait le risque pendant une période où il ne contrôle plus la marchandise ; en FCA, le risque passe à la remise au transporteur.

Exercice 6. 1 200 × 8 % = 96 emplacements libres. Le risque : ne pas pouvoir ranger rapidement un arrivage, encombrer les allées et les quais, ralentir la préparation et dégrader la sécurité.', 'texte', 60, false, 50
from public.courses c where c.slug = 'lic-log-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Licence 2 logistique et transport (entraînement, corrigé détaillé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Entreposage et manutention', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 2 en logistique et transport.
- Objectifs : expliquer les rôles et les zones d''un entrepôt, appliquer les principes d''implantation et l''indice COI, comparer les méthodes de préparation de commandes, calculer capacité, taux d''occupation, productivité, taux d''erreur, coût unitaire et effectif.
- Matériel : plan d''entrepôt simplifié (flux en I, U et L), photos d''équipements, calculatrice, fiche d''exercices.
- Prérequis : avoir lu la leçon « Entreposage et manutention : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour à toutes et à tous. Aujourd''hui, nous entrons dans l''entrepôt. Beaucoup d''étudiants imaginent un hangar rempli de cartons ; vous allez découvrir un outil de production, avec ses flux, ses machines et ses indicateurs. À la fin de la séance, vous saurez organiser un entrepôt, placer les articles au bon endroit, choisir une méthode de préparation et calculer les principaux indicateurs. Notre fil rouge : Baobab Logistique, prestataire fictif installé à Diamniadio.

## 05:00 – 15:00 · À quoi sert un entrepôt ?

Première question : pourquoi stocker alors qu''on cherche à réduire les stocks ? Parce que la production et la consommation ne vont pas au même rythme. Un importateur reçoit un navire par mois, mais ses clients commandent chaque jour. L''entrepôt régularise. Il regroupe aussi des marchandises de plusieurs fournisseurs pour former des commandes complètes, ou éclate de gros lots en petites livraisons. Il peut enfin réaliser des opérations à valeur ajoutée : étiquetage en français, mise en lots promotionnels, montage de kits.

Le cross-docking pousse la logique à l''extrême : la marchandise arrive le matin, elle est triée par destination et repart le soir, sans stockage. C''est efficace, mais cela exige une information parfaite sur les arrivées et les départs.

Visuel : schéma d''une plateforme de cross-docking, quais de réception d''un côté, quais d''expédition en face, zone de tri au centre.

## 15:00 – 27:00 · Les zones et la marche en avant

Suivons une palette. Elle arrive au quai de réception ; on contrôle la quantité, l''état, les références. Elle est rangée en zone de stockage : palettier, stockage au sol ou rayonnage. Plus tard, on y prélève des articles en zone de préparation ; la commande est emballée, consolidée, puis chargée au quai d''expédition.

Le principe à retenir : la marche en avant. La marchandise avance toujours, sans retour en arrière ni croisement de flux. Trois schémas. Le flux en I : réception d''un côté, expédition à l''opposé, simple mais avec de longues distances. Le flux en U : réception et expédition sur la même façade, le plus répandu, parce qu''il permet de partager les quais et de placer les articles rapides tout près. Le flux en L : deux façades adjacentes, quand le terrain l''impose.

Question au public : un entrepôt reçoit le matin et expédie l''après-midi ; quel schéma recommandez-vous ? Le U, car les mêmes quais peuvent servir aux deux activités à des heures différentes.

Un mot sur la réception, souvent négligée. C''est là que naissent beaucoup d''écarts d''inventaire : une palette acceptée sans comptage, un carton abîmé non signalé, une référence mal saisie. Les bonnes pratiques : comparer la livraison au bon de commande, noter les réserves sur le document de transport en présence du chauffeur, étiqueter chaque palette avec un code lisible, et ranger rapidement pour libérer le quai. Un indicateur simple : le délai entre l''arrivée du camion et la mise en stock.

## 27:00 – 40:00 · Placer les articles : l''indice COI

Où ranger chaque article ? Intuitivement, près des quais pour ceux qui sortent souvent. Mais un article volumineux occupe beaucoup de place précieuse. L''indice COI combine les deux : place occupée divisée par nombre de sorties. Plus il est faible, plus l''article mérite d''être proche des quais.

Calculons pour Baobab Logistique. P1 : 4 emplacements, 80 sorties par jour, COI 0,05. P2 : 6 et 30, COI 0,2. P3 : 1 et 25, COI 0,04. P4 : 8 et 16, COI 0,5. P5 : 3 et 50, COI 0,06. Ordre : P3, P1, P5, P2, P4.

Remarquez que P1 sort le plus souvent, mais P3 passe devant : il sort moins, mais il prend quatre fois moins de place. C''est exactement le genre de nuance que le correcteur attend.

Deux autres règles complètent le COI. D''abord, on place les produits lourds en bas des palettiers, pour la sécurité et pour faciliter la manutention. Ensuite, on peut rapprocher des articles souvent commandés ensemble, par exemple le ciment-colle et les carreaux chez un distributeur de matériaux. Enfin, l''implantation n''est pas définitive : les rotations changent avec les saisons, la rentrée scolaire, les fêtes. Une révision trimestrielle est une bonne habitude.

Visuel : plan de l''entrepôt en U avec les cinq articles placés en bandes successives depuis les quais.

## 40:00 – 45:00 · Pause quiz

Question 1 : qu''est-ce que la marche en avant ? Réponse : un flux à sens unique, sans retour ni croisement.

Question 2 : un article occupe 2 emplacements et sort 40 fois par jour ; son COI ? Réponse : 0,05.

Question 3 : quelle différence entre entrepôt classique et cross-docking ? Réponse : le cross-docking réexpédie sans stocker, en moins de vingt-quatre heures.

## 45:00 – 55:00 · Équipements et sécurité

Les équipements : le transpalette pour déplacer les palettes au sol ; le chariot élévateur frontal pour charger les camions ; le chariot à mât rétractable pour stocker en hauteur dans des allées plus étroites ; les convoyeurs pour les colis. Le choix dépend de la hauteur du bâtiment, de la largeur des allées et des volumes.

La sécurité n''est pas un détail. Un palettier surchargé peut s''effondrer ; un chariot mal entretenu peut blesser. Les bonnes pratiques : formation des caristes, affichage des charges maximales, inspection régulière des palettiers, allées piétonnes séparées. Dans une copie, citer la sécurité comme indicateur de performance montre votre maturité professionnelle.

## 55:00 – 1:07:00 · La préparation de commandes

C''est l''activité la plus coûteuse, car elle mobilise beaucoup de personnel. Deux grandes logiques : l''homme va au produit, avec une liste ou un terminal, ou le produit vient à l''homme, grâce à un système automatisé. Trois organisations : une commande à la fois ; par lot, en regroupant plusieurs commandes puis en les séparant ; par zone, chaque préparateur restant dans sa zone.

Où passe le temps d''un préparateur ? Souvent la moitié en déplacements. Si une réimplantation réduit les déplacements de 30 %, le temps total baisse de 50 % fois 30 %, soit 15 %. Une productivité de 40 lignes par heure devient 40 divisé par 0,85, environ 47 lignes par heure. Sans acheter aucune machine.

Exercice à faire seul : déplacements 60 % du temps, réduction de 25 %, productivité actuelle 36 lignes par heure. Correction : baisse de 15 %, nouvelle productivité 36 sur 0,85, environ 42,4 lignes par heure.

Comment choisir entre préparation à la commande, par lot ou par zone ? Si les commandes sont grosses et peu nombreuses, par exemple des palettes complètes pour des grossistes, la préparation à la commande suffit. Si elles sont nombreuses et petites, comme les commandes de boutiques ou de pharmacies, le regroupement par lot réduit fortement les déplacements, à condition de bien trier ensuite. Dans un grand entrepôt avec des zones distinctes, ambiant, froid, produits dangereux, la préparation par zone s''impose, avec une consolidation finale avant expédition. Enfin, les outils de lecture de codes-barres réduisent les erreurs et fournissent en temps réel les données nécessaires aux indicateurs.

## 1:07:00 – 1:20:00 · Les indicateurs, exemple complet

Baobab Logistique. Capacité : 240 alvéoles au sol, 5 niveaux, 2 palettes par alvéole : 2 400 emplacements. 2 040 palettes présentes : taux d''occupation 85 %. Attention, au-delà d''environ 85 à 90 %, on manque de places libres pour ranger rapidement : un entrepôt plein n''est pas un entrepôt performant.

Productivité : 6 préparateurs, 7,5 heures, 45 heures ; 1 800 lignes ; 40 lignes par heure. Erreurs : 27 sur 1 800, 1,5 %. Coût de stockage : 18 millions par mois pour 2 040 palettes, environ 8 824 FCFA par palette et par mois.

Dimensionnement : 2 400 lignes demain ? 2 400 sur 40, 60 heures ; 60 sur 7,5, 8 préparateurs. Si le résultat n''est pas entier, on arrondit toujours au-dessus : 8,57 donne 9.

## 1:20:00 – 1:27:00 · Évaluation finale

- Question 1 : capacité de 8 allées, 2 rangées de 25 alvéoles, 4 niveaux, 3 palettes ? Réponse : 4 800 emplacements.
- Question 2 : 3 840 palettes présentes, taux d''occupation ? Réponse : 80 %.
- Question 3 : 3 000 lignes, 50 lignes par heure, 7 heures effectives : effectif ? Réponse : 9 préparateurs.
- Question 4 : 42 erreurs pour 12 600 lignes ? Réponse : environ 0,33 %.
- Question 5 : quel schéma de flux est le plus courant et pourquoi ? Réponse : le U, quais partagés et articles rapides près de la façade.

## 1:27:00 – 1:30:00 · Synthèse

Retenez : marche en avant, articles à faible COI près des quais, préparation à optimiser en réduisant les déplacements, et quatre indicateurs de base : occupation, productivité, erreurs, coût unitaire. Refaites les exercices de la leçon, puis le dossier entreposage du sujet type. Merci et bon travail.', 'video', 90, false, 60
from public.courses c where c.slug = 'lic-log-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Entreposage et manutention');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Transport routier et gestion de flotte', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 2 en logistique et transport.
- Objectifs : calculer un coût de revient kilométrique, établir un devis, déterminer un seuil de rentabilité, suivre les indicateurs de flotte, construire des tournées par la méthode de Clarke et Wright.
- Matériel : tableau des coûts d''un camion, carte schématique dépôt et clients, calculatrice, fiche d''exercices.
- Prérequis : avoir lu la leçon « Transport routier et gestion de flotte : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour à toutes et à tous. Aujourd''hui, nous prenons la route. Le transport routier assure l''essentiel des échanges de marchandises en Afrique de l''Ouest, et beaucoup d''entre vous travailleront chez un transporteur, un distributeur ou un industriel qui gère sa flotte. Nous allons apprendre à calculer ce que coûte vraiment un camion, à fixer un prix, à savoir à partir de quand il est rentable, et à organiser des tournées plus courtes. Notre fil rouge : Transports Diallo SARL, entreprise fictive de Kaolack. Les prix du carburant et certains coûts sont fictifs pour l''exemple.

## 05:00 – 18:00 · Coûts fixes et coûts variables

Question au public : citez tout ce que coûte un camion. Notez une liste. On trouve généralement : le prix d''achat, l''assurance, le chauffeur, le gasoil, les pneus, l''entretien, les taxes, les péages, les frais de bureau.

Classons. Les coûts fixes ne dépendent pas des kilomètres : l''amortissement, l''assurance, le salaire du conducteur, les frais généraux, les taxes. Les coûts variables augmentent avec les kilomètres : carburant, pneumatiques, entretien.

Transports Diallo : camion acheté 60 millions, amorti sur 5 ans, soit 12 millions par an. Assurance 2,4 millions, conducteur 4,8 millions, frais généraux 2,8 millions, taxes 500 000. Total des fixes : 22,5 millions FCFA. Côté variable : 0,36 litre par kilomètre à 750 FCFA le litre, soit 270 FCFA ; pneus 25 ; entretien 45. Total 340 FCFA par kilomètre.

Visuel : tableau à deux colonnes, fixes et variables, avec les montants.

## 18:00 – 30:00 · Le coût de revient kilométrique

Le camion parcourt 90 000 km par an. Coût fixe par kilomètre : 22,5 millions divisés par 90 000, soit 250 FCFA. CRK : 250 plus 340, soit 590 FCFA par kilomètre.

Faites l''expérience : si le camion ne roule que 60 000 km, à cause de pannes ou d''attentes, le coût fixe par kilomètre monte à 375 FCFA, et le CRK à 715 FCFA. Le même camion coûte 21 % plus cher au kilomètre. Voilà pourquoi l''immobilisation est l''ennemie du transporteur : attentes au port, aux frontières, pannes faute d''entretien préventif.

Le devis. Un client demande un transport de 325 km ; retour à vide, donc 650 km. Coût : 650 fois 590, 383 500 FCFA. Plus 10 000 de frais divers : 393 500. Marge de 15 % : prix d''environ 452 525 FCFA. Erreur fréquente : oublier le retour à vide.

## 30:00 – 40:00 · La méthode trinôme

Les professionnels affinent avec trois termes : un coût par kilomètre, un coût par heure de conducteur, un coût par jour d''utilisation. Pourquoi ? Parce qu''un camion qui attend six heures au port ne fait pas de kilomètres, mais il coûte quand même.

Calcul : CK égale 340 FCFA par km. CC égale 4,8 millions divisés par 2 000 heures, 2 400 FCFA par heure. CJ égale les autres fixes, 17,7 millions, divisés par 250 jours, 70 800 FCFA par jour. Trajet de 650 km, 14 heures, 2 jours : 221 000 plus 33 600 plus 141 600, soit 396 200 FCFA. Plus élevé que le binôme, car on intègre deux jours d''immobilisation.

## 40:00 – 45:00 · Pause quiz

Question 1 : coûts fixes 18 millions, 75 000 km, variable 300 FCFA : CRK ? Réponse : 540 FCFA par km.

Question 2 : devis pour 480 km avec 20 % de marge ? Réponse : 259 200 fois 1,2, soit 311 040 FCFA.

Question 3 : le carburant est-il un coût fixe ou variable ? Réponse : variable.

## 45:00 – 55:00 · Seuil de rentabilité et indicateurs de flotte

Transports Diallo facture 700 FCFA par kilomètre. Marge sur coût variable : 360 FCFA par km. Seuil : 22,5 millions divisés par 360, soit 62 500 km par an. Le camion en fait 90 000 : il est rentable, avec une marge de sécurité de 27 500 km.

Attention à une subtilité : le transporteur facture souvent les kilomètres chargés, pas les kilomètres à vide. Si 30 % des kilomètres sont à vide, seuls 63 000 km sur 90 000 sont facturés. Recette : 63 000 fois 700, 44,1 millions. Coûts : 22,5 millions plus 90 000 fois 340, soit 53,1 millions. Le camion perd alors 9 millions ! Moralité : il faut toujours préciser sur quelle base on facture, et le taux de kilomètres à vide devient décisif.

Indicateurs à suivre : le taux de kilomètres à vide, ici 27 000 sur 90 000, 30 % ; le taux de remplissage ; la consommation aux 100 km ; le coût d''entretien par kilomètre ; le taux de disponibilité ; la sinistralité. Un mot sur la surcharge : charger au-delà de la limite semble rentable à court terme, mais use les véhicules et les routes, augmente les accidents et expose à des sanctions. Dans une copie, ne la présentez jamais comme une solution.

Cas éclair : taux de km à vide ramené de 30 % à 15 % sur 75 000 km, à 650 FCFA par km chargé : 11 250 km rémunérés en plus, 7 312 500 FCFA de recette annuelle supplémentaire.

Comment trouver ce fret retour ? En travaillant avec des commissionnaires et des bourses de fret, en nouant des accords avec des chargeurs des régions de destination, par exemple des producteurs agricoles qui envoient leurs récoltes vers Dakar, ou en coordonnant les flux de plusieurs clients. C''est un travail commercial autant que logistique.

Et la gestion de flotte au quotidien ? Elle repose sur un carnet de bord par véhicule : kilométrage, carburant, entretiens, pannes, incidents. Sans ces données, impossible de calculer un CRK fiable ou de décider quand remplacer un camion vieillissant dont l''entretien coûte de plus en plus cher.

## 55:00 – 1:10:00 · Les tournées : Clarke et Wright

Visuel : un dépôt au centre, quatre clients A, B, C, D autour, avec les distances.

Situation : distributeur fictif de Thiès, camion de 16 tonnes. Distances au dépôt : A 20, B 25, C 30, D 18. Entre clients : A-B 10, A-C 28, A-D 22, B-C 15, B-D 30, C-D 26. Demandes : A 8 t, B 6, C 9, D 7.

Point de départ : chaque client en aller-retour, 2 fois 93, 186 km. Économie de la liaison i-j : distance dépôt-i plus dépôt-j moins i-j. B-C : 25 plus 30 moins 15, 40. A-B : 35. C-D : 22. A-C : 22. A-D : 16. B-D : 13.

On traite dans l''ordre. B-C : 15 tonnes, accepté. A-B : 23 tonnes, refusé. C-D : 22 tonnes, refusé. A-C : refusé. A-D : 15 tonnes, accepté. Résultat : 0-B-C-0, 70 km, et 0-A-D-0, 60 km. Total 130 km, économie 56 km, soit 40 plus 16.

À vous : dépôt 0, clients X, Y, Z ; 0-X 12, 0-Y 15, 0-Z 20, X-Y 8, X-Z 18, Y-Z 9, pas de contrainte de capacité. Correction : économies X-Y 19, X-Z 14, Y-Z 26. On relie Y-Z, puis X-Y. Tournée 0-X-Y-Z-0 de 49 km au lieu de 94.

## 1:10:00 – 1:20:00 · Limites et outils

La méthode de Clarke et Wright est une heuristique : elle donne une bonne solution rapidement, pas forcément la meilleure. Dans la réalité, on ajoute des contraintes : horaires de livraison des clients, embouteillages aux heures de pointe à Dakar, routes interdites aux poids lourds, temps de déchargement. Les logiciels de planification et la géolocalisation des véhicules aident à intégrer ces contraintes et à suivre les tournées en temps réel. À l''examen, citer ces limites après le calcul est un plus.

## 1:20:00 – 1:27:00 · Évaluation finale

- Question 1 : formule du CRK ? Réponse : coûts fixes annuels divisés par km annuels, plus coût variable par km.
- Question 2 : prix d''un trajet de 650 km à 590 FCFA, frais 10 000, marge 15 % ? Réponse : environ 452 525 FCFA.
- Question 3 : seuil de rentabilité avec 18 millions de fixes, prix 650, variable 300 ? Réponse : environ 51 429 km.
- Question 4 : économie de Clarke et Wright si d(0,i) 14, d(0,j) 18, d(i,j) 9 ? Réponse : 23 km.
- Question 5 : pourquoi l''immobilisation coûte-t-elle cher ? Réponse : les coûts fixes courent sans kilomètres facturés, le coût par km augmente.

## 1:27:00 – 1:30:00 · Synthèse

Retenez : séparer fixes et variables, calculer le CRK, ne jamais oublier le retour à vide, vérifier le seuil, et construire les tournées par les économies décroissantes sous contrainte de capacité. Refaites le dossier transport du sujet type. Merci et à bientôt.', 'video', 90, false, 70
from public.courses c where c.slug = 'lic-log-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Transport routier et gestion de flotte');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Commerce international et douane', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 2 en logistique et transport.
- Objectifs : maîtriser les onze Incoterms 2020, connaître les documents du commerce international, distinguer les acteurs du transit et du dédouanement, décrire les étapes et régimes douaniers, calculer une valeur en douane et des droits avec des taux fictifs.
- Matériel : tableau des Incoterms (frise vendeur-acheteur), modèles de documents, calculatrice, fiche d''exercices.
- Prérequis : avoir lu la leçon « Commerce international et douane : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour à toutes et à tous. Aujourd''hui, nous franchissons les frontières. Une grande partie de ce que nous consommons au Sénégal est importée, et beaucoup d''entreprises exportent : produits halieutiques, arachide, horticulture, phosphates et dérivés. Le logisticien doit donc parler la langue du commerce international : Incoterms, documents, douane. Avertissement important : tous les taux de droits et taxes utilisés aujourd''hui sont fictifs. Seule la parité entre l''euro et le franc CFA, 655,957, est un fait certain.

## 05:00 – 15:00 · À quoi servent les Incoterms ?

Imaginez un acheteur dakarois et un vendeur européen. Qui paie le transport ? Qui assure ? À quel moment, si le conteneur tombe à la mer, la perte est-elle pour l''acheteur ? Les Incoterms répondent à ces questions en trois lettres. Publiés par la Chambre de commerce internationale, ils fixent le point de livraison, donc le transfert des risques, la répartition des frais et les formalités douanières.

Ce qu''ils ne font pas : transférer la propriété, fixer le prix, organiser le paiement. Ces points relèvent du contrat de vente. C''est une question de cours très fréquente.

On écrit toujours l''Incoterm, le lieu précis et la version : « FCA terminal à conteneurs de Rotterdam, Incoterms 2020 ».

## 15:00 – 32:00 · Les onze règles

Visuel : une frise de gauche à droite, des locaux du vendeur aux locaux de l''acheteur, sur laquelle on place chaque règle.

Premier groupe, tous modes de transport. EXW : le vendeur met à disposition chez lui, l''acheteur fait tout, même le dédouanement export. FCA : livraison au transporteur choisi par l''acheteur, export dédouané par le vendeur. CPT : le vendeur paie le transport jusqu''à destination, mais le risque passe à la remise au premier transporteur. CIP : comme CPT avec une assurance payée par le vendeur, avec une couverture étendue dans la version 2020. DAP : livré à destination, non déchargé. DPU : livré et déchargé, c''est le nouveau nom introduit en 2020. DDP : le vendeur supporte tout, droits d''importation compris.

Second groupe, maritime et fluvial. FAS : le long du navire. FOB : à bord, au port d''embarquement. CFR : le vendeur paie le fret jusqu''au port de destination. CIF : CFR plus une assurance minimale.

Le piège : en CPT, CIP, CFR et CIF, le vendeur paie jusqu''à destination, mais le risque passe au départ. Deux points différents : un pour les frais, un pour le risque. Dessinez-les avec deux couleurs.

Deuxième piège : pour un conteneur, la marchandise est remise au terminal bien avant le chargement à bord. Avec FOB ou CIF, le vendeur garde le risque pendant une période où il ne contrôle plus rien. On conseille alors FCA, CPT ou CIP.

Comment choisir un Incoterm en pratique ? Posez-vous trois questions. Qui obtient le meilleur prix de transport ? Un importateur dakarois qui importe beaucoup peut négocier son fret et préférer acheter FCA. Qui maîtrise les formalités dans chaque pays ? Un vendeur étranger aura du mal à dédouaner au Sénégal, d''où la prudence avec DDP. Qui veut contrôler l''assurance ? Un acheteur qui souhaite une couverture large achète plutôt FCA et s''assure lui-même, ou exige CIP. Le bon Incoterm est celui qui confie chaque tâche à la partie la mieux placée pour la réaliser.

## 32:00 – 40:00 · Exercices sur les Incoterms

Question 1 : un exportateur de Dakar ne veut s''occuper de rien ; quel Incoterm ? EXW, mais l''acheteur étranger devra dédouaner à l''export au Sénégal, ce qui est souvent compliqué ; FCA est un meilleur compromis.

Question 2 : en CIF, qui supporte le risque pendant la traversée ? L''acheteur, depuis la mise à bord au port de départ ; le vendeur a payé le fret et l''assurance minimale.

Question 3 : quel Incoterm met les droits d''importation à la charge du vendeur ? DDP.

## 40:00 – 45:00 · Pause quiz

Question 1 : combien d''Incoterms en 2020 ? Réponse : onze.

Question 2 : quelle règle a remplacé DAT ? Réponse : DPU.

Question 3 : les Incoterms règlent-ils le transfert de propriété ? Réponse : non, c''est le contrat de vente.

## 45:00 – 55:00 · Les documents et les acteurs

Les documents : la facture commerciale, base de la valeur ; la liste de colisage ; le document de transport, connaissement maritime, lettre de transport aérien ou lettre de voiture routière ; le certificat d''origine, qui conditionne d''éventuelles préférences tarifaires ; les certificats sanitaires ou phytosanitaires ; l''attestation d''assurance ; la déclaration en douane, établie sur des systèmes informatisés.

Le connaissement mérite une attention particulière : il prouve le contrat de transport, sert de reçu de la marchandise et représente la marchandise elle-même. Celui qui le détient régulièrement peut en prendre livraison.

Lien avec le paiement : dans le crédit documentaire, la banque de l''acheteur s''engage à payer le vendeur contre la remise de documents conformes, dont souvent le connaissement. Une simple erreur de date, de quantité ou de désignation sur un document peut bloquer le paiement. C''est pourquoi le logisticien vérifie la cohérence entre facture, liste de colisage et document de transport avant toute expédition. Dans la remise documentaire, la banque remet les documents à l''acheteur contre paiement ou acceptation d''un effet, sans engagement propre de sa part.

Les acteurs : le transitaire organise le transport ; le commissionnaire en douane agréé établit les déclarations pour son client ; le consignataire représente l''armateur au port ; la douane contrôle et liquide les droits.

## 55:00 – 1:05:00 · Le dédouanement et les régimes

Étapes à l''importation : arrivée et dépôt du manifeste ; déclaration en douane avec classement tarifaire, origine, valeur et régime ; contrôle documentaire ou physique selon le circuit de sélection ; liquidation et paiement ; bon à enlever et sortie.

Les régimes : mise à la consommation, exportation, transit, entrepôt sous douane, admission temporaire. Le transit est essentiel en Afrique de l''Ouest : un conteneur destiné à Bamako traverse le Sénégal sous douane, puis il est dédouané au Mali.

L''UEMOA est une union douanière avec un tarif extérieur commun ; la CEDEAO a également adopté un tarif extérieur commun. Les taux dépendent des catégories de produits et évoluent. Dans vos copies, utilisez exclusivement les taux de l''énoncé.

Trois éléments déterminent les droits : l''espèce tarifaire, c''est-à-dire le classement du produit dans la nomenclature ; l''origine, qui peut ouvrir droit à des préférences, par exemple pour les produits originaires de la communauté selon les règles applicables ; et la valeur. Une erreur sur l''un des trois peut entraîner un redressement et des pénalités. D''où l''intérêt de travailler avec un commissionnaire agréé compétent et de conserver soigneusement les documents.

## 1:05:00 – 1:18:00 · Calcul de la valeur en douane et des droits

Sénégal Équipements, entreprise fictive, achète des machines 40 000 euros FOB Le Havre. Conversion : 40 000 fois 655,957, soit 26 238 280 FCFA. On ajoute le fret, 1 500 000, et l''assurance, 120 000 : valeur CAF de 27 858 280 FCFA.

Taux fictifs : droit de douane 10 %, soit 2 785 828 ; autres prélèvements 2 %, soit 557 166 après arrondi. Base de TVA : CAF plus droits plus prélèvements, 31 201 274. TVA fictive de 18 % : 5 616 229. Total des droits et taxes : 8 959 223 FCFA.

Coût de revient rendu magasin, hors TVA récupérable selon les règles en vigueur : CAF, plus droits, plus prélèvements, plus 600 000 de frais de transit et de transport, soit 31 801 274 FCFA.

À vous : 18 000 euros CFR Dakar, assurance 50 000 FCFA, taux fictifs 5 %, 1 % et 18 %. Correction : 11 807 226 ; CAF 11 857 226 ; droit 592 861 ; autres 118 572 ; base 12 568 659 ; TVA 2 262 359 ; total 2 973 792 FCFA.

## 1:18:00 – 1:26:00 · Évaluation finale

- Question 1 : citez les quatre Incoterms maritimes. Réponse : FAS, FOB, CFR, CIF.
- Question 2 : en FCA, où se transfère le risque ? Réponse : à la remise au transporteur désigné par l''acheteur, au lieu convenu.
- Question 3 : quelle est la base de la valeur en douane à l''importation dans notre exemple ? Réponse : la valeur CAF.
- Question 4 : convertissez 12 500 euros. Réponse : 8 199 462,5, soit environ 8 199 463 FCFA.
- Question 5 : quel régime pour un conteneur destiné au Mali débarqué à Dakar ? Réponse : le transit.

## 1:26:00 – 1:30:00 · Synthèse

Retenez : un Incoterm, c''est un point de risque, une répartition de frais et des formalités ; deux groupes, sept règles tous modes et quatre maritimes ; FCA, CPT ou CIP pour les conteneurs ; la valeur en douane se calcule sur base CAF ; les taux ne s''inventent pas. Refaites les exercices de la leçon et le dossier douane du sujet type. Merci et bonne révision.', 'video', 90, false, 80
from public.courses c where c.slug = 'lic-log-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Commerce international et douane');

-- Cours : Logistique et transport Licence 3 : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'lic-log-l3', (select id from public.levels where name = 'Licence 3'), null, 'Logistique et transport', 'Logistique et transport Licence 3 : réussir ses examens', 'Préparation aux partiels et examens semestriels de la Licence 3 en logistique et transport (système LMD, contexte Sénégal et UEMOA). Le cours couvre le supply chain management (prévision de la demande, planification, effet coup de fouet), le transport maritime et portuaire (conteneurisation, fret, opérations portuaires) et la logistique durable, les achats et le pilotage par indicateurs (tableaux de bord, coûts logistiques). Fiches, exercices corrigés, sujet type et trois cours vidéo de 1h30. Prérequis : Licence 1 et 2 (stocks, transport, entreposage, Incoterms).', true, 393
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Licence 3 en logistique et transport', '## Objectifs de la leçon

- Comprendre les enjeux de la Licence 3, dernière année du premier cycle LMD.
- Connaître les trois matières de spécialité traitées dans ce cours.
- Adapter sa méthode aux sujets de synthèse et aux exercices de prévision.
- Suivre un plan de révision sur six semaines.

## La Licence 3 dans le système LMD

La Licence 3 correspond aux semestres 5 et 6. Elle conclut le premier cycle : sa validation donne le diplôme de Licence et conditionne l''accès au Master ou l''entrée dans la vie professionnelle. Comme les années précédentes, elle est organisée en unités d''enseignement (UE) et en crédits ; les règles de validation, de compensation et de rattrapage sont fixées par chaque établissement. Beaucoup de parcours prévoient aussi un stage et un rapport ou un mémoire de fin de cycle : renseignez-vous tôt sur le calendrier et les exigences auprès de votre scolarité.

En troisième année, on attend de vous une vision d''ensemble. Il ne suffit plus de calculer une quantité économique ou un coût de revient : il faut piloter une chaîne logistique entière, prévoir la demande, coordonner les partenaires, choisir des fournisseurs, mesurer la performance et intégrer l''environnement.

## Les matières clés de la Licence 3

À côté des matières transversales (contrôle de gestion, recherche opérationnelle, droit des transports internationaux, anglais, méthodologie du mémoire), trois matières de spécialité structurent ce cours :

- Supply chain management : prévision de la demande (moyenne mobile, lissage exponentiel, régression linéaire), mesure de l''erreur, planification et calcul des besoins, effet coup de fouet et collaboration.
- Transport maritime et portuaire : conteneurisation, types de navires et de services, fret et surcharges, connaissement, opérations portuaires et indicateurs.
- Logistique durable, achats et pilotage par indicateurs : empreinte carbone du transport, logistique inverse, processus achats, coût total de possession, évaluation des fournisseurs, tableaux de bord.

Ces matières ne reprennent pas celles des années précédentes, mais elles s''appuient sur elles : la gestion des stocks de Licence 1 et les Incoterms de Licence 2 sont supposés connus.

## Méthode de révision

- Pour les prévisions : entraînez-vous à remplir à la main des tableaux de lissage et de régression ; présentez les colonnes (période, demande, prévision, erreur) et vérifiez chaque ligne.
- Pour le maritime : apprenez le vocabulaire précis (EVP, FCL, LCL, ligne régulière, tramping, connaissement, surestaries, détention, BAF, THC) et sachez l''illustrer.
- Pour le pilotage : pour chaque indicateur, retenez sa formule, son unité, son sens d''amélioration (plus haut ou plus bas est mieux) et une action corrective possible.
- Pour les questions de synthèse : construisez des plans en deux parties avec des exemples ouest-africains, en restant prudent sur les chiffres que vous ne pouvez pas vérifier.

## Les types d''épreuves

- Questions de cours et QCM : définitions, comparaison de méthodes.
- Exercices chiffrés : prévision, calcul des besoins, fret maritime, remplissage d''un conteneur, coût total de possession, notation des fournisseurs, indicateurs.
- Cas de synthèse : une entreprise fictive importe par voie maritime, prévoit ses ventes, choisit ses fournisseurs et pilote ses coûts ; on vous demande un diagnostic et un plan d''action.
- Dissertation : par exemple « La logistique durable est-elle compatible avec la réduction des coûts ? ».
- Rapport de stage ou mémoire : diagnostic d''une chaîne logistique réelle avec recommandations.

## Plan de révision sur six semaines

- Semaine 1 : prévision de la demande. Méthodes, erreurs (MAD, MAPE), signal de suivi.
- Semaine 2 : planification et calcul des besoins, effet coup de fouet et collaboration.
- Semaine 3 : transport maritime. Conteneurs, navires, fret, surcharges, connaissement.
- Semaine 4 : opérations portuaires et indicateurs ; logistique durable.
- Semaine 5 : achats et pilotage ; puis un sujet type complet en temps limité.
- Semaine 6 : correction, révision des erreurs, fiches de synthèse, préparation de l''oral éventuel du stage.

## Points clés

- La Licence 3 exige une vision globale de la chaîne.
- Trois matières : supply chain management, maritime et portuaire, durable, achats et pilotage.
- Pour chaque indicateur : formule, unité, sens, action.
- Prudence sur les chiffres non vérifiables.

## Exercices pratiques

Exercice 1. Citez trois méthodes de prévision de la demande et une limite de chacune.

Exercice 2. Pour un indicateur « taux de service », précisez la formule, l''unité et le sens d''amélioration.

Exercice 3. Proposez un plan en deux parties pour le sujet : « La logistique durable est-elle compatible avec la réduction des coûts ? ».

Exercice 4. Un sujet de 4 heures comporte trois dossiers notés 7, 7 et 6 points. Répartissez le temps avec 20 minutes de lecture et de relecture au total.

Exercice 5. Expliquez en quoi les Incoterms vus en Licence 2 sont utiles pour la matière « transport maritime et portuaire ».

## Corrigé

Exercice 1. Moyenne mobile : réagit lentement et ne suit pas une tendance. Lissage exponentiel simple : prend du retard lorsque la demande croît régulièrement. Régression linéaire : suppose une tendance stable et ignore les ruptures ou la saisonnalité si on ne la modélise pas.

Exercice 2. Taux de service = commandes livrées complètes et à l''heure / commandes totales × 100 ; unité : pourcentage ; plus il est élevé, mieux c''est.

Exercice 3. I. Des convergences réelles : moins de kilomètres à vide, meilleur remplissage, moins de carburant, emballages réutilisables, donc moins de coûts et moins d''émissions. II. Des arbitrages : certains investissements verts coûtent cher au départ, le transport lent et massifié allonge les délais ; d''où l''intérêt de raisonner en coût total sur la durée de vie.

Exercice 4. Temps de composition : 240 − 20 = 220 minutes, soit 11 minutes par point. Répartition : 77, 77 et 66 minutes.

Exercice 5. L''Incoterm détermine qui réserve et paie le fret maritime, qui supporte le risque pendant la traversée et qui paie les frais portuaires au départ et à l''arrivée. Il conditionne donc l''organisation du transport maritime.', 'texte', 45, true, 10
from public.courses c where c.slug = 'lic-log-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Licence 3 en logistique et transport');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Supply chain management : l''essentiel pour l''examen', '## Objectifs de la leçon

- Prévoir la demande par moyenne mobile, lissage exponentiel et régression linéaire.
- Mesurer l''erreur de prévision (MAD, MAPE, signal de suivi).
- Comprendre la planification et réaliser un calcul des besoins simple.
- Expliquer et mesurer l''effet coup de fouet, et connaître les remèdes.

## Fiche 1 : le supply chain management

Le supply chain management (SCM) coordonne fournisseurs, producteurs, distributeurs et clients pour satisfaire la demande au moindre coût global. Le modèle SCOR, souvent cité, organise les processus en grandes familles : planifier, approvisionner, produire, livrer, gérer les retours, avec des processus de soutien. Tout commence par la prévision de la demande.

## Fiche 2 : méthodes de prévision

Sénégal Boissons Fraîches (fictive) a vendu, en milliers de packs, de janvier à août : 120 ; 132 ; 128 ; 140 ; 150 ; 146 ; 158 ; 166.

Moyenne mobile sur 3 mois : la prévision de septembre est la moyenne des trois derniers mois : (146 + 158 + 166) / 3 ≈ 156,7.

Lissage exponentiel simple : prévision suivante = prévision précédente + α × (demande réelle − prévision précédente), avec 0 < α < 1. Avec α = 0,3 et une prévision initiale de janvier égale à 120 : février 120 ; mars 123,6 ; avril 124,92 ; mai 129,44 ; juin 135,61 ; juillet 138,73 ; août 144,51 ; septembre 150,96. On remarque que la prévision reste toujours en dessous des ventes : le lissage simple prend du retard sur une tendance.

Régression linéaire (méthode des moindres carrés) : on cherche la droite y = a + b × t, avec b = Σ(t − t̄)(y − ȳ) / Σ(t − t̄)² et a = ȳ − b × t̄. Ici t = 1 à 8, t̄ = 4,5, ȳ = 142,5. Σ(t − t̄)(y − ȳ) = 258 ; Σ(t − t̄)² = 42. b = 258 / 42 ≈ 6,143 ; a = 142,5 − 6,143 × 4,5 ≈ 114,857. Prévision de septembre (t = 9) : 114,857 + 6,143 × 9 ≈ 170,1 milliers de packs ; octobre (t = 10) ≈ 176,3.

## Fiche 3 : mesurer l''erreur

- Erreur = demande réelle − prévision.
- MAD (écart absolu moyen) = moyenne des erreurs en valeur absolue.
- MAPE = moyenne des erreurs absolues rapportées à la demande, en pourcentage.
- Signal de suivi = somme des erreurs / MAD. S''il sort d''un intervalle de l''ordre de −4 à +4, la prévision est biaisée.

Pour le lissage, de février à août, les erreurs sont : 12 ; 4,4 ; 15,08 ; 20,56 ; 10,39 ; 19,27 ; 21,49. MAD ≈ 14,74 ; somme ≈ 103,19 ; signal ≈ 7 : biais confirmé. Pour la régression, les écarts sur les huit mois ont une moyenne absolue de 3 : c''est la meilleure méthode pour cette série en croissance. Pour la moyenne mobile sur 3 mois, d''avril à août : MAD = 12,8 et MAPE ≈ 8,4 %.

## Fiche 4 : planification et calcul des besoins

La planification descend du long terme au court terme : plan stratégique, plan industriel et commercial (familles de produits, horizon de plusieurs mois), programme directeur de production (produits finis, par semaine), calcul des besoins nets en composants (méthode MRP).

Principe du calcul des besoins : besoin net = besoin brut − stock disponible (s''il est positif) ; on décale ensuite le lancement de la durée du délai d''obtention.

Exemple. Besoins bruts en packs, semaines 1 à 4 : 500 ; 600 ; 550 ; 700. Stock initial : 300 packs. Besoins nets : 200 ; 600 ; 550 ; 700. Chaque pack contient 6 bouteilles : besoins bruts en bouteilles 1 200 ; 3 600 ; 3 300 ; 4 200. Stock de bouteilles : 2 000. Besoins nets : 0 ; 2 800 ; 3 300 ; 4 200. Délai d''obtention d''une semaine : il faut lancer les commandes de bouteilles en semaines 1, 2 et 3.

## Fiche 5 : l''effet coup de fouet

L''effet coup de fouet (bullwhip effect), décrit notamment par Forrester puis par Lee, Padmanabhan et Whang, est l''amplification des variations de commandes à mesure que l''on remonte la chaîne, du détaillant vers l''usine.

Exemple sur six semaines : demande des consommateurs 100 ; 104 ; 98 ; 102 ; 96 ; 100 (variance 6,67). Commandes du grossiste 100 ; 112 ; 90 ; 110 ; 85 ; 103 (variance 96,33). Commandes à l''usine 100 ; 130 ; 70 ; 125 ; 60 ; 115 (variance 708,33). Ratios d''amplification : 96,33 / 6,67 ≈ 14,4 au grossiste et 708,33 / 6,67 ≈ 106 à l''usine, alors que la moyenne reste 100.

Causes : prévisions faites par chaque maillon sur les commandes reçues et non sur la demande finale ; commandes groupées par lots ; promotions et variations de prix ; rationnement en cas de pénurie, qui pousse à surcommander ; délais longs.

Remèdes : partage de l''information sur les ventes réelles, gestion partagée des approvisionnements (le fournisseur pilote le stock du client), démarche collaborative de planification et de prévision (CPFR), réduction des délais, prix stables, livraisons plus fréquentes en petites quantités.

## Points clés

- Choisir la méthode selon la série : tendance, saisonnalité, stabilité.
- Toujours mesurer l''erreur et le biais.
- Besoin net = besoin brut − stock disponible, puis décalage du délai.
- Le coup de fouet se combat par l''information partagée.

## Exercices pratiques

Exercice 1. Définissez l''effet coup de fouet et citez trois causes.

Exercice 2. Ventes mensuelles : 80 ; 86 ; 92 ; 95 ; 101. Calculez la prévision du mois 6 par moyenne mobile sur 3 mois.

Exercice 3. La prévision du mois dernier était de 200 ; la demande réelle a été de 230. Avec α = 0,2, calculez la nouvelle prévision.

Exercice 4. Ventes des périodes 1 à 5 : 50 ; 54 ; 59 ; 62 ; 65. Calculez la droite de régression et la prévision de la période 6.

Exercice 5. Erreurs de prévision sur cinq mois : 5 ; −3 ; 8 ; 6 ; 4. Calculez la MAD et le signal de suivi. Conclusion ?

Exercice 6. Besoins bruts en produits finis : 400 ; 450 ; 500 ; stock 250. Chaque produit utilise 2 composants ; stock de composants 300. Calculez les besoins nets en produits finis et en composants.

Exercice 7 (cas pratique). Chez un distributeur fictif de riz, la variance de la demande finale est de 25 et celle des commandes passées à l''importateur de 400. Calculez le ratio d''amplification et proposez trois actions.

## Corrigé

Exercice 1. Amplification des variations de commandes en remontant la chaîne. Causes : prévisions sur les commandes reçues, commandes par lots, promotions, rationnement, délais longs.

Exercice 2. (92 + 95 + 101) / 3 = 96.

Exercice 3. 200 + 0,2 × (230 − 200) = 206.

Exercice 4. t̄ = 3 ; ȳ = 58. Σ(t − t̄)(y − ȳ) = 38 ; Σ(t − t̄)² = 10. b = 3,8 ; a = 58 − 3,8 × 3 = 46,6. Prévision période 6 : 46,6 + 3,8 × 6 = 69,4.

Exercice 5. MAD = (5 + 3 + 8 + 6 + 4) / 5 = 5,2. Somme des erreurs = 20 ; signal = 20 / 5,2 ≈ 3,85. Le signal reste dans l''intervalle de −4 à +4, mais proche de la limite : la prévision tend à sous-estimer la demande, il faut la surveiller.

Exercice 6. Produits finis : 150 ; 450 ; 500. Composants bruts : 300 ; 900 ; 1 000. Composants nets : 0 ; 900 ; 1 000.

Exercice 7. Ratio : 400 / 25 = 16. Actions : partager les données de ventes avec l''importateur, lisser les commandes (livraisons plus fréquentes), éviter les promotions brutales, réduire le délai de réapprovisionnement.', 'texte', 60, false, 20
from public.courses c where c.slug = 'lic-log-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Supply chain management : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Transport maritime et portuaire : l''essentiel pour l''examen', '## Objectifs de la leçon

- Expliquer la conteneurisation et ses conséquences.
- Distinguer les types de navires, de services et de contrats.
- Calculer un fret maritime, le remplissage d''un conteneur et des frais de détention.
- Décrire les opérations portuaires et calculer des indicateurs simples.

## Fiche 1 : la conteneurisation

Le conteneur est une boîte standardisée, manutentionnée sans toucher à la marchandise. Unité de mesure : l''EVP (équivalent vingt pieds, en anglais TEU) ; un conteneur de 40 pieds vaut 2 EVP. Dimensions intérieures approximatives : un 20 pieds mesure environ 5,90 × 2,35 × 2,39 m, soit environ 33 m³ ; un 40 pieds environ 12,03 × 2,35 × 2,39 m, soit environ 67 m³. Les valeurs exactes varient selon les fabricants : on utilise celles de l''énoncé.

Types courants : conteneur sec standard, conteneur frigorifique (reefer), conteneur à toit ouvert, plate-forme (flat rack) pour les colis hors gabarit, conteneur-citerne.

Deux modes d''expédition :

- FCL (conteneur complet) : le chargeur remplit un conteneur entier.
- LCL (groupage) : plusieurs chargeurs partagent un conteneur, regroupé par un groupeur ; tarif au volume ou au poids.

Conséquences de la conteneurisation : baisse des coûts de manutention, réduction des vols et de la casse, intermodalité, gigantisme des navires, concentration des lignes sur quelques grands ports d''éclatement, et nécessité pour les ports africains d''investir dans des terminaux spécialisés.

## Fiche 2 : navires, services et contrats

- Ligne régulière : escales fixes selon un calendrier publié ; marchandises diverses et conteneurs ; le contrat est matérialisé par le connaissement.
- Tramping (transport à la demande) : navire affrété pour un chargement complet, souvent des vracs (céréales, clinker, hydrocarbures, minerais) ; contrat d''affrètement appelé charte-partie, au voyage, à temps ou coque nue.
- Types de navires : porte-conteneurs, vraquiers, pétroliers et chimiquiers, rouliers (véhicules), navires polyvalents.

Le connaissement a trois fonctions : preuve du contrat de transport, reçu de la marchandise embarquée, titre représentatif de la marchandise (celui qui le détient régulièrement peut en prendre livraison).

## Fiche 3 : le fret maritime

En groupage, le fret se calcule par unité payante : on compare le poids en tonnes et le volume en mètres cubes et l''on retient le plus élevé (règle usuelle « 1 tonne ou 1 m³ »). On ajoute des surcharges : surcharge combustible (BAF), surcharge monétaire, frais de manutention au terminal (THC), frais de documentation.

Exemple, tarifs fictifs. Un envoi de 4,5 t et 7,2 m³. Tarif : 60 000 FCFA par unité payante ; BAF : 10 % du fret de base ; frais fixes : 75 000 FCFA.

- Unité payante : 7,2 (le volume l''emporte).
- Fret de base : 7,2 × 60 000 = 432 000 FCFA ; BAF : 43 200 ; total : 432 000 + 43 200 + 75 000 = 550 200 FCFA.

Comparaison FCL et LCL : si un conteneur de 20 pieds complet coûte 1 300 000 FCFA tout compris (fictif) et le groupage 66 000 FCFA par m³ surcharge incluse, le conteneur complet devient intéressant au-delà de 1 300 000 / 66 000 ≈ 19,7 m³.

Remplissage d''un conteneur. Cartons de 60 × 40 × 40 cm, dans un 20 pieds de 5,90 × 2,35 × 2,39 m. Longueur 60 cm dans la longueur : 9 ; 40 cm dans la largeur : 5 ; 40 cm en hauteur : 5. Total 225 cartons. L''autre orientation (40 dans la longueur, 60 dans la largeur) donne 14 × 3 × 5 = 210 cartons. On retient 225, soit 21,6 m³ utiles, environ 65 % du volume intérieur. Il faut aussi vérifier la charge utile maximale.

## Fiche 4 : surestaries et détention

Le chargeur dispose d''une franchise de jours. Au-delà : les surestaries s''appliquent au conteneur qui reste au terminal ; la détention s''applique au conteneur conservé hors du terminal (chez l''importateur, par exemple) au-delà de la franchise. Pour un navire affrété, les surestaries rémunèrent l''armateur quand le chargement ou le déchargement dépasse le temps prévu.

Exemple fictif : franchise de 7 jours, conteneur rendu après 12 jours, 15 000 FCFA par jour : 5 × 15 000 = 75 000 FCFA. Pour un importateur de l''hinterland, le temps de transport sur le corridor rend ce poste important.

## Fiche 5 : les opérations portuaires

Le port accueille le navire (pilotage, remorquage, amarrage), assure la manutention (portiques de quai, cavaliers, chariots), le stockage sur terre-plein, les contrôles et la sortie des marchandises. Plusieurs acteurs interviennent : autorité portuaire, opérateurs de terminaux (souvent concessionnaires), manutentionnaires, consignataires, douane, transitaires.

Indicateurs :

- Cadence de manutention : mouvements par heure et par portique, ou par navire.
- Temps d''escale à quai et temps d''attente en rade.
- Taux d''occupation des postes à quai.
- Temps de séjour des conteneurs au terminal (dwell time).

Exemple. Un porte-conteneurs doit décharger et charger 1 200 mouvements : 500 conteneurs de 20 pieds et 700 de 40 pieds, soit 500 + 1 400 = 1 900 EVP. Trois portiques à 25 mouvements par heure : 1 200 / 75 = 16 heures de manutention.

## Points clés

- EVP : un 40 pieds = 2 EVP.
- Unité payante : le plus élevé entre tonnes et m³ (usage le plus courant).
- Connaissement : contrat, reçu, titre.
- Indicateurs portuaires : cadence, temps d''escale, attente, séjour.

## Exercices pratiques

Exercice 1. Expliquez la différence entre ligne régulière et tramping.

Exercice 2. Un navire transporte 300 conteneurs de 20 pieds et 450 de 40 pieds. Combien d''EVP ?

Exercice 3. Groupage : 3,2 t et 5 m³ ; tarif 55 000 FCFA par unité payante ; BAF 12 % (fictifs). Calculez le fret.

Exercice 4. Combien de cartons de 50 × 40 × 30 cm peut-on charger dans un 20 pieds de 5,90 × 2,35 × 2,39 m, en plaçant la longueur dans la longueur, la largeur dans la largeur et la hauteur en hauteur ?

Exercice 5. 900 mouvements sont traités par deux portiques à 28 mouvements par heure. Durée de manutention ?

Exercice 6. Franchise de 10 jours, conteneur rendu au bout de 16 jours, 12 000 FCFA par jour (fictif). Coût de détention ?

Exercice 7 (cas pratique). Un importateur a 22 m³ de marchandises. Conteneur complet : 1 250 000 FCFA tout compris. Groupage : 55 000 FCFA par m³, BAF 12 %, frais fixes 60 000 FCFA (tarifs fictifs). Que choisir ?

## Corrigé

Exercice 1. La ligne régulière suit un calendrier fixe d''escales et transporte des marchandises de nombreux chargeurs sous connaissement. Le tramping affrète un navire à la demande pour un chargement complet, sous charte-partie.

Exercice 2. 300 + 450 × 2 = 1 200 EVP.

Exercice 3. Unité payante : 5. Fret : 5 × 55 000 = 275 000 ; BAF : 33 000 ; total 308 000 FCFA.

Exercice 4. 590 / 50 = 11 ; 235 / 40 = 5 ; 239 / 30 = 7 (arrondis à l''entier inférieur). Total : 11 × 5 × 7 = 385 cartons.

Exercice 5. 900 / (2 × 28) = 900 / 56 ≈ 16,1 heures.

Exercice 6. 6 jours × 12 000 = 72 000 FCFA.

Exercice 7. Groupage : 22 × 55 000 × 1,12 + 60 000 = 1 415 200 FCFA. Conteneur complet : 1 250 000 FCFA. Le conteneur complet est moins cher et réduit les manipulations ; on le choisit.', 'texte', 60, false, 30
from public.courses c where c.slug = 'lic-log-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Transport maritime et portuaire : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Logistique durable, achats et pilotage par indicateurs : l''essentiel pour l''examen', '## Objectifs de la leçon

- Expliquer les enjeux de la logistique durable et estimer les émissions du transport.
- Décrire le processus achats, la matrice de Kraljic et le coût total de possession.
- Évaluer des fournisseurs par une grille pondérée.
- Construire et interpréter un tableau de bord logistique.

## Fiche 1 : la logistique durable

La logistique durable cherche à concilier performance économique, responsabilité sociale et respect de l''environnement. Leviers principaux :

- Massifier les flux et mieux remplir les véhicules ; réduire les kilomètres à vide.
- Choisir des modes moins émetteurs quand c''est possible (rail, maritime, fluvial).
- Former à l''écoconduite et entretenir les véhicules.
- Réduire et réutiliser les emballages ; organiser la logistique inverse (consignes, palettes, recyclage).
- Améliorer les conditions de travail des chauffeurs et manutentionnaires, la sécurité routière.

Estimation des émissions : émissions = tonnes × kilomètres × facteur d''émission. Les facteurs dépendent du véhicule, du chargement et de la source ; ceux qui suivent sont fictifs pour l''exemple : route 0,10 kg de CO2 par t.km ; rail 0,03 ; maritime 0,015. En entreprise, on utilise les bases de données de référence reconnues.

Exemple. 20 t sur 1 200 km : route 20 × 1 200 × 0,10 = 2 400 kg ; rail 720 kg ; maritime 360 kg. Sur 50 envois par an, passer de la route au rail éviterait 50 × (2 400 − 720) = 84 000 kg, soit 84 tonnes de CO2.

## Fiche 2 : les achats

Processus achats : expression du besoin, cahier des charges, recherche et présélection des fournisseurs, appel d''offres, négociation, contractualisation, commande, réception, évaluation. Dans le secteur public, des règles de commande publique s''appliquent : ne citez pas de seuils de mémoire.

Matrice de Kraljic, selon deux axes, impact financier et risque d''approvisionnement :

- Achats stratégiques (impact fort, risque fort) : partenariat de long terme.
- Achats leviers (impact fort, risque faible) : mise en concurrence, négociation.
- Achats critiques (impact faible, risque fort) : sécuriser, stock de sécurité, fournisseurs alternatifs.
- Achats simples (impact faible, risque faible) : simplifier, catalogues, regroupement.

## Fiche 3 : le coût total de possession (TCO)

Le prix d''achat n''est qu''une partie du coût. TCO = prix d''achat + coûts d''acquisition (transport, dédouanement, installation) + coûts d''utilisation (énergie, entretien, formation) − valeur de revente.

Exemple. Kaay Logistique (fictive) compare deux chariots élévateurs sur 5 ans, montants en millions FCFA. Fournisseur 1, local : prix 9 ; entretien 0,6 par an ; énergie 0,9 par an ; revente 1. TCO = 9 + 5 × 0,6 + 5 × 0,9 − 1 = 15,5. Fournisseur 2, importé : prix 7,5 ; transport et dédouanement 1,2 (fictifs) ; entretien 0,9 par an ; énergie 1,1 par an ; revente 0,5. TCO = 7,5 + 1,2 + 4,5 + 5,5 − 0,5 = 18,2. Le fournisseur 1, plus cher à l''achat, est moins coûteux sur la durée.

## Fiche 4 : la notation pondérée des fournisseurs

On note chaque fournisseur sur 10 par critère, puis on pondère. Critères : prix 40 % ; qualité 30 % ; délai 20 % ; responsabilité sociale et environnementale 10 %.

- F1 : 7 ; 8 ; 9 ; 8. Note : 2,8 + 2,4 + 1,8 + 0,8 = 7,8.
- F2 : 9 ; 6 ; 6 ; 5. Note : 3,6 + 1,8 + 1,2 + 0,5 = 7,1.
- F3 : 8 ; 7 ; 7 ; 9. Note : 3,2 + 2,1 + 1,4 + 0,9 = 7,6.

F1 est retenu, bien que F2 soit le moins cher.

## Fiche 5 : le tableau de bord logistique

Un bon tableau de bord comporte peu d''indicateurs, chacun avec une formule, une cible, un résultat, un écart et une action. On équilibre service, coûts, stocks, qualité et environnement.

Exemple mensuel, distributeur fictif : 4 000 commandes ; 3 720 à l''heure ; 3 800 complètes ; 3 600 à la fois à l''heure et complètes. Chiffre d''affaires : 850 millions ; coûts logistiques : 76,5 millions. Stock moyen : 300 millions ; coût d''achat des marchandises vendues du mois : 600 millions.

- Taux de livraison à l''heure : 93 %. Taux de complétude : 95 %. OTIF : 3 600 / 4 000 = 90 % (cible 95 %).
- Coût logistique / CA : 76,5 / 850 = 9 % (cible 8 %).
- Coût logistique par commande : 76 500 000 / 4 000 = 19 125 FCFA.
- Couverture du stock : 300 / 600 × 30 = 15 jours.

Diagnostic : le service et les coûts sont hors cible ; on analyse les causes des retards et des commandes incomplètes (ruptures, erreurs de préparation, transport) avant d''agir.

## Points clés

- Émissions = t × km × facteur ; massification et report modal.
- Kraljic : quatre familles, quatre stratégies.
- Décider sur le TCO, pas sur le prix.
- Tableau de bord : formule, cible, écart, action.

## Exercices pratiques

Exercice 1. Citez quatre leviers de logistique durable.

Exercice 2. 15 t sur 800 km : comparez les émissions par la route et par le rail, sachant que le rail exige 50 km de pré- et post-acheminement routier (facteurs fictifs du cours).

Exercice 3. Classez dans la matrice de Kraljic : le gasoil d''une flotte de camions ; les fournitures de bureau ; une pièce détachée spécifique d''un portique de quai.

Exercice 4. Comparez sur 4 ans deux camions (80 000 km par an, gasoil 750 FCFA le litre, prix fictif). A neuf : 45 millions, 30 litres aux 100 km, entretien 1,5 million par an, revente 15 millions. B d''occasion : 28 millions, 36 litres aux 100 km, entretien 3 millions par an, revente 6 millions.

Exercice 5. Critères : prix 35 % ; qualité 25 % ; délai 25 % ; RSE 15 %. F1 : 8 ; 6 ; 7 ; 6. F2 : 6 ; 8 ; 8 ; 9. Quel fournisseur retenir ?

Exercice 6 (cas pratique). Sur un mois : 2 500 commandes, 2 300 OTIF ; CA 600 millions ; coûts logistiques 54 millions ; stock moyen 180 millions ; coût d''achat des ventes du mois 450 millions. Cibles : OTIF 95 %, coût logistique 8 % du CA. Construisez le tableau de bord et commentez.

## Corrigé

Exercice 1. Massification, réduction des kilomètres à vide, report modal, écoconduite, emballages réutilisables, logistique inverse.

Exercice 2. Route : 15 × 800 × 0,10 = 1 200 kg. Rail : 15 × 800 × 0,03 = 360 kg, plus 15 × 50 × 0,10 = 75 kg, soit 435 kg.

Exercice 3. Gasoil : achat levier (fort impact, marché concurrentiel) ou stratégique si l''approvisionnement est tendu. Fournitures : achat simple. Pièce spécifique : achat critique.

Exercice 4. A : carburant 80 000 × 0,30 × 750 = 18 millions par an. TCO = 45 + 72 + 6 − 15 = 108 millions. B : carburant 21,6 millions par an. TCO = 28 + 86,4 + 12 − 6 = 120,4 millions. A est moins coûteux et consomme 4 800 litres de moins par an.

Exercice 5. F1 : 2,8 + 1,5 + 1,75 + 0,9 = 6,95. F2 : 2,1 + 2,0 + 2,0 + 1,35 = 7,45. On retient F2.

Exercice 6. OTIF : 2 300 / 2 500 = 92 %, écart de −3 points. Coût logistique : 54 / 600 = 9 %, écart de +1 point. Coût par commande : 21 600 FCFA. Couverture : 180 / 450 × 30 = 12 jours. Les deux indicateurs clés sont hors cible : analyser les causes des échecs OTIF et les postes de coûts, en priorité le transport.', 'texte', 60, false, 40
from public.courses c where c.slug = 'lic-log-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Logistique durable, achats et pilotage par indicateurs : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Licence 3 logistique et transport (entraînement, corrigé détaillé)', '## Présentation

Sujet d''entraînement de Licence 3 logistique et transport, non officiel. Durée conseillée : 4 heures. Barème indicatif, non officiel, sur 20 points. Entreprise fictive ; tarifs, taux et facteurs fictifs pour l''exemple.

## Sujet

Casamance Fruits (fictive) conditionne et exporte des mangues et des jus. Elle importe aussi des emballages par voie maritime.

Dossier 1. Supply chain management (7 points)

Ventes trimestrielles de jus (milliers de bouteilles), trimestres 1 à 6 : 40 ; 44 ; 47 ; 52 ; 55 ; 60.

- 1.1 Calculez la droite de régression et la prévision des trimestres 7 et 8. (3 points)
- 1.2 Les prévisions du lissage exponentiel pour les trimestres 4, 5 et 6 étaient 45, 48 et 51. Calculez la MAD et le signal de suivi. (2 points)
- 1.3 Le distributeur observe que ses commandes à l''usine varient beaucoup plus que les ventes en magasin. Nommez le phénomène et proposez deux remèdes. (2 points)

Dossier 2. Transport maritime (7 points)

L''entreprise importe 26 m³ d''emballages pesant 6 t. Conteneur complet de 20 pieds : 1 400 000 FCFA tout compris. Groupage : 50 000 FCFA par unité payante, BAF 10 %, frais fixes 80 000 FCFA. Franchise de détention 7 jours, puis 15 000 FCFA par jour ; le conteneur est rendu après 11 jours.

- 2.1 Comparez groupage et conteneur complet. (3 points)
- 2.2 Calculez le coût de détention si l''on choisit le conteneur complet. (2 points)
- 2.3 Expliquez les trois fonctions du connaissement. (2 points)

Dossier 3. Durabilité, achats et pilotage (6 points)

- 3.1 Les exportations représentent 30 envois de 18 t sur 400 km jusqu''au port. Calculez les émissions annuelles par la route (0,10 kg CO2 par t.km, fictif). (2 points)
- 3.2 Deux fournisseurs d''emballages : critères prix 40 %, qualité 35 %, délai 25 %. A : 9 ; 6 ; 7. B : 7 ; 9 ; 8. Lequel retenir ? (2 points)
- 3.3 Sur le trimestre : 900 commandes, 819 OTIF ; coûts logistiques 63 millions pour 700 millions de CA. Calculez et commentez. (2 points)

## Corrigé détaillé

1.1 t̄ = 3,5 ; ȳ ≈ 49,667. Σ(t − t̄)(y − ȳ) = 69 ; Σ(t − t̄)² = 17,5. b = 69 / 17,5 ≈ 3,943 ; a ≈ 49,667 − 3,943 × 3,5 ≈ 35,867. Prévisions : trimestre 7 ≈ 35,867 + 3,943 × 7 ≈ 63,5 ; trimestre 8 ≈ 67,4 milliers de bouteilles.

1.2 Erreurs : 52 − 45 = 7 ; 55 − 48 = 7 ; 60 − 51 = 9. MAD = 23 / 3 ≈ 7,67. Signal = 23 / 7,67 = 3. Toutes les erreurs sont positives : le lissage sous-estime une demande en croissance ; une méthode intégrant la tendance (régression ou lissage avec tendance) est préférable.

1.3 L''effet coup de fouet. Remèdes : partager les ventes réelles avec l''usine ; commandes plus fréquentes et plus petites ; gestion partagée des approvisionnements ; éviter les promotions brutales.

2.1 Groupage : unité payante = 26 (26 m³ contre 6 t). 26 × 50 000 = 1 300 000 ; BAF 130 000 ; frais fixes 80 000 ; total 1 510 000 FCFA. Conteneur complet : 1 400 000 FCFA. Le complet est moins cher de 110 000 FCFA et réduit les manipulations.

2.2 4 jours × 15 000 = 60 000 FCFA. Total conteneur complet : 1 460 000 FCFA, toujours inférieur au groupage.

2.3 Preuve du contrat de transport ; reçu de la marchandise embarquée ; titre représentatif permettant d''en prendre livraison.

3.1 30 × 18 × 400 × 0,10 = 21 600 kg, soit 21,6 t de CO2 par an.

3.2 A : 3,6 + 2,1 + 1,75 = 7,45. B : 2,8 + 3,15 + 2,0 = 7,95. On retient B.

3.3 OTIF : 819 / 900 = 91 %. Coût logistique : 63 / 700 = 9 %. Commentaire : le service est perfectible ; analyser les causes des échecs (ruptures, retards de transport) et chercher des économies sur le transport, premier poste habituel.

## Commentaires du correcteur

- Dossier 1 : présentez la régression sous forme de tableau (t, y, écarts, produits, carrés). Beaucoup de copies se trompent sur la somme des produits : vérifiez-la deux fois. Une conclusion sur le choix de méthode est attendue.
- Dossier 2 : l''erreur fréquente est de retenir le poids (6 t) comme unité payante, alors que le volume l''emporte. Il faut aussi intégrer la détention dans la comparaison finale : le conteneur complet reste avantageux, mais l''écart se réduit à 50 000 FCFA.
- Dossier 3 : une note pondérée sans conclusion ne rapporte pas tous les points. Pour les indicateurs, comparez à une cible ou à la période précédente ; un chiffre isolé ne dit rien.
- Une synthèse finale de quelques lignes reliant les trois dossiers (prévoir, importer, piloter) est valorisée.

## Exercices pratiques

Exercice 1. Combien d''EVP représentent 120 conteneurs de 40 pieds ?

Exercice 2. Que signifie un signal de suivi de +6 ?

Exercice 3. Citez les quatre familles de la matrice de Kraljic.

Exercice 4. Calculez la couverture d''un stock moyen de 90 millions pour des sorties mensuelles de 270 millions (mois de 30 jours).

Exercice 5. Un envoi de groupage pèse 8 t pour 5 m³. Quelle est l''unité payante ?

Exercice 6. Citez deux remèdes à l''effet coup de fouet.

## Corrigé

Exercice 1. 120 × 2 = 240 EVP.

Exercice 2. La prévision est biaisée : elle sous-estime systématiquement la demande.

Exercice 3. Stratégiques, leviers, critiques, simples.

Exercice 4. 90 / 270 × 30 = 10 jours.

Exercice 5. 8 : le poids l''emporte sur le volume.

Exercice 6. Partage des ventes réelles entre les maillons ; gestion partagée des approvisionnements ; réduction des délais ; livraisons plus fréquentes en plus petites quantités.', 'texte', 60, false, 50
from public.courses c where c.slug = 'lic-log-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Licence 3 logistique et transport (entraînement, corrigé détaillé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Supply chain management', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 3 en logistique et transport.
- Objectifs : appliquer trois méthodes de prévision, mesurer l''erreur et le biais, situer les niveaux de planification, réaliser un calcul des besoins, expliquer et mesurer l''effet coup de fouet et ses remèdes.
- Matériel : tableur ou tableau blanc, graphique des ventes, calculatrice, fiche d''exercices.
- Prérequis : notions de gestion des stocks (Licence 1), avoir lu la leçon « Supply chain management : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour à toutes et à tous. Aujourd''hui, nous prenons le poste du responsable supply chain. Son premier outil, c''est la prévision : on ne peut ni acheter, ni produire, ni transporter correctement sans une estimation de la demande. Nous verrons trois méthodes de prévision, la mesure de l''erreur, la planification et le calcul des besoins, puis un phénomène qui surprend toujours : l''effet coup de fouet. Notre fil rouge : Sénégal Boissons Fraîches, entreprise fictive qui produit des boissons en packs.

## 05:00 – 12:00 · Le SCM en une image

Visuel : une chaîne de cinq maillons, fournisseurs d''emballages, usine, entrepôt central, grossistes, boutiques, avec les flux physiques vers la droite et l''information dans les deux sens.

Le supply chain management coordonne ces maillons pour servir le client final au moindre coût global. Le mot important est « global » : si chaque maillon optimise seul, l''ensemble peut être très inefficace. Le modèle SCOR organise les processus en familles : planifier, approvisionner, produire, livrer, gérer les retours. Tout part de la planification, donc de la prévision.

## 12:00 – 25:00 · Moyenne mobile et lissage exponentiel

Ventes de janvier à août, en milliers de packs : 120, 132, 128, 140, 150, 146, 158, 166. Visuel : la courbe monte régulièrement.

Moyenne mobile sur trois mois : pour septembre, la moyenne de juin, juillet, août : 146 plus 158 plus 166, divisé par 3, environ 156,7. Simple, mais toujours en retard sur une tendance.

Lissage exponentiel : nouvelle prévision égale ancienne prévision plus alpha fois l''erreur. Avec alpha égal 0,3 et une prévision de janvier égale à 120 : février 120 ; mars 120 plus 0,3 fois 12, soit 123,6 ; avril 123,6 plus 0,3 fois 4,4, soit 124,92 ; puis 129,44 ; 135,61 ; 138,73 ; 144,51 ; et septembre 150,96.

Question au public : que remarquez-vous ? Toutes les prévisions sont inférieures aux ventes réelles. Le lissage simple corrige l''erreur seulement en partie à chaque période ; sur une série en croissance, il reste en retard. Plus alpha est grand, plus il réagit vite, mais plus il suit aussi les variations accidentelles.

## 25:00 – 38:00 · La régression linéaire

Pour une tendance, la régression est mieux adaptée. On cherche y égale a plus b fois t. Étapes : t barre égale 4,5 ; y barre égale 142,5. Somme des produits des écarts : 258. Somme des carrés des écarts de t : 42. b égale 258 sur 42, environ 6,143. a égale 142,5 moins 6,143 fois 4,5, environ 114,857.

Prévision de septembre : 114,857 plus 6,143 fois 9, environ 170,1. Octobre : environ 176,3.

Conseil d''examen : présentez un tableau avec les colonnes t, y, t moins t barre, y moins y barre, produit, carré. Le correcteur suit votre calcul ligne à ligne, et une erreur isolée ne vous coûte qu''une partie des points.

Et si la série est saisonnière ? On calcule des coefficients saisonniers : pour chaque mois ou trimestre, le rapport moyen entre les ventes réelles et la tendance. On prévoit ensuite la tendance, puis on la multiplie par le coefficient de la période. Par exemple, si la tendance prévue pour un trimestre chaud est de 170 et que son coefficient saisonnier est de 1,2, la prévision devient 204. À l''examen, ce prolongement est souvent demandé en Licence 3.

Limite : la régression suppose que la tendance continue. Une rupture, comme l''arrivée d''un concurrent, une hausse de prix ou une pénurie de sucre, la rend fausse. Et elle ignore la saisonnalité si on ne la modélise pas : pour des boissons, la saison chaude et le Ramadan comptent.

## 38:00 – 45:00 · Mesurer l''erreur

Erreur égale réel moins prévision. MAD : moyenne des erreurs absolues. MAPE : moyenne des erreurs relatives. Signal de suivi : somme des erreurs divisée par la MAD.

Pour le lissage, de février à août, la MAD vaut environ 14,74 ; la somme des erreurs 103,19 ; le signal environ 7. Au-delà de 4 en valeur absolue, on parle de biais : ici, sous-estimation systématique. Pour la régression, la MAD est de 3 sur la même série. Verdict : la régression l''emporte nettement.

## 45:00 – 50:00 · Pause quiz

Question 1 : prévision précédente 200, demande 230, alpha 0,2 ? Réponse : 206.

Question 2 : ventes 92, 95, 101 ; moyenne mobile sur trois mois ? Réponse : 96.

Question 3 : erreurs 5, moins 3, 8, 6, 4 ; MAD et signal ? Réponse : 5,2 et environ 3,85.

## 50:00 – 1:02:00 · Planification et calcul des besoins

La planification descend en cascade : plan stratégique sur plusieurs années ; plan industriel et commercial par familles de produits sur plusieurs mois, qui équilibre ventes, production et stocks ; programme directeur de production par produit et par semaine ; calcul des besoins en composants.

Exemple : besoins bruts en packs pour quatre semaines, 500, 600, 550, 700 ; stock 300. Besoins nets : 200, 600, 550, 700. Chaque pack contient 6 bouteilles : besoins bruts en bouteilles, 1 200, 3 600, 3 300, 4 200. Stock de bouteilles : 2 000. Besoins nets : 0, 2 800, 3 300, 4 200. Délai d''une semaine : on lance les commandes en semaines 1, 2 et 3.

Erreur classique : oublier de décaler du délai, ou réutiliser un stock déjà consommé. Tenez une ligne « stock disponible en fin de semaine » pour éviter ce piège.

Dans la réalité, on ajoute des règles de lot : le fournisseur de bouteilles livre par palettes complètes, par exemple par multiples de 1 000. Le besoin net de 2 800 devient alors une commande de 3 000, et les 200 bouteilles restantes viennent réduire le besoin de la semaine suivante. Le calcul des besoins s''appuie aussi sur des nomenclatures exactes et des stocks fiables : un inventaire faux produit des commandes fausses. C''est le lien direct entre la planification et la qualité des données de l''entrepôt.

## 1:02:00 – 1:15:00 · L''effet coup de fouet

Visuel : trois courbes superposées, la demande des consommateurs presque plate, les commandes du grossiste plus agitées, les commandes à l''usine qui oscillent violemment.

Données : consommateurs 100, 104, 98, 102, 96, 100, variance 6,67. Grossiste 100, 112, 90, 110, 85, 103, variance 96,33. Usine 100, 130, 70, 125, 60, 115, variance 708,33. Ratios : environ 14 au grossiste, environ 106 à l''usine. La moyenne est pourtant identique, 100 partout.

Pourquoi ? Chaque maillon prévoit à partir des commandes qu''il reçoit, pas des ventes réelles ; il commande par lots ; il réagit aux promotions ; en cas de pénurie, il surcommande pour être mieux servi ; et les délais longs amplifient tout. Ce phénomène a été mis en évidence par Forrester puis analysé par Lee, Padmanabhan et Whang.

Remèdes : partager les ventes réelles, par exemple les données de caisse des distributeurs ; gestion partagée des approvisionnements, où le fournisseur pilote le stock du client ; planification collaborative ; délais plus courts ; prix stables ; livraisons plus fréquentes en petites quantités.

Exercice : variance de la demande 25, variance des commandes 400. Ratio : 16. Trois actions : partage d''information, lissage des commandes, réduction des délais.

Illustrons la gestion partagée des approvisionnements. Sénégal Boissons Fraîches reçoit chaque jour, de ses principaux grossistes, l''état de leurs stocks et de leurs ventes. C''est elle qui calcule et propose les réapprovisionnements, dans des limites de stock minimum et maximum fixées ensemble. Le grossiste n''a plus besoin de surcommander par précaution, et l''usine voit la demande réelle au lieu de commandes déformées. Les conditions de réussite : des données fiables et transmises régulièrement, un accord clair sur les responsabilités en cas de rupture ou de surstock, et une relation de confiance entre partenaires.

## 1:15:00 – 1:25:00 · Évaluation finale

- Question 1 : quelle méthode convient à une série en croissance régulière ? Réponse : la régression linéaire, ou un lissage avec tendance.
- Question 2 : t de 1 à 5, ventes 50, 54, 59, 62, 65 : prévision en t égale 6 ? Réponse : 69,4, avec b égal 3,8 et a égal 46,6.
- Question 3 : que signifie un signal de suivi de 7 ? Réponse : une prévision biaisée qui sous-estime la demande.
- Question 4 : besoin brut 400, stock 250 : besoin net ? Réponse : 150.
- Question 5 : deux remèdes à l''effet coup de fouet ? Réponse : partage des ventes réelles, gestion partagée des approvisionnements, délais réduits.

## 1:25:00 – 1:30:00 · Synthèse

Retenez : choisir la méthode selon la forme de la série, mesurer systématiquement l''erreur et le biais, calculer les besoins nets en décalant du délai, et combattre le coup de fouet par l''information partagée. Refaites les exercices de la leçon et le dossier 1 du sujet type. Merci et bonne révision.', 'video', 90, false, 60
from public.courses c where c.slug = 'lic-log-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Supply chain management');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Transport maritime et portuaire', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 3 en logistique et transport.
- Objectifs : expliquer la conteneurisation, distinguer les services et les contrats maritimes, connaître les fonctions du connaissement, calculer un fret de groupage, un remplissage de conteneur, des frais de détention et des indicateurs portuaires.
- Matériel : schéma d''un terminal à conteneurs, dimensions des conteneurs, calculatrice, fiche d''exercices.
- Prérequis : Incoterms 2020 (Licence 2), avoir lu la leçon « Transport maritime et portuaire : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour à toutes et à tous. Aujourd''hui, nous partons en mer. L''essentiel du commerce extérieur de l''Afrique de l''Ouest passe par les ports, et les ports de la façade atlantique se font concurrence pour servir aussi les pays enclavés. Vous allez apprendre le vocabulaire du maritime, calculer un fret, remplir un conteneur et analyser la performance d''un port. Rappel : tous les tarifs sont fictifs pour l''exemple, et les dimensions des conteneurs sont des valeurs approximatives.

## 05:00 – 17:00 · La révolution du conteneur

Imaginez un port avant le conteneur : des dockers chargent sac après sac, carton après carton ; un navire reste des jours, parfois des semaines, à quai ; la casse et les vols sont fréquents. Le conteneur change tout : une boîte standard, manutentionnée par des portiques, qui passe du navire au camion ou au train sans que l''on touche à la marchandise.

L''unité de mesure est l''EVP, équivalent vingt pieds. Un 40 pieds vaut 2 EVP. Dimensions intérieures approximatives : environ 5,90 sur 2,35 sur 2,39 mètres pour un 20 pieds, soit environ 33 mètres cubes ; environ 67 mètres cubes pour un 40 pieds.

Les types : sec standard, frigorifique pour les fruits ou le poisson, toit ouvert, plate-forme pour les colis hors gabarit, citerne.

Conséquences : coûts de manutention en baisse, intermodalité, navires de plus en plus grands, concentration des escales sur des ports d''éclatement, et nécessité d''investir dans des terminaux performants. Question au public : quel lien entre gigantisme des navires et profondeur des chenaux d''accès ? Réponse : les grands navires exigent des tirants d''eau importants ; un port peu profond risque d''être relégué au rang de port secondaire desservi par des navires collecteurs.

## 17:00 – 28:00 · Services, contrats et connaissement

Deux organisations. La ligne régulière : un calendrier d''escales publié, de nombreux chargeurs, des conteneurs et marchandises diverses ; le contrat est matérialisé par le connaissement. Le tramping : un navire affrété à la demande pour un chargement complet, souvent du vrac, céréales, clinker, hydrocarbures ; le contrat est la charte-partie, au voyage, à temps ou coque nue.

Le connaissement a trois fonctions. Il prouve le contrat de transport. Il constitue le reçu de la marchandise embarquée, avec d''éventuelles réserves sur son état. Et il est un titre représentatif : celui qui le détient régulièrement peut prendre livraison. C''est pourquoi il intervient dans le crédit documentaire.

Deux modes d''expédition : FCL, conteneur complet ; LCL, groupage, où un groupeur réunit les envois de plusieurs chargeurs.

## 28:00 – 40:00 · Calculer un fret de groupage

En groupage, on paie par unité payante : on compare tonnes et mètres cubes et on retient le plus élevé. Exemple : 4,5 tonnes et 7,2 mètres cubes. Unité payante : 7,2. Fret de base à 60 000 FCFA : 432 000. BAF de 10 % : 43 200. Frais fixes : 75 000. Total : 550 200 FCFA.

Comparaison avec le conteneur complet : 1 300 000 FCFA tout compris, contre 66 000 FCFA par mètre cube en groupage surcharge incluse. Seuil : 1 300 000 divisé par 66 000, environ 19,7 mètres cubes. Au-delà, le conteneur complet est plus intéressant, et il évite aussi les manipulations au groupage et au dégroupage.

Exercice : 3,2 tonnes et 5 mètres cubes, 55 000 FCFA, BAF 12 %. Correction : unité payante 5 ; 275 000 plus 33 000, soit 308 000 FCFA.

## 40:00 – 45:00 · Pause quiz

Question 1 : 300 conteneurs de 20 pieds et 450 de 40 pieds : combien d''EVP ? Réponse : 1 200.

Question 2 : un document qui sert de reçu, de preuve du contrat et de titre représentatif ? Réponse : le connaissement.

Question 3 : un navire affrété à la demande pour du clinker : quel service et quel contrat ? Réponse : tramping, charte-partie.

## 45:00 – 57:00 · Remplir un conteneur

Cartons de 60 sur 40 sur 40 centimètres dans un 20 pieds. Orientation 1 : 60 dans la longueur, 590 divisé par 60, 9 ; 40 dans la largeur, 235 divisé par 40, 5 ; 40 en hauteur, 239 divisé par 40, 5. Soit 225 cartons. Orientation 2 : 40 dans la longueur, 14 ; 60 dans la largeur, 3 ; 5 en hauteur : 210 cartons. On retient 225, soit 21,6 mètres cubes utiles, environ 65 % du volume intérieur.

Deux réflexes : on arrondit toujours à l''entier inférieur, car on ne charge pas un demi-carton ; et on vérifie la charge utile maximale, car un conteneur peut être plein en poids avant d''être plein en volume, par exemple avec du carrelage ou du ciment.

Un troisième réflexe concerne la qualité du chargement : répartir le poids uniformément, caler les colis pour éviter qu''ils ne bougent pendant la traversée, ne pas superposer des cartons fragiles sous des charges lourdes. Un conteneur mal chargé peut provoquer des avaries, et parfois des accidents lors de la manutention. Pour les produits frais, comme les mangues exportées par la Casamance, le conteneur frigorifique doit être prérefroidi et la chaîne du froid surveillée de bout en bout.

Exercice : cartons de 50 sur 40 sur 30, orientation imposée. 11 fois 5 fois 7, soit 385 cartons.

## 57:00 – 1:07:00 · Surestaries et détention

La compagnie accorde une franchise. Au-delà : surestaries pour un conteneur qui reste au terminal, détention pour un conteneur gardé à l''extérieur. Exemple : franchise de 7 jours, conteneur rendu après 12 jours, 15 000 FCFA par jour : 75 000 FCFA.

Pour un importateur de l''hinterland, un conteneur qui part sur le corridor et revient vide peut facilement dépasser la franchise. Solutions : négocier une franchise plus longue, dépoter au port sec ou à l''entrepôt proche du port, planifier le retour des vides, suivre chaque conteneur avec sa date limite.

## 1:07:00 – 1:18:00 · Les opérations portuaires

Visuel : schéma d''un terminal, poste à quai avec portiques, terre-plein de stockage, zone de contrôle, portes d''entrée et de sortie des camions.

Les étapes : arrivée en rade, pilotage et remorquage, accostage, déchargement et chargement par les portiques, stockage sur le terre-plein, contrôles, sortie par camion ou par train. Les acteurs : autorité portuaire, opérateurs de terminaux souvent concessionnaires, manutentionnaires, consignataires, douane, transitaires.

Indicateurs : cadence en mouvements par heure, temps d''escale à quai, temps d''attente en rade, taux d''occupation des postes, temps de séjour des conteneurs au terminal.

Calcul : 1 200 mouvements, 500 conteneurs de 20 pieds et 700 de 40 pieds, soit 1 900 EVP. Trois portiques à 25 mouvements par heure : 75 par heure, donc 16 heures. Avec deux portiques à 28 mouvements par heure pour 900 mouvements : environ 16,1 heures.

Le temps de séjour au terminal dépend souvent moins des portiques que des formalités et de l''enlèvement par les importateurs : un conteneur qui attend son dédouanement occupe de la place. D''où l''importance de la dématérialisation des procédures et des guichets uniques.

Sujet de réflexion possible : « Les ports ouest-africains sont-ils en concurrence ? ». Oui, pour capter le trafic de transit des pays enclavés et les escales des grandes lignes : la qualité du terminal, la durée des formalités, l''état du corridor et le coût total pour le chargeur font la différence. Mais ils sont aussi complémentaires, car chacun dispose de son hinterland naturel et les réseaux de lignes combinent plusieurs escales. Restez prudents sur les classements et les volumes, que vous ne pouvez pas vérifier en salle d''examen.

## 1:18:00 – 1:26:00 · Évaluation finale

- Question 1 : combien d''EVP pour 120 conteneurs de 40 pieds ? Réponse : 240.
- Question 2 : 26 mètres cubes et 6 tonnes, 50 000 FCFA, BAF 10 %, frais fixes 80 000 : fret de groupage ? Réponse : 1 510 000 FCFA.
- Question 3 : franchise de 7 jours, rendu après 11 jours, 15 000 FCFA par jour ? Réponse : 60 000 FCFA.
- Question 4 : différence entre surestaries et détention ? Réponse : surestaries au terminal, détention hors du terminal, au-delà de la franchise.
- Question 5 : citez deux indicateurs portuaires. Réponse : cadence de manutention, temps d''escale, temps d''attente en rade, temps de séjour.

## 1:26:00 – 1:30:00 · Synthèse

Retenez : EVP et types de conteneurs, ligne régulière et tramping, les trois fonctions du connaissement, l''unité payante en groupage, le remplissage arrondi à l''entier inférieur, la franchise et ses dépassements, et les indicateurs portuaires. Refaites le dossier 2 du sujet type. Merci et bon vent.', 'video', 90, false, 70
from public.courses c where c.slug = 'lic-log-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Transport maritime et portuaire');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Logistique durable, achats et pilotage par indicateurs', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 3 en logistique et transport.
- Objectifs : estimer les émissions de CO2 du transport, connaître les leviers de la logistique durable, maîtriser le processus achats, la matrice de Kraljic, le coût total de possession, la notation pondérée des fournisseurs, et construire un tableau de bord logistique.
- Matériel : matrice de Kraljic, modèle de tableau de bord, calculatrice, fiche d''exercices.
- Prérequis : avoir lu la leçon « Logistique durable, achats et pilotage par indicateurs : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour à toutes et à tous. Cette dernière séance relie trois sujets qui se rejoignent dans le quotidien d''un responsable logistique : l''environnement, les achats et le pilotage. Vous saurez estimer des émissions, choisir un fournisseur sur des bases solides et construire un tableau de bord utile. Avertissement : les facteurs d''émission et les prix utilisés sont fictifs pour l''exemple ; en entreprise, on utilise des bases de données de référence reconnues.

## 05:00 – 18:00 · Logistique durable : principes et calculs

La logistique durable cherche à concilier trois dimensions : économique, sociale, environnementale. Les leviers : massifier les flux, mieux remplir les véhicules, réduire les kilomètres à vide, reporter vers des modes moins émetteurs, former à l''écoconduite, entretenir les véhicules, réduire et réutiliser les emballages, organiser la logistique inverse. Côté social : conditions de travail des chauffeurs et des manutentionnaires, sécurité routière.

Le calcul de base : émissions égalent tonnes fois kilomètres fois facteur. Facteurs fictifs : route 0,10 kilogramme par tonne-kilomètre, rail 0,03, maritime 0,015. Pour 20 tonnes sur 1 200 kilomètres : route 2 400 kilogrammes, rail 720, maritime 360. Sur 50 envois par an, passer de la route au rail éviterait 84 tonnes de CO2.

Exercice : 15 tonnes sur 800 kilomètres, avec 50 kilomètres de route en complément pour le rail. Route : 1 200 kilogrammes. Rail : 360 plus 75, soit 435 kilogrammes. N''oubliez jamais les pré- et post-acheminements.

La logistique inverse mérite un mot particulier. Au Sénégal comme ailleurs, les bouteilles consignées, les casiers, les palettes et les fûts reviennent vers le fournisseur. Bien organisée, cette boucle réduit les achats d''emballages et les déchets ; mal organisée, elle encombre les entrepôts et génère des pertes. Les bonnes pratiques : suivre les emballages comme un stock à part entière, profiter des tournées de livraison pour récupérer les retours, et fixer des règles claires de consigne avec les clients. On parle d''économie circulaire quand les produits et matériaux sont réutilisés ou recyclés plutôt que jetés.

Question au public : la logistique durable coûte-t-elle forcément plus cher ? Non : moins de kilomètres à vide et un meilleur remplissage réduisent à la fois les coûts et les émissions. Mais certains investissements ont un coût initial élevé, d''où l''importance de raisonner sur la durée.

## 18:00 – 30:00 · Les achats et la matrice de Kraljic

Le processus achats : expression du besoin, cahier des charges, recherche de fournisseurs, appel d''offres, négociation, contrat, commande, réception, évaluation. Dans le secteur public, des règles de commande publique s''appliquent ; ne citez pas de seuils de mémoire.

Visuel : matrice à quatre cases, impact financier en ordonnée, risque d''approvisionnement en abscisse.

Achats stratégiques, impact fort et risque fort : partenariat de long terme. Achats leviers, impact fort et risque faible : mise en concurrence et négociation. Achats critiques, impact faible et risque fort : sécuriser, stock de sécurité, fournisseurs alternatifs. Achats simples : simplifier, catalogues, regroupement.

Exercice oral : une pièce détachée spécifique d''un portique de quai ? Achat critique : peu coûteuse, mais sa rupture immobilise le terminal. Les fournitures de bureau ? Achat simple.

## 30:00 – 40:00 · Le coût total de possession

Le prix d''achat est trompeur. Le TCO ajoute coûts d''acquisition et d''utilisation, et retranche la valeur de revente.

Kaay Logistique compare deux chariots sur 5 ans. Fournisseur 1, local : 9 millions, plus 3 millions d''entretien, plus 4,5 millions d''énergie, moins 1 million de revente : 15,5 millions. Fournisseur 2, importé : 7,5 millions, plus 1,2 million de transport et de dédouanement, plus 4,5 d''entretien, plus 5,5 d''énergie, moins 0,5 : 18,2 millions. Le moins cher à l''achat est le plus cher sur la durée.

Exercice : deux camions sur 4 ans, 80 000 kilomètres par an, gasoil à 750 FCFA. A neuf : 45 millions, 30 litres aux 100, entretien 1,5 million par an, revente 15 millions. B d''occasion : 28 millions, 36 litres, 3 millions, revente 6 millions. Carburant annuel : A 18 millions, B 21,6 millions. TCO : A 108 millions, B 120,4 millions. A gagne, et consomme 4 800 litres de moins par an : économie et environnement vont ici dans le même sens.

## 40:00 – 45:00 · Pause quiz

Question 1 : formule des émissions ? Réponse : tonnes fois kilomètres fois facteur d''émission.

Question 2 : un achat à fort impact financier sur un marché très concurrentiel ? Réponse : achat levier.

Question 3 : que retranche-t-on dans le TCO ? Réponse : la valeur de revente.

## 45:00 – 57:00 · Noter les fournisseurs

Grille pondérée : prix 40 %, qualité 30 %, délai 20 %, RSE 10 %. F1 : 7, 8, 9, 8, soit 7,8. F2 : 9, 6, 6, 5, soit 7,1. F3 : 8, 7, 7, 9, soit 7,6. On retient F1, alors que F2 est le moins cher.

Deux précautions. Les pondérations doivent être fixées avant de noter, sinon on risque d''ajuster la grille pour favoriser un fournisseur. Et les notes doivent reposer sur des faits : taux de conformité des livraisons, respect des délais mesuré, audits. Une grille transparente protège aussi contre les soupçons de favoritisme.

Exercice : pondérations 35, 25, 25, 15. F1 : 8, 6, 7, 6, soit 6,95. F2 : 6, 8, 8, 9, soit 7,45. On retient F2.

## 57:00 – 1:12:00 · Construire un tableau de bord

Un tableau de bord n''est pas une liste de tous les chiffres disponibles. Il contient peu d''indicateurs, chacun avec sa formule, sa cible, son résultat, son écart, son responsable et une action.

Visuel : tableau à six colonnes avec voyants vert, orange, rouge.

Exemple mensuel : 4 000 commandes, 3 600 à l''heure et complètes : OTIF 90 %, cible 95 %, voyant rouge. Coûts logistiques 76,5 millions pour 850 millions de chiffre d''affaires : 9 %, cible 8 %, rouge. Coût par commande : 19 125 FCFA. Couverture du stock : 300 millions sur 600 millions de sorties mensuelles, fois 30, soit 15 jours.

Le diagnostic : 280 commandes en retard et 200 incomplètes. On cherche les causes : ruptures de stock, erreurs de préparation, retards des transporteurs. L''outil classique est le diagramme de Pareto des causes, qui montre souvent que deux ou trois causes expliquent l''essentiel des échecs.

Ajoutez au moins un indicateur environnemental, par exemple les émissions par tonne livrée ou le taux de remplissage des camions, et un indicateur social, comme le nombre d''accidents du travail.

Quelques règles de construction. Un indicateur doit être mesurable à partir de données fiables : si personne ne saisit l''heure réelle de livraison, l''OTIF est inventé. Il doit être compris par ceux qui l''utilisent : un chef de quai a besoin d''indicateurs journaliers sur son activité, la direction générale d''une synthèse mensuelle. Il doit enfin déclencher une action : un indicateur rouge sans plan d''action ne sert à rien. Enfin, évitez les indicateurs contradictoires sans arbitrage : pousser le coût par commande à la baisse peut dégrader le service si l''on réduit les livraisons.

## 1:12:00 – 1:22:00 · Exercice de synthèse corrigé

Un mois : 2 500 commandes, 2 300 OTIF ; chiffre d''affaires 600 millions ; coûts logistiques 54 millions ; stock moyen 180 millions ; sorties du mois 450 millions. Cibles : OTIF 95 %, coût 8 %.

Correction : OTIF 92 %, écart de moins 3 points ; coût logistique 9 %, écart de plus 1 point ; coût par commande 21 600 FCFA ; couverture 12 jours. Plan d''action : analyse des causes d''échec, renégociation ou regroupement des transports, réduction des kilomètres à vide, et suivi hebdomadaire jusqu''au retour dans la cible.

## 1:22:00 – 1:28:00 · Évaluation finale

- Question 1 : émissions de 30 envois de 18 tonnes sur 400 kilomètres à 0,10 ? Réponse : 21 600 kilogrammes.
- Question 2 : citez les quatre familles de Kraljic. Réponse : stratégiques, leviers, critiques, simples.
- Question 3 : TCO d''un équipement de 9 millions, 1,5 million de coûts annuels sur 5 ans, revente 1 million ? Réponse : 15,5 millions.
- Question 4 : 819 commandes OTIF sur 900 ? Réponse : 91 %.
- Question 5 : quels éléments pour chaque indicateur d''un tableau de bord ? Réponse : formule, cible, résultat, écart, responsable, action.

## 1:28:00 – 1:30:00 · Synthèse

Retenez : émissions égalent tonnes, kilomètres et facteur ; Kraljic oriente la stratégie achats ; on décide sur le TCO ; on note les fournisseurs avec une grille fixée à l''avance ; un tableau de bord sert à agir. Refaites le dossier 3 du sujet type. Merci et bonne fin de Licence.', 'video', 90, false, 80
from public.courses c where c.slug = 'lic-log-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Logistique durable, achats et pilotage par indicateurs');

-- Cours : Ressources humaines Master 1 : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'mas-rh-m1', (select id from public.levels where name = 'Master 1'), null, 'Ressources humaines', 'Ressources humaines Master 1 : réussir ses examens', 'Préparation aux examens de Master 1 en ressources humaines : stratégie RH et posture de business partner, audit social et diagnostic RH avancé, droit social avancé et gestion des contentieux. Études de cas d''entreprises sénégalaises et africaines fictives, exercices corrigés et sujet type d''examen. Public : étudiants de Master 1 RH ayant validé les fondamentaux de Licence.', true, 701
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Master 1 en ressources humaines', 'Le Master 1 en ressources humaines marque une rupture nette avec la Licence. Vous ne révisez plus des
définitions et des procédures de base : vous devez démontrer une capacité d''analyse critique, de diagnostic
et de décision en situation d''incertitude, sur des cas d''entreprise complexes et souvent incomplets, comme
dans la réalité d''une direction des ressources humaines (DRH) africaine confrontée à la croissance, à la
restructuration ou à la conflictualité sociale.

## Ce qui change par rapport à la Licence

En Licence, vous avez appris les briques : introduction à la GRH, droit du travail de base, comportement
organisationnel, recrutement, paie, formation, GPEC, dialogue social, rémunération et SIRH. Le Master 1
suppose ces briques acquises et vous demande de les assembler au service d''une décision stratégique. Trois
exigences nouvelles structurent l''année : la stratégie RH doit être alignée sur la stratégie d''entreprise
(logique de business partner, et non plus seulement de gestionnaire administratif) ; le pilotage RH doit
s''appuyer sur un audit social rigoureux et des indicateurs avancés, pas seulement sur l''intuition du
dirigeant ; et le droit social doit être mobilisé pour anticiper et gérer des contentieux réels (licenciement
contesté, négociation collective, procédure prud''homale), pas seulement pour citer un texte.

## Les trois matières avancées de l''année

La première matière, stratégie RH et alignement avec la stratégie d''entreprise, vous apprend à lire un plan
stratégique d''entreprise (croissance, diversification, internationalisation, réduction de coûts) et à en
déduire les choix RH cohérents : effectifs cibles, compétences critiques, organisation, politique de
rémunération, calendrier social. C''est la logique du HR business partner, qui siège au comité de direction et
parle le langage du chiffre d''affaires et de la marge, pas seulement celui du droit du travail.

La deuxième matière, audit social et diagnostic RH, vous enseigne à construire et interpréter des indicateurs
avancés (taux de rotation, taux d''absentéisme, taux de promotion interne, masse salariale rapportée au chiffre
d''affaires, climat social) et à produire un bilan social argumenté qui éclaire une décision, par exemple un
plan de départs volontaires ou un plan de fidélisation.

La troisième matière, droit social avancé et gestion des contentieux, approfondit les situations à risque :
rupture du contrat de travail (licenciement pour motif personnel ou économique), négociation collective
(accords d''entreprise, conventions collectives) et contentieux devant les juridictions du travail. L''objectif
n''est pas de mémoriser des articles de loi précis, le cadre législatif sénégalais étant en transition (projet
de code du travail en discussion), mais de maîtriser les mécanismes, les risques et les bonnes pratiques de
sécurisation, en vérifiant toujours le texte en vigueur au moment des faits.

## Méthode de travail pour le Master 1

À ce niveau, trois outils de travail deviennent indispensables. D''abord, l''étude de cas complexe : un dossier
d''entreprise fictive, avec des données chiffrées parfois contradictoires ou incomplètes, dans lequel vous
devez identifier le problème RH réel avant de proposer une solution argumentée. Ensuite, le business case :
vous devez chiffrer l''impact financier de vos recommandations (coût d''un plan de formation, économie d''un
plan de départs, coût d''un contentieux) et les présenter comme le ferait un consultant devant un comité de
direction. Enfin, la revue de littérature : pour les matières les plus conceptuelles (stratégie RH, GPEC
avancée), vous devez être capable de synthétiser plusieurs approches théoriques (par exemple les modèles de
l''alignement stratégique RH) et de les discuter de façon critique, sans réciter un seul auteur comme une
vérité unique.

Beaucoup d''étudiants qui réussissent bien un partiel de Master 1 échouent sur l''étude de cas parce qu''ils se
précipitent sur la solution avant d''avoir posé un diagnostic rigoureux. La méthode conseillée est systématique :
lire le cas deux fois, lister les faits (chiffres, dates, acteurs), formuler le ou les problèmes RH sous-jacents,
mobiliser les concepts pertinents des trois matières, proposer une ou plusieurs solutions argumentées en
anticipant leurs limites, puis conclure par une recommandation chiffrée et un plan d''action daté.

## Plan de révision sur six semaines

Semaine 1 : reprendre les bases de Licence en droit du travail et comportement organisationnel pour s''assurer
qu''aucune brique ne manque, puis lire l''intégralité du cours de stratégie RH et alignement.

Semaine 2 : travailler la stratégie RH en profondeur, avec au moins trois cas pratiques complets, en
s''entraînant à chiffrer un business case simple (coût d''un recrutement stratégique, retour sur investissement
d''une politique de rétention).

Semaine 3 : passer à l''audit social et au diagnostic RH, construire soi-même un petit tableau d''indicateurs
à partir de données fictives, et s''entraîner à rédiger une synthèse de bilan social en une page.

Semaine 4 : traiter le droit social avancé et la gestion des contentieux, en se concentrant sur les mécanismes
(étapes d''un licenciement sécurisé, logique d''une négociation collective, déroulement d''une procédure
prud''homale en principe) plutôt que sur des numéros d''articles.

Semaine 5 : faire et refaire le sujet type d''examen multi-matières dans les conditions du jour J (temps
limité, sans notes), puis corriger soi-même avant de comparer au corrigé détaillé.

Semaine 6 : révision croisée, en reliant les trois matières entre elles (par exemple : comment un diagnostic
social révèle un risque juridique qui doit être intégré dans la stratégie RH), et relecture active des
quatre cours vidéo, en reformulant à voix haute les points clés sans regarder le support.

## Points clés à retenir

- Le Master 1 évalue la capacité à relier stratégie d''entreprise, diagnostic RH chiffré et sécurisation
juridique, pas la restitution isolée de connaissances.
- Toute recommandation RH doit être argumentée et, autant que possible, chiffrée.
- Le cadre légal sénégalais étant en transition, privilégiez la maîtrise des mécanismes et la prudence sur
les chiffres précis, en rappelant systématiquement qu''il faut vérifier le texte en vigueur.
- La méthode de l''étude de cas (faits, problème, concepts, solution argumentée, recommandation) doit devenir
un réflexe avant chaque partiel.

## Exercices pratiques

1. Expliquez en cinq lignes la différence entre une fonction RH administrative et une fonction RH business
partner.
2. Citez trois indicateurs RH avancés utiles à un audit social et justifiez chacun en une phrase.
3. Un directeur général sénégalais vous dit : « je veux réduire ma masse salariale de 10 % cette année ».
Listez trois options RH possibles avant tout licenciement, avec un avantage et un risque pour chacune.
4. Pourquoi est-il risqué, dans un devoir de droit social, de citer un numéro d''article précis du futur code
du travail sénégalais sans réserve ? Proposez une formulation prudente alternative.
5. Construisez un plan de révision personnel sur six semaines en adaptant celui proposé ci-dessus à votre
emploi du temps, en indiquant au moins deux jalons de contrôle (auto-évaluation).

## Corrigé

1. La fonction RH administrative gère les actes (paie, contrats, absences) de façon réactive et conforme ;
la fonction RH business partner participe à la définition de la stratégie d''entreprise, anticipe les besoins
en compétences et en organisation, et est évaluée sur sa contribution à la performance globale, pas seulement
sur la conformité des dossiers.
2. Par exemple : le taux de rotation (turnover), qui révèle un risque de perte de compétences et un coût de
remplacement ; le taux d''absentéisme, qui peut signaler un problème de climat social ou de conditions de
travail ; le ratio masse salariale sur chiffre d''affaires, qui mesure la soutenabilité économique de la
politique salariale.
3. Option 1 : gel des recrutements et non-remplacement des départs naturels (avantage : pas de coût social
immédiat ; risque : perte de compétences si les départs touchent des postes clés). Option 2 : plan de
départs volontaires négocié (avantage : image sociale préservée, choix laissé au salarié ; risque : coût
financier immédiat et possible départ des meilleurs talents). Option 3 : réduction du temps de travail ou
de la rémunération variable (avantage : préserve l''emploi ; risque : démotivation et perte d''attractivité).
4. C''est risqué parce que le code du travail sénégalais est en cours de réforme (projet de loi en discussion)
et qu''un article cité de mémoire peut être obsolète ou inexact au moment de l''examen. Formulation prudente :
« sous réserve de vérification du texte en vigueur, le mécanisme général prévoit généralement… ».
5. Réponse libre ; un bon plan reprend la logique faits → notions → entraînement → correction → synthèse, et
fixe au moins une auto-évaluation après la troisième semaine et une avant l''examen.', 'texte', 45, true, 10
from public.courses c where c.slug = 'mas-rh-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Master 1 en ressources humaines');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Stratégie RH et alignement avec la stratégie d''entreprise (business partner) : l''essentiel pour l''examen', 'La stratégie RH et son alignement avec la stratégie d''entreprise constituent le cœur de la posture de
HR business partner : la fonction RH n''est plus seulement un service support qui applique des règles, elle
participe à la définition des choix de l''entreprise et en organise la traduction en termes de compétences,
d''organisation et de rémunération.

## Notions clés

L''alignement stratégique RH consiste à faire correspondre les leviers RH (recrutement, formation,
organisation, rémunération, mobilité) aux orientations stratégiques de l''entreprise (croissance,
diversification, internationalisation, réduction de coûts, transformation digitale). Un cadre utile, à
discuter de façon critique plutôt qu''à réciter, distingue quatre rôles possibles de la fonction RH : le rôle
administratif (gestion des actes), le rôle d''expert fonctionnel (paie, droit, SIRH), le rôle de partenaire
stratégique (participation aux choix de l''entreprise) et le rôle d''agent de changement (accompagnement des
transformations). Le Master 1 attend de vous que vous sachiez situer une pratique RH dans l''un de ces rôles
et argumenter pourquoi une entreprise donnée devrait, à un moment donné, en privilégier un autre.

Le business partner s''appuie sur une méthode simple : partir du plan stratégique de l''entreprise, en extraire
les implications en matière d''effectifs et de compétences (combien de personnes, avec quelles compétences, à
quel horizon), puis construire un plan RH daté et chiffré qui accompagne ce plan stratégique, en identifiant
les risques (pénurie de compétences, résistance au changement, coût social) et les leviers pour les maîtriser.

## Méthode d''analyse d''un cas de stratégie RH

Face à un cas d''entreprise, la méthode recommandée suit quatre étapes. Premièrement, identifier la stratégie
d''entreprise affichée (croissance organique, croissance par acquisition, diversification géographique,
automatisation). Deuxièmement, en déduire les besoins RH induits (effectifs, compétences rares, organisation
cible). Troisièmement, évaluer l''écart entre la situation RH actuelle et cette cible (c''est l''écart stratégique
RH). Quatrièmement, proposer un plan d''action RH daté, chiffré et priorisé pour combler cet écart, en
anticipant au moins un risque majeur et la façon de le limiter.

## Cas d''entreprise fictif : Teranga Agro-Industries

Teranga Agro-Industries est une entreprise agroalimentaire fictive basée à Dakar, employant 480 salariés et
réalisant un chiffre d''affaires annuel de 18 milliards de FCFA. Sa direction générale a validé un plan
stratégique à trois ans visant à tripler la capacité de transformation de céréales locales et à ouvrir deux
nouvelles usines, l''une à Kaolack, l''autre à Saint-Louis, afin de réduire la dépendance aux importations et de
répondre à une demande régionale UEMOA en croissance. Le plan prévoit un doublement du chiffre d''affaires en
trois ans.

La DRH, nouvellement associée au comité de direction, doit présenter un plan RH d''accompagnement. L''analyse
des effectifs actuels montre que l''usine de Dakar emploie 300 ouvriers de production, 90 techniciens de
maintenance et qualité, et 90 fonctions support (finance, commercial, RH, logistique). Le taux de rotation des
techniciens qualifiés est de 18 % par an, nettement supérieur à celui des ouvriers de production (7 %), ce qui
traduit une tension sur ce type de compétence sur le marché dakarois.

Pour les deux nouvelles usines, l''entreprise estime avoir besoin, à terme, de 260 ouvriers de production
supplémentaires, 70 techniciens supplémentaires et 40 fonctions support supplémentaires, soit un besoin total
de 370 postes nouveaux. Vérifions l''arithmétique : 260 + 70 + 40 = 370, ce qui correspond bien à l''annonce de
la direction générale. Avec un effectif actuel de 480 et un besoin additionnel de 370, l''effectif total cible
à trois ans est de 480 + 370 = 850 salariés, soit une progression de 370 / 480, c''est-à-dire environ 77 %, sur
la période (calcul vérifié : 370 divisé par 480 égale 0,7708, arrondi à 77 %).

L''écart stratégique RH majeur identifié par la DRH concerne les 140 techniciens supplémentaires à recruter
(70 pour chaque nouvelle usine), alors que le marché local de Kaolack et de Saint-Louis offre un bassin de
compétences techniques plus restreint que Dakar, et que le taux de rotation déjà observé à Dakar (18 %) laisse
craindre une difficulté à fidéliser ces profils rares une fois recrutés.

La DRH propose un plan en trois axes : un axe « formation interne », avec la création d''un centre de formation
technique partagé entre les trois sites, pour qualifier localement des jeunes diplômés plutôt que de dépendre
exclusivement du recrutement externe ; un axe « fidélisation », avec une prime de rareté de compétence
clairement identifiée comme un dispositif propre à l''entreprise (et non un taux légal) pour les techniciens
critiques, assortie d''un parcours de carrière visible ; et un axe « mobilité interne », en proposant à des
techniciens expérimentés de Dakar d''ouvrir les nouvelles usines contre une prime de mobilité géographique et
un logement de fonction temporaire, ce qui limite le risque d''implantation sans savoir-faire disponible sur
place au démarrage.

## Points clés

- L''alignement stratégique RH part toujours de la stratégie d''entreprise, jamais l''inverse.
- Chiffrer l''écart entre effectifs actuels et effectifs cibles est un exercice attendu : vérifiez toujours vos
additions et vos pourcentages.
- Un plan RH crédible combine plusieurs leviers (formation, fidélisation, mobilité) plutôt qu''une solution
unique, et anticipe au moins un risque concret lié au contexte local.
- Toute prime ou dispositif chiffré proposé dans un exemple est une création d''entreprise fictive, jamais un
taux légal, sauf mention contraire explicite.

## Exercices pratiques

1. Dans le cas Teranga, recalculez le besoin total de postes si la direction révise son objectif à 300
ouvriers, 80 techniciens et 50 fonctions support supplémentaires. Quel est le nouvel effectif cible ?
2. Expliquez pourquoi un taux de rotation de 18 % chez les techniciens est plus préoccupant stratégiquement
que le même taux chez les ouvriers de production dans ce cas précis.
3. Citez deux risques, autres que la pénurie de compétences, qu''une ouverture d''usine dans une nouvelle ville
peut faire peser sur la stratégie RH.
4. Pourquoi la DRH doit-elle siéger au comité de direction pour qu''un plan RH comme celui de Teranga soit
réellement efficace, et pas seulement correct sur le papier ?
5. Cas pratique complet : Dakar Digital Solutions, entreprise de services fictive de 150 salariés, veut doubler
son activité en deux ans grâce à l''intelligence artificielle appliquée à la relation client. Elle estime avoir
besoin de 60 postes, dont 25 en compétences data/IA quasi inexistantes localement. Rédigez un diagnostic de
l''écart stratégique RH et un plan d''action en trois axes argumentés.
6. Quelle différence faites-vous entre une fonction RH qui « suit » la stratégie et une fonction RH qui « co-
construit » la stratégie ? Donnez un exemple concret pour chacune.

## Corrigé

1. Nouveau besoin total : 300 + 80 + 50 = 430 postes. Nouvel effectif cible : 480 + 430 = 910 salariés.
2. Parce que les techniciens sont une compétence rare sur le marché local des nouvelles implantations : leur
perte est plus coûteuse à remplacer (délai, formation, risque de rupture de production), alors que le marché
d''ouvriers de production est plus large et plus facile à reconstituer rapidement.
3. Par exemple : le risque d''image employeur (difficulté à attirer des talents si la nouvelle usine est perçue
comme isolée) et le risque social local (relations avec les communautés et autorités locales, attentes
d''emploi local qui peuvent créer des tensions si elles ne sont pas satisfaites).
4. Parce qu''un plan RH décidé après les choix stratégiques n''est qu''un ajustement administratif ; siéger au
comité de direction permet à la DRH d''influencer les choix eux-mêmes (calendrier, implantation, ambition) en
fonction de la disponibilité réelle des compétences, ce qui réduit le risque d''échec du plan stratégique.
5. Diagnostic attendu : l''écart porte sur les 25 postes data/IA, compétence quasi absente localement, ce qui
peut retarder le projet si rien n''est anticipé. Plan en trois axes : formation accélérée d''un vivier interne
reconverti via un centre de formation ; recrutement ciblé d''un petit noyau d''experts seniors formant ensuite
les équipes locales ; politique de rétention spécifique pour éviter que l''investissement ne profite à des
concurrents.
6. Une fonction RH qui « suit » la stratégie reçoit les décisions déjà prises et organise leur mise en œuvre RH ;
une fonction RH qui « co-construit » la stratégie est associée avant la décision et peut alerter sur un risque
RH qui modifie le choix lui-même, par exemple en proposant un calendrier d''ouverture d''usine plus progressif si
le vivier de techniciens est jugé insuffisant.', 'texte', 55, false, 20
from public.courses c where c.slug = 'mas-rh-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Stratégie RH et alignement avec la stratégie d''entreprise (business partner) : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Audit social et diagnostic RH (indicateurs avancés, bilan social) : l''essentiel pour l''examen', 'L''audit social et le diagnostic RH permettent de transformer des données RH brutes en informations
utiles à la décision. À ce niveau de Master, on attend une capacité à construire des indicateurs avancés, à
les interpréter avec prudence et à les restituer dans un bilan social argumenté, sans confondre corrélation et
causalité ni appliquer des seuils universels qui n''existent pas.

## Notions clés

L''audit social est une démarche d''évaluation systématique des pratiques et des résultats RH d''une organisation,
au regard de ses objectifs (conformité, performance, climat social). Le diagnostic RH en est le produit : une
analyse qui identifie les forces, les faiblesses et les risques RH d''une organisation à un moment donné. Le
bilan social, dans les grandes entreprises, est le document qui rassemble ces indicateurs sur une période,
généralement l''année écoulée, afin de permettre un suivi dans le temps.

Les indicateurs avancés les plus mobilisés en Master 1 incluent : le taux de rotation (nombre de départs sur
une période rapporté à l''effectif moyen), le taux d''absentéisme (jours d''absence rapportés aux jours
théoriquement travaillés), le taux de promotion interne (nombre de promotions rapporté à l''effectif), le ratio
masse salariale sur chiffre d''affaires (qui mesure le poids économique du coût du travail), et des indicateurs
de climat social (résultats d''enquêtes internes, nombre d''incidents disciplinaires, nombre de recours).

Un principe méthodologique essentiel : un indicateur isolé ne signifie presque rien. Un taux de rotation de
15 % peut être excellent dans un secteur où la moyenne est de 30 %, et alarmant dans un secteur où la moyenne
est de 5 %. Le diagnostic RH exige donc systématiquement une comparaison : dans le temps (évolution sur
plusieurs années), dans l''espace (comparaison à des entreprises comparables, quand c''est possible et prudent),
et par segment (par métier, par site, par ancienneté), car une moyenne globale peut masquer des situations très
différentes.

## Méthode de construction d''un diagnostic RH

La méthode recommandée comprend quatre étapes : collecter les données disponibles (effectifs, mouvements,
absences, masse salariale, résultats d''enquêtes) ; calculer les indicateurs pertinents en vérifiant les
formules et les unités ; interpréter chaque indicateur en le comparant à une référence pertinente (évolution
interne, segment, éventuellement secteur si la donnée est fiable) ; et formuler un diagnostic global qui relie
les indicateurs entre eux (par exemple, un absentéisme élevé combiné à une rotation élevée sur le même site
suggère un problème de conditions de travail ou de management local, plutôt que deux problèmes indépendants).

## Cas d''entreprise fictif : Groupe Sahel Logistique

Le Groupe Sahel Logistique est une entreprise fictive de transport et d''entreposage, basée à Dakar avec un
site secondaire à Thiès, employant au total 600 salariés (420 à Dakar, 180 à Thiès). La DRH doit préparer le
bilan social annuel pour le comité de direction.

Données du site de Dakar : 420 salariés en moyenne sur l''année, 63 départs sur la période (volontaires et
involontaires confondus). Le taux de rotation de Dakar se calcule ainsi : 63 divisé par 420, soit 0,15, donc
15 %.

Données du site de Thiès : 180 salariés en moyenne, 45 départs sur la période. Le taux de rotation de Thiès se
calcule ainsi : 45 divisé par 180, soit 0,25, donc 25 %.

Le taux de rotation global du groupe se calcule en rapportant le total des départs au total des effectifs :
63 + 45 = 108 départs, pour 420 + 180 = 600 salariés en moyenne, soit 108 divisé par 600, c''est-à-dire 0,18,
donc 18 %. Ce chiffre global de 18 % est trompeur pris isolément : il masque un écart important entre les deux
sites (15 % contre 25 %), un écart de 10 points de pourcentage qui mérite une explication avant toute action
corrective uniforme.

Sur l''absentéisme, le site de Thiès enregistre 2 700 jours d''absence sur l''année pour 180 salariés travaillant
en moyenne 220 jours théoriques chacun, soit un total théorique de 180 fois 220, c''est-à-dire 39 600
jours-salarié théoriques. Le taux d''absentéisme de Thiès est donc de 2 700 divisé par 39 600, soit environ
0,068, donc environ 6,8 %. Le site de Dakar, sur la même base de calcul, enregistre 1 800 jours d''absence pour
420 salariés à 220 jours théoriques, soit 420 fois 220 égale 92 400 jours-salarié théoriques ; le taux
d''absentéisme de Dakar est de 1 800 divisé par 92 400, soit environ 0,0195, donc environ 2 %.

Le diagnostic RH de la DRH relie ces deux indicateurs pour le site de Thiès : un taux de rotation de 25 % et un
taux d''absentéisme d''environ 6,8 %, nettement supérieurs à ceux de Dakar, suggèrent un problème local propre
au site (conditions de travail, qualité du management, attractivité du site), plutôt qu''une politique RH
globale du groupe qui serait uniformément mauvaise. La recommandation n''est donc pas une mesure générale pour
tout le groupe, mais une investigation ciblée sur le site de Thiès (entretiens de départ, enquête de climat
social locale) avant de décider d''un plan d''action.

## Points clés

- Un indicateur RH ne vaut que par la comparaison qui l''accompagne : jamais de lecture isolée.
- Toujours vérifier les formules (numérateur, dénominateur, unités) avant de calculer un taux.
- Un diagnostic RH croise plusieurs indicateurs pour distinguer un problème ponctuel d''un problème structurel,
et un problème global d''un problème localisé à un site ou un segment.
- Le bilan social doit déboucher sur une recommandation d''action, pas seulement sur une liste de chiffres.

## Exercices pratiques

1. Recalculez le taux de rotation du site de Thiès si, sur l''année suivante, les départs tombent à 27 pour un
effectif moyen inchangé de 180.
2. Expliquez pourquoi comparer le taux de rotation de Sahel Logistique à celui d''une entreprise d''un autre
secteur (par exemple la banque) serait une erreur méthodologique.
3. Citez trois sources de données qu''une DRH peut mobiliser, en plus des chiffres de rotation et
d''absentéisme, pour affiner un diagnostic social.
4. Pourquoi est-il dangereux de décider une mesure RH applicable à tout un groupe sur la seule base d''un taux
de rotation global, comme le 18 % calculé pour Sahel Logistique ?
5. Cas pratique complet : une entreprise fictive, Baobab Télécom, a un effectif moyen de 900 salariés et a
enregistré 108 départs sur l''année, ainsi que 19 800 jours d''absence pour un total théorique de 198 000
jours-salarié. Calculez le taux de rotation et le taux d''absentéisme, puis rédigez en dix lignes un diagnostic
prudent (sans comparaison externe disponible) sur ce que ces deux chiffres suggèrent et ce qu''il faudrait
vérifier avant de conclure.
6. Quelle différence faites-vous entre un audit social et un simple reporting RH mensuel ?

## Corrigé

1. Nouveau taux de rotation de Thiès : 27 divisé par 180, soit 0,15, donc 15 %, ce qui ramènerait Thiès au
même niveau que Dakar et confirmerait, si cela se vérifiait, que la situation initiale était ponctuelle.
2. Parce que les secteurs ont des dynamiques de marché du travail très différentes (mobilité normale des
salariés, saisonnalité, pénibilité) ; comparer des taux de rotation entre secteurs sans ajustement conduit à
des conclusions erronées. Il faut comparer à des références du même secteur ou, à défaut, suivre l''évolution
dans le temps de la même entreprise.
3. Par exemple : les entretiens de départ, les enquêtes de climat social ou d''engagement, et les indicateurs
disciplinaires (avertissements, sanctions) ou de sécurité au travail (accidents, incidents).
4. Parce que le chiffre global de 18 % mélange deux situations très différentes (15 % et 25 %) ; une mesure
uniforme risquerait de ne pas traiter le vrai problème (concentré à Thiès) et de coûter inutilement sur le
site qui fonctionne bien (Dakar).
5. Taux de rotation : 108 divisé par 900, soit 0,12, donc 12 %. Taux d''absentéisme : 19 800 divisé par 198 000,
soit 0,10, donc 10 %. Diagnostic prudent : ces taux semblent élevés en valeur absolue mais ne peuvent être
qualifiés de préoccupants sans comparaison (historique, secteur) ; il faudrait vérifier l''évolution sur
plusieurs années et croiser avec les motifs de départ et d''absence.
6. Un reporting RH mensuel suit des chiffres de routine (effectifs, absences) de façon descriptive ; un audit
social va plus loin en évaluant les pratiques RH au regard d''objectifs (conformité, performance, équité) et en
produisant un diagnostic argumenté destiné à éclairer une décision, pas seulement à informer.', 'texte', 55, false, 30
from public.courses c where c.slug = 'mas-rh-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Audit social et diagnostic RH (indicateurs avancés, bilan social) : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Droit social avancé et gestion des contentieux : l''essentiel pour l''examen', 'Le droit social avancé et la gestion des contentieux forment la troisième matière clé du Master 1. Il
ne s''agit plus de connaître les notions de base du contrat de travail, mais de savoir anticiper et gérer les
situations à risque : rupture du contrat, négociation collective et contentieux devant les juridictions du
travail. Le cadre légal sénégalais étant en transition (un projet de réforme du code du travail est en
discussion), ce cours privilégie la compréhension des mécanismes et des bonnes pratiques de sécurisation, et
rappelle systématiquement la nécessité de vérifier le texte en vigueur au moment des faits, plutôt que de
citer des articles précis qui pourraient être obsolètes.

## Notions clés

La rupture du contrat de travail peut être volontaire (démission, rupture négociée) ou imposée par
l''employeur (licenciement). Le licenciement se distingue classiquement entre motif personnel (lié au
comportement ou à l''aptitude du salarié) et motif économique (lié à la situation de l''entreprise :
réorganisation, difficultés économiques, suppression de poste). Dans les deux cas, la sécurisation juridique
repose sur trois piliers généraux, dont le contenu précis doit être vérifié dans le texte en vigueur : un motif
réel et sérieux, une procédure respectée (information, délais, éventuelle consultation des représentants du
personnel), et une traçabilité des faits (documents, évaluations, avertissements antérieurs pour un motif
personnel disciplinaire).

La négociation collective désigne le processus par lequel employeur et représentants des salariés (syndicats,
délégués du personnel) élaborent des accords collectifs, qui peuvent compléter ou préciser la convention
collective de branche applicable. Elle est centrale dans la gestion du dialogue social, abordée de façon plus
générale en Licence, mais qui doit ici être articulée à une gestion de risque : un accord mal négocié ou mal
appliqué peut lui-même devenir source de contentieux.

Le contentieux prud''homal (devant les juridictions du travail, dont la dénomination précise varie selon les
pays et les réformes) est la voie par laquelle un salarié ou un employeur peut contester une décision ou
demander réparation. En principe général, la procédure commence souvent par une tentative de conciliation,
avant un éventuel jugement au fond ; la logique à retenir pour l''examen est celle des étapes et des enjeux
(preuve, délais de prescription qu''il faut vérifier dans le texte applicable, risques financiers), pas la
mémorisation de délais précis en jours qui doivent impérativement être vérifiés dans le texte en vigueur au
moment des faits.

## Méthode d''analyse d''un cas de droit social avancé

Devant un cas de droit social, la méthode attendue est : qualifier juridiquement la situation (type de rupture,
type de motif) ; identifier les risques de contestation (absence de motif réel et sérieux, vice de procédure,
rupture de l''égalité de traitement) ; évaluer les moyens de sécurisation disponibles avant la décision (dossier
disciplinaire complet, respect des étapes procédurales, alternative au licenciement) ; et, si un contentieux
est déjà engagé, analyser la position de chaque partie (preuves disponibles, risques financiers et
réputationnels) pour recommander une stratégie (poursuite du contentieux, transaction, conciliation).

## Cas d''entreprise fictif : Dakar Industries Métalliques

Dakar Industries Métalliques est une entreprise fictive de fabrication métallique employant 85 salariés. Le
directeur d''usine souhaite licencier Monsieur Fall, chef d''équipe depuis six ans, à la suite d''un incident où
ce dernier aurait, selon le rapport du superviseur, quitté son poste sans autorisation pendant deux heures, ce
qui aurait provoqué un arrêt de la chaîne de production estimé à 1 200 000 FCFA de perte de production
(chiffre fictif pour l''exemple).

En examinant le dossier, la DRH constate trois éléments. Premièrement, Monsieur Fall n''a aucun antécédent
disciplinaire en six ans d''ancienneté : aucun avertissement écrit au dossier. Deuxièmement, le rapport du
superviseur est le seul élément de preuve ; aucun témoignage écrit d''un autre salarié, aucune relevé horaire
de badge n''a été produit à l''appui. Troisièmement, Monsieur Fall affirme avoir dû quitter son poste pour un
motif familial urgent et avoir prévenu oralement un collègue, information non vérifiée par l''entreprise avant
la décision envisagée.

Le diagnostic juridique de la DRH est le suivant : un licenciement immédiat pour motif personnel disciplinaire,
fondé sur un fait isolé non corroboré par des preuves solides et sans antécédent du salarié, présente un risque
élevé de contestation pour absence de motif suffisamment établi, en particulier si le salarié démontre devant
la juridiction compétente qu''il avait averti un collègue et qu''aucune enquête contradictoire n''a été menée
avant la décision.

La recommandation de la DRH est double : sur le plan procédural, mener d''abord un entretien contradictoire
formel avec Monsieur Fall, recueillir sa version et celle du collègue qu''il dit avoir prévenu, avant toute
décision, afin de compléter le dossier de preuve ; sur le plan de la sanction, envisager, si les faits sont
confirmés mais isolés et sans antécédent, une sanction disciplinaire intermédiaire (avertissement écrit ou mise
à pied) plutôt qu''un licenciement immédiat, ce qui réduit le risque de contentieux tout en marquant la gravité
du fait auprès du collectif de travail. Si l''entreprise souhaite malgré tout licencier, elle devra documenter
solidement le dossier avant toute notification, en vérifiant scrupuleusement les étapes procédurales en vigueur.

## Points clés

- Un licenciement se sécurise avant la décision, par la constitution d''un dossier de preuve et le respect
d''une procédure contradictoire, pas après.
- L''absence d''antécédent disciplinaire et la faiblesse de la preuve sont deux facteurs qui augmentent fortement
le risque de contestation d''un licenciement pour motif personnel.
- Ne jamais citer un délai ou un article précis du code du travail sénégalais sans réserve explicite, le texte
étant en transition ; privilégier la description du mécanisme général.
- Une sanction disciplinaire graduée est souvent une option plus sûre juridiquement qu''un licenciement immédiat
pour un fait isolé.

## Exercices pratiques

1. Pourquoi l''absence d''antécédent disciplinaire de Monsieur Fall affaiblit-elle la position de l''employeur
dans ce cas ?
2. Citez deux éléments de preuve que l''entreprise aurait pu chercher à réunir avant d''envisager une sanction,
dans le cas Dakar Industries Métalliques.
3. Expliquez la différence entre un licenciement pour motif personnel et un licenciement pour motif économique,
et pourquoi cette distinction est centrale pour la stratégie de défense de l''employeur en cas de contentieux.
4. Pourquoi le projet de réforme du code du travail sénégalais doit-il vous inciter, à l''examen, à privilégier
les mécanismes généraux plutôt que des articles précis ?
5. Cas pratique complet : une entreprise fictive de distribution, Sahel Market, souhaite supprimer dix postes
de magasinier dans un entrepôt en raison de l''automatisation d''une partie de la chaîne logistique. Identifiez
le type de motif de licenciement concerné, listez trois précautions procédurales générales que l''entreprise
devrait envisager avant toute notification (sans citer de délai précis), et proposez une alternative partielle
au licenciement pur et simple pour une partie des postes concernés.
## Corrigé

1. Parce que l''absence d''antécédent rend plus difficile de démontrer un comportement fautif grave et récurrent ;
un fait isolé chez un salarié jusque-là sans reproche est généralement perçu comme moins sérieux qu''une faute
s''inscrivant dans un historique documenté, ce qui pèse en faveur du salarié en cas de contestation.
2. Par exemple : un relevé de badge ou de pointage horaire objectif, et un témoignage écrit du collègue que
Monsieur Fall affirme avoir prévenu, ce qui permettrait de vérifier sa version des faits.
3. Le motif personnel concerne le comportement ou l''aptitude individuelle du salarié (faute, insuffisance
professionnelle) et la défense de l''employeur porte alors sur la preuve des faits reprochés ; le motif
économique concerne la situation de l''entreprise (difficultés, réorganisation, suppression de poste) et la
défense porte alors sur la réalité économique invoquée et sur le respect de critères généraux d''ordre des
licenciements et de recherche de reclassement, selon le mécanisme applicable.
4. Parce qu''un article cité de mémoire peut changer de numérotation ou de contenu avec la réforme en cours ; une
copie qui décrit le mécanisme général (ce qui doit exister : motif réel et sérieux, procédure, traçabilité) sans
se tromper sur un numéro d''article précis est plus solide et plus honnête qu''une copie qui invente une référence
légale inexacte.
5. Il s''agit d''un motif économique (réorganisation liée à l''automatisation). Précautions générales : documenter
la réalité du motif économique, respecter une procédure d''information et, selon le mécanisme applicable, de
consultation des représentants du personnel, et retenir des critères objectifs de choix des postes supprimés
plutôt qu''un choix arbitraire. Alternative partielle : reclasser une partie des dix magasiniers sur des postes
liés à la maintenance des nouveaux équipements, ce qui réduit le nombre de suppressions effectives.
', 'texte', 55, false, 40
from public.courses c where c.slug = 'mas-rh-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Droit social avancé et gestion des contentieux : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Master 1 RH (entraînement multi-matières, corrigé détaillé)', 'Ce sujet type rassemble les trois matières avancées du Master 1 en ressources humaines : stratégie RH
et alignement avec la stratégie d''entreprise, audit social et diagnostic RH, droit social avancé et gestion des
contentieux. Il n''a pas de caractère officiel et le barème indiqué est purement indicatif, destiné à vous aider
à répartir votre temps de révision et le jour de l''épreuve.

## Sujet (durée indicative : 3 heures, barème indicatif sur 20 points)

Vous êtes consultant RH junior intervenant auprès de l''entreprise fictive Teranga Textiles, société de
confection employant 340 salariés à Rufisque, qui connaît une croissance rapide de ses commandes à l''export
vers la sous-région UEMOA.

Partie 1 (8 points) : Stratégie RH. La direction générale annonce un doublement de la capacité de production en
dix-huit mois, nécessitant le recrutement de 180 opérateurs de confection et de 20 techniciens de maintenance
industrielle, alors que le marché local de Rufisque peine à fournir des techniciens qualifiés (seuls 4
techniciens qualifiés recrutés sur les 20 recherchés en six mois de campagne). Analysez l''écart stratégique RH
et proposez un plan d''action en au moins deux axes argumentés.

Partie 2 (6 points) : Audit social. Les données suivantes sont fournies : effectif moyen 340 salariés, 51
départs sur l''année, 7 480 jours d''absence pour un total théorique de 74 800 jours-salarié. Calculez le taux de
rotation et le taux d''absentéisme, puis rédigez un diagnostic prudent en dix lignes maximum.

Partie 3 (6 points) : Droit social avancé. Un opérateur de confection, employé depuis deux ans, a été absent
sans justification pendant trois jours consécutifs ; il affirme avoir été hospitalisé mais n''a transmis aucun
justificatif à ce jour, deux semaines après son retour. La direction envisage un licenciement pour faute.
Analysez les risques juridiques de cette décision en l''état du dossier et proposez une démarche de
sécurisation avant toute décision.

## Corrigé détaillé

Partie 1. L''écart stratégique RH majeur ne porte pas sur les 180 opérateurs de confection, pour lesquels le
marché local de Rufisque offre vraisemblablement un bassin suffisant compte tenu du secteur textile
traditionnellement implanté dans la zone, mais sur les 20 techniciens de maintenance industrielle, compétence
rare localement : seuls 4 sur 20 ont été recrutés en six mois, soit un taux de réalisation de 4 divisé par 20,
c''est-à-dire 20 %, largement insuffisant au regard du calendrier de dix-huit mois annoncé. Un plan d''action
crédible combine au moins deux axes : un axe de formation accélérée, par exemple un partenariat avec un centre
de formation technique régional pour qualifier des profils existants (mécaniciens généralistes reconvertis à
la maintenance industrielle textile) sur une durée compatible avec le calendrier ; et un axe de recrutement
élargi géographiquement, en ouvrant la recherche à d''autres villes ou pays de la sous-région UEMOA avec une
proposition de mobilité (logement, prime d''installation), ce qui élargit le bassin de recrutement au-delà de
Rufisque. Un troisième axe possible, à valoriser s''il est mentionné, est la révision du calendrier de montée en
puissance pour les lignes nécessitant le plus de maintenance, afin de ne pas dépendre immédiatement des 20
techniciens complets.

Partie 2. Taux de rotation : 51 divisé par 340, soit 0,15, donc 15 %. Taux d''absentéisme : 7 480 divisé par
74 800, soit 0,10, donc 10 %. Diagnostic prudent attendu : ces deux taux ne peuvent être qualifiés
d''excellents ou de préoccupants sans comparaison (évolution sur plusieurs années, éventuellement secteur
textile si une donnée fiable existe) ; dans un contexte de forte croissance et de recrutement massif récent, un
taux de rotation de 15 % peut en partie refléter un turnover normal de nouveaux embauchés en période d''essai, ce
qu''il faudrait vérifier en segmentant le taux par ancienneté avant de conclure à un problème de fidélisation
généralisé.

Partie 3. Les risques juridiques sont élevés en l''état du dossier : l''absence de trois jours n''est à ce jour
pas documentée comme fautive de façon certaine, puisque le salarié invoque une hospitalisation et qu''aucune
vérification n''a été faite ; décider un licenciement avant d''avoir cherché à obtenir ou vérifier un justificatif
médical exposerait l''entreprise à une contestation sérieuse si le salarié produit ultérieurement une preuve
d''hospitalisation. La démarche de sécurisation recommandée est de solliciter formellement et par écrit le
salarié pour qu''il produise un justificatif dans un délai raisonnable, de mener un entretien contradictoire pour
recueillir sa version complète, et de ne qualifier la situation (absence injustifiée fautive ou absence
justifiée tardivement) qu''une fois cette démarche effectuée, avant toute décision disciplinaire.

## Exercices pratiques (questions complémentaires)

1. Dans la partie 1, que changerait-il à votre analyse si l''entreprise découvrait que les 4 techniciens déjà
recrutés quittent systématiquement l''entreprise avant la fin de leur période d''essai ?
2. Dans la partie 2, si l''absentéisme de 10 % se révélait concentré à 90 % sur un seul atelier de 40 salariés,
comment cela changerait-il votre diagnostic et votre recommandation ?
3. Dans la partie 3, quelle différence feriez-vous si le salarié avait déjà deux avertissements écrits pour
absences injustifiées au cours de l''année précédente ?
4. Proposez une question d''examen supplémentaire, à cheval entre la stratégie RH et le droit social, portant
sur le cas Teranga Textiles.

## Corrigé

1. Cela changerait fondamentalement le diagnostic : le problème ne serait plus seulement un problème de
recrutement (attirer des techniciens) mais un problème de fidélisation et probablement d''intégration ou de
conditions de travail ; il faudrait ajouter un axe « intégration et accompagnement » au plan (tutorat,
parcours d''intégration renforcé, vérification des conditions de travail réelles des techniciens) avant de
continuer à recruter, sous peine de voir l''effort de recrutement ne jamais se traduire en effectif stable.
2. Un absentéisme concentré à 90 % sur un seul atelier de 40 salariés (sur 340) indique un problème localisé et
non un problème global de l''entreprise ; le diagnostic devrait se recentrer sur cet atelier spécifique (conditions
de travail, management local, type de poste) et la recommandation porterait sur une investigation ciblée
(entretiens, visite de poste) plutôt que sur une mesure RH applicable à l''ensemble des 340 salariés.
3. Avec deux avertissements écrits préalables pour le même type de fait, le dossier disciplinaire serait
nettement plus solide : l''absence actuelle s''inscrirait dans un historique documenté, ce qui renforcerait la
position de l''employeur même sans justificatif immédiat, tout en gardant la prudence de vérifier la procédure
contradictoire avant toute décision finale.
4. Exemple de question : « La direction de Teranga Textiles envisage de recruter les techniciens manquants en
leur proposant un contrat à durée déterminée de dix-huit mois calé sur le projet de doublement de capacité.
Quels sont les avantages et les risques, RH et juridiques, de ce choix par rapport à une embauche en contrat à
durée indéterminée ? » Une bonne réponse relierait la flexibilité recherchée par l''entreprise (avantage RH) au
risque de moindre attractivité du poste pour des techniciens rares qui préfèrent souvent la stabilité (risque
stratégique), ainsi qu''au risque juridique de requalification si le contrat à durée déterminée est utilisé de
façon répétée pour un besoin en réalité durable, ce qui doit toujours être vérifié au regard du mécanisme en
vigueur.', 'texte', 60, false, 50
from public.courses c where c.slug = 'mas-rh-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Master 1 RH (entraînement multi-matières, corrigé détaillé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Stratégie RH et business partner', '## Fiche du cours vidéo

Durée : 1h30. Public : étudiants de Master 1 en ressources humaines. Objectifs : savoir analyser l''alignement
entre une stratégie d''entreprise et un plan RH, et construire un plan d''action RH chiffré et priorisé face à un
cas d''entreprise complexe. Matériel : tableau ou diaporama, dossier de cas distribué en amont (cas Teranga
Agro-Industries ou équivalent), calculatrice. Prérequis : notions de base de GRH et de GPEC vues en Licence.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture et enjeux du business partner

Bonjour à toutes et à tous, bienvenue dans ce cours consacré à la stratégie RH et à l''alignement avec la
stratégie d''entreprise. Je vous propose de commencer par une question simple : à votre avis, qu''est-ce qui
distingue un directeur des ressources humaines qui se contente d''administrer le personnel d''un directeur des
ressources humaines qui est un véritable partenaire stratégique de l''entreprise ? Prenez trente secondes pour y
réfléchir. La réponse que nous allons construire ensemble aujourd''hui tourne autour d''une idée centrale : le
business partner ne répond pas aux demandes de l''entreprise, il anticipe les besoins RH que la stratégie de
l''entreprise va créer, avant même qu''ils ne deviennent urgents.

## 05:00 – 15:00 · Les quatre rôles de la fonction RH

Je vous présente un cadre de lecture, à discuter de façon critique et non à réciter mécaniquement : la fonction
RH peut jouer quatre rôles. Le rôle administratif, qui gère les actes (contrats, paie, absences). Le rôle
d''expert fonctionnel, qui maîtrise des domaines techniques comme le droit social ou le SIRH. Le rôle de
partenaire stratégique, qui participe à la définition des choix de l''entreprise. Et le rôle d''agent de
changement, qui accompagne les transformations organisationnelles. Regardez le diaporama : je vous montre
quatre exemples de situations RH, et nous allons ensemble les classer dans l''un de ces quatre rôles. Un
licenciement individuel bien géré relève surtout de l''expertise fonctionnelle. Une participation à la décision
d''ouvrir une nouvelle usine relève du rôle de partenaire stratégique. Gardez cette grille en tête, nous allons
l''utiliser tout au long du cours.

## 15:00 – 30:00 · Méthode d''analyse de l''écart stratégique RH

Voici la méthode en quatre étapes que je vous demande de maîtriser parfaitement. Premièrement, identifiez la
stratégie d''entreprise affichée dans le cas : croissance, diversification, réduction de coûts, automatisation.
Deuxièmement, déduisez-en les implications RH : quels effectifs, quelles compétences, à quel horizon.
Troisièmement, comparez cette cible à la situation RH actuelle pour identifier l''écart stratégique RH : c''est
souvent là que se trouve le vrai problème à traiter, pas dans les chiffres globaux. Quatrièmement, construisez
un plan d''action RH daté, chiffré et priorisé. Prenons l''exemple du cas Teranga Agro-Industries que vous avez dû
lire avant ce cours : l''entreprise veut tripler sa capacité et ouvrir deux usines, avec un effectif cible de 850
salariés contre 480 actuellement, soit 370 postes nouveaux. Vérifions ensemble : 260 ouvriers plus 70
techniciens plus 40 fonctions support égale bien 370. L''écart stratégique majeur ne porte pas sur les 260
ouvriers, faciles à recruter localement, mais sur les 70 techniciens de maintenance, compétence rare, alors que
le taux de rotation des techniciens à Dakar est déjà de 18 %, contre seulement 7 % chez les ouvriers. C''est ce
diagnostic ciblé, et non une impression générale, qui doit guider votre plan d''action.

## 30:00 – 40:00 · Construire un plan d''action en plusieurs axes

Un bon plan RH combine toujours plusieurs leviers, jamais un seul. Pour Teranga, nous avons proposé trois axes :
la formation interne, via un centre de formation technique partagé entre les sites, pour qualifier localement
de nouveaux techniciens plutôt que de dépendre uniquement du marché externe ; la fidélisation, via un dispositif
propre à l''entreprise, clairement présenté comme fictif dans notre exemple, pour retenir les techniciens déjà en
poste ; et la mobilité interne, en proposant à des techniciens expérimentés de Dakar d''ouvrir les nouveaux sites
contre une prime de mobilité. Notez bien que chaque axe répond à un risque précis : la formation répond au
risque de pénurie externe, la fidélisation répond au risque de perte des compétences déjà acquises, et la
mobilité répond au risque de démarrage sans savoir-faire sur un nouveau site.

## 40:00 – 48:00 · Quiz interactif à mi-parcours

Faisons une pause active. Première question : dans le cas Teranga, pourquoi l''écart stratégique RH porte-t-il
davantage sur les techniciens que sur les ouvriers de production ? Deuxième question : si le taux de rotation
des techniciens passait de 18 % à 30 % l''année suivante, que faudrait-il réviser dans le plan d''action ?
Troisième question : citez un risque, autre que la pénurie de compétences, lié à l''implantation d''une nouvelle
usine dans une ville différente. Prenez deux minutes pour noter vos réponses, puis nous les reprenons ensemble.
Pour la première question, la réponse attendue est que les techniciens constituent une compétence rare sur le
marché local, contrairement aux ouvriers, plus facilement remplaçables. Pour la deuxième, il faudrait renforcer
l''axe fidélisation et probablement revoir le calendrier d''ouverture, car un turnover en forte hausse signale que
les mesures existantes ne suffisent plus. Pour la troisième, on peut citer le risque d''image employeur ou le
risque de tensions avec les communautés locales en matière d''emploi.

## 48:00 – 65:00 · Étude de cas filée : Dakar Digital Solutions

Passons à un second cas, que je vous invite à traiter avec moi en temps réel. Dakar Digital Solutions, entreprise
de services fictive, emploie 150 salariés et veut doubler son activité en deux ans en misant sur l''intelligence
artificielle appliquée à la relation client. Elle estime avoir besoin de 60 postes supplémentaires, dont 25 dans
des compétences data et intelligence artificielle, quasi inexistantes sur le marché local. Appliquons la méthode
en quatre étapes. Étape un : la stratégie est une croissance portée par une innovation technologique. Étape
deux : le besoin RH porte sur 60 postes, dont 25 critiques. Étape trois : l''écart stratégique majeur porte sur
ces 25 postes rares, le reste du besoin étant plus classique. Étape quatre : le plan d''action doit combiner une
reconversion accélérée de profils informatiques internes existants, un recrutement ciblé d''un petit noyau
d''experts seniors capables de former les équipes, et une politique de rétention spécifique pour ces profils très
recherchés, afin que l''investissement de formation ne profite pas finalement à la concurrence.

## 65:00 – 75:00 · Les limites et risques de la posture business partner

Je veux insister sur un point souvent oublié dans les copies : la posture de business partner a aussi ses
limites. Un risque fréquent est que la fonction RH, en voulant trop s''aligner sur la stratégie d''entreprise,
perde de vue sa mission de garant de l''équité et de la conformité sociale ; un plan de croissance peut, par
exemple, pousser à recruter très vite au détriment de la qualité de l''intégration, ou à négliger le droit
social dans l''urgence. Un bon business partner sait dire à la direction générale qu''un calendrier stratégique
est irréaliste au regard des contraintes RH réelles, plutôt que de l''accepter sans discussion. C''est cette
capacité à la fois d''alignement et de recul critique qui est évaluée dans vos copies de Master.

## 75:00 – 85:00 · Synthèse et méthode de rédaction en examen

Pour synthétiser : face à un cas d''examen sur ce thème, suivez toujours la méthode en quatre étapes, vérifiez
systématiquement vos calculs (additions, pourcentages), proposez plusieurs axes d''action argumentés et reliés
chacun à un risque précis, et n''hésitez pas à exprimer une réserve critique sur la stratégie elle-même si les
données du cas le justifient. C''est cette combinaison de rigueur chiffrée et de recul analytique qui distingue
une copie de Master 1 d''une simple récitation de cours.

## 85:00 – 90:00 · Évaluation finale

Cinq questions pour conclure. Un, quelle est la différence entre le rôle d''expert fonctionnel et le rôle de
partenaire stratégique de la fonction RH ? Deux, dans le cas Teranga, à combien s''élève l''effectif cible total
à trois ans et quel est le pourcentage de progression par rapport à l''effectif actuel ? Trois, pourquoi un plan
RH doit-il combiner plusieurs leviers plutôt qu''un seul ? Quatre, citez un risque de la posture business partner
évoqué dans ce cours. Cinq, dans le cas Dakar Digital Solutions, quel est l''écart stratégique RH principal ?
Réponses : un, l''expert fonctionnel maîtrise un domaine technique RH (droit, paie, SIRH) tandis que le
partenaire stratégique participe aux choix de l''entreprise elle-même. Deux, l''effectif cible est de 850
salariés, soit une progression d''environ 77 % par rapport à 480. Trois, parce qu''une solution unique est
fragile face aux aléas et qu''un plan robuste doit couvrir plusieurs risques à la fois. Quatre, par exemple le
risque de négliger l''équité ou la conformité sociale au profit de la vitesse stratégique. Cinq, le besoin de 25
postes en compétences data et intelligence artificielle, quasi absentes du marché local. Merci à toutes et à
tous, je vous retrouve pour le prochain cours consacré à l''audit social et au diagnostic RH.', 'video', 90, false, 60
from public.courses c where c.slug = 'mas-rh-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Stratégie RH et business partner');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Audit social et diagnostic RH', '## Fiche du cours vidéo

Durée : 1h30. Public : étudiants de Master 1 en ressources humaines. Objectifs : savoir calculer et interpréter
les indicateurs RH avancés, et construire un diagnostic social argumenté à partir de données chiffrées. Matériel
: tableau ou diaporama, calculatrice, dossier de cas Groupe Sahel Logistique. Prérequis : notions de base de
suivi RH vues en Licence (paie, administration du personnel).

## Déroulé minuté

## 00:00 – 05:00 · Ouverture : pourquoi un chiffre seul ne dit rien

Bonjour à toutes et à tous. Je commence par une affirmation volontairement provocante : un indicateur RH isolé,
sans comparaison, ne vaut presque rien. Un taux de rotation de 20 % vous semble-t-il élevé ? Vous ne pouvez pas
répondre sans savoir dans quel secteur, dans quelle entreprise, et par rapport à quelle évolution. C''est le fil
rouge de tout ce cours sur l''audit social : la rigueur du calcul ne suffit pas, il faut toujours l''accompagner
d''une comparaison pertinente avant d''interpréter.

## 05:00 – 18:00 · Les indicateurs RH avancés et leurs formules

Reprenons les formules essentielles, en vérifiant bien numérateur et dénominateur. Le taux de rotation : nombre
de départs sur la période, divisé par l''effectif moyen de la période. Le taux d''absentéisme : nombre de
jours d''absence, divisé par le nombre théorique de jours travaillés sur la période. Le ratio masse salariale
sur chiffre d''affaires : masse salariale totale, divisée par le chiffre d''affaires. Le taux de promotion
interne : nombre de promotions, divisé par l''effectif. Je vous montre à l''écran un tableau récapitulatif avec
ces quatre formules ; notez-les précisément, une erreur de dénominateur est l''erreur la plus fréquente que je
vois dans les copies.

## 18:00 – 35:00 · Étude de cas filée : Groupe Sahel Logistique, calculs

Passons au cas du Groupe Sahel Logistique, entreprise fictive de transport et d''entreposage avec un site à
Dakar (420 salariés en moyenne) et un site à Thiès (180 salariés en moyenne). Calculons ensemble le taux de
rotation de chaque site. À Dakar, 63 départs sur l''année : 63 divisé par 420 égale 0,15, donc 15 %. À Thiès, 45
départs sur l''année : 45 divisé par 180 égale 0,25, donc 25 %. Calculons maintenant le taux global du groupe :
total des départs, 63 plus 45 égale 108 ; total des effectifs, 420 plus 180 égale 600 ; taux global, 108 divisé
par 600 égale 0,18, donc 18 %. Posez-vous la question : ce chiffre de 18 % vous dit-il quelque chose d''utile sur
Thiès ou sur Dakar prise séparément ? Non : il les mélange et masque un écart de dix points entre les deux
sites. C''est exactement le piège que je vous demande d''éviter dans vos copies : ne jamais vous arrêter à une
moyenne globale.

## 35:00 – 48:00 · Croiser les indicateurs : l''absentéisme de Thiès

Poursuivons avec l''absentéisme. À Thiès, 2 700 jours d''absence pour 180 salariés à 220 jours théoriques chacun,
soit un total théorique de 180 fois 220 égale 39 600 jours-salarié. Le taux d''absentéisme est donc de 2 700
divisé par 39 600, soit environ 0,068, donc environ 6,8 %. À Dakar, 1 800 jours d''absence pour 420 salariés à
220 jours théoriques, soit 420 fois 220 égale 92 400 jours-salarié théoriques ; le taux d''absentéisme est de
1 800 divisé par 92 400, soit environ 0,0195, donc environ 2 %. Observez : Thiès cumule un taux de rotation de
25 % et un taux d''absentéisme de 6,8 %, tous deux nettement supérieurs à Dakar. Quand deux indicateurs pointent
dans la même direction sur le même site, c''est un signal fort qu''il existe un problème local spécifique
(conditions de travail, management, attractivité du site), plutôt que deux problèmes indépendants ou un hasard
statistique.

## 48:00 – 56:00 · Quiz interactif à mi-parcours

Pause active. Première question : que feriez-vous si, au contraire, le taux de rotation de Thiès était élevé
mais le taux d''absentéisme identique à celui de Dakar ? Deuxième question : pourquoi est-il incorrect de
comparer directement le taux de rotation de Sahel Logistique à celui d''une banque ? Troisième question :
citez une source de données, autre que le calcul de taux, qui permettrait d''affiner le diagnostic sur Thiès.
Notez vos réponses. Pour la première, une rotation élevée sans absentéisme élevé associé orienterait plutôt
vers un problème d''attractivité externe (salaires, concurrence locale) que vers un problème de conditions de
travail internes, ce qui changerait la piste d''investigation. Pour la deuxième, les secteurs ont des
dynamiques de marché du travail différentes, et comparer sans ajustement sectoriel conduit à des conclusions
erronées. Pour la troisième, on peut citer les entretiens de départ ou une enquête de climat social menée
spécifiquement sur le site de Thiès. Ajoutons une nuance utile en examen : si l''enquête révélait que le turnover
de Thiès est en réalité concentré sur un seul atelier d''une quarantaine de salariés, le diagnostic basculerait
d''un problème de site vers un problème d''équipe ou de management de proximité, ce qui changerait totalement la
nature de la recommandation à formuler.

## 56:00 – 70:00 · Second cas chiffré : Baobab Télécom

Prenons un second exemple pour systématiser la méthode. Baobab Télécom, entreprise fictive, a un effectif
moyen de 900 salariés, 108 départs sur l''année, et 19 800 jours d''absence pour un total théorique de 198 000
jours-salarié. Calculons : taux de rotation, 108 divisé par 900 égale 0,12, donc 12 %. Taux d''absentéisme,
19 800 divisé par 198 000 égale 0,10, donc 10 %. Sans aucune donnée de comparaison externe ni historique
interne, que pouvons-nous honnêtement conclure ? Rien de définitif : nous pouvons seulement formuler des
hypothèses à vérifier, par exemple en segmentant ces chiffres par ancienneté, par métier ou par site, et en
regardant leur évolution sur les trois dernières années avant de qualifier la situation de préoccupante ou
non. C''est cette rigueur, plutôt qu''une conclusion hâtive, qui est valorisée dans vos copies.

## 70:00 – 80:00 · Construire un bilan social argumenté

Un bilan social ne doit jamais être une simple liste de chiffres : il doit déboucher sur un diagnostic et une
recommandation. La structure que je vous recommande : présenter les indicateurs clés avec leur évolution ;
identifier les écarts significatifs (entre sites, entre segments, dans le temps) ; croiser au moins deux
indicateurs pour distinguer un problème ponctuel d''un problème structurel ; et conclure par une recommandation
d''action précise et priorisée, par exemple « mener une investigation qualitative ciblée sur le site de Thiès
avant toute décision de politique salariale generale », plutôt qu''une mesure uniforme pour tout le groupe.

## 80:00 – 85:00 · Les limites et précautions méthodologiques de l''audit social

Avant de conclure, j''attire votre attention sur trois précautions supplémentaires que les correcteurs
apprécient particulièrement. Premièrement, attention aux effectifs moyens : si l''effectif d''une entreprise
varie beaucoup en cours d''année (saisonnalité, recrutement massif en fin d''année), un effectif moyen mal
calculé fausse tous les taux qui en découlent ; vérifiez toujours comment cet effectif moyen a été obtenu avant
de l''utiliser. Deuxièmement, attention à la confusion entre corrélation et causalité : parce que deux
indicateurs évoluent dans le même sens sur un même site, comme la rotation et l''absentéisme à Thiès, cela ne
prouve pas qu''ils ont la même cause ; ce sont des signaux convergents qui justifient une investigation, pas une
preuve en soi. Troisièmement, attention au contexte culturel et social local : dans certains contextes
africains, un absentéisme peut aussi refléter des contraintes externes, comme l''éloignement du lieu de travail
ou des obligations familiales, et non uniquement un désengagement ; un bon diagnostic RH explore toujours les
motifs réels avant d''attribuer une cause unique à un chiffre. Gardez également en tête qu''un audit social
sérieux documente ses sources : indiquez toujours, dans une copie, d''où viennent vos chiffres et quelles
hypothèses de calcul vous retenez, par exemple le nombre de jours théoriques travaillés utilisé pour calculer
un taux d''absentéisme, car un correcteur attentif vérifiera la cohérence de vos hypothèses avant même de
regarder le résultat chiffré final.

## 85:00 – 90:00 · Évaluation finale

Cinq questions. Un, quelle est la formule du taux de rotation ? Deux, dans le cas Sahel Logistique, pourquoi le
taux global de 18 % est-il trompeur ? Trois, que signifie le fait que Thiès cumule rotation et absentéisme
élevés par rapport à Dakar ? Quatre, dans le cas Baobab Télécom, quels taux avez-vous calculés ? Cinq, citez
deux éléments indispensables à la structure d''un bilan social argumenté. Réponses : un, le nombre de départs
sur la période divisé par l''effectif moyen de la période. Deux, parce qu''il mélange deux situations très
différentes, 15 % à Dakar et 25 % à Thiès, et masque l''écart entre les deux sites. Trois, cela suggère un
problème local spécifique au site de Thiès plutôt que deux phénomènes indépendants. Quatre, un taux de
rotation de 12 % et un taux d''absentéisme de 10 %. Cinq, par exemple l''identification des écarts significatifs
et une recommandation d''action priorisée. Merci à toutes et à tous, rendez-vous pour le cours sur le droit
social avancé et la gestion des contentieux.', 'video', 90, false, 70
from public.courses c where c.slug = 'mas-rh-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Audit social et diagnostic RH');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Droit social avancé et gestion des contentieux', '## Fiche du cours vidéo

Durée : 1h30. Public : étudiants de Master 1 en ressources humaines. Objectifs : savoir analyser les risques
juridiques d''une décision de rupture du contrat de travail et proposer une démarche de sécurisation, en
contexte de transition du cadre légal sénégalais. Matériel : tableau ou diaporama, dossier de cas Dakar
Industries Métalliques. Prérequis : notions de base de droit du travail vues en Licence.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture et avertissement méthodologique

Bonjour à toutes et à tous. Avant de commencer, un avertissement important : le code du travail sénégalais est
actuellement en transition, avec un projet de réforme en discussion. Je ne vais donc citer aucun article précis
ni aucun délai exact dans ce cours : nous allons travailler sur les mécanismes généraux, ceux qui structurent
le droit social dans la plupart des systèmes comparables, et je vous rappellerai à chaque étape qu''il faut
vérifier le texte en vigueur au moment des faits. C''est cette posture de prudence qui sera valorisée dans vos
copies, bien plus qu''une fausse précision.

## 05:00 – 15:00 · Les trois piliers de la sécurisation d''un licenciement

Trois piliers généraux structurent la sécurisation d''un licenciement, qu''il soit pour motif personnel ou
économique. Premier pilier : un motif réel et sérieux, c''est-à-dire des faits établis et suffisamment graves
pour justifier la rupture. Deuxième pilier : une procédure respectée, incluant une information du salarié et,
selon les cas, une consultation des représentants du personnel. Troisième pilier : une traçabilité des faits,
c''est-à-dire des documents, évaluations ou avertissements antérieurs qui permettent, en cas de contestation, de
démontrer la réalité et la gravité du motif invoqué. Retenez cette grille en trois piliers, nous allons
l''appliquer immédiatement à un cas concret.

## 15:00 – 30:00 · Étude de cas filée : Dakar Industries Métalliques

Prenons le cas de Monsieur Fall, chef d''équipe depuis six ans dans l''entreprise fictive Dakar Industries
Métalliques, que le directeur d''usine souhaite licencier après un incident où il aurait quitté son poste sans
autorisation pendant deux heures, provoquant un arrêt de chaîne estimé à 1 200 000 FCFA de perte, chiffre
fictif pour l''exemple. Appliquons notre grille en trois piliers. Premier pilier, le motif réel et sérieux :
l''unique preuve est le rapport du superviseur, sans témoignage complémentaire ni relevé horaire objectif ;
c''est un motif fragile en l''état. Deuxième pilier, la procédure : rien n''indique qu''un entretien contradictoire
a été mené avec Monsieur Fall avant d''envisager la sanction. Troisième pilier, la traçabilité : Monsieur Fall n''a
aucun antécédent disciplinaire en six ans, ce qui affaiblit l''argument d''un comportement fautif récurrent.
Conclusion à ce stade : les trois piliers sont fragiles, le risque de contestation est élevé si l''entreprise
licencie immédiatement.

## 30:00 – 42:00 · Construire une recommandation de sécurisation

Face à ce diagnostic, quelle recommandation professionnelle formuler ? Je vous propose une démarche en deux
temps. D''abord, avant toute décision, compléter le dossier : mener un entretien contradictoire formel avec
Monsieur Fall pour recueillir sa version, et chercher à vérifier son affirmation selon laquelle il aurait
prévenu un collègue avant de quitter son poste. Ensuite, sur la sanction elle-même : si les faits sont confirmés
mais restent isolés et sans antécédent, envisager une sanction disciplinaire intermédiaire, comme un
avertissement écrit, plutôt qu''un licenciement immédiat, ce qui réduit fortement le risque juridique tout en
marquant la gravité du fait. C''est cette logique de gradation et de sécurisation préalable, et non la sévérité
immédiate, qui démontre la maîtrise du droit social avancé.

## 42:00 – 50:00 · Quiz interactif à mi-parcours

Pause active. Première question : parmi les trois piliers, lequel est le plus fragile dans le cas de Monsieur
Fall et pourquoi ? Deuxième question : que changerait, dans votre recommandation, le fait que Monsieur Fall ait
déjà deux avertissements écrits pour un comportement similaire au cours de l''année précédente ? Troisième
question : pourquoi est-il risqué de citer un délai précis en jours dans une copie portant sur le droit social
sénégalais actuellement ? Notez vos réponses. Pour la première, le pilier le plus fragile est la traçabilité et
le motif réel et sérieux, faute de preuve solide et d''antécédent. Pour la deuxième, deux avertissements
préalables renforceraient nettement le dossier disciplinaire et pourraient justifier une sanction plus sévère,
y compris un licenciement, avec un risque juridique réduit. Pour la troisième, parce que le cadre légal est en
transition et qu''un délai mémorisé peut être obsolète au moment de l''examen ou des faits réels.

## 50:00 – 62:00 · La négociation collective comme source de risque

Changeons de dimension : la négociation collective. Un accord collectif mal rédigé ou mal appliqué peut lui-
même devenir une source de contentieux. Exemple : une entreprise négocie avec les représentants du personnel
un accord prévoyant une prime de productivité, mais l''accord est rédigé de façon ambiguë sur son mode de
calcul. Deux ans plus tard, des salariés contestent le montant perçu, estimant que l''accord prévoyait un calcul
plus favorable. Ce type de contentieux collectif aurait pu être évité par une rédaction précise et des exemples
chiffrés annexés à l''accord. Retenez : la qualité rédactionnelle d''un accord collectif est elle-même un outil de
prévention des contentieux, pas seulement son contenu négocié.

## 62:00 – 72:00 · Principes généraux du contentieux prud''homal

Abordons maintenant les principes généraux d''un contentieux devant les juridictions du travail, toujours sans
délai précis. La logique généralement observée est la suivante : une tentative de conciliation précède souvent
un éventuel jugement au fond, ce qui laisse une fenêtre pour trouver un accord amiable, par exemple une
transaction financière, avant d''aller plus loin. Pour l''employeur, la décision de poursuivre jusqu''au jugement
ou de transiger dépend de l''évaluation de trois éléments : la solidité de son dossier de preuve, le risque
financier chiffrable d''une condamnation éventuelle, et le risque réputationnel, notamment si le litige devient
public ou affecte le climat social interne. Un bon professionnel RH sait présenter cette analyse de risque à sa
direction de façon factuelle, sans dramatiser ni minimiser.

## 72:00 – 78:00 · Le licenciement économique : points de vigilance spécifiques

Un mot particulier sur le motif économique, souvent moins travaillé que le motif personnel par les étudiants.
Au-delà des trois piliers déjà vus, un licenciement économique suppose généralement de démontrer la réalité
économique invoquée (difficultés réelles, réorganisation justifiée par la sauvegarde de la compétitivité, ou
mutation technologique), de respecter un ordre de choix des postes supprimés fondé sur des critères objectifs
plutôt qu''arbitraires, et d''envisager, selon le mécanisme applicable, une recherche de reclassement avant la
rupture effective. Un professionnel RH avisé documente chacun de ces éléments avant même d''annoncer le projet,
car c''est souvent l''absence de cette documentation préalable, plus que le motif économique lui-même, qui est
sanctionnée en cas de contestation, un examinateur ou un conciliateur jugeant d''abord la méthode suivie par
l''employeur avant de se prononcer sur le fond du motif invoqué.

## 78:00 – 83:00 · Synthèse méthodologique

Pour synthétiser ce cours, retenez la méthode en quatre étapes face à un cas de droit social avancé : qualifier
juridiquement la situation ; identifier les risques de contestation au regard des trois piliers de
sécurisation ; évaluer les moyens de sécurisation disponibles avant toute décision ; et, si un contentieux est
déjà engagé, analyser la position de chaque partie pour recommander une stratégie. Rappelez-vous aussi la règle
d''or de ce module : jamais de numéro d''article ni de délai précis sans réserve explicite sur la nécessité de
vérifier le texte en vigueur.

## 83:00 – 90:00 · Évaluation finale

Six questions pour conclure. Zéro, pourquoi un licenciement économique exige-t-il, en plus des trois piliers
généraux, un critère de choix objectif des postes supprimés ? Réponse : parce que, à motif économique égal,
l''employeur doit démontrer qu''il n''a pas choisi arbitrairement qui perd son emploi, sous peine que la décision
soit contestée pour rupture d''égalité de traitement entre salariés placés dans une situation comparable. Un,
quels sont les trois piliers de sécurisation d''un licenciement ? Deux,
pourquoi le cas de Monsieur Fall présente-t-il un risque juridique élevé en l''état ? Trois, que recommande-t-on
avant toute décision disciplinaire dans ce cas ? Quatre, pourquoi un accord collectif mal rédigé peut-il devenir
une source de contentieux ? Cinq, sur quels trois éléments l''employeur doit-il s''appuyer pour décider entre
poursuite d''un contentieux et transaction ? Réponses : un, un motif réel et sérieux, une procédure respectée, et
une traçabilité des faits. Deux, parce que la seule preuve est un rapport non corroboré et que le salarié n''a
aucun antécédent disciplinaire. Trois, mener un entretien contradictoire et chercher à vérifier la version du
salarié avant toute sanction. Quatre, parce qu''une ambiguïté de rédaction peut être interprétée différemment
par les salariés et l''employeur, créant un désaccord ultérieur sur son application. Cinq, la solidité du
dossier de preuve, le risque financier chiffrable, et le risque réputationnel. Merci à toutes et à tous, rendez-
vous pour le dernier cours vidéo, l''atelier transversal qui relie stratégie RH, audit social et droit social sur
un même cas d''entreprise.', 'video', 90, false, 80
from public.courses c where c.slug = 'mas-rh-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Droit social avancé et gestion des contentieux');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Atelier transversal — stratégie RH, audit social et droit social', '## Fiche du cours vidéo

Durée : 1h30. Public : étudiants de Master 1 en ressources humaines. Objectifs : mobiliser ensemble les trois
matières de l''année (stratégie RH, audit social, droit social avancé) sur un cas d''entreprise transversal
unique, pour s''entraîner dans des conditions proches de l''examen. Matériel : tableau ou diaporama, dossier de
cas complet distribué en amont, calculatrice. Prérequis : avoir suivi les trois cours vidéo précédents.

## Déroulé minuté

## 00:00 – 06:00 · Présentation de l''atelier et du cas transversal

Bonjour à toutes et à tous. Cette dernière séance est un atelier de synthèse : nous allons traiter un seul cas
d''entreprise fictive, Rufisque Confection Export, en mobilisant successivement les trois matières de l''année,
exactement comme vous devrez le faire le jour de l''examen. L''objectif n''est pas d''apprendre de nouvelles
notions, mais de vous entraîner à passer rapidement et rigoureusement d''une matière à l''autre sur un même
dossier, ce qui est souvent le point faible des copies, même chez les étudiants qui connaissent bien chaque
matière séparément.

## 06:00 – 12:00 · Présentation du cas Rufisque Confection Export

Rufisque Confection Export est une entreprise fictive de confection textile employant 340 salariés, en forte
croissance grâce à des commandes à l''export vers la sous-région UEMOA. La direction générale annonce un
doublement de la capacité de production en dix-huit mois, nécessitant 180 opérateurs supplémentaires et 20
techniciens de maintenance industrielle, alors que seuls 4 techniciens sur 20 ont été recrutés en six mois de
campagne. Par ailleurs, les données sociales de l''année montrent 51 départs pour un effectif moyen de 340, et
7 480 jours d''absence pour un total théorique de 74 800 jours-salarié. Enfin, un opérateur de confection,
employé depuis deux ans, est absent sans justificatif depuis trois jours, affirmant avoir été hospitalisé, et
la direction envisage un licenciement pour faute.

## 12:00 – 28:00 · Séquence 1 : volet stratégie RH

Reprenons la méthode en quatre étapes vue dans le premier cours vidéo. La stratégie annoncée est une croissance
par doublement de capacité. Le besoin RH induit est de 200 postes supplémentaires au total, 180 opérateurs et
20 techniciens. Vérifions : 180 plus 20 égale bien 200. L''écart stratégique majeur porte sur les techniciens :
seuls 4 recrutés sur 20 en six mois, soit un taux de réalisation de 4 divisé par 20, c''est-à-dire 20 %,
largement insuffisant face au calendrier de dix-huit mois. Le plan d''action que nous proposons combine un axe
de formation accélérée par partenariat avec un centre de formation technique régional, et un axe de
recrutement élargi à la sous-région UEMOA avec appui à la mobilité. Notez que, comme pour Teranga Agro-
Industries, le problème ne porte pas sur le volume global de recrutement mais sur un segment de compétence
rare, identifié par la comparaison entre le besoin et la capacité réelle du marché.

## 28:00 – 44:00 · Séquence 2 : volet audit social

Passons au diagnostic social. Taux de rotation : 51 divisé par 340, soit 0,15, donc 15 %. Taux d''absentéisme :
7 480 divisé par 74 800, soit 0,10, donc 10 %. Comme nous l''avons vu dans le deuxième cours vidéo, ces chiffres
ne peuvent pas être interprétés isolément. Dans ce contexte précis de forte croissance et de recrutement massif
récent, posons l''hypothèse suivante, à vérifier : une partie du taux de rotation de 15 % pourrait correspondre à
des départs de salariés récemment recrutés en période d''essai, ce qui serait moins préoccupant qu''un taux
identique touchant des salariés anciens. La recommandation méthodologique est de demander, avant de conclure,
une segmentation du taux de rotation par ancienneté : c''est exactement le type de réserve critique qui valorise
une copie de Master 1 par rapport à une copie qui se contenterait de qualifier 15 % de « élevé » ou « normal »
sans justification.

## 44:00 – 52:00 · Quiz interactif à mi-parcours

Pause active. Première question : pourquoi l''écart stratégique RH de Rufisque Confection Export porte-t-il sur
les techniciens et non sur les opérateurs ? Deuxième question : quelle donnée supplémentaire demanderiez-vous
avant de qualifier le taux de rotation de 15 % de préoccupant ou non ? Troisième question : à ce stade, que
savons-nous déjà sur le risque juridique du dossier de l''opérateur absent ? Notez vos réponses. Pour la
première, parce que les techniciens sont une compétence rare localement, avec un taux de réalisation de
recrutement de seulement 20 % face au besoin. Pour la deuxième, la segmentation du taux de rotation par
ancienneté, pour distinguer les départs en période d''essai des départs de salariés confirmés. Pour la
troisième, nous savons seulement que l''absence n''est à ce jour pas documentée comme fautive de façon certaine,
ce qui doit nous rendre prudents avant toute décision, point que nous allons développer maintenant.

## 52:00 – 70:00 · Séquence 3 : volet droit social avancé

Appliquons la grille en trois piliers du troisième cours vidéo au cas de l''opérateur absent. Premier pilier, le
motif réel et sérieux : l''absence de justificatif à ce jour n''établit pas encore une faute certaine, puisque le
salarié invoque une hospitalisation non vérifiée. Deuxième pilier, la procédure : rien n''indique qu''un entretien
contradictoire a été mené ni qu''une demande formelle de justificatif a été adressée au salarié. Troisième
pilier, la traçabilité : nous ne connaissons pas, dans cet énoncé, les antécédents disciplinaires de ce salarié,
ce qui est une donnée manquante importante à signaler dans votre copie plutôt qu''à ignorer. La recommandation
de sécurisation est la même logique que pour Monsieur Fall : solliciter formellement un justificatif, mener un
entretien contradictoire, et ne qualifier la situation qu''une fois ces démarches effectuées, avant toute
décision de licenciement.

## 70:00 – 80:00 · Relier les trois volets entre eux

C''est ici le cœur de l''atelier : montrer que les trois volets ne sont pas trois exercices séparés, mais un seul
diagnostic d''entreprise. Le besoin stratégique de recruter rapidement 200 personnes crée une pression sur les
équipes RH et les managers, qui peut elle-même expliquer en partie des indicateurs sociaux dégradés (rotation,
absentéisme) si l''intégration des nouveaux recrutés est négligée dans l''urgence ; et cette même pression peut
pousser un manager à vouloir sanctionner rapidement, sans respecter la procédure, pour « faire un exemple »
dans une période de tension liée à la montée en charge de production, ce qui est précisément le risque que nous
devons signaler à la direction. Une bonne copie de synthèse relie explicitement ces trois dimensions plutôt que
de les traiter comme trois questions indépendantes.

## 80:00 – 84:00 · Une dernière nuance : la temporalité des trois volets

Avant de passer à la méthode finale, une nuance importante : les trois volets de ce cas n''ont pas la même
urgence de décision. Le volet droit social (l''absence de l''opérateur) appelle une action immédiate, sous
quelques jours, car un silence de l''entreprise peut lui-même être interprété comme une forme d''acceptation
tacite ou, au contraire, retarder une sanction nécessaire. Le volet audit social (comprendre le taux de
rotation) est une action de moyen terme, à mener sur plusieurs semaines avec une segmentation fine des
données. Le volet stratégie RH (sécuriser le recrutement des techniciens) est une action de long terme, sur
les dix-huit mois du projet. Une bonne copie doit savoir hiérarchiser ces trois temporalités dans ses
recommandations, plutôt que de les traiter comme des actions de même urgence.

## 84:00 – 87:00 · Méthode de rédaction en conditions d''examen

Pour conclure sur la méthode : en trois heures d''épreuve, consacrez un temps proportionné à chaque volet,
commencez toujours par poser clairement le ou les problèmes avant de proposer une solution, vérifiez
systématiquement vos calculs à voix basse avant de les écrire, et terminez chaque partie par une recommandation
explicite et priorisée. Si le temps le permet, ajoutez toujours une phrase de lien entre les volets, comme nous
venons de le faire : c''est souvent ce qui différencie une très bonne copie d''une bonne copie.

## 87:00 – 90:00 · Évaluation finale

Cinq questions rapides pour conclure l''année. Un, dans le cas Rufisque, quel est le taux de réalisation du
recrutement des techniciens ? Deux, quel est le taux de rotation et le taux d''absentéisme calculés ? Trois,
quel est le pilier le plus fragile dans le dossier de l''opérateur absent ? Quatre, citez un lien possible entre
la pression stratégique de recrutement et les indicateurs sociaux. Cinq, quelle est la méthode générale à
appliquer face à tout cas transversal de Master 1 ? Réponses : un, 20 %, soit 4 recrutés sur 20 recherchés.
Deux, 15 % de rotation et 10 % d''absentéisme. Trois, le motif réel et sérieux, faute de justificatif vérifié.
Quatre, une pression de recrutement et de montée en charge peut dégrader l''intégration des nouveaux salariés et
expliquer en partie une rotation ou un absentéisme élevés. Cinq, poser le problème, mobiliser les concepts
pertinents de chaque matière, vérifier les calculs, proposer une solution argumentée et priorisée, et relier les
volets entre eux. Merci à toutes et à tous pour votre travail cette année, et bon courage pour vos examens de
Master 1.', 'video', 90, false, 90
from public.courses c where c.slug = 'mas-rh-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Atelier transversal — stratégie RH, audit social et droit social');

-- Cours : Ressources humaines Master 2 : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'mas-rh-m2', (select id from public.levels where name = 'Master 2'), null, 'Ressources humaines', 'Ressources humaines Master 2 : réussir ses examens', 'Préparation aux examens de Master 2 en ressources humaines : conduite du changement et transformation RH (SIRH avancé, digitalisation), rémunération stratégique et politique de talents (people review, succession planning), méthodologie du mémoire professionnel et de la soutenance. Études de cas d''entreprises sénégalaises et africaines fictives, exercices corrigés et sujet type d''examen. Public : étudiants de Master 2 RH ayant validé le Master 1.', true, 702
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Master 2 en ressources humaines', 'Le Master 2 en ressources humaines est l''année de la professionnalisation complète : vous devez
démontrer que vous pouvez piloter une transformation RH, construire une politique de rémunération et de
talents cohérente avec la stratégie de l''entreprise, et conduire un travail de recherche appliquée (le
mémoire professionnel) jusqu''à sa soutenance. Les exigences de rigueur et d''analyse critique du Master 1 sont
reconduites et approfondies, avec cette fois une dimension supplémentaire : la capacité à produire et
défendre, à l''oral, un travail personnel structuré.

## Ce qui change par rapport au Master 1

En Master 1, vous avez appris à aligner la stratégie RH sur la stratégie d''entreprise, à construire un
diagnostic social chiffré et à sécuriser des décisions de droit social. Le Master 2 mobilise ces acquis au
service de trois nouveaux enjeux. D''abord, la conduite du changement et la transformation RH : comment faire
évoluer une organisation, ses outils (SIRH avancé, digitalisation des processus RH) et sa culture, sans perdre
l''adhésion des équipes. Ensuite, la rémunération stratégique et la politique de talents : comment construire
une politique salariale et de gestion des carrières qui attire, retient et développe les profils clés, via des
outils comme la people review et le succession planning. Enfin, la méthodologie du mémoire professionnel et de
la soutenance : comment transformer une problématique RH réelle, rencontrée en stage ou en entreprise, en un
travail de recherche appliquée rigoureux, puis le défendre devant un jury.

## Les trois matières avancées de l''année

La conduite du changement et la transformation RH vous apprend à analyser les résistances au changement
(individuelles, collectives, organisationnelles), à choisir une démarche de conduite du changement adaptée au
contexte (communication, formation, accompagnement managérial), et à piloter un projet de digitalisation RH
(par exemple le passage à un SIRH avancé intégrant la gestion des talents) en anticipant les risques
d''adoption par les utilisateurs, pas seulement les aspects techniques.

La rémunération stratégique et la politique de talents approfondit la rémunération vue en Licence (qui portait
sur les mécanismes de base de la paie) pour aborder la rémunération comme un outil stratégique : architecture
de rémunération globale, politique de différenciation selon la criticité des postes, et outils de gestion des
talents comme la people review (revue collective des collaborateurs clés et de leur potentiel) et le
succession planning (préparation anticipée de la relève sur les postes critiques).

La méthodologie du mémoire professionnel et de la soutenance vous enseigne à formuler une problématique RH
pertinente et traitable, à structurer une démarche d''analyse rigoureuse (revue de littérature, méthodologie de
collecte de données, analyse, recommandations), et à préparer une soutenance orale convaincante devant un jury,
en anticipant les questions critiques qu''il pourrait poser.

## Méthode de travail pour le Master 2

Trois outils deviennent centraux cette année. D''abord, le diagnostic de changement : avant toute recommandation
de transformation, vous devez identifier précisément qui résiste, pourquoi, et à quel stade du projet, plutôt
que de proposer une communication générique. Ensuite, le business case RH appliqué aux talents : vous devez
être capable de chiffrer l''impact d''une politique de rémunération ou de fidélisation (coût d''un dispositif,
coût du turnover évité) et de le présenter comme un investissement, pas seulement une dépense. Enfin, la
démarche de recherche appliquée : pour le mémoire, vous devez savoir distinguer une problématique de recherche
(une question qui demande une investigation) d''une simple question descriptive, et construire une méthodologie
cohérente (entretiens, étude de cas, analyse documentaire) pour y répondre.

Un piège fréquent en Master 2 est de traiter la conduite du changement comme un sujet uniquement
communicationnel, en oubliant la dimension organisationnelle (qui perd du pouvoir, qui gagne des
responsabilités, quels processus sont réellement modifiés). De même, beaucoup d''étudiants réduisent la
politique de talents à un sujet de rémunération financière, en oubliant les leviers non financiers
(reconnaissance, parcours de carrière, autonomie), pourtant essentiels dans un contexte de ressources
budgétaires souvent contraintes pour beaucoup d''entreprises africaines.

## Plan de révision sur six semaines

Semaine 1 : reprendre les acquis du Master 1 (stratégie RH, diagnostic social, droit social) pour s''assurer
qu''ils sont mobilisables, puis lire l''intégralité du cours sur la conduite du changement et la transformation
RH.

Semaine 2 : travailler la conduite du changement en profondeur, avec au moins deux cas pratiques complets, en
s''entraînant à construire un diagnostic des résistances au changement à partir d''un cas donné.

Semaine 3 : passer à la rémunération stratégique et à la politique de talents, en s''entraînant à construire une
grille de criticité des postes et un exercice simple de succession planning.

Semaine 4 : traiter la méthodologie du mémoire professionnel, en rédigeant un exemple de problématique de
recherche à partir d''une situation professionnelle fictive ou réelle, et en construisant un plan de mémoire type.

Semaine 5 : faire et refaire le sujet type d''examen multi-matières dans les conditions du jour J, puis comparer
au corrigé détaillé et identifier les points faibles.

Semaine 6 : révision croisée entre les trois matières, en s''entraînant à l''oral sur une présentation courte de
trois minutes de son sujet de mémoire (ou d''un sujet fictif), exercice proche de l''épreuve de soutenance, et
relecture active des quatre cours vidéo, dont l''atelier dédié à la méthodologie du mémoire.

## Points clés à retenir

- Le Master 2 évalue la capacité à piloter une transformation RH, à construire une politique de talents
chiffrée, et à mener une démarche de recherche appliquée rigoureuse jusqu''à sa défense orale.
- La conduite du changement exige un diagnostic précis des résistances avant toute action de communication.
- La politique de talents combine des leviers financiers et non financiers ; ne réduisez jamais ce sujet à la
seule rémunération.
- La méthodologie du mémoire doit être travaillée comme une matière à part entière, avec autant de rigueur que
les matières RH classiques.

## Exercices pratiques

1. Expliquez la différence entre une résistance au changement individuelle et une résistance organisationnelle,
avec un exemple pour chacune.
2. Citez deux leviers non financiers de fidélisation des talents et justifiez leur intérêt dans un contexte de
budget contraint.
3. Qu''est-ce qu''une people review, et en quoi se distingue-t-elle d''un simple entretien annuel d''évaluation ?
4. Formulez, en une phrase, une problématique de mémoire professionnel pertinente à partir du thème suivant :
« la digitalisation du processus de recrutement dans une PME sénégalaise ».
5. Construisez un plan de révision personnel sur six semaines en adaptant celui proposé ci-dessus à votre
emploi du temps, en indiquant au moins deux jalons de contrôle.

## Corrigé

1. Une résistance individuelle est liée à la perception personnelle d''un salarié (peur de perdre ses
compétences, de perdre en autonomie) ; une résistance organisationnelle est liée à la structure elle-même
(un processus de décision qui perd en rapidité, un service qui perd en influence), indépendamment des
personnes concernées.
2. Par exemple : la reconnaissance non financière (valorisation publique des réussites, responsabilités
élargies) et les parcours de carrière visibles (mobilité interne, projets valorisants), qui coûtent peu
financièrement mais répondent à des attentes fortes de motivation et de développement professionnel.
3. La people review est un exercice collectif, mené par le management et la DRH, qui évalue et compare les
collaborateurs clés de l''organisation sur leur performance et leur potentiel, en vue de décisions de
développement ou de succession ; l''entretien annuel est, lui, un exercice individuel et bilatéral entre un
salarié et son manager, centré sur l''année écoulée.
4. Exemple de problématique : « Dans quelle mesure la digitalisation du processus de recrutement permet-elle à
une PME sénégalaise d''améliorer la qualité de ses recrutements sans dégrader l''expérience candidat ? » Une
bonne problématique interroge une tension ou un arbitrage, elle ne se contente pas de décrire un phénomène.
5. Réponse libre ; un bon plan reprend la logique faits → notions → entraînement → correction → synthèse, avec
une attention particulière à l''entraînement oral pour la méthodologie du mémoire.', 'texte', 45, true, 10
from public.courses c where c.slug = 'mas-rh-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Master 2 en ressources humaines');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Conduite du changement et transformation RH (SIRH avancé, digitalisation) : l''essentiel pour l''examen', 'La conduite du changement et la transformation RH constituent le premier pilier avancé du Master 2 :
il s''agit de savoir piloter une transformation organisationnelle, notamment une digitalisation RH via un SIRH
avancé, en anticipant les résistances plutôt qu''en les découvrant en cours de projet.

## Notions clés

La conduite du changement est l''ensemble des démarches qui visent à faire évoluer une organisation (processus,
outils, comportements) en maintenant l''adhésion et la performance des équipes pendant la transition. Un cadre
utile, à discuter de façon critique, distingue trois registres de résistance : la résistance liée à la
compréhension (le changement n''est pas compris ou mal expliqué), la résistance liée à la capacité (le salarié
ne se sent pas outillé pour changer, manque de formation) et la résistance liée à l''adhésion (le changement est
compris et possible, mais rejeté pour des raisons de valeurs, de pouvoir ou de confiance). Un diagnostic de
changement doit identifier lequel de ces registres domine, car le levier d''action diffère fortement selon le
cas : plus de communication ne résout pas un problème de capacité, et plus de formation ne résout pas un
problème d''adhésion.

La transformation RH désigne spécifiquement l''évolution des processus et outils RH eux-mêmes, en particulier
le passage à un SIRH avancé qui intègre non seulement la paie et l''administration du personnel, mais aussi la
gestion des talents, le pilotage des compétences et l''analyse de données RH. Cette digitalisation RH est
souvent un projet à fort enjeu de conduite du changement, car elle touche à la fois les équipes RH elles-mêmes
(nouveaux outils de travail) et l''ensemble des salariés (self-service RH, dématérialisation des démarches).

## Méthode d''analyse d''un cas de conduite du changement

Face à un cas, la méthode recommandée suit quatre étapes. Premièrement, décrire précisément le changement
envisagé (quoi, pour qui, à quel horizon). Deuxièmement, identifier les acteurs concernés et, pour chacun,
le registre de résistance dominant (compréhension, capacité, adhésion). Troisièmement, construire un plan
d''accompagnement différencié par acteur, et non une communication unique pour tous. Quatrièmement, définir des
indicateurs de suivi de l''adoption (taux d''utilisation réel d''un nouvel outil, nombre d''incidents remontés,
enquêtes de perception) pour ajuster le plan en cours de route plutôt que d''attendre la fin du projet pour
évaluer le succès.

## Cas d''entreprise fictif : Baobab Assurances

Baobab Assurances est une compagnie d''assurance fictive employant 260 salariés répartis entre le siège à Dakar
(160 salariés) et quatre agences régionales (100 salariés au total). La direction générale a décidé de déployer
un nouveau SIRH avancé, intégrant un module de self-service pour les demandes de congés et d''avances, un module
de gestion des talents avec évaluation continue, et un tableau de bord RH en temps réel pour les managers.

Le diagnostic de changement mené par la DRH révèle trois situations différentes. Au siège, les équipes RH
elles-mêmes expriment une résistance liée à la capacité : elles maîtrisent mal les nouveaux outils d''analyse de
données et craignent de ne pas pouvoir répondre aux questions des managers lors du lancement. Dans les agences
régionales, les salariés expriment une résistance liée à la compréhension : ils ne savent pas précisément ce
que le nouvel outil va changer dans leur quotidien et craignent, à tort, la suppression de postes administratifs
locaux. Chez certains managers de proximité, enfin, apparaît une résistance liée à l''adhésion : le tableau de
bord en temps réel est perçu comme un outil de contrôle renforcé de leur hiérarchie plutôt que comme une aide à
la décision, ce qui génère une méfiance de fond.

Face à ce diagnostic différencié, la DRH construit un plan en trois volets. Pour l''équipe RH du siège (problème
de capacité) : un programme de formation intensive de deux semaines sur le nouvel outil, avec un accompagnement
individualisé pendant le premier mois d''utilisation réelle. Pour les agences régionales (problème de
compréhension) : une tournée d''information dans chaque agence, avec des exemples concrets illustrant ce qui
change réellement au quotidien, et une clarification explicite qu''aucune suppression de poste n''est prévue à ce
stade. Pour les managers réticents (problème d''adhésion) : des ateliers de co-construction où les managers
participent eux-mêmes à la définition des indicateurs affichés dans leur tableau de bord, afin qu''ils le
perçoivent comme un outil à leur service plutôt qu''un outil de surveillance imposé.

Sur le plan du suivi, la DRH retient trois indicateurs : le taux d''utilisation effective du module self-service
par les salariés (cible fixée par la direction, par exemple à 70 % des demandes de congés dématérialisées au
bout de trois mois, chiffre fictif pour l''exemple), le nombre d''incidents techniques ou de blocages remontés par
semaine, et un score de perception recueilli par une enquête courte auprès des managers deux mois après le
lancement.

## Points clés

- Un diagnostic de changement doit distinguer les registres de résistance (compréhension, capacité, adhésion)
pour chaque groupe d''acteurs, car le levier d''action diffère selon le registre identifié.
- Un plan d''accompagnement du changement est rarement uniforme : il se différencie selon les acteurs et leurs
résistances spécifiques.
- La digitalisation RH via un SIRH avancé n''est pas qu''un projet technique : c''est un projet de conduite du
changement à part entière, qui doit être piloté comme tel.
- Des indicateurs de suivi de l''adoption, mesurés en cours de projet, permettent d''ajuster le plan avant qu''un
échec ne soit constaté trop tard.

## Exercices pratiques

1. Dans le cas Baobab Assurances, pourquoi serait-il inefficace de traiter la résistance des managers de
proximité uniquement par une campagne de communication générale sur les bénéfices du nouvel outil ?
2. Citez un indicateur de suivi de l''adoption, autre que ceux proposés dans le cas, qui pourrait être utile pour
ce projet de SIRH.
3. Expliquez pourquoi un même projet de digitalisation RH peut générer des résistances de nature différente
selon les groupes d''acteurs concernés.
4. Pourquoi la DRH du siège, qui est à l''origine du projet, peut-elle elle-même être une source de résistance
au changement, comme dans le cas Baobab Assurances ?
5. Cas pratique complet : une entreprise fictive de distribution, Sahel Retail, déploie un nouveau module de
gestion des talents dans son SIRH, incluant une auto-évaluation annuelle en ligne pour tous les salariés. Les
retours informels montrent que les salariés de plus de cinquante ans, peu familiers des outils numériques,
risquent de ne pas réaliser leur auto-évaluation dans les délais. Identifiez le registre de résistance
probablement dominant pour ce groupe, et proposez un plan d''accompagnement en deux mesures concrètes.
## Corrigé

1. Parce que les managers de proximité ont un problème d''adhésion, lié à la méfiance envers l''usage qui sera
fait du tableau de bord, et non un problème de compréhension des bénéfices annoncés ; une communication
générale sur les bénéfices ne traite pas la méfiance de fond, et peut même la renforcer si elle est perçue
comme une tentative de minimiser leurs inquiétudes légitimes.
2. Par exemple, le temps moyen de traitement d''une demande de congé avant et après la mise en place du
self-service, qui permet de vérifier objectivement un gain d''efficacité annoncé par le projet.
3. Parce que chaque groupe d''acteurs est concerné différemment par le changement : les équipes RH doivent
maîtriser un nouvel outil technique (capacité), les salariés des agences craignent un impact sur leur emploi
(compréhension), et les managers craignent un impact sur leur relation hiérarchique (adhésion) ; un même
projet touche donc des enjeux très différents selon la position de chacun.
4. Parce qu''une équipe RH qui ne maîtrise pas encore un nouvel outil peut, sans le vouloir, communiquer son
propre manque d''assurance aux autres acteurs, ou retarder le projet par prudence excessive ; la conduite du
changement s''applique aussi à l''équipe porteuse du projet, pas seulement à ses destinataires.
5. Le registre de résistance probablement dominant est la capacité (manque de familiarité avec les outils
numériques), bien qu''une part de résistance par adhésion (crainte d''être mal jugé par un outil numérique) ne
soit pas à exclure. Plan en deux mesures : organiser des sessions d''accompagnement individuel ou en petits
groupes pour ce segment de salariés avant l''échéance, et proposer une alternative d''assistance (aide d''un
collègue ou d''un référent RH désigné) pendant la période de réalisation de l''auto-évaluation.
', 'texte', 55, false, 20
from public.courses c where c.slug = 'mas-rh-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Conduite du changement et transformation RH (SIRH avancé, digitalisation) : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Rémunération stratégique et politique de talents (people review, succession planning) : l''essentiel pour l''examen', 'La rémunération stratégique et la politique de talents constituent le deuxième pilier avancé du
Master 2 : il s''agit de dépasser la gestion technique de la paie, vue en Licence, pour construire une
architecture de rémunération et des outils de gestion des talents cohérents avec la stratégie de l''entreprise
et sa capacité financière réelle.

## Notions clés

La rémunération stratégique repose sur l''idée que tous les postes n''ont pas la même criticité pour
l''entreprise, et que la politique salariale doit en tenir compte plutôt que d''appliquer une grille uniforme.
La criticité d''un poste combine généralement deux dimensions : sa rareté sur le marché du travail (difficulté
à recruter un remplaçant) et son impact sur la performance de l''entreprise (contribution directe au chiffre
d''affaires, à l''innovation, ou à des risques majeurs si le poste est vacant). Un poste à forte criticité
justifie une politique de rémunération et de fidélisation renforcée ; un poste à faible criticité peut être
géré avec une politique plus standard, ce qui permet à l''entreprise de concentrer ses ressources limitées sur
ce qui compte le plus stratégiquement.

La people review est un exercice collectif périodique, mené par le management et la DRH, qui évalue les
collaborateurs clés de l''organisation sur deux axes généralement combinés dans une matrice : leur performance
actuelle et leur potentiel d''évolution future. Cet exercice permet d''identifier les collaborateurs à fort
potentiel à développer en priorité, et les postes où un risque de vacance critique existe faute de relève
identifiée.

Le succession planning est la démarche qui consiste à anticiper, pour les postes les plus critiques de
l''organisation (direction générale, directions fonctionnelles clés, expertises rares), qui pourrait occuper ce
poste en cas de départ, et à préparer activement cette relève (formation, exposition à des responsabilités
croissantes, mentorat), plutôt que de découvrir une vacance sans solution le jour où elle survient.

## Méthode de construction d''une politique de rémunération et de talents

La méthode recommandée comprend quatre étapes : cartographier la criticité des postes de l''organisation (rareté
et impact) ; identifier, via une people review, les collaborateurs à fort potentiel et les postes à risque de
vacance critique ; construire un plan de succession pour les postes les plus critiques, avec un horizon de
préparation réaliste ; et articuler ces décisions avec une architecture de rémunération différenciée, en
combinant systématiquement des leviers financiers (salaire fixe, variable, avantages) et non financiers
(reconnaissance, parcours de carrière, autonomie), car une entreprise à ressources contraintes ne peut pas
toujours répondre uniquement par le salaire.

## Cas d''entreprise fictif : Sahel Industries Pharmaceutiques

Sahel Industries Pharmaceutiques est une entreprise fictive de fabrication de médicaments génériques, employant
210 salariés à Dakar, en croissance continue grâce à des contrats d''approvisionnement régionaux UEMOA. La DRH
doit préparer la people review annuelle et proposer une politique de rémunération et de fidélisation adaptée.

La cartographie de criticité réalisée par la DRH identifie trois postes de pharmacien responsable de production
comme hautement critiques : ce sont des postes réglementés, rares sur le marché local (une dizaine de
pharmaciens qualifiés disponibles dans la région selon l''estimation de la DRH), et dont l''absence prolongée
peut interrompre une ligne de production entière. À l''inverse, les 60 postes d''opérateurs de conditionnement
sont jugés peu critiques : compétence plus répandue, impact individuel limité sur la production globale.

La people review révèle que, sur les trois pharmaciens responsables actuels, un seul dispose d''un adjoint
identifié et formé capable de le remplacer en cas de départ ; les deux autres postes n''ont aucune relève
préparée. Par ailleurs, la people review identifie quatre jeunes ingénieurs qualité à fort potentiel, dont la
DRH estime qu''ils pourraient, avec une préparation de deux à trois ans, accéder à des responsabilités de
pharmacien responsable adjoint.

Sur la base de ce diagnostic, la DRH construit un plan de succession ciblé sur les deux postes de pharmacien
responsable sans relève : deux des quatre ingénieurs qualité à fort potentiel sont désignés pour intégrer un
parcours de professionnalisation de deux ans, combinant formation complémentaire, exposition progressive à des
responsabilités de production, et mentorat direct par les pharmaciens responsables en poste. Parallèlement, la
DRH propose une politique de rémunération différenciée : pour les trois postes de pharmacien responsable, une
prime de rareté de compétence propre à l''entreprise (fictive pour l''exemple) et un accès prioritaire à des
formations continues valorisantes ; pour les opérateurs de conditionnement, une politique salariale plus
standard, mais accompagnée d''un parcours de carrière interne visible (possibilité d''évoluer vers des postes de
technicien qualité après quelques années), ce qui répond à un besoin de reconnaissance sans peser lourdement
sur la masse salariale de ce segment plus large de l''effectif.

## Points clés

- La criticité d''un poste combine sa rareté sur le marché et son impact sur la performance de l''entreprise ;
elle justifie une politique de rémunération et de fidélisation différenciée, pas uniforme.
- La people review combine performance actuelle et potentiel futur pour identifier les talents à développer et
les postes à risque de vacance critique.
- Le succession planning doit être anticipé avec un horizon réaliste (souvent plusieurs années pour des postes
très qualifiés), et non improvisé au moment d''un départ.
- Une politique de talents efficace combine toujours des leviers financiers et non financiers, en particulier
dans des contextes où les ressources budgétaires sont contraintes.

## Exercices pratiques

1. Dans le cas Sahel Industries Pharmaceutiques, pourquoi les postes de pharmacien responsable sont-ils jugés
plus critiques que les postes d''opérateur de conditionnement, alors que les deux catégories sont indispensables
à la production ?
2. Expliquez la différence entre la performance et le potentiel dans une matrice de people review, avec un
exemple où un collaborateur a une forte performance actuelle mais un potentiel jugé limité.
3. Pourquoi un plan de succession préparé seulement au moment de l''annonce d''un départ est-il généralement
risqué pour un poste à forte criticité ?
4. Citez deux leviers non financiers que la DRH pourrait proposer aux opérateurs de conditionnement, en
complément de la politique salariale standard évoquée dans le cas.
5. Cas pratique complet : une entreprise fictive de télécommunications, Teranga Telecom, identifie que son
unique expert en cybersécurité, en poste depuis quatre ans, est régulièrement sollicité par des concurrents
régionaux. Aucune relève n''est identifiée pour ce poste. Proposez, en une quinzaine de lignes, un diagnostic de
criticité et un plan combinant fidélisation à court terme et succession planning à moyen terme.
## Corrigé

1. Parce que les postes de pharmacien responsable combinent une forte rareté sur le marché local (poste
réglementé, peu de profils disponibles) et un impact élevé en cas de vacance (arrêt possible d''une ligne de
production), alors que les opérateurs de conditionnement, bien qu''indispensables collectivement, sont plus
facilement remplaçables individuellement et leur absence a un impact plus limité et plus facilement absorbable.
2. La performance mesure la contribution actuelle dans le poste occupé ; le potentiel mesure la capacité
estimée à occuper, à l''avenir, des responsabilités plus larges ou différentes. Exemple : un excellent technicien
de maintenance, très performant dans son rôle actuel, mais qui ne souhaite pas ou ne montre pas de capacité à
encadrer une équipe, aura une performance élevée et un potentiel de management jugé limité.
3. Parce que la préparation d''un remplaçant qualifié (formation, exposition progressive aux responsabilités,
acquisition de la confiance des équipes) prend du temps ; improviser au moment du départ expose l''entreprise à
une période de vacance ou à un remplacement mal préparé, avec un risque opérationnel ou réglementaire
important pour un poste critique.
4. Par exemple : un parcours de carrière interne visible (évolution possible vers des postes de technicien
qualité), déjà mentionné dans le cas, et une reconnaissance non financière comme la valorisation des bonnes
pratiques de conditionnement auprès de l''ensemble de l''équipe, ou une plus grande autonomie dans l''organisation
quotidienne du poste.
5. Diagnostic de criticité : le poste d''expert cybersécurité est hautement critique (rareté confirmée par la
sollicitation de concurrents, impact majeur en cas de départ dans un secteur sensible aux risques numériques) et
sans aucune relève, ce qui constitue un risque stratégique immédiat. Plan à court terme : sécuriser la
fidélisation par un entretien direct identifiant ses attentes réelles (rémunération, mais aussi projets
valorisants, autonomie, reconnaissance), et envisager une prime de rétention propre à l''entreprise si pertinent.
Plan à moyen terme : lancer un succession planning en identifiant un ou deux profils internes à potentiel
(informatique générale) pour une montée en compétence progressive sur deux à trois ans, combinée si possible à
un recrutement externe complémentaire pour ne pas dépendre d''une seule personne à l''avenir.
', 'texte', 55, false, 30
from public.courses c where c.slug = 'mas-rh-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Rémunération stratégique et politique de talents (people review, succession planning) : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Méthodologie du mémoire professionnel et de la soutenance : l''essentiel pour l''examen', 'La méthodologie du mémoire professionnel et de la soutenance constitue le troisième pilier du Master 2.
Contrairement aux deux matières précédentes, il ne s''agit pas d''un contenu RH à proprement parler, mais d''une
compétence méthodologique transversale : savoir transformer une problématique professionnelle réelle en un
travail de recherche appliquée rigoureux, puis le défendre à l''oral devant un jury.

## Notions clés

Le mémoire professionnel se distingue d''un mémoire de recherche académique classique par son point de départ :
il part généralement d''une situation professionnelle vécue (en stage, en emploi, ou observée dans une
entreprise) et vise à produire des recommandations opérationnelles, tout en mobilisant un cadre conceptuel et
une méthodologie rigoureuse. Une problématique de mémoire pertinente n''est pas une simple question descriptive
(« comment fonctionne le recrutement dans l''entreprise X ? ») mais une question qui interroge une tension, un
écart ou un arbitrage (« dans quelle mesure la digitalisation du recrutement permet-elle d''améliorer la qualité
des embauches sans dégrader l''expérience candidat dans une PME aux ressources limitées ? »).

La structure générale attendue d''un mémoire professionnel comprend : une introduction qui pose le contexte et
la problématique ; une revue de littérature ou cadre conceptuel, qui mobilise plusieurs approches théoriques
pertinentes et les discute de façon critique, sans se limiter à un seul auteur ; une partie méthodologique, qui
explique et justifie la démarche de collecte de données (entretiens, étude de cas, analyse documentaire,
observation) ; une partie d''analyse, qui confronte les données recueillies au cadre conceptuel ; et une partie
de recommandations, qui propose des pistes d''action concrètes et réalistes pour l''organisation concernée.

La soutenance orale est un exercice distinct de la rédaction : elle suppose de synthétiser un travail de
plusieurs mois en une présentation courte (souvent quinze à vingt minutes, selon le règlement de
l''établissement, à vérifier localement), suivie d''une séance de questions du jury. La qualité d''une soutenance
ne se mesure pas uniquement à la clarté de l''exposé, mais aussi à la capacité à répondre avec assurance et
honnêteté intellectuelle aux critiques et aux limites du travail, plutôt qu''à les nier ou à les éviter.

## Méthode de construction d''un mémoire professionnel

La méthode recommandée suit cinq étapes. Premièrement, partir d''une situation professionnelle concrète et la
transformer en question de recherche en identifiant la tension ou l''arbitrage sous-jacent. Deuxièmement,
construire un cadre conceptuel en mobilisant plusieurs approches théoriques pertinentes de la discipline RH
concernée, en les comparant plutôt qu''en en choisissant une seule sans justification. Troisièmement, choisir une
méthodologie de collecte de données adaptée à la question posée et aux contraintes réelles d''accès au terrain
(nombre d''entretiens réalisables, documents disponibles), en étant honnête sur ces limites. Quatrièmement,
analyser les données en les reliant explicitement au cadre conceptuel, sans se contenter de les décrire.
Cinquièmement, formuler des recommandations réalistes, en tenant compte des contraintes réelles de
l''organisation (budget, culture, calendrier), plutôt que des recommandations théoriquement idéales mais
inapplicables.

## Cas d''application fictif : mémoire sur la digitalisation du recrutement chez Sahel PME Services

Prenons un exemple fictif de construction de mémoire. Un étudiant en stage chez Sahel PME Services, une
entreprise de services aux entreprises fictive de 80 salariés à Dakar, observe que le processus de recrutement
repose encore entièrement sur des candidatures papier et des entretiens non structurés, ce qui génère des
délais longs (en moyenne 45 jours entre la publication d''une offre et l''embauche, chiffre fictif pour
l''exemple) et une perception mitigée des candidats, révélée par des commentaires informels recueillis par
l''étudiant.

La transformation en problématique de recherche pourrait donner : « Dans quelle mesure l''introduction d''outils
numériques de recrutement (plateforme de candidature en ligne, entretiens structurés) peut-elle réduire les
délais de recrutement d''une PME sénégalaise sans dégrader la qualité de la relation avec les candidats ? »
Cette formulation interroge bien un arbitrage (gain d''efficacité contre risque de déshumanisation du processus),
plutôt que de simplement décrire la situation actuelle.

Le cadre conceptuel mobiliserait, de façon critique, au moins deux familles d''approches : les théories sur
l''expérience candidat et la marque employeur, et les approches sur la digitalisation des processus RH et ses
risques d''adoption, déjà vues en partie dans le cours sur la conduite du changement. La méthodologie proposée
pourrait combiner une analyse documentaire des données de recrutement internes (délais, taux d''abandon de
candidature) et quelques entretiens semi-structurés avec des managers et des candidats récents, en reconnaissant
explicitement la limite d''un échantillon réduit, propre à un mémoire professionnel réalisé dans un temps
contraint.

Les recommandations finales, pour rester réalistes au regard d''une PME de 80 salariés à budget limité, privilégieraient
une solution progressive et peu coûteuse (par exemple une plateforme de candidature en ligne simple plutôt
qu''un SIRH complet) plutôt qu''une transformation complète immédiatement, en proposant un calendrier de
déploiement en plusieurs phases avec des indicateurs de suivi simples (délai moyen de recrutement, taux de
satisfaction des candidats mesuré par une courte enquête).

## Points clés

- Une problématique de mémoire doit interroger une tension ou un arbitrage, pas simplement décrire une
situation.
- Le cadre conceptuel doit mobiliser et discuter plusieurs approches théoriques, jamais une seule citée comme
une vérité unique.
- La méthodologie doit être adaptée aux contraintes réelles du terrain, et ses limites doivent être reconnues
explicitement plutôt que dissimulées.
- Les recommandations doivent rester réalistes au regard des contraintes concrètes de l''organisation étudiée
(budget, taille, culture).
- La soutenance évalue autant la capacité à défendre et nuancer son travail face aux questions critiques que la
qualité de l''exposé initial.

## Exercices pratiques

1. Reformulez la question suivante, trop descriptive, en une véritable problématique de recherche : « Comment
se passe l''intégration des nouveaux salariés dans l''entreprise X ? »
2. Pourquoi un cadre conceptuel qui ne mobilise qu''un seul auteur est-il généralement jugé insuffisant pour un
mémoire de Master 2 ?
3. Dans le cas Sahel PME Services, pourquoi est-il important que l''étudiant reconnaisse explicitement la limite
d''un échantillon réduit d''entretiens, plutôt que de la passer sous silence ?
4. Citez deux types de questions qu''un jury de soutenance pourrait poser sur le mémoire concernant Sahel PME
Services, et pour chacune, esquissez l''attitude attendue de l''étudiant pour y répondre.
5. Pourquoi des recommandations « idéales » mais trop coûteuses pour une PME de 80 salariés seraient-elles un
point faible du mémoire, même si elles sont conceptuellement justes ?

## Corrigé

1. Exemple de reformulation : « Dans quelle mesure le processus d''intégration actuel de l''entreprise X permet-il
de réduire le turnover des nouveaux salariés au cours de leur première année, et quels ajustements seraient
nécessaires pour renforcer son efficacité ? » Cette version interroge un effet (le turnover) et ouvre sur des
recommandations, contrairement à la version purement descriptive initiale.
2. Parce qu''un mémoire de Master 2 doit démontrer une capacité d''analyse critique et de mise en perspective ; se
limiter à un seul auteur empêche de montrer que l''on comprend les débats et les nuances existant dans la
discipline, et donne l''impression d''une connaissance superficielle plutôt qu''approfondie.
3. Parce que la crédibilité scientifique d''un travail repose aussi sur l''honnêteté méthodologique : reconnaître
qu''un échantillon réduit limite la généralisation des conclusions montre une maîtrise méthodologique mature,
alors que prétendre à une représentativité non fondée fragiliserait l''ensemble du travail si le jury le
remarque, ce qui est très probable.
4. Par exemple : une question sur la représentativité de l''échantillon d''entretiens (« comment savez-vous que ces
quelques entretiens reflètent l''ensemble des candidats ? »), à laquelle l''étudiant doit répondre en reconnaissant
la limite tout en expliquant les précautions prises pour en limiter l''impact ; et une question sur la
faisabilité budgétaire des recommandations (« l''entreprise a-t-elle les moyens de mettre en œuvre ce que vous
proposez ? »), à laquelle l''étudiant doit répondre en montrant qu''il a bien intégré la contrainte budgétaire
dans ses recommandations, ce qui est précisément le cas dans l''exemple traité.
5. Parce qu''un mémoire professionnel est évalué aussi sur son applicabilité réelle pour l''organisation étudiée ;
des recommandations inapplicables, même conceptuellement justes, montrent un manque de recul professionnel et
une déconnexion entre la théorie mobilisée et la réalité concrète du terrain, ce qui est précisément ce que le
mémoire professionnel doit éviter par rapport à un travail purement académique.', 'texte', 55, false, 40
from public.courses c where c.slug = 'mas-rh-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Méthodologie du mémoire professionnel et de la soutenance : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Master 2 RH (entraînement multi-matières, corrigé détaillé)', 'Ce sujet type rassemble les trois matières avancées du Master 2 en ressources humaines : conduite du
changement et transformation RH, rémunération stratégique et politique de talents, méthodologie du mémoire
professionnel et de la soutenance. Il n''a pas de caractère officiel et le barème indiqué est purement
indicatif.

## Sujet (durée indicative : 3 heures, barème indicatif sur 20 points)

Vous êtes consultant RH junior intervenant auprès de l''entreprise fictive Kaolack Agro-Export, société de
transformation et d''exportation de produits agricoles employant 310 salariés, qui vient d''acquérir un nouveau
SIRH intégrant un module de gestion des talents et déploie en parallèle une politique de fidélisation de ses
cadres techniques.

Partie 1 (7 points) : Conduite du changement. Le déploiement du nouveau SIRH se heurte à une faible adoption du
module de self-service par les salariés de production (seulement 22 % des demandes de congés dématérialisées
après deux mois, contre un objectif de 70 % fixé par la direction), alors que les cadres administratifs
l''utilisent massivement (85 % de dématérialisation). Analysez les causes probables de cet écart et proposez un
plan d''accompagnement différencié.

Partie 2 (7 points) : Rémunération stratégique et talents. L''entreprise identifie trois ingénieurs qualité
jugés critiques (rareté locale, impact majeur sur les certifications export), dont un seul dispose d''une
relève identifiée. Proposez un diagnostic de criticité et un plan combinant fidélisation et succession
planning.

Partie 3 (6 points) : Méthodologie du mémoire. Vous accompagnez un étudiant en stage dans cette entreprise qui
souhaite écrire son mémoire sur « le SIRH dans l''entreprise ». Reformulez ce thème en une problématique de
recherche pertinente et proposez un plan de mémoire en quatre parties.

## Corrigé détaillé

Partie 1. L''écart d''adoption (22 % contre 85 %) suggère un problème concentré chez les salariés de production,
probablement lié à un registre de résistance par capacité (accès limité aux outils numériques pendant le temps
de travail en atelier, moindre familiarité avec les interfaces numériques) plutôt que par adhésion ou
compréhension, bien que ces deux registres ne soient pas à exclure sans vérification. Un plan d''accompagnement
différencié proposerait, pour les salariés de production, des bornes numériques dédiées accessibles sur le site
de production, un accompagnement par des référents désignés dans chaque atelier, et une communication simplifiée
rappelant concrètement la procédure ; pour les cadres administratifs, déjà bien adoptés, un suivi allégé limité
à la résolution des incidents résiduels.

Partie 2. Diagnostic de criticité : les trois postes d''ingénieur qualité sont hautement critiques (rareté
locale confirmée, impact direct sur les certifications export, donc sur la capacité commerciale de
l''entreprise), et deux des trois postes n''ont aucune relève, ce qui constitue un risque stratégique majeur pour
la continuité des certifications. Plan combiné : à court terme, un entretien de fidélisation ciblé pour les
trois ingénieurs en poste, avec une prime de rareté de compétence propre à l''entreprise et une valorisation de
leur rôle dans les certifications ; à moyen terme, un succession planning identifiant deux profils internes à
potentiel pour une montée en compétence progressive sur deux à trois ans vers les deux postes sans relève,
combiné éventuellement à un recrutement externe complémentaire pour sécuriser davantage le dispositif.

Partie 3. Le thème « le SIRH dans l''entreprise » est purement descriptif et doit être transformé en
problématique. Exemple : « Dans quelle mesure le déploiement d''un SIRH avancé permet-il d''améliorer l''efficacité
de la gestion des talents dans une entreprise agro-industrielle sénégalaise, tout en garantissant l''adoption de
l''outil par l''ensemble des catégories de salariés ? » Plan de mémoire en quatre parties : une revue de
littérature critique sur la digitalisation RH et la conduite du changement ; une méthodologie combinant analyse
des données d''adoption du SIRH et entretiens avec des salariés de différentes catégories ; une analyse des
écarts d''adoption observés, reliée au cadre conceptuel sur les registres de résistance ; et des recommandations
opérationnelles différenciées par catégorie de salariés, dans la limite des contraintes budgétaires réelles de
l''entreprise.

## Exercices pratiques (questions complémentaires)

1. Dans la partie 1, que changerait-il à votre analyse si une enquête révélait que les salariés de production
comprennent très bien l''outil mais refusent de l''utiliser par méfiance envers la dématérialisation de leurs
données personnelles ?
2. Dans la partie 2, quelle différence feriez-vous si l''un des deux postes sans relève concernait un ingénieur
proche de la retraite, avec un départ attendu dans six mois seulement ?
3. Dans la partie 3, proposez une question que le jury pourrait poser à l''étudiant sur la représentativité de
ses entretiens, et l''attitude de réponse attendue.
4. Proposez une question d''examen supplémentaire, à cheval entre la conduite du changement et la politique de
talents, portant sur le cas Kaolack Agro-Export.

## Corrigé

1. Cela changerait le diagnostic du registre de résistance : il ne s''agirait plus d''un problème de capacité
mais d''un problème d''adhésion, lié à la confiance envers l''outil et son usage des données ; le plan
d''accompagnement devrait alors porter sur la transparence (expliquer clairement comment les données sont
utilisées et protégées) plutôt que sur l''accès technique aux outils, ce qui est un levier d''action très
différent.
2. Avec un départ attendu dans six mois seulement, le succession planning classique sur deux à trois ans
deviendrait inadapté : il faudrait privilégier une solution d''urgence, par exemple un recrutement externe
accéléré ou une solution temporaire (prestataire externe, tutorat intensif très court d''un profil interne déjà
partiellement formé), tout en acceptant un niveau de risque plus élevé sur la continuité des certifications à
très court terme.
3. Exemple de question : « Avec seulement quelques entretiens, comment pouvez-vous être sûr que vos conclusions
reflètent l''ensemble des salariés de production ? » L''attitude attendue est de reconnaître honnêtement la
limite de représentativité, d''expliquer les précautions prises (diversité des profils interrogés, recoupement
avec les données quantitatives d''adoption) et de montrer que les conclusions sont présentées comme des
hypothèses à confirmer plutôt que comme des certitudes absolues.
4. Exemple de question : « L''entreprise envisage de conditionner une partie de la prime de rareté des
ingénieurs qualité à l''utilisation effective du nouveau module de gestion des talents du SIRH. Quels risques,
en matière de conduite du changement, cette décision pourrait-elle créer ? » Une bonne réponse identifierait le
risque de transformer une résistance initialement liée à la capacité ou à la compréhension en une résistance
par adhésion, les salariés concernés pouvant percevoir cette conditionnalité comme une pression ou une
sanction déguisée plutôt que comme un accompagnement, ce qui pourrait fragiliser la politique de fidélisation
plutôt que la renforcer.', 'texte', 60, false, 50
from public.courses c where c.slug = 'mas-rh-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Master 2 RH (entraînement multi-matières, corrigé détaillé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Conduite du changement et transformation RH', '## Fiche du cours vidéo

Durée : 1h30. Public : étudiants de Master 2 en ressources humaines. Objectifs : savoir diagnostiquer les
résistances au changement selon leur registre (compréhension, capacité, adhésion) et construire un plan
d''accompagnement différencié pour un projet de transformation RH, notamment de digitalisation via un SIRH
avancé. Matériel : tableau ou diaporama, dossier de cas Baobab Assurances. Prérequis : notions de base de GRH
vues en Licence et en Master 1.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture : pourquoi les projets de transformation RH échouent

Bonjour à toutes et à tous. Je commence par un constat que beaucoup d''études professionnelles mettent en
avant : la majorité des échecs de projets de transformation RH, en particulier de digitalisation, ne viennent
pas d''un problème technique de l''outil choisi, mais d''un défaut de conduite du changement. L''outil fonctionne
très bien techniquement, mais les salariés ne l''utilisent pas comme prévu. Aujourd''hui, nous allons apprendre à
diagnostiquer précisément pourquoi, plutôt que de répondre par une communication générique qui, le plus
souvent, ne règle rien.

## 05:00 – 15:00 · Les trois registres de résistance au changement

Voici le cadre central de ce cours, à discuter de façon critique et non à réciter mécaniquement. Trois
registres de résistance peuvent exister chez un acteur confronté à un changement. Le registre de compréhension
: le changement n''est pas compris, ou mal expliqué. Le registre de capacité : le changement est compris, mais
l''acteur ne se sent pas outillé pour l''opérer, faute de formation ou de moyens. Le registre d''adhésion : le
changement est compris et possible, mais rejeté pour des raisons de valeurs, de confiance ou de pouvoir. Je
vous montre à l''écran trois courtes situations ; essayons ensemble de les classer. Un salarié qui ne sait pas
qu''un nouvel outil existe relève de la compréhension. Un salarié qui connaît l''outil mais n''a jamais reçu de
formation relève de la capacité. Un manager qui comprend parfaitement l''outil mais craint qu''il réduise son
pouvoir de décision relève de l''adhésion.

## 15:00 – 30:00 · Méthode de diagnostic et étude de cas filée : Baobab Assurances

Appliquons la méthode en quatre étapes du cours écrit. Baobab Assurances, compagnie d''assurance fictive de 260
salariés, déploie un nouveau SIRH avancé avec self-service, gestion des talents et tableau de bord managérial.
Premièrement, décrivons le changement : un outil qui transforme la gestion des congés, l''évaluation continue et
le pilotage managérial. Deuxièmement, identifions les acteurs et leur registre dominant. Au siège, l''équipe RH
elle-même exprime une résistance de capacité : elle maîtrise mal les nouveaux outils d''analyse de données.
Dans les agences régionales, les salariés expriment une résistance de compréhension : ils ne savent pas
précisément ce qui va changer et craignent, à tort, des suppressions de postes. Chez certains managers de
proximité, apparaît une résistance d''adhésion : le tableau de bord en temps réel est perçu comme un outil de
contrôle renforcé plutôt qu''une aide à la décision.

## 30:00 – 42:00 · Construire un plan d''accompagnement différencié

Troisième étape de la méthode : construire un plan différencié, jamais une communication unique pour tous.
Pour l''équipe RH du siège, problème de capacité : un programme de formation intensive de deux semaines, avec
accompagnement individualisé le premier mois. Pour les agences régionales, problème de compréhension : une
tournée d''information avec des exemples concrets, et une clarification explicite qu''aucune suppression de
poste n''est prévue. Pour les managers réticents, problème d''adhésion : des ateliers de co-construction où les
managers participent eux-mêmes à la définition des indicateurs de leur tableau de bord, pour qu''ils le
perçoivent comme un outil à leur service. Remarquez bien : trois problèmes différents, trois leviers d''action
complètement différents. C''est l''erreur la plus fréquente que je corrige dans les copies, l''utilisation d''un
seul levier, en général la communication, pour tous les problèmes.

## 42:00 – 50:00 · Quiz interactif à mi-parcours

Pause active. Première question : pourquoi une formation technique supplémentaire ne résoudrait-elle pas le
problème des managers réticents dans le cas Baobab Assurances ? Deuxième question : quel registre de
résistance dominerait, selon vous, chez un salarié qui refuse d''utiliser un outil numérique simplement parce
qu''il n''a jamais utilisé d''ordinateur de sa vie ? Troisième question : citez un risque si l''entreprise traite
la résistance des agences régionales uniquement par une sanction ou une obligation stricte d''utilisation.
Notez vos réponses. Pour la première, parce que les managers comprennent déjà l''outil et savent s''en servir :
leur problème est un problème de confiance et de perception du contrôle, pas de compétence technique. Pour la
deuxième, cela relève typiquement d''un registre de capacité, qu''il faut traiter par un accompagnement progressif
et personnalisé, pas par une obligation. Pour la troisième, imposer l''usage sans traiter la peur de suppression de
poste risquerait de renforcer la méfiance générale envers la direction, au-delà du seul projet SIRH.

## 50:00 – 65:00 · Les indicateurs de suivi de l''adoption

Quatrième étape de la méthode : définir des indicateurs de suivi, pour ajuster le plan en cours de route plutôt
que de découvrir un échec en fin de projet. Pour Baobab Assurances, nous avons retenu trois indicateurs : le
taux d''utilisation effective du module self-service, avec un objectif fictif pour l''exemple de 70 % de
dématérialisation des demandes de congés au bout de trois mois ; le nombre d''incidents techniques ou de
blocages remontés chaque semaine ; et un score de perception recueilli par une enquête courte auprès des
managers deux mois après le lancement. Un bon pilote de changement regarde ces indicateurs toutes les
semaines, pas seulement au bilan final, et ajuste son plan d''accompagnement si un indicateur dévie fortement
de la trajectoire attendue.

## 65:00 – 78:00 · Étude de cas filée : Sahel Retail

Passons à un second cas pour systématiser la méthode. Sahel Retail, entreprise fictive de distribution, déploie
un module d''auto-évaluation annuelle en ligne pour tous les salariés. Les retours informels montrent que les
salariés de plus de cinquante ans, peu familiers des outils numériques, risquent de ne pas réaliser leur
auto-évaluation dans les délais. Quel registre domine ici ? Principalement la capacité, avec peut-être une
composante d''adhésion si ces salariés craignent d''être mal jugés par un outil numérique impersonnel. Le plan
d''accompagnement combinerait des sessions d''accompagnement individuel ou en petits groupes avant l''échéance, et
une alternative d''assistance, comme l''aide d''un collègue ou d''un référent RH désigné, pendant la période de
réalisation. Notez que cette solution respecte la dignité des salariés concernés : elle ne les stigmatise pas
publiquement, elle leur offre un accompagnement discret et efficace.

## 78:00 – 83:00 · Qui pilote le projet : DSI seule ou DRH associée

Un dernier point avant de synthétiser : qui doit piloter un tel projet ? Un projet de transformation RH piloté
uniquement par la direction des systèmes d''information risque de privilégier les aspects techniques, fiabilité,
sécurité, délais, au détriment de l''adoption humaine et de la cohérence avec les pratiques RH existantes. Un
projet co-piloté par la DRH garantit que les enjeux de conduite du changement, d''adhésion des équipes et de
cohérence avec la politique RH globale sont pris en compte dès la conception du projet, et pas seulement
découverts au moment du déploiement, une fois l''outil déjà configuré techniquement.

## 83:00 – 85:00 · Synthèse et méthode de rédaction en examen

Pour synthétiser : face à un cas d''examen sur ce thème, identifiez systématiquement le registre de résistance
dominant pour chaque groupe d''acteurs avant de proposer un plan, ne proposez jamais un levier unique pour des
problèmes de nature différente, et prévoyez toujours des indicateurs de suivi permettant d''ajuster le plan en
cours de route. Souvenez-vous aussi que l''équipe porteuse du projet, y compris la DRH elle-même, peut être
source de résistance : ne l''oubliez jamais dans votre diagnostic.

## 85:00 – 90:00 · Évaluation finale

Six questions pour conclure. Zéro, pourquoi un projet de transformation RH mérite-t-il d''être co-piloté par la
DRH et pas seulement par la direction des systèmes d''information ? Réponse : parce qu''un pilotage uniquement
technique néglige souvent l''adoption humaine et la cohérence avec la politique RH globale, deux dimensions que
seule la DRH peut porter pleinement dès la conception du projet. Un, quels sont les trois registres de
résistance au changement ? Deux, dans le
cas Baobab Assurances, quel registre domine chez les managers de proximité et pourquoi ? Trois, pourquoi un
plan d''accompagnement du changement doit-il être différencié plutôt qu''uniforme ? Quatre, citez un indicateur
de suivi de l''adoption d''un projet de SIRH. Cinq, dans le cas Sahel Retail, quel registre domine chez les
salariés de plus de cinquante ans et quelle solution respecte leur dignité ? Réponses : un, compréhension,
capacité, adhésion. Deux, l''adhésion, car le tableau de bord est perçu comme un outil de contrôle renforcé
plutôt qu''une aide à la décision. Trois, parce que des groupes d''acteurs différents ont des résistances de
nature différente, qui appellent des leviers d''action différents. Quatre, par exemple le taux d''utilisation
effective du module self-service. Cinq, la capacité, et une solution d''accompagnement individuel discret plutôt
qu''une obligation stricte sans soutien. Merci à toutes et à tous, je vous retrouve pour le prochain cours
consacré à la rémunération stratégique et à la politique de talents.', 'video', 90, false, 60
from public.courses c where c.slug = 'mas-rh-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Conduite du changement et transformation RH');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Rémunération stratégique et politique de talents', '## Fiche du cours vidéo

Durée : 1h30. Public : étudiants de Master 2 en ressources humaines. Objectifs : savoir cartographier la
criticité des postes d''une organisation, construire une people review et un plan de succession planning, et
articuler une politique de rémunération différenciée combinant leviers financiers et non financiers. Matériel
: tableau ou diaporama, dossier de cas Sahel Industries Pharmaceutiques. Prérequis : notions de base de
rémunération vues en Licence.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture : tous les postes ne se valent pas stratégiquement

Bonjour à toutes et à tous. Une question pour commencer : si votre entreprise devait réduire son budget de
formation et de fidélisation de 20 %, sur quels postes concentreriez-vous les ressources restantes ? La
réponse spontanée est souvent « sur les postes les plus importants », mais encore faut-il savoir comment
définir objectivement cette importance. C''est exactement l''objet de ce cours : construire une méthode
rigoureuse pour identifier les postes réellement critiques, plutôt que de se fier à une intuition ou à la
hiérarchie formelle de l''organigramme.

## 05:00 – 15:00 · La cartographie de criticité des postes

La criticité d''un poste combine deux dimensions à évaluer séparément. La rareté sur le marché du travail :
combien de profils qualifiés sont disponibles pour occuper ce poste en cas de besoin. L''impact sur la
performance de l''entreprise : que se passe-t-il concrètement si ce poste reste vacant plusieurs semaines ou
mois. Un poste peut être rare mais à faible impact, ou fréquent mais à fort impact : c''est la combinaison des
deux qui définit la criticité réelle. Je vous montre à l''écran une matrice à deux axes ; nous allons y placer
plusieurs exemples de postes pour nous entraîner à cette classification avant de passer au cas pratique.

## 15:00 – 32:00 · Étude de cas filée : Sahel Industries Pharmaceutiques, cartographie

Sahel Industries Pharmaceutiques, entreprise fictive de 210 salariés, doit préparer sa people review annuelle.
Trois postes de pharmacien responsable de production sont identifiés comme hautement critiques : postes
réglementés, rares localement, une dizaine de profils qualifiés disponibles dans la région selon l''estimation
de la DRH, et dont l''absence prolongée peut interrompre une ligne de production entière. À l''inverse, les 60
postes d''opérateurs de conditionnement sont jugés peu critiques : compétence plus répandue, impact individuel
limité sur la production globale, même si collectivement ils restent indispensables. Remarquez cette nuance
importante : un poste peut être individuellement peu critique tout en étant collectivement indispensable ; ce
n''est pas une contradiction, c''est précisément ce qui justifie une politique différenciée plutôt qu''une
politique uniforme pour tous les postes de production.

## 32:00 – 48:00 · La people review et le succession planning

Passons à la people review. Elle croise deux axes pour chaque collaborateur clé : sa performance actuelle et
son potentiel d''évolution future. Pour Sahel Industries Pharmaceutiques, la people review révèle que, sur les
trois pharmaciens responsables actuels, un seul dispose d''un adjoint identifié et formé ; les deux autres postes
n''ont aucune relève préparée. Elle identifie également quatre jeunes ingénieurs qualité à fort potentiel,
capables, avec une préparation de deux à trois ans, d''accéder à des responsabilités de pharmacien responsable
adjoint. Le succession planning construit à partir de ce diagnostic désigne deux de ces quatre ingénieurs pour
intégrer un parcours de professionnalisation de deux ans, combinant formation complémentaire, exposition
progressive aux responsabilités de production, et mentorat direct par les pharmaciens responsables en poste.
Notez l''horizon : deux à trois ans, pas deux à trois mois ; un succession planning sérieux pour un poste très
qualifié prend du temps, et c''est précisément pour cela qu''il doit être anticipé largement avant qu''un départ
ne survienne.

## 48:00 – 56:00 · Quiz interactif à mi-parcours

Pause active. Première question : pourquoi est-il dangereux d''attendre l''annonce d''un départ pour lancer un
succession planning sur un poste aussi critique que pharmacien responsable ? Deuxième question : un
collaborateur très performant dans son poste actuel a-t-il nécessairement un potentiel élevé pour un poste
supérieur ? Troisième question : pourquoi les 60 opérateurs de conditionnement, jugés peu critiques
individuellement, ne doivent-ils pas être totalement négligés dans la politique RH ? Notez vos réponses. Pour
la première, parce que la préparation d''un remplaçant qualifié prend du temps ; improviser expose l''entreprise
à une vacance ou un remplacement mal préparé, avec un risque réglementaire majeur pour ce type de poste. Pour
la deuxième, non : performance et potentiel sont deux dimensions distinctes, un excellent technicien peut ne
pas vouloir ou ne pas montrer de capacité à encadrer une équipe. Pour la troisième, parce que collectivement ils
restent indispensables à la production et qu''un désengagement massif de ce segment, même peu critique
individuellement, aurait un impact cumulé important.

## 56:00 – 70:00 · Construire une architecture de rémunération différenciée

Passons à la politique de rémunération elle-même. Pour les trois postes de pharmacien responsable, hautement
critiques, la DRH propose une prime de rareté de compétence propre à l''entreprise, clairement présentée comme
fictive dans notre exemple, et un accès prioritaire à des formations continues valorisantes. Pour les 60
opérateurs de conditionnement, une politique salariale plus standard, mais accompagnée d''un parcours de
carrière interne visible, par exemple la possibilité d''évoluer vers des postes de technicien qualité après
quelques années d''ancienneté. Observez la logique : nous ne proposons pas uniquement de l''argent pour les
postes critiques et rien pour les autres ; nous combinons systématiquement des leviers financiers et non
financiers, en dosant leur importance relative selon la criticité du poste et les contraintes budgétaires
réelles de l''entreprise.

## 70:00 – 80:00 · Second cas chiffré : Teranga Telecom

Prenons un second exemple pour systématiser la méthode. Teranga Telecom, entreprise fictive de
télécommunications, identifie que son unique expert en cybersécurité, en poste depuis quatre ans, est
régulièrement sollicité par des concurrents régionaux, sans aucune relève identifiée. Le diagnostic de
criticité est clair : rareté confirmée par la sollicitation externe répétée, impact majeur dans un secteur
sensible aux risques numériques. Le plan combine fidélisation à court terme, par un entretien direct identifiant
ses attentes réelles et, si pertinent, une prime de rétention propre à l''entreprise, et succession planning à
moyen terme, en identifiant un ou deux profils internes à potentiel pour une montée en compétence progressive
sur deux à trois ans, éventuellement combinée à un recrutement externe complémentaire pour ne pas dépendre
d''une seule personne. Notez la symétrie avec le cas Sahel Industries Pharmaceutiques : dans les deux cas, la
méthode reste identique, cartographier la criticité, mener une people review, construire un succession
planning à l''horizon pertinent, puis articuler une rémunération différenciée ; seuls les chiffres et le
secteur changent d''un cas à l''autre, pas la démarche elle-même, ce qui est précisément ce qui doit vous
rassurer pour l''examen : une seule méthode, applicable à des contextes variés.

## 80:00 – 85:00 · Un dernier risque à anticiper : l''équité perçue

Avant de synthétiser, un risque que les copies oublient souvent : pourquoi est-il risqué, dans une entreprise à
ressources contraintes, de répondre systématiquement à un risque de départ d''un talent clé par une simple
augmentation de salaire ? Parce qu''une réponse uniquement salariale est coûteuse à répéter pour chaque talent
sollicité par la concurrence, qu''elle peut créer des tensions d''équité perçue avec d''autres collaborateurs non
concernés, et qu''elle ne traite pas nécessairement les causes réelles d''attractivité externe, comme le manque de
perspectives ou une reconnaissance insuffisante. Une politique combinant plusieurs leviers est généralement plus
soutenable financièrement et plus efficace dans la durée qu''une simple course à l''augmentation salariale. Gardez en tête, pour vos copies,
que ce risque d''équité perçue ne signifie pas qu''il faut refuser toute prime différenciée : il signifie
qu''une politique de rémunération différenciée doit toujours être accompagnée d''une explication transparente de
ses critères, la criticité objective du poste, et non l''appréciation informelle d''un manager, afin de rester
perçue comme juste par l''ensemble des collaborateurs, y compris ceux qui n''en bénéficient pas directement.

## 85:00 – 90:00 · Évaluation finale

Cinq questions pour conclure. Un, quelles sont les deux dimensions de la criticité d''un poste ? Deux, quels
sont les deux axes croisés dans une people review ? Trois, dans le cas Sahel Industries Pharmaceutiques,
combien de postes de pharmacien responsable n''ont aucune relève identifiée ? Quatre, pourquoi un succession
planning doit-il être anticipé largement avant un départ ? Cinq, dans le cas Teranga Telecom, citez une mesure
à court terme et une mesure à moyen terme. Réponses : un, la rareté sur le marché du travail et l''impact sur la
performance de l''entreprise. Deux, la performance actuelle et le potentiel d''évolution future. Trois, deux
postes sur trois. Quatre, parce que la préparation d''un remplaçant qualifié prend du temps, souvent plusieurs
années pour un poste très qualifié. Cinq, à court terme un entretien de fidélisation et une éventuelle prime de
rétention ; à moyen terme un succession planning sur deux à trois ans avec des profils internes à potentiel.
Merci à toutes et à tous, rendez-vous pour le cours sur la méthodologie du mémoire professionnel et la
soutenance.', 'video', 90, false, 70
from public.courses c where c.slug = 'mas-rh-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Rémunération stratégique et politique de talents');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Méthodologie du mémoire professionnel et de la soutenance', '## Fiche du cours vidéo

Durée : 1h30. Public : étudiants de Master 2 en ressources humaines. Objectifs : savoir formuler une
problématique de mémoire professionnel pertinente, construire un plan de mémoire rigoureux, et préparer une
soutenance orale convaincante devant un jury. Matériel : tableau ou diaporama, dossier de cas Sahel PME
Services. Prérequis : avoir lu le cours écrit sur la méthodologie du mémoire.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture : le mémoire n''est pas un résumé de stage

Bonjour à toutes et à tous. Je commence par corriger une confusion très fréquente : un mémoire professionnel
n''est pas un résumé narratif de votre stage ou de votre expérience professionnelle. C''est un travail de
recherche appliquée, qui part d''une situation professionnelle réelle mais qui doit la transformer en une
véritable question d''investigation, mobiliser un cadre conceptuel rigoureux, et aboutir à des recommandations
argumentées. Si votre mémoire se contente de raconter ce que vous avez fait en stage, vous n''avez pas encore de
mémoire, vous avez un journal de bord. Notre objectif aujourd''hui est de vous apprendre à faire ce saut.

## 05:00 – 18:00 · Formuler une problématique de recherche pertinente

Une problématique de recherche pertinente interroge toujours une tension, un écart ou un arbitrage, jamais
seulement une description. Prenons un exemple concret et corrigeons-le ensemble. Thème de départ, trop
descriptif : « comment se passe l''intégration des nouveaux salariés dans l''entreprise X ? ». Reformulation en
problématique : « dans quelle mesure le processus d''intégration actuel de l''entreprise X permet-il de réduire
le turnover des nouveaux salariés au cours de leur première année, et quels ajustements seraient nécessaires
pour renforcer son efficacité ? ». Observez la différence : la première version ne débouche sur rien de
précis ; la seconde interroge un effet mesurable, le turnover, et ouvre explicitement sur des recommandations.
Entraînez-vous systématiquement à ce type de reformulation avant de choisir définitivement votre sujet de
mémoire.

## 18:00 – 32:00 · Étude de cas filée : Sahel PME Services

Prenons le cas fictif de Sahel PME Services, entreprise de services aux entreprises de 80 salariés à Dakar. Un
étudiant en stage observe que le recrutement repose entièrement sur des candidatures papier et des entretiens
non structurés, générant des délais longs, en moyenne 45 jours entre publication et embauche, chiffre fictif
pour l''exemple, et une perception mitigée des candidats. La problématique construite est : « dans quelle mesure
l''introduction d''outils numériques de recrutement peut-elle réduire les délais de recrutement d''une PME
sénégalaise sans dégrader la qualité de la relation avec les candidats ? ». Remarquez que cette problématique
relie explicitement deux enjeux en tension, l''efficacité et la qualité relationnelle, ce qui est précisément ce
qui en fait une bonne problématique de mémoire professionnel plutôt qu''une simple question technique.

## 32:00 – 45:00 · Construire le cadre conceptuel et la méthodologie

Le cadre conceptuel de ce mémoire mobiliserait, de façon critique, au moins deux familles d''approches : les
théories sur l''expérience candidat et la marque employeur, et les approches sur la digitalisation des processus
RH et ses risques d''adoption, que vous avez déjà rencontrées dans le cours sur la conduite du changement. C''est
important : les trois matières du Master 2 ne sont pas cloisonnées, votre mémoire peut et doit souvent mobiliser
des concepts vus dans plusieurs matières. Sur la méthodologie, la démarche proposée combine une analyse
documentaire des données internes de recrutement, délais, taux d''abandon de candidature, et quelques entretiens
semi-structurés avec des managers et des candidats récents. Point essentiel : reconnaissez explicitement, dans
votre mémoire, la limite d''un échantillon réduit d''entretiens, propre à un travail réalisé en temps contraint ;
cette honnêteté méthodologique est valorisée, pas sanctionnée, par un jury.

## 45:00 – 53:00 · Quiz interactif à mi-parcours

Pause active. Première question : pourquoi la problématique initiale « comment se passe l''intégration » est-
elle insuffisante pour un mémoire de Master 2 ? Deuxième question : pourquoi est-il utile, dans ce mémoire, de
mobiliser des concepts vus dans le cours sur la conduite du changement, alors que le sujet porte sur le
recrutement ? Troisième question : que risque un étudiant qui prétend que ses quelques entretiens sont
représentatifs de l''ensemble des candidats de l''entreprise ? Notez vos réponses. Pour la première, parce
qu''elle est purement descriptive et ne débouche sur aucune recommandation ni aucun effet mesurable. Pour la
deuxième, parce que l''introduction d''un outil numérique de recrutement est elle-même un projet de changement,
avec des risques de résistance et d''adoption similaires à ceux étudiés pour le SIRH. Pour la troisième, il
risque une question déstabilisante du jury sur la représentativité, qui fragiliserait la crédibilité de
l''ensemble du travail s''il ne peut pas reconnaître honnêtement cette limite.

## 53:00 – 65:00 · Construire des recommandations réalistes

Les recommandations finales doivent toujours tenir compte des contraintes réelles de l''organisation étudiée.
Pour une PME de 80 salariés à budget limité comme Sahel PME Services, privilégiez une solution progressive et
peu coûteuse, par exemple une plateforme de candidature en ligne simple, plutôt qu''un SIRH complet
immédiatement hors de portée financière. Proposez un calendrier de déploiement en plusieurs phases, avec des
indicateurs de suivi simples comme le délai moyen de recrutement et un score de satisfaction des candidats
mesuré par une courte enquête. Une recommandation théoriquement parfaite mais inapplicable au budget réel de
l''entreprise est un point faible du mémoire, même si le raisonnement conceptuel qui la sous-tend est juste.

## 65:00 – 78:00 · Préparer la soutenance orale

Passons maintenant à la soutenance elle-même, souvent sous-préparée par les étudiants qui se concentrent
uniquement sur la rédaction. Une bonne soutenance commence par une synthèse claire en quelques minutes,
rappelant la problématique, la méthodologie et les principales recommandations, sans relire le mémoire mot à
mot. Mais l''essentiel se joue dans la séance de questions du jury. Entraînez-vous à anticiper au moins trois
types de questions : des questions sur la représentativité ou les limites méthodologiques, déjà évoquées ;
des questions sur la faisabilité des recommandations, par exemple « l''entreprise a-t-elle les moyens de mettre
en œuvre ce que vous proposez ? » ; et des questions sur le cadre conceptuel, par exemple « pourquoi avez-vous
choisi cette approche plutôt qu''une autre ? ». L''attitude attendue face à une critique n''est jamais de la nier
ou de se justifier de façon défensive, mais de la reconnaître avec assurance, d''expliquer les précautions prises
pour en limiter l''impact, et de montrer la maturité professionnelle de considérer les conclusions comme des
hypothèses à confirmer plutôt que comme des certitudes absolues.

## 78:00 – 82:00 · Une dernière mise en garde : éviter le mémoire catalogue

Un dernier conseil avant de synthétiser : évitez le piège du mémoire catalogue, qui tente de traiter toutes les
dimensions possibles d''un sujet large sans jamais approfondir aucune d''entre elles. Un bon mémoire professionnel
fait des choix explicites de périmètre, les justifie en introduction, et les assume jusqu''à la soutenance ; un
jury valorise toujours davantage une analyse approfondie sur un périmètre resserré qu''un survol superficiel de
plusieurs sujets juxtaposés.

## 82:00 – 85:00 · Synthèse méthodologique

Retenez cinq réflexes pour votre propre mémoire : transformez toujours un thème descriptif en une problématique
qui interroge une tension ; mobilisez plusieurs approches théoriques et discutez-les de façon critique ; soyez
honnête sur les limites méthodologiques de votre travail ; gardez vos recommandations réalistes au regard des
contraintes concrètes de l''organisation ; et préparez votre soutenance en anticipant les questions critiques du
jury plutôt qu''en espérant qu''elles ne viennent pas.

## 85:00 – 90:00 · Évaluation finale

Six questions pour conclure. Zéro, pourquoi un mémoire qui se limite à raconter le déroulement d''un stage
n''est-il pas encore un mémoire professionnel au sens attendu ? Réponse : parce qu''il lui manque la
transformation en question de recherche, le cadre conceptuel critique et les recommandations argumentées, qui
seuls permettent de dépasser le simple récit narratif d''une expérience. Un, qu''est-ce qui distingue une
problématique de recherche d''une simple question
descriptive ? Deux, dans le cas Sahel PME Services, quelle est la problématique construite ? Trois, pourquoi
faut-il reconnaître explicitement les limites méthodologiques d''un mémoire plutôt que les dissimuler ? Quatre,
citez un type de question que peut poser un jury de soutenance. Cinq, pourquoi une recommandation
théoriquement idéale peut-elle constituer un point faible du mémoire ? Réponses : un, la problématique de
recherche interroge une tension, un écart ou un arbitrage, et ouvre sur des recommandations, contrairement à
une question purement descriptive. Deux, dans quelle mesure l''introduction d''outils numériques de recrutement
peut-elle réduire les délais sans dégrader la qualité de la relation avec les candidats. Trois, parce que
l''honnêteté méthodologique renforce la crédibilité du travail, alors que la dissimulation expose à une question
déstabilisante du jury qui fragiliserait l''ensemble de la soutenance. Quatre, par exemple une question sur la
représentativité des données ou sur la faisabilité budgétaire des recommandations. Cinq, parce qu''elle peut être
inapplicable au regard des contraintes réelles, budgétaires ou organisationnelles, de l''entreprise étudiée.
Merci à toutes et à tous, rendez-vous pour le dernier cours vidéo, l''atelier transversal consacré à la
méthodologie du mémoire.', 'video', 90, false, 80
from public.courses c where c.slug = 'mas-rh-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Méthodologie du mémoire professionnel et de la soutenance');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Atelier méthodologie du mémoire — cas transversal', '## Fiche du cours vidéo

Durée : 1h30. Public : étudiants de Master 2 en ressources humaines. Objectifs : s''entraîner en atelier à
construire, de bout en bout, un projet de mémoire professionnel à partir d''une situation d''entreprise
transversale mobilisant les trois matières de l''année, et s''exercer à une mini-soutenance orale. Matériel :
tableau ou diaporama, dossier de cas complet, chronomètre pour l''exercice de soutenance. Prérequis : avoir
suivi les trois cours vidéo précédents.

## Déroulé minuté

## 00:00 – 06:00 · Présentation de l''atelier méthodologie du mémoire

Bonjour à toutes et à tous. Cette dernière séance est un atelier entièrement consacré à la méthodologie du
mémoire professionnel, mais appliquée à un cas transversal qui mobilise aussi la conduite du changement et la
politique de talents, exactement comme votre propre mémoire devra probablement le faire si votre sujet touche
à une transformation RH. L''objectif est double : vous entraîner à construire un projet de mémoire complet en
temps limité, et vous exercer à une mini-soutenance orale, l''épreuve la plus redoutée et la moins préparée par
les étudiants.

## 06:00 – 14:00 · Présentation du cas transversal : Kaolack Agro-Export

Kaolack Agro-Export est une entreprise fictive de transformation et d''exportation de produits agricoles
employant 310 salariés. Elle vient d''acquérir un nouveau SIRH intégrant un module de gestion des talents et
déploie en parallèle une politique de fidélisation de ses cadres techniques. Le déploiement du SIRH se heurte à
une faible adoption chez les salariés de production, 22 % de dématérialisation des demandes de congés après
deux mois contre un objectif de 70 % fixé par la direction, alors que les cadres administratifs atteignent
85 %. Par ailleurs, trois ingénieurs qualité sont identifiés comme critiques pour les certifications export,
dont un seul dispose d''une relève identifiée. Un étudiant en stage dans cette entreprise souhaite écrire son
mémoire sur ce contexte.

## 14:00 – 28:00 · Construire la problématique à partir du cas transversal

Premier exercice de l''atelier : transformer ce contexte riche en une problématique de mémoire unique et
précise, sans essayer de tout traiter à la fois, ce qui est une erreur fréquente. Une problématique trop large
serait : « comment améliorer la gestion des talents chez Kaolack Agro-Export ? ». Une problématique resserrée
et pertinente pourrait être : « dans quelle mesure le déploiement d''un SIRH avancé permet-il d''améliorer
l''efficacité de la gestion des talents dans une entreprise agro-industrielle sénégalaise, tout en garantissant
l''adoption de l''outil par l''ensemble des catégories de salariés ? ». Remarquez que cette problématique choisit
délibérément de se concentrer sur le lien entre digitalisation et adoption, en laissant la question spécifique
des ingénieurs qualité comme un exemple d''illustration plutôt que comme un second sujet distinct ; un bon
mémoire traite un sujet précis en profondeur plutôt que plusieurs sujets superficiellement.

## 28:00 – 42:00 · Construire le plan de mémoire

Deuxième exercice : construire le plan en quatre parties. Partie un, revue de littérature critique sur la
digitalisation RH et la conduite du changement, mobilisant les registres de résistance vus dans le premier
cours vidéo de l''année. Partie deux, méthodologie combinant l''analyse des données d''adoption du SIRH, taux de
dématérialisation par catégorie de salariés, et des entretiens avec des salariés de différentes catégories,
production et administratifs, pour comprendre les causes de l''écart observé. Partie trois, analyse des
résultats, reliant explicitement les écarts d''adoption observés au cadre conceptuel sur les registres de
résistance, par exemple en vérifiant si l''écart entre production et administratifs relève davantage de la
capacité, de la compréhension ou de l''adhésion. Partie quatre, recommandations opérationnelles différenciées par
catégorie de salariés, dans la limite des contraintes budgétaires réelles de l''entreprise.

## 42:00 – 50:00 · Quiz interactif à mi-parcours

Pause active. Première question : pourquoi est-il préférable, dans ce cas, de concentrer le mémoire sur
l''adoption du SIRH plutôt que de traiter à la fois ce sujet et la succession planning des ingénieurs qualité ?
Deuxième question : quelle partie du plan de mémoire permettrait d''expliquer pourquoi les salariés de production
adoptent moins le SIRH que les cadres administratifs ? Troisième question : quel registre de résistance
l''étudiant devrait-il vérifier en priorité chez les salariés de production, au regard de ce que nous avons vu
dans le premier cours vidéo de l''année ? Notez vos réponses. Pour la première, parce qu''un mémoire professionnel
doit traiter un sujet précis en profondeur ; vouloir couvrir deux sujets distincts, digitalisation et
succession planning, risquerait de produire une analyse superficielle sur les deux. Pour la deuxième, la partie
trois, l''analyse des résultats, reliée au cadre conceptuel. Pour la troisième, le registre de capacité, probable
compte tenu de l''accès limité aux outils numériques en situation de production, sans exclure une vérification du
registre de compréhension ou d''adhésion.

## 50:00 – 62:00 · Exercice de mini-soutenance : construire une synthèse de trois minutes

Troisième exercice, le plus exigeant : je vous demande maintenant de préparer, en vous chronométrant, une
synthèse orale de trois minutes de ce projet de mémoire, comme si vous étiez l''étudiant devant un jury. Votre
synthèse doit couvrir, dans cet ordre et sans dépasser le temps : la problématique en une phrase, le contexte de
l''entreprise en deux phrases, la méthodologie en deux phrases, les principaux résultats attendus ou déjà
observés en trois phrases, et une recommandation phare en une phrase. Entraînez-vous à voix haute, maintenant,
en vous chronométrant réellement : c''est un exercice que beaucoup d''étudiants ne font jamais avant le jour de
leur soutenance, et qui fait pourtant une différence considérable sur la clarté perçue par le jury.

## 62:00 – 76:00 · Exercice de questions-réponses simulées

Quatrième exercice : anticipons les questions du jury sur ce projet précis. Question possible : « votre
problématique parle de toutes les catégories de salariés, mais vous semblez vous concentrer surtout sur les
salariés de production ; pourquoi ? » Réponse attendue : reconnaître ce choix, l''expliquer par le fait que
l''écart d''adoption le plus significatif se situe précisément là, tout en précisant que les cadres administratifs
sont traités comme groupe de comparaison plutôt qu''ignorés. Question possible : « comment savez-vous que votre
recommandation de bornes numériques dédiées en atelier sera réellement utilisée ? » Réponse attendue :
reconnaître qu''il s''agit d''une hypothèse à tester, proposer un indicateur de suivi concret après mise en place,
et citer, si pertinent, un registre de résistance résiduel possible, par exemple l''adhésion, qui pourrait
nécessiter un accompagnement complémentaire si la seule solution technique ne suffit pas.

## 76:00 – 81:00 · Ce que révèle cet atelier sur votre propre mémoire

Avant de conclure, un dernier point de méthode transférable à votre propre travail : notez comment, dans cet
atelier, nous avons systématiquement relié un concept d''une matière, les registres de résistance vus pour la
conduite du changement, à l''analyse d''une autre matière, la gestion des talents et le SIRH. C''est exactement
cette capacité à faire dialoguer les matières de l''année, plutôt qu''à les traiter en silos séparés, qui
distingue un mémoire professionnel de Master 2 réellement abouti d''un simple empilement de chapitres
indépendants les uns des autres.

## 81:00 – 85:00 · Synthèse de l''atelier et conseils finaux pour l''année de Master 2

Pour conclure cette dernière séance de l''année, trois conseils finaux. Premièrement, choisissez un sujet de
mémoire suffisamment précis pour être traité en profondeur dans le temps dont vous disposez, plutôt qu''un sujet
trop vaste qui vous obligerait à rester superficiel. Deuxièmement, entraînez-vous à l''oral bien avant la date
de soutenance, en vous chronométrant réellement comme nous venons de le faire, et en simulant des questions
critiques avec un camarade ou un enseignant. Troisièmement, rappelez-vous que la qualité d''un mémoire
professionnel se juge autant à son honnêteté méthodologique et à la pertinence opérationnelle de ses
recommandations qu''à l''élégance de sa rédaction.

## 85:00 – 90:00 · Évaluation finale

Cinq questions pour conclure l''année. Un, dans le cas Kaolack Agro-Export, quelle problématique resserrée avons-
nous construite ? Deux, quelles sont les quatre parties du plan de mémoire proposé ? Trois, pourquoi est-il
préférable de traiter un sujet précis en profondeur plutôt que deux sujets superficiellement ? Quatre, citez les
cinq éléments attendus dans une synthèse orale de trois minutes. Cinq, quelle attitude adopter face à une
question critique du jury sur une limite méthodologique ? Réponses : un, dans quelle mesure le déploiement d''un
SIRH avancé améliore-t-il la gestion des talents tout en garantissant l''adoption par toutes les catégories de
salariés. Deux, revue de littérature, méthodologie, analyse des résultats, recommandations. Trois, parce qu''un
mémoire professionnel doit démontrer une capacité d''analyse approfondie, difficile à atteindre si le sujet est
trop large. Quatre, la problématique en une phrase, le contexte en deux phrases, la méthodologie en deux
phrases, les résultats attendus en trois phrases, et une recommandation phare en une phrase. Cinq, reconnaître
la limite avec assurance, expliquer les précautions prises, et présenter les conclusions comme des hypothèses à
confirmer plutôt que comme des certitudes. Merci à toutes et à tous pour votre travail cette année, et bon
courage pour la rédaction et la soutenance de votre mémoire professionnel.', 'video', 90, false, 90
from public.courses c where c.slug = 'mas-rh-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Atelier méthodologie du mémoire — cas transversal');
