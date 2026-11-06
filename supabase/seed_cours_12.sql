-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Cours (partie 12/12). À exécuter après seed.sql.

-- Cours : Marketing et commerce Licence 3 : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'lic-mkt-l3', (select id from public.levels where name = 'Licence 3'), null, 'Marketing et commerce', 'Marketing et commerce Licence 3 : réussir ses examens', 'Préparation aux partiels et examens semestriels de troisième année de Licence en marketing et commerce (Sénégal, espace UEMOA/OHADA, système LMD). Trois matières clés : le marketing stratégique (diagnostic, matrices BCG et Ansoff, plan marketing), la gestion de la relation client et de la force de vente (CRM, valeur client, dimensionnement, animation et rémunération des vendeurs) et le commerce international (principes des incoterms, techniques d''export, paiement international). Fiches, cas d''entreprises sénégalaises fictives, exercices corrigés aux calculs vérifiés, sujet type et trois cours vidéo de 1h30. Prérequis : Licence 2 en marketing ou gestion.', true, 383
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Licence 3 en Marketing et commerce', '## Objectifs de la leçon

- Situer la troisième année dans le parcours LMD et comprendre ses enjeux (diplôme, poursuite en Master, insertion).
- Identifier les trois matières clés de l''année et leurs attentes.
- Maîtriser les épreuves de synthèse : cas d''entreprise, plan marketing, note de recommandation.
- Planifier six semaines de révision en tenant compte du stage ou du mémoire.

## 1. La Licence 3 dans le système LMD

La Licence 3 correspond aux semestres 5 et 6 et clôt le premier cycle. Sa validation donne le diplôme de Licence. Comme les années précédentes, elle est organisée en unités d''enseignement qui apportent des crédits ; le nombre de crédits, les coefficients, les règles de compensation, le poids du stage et du rapport de stage ou du mémoire sont propres à chaque établissement. Vérifiez la maquette et le règlement des études, en particulier les conditions d''admission en Master si vous visez une poursuite d''études.

La Licence 3 est une année de synthèse. Les correcteurs n''attendent plus seulement des calculs justes : ils veulent un raisonnement de décideur. Un diagnostic, des options, un choix argumenté, un plan d''action chiffré.

## 2. Les matières clés de l''année

- Marketing stratégique : diagnostic externe (PESTEL, forces concurrentielles) et interne (ressources, compétences), synthèse SWOT, segmentation stratégique en domaines d''activité, matrices de portefeuille (BCG), choix de développement (Ansoff), stratégies concurrentielles, plan marketing.
- Gestion de la relation client et de la force de vente : CRM et base de données clients, segmentation RFM, valeur vie client, fidélisation, satisfaction ; dimensionnement, organisation, animation, rémunération et contrôle des vendeurs.
- Commerce international : choix des marchés, modes d''entrée, techniques d''export, documents, principes des incoterms, calcul d''un prix export, moyens de paiement et gestion du risque de change.

Selon les établissements, l''année comporte aussi le marketing des services, le droit des contrats et de la concurrence dans l''espace OHADA et UEMOA, la gestion de projet, le management, l''anglais des affaires et la méthodologie du mémoire.

## 3. Les épreuves de Licence 3

- Cas d''entreprise de synthèse (trois ou quatre heures) : un dossier de plusieurs pages sur une entreprise fictive, souvent avec annexes chiffrées. On attend un diagnostic structuré, des calculs (portefeuille BCG, valeur client, prix export) et des recommandations.
- Plan marketing ou note de recommandation : rédaction professionnelle, destinée à un dirigeant.
- Questions de réflexion : « La fidélisation coûte-t-elle moins cher que la conquête ? », « Une PME sénégalaise doit-elle exporter ? ».
- Exercices techniques : choix d''un incoterm, calcul d''un prix CIF, rémunération d''un vendeur, taille de la force de vente.
- Soutenance de stage ou de projet : présentation orale, questions du jury.

## 4. Méthode : raisonner comme un décideur

Pour tout cas, appliquez la démarche suivante :

- Lire les questions avant le dossier, puis lire le dossier en annotant les chiffres.
- Diagnostiquer : opportunités et menaces de l''environnement, forces et faiblesses de l''entreprise.
- Calculer ce qui est demandé, proprement, avec formules et interprétation.
- Recommander : objectifs, stratégie, actions, budget, calendrier, indicateurs de suivi.
- Vérifier la cohérence : chaque action répond à un problème du diagnostic.

Exemple de phrase de recommandation : « Le DAS jus est un dilemme (part de marché relative de 0,5, croissance de 15 %). Nous recommandons d''investir pendant deux ans pour devenir leader sur la région de Dakar, financé par les liquidités du DAS huile, vache à lait. »

## 5. Plan de révision sur six semaines

- Semaine 1 : bilan, fiches de méthode (diagnostic, BCG, Ansoff, plan marketing, valeur client, prix export).
- Semaine 2 : marketing stratégique. Deux cas de diagnostic et un plan marketing complet.
- Semaine 3 : relation client et force de vente. Calculs de valeur client, d''attrition, de taille de force de vente, de rémunération.
- Semaine 4 : commerce international. Incoterms, prix export, crédit documentaire, risque de change.
- Semaine 5 : deux cas de synthèse chronométrés, corrigés en groupe.
- Semaine 6 : reprise des erreurs, préparation des oraux, repos.

Si vous êtes en stage, réservez au moins une heure chaque soir et une demi-journée le week-end. Utilisez votre entreprise d''accueil comme terrain d''exemples, en respectant la confidentialité.

## Points clés

- Licence 3 : année de synthèse, raisonnement de décideur.
- Trois matières clés : marketing stratégique, relation client et force de vente, commerce international.
- Démarche : diagnostic, calculs, recommandations chiffrées, cohérence.
- Révisions organisées autour de cas complets.

## Exercices pratiques

- Exercice 1. Expliquez la différence entre un diagnostic et une recommandation.
- Exercice 2. Citez trois types d''épreuves de Licence 3 et une attente du correcteur pour chacune.
- Exercice 3. Rédigez la structure (titres seulement) d''une note de recommandation de deux pages adressée au directeur commercial d''une PME.
- Exercice 4. Cas pratique. Khady, en stage dans une entreprise de distribution à Dakar, a six semaines avant ses examens et ne peut réviser que le soir. Proposez-lui un planning et deux façons d''utiliser son stage pour réviser.
- Exercice 5. Donnez deux arguments pour et deux arguments contre l''idée qu''une PME sénégalaise devrait exporter dans la sous-région.

## Corrigé

- Exercice 1. Le diagnostic décrit et analyse la situation (environnement, forces, faiblesses) sans prendre de décision. La recommandation propose des choix et des actions justifiés par le diagnostic, avec moyens, calendrier et indicateurs.
- Exercice 2. Cas de synthèse : un diagnostic structuré et des recommandations cohérentes. Exercice technique : des calculs justes et interprétés. Question de réflexion : une problématique, un plan, des exemples.
- Exercice 3. Objet et contexte ; constat et diagnostic ; options envisagées ; recommandation ; plan d''action (actions, responsables, calendrier, budget) ; indicateurs de suivi ; conclusion.
- Exercice 4. Lundi à jeudi : une heure de fiche et d''exercices sur la matière de la semaine (stratégie, puis relation client, puis international). Samedi : un cas complet de trois heures. Semaine 5 : deux sujets chronométrés. Semaine 6 : reprise des erreurs. Utiliser le stage : observer la segmentation des clients de l''entreprise et la rémunération des commerciaux, et analyser un dossier d''importation pour comprendre incoterms et paiements.
- Exercice 5. Pour : marché sous-régional plus large que le marché national ; libre circulation des produits originaires au sein de l''UEMOA et monnaie commune avec les pays de l''Union, qui supprime le risque de change dans cette zone. Contre : coûts logistiques et de prospection élevés ; concurrence de produits importés et besoin d''adapter l''offre aux goûts locaux.', 'texte', 45, true, 10
from public.courses c where c.slug = 'lic-mkt-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Licence 3 en Marketing et commerce');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Marketing stratégique : l''essentiel pour l''examen', '## Objectifs de la leçon

- Mener un diagnostic stratégique externe et interne, puis une synthèse SWOT.
- Découper l''entreprise en domaines d''activité stratégiques et les analyser avec la matrice BCG.
- Choisir une stratégie de développement avec la matrice d''Ansoff et une stratégie concurrentielle.
- Construire un plan marketing.

## 1. Le diagnostic stratégique

Le marketing stratégique fixe les orientations à moyen et long terme : quels marchés servir, avec quel avantage concurrentiel, quels produits développer ou abandonner. Il précède et encadre le marketing opérationnel.

Diagnostic externe. L''analyse PESTEL passe en revue l''environnement : politique, économique, socioculturel, technologique, écologique, légal. Pour une entreprise agroalimentaire sénégalaise : politiques de soutien à la transformation locale, pouvoir d''achat et inflation, urbanisation et nouveaux modes de consommation, diffusion du paiement mobile, contraintes environnementales sur les emballages, normes sanitaires. L''analyse des cinq forces concurrentielles de Porter examine l''intensité de la concurrence, la menace des nouveaux entrants, la menace des produits de substitution, le pouvoir de négociation des clients et celui des fournisseurs.

Diagnostic interne. On évalue les ressources (financières, humaines, matérielles, marques) et les compétences (savoir-faire de fabrication, réseau de distribution, connaissance des clients). On cherche les facteurs clés de succès du marché et l''on se compare aux concurrents.

Synthèse SWOT. Schéma décrit : un tableau de quatre cases. En haut, l''interne : forces (Strengths) et faiblesses (Weaknesses). En bas, l''externe : opportunités (Opportunities) et menaces (Threats). La SWOT n''est utile que si elle débouche sur des choix : s''appuyer sur ses forces pour saisir les opportunités, corriger les faiblesses qui exposent aux menaces.

## 2. Les domaines d''activité stratégiques et la matrice BCG

Un domaine d''activité stratégique (DAS) est un ensemble homogène de produits partageant les mêmes clients, concurrents et facteurs clés de succès. La matrice du Boston Consulting Group (BCG) positionne chaque DAS selon deux axes :

- Taux de croissance du marché (axe vertical) : seuil souvent retenu de 10 % par an, à adapter au contexte.
- Part de marché relative (axe horizontal) : ventes du DAS / ventes du principal concurrent (ou du suivant si l''on est leader). Seuil de 1.

Quatre cases :

- Vedette (croissance forte, PDM relative supérieure à 1) : rentable mais gourmande en investissements ; à maintenir.
- Vache à lait (croissance faible, PDM relative supérieure à 1) : génère des liquidités ; à rentabiliser.
- Dilemme (croissance forte, PDM relative inférieure à 1) : besoin de fonds important, avenir incertain ; investir massivement ou abandonner.
- Poids mort (croissance faible, PDM relative inférieure à 1) : rentabilité faible ; à abandonner ou maintenir sans investir.

Exemple. Groupe Ndiambour Industries, groupe fictif de Louga, a quatre DAS (chiffres en millions de FCFA).

- A, produits laitiers : CA 1 200 ; principal concurrent 800 ; croissance 14 %. PDM relative = 1 200 / 800 = 1,5 : vedette.
- B, huile alimentaire : CA 2 000 ; concurrent 1 000 ; croissance 3 %. PDM relative = 2,0 : vache à lait.
- C, jus de fruits : CA 300 ; leader 1 500 ; croissance 18 %. PDM relative = 0,2 : dilemme.
- D, biscuits : CA 250 ; leader 1 250 ; croissance 2 %. PDM relative = 0,2 : poids mort.

Le CA total est de 3 750 millions : B pèse 53,3 %, A 32 %, C 8 % et D 6,7 %. Le portefeuille est plutôt équilibré : la vache à lait finance la vedette et peut financer le dilemme C si le groupe décide d''y investir. D est candidat à la cession. Limites de la BCG : deux critères seulement, seuils arbitraires, hypothèse discutable selon laquelle la part de marché garantit la rentabilité.

## 3. Les choix stratégiques

Matrice d''Ansoff : quatre voies de croissance selon que le produit et le marché sont actuels ou nouveaux.

- Pénétration du marché (produit actuel, marché actuel) : vendre plus aux clients actuels ou prendre des clients aux concurrents.
- Développement de marché (produit actuel, marché nouveau) : nouvelles régions, export, nouveaux segments.
- Développement de produit (produit nouveau, marché actuel) : nouvelles références pour les mêmes clients.
- Diversification (produit nouveau, marché nouveau) : la voie la plus risquée.

Stratégies concurrentielles génériques (Porter) : domination par les coûts, différenciation, focalisation sur un segment. Selon la position sur le marché, on parle aussi de stratégies de leader, de challenger, de suiveur et de spécialiste.

## 4. Le plan marketing

Le plan marketing formalise la démarche, souvent pour un an :

- Analyse de la situation (diagnostic, SWOT).
- Objectifs SMART : spécifiques, mesurables, atteignables, réalistes, temporellement définis. Exemple : « Porter la part de marché du jus de 8 % à 12 % dans la région de Dakar d''ici décembre. »
- Stratégie : cible, positionnement, voie de croissance.
- Plan d''action : mix détaillé.
- Budget et calendrier.
- Contrôle : tableau de bord, indicateurs, revue trimestrielle.

## Points clés

- Diagnostic externe (PESTEL, cinq forces) et interne, synthèse SWOT orientée décision.
- BCG : croissance du marché × part de marché relative ; vedette, vache à lait, dilemme, poids mort.
- Ansoff : pénétration, développement de marché, de produit, diversification.
- Plan marketing : objectifs SMART, stratégie, actions, budget, contrôle.

## Exercices pratiques

- Exercice 1. Classez selon PESTEL : hausse des prix de l''énergie ; nouvelle norme d''étiquetage ; urbanisation rapide ; essor du paiement mobile.
- Exercice 2. Une entreprise fictive a trois DAS (millions de FCFA) : X (CA 500, concurrent 250, croissance 16 %), Y (CA 1 500, leader 1 800, croissance 4 %), Z (CA 200, leader 800, croissance 20 %). Positionnez-les dans la BCG, calculez leur poids dans le CA et commentez l''équilibre du portefeuille.
- Exercice 3. Classez selon Ansoff : une laiterie de Saint-Louis vend ses yaourts en Mauritanie ; elle lance un fromage local pour ses clients actuels ; elle ouvre une clinique vétérinaire.
- Exercice 4. Reformulez en objectif SMART : « Nous voulons vendre plus. »
- Exercice 5. Un budget marketing représente 5 % d''un CA prévu de 800 millions de FCFA. Répartissez-le : 40 % communication, 35 % force de vente, 25 % promotion. Calculez chaque poste.
- Exercice 6. Cas pratique. Teranga Céréales, PME fictive de Kaolack, transforme mil et maïs (forces : savoir-faire, image locale ; faiblesses : emballages peu attractifs, distribution limitée). Réalisez une SWOT et proposez une stratégie de croissance justifiée.

## Corrigé

- Exercice 1. Énergie : économique. Étiquetage : légal. Urbanisation : socioculturel (démographique). Paiement mobile : technologique.
- Exercice 2. X : PDM relative 2,0, croissance 16 % : vedette, 22,7 % du CA. Y : 1 500 / 1 800 = 0,83, croissance 4 % : poids mort, 68,2 % du CA. Z : 0,25, croissance 20 % : dilemme, 9,1 % du CA. Portefeuille déséquilibré : aucune vache à lait, et le DAS principal est un poids mort. L''entreprise doit améliorer la position de Y (réduction des coûts, différenciation) ou préparer la relève par X, et choisir de financer Z ou non.
- Exercice 3. Développement de marché ; développement de produit ; diversification.
- Exercice 4. « Augmenter le chiffre d''affaires des yaourts de 10 % dans la région de Thiès entre janvier et décembre, en gagnant 50 nouveaux points de vente. »
- Exercice 5. Budget = 40 000 000 FCFA ; communication 16 000 000 ; force de vente 14 000 000 ; promotion 10 000 000.
- Exercice 6. Forces : savoir-faire, image locale. Faiblesses : emballages, distribution. Opportunités : urbanisation, demande de produits locaux et pratiques, export dans la sous-région. Menaces : produits importés, hausse du prix des céréales. Stratégie : pénétration et développement de marché vers les villes (Dakar, Thiès) avec des emballages modernisés et un réseau de distributeurs ; différenciation sur l''origine locale et la qualité ; export ultérieur quand la distribution nationale sera solide.', 'texte', 60, false, 20
from public.courses c where c.slug = 'lic-mkt-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Marketing stratégique : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Gestion de la relation client et force de vente : l''essentiel pour l''examen', '## Objectifs de la leçon

- Expliquer la gestion de la relation client (GRC ou CRM) et ses outils.
- Segmenter une clientèle par la méthode RFM et calculer la valeur vie client.
- Dimensionner et organiser une force de vente.
- Animer, rémunérer et contrôler les vendeurs.

## 1. La gestion de la relation client

La gestion de la relation client (en anglais Customer Relationship Management, CRM) est une démarche qui vise à connaître chaque client, à lui proposer une offre et une relation adaptées, et à le fidéliser de façon rentable. Elle repose sur une base de données clients, des processus (accueil, réclamations, relances) et des outils logiciels qui centralisent les interactions : appels, messages, commandes, visites.

Pourquoi fidéliser ? Conquérir un client coûte généralement plus cher que d''en garder un, et un client fidèle achète davantage, coûte moins à servir et recommande l''entreprise. Mais la fidélisation a aussi un coût : on ne fidélise que les clients rentables ou prometteurs.

Outils de fidélisation : programme de points, service client réactif, messages personnalisés, traitement efficace des réclamations.

Mesures : taux d''attrition = clients perdus sur la période / clients en début de période ; taux de rétention = 1 − taux d''attrition ; satisfaction (enquêtes) ; recommandation, par exemple l''indicateur net de promoteurs = % de promoteurs (notes 9 et 10 sur 10) − % de détracteurs (notes 0 à 6).

Exemple. Kër Électro, distributeur fictif d''électroménager à Dakar, comptait 2 000 clients actifs en janvier ; 300 n''ont rien acheté depuis douze mois. Attrition = 300 / 2 000 = 15 % ; rétention = 85 %. Sur 300 clients interrogés, 180 sont promoteurs et 60 détracteurs : indicateur = 60 % − 20 % = 40.

## 2. Segmenter par la méthode RFM

La méthode RFM classe les clients selon trois critères :

- Récence : date du dernier achat.
- Fréquence : nombre d''achats sur la période.
- Montant : somme dépensée.

On attribue à chaque critère une note (par exemple de 1 à 5) et l''on forme des groupes : les meilleurs clients (notes élevées partout) à choyer, les clients à réactiver (bons montants mais récence faible), les nouveaux clients à développer, les petits clients occasionnels à servir à moindre coût.

## 3. La valeur vie client

La valeur vie client (en anglais Customer Lifetime Value, CLV) estime la marge qu''un client rapportera pendant toute sa relation avec l''entreprise.

Version simple. Un client de Kër Électro achète en moyenne 6 fois par an pour 25 000 FCFA ; le taux de marge est de 30 %. Marge annuelle = 6 × 25 000 × 0,30 = 45 000 FCFA. Sur une durée de relation de 4 ans, sans actualisation : 180 000 FCFA.

Version avec rétention et actualisation : CLV = m × r / (1 + i − r), où m est la marge annuelle, r le taux de rétention et i le taux d''actualisation. Avec m = 45 000, r = 0,8 et i = 0,10 : CLV = 45 000 × 0,8 / 0,3 = 120 000 FCFA. Si conquérir un client coûte 30 000 FCFA, le rapport valeur / coût d''acquisition est de 4 : l''investissement est justifié. La formule suppose une marge et une rétention constantes ; c''est une approximation.

## 4. Dimensionner et organiser la force de vente

La force de vente regroupe les personnes chargées de vendre et de suivre les clients : vendeurs salariés, représentants, agents commerciaux, téléconseillers.

Méthode de la charge de travail. On calcule le nombre de visites nécessaires par an, puis on divise par la capacité d''un vendeur.

Exemple. Kër Électro sert des revendeurs : 120 clients A visités 24 fois par an, 300 clients B 12 fois, 600 clients C 4 fois. Charge = 120 × 24 + 300 × 12 + 600 × 4 = 2 880 + 3 600 + 2 400 = 8 880 visites. Un vendeur fait 5 visites par jour pendant 200 jours, soit 1 000 visites. Effectif = 8 880 / 1 000 = 8,88, donc 9 vendeurs.

Organisation : par zone géographique (simple, déplacements réduits), par produit (expertise technique), par type de clients (grands comptes, revendeurs, particuliers), ou mixte.

## 5. Animer, rémunérer et contrôler

Animer : recruter, former (produits, techniques de vente, outils numériques), motiver (objectifs clairs, reconnaissance, concours de ventes, réunions régulières), accompagner sur le terrain.

Rémunérer. Trois composantes :

- Fixe : sécurité pour le vendeur, rémunère aussi les tâches non commerciales (suivi, conseil) ; peu stimulant seul.
- Commission : pourcentage du chiffre d''affaires ou de la marge ; très motivante, mais revenu instable et risque de vente forcée.
- Prime : liée à un objectif (volume, nouveaux clients, recouvrement).

Exemple. Un vendeur de Kër Électro reçoit 250 000 FCFA de fixe mensuel, 2 % du chiffre d''affaires et une prime de 100 000 FCFA si le CA mensuel atteint 10 000 000 FCFA. Avec un CA de 12 000 000 FCFA : 250 000 + 240 000 + 100 000 = 590 000 FCFA. Avec 9 000 000 FCFA : 250 000 + 180 000 = 430 000 FCFA (pas de prime). Les montants sont fictifs ; la rémunération doit respecter le droit du travail en vigueur et les conventions applicables (le Sénégal prépare un nouveau Code du travail : se référer aux textes en vigueur).

Contrôler : indicateurs d''activité (visites, devis), de résultats (CA, marge, nouveaux clients), de qualité (satisfaction, réclamations, impayés), et coût de la force de vente rapporté au CA.

## Points clés

- CRM : connaître, personnaliser, fidéliser de façon rentable.
- RFM pour segmenter ; CLV = m × r / (1 + i − r) pour valoriser.
- Effectif = charge de visites / capacité d''un vendeur, arrondi au supérieur.
- Rémunération : fixe, commission, prime, à équilibrer selon les objectifs.

## Exercices pratiques

- Exercice 1. Une entreprise avait 1 500 clients au 1er janvier et en conserve 1 275 au 31 décembre (hors nouveaux). Calculez attrition et rétention.
- Exercice 2. Calculez la CLV avec m = 30 000 FCFA, r = 0,7, i = 12 %.
- Exercice 3. Clients : 80 A visités 24 fois par an, 250 B 12 fois, 400 C 6 fois. Un vendeur fait 6 visites par jour sur 210 jours. Combien de vendeurs ?
- Exercice 4. Option A : fixe 300 000 FCFA + 1 % du CA. Option B : fixe 150 000 FCFA + 3 % du CA. À partir de quel CA mensuel l''option B est-elle plus avantageuse pour le vendeur ? Comparez pour 5 000 000 et 10 000 000 FCFA.
- Exercice 5. Proposez trois actions de fidélisation pour une pharmacie de quartier à Thiès.
- Exercice 6. Cas pratique. Les vendeurs de Kër Électro, payés surtout à la commission sur le CA, accordent des remises excessives et négligent le recouvrement. Diagnostiquez et proposez une nouvelle formule de rémunération.

## Corrigé

- Exercice 1. Clients perdus = 225 ; attrition = 225 / 1 500 = 15 % ; rétention = 85 %.
- Exercice 2. CLV = 30 000 × 0,7 / (1 + 0,12 − 0,7) = 21 000 / 0,42 = 50 000 FCFA.
- Exercice 3. Charge = 1 920 + 3 000 + 2 400 = 7 320 visites. Capacité = 6 × 210 = 1 260. Effectif = 5,81, donc 6 vendeurs.
- Exercice 4. Égalité : 300 000 + 0,01 × CA = 150 000 + 0,03 × CA, d''où CA = 150 000 / 0,02 = 7 500 000 FCFA. Au-delà, B est plus avantageuse. À 5 000 000 : A = 350 000, B = 300 000. À 10 000 000 : A = 400 000, B = 450 000.
- Exercice 5. Carte de fidélité avec avantages sur la parapharmacie ; rappel par message du renouvellement des traitements, avec l''accord du client ; conseils gratuits (prise de tension) et accueil personnalisé.
- Exercice 6. Une commission sur le CA pousse à vendre à tout prix, même à perte, et ne récompense pas l''encaissement. Proposition : fixe pour la sécurité, commission calculée sur la marge (et non sur le CA), versée après encaissement, et prime sur objectifs de recouvrement et de nouveaux clients. Plafonner les remises que le vendeur peut accorder seul.', 'texte', 60, false, 30
from public.courses c where c.slug = 'lic-mkt-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Gestion de la relation client et force de vente : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Commerce international : l''essentiel pour l''examen', '## Objectifs de la leçon

- Choisir un marché étranger et un mode d''entrée.
- Connaître les principes des incoterms et le transfert des frais et des risques.
- Calculer un prix export du départ usine au CIF.
- Choisir un moyen de paiement international et gérer le risque de change.

## 1. Pourquoi et comment exporter

Exporter permet d''élargir le marché et de réduire la dépendance au marché national. Pour une entreprise sénégalaise, les marchés proches de l''UEMOA et de la CEDEAO offrent des avantages (proximité, habitudes de consommation voisines, règles d''origine favorables entre pays membres sous conditions), tandis que l''Europe, l''Amérique ou l''Asie exigent souvent des normes plus strictes.

Démarche : diagnostic export, sélection des pays, étude du marché cible, adaptation de l''offre, choix du mode d''entrée, prospection.

Modes d''entrée :

- Export indirect : on vend à un intermédiaire national (société de commerce, centrale d''achat) qui exporte. Peu de risques, peu de contrôle.
- Export direct : on vend soi-même à des clients étrangers, via des agents commerciaux (rémunérés à la commission) ou des importateurs-distributeurs (qui achètent et revendent).
- Export concerté : groupement d''exportateurs, franchise, licence.
- Implantation : filiale commerciale ou de production. Contrôle maximal, risque maximal.

Documents courants : facture commerciale, liste de colisage, document de transport (connaissement maritime, lettre de transport aérien ou routier), certificat d''origine, certificats sanitaires ou phytosanitaires selon les produits, déclaration en douane. Les exigences varient selon le pays et le produit : on les vérifie auprès des services compétents.

## 2. Les incoterms en principes

Les incoterms sont des règles publiées par la Chambre de commerce internationale. Ils précisent la répartition entre vendeur et acheteur des frais, des risques et de certaines formalités (dédouanement, assurance) ; ils ne règlent ni le transfert de propriété ni le paiement. La version la plus récente est la version 2020, qui compte onze règles ; le contrat doit toujours préciser l''incoterm, le lieu et la version, par exemple « FOB Port de Dakar Incoterms 2020 ».

Règles utilisables pour tous modes de transport :

- EXW (à l''usine) : l''acheteur prend tout en charge depuis les locaux du vendeur, y compris le dédouanement export.
- FCA (franco transporteur) : le vendeur remet la marchandise dédouanée export au transporteur choisi par l''acheteur.
- CPT et CIP (port payé ; port payé, assurance comprise) : le vendeur paie le transport jusqu''à destination, mais le risque passe à l''acheteur dès la remise au premier transporteur ; avec CIP, le vendeur souscrit aussi l''assurance.
- DAP (rendu au lieu de destination), DPU (rendu au lieu de destination déchargé), DDP (rendu droits acquittés) : le vendeur supporte le risque jusqu''à destination ; en DDP, il paie aussi le dédouanement et les droits à l''importation.

Règles réservées au transport maritime et fluvial :

- FAS (franco le long du navire), FOB (franco à bord) : le risque passe au port d''embarquement.
- CFR (coût et fret), CIF (coût, assurance et fret) : le vendeur paie le fret jusqu''au port de destination (et l''assurance en CIF), mais le risque passe à l''acheteur dès le chargement à bord au port d''embarquement.

Schéma décrit : une ligne horizontale de l''usine du vendeur à l''entrepôt de l''acheteur. Les règles en E et F s''arrêtent tôt ; les règles en C font payer le transport au vendeur, sans lui laisser le risque ; les règles en D font tout supporter au vendeur jusqu''à destination.

## 3. Calculer un prix export

On construit le prix étape par étape. Exemple : Sahel Mangues SARL, entreprise fictive de Ziguinchor, exporte des mangues séchées vers l''Europe.

- Prix départ usine (EXW) : 9 800 000 FCFA.
- Plus transport jusqu''au port de Dakar : 1 200 000 FCFA.
- Plus formalités et dédouanement export : 600 000 FCFA.
- Plus frais portuaires et de mise à bord : 400 000 FCFA.
- Prix FOB Dakar : 12 000 000 FCFA.
- Plus fret maritime jusqu''au port européen : 1 500 000 FCFA. Prix CFR = 13 500 000 FCFA.

Pour le CIF, l''assurance porte souvent sur 110 % de la valeur CIF (pratique courante, minimum prévu en CIF). Avec un taux de prime de 0,5 % (taux fictif pour l''exemple) : CIF = CFR / (1 − 1,1 × taux) = 13 500 000 / (1 − 0,0055) = 13 574 661 FCFA, dont une prime d''assurance de 74 661 FCFA. Vérification : 1,1 × 13 574 661 × 0,005 = 74 661.

Conversion : la parité entre le franc CFA et l''euro est fixe, 1 € = 655,957 FCFA. Prix CIF ≈ 13 574 661 / 655,957 ≈ 20 694,44 €.

## 4. Le paiement international

Moyens et techniques, du moins sûr au plus sûr pour l''exportateur :

- Virement après livraison (paiement sur compte ouvert) : simple et peu coûteux, mais l''exportateur supporte tout le risque d''impayé.
- Remise documentaire (encaissement documentaire) : la banque remet les documents à l''acheteur contre paiement ou acceptation d''un effet. Risque : l''acheteur peut refuser de lever les documents.
- Crédit documentaire : la banque de l''acheteur s''engage à payer si l''exportateur présente des documents conformes aux conditions du crédit ; il peut être confirmé par une banque du pays de l''exportateur. Très sûr, mais coûteux et exigeant : la moindre divergence documentaire peut bloquer le paiement.
- Paiement d''avance : idéal pour l''exportateur, difficile à obtenir.

Le risque de change. Avec la zone euro, il est neutralisé par la parité fixe. Avec une devise flottante comme le dollar, il existe. Exemple : Sahel Mangues facture 50 000 dollars. Au moment du contrat, 1 dollar vaut 600 FCFA (cours fictif) : recette attendue 30 000 000 FCFA. Au paiement, le dollar vaut 580 FCFA : recette 29 000 000 FCFA, soit une perte de change de 1 000 000 FCFA. Couvertures possibles : facturer en euros ou en FCFA, couverture à terme auprès de la banque, clauses d''ajustement.

## Points clés

- Incoterms : frais, risques, formalités ; toujours préciser le lieu et la version.
- En C, le vendeur paie le transport mais le risque passe au départ.
- CIF = CFR / (1 − 1,1 × taux de prime) ; 1 € = 655,957 FCFA.

## Exercices pratiques

- Exercice 1. Avec FOB Dakar, qui supporte le risque d''une avarie pendant la traversée ? Et en CIF ? Et en DAP ?
- Exercice 2. Prix FOB 8 000 000 FCFA ; fret 900 000 FCFA ; prime 0,4 % (taux fictif) sur 110 % du CIF. Calculez le CIF, la prime et le prix en euros.
- Exercice 3. Un exportateur facture 40 000 dollars. Cours à la signature : 610 FCFA ; au paiement : 590 FCFA (cours fictifs). Calculez le résultat de change.
- Exercice 4. Classez du plus risqué au moins risqué pour l''exportateur : crédit documentaire confirmé, virement après livraison, remise documentaire.
- Exercice 5. Cas pratique. Une coopérative fictive de Kaolack veut exporter de la farine de mil vers un nouveau client au Mali, puis vers l''Europe. Proposez un mode d''entrée, un incoterm et un moyen de paiement pour chaque destination.

## Corrigé

- Exercice 1. FOB : l''acheteur, car le risque passe une fois la marchandise à bord à Dakar. CIF : l''acheteur aussi, même si le vendeur a payé fret et assurance. DAP : le vendeur, jusqu''au lieu de destination convenu.
- Exercice 2. CFR = 8 900 000 FCFA. CIF = 8 900 000 / (1 − 0,0044) = 8 939 333 FCFA. Prime = 1,1 × 8 939 333 × 0,004 = 39 333 FCFA. En euros : 8 939 333 / 655,957 ≈ 13 627,93 €.
- Exercice 3. Recette attendue 24 400 000 FCFA ; recette réelle 23 600 000 FCFA ; perte de change 800 000 FCFA.
- Exercice 4. Virement après livraison, puis remise documentaire, puis crédit documentaire confirmé.
- Exercice 5. Mali : export direct à un importateur-distributeur, incoterm DAP ou FCA selon la logistique choisie, transport routier, monnaie commune de l''UEMOA donc pas de risque de change, paiement par acompte puis virement ou remise documentaire. Europe : passer d''abord par un importateur spécialisé, incoterm FOB ou FCA, crédit documentaire confirmé pour un nouveau client, facturation en euros (parité fixe), vérification préalable des normes sanitaires et d''étiquetage.', 'texte', 60, false, 40
from public.courses c where c.slug = 'lic-mkt-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Commerce international : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Licence 3 en Marketing et commerce (corrigé)', '## Présentation

Sujet d''entraînement, non officiel, sous forme de cas de synthèse de quatre heures. Barème indicatif, non officiel. Calculatrice autorisée.

## Le sujet

Sahel Agro Industries SA, groupe fictif installé à Dakar, transforme des produits agricoles. Il veut redéfinir sa stratégie, réorganiser sa force de vente et développer l''export.

Dossier 1 – Marketing stratégique (8 points). Données en millions de FCFA :

- Huile : CA 3 000 ; principal concurrent 2 000 ; croissance du marché 2 %.
- Jus : CA 600 ; leader 1 200 ; croissance 15 %.
- Farine infantile : CA 900 ; principal concurrent 600 ; croissance 12 %.

Questions :

- 1.1 Positionnez les DAS dans la matrice BCG (seuils : 10 % et 1) et calculez leur poids dans le CA. (3 points)
- 1.2 Commentez l''équilibre du portefeuille et recommandez une stratégie par DAS. (3 points)
- 1.3 Le groupe envisage de vendre sa farine infantile en Côte d''Ivoire. Situez ce choix dans la matrice d''Ansoff. (2 points)

Dossier 2 – Relation client et force de vente (6 points)

- 2.1 Un client détaillant achète 8 fois par an pour 12 000 FCFA ; taux de marge 25 % ; rétention 75 % ; taux d''actualisation 10 %. Calculez la valeur vie client. (2 points)
- 2.2 Clients : 200 A visités 12 fois par an, 500 B 6 fois, 800 C 2 fois. Un vendeur fait 4 visites par jour sur 220 jours. Calculez l''effectif nécessaire. (2 points)
- 2.3 Proposez une formule de rémunération cohérente avec l''objectif de conquérir de nouveaux détaillants. (2 points)

Dossier 3 – Commerce international (6 points). Expédition de farine vers l''Europe : FOB Dakar 15 000 000 FCFA ; fret 2 000 000 FCFA ; prime d''assurance 0,6 % (taux fictif) sur 110 % du CIF.

- 3.1 Calculez le prix CIF, la prime et le prix en euros. (3 points)
- 3.2 À quel moment le risque passe-t-il à l''acheteur en CIF ? (1 point)
- 3.3 Quel moyen de paiement recommandez-vous pour ce premier client ? (2 points)

## Corrigé détaillé

Dossier 1

- 1.1 Huile : PDM relative 3 000 / 2 000 = 1,5 ; croissance 2 % : vache à lait ; 66,7 % du CA (total 4 500). Jus : 600 / 1 200 = 0,5 ; croissance 15 % : dilemme ; 13,3 %. Farine infantile : 900 / 600 = 1,5 ; croissance 12 % : vedette ; 20 %.
- 1.2 Portefeuille globalement sain : la vache à lait finance la vedette et peut financer le dilemme. Risque : forte dépendance à l''huile (deux tiers du CA) sur un marché qui stagne. Recommandations : huile, rentabiliser et maîtriser les coûts ; farine infantile, investir pour garder le leadership (innovation, qualité, distribution en pharmacie) ; jus, décision à prendre : investir fortement sur un segment précis (jus locaux haut de gamme) ou se retirer si l''écart avec le leader est trop grand.
- 1.3 Produit actuel, marché nouveau : développement de marché.

Dossier 2

- 2.1 Marge annuelle = 8 × 12 000 × 0,25 = 24 000 FCFA. CLV = 24 000 × 0,75 / (1 + 0,10 − 0,75) = 18 000 / 0,35 = 51 429 FCFA.
- 2.2 Charge = 2 400 + 3 000 + 1 600 = 7 000 visites. Capacité = 4 × 220 = 880. Effectif = 7,95, soit 8 vendeurs.
- 2.3 Fixe modéré pour la sécurité ; commission sur la marge des ventes encaissées ; prime par nouveau détaillant actif (ayant passé au moins trois commandes) ; challenge trimestriel. Les montants doivent respecter la réglementation du travail en vigueur.

Dossier 3

- 3.1 CFR = 17 000 000 FCFA. CIF = 17 000 000 / (1 − 1,1 × 0,006) = 17 000 000 / 0,9934 = 17 112 945 FCFA. Prime = 1,1 × 17 112 945 × 0,006 = 112 945 FCFA. En euros : 17 112 945 / 655,957 ≈ 26 088,52 €.
- 3.2 Dès que la marchandise est à bord du navire au port de Dakar.
- 3.3 Crédit documentaire, de préférence confirmé, pour un premier client inconnu ; facturation en euros, sans risque de change grâce à la parité fixe.

## Exercices pratiques

- Exercice 1. Que signifie l''acronyme SMART ?
- Exercice 2. Quelle case de la BCG correspond à une croissance faible et une PDM relative de 0,4 ?
- Exercice 3. 120 promoteurs et 30 détracteurs sur 200 répondants : indicateur net de promoteurs ?
- Exercice 4. Quelle est la différence entre DAP et DDP ?
- Exercice 5. Citez deux documents d''exportation.
- Exercice 6. Un vendeur de Sahel Agro Industries peut choisir entre un fixe de 300 000 FCFA plus 1 % du CA mensuel et un fixe de 150 000 FCFA plus 3 % du CA. Il réalise en moyenne 6 000 000 FCFA par mois. Quelle option est la plus avantageuse pour lui ? À partir de quel CA l''autre option devient-elle meilleure ?

## Corrigé

- Exercice 1. Spécifique, mesurable, atteignable, réaliste, temporellement défini.
- Exercice 2. Poids mort.
- Exercice 3. 60 % − 15 % = 45.
- Exercice 4. En DDP, le vendeur supporte en plus le dédouanement à l''importation et les droits et taxes ; en DAP, ils restent à la charge de l''acheteur.
- Exercice 5. Facture commerciale et connaissement (ou liste de colisage, certificat d''origine).
- Exercice 6. À 6 000 000 FCFA : option 1 = 300 000 + 60 000 = 360 000 FCFA ; option 2 = 150 000 + 180 000 = 330 000 FCFA. L''option 1 est meilleure. Point d''égalité : 150 000 / 0,02 = 7 500 000 FCFA ; au-delà, l''option 2 devient plus avantageuse. Un vendeur qui pense progresser fortement peut préférer l''option 2, plus motivante.', 'texte', 60, false, 50
from public.courses c where c.slug = 'lic-mkt-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Licence 3 en Marketing et commerce (corrigé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Marketing stratégique', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 3 en marketing, commerce, gestion.
- Objectifs : mener un diagnostic PESTEL, cinq forces et SWOT ; positionner des DAS dans la matrice BCG ; choisir une voie de croissance avec Ansoff ; construire un plan marketing avec objectifs SMART.
- Matériel : diaporama, matrice BCG vierge, calculatrice.
- Prérequis : leçon « Marketing stratégique : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour à toutes et à tous. Nous changeons d''altitude : jusqu''ici, vous avez appris à fixer un prix ou à lancer une campagne. Aujourd''hui, vous allez raisonner comme un directeur général : dans quelles activités investir, lesquelles abandonner, où aller chercher la croissance. Notre fil rouge : Groupe Ndiambour Industries, groupe fictif de Louga, présent dans les produits laitiers, l''huile, les jus et les biscuits.

Visuel : diapositive titre et plan : diagnostic, BCG, Ansoff, plan marketing.

## 05:00 – 20:00 · Le diagnostic externe

Visuel : six cases PESTEL.

Premier outil, le PESTEL. Politique : les pouvoirs publics encouragent la transformation locale des produits agricoles ; c''est une opportunité. Économique : le pouvoir d''achat est sous pression, les clients arbitrent sur le prix. Socioculturel : l''urbanisation et le travail des femmes augmentent la demande de produits pratiques. Technologique : le paiement mobile et les réseaux sociaux transforment la distribution et la communication. Écologique : les emballages plastiques sont de plus en plus critiqués. Légal : les normes sanitaires et d''étiquetage se renforcent.

Attention à l''erreur classique : faire une liste sans conclusion. Chaque facteur doit être qualifié d''opportunité ou de menace pour l''entreprise étudiée.

Deuxième outil, les cinq forces de Porter. Pour l''huile de Ndiambour : concurrence intense entre marques locales et importées ; menace de nouveaux entrants modérée, car il faut une usine et un réseau ; substituts limités ; clients, c''est-à-dire grossistes et grandes surfaces, puissants ; fournisseurs de graines plus ou moins puissants selon les récoltes. Conclusion : marché peu attractif en termes de marges, où il faut être très efficace sur les coûts.

Question à poser : un marché où les clients sont très concentrés, est-ce une opportunité ou une menace ? Réponse : plutôt une menace, car leur pouvoir de négociation est fort.

## 20:00 – 30:00 · Diagnostic interne et SWOT

Le diagnostic interne recense les ressources et les compétences. Ndiambour possède une marque connue dans le nord du pays, une usine récente pour les produits laitiers, un réseau de grossistes solide ; mais sa présence à Dakar est faible et ses emballages vieillissent.

Visuel : SWOT en quatre cases.

Forces : marque régionale, usine laitière, réseau de grossistes. Faiblesses : faible présence à Dakar, emballages. Opportunités : urbanisation, demande de produits locaux. Menaces : concurrence importée, hausse des coûts des matières premières. Et maintenant la question qui rapporte des points : que fait-on de cette SWOT ? On croise. Force et opportunité : utiliser l''usine laitière pour conquérir Dakar. Faiblesse et menace : moderniser les emballages avant que les produits importés ne prennent la place.

## 30:00 – 45:00 · La matrice BCG : exercice commenté

Visuel : matrice à quatre cases, croissance verticale, part de marché relative horizontale.

Calculons. Produits laitiers : 1 200 millions contre 800 pour le principal concurrent, part relative 1,5 ; croissance 14 %. Au-dessus de 10 % et au-dessus de 1 : vedette. Huile : 2 000 contre 1 000, part relative 2 ; croissance 3 % : vache à lait. Jus : 300 contre 1 500 pour le leader, part relative 0,2 ; croissance 18 % : dilemme. Biscuits : 250 contre 1 250, part relative 0,2 ; croissance 2 % : poids mort.

Poids dans le chiffre d''affaires : total 3 750 millions. Huile 53,3 %, produits laitiers 32 %, jus 8 %, biscuits 6,7 %.

Interprétation. Le portefeuille est plutôt équilibré : une vache à lait solide finance une vedette. Le jus est un pari : il faudrait beaucoup investir pour rattraper un leader cinq fois plus gros. Les biscuits pèsent peu et ne rapportent guère : candidats à la cession. Dans votre copie, n''oubliez pas les limites : deux critères seulement, des seuils conventionnels, et l''hypothèse que la part de marché garantit la rentabilité, ce qui n''est pas toujours vrai sur des marchés où les petits acteurs spécialisés réussissent.

## 45:00 – 50:00 · Quiz interactif

Mettez en pause.

- Question 1 : part relative 0,8 et croissance 4 %, quelle case ? Réponse : poids mort.
- Question 2 : quelle case finance les autres ? Réponse : la vache à lait.
- Question 3 : dans la SWOT, les opportunités sont-elles internes ou externes ? Réponse : externes.

## 50:00 – 1:03:00 · Ansoff et stratégies concurrentielles

Visuel : matrice d''Ansoff deux sur deux.

Quatre voies de croissance. Pénétration : vendre plus de yaourts aux clients actuels, par exemple avec de nouveaux formats ou une meilleure présence en boutique. Développement de marché : vendre les yaourts à Dakar ou en Mauritanie. Développement de produit : lancer un fromage frais pour les clients actuels. Diversification : se lancer dans une activité sans lien, comme une clinique vétérinaire ; c''est la voie la plus risquée car l''entreprise ne maîtrise ni le produit ni le marché.

Porter propose trois stratégies génériques. Domination par les coûts : être le moins cher à produire, ce qui convient à l''huile. Différenciation : offrir quelque chose de perçu comme unique, comme un yaourt au lait local. Focalisation : se concentrer sur un segment, par exemple les jus haut de gamme pour les hôtels et restaurants. Le danger, selon Porter, est de rester « coincé au milieu », ni moins cher ni différent.

Question à poser : pour le jus, dilemme face à un leader cinq fois plus gros, quelle stratégie ? Réponse possible : la focalisation sur un segment où le leader est faible, plutôt qu''un affrontement frontal.

On classe aussi les entreprises selon leur position. Le leader défend sa place et cherche à agrandir le marché. Le challenger attaque le leader, de front ou sur ses points faibles. Le suiveur s''aligne sans provoquer. Le spécialiste se concentre sur une niche qu''il domine. Ndiambour est challenger sur les produits laitiers à Dakar, mais leader de l''huile dans sa région : la stratégie n''est donc pas la même d''un DAS à l''autre.

## 1:03:00 – 1:18:00 · Le plan marketing

Visuel : les six rubriques du plan marketing.

Le plan marketing est le document qui transforme la stratégie en actions. Situation : diagnostic et SWOT. Objectifs SMART. Comparons. « Vendre plus » : mauvais objectif. « Porter la part de marché du yaourt à Dakar de 5 % à 9 % d''ici décembre, en référençant 300 nouveaux points de vente » : bon objectif, spécifique, mesurable, atteignable si les moyens suivent, réaliste, daté.

Stratégie : cible des familles urbaines, positionnement « lait local, fraîcheur garantie », développement de marché vers Dakar. Plan d''action : produit avec nouvel emballage, prix aligné sur les marques nationales, distribution par deux distributeurs dakarois, communication radio et réseaux sociaux, dégustations. Budget : par exemple 5 % du chiffre d''affaires prévu. Si le CA prévu est de 800 millions, le budget est de 40 millions, réparti en 16 millions de communication, 14 millions de force de vente et 10 millions de promotion. Contrôle : tableau de bord mensuel avec part de marché, nombre de points de vente, ventes par zone, notoriété.

## 1:18:00 – 1:26:00 · Correction commentée d''un portefeuille déséquilibré

Exercice : X, 500 contre 250, croissance 16 % ; Y, 1 500 contre 1 800, croissance 4 % ; Z, 200 contre 800, croissance 20 %. X a une part relative de 2 : vedette. Y, 0,83 : poids mort, et il représente 68,2 % du chiffre d''affaires. Z, 0,25 : dilemme. Diagnostic : aucune vache à lait, et le cœur de l''entreprise est un poids mort. C''est un portefeuille en danger : il faut soit redresser Y en réduisant ses coûts ou en le différenciant, soit accélérer X pour qu''il devienne la future vache à lait quand son marché ralentira. Ce que le correcteur valorise : un diagnostic global du portefeuille, pas seulement le classement des DAS un par un.

## 1:26:00 – 1:30:00 · Synthèse et évaluation finale

Retenez : PESTEL et cinq forces pour l''externe, ressources et compétences pour l''interne, SWOT croisée ; BCG ; Ansoff ; Porter ; plan marketing avec objectifs SMART.

- Question 1 : citez les six dimensions du PESTEL. Réponse : politique, économique, socioculturelle, technologique, écologique, légale.
- Question 2 : CA 900, principal concurrent 600, croissance 12 % : case BCG ? Réponse : vedette (1,5 et 12 %).
- Question 3 : lancer un nouveau produit pour les clients actuels, c''est quelle voie d''Ansoff ? Réponse : développement de produit.
- Question 4 : citez les trois stratégies génériques de Porter. Réponse : domination par les coûts, différenciation, focalisation.
- Question 5 : que signifie le T de SMART ? Réponse : temporellement défini, c''est-à-dire daté.

Merci et à bientôt.', 'video', 90, false, 60
from public.courses c where c.slug = 'lic-mkt-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Marketing stratégique');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Gestion de la relation client et force de vente', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 3 en marketing, commerce, gestion.
- Objectifs : expliquer la démarche CRM ; mesurer attrition, rétention et recommandation ; segmenter par RFM ; calculer la valeur vie client ; dimensionner une force de vente ; concevoir une rémunération et un contrôle des vendeurs.
- Matériel : diaporama, extrait fictif de base clients, calculatrice.
- Prérequis : leçon « Gestion de la relation client et force de vente : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour à toutes et à tous. Aujourd''hui, nous parlons des deux piliers de la performance commerciale : les clients que l''on garde et les vendeurs qui les servent. Notre fil rouge est Kër Électro, distributeur fictif d''électroménager à Dakar, qui vend à des particuliers et à des revendeurs.

Visuel : diapositive titre, plan : CRM, mesures, RFM, valeur client, force de vente.

## 05:00 – 18:00 · La démarche CRM

Le CRM, c''est d''abord une philosophie : traiter chaque client comme une relation dans la durée, et non comme une transaction isolée. C''est ensuite un outil : une base de données qui enregistre qui est le client, ce qu''il a acheté, quand, ses appels, ses réclamations. Beaucoup de commerces sénégalais font du CRM sans le savoir : le boutiquier qui connaît chaque famille du quartier et lui fait crédit. Le défi d''une entreprise en croissance est de conserver cette connaissance quand on passe de cent à dix mille clients.

Pourquoi fidéliser ? Parce que conquérir coûte généralement plus cher que garder, et qu''un client fidèle achète plus, coûte moins à servir et recommande. Mais attention : on ne fidélise pas tout le monde à n''importe quel prix. Un client qui n''achète qu''en promotion et réclame sans cesse peut coûter plus qu''il ne rapporte.

Concrètement, comment démarrer ? Kër Électro commence par une fiche client unique : nom, téléphone, quartier, achats, garanties, réclamations. Chaque vendeur et chaque technicien du service après-vente l''alimente. Au bout de quelques mois, l''entreprise peut répondre à des questions simples mais décisives : qui sont nos vingt meilleurs clients ? Qui n''a rien acheté depuis six mois ? Quelles réclamations reviennent le plus souvent ? Le logiciel n''est qu''un outil : sans discipline de saisie, la base est vide ou fausse, et le CRM échoue.

Un point juridique important : collecter et utiliser des données personnelles impose de respecter la réglementation sur la protection des données en vigueur et d''obtenir l''accord du client pour les messages commerciaux. Renseignez-vous sur les textes applicables dans votre pays.

## 18:00 – 30:00 · Mesurer : attrition, rétention, recommandation

Kër Électro avait 2 000 clients actifs en janvier ; 300 n''ont plus rien acheté depuis un an. Attrition : 300 sur 2 000, soit 15 %. Rétention : 85 %.

La recommandation se mesure souvent par une question : « Sur une échelle de 0 à 10, recommanderiez-vous Kër Électro à un proche ? » Ceux qui répondent 9 ou 10 sont des promoteurs, de 0 à 6 des détracteurs. Sur 300 répondants, 180 promoteurs, soit 60 %, et 60 détracteurs, soit 20 %. Indicateur net : 60 moins 20, soit 40. On suit son évolution dans le temps et l''on contacte les détracteurs pour comprendre leur insatisfaction.

Le traitement des réclamations est un moment de vérité. Un client dont le problème est résolu vite et bien devient souvent plus fidèle qu''un client qui n''a jamais eu de problème. Méthode : accuser réception rapidement, s''excuser sans chercher de coupable, proposer une solution concrète et un délai, puis rappeler pour vérifier la satisfaction.

## 30:00 – 40:00 · La segmentation RFM

Visuel : extrait de base clients avec dernière date d''achat, nombre d''achats, montant.

Récence, fréquence, montant. Madame Diop a acheté la semaine dernière, six fois cette année, pour 600 000 francs : notes élevées partout, cliente à choyer, avec invitation aux ventes privées. Monsieur Fall a dépensé 900 000 francs l''an dernier mais rien depuis huit mois : bon montant, récence faible, client à réactiver avec un appel personnalisé. Un jeune couple a fait un premier achat le mois dernier : nouveau client à développer avec un message de bienvenue et une offre sur les accessoires. La RFM dit à qui parler, avec quel message, et combien dépenser.

## 40:00 – 45:00 · Quiz interactif

Mettez en pause.

- Question 1 : 400 clients perdus sur 2 500 : attrition ? Réponse : 16 %.
- Question 2 : que signifie le R de RFM ? Réponse : récence.
- Question 3 : 50 % de promoteurs et 30 % de détracteurs : indicateur net ? Réponse : 20.

## 45:00 – 58:00 · La valeur vie client

Un client achète 6 fois par an pour 25 000 francs, avec 30 % de marge : 45 000 francs de marge par an. Sur 4 ans, sans actualisation : 180 000 francs. Mais tous les clients ne restent pas 4 ans, et un franc futur vaut moins qu''un franc aujourd''hui. D''où la formule : marge annuelle fois rétention, divisé par un plus taux d''actualisation moins rétention. Avec 80 % de rétention et 10 % d''actualisation : 45 000 fois 0,8, soit 36 000, divisé par 0,3 : 120 000 francs.

À quoi sert ce chiffre ? À décider combien on peut dépenser pour conquérir un client. Si la conquête coûte 30 000 francs, le rapport est de 4 : c''est rentable. Si elle coûtait 150 000 francs, on détruirait de la valeur. Et regardez l''effet de la rétention : avec 70 % de rétention et 12 % d''actualisation pour une marge de 30 000 francs, on obtient 21 000 divisé par 0,42, soit 50 000 francs. Améliorer la rétention de quelques points augmente fortement la valeur du portefeuille clients.

## 58:00 – 1:10:00 · Dimensionner et organiser la force de vente

Méthode de la charge de travail. Kër Électro a 120 revendeurs A visités deux fois par mois, soit 24 fois par an ; 300 B visités chaque mois ; 600 C visités chaque trimestre. Charge : 2 880 plus 3 600 plus 2 400, soit 8 880 visites. Capacité d''un vendeur : 5 visites par jour, 200 jours par an, soit 1 000 visites. Effectif : 8,88. On arrondit toujours au supérieur : 9 vendeurs. Pourquoi ? Parce qu''avec 8, des clients ne seraient pas visités comme prévu.

Organisation. Par zone : Dakar Plateau, Pikine-Guédiawaye, Rufisque, régions ; simple et économique en déplacements. Par produit : un spécialiste froid, un spécialiste cuisson, utile si les produits sont techniques. Par client : une équipe grands comptes pour les chaînes de magasins, une équipe revendeurs. Souvent, on combine.

## 1:10:00 – 1:22:00 · Animer et rémunérer

Animer, c''est recruter les bons profils, former en continu, fixer des objectifs clairs, reconnaître les réussites et accompagner sur le terrain. Une réunion commerciale hebdomadaire courte, avec les chiffres de la semaine et le partage d''une bonne pratique, vaut mieux qu''un long discours mensuel.

Rémunérer. Exemple : fixe de 250 000 francs, commission de 2 % du chiffre d''affaires, prime de 100 000 francs au-delà de 10 millions de CA mensuel. Montants fictifs. À 12 millions : 250 000 plus 240 000 plus 100 000, soit 590 000 francs. À 9 millions : 250 000 plus 180 000, soit 430 000 francs. Toute formule doit respecter le droit du travail en vigueur ; le Sénégal prépare un nouveau Code du travail, référez-vous aux textes applicables au moment des faits.

Comparer deux formules. Option A : 300 000 plus 1 %. Option B : 150 000 plus 3 %. Point d''égalité : 150 000 divisé par 0,02, soit 7,5 millions. En dessous, A est meilleure pour le vendeur ; au-dessus, B. Un vendeur confiant choisira B. Pour l''entreprise, B motive davantage mais rend le coût plus variable.

Piège à éviter : commissionner sur le chiffre d''affaires quand les vendeurs peuvent accorder des remises. Ils vendent beaucoup, mais à marge faible. Mieux vaut commissionner sur la marge, après encaissement.

## 1:22:00 – 1:27:00 · Correction commentée d''un cas

Les vendeurs de Kër Électro accordent trop de remises et négligent le recouvrement. Diagnostic : la formule récompense le volume et non la rentabilité ni l''encaissement. Correction : fixe de sécurité ; commission sur la marge des ventes encaissées ; prime sur objectifs de recouvrement et de nouveaux clients ; plafonnement des remises accordées sans validation. Contrôle mensuel : CA, marge, délai d''encaissement, nombre de visites.

## 1:27:00 – 1:30:00 · Synthèse et évaluation finale

- Question 1 : formule de la CLV avec rétention et actualisation ? Réponse : m × r / (1 + i − r).
- Question 2 : charge de 7 000 visites, capacité de 880 par vendeur : effectif ? Réponse : 7,95, donc 8 vendeurs.
- Question 3 : citez les trois composantes de la rémunération. Réponse : fixe, commission, prime.
- Question 4 : pourquoi commissionner sur la marge plutôt que sur le CA ? Réponse : pour éviter les remises excessives et protéger la rentabilité.
- Question 5 : que signifie le M de RFM ? Réponse : montant.

Merci pour votre attention.', 'video', 90, false, 70
from public.courses c where c.slug = 'lic-mkt-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Gestion de la relation client et force de vente');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Commerce international', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 3 en marketing, commerce, gestion.
- Objectifs : choisir un mode d''entrée ; expliquer les principes des incoterms et le transfert des frais et des risques ; calculer un prix FOB, CFR et CIF ; choisir un moyen de paiement et gérer le risque de change.
- Matériel : diaporama, schéma du trajet de la marchandise, calculatrice.
- Prérequis : leçon « Commerce international : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour à toutes et à tous. Le commerce international fait peur à beaucoup d''étudiants à cause des sigles. Promis : à la fin de cette séance, FOB, CIF ou DAP n''auront plus de secret pour vous, et vous saurez calculer un prix export. Notre fil rouge : Sahel Mangues SARL, entreprise fictive de Ziguinchor qui sèche des mangues et veut vendre en Europe et dans la sous-région.

Visuel : diapositive titre et plan : décider d''exporter, incoterms, prix, paiement.

## 05:00 – 18:00 · Décider d''exporter et choisir un mode d''entrée

Pourquoi Sahel Mangues exporterait-elle ? La saison de la mangue est courte, la production est abondante et le marché local ne peut pas tout absorber. Le séchage permet de conserver, et l''export permet de mieux valoriser. Mais avant de partir, un diagnostic : l''entreprise a-t-elle la capacité de production régulière, la trésorerie pour attendre les paiements, les compétences pour gérer les documents ?

Ensuite, le choix des pays. Dans l''UEMOA, la monnaie est commune et les produits originaires peuvent circuler sous conditions avec des avantages. L''Europe offre un marché plus riche, mais avec des normes sanitaires et d''étiquetage exigeantes.

Les modes d''entrée. Indirect : Sahel Mangues vend à une société de commerce dakaroise qui exporte. Peu de risques, peu de marge et aucune relation avec le client final. Direct : vente à un importateur européen, ou recours à un agent commercial payé à la commission. Concerté : groupement avec d''autres producteurs de Casamance pour partager les coûts de salon et de certification. Implantation : filiale à l''étranger, rarement réaliste pour une PME au début.

Les documents suivent la marchandise : facture commerciale, liste de colisage, document de transport comme le connaissement maritime, certificat d''origine, certificats sanitaires pour les produits alimentaires. Une erreur sur l''un d''eux peut bloquer la marchandise en douane ou retarder le paiement.

Question à poser : quel mode recommandez-vous pour une première expérience ? Réponse attendue : l''export indirect ou direct via un importateur, pour limiter le risque.

## 18:00 – 38:00 · Les incoterms

Visuel : une ligne horizontale de l''usine de Ziguinchor à l''entrepôt de l''acheteur en Europe, avec les étapes : usine, transport intérieur, port de Dakar, navire, port européen, transport final, entrepôt.

Les incoterms sont des règles de la Chambre de commerce internationale. La version actuelle date de 2020 et compte onze règles. Ils répondent à trois questions : qui paie quoi, qui supporte le risque jusqu''où, qui fait les formalités douanières et l''assurance. Ils ne disent rien du transfert de propriété ni du paiement. Toujours écrire l''incoterm, le lieu et la version : « FOB Port de Dakar Incoterms 2020 ».

Groupe E : EXW, à l''usine. Le vendeur met la marchandise à disposition chez lui ; l''acheteur fait tout le reste, même le dédouanement export. Peu pratique pour un acheteur étranger.

Groupe F : FCA, FAS, FOB. Le vendeur remet la marchandise au transporteur choisi par l''acheteur. En FOB, le risque passe quand la marchandise est à bord du navire au port de Dakar. Le transport principal est payé par l''acheteur.

Groupe C : CPT, CIP, CFR, CIF. C''est le piège classique. Le vendeur paie le transport principal, et en CIF ou CIP l''assurance, mais le risque passe à l''acheteur au départ, comme en F. Donc en CIF, si le navire subit une avarie, c''est l''acheteur qui supporte le risque, couvert par l''assurance souscrite par le vendeur à son profit.

Groupe D : DAP, DPU, DDP. Le vendeur supporte le risque jusqu''à destination. En DPU, il décharge ; en DDP, il paie même les droits à l''importation.

Enfin, quatre règles sont réservées au maritime : FAS, FOB, CFR, CIF. Pour un conteneur ou un camion, on préfère FCA, CPT, CIP.

## 38:00 – 43:00 · Quiz interactif

Mettez en pause.

- Question 1 : en CFR, qui paie le fret maritime ? Réponse : le vendeur.
- Question 2 : en CFR, qui supporte le risque pendant la traversée ? Réponse : l''acheteur.
- Question 3 : pour un camion vers Bamako, peut-on utiliser FOB ? Réponse : non, FOB est réservé au transport maritime et fluvial ; on choisit par exemple FCA, CPT ou DAP.

## 43:00 – 1:00:00 · Calculer un prix export : exercice commenté

Visuel : escalier de prix.

Prix départ usine : 9 800 000 francs. Transport jusqu''à Dakar : 1 200 000. Dédouanement export : 600 000. Frais portuaires et mise à bord : 400 000. Total FOB : 12 000 000 francs. Ajoutons le fret maritime, 1 500 000 : CFR, 13 500 000.

Pour le CIF, l''assurance porte sur 110 % de la valeur CIF. Le problème, c''est que la prime dépend du CIF, qui dépend de la prime. On résout : CIF égale CFR plus 1,1 fois taux fois CIF, donc CIF égale CFR divisé par un moins 1,1 fois le taux. Avec un taux de 0,5 %, fictif pour l''exemple : 1,1 fois 0,005 égale 0,0055. 13 500 000 divisé par 0,9945 égale 13 574 661 francs. La prime vaut 74 661 francs.

Conversion en euros, avec la parité fixe : 1 euro égale 655,957 francs CFA. 13 574 661 divisé par 655,957 donne environ 20 694,44 euros. Grâce à la parité fixe, Sahel Mangues n''a pas de risque de change si elle facture en euros.

Deuxième calcul, à faire seuls puis vérifier : FOB 8 000 000, fret 900 000, taux 0,4 %. CFR 8 900 000 ; CIF 8 900 000 divisé par 0,9956, égale 8 939 333 ; prime 39 333 ; environ 13 627,93 euros.

## 1:00:00 – 1:15:00 · Le paiement international

Visuel : échelle de sécurité pour l''exportateur, du virement après livraison au paiement d''avance.

Virement après livraison : simple, peu coûteux, mais l''exportateur fait entièrement confiance à l''acheteur. À réserver aux clients connus. Remise documentaire : la banque ne remet les documents qui permettent de retirer la marchandise que contre paiement ou acceptation d''un effet. Mieux, mais l''acheteur peut refuser de lever les documents, et la marchandise reste bloquée au port d''arrivée. Crédit documentaire : la banque de l''acheteur s''engage à payer si les documents sont conformes. S''il est confirmé par une banque du pays de l''exportateur, celui-ci est protégé même contre le risque lié à la banque ou au pays de l''acheteur. Revers : coût et rigueur ; une simple erreur de date ou de poids sur un document peut retarder le paiement. Paiement d''avance : idéal, mais rarement accepté.

Le risque de change. Avec la zone euro, la parité fixe le neutralise. Avec le dollar, il existe. Sahel Mangues facture 50 000 dollars à un client américain. Cours à la signature, fictif : 600 francs, soit 30 millions attendus. Au paiement : 580 francs, soit 29 millions. Perte : 1 million. Solutions : facturer en euros ou en francs CFA quand c''est possible, ou couvrir par une opération à terme avec sa banque.

## 1:15:00 – 1:25:00 · Correction commentée d''un cas

Une coopérative de Kaolack veut exporter de la farine de mil vers le Mali, puis vers l''Europe. Pour le Mali : vente à un importateur-distributeur, transport routier, incoterm FCA ou DAP selon qui organise le camion, pas de risque de change grâce à la monnaie commune, paiement par acompte puis solde à la livraison ou par remise documentaire. Pour l''Europe : importateur spécialisé, incoterm FCA ou FOB, crédit documentaire confirmé pour un premier client, facturation en euros, et vérification préalable des normes sanitaires et d''étiquetage. Ce que le correcteur valorise : des choix différents selon la destination, chacun justifié.

## 1:25:00 – 1:30:00 · Synthèse et évaluation finale

- Question 1 : que règlent les incoterms ? Réponse : la répartition des frais, des risques et de certaines formalités entre vendeur et acheteur.
- Question 2 : en FOB, quand le risque passe-t-il à l''acheteur ? Réponse : quand la marchandise est à bord du navire au port d''embarquement.
- Question 3 : CFR 10 000 000, taux 0,5 % sur 110 % : CIF ? Réponse : 10 000 000 / 0,9945 ≈ 10 055 304 francs.
- Question 4 : citez le moyen de paiement le plus sûr pour l''exportateur après le paiement d''avance. Réponse : le crédit documentaire confirmé.
- Question 5 : combien vaut un euro en francs CFA ? Réponse : 655,957 francs, parité fixe.

Un dernier conseil pour l''examen : dans tout exercice d''incoterm, dessinez rapidement la ligne du trajet sur votre brouillon et placez-y le point de transfert des frais et celui du risque. Ce petit schéma évite la plupart des erreurs.

Merci à toutes et à tous, et bonne réussite à vos examens de fin de Licence.', 'video', 90, false, 80
from public.courses c where c.slug = 'lic-mkt-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Commerce international');
