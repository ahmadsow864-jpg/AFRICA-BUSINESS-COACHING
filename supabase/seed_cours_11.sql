-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Cours (partie 11/21). À exécuter après seed.sql.

-- Cours : Économie Licence 1 : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'lic-eco-l1', (select id from public.levels where name = 'Licence 1'), null, 'Économie', 'Économie Licence 1 : réussir ses examens', 'Préparation aux partiels et examens semestriels de la Licence 1 en sciences économiques (système LMD, contexte Sénégal et UEMOA). Le cours couvre la microéconomie 1 (consommateur, producteur, offre et demande, élasticités, équilibre), la macroéconomie 1 (comptabilité nationale, PIB, inflation, chômage, circuit économique) et les mathématiques pour économistes (fonctions, dérivées, optimisation simple). Fiches, exercices corrigés, sujet type et trois cours vidéo de 1h30. Prérequis : mathématiques du baccalauréat.', true, 361
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Licence 1 en Économie', '## Objectifs de la leçon

- Comprendre l''organisation de la Licence 1 d''économie dans le système LMD.
- Identifier les matières clés de l''année et ce que les examinateurs attendent.
- Maîtriser une méthode de révision et un plan de six semaines avant les examens.

## Le système LMD en Licence 1

Le système LMD (Licence, Master, Doctorat) organise les études universitaires du Sénégal et des autres pays de l''UEMOA. La licence se prépare en six semestres ; la Licence 1 correspond aux semestres 1 et 2. Chaque semestre est découpé en unités d''enseignement (UE), qui regroupent plusieurs éléments constitutifs (les matières). Chaque UE donne droit à un nombre de crédits lorsqu''elle est validée. Dans le schéma LMD courant, un semestre représente 30 crédits et la licence 180 crédits, mais la répartition exacte des crédits, les coefficients, les règles de compensation entre matières et entre UE, ainsi que les conditions de passage en deuxième année, sont fixés par la maquette et le règlement des examens de votre université ou de votre école. Procurez-vous ce règlement dès la rentrée et lisez-le : beaucoup d''étudiants découvrent trop tard qu''une note éliminatoire ou une absence au contrôle continu les empêche de valider une UE.

L''évaluation combine en général un contrôle continu (devoirs, travaux dirigés, interrogations) et un examen terminal en fin de semestre. Une session de rattrapage est souvent prévue pour les UE non validées. Retenez une règle simple : chaque note de TD compte, et l''assiduité aux travaux dirigés est la meilleure préparation aux examens, car les sujets reprennent très souvent la logique des exercices de TD.

## Les matières clés de la Licence 1

- Microéconomie 1 : comportement du consommateur (préférences, contrainte budgétaire, choix optimal), comportement du producteur (production, coûts, maximisation du profit), offre, demande, élasticités et équilibre du marché.
- Macroéconomie 1 : comptabilité nationale, mesure du PIB par trois approches, PIB nominal et réel, inflation et indice des prix, chômage, circuit économique et agents économiques.
- Mathématiques pour économistes : fonctions usuelles, dérivées et dérivées partielles, élasticité, optimisation simple avec ou sans contrainte.

Ces trois matières forment le socle de toute la licence. La Licence 2 approfondira les structures de marché, le modèle IS-LM et l''économétrie ; la Licence 3 traitera du développement, de la monnaie, de l''économie internationale et de l''économie publique. Les lacunes de première année se paient donc pendant trois ans.

Selon les établissements, d''autres enseignements complètent l''année : introduction au droit, comptabilité, statistique descriptive, histoire des faits économiques, informatique, langues, techniques d''expression. Ce cours se concentre sur les trois matières qui pèsent le plus dans les résultats.

## Les types d''épreuves

- L''exercice chiffré : calculer un équilibre de marché, une élasticité, un optimum du consommateur, un PIB. On attend la démarche complète, les unités et une phrase d''interprétation.
- La question de cours : définir une notion (coût marginal, déflateur, taux de chômage), énoncer une propriété, expliquer un mécanisme.
- Le QCM : il teste la précision des définitions ; lisez chaque proposition jusqu''au bout, car un mot change souvent le sens.
- La dissertation ou le commentaire court : par exemple « Le PIB mesure-t-il le bien-être ? ». On attend une introduction qui définit les termes, une problématique, un plan en deux ou trois parties et une conclusion.
- Le cas pratique : une situation (une boulangerie de Thiès, une coopérative rizicole fictive de la vallée du fleuve) à analyser avec les outils du cours.
- Le projet ou dossier, plus rare en L1 : une petite étude documentaire présentée à l''écrit ou à l''oral.

## Méthode de révision

Première règle : comprendre avant d''apprendre. En économie, une formule n''a de valeur que si vous savez ce qu''elle représente. Quand vous écrivez Cm = P, vous devez pouvoir dire en une phrase pourquoi l''entreprise en concurrence produit jusqu''à ce point.

Deuxième règle : fabriquer des fiches. Une fiche par chapitre, au maximum deux pages : définitions exactes, formules avec leurs conditions d''utilisation, un schéma décrit (par exemple le graphique offre-demande avec ses axes), un exemple chiffré résolu et les erreurs fréquentes.

Troisième règle : s''entraîner à la main et chronométré. Refaites les exercices de TD sans regarder le corrigé, puis des sujets d''examen des années précédentes. Calculatrice autorisée ou non : vérifiez-le dans le règlement et entraînez-vous dans les mêmes conditions.

Quatrième règle : travailler en groupe, avec méthode. Le groupe de révision est très efficace si chacun prépare une partie et l''explique aux autres. Expliquer est le meilleur test de compréhension.

Cinquième règle : soigner la présentation. Encadrez les résultats, indiquez les unités (FCFA, kilogrammes, milliards de FCFA), justifiez chaque étape et terminez chaque calcul par une interprétation économique.

## Plan de révision sur 6 semaines

- Semaine 1 : bilan. Rassembler cours, TD et anciens sujets ; repérer les chapitres mal maîtrisés ; revoir les dérivées et la résolution d''équations (mathématiques).
- Semaine 2 : microéconomie, consommateur et producteur. Fiches, puis exercices d''optimum du consommateur et de maximisation du profit.
- Semaine 3 : microéconomie, marché et élasticités. Équilibre, prix plafond ou plancher, élasticités et recette totale.
- Semaine 4 : macroéconomie. Les trois approches du PIB, PIB réel, indice des prix, taux de chômage, circuit économique.
- Semaine 5 : mathématiques et transversalité. Optimisation avec et sans contrainte, puis exercices mêlant maths et micro.
- Semaine 6 : sujets blancs en conditions réelles (un par matière), correction, relecture des fiches, repos la veille de l''épreuve.

## Le jour de l''examen

Lisez tout le sujet pendant les cinq premières minutes et repérez le barème. Commencez par l''exercice que vous maîtrisez le mieux pour sécuriser des points. Répartissez votre temps selon le barème. Gardez dix minutes pour relire : signes, unités, reports de résultats d''une question à l''autre.

## Points clés

- Le règlement des examens de votre établissement fixe les crédits, coefficients et règles de compensation : lisez-le.
- Trois piliers en L1 : microéconomie 1, macroéconomie 1, mathématiques pour économistes.
- Comprendre, ficher, s''entraîner, expliquer, présenter proprement.

## Exercices

- Exercice 1 : citez les trois matières principales de la Licence 1 d''économie et, pour chacune, deux notions clés.
- Exercice 2 : distinguez unité d''enseignement, élément constitutif et crédit.
- Exercice 3 : rédigez une fiche de révision sur l''élasticité-prix de la demande (définition, formule, interprétation, exemple).
- Exercice 4 : construisez votre propre plan de révision de six semaines en tenant compte de vos points faibles.

## Corrigé

- Exercice 1 : microéconomie 1 (optimum du consommateur, équilibre du marché) ; macroéconomie 1 (PIB, taux de chômage) ; mathématiques (dérivée, optimisation sous contrainte).
- Exercice 2 : l''unité d''enseignement regroupe des matières cohérentes ; l''élément constitutif est une matière de l''UE ; le crédit mesure la charge de travail et s''acquiert lorsque l''UE est validée selon le règlement de l''établissement.
- Exercice 3 : l''élasticité-prix mesure la variation en pourcentage de la quantité demandée suite à une variation de 1 % du prix : e = (ΔQ/Q) / (ΔP/P). Si |e| < 1, la demande est inélastique et une hausse de prix augmente la recette ; si |e| > 1, elle est élastique. Exemple : prix +10 %, quantité −5 %, e = −0,5.
- Exercice 4 : réponse personnelle ; un bon plan commence par un diagnostic, consacre plus de temps aux points faibles et se termine par des sujets blancs chronométrés.', 'texte', 45, true, 10
from public.courses c where c.slug = 'lic-eco-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Licence 1 en Économie');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Microéconomie 1 : l''essentiel pour l''examen', '## Objectifs

- Déterminer le choix optimal d''un consommateur sous contrainte budgétaire.
- Analyser les coûts et la décision de production d''une entreprise en concurrence.
- Calculer un équilibre de marché et des élasticités, puis les interpréter.

## Fiche 1 : le consommateur

Le consommateur cherche la satisfaction maximale (l''utilité) compte tenu de son revenu et des prix. Ses préférences sont représentées par une fonction d''utilité U(x, y), où x et y sont les quantités de deux biens. Une courbe d''indifférence relie les paniers qui procurent la même utilité ; elle est décroissante et convexe dans le cas usuel.

La contrainte budgétaire s''écrit px·x + py·y = R. Sa pente est −px/py : c''est le prix relatif, ce que coûte une unité de x en unités de y.

Le taux marginal de substitution (TMS) est la quantité de y à laquelle le consommateur est prêt à renoncer pour une unité de x supplémentaire, à utilité constante : TMS = Umx / Umy (rapport des utilités marginales).

Condition d''optimum : TMS = px/py et le budget est entièrement dépensé. Graphiquement, la droite de budget est tangente à la courbe d''indifférence la plus haute possible.

Exemple. Awa dispose de R = 12 000 FCFA par semaine pour deux biens : des repas (x, prix 300 FCFA) et des tickets de transport (y, prix 200 FCFA). Son utilité est U = x·y. Alors Umx = y et Umy = x, donc TMS = y/x. Optimum : y/x = 300/200, soit y = 1,5x. Dans le budget : 300x + 200(1,5x) = 12 000, d''où 600x = 12 000, x = 20 repas et y = 30 tickets. Vérification : 300 × 20 + 200 × 30 = 12 000 FCFA. Avec U = x·y, on retient la règle : x = R/(2px) et y = R/(2py), le consommateur consacre la moitié de son revenu à chaque bien.

## Fiche 2 : le producteur

La fonction de production Q = f(K, L) relie les facteurs (capital K, travail L) à la quantité produite. À court terme, le capital est fixe ; la productivité marginale du travail finit par décroître (loi des rendements décroissants).

Les coûts : coût total CT = CF + CV ; coût moyen CM = CT/Q ; coût variable moyen CVM = CV/Q ; coût marginal Cm = dCT/dQ, le coût de la dernière unité. Le Cm coupe le CM et le CVM en leur minimum.

En concurrence parfaite, l''entreprise est preneuse de prix. Elle maximise son profit π = P·Q − CT(Q) en produisant la quantité telle que P = Cm, sur la partie croissante du Cm. Le seuil de rentabilité est le minimum du CM ; le seuil de fermeture est le minimum du CVM. La courbe d''offre de l''entreprise est la partie du Cm située au-dessus du minimum du CVM.

Exemple. La boulangerie fictive « Pain du Cayor » a un coût total CT = 4 900 + 100Q + Q² (Q en fournées, CT en FCFA). CF = 4 900 FCFA ; CV = 100Q + Q² ; Cm = 100 + 2Q ; CM = 4 900/Q + 100 + Q. Le CM est minimal quand Cm = CM : 100 + 2Q = 4 900/Q + 100 + Q, soit Q² = 4 900 et Q = 70 ; CM minimal = 70 + 100 + 70 = 240 FCFA. Le seuil de rentabilité est donc un prix de 240 FCFA. Le CVM = 100 + Q est minimal en Q = 0 : seuil de fermeture 100 FCFA.

Si le prix du marché est P = 500 FCFA : 500 = 100 + 2Q donne Q = 200. Recette totale = 100 000 FCFA ; coût total = 4 900 + 20 000 + 40 000 = 64 900 FCFA ; profit = 35 100 FCFA.

## Fiche 3 : offre, demande et équilibre

La demande de marché décroît avec le prix ; l''offre croît avec le prix. L''équilibre est atteint au prix où quantité demandée = quantité offerte. Un déplacement le long de la courbe vient d''une variation du prix du bien ; un déplacement de la courbe vient d''un autre facteur (revenu, prix des autres biens, coûts, météo, goûts).

Exemple. Sur le marché fictif de l''oignon d''une ville de l''intérieur : Qd = 1 000 − 2P et Qs = 4P − 200 (P en FCFA le kilo, Q en tonnes). Équilibre : 1 000 − 2P = 4P − 200, soit 6P = 1 200, P* = 200 FCFA et Q* = 600 tonnes.

Schéma décrit : prix en ordonnée, quantité en abscisse ; la demande coupe l''axe des prix à 500 ; l''offre part de P = 50 ; elles se croisent au point (600 ; 200).

Prix plafond fixé par les autorités à 150 FCFA : Qd = 700, Qs = 400, pénurie de 300 tonnes. Un prix plafond n''a d''effet que s''il est inférieur au prix d''équilibre ; un prix plancher, que s''il est supérieur.

## Fiche 4 : les élasticités

- Élasticité-prix de la demande : e = (ΔQ/Q) / (ΔP/P), ou en un point e = (dQ/dP) × (P/Q).
- Élasticité-revenu : variation en % de la demande pour 1 % de revenu en plus ; positive pour un bien normal (inférieure à 1 pour un bien nécessaire, supérieure à 1 pour un bien de luxe), négative pour un bien inférieur.
- Élasticité-prix croisée : positive pour des substituts (riz local et riz importé), négative pour des compléments (téléphone et crédit de communication).

Au point d''équilibre précédent : e = −2 × 200/600 = −0,67. La demande est inélastique. L''élasticité de l''offre vaut 4 × 200/600 = 1,33.

Lien avec la recette : si le prix passe de 200 à 220 FCFA (+10 %) et que la quantité passe de 600 à 560 (−6,67 %), l''élasticité vaut −0,67 ; la recette passe de 120 000 à 123 200 (en milliers de FCFA, Q étant en tonnes). Avec une demande inélastique, hausse de prix = hausse de recette.

## Exercices pratiques

- Exercice 1 (cours) : définissez le TMS et donnez la condition d''optimum du consommateur.
- Exercice 2 : Qd = 800 − 4P et Qs = 2P − 100. Calculez l''équilibre et l''élasticité-prix de la demande au point d''équilibre.
- Exercice 3 : Moussa a U = x·y, R = 9 000 FCFA, px = 150 FCFA, py = 300 FCFA. Déterminez son panier optimal.
- Exercice 4 : un atelier de couture fictif a CT = 1 600 + 40Q + Q². Calculez le seuil de rentabilité, puis la production et le profit si P = 200 FCFA.
- Exercice 5 (cas pratique) : la coopérative fictive « Jardins de Niayes » vend 1 000 sacs de légumes à 250 FCFA. Elle passe à 300 FCFA et vend 900 sacs. Calculez l''élasticité, la recette avant et après, et conseillez la coopérative.

## Corrigé

- Exercice 1 : le TMS est la quantité de y que le consommateur accepte de céder pour une unité de x supplémentaire en gardant la même utilité ; TMS = Umx/Umy. Optimum : TMS = px/py et px·x + py·y = R.
- Exercice 2 : 800 − 4P = 2P − 100 donne 6P = 900, P* = 150 et Q* = 200. e = −4 × 150/200 = −3 : demande élastique.
- Exercice 3 : x = R/(2px) = 9 000/300 = 30 ; y = R/(2py) = 9 000/600 = 15. Vérification : 150 × 30 + 300 × 15 = 9 000.
- Exercice 4 : CM = 1 600/Q + 40 + Q, Cm = 40 + 2Q. Cm = CM donne Q² = 1 600, Q = 40, CM min = 40 + 40 + 40 = 120 FCFA : seuil de rentabilité. Si P = 200 : 200 = 40 + 2Q, Q = 80 ; RT = 16 000 ; CT = 1 600 + 3 200 + 6 400 = 11 200 ; profit = 4 800 FCFA.
- Exercice 5 : prix +20 %, quantité −10 %, e = −10/20 = −0,5 (demande inélastique). Recette avant : 250 000 FCFA ; après : 270 000 FCFA. Hausse favorable à court terme, à surveiller : l''élasticité augmente souvent à long terme.', 'texte', 60, false, 20
from public.courses c where c.slug = 'lic-eco-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Microéconomie 1 : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Macroéconomie 1 : l''essentiel pour l''examen', '## Objectifs

- Mesurer le PIB par les trois approches et passer du nominal au réel.
- Calculer un indice des prix, un taux d''inflation et un taux de chômage.
- Décrire le circuit économique et les relations entre agents.

## Fiche 1 : la comptabilité nationale

La comptabilité nationale décrit l''activité d''un pays selon le Système de comptabilité nationale des Nations unies (SCN). Au Sénégal, les comptes nationaux sont établis par l''Agence nationale de la statistique et de la démographie (ANSD). Les agents sont regroupés en secteurs institutionnels : ménages, sociétés, administrations publiques (APU), reste du monde.

Le produit intérieur brut (PIB) mesure la richesse créée pendant une période par les unités résidentes. « Intérieur » : sur le territoire, quelle que soit la nationalité. « Brut » : avant déduction de l''usure du capital (consommation de capital fixe).

## Fiche 2 : les trois approches du PIB

- Approche production : PIB = somme des valeurs ajoutées + impôts sur les produits − subventions sur les produits. Valeur ajoutée = production − consommations intermédiaires.
- Approche dépenses : PIB = C + I + G + X − M (consommation finale des ménages, investissement ou formation brute de capital, consommation finale des administrations, exportations, importations).
- Approche revenus : PIB = rémunération des salariés + excédent brut d''exploitation et revenu mixte + impôts sur la production et les importations nets de subventions.

Exemple : un pays fictif, « Pays Alpha », en milliards de FCFA.

- Agriculture : production 2 000, consommations intermédiaires 600, VA 1 400.
- Industrie : production 3 000, consommations intermédiaires 1 800, VA 1 200.
- Services : production 2 500, consommations intermédiaires 700, VA 1 800.

Somme des VA = 4 400 ; impôts nets de subventions sur les produits = 300 ; PIB = 4 700.

Dépenses : C = 3 300, I = 1 000, G = 700, X = 1 200, M = 1 500. PIB = 3 300 + 1 000 + 700 + 1 200 − 1 500 = 4 700.

Revenus : salaires 1 900 + EBE et revenu mixte 2 500 + impôts nets 300 = 4 700. Les trois approches donnent le même résultat : c''est l''équilibre comptable.

Pourquoi retrancher les consommations intermédiaires ? Pour éviter les doubles comptes : le blé vendu au meunier puis la farine vendue au boulanger ne doivent pas être comptés plusieurs fois.

## Fiche 3 : PIB nominal, PIB réel et déflateur

Le PIB nominal (en valeur) est évalué aux prix courants ; le PIB réel (en volume) aux prix d''une année de référence. Le déflateur du PIB = PIB nominal / PIB réel × 100.

Exemple : en N, PIB nominal = 4 700 ; en N+1, PIB nominal = 5 170, soit +10 % en valeur. Le déflateur passe de 100 à 104. PIB réel N+1 = 5 170 / 1,04 = 4 971,15. Croissance réelle = 4 971,15 / 4 700 − 1 = 5,77 %. Approximation utile : croissance en valeur ≈ croissance en volume + hausse des prix (10 % ≈ 5,8 % + 4 %).

Limites du PIB : il ignore le travail domestique et le bénévolat, mesure mal l''économie informelle, très importante en Afrique de l''Ouest, ne dit rien de la répartition des revenus ni des dégâts environnementaux. Le PIB par habitant est un indicateur de niveau de vie moyen, pas de bien-être.

## Fiche 4 : l''inflation

L''inflation est la hausse durable et généralisée du niveau général des prix. On la mesure avec l''indice des prix à la consommation (IPC), qui suit le coût d''un panier représentatif. Taux d''inflation = (IPC de l''année / IPC de l''année précédente − 1) × 100.

Exemple simplifié (panier fictif mensuel) : 20 kg de riz à 400 FCFA, 5 litres d''huile à 1 200 FCFA, 30 tickets de transport à 200 FCFA. Coût de base = 20 000 FCFA. L''année suivante : riz 450, huile 1 300, ticket 220. Coût = 22 100 FCFA. IPC = 22 100 / 20 000 × 100 = 110,5, soit une inflation de 10,5 % sur ce panier.

Causes : inflation par la demande (excès de demande), par les coûts (hausse du prix du pétrole, des importations alimentaires), inflation importée, inflation d''origine monétaire. Conséquences : perte de pouvoir d''achat pour les revenus fixes, allègement des dettes, incertitude.

## Fiche 5 : le chômage

Au sens du Bureau international du travail (BIT), un chômeur est une personne en âge de travailler, sans emploi, disponible et en recherche active d''un emploi. Population active = actifs occupés + chômeurs. Taux de chômage = chômeurs / population active. Taux d''activité = population active / population en âge de travailler.

Exemple fictif : 10 millions de personnes en âge de travailler, 5,4 millions d''actifs occupés, 0,6 million de chômeurs. Population active = 6 millions ; taux de chômage = 10 % ; taux d''activité = 60 %.

Dans les économies africaines, le taux de chômage seul est trompeur : beaucoup de personnes travaillent dans l''informel, en sous-emploi (moins d''heures que souhaité) ou ont renoncé à chercher. On complète donc par le taux de sous-emploi et la part de l''emploi informel.

Types de chômage : frictionnel (temps de recherche), structurel (inadéquation des qualifications), conjoncturel ou keynésien (insuffisance de la demande), classique (coût du travail jugé trop élevé).

## Fiche 6 : le circuit économique

Le circuit relie les agents par des flux réels (biens, services, travail) et des flux monétaires en sens inverse (salaires, dépenses). Schéma décrit : les ménages fournissent le travail aux entreprises et reçoivent des revenus ; ils dépensent une partie en consommation et épargnent le reste ; les banques collectent l''épargne et financent l''investissement ; l''État prélève des impôts et verse des prestations ; le reste du monde achète nos exportations et nous vend nos importations.

Égalité fondamentale : en économie fermée sans État, épargne = investissement. En économie ouverte avec État : (S − I) + (T − G) = X − M. Un déficit extérieur correspond à un manque d''épargne privée et/ou publique.

## Exercices pratiques

- Exercice 1 (cours) : définissez PIB, valeur ajoutée et consommations intermédiaires.
- Exercice 2 : un pays fictif a trois branches : production 1 500 et CI 400 ; production 2 600 et CI 1 500 ; production 1 800 et CI 500 (milliards FCFA). Les impôts nets de subventions sur les produits valent 200. Calculez le PIB.
- Exercice 3 : le PIB nominal passe de 3 700 à 4 033 et le déflateur de 100 à 106. Calculez le PIB réel et la croissance réelle.
- Exercice 4 : l''IPC passe de 125 à 131,25. Quel est le taux d''inflation ?
- Exercice 5 : 8 millions de personnes en âge de travailler, 4,2 millions d''actifs occupés, 0,8 million de chômeurs. Calculez les taux de chômage et d''activité.
- Exercice 6 (cas pratique) : un ministre affirme que « le PIB a augmenté de 9 %, donc la population vit mieux ». Discutez en 10 lignes.

## Corrigé

- Exercice 1 : le PIB est la somme des valeurs ajoutées des unités résidentes (plus impôts nets sur les produits) ; la VA est la production moins les CI ; les CI sont les biens et services détruits ou transformés dans la production.
- Exercice 2 : VA = 1 100 + 1 100 + 1 300 = 3 500 ; PIB = 3 500 + 200 = 3 700.
- Exercice 3 : PIB réel = 4 033 / 1,06 = 3 804,7 ; croissance réelle = 2,83 %. L''essentiel des 9 % de hausse nominale vient des prix.
- Exercice 4 : 131,25 / 125 − 1 = 5 %.
- Exercice 5 : population active = 5 millions ; taux de chômage = 0,8 / 5 = 16 % ; taux d''activité = 5 / 8 = 62,5 %.
- Exercice 6 : il faut d''abord distinguer croissance nominale et réelle (une part peut venir de l''inflation), puis rapporter le PIB à la population (si elle croît de 3 %, le PIB par habitant progresse moins), enfin rappeler que le PIB ne mesure ni la répartition, ni l''informel, ni la qualité de vie (santé, éducation). Conclusion : l''affirmation est trop rapide.', 'texte', 60, false, 30
from public.courses c where c.slug = 'lic-eco-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Macroéconomie 1 : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Mathématiques pour économistes : l''essentiel pour l''examen', '## Objectifs

- Manipuler les fonctions usuelles de l''économiste.
- Calculer des dérivées, des dérivées partielles et des élasticités.
- Résoudre un problème d''optimisation simple, avec ou sans contrainte.

## Fiche 1 : les fonctions usuelles

- Fonction affine : f(x) = ax + b ; a est la pente. Exemple : une demande Q = 1 000 − 2P.
- Fonction puissance : f(x) = A·x^α. Exemple : Q = 200·P^(−1,5), demande à élasticité constante.
- Polynôme de degré 2 ou 3 : coûts totaux, recettes totales. Exemple : RT = 100Q − 2Q².
- Exponentielle et logarithme : croissance composée. Un PIB de 1 000 qui croît de 5 % par an pendant 10 ans atteint 1 000 × 1,05^10 = 1 628,89. Le logarithme permet de résoudre (1 + g)^n = 2 : n = ln 2 / ln(1 + g). À 8 % par an, un revenu double en un peu moins de 9 ans (1,08^9 ≈ 1,999). Règle pratique : temps de doublement ≈ 70 / taux en %.

## Fiche 2 : les dérivées

La dérivée f''(x) mesure la variation de f pour une très petite variation de x : c''est la pente de la tangente. En économie, dérivée = grandeur marginale : la dérivée du coût total est le coût marginal, celle de la recette totale la recette marginale.

Règles à connaître :

- (constante)'' = 0 ; (x^n)'' = n·x^(n−1) ; (a·u)'' = a·u''.
- (u + v)'' = u'' + v'' ; (u·v)'' = u''v + uv'' ; (u/v)'' = (u''v − uv'')/v².
- (ln x)'' = 1/x ; (e^x)'' = e^x ; (f(g(x)))'' = g''(x)·f''(g(x)).

Signe de la dérivée : f'' > 0, f croissante ; f'' < 0, f décroissante. Dérivée seconde : f'''' < 0, fonction concave (un maximum est possible) ; f'''' > 0, convexe (un minimum est possible).

Élasticité d''une fonction : e = f''(x) × x / f(x). Pour Q = 1 000 − 2P, e = −2P/(1 000 − 2P) ; en P = 200, e = −0,67. Pour Q = A·P^α, l''élasticité est constante et égale à α.

## Fiche 3 : dérivées partielles

Pour une fonction de plusieurs variables, on dérive par rapport à une variable en traitant les autres comme des constantes. Exemple : U(x, y) = x^0,5 · y^0,5. ∂U/∂x = 0,5·x^(−0,5)·y^0,5 ; ∂U/∂y = 0,5·x^0,5·y^(−0,5). Le rapport des deux donne le TMS = y/x. Pour une fonction de production Q = K^0,3 L^0,7, ∂Q/∂L = 0,7·K^0,3·L^(−0,3) est la productivité marginale du travail.

## Fiche 4 : optimisation sans contrainte

Méthode : 1) condition du premier ordre f''(x) = 0 ; 2) condition du second ordre (f'''' < 0 pour un maximum, f'''' > 0 pour un minimum) ; 3) calcul de la valeur optimale ; 4) interprétation.

Exemple : une entreprise fictive a CT(Q) = Q³ − 6Q² + 15Q + 20 et vend au prix P = 15. Profit π(Q) = 15Q − CT(Q) = 15Q − Q³ + 6Q² − 15Q − 20 = −Q³ + 6Q² − 20. π''(Q) = −3Q² + 12Q = −3Q(Q − 4), nulle en Q = 0 ou Q = 4. π''''(Q) = −6Q + 12 vaut −12 en Q = 4 : maximum. CT(4) = 64 − 96 + 60 + 20 = 48 ; π(4) = 60 − 48 = 12.

Autre exemple : le coût variable moyen CVM = Q² − 6Q + 15 a pour dérivée 2Q − 6, nulle en Q = 3 ; CVM(3) = 6 : c''est le seuil de fermeture.

## Fiche 5 : optimisation sous contrainte

Méthode par substitution : on tire une variable de la contrainte et on la remplace dans la fonction objectif.

Méthode du lagrangien : maximiser f(x, y) sous g(x, y) = c. On écrit L = f(x, y) + λ(c − g(x, y)), on annule les trois dérivées partielles par rapport à x, y et λ, puis on résout.

Exemple : maximiser U = x·y sous 4x + 2y = 80. L = xy + λ(80 − 4x − 2y). ∂L/∂x = y − 4λ = 0 ; ∂L/∂y = x − 2λ = 0 ; ∂L/∂λ = 80 − 4x − 2y = 0. Des deux premières : y = 4λ et x = 2λ, donc y = 2x. Contrainte : 4x + 4x = 80, x = 10, y = 20, λ = 5. Le multiplicateur λ s''interprète comme l''utilité marginale du revenu : une unité de budget en plus augmente l''utilité d''environ 5.

Par substitution : y = 40 − 2x, U = 40x − 2x², U'' = 40 − 4x = 0, x = 10, y = 20. Même résultat.

## Erreurs fréquentes

- Oublier la condition du second ordre et prendre un minimum pour un maximum.
- Mal dériver une puissance négative : (Q^(−1))'' = −Q^(−2).
- Résoudre la condition du premier ordre sans vérifier que la solution est économiquement admissible (quantités positives).

## Exercices pratiques

- Exercice 1 : f(x) = 2x³ − 3x² − 12x + 5. Calculez f''(x), étudiez son signe et donnez les extremums locaux.
- Exercice 2 : RT = 100Q − 2Q². Calculez la recette marginale et la quantité qui maximise la recette totale.
- Exercice 3 : calculez l''élasticité-prix de Q = 200·P^(−1,5) et interprétez.
- Exercice 4 : π(Q) = −Q² + 60Q − 500 (en milliers de FCFA). Trouvez la production optimale et le profit maximal.
- Exercice 5 : maximisez U = x^0,5·y^0,5 sous 2x + 8y = 160 par la méthode du lagrangien.
- Exercice 6 (cas pratique) : une tontine fictive place 500 000 FCFA à 8 % par an (taux fictif pour l''exemple). Combien d''années faut-il pour doubler la somme ?

## Corrigé

- Exercice 1 : f''(x) = 6x² − 6x − 12 = 6(x − 2)(x + 1). f'' > 0 si x < −1 ou x > 2, f'' < 0 entre −1 et 2. Maximum local en x = −1 : f(−1) = 12 ; minimum local en x = 2 : f(2) = −15.
- Exercice 2 : Rm = 100 − 4Q ; Rm = 0 donne Q = 25 ; RT'''' = −4 < 0, maximum ; RT = 2 500 − 1 250 = 1 250.
- Exercice 3 : e = −1,5 en tout point : demande élastique, une hausse de prix de 1 % réduit la quantité de 1,5 % et fait baisser la recette.
- Exercice 4 : π'' = −2Q + 60 = 0, Q = 30 ; π'''' = −2 < 0 ; π(30) = −900 + 1 800 − 500 = 400, soit 400 000 FCFA.
- Exercice 5 : L = x^0,5 y^0,5 + λ(160 − 2x − 8y). Le rapport des deux premières conditions donne y/x = 2/8, soit x = 4y. Contrainte : 8y + 8y = 160, y = 10, x = 40.
- Exercice 6 : 1,08^n = 2, n = ln 2 / ln 1,08 ≈ 9,0 ans (1,08^9 ≈ 1,999). La règle de 70 donne 70/8 ≈ 8,75 ans.', 'texte', 60, false, 40
from public.courses c where c.slug = 'lic-eco-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Mathématiques pour économistes : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Licence 1 Économie (entraînement, corrigé détaillé)', '## Présentation

Ce sujet d''entraînement reproduit la forme d''un examen semestriel de Licence 1 d''économie. Ce n''est pas un sujet officiel. Durée conseillée : 3 heures. Calculatrice non programmable autorisée. Le barème est indicatif, non officiel.

## Sujet

Partie A, microéconomie (8 points)

Sur le marché fictif du poisson fumé d''une ville côtière, la demande et l''offre hebdomadaires s''écrivent Qd = 1 200 − 3P et Qs = 2P − 300 (P en FCFA le kilo, Q en kilos).

- A1 (2 points) : calculez le prix et la quantité d''équilibre.
- A2 (1,5 point) : calculez l''élasticité-prix de la demande au point d''équilibre et interprétez.
- A3 (2 points) : l''État instaure une taxe fictive de 25 FCFA par kilo payée par les vendeurs. Déterminez le nouvel équilibre, le prix payé par les acheteurs, le prix net perçu par les vendeurs et la recette fiscale.
- A4 (2,5 points) : un consommateur a U = x·y, un revenu de 6 000 FCFA, px = 100 FCFA et py = 150 FCFA. Déterminez son panier optimal et vérifiez la contrainte.

Partie B, macroéconomie (7 points)

Les comptes d''un pays fictif (milliards de FCFA) donnent : VA de l''agriculture 900, de l''industrie 1 300, des services 1 600 ; impôts nets de subventions sur les produits 250 ; consommation des ménages 2 700 ; investissement 900 ; consommation des administrations 550 ; exportations 800.

- B1 (2 points) : calculez le PIB par l''approche production.
- B2 (1,5 point) : déduisez le montant des importations.
- B3 (2 points) : l''année suivante, le PIB nominal est de 4 455 et le déflateur de 108 (base 100 l''année précédente). Calculez le PIB réel et la croissance réelle.
- B4 (1,5 point) : citez trois limites du PIB comme indicateur de bien-être.

Partie C, mathématiques (5 points)

Une entreprise fictive a CT(Q) = 2Q² + 20Q + 800 et vend au prix de 180 FCFA.

- C1 (1,5 point) : calculez le coût marginal et le coût moyen.
- C2 (2 points) : déterminez la production qui maximise le profit (conditions du premier et du second ordre) et le profit.
- C3 (1,5 point) : déterminez le seuil de rentabilité.

## Corrigé détaillé

A1 : 1 200 − 3P = 2P − 300, soit 5P = 1 500, P* = 300 FCFA et Q* = 300 kilos.

A2 : e = −3 × 300/300 = −3. La demande est élastique : une hausse de 1 % du prix réduit les achats de 3 %. Le poisson fumé a ici des substituts (poisson frais, viande).

A3 : l''offre devient Qs = 2(P − 25) − 300 = 2P − 350. Équilibre : 1 200 − 3P = 2P − 350, 5P = 1 550, P = 310 FCFA payés par les acheteurs ; Q = 270 kilos. Les vendeurs perçoivent 310 − 25 = 285 FCFA. Les acheteurs supportent 10 FCFA de la taxe et les vendeurs 15 FCFA : la partie la moins élastique supporte la plus grande part (ici l''offre, d''élasticité 2 au point d''équilibre, contre 3 en valeur absolue pour la demande). Recette fiscale = 25 × 270 = 6 750 FCFA par semaine.

A4 : avec U = x·y, x = R/(2px) = 6 000/200 = 30 et y = R/(2py) = 6 000/300 = 20. Vérification : 100 × 30 + 150 × 20 = 6 000. TMS = y/x = 20/30 = 2/3 = px/py.

B1 : 900 + 1 300 + 1 600 + 250 = 4 050.

B2 : 4 050 = 2 700 + 900 + 550 + 800 − M, d''où M = 900. La balance commerciale (X − M) est déficitaire de 100.

B3 : PIB réel = 4 455 / 1,08 = 4 125 ; croissance réelle = 4 125 / 4 050 − 1 = 1,85 %. La hausse nominale de 10 % est surtout due aux prix.

B4 : le PIB ignore le travail domestique et bénévole, mesure mal l''informel, ne tient pas compte des inégalités ni des atteintes à l''environnement, ne mesure pas directement la santé ou l''éducation.

C1 : Cm = 4Q + 20 ; CM = 2Q + 20 + 800/Q.

C2 : π = 180Q − 2Q² − 20Q − 800 ; π'' = 160 − 4Q = 0, Q = 40 ; π'''' = −4 < 0, maximum. CT(40) = 3 200 + 800 + 800 = 4 800 ; RT = 7 200 ; π = 2 400 FCFA.

C3 : CM minimal quand Cm = CM : 4Q + 20 = 2Q + 20 + 800/Q, soit 2Q² = 800, Q = 20 ; CM(20) = 40 + 20 + 40 = 100 FCFA. Le seuil de rentabilité est un prix de 100 FCFA.

## Conseils de rédaction

Annoncez chaque résultat par une phrase, indiquez les unités, encadrez les réponses et ajoutez toujours une interprétation économique : c''est souvent là que se joue la différence entre 12 et 16 sur 20.

## Exercices pratiques

- Exercice 1 : vrai ou faux : « un prix plafond supérieur au prix d''équilibre provoque une pénurie ».
- Exercice 2 : dans un pays fictif, 1,5 million de chômeurs pour 12,5 millions d''actifs. Taux de chômage ?
- Exercice 3 : dérivez f(Q) = 5Q² − 3Q + 7 et g(P) = ln(P).
- Exercice 4 : un bien a une élasticité-revenu de 1,6. Comment le qualifier ?
- Exercice 5 : citez les trois approches du PIB avec leur formule.

## Corrigé

- Exercice 1 : faux. Un prix plafond supérieur au prix d''équilibre n''a aucun effet ; il ne crée une pénurie que s''il est inférieur au prix d''équilibre.
- Exercice 2 : 1,5 / 12,5 = 12 %.
- Exercice 3 : f''(Q) = 10Q − 3 ; g''(P) = 1/P.
- Exercice 4 : bien normal de luxe (élasticité-revenu supérieure à 1) : sa part dans le budget augmente quand le revenu augmente.
- Exercice 5 : production (somme des VA + impôts nets sur les produits) ; dépenses (C + I + G + X − M) ; revenus (salaires + EBE et revenu mixte + impôts nets sur la production et les importations).', 'texte', 60, false, 50
from public.courses c where c.slug = 'lic-eco-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Licence 1 Économie (entraînement, corrigé détaillé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Microéconomie 1', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 1 en sciences économiques et en gestion.
- Objectifs : déterminer l''optimum du consommateur, analyser les coûts et l''offre du producteur, calculer un équilibre de marché et des élasticités.
- Matériel : tableau blanc ou diaporama, papier millimétré pour les graphiques, calculatrice, fiche d''exercices.
- Prérequis : leçon « Microéconomie 1 : l''essentiel pour l''examen » ; dérivées simples.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour à toutes et à tous. Pendant une heure et demie, nous allons travailler la microéconomie comme on la travaille la veille d''un partiel : en comprenant chaque raisonnement, puis en refaisant les calculs qui tombent chaque année. Trois blocs : le consommateur, le producteur, le marché. À la fin, vous ferez une petite évaluation de cinq questions. Visuel : les trois blocs et l''image d''un marché de quartier, avec ses vendeurs et ses acheteurs, qui sera notre fil conducteur.

## 05:00 – 15:00 · Le consommateur : préférences et budget

Commençons par une question : quand vous avez 8 000 FCFA pour la semaine, comment décidez-vous entre manger au restaurant universitaire et prendre le bus ? La microéconomie répond : vous cherchez la satisfaction la plus grande possible compte tenu de vos moyens. La satisfaction est représentée par une fonction d''utilité U(x, y). Une courbe d''indifférence relie tous les paniers qui vous satisfont autant.

Les moyens sont résumés par la droite de budget : px·x + py·y = R. Je la trace au tableau : en abscisse les repas, en ordonnée les tickets. Si vous ne prenez que des repas, vous en avez R/px ; que des tickets, R/py. La pente de la droite est −px/py.

Le taux marginal de substitution, le TMS, est ce que vous êtes prêt à céder de y pour obtenir une unité de x de plus. Il est égal au rapport des utilités marginales Umx/Umy. À l''optimum, ce que vous êtes prêt à céder correspond exactement à ce que le marché vous fait céder : TMS = px/py.

## 15:00 – 25:00 · Exercice commenté : l''optimum de Fatou

Fatou a U = x·y, R = 8 000 FCFA, px = 200 FCFA, py = 100 FCFA. Je vous laisse deux minutes pour poser le calcul.

Correction. Umx = y, Umy = x, donc TMS = y/x. Condition : y/x = 200/100 = 2, d''où y = 2x. On remplace dans le budget : 200x + 100 × 2x = 8 000, soit 400x = 8 000, x = 20 repas et y = 40 tickets. Vérification : 200 × 20 + 100 × 40 = 8 000. On retrouve la règle pour U = x·y : la moitié du revenu sur chaque bien.

Erreur fréquente que je vois dans les copies : écrire TMS = px/py sans vérifier le budget. Les deux conditions sont indispensables. Autre erreur : inverser le TMS. Rappelez-vous : le bien x est toujours au numérateur de l''utilité marginale.

## 25:00 – 35:00 · Le producteur : coûts et décision

Passons à l''entreprise. Un atelier fictif de transformation de céréales à Kaolack a un coût total CT = 2 500 + 50Q + Q². Je demande : quel est le coût fixe ? 2 500 FCFA, ce qu''on paie même sans produire. Le coût variable est 50Q + Q². Le coût marginal est la dérivée : Cm = 50 + 2Q. Le coût moyen : CM = 2 500/Q + 50 + Q.

Le coût moyen est minimal là où il est coupé par le coût marginal : 50 + 2Q = 2 500/Q + 50 + Q, soit Q² = 2 500 et Q = 50. CM minimal = 50 + 50 + 50 = 150 FCFA. Si le prix du marché est inférieur à 150, l''atelier perd de l''argent ; c''est le seuil de rentabilité.

Si le prix est de 350 FCFA, l''atelier en concurrence produit jusqu''à P = Cm : 350 = 50 + 2Q, Q = 150. Recette : 52 500 FCFA ; coût : 2 500 + 7 500 + 22 500 = 32 500 FCFA ; profit : 20 000 FCFA. Visuel : le graphique avec Cm, CM et la droite horizontale du prix ; le profit est le rectangle entre le prix et le coût moyen.

## 35:00 – 45:00 · Le marché et l''équilibre

Sur le marché fictif du mil d''une ville de l''intérieur : Qd = 900 − 3P et Qs = 2P − 100. L''équilibre : 900 − 3P = 2P − 100, 5P = 1 000, P* = 200 FCFA et Q* = 300 tonnes.

Supposons que les revenus des ménages augmentent après une bonne saison : la demande se déplace vers la droite et devient Qd = 1 000 − 3P. Nouvel équilibre : 5P = 1 100, P = 220 et Q = 340. Retenez : un choc de demande positif augmente prix et quantité ; un choc d''offre positif (bonne récolte) baisse le prix et augmente la quantité.

Distinguez bien le déplacement le long de la courbe (le prix du bien change) et le déplacement de la courbe (autre chose change).

## 45:00 – 50:00 · Pause et quiz interactif

Petite pause. Répondez dans le chat ou sur votre feuille.

- Question 1 : un prix plancher inférieur au prix d''équilibre a-t-il un effet ? Réponse : non.
- Question 2 : à l''optimum, le TMS est égal à quoi ? Réponse : au rapport des prix px/py.
- Question 3 : le seuil de fermeture correspond au minimum de quel coût ? Réponse : du coût variable moyen.

## 50:00 – 1:00:00 · Les élasticités

L''élasticité-prix de la demande mesure la sensibilité des acheteurs : e = (dQ/dP) × (P/Q). Au point d''équilibre du mil : e = −3 × 200/300 = −2. Demande élastique : une hausse de 1 % du prix fait baisser la quantité de 2 %. L''élasticité de l''offre vaut 2 × 200/300 = 1,33.

Pourquoi est-ce important ? À cause de la recette. Si |e| > 1, augmenter le prix fait baisser la recette ; si |e| < 1, elle augmente. Exemple : un commerçant passe de 100 à 110 FCFA (+10 %) et ses ventes passent de 500 à 480 (−4 %). e = −0,4 : inélastique. Recette avant : 50 000 FCFA ; après : 52 800 FCFA.

Les élasticités croisées et de revenu complètent l''analyse : riz local et riz importé sont substituts, élasticité croisée positive ; un bien inférieur a une élasticité-revenu négative.

## 1:00:00 – 1:10:00 · Exercice commenté : contrôle des prix

Reprenons le mil. Les autorités fixent un prix plafond de 150 FCFA. Calculez. Qd = 900 − 450 = 450 ; Qs = 300 − 100 = 200. Pénurie de 250 tonnes. Conséquences : files d''attente, marché parallèle, rationnement. Si au contraire on fixe un prix plancher de 250 : Qd = 150, Qs = 400, excédent de 250 tonnes que l''État devra peut-être racheter et stocker.

Commentaire de correcteur : la meilleure copie ne s''arrête pas au chiffre ; elle explique qui gagne, qui perd et quels effets indirects apparaissent.

## 1:10:00 – 1:20:00 · Méthode pour l''examen

Pour tout exercice de micro, suivez cinq étapes. Un : écrire les données et l''objectif. Deux : poser la condition (TMS = px/py, P = Cm, Qd = Qs). Trois : résoudre proprement. Quatre : vérifier (budget, signe, ordre de grandeur). Cinq : interpréter en une phrase. Les points d''interprétation sont souvent ceux que les étudiants perdent.

Révisez aussi les définitions mot pour mot : utilité marginale, TMS, coût marginal, seuil de rentabilité, élasticité. Un QCM peut piéger sur un seul mot.

Faisons un dernier exemple rapide d''élasticité-revenu, souvent oublié en révision. Dans une ville fictive, le revenu moyen des ménages augmente de 10 %. La demande de riz brisé augmente de 2 %, celle de viande de 15 % et celle de pain de mil baisse de 3 %. Les élasticités-revenu sont respectivement 0,2, 1,5 et −0,3. Le riz brisé est un bien normal nécessaire, la viande un bien normal de luxe au sens économique, le pain de mil un bien inférieur dans cet exemple. Ce classement n''est pas un jugement de valeur : il décrit seulement la réaction de la demande au revenu, et il peut changer d''une ville ou d''une époque à l''autre.

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Synthèse : le consommateur égalise TMS et prix relatif ; le producteur en concurrence égalise prix et coût marginal ; le marché s''équilibre là où offre et demande se croisent ; les élasticités mesurent les réactions et déterminent l''effet d''un prix sur la recette.

Évaluation finale, cinq questions :

- Question 1 : U = x·y, R = 10 000, px = 250, py = 500. Panier optimal ? Réponse : x = 20, y = 10.
- Question 2 : CT = 900 + 10Q + Q². Seuil de rentabilité ? Réponse : Q = 30, CM minimal = 30 + 10 + 30 = 70 FCFA.
- Question 3 : Qd = 600 − P, Qs = 2P. Équilibre ? Réponse : P = 200, Q = 400.
- Question 4 : e = −0,3. Une hausse de prix augmente-t-elle la recette ? Réponse : oui, la demande est inélastique.
- Question 5 : l''élasticité croisée entre thé et sucre est négative. Pourquoi ? Réponse : ce sont des biens complémentaires.

Merci pour votre attention. Refaites les exercices sans le corrigé avant la prochaine séance.', 'video', 90, false, 60
from public.courses c where c.slug = 'lic-eco-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Microéconomie 1');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Macroéconomie 1', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 1 en sciences économiques.
- Objectifs : calculer le PIB par trois approches, passer du nominal au réel, mesurer l''inflation et le chômage, décrire le circuit économique.
- Matériel : diaporama avec tableaux de comptes fictifs, tableau blanc, calculatrice.
- Prérequis : leçon « Macroéconomie 1 : l''essentiel pour l''examen ».
- Important : tous les chiffres de la séance sont fictifs, construits pour l''entraînement. Pour des données réelles, consultez l''ANSD et la BCEAO.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour. La microéconomie regarde un marché ou une entreprise ; la macroéconomie regarde le pays entier. Aujourd''hui, nous allons apprendre à mesurer l''activité d''une économie, et ce n''est pas un exercice de comptable : quand vous lisez qu''un pays « a fait 6 % de croissance », vous devez savoir ce qui se cache derrière ce chiffre. Visuel : un journal fictif titrant « Forte croissance cette année ». Je vous pose d''emblée trois questions auxquelles vous saurez répondre en fin de séance : la croissance est-elle réelle ou seulement due aux prix ? Est-elle plus rapide que la population ? Qui en profite ?

## 05:00 – 15:00 · Agents et circuit économique

Je dessine le circuit au tableau. À gauche, les ménages ; à droite, les entreprises. Les ménages fournissent leur travail, les entreprises versent des salaires. Les ménages achètent des biens, l''argent revient aux entreprises. Ajoutons les banques : elles collectent l''épargne des ménages et prêtent aux entreprises pour investir. Ajoutons l''État : il prélève des impôts et fournit des services publics. Ajoutons le reste du monde : exportations et importations, mais aussi transferts des migrants, très importants dans nos économies.

Question à la salle : le transfert qu''un frère vivant à l''étranger envoie à sa famille de Touba, où apparaît-il ? Réponse : dans les flux avec le reste du monde, comme un revenu de transfert. Il finance de la consommation, mais il ne fait pas partie de la production intérieure.

## 15:00 – 30:00 · Le PIB par trois approches

Pays fictif, milliards de FCFA. Branche pêche : production 800, consommations intermédiaires 200, valeur ajoutée 600. Transformation : production 1 200, CI 700, VA 500. Commerce : production 900, CI 300, VA 600. Somme des VA : 1 700. Impôts nets de subventions sur les produits : 100. PIB : 1 800.

Approche dépenses : consommation des ménages 1 300, investissement 350, consommation des administrations 250, exportations 400, importations 500. 1 300 + 350 + 250 + 400 − 500 = 1 800.

Approche revenus : salaires 700, excédent brut d''exploitation et revenu mixte 1 000, impôts nets 100 : 1 800. Les trois approches convergent ; dans la réalité, les statisticiens doivent arbitrer entre des sources différentes, ce qui explique les révisions des comptes.

Pourquoi retirer les importations ? Parce que C, I et G incluent des biens produits à l''étranger, qui ne sont pas de la production intérieure. Une erreur classique est d''ajouter M au lieu de le retrancher.

Ajoutons une précision utile pour les questions de cours : le PIB n''est pas le revenu national. Le revenu national brut (RNB) s''obtient en ajoutant au PIB les revenus primaires reçus du reste du monde et en retranchant ceux versés au reste du monde (intérêts, dividendes, salaires des non-résidents). Dans un pays où des entreprises étrangères rapatrient d''importants bénéfices, le RNB peut être nettement inférieur au PIB. Les transferts des migrants, eux, sont des revenus secondaires : ils entrent dans le revenu disponible brut national, pas dans le RNB.

## 30:00 – 45:00 · Nominal et réel

Exemple à deux biens. Année N : 100 tonnes de riz à 300 et 50 tonnes de mil à 200 ; PIB nominal = 40 000. Année N+1 : 110 tonnes de riz à 330 et 52 tonnes de mil à 210 ; PIB nominal = 47 220. Hausse en valeur : 18,05 %.

Mais une partie vient des prix. On calcule le PIB réel de N+1 aux prix de N : 110 × 300 + 52 × 200 = 43 400. Croissance réelle : 43 400 / 40 000 − 1 = 8,5 %. Le déflateur de N+1 vaut 47 220 / 43 400 × 100 = 108,80, soit une hausse des prix d''environ 8,8 %.

Et la population ? Si elle augmente de 3 % pendant la même année, le PIB réel par habitant progresse d''environ 8,5 − 3 = 5,5 %. C''est ce chiffre qui renseigne sur l''évolution du niveau de vie moyen, et encore : une moyenne peut cacher de fortes inégalités entre villes et campagnes, ou entre ménages.

Retenez la décomposition approximative : croissance nominale ≈ croissance réelle + inflation. 18 % ≈ 8,5 % + 8,8 % ; ce n''est qu''une approximation, l''égalité exacte étant multiplicative : 1,1805 = 1,085 × 1,088.

## 45:00 – 50:00 · Pause et quiz interactif

- Question 1 : un taxi acheté par un chauffeur pour travailler, c''est de la consommation ou de l''investissement ? Réponse : de l''investissement (formation brute de capital fixe).
- Question 2 : le salaire d''un fonctionnaire est-il compté dans le PIB ? Réponse : oui, la production des administrations est évaluée à ses coûts, dont les salaires.
- Question 3 : un déflateur de 105 signifie quoi ? Réponse : les prix ont augmenté de 5 % par rapport à l''année de base.

## 50:00 – 1:00:00 · L''inflation

L''inflation, c''est la hausse durable et générale des prix. On la mesure par l''IPC, construit à partir d''un panier représentatif de la consommation des ménages, avec des pondérations selon la part de chaque produit dans les dépenses. Un IPC qui passe de 140 à 147 signifie 5 % d''inflation sur l''année.

Distinguez trois notions : l''inflation (les prix montent), la désinflation (ils montent moins vite), la déflation (ils baissent). Les causes : excès de demande, hausse des coûts, inflation importée quand les produits achetés à l''étranger renchérissent, création monétaire excessive. Dans l''UEMOA, la politique monétaire est conduite par la BCEAO, dont l''objectif principal est la stabilité des prix.

Exercice commenté sur l''IPC pondéré. Un panier fictif comprend l''alimentation (pondération 50 %), le logement (30 %) et le transport (20 %). Sur l''année, les prix de l''alimentation augmentent de 6 %, ceux du logement de 2 % et ceux du transport de 10 %. L''inflation du panier est la moyenne pondérée : 0,5 × 6 + 0,3 × 2 + 0,2 × 10 = 3 + 0,6 + 2 = 5,6 %. Remarquez que l''alimentation pèse lourd : dans les pays où elle représente une grande part du budget, une hausse du prix des denrées importées se transmet vite à l''inflation. Supposons maintenant que l''alimentation augmente de 10 % (logement 2 %, transport 10 %). L''inflation moyenne devient 0,5 × 10 + 0,3 × 2 + 0,2 × 10 = 7,6 %. Pour un ménage modeste dont le budget est composé à 70 % d''alimentation, 20 % de logement et 10 % de transport, l''inflation ressentie est 0,7 × 10 + 0,2 × 2 + 0,1 × 10 = 8,4 % : plus élevée que la moyenne. L''IPC est un indicateur moyen, pas l''expérience de chaque ménage.

## 1:00:00 – 1:10:00 · Le chômage et ses limites

Le chômeur au sens du BIT : sans emploi, disponible, en recherche active. Retenez les trois critères, car une question de cours classique demande de les citer. Exemple : 2,4 millions d''actifs dont 0,3 million de chômeurs : taux de chômage = 12,5 %.

Mais pensez au jeune diplômé qui aide à la boutique familiale quelques heures par semaine : il a travaillé au moins une heure, il n''est donc pas chômeur au sens strict, mais il est en sous-emploi. Dans nos pays, l''emploi informel est majoritaire ; c''est pourquoi les enquêtes publient aussi le taux de sous-emploi et des indicateurs de sous-utilisation de la main-d''œuvre.

## 1:10:00 – 1:20:00 · L''égalité épargne-investissement

En économie ouverte : (S − I) + (T − G) = X − M. Exemple fictif : X − M = −100, le pays est en déficit commercial. Si l''État a un déficit T − G = −50, alors S − I = −50 : l''épargne privée ne couvre pas non plus l''investissement privé. Le déficit extérieur est financé par le reste du monde : emprunts, investissements étrangers. Cette identité comptable est un piège à l''examen : elle ne dit rien de la causalité, elle constate un équilibre ex post.

Pour terminer ce bloc, voyons les deux grandes familles d''explication du chômage que vous approfondirez en Licence 2. Pour les classiques, le chômage vient d''un coût du travail trop élevé par rapport à la productivité : la solution passe par la flexibilité des salaires. Pour Keynes, il vient d''une demande globale insuffisante : les entreprises n''embauchent pas faute de débouchés, et baisser les salaires peut même aggraver la situation en réduisant la consommation. À l''examen, une dissertation sur le chômage gagne à confronter ces deux visions, puis à les adapter au contexte africain, où le problème principal est souvent l''insuffisance d''emplois formels plus que le chômage déclaré.

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Synthèse : le PIB se mesure par la production, les dépenses et les revenus ; le PIB réel retire l''effet des prix ; l''IPC mesure l''inflation ; le taux de chômage rapporte les chômeurs à la population active ; le circuit relie les agents par des flux réels et monétaires.

Évaluation finale :

- Question 1 : VA totale 2 000, impôts nets sur les produits 150. PIB ? Réponse : 2 150.
- Question 2 : C = 1 500, I = 400, G = 300, X = 500, M = 600. PIB ? Réponse : 2 100.
- Question 3 : PIB nominal 2 200, déflateur 110. PIB réel ? Réponse : 2 000.
- Question 4 : IPC de 140 à 147. Inflation ? Réponse : 5 %.
- Question 5 : 0,45 million de chômeurs et 2,55 millions d''actifs occupés. Taux de chômage ? Réponse : 0,45 / 3 = 15 %.

Bon courage pour vos révisions.', 'video', 90, false, 70
from public.courses c where c.slug = 'lic-eco-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Macroéconomie 1');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Mathématiques pour économistes', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 1 en économie et gestion.
- Objectifs : dériver avec assurance, calculer une élasticité, optimiser avec et sans contrainte, utiliser la croissance composée.
- Matériel : tableau, calculatrice scientifique, fiche de formules.
- Prérequis : leçon « Mathématiques pour économistes : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour. Beaucoup d''étudiants pensent que les mathématiques sont un obstacle à l''économie. C''est l''inverse : elles rendent les raisonnements précis. Aujourd''hui, pas de théorie gratuite : chaque outil sera immédiatement appliqué à un problème économique. Visuel : une courbe de profit en forme de colline, avec son sommet.

## 05:00 – 15:00 · Rappels sur les fonctions

Une fonction associe à chaque valeur d''une variable une valeur unique. En économie : la demande associe une quantité à un prix, le coût total un montant à une quantité. Je trace trois exemples : une droite décroissante, Q = 500 − 5P ; une parabole tournée vers le bas, RT = 120Q − Q² ; une courbe exponentielle, celle d''un capital qui croît chaque année.

Un capital fictif de 2 000 000 FCFA placé à 6 % par an (taux fictif pour l''exemple) devient au bout de 5 ans 2 000 000 × 1,06^5 = 2 676 451 FCFA. La croissance composée est la base de tous les calculs de croissance du PIB.

Le logarithme est l''outil inverse de l''exponentielle. Question : en combien d''années un PIB qui croît de 7 % par an double-t-il ? On résout 1,07^n = 2, donc n = ln 2 / ln 1,07, soit environ 10,2 ans. La règle de 70 donne 70/7 = 10 ans : une bonne approximation de tête. Retenez aussi qu''une petite différence de taux, cumulée sur une génération, produit des écarts considérables : c''est un argument central de l''économie du développement que vous retrouverez en Licence 3.

## 15:00 – 30:00 · Dérivées : la boîte à outils

Je donne les règles et nous les pratiquons tout de suite. Dérivée d''une constante : 0. De x^n : n·x^(n−1). D''une somme : la somme des dérivées. D''un produit : u''v + uv''. D''un quotient : (u''v − uv'')/v². Du logarithme : 1/x. De l''exponentielle : elle-même.

Exercice éclair : dérivez CT = Q³ − 4Q² + 10Q + 50. Réponse : Cm = 3Q² − 8Q + 10. Dérivez CM = 50/Q + Q. Réponse : −50/Q² + 1. Dérivez ln(2P + 1). Réponse : 2/(2P + 1).

Interprétation : la dérivée est la grandeur marginale. Quand vous lisez « coût marginal », « recette marginale », « productivité marginale », pensez dérivée.

Passons aux dérivées partielles, indispensables dès qu''il y a deux variables. Une fonction de production fictive d''une coopérative maraîchère : Q = 10·K^0,5·L^0,5, avec K le capital et L le travail. Dériver par rapport à L, c''est traiter K comme une constante : ∂Q/∂L = 5·K^0,5·L^(−0,5). Par rapport à K : ∂Q/∂K = 5·K^(−0,5)·L^0,5. Avec K = 16 et L = 25 : Q = 10 × 4 × 5 = 200 ; la productivité marginale du travail vaut 5 × 4 / 5 = 4 et celle du capital 5 × 5 / 4 = 6,25. Interprétation : un travailleur de plus ajoute environ 4 unités de production. Le rapport des deux productivités marginales, 4/6,25 = 0,64, s''appelle le taux marginal de substitution technique : c''est l''équivalent, pour le producteur, du TMS du consommateur.

## 30:00 – 45:00 · Élasticité et dérivée

L''élasticité se calcule avec la dérivée : e = f''(P) × P / f(P). Pour Q = 500 − 5P et P = 40 : Q = 300, dQ/dP = −5, e = −5 × 40/300 = −0,67.

Pour une fonction puissance Q = A·P^α, l''élasticité est constante et vaut α. C''est pourquoi les économètres utilisent souvent des modèles en logarithmes : dans ln Q = a + α ln P, le coefficient α est directement une élasticité. Vous le reverrez en Licence 2.

Un dernier lien très utile entre dérivée et élasticité : la recette totale RT = P × Q. Si l''on dérive par rapport à P, on obtient dRT/dP = Q + P × dQ/dP = Q × (1 + e). Conclusion : si e est compris entre −1 et 0, la recette augmente avec le prix ; si e est inférieur à −1, elle diminue ; si e = −1, la recette est maximale. Vérifions avec Q = 500 − 5P : RT = 500P − 5P², dRT/dP = 500 − 10P, nulle en P = 50. Et en P = 50, Q = 250 et e = −5 × 50/250 = −1. La théorie et le calcul se confirment : c''est ce type de vérification croisée qui rassure le correcteur et vous évite les erreurs.

## 45:00 – 50:00 · Pause et quiz interactif

- Question 1 : dérivée de 7Q² ? Réponse : 14Q.
- Question 2 : f''''(x) < 0 au point où f''(x) = 0 : maximum ou minimum ? Réponse : maximum.
- Question 3 : élasticité de Q = 30·P^(−0,4) ? Réponse : −0,4.

## 50:00 – 1:05:00 · Optimisation sans contrainte

Une entreprise fictive a une recette RT = 120Q − Q² et un coût CT = Q² + 20Q + 600. Profit : π = 100Q − 2Q² − 600. Condition du premier ordre : π'' = 100 − 4Q = 0, Q = 25. Condition du second ordre : π'''' = −4 < 0, c''est bien un maximum. Profit maximal : 2 500 − 1 250 − 600 = 650. Si les montants sont en milliers de FCFA, le profit est de 650 000 FCFA.

Vérification économique : à Q = 25, recette marginale = 120 − 50 = 70 et coût marginal = 50 + 20 = 70. On retrouve la règle universelle : on produit jusqu''à ce que recette marginale et coût marginal soient égaux.

Deuxième exemple, un minimum : f(x) = 3x² − 12x + 1. f''(x) = 6x − 12 = 0, x = 2 ; f'''' = 6 > 0, minimum ; f(2) = −11.

## 1:05:00 – 1:20:00 · Optimisation sous contrainte

Maximisons U = x·y sous 2x + 5y = 100. Lagrangien : L = xy + λ(100 − 2x − 5y). Dérivées : y − 2λ = 0 ; x − 5λ = 0 ; 100 − 2x − 5y = 0. Donc y = 2λ et x = 5λ ; ainsi 2x = 10λ et 5y = 10λ, d''où 2x = 5y : à l''optimum, les dépenses consacrées aux deux biens sont égales. Contrainte : 2x + 2x = 100, x = 25, y = 10, λ = 5.

Interprétation de λ : si le budget augmente d''une unité, l''utilité augmente d''environ 5. C''est le « prix implicite » de la contrainte.

Méthode par substitution : y = (100 − 2x)/5 = 20 − 0,4x. U = 20x − 0,4x². U'' = 20 − 0,8x = 0, x = 25, y = 10. Même résultat ; choisissez la méthode demandée par l''énoncé, sinon la plus rapide.

Application côté producteur : minimiser le coût. La coopérative veut produire Q = 200 avec Q = 10·K^0,5·L^0,5 ; le travail coûte 4 et le capital 16 (milliers de FCFA par unité, valeurs fictives). Condition d''optimum : le rapport des productivités marginales égale le rapport des prix des facteurs, PmL/PmK = w/r. Ici PmL/PmK = K/L, donc K/L = 4/16 et L = 4K. On remplace dans la contrainte : 10·√(K × 4K) = 20K = 200, d''où K = 10 et L = 40. Coût minimal : 4 × 40 + 16 × 10 = 160 + 160 = 320, soit 320 000 FCFA. Remarquez que, comme pour le consommateur avec U = x·y, la dépense se partage à égalité entre les deux facteurs : c''est une propriété des fonctions de type Cobb-Douglas aux exposants égaux.

Conseil de correcteur : dans ce type d''exercice, écrivez toujours la condition générale avant de la particulariser. Une copie qui écrit « PmL/PmK = w/r » obtient des points de méthode même si une erreur de calcul se glisse ensuite.

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Synthèse : la dérivée mesure le marginal ; l''élasticité combine dérivée et niveaux ; l''optimum se trouve avec la condition du premier ordre et se confirme avec la condition du second ordre ; sous contrainte, le lagrangien ou la substitution.

Évaluation finale :

- Question 1 : dérivez f(x) = 4x³ − 2x + 9. Réponse : 12x² − 2.
- Question 2 : f(x) = 3x² − 12x + 1. Extremum ? Réponse : minimum en x = 2, f(2) = −11.
- Question 3 : CT = 0,5Q² + 10Q + 200, P = 40. Production optimale et profit ? Réponse : 40 = Q + 10, Q = 30 ; profit = 1 200 − 950 = 250.
- Question 4 : élasticité de Q = 500 − 5P en P = 40 ? Réponse : −0,67.
- Question 5 : max U = x·y sous 2x + 5y = 100 ? Réponse : x = 25, y = 10.

Merci à toutes et à tous ; entraînez-vous chaque jour un quart d''heure, c''est plus efficace qu''une nuit blanche.', 'video', 90, false, 80
from public.courses c where c.slug = 'lic-eco-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Mathématiques pour économistes');

-- Cours : Économie Licence 2 : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'lic-eco-l2', (select id from public.levels where name = 'Licence 2'), null, 'Économie', 'Économie Licence 2 : réussir ses examens', 'Préparation aux partiels et examens semestriels de la Licence 2 en sciences économiques (système LMD, contexte Sénégal et UEMOA). Le cours couvre la microéconomie 2 (concurrence, monopole, oligopole, théorie des jeux), la macroéconomie 2 (modèle keynésien, IS-LM, politiques budgétaire et monétaire) et la statistique et l''économétrie introductive (régression simple et interprétation). Fiches, exercices corrigés, sujet type et trois cours vidéo de 1h30. Prérequis : microéconomie, macroéconomie et mathématiques de Licence 1.', true, 362
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Licence 2 en Économie', '## Objectifs de la leçon

- Situer la Licence 2 dans le parcours LMD et comprendre ce qui change par rapport à la première année.
- Connaître les matières clés et les épreuves typiques.
- Organiser six semaines de révision efficaces.

## La Licence 2 dans le système LMD

La Licence 2 correspond aux semestres 3 et 4 du cycle de licence. Comme en première année, chaque semestre est composé d''unités d''enseignement (UE) regroupant des matières (éléments constitutifs), et chaque UE validée apporte des crédits. Dans le schéma LMD courant, un semestre représente 30 crédits ; mais les coefficients, les règles de compensation, la place du contrôle continu et les conditions d''admission en Licence 3 sont propres à chaque établissement. Le règlement des examens de votre université ou école fait foi : relisez-le, notamment pour les UE de Licence 1 éventuellement non acquises, que certains établissements permettent de repasser en parallèle.

Ce qui change en Licence 2 : le niveau d''abstraction augmente. On passe de la description (mesurer le PIB, tracer une offre et une demande) à la modélisation (expliquer pourquoi une entreprise en monopole fixe un prix plus élevé, pourquoi une hausse des dépenses publiques fait monter le taux d''intérêt). Les examens demandent davantage de raisonnement graphique et d''interprétation, et moins de simple restitution.

## Les matières clés de la Licence 2

- Microéconomie 2 : structures de marché. Concurrence parfaite à court et long terme, monopole, perte sèche, oligopole (Cournot, Bertrand, Stackelberg), introduction à la théorie des jeux (stratégie dominante, équilibre de Nash, dilemme du prisonnier).
- Macroéconomie 2 : modèle keynésien et multiplicateur, modèle IS-LM, efficacité des politiques budgétaire et monétaire, effet d''éviction, spécificités d''une union monétaire comme l''UEMOA.
- Statistique et économétrie introductive : statistiques descriptives à deux variables, covariance et corrélation, régression linéaire simple par les moindres carrés ordinaires, coefficient de détermination, test de significativité, interprétation.

Ces matières prolongent la Licence 1 sans la répéter. Elles préparent la Licence 3, consacrée à l''économie du développement, à l''économie monétaire et internationale et à l''économie publique. Selon les établissements, l''année comprend aussi l''histoire de la pensée économique, la comptabilité nationale approfondie, le droit, l''informatique (tableur, logiciel statistique) et les langues.

## Les types d''épreuves

- L''exercice chiffré long : par exemple « monopole puis duopole de Cournot » ou « équilibre IS-LM puis politique budgétaire ». Les questions s''enchaînent : une erreur au début se propage, d''où l''importance de vérifier chaque résultat intermédiaire.
- Le graphique commenté : déplacement de IS ou de LM, perte sèche du monopole. On attend des axes nommés, des courbes repérées, les points d''équilibre avant et après.
- La question de réflexion : « La politique budgétaire est-elle efficace dans une union monétaire ? ». Plan structuré, mobilisation des modèles, exemples.
- L''exercice d''économétrie : calcul à la main d''une régression sur 4 à 8 observations, ou lecture d''une sortie de logiciel (coefficients, écarts-types, t de Student, R²) et interprétation.
- Le QCM ou vrai-faux justifié.
- Le dossier ou mini-projet : collecte de données, régression sur tableur, rapport de quelques pages.

## Méthode de révision

Révisez par modèles. Pour chaque modèle (monopole, Cournot, keynésien, IS-LM, régression), une fiche avec : hypothèses, équations, méthode de résolution pas à pas, graphique décrit, résultat type, interprétation, limites.

Entraînez-vous aux enchaînements. Les sujets de Licence 2 font souvent comparer deux situations : concurrence et monopole, monopole et duopole, politique budgétaire avec et sans effet d''éviction. Prenez l''habitude de présenter un tableau comparatif final : il impressionne favorablement le correcteur et vous oblige à vérifier la cohérence.

Pour l''économétrie, refaites les calculs à la main avec un tableau de colonnes (x, y, écarts, produits, carrés). C''est long la première fois, rapide la dixième. Apprenez aussi à lire une sortie de logiciel.

Enfin, liez théorie et réalité : un marché de ciment avec peu de producteurs, une compagnie aérienne en situation de quasi-monopole sur une ligne, la politique monétaire commune de la BCEAO. Les correcteurs apprécient les exemples bien choisis, à condition de ne pas inventer de chiffres réels.

## Plan de révision sur 6 semaines

- Semaine 1 : diagnostic et remise à niveau (dérivées, systèmes de deux équations, sommes et moyennes).
- Semaine 2 : microéconomie 2, concurrence et monopole (calculs de surplus et de perte sèche).
- Semaine 3 : microéconomie 2, oligopole et théorie des jeux (fonctions de réaction, matrices de gains).
- Semaine 4 : macroéconomie 2, modèle keynésien, multiplicateurs, IS-LM et politiques.
- Semaine 5 : statistique et économétrie : régression à la main, lecture de sorties, interprétation.
- Semaine 6 : sujets blancs complets, correction, fiches de synthèse, repos.

## Points clés

- La Licence 2 demande de modéliser et d''interpréter, pas seulement de calculer.
- Une fiche par modèle, un tableau comparatif par chapitre.
- Le règlement des examens de votre établissement fixe les règles de validation.

## Exercices

- Exercice 1 : citez les trois matières clés de la Licence 2 et un modèle central pour chacune.
- Exercice 2 : expliquez la différence entre un exercice de Licence 1 et un exercice de Licence 2 sur un même thème (par exemple le marché).
- Exercice 3 : construisez la fiche-type du modèle de monopole (hypothèses, condition d''optimum, résultat, limites).
- Exercice 4 : proposez un planning hebdomadaire pour la semaine 4 du plan de révision.

## Corrigé

- Exercice 1 : microéconomie 2 (monopole ou Cournot) ; macroéconomie 2 (IS-LM) ; économétrie (régression linéaire simple par les MCO).
- Exercice 2 : en Licence 1, on calcule un équilibre de concurrence ; en Licence 2, on compare cet équilibre à celui d''un monopole ou d''un oligopole, on mesure la perte de bien-être et on interprète le pouvoir de marché.
- Exercice 3 : hypothèses : un seul vendeur, pas de substitut proche, barrières à l''entrée ; condition : recette marginale = coût marginal ; résultat : quantité plus faible et prix plus élevé qu''en concurrence, perte sèche ; limites : menace d''entrée, régulation, demande élastique.
- Exercice 4 : par exemple lundi multiplicateurs, mardi courbe IS, mercredi courbe LM, jeudi équilibre et politiques, vendredi exercice de synthèse chronométré, samedi correction et fiche.', 'texte', 45, true, 10
from public.courses c where c.slug = 'lic-eco-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Licence 2 en Économie');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Microéconomie 2 (structures de marché) : l''essentiel pour l''examen', '## Objectifs

- Comparer concurrence parfaite et monopole, mesurer la perte sèche.
- Résoudre un duopole de Cournot, de Bertrand et de Stackelberg.
- Trouver un équilibre de Nash dans un jeu simple.

## Fiche 1 : concurrence parfaite

Hypothèses : atomicité (beaucoup d''acheteurs et de vendeurs), homogénéité du produit, libre entrée et sortie, information parfaite, mobilité des facteurs. Chaque entreprise est preneuse de prix et produit là où P = Cm. À long terme, la libre entrée fait disparaître le profit économique : le prix descend au minimum du coût moyen.

Le surplus du consommateur est la différence entre ce que les acheteurs étaient prêts à payer et ce qu''ils paient ; graphiquement, le triangle entre la demande et le prix. Le surplus du producteur est le triangle entre le prix et l''offre (ou le Cm).

## Fiche 2 : le monopole

Un seul vendeur face à la demande du marché. La recette marginale est inférieure au prix, car pour vendre une unité de plus le monopole doit baisser le prix sur toutes les unités. Condition d''optimum : Rm = Cm. Le prix se lit ensuite sur la demande.

Exemple : marché fictif d''un service de transport fluvial sur une ligne isolée. Demande inverse P = 1100 − Q (P en FCFA, Q en passagers par semaine), coût marginal constant = 200 FCFA, sans coût fixe pour simplifier.

- Concurrence (référence) : P = Cm = 200, Q = 900. Surplus du consommateur = 0,5 × 900 × 900 = 405 000 FCFA.
- Monopole : RT = 1 100Q − Q², Rm = 1 100 − 2Q. Rm = Cm donne Q = 450, P = 650 FCFA. Profit = (650 − 200) × 450 = 202 500 FCFA. Surplus du consommateur = 0,5 × 450 × 450 = 101 250 FCFA.
- Perte sèche = 0,5 × (650 − 200) × (900 − 450) = 101 250 FCFA : bien-être perdu par tous, ni gagné par le monopole ni par les clients.

Indice de Lerner : L = (P − Cm)/P = 450/650 = 0,692. On montre que L = 1/|e| à l''optimum : ici e = −650/450 = −1,444 et 1/1,444 = 0,692. Le monopole se place toujours sur la partie élastique de la demande.

Schéma décrit : demande décroissante de 1 100 à 900 sur l''axe des quantités ; Rm deux fois plus pentue, coupant l''axe des quantités en 450 ; Cm horizontal à 200 ; le monopole se place en Q = 450 et lit le prix 650 sur la demande ; la perte sèche est le triangle entre Q = 450 et Q = 900, sous la demande et au-dessus du Cm.

Les monopoles naturels (réseaux d''eau, d''électricité) sont souvent régulés : prix plafonds, obligations de service, autorités de régulation sectorielle.

## Fiche 3 : l''oligopole

Quelques entreprises interdépendantes : chacune doit anticiper la réaction des autres.

Cournot (concurrence en quantités) : chaque entreprise choisit sa quantité en prenant celle de l''autre comme donnée. Même marché, deux opérateurs aux coûts identiques. Profit de 1 : π1 = (1 100 − q1 − q2 − 200)q1. Condition : 900 − 2q1 − q2 = 0, d''où la fonction de réaction q1 = (900 − q2)/2. Par symétrie, q1 = q2 = 300, Q = 600, P = 500 FCFA, profit de chacun = 90 000 FCFA. Le résultat se situe entre le monopole (450) et la concurrence (900).

Bertrand (concurrence en prix, produits identiques) : chacun a intérêt à baisser légèrement son prix sous celui de l''autre ; l''équilibre est P = Cm = 200, comme en concurrence, avec seulement deux entreprises : c''est le paradoxe de Bertrand.

Stackelberg (un meneur, un suiveur) : le meneur choisit sa quantité en anticipant la fonction de réaction du suiveur. Ici q1 = 450, q2 = 225, P = 425 FCFA ; profit du meneur 101 250, du suiveur 50 625 : l''avantage du premier à jouer.

Cartel : si les deux s''entendent pour produire la quantité de monopole (225 chacun), chacun gagne 101 250 FCFA. Mais si l''un respecte l''accord et que l''autre triche en jouant sa meilleure réponse, q = (900 − 225)/2 = 337,5 : le prix tombe à 537,5 FCFA, le tricheur gagne 113 906,25 FCFA et l''autre 75 937,5 FCFA. L''entente est instable. Rappel : les ententes sont interdites par le droit de la concurrence, notamment au niveau de l''UEMOA.

## Fiche 4 : théorie des jeux

Un jeu : des joueurs, des stratégies, des gains. Une stratégie est dominante si elle est la meilleure quelle que soit la stratégie de l''autre. Un équilibre de Nash est une situation où aucun joueur n''a intérêt à changer seul de stratégie.

Dilemme du prisonnier, version cimenteries fictives (gains en millions de FCFA, entreprise A puis B) :

- A respecte, B respecte : 10 ; 10.
- A respecte, B triche : 6 ; 12.
- A triche, B respecte : 12 ; 6.
- A triche, B triche : 8 ; 8.

Pour A : si B respecte, tricher rapporte 12 contre 10 ; si B triche, tricher rapporte 8 contre 6. Tricher est dominant pour A, et de même pour B. Équilibre de Nash : (triche, triche) avec 8 ; 8, alors que (respecte, respecte) donnerait 10 ; 10. La rationalité individuelle conduit à un résultat collectivement moins bon. En jeu répété, la coopération peut se maintenir grâce à la menace de représailles.

Méthode pour trouver les équilibres de Nash : soulignez la meilleure réponse de chaque joueur à chaque stratégie de l''autre ; les cases doublement soulignées sont des équilibres. Il peut y en avoir plusieurs (jeux de coordination) ou aucun en stratégies pures.

## Exercices pratiques

- Exercice 1 (cours) : définissez le paradoxe de Bertrand.
- Exercice 2 : P = 700 − Q et Cm = 100. Calculez l''équilibre de monopole, le profit et la perte sèche.
- Exercice 3 : même marché, duopole de Cournot symétrique. Calculez les quantités, le prix et les profits.
- Exercice 4 : calculez l''indice de Lerner du monopole de l''exercice 2.
- Exercice 5 : jeu de coordination entre deux banques fictives choisissant une norme de paiement mobile, X ou Y. Gains : (X, X) = 5 ; 5 ; (Y, Y) = 3 ; 3 ; (X, Y) = (Y, X) = 0 ; 0. Trouvez les équilibres de Nash.
- Exercice 6 (cas pratique) : une autorité de régulation hésite entre fixer un prix plafond au monopole de l''exercice 2 égal au coût marginal ou laisser entrer un second opérateur. Comparez à l''aide des résultats précédents.

## Corrigé

- Exercice 1 : avec deux entreprises vendant un produit identique et rivalisant en prix, l''équilibre est P = Cm, comme en concurrence parfaite.
- Exercice 2 : Rm = 700 − 2Q = 100, Q = 300, P = 400 ; profit = 300 × 300 = 90 000 FCFA. En concurrence, Q = 600 ; perte sèche = 0,5 × 300 × 300 = 45 000 FCFA.
- Exercice 3 : q = (600 − qj)/2, d''où q = 200 chacun, Q = 400, P = 300 ; profit = 200 × 200 = 40 000 FCFA chacun.
- Exercice 4 : L = (400 − 100)/400 = 0,75.
- Exercice 5 : deux équilibres de Nash, (X, X) et (Y, Y). (X, X) est préférable pour les deux, mais rien ne garantit que les joueurs s''y coordonnent sans concertation ou norme commune.
- Exercice 6 : le prix plafond à 100 FCFA ramène la quantité à 600 et supprime la perte sèche, mais il faut que l''opérateur couvre ses coûts fixes éventuels ; l''entrée d''un concurrent (Cournot) fait passer la quantité de 300 à 400 et le prix de 400 à 300, ce qui réduit la perte sèche sans l''annuler. Le choix dépend des coûts fixes et de la capacité de contrôle du régulateur.', 'texte', 60, false, 20
from public.courses c where c.slug = 'lic-eco-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Microéconomie 2 (structures de marché) : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Macroéconomie 2 (keynésien, IS-LM, politiques) : l''essentiel pour l''examen', '## Objectifs

- Déterminer le revenu d''équilibre keynésien et calculer les multiplicateurs.
- Construire les courbes IS et LM et calculer l''équilibre.
- Analyser l''efficacité des politiques budgétaire et monétaire.

## Fiche 1 : le modèle keynésien simple

Pour Keynes, à court terme, c''est la demande globale qui détermine la production : les entreprises produisent ce qu''elles pensent vendre. La consommation dépend du revenu disponible : C = C0 + c·Yd, où c est la propension marginale à consommer (entre 0 et 1) et Yd = Y − T.

Équilibre : Y = C + I + G. Exemple (milliards de FCFA, économie fictive) : C = 100 + 0,8(Y − 200), I = 300, G = 200. Y = 100 + 0,8Y − 160 + 300 + 200, soit 0,2Y = 440 et Y = 2 200.

Les multiplicateurs :

- Multiplicateur des dépenses (G ou I) : 1/(1 − c) = 1/0,2 = 5. Une hausse de G de 40 accroît Y de 200.
- Multiplicateur fiscal (impôt forfaitaire) : −c/(1 − c) = −4. Une hausse des impôts de 40 réduit Y de 160.
- Théorème d''Haavelmo : une hausse de G financée par une hausse égale de T a un multiplicateur de 1.
- Avec un impôt proportionnel au taux t : 1/(1 − c(1 − t)). Avec t = 0,25 (taux fictif pour l''exemple) : 1/(1 − 0,6) = 2,5.
- En économie ouverte, avec une propension marginale à importer m = 0,1 : 1/(1 − c(1 − t) + m) = 1/0,5 = 2. Plus une économie importe, plus le multiplicateur est faible : une partie de la demande supplémentaire profite aux producteurs étrangers. C''est un point important pour des économies où beaucoup de biens d''équipement et de consommation sont importés.

## Fiche 2 : la courbe IS

IS (Investment = Saving) rassemble les couples (i, Y) qui équilibrent le marché des biens. L''investissement dépend négativement du taux d''intérêt : I = I0 − b·i.

Exemple : I = 300 − 20i (i en %). Y = 100 + 0,8(Y − 200) + 300 − 20i + 200, soit 0,2Y = 440 − 20i et Y = 2 200 − 100i. IS est décroissante : un taux plus élevé réduit l''investissement donc la production. Une hausse de G déplace IS vers la droite.

## Fiche 3 : la courbe LM

LM (Liquidity = Money) rassemble les couples (i, Y) qui équilibrent le marché de la monnaie. L''offre de monnaie réelle M/P est fixée par la banque centrale. La demande de monnaie augmente avec le revenu (motif de transaction) et diminue avec le taux d''intérêt (motif de spéculation) : L = kY − h·i.

Exemple : M/P = 900 et L = 0,5Y − 50i. Équilibre : 900 = 0,5Y − 50i, soit Y = 1 800 + 100i. LM est croissante. Une hausse de l''offre de monnaie déplace LM vers la droite.

## Fiche 4 : l''équilibre IS-LM

On résout le système : 2 200 − 100i = 1 800 + 100i, d''où i* = 2 % et Y* = 2 000. Vérification sur LM : 0,5 × 2 000 − 50 × 2 = 900.

Schéma décrit : taux d''intérêt en ordonnée, revenu en abscisse ; IS décroissante, LM croissante ; elles se coupent en (2 000 ; 2 %).

## Fiche 5 : politiques économiques

Politique budgétaire expansionniste : G passe de 200 à 240. IS devient Y = 2 400 − 100i. Nouvel équilibre : 2 400 − 100i = 1 800 + 100i, i = 3 % et Y = 2 100. Dans le modèle keynésien simple, Y aurait augmenté de 200 ; ici seulement de 100. La différence est l''effet d''éviction : la hausse du revenu accroît la demande de monnaie, le taux d''intérêt monte et l''investissement privé recule (de 20 × 1 = 20, qui multiplié par 5 donne bien les 100 manquants).

Politique monétaire expansionniste : M/P passe de 900 à 950. LM devient Y = 1 900 + 100i. Équilibre : 2 200 − 100i = 1 900 + 100i, i = 1,5 % et Y = 2 050. La baisse du taux stimule l''investissement.

Efficacité selon les pentes : la politique budgétaire est d''autant plus efficace que LM est plate (demande de monnaie très sensible au taux ; cas extrême de la trappe à liquidité) et que l''investissement est peu sensible au taux. La politique monétaire est d''autant plus efficace que IS est plate et LM pentue. Le dosage (policy mix) combine les deux.

Dans l''UEMOA, la politique monétaire est commune et conduite par la BCEAO ; chaque État ne dispose donc, au niveau national, que de la politique budgétaire, encadrée par des critères de convergence communautaires. La question de l''efficacité de la politique budgétaire dans une économie ouverte à change fixe sera approfondie en Licence 3.

## Limites

IS-LM suppose des prix fixes à court terme, une économie fermée et ignore les anticipations. Il reste l''outil de base pour raisonner sur les politiques conjoncturelles.

## Exercices pratiques

- Exercice 1 (cours) : définissez la propension marginale à consommer et l''effet d''éviction.
- Exercice 2 : C = 80 + 0,75Yd, T = 120, I = 170, G = 150. Calculez Y et le multiplicateur des dépenses.
- Exercice 3 : dans l''exercice 2, de combien Y varie-t-il si T augmente de 40 ? Si G et T augmentent chacun de 40 ?
- Exercice 4 : IS : Y = 1 600 − 50i ; LM : Y = 1 000 + 100i. Calculez l''équilibre.
- Exercice 5 : dans l''exercice 4, une politique budgétaire déplace IS de 150 vers la droite. Nouvel équilibre et effet d''éviction ?
- Exercice 6 (cas pratique) : un pays membre de l''UEMOA connaît un ralentissement. Quels instruments peut-il utiliser seul ? Quelles limites ?

## Corrigé

- Exercice 1 : la propension marginale à consommer est la part d''un revenu supplémentaire consacrée à la consommation (ΔC/ΔYd) ; l''effet d''éviction est la baisse de l''investissement privé provoquée par la hausse du taux d''intérêt consécutive à une politique budgétaire expansionniste.
- Exercice 2 : Y = 80 + 0,75(Y − 120) + 170 + 150, 0,25Y = 310, Y = 1 240. Multiplicateur = 1/0,25 = 4.
- Exercice 3 : multiplicateur fiscal = −0,75/0,25 = −3, ΔY = −120. Si G et T augmentent de 40 : ΔY = 160 − 120 = +40 (multiplicateur de budget équilibré égal à 1).
- Exercice 4 : 1 600 − 50i = 1 000 + 100i, 150i = 600, i = 4 %, Y = 1 400.
- Exercice 5 : IS : Y = 1 750 − 50i ; 750 = 150i, i = 5 %, Y = 1 500. Hausse de Y de 100 au lieu de 150 : effet d''éviction de 50.
- Exercice 6 : il ne peut pas utiliser seul la politique monétaire (commune) ni le taux de change (fixe vis-à-vis de l''euro). Il dispose de la politique budgétaire : investissements publics, baisse temporaire d''impôts. Limites : critères de convergence, coût et disponibilité du financement, fuite par les importations, risque d''éviction.', 'texte', 60, false, 30
from public.courses c where c.slug = 'lic-eco-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Macroéconomie 2 (keynésien, IS-LM, politiques) : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Statistiques et économétrie introductive : l''essentiel pour l''examen', '## Objectifs

- Décrire une série à deux variables (moyennes, variances, covariance, corrélation).
- Estimer une régression linéaire simple par les moindres carrés ordinaires.
- Interpréter les coefficients, le R² et un test de significativité.

## Fiche 1 : statistiques descriptives à deux variables

Moyenne : x̄ = Σx / n. Variance : V(x) = Σ(x − x̄)² / n (variance de la population) ; on divise par n − 1 pour la variance d''échantillon corrigée. Écart-type : racine carrée de la variance. Covariance : cov(x, y) = Σ(x − x̄)(y − ȳ) / n. Coefficient de corrélation linéaire : r = cov(x, y) / (σx·σy), compris entre −1 et 1.

Une corrélation forte ne prouve pas une causalité : deux variables peuvent évoluer ensemble parce qu''elles dépendent d''un troisième facteur (variable omise), ou par simple coïncidence.

## Fiche 2 : le modèle de régression simple

On suppose y = a + b·x + u, où u est une erreur aléatoire. Les moindres carrés ordinaires (MCO) choisissent a et b qui minimisent la somme des carrés des résidus. Les formules :

- b = Σ(x − x̄)(y − ȳ) / Σ(x − x̄)².
- a = ȳ − b·x̄.

La droite passe toujours par le point moyen (x̄ ; ȳ).

## Fiche 3 : exemple complet

Une entreprise fictive de distribution de jus de bissap à Dakar observe pendant cinq mois ses dépenses de publicité x (millions de FCFA) et ses ventes y (millions de FCFA) :

- Mois 1 : x = 1 ; y = 12.
- Mois 2 : x = 2 ; y = 15.
- Mois 3 : x = 3 ; y = 19.
- Mois 4 : x = 4 ; y = 20.
- Mois 5 : x = 5 ; y = 24.

Moyennes : x̄ = 3, ȳ = 18. Écarts de x : −2, −1, 0, 1, 2. Écarts de y : −6, −3, 1, 2, 6. Somme des produits des écarts = 12 + 3 + 0 + 2 + 12 = 29. Somme des carrés des écarts de x = 10. Somme des carrés des écarts de y = 86.

b = 29/10 = 2,9 ; a = 18 − 2,9 × 3 = 9,3. Droite estimée : ŷ = 9,3 + 2,9x.

Interprétation : chaque million de FCFA supplémentaire de publicité est associé, en moyenne, à 2,9 millions de ventes en plus. La constante 9,3 représente le niveau de ventes estimé sans publicité ; elle n''est à interpréter qu''avec prudence, car x = 0 est en dehors des données observées.

## Fiche 4 : qualité de l''ajustement

Décomposition : somme des carrés totale (SCT) = somme des carrés expliquée (SCE) + somme des carrés des résidus (SCR). R² = SCE/SCT, entre 0 et 1 : part de la variance de y expliquée par x.

Dans l''exemple : SCT = 86 ; SCE = b × Σ(x − x̄)(y − ȳ) = 2,9 × 29 = 84,1 ; SCR = 1,9 ; R² = 84,1/86 = 0,978. En régression simple, R² = r², et r = 29/√(10 × 86) = 0,989.

Un R² élevé ne signifie pas que le modèle est bon : avec des séries qui croissent toutes avec le temps, on obtient des R² élevés sans aucun lien réel (régression fallacieuse).

## Fiche 5 : significativité du coefficient

Variance estimée des erreurs : s² = SCR/(n − 2) = 1,9/3 = 0,633. Écart-type de b : s(b) = √(s²/Σ(x − x̄)²) = √(0,633/10) = 0,252. Statistique t = b/s(b) = 11,5.

On teste H0 : b = 0 (la publicité n''a pas d''effet) contre H1 : b ≠ 0. Avec n − 2 = 3 degrés de liberté, la valeur critique de Student au seuil de 5 % (test bilatéral) est 3,182 (table de Student). Comme 11,5 > 3,182, on rejette H0 : le coefficient est significativement différent de zéro. Sur une sortie de logiciel, on lit aussi la p-value : si elle est inférieure à 0,05, on rejette H0 au seuil de 5 %.

Prévision : pour x = 6, ŷ = 9,3 + 2,9 × 6 = 26,7 millions. Prudence : on extrapole hors des données observées.

## Fiche 6 : formes fonctionnelles

- Modèle log-log : ln y = a + b ln x ; b est une élasticité. Si ln Q = 5 − 1,2 ln P, une hausse de 1 % du prix réduit la quantité d''environ 1,2 %.
- Modèle semi-log : ln y = a + b·x ; 100·b est approximativement la variation en % de y pour une unité de x en plus.

## Hypothèses et pièges

Les MCO donnent de bons estimateurs si les erreurs sont de moyenne nulle, de variance constante, non corrélées entre elles et avec x. Pièges classiques : variable omise, causalité inverse, valeurs aberrantes, trop peu d''observations.

## Exercices pratiques

- Exercice 1 (cours) : que mesure le R² ? Peut-il être négatif en régression simple avec constante ?
- Exercice 2 : x = 10, 20, 30, 40 ; y = 25, 33, 47, 55. Calculez a et b.
- Exercice 3 : calculez le R² de l''exercice 2.
- Exercice 4 : une sortie de logiciel donne b = 0,45, écart-type 0,30, n = 30. Le coefficient est-il significatif à 5 % (valeur critique approximative 2,05) ?
- Exercice 5 : interprétez ln(dépenses alimentaires) = 1,2 + 0,6 ln(revenu).
- Exercice 6 (cas pratique) : une ONG fictive constate une forte corrélation positive entre le nombre de forages et le taux de maladies hydriques par village. Faut-il arrêter les forages ?

## Corrigé

- Exercice 1 : le R² mesure la part de la variance de y expliquée par le modèle ; avec constante, il est compris entre 0 et 1, jamais négatif.
- Exercice 2 : x̄ = 25, ȳ = 40 ; Σ(x − x̄)(y − ȳ) = 225 + 35 + 35 + 225 = 520 ; Σ(x − x̄)² = 500 ; b = 1,04 ; a = 40 − 26 = 14. ŷ = 14 + 1,04x.
- Exercice 3 : SCT = 225 + 49 + 49 + 225 = 548 ; SCE = 1,04 × 520 = 540,8 ; R² = 0,987.
- Exercice 4 : t = 0,45/0,30 = 1,5 < 2,05 : on ne rejette pas H0, le coefficient n''est pas significatif à 5 %.
- Exercice 5 : élasticité-revenu de 0,6 : quand le revenu augmente de 1 %, les dépenses alimentaires augmentent d''environ 0,6 % ; l''alimentation est un bien nécessaire (loi d''Engel).
- Exercice 6 : non. Corrélation n''est pas causalité : les forages sont probablement implantés en priorité dans les villages où les maladies hydriques sont fréquentes (causalité inverse). Il faudrait comparer l''évolution avant et après forage, ou des villages comparables.', 'texte', 60, false, 40
from public.courses c where c.slug = 'lic-eco-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Statistiques et économétrie introductive : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Licence 2 Économie (entraînement, corrigé détaillé)', '## Présentation

Sujet d''entraînement au format d''un examen semestriel de Licence 2 d''économie ; ce n''est pas un sujet officiel. Durée conseillée : 3 heures. Calculatrice non programmable autorisée. Barème indicatif, non officiel, sur 20 points. Table de Student fournie : valeur critique bilatérale à 5 % pour 3 degrés de liberté = 3,182.

## Sujet

Partie A, microéconomie 2 (7 points). Sur un marché fictif de location de matériel agricole, la demande inverse est P = 500 − Q et le coût marginal constant vaut 80 (milliers de FCFA).

- A1 (2,5 points) : déterminez l''équilibre de monopole, son profit et la perte sèche par rapport à la concurrence.
- A2 (1 point) : calculez l''indice de Lerner et interprétez.
- A3 (2,5 points) : deux loueurs identiques se font concurrence à la Cournot. Calculez quantités, prix et profits.
- A4 (1 point) : comparez les trois structures dans un tableau.

Partie B, macroéconomie 2 (7 points). Économie fictive (milliards de FCFA) : C = 50 + 0,75(Y − T), T = 100, I = 250 − 10i, G = 150, offre de monnaie réelle 285, demande de monnaie L = 0,25Y − 20i.

- B1 (2 points) : établissez les équations de IS et de LM.
- B2 (1,5 point) : calculez l''équilibre.
- B3 (2,5 points) : G augmente de 30. Calculez le nouvel équilibre, comparez à l''effet du multiplicateur keynésien simple et mesurez l''effet d''éviction.
- B4 (1 point) : dans quel cas l''effet d''éviction serait-il nul ?

Partie C, économétrie (6 points). Une boutique fictive relève le prix x (centaines de FCFA) et les ventes y (unités par jour) : (2 ; 50), (3 ; 46), (4 ; 40), (5 ; 37), (6 ; 32).

- C1 (2,5 points) : estimez la droite des MCO.
- C2 (1,5 point) : calculez le R².
- C3 (1 point) : sachant que s(b) = 0,224, testez la significativité de b à 5 %.
- C4 (1 point) : calculez l''élasticité-prix au point moyen.

## Corrigé détaillé

A1 : Rm = 500 − 2Q = 80, Q = 210, P = 290. Profit = (290 − 80) × 210 = 44 100 (milliers de FCFA). En concurrence, P = 80 et Q = 420. Perte sèche = 0,5 × 210 × 210 = 22 050.

A2 : L = (290 − 80)/290 = 0,724. Le prix dépasse le coût marginal de 72,4 % du prix : fort pouvoir de marché.

A3 : fonction de réaction q1 = (420 − q2)/2 ; symétrie : q = 140 chacun, Q = 280, P = 220, profit de chacun = 140 × 140 = 19 600.

A4 : concurrence Q = 420, P = 80, profit nul ; Cournot Q = 280, P = 220, profits totaux 39 200 ; monopole Q = 210, P = 290, profit 44 100. Plus il y a de concurrents, plus la quantité augmente et le prix baisse.

B1 : IS : Y = 50 + 0,75Y − 75 + 250 − 10i + 150, 0,25Y = 375 − 10i, Y = 1 500 − 40i. LM : 285 = 0,25Y − 20i, Y = 1 140 + 80i.

B2 : 1 500 − 40i = 1 140 + 80i, 120i = 360, i = 3 %, Y = 1 380.

B3 : IS devient Y = 1 620 − 40i ; 480 = 120i, i = 4 %, Y = 1 460. Multiplicateur simple 1/0,25 = 4 : ΔY attendu 120 ; ΔY obtenu 80 ; effet d''éviction 40, dû à la hausse du taux d''un point qui réduit l''investissement de 10 (10 × 4 = 40).

B4 : si l''investissement est insensible au taux d''intérêt (IS verticale) ou si LM est horizontale (trappe à liquidité), ou encore si la banque centrale accompagne la politique budgétaire en maintenant le taux constant.

C1 : x̄ = 4, ȳ = 41 ; écarts de x : −2, −1, 0, 1, 2 ; écarts de y : 9, 5, −1, −4, −9. Σ produits = −18 − 5 + 0 − 4 − 18 = −45 ; Σ carrés de x = 10. b = −4,5 ; a = 41 + 18 = 59. ŷ = 59 − 4,5x : une hausse de prix de 100 FCFA réduit les ventes de 4,5 unités par jour en moyenne.

C2 : SCT = 81 + 25 + 1 + 16 + 81 = 204 ; SCE = −4,5 × −45 = 202,5 ; R² = 0,993.

C3 : t = −4,5/0,224 ≈ −20,1 ; |t| > 3,182 : b est significatif à 5 %.

C4 : e = b × x̄/ȳ = −4,5 × 4/41 = −0,44 : demande inélastique au point moyen.

## Exercices pratiques

- Exercice 1 : vrai ou faux : « un monopole se situe toujours sur la partie inélastique de la demande ».
- Exercice 2 : propension marginale à consommer 0,9 : multiplicateur des dépenses ?
- Exercice 3 : dans une matrice, une stratégie dominante est-elle toujours un équilibre de Nash si les deux joueurs en ont une ?
- Exercice 4 : r = −0,8. Que vaut R² en régression simple ?
- Exercice 5 : citez deux causes d''une corrélation sans causalité.

## Corrigé

- Exercice 1 : faux. Il se situe sur la partie élastique (|e| > 1), car Rm = P(1 + 1/e) doit être positive pour égaler un Cm positif.
- Exercice 2 : 1/(1 − 0,9) = 10.
- Exercice 3 : oui, la combinaison des stratégies dominantes est un équilibre de Nash.
- Exercice 4 : R² = 0,64.
- Exercice 5 : une variable omise qui influence les deux ; la causalité inverse ; une coïncidence liée à une tendance commune.', 'texte', 60, false, 50
from public.courses c where c.slug = 'lic-eco-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Licence 2 Économie (entraînement, corrigé détaillé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Microéconomie 2', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 2 en sciences économiques.
- Objectifs : maîtriser l''équilibre de long terme en concurrence, le monopole et sa perte sèche, l''oligopole de Cournot et la recherche d''équilibres de Nash.
- Matériel : diaporama avec graphiques, tableau, calculatrice.
- Prérequis : leçon « Microéconomie 2 : l''essentiel pour l''examen », microéconomie 1.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour à toutes et à tous. En Licence 1, vous avez étudié un marché où personne n''a de pouvoir sur le prix. Aujourd''hui, nous allons faire varier le nombre de vendeurs : beaucoup, un seul, quelques-uns. Et nous allons voir que ce nombre change tout : le prix, la quantité, le bien-être collectif. Visuel : une échelle allant de la concurrence parfaite au monopole, avec l''oligopole au milieu.

## 05:00 – 20:00 · Concurrence parfaite à long terme

Rappel : en concurrence, chaque entreprise prend le prix comme donné et produit là où P = Cm. Mais si le prix est supérieur au coût moyen, les entreprises font un profit, et ce profit attire de nouveaux entrants. L''offre augmente, le prix baisse, jusqu''à ce que le profit économique disparaisse : P = CM minimum.

Exemple : chaque atelier fictif de confection a CT = Q² + 16Q + 100. Le coût moyen CM = Q + 16 + 100/Q est minimal quand sa dérivée 1 − 100/Q² s''annule : Q = 10 et CM = 36. Le prix de long terme est donc 36 (milliers de FCFA). Si la demande du marché est Qd = 1 000 − 10P, à ce prix on demande 640 unités ; chaque atelier en produit 10 ; il y a donc 64 ateliers à l''équilibre de long terme.

Remarquez la logique : le nombre d''entreprises n''est pas une donnée, c''est un résultat. Profit économique nul ne veut pas dire que les entrepreneurs ne gagnent rien : leur rémunération normale est incluse dans les coûts.

## 20:00 – 35:00 · Le monopole et la perte sèche

Passons à l''autre extrême. Un monopole fictif fait face à P = 120 − Q et a CT = Q², donc Cm = 2Q. Sa recette totale est 120Q − Q², sa recette marginale 120 − 2Q. Condition Rm = Cm : 120 − 2Q = 2Q, Q = 30, P = 90. Profit : 2 700 − 900 = 1 800.

Si le marché était concurrentiel, l''offre serait le Cm : 120 − Q = 2Q, Q = 40, P = 80. Le monopole produit moins et vend plus cher. Perte sèche : le triangle entre Q = 30 et Q = 40, entre la demande et le Cm. En Q = 30, la demande vaut 90 et le Cm 60 : perte sèche = 0,5 × 30 × 10 = 150.

Je dessine au tableau : demande, Rm, Cm. Je hachure le profit, le surplus du consommateur et la perte sèche. Dans vos copies, faites toujours apparaître ces trois surfaces : c''est la question que posent presque tous les correcteurs.

Question à la salle : pourquoi le monopole ne produit-il pas 40 ? Réponse : pour vendre les 10 unités supplémentaires, il devrait baisser le prix sur toutes les unités ; la recette marginale serait inférieure au coût marginal.

## 35:00 – 45:00 · De un à plusieurs : Cournot à n entreprises

Prenons P = 120 − Q et un coût marginal constant de 20. Avec n entreprises identiques à la Cournot, on montre que chacune produit q = (120 − 20)/(n + 1) = 100/(n + 1).

- n = 1 (monopole) : q = 50, Q = 50, P = 70.
- n = 4 : q = 20, Q = 80, P = 40.
- n = 9 : q = 10, Q = 90, P = 30.

Quand n devient très grand, Q tend vers 100 et P vers 20, le coût marginal : on retrouve la concurrence parfaite. Cet exemple montre pourquoi les autorités de la concurrence s''intéressent au nombre d''acteurs sur un marché.

Pourquoi certains marchés restent-ils concentrés ? À cause des barrières à l''entrée : économies d''échelle importantes (une cimenterie ou un réseau électrique exigent des investissements énormes), contrôle d''une ressource rare, licences et autorisations administratives, brevets, ou stratégies des entreprises en place (capacités excédentaires, guerres de prix ciblées). Distinguez les barrières naturelles, liées à la technologie, et les barrières stratégiques, construites par les entreprises : les premières justifient plutôt une régulation, les secondes relèvent du droit de la concurrence.

Un mot sur la discrimination par les prix, souvent posée en question de cours : un monopole peut vendre le même bien à des prix différents selon les clients, s''il peut les distinguer et empêcher la revente. Exemple : tarifs étudiants, tarifs différents selon l''heure ou la saison. La règle : le prix est plus élevé sur le segment dont la demande est la moins élastique.

## 45:00 – 50:00 · Pause et quiz interactif

- Question 1 : en concurrence à long terme, le prix est égal à quoi ? Réponse : au minimum du coût moyen.
- Question 2 : la condition d''optimum du monopole ? Réponse : recette marginale = coût marginal.
- Question 3 : dans le duopole de Bertrand avec produits identiques, quel est le prix d''équilibre ? Réponse : le coût marginal.

## 50:00 – 1:05:00 · Théorie des jeux : méthode des meilleures réponses

Deux transporteurs fictifs, A et B, choisissent un prix haut (H) ou bas (B). Gains en millions de FCFA, A puis B : (H, H) = 9 ; 7. (H, B) = 3 ; 6. (B, H) = 10 ; 4. (B, B) = 5 ; 5.

Méthode : je souligne la meilleure réponse de chaque joueur. Pour A : si B joue H, A préfère B (10 > 9) ; si B joue B, A préfère B (5 > 3). Prix bas est dominant pour A. Pour B : si A joue H, B préfère H (7 > 6) ; si A joue B, B préfère B (5 > 4). B n''a pas de stratégie dominante. Mais B sait que A jouera prix bas ; sa meilleure réponse est prix bas. Équilibre de Nash unique : (B, B) avec 5 ; 5.

Vérifions qu''aucune autre case n''est un équilibre : en (H, H), A gagnerait à passer à prix bas ; en (H, B) et (B, H), l''un des deux gagne aussi à changer. C''est le raisonnement attendu à l''examen : pour chaque case candidate, tester les déviations unilatérales.

Remarquez que (H, H) donnerait 9 et 7, mieux pour les deux que 5 et 5. Nous retrouvons la logique du dilemme du prisonnier : l''équilibre individuel n''est pas optimal collectivement.

Variante séquentielle, très fréquente à l''examen : le jeu d''entrée. Un entrant potentiel décide d''entrer ou non sur un marché ; s''il entre, l''entreprise en place choisit de s''accommoder ou de lancer une guerre des prix. Gains fictifs : pas d''entrée, 0 pour l''entrant et 10 pour la firme en place ; entrée et accommodement, 3 et 5 ; entrée et guerre des prix, −2 et 2. On résout par récurrence à rebours : si l''entrant entre, la firme en place préfère s''accommoder (5 > 2). Sachant cela, l''entrant entre (3 > 0). La menace de guerre des prix n''est pas crédible. C''est l''équilibre parfait en sous-jeux.

## 1:05:00 – 1:20:00 · Exercice commenté de synthèse

Énoncé : P = 120 − Q, Cm = 20. Comparez monopole, duopole de Cournot et concurrence.

Monopole : Rm = 120 − 2Q = 20, Q = 50, P = 70, profit = 50 × 50 = 2 500. Duopole de Cournot : q = 100/3 ≈ 33,3 chacun, Q ≈ 66,7, P ≈ 53,3, profit de chacun ≈ 1 111. Concurrence : Q = 100, P = 20, profit nul.

Commentaire : la perte sèche est 0,5 × 50 × 50 = 1 250 en monopole, et environ 0,5 × 33,3 × 33,3 ≈ 556 en duopole. L''arrivée d''un seul concurrent réduit déjà fortement la perte de bien-être. Notez les arrondis : quand une division ne tombe pas juste, gardez les fractions jusqu''au bout et arrondissez à la fin.

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Synthèse : plus les vendeurs sont nombreux, plus la quantité augmente et le prix se rapproche du coût marginal ; le monopole crée une perte sèche ; l''oligopole se résout par les fonctions de réaction ; un équilibre de Nash se trouve en testant les déviations unilatérales.

Évaluation finale :

- Question 1 : CT = Q² + 4Q + 64 par entreprise. Prix de long terme ? Réponse : CM minimal en Q = 8, CM = 8 + 4 + 8 = 20.
- Question 2 : P = 200 − Q, Cm = 40. Monopole ? Réponse : Q = 80, P = 120.
- Question 3 : même marché, Cournot à 3 entreprises ? Réponse : q = 160/4 = 40, Q = 120, P = 80.
- Question 4 : indice de Lerner du monopole de la question 2 ? Réponse : (120 − 40)/120 = 0,67.
- Question 5 : qu''est-ce qu''un équilibre de Nash ? Réponse : une combinaison de stratégies où aucun joueur ne gagne à changer seul de stratégie.

Merci et bon travail.', 'video', 90, false, 60
from public.courses c where c.slug = 'lic-eco-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Microéconomie 2');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Macroéconomie 2', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 2 en sciences économiques.
- Objectifs : calculer un équilibre keynésien en économie ouverte, construire IS-LM, comparer politiques budgétaire, monétaire et policy mix.
- Matériel : diaporama, tableau, calculatrice. Les taux d''imposition utilisés sont fictifs pour l''exemple.
- Prérequis : leçon « Macroéconomie 2 : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour. Quand l''activité ralentit, que peut faire un gouvernement ? Augmenter ses dépenses, baisser les impôts, ou compter sur la banque centrale ? Ce sont les questions de la macroéconomie de court terme. Nous allons les traiter avec deux outils : le multiplicateur keynésien et le modèle IS-LM. Visuel : la question « relancer, mais comment ? ». Un avertissement de méthode : ces modèles décrivent le court terme, avec des prix supposés fixes et des capacités de production inemployées. Ils ne disent rien de la croissance de long terme, qui dépend de l''accumulation du capital, du travail qualifié et du progrès technique. Gardez cette limite en tête : elle vous servira de conclusion dans plus d''une dissertation.

## 05:00 – 20:00 · Le multiplicateur en économie ouverte

Économie fictive : C = 150 + 0,75Yd ; impôt proportionnel T = 0,2Y (taux fictif) ; I = 200 ; G = 250 ; exportations X = 150 ; importations M = 0,1Y.

L''équilibre : Y = C + I + G + X − M. Je remplace : Y = 150 + 0,75 × 0,8Y + 200 + 250 + 150 − 0,1Y. Donc Y − 0,6Y + 0,1Y = 750, soit 0,5Y = 750 et Y = 1 500.

Le multiplicateur vaut 1/(1 − c(1 − t) + m) = 1/0,5 = 2. Comparez avec 1/(1 − 0,75) = 4 en économie fermée sans impôt : les impôts et les importations sont des fuites qui réduisent l''effet de la relance.

Situation des finances publiques : T = 0,2 × 1 500 = 300, G = 250, excédent de 50. Commerce extérieur : M = 150 = X, équilibre.

## 20:00 – 30:00 · Exercice commenté : une relance de 50

G augmente de 50. ΔY = 2 × 50 = 100 ; Y = 1 600. Les recettes fiscales deviennent 0,2 × 1 600 = 320, soit +20 : la relance s''autofinance en partie. Le solde budgétaire passe de +50 à 320 − 300 = +20 : il se dégrade de 30, pas de 50. Les importations montent à 160 : la balance commerciale devient déficitaire de 10.

Commentaire de correcteur : une bonne copie mentionne ces effets induits. Dans une petite économie très ouverte, une relance budgétaire peut surtout stimuler les importations : c''est la contrainte extérieure.

Et si l''État choisissait plutôt de baisser les impôts ? Avec un impôt proportionnel, il faudrait raisonner sur la baisse du taux ; retenez seulement l''idée générale : une baisse d''impôt agit sur la demande à travers la consommation des ménages, donc avec un effet initial plus faible qu''une dépense publique directe, puisqu''une partie du revenu supplémentaire est épargnée. En revanche, elle peut être plus rapide à mettre en œuvre. À l''examen, comparez toujours l''ampleur, la rapidité et le coût budgétaire des différentes mesures.

## 30:00 – 45:00 · Construire IS et LM

Nouvelle économie fictive, fermée : C = 100 + 0,8(Y − T), T = 100, I = 260 − 40i, G = 120. IS : Y = 100 + 0,8Y − 80 + 260 − 40i + 120, soit 0,2Y = 400 − 40i et Y = 2 000 − 200i.

Marché de la monnaie : offre réelle 400 ; demande L = 0,25Y − 50i. LM : 400 = 0,25Y − 50i, soit Y = 1 600 + 200i.

Équilibre : 2 000 − 200i = 1 600 + 200i ; 400i = 400 ; i = 1 % ; Y = 1 800. Vérification sur LM : 0,25 × 1 800 − 50 = 400.

Je trace : taux en ordonnée, revenu en abscisse ; IS part de 2 000 sur l''axe horizontal et descend ; LM part de 1 600 et monte. Intersection en (1 800 ; 1 %).

## 45:00 – 50:00 · Pause et quiz interactif

- Question 1 : pourquoi IS est-elle décroissante ? Réponse : une hausse du taux réduit l''investissement, donc la demande et la production.
- Question 2 : pourquoi LM est-elle croissante ? Réponse : un revenu plus élevé accroît la demande de monnaie ; à offre de monnaie donnée, le taux doit monter pour rétablir l''équilibre.
- Question 3 : une hausse de l''offre de monnaie déplace quelle courbe ? Réponse : LM, vers la droite.

## 50:00 – 1:05:00 · Politique budgétaire et éviction

G augmente de 20. Le multiplicateur simple vaut 5 ; IS se déplace de 100 : Y = 2 100 − 200i. Équilibre : 2 100 − 200i = 1 600 + 200i ; i = 1,25 % ; Y = 1 850. Le revenu n''augmente que de 50 au lieu de 100. Pourquoi ? La hausse du revenu augmente la demande de monnaie ; l''offre étant fixe, le taux monte de 0,25 point ; l''investissement baisse de 40 × 0,25 = 10 ; multiplié par 5, cela fait 50 de production en moins. C''est l''effet d''éviction.

## 1:05:00 – 1:15:00 · Politique monétaire et policy mix

L''offre de monnaie passe de 400 à 450. LM : Y = 1 800 + 200i. Équilibre avec l''IS initiale : 2 000 − 200i = 1 800 + 200i ; i = 0,5 % ; Y = 1 900. La baisse du taux relance l''investissement.

Policy mix : G + 20 et offre de monnaie + 25. LM : 425 = 0,25Y − 50i, Y = 1 700 + 200i. IS : Y = 2 100 − 200i. Équilibre : i = 1 %, Y = 1 900. Le taux n''a pas bougé : la banque centrale a accompagné la relance budgétaire et l''effet d''éviction a disparu ; on retrouve le plein effet du multiplicateur, +100.

Transposition à l''UEMOA : la politique monétaire est commune et conduite par la BCEAO pour l''ensemble de l''Union ; un État ne peut pas obtenir seul un accompagnement monétaire. La coordination passe par les instances communautaires et la surveillance multilatérale des politiques budgétaires.

Comment la BCEAO agit-elle concrètement ? Ses instruments, décrits en termes généraux, sont les taux directeurs auxquels elle refinance les banques, les opérations d''injection de liquidité, et le système des réserves obligatoires. Une baisse des taux directeurs rend le refinancement moins coûteux ; si les banques répercutent cette baisse, le crédit devient moins cher et l''investissement est encouragé. Dans IS-LM, cela correspond à un déplacement de LM vers la droite. Mais la transmission peut être imparfaite : dans des économies où une partie importante de l''activité est informelle et peu bancarisée, le canal du taux d''intérêt touche moins d''agents. C''est une bonne idée de discussion pour une dissertation.

## 1:15:00 – 1:20:00 · Les cas extrêmes

Trappe à liquidité : LM horizontale, la politique monétaire est inefficace, la politique budgétaire pleinement efficace. Investissement insensible au taux : IS verticale, même conclusion. LM verticale (demande de monnaie insensible au taux, vision classique) : la politique budgétaire est inefficace, éviction totale. Retenez ces cas sous forme de tableau : ils font d''excellentes questions de cours.

Exercice commenté rapide sur le budget équilibré. Dans le modèle keynésien simple avec c = 0,8 et un impôt forfaitaire, l''État augmente G de 100 et T de 100. Effet des dépenses : 100 × 5 = 500. Effet des impôts : −100 × 4 = −400. Effet total : +100, soit exactement le montant de la hausse : le multiplicateur de budget équilibré vaut 1. Le résultat surprend souvent les étudiants : même sans déficit, une hausse des dépenses financée par l''impôt augmente la production, car les ménages ne réduisent leur consommation que d''une partie de l''impôt (ils réduisent aussi leur épargne).

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Synthèse : le multiplicateur diminue avec les fuites (épargne, impôts, importations) ; IS-LM combine marché des biens et marché de la monnaie ; une relance budgétaire fait monter le taux et provoque une éviction ; la politique monétaire agit par la baisse du taux ; le policy mix peut neutraliser l''éviction.

Évaluation finale :

- Question 1 : c = 0,8, t = 0,25, m = 0,2. Multiplicateur ? Réponse : 1/(1 − 0,6 + 0,2) = 1/0,6 ≈ 1,67.
- Question 2 : IS : Y = 2 000 − 200i ; LM : Y = 1 600 + 200i. Équilibre ? Réponse : i = 1 %, Y = 1 800.
- Question 3 : définition de l''effet d''éviction ? Réponse : recul de l''investissement privé dû à la hausse du taux provoquée par la relance budgétaire.
- Question 4 : en trappe à liquidité, quelle politique est efficace ? Réponse : la politique budgétaire.
- Question 5 : pourquoi un État de l''UEMOA ne peut-il pas conduire seul une politique monétaire ? Réponse : parce que la monnaie et la politique monétaire sont communes et relèvent de la BCEAO.

Bonnes révisions.', 'video', 90, false, 70
from public.courses c where c.slug = 'lic-eco-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Macroéconomie 2');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Statistiques et économétrie introductive', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 2 en économie et gestion.
- Objectifs : calculer une régression simple à la main, interpréter coefficients, R² et t de Student, lire une sortie de logiciel, éviter les pièges.
- Matériel : tableur ou logiciel statistique (facultatif), tableau, calculatrice, table de Student.
- Prérequis : leçon « Statistiques et économétrie introductive : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour. L''économétrie, c''est l''art de confronter les théories aux données. La théorie dit que la demande baisse quand le prix monte ; l''économétrie demande : de combien, avec quelle précision, et sommes-nous sûrs que ce n''est pas le hasard ? Aujourd''hui, nous allons faire une régression de bout en bout, à la main, puis lire une sortie de logiciel. Visuel : un nuage de points avec une droite qui le traverse.

Petit rappel de vocabulaire avant de commencer : y est la variable expliquée (ou dépendante), x la variable explicative (ou indépendante), u le terme d''erreur qui résume tout ce que x n''explique pas. a et b sont les paramètres inconnus du modèle ; â et b̂, calculés sur l''échantillon, en sont les estimations. Dans les copies, on tolère souvent que l''on écrive a et b pour les estimations, à condition d''être cohérent.

## 05:00 – 15:00 · Le nuage de points et l''intuition

Données fictives : six étudiants, heures de révision par semaine x et note à l''examen y (sur 20) : (2 ; 7), (4 ; 9), (6 ; 10), (8 ; 13), (10 ; 14), (12 ; 16). Je place les points : ils montent nettement. On cherche la droite qui passe « au plus près » de tous les points. Au plus près, au sens des moindres carrés : on minimise la somme des carrés des écarts verticaux entre les points et la droite. Pourquoi des carrés ? Pour que les écarts positifs et négatifs ne se compensent pas, et pour pénaliser davantage les gros écarts.

## 15:00 – 30:00 · Calcul pas à pas

Je construis le tableau au tableau, colonne par colonne. Moyennes : x̄ = 42/6 = 7 ; ȳ = 69/6 = 11,5.

Écarts de x : −5, −3, −1, 1, 3, 5. Écarts de y : −4,5, −2,5, −1,5, 1,5, 2,5, 4,5. Produits : 22,5 ; 7,5 ; 1,5 ; 1,5 ; 7,5 ; 22,5 ; somme 63. Carrés des écarts de x : 25, 9, 1, 1, 9, 25 ; somme 70. Carrés des écarts de y : somme 57,5.

Pente : b = 63/70 = 0,9. Constante : a = 11,5 − 0,9 × 7 = 5,2. Droite : ŷ = 5,2 + 0,9x.

Interprétation : une heure de révision hebdomadaire de plus est associée à 0,9 point de plus en moyenne. Attention au vocabulaire : « est associée à », pas « provoque », tant que nous n''avons pas discuté la causalité.

## 30:00 – 45:00 · Qualité de l''ajustement et test

SCT = 57,5. SCE = b × 63 = 56,7. SCR = 57,5 − 56,7 = 0,8. R² = 56,7/57,5 = 0,986 : le temps de révision « explique » près de 99 % de la variance des notes dans cet échantillon fictif. Coefficient de corrélation : r = √0,986 ≈ 0,993, positif comme la pente.

Test de significativité. s² = SCR/(n − 2) = 0,8/4 = 0,2. s(b) = √(0,2/70) = 0,0535. t = 0,9/0,0535 ≈ 16,8. Avec 4 degrés de liberté, la valeur critique bilatérale à 5 % est 2,776. 16,8 > 2,776 : on rejette l''hypothèse b = 0.

Prévision : pour 9 heures, ŷ = 5,2 + 0,9 × 9 = 13,3. Vérifiez toujours que la droite passe par le point moyen : 5,2 + 0,9 × 7 = 11,5. C''est un contrôle rapide qui détecte la plupart des erreurs de calcul.

Un autre contrôle utile : le signe. La pente, la covariance et le coefficient de corrélation ont toujours le même signe. Si vous trouvez une pente positive et une corrélation négative, il y a une erreur. Et un dernier : le R² ne peut pas dépasser 1. Ces trois vérifications prennent trente secondes et sauvent des points.

Petit exercice en direct : avec les mêmes données, calculez la covariance (division par n) et les écarts-types. Covariance = 63/6 = 10,5. Variance de x = 70/6 ≈ 11,67 ; variance de y = 57,5/6 ≈ 9,58. r = 10,5/√(11,67 × 9,58) ≈ 0,993. On retrouve bien la valeur précédente : que l''on divise par n ou par n − 1, le facteur se simplifie dans r.

## 45:00 – 50:00 · Pause et quiz interactif

- Question 1 : la droite des MCO passe toujours par quel point ? Réponse : le point moyen (x̄ ; ȳ).
- Question 2 : si b = 0, que vaut le R² ? Réponse : 0.
- Question 3 : combien de degrés de liberté pour le test de b en régression simple avec n observations ? Réponse : n − 2.

## 50:00 – 1:05:00 · Lire une sortie de logiciel

Je projette une sortie fictive : régression de la consommation mensuelle de 40 ménages fictifs (milliers de FCFA) sur leur revenu. Constante : coefficient 12, écart-type 8, t = 1,5, p-value 0,14. Revenu : coefficient 0,35, écart-type 0,10, t = 3,5, p-value inférieure à 0,01. R² = 0,24.

Lecture : la propension marginale à consommer estimée est 0,35 : 1 000 FCFA de revenu en plus sont associés à 350 FCFA de consommation en plus. Le coefficient est significatif (p-value inférieure à 0,05). La constante, elle, n''est pas significative à 5 % (p-value 0,14). Le R² de 0,24 indique que le revenu n''explique qu''une partie de la variance de la consommation : la taille du ménage, le lieu de résidence, les transferts reçus jouent aussi. Un R² modeste est fréquent en données individuelles et n''invalide pas le modèle.

## 1:05:00 – 1:15:00 · Les pièges

Premier piège : la variable omise. Si les étudiants qui révisent beaucoup sont aussi ceux qui assistent à tous les TD, une partie de l''effet attribué aux heures de révision vient en réalité de l''assiduité. Le coefficient est alors biaisé.

Deuxième piège : la causalité inverse. Les entreprises qui vendent beaucoup ont plus de moyens pour faire de la publicité : la relation peut aller dans les deux sens.

Troisième piège : la régression fallacieuse sur séries temporelles. Le nombre de téléphones et le PIB croissent tous deux avec le temps ; une régression de l''un sur l''autre donnera un R² élevé même sans lien direct.

Quatrième piège : l''extrapolation. Notre droite prédit 5,2 + 0,9 × 20 = 23,2 pour 20 heures : une note impossible sur 20. Le modèle n''est valable que dans le domaine des données observées.

Cinquième point : les hypothèses des MCO. Pour que les estimateurs soient sans biais et que les tests soient valides, on suppose notamment que l''erreur a une moyenne nulle et n''est pas corrélée à x, que sa variance est constante (homoscédasticité) et que les erreurs ne sont pas corrélées entre elles. Exemple d''hétéroscédasticité : dans une régression de la consommation sur le revenu, les ménages aisés ont des comportements beaucoup plus variés que les ménages modestes ; la dispersion des résidus augmente avec le revenu. Les coefficients restent sans biais, mais les écarts-types calculés de la manière usuelle sont faux : les logiciels proposent des écarts-types dits robustes. En Licence 2, on vous demande surtout de connaître ces hypothèses et de savoir dire, devant un nuage de points, laquelle semble violée.

## 1:15:00 – 1:20:00 · Forme log-log et élasticité

Si l''on estime ln Q = 4 − 0,8 ln P sur des données de marché, le coefficient −0,8 est directement l''élasticité-prix : une hausse de 1 % du prix réduit la quantité d''environ 0,8 %. C''est la forme la plus utilisée pour estimer des élasticités : le lien entre l''économétrie et la microéconomie est direct.

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Synthèse : b = covariance/variance de x ; a = ȳ − b x̄ ; R² = SCE/SCT ; t = b/s(b) comparé à la valeur critique de Student à n − 2 degrés de liberté ; interpréter avec prudence : association n''est pas causalité.

Évaluation finale :

- Question 1 : Σ(x − x̄)(y − ȳ) = 40, Σ(x − x̄)² = 16, x̄ = 5, ȳ = 20. Droite ? Réponse : b = 2,5 ; a = 20 − 12,5 = 7,5.
- Question 2 : SCT = 120, SCR = 30. R² ? Réponse : 0,75.
- Question 3 : b = 1,2, s(b) = 0,8, valeur critique 2,1. Significatif ? Réponse : non, t = 1,5 < 2,1.
- Question 4 : interprétez b = −2 dans ln Q = a + b ln P. Réponse : élasticité-prix de −2, demande élastique.
- Question 5 : citez un piège d''interprétation. Réponse : variable omise, causalité inverse, régression fallacieuse ou extrapolation.

Merci, et entraînez-vous sur tableur avec vos propres données fictives.', 'video', 90, false, 80
from public.courses c where c.slug = 'lic-eco-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Statistiques et économétrie introductive');

-- Cours : Économie Licence 3 : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'lic-eco-l3', (select id from public.levels where name = 'Licence 3'), null, 'Économie', 'Économie Licence 3 : réussir ses examens', 'Préparation aux partiels et examens semestriels de la Licence 3 en sciences économiques (système LMD, contexte Sénégal et UEMOA). Le cours couvre l''économie du développement (théories, IDH, pauvreté et inégalités, cas africains fictifs), l''économie monétaire et internationale (monnaie, UEMOA et BCEAO, balance des paiements, change) et l''économie publique (biens publics, externalités, fiscalité, dépense publique). Fiches, exercices corrigés, sujet type et trois cours vidéo de 1h30. Prérequis : microéconomie, macroéconomie et économétrie de Licence 1 et 2.', true, 363
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Licence 3 en Économie', '## Objectifs de la leçon

- Situer la Licence 3, année de diplôme, dans le système LMD.
- Identifier les matières clés et les attentes des examinateurs.
- Organiser six semaines de révision en intégrant le mémoire ou le rapport éventuel.

## La Licence 3 dans le système LMD

La Licence 3 correspond aux semestres 5 et 6 et conclut le premier cycle : sa validation donne le diplôme de licence, porte d''entrée vers les masters ou vers l''emploi. L''organisation reste celle des années précédentes : des unités d''enseignement (UE) composées de matières, des crédits acquis par UE validée, un contrôle continu et des examens de fin de semestre. Dans le schéma LMD courant, la licence complète représente 180 crédits ; mais les coefficients, les compensations, les conditions de délivrance du diplôme et l''éventuelle obligation de stage, de rapport ou de mémoire sont fixés par chaque établissement. Vérifiez votre règlement : les UE de L1 et L2 doivent toutes être acquises pour obtenir la licence.

Ce qui change en Licence 3 : les matières deviennent appliquées. On ne se contente plus de résoudre un modèle ; on l''utilise pour analyser une économie, une politique publique, une situation monétaire. Les sujets sont plus ouverts, les dissertations plus fréquentes, et l''on attend une culture économique solide sur l''Afrique de l''Ouest et l''UEMOA.

## Les matières clés de la Licence 3

- Économie du développement : croissance et développement, grandes théories (étapes, dualisme, structuralisme, dépendance, capabilités, institutions), indicateurs (PIB par habitant, IDH), pauvreté et inégalités (taux de pauvreté, Gini), enjeux africains : informel, agriculture, rente des ressources naturelles, capital humain.
- Économie monétaire et internationale : fonctions et formes de la monnaie, création monétaire, banque centrale et politique monétaire, UEMOA et BCEAO, balance des paiements, taux de change nominal et réel, régimes de change.
- Économie publique : biens publics, externalités, fiscalité (incidence, perte sèche, progressivité), dépense publique et soutenabilité de la dette.

Ces matières mobilisent tout ce qui précède : la microéconomie (surplus, élasticités) pour l''économie publique, la macroéconomie (IS-LM, multiplicateur) pour la monnaie, l''économétrie pour lire les études empiriques. Selon les établissements, l''année comprend aussi la croissance, l''économie du travail, l''économie industrielle, la méthodologie de recherche et un rapport de stage ou un mémoire.

## Les types d''épreuves

- La dissertation : « La croissance suffit-elle à réduire la pauvreté ? », « Avantages et limites d''une union monétaire pour ses membres ». On attend une problématique, un plan argumenté, des théories citées avec justesse et des exemples.
- Le commentaire de texte ou de données : un extrait d''article ou un tableau de chiffres (fictifs à l''entraînement) à analyser.
- L''exercice chiffré : calculer un IDH, un indice de Gini, un solde de la balance des paiements, un taux de change croisé, une incidence fiscale, une taxe pigouvienne.
- Le QCM ou les questions courtes.
- Le rapport, le mémoire ou l''exposé, avec une soutenance orale dans certains parcours.

## Méthode de révision

Révisez par problématiques. Pour chaque chapitre, préparez trois sujets de dissertation probables et leur plan détaillé. Le correcteur attend une réflexion organisée, pas une récitation.

Constituez un carnet de références : auteurs et idées (Rostow, Lewis, Prebisch, Amin, Sen, Pigou, Coase, Samuelson, Mundell), concepts (malédiction des ressources, trilemme, passager clandestin), et exemples qualitatifs africains. Ne citez jamais un chiffre réel dont vous n''êtes pas certain : mieux vaut écrire « une part importante de l''emploi relève de l''informel » qu''un pourcentage inventé.

Gardez l''entraînement au calcul : les exercices chiffrés rapportent des points sûrs. Suivez l''actualité économique de la sous-région à travers des sources fiables (publications de la BCEAO, de la Commission de l''UEMOA, de l''ANSD, des institutions internationales).

Si vous avez un mémoire ou un rapport, planifiez-le à part : il ne doit pas dévorer le temps de révision des examens.

## Plan de révision sur 6 semaines

- Semaine 1 : diagnostic, carnet de références, rappels de L1-L2 (surplus, élasticités, IS-LM).
- Semaine 2 : économie du développement : théories, indicateurs, exercices IDH, Gini, pauvreté.
- Semaine 3 : économie monétaire : monnaie, création monétaire, BCEAO, politique monétaire.
- Semaine 4 : économie internationale : balance des paiements, change, régimes de change, trilemme.
- Semaine 5 : économie publique : biens publics, externalités, incidence fiscale, dette.
- Semaine 6 : deux dissertations et un sujet chiffré complet en conditions réelles, correction, repos.

## Points clés

- La Licence 3 est l''année du diplôme : toutes les UE du cycle doivent être acquises.
- Les sujets sont plus ouverts : problématiser, argumenter, illustrer.
- Ne jamais inventer de statistiques réelles ; raisonner sur des mécanismes et des exemples qualitatifs.

## Exercices

- Exercice 1 : citez les trois matières clés de la Licence 3 et deux notions par matière.
- Exercice 2 : proposez une problématique pour le sujet « Le franc CFA : atout ou contrainte ? ».
- Exercice 3 : pourquoi vaut-il mieux ne pas citer de statistique dont on n''est pas sûr ?
- Exercice 4 : construisez votre carnet de références avec cinq auteurs et leur idée principale.

## Corrigé

- Exercice 1 : développement (IDH, seuil de pauvreté) ; monnaie et international (balance des paiements, taux de change réel) ; économie publique (bien public, taxe pigouvienne).
- Exercice 2 : par exemple : « Dans quelle mesure l''appartenance à une union monétaire à change fixe protège-t-elle la stabilité des États membres tout en limitant leurs marges de manœuvre ? ».
- Exercice 3 : une statistique fausse décrédibilise toute la copie ; le correcteur connaît souvent les ordres de grandeur. Un raisonnement juste sans chiffre vaut mieux qu''un chiffre faux.
- Exercice 4 : par exemple Rostow (étapes de la croissance), Lewis (dualisme et transfert de main-d''œuvre), Sen (capabilités), Pigou (taxe corrigeant les externalités), Mundell (zones monétaires optimales, trilemme).', 'texte', 45, true, 10
from public.courses c where c.slug = 'lic-eco-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Licence 3 en Économie');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Économie du développement : l''essentiel pour l''examen', '## Objectifs

- Distinguer croissance et développement, connaître les grandes théories.
- Calculer un IDH, un taux de pauvreté, un écart de pauvreté et un indice de Gini.
- Analyser des situations africaines à l''aide de ces outils.

## Fiche 1 : croissance et développement

La croissance est l''augmentation durable de la production (PIB réel). Le développement est une transformation plus large des structures économiques, sociales et institutionnelles, qui améliore les conditions de vie : santé, éducation, libertés, réduction de la pauvreté. Il peut y avoir croissance sans développement (rente minière captée par une minorité) ; le développement durable de long terme suppose généralement de la croissance.

## Fiche 2 : les grandes théories

- Rostow : le développement suit des étapes (société traditionnelle, conditions préalables, décollage, maturité, consommation de masse). Critique : vision linéaire, inspirée de l''histoire européenne.
- Lewis : modèle dualiste. Un secteur traditionnel à faible productivité et un secteur moderne ; le transfert de main-d''œuvre vers le secteur moderne alimente l''accumulation et la croissance.
- Harrod-Domar : g = s/v, où s est le taux d''épargne et v le coefficient de capital (capital nécessaire pour une unité de production supplémentaire). Avec s = 20 % et v = 4, g = 5 %. Si la population croît de 3 %, le revenu par habitant progresse d''environ 1,05/1,03 − 1 = 1,94 %. Pour atteindre 7 % de croissance avec v = 4, il faudrait épargner et investir 28 % du PIB. Le modèle a justifié l''aide comme complément d''épargne ; il néglige la productivité et les institutions.
- Structuralisme (Prebisch, Singer) : les pays exportateurs de produits primaires subissent une tendance à la dégradation des termes de l''échange ; d''où les politiques d''industrialisation par substitution aux importations.
- Théories de la dépendance (Samir Amin, qui a notamment travaillé à Dakar) : le sous-développement résulte de la place des pays du Sud dans le système mondial (centre et périphérie).
- Consensus néolibéral des années 1980-1990 : stabilisation, libéralisation, privatisation ; en Afrique, période des programmes d''ajustement structurel, dont le bilan social est très débattu.
- Amartya Sen : le développement est l''expansion des capabilités, c''est-à-dire des libertés réelles des personnes de mener la vie qu''elles valorisent. Cette approche inspire l''IDH.
- Approche institutionnelle : la qualité des institutions (droits de propriété, État de droit, contrôle de la corruption) conditionne l''investissement et la croissance.

## Fiche 3 : l''indice de développement humain (IDH)

L''IDH du PNUD combine trois dimensions : santé (espérance de vie à la naissance), éducation (durée attendue et durée moyenne de scolarisation), niveau de vie (RNB par habitant en parité de pouvoir d''achat). Chaque indicateur est normalisé : indice = (valeur − minimum)/(maximum − minimum), avec des bornes fixées par le PNUD (vérifiez-les dans la note technique du rapport le plus récent ; dans l''exemple ci-dessous : espérance de vie de 20 à 85 ans, durée attendue de 0 à 18 ans, durée moyenne de 0 à 15 ans, revenu de 100 à 75 000 en PPA, en logarithme). L''IDH est la moyenne géométrique des trois indices.

Exemple, « Pays Alpha » fictif : espérance de vie 65 ans, durée attendue de scolarisation 10 ans, durée moyenne 4 ans, RNB par habitant 3 500 en PPA.

- Santé : (65 − 20)/65 = 0,692.
- Éducation : moyenne de 10/18 = 0,556 et 4/15 = 0,267, soit 0,411.
- Revenu : (ln 3 500 − ln 100)/(ln 75 000 − ln 100) = ln 35 / ln 750 = 0,537.
- IDH = (0,692 × 0,411 × 0,537)^(1/3) = 0,535.

La moyenne géométrique pénalise les déséquilibres : un pays ne peut pas compenser entièrement une éducation très faible par un revenu élevé.

## Fiche 4 : pauvreté et inégalités

Le taux de pauvreté (P0) est la part de la population sous le seuil de pauvreté. L''écart de pauvreté (P1) mesure la profondeur : moyenne, sur toute la population, de l''écart relatif au seuil (zéro pour les non-pauvres). P2 (sévérité) élève ces écarts au carré pour donner plus de poids aux plus pauvres. Ce sont les indices de Foster, Greer et Thorbecke (FGT).

Exemple fictif : dix personnes, consommation journalière en FCFA : 400, 600, 800, 900, 1 100, 1 300, 1 500, 2 000, 2 500, 4 000 ; seuil 1 000 FCFA (fictif). Pauvres : 4, P0 = 40 %. Écarts relatifs : 0,6 ; 0,4 ; 0,2 ; 0,1 ; somme 1,3 ; P1 = 0,13. P2 = (0,36 + 0,16 + 0,04 + 0,01)/10 = 0,057. Interprétation de P1 : il faudrait transférer en moyenne 13 % du seuil par habitant, parfaitement ciblés, pour éliminer la pauvreté.

Courbe de Lorenz : part cumulée des revenus détenue par la part cumulée de la population, classée du plus pauvre au plus riche. Indice de Gini : surface entre la diagonale et la courbe, rapportée à la surface sous la diagonale ; 0 = égalité parfaite, 1 = inégalité maximale. Avec des quintiles : G = 1 − Σ (Xk − Xk−1)(Yk + Yk−1).

Exemple : parts des quintiles 5 %, 10 %, 15 %, 25 %, 45 %. Parts cumulées : 0,05 ; 0,15 ; 0,30 ; 0,55 ; 1. G = 1 − 0,2 × (0,05 + 0,20 + 0,45 + 0,85 + 1,55) = 1 − 0,2 × 3,10 = 0,38.

## Fiche 5 : cas africains (fictifs)

Pays Alpha tire l''essentiel de ses exportations d''un minerai. Les années de prix élevés, la monnaie réelle s''apprécie, l''agriculture et l''industrie perdent en compétitivité : c''est le syndrome hollandais. Les recettes budgétaires deviennent volatiles. Les leçons : fonds de stabilisation, transparence des contrats, investissement des rentes dans le capital humain et les infrastructures.

Pays Bêta, sans ressource minière, mise sur l''agriculture irriguée, la transformation locale et les services numériques. Sa croissance est plus lente mais plus riche en emplois. L''enjeu est la productivité agricole, l''accès au crédit (microfinance, finance numérique) et la formation.

Dans les deux cas, l''informel, la démographie (forte proportion de jeunes), les transferts des migrants et l''urbanisation rapide sont des données structurantes.

## Exercices pratiques

- Exercice 1 (cours) : distinguez croissance et développement à l''aide d''un exemple.
- Exercice 2 : s = 15 %, v = 5, croissance démographique 2,5 %. Calculez la croissance du PIB et du PIB par habitant selon Harrod-Domar.
- Exercice 3 : calculez l''IDH d''un pays fictif : espérance de vie 70 ans, durée attendue 12 ans, durée moyenne 6 ans, RNB 5 000 en PPA (mêmes bornes que la fiche).
- Exercice 4 : parts des quintiles 8 %, 12 %, 18 %, 22 %, 40 %. Calculez le Gini.
- Exercice 5 : quelle différence entre P0 et P1 ? Pourquoi P0 seul peut-il inciter à de mauvaises politiques ?
- Exercice 6 (cas pratique) : le gouvernement fictif de Pays Alpha reçoit une rente minière exceptionnelle. Proposez trois usages et justifiez.

## Corrigé

- Exercice 1 : un pays dont le PIB croît grâce au pétrole sans amélioration de la santé ni de l''éducation connaît de la croissance sans développement.
- Exercice 2 : g = 0,15/5 = 3 % ; par habitant : 1,03/1,025 − 1 ≈ 0,49 %, presque une stagnation.
- Exercice 3 : santé (70 − 20)/65 = 0,769 ; éducation (12/18 + 6/15)/2 = 0,533 ; revenu ln 50 / ln 750 = 0,591 ; IDH = 0,624.
- Exercice 4 : cumulés 0,08 ; 0,20 ; 0,38 ; 0,60 ; 1. Somme des (Yk + Yk−1) = 0,08 + 0,28 + 0,58 + 0,98 + 1,60 = 3,52 ; G = 1 − 0,2 × 3,52 = 0,296.
- Exercice 5 : P0 compte les pauvres, P1 mesure leur éloignement du seuil. Avec P0 seul, un gouvernement pourrait aider seulement ceux qui sont juste sous le seuil, faisant baisser P0 sans aider les plus pauvres.
- Exercice 6 : fonds de stabilisation pour lisser les recettes ; investissement dans l''éducation, la santé et les infrastructures productives ; remboursement de dette coûteuse. Éviter les dépenses de fonctionnement permanentes financées par une recette temporaire.', 'texte', 60, false, 20
from public.courses c where c.slug = 'lic-eco-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Économie du développement : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Économie monétaire et internationale : l''essentiel pour l''examen', '## Objectifs

- Connaître les fonctions de la monnaie et le mécanisme de création monétaire.
- Décrire le cadre monétaire de l''UEMOA et le rôle de la BCEAO en termes généraux.
- Construire une balance des paiements et calculer des taux de change.

## Fiche 1 : la monnaie

Trois fonctions : unité de compte, intermédiaire des échanges, réserve de valeur. Formes : monnaie fiduciaire (billets et pièces), monnaie scripturale (dépôts à vue), monnaie électronique (dont les portefeuilles de paiement mobile, très développés en Afrique de l''Ouest). Les agrégats monétaires regroupent les actifs du plus liquide au moins liquide (M1, M2...) ; leur définition précise dépend de la banque centrale.

Création monétaire : les banques créent de la monnaie en accordant des crédits (« les crédits font les dépôts »). Elles sont limitées par leur besoin de monnaie centrale (billets retirés par les clients, réserves obligatoires). Modèle du multiplicateur : M = m × B, où B est la base monétaire, m = (1 + c)/(c + r), c le rapport billets/dépôts et r le taux de réserves. Avec c = 0,4 et r = 0,1 (valeurs fictives), m = 1,4/0,5 = 2,8 ; une base de 500 permet une masse monétaire de 1 400. Ce modèle est pédagogique : dans la réalité, la banque centrale pilote surtout les taux et fournit la liquidité demandée.

Théorie quantitative : MV = PY. Avec M = 1 000, V = 4, Y = 2 000 (volume), P = 2. Si V et Y sont stables, une hausse de 10 % de M entraîne une hausse de 10 % des prix. Les keynésiens contestent la stabilité de V et la neutralité de la monnaie à court terme.

## Fiche 2 : l''UEMOA et la BCEAO

L''Union économique et monétaire ouest-africaine regroupe huit États : Bénin, Burkina Faso, Côte d''Ivoire, Guinée-Bissau, Mali, Niger, Sénégal et Togo. Ils partagent une monnaie, le franc CFA (XOF), émise par une banque centrale commune, la BCEAO, dont le siège est à Dakar. Le franc CFA est lié à l''euro par une parité fixe : 1 euro = 655,957 FCFA. La convertibilité est garantie par la France dans le cadre d''accords de coopération monétaire ; une réforme engagée fin 2019 a modifié plusieurs modalités (notamment la centralisation des réserves et la présence française dans les instances) : vérifiez l''état exact des textes en vigueur.

Missions de la BCEAO, en termes généraux : définir et mettre en œuvre la politique monétaire commune avec un objectif principal de stabilité des prix, veiller à la stabilité du système bancaire et financier, gérer les réserves de change, organiser les systèmes de paiement. Instruments : taux directeurs, opérations d''injection de liquidité, réserves obligatoires.

Avantages d''une union à change fixe : crédibilité, inflation généralement contenue, absence de risque de change entre membres et vis-à-vis de l''euro, intégration commerciale. Limites : pas de politique monétaire ni de change nationale pour absorber un choc propre à un pays, d''où l''importance de la discipline budgétaire, de la flexibilité des prix et des salaires et de la mobilité des facteurs (théorie des zones monétaires optimales de Mundell).

## Fiche 3 : la balance des paiements

Elle enregistre les opérations entre résidents et non-résidents sur une période. Structure (manuel du FMI) :

- Compte des transactions courantes : biens, services, revenus primaires (salaires, intérêts, dividendes), revenus secondaires (transferts courants, dont ceux des migrants).
- Compte de capital : transferts en capital (remises de dette, dons pour investissement).
- Compte financier : investissements directs, investissements de portefeuille, autres investissements, avoirs de réserve.

Exemple fictif (milliards de FCFA) : biens, exportations 2 000 et importations 2 600, solde −600 ; services, 400 et 700, solde −300 ; revenus primaires −200 ; revenus secondaires +700. Compte courant = -400. Compte de capital +100. Besoin de financement de la nation = −300, couvert par des entrées nettes de capitaux enregistrées au compte financier (investissements étrangers, emprunts) ou par une baisse des réserves. Par construction, la balance est équilibrée : compte courant + compte de capital − solde du compte financier + erreurs et omissions = 0.

## Fiche 4 : le change

Cotation à l''incertain : nombre d''unités nationales pour une unité étrangère (655,957 FCFA pour 1 €). Cotation au certain : l''inverse (1 000 FCFA = 1,5245 €). Taux croisé : si 1 € = 1,10 USD (taux fictif pour l''exemple), 1 USD = 655,957/1,10 = 596,32 FCFA.

Exemple d''entreprise fictive : un exportateur de mangues de Ziguinchor facture 25 000 € à un client européen : il reçoit 25 000 × 655,957 = 16 398 925 FCFA, sans risque de change. Une facture de 40 000 USD vaut 23 852 982 FCFA au taux croisé fictif, mais ce montant variera avec le cours euro-dollar : le risque de change existe vis-à-vis des monnaies autres que l''euro.

Taux de change réel : TCR = E × P*/P (E à l''incertain). Il mesure la compétitivité-prix. Avec E fixe, si l''inflation est de 2 % dans le pays et 4 % chez les partenaires (valeurs fictives), le TCR augmente d''environ 1,04/1,02 − 1 = 1,96 % : dépréciation réelle, gain de compétitivité.

Parité des pouvoirs d''achat : à long terme, le taux de change tendrait à égaliser le pouvoir d''achat des monnaies. Condition de Marshall-Lerner : une dévaluation améliore la balance commerciale si la somme des valeurs absolues des élasticités-prix des exportations et des importations est supérieure à 1 ; à court terme, la balance peut d''abord se dégrader (courbe en J).

Trilemme de Mundell : on ne peut avoir simultanément un change fixe, la libre circulation des capitaux et une politique monétaire autonome.

## Exercices pratiques

- Exercice 1 (cours) : citez les trois fonctions de la monnaie.
- Exercice 2 : c = 0,25, r = 0,15, base monétaire 800. Calculez le multiplicateur et la masse monétaire.
- Exercice 3 : biens 1 200 à l''export et 1 500 à l''import ; services 250 et 300 ; revenus primaires −100 ; revenus secondaires +350. Solde courant ?
- Exercice 4 : convertissez 10 000 € en FCFA et 2 000 000 FCFA en euros.
- Exercice 5 : expliquez le trilemme de Mundell appliqué à l''UEMOA.
- Exercice 6 (cas pratique) : un importateur fictif de matériel médical doit payer 100 000 USD dans six mois. Quel risque court-il ? Comment s''en protéger ?

## Corrigé

- Exercice 1 : unité de compte, intermédiaire des échanges, réserve de valeur.
- Exercice 2 : m = 1,25/0,40 = 3,125 ; M = 800 × 3,125 = 2 500.
- Exercice 3 : −300 − 50 − 100 + 350 = −100 : déficit courant de 100.
- Exercice 4 : 10 000 × 655,957 = 6 559 570 FCFA ; 2 000 000/655,957 = 3 048,98 €.
- Exercice 5 : l''UEMOA a choisi le change fixe avec l''euro ; avec une ouverture importante aux capitaux, la BCEAO doit tenir compte des conditions monétaires de la zone euro pour défendre la parité : son autonomie monétaire est limitée. Les contrôles de change atténuent en partie la contrainte.
- Exercice 6 : si le dollar s''apprécie face à l''euro, la facture en FCFA augmente. Protection : achat à terme de dollars auprès d''une banque, clause de facturation, couverture par options si disponible, constitution d''avoirs en dollars.', 'texte', 60, false, 30
from public.courses c where c.slug = 'lic-eco-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Économie monétaire et internationale : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Économie publique : l''essentiel pour l''examen', '## Objectifs

- Identifier les biens publics et les défaillances de marché.
- Corriger une externalité par une taxe pigouvienne ou une négociation.
- Analyser l''incidence et le coût d''un impôt, et raisonner sur la dépense publique et la dette.

## Fiche 1 : les biens publics

Un bien public pur est non rival (la consommation par l''un ne réduit pas celle des autres) et non excluable (on ne peut empêcher personne d''en profiter) : éclairage public, défense, phare. Les biens communs sont rivaux mais non excluables (ressources halieutiques) ; les biens de club sont excluables mais non rivaux jusqu''à congestion (télévision payante).

Le marché les produit en quantité insuffisante à cause du passager clandestin : chacun espère profiter du bien financé par les autres. Condition de Samuelson : la quantité optimale égalise la somme des bénéfices marginaux de tous les usagers au coût marginal.

Exemple : trois quartiers fictifs d''une commune ont pour bénéfices marginaux, pour q lampadaires, 100 − q, 80 − q et 60 − q (milliers de FCFA). Le coût marginal d''un lampadaire est 90. Somme : 240 − 3q = 90, d''où q = 50. À cet optimum, les bénéfices marginaux sont 50, 30 et 10 : un financement selon les bénéfices (prix de Lindahl) ferait payer 50, 30 et 10 par lampadaire. Mais chaque quartier a intérêt à sous-déclarer sa préférence : d''où le financement par l''impôt.

## Fiche 2 : les externalités

Une externalité est l''effet d''une activité sur un tiers sans compensation par le marché. Négative : pollution d''une usine, bruit. Positive : vaccination, éducation, recherche.

Exemple : marché fictif d''un produit dont la fabrication pollue un cours d''eau. Demande P = 500 − Q ; coût marginal privé Cm = 100 + Q ; dommage marginal constant de 40. Équilibre de marché : 500 − Q = 100 + Q, Q = 200, P = 300. Optimum social : 500 − Q = 140 + Q, Q = 180, P = 320. Le marché produit trop. Perte sèche du marché non corrigé : 0,5 × 20 × 40 = 400.

Correction de Pigou : une taxe égale au dommage marginal à l''optimum, ici 40 par unité, fait internaliser le coût : les producteurs choisissent Q = 180. Alternatives : normes, quotas échangeables, et la négociation de Coase : si les droits de propriété sont bien définis et les coûts de transaction faibles, les parties peuvent négocier une solution efficace, quelle que soit l''attribution initiale des droits. En pratique, avec de nombreuses victimes (riverains), les coûts de transaction sont élevés et l''intervention publique reste nécessaire.

## Fiche 3 : la fiscalité

Incidence : la charge réelle d''un impôt ne dépend pas de qui le verse légalement, mais des élasticités. La partie la moins élastique supporte la plus grande part.

Exemple : Qd = 1 200 − 2P, Qs = 3P − 300. Équilibre : P = 300, Q = 600. Taxe unitaire de 50 FCFA (montant fictif) payée par les vendeurs : Qs = 3(P − 50) − 300. Équilibre : 1 200 − 2P = 3P − 450, P = 330 payé par les acheteurs, Q = 540, les vendeurs reçoivent 280. Les acheteurs supportent 30 (60 %), les vendeurs 20 (40 %). Vérification : part des acheteurs = es/(es + |ed|) = 1,5/(1,5 + 1) = 0,6, avec es = 3 × 300/600 = 1,5 et ed = −2 × 300/600 = −1. Recette fiscale : 50 × 540 = 27 000. Perte sèche : 0,5 × 50 × 60 = 1 500.

Principes : équité horizontale (même situation, même impôt) et verticale (contribution selon la capacité), efficacité (minimiser les distorsions), simplicité, rendement. Impôts directs (sur le revenu, les bénéfices) et indirects (TVA, droits d''accise, droits de douane). Dans les pays de l''UEMOA, les impôts indirects et les droits de douane pèsent lourd dans les recettes, et l''élargissement de l''assiette (secteur informel) est un enjeu majeur.

Progressivité : barème fictif annuel : 0 % jusqu''à 600 000 FCFA, 20 % de 600 001 à 1 800 000 FCFA, 30 % au-delà. Pour un revenu de 3 000 000 FCFA : 0 + 20 % × 1 200 000 + 30 % × 1 200 000 = 600 000 FCFA. Taux moyen : 20 % ; taux marginal : 30 %. Ces taux sont fictifs pour l''exemple ; le barème réel est fixé par le Code général des impôts en vigueur.

## Fiche 4 : la dépense publique et la dette

Classification économique : dépenses de fonctionnement (salaires, biens et services), de transfert, d''investissement, intérêts de la dette. Classification fonctionnelle : éducation, santé, défense... Les pays de l''UEMOA ont adopté un cadre harmonisé de gestion des finances publiques, avec des budgets organisés en programmes et une surveillance multilatérale.

Loi de Wagner : la part des dépenses publiques tend à croître avec le développement. Effets macroéconomiques : multiplicateur (Licence 2), éviction, mais aussi effets de long terme des infrastructures et du capital humain.

Soutenabilité de la dette : le ratio dette/PIB d évolue selon Δd ≈ (r − g)/(1 + g) × d − solde primaire (en % du PIB), r étant le taux d''intérêt nominal et g la croissance nominale. Exemple fictif : d = 50 %, r = 6 %, g = 8 %. Le solde primaire qui stabilise la dette vaut (0,06 − 0,08)/1,08 × 50 = −0,93 % du PIB : le pays peut avoir un léger déficit primaire sans hausse du ratio, tant que la croissance dépasse le taux d''intérêt.

## Exercices pratiques

- Exercice 1 (cours) : définissez rivalité et excluabilité ; classez l''éclairage public, une route à péage et les stocks de poissons.
- Exercice 2 : deux villages ont un bénéfice marginal 50 − q et un troisième 40 − q pour q kilomètres de pistes ; coût marginal 50. Quantité optimale ?
- Exercice 3 : P = 300 − Q, Cm privé = 60 + Q, dommage marginal 20. Équilibre de marché, optimum, taxe pigouvienne, perte sèche.
- Exercice 4 : avec le barème fictif de la fiche, calculez l''impôt et le taux moyen pour 2 400 000 FCFA.
- Exercice 5 : dans quel cas une taxe est-elle entièrement supportée par les consommateurs ?
- Exercice 6 (cas pratique) : une commune fictive veut financer la collecte des ordures. Redevance, impôt local ou service privé payant ? Discutez.

## Corrigé

- Exercice 1 : rivalité : la consommation par l''un réduit celle des autres ; excluabilité : on peut empêcher l''accès. Éclairage public : bien public pur ; route à péage non saturée : bien de club ; stocks de poissons : bien commun.
- Exercice 2 : 140 − 3q = 50, q = 30 ; bénéfices marginaux 20, 20 et 10 (tous positifs).
- Exercice 3 : marché : 300 − Q = 60 + Q, Q = 120, P = 180 ; optimum : 300 − Q = 80 + Q, Q = 110, P = 190 ; taxe = 20 ; perte sèche = 0,5 × 10 × 20 = 100.
- Exercice 4 : 20 % × 1 200 000 + 30 % × 600 000 = 420 000 FCFA ; taux moyen 17,5 %.
- Exercice 5 : si la demande est parfaitement inélastique ou l''offre parfaitement élastique.
- Exercice 6 : la collecte est en partie excluable (on peut ne pas collecter chez un ménage), mais elle a de fortes externalités positives (salubrité) : un service privé payant laisserait des ménages sans collecte et des dépôts sauvages. Une redevance modulée, complétée par l''impôt local, concilie financement et couverture universelle.', 'texte', 60, false, 40
from public.courses c where c.slug = 'lic-eco-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Économie publique : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Licence 3 Économie (entraînement, corrigé détaillé)', '## Présentation

Sujet d''entraînement au format d''un examen semestriel de Licence 3 d''économie ; ce n''est pas un sujet officiel. Durée conseillée : 4 heures. Calculatrice autorisée. Toutes les données sont fictives. Barème indicatif, non officiel, sur 20 points.

## Sujet

Partie A, économie du développement (7 points)

- A1 (2,5 points) : un pays fictif a une espérance de vie de 60 ans, une durée attendue de scolarisation de 9 ans, une durée moyenne de 3 ans et un RNB par habitant de 2 500 en PPA. Calculez son IDH (bornes : 20-85 ans, 0-18 ans, 0-15 ans, 100-75 000 en logarithme).
- A2 (1,5 point) : les quintiles détiennent 6 %, 10 %, 14 %, 20 % et 50 % du revenu. Calculez l''indice de Gini.
- A3 (3 points) : question de réflexion : « La croissance suffit-elle à réduire la pauvreté ? ». Proposez une problématique et un plan détaillé.

Partie B, économie monétaire et internationale (7 points)

- B1 (2 points) : biens, exportations 1 500 et importations 1 900 ; services, 300 et 450 ; revenus primaires −150 ; revenus secondaires +400 ; compte de capital +50 (milliards de FCFA). Calculez le solde courant et la capacité ou le besoin de financement.
- B2 (2 points) : une entreprise fictive de Thiès exporte pour 50 000 USD. Avec 1 € = 1,08 USD (taux fictif), quel montant en FCFA reçoit-elle ? Quel risque supporte-t-elle ?
- B3 (3 points) : présentez les avantages et les contraintes de l''appartenance à l''UEMOA pour un État membre.

Partie C, économie publique (6 points). Marché fictif : Qd = 900 − 3P, Qs = 2P − 100.

- C1 (1 point) : équilibre sans taxe.
- C2 (3 points) : taxe unitaire de 25 FCFA (fictive) payée par les vendeurs : nouvel équilibre, prix payé et prix reçu, répartition de la charge, recette fiscale, perte sèche.
- C3 (2 points) : en quoi une taxe pigouvienne diffère-t-elle de cette taxe de rendement ?

## Corrigé détaillé

A1 : santé (60 − 20)/65 = 0,615 ; éducation (9/18 + 3/15)/2 = (0,5 + 0,2)/2 = 0,350 ; revenu ln 25 / ln 750 = 0,486 ; IDH = (0,615 × 0,350 × 0,486)^(1/3) = 0,471. L''éducation est la dimension la plus faible et pèse sur l''indice.

A2 : cumulés 0,06 ; 0,16 ; 0,30 ; 0,50 ; 1. Somme des (Yk + Yk−1) = 0,06 + 0,22 + 0,46 + 0,80 + 1,50 = 3,04 ; G = 1 − 0,2 × 3,04 = 0,392.

A3 : problématique : « À quelles conditions la croissance économique se traduit-elle par une baisse durable de la pauvreté ? ». I. La croissance est une condition nécessaire : elle accroît les revenus, l''emploi et les recettes publiques (effet de diffusion). II. Elle n''est pas suffisante : son effet dépend de son contenu en emplois, des inégalités initiales, de la croissance démographique et de la nature des secteurs moteurs (rente minière contre agriculture et industrie de main-d''œuvre). III. D''où des politiques de croissance inclusive : capital humain, productivité agricole, protection sociale, fiscalité équitable. Exemples qualitatifs, sans chiffres non vérifiés.

B1 : biens −400 ; services −150 ; revenus primaires −150 ; revenus secondaires +400 ; compte courant = −300. Avec le compte de capital : besoin de financement de 250, couvert par des entrées nettes de capitaux ou une baisse des réserves.

B2 : 1 USD = 655,957/1,08 ≈ 607,37 FCFA ; 50 000 USD ≈ 30 368 380 FCFA. Risque de change : si le dollar se déprécie face à l''euro avant le paiement, l''entreprise recevra moins de FCFA. Couverture : vente à terme de dollars, facturation en euros si possible.

B3 : avantages : stabilité monétaire et crédibilité de l''ancrage à l''euro, inflation généralement contenue, absence de risque de change avec les partenaires de l''Union et la zone euro, marché intégré. Contraintes : perte de la politique monétaire et du change comme instruments nationaux, nécessité de la discipline budgétaire (critères de convergence, surveillance multilatérale), risque d''appréciation réelle si l''euro s''apprécie, chocs asymétriques entre membres. Conclusion nuancée, en lien avec la théorie des zones monétaires optimales.

C1 : 900 − 3P = 2P − 100, P = 200, Q = 300.

C2 : Qs = 2(P − 25) − 100 = 2P − 150. 900 − 3P = 2P − 150, P = 210 payé par les acheteurs ; Q = 270 ; reçu par les vendeurs : 185. Charge : acheteurs 10 (40 %), vendeurs 15 (60 %) ; les vendeurs, moins élastiques au point initial (es = 4/3 contre |ed| = 2), supportent plus. Recette : 25 × 270 = 6 750 ; perte sèche : 0,5 × 25 × 30 = 375.

C3 : la taxe de rendement vise à procurer des recettes et crée une perte sèche ; la taxe pigouvienne vise à corriger une externalité : elle améliore l''efficacité en rapprochant la production de l''optimum social, la recette étant un bénéfice secondaire (double dividende éventuel).

## Exercices pratiques

- Exercice 1 : citez trois composantes du compte des transactions courantes.
- Exercice 2 : un Gini passe de 0,45 à 0,38. Interprétez.
- Exercice 3 : vrai ou faux : « un bien non rival est forcément un bien public pur ».
- Exercice 4 : qu''est-ce que le syndrome hollandais ?
- Exercice 5 : 1 € = 655,957 FCFA ; combien d''euros pour 1 000 000 FCFA ?

## Corrigé

- Exercice 1 : biens, services, revenus primaires, revenus secondaires (trois au choix).
- Exercice 2 : les inégalités de revenu ont diminué ; la courbe de Lorenz s''est rapprochée de la diagonale.
- Exercice 3 : faux. Il faut aussi la non-excluabilité ; un bien non rival mais excluable est un bien de club.
- Exercice 4 : l''appréciation réelle de la monnaie et la perte de compétitivité des secteurs non miniers provoquées par un boom d''exportation de ressources naturelles.
- Exercice 5 : 1 000 000/655,957 ≈ 1 524,49 €.', 'texte', 60, false, 50
from public.courses c where c.slug = 'lic-eco-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Licence 3 Économie (entraînement, corrigé détaillé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Économie du développement', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 3 en sciences économiques.
- Objectifs : maîtriser les grandes théories du développement, le modèle de Solow simplifié, le calcul de l''IDH et des indicateurs de pauvreté et d''inégalité, et savoir construire une dissertation.
- Matériel : diaporama, tableau, calculatrice. Toutes les données sont fictives.
- Prérequis : leçon « Économie du développement : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour à toutes et à tous. L''économie du développement pose la question la plus importante de notre discipline : pourquoi certains pays sont-ils riches et d''autres pauvres, et que peut-on y faire ? Ce n''est pas une question abstraite pour nous : elle concerne nos villes, nos campagnes, nos politiques publiques. Aujourd''hui, nous allons combiner théorie, calcul et méthode de dissertation. Visuel : deux photos fictives, un marché rural et une zone industrielle, avec la question « même pays, deux économies ? ».

## 05:00 – 15:00 · Croissance, développement, et ce que mesure le PIB par habitant

Je commence par une distinction que tout correcteur attend : la croissance est quantitative, c''est l''augmentation du PIB réel ; le développement est qualitatif et structurel : santé, éducation, libertés, diversification de l''économie, institutions. Le PIB par habitant reste l''indicateur le plus utilisé, mais il souffre de trois limites : c''est une moyenne qui cache les inégalités ; il mesure mal l''informel et l''autoconsommation agricole ; il ignore les dimensions non monétaires du bien-être.

Question à la salle : un pays peut-il voir son PIB par habitant augmenter alors que la pauvreté augmente ? Oui, si la croissance est captée par une minorité, ou si elle provient d''un secteur qui crée peu d''emplois.

## 15:00 – 30:00 · Les théories, de Rostow à Sen

Je projette une frise chronologique. Années 1950-1960 : les théories de la modernisation. Rostow décrit cinq étapes ; Lewis explique le développement par le transfert de main-d''œuvre d''un secteur traditionnel vers un secteur moderne ; Harrod et Domar insistent sur l''épargne et l''investissement. Années 1950-1970 : le structuralisme de Prebisch et Singer, qui souligne la dégradation des termes de l''échange des produits primaires, et les théories de la dépendance, dont Samir Amin est une figure importante, qui voient le sous-développement comme un produit du système mondial.

Années 1980-1990 : stabilisation, libéralisation, programmes d''ajustement structurel. Puis, à partir des années 1990, deux renouvellements : l''approche par les capabilités d''Amartya Sen, qui inspire l''IDH, et l''approche institutionnelle, qui met au centre la qualité des règles du jeu.

Conseil de méthode : dans une dissertation, ne récitez pas cette frise. Prenons le modèle de Lewis, très utile pour comprendre nos économies. Dans le secteur traditionnel, il y a beaucoup de travailleurs dont la productivité marginale est faible ; le secteur moderne peut donc embaucher à un salaire à peine supérieur au revenu de subsistance. Les profits du secteur moderne sont réinvestis, ce qui crée de nouveaux emplois, et ainsi de suite, jusqu''à ce que le surplus de main-d''œuvre soit absorbé : c''est le point de Lewis, après lequel les salaires augmentent. Limites : le secteur moderne peut être très intensif en capital et créer peu d''emplois, et l''exode rural peut alimenter l''informel urbain plutôt que l''industrie, comme le souligne le modèle de Harris et Todaro. Mobilisez la théorie qui répond à votre problématique, avec une phrase d''explication et une limite.

## 30:00 – 45:00 · Le modèle de Solow simplifié

Harrod-Domar dit : plus d''épargne, plus de croissance. Solow nuance : avec des rendements décroissants du capital, l''épargne élève le niveau de revenu de long terme, mais pas le taux de croissance de long terme, qui dépend du progrès technique.

Version simplifiée : production par travailleur y = k^0,5, épargne s·y, dépréciation du capital et croissance démographique (n + δ)·k. À l''état stationnaire, s·y = (n + δ)·k, d''où k* = (s/(n + δ))². Avec s = 20 %, n = 3 % et δ = 5 % : k* = (0,2/0,08)² = 6,25 et y* = 2,5. Si le pays porte son taux d''épargne à 30 % : k* = 14,06 et y* = 3,75, soit un revenu par travailleur 50 % plus élevé à long terme. Remarquez aussi le rôle de n : une croissance démographique plus rapide abaisse le revenu d''état stationnaire, toutes choses égales par ailleurs.

Implication : convergence conditionnelle. Les pays pauvres peuvent croître plus vite que les riches s''ils ont des caractéristiques comparables (épargne, éducation, institutions).

## 45:00 – 50:00 · Pause et quiz interactif

- Question 1 : quelle théorie insiste sur la dégradation des termes de l''échange ? Réponse : le structuralisme (Prebisch, Singer).
- Question 2 : dans Solow, une hausse du taux d''épargne augmente-t-elle durablement le taux de croissance ? Réponse : non, elle augmente le niveau de revenu de long terme.
- Question 3 : quelles sont les trois dimensions de l''IDH ? Réponse : santé, éducation, niveau de vie.

## 50:00 – 1:05:00 · Exercice commenté : l''IDH

Pays fictif : espérance de vie 58 ans, durée attendue de scolarisation 8 ans, durée moyenne 2 ans, RNB par habitant 1 800 en PPA. Bornes de la leçon.

Santé : (58 − 20)/65 = 0,585. Éducation : 8/18 = 0,444 et 2/15 = 0,133, moyenne 0,289. Revenu : ln 18 / ln 750 = 0,437. IDH = (0,585 × 0,289 × 0,437)^(1/3) = 0,419.

Commentaire : la dimension éducation est la plus faible, surtout la durée moyenne de scolarisation des adultes, qui reflète les investissements éducatifs du passé. Même si la scolarisation des enfants progresse rapidement, cet indicateur ne s''améliore que lentement. Une politique éducative produit ses effets sur une génération : c''est un argument pour la constance des politiques publiques.

Erreurs fréquentes : oublier le logarithme pour le revenu, faire une moyenne arithmétique au lieu d''une moyenne géométrique, ou mal arrondir les étapes intermédiaires. Gardez trois décimales.

## 1:05:00 – 1:15:00 · Pauvreté et inégalités

Cinq personnes fictives, consommation journalière : 300, 700, 900, 1 500 et 2 600 FCFA ; seuil fictif 1 000 FCFA. P0 = 3/5 = 60 %. Écarts relatifs des pauvres : 0,7 ; 0,3 ; 0,1. P1 = 1,1/5 = 0,22. Interprétation : avec un ciblage parfait, un transfert total de 0,22 × 1 000 × 5 = 1 100 FCFA par jour suffirait à amener chacun au seuil. En pratique, le ciblage est imparfait et coûteux : c''est tout le débat sur les filets sociaux et les registres de ménages vulnérables.

Pour les inégalités, rappelez la courbe de Lorenz et l''indice de Gini ; un Gini qui baisse signifie que la courbe se rapproche de la diagonale. Mais attention : le Gini ne dit pas où se situent les inégalités (en bas ou en haut de la distribution) ; on le complète par des rapports interquintiles.

Exercice éclair sur le Gini. Parts des quintiles fictives : 4 %, 9 %, 15 %, 22 %, 50 %. Parts cumulées : 0,04 ; 0,13 ; 0,28 ; 0,50 ; 1. Sommes successives des parts cumulées voisines : 0,04 ; 0,17 ; 0,41 ; 0,78 ; 1,50 ; total 2,90. G = 1 − 0,2 × 2,90 = 0,42. Rapport entre le quintile le plus riche et le plus pauvre : 50/4 = 12,5. Les deux indicateurs se complètent : le Gini résume toute la distribution, le rapport interquintile parle immédiatement au lecteur.

## 1:15:00 – 1:22:00 · Cas fictif et méthode de dissertation

Sujet : « Les ressources naturelles sont-elles une chance pour le développement africain ? ». Problématique : à quelles conditions une rente naturelle peut-elle financer une transformation structurelle plutôt que de la freiner ? Plan : I. Une chance potentielle : recettes publiques, devises, financement d''infrastructures. II. Des risques avérés : syndrome hollandais, volatilité des prix, captation de la rente, faiblesse des institutions. III. Des conditions de réussite : transparence, fonds souverains et de stabilisation, investissement dans le capital humain, diversification. Illustrez avec des pays fictifs ou des exemples qualitatifs connus, sans chiffres non vérifiés. Soignez l''introduction : une accroche, la définition des termes (ressources naturelles, développement), la problématique et l''annonce du plan. Et la conclusion : une réponse claire à la problématique, puis une ouverture, par exemple sur la transition énergétique et l''avenir des rentes fossiles.

## 1:22:00 – 1:30:00 · Synthèse et évaluation finale

Synthèse : le développement dépasse la croissance ; les théories se succèdent et se complètent ; Solow montre le rôle de l''épargne et de la démographie sur le niveau de revenu ; l''IDH est une moyenne géométrique de trois indices ; P0, P1 et Gini mesurent pauvreté et inégalités.

Évaluation finale :

- Question 1 : s = 24 %, v = 4. Croissance selon Harrod-Domar ? Réponse : 6 %.
- Question 2 : indice de santé pour une espérance de vie de 72 ans ? Réponse : (72 − 20)/65 = 0,8.
- Question 3 : que mesure P1 ? Réponse : la profondeur de la pauvreté, l''écart moyen au seuil rapporté au seuil.
- Question 4 : un Gini de 0 signifie quoi ? Réponse : égalité parfaite des revenus.
- Question 5 : citez un auteur de l''approche par les capabilités. Réponse : Amartya Sen.

Merci et bon courage pour vos révisions.', 'video', 90, false, 60
from public.courses c where c.slug = 'lic-eco-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Économie du développement');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Économie monétaire et internationale', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 3 en sciences économiques.
- Objectifs : expliquer la création monétaire, le cadre de l''UEMOA, construire une balance des paiements, calculer des taux de change croisés et réels, raisonner avec le trilemme et le modèle de Mundell-Fleming.
- Matériel : diaporama avec bilans simplifiés, tableau, calculatrice. Données fictives, sauf la parité officielle 1 € = 655,957 FCFA.
- Prérequis : leçon « Économie monétaire et internationale : l''essentiel pour l''examen », IS-LM de Licence 2.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour. Vous utilisez la monnaie tous les jours, en billets ou sur votre téléphone. Mais d''où vient-elle ? Qui décide de sa quantité ? Pourquoi 655,957 FCFA pour un euro, et pas autre chose ? Nous allons répondre à ces questions puis passer à l''économie internationale. Visuel : un billet stylisé, un téléphone et une carte de l''Afrique de l''Ouest.

## 05:00 – 20:00 · Comment les banques créent la monnaie

Une banque commerciale fictive, la « Banque du Sine », accorde un crédit de 10 millions de FCFA à un commerçant. Au moment du crédit, elle inscrit à son actif une créance de 10 millions et à son passif un dépôt de 10 millions sur le compte du commerçant. Ce dépôt est de la monnaie nouvelle : la banque l''a créée par un jeu d''écritures. Quand le crédit sera remboursé, la monnaie sera détruite.

Qu''est-ce qui limite la banque ? Ses clients vont retirer des billets, qu''elle doit se procurer auprès de la banque centrale ; ils vont payer des fournisseurs clients d''autres banques, ce qui crée des besoins de règlement ; elle doit respecter des réserves obligatoires et des règles prudentielles. La banque a donc besoin de monnaie centrale, que la BCEAO lui fournit à un certain taux : c''est par ce taux que la banque centrale influence le crédit.

Le multiplicateur de crédit m = (1 + c)/(c + r) est une présentation pédagogique de cette contrainte. Retenez la logique moderne : ce sont les crédits qui font les dépôts, et la banque centrale agit surtout par le prix de la liquidité.

## 20:00 – 30:00 · L''UEMOA et la BCEAO

Huit États : Bénin, Burkina Faso, Côte d''Ivoire, Guinée-Bissau, Mali, Niger, Sénégal, Togo. Une monnaie commune, le franc CFA, émise par la BCEAO, dont le siège est à Dakar. Une parité fixe avec l''euro. Une garantie de convertibilité apportée par la France, dont les modalités ont été réformées à partir de fin 2019 : vérifiez toujours les textes en vigueur avant d''écrire un détail.

L''objectif principal de la politique monétaire est la stabilité des prix ; elle doit aussi soutenir la politique économique de l''Union. Les instruments, en termes généraux : taux directeurs, adjudications de liquidité, réserves obligatoires. N''oubliez pas l''autre zone franc d''Afrique, la CEMAC, avec sa propre banque centrale, la BEAC : les deux francs CFA sont distincts.

Comment la politique monétaire commune atteint-elle les ménages et les entreprises ? Par plusieurs canaux. Le canal du taux d''intérêt : une hausse des taux directeurs renchérit le crédit et freine la demande. Le canal du crédit : les banques, moins bien refinancées, prêtent moins. Le canal des anticipations : une banque centrale crédible ancre les attentes d''inflation. Dans l''UEMOA, une partie importante de l''inflation vient de chocs d''offre, comme les prix alimentaires après une mauvaise saison ou les prix de l''énergie importée, sur lesquels la politique monétaire agit peu à court terme. Une bonne copie le souligne : la banque centrale ne contrôle pas tout.

## 30:00 – 45:00 · Exercice commenté : la balance des paiements

Pays fictif, milliards de FCFA : exportations de biens 900, importations 1 300 ; exportations de services 200, importations 350 ; revenus primaires −120 (intérêts de la dette et dividendes versés à l''étranger) ; revenus secondaires +500 (transferts des migrants principalement).

Solde des biens : −400. Services : −150. Compte courant : −400 − 150 − 120 + 500 = −170. Commentaire : les transferts des migrants compensent une grande partie du déficit commercial. Le besoin de financement de 170 doit être couvert par le compte financier : investissements directs étrangers, emprunts, ou baisse des avoirs de réserve. Pour une union monétaire, ce sont les réserves de change mises en commun qui comptent : un déficit persistant de l''ensemble de l''Union les fait baisser. Pensez aussi à la qualité du financement : des investissements directs étrangers, qui s''installent pour longtemps, sont plus stables que des capitaux de portefeuille à court terme, qui peuvent repartir brutalement.

Piège fréquent : confondre balance commerciale (biens seulement) et compte courant.

## 45:00 – 50:00 · Pause et quiz interactif

- Question 1 : un transfert d''un migrant vers sa famille est-il un revenu primaire ou secondaire ? Réponse : secondaire.
- Question 2 : un crédit bancaire crée-t-il de la monnaie ? Réponse : oui, il crée un dépôt.
- Question 3 : quelle est la parité du franc CFA vis-à-vis de l''euro ? Réponse : 1 € = 655,957 FCFA.

## 50:00 – 1:05:00 · Change : taux croisés et taux réel

Si 1 € = 0,86 livre sterling (taux fictif), alors 1 livre = 655,957/0,86 = 762,74 FCFA. Une facture de 20 000 livres vaut 15 254 814 FCFA aujourd''hui, mais ce montant changera avec le cours euro-livre.

Taux de change réel : TCR = E × P*/P. Avec un change nominal fixe, la compétitivité-prix dépend des inflations relatives. Si l''inflation est de 1 % dans l''Union et de 3 % chez les partenaires (valeurs fictives), le TCR augmente d''environ 1,03/1,01 − 1 = 1,98 % : gain de compétitivité. À l''inverse, si l''euro s''apprécie fortement face au dollar, les produits de l''Union deviennent plus chers pour les acheteurs des pays dont la monnaie suit le dollar : appréciation réelle effective, perte de compétitivité, sans qu''aucune décision n''ait été prise localement.

Et la parité des pouvoirs d''achat ? Imaginons un panier fictif de biens qui coûte 6 000 FCFA à Dakar et 12 € dans la zone euro. Le taux de change qui égaliserait le pouvoir d''achat serait 6 000/12 = 500 FCFA pour 1 €, alors que la parité officielle est 655,957. Faut-il en conclure que le franc CFA est sous-évalué ? Pas si vite : dans les pays à revenu plus faible, les services non échangeables (coiffure, restauration, transport local) sont généralement moins chers, car les salaires y sont plus bas ; c''est l''effet Balassa-Samuelson. La PPA est un repère de long terme, pas une règle pour juger un taux de change à un moment donné.

Dernier outil : l''effet d''une variation du change sur la balance commerciale. Après une dépréciation, les quantités exportées et importées mettent du temps à réagir, alors que les prix des importations augmentent immédiatement : la balance se dégrade d''abord puis s''améliore, c''est la courbe en J. L''amélioration finale suppose que la condition de Marshall-Lerner soit remplie : somme des valeurs absolues des élasticités-prix des exportations et des importations supérieure à 1.

## 1:05:00 – 1:20:00 · Trilemme et Mundell-Fleming

Le trilemme de Mundell : change fixe, libre circulation des capitaux, autonomie monétaire ; on ne peut avoir que deux des trois. Je dessine un triangle et nous plaçons différents régimes : union monétaire à change fixe, flottement pur, contrôle des capitaux.

Le modèle de Mundell-Fleming prolonge IS-LM en économie ouverte avec mobilité des capitaux. Conclusions classiques : en change fixe, la politique budgétaire est efficace (la banque centrale doit accompagner la hausse de la demande de monnaie pour défendre la parité) et la politique monétaire nationale est inefficace ; en change flexible, c''est l''inverse. Ce résultat éclaire la situation d''un État de l''UEMOA : la politique budgétaire est son instrument principal, d''où l''importance de la surveillance multilatérale et des critères de convergence pour éviter qu''un État ne fasse supporter aux autres les conséquences de ses déficits.

Commentaire pour la dissertation : la théorie des zones monétaires optimales demande si les chocs sont symétriques, si les facteurs sont mobiles, si les prix sont flexibles et s''il existe des transferts budgétaires. Une copie nuancée examine ces critères pour l''UEMOA sans prétendre trancher avec des chiffres non vérifiés.

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Synthèse : les crédits font les dépôts ; la BCEAO conduit la politique monétaire commune ; la balance des paiements est toujours équilibrée comptablement ; le taux réel mesure la compétitivité ; le trilemme et Mundell-Fleming expliquent pourquoi la politique budgétaire est l''instrument national en union monétaire.

Évaluation finale :

- Question 1 : convertissez 5 000 € en FCFA. Réponse : 3 279 785,00 FCFA, soit environ 3,28 millions.
- Question 2 : biens −300, services −100, revenus primaires −50, revenus secondaires +200. Compte courant ? Réponse : −250.
- Question 3 : c = 0,2, r = 0,1. Multiplicateur ? Réponse : 1,2/0,3 = 4.
- Question 4 : en change fixe avec mobilité des capitaux, quelle politique est efficace selon Mundell-Fleming ? Réponse : la politique budgétaire.
- Question 5 : citez les trois éléments du trilemme. Réponse : change fixe, libre circulation des capitaux, autonomie de la politique monétaire.

Merci et bonnes révisions.', 'video', 90, false, 70
from public.courses c where c.slug = 'lic-eco-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Économie monétaire et internationale');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Économie publique', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 3 en sciences économiques.
- Objectifs : identifier les défaillances de marché, calculer une quantité optimale de bien public, une taxe pigouvienne, une incidence fiscale, et raisonner sur la soutenabilité de la dette.
- Matériel : diaporama, tableau, calculatrice. Tous les taux et montants sont fictifs pour l''exemple.
- Prérequis : leçon « Économie publique : l''essentiel pour l''examen », surplus et élasticités.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour. Pourquoi l''État intervient-il dans l''économie ? Pour un économiste, il y a une réponse précise : quand le marché échoue à allouer efficacement les ressources, ou quand la répartition des revenus est jugée inacceptable. Aujourd''hui, nous allons étudier les défaillances de marché et les outils de l''État : l''impôt et la dépense. Visuel : un lampadaire, une cheminée d''usine, un avis d''imposition fictif.

## 05:00 – 20:00 · Biens publics et passager clandestin

Deux voisins fictifs envisagent de financer un forage commun. Coût : 6 (centaines de milliers de FCFA). Chacun en retire un bénéfice de 4. Si les deux contribuent, chacun paie 3 et gagne 4 − 3 = 1. Si un seul contribue, il paie 6 et gagne 4 − 6 = −2, tandis que l''autre gagne 4 sans rien payer. Si aucun ne contribue, 0 pour chacun.

Construisons la matrice. Pour chaque voisin, ne pas contribuer rapporte plus quel que soit le choix de l''autre (4 > 1 et 0 > −2) : c''est une stratégie dominante. Équilibre : personne ne contribue, alors que le forage serait collectivement rentable (bénéfice total 8 pour un coût de 6). Voilà le passager clandestin. Solutions : financement par l''impôt, contribution obligatoire, organisation communautaire avec sanctions sociales, ce que les comités de gestion locaux font souvent avec succès. Elinor Ostrom a montré, à partir de nombreuses études de terrain, que des communautés peuvent gérer durablement des ressources communes grâce à des règles qu''elles se donnent elles-mêmes, à condition que la surveillance et les sanctions soient effectives.

Rappel de la condition de Samuelson : pour un bien public, on additionne verticalement les bénéfices marginaux, c''est-à-dire les consentements à payer de tous les usagers pour une même quantité, puis on égalise cette somme au coût marginal.

## 20:00 – 35:00 · Externalités : Pigou et Coase

Une tannerie fictive rejette des effluents. Demande : P = 400 − Q ; coût marginal privé : 40 + Q ; dommage marginal : 60 par unité. Marché : 400 − Q = 40 + Q, Q = 180. Optimum social : 400 − Q = 100 + Q, Q = 150, P = 250. Perte sèche du marché non corrigé : 0,5 × 30 × 60 = 900. Taxe pigouvienne : 60 par unité.

Coase propose une autre voie. Supposons que la tannerie retire un bénéfice de 500 de son activité polluante et que les pêcheurs en aval subissent un dommage de 300. Si les pêcheurs ont le droit à une eau propre, la tannerie peut les indemniser, par exemple 350, et continuer : les deux y gagnent. Si la tannerie a le droit de polluer, les pêcheurs n''ont pas intérêt à lui verser plus de 300, et elle refusera tout montant inférieur à 500 : l''activité continue. Dans les deux cas, le résultat efficace est atteint ; seule la répartition des gains change. Mais le théorème suppose des coûts de transaction faibles et des parties peu nombreuses, conditions rarement réunies pour une pollution qui touche des milliers de riverains.

## 35:00 – 45:00 · Autres instruments environnementaux

Normes (limites d''émission), quotas échangeables (on fixe la quantité totale et le marché fixe le prix), subventions aux technologies propres, information. Avantage de la taxe : elle donne un prix à la pollution et incite à réduire là où c''est le moins coûteux. Avantage de la norme : la quantité est garantie. À l''examen, comparez selon l''efficacité, le coût de contrôle, l''acceptabilité et les effets redistributifs.

## 45:00 – 50:00 · Pause et quiz interactif

- Question 1 : un bien non rival et non excluable est un bien... ? Réponse : public pur.
- Question 2 : quel montant doit avoir une taxe pigouvienne ? Réponse : le dommage marginal à l''optimum.
- Question 3 : quelle condition le théorème de Coase exige-t-il ? Réponse : des droits de propriété définis et des coûts de transaction faibles.

## 50:00 – 1:05:00 · Incidence fiscale et perte sèche

Règle : la part de la taxe supportée par les consommateurs est es/(es + |ed|). Si l''élasticité de l''offre est de 0,5 et celle de la demande de −1,5, les consommateurs supportent 0,5/2 = 25 % et les producteurs 75 %. Peu importe qui verse la taxe à l''administration : c''est le marché qui répartit la charge.

La perte sèche augmente approximativement avec le carré du taux de la taxe : doubler une taxe multiplie environ par quatre la perte sèche. D''où une recommandation classique : préférer des assiettes larges et des taux modérés. La courbe de Laffer illustre une idée voisine : au-delà d''un certain taux, la base taxable se contracte (fraude, informalité, baisse d''activité) et les recettes peuvent diminuer ; sa position exacte est empiriquement très discutée.

Dans nos économies, l''enjeu de l''assiette est central : élargir la base aux activités informelles par la simplification (régimes simplifiés, paiement mobile des impôts), plutôt qu''alourdir les taux sur les contribuables déjà identifiés.

Un mot sur la TVA, impôt majeur dans nos pays. Elle est simple à collecter et son rendement est élevé, mais elle est souvent jugée régressive par rapport au revenu : les ménages modestes consomment une plus grande part de leur revenu, donc paient proportionnellement plus de TVA. Les exonérations de produits de première nécessité visent à corriger cet effet, au prix d''une perte de recettes et d''une complexité accrue ; certains économistes préfèrent une TVA à assiette large complétée par des transferts ciblés. C''est un excellent sujet de discussion : présentez les deux positions.

## 1:05:00 – 1:15:00 · Exercice commenté : progressivité

Barème annuel fictif : 0 % jusqu''à 600 000 FCFA, 20 % de 600 001 à 1 800 000, 30 % au-delà. Pour un revenu de 1 200 000 FCFA : 20 % × 600 000 = 120 000 FCFA, taux moyen 10 %. Pour 3 000 000 FCFA : 240 000 + 360 000 = 600 000 FCFA, taux moyen 20 %. Le taux moyen augmente avec le revenu : l''impôt est progressif. Erreur classique : appliquer le taux marginal à tout le revenu, ce qui donnerait 900 000 FCFA au lieu de 600 000.

## 1:15:00 – 1:22:00 · Dépense publique et dette

Pays fictif : dette publique de 60 % du PIB, taux d''intérêt nominal moyen 7 %, croissance nominale 5 %. Solde primaire nécessaire pour stabiliser le ratio : (0,07 − 0,05)/1,05 × 60 ≈ 1,14 % du PIB d''excédent primaire. Quand le taux d''intérêt dépasse la croissance, l''État doit dégager un excédent primaire ; dans le cas inverse, il peut se permettre un léger déficit. D''où l''importance de la qualité de la dépense : un investissement qui élève la croissance future améliore la soutenabilité, une dépense improductive financée par emprunt la dégrade.

Quelques repères sur la dépense publique. La loi de Wagner affirme que la part des dépenses publiques dans le PIB tend à augmenter avec le développement : urbanisation, besoins d''infrastructures, demande d''éducation et de santé. Les dépenses se distinguent par leur nature : fonctionnement (salaires, entretien), transferts (bourses, subventions, filets sociaux), investissement (routes, écoles, réseaux) et charges de la dette. Un arbitrage fréquent dans les copies : l''investissement public a des effets durables, mais il exige des dépenses de fonctionnement pour être utile : une école sans enseignants ni entretien ne produit pas d''éducation.

La gestion par programmes, adoptée dans le cadre harmonisé des finances publiques de l''UEMOA, cherche à relier chaque crédit budgétaire à des objectifs et à des indicateurs de performance. L''idée économique est simple : passer d''une logique de moyens à une logique de résultats.

## 1:22:00 – 1:30:00 · Synthèse et évaluation finale

Synthèse : biens publics et externalités justifient l''intervention publique ; la taxe pigouvienne corrige, la taxe de rendement distord ; la charge fiscale se répartit selon les élasticités ; la soutenabilité de la dette dépend de l''écart entre taux d''intérêt et croissance et du solde primaire.

Évaluation finale :

- Question 1 : trois usagers ont chacun un bénéfice marginal 30 − q ; coût marginal 45. Quantité optimale ? Réponse : 90 − 3q = 45, q = 15.
- Question 2 : P = 400 − Q, Cm privé = 40 + Q, dommage 60. Taxe pigouvienne ? Réponse : 60, pour Q = 150.
- Question 3 : es = 1, ed = −1. Part supportée par les consommateurs ? Réponse : 50 %.
- Question 4 : qu''est-ce que le passager clandestin ? Réponse : un agent qui profite d''un bien sans contribuer à son financement.
- Question 5 : r = 4 %, g = 6 %, la dette peut-elle rester stable avec un déficit primaire ? Réponse : oui, un léger déficit primaire est compatible avec un ratio stable.

Merci à toutes et à tous.', 'video', 90, false, 80
from public.courses c where c.slug = 'lic-eco-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Économie publique');

-- Cours : Droit des affaires Licence 1 : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'lic-droit-l1', (select id from public.levels where name = 'Licence 1'), null, 'Droit des affaires', 'Droit des affaires Licence 1 : réussir ses examens', 'Préparation aux partiels et examens semestriels de la Licence 1 en droit et droit des affaires (système LMD, contexte Sénégal, UEMOA et OHADA). Le cours couvre l''introduction au droit (sources, organisation judiciaire, personnes, preuve), le droit des obligations 1 (formation, validité et effets du contrat) et les institutions administratives et le droit constitutionnel, avec la méthodologie juridique : cas pratique, dissertation, commentaire d''arrêt. Fiches, exercices corrigés, sujet type et trois cours vidéo de 1h30. Aucun prérequis.', true, 371
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Licence 1 en droit des affaires (méthodologie juridique)', '## Objectifs de la leçon

- Comprendre l''organisation de la Licence 1 et les attentes du correcteur.
- Maîtriser les trois exercices juridiques de base : le cas pratique, la dissertation et le commentaire d''arrêt.
- Disposer d''un plan de révision sur 6 semaines.

## 1. La Licence 1 dans le système LMD

Les universités et écoles du Sénégal et de l''espace UEMOA ont adopté le système LMD (Licence, Master, Doctorat). La Licence se déroule sur trois années de deux semestres. Chaque semestre regroupe des unités d''enseignement (UE), par exemple une UE « Fondamentaux du droit privé » qui réunit l''introduction au droit et le droit des obligations.

Chaque UE porte des crédits, qui mesurent le volume de travail (cours magistraux, travaux dirigés, travail personnel). Le nombre de crédits, les coefficients, les règles de compensation entre matières et les conditions de passage en année supérieure varient selon les établissements : seul le règlement des études de votre faculté ou de votre école fait foi.

Trois mécanismes se retrouvent presque partout :

- Le contrôle continu : interrogations en travaux dirigés (TD), fiches d''arrêt, exposés, petits devoirs sur table.
- L''examen semestriel : une épreuve écrite de 2 à 4 heures, souvent décisive dans la note finale, parfois complétée par un oral.
- La session de rattrapage : une seconde chance pour les UE non validées, selon les règles de l''établissement.

## 2. Les matières clés de la Licence 1

Ce cours travaille trois matières fondamentales, à côté des enseignements de tronc commun (économie, histoire des institutions, langues, techniques d''expression).

- Introduction au droit : définition du droit, distinction entre droit objectif et droits subjectifs, sources du droit (Constitution, traités dont le traité OHADA, lois, règlements, jurisprudence, coutume, doctrine), organisation judiciaire en termes généraux, personnes physiques et morales, preuve.
- Droit des obligations 1 : le contrat. Au Sénégal, la matière est régie principalement par le Code des obligations civiles et commerciales (COCC). On étudie la formation du contrat, ses conditions de validité, la nullité et les effets du contrat.
- Institutions administratives et droit constitutionnel : l''État, la Constitution, la séparation des pouvoirs, les régimes politiques, puis l''organisation administrative (centralisation, déconcentration, décentralisation) et les grandes notions de service public.

## 3. Ce que le correcteur attend

En droit, on n''évalue pas la quantité de connaissances récitées, mais la capacité à raisonner avec la règle de droit. Une copie juridique réussie :

- emploie un vocabulaire exact (on ne confond pas « nullité » et « résolution », « loi » et « décret ») ;
- cite la règle applicable sans inventer de numéro d''article : si vous n''êtes pas sûr du numéro, écrivez « le COCC dispose que… » ou « l''Acte uniforme relatif au droit commercial général prévoit que… » ;
- suit un plan apparent, annoncé et respecté ;
- conclut clairement en répondant à la question posée.

## 4. Méthode n°1 : le cas pratique

Le cas pratique présente une situation de fait (un litige entre des personnes) et vous demande de la résoudre en droit. La méthode repose sur le syllogisme juridique : majeure (la règle), mineure (les faits), conclusion.

- Étape 1. Résumer les faits utiles en les qualifiant juridiquement : « Awa » devient « la venderesse », « l''accord sur le prix » devient « l''échange des consentements ».
- Étape 2. Poser le problème de droit sous forme de question générale : « Un contrat conclu par un mineur non émancipé est-il valable ? »
- Étape 3. Exposer la règle de droit applicable (principe, conditions, exceptions).
- Étape 4. Appliquer la règle aux faits, condition par condition.
- Étape 5. Conclure par une réponse nette, éventuellement nuancée (« sous réserve de prouver que… »).

S''il y a plusieurs problèmes, on les traite l''un après l''autre, chacun avec son syllogisme. Pas d''introduction historique : allez droit au problème.

## 5. Méthode n°2 : la dissertation juridique

La dissertation porte sur un sujet théorique (« La force obligatoire du contrat », « La décentralisation au Sénégal »). Elle exige une démonstration organisée.

- L''introduction comporte : une accroche, la définition des termes du sujet, le contexte (sources, évolution), l''intérêt du sujet, la problématique (la question centrale) et l''annonce du plan.
- Le développement suit en principe deux parties, chacune divisée en deux sous-parties (I. A. B. ; II. A. B.), avec des titres courts et explicatifs.
- Chaque partie commence par un chapeau (quelques lignes qui annoncent les sous-parties) et des transitions relient les parties.
- La conclusion est facultative dans de nombreuses facultés ; si vous en faites une, elle doit ouvrir le sujet sans le résumer mécaniquement.

Exemple de plan sur « La force obligatoire du contrat » : I. Un principe affirmé (A. Le contrat, loi des parties ; B. Le contrat s''impose au juge) ; II. Un principe aménagé (A. Les tempéraments légaux ; B. Les aménagements conventionnels).

## 6. Méthode n°3 : le commentaire d''arrêt

On vous remet une décision de justice. Vous devez l''expliquer, puis l''apprécier. Le travail commence par la fiche d''arrêt :

- Les faits : qui a fait quoi, qualifié juridiquement.
- La procédure : quelle juridiction a statué en premier, qui a fait appel, qui s''est pourvu en cassation.
- Les prétentions des parties : les arguments opposés.
- Le problème de droit : la question juridique tranchée par la juridiction.
- La solution : ce qu''a décidé la juridiction, et sur quel fondement.

Le commentaire lui-même suit un plan en deux parties : souvent, la première explique le sens de la solution, la seconde en apprécie la valeur (conformité aux textes, opportunité, portée). Attention : ne remplacez jamais l''analyse de la décision par une récitation du cours. Dans ce cours, les décisions proposées à l''entraînement sont fictives et présentées comme telles : on n''invente aucune jurisprudence réelle.

## 7. Plan de révision sur 6 semaines

- Semaine 1 : relire l''introduction au droit ; fiches sur les sources et l''organisation judiciaire.
- Semaine 2 : droit des obligations (formation et validité du contrat) ; deux cas pratiques.
- Semaine 3 : droit des obligations (nullités, effets du contrat) ; une fiche d''arrêt.
- Semaine 4 : droit constitutionnel et institutions administratives ; une dissertation (plan détaillé).
- Semaine 5 : sujets types en temps limité ; correction avec la grille de méthode.
- Semaine 6 : relecture des fiches, apprentissage des définitions, repos la veille de l''examen.

## Points clés

- Les trois matières clés de L1 : introduction au droit, droit des obligations (contrat), institutions administratives et droit constitutionnel.
- Le cas pratique repose sur le syllogisme ; la dissertation sur une problématique et un plan en deux parties ; le commentaire sur la fiche d''arrêt.

## Exercices pratiques

- Exercice 1. Citez les trois éléments du syllogisme juridique.
- Exercice 2. Transformez cette question de fait en problème de droit : « Moussa, 16 ans, peut-il obtenir l''annulation de la vente de sa moto qu''il a conclue seul ? »
- Exercice 3. Rédigez l''annonce de plan d''une dissertation sur « La loi et le règlement ».
- Exercice 4. Classez ces éléments dans les rubriques d''une fiche d''arrêt : « la cour d''appel a rejeté la demande » ; « le vendeur soutient que la vente était parfaite » ; « un commerçant a livré des sacs de riz non payés ».

## Corrigé

- Exercice 1. La majeure (la règle de droit applicable), la mineure (les faits qualifiés juridiquement) et la conclusion (la solution qui découle de l''application de la règle aux faits).
- Exercice 2. « Un contrat conclu par un mineur non émancipé, sans l''intervention de son représentant légal, peut-il être annulé ? » On passe de la personne (Moussa) à la catégorie juridique (le mineur non émancipé) et de l''objet (la moto) à l''acte (le contrat).
- Exercice 3. Exemple : « Si la loi et le règlement se distinguent par leur auteur et leur domaine (I), ils s''articulent dans une hiérarchie qui garantit la cohérence de l''ordre juridique (II). »
- Exercice 4. « Un commerçant a livré des sacs de riz non payés » : faits. « Le vendeur soutient que la vente était parfaite » : prétentions des parties. « La cour d''appel a rejeté la demande » : procédure.', 'texte', 45, true, 10
from public.courses c where c.slug = 'lic-droit-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Licence 1 en droit des affaires (méthodologie juridique)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Introduction au droit : l''essentiel pour l''examen', '## Objectifs de la leçon

- Définir le droit et distinguer droit objectif et droits subjectifs.
- Hiérarchiser les sources du droit applicables au Sénégal, y compris le droit OHADA.
- Décrire l''organisation judiciaire, les personnes et les règles de preuve.

## 1. Qu''est-ce que le droit ?

Le droit objectif est l''ensemble des règles de conduite, générales, abstraites et obligatoires, dont le respect est assuré par l''autorité publique, à la différence de la morale, dont la sanction est intérieure ou sociale.

Les droits subjectifs sont les prérogatives que le droit objectif reconnaît à une personne : droit de propriété sur un terrain, droit de créance contre un débiteur, droit au nom. On distingue les droits patrimoniaux (évaluables en argent, cessibles : propriété, créance) et les droits extrapatrimoniaux (non évaluables en argent : droit à l''honneur, droit à l''image).

Le droit se divise en droit public (relations impliquant l''État : droit constitutionnel, administratif, fiscal) et droit privé (relations entre particuliers : droit civil, commercial, du travail) ; certaines matières sont mixtes, comme le droit des affaires.

## 2. Les sources du droit et leur hiérarchie

On présente les sources sous forme de pyramide, la norme inférieure devant respecter la norme supérieure.

- La Constitution : au sommet de l''ordre interne. Au Sénégal, la Constitution en vigueur date de 2001 (plusieurs fois révisée). Le Conseil constitutionnel contrôle la conformité des lois à la Constitution.
- Les traités et accords internationaux régulièrement ratifiés : ils ont, selon la Constitution sénégalaise, une autorité supérieure à celle des lois, sous réserve d''application par l''autre partie. C''est le cas du traité OHADA et des traités UEMOA et CEDEAO.
- Les Actes uniformes de l''OHADA : adoptés par le Conseil des ministres de l''OHADA, ils sont directement applicables et obligatoires dans les États parties, et rendent inapplicables les dispositions nationales contraires. Exemples : Acte uniforme relatif au droit commercial général, Acte uniforme relatif au droit des sociétés commerciales et du groupement d''intérêt économique.
- La loi : votée par l''Assemblée nationale dans son domaine constitutionnel (exemples : le Code des obligations civiles et commerciales, ou COCC, le Code de la famille).
- Les règlements : décrets du Président de la République ou du Premier ministre, arrêtés ministériels, préfectoraux, municipaux.

À côté de ces sources écrites, on étudie :

- La jurisprudence : l''ensemble des décisions rendues par les juridictions. Elle interprète la loi et comble ses lacunes. Celles de la Cour suprême et, pour le droit OHADA, de la Cour commune de justice et d''arbitrage (CCJA, à Abidjan) font autorité.
- La coutume : pratique répétée et ressentie comme obligatoire, notamment les usages commerciaux.
- La doctrine : les écrits des juristes, qui influencent sans obliger.

## 3. L''organisation judiciaire en termes généraux

- Le double degré de juridiction : une affaire jugée en premier ressort peut être rejugée en fait et en droit par une cour d''appel.
- Les juridictions du premier degré : tribunaux d''instance et de grande instance selon l''importance des affaires, auxquels s''ajoutent des juridictions spécialisées comme le tribunal du travail et, plus récemment, des tribunaux de commerce.
- La Cour suprême : elle ne rejuge pas les faits ; elle vérifie la bonne application du droit (cassation). Elle comprend plusieurs chambres, dont une chambre administrative.
- Le Conseil constitutionnel : juge de la constitutionnalité des lois et du contentieux électoral.
- La CCJA : en matière de droit uniforme OHADA, elle joue le rôle de juridiction de cassation à la place des cours suprêmes nationales.

## 4. Les personnes

La personnalité juridique est l''aptitude à être titulaire de droits et d''obligations.

- Les personnes physiques : les êtres humains. La personnalité commence à la naissance (l''enfant doit naître vivant et viable) et s''éteint à la mort. Elles sont identifiées par leur nom, leur domicile, leur état civil et leur nationalité.
- La capacité juridique : la capacité de jouissance (être titulaire de droits) et la capacité d''exercice (exercer soi-même ses droits). Le mineur, c''est-à-dire la personne de moins de 18 ans, et certains majeurs protégés ont une capacité d''exercice limitée : ils agissent par un représentant ou avec une assistance.
- Les personnes morales : groupements dotés de la personnalité juridique. Personnes morales de droit public (État, collectivités territoriales, établissements publics) et de droit privé (sociétés, associations, GIE). Une société commerciale OHADA acquiert la personnalité morale par son immatriculation au Registre du commerce et du crédit mobilier (RCCM).

Toute personne a un patrimoine : l''ensemble de ses biens et de ses dettes, qui forme une universalité. C''est le gage général de ses créanciers.

## 5. La preuve

Celui qui réclame l''exécution d''une obligation doit la prouver ; celui qui se prétend libéré doit prouver le fait qui l''a libéré. La charge de la preuve pèse donc, en principe, sur le demandeur.

- Les faits juridiques (un accident, une livraison) se prouvent par tous moyens : témoignages, présomptions, constats, photographies.
- Les actes juridiques (un contrat, une reconnaissance de dette) doivent en principe être prouvés par écrit au-delà d''un montant fixé par la loi : vérifiez ce seuil dans le texte en vigueur. L''écrit peut être un acte authentique (dressé par un notaire ou un officier public) ou un acte sous signature privée.
- En matière commerciale, la preuve est libre entre commerçants : les factures, la correspondance, les livres de commerce et les échanges électroniques peuvent être produits.

Exemple. Le grossiste fictif Baobab Alimentation, à Kaolack, réclame 3 450 000 FCFA à un boutiquier commerçant pour 150 sacs de riz livrés à 23 000 FCFA le sac (150 × 23 000 = 3 450 000). Entre commerçants, il peut prouver la vente par ses bons de livraison signés, ses factures et ses messages. Face à un acheteur non commerçant, les exigences de preuve écrite du droit civil s''appliqueraient.

## Points clés

- Hiérarchie : Constitution, traités (dont OHADA), lois, règlements ; jurisprudence, coutume et doctrine complètent.
- Personnes physiques et morales ; capacité de jouissance et d''exercice ; patrimoine.
- La charge de la preuve pèse sur le demandeur ; preuve libre des faits juridiques et, entre commerçants, des actes de commerce.

## Exercices pratiques

- Exercice 1. Classez du plus élevé au moins élevé : arrêté du maire de Thiès, Constitution, loi portant COCC, traité OHADA, décret.
- Exercice 2. Droit patrimonial ou extrapatrimonial ? a) le droit de propriété sur une boutique ; b) le droit à l''image ; c) une créance de 500 000 FCFA.
- Exercice 3. Une disposition d''une loi nationale contredit l''Acte uniforme relatif au droit commercial général. Laquelle s''applique ? Pourquoi ?
- Exercice 4. Le jugement d''un tribunal de grande instance vous semble mal fondé en fait. Quelle voie de recours exercer en priorité ? Pourquoi pas directement la Cour suprême ?
- Exercice 5 (cas pratique). Mariama, 17 ans, a acheté seule un téléphone à 250 000 FCFA à un commerçant de Dakar. Ses parents veulent revenir sur l''achat. Le commerçant affirme qu''elle « avait l''air majeure ». Analysez la situation selon la méthode du cas pratique.

## Corrigé

- Exercice 1. Constitution ; traité OHADA ; loi portant COCC ; décret ; arrêté du maire de Thiès.
- Exercice 2. a) patrimonial (évaluable en argent et cessible) ; b) extrapatrimonial ; c) patrimonial.
- Exercice 3. L''Acte uniforme s''applique : le traité OHADA prévoit que les Actes uniformes sont directement applicables et obligatoires et qu''ils l''emportent sur les dispositions de droit interne contraires, antérieures ou postérieures.
- Exercice 4. L''appel, car la cour d''appel rejuge l''affaire en fait et en droit. La Cour suprême ne juge qu''en droit, sur pourvoi.
- Exercice 5. Faits qualifiés : un contrat de vente conclu par une mineure non émancipée sans son représentant légal. Problème : ce contrat peut-il être remis en cause ? Règle : le mineur a une capacité d''exercice limitée ; les actes qu''il accomplit seul, hors actes de la vie courante autorisés par la loi ou l''usage, sont susceptibles d''annulation dans l''intérêt du mineur (nullité relative). Application : un achat de 250 000 FCFA dépasse vraisemblablement les actes courants d''une lycéenne ; l''apparence de majorité ne suffit pas en principe à priver la mineure de sa protection, sauf manœuvres de sa part. Conclusion : les parents, représentants légaux, peuvent vraisemblablement agir en nullité ; les restitutions réciproques suivront (le téléphone contre le prix).', 'texte', 60, false, 20
from public.courses c where c.slug = 'lic-droit-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Introduction au droit : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Droit des obligations 1 (le contrat) : l''essentiel pour l''examen', '## Objectifs de la leçon

- Maîtriser la formation, la validité (et la nullité) et les effets du contrat.
- Connaître les sanctions de l''inexécution.

## 1. Notions de base

Une obligation est un lien de droit entre deux personnes, par lequel l''une (le créancier) peut exiger de l''autre (le débiteur) une prestation : donner, faire ou ne pas faire. Elles naissent d''actes juridiques (le contrat) ou de faits juridiques (l''accident). Au Sénégal, la matière est réglée principalement par le Code des obligations civiles et commerciales (COCC).

Le contrat est un accord de volontés destiné à créer, modifier, transmettre ou éteindre des obligations. Principales classifications :

- Synallagmatique (obligations réciproques : la vente) ou unilatéral (une seule partie s''oblige : la donation).
- À titre onéreux (chacun reçoit un avantage) ou à titre gratuit.
- Consensuel (formé par le seul échange des consentements), solennel (une forme est exigée pour sa validité, par exemple un acte notarié) ou réel (formé par la remise d''une chose).
- Instantané ou à exécution successive (bail) ; de gré à gré ou d''adhésion (abonnement de téléphonie).

## 2. La formation du contrat

Le contrat se forme par la rencontre d''une offre et d''une acceptation.

- L''offre (ou pollicitation) est une proposition ferme et précise, contenant les éléments essentiels du contrat (pour une vente : la chose et le prix).
- L''acceptation est l''agrément pur et simple de l''offre. Une acceptation qui modifie l''offre constitue une contre-offre. En principe, le silence ne vaut pas acceptation, sauf circonstances particulières (relations d''affaires habituelles, usages).
- Les pourparlers sont libres, mais une rupture brutale et de mauvaise foi engage la responsabilité extracontractuelle de son auteur.
- Les avant-contrats préparent le contrat définitif : pacte de préférence (priorité donnée à un bénéficiaire si l''on décide de vendre) et promesse unilatérale (le promettant s''engage, le bénéficiaire dispose d''une option).

## 3. Les conditions de validité

Le COCC exige, pour la validité du contrat, le consentement des parties, leur capacité, un objet et une cause, ainsi que le respect de la forme lorsque la loi en impose une.

- Le consentement doit exister et être exempt de vices : l''erreur (fausse représentation de la réalité portant sur une qualité essentielle, qui doit être excusable), le dol (manœuvres ou mensonges du cocontractant ayant déterminé le consentement) et la violence (contrainte physique ou morale).
- La capacité : mineurs non émancipés et certains majeurs protégés ne contractent pas seuls.
- L''objet : la prestation promise doit exister ou pouvoir exister, être déterminée ou déterminable, possible et licite.
- La cause : la raison pour laquelle on s''engage. Elle doit exister (on ne s''engage pas pour rien) et être licite et morale (un contrat conclu pour financer une activité illicite est nul).

## 4. La sanction : la nullité

La nullité anéantit rétroactivement le contrat mal formé :

- La nullité absolue : elle protège l''intérêt général (objet ou cause illicite). Elle peut être invoquée par toute personne intéressée.
- La nullité relative : elle protège un intérêt particulier (vice du consentement, incapacité). Seule la personne protégée peut l''invoquer, et elle peut confirmer le contrat.

Le contrat annulé est censé n''avoir jamais existé : les parties se restituent ce qu''elles ont reçu. Ne la confondez pas avec la résolution, qui sanctionne l''inexécution d''un contrat valablement formé.

## 5. Les effets du contrat

- La force obligatoire : le contrat légalement formé tient lieu de loi à ceux qui l''ont fait ; il ne peut être révoqué que d''un commun accord ou pour les causes prévues par la loi, et doit être exécuté de bonne foi.
- L''effet relatif : le contrat ne crée d''obligations qu''entre les parties. Les tiers doivent seulement respecter la situation qu''il crée (opposabilité). Exception : la stipulation pour autrui, qui fait naître un droit au profit d''un tiers (assurance-vie).

## 6. Les sanctions de l''inexécution

Lorsque le débiteur n''exécute pas, le créancier dispose de plusieurs outils, souvent après une mise en demeure :

- L''exception d''inexécution : dans un contrat synallagmatique, une partie peut suspendre sa propre prestation tant que l''autre n''exécute pas.
- L''exécution forcée en nature, lorsqu''elle est possible ; la résolution, en principe judiciaire, sauf clause résolutoire.
- Les dommages-intérêts, qui réparent le préjudice prévisible causé par l''inexécution : la perte subie et le gain manqué.
- La force majeure (événement imprévisible, irrésistible et extérieur) libère le débiteur.

Exemple chiffré. La société fictive Sahel Froid, à Mbour, commande une chambre froide à 8 500 000 FCFA et verse un acompte de 30 %, soit 8 500 000 × 0,30 = 2 550 000 FCFA. Malgré une mise en demeure, rien n''est livré. Sahel Froid obtient la résolution, donc la restitution de l''acompte, et des dommages-intérêts : location d''un équipement de remplacement pendant 3 mois à 400 000 FCFA, soit 1 200 000 FCFA (perte subie), et marge perdue prouvée de 900 000 FCFA (gain manqué). Total des dommages-intérêts : 2 100 000 FCFA. Total à recevoir : 2 550 000 + 2 100 000 = 4 650 000 FCFA.

## Points clés

- Conditions de validité : consentement non vicié, capacité, objet, cause, et forme si la loi l''exige.
- Nullité absolue (intérêt général) ou relative (intérêt privé) ; effet rétroactif et restitutions.
- Force obligatoire, bonne foi et effet relatif ; sanctions de l''inexécution : exception d''inexécution, exécution forcée, résolution, dommages-intérêts.

## Exercices pratiques

- Exercice 1. Qualifiez : a) un vendeur de pagnes affiche « Promotions bientôt » ; b) un garage écrit « Je vous vends ce véhicule immatriculé DK-0000-A au prix de 4 000 000 FCFA, offre valable 8 jours ».
- Exercice 2. Abdou achète un tableau présenté comme ancien ; c''est une copie récente. Le vendeur ignorait lui-même la vérité. Quel vice du consentement invoquer ? Et si le vendeur savait ?
- Exercice 3 (chiffré). Une imprimerie fictive de Ziguinchor commande 2 000 cahiers à 650 FCFA l''unité et verse 40 % d''acompte. Le fournisseur n''en livre que la moitié ; l''imprimerie obtient la résolution pour le reste et rachète ailleurs les 1 000 cahiers manquants à 780 FCFA. Calculez l''acompte, le prix des cahiers livrés, la somme à régler ou à restituer et le préjudice lié au rachat.
- Exercice 4 (cas pratique). Khadija, commerçante, négocie depuis quatre mois l''achat d''un local avec Boubacar. Elle a commandé des plans et des devis pour 1 300 000 FCFA. La veille de la signature prévue, Boubacar rompt sans motif pour vendre à un tiers. Que peut faire Khadija ?
- Exercice 5. Donnez deux différences entre nullité absolue et nullité relative.

## Corrigé

- Exercice 1. a) Invitation à entrer en pourparlers, pas une offre (ni ferme ni précise). b) Offre : ferme, précise (chose et prix déterminés) et assortie d''un délai.
- Exercice 2. Sans tromperie du vendeur : l''erreur sur une qualité essentielle (l''authenticité), si elle a été déterminante et excusable. Si le vendeur savait et a présenté la copie comme ancienne : le dol, qui rend l''erreur toujours prise en compte et peut justifier des dommages-intérêts. Nullité relative.
- Exercice 3. Prix total : 2 000 × 650 = 1 300 000 FCFA ; acompte : 1 300 000 × 0,40 = 520 000 FCFA. Cahiers livrés : 1 000 × 650 = 650 000 FCFA ; restent dus 650 000 − 520 000 = 130 000 FCFA à payer par l''imprimerie. Préjudice de rachat : 1 000 × (780 − 650) = 130 000 FCFA de surcoût, que le fournisseur doit réparer. Les deux sommes se compensent : en définitive, aucune somme n''est due de part et d''autre (130 000 − 130 000 = 0).
- Exercice 4. Problème : la rupture des pourparlers peut-elle engager la responsabilité de son auteur ? Règle : les pourparlers sont libres, mais la rupture fautive (brutale, tardive, de mauvaise foi, après avoir fait naître une confiance légitime) engage la responsabilité extracontractuelle. Application : quatre mois de négociation, rupture sans motif la veille de la signature : faute vraisemblable. Conclusion : Khadija obtiendra réparation des frais prouvés (1 300 000 FCFA), mais ni la conclusion forcée du contrat ni le gain espéré.
- Exercice 5. La nullité absolue protège l''intérêt général et peut être invoquée par toute personne intéressée ; la nullité relative protège une partie, seule titulaire de l''action, qui peut confirmer l''acte.', 'texte', 60, false, 30
from public.courses c where c.slug = 'lic-droit-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Droit des obligations 1 (le contrat) : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Institutions administratives et droit constitutionnel : l''essentiel pour l''examen', '## Objectifs de la leçon

- Définir l''État et ses éléments constitutifs, distinguer État unitaire et État fédéral.
- Expliquer la notion de Constitution, sa révision et le contrôle de constitutionnalité.
- Comprendre la séparation des pouvoirs et classer les régimes politiques.
- Maîtriser les notions d''organisation administrative : centralisation, déconcentration, décentralisation, service public.

## 1. L''État

L''État est une personne morale de droit public qui exerce, sur une population établie sur un territoire, un pouvoir politique souverain. On retient trois éléments constitutifs :

- Une population : l''ensemble des personnes rattachées à l''État, notamment par la nationalité.
- Un territoire : terrestre, maritime et aérien, délimité par des frontières.
- Un pouvoir politique organisé et souverain : il n''est soumis à aucune autorité supérieure dans l''ordre interne et traite d''égal à égal avec les autres États dans l''ordre international.

Formes de l''État :

- L''État unitaire : un seul centre d''impulsion politique, une seule Constitution, un seul Parlement. Le Sénégal est un État unitaire décentralisé.
- L''État fédéral : superposition d''un État fédéral et d''États fédérés disposant chacun de leur Constitution et de leurs institutions (exemple : le Nigeria).

À distinguer des organisations d''intégration régionale (UEMOA, CEDEAO) ou d''harmonisation juridique (OHADA), qui ne sont pas des États mais auxquelles les États transfèrent certaines compétences.

## 2. La Constitution

Au sens matériel, la Constitution est l''ensemble des règles relatives à l''organisation et au fonctionnement des pouvoirs publics et aux droits fondamentaux. Au sens formel, c''est un texte adopté et révisé selon une procédure plus exigeante que celle de la loi ordinaire : on parle de Constitution rigide.

- Le pouvoir constituant originaire établit une Constitution nouvelle (après l''indépendance, une crise ou un référendum).
- Le pouvoir constituant dérivé révise la Constitution existante selon la procédure qu''elle prévoit (voie parlementaire ou référendaire). Certaines dispositions peuvent être déclarées non révisables.
- Le contrôle de constitutionnalité garantit la suprématie de la Constitution. Au Sénégal, il est confié au Conseil constitutionnel, qui peut être saisi avant la promulgation d''une loi et, par voie d''exception, lorsqu''une question d''inconstitutionnalité est soulevée devant certaines juridictions, selon les conditions prévues par les textes.

La Constitution sénégalaise actuelle a été adoptée par référendum en 2001 et révisée à plusieurs reprises. Son préambule affirme notamment l''attachement aux droits de l''homme et à l''unité africaine.

## 3. La séparation des pouvoirs et les régimes politiques

Montesquieu a théorisé la séparation des fonctions de l''État pour éviter l''abus de pouvoir : le pouvoir législatif (faire la loi), le pouvoir exécutif (exécuter la loi et conduire la politique), le pouvoir judiciaire (juger). Selon le degré de séparation, on distingue :

- Le régime parlementaire : séparation souple. Le gouvernement est responsable devant le Parlement (motion de censure) et l''exécutif peut dissoudre l''assemblée. L''exécutif est bicéphale (chef de l''État et chef du gouvernement).
- Le régime présidentiel : séparation stricte. Le Président, élu au suffrage universel, n''est pas responsable devant le Parlement et ne peut pas le dissoudre (modèle des États-Unis).
- Les régimes mixtes ou « présidentialistes » : beaucoup d''États africains francophones combinent un Président élu au suffrage universel direct, aux pouvoirs importants, et un gouvernement dirigé par un Premier ministre, responsable devant l''Assemblée, avec un droit de dissolution.

Au Sénégal, le Président de la République est élu au suffrage universel direct ; il nomme le Premier ministre ; le gouvernement est responsable devant l''Assemblée nationale, qui vote la loi et contrôle l''action du gouvernement ; l''Assemblée peut être dissoute dans les conditions prévues par la Constitution. Le pouvoir judiciaire est indépendant des pouvoirs législatif et exécutif.

## 4. L''organisation administrative

Pour administrer le territoire, l''État combine plusieurs techniques.

- La centralisation : toutes les décisions sont prises par les autorités centrales (Président, Premier ministre, ministres). Elle garantit l''unité mais engorge le centre.
- La déconcentration : l''État délègue un pouvoir de décision à ses propres représentants locaux, soumis au pouvoir hiérarchique (gouverneur de région, préfet de département, sous-préfet). C''est toujours l''État qui agit, au plus près du terrain.
- La décentralisation : l''État transfère des compétences à des personnes morales distinctes de lui, dotées de l''autonomie administrative et financière et d''organes élus : les collectivités territoriales. Au Sénégal, la réforme dite « Acte III de la décentralisation » (2013) a érigé les départements et les communes en collectivités territoriales. L''État exerce sur elles un contrôle de légalité, et non un pouvoir hiérarchique.
- La décentralisation technique (ou par services) : des établissements publics, personnes morales chargées d''une mission spécialisée (une université publique, un hôpital public).

## 5. Le service public

Le service public est une activité d''intérêt général assurée ou contrôlée par une personne publique. Il obéit à des principes de fonctionnement classiques : continuité (le service doit fonctionner sans interruption injustifiée), égalité (les usagers placés dans la même situation sont traités de la même façon) et mutabilité ou adaptabilité (le service s''adapte aux besoins). Il peut être géré directement par l''administration (régie), par un établissement public ou par une personne privée dans le cadre d''une délégation de service public ou d''un contrat de partenariat.

Exemple. La commune fictive de Kër Yaakaar confie la gestion de sa gare routière à une société privée pendant 10 ans. La société perçoit les droits de stationnement auprès des transporteurs. Recettes annuelles prévues : 18 000 000 FCFA ; redevance due à la commune : 15 % des recettes (pourcentage fixé par le contrat fictif), soit 2 700 000 FCFA par an et 27 000 000 FCFA sur 10 ans si les recettes restent stables. La commune reste responsable du service : elle contrôle les tarifs et la continuité.

## Points clés

- L''État : population, territoire, pouvoir souverain ; le Sénégal est un État unitaire décentralisé.
- La Constitution est rigide ; le Conseil constitutionnel en garantit la suprématie.
- Séparation des pouvoirs : régime parlementaire (souple), présidentiel (stricte), régimes mixtes.
- Déconcentration (représentants de l''État, pouvoir hiérarchique) et décentralisation (collectivités autonomes, contrôle de légalité).
- Principes du service public : continuité, égalité, mutabilité.

## Exercices pratiques

- Exercice 1. Donnez les trois éléments constitutifs de l''État et illustrez-les à propos du Sénégal.
- Exercice 2. Le préfet de Rufisque est-il une autorité décentralisée ? Justifiez.
- Exercice 3. Distinguez pouvoir hiérarchique et contrôle de légalité.
- Exercice 4. Pourquoi dit-on qu''une Constitution est « rigide » ?
- Exercice 5 (chiffré). Une commune fictive délègue la gestion de son marché central. Recettes annuelles : 42 000 000 FCFA ; redevance : 12 % des recettes (pourcentage fictif). Calculez la redevance annuelle et sur une durée de 8 ans.
- Exercice 6 (dissertation, plan détaillé). « La décentralisation menace-t-elle l''unité de l''État ? »

## Corrigé

- Exercice 1. Une population (les nationaux sénégalais et les personnes établies sur le territoire), un territoire (terrestre, maritime avec sa façade atlantique, aérien), un pouvoir politique souverain (institutions prévues par la Constitution, reconnaissance internationale).
- Exercice 2. Non. Le préfet est un représentant de l''État dans le département : il relève de la déconcentration et est soumis au pouvoir hiérarchique du gouvernement. Les autorités décentralisées sont les organes élus des collectivités territoriales (conseil départemental, conseil municipal, maire).
- Exercice 3. Le pouvoir hiérarchique permet au supérieur de donner des ordres, d''annuler ou de réformer les décisions de ses subordonnés, y compris pour des raisons d''opportunité. Le contrôle de légalité, exercé par l''État sur les collectivités territoriales, ne porte que sur la conformité au droit et s''exerce dans les formes prévues par les textes (souvent par saisine du juge).
- Exercice 4. Parce que sa révision obéit à une procédure plus difficile que celle des lois ordinaires (majorités renforcées, référendum), ce qui lui assure stabilité et suprématie.
- Exercice 5. 42 000 000 × 0,12 = 5 040 000 FCFA par an ; sur 8 ans : 5 040 000 × 8 = 40 320 000 FCFA, si les recettes restent constantes.
- Exercice 6. Introduction : définir décentralisation et unité de l''État, rappeler la réforme de 2013, problématique : comment concilier autonomie locale et unité ? Plan : I. Une autonomie locale réelle (A. Des collectivités dotées de la personnalité morale et d''organes élus ; B. Des compétences transférées). II. Une autonomie encadrée qui préserve l''unité (A. Le contrôle de légalité exercé par l''État ; B. La dépendance financière et le cadre fixé par la loi).', 'texte', 60, false, 40
from public.courses c where c.slug = 'lic-droit-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Institutions administratives et droit constitutionnel : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Licence 1 en droit (entraînement, corrigé détaillé)', '## Présentation du sujet

Ce sujet d''entraînement couvre les trois matières clés de la Licence 1. Ce n''est pas un sujet officiel : il a été conçu pour vous entraîner dans des conditions proches d''un examen semestriel. Durée conseillée : 3 heures. Barème indicatif, non officiel : 20 points. Documents non autorisés. Les personnes, entreprises et décisions de justice citées sont fictives.

## Dossier 1 : Introduction au droit (4 points)

- 1.1 Définissez le droit objectif et distinguez-le de la morale. (1 point)
- 1.2 Expliquez la place des Actes uniformes OHADA dans la hiérarchie des normes au Sénégal. (2 points)
- 1.3 Qu''est-ce que la capacité d''exercice ? Donnez un exemple d''incapacité. (1 point)

## Dossier 2 : Cas pratique de droit des obligations (8 points)

Le 3 mars, Aliou, menuisier à Thiès, reçoit de la société fictive Bois du Sud un courriel : « Nous vous proposons 40 madriers de 4 mètres à 18 500 FCFA l''unité, livraison sous 15 jours, offre valable jusqu''au 10 mars. » Le 8 mars, Aliou répond : « J''accepte, mais au prix de 17 000 FCFA. » Bois du Sud ne répond pas. Le 9 mars, Aliou envoie un second courriel : « Finalement, j''accepte votre offre telle quelle. » Bois du Sud livre les madriers le 20 mars.

À la livraison, Aliou constate que les madriers sont en bois tendre, alors que le vendeur lui avait affirmé par écrit, lors d''un échange antérieur, qu''il s''agissait de bois dur adapté à la charpente. Bois du Sud savait que le lot était en bois tendre. Aliou n''a encore rien payé.

- 2.1 Le contrat de vente est-il formé ? À quelle date ? (3 points)
- 2.2 Aliou peut-il obtenir l''annulation du contrat ? Sur quel fondement ? (3 points)
- 2.3 En attendant, peut-il refuser de payer ? Calculez le prix en jeu. (2 points)

## Dossier 3 : Commentaire d''une décision fictive (4 points)

Décision fictive, rédigée pour l''entraînement : « Attendu que le contrat légalement formé tient lieu de loi à ceux qui l''ont fait ; que, pour réduire le loyer convenu, le premier juge a retenu que la hausse des prix rendait l''exécution plus onéreuse pour le locataire ; qu''en statuant ainsi, alors que le juge ne peut modifier la convention des parties, il a violé le principe susvisé ; infirme le jugement. »

- 3.1 Établissez la fiche de cette décision (faits, procédure, problème de droit, solution). (2 points)
- 3.2 Proposez un plan en deux parties pour son commentaire. (2 points)

## Dossier 4 : Droit constitutionnel et institutions administratives (4 points)

Sujet de dissertation : « Déconcentration et décentralisation ». Rédigez l''introduction complète et le plan détaillé.

## Corrigé détaillé

Dossier 1. 1.1 Le droit objectif est l''ensemble des règles générales, abstraites et obligatoires qui régissent la vie en société, dont le respect est garanti par une sanction étatique. La morale ne comporte qu''une sanction intérieure ou sociale, et son champ est plus large (elle commande des devoirs envers soi-même). 1.2 Le Sénégal est partie au traité OHADA ; les traités ratifiés ont une autorité supérieure aux lois. Les Actes uniformes, adoptés en application du traité, sont directement applicables et obligatoires et l''emportent sur les dispositions de droit interne contraires, antérieures ou postérieures. Ils sont placés sous la Constitution dans l''ordre interne, au-dessus des lois et règlements. 1.3 C''est l''aptitude à exercer soi-même ses droits. Exemple : le mineur non émancipé, représenté par ses parents.

Dossier 2. 2.1 Problème : une acceptation qui modifie le prix forme-t-elle le contrat ? Règle : l''acceptation doit être pure et simple ; une réponse qui modifie un élément essentiel constitue une contre-offre et vaut refus de l''offre initiale. Application : le 8 mars, Aliou formule une contre-offre (17 000 FCFA). Peut-il ensuite accepter l''offre initiale le 9 mars ? On peut soutenir que la contre-offre a fait tomber l''offre initiale, de sorte que le courriel du 9 mars n''est qu''une nouvelle offre d''Aliou. Mais en livrant le 20 mars, Bois du Sud a accepté tacitement cette nouvelle offre par un commencement d''exécution. Conclusion : le contrat est formé, au plus tard le 20 mars, au prix de 18 500 FCFA l''unité. Valorisez la discussion : le correcteur attend que l''étudiant identifie la contre-offre.

2.2 Problème : la tromperie sur la qualité du bois vicie-t-elle le consentement ? Règle : le dol, constitué de manœuvres ou de mensonges émanant du cocontractant, ayant déterminé le consentement, entraîne la nullité relative du contrat et peut justifier des dommages-intérêts. Application : affirmation écrite mensongère (bois dur), connaissance de la vérité par le vendeur, caractère déterminant (usage en charpente). Conclusion : Aliou peut demander l''annulation pour dol ; à défaut, l''erreur sur une qualité essentielle pourrait être invoquée. Il devra restituer les madriers.

2.3 Prix total : 40 × 18 500 = 740 000 FCFA. Dans un contrat synallagmatique, Aliou peut opposer l''exception d''inexécution si la chose livrée n''est pas conforme, ou suspendre son paiement le temps de l''action en nullité. Il doit agir de bonne foi : conserver les madriers et mettre le vendeur en demeure par écrit.

Dossier 3. 3.1 Faits : un bail prévoyant un loyer ; hausse des prix rendant l''exécution plus coûteuse pour le locataire. Procédure : le premier juge a réduit le loyer ; appel du bailleur ; la juridiction d''appel infirme. Problème de droit : le juge peut-il modifier un contrat devenu plus onéreux pour l''une des parties ? Solution : non, en vertu de la force obligatoire, le juge ne peut modifier la convention des parties. 3.2 Plan possible : I. L''affirmation de la force obligatoire du contrat (A. Le contrat, loi des parties ; B. L''interdiction faite au juge de réviser le contrat). II. Une solution rigoureuse discutable (A. Le risque de déséquilibre pour le débiteur ; B. Les tempéraments possibles : clauses de révision, renégociation, force majeure si ses conditions sont réunies).

Dossier 4. Introduction : accroche (l''État doit administrer tout le territoire sans paralyser le centre) ; définitions (déconcentration : transfert d''un pouvoir de décision à des agents locaux de l''État soumis au pouvoir hiérarchique ; décentralisation : transfert de compétences à des collectivités territoriales dotées de la personnalité morale et d''organes élus, soumises à un contrôle de légalité) ; contexte (réforme de 2013, départements et communes) ; problématique : ces deux techniques s''opposent-elles ou se complètent-elles ? ; annonce du plan. Plan : I. Deux techniques distinctes (A. Par la nature de l''autorité : agent de l''État ou organe élu ; B. Par le contrôle : pouvoir hiérarchique ou contrôle de légalité). II. Deux techniques complémentaires (A. Le représentant de l''État, garant de la légalité des actes locaux ; B. Une action conjointe au service du développement territorial).

## Exercices pratiques

- Exercice 1. Combien coûteraient les 40 madriers au prix de la contre-offre d''Aliou ? Quelle différence avec l''offre initiale ?
- Exercice 2. Citez les trois vices du consentement.
- Exercice 3. Quelle juridiction est compétente en cassation pour une affaire relevant de l''Acte uniforme relatif au droit commercial général ?
- Exercice 4. Donnez deux principes du service public.

## Corrigé

- Exercice 1. 40 × 17 000 = 680 000 FCFA ; différence : 740 000 − 680 000 = 60 000 FCFA.
- Exercice 2. L''erreur, le dol et la violence.
- Exercice 3. La Cour commune de justice et d''arbitrage (CCJA) de l''OHADA.
- Exercice 4. Par exemple la continuité et l''égalité (le troisième est la mutabilité).', 'texte', 60, false, 50
from public.courses c where c.slug = 'lic-droit-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Licence 1 en droit (entraînement, corrigé détaillé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Introduction au droit', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 1 en droit, droit des affaires, gestion ou administration.
- Objectifs : définir le droit, hiérarchiser les sources (dont le droit OHADA), décrire l''organisation judiciaire en termes généraux, distinguer les personnes et les capacités, appliquer les règles de preuve à un cas pratique.
- Matériel : diaporama (pyramide des normes, schéma du parcours d''un procès, tableau des personnes), tableau blanc, fiche d''exercices distribuée.
- Prérequis : avoir lu la leçon « Introduction au droit : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour à toutes et à tous. Pendant une heure et demie, nous allons poser les fondations de toute votre Licence : l''introduction au droit. Tout ce que vous apprendrez ensuite, en droit des obligations, en droit commercial ou en droit des sociétés, repose sur ces notions. À la fin de la séance, vous saurez définir le droit, classer ses sources, expliquer comment fonctionne la justice, distinguer les personnes et raisonner sur une question de preuve. Préparez une feuille : nous ferons des exercices et un petit quiz. Toutes les personnes et entreprises citées sont fictives.

Visuel : diapositive avec les cinq objectifs et le plan de la séance.

## 05:00 – 15:00 · Le droit objectif et les droits subjectifs

Première question : qu''est-ce qui distingue une règle de droit d''une règle de politesse ? Prenez dix secondes. La réponse attendue : la sanction. La règle de droit est générale, elle vise tout le monde dans la même situation ; abstraite, elle ne nomme personne ; obligatoire, et son respect est garanti par l''autorité publique. Si vous ne saluez pas votre voisin, personne ne vous condamnera ; si vous ne payez pas votre loyer, le juge peut vous y contraindre.

Le droit objectif, c''est cet ensemble de règles. Les droits subjectifs sont les prérogatives qu''il reconnaît à chaque personne. Quand Mme Diop dit « c''est mon terrain », elle invoque un droit subjectif, le droit de propriété, que lui reconnaît le droit objectif. Distinguez les droits patrimoniaux, évaluables en argent et en principe cessibles, et les droits extrapatrimoniaux, comme le droit à l''honneur ou à l''image. Attention, la violation d''un droit extrapatrimonial peut donner lieu à des dommages-intérêts en argent : ce n''est pas pour autant un droit patrimonial.

Visuel : tableau à deux colonnes, droits patrimoniaux et extrapatrimoniaux, avec trois exemples chacun.

## 15:00 – 30:00 · La pyramide des normes

Dessinons la pyramide. Au sommet, la Constitution. Juste en dessous, les traités régulièrement ratifiés, qui ont une autorité supérieure aux lois sous réserve de réciprocité. Pour vous, futurs juristes d''affaires, le traité le plus important est le traité OHADA. Il a créé une organisation qui adopte des Actes uniformes. Retenez trois caractères : ils sont directement applicables, sans loi nationale de transposition ; ils sont obligatoires ; ils l''emportent sur les dispositions internes contraires, antérieures ou postérieures.

Sous les traités, la loi, votée par l''Assemblée nationale dans son domaine constitutionnel. Puis les règlements : décrets, arrêtés ministériels, préfectoraux et municipaux. Chaque norme doit respecter celle qui lui est supérieure. Qui contrôle ? Le Conseil constitutionnel pour la conformité des lois à la Constitution ; le juge administratif, au sein de la Cour suprême, pour la légalité des actes administratifs.

Et la jurisprudence ? Elle n''est pas dans la pyramide au sens strict, mais elle interprète les textes et en comble les lacunes. En droit OHADA, la Cour commune de justice et d''arbitrage, la CCJA, unifie l''interprétation. Ajoutez la coutume et les usages, très présents dans le commerce, et la doctrine, qui inspire sans obliger.

Question à la salle : un arrêté municipal peut-il contredire une loi ? Non, car il lui est inférieur ; il pourrait être annulé par le juge.

Visuel : pyramide animée, chaque étage apparaissant avec un exemple sénégalais.

## 30:00 – 42:00 · L''organisation judiciaire

Imaginons le parcours d''un litige. Un commerçant fictif de Saint-Louis, M. Fall, réclame une somme à un fournisseur. Il saisit une juridiction du premier degré. Selon la nature et l''importance de l''affaire, ce sera un tribunal d''instance, un tribunal de grande instance ou une juridiction spécialisée, comme le tribunal de commerce ou, pour un litige entre un salarié et son employeur, le tribunal du travail.

Le perdant n''est pas satisfait : il fait appel. C''est le double degré de juridiction. La cour d''appel rejuge l''affaire en fait et en droit. Ensuite, un pourvoi en cassation est possible : la Cour suprême ne rejuge pas les faits, elle vérifie que le droit a été correctement appliqué. Si le litige porte sur un Acte uniforme OHADA, le pourvoi est porté devant la CCJA, à Abidjan.

Retenez aussi les juridictions particulières : le Conseil constitutionnel, la Cour des comptes. Mon conseil : à l''examen, décrivez la logique d''ensemble ; ne récitez pas une liste dont vous n''êtes pas sûr, car l''organisation évolue par la loi.

Visuel : schéma en escalier, premier degré, appel, cassation, avec la bifurcation vers la CCJA.

## 42:00 – 50:00 · Pause interactive : quiz

Faisons un quiz de cinq questions. Répondez par écrit, je donne les réponses dans deux minutes.

- Question 1 : citez les trois caractères de la règle de droit.
- Question 2 : vrai ou faux, un Acte uniforme doit être transposé par une loi nationale pour s''appliquer.
- Question 3 : quelle juridiction rejuge les faits ?
- Question 4 : le droit à l''image est-il patrimonial ?
- Question 5 : qui contrôle la constitutionnalité des lois au Sénégal ?

Réponses : 1) générale, abstraite, obligatoire ; 2) faux, il est directement applicable ; 3) la cour d''appel ; 4) non, il est extrapatrimonial ; 5) le Conseil constitutionnel. Si vous avez moins de quatre bonnes réponses, relisez la pyramide ce soir.

## 50:00 – 1:02:00 · Les personnes et la capacité

La personnalité juridique est l''aptitude à être titulaire de droits et d''obligations. Deux catégories de personnes. Les personnes physiques, les êtres humains, de la naissance à la mort, identifiés par leur nom, leur domicile, leur état civil et leur nationalité. Les personnes morales, groupements dotés de la personnalité : l''État, une commune, une université publique, mais aussi une société commerciale ou une association.

Distinguez capacité de jouissance et capacité d''exercice. Un enfant de 10 ans peut être propriétaire d''un terrain hérité : il a la capacité de jouissance. Mais il ne peut pas le vendre seul : il n''a pas la capacité d''exercice ; ce sont ses représentants légaux qui agissent, dans les conditions prévues par la loi. La majorité est fixée à 18 ans.

Pour la société commerciale, retenez qu''elle acquiert la personnalité morale par son immatriculation au Registre du commerce et du crédit mobilier. Elle a alors son propre nom (la dénomination sociale), son siège, son patrimoine distinct de celui des associés.

Visuel : tableau comparatif personne physique et personne morale : naissance, identification, fin, patrimoine.

## 1:02:00 – 1:12:00 · La preuve

Celui qui réclame quelque chose doit le prouver : la charge de la preuve pèse sur le demandeur. Pour savoir comment prouver, demandez-vous ce que vous devez prouver. Un fait juridique, comme un accident ou une livraison, se prouve par tous moyens. Un acte juridique, comme un contrat, doit en principe être prouvé par écrit au-delà d''un seuil fixé par la loi ; vérifiez ce seuil dans le texte en vigueur avant de l''utiliser. Entre commerçants, la preuve est libre : factures, correspondances, livres de commerce, messages électroniques.

Exemple : la quincaillerie fictive Keur Matériaux réclame à un entrepreneur commerçant 2 400 000 FCFA pour 80 sacs de ciment livrés à 30 000 FCFA. Vérifions : 80 × 30 000 = 2 400 000. Elle peut prouver par les bons de livraison signés et ses factures, puisque la preuve est libre entre commerçants.

## 1:12:00 – 1:22:00 · Correction commentée d''un cas pratique

Énoncé distribué : Seynabou, 17 ans, a vendu seule à un commerçant le bijou en or qu''elle a reçu en héritage, pour 600 000 FCFA. Sa mère veut annuler la vente. Le commerçant refuse.

Suivons la méthode. Faits qualifiés : une vente conclue par une mineure non émancipée, sans son représentant légal. Problème de droit : un acte de disposition accompli seul par un mineur est-il valable ? Règle : le mineur non émancipé n''a pas la capacité d''exercice ; ses actes, sauf les actes de la vie courante, peuvent être annulés à sa demande ou à celle de son représentant ; il s''agit d''une nullité relative, qui protège l''intérêt du mineur. Application : vendre un bijou de 600 000 FCFA reçu en héritage est un acte grave, et non un acte courant. Conclusion : la mère, représentante légale, peut agir en nullité ; le commerçant restituera le bijou et Seynabou restituera le prix, dans la mesure prévue par la loi.

Erreur fréquente : commencer par une introduction historique. Dans un cas pratique, allez directement au problème. Autre erreur : oublier les restitutions.

## 1:22:00 – 1:27:00 · Synthèse

Résumons. La règle de droit est générale, abstraite, obligatoire et sanctionnée. Les sources se hiérarchisent : Constitution, traités dont l''OHADA, lois, règlements. La justice repose sur le double degré et la cassation, avec la CCJA pour le droit uniforme. Les personnes sont physiques ou morales ; on distingue capacité de jouissance et d''exercice. La preuve incombe au demandeur, et elle est libre entre commerçants.

## 1:27:00 – 1:30:00 · Évaluation finale

Cinq questions. Les réponses suivent.

- Question 1 : quelle différence entre droit objectif et droits subjectifs ?
- Question 2 : quel est l''effet d''un Acte uniforme sur une loi nationale contraire ?
- Question 3 : la Cour suprême rejuge-t-elle les faits ?
- Question 4 : quand une société commerciale acquiert-elle la personnalité morale ?
- Question 5 : comment un commerçant prouve-t-il une vente à un autre commerçant ?

Réponses : 1) le droit objectif est l''ensemble des règles ; les droits subjectifs sont les prérogatives individuelles qu''il reconnaît ; 2) l''Acte uniforme l''emporte et la disposition contraire est inapplicable ; 3) non, elle juge en droit ; 4) à son immatriculation au RCCM ; 5) par tous moyens, la preuve étant libre entre commerçants. Merci pour votre attention, et à bientôt pour le droit des obligations.', 'video', 90, false, 60
from public.courses c where c.slug = 'lic-droit-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Introduction au droit');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Droit des obligations 1 (le contrat)', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 1 en droit, droit des affaires ou gestion.
- Objectifs : expliquer la formation du contrat (offre, acceptation, pourparlers), vérifier ses conditions de validité, distinguer nullité absolue et relative, exposer la force obligatoire et l''effet relatif, calculer des restitutions et des dommages-intérêts, résoudre un cas pratique.
- Matériel : diaporama (frise de formation du contrat, arbre des conditions de validité, tableau nullité et résolution), tableau blanc, calculatrice, fiche d''exercices.
- Prérequis : la leçon « Droit des obligations 1 (le contrat) : l''essentiel pour l''examen » et la méthode du cas pratique.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour à toutes et à tous. Aujourd''hui, nous travaillons la matière que vous retrouverez dans toute votre carrière de juriste d''affaires : le contrat. Une vente de marchandises, un bail commercial, un contrat de travail, un statut de société : tous reposent sur la théorie générale du contrat. Au Sénégal, elle se trouve principalement dans le Code des obligations civiles et commerciales, le COCC. Nos objectifs : comprendre comment un contrat naît, à quelles conditions il est valable, ce qu''il produit, et comment réagir quand il n''est pas exécuté. Les entreprises citées sont fictives.

## 05:00 – 15:00 · Obligation, contrat et classifications

Une obligation est un lien de droit entre un créancier et un débiteur. Elle a pour objet de donner, de faire ou de ne pas faire. Le contrat est un accord de volontés destiné à produire des effets de droit.

Pourquoi classer les contrats ? Parce que le régime en dépend. Un contrat synallagmatique, comme la vente, fait naître des obligations réciproques : c''est ce qui permettra l''exception d''inexécution. Un contrat consensuel se forme par le seul échange des consentements ; un contrat solennel exige une forme, faute de quoi il est nul ; un contrat réel se forme par la remise d''une chose. Un contrat d''adhésion, comme un abonnement internet, est rédigé à l''avance par une partie : on l''interprète souvent en faveur de celui qui n''a pas pu négocier.

Question : un contrat de bail est-il instantané ou à exécution successive ? À exécution successive, car il s''exécute dans la durée, mois après mois.

## 15:00 – 30:00 · La formation : offre, acceptation, pourparlers

Visuel : une frise avec trois étapes, pourparlers, offre, acceptation.

L''offre doit être ferme et précise. Ferme : son auteur est prêt à être lié par la seule acceptation. Précise : elle contient les éléments essentiels. Pour une vente, la chose et le prix. Une affiche « grandes promotions bientôt » n''est pas une offre ; « je vous vends ce camion pour 12 000 000 FCFA, offre valable dix jours » en est une.

L''acceptation doit être pure et simple. Si vous répondez « d''accord, mais à 11 000 000 FCFA », vous ne concluez pas le contrat : vous faites une contre-offre, et c''est désormais l''autre partie qui choisit. Le silence, en principe, ne vaut pas acceptation ; on admet des exceptions, notamment entre partenaires en relations d''affaires habituelles ou quand les usages le prévoient.

Pendant les pourparlers, chacun est libre de rompre. Mais la liberté n''est pas l''impunité : une rupture brutale, de mauvaise foi, après avoir laissé l''autre engager des frais importants, est une faute qui engage la responsabilité extracontractuelle. On répare alors les frais engagés, pas le profit espéré du contrat qui n''a jamais été conclu.

## 30:00 – 42:00 · Les conditions de validité

Visuel : arbre à quatre branches, consentement, capacité, objet, cause, plus une branche « forme si la loi l''exige ».

Le consentement doit exister et être libre et éclairé. Trois vices. L''erreur : je crois acheter un tableau ancien, c''est une copie. Elle doit porter sur une qualité essentielle, être déterminante et excusable. Le dol : mon cocontractant m''a trompé par des manœuvres ou des mensonges. Il rend l''erreur toujours prise en considération et ouvre droit à des dommages-intérêts. La violence : une contrainte physique ou morale m''a fait signer.

La capacité : le mineur non émancipé et certains majeurs protégés ne peuvent pas contracter seuls. L''objet : la prestation doit être possible, déterminée ou déterminable, et licite. La cause : la raison de l''engagement doit exister et être licite. Un prêt consenti pour financer un trafic interdit est nul pour cause illicite.

## 42:00 – 50:00 · Pause interactive : quiz

- Question 1 : « Je vous achète votre moto, mais à un prix inférieur » : acceptation ou contre-offre ?
- Question 2 : citez les trois vices du consentement.
- Question 3 : un contrat dont l''objet est illicite est-il frappé de nullité absolue ou relative ?
- Question 4 : le silence vaut-il acceptation en principe ?
- Question 5 : quel type de responsabilité engage une rupture fautive des pourparlers ?

Réponses : 1) contre-offre ; 2) erreur, dol, violence ; 3) absolue, car elle protège l''intérêt général ; 4) non, sauf exceptions ; 5) une responsabilité extracontractuelle, puisqu''il n''y a pas encore de contrat.

## 50:00 – 1:00:00 · Nullité et restitutions

La nullité sanctionne une condition de validité absente au jour de la formation. Elle est absolue si la règle violée protège l''intérêt général : toute personne intéressée peut l''invoquer. Elle est relative si la règle protège une partie : seule celle-ci peut agir, et elle peut confirmer le contrat en renonçant à la nullité en connaissance de cause.

L''effet est rétroactif : le contrat est censé n''avoir jamais existé. On remet les parties dans l''état antérieur. Exemple : un client a acheté une machine à coudre à 450 000 FCFA, dont il a payé 300 000 FCFA ; la vente est annulée pour dol. Le vendeur restitue 300 000 FCFA, le client rend la machine, et le vendeur, auteur du dol, peut en plus être condamné à des dommages-intérêts.

Ne confondez pas avec la résolution, qui sanctionne une inexécution : le contrat était valable, mais il n''a pas été exécuté.

Une question revient souvent en TD : que se passe-t-il si la chose a été utilisée avant l''annulation ? Les restitutions doivent remettre les parties dans l''état antérieur ; lorsque la restitution en nature est impossible ou incomplète, on raisonne en valeur. Ne vous perdez pas dans les détails à l''examen : posez le principe de la remise en l''état antérieur, puis appliquez-le aux faits avec bon sens, en signalant les difficultés.

Autre point : la nullité relative peut être couverte par la confirmation. Imaginons que le client trompé, après avoir découvert le dol, continue d''utiliser la machine, la revend même, en sachant parfaitement qu''il aurait pu agir. Le juge pourrait y voir une confirmation tacite, à condition que la volonté de renoncer à la nullité soit certaine. Retenez qu''une nullité absolue, elle, ne peut pas être confirmée, car elle protège l''intérêt général.

## 1:00:00 – 1:10:00 · Les effets du contrat et l''inexécution

Le contrat légalement formé tient lieu de loi à ceux qui l''ont fait : c''est la force obligatoire. Le juge ne peut pas, en principe, le modifier au motif qu''il est devenu déséquilibré. Le contrat doit être exécuté de bonne foi. Et il n''a d''effet obligatoire qu''entre les parties : c''est l''effet relatif, avec l''exception de la stipulation pour autrui.

En cas d''inexécution, le créancier met d''abord le débiteur en demeure. Puis il choisit : exception d''inexécution (je suspends mon paiement), exécution forcée, résolution, dommages-intérêts. Le débiteur est exonéré en cas de force majeure : un événement imprévisible, irrésistible et extérieur. Exemple de discussion : une inondation exceptionnelle détruit l''entrepôt d''un fournisseur de Saint-Louis. Était-elle imprévisible dans une zone régulièrement inondée ? Le fournisseur pouvait-il livrer depuis un autre stock ? À l''examen, examinez chacun des trois caractères au regard des faits, sans conclure trop vite.

## 1:10:00 – 1:22:00 · Correction commentée d''un exercice chiffré

Énoncé : la boulangerie fictive Le Bon Pain, à Kaolack, commande un four à 6 200 000 FCFA, verse un acompte de 25 % et attend une livraison au 1er mai. Le fournisseur ne livre pas malgré une mise en demeure. La boulangerie loue un four pendant 2 mois à 350 000 FCFA par mois et perd une marge prouvée de 480 000 FCFA. Elle obtient la résolution du contrat.

Calculons ensemble. Acompte : 6 200 000 × 0,25 = 1 550 000 FCFA, à restituer du fait de la résolution. Perte subie : 2 × 350 000 = 700 000 FCFA. Gain manqué : 480 000 FCFA. Dommages-intérêts : 700 000 + 480 000 = 1 180 000 FCFA. Total à recevoir : 1 550 000 + 1 180 000 = 2 730 000 FCFA.

Commentaire : beaucoup d''étudiants additionnent le prix total du four aux dommages-intérêts. C''est une erreur : la boulangerie n''a versé que l''acompte, c''est cela qu''on lui restitue. Autre erreur : oublier de justifier le préjudice. Le gain manqué doit être prouvé, par exemple par des commandes refusées.

## 1:22:00 – 1:27:00 · Synthèse

Le contrat naît de la rencontre d''une offre ferme et précise et d''une acceptation pure et simple. Il est valable si le consentement est libre et éclairé, les parties capables, l''objet et la cause licites, et la forme respectée quand elle est exigée. Sinon, nullité absolue ou relative, avec restitutions. Valable, il oblige les parties, de bonne foi, mais pas les tiers. Inexécuté, il ouvre plusieurs sanctions, dont les dommages-intérêts qui réparent la perte subie et le gain manqué.

## 1:27:00 – 1:30:00 · Évaluation finale

- Question 1 : définissez l''offre.
- Question 2 : qui peut invoquer une nullité relative ?
- Question 3 : quelle différence entre nullité et résolution ?
- Question 4 : citez les trois caractères de la force majeure.
- Question 5 : un acompte de 20 % sur un prix de 3 500 000 FCFA représente combien ?

Réponses : 1) une proposition ferme et précise contenant les éléments essentiels du contrat ; 2) seule la partie protégée ; 3) la nullité sanctionne un vice de formation, la résolution une inexécution ; 4) imprévisible, irrésistible, extérieure ; 5) 3 500 000 × 0,20 = 700 000 FCFA. Merci, et bon travail sur les fiches d''exercices.', 'video', 90, false, 70
from public.courses c where c.slug = 'lic-droit-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Droit des obligations 1 (le contrat)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Institutions administratives et droit constitutionnel', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 1 en droit, droit des affaires, administration publique ou science politique.
- Objectifs : définir l''État et la Constitution, expliquer la séparation des pouvoirs et classer les régimes politiques, distinguer centralisation, déconcentration et décentralisation, présenter le service public, construire un plan de dissertation.
- Matériel : diaporama (schémas des régimes, carte administrative simplifiée, tableau déconcentration et décentralisation), tableau blanc, calculatrice, fiche d''exercices.
- Prérequis : la leçon « Institutions administratives et droit constitutionnel : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour à toutes et à tous. Le juriste d''affaires ne s''occupe pas seulement de contrats et de sociétés : il doit comprendre l''État, qui fait les lois, délivre les autorisations, perçoit l''impôt et passe des marchés. Aujourd''hui, nous étudions les notions générales de droit constitutionnel et d''institutions administratives. Objectifs : définir l''État, comprendre la Constitution et la séparation des pouvoirs, classer les régimes, maîtriser l''organisation administrative et le service public, et réussir une dissertation dans cette matière.

## 05:00 – 15:00 · L''État et ses éléments

Un État, c''est une population, un territoire, et un pouvoir politique souverain. Population : l''ensemble des personnes qui lui sont rattachées, en particulier par la nationalité. Territoire : terrestre, maritime, aérien. Souveraineté : l''État n''obéit à aucune autorité supérieure dans l''ordre interne, et il est l''égal des autres États dans l''ordre international.

Question : l''UEMOA est-elle un État ? Non. C''est une organisation d''intégration à laquelle les États transfèrent certaines compétences, notamment monétaires et économiques. De même, l''OHADA harmonise le droit des affaires, mais elle n''a ni territoire propre ni population.

Forme de l''État : unitaire, avec un seul centre politique, comme le Sénégal, ou fédéral, avec des États fédérés dotés de leur propre Constitution, comme le Nigeria.

## 15:00 – 27:00 · La Constitution et sa protection

Visuel : schéma du pouvoir constituant originaire et dérivé.

La Constitution, au sens formel, est un texte placé au sommet de l''ordre juridique interne et révisable selon une procédure renforcée : c''est une Constitution rigide. Le pouvoir constituant originaire crée une Constitution nouvelle, comme lors du référendum de 2001 au Sénégal. Le pouvoir constituant dérivé la révise, par la voie parlementaire ou référendaire, dans les formes qu''elle prévoit.

Une Constitution n''est suprême que si elle est protégée. D''où le contrôle de constitutionnalité, confié au Sénégal au Conseil constitutionnel. Il peut être exercé avant la promulgation d''une loi et, dans certaines conditions prévues par les textes, à l''occasion d''un procès, par la voie de l''exception d''inconstitutionnalité. Retenez le principe ; pour les modalités précises, reportez-vous au texte constitutionnel et à la loi organique en vigueur.

## 27:00 – 42:00 · Séparation des pouvoirs et régimes politiques

Montesquieu partait d''un constat : tout homme qui a du pouvoir est porté à en abuser. Il faut donc que « le pouvoir arrête le pouvoir ». On distingue trois fonctions : légiférer, exécuter, juger.

Visuel : deux schémas côte à côte.

Le régime parlementaire organise une séparation souple : le gouvernement est responsable devant le Parlement, qui peut le renverser ; en contrepartie, l''exécutif peut dissoudre l''assemblée. L''exécutif est bicéphale : un chef de l''État souvent effacé et un chef de gouvernement qui gouverne.

Le régime présidentiel organise une séparation stricte : le Président est élu, il n''est pas responsable devant le Congrès et ne peut pas le dissoudre. Chacun est indépendant ; ils doivent coopérer.

Beaucoup d''États d''Afrique francophone, dont le Sénégal, ont des régimes mixtes : un Président élu au suffrage universel direct, aux pouvoirs importants, qui nomme un Premier ministre ; un gouvernement responsable devant l''Assemblée nationale ; et une possibilité de dissolution encadrée par la Constitution. À l''examen, ne vous contentez pas d''une étiquette : décrivez les mécanismes de responsabilité et de dissolution, c''est cela qui permet de qualifier un régime.

## 42:00 – 50:00 · Pause interactive : quiz

- Question 1 : citez les trois éléments constitutifs de l''État.
- Question 2 : dans quel régime le gouvernement peut-il être renversé par le Parlement ?
- Question 3 : qui contrôle la constitutionnalité des lois au Sénégal ?
- Question 4 : vrai ou faux, l''OHADA est un État fédéral.
- Question 5 : quelle est la différence entre pouvoir constituant originaire et dérivé ?

Réponses : 1) population, territoire, pouvoir souverain ; 2) le régime parlementaire, et les régimes mixtes qui en reprennent ce mécanisme ; 3) le Conseil constitutionnel ; 4) faux, c''est une organisation d''harmonisation du droit des affaires ; 5) l''originaire crée une Constitution nouvelle, le dérivé révise la Constitution existante selon ses règles.

## 50:00 – 1:02:00 · Centralisation, déconcentration, décentralisation

Visuel : tableau à trois colonnes.

Centralisation : tout se décide à Dakar, dans les ministères. Avantage : l''unité ; inconvénient : la lenteur et l''éloignement.

Déconcentration : l''État confie un pouvoir de décision à ses propres agents sur le terrain : gouverneurs, préfets, sous-préfets. C''est toujours l''État qui décide ; ses agents sont soumis au pouvoir hiérarchique : le ministre peut leur donner des ordres et réformer leurs décisions.

Décentralisation : l''État transfère des compétences à des personnes morales distinctes de lui, les collectivités territoriales, qui ont des organes élus et une autonomie administrative et financière. Au Sénégal, depuis la réforme de 2013 dite Acte III de la décentralisation, ce sont les départements et les communes. L''État ne leur donne pas d''ordres : il exerce un contrôle de légalité.

Formule à retenir : la déconcentration rapproche l''État de l''administré ; la décentralisation rapproche le pouvoir de décision des citoyens, par l''élection.

## 1:02:00 – 1:10:00 · Le service public

Le service public est une activité d''intérêt général assurée ou contrôlée par une personne publique. Trois principes : continuité, égalité, mutabilité. Modes de gestion : la régie, directement par l''administration ; l''établissement public, comme une université ; la délégation à une personne privée, qui exploite le service et se rémunère en partie sur les usagers.

Exemple chiffré : la commune fictive de Kër Yaakaar délègue l''exploitation d''un marché pour 6 ans. Recettes annuelles prévues : 25 000 000 FCFA. Redevance contractuelle : 10 % des recettes, pourcentage fictif. Redevance annuelle : 25 000 000 × 0,10 = 2 500 000 FCFA ; sur 6 ans : 15 000 000 FCFA si les recettes sont stables.

## 1:10:00 – 1:22:00 · Correction commentée d''une dissertation

Sujet : « Le Président de la République dans la Constitution sénégalaise ». Je corrige devant vous le plan d''un étudiant.

Première version : I. L''élection du Président ; II. Les pouvoirs du Président. C''est un plan descriptif, acceptable mais faible : il ne démontre rien.

Version améliorée, avec une problématique : la Constitution fait-elle du Président le centre du pouvoir ? I. Un Président au cœur des institutions : A. Une légitimité forte issue du suffrage universel direct ; B. Des pouvoirs étendus, de nomination et d''arbitrage. II. Un Président encadré : A. Un pouvoir partagé avec un gouvernement responsable devant l''Assemblée ; B. Des limites constitutionnelles, comme la limitation et la durée des mandats prévues par le texte, et le contrôle du juge constitutionnel.

Commentaire : les titres affirment une idée ; les deux parties s''équilibrent ; chaque sous-partie s''appuie sur des mécanismes précis. Attention à ne citer aucun article dont vous n''êtes pas sûr ; écrivez « la Constitution prévoit que… ».

Deuxième exercice, plus court, de type cas pratique. Le conseil municipal d''une commune fictive décide de fermer le marché hebdomadaire de bétail. Le préfet estime cette décision illégale car prise sans consultation obligatoire ; un ministre, lui, la trouve simplement inopportune et veut l''annuler. Qui peut faire quoi ?

Raisonnons. La commune est une collectivité territoriale décentralisée : elle n''est pas soumise au pouvoir hiérarchique de l''État. Le ministre ne peut donc pas annuler la délibération pour des raisons d''opportunité ; s''il le faisait, il méconnaîtrait la libre administration des collectivités. En revanche, le représentant de l''État exerce le contrôle de légalité : s''il estime que la délibération viole une règle de procédure, il peut engager les voies prévues par les textes, notamment saisir le juge compétent. Conclusion : seul un contrôle de légalité est possible, pas un contrôle d''opportunité.

Les erreurs que je vois souvent dans les copies : écrire que le préfet est « le supérieur hiérarchique du maire », ce qui est faux pour les compétences décentralisées ; ou oublier de conclure. Rédigez toujours une conclusion qui répond exactement à la question : qui peut faire quoi.

## 1:22:00 – 1:27:00 · Synthèse

L''État réunit population, territoire et souveraineté. La Constitution est suprême et protégée par le Conseil constitutionnel. Les régimes se qualifient par les mécanismes de responsabilité et de dissolution. L''administration combine centralisation, déconcentration avec pouvoir hiérarchique, et décentralisation avec contrôle de légalité. Le service public obéit aux principes de continuité, d''égalité et de mutabilité.

## 1:27:00 – 1:30:00 · Évaluation finale

- Question 1 : le Sénégal est-il un État unitaire ou fédéral ?
- Question 2 : quel contrôle l''État exerce-t-il sur les communes ?
- Question 3 : le préfet relève-t-il de la déconcentration ou de la décentralisation ?
- Question 4 : citez les trois principes du service public.
- Question 5 : une redevance de 8 % sur 30 000 000 FCFA de recettes représente combien ?

Réponses : 1) unitaire décentralisé ; 2) un contrôle de légalité ; 3) de la déconcentration ; 4) continuité, égalité, mutabilité ; 5) 30 000 000 × 0,08 = 2 400 000 FCFA. Merci et bonnes révisions.', 'video', 90, false, 80
from public.courses c where c.slug = 'lic-droit-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Institutions administratives et droit constitutionnel');

-- Cours : Droit des affaires Licence 2 : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'lic-droit-l2', (select id from public.levels where name = 'Licence 2'), null, 'Droit des affaires', 'Droit des affaires Licence 2 : réussir ses examens', 'Préparation aux partiels et examens semestriels de la Licence 2 en droit des affaires (système LMD, contexte Sénégal, UEMOA et OHADA). Le cours couvre le droit commercial général OHADA (commerçant, entreprenant, actes de commerce, fonds de commerce, bail à usage professionnel), le droit des obligations 2 (responsabilité civile délictuelle et contractuelle) et le droit du travail (relations individuelles, en tenant compte de la transition vers un nouveau Code du travail). Fiches, cas pratiques et exercices chiffrés corrigés (taux fictifs), sujet type et trois cours vidéo de 1h30. Prérequis : les acquis de la Licence 1 (introduction au droit, contrat).', true, 372
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Licence 2 en droit des affaires', '## Objectifs de la leçon

- Situer la Licence 2 dans le système LMD et comprendre ce qui change par rapport à la L1.
- Connaître les trois matières clés de l''année : droit commercial général OHADA, droit des obligations 2 (responsabilité civile), droit du travail.
- Adapter la méthode du cas pratique et du commentaire aux exigences de la L2.
- Disposer d''un plan de révision sur 6 semaines.

## 1. La Licence 2 dans le système LMD

La Licence 2 correspond aux semestres 3 et 4. Comme en L1, chaque semestre regroupe des unités d''enseignement (UE) dotées de crédits, évaluées par un contrôle continu (TD, devoirs, fiches d''arrêt) et un examen semestriel, avec une session de rattrapage. Les coefficients, les règles de compensation et les conditions de passage relèvent du règlement des études de votre établissement : c''est lui seul qui fait foi.

Ce qui change en L2 : les matières deviennent techniques et se rapprochent de la vie des affaires. Les sujets d''examen sont plus souvent des cas pratiques complexes, avec plusieurs personnes, plusieurs problèmes et parfois des calculs (indemnités, dommages-intérêts, loyers). Le correcteur attend une qualification précise des faits et une connaissance sûre des textes, en particulier des Actes uniformes de l''OHADA.

## 2. Les trois matières clés

- Droit commercial général OHADA : l''Acte uniforme relatif au droit commercial général (AUDCG), révisé en 2010, régit le commerçant, l''entreprenant, les actes de commerce, le Registre du commerce et du crédit mobilier (RCCM), le fonds de commerce et le bail à usage professionnel (souvent appelé bail commercial).
- Droit des obligations 2 : la responsabilité civile. Responsabilité délictuelle (fait personnel, fait des choses, fait d''autrui) et responsabilité contractuelle (inexécution du contrat). Au Sénégal, la matière relève principalement du Code des obligations civiles et commerciales (COCC).
- Droit du travail : les relations individuelles de travail (formation, exécution, suspension et rupture du contrat de travail). Le Sénégal est en transition vers un nouveau Code du travail (projet de loi n°15/2026). Apprenez les mécanismes, et vérifiez auprès de vos enseignants le texte applicable à la date de votre examen.

## 3. Les épreuves et la méthode

Le cas pratique reste l''épreuve reine. En L2, trois exigences s''ajoutent :

- Identifier tous les problèmes : lisez l''énoncé deux fois, soulignez chaque événement et demandez-vous « quelle règle s''applique ici ? ». Un énoncé de dix lignes cache souvent trois ou quatre problèmes.
- Hiérarchiser : traitez d''abord les questions préalables (qualification de commerçant, existence d''un contrat de travail), dont dépend le reste.
- Chiffrer quand c''est demandé : posez le calcul, les données et le résultat ; vérifiez les ordres de grandeur.

Le commentaire de décision et la dissertation restent possibles, notamment en responsabilité civile. Les décisions proposées dans ce cours sont fictives et présentées comme telles : on n''invente aucune jurisprudence réelle. À l''examen, on peut aussi vous demander des questions de cours courtes : définissez avec précision, puis illustrez.

Rappel de la grille du cas pratique : faits qualifiés, problème de droit, règle, application, conclusion. Ne citez aucun numéro d''article dont vous n''êtes pas certain ; écrivez « l''Acte uniforme relatif au droit commercial général prévoit que… ».

## 4. Les pièges classiques de la L2

- Confondre commerçant et entreprenant : l''entreprenant est une personne physique qui exerce une petite activité et s''enregistre par simple déclaration ; le commerçant est immatriculé au RCCM.
- Confondre responsabilité contractuelle et délictuelle : s''il existe un contrat valable entre l''auteur et la victime, et que le dommage résulte de son inexécution, on raisonne en principe sur le terrain contractuel.
- Oublier la qualification du contrat de travail : sans lien de subordination, il n''y a pas de contrat de travail, quelle que soit l''appellation choisie par les parties.
- Présenter des taux légaux de mémoire : dans ce cours, les taux utilisés en droit du travail sont fictifs pour l''exemple ; vérifiez toujours le texte en vigueur.

## 5. Plan de révision sur 6 semaines

- Semaine 1 : droit commercial général (commerçant, entreprenant, actes de commerce, RCCM) ; deux cas pratiques de qualification.
- Semaine 2 : fonds de commerce et bail commercial ; un cas pratique avec calcul de loyer ou d''indemnité.
- Semaine 3 : responsabilité du fait personnel, du fait des choses et du fait d''autrui ; une fiche de décision.
- Semaine 4 : responsabilité contractuelle, causes d''exonération, réparation chiffrée ; une dissertation (plan détaillé).
- Semaine 5 : droit du travail (contrat, période d''essai, suspension, rupture) ; un cas pratique avec calcul d''indemnités fictives.
- Semaine 6 : sujet type en 3 heures, correction, relecture des fiches et repos.

Exemple de répartition du temps pour une épreuve de 3 heures : 20 minutes de lecture et de brouillon (repérage des problèmes), 2 heures 15 de rédaction, 25 minutes de relecture et de vérification des calculs.

## Points clés

- La L2 rapproche le droit de la vie des affaires : droit commercial général OHADA, responsabilité civile, droit du travail.
- Le cas pratique domine : identifier tous les problèmes, traiter d''abord les questions préalables, chiffrer proprement.
- Les taux de droit du travail utilisés ici sont fictifs ; le Code du travail sénégalais est en transition.

## Exercices pratiques

- Exercice 1. Citez les trois matières clés de la L2 et l''Acte uniforme ou le code principal de chacune.
- Exercice 2. Dans l''énoncé suivant, repérez les problèmes juridiques sans les résoudre : « Modou, qui vend des pièces détachées sur un marché de Thiès sans être enregistré, a embauché un apprenti sans contrat écrit. En déchargeant un carton, l''apprenti a blessé un client. »
- Exercice 3. Quelle question préalable faut-il trancher avant de calculer des indemnités de licenciement ?
- Exercice 4. Répartissez 3 heures d''épreuve selon la méthode proposée et justifiez le temps de relecture.
- Exercice 5. Corrigez la phrase : « Selon l''article X de l''Acte uniforme, le commerçant doit… », écrite par un étudiant qui ne connaît pas le numéro exact.

## Corrigé

- Exercice 1. Droit commercial général : Acte uniforme relatif au droit commercial général (OHADA). Responsabilité civile : Code des obligations civiles et commerciales (COCC). Droit du travail : Code du travail sénégalais, en transition vers un nouveau texte, et conventions collectives.
- Exercice 2. 1) Modou a-t-il la qualité de commerçant, et quelles sont les conséquences de son absence d''immatriculation ou de déclaration ? 2) Le contrat qui le lie à l''apprenti est-il un contrat d''apprentissage ou de travail, et quelles sont les conséquences de l''absence d''écrit ? 3) Qui répond du dommage causé au client : l''apprenti (fait personnel), Modou (fait d''autrui, en tant que commettant ou maître d''apprentissage) ? Quelle est la nature de la responsabilité envers le client ?
- Exercice 3. L''existence d''un contrat de travail (lien de subordination) et le mode de rupture (licenciement, démission, faute grave), dont dépend le droit aux indemnités.
- Exercice 4. 20 minutes de lecture et brouillon, 2 h 15 de rédaction, 25 minutes de relecture. La relecture permet de corriger les erreurs de calcul, de vérifier que chaque problème a une conclusion et d''améliorer la lisibilité.
- Exercice 5. « L''Acte uniforme relatif au droit commercial général prévoit que le commerçant doit… ». On cite le texte sans inventer de numéro.', 'texte', 45, true, 10
from public.courses c where c.slug = 'lic-droit-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Licence 2 en droit des affaires');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Droit commercial général OHADA : l''essentiel pour l''examen', '## Objectifs de la leçon

- Maîtriser les notions clés de l''Acte uniforme relatif au droit commercial général (AUDCG) : commerçant, entreprenant, actes de commerce, fonds de commerce, bail.

## 1. Le commerçant

L''AUDCG définit le commerçant comme celui qui fait de l''accomplissement d''actes de commerce par nature sa profession. Trois conditions se dégagent :

- Accomplir des actes de commerce par nature (et non quelques actes isolés).
- À titre de profession habituelle : de manière répétée, comme source de revenus.
- De façon indépendante, pour son propre compte : un salarié qui vend pour son employeur n''est pas commerçant.

Il faut aussi la capacité : le mineur non émancipé ne peut pas être commerçant. Certaines professions sont incompatibles avec le commerce (fonctionnaires, officiers ministériels, avocats) et certaines condamnations entraînent une interdiction. Les actes accomplis malgré une incompatibilité restent valables à l''égard des tiers de bonne foi, mais leur auteur s''expose à des sanctions disciplinaires.

Obligations principales du commerçant :

- S''immatriculer au Registre du commerce et du crédit mobilier (RCCM). L''immatriculation fait présumer la qualité de commerçant.
- Tenir une comptabilité conforme au droit comptable OHADA (SYSCOHADA révisé).

Effets : entre commerçants, la preuve est libre, et les obligations nées à l''occasion de leur commerce se prescrivent en principe par cinq ans, sauf prescriptions plus courtes.

## 2. L''entreprenant

Création de la réforme de 2010, l''entreprenant est un entrepreneur individuel, personne physique, qui exerce une activité professionnelle civile, commerciale, artisanale ou agricole, sur simple déclaration au RCCM, tant que son chiffre d''affaires reste sous un seuil fixé par chaque État. Il bénéficie d''obligations comptables simplifiées. Ce statut vise à formaliser les petites activités (tabliers, couturiers, vendeurs de marché) ; au-delà du seuil, il faut passer au régime du commerçant.

## 3. Les actes de commerce

L''AUDCG énumère des actes de commerce par nature, parmi lesquels : l''achat de biens meubles ou immeubles en vue de leur revente ; les opérations de banque, de change, de courtage, d''assurance et de transit ; les contrats entre commerçants pour les besoins de leur commerce ; les opérations de transport.

Il existe aussi des actes de commerce par la forme, quelle que soit la qualité de leur auteur : la lettre de change, le billet à ordre et le warrant. Les sociétés commerciales sont, elles, commerciales par leur forme (SARL, SA, SAS, SNC, SCS).

Deux notions à connaître :

- L''acte mixte : commercial pour une partie, civil pour l''autre (un grossiste vend du riz à un particulier) ; en matière de preuve, le particulier peut prouver contre le commerçant par tous moyens.
- L''acte de commerce par accessoire : un acte civil par nature devient commercial lorsqu''il est accompli par un commerçant pour les besoins de son commerce (l''achat d''un véhicule de livraison).

## 4. Le fonds de commerce

Le fonds de commerce est l''ensemble des moyens permettant d''attirer et de conserver une clientèle. Selon l''AUDCG, il comprend nécessairement la clientèle et l''enseigne ou le nom commercial, et peut comprendre d''autres éléments désignés : droit au bail, matériel, marchandises, licences, brevets et marques.

Bien meuble incorporel, il peut être :

- Vendu : la vente, constatée par écrit et publiée, elle protège le vendeur impayé (privilège) et les créanciers du vendeur (opposition).
- Donné en location-gérance : un gérant, commerçant, l''exploite à ses risques contre une redevance.
- Nanti : il garantit un prêt, avec inscription au RCCM.

Exemple chiffré. La société fictive Teranga Boulangerie cède à M. Sow le fonds qu''elle exploite à Rufisque. Prix ventilé : clientèle et enseigne 15 000 000 FCFA ; droit au bail 6 000 000 FCFA ; matériel 9 000 000 FCFA ; marchandises 4 500 000 FCFA. Prix total : 15 000 000 + 6 000 000 + 9 000 000 + 4 500 000 = 34 500 000 FCFA. La ventilation précise l''assiette des garanties du vendeur.

## 5. Le bail à usage professionnel

L''AUDCG régit le bail des locaux utilisés pour une activité commerciale, industrielle, artisanale ou professionnelle :

- Forme et durée : le bail peut être écrit ou verbal, à durée déterminée ou indéterminée. À défaut d''écrit ou de durée, il est réputé conclu pour une durée indéterminée.
- Obligations du bailleur : délivrer les locaux en bon état, faire les grosses réparations, garantir une jouissance paisible.
- Obligations du preneur : payer le loyer, exploiter conformément à la destination prévue, user des lieux raisonnablement.
- Loyer : fixé librement ; révisable selon les modalités de l''Acte uniforme et, à défaut d''accord, par le juge (situation, superficie, loyers comparables).
- Droit au renouvellement : le preneur qui justifie avoir exploité son activité conformément au bail pendant une durée minimale fixée par l''Acte uniforme a droit au renouvellement ; le bailleur qui refuse sans motif grave et légitime doit une indemnité d''éviction, fixée à défaut d''accord par le juge (chiffre d''affaires, investissements, situation géographique).
- Résiliation : l''inexécution par le preneur peut conduire à la résiliation judiciaire, après une mise en demeure restée sans effet.

Exemple : un commerçant paie 450 000 FCFA de loyer mensuel. Les parties conviennent d''une révision de 8 % : nouveau loyer 450 000 × 1,08 = 486 000 FCFA, soit 5 832 000 FCFA par an (486 000 × 12).

## Points clés

- Commerçant : actes de commerce par nature, à titre de profession habituelle, de façon indépendante, avec capacité ; immatriculation au RCCM.
- Fonds de commerce : clientèle et enseigne ou nom commercial au minimum ; vente, location-gérance, nantissement.

## Exercices pratiques

- Exercice 1. Qualifiez : a) un fonctionnaire qui achète chaque semaine des tissus au marché HLM pour les revendre ; b) un agriculteur qui vend sa récolte ; c) une SARL de conseil.
- Exercice 2. Un grossiste vend des pagnes à une enseignante pour son usage personnel. Quelle est la nature de l''acte ? Comment chacun peut-il prouver ?
- Exercice 3. Un fonds de quincaillerie est vendu sans clientèle transmissible ni enseigne, seulement avec le matériel et le stock. Y a-t-il cession de fonds de commerce ?
- Exercice 4 (chiffré). Une épicerie est cédée : clientèle et nom commercial 8 000 000 FCFA ; droit au bail 3 500 000 FCFA ; matériel 2 700 000 FCFA ; stock 1 850 000 FCFA. L''acheteur paie 60 % comptant. Calculez le prix total, la part comptant et le solde.
- Exercice 5 (cas pratique). Mme Ba exploite depuis plusieurs années un salon de coiffure dans un local loué à Ziguinchor, sans bail écrit, et paie régulièrement son loyer. Le propriétaire lui annonce qu''il ne renouvelle pas, pour louer plus cher à une banque. Que peut-elle faire ?

## Corrigé

- Exercice 1. a) Achats pour revendre à titre habituel : actes de commerce par nature, mais incompatibilité avec la fonction publique ; ses actes restent valables envers les tiers de bonne foi et il s''expose à des sanctions disciplinaires. b) L''activité agricole n''est pas commerciale : la vente de sa propre récolte n''est pas un achat pour revendre. c) Commerciale par la forme, quelle que soit son activité.
- Exercice 2. Acte mixte : commercial pour le grossiste, civil pour l''enseignante. L''enseignante peut prouver contre le grossiste par tous moyens ; le grossiste devra respecter les règles de preuve du droit civil contre elle.
- Exercice 3. Non : le fonds comprend nécessairement la clientèle et l''enseigne ou le nom commercial. Sans ces éléments, il s''agit d''une simple vente de matériel et de marchandises.
- Exercice 4. Prix total : 8 000 000 + 3 500 000 + 2 700 000 + 1 850 000 = 16 050 000 FCFA. Comptant : 16 050 000 × 0,60 = 9 630 000 FCFA. Solde : 16 050 000 − 9 630 000 = 6 420 000 FCFA.
- Exercice 5. Problème : le preneur d''un bail professionnel verbal peut-il s''opposer au refus de renouvellement ou obtenir une indemnité ? Règle : l''AUDCG s''applique au bail écrit ou verbal ; le preneur qui a exploité conformément au bail pendant la durée minimale prévue a droit au renouvellement ; le bailleur qui refuse sans motif grave et légitime doit une indemnité d''éviction. Application : bail verbal valable, exploitation ancienne, loyers payés ; louer plus cher n''est pas un motif grave et légitime. Conclusion : Mme Ba peut réclamer une indemnité d''éviction, à défaut d''accord fixée par le juge.', 'texte', 60, false, 20
from public.courses c where c.slug = 'lic-droit-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Droit commercial général OHADA : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Droit des obligations 2 (responsabilité civile) : l''essentiel pour l''examen', '## Objectifs de la leçon

- Maîtriser les conditions et les régimes de la responsabilité délictuelle.
- Maîtriser la responsabilité contractuelle et ses causes d''exonération.
- Chiffrer une réparation, y compris en cas de partage de responsabilité.

## 1. Notion et conditions générales

La responsabilité civile est l''obligation de réparer le dommage causé à autrui. Elle est délictuelle (ou extracontractuelle) lorsqu''aucun contrat ne lie l''auteur et la victime, et contractuelle lorsque le dommage résulte de l''inexécution d''un contrat. Au Sénégal, ses règles figurent principalement dans le Code des obligations civiles et commerciales (COCC). Trois conditions sont toujours exigées :

- Un dommage (ou préjudice) : matériel (perte d''argent, destruction d''un bien), corporel (atteinte à l''intégrité physique) ou moral (souffrance, atteinte à l''honneur). Il doit être certain (un préjudice futur peut l''être s''il est inévitable ; la perte d''une chance sérieuse est réparable), direct et personnel.
- Un fait générateur : une faute, le fait d''une chose ou le fait d''une personne dont on répond.
- Un lien de causalité entre le fait générateur et le dommage.

## 2. La responsabilité du fait personnel

Chacun répond du dommage causé par sa faute. La faute est un comportement que n''aurait pas eu une personne normalement prudente et diligente placée dans les mêmes circonstances : on l''apprécie « in abstracto ». Elle peut être intentionnelle (volonté de nuire) ou non intentionnelle (imprudence, négligence). Elle peut consister en une action ou en une abstention.

Exemple : le gérant fictif d''une station de lavage de Pikine laisse un tuyau à haute pression en travers du trottoir, sans signalisation ; un passant chute. La faute d''imprudence est caractérisée.

## 3. La responsabilité du fait des choses

On est responsable du dommage causé par les choses que l''on a sous sa garde. Le gardien est celui qui a l''usage, la direction et le contrôle de la chose, en principe le propriétaire, sauf transfert de la garde (vol, prêt ou location avec transfert des pouvoirs). La victime doit prouver que la chose a été l''instrument du dommage ; lorsque la chose était en mouvement et est entrée en contact avec la victime, ce rôle est facilement admis ; si elle était inerte, la victime doit prouver son anormalité (position, état).

Le gardien ne s''exonère pas en prouvant qu''il n''a pas commis de faute. Il ne peut s''exonérer, totalement ou partiellement, que par une cause étrangère : la force majeure, le fait d''un tiers ou la faute de la victime présentant les caractères requis.

## 4. La responsabilité du fait d''autrui

Le COCC prévoit des cas dans lesquels une personne répond du dommage causé par une autre. Les principaux :

- Les parents, pour les dommages causés par leurs enfants mineurs.
- Les commettants (employeurs), pour les dommages causés par leurs préposés (salariés) dans l''exercice de leurs fonctions. Si le préposé a agi hors de ses fonctions, sans autorisation et à des fins étrangères à ses attributions, le commettant peut échapper à sa responsabilité.
- D''autres personnes chargées d''organiser ou de contrôler l''activité d''autrui, selon les cas prévus par le texte (maîtres d''apprentissage, enseignants, par exemple).

Ces responsabilités protègent la victime, qui obtient un débiteur solvable. Le responsable qui a indemnisé peut, dans certaines conditions, se retourner contre l''auteur direct.

## 5. La responsabilité contractuelle

Conditions : un contrat valable entre l''auteur et la victime, une inexécution (inexécution totale, partielle, défectueuse ou tardive), un dommage et un lien de causalité. La mise en demeure est en principe nécessaire pour les dommages-intérêts dus au retard.

La distinction essentielle porte sur l''intensité de l''obligation :

- Obligation de moyens : le débiteur promet de faire de son mieux (un médecin, un conseil juridique). Le créancier doit prouver une faute.
- Obligation de résultat : le débiteur promet un résultat précis (un transporteur doit livrer la marchandise intacte). L''absence de résultat suffit ; le débiteur ne s''exonère que par une cause étrangère.

Les clauses limitatives ou exclusives de responsabilité sont en principe valables entre professionnels, mais elles sont écartées en cas de faute lourde ou de dol du débiteur. Les dommages-intérêts couvrent en principe le préjudice prévisible lors de la conclusion du contrat, sauf faute lourde ou dolosive.

Lorsque les conditions de la responsabilité contractuelle sont réunies, la victime ne peut en principe pas l''écarter pour invoquer la responsabilité délictuelle, plus favorable : c''est la règle du non-cumul.

## 6. La réparation

La réparation doit être intégrale : tout le dommage, rien que le dommage. Elle se fait le plus souvent en argent (dommages-intérêts), parfois en nature. Si la victime a elle-même commis une faute qui a contribué au dommage, le juge procède à un partage de responsabilité.

Exemple chiffré. Un camion de la société fictive Fleuve Transports percute la boutique de Mme Ndiaye à Saint-Louis. Préjudices : réparation du local 2 800 000 FCFA, marchandises détruites 1 200 000 FCFA, perte d''exploitation pendant la fermeture 500 000 FCFA. Total : 2 800 000 + 1 200 000 + 500 000 = 4 500 000 FCFA. Si le juge retenait une faute de la victime ayant contribué au dommage à hauteur de 30 % (par exemple un étal installé illégalement sur la chaussée), l''indemnité serait de 4 500 000 × 0,70 = 3 150 000 FCFA. Fleuve Transports, gardienne du camion et commettante du chauffeur, doit l''indemnité.

## Points clés

- Trois conditions : dommage, fait générateur, lien de causalité.
- Fait personnel : faute appréciée in abstracto ; fait des choses : responsabilité du gardien, exonération par la seule cause étrangère ; fait d''autrui : parents, commettants, autres cas prévus.
- Responsabilité contractuelle : obligation de moyens ou de résultat ; principe de non-cumul.

## Exercices pratiques

- Exercice 1. Obligation de moyens ou de résultat ? a) un transporteur de marchandises ; b) un avocat qui plaide ; c) un garagiste qui doit remplacer une pièce désignée.
- Exercice 2. Un salarié livreur, pendant sa tournée, renverse un piéton par imprudence. Qui la victime peut-elle poursuivre ? Sur quels fondements ?
- Exercice 3 (chiffré). Une victime subit 1 650 000 FCFA de frais médicaux, 900 000 FCFA de pertes de revenus et un préjudice moral évalué à 750 000 FCFA. Le juge retient une faute de la victime pour 20 %. Calculez l''indemnité.
- Exercice 4 (chiffré). Un transporteur perd 40 cartons de 25 000 FCFA. Le contrat contient une clause limitant l''indemnisation à 600 000 FCFA. Calculez le préjudice, puis l''indemnité dans deux hypothèses : sans faute lourde, puis avec faute lourde prouvée.
- Exercice 5 (cas pratique). Le fils de M. Diallo, 15 ans, joue au football dans la rue à Thiès et brise la vitrine d''une pharmacie (réparation : 380 000 FCFA). Le ballon appartient à un camarade. Le pharmacien vous consulte.

## Corrigé

- Exercice 1. a) Résultat (livrer intact) ; b) moyens (l''issue du procès est aléatoire) ; c) résultat, pour l''opération précise promise.
- Exercice 2. Contre le salarié, sur le fondement de sa faute personnelle ; contre l''employeur, commettant, responsable du fait de son préposé agissant dans l''exercice de ses fonctions ; contre le gardien du véhicule de livraison au titre du fait des choses. La victime choisira le débiteur le plus solvable, en général l''employeur et son assureur.
- Exercice 3. Préjudice total : 1 650 000 + 900 000 + 750 000 = 3 300 000 FCFA. Indemnité : 3 300 000 × 0,80 = 2 640 000 FCFA.
- Exercice 4. Préjudice : 40 × 25 000 = 1 000 000 FCFA. Sans faute lourde, la clause s''applique entre professionnels : 600 000 FCFA. Avec faute lourde prouvée, la clause est écartée : 1 000 000 FCFA.
- Exercice 5. Problème : qui répond du dommage causé par un mineur ? Règle : les parents répondent des dommages causés par leur enfant mineur, dans les conditions prévues par le COCC ; l''enfant peut aussi avoir commis une faute personnelle. Peu importe à qui appartient le ballon : la garde suit l''usage, la direction et le contrôle. Application : le fils de M. Diallo, mineur, a brisé la vitrine en jouant ; préjudice de 380 000 FCFA, lien de causalité direct. Conclusion : le pharmacien agira contre M. Diallo, civilement responsable de son fils, et son assureur responsabilité civile s''il en a un. Il devra prouver le dommage (devis, facture, constat).', 'texte', 60, false, 30
from public.courses c where c.slug = 'lic-droit-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Droit des obligations 2 (responsabilité civile) : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Droit du travail (relations individuelles) : l''essentiel pour l''examen', '## Objectifs de la leçon

- Situer les sources du droit du travail sénégalais dans un contexte de transition.
- Qualifier le contrat de travail et distinguer CDI et CDD.
- Analyser les modes de rupture et calculer des indemnités (taux fictifs pour l''exemple).

## 1. Les sources, dans un contexte de transition

Le droit du travail sénégalais repose sur le Code du travail adopté en 1997, ses décrets d''application, les conventions collectives (notamment la convention collective nationale interprofessionnelle et les conventions de branche), les conventions de l''Organisation internationale du travail ratifiées par le Sénégal, les usages et le contrat individuel. Le Sénégal est en transition vers un nouveau Code du travail (projet de loi n°15/2026). À la date de votre examen, renseignez-vous sur le texte applicable. Dans cette leçon, on étudie des mécanismes stables ; les durées, taux et seuils utilisés dans les exemples sont fictifs pour l''exemple.

## 2. Le contrat de travail

Le contrat de travail est la convention par laquelle une personne (le travailleur) s''engage à mettre son activité professionnelle, moyennant rémunération, sous la direction et l''autorité d''une autre personne (l''employeur). Trois éléments : une prestation de travail, une rémunération et un lien de subordination. Le lien de subordination est le critère décisif : pouvoir de donner des ordres, d''en contrôler l''exécution et de sanctionner les manquements. Le juge requalifie un contrat mal nommé : un « contrat de prestation » qui impose des horaires, un lieu et des consignes peut être un contrat de travail.

On distingue :

- Le contrat à durée indéterminée (CDI) : la forme normale de la relation de travail.
- Le contrat à durée déterminée (CDD) : il comporte un terme et doit, en principe, être écrit. Les textes encadrent sa durée et son renouvellement ; un CDD qui ne respecte pas ces règles peut être requalifié en CDI. Vérifiez les limites précises dans le texte applicable.
- La période d''essai : elle permet à chaque partie d''apprécier l''autre. Elle doit être prévue par écrit ; sa durée maximale dépend de la catégorie professionnelle. Pendant l''essai, chacune des parties peut en principe rompre sans préavis ni indemnité, sauf abus.

## 3. L''exécution du contrat

Obligations de l''employeur : fournir le travail convenu, payer le salaire à date régulière, délivrer un bulletin de paie, assurer la sécurité et la santé des travailleurs, respecter la durée du travail et les repos, déclarer le salarié aux organismes sociaux.

Obligations du salarié : exécuter personnellement le travail, respecter les instructions et le règlement intérieur, faire preuve de loyauté (pas de concurrence déloyale, discrétion).

L''employeur dispose d''un pouvoir disciplinaire : avertissement, mise à pied, licenciement pour faute, dans le respect des procédures et du principe de proportionnalité. Il peut changer les conditions de travail, mais une modification d''un élément essentiel du contrat (salaire, qualification) suppose l''accord du salarié.

## 4. La suspension du contrat

Certains événements suspendent le contrat sans le rompre : maladie du salarié, accident du travail, congé de maternité, congés payés, grève licite, certaines absences autorisées. Pendant la suspension, le salarié ne travaille pas, et l''employeur, selon les cas, maintient tout ou partie du salaire ou est relayé par les organismes sociaux. À l''issue, le salarié retrouve son emploi. La protection est renforcée pour la salariée enceinte et pour le salarié victime d''un accident du travail.

## 5. La rupture du contrat

Rupture du CDI :

- La démission : volonté claire et non équivoque du salarié, qui doit respecter un préavis.
- Le licenciement pour motif personnel : il doit reposer sur un motif légitime (faute, insuffisance professionnelle) et respecter la procédure. Sauf faute lourde, le salarié licencié a droit au préavis (ou à une indemnité compensatrice), et, à partir d''une certaine ancienneté, à une indemnité de licenciement.
- Le licenciement pour motif économique : suppression ou transformation d''emploi liée à des difficultés économiques ou à une réorganisation ; il obéit à une procédure spécifique (information et consultation des délégués du personnel, information de l''inspection du travail, critères d''ordre des licenciements).
- Le licenciement abusif (sans motif légitime) ouvre droit à des dommages-intérêts fixés par le juge.

Rupture du CDD : il prend fin à son terme. Avant le terme, la rupture n''est en principe possible qu''en cas d''accord des parties, de faute lourde ou de force majeure ; une rupture abusive oblige à des dommages-intérêts.

Les litiges individuels relèvent du tribunal du travail, après une tentative de conciliation selon les règles en vigueur ; l''inspection du travail joue un rôle important de conseil, de contrôle et de conciliation.

Exemple chiffré (taux fictifs pour l''exemple). La société fictive Atlantique Conserverie, à Dakar, licencie pour motif personnel, sans faute grave, M. Gaye, 6 ans d''ancienneté, salaire moyen mensuel de 400 000 FCFA. Hypothèses fictives : préavis de 1 mois, que l''employeur dispense le salarié d''exécuter ; indemnité de licenciement égale à 25 % du salaire moyen mensuel par année pour les 5 premières années et 30 % au-delà. Indemnité compensatrice de préavis : 400 000 FCFA. Indemnité de licenciement : 400 000 × (0,25 × 5 + 0,30 × 1) = 400 000 × 1,55 = 620 000 FCFA. Total : 1 020 000 FCFA, hors congés payés et salaire dû. Vérifiez les règles réelles dans le texte et la convention collective applicables.

## Points clés

- Sources : Code du travail de 1997 en cours de remplacement, conventions collectives, conventions OIT, contrat.
- Le lien de subordination est le critère du contrat de travail ; le juge requalifie.
- Rupture : démission, licenciement personnel ou économique, licenciement abusif ; CDD rompu avant terme seulement dans des cas limités.

## Exercices pratiques

- Exercice 1. Quels sont les trois éléments du contrat de travail ? Lequel est décisif ?
- Exercice 2. Un chauffeur signe un « contrat de prestation de services » mais reçoit des horaires, un itinéraire et des sanctions en cas de retard. Qualifiez.
- Exercice 3. Distinguez modification du contrat et changement des conditions de travail, avec un exemple de chacun.
- Exercice 4 (chiffré, taux fictifs). Salaire moyen 350 000 FCFA, ancienneté 8 ans. Indemnité : 25 % par année pour les 5 premières années, 30 % de la 6e à la 10e. Préavis fictif : 2 mois, non exécuté à la demande de l''employeur. Calculez les indemnités.
- Exercice 5 (chiffré). Un CDD de 12 mois à 280 000 FCFA par mois est rompu abusivement par l''employeur après 7 mois. Hypothèse fictive : le juge alloue des dommages-intérêts égaux aux salaires restant à courir. Calculez.
- Exercice 6 (cas pratique). Awa, comptable en CDI depuis 3 ans dans une PME fictive de Kaolack, refuse une baisse de son salaire décidée unilatéralement. Son employeur la licencie pour « insubordination ». Analysez.

## Corrigé

- Exercice 1. Prestation de travail, rémunération, lien de subordination ; le lien de subordination est décisif.
- Exercice 2. Les horaires, l''itinéraire imposé et le pouvoir de sanction caractérisent un lien de subordination : le juge requalifiera en contrat de travail, avec les droits qui en découlent (salaire, protection, déclaration sociale).
- Exercice 3. La modification touche un élément essentiel (salaire, qualification, durée du travail convenue) et exige l''accord du salarié. Le changement des conditions de travail relève du pouvoir de direction (changement de bureau dans le même immeuble, nouvel outil informatique) et s''impose au salarié.
- Exercice 4. Indemnité : 350 000 × (0,25 × 5 + 0,30 × 3) = 350 000 × 2,15 = 752 500 FCFA. Préavis : 2 × 350 000 = 700 000 FCFA. Total : 1 452 500 FCFA.
- Exercice 5. Mois restant à courir : 12 − 7 = 5 ; dommages-intérêts : 5 × 280 000 = 1 400 000 FCFA (dans l''hypothèse fictive retenue).
- Exercice 6. Problème : le refus d''une modification du contrat est-il une faute justifiant le licenciement ? Règle : la rémunération est un élément essentiel ; sa modification suppose l''accord du salarié ; le refus n''est pas une faute ; le licenciement doit reposer sur un motif légitime. Application : la baisse unilatérale est une modification ; le refus d''Awa est légitime ; l''« insubordination » invoquée n''est pas caractérisée. Conclusion : le licenciement est vraisemblablement abusif ; Awa peut saisir l''inspection du travail puis le tribunal du travail pour obtenir ses indemnités de rupture et des dommages-intérêts.', 'texte', 60, false, 40
from public.courses c where c.slug = 'lic-droit-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Droit du travail (relations individuelles) : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Licence 2 en droit des affaires (entraînement, corrigé détaillé)', '## Présentation du sujet

Ce sujet d''entraînement couvre les trois matières clés de la Licence 2. Ce n''est pas un sujet officiel. Durée conseillée : 3 heures. Barème indicatif, non officiel : 20 points. Documents non autorisés, sauf indication contraire de votre enseignant. Personnes et entreprises fictives ; les taux de droit du travail sont fictifs pour l''exemple.

## Énoncé commun

M. Pape Seck exploite depuis plusieurs années, sous l''enseigne « Seck Électro », un commerce de vente d''appareils électroménagers à Thiès. Il est immatriculé au RCCM. Il loue son local à M. Faye par un bail écrit à durée déterminée, arrivé à échéance. Il emploie quatre salariés.

## Dossier 1 : Droit commercial général (6 points)

M. Faye refuse le renouvellement du bail sans donner de motif, car il souhaite installer son neveu dans le local. Par ailleurs, M. Seck envisage de céder son fonds : clientèle et enseigne 12 000 000 FCFA ; droit au bail 5 000 000 FCFA ; matériel et mobilier 3 600 000 FCFA ; stock 7 400 000 FCFA.

- 1.1 M. Seck est-il commerçant ? Justifiez. (1 point)
- 1.2 Quels sont ses droits face au refus de renouvellement ? (3 points)
- 1.3 Calculez le prix de cession du fonds. Quels éléments sont indispensables pour qu''il y ait cession de fonds de commerce ? (2 points)

## Dossier 2 : Responsabilité civile (7 points)

Un livreur salarié de Seck Électro, pendant une livraison, gare mal le tricycle de l''entreprise ; le tricycle, mal freiné, dévale une pente et heurte Mme Sarr, qui traversait. Préjudices : frais médicaux 850 000 FCFA ; perte de revenus 450 000 FCFA ; préjudice moral 300 000 FCFA. Mme Sarr traversait hors du passage prévu, en regardant son téléphone.

Par ailleurs, un réfrigérateur vendu par Seck Électro à un restaurant, et garanti « en parfait état de fonctionnement », tombe en panne au bout d''une semaine : le restaurant perd 600 000 FCFA de denrées.

- 2.1 Sur quels fondements Mme Sarr peut-elle agir et contre qui ? (3 points)
- 2.2 Le juge retient une faute de la victime pour 25 %. Calculez l''indemnité. (2 points)
- 2.3 Quelle est la nature de la responsabilité de Seck Électro envers le restaurant ? (2 points)

## Dossier 3 : Droit du travail (7 points)

Fatou, vendeuse en CDI depuis 7 ans, salaire moyen 300 000 FCFA, est licenciée par lettre pour « manque de dynamisme », sans entretien préalable ni avertissement antérieur. Hypothèses fictives : préavis de 1 mois, non exécuté à la demande de l''employeur ; indemnité de licenciement de 25 % du salaire moyen par année pour les 5 premières années et 30 % au-delà.

- 3.1 Le motif du licenciement vous paraît-il légitime ? (3 points)
- 3.2 Calculez les indemnités de rupture dues en toute hypothèse. (2 points)
- 3.3 Devant quelles instances Fatou peut-elle contester ? (2 points)

## Corrigé détaillé

1.1 Oui : il accomplit à titre habituel et indépendant des achats pour revendre, actes de commerce par nature, et il est immatriculé au RCCM, ce qui fait présumer la qualité de commerçant.

1.2 Problème : le preneur d''un bail professionnel peut-il s''opposer à un refus de renouvellement non motivé ? Règle : l''AUDCG reconnaît un droit au renouvellement au preneur qui a exploité conformément au bail pendant la durée minimale prévue ; le bailleur qui refuse sans motif grave et légitime doit une indemnité d''éviction, fixée à défaut d''accord par le juge en fonction notamment du chiffre d''affaires, des investissements et de la situation géographique. Application : exploitation de plusieurs années ; installer un neveu n''est pas un motif grave et légitime au sens de l''Acte uniforme, sous réserve des cas particuliers que celui-ci prévoit pour la reprise des locaux. Conclusion : M. Seck peut réclamer une indemnité d''éviction et doit agir dans les formes et délais prévus.

1.3 Prix : 12 000 000 + 5 000 000 + 3 600 000 + 7 400 000 = 28 000 000 FCFA. Indispensables : la clientèle et l''enseigne ou le nom commercial.

2.1 Contre Seck Électro, gardienne du tricycle (fait des choses) : le tricycle en mouvement a heurté la victime ; contre l''employeur, commettant du livreur ayant agi dans ses fonctions (fait d''autrui) ; contre le livreur pour sa faute personnelle (mauvais stationnement). En pratique, Mme Sarr agira contre l''entreprise et son assureur.

2.2 Préjudice : 850 000 + 450 000 + 300 000 = 1 600 000 FCFA. Indemnité : 1 600 000 × 0,75 = 1 200 000 FCFA.

2.3 Responsabilité contractuelle : un contrat de vente lie les parties ; le vendeur a garanti le bon fonctionnement ; la panne constitue une inexécution ; le dommage de 600 000 FCFA est en lien direct et prévisible. Règle du non-cumul : le restaurant ne peut pas agir sur le terrain délictuel.

3.1 Problème : un licenciement pour « manque de dynamisme » repose-t-il sur un motif légitime ? Règle : le licenciement doit reposer sur un motif réel et sérieux (on parle de motif légitime), précis et vérifiable, et respecter la procédure applicable. Application : motif vague et subjectif, aucun avertissement en 7 ans, aucun fait précis ; procédure vraisemblablement irrégulière. Conclusion : licenciement vraisemblablement abusif, ouvrant droit à des dommages-intérêts en plus des indemnités de rupture.

3.2 Préavis : 300 000 FCFA. Indemnité de licenciement : 300 000 × (0,25 × 5 + 0,30 × 2) = 300 000 × 1,85 = 555 000 FCFA. Total : 855 000 FCFA (taux fictifs).

3.3 L''inspection du travail (conseil et tentative de conciliation), puis le tribunal du travail, compétent pour les litiges individuels, selon la procédure applicable.

## Exercices pratiques

- Exercice 1. Recalculez l''indemnité de Mme Sarr si le juge retient une faute de la victime pour 10 %.
- Exercice 2. Quelle part du prix de cession du fonds de M. Seck représente le stock, en pourcentage ?
- Exercice 3. Quelle différence entre obligation de moyens et obligation de résultat ? Donnez un exemple tiré du sujet.
- Exercice 4. Si Fatou avait 4 ans d''ancienneté, quelle serait son indemnité de licenciement avec les mêmes taux fictifs ?

## Corrigé

- Exercice 1. 1 600 000 × 0,90 = 1 440 000 FCFA.
- Exercice 2. 7 400 000 / 28 000 000 = 0,264 environ, soit 26,4 %.
- Exercice 3. L''obligation de moyens impose de faire de son mieux, le créancier devant prouver une faute ; l''obligation de résultat impose d''atteindre un résultat, dont l''absence suffit à engager la responsabilité. La garantie de « parfait état de fonctionnement » du réfrigérateur s''analyse comme une obligation de résultat.
- Exercice 4. 300 000 × 0,25 × 4 = 300 000 FCFA.', 'texte', 60, false, 50
from public.courses c where c.slug = 'lic-droit-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Licence 2 en droit des affaires (entraînement, corrigé détaillé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Droit commercial général OHADA', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 2 en droit des affaires, droit privé, gestion ou commerce.
- Objectifs : qualifier le commerçant et l''entreprenant, identifier les actes de commerce, analyser une cession ou une location-gérance de fonds de commerce, résoudre un cas pratique de bail à usage professionnel.
- Matériel : diaporama (arbre de qualification du commerçant, tableau des actes de commerce, schéma du fonds de commerce, frise du bail), tableau blanc, calculatrice, fiche d''exercices.
- Prérequis : la leçon « Droit commercial général OHADA : l''essentiel pour l''examen » et la méthode du cas pratique.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour à toutes et à tous. Le droit commercial général, c''est le socle du droit des affaires dans l''espace OHADA. Son texte de référence est l''Acte uniforme relatif au droit commercial général, que nous appellerons l''AUDCG, révisé en 2010. Aujourd''hui, nous allons apprendre à répondre aux quatre questions qui reviennent dans presque tous les sujets : qui est commerçant ? quel acte est commercial ? qu''est-ce qu''un fonds de commerce et comment le céder ? quels sont les droits du locataire d''un local professionnel ? Toutes les personnes citées sont fictives.

## 05:00 – 18:00 · Qui est commerçant ?

Visuel : arbre de décision à quatre questions.

L''AUDCG définit le commerçant comme celui qui fait de l''accomplissement d''actes de commerce par nature sa profession. Je vous propose un arbre en quatre questions. Un : la personne accomplit-elle des actes de commerce par nature ? Deux : le fait-elle à titre de profession habituelle ? Trois : agit-elle pour son propre compte, de manière indépendante ? Quatre : a-t-elle la capacité d''être commerçant, et n''est-elle frappée d''aucune incompatibilité ou interdiction ?

Testons. Mme Diouf, salariée d''un supermarché, vend toute la journée : est-elle commerçante ? Non : elle agit pour le compte de son employeur, elle n''est pas indépendante. M. Kane, enseignant, achète et revend chaque week-end des téléphones : il accomplit des actes de commerce par nature, de manière habituelle et indépendante, mais sa fonction publique est incompatible avec le commerce. Ses actes restent valables envers les tiers de bonne foi, mais il s''expose à des sanctions disciplinaires.

Conséquences de la qualité de commerçant : immatriculation au RCCM, tenue d''une comptabilité conforme au SYSCOHADA révisé, liberté de la preuve entre commerçants, prescription en principe de cinq ans pour les obligations nées à l''occasion de leur commerce.

## 18:00 – 28:00 · L''entreprenant

La réforme de 2010 a créé l''entreprenant. C''est une personne physique qui exerce une petite activité civile, commerciale, artisanale ou agricole, et qui se contente d''une déclaration au RCCM. Ses obligations comptables sont simplifiées. Le seuil de chiffre d''affaires est fixé par chaque État : ne l''inventez pas à l''examen ; dites « le seuil fixé par l''État partie ».

Pourquoi ce statut ? Parce qu''une grande partie de l''activité économique en Afrique de l''Ouest est informelle. L''entreprenant permet à une vendeuse de légumes de Thiaroye ou à un tailleur des Parcelles Assainies d''avoir une existence juridique, de prouver son activité et d''accéder plus facilement au crédit, sans supporter toutes les charges du commerçant.

## 28:00 – 42:00 · Les actes de commerce

Visuel : tableau à quatre colonnes, par nature, par la forme, mixtes, par accessoire.

Actes de commerce par nature : l''AUDCG en donne une liste, dont l''achat pour revendre, les opérations de banque, de change, de courtage, d''assurance et de transit, le transport, les contrats entre commerçants pour les besoins de leur commerce. Actes par la forme : la lettre de change, le billet à ordre, le warrant, quelle que soit la qualité de la personne qui les signe. Les sociétés commerciales, comme la SARL ou la SA, sont commerciales par leur forme.

L''acte mixte est commercial pour l''un, civil pour l''autre : le grossiste qui vend du sucre à une mère de famille. Retenez la conséquence sur la preuve : la cliente peut prouver contre le grossiste par tous moyens, alors que le grossiste devra respecter les règles civiles contre elle.

L''acte de commerce par accessoire : un acte civil devient commercial parce qu''il est accompli par un commerçant pour les besoins de son commerce. Le boutiquier qui achète une moto pour ses livraisons fait un acte de commerce par accessoire.

## 42:00 – 50:00 · Pause interactive : quiz

- Question 1 : un salarié vendeur est-il commerçant ?
- Question 2 : l''entreprenant s''immatricule-t-il ou se déclare-t-il au RCCM ?
- Question 3 : la lettre de change est-elle un acte de commerce par nature ou par la forme ?
- Question 4 : quels éléments doit nécessairement comprendre un fonds de commerce ?
- Question 5 : quel est le délai de prescription de principe entre commerçants pour les obligations nées de leur commerce ?

Réponses : 1) non, il n''est pas indépendant ; 2) il se déclare ; 3) par la forme ; 4) la clientèle et l''enseigne ou le nom commercial ; 5) cinq ans, sauf prescription plus courte.

## 50:00 – 1:02:00 · Le fonds de commerce et ses opérations

Visuel : un cercle central « clientèle + enseigne ou nom commercial », entouré des éléments facultatifs.

Le fonds de commerce est l''ensemble des moyens qui permettent d''attirer et de conserver une clientèle. Il comprend nécessairement la clientèle et l''enseigne ou le nom commercial. Il peut comprendre le droit au bail, le matériel, les marchandises, les licences, les marques. C''est un bien meuble incorporel.

Trois opérations. La vente : elle doit être constatée par écrit et publiée ; le vendeur impayé bénéficie d''un privilège, et les créanciers du vendeur peuvent faire opposition pour ne pas voir le prix leur échapper. La location-gérance : le propriétaire confie l''exploitation à un gérant, qui devient commerçant et exploite à ses risques en payant une redevance. Le nantissement : le fonds garantit un crédit.

Exercice commenté : la société fictive Sine Optique donne son fonds en location-gérance pour 3 ans, contre une redevance mensuelle de 750 000 FCFA. Redevance annuelle : 750 000 × 12 = 9 000 000 FCFA ; sur 3 ans : 27 000 000 FCFA. Le gérant, lui, garde les bénéfices et supporte les pertes. Question piège : le propriétaire reste-t-il commerçant ? Le gérant a la qualité de commerçant et doit s''immatriculer ; le loueur, lui, ne fait plus d''actes de commerce à titre habituel au titre de ce fonds. À l''examen, discutez sa situation au regard de la définition du commerçant et des règles de publicité de la location-gérance.

## 1:02:00 – 1:12:00 · Le bail à usage professionnel

Visuel : frise du bail, conclusion, exécution, renouvellement ou éviction.

L''AUDCG s''applique au bail de locaux utilisés pour une activité commerciale, industrielle, artisanale ou professionnelle. Le bail peut être écrit ou verbal, à durée déterminée ou indéterminée. Le bailleur délivre les lieux et assure une jouissance paisible ; le preneur paie le loyer et respecte la destination.

Le cœur du régime : le droit au renouvellement. Le preneur qui a exploité conformément au bail pendant la durée minimale fixée par l''Acte uniforme a droit au renouvellement. Si le bailleur refuse sans motif grave et légitime, il doit une indemnité d''éviction. À défaut d''accord, le juge la fixe en tenant compte notamment du chiffre d''affaires, des investissements réalisés et de la situation géographique. Je vous conseille de vérifier vous-mêmes la durée minimale et les délais dans le texte de l''Acte uniforme, et de ne jamais les inventer.

## 1:12:00 – 1:22:00 · Correction commentée d''un cas pratique

Énoncé : Mme Mbaye exploite depuis longtemps une boutique de tissus dans un local de Kaolack, sans bail écrit. Son bailleur lui demande de partir dans un mois, pour louer à un prix plus élevé. Elle a investi 4 200 000 FCFA dans l''aménagement.

Correction. Problème 1 : le bail verbal relève-t-il de l''AUDCG ? Oui, l''Acte uniforme vise le bail écrit ou verbal ; en l''absence d''écrit, il est réputé à durée indéterminée. Problème 2 : le bailleur peut-il la congédier sans indemnité ? Pour mettre fin à un bail à durée indéterminée, il doit respecter les formes et le préavis de l''Acte uniforme. Si Mme Mbaye remplit les conditions du droit au renouvellement, un refus sans motif grave et légitime l''expose à une indemnité d''éviction. Louer plus cher n''est pas un tel motif. Les 4 200 000 FCFA d''investissements font partie des éléments que le juge peut prendre en compte. Conclusion : Mme Mbaye peut contester le congé et réclamer une indemnité.

Erreurs fréquentes dans les copies : affirmer que le bail verbal n''est pas protégé ; inventer une durée de préavis précise ; oublier la conclusion.

## 1:22:00 – 1:27:00 · Synthèse

Le commerçant accomplit des actes de commerce par nature, à titre habituel et indépendant, avec la capacité requise. L''entreprenant est un petit entrepreneur personne physique qui se déclare au RCCM. Les actes de commerce sont par nature, par la forme, mixtes ou par accessoire. Le fonds comprend au minimum la clientèle et l''enseigne ou le nom commercial ; il se vend, se loue, se nantit. Le preneur d''un bail professionnel bénéficie d''un droit au renouvellement ou, à défaut, d''une indemnité d''éviction.

## 1:27:00 – 1:30:00 · Évaluation finale

- Question 1 : citez les conditions pour être commerçant.
- Question 2 : qu''est-ce qu''un acte mixte ?
- Question 3 : le gérant-libre a-t-il la qualité de commerçant ?
- Question 4 : quel droit protège le preneur d''un bail professionnel à l''échéance ?
- Question 5 : redevance de location-gérance de 600 000 FCFA par mois : montant sur 2 ans ?

Réponses : 1) actes de commerce par nature, profession habituelle, indépendance, capacité, absence d''incompatibilité ou d''interdiction ; 2) un acte commercial pour une partie et civil pour l''autre ; 3) oui ; 4) le droit au renouvellement, ou l''indemnité d''éviction en cas de refus sans motif grave et légitime ; 5) 600 000 × 24 = 14 400 000 FCFA. Merci et bonnes révisions.', 'video', 90, false, 60
from public.courses c where c.slug = 'lic-droit-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Droit commercial général OHADA');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Droit des obligations 2 (responsabilité civile)', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 2 en droit, droit des affaires ou gestion.
- Objectifs : poser les conditions de la responsabilité civile, distinguer les régimes du fait personnel, du fait des choses et du fait d''autrui, maîtriser la responsabilité contractuelle et le non-cumul, chiffrer une réparation avec partage de responsabilité, rédiger la fiche d''une décision fictive.
- Matériel : diaporama (schéma des trois conditions, tableau des régimes, arbre contractuel ou délictuel), tableau blanc, calculatrice, fiche d''exercices.
- Prérequis : la leçon « Droit des obligations 2 (responsabilité civile) : l''essentiel pour l''examen » et le cours de L1 sur le contrat.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour à toutes et à tous. La responsabilité civile, c''est la question que se pose toute victime : qui va payer ? Un accident de la circulation à Dakar, une marchandise abîmée par un transporteur, une vitrine brisée par un enfant : derrière chaque cas, la même mécanique juridique. Au Sénégal, ses règles figurent principalement dans le Code des obligations civiles et commerciales. Objectif de la séance : savoir choisir le bon régime, vérifier ses conditions et chiffrer la réparation. Les personnes et entreprises citées sont fictives, ainsi que la décision que nous analyserons.

## 05:00 – 15:00 · Les trois conditions

Visuel : trois blocs reliés par des flèches, fait générateur, lien de causalité, dommage.

Toute responsabilité civile suppose trois éléments. Un dommage : matériel, corporel ou moral, certain, direct et personnel. Un fait générateur : une faute, le fait d''une chose, ou le fait d''une personne dont on répond. Et un lien de causalité entre les deux.

Prenez l''habitude, dans un cas pratique, de vérifier les trois, dans cet ordre ou dans l''ordre inverse, mais toujours tous les trois. La moitié des copies oublient le lien de causalité. Exemple : un client glisse dans un magasin le jour où le sol vient d''être lavé, mais il s''avère qu''il a fait un malaise avant de tomber. Le sol mouillé est-il la cause de la chute ? C''est toute la question du lien de causalité.

## 15:00 – 27:00 · Le fait personnel et le fait des choses

Le fait personnel : chacun répond de sa faute. La faute s''apprécie in abstracto : on compare le comportement de l''auteur à celui d''une personne normalement prudente et diligente placée dans les mêmes circonstances. Elle peut être intentionnelle ou d''imprudence, consister en une action ou une abstention.

Le fait des choses : on répond du dommage causé par les choses que l''on a sous sa garde. Le gardien est celui qui a l''usage, la direction et le contrôle de la chose. Le propriétaire est présumé gardien, sauf s''il prouve avoir transféré la garde, par exemple en cas de vol. La victime doit établir que la chose a été l''instrument du dommage. Le gardien ne s''exonère pas en prouvant qu''il n''a pas commis de faute : il doit prouver une cause étrangère, comme la force majeure, le fait d''un tiers ou la faute de la victime.

Visuel : un taxi en stationnement dont le frein lâche ; une charrette qui heurte un passant ; un pot de fleurs qui tombe d''un balcon. Pour chacun, je vous demande : qui est le gardien ?

## 27:00 – 40:00 · Le fait d''autrui

Le COCC prévoit des cas où l''on répond du fait d''une autre personne. Les deux grands cas d''examen : les parents pour leurs enfants mineurs, et les commettants pour leurs préposés.

Pour le commettant, trois conditions : un lien de préposition, c''est-à-dire un pouvoir de donner des ordres, en général issu d''un contrat de travail ; un fait dommageable du préposé ; un fait commis dans l''exercice des fonctions. Si le préposé a agi hors de ses fonctions, sans autorisation et à des fins étrangères à ses attributions, le commettant peut échapper à sa responsabilité. Exemple : le chauffeur d''une entreprise de transport qui, la nuit, utilise le camion à l''insu de son employeur pour une course personnelle.

Pourquoi ces responsabilités ? Pour offrir à la victime un débiteur solvable, souvent assuré. Le responsable qui a payé peut, dans les conditions prévues, se retourner contre l''auteur direct.

## 40:00 – 48:00 · Pause interactive : quiz

- Question 1 : citez les trois conditions de la responsabilité civile.
- Question 2 : comment s''apprécie la faute ?
- Question 3 : le gardien peut-il s''exonérer en prouvant qu''il n''a commis aucune faute ?
- Question 4 : quelles conditions pour engager la responsabilité du commettant ?
- Question 5 : un préjudice de 2 000 000 FCFA avec une faute de la victime retenue à 40 % : quelle indemnité ?

Réponses : 1) dommage, fait générateur, lien de causalité ; 2) in abstracto ; 3) non, il doit prouver une cause étrangère ; 4) lien de préposition, fait dommageable du préposé, dans l''exercice des fonctions ; 5) 2 000 000 × 0,60 = 1 200 000 FCFA.

## 48:00 – 1:00:00 · La responsabilité contractuelle

Visuel : arbre de décision « existe-t-il un contrat entre l''auteur et la victime ? ».

S''il existe un contrat valable entre l''auteur et la victime, et que le dommage résulte de son inexécution, on se place sur le terrain contractuel. Conditions : un contrat, une inexécution, un dommage, un lien de causalité. La victime ne peut pas, en principe, écarter ces règles pour invoquer la responsabilité délictuelle : c''est le non-cumul.

Distinction capitale : l''obligation de moyens, où le créancier doit prouver une faute du débiteur, et l''obligation de résultat, où l''absence du résultat promis suffit. Le transporteur de marchandises a une obligation de résultat : livrer la marchandise intacte et à temps. Le consultant a en général une obligation de moyens.

Les clauses limitatives de responsabilité sont en principe valables entre professionnels, mais écartées en cas de faute lourde ou de dol. Les dommages-intérêts couvrent en principe le dommage prévisible lors de la conclusion du contrat, sauf faute lourde ou dolosive.

## 1:00:00 – 1:10:00 · La réparation chiffrée

La réparation est intégrale : tout le dommage, rien que le dommage. Exemple : la société fictive Niayes Primeurs confie 200 cageots de tomates à un transporteur ; valeur unitaire 12 500 FCFA. Le camion arrive avec deux jours de retard et 80 cageots sont invendables. Préjudice matériel : 80 × 12 500 = 1 000 000 FCFA. Le contrat limite l''indemnisation à 5 000 FCFA par cageot. Sans faute lourde : 80 × 5 000 = 400 000 FCFA. Si le chauffeur a fait un long détour pour des raisons personnelles en laissant la marchandise au soleil, une faute lourde pourrait être retenue : la clause est écartée et l''indemnité remonte à 1 000 000 FCFA.

Partage de responsabilité : si la victime a contribué au dommage, le juge réduit l''indemnité dans la proportion qu''il retient. Présentez toujours le calcul en trois lignes : préjudice total, part laissée à la charge de la victime, indemnité.

## 1:10:00 – 1:22:00 · Fiche d''une décision fictive

Décision fictive rédigée pour l''entraînement : « Attendu que le propriétaire d''un véhicule, qui en a conservé l''usage, la direction et le contrôle, en est le gardien ; que, pour écarter sa responsabilité, la cour d''appel a retenu qu''il n''avait commis aucune faute dans l''entretien du véhicule ; qu''en statuant ainsi, alors que le gardien ne peut s''exonérer qu''en prouvant une cause étrangère, la cour d''appel a violé les règles relatives à la responsabilité du fait des choses ; casse. »

Construisons la fiche. Faits : un véhicule a causé un dommage ; son propriétaire en avait conservé la garde. Procédure : la victime a agi ; la cour d''appel a rejeté sa demande ; pourvoi en cassation ; cassation. Problème de droit : le gardien d''une chose peut-il s''exonérer en prouvant qu''il n''a commis aucune faute ? Solution : non ; seule une cause étrangère l''exonère.

Plan de commentaire possible : I. Une responsabilité fondée sur la garde (A. La définition du gardien ; B. L''indifférence de la faute). II. Une exonération strictement encadrée (A. La seule cause étrangère ; B. Une solution protectrice des victimes). Erreur à éviter : réciter tout le cours sur le fait d''autrui, qui n''a rien à voir avec la décision.

## 1:22:00 – 1:27:00 · Synthèse

Trois conditions : dommage, fait générateur, causalité. Trois faits générateurs délictuels : fait personnel, fait des choses, fait d''autrui. S''il existe un contrat et que le dommage vient de son inexécution, responsabilité contractuelle, avec la distinction moyens et résultat et la règle du non-cumul. La réparation est intégrale, réduite si la victime a contribué au dommage, et parfois plafonnée par une clause valable.

## 1:27:00 – 1:30:00 · Évaluation finale

- Question 1 : définissez le gardien.
- Question 2 : qu''est-ce que la règle du non-cumul ?
- Question 3 : le transporteur a-t-il une obligation de moyens ou de résultat ?
- Question 4 : quand une clause limitative est-elle écartée ?
- Question 5 : 60 cageots détruits à 12 500 FCFA, sans clause : préjudice ?

Réponses : 1) celui qui a l''usage, la direction et le contrôle de la chose ; 2) la victime liée à l''auteur par un contrat dont l''inexécution a causé le dommage ne peut pas invoquer la responsabilité délictuelle ; 3) de résultat ; 4) en cas de faute lourde ou de dol ; 5) 60 × 12 500 = 750 000 FCFA. Merci, et à bientôt pour le droit du travail.', 'video', 90, false, 70
from public.courses c where c.slug = 'lic-droit-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Droit des obligations 2 (responsabilité civile)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Droit du travail (relations individuelles)', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 2 en droit des affaires, droit privé, gestion ou ressources humaines.
- Objectifs : situer les sources du droit du travail sénégalais en période de transition, qualifier un contrat de travail, distinguer CDI, CDD et période d''essai, analyser l''exécution, la suspension et la rupture, calculer des indemnités avec des taux fictifs.
- Matériel : diaporama (pyramide des sources, critères du contrat de travail, arbre des ruptures), tableau blanc, calculatrice, fiche d''exercices.
- Prérequis : la leçon « Droit du travail (relations individuelles) : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil et précautions

Bonjour à toutes et à tous. Avant de commencer, une précaution importante. Le Sénégal est en transition vers un nouveau Code du travail : un projet de loi, numéroté 15/2026, est en cours. Nous allons donc étudier les mécanismes fondamentaux, qui sont stables, sans détailler d''articles. Tous les taux, durées et seuils que j''utiliserai dans les exemples sont fictifs pour l''exemple. À l''examen, appuyez-vous sur le texte que votre enseignant vous a indiqué comme applicable. Les entreprises citées sont fictives.

## 05:00 – 15:00 · Les sources du droit du travail

Visuel : pyramide des sources.

Au sommet, la Constitution, qui protège notamment la liberté syndicale et le droit de grève. Puis les conventions de l''Organisation internationale du travail ratifiées par le Sénégal. Puis le Code du travail, adopté en 1997, et ses textes d''application, en cours de remplacement. Ensuite les conventions collectives, en particulier la convention collective nationale interprofessionnelle et les conventions de branche. Enfin, les usages, le règlement intérieur de l''entreprise et le contrat individuel.

Un principe particulier au droit du travail : le principe de faveur. En cas de conflit entre deux normes, on applique en principe celle qui est la plus favorable au salarié, dans les limites prévues par les textes. Exemple : si une convention collective accorde une prime plus avantageuse que le minimum prévu ailleurs, le salarié en bénéficie.

## 15:00 – 28:00 · Qualifier le contrat de travail

Le contrat de travail réunit trois éléments : une prestation de travail, une rémunération, un lien de subordination. Le troisième est décisif. Il y a subordination quand l''employeur a le pouvoir de donner des ordres, d''en contrôler l''exécution et de sanctionner les manquements.

Le juge ne s''arrête pas aux mots. Si une société fictive de livraison, Yoon Express, fait signer à ses livreurs des « contrats de partenariat » mais leur impose des horaires, des zones, une tenue et des sanctions en cas de refus de course, le juge pourra requalifier en contrat de travail. Conséquences : salaire, congés, protection contre le licenciement, déclaration aux organismes sociaux.

Question à la salle : un stagiaire étudiant est-il salarié ? En principe non, la convention de stage poursuit un but pédagogique. Mais si le « stage » masque un véritable emploi productif, sans dimension pédagogique, une requalification est envisageable.

## 28:00 – 40:00 · CDI, CDD et période d''essai

Le CDI est la forme normale du contrat. Le CDD comporte un terme ; il doit en principe être écrit ; sa durée et ses renouvellements sont encadrés par les textes. Un CDD irrégulier risque la requalification en CDI.

La période d''essai permet à chacun d''évaluer l''autre. Elle doit être prévue par écrit ; sa durée maximale dépend de la catégorie professionnelle. Pendant l''essai, chacun peut en principe rompre librement, sans préavis ni indemnité, mais pas de manière abusive, par exemple pour un motif discriminatoire.

Exemple : un contrat signé par la PME fictive Baobab Services prévoit « une période d''essai renouvelable à volonté ». Cette clause est suspecte : la durée de l''essai et son éventuel renouvellement sont encadrés par les textes ; une clause qui laisse l''employeur prolonger indéfiniment l''essai serait contraire à cette finalité.

## 40:00 – 48:00 · Pause interactive : quiz

- Question 1 : quel est le critère décisif du contrat de travail ?
- Question 2 : un CDD doit-il être écrit ?
- Question 3 : qu''est-ce que le principe de faveur ?
- Question 4 : peut-on rompre la période d''essai pour un motif discriminatoire ?
- Question 5 : pourquoi faut-il être prudent sur les détails du Code du travail en ce moment ?

Réponses : 1) le lien de subordination ; 2) oui, en principe ; 3) l''application de la norme la plus favorable au salarié en cas de conflit, dans les limites prévues par les textes ; 4) non, la rupture serait abusive ; 5) parce que le Sénégal est en transition vers un nouveau Code du travail.

## 48:00 – 58:00 · Exécution et suspension

L''employeur fournit le travail, paie le salaire, délivre un bulletin de paie, assure la sécurité, déclare le salarié. Le salarié exécute personnellement, respecte les consignes et le règlement intérieur, et doit loyauté. Le pouvoir disciplinaire de l''employeur s''exerce dans le respect des procédures et de la proportionnalité.

Distinguez la modification du contrat, qui porte sur un élément essentiel comme le salaire ou la qualification et exige l''accord du salarié, et le simple changement des conditions de travail, qui relève du pouvoir de direction.

La suspension : maladie, accident du travail, maternité, congés, grève licite. Le contrat n''est pas rompu, il est mis en pause. À l''issue, le salarié retrouve son emploi.

Petit cas pour vérifier. Mme Cissé, caissière dans un supermarché fictif de Mbour, arrive en retard trois fois dans le mois. Son employeur la licencie pour faute lourde. Qu''en pensez-vous ? Les retards sont fautifs, mais une sanction doit être proportionnée : un avertissement, puis éventuellement une mise à pied, paraissent plus adaptés. Qualifier ces retards de faute lourde, qui prive en principe la salariée du préavis et de l''indemnité, serait excessif. Le juge pourrait considérer le licenciement comme abusif.

Autre cas : M. Ndour est en arrêt maladie, justifié par un certificat médical. Son employeur le remplace et lui écrit qu''il « ne fait plus partie du personnel ». Or la maladie suspend le contrat ; elle ne le rompt pas. L''employeur ne peut pas considérer le salarié comme démissionnaire, et une rupture prononcée en raison de la maladie elle-même serait irrégulière. Les textes encadrent les situations d''absence prolongée : vérifiez-les dans le texte applicable avant de conclure.

## 58:00 – 1:10:00 · La rupture du contrat

Visuel : arbre des ruptures. CDI : démission, licenciement pour motif personnel, licenciement pour motif économique. CDD : terme, accord, faute lourde, force majeure.

Le licenciement doit reposer sur un motif légitime et respecter la procédure applicable. Sauf faute lourde, le salarié a droit au préavis ou à une indemnité compensatrice, et, à partir d''une certaine ancienneté, à une indemnité de licenciement. Le licenciement économique suit une procédure spécifique : consultation des délégués du personnel, information de l''inspection du travail, critères d''ordre. Le licenciement sans motif légitime est abusif et ouvre droit à des dommages-intérêts.

Le CDD ne peut en principe être rompu avant son terme qu''en cas d''accord des parties, de faute lourde ou de force majeure. Les litiges individuels vont devant le tribunal du travail, après une tentative de conciliation selon les règles en vigueur.

## 1:10:00 – 1:22:00 · Correction commentée d''un exercice chiffré

Énoncé, taux fictifs pour l''exemple : M. Thiam, magasinier à la société fictive Delta Ciment, est licencié pour motif économique après 12 ans d''ancienneté ; salaire moyen mensuel 450 000 FCFA. Hypothèses fictives : indemnité de licenciement de 25 % du salaire moyen par année pour les 5 premières années, 30 % de la 6e à la 10e, 40 % au-delà ; préavis de 2 mois, non exécuté à la demande de l''employeur.

Calculons. Tranche 1 : 5 ans × 25 % = 1,25. Tranche 2 : 5 ans × 30 % = 1,50. Tranche 3 : 2 ans × 40 % = 0,80. Total des coefficients : 1,25 + 1,50 + 0,80 = 3,55. Indemnité de licenciement : 450 000 × 3,55 = 1 597 500 FCFA. Indemnité compensatrice de préavis : 2 × 450 000 = 900 000 FCFA. Total : 2 497 500 FCFA, hors congés payés et salaire du dernier mois.

Commentaire : l''erreur la plus fréquente est d''appliquer le taux le plus élevé à toute l''ancienneté : 450 000 × 0,40 × 12 = 2 160 000 FCFA, ce qui est faux avec un barème par tranches. Autre erreur : oublier le préavis. Enfin, rappelez toujours que les taux sont fictifs et qu''il faut vérifier le texte et la convention collective applicables.

## 1:22:00 – 1:27:00 · Synthèse

Sources : Constitution, conventions OIT, Code du travail en transition, conventions collectives, usages, contrat ; principe de faveur. Contrat de travail : prestation, rémunération, subordination. CDI forme normale, CDD encadré, essai écrit. Modification du contrat avec accord, changement des conditions par décision de l''employeur. Rupture encadrée : motif légitime, procédure, préavis, indemnités.

## 1:27:00 – 1:30:00 · Évaluation finale

- Question 1 : citez les trois éléments du contrat de travail.
- Question 2 : quels cas permettent en principe de rompre un CDD avant son terme ?
- Question 3 : une baisse de salaire imposée est-elle une modification du contrat ?
- Question 4 : quelle juridiction est compétente pour un litige individuel de travail ?
- Question 5 : avec les taux fictifs de l''exercice, indemnité pour 7 ans d''ancienneté et 300 000 FCFA de salaire moyen ?

Réponses : 1) prestation de travail, rémunération, lien de subordination ; 2) accord des parties, faute lourde, force majeure ; 3) oui, elle exige l''accord du salarié ; 4) le tribunal du travail ; 5) 300 000 × (0,25 × 5 + 0,30 × 2) = 300 000 × 1,85 = 555 000 FCFA. Merci et bonnes révisions.', 'video', 90, false, 80
from public.courses c where c.slug = 'lic-droit-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Droit du travail (relations individuelles)');
