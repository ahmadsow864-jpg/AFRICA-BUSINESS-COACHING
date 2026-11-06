-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Cours (partie 11/12). À exécuter après seed.sql.

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

-- Cours : Marketing et commerce Licence 1 : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'lic-mkt-l1', (select id from public.levels where name = 'Licence 1'), null, 'Marketing et commerce', 'Marketing et commerce Licence 1 : réussir ses examens', 'Préparation aux partiels et examens semestriels de première année de Licence en marketing et commerce (universités et écoles du Sénégal et de l''espace UEMOA, système LMD). Le cours couvre trois matières clés : les fondamentaux du marketing (besoins, marché, segmentation-ciblage-positionnement, mix 4P/7P), le comportement du consommateur et les techniques de vente et de négociation commerciale. Fiches de cours, cas d''entreprises sénégalaises fictives, exercices corrigés aux calculs vérifiés, sujet type et trois cours vidéo de 1h30. Prérequis : niveau Baccalauréat et aisance avec les pourcentages.', true, 381
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Licence 1 en Marketing et commerce', '## Objectifs de la leçon

- Comprendre comment est organisée la première année de Licence dans le système LMD.
- Identifier les trois matières clés de l''année en marketing et commerce et ce que les correcteurs attendent.
- Connaître les différents types d''épreuves et la bonne manière d''y répondre.
- Construire un plan de révision réaliste sur six semaines.

## 1. La Licence 1 dans le système LMD

Les universités publiques et les écoles de commerce du Sénégal, comme celles des autres pays de l''espace UEMOA, appliquent le système LMD : Licence, Master, Doctorat. La Licence se déroule en trois années, soit six semestres. Chaque semestre regroupe des unités d''enseignement (UE), et chaque UE contient une ou plusieurs matières, appelées aussi éléments constitutifs (EC).

Chaque UE donne droit à des crédits lorsqu''elle est validée. Les crédits mesurent la charge de travail de l''étudiant : cours, travaux dirigés, travail personnel. Le nombre de crédits par UE, les coefficients, les règles de compensation entre matières et les conditions de passage en deuxième année varient d''un établissement à l''autre. Votre premier réflexe doit donc être de lire le règlement des études et la maquette de votre filière, disponibles auprès de la scolarité ou du département.

En général, la note d''une matière combine un contrôle continu (devoirs, exposés, travaux dirigés, participation) et un examen de fin de semestre. Une session de rattrapage est souvent prévue pour les UE non validées. Retenez une règle simple : une note faible dans une matière peut parfois être compensée par d''autres notes de la même UE, mais une absence à un examen ne se compense presque jamais.

## 2. Les matières clés de l''année

La première année installe le vocabulaire et les raisonnements de base du marketing et de la vente. Ce cours se concentre sur trois matières qui pèsent lourd dans la plupart des maquettes :

- Fondamentaux du marketing : besoins et demande, notion de marché, part de marché, segmentation, ciblage, positionnement, et marketing-mix (4P puis 7P pour les services).
- Comportement du consommateur : motivations, processus de décision d''achat, facteurs d''influence, attitudes, fidélité.
- Techniques de vente et négociation commerciale : étapes de l''entretien de vente, découverte des besoins, argumentation, traitement des objections, conclusion, préparation d''une négociation et calcul de l''impact d''une remise.

Selon les établissements, l''année comprend aussi l''économie générale, la comptabilité générale, les mathématiques et statistiques, l''expression écrite et orale, l''informatique et l''anglais commercial.

## 3. Les types d''épreuves et ce qu''on attend de vous

- La question de cours : définir une notion et l''illustrer. Exemple : « Définissez la segmentation et donnez trois critères. » Le correcteur attend une définition précise, une structure et un exemple concret.
- Le QCM ou le vrai-faux : il teste la précision du vocabulaire. Lisez chaque proposition jusqu''au bout ; un seul mot change souvent le sens.
- L''exercice chiffré : part de marché, taux de pénétration, score d''attitude, taux de transformation, impact d''une remise sur la marge. Écrivez toujours la formule, puis le calcul, puis le résultat avec son unité, puis une phrase d''interprétation.
- Le cas pratique : une entreprise, souvent sénégalaise, avec un problème. Il faut faire un diagnostic court, proposer des actions justifiées et rester réaliste au regard du contexte (budget, circuits de distribution, habitudes des clients).
- La dissertation ou question de réflexion : par exemple « Le marketing crée-t-il des besoins ? ». On attend une introduction avec définition des termes et problématique, un plan en deux ou trois parties, des exemples, une conclusion.
- Le projet ou le dossier en groupe : étude d''un produit, plan de lancement, jeu de rôle de vente filmé. La forme compte : rapport structuré, sources citées, répartition des tâches.

## 4. La méthode de révision

Réviser le marketing, ce n''est pas réciter des définitions. Il faut savoir les appliquer à un cas. Voici une méthode en quatre temps.

- Fiche : pour chaque chapitre, une page maximum avec les définitions, les formules et un schéma décrit avec vos mots.
- Exemples : associez à chaque notion un exemple sénégalais tiré de votre quotidien (boutique de quartier, marché Sandaga, vendeur de crédit téléphonique, restaurant de dibiterie).
- Entraînement : refaites les exercices de TD sans regarder le corrigé, puis comparez.
- Oral : expliquez une notion à un camarade en deux minutes. Si vous n''y arrivez pas, vous ne la maîtrisez pas encore.

Exemple de mini-fiche. Part de marché en valeur = chiffre d''affaires de l''entreprise / chiffre d''affaires total du marché × 100. Si une laiterie fictive de Thiès réalise 360 000 000 FCFA sur un marché de 2 400 000 000 FCFA, sa part de marché est de 15 %. Une ligne d''interprétation : l''entreprise est un acteur moyen, loin d''un leader qui détiendrait 35 %.

## 5. Plan de révision sur six semaines

- Semaine 1 : bilan. Rassemblez cours, TD et anciens sujets. Listez les chapitres et notez pour chacun votre niveau (acquis, fragile, non vu).
- Semaine 2 : fondamentaux du marketing. Fiches sur le marché, les indicateurs, la démarche segmentation-ciblage-positionnement et le mix. Exercices de part de marché.
- Semaine 3 : comportement du consommateur. Fiches sur les motivations, le processus d''achat, les influences et les attitudes. Exercices de score multi-attributs.
- Semaine 4 : techniques de vente et négociation. Fiches sur les étapes de la vente, la méthode SONCAS, la reformulation, les objections. Jeux de rôle à deux et calculs de remise.
- Semaine 5 : sujets types en temps limité. Un sujet complet par séance de trois heures, puis correction sérieuse.
- Semaine 6 : consolidation. Relecture des fiches, reprise des erreurs fréquentes, repos la veille de l''épreuve.

Prévoyez des séances courtes et régulières, par exemple deux heures par jour, plutôt que des nuits blanches. Travaillez en petit groupe une fois par semaine pour les jeux de rôle de vente : c''est la meilleure préparation aux oraux.

## Points clés

- Lisez le règlement des études de votre établissement : crédits, coefficients et compensation y sont fixés.
- Trois matières clés cette année : fondamentaux du marketing, comportement du consommateur, vente et négociation.
- Pour chaque calcul : formule, application, résultat avec unité, interprétation.
- Six semaines suffisent si le travail est régulier et tourné vers l''application.

## Exercices pratiques

- Exercice 1. Citez quatre types d''épreuves que vous pouvez rencontrer en Licence 1 et, pour chacune, une erreur à éviter.
- Exercice 2. Une boutique fictive de cosmétiques de la Médina réalise 54 000 000 FCFA de ventes annuelles sur un marché local estimé à 360 000 000 FCFA. Calculez sa part de marché en valeur et interprétez-la.
- Exercice 3. Rédigez une mini-fiche (cinq lignes maximum) sur la notion de besoin.
- Exercice 4. Cas pratique. Awa, étudiante en Licence 1, révise uniquement en relisant ses cours la nuit précédant chaque examen. Ses notes en exercices chiffrés sont faibles. Diagnostiquez ses erreurs de méthode et proposez-lui trois changements concrets.

## Corrigé

- Exercice 1. Question de cours : éviter la définition approximative sans exemple. QCM : éviter de répondre sans lire chaque proposition en entier. Exercice chiffré : ne pas oublier la formule et l''interprétation. Cas pratique : ne pas proposer d''actions déconnectées du budget et de la cible. Dissertation : ne pas écrire sans problématique ni plan.
- Exercice 2. Part de marché = 54 000 000 / 360 000 000 × 100 = 15 %. La boutique détient près d''un sixième du marché local : c''est un acteur significatif mais pas dominant ; il faut connaître la part des concurrents pour savoir si elle est leader.
- Exercice 3. Exemple : « Le besoin est un sentiment de manque ressenti par une personne (avoir faim, se protéger, être reconnu). Il existe avant le marketing. Le désir est la forme que prend la réponse au besoin selon la culture (manger un thiéboudienne). La demande est un désir accompagné d''un pouvoir d''achat. Le marketing agit surtout sur les désirs et la demande. »
- Exercice 4. Diagnostic : révision tardive, passive (relecture) et sans entraînement aux calculs, plus le manque de sommeil. Propositions : réviser dès six semaines avant l''examen, deux heures par jour ; refaire les exercices de TD sans corrigé ; rédiger des fiches avec formules et exemples ; faire un sujet complet chronométré par semaine ; dormir la veille de l''épreuve.', 'texte', 45, true, 10
from public.courses c where c.slug = 'lic-mkt-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Licence 1 en Marketing et commerce');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Fondamentaux du marketing : l''essentiel pour l''examen', '## Objectifs de la leçon

- Définir le marketing et distinguer besoin, désir et demande.
- Analyser un marché et calculer ses principaux indicateurs.
- Maîtriser la démarche segmentation, ciblage, positionnement.
- Construire un marketing-mix cohérent (4P pour un produit, 7P pour un service).

## 1. Qu''est-ce que le marketing ?

Le marketing est l''ensemble des méthodes par lesquelles une organisation comprend les besoins de ses clients, conçoit une offre qui y répond mieux que la concurrence, la fait connaître et la rend accessible, avec profit. Le marketing ne se limite pas à la publicité : il commence par l''écoute du marché et va jusqu''au service après-vente.

On distingue trois notions souvent confondues :

- Le besoin : sentiment de manque (se nourrir, se déplacer, être reconnu). Il n''est pas créé par l''entreprise.
- Le désir : moyen privilégié de satisfaire un besoin, façonné par la culture et l''environnement. Pour se déplacer à Dakar, l''un désire un taxi, l''autre un bus rapide, un troisième une moto.
- La demande : désir solvable, c''est-à-dire appuyé par un pouvoir d''achat.

L''approche marketing s''oppose à l''approche produit (« je fabrique ce que je sais faire et je cherche des acheteurs »). Elle part du client.

## 2. Le marché et ses indicateurs

Au sens marketing, le marché est l''ensemble des clients actuels et potentiels d''un produit, ainsi que les concurrents et les intermédiaires. On distingue :

- Le marché principal : produits identiques (yaourt).
- Le marché environnant : produits de substitution (lait caillé artisanal, jus).
- Le marché générique : le besoin satisfait (desserts et boissons lactées).
- Le marché support : produits nécessaires à la consommation (réfrigérateurs).

Le marché actuel regroupe les consommateurs du produit. Le marché potentiel ajoute les non-consommateurs relatifs (ils pourraient acheter mais ne le font pas encore). Les non-consommateurs absolus ne consommeront jamais le produit (raisons physiques, religieuses, culturelles).

Formules à connaître :

- Part de marché (PDM) en valeur = chiffre d''affaires de l''entreprise / chiffre d''affaires du marché × 100. On peut aussi la calculer en volume (quantités).
- Part de marché relative = ventes de l''entreprise / ventes du principal concurrent (ou du leader si l''entreprise n''est pas leader). Supérieure à 1, l''entreprise est leader.
- Taux de pénétration = nombre d''acheteurs du produit / population de référence × 100.

Exemple chiffré. Teranga Lait SARL, laiterie fictive de Thiès, vend des yaourts. Le marché régional pèse 2 400 000 000 FCFA par an. Teranga Lait réalise 360 000 000 FCFA ; le leader, 840 000 000 FCFA.

- PDM de Teranga Lait = 360 000 000 / 2 400 000 000 × 100 = 15 %.
- PDM du leader = 840 000 000 / 2 400 000 000 × 100 = 35 %.
- PDM relative de Teranga Lait = 360 000 000 / 840 000 000 = 0,43 : elle vend moins de la moitié du leader.
- Dans sa zone, 18 000 ménages sur 50 000 achètent du yaourt au moins une fois par mois : taux de pénétration = 18 000 / 50 000 × 100 = 36 %. Il reste 64 % de ménages à convaincre, dont une partie de non-consommateurs relatifs.

## 3. Segmentation, ciblage, positionnement

Schéma décrit : trois marches d''escalier. Marche 1 « Segmenter » (découper le marché en groupes homogènes), marche 2 « Cibler » (choisir les groupes à servir), marche 3 « Positionner » (définir l''image voulue dans l''esprit de la cible). Le mix vient ensuite comme mise en œuvre.

Segmenter consiste à découper le marché en sous-ensembles homogènes à l''intérieur, hétérogènes entre eux. Critères usuels :

- Sociodémographiques : âge, sexe, revenu, profession, taille du ménage, milieu urbain ou rural.
- Géographiques : région, ville, quartier.
- Psychographiques : style de vie, valeurs, personnalité.
- Comportementaux : fréquence d''achat, fidélité, avantage recherché, occasion d''usage.

Un bon segment est mesurable, accessible (on peut l''atteindre par la communication et la distribution), suffisamment rentable et réellement différent des autres.

Cibler, c''est choisir. Trois stratégies classiques :

- Marketing indifférencié : une seule offre pour tout le marché (coûts faibles, risque d''être moyen pour tous).
- Marketing différencié : une offre adaptée à chaque segment retenu (meilleure adaptation, coûts plus élevés).
- Marketing concentré : un seul segment (idéal pour une PME, mais dépendance forte).

Positionner, c''est définir la place que l''on veut occuper dans l''esprit des clients par rapport aux concurrents. Un positionnement efficace est simple, crédible, différent et attractif. On l''illustre par une carte perceptuelle : deux axes (par exemple prix bas ou élevé, produit traditionnel ou moderne), sur lesquels on place les marques.

Exemple. Teranga Lait segmente selon l''âge et l''occasion : enfants (goûter scolaire), jeunes actifs (en-cas), familles (dessert). Elle choisit un marketing concentré sur les familles de Thiès et Mbour, avec le positionnement « le yaourt frais de la région, au goût d''autrefois, à prix familial ».

## 4. Le marketing-mix

Le marketing-mix est la combinaison cohérente des décisions opérationnelles. Pour un produit, on retient les 4P :

- Produit : caractéristiques, qualité, gamme, emballage, marque, services associés.
- Prix : niveau, remises, conditions de paiement.
- Place (distribution) : canaux, points de vente, logistique.
- Promotion (communication) : publicité, promotion des ventes, relations publiques, réseaux sociaux, force de vente.

Pour un service, on ajoute trois P :

- Personnel : compétence et attitude des employés en contact.
- Processus : déroulement du service, délais, files d''attente.
- Preuve physique (Physical evidence) : locaux, tenue, documents, tout ce qui rend le service tangible.

La règle d''or est la cohérence : un positionnement « prix familial » est incompatible avec un pot de luxe vendu uniquement en supermarché haut de gamme.

## Points clés

- Besoin, désir, demande : trois niveaux distincts.
- PDM = ventes entreprise / ventes marché ; PDM relative = ventes entreprise / ventes du leader ou du premier concurrent.
- Segmenter, cibler, positionner, puis décliner le mix.
- 4P pour les produits, 7P pour les services, et toujours la cohérence.

## Exercices pratiques

- Exercice 1. Donnez un exemple sénégalais de besoin, de désir et de demande pour le besoin « se désaltérer ».
- Exercice 2. Sur le marché fictif du jus local en bouteille à Saint-Louis (3 600 millions de FCFA), Bissap Ndar réalise 540 millions et le leader 1 260 millions. Calculez la PDM de chacun et la PDM relative de Bissap Ndar.
- Exercice 3. Une ville compte 40 000 ménages ; 10 000 achètent du jus en bouteille. Calculez le taux de pénétration. Que représentent les 30 000 autres ménages ?
- Exercice 4. Proposez trois critères de segmentation pertinents pour un service de livraison de repas à Dakar et justifiez-les.
- Exercice 5. Cas pratique. Kër Coiffure, salon fictif de Ziguinchor, veut se positionner « salon moderne et rapide pour femmes actives ». Proposez son mix 7P.

## Corrigé

- Exercice 1. Besoin : avoir soif. Désir : boire un jus de bissap bien frais plutôt que de l''eau. Demande : acheter une bouteille de bissap à 500 FCFA car on dispose de l''argent.
- Exercice 2. PDM Bissap Ndar = 540 / 3 600 × 100 = 15 %. PDM du leader = 1 260 / 3 600 × 100 = 35 %. PDM relative = 540 / 1 260 = 0,43. Bissap Ndar vend moins de la moitié du leader ; elle est challenger ou suiveur.
- Exercice 3. Taux de pénétration = 10 000 / 40 000 × 100 = 25 %. Les 30 000 autres ménages sont des non-consommateurs : une partie est relative (à convaincre par le prix, la disponibilité, la communication), une partie peut être absolue (raisons de santé, par exemple).
- Exercice 4. Quartier de résidence et de travail (géographique : délais de livraison), revenu (sociodémographique : capacité à payer la livraison), occasion d''usage (comportemental : déjeuner au bureau ou dîner familial). Chaque critère est mesurable et conduit à des offres différentes.
- Exercice 5. Produit : coupes et tresses rapides, soins express, prise de rendez-vous. Prix : grille claire, forfaits mensuels. Place : local près des bureaux, ouvert tôt et après 18 h. Promotion : page sur les réseaux sociaux avec photos avant-après, parrainage. Personnel : coiffeuses formées et ponctuelles. Processus : rendez-vous par message, attente limitée, paiement par mobile money. Preuve physique : salon propre et climatisé, tenue uniforme, carte de fidélité.', 'texte', 60, false, 20
from public.courses c where c.slug = 'lic-mkt-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Fondamentaux du marketing : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comportement du consommateur : l''essentiel pour l''examen', '## Objectifs de la leçon

- Expliquer les motivations et les freins à l''achat.
- Décrire le processus de décision d''achat et les rôles dans l''achat.
- Identifier les facteurs qui influencent le consommateur.
- Mesurer une attitude par un modèle multi-attributs et mesurer la fidélité.

## 1. Besoins, motivations et freins

Le comportement du consommateur étudie la manière dont les individus et les ménages choisissent, achètent, utilisent et abandonnent des produits. Le point de départ est le besoin. La pyramide de Maslow classe les besoins en cinq niveaux : physiologiques, sécurité, appartenance, estime, accomplissement. Elle est utile pour l''examen, mais il faut en connaître la limite : les besoins ne sont pas satisfaits dans un ordre strict.

Les motivations sont les forces qui poussent à acheter. On les classe souvent en trois types :

- Hédonistes : le plaisir (savourer une pâtisserie).
- Oblatives : faire plaisir aux autres (offrir un pagne pour la Tabaski).
- D''autoexpression : affirmer son identité (porter une marque de baskets).

Les freins s''opposent aux motivations : peurs (risque financier, risque pour la santé), inhibitions (gêne sociale), manque d''information. Une bonne action marketing renforce les motivations et lève les freins. Exemple : une mutuelle de santé fictive lève la peur « je paie sans rien recevoir » en affichant des témoignages et un délai de remboursement.

## 2. Le processus de décision d''achat

Schéma décrit : une flèche horizontale en cinq étapes. 1) Reconnaissance du besoin, 2) Recherche d''information, 3) Évaluation des solutions, 4) Décision d''achat, 5) Comportement après l''achat.

- Reconnaissance du besoin : écart entre la situation actuelle et la situation souhaitée (le téléphone est cassé).
- Recherche d''information : sources personnelles (famille, amis), commerciales (vendeurs, publicités), publiques (avis en ligne), expérience.
- Évaluation : comparaison des marques selon des critères (prix, autonomie, qualité de l''appareil photo, service après-vente).
- Décision : choix de la marque, du point de vente, du moment, du mode de paiement. L''intention peut être modifiée par une rupture de stock ou l''avis d''un proche.
- Après l''achat : satisfaction ou dissonance cognitive (doute après un achat important). Le client satisfait rachète et recommande ; le mécontent se plaint ou en parle autour de lui.

L''intensité du processus dépend de l''implication. Un achat de sachet d''eau est routinier, faiblement impliquant. L''achat d''une moto ou d''une parcelle est fortement impliquant : longue recherche, nombreuses comparaisons.

Les rôles dans l''achat : initiateur (l''enfant qui réclame), influenceur (l''ami qui conseille), décideur, acheteur, utilisateur. Dans un ménage sénégalais, ces rôles sont souvent tenus par des personnes différentes : le marketing doit savoir à qui parler.

## 3. Les facteurs d''influence

- Facteurs culturels : culture, sous-cultures (ethniques, religieuses, régionales), classes sociales. Les fêtes religieuses et familiales rythment la consommation (Tabaski, Korité, Magal, baptêmes, mariages).
- Facteurs sociaux : groupes de référence (amis, tontines, associations), leaders d''opinion, famille, statut.
- Facteurs personnels : âge, cycle de vie, profession, revenu, style de vie.
- Facteurs psychologiques : motivation, perception, apprentissage, croyances et attitudes.

## 4. Mesurer une attitude : le modèle multi-attributs

Une attitude est une évaluation durable, favorable ou défavorable, d''un objet. Le modèle multi-attributs compensatoire (inspiré des travaux de Fishbein) calcule un score global : Score = somme des (poids du critère × note de la marque sur ce critère). Un point faible peut être compensé par un point fort.

Exemple. Fatou, étudiante à Dakar, hésite entre trois téléphones fictifs A, B et C. Elle accorde les poids suivants : prix 0,4 ; autonomie 0,3 ; appareil photo 0,2 ; service après-vente 0,1 (total 1). Elle note chaque téléphone sur 10.

- A : prix 8, autonomie 6, photo 5, service 7. Score = 0,4 × 8 + 0,3 × 6 + 0,2 × 5 + 0,1 × 7 = 3,2 + 1,8 + 1,0 + 0,7 = 6,7.
- B : prix 5, autonomie 8, photo 8, service 6. Score = 2,0 + 2,4 + 1,6 + 0,6 = 6,6.
- C : prix 7, autonomie 7, photo 6, service 4. Score = 2,8 + 2,1 + 1,2 + 0,4 = 6,5.

Fatou devrait préférer A, mais l''écart est faible : une promotion sur B ou une meilleure garantie sur C peut renverser le choix. Pour le vendeur de B, deux leviers : baisser le prix ou convaincre Fatou que l''appareil photo compte plus (modifier les poids).

D''autres modèles sont non compensatoires : par exemple, le modèle conjonctif élimine toute marque qui n''atteint pas un seuil minimal sur un critère (« pas en dessous de 6 en autonomie »).

## 5. Satisfaction et fidélité

La satisfaction résulte de la comparaison entre la performance perçue et les attentes. La fidélité est la répétition d''achat accompagnée d''une attitude favorable. On distingue la fidélité vraie de l''inertie (on rachète faute d''alternative).

Indicateur simple : taux de réachat = clients qui rachètent sur la période / clients de la période précédente × 100. Exemple : sur 1 200 clients d''une boulangerie fictive de Kaolack en janvier, 780 reviennent en février. Taux de réachat = 780 / 1 200 × 100 = 65 %.

## Points clés

- Motivations (hédonistes, oblatives, d''autoexpression) contre freins (peurs, inhibitions).
- Cinq étapes du processus d''achat ; son intensité dépend de l''implication.
- Facteurs culturels, sociaux, personnels, psychologiques.
- Score multi-attributs = somme des poids × notes ; vérifiez que les poids totalisent 1.

## Exercices pratiques

- Exercice 1. Classez chaque motivation : offrir un mouton à sa mère ; s''acheter une glace par grosse chaleur ; porter une tenue à la mode pour un concert.
- Exercice 2. Décrivez les cinq étapes du processus d''achat d''une moto par un livreur de Touba.
- Exercice 3. Identifiez les rôles d''achat dans la situation suivante : un adolescent voit une publicité de céréales, sa tante dit qu''elles sont trop sucrées, son père donne l''argent, sa mère fait les courses, toute la famille en mange.
- Exercice 4. Deux réfrigérateurs fictifs X et Y. Poids : prix 0,5 ; consommation électrique 0,3 ; garantie 0,2. Notes de X : 6, 9, 7. Notes de Y : 8, 6, 6. Calculez les scores et conclure.
- Exercice 5. Un salon de thé fictif de Saint-Louis avait 600 clients en mars ; 390 sont revenus en avril. Calculez le taux de réachat. Proposez deux actions pour l''améliorer.
- Exercice 6. Cas pratique. Une marque fictive de couches pour bébés lancée à Dakar se vend mal malgré un prix inférieur à la concurrence. Une enquête révèle que les mères craignent une qualité médiocre. Analysez le frein et proposez trois actions.

## Corrigé

- Exercice 1. Mouton offert : oblative. Glace : hédoniste. Tenue à la mode : autoexpression.
- Exercice 2. Besoin : sa vieille moto tombe en panne et il perd des courses. Information : il interroge d''autres livreurs, visite des revendeurs, regarde des annonces. Évaluation : prix, consommation, robustesse, pièces disponibles, crédit possible. Décision : il choisit un modèle et un vendeur qui accepte un paiement échelonné. Après l''achat : s''il est satisfait, il recommande le vendeur ; sinon dissonance et bouche-à-oreille négatif.
- Exercice 3. Initiateur : l''adolescent. Influenceur : la tante. Décideur et payeur : le père. Acheteur : la mère. Utilisateurs : toute la famille.
- Exercice 4. X = 0,5 × 6 + 0,3 × 9 + 0,2 × 7 = 3,0 + 2,7 + 1,4 = 7,1. Y = 0,5 × 8 + 0,3 × 6 + 0,2 × 6 = 4,0 + 1,8 + 1,2 = 7,0. X est préféré de peu : sa faible consommation compense son prix plus élevé. Le vendeur de X doit mettre en avant les économies d''électricité.
- Exercice 5. Taux de réachat = 390 / 600 × 100 = 65 %. Actions : carte de fidélité (dixième thé offert), accueil personnalisé et nouveautés régulières annoncées sur les réseaux sociaux.
- Exercice 6. Le frein est une peur liée au risque perçu (santé et confort du bébé) ; le prix bas renforce même le doute (« trop bon marché pour être bon »). Actions : échantillons gratuits en pharmacie et en maternité, témoignages de mères et avis de sages-femmes, garantie « satisfaite ou remboursée ». On peut aussi revoir le prix pour qu''il signale mieux la qualité.', 'texte', 60, false, 30
from public.courses c where c.slug = 'lic-mkt-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comportement du consommateur : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Techniques de vente et négociation commerciale : l''essentiel pour l''examen', '## Objectifs de la leçon

- Connaître les étapes d''un entretien de vente et les techniques associées.
- Découvrir les besoins avec la méthode SONCAS et argumenter avec la méthode CAP.
- Traiter les objections et conclure.
- Préparer une négociation et mesurer l''impact chiffré d''une remise.

## 1. La vente : définitions

La vente est l''acte par lequel un vendeur aide un client à prendre une décision d''achat satisfaisante pour les deux parties. On distingue la vente en magasin, la vente terrain, la vente à distance et la vente entre entreprises (B to B).

La négociation commerciale est une discussion entre parties aux intérêts en partie divergents, qui cherchent un accord sur plusieurs variables : prix, quantités, délais, conditions de paiement, services.

## 2. Les étapes de l''entretien de vente

Schéma décrit : une échelle de sept barreaux, du bas vers le haut. Préparation, prise de contact, découverte, argumentation, traitement des objections, conclusion, prise de congé et suivi.

- Préparation : connaître son produit, ses concurrents, le client (historique d''achats), fixer un objectif et préparer ses outils (catalogue, échantillons, tarifs).
- Prise de contact : la règle des quatre vingt (vingt premières secondes, vingt premiers mots, vingt centimètres du visage, vingt premiers gestes) rappelle l''importance de la première impression. Salutations respectueuses, sourire, présentation.
- Découverte : questionner pour comprendre la situation, les besoins et les motivations. On alterne questions ouvertes (« Comment utilisez-vous… ? »), fermées (« Est-ce pour la maison ? ») et de contrôle. On termine par une reformulation.
- Argumentation : présenter l''offre en partant des besoins exprimés.
- Traitement des objections.
- Conclusion : obtenir l''engagement.
- Prise de congé et suivi : remercier, rassurer, planifier la relance.

## 3. Découvrir avec SONCAS

La grille SONCAS classe les motivations d''achat du client :

- Sécurité : peur du risque (garantie, solidité, marque connue).
- Orgueil : besoin d''être valorisé (produit exclusif, prestige).
- Nouveauté : goût du changement et de l''innovation.
- Confort : recherche de facilité et de bien-être.
- Argent : économie, rapport qualité-prix.
- Sympathie : relation avec le vendeur, attachement affectif.

Pendant la découverte, le vendeur repère les deux ou trois motivations dominantes et construit son argumentation dessus.

## 4. Argumenter avec CAP

La méthode CAP (Caractéristique, Avantage, Preuve), appelée aussi CAB (B pour bénéfice), transforme une caractéristique technique en bénéfice pour le client :

- Caractéristique : « Ce congélateur a une isolation renforcée. »
- Avantage : « Il garde le froid plus de vingt heures en cas de coupure d''électricité. »
- Preuve : « Voici le résultat du test du fabricant, et le témoignage d''une poissonnière de Mbour. »

Un argument sans lien avec les motivations du client est inutile.

## 5. Traiter les objections et conclure

Une objection n''est pas un refus : c''est souvent une demande d''information. Méthode générale : écouter sans interrompre, reformuler, répondre, vérifier. Techniques classiques :

- Oui, mais : on reconnaît une part de vérité puis on nuance (« Oui, le prix est plus élevé, mais la consommation est deux fois plus faible »).
- Boomerang : on retourne l''objection en argument (« C''est justement parce que vous êtes petit commerçant que ce crédit fournisseur vous aide »).
- Questionnement : « Trop cher par rapport à quoi ? »

La conclusion se fait au bon moment, quand le client envoie des signaux d''achat (questions sur la livraison, le paiement). Techniques : l''alternative (« Livraison mardi ou jeudi ? »), le résumé des avantages, la conclusion implicite (rédiger le bon de commande).

## 6. Préparer une négociation

- Objectifs : position d''ouverture, objectif réaliste, point de rupture (limite au-delà de laquelle on refuse).
- Meilleure solution de rechange (MESORE, en anglais BATNA) : ce que l''on fera si l''accord échoue. Plus elle est bonne, plus on est fort.
- Zone d''accord possible : intervalle entre le prix maximal de l''acheteur et le prix minimal du vendeur.
- Monnaie d''échange : concessions peu coûteuses pour soi mais précieuses pour l''autre (délai de paiement, livraison gratuite, formation).
- Règle : ne jamais concéder sans contrepartie (« Si je baisse le prix, vous commandez quel volume ? »).

Exemple. Sénégal Froid Services, entreprise fictive de Dakar, vend une chambre froide. Son prix plancher est 4 200 000 FCFA. L''acheteur, une coopérative de pêcheurs, est prêt à payer au plus 4 800 000 FCFA. Zone d''accord = 4 800 000 − 4 200 000 = 600 000 FCFA. Tout prix entre ces deux bornes est acceptable pour les deux ; la négociation détermine qui capte la plus grande part de ces 600 000 FCFA.

## 7. Calculs commerciaux

Impact d''une remise. Un ventilateur est vendu 10 000 FCFA HT et coûte 7 000 FCFA. Marge unitaire = 3 000 FCFA. Le vendeur en vend 300 par mois : marge totale = 900 000 FCFA. S''il accorde une remise de 10 %, le prix devient 9 000 FCFA et la marge unitaire 2 000 FCFA. Pour garder 900 000 FCFA de marge, il faut vendre 900 000 / 2 000 = 450 unités, soit 50 % de ventes en plus. Une petite remise exige souvent une forte hausse des volumes.

Ratios d''activité. Un commercial fait 80 visites, remet 30 devis et signe 12 ventes pour un chiffre d''affaires de 5 400 000 FCFA. Taux de transformation des visites = 12 / 80 × 100 = 15 %. Taux de transformation des devis = 12 / 30 × 100 = 40 %. Panier moyen = 5 400 000 / 12 = 450 000 FCFA.

## Points clés

- Sept étapes : préparation, contact, découverte, argumentation, objections, conclusion, suivi.
- SONCAS pour découvrir, CAP pour argumenter.
- Une objection est une demande d''information ; on écoute, reformule, répond, vérifie.
- En négociation : MESORE, zone d''accord, jamais de concession sans contrepartie.

## Exercices pratiques

- Exercice 1. Associez une motivation SONCAS à chaque phrase : « Je ne veux pas de panne » ; « Je veux le dernier modèle » ; « Combien je vais économiser ? »
- Exercice 2. Rédigez un argument CAP pour un panneau solaire vendu à un boutiquier de Kolda.
- Exercice 3. Un fournisseur fictif de climatiseurs vend 25 000 FCFA HT un kit d''installation qui lui coûte 18 000 FCFA. Il accorde une remise de 5 %. Calculez la nouvelle marge unitaire et la hausse des ventes nécessaire pour maintenir la marge totale.
- Exercice 4. Un acheteur est prêt à payer au plus 2 750 000 FCFA ; le vendeur ne descendra pas sous 2 500 000 FCFA. Calculez la zone d''accord. Que se passe-t-il si le prix plancher du vendeur monte à 2 900 000 FCFA ?
- Exercice 5. Cas pratique. Baobab Équipements, PME fictive de Thiès, vend des moulins à mil. Une association de femmes transformatrices veut acheter trois moulins mais exige 15 % de remise. Préparez la négociation : objectifs, MESORE, monnaies d''échange, contreparties à demander.

## Corrigé

- Exercice 1. Sécurité ; Nouveauté ; Argent.
- Exercice 2. Caractéristique : panneau de 200 watts avec batterie. Avantage : la boutique reste éclairée et le réfrigérateur fonctionne pendant les coupures, donc moins de pertes. Preuve : démonstration sur place et témoignage d''un commerçant voisin équipé.
- Exercice 3. Marge initiale = 25 000 − 18 000 = 7 000 FCFA. Prix remisé = 25 000 × 0,95 = 23 750 FCFA ; nouvelle marge = 5 750 FCFA. Volume nécessaire = 7 000 / 5 750 = 1,217 fois le volume initial, soit environ 21,7 % de ventes en plus.
- Exercice 4. Zone d''accord = 2 750 000 − 2 500 000 = 250 000 FCFA. Si le plancher monte à 2 900 000 FCFA, il dépasse le maximum de l''acheteur : il n''y a plus de zone d''accord. Il faut alors élargir la négociation (autre modèle, paiement échelonné, services) ou constater l''échec.
- Exercice 5. Objectifs : ouverture à 3 % de remise, objectif 6 %, point de rupture 9 %. MESORE de l''entreprise : vendre ces moulins à d''autres clients en saison de récolte ; MESORE de l''association : un concurrent moins cher mais sans service. Monnaies d''échange : formation des utilisatrices, livraison et installation, pièces d''usure offertes, paiement en deux fois. Contreparties : commande ferme de trois moulins, acompte, témoignage et recommandation auprès d''autres groupements.', 'texte', 60, false, 40
from public.courses c where c.slug = 'lic-mkt-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Techniques de vente et négociation commerciale : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Licence 1 en Marketing et commerce (corrigé)', '## Présentation

Ce sujet d''entraînement n''est pas un sujet officiel. Il reproduit le format fréquent d''un examen semestriel de trois heures combinant plusieurs matières. Le barème est indicatif, non officiel. Calculatrice non programmable autorisée.

## Le sujet

Dossier 1 – Fondamentaux du marketing (7 points)

Salam Biscuits SA, entreprise fictive de Rufisque, fabrique des biscuits. Le marché national des biscuits est estimé à 12 000 millions de FCFA. Salam Biscuits réalise 1 800 millions ; son principal concurrent, leader, 4 200 millions.

- 1.1 Calculez la part de marché de Salam Biscuits, celle du leader et la part de marché relative de Salam Biscuits. (2 points)
- 1.2 L''entreprise veut lancer un biscuit enrichi en céréales locales pour les enfants scolarisés. Proposez deux critères de segmentation et une stratégie de ciblage. (2 points)
- 1.3 Proposez un positionnement et un mix 4P cohérent. (3 points)

Dossier 2 – Comportement du consommateur (6 points)

Une enquête auprès de mères de famille donne les poids des critères d''achat d''un biscuit : prix 0,3 ; valeur nutritive 0,5 ; goût 0,2. Notes sur 10 : biscuit Salam (prix 7, nutrition 8, goût 6) ; biscuit concurrent (prix 8, nutrition 5, goût 9).

- 2.1 Calculez le score d''attitude de chaque biscuit et concluez. (3 points)
- 2.2 Identifiez les rôles d''achat lorsque l''enfant réclame le biscuit vu à la télévision. (1 point)
- 2.3 Citez deux freins possibles à l''achat du nouveau biscuit et une action pour chacun. (2 points)

Dossier 3 – Vente et négociation (7 points)

Le commercial de Salam Biscuits visite des grossistes. Le paquet est vendu 1 200 FCFA HT aux grossistes pour un coût de 900 FCFA. Un grossiste de Kaolack commande habituellement 2 000 paquets par mois et demande une remise de 5 %.

- 3.1 Calculez la marge mensuelle actuelle réalisée sur ce grossiste et celle après remise à volume constant. (2 points)
- 3.2 Combien de paquets faut-il vendre pour garder la même marge ? (1 point)
- 3.3 Proposez trois contreparties à demander au grossiste. (2 points)
- 3.4 Rédigez une réponse à l''objection « Votre concurrent me fait de meilleurs prix ». (2 points)

## Corrigé détaillé

Dossier 1

- 1.1 PDM Salam = 1 800 / 12 000 × 100 = 15 %. PDM leader = 4 200 / 12 000 × 100 = 35 %. PDM relative = 1 800 / 4 200 = 0,43. Salam Biscuits est un challenger qui vend moins de la moitié du leader.
- 1.2 Critères : âge des enfants (sociodémographique) et avantage recherché par les parents (comportemental : nutrition contre plaisir). Stratégie : marketing concentré sur les parents soucieux de nutrition d''enfants de 6 à 12 ans en zone urbaine, segment accessible par les écoles et les boutiques de quartier.
- 1.3 Positionnement : « le biscuit qui nourrit vraiment, fait avec nos céréales ». Produit : biscuits au mil et au fonio, petits paquets individuels pour le goûter, valeurs nutritionnelles affichées. Prix : petit format accessible, proche des biscuits ordinaires. Distribution : boutiques de quartier, abords des écoles via les grossistes, supermarchés. Communication : radio locale et réseaux sociaux à destination des mères, dégustations dans les écoles avec l''accord des directions.

Dossier 2

- 2.1 Salam = 0,3 × 7 + 0,5 × 8 + 0,2 × 6 = 2,1 + 4,0 + 1,2 = 7,3. Concurrent = 0,3 × 8 + 0,5 × 5 + 0,2 × 9 = 2,4 + 2,5 + 1,8 = 6,7. Salam est préféré grâce au critère le plus important (nutrition) : il doit communiquer sur ce point.
- 2.2 Initiateur : l''enfant. Décideur et acheteuse : la mère (souvent). Utilisateur : l''enfant. Influenceurs possibles : publicité, enseignants, autres parents.
- 2.3 Frein 1 : doute sur le goût (« les céréales, les enfants n''aiment pas »), levé par des dégustations gratuites. Frein 2 : méfiance envers une marque nouvelle, levée par l''affichage d''un contrôle qualité et des témoignages de parents.

Dossier 3

- 3.1 Marge unitaire = 1 200 − 900 = 300 FCFA ; marge mensuelle = 300 × 2 000 = 600 000 FCFA. Après remise : prix = 1 200 × 0,95 = 1 140 FCFA ; marge unitaire = 240 FCFA ; marge mensuelle = 240 × 2 000 = 480 000 FCFA, soit 120 000 FCFA de moins.
- 3.2 Quantité nécessaire = 600 000 / 240 = 2 500 paquets, soit 25 % de plus.
- 3.3 Contreparties : engagement de volume (au moins 2 500 paquets par mois), mise en avant des produits Salam dans le magasin, paiement comptant ou à délai réduit.
- 3.4 « Je comprends que le prix compte pour vous. Pour comparer, parlons-nous du même produit et des mêmes conditions de livraison ? Nos biscuits tournent vite grâce à la demande des écoles, nous livrons chaque semaine sans minimum, et nous reprenons les paquets abîmés. Au final, c''est votre marge par mètre de rayon qui compte. »

## Exercices pratiques

- Exercice 1. Vrai ou faux : « La part de marché relative d''un leader est toujours supérieure à 1. »
- Exercice 2. Donnez la différence entre marketing différencié et marketing concentré en une phrase.
- Exercice 3. Un vendeur réalise 9 ventes sur 60 visites. Calculez son taux de transformation.
- Exercice 4. Citez les trois P ajoutés pour les services.
- Exercice 5. Qu''est-ce que la dissonance cognitive ?

## Corrigé

- Exercice 1. Vrai si elle est calculée par rapport au premier concurrent : le leader vend plus que lui, donc le rapport dépasse 1 (sauf égalité parfaite, où il vaut 1).
- Exercice 2. Le différencié propose une offre adaptée à chacun de plusieurs segments ; le concentré se consacre à un seul segment.
- Exercice 3. 9 / 60 × 100 = 15 %.
- Exercice 4. Personnel, processus, preuve physique.
- Exercice 5. C''est le doute ou l''inconfort ressenti après un achat important, quand le client se demande s''il a fait le bon choix ; le vendeur le réduit par le suivi, la garantie et la confirmation des avantages.', 'texte', 60, false, 50
from public.courses c where c.slug = 'lic-mkt-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Licence 1 en Marketing et commerce (corrigé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Fondamentaux du marketing', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 1 en marketing, commerce, gestion.
- Objectifs : distinguer besoin, désir et demande ; analyser un marché et calculer parts de marché et taux de pénétration ; mener une démarche segmentation-ciblage-positionnement ; construire un mix 4P ou 7P cohérent.
- Matériel : tableau ou diaporama, carte perceptuelle vierge, calculatrice.
- Prérequis : leçon « Fondamentaux du marketing : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour à toutes et à tous, et bienvenue dans ce cours vidéo sur les fondamentaux du marketing. Dans une heure et demie, vous serez capables de répondre aux trois grandes questions que pose tout examen de première année : qu''est-ce que le marketing, comment analyser un marché, et comment construire une offre cohérente pour une cible précise. Notre fil rouge sera Teranga Lait, une laiterie fictive de Thiès qui fabrique des yaourts.

Visuel : diapositive titre et plan en six parties : définitions, marché, indicateurs, segmentation-ciblage-positionnement, mix, exercices.

## 05:00 – 15:00 · Le marketing n''est pas la publicité

Commençons par une question que je vous pose souvent en amphithéâtre : si je vous dis « marketing », à quoi pensez-vous ? La plupart répondent « publicité ». C''est une partie, mais une petite partie. Le marketing, c''est d''abord écouter le marché, comprendre ce dont les clients ont besoin, concevoir une offre adaptée, fixer un prix, la rendre disponible, puis la faire connaître. La publicité arrive à la fin.

Prenons trois mots. Le besoin, c''est le manque : j''ai faim. Le désir, c''est la forme culturelle de la réponse : j''ai envie d''un yaourt frais, d''un thiakry ou d''un pain au chocolat. La demande, c''est le désir solvable : j''ai 300 francs en poche et j''achète le yaourt. Notez bien : le marketing ne crée pas le besoin de manger, mais il oriente fortement les désirs et stimule la demande. C''est une excellente problématique de dissertation.

Question à poser : donnez un exemple où le désir existe mais pas la demande. Réponse attendue : un étudiant qui rêve d''un ordinateur récent mais n''a pas les moyens de l''acheter.

## 15:00 – 25:00 · Le marché et ses niveaux

Le marché, pour un marketeur, ce n''est pas seulement un lieu comme Sandaga ou Tilène. C''est l''ensemble des clients actuels et potentiels, des concurrents et des intermédiaires. Pour Teranga Lait, le marché principal, ce sont les yaourts. Le marché environnant, ce sont les substituts : lait caillé vendu en sachet, jus locaux. Le marché générique, c''est le besoin de dessert et de boisson lactée. Le marché support, ce sont les réfrigérateurs : sans froid, pas de yaourt.

Visuel : quatre cercles concentriques, avec au centre le marché principal.

Ensuite, les consommateurs. Les consommateurs actuels achètent déjà. Les non-consommateurs relatifs pourraient acheter : ils ne le font pas par manque d''information, de moyens ou de disponibilité du produit. Les non-consommateurs absolus n''achèteront jamais, par exemple les personnes allergiques au lait. Marché potentiel = consommateurs actuels + non-consommateurs relatifs. Retenez cette formule, elle tombe souvent.

## 25:00 – 40:00 · Les indicateurs : exercices commentés

Passons aux calculs. Le marché régional du yaourt pèse 2 400 millions de francs. Teranga Lait fait 360 millions. Le leader fait 840 millions.

Part de marché de Teranga Lait : 360 divisé par 2 400, multiplié par 100, égale 15 %. Part du leader : 840 sur 2 400, soit 35 %. Part de marché relative de Teranga Lait : 360 divisé par 840, égale 0,43. Attention à l''erreur classique : la part relative n''est pas en pourcentage, c''est un rapport. Inférieure à 1, l''entreprise n''est pas leader.

Et le leader, quelle est sa part relative ? On la calcule par rapport à son premier concurrent. Si le deuxième acteur du marché est Teranga Lait, elle vaut 840 sur 360, soit 2,33. Le leader vend plus de deux fois plus que son suivant.

Taux de pénétration : sur 50 000 ménages de la zone, 18 000 achètent du yaourt au moins une fois par mois. 18 000 sur 50 000 égale 36 %. Interprétation : il reste un réservoir de 32 000 ménages, dont une partie de non-consommateurs relatifs à conquérir.

Exercice à faire en pause courte : le marché du jus local à Saint-Louis pèse 3 600 millions ; Bissap Ndar fait 540 millions, le leader 1 260 millions. Calculez. Correction : 15 %, 35 %, et 0,43. Vous remarquez que ce sont les mêmes proportions que Teranga Lait : c''est volontaire, pour vérifier que vous maîtrisez la méthode et non les chiffres.

## 40:00 – 45:00 · Quiz interactif

Petit quiz, mettez la vidéo en pause et répondez.

- Question 1 : la part de marché relative se calcule par rapport à quoi ? Réponse : par rapport aux ventes du leader, ou du premier concurrent si l''on est soi-même leader.
- Question 2 : un ménage qui ne boit pas de lait pour raison médicale est-il un non-consommateur relatif ou absolu ? Réponse : absolu.
- Question 3 : vrai ou faux, le marketing commence par la publicité ? Réponse : faux, il commence par l''étude des besoins.

## 45:00 – 1:00:00 · Segmenter, cibler, positionner

Visuel : trois marches d''escalier avec les mots segmenter, cibler, positionner.

Segmenter, c''est découper le marché en groupes homogènes. Teranga Lait peut segmenter par âge : les enfants pour le goûter, les jeunes actifs pour un en-cas, les familles pour le dessert. Elle peut aussi segmenter par zone géographique, par revenu, ou par occasion d''usage, comme les cérémonies familiales où l''on sert beaucoup de desserts lactés. Un segment utile est mesurable, accessible, rentable et différent des autres.

Cibler, c''est choisir. Trois stratégies. Indifférenciée : un seul yaourt pour tout le monde. Différenciée : un yaourt à boire pour les jeunes, un pot familial pour les mères, un petit format pour les enfants. Concentrée : uniquement les familles de Thiès et de Mbour. Pour une PME comme Teranga Lait, la stratégie concentrée est souvent la plus raisonnable : budget limité, connaissance fine du client, réputation de spécialiste.

Positionner, c''est décider de l''image que l''on veut avoir dans l''esprit de la cible face aux concurrents. Dessinons une carte perceptuelle : axe horizontal « industriel » à gauche, « traditionnel » à droite ; axe vertical « prix bas » en bas, « prix élevé » en haut. Les grandes marques importées sont en haut à gauche. Teranga Lait se place en bas à droite : traditionnel et accessible. Son positionnement : « le yaourt frais de la région, au goût d''autrefois, à prix familial ». Simple, crédible, différent, attractif.

Question à poser : quel risque si Teranga Lait se positionne aussi « luxe » ? Réponse : incohérence avec sa cible familiale et perte de crédibilité.

## 1:00:00 – 1:15:00 · Le mix : du 4P au 7P

Le mix, c''est la traduction concrète du positionnement. Pour un produit, quatre P.

Produit : yaourt nature et sucré, au lait local, pot de 500 grammes pour la famille, emballage aux couleurs régionales. Prix : légèrement inférieur aux marques importées, pour coller au mot « familial ». Place : boutiques de quartier équipées de réfrigérateurs, supérettes, marchés hebdomadaires, avec une tournée de livraison réfrigérée. Promotion : radio communautaire en wolof et en sérère, dégustations les jours de marché, page sur les réseaux sociaux avec recettes.

Pour un service, trois P supplémentaires. Imaginez que Teranga Lait ouvre un bar laitier à Thiès. Personnel : serveurs accueillants et formés à l''hygiène. Processus : commande rapide, paiement par mobile money, temps d''attente court. Preuve physique : salle propre, vitrine réfrigérée visible, tenue des serveurs. Le client d''un service ne peut pas toucher le service avant de l''acheter : ces éléments le rassurent.

La règle d''or, je la répète : cohérence. Chaque P doit servir le même positionnement.

## 1:15:00 – 1:25:00 · Correction commentée d''un cas

Cas : Kër Coiffure, salon fictif de Ziguinchor, veut cibler les femmes actives. Je vous donne la correction en direct. Positionnement : « salon moderne et rapide ». Produit : coupes, tresses express, soins rapides. Prix : forfaits clairs affichés. Place : près des bureaux, ouvert tôt et après la journée de travail. Promotion : réseaux sociaux avec photos avant-après. Personnel : coiffeuses ponctuelles. Processus : rendez-vous par message. Preuve physique : salon climatisé et carte de fidélité. Ce qui fait gagner des points : la justification de chaque P par rapport à la cible « femmes actives », qui manquent de temps.

## 1:25:00 – 1:30:00 · Synthèse et évaluation finale

Retenez : besoin, désir, demande ; PDM et PDM relative ; segmenter, cibler, positionner ; 4P ou 7P cohérents. Voici cinq questions d''évaluation.

- Question 1 : définissez la demande. Réponse : un désir accompagné du pouvoir d''achat nécessaire.
- Question 2 : une entreprise vend 600 millions sur un marché de 4 000 millions. Sa part de marché ? Réponse : 15 %.
- Question 3 : citez quatre critères de segmentation de familles différentes. Réponse : âge, région, style de vie, fréquence d''achat.
- Question 4 : quels sont les trois P ajoutés pour les services ? Réponse : personnel, processus, preuve physique.
- Question 5 : citez deux qualités d''un bon positionnement. Réponse : simple et crédible (ou différent, attractif).

Merci pour votre attention, et rendez-vous dans le prochain cours vidéo.', 'video', 90, false, 60
from public.courses c where c.slug = 'lic-mkt-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Fondamentaux du marketing');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Comportement du consommateur', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 1 en marketing, commerce, gestion.
- Objectifs : expliquer motivations et freins ; décrire le processus d''achat et les rôles d''achat ; analyser les facteurs d''influence ; calculer un score d''attitude multi-attributs et un taux de réachat.
- Matériel : tableau ou diaporama, grille vierge de score multi-attributs, calculatrice.
- Prérequis : leçon « Comportement du consommateur : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour et bienvenue. Aujourd''hui, nous entrons dans la tête du client. Pourquoi achète-t-il ? Comment décide-t-il ? Qui l''influence ? Et comment mesurer son attitude envers une marque ? À la fin de la séance, vous saurez traiter les questions de cours et les exercices chiffrés de cette matière. Notre personnage fil rouge est Fatou, étudiante à Dakar, qui doit remplacer son téléphone.

Visuel : diapositive titre, photo d''illustration d''une rue commerçante, plan en cinq parties.

## 05:00 – 15:00 · Besoins et motivations

Commençons par Maslow. Sa pyramide compte cinq étages : besoins physiologiques, sécurité, appartenance, estime, accomplissement. Elle sert à classer les besoins, mais attention à sa limite, que les correcteurs aiment voir : les gens ne montent pas les étages dans l''ordre. On voit tous des personnes aux revenus modestes acheter un bel habit pour une cérémonie, besoin d''estime et d''appartenance, avant d''autres dépenses de base. C''est rationnel socialement.

Ensuite, les motivations. Trois familles. Hédonistes : le plaisir pour soi, comme une glace à la plage de Ngor. Oblatives : faire plaisir aux autres, comme offrir un boubou à son père pour la Korité. D''autoexpression : montrer qui l''on est, par exemple porter les baskets que portent les artistes que l''on admire.

Face aux motivations, il y a les freins : peurs (risque financier, risque de santé, risque social), inhibitions (gêne de demander un produit intime) et manque d''information. Le rôle du marketing est d''augmenter les motivations et de réduire les freins.

Question à poser : quel frein principal pour l''achat d''un produit financier comme une assurance ? Réponse : la peur de payer sans rien recevoir, donc un manque de confiance.

Comment lever ce frein ? Prenons une mutuelle de santé fictive de Kaolack. Elle peut afficher des témoignages d''adhérents remboursés, publier ses délais de remboursement, et faire présenter l''offre par une personne respectée dans le quartier, par exemple la présidente d''une association de femmes. Chaque action répond directement à la peur identifiée. Dans vos copies, faites toujours ce lien explicite entre le frein et l''action : c''est ce que le correcteur cherche.

## 15:00 – 30:00 · Le processus de décision d''achat

Visuel : flèche en cinq étapes.

Suivons Fatou. Étape 1, la reconnaissance du besoin : son téléphone tombe et l''écran se casse. Étape 2, la recherche d''information : elle demande à sa cousine, regarde des vidéos de tests, passe dans les boutiques du centre-ville. Étape 3, l''évaluation : elle compare le prix, l''autonomie, l''appareil photo, le service après-vente. Étape 4, la décision : choix du modèle, mais aussi du vendeur, du moment et du mode de paiement. Étape 5, l''après-achat : si le téléphone tient ses promesses, elle sera satisfaite et le recommandera ; sinon, elle ressentira une dissonance cognitive, ce doute désagréable qui suit un achat important.

Ce processus est long pour un achat impliquant, comme un téléphone, une moto ou un terrain. Il est très court pour un achat routinier comme du pain ou un sachet d''eau. Retenez le lien : plus l''implication est forte, plus la recherche d''information est longue.

Les rôles d''achat maintenant : initiateur, influenceur, décideur, acheteur, utilisateur. Dans beaucoup de familles, ce ne sont pas les mêmes personnes. Un vendeur de fournitures scolaires doit séduire l''enfant qui réclame, rassurer la mère qui achète, et convaincre le père qui finance. Bien identifier les rôles, c''est savoir à qui parler.

## 30:00 – 40:00 · Les facteurs d''influence

Quatre groupes de facteurs. Culturels : la culture, les sous-cultures religieuses et régionales, les classes sociales. Au Sénégal, les grands moments religieux et familiaux font varier la demande de façon très nette : moutons, tissus, denrées alimentaires, transport. Sociaux : la famille, les groupes de référence comme les tontines et les associations, les leaders d''opinion. Personnels : âge, cycle de vie, revenu, profession. Psychologiques : motivation, perception, apprentissage, croyances et attitudes.

Exemple d''application : une marque fictive de riz parfumé local veut se développer. Facteur culturel : le riz est au cœur du repas familial, donc la qualité gustative prime. Facteur social : les femmes échangent des avis lors des tontines. Facteur personnel : les familles nombreuses préfèrent les grands sacs. Facteur psychologique : certains associent encore « local » à « moins bon ». Chaque facteur suggère une action : dégustations, sacs de différentes tailles, communication sur la qualité.

Insistez dans vos copies sur le bouche-à-oreille. Dans un environnement où la confiance passe par les relations, l''avis d''un proche vaut souvent plus qu''une publicité. Aujourd''hui, il circule aussi par les groupes de messagerie et les vidéos courtes.

## 40:00 – 45:00 · Quiz interactif

Mettez en pause et répondez.

- Question 1 : offrir un cadeau à sa mère, c''est quelle motivation ? Réponse : oblative.
- Question 2 : à quelle étape du processus apparaît la dissonance cognitive ? Réponse : après l''achat.
- Question 3 : un achat de pain quotidien est-il fortement impliquant ? Réponse : non, il est routinier.

## 45:00 – 1:05:00 · Le score multi-attributs : exercice commenté

Visuel : tableau à quatre lignes (critères) et trois colonnes (téléphones A, B, C), plus une colonne de poids.

L''attitude est une évaluation durable d''un objet. Pour la mesurer, on utilise un modèle multi-attributs compensatoire. Le score global est la somme des poids multipliés par les notes.

Fatou donne les poids suivants : prix 0,4 ; autonomie 0,3 ; appareil photo 0,2 ; service après-vente 0,1. Premier réflexe : vérifier que les poids totalisent 1. 0,4 plus 0,3 plus 0,2 plus 0,1 égale 1. Parfait.

Téléphone A : notes 8, 6, 5, 7. Calculons : 0,4 fois 8 égale 3,2 ; 0,3 fois 6 égale 1,8 ; 0,2 fois 5 égale 1,0 ; 0,1 fois 7 égale 0,7. Total : 6,7.

Téléphone B : notes 5, 8, 8, 6. 0,4 fois 5 égale 2,0 ; 0,3 fois 8 égale 2,4 ; 0,2 fois 8 égale 1,6 ; 0,1 fois 6 égale 0,6. Total : 6,6.

Téléphone C : notes 7, 7, 6, 4. 2,8 plus 2,1 plus 1,2 plus 0,4 égale 6,5.

Conclusion : A l''emporte, mais de très peu. C''est le prix, critère le plus lourd, qui fait la différence. Que peut faire le fabricant de B ? Deux leviers. Agir sur les notes : baisser le prix ou proposer un paiement échelonné. Agir sur les poids : convaincre Fatou que l''appareil photo est essentiel pour ses réseaux sociaux. C''est exactement ce que fait la publicité.

Deuxième exercice, deux réfrigérateurs X et Y. Poids : prix 0,5 ; consommation 0,3 ; garantie 0,2. X a 6, 9, 7 ; Y a 8, 6, 6. X égale 3,0 plus 2,7 plus 1,4, soit 7,1. Y égale 4,0 plus 1,8 plus 1,2, soit 7,0. X gagne grâce à sa faible consommation électrique, argument à mettre en avant.

Dernier point : il existe des modèles non compensatoires. Dans le modèle conjonctif, on élimine toute marque sous un seuil : « en dessous de 6 en autonomie, je n''achète pas ». Avec ce seuil, le téléphone A, noté 6, passe de justesse.

## 1:05:00 – 1:18:00 · Satisfaction, fidélité et taux de réachat

La satisfaction naît de la comparaison entre ce que le client attendait et ce qu''il perçoit. Si la performance dépasse les attentes, il est ravi. Si elle est inférieure, il est déçu. Conséquence pratique : ne promettez jamais plus que ce que vous pouvez tenir.

La fidélité, c''est racheter avec une attitude favorable. Attention à l''inertie : un client qui rachète faute de choix n''est pas vraiment fidèle ; il partira à l''arrivée d''un concurrent.

Mesure simple : le taux de réachat. Une boulangerie fictive de Kaolack a 1 200 clients en janvier ; 780 reviennent en février. 780 divisé par 1 200, fois 100, égale 65 %. Un salon de thé de Saint-Louis : 390 clients revenus sur 600, soit également 65 %. Pour améliorer ce taux : carte de fidélité, accueil personnalisé, nouveautés régulières.

## 1:18:00 – 1:26:00 · Correction commentée d''un cas

Une marque fictive de couches pour bébés se vend mal à Dakar malgré un prix bas. Les mères craignent une qualité médiocre. Analyse : c''est un frein lié au risque perçu, et le prix bas renforce le doute. Actions : échantillons gratuits en maternité, avis de sages-femmes, garantie de remboursement. Ce qui fait la différence dans la copie : relier explicitement chaque action au frein identifié.

## 1:26:00 – 1:30:00 · Synthèse et évaluation finale

Retenez : motivations contre freins, cinq étapes du processus, rôles d''achat, quatre familles de facteurs, score multi-attributs et taux de réachat.

- Question 1 : citez les cinq étages de la pyramide de Maslow. Réponse : physiologiques, sécurité, appartenance, estime, accomplissement.
- Question 2 : qu''est-ce qu''un non-consommateur absolu ? Question piège, c''est une notion du chapitre marché ; réponse : une personne qui ne consommera jamais le produit.
- Question 3 : poids 0,6 et 0,4 ; notes 5 et 10. Score ? Réponse : 3 + 4 = 7.
- Question 4 : citez deux rôles d''achat. Réponse : initiateur et décideur (ou influenceur, acheteur, utilisateur).
- Question 5 : 450 clients sur 600 rachètent. Taux de réachat ? Réponse : 75 %.

Merci et à bientôt pour le cours sur la vente et la négociation.', 'video', 90, false, 70
from public.courses c where c.slug = 'lic-mkt-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Comportement du consommateur');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Techniques de vente et négociation commerciale', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 1 en marketing, commerce, gestion.
- Objectifs : maîtriser les étapes de l''entretien de vente ; utiliser SONCAS et CAP ; traiter les objections ; préparer une négociation ; calculer l''impact d''une remise et des ratios commerciaux.
- Matériel : tableau ou diaporama, fiche de préparation de négociation, calculatrice, deux volontaires pour un jeu de rôle.
- Prérequis : leçon « Techniques de vente et négociation commerciale : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour à toutes et à tous. Ce cours est le plus pratique de l''année : la vente s''apprend en vendant. À la fin, vous saurez dérouler un entretien de vente complet, préparer une négociation et calculer ce que coûte réellement une remise. Notre fil rouge : Sénégal Froid Services, une entreprise fictive de Dakar qui vend des congélateurs et des chambres froides.

Visuel : diapositive titre et l''échelle des sept étapes de la vente.

## 05:00 – 15:00 · Préparer et prendre contact

Un bon entretien se gagne avant de commencer. Préparer, c''est connaître son produit par cœur, ses concurrents, et son client : que fait-il, qu''a-t-il acheté avant, quels sont ses problèmes ? C''est aussi fixer un objectif réaliste pour la visite et prévoir ses outils : catalogue, tarifs, échantillons, bon de commande.

La prise de contact est rapide mais décisive. On parle de la règle des quatre vingt : vingt secondes, vingt mots, vingt gestes, vingt centimètres du visage. Au Sénégal, les salutations ont une grande importance : les écourter peut être perçu comme un manque de respect. Prenez le temps de saluer, de vous présenter, et d''expliquer le but de votre visite.

Un point de méthode pour l''examen : on vous demande souvent de rédiger une fiche de préparation de visite. Elle comporte l''identité du client, son historique d''achats, l''objectif de la visite (par exemple obtenir une commande d''essai), les arguments prévus, les objections probables avec leurs réponses, et les documents à emporter. Une fiche bien structurée vaut des points faciles.

Question à poser : pourquoi fixer un objectif précis pour chaque visite ? Réponse attendue : pour pouvoir mesurer le résultat et préparer la visite suivante, même si le client n''achète pas aujourd''hui.

## 15:00 – 30:00 · Découvrir avec SONCAS

La découverte est l''étape la plus importante et la plus négligée. Le vendeur débutant parle ; le bon vendeur questionne. On alterne questions ouvertes, « Comment conservez-vous votre poisson aujourd''hui ? », et questions fermées, « Avez-vous des coupures d''électricité fréquentes ? ».

On écoute pour repérer les motivations SONCAS. Sécurité : « Je ne veux pas perdre ma marchandise. » Orgueil : « Je veux le plus grand modèle du quartier. » Nouveauté : « Qu''est-ce qui existe de nouveau ? » Confort : « Je veux quelque chose de simple à utiliser. » Argent : « Combien ça consomme ? » Sympathie : « Je vous fais confiance, vous connaissez mon frère. »

On termine par la reformulation : « Si je vous ai bien comprise, vous cherchez un congélateur qui garde le froid pendant les coupures et qui consomme peu, c''est bien cela ? » Le client dit oui : vous avez gagné le droit d''argumenter.

## 30:00 – 40:00 · Argumenter avec CAP

Visuel : trois colonnes, caractéristique, avantage, preuve.

Pour la poissonnière de Mbour, motivations sécurité et argent. Caractéristique : isolation renforcée. Avantage : le froid tient plus de vingt heures pendant une coupure, donc pas de poisson perdu. Preuve : le test du fabricant et le témoignage d''une autre commerçante. Deuxième argument. Caractéristique : compresseur basse consommation. Avantage : une facture d''électricité plus faible chaque mois. Preuve : la fiche technique et une simulation de facture.

Erreur à éviter : réciter toutes les caractéristiques. Ne choisissez que celles qui répondent aux motivations découvertes.

Exercice rapide à faire avec moi : un boutiquier de Kolda, motivation argent et sécurité, regarde un panneau solaire. Caractéristique : panneau de 200 watts avec batterie. Avantage : la boutique reste éclairée et le réfrigérateur fonctionne pendant les coupures, donc moins de produits perdus et des ventes le soir. Preuve : démonstration sur place et témoignage d''un commerçant voisin déjà équipé. Vous voyez que l''avantage est formulé dans le langage du client, pas dans celui de l''ingénieur.

## 40:00 – 45:00 · Quiz interactif

Mettez en pause et répondez.

- Question 1 : que signifie le A de SONCAS ? Réponse : argent.
- Question 2 : que signifie le P de CAP ? Réponse : preuve.
- Question 3 : quelle étape vient juste avant l''argumentation ? Réponse : la découverte, terminée par une reformulation.

## 45:00 – 58:00 · Objections et conclusion : jeu de rôle commenté

Visuel : liste des techniques de traitement des objections.

Une objection n''est pas un refus. Méthode : écouter, reformuler, répondre, vérifier. Jeu de rôle. La cliente dit : « C''est trop cher. » Mauvaise réponse : baisser immédiatement le prix. Bonne réponse par questionnement : « Trop cher par rapport à quoi, madame ? » Elle répond : « Par rapport au modèle d''à côté. » Réponse « oui, mais » : « Oui, il coûte plus cher à l''achat, mais il consomme moins et garde le froid deux fois plus longtemps ; en un an, vous récupérez la différence. » Vérification : « Est-ce que cela répond à votre inquiétude ? »

Autres techniques : le boomerang, qui transforme l''objection en argument ; le report, quand le prix est demandé trop tôt ; la preuve par la démonstration.

Conclure ensuite. Guettez les signaux d''achat : « Vous livrez à Mbour ? » « On peut payer en deux fois ? » Utilisez l''alternative : « Je vous livre mardi ou jeudi ? » Puis prenez congé en remerciant, confirmez la livraison, et notez la date de relance.

## 58:00 – 1:12:00 · Préparer une négociation

Visuel : fiche de préparation en cinq cases.

Sénégal Froid Services négocie une chambre froide avec une coopérative de pêcheurs. Case 1, objectifs : prix d''ouverture 5 000 000, objectif 4 600 000, prix plancher 4 200 000 francs. Case 2, la MESORE, la meilleure solution de rechange : si nous n''obtenons pas l''accord, nous avons un autre client intéressé. Celle de la coopérative : un concurrent plus lointain, sans service après-vente local. Case 3, la zone d''accord : la coopérative peut payer au plus 4 800 000. Zone d''accord égale 4 800 000 moins 4 200 000, soit 600 000 francs. Case 4, les monnaies d''échange : installation, formation, contrat d''entretien, paiement en trois fois. Case 5, les contreparties : acompte, engagement d''entretien, recommandation auprès d''autres coopératives.

Règle d''or : jamais de concession sans contrepartie. « Je peux faire un effort sur le prix si vous versez un acompte de 40 % à la commande. »

## 1:12:00 – 1:24:00 · Les calculs commerciaux : exercices corrigés

Exercice 1. Un ventilateur à 10 000 francs HT coûte 7 000 francs. Marge unitaire : 3 000. On en vend 300 par mois : 900 000 francs de marge. Remise de 10 % : prix 9 000, marge unitaire 2 000. Pour garder 900 000 de marge, il faut 900 000 divisé par 2 000, soit 450 ventilateurs. 50 % de plus ! Une remise de 10 % sur le prix fait perdre un tiers de la marge unitaire.

Exercice 2. Kit de climatisation à 25 000 francs, coût 18 000, remise de 5 %. Prix remisé 23 750, marge 5 750 au lieu de 7 000. Volume nécessaire : 7 000 divisé par 5 750, soit 1,217 fois le volume initial, environ 21,7 % de ventes en plus.

Exercice 3, les ratios. 80 visites, 30 devis, 12 ventes, 5 400 000 francs de chiffre d''affaires. Taux de transformation des visites : 12 sur 80, soit 15 %. Des devis : 12 sur 30, soit 40 %. Panier moyen : 5 400 000 divisé par 12, soit 450 000 francs. Interprétation : le commercial convertit bien ses devis, il doit surtout multiplier les visites qualifiées.

## 1:24:00 – 1:30:00 · Synthèse et évaluation finale

Retenez les sept étapes, SONCAS, CAP, la méthode écouter-reformuler-répondre-vérifier, la MESORE et la zone d''accord, et le coût réel des remises.

- Question 1 : citez les sept étapes de l''entretien de vente. Réponse : préparation, prise de contact, découverte, argumentation, traitement des objections, conclusion, prise de congé et suivi.
- Question 2 : que veut dire MESORE ? Réponse : meilleure solution de rechange en cas d''échec de la négociation.
- Question 3 : prix maximum acheteur 3 000 000, plancher vendeur 2 600 000. Zone d''accord ? Réponse : 400 000 francs.
- Question 4 : prix 2 000, coût 1 500, remise 10 %. Nouvelle marge unitaire ? Réponse : 1 800 − 1 500 = 300 francs au lieu de 500.
- Question 5 : quelle technique utilise « Je vous livre mardi ou jeudi ? » ? Réponse : la conclusion par l''alternative.

Merci pour votre participation, et bonne préparation de vos examens.', 'video', 90, false, 80
from public.courses c where c.slug = 'lic-mkt-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Techniques de vente et négociation commerciale');

-- Cours : Marketing et commerce Licence 2 : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'lic-mkt-l2', (select id from public.levels where name = 'Licence 2'), null, 'Marketing et commerce', 'Marketing et commerce Licence 2 : réussir ses examens', 'Préparation aux partiels et examens semestriels de deuxième année de Licence en marketing et commerce (Sénégal, espace UEMOA, système LMD). Trois matières clés : les études de marché (questionnaire, échantillonnage, analyse chiffrée des résultats), le marketing opérationnel (prix, marges, seuil de rentabilité, distribution, communication) et le marketing digital (réseaux sociaux, référencement, indicateurs de performance, mobile money et e-commerce en Afrique). Fiches, cas d''entreprises sénégalaises fictives, exercices corrigés aux calculs vérifiés, sujet type et trois cours vidéo de 1h30. Prérequis : les fondamentaux du marketing de Licence 1.', true, 382
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Licence 2 en Marketing et commerce', '## Objectifs de la leçon

- Situer la deuxième année de Licence dans le parcours LMD et comprendre ce qui change par rapport à la première année.
- Identifier les trois matières clés de l''année et leurs exigences.
- Adapter sa méthode aux épreuves de Licence 2, plus chiffrées et plus appliquées.
- Organiser six semaines de révision efficaces.

## 1. La Licence 2 dans le système LMD

La Licence 2 correspond aux semestres 3 et 4 de la Licence. Comme en première année, chaque semestre regroupe des unités d''enseignement (UE) composées de matières, et chaque UE validée apporte des crédits. Le nombre de crédits, les coefficients, la place du contrôle continu et les règles de compensation et de rattrapage sont fixés par chaque établissement : consultez la maquette de votre filière et le règlement des études.

Ce qui change en Licence 2, c''est le niveau d''exigence. En première année, on vérifiait que vous connaissiez le vocabulaire : marché, segmentation, mix. En deuxième année, on vous demande de produire des outils : un questionnaire, un plan d''échantillonnage, un prix calculé, un seuil de rentabilité, un tableau de bord de campagne digitale. Les copies qui récitent sans calculer ni justifier plafonnent vite.

## 2. Les matières clés de l''année

- Études de marché : objectifs d''une étude, études documentaires, qualitatives et quantitatives, rédaction d''un questionnaire, méthodes d''échantillonnage, taille d''échantillon, analyse des résultats (tri à plat, tri croisé, moyenne, écart-type, intervalle de confiance, test du khi-deux).
- Marketing opérationnel : politique de prix (coûts, marges, coefficient multiplicateur, seuil de rentabilité, élasticité), politique de distribution (canaux, circuits, marges des intermédiaires), politique de communication (cibles, messages, médias, budget, coût pour mille contacts).
- Marketing digital : présence sur les réseaux sociaux, référencement naturel et payant, indicateurs de performance (taux de clic, taux de conversion, coût par clic, coût d''acquisition, retour sur dépenses publicitaires), mobile money et e-commerce en Afrique.

D''autres matières figurent souvent au programme : statistiques, comptabilité analytique, droit commercial, communication écrite, anglais des affaires, informatique de gestion. Elles sont utiles ici, notamment les statistiques pour les études de marché et les coûts pour la fixation des prix.

## 3. Les épreuves de Licence 2

- Exercice chiffré : taille d''échantillon, intervalle de confiance, prix de vente à partir d''un taux de marque, seuil de rentabilité, indicateurs digitaux. Présentez toujours : formule, application numérique, résultat avec unité, interprétation.
- Rédaction d''outil : écrire cinq questions d''un questionnaire, construire un plan de quotas, rédiger un brief de campagne.
- Cas pratique : une entreprise fictive souhaite lancer un produit ; vous devez proposer une étude, puis un mix chiffré.
- Questions de réflexion : « Les réseaux sociaux remplacent-ils la publicité traditionnelle ? » Introduction, problématique, plan, exemples.
- Dossier ou projet : réalisation d''une petite enquête de terrain en groupe, avec rapport et soutenance.

## 4. Méthode de travail

- Construisez un formulaire unique d''une ou deux pages avec toutes les formules de l''année : taille d''échantillon, intervalle de confiance, khi-deux, taux de marge et de marque, seuil de rentabilité, élasticité, coût pour mille, taux de clic, taux de conversion, coût d''acquisition, retour sur dépenses publicitaires.
- Pour chaque formule, inventez un exemple en FCFA et refaites-le de tête une semaine plus tard.
- Entraînez-vous à rédiger : un bon questionnaire ne s''improvise pas le jour de l''examen.
- Observez votre environnement : affiches, promotions dans les boutiques, publications sponsorisées sur votre téléphone. Ce sont des exemples réels à analyser (sans citer les marques comme modèles à copier).

Exemple de ligne de formulaire. Seuil de rentabilité en valeur = charges fixes / taux de marge sur coûts variables. Une entreprise fictive avec 36 000 000 FCFA de charges fixes et un taux de marge sur coûts variables d''un tiers doit réaliser 36 000 000 / (1/3) = 108 000 000 FCFA de chiffre d''affaires pour ne pas perdre d''argent.

## 5. Plan de révision sur six semaines

- Semaine 1 : bilan des cours et TD, constitution du formulaire, repérage des chapitres fragiles.
- Semaine 2 : études de marché. Questionnaire, échantillonnage, taille d''échantillon, traitement des résultats.
- Semaine 3 : marketing opérationnel, partie prix et seuil de rentabilité ; puis distribution.
- Semaine 4 : communication et marketing digital : indicateurs, campagnes, mobile money, e-commerce.
- Semaine 5 : deux sujets complets en temps limité, avec correction.
- Semaine 6 : reprise des erreurs, révision du formulaire, repos avant les épreuves.

## Points clés

- En Licence 2, on attend des outils et des calculs, pas seulement des définitions.
- Trois matières clés : études de marché, marketing opérationnel, marketing digital.
- Un formulaire personnel et des exemples en FCFA sont vos meilleurs alliés.
- Chaque calcul se termine par une phrase d''interprétation et, si possible, une décision.

## Exercices pratiques

- Exercice 1. Expliquez en trois phrases la différence d''exigence entre la Licence 1 et la Licence 2.
- Exercice 2. Une entreprise fictive a 18 000 000 FCFA de charges fixes et un taux de marge sur coûts variables de 30 %. Calculez son seuil de rentabilité en valeur.
- Exercice 3. Listez six formules que doit contenir votre formulaire et précisez la matière de chacune.
- Exercice 4. Cas pratique. Moussa, étudiant en Licence 2, connaît ses définitions mais perd des points sur les calculs et les cas. Il dispose de six semaines et peut travailler deux heures par jour en semaine. Proposez-lui un plan de travail détaillé.
- Exercice 5. Donnez un exemple d''action de marketing digital que vous avez observée au Sénégal (sans citer de marque) et analysez sa cible et son objectif.

## Corrigé

- Exercice 1. En Licence 1, on attend surtout la maîtrise du vocabulaire et des démarches de base. En Licence 2, on attend la production d''outils (questionnaire, plan de quotas, prix, budget) et des calculs exacts. La justification des choix et l''interprétation des résultats deviennent décisives.
- Exercice 2. Seuil de rentabilité = 18 000 000 / 0,30 = 60 000 000 FCFA de chiffre d''affaires.
- Exercice 3. Exemples : taille d''échantillon n = z² × p × (1 − p) / e² (études de marché) ; intervalle de confiance d''une proportion (études de marché) ; taux de marque = marge / prix de vente HT (marketing opérationnel) ; seuil de rentabilité = charges fixes / taux de marge sur coûts variables (marketing opérationnel) ; taux de clic = clics / impressions (marketing digital) ; coût d''acquisition = dépense / nombre de conversions (marketing digital).
- Exercice 4. Semaine 1 : formulaire et liste des exercices de TD ratés. Semaines 2 à 4 : chaque jour, trente minutes de fiche puis une heure trente d''exercices chiffrés, en suivant l''ordre études, prix et distribution, communication et digital. Le samedi, un cas pratique complet. Semaine 5 : deux sujets types chronométrés. Semaine 6 : reprise des erreurs et révision du formulaire. Il doit rédiger chaque calcul avec formule et interprétation.
- Exercice 5. Exemple : une pâtisserie de quartier publie des vidéos courtes de ses gâteaux le vendredi avec un numéro de commande par messagerie. Cible : familles et jeunes actifs du quartier qui préparent les fêtes du week-end. Objectif : générer des commandes directes et fidéliser. Indicateurs utiles : nombre de messages reçus, commandes, panier moyen.', 'texte', 45, true, 10
from public.courses c where c.slug = 'lic-mkt-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Licence 2 en Marketing et commerce');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Études de marché : l''essentiel pour l''examen', '## Objectifs de la leçon

- Choisir le bon type d''étude selon le problème posé.
- Rédiger un questionnaire clair et sans biais.
- Choisir une méthode d''échantillonnage et calculer une taille d''échantillon.
- Analyser des résultats : tri à plat, moyenne, écart-type, intervalle de confiance, tri croisé et khi-deux.

## 1. Les types d''études

Une étude de marché collecte et analyse des informations pour éclairer une décision (lancer un produit, fixer un prix). On part toujours du problème à résoudre.

- Étude documentaire : exploitation de sources existantes (rapports publics, statistiques nationales, données internes, articles). Peu coûteuse, à faire en premier.
- Étude qualitative : entretiens individuels ou réunions de groupe sur un petit nombre de personnes, pour comprendre les motivations, les freins, le vocabulaire des clients. Résultats riches mais non généralisables.
- Étude quantitative : questionnaire administré à un échantillon représentatif, pour mesurer (combien, quelle proportion, quelle moyenne). Résultats chiffrés et extrapolables, dans une marge d''erreur.

Schéma décrit : un entonnoir. En haut, l''étude documentaire ; au milieu, le qualitatif qui fait émerger les hypothèses ; en bas, le quantitatif qui les mesure.

## 2. Le questionnaire

Un bon questionnaire est court, compréhensible par tous, neutre et ordonné. Structure conseillée :

- Introduction : qui mène l''enquête, objectif, durée, anonymat.
- Questions filtres : vérifier que la personne fait partie de la cible.
- Questions générales puis précises (technique de l''entonnoir).
- Questions d''identification à la fin : âge, sexe, quartier, profession, tranche de revenu.

Types de questions :

- Fermée unique ou multiple : « Achetez-vous du jus local en bouteille ? Oui / Non. »
- Échelle de Likert : « Je trouve le prix acceptable : pas du tout d''accord … tout à fait d''accord » (cinq niveaux).
- Échelle de notation : « Notez votre satisfaction de 1 à 5. »
- Ouverte : « Que faudrait-il améliorer ? »

Erreurs à éviter : question orientée (« Vous aimez sûrement notre délicieux jus ? »), question double (« Le jus est-il bon et pas cher ? »), vocabulaire technique, question trop indiscrète en début de questionnaire. Au Sénégal, pensez à la langue : le questionnaire peut être traduit en wolof ou dans d''autres langues nationales, et testé auprès de quelques personnes avant le lancement.

## 3. L''échantillonnage

- Méthodes probabilistes : chaque individu a une probabilité connue d''être tiré. Aléatoire simple (tirage au sort sur une liste), systématique (une personne sur k), stratifié (tirage dans chaque strate), par grappes (tirage de quartiers, puis enquête de tous les ménages tirés).
- Méthodes non probabilistes : quotas (l''échantillon reproduit la structure de la population sur quelques critères connus), méthode des itinéraires, échantillon de convenance. Très utilisées faute de listes exhaustives.

Exemple de quotas. Une enquête porte sur 500 personnes. La population de référence compte 52 % de femmes et 48 % d''hommes ; 30 % ont 18 à 24 ans, 45 % 25 à 39 ans, 25 % 40 ans et plus. Quotas : 260 femmes et 240 hommes ; 150, 225 et 125 personnes par tranche d''âge.

Taille d''échantillon pour estimer une proportion : n = z² × p × (1 − p) / e², avec z = 1,96 pour un niveau de confiance de 95 %, p la proportion supposée (0,5 si on ne sait rien, cas le plus prudent) et e la marge d''erreur.

- Pour e = 5 % : n = 1,96² × 0,5 × 0,5 / 0,05² = 384,16, arrondi à 385 personnes.
- Pour e = 4 % : n = 600,25, soit 601 personnes.
- Pour e = 3 % : n = 1 067,1, soit 1 068 personnes. Diviser la marge d''erreur par deux multiplie environ la taille par quatre.

## 4. Analyser les résultats

Tri à plat : distribution des réponses question par question (effectifs et pourcentages).

Moyenne et écart-type. Bissap Ndar, entreprise fictive de Saint-Louis, interroge 300 clients sur leur satisfaction (1 à 5). Réponses : note 1 : 10 ; note 2 : 30 ; note 3 : 80 ; note 4 : 120 ; note 5 : 60.

- Moyenne = (1 × 10 + 2 × 30 + 3 × 80 + 4 × 120 + 5 × 60) / 300 = 1 090 / 300 = 3,63.
- Variance = moyenne des carrés des écarts = 1,03 ; écart-type = 1,02 environ. Les avis sont assez dispersés.
- Part de satisfaits (notes 4 et 5) = 180 / 300 = 60 %.

Intervalle de confiance d''une proportion : p ± 1,96 × √(p × (1 − p) / n). Sur 400 personnes, 42 % se déclarent prêtes à acheter un nouveau jus au gingembre. Erreur type = √(0,42 × 0,58 / 400) = 0,0247. Marge = 1,96 × 0,0247 = 0,048. Intervalle à 95 % : de 37,2 % à 47,0 %.

Tri croisé et khi-deux. On croise la zone (urbaine, rurale) et l''achat de jus en bouteille, sur 400 personnes :

- Urbains : 120 acheteurs, 80 non-acheteurs (total 200).
- Ruraux : 60 acheteurs, 140 non-acheteurs (total 200).

Effectif théorique (si pas de lien) = total ligne × total colonne / total général. Acheteurs : 200 × 180 / 400 = 90 ; non-acheteurs : 200 × 220 / 400 = 110. Khi-deux = somme des (observé − théorique)² / théorique = 900/90 + 900/110 + 900/90 + 900/110 = 36,4. Pour un tableau 2 × 2 (un degré de liberté), la valeur critique au seuil de 5 % est 3,84. Comme 36,4 est supérieur à 3,84, on conclut à un lien significatif entre zone et achat.

## Points clés

- Documentaire, puis qualitatif, puis quantitatif.
- Questionnaire : neutre, court, en entonnoir, identification à la fin, pré-test.
- n = z² p (1 − p) / e² ; p = 0,5 par prudence.

## Exercices pratiques

- Exercice 1. Corrigez ces questions : « Ne pensez-vous pas que nos prix sont bas ? » ; « Le service est-il rapide et aimable ? »
- Exercice 2. Calculez la taille d''échantillon pour une marge d''erreur de 6 % au niveau de confiance de 95 % (p = 0,5).
- Exercice 3. Construisez les quotas d''un échantillon de 600 personnes : 55 % de femmes ; 40 % de 18 à 29 ans, 35 % de 30 à 49 ans, 25 % de 50 ans et plus.
- Exercice 4. Sur 500 personnes, 65 % connaissent une marque fictive de savon local. Calculez l''intervalle de confiance à 95 %.
- Exercice 5. Tri croisé sur 300 personnes. Hommes : 90 utilisent le paiement mobile, 60 non. Femmes : 70 oui, 80 non. Calculez le khi-deux et concluez au seuil de 5 %.
- Exercice 6. Cas pratique. Une entreprise fictive veut ouvrir une boulangerie moderne à Kaolack. Proposez une démarche d''étude complète (types d''études, méthode d''échantillonnage, cinq questions clés).

## Corrigé

- Exercice 1. « À votre avis, nos prix sont-ils : très bas, bas, corrects, élevés, très élevés ? » La seconde est double : la scinder en « Le service est-il rapide ? » et « Le personnel est-il aimable ? », chacune sur une échelle.
- Exercice 2. n = 1,96² × 0,25 / 0,06² = 266,8, arrondi à 267 personnes.
- Exercice 3. 330 femmes et 270 hommes ; 240, 210 et 150 personnes par tranche d''âge.
- Exercice 4. Erreur type = √(0,65 × 0,35 / 500) = 0,0213 ; marge = 1,96 × 0,0213 = 0,042. Intervalle : de 60,8 % à 69,2 %.
- Exercice 5. Totaux : hommes 150, femmes 150 ; oui 160, non 140. Théoriques : oui 150 × 160 / 300 = 80 ; non 70 (pour chaque sexe). Khi-deux = 100/80 + 100/70 + 100/80 + 100/70 = 5,36. Supérieur à 3,84 : le lien entre sexe et usage du paiement mobile est significatif au seuil de 5 % ; les hommes de l''échantillon l''utilisent davantage.
- Exercice 6. Documentaire : population du quartier, concurrents existants, prix pratiqués. Qualitatif : une dizaine d''entretiens avec des clients potentiels. Quantitatif : questionnaire auprès d''environ 385 personnes, échantillon par quotas (sexe, âge, quartier). Questions : fréquence d''achat de pain ; lieu d''achat actuel ; produits souhaités (pain, viennoiseries, gâteaux) ; prix acceptable pour une baguette améliorée ; intérêt pour la livraison ou la commande par messagerie.', 'texte', 60, false, 20
from public.courses c where c.slug = 'lic-mkt-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Études de marché : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Marketing opérationnel : l''essentiel pour l''examen', '## Objectifs de la leçon

- Fixer un prix à partir des coûts, de la demande et de la concurrence.
- Calculer taux de marge, taux de marque, coefficient multiplicateur, seuil de rentabilité et élasticité.
- Choisir des canaux de distribution et calculer les prix en cascade.
- Construire un plan de communication et calculer un coût pour mille contacts.

## 1. Le prix

Trois approches complémentaires :

- Par les coûts : prix = coût de revient + marge souhaitée.
- Par la demande : prix psychologique (celui que les clients jugent acceptable), élasticité.
- Par la concurrence : s''aligner, se placer au-dessus (image de qualité) ou en dessous (pénétration).

Stratégies de lancement : écrémage (prix élevé pour une clientèle restreinte, puis baisse) ou pénétration (prix bas pour conquérir vite des parts de marché).

Formules de base (prix hors taxes) :

- Marge unitaire = prix de vente HT − coût d''achat ou de revient.
- Taux de marge = marge / coût × 100.
- Taux de marque = marge / prix de vente HT × 100.
- Coefficient multiplicateur = prix de vente / coût.

Exemple. Bissap Ndar produit une bouteille de jus pour un coût variable de 400 FCFA et la vend 600 FCFA HT aux grossistes. Marge = 200 FCFA. Taux de marge = 200 / 400 = 50 %. Taux de marque = 200 / 600 = 33,3 %. Coefficient multiplicateur = 1,5.

Calculer un prix à partir d''un taux. Pour un coût de 1 500 FCFA : avec un taux de marge de 40 %, prix = 1 500 × 1,4 = 2 100 FCFA ; avec un taux de marque de 40 %, prix = 1 500 / (1 − 0,4) = 2 500 FCFA. Ne confondez jamais les deux.

Seuil de rentabilité. Bissap Ndar supporte 36 000 000 FCFA de charges fixes par an. Marge sur coût variable unitaire = 200 FCFA ; taux de marge sur coûts variables = 200 / 600 = 1/3.

- Seuil en quantité = 36 000 000 / 200 = 180 000 bouteilles.
- Seuil en valeur = 36 000 000 / (1/3) = 108 000 000 FCFA.
- Ventes prévues : 240 000 bouteilles, soit 144 000 000 FCFA. Résultat = 240 000 × 200 − 36 000 000 = 12 000 000 FCFA.
- Marge de sécurité = 144 000 000 − 108 000 000 = 36 000 000 FCFA ; indice de sécurité = 25 %.
- Point mort (ventes régulières sur l''année) = 12 × 108 / 144 = 9 mois, soit fin septembre.

Élasticité-prix = variation relative des quantités / variation relative du prix. Si le prix passe de 600 à 650 FCFA (+8,33 %) et les ventes de 240 000 à 216 000 bouteilles (−10 %), l''élasticité vaut −10 / 8,33 = −1,2 : la demande est élastique. Pourtant, la marge sur coûts variables passe de 48 000 000 à 216 000 × 250 = 54 000 000 FCFA : la hausse peut rester rentable. Il faut toujours raisonner en marge, pas seulement en chiffre d''affaires.

## 2. La distribution

Un canal est une voie d''acheminement ; un circuit est l''ensemble des canaux utilisés.

- Canal direct : producteur → consommateur (vente à la ferme, boutique propre, vente en ligne).
- Canal court : producteur → détaillant → consommateur.
- Canal long : producteur → grossiste → (demi-grossiste) → détaillant → consommateur. Très répandu en Afrique de l''Ouest pour les produits de grande consommation, avec un poids important des boutiques de quartier et des marchés.

Stratégies : distribution intensive (le plus de points de vente possible : produits de consommation courante), sélective (points choisis : électroménager), exclusive (un distributeur par zone : véhicules).

Prix en cascade. Bissap Ndar vend 600 FCFA HT. Le grossiste applique un taux de marge de 10 % : 660 FCFA. Le détaillant applique 25 % : 825 FCFA HT. Avec une TVA à 18 % (taux utilisé ici pour l''exemple ; vérifiez le taux en vigueur), le consommateur paie 973,50 FCFA, arrondi en pratique à un prix rond. Le prix final représente 1,62 fois le prix producteur : chaque intermédiaire est rémunéré pour un service (stockage, transport, crédit, proximité).

## 3. La communication

Démarche : objectifs (faire connaître, faire aimer, faire agir), cible, message (promesse, preuve, ton), choix des moyens, budget, calendrier, contrôle.

- Communication média : radio (très puissante, notamment en langues nationales), télévision, affichage, presse, internet.
- Hors média : promotion des ventes (dégustations, lots, jeux), relations publiques, parrainage d''événements, salons, marketing direct.

Coût pour mille contacts (CPM) = coût de la campagne / nombre de contacts × 1 000. Une campagne radio de 1 500 000 FCFA touche 600 000 contacts : CPM = 1 500 000 / 600 000 × 1 000 = 2 500 FCFA. Le CPM permet de comparer des supports, mais ne mesure ni l''attention ni les ventes.

## Points clés

- Taux de marge sur le coût, taux de marque sur le prix de vente.
- Seuil de rentabilité = charges fixes / taux de marge sur coûts variables.
- Distribution intensive, sélective ou exclusive ; prix en cascade.
- Communication : objectifs, cible, message, moyens, budget, contrôle.

## Exercices pratiques

- Exercice 1. Un article coûte 2 500 FCFA. Calculez le prix de vente HT pour un taux de marge de 30 %, puis pour un taux de marque de 30 %, et le coefficient multiplicateur dans le second cas.
- Exercice 2. Un fabricant vend 1 000 FCFA HT. Le grossiste prend 8 % de marge sur son coût d''achat, le détaillant 20 %. TVA de 18 % (taux utilisé pour l''exemple). Calculez le prix TTC payé par le consommateur.
- Exercice 3. Charges fixes 18 000 000 FCFA ; prix 5 000 FCFA ; coût variable 3 500 FCFA. Calculez le seuil en quantité et en valeur. Avec 15 000 unités vendues, calculez le résultat, l''indice de sécurité et le point mort.
- Exercice 4. Le prix passe de 1 000 à 900 FCFA et les ventes de 5 000 à 5 750 unités. Calculez l''élasticité et l''évolution du chiffre d''affaires.
- Exercice 5. Une campagne radio coûte 2 400 000 FCFA pour 800 000 contacts. Calculez le CPM et comparez au cas Bissap Ndar.
- Exercice 6. Cas pratique. Une coopérative fictive de Casamance lance une confiture de mangue. Proposez une stratégie de prix, un circuit de distribution et deux actions de communication.

## Corrigé

- Exercice 1. Taux de marge 30 % : 2 500 × 1,3 = 3 250 FCFA. Taux de marque 30 % : 2 500 / 0,7 = 3 571 FCFA (3 571,43). Coefficient = 3 571,43 / 2 500 = 1,43.
- Exercice 2. Grossiste : 1 000 × 1,08 = 1 080 FCFA. Détaillant : 1 080 × 1,20 = 1 296 FCFA HT. TTC = 1 296 × 1,18 = 1 529,28 FCFA.
- Exercice 3. Marge unitaire = 1 500 FCFA ; taux = 30 %. Seuil = 18 000 000 / 1 500 = 12 000 unités, soit 60 000 000 FCFA. Résultat = 15 000 × 1 500 − 18 000 000 = 4 500 000 FCFA. Indice de sécurité = (15 000 − 12 000) / 15 000 = 20 %. Point mort = 12 × 12 000 / 15 000 = 9,6 mois, soit vers la mi-octobre.
- Exercice 4. Variation des quantités = +15 % ; du prix = −10 % ; élasticité = −1,5 (demande élastique). Le chiffre d''affaires passe de 5 000 000 à 5 175 000 FCFA (+3,5 %). Il faut vérifier la marge avant de conclure.
- Exercice 5. CPM = 2 400 000 / 800 000 × 1 000 = 3 000 FCFA, plus cher que 2 500 FCFA. Ce support se justifie seulement s''il touche mieux la cible.
- Exercice 6. Prix : légèrement inférieur aux confitures importées, positionnement « fruit local de qualité » ; petit pot pour l''essai. Distribution : canal court vers supérettes et boutiques de produits locaux de Dakar et Ziguinchor, plus vente en ligne avec livraison. Communication : dégustations en magasin et foires, vidéos courtes montrant la récolte et la fabrication.', 'texte', 60, false, 30
from public.courses c where c.slug = 'lic-mkt-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Marketing opérationnel : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Marketing digital : l''essentiel pour l''examen', '## Objectifs de la leçon

- Comprendre l''écosystème du marketing digital : médias possédés, payés et gagnés.
- Utiliser les réseaux sociaux et le référencement de façon professionnelle.
- Calculer et interpréter les principaux indicateurs de performance.
- Analyser les spécificités du mobile money et de l''e-commerce en Afrique.

## 1. Les fondements

Le marketing digital regroupe les actions marketing menées sur les supports numériques : site web, réseaux sociaux, moteurs de recherche, messageries, courriels, applications. On distingue trois types de médias :

- Médias possédés : ceux que l''entreprise contrôle (site, page, compte, liste de contacts).
- Médias payés : la publicité en ligne (annonces sur les moteurs de recherche, publications sponsorisées).
- Médias gagnés : ce que les autres disent de vous (partages, avis, recommandations, articles).

En Afrique de l''Ouest, l''accès à internet se fait surtout par le téléphone mobile. Conséquences : contenus légers, formats verticaux, vidéos courtes, sites rapides et adaptés au mobile, place centrale de la messagerie dans la relation client.

## 2. Les réseaux sociaux

Une stratégie social media suit une démarche : objectifs, cible, choix des plateformes, ligne éditoriale (thèmes, ton, fréquence), calendrier de publication, animation de la communauté, mesure.

Bonnes pratiques :

- Publier régulièrement des contenus utiles ou divertissants, pas seulement des promotions (règle souvent citée : beaucoup de contenus de valeur pour une minorité de contenus commerciaux).
- Répondre vite et poliment aux commentaires et messages, y compris aux critiques.
- Travailler avec des créateurs de contenu ou des influenceurs adaptés à la cible, en exigeant la transparence sur le caractère commercial de la publication.
- Utiliser les langues des clients : français, wolof ou autres langues nationales selon la cible.

Taux d''engagement = interactions (mentions j''aime, commentaires, partages) / abonnés × 100 (ou / personnes touchées, à préciser). Exemple : une publication de Teranga Mode, boutique fictive de prêt-à-porter à Dakar, génère 1 250 interactions pour 25 000 abonnés : taux = 5 %.

## 3. Le référencement

- Référencement naturel (SEO) : améliorer la position d''un site dans les résultats non payants des moteurs de recherche. Leviers : contenu de qualité répondant aux questions des internautes, mots-clés pertinents dans les titres, site rapide et adapté au mobile, structure claire, liens provenant d''autres sites. Le SEO est lent mais durable.
- Référencement payant (SEA) : annonces achetées sur des mots-clés, généralement facturées au clic. Effet immédiat, mais il s''arrête quand on cesse de payer.
- Référencement local : fiche d''établissement avec adresse, horaires, photos et avis clients, essentielle pour un restaurant ou une boutique.

## 4. Les indicateurs de performance

Schéma décrit : un entonnoir de conversion. Impressions en haut, puis clics, visites, ajouts au panier, commandes en bas.

- Taux de clic (CTR) = clics / impressions × 100.
- Coût par clic (CPC) = dépense / clics.
- Taux de conversion = conversions / clics (ou visites) × 100.
- Coût par acquisition (CPA) = dépense / conversions.
- Retour sur dépenses publicitaires (ROAS) = chiffre d''affaires généré / dépense publicitaire.
- Retour sur investissement (ROI) = (marge générée − dépense) / dépense.
- Taux de rebond = visites d''une seule page sans interaction / visites totales.

Exemple. Teranga Mode dépense 450 000 FCFA en publications sponsorisées. Résultat : 200 000 impressions, 3 000 clics, 90 commandes, panier moyen 15 000 FCFA.

- CTR = 3 000 / 200 000 = 1,5 %.
- CPC = 450 000 / 3 000 = 150 FCFA.
- Taux de conversion = 90 / 3 000 = 3 %.
- CPA = 450 000 / 90 = 5 000 FCFA.
- Chiffre d''affaires = 90 × 15 000 = 1 350 000 FCFA ; ROAS = 1 350 000 / 450 000 = 3.
- Avec un taux de marge brute de 40 %, marge = 540 000 FCFA ; ROI = (540 000 − 450 000) / 450 000 = 20 %.

Un ROAS de 3 paraît excellent, mais seule la marge dit si la campagne enrichit l''entreprise.

## 5. Mobile money et e-commerce en Afrique

Le mobile money permet d''envoyer, recevoir et payer de l''argent avec un téléphone, souvent sans compte bancaire. Il est largement utilisé dans l''espace UEMOA, où la BCEAO encadre les services de paiement et la monnaie électronique. Pour le commerçant, il facilite l''encaissement à distance, réduit la manipulation d''espèces et laisse une trace des paiements. Les frais varient selon les opérateurs et les offres : intégrez-les dans le calcul de la marge. Exemple avec un taux de frais de 1 % (taux fictif pour l''exemple) : sur 1 350 000 FCFA encaissés, les frais s''élèvent à 13 500 FCFA.

L''e-commerce africain présente des spécificités :

- Commande souvent passée par messagerie ou réseau social plutôt que sur un site marchand.
- Paiement à la livraison encore fréquent, par manque de confiance : risque de commandes non honorées.
- Logistique du dernier kilomètre difficile : adresses imprécises, embouteillages ; recours aux livreurs à moto et aux points relais.
- Confiance à construire : avis clients, politique de retour claire, service client réactif.

## Points clés

- Médias possédés, payés, gagnés ; priorité au mobile.
- CTR, CPC, taux de conversion, CPA, ROAS, ROI : savoir les calculer et les relier.
- SEO durable, SEA immédiat, référencement local indispensable pour les commerces physiques.
- Mobile money et livraison : leviers et contraintes de l''e-commerce africain.

## Exercices pratiques

- Exercice 1. Classez en médias possédés, payés ou gagnés : le site d''un hôtel de Saly ; un avis positif d''un client ; une annonce sur un moteur de recherche.
- Exercice 2. Une publication touche 16 000 personnes pour un compte de 40 000 abonnés et génère 1 800 interactions. Calculez le taux d''engagement par abonné et par personne touchée.
- Exercice 3. Campagne B : 120 000 impressions, 2 400 clics, 360 000 FCFA de dépense, 48 commandes, panier moyen 20 000 FCFA, taux de marge 35 %. Calculez CTR, CPC, taux de conversion, CPA, ROAS et ROI.
- Exercice 4. Sur 5 000 visites, 2 200 quittent le site sans interaction. Calculez le taux de rebond et proposez deux causes.
- Exercice 5. Une boutique encaisse 2 000 000 FCFA par mobile money ; frais de 1,5 % (taux fictif pour l''exemple). Calculez les frais.
- Exercice 6. Cas pratique. Une épicerie fine fictive de Dakar veut vendre en ligne. Ses clients se plaignent de livraisons en retard et 20 % des commandes payables à la livraison sont refusées. Proposez des solutions.

## Corrigé

- Exercice 1. Site : possédé. Avis : gagné. Annonce : payé.
- Exercice 2. Par abonné : 1 800 / 40 000 = 4,5 %. Par personne touchée : 1 800 / 16 000 = 11,25 %. Toujours préciser la base.
- Exercice 3. CTR = 2 %. CPC = 150 FCFA. Conversion = 48 / 2 400 = 2 %. CPA = 7 500 FCFA. CA = 960 000 FCFA ; ROAS = 2,67. Marge = 336 000 FCFA ; ROI = (336 000 − 360 000) / 360 000 = −6,7 %. Malgré un ROAS supérieur à 2, la campagne perd de l''argent : il faut améliorer la conversion ou la marge.
- Exercice 4. Taux de rebond = 2 200 / 5 000 = 44 %. Causes : page trop lente sur mobile ; contenu ne correspondant pas à l''annonce.
- Exercice 5. Frais = 2 000 000 × 1,5 % = 30 000 FCFA.
- Exercice 6. Livraison : créneaux annoncés, regroupement des tournées par zone, points relais dans des boutiques partenaires, suivi par message. Refus : confirmation de la commande par appel ou message, acompte ou paiement par mobile money avec petite remise, liste des clients à risque. Confiance : photos fidèles, avis clients, politique de retour claire.', 'texte', 60, false, 40
from public.courses c where c.slug = 'lic-mkt-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Marketing digital : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Licence 2 en Marketing et commerce (corrigé)', '## Présentation

Sujet d''entraînement, non officiel, conçu pour une épreuve de trois heures. Barème indicatif, non officiel. Calculatrice autorisée.

## Le sujet

Casamance Délices SARL, entreprise fictive de Ziguinchor, veut lancer un pot de confiture de mangue de 350 grammes sur le marché dakarois.

Dossier 1 – Études de marché (7 points)

- 1.1 Proposez trois questions fermées et une question ouverte pour l''enquête. (2 points)
- 1.2 Calculez la taille d''échantillon nécessaire pour une marge d''erreur de 5 % au niveau de confiance de 95 %, en supposant p = 0,3. (2 points)
- 1.3 L''enquête porte finalement sur 385 personnes ; 30 % déclarent qu''elles achèteraient certainement le produit. Calculez l''intervalle de confiance à 95 % et interprétez. (3 points)

Dossier 2 – Marketing opérationnel (7 points)

Le coût variable d''un pot est de 1 200 FCFA. L''entreprise vise un taux de marque de 25 %. Charges fixes annuelles : 24 000 000 FCFA. Ventes prévues : 80 000 pots.

- 2.1 Calculez le prix de vente HT et le taux de marge correspondant. (2 points)
- 2.2 Calculez le seuil de rentabilité en quantité et en valeur, le résultat prévisionnel, la marge de sécurité et le point mort. (4 points)
- 2.3 Proposez un circuit de distribution adapté. (1 point)

Dossier 3 – Marketing digital (6 points)

Campagne sponsorisée test : dépense 500 000 FCFA ; 250 000 impressions ; 5 000 clics ; 125 commandes ; panier moyen 8 000 FCFA.

- 3.1 Calculez CTR, CPC, taux de conversion, CPA et ROAS. (3 points)
- 3.2 Avec un taux de marque de 25 %, la campagne est-elle rentable ? Quel chiffre d''affaires minimal fallait-il ? (2 points)
- 3.3 Proposez une amélioration. (1 point)

## Corrigé détaillé

Dossier 1

- 1.1 Fermées : « Consommez-vous de la confiture ? Oui / Non » ; « À quelle fréquence ? Chaque semaine / chaque mois / plus rarement » ; « Quel prix maximum accepteriez-vous pour un pot de 350 grammes ? (tranches) ». Ouverte : « Qu''est-ce qui vous donnerait envie d''acheter une confiture produite au Sénégal ? »
- 1.2 n = 1,96² × 0,3 × 0,7 / 0,05² = 322,7, arrondi à 323 personnes. Avec p = 0,5 (hypothèse prudente), on aurait 385.
- 1.3 Erreur type = √(0,3 × 0,7 / 385) = 0,0234 ; marge = 1,96 × 0,0234 = 0,046. Intervalle : de 25,4 % à 34,6 %. Interprétation : avec 95 % de confiance, entre un quart et un tiers environ de la population cible achèterait certainement ; l''intention déclarée surestime souvent l''achat réel, il faut rester prudent dans les prévisions.

Dossier 2

- 2.1 Prix HT = 1 200 / (1 − 0,25) = 1 600 FCFA. Marge = 400 FCFA ; taux de marge = 400 / 1 200 = 33,3 %.
- 2.2 Seuil en quantité = 24 000 000 / 400 = 60 000 pots. Taux de marge sur coûts variables = 25 % ; seuil en valeur = 96 000 000 FCFA. CA prévu = 80 000 × 1 600 = 128 000 000 FCFA. Résultat = 80 000 × 400 − 24 000 000 = 8 000 000 FCFA. Marge de sécurité = 32 000 000 FCFA (indice 25 %). Point mort = 12 × 60 000 / 80 000 = 9 mois.
- 2.3 Canal court : vente directe aux supérettes et épiceries fines de Dakar, complétée par la vente en ligne avec livraison ; éventuellement un grossiste pour les régions.

Dossier 3

- 3.1 CTR = 5 000 / 250 000 = 2 %. CPC = 100 FCFA. Conversion = 125 / 5 000 = 2,5 %. CPA = 4 000 FCFA. CA = 1 000 000 FCFA ; ROAS = 2.
- 3.2 Marge = 1 000 000 × 25 % = 250 000 FCFA, inférieure à la dépense de 500 000 FCFA : perte de 250 000 FCFA (ROI = −50 %). Chiffre d''affaires minimal = 500 000 / 0,25 = 2 000 000 FCFA, soit 250 commandes à 8 000 FCFA.
- 3.3 Augmenter le panier moyen (lots de trois pots, coffrets cadeaux), mieux cibler les annonces, améliorer la page de commande pour relever la conversion, ou mettre en avant le premier achat comme investissement de fidélisation si les clients rachètent.

## Exercices pratiques

- Exercice 1. Quelle est la valeur critique du khi-deux pour un tableau 2 × 2 au seuil de 5 % ?
- Exercice 2. Différence entre écrémage et pénétration ?
- Exercice 3. Un produit coûte 800 FCFA ; coefficient multiplicateur 1,6. Prix de vente ?
- Exercice 4. 4 000 clics et 80 commandes : taux de conversion ?
- Exercice 5. Citez deux contraintes logistiques de l''e-commerce en Afrique.
- Exercice 6. Le prix de la confiture passe de 1 600 à 1 700 FCFA et les ventes prévues de 80 000 à 76 000 pots. Calculez l''élasticité et la nouvelle marge sur coûts variables (coût variable inchangé à 1 200 FCFA). Faut-il augmenter le prix ?

## Corrigé

- Exercice 1. 3,84 (un degré de liberté).
- Exercice 2. L''écrémage fixe un prix élevé pour une clientèle restreinte ; la pénétration fixe un prix bas pour conquérir rapidement le marché.
- Exercice 3. 800 × 1,6 = 1 280 FCFA.
- Exercice 4. 80 / 4 000 = 2 %.
- Exercice 5. Adresses imprécises ; embouteillages et coût du dernier kilomètre (ou refus à la livraison).
- Exercice 6. Variation des quantités = −5 % ; variation du prix = +6,25 % ; élasticité = −5 / 6,25 = −0,8 (demande inélastique). Marge sur coûts variables : avant 80 000 × 400 = 32 000 000 FCFA ; après 76 000 × 500 = 38 000 000 FCFA. Le résultat progresserait de 6 000 000 FCFA : la hausse est intéressante sur le plan financier, sous réserve de la réaction des concurrents et de l''image « prix accessible » du produit.', 'texte', 60, false, 50
from public.courses c where c.slug = 'lic-mkt-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Licence 2 en Marketing et commerce (corrigé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Études de marché', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 2 en marketing, commerce, gestion.
- Objectifs : choisir un type d''étude ; rédiger un questionnaire ; construire un échantillon par quotas ; calculer une taille d''échantillon ; analyser des résultats avec moyenne, intervalle de confiance et khi-deux.
- Matériel : diaporama, exemple de questionnaire imprimé, calculatrice.
- Prérequis : leçon « Études de marché : l''essentiel pour l''examen » et notions de statistiques descriptives.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour à toutes et à tous. Aujourd''hui, nous allons apprendre à poser les bonnes questions aux bonnes personnes, puis à faire parler les chiffres. Une étude de marché n''est pas un exercice académique : c''est ce qui évite à une entreprise de dépenser des millions pour un produit dont personne ne veut. Notre fil rouge : Bissap Ndar, entreprise fictive de Saint-Louis, qui envisage un nouveau jus au gingembre.

Visuel : diapositive titre et plan : types d''études, questionnaire, échantillon, taille, analyse.

## 05:00 – 15:00 · Partir du problème

Toute étude commence par une question de décision. Pour Bissap Ndar : « Faut-il lancer un jus au gingembre à Saint-Louis et à Dakar, et à quel prix ? » De cette question découlent les objectifs d''information : qui consomme du jus local, à quelle fréquence, quel prix est acceptable, quelle part de la population achèterait.

Ensuite, on choisit les types d''études, comme un entonnoir. En haut, la documentaire : statistiques publiques sur la population, rapports sectoriels, données de ventes internes. Elle coûte peu, faites-la toujours en premier. Au milieu, la qualitative : une dizaine d''entretiens, ou deux réunions de groupe, pour comprendre les habitudes et le vocabulaire. On découvre par exemple que les clients parlent de « jus naturel » et se méfient des « jus trop sucrés ». En bas, la quantitative : un questionnaire auprès de quelques centaines de personnes pour mesurer.

Question à poser : pourquoi faire le qualitatif avant le quantitatif ? Réponse : pour formuler des questions et des modalités de réponse qui correspondent à la réalité des clients.

Un mot sur le budget et le calendrier, souvent demandés dans les cas pratiques. Une étude quantitative mobilise des enquêteurs, des déplacements, la saisie des données et l''analyse. Pour une PME, on peut réduire les coûts en recrutant des étudiants formés, en administrant une partie du questionnaire par téléphone ou en ligne, et en limitant le nombre de questions. Mais attention : un questionnaire en ligne ne touche que les personnes connectées ; l''échantillon risque alors de surreprésenter les jeunes urbains. Dans votre copie, signalez toujours ce type de biais.

## 15:00 – 30:00 · Rédiger le questionnaire

Visuel : un questionnaire d''une page, annoté.

Je vous montre la structure. Introduction : « Bonjour, je suis étudiant et je réalise une enquête pour une entreprise de jus. Cela prend cinq minutes, vos réponses sont anonymes. » Question filtre : « Avez-vous bu un jus en bouteille au cours du dernier mois ? » Si non, on remercie et on arrête, ou on passe à un module non-consommateurs. Puis l''entonnoir : habitudes générales, puis produit précis, puis prix. Enfin l''identification : âge, sexe, quartier, profession.

Maintenant, les pièges. « Vous aimez sûrement notre délicieux jus ? » : question orientée. « Le jus est-il bon et pas cher ? » : question double, la personne peut penser oui pour l''un et non pour l''autre. « Quel est votre revenu exact ? » en première question : trop indiscrète, la personne refuse de continuer. Utilisez plutôt des tranches, en fin de questionnaire.

Les échelles : Likert à cinq niveaux, de « pas du tout d''accord » à « tout à fait d''accord » ; notation de 1 à 5. Et n''oubliez pas le pré-test : on fait passer le questionnaire à cinq ou dix personnes pour repérer les questions mal comprises. Pensez aussi à la traduction en wolof si les enquêteurs l''utilisent : les mots doivent garder le même sens.

## 30:00 – 42:00 · Échantillonnage et quotas

Deux grandes familles. Les méthodes probabilistes supposent une liste de la population : tirage aléatoire simple, systématique, stratifié, par grappes. Les méthodes non probabilistes, comme les quotas, sont les plus utilisées en pratique, car les listes manquent souvent.

Exercice commenté. On veut 500 personnes. La population compte 52 % de femmes et 48 % d''hommes ; 30 % de 18 à 24 ans, 45 % de 25 à 39 ans, 25 % de 40 ans et plus. Quotas : 500 fois 0,52, soit 260 femmes ; 240 hommes. Par âge : 150, 225 et 125. Vérifiez toujours que les totaux font bien 500 : 150 plus 225 plus 125, c''est 500. Les enquêteurs remplissent ces cases et s''arrêtent quand un quota est atteint.

## 42:00 – 47:00 · Quiz interactif

Mettez en pause.

- Question 1 : quelle étude réaliser en premier ? Réponse : l''étude documentaire.
- Question 2 : qu''est-ce qu''une question double ? Réponse : une question qui porte sur deux points à la fois.
- Question 3 : 40 % de 18-24 ans sur un échantillon de 300 : quota ? Réponse : 120 personnes.

## 47:00 – 1:00:00 · Calculer la taille de l''échantillon

Visuel : la formule n = z² × p × (1 − p) / e².

z vaut 1,96 pour 95 % de confiance. p est la proportion que l''on cherche à estimer ; si on ne la connaît pas, on prend 0,5, car c''est la valeur qui donne le plus grand échantillon, donc la plus prudente. e est la marge d''erreur acceptée.

Calculons ensemble. Pour e égale 5 % : 1,96 au carré égale 3,8416 ; fois 0,25 égale 0,9604 ; divisé par 0,0025 égale 384,16. On arrondit toujours à l''entier supérieur : 385 personnes. Pour 4 % : 601 personnes. Pour 3 % : 1 068 personnes. Retenez l''intuition : pour diviser la marge d''erreur par deux, il faut environ quatre fois plus de personnes. La précision coûte cher.

Si une étude antérieure indique que p est proche de 0,3, on calcule 3,8416 fois 0,21, divisé par 0,0025 : 322,7, donc 323 personnes.

## 1:00:00 – 1:15:00 · Analyser les résultats

Premier outil, la moyenne et l''écart-type. 300 clients notent leur satisfaction : 10 donnent 1, 30 donnent 2, 80 donnent 3, 120 donnent 4, 60 donnent 5. Somme des produits : 10 plus 60 plus 240 plus 480 plus 300, soit 1 090. Moyenne : 1 090 sur 300, égale 3,63. L''écart-type vaut environ 1,02. Et 180 personnes sur 300, soit 60 %, sont satisfaites.

Deuxième outil, l''intervalle de confiance. 42 % des 400 personnes interrogées achèteraient le jus au gingembre. Erreur type : racine de 0,42 fois 0,58 divisé par 400, soit 0,0247. Fois 1,96 : 0,048. L''intervalle va de 37,2 % à 47,0 %. Dans la copie, on écrit : « Avec 95 % de confiance, la proportion d''acheteurs potentiels dans la population est comprise entre 37 % et 47 %. »

Troisième outil, le khi-deux. Urbains : 120 acheteurs, 80 non-acheteurs. Ruraux : 60 et 140. Les effectifs théoriques, en l''absence de lien, valent total ligne fois total colonne divisé par total général : 90 et 110 pour chaque zone. Chaque écart vaut 30 en valeur absolue, donc chaque écart au carré vaut 900. Khi-deux : 900 sur 90, plus 900 sur 110, deux fois, soit 36,4. La valeur critique pour un degré de liberté au seuil de 5 % est 3,84. 36,4 est très au-dessus : le lien entre zone et achat est significatif. Décision marketing : concentrer le lancement en zone urbaine.

## 1:15:00 – 1:25:00 · Correction commentée d''un exercice

Sur 300 personnes : hommes 90 utilisateurs du paiement mobile et 60 non ; femmes 70 et 80. Totaux : 150 hommes, 150 femmes ; 160 oui, 140 non. Théoriques : 80 oui et 70 non pour chaque sexe. Écarts au carré : 100 partout. Khi-deux : 100 sur 80 plus 100 sur 70, deux fois, soit 5,36. Supérieur à 3,84 : lien significatif. Les erreurs fréquentes que je vois dans les copies : oublier de calculer les effectifs théoriques, ou conclure sans comparer à la valeur critique.

Dernière étape d''une étude : le rapport. Il comprend un résumé pour le dirigeant d''une page, le rappel du problème et des objectifs, la méthodologie avec ses limites, les résultats présentés en tableaux et graphiques commentés, puis les recommandations. Le dirigeant de Bissap Ndar ne veut pas un khi-deux : il veut savoir s''il lance le jus, où, et à quel prix. Terminez toujours par une recommandation claire et chiffrée.

## 1:25:00 – 1:30:00 · Synthèse et évaluation finale

Retenez : documentaire, qualitatif, quantitatif ; questionnaire neutre et testé ; quotas ; n = z² p (1 − p) / e² ; intervalle de confiance ; khi-deux comparé à 3,84.

- Question 1 : taille d''échantillon pour e = 5 %, p = 0,5, 95 % ? Réponse : 385.
- Question 2 : pourquoi prendre p = 0,5 ? Réponse : c''est le cas le plus prudent, qui maximise n.
- Question 3 : citez une méthode probabiliste et une non probabiliste. Réponse : aléatoire simple ; quotas.
- Question 4 : un khi-deux de 2,1 pour un tableau 2 × 2 est-il significatif à 5 % ? Réponse : non, car 2,1 est inférieur à 3,84.
- Question 5 : où placer les questions d''identification ? Réponse : à la fin du questionnaire.

Merci, et rendez-vous au prochain cours vidéo.', 'video', 90, false, 60
from public.courses c where c.slug = 'lic-mkt-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Études de marché');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Marketing opérationnel', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 2 en marketing, commerce, gestion.
- Objectifs : calculer taux de marge, taux de marque, coefficient multiplicateur, seuil de rentabilité et élasticité ; construire un prix en cascade ; choisir une stratégie de distribution ; bâtir un plan de communication et comparer des supports par le CPM.
- Matériel : diaporama, tableau de seuil de rentabilité, calculatrice.
- Prérequis : leçon « Marketing opérationnel : l''essentiel pour l''examen » et notions de coûts variables et fixes.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour à toutes et à tous. Le marketing opérationnel, c''est le moment où la stratégie devient concrète : un prix sur une étiquette, un produit dans un rayon, un message à la radio. C''est aussi la matière où les examens comportent le plus de calculs. Notre fil rouge reste Bissap Ndar, qui vend des bouteilles de jus.

Visuel : diapositive titre et trois blocs : prix, distribution, communication.

## 05:00 – 20:00 · Marge, marque, coefficient

Visuel : une barre horizontale coupée en deux : coût de 400, marge de 200, prix de 600.

La bouteille coûte 400 francs et se vend 600 francs hors taxes. Marge : 200. Le taux de marge rapporte la marge au coût : 200 sur 400, soit 50 %. Le taux de marque rapporte la marge au prix de vente : 200 sur 600, soit 33,3 %. Le coefficient multiplicateur : 600 sur 400, soit 1,5.

C''est le piège préféré des correcteurs. Un produit coûte 1 500 francs. Avec un taux de marge de 40 %, on multiplie le coût par 1,4 : 2 100 francs. Avec un taux de marque de 40 %, on divise le coût par 0,6 : 2 500 francs. Pourquoi diviser ? Parce que si la marque représente 40 % du prix, le coût en représente 60 %. Vérifions : 2 500 moins 1 500 égale 1 000, et 1 000 sur 2 500 égale bien 40 %.

Question à poser : un commerçant dit « je prends 25 % ». Que devez-vous lui demander ? Réponse : 25 % de quoi, du coût ou du prix de vente ?

Avant de passer au seuil, rappelons les trois approches du prix. Par les coûts, comme nous venons de le faire. Par la demande : quel prix les clients jugent-ils acceptable ? On le mesure par enquête, en demandant à partir de quel prix le produit paraît trop cher, et en dessous de quel prix on doute de sa qualité. Par la concurrence : si les jus concurrents sont à 500 francs en boutique, un jus à 1 000 francs devra justifier sa différence. Le bon prix se situe à l''intersection des trois : il couvre les coûts, il est accepté par les clients, il est cohérent avec le positionnement face aux concurrents.

Et deux stratégies de lancement : l''écrémage, prix élevé au départ pour une clientèle prête à payer la nouveauté, puis baisse progressive ; la pénétration, prix bas dès le départ pour conquérir vite le marché. Pour un jus de grande consommation, la pénétration est souvent plus adaptée.

## 20:00 – 35:00 · Le seuil de rentabilité

Les charges fixes de Bissap Ndar s''élèvent à 36 millions par an : loyer, salaires administratifs, amortissement des machines. Chaque bouteille vendue rapporte une marge sur coût variable de 200 francs. Combien de bouteilles faut-il pour couvrir 36 millions ? 36 000 000 divisé par 200 : 180 000 bouteilles. En valeur : 180 000 fois 600, soit 108 millions, ou 36 millions divisé par le taux de marge sur coûts variables, un tiers.

Bissap Ndar prévoit 240 000 bouteilles, soit 144 millions de chiffre d''affaires. Résultat : 240 000 fois 200 moins 36 millions, égale 12 millions. Marge de sécurité : 144 moins 108, soit 36 millions ; l''indice de sécurité est de 25 % : les ventes peuvent baisser d''un quart avant d''entraîner une perte. Point mort : 12 fois 108 sur 144, égale 9 mois. Si les ventes sont régulières, le seuil est atteint fin septembre. Attention, dans la réalité les ventes de jus sont saisonnières : plus fortes pendant la saison chaude et le Ramadan. Un bon étudiant le signale.

Visuel : graphique décrit avec en abscisse les quantités, une droite de chiffre d''affaires partant de zéro, une droite de coûts totaux partant de 36 millions ; elles se croisent à 180 000 bouteilles.

## 35:00 – 45:00 · L''élasticité et la décision de prix

Bissap Ndar envisage de passer de 600 à 650 francs. L''étude prévoit une baisse des ventes à 216 000 bouteilles. Variation du prix : plus 8,33 %. Variation des quantités : moins 10 %. Élasticité : moins 10 divisé par 8,33, soit moins 1,2. La demande est élastique : les quantités réagissent plus que proportionnellement.

Faut-il renoncer ? Calculons la marge sur coûts variables. Avant : 240 000 fois 200, soit 48 millions. Après : 216 000 fois 250, soit 54 millions. La hausse rapporte 6 millions de marge en plus. Le chiffre d''affaires, lui, baisse un peu : 140,4 millions contre 144. Leçon : on décide sur la marge, pas sur le chiffre d''affaires.

## 45:00 – 50:00 · Quiz interactif

Mettez en pause.

- Question 1 : coût 1 000, taux de marque 20 %. Prix ? Réponse : 1 000 / 0,8 = 1 250 francs.
- Question 2 : charges fixes 10 millions, marge unitaire 500. Seuil en quantité ? Réponse : 20 000 unités.
- Question 3 : élasticité de −0,5 : demande élastique ou inélastique ? Réponse : inélastique, car sa valeur absolue est inférieure à 1.

## 50:00 – 1:05:00 · La distribution et les prix en cascade

Trois types de canaux : direct, court, long. Pour un jus vendu dans tout le pays, le canal long domine : grossiste, demi-grossiste, boutique de quartier. La boutique de quartier est un acteur clé : proche, ouverte tard, elle fait parfois crédit. Mais elle a peu de place et souvent un réfrigérateur limité : il faut négocier la visibilité et parfois fournir le matériel de froid.

Calcul en cascade. Bissap Ndar vend 600. Le grossiste ajoute 10 % : 660. Le détaillant ajoute 25 % : 825 hors taxes. Avec une TVA de 18 %, taux utilisé pour l''exemple et à vérifier dans le texte en vigueur, on obtient 973,50 francs ; en pratique, le prix affiché sera arrondi. Rapport entre prix final et prix producteur : 973,50 sur 600, soit 1,62.

Stratégies : intensive pour le jus, sélective pour un réfrigérateur, exclusive pour une marque de motos avec un concessionnaire par région.

## 1:05:00 – 1:18:00 · La communication et le CPM

Démarche en six étapes : objectifs, cible, message, moyens, budget, contrôle. Pour le jus au gingembre : objectif, faire connaître le produit à 50 % de la cible urbaine en trois mois ; cible, jeunes actifs et familles des villes ; message, « le gingembre qui réveille, naturel et local » ; moyens, radio en wolof et en français, affichage près des arrêts de bus, dégustations dans les supérettes, vidéos courtes en ligne.

Comparer les supports : le CPM. Radio A : 1 500 000 francs pour 600 000 contacts, CPM 2 500 francs. Radio B : 2 400 000 francs pour 800 000 contacts, CPM 3 000 francs. A est moins chère au contact. Mais si B touche mieux les jeunes actifs, elle peut rester le meilleur choix. Le CPM est un outil de comparaison, pas une mesure de l''efficacité.

Pensez aussi au hors média. La promotion des ventes provoque l''achat immédiat : dégustation gratuite en supérette, lot « trois bouteilles pour le prix de deux et demie », jeu avec bouchons gagnants. Les relations publiques construisent l''image : visite de l''usine pour des journalistes, parrainage d''un tournoi de football de quartier ou de navétanes. Question à poser : quel est le risque d''une promotion permanente ? Réponse : le client s''habitue au prix promotionnel et n''achète plus au prix normal, ce qui détruit la marge et l''image.

Enfin, le contrôle : on mesure la notoriété avant et après la campagne par une petite enquête, et l''on suit les ventes par zone. Sans mesure, impossible de savoir si le budget a été bien employé.

## 1:18:00 – 1:26:00 · Correction commentée d''un exercice

Charges fixes 18 millions, prix 5 000, coût variable 3 500. Marge unitaire 1 500, taux 30 %. Seuil : 12 000 unités, 60 millions. Avec 15 000 unités : résultat 4,5 millions ; indice de sécurité 20 % ; point mort 9,6 mois, vers la mi-octobre. Erreur fréquente : diviser les charges fixes par le prix de vente au lieu de la marge unitaire. Vérifiez toujours par le calcul inverse : 12 000 fois 1 500 égale bien 18 millions.

## 1:26:00 – 1:30:00 · Synthèse et évaluation finale

Retenez : marge sur le coût, marque sur le prix ; seuil égale charges fixes sur taux de marge sur coûts variables ; décider sur la marge ; cascade des prix ; CPM pour comparer.

- Question 1 : coût 400, prix 600 : taux de marque ? Réponse : 33,3 %.
- Question 2 : seuil en valeur avec 36 millions de charges fixes et un taux de marge sur coûts variables d''un tiers ? Réponse : 108 millions.
- Question 3 : citez les trois stratégies de distribution. Réponse : intensive, sélective, exclusive.
- Question 4 : 3 millions pour 1 million de contacts : CPM ? Réponse : 3 000 francs.
- Question 5 : une hausse de prix qui fait baisser le chiffre d''affaires est-elle forcément mauvaise ? Réponse : non, si la marge totale augmente.

Merci et bon travail.', 'video', 90, false, 70
from public.courses c where c.slug = 'lic-mkt-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Marketing opérationnel');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Marketing digital', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 2 en marketing, commerce, gestion.
- Objectifs : distinguer médias possédés, payés et gagnés ; construire une ligne éditoriale ; expliquer SEO et SEA ; calculer et interpréter CTR, CPC, taux de conversion, CPA, ROAS, ROI ; analyser mobile money et e-commerce en Afrique.
- Matériel : diaporama, captures d''écran fictives d''une page de réseau social, calculatrice.
- Prérequis : leçon « Marketing digital : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour à toutes et à tous. Vous passez tous plusieurs heures par jour sur votre téléphone : aujourd''hui, nous allons regarder cet écran avec les yeux d''un professionnel du marketing. Notre fil rouge : Teranga Mode, boutique fictive de prêt-à-porter à Dakar, qui vend en magasin et de plus en plus en ligne.

Visuel : diapositive titre et plan : écosystème, réseaux sociaux, référencement, indicateurs, mobile money et e-commerce.

## 05:00 – 15:00 · L''écosystème digital

Trois types de médias. Les médias possédés : la page de Teranga Mode, son site, sa liste de clients sur la messagerie. Elle les contrôle. Les médias payés : les publications sponsorisées et les annonces sur les moteurs de recherche. Elle les achète. Les médias gagnés : les avis, les partages, une cliente qui publie une photo de sa tenue. Elle les mérite. La stratégie consiste à combiner les trois : on paie pour amener des gens vers ce que l''on possède, et l''on soigne l''expérience pour gagner des recommandations.

Point clé pour l''Afrique de l''Ouest : on est « mobile d''abord ». La majorité des clients découvre, compare et commande depuis un téléphone, souvent avec une connexion limitée. Donc des images légères, des vidéos courtes, des pages rapides, et la messagerie comme canal de vente.

## 15:00 – 28:00 · Les réseaux sociaux

Une ligne éditoriale répond à quatre questions : de quoi parle-t-on, sur quel ton, à quelle fréquence, dans quelle langue ? Pour Teranga Mode : conseils de style, coulisses de l''atelier, présentation des nouveautés, témoignages de clientes, quelques offres. Ton chaleureux, en français avec des expressions en wolof. Rythme : trois à quatre publications par semaine, plus des vidéos courtes le week-end avant les cérémonies.

L''animation de communauté est essentielle : répondre aux messages dans l''heure si possible, remercier, et traiter les critiques publiquement avec calme, puis en privé pour régler le problème. Une critique bien traitée peut devenir une preuve de sérieux.

Calcul du taux d''engagement. 1 250 interactions pour 25 000 abonnés : 5 %. Mais attention à la base. Si une autre publication touche 16 000 personnes sur 40 000 abonnés avec 1 800 interactions, le taux est de 4,5 % par abonné et de 11,25 % par personne touchée. Dans une copie, précisez toujours la base.

Les influenceurs : choisissez-les pour la proximité avec la cible, pas seulement pour le nombre d''abonnés, et exigez que le partenariat commercial soit clairement signalé.

## 28:00 – 40:00 · Le référencement

Le référencement naturel, ou SEO, consiste à apparaître dans les résultats non payants des moteurs de recherche. Pour Teranga Mode, cela signifie des pages produits avec des titres clairs comme « robe en wax pour mariage », des textes qui répondent aux questions des clientes, un site rapide sur mobile, et des liens depuis des blogs de mode. C''est lent, plusieurs mois, mais durable.

Le référencement payant, ou SEA : on achète des mots-clés et l''on paie à chaque clic. Effet immédiat, utile pour un lancement ou une période de fête, mais tout s''arrête quand le budget s''arrête.

Enfin le référencement local : une fiche d''établissement complète avec adresse, horaires, photos et avis. Quand quelqu''un cherche « boutique de mode à Dakar » sur son téléphone, c''est souvent cette fiche qui apparaît en premier.

## 40:00 – 45:00 · Quiz interactif

Mettez en pause.

- Question 1 : un partage spontané par une cliente, c''est quel type de média ? Réponse : un média gagné.
- Question 2 : SEO ou SEA pour un effet immédiat ? Réponse : SEA.
- Question 3 : 600 interactions pour 20 000 abonnés : taux d''engagement par abonné ? Réponse : 3 %.

## 45:00 – 1:05:00 · Les indicateurs : exercice commenté

Visuel : l''entonnoir de conversion, impressions, clics, commandes.

Teranga Mode dépense 450 000 francs. 200 000 impressions, 3 000 clics, 90 commandes, panier moyen 15 000 francs.

CTR : 3 000 sur 200 000, soit 1,5 %. Il mesure l''attractivité de l''annonce. CPC : 450 000 sur 3 000, soit 150 francs. Taux de conversion : 90 sur 3 000, soit 3 %. Il mesure l''efficacité de la page et de l''offre. CPA : 450 000 sur 90, soit 5 000 francs pour obtenir une commande. Chiffre d''affaires : 90 fois 15 000, soit 1 350 000. ROAS : 1 350 000 sur 450 000, soit 3. Chaque franc dépensé génère trois francs de ventes.

Est-ce rentable ? Avec un taux de marge brute de 40 %, la marge est de 540 000 francs. ROI : 540 000 moins 450 000, divisé par 450 000, soit 20 %. Oui, c''est rentable.

Deuxième campagne : 120 000 impressions, 2 400 clics, 360 000 francs, 48 commandes à 20 000 francs, marge de 35 %. CTR 2 %, CPC 150, conversion 2 %, CPA 7 500, chiffre d''affaires 960 000, ROAS 2,67. Marge : 336 000 francs, inférieure à la dépense. ROI : moins 6,7 %. La campagne attire bien, mais convertit mal. Diagnostic : vérifier la page produit, les prix affichés, la simplicité de la commande et le mode de paiement.

Seuil de rentabilité d''une campagne : il faut que la marge couvre la dépense. Avec 25 % de taux de marque et 500 000 francs dépensés, il faut au moins 2 millions de chiffre d''affaires.

Comment améliorer ces indicateurs ? On procède par tests. Le test A/B consiste à diffuser deux versions d''une annonce, par exemple deux photos ou deux accroches, à deux groupes comparables, puis à garder celle qui obtient le meilleur taux de conversion. On teste une seule différence à la fois, sinon on ne sait pas ce qui a fait la différence. On suit ensuite un petit tableau de bord hebdomadaire : dépense, impressions, clics, commandes, chiffre d''affaires, marge, et les ratios associés. Une colonne commentaire explique les variations : fête, rupture de stock, nouvelle annonce.

## 1:05:00 – 1:20:00 · Mobile money et e-commerce en Afrique

Le mobile money a transformé le commerce. On peut payer à distance sans carte bancaire, la trace du paiement est conservée, et le commerçant manipule moins d''espèces. Dans l''espace UEMOA, la BCEAO encadre la monnaie électronique et les services de paiement. Pour le marketeur, deux conséquences : proposer le paiement mobile pour faciliter l''achat, et intégrer les frais dans la marge. Avec un taux de frais de 1 %, fictif pour l''exemple, 1 350 000 francs encaissés coûtent 13 500 francs de frais.

L''e-commerce africain a ses propres règles. Beaucoup de commandes passent par la messagerie : on envoie une photo, on discute, on confirme. Le paiement à la livraison reste courant par manque de confiance, avec un risque de refus à la porte. La livraison est difficile : adresses imprécises, embouteillages, coûts élevés pour de petites commandes.

Le taux de refus a un coût. Si Teranga Mode expédie 200 colis par mois avec un coût de livraison de 1 500 francs, fictif pour l''exemple, et que 20 % sont refusés, elle perd 40 livraisons, soit 60 000 francs, sans compter le temps et les produits abîmés.

Solutions : confirmer chaque commande par appel ou message, demander un acompte par paiement mobile avec un petit avantage, regrouper les tournées par quartier, utiliser des points relais dans des boutiques partenaires, et publier une politique de retour claire.

## 1:20:00 – 1:26:00 · Correction commentée d''un cas

Une épicerie fine fictive de Dakar : livraisons en retard, 20 % de commandes refusées. Correction : créneaux de livraison annoncés et respectés, suivi par message, acompte ou paiement mobile pour les nouveaux clients, liste des clients à risque. Ce qui fait la différence : chiffrer l''enjeu. Si 20 % des commandes sont refusées, ce sont des frais de livraison perdus et des produits frais parfois invendables.

## 1:26:00 – 1:30:00 · Synthèse et évaluation finale

Retenez : possédé, payé, gagné ; mobile d''abord ; SEO, SEA, local ; l''entonnoir et ses indicateurs ; la marge, juge final ; mobile money et logistique.

- Question 1 : 200 000 impressions et 4 000 clics : CTR ? Réponse : 2 %.
- Question 2 : 300 000 francs pour 60 commandes : CPA ? Réponse : 5 000 francs.
- Question 3 : ventes 900 000, dépense 300 000 : ROAS ? Réponse : 3.
- Question 4 : pourquoi un ROAS de 2 peut-il signifier une perte ? Réponse : parce que si le taux de marge est inférieur à 50 %, la marge générée est inférieure à la dépense.
- Question 5 : citez deux solutions contre les refus à la livraison. Réponse : confirmation de commande et acompte par paiement mobile.

Merci à toutes et à tous, et bonne préparation.', 'video', 90, false, 80
from public.courses c where c.slug = 'lic-mkt-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Marketing digital');
