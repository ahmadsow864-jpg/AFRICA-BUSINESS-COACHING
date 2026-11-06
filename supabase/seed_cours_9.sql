-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Cours (partie 9/9). À exécuter après seed.sql.

-- Cours : Contrôle de gestion Licence 1 : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'lic-cg-l1', (select id from public.levels where name = 'Licence 1'), null, 'Contrôle de gestion', 'Contrôle de gestion Licence 1 : réussir ses examens', 'Préparation aux partiels et examens semestriels de première année de Licence en contrôle de gestion : introduction au contrôle de gestion et à l''organisation, comptabilité analytique en coûts complets, mathématiques et statistiques de gestion. Fiches de cours, cas d''entreprises fictives d''Afrique de l''Ouest, sujet type corrigé et trois cours vidéo de 1h30. Prérequis : bases de la comptabilité générale (SYSCOHADA révisé) et aisance avec les pourcentages.', true, 331
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Licence 1 en Contrôle de gestion', '## Objectifs de la leçon

- Comprendre l''organisation de la première année de Licence en contrôle de gestion dans le système LMD.
- Identifier les matières clés de l''année et les compétences attendues à l''examen.
- Connaître les types d''épreuves et adopter une méthode de révision efficace.
- Construire un plan de révision réaliste sur six semaines.

## 1. La Licence 1 dans le système LMD

Dans les universités et écoles de gestion du Sénégal et de l''espace UEMOA, la Licence suit le système LMD (Licence, Master, Doctorat). L''année est découpée en deux semestres. Chaque semestre regroupe des unités d''enseignement (UE) qui rassemblent plusieurs matières (éléments constitutifs). Chaque UE est affectée d''un nombre de crédits qui reflète la charge de travail de l''étudiant, cours magistraux, travaux dirigés et travail personnel compris.

Les modalités précises (nombre de crédits par UE, poids du contrôle continu, règles de compensation entre matières, sessions de rattrapage) varient d''un établissement à l''autre. Votre premier réflexe doit donc être de lire le règlement des études et la maquette de votre filière, disponibles auprès de la scolarité. Ne vous fiez pas aux rumeurs de couloir : une seule note éliminatoire mal anticipée peut coûter un semestre.

## 2. Les matières clés de l''année

En première année, la filière contrôle de gestion pose les fondations. Trois matières concentrent l''essentiel des exercices d''examen et sont traitées dans ce cours :

- Introduction au contrôle de gestion et à l''organisation : missions du contrôleur, notions de performance (efficacité, efficience, économie), structures d''organisation, centres de responsabilité, cycle de pilotage.
- Comptabilité analytique 1 : distinction entre charges directes et indirectes, incorporation des charges, tableau de répartition des centres d''analyse, unités d''œuvre, calcul des coûts complets (achat, production, revient) et du résultat analytique.
- Mathématiques et statistiques de gestion : pourcentages et indices, intérêts simples et composés, actualisation, emprunts indivis, statistique descriptive et ajustement linéaire, utilisé pour séparer charges fixes et charges variables.

Ces matières s''appuient sur d''autres enseignements de l''année : comptabilité générale (SYSCOHADA révisé), microéconomie, droit des affaires (OHADA), informatique de gestion (tableur). La comptabilité générale est indispensable : la comptabilité analytique part des charges enregistrées en classe 6.

## 3. Les types d''épreuves

- L''exercice chiffré : le plus fréquent. Exemple : compléter un tableau de répartition puis calculer un coût de revient. Les points se gagnent sur la démarche et la présentation autant que sur le résultat final.
- Le cas pratique : une entreprise fictive, plusieurs annexes, une série de questions enchaînées. Une erreur au début se propage ; le correcteur applique en général la règle de la « cohérence » si vous montrez votre méthode.
- Les questions de cours et le QCM : définitions précises (charge supplétive, unité d''œuvre, centre de profit), avec parfois justification demandée.
- La dissertation ou la question de réflexion : par exemple « Le contrôle de gestion est-il un outil de surveillance ou d''aide à la décision ? ». Il faut une introduction, un plan en deux ou trois parties et des exemples.
- Le projet ou dossier : en contrôle continu, construire un petit modèle de coûts sur tableur pour une entreprise réelle ou fictive.

## 4. Méthode de révision

La méthode la plus efficace combine trois gestes. D''abord, la fiche : une page par chapitre, avec les définitions, les formules et un schéma décrit en mots (par exemple : charges de la comptabilité générale → tri direct/indirect → centres d''analyse → unités d''œuvre → coûts). Ensuite, l''entraînement : refaire les exercices de TD sans regarder le corrigé, chronomètre en main. Enfin, l''auto-correction : comparer ligne par ligne et noter dans un carnet d''erreurs les fautes récurrentes (oubli des charges supplétives, mauvais choix de l''unité d''œuvre, confusion entre quantités produites et vendues).

Pour les exercices chiffrés, adoptez une présentation systématique : tableau clair, unités indiquées (FCFA, heures, kg), résultats intermédiaires encadrés par une phrase. Vérifiez toujours une égalité de contrôle : total de la répartition primaire égal aux charges incorporées, stock initial plus entrées égal à sorties plus stock final, résultat analytique concordant avec le résultat de la comptabilité générale.

## 5. Plan de révision sur 6 semaines

- Semaine 1 : relecture des cours d''introduction au contrôle de gestion ; fiches de définitions ; 2 dissertations rédigées en plan détaillé.
- Semaine 2 : comptabilité analytique, incorporation des charges et tableau de répartition ; 4 exercices de répartition, dont un avec prestations réciproques.
- Semaine 3 : coûts d''achat, inventaire permanent (CUMP), coûts de production et de revient ; 2 cas complets avec concordance des résultats.
- Semaine 4 : mathématiques financières (intérêts, actualisation, tableaux d''emprunt) ; statistiques (moyenne, écart-type, ajustement par les moindres carrés).
- Semaine 5 : sujets d''annales ou sujets types en conditions réelles (3 heures, sans document) ; correction et carnet d''erreurs.
- Semaine 6 : révision ciblée des points faibles, relecture des fiches, sommeil régulier. La veille de l''épreuve, pas de nouveau chapitre.

Travailler en groupe de trois ou quatre étudiants est très rentable pour les cas pratiques : chacun corrige la copie d''un autre, ce qui oblige à expliquer la méthode.

## 6. Le jour de l''épreuve

Lisez tout le sujet pendant les dix premières minutes et repérez les questions indépendantes. Répartissez votre temps selon le barème. Commencez par les questions que vous maîtrisez. Soignez la présentation des tableaux. Si vous êtes bloqué, posez une hypothèse explicite (« à défaut, je retiens un coût d''unité d''œuvre de 400 FCFA ») et poursuivez : vous sauverez les points de la suite. Gardez dix minutes à la fin pour relire les calculs et les unités.

## Points clés

- Lire le règlement des études : crédits, compensation et rattrapage dépendent de votre établissement.
- Trois matières clés : introduction au contrôle de gestion, comptabilité analytique 1, mathématiques et statistiques de gestion.
- Une méthode : fiche, entraînement chronométré, carnet d''erreurs.
- Toujours une égalité de contrôle dans les calculs.

## Exercices

- Exercice 1 : citez trois types d''épreuves et, pour chacun, une erreur fréquente à éviter.
- Exercice 2 : construisez votre propre plan de révision sur 6 semaines en tenant compte de vos points faibles.
- Exercice 3 : rédigez la fiche « schéma des coûts complets » en cinq étapes.

## Corrigé

- Exercice 1 : exercice chiffré, oublier les unités et les résultats intermédiaires ; cas pratique, ne pas exploiter toutes les annexes ; dissertation, réciter le cours sans problématique ni exemples.
- Exercice 2 : réponse personnelle ; un bon plan affecte plus de temps aux matières faibles, prévoit au moins deux sujets complets en conditions réelles et une dernière semaine allégée.
- Exercice 3 : 1) partir des charges de la comptabilité générale ; 2) retirer les charges non incorporables et ajouter les charges supplétives ; 3) affecter les charges directes aux coûts et répartir les charges indirectes dans les centres (répartition primaire puis secondaire) ; 4) calculer le coût des unités d''œuvre et imputer les centres aux coûts ; 5) calculer coûts d''achat, de production, de revient et résultat analytique, puis vérifier la concordance avec la comptabilité générale.', 'texte', 45, true, 10
from public.courses c where c.slug = 'lic-cg-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Licence 1 en Contrôle de gestion');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Introduction au contrôle de gestion et à l''organisation : l''essentiel pour l''examen', '## Objectifs de la leçon

- Définir le contrôle de gestion, ses missions et sa place dans l''organisation.
- Mesurer la performance avec les notions d''efficacité, d''efficience et d''économie.
- Distinguer les structures d''organisation et les centres de responsabilité.
- Situer la comptabilité analytique par rapport à la comptabilité générale.

## 1. Définitions

Le contrôle de gestion est l''ensemble des dispositifs qui aident les responsables à piloter l''organisation vers ses objectifs en utilisant les ressources de façon efficace et efficiente. Dans les années 1960, Robert N. Anthony en a proposé une définition devenue classique : un processus par lequel les dirigeants s''assurent que les ressources sont obtenues et utilisées avec efficacité et efficience pour atteindre les objectifs de l''organisation. Les auteurs plus récents insistent sur la dimension d''aide à la décision et d''apprentissage, au-delà de la simple surveillance.

Contrôler ne veut pas dire inspecter ou sanctionner. Le contrôle de gestion se distingue de l''audit interne (qui vérifie la conformité et la maîtrise des risques) et du contrôle fiscal (externe). Il regarde vers l''avenir : prévoir, suivre, corriger.

## 2. Le cycle du contrôle de gestion

Le contrôle de gestion fonctionne en boucle :

- Planifier : traduire la stratégie en objectifs chiffrés (plan opérationnel, budgets).
- Agir : les opérationnels mettent en œuvre les actions.
- Mesurer : comparer le réalisé au prévu (écarts, indicateurs, tableaux de bord).
- Corriger : analyser les causes des écarts et décider des actions correctives, ou réviser les objectifs.

Schéma décrit : un cercle à quatre flèches « prévoir → agir → mesurer → corriger », avec au centre les objectifs stratégiques. On parle aussi de contrôle a priori (avant l''action : budgets), concomitant (pendant : tableaux de bord) et a posteriori (après : analyse des écarts, coûts).

## 3. Les trois dimensions de la performance

- Efficacité : degré d''atteinte des objectifs. Efficacité = résultat obtenu / objectif.
- Efficience : rapport entre résultats et ressources consommées. On la mesure souvent par un coût unitaire ou une productivité.
- Économie : obtention des ressources au meilleur coût (prix d''achat, conditions de financement).

Exemple chiffré. La société fictive Sahel Jus SARL, installée à Thiès, fabrique des jus de bissap et de bouye. Pour le trimestre, l''objectif était de 120 000 bouteilles pour un coût prévu de 450 FCFA par bouteille, soit un budget de 54 000 000 FCFA. Elle a produit 108 000 bouteilles pour un coût total réel de 49 680 000 FCFA.

- Efficacité = 108 000 / 120 000 = 90,0 % : l''objectif de volume n''est pas atteint.
- Coût unitaire réel = 49 680 000 / 108 000 = 460 FCFA, contre 450 FCFA prévus, soit 2,2 % de plus : l''efficience s''est dégradée.
- Piège classique : comparer le coût total réel (49 680 000) au budget initial (54 000 000) laisse croire à une économie de 4 320 000 FCFA. Or il faut comparer au budget ajusté au volume réel : 108 000 × 450 = 48 600 000 FCFA. Le dépassement réel est de 1 080 000 FCFA.

Cette idée de « budget flexible » sera approfondie en Licence 2.

## 4. Le contrôle de gestion dans l''organisation

Le contrôleur de gestion peut être rattaché à la direction générale (position de conseil, indépendance vis-à-vis des opérationnels) ou à la direction administrative et financière (proximité des données comptables, mais risque d''une vision trop financière). Dans les PME, la fonction est souvent assurée par le directeur financier, voire par le dirigeant lui-même.

Ses missions : construire et suivre les budgets, calculer les coûts, produire les tableaux de bord, analyser les écarts, conseiller les responsables, participer aux études de rentabilité, animer le dialogue de gestion.

Les structures d''organisation influencent le contrôle :

- Structure fonctionnelle : découpage par fonctions (production, commercial, finance). Simple, mais la rentabilité n''est visible qu''au niveau global.
- Structure divisionnelle : découpage par produits, marchés ou zones (par exemple une division Dakar et une division Ziguinchor). Chaque division peut être évaluée sur sa rentabilité.
- Structure matricielle : croisement fonctions × projets. Riche, mais la responsabilité est partagée et plus difficile à mesurer.

## 5. Les centres de responsabilité

Un centre de responsabilité est une unité dont le responsable dispose d''une délégation et rend compte de sa performance sur des indicateurs qu''il maîtrise.

- Centre de coût : le responsable maîtrise des coûts (atelier de production, service comptable). Indicateur : coût par unité, écart sur budget.
- Centre de recettes (ou de chiffre d''affaires) : service commercial ; indicateur : chiffre d''affaires, volume, part de marché.
- Centre de profit : le responsable maîtrise coûts et recettes (une agence, une boutique) ; indicateur : marge, résultat.
- Centre d''investissement : il décide aussi de ses investissements (une filiale) ; indicateur : rentabilité des capitaux investis.

Principe de contrôlabilité : on n''évalue un responsable que sur ce qu''il peut influencer.

## 6. Comptabilité générale et comptabilité analytique

La comptabilité générale (SYSCOHADA révisé) est obligatoire, normalisée, tournée vers les tiers ; elle classe les charges par nature (achats, transports, services extérieurs, charges de personnel) et calcule un résultat global. La comptabilité analytique (ou de gestion) est facultative, libre dans ses méthodes, tournée vers les décideurs internes ; elle reclasse les charges par destination (produit, activité, centre) pour calculer des coûts et des résultats partiels.

## Points clés

- Contrôle de gestion = piloter, pas sanctionner.
- Efficacité (objectifs), efficience (ressources), économie (prix des ressources).
- Toujours comparer le réel à un budget ajusté au volume réel.
- Centres de coût, de recettes, de profit, d''investissement ; principe de contrôlabilité.

## Exercices pratiques

- Exercice 1 : définissez en une phrase efficacité, efficience et économie.
- Exercice 2 : classez en centres de responsabilité : l''atelier d''emballage d''une huilerie ; l''agence de Kaolack d''une banque ; la filiale ivoirienne d''un groupe sénégalais ; le service des ventes export.
- Exercice 3 : une clinique fictive de Saint-Louis visait 9 000 consultations pour un coût de 13 500 000 FCFA. Elle en a réalisé 8 100 pour 12 960 000 FCFA. Calculez l''efficacité, les coûts unitaires prévu et réel, et le budget ajusté.
- Exercice 4 : citez deux avantages et deux limites du rattachement du contrôleur de gestion à la DAF.
- Exercice 5 : donnez trois différences entre comptabilité générale et comptabilité analytique.
- Exercice 6 (cas pratique) : le directeur de Sahel Jus affirme : « Nous avons dépensé moins que prévu, la gestion est excellente. » Rédigez une réponse argumentée de dix lignes.

## Corrigé

- Exercice 1 : efficacité = atteinte des objectifs ; efficience = résultats obtenus rapportés aux ressources consommées ; économie = acquisition des ressources au moindre coût à qualité égale.
- Exercice 2 : centre de coût ; centre de profit ; centre d''investissement ; centre de recettes.
- Exercice 3 : efficacité = 8 100 / 9 000 = 90,0 % ; coût unitaire prévu = 1 500 FCFA ; coût unitaire réel = 1 600 FCFA ; budget ajusté = 8 100 × 1 500 = 12 150 000 FCFA ; dépassement = 810 000 FCFA, malgré une dépense totale inférieure au budget initial.
- Exercice 4 : avantages, accès direct aux données comptables, cohérence budget-comptabilité ; limites, vision trop financière, moindre indépendance vis-à-vis du directeur financier.
- Exercice 5 : obligation légale contre caractère facultatif ; classement par nature contre classement par destination ; destinataires externes contre internes (on peut ajouter : normalisation SYSCOHADA contre liberté des méthodes ; périodicité annuelle contre mensuelle ou plus fine).
- Exercice 6 : la dépense totale (49 680 000 FCFA) est inférieure au budget initial uniquement parce que le volume a baissé (90,0 % de l''objectif). Ramené au volume réel, le budget était de 48 600 000 FCFA : il y a un dépassement de 1 080 000 FCFA et le coût unitaire passe de 450 à 460 FCFA. La gestion n''est donc ni efficace (volume manqué) ni efficiente (coût unitaire en hausse). Il faut analyser les causes : prix des intrants, rendement de la main-d''œuvre, pannes, et proposer des actions correctives.', 'texte', 55, false, 20
from public.courses c where c.slug = 'lic-cg-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Introduction au contrôle de gestion et à l''organisation : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comptabilité analytique 1 (coûts complets) : l''essentiel pour l''examen', '## Objectifs de la leçon

- Distinguer charges directes et indirectes, incorporables, non incorporables et supplétives.
- Construire un tableau de répartition et calculer le coût des unités d''œuvre.
- Calculer les coûts complets et le résultat analytique, puis vérifier la concordance.

## 1. Les charges incorporées

On part des charges de la classe 6 du SYSCOHADA révisé. On retire les charges non incorporables (sans lien avec l''exploitation normale : pénalités, charges hors activités ordinaires). On ajoute les charges supplétives, absentes de la comptabilité générale mais économiquement réelles : rémunération des capitaux propres, travail non rémunéré de l''exploitant.

Charges incorporées = charges de la comptabilité générale − charges non incorporables + charges supplétives.

## 2. Charges directes, charges indirectes et centres d''analyse

Une charge directe s''affecte sans calcul intermédiaire à un coût : le bois d''une table, la main-d''œuvre directe (MOD). Une charge indirecte concerne plusieurs coûts (loyer, électricité, chef d''atelier) et passe par des centres d''analyse :

- Centres auxiliaires (administration, entretien) : ils travaillent pour les autres centres et sont vidés lors de la répartition secondaire.
- Centres principaux : leur coût est imputé aux produits par une unité d''œuvre (heure machine, heure de MOD) ou une assiette de frais (100 FCFA de chiffre d''affaires).

Schéma décrit : répartition primaire → répartition secondaire → total du centre principal ÷ nombre d''unités d''œuvre = coût de l''UO → imputation aux coûts.

## 4. Cas complet : Teranga Bois (entreprise fictive, Thiès)

Teranga Bois fabrique des tables et des chaises en bois. Données du mois de mars (montants hors taxes) :

- Charges indirectes de la comptabilité générale : 6 500 000 FCFA, dont 300 000 FCFA de pénalités non incorporables. Charges supplétives (rémunération des capitaux propres) : 200 000 FCFA.
- Stock initial de planches : 500 planches pour 1 450 000 FCFA. Achats : 2 000 planches à 3 000 FCFA.
- Production : 200 tables (6 planches, 2 heures machine, 4 heures de MOD chacune) et 600 chaises (1,5 planche, 0,5 heure machine, 1 heure de MOD chacune). MOD à 2 500 FCFA l''heure, charges sociales comprises.
- Ventes : 180 tables à 60 000 FCFA et 550 chaises à 16 000 FCFA. Pas de stock initial de produits finis. Sorties de stock valorisées au CUMP.

Étape 1, charges incorporées : 6 500 000 − 300 000 + 200 000 = 6 400 000 FCFA.

Étape 2, répartition primaire : Administration 1 000 000, Entretien 500 000, Approvisionnement 540 000, Coupe 1 500 000, Montage 2 140 000, Distribution 720 000. Contrôle : le total est bien égal à 6 400 000 FCFA.

Étape 3, répartition secondaire en cascade. L''administration se répartit : 10 % Entretien, 20 % Approvisionnement, 30 % Coupe, 20 % Montage, 20 % Distribution. L''entretien, qui reçoit 100 000 FCFA de l''administration, totalise 600 000 FCFA et se répartit : 10 % Approvisionnement, 50 % Coupe, 30 % Montage, 10 % Distribution.

- Approvisionnement : primaire 540 000 ; reçu de l''administration 200 000 ; reçu de l''entretien 60 000 ; total 800 000 FCFA.
- Coupe : primaire 1 500 000 ; reçu de l''administration 300 000 ; reçu de l''entretien 300 000 ; total 2 100 000 FCFA.
- Montage : primaire 2 140 000 ; reçu de l''administration 200 000 ; reçu de l''entretien 180 000 ; total 2 520 000 FCFA.
- Distribution : primaire 720 000 ; reçu de l''administration 200 000 ; reçu de l''entretien 60 000 ; total 980 000 FCFA.

Étape 4, unités d''œuvre :

- Approvisionnement : planche achetée, 2 000 UO, coût 400 FCFA.
- Coupe : heure machine, 200 × 2 + 600 × 0,5 = 700 UO, coût 3 000 FCFA.
- Montage : heure de MOD, 200 × 4 + 600 × 1 = 1 400 UO, coût 1 800 FCFA.
- Distribution : 100 FCFA de chiffre d''affaires ; CA = 10 800 000 + 8 800 000 = 19 600 000 FCFA, soit 196 000 UO, coût 5 FCFA.

Étape 5, coût d''achat et stock. Coût d''achat = 6 000 000 + 800 000 = 6 800 000 FCFA, soit 3 400 FCFA la planche. CUMP = (1 450 000 + 6 800 000) / (500 + 2 000) = 3 300 FCFA. Sorties : 1 200 + 900 = 2 100 planches ; stock final 400 planches valant 1 320 000 FCFA.

Étape 6, coûts de production :

- Tables : bois 3 960 000 ; MOD 2 000 000 ; Coupe 1 200 000 ; Montage 1 440 000 ; total 8 600 000 FCFA, soit 43 000 FCFA la table.
- Chaises : bois 2 970 000 ; MOD 1 500 000 ; Coupe 900 000 ; Montage 1 080 000 ; total 6 450 000 FCFA, soit 10 750 FCFA la chaise.

Étape 7, coûts de revient et résultats :

- Tables : 180 × 43 000 + distribution 540 000 = 8 280 000 FCFA ; résultat = 10 800 000 − 8 280 000 = 2 520 000 FCFA.
- Chaises : 550 × 10 750 + distribution 440 000 = 6 352 500 FCFA ; résultat = 8 800 000 − 6 352 500 = 2 447 500 FCFA.
- Résultat analytique global : 4 967 500 FCFA.

Étape 8, concordance : résultat de la comptabilité générale = résultat analytique + charges supplétives − charges non incorporables = 4 967 500 + 200 000 − 300 000 = 4 867 500 FCFA. Vérification directe : ventes 19 600 000 + production stockée 1 397 500 − achats 6 000 000 − variation de stock de bois 130 000 − MOD 3 500 000 − autres charges 6 500 000 = 4 867 500 FCFA.

## Points clés

- Charges incorporées = charges CG − non incorporables + supplétives.
- Répartition primaire, puis secondaire, puis coût de l''unité d''œuvre.
- Coût d''achat → stock (CUMP) → coût de production → coût de revient → résultat → concordance.

## Exercices pratiques

- Exercice 1 : charges CG 9 400 000 FCFA, dont 250 000 de charges non incorporables ; l''exploitant, non salarié, estime son travail à 400 000 FCFA par mois. Calculez les charges incorporées.
- Exercice 2 : stock initial 1 000 kg pour 2 150 000 FCFA ; entrées 3 000 kg pour un coût d''achat de 6 450 000 FCFA. Calculez le CUMP.
- Exercice 3 : coût de production de 400 sacs : matière 1 840 000 FCFA, 320 h de MOD à 2 000 FCFA, atelier 160 UO à 4 500 FCFA. Coût unitaire ?
- Exercice 4 : deux centres auxiliaires se rendent des prestations réciproques. Gestion du personnel (GP) : primaire 600 000, reçoit 20 % de l''Entretien. Entretien : primaire 400 000, reçoit 10 % de GP. Calculez les totaux après répartition secondaire.
- Exercice 5 (cas pratique) : pour Teranga Bois, le prix des chaises passe à 15 000 FCFA (mêmes quantités, distribution toujours à 5 FCFA par 100 FCFA de CA). Calculez le nouveau résultat sur chaises et commentez.

## Corrigé

- Exercice 1 : 9 400 000 − 250 000 + 400 000 = 9 550 000 FCFA.
- Exercice 2 : (2 150 000 + 6 450 000) / (1 000 + 3 000) = 8 600 000 / 4 000 = 2 150 FCFA le kg.
- Exercice 3 : 1 840 000 + 320 × 2 000 + 160 × 4 500 = 1 840 000 + 640 000 + 720 000 = 3 200 000 FCFA ; coût unitaire 8 000 FCFA.
- Exercice 4 : GP = 600 000 + 0,2 E et E = 400 000 + 0,1 GP. En substituant : GP = 600 000 + 80 000 + 0,02 GP, d''où GP = 680 000 / 0,98 = 693 878 FCFA ; E = 400 000 + 0,1 × GP = 469 388 FCFA (arrondis).
- Exercice 5 : CA chaises = 550 × 15 000 = 8 250 000 FCFA ; distribution = 412 500 ; coût de revient = 5 912 500 + 412 500 = 6 325 000 ; résultat = 1 925 000 FCFA, contre 2 447 500 FCFA auparavant, soit une baisse de 21,3 %. Le produit reste bénéficiaire (coût de l''UO de distribution supposé inchangé).', 'texte', 60, false, 30
from public.courses c where c.slug = 'lic-cg-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comptabilité analytique 1 (coûts complets) : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Mathématiques et statistiques de gestion : l''essentiel pour l''examen', '## Objectifs de la leçon

- Maîtriser pourcentages, indices et taux de croissance moyens.
- Calculer intérêts simples, intérêts composés, valeurs actuelles et annuités d''emprunt.
- Décrire une série statistique (moyenne, écart-type) et réaliser un ajustement linéaire par les moindres carrés.
- Utiliser l''ajustement pour séparer la partie fixe et la partie variable d''un coût.

## 1. Pourcentages, indices et taux moyens

Taux de variation = (valeur finale − valeur initiale) / valeur initiale. Une PME de Mbour réalise un chiffre d''affaires de 80 000 000 FCFA en N−1 et 92 000 000 FCFA en N : variation = 15,0 %. Indice N base 100 en N−1 = 100 × 92 000 000 / 80 000 000 = 115.

Attention : des variations successives se multiplient, elles ne s''additionnent pas. Une hausse de 10 % suivie d''une baisse de 10 % donne 1,10 × 0,90 = 0,99, soit −1 %.

Taux moyen annuel sur n années : t = (Vn / V0)^(1/n) − 1. Si le chiffre d''affaires passe de 50 000 000 à 72 000 000 FCFA en 4 ans : t = (72 000 000 / 50 000 000)^(1/4) − 1 = 1,44^(0,25) − 1 ≈ 9,54 %.

## 2. Intérêts simples

Utilisés pour les opérations à court terme (moins d''un an). I = C × t × n, avec n en années ; en jours, on utilise l''année commerciale de 360 jours : I = C × t × j / 360.

Exemple : un découvert de 2 000 000 FCFA pendant 90 jours au taux annuel de 9 % (taux fictif pour l''exemple) coûte 2 000 000 × 0,09 × 90 / 360 = 45 000 FCFA.

## 3. Intérêts composés et actualisation

À intérêts composés, les intérêts s''ajoutent au capital et produisent eux-mêmes des intérêts. Valeur acquise : Cn = C0 × (1 + t)^n. Un placement de 5 000 000 FCFA à 8 % par an pendant 3 ans (taux fictif) devient 5 000 000 × 1,08³ = 6 298 560 FCFA.

L''actualisation fait le chemin inverse : C0 = Cn × (1 + t)^(−n). Une somme de 10 000 000 FCFA reçue dans 2 ans, actualisée à 10 %, vaut aujourd''hui 10 000 000 / 1,1² ≈ 8 264 463 FCFA. C''est la base du choix d''investissement.

## 4. Emprunt indivis remboursé par annuités constantes

Annuité constante : a = C × t / (1 − (1 + t)^(−n)). Chaque annuité = intérêt de l''année (capital restant dû × t) + amortissement du capital.

Exemple : Teranga Bois emprunte 12 000 000 FCFA sur 4 ans à 10 % (taux fictif). a = 12 000 000 × 0,10 / (1 − 1,1^(−4)) ≈ 3 785 650 FCFA. Tableau d''amortissement (arrondi au franc, la dernière annuité étant ajustée de quelques francs pour solder exactement le capital) :

- Année 1 : capital début 12 000 000 ; intérêt 1 200 000 ; amortissement 2 585 650 ; annuité 3 785 650 ; capital fin 9 414 350.
- Année 2 : capital début 9 414 350 ; intérêt 941 435 ; amortissement 2 844 215 ; annuité 3 785 650 ; capital fin 6 570 135.
- Année 3 : capital début 6 570 135 ; intérêt 657 014 ; amortissement 3 128 636 ; annuité 3 785 650 ; capital fin 3 441 499.
- Année 4 : capital début 3 441 499 ; intérêt 344 150 ; amortissement 3 441 499 ; annuité 3 785 649 ; capital fin 0.

Contrôles : la somme des amortissements est égale au capital emprunté ; chaque amortissement est égal, à l''arrondi près, au précédent multiplié par (1 + t).

## 5. Statistique descriptive

Pour une série x1, …, xn : moyenne x̄ = (somme des xi) / n ; variance V = (somme des (xi − x̄)²) / n ; écart-type σ = √V. La médiane partage la série ordonnée en deux moitiés. Le coefficient de variation σ / x̄ permet de comparer la dispersion de séries d''ordres de grandeur différents.

## 6. Ajustement linéaire et séparation fixe/variable

Les charges d''entretien de l''atelier Coupe de Teranga Bois dépendent en partie de l''activité. Relevé sur six mois :

- janvier : 300 heures machine, 1 510 000 FCFA
- février : 400 heures machine, 1 690 000 FCFA
- mars : 500 heures machine, 1 920 000 FCFA
- avril : 600 heures machine, 2 100 000 FCFA
- mai : 700 heures machine, 2 300 000 FCFA
- juin : 500 heures machine, 1 880 000 FCFA

On cherche y = a x + b, où a est le coût variable par heure machine et b la partie fixe mensuelle.

Méthode des moindres carrés : a = cov(x, y) / V(x) et b = ȳ − a x̄.

- x̄ = 500 h ; ȳ = 1 900 000 FCFA.
- V(x) = 16 666,67 ; σ(x) ≈ 129,1 h.
- cov(x, y) = (somme des (xi − x̄)(yi − ȳ)) / n = 33 166 666,67.
- a = 33 166 666,67 / 16 666,67 = 1 990 FCFA par heure ; b = 1 900 000 − 1 990 × 500 = 905 000 FCFA.
- Coefficient de corrélation r = cov / (σx σy) ≈ 0,9988 : la liaison linéaire est très forte.

Fonction de coût : y = 1 990 x + 905 000. Prévision pour 650 heures : 1 990 × 650 + 905 000 = 2 198 500 FCFA.

Méthode des points extrêmes (plus rapide, moins précise) : a = (2 300 000 − 1 510 000) / (700 − 300) = 1 975,0 FCFA ; b = 2 300 000 − 1 975,0 × 700 = 917 500 FCFA. Elle n''utilise que deux points et peut être faussée par un mois atypique.

## Points clés

- Variations successives : on multiplie les coefficients.
- Intérêts simples : C t j / 360 ; composés : C (1 + t)^n ; actualisation : C (1 + t)^(−n).
- Annuité constante : C t / (1 − (1 + t)^(−n)).
- Moindres carrés : a = cov / V(x), b = ȳ − a x̄ ; r proche de 1 ou de −1 = bon ajustement.

## Exercices pratiques

- Exercice 1 : un prix passe de 2 500 à 2 800 FCFA puis baisse de 5 %. Calculez le prix final et la variation globale.
- Exercice 2 : un effet de commerce de 3 600 000 FCFA est escompté 60 jours avant l''échéance au taux de 12 % (fictif). Calculez l''escompte (intérêt simple).
- Exercice 3 : quelle est la valeur acquise de 8 000 000 FCFA placés 5 ans à 7 % composés (taux fictif) ?
- Exercice 4 : quelle est la valeur actuelle à 9 % de 15 000 000 FCFA à recevoir dans 3 ans ?
- Exercice 5 : ventes mensuelles (en millions de FCFA) de cinq agences : 12, 15, 9, 20, 14. Calculez la moyenne, la variance et l''écart-type.
- Exercice 6 (cas pratique) : avec la fonction de coût de l''atelier Coupe, quel budget d''entretien prévoir pour un mois de 480 heures machine ? Pourquoi faut-il être prudent pour une prévision à 1 200 heures ?

## Corrigé

- Exercice 1 : 2 800 × 0,95 = 2 660 FCFA ; variation globale = 2 660 / 2 500 − 1 = 6,4 %.
- Exercice 2 : 3 600 000 × 0,12 × 60 / 360 = 72 000 FCFA.
- Exercice 3 : 8 000 000 × 1,07⁵ ≈ 11 220 414 FCFA.
- Exercice 4 : 15 000 000 / 1,09³ ≈ 11 582 752 FCFA.
- Exercice 5 : moyenne 14 ; variance = (4 + 1 + 25 + 36 + 0) / 5 = 13,2 ; écart-type ≈ 3,63 millions de FCFA.
- Exercice 6 : 1 990 × 480 + 905 000 = 1 860 200 FCFA. À 1 200 heures, on sort largement de la plage observée (300 à 700 h) : de nouvelles charges fixes (deuxième équipe, nouvelle machine) peuvent apparaître et la relation linéaire n''est plus garantie.', 'texte', 60, false, 40
from public.courses c where c.slug = 'lic-cg-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Mathématiques et statistiques de gestion : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Licence 1 en Contrôle de gestion (corrigé)', '## Présentation du sujet

Sujet d''entraînement de Licence 1, contrôle de gestion. Durée : 3 heures. Calculatrice autorisée, documents interdits. Ce sujet n''est pas un sujet officiel : il reproduit le format habituel des examens semestriels. Barème indicatif, non officiel, sur 20 points. Toutes les entreprises sont fictives.

## Dossier 1 · Introduction au contrôle de gestion (5 points)

- 1.1 (1,5 pt) Définissez le contrôle de gestion et présentez son cycle.
- 1.2 (1,5 pt) Distinguez efficacité, efficience et économie, avec un exemple pour chacune.
- 1.3 (2 pts) Une banque régionale décide d''évaluer ses agences sur leur résultat net, frais de siège compris. Que pensez-vous de ce choix au regard du principe de contrôlabilité ?

## Dossier 2 · Comptabilité analytique (9 points)

Baobab Textile, à Kaolack, confectionne des boubous. Pour le mois d''avril :

- Tissu consommé : 2 400 mètres, valorisés au CUMP de 1 250 FCFA le mètre.
- MOD : 1 200 heures à 2 200 FCFA.
- Centre Coupe : 600 heures machine à 2 500 FCFA l''unité d''œuvre.
- Centre Confection : unité d''œuvre heure de MOD, coût 1 100 FCFA.
- Production : 1 200 boubous ; ventes : 1 100 boubous à 9 500 FCFA.
- Distribution : 2 FCFA par 100 FCFA de chiffre d''affaires.

Questions :

- 2.1 (1 pt) Expliquez la différence entre centre principal et centre auxiliaire.
- 2.2 (4 pts) Calculez le coût de production total et unitaire.
- 2.3 (2 pts) Calculez le coût de revient des boubous vendus et le résultat analytique.
- 2.4 (2 pts) Les charges supplétives s''élèvent à 150 000 FCFA et les charges non incorporables à 90 000 FCFA. Quel est le résultat de la comptabilité générale, en supposant qu''il n''y a pas d''autre différence ?

## Dossier 3 · Mathématiques et statistiques de gestion (6 points)

- 3.1 (3 pts) Baobab Textile emprunte 6 000 000 FCFA sur 3 ans à 12 % (taux fictif), par annuités constantes. Calculez l''annuité et présentez le tableau d''amortissement.
- 3.2 (3 pts) Coûts d''électricité de l''atelier selon les heures machine : 800 h, 2 640 000 FCFA ; 1 000 h, 3 000 000 ; 1 200 h, 3 420 000 ; 1 400 h, 3 740 000. Déterminez par les moindres carrés la fonction de coût et prévoyez le coût pour 1 300 h.

## Corrigé détaillé

Dossier 1.

- 1.1 : processus qui aide les responsables à atteindre les objectifs en utilisant les ressources avec efficacité et efficience ; cycle prévoir, agir, mesurer, corriger.
- 1.2 : efficacité, atteindre 95 % des ventes visées ; efficience, baisser le coût par boubou ; économie, négocier le prix du tissu.
- 1.3 : les frais de siège ne sont pas maîtrisés par le chef d''agence ; il faut l''évaluer sur une marge contributive (produits et charges propres à l''agence) et suivre à part le résultat après frais de siège, pour la décision de maintenir ou non l''agence.

Dossier 2.

- 2.1 : le centre principal impute directement ses charges aux coûts des produits par une unité d''œuvre ; le centre auxiliaire travaille pour les autres centres et se vide dans la répartition secondaire.
- 2.2 : tissu 3 000 000 ; MOD 2 640 000 ; Coupe 1 500 000 ; Confection 1 200 × 1 100 = 1 320 000 ; total 8 460 000 FCFA ; coût unitaire 7 050 FCFA.
- 2.3 : CA = 1 100 × 9 500 = 10 450 000 FCFA ; distribution = 104 500 UO × 2 = 209 000 FCFA ; coût de revient = 1 100 × 7 050 + 209 000 = 7 964 000 FCFA ; résultat analytique = 2 486 000 FCFA.
- 2.4 : résultat CG = 2 486 000 + 150 000 − 90 000 = 2 546 000 FCFA.

Dossier 3.

- 3.1 : a = 6 000 000 × 0,12 / (1 − 1,12^(−3)) ≈ 2 498 094 FCFA.

- Année 1 : capital début 6 000 000 ; intérêt 720 000 ; amortissement 1 778 094 ; annuité 2 498 094 ; capital fin 4 221 906.
- Année 2 : capital début 4 221 906 ; intérêt 506 629 ; amortissement 1 991 465 ; annuité 2 498 094 ; capital fin 2 230 441.
- Année 3 : capital début 2 230 441 ; intérêt 267 653 ; amortissement 2 230 441 ; annuité 2 498 094 ; capital fin 0.

- 3.2 : x̄ = 1 100 ; ȳ = 3 200 000 ; V(x) = 50 000 ; cov = 93 000 000 ; a = 1 860 FCFA par heure ; b = 1 154 000 FCFA ; y = 1 860 x + 1 154 000 ; pour 1 300 h : 3 572 000 FCFA.

## Conseils de méthode

Dans le dossier 2, indiquez toujours le détail du calcul : un résultat faux mais bien posé rapporte une partie des points. Dans le dossier 3, vérifiez que la somme des amortissements redonne le capital emprunté. Pour la question 1.3, une réponse argumentée en deux temps (constat puis proposition) est attendue.

## Exercices pratiques

- Exercice 1 : quel serait le coût de production unitaire de Baobab Textile si le CUMP du tissu passait à 1 300 FCFA ?
- Exercice 2 : quelle est la part des intérêts dans le coût total de l''emprunt du dossier 3 ?
- Exercice 3 : citez deux charges supplétives possibles dans une entreprise individuelle.

## Corrigé

- Exercice 1 : le coût augmente de 2 400 × 50 = 120 000 FCFA, soit 8 580 000 FCFA au total et 7 150 FCFA par boubou.
- Exercice 2 : total des annuités 7 494 282 FCFA ; intérêts 1 494 282 FCFA, soit 19,9 % des sommes versées.
- Exercice 3 : rémunération du travail de l''exploitant ; rémunération des capitaux propres apportés.', 'texte', 60, false, 50
from public.courses c where c.slug = 'lic-cg-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Licence 1 en Contrôle de gestion (corrigé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Introduction au contrôle de gestion et à l''organisation', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 1 en contrôle de gestion, gestion, comptabilité.
- Objectifs : expliquer le rôle du contrôle de gestion, mesurer la performance (efficacité, efficience, économie), raisonner avec un budget ajusté, identifier les centres de responsabilité et les structures d''organisation.
- Matériel : tableau ou diaporama, schéma du cycle de pilotage, organigrammes types, calculatrice.
- Prérequis : leçon « Introduction au contrôle de gestion et à l''organisation : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour à toutes et à tous. Bienvenue dans ce cours vidéo consacré à l''introduction au contrôle de gestion. Dans une heure et demie, vous saurez expliquer à un jury ce que fait un contrôleur de gestion, calculer et interpréter des indicateurs d''efficacité et d''efficience, et classer les unités d''une organisation en centres de responsabilité. Notre fil rouge sera Sahel Jus SARL, une entreprise fictive de Thiès qui fabrique des jus locaux.

Visuel : diapositive titre, logo fictif de Sahel Jus, plan de la séance en cinq parties.

## 05:00 – 15:00 · Qu''est-ce que contrôler ?

Commençons par un mot piège : « contrôle ». En français courant, contrôler, c''est vérifier ou sanctionner. En gestion, le mot vient de l''anglais « control », qui signifie maîtriser, piloter. Le contrôleur de gestion n''est pas un policier : c''est un copilote. Son rôle est de fournir au dirigeant et aux responsables les informations pour décider à temps.

Dans les années 1960, Robert N. Anthony a défini le contrôle de gestion comme le processus par lequel les dirigeants s''assurent que les ressources sont obtenues et utilisées avec efficacité et efficience pour atteindre les objectifs. Retenez trois mots de cette définition : processus, ressources, objectifs. Les auteurs plus récents ajoutent la cohérence entre stratégie et actions quotidiennes, et l''apprentissage organisationnel.

Question à poser aux étudiants : « Quelle différence entre un contrôleur de gestion et un auditeur interne ? » Réponse attendue : l''auditeur vérifie la conformité et la maîtrise des risques ; le contrôleur aide à piloter la performance, en regardant surtout vers l''avenir.

## 15:00 – 25:00 · Le cycle de pilotage

Visuel : un cercle avec quatre flèches. Prévoir, agir, mesurer, corriger.

Tout commence par la stratégie : Sahel Jus veut devenir la marque de référence des jus locaux dans la région de Thiès. Le contrôle de gestion traduit cette ambition en objectifs chiffrés : produire 120 000 bouteilles au trimestre pour un coût de 450 FCFA la bouteille. Ce sont les budgets. Ensuite, les équipes agissent. Le contrôleur mesure le réalisé, compare au prévu, calcule des écarts. Enfin, avec les responsables, il analyse les causes et propose des actions correctives. Puis le cycle recommence.

On distingue trois moments du contrôle : a priori, avec les budgets ; pendant l''action, avec les tableaux de bord ; a posteriori, avec l''analyse des écarts et le calcul des coûts. Retenez ce triptyque, il revient souvent en question de cours.

## 25:00 – 40:00 · Efficacité, efficience, économie : correction commentée

Passons au chiffré. Je vous donne l''énoncé : objectif 120 000 bouteilles, coût prévu 450 FCFA l''unité, budget 54 000 000 FCFA. Réalisé : 108 000 bouteilles, coût total 49 680 000 FCFA. Prenez trois minutes pour calculer l''efficacité et le coût unitaire réel.

Correction. Efficacité : 108 000 divisé par 120 000, soit 90,0 %. Coût unitaire réel : 49 680 000 divisé par 108 000, soit 460 FCFA. Le coût unitaire a augmenté de 2,2 %.

Maintenant, l''erreur classique. Beaucoup d''étudiants écrivent : « le coût total réel est inférieur au budget, donc la gestion est bonne ». Regardez : 49 680 000 contre 54 000 000, il y a bien 4 320 000 FCFA de moins. Mais on a produit moins ! Il faut comparer à ce qu''on aurait dû dépenser pour 108 000 bouteilles : 108 000 fois 450, soit 48 600 000 FCFA. Le vrai dépassement est de 1 080 000 FCFA. Écrivez au tableau : on compare toujours le réel à un budget ajusté à l''activité réelle.

Et l''économie ? Elle porte sur le prix des ressources. Si Sahel Jus a payé son sucre plus cher que prévu, l''économie est mauvaise, même si le rendement des machines est excellent.

## 40:00 – 50:00 · Pause et quiz interactif

Faisons une pause active. Répondez par vrai ou faux, je vous laisse trente secondes par question.

- Question 1 : un centre de coût est évalué sur son résultat. Faux, il est évalué sur ses coûts.
- Question 2 : l''efficacité se mesure par rapport aux objectifs. Vrai.
- Question 3 : un coût total inférieur au budget initial prouve une bonne efficience. Faux, il faut ajuster le budget au volume réel.
- Question 4 : la comptabilité analytique est obligatoire pour toutes les entreprises. Faux, elle est facultative, contrairement à la comptabilité générale.

Comptez vos points. Trois ou quatre bonnes réponses : vous êtes sur la bonne voie.

## 50:00 – 60:00 · Place du contrôleur et structures d''organisation

Visuel : trois organigrammes, fonctionnel, divisionnel, matriciel.

Où placer le contrôleur ? Rattaché à la direction générale, il gagne en indépendance et en vision transversale. Rattaché à la direction financière, il est proche des données comptables mais risque d''être perçu comme le « gendarme des chiffres ». Dans une PME sénégalaise de vingt salariés, il n''y a souvent pas de contrôleur : c''est le gérant ou le comptable qui assure la fonction, avec un tableur.

La structure compte aussi. Dans une structure fonctionnelle, on mesure bien les coûts par fonction mais la rentabilité par produit est difficile à voir. Dans une structure divisionnelle, par exemple une division Dakar et une division Saint-Louis, chaque division peut être évaluée sur sa marge. Dans une structure matricielle, deux responsables se partagent les mêmes ressources : il faut des règles claires de répartition.

## 60:00 – 75:00 · Centres de responsabilité : exercice corrigé

Exercice : classez les unités suivantes d''un groupe agroalimentaire fictif. L''atelier de conditionnement ; la direction commerciale export ; le magasin de vente directe de Thiès ; la filiale de Bamako qui décide de ses investissements.

Correction. L''atelier de conditionnement maîtrise ses consommations et ses heures : centre de coût, évalué sur un coût par unité conditionnée. La direction export maîtrise ses volumes et ses prix dans une certaine limite : centre de recettes. Le magasin maîtrise ses ventes et ses charges propres : centre de profit. La filiale de Bamako décide de ses investissements : centre d''investissement, évalué sur la rentabilité des capitaux qu''elle engage.

Point de méthode : justifiez toujours par ce que le responsable maîtrise. C''est le principe de contrôlabilité. Un chef d''atelier ne doit pas être jugé sur le prix de vente fixé par le directeur commercial.

## 75:00 – 82:00 · Comptabilité générale et comptabilité analytique

La comptabilité générale, tenue selon le SYSCOHADA révisé, classe les charges par nature : achats, services extérieurs, personnel. Elle s''adresse aux tiers : administration fiscale, banques, associés. La comptabilité analytique reclasse ces mêmes charges par destination : produit, atelier, client. Elle est libre dans ses méthodes et sert les décisions internes. C''est l''objet du cours vidéo suivant.

## 82:00 – 86:00 · Méthode : la question de réflexion

À l''examen, une question comme « Le contrôle de gestion est-il un outil de surveillance ? » appelle une réponse construite. Introduction : définissez les termes, posez la tension entre surveillance et aide à la décision, annoncez le plan. Première partie : le contrôle de gestion comporte bien une dimension de surveillance, avec les budgets, les écarts et l''évaluation des responsables. Deuxième partie : sa finalité principale est l''aide au pilotage et l''apprentissage, avec les tableaux de bord, le dialogue de gestion et les actions correctives. Conclusion : l''équilibre dépend du style de management. Illustrez chaque partie par un exemple, Sahel Jus ou une banque régionale. Évitez la récitation : le correcteur cherche un raisonnement.

## 86:00 – 90:00 · Synthèse et évaluation finale

Synthèse : le contrôle de gestion est un pilotage ; il s''appuie sur un cycle prévoir, agir, mesurer, corriger ; il mesure la performance en efficacité, efficience et économie ; il responsabilise par les centres de responsabilité.

Évaluation finale, cinq questions :

- Question 1 : citez les quatre étapes du cycle de pilotage. Réponse : prévoir, agir, mesurer, corriger.
- Question 2 : une usine visait 50 000 unités et en a produit 46 000. Efficacité ? Réponse : 46 000 / 50 000 = 92 %.
- Question 3 : coût prévu 200 FCFA l''unité ; coût réel total 9 430 000 FCFA pour 46 000 unités. Budget ajusté et écart ? Réponse : budget ajusté 46 000 × 200 = 9 200 000 FCFA ; dépassement de 230 000 FCFA ; coût unitaire réel 205 FCFA.
- Question 4 : quel type de centre pour une agence bancaire évaluée sur sa marge ? Réponse : centre de profit.
- Question 5 : citez deux différences entre comptabilité générale et analytique. Réponse : obligatoire contre facultative ; classement par nature contre par destination.

Merci de votre attention. Pour la prochaine séance, refaites l''exercice Sahel Jus sans vos notes.', 'video', 90, false, 60
from public.courses c where c.slug = 'lic-cg-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Introduction au contrôle de gestion et à l''organisation');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Comptabilité analytique 1 (coûts complets)', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 1 en contrôle de gestion et comptabilité.
- Objectifs : passer des charges de la comptabilité générale aux charges incorporées, construire un tableau de répartition, calculer coûts d''achat, de production et de revient, puis vérifier la concordance des résultats.
- Matériel : tableau ou diaporama, modèle vierge de tableau de répartition, fiche de stock, calculatrice.
- Prérequis : comptabilité générale de base (classe 6 du SYSCOHADA révisé) et leçon « Comptabilité analytique 1 : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Ouverture

Bonjour à tous. Aujourd''hui, nous allons calculer, pas à pas, le coût d''une table et d''une chaise. Notre cas fil rouge est Teranga Bois, une menuiserie fictive de Thiès. À la fin de la séance, vous saurez dérouler un cas complet de coûts complets, c''est-à-dire l''exercice le plus fréquent des partiels de Licence 1.

Visuel : le schéma des coûts complets, de gauche à droite : charges de la comptabilité générale, tri, centres d''analyse, coûts, résultat.

## 05:00 – 15:00 · Charges incorporées

Premier réflexe : on ne reprend pas les charges de la comptabilité générale telles quelles. On retire les charges non incorporables : ce sont des charges qui ne relèvent pas de l''exploitation normale, par exemple des pénalités de retard. On ajoute les charges supplétives : elles ont un coût économique sans être comptabilisées, comme la rémunération des capitaux propres.

Chez Teranga Bois : 6 500 000 moins 300 000 plus 200 000, cela donne 6 400 000 FCFA de charges indirectes incorporées. Notez que les charges directes, bois et main-d''œuvre directe, sont traitées à part : elles vont directement dans les coûts.

## 15:00 – 30:00 · Le tableau de répartition

Visuel : tableau de répartition avec six colonnes : Administration, Entretien, Approvisionnement, Coupe, Montage, Distribution.

La répartition primaire distribue les charges indirectes entre les centres avec des clés : surface pour le loyer, puissance installée pour l''électricité, effectif pour la cantine. Le service comptable nous la donne : Administration 1 000 000, Entretien 500 000, Approvisionnement 540 000, Coupe 1 500 000, Montage 2 140 000, Distribution 720 000. Premier contrôle : la somme fait 6 400 000 FCFA. Toujours vérifier.

Répartition secondaire, en cascade. On vide d''abord l''Administration : 10 % à l''Entretien, soit 100 000 ; 20 % à l''Approvisionnement, soit 200 000 ; 30 % à la Coupe, 300 000 ; 20 % au Montage et 20 % à la Distribution. L''Entretien a maintenant 500 000 plus 100 000, soit 600 000 FCFA, qu''on répartit 10 %, 50 %, 30 %, 10 %.

Totaux des centres principaux : Approvisionnement 800 000, Coupe 2 100 000, Montage 2 520 000, Distribution 980 000. Deuxième contrôle : leur somme redonne 6 400 000 FCFA, puisque les centres auxiliaires sont vidés.

## 30:00 – 40:00 · Unités d''œuvre

Le coût de l''unité d''œuvre est le total du centre divisé par le nombre d''unités. Approvisionnement : 800 000 sur 2 000 planches achetées, 400 FCFA. Coupe : les tables demandent 200 fois 2 heures machine, les chaises 600 fois 0,5 ; total 700 heures, coût 3 000 FCFA. Montage : 1 400 heures de MOD, coût 1 800 FCFA. Distribution : assiette de 100 FCFA de chiffre d''affaires ; CA 19 600 000 FCFA, donc 196 000 unités, coût 5 FCFA.

Question au public : pourquoi une assiette de frais pour la distribution ? Parce que l''activité de ce centre est liée aux ventes, et qu''on n''a pas d''unité physique simple.

## 40:00 – 45:00 · Pause et quiz

Quiz de mi-parcours, répondez sur votre feuille :

- Question 1 : une pénalité fiscale est-elle incorporable ? Non, c''est une charge non incorporable.
- Question 2 : que devient le total d''un centre auxiliaire après répartition secondaire ? Il est nul.
- Question 3 : si le total du centre Coupe était de 2 450 000 FCFA pour 700 heures, quel serait le coût de l''UO ? 3 500 FCFA.

## 45:00 – 55:00 · Prestations réciproques : correction commentée

Dans certains sujets, deux centres auxiliaires travaillent l''un pour l''autre. Exemple : la Gestion du personnel a 600 000 FCFA de charges primaires et reçoit 20 % de l''Entretien ; l''Entretien a 400 000 FCFA et reçoit 10 % de la Gestion du personnel. On ne peut pas vider l''un avant l''autre : il faut poser un système.

Écrivez au tableau : GP = 600 000 + 0,2 E et E = 400 000 + 0,1 GP. On remplace E dans la première équation : GP = 600 000 + 0,2 × (400 000 + 0,1 GP) = 680 000 + 0,02 GP. Donc 0,98 GP = 680 000, et GP ≈ 693 878 FCFA. Puis E = 400 000 + 0,1 × 693 878 ≈ 469 388 FCFA.

Ce sont ces totaux, et non les montants primaires, que l''on répartit ensuite selon les pourcentages. Contrôle : ce qui part vers les centres principaux doit égaler 600 000 + 400 000 = 1 000 000 FCFA. La Gestion du personnel envoie 90 % de son total aux centres principaux et l''Entretien 80 % du sien : 0,9 × 693 878 + 0,8 × 469 388 ≈ 1 000 000 FCFA. Le compte est bon.

## 55:00 – 65:00 · Coût d''achat et stock

Coût d''achat des planches : prix d''achat 6 000 000 plus charges du centre Approvisionnement 800 000, soit 6 800 000 FCFA, 3 400 FCFA la planche.

Visuel : fiche de stock. Stock initial 500 planches pour 1 450 000 ; entrées 2 000 pour 6 800 000. CUMP : 8 250 000 divisé par 2 500, soit 3 300 FCFA. Sorties : 2 100 planches, 6 930 000 FCFA. Stock final : 400 planches, 1 320 000 FCFA. Contrôle : stock initial plus entrées égale sorties plus stock final.

## 65:00 – 74:00 · Coûts de production : correction commentée

Pour les tables : bois 1 200 planches à 3 300, 3 960 000 ; MOD 800 heures à 2 500, 2 000 000 ; Coupe 400 UO à 3 000, 1 200 000 ; Montage 800 UO à 1 800, 1 440 000. Total 8 600 000 FCFA, soit 43 000 FCFA la table.

Pour les chaises : 2 970 000 + 1 500 000 + 900 000 + 1 080 000 = 6 450 000 FCFA, soit 10 750 FCFA la chaise.

Erreur fréquente : imputer les centres Coupe ou Montage sur les quantités vendues. Non : le coût de production porte sur les quantités produites. Autre erreur : oublier la main-d''œuvre directe parce que le centre Montage utilise déjà l''heure de MOD comme unité d''œuvre. Les deux coexistent : la MOD est une charge directe payée aux ouvriers, le centre Montage regroupe les charges indirectes de l''atelier.

## 74:00 – 82:00 · Coût de revient, résultat, concordance

Tables vendues : 180 fois 43 000, plus distribution 540 000, coût de revient 8 280 000 ; résultat 2 520 000 FCFA. Chaises : coût de revient 6 352 500 ; résultat 2 447 500 FCFA. Résultat analytique : 4 967 500 FCFA.

Concordance : résultat de la comptabilité générale égale résultat analytique plus charges supplétives moins charges non incorporables : 4 867 500 FCFA. Pourquoi plus les supplétives ? Parce qu''elles ont diminué le résultat analytique sans exister en comptabilité générale. Et pourquoi moins les non incorporables ? Parce qu''elles ont diminué le résultat de la comptabilité générale sans être prises en compte dans les coûts. Vérification directe en comptabilité générale : ventes 19 600 000, plus production stockée 1 397 500, moins achats 6 000 000, moins variation du stock de bois 130 000, moins MOD 3 500 000, moins les autres charges 6 500 000 : on retrouve 4 867 500 FCFA.

Commentaire de gestion : les deux produits sont rentables. Le résultat représente 23,3 % du chiffre d''affaires pour les tables et 27,8 % pour les chaises. Mais attention : en coûts complets, la rentabilité dépend des clés de répartition choisies. En Licence 2, nous verrons les coûts partiels, plus adaptés aux décisions à court terme.

## 82:00 – 90:00 · Synthèse et évaluation finale

Synthèse : trier, répartir, imputer, valoriser les stocks, calculer les coûts, vérifier la concordance.

Évaluation finale :

- Question 1 : formule des charges incorporées ? Réponse : charges CG − non incorporables + supplétives.
- Question 2 : centre de 1 800 000 FCFA, 600 UO : coût de l''UO ? Réponse : 3 000 FCFA.
- Question 3 : stock initial 100 kg à 500 FCFA, entrée 300 kg à 540 FCFA : CUMP ? Réponse : (50 000 + 162 000) / 400 = 530 FCFA.
- Question 4 : sur quelles quantités impute-t-on le centre Distribution ? Réponse : sur les quantités vendues (ou le chiffre d''affaires).
- Question 5 : résultat analytique 2 000 000, supplétives 100 000, non incorporables 40 000 : résultat CG ? Réponse : 2 060 000 FCFA.

Bon travail, et refaites le cas Teranga Bois seul, en moins de 45 minutes.', 'video', 90, false, 70
from public.courses c where c.slug = 'lic-cg-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Comptabilité analytique 1 (coûts complets)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Mathématiques et statistiques de gestion', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 1 en contrôle de gestion, gestion, économie.
- Objectifs : manipuler taux et indices, calculer intérêts simples et composés, actualiser, construire un tableau d''emprunt, calculer moyenne et écart-type, réaliser un ajustement linéaire pour séparer charges fixes et variables.
- Matériel : tableau, diaporama, calculatrice scientifique, tableur facultatif.
- Prérequis : calcul algébrique et puissances ; leçon « Mathématiques et statistiques de gestion : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Pourquoi des maths en contrôle de gestion ?

Bonjour à toutes et à tous. On me demande souvent : « Pourquoi des mathématiques en contrôle de gestion ? » Parce que le contrôleur passe ses journées à comparer, prévoir et actualiser. Comparer, ce sont des taux et des indices. Prévoir, ce sont des ajustements statistiques. Actualiser, c''est raisonner sur la valeur de l''argent dans le temps. Aujourd''hui, nous traitons ces trois familles avec des exemples tirés d''entreprises fictives sénégalaises.

## 05:00 – 15:00 · Taux, indices, taux moyen

Un chiffre d''affaires passe de 80 000 000 à 92 000 000 FCFA : la variation est de 12 000 000 divisé par 80 000 000, soit 15,0 %. L''indice base 100 vaut 115.

Piège : une hausse de 20 % puis une baisse de 20 % ne ramènent pas au point de départ. 1,2 fois 0,8 égale 0,96 : on a perdu 4 %. Les coefficients multiplicateurs se multiplient.

Taux moyen : un CA passe de 50 000 000 à 72 000 000 FCFA en quatre ans. Le taux moyen n''est pas 44 % divisé par 4, soit 11 %. C''est 1,44 puissance un quart moins 1, environ 9,54 %. Vérifiez : 1,0954 puissance 4 redonne bien 1,44.

## 15:00 – 30:00 · Intérêts simples et composés

Intérêts simples : I égale C fois t fois j sur 360. Un découvert de 2 000 000 FCFA pendant 90 jours à 9 %, taux fictif, coûte 45 000 FCFA.

Intérêts composés : les intérêts produisent des intérêts. 5 000 000 FCFA placés 3 ans à 8 %, taux fictif, deviennent 5 000 000 fois 1,08 au cube, soit 6 298 560 FCFA. Comparez avec les intérêts simples : 5 000 000 fois 0,08 fois 3 donne 1 200 000 FCFA d''intérêts, donc 6 200 000 FCFA. La différence de 98 560 FCFA vient des intérêts sur intérêts.

Actualisation : combien vaut aujourd''hui 10 000 000 FCFA reçus dans 2 ans, au taux de 10 % ? On divise par 1,1 au carré : environ 8 264 463 FCFA. Retenez l''idée : un franc aujourd''hui vaut plus qu''un franc demain.

## 30:00 – 45:00 · Tableau d''emprunt : correction commentée

Exercice : Teranga Bois emprunte 12 000 000 FCFA sur 4 ans à 10 %, taux fictif, remboursables par annuités constantes. Prenez cinq minutes.

Correction. L''annuité vaut 12 000 000 fois 0,10, divisé par 1 moins 1,1 puissance moins 4. Le dénominateur vaut environ 0,3170. L''annuité est d''environ 3 785 650 FCFA.

Première ligne : capital 12 000 000, intérêt 1 200 000, amortissement 3 785 650 moins 1 200 000, soit 2 585 650. Deuxième ligne : capital 9 414 350, intérêt 941 435, amortissement 2 844 215. Et ainsi de suite jusqu''à un capital restant nul. Deux contrôles : les amortissements additionnés redonnent 12 000 000 FCFA ; chaque amortissement est le précédent multiplié par 1,1, par exemple 2 585 650 fois 1,1 donne 2 844 215.

## 45:00 – 50:00 · Pause et quiz

- Question 1 : +10 % puis +10 % font-ils +20 % ? Non, +21 %.
- Question 2 : intérêt simple sur 1 000 000 FCFA à 6 % pendant 30 jours ? 5 000 FCFA.
- Question 3 : dans un emprunt à annuités constantes, la part d''intérêts augmente-t-elle avec le temps ? Non, elle diminue, car le capital restant dû diminue.

## 50:00 – 58:00 · Escompte et valeur actuelle : correction commentée

Deux exercices de la leçon. Premier : un effet de 3 600 000 FCFA escompté 60 jours avant l''échéance à 12 %, taux fictif. L''escompte est un intérêt simple : 3 600 000 fois 0,12 fois 60 sur 360, soit 72 000 FCFA. L''entreprise reçoit donc 3 528 000 FCFA, avant commissions éventuelles de la banque.

Second : la valeur actuelle de 15 000 000 FCFA reçus dans 3 ans à 9 %. On divise par 1,09 au cube, c''est-à-dire environ 1,2950. Résultat : environ 11 582 752 FCFA. Erreur fréquente : multiplier au lieu de diviser. Ayez le réflexe de bon sens : une somme future actualisée est toujours plus petite que la somme future.

## 58:00 – 64:00 · Statistique descriptive

Les ventes mensuelles de cinq agences, en millions de FCFA, sont 12, 15, 9, 20 et 14. Moyenne : 70 divisé par 5, soit 14. Écarts à la moyenne : −2, 1, −5, 6, 0. Carrés : 4, 1, 25, 36, 0, somme 66. Variance : 66 sur 5, soit 13,2. Écart-type : racine de 13,2, environ 3,63. Le coefficient de variation, 3,63 sur 14, environ 26,0 %, montre une dispersion notable entre agences.

Et la médiane ? On range la série : 9, 12, 14, 15, 20. La valeur centrale est 14 : la moitié des agences vend moins de 14 millions, l''autre moitié plus. Ici médiane et moyenne coïncident. Imaginez maintenant qu''une sixième agence, au centre de Dakar, vende 60 millions. La moyenne monte à 130 divisé par 6, environ 21,7 millions, alors que la médiane, entre 14 et 15, vaut 14,5. La médiane résiste aux valeurs extrêmes ; la moyenne, non. Dans un rapport de gestion, présentez les deux quand la série est très dissymétrique, et signalez la valeur atypique au lieu de la cacher.

Question au public : quelle mesure choisir pour présenter le salaire « typique » d''une entreprise où le directeur gagne vingt fois plus que les ouvriers ? Réponse : la médiane.

## 64:00 – 82:00 · Ajustement linéaire : séparer fixe et variable

Visuel : nuage de points, heures machine en abscisse, coût d''entretien en ordonnée, six points presque alignés.

Données de l''atelier Coupe : 300 h pour 1 510 000 FCFA, 400 h pour 1 690 000, 500 h pour 1 920 000, 600 h pour 2 100 000, 700 h pour 2 300 000, 500 h pour 1 880 000.

Correction commentée. Moyennes : x̄ = 500 heures, ȳ = 1 900 000 FCFA. Variance de x : les écarts sont −200, −100, 0, 100, 200, 0 ; carrés 40 000, 10 000, 0, 10 000, 40 000, 0 ; somme 100 000 ; variance 16 666,67. Covariance : somme des produits des écarts divisée par 6, soit 33 166 666,67. Pente a : covariance sur variance, 1 990 FCFA par heure. Ordonnée b : 1 900 000 moins 1 990 fois 500, soit 905 000 FCFA.

Interprétation : chaque heure machine coûte environ 1 990 FCFA d''entretien, et l''atelier supporte 905 000 FCFA de charges fixes par mois. Le coefficient de corrélation, environ 0,999, confirme l''ajustement. Pour 650 heures, on budgète 2 198 500 FCFA.

Comparaison avec la méthode des points extrêmes : on prend 300 et 700 heures ; pente 1 975,0 FCFA ; partie fixe 917 500 FCFA. Plus rapide, mais dépendante de deux seuls points.

Trois mises en garde à formuler dans une copie. D''abord, corrélation n''est pas causalité : ici le lien technique entre heures machine et entretien est logique, mais il faut toujours le justifier. Ensuite, la droite n''est valable que dans la plage observée, de 300 à 700 heures. Enfin, la partie fixe estimée n''est pas une donnée comptable : c''est une estimation statistique, à confronter avec les contrats réels de l''atelier, par exemple un contrat d''entretien forfaitaire.

## 82:00 – 90:00 · Synthèse et évaluation finale

Synthèse : multiplier les coefficients, actualiser avec (1 + t) puissance moins n, construire un tableau d''emprunt avec deux contrôles, ajuster par les moindres carrés et interpréter a et b. Pour réviser, refaites le tableau d''emprunt sans regarder la correction, puis reprenez l''ajustement de l''atelier Coupe avec un tableur et comparez vos résultats : vous devez retrouver exactement la même pente et la même ordonnée à l''origine.

Évaluation finale :

- Question 1 : un prix passe de 1 000 à 1 210 FCFA en 2 ans ; taux moyen annuel ? Réponse : 10 %.
- Question 2 : valeur acquise de 2 000 000 FCFA à 5 % composés sur 2 ans ? Réponse : 2 205 000 FCFA.
- Question 3 : valeur actuelle de 1 100 000 FCFA dans un an à 10 % ? Réponse : 1 000 000 FCFA.
- Question 4 : cov(x, y) = 5 000 et V(x) = 2 500 ; pente ? Réponse : 2.
- Question 5 : avec x̄ = 100, ȳ = 450 et a = 2, que vaut b ? Réponse : 250.

Merci et bon entraînement.', 'video', 90, false, 80
from public.courses c where c.slug = 'lic-cg-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Mathématiques et statistiques de gestion');

-- Cours : Contrôle de gestion Licence 2 : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'lic-cg-l2', (select id from public.levels where name = 'Licence 2'), null, 'Contrôle de gestion', 'Contrôle de gestion Licence 2 : réussir ses examens', 'Préparation aux partiels et examens semestriels de deuxième année de Licence en contrôle de gestion : comptabilité analytique en coûts partiels (seuil de rentabilité, levier opérationnel, imputation rationnelle), gestion budgétaire (ventes, production, trésorerie) et analyse des écarts sur coûts et sur marge. Fiches, cas d''entreprises fictives sénégalaises, sujet type corrigé et trois cours vidéo de 1h30. Prérequis : coûts complets et statistiques de Licence 1.', true, 332
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Licence 2 en Contrôle de gestion', '## Objectifs de la leçon

- Situer la deuxième année de Licence en contrôle de gestion dans le système LMD.
- Identifier les matières clés de l''année et ce que les correcteurs attendent.
- Choisir une méthode de révision adaptée aux épreuves de calcul et d''analyse.
- Organiser six semaines de révision.

## 1. La Licence 2 dans le système LMD

La deuxième année se déroule, comme la première, en deux semestres composés d''unités d''enseignement (UE) créditées. Elle marque un changement de niveau : on ne vous demande plus seulement de calculer un coût, mais de l''utiliser pour décider et de commenter un résultat. Les règles de validation (crédits, compensation entre UE, part du contrôle continu, session de rattrapage, conditions de passage en L3) sont propres à chaque université ou école : consultez le règlement des études de votre établissement et la maquette de votre parcours.

## 2. Les matières clés de l''année

Ce cours couvre trois matières centrales, qui forment la boîte à outils du contrôleur de gestion opérationnel :

- Comptabilité analytique 2 : méthode des coûts variables (direct costing), marge sur coût variable, seuil de rentabilité, point mort, marge et indice de sécurité, levier opérationnel, coûts spécifiques et décision d''abandon d''un produit, imputation rationnelle des charges fixes.
- Gestion budgétaire : démarche budgétaire, prévision des ventes (tendance et saisonnalité), budget des ventes, budget de production et lissage, budget des approvisionnements, budget de trésorerie.
- Analyse des écarts : coûts préétablis (standards), écart global, écarts sur matières (prix, quantité), sur main-d''œuvre directe (taux, rendement), sur charges indirectes (budget, activité, rendement), écarts sur marge (prix, quantité).

Ces matières prolongent la comptabilité analytique 1 (coûts complets) et les statistiques de Licence 1. Elles dialoguent avec la finance d''entreprise (trésorerie, investissement) et la fiscalité, enseignées en parallèle.

## 3. Ce que les correcteurs attendent

En Licence 2, une copie excellente se distingue par trois qualités. La rigueur : formules posées avant les chiffres, unités et signes des écarts indiqués (favorable ou défavorable). La cohérence : les chiffres d''une question à l''autre se raccordent (le budget de production découle du budget des ventes, la somme des écarts redonne l''écart global). L''analyse : chaque résultat est commenté en une ou deux phrases opérationnelles (« le seuil est atteint fin septembre : la marge de manœuvre est faible face à une baisse des ventes »).

Les épreuves prennent plusieurs formes :

- Exercice chiffré court : calculer un seuil de rentabilité, un écart sur matières.
- Cas pratique de synthèse : une entreprise, plusieurs annexes, budgets puis écarts.
- QCM et questions de cours : définitions (charge de structure, coût standard, budget flexible).
- Question de réflexion : « Les budgets sont-ils encore utiles dans un environnement instable ? »
- Dossier de contrôle continu : construire un budget de trésorerie sur tableur.

## 4. Méthode de révision

Faites une fiche par matière avec trois rubriques : définitions, formules, pièges. Exemples de pièges : confondre taux de marge sur coût variable et marge unitaire ; oublier le stock initial dans le budget de production ; décaisser des ventes alors qu''il s''agit d''encaisser ; inverser le signe d''un écart.

Pour chaque formule, apprenez aussi la lecture économique. Le seuil de rentabilité, c''est le chiffre d''affaires pour lequel la marge sur coût variable couvre exactement les charges fixes. L''écart sur quantité de matière, c''est le gaspillage ou l''économie de matière valorisé au prix prévu. Cette lecture vous permettra de retrouver une formule oubliée.

Entraînez-vous à chronométrer : un budget de trésorerie trimestriel doit tenir en vingt minutes, une analyse complète des écarts sur coûts en trente minutes.

## 5. Plan de révision sur 6 semaines

- Semaine 1 : comptabilité analytique 2, coûts variables, seuil, point mort, levier ; 6 exercices courts.
- Semaine 2 : coûts spécifiques, imputation rationnelle ; 1 cas de décision (abandon d''un produit) ; 1 dissertation en plan détaillé.
- Semaine 3 : gestion budgétaire, ventes, production, lissage, approvisionnements ; 3 exercices.
- Semaine 4 : budget de trésorerie ; 2 budgets complets avec bilan prévisionnel des créances et dettes.
- Semaine 5 : analyse des écarts sur coûts et sur marge ; 3 cas complets ; un sujet type en 3 heures.
- Semaine 6 : deuxième sujet type, carnet d''erreurs, révision des fiches ; repos la veille.

## 6. Le jour J

Lisez l''ensemble du sujet, repérez les dossiers indépendants et commencez par celui que vous maîtrisez le mieux. Présentez les budgets en tableaux mois par mois ou trimestre par trimestre, avec des totaux. Pour les écarts, adoptez une convention de signe claire, annoncez-la, et indiquez toujours « favorable » ou « défavorable » en toutes lettres.

## Points clés

- Les règles de validation dépendent de votre établissement : lisez le règlement des études.
- Trois matières : comptabilité analytique 2, gestion budgétaire, analyse des écarts.
- Formule, chiffre, commentaire : la trilogie d''une bonne réponse.

## Exercices

- Exercice 1 : citez deux pièges fréquents par matière.
- Exercice 2 : expliquez en une phrase la lecture économique du seuil de rentabilité.
- Exercice 3 : proposez un découpage de votre temps pour un sujet de 3 heures noté sur 20, avec trois dossiers de 7, 6 et 7 points.

## Corrigé

- Exercice 1 : comptabilité analytique 2, confondre marge unitaire et taux de marge ; oublier que le point mort suppose une activité régulière. Gestion budgétaire, oublier le stock initial ; confondre ventes et encaissements. Écarts, inverser les signes ; calculer l''écart sur quantité au prix réel au lieu du prix standard.
- Exercice 2 : c''est le niveau de chiffre d''affaires à partir duquel la marge sur coût variable couvre toutes les charges fixes, donc où le résultat est nul.
- Exercice 3 : 10 minutes de lecture, environ 55 minutes pour chaque dossier de 7 points et 45 minutes pour le dossier de 6 points, 15 minutes de relecture.', 'texte', 45, true, 10
from public.courses c where c.slug = 'lic-cg-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Licence 2 en Contrôle de gestion');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comptabilité analytique 2 (coûts partiels, seuil, imputation rationnelle) : l''essentiel pour l''examen', '## Objectifs de la leçon

- Construire un compte de résultat différentiel ; calculer seuil de rentabilité, point mort, indice de sécurité et levier opérationnel.
- Utiliser les coûts spécifiques pour décider du maintien d''un produit.
- Appliquer l''imputation rationnelle des charges fixes.

## 1. Charges variables et charges fixes

Une charge variable évolue avec le volume (matières, commissions). Une charge fixe, ou de structure, en est indépendante à court terme, dans une plage d''activité donnée (loyer, amortissements). Les charges semi-variables se décomposent, par exemple par les moindres carrés vus en Licence 1.

## 2. Le compte de résultat différentiel

Chiffre d''affaires − charges variables = marge sur coût variable (MCV) ; MCV − charges fixes = résultat. Le taux de marge sur coût variable est MCV / CA.

Cas : Keur Briques SARL, entreprise fictive de Rufisque, fabrique des parpaings. Prévisions : 400 000 parpaings à 500 FCFA ; coût variable unitaire 300 FCFA ; charges fixes 60 000 000 FCFA.

- CA = 200 000 000 FCFA ; charges variables = 120 000 000 FCFA ; MCV = 80 000 000 FCFA ; taux de MCV = 40 %.
- Résultat = 80 000 000 − 60 000 000 = 20 000 000 FCFA.

## 3. Seuil de rentabilité, point mort, sécurité

Le seuil de rentabilité (SR) est le chiffre d''affaires pour lequel le résultat est nul : MCV = charges fixes. SR = charges fixes / taux de MCV. En quantités : charges fixes / marge unitaire.

- SR = 60 000 000 / 0,40 = 150 000 000 FCFA, soit 300 000 parpaings (60 000 000 / 200).
- Point mort (date d''atteinte du seuil, activité régulière sur 12 mois) : 150 000 000 / 200 000 000 × 12 = 9 mois, soit le 30 septembre.
- Marge de sécurité = CA − SR = 50 000 000 FCFA ; indice de sécurité = 50 000 000 / 200 000 000 = 25 % : les ventes peuvent baisser de 25 % avant que l''entreprise ne subisse une perte.

Schéma décrit : CA en abscisse ; la droite de MCV (y = 0,4 x) coupe la droite horizontale des charges fixes au point d''abscisse 150 000 000 ; à droite, zone de bénéfice.

Activité saisonnière : on cherche le mois où le CA cumulé atteint le SR.

## 4. Le levier opérationnel

Le levier opérationnel (ou coefficient de levier) mesure la sensibilité du résultat aux variations du chiffre d''affaires : LO = variation relative du résultat / variation relative du CA = MCV / résultat.

Pour Keur Briques : LO = 80 000 000 / 20 000 000 = 4. Une hausse de 10 % du CA entraîne une hausse de 40 % du résultat (résultat 28 000 000 FCFA). L''effet joue aussi à la baisse : plus les charges fixes sont lourdes, plus le risque d''exploitation est élevé. On montre que LO = 1 / indice de sécurité : 1 / 0,25 = 4.

## 5. Coûts spécifiques et décision

Le coût spécifique d''un produit = ses charges variables + ses charges fixes propres (machine dédiée, publicité spécifique). La marge sur coût spécifique (MCS) mesure la contribution du produit à la couverture des charges fixes communes.

Cas : une entreprise fictive de cosmétiques de Dakar a trois gammes (montants annuels en FCFA) :

- X : CA 50 000 000, CV 25 000 000, CF spécifiques 8 000 000, MCS 17 000 000.
- Y : CA 30 000 000, CV 21 000 000, CF spécifiques 6 000 000, MCS 3 000 000.
- Z : CA 20 000 000, CV 12 000 000, CF spécifiques 9 000 000, MCS −1 000 000.
- Charges fixes communes : 15 000 000 FCFA ; résultat global 4 000 000 FCFA.

Si l''on répartit les charges communes au prorata du CA, Y affiche un résultat de −1 500 000 FCFA et semble déficitaire. Pourtant sa MCS est positive : l''abandonner ferait perdre 3 000 000 FCFA de contribution et le résultat tomberait à 1 000 000 FCFA. En revanche, Z a une MCS négative : son abandon, si ses charges fixes spécifiques disparaissent vraiment, porterait le résultat à 5 000 000 FCFA. Règle : on décide sur la MCS, pas sur le résultat en coûts complets.

## 6. L''imputation rationnelle des charges fixes

En coûts complets, le coût unitaire varie avec le volume, car les charges fixes sont réparties sur plus ou moins d''unités. L''imputation rationnelle n''impute aux coûts que la part des charges fixes correspondant à l''activité réelle : charges fixes imputées = charges fixes × (activité réelle / activité normale).

Atelier fictif : charges fixes 12 000 000 FCFA par mois, activité normale 2 000 heures (pour 10 000 unités), activité réelle 1 800 heures (9 000 unités), coût variable 2 000 FCFA par unité.

- Coefficient d''imputation rationnelle = 1 800 / 2 000 = 0,9.
- Charges fixes imputées = 12 000 000 × 0,9 = 10 800 000 FCFA ; différence d''incorporation = 1 200 000 FCFA, coût de sous-activité (on parle de boni de suractivité dans le cas inverse).
- Coût unitaire complet réel = 2 000 + 12 000 000 / 9 000 ≈ 3 333,33 FCFA ; coût unitaire en imputation rationnelle = 2 000 + 10 800 000 / 9 000 = 3 200 FCFA, identique au coût en activité normale.

Intérêt : le coût unitaire ne dépend plus du niveau d''activité, et le coût de la sous-activité est isolé.

## Points clés

- SR = CF / taux de MCV ; LO = MCV / résultat ; décision d''abandon sur la MCS ; CF imputées = CF × activité réelle / activité normale.

## Exercices pratiques

- Exercice 1 : CA 80 000 000, charges variables 56 000 000, charges fixes 18 000 000 FCFA. Calculez MCV, taux, résultat, SR, marge de sécurité et levier. Quel CA donnerait un résultat de 9 000 000 FCFA ?
- Exercice 2 : un hôtel fictif de Saly réalise un CA trimestriel de 40, 20, 15 et 45 millions de FCFA (T1 à T4), avec un taux de MCV de 30 % et 45 000 000 FCFA de charges fixes. Calculez le SR et la date du point mort (CA régulier à l''intérieur de chaque trimestre).
- Exercice 3 : dans le cas des trois gammes, le directeur propose d''abandonner Y et Z. Calculez le résultat et concluez.
- Exercice 4 (cas pratique) : Keur Briques peut automatiser sa production : charges fixes +20 000 000 FCFA, coût variable unitaire ramené à 250 FCFA. Calculez le nouveau résultat, le nouveau SR et le nouveau levier. Conseillez la direction.

## Corrigé

- Exercice 1 : MCV 24 000 000 ; taux 30 % ; résultat 6 000 000 ; SR = 18 000 000 / 0,30 = 60 000 000 ; marge de sécurité 20 000 000 ; LO = 24 000 000 / 6 000 000 = 4 ; CA visé = (18 000 000 + 9 000 000) / 0,30 = 90 000 000 FCFA.
- Exercice 2 : SR = 45 000 000 / 0,30 = 112 500 000 FCFA. Cumuls : 40 000 000, 60 000 000, 75 000 000, 120 000 000. Fin septembre, il manque 37 500 000 FCFA ; le T4 rapporte 15 000 000 FCFA par mois : le seuil est atteint fin octobre.
- Exercice 3 : il ne reste que X : 17 000 000 − 15 000 000 = 2 000 000 FCFA, contre 4 000 000 aujourd''hui. Il faut abandonner Z seulement (résultat 5 000 000 FCFA) et garder Y.
- Exercice 4 : MCV = 400 000 × 250 = 100 000 000 ; CF = 80 000 000 ; résultat 20 000 000 FCFA, identique à la situation actuelle ; taux de MCV 50 % ; SR = 160 000 000 FCFA (contre 150 000 000) ; LO = 100 000 000 / 20 000 000 = 5. Point d''indifférence : 200 q − 60 000 000 = 250 q − 80 000 000, d''où q = 400 000 parpaings, le volume actuel. L''automatisation n''est gagnante qu''au-delà de ce volume et accroît le risque d''exploitation (seuil plus élevé, levier 5 au lieu de 4) : à recommander seulement si une croissance durable de la demande est attendue.', 'texte', 60, false, 20
from public.courses c where c.slug = 'lic-cg-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comptabilité analytique 2 (coûts partiels, seuil, imputation rationnelle) : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Gestion budgétaire (ventes, production, trésorerie) : l''essentiel pour l''examen', '## Objectifs de la leçon

- Comprendre la démarche budgétaire et l''articulation des budgets.
- Prévoir les ventes avec des coefficients saisonniers et établir le budget des ventes.
- Établir le budget de production en tenant compte des stocks et de la capacité.
- Construire un budget de trésorerie et proposer des solutions aux déficits.

## 1. La démarche budgétaire

Le budget est la traduction chiffrée, à court terme (en général l''année, découpée en mois ou trimestres), des plans d''action d''un responsable. La gestion budgétaire comporte trois phases : la prévision (hypothèses sur l''activité), la budgétisation (chiffrage en valeur) et le contrôle budgétaire (comparaison réel/prévu et analyse des écarts).

Les budgets s''enchaînent selon une hiérarchie. Schéma décrit : en tête, le budget des ventes ; il commande le budget de production, qui commande les budgets des approvisionnements, de main-d''œuvre et des charges des centres ; à côté, les budgets des frais commerciaux, des frais généraux et des investissements ; tous se déversent dans le budget de trésorerie, puis dans le compte de résultat et le bilan prévisionnels.

La procédure peut être descendante, ascendante ou, le plus souvent, itérative (navettes entre direction et services). La participation favorise l''adhésion mais expose au « slack budgétaire » : des marges de sécurité cachées dans les prévisions.

## 2. Le budget des ventes

La prévision s''appuie sur l''historique (tendance par les moindres carrés, vue en L1), les études de marché et les objectifs commerciaux. Pour une activité saisonnière, on applique des coefficients saisonniers dont la somme vaut le nombre de périodes (4 pour des trimestres).

Cas : Dakar Bissap Industries, entreprise fictive, prévoit 48 000 cartons de sirop pour l''année N+1, à 2 500 FCFA le carton. Coefficients saisonniers : 1,2 ; 0,8 ; 0,7 ; 1,3 (forte demande au premier trimestre et en fin d''année, période de fêtes).

- T1 : 12 000 × 1,2 = 14 400 unités, soit 36 000 000 FCFA.
- T2 : 12 000 × 0,8 = 9 600 unités, soit 24 000 000 FCFA.
- T3 : 12 000 × 0,7 = 8 400 unités, soit 21 000 000 FCFA.
- T4 : 12 000 × 1,3 = 15 600 unités, soit 39 000 000 FCFA.

## 3. Le budget de production

Production = ventes + stock final souhaité − stock initial. L''entreprise souhaite un stock final égal à 20 % des ventes du trimestre suivant. Stock initial au 1er janvier : 2 800 cartons ; ventes prévues au T1 de N+2 : 15 000 cartons.

- T1 : ventes 14 400 + stock final 1 920 − stock initial 2 800 = production 13 520.
- T2 : ventes 9 600 + stock final 1 680 − stock initial 1 920 = production 9 360.
- T3 : ventes 8 400 + stock final 3 120 − stock initial 1 680 = production 9 840.
- T4 : ventes 15 600 + stock final 3 000 − stock initial 3 120 = production 15 480.

Contrainte de capacité : l''usine produit au plus 14 000 cartons par trimestre. Le T4 (15 480) dépasse la capacité de 1 480 cartons. Solution de lissage : produire ces 1 480 cartons dès le T3, où la capacité est disponible.

- T1 : production 13 520 ; stock de fin 1 920.
- T2 : production 9 360 ; stock de fin 1 680.
- T3 : production 11 320 ; stock de fin 4 600.
- T4 : production 14 000 ; stock de fin 3 000.

Le stock final de l''année reste égal à l''objectif (3 000 cartons). Le lissage a un coût (stockage, immobilisation de trésorerie) à comparer au coût d''heures supplémentaires ou de sous-traitance. Le budget des approvisionnements suit la même logique : avec 0,5 kg de fleurs d''hibiscus séchées par carton, les besoins du T1 sont de 6 760 kg, auxquels on ajoute le stock de sécurité souhaité.

## 4. Le budget de trésorerie

Il recense, mois par mois, les encaissements et les décaissements (montants réellement reçus ou payés, et non les produits et charges), puis calcule la trésorerie de fin de mois. On raisonne ici hors taxes pour simplifier ; dans la réalité, il faut intégrer la TVA collectée, la TVA déductible et le reversement de TVA.

Données du premier trimestre de Dakar Bissap Industries (ventes du T1 = 36 000 000 FCFA) :

- Ventes : janvier 13 000 000, février 11 000 000, mars 12 000 000 FCFA ; 40 % encaissés au comptant, 60 % le mois suivant. Créances clients au 1er janvier : 9 000 000 FCFA.
- Achats : 5 000 000, 4 500 000, 4 800 000 FCFA, payés à 30 jours. Dettes fournisseurs au 1er janvier : 4 000 000 FCFA.
- Salaires et charges sociales : 4 200 000 FCFA par mois ; autres charges décaissées : 1 800 000 FCFA par mois.
- Achat d''une machine en février : 9 000 000 FCFA ; échéance d''emprunt en mars : 2 500 000 FCFA. Trésorerie au 1er janvier : 2 000 000 FCFA.

- Janvier : encaissements 14 200 000 ; décaissements 10 000 000 (fournisseurs 4 000 000, salaires 4 200 000, autres charges 1 800 000) ; solde du mois 4 200 000 ; trésorerie de fin 6 200 000 FCFA.
- Février : encaissements 12 200 000 ; décaissements 20 000 000 (fournisseurs 5 000 000, salaires 4 200 000, autres charges 1 800 000, investissement 9 000 000) ; solde du mois −7 800 000 ; trésorerie de fin −1 600 000 FCFA.
- Mars : encaissements 11 400 000 ; décaissements 13 000 000 (fournisseurs 4 500 000, salaires 4 200 000, autres charges 1 800 000, échéance d''emprunt 2 500 000) ; solde du mois −1 600 000 ; trésorerie de fin −3 200 000 FCFA.

Lecture : la trésorerie devient négative en février (−1 600 000) à cause de l''investissement, et le déficit s''aggrave en mars (−3 200 000). Solutions : financer la machine par un emprunt ou un crédit-bail ; négocier une facilité de caisse ; allonger le crédit fournisseur ; accélérer le recouvrement. Au bilan prévisionnel du 31 mars figureront des créances clients de 7 200 000 FCFA et des dettes fournisseurs de 4 800 000 FCFA.

## Points clés

- Le budget des ventes commande tous les autres.
- Production = ventes + stock final − stock initial ; vérifier la capacité et lisser.
- Trésorerie : encaissements et décaissements, pas produits et charges.
- Un déficit de trésorerie appelle une solution de financement adaptée à sa nature (ponctuel ou durable).

## Exercices pratiques

- Exercice 1 : avec des ventes annuelles de 60 000 unités et les mêmes coefficients saisonniers, calculez les ventes trimestrielles.
- Exercice 2 : ventes T1 8 000 ; T2 10 000 ; stock initial 1 500 ; stock final souhaité = 25 % des ventes du trimestre suivant. Production du T1 ?
- Exercice 3 : ventes d''avril, mai et juin : 20 000 000, 25 000 000, 30 000 000 FCFA ; 30 % au comptant, 50 % à 30 jours, 20 % à 60 jours. Encaissements de juin ?
- Exercice 4 (cas pratique) : Dakar Bissap Industries finance la machine par un emprunt de 9 000 000 FCFA encaissé en février, remboursable à partir d''avril. Recalculez la trésorerie de fin février et de fin mars et concluez.

## Corrigé

- Exercice 1 : 15 000 × 1,2 = 18 000 ; 15 000 × 0,8 = 12 000 ; 15 000 × 0,7 = 10 500 ; 15 000 × 1,3 = 19 500 (total 60 000).
- Exercice 2 : 8 000 + 0,25 × 10 000 − 1 500 = 9 000 unités.
- Exercice 3 : 30 % × 30 000 000 + 50 % × 25 000 000 + 20 % × 20 000 000 = 9 000 000 + 12 500 000 + 4 000 000 = 25 500 000 FCFA.
- Exercice 4 : fin février 7 400 000 FCFA ; fin mars 5 800 000 FCFA. La trésorerie reste positive sur le trimestre : le déficit venait du financement de l''investissement sur la trésorerie d''exploitation. Il faudra vérifier que les remboursements à partir d''avril restent supportables.', 'texte', 60, false, 30
from public.courses c where c.slug = 'lic-cg-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Gestion budgétaire (ventes, production, trésorerie) : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Analyse des écarts (sur coûts et sur marge) : l''essentiel pour l''examen', '## Objectifs de la leçon

- Établir une fiche de coût standard (coût préétabli) et calculer l''écart global sur coûts.
- Décomposer les écarts sur matières, sur main-d''œuvre directe et sur charges indirectes.
- Calculer et analyser l''écart sur marge (prix et quantité).
- Interpréter les écarts et identifier les responsables.

## 1. Coûts préétablis et principe de l''analyse

Un coût préétabli (ou standard) est un coût calculé à l''avance, à partir de normes techniques (quantités) et de prix prévus. L''analyse des écarts compare le coût réel de la production réelle au coût préétabli de cette même production réelle. C''est fondamental : on ne compare jamais le coût réel au budget initial de la production prévue, sinon l''écart mélange un effet volume et un effet performance.

Convention de ce cours : écart = réel − préétabli. Pour un coût, un écart positif est défavorable (on a dépensé plus) ; pour une marge ou un chiffre d''affaires, un écart positif est favorable.

## 2. Le cas Sénégal Peinture (entreprise fictive, Diamniadio)

Fiche de coût standard d''un pot de peinture :

- Matière : 2 kg à 1 500 FCFA = 3 000 FCFA.
- MOD : 0,5 h à 2 400 FCFA = 1 200 FCFA.
- Centre atelier : 0,5 h (UO = heure de MOD) à 2 000 FCFA = 1 000 FCFA. Budget mensuel du centre : charges fixes 6 240 000 FCFA et charges variables 800 FCFA par heure, pour une activité normale de 5 200 heures, soit 800 + 6 240 000 / 5 200 = 2 000 FCFA l''heure.
- Coût standard unitaire : 5 200 FCFA. Production prévue : 10 400 pots.

Réalisations du mois : 9 600 pots ; 19 800 kg de matière à 1 450 FCFA ; 5 000 heures de MOD à 2 500 FCFA ; charges réelles de l''atelier 10 300 000 FCFA.

Coût réel total = 28 710 000 + 12 500 000 + 10 300 000 = 51 510 000 FCFA. Coût préétabli de la production réelle = 9 600 × 5 200 = 49 920 000 FCFA. Écart global = 1 590 000 FCFA défavorable.

## 3. Écarts sur matières

- Écart sur prix = (prix réel − prix standard) × quantité réelle = (1 450 − 1 500) × 19 800 = 990 000 FCFA favorable.
- Écart sur quantité = (quantité réelle − quantité standard) × prix standard = (19 800 − 19 200) × 1 500 = 900 000 FCFA défavorable.
- Total : 90 000 FCFA favorable.

Lecture : l''acheteur a obtenu un bon prix, mais l''atelier a consommé 600 kg de trop (gaspillage, matière de moindre qualité achetée moins cher ?). Les deux écarts sont peut-être liés.

## 4. Écarts sur main-d''œuvre directe

- Écart sur taux = (taux réel − taux standard) × heures réelles = (2 500 − 2 400) × 5 000 = 500 000 FCFA défavorable.
- Écart sur rendement = (heures réelles − heures standard) × taux standard = (5 000 − 4 800) × 2 400 = 480 000 FCFA défavorable.
- Total : 980 000 FCFA défavorable.

## 5. Écarts sur charges indirectes (centre atelier)

On utilise le budget flexible : budget ajusté à l''activité réelle = charges fixes + charges variables unitaires × heures réelles = 6 240 000 + 800 × 5 000 = 10 240 000 FCFA.

- Écart sur budget = charges réelles − budget flexible = 10 300 000 − 10 240 000 = 60 000 FCFA défavorable.
- Écart sur activité = budget flexible − heures réelles × coût standard de l''UO = 10 240 000 − 5 000 × 2 000 = 240 000 FCFA défavorable ; c''est le coût de la sous-activité (200 heures de moins que l''activité normale, à 1 200 FCFA de charges fixes par heure).
- Écart sur rendement = (heures réelles − heures standard) × coût standard de l''UO = (5 000 − 4 800) × 2 000 = 400 000 FCFA défavorable.
- Total : 700 000 FCFA défavorable.

Contrôle : −90 000 + 980 000 + 700 000 = 1 590 000 FCFA, l''écart global défavorable.

## 6. Écart sur marge

Prix de vente prévu 9 000 FCFA ; prix réel 9 200 FCFA. Marge préétablie unitaire = 9 000 − 5 200 = 3 800 FCFA. On valorise les quantités au coût standard pour isoler la performance commerciale.

- Marge préétablie = 10 400 × 3 800 = 39 520 000 FCFA ; marge réelle au coût standard = 9 600 × (9 200 − 5 200) = 38 400 000 FCFA ; écart sur marge 1 120 000 FCFA défavorable.
- Écart sur prix = (9 200 − 9 000) × 9 600 = 1 920 000 FCFA favorable.
- Écart sur quantité = (9 600 − 10 400) × 3 800 = 3 040 000 FCFA défavorable.

Rapprochement : résultat réel (36 810 000) − résultat préétabli (39 520 000) = écart sur marge (−1 120 000) − écart sur coûts (1 590 000) = −2 710 000 FCFA. Le service commercial a vendu plus cher mais moins de pots ; la production a dépassé les standards de coûts.

## Points clés

- Comparer le réel au préétabli de la production réelle.
- Matières et MOD : écart prix ou taux (sur quantités réelles) + écart quantité ou rendement (au prix standard).
- Charges indirectes : budget, activité, rendement, avec le budget flexible.
- Toujours vérifier que la somme des sous-écarts redonne l''écart global.

## Exercices pratiques

- Exercice 1 : standard 3 kg à 800 FCFA par unité ; production réelle 4 000 unités ; consommation réelle 12 400 kg à 780 FCFA. Calculez les écarts sur matières.
- Exercice 2 : standard 0,25 h à 2 000 FCFA par unité ; réel 1 050 h à 2 100 FCFA pour 4 000 unités. Calculez les écarts sur MOD.
- Exercice 3 : à quoi correspond un écart sur activité favorable ?
- Exercice 4 : pour Sénégal Peinture, si l''activité réelle avait été de 5 200 heures avec les mêmes charges réelles de l''atelier, quel serait l''écart sur budget ?
- Exercice 5 (cas pratique) : rédigez une note de dix lignes au directeur de Sénégal Peinture désignant les responsables des principaux écarts et proposant des actions.

## Corrigé

- Exercice 1 : écart sur prix = −20 × 12 400 = 248 000 FCFA favorable ; écart sur quantité = 400 × 800 = 320 000 FCFA défavorable ; total 72 000 FCFA défavorable.
- Exercice 2 : écart sur taux = 100 × 1 050 = 105 000 FCFA défavorable ; écart sur rendement = (1 050 − 1 000) × 2 000 = 100 000 FCFA défavorable ; total 205 000 FCFA défavorable.
- Exercice 3 : à une suractivité : l''activité réelle dépasse l''activité normale, les charges fixes sont mieux absorbées (boni de suractivité).
- Exercice 4 : budget flexible = 6 240 000 + 800 × 5 200 = 10 400 000 ; écart sur budget = 10 300 000 − 10 400 000 = 100 000 FCFA favorable.
- Exercice 5 : écart matière quantité (900 000 D) et rendements MOD et atelier (480 000 et 400 000 D) relèvent du chef de production : contrôle des dosages, formation, maintenance. L''écart de taux MOD (500 000 D) relève des ressources humaines (heures supplémentaires ? primes ?). L''écart sur prix matière favorable (990 000) revient aux achats, mais il faut vérifier que la matière moins chère n''explique pas la surconsommation. La sous-activité (240 000 D) est liée à la baisse des ventes : action commerciale. Le prix de vente plus élevé a rapporté 1 920 000 FCFA mais s''est peut-être payé par la baisse des volumes (3 040 000 D).', 'texte', 60, false, 40
from public.courses c where c.slug = 'lic-cg-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Analyse des écarts (sur coûts et sur marge) : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Licence 2 en Contrôle de gestion (corrigé)', '## Présentation du sujet

Sujet d''entraînement de Licence 2, contrôle de gestion. Durée : 3 heures ; calculatrice autorisée ; documents interdits. Sujet non officiel, conçu pour l''entraînement ; barème indicatif, non officiel. Les entreprises sont fictives et les montants hors taxes.

## Dossier 1 · Comptabilité analytique 2 (7 points)

Casamance Fruits Séchés vend 50 000 sachets de mangue séchée par an à 3 000 FCFA. Coût variable unitaire : 1 800 FCFA. Charges fixes : 45 000 000 FCFA. Activité régulière sur l''année.

- 1.1 (2 pts) Présentez le compte de résultat différentiel.
- 1.2 (2 pts) Calculez le seuil de rentabilité en valeur et en quantité, la date du point mort et l''indice de sécurité.
- 1.3 (1 pt) Calculez le levier opérationnel et interprétez-le.
- 1.4 (2 pts) Un séchoir solaire augmenterait les charges fixes de 6 000 000 FCFA et ramènerait le coût variable à 1 700 FCFA. Faut-il investir ?

## Dossier 2 · Gestion budgétaire (6 points)

Une entreprise de négoce fictive de Touba prévoit des ventes de 20 000 000 FCFA en avril, 25 000 000 en mai et 30 000 000 en juin, encaissées 50 % au comptant et 50 % à 30 jours. Les achats représentent 50 % des ventes du mois et sont payés à 30 jours. Au 1er avril : créances clients 18 000 000 FCFA, dettes fournisseurs 9 000 000 FCFA, trésorerie 1 000 000 FCFA. Charges fixes décaissées : 8 000 000 FCFA par mois. Investissement payé en mai : 6 000 000 FCFA.

- 2.1 (4 pts) Établissez le budget de trésorerie d''avril à juin.
- 2.2 (2 pts) Commentez et indiquez les montants des créances et dettes au bilan prévisionnel du 30 juin.

## Dossier 3 · Analyse des écarts (7 points)

Standard d''un produit : 3 kg de matière à 800 FCFA ; 0,25 h de MOD à 2 000 FCFA. Production réelle : 4 000 unités ; consommation : 12 400 kg à 780 FCFA ; MOD : 1 050 h à 2 100 FCFA.

- 3.1 (2 pts) Calculez le coût réel, le coût préétabli de la production réelle et l''écart global.
- 3.2 (4 pts) Décomposez les écarts sur matière et sur MOD.
- 3.3 (1 pt) Commentez.

## Corrigé détaillé

Dossier 1.

- 1.1 : CA 150 000 000 ; charges variables 90 000 000 ; MCV 60 000 000 (taux 40 %) ; charges fixes 45 000 000 ; résultat 15 000 000 FCFA.
- 1.2 : SR = 45 000 000 / 0,40 = 112 500 000 FCFA, soit 37 500 sachets ; point mort = 112 500 000 / 150 000 000 × 12 = 9 mois, le 30 septembre ; marge de sécurité 37 500 000 ; indice 25 %.
- 1.3 : LO = 60 000 000 / 15 000 000 = 4 : une variation de 1 % du CA fait varier le résultat de 4 %.
- 1.4 : nouvelle MCV unitaire 1 300 ; résultat = 50 000 × 1 300 − 51 000 000 = 14 000 000 FCFA, inférieur à 15 000 000 ; nouveau seuil 39 231 sachets environ. Point d''indifférence : 1 200 q − 45 000 000 = 1 300 q − 51 000 000, soit q = 60 000 sachets. L''investissement n''est rentable qu''au-delà de 60 000 sachets : refus au volume actuel, sauf perspective de forte croissance.

Dossier 2.

- Avril : encaissements 28 000 000 ; décaissements 17 000 000 ; trésorerie de fin 12 000 000 FCFA.
- Mai : encaissements 22 500 000 ; décaissements 24 000 000 ; trésorerie de fin 10 500 000 FCFA.
- Juin : encaissements 27 500 000 ; décaissements 20 500 000 ; trésorerie de fin 17 500 000 FCFA.

- 2.2 : la trésorerie reste positive ; le creux de mai s''explique par l''investissement, financé sans difficulté. Bilan au 30 juin : créances clients 15 000 000 FCFA ; dettes fournisseurs 15 000 000 FCFA.

Dossier 3.

- 3.1 : coût réel = 9 672 000 + 2 205 000 = 11 877 000 FCFA ; préétabli = 9 600 000 + 2 000 000 = 11 600 000 FCFA ; écart global 277 000 FCFA défavorable.
- 3.2 : matière, prix 248 000 FCFA favorable, quantité 320 000 FCFA défavorable ; MOD, taux 105 000 FCFA défavorable, rendement 100 000 FCFA défavorable. Somme : 277 000 FCFA.
- 3.3 : bon prix d''achat mais surconsommation de matière et heures en trop : à investiguer en production (qualité de la matière, formation, pannes).

## Exercices pratiques

- Exercice 1 : dans le dossier 1, quel prix de vente permettrait d''atteindre un résultat de 20 000 000 FCFA sans investissement ?
- Exercice 2 : dans le dossier 2, quelle serait la trésorerie de fin mai si l''investissement coûtait 12 000 000 FCFA ?
- Exercice 3 : un écart sur rendement de MOD favorable est-il toujours une bonne nouvelle ?

## Corrigé

- Exercice 1 : MCV nécessaire = 45 000 000 + 20 000 000 = 65 000 000 ; marge unitaire = 65 000 000 / 50 000 = 1 300 ; prix = 1 800 + 1 300 = 3 100 FCFA, à volume constant.
- Exercice 2 : 10 500 000 − 6 000 000 = 4 500 000 FCFA.
- Exercice 3 : non : il peut cacher une baisse de qualité (contrôles écourtés) ; il faut le croiser avec les indicateurs de qualité et de rebut.', 'texte', 60, false, 50
from public.courses c where c.slug = 'lic-cg-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Licence 2 en Contrôle de gestion (corrigé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Comptabilité analytique 2 (coûts partiels)', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 2 en contrôle de gestion, comptabilité, gestion.
- Objectifs : maîtriser le compte de résultat différentiel, le seuil de rentabilité, le point mort, le levier opérationnel, les coûts spécifiques et l''imputation rationnelle ; savoir commenter ces indicateurs pour une décision.
- Matériel : tableau ou diaporama, graphique du seuil de rentabilité, calculatrice, tableur facultatif.
- Prérequis : coûts complets (L1) ; leçon « Comptabilité analytique 2 : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Ouverture

Bonjour à toutes et à tous. En Licence 1, vous avez appris à calculer des coûts complets. Aujourd''hui, nous changeons de lunettes : nous séparons ce qui varie avec l''activité de ce qui ne varie pas. Cette simple séparation permet de répondre à des questions que se posent tous les dirigeants : à partir de combien de ventes suis-je bénéficiaire ? Que se passe-t-il si mes ventes baissent de 10 % ? Faut-il abandonner un produit ? Notre fil rouge : Keur Briques SARL, fabricant fictif de parpaings à Rufisque.

## 05:00 – 15:00 · Charges variables, charges fixes

Visuel : deux graphiques. À gauche, une droite qui part de l''origine : les charges variables. À droite, une droite horizontale : les charges fixes.

Le ciment, le sable, l''énergie des presses varient avec le nombre de parpaings : ce sont des charges variables. Le loyer du terrain, l''amortissement des presses, le salaire du directeur ne bougent pas si l''on produit un peu plus ou un peu moins : ce sont des charges fixes. Attention à deux nuances. D''abord, les charges fixes ne sont fixes que dans une plage d''activité : si Keur Briques double sa production, il faudra une deuxième presse. Ensuite, beaucoup de charges sont semi-variables, comme l''électricité avec un abonnement et une consommation : on les sépare par l''ajustement linéaire vu en L1.

## 15:00 – 28:00 · Compte de résultat différentiel et seuil : correction commentée

Énoncé : 400 000 parpaings vendus à 500 FCFA, coût variable 300 FCFA, charges fixes 60 000 000 FCFA. Calculez le résultat et le seuil.

Correction. Chiffre d''affaires : 200 000 000. Charges variables : 120 000 000. Marge sur coût variable : 80 000 000, soit un taux de 40 %. Résultat : 20 000 000 FCFA.

Le seuil de rentabilité, c''est le chiffre d''affaires pour lequel la marge sur coût variable couvre juste les charges fixes. Écrivez : 0,40 × SR = 60 000 000, donc SR = 150 000 000 FCFA. En quantités : chaque parpaing rapporte 200 FCFA de marge ; il en faut 60 000 000 divisé par 200, soit 300 000 parpaings.

Visuel : le graphique. La droite de MCV, d''équation y = 0,4 x, coupe la droite des charges fixes à 150 000 000. À droite, la zone de bénéfice ; à gauche, la zone de perte. Une autre représentation consiste à tracer la droite du résultat, y = 0,4 x − 60 000 000, qui coupe l''axe des abscisses au seuil.

## 28:00 – 38:00 · Point mort, marge et indice de sécurité

Le point mort est une date. Si les ventes sont régulières, le seuil est atteint après 150 000 000 sur 200 000 000 de l''année, soit 9 mois : le 30 septembre. Concrètement, de janvier à septembre, Keur Briques couvre ses charges fixes ; d''octobre à décembre, elle fabrique son bénéfice.

Marge de sécurité : 200 000 000 moins 150 000 000, soit 50 000 000 FCFA. Indice de sécurité : 25 %. Interprétation à écrire dans la copie : les ventes peuvent baisser de 25 % avant que l''entreprise ne passe en perte.

Et si l''activité est saisonnière ? On cumule le chiffre d''affaires mois par mois. Exemple de l''hôtel de Saly : CA trimestriels de 40, 20, 15 et 45 millions, taux de MCV 30 %, charges fixes 45 000 000 FCFA. Seuil 112 500 000 FCFA. Cumul fin septembre : 75 millions ; il manque 15 millions, que le T4 apporte en un mois. Point mort : fin octobre.

## 38:00 – 46:00 · Le levier opérationnel

Le levier mesure l''amplification. LO = MCV / résultat = 80 000 000 / 20 000 000 = 4. Vérifions avec une hausse de 10 % du CA : nouveau CA 220 000 000, MCV 88 000 000, résultat 28 000 000. Le résultat passe de 20 000 000 à 28 000 000, soit +40 %. Quatre fois 10 %.

Retenez l''égalité : LO = 1 / indice de sécurité. Plus l''entreprise est proche de son seuil, plus son levier est fort et plus son résultat est volatil. C''est le risque d''exploitation.

## 46:00 – 52:00 · Pause et quiz

- Question 1 : le taux de MCV est de 25 % et les charges fixes de 30 millions ; SR ? Réponse : 120 millions.
- Question 2 : SR 90 millions, CA annuel 120 millions, activité régulière ; point mort ? Réponse : 9 mois, fin septembre.
- Question 3 : indice de sécurité 20 % ; levier ? Réponse : 5.
- Question 4 : vrai ou faux, une entreprise à fortes charges fixes a un levier faible. Faux.

## 52:00 – 66:00 · Coûts spécifiques : faut-il abandonner un produit ?

Visuel : tableau des trois gammes X, Y, Z.

Le directeur d''une entreprise fictive de cosmétiques me montre un tableau en coûts complets : la gamme Y perd 1 500 000 FCFA, la gamme Z perd 4 000 000 FCFA. Sa conclusion : abandonner Y et Z. Vérifions.

Calculons la marge sur coût spécifique : CA moins charges variables moins charges fixes propres. X : 17 000 000. Y : 3 000 000. Z : −1 000 000. Charges communes : 15 000 000. Résultat : 4 000 000 FCFA.

Si l''on abandonne Y et Z, il ne reste que X : 17 000 000 moins 15 000 000, soit 2 000 000 FCFA. Catastrophe : les charges communes ne disparaissent pas avec les produits. La bonne décision : abandonner Z seul, dont la MCS est négative, ce qui porte le résultat à 5 000 000 FCFA, et conserver Y, qui contribue pour 3 000 000 FCFA. Nuance à écrire : avant d''abandonner Z, vérifier qu''il n''entraîne pas les ventes des autres gammes, et que ses charges fixes propres disparaissent vraiment.

## 66:00 – 78:00 · Imputation rationnelle : correction commentée

Énoncé : charges fixes de l''atelier 12 000 000 FCFA par mois ; activité normale 2 000 heures pour 10 000 unités ; ce mois-ci, 1 800 heures pour 9 000 unités ; coût variable 2 000 FCFA l''unité.

En coûts complets réels, le coût unitaire vaut 2 000 plus 12 000 000 sur 9 000, soit environ 3 333,33 FCFA. Le mois dernier, en activité normale, il valait 3 200. Le produit n''a pas changé, c''est la sous-activité qui gonfle son coût. Le commercial risque d''augmenter son prix, de vendre encore moins : c''est le cercle vicieux.

Solution : le coefficient d''imputation rationnelle, activité réelle sur activité normale, 0,9. Charges fixes imputées : 10 800 000. Coût unitaire : 2 000 + 10 800 000 / 9 000 = 3 200 FCFA, stable. La différence, 1 200 000 FCFA, est le coût du chômage, ou coût de sous-activité, présenté à part dans le compte de résultat analytique. En cas de suractivité, coefficient supérieur à 1, on parle de boni de suractivité.

## 78:00 – 84:00 · Méthode pour l''examen

Trois conseils. Un : présentez toujours le compte de résultat différentiel en tableau, avec une colonne pour les montants et une colonne pour les pourcentages du CA. Deux : pour toute décision, raisonnez en différentiel : qu''est-ce qui change si je fais ou si je ne fais pas ? Trois : terminez chaque calcul par une phrase d''interprétation.

## 84:00 – 90:00 · Synthèse et évaluation finale

Synthèse : MCV, seuil, point mort, sécurité, levier, coûts spécifiques, imputation rationnelle. Ce sont les outils du pilotage à court terme.

- Question 1 : CA 50 millions, charges variables 30 millions, charges fixes 16 millions ; SR ? Réponse : taux 40 %, SR 40 millions.
- Question 2 : avec ces données, levier ? Réponse : MCV 20 / résultat 4 = 5.
- Question 3 : une gamme a une MCS de −2 millions ; que faire ? Réponse : envisager l''abandon si ses charges fixes propres disparaissent et s''il n''y a pas d''effet sur les autres ventes.
- Question 4 : charges fixes 6 millions, activité normale 1 000 h, réelle 1 200 h ; charges imputées ? Réponse : 7,2 millions, boni de 1,2 million.
- Question 5 : que signifie un indice de sécurité de 10 % ? Réponse : une baisse de 10 % des ventes suffit à annuler le résultat.

Merci à toutes et à tous. Pour la prochaine séance, consacrée à la gestion budgétaire, refaites le cas Keur Briques sans vos notes, puis l''exercice des trois gammes.', 'video', 90, false, 60
from public.courses c where c.slug = 'lic-cg-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Comptabilité analytique 2 (coûts partiels)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Gestion budgétaire', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 2 en contrôle de gestion et gestion.
- Objectifs : comprendre la démarche budgétaire, établir les budgets des ventes, de production et de trésorerie, proposer des solutions de financement.
- Matériel : diaporama, schéma de la hiérarchie des budgets, tableau vierge de trésorerie, tableur.
- Prérequis : leçon « Gestion budgétaire : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Ouverture

Bonjour à toutes et à tous. Un dirigeant qui ne prévoit pas subit. La gestion budgétaire, c''est l''art de chiffrer l''avenir proche pour s''organiser. Aujourd''hui, nous allons construire avec Dakar Bissap Industries, entreprise fictive qui produit du sirop de bissap, trois budgets : ventes, production, trésorerie. Et nous verrons comment une entreprise rentable peut se retrouver à court de trésorerie.

## 05:00 – 15:00 · La démarche budgétaire

Visuel : pyramide des budgets. En haut, le budget des ventes ; au milieu, production, approvisionnements, main-d''œuvre, frais ; en bas, investissements et trésorerie ; à la sortie, compte de résultat et bilan prévisionnels.

Pourquoi le budget des ventes en premier ? Parce que, sauf contrainte de capacité, c''est le marché qui fixe le niveau d''activité. Si la capacité de production est le facteur limitant, comme pour une usine saturée, c''est au contraire le budget de production qui encadre les ventes possibles. Repérez toujours le facteur limitant avant de construire la chaîne des budgets. Dans une entreprise de services, comme un cabinet de conseil de Dakar, le facteur limitant est souvent le nombre d''heures facturables des consultants. La procédure de construction peut être descendante, ascendante ou itérative. La forme itérative, faite de navettes, est la plus courante. Elle implique les responsables mais crée un risque : le slack budgétaire. Un chef des ventes qui prévoit volontairement bas pour être sûr de dépasser son objectif fausse tout le système.

Question au public : quelles sont les trois phases de la gestion budgétaire ? Réponse : prévision, budgétisation, contrôle budgétaire.

## 15:00 – 27:00 · Le budget des ventes : saisonnalité

L''entreprise prévoit 48 000 cartons sur l''année. Les ventes ne sont pas régulières : forte demande en début d''année et en fin d''année, creux pendant la saison des pluies. On applique des coefficients saisonniers : 1,2 ; 0,8 ; 0,7 ; 1,3. Leur somme vaut 4, c''est le contrôle à faire.

Trimestre moyen : 12 000 cartons. T1 : 14 400 ; T2 : 9 600 ; T3 : 8 400 ; T4 : 15 600. Total : 48 000. Avec un prix de 2 500 FCFA, le CA du T1 vaut 36 000 000 FCFA.

Comment obtient-on ces coefficients ? En rapportant, sur plusieurs années, les ventes de chaque trimestre à la tendance ou à la moyenne trimestrielle, puis en faisant la moyenne de ces rapports. Exemple simple : si, sur trois ans, les ventes du premier trimestre ont représenté 1,18, 1,22 et 1,20 fois la moyenne trimestrielle de l''année, on retient un coefficient de 1,20. Si la somme des quatre coefficients obtenus n''est pas exactement 4, on les corrige proportionnellement. On peut ensuite combiner la tendance, estimée par les moindres carrés, et les coefficients : prévision du trimestre = valeur de tendance × coefficient saisonnier.

## 27:00 – 42:00 · Budget de production et lissage : correction commentée

Formule à écrire : production = ventes + stock final − stock initial. Stock final souhaité : 20 % des ventes du trimestre suivant.

T1 : 14 400 + 20 % de 9 600, soit 1 920, moins le stock initial 2 800 : 13 520. T2 : 9 600 + 1 680 − 1 920 = 9 360. T3 : 8 400 + 3 120 − 1 680 = 9 840. T4 : 15 600 + 3 000 − 3 120 = 15 480.

Problème : la capacité est de 14 000 cartons par trimestre. Le T4 dépasse de 1 480. Trois solutions : heures supplémentaires, sous-traitance, ou anticipation. Anticipons : on produit 11 320 au T3 et 14 000 au T4. Stocks de fin : 1 920, 1 680, 4 600, 3 000. Le stock de fin d''année respecte l''objectif. Mais ce stock supplémentaire immobilise de la trésorerie et de la place : il faut chiffrer et comparer les solutions.

## 42:00 – 48:00 · Pause et quiz

- Question 1 : ventes 5 000, stock initial 800, stock final souhaité 600 ; production ? Réponse : 4 800.
- Question 2 : la somme des coefficients saisonniers mensuels vaut ? Réponse : 12.
- Question 3 : vrai ou faux, un budget de trésorerie enregistre les charges calculées comme les amortissements. Faux : un amortissement n''est pas un décaissement.

## 48:00 – 68:00 · Le budget de trésorerie : correction commentée

Visuel : tableau à trois colonnes, janvier, février, mars ; lignes encaissements, décaissements, solde, trésorerie de fin.

Encaissements. Les clients paient 40 % au comptant et 60 % le mois suivant. Janvier : 40 % de 13 000 000, soit 5 200 000, plus les créances de début d''année 9 000 000 : 14 200 000. Février : 4 400 000 + 60 % de janvier 7 800 000 = 12 200 000. Mars : 11 400 000.

Décaissements. Fournisseurs à 30 jours : janvier, la dette de début d''année 4 000 000 ; février, les achats de janvier 5 000 000 ; mars, ceux de février 4 500 000. Salaires 4 200 000 et autres charges 1 800 000 chaque mois. Machine en février : 9 000 000. Échéance d''emprunt en mars : 2 500 000. Totaux : 10 000 000, 20 000 000, 13 000 000.

Trésorerie : départ 2 000 000. Fin janvier : 6 200 000. Fin février : −1 600 000. Fin mars : −3 200 000.

Diagnostic : l''entreprise n''a pas un problème de rentabilité mais de financement. Elle a payé une machine de 9 000 000 FCFA, un bien durable, avec sa trésorerie courante. Règle de l''équilibre financier : un besoin durable se finance par une ressource durable. Solution : emprunt ou crédit-bail. Avec un emprunt de 9 000 000 encaissé en février, la trésorerie serait de 7 400 000 fin février et 5 800 000 fin mars. Pour un déficit ponctuel, en revanche, une facilité de caisse suffit.

## 68:00 – 72:00 · Erreurs fréquentes dans les budgets de trésorerie

Quatre erreurs reviennent dans les copies. Première erreur : inscrire les ventes du mois au lieu des encaissements du mois. Deuxième : oublier les créances et les dettes du début de période, qui sont encaissées ou payées dans les premiers mois. Troisième : intégrer des charges calculées, comme les dotations aux amortissements ou aux provisions, qui ne donnent lieu à aucun décaissement. Quatrième : enregistrer un emprunt pour son montant total en décaissement, alors qu''on encaisse le capital emprunté et qu''on décaisse ensuite les échéances. Pour vous protéger, vérifiez toujours que la variation de trésorerie de la période égale le total des encaissements moins le total des décaissements : ici, 37 800 000 moins 43 000 000, soit −5 200 000 FCFA, ce qui fait bien passer la trésorerie de 2 000 000 à −3 200 000 FCFA.

## 72:00 – 78:00 · Du budget de trésorerie au bilan prévisionnel

Le budget de trésorerie alimente le bilan prévisionnel. Au 31 mars, il reste à encaisser 60 % des ventes de mars, soit 7 200 000 FCFA de créances clients, et à payer les achats de mars, soit 4 800 000 FCFA de dettes fournisseurs. La machine apparaît à l''actif immobilisé. Ce raccordement est un excellent moyen de contrôler la cohérence de votre travail : chaque montant non encaissé ou non décaissé doit se retrouver au bilan.

Dans la réalité, il faudrait ajouter la TVA : les ventes sont encaissées toutes taxes comprises, les achats payés toutes taxes comprises, et la TVA due est reversée à l''administration selon un calendrier légal. Nous avons raisonné hors taxes pour nous concentrer sur la logique.

## 78:00 – 84:00 · Limites et renouveau des budgets

Les budgets sont critiqués : rigides, chronophages, sources de jeux politiques. Des démarches comme les prévisions glissantes (rolling forecasts), actualisées chaque trimestre, ou le « beyond budgeting » proposent plus de souplesse. Dans une copie de dissertation, montrez que le budget reste un outil de coordination et de délégation, à condition de l''actualiser et de l''accompagner d''indicateurs non financiers.

## 84:00 – 90:00 · Synthèse et évaluation finale

- Question 1 : ventes annuelles 36 000, coefficient du T2 0,9 ; ventes du T2 ? Réponse : 8 100.
- Question 2 : ventes 10 000, stock initial 2 000, stock final 1 500 ; production ? Réponse : 9 500.
- Question 3 : ventes du mois 6 millions, 30 % comptant, 70 % à 30 jours ; ventes du mois précédent 5 millions ; encaissements ? Réponse : 1,8 + 3,5 = 5,3 millions.
- Question 4 : un déficit de trésorerie lié à un investissement se finance comment ? Réponse : par une ressource durable, emprunt ou crédit-bail.
- Question 5 : citez une limite des budgets. Réponse : rigidité face à un environnement instable.

Merci et à bientôt pour l''analyse des écarts.', 'video', 90, false, 70
from public.courses c where c.slug = 'lic-cg-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Gestion budgétaire');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Analyse des écarts', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 2 en contrôle de gestion.
- Objectifs : calculer et interpréter l''écart global, les écarts sur matières, sur main-d''œuvre directe, sur charges indirectes et sur marge ; désigner les responsables et proposer des actions.
- Matériel : diaporama, fiche de coût standard, calculatrice.
- Prérequis : coûts complets, budget flexible ; leçon « Analyse des écarts : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Ouverture

Bonjour à tous. Le budget est fait, le mois est passé, les chiffres réels arrivent. Le directeur demande : « Pourquoi avons-nous dépensé plus que prévu ? » Votre mission aujourd''hui : répondre précisément, chiffres à l''appui, en désignant qui doit agir. Notre cas : Sénégal Peinture, entreprise fictive de Diamniadio.

## 05:00 – 15:00 · Le coût standard et la règle d''or

Visuel : la fiche de coût standard d''un pot. Matière 2 kg à 1 500 FCFA, soit 3 000. MOD une demi-heure à 2 400, soit 1 200. Atelier une demi-heure à 2 000, soit 1 000. Total 5 200 FCFA.

La règle d''or : on compare le coût réel de la production réelle au coût standard de cette même production réelle. Ce mois-ci, on prévoyait 10 400 pots et on en a fait 9 600. Comparer au budget de 10 400 pots mélangerait la baisse de volume et la performance. Coût réel : 51 510 000 FCFA. Coût standard de 9 600 pots : 49 920 000 FCFA. Écart global : 1 590 000 FCFA défavorable.

Convention : réel moins standard ; pour un coût, positif veut dire défavorable.

## 15:00 – 28:00 · Écarts sur matières : correction commentée

Énoncé : 19 800 kg achetés et consommés à 1 450 FCFA. Standard pour 9 600 pots : 19 200 kg à 1 500.

Écart sur prix : on isole l''effet prix sur les quantités réellement consommées. (1 450 − 1 500) × 19 800 = 990 000 FCFA favorable. Écart sur quantité : on valorise l''excès de matière au prix standard. (19 800 − 19 200) × 1 500 = 900 000 FCFA défavorable. Total : 90 000 FCFA favorable.

Pourquoi le prix standard pour l''écart sur quantité ? Pour que le chef de production ne soit pas jugé sur un prix qu''il ne maîtrise pas. C''est le principe de contrôlabilité. Visuel : le rectangle classique, quantités en abscisse, prix en ordonnée, avec la bande verticale de l''écart sur quantité et la bande horizontale de l''écart sur prix.

## 28:00 – 38:00 · Écarts sur main-d''œuvre directe

Réel : 5 000 heures à 2 500. Standard : 4 800 heures à 2 400. Écart sur taux : (2 500 − 2 400) × 5 000 = 500 000 FCFA défavorable. Écart sur rendement : (5 000 − 4 800) × 2 400 = 480 000 FCFA défavorable. Total 980 000 FCFA défavorable.

Causes possibles du taux : heures supplémentaires majorées, recours à des ouvriers plus qualifiés, revalorisation salariale. Causes du rendement : pannes, matière difficile à travailler, nouveaux ouvriers en formation. Remarquez le lien possible avec l''écart sur quantité de matière : une matière moins chère, donc de qualité inférieure, peut à la fois être surconsommée et ralentir les ouvriers. L''acheteur affiche un écart favorable, la production deux écarts défavorables. Au total, l''entreprise a perdu de l''argent. C''est pourquoi on ne juge jamais un écart isolément : on cherche les interactions avant de féliciter ou de blâmer.

## 38:00 – 44:00 · Pause et quiz

- Question 1 : prix réel 520, standard 500, quantité réelle 1 000, quantité standard 950 ; écart sur prix ? Réponse : 20 000 défavorable.
- Question 2 : même données, écart sur quantité ? Réponse : 50 × 500 = 25 000 défavorable.
- Question 3 : un écart sur rendement de MOD favorable signifie quoi ? Réponse : moins d''heures que le standard pour la production réelle.

## 44:00 – 62:00 · Écarts sur charges indirectes : correction commentée

C''est la partie la plus redoutée. Prenons-la calmement. Le centre atelier a un budget : 6 240 000 FCFA de charges fixes et 800 FCFA de charges variables par heure, pour une activité normale de 5 200 heures. Coût standard de l''heure : 2 000. Réel : 5 000 heures, charges 10 300 000.

Premier outil, le budget flexible : ce qu''on aurait dû dépenser pour 5 000 heures. 6 240 000 + 800 × 5 000 = 10 240 000.

Écart sur budget : réel moins budget flexible, 10 300 000 − 10 240 000 = 60 000 FCFA défavorable. Il mesure la maîtrise des dépenses du centre.

Écart sur activité : budget flexible moins heures réelles fois coût standard, 10 240 000 − 10 000 000 = 240 000 FCFA défavorable. Il mesure le coût de la sous-activité : 200 heures non travaillées, à 1 200 FCFA de charges fixes par heure.

Écart sur rendement : (heures réelles − heures standard) × coût standard, 200 × 2 000 = 400 000 FCFA défavorable. Les mêmes heures en trop qu''en MOD, puisque l''unité d''œuvre est l''heure de MOD.

Total : 700 000 FCFA défavorable, soit bien 10 300 000 − 9 600 000. Vérification d''ensemble : −90 000 + 980 000 + 700 000 = 1 590 000 FCFA. Le compte est bon.

## 62:00 – 74:00 · Écarts sur marge

Passons au commercial. Prix prévu 9 000, réel 9 200. Marge standard par pot : 3 800. Marge prévue : 39 520 000. Marge réelle valorisée au coût standard : 38 400 000. Écart sur marge : 1 120 000 FCFA défavorable.

Décomposition. Écart sur prix : 200 FCFA de plus sur 9 600 pots, 1 920 000 FCFA favorable. Écart sur quantité : 800 pots de moins, à 3 800 de marge, 3 040 000 FCFA défavorable.

Pourquoi valoriser au coût standard ? Pour ne pas faire porter au commercial les dérives de la production. Rapprochement final : résultat réel 36 810 000, résultat prévu 39 520 000, différence −2 710 000 = écart sur marge −1 120 000 moins écart sur coûts 1 590 000.

## 74:00 – 78:00 · Un mot sur l''écart de composition

Quand une entreprise vend plusieurs produits, l''écart sur quantité peut lui-même se décomposer. Imaginez que Sénégal Peinture vende des pots de 5 litres, très rentables, et des pots de 1 litre, moins rentables. Si le volume total est conforme au budget mais que la part des pots de 1 litre augmente, la marge baisse : c''est un écart de composition, ou écart de mix. Il se calcule en comparant la marge des quantités réelles avec la marge qu''auraient données ces mêmes quantités totales réparties selon la composition prévue. Ce raffinement est surtout traité en Licence 3 ou en Master, mais il est utile d''en connaître le principe pour une question de réflexion.

## 78:00 – 84:00 · Du calcul à l''action

Le contrôleur ne s''arrête pas aux chiffres. Visuel : tableau responsable / écart / action. Production : surconsommation de matière et heures en trop, action sur les réglages et la formation. Achats : bon prix, mais vérifier la qualité de la matière. Ressources humaines : taux horaire en hausse, vérifier les heures supplémentaires. Commercial : prix plus élevé mais volumes en baisse, mesurer l''élasticité. Un écart significatif se signale vite, avec un seuil d''alerte, par exemple 5 % du standard : c''est la gestion par exception.

## 84:00 – 90:00 · Synthèse et évaluation finale

Synthèse : un écart global se décompose toujours en écarts élémentaires dont la somme doit redonner le total. Matières et main-d''œuvre : prix ou taux, puis quantité ou rendement. Charges indirectes : budget, activité, rendement. Commercial : prix et quantité. Et chaque écart a un responsable.

- Question 1 : quel coût compare-t-on au coût réel ? Réponse : le coût standard de la production réelle.
- Question 2 : prix réel 1 200, standard 1 250, 3 000 kg réels ; écart sur prix ? Réponse : 150 000 favorable.
- Question 3 : charges fixes 3 millions, activité normale 1 500 h, activité réelle 1 350 h ; écart sur activité ? Réponse : 2 000 × 150 = 300 000 défavorable.
- Question 4 : prix de vente réel 1 000, prévu 950, 2 000 unités vendues ; écart sur prix de vente ? Réponse : 100 000 favorable.
- Question 5 : qui est responsable de l''écart sur quantité de matière ? Réponse : en principe le responsable de production, sauf si la surconsommation vient d''une matière de mauvaise qualité imposée par les achats.

Merci à tous pour votre attention et votre participation. Refaites le cas Sénégal Peinture en 40 minutes, sans notes et sans calculatrice programmable, puis rédigez la note au directeur demandée dans la leçon : c''est souvent la question qui fait la différence entre une copie moyenne et une très bonne copie.', 'video', 90, false, 80
from public.courses c where c.slug = 'lic-cg-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Analyse des écarts');

-- Cours : Finance Licence 1 : réussir les examens de première année
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'lic-fin-l1', (select id from public.levels where name = 'Licence 1'), null, 'Finance', 'Finance Licence 1 : réussir les examens de première année', 'Ce cours prépare aux partiels et examens de première année de Licence en finance : introduction au système financier de l''UEMOA (banques, BCEAO, microfinance, BRVM), mathématiques financières appliquées (valeur actuelle et acquise, emprunts indivis, tableaux d''amortissement) et statistiques descriptives appliquées à la finance. Il s''adresse aux étudiants des universités et écoles du Sénégal et de l''espace UEMOA. Prérequis : niveau baccalauréat en mathématiques (pourcentages, puissances).', true, 351
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Licence 1 en Finance', '## Objectifs de la leçon

- Comprendre comment est organisée une première année de Licence dans le système LMD.
- Identifier les matières de finance de la Licence 1 et ce que les examinateurs attendent dans chacune.
- Connaître les grands types d''épreuves et la manière de les aborder.
- Construire un plan de révision réaliste sur six semaines.

## 1. La Licence 1 dans le système LMD

Les universités et grandes écoles du Sénégal et de l''espace UEMOA appliquent le système LMD (Licence, Master, Doctorat). La Licence se déroule en six semestres. Chaque semestre regroupe plusieurs unités d''enseignement (UE) ; chaque UE contient une ou plusieurs matières (on parle aussi d''éléments constitutifs, EC) et donne droit à un nombre de crédits.

Quelques principes généraux, qui varient d''un établissement à l''autre :

- Une UE est validée lorsque sa moyenne atteint le seuil fixé par le règlement des études ; les notes des matières d''une même UE peuvent souvent se compenser entre elles.
- La note d''une matière combine en général un contrôle continu (devoirs, exposés, travaux dirigés) et un examen terminal de fin de semestre.
- Une session de rattrapage est prévue pour les UE non validées.
- Les crédits obtenus sont capitalisés : une UE validée reste acquise.

Le nombre exact de crédits, les coefficients, les seuils de validation et les règles de compensation sont fixés par chaque établissement. Votre premier réflexe doit donc être de lire le règlement des études et la maquette de votre filière, disponibles auprès de la scolarité. Ne vous fiez pas aux rumeurs de couloir.

## 2. Les matières de finance de la Licence 1

Ce cours couvre les trois matières de finance que l''on retrouve dans la plupart des maquettes de première année :

- Introduction à la finance et au système financier : rôle de la finance, finance directe et indirecte, banques, BCEAO, systèmes financiers décentralisés (microfinance), marché financier régional et BRVM. Les sujets mêlent questions de cours et petits calculs (marge d''intérêt, rendement d''une action, taux réel).
- Mathématiques financières appliquées : intérêts simples et composés, valeur acquise et valeur actuelle, annuités, emprunts indivis et tableaux d''amortissement. C''est la matière la plus calculatoire : la rigueur et la présentation comptent autant que le résultat.
- Statistiques descriptives pour la finance : moyenne, médiane, mode, variance, écart-type, coefficient de variation, séries groupées en classes, indices et taux de croissance, covariance et corrélation de deux séries de rentabilités.

Les maîtriser vous prépare directement à l''analyse financière et aux marchés financiers de Licence 2, puis aux décisions d''investissement et de financement de Licence 3.

## 3. Les types d''épreuves et comment les aborder

- L''exercice chiffré : calculer une valeur actuelle, dresser un tableau d''amortissement, calculer une variance. Posez la formule, remplacez les lettres par les valeurs, donnez le résultat avec son unité (FCFA, %) et une phrase d''interprétation.
- Le cas pratique : une entreprise ou un ménage fictif doit prendre une décision (choisir entre deux offres de prêt, comparer deux placements). On attend une démarche structurée : hypothèses, calculs, comparaison, conclusion argumentée.
- Le QCM : lisez toutes les propositions avant de répondre ; méfiez-vous des réponses presque justes (taux proportionnel au lieu de taux équivalent, variance au lieu d''écart-type). Vérifiez si les mauvaises réponses sont pénalisées.
- La question de cours ou la courte dissertation : en introduction à la finance, on peut vous demander « Montrez le rôle des banques dans le financement de l''économie ». Il faut une introduction (définitions, problématique), un plan en deux ou trois parties et une conclusion.
- Le projet ou dossier : certains enseignants demandent un travail de groupe (par exemple, présenter une société cotée à la BRVM à partir de documents publics). La note tient compte du fond, de la forme et de la présentation orale.

## 4. Les erreurs qui coûtent des points

- Confondre taux annuel et taux mensuel, ou oublier de convertir une durée en jours ou en mois.
- Utiliser l''intérêt simple là où l''énoncé impose l''intérêt composé (et inversement).
- Présenter un tableau d''amortissement dont la dernière ligne ne ramène pas le capital restant dû à zéro.
- Confondre variance et écart-type, ou oublier que l''écart-type s''exprime dans la même unité que la série.
- Donner un résultat sans phrase de conclusion.
- Recopier des chiffres « officiels » appris par cœur sans en être sûr : dans ce cours, tous les taux d''intérêt et d''impôt des exemples sont fictifs pour l''exemple. Pour un taux réel (taux directeur, taux d''usure, fiscalité), il faut toujours consulter la source officielle en vigueur (BCEAO, administration fiscale).

## 5. Méthode de révision

- Fiches : une fiche par chapitre avec les définitions, les formules encadrées et un exemple résolu.
- Formulaire : une page unique regroupant toutes les formules de mathématiques financières et de statistiques. Relisez-la chaque jour.
- Entraînement actif : refaites les exercices de TD sans regarder la correction, puis comparez.
- Calculatrice : entraînez-vous avec la calculatrice autorisée à l''examen (puissances, puissances négatives, mémoires, mode statistique).

## 6. Plan de révision sur six semaines

- Semaine 1 : système financier (acteurs, rôle de la BCEAO, microfinance, marché financier régional) ; fiches de cours et petits calculs de rendement.
- Semaine 2 : intérêts simples et composés, valeur acquise, valeur actuelle, taux proportionnels et équivalents.
- Semaine 3 : annuités et emprunts indivis (amortissement constant, annuités constantes, remboursement in fine) ; trois tableaux d''amortissement complets.
- Semaine 4 : statistiques descriptives (séries simples et séries classées, paramètres de position et de dispersion).
- Semaine 5 : indices, taux de croissance moyen, covariance et corrélation ; reprise des points faibles.
- Semaine 6 : sujets d''examen blancs en temps limité (voir la leçon 5), correction et relecture du formulaire.

La veille de l''examen, ne commencez rien de nouveau : relisez vos fiches, préparez votre matériel (pièce d''identité, carte d''étudiant, calculatrice, stylos) et dormez suffisamment.

## Points clés

- Le règlement des études de votre établissement fixe les crédits, les coefficients et les règles de validation : lisez-le.
- Trois matières de finance en Licence 1 : système financier, mathématiques financières, statistiques descriptives.
- Formule, application numérique, résultat avec unité, interprétation : cette démarche rapporte des points dans toutes les épreuves chiffrées.

## Exercices pratiques

- Exercice 1 : citez les trois matières de finance de ce cours et, pour chacune, deux notions à maîtriser.
- Exercice 2 : un étudiant obtient 9 de moyenne en mathématiques financières et 13 en statistiques, deux matières de même coefficient dans la même UE, et le seuil de validation de l''UE est de 10 dans son établissement. Calculez la moyenne de l''UE si la compensation est autorisée, et concluez.
- Exercice 3 : proposez la structure (introduction, deux parties, conclusion) d''une réponse au sujet « Le rôle de la microfinance dans le financement des petites entreprises ».
- Exercice 4 (cas pratique) : Awa, étudiante à Saint-Louis, a quatre semaines au lieu de six avant ses examens. Adaptez le plan de révision.

## Corrigé

- Exercice 1 : système financier (rôle de la BCEAO, différence entre finance directe et indirecte) ; mathématiques financières (valeur actuelle, tableau d''amortissement) ; statistiques (écart-type, coefficient de variation). D''autres réponses sont acceptables si elles figurent dans le programme.
- Exercice 2 : moyenne = (9 + 13) / 2 = 11. Si la compensation est autorisée dans l''UE, celle-ci est validée avec 11, même si la note de mathématiques financières est inférieure à 10. Sans compensation, il faudrait repasser cette matière au rattrapage. Seul le règlement de l''établissement permet de trancher.
- Exercice 3 : introduction (définir la microfinance et la petite entreprise, constater la difficulté d''accès au crédit bancaire, problématique : la microfinance comble-t-elle ce manque ?) ; partie 1 : les apports (proximité, petits montants, garanties adaptées comme la caution solidaire, épargne de proximité) ; partie 2 : les limites (coût du crédit plus élevé, durées courtes, risque de surendettement, besoin de supervision) ; conclusion : la microfinance est complémentaire des banques et du marché financier, et non un substitut.
- Exercice 4 : semaine 1 : système financier et intérêts simples et composés ; semaine 2 : annuités et emprunts indivis ; semaine 3 : statistiques descriptives complètes ; semaine 4 : deux sujets blancs en temps limité et relecture du formulaire. On fusionne les révisions et on garde obligatoirement l''entraînement en conditions d''examen.', 'texte', 60, true, 10
from public.courses c where c.slug = 'lic-fin-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Licence 1 en Finance');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Introduction à la finance et au système financier : l''essentiel pour l''examen', '## Objectifs de la leçon

- Définir la finance et le système financier, distinguer finance directe et finance indirecte.
- Présenter les principaux acteurs dans l''UEMOA : banques, BCEAO, systèmes financiers décentralisés, marché financier régional.
- Réaliser les calculs de base attendus à l''examen : marge d''intérêt, coût d''un microcrédit, capitalisation boursière, rendement d''une action, taux réel.

## Fiche 1 : la finance et ses fonctions

La finance étudie la manière dont les agents économiques obtiennent, placent et utilisent l''argent dans le temps, en tenant compte du risque. Certains agents ont une capacité de financement (ils dépensent moins qu''ils ne gagnent, comme beaucoup de ménages), d''autres ont un besoin de financement (entreprises qui investissent, État en déficit). Le système financier organise la rencontre entre les deux.

Ses fonctions principales :

- Collecter l''épargne et la transformer en crédits ou en investissements.
- Assurer les paiements (comptes, virements, cartes, monnaie électronique sur téléphone mobile).
- Répartir et gérer les risques (assurance, diversification).
- Produire de l''information sur les prix (cours, taux).

## Fiche 2 : finance directe et finance indirecte

Schéma décrit en texte : à gauche les agents à capacité de financement, à droite les agents à besoin de financement. Une flèche du haut passe directement de gauche à droite par le marché financier (achat d''actions et d''obligations) : c''est la finance directe. Une flèche du bas passe par une banque ou une institution de microfinance, qui reçoit des dépôts et accorde des crédits : c''est la finance indirecte, ou intermédiée.

- En finance directe, l''épargnant détient lui-même le titre émis par l''entreprise ou l''État et supporte directement le risque.
- En finance indirecte, l''épargnant détient une créance sur la banque (son dépôt) ; la banque détient une créance sur l''emprunteur et supporte le risque de crédit.

Dans l''UEMOA, la finance indirecte reste dominante : la majorité des entreprises, surtout les PME, se financent auprès des banques et des institutions de microfinance plutôt qu''en bourse.

## Fiche 3 : les acteurs dans l''UEMOA

- La BCEAO (Banque centrale des États de l''Afrique de l''Ouest), dont le siège est à Dakar, est la banque centrale commune des huit États de l''UEMOA (Bénin, Burkina Faso, Côte d''Ivoire, Guinée-Bissau, Mali, Niger, Sénégal, Togo). Elle émet le franc CFA, conduit la politique monétaire commune avec pour objectif principal la stabilité des prix, gère les réserves de change et veille au bon fonctionnement des systèmes de paiement.
- La Commission bancaire de l''UMOA supervise les banques et établissements financiers.
- Les banques commerciales collectent les dépôts, accordent des crédits et gèrent les moyens de paiement.
- Les systèmes financiers décentralisés (SFD), c''est-à-dire les institutions de microfinance (mutuelles d''épargne et de crédit, associations, sociétés), servent une clientèle souvent exclue des banques : commerçants, artisans, agriculteurs, femmes entrepreneures.
- Le marché financier régional comprend la BRVM (Bourse régionale des valeurs mobilières, siège à Abidjan, avec des antennes nationales dans chaque État), le Dépositaire central / Banque de règlement, les SGI (sociétés de gestion et d''intermédiation) qui passent les ordres des investisseurs, et un régulateur régional (l''AMF-UMOA, anciennement CREPMF).

Le franc CFA de l''UEMOA a une parité fixe avec l''euro : 1 euro = 655,957 FCFA.

## Fiche 4 : les calculs de base

Marge d''intérêt d''une banque. Exemple fictif : la Banque Téranga Fictive collecte 50 000 millions FCFA de dépôts rémunérés à 3 % (taux fictif pour l''exemple) et prête 40 000 millions à 9 % (taux fictif pour l''exemple).

- Intérêts reçus = 40 000 × 9 % = 3 600 millions.
- Intérêts versés = 50 000 × 3 % = 1 500 millions.
- Marge d''intérêt = 3 600 − 1 500 = 2 100 millions FCFA. Elle doit couvrir les frais généraux, le coût du risque (crédits non remboursés) et dégager un bénéfice.

Coût d''un microcrédit. Fatou, commerçante à Thiès, emprunte 500 000 FCFA auprès d''une mutuelle, remboursable en 12 mensualités constantes au taux de 2 % par mois (taux fictif pour l''exemple). La mensualité vaut 500 000 × 0,02 / (1 − 1,02^−12) ≈ 47 280 FCFA (formule étudiée en leçon 3). Total remboursé ≈ 12 × 47 280 = 567 360 FCFA ; coût du crédit ≈ 67 360 FCFA (67 358 FCFA sans arrondir la mensualité).

Indicateurs boursiers. La société fictive Téranga Agro SA compte 10 000 000 d''actions cotées à 2 500 FCFA. Elle verse un dividende de 150 FCFA par action et son bénéfice par action (BPA) est de 250 FCFA.

- Capitalisation boursière = nombre d''actions × cours = 10 000 000 × 2 500 = 25 milliards FCFA.
- Rendement du dividende = dividende / cours = 150 / 2 500 = 6 %.
- PER (price earning ratio) = cours / BPA = 2 500 / 250 = 10 : l''action vaut dix années de bénéfice.

Obligation. Une obligation de valeur nominale 10 000 FCFA, au taux facial de 6,5 %, rapporte un coupon annuel de 650 FCFA. Si elle s''échange à 10 200 FCFA, le rendement courant vaut 650 / 10 200 ≈ 6,37 %.

Taux réel (relation de Fisher). Si un dépôt rapporte 6 % nominal et que l''inflation est de 2 % (valeurs fictives pour l''exemple), le taux réel vaut (1,06 / 1,02) − 1 ≈ 3,92 %. L''approximation 6 % − 2 % = 4 % reste acceptable pour des taux faibles.

## Points clés

- Finance directe : marché financier ; finance indirecte : banques et SFD.
- La BCEAO conduit la politique monétaire commune ; la Commission bancaire supervise les banques.
- La BRVM est la bourse commune des huit États ; les ordres passent par les SGI.
- Formules : marge d''intérêt, capitalisation, rendement du dividende, PER, rendement courant, taux réel.

## Exercices pratiques

- Exercice 1 : définissez finance directe et finance indirecte et donnez un exemple de chacune au Sénégal.
- Exercice 2 : citez trois missions de la BCEAO et l''organe qui supervise les banques de l''UMOA.
- Exercice 3 : une banque fictive prête 80 000 millions FCFA à 8,5 % et rémunère 100 000 millions de dépôts à 2,5 % (taux fictifs pour l''exemple). Calculez sa marge d''intérêt.
- Exercice 4 : la société fictive Baobab Télécom SA a 5 000 000 d''actions cotées 4 200 FCFA, un dividende de 336 FCFA et un BPA de 420 FCFA. Calculez la capitalisation, le rendement du dividende et le PER.
- Exercice 5 : un placement rapporte 8 % nominal ; l''inflation est de 3 % (valeurs fictives pour l''exemple). Calculez le taux réel exact et approché.
- Exercice 6 (cas pratique) : Moussa, menuisier à Kaolack, veut financer une machine de 1 500 000 FCFA. Il n''a pas de garanties immobilières. Présentez-lui deux sources de financement adaptées et expliquez pourquoi l''introduction en bourse n''est pas réaliste pour lui.

## Corrigé

- Exercice 1 : finance directe : l''agent à besoin de financement émet des titres achetés directement par les épargnants (un État qui émet des obligations souscrites par des particuliers via une SGI). Finance indirecte : un intermédiaire collecte l''épargne et prête (une banque qui accorde un crédit d''équipement à une PME de Dakar).
- Exercice 2 : émettre le franc CFA, conduire la politique monétaire commune (stabilité des prix), gérer les réserves de change, veiller aux systèmes de paiement. La supervision des banques relève de la Commission bancaire de l''UMOA.
- Exercice 3 : intérêts reçus = 80 000 × 8,5 % = 6 800 millions ; intérêts versés = 100 000 × 2,5 % = 2 500 millions ; marge d''intérêt = 4 300 millions FCFA.
- Exercice 4 : capitalisation = 5 000 000 × 4 200 = 21 milliards FCFA ; rendement du dividende = 336 / 4 200 = 8 % ; PER = 4 200 / 420 = 10.
- Exercice 5 : taux réel exact = 1,08 / 1,03 − 1 ≈ 4,85 % ; approché = 8 % − 3 % = 5 %.
- Exercice 6 : premièrement, un crédit d''une institution de microfinance (caution solidaire, nantissement de la machine, montants adaptés) ; deuxièmement, un crédit-bail ou un crédit d''équipement bancaire, éventuellement avec un fonds de garantie. L''introduction en bourse suppose une société anonyme, des comptes certifiés, une taille minimale et des coûts d''émission élevés : elle ne concerne pas une entreprise individuelle de cette taille.', 'texte', 60, false, 20
from public.courses c where c.slug = 'lic-fin-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Introduction à la finance et au système financier : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Mathématiques financières appliquées : l''essentiel pour l''examen', '## Objectifs de la leçon

- Calculer intérêts simples et intérêts composés, valeur acquise et valeur actuelle.
- Passer d''un taux annuel à un taux proportionnel ou équivalent.
- Calculer la valeur d''une suite d''annuités constantes.
- Construire un tableau d''amortissement d''emprunt indivis selon les trois modalités classiques.

Tous les taux de cette leçon sont fictifs pour l''exemple.

## Fiche 1 : intérêts simples

On utilise l''intérêt simple pour les opérations de moins d''un an. L''intérêt est proportionnel au capital, au taux et à la durée : I = C × t × n, avec la durée exprimée dans la même unité que le taux. En jours, on utilise par convention l''année commerciale de 360 jours : I = C × t × j / 360.

Exemple : 2 000 000 FCFA placés 90 jours à 6 % : I = 2 000 000 × 0,06 × 90 / 360 = 30 000 FCFA. Valeur acquise = 2 030 000 FCFA.

## Fiche 2 : intérêts composés

Au-delà d''un an, les intérêts de chaque période s''ajoutent au capital et produisent à leur tour des intérêts.

- Valeur acquise : Cn = C0 × (1 + i)^n.
- Valeur actuelle : C0 = Cn × (1 + i)^−n.

Exemple 1 : 5 000 000 FCFA placés 5 ans à 7 % : C5 = 5 000 000 × 1,07^5 ≈ 7 012 759 FCFA.

Exemple 2 : une créance de 10 000 000 FCFA payable dans 4 ans, actualisée à 8 %, vaut aujourd''hui 10 000 000 × 1,08^−4 ≈ 7 350 299 FCFA. Actualiser, c''est ramener une somme future à sa valeur d''aujourd''hui : un franc reçu demain vaut moins qu''un franc reçu aujourd''hui.

## Fiche 3 : taux proportionnels et taux équivalents

- Taux proportionnel : taux annuel divisé par le nombre de périodes. 12 % par an donne 1 % par mois. Il est utilisé à intérêts simples.
- Taux équivalent : il donne la même valeur acquise à intérêts composés. Taux mensuel équivalent à 12 % annuel : (1,12)^(1/12) − 1 ≈ 0,9489 % par mois.

Le taux équivalent est toujours un peu inférieur au taux proportionnel, car les intérêts sont capitalisés plus souvent.

## Fiche 4 : les annuités constantes

Une suite d''annuités est une série de versements égaux à intervalles réguliers (versements en fin de période).

- Valeur acquise au moment du dernier versement : Vn = a × [(1 + i)^n − 1] / i.
- Valeur actuelle une période avant le premier versement : V0 = a × [1 − (1 + i)^−n] / i.

Exemple : une tontine d''épargne bancaire où l''on verse 500 000 FCFA par an pendant 6 ans à 6 % donne Vn = 500 000 × (1,06^6 − 1) / 0,06 ≈ 3 487 659 FCFA. Cinq annuités de 1 000 000 FCFA actualisées à 8 % valent V0 = 1 000 000 × (1 − 1,08^−5) / 0,08 ≈ 3 992 710 FCFA.

## Fiche 5 : les emprunts indivis

Un emprunt indivis est contracté auprès d''un seul prêteur (une banque). Chaque échéance, appelée annuité, se décompose en intérêt et amortissement du capital : annuité = intérêt + amortissement, avec intérêt = capital restant dû en début de période × taux.

Cas : la société fictive Ndiaye Distribution SARL emprunte 12 000 000 FCFA sur 4 ans à 9 %.

Modalité 1, amortissement constant : chaque année, on rembourse 12 000 000 / 4 = 3 000 000 FCFA.

- Année 1 : capital début 12 000 000 ; intérêt 1 080 000 ; amortissement 3 000 000 ; annuité 4 080 000 ; capital fin 9 000 000.
- Année 2 : 9 000 000 ; 810 000 ; 3 000 000 ; 3 810 000 ; 6 000 000.
- Année 3 : 6 000 000 ; 540 000 ; 3 000 000 ; 3 540 000 ; 3 000 000.
- Année 4 : 3 000 000 ; 270 000 ; 3 000 000 ; 3 270 000 ; 0.

Total des intérêts : 2 700 000 FCFA. Les annuités sont décroissantes.

Modalité 2, annuités constantes : a = C × i / [1 − (1 + i)^−n] = 12 000 000 × 0,09 / (1 − 1,09^−4) ≈ 3 704 024 FCFA.

- Année 1 : capital début 12 000 000 ; intérêt 1 080 000 ; amortissement 2 624 024 ; capital fin 9 375 976.
- Année 2 : 9 375 976 ; 843 838 ; 2 860 186 ; 6 515 790.
- Année 3 : 6 515 790 ; 586 421 ; 3 117 603 ; 3 398 187.
- Année 4 : 3 398 187 ; 305 837 ; 3 398 187 ; 0.

Total des intérêts ≈ 2 816 096 FCFA. Contrôles : la somme des amortissements vaut 12 000 000 ; les amortissements forment une suite géométrique de raison 1,09 (2 624 024 × 1,09 ≈ 2 860 186) ; le premier amortissement vaut a − C × i.

Modalité 3, remboursement in fine : on paie seulement les intérêts (1 080 000 par an) et le capital à la fin. Dernière annuité : 13 080 000 FCFA. Total des intérêts : 4 320 000 FCFA.

Lecture : plus le capital est remboursé tard, plus le coût total en intérêts est élevé, mais plus la charge des premières années est légère.

## Points clés

- Intérêt simple : I = C × t × j / 360 ; intérêt composé : Cn = C0 × (1 + i)^n.
- Actualiser : multiplier par (1 + i)^−n.
- Annuité constante d''emprunt : a = C × i / [1 − (1 + i)^−n].
- Tableau d''amortissement : intérêt calculé sur le capital restant dû ; le capital final doit être nul.

## Exercices pratiques

- Exercice 1 : calculez l''intérêt de 1 500 000 FCFA placés 120 jours à 5 %.
- Exercice 2 : quelle est la valeur actuelle à 7 % d''une somme de 8 000 000 FCFA payable dans 3 ans ?
- Exercice 3 : quel montant faut-il verser en fin d''année pendant 5 ans, à 6 %, pour disposer de 10 000 000 FCFA au dernier versement ?
- Exercice 4 : calculez le taux trimestriel équivalent à 8 % annuel, puis le taux trimestriel proportionnel.
- Exercice 5 : construisez le tableau d''amortissement d''un emprunt de 6 000 000 FCFA sur 3 ans à 10 %, par annuités constantes.
- Exercice 6 (cas pratique) : un fournisseur propose à une clinique de Ziguinchor un échographe soit à 3 000 000 FCFA comptant, soit à 1 000 000 FCFA comptant plus 1 100 000 FCFA dans un an et 1 200 000 FCFA dans deux ans. Au taux de 9 %, quelle offre choisir ?

## Corrigé

- Exercice 1 : I = 1 500 000 × 0,05 × 120 / 360 = 25 000 FCFA.
- Exercice 2 : 8 000 000 × 1,07^−3 ≈ 6 530 383 FCFA.
- Exercice 3 : a = 10 000 000 × 0,06 / (1,06^5 − 1) ≈ 1 773 964 FCFA par an.
- Exercice 4 : équivalent : 1,08^(1/4) − 1 ≈ 1,943 % ; proportionnel : 8 % / 4 = 2 %.
- Exercice 5 : a = 6 000 000 × 0,10 / (1 − 1,10^−3) ≈ 2 412 689 FCFA. Année 1 : intérêt 600 000 ; amortissement 1 812 689 ; capital fin 4 187 311. Année 2 : intérêt 418 731 ; amortissement 1 993 958 ; capital fin 2 193 353. Année 3 : amortissement 2 193 353 ; intérêt 219 336 (écart d''arrondi de 1 FCFA absorbé par la dernière ligne) ; capital fin 0.
- Exercice 6 : valeur actuelle de l''offre B = 1 000 000 + 1 100 000 / 1,09 + 1 200 000 / 1,09² ≈ 3 019 190 FCFA. Elle est supérieure à 3 000 000 FCFA : le paiement comptant est moins coûteux, d''environ 19 190 FCFA en valeur actuelle. On choisit le paiement comptant si la clinique dispose de la trésorerie.', 'texte', 60, false, 30
from public.courses c where c.slug = 'lic-fin-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Mathématiques financières appliquées : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Statistiques descriptives pour la finance : l''essentiel pour l''examen', '## Objectifs de la leçon

- Calculer et interpréter les paramètres de position (moyenne, médiane, mode) et de dispersion (étendue, variance, écart-type, coefficient de variation).
- Traiter une série regroupée en classes.
- Calculer un indice, un taux de variation et un taux de croissance annuel moyen.
- Mesurer la liaison entre deux séries de rentabilités (covariance, corrélation).

## Fiche 1 : vocabulaire

- Population : ensemble étudié (les clients d''une mutuelle d''épargne, les mois d''une année boursière).
- Individu : chaque élément de la population.
- Variable (ou caractère) : ce que l''on mesure. Elle est quantitative discrète (nombre de crédits), quantitative continue (montant d''un prêt, rentabilité) ou qualitative (secteur d''activité).
- Effectif ni : nombre d''individus ayant une modalité ; fréquence fi = ni / N.

## Fiche 2 : série simple, l''exemple d''une action

Rentabilités mensuelles en % d''une action fictive cotée, Sahel Ciment SA, sur 10 mois : 2,0 ; −1,5 ; 3,2 ; 0,8 ; −0,4 ; 1,6 ; 2,5 ; −2,1 ; 1,1 ; 0,8.

- Moyenne : x̄ = Σxi / N = 8,0 / 10 = 0,8 % par mois.
- Médiane : on range la série : −2,1 ; −1,5 ; −0,4 ; 0,8 ; 0,8 ; 1,1 ; 1,6 ; 2,0 ; 2,5 ; 3,2. N est pair : médiane = (0,8 + 1,1) / 2 = 0,95 %. La moitié des mois ont une rentabilité inférieure à 0,95 %.
- Mode : 0,8 % (valeur la plus fréquente, deux fois).
- Étendue : 3,2 − (−2,1) = 5,3 points.
- Variance : V = Σ(xi − x̄)² / N. La somme des carrés des écarts vaut 25,96, donc V = 2,596. Formule de calcul équivalente : V = Σxi² / N − x̄² = 32,36 / 10 − 0,64 = 2,596.
- Écart-type : σ = √2,596 ≈ 1,61 %. C''est la mesure du risque la plus utilisée en finance : plus il est élevé, plus la rentabilité est volatile.
- Coefficient de variation : CV = σ / x̄ ≈ 1,61 / 0,8 ≈ 2,01. Il mesure le risque par unité de rentabilité et permet de comparer des séries de moyennes différentes.

Remarque : la variance d''échantillon divise par N − 1 : 25,96 / 9 ≈ 2,884, écart-type ≈ 1,70. Indiquez la formule choisie.

## Fiche 3 : série groupée en classes

Une institution de microfinance fictive de Kaolack classe 100 crédits selon leur montant (milliers de FCFA) :

- [0 ; 200[ : 15 crédits.
- [200 ; 500[ : 40 crédits.
- [500 ; 1 000[ : 30 crédits.
- [1 000 ; 2 000[ : 15 crédits.

Méthode : on remplace chaque classe par son centre (100 ; 350 ; 750 ; 1 500).

- Moyenne : (100 × 15 + 350 × 40 + 750 × 30 + 1 500 × 15) / 100 = 60 500 / 100 = 605 milliers de FCFA.
- Variance : V = Σni × ci² / N − x̄². Σni × ci² = 15 × 10 000 + 40 × 122 500 + 30 × 562 500 + 15 × 2 250 000 = 55 675 000 ; V = 556 750 − 605² = 556 750 − 366 025 = 190 725.
- Écart-type : σ = √190 725 ≈ 436,7 milliers de FCFA.
- Médiane par interpolation : N / 2 = 50. Les effectifs cumulés croissants valent 15, 55, 85, 100 : la médiane est dans la classe [200 ; 500[. Me = 200 + (50 − 15) / 40 × 300 = 462,5 milliers de FCFA.
- Classe modale : avec des classes d''amplitudes inégales, on compare les densités (effectif / amplitude) : 0,075 ; 0,133 ; 0,06 ; 0,015. La classe modale est [200 ; 500[.

La moyenne (605) est supérieure à la médiane (462,5) : quelques gros crédits tirent la moyenne vers le haut. La distribution est étalée à droite, situation fréquente pour des montants de prêts.

## Fiche 4 : indices et taux de croissance

- Taux de variation entre deux dates : (V1 − V0) / V0.
- Indice simple base 100 : I = V1 / V0 × 100. Si l''encours de crédit d''une agence passe de 1 200 à 1 350 millions FCFA, l''indice vaut 112,5 et la hausse 12,5 %.
- Taux de croissance annuel moyen (TCAM) sur n années : (Vn / V0)^(1/n) − 1. Si l''encours passe de 1 200 à 1 750 millions en 4 ans : (1 750 / 1 200)^(1/4) − 1 ≈ 9,89 % par an. Attention : on ne divise pas la hausse totale (45,8 %) par 4.

## Fiche 5 : covariance et corrélation

Deux actions fictives X et Y ont, sur 5 mois, les rentabilités suivantes (%) : X : 1 ; 2 ; −1 ; 3 ; 0. Y : 0,5 ; 1,5 ; −0,5 ; 2 ; 1,5.

- Moyennes : x̄ = 5 / 5 = 1 ; ȳ = 5 / 5 = 1.
- Covariance : cov(X, Y) = Σ(xi − x̄)(yi − ȳ) / N. Les produits des écarts valent 0 ; 0,5 ; 3 ; 2 ; −0,5, de somme 5 : cov = 1.
- Écarts-types : σX = √2 ≈ 1,414 ; σY = √0,8 ≈ 0,894.
- Coefficient de corrélation : r = cov / (σX × σY) = 1 / (1,414 × 0,894) ≈ 0,79.

r est compris entre −1 et 1. Ici, la liaison est positive et assez forte : les deux titres évoluent plutôt dans le même sens.

## Points clés

- Position : moyenne, médiane, mode. Dispersion : étendue, variance, écart-type, CV.
- Série classée : centres de classes, médiane par interpolation, densités pour la classe modale.
- TCAM = (Vn / V0)^(1/n) − 1.
- r = cov / (σX × σY), toujours entre −1 et 1.

## Exercices pratiques

- Exercice 1 : nombre de dossiers de crédit traités par jour dans une agence bancaire de Dakar sur 7 jours : 12 ; 16 ; 9 ; 18 ; 15 ; 21 ; 14. Calculez la moyenne, la médiane, l''étendue, la variance et l''écart-type.
- Exercice 2 : l''encours d''épargne d''une mutuelle passe de 4,0 à 6,5 milliards FCFA en 5 ans. Calculez le taux de variation global et le TCAM.
- Exercice 3 : rentabilités trimestrielles (%) de deux fonds fictifs. Fonds A : 1,5 ; 0,5 ; 2,0 ; 1,0. Fonds B : 4,0 ; −2,0 ; 3,0 ; 1,0. Calculez moyenne, écart-type et CV de chacun.
- Exercice 4 (cas pratique) : à partir de l''exercice 3, un client prudent de Saint-Louis vous demande quel fonds choisir. Argumentez.
- Exercice 5 : expliquez pourquoi, dans une série de montants de crédits, la médiane est souvent préférée à la moyenne.

## Corrigé

- Exercice 1 : somme = 105, moyenne = 15. Série rangée : 9 ; 12 ; 14 ; 15 ; 16 ; 18 ; 21 : médiane = 15. Étendue = 21 − 9 = 12. Écarts : −3 ; 1 ; −6 ; 3 ; 0 ; 6 ; −1 ; somme des carrés = 92 ; variance = 92 / 7 ≈ 13,14 ; écart-type ≈ 3,63 dossiers.
- Exercice 2 : taux global = (6,5 − 4,0) / 4,0 = 62,5 %. TCAM = (6,5 / 4,0)^(1/5) − 1 ≈ 10,20 % par an.
- Exercice 3 : fonds A : moyenne 1,25 % ; variance = (0,0625 + 0,5625 + 0,5625 + 0,0625) / 4 = 0,3125 ; écart-type ≈ 0,56 % ; CV ≈ 0,45. Fonds B : moyenne 1,5 % ; variance = (6,25 + 12,25 + 2,25 + 0,25) / 4 = 5,25 ; écart-type ≈ 2,29 % ; CV ≈ 1,53.
- Exercice 4 : le fonds B rapporte un peu plus en moyenne (1,5 % contre 1,25 %) mais il est beaucoup plus risqué (écart-type quatre fois plus élevé, un trimestre à −2 %). Son CV est plus de trois fois supérieur. Pour un client prudent, le fonds A est préférable.
- Exercice 5 : la médiane n''est pas influencée par les valeurs extrêmes. Quelques très gros crédits gonflent la moyenne, alors que la médiane donne le montant du crédit « typique » : la moitié des crédits sont inférieurs, l''autre moitié supérieurs.', 'texte', 60, false, 40
from public.courses c where c.slug = 'lic-fin-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Statistiques descriptives pour la finance : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Licence 1 Finance (entraînement corrigé)', '## Présentation

Ce sujet est un sujet d''entraînement, conçu pour ce cours : ce n''est pas un sujet officiel. Il mobilise les trois matières de l''année. Durée conseillée : 3 heures. Calculatrice non programmable autorisée. Barème indicatif, non officiel : partie A sur 5 points, partie B sur 8 points, partie C sur 7 points. Tous les taux sont fictifs pour l''exemple.

## Partie A : système financier (5 points)

- A1 (1,5 point) : distinguez finance directe et finance indirecte. Laquelle domine dans l''UEMOA ? Pourquoi ?
- A2 (1,5 point) : présentez le rôle de la BCEAO et celui de la BRVM.
- A3 (2 points) : la société fictive Kayar Pêche SA a 2 400 000 actions cotées 3 200 FCFA ; elle verse un dividende de 192 FCFA par action. Calculez sa capitalisation boursière et le rendement du dividende. Un épargnant qui achète 100 actions via une SGI paie combien, hors frais ?

## Partie B : mathématiques financières (8 points)

La société fictive Diallo Transports SARL, à Touba, emprunte 9 000 000 FCFA à sa banque pour acheter un véhicule. Durée 3 ans, taux 8 %, remboursement par annuités constantes de fin d''année.

- B1 (1,5 point) : calculez l''annuité.
- B2 (3 points) : présentez le tableau d''amortissement complet.
- B3 (1,5 point) : calculez le coût total du crédit, puis comparez avec un remboursement par amortissements constants.
- B4 (2 points) : le vendeur propose aussi un paiement unique de 12 000 000 FCFA dans 2 ans. Au taux de 8 %, quelle est la valeur actuelle de cette proposition ? Est-elle intéressante par rapport à un prix comptant de 9 000 000 FCFA ?

## Partie C : statistiques descriptives (7 points)

Dépôts hebdomadaires (milliers de FCFA) collectés par un agent de microfinance à Mbour sur 8 semaines : 420 ; 380 ; 510 ; 460 ; 390 ; 600 ; 450 ; 430.

- C1 (2 points) : calculez la moyenne et la médiane.
- C2 (3 points) : calculez la variance et l''écart-type.
- C3 (2 points) : calculez le coefficient de variation et interprétez la régularité de la collecte.

## Corrigé détaillé de la partie A

A1. En finance directe, les agents à besoin de financement émettent des titres (actions, obligations) achetés directement par les épargnants sur le marché financier. En finance indirecte, un intermédiaire (banque, institution de microfinance) collecte les dépôts et accorde des crédits en supportant le risque. Dans l''UEMOA, la finance indirecte domine : la plupart des entreprises sont des PME qui ne remplissent pas les conditions d''accès à la bourse (forme de société anonyme, comptes certifiés, taille, coûts d''émission) ; le crédit bancaire et la microfinance restent leurs principales sources externes.

A2. La BCEAO est la banque centrale commune des huit États de l''UEMOA : elle émet le franc CFA, conduit la politique monétaire commune (objectif principal : stabilité des prix), gère les réserves de change et veille aux systèmes de paiement. La BRVM est la bourse régionale commune aux huit États : elle organise la cotation et les échanges d''actions et d''obligations ; les ordres sont transmis par les SGI.

A3. Capitalisation = 2 400 000 × 3 200 = 7 680 000 000 FCFA, soit 7,68 milliards. Rendement du dividende = 192 / 3 200 = 6 %. Achat de 100 actions : 100 × 3 200 = 320 000 FCFA hors commissions.

## Corrigé détaillé de la partie B

B1. a = 9 000 000 × 0,08 / (1 − 1,08^−3) ≈ 3 492 302 FCFA.

B2. Tableau (arrondis au franc ; la dernière ligne absorbe l''écart d''arrondi) :

- Année 1 : capital début 9 000 000 ; intérêt 720 000 ; amortissement 2 772 302 ; annuité 3 492 302 ; capital fin 6 227 698.
- Année 2 : capital début 6 227 698 ; intérêt 498 216 ; amortissement 2 994 086 ; annuité 3 492 302 ; capital fin 3 233 612.
- Année 3 : capital début 3 233 612 ; intérêt 258 690 ; amortissement 3 233 612 ; annuité 3 492 302 ; capital fin 0.

Contrôle : 2 772 302 + 2 994 086 + 3 233 612 = 9 000 000.

B3. Coût total = 3 × 3 492 302 − 9 000 000 ≈ 1 476 906 FCFA (1 476 905 sans arrondir l''annuité). Avec des amortissements constants de 3 000 000 FCFA : intérêts = 720 000 + 480 000 + 240 000 = 1 440 000 FCFA. L''amortissement constant coûte environ 36 905 FCFA de moins, car le capital est remboursé plus vite ; en contrepartie, la première annuité est plus lourde (3 720 000 FCFA contre 3 492 302 FCFA).

B4. Valeur actuelle = 12 000 000 × 1,08^−2 ≈ 10 288 066 FCFA. Elle est supérieure au prix comptant de 9 000 000 FCFA : la proposition de paiement différé est plus coûteuse. Autre lecture : 9 000 000 placés 2 ans à 8 % ne deviennent que 10 497 600 FCFA, bien moins que 12 000 000.

## Corrigé détaillé de la partie C

C1. Somme = 3 640 ; moyenne = 3 640 / 8 = 455 milliers de FCFA. Série rangée : 380 ; 390 ; 420 ; 430 ; 450 ; 460 ; 510 ; 600. Médiane = (430 + 450) / 2 = 440 milliers de FCFA.

C2. Écarts à la moyenne : −35 ; −75 ; 55 ; 5 ; −65 ; 145 ; −5 ; −25. Somme des carrés = 1 225 + 5 625 + 3 025 + 25 + 4 225 + 21 025 + 25 + 625 = 35 800. Variance = 35 800 / 8 = 4 475. Écart-type = √4 475 ≈ 66,9 milliers de FCFA.

C3. CV = 66,9 / 455 ≈ 0,147, soit 14,7 %. La dispersion est modérée : la collecte est assez régulière. La semaine à 600 (peut-être un jour de marché ou une fête) tire la moyenne au-dessus de la médiane.

## Conseils de présentation

- Encadrez les formules et les résultats ; indiquez toujours l''unité.
- Pour le tableau d''amortissement, vérifiez que le capital final est nul et que la somme des amortissements égale l''emprunt.
- Terminez chaque partie par une phrase de conclusion.

## Exercices pratiques

- Exercice 1 : quel est le taux mensuel proportionnel à 9 % annuel ? Le taux mensuel équivalent ?
- Exercice 2 : quelle est la valeur acquise de 9 000 000 FCFA placés 3 ans à 8 % ?
- Exercice 3 : vrai ou faux : « La variance s''exprime dans la même unité que la série. »
- Exercice 4 : citez deux acteurs du marché financier régional autres que la BRVM.
- Exercice 5 : dans un tableau d''amortissement à annuités constantes, comment évoluent les intérêts et les amortissements ?

## Corrigé

- Exercice 1 : proportionnel : 9 % / 12 = 0,75 % ; équivalent : 1,09^(1/12) − 1 ≈ 0,7207 %.
- Exercice 2 : 9 000 000 × 1,08^3 = 11 337 408 FCFA.
- Exercice 3 : faux. La variance s''exprime dans l''unité au carré ; c''est l''écart-type qui a la même unité que la série.
- Exercice 4 : les SGI, le Dépositaire central / Banque de règlement, le régulateur régional (AMF-UMOA).
- Exercice 5 : les intérêts diminuent car le capital restant dû diminue ; les amortissements augmentent (suite géométrique de raison 1 + i) ; leur somme reste égale à l''annuité.', 'texte', 60, false, 50
from public.courses c where c.slug = 'lic-fin-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Licence 1 Finance (entraînement corrigé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Introduction à la finance et au système financier', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 1 Finance, Banque, Comptabilité-Finance.
- Objectifs : expliquer le rôle du système financier, présenter les acteurs de l''UEMOA (banques, BCEAO, SFD, marché financier régional), réaliser les calculs de base (marge d''intérêt, coût d''un microcrédit, indicateurs boursiers, taux réel).
- Matériel : tableau blanc, diaporama avec le schéma de la finance directe et indirecte, calculatrice.
- Prérequis : leçon 2 du cours ; pourcentages.
- Tous les taux cités sont fictifs pour l''exemple.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et situation de départ

« Bonjour à toutes et à tous. Imaginons Khady, qui vend du thiakry et du jus de bissap au marché de Sandaga. Chaque soir, il lui reste un peu d''argent. Que peut-elle en faire ? Le garder chez elle, le déposer sur un compte de mutuelle, le confier à une banque, l''envoyer sur son porte-monnaie électronique, ou un jour acheter des actions. À l''autre bout, Ibrahima veut ouvrir un atelier de couture et il lui manque 2 millions de francs. Le système financier, c''est l''ensemble des institutions et des marchés qui permettent à l''argent de Khady d''aller financer le projet d''Ibrahima. Notre séance répond à trois questions : comment l''épargne rencontre-t-elle les besoins de financement ? Qui sont les acteurs dans l''UEMOA ? Quels calculs simples faut-il savoir faire à l''examen ? »

Visuel : une diapositive avec Khady à gauche, Ibrahima à droite, et un point d''interrogation au centre.

## 05:00 – 15:00 · Capacité et besoin de financement

« Un agent a une capacité de financement quand son épargne dépasse ses investissements. C''est souvent le cas des ménages. Un agent a un besoin de financement dans le cas inverse : entreprises qui investissent, État dont les dépenses dépassent les recettes. Le système financier remplit quatre fonctions : collecter et allouer l''épargne, assurer les paiements, répartir les risques, produire de l''information sur les prix des actifs. Notez ces quatre fonctions : elles reviennent souvent en question de cours. »

Question à poser : « Une entreprise qui vend plus qu''elle n''investit et qui dépose ses excédents à la banque est-elle en capacité ou en besoin de financement ? » Réponse attendue : en capacité de financement.

## 15:00 – 27:00 · Finance directe et finance indirecte

« Dessinons le schéma. À gauche, les épargnants. À droite, les emprunteurs. En haut, une flèche directe : c''est le marché financier. L''entreprise émet des actions ou des obligations, l''épargnant les achète par l''intermédiaire d''une SGI. Il détient le titre, il supporte le risque. En bas, une flèche qui passe par une boîte : la banque ou l''institution de microfinance. L''épargnant dépose, la banque prête. L''épargnant détient une créance sur la banque, la banque détient une créance sur l''emprunteur. C''est elle qui supporte le risque de non-remboursement. On dit que la banque transforme : elle reçoit des dépôts à vue et accorde des crédits à moyen terme. »

« Dans notre zone, c''est la finance indirecte qui domine. La raison est simple : la grande majorité des entreprises sont des PME, voire des entreprises individuelles, qui ne peuvent pas aller en bourse. »

Visuel : le schéma complet avec les deux flèches.

## 27:00 – 40:00 · Les acteurs de l''UEMOA

« Premier acteur, la BCEAO, Banque centrale des États de l''Afrique de l''Ouest, dont le siège est à Dakar. Elle est commune à huit pays : Bénin, Burkina Faso, Côte d''Ivoire, Guinée-Bissau, Mali, Niger, Sénégal, Togo. Elle émet le franc CFA, conduit la politique monétaire commune avec pour objectif principal la stabilité des prix, gère les réserves de change et surveille les systèmes de paiement. Retenez la parité fixe : 1 euro = 655,957 francs CFA. »

« Deuxième acteur, la Commission bancaire de l''UMOA, qui supervise les banques et établissements financiers. Troisième acteur, les banques commerciales. Quatrième, les systèmes financiers décentralisés, c''est-à-dire la microfinance : mutuelles d''épargne et de crédit, associations, sociétés. Elles servent les commerçantes comme Khady, les artisans, les agriculteurs. Cinquième ensemble, le marché financier régional : la BRVM, bourse commune installée à Abidjan avec une antenne dans chaque pays, le Dépositaire central / Banque de règlement qui conserve les titres et règle les opérations, les SGI qui transmettent les ordres, et un régulateur régional, l''AMF-UMOA, anciennement CREPMF. Enfin, les assurances et caisses de retraite, qui sont de gros investisseurs. »

« Attention : pour tout chiffre officiel, taux directeur ou montant réglementaire, la seule source fiable est la publication officielle en vigueur, notamment celle de la BCEAO. À l''examen, on vous demande surtout de comprendre les rôles. »

## 40:00 – 48:00 · Pause interactive et quiz

« Faites une pause de deux minutes, puis répondez à ces cinq questions sans regarder vos notes. »

- Question 1 : où est situé le siège de la BCEAO ? Réponse : à Dakar.
- Question 2 : qui transmet les ordres de bourse des investisseurs à la BRVM ? Réponse : les SGI.
- Question 3 : un dépôt sur un compte d''épargne relève-t-il de la finance directe ou indirecte ? Réponse : indirecte.
- Question 4 : combien d''États partagent la BCEAO ? Réponse : huit.
- Question 5 : qui supervise les banques de l''UMOA ? Réponse : la Commission bancaire de l''UMOA.

## 48:00 – 58:00 · Calcul 1 : la marge d''intérêt d''une banque

« Passons aux calculs. Une banque fictive prête 60 000 millions de francs à 8 % et rémunère 75 000 millions de dépôts à 3 %, deux taux fictifs pour l''exemple. Intérêts reçus : 60 000 × 0,08 = 4 800 millions. Intérêts versés : 75 000 × 0,03 = 2 250 millions. Marge d''intérêt : 2 550 millions. Cette marge doit payer les salaires, les agences, l''informatique, couvrir les crédits non remboursés et laisser un bénéfice. Voilà pourquoi un taux débiteur est toujours supérieur au taux créditeur. »

## 58:00 – 1:08:00 · Calcul 2 : le coût d''un microcrédit

« Ibrahima obtient d''une mutuelle 300 000 francs remboursables en 6 mensualités constantes, à 2,5 % par mois, taux fictif pour l''exemple. La formule de la mensualité, que vous approfondirez en mathématiques financières, est : m = C × i / [1 − (1 + i)^−n]. Ici : m = 300 000 × 0,025 / (1 − 1,025^−6) ≈ 54 465 francs. Il rembourse au total 6 × 54 465 = 326 790 francs, soit un coût de 26 790 francs. Pourquoi le taux mensuel d''un microcrédit est-il souvent plus élevé que celui d''un crédit bancaire classique ? Parce que les montants sont petits, les frais de suivi élevés par franc prêté, et que l''institution supporte un risque important sans garanties classiques. »

Exercice corrigé en direct : « Calculez le coût si le prêt était remboursé en une seule fois au bout de 6 mois à intérêts simples au taux proportionnel de 2,5 % par mois. » Correction : 300 000 × 0,025 × 6 = 45 000 francs. « Le coût est plus élevé, car Ibrahima garde tout le capital pendant 6 mois au lieu de le rembourser progressivement. »

## 1:08:00 – 1:18:00 · Calcul 3 : indicateurs boursiers et taux réel

« Une société fictive, Saloum Énergie SA, compte 8 000 000 d''actions cotées 1 500 francs. Capitalisation : 8 000 000 × 1 500 = 12 milliards de francs. Dividende : 120 francs ; rendement du dividende : 120 / 1 500 = 8 %. Bénéfice par action : 150 francs ; PER : 1 500 / 150 = 10. »

« Une obligation de nominal 10 000 francs au taux facial de 7 % verse un coupon de 700 francs par an. Si elle cote 9 800 francs, son rendement courant vaut 700 / 9 800 ≈ 7,14 %. Quand le prix baisse, le rendement monte : retenez cette relation inverse. »

« Dernier calcul : le taux réel. Un placement rapporte 7 % ; l''inflation est de 2,5 %, chiffres fictifs. Taux réel exact : 1,07 / 1,025 − 1 ≈ 4,39 %. L''approximation 7 − 2,5 = 4,5 % est proche, mais l''examinateur préfère la formule exacte. »

## 1:18:00 – 1:24:00 · Synthèse

« Résumons. Le système financier relie capacité et besoin de financement, par la finance directe (marché) et indirecte (banques, SFD). Dans l''UEMOA, la BCEAO conduit la politique monétaire, la Commission bancaire supervise, la BRVM organise la bourse régionale avec les SGI et le Dépositaire central. Les calculs à maîtriser : marge d''intérêt, coût d''un crédit, capitalisation, rendement du dividende, PER, rendement courant, taux réel. Pour chaque calcul, écrivez la formule, faites l''application numérique, donnez l''unité et terminez par une phrase d''interprétation : c''est cette rigueur qui fait la différence entre un 12 et un 16 sur 20. »

## 1:24:00 – 1:30:00 · Évaluation finale

- Question 1 : définissez la finance indirecte. Réponse : financement passant par un intermédiaire (banque, SFD) qui collecte l''épargne, accorde des crédits et supporte le risque.
- Question 2 : citez deux missions de la BCEAO. Réponse : émettre la monnaie et conduire la politique monétaire commune (aussi : gérer les réserves de change, veiller aux systèmes de paiement).
- Question 3 : une action cote 2 000 francs et verse 100 francs de dividende. Rendement du dividende ? Réponse : 100 / 2 000 = 5 %.
- Question 4 : 4 000 000 d''actions à 2 000 francs : capitalisation ? Réponse : 8 milliards de francs.
- Question 5 : taux nominal 5 %, inflation 2 % (fictifs) : taux réel exact ? Réponse : 1,05 / 1,02 − 1 ≈ 2,94 %.

« Merci pour votre attention. Refaites les exercices de la leçon 2 avant la prochaine séance. »', 'video', 90, false, 60
from public.courses c where c.slug = 'lic-fin-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Introduction à la finance et au système financier');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Mathématiques financières appliquées', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 1 Finance et Gestion.
- Objectifs : maîtriser intérêts simples et composés, valeur actuelle, taux équivalents, annuités, et construire sans erreur un tableau d''amortissement d''emprunt indivis.
- Matériel : tableau blanc, diaporama avec un modèle de tableau d''amortissement vide, calculatrice scientifique.
- Prérequis : puissances et puissances négatives ; leçon 3 du cours.
- Tous les taux sont fictifs pour l''exemple.

## Déroulé minuté

## 00:00 – 05:00 · Pourquoi le temps a un prix

« Bonjour. Je vous pose une question : préférez-vous recevoir 1 000 000 de francs aujourd''hui ou 1 000 000 de francs dans un an ? Tout le monde choisit aujourd''hui. Pourquoi ? Parce qu''avec l''argent d''aujourd''hui, je peux le placer, le dépenser ou me protéger d''un imprévu. L''intérêt est le prix du temps. Toute la séance repose sur cette idée : on ne compare jamais des sommes versées à des dates différentes sans les ramener à la même date. »

## 05:00 – 15:00 · Intérêts simples

« Pour les opérations de moins d''un an, on utilise l''intérêt simple : I = C × t × j / 360, l''année commerciale comptant 360 jours. Exemple : une entreprise de Rufisque place 3 000 000 de francs pendant 60 jours à 8 %. I = 3 000 000 × 0,08 × 60 / 360 = 40 000 francs. La valeur acquise est 3 040 000 francs. Piège classique : oublier de diviser par 360 et trouver 14 400 000 francs d''intérêts ! Un résultat absurde doit toujours vous alerter. »

## 15:00 – 27:00 · Intérêts composés, valeur acquise, valeur actuelle

« Au-delà d''un an, les intérêts sont capitalisés. Valeur acquise : Cn = C0 × (1 + i)^n. Valeur actuelle : C0 = Cn × (1 + i)^−n. Exemple : 4 000 000 de francs placés 3 ans à 6 % donnent 4 000 000 × 1,06³ = 4 764 064 francs. À l''inverse, 4 000 000 de francs à recevoir dans 3 ans valent aujourd''hui, à 6 %, 4 000 000 × 1,06^−3 ≈ 3 358 477 francs. »

« Taux équivalents : quel taux semestriel donne le même résultat que 10 % par an ? (1,10)^(1/2) − 1 ≈ 4,88 %. Le taux proportionnel serait 5 %. Le taux mensuel équivalent est 1,10^(1/12) − 1 ≈ 0,797 %. Retenez : proportionnel pour l''intérêt simple, équivalent pour l''intérêt composé. »

Visuel : un axe du temps avec 0, 1, 2, 3 et des flèches vers la droite (capitaliser) et vers la gauche (actualiser).

## 27:00 – 38:00 · Les annuités constantes

« Une annuité est un versement régulier. Si un commerçant verse 300 000 francs à la fin de chaque année pendant 4 ans sur un compte rémunéré à 7 %, il dispose au dernier versement de Vn = 300 000 × (1,07⁴ − 1) / 0,07 ≈ 1 331 983 francs. Si une entreprise doit recevoir 2 000 000 de francs par an pendant 3 ans, la valeur actuelle de ces flux à 9 % est V0 = 2 000 000 × (1 − 1,09^−3) / 0,09 ≈ 5 062 589 francs. Ces deux formules sont la base des emprunts. »

« Une précision qui tombe souvent en QCM : ces formules supposent des versements en fin de période. Si les versements ont lieu en début de période, chaque flux est placé une période de plus : on multiplie la valeur obtenue par (1 + i). Lisez donc attentivement l''énoncé : “à la fin de chaque année” ou “au début de chaque année” ne donne pas le même résultat. »

## 38:00 – 45:00 · Pause interactive et quiz

- Question 1 : intérêt de 1 800 000 francs placés 30 jours à 6 % ? Réponse : 1 800 000 × 0,06 × 30 / 360 = 9 000 francs.
- Question 2 : vrai ou faux, le taux mensuel équivalent à 12 % annuel vaut exactement 1 % ? Réponse : faux, il vaut environ 0,949 %.
- Question 3 : que signifie actualiser ? Réponse : ramener une somme future à sa valeur d''aujourd''hui, en la multipliant par (1 + i)^−n.
- Question 4 : 1 000 000 de francs placés 2 ans à 10 % deviennent ? Réponse : 1 210 000 francs.

## 45:00 – 58:00 · Emprunt indivis : amortissement constant

« Passons au cœur de l''examen. La société fictive Sow Équipements SARL, à Thiès, emprunte 8 000 000 de francs sur 4 ans à 10 %. Première modalité : l''amortissement constant, 8 000 000 / 4 = 2 000 000 de francs par an. Je remplis le tableau ligne par ligne, et je vous demande de le faire avec moi. »

- Année 1 : capital début 8 000 000 ; intérêt 800 000 ; amortissement 2 000 000 ; annuité 2 800 000.
- Année 2 : 6 000 000 ; 600 000 ; 2 000 000 ; 2 600 000.
- Année 3 : 4 000 000 ; 400 000 ; 2 000 000 ; 2 400 000.
- Année 4 : 2 000 000 ; 200 000 ; 2 000 000 ; 2 200 000.

« Total des intérêts : 2 000 000 de francs. Les annuités baissent de 200 000 chaque année, soit l''amortissement multiplié par le taux. »

## 58:00 – 1:12:00 · Emprunt indivis : annuités constantes

« Deuxième modalité, la plus courante dans les banques : l''annuité constante. a = C × i / [1 − (1 + i)^−n] = 8 000 000 × 0,10 / (1 − 1,10^−4) ≈ 2 523 766 francs. Méthode pour chaque ligne : intérêt = capital début × taux ; amortissement = annuité − intérêt ; capital fin = capital début − amortissement. »

- Année 1 : capital début 8 000 000 ; intérêt 800 000 ; amortissement 1 723 766 ; capital fin 6 276 234.
- Année 2 : 6 276 234 ; 627 623 ; 1 896 143 ; 4 380 091.
- Année 3 : 4 380 091 ; 438 009 ; 2 085 757 ; 2 294 334.
- Année 4 : 2 294 334 ; 229 432 ; 2 294 334 ; 0.

« Dans la dernière ligne, l''amortissement est égal au capital restant et l''intérêt absorbe l''écart d''arrondi. Contrôles : premier amortissement = a − C × i = 2 523 766 − 800 000 = 1 723 766 ; les amortissements sont multipliés par 1,10 d''une année à l''autre ; leur somme fait 8 000 000. Total des intérêts : 4 × 2 523 766 − 8 000 000 ≈ 2 095 064 francs, un peu plus qu''en amortissement constant. »

Exercice corrigé en direct : « Un ménage de Pikine emprunte 6 000 000 de francs sur 5 ans à 7,5 %. Annuité ? » Correction : a = 6 000 000 × 0,075 / (1 − 1,075^−5) ≈ 1 482 988 francs ; première ligne : intérêt 450 000, amortissement 1 032 988, capital fin 4 967 012.

## 1:12:00 – 1:20:00 · Remboursement in fine et comparaison

« Troisième modalité : in fine. On paie 800 000 francs d''intérêts chaque année et on rembourse les 8 000 000 à la fin ; dernière annuité 8 800 000 francs ; total des intérêts 3 200 000 francs. Comparaison : amortissement constant 2 000 000, annuités constantes environ 2 095 064, in fine 3 200 000. Plus on rembourse tard, plus on paie d''intérêts. Mais le choix dépend aussi de la trésorerie : un projet qui rapporte surtout les dernières années peut préférer l''in fine. »

« Faisons ensemble un petit cas pratique. Le gérant de Sow Équipements prévoit des recettes faibles la première année, car il doit former ses techniciens, puis des recettes fortes ensuite. Quelle modalité lui conseiller ? L''amortissement constant est le moins cher, mais la première annuité, 2 800 000 francs, est la plus lourde. L''annuité constante lisse la charge à 2 523 766 francs. L''in fine allège les premières années mais concentre un risque énorme à l''échéance. Une réponse argumentée : l''annuité constante, avec un compromis entre coût total et charge de la première année ; l''in fine seulement si l''entreprise peut constituer progressivement une épargne pour le remboursement final. À l''examen, ce qui compte est l''argumentation chiffrée. »

## 1:20:00 – 1:24:00 · Synthèse

« Retenez quatre formules : I = C × t × j / 360 ; Cn = C0 × (1 + i)^n ; V0 = a × [1 − (1 + i)^−n] / i ; a = C × i / [1 − (1 + i)^−n]. Et trois contrôles pour tout tableau : capital final nul, somme des amortissements égale à l''emprunt, annuité égale à intérêt plus amortissement. »

## 1:24:00 – 1:30:00 · Évaluation finale

- Question 1 : valeur acquise de 2 000 000 de francs placés 2 ans à 5 % ? Réponse : 2 000 000 × 1,05² = 2 205 000 francs.
- Question 2 : valeur actuelle à 10 % de 1 331 000 francs payables dans 3 ans ? Réponse : 1 331 000 / 1,331 = 1 000 000 de francs.
- Question 3 : emprunt de 5 000 000 de francs sur 5 ans en amortissement constant à 8 % : première annuité ? Réponse : amortissement 1 000 000 + intérêt 400 000 = 1 400 000 francs.
- Question 4 : dans un tableau à annuités constantes, quelle est la raison de la suite des amortissements ? Réponse : 1 + i.
- Question 5 : taux trimestriel proportionnel à 12 % annuel ? Réponse : 3 %.

« Pour la prochaine séance, refaites seuls le tableau à annuités constantes sans regarder le corrigé. »', 'video', 90, false, 70
from public.courses c where c.slug = 'lic-fin-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Mathématiques financières appliquées');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Statistiques descriptives pour la finance', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 1 Finance, Banque et Gestion.
- Objectifs : résumer une série financière par ses paramètres de position et de dispersion, traiter une série classée, calculer indices et taux de croissance moyens, mesurer la liaison entre deux séries.
- Matériel : tableau blanc, diaporama avec les séries de données, calculatrice en mode statistique.
- Prérequis : leçon 4 du cours ; puissances et racines.
- Toutes les données sont fictives.

## Déroulé minuté

## 00:00 – 05:00 · Pourquoi la statistique en finance

« Bonjour. Un gestionnaire de fonds à Dakar vous dit : “Mon fonds a rapporté 6 % par an en moyenne.” Est-ce suffisant pour décider d''y placer vos économies ? Non. Il faut savoir si ces 6 % sont réguliers ou s''ils cachent des années à +20 % et d''autres à −10 %. La statistique descriptive donne les outils pour résumer la rentabilité et le risque. Aujourd''hui : position, dispersion, séries classées, indices, et liaison entre deux titres. »

## 05:00 – 12:00 · Le vocabulaire indispensable

« La population, ce sont les éléments étudiés : par exemple les années de vie d''un fonds. L''individu, c''est chaque année. La variable, c''est la rentabilité annuelle : variable quantitative continue. Une variable comme le nombre de crédits accordés par jour est quantitative discrète ; le secteur d''activité d''un emprunteur est une variable qualitative. L''effectif est le nombre d''individus par modalité, la fréquence est l''effectif divisé par l''effectif total. »

## 12:00 – 25:00 · Série simple : rentabilité d''un fonds

« Le fonds fictif Fonds Teranga Croissance a eu ces rentabilités annuelles en % sur 6 ans : 8 ; 12 ; −4 ; 10 ; 6 ; 4. Calculons ensemble. »

- Moyenne : (8 + 12 − 4 + 10 + 6 + 4) / 6 = 36 / 6 = 6 %.
- Médiane : série rangée −4 ; 4 ; 6 ; 8 ; 10 ; 12 ; N pair, donc médiane = (6 + 8) / 2 = 7 %.
- Étendue : 12 − (−4) = 16 points.
- Écarts à la moyenne : 2 ; 6 ; −10 ; 4 ; 0 ; −2. Carrés : 4 ; 36 ; 100 ; 16 ; 0 ; 4 ; somme 160.
- Variance : 160 / 6 ≈ 26,67. Écart-type : √26,67 ≈ 5,16 %.

« Interprétation : la rentabilité tourne autour de 6 % mais avec une dispersion d''environ 5 points ; une année négative montre que le risque de perte existe. Si votre enseignant utilise la variance d''échantillon, vous diviserez par N − 1 = 5 : 32, écart-type ≈ 5,66 %. Écrivez toujours la formule choisie. »

« Astuce de calculatrice : en mode statistique, saisissez les six valeurs, puis lisez la moyenne, l''écart-type de population (souvent noté σx ou σn) et l''écart-type d''échantillon (noté sx ou σn−1). Mais à l''examen, montrez le détail du calcul : un résultat sans démarche rapporte peu de points, et un détail juste avec une erreur de frappe finale rapporte presque tous les points. »

## 25:00 – 37:00 · Série classée : l''épargne des membres d''une mutuelle

« Une mutuelle d''épargne fictive de Louga classe 100 membres selon leur épargne en milliers de francs : [0 ; 50[ : 20 ; [50 ; 100[ : 35 ; [100 ; 200[ : 30 ; [200 ; 400[ : 15. Première étape : les centres de classes, 25 ; 75 ; 150 ; 300. »

- Moyenne : (25 × 20 + 75 × 35 + 150 × 30 + 300 × 15) / 100 = 12 125 / 100 = 121,25 milliers de francs.
- Variance : Σni × ci² = 2 234 375 ; divisé par 100 : 22 343,75 ; moins 121,25² = 14 701,56 ; variance ≈ 7 642,19 ; écart-type ≈ 87,4 milliers de francs.
- Médiane : effectifs cumulés 20 ; 55 ; 85 ; 100. La 50e observation se trouve dans [50 ; 100[. Me = 50 + (50 − 20) / 35 × 50 ≈ 92,9 milliers de francs.
- Classe modale : densités 20 / 50 = 0,4 ; 35 / 50 = 0,7 ; 30 / 100 = 0,3 ; 15 / 200 = 0,075. Classe modale : [50 ; 100[.

« La moyenne (121) dépasse la médiane (93) : quelques gros épargnants tirent la moyenne. Dans un rapport, pour décrire le membre typique, la médiane est plus parlante. »

## 37:00 – 45:00 · Pause interactive et quiz

- Question 1 : quelle mesure de position n''est pas influencée par les valeurs extrêmes ? Réponse : la médiane.
- Question 2 : dans quelle unité s''exprime la variance d''une série en FCFA ? Réponse : en FCFA au carré ; l''écart-type est en FCFA.
- Question 3 : moyenne de 4 ; 6 ; 8 ; 10 ? Réponse : 7.
- Question 4 : médiane de 3 ; 9 ; 5 ; 7 ; 11 ? Réponse : on range 3 ; 5 ; 7 ; 9 ; 11, médiane 7.
- Question 5 : avec des classes d''amplitudes inégales, comment trouver la classe modale ? Réponse : en comparant les densités, effectif divisé par amplitude.

## 45:00 – 57:00 · Comparer le risque : le coefficient de variation

« Deux titres fictifs, A et B, ont ces rentabilités trimestrielles en % : A : 3 ; 5 ; 4 ; 6 ; 2. B : 6 ; −2 ; 10 ; 1 ; 5. Les deux ont une moyenne de 4 %. Variance de A : 2, écart-type ≈ 1,41 %. Variance de B : 17,2, écart-type ≈ 4,15 %. CV de A ≈ 0,35 ; CV de B ≈ 1,04. À rentabilité moyenne égale, A est nettement moins risqué. Un investisseur qui n''aime pas le risque choisit A. Le CV est particulièrement utile quand les moyennes diffèrent, car il ramène le risque à une unité de rentabilité. »

Exercice corrigé en direct : vérifier la variance de B. Écarts : 2 ; −6 ; 6 ; −3 ; 1 ; carrés : 4 ; 36 ; 36 ; 9 ; 1 ; somme 86 ; 86 / 5 = 17,2.

## 57:00 – 1:08:00 · Indices et taux de croissance annuel moyen

« L''encours de crédit d''une banque fictive passe de 1,80 à 2,31 milliards de francs en 3 ans. Indice base 100 : 2,31 / 1,80 × 100 ≈ 128,3, soit une hausse de 28,3 %. Le TCAM vaut (2,31 / 1,80)^(1/3) − 1 ≈ 8,67 % par an. L''erreur classique serait de diviser 28,3 % par 3 et d''annoncer 9,4 % : c''est faux, car les hausses se composent comme des intérêts composés. Autre exemple simple pour vérifier : une valeur passe de 100 à 121 en 2 ans ; TCAM = (121 / 100)^(1/2) − 1 = 10 %. En effet, 100 × 1,1 × 1,1 = 121. »

## 1:08:00 – 1:20:00 · Covariance et corrélation

« Deux séries X et Y sur 4 périodes. X : 2 ; 4 ; 6 ; 8. Y : 1 ; 3 ; 2 ; 6. Moyennes : 5 et 3. Produits des écarts : (−3)(−2) = 6 ; (−1)(0) = 0 ; (1)(−1) = −1 ; (3)(3) = 9 ; somme 14 ; covariance = 14 / 4 = 3,5. Écarts-types : σX = √5 ≈ 2,236 ; σY = √3,5 ≈ 1,871. Corrélation : r = 3,5 / (2,236 × 1,871) ≈ 0,84. »

« Lecture : r proche de 1, liaison positive forte ; proche de −1, liaison négative forte ; proche de 0, pas de liaison linéaire. En finance, combiner deux titres faiblement ou négativement corrélés réduit le risque du portefeuille : c''est l''idée de la diversification, que vous approfondirez en Licence 2 et 3. Attention : corrélation ne veut pas dire causalité. »

## 1:20:00 – 1:25:00 · Synthèse

« Retenez : moyenne, médiane, mode pour la position ; étendue, variance, écart-type, CV pour la dispersion ; centres de classes, interpolation et densités pour les séries classées ; TCAM = (Vn / V0)^(1/n) − 1 ; r = cov / (σX × σY). À l''examen, chaque calcul se termine par une phrase d''interprétation en langage financier : rentabilité, risque, régularité. Pour réviser, reprenez les séries de cette séance et refaites-les sans regarder vos notes, en chronométrant : à l''examen, une série simple doit être traitée en moins de dix minutes. »

## 1:25:00 – 1:30:00 · Évaluation finale

- Question 1 : moyenne et médiane de 2 ; 5 ; 5 ; 8 ? Réponse : moyenne 5, médiane 5.
- Question 2 : variance de 2 ; 5 ; 5 ; 8 ? Réponse : écarts −3 ; 0 ; 0 ; 3 ; somme des carrés 18 ; variance 18 / 4 = 4,5.
- Question 3 : deux fonds de moyennes 5 % et 10 %, d''écarts-types 2 % et 5 % : lequel a le CV le plus faible ? Réponse : le premier (0,4 contre 0,5).
- Question 4 : une valeur double en 4 ans : TCAM ? Réponse : 2^(1/4) − 1 ≈ 18,9 % par an.
- Question 5 : que signifie r = −0,9 ? Réponse : une forte liaison linéaire négative : quand une série monte, l''autre a tendance à baisser.

« Merci. Entraînez-vous avec le mode statistique de votre calculatrice : il vous fera gagner un temps précieux à l''examen. »', 'video', 90, false, 80
from public.courses c where c.slug = 'lic-fin-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Statistiques descriptives pour la finance');

-- Cours : Finance Licence 2 : réussir les examens de deuxième année
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'lic-fin-l2', (select id from public.levels where name = 'Licence 2'), null, 'Finance', 'Finance Licence 2 : réussir les examens de deuxième année', 'Ce cours prépare aux examens de deuxième année de Licence en finance : analyse financière selon le SYSCOHADA révisé (soldes intermédiaires de gestion, CAF, bilan fonctionnel, FR, BFR, trésorerie nette, ratios), gestion de trésorerie (plan de trésorerie, financements à court terme) et marchés financiers (actions, obligations, rendement, évaluation simple). Il s''adresse aux étudiants de Licence 2 du Sénégal et de l''espace UEMOA. Prérequis : comptabilité générale et mathématiques financières de Licence 1.', true, 352
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Licence 2 en Finance', '## Objectifs de la leçon

- Situer la Licence 2 dans le parcours LMD et comprendre ce qui change par rapport à la première année.
- Connaître les trois matières de finance de l''année et les attentes des correcteurs.
- Maîtriser les types d''épreuves de Licence 2, en particulier le cas de diagnostic financier.
- Organiser six semaines de révision efficaces.

## 1. La Licence 2 dans le système LMD

La Licence 2 correspond aux semestres 3 et 4 du cycle de Licence. Comme en première année, chaque semestre est découpé en unités d''enseignement (UE) qui donnent des crédits, et chaque UE regroupe une ou plusieurs matières évaluées par un contrôle continu et un examen terminal, avec une session de rattrapage. Les crédits, coefficients, seuils de validation, règles de compensation et conditions de passage en Licence 3 sont propres à chaque établissement : consultez le règlement des études et la maquette de votre filière auprès de la scolarité.

Ce qui change en Licence 2 : les matières deviennent plus intégrées. Un même sujet peut demander de lire des états financiers, de calculer un besoin de financement, puis de proposer une solution de financement à court terme ou un placement. L''examinateur évalue désormais votre capacité à interpréter et à recommander, pas seulement à calculer.

## 2. Les matières de finance de la Licence 2

- Analyse financière : lecture du compte de résultat et du bilan selon le SYSCOHADA révisé, soldes intermédiaires de gestion (marge commerciale, valeur ajoutée, excédent brut d''exploitation, résultat d''exploitation, résultat des activités ordinaires, résultat hors activités ordinaires, résultat net), capacité d''autofinancement, bilan fonctionnel, fonds de roulement, besoin en fonds de roulement, trésorerie nette, ratios.
- Gestion de trésorerie : plan (ou budget) de trésorerie, encaissements et décaissements, financements à court terme (découvert, escompte, affacturage, crédit de campagne, facilités de caisse), placements de trésorerie excédentaire, calcul du coût réel d''un financement.
- Marchés financiers 1 : fonctionnement du marché financier régional (BRVM, SGI, Dépositaire central / Banque de règlement), actions (rendement, dividende, PER, modèle de Gordon-Shapiro), obligations (prix, coupon, rendement actuariel, relation inverse entre taux et prix), rendement d''un portefeuille simple.

Ces matières s''appuient directement sur la comptabilité générale et les mathématiques financières de Licence 1 : si vos tableaux d''amortissement ou vos calculs d''actualisation sont fragiles, révisez-les en priorité.

## 3. Les types d''épreuves

- Le cas de diagnostic financier : on vous donne un compte de résultat et un bilan d''une entreprise fictive. On attend les SIG, la CAF, le bilan fonctionnel, deux ou trois ratios et un commentaire structuré (forces, faiblesses, recommandations). C''est l''épreuve reine de la Licence 2.
- Le plan de trésorerie : construire un budget mensuel, repérer les mois déficitaires, choisir le financement le moins coûteux. La présentation en tableau (ici décrite ligne par ligne) doit être claire et vérifiable.
- L''exercice d''évaluation : prix d''une obligation, valeur d''une action par le modèle de Gordon-Shapiro, rendement d''un placement.
- Le QCM ou les questions de cours : définitions (BFR, CAF, coupon couru, SGI), relations (si les taux montent, le prix des obligations baisse).
- Le commentaire ou la courte dissertation : « L''entreprise rentable peut-elle faire faillite ? » (oui, par manque de trésorerie : c''est l''occasion de mobiliser FR, BFR et TN).

## 4. Les erreurs fréquentes

- Confondre résultat et trésorerie : une entreprise bénéficiaire peut avoir une trésorerie négative si son BFR explose.
- Oublier les retraitements du bilan fonctionnel (amortissements cumulés en ressources stables, valeurs brutes en emplois stables).
- Intégrer les produits de cession d''immobilisations dans la CAF : c''est faux, ils en sont exclus.
- Inscrire les ventes du mois dans les encaissements du mois alors que les clients paient à 30 ou 60 jours.
- Calculer le coût d''un escompte sur la valeur nominale de l''effet au lieu du montant net réellement reçu.
- Oublier qu''une hausse des taux fait baisser le prix des obligations existantes.
- Utiliser des taux réels de mémoire : dans ce cours, les taux d''intérêt et d''impôt des exemples sont fictifs pour l''exemple. Pour un dossier réel, consultez les textes et publications officiels en vigueur.

## 5. Méthode de révision

- Une fiche par matière avec les schémas : bilan fonctionnel en quatre masses, cascade des SIG, plan de trésorerie type.
- Un formulaire unique (CAF, FR, BFR, TN, ratios, Gordon-Shapiro, prix d''une obligation, coût de l''escompte).
- Une méthode de commentaire : constat chiffré, explication, conséquence, recommandation.
- Des sujets complets en temps limité, car la gestion du temps est le premier facteur d''échec dans les cas de diagnostic.

## 6. Plan de révision sur six semaines

- Semaine 1 : rappel du compte de résultat et du bilan SYSCOHADA ; cascade des SIG ; CAF par les deux méthodes.
- Semaine 2 : bilan fonctionnel, FR, BFR, TN ; ratios de structure, d''activité et de rentabilité ; rédaction de commentaires.
- Semaine 3 : plan de trésorerie (budgets des encaissements et des décaissements) ; financements à court terme et calcul de leur coût.
- Semaine 4 : marchés financiers : organisation régionale, actions (rendement, PER, Gordon-Shapiro).
- Semaine 5 : obligations (prix, rendement actuariel, coupon couru) ; reprise des points faibles.
- Semaine 6 : deux sujets d''examen blancs (voir la leçon 5) en conditions réelles, correction, relecture du formulaire.

## Points clés

- En Licence 2, on attend des calculs justes et une interprétation argumentée.
- Le diagnostic financier (SIG, CAF, FR, BFR, TN, ratios) est le cœur de l''année.
- Résultat et trésorerie sont deux choses différentes.

## Exercices pratiques

- Exercice 1 : citez dans l''ordre les soldes intermédiaires de gestion du SYSCOHADA révisé, de la marge commerciale au résultat net.
- Exercice 2 : vrai ou faux : « Une entreprise bénéficiaire ne peut pas avoir de problème de trésorerie. » Justifiez.
- Exercice 3 : proposez un plan de commentaire pour un diagnostic financier.
- Exercice 4 (cas pratique) : Ousmane, étudiant à Dakar, doit aussi préparer un stage pendant ses six semaines de révision. Il dispose de deux heures par soir en semaine et du samedi. Proposez une répartition.

## Corrigé

- Exercice 1 : marge commerciale, valeur ajoutée, excédent brut d''exploitation, résultat d''exploitation, résultat financier, résultat des activités ordinaires, résultat hors activités ordinaires, résultat net. Le chiffre d''affaires figure aussi dans le tableau des SIG.
- Exercice 2 : faux. Le résultat mesure l''enrichissement, la trésorerie mesure l''argent disponible. Si les clients paient tard, si les stocks gonflent ou si l''entreprise investit sans financement à long terme, la trésorerie peut devenir négative malgré un bénéfice.
- Exercice 3 : 1) activité et rentabilité (évolution du chiffre d''affaires, VA, EBE, résultat net, CAF) ; 2) équilibre financier (FR, BFR, TN) ; 3) structure et solvabilité (autonomie, endettement, capacité de remboursement) ; 4) conclusion et recommandations.
- Exercice 4 : soirs de semaine (2 heures) : fiches et exercices courts d''une matière par soir, en tournant sur les trois matières ; samedi : un cas complet en temps limité. Semaines 1 et 2 : analyse financière ; semaines 3 et 4 : trésorerie puis marchés financiers ; semaines 5 et 6 : sujets blancs. On garde au moins un sujet complet par semaine en fin de période.', 'texte', 60, true, 10
from public.courses c where c.slug = 'lic-fin-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Licence 2 en Finance');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Analyse financière : l''essentiel pour l''examen', '## Objectifs de la leçon

- Calculer les soldes intermédiaires de gestion (SIG) du SYSCOHADA révisé et la capacité d''autofinancement (CAF).
- Construire un bilan fonctionnel et calculer FR, BFR et trésorerie nette.
- Calculer et commenter les principaux ratios.

Cas fil rouge : Kër Textiles SA, entreprise fictive de Thiès (montants en millions de FCFA). Le taux d''impôt sur le résultat de 30 % est fictif pour l''exemple.

## Fiche 1 : la cascade des SIG

Données de l''exercice : ventes de marchandises 400 ; achats de marchandises 260 ; variation de stocks de marchandises 10 (déstockage) ; ventes de produits fabriqués 900 ; travaux et services vendus 50 ; produits accessoires 10 ; production stockée 20 ; subventions d''exploitation 10 ; autres produits 5 ; achats de matières premières 380 ; variation de stocks de matières −15 (stockage) ; autres achats 40 ; transports 30 ; services extérieurs 120 ; impôts et taxes 25 ; autres charges 10 ; charges de personnel 300 ; dotations aux amortissements, provisions et dépréciations 90 ; reprises 5 ; revenus financiers 8 ; frais financiers 40 ; produits des cessions d''immobilisations 30 ; valeur comptable des immobilisations cédées 18.

- Marge commerciale = ventes de marchandises − (achats de marchandises ± variation de stocks) = 400 − (260 + 10) = 130.
- Chiffre d''affaires = 400 + 900 + 50 + 10 = 1 360.
- Valeur ajoutée = marge commerciale + ventes de produits fabriqués + travaux et services + produits accessoires + production stockée + subventions d''exploitation + autres produits − (achats de matières ± variation + autres achats + transports + services extérieurs + impôts et taxes + autres charges) = 1 125 − 590 = 535. Dans le SYSCOHADA, les subventions d''exploitation entrent dans la valeur ajoutée et les impôts et taxes en sont déduits.
- Excédent brut d''exploitation (EBE) = VA − charges de personnel = 535 − 300 = 235.
- Résultat d''exploitation = EBE + reprises − dotations = 235 + 5 − 90 = 150.
- Résultat financier = 8 − 40 = −32.
- Résultat des activités ordinaires (RAO) = 150 − 32 = 118.
- Résultat hors activités ordinaires (RHAO) = 30 − 18 = 12.
- Impôt sur le résultat (30 %, fictif) = 0,30 × (118 + 12) = 39.
- Résultat net = 118 + 12 − 39 = 91.

L''EBE mesure la performance économique avant amortissements et financement.

## Fiche 2 : la capacité d''autofinancement

La CAF est le surplus monétaire potentiel dégagé par l''activité, qui finance investissements, remboursements et dividendes.

Méthode additive : CAF = résultat net + dotations − reprises − produits de cession d''immobilisations + valeur comptable des cessions = 91 + 90 − 5 − 30 + 18 = 164.

Méthode soustractive : CAF = EBE + produits encaissables − charges décaissables (hors cessions) = 235 + 8 − 40 − 39 = 164.

Les deux méthodes donnent le même résultat : c''est votre contrôle. Si l''entreprise distribue 40 de dividendes, l''autofinancement vaut 164 − 40 = 124.

## Fiche 3 : le bilan fonctionnel

Schéma décrit en texte : en haut, emplois stables (immobilisations brutes) face aux ressources stables (capitaux propres, amortissements et dépréciations cumulés, dettes financières) ; au milieu, actif et passif circulants d''exploitation et hors activités ordinaires (HAO) ; en bas, trésorerie-actif et trésorerie-passif.

Bilan de Kër Textiles : immobilisations brutes 1 200 ; stocks 220 ; clients 300 ; autres créances d''exploitation 40 ; créances HAO 10 ; trésorerie-actif 35. Capitaux propres 660 ; amortissements et dépréciations cumulés 450 ; dettes financières 350 ; fournisseurs 180 ; dettes fiscales et sociales 90 ; dettes HAO 15 ; trésorerie-passif 60. Total des emplois = total des ressources = 1 805.

- Ressources stables = 660 + 450 + 350 = 1 460.
- Fonds de roulement net global (FR) = 1 460 − 1 200 = 260.
- BFR d''exploitation = (220 + 300 + 40) − (180 + 90) = 290.
- BFR hors activités ordinaires = 10 − 15 = −5.
- BFR global = 285.
- Trésorerie nette = FR − BFR = 260 − 285 = −25, et vérification : 35 − 60 = −25.

Le FR, positif, ne couvre pas le BFR : l''entreprise dépend des concours bancaires courants. Le BFR d''exploitation représente 290 / 1 360 × 360 ≈ 77 jours de chiffre d''affaires.

## Fiche 4 : les ratios essentiels

- Délai clients ≈ clients / chiffre d''affaires × 360 = 300 / 1 360 × 360 ≈ 79 jours (en pratique, on rapporte les créances TTC au chiffre d''affaires TTC ; on raisonne ici hors taxes pour simplifier).
- Délai fournisseurs ≈ fournisseurs / achats × 360 = 180 / (260 + 380 + 40) × 360 ≈ 95 jours.
- Autonomie financière = capitaux propres / dettes financières = 660 / 350 ≈ 1,89.
- Capacité de remboursement = dettes financières / CAF = 350 / 164 ≈ 2,1 années de CAF.
- Rentabilité financière = résultat net / capitaux propres = 91 / 660 ≈ 13,8 %.
- Taux de marge brute d''exploitation = EBE / CA = 235 / 1 360 ≈ 17,3 %.

Commentaire type : Kër Textiles est rentable (marge d''EBE de 17 %, rentabilité financière proche de 14 %) et peu endettée. Sa faiblesse est son cycle d''exploitation : 79 jours de crédit clients gonflent le BFR et rendent la trésorerie négative. Recommandations : réduire les délais clients, renforcer le FR (capital ou emprunt à moyen terme), mieux gérer les stocks.

## Points clés

- Cascade SYSCOHADA : MC, VA, EBE, RE, RF, RAO, RHAO, RN.
- CAF : additive et soustractive doivent concorder ; les cessions en sont exclues.
- TN = FR − BFR = trésorerie-actif − trésorerie-passif.
- Un ratio se compare et se commente.

## Exercices pratiques

- Exercice 1 : une entreprise fictive de Dakar présente : ventes de marchandises 200 ; achats de marchandises 150 ; variation de stocks de marchandises −5 ; production vendue 300 ; achats de matières 100 ; services extérieurs 60 ; impôts et taxes 10 ; charges de personnel 90 ; dotations 30 ; frais financiers 15 ; impôt 30 % (fictif). Calculez la cascade des SIG jusqu''au résultat net.
- Exercice 2 : calculez la CAF de l''exercice 1 par les deux méthodes.
- Exercice 3 : ressources stables 800 ; emplois stables 650 ; stocks 120 ; clients 150 ; fournisseurs 90 ; dettes fiscales et sociales 30 ; trésorerie-actif 20. Calculez FR, BFR, TN et la trésorerie-passif.
- Exercice 4 : clients 150 et chiffre d''affaires 900 : calculez le délai clients et commentez si le secteur pratique 45 jours.
- Exercice 5 (cas pratique) : une entreprise a un résultat net en hausse, mais une trésorerie nette passée de +40 à −60. Le FR est stable. Expliquez et proposez trois actions.

## Corrigé

- Exercice 1 : MC = 200 − (150 − 5) = 55 ; VA = 55 + 300 − (100 + 60 + 10) = 185 ; EBE = 185 − 90 = 95 ; RE = 95 − 30 = 65 ; RF = −15 ; RAO = 50 ; RHAO = 0 ; impôt = 15 ; résultat net = 35.
- Exercice 2 : additive : 35 + 30 = 65. Soustractive : 95 − 15 − 15 = 65.
- Exercice 3 : FR = 800 − 650 = 150 ; BFR = 120 + 150 − 90 − 30 = 150 ; TN = 0. L''équilibre du bilan (940 de chaque côté) donne une trésorerie-passif de 20 : TN = 20 − 20 = 0.
- Exercice 4 : 150 / 900 × 360 = 60 jours, soit 15 jours de plus que le secteur : les clients paient trop tard, le BFR est alourdi ; il faut revoir les conditions de crédit et le recouvrement.
- Exercice 5 : TN = FR − BFR ; le FR étant stable, c''est le BFR qui a augmenté de 100 (hausse des stocks, des créances clients ou baisse du crédit fournisseurs, souvent liée à la croissance). Actions : réduire les délais clients, ajuster les stocks, négocier de meilleurs délais fournisseurs, et renforcer le FR par des capitaux permanents.', 'texte', 60, false, 20
from public.courses c where c.slug = 'lic-fin-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Analyse financière : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Gestion de trésorerie : l''essentiel pour l''examen', '## Objectifs de la leçon

- Construire un plan de trésorerie mensuel à partir des budgets d''encaissements et de décaissements.
- Connaître les financements à court terme : découvert, facilité de caisse, escompte, affacturage, crédit de campagne.
- Calculer le coût réel d''un financement et choisir le moins cher.

Tous les taux et commissions de cette leçon sont fictifs pour l''exemple ; la TVA est ignorée pour simplifier.

## Fiche 1 : le rôle du trésorier

Le trésorier veille à ce que l''entreprise puisse payer ses dettes à l''échéance (solvabilité à court terme) au moindre coût. Il prévoit les flux, négocie avec les banques, finance les déficits et place les excédents. L''idéal est une trésorerie proche de zéro : un excédent durable est de l''argent qui dort, un déficit durable coûte des agios et fragilise l''entreprise.

## Fiche 2 : le plan de trésorerie

Le plan de trésorerie (ou budget de trésorerie) récapitule, mois par mois : la trésorerie de début, les encaissements, les décaissements, le solde du mois et la trésorerie de fin.

Cas : Casamance Fruits SARL, entreprise fictive de Ziguinchor qui transforme des mangues. Trésorerie au 1er janvier : 2 millions FCFA. Ventes (millions) : décembre 10, janvier 8, février 12, mars 15. Les clients paient 40 % au comptant et 60 % le mois suivant. Les achats représentent 50 % des ventes du mois et sont payés le mois suivant. Salaires : 2,5 par mois ; loyer et charges : 0,8 par mois ; échéance d''emprunt : 1,5 en février ; achat d''un camion frigorifique : 9 en février.

Budget des encaissements :

- Janvier : 40 % × 8 + 60 % × 10 = 3,2 + 6 = 9,2.
- Février : 40 % × 12 + 60 % × 8 = 4,8 + 4,8 = 9,6.
- Mars : 40 % × 15 + 60 % × 12 = 6 + 7,2 = 13,2.

Budget des décaissements :

- Janvier : achats de décembre 5 + salaires 2,5 + loyer 0,8 = 8,3.
- Février : achats de janvier 4 + 2,5 + 0,8 + emprunt 1,5 + camion 9 = 17,8.
- Mars : achats de février 6 + 2,5 + 0,8 = 9,3.

Plan de trésorerie :

- Janvier : début 2 ; solde du mois +0,9 ; fin 2,9.
- Février : début 2,9 ; solde −8,2 ; fin −5,3.
- Mars : début −5,3 ; solde +3,9 ; fin −1,4.

Lecture : le déficit de février vient de l''achat du camion, un investissement durable. Règle de l''équilibre financier : un investissement se finance par des ressources stables, pas par du découvert. Si Casamance Fruits obtient un crédit d''équipement de 7 millions versé en février, la trésorerie de fin de février devient +1,7 et celle de mars +5,6 (avant la première échéance du nouveau crédit).

## Fiche 3 : les financements à court terme

- Facilité de caisse : découvert de quelques jours pour passer un pic de dépenses (paie, échéance fiscale).
- Découvert autorisé : solde débiteur plus durable, dans la limite d''un plafond négocié ; les intérêts sont calculés sur les soldes débiteurs réels.
- Escompte commercial : la banque achète un effet de commerce (lettre de change, billet à ordre) avant son échéance et verse le montant net d''agios.
- Affacturage : un établissement spécialisé (le factor) achète les créances clients, en assure le recouvrement et en avance une partie, contre une commission et des intérêts.
- Crédit de campagne : crédit saisonnier finançant une campagne agricole ou de commercialisation (arachide, coton, noix de cajou), remboursé avec la vente de la récolte.
- Avances sur marchandises ou sur marchés publics : crédits adossés à un stock ou à un contrat.

## Fiche 4 : calculer le coût d''un financement

Escompte. Casamance Fruits remet à l''escompte un effet de 5 000 000 FCFA à 60 jours. Taux d''escompte : 10 % ; commission fixe : 5 000 FCFA (fictifs).

- Escompte = 5 000 000 × 0,10 × 60 / 360 ≈ 83 333 FCFA.
- Agios = 83 333 + 5 000 = 88 333 FCFA.
- Montant net reçu = 5 000 000 − 88 333 = 4 911 667 FCFA.
- Taux réel = agios / montant net × 360 / durée = 88 333 / 4 911 667 × 360 / 60 ≈ 10,79 %.

Le taux réel dépasse le taux affiché : les intérêts sont prélevés d''avance et les commissions s''ajoutent. Certaines banques ajoutent aussi des jours de banque, ce qui augmente encore le coût.

Découvert. Un découvert de 5 300 000 FCFA pendant 28 jours à 12 % coûte 5 300 000 × 0,12 × 28 / 360 ≈ 49 467 FCFA d''intérêts, auxquels peuvent s''ajouter des commissions.

Affacturage. Sur 10 000 000 FCFA de créances à 45 jours, avec une commission d''affacturage de 1,5 %, un financement de 90 % des créances à 11 % et une retenue de garantie de 10 % : commission = 150 000 FCFA ; intérêts = 9 000 000 × 0,11 × 45 / 360 = 123 750 FCFA. L''affacturage est plus cher, mais il transfère le recouvrement et souvent le risque d''impayé.

## Fiche 5 : placer les excédents

Un excédent ponctuel peut être placé sur un compte à terme, en bons ou obligations du Trésor émis sur le marché régional des titres publics, ou en parts d''organismes de placement collectif. Critères : sécurité, liquidité, rendement, dans cet ordre pour un trésorier prudent.

## Points clés

- Plan de trésorerie : encaissements selon les délais réels de paiement, pas selon les dates de facturation.
- Investissement : ressources stables ; décalages courts : crédits de trésorerie.
- Taux réel de l''escompte = agios / montant net × 360 / jours.

## Exercices pratiques

- Exercice 1 : ventes de mars 6 millions, d''avril 9 millions ; les clients paient 30 % au comptant et 70 % à 30 jours. Calculez les encaissements d''avril.
- Exercice 2 : un effet de 3 000 000 FCFA à 45 jours est escompté à 9 % avec une commission de 4 000 FCFA. Calculez les agios, le net reçu et le taux réel.
- Exercice 3 : comparez avec un découvert de 3 000 000 FCFA pendant 45 jours à 11 % sans commission.
- Exercice 4 : expliquez pourquoi un crédit de campagne est adapté à un collecteur d''arachide de Kaffrine.
- Exercice 5 (cas pratique) : une boutique de Touba prévoit −4 millions en juin (paiement d''un stock pour la Tabaski) et +6 millions en juillet. Elle hésite entre un découvert et un emprunt à 3 ans. Conseillez-la.
- Exercice 6 : une entreprise affiche une trésorerie excédentaire de 15 millions pendant 6 mois. Proposez deux placements et les critères de choix.

## Corrigé

- Exercice 1 : 30 % × 9 + 70 % × 6 = 2,7 + 4,2 = 6,9 millions.
- Exercice 2 : escompte = 3 000 000 × 0,09 × 45 / 360 = 33 750 ; agios = 37 750 ; net = 2 962 250 ; taux réel = 37 750 / 2 962 250 × 360 / 45 ≈ 10,19 %.
- Exercice 3 : découvert = 3 000 000 × 0,11 × 45 / 360 = 41 250 FCFA ; l''escompte est moins cher (37 750 FCFA, taux réel ≈ 10,19 % contre 11 %). On compare toujours les coûts réels, commissions comprises.
- Exercice 4 : le besoin est saisonnier (achat de la récolte), d''un montant élevé et temporaire ; il se rembourse avec la vente de la production. Un crédit de campagne correspond exactement à ce cycle ; un emprunt à long terme serait inadapté.
- Exercice 5 : le besoin est court (un mois) et se résorbe en juillet : un découvert autorisé ou une facilité de caisse négociés à l''avance conviennent. Un emprunt à 3 ans immobiliserait des ressources et ferait payer des intérêts inutiles.
- Exercice 6 : compte à terme de 6 mois ; bons du Trésor ou parts d''organismes de placement collectif monétaires. Critères : sécurité du capital, disponibilité à l''échéance voulue, rendement net de frais.', 'texte', 60, false, 30
from public.courses c where c.slug = 'lic-fin-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Gestion de trésorerie : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Marchés financiers 1 : l''essentiel pour l''examen', '## Objectifs de la leçon

- Décrire le marché financier régional et le parcours d''un ordre.
- Calculer le rendement d''une action, son PER et sa valeur par le modèle de Gordon-Shapiro.
- Calculer le prix d''une obligation, son rendement actuariel et le coupon couru.
- Calculer le rendement d''un portefeuille simple.

Toutes les sociétés citées sont fictives et tous les taux sont fictifs pour l''exemple.

## Fiche 1 : organisation du marché

Le marché financier régional de l''UEMOA comprend :

- Le marché primaire, où les titres sont émis : une entreprise lève des capitaux (augmentation de capital, emprunt obligataire), un État émet des obligations. L''argent va à l''émetteur.
- Le marché secondaire, où les titres déjà émis s''échangent entre investisseurs : c''est la bourse, la BRVM, basée à Abidjan avec des antennes nationales. L''argent passe d''un investisseur à un autre ; le marché secondaire donne de la liquidité aux titres.

Parcours d''un ordre : l''investisseur ouvre un compte-titres auprès d''une SGI (société de gestion et d''intermédiation) et passe un ordre d''achat ou de vente (au marché, ou à cours limité en fixant un prix maximum d''achat ou minimum de vente). La SGI transmet l''ordre à la BRVM, où il est confronté aux ordres inverses. Le Dépositaire central / Banque de règlement assure la livraison des titres et le règlement des capitaux. Le régulateur régional (AMF-UMOA) autorise les émissions et protège les épargnants.

## Fiche 2 : les actions

Une action est un titre de propriété du capital d''une société anonyme : droit au dividende (non garanti), droit de vote, droit sur l''actif en liquidation.

Rentabilité sur une période : R = (dividende + cours final − cours initial) / cours initial.

Exemple : Dakar Brasserie Fictive SA est achetée à 5 000 FCFA ; elle verse 300 FCFA de dividende et cote 5 400 FCFA un an après. R = (300 + 5 400 − 5 000) / 5 000 = 700 / 5 000 = 14 %, dont 6 % de rendement du dividende et 8 % de plus-value.

PER = cours / bénéfice par action. Avec un BPA de 500 FCFA : PER = 5 000 / 500 = 10. Un PER élevé traduit des anticipations de croissance, ou un titre cher.

Modèle de Gordon-Shapiro : si le dividende croît à un taux constant g et que l''investisseur exige un taux de rentabilité k (avec k > g), la valeur de l''action vaut P0 = D1 / (k − g), où D1 est le dividende attendu dans un an.

Exemple : D1 = 300 FCFA, k = 12 %, g = 5 % : P0 = 300 / 0,07 ≈ 4 286 FCFA. Si l''action cote 5 000 FCFA, elle paraît surévaluée pour cet investisseur. On peut aussi retrouver le taux de rentabilité implicite : k = D1 / P0 + g = 300 / 5 000 + 5 % = 11 %.

## Fiche 3 : les obligations

Une obligation est un titre de créance : l''émetteur emprunte et s''engage à payer des coupons (intérêts) et à rembourser le nominal. Vocabulaire : valeur nominale, taux facial (ou taux nominal), coupon = nominal × taux facial, date d''échéance, prix d''émission, remboursement in fine ou par amortissements.

Prix d''une obligation : c''est la valeur actuelle, au taux du marché, des flux futurs. P = C × [1 − (1 + r)^−n] / r + N × (1 + r)^−n.

Exemple : obligation fictive de l''État, nominal 10 000 FCFA, taux facial 6,5 %, coupon 650 FCFA, 5 ans, remboursement in fine au pair.

- Si le taux du marché est 6,5 % : P = 10 000 FCFA (au pair).
- Si le taux du marché monte à 7 % : P ≈ 9 795 FCFA.
- Si le taux du marché baisse à 6 % : P ≈ 10 211 FCFA.

Règle essentielle : le prix d''une obligation varie en sens inverse des taux d''intérêt. Quand les taux montent, les anciennes obligations, moins bien rémunérées que les nouvelles, perdent de la valeur : c''est le risque de taux.

Rendement actuariel : c''est le taux r qui égalise le prix payé et la valeur actuelle des flux. Une obligation de nominal 10 000, coupon 600, échéance 4 ans, achetée 9 800 FCFA, a un rendement actuariel d''environ 6,58 % (supérieur au taux facial de 6 % car elle est achetée en dessous du pair). On le trouve par essais successifs.

Coupon couru : entre deux dates de coupon, l''acheteur paie au vendeur la part du coupon déjà courue. Si 73 jours se sont écoulés depuis le dernier coupon annuel de 650 FCFA : coupon couru = 650 × 73 / 365 = 130 FCFA. Prix payé = prix coté (pied de coupon) + coupon couru.

## Fiche 4 : rendement d''un portefeuille

La rentabilité espérée d''un portefeuille est la moyenne pondérée des rentabilités des titres. Un portefeuille investi à 60 % dans une action à 10 % et à 40 % dans une obligation à 6 % a une rentabilité espérée de 0,6 × 10 % + 0,4 × 6 % = 8,4 %. Le risque dépend aussi de la corrélation entre les titres (diversification).

## Points clés

- Primaire : émission ; secondaire : échange ; ordres via les SGI.
- R = (D + P1 − P0) / P0 ; PER = cours / BPA ; Gordon-Shapiro : P0 = D1 / (k − g).
- Prix d''une obligation = valeur actuelle des coupons et du remboursement ; prix et taux varient en sens inverse.

## Exercices pratiques

- Exercice 1 : distinguez marché primaire et marché secondaire, et donnez le rôle d''une SGI.
- Exercice 2 : une action achetée 4 500 FCFA verse 200 FCFA de dividende et cote 4 600 FCFA un an plus tard. Calculez sa rentabilité.
- Exercice 3 : une action cote 6 000 FCFA, son BPA est de 400 FCFA. Calculez le PER.
- Exercice 4 : D1 = 240 FCFA, k = 11 %, g = 3 %. Calculez la valeur de l''action selon Gordon-Shapiro.
- Exercice 5 : une obligation de nominal 10 000 FCFA, taux facial 5 %, 3 ans, in fine. Calculez son prix si le taux du marché est 6 %, puis 4 %. Commentez.
- Exercice 6 (cas pratique) : Mme Ba, enseignante à Kolda, dispose de 2 000 000 FCFA à placer pour 3 ans. Elle hésite entre des actions d''une société fictive cotée (rentabilité espérée 12 %, forte volatilité) et une obligation d''État fictive (rendement actuariel 6,5 %). Conseillez-la.
- Exercice 7 : une obligation de nominal 10 000 FCFA, coupon 700 FCFA, 3 ans, cote 10 300 FCFA. Son rendement actuariel est-il supérieur ou inférieur à 7 % ? Vérifiez qu''il vaut environ 5,88 %.

## Corrigé

- Exercice 1 : primaire : émission de titres nouveaux, les fonds vont à l''émetteur ; secondaire : échange de titres existants entre investisseurs. La SGI tient les comptes-titres, reçoit et transmet les ordres, conseille les clients.
- Exercice 2 : R = (200 + 4 600 − 4 500) / 4 500 = 300 / 4 500 ≈ 6,67 %.
- Exercice 3 : PER = 6 000 / 400 = 15.
- Exercice 4 : P0 = 240 / (0,11 − 0,03) = 3 000 FCFA.
- Exercice 5 : à 6 % : P = 500 / 1,06 + 500 / 1,06² + 10 500 / 1,06³ ≈ 9 733 FCFA (sous le pair) ; à 4 % : P ≈ 10 278 FCFA (au-dessus du pair). La hausse des taux fait baisser le prix, la baisse le fait monter.
- Exercice 6 : horizon court (3 ans) et profil probablement prudent : l''obligation d''État offre un revenu régulier et un risque faible si elle est conservée jusqu''à l''échéance. Les actions offrent une rentabilité espérée plus forte mais peuvent perdre de la valeur. Proposition : majorité en obligation (par exemple 70 %), le reste en actions pour profiter du potentiel, à ajuster selon sa tolérance au risque et ses besoins de liquidité.
- Exercice 7 : elle est achetée au-dessus du pair, donc son rendement actuariel est inférieur au taux facial de 7 %. Vérification : à 5,88 %, 700 / 1,0588 + 700 / 1,0588² + 10 700 / 1,0588³ ≈ 10 300 FCFA.', 'texte', 60, false, 40
from public.courses c where c.slug = 'lic-fin-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Marchés financiers 1 : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Licence 2 Finance (entraînement corrigé)', '## Présentation

Sujet d''entraînement conçu pour ce cours, et non sujet officiel. Durée conseillée : 3 heures. Barème indicatif, non officiel : dossier 1 sur 9 points, dossier 2 sur 6 points, dossier 3 sur 5 points. Montants en millions de FCFA sauf indication contraire. Tous les taux sont fictifs pour l''exemple ; la TVA est ignorée.

## Dossier 1 : analyse financière de Sine Agro SA (9 points)

Sine Agro SA, entreprise fictive de Fatick, transforme des céréales locales. Compte de résultat : ventes de produits fabriqués 800 ; production stockée 10 ; achats de matières premières 300 ; variation de stocks de matières 10 (déstockage) ; services extérieurs 90 ; impôts et taxes 20 ; charges de personnel 180 ; dotations aux amortissements 60 ; revenus financiers 5 ; frais financiers 25 ; aucune opération HAO ; impôt sur le résultat 30 % (fictif).

Bilan (valeurs brutes pour l''actif immobilisé) : immobilisations 900 ; stocks 150 ; clients 200 ; trésorerie-actif 10 ; capitaux propres 500 ; amortissements cumulés 300 ; dettes financières 250 ; fournisseurs 110 ; dettes fiscales et sociales 40 ; trésorerie-passif à déterminer.

- 1.1 (3 points) : calculez la valeur ajoutée, l''EBE, le résultat d''exploitation, le RAO et le résultat net.
- 1.2 (2 points) : calculez la CAF par les deux méthodes.
- 1.3 (2 points) : déterminez la trésorerie-passif, puis FR, BFR et TN.
- 1.4 (2 points) : calculez le délai clients, l''autonomie financière et la capacité de remboursement, puis rédigez un commentaire de cinq lignes.

## Dossier 2 : gestion de trésorerie (6 points)

Trésorerie au 1er avril : 1,0. Ventes : mars 6 ; avril 7 ; mai 9 ; juin 8 ; les clients paient 50 % au comptant et 50 % à 30 jours. Achats payés au comptant : avril 3 ; mai 4 ; juin 4. Salaires : 2 par mois. Impôt à payer en mai : 2,5. Achat d''une machine en mai : 3.

- 2.1 (3 points) : établissez le plan de trésorerie d''avril à juin.
- 2.2 (3 points) : pour couvrir le déficit, l''entreprise peut escompter un effet de 2 000 000 FCFA à 30 jours au taux de 9,5 % avec une commission de 3 000 FCFA. Calculez les agios, le net et le taux réel. Ce financement est-il adapté à l''achat de la machine ?

## Dossier 3 : marchés financiers (5 points)

- 3.1 (2 points) : une obligation de nominal 10 000 FCFA, taux facial 6 %, remboursable in fine dans 4 ans. Calculez son prix si le taux du marché est de 7 %. Est-elle au-dessus ou en dessous du pair ? Pourquoi ?
- 3.2 (2 points) : une action doit verser un dividende de 200 FCFA dans un an ; ce dividende croîtra de 4 % par an ; le taux exigé est 10 %. Calculez sa valeur selon Gordon-Shapiro.
- 3.3 (1 point) : expliquez le rôle d''une SGI.

## Corrigé du dossier 1

1.1. Production de l''exercice et produits : 800 + 10 = 810. Consommations : 300 + 10 + 90 + 20 = 420. VA = 390. EBE = 390 − 180 = 210. Résultat d''exploitation = 210 − 60 = 150. Résultat financier = 5 − 25 = −20. RAO = 130. RHAO = 0. Impôt = 0,30 × 130 = 39. Résultat net = 91.

1.2. Additive : 91 + 60 = 151. Soustractive : 210 + 5 − 25 − 39 = 151.

1.3. Total des emplois = 900 + 150 + 200 + 10 = 1 260. Ressources hors trésorerie-passif = 500 + 300 + 250 + 110 + 40 = 1 200 ; trésorerie-passif = 60. Ressources stables = 1 050 ; FR = 1 050 − 900 = 150. BFR = 150 + 200 − 110 − 40 = 200. TN = 150 − 200 = −50, et 10 − 60 = −50.

1.4. Délai clients = 200 / 800 × 360 = 90 jours. Autonomie financière = 500 / 250 = 2. Capacité de remboursement = 250 / 151 ≈ 1,7 année de CAF. Commentaire : Sine Agro est rentable (EBE égal à 26 % des ventes, rentabilité financière de 91 / 500 ≈ 18 %) et solide dans sa structure (capitaux propres doubles des dettes financières, dettes remboursables en moins de deux ans de CAF). Son point faible est le crédit clients de 90 jours, qui porte le BFR au-dessus du FR et rend la trésorerie négative. Il faut réduire les délais clients et, si la croissance continue, renforcer le FR.

## Corrigé du dossier 2

2.1. Encaissements : avril 50 % × 7 + 50 % × 6 = 6,5 ; mai 4,5 + 3,5 = 8 ; juin 4 + 4,5 = 8,5. Décaissements : avril 3 + 2 = 5 ; mai 4 + 2 + 2,5 + 3 = 11,5 ; juin 4 + 2 = 6.

- Avril : début 1,0 ; solde +1,5 ; fin 2,5.
- Mai : début 2,5 ; solde −3,5 ; fin −1,0.
- Juin : début −1,0 ; solde +2,5 ; fin 1,5.

2.2. Escompte = 2 000 000 × 0,095 × 30 / 360 ≈ 15 833 FCFA ; agios ≈ 18 833 FCFA ; net ≈ 1 981 167 FCFA ; taux réel ≈ 18 833 / 1 981 167 × 360 / 30 ≈ 11,41 %. L''escompte couvre le déficit ponctuel de mai (1 million) ; il est adapté à un décalage court. Mais la machine est un investissement durable : en bonne gestion, elle devrait être financée par une ressource stable (crédit d''équipement, crédit-bail), ce qui éviterait le déficit.

## Corrigé du dossier 3

3.1. P = 600 × (1 − 1,07^−4) / 0,07 + 10 000 × 1,07^−4 ≈ 9 661 FCFA. Elle cote en dessous du pair car son coupon (6 %) est inférieur au taux du marché (7 %) : le prix baisse pour offrir à l''acheteur un rendement de 7 %.

3.2. P0 = 200 / (0,10 − 0,04) ≈ 3 333 FCFA.

3.3. La SGI tient les comptes-titres des investisseurs, reçoit leurs ordres de bourse, les transmet à la BRVM, et peut conseiller et gérer des portefeuilles. Elle est agréée par le régulateur régional.

## Conseils de méthode

- Présentez les SIG sous forme de cascade, ligne par ligne, avec le contrôle de la CAF.
- Vérifiez toujours TN = FR − BFR = trésorerie-actif − trésorerie-passif.
- Dans un plan de trésorerie, appliquez les délais de paiement mois par mois.

## Exercices pratiques

- Exercice 1 : pourquoi la production stockée entre-t-elle dans la valeur ajoutée ?
- Exercice 2 : citez deux moyens de réduire le BFR.
- Exercice 3 : un portefeuille contient 50 % d''actions à 12 % de rentabilité espérée et 50 % d''obligations à 6,5 %. Rentabilité espérée ?
- Exercice 4 : vrai ou faux : « La CAF est égale à la variation de trésorerie de l''exercice. »
- Exercice 5 : calculez le coupon couru d''une obligation de coupon annuel 600 FCFA, 146 jours après le dernier coupon (base 365 jours).

## Corrigé

- Exercice 1 : la production stockée correspond à des biens produits pendant l''exercice mais pas encore vendus ; elle fait partie de la production de l''exercice, donc de la richesse créée.
- Exercice 2 : réduire les délais clients (relances, escompte pour paiement rapide) ; réduire les stocks ; obtenir des délais fournisseurs plus longs.
- Exercice 3 : 0,5 × 12 % + 0,5 × 6,5 % = 9,25 %.
- Exercice 4 : faux. La CAF est un surplus potentiel ; la trésorerie dépend aussi de la variation du BFR, des investissements, des financements et des dividendes.
- Exercice 5 : 600 × 146 / 365 = 240 FCFA.', 'texte', 60, false, 50
from public.courses c where c.slug = 'lic-fin-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Licence 2 Finance (entraînement corrigé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Analyse financière', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 2 Finance, Comptabilité, Gestion.
- Objectifs : réaliser un diagnostic financier complet selon le SYSCOHADA révisé (SIG, CAF, bilan fonctionnel, FR, BFR, TN, ratios) et rédiger un commentaire.
- Matériel : tableau blanc, diaporama présentant le compte de résultat et le bilan du cas, calculatrice.
- Prérequis : comptabilité générale de Licence 1 ; leçon 2 du cours.
- Montants en millions de FCFA ; taux d''impôt de 30 % fictif pour l''exemple.

## Déroulé minuté

## 00:00 – 05:00 · Présentation du cas

« Bonjour. Aujourd''hui, nous sommes analystes dans une banque de Dakar. Atlantique Distribution SA, grossiste fictif en produits alimentaires, demande un crédit. Avant de répondre, le banquier veut savoir trois choses : l''entreprise est-elle rentable ? Est-elle équilibrée financièrement ? Peut-elle rembourser ? Nous allons répondre ensemble, étape par étape, comme dans un sujet d''examen. »

Visuel : la diapositive des données. Ventes de marchandises 1 000 ; achats de marchandises 700 ; variation de stocks de marchandises 20 (déstockage) ; transports 20 ; services extérieurs 60 ; impôts et taxes 10 ; charges de personnel 90 ; dotations aux amortissements 35 ; frais financiers 15 ; produit de cession d''un véhicule 12 ; valeur comptable du véhicule cédé 8.

## 05:00 – 20:00 · La cascade des SIG

« Première étape, la marge commerciale. Elle se calcule pour une activité de négoce : ventes de marchandises moins coût d''achat des marchandises vendues. Le coût d''achat, ce sont les achats corrigés de la variation de stocks. Un déstockage de 20 signifie qu''on a vendu des marchandises achetées l''an dernier : il s''ajoute aux achats. Marge commerciale = 1 000 − (700 + 20) = 280. »

« Deuxième étape, la valeur ajoutée. Ici, pas de production : VA = marge commerciale − consommations en provenance des tiers. Dans le SYSCOHADA, on y retire aussi les impôts et taxes. VA = 280 − (20 + 60 + 10) = 190. La valeur ajoutée, c''est la richesse créée par l''entreprise, qui va rémunérer le personnel, les prêteurs, l''État et les actionnaires. »

« Troisième étape, l''EBE : 190 − 90 = 100. Quatrième, le résultat d''exploitation : 100 − 35 = 65. Cinquième, le résultat financier : −15. Sixième, le RAO : 65 − 15 = 50. Septième, le résultat hors activités ordinaires : 12 − 8 = 4. Impôt fictif à 30 % sur 54 : 16,2. Résultat net : 50 + 4 − 16,2 = 37,8. »

Question à poser : « Pourquoi le produit de cession n''est-il pas dans le chiffre d''affaires ? » Réponse : c''est une opération exceptionnelle, hors activités ordinaires, classée en HAO.

## 20:00 – 32:00 · La CAF et l''autofinancement

« La CAF par la méthode additive : on part du résultat net et on neutralise ce qui n''est pas monétaire ou qui relève des cessions. 37,8 + 35 de dotations − 12 de produit de cession + 8 de valeur comptable = 68,8. Par la méthode soustractive : EBE + produits encaissables − charges décaissables, sans les cessions : 100 − 15 − 16,2 = 68,8. Les deux méthodes concordent : on peut continuer. »

« Pourquoi exclure les cessions ? Parce que la CAF mesure ce que l''activité courante dégage durablement. Le prix de vente du véhicule est une ressource, mais une ressource ponctuelle, classée dans le tableau de financement parmi les désinvestissements. »

« Si l''entreprise distribue 20 de dividendes, l''autofinancement est 48,8. »

## 32:00 – 42:00 · Le bilan fonctionnel

« Le bilan : immobilisations brutes 400 ; stocks 120 ; clients 90 ; trésorerie-actif 25. Capitaux propres 170 ; amortissements cumulés 150 ; dettes financières 100 ; fournisseurs 180 ; dettes fiscales et sociales 30 ; trésorerie-passif 5. Total : 635 de chaque côté. »

« Ressources stables = 170 + 150 + 100 = 420. FR = 420 − 400 = 20. BFR = stocks + clients − fournisseurs − dettes fiscales et sociales = 120 + 90 − 180 − 30 = 0. TN = 20 − 0 = 20, et vérification : 25 − 5 = 20. »

« Observez ce BFR nul : c''est typique de la distribution. Les clients paient vite, les fournisseurs sont payés lentement : le cycle d''exploitation s''autofinance. Dans une industrie, le BFR serait nettement positif. »

## 42:00 – 50:00 · Pause interactive et quiz

- Question 1 : un stockage de marchandises augmente-t-il ou diminue-t-il la marge commerciale ? Réponse : il l''augmente, car il réduit le coût d''achat des marchandises vendues.
- Question 2 : où classe-t-on les amortissements cumulés dans le bilan fonctionnel ? Réponse : en ressources stables.
- Question 3 : FR = 50, BFR = 80. TN ? Réponse : −30.
- Question 4 : la CAF inclut-elle les dotations aux amortissements ? Réponse : oui, on les rajoute au résultat net car ce sont des charges non décaissées.
- Question 5 : quel solde mesure la performance économique avant amortissements et financement ? Réponse : l''EBE.

## 50:00 – 1:05:00 · Les ratios

« Délai clients : 90 / 1 000 × 360 ≈ 32 jours. Délai fournisseurs : 180 / 700 × 360 ≈ 93 jours. Durée de stockage des marchandises : stock / coût d''achat des marchandises vendues × 360 = 120 / 720 × 360 = 60 jours. Le cycle est cohérent : les marchandises restent 60 jours en stock, les clients paient en 32 jours, soit 92 jours entre achat et encaissement, et les fournisseurs sont payés à 93 jours. »

« Rentabilité financière : 37,8 / 170 ≈ 22 %. Taux de marge d''EBE : 100 / 1 000 = 10 %. Capacité de remboursement : dettes financières / CAF = 100 / 68,8 ≈ 1,5 année. »

« Attention : en pratique, les délais clients et fournisseurs se calculent en TTC ; nous restons hors taxes pour simplifier. Et un ratio isolé ne dit rien : il faut le comparer à l''année précédente et aux entreprises du secteur. »

Exercice corrigé en direct : « Si les fournisseurs exigeaient d''être payés à 60 jours, quel serait le nouveau poste fournisseurs, et le BFR ? » Correction : 700 × 60 / 360 ≈ 116,7 ; BFR = 120 + 90 − 116,7 − 30 ≈ 63,3 ; TN = 20 − 63,3 ≈ −43,3. « Vous voyez la fragilité : l''équilibre repose sur le crédit fournisseurs. »

## 1:05:00 – 1:17:00 · Rédiger le commentaire

« Un bon commentaire suit quatre temps : constat chiffré, explication, conséquence, recommandation. Je rédige avec vous. »

« Activité et rentabilité : Atlantique Distribution dégage un EBE de 100, soit 10 % des ventes, et une rentabilité financière de 22 %, ce qui est satisfaisant pour un grossiste. Équilibre financier : le FR de 20 couvre un BFR nul ; la trésorerie est positive à 20. Cet équilibre repose sur des délais fournisseurs longs, qui pourraient être remis en cause. Solvabilité : les dettes financières représentent un an et demi de CAF : l''entreprise peut s''endetter davantage. Recommandation au banquier : accorder le crédit demandé s''il finance un investissement rentable, en surveillant les relations fournisseurs et en suggérant de renforcer les capitaux propres, qui restent modestes (170 pour 400 d''immobilisations brutes). »

## 1:17:00 – 1:23:00 · Synthèse

« Retenez la démarche complète : SIG, CAF par deux méthodes, bilan fonctionnel, FR, BFR, TN avec double vérification, ratios d''activité, de rentabilité et de structure, puis commentaire en quatre temps. Le jour de l''examen, gérez votre temps : le commentaire vaut souvent autant de points que les calculs. »

« Trois erreurs reviennent chaque année dans les copies : intégrer le produit de cession dans la CAF, oublier les amortissements cumulés dans les ressources stables, et conclure sur la santé de l''entreprise à partir du seul résultat net. Un résultat positif ne garantit ni une trésorerie positive ni une capacité à rembourser : c''est précisément ce que le diagnostic complet permet de vérifier. »

## 1:23:00 – 1:30:00 · Évaluation finale

- Question 1 : ventes de marchandises 500, achats 350, stockage 10. Marge commerciale ? Réponse : 500 − (350 − 10) = 160.
- Question 2 : résultat net 40, dotations 25, reprises 5, aucune cession. CAF ? Réponse : 40 + 25 − 5 = 60.
- Question 3 : ressources stables 600, emplois stables 520, BFR 100. TN ? Réponse : FR = 80, TN = 80 − 100 = −20.
- Question 4 : clients 150, chiffre d''affaires 1 200 (hors taxes, simplification). Délai clients ? Réponse : 150 / 1 200 × 360 = 45 jours.
- Question 5 : citez deux actions pour améliorer une trésorerie négative due à un BFR excessif. Réponse : réduire les délais clients et les stocks ; augmenter le FR par des capitaux permanents.

« Merci. Refaites le cas seuls, en 45 minutes chrono, puis comparez votre commentaire au mien. »', 'video', 90, false, 60
from public.courses c where c.slug = 'lic-fin-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Analyse financière');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Gestion de trésorerie', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 2 Finance et Gestion.
- Objectifs : construire un plan de trésorerie, identifier les besoins de financement à court terme, calculer et comparer le coût réel de l''escompte, du découvert et de l''affacturage, proposer une décision argumentée.
- Matériel : tableau blanc, diaporama avec un plan de trésorerie vierge, calculatrice.
- Prérequis : intérêts simples (Licence 1), leçon 3 du cours.
- Montants en millions de FCFA sauf indication ; tous les taux et commissions sont fictifs pour l''exemple ; TVA ignorée.

## Déroulé minuté

## 00:00 – 05:00 · Le problème du trésorier

« Bonjour. Je vous présente Gandiol Pêche SARL, entreprise fictive de mareyage près de Saint-Louis. Elle achète le poisson aux pirogues et le revend aux usines et aux marchés. Son gérant, M. Fall, me dit : “Mon entreprise gagne de l''argent, mais certains mois je ne peux pas payer les pêcheurs à temps.” C''est le problème classique de la trésorerie : le décalage entre les dates de décaissement et les dates d''encaissement. Notre mission : prévoir, puis financer au moindre coût. »

## 05:00 – 15:00 · Les principes du plan de trésorerie

« Le plan de trésorerie se construit en trois étapes : le budget des encaissements, le budget des décaissements, puis la synthèse mois par mois. La règle d''or : on inscrit les flux à la date où l''argent entre ou sort, pas à la date de la facture. Une vente de janvier payée à 30 jours est un encaissement de février. »

« Données : trésorerie au 1er janvier 3. Ventes : décembre 20, janvier 15, février 18, mars 25. Les clients paient 25 % au comptant et 75 % à 30 jours. Achats de poisson : 60 % des ventes du mois, payés le mois suivant. Salaires 4 par mois ; autres charges 1,5 par mois ; impôt en février 3 ; réparation d''un moteur de camion en février 6. »

## 15:00 – 28:00 · Construire les budgets

« Encaissements. Janvier : 25 % × 15 + 75 % × 20 = 3,75 + 15 = 18,75. Février : 25 % × 18 + 75 % × 15 = 4,5 + 11,25 = 15,75. Mars : 25 % × 25 + 75 % × 18 = 6,25 + 13,5 = 19,75. »

« Décaissements. Les achats de décembre, 60 % × 20 = 12, sont payés en janvier. Ceux de janvier, 9, en février. Ceux de février, 10,8, en mars. Janvier : 12 + 4 + 1,5 = 17,5. Février : 9 + 4 + 1,5 + 3 + 6 = 23,5. Mars : 10,8 + 4 + 1,5 = 16,3. »

« Synthèse. »

- Janvier : début 3 ; solde du mois +1,25 ; fin 4,25.
- Février : début 4,25 ; solde −7,75 ; fin −3,5.
- Mars : début −3,5 ; solde +3,45 ; fin −0,05.

« Le diagnostic est clair : un besoin d''environ 3,5 millions en février, presque résorbé fin mars. C''est un besoin court : il relève des financements à court terme. »

## 28:00 – 40:00 · Les solutions de financement à court terme

« Passons en revue les outils. La facilité de caisse couvre quelques jours. Le découvert autorisé couvre quelques semaines, dans la limite d''un plafond négocié. L''escompte transforme un effet de commerce en argent avant l''échéance. L''affacturage cède les créances à un factor qui les recouvre. Le crédit de campagne finance une activité saisonnière. Pour M. Fall, l''usine cliente a accepté une lettre de change de 4 000 000 de francs à 30 jours : l''escompte est possible. »

« Avant de comparer, une question de bon sens : la réparation du moteur est-elle un investissement ? Si c''est une grosse réparation qui prolonge la durée de vie du camion, elle pourrait être immobilisée et financée à moyen terme. Ici, nous la traitons comme une charge courante. »

## 40:00 – 47:00 · Pause interactive et quiz

- Question 1 : une vente de mars payée à 60 jours est encaissée quand ? Réponse : en mai.
- Question 2 : l''achat d''un bâtiment doit-il être financé par découvert ? Réponse : non, par des ressources stables.
- Question 3 : que fait une banque qui escompte un effet ? Réponse : elle en verse le montant avant l''échéance, diminué des agios.
- Question 4 : citez un financement adapté à la commercialisation de la noix de cajou. Réponse : le crédit de campagne.

## 47:00 – 1:02:00 · Calculer et comparer les coûts

« Escompte de l''effet de 4 000 000 à 30 jours, taux 10 %, commission 4 000 francs. Escompte = 4 000 000 × 0,10 × 30 / 360 ≈ 33 333 francs. Agios = 37 333 francs. Net reçu = 3 962 667 francs. Taux réel = 37 333 / 3 962 667 × 360 / 30 ≈ 11,31 %. »

« Découvert de 4 000 000 pendant 30 jours à 12 % : 4 000 000 × 0,12 × 30 / 360 = 40 000 francs, sans compter d''éventuelles commissions. L''escompte coûte 37 333 francs : il est moins cher, et il est adossé à une créance certaine. »

« Mais attention : le découvert ne coûte que sur les montants réellement utilisés et les jours réellement débiteurs. Si le besoin réel n''est que de 3 500 000 pendant 20 jours, le découvert coûte 3 500 000 × 0,12 × 20 / 360 ≈ 23 333 francs, moins que l''escompte. Le bon choix dépend donc du profil exact du besoin. C''est ce raisonnement que l''examinateur attend. »

Exercice corrigé en direct : « Un effet de 2 500 000 à 45 jours est escompté à 9 %, commission 3 000. Calculez le net. » Correction : escompte = 2 500 000 × 0,09 × 45 / 360 = 28 125 ; agios = 31 125 ; net = 2 468 875 francs.

## 1:02:00 – 1:14:00 · L''affacturage et le pilotage du BFR

« L''affacturage : Gandiol Pêche cède 10 000 000 de créances à 45 jours. Commission d''affacturage 1,5 % : 150 000 francs. Le factor avance 90 %, soit 9 000 000, au taux de 11 % : intérêts = 9 000 000 × 0,11 × 45 / 360 = 123 750 francs. Coût total : 273 750 francs. C''est plus cher que l''escompte, mais le factor prend en charge les relances, et souvent le risque d''impayé. Pour une petite structure sans service de recouvrement, cela peut se justifier. »

« Enfin, la meilleure trésorerie est celle qu''on n''a pas besoin de financer. Si M. Fall obtenait de ses clients 50 % au comptant au lieu de 25 %, les encaissements de février passeraient à 50 % × 18 + 50 % × 15 = 16,5 au lieu de 15,75. Et en négociant 15 jours de plus avec ses fournisseurs, il décalerait une partie des achats. Agir sur le BFR, c''est agir à la source. »

## 1:14:00 – 1:22:00 · Placer un excédent

« En avril, la trésorerie redevient positive. Un excédent temporaire se place selon trois critères dans cet ordre : sécurité, liquidité, rendement. Compte à terme, bons du Trésor émis sur le marché régional des titres publics, parts d''organismes de placement collectif monétaires. Évitez les actions pour un excédent dont vous aurez besoin dans trois mois : leur cours peut baisser au mauvais moment. »

## 1:22:00 – 1:26:00 · Synthèse

« Retenez : plan de trésorerie construit selon les dates réelles de flux ; besoin court, financement court ; besoin durable, financement durable ; comparaison des coûts réels, commissions comprises ; action sur le BFR comme premier levier. À l''examen, présentez le plan de trésorerie sous forme de tableau clair, mois en colonnes, encaissements et décaissements en lignes, avec un total par mois et la trésorerie cumulée : un correcteur doit pouvoir vérifier chaque chiffre en quelques secondes. Puis rédigez deux ou trois phrases de recommandation chiffrée. »

## 1:26:00 – 1:30:00 · Évaluation finale

- Question 1 : ventes de mai 10, juin 12 ; 40 % au comptant, 60 % à 30 jours. Encaissements de juin ? Réponse : 4,8 + 6 = 10,8.
- Question 2 : effet de 1 800 000 à 60 jours, taux 12 %, sans commission. Escompte ? Réponse : 1 800 000 × 0,12 × 60 / 360 = 36 000 francs.
- Question 3 : pourquoi le taux réel de l''escompte dépasse-t-il le taux nominal ? Réponse : les intérêts sont prélevés d''avance sur un montant net plus faible, et les commissions s''ajoutent.
- Question 4 : différence entre facilité de caisse et découvert ? Réponse : la facilité de caisse couvre quelques jours ; le découvert, quelques semaines ou mois.
- Question 5 : trois critères pour placer un excédent ? Réponse : sécurité, liquidité, rendement.

« Merci. Pour la prochaine fois, refaites le plan de trésorerie de Gandiol Pêche avec 50 % de paiement comptant. »', 'video', 90, false, 70
from public.courses c where c.slug = 'lic-fin-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Gestion de trésorerie');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Marchés financiers 1', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 2 Finance, Banque, Gestion.
- Objectifs : expliquer le fonctionnement du marché financier régional, évaluer une action (rentabilité, PER, Gordon-Shapiro) et une obligation (prix, rendement actuariel, coupon couru), calculer la rentabilité d''un portefeuille.
- Matériel : tableau blanc, diaporama avec un carnet d''ordres simplifié, calculatrice.
- Prérequis : actualisation et annuités (Licence 1), leçon 4 du cours.
- Sociétés et taux fictifs pour l''exemple.

## Déroulé minuté

## 00:00 – 06:00 · Introduction : pourquoi un marché financier

« Bonjour. Une entreprise sénégalaise qui veut financer une nouvelle usine peut emprunter à sa banque. Elle peut aussi s''adresser directement aux épargnants en émettant des actions ou des obligations. Le marché financier, c''est ce lieu de rencontre. Pour l''épargnant, c''est une possibilité de placement ; pour l''entreprise ou l''État, une source de financement à long terme. Aujourd''hui, nous allons comprendre comment il fonctionne et surtout comment on évalue les titres. »

## 06:00 – 18:00 · L''organisation du marché régional

« Le marché primaire est celui des émissions : l''argent va à l''émetteur. Le marché secondaire est celui des échanges entre investisseurs : c''est la bourse. Dans l''UEMOA, la bourse commune est la BRVM, à Abidjan, avec une antenne dans chaque État. Les acteurs : les SGI, qui reçoivent et transmettent les ordres ; le Dépositaire central / Banque de règlement, qui conserve les titres et règle les opérations ; le régulateur régional, l''AMF-UMOA, qui autorise les opérations et protège les épargnants. »

« Un ordre d''achat peut être “au marché” : il sera exécuté au prix disponible. Ou “à cours limité” : par exemple, acheter 200 actions à 2 300 francs maximum. Si le titre cote 2 350, l''ordre attend. L''ordre à cours limité protège contre une mauvaise surprise de prix, mais il peut ne pas être exécuté. »

« Un mot sur la liquidité. Un titre est liquide quand il s''échange souvent et en volumes importants : on peut l''acheter ou le vendre rapidement sans faire bouger le cours. Sur un marché encore étroit, certains titres s''échangent peu ; un investisseur pressé de vendre peut alors devoir accepter un prix plus bas. C''est un risque à expliquer à tout client avant un placement en bourse. »

Visuel : un carnet d''ordres simplifié avec les meilleures offres d''achat et de vente.

## 18:00 – 32:00 · Évaluer une action

« La rentabilité d''une action sur un an : R = (dividende + cours final − cours initial) / cours initial. Achetée 2 500, dividende 150, revendue 2 700 : R = (150 + 200) / 2 500 = 14 %. »

« Le PER : cours / bénéfice par action. Avec un BPA de 250, PER = 2 500 / 250 = 10. On compare le PER d''un titre à celui des sociétés du même secteur. »

« Le modèle de Gordon-Shapiro : la valeur d''une action est la valeur actuelle de tous ses dividendes futurs. Si le dividende croît à un taux constant g, et que l''investisseur exige k, avec k > g : P0 = D1 / (k − g). Attention, D1 est le dividende de l''an prochain. La société fictive Sénégal Agro-Industrie a versé D0 = 150 francs ; g = 6 % ; k = 13 %. D1 = 150 × 1,06 = 159. P0 = 159 / 0,07 ≈ 2 271 francs. Si l''action cote 2 500, elle semble chère pour cet investisseur. Piège classique : diviser D0 au lieu de D1. »

Question à poser : « Que se passe-t-il si g se rapproche de k ? » Réponse attendue : la valeur tend vers l''infini ; le modèle n''est plus utilisable, il suppose k nettement supérieur à g.

## 32:00 – 40:00 · Pause interactive et quiz

- Question 1 : sur quel marché une entreprise lève-t-elle des fonds nouveaux ? Réponse : le marché primaire.
- Question 2 : qui transmet les ordres à la BRVM ? Réponse : les SGI.
- Question 3 : D1 = 100, k = 12 %, g = 2 %. Valeur ? Réponse : 100 / 0,10 = 1 000 francs.
- Question 4 : un PER de 20 signifie quoi ? Réponse : le cours représente vingt années de bénéfice actuel.
- Question 5 : pourquoi un investisseur préfère-t-il un titre liquide ? Réponse : parce qu''il peut le revendre rapidement, sans faire baisser fortement le cours, s''il a besoin de son argent.

## 40:00 – 55:00 · Le prix d''une obligation

« Une obligation est un prêt découpé en titres. L''État fictif émet une obligation de nominal 10 000 francs, taux facial 5,75 %, soit un coupon de 575 francs, durée 5 ans, remboursement in fine. Si le taux du marché est 6,5 %, le prix vaut la valeur actuelle des coupons et du remboursement : P = 575 × (1 − 1,065^−5) / 0,065 + 10 000 × 1,065^−5 ≈ 9 688 francs. Le titre cote sous le pair, car son coupon est inférieur au taux du marché. »

« Règle d''or : prix et taux varient en sens inverse. Quand les taux montent, les obligations existantes perdent de la valeur. Plus l''échéance est lointaine, plus cet effet est fort. »

« Le coupon couru : si vous achetez cette obligation 146 jours après le paiement du coupon, vous payez au vendeur la part de coupon qu''il a “gagnée” : 575 × 146 / 365 = 230 francs, en plus du prix coté. »

## 55:00 – 1:10:00 · Le rendement actuariel par interpolation

« Une obligation de nominal 10 000, coupon 600, échéance 3 ans, cote 9 700. Quel est son rendement actuariel ? C''est le taux r tel que 600 / (1 + r) + 600 / (1 + r)² + 10 600 / (1 + r)³ = 9 700. On procède par essais. À 7 % : prix ≈ 9 737,6. À 7,5 % : prix ≈ 9 609,9. Le prix cherché, 9 700, est entre les deux. Interpolation linéaire : r ≈ 7 % + (9 737,6 − 9 700) / (9 737,6 − 9 609,9) × 0,5 % ≈ 7,15 %. Le calcul exact donne aussi environ 7,15 %. »

« Interprétation : en achetant à 9 700 et en gardant le titre jusqu''à l''échéance, avec réinvestissement des coupons au même taux, l''investisseur obtient environ 7,15 % par an, plus que le taux facial de 6 %, grâce à la décote. »

Exercice corrigé en direct : « Une obligation de nominal 10 000, coupon 500, échéance 2 ans. Prix si le taux du marché est 4 % ? » Correction : 500 / 1,04 + 10 500 / 1,04² ≈ 480,77 + 9 707,84 ≈ 10 189 francs, au-dessus du pair.

## 1:10:00 – 1:20:00 · Le portefeuille et le couple rendement-risque

« Mme Ndour place 50 % en actions (rentabilité espérée 10 %), 30 % en obligations (7 %) et 20 % en compte à terme (4 %). Rentabilité espérée du portefeuille : 0,5 × 10 + 0,3 × 7 + 0,2 × 4 = 7,9 %. »

« Mais la rentabilité n''est qu''une moitié de l''histoire. Les actions sont plus risquées : leur rentabilité varie beaucoup d''une année à l''autre. Les obligations d''État conservées jusqu''à l''échéance sont moins risquées, mais exposées au risque de taux si on les revend avant. Diversifier entre plusieurs titres et plusieurs classes d''actifs réduit le risque global. En Licence 3, vous mesurerez ce risque avec l''écart-type et la covariance. »

## 1:20:00 – 1:25:00 · Synthèse

« Retenez : primaire et secondaire ; SGI, Dépositaire central, régulateur ; R = (D + P1 − P0) / P0 ; PER ; P0 = D1 / (k − g) ; prix d''une obligation = valeur actuelle des flux ; prix et taux en sens inverse ; rendement actuariel par interpolation ; coupon couru au prorata. »

## 1:25:00 – 1:30:00 · Évaluation finale

- Question 1 : action achetée 1 000, dividende 50, revendue 1 080. Rentabilité ? Réponse : (50 + 80) / 1 000 = 13 %.
- Question 2 : D0 = 200, g = 5 %, k = 15 %. Valeur ? Réponse : D1 = 210 ; P0 = 210 / 0,10 = 2 100 francs.
- Question 3 : une obligation de coupon 6 % quand le marché est à 8 % cote-t-elle au-dessus ou en dessous du pair ? Réponse : en dessous.
- Question 4 : coupon annuel 730 francs, 100 jours courus (base 365). Coupon couru ? Réponse : 730 × 100 / 365 = 200 francs.
- Question 5 : 40 % à 9 % et 60 % à 5 %. Rentabilité du portefeuille ? Réponse : 3,6 + 3 = 6,6 %.

« Merci. Pour vous entraîner, recalculez le prix de l''obligation à 5,75 % de coupon pour un taux de marché de 5 %, puis expliquez en deux phrases pourquoi le prix dépasse le pair. »', 'video', 90, false, 80
from public.courses c where c.slug = 'lic-fin-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Marchés financiers 1');
