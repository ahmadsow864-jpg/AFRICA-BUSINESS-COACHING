-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Cours (partie 13/13). À exécuter après seed.sql.

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
