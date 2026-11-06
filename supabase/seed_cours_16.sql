-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Cours (partie 16/21). À exécuter après seed.sql.

-- Cours : Finance Master 1 : évaluation, ingénierie financière et gestion de portefeuille
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'mas-fin-m1', (select id from public.levels where name = 'Master 1'), null, 'Finance', 'Finance Master 1 : évaluation, ingénierie financière et gestion de portefeuille', 'Cours de préparation aux examens de Master 1 Finance : évaluation d''entreprise approfondie (DCF, multiples, approche patrimoniale), ingénierie financière et fusions-acquisitions, gestion de portefeuille et marchés financiers avancés. Pour étudiants de Master 1 ayant déjà validé les bases de la Licence Finance (analyse financière, VAN/TRI, CMPC). Cas d''entreprise sénégalais fictifs chiffrés et vérifiés.', true, 751
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Master 1 en Finance', '## Objectifs de la leçon

- Comprendre ce que le Master 1 Finance exige de plus que la Licence : analyse critique, autonomie, rigueur méthodologique.
- Identifier les trois matières avancées de l''année et leur articulation avec le mémoire ou le stage.
- Construire un plan de révision réaliste sur six semaines avant les examens.

## Le Master 1 Finance : ce qui change par rapport à la Licence

En Licence, vous avez appris à calculer : VAN, TRI, coût moyen pondéré du capital, ratios d''analyse financière, bases des marchés financiers. Le Master 1 part du principe que ces outils sont maîtrisés et vous demande autre chose : les mobiliser dans des situations ambiguës, où plusieurs méthodes donnent des réponses différentes et où il faut argumenter un choix.

Trois évolutions marquent le passage en M1.

- Le raisonnement en incertitude plutôt qu''en certitude : on ne vous donne plus un taux d''actualisation unique à appliquer, on vous demande de le justifier, de tester sa sensibilité, de discuter une fourchette de valeurs.
- La convergence des méthodes : en évaluation d''entreprise par exemple, on attend que vous croisiez approche par les flux (DCF), approche par les comparables (multiples) et approche patrimoniale, puis que vous expliquiez les écarts plutôt que de choisir un seul chiffre.
- L''ouverture vers la décision d''entreprise réelle : fusion-acquisition, montage financier, gestion de portefeuille ne sont plus des exercices isolés mais des cas où une banque, un fonds ou une direction financière doit trancher avec des informations incomplètes.

Le Master 1 Finance prépare aussi, selon les établissements, à un mémoire de recherche appliquée ou professionnel et, souvent, à un stage en banque, en cabinet d''audit, en direction financière d''entreprise ou en société de gestion. Même quand le mémoire est soutenu en fin de M2, le M1 est le moment où l''on choisit son thème et où l''on commence la revue de littérature : un diagnostic financier approfondi, une opération de croissance externe observée en stage, ou une problématique de gestion de portefeuille sont des pistes classiques.

## Les trois matières avancées de l''année

Ce cours d''examen couvre les trois matières clés du M1 Finance, sans répéter ce qui a déjà été vu en Licence.

- Évaluation d''entreprise approfondie : la méthode des flux de trésorerie actualisés (DCF), les multiples de comparables boursiers et transactionnels, et l''approche patrimoniale avec goodwill. Vous saurez produire une fourchette de valeur argumentée pour une entreprise, pas un chiffre isolé.
- Ingénierie financière et fusions-acquisitions : comment structurer une opération de rachat, calculer une parité d''échange, mesurer l''effet dilutif ou relutif sur le bénéfice par action, et comprendre la mécanique d''un rachat par effet de levier (LBO).
- Gestion de portefeuille et marchés financiers avancés : diversification, construction d''un portefeuille de deux actifs, frontière efficiente simplifiée, et modèle d''évaluation des actifs financiers (CAPM) appliqué au calcul du rendement exigé d''une action.

Ces trois blocs ne sont pas cloisonnés : un même cas d''entreprise peut mobiliser l''évaluation pour fixer un prix de rachat, l''ingénierie financière pour structurer l''opération, et la gestion de portefeuille pour analyser l''impact sur un investisseur minoritaire. Les examens de M1 testent justement cette capacité à faire dialoguer les matières.

## Mémoire, stage et études de cas : la méthode de travail avancée

La méthode de travail change de nature en Master. Trois outils reviennent sans cesse, aussi bien dans les examens que dans le mémoire.

- Le cas d''entreprise complexe : un énoncé long, avec des informations parfois redondantes ou à trier, qui imite un dossier réel (états financiers, rapport annuel, communiqué de presse d''une opération). Le travail consiste à extraire les données utiles avant de calculer.
- La revue de littérature courte : avant de résoudre un cas, un bon candidat rappelle en deux ou trois phrases le cadre théorique mobilisé (par exemple, pourquoi le CAPM suppose des marchés efficients et ce que cela implique pour l''interprétation du bêta) ; cela montre la maîtrise conceptuelle, pas seulement le calcul.
- Le business case argumenté : conclure un exercice non par un chiffre seul, mais par une recommandation structurée (acheter, vendre, refuser l''offre, renégocier la parité), avec les limites de l''analyse clairement énoncées.

Pour le mémoire professionnel, cette méthode se prolonge sur plusieurs mois : poser une problématique précise, construire une méthodologie (étude de cas unique, comparaison d''entreprises, entretiens), collecter des données vérifiables, puis rédiger en citant ses sources. Un mémoire sur « l''évaluation des PME non cotées en zone UEMOA » par exemple devra justifier pourquoi le DCF est privilégié sur le marché par rapport aux multiples de marchés boursiers peu profonds.

## Plan de révision sur six semaines

Un plan de révision pour l''examen de M1 Finance doit équilibrer calcul, compréhension conceptuelle et entraînement sur cas complexes.

- Semaines 1 et 2 : reprise active de l''évaluation d''entreprise. Refaites un DCF complet à la main, un multiple de comparables, une approche patrimoniale avec goodwill, sur un même cas, et comparez les résultats.
- Semaines 3 et 4 : ingénierie financière et fusions-acquisitions. Entraînez-vous sur des parités d''échange, des calculs de dilution ou relution du bénéfice par action, et un montage LBO simple avec plan de remboursement de dette.
- Semaine 5 : gestion de portefeuille. Reprenez les formules de variance et de covariance d''un portefeuille à deux actifs, le calcul du bêta et du rendement attendu par le CAPM, et le ratio de Sharpe.
- Semaine 6 : entraînement croisé sur des sujets type combinant les trois matières, dans les conditions de l''examen (temps limité, calculatrice simple, pas de formulaire fourni dans la plupart des cas).

Chaque semaine, terminez par un exercice chronométré et un corrigé détaillé, en notant systématiquement les erreurs récurrentes : oubli de l''impôt sur une économie fiscale, confusion entre valeur d''entreprise et valeur des capitaux propres, erreur de signe dans un flux de trésorerie.

## Points clés

- Le Master 1 exige de croiser plusieurs méthodes et d''argumenter les écarts, pas de produire un chiffre unique.
- Trois matières structurent l''année : évaluation d''entreprise, ingénierie financière et fusions-acquisitions, gestion de portefeuille et marchés financiers avancés.
- Le mémoire démarre souvent en M1 par le choix du thème et une première revue de littérature.
- La révision doit combiner calcul rigoureux, rappel conceptuel et entraînement chronométré sur cas complexes.

## Exercices

1. Expliquez en trois phrases pourquoi un évaluateur sérieux calcule la valeur d''une entreprise par plusieurs méthodes plutôt qu''une seule.
2. Citez les trois matières avancées du programme de M1 Finance présentées dans cette leçon.
3. Pourquoi la distinction entre valeur d''entreprise et valeur des capitaux propres est-elle centrale en évaluation ?
4. Proposez un découpage de six semaines de révision adapté à votre propre emploi du temps, en gardant la logique de cette leçon.
5. Donnez un exemple de thème de mémoire professionnel en finance qui mobiliserait à la fois l''évaluation d''entreprise et la gestion de portefeuille.

## Corrigé

1. Chaque méthode repose sur des hypothèses différentes (flux futurs actualisés pour le DCF, comparaison de marché pour les multiples, patrimoine comptable corrigé pour l''approche patrimoniale) ; elles peuvent diverger fortement, et comparer les résultats permet de détecter une hypothèse trop optimiste ou un comparable mal choisi, puis de proposer une fourchette de valeur argumentée plutôt qu''un chiffre fragile.
2. Évaluation d''entreprise approfondie ; ingénierie financière et fusions-acquisitions ; gestion de portefeuille et marchés financiers avancés.
3. La valeur d''entreprise rémunère l''ensemble des financeurs (actionnaires et créanciers), alors que la valeur des capitaux propres ne rémunère que les actionnaires ; confondre les deux conduit à surestimer ou sous-estimer le prix réellement payé pour acquérir le contrôle d''une société, car il faut toujours retrancher la dette financière nette de la valeur d''entreprise pour obtenir la valeur des capitaux propres.
4. Réponse libre ; un bon plan conserve la progression proposée (évaluation, puis ingénierie financière, puis portefeuille, puis entraînement croisé) et prévoit un exercice chronométré chaque semaine.
5. Exemple possible : « L''évaluation des cibles de croissance externe par les fonds d''investissement actifs en zone UEMOA et son impact sur la composition des portefeuilles institutionnels », qui combine évaluation (comment chiffrer la cible), ingénierie financière (comment structurer le rachat) et gestion de portefeuille (comment le fonds pilote son risque global).', 'texte', 45, true, 10
from public.courses c where c.slug = 'mas-fin-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Master 1 en Finance');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Évaluation d''entreprise approfondie : l''essentiel pour l''examen', '## Objectifs de la leçon

- Construire une évaluation par les flux de trésorerie actualisés (DCF) et en interpréter les résultats.
- Appliquer la méthode des multiples et comprendre ses limites.
- Mettre en œuvre l''approche patrimoniale avec goodwill.
- Croiser les trois méthodes pour une fourchette de valeur argumentée.

Tous les taux (actualisation, croissance, multiples, rémunération des capitaux) sont fictifs pour l''exemple.

## Fiche 1 : la méthode DCF (discounted cash flows)

Le DCF évalue une entreprise par la valeur actuelle des flux de trésorerie disponibles qu''elle générera, augmentée d''une valeur terminale qui capture ce qui se passe après l''horizon explicite de prévision.

- FCF = résultat d''exploitation après impôt + dotations aux amortissements − variation du BFR − investissements.
- On actualise chaque flux au coût moyen pondéré du capital (CMPC), taux reflétant le risque de l''activité.
- Valeur terminale par le modèle de Gordon-Shapiro : VT = FCF de la dernière année × (1 + g) / (CMPC − g), avec g strictement inférieur au CMPC.
- La valeur d''entreprise (VE) est la somme des flux actualisés et de la VT actualisée ; la valeur des capitaux propres s''obtient en retranchant la dette financière nette.

Cas : Teranga Agro-Transformation SA, entreprise fictive de Thiès transformant des céréales locales, est évaluée pour une prise de participation minoritaire. FCF prévisionnels sur 5 ans (millions de FCFA) : 420, 462, 498, 530, 556. CMPC retenu : 12 %. Croissance à long terme : 2,5 %.

- Flux actualisés : année 1 : 420 / 1,12 = 375,0 ; année 2 : 462 / 1,12² = 368,3 ; année 3 : 498 / 1,12³ = 354,5 ; année 4 : 530 / 1,12⁴ = 336,8 ; année 5 : 556 / 1,12⁵ = 315,5. Somme des flux actualisés : 1 750,1.
- Valeur terminale en fin d''année 5 : 556 × 1,025 / (0,12 − 0,025) = 5 998,9. Actualisée sur 5 ans : 5 998,9 / 1,12⁵ = 3 404,0.
- Valeur d''entreprise : 1 750,1 + 3 404,0 = 5 154,0 millions de FCFA.
- Dette financière nette au bilan : 650 millions. Valeur des capitaux propres : 5 154,0 − 650 = 4 504,0 millions de FCFA.
- Avec 2 000 000 d''actions en circulation, la valeur par action est de 4 504,0 × 1 000 000 / 2 000 000 = 2 252 FCFA.

Le DCF est sensible au CMPC et à la croissance à l''infini : un bon candidat teste toujours une fourchette de ces deux paramètres plutôt qu''un seul résultat.

## Fiche 2 : la méthode des multiples de comparables

Cette méthode évalue l''entreprise par comparaison avec des sociétés cotées ou des transactions récentes du même secteur, en appliquant un multiple de marché à un agrégat de l''entreprise à évaluer.

- Multiple d''EV/EBITDA : valeur d''entreprise rapportée à l''excédent brut d''exploitation, peu sensible aux politiques d''amortissement et à la structure financière.
- Multiple de PER : capitalisation rapportée au résultat net ; donne directement une valeur des capitaux propres.
- Choix des comparables : entreprises de secteur, taille et rentabilité proches ; en Afrique de l''Ouest, peu de sociétés cotées sont comparables, ce qui justifie de croiser cette méthode avec le DCF.

Cas (suite) : l''EBITDA de Teranga Agro-Transformation est de 650 millions de FCFA et le résultat net de 310 millions. Un échantillon de comparables agroalimentaires affiche un multiple moyen EV/EBITDA de 7,4 et un PER moyen de 15,2 (multiples fictifs pour l''exemple).

- Valeur d''entreprise par le multiple d''EBITDA : 650 × 7,4 = 4 810,0 millions. Valeur des capitaux propres : 4 810,0 − 650 = 4 160,0 millions.
- Valeur des capitaux propres par le PER : 310 × 15,2 = 4 712,0 millions.

Les deux approches par multiples donnent 4 160 et 4 712 millions, à comparer aux 4 504 millions du DCF : l''écart reste raisonnable (moins de 10 % autour du DCF), ce qui renforce la crédibilité de la fourchette.

## Fiche 3 : l''approche patrimoniale et le goodwill

L''approche patrimoniale part de l''actif net comptable corrigé (ANC corrigé), c''est-à-dire les capitaux propres comptables retraités des plus ou moins-values latentes sur les actifs et des éléments hors bilan significatifs.

Cette méthode valorise le patrimoine existant mais ignore la capacité de l''entreprise à créer de la valeur future ; on lui ajoute donc un goodwill (survaleur), estimé par la méthode des rentes abrégées.

- Rente annuelle du goodwill = résultat courant prévisionnel − (taux de rémunération normatif des capitaux × ANC corrigé). Ce taux représente ce qu''un investisseur exigerait pour un placement comparable sans l''avantage concurrentiel de l''entreprise.
- On actualise cette rente sur un horizon limité (3 à 8 ans), avec la formule de l''annuité : goodwill = rente × [1 − (1 + i)⁻ⁿ] / i.

Cas (suite) : l''ANC comptable de Teranga Agro-Transformation est de 2 800 millions de FCFA ; une plus-value latente nette de 380 millions est identifiée sur un terrain sous-évalué au bilan. ANC corrigé : 2 800 + 380 = 3 180 millions. Résultat courant prévisionnel : 400 millions, taux normatif retenu de 9 %, horizon d''actualisation de 5 ans à 12 %.

- Rente du goodwill : 400 − (0,09 × 3 180) = 400 − 286,2 = 113,8 millions par an.
- Facteur d''annuité sur 5 ans à 12 % : [1 − 1,12⁻⁵] / 0,12 = 3,6048.
- Goodwill : 113,8 × 3,6048 = 410,2 millions.
- Valeur globale de l''entreprise (patrimoniale + goodwill) : 3 180 + 410,2 = 3 590,2 millions de FCFA.

## Fiche 4 : synthèse et fourchette de valeur

Pour Teranga Agro-Transformation : DCF 4 504,0 ; multiple d''EBITDA 4 160,0 ; PER 4 712,0 ; patrimoniale avec goodwill 3 590,2 millions de FCFA. L''approche patrimoniale donne une valeur plus prudente car elle valorise peu la croissance future ; elle sert de plancher de négociation. La fourchette raisonnable, en excluant le cas le plus prudent, se situe entre 4 160 et 4 712 millions de FCFA, avec le DCF comme estimation centrale.

- Toujours indiquer les hypothèses retenues : une valeur sans hypothèses explicites n''a pas de valeur probante à l''examen.
- Expliquer les écarts entre méthodes plutôt que les ignorer : c''est ce qui distingue une copie de M1 d''une copie de Licence.

## Exercices pratiques

1. Flux disponibles de 300, 330 et 360 millions de FCFA sur 3 ans, CMPC de 10 %, croissance à l''infini de 3 %. Calculez la valeur d''entreprise.
2. Pourquoi l''EV/EBITDA est-il préféré au PER pour comparer des entreprises à structures financières différentes ?
3. ANC comptable de 1 500 millions, moins-value latente nette de 60 millions, résultat courant prévisionnel de 180 millions, taux normatif de 8 %, horizon de 4 ans à 10 %. Calculez l''ANC corrigé, la rente et le goodwill.
4. Pourquoi la valeur terminale pèse-t-elle souvent plus de 60 % d''un DCF, et quel risque cela pose-t-il ?
5. Cas pratique : Baobab Distribution SA, entreprise fictive dakaroise, prévoit des flux de 500, 540, 580, 610, 630 millions sur 5 ans, CMPC 13 %, croissance 2 %, dette nette 900 millions, 1 500 000 actions. Calculez la valeur d''entreprise, des capitaux propres, par action. Son EBITDA est de 720 millions, multiple sectoriel 6,8 : comparez au DCF.

## Corrigé

1. Flux actualisés : 272,7 + 272,7 + 270,5 = 815,9. Valeur terminale : 360×1,03/(0,07) = 5 297,1, actualisée : 3 979,4. Valeur d''entreprise : 4 795,3 millions.
2. L''EV/EBITDA compare la valeur d''entreprise, indépendante du financement, à un agrégat avant frais financiers et impôt ; il reste comparable entre entreprises diversement endettées, contrairement au PER qui dépend de la charge d''intérêts.
3. ANC corrigé : 1 440 millions. Rente : 180 − 115,2 = 64,8 millions. Goodwill : 64,8 × 3,1699 = 205,4 millions ; valeur globale : 1 645,4 millions.
4. Les flux explicites ne portent que sur quelques années alors que l''entreprise dure indéfiniment ; une petite variation du couple CMPC/croissance change radicalement le résultat, d''où l''importance d''une analyse de sensibilité.
5. Flux actualisés à 13 % : 1 983,5. Valeur terminale actualisée : 3 171,2. Valeur d''entreprise : 5 154,7 millions. Capitaux propres : 4 254,7 millions. Par action : environ 2 836,5 FCFA. Par comparables : 4 896,0 millions, proche du DCF (écart inférieur à 5 %).', 'texte', 50, false, 20
from public.courses c where c.slug = 'mas-fin-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Évaluation d''entreprise approfondie : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Ingénierie financière et fusions-acquisitions : l''essentiel pour l''examen', '## Objectifs de la leçon

- Calculer une parité d''échange et mesurer l''effet dilutif ou relutif d''une fusion sur le bénéfice par action.
- Comprendre la logique d''un rachat par effet de levier (LBO) et calculer le taux de rendement interne du fonds.
- Identifier les grandes étapes et les risques d''une opération de fusion-acquisition.

Tous les cours, primes et taux de cette leçon sont fictifs pour l''exemple.

## Fiche 1 : la parité d''échange et l''effet sur le bénéfice par action

Dans une fusion par échange d''actions, l''acquéreur rémunère les actionnaires de la cible en nouvelles actions plutôt qu''en numéraire. La parité d''échange fixe combien d''actions de l''acquéreur sont remises pour une action de la cible.

- Prix offert par action de la cible = cours de la cible × (1 + prime de contrôle). La prime rémunère la perte de l''autonomie et l''anticipation de synergies.
- Parité d''échange = prix offert par action de la cible / cours de l''acquéreur.
- Nouvelles actions émises = nombre d''actions de la cible × parité. Elles s''ajoutent aux actions existantes de l''acquéreur pour former le nouveau capital.
- Bénéfice par action (BPA) post-fusion = résultat net consolidé (résultats cumulés + synergies nettes d''impôt) / nombre d''actions total post-fusion. On parle de relution si ce BPA dépasse le BPA de l''acquéreur avant l''opération, de dilution dans le cas contraire.

Cas : Sahel Industries SA (acquéreur) souhaite racheter Delta Emballages SA (cible), deux entreprises fictives. Sahel Industries vaut 9 000 millions de FCFA de capitaux propres pour 3 000 000 d''actions, soit un cours de 3 000 FCFA. Delta Emballages vaut 2 400 millions pour 1 000 000 d''actions, soit un cours de 2 400 FCFA. Une prime de contrôle de 20 % est négociée.

- Prix offert par action de Delta Emballages : 2 400 × 1,20 = 2 880 FCFA.
- Parité d''échange : 2 880 / 3 000 = 0,96 action Sahel Industries pour 1 action Delta Emballages.
- Nouvelles actions émises : 1 000 000 × 0,96 = 960 000. Capital post-fusion : 3 000 000 + 960 000 = 3 960 000 actions.
- Résultat net consolidé : résultat de Sahel (620) + résultat de Delta (180) + synergies nettes d''impôt (45, fictives) = 845 millions de FCFA.
- BPA de Sahel avant l''opération : 620 × 1 000 000 / 3 000 000 = 206,7 FCFA. BPA post-fusion : 845 × 1 000 000 / 3 960 000 = 213,4 FCFA.
- Variation : (213,4 / 206,7 − 1) × 100 = +3,25 %. L''opération est relutive pour les actionnaires de Sahel Industries.

Une opération peut être relutive à court terme sans être créatrice de valeur réelle : si la prime payée est trop élevée ou les synergies surestimées, la relution comptable masque une destruction de valeur. L''examen attend que vous signaliez cette limite.

## Fiche 2 : le rachat par effet de levier (LBO)

Un LBO (leveraged buy-out) consiste à racheter une entreprise principalement par de la dette logée dans une société holding créée pour l''occasion, remboursée ensuite par les flux de trésorerie de la cible. L''effet de levier amplifie le rendement des fonds propres investis par le fonds acquéreur, à condition que la rentabilité économique de la cible dépasse le coût de la dette.

- Montage : le fonds apporte des fonds propres, la banque apporte une dette senior ; la holding achète les actions de la cible, puis la dette est remboursée par les dividendes remontés de la cible, alimentés par son flux de trésorerie disponible.
- Le risque principal est le risque de remboursement : si l''activité se dégrade, le service de la dette (intérêts + capital) peut dépasser le flux disponible.
- Le rendement du fonds se mesure par le taux de rendement interne (TRI) sur la durée de détention et par le multiple de l''investissement (valeur de sortie des fonds propres / apport initial).

Cas : un fonds rachète Logis-Services, PME fictive, pour une valeur d''entreprise de 1 000 millions de FCFA, financée par 650 millions de dette senior (taux fictif de 9 %) et 350 millions de fonds propres du fonds. L''EBITDA initial est de 220 millions, avec une croissance annuelle de 5 %, et le flux disponible avant service de la dette est approché à 80 % de l''EBITDA.

- Chaque année, le flux disponible rembourse en priorité les intérêts puis le capital restant dû. Sur 5 ans, la dette de 650 millions est intégralement remboursée (calcul détaillé en vidéo) grâce à la croissance de l''EBITDA.
- Sortie en année 5 : EBITDA de 267,4 millions × multiple de sortie de 6,0 = valeur d''entreprise de 1 604,5 millions. Dette résiduelle nulle, donc valeur des fonds propres à la sortie = 1 604,5 millions.
- Multiple de l''investissement : 1 604,5 / 350 = 4,58 fois l''apport initial.
- TRI sur 5 ans : (4,58)^(1/5) − 1 ≈ 35,6 % par an.

Ce rendement élevé illustre l''effet de levier : la valeur d''entreprise n''a progressé que de 1 000 à 1 604,5 millions (+60 %), mais grâce au remboursement intégral de la dette, les fonds propres du fonds sont passés de 350 à 1 604,5 millions. Ce résultat suppose une exécution sans accroc du plan de remboursement : toute dégradation de l''EBITDA réduit fortement le rendement.

## Fiche 3 : les grandes étapes d''une opération de fusion-acquisition

- Phase préparatoire : identification de la cible, lettre d''intention, audit d''acquisition (due diligence) financier, juridique, fiscal et social.
- Négociation : valorisation (voir la leçon précédente), structuration de l''offre (numéraire, échange d''actions, ou mixte), garanties d''actif et de passif protégeant l''acquéreur contre des passifs cachés.
- Financement : choix entre autofinancement, dette, augmentation de capital ou combinaison, en tenant compte de l''impact sur la structure financière et la notation de l''acquéreur.
- Intégration post-acquisition : réalisation effective des synergies annoncées, qui échoue fréquemment par sous-estimation des coûts d''intégration (systèmes d''information, culture d''entreprise, doublons).

## Exercices pratiques

1. Un acquéreur cote 4 000 FCFA, une cible cote 1 800 FCFA. Une prime de 25 % est offerte. Calculez le prix offert par action et la parité d''échange.
2. Expliquez pourquoi une opération relutive sur le BPA n''est pas automatiquement créatrice de valeur.
3. Dans un LBO, pourquoi la dette d''acquisition est-elle logée dans une holding plutôt que directement dans la cible ?
4. Un fonds investit 400 millions de fonds propres dans un LBO et revend sa participation 900 millions 4 ans plus tard. Calculez le multiple d''investissement et le TRI annuel.
5. Cas pratique : Fatick Energie SA (acquéreur, cours 5 000 FCFA, 2 000 000 actions, résultat net 900 millions) rachète Rufisque Solaire SA (cible, cours 3 200 FCFA, 600 000 actions, résultat net 210 millions) avec une prime de 15 % et des synergies nettes d''impôt de 30 millions. Calculez la parité d''échange, le nombre d''actions post-fusion, le BPA avant et après l''opération, et concluez sur la dilution ou la relution.

## Corrigé

1. Prix offert : 1 800 × 1,25 = 2 250 FCFA. Parité : 2 250 / 4 000 = 0,5625 action de l''acquéreur pour 1 action de la cible.
2. Le BPA post-fusion dépend du résultat comptable consolidé et du nombre d''actions, mais pas directement du prix payé ni du risque réellement transféré ; une prime excessive ou des synergies surestimées peuvent produire une relution comptable immédiate tout en détruisant de la valeur économique à moyen terme, notamment si le goodwill comptabilisé doit être déprécié plus tard.
3. Loger la dette dans la holding protège la cible elle-même de la faillite en cas de défaut de la holding, isole le risque financier de l''opération dans une structure dédiée, et permet de rembourser la dette grâce aux dividendes remontés de la cible sans fusionner juridiquement les deux entités.
4. Multiple : 900 / 400 = 2,25. TRI : 2,25^(1/4) − 1 ≈ 22,5 % par an.
5. Prix offert : 3 200 × 1,15 = 3 680 FCFA. Parité : 3 680 / 5 000 = 0,736. Nouvelles actions : 600 000 × 0,736 = 441 600. Actions post-fusion : 2 000 000 + 441 600 = 2 441 600. Résultat consolidé : 900 + 210 + 30 = 1 140 millions. BPA avant : 900 × 1 000 000 / 2 000 000 = 450 FCFA. BPA après : 1 140 × 1 000 000 / 2 441 600 ≈ 466,8 FCFA. L''opération est relutive (+3,7 %).', 'texte', 50, false, 30
from public.courses c where c.slug = 'mas-fin-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Ingénierie financière et fusions-acquisitions : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Gestion de portefeuille et marchés financiers avancés : l''essentiel pour l''examen', '## Objectifs de la leçon

- Calculer le rendement attendu et le risque (variance, écart-type) d''un portefeuille à deux actifs.
- Déterminer le portefeuille de variance minimale et comprendre la logique de la frontière efficiente.
- Appliquer le modèle d''évaluation des actifs financiers (CAPM) pour calculer un rendement exigé et un bêta.
- Calculer et interpréter le ratio de Sharpe.

Tous les rendements, volatilités et corrélations de cette leçon sont fictifs pour l''exemple.

## Fiche 1 : rendement et risque d''un portefeuille à deux actifs

La diversification repose sur un principe simple : combiner des actifs qui ne varient pas parfaitement ensemble réduit le risque total sans réduire proportionnellement le rendement attendu.

- Rendement attendu du portefeuille : E(rp) = wA × E(rA) + wB × E(rB), où wA et wB sont les poids investis dans chaque actif (wA + wB = 1).
- Variance du portefeuille : σp² = wA² × σA² + wB² × σB² + 2 × wA × wB × Cov(A,B), avec Cov(A,B) = corrélation(A,B) × σA × σB.
- Plus la corrélation entre les deux actifs est faible, plus le terme de covariance réduit la variance totale : une corrélation inférieure à 1 crée toujours un gain de diversification.

Cas : un portefeuille combine l''action fictive Sahel Ciments (rendement attendu 14 %, écart-type 22 %) et l''action fictive Teranga Telecom (rendement attendu 9 %, écart-type 12 %), avec une corrélation de 0,30. La covariance est Cov = 0,30 × 0,22 × 0,12 = 0,00792.

- Avec 60 % investis dans Sahel Ciments et 40 % dans Teranga Telecom : E(rp) = 0,6 × 14 % + 0,4 × 9 % = 12,0 %. Variance : 0,6² × 0,22² + 0,4² × 0,12² + 2 × 0,6 × 0,4 × 0,00792 = 0,02354, soit un écart-type de 15,3 %.
- À titre de comparaison, investir 100 % dans Sahel Ciments seul donne un rendement de 14 % pour un écart-type de 22 % : le portefeuille mixte réduit fortement le risque pour une baisse de rendement plus modérée.

## Fiche 2 : le portefeuille de variance minimale et la frontière efficiente

Pour deux actifs, il existe une pondération qui minimise la variance du portefeuille, obtenue en annulant la dérivée de σp² par rapport à wA :

- wA (variance minimale) = (σB² − Cov(A,B)) / (σA² + σB² − 2 × Cov(A,B)).
- En faisant varier wA de 0 % à 100 %, l''ensemble des couples (risque, rendement) obtenus dessine la frontière efficiente simplifiée à deux actifs : chaque point est le meilleur rendement possible pour un niveau de risque donné.

Cas (suite) : avec les données de Sahel Ciments et Teranga Telecom, wA (minimale) = (0,12² − 0,00792) / (0,22² + 0,12² − 2 × 0,00792) = 0,138, donc wB = 0,862. L''écart-type minimal atteint est de 11,6 %, pour un rendement attendu de 9,69 % : ce portefeuille est moins risqué que Teranga Telecom seul (12,0 %) tout en offrant un rendement légèrement supérieur (9,69 % contre 9,0 %), ce qui illustre concrètement le bénéfice de la diversification.

- Tout portefeuille situé sous le point de variance minimale sur la frontière n''est pas efficient : on peut obtenir le même risque ou moins pour un rendement supérieur ailleurs sur la courbe.
- Un investisseur rationnel ne choisit jamais un point inefficient ; son choix final dépend ensuite de son aversion au risque, parmi les portefeuilles efficients.

## Fiche 3 : le CAPM approfondi

Le modèle d''évaluation des actifs financiers relie le rendement exigé d''un actif à son risque non diversifiable, mesuré par le bêta.

- Bêta d''un actif = Cov(rActif, rMarché) / Var(rMarché). Il mesure la sensibilité du rendement de l''actif aux mouvements du marché ; un bêta de 1 signifie un risque de marché identique à la moyenne.
- Rendement exigé par le CAPM : E(r) = rf + β × (E(rm) − rf), où rf est le taux sans risque et E(rm) le rendement attendu du marché. Le terme (E(rm) − rf) est la prime de risque du marché.
- La droite de marché des titres (Security Market Line) représente cette relation linéaire entre bêta et rendement exigé ; un actif situé au-dessus de la droite (rendement attendu réel supérieur au rendement exigé par le CAPM) est jugé sous-évalué.

Cas (suite) : avec un taux sans risque fictif de 5,5 %, un rendement attendu du marché de 12 % et un écart-type du marché de 16 %, le bêta de Sahel Ciments, calculé à partir d''une covariance avec le marché de 0,028, est de 0,028 / 0,16² = 1,094. Le rendement exigé par le CAPM est donc 5,5 % + 1,094 × (12 % − 5,5 %) = 12,61 %. Le rendement attendu réellement estimé pour Sahel Ciments étant de 14 %, l''action apparaît sous-évaluée par rapport à son risque systématique (alpha positif de 1,39 point). Pour Teranga Telecom, avec un bêta de 0,55, le rendement exigé est de 5,5 % + 0,55 × 6,5 % = 9,07 %, très proche du rendement attendu de 9 % : l''action est jugée correctement valorisée.

## Fiche 4 : le ratio de Sharpe

Le ratio de Sharpe mesure le rendement excédentaire obtenu par unité de risque total supporté : Sharpe = (E(r) − rf) / σ. Il permet de comparer des actifs ou des portefeuilles de volatilités différentes.

- Sahel Ciments : (14 % − 5,5 %) / 22 % = 0,386.
- Teranga Telecom : (9 % − 5,5 %) / 12 % = 0,292.
- Sahel Ciments rémunère mieux le risque total malgré sa volatilité plus élevée ; le CAPM, qui ne regarde que le bêta, ignore le risque spécifique diversifiable, d''où l''intérêt de croiser les deux indicateurs.

## Exercices pratiques

1. Deux actifs ont des rendements attendus de 10 % et 6 %, des écart-types de 18 % et 9 %, et une corrélation de 0,2. Pour un portefeuille à 70 % dans le premier actif, calculez le rendement attendu et l''écart-type.
2. Expliquez pourquoi une corrélation négative entre deux actifs est particulièrement recherchée en diversification.
3. Un actif a un bêta de 1,3, le taux sans risque est de 5 % et le rendement attendu du marché de 11 %. Calculez le rendement exigé par le CAPM.
4. Pourquoi un point situé sous le portefeuille de variance minimale sur la frontière efficiente n''est-il jamais un choix rationnel ?
5. Un actif a un rendement attendu de 11 %, un écart-type de 20 % et un taux sans risque de 5 %. Calculez son ratio de Sharpe et comparez-le à celui de Sahel Ciments (0,386) de cette leçon.
6. Cas pratique : les actions fictives Kaolack Transport (rendement 12 %, écart-type 19 %) et Ziguinchor Agro (rendement 7 %, écart-type 10 %) ont une corrélation de 0,15. Calculez la covariance, le rendement et l''écart-type d''un portefeuille à 50/50, puis le poids du portefeuille de variance minimale.

## Corrigé

1. E(rp) = 0,7 × 10 % + 0,3 × 6 % = 8,8 %. Covariance = 0,2 × 0,18 × 0,09 = 0,00324. Variance = 0,7² × 0,18² + 0,3² × 0,09² + 2 × 0,7 × 0,3 × 0,00324 = 0,01797, soit un écart-type de 13,4 %.
2. Une corrélation négative signifie que lorsque le rendement d''un actif baisse, l''autre tend à monter ; la variance du portefeuille peut alors chuter très fortement, parfois en dessous de la variance de l''actif le moins risqué pris isolément, ce qui est le cas le plus favorable pour réduire le risque global.
3. E(r) = 5 % + 1,3 × (11 % − 5 %) = 12,8 %.
4. Parce que pour ce même niveau de risque, il existe toujours, plus haut sur la frontière efficiente, une combinaison des deux actifs offrant un rendement attendu supérieur ; choisir un point inefficient revient à accepter un rendement plus faible sans réduire le risque.
5. Sharpe = (11 % − 5 %) / 20 % = 0,300, inférieur à celui de Sahel Ciments (0,386) : Sahel Ciments rémunère mieux chaque unité de risque total supporté.
6. Covariance = 0,15 × 0,19 × 0,10 = 0,00285. À 50/50 : E(rp) = 9,5 %, variance = 0,5² × 0,19² + 0,5² × 0,10² + 2 × 0,5 × 0,5 × 0,00285 = 0,01295, écart-type ≈ 11,4 %. Poids de variance minimale pour Kaolack Transport : (0,10² − 0,00285) / (0,19² + 0,10² − 2 × 0,00285) ≈ 0,177.', 'texte', 50, false, 40
from public.courses c where c.slug = 'mas-fin-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Gestion de portefeuille et marchés financiers avancés : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Master 1 Finance (entraînement corrigé)', '## Avertissement

Ce sujet est un entraînement non officiel construit pour ce cours, avec un barème indicatif. Il ne remplace pas les annales de votre établissement mais mobilise les trois matières avancées du programme de Master 1 Finance.

## Sujet type d''examen de Master 1 Finance (3 heures, barème indicatif sur 20)

Cas d''entreprise : Casamance Agro-Industries SA (CAI), entreprise fictive de transformation de fruits implantée à Ziguinchor, envisage de racheter sa concurrente Niayes Fruits SA et d''ouvrir son capital à un fonds d''investissement régional.

Données de CAI (acquéreur) : cours de l''action 2 500 FCFA, 4 000 000 d''actions, résultat net 980 millions de FCFA, CMPC retenu 11 %.
Données de Niayes Fruits (cible) : cours de l''action 1 600 FCFA, 1 200 000 actions, résultat net 240 millions de FCFA, EBITDA 420 millions, flux de trésorerie disponibles prévisionnels sur 5 ans de 160, 175, 188, 198, 206 millions de FCFA, croissance à l''infini de 2 %, dette financière nette 280 millions.

## Partie 1 : évaluation de la cible (8 points)

1. Calculez la valeur d''entreprise et la valeur des capitaux propres de Niayes Fruits par la méthode DCF.
2. Un échantillon de comparables affiche un multiple moyen EV/EBITDA de 6,5 (fictif). Calculez la valeur des capitaux propres par cette méthode et comparez au résultat du DCF.
3. Proposez une fourchette de valeur argumentée pour Niayes Fruits.

## Partie 2 : montage de l''opération (7 points)

4. CAI propose une prime de contrôle de 20 % sur le cours de Niayes Fruits et un paiement en actions. Calculez le prix offert par action et la parité d''échange.
5. Calculez le nombre d''actions émises et le BPA de CAI avant et après l''opération, en supposant des synergies nettes d''impôt de 20 millions de FCFA et en retenant le résultat net comptable de la cible (sans retraitement de l''évaluation).
6. L''opération est-elle relutive ou dilutive pour les actionnaires actuels de CAI ? Commentez la limite de cet indicateur.

## Partie 3 : impact pour un investisseur minoritaire (5 points)

7. Un fonds régional envisage d''investir dans l''action CAI après l''opération. Le bêta estimé de CAI est de 1,15, le taux sans risque fictif de 6 % et le rendement attendu du marché régional de 13 %. Calculez le rendement exigé par le CAPM.
8. Si le rendement attendu réellement anticipé pour CAI est de 15 %, commentez la position de l''action par rapport à la droite de marché des titres.

## Exercices pratiques (entraînement complémentaire)

1. Pourquoi est-il recommandé de présenter une fourchette de valeur plutôt qu''un chiffre unique dans un rapport d''évaluation destiné à une négociation ?
2. Dans quel cas une prime de contrôle élevée peut-elle rendre une opération relutive à court terme mais risquée à moyen terme ?
3. Expliquez la différence entre le risque mesuré par le bêta (CAPM) et le risque total mesuré par l''écart-type (ratio de Sharpe).

## Corrigé

1. Flux actualisés à 11 % : 160/1,11=144,1 ; 175/1,11²=142,0 ; 188/1,11³=137,5 ; 198/1,11⁴=130,5 ; 206/1,11⁵=122,2 ; somme=676,3. Valeur terminale : 206×1,02/(0,11−0,02)=2 334,2, actualisée : 2 334,2/1,11⁵=1 385,6. Valeur d''entreprise : 676,3+1 385,6=2 061,9 millions. Capitaux propres : 2 061,9−280=1 781,9 millions.
2. Valeur d''entreprise par multiple : 420×6,5=2 730,0 millions. Capitaux propres : 2 730,0−280=2 450,0 millions, nettement supérieure au DCF (1 781,9 millions) : l''écart (environ 37 %) doit être questionné (prévisions de flux prudentes, ou multiple de comparables trop généreux).
3. Fourchette raisonnable entre 1 781,9 et 2 450,0 millions de FCFA, avec le DCF comme référence prudente si les prévisions sont jugées fiables, sachant que l''écart important appelle à vérifier les deux évaluations avant de conclure.
4. Prix offert : 1 600×1,20=1 920 FCFA. Parité : 1 920/2 500=0,768 action CAI pour 1 action Niayes Fruits.
5. Actions émises : 1 200 000×0,768=921 600. Actions post-fusion : 4 000 000+921 600=4 921 600. Résultat consolidé : 980+240+20=1 240 millions. BPA avant : 980×1 000 000/4 000 000=245 FCFA. BPA après : 1 240×1 000 000/4 921 600≈251,9 FCFA.
6. Variation : (251,9/245−1)×100≈+2,8 % : l''opération est relutive. Limite : cette relution comptable ne garantit pas la création de valeur si la prime de 20 % excède les synergies réellement réalisables, ou si l''intégration de Niayes Fruits échoue partiellement.
7. Rendement exigé CAPM : 6 %+1,15×(13 %−6 %)=14,05 %.
8. Le rendement attendu de 15 % est supérieur au rendement exigé de 14,05 % : l''action CAI se situe au-dessus de la droite de marché des titres, elle apparaît sous-évaluée par rapport à son risque systématique et constitue a priori une opportunité d''investissement pour le fonds, sous réserve que l''estimation de 15 % soit fiable et que le risque spécifique de l''opération de fusion soit correctement intégré par ailleurs.
Exercices complémentaires : 1. Une fourchette reflète l''incertitude réelle sur les hypothèses (taux, croissance, comparables) et laisse une marge de négociation entre acheteur et vendeur plutôt que d''ancrer la discussion sur un chiffre fragile. 2. Quand la prime dépasse la valeur actualisée des synergies réellement atteignables, ou quand elle est financée par une dette qui fragilise la structure financière de l''acquéreur après l''opération. 3. Le bêta ne capture que le risque non diversifiable, celui qui reste après diversification du portefeuille ; l''écart-type capture tout le risque, diversifiable et non diversifiable, ce qui explique qu''un actif très volatil mais peu corrélé au marché puisse avoir un bêta faible et pourtant un ratio de Sharpe informatif sur son risque propre.', 'texte', 55, false, 50
from public.courses c where c.slug = 'mas-fin-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Master 1 Finance (entraînement corrigé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Évaluation d''entreprise approfondie (DCF, multiples, approche patrimoniale)', '## Fiche du cours vidéo

Durée : 1h30. Niveau : Master 1 Finance.
Objectifs : construire une évaluation d''entreprise complète en croisant DCF, multiples et approche patrimoniale, et savoir argumenter une fourchette de valeur devant un jury ou un client.
Matériel : tableau ou diaporama, calculatrice financière ou tableur, le cas Teranga Agro-Transformation de la leçon écrite.
Prérequis : actualisation, notion de CMPC, lecture d''un bilan et d''un compte de résultat.

## 00:00 – 05:00 · Introduction et enjeux

Bonjour à toutes et à tous. Dans cette séance, nous allons évaluer ensemble une entreprise fictive, Teranga Agro-Transformation, en utilisant les trois grandes familles de méthodes que vous devez maîtriser en Master 1 : les flux de trésorerie actualisés, les multiples de comparables et l''approche patrimoniale. L''objectif n''est pas seulement de savoir calculer, mais de comprendre pourquoi un bon évaluateur ne se contente jamais d''un seul chiffre. En entreprise, en banque d''affaires ou en cabinet d''audit, une évaluation sert toujours une décision : fixer un prix de négociation, justifier une parité d''échange, ou documenter un dossier de financement. Si votre chiffre n''est pas défendable, la négociation s''effondre. Gardez votre support de la leçon écrite sous les yeux, nous allons reprendre le même cas en l''approfondissant.

Visuel : diapositive de titre avec les trois méthodes et une flèche vers « fourchette de valeur argumentée ».

## 05:00 – 20:00 · Partie 1 : le DCF pas à pas

Reprenons la logique du DCF. Une entreprise vaut la somme actualisée des flux de trésorerie disponibles qu''elle est capable de générer pour ses financeurs, plus une valeur terminale qui représente tout ce qui se passe après l''horizon de prévision explicite. Pourquoi actualiser ? Parce qu''un flux reçu dans cinq ans vaut moins qu''un flux reçu aujourd''hui, pour deux raisons : la valeur temps de l''argent, et le risque de ne jamais le recevoir.

Pour Teranga Agro-Transformation, nous avons des flux de 420, 462, 498, 530 et 556 millions de FCFA sur cinq ans, un CMPC de 12 % et une croissance à l''infini de 2,5 %. Calculons ensemble, année par année : 420 divisé par 1,12 à la puissance 1 donne 375,0. Je vous invite à mettre le calcul en pause et à refaire ce calcul vous-même avant de continuer. 462 divisé par 1,12 au carré donne 368,3. 498 divisé par 1,12 au cube donne 354,5. 530 divisé par 1,12 à la puissance 4 donne 336,8. Et 556 divisé par 1,12 à la puissance 5 donne 315,5. La somme de ces cinq flux actualisés est de 1 750,1 millions de FCFA.

Maintenant la valeur terminale, souvent le point le plus mal compris des étudiants. On prend le dernier flux, 556, on le fait croître une dernière fois au taux de croissance à l''infini de 2,5 %, puis on divise par l''écart entre le CMPC et cette croissance : 556 fois 1,025 divisé par (0,12 moins 0,025), soit 5 998,9 millions. C''est la valeur, en fin d''année 5, de tous les flux futurs au-delà de l''horizon explicite. Il faut encore l''actualiser sur cinq ans : 5 998,9 divisé par 1,12 à la puissance 5, soit 3 404,0 millions. La valeur d''entreprise totale est donc 1 750,1 plus 3 404,0, soit 5 154,0 millions de FCFA. En retranchant la dette financière nette de 650 millions, nous obtenons une valeur des capitaux propres de 4 504,0 millions, soit 2 252 FCFA par action sur 2 000 000 d''actions.

Visuel : tableau d''actualisation année par année projeté au tableau, avec la ligne de la valeur terminale isolée en couleur.

Point d''attention : notez que la valeur terminale représente 3 404,0 sur 5 154,0 millions, soit presque les deux tiers de la valeur totale. C''est pour cela que le couple CMPC et croissance à l''infini doit toujours être testé en sensibilité : une erreur d''un demi-point sur l''un ou l''autre change fortement le résultat final.

## 20:00 – 35:00 · Partie 2 : les multiples de comparables

Passons à la deuxième méthode. L''idée est différente : au lieu de projeter l''avenir de l''entreprise, on regarde combien le marché paie pour des entreprises comparables aujourd''hui, et on applique ce ratio à notre cible.

Le multiple le plus robuste est l''EV sur EBITDA, la valeur d''entreprise rapportée à l''excédent brut d''exploitation. Pourquoi ce multiple plutôt que le PER ? Parce que l''EBITDA est calculé avant charges financières, avant amortissements et avant impôt : il n''est donc pas déformé par le niveau d''endettement de chaque entreprise ni par ses choix comptables d''amortissement. Le PER, lui, part du résultat net, qui dépend directement de la structure financière de l''entreprise.

Pour Teranga Agro-Transformation, l''EBITDA est de 650 millions, et un échantillon de comparables du secteur agroalimentaire affiche un multiple moyen de 7,4, que je vous rappelle fictif pour l''exercice. La valeur d''entreprise obtenue est 650 fois 7,4, soit 4 810,0 millions. On retranche la même dette nette de 650 millions pour obtenir une valeur des capitaux propres de 4 160,0 millions. Avec le PER moyen de 15,2 appliqué au résultat net de 310 millions, nous obtenons directement une valeur des capitaux propres de 4 712,0 millions.

Visuel : tableau comparatif des trois résultats obtenus jusqu''ici : DCF 4 504,0, multiple EBITDA 4 160,0, PER 4 712,0.

Discussion importante : en Afrique de l''Ouest, trouvez-vous facilement dix entreprises cotées comparables dans un même secteur ? Non, la profondeur de marché est souvent limitée. C''est une vraie limite méthodologique à mentionner systématiquement dans vos copies : les multiples sont utiles comme méthode de recoupement, rarement comme méthode principale isolée.

## 35:00 – 50:00 · Partie 3 : l''approche patrimoniale et le goodwill

Troisième méthode, la plus ancienne historiquement : l''approche patrimoniale. On part des capitaux propres comptables, on les corrige des plus ou moins-values latentes, et on obtient l''actif net comptable corrigé, l''ANC corrigé.

Pour Teranga Agro-Transformation, l''ANC comptable est de 2 800 millions, avec une plus-value latente nette de 380 millions identifiée sur un terrain et des installations sous-évalués au bilan. L''ANC corrigé est donc de 3 180 millions. Mais cette valeur ignore la capacité de l''entreprise à créer de la valeur future au-delà de la rémunération normale de son patrimoine. On ajoute donc un goodwill, calculé ici par la méthode des rentes abrégées.

La rente annuelle du goodwill est égale au résultat courant prévisionnel, 400 millions, moins le taux de rémunération normatif des capitaux, 9 %, multiplié par l''ANC corrigé de 3 180 millions. Cela donne 400 moins 286,2, soit 113,8 millions par an. On actualise cette rente sur un horizon limité, ici cinq ans à 12 %, avec le facteur d''annuité de 3,6048. Le goodwill est donc 113,8 fois 3,6048, soit 410,2 millions. La valeur globale par l''approche patrimoniale est 3 180 plus 410,2, soit 3 590,2 millions de FCFA.

Visuel : schéma en deux blocs, ANC corrigé en bas, goodwill ajouté au-dessus, avec le total encadré.

Remarquez que ce résultat, 3 590,2 millions, est nettement plus prudent que les trois précédents. C''est normal et attendu : l''approche patrimoniale valorise peu la croissance future, elle sert souvent de plancher dans une négociation, pas de référence centrale pour une entreprise en croissance comme Teranga Agro-Transformation.

## 50:00 – 55:00 · Pause et quiz interactif

Prenons cinq minutes de pause active. Répondez à ces trois questions avant de reprendre.

- Question 1 : quelle méthode donne généralement la valeur la plus prudente pour une entreprise en croissance ? Réponse : l''approche patrimoniale, car elle ignore la croissance future non encore matérialisée dans le patrimoine.
- Question 2 : pourquoi l''EV/EBITDA est-il préféré au PER pour comparer deux entreprises diversement endettées ? Réponse : parce qu''il est calculé avant charges financières, donc indépendant de la structure de financement.
- Question 3 : que représente la valeur terminale dans un DCF ? Réponse : la valeur actualisée de tous les flux au-delà de l''horizon de prévision explicite.

## 55:00 – 70:00 · Partie 4 : synthétiser et argumenter la fourchette de valeur

Nous avons maintenant quatre résultats : 4 504,0 par DCF, 4 160,0 par le multiple d''EBITDA, 4 712,0 par le PER, et 3 590,2 par l''approche patrimoniale. Comment conclure devant un jury d''examen ou un client ?

Première étape : vérifier la cohérence. Les trois premières méthodes (DCF, EBITDA, PER) convergent dans un intervalle resserré, entre 4 160 et 4 712 millions, soit un écart inférieur à 15 % autour de la moyenne. C''est un bon signe de robustesse. La quatrième méthode, l''approche patrimoniale, s''écarte nettement vers le bas : c''est attendu et s''explique par sa nature conservatrice.

Deuxième étape : choisir une fourchette de restitution. Je recommande de présenter 4 160 à 4 712 millions comme fourchette principale, avec le DCF comme estimation centrale si vous jugez les prévisions de flux fiables, et de mentionner l''approche patrimoniale séparément comme un plancher de négociation utile, par exemple en cas de rachat où l''acheteur voudrait limiter le risque de surpayer.

Troisième étape : toujours expliciter vos hypothèses. Un correcteur de Master 1 pénalise sévèrement une valeur donnée sans rappel du CMPC, du taux de croissance, des multiples retenus et du taux normatif du goodwill. La valeur sans les hypothèses n''a aucune valeur probante.

Visuel : graphique en barres horizontales montrant les quatre résultats sur une même échelle, avec la fourchette retenue encadrée.

## 70:00 – 80:00 · Cas pratique approfondi : sensibilité et discussion

Testons maintenant la sensibilité du DCF. Si le CMPC passe de 12 % à 13 %, que se passe-t-il ? La valeur terminale, 556 fois 1,025 divisé par (0,13 moins 0,025), donne 5 129,5 millions, actualisée sur cinq ans à 13 % : 2 785,2 millions, contre 3 404,0 millions précédemment. La valeur d''entreprise chute mécaniquement. C''est exactement ce type de test que vous devez montrer à l''examen pour prouver votre maîtrise, pas seulement produire un chiffre figé.

Discutons aussi d''un biais fréquent chez les étudiants : vouloir faire converger artificiellement les méthodes en ajustant un paramètre après coup pour obtenir « le bon résultat ». C''est une erreur méthodologique grave. Les écarts entre méthodes sont des informations en soi : ils révèlent où se situe le désaccord entre la vision du marché (multiples), la vision patrimoniale (actif net) et la vision prospective (DCF).

## 80:00 – 85:00 · Synthèse générale

Pour résumer cette séance : le DCF valorise la capacité future à générer des flux, les multiples valorisent par comparaison de marché, l''approche patrimoniale valorise le patrimoine existant corrigé d''un goodwill. Aucune méthode n''est à elle seule suffisante en Master 1 : c''est la capacité à les croiser, à expliquer les écarts, et à conclure par une fourchette argumentée qui distingue une bonne copie.

## 85:00 – 90:00 · Évaluation finale

1. Dans un DCF, que représente le CMPC ? Réponse : le taux d''actualisation qui reflète le risque de l''activité et la structure de financement visée, utilisé pour ramener les flux futurs à leur valeur actuelle.
2. Pourquoi la valeur terminale doit-elle toujours être testée en sensibilité ? Réponse : parce qu''elle représente souvent plus de la moitié de la valeur totale et qu''elle est très sensible à de faibles variations du CMPC et de la croissance à l''infini.
3. Quel est l''avantage principal du multiple EV/EBITDA par rapport au PER ? Réponse : il est indépendant de la structure financière et des politiques d''amortissement, ce qui le rend plus comparable entre entreprises.
4. Comment calcule-t-on la rente annuelle du goodwill dans la méthode des rentes abrégées ? Réponse : résultat courant prévisionnel moins le produit du taux de rémunération normatif des capitaux et de l''actif net comptable corrigé.
5. Pourquoi un évaluateur sérieux présente-t-il une fourchette de valeur plutôt qu''un chiffre unique ? Réponse : parce que chaque méthode repose sur des hypothèses différentes et parfois fragiles, et qu''une fourchette reflète honnêtement l''incertitude tout en laissant une marge de négociation.', 'video', 90, false, 60
from public.courses c where c.slug = 'mas-fin-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Évaluation d''entreprise approfondie (DCF, multiples, approche patrimoniale)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Ingénierie financière et fusions-acquisitions', '## Fiche du cours vidéo

Durée : 1h30. Niveau : Master 1 Finance.
Objectifs : calculer une parité d''échange et son effet sur le bénéfice par action, construire et interpréter un montage LBO, identifier les étapes et risques d''une fusion-acquisition.
Matériel : tableau ou diaporama, calculatrice financière ou tableur.
Prérequis : lecture d''un bilan, notion de résultat net, actualisation.

## 00:00 – 05:00 · Introduction et enjeux

Bonjour. Aujourd''hui, nous entrons dans l''ingénierie financière : comment structurer une opération de rachat d''entreprise, comment mesurer son impact sur les actionnaires existants, et comment fonctionne un montage par effet de levier, le fameux LBO. Ce sont des sujets qui apparaissent très régulièrement aux examens de Master 1 et qui sont au cœur du métier de banquier d''affaires, de directeur financier ou d''analyste en fonds d''investissement. Nous allons suivre deux cas fictifs tout au long de la séance : une fusion par échange d''actions entre Sahel Industries et Delta Emballages, puis un rachat par effet de levier de la PME Logis-Services.

Visuel : diapositive de titre avec les deux cas annoncés.

## 05:00 – 20:00 · Partie 1 : la parité d''échange

Quand un acquéreur paie une cible en actions plutôt qu''en numéraire, il faut déterminer combien de ses propres actions il remet pour une action de la cible : c''est la parité d''échange.

Première étape : fixer le prix offert par action de la cible. On part du cours de bourse ou de la valeur estimée de la cible, et on ajoute une prime de contrôle, qui rémunère la perte d''autonomie de la cible et anticipe les synergies de l''opération. Dans notre cas, Sahel Industries cote 3 000 FCFA avec 3 000 000 d''actions, soit une valeur de 9 000 millions. Delta Emballages cote 2 400 FCFA avec 1 000 000 d''actions, soit 2 400 millions. Une prime de 20 % est négociée.

Le prix offert par action de Delta Emballages est donc 2 400 fois 1,20, soit 2 880 FCFA. La parité d''échange est le prix offert divisé par le cours de l''acquéreur : 2 880 divisé par 3 000, soit 0,96. Cela signifie que pour chaque action Delta Emballages apportée, l''actionnaire reçoit 0,96 action Sahel Industries.

Visuel : schéma de l''échange, une action Delta Emballages transformée en 0,96 action Sahel Industries.

Mettez le calcul en pause et vérifiez vous-même : 1 000 000 actions Delta Emballages multipliées par 0,96 donnent 960 000 nouvelles actions Sahel Industries à émettre. Le capital de Sahel Industries passe donc de 3 000 000 à 3 960 000 actions.

## 20:00 – 35:00 · Partie 2 : l''effet sur le bénéfice par action

Maintenant, mesurons l''effet de cette opération sur le bénéfice par action, le BPA, de l''acquéreur. C''est l''indicateur que les analystes financiers regardent en premier après l''annonce d''une fusion.

Le résultat net consolidé additionne le résultat de l''acquéreur, celui de la cible, et les synergies nettes d''impôt attendues. Ici : 620 millions pour Sahel Industries, 180 millions pour Delta Emballages, et 45 millions de synergies fictives, soit un total de 845 millions.

Le BPA de Sahel Industries avant l''opération est 620 millions divisé par 3 000 000 actions, soit 206,7 FCFA. Le BPA après l''opération est 845 millions divisé par 3 960 000 actions, soit 213,4 FCFA. La variation est de plus 3,25 %. L''opération est donc relutive : elle augmente le bénéfice par action des actionnaires de Sahel Industries.

Visuel : graphique en barres comparant le BPA avant et après l''opération.

Attention, point crucial pour l''examen : une opération relutive comptablement n''est pas automatiquement créatrice de valeur économique. Si la prime de 20 % est trop généreuse par rapport aux synergies réellement atteignables, ou si le goodwill comptabilisé doit être déprécié plus tard parce que l''intégration échoue, la relution immédiate du BPA peut masquer une destruction de valeur à moyen terme. Un bon candidat signale toujours cette limite après avoir fait le calcul.

## 35:00 – 50:00 · Partie 3 : comprendre le montage LBO

Changeons de cas. Un LBO, rachat par effet de levier, consiste à racheter une entreprise principalement avec de la dette, logée dans une société holding créée pour l''opération. Pourquoi une holding et pas directement la cible ? Parce que cela isole le risque financier : si le remboursement de la dette se complique, c''est la holding qui est en difficulté, pas juridiquement la cible elle-même, même si en pratique les flux de la cible servent à rembourser la dette via les dividendes remontés.

Prenons Logis-Services, une PME fictive valorisée 1 000 millions de FCFA, financée par 650 millions de dette senior à un taux fictif de 9 % et 350 millions de fonds propres apportés par un fonds d''investissement. L''EBITDA initial est de 220 millions, avec une croissance annuelle de 5 %, et nous approchons le flux disponible avant service de la dette à 80 % de l''EBITDA, après un impôt simplifié.

Année après année, ce flux rembourse d''abord les intérêts sur le capital restant dû, puis le capital lui-même. En année 1 : EBITDA de 220, intérêts de 650 fois 9 % soit 58,5, flux disponible de 220 fois 0,8 moins 58,5 soit 117,5, qui rembourse intégralement ce montant de dette, ramenant le capital restant à 532,5 millions. Le mécanisme se répète chaque année avec un EBITDA croissant et des intérêts qui diminuent à mesure que la dette se réduit. Sur cinq ans, dans notre scénario, la dette de 650 millions est intégralement remboursée.

Visuel : tableau année par année avec quatre colonnes : EBITDA, intérêts, flux disponible, dette restante.

## 50:00 – 55:00 · Pause et quiz interactif

Trois questions pour vérifier votre compréhension avant de continuer.

- Question 1 : pourquoi la dette d''acquisition est-elle logée dans une holding plutôt que dans la cible directement ? Réponse : pour isoler le risque financier de l''opération dans une structure dédiée.
- Question 2 : qu''est-ce qu''une opération relutive sur le BPA ? Réponse : une opération où le bénéfice par action après l''opération est supérieur au bénéfice par action de l''acquéreur avant l''opération.
- Question 3 : d''où vient l''argent qui rembourse la dette d''un LBO ? Réponse : des flux de trésorerie disponibles de la cible, remontés à la holding sous forme de dividendes.

## 55:00 – 70:00 · Partie 4 : mesurer le rendement du fonds dans un LBO

Calculons maintenant le rendement obtenu par le fonds d''investissement. En année 5, l''EBITDA de Logis-Services atteint 267,4 millions grâce à la croissance de 5 % par an. Avec un multiple de sortie de 6,0, la valeur d''entreprise à la sortie est 267,4 fois 6,0, soit 1 604,5 millions. Comme la dette a été intégralement remboursée, la valeur des fonds propres à la sortie est également de 1 604,5 millions.

Le multiple de l''investissement pour le fonds est 1 604,5 divisé par l''apport initial de 350 millions, soit 4,58 fois. Le taux de rendement interne sur cinq ans est 4,58 élevé à la puissance un cinquième, moins un, soit environ 35,6 % par an.

Remarquez l''ampleur de l''effet de levier : la valeur d''entreprise n''a progressé que de 60 % en cinq ans, de 1 000 à 1 604,5 millions, mais les fonds propres du fonds, eux, ont été multipliés par 4,58 parce que la dette a servi de levier et a été intégralement remboursée par les flux de la cible elle-même. C''est tout le principe du LBO : faire payer la dette par l''entreprise rachetée, pas par l''investisseur.

Visuel : schéma en deux colonnes, évolution de la valeur d''entreprise à gauche, évolution des fonds propres du fonds à droite, avec les multiples associés.

Point d''attention pour l''examen : ce rendement élevé suppose une exécution sans accroc. Si l''EBITDA stagne ou recule, le flux disponible peut devenir insuffisant pour couvrir le service de la dette : c''est le risque principal d''un LBO, qu''il faut toujours mentionner en discussion.

## 70:00 – 80:00 · Cas pratique approfondi : les étapes d''une fusion-acquisition

Reprenons maintenant les grandes étapes d''une opération de fusion-acquisition dans l''ordre chronologique. D''abord la phase préparatoire : identification de la cible, signature d''une lettre d''intention, puis audit d''acquisition, qu''on appelle due diligence, portant sur les aspects financiers, juridiques, fiscaux et sociaux de la cible. Cet audit sert à vérifier que les chiffres annoncés sont fiables et à détecter des passifs cachés.

Ensuite la négociation : on fixe la valorisation avec les méthodes vues dans la leçon précédente, on structure l''offre, en numéraire, en actions ou en mixte, et on négocie des garanties d''actif et de passif qui protègent l''acquéreur si des passifs non révélés apparaissent après la signature.

Puis le financement de l''opération : autofinancement, dette, augmentation de capital, ou combinaison, en tenant compte de l''impact sur la structure financière et sur la notation de crédit de l''acquéreur si celui-ci est noté.

Enfin, l''intégration post-acquisition, souvent négligée dans les copies d''examen mais essentielle en pratique : c''est le moment où les synergies annoncées doivent se matérialiser réellement. C''est aussi la phase où le plus grand nombre d''opérations échouent, par sous-estimation des coûts d''intégration des systèmes d''information, des équipes et des cultures d''entreprise.

## 80:00 – 85:00 · Synthèse générale

Pour résumer : la parité d''échange traduit la prime de contrôle en nombre d''actions, et l''effet sur le BPA mesure l''impact comptable immédiat, mais ne garantit jamais la création de valeur réelle. Le LBO amplifie le rendement des fonds propres par un effet de levier, à condition que la rentabilité de la cible permette de rembourser la dette. Une opération de fusion-acquisition se joue autant dans la préparation et l''intégration que dans le calcul du prix.

## 85:00 – 90:00 · Évaluation finale

1. Comment calcule-t-on le prix offert par action dans une fusion par échange d''actions ? Réponse : cours de la cible multiplié par (1 plus la prime de contrôle).
2. Qu''est-ce que la parité d''échange ? Réponse : le nombre d''actions de l''acquéreur remises pour une action de la cible, égal au prix offert par action de la cible divisé par le cours de l''acquéreur.
3. Pourquoi une opération relutive sur le BPA n''est-elle pas automatiquement créatrice de valeur ? Réponse : parce que la relution comptable ne tient pas compte du risque réel transféré ni d''une prime ou de synergies potentiellement surestimées, qui peuvent conduire à une dépréciation future du goodwill.
4. Dans un LBO, pourquoi le rendement des fonds propres du fonds peut-il dépasser largement la progression de la valeur d''entreprise ? Réponse : parce que l''effet de levier de la dette, remboursée par les flux de la cible, amplifie le gain réalisé sur le capital réellement investi par le fonds.
5. Quelle est la phase la plus souvent sous-estimée dans une fusion-acquisition et pourquoi est-elle risquée ? Réponse : l''intégration post-acquisition, parce que les coûts d''intégration des systèmes, des équipes et des cultures d''entreprise sont fréquemment sous-estimés, ce qui peut empêcher la réalisation effective des synergies annoncées.', 'video', 90, false, 70
from public.courses c where c.slug = 'mas-fin-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Ingénierie financière et fusions-acquisitions');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Gestion de portefeuille et marchés financiers avancés', '## Fiche du cours vidéo

Durée : 1h30. Niveau : Master 1 Finance.
Objectifs : calculer le rendement et le risque d''un portefeuille à deux actifs, construire la frontière efficiente simplifiée, appliquer le CAPM et le ratio de Sharpe.
Matériel : tableau ou diaporama, calculatrice.
Prérequis : espérance et variance statistique, notion de corrélation.

## 00:00 – 05:00 · Introduction et enjeux

Bonjour. Cette séance porte sur la gestion de portefeuille et les marchés financiers avancés : comment un investisseur combine plusieurs actifs pour réduire son risque sans sacrifier excessivement son rendement, et comment le CAPM permet de juger si un actif est correctement valorisé par rapport à son risque. Nous allons travailler avec deux actions fictives, Sahel Ciments et Teranga Telecom, tout au long de la séance.

Visuel : diapositive de titre avec les deux actions et leurs caractéristiques.

## 05:00 – 20:00 · Partie 1 : rendement et risque d''un portefeuille à deux actifs

Le principe de la diversification est simple à énoncer mais puissant dans ses conséquences : combiner des actifs qui ne bougent pas parfaitement ensemble réduit le risque total du portefeuille sans réduire le rendement attendu dans la même proportion.

Le rendement attendu d''un portefeuille est simplement la moyenne pondérée des rendements attendus de chaque actif : E(rp) égale wA fois E(rA) plus wB fois E(rB). C''est intuitif, c''est additif.

La variance, en revanche, n''est pas simplement la moyenne pondérée des variances. Elle intègre un troisième terme, la covariance entre les deux actifs : sigma au carré du portefeuille égale wA au carré fois sigma A au carré, plus wB au carré fois sigma B au carré, plus deux fois wA fois wB fois la covariance entre A et B. Et la covariance elle-même s''obtient en multipliant la corrélation par les deux écart-types.

Prenons nos données : Sahel Ciments a un rendement attendu de 14 % et un écart-type de 22 %. Teranga Telecom a un rendement attendu de 9 % et un écart-type de 12 %. La corrélation entre les deux est de 0,30. La covariance est donc 0,30 fois 0,22 fois 0,12, soit 0,00792.

Testons un portefeuille à 60 % dans Sahel Ciments et 40 % dans Teranga Telecom. Le rendement attendu est 0,6 fois 14 % plus 0,4 fois 9 %, soit 12,0 %. La variance est 0,6 au carré fois 0,22 au carré, plus 0,4 au carré fois 0,12 au carré, plus deux fois 0,6 fois 0,4 fois 0,00792, soit 0,02354, ce qui donne un écart-type de 15,3 %. Comparez : investir seulement dans Sahel Ciments donnait 14 % de rendement pour 22 % de risque. Ici, on ne perd que 2 points de rendement mais on réduit le risque de près de 7 points. C''est le bénéfice concret de la diversification.

Visuel : graphique risque-rendement avec les deux actifs purs et le portefeuille 60-40 positionné entre eux, visiblement décalé vers la gauche.

## 20:00 – 35:00 · Partie 2 : la frontière efficiente et le portefeuille de variance minimale

Si on fait varier la pondération entre les deux actifs de 0 à 100 %, on obtient toute une courbe de combinaisons possibles de risque et de rendement : c''est la frontière efficiente, simplifiée ici au cas de deux actifs.

Il existe une pondération précise qui minimise la variance du portefeuille. On l''obtient par la formule : wA de variance minimale égale sigma B au carré moins la covariance, divisé par sigma A au carré plus sigma B au carré moins deux fois la covariance.

Pour nos deux actions : wA minimale égale 0,12 au carré moins 0,00792, divisé par 0,22 au carré plus 0,12 au carré moins deux fois 0,00792, ce qui donne 0,138. Donc wB égale 0,862. Mettez en pause et vérifiez ce calcul avec votre propre calculatrice.

Avec cette pondération, le rendement attendu est 9,69 % et l''écart-type tombe à 11,6 %, le minimum possible pour ce couple d''actifs. Comparons avec Teranga Telecom seul : 9,0 % de rendement pour 12,0 % de risque. Le portefeuille de variance minimale fait mieux sur les deux dimensions à la fois : plus de rendement, 9,69 % contre 9,0 %, et moins de risque, 11,6 % contre 12,0 %. C''est la démonstration la plus parlante de l''intérêt de la diversification.

Visuel : la frontière efficiente tracée point par point, avec le point de variance minimale repéré, et la zone sous ce point marquée comme inefficiente.

Un point essentiel pour l''examen : tout portefeuille situé sous le point de variance minimale sur cette courbe n''est jamais un choix rationnel, car on peut toujours obtenir, pour le même risque, un rendement supérieur ailleurs sur la frontière.

## 35:00 – 50:00 · Partie 3 : le CAPM approfondi

Changeons de perspective. Le CAPM ne cherche pas à construire un portefeuille optimal, il cherche à déterminer quel rendement un actif devrait offrir compte tenu de son risque non diversifiable, celui qui reste même après une diversification complète.

Ce risque non diversifiable se mesure par le bêta : bêta égale la covariance entre le rendement de l''actif et le rendement du marché, divisée par la variance du rendement du marché. Un bêta de 1 signifie un risque de marché moyen ; un bêta supérieur à 1 signifie un actif plus sensible que le marché, un bêta inférieur à 1 signifie un actif moins sensible.

Le rendement exigé par le CAPM est alors : E(r) égale le taux sans risque, plus bêta, fois la prime de risque du marché, c''est-à-dire la différence entre le rendement attendu du marché et le taux sans risque.

Pour Sahel Ciments, avec une covariance avec le marché de 0,028 et une variance du marché de 0,16 au carré soit 0,0256, le bêta est 0,028 divisé par 0,0256, soit 1,094. Avec un taux sans risque fictif de 5,5 % et un rendement de marché attendu de 12 %, le rendement exigé par le CAPM est 5,5 % plus 1,094 fois 6,5 %, soit 12,61 %.

Or le rendement attendu réellement estimé pour Sahel Ciments est de 14 %, supérieur au 12,61 % exigé par le CAPM. Cet écart positif, qu''on appelle alpha, suggère que l''action est sous-évaluée par rapport à son risque systématique : elle offre plus de rendement que ce que son bêta justifierait. Pour Teranga Telecom, avec un bêta de 0,55, le rendement exigé est 5,5 % plus 0,55 fois 6,5 %, soit 9,07 %, très proche du rendement attendu de 9 % : cette action est jugée correctement valorisée par le marché.

Visuel : droite de marché des titres tracée, avec Sahel Ciments positionnée au-dessus de la droite et Teranga Telecom pile sur la droite.

## 50:00 – 55:00 · Pause et quiz interactif

Trois questions de vérification.

- Question 1 : pourquoi une corrélation inférieure à 1 entre deux actifs crée-t-elle toujours un gain de diversification ? Réponse : parce que le terme de covariance dans la formule de la variance du portefeuille devient alors inférieur à ce qu''il serait avec une corrélation parfaite, réduisant la variance totale.
- Question 2 : que mesure le bêta dans le CAPM ? Réponse : la sensibilité du rendement d''un actif aux mouvements du marché, c''est-à-dire son risque non diversifiable.
- Question 3 : qu''est-ce qu''un alpha positif ? Réponse : un rendement attendu réel supérieur au rendement exigé par le CAPM, suggérant que l''actif est sous-évalué par rapport à son risque systématique.

## 55:00 – 70:00 · Partie 4 : le ratio de Sharpe et ses limites

Le ratio de Sharpe complète le CAPM en mesurant le rendement excédentaire par unité de risque total, pas seulement de risque systématique : Sharpe égale le rendement attendu moins le taux sans risque, divisé par l''écart-type total de l''actif.

Pour Sahel Ciments : 14 % moins 5,5 %, divisé par 22 %, soit 0,386. Pour Teranga Telecom : 9 % moins 5,5 %, divisé par 12 %, soit 0,292. Sahel Ciments rémunère donc mieux chaque unité de risque total supporté, malgré sa volatilité plus élevée en valeur absolue.

Pourquoi deux indicateurs différents, le bêta du CAPM et le ratio de Sharpe ? Parce qu''ils répondent à deux questions différentes. Le bêta et le CAPM s''adressent à un investisseur déjà diversifié, qui ne se préoccupe que du risque de marché résiduel. Le ratio de Sharpe s''adresse à un investisseur qui détient l''actif seul, ou qui veut comparer l''efficacité globale de gestionnaires de portefeuille, en tenant compte de tout le risque, diversifiable et non diversifiable.

Visuel : tableau récapitulatif des deux indicateurs pour les deux actions.

## 70:00 – 80:00 · Cas pratique approfondi : construire une recommandation

Imaginons qu''un conseiller en gestion de patrimoine doive recommander une allocation entre Sahel Ciments et Teranga Telecom à un client qui souhaite limiter son risque sans trop sacrifier le rendement. Avec les données vues, trois options raisonnables : le portefeuille de variance minimale, 13,8 % et 86,2 %, pour un client très averse au risque ; le portefeuille 60-40 pour un client qui accepte un peu plus de risque contre un peu plus de rendement ; ou une pondération encore plus orientée vers Sahel Ciments si le client a identifié, comme nous l''avons fait avec le CAPM, que cette action est sous-évaluée et offre un alpha positif.

La recommandation doit toujours combiner l''analyse de diversification, qui dépend de la corrélation et des écart-types, et l''analyse de valorisation individuelle, qui dépend du CAPM et de l''alpha. Un bon candidat de Master 1 sait mobiliser les deux dans une même conclusion argumentée, en rappelant que ce sont des estimations fondées sur des paramètres fictifs dans cet exercice, qui devraient être actualisées avec des données de marché réelles dans un contexte professionnel.

## 80:00 – 85:00 · Synthèse générale

Pour conclure : la diversification réduit le risque grâce à une corrélation imparfaite entre actifs, la frontière efficiente identifie les meilleures combinaisons possibles, le CAPM évalue si le rendement d''un actif est cohérent avec son risque systématique, et le ratio de Sharpe mesure l''efficacité globale du couple rendement-risque. Ces quatre outils se complètent plutôt qu''ils ne se substituent les uns aux autres.

## 85:00 – 90:00 · Évaluation finale

1. Comment calcule-t-on la covariance entre deux actifs à partir de leur corrélation ? Réponse : covariance égale corrélation multipliée par l''écart-type du premier actif et par l''écart-type du second actif.
2. Qu''obtient-on en annulant la dérivée de la variance du portefeuille par rapport à la pondération d''un actif ? Réponse : la pondération du portefeuille de variance minimale.
3. Quelle est la formule du rendement exigé par le CAPM ? Réponse : taux sans risque plus bêta multiplié par la prime de risque du marché, c''est-à-dire la différence entre le rendement attendu du marché et le taux sans risque.
4. Un actif se situe au-dessus de la droite de marché des titres : que peut-on en conclure ? Réponse : son rendement attendu réel dépasse le rendement exigé par son risque systématique, il est jugé sous-évalué, avec un alpha positif.
5. Pourquoi le ratio de Sharpe peut-il classer deux actifs différemment du bêta du CAPM ? Réponse : parce que le ratio de Sharpe tient compte du risque total, diversifiable et non diversifiable, alors que le bêta ne capture que le risque systématique non diversifiable.', 'video', 90, false, 80
from public.courses c where c.slug = 'mas-fin-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Gestion de portefeuille et marchés financiers avancés');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Atelier cas pratique transversal - évaluation et montage d''une opération de croissance externe', '## Fiche du cours vidéo

Durée : 1h30. Niveau : Master 1 Finance.
Objectifs : résoudre un cas d''entreprise transversal mobilisant successivement l''évaluation, l''ingénierie financière et la gestion de portefeuille, comme dans un dossier réel de banque d''affaires.
Matériel : tableau ou diaporama, calculatrice financière ou tableur.
Prérequis : les trois leçons et vidéos précédentes de ce cours.

## 00:00 – 05:00 · Introduction et enjeux

Bonjour. Cette dernière séance vidéo est un atelier de synthèse : nous allons suivre un seul dossier fictif de bout en bout, de l''évaluation d''une cible jusqu''à l''impact de l''opération pour un investisseur minoritaire, en mobilisant tout ce que vous avez appris dans ce cours de Master 1. C''est exactement le type d''exercice filé que vous pouvez rencontrer en examen final ou en entretien de stage. Prenez une feuille, nous allons construire le dossier ensemble.

Visuel : diapositive de titre présentant le dossier « Casamance Agro-Industries rachète Niayes Fruits ».

## 05:00 – 20:00 · Partie 1 : poser le dossier et évaluer la cible

Casamance Agro-Industries, CAI, entreprise fictive de Ziguinchor, veut racheter sa concurrente Niayes Fruits. CAI cote 2 500 FCFA pour 4 000 000 d''actions, avec un résultat net de 980 millions. Niayes Fruits cote 1 600 FCFA pour 1 200 000 actions, avec un résultat net de 240 millions, un EBITDA de 420 millions, une dette nette de 280 millions, et des flux de trésorerie disponibles prévisionnels sur cinq ans de 160, 175, 188, 198 et 206 millions de FCFA, avec une croissance à l''infini de 2 % et un CMPC de 11 %.

Commençons par le DCF de Niayes Fruits. Actualisons chaque flux à 11 % : 160 divisé par 1,11 donne 144,1 ; 175 divisé par 1,11 au carré donne 142,0 ; 188 divisé par 1,11 au cube donne 137,5 ; 198 divisé par 1,11 à la puissance 4 donne 130,5 ; 206 divisé par 1,11 à la puissance 5 donne 122,2. La somme est 676,3 millions. La valeur terminale : 206 fois 1,02 divisé par (0,11 moins 0,02), soit 2 334,2 millions, actualisée sur cinq ans à 11 %, soit 1 385,6 millions. La valeur d''entreprise totale est 676,3 plus 1 385,6, soit 2 061,9 millions. En retranchant la dette nette de 280 millions, la valeur des capitaux propres est 1 781,9 millions de FCFA.

Comparons avec un multiple de comparables : EBITDA de 420 millions fois un multiple sectoriel fictif de 6,5, soit une valeur d''entreprise de 2 730,0 millions, et une valeur des capitaux propres de 2 450,0 millions après déduction de la dette. L''écart avec le DCF est important, environ 37 %. Mettez en pause et réfléchissez : que feriez-vous de cet écart dans un vrai rapport d''évaluation ?

Visuel : les deux résultats, 1 781,9 et 2 450,0 millions, affichés côte à côte avec l''écart en pourcentage.

Réponse attendue : on ne choisit pas arbitrairement l''un ou l''autre, on documente les deux, on vérifie les hypothèses de chaque méthode, par exemple en demandant si les flux prévisionnels sont trop prudents ou si le multiple sectoriel retenu est trop généreux, et on propose une fourchette, ici entre 1 781,9 et 2 450,0 millions de FCFA, en expliquant que l''écart important appelle une vérification approfondie avant de fixer un prix final.

## 20:00 – 35:00 · Partie 2 : structurer l''offre et mesurer l''effet sur le BPA

CAI propose une prime de contrôle de 20 % sur le cours de Niayes Fruits et un paiement intégral en actions. Le prix offert par action est 1 600 fois 1,20, soit 1 920 FCFA. La parité d''échange est 1 920 divisé par 2 500, soit 0,768 action CAI pour une action Niayes Fruits.

Le nombre de nouvelles actions émises est 1 200 000 fois 0,768, soit 921 600. Le capital de CAI passe de 4 000 000 à 4 921 600 actions. Pour mesurer l''effet sur le BPA, on utilise ici le résultat net comptable de la cible, pas sa valeur d''évaluation : résultat consolidé égale 980 plus 240 plus 20 millions de synergies nettes d''impôt, soit 1 240 millions.

Le BPA de CAI avant l''opération est 980 divisé par 4 000 000, soit 245 FCFA. Le BPA après l''opération est 1 240 divisé par 4 921 600, soit environ 251,9 FCFA. La variation est d''environ plus 2,8 %, l''opération est relutive.

Visuel : tableau de synthèse du montage, parité, nouvelles actions, BPA avant et après.

Discussion essentielle : cette relution de 2,8 % repose sur des synergies de seulement 20 millions. Si ces synergies ne se matérialisent pas, par exemple parce que l''intégration des deux réseaux de distribution échoue partiellement, le résultat consolidé retombe à 1 220 millions, et le BPA après l''opération devient 1 220 divisé par 4 921 600, soit environ 247,9 FCFA : l''opération resterait légèrement relutive mais avec une marge de sécurité beaucoup plus faible. C''est ce type d''analyse de sensibilité qui distingue une copie de Master 1 d''une simple application de formule.

## 35:00 – 50:00 · Partie 3 : l''impact pour un investisseur minoritaire

Un fonds d''investissement régional envisage de prendre une participation minoritaire dans CAI après l''opération. Il doit juger si le rendement attendu de l''action CAI est cohérent avec son risque. Le bêta estimé de CAI est de 1,15, le taux sans risque fictif de 6 %, et le rendement attendu du marché régional de 13 %.

Le rendement exigé par le CAPM est 6 % plus 1,15 fois (13 % moins 6 %), soit 6 % plus 1,15 fois 7 %, soit 14,05 %. Si le rendement attendu réellement anticipé pour l''action CAI après l''opération est de 15 %, alors CAI se situe au-dessus de la droite de marché des titres : le rendement attendu dépasse le rendement exigé par le risque systématique, d''environ 0,95 point. L''action apparaît donc, sur cette base, légèrement sous-évaluée.

Visuel : droite de marché des titres avec CAI positionnée juste au-dessus.

Mais attention, c''est le moment de faire preuve d''esprit critique devant un jury : ce bêta de 1,15 a-t-il été estimé avant ou après l''annonce de l''opération ? Une fusion-acquisition change souvent le profil de risque de l''acquéreur, notamment si elle est financée par de la dette supplémentaire, ce qui peut augmenter le bêta réel après l''opération par rapport au bêta historique utilisé ici. Un bon candidat signale cette limite plutôt que d''appliquer la formule sans recul.

## 50:00 – 55:00 · Pause et quiz interactif

Trois questions pour faire le point avant la conclusion du dossier.

- Question 1 : pourquoi documenter deux méthodes d''évaluation même quand elles divergent fortement ? Réponse : parce que chaque écart révèle une information sur les hypothèses en désaccord, et qu''une fourchette argumentée est plus honnête et plus utile en négociation qu''un chiffre unique non questionné.
- Question 2 : qu''est-ce qui pourrait transformer une opération relutive en opération dilutive si les hypothèses se dégradent ? Réponse : des synergies qui ne se matérialisent pas, ou une prime de contrôle qui s''avère excessive par rapport à la valeur réellement créée.
- Question 3 : pourquoi le bêta utilisé par un investisseur minoritaire doit-il être examiné avec prudence après une fusion-acquisition ? Réponse : parce que l''opération peut changer le profil de risque réel de l''acquéreur, notamment via un endettement supplémentaire, rendant le bêta historique moins représentatif.

## 55:00 – 70:00 · Partie 4 : rédiger la recommandation finale du dossier

Nous arrivons à la dernière étape : rédiger une recommandation complète, comme le ferait un analyste senior pour son comité d''investissement. La structure attendue comporte quatre blocs. D''abord, la valeur de la cible, avec la fourchette obtenue et les hypothèses retenues. Ensuite, les conditions de l''opération, la parité d''échange et son effet sur le BPA, avec un test de sensibilité sur les synergies. Puis, l''impact pour un investisseur minoritaire, avec le positionnement par rapport au CAPM et ses limites. Enfin, une conclusion qui tranche : faut-il recommander l''opération, la recommander sous conditions, ou la déconseiller, et pourquoi.

Pour notre dossier, une conclusion possible serait la suivante : l''opération est raisonnable au prix proposé, dans la mesure où la prime de 20 % reste dans la fourchette de valeur obtenue par DCF et par multiple, où l''effet relutif sur le BPA reste positif même en cas de sous-réalisation partielle des synergies, mais où il convient de surveiller l''évolution du bêta et de la structure financière de CAI après l''opération avant d''investir en tant que minoritaire.

Visuel : schéma final en quatre blocs résumant la structure de la recommandation.

## 70:00 – 80:00 · Entraînement : variante chiffrée

Variante pour vous entraîner seul après la séance : si la prime de contrôle négociée passe de 20 % à 30 %, recalculez le prix offert par action, la parité d''échange, le nombre d''actions émises et le nouveau BPA de CAI après l''opération, toutes choses égales par ailleurs. Vous devez retrouver un prix offert de 2 080 FCFA, une parité de 0,832, 998 400 nouvelles actions, un capital total de 4 998 400 actions, et un BPA après l''opération d''environ 248,1 FCFA, soit une relution plus faible qu''avec la prime de 20 %. Cet exercice illustre qu''une prime plus élevée dilue davantage l''effet relutif, même sans changer les synergies attendues.

## 80:00 – 85:00 · Synthèse générale du cours

Ce cours de Master 1 vous a donné trois blocs d''outils qui se combinent dans la pratique : évaluer une entreprise par plusieurs méthodes convergentes, structurer et chiffrer une opération de fusion-acquisition ou un montage par effet de levier, et situer le risque et le rendement d''un investissement dans la logique du portefeuille et du CAPM. La compétence la plus recherchée par les recruteurs et les jurys n''est pas de savoir appliquer une formule isolée, mais de savoir enchaîner ces blocs dans un même dossier et d''en tirer une recommandation argumentée, avec ses limites explicitement posées.

## 85:00 – 90:00 · Évaluation finale

1. Pourquoi documenter une fourchette de valeur plutôt qu''un chiffre unique dans un dossier de fusion-acquisition ? Réponse : parce que les méthodes d''évaluation reposent sur des hypothèses différentes qui peuvent diverger fortement, et qu''une fourchette reflète honnêtement l''incertitude tout en facilitant la négociation.
2. Dans le dossier CAI-Niayes Fruits, l''opération est-elle relutive ou dilutive sur le BPA, et de combien ? Réponse : relutive, d''environ plus 2,8 %.
3. Pourquoi une prime de contrôle plus élevée réduit-elle, toutes choses égales, l''effet relutif d''une fusion payée en actions ? Réponse : parce qu''elle augmente le nombre d''actions nouvelles émises pour une même cible, ce qui dilue davantage le résultat consolidé entre un plus grand nombre d''actions.
4. Pourquoi faut-il être prudent en appliquant un bêta historique à une action juste après une fusion-acquisition ? Réponse : parce que l''opération peut modifier le profil de risque réel de l''entreprise, notamment par un endettement supplémentaire, rendant le bêta historique moins représentatif du risque futur.
5. Quels sont les quatre blocs attendus dans une recommandation finale de dossier de fusion-acquisition ? Réponse : la valeur de la cible avec ses hypothèses, les conditions de l''opération et leur effet sur le BPA, l''impact pour un investisseur minoritaire via le CAPM, et une conclusion argumentée qui tranche sur l''opportunité de l''opération.', 'video', 90, false, 90
from public.courses c where c.slug = 'mas-fin-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Atelier cas pratique transversal - évaluation et montage d''une opération de croissance externe');

-- Cours : Finance Master 2 : risques avancés, finance internationale et mémoire professionnel
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'mas-fin-m2', (select id from public.levels where name = 'Master 2'), null, 'Finance', 'Finance Master 2 : risques avancés, finance internationale et mémoire professionnel', 'Cours de préparation aux examens de Master 2 Finance : gestion des risques financiers avancée (VaR, options, swaps), finance internationale et financement de projets (project finance, microfinance, marchés régionaux africains), méthodologie du mémoire professionnel et soutenance. Pour étudiants de Master 2 ayant déjà validé les bases du Master 1 Finance. Cas d''entreprise sénégalais fictifs chiffrés et vérifiés.', true, 752
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Master 2 en Finance', '## Objectifs de la leçon

- Comprendre les enjeux spécifiques de l''année de Master 2 : approfondissement des risques financiers, ouverture internationale, et préparation du mémoire professionnel et de sa soutenance.
- Identifier les trois matières avancées du programme et leur lien avec les examens et le mémoire.
- Construire un plan de révision sur six semaines qui intègre la préparation du mémoire.

## Le Master 2 Finance : l''année de la spécialisation et de la soutenance

Le Master 2 est l''année charnière entre la formation académique et l''entrée dans la vie professionnelle. Deux évolutions majeures distinguent le M2 du M1.

- La sophistication des outils de gestion des risques et d''ouverture internationale : vous allez manier des notions que la plupart des praticiens de terrain connaissent sans les avoir formalisées (value at risk, produits dérivés, financement de projet), ce qui vous donne un avantage réel sur le marché du travail.
- Le mémoire professionnel ou de recherche et sa soutenance orale deviennent l''aboutissement de l''année, souvent couplés à un stage long en entreprise, en banque, en cabinet ou en société de gestion. La soutenance n''est pas un simple exposé : c''est un exercice de défense argumentée devant un jury qui connaît le sujet et qui testera votre capacité à justifier vos choix méthodologiques.

Contrairement au M1, où l''on apprenait encore à combiner les méthodes, le M2 demande une capacité de jugement en situation d''incertitude radicale : un marché financier régional peu liquide, un risque de change sur un financement international, une donnée incomplète dans un dossier de project finance. Il n''existe pas toujours de réponse unique et le correcteur évalue la qualité du raisonnement autant que le résultat chiffré.

## Les trois matières avancées de l''année

- Gestion des risques financiers avancée : la mesure du risque de marché par la value at risk simplifiée, et les produits dérivés (options et swaps) comme outils de couverture ou de spéculation. Ces outils sont devenus incontournables dans toute direction financière, banque ou société de gestion exposée aux marchés.
- Finance internationale et financement de projets : le financement de projet (project finance), la microfinance comme source alternative de financement en zone UEMOA, et une vue d''ensemble des marchés financiers régionaux africains, indispensables pour comprendre comment une entreprise ou un État lève des capitaux au-delà du financement bancaire classique.
- Méthodologie du mémoire professionnel et soutenance : comment construire une problématique, mener une revue de littérature, choisir une méthodologie de collecte de données, rédiger en respectant les normes académiques, et se préparer à la soutenance orale devant jury.

Ces trois blocs ne sont pas indépendants du mémoire : beaucoup d''étudiants choisissent un thème de mémoire lié à la gestion des risques (par exemple la couverture du risque de change d''une entreprise exportatrice) ou à la finance internationale (par exemple le financement d''une infrastructure par project finance), ce qui permet de préparer les examens et le mémoire en même temps plutôt que comme deux charges de travail séparées.

## Le mémoire professionnel : ce qu''on attend réellement

Le mémoire de Master 2 n''est pas une dissertation théorique : c''est un travail appliqué qui part d''une situation réelle ou réaliste (une entreprise, un secteur, une politique financière) et qui mobilise les outils du Master pour l''analyser.

- Une problématique précise et délimitée vaut mieux qu''un sujet vaste et flou : « comment une PME exportatrice sénégalaise peut-elle se couvrir contre le risque de change sur ses ventes en devises » est préférable à « la gestion des risques financiers en Afrique ».
- Une méthodologie clairement explicitée : étude de cas unique approfondie, comparaison de plusieurs entreprises, entretiens avec des praticiens, ou analyse de données financières publiques ; chaque choix doit être justifié, pas seulement décrit.
- Une revue de littérature qui situe le travail par rapport à ce qui a déjà été écrit sur le sujet, sans invention de sources ni de chiffres qui ne pourraient être vérifiés.
- Une conclusion qui répond explicitement à la problématique posée en introduction, avec les limites du travail honnêtement reconnues.

La soutenance, elle, teste votre capacité à défendre ces choix à l''oral : pourquoi cette méthodologie et pas une autre, pourquoi ce choix de cas d''étude, que feriez-vous différemment avec plus de temps. Nous consacrerons une leçon et un atelier vidéo entiers à cette préparation.

## Plan de révision sur six semaines

- Semaines 1 et 2 : gestion des risques financiers avancée. Reprenez le calcul de la value at risk paramétrique, les mécanismes des options (payoff, valeur intrinsèque, valeur temps) et des swaps de taux.
- Semaines 3 et 4 : finance internationale et financement de projets. Entraînez-vous sur les ratios de couverture du service de la dette (DSCR) dans un montage de project finance, et sur les indicateurs clés de la microfinance.
- Semaine 5 : méthodologie du mémoire. Relisez votre plan de mémoire, vérifiez la cohérence entre problématique, méthodologie et conclusion provisoire, et préparez une version orale de dix minutes de présentation.
- Semaine 6 : entraînement croisé sur des sujets type combinant les trois matières, et simulation de soutenance avec un camarade ou un proche jouant le rôle du jury.

Chaque semaine, terminez par un exercice chronométré et un corrigé détaillé, et notez les points à retravailler avant l''examen final.

## Points clés

- Le Master 2 approfondit la gestion des risques, ouvre vers l''international, et aboutit souvent au mémoire professionnel et à sa soutenance.
- Trois matières structurent l''année : gestion des risques financiers avancée, finance internationale et financement de projets, méthodologie du mémoire et soutenance.
- Un bon mémoire part d''une problématique précise, explicite sa méthodologie, et conclut en répondant réellement à la question posée.
- La révision doit intégrer la préparation de la soutenance orale, pas seulement les examens écrits.

## Exercices

1. Expliquez la différence entre le niveau d''incertitude attendu en M1 et celui attendu en M2 dans le traitement d''un cas.
2. Citez les trois matières avancées du programme de M2 Finance présentées dans cette leçon.
3. Pourquoi une problématique de mémoire trop vaste est-elle un problème méthodologique ?
4. Proposez un découpage de six semaines de révision qui intègre à la fois les examens et la préparation d''une soutenance de mémoire.
5. Donnez un exemple de problématique de mémoire qui combinerait la gestion des risques financiers et la finance internationale.

## Corrigé

1. En M1, on combine des méthodes déjà connues et on compare leurs résultats pour construire une fourchette argumentée ; en M2, l''incertitude porte souvent sur des données elles-mêmes incomplètes ou des marchés peu liquides, et il faut construire un jugement professionnel sans réponse unique disponible, en justifiant les hypothèses retenues.
2. Gestion des risques financiers avancée ; finance internationale et financement de projets ; méthodologie du mémoire professionnel et soutenance.
3. Un sujet trop vaste ne permet pas de collecter des données suffisamment précises ni de proposer une méthodologie rigoureuse ; le travail risque de rester descriptif et superficiel, sans réelle valeur ajoutée, et sera difficile à défendre avec précision devant un jury qui posera des questions ciblées.
4. Réponse libre ; un bon plan conserve la progression proposée (risques, puis finance internationale, puis méthodologie du mémoire, puis entraînement croisé et simulation de soutenance) en consacrant une session hebdomadaire à l''avancement concret du mémoire.
5. Exemple possible : « Le financement de projets d''infrastructure énergétique en zone UEMOA face au risque de change : étude de cas d''un montage de project finance », qui combine finance internationale (project finance, monnaie régionale) et gestion des risques financiers (couverture du risque de change).', 'texte', 45, true, 10
from public.courses c where c.slug = 'mas-fin-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Master 2 en Finance');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Gestion des risques financiers avancée : l''essentiel pour l''examen', '## Objectifs de la leçon

- Calculer une value at risk (VaR) paramétrique simple et l''interpréter correctement.
- Comprendre le mécanisme d''une option (call et put) et évaluer son prix par un modèle binomial à une période.
- Comprendre le fonctionnement d''un swap de taux d''intérêt et calculer ses flux nets.

Tous les taux, volatilités et paramètres de marché de cette leçon sont fictifs pour l''exemple.

## Fiche 1 : la value at risk (VaR) paramétrique

La VaR répond à une question précise : quelle est la perte maximale que peut subir une position, avec un niveau de confiance donné, sur un horizon de temps donné, en excluant les scénarios extrêmes au-delà de ce niveau de confiance.

- VaR paramétrique = position × z × σ, où z est le coefficient associé au niveau de confiance (environ 1,645 pour 95 %, environ 2,33 pour 99 %, sous hypothèse de distribution normale des rendements) et σ la volatilité (écart-type) du rendement sur l''horizon considéré.
- Pour passer d''un horizon d''un jour à un horizon de n jours, on utilise la règle de la racine du temps : VaR(n jours) = VaR(1 jour) × racine de n, sous hypothèse de rendements indépendants dans le temps.
- La VaR a des limites connues : elle suppose une distribution normale des rendements, souvent fausse en période de crise (queues de distribution plus épaisses que la loi normale), et elle ne dit rien de l''ampleur de la perte au-delà du seuil choisi.

Cas : une direction financière détient un portefeuille obligataire fictif de 500 millions de FCFA, avec une volatilité journalière estimée à 1,2 %. La VaR à 95 % sur un jour est 500 000 000 × 1,645 × 0,012 = 9 870 000 FCFA : il y a 95 % de chances que la perte sur un jour ne dépasse pas environ 9,87 millions de FCFA. La VaR à 99 % sur un jour est 500 000 000 × 2,33 × 0,012 = 13 980 000 FCFA. Sur dix jours, la VaR à 95 % devient 9 870 000 × racine de 10, soit environ 31 211 681 FCFA.

## Fiche 2 : les options, mécanisme et évaluation simplifiée

Une option donne le droit, sans obligation, d''acheter (option d''achat ou call) ou de vendre (option de vente ou put) un actif sous-jacent à un prix fixé à l''avance, le prix d''exercice ou strike, à ou avant une échéance donnée.

- Valeur intrinsèque d''un call : maximum entre (cours du sous-jacent moins strike) et zéro. Pour un put : maximum entre (strike moins cours du sous-jacent) et zéro.
- Le modèle binomial à une période évalue l''option en supposant que le cours du sous-jacent ne peut prendre que deux valeurs à l''échéance, une hausse (facteur u) ou une baisse (facteur d), et en construisant un portefeuille de réplication sans risque d''arbitrage.
- Probabilité risque-neutre : p = (1 + r − d) / (u − d), où r est le taux sans risque sur la période. La valeur de l''option est alors l''espérance actualisée de ses payoffs sous cette probabilité : C0 = [p × Cu + (1 − p) × Cd] / (1 + r).

Cas : une action fictive cote 2 000 FCFA, avec un facteur de hausse de 1,15 et un facteur de baisse de 0,90 sur la période, et un taux sans risque de la période de 5 %. Un call au prix d''exercice de 2 000 FCFA a pour payoffs : en hausse, le cours atteint 2 300 FCFA, soit un payoff de 300 ; en baisse, le cours atteint 1 800 FCFA, soit un payoff de 0 (l''option n''est pas exercée). La probabilité risque-neutre est p = (1 + 0,05 − 0,90) / (1,15 − 0,90) = 0,60. La valeur du call est [0,60 × 300 + 0,40 × 0] / 1,05 = 171,43 FCFA.

Pour le put de même strike : payoff en hausse = 0, payoff en baisse = 2 000 − 1 800 = 200. Valeur du put = [0,60 × 0 + 0,40 × 200] / 1,05 = 76,19 FCFA. On vérifie la relation de parité call-put : C − P doit égaler S0 − strike actualisé, soit 2 000 − 2 000/1,05 = 95,24 FCFA, exactement l''écart obtenu entre 171,43 et 76,19.

## Fiche 3 : les swaps de taux d''intérêt

Un swap de taux d''intérêt est un contrat par lequel deux contreparties échangent des flux d''intérêts sur un même notionnel, l''une payant un taux fixe, l''autre un taux variable (indexé sur un taux de référence du marché).

- Utilité principale : transformer la nature d''une dette ou d''un placement sans toucher au principal, par exemple une entreprise endettée à taux variable qui veut sécuriser ses charges financières en les transformant en taux fixe via un swap.
- À chaque période, seul le flux net (différence entre les deux jambes) est généralement échangé, ce qui réduit le risque de contrepartie par rapport à un échange des deux flux bruts.

Cas : un notionnel fictif de 1 milliard de FCFA, un payeur de taux fixe à 7 %, receveur de taux variable estimé successivement à 6,5 %, 6,8 %, 7,2 % et 7,5 % sur quatre périodes. Le flux fixe payé est chaque période de 1 000 000 000 × 7 % = 70 000 000 FCFA. Les flux variables reçus sont 65, 68, 72 et 75 millions. Les flux nets pour le payeur de taux fixe sont donc : période 1, −5 millions (il paie plus qu''il ne reçoit) ; période 2, −2 millions ; période 3, +2 millions ; période 4, +5 millions. Ce swap devient favorable au payeur de taux fixe lorsque les taux de marché montent au-delà de 7 %, ce qui illustre sa fonction de couverture contre une hausse des taux.

## Exercices pratiques

1. Un portefeuille de 300 millions de FCFA a une volatilité journalière de 1,5 %. Calculez la VaR à 95 % sur un jour et sur cinq jours.
2. Expliquez pourquoi la VaR ne dit rien de l''ampleur de la perte au-delà du seuil de confiance choisi.
3. Une action cote 1 500 FCFA, avec u = 1,20, d = 0,85 et un taux sans risque de période de 4 %. Calculez la probabilité risque-neutre et la valeur d''un call au strike de 1 500 FCFA.
4. Pourquoi une entreprise endettée à taux variable peut-elle vouloir conclure un swap où elle paie un taux fixe ?
5. Cas pratique : un portefeuille actions fictif de 800 millions de FCFA a une volatilité journalière de 1,8 %. Calculez la VaR à 99 % sur un jour, puis sur vingt jours. Une action sous-jacente cote 1 000 FCFA avec u = 1,10, d = 0,92 et un taux sans risque de période de 3 % ; calculez la valeur d''un put au strike de 1 000 FCFA.

## Corrigé

1. VaR 95 % 1 jour : 300 000 000 × 1,645 × 0,015 = 7 402 500 FCFA. Sur 5 jours : 7 402 500 × racine de 5 ≈ 16 552 493 FCFA.
2. La VaR fixe un seuil de perte qui ne doit pas être dépassé avec une probabilité donnée, mais elle ne précise pas la perte moyenne ou maximale dans les scénarios situés au-delà de ce seuil ; deux positions peuvent avoir la même VaR à 95 % alors que l''une a des pertes extrêmes bien plus catastrophiques que l''autre dans les 5 % de cas restants.
3. Cours en hausse : 1 500 × 1,20 = 1 800, payoff call = 300. Cours en baisse : 1 500 × 0,85 = 1 275, payoff call = 0. Probabilité risque-neutre : (1,04 − 0,85)/(1,20 − 0,85) = 0,543. Valeur du call : (0,543 × 300 + 0,457 × 0)/1,04 ≈ 156,6 FCFA.
4. Parce que le swap fixe à l''avance ses charges d''intérêts futures, la protégeant d''une hausse des taux de marché qui augmenterait sa charge financière réelle si elle restait exposée au taux variable ; elle échange un risque incertain contre une charge connue.
5. VaR 99 % 1 jour : 800 000 000 × 2,33 × 0,018 = 33 552 000 FCFA. Sur 20 jours : 33 552 000 × racine de 20 ≈ 150 049 106 FCFA. Pour le put : cours en hausse 1 100, payoff put = 0 ; cours en baisse 920, payoff put = 80. Probabilité risque-neutre : (1,03 − 0,92)/(1,10 − 0,92) = 0,611. Valeur du put : (0,611 × 0 + 0,389 × 80)/1,03 ≈ 30,2 FCFA.', 'texte', 50, false, 20
from public.courses c where c.slug = 'mas-fin-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Gestion des risques financiers avancée : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Finance internationale et financement de projets : l''essentiel pour l''examen', '## Objectifs de la leçon

- Comprendre la logique du financement de projet (project finance) et calculer un ratio de couverture du service de la dette (DSCR).
- Connaître les principaux indicateurs de la microfinance comme source de financement alternative.
- Décrire en termes généraux le rôle des marchés financiers régionaux africains dans le financement des entreprises et des États.

Tous les montants, ratios et taux de cette leçon sont fictifs pour l''exemple.

## Fiche 1 : le financement de projet (project finance)

Le financement de projet consiste à financer un actif ou une infrastructure (centrale électrique, route à péage, port) par une société ad hoc, le véhicule de projet, dont la dette est remboursée uniquement par les flux de trésorerie générés par le projet lui-même, sans recours (ou avec un recours limité) au patrimoine des actionnaires sponsors.

- Le véhicule de projet isole le risque : les créanciers du projet ne peuvent pas, en principe, se retourner contre les actifs des sponsors en cas de défaillance du projet.
- La structure de financement combine une dette senior importante (souvent 60 à 80 % du coût total), remboursée en priorité, et des fonds propres des sponsors, plus risqués mais aussi plus rémunérés en cas de succès.
- L''indicateur central de la solidité du montage est le ratio de couverture du service de la dette, DSCR : DSCR = flux de trésorerie disponible pour le service de la dette (CFADS) / service de la dette de la période (capital plus intérêts). Les banques exigent généralement un DSCR moyen et un DSCR minimum au-dessus d''un seuil contractuel, qui doit être vérifié chaque année.

Cas : le projet fictif « Soleil du Sahel », une centrale solaire de 30 MW, coûte 18 000 millions de FCFA, financés à 70 % par une dette senior, soit 12 600 millions, et 30 % par des fonds propres des sponsors, soit 5 400 millions. Sur huit années de remboursement, le CFADS prévisionnel varie entre 2 500 et 2 720 millions de FCFA selon l''année, avec une annuité de dette constante fictive de 1 900 millions. Le DSCR annuel varie alors entre 1,32 et 1,43, avec un DSCR moyen de 1,38. Un DSCR minimum de 1,32, supérieur à 1, signifie que même dans l''année la plus défavorable, le projet génère 32 % de flux supplémentaire au-delà du service de la dette : c''est une marge de sécurité que les prêteurs examinent attentivement avant d''accorder le financement.

## Fiche 2 : la microfinance comme financement alternatif

La microfinance regroupe les institutions qui octroient des crédits de faible montant, souvent sans garantie classique, à des populations ou des très petites entreprises exclues du système bancaire traditionnel. Elle joue un rôle significatif de financement alternatif en zone UEMOA, en complément du financement bancaire et des marchés financiers.

- Taux de remboursement : proportion des prêts remboursés dans les délais prévus, indicateur de la qualité du portefeuille de crédit.
- Portefeuille à risque à 30 jours, PAR30 : proportion de l''encours de crédit dont au moins une échéance est en retard de plus de 30 jours, rapportée à l''encours total. C''est l''indicateur de référence pour mesurer la qualité du portefeuille d''une institution de microfinance.

Cas : une institution de microfinance fictive a un encours total de 850 millions de FCFA, dont 42,5 millions présentent un retard de plus de 30 jours : le PAR30 est 42 500 000 / 850 000 000 = 5,0 %, à comparer à des seuils prudentiels que l''institution se fixe en interne (souvent sous les 5 à 10 % selon les pratiques du secteur, à vérifier auprès des régulateurs compétents). Sur 1 200 prêts décaissés, 1 140 ont été remboursés à temps, soit un taux de remboursement de 95,0 %.

## Fiche 3 : les marchés financiers régionaux africains, vue d''ensemble

Les marchés financiers régionaux africains, comme les marchés boursiers et obligataires organisés au sein de certaines zones monétaires d''Afrique de l''Ouest et d''Afrique centrale, permettent aux entreprises et aux États de lever des capitaux directement auprès des investisseurs, en complément du crédit bancaire.

- Marché des actions : permet aux entreprises cotées de lever des fonds propres sans recourir à l''endettement, mais la profondeur du marché (nombre d''entreprises cotées, volumes échangés) reste généralement limitée par rapport aux grandes places financières internationales.
- Marché obligataire régional : les États et certaines grandes entreprises émettent des titres de dette pour financer des projets d''infrastructure ou des besoins budgétaires, souscrits par des investisseurs institutionnels régionaux (banques, assurances, caisses de retraite, fonds).
- Rôle pour une entreprise en croissance : le marché financier régional offre une alternative de financement à moyen et long terme, utile pour diversifier les sources de financement au-delà du seul crédit bancaire, mais suppose une taille et une transparence financière suffisantes de l''entreprise émettrice.

Pour toute donnée précise sur un marché financier régional particulier (indices, capitalisation, nombre de sociétés cotées), il convient de se référer aux publications officielles de l''autorité de régulation ou de la bourse concernée plutôt qu''à des chiffres mémorisés, qui évoluent rapidement.

## Exercices pratiques

1. Expliquez pourquoi le financement de projet repose sur un véhicule ad hoc plutôt que sur le bilan direct des sponsors.
2. Un projet a un CFADS de 1 800 millions de FCFA et un service de la dette de 1 300 millions sur la période. Calculez le DSCR et commentez.
3. Une institution de microfinance a un encours total de 600 millions de FCFA, dont 18 millions en retard de plus de 30 jours. Calculez le PAR30.
4. Pourquoi la profondeur limitée d''un marché financier régional complique-t-elle l''usage des méthodes d''évaluation par les multiples de comparables, vues dans le cours de Master 1 ?
5. Cas pratique : un projet routier à péage fictif coûte 25 000 millions de FCFA, financé à 75 % par dette senior. Le CFADS prévisionnel est de 2 100 millions par an sur dix ans, avec une annuité de dette constante de 1 650 millions. Calculez le montant de la dette senior, le DSCR annuel, et commentez la marge de sécurité du montage.

## Corrigé

1. Le véhicule ad hoc isole juridiquement et financièrement le risque du projet : en cas de défaillance, les créanciers ne peuvent se retourner, en principe, que sur les actifs et les flux du projet lui-même, pas sur le patrimoine des sponsors, ce qui permet à ces derniers de financer des projets ambitieux sans engager l''intégralité de leur bilan.
2. DSCR = 1 800 / 1 300 ≈ 1,38, ce qui signifie que le projet génère 38 % de flux disponible au-delà du service de la dette, une marge de sécurité jugée confortable par la plupart des prêteurs de ce type de financement.
3. PAR30 = 18 000 000 / 600 000 000 = 3,0 %, un niveau généralement considéré comme sain pour un portefeuille de microcrédit, sous réserve des seuils prudentiels propres à chaque institution et à son régulateur.
4. Avec peu d''entreprises cotées comparables dans un même secteur sur un marché régional, il devient difficile de constituer un échantillon de comparables suffisamment homogène et liquide ; les multiples obtenus sont alors moins fiables, ce qui renforce l''intérêt de croiser systématiquement cette méthode avec le DCF et l''approche patrimoniale.
5. Dette senior : 25 000 × 0,75 = 18 750 millions. DSCR = 2 100 / 1 650 ≈ 1,27 : la marge de sécurité est positive mais plus réduite que dans l''exemple de la centrale solaire (DSCR moyen de 1,38), ce qui pourrait conduire les prêteurs à demander des garanties supplémentaires ou un ratio de couverture plus élevé avant de finaliser le financement.', 'texte', 50, false, 30
from public.courses c where c.slug = 'mas-fin-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Finance internationale et financement de projets : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Méthodologie du mémoire professionnel et soutenance : l''essentiel pour l''examen', '## Objectifs de la leçon

- Construire une problématique de mémoire précise et une méthodologie cohérente avec elle.
- Structurer un mémoire professionnel en finance : revue de littérature, méthodologie, résultats, discussion, conclusion.
- Préparer une soutenance orale efficace : plan de présentation, anticipation des questions du jury, gestion du temps.

## Fiche 1 : choisir et formuler une problématique

La problématique est la question centrale à laquelle le mémoire répond. Elle doit être précise, délimitée dans le temps, l''espace et le périmètre d''entreprise ou de secteur étudié, et répondre à un enjeu réel, pas seulement académique.

- Une bonne problématique relie un phénomène observé (par exemple, la difficulté des PME sénégalaises à accéder au crédit bancaire classique) à un cadre d''analyse du Master (par exemple, les critères de notation du risque de crédit, ou les alternatives de financement comme la microfinance ou le crédit-bail).
- Elle se formule le plus souvent comme une question ouverte suivie d''une délimitation : « Dans quelle mesure le financement de projet constitue-t-il une alternative crédible au crédit bancaire classique pour les PME agro-industrielles sénégalaises, à partir de l''étude d''un cas fictif de centrale solaire ? » plutôt qu''une question fermée appelant un simple oui ou non.
- Évitez les sujets trop vastes (« la finance en Afrique ») et les sujets trop étroits ne laissant aucune place à l''analyse (« le calcul du DSCR d''un seul projet », sans mise en perspective).

## Fiche 2 : construire une méthodologie cohérente

La méthodologie décrit comment vous allez répondre à la problématique, et doit être choisie en fonction de la nature de la question posée, pas par facilité.

- Étude de cas unique approfondie : pertinente quand on veut comprendre en détail un mécanisme ou une décision dans un contexte précis (par exemple, le montage financier d''un projet d''infrastructure).
- Étude comparative de plusieurs entreprises ou projets : pertinente quand on veut identifier des facteurs communs ou des différences entre plusieurs situations.
- Entretiens avec des praticiens (banquiers, directeurs financiers, gérants de fonds) : utiles pour recueillir des informations qualitatives non disponibles dans les documents publics, à condition de présenter une grille d''entretien claire et de respecter l''anonymat si nécessaire.
- Analyse de données financières publiques (rapports annuels, données de marché) : pertinente pour des analyses quantitatives, à condition de citer précisément les sources et de ne jamais inventer un chiffre non vérifiable.

Chaque choix méthodologique doit être justifié dans le mémoire lui-même : pourquoi cette méthode plutôt qu''une autre, quelles sont ses limites, comment elles ont été atténuées autant que possible.

## Fiche 3 : la structure attendue d''un mémoire professionnel

- Introduction : contexte, problématique, annonce du plan.
- Revue de littérature ou cadre théorique : présentation des concepts et travaux existants mobilisés, sans invention de sources ni de citations qui ne pourraient être retrouvées et vérifiées.
- Méthodologie : présentation détaillée et justifiée de la démarche suivie.
- Résultats ou analyse du cas : présentation factuelle des données et calculs, avec les hypothèses toujours explicitées, notamment lorsque des taux fictifs sont utilisés à des fins pédagogiques dans un exercice ; dans un mémoire réel, seules des données vérifiables et sourcées doivent être utilisées.
- Discussion : interprétation des résultats, mise en perspective avec la littérature, limites du travail.
- Conclusion : réponse explicite à la problématique posée en introduction, et pistes pour des travaux futurs.
- Bibliographie et annexes : toutes les sources citées doivent être réelles, vérifiables et correctement référencées ; le plagiat, y compris la paraphrase non attribuée, est une faute grave sanctionnée par les établissements.

## Fiche 4 : préparer la soutenance orale

La soutenance dure généralement entre vingt et quarante-cinq minutes selon les établissements, dont une présentation orale de dix à vingt minutes suivie de questions du jury.

- Structurez votre présentation autour de la problématique, de la méthodologie, des principaux résultats et de la conclusion : ne répétez pas l''intégralité du mémoire, mettez en avant ce qui a le plus de valeur ajoutée.
- Préparez des diapositives sobres, avec des graphiques ou tableaux clés plutôt que des pavés de texte ; le jury a déjà lu le mémoire, il attend une synthèse, pas une lecture.
- Anticipez les questions classiques d''un jury : pourquoi ce choix méthodologique, quelles sont les limites de votre étude, que feriez-vous différemment avec plus de temps ou de données, quelle est la portée pratique de vos conclusions pour une entreprise ou un décideur réel.
- Entraînez-vous à voix haute, chronométré, devant un public même informel (camarades, famille) ; la fluidité orale compte autant que le contenu pour la note finale.
- Gardez une posture de recul critique sur votre propre travail : un jury valorise davantage un candidat qui reconnaît honnêtement les limites de son étude qu''un candidat qui surestime la portée de ses conclusions.

## Exercices pratiques

1. Reformulez cette problématique trop vaste : « La gestion des risques financiers des entreprises africaines ». Proposez une version précise et délimitée.
2. Pourquoi le choix de la méthodologie doit-il être justifié dans le mémoire, et pas seulement décrit ?
3. Citez les six grandes parties attendues dans la structure d''un mémoire professionnel.
4. Quelles sont les trois questions de jury les plus fréquentes à anticiper en soutenance ?
5. Expliquez pourquoi la paraphrase non attribuée constitue une forme de plagiat, même sans copier-coller exact.

## Corrigé

1. Exemple de reformulation : « Dans quelle mesure une entreprise exportatrice sénégalaise de produits halieutiques peut-elle réduire son exposition au risque de change par des instruments de couverture accessibles sur le marché régional, à partir d''une étude de cas fictive ? » ; la version révisée précise le secteur, le pays, le type de risque et le périmètre d''étude.
2. Parce qu''une méthodologie non justifiée laisse penser qu''elle a été choisie par facilité ou par défaut, alors qu''un jury attend de comprendre pourquoi cette démarche était la plus pertinente pour répondre à la problématique posée, et quelles limites elle comporte par rapport à d''autres approches possibles.
3. Introduction ; revue de littérature ou cadre théorique ; méthodologie ; résultats ou analyse du cas ; discussion ; conclusion (avec bibliographie et annexes en complément).
4. Pourquoi ce choix méthodologique plutôt qu''un autre ; quelles sont les limites de l''étude ; quelle est la portée pratique des conclusions pour une entreprise ou un décideur réel.
5. Parce que reformuler les idées ou l''analyse d''un auteur avec d''autres mots, sans les attribuer explicitement par une citation ou une référence, fait croire au lecteur que ce raisonnement est originel au candidat, alors qu''il provient d''une source tierce ; seule la citation explicite avec référence précise permet de distinguer ce qui appartient à l''auteur du mémoire de ce qui est repris d''un travail existant.', 'texte', 50, false, 40
from public.courses c where c.slug = 'mas-fin-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Méthodologie du mémoire professionnel et soutenance : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Master 2 Finance (entraînement corrigé)', '## Avertissement

Ce sujet est un entraînement non officiel construit pour ce cours, avec un barème indicatif. Il ne remplace pas les annales de votre établissement mais mobilise les matières avancées du programme de Master 2 Finance.

## Sujet type d''examen de Master 2 Finance (3 heures, barème indicatif sur 20)

Cas d''entreprise : Sine-Saloum Énergie SA, société de projet fictive, développe une mini-centrale hydroélectrique de 15 MW dans la région du Sine-Saloum, financée par un montage de financement de projet, et une direction financière d''un groupe exportateur, Delta Riz SA, souhaite couvrir son exposition au risque de change.

## Partie 1 : financement de projet (7 points)

Données : coût total du projet 9 000 millions de FCFA, financé à 65 % par dette senior. Le CFADS prévisionnel est de 1 350 millions par an sur sept ans, avec une annuité de dette constante de 980 millions.

1. Calculez le montant de la dette senior et des fonds propres des sponsors.
2. Calculez le DSCR annuel et commentez la marge de sécurité du montage.
3. Expliquez pourquoi les créanciers de ce projet n''ont, en principe, pas de recours direct sur le patrimoine personnel des sponsors.

## Partie 2 : gestion des risques financiers (8 points)

Données : Delta Riz SA détient une position de change de 400 millions de FCFA équivalents en devises à encaisser dans trois mois, avec une volatilité journalière estimée du taux de change de 0,9 %.

4. Calculez la VaR à 95 % sur un jour de cette position, puis sur dix jours.
5. Delta Riz envisage un swap de taux pour une autre dette à taux variable de notionnel 600 millions de FCFA : taux fixe proposé 6,5 %, taux variable estimé successivement à 6,0 %, 6,3 %, 6,8 % sur trois périodes. Calculez les flux nets pour l''entreprise si elle paie le taux fixe, et indiquez dans quel cas ce choix se révèle favorable.
6. Expliquez la différence entre couverture par un instrument dérivé et simple acceptation du risque de change, en termes de coût et de certitude du résultat.

## Partie 3 : méthodologie du mémoire (5 points)

7. Un étudiant propose la problématique suivante : « Le financement des entreprises en Afrique ». Critiquez cette formulation et proposez une version améliorée en lien avec le cas Sine-Saloum Énergie.
8. Citez trois questions qu''un jury pourrait poser en soutenance sur un mémoire consacré au financement de projet de cette centrale.

## Exercices pratiques (entraînement complémentaire)

1. Pourquoi le DSCR minimum sur toute la durée du financement est-il plus important pour les prêteurs que le DSCR moyen ?
2. Dans quel cas précis un swap où l''entreprise paie un taux fixe devient-il défavorable par rapport à rester en taux variable ?
3. Pourquoi un mémoire sur un projet de financement doit-il explicitement reconnaître les limites des données disponibles, notamment lorsque certains chiffres sont fictifs ou estimés ?

## Corrigé

1. Dette senior : 9 000 × 0,65 = 5 850 millions. Fonds propres des sponsors : 9 000 − 5 850 = 3 150 millions.
2. DSCR = 1 350 / 980 ≈ 1,38 chaque année (CFADS et annuité constants dans cet énoncé simplifié) : une marge de sécurité de 38 % au-delà du service de la dette, jugée confortable, à condition que les prévisions de CFADS restent fiables sur toute la durée du financement.
3. Parce que la dette est logée dans le véhicule de projet, juridiquement distinct des sponsors, et structurée sans recours ou à recours limité : en cas de défaillance du projet, les créanciers se remboursent sur les actifs et les flux du projet lui-même, pas sur le patrimoine personnel ou le bilan global des sponsors, ce qui limite le risque pris par ces derniers.
4. VaR 95 % 1 jour : 400 000 000 × 1,645 × 0,009 = 5 922 000 FCFA. Sur 10 jours : 5 922 000 × racine de 10 ≈ 18 727 008 FCFA.
5. Flux fixe payé chaque période : 600 000 000 × 6,5 % = 39 000 000 FCFA. Flux variables reçus : 36, 37,8 et 40,8 millions. Flux nets pour l''entreprise : période 1, −3 millions ; période 2, −1,2 million ; période 3, +1,8 million. Ce choix devient favorable lorsque le taux variable de marché dépasse 6,5 %, comme en période 3.
6. La couverture par un dérivé a un coût (prime d''option, ou écart potentiellement défavorable sur un swap) mais fixe ou plafonne le résultat financier futur, réduisant l''incertitude ; l''acceptation du risque ne coûte rien immédiatement mais expose l''entreprise à une variabilité totale de son résultat selon l''évolution réelle du taux de change, favorable ou défavorable.
7. La problématique est trop vaste, sans délimitation géographique précise, sectorielle ni méthodologique. Version améliorée : « Dans quelle mesure le financement de projet permet-il de sécuriser le financement d''une infrastructure énergétique régionale face au risque de construction et d''exploitation, à partir de l''étude d''un cas fictif de mini-centrale hydroélectrique au Sine-Saloum ? »
8. Exemples de questions : pourquoi avoir choisi une étude de cas unique plutôt qu''une comparaison de plusieurs projets ; comment avez-vous validé la fiabilité des hypothèses de CFADS utilisées dans le montage ; quelles seraient les conséquences pour les sponsors et les créanciers si le DSCR minimum tombait sous le seuil contractuel pendant une année difficile.
Exercices complémentaires : 1. Parce que le DSCR minimum identifie l''année la plus fragile du montage, celle où le risque de défaut est le plus élevé ; un DSCR moyen confortable peut masquer une année isolée où la marge de sécurité devient dangereusement faible. 2. Quand le taux variable de marché reste durablement inférieur au taux fixe convenu : l''entreprise paie alors plus qu''elle n''aurait payé en restant à taux variable, le swap devient un coût net plutôt qu''une protection utile. 3. Parce que la crédibilité d''un mémoire professionnel repose sur la transparence de ses sources et de ses hypothèses ; reconnaître explicitement qu''un chiffre est estimé ou fictif, et pourquoi, renforce la rigueur perçue du travail, alors que le dissimuler expose le candidat à une perte de crédibilité en soutenance si le jury le découvre.', 'texte', 55, false, 50
from public.courses c where c.slug = 'mas-fin-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Master 2 Finance (entraînement corrigé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Gestion des risques financiers avancée (VaR, options, swaps)', '## Fiche du cours vidéo

Durée : 1h30. Niveau : Master 2 Finance.
Objectifs : calculer une VaR paramétrique et en discuter les limites, évaluer une option par le modèle binomial, calculer les flux nets d''un swap de taux.
Matériel : tableau ou diaporama, calculatrice.
Prérequis : actualisation, notions de probabilité et de variance.

## 00:00 – 05:00 · Introduction et enjeux

Bonjour. Cette séance porte sur la gestion des risques financiers avancée : trois outils que toute direction financière ou salle des marchés utilise au quotidien pour mesurer et couvrir ses risques. Nous allons calculer une value at risk, évaluer une option par un modèle simple, et comprendre comment un swap de taux transforme une exposition financière. Gardez votre calculatrice à portée de main, nous allons refaire chaque calcul ensemble.

Visuel : diapositive de titre avec les trois outils annoncés.

## 05:00 – 20:00 · Partie 1 : la value at risk paramétrique

La VaR répond à une question très concrète : quelle est la perte maximale que je risque de subir, avec un niveau de confiance donné, sur un horizon donné. C''est l''indicateur de risque de marché le plus utilisé dans les salles de marché et les directions financières, malgré ses limites que nous allons discuter.

La formule paramétrique est simple : VaR égale la position, multipliée par un coefficient z associé au niveau de confiance, multipliée par la volatilité. Pour un niveau de confiance de 95 %, sous hypothèse de distribution normale, z vaut environ 1,645. Pour 99 %, z vaut environ 2,33.

Prenons un exemple concret : une direction financière détient un portefeuille obligataire de 500 millions de FCFA, avec une volatilité journalière estimée à 1,2 %. La VaR à 95 % sur un jour est 500 millions fois 1,645 fois 0,012, soit 9 870 000 FCFA. Cela signifie qu''il y a 95 % de chances que la perte sur une seule journée ne dépasse pas environ 9,87 millions de FCFA. À 99 %, la VaR monte à 500 millions fois 2,33 fois 0,012, soit 13 980 000 FCFA : plus on exige un niveau de confiance élevé, plus la VaR augmente, car on veut couvrir des scénarios plus rares et plus extrêmes.

Pour passer à un horizon plus long, on utilise la règle de la racine du temps, sous hypothèse d''indépendance des rendements journaliers : la VaR sur dix jours égale la VaR sur un jour multipliée par la racine de dix. Ici, 9 870 000 fois racine de 10, soit environ 31 211 681 FCFA.

Visuel : courbe de distribution normale avec la zone de 5 % de queue gauche hachurée, le seuil de VaR indiqué par une ligne verticale.

Discussion essentielle, à toujours mentionner en examen : la VaR suppose une distribution normale des rendements. En période de crise financière, les marchés présentent des queues de distribution plus épaisses que la loi normale ne le prévoit : les pertes extrêmes sont plus fréquentes que le modèle ne le suggère. De plus, la VaR ne dit absolument rien de l''ampleur de la perte au-delà du seuil choisi : deux portefeuilles peuvent avoir exactement la même VaR à 95 % alors que l''un a des pertes catastrophiques dans les 5 % de cas restants et l''autre non.

## 20:00 – 35:00 · Partie 2 : évaluer une option par le modèle binomial

Passons aux options. Une option donne le droit, sans obligation, d''acheter (call) ou de vendre (put) un actif à un prix fixé d''avance, le strike. Le modèle binomial à une période est la façon la plus pédagogique de comprendre comment on évalue une option sans recourir à des formules fermées complexes.

On suppose que le cours du sous-jacent ne peut prendre que deux valeurs à l''échéance : une valeur haute, obtenue en multipliant le cours initial par un facteur u, et une valeur basse, obtenue en multipliant par un facteur d. L''idée clé du modèle est de construire un portefeuille de réplication, combinant l''actif sous-jacent et un prêt ou un emprunt sans risque, qui reproduit exactement les payoffs de l''option dans les deux scénarios. Cela permet de calculer une probabilité dite risque-neutre, qui n''est pas la vraie probabilité de hausse ou de baisse, mais un outil mathématique qui permet d''actualiser correctement les payoffs futurs.

Prenons un exemple : une action cote 2 000 FCFA, avec un facteur de hausse u de 1,15 et un facteur de baisse d de 0,90, et un taux sans risque de la période de 5 %. En hausse, le cours atteint 2 300 FCFA ; en baisse, 1 800 FCFA. Pour un call au strike de 2 000 FCFA, le payoff en hausse est 300, le payoff en baisse est 0, puisque l''option ne serait pas exercée si le cours est inférieur au strike.

La probabilité risque-neutre est p égale (1 plus le taux sans risque moins d) divisé par (u moins d), soit (1,05 moins 0,90) divisé par (1,15 moins 0,90), soit 0,60. La valeur du call est l''espérance actualisée des payoffs sous cette probabilité : [0,60 fois 300 plus 0,40 fois 0] divisé par 1,05, soit 171,43 FCFA.

Visuel : arbre binomial à une période dessiné au tableau, avec les deux branches et les payoffs indiqués.

Faisons le même calcul pour le put correspondant, même strike de 2 000 FCFA : payoff en hausse égal à 0, payoff en baisse égal à 2 000 moins 1 800, soit 200. La valeur du put est [0,60 fois 0 plus 0,40 fois 200] divisé par 1,05, soit 76,19 FCFA. Vérifions la relation de parité call-put, qui doit toujours être respectée sans opportunité d''arbitrage : C moins P doit égaler S0 moins le strike actualisé, soit 2 000 moins 2 000 divisé par 1,05, soit 95,24 FCFA. Et effectivement, 171,43 moins 76,19 égale 95,24. Cette vérification est un excellent réflexe à montrer à l''examen : elle prouve que vos deux calculs sont cohérents entre eux.

## 35:00 – 50:00 · Partie 3 : les swaps de taux d''intérêt

Troisième outil : le swap de taux d''intérêt. Un swap est un contrat par lequel deux contreparties échangent des flux d''intérêts calculés sur un même notionnel, l''une payant un taux fixe, l''autre un taux variable indexé sur un taux de référence du marché. Le principal n''est jamais échangé, seul le flux d''intérêt net est généralement réglé à chaque période.

Pourquoi une entreprise utiliserait-elle un swap ? Imaginez une entreprise endettée à taux variable, qui craint une hausse des taux de marché dans les prochaines années. Elle peut conclure un swap où elle paie un taux fixe et reçoit un taux variable : le taux variable reçu compense exactement le taux variable qu''elle paie sur sa dette d''origine, et il ne lui reste plus, économiquement, qu''à payer le taux fixe du swap. Elle a transformé sa dette à taux variable en dette synthétique à taux fixe, sans renégocier le contrat de prêt d''origine.

Prenons un exemple : un notionnel de 1 milliard de FCFA, un taux fixe payé de 7 %, et des taux variables reçus estimés successivement à 6,5 %, 6,8 %, 7,2 % et 7,5 % sur quatre périodes. Le flux fixe payé chaque période est 1 milliard fois 7 %, soit 70 millions. Les flux variables reçus sont 65, 68, 72 et 75 millions. Les flux nets pour le payeur de taux fixe sont donc : période 1, moins 5 millions ; période 2, moins 2 millions ; période 3, plus 2 millions ; période 4, plus 5 millions.

Visuel : tableau des quatre périodes avec flux fixe, flux variable et flux net, en couleur selon le signe.

Observez la logique : quand les taux de marché montent au-delà du taux fixe de 7 %, le swap devient favorable au payeur de taux fixe, puisqu''il reçoit alors plus qu''il ne paie. C''est exactement ce qui se passe en période 3 et 4 dans notre exemple. Le swap a bien joué son rôle de couverture contre la hausse des taux.

## 50:00 – 55:00 · Pause et quiz interactif

Trois questions de vérification.

- Question 1 : que signifie une VaR à 95 % sur un jour de 10 millions de FCFA ? Réponse : il y a 95 % de chances que la perte sur cette position ne dépasse pas 10 millions de FCFA sur une seule journée, sous les hypothèses du modèle.
- Question 2 : à quoi sert la probabilité risque-neutre dans le modèle binomial d''évaluation d''option ? Réponse : à actualiser correctement l''espérance des payoffs futurs de l''option, en s''appuyant sur un portefeuille de réplication sans opportunité d''arbitrage, plutôt que sur la vraie probabilité de hausse ou de baisse du marché.
- Question 3 : comment un swap de taux permet-il de transformer une dette à taux variable en dette synthétique à taux fixe ? Réponse : en recevant un flux variable qui compense exactement le taux variable payé sur la dette d''origine, ne laissant à l''entreprise que le paiement du taux fixe du swap.

## 55:00 – 70:00 · Partie 4 : combiner les outils dans une politique de gestion des risques

Dans la pratique, une direction financière ne choisit pas un seul outil : elle combine mesure du risque et instruments de couverture. La VaR permet de quantifier et de suivre l''exposition globale de l''entreprise aux marchés. Les options offrent une couverture asymétrique : elles protègent contre un mouvement défavorable tout en conservant le bénéfice d''un mouvement favorable, au prix d''une prime payée d''avance. Les swaps offrent une couverture symétrique, souvent sans paiement initial de prime, mais sans possibilité de bénéficier d''un mouvement favorable une fois le contrat conclu.

Le choix entre option et swap dépend donc de l''appétit au risque de l''entreprise et du coût relatif des deux instruments sur le marché à un instant donné. Une entreprise exportatrice qui craint une baisse de la devise dans laquelle elle facture peut acheter un put sur cette devise pour se protéger tout en gardant la possibilité de profiter d''une hausse, ou conclure un contrat à terme, plus proche d''un swap, qui fixe le taux de change futur sans paiement de prime mais sans possibilité de gain si la devise s''apprécie.

Visuel : tableau comparatif option versus swap, sur les critères coût initial, symétrie de la protection, flexibilité.

## 70:00 – 80:00 · Cas pratique approfondi : stress test simplifié

Terminons par un exercice de stress test, complément essentiel à la VaR. Reprenons le portefeuille obligataire de 500 millions de FCFA. La VaR à 99 % sur un jour nous donnait 13 980 000 FCFA, en supposant une distribution normale. Mais que se passerait-il si la volatilité journalière, habituellement de 1,2 %, triplait soudainement à 3,6 % lors d''une crise de marché, un scénario que la VaR historique n''aurait peut-être pas anticipé ? La perte potentielle sur un jour deviendrait alors 500 millions fois 2,33 fois 0,036, soit environ 41 940 000 FCFA, trois fois plus que la VaR calculée en conditions normales.

C''est pourquoi les bonnes pratiques de gestion des risques exigent de compléter la VaR par des scénarios de stress, qui testent des conditions de marché extrêmes mais plausibles. La VaR mesure le risque en conditions normales ; le stress test mesure la résistance en conditions de crise.

## 80:00 – 85:00 · Synthèse générale

Pour résumer cette séance : la VaR quantifie un risque de marché sous hypothèse de distribution normale, avec des limites bien identifiées qu''il faut toujours savoir discuter ; les options offrent une couverture asymétrique évaluée par un modèle de réplication sans arbitrage ; les swaps transforment la nature d''une exposition financière à coût généralement nul au départ. Une politique de gestion des risques robuste combine ces outils de mesure et de couverture, complétés par des scénarios de stress.

## 85:00 – 90:00 · Évaluation finale

1. Quelle est la formule de la VaR paramétrique à un jour ? Réponse : position multipliée par le coefficient z associé au niveau de confiance, multipliée par la volatilité journalière.
2. Pourquoi la VaR est-elle limitée en période de crise financière ? Réponse : parce qu''elle suppose une distribution normale des rendements, alors que les marchés en crise présentent des pertes extrêmes plus fréquentes que ce que cette distribution prévoit.
3. Dans le modèle binomial, à quoi correspond la probabilité risque-neutre p ? Réponse : à (1 plus le taux sans risque moins le facteur de baisse d), divisé par (le facteur de hausse u moins le facteur de baisse d), utilisée pour actualiser l''espérance des payoffs de l''option.
4. Quelle relation doit toujours être vérifiée entre la valeur d''un call et celle d''un put de même strike et même échéance ? Réponse : la relation de parité call-put, C moins P égale le cours actuel du sous-jacent moins le strike actualisé au taux sans risque.
5. Pourquoi un swap de taux ne comporte-t-il généralement pas de prime initiale, contrairement à une option ? Réponse : parce que les conditions du swap, notionnel et taux fixe, sont fixées de telle sorte que la valeur actuelle des deux jambes de flux soit égale à l''origine du contrat, alors qu''une option offre un droit asymétrique qui doit être rémunéré par une prime pour compenser l''absence d''obligation de l''acheteur.', 'video', 90, false, 60
from public.courses c where c.slug = 'mas-fin-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Gestion des risques financiers avancée (VaR, options, swaps)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Finance internationale et financement de projets', '## Fiche du cours vidéo

Durée : 1h30. Niveau : Master 2 Finance.
Objectifs : construire un montage de financement de projet et calculer le DSCR, connaître les indicateurs clés de la microfinance, situer le rôle des marchés financiers régionaux africains.
Matériel : tableau ou diaporama, calculatrice.
Prérequis : actualisation, lecture d''un plan de financement.

## 00:00 – 05:00 · Introduction et enjeux

Bonjour. Cette séance porte sur la finance internationale et le financement de projets : comment une infrastructure, une centrale électrique ou une route à péage, se finance par un montage spécifique où la dette est remboursée par les flux du projet lui-même ; comment la microfinance complète le financement bancaire classique ; et quel rôle jouent les marchés financiers régionaux africains. Nous allons suivre le cas fictif de la centrale solaire « Soleil du Sahel » tout au long de la séance.

Visuel : diapositive de titre avec une photo schématique de centrale solaire et les trois thèmes annoncés.

## 05:00 – 20:00 · Partie 1 : la logique du financement de projet

Le financement de projet, ou project finance, répond à un besoin précis : financer un actif coûteux et de longue durée de vie, sans faire peser l''intégralité du risque sur le bilan des entreprises qui portent le projet, appelées les sponsors.

Le mécanisme central est la création d''un véhicule de projet, une société ad hoc dédiée uniquement à ce projet. Cette société emprunte auprès des banques, construit et exploite l''actif, et rembourse sa dette exclusivement avec les flux de trésorerie générés par l''exploitation, sans recours ou avec un recours limité au patrimoine des sponsors. C''est la différence fondamentale avec un financement d''entreprise classique, où le prêteur peut se retourner sur l''ensemble du bilan de l''emprunteur.

Prenons notre cas : « Soleil du Sahel », une centrale solaire fictive de 30 mégawatts, coûte 18 000 millions de FCFA. Elle est financée à 70 % par une dette senior, soit 12 600 millions, et à 30 % par des fonds propres des sponsors, soit 5 400 millions. Cette répartition, typique du secteur de l''énergie, reflète le fait que les flux futurs du projet, très prévisibles une fois le contrat de vente d''électricité signé, permettent aux banques d''accepter un niveau d''endettement élevé.

Visuel : schéma du montage avec le véhicule de projet au centre, les sponsors à gauche, les banques à droite, et les flèches de flux de trésorerie vers les prêteurs.

## 20:00 – 35:00 · Partie 2 : calculer et interpréter le DSCR

L''indicateur central de la solidité d''un montage de financement de projet est le ratio de couverture du service de la dette, le DSCR : DSCR égale le flux de trésorerie disponible pour le service de la dette, qu''on appelle CFADS, divisé par le service de la dette de la période, c''est-à-dire la somme du capital remboursé et des intérêts payés.

Pour « Soleil du Sahel », sur huit années de remboursement, le CFADS prévisionnel varie entre 2 500 et 2 720 millions de FCFA selon l''année, avec une annuité de dette constante de 1 900 millions. Calculons le DSCR de la première année : 2 600 divisé par 1 900, soit environ 1,37. Sur l''ensemble des huit années, le DSCR varie entre 1,32 et 1,43, avec une moyenne de 1,38.

Que signifie un DSCR de 1,32 dans l''année la plus défavorable ? Cela signifie que même cette année-là, le projet génère 32 % de flux de trésorerie supplémentaire au-delà de ce qui est strictement nécessaire pour payer la dette. C''est cette marge de sécurité, et plus précisément le DSCR minimum sur toute la durée du financement, que les banques examinent en priorité avant d''accorder leur financement, car c''est l''année la plus fragile qui détermine le risque réel de défaut.

Visuel : graphique en barres du DSCR année par année, avec une ligne horizontale représentant le seuil contractuel minimum exigé par les prêteurs, par exemple 1,20 dans cet exemple fictif.

Mettez en pause et réfléchissez : si une année de maintenance exceptionnelle réduisait le CFADS de cette année-là à 2 200 millions au lieu de 2 600, que deviendrait le DSCR cette année, et quelles conséquences cela aurait-il potentiellement sur le respect des engagements contractuels envers les prêteurs ? Le DSCR tomberait à 2 200 divisé par 1 900, soit environ 1,16, probablement sous le seuil contractuel minimum, ce qui déclencherait une discussion avec les prêteurs, voire des mesures correctives prévues au contrat de financement.

## 35:00 – 50:00 · Partie 3 : la microfinance comme financement alternatif

Changeons d''échelle. Toutes les entreprises n''ont pas accès au financement bancaire classique ni aux marchés financiers. La microfinance s''est développée pour répondre aux besoins de financement de petite taille, souvent sans garantie classique, pour des populations ou de très petites entreprises exclues du système bancaire traditionnel.

Deux indicateurs structurent le pilotage du risque de crédit dans une institution de microfinance. Le taux de remboursement, qui mesure la proportion de prêts remboursés dans les délais prévus. Et le portefeuille à risque à 30 jours, le PAR30, qui mesure la proportion de l''encours total présentant au moins une échéance en retard de plus de 30 jours.

Pour une institution fictive avec un encours total de 850 millions de FCFA, dont 42,5 millions en retard de plus de 30 jours, le PAR30 est 42,5 divisé par 850, soit 5,0 %. Sur 1 200 prêts décaissés, 1 140 ont été remboursés à temps, soit un taux de remboursement de 95,0 %.

Visuel : jauge visuelle du PAR30 avec des zones de couleur verte, jaune et rouge selon le niveau, à titre pédagogique uniquement, les seuils réels dépendant de chaque régulateur et institution.

Pourquoi ces indicateurs sont-ils essentiels en finance internationale et en financement de projets ? Parce que de plus en plus de montages combinent financement bancaire classique, financement de projet et microfinance, notamment pour des projets d''électrification rurale décentralisée où les utilisateurs finaux sont eux-mêmes financés par microcrédit pour payer leurs raccordements ou leurs équipements.

## 50:00 – 55:00 · Pause et quiz interactif

Trois questions de vérification.

- Question 1 : pourquoi le DSCR minimum importe-t-il davantage que le DSCR moyen pour un prêteur ? Réponse : parce qu''il identifie l''année la plus fragile du montage, celle où le risque de défaut est le plus élevé, alors qu''une moyenne confortable peut masquer une année isolée dangereusement faible.
- Question 2 : que mesure le PAR30 dans une institution de microfinance ? Réponse : la proportion de l''encours total de crédit présentant au moins une échéance en retard de plus de 30 jours, indicateur de la qualité du portefeuille.
- Question 3 : pourquoi le financement de projet permet-il à des sponsors de porter des projets plus ambitieux que leur bilan ne le permettrait seul ? Réponse : parce que la dette est logée dans un véhicule ad hoc, remboursée par les flux du projet, sans engager l''intégralité du patrimoine ou du bilan global des sponsors.

## 55:00 – 70:00 · Partie 4 : les marchés financiers régionaux africains

Troisième thème de cette séance : le rôle des marchés financiers régionaux africains dans le financement des entreprises et des États. Au-delà du crédit bancaire et de la microfinance, certaines zones monétaires d''Afrique de l''Ouest et d''Afrique centrale disposent de marchés boursiers et obligataires organisés, qui permettent de lever des capitaux directement auprès d''investisseurs.

Sur le marché des actions, une entreprise cotée peut lever des fonds propres sans recourir à l''endettement, mais la profondeur de ces marchés, en nombre d''entreprises cotées et en volumes échangés, reste généralement limitée par rapport aux grandes places financières internationales. Sur le marché obligataire régional, les États et certaines grandes entreprises émettent des titres de dette pour financer des projets d''infrastructure ou des besoins budgétaires, souscrits par des investisseurs institutionnels régionaux, banques, assurances, caisses de retraite.

Pour une entreprise comme les sponsors de « Soleil du Sahel », le marché financier régional pourrait, à terme, offrir une source de financement complémentaire au financement bancaire et au financement de projet, par exemple via une émission obligataire adossée aux revenus futurs de plusieurs centrales similaires, à condition d''atteindre une taille et une transparence financière suffisantes.

Visuel : schéma des trois sources de financement, crédit bancaire, financement de projet, marché financier régional, avec leurs caractéristiques respectives de coût, de risque et d''accessibilité.

Point de méthode important : pour toute donnée précise sur un marché financier régional particulier, indices, capitalisation, nombre de sociétés cotées, il faut toujours se référer aux publications officielles de l''autorité de régulation ou de la bourse concernée, et jamais à des chiffres mémorisés qui évoluent rapidement et peuvent être obsolètes.

## 70:00 – 80:00 · Cas pratique approfondi : construire un plan de financement combiné

Imaginons un projet plus modeste que « Soleil du Sahel » : l''électrification d''un village par mini-réseau solaire, pour un coût total de 400 millions de FCFA. Le porteur de projet envisage trois sources : une dette de financement de projet auprès d''une banque de développement pour 60 % du coût, soit 240 millions, des fonds propres des sponsors pour 25 %, soit 100 millions, et une subvention ou garantie partielle appuyée par de la microfinance pour faciliter les raccordements des ménages pour les 15 % restants, soit 60 millions.

Ce type de montage hybride, combinant financement de projet classique et dispositifs de microfinance pour les utilisateurs finaux, est aujourd''hui une pratique courante pour les projets d''accès à l''énergie en zone rurale africaine. Le DSCR du projet se calculerait de la même façon que pour « Soleil du Sahel », en rapportant les flux de trésorerie disponibles du mini-réseau au service de la dette de financement de projet uniquement, les 60 millions liés aux dispositifs de microfinance des ménages n''entrant pas dans ce calcul puisqu''ils concernent une dette distincte, portée par les utilisateurs finaux et non par le véhicule de projet lui-même.

## 80:00 – 85:00 · Synthèse générale

Pour résumer cette séance : le financement de projet isole le risque d''une infrastructure dans un véhicule dédié, remboursé par ses propres flux, mesuré par le DSCR dont le minimum sur la durée est l''indicateur le plus surveillé par les prêteurs. La microfinance complète ce paysage pour les acteurs exclus du financement classique, mesurée par le taux de remboursement et le PAR30. Les marchés financiers régionaux africains, encore de profondeur limitée, offrent une troisième voie de financement en développement, à ne jamais confondre avec les grandes places financières internationales en termes de liquidité.

## 85:00 – 90:00 · Évaluation finale

1. Comment calcule-t-on le DSCR d''un projet financé par financement de projet ? Réponse : flux de trésorerie disponible pour le service de la dette, CFADS, divisé par le service de la dette de la période, capital plus intérêts.
2. Pourquoi le DSCR minimum sur la durée du financement est-il l''indicateur le plus surveillé par les prêteurs ? Réponse : parce qu''il identifie l''année la plus fragile du montage, celle qui présente le risque de défaut le plus élevé, information qu''une moyenne confortable pourrait masquer.
3. Que mesure le PAR30 en microfinance ? Réponse : la proportion de l''encours total de crédit présentant au moins une échéance en retard de plus de 30 jours.
4. Pourquoi la profondeur des marchés financiers régionaux africains reste-t-elle généralement limitée ? Réponse : parce que le nombre d''entreprises cotées et les volumes échangés y sont en général plus restreints que sur les grandes places financières internationales, ce qui réduit la liquidité et la facilité de lever des capitaux importants.
5. Pourquoi le financement de projet permet-il à des sponsors de porter un projet au-delà de leur capacité de bilan habituelle ? Réponse : parce que la dette est logée dans un véhicule de projet distinct, remboursée par les flux propres du projet, sans engager l''intégralité du bilan ou du patrimoine des sponsors en cas de défaillance.', 'video', 90, false, 70
from public.courses c where c.slug = 'mas-fin-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Finance internationale et financement de projets');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Méthodologie du mémoire professionnel et soutenance', '## Fiche du cours vidéo

Durée : 1h30. Niveau : Master 2 Finance.
Objectifs : construire une problématique et une méthodologie de mémoire cohérentes, structurer un mémoire professionnel en finance, préparer une soutenance orale efficace.
Matériel : tableau ou diaporama, votre propre plan de mémoire si vous en avez déjà un.
Prérequis : avoir réfléchi à un thème ou domaine d''intérêt pour votre mémoire.

## 00:00 – 05:00 · Introduction et enjeux

Bonjour. Cette séance est consacrée à la méthodologie du mémoire professionnel et à sa soutenance, l''aboutissement de votre année de Master 2. Beaucoup d''étudiants excellents sur le plan technique perdent des points inutilement parce qu''ils n''ont pas structuré leur réflexion méthodologique ou n''ont pas préparé leur oral. Nous allons construire ensemble, étape par étape, un mémoire fictif sur le financement de projet pour illustrer chaque principe.

Visuel : diapositive de titre avec le plan de la séance.

## 05:00 – 20:00 · Partie 1 : formuler une problématique précise

Tout commence par la problématique, la question centrale à laquelle votre mémoire va répondre. C''est l''erreur numéro un des étudiants : choisir un sujet trop vaste. « La finance en Afrique », « les risques financiers des entreprises », ce sont des thèmes, pas des problématiques. Une problématique doit être une question précise, délimitée dans le temps, l''espace, et le périmètre d''entreprise ou de secteur étudié.

Prenons un exemple de transformation. Thème initial, trop vaste : « le financement des entreprises en Afrique ». Première délimitation : on choisit un secteur, l''énergie, et une zone géographique, le Sénégal. Deuxième délimitation : on choisit un outil de financement précis, le financement de projet. Troisième délimitation : on choisit un angle d''analyse, par exemple le risque de construction et d''exploitation. On obtient alors : « Dans quelle mesure le financement de projet permet-il de sécuriser le financement d''une infrastructure énergétique au Sénégal face au risque de construction et d''exploitation, à partir de l''étude d''un cas fictif de mini-centrale solaire ? »

Visuel : schéma en entonnoir montrant les trois délimitations successives, du thème vague à la problématique précise.

Remarquez que cette problématique répond à un enjeu réel : un décideur, un bailleur de fonds, une banque de développement, pourrait vouloir connaître la réponse à cette question pour décider d''un financement futur. C''est ce critère d''utilité pratique qui distingue un bon mémoire professionnel d''un exercice purement académique.

## 20:00 – 35:00 · Partie 2 : choisir une méthodologie cohérente

Une fois la problématique posée, il faut choisir comment vous allez y répondre. Quatre grandes familles de méthodologie s''offrent à vous en finance.

L''étude de cas unique approfondie convient quand vous voulez comprendre en détail un mécanisme dans un contexte précis, par exemple le montage financier complet d''un projet d''infrastructure, avec son plan de financement, son DSCR, ses garanties. L''étude comparative de plusieurs entreprises ou projets convient quand vous voulez identifier des facteurs communs ou des différences, par exemple comparer plusieurs montages de project finance dans des secteurs différents. Les entretiens avec des praticiens, banquiers, directeurs financiers, apportent une information qualitative précieuse, à condition de présenter une grille d''entretien claire. L''analyse de données financières publiques permet des analyses quantitatives, à condition de citer précisément vos sources et de ne jamais inventer un chiffre non vérifiable.

Pour notre exemple sur le financement de projet énergétique, l''étude de cas unique approfondie, éventuellement complétée par deux ou trois entretiens avec des professionnels du secteur, serait la méthodologie la plus cohérente avec la problématique posée, car elle permet d''entrer dans le détail du montage financier et des mécanismes de couverture du risque.

Visuel : tableau comparatif des quatre méthodologies avec leurs usages typiques et leurs limites.

Point essentiel pour la soutenance : chaque choix méthodologique doit être justifié dans le mémoire, pas seulement décrit. Expliquez pourquoi cette méthode, et pas une autre, était la plus pertinente pour répondre à votre problématique précise.

## 35:00 – 50:00 · Partie 3 : structurer le mémoire

La structure attendue d''un mémoire professionnel en finance suit généralement six grandes parties. L''introduction pose le contexte, la problématique et annonce le plan. La revue de littérature ou cadre théorique présente les concepts et travaux mobilisés, sans invention de sources. La méthodologie justifie la démarche suivie. Les résultats ou l''analyse du cas présentent les données et calculs de façon factuelle, avec toutes les hypothèses explicitées. La discussion interprète ces résultats, les met en perspective avec la littérature, et reconnaît les limites du travail. La conclusion répond explicitement à la problématique posée en introduction.

Pour notre mémoire fictif, la partie résultats présenterait le montage de la mini-centrale solaire, son plan de financement, le calcul du DSCR année par année, et une analyse de sensibilité en cas de dégradation du CFADS. La partie discussion mettrait ces résultats en perspective avec la littérature sur le financement de projet énergétique en Afrique, et reconnaîtrait les limites : un seul cas étudié, des hypothèses de flux nécessairement incertaines sur une infrastructure qui n''existe pas encore réellement si le mémoire est prospectif.

Visuel : plan détaillé du mémoire fictif projeté au tableau, avec le nombre de pages indicatif pour chaque partie.

N''oubliez jamais la bibliographie : toutes les sources citées doivent être réelles, vérifiables et correctement référencées. Le plagiat, y compris la paraphrase non attribuée d''un auteur, est une faute grave, sanctionnée lourdement par les établissements et par les jurys.

## 50:00 – 55:00 · Pause et quiz interactif

Trois questions de vérification.

- Question 1 : pourquoi une problématique trop vaste est-elle un problème méthodologique ? Réponse : parce qu''elle empêche de collecter des données suffisamment précises et de proposer une méthodologie rigoureuse, ce qui rend le travail descriptif et difficile à défendre devant un jury.
- Question 2 : citez deux des quatre grandes familles de méthodologie présentées. Réponse possible : étude de cas unique approfondie, et étude comparative de plusieurs entreprises ou projets (ou entretiens avec des praticiens, ou analyse de données financières publiques).
- Question 3 : qu''est-ce que la paraphrase non attribuée et pourquoi est-elle une forme de plagiat ? Réponse : reformuler les idées d''un auteur avec d''autres mots sans les attribuer explicitement par une citation, ce qui fait croire au lecteur que ce raisonnement est originel au candidat alors qu''il provient d''une source tierce.

## 55:00 – 70:00 · Partie 4 : préparer la présentation orale de soutenance

Passons maintenant à la soutenance elle-même. Elle dure généralement entre vingt et quarante-cinq minutes selon les établissements, avec une présentation orale de dix à vingt minutes suivie de questions du jury. Votre présentation ne doit pas répéter l''intégralité du mémoire : le jury l''a déjà lu. Elle doit mettre en valeur la problématique, la méthodologie, les résultats clés et la conclusion, en dix à quinze diapositives sobres.

Structurez vos diapositives autour de graphiques et de tableaux clés plutôt que de longs paragraphes : pour notre mémoire fictif, une diapositive montrant le graphique du DSCR année par année avec le seuil contractuel minimum est beaucoup plus efficace qu''un paragraphe décrivant les mêmes chiffres. Entraînez-vous à voix haute, chronométré, devant un public même informel : la fluidité orale et la gestion du temps comptent autant que le contenu dans la note finale.

Visuel : exemple de diapositive de synthèse bien construite, avec titre clair, un graphique, et trois points clés en liste à puces.

## 70:00 – 80:00 · Cas pratique approfondi : anticiper les questions du jury

Un jury pose presque toujours trois types de questions. D''abord sur la méthodologie : pourquoi ce choix, et pas un autre ? Pour notre cas, une question possible serait : « Pourquoi avez-vous étudié un seul cas de mini-centrale solaire plutôt que de comparer plusieurs projets d''infrastructures énergétiques ? » Réponse attendue : l''étude de cas unique permet d''entrer dans le détail du montage financier et du calcul du DSCR, ce qu''une comparaison superficielle de plusieurs projets n''aurait pas permis avec la même profondeur, au prix, reconnu comme limite, d''une généralisation plus incertaine des conclusions.

Ensuite sur les limites : « Comment avez-vous validé la fiabilité de vos hypothèses de CFADS ? » Réponse attendue : reconnaître que, dans un cas fictif ou prospectif, ces hypothèses reposent sur des données de projets comparables et des taux marqués comme fictifs pour l''exercice, et qu''une étude réelle nécessiterait des données vérifiées auprès du porteur de projet et des études techniques d''ingénierie.

Enfin sur la portée pratique : « Quelles conséquences concrètes pour un décideur ou un bailleur de fonds ? » Réponse attendue : relier la conclusion du mémoire à une recommandation opérationnelle, par exemple sur le niveau de DSCR minimum à exiger contractuellement, ou sur l''intérêt de combiner financement de projet et dispositifs de microfinance pour les utilisateurs finaux.

## 80:00 – 85:00 · Synthèse générale

Pour résumer cette séance : une problématique précise et délimitée est la base de tout mémoire réussi. La méthodologie doit être choisie et justifiée en cohérence avec cette problématique, pas par facilité. La structure en six parties, de l''introduction à la conclusion, avec une bibliographie rigoureuse, est attendue par tous les jurys de Master 2. La soutenance orale se prépare comme un exercice à part entière, en anticipant les questions sur la méthodologie, les limites et la portée pratique.

## 85:00 – 90:00 · Évaluation finale

1. Quelles sont les trois dimensions à délimiter pour transformer un thème vague en problématique précise ? Réponse : le temps, l''espace géographique, et le périmètre d''entreprise ou de secteur étudié (ainsi que l''angle d''analyse précis retenu).
2. Pourquoi faut-il justifier son choix méthodologique dans le mémoire, et pas seulement le décrire ? Réponse : parce qu''un jury attend de comprendre pourquoi cette démarche était la plus pertinente pour répondre à la problématique, et quelles limites elle comporte par rapport à d''autres approches possibles.
3. Citez les six grandes parties attendues dans la structure d''un mémoire professionnel. Réponse : introduction, revue de littérature ou cadre théorique, méthodologie, résultats ou analyse du cas, discussion, conclusion.
4. Pourquoi la paraphrase non attribuée est-elle considérée comme une forme de plagiat ? Réponse : parce qu''elle fait croire au lecteur que le raisonnement est originel au candidat, alors qu''il provient d''une source tierce non citée explicitement.
5. Quels sont les trois types de questions qu''un jury pose presque toujours en soutenance ? Réponse : des questions sur la méthodologie et ses choix, des questions sur les limites du travail, et des questions sur la portée pratique des conclusions pour un décideur réel.', 'video', 90, false, 80
from public.courses c where c.slug = 'mas-fin-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Méthodologie du mémoire professionnel et soutenance');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Atelier méthodologie - simulation de soutenance et cas transversal', '## Fiche du cours vidéo

Durée : 1h30. Niveau : Master 2 Finance.
Objectifs : s''entraîner en conditions réelles à la soutenance d''un mémoire professionnel, à travers un cas transversal mobilisant la gestion des risques et la finance internationale.
Matériel : tableau ou diaporama, votre propre plan de mémoire si possible.
Prérequis : les trois leçons et vidéos précédentes de ce cours.

## 00:00 – 05:00 · Introduction et enjeux

Bonjour. Cette dernière séance vidéo est un atelier pratique : nous allons simuler une soutenance complète sur un mémoire fictif qui combine gestion des risques financiers et finance internationale, afin que vous repartiez avec une méthode concrète applicable à votre propre mémoire, quel que soit son sujet. Nous suivrons le dossier « La couverture du risque de change dans le financement international d''un projet énergétique sénégalais : étude de cas fictive ».

Visuel : diapositive de titre avec le sujet de mémoire simulé.

## 05:00 – 20:00 · Partie 1 : présenter la problématique et la méthodologie en cinq minutes

Premier exercice de l''atelier : présenter sa problématique et sa méthodologie en cinq minutes maximum, un format resserré qui force à aller à l''essentiel. Voici un exemple de présentation orale type.

« Mon mémoire porte sur le financement international d''un projet d''infrastructure énergétique au Sénégal, à travers le cas fictif de la centrale solaire Soleil du Sahel, financée en partie par une dette libellée en devise étrangère. La problématique est la suivante : dans quelle mesure une couverture par swap de taux permet-elle de sécuriser le service de la dette d''un tel projet face à la double exposition au risque de taux et au risque de change ? J''ai choisi une étude de cas unique approfondie, complétée par deux entretiens avec des professionnels du financement de projet, car cette méthodologie permet d''entrer dans le détail du montage financier et des mécanismes de couverture réellement envisageables, au prix d''une généralisation plus limitée qu''une étude comparative de plusieurs projets. »

Visuel : chronomètre affiché à l''écran pendant la lecture de cet exemple, pour matérialiser la contrainte de temps.

Remarquez la structure : contexte en une phrase, problématique précise en une phrase, méthodologie justifiée en une à deux phrases, avec la limite reconnue immédiatement. C''est exactement ce niveau de densité que votre introduction orale de soutenance doit atteindre.

## 20:00 – 35:00 · Partie 2 : défendre un résultat chiffré devant le jury

Deuxième exercice : défendre un résultat chiffré. Imaginons que le mémoire présente le calcul suivant. Le projet « Soleil du Sahel » porte une dette senior de 12 600 millions de FCFA à taux variable. Pour se couvrir, les sponsors envisagent un swap de taux fixe à 7,5 % contre le taux variable actuel, estimé fictivement à 6,8 %, 7,1 %, 7,6 % et 8,0 % sur quatre périodes futures. Calculons les flux nets pour le projet s''il paie le taux fixe du swap : flux fixe chaque période, 12 600 fois 7,5 %, soit 945 millions. Flux variables reçus : 856,8 ; 894,6 ; 957,6 ; 1 008 millions. Flux nets : période 1, moins 88,2 millions ; période 2, moins 50,4 millions ; période 3, plus 12,6 millions ; période 4, plus 63 millions.

Un membre du jury pourrait demander : « Pourquoi recommander ce swap si les deux premières périodes sont défavorables au projet ? » Voici la réponse attendue dans une soutenance réussie : le swap n''est pas souscrit pour maximiser le résultat à court terme, mais pour réduire l''incertitude sur le service de la dette sur toute la durée du financement ; les flux négatifs des deux premières périodes sont le coût de cette certitude, comparable à une prime d''assurance, et le mémoire devrait démontrer, par une analyse de scénarios, que ce coût reste inférieur au risque d''un dérapage du DSCR en cas de forte hausse des taux non couverte.

Visuel : tableau des quatre flux nets, avec le commentaire du jury affiché en incrustation.

## 35:00 – 50:00 · Partie 3 : répondre à une question sur les limites de l''étude

Troisième exercice : répondre à une question sur les limites, souvent la plus redoutée par les étudiants. Question type : « Vos hypothèses de taux variable futur reposent sur quelles données, et que se passerait-il si la réalité s''en écartait fortement ? »

Mauvaise réponse, à éviter absolument : rester vague ou minimiser la question, en affirmant que les hypothèses sont fiables sans le démontrer. Bonne réponse, à construire systématiquement en trois temps : premièrement, reconnaître honnêtement l''origine et la nature des hypothèses, par exemple des scénarios de taux fictifs construits pour l''exercice, ou dans un mémoire réel, des prévisions de marché à une date donnée nécessairement incertaines à plusieurs années. Deuxièmement, montrer que vous avez anticipé cette limite en présentant, si possible, une analyse de sensibilité dans le mémoire lui-même, par exemple en recalculant les flux nets du swap avec des taux variables plus élevés de un point sur toute la période. Troisièmement, indiquer ce qu''une étude complémentaire pourrait apporter, par exemple une analyse de plusieurs scénarios macroéconomiques réalisée par des économistes spécialisés.

Visuel : les trois temps de la réponse affichés comme une checklist, à mémoriser pour toute question de limite en soutenance.

## 50:00 – 55:00 · Pause et quiz interactif

Trois questions de vérification avant la suite de l''atelier.

- Question 1 : dans l''exemple du swap, pourquoi les deux premières périodes sont-elles défavorables au projet ? Réponse : parce que le taux fixe payé, 7,5 %, est supérieur aux taux variables reçus de 6,8 % et 7,1 % sur ces deux périodes, créant un flux net négatif pour le payeur de taux fixe.
- Question 2 : quelle est la structure en trois temps pour répondre à une question de jury sur les limites d''une étude ? Réponse : reconnaître honnêtement l''origine des hypothèses, montrer que la limite a été anticipée par exemple via une analyse de sensibilité, indiquer ce qu''une étude complémentaire pourrait apporter.
- Question 3 : pourquoi un swap peut-il rester recommandé même s''il génère des flux négatifs sur certaines périodes ? Réponse : parce qu''il réduit l''incertitude globale sur le service de la dette, et ce coût ponctuel doit être comparé au risque évité d''un dérapage du DSCR en cas de forte hausse des taux non couverte.

## 55:00 – 70:00 · Partie 4 : simulation complète chronométrée

Passons à la simulation complète. Je vais jouer le rôle du candidat pendant deux minutes, puis vous jouerez le rôle du jury en formulant mentalement vos propres questions, avant que je ne reprenne pour donner un exemple de bonnes réponses.

« Pour conclure, mon étude montre que la couverture par swap de taux permet de stabiliser le DSCR du projet Soleil du Sahel dans une fourchette resserrée, même en cas de hausse des taux de marché, au prix d''un coût certain sur les premières années si les taux restent bas. La limite principale de mon travail est le caractère fictif des scénarios de taux utilisés, qui devrait être remplacé, dans une mise en œuvre réelle, par des prévisions de marché validées par la banque arrangeuse du financement. Je recommande néanmoins, sur la base de cette analyse, que les sponsors intègrent une clause de couverture obligatoire dès la signature du contrat de financement, plutôt que d''attendre une dégradation déjà amorcée des taux. »

Visuel : minuteur affiché, puis liste de questions possibles du jury pour la suite de l''entraînement (à utiliser avec un camarade après la vidéo) : pourquoi un swap et pas une option de couverture, quel serait le coût d''une option de couverture équivalente, cette recommandation s''applique-t-elle à tous les projets de la même taille.

## 70:00 – 80:00 · Entraînement : variante chiffrée

Variante pour vous entraîner seul après la séance : si le taux fixe négocié du swap passe de 7,5 % à 7,2 %, recalculez les quatre flux nets pour le projet, toutes choses égales par ailleurs sur les taux variables reçus. Vous devez retrouver un flux fixe de 907,2 millions par période, et des flux nets de moins 50,4 ; moins 12,6 ; plus 50,4 ; plus 100,8 millions sur les quatre périodes. Cet exercice illustre qu''un taux fixe négocié plus bas rend le swap favorable plus rapidement, dès la troisième période au lieu de la troisième période dans l''exemple initial à 7,5 %, ce qui montre l''importance de la négociation du taux fixe dans la qualité finale de la couverture.

## 80:00 – 85:00 · Synthèse générale du cours

Ce cours de Master 2 vous a donné les outils pour mesurer et couvrir les risques financiers avancés, pour structurer un financement international ou de projet, et pour construire et défendre un mémoire professionnel jusqu''à sa soutenance. La compétence commune à ces trois blocs est la même que celle recherchée par tout recruteur ou tout jury : savoir reconnaître l''incertitude, la mesurer avec les bons outils, proposer une réponse argumentée, et en assumer les limites avec honnêteté plutôt que de les dissimuler.

## 85:00 – 90:00 · Évaluation finale

1. Dans la simulation de soutenance, quelle est la bonne structure pour répondre à une question sur les limites d''une étude ? Réponse : reconnaître l''origine des hypothèses, montrer qu''une analyse de sensibilité a anticipé la limite, indiquer ce qu''une étude complémentaire pourrait apporter.
2. Pourquoi un swap de couverture peut-il rester recommandé malgré des flux négatifs sur certaines périodes ? Réponse : parce qu''il réduit l''incertitude globale sur le service de la dette du projet, ce coût ponctuel étant comparé au risque plus grave d''un dérapage du DSCR en cas de forte hausse des taux non couverte.
3. Dans l''exercice chiffré, à partir de quelle période le swap devient-il favorable au projet quand le taux fixe est de 7,5 % ? Réponse : à partir de la troisième période, lorsque le taux variable reçu dépasse le taux fixe payé.
4. Quelle est la durée typique d''une soutenance de mémoire professionnel de Master 2 ? Réponse : généralement entre vingt et quarante-cinq minutes selon les établissements, dont une présentation orale de dix à vingt minutes suivie de questions du jury.
5. Quelle est la compétence commune recherchée par un jury à travers les questions de méthodologie, de limites et de portée pratique ? Réponse : la capacité à reconnaître l''incertitude du travail réalisé, à la mesurer avec les bons outils, et à en assumer honnêtement les limites plutôt qu''à les dissimuler, tout en proposant une conclusion opérationnelle utile.', 'video', 90, false, 90
from public.courses c where c.slug = 'mas-fin-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Atelier méthodologie - simulation de soutenance et cas transversal');

-- Cours : Économie Master 1 : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'mas-eco-m1', (select id from public.levels where name = 'Master 1'), null, 'Économie', 'Économie Master 1 : réussir ses examens', 'Préparation aux examens de Master 1 en Économie : économétrie appliquée, économie industrielle et organisation des marchés, politiques économiques en macroéconomie ouverte. Pour étudiants ayant validé une Licence en Économie (micro/macro, maths, statistiques, économie du développement, monétaire et internationale, publique). Fiches avancées, cas d''entreprise sénégalais/africains fictifs, exercices corrigés, sujet type d''examen et quatre cours vidéo de 1h30.', true, 761
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Master 1 en Économie', 'Objectifs de la leçon

Cette première leçon pose le cadre de votre année de Master 1 en Économie. Elle explique ce qui change par rapport à la Licence, présente les trois matières avancées du semestre, et propose une méthode de travail et un plan de révision sur six semaines. À la fin de cette leçon, vous saurez organiser votre préparation aux examens partiels et, le cas échéant, à votre premier travail de recherche encadré (mémoire ou dossier de recherche).

Ce qui change entre la Licence et le Master 1

En Licence, vous avez appris les outils de base : microéconomie et macroéconomie 1 et 2, mathématiques pour économistes, une introduction aux statistiques et à l''économétrie, l''économie du développement, l''économie monétaire et internationale, l''économie publique. Le Master 1 ne répète pas ces bases : il les mobilise comme des prérequis acquis et vous demande de les combiner pour analyser des situations complexes, souvent avec des données chiffrées à traiter vous-même.

Trois ruptures caractérisent le passage en Master 1 :
- Vous ne vous contentez plus d''appliquer une formule : vous devez choisir la méthode adaptée à un problème, justifier ce choix, et discuter ses limites (validité des hypothèses, robustesse des résultats).
- Les exercices prennent la forme de cas d''entreprise ou de politique économique complets, avec plusieurs variables en jeu, parfois des données partielles ou bruitées, comme dans la réalité professionnelle.
- L''évaluation porte aussi sur la capacité à communiquer un résultat économique à un décideur (note de synthèse, recommandation argumentée), pas seulement à calculer un résultat.

Les trois matières de ce semestre

1. Économétrie appliquée. Vous allez approfondir la régression linéaire multiple : interprétation économique des coefficients, tests d''hypothèses sur un ou plusieurs paramètres, diagnostic de la qualité d''un modèle (R² ajusté, significativité globale avec le test F), et une sensibilisation aux problèmes qui biaisent les estimations (variable omise, multicolinéarité, hétéroscédasticité). L''objectif n''est pas de refaire des calculs à la main sur des données réelles complexes, mais de savoir lire, interpréter et critiquer une sortie de régression, et de construire un modèle simple vous-même sur un jeu de données réduit.

2. Économie industrielle et organisation des marchés. Cette matière approfondit la concurrence imparfaite déjà vue en Licence 2 (monopole, oligopole simple) vers des structures de marché plus réalistes : oligopole avec différenciation de produit, concurrence par les quantités (Cournot) et par les prix (Bertrand), collusion et cartels, pratiques anticoncurrentielles, et le rôle de la régulation économique (autorités de la concurrence, régulation sectorielle des télécommunications, de l''énergie ou des transports en Afrique de l''Ouest).

3. Politiques économiques et macroéconomie ouverte avancée. Vous retravaillez les politiques budgétaire et monétaire dans un cadre d''économie ouverte (taux de change, mobilité des capitaux, contraintes d''une union monétaire comme la zone UEMOA), avec une attention particulière à l''arbitrage entre croissance, stabilité des prix et soutenabilité de la dette publique.

Méthode de travail en Master 1

La méthode de travail doit évoluer vers une démarche de type recherche appliquée :
- Lecture active d''un cas ou d''un article avant le cours : identifiez le problème économique posé, les données disponibles, la question à laquelle on cherche une réponse.
- Formalisation : traduisez le problème en équations ou en modèle simple avant de calculer quoi que ce soit.
- Calcul rigoureux, avec vérification (ordre de grandeur, signe attendu des coefficients, cohérence avec la théorie).
- Discussion critique : un résultat chiffré n''a de valeur que s''il est interprété avec ses limites (échantillon petit, hypothèses du modèle, causalité versus corrélation).
- Rédaction synthétique : vous devez être capable de résumer un résultat en cinq lignes pour un lecteur non spécialiste, compétence indispensable si vous rédigez un mémoire professionnel ou de recherche en fin de Master.

Le mémoire ou le dossier de recherche

Selon votre parcours, le Master 1 peut inclure un dossier de recherche encadré (parfois appelé « mémoire de M1 ») ou un stage avec rapport. Dans tous les cas, la méthode est la même : poser une question précise, mobiliser une revue de littérature courte (quelques références académiques ou institutionnelles sérieuses, jamais inventées), choisir une méthode adaptée aux données disponibles, présenter des résultats honnêtes même s''ils sont partiels, et conclure avec des limites clairement identifiées. Ne citez jamais un auteur, un chiffre officiel ou une étude que vous n''avez pas vérifiés : en cas de doute, formulez le constat en termes généraux plutôt que d''inventer une référence précise.

Plan de révision sur six semaines

Semaine 1 : consolidation des prérequis. Reprenez vos notes de Licence sur la régression simple, le monopole et duopole, et les mécanismes IS-LM / offre-demande globale en économie fermée. Ne commencez pas le Master 1 avec des lacunes sur ces bases.

Semaine 2 : économétrie appliquée, partie 1. Régression multiple, lecture des coefficients, écart-types, tests de Student sur un coefficient.

Semaine 3 : économétrie appliquée, partie 2. Test F global, R² ajusté, première sensibilisation aux biais (variable omise, multicolinéarité). Faites au moins un exercice complet avec un jeu de données simple, à la main ou avec un tableur.

Semaine 4 : économie industrielle. Cournot, Bertrand, différenciation de produit, à partir d''exemples sénégalais ou ouest-africains fictifs (télécommunications, distribution, agro-industrie).

Semaine 5 : politiques économiques et macroéconomie ouverte. Reprenez les mécanismes de change fixe en union monétaire, les canaux de transmission de la politique monétaire de la BCEAO en termes généraux, et les contraintes de soutenabilité de la dette.

Semaine 6 : révision croisée et sujets types. Refaites les sujets d''examen type de cette série de leçons, chronométrez-vous, et identifiez vos points faibles pour les trois derniers jours avant l''examen.

Points clés à retenir
- Le Master 1 mobilise les outils de Licence pour résoudre des problèmes complexes, pas pour les refaire à l''identique.
- L''économétrie appliquée demande de savoir interpréter et critiquer un modèle, pas seulement de connaître une formule.
- L''économie industrielle avancée porte sur les stratégies des firmes en oligopole et le rôle de la régulation.
- Les politiques économiques s''étudient désormais en économie ouverte, avec les contraintes de l''union monétaire.
- Un mémoire ou un dossier de recherche doit être rigoureux : jamais de référence ou de chiffre inventé.

## Exercices pratiques

1. Expliquez en cinq lignes la différence entre corrélation et causalité, avec un exemple économique sénégalais fictif.
2. Citez deux structures de marché étudiées en Licence et deux structures nouvelles étudiées en Master 1 en économie industrielle.
3. Pourquoi un modèle de régression avec un R² très élevé n''est-il pas forcément un « bon » modèle du point de vue économique ?
4. Dans une union monétaire comme l''UEMOA, pourquoi la politique monétaire nationale indépendante n''est-elle pas possible pour chaque État membre ?
5. Construisez un planning de révision personnel sur six semaines en adaptant les priorités ci-dessus à votre propre emploi du temps.

## Corrigé

1. La corrélation signale que deux variables évoluent ensemble statistiquement ; la causalité signifie que l''une provoque l''autre. Exemple fictif : dans une région sénégalaise, le nombre d''agences bancaires et le volume des exportations locales peuvent être corrélés sans que l''un cause l''autre : tous deux peuvent dépendre d''une troisième variable, comme le dynamisme économique général de la région.
2. Licence : monopole simple, duopole simple (type Cournot basique). Master 1 : oligopole avec différenciation de produit, concurrence à la Bertrand, collusion et cartels, régulation sectorielle.
3. Un R² élevé peut provenir d''une corrélation fortuite, d''un échantillon trop petit, ou de variables qui bougent ensemble sans lien économique logique (par exemple deux séries qui croissent toutes deux avec le temps). Il faut aussi vérifier la significativité des coefficients, leur signe (cohérent avec la théorie économique) et la robustesse du modèle.
4. Parce que la politique monétaire (taux directeur, masse monétaire) est décidée au niveau de la banque centrale commune (BCEAO) pour l''ensemble de la zone ; un État membre ne peut donc pas ajuster seul son taux d''intérêt ou dévaluer sa propre monnaie pour répondre à un choc spécifique à son économie.
5. Réponse libre : l''essentiel est de répartir les six semaines entre consolidation des prérequis, les trois matières, puis la révision croisée, avec des points de contrôle (auto-évaluations) chaque semaine.', 'texte', 45, true, 10
from public.courses c where c.slug = 'mas-eco-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Master 1 en Économie');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Économétrie appliquée : l''essentiel pour l''examen', 'Objectifs de la leçon

Cette leçon approfondit l''économétrie appliquée : estimer et interpréter une régression multiple, tester des hypothèses sur les coefficients, évaluer la qualité globale du modèle, et repérer les problèmes qui biaisent une estimation. Tous les calculs ont été vérifiés avec un logiciel de calcul scientifique (Python/NumPy) ; les données sont fictives.

Rappel : le modèle de régression multiple

Un modèle de régression linéaire multiple s''écrit : Y = β0 + β1·X1 + β2·X2 + ... + βk·Xk + ε, où Y est la variable à expliquer, X1 à Xk les variables explicatives, β0 à βk les coefficients à estimer, et ε le terme d''erreur. La méthode des moindres carrés ordinaires (MCO) choisit les coefficients qui minimisent la somme des carrés des résidus (écarts entre valeurs observées et valeurs prédites).

Étude de cas : les exportations d''une filière agro-industrielle fictive

Un observatoire régional fictif étudie les exportations mensuelles d''une filière agroalimentaire dans dix zones de production comparables (données fictives) : investissement productif cumulé (X1, milliards FCFA), taux d''ouverture commerciale (X2, %), exportations (Y, milliards FCFA). Les dix observations vont de X1 = 5 à 14, X2 = 2 à 6, Y = 20 à 53, en progression régulière.

En estimant Y = β0 + β1·X1 + β2·X2 + ε par MCO sur ces dix observations, on obtient (calcul vérifié) : β0 ≈ 2,00 ; β1 ≈ 3,60 ; β2 ≈ 0,05. Le modèle estimé s''écrit : Exportations estimées = 2,00 + 3,60 × Investissement + 0,05 × Taux d''ouverture.

Interprétation économique des coefficients
- β0 = 2,00 : constante, peu de sens économique direct, sert à ajuster l''ordonnée du modèle.
- β1 = 3,60 : toutes choses égales par ailleurs, une hausse de 1 milliard de FCFA de l''investissement est associée à une hausse de 3,60 milliards de FCFA des exportations. C''est l''effet marginal de l''investissement.
- β2 = 0,05 : toutes choses égales par ailleurs, une hausse de 1 point de taux d''ouverture est associée à seulement 0,05 milliard de FCFA d''exportations supplémentaires dans cet échantillon, un effet très faible.

Les écarts-types estimés sont : SE(β1) ≈ 0,207 ; SE(β2) ≈ 0,420 (calcul vérifié à partir de la matrice de variance-covariance des estimateurs).

Le test de Student sur un coefficient

Pour tester si βj est significativement différent de zéro : t = βj / SE(βj). Avec n = 10 observations et k = 2 variables, les degrés de liberté du résidu sont n - k - 1 = 7.

Pour β1 : t1 = 3,60 / 0,207 ≈ 17,39, bien au-delà de la valeur critique usuelle d''environ 2,36 (5 %, 7 degrés de liberté, à vérifier dans une table officielle) : on rejette β1 = 0, l''investissement a un effet significatif.

Pour β2 : t2 = 0,05 / 0,420 ≈ 0,12, bien en dessous de la valeur critique : on ne peut pas rejeter β2 = 0. Cela ne signifie pas que l''ouverture commerciale n''a jamais d''effet économique, seulement que sur ces dix observations fictives précises, l''effet mesuré n''est pas distinguable de zéro.

La qualité globale du modèle : R², R² ajusté et test F

Le R² mesure la part de variance de Y expliquée par le modèle. Ici (calcul vérifié) : R² ≈ 0,999, soit 99,9 % de la variation expliquée. Le R² ajusté, qui pénalise l''ajout de variables, reste très élevé lui aussi. Le test F évalue la significativité globale ; ici F ≈ 5057, très supérieur à une valeur critique usuelle de quelques unités : le modèle est hautement significatif.

Attention : un R² aussi proche de 1 sur seulement dix observations fictives doit être interprété avec prudence. Sur des données économiques réelles, un R² aussi élevé est rare et doit alerter sur un possible problème (échantillon trop petit, relation trop mécanique entre les variables).

Les problèmes qui biaisent une estimation

1. La variable omise. Si une variable qui influence réellement Y est corrélée avec une variable du modèle mais absente de celui-ci, les coefficients peuvent être biaisés. Exemple fictif : la qualité des infrastructures routières, si elle influence à la fois l''investissement et les exportations sans être incluse, peut biaiser le coefficient de l''investissement.

2. La multicolinéarité. Deux variables explicatives très corrélées entre elles rendent difficile de séparer statistiquement leurs effets ; les écarts-types augmentent et les tests perdent en puissance.

3. L''hétéroscédasticité. Lorsque la variance des erreurs n''est pas constante, les écarts-types usuels des coefficients MCO ne sont plus fiables, même si les coefficients restent en général non biaisés. Des écarts-types robustes permettent de corriger ce problème.

Points clés à retenir
- Un coefficient s''interprète toujours « toutes choses égales par ailleurs ».
- Le test de Student compare t à une valeur critique de table ; au-delà, on rejette la nullité du coefficient.
- R² et R² ajusté mesurent le pouvoir explicatif global ; le test F teste la significativité jointe.
- Un R² très élevé sur un petit échantillon s''interprète avec prudence.
- Variable omise, multicolinéarité, hétéroscédasticité : les trois pièges classiques de l''économétrie appliquée.

## Exercices pratiques

1. À partir du modèle estimé, calculez la valeur prédite des exportations pour une zone fictive avec un investissement de 10 milliards FCFA et un taux d''ouverture de 4 %.
2. Expliquez pourquoi un coefficient non significatif (comme β2 ici) ne doit pas être automatiquement interprété comme « cette variable n''a aucune importance économique ».
3. Un collègue vous présente un modèle avec un R² de 0,98 sur 6 observations et 4 variables explicatives. Quelle remarque méthodologique devez-vous faire ?
4. Donnez un exemple fictif de variable omise plausible dans une étude sur les exportations d''une filière agricole ouest-africaine.
5. Cas pratique : pour 5 entreprises fictives (effectif salarié X en dizaines ; chiffre d''affaires Y en millions FCFA) : (2,30), (3,45), (4,55), (5,70), (6,85). Calculez à la main la pente et la constante de la régression simple Y sur X, et interprétez.
6. Pourquoi la multicolinéarité est-elle un problème surtout pour l''interprétation des coefficients individuels, et moins pour la prévision globale ?
7. Proposez une méthode (sans calcul détaillé) pour détecter une hétéroscédasticité.

## Corrigé

1. Exportations prédites = 2,00 + 3,60×10 + 0,05×4 = 38,20 milliards de FCFA.
2. Un coefficient non significatif signifie que, sur cet échantillon, l''effet mesuré n''est pas distinguable de zéro ; cela peut venir d''un échantillon trop petit, d''une multicolinéarité, ou d''une relation réellement faible. Il ne faut jamais généraliser une non-significativité statistique à une absence totale de pertinence économique.
3. Risque de surapprentissage : avec 6 observations et 4 variables, il reste très peu de degrés de liberté (6-4-1=1), ce qui rend les résultats fragiles et peu généralisables, même avec un R² élevé.
4. Exemple fictif : la qualité du réseau routier reliant les zones de production aux ports. Elle influence à la fois l''investissement (accès aux marchés) et directement la capacité à exporter, sans être incluse au modèle.
5. Moyenne X=4, moyenne Y=57. Écarts X-4=(-2,-1,0,1,2), Y-57=(-27,-12,-2,13,28). Produits: somme=135. Carrés de (X-4): somme=10. Pente β1=135/10=13,5. Constante β0=57-13,5×4=3. Modèle: Y=3+13,5×X. Chaque dizaine de salariés supplémentaire est associée à 13,5 millions FCFA de chiffre d''affaires en plus.
6. La multicolinéarité empêche de distinguer la contribution propre de chaque variable corrélée, mais n''empêche pas le modèle de bien prédire Y globalement, tant que la combinaison des variables reste stable.
7. Représenter les résidus en fonction des valeurs prédites : si leur dispersion varie systématiquement avec le niveau de la variable, cela suggère une hétéroscédasticité. Des tests formels existent, à approfondir plus tard.', 'texte', 50, false, 20
from public.courses c where c.slug = 'mas-eco-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Économétrie appliquée : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Économie industrielle et organisation des marchés : l''essentiel pour l''examen', 'Objectifs de la leçon

Cette leçon approfondit l''économie industrielle : les structures de marché en concurrence imparfaite avancée (oligopole à la Cournot, à la Bertrand, différenciation de produit, collusion), et le rôle économique de la régulation. Les exemples s''appuient sur des cas d''entreprise fictifs inspirés de secteurs ouest-africains, sans référence à une entreprise réelle.

Rappel : du monopole à l''oligopole

En Licence, vous avez étudié le monopole et une introduction au duopole. En Master 1, l''analyse se concentre sur l''oligopole, structure où un petit nombre de firmes interagissent stratégiquement : la décision de chaque firme dépend de ce qu''elle anticipe que feront ses concurrentes. C''est le domaine de la théorie des jeux appliquée à l''économie industrielle.

Le modèle de Cournot (concurrence en quantités)

Dans le modèle de Cournot, les firmes choisissent simultanément les quantités qu''elles produisent, et le prix s''ajuste à l''offre totale.

Étude de cas fictive : deux opérateurs télécoms fictifs, « Teranga Télécom » et « Baobab Mobile », se partagent un marché régional fictif. La demande inverse est P = 100 - Q, Q = q1 + q2, coût marginal commun c = 10. La solution classique du duopole de Cournot symétrique avec demande linéaire P = a - Q donne qi* = (a - c)/3.

Calcul vérifié : qi* = (100-10)/3 = 30. Q* = 60, P* = 100-60 = 40. Profit de chaque firme : (P*-c)×qi* = (40-10)×30 = 900.

Comparaison : en monopole, qm* = (a-c)/2 = 45, prix 100-45 = 55, supérieur au prix de Cournot. En concurrence pure (prix = coût marginal), le prix serait de 10, inférieur. L''oligopole de Cournot se situe donc, comme attendu, entre le monopole et la concurrence pure.

Le modèle de Bertrand (concurrence en prix)

Dans le modèle de Bertrand, les firmes choisissent leur prix pour un produit homogène. Résultat classique : avec deux firmes seulement, produit homogène et coûts identiques, la concurrence en prix ramène le prix au coût marginal (P = c), comme en concurrence parfaite. C''est le « paradoxe de Bertrand » : très peu de concurrents suffisent à éliminer tout profit si le produit est homogène.

Dans l''exemple fictif, un produit strictement identique avec coût marginal 10 donnerait un prix d''équilibre de Bertrand de 10, bien inférieur au prix de Cournot (40). Ce résultat explique pourquoi les entreprises cherchent presque toujours à différencier leur produit plutôt qu''une concurrence frontale par les prix.

La différenciation de produit

Lorsque les produits ne sont pas parfaitement substituables (marque, qualité de service, réseau), chaque firme conserve un pouvoir de marché car une partie de sa clientèle reste fidèle malgré un prix légèrement supérieur. Exemple fictif : une meilleure couverture réseau en zone rurale permet de maintenir un prix plus élevé sans perdre immédiatement ses clients. La différenciation atténue la pression sur les prix, au bénéfice des marges, mais potentiellement au détriment du pouvoir d''achat si elle n''est pas encadrée.

La collusion et les cartels

La collusion se produit lorsque des firmes s''entendent, explicitement ou tacitement, pour limiter la concurrence afin d''augmenter leurs profits conjoints au détriment des consommateurs. Un cartel est une collusion explicite et organisée.

Calcul illustratif : en monopole conjoint, les deux firmes produiraient Q = 45 au prix de 55, profit joint (55-10)×45 = 2025, contre 900+900 = 1800 en Cournot. La collusion est donc plus profitable pour les firmes (2025 > 1800), mais elle réduit la quantité offerte et augmente le prix payé par les consommateurs.

Les cartels sont généralement instables sans mécanisme de surveillance, car chaque membre a individuellement intérêt à produire davantage que sa part convenue (incitation à « tricher »), objet d''étude de la théorie des jeux répétés.

Le rôle économique de la régulation

Face aux risques de pouvoir de marché excessif et de collusion, la régulation vise à préserver une concurrence suffisante et à encadrer les secteurs où la concurrence pure n''est pas naturellement possible (monopoles naturels). En Afrique de l''Ouest, des autorités nationales et régionales de la concurrence sanctionnent les pratiques anticoncurrentielles, et des régulateurs sectoriels (télécommunications, énergie, transports) encadrent les tarifs et l''accès aux infrastructures. Les règles précises diffèrent selon les pays et évoluent ; en cas de doute, il convient toujours de vérifier le texte officiel en vigueur plutôt que d''affirmer un taux ou un seuil non vérifié.

Points clés à retenir
- Cournot (concurrence en quantités) donne un prix entre celui du monopole et celui de la concurrence pure.
- Bertrand (concurrence en prix, produit homogène) peut ramener le prix au niveau du coût marginal même avec peu de concurrents : c''est le paradoxe de Bertrand.
- La différenciation de produit permet aux firmes de conserver un pouvoir de marché malgré la présence de concurrents.
- La collusion augmente le profit joint des firmes mais réduit le bien-être des consommateurs ; elle reste fragile sans mécanisme de surveillance.
- La régulation économique (autorités de la concurrence, régulateurs sectoriels) vise à limiter les effets négatifs du pouvoir de marché, notamment en présence de monopoles naturels.

## Exercices pratiques

1. Dans Cournot avec n firmes symétriques, qi* = (a-c)/(n+1). Calculez le prix d''équilibre pour a=100, c=10, n=3.
2. Expliquez en quoi le paradoxe de Bertrand est contre-intuitif.
3. Pourquoi une firme a-t-elle intérêt à différencier son produit plutôt que de concurrencer frontalement ses rivales sur les prix ?
4. Dans l''exemple du cartel fictif, calculez le profit individuel si les firmes se répartissent équitablement le profit joint de collusion, et comparez-le au profit de Cournot.
5. Pourquoi un monopole naturel justifie-t-il une régulation plutôt qu''une ouverture à la concurrence par les infrastructures ?
6. Cas pratique : un régulateur observe deux opérateurs fictifs à parts de marché stables à 50 % depuis cinq ans, prix très proches, hausses simultanées. Citez au moins trois indices pouvant justifier une enquête pour collusion tacite.
7. Pourquoi la théorie des jeux répétés explique-t-elle mieux la stabilité d''un cartel que la théorie des jeux à un coup ?

## Corrigé

1. qi* = (100-10)/4 = 22,5. Q* = 67,5. P* = 100-67,5 = 32,5. Plus il y a de firmes, plus le prix se rapproche du coût marginal (10), confirmant que Cournot converge vers la concurrence pure.
2. Le paradoxe de Bertrand montre qu''avec un produit homogène, deux concurrents suffisent déjà à ramener le prix au coût marginal : chaque firme a intérêt à baisser légèrement son prix pour capter toute la demande, jusqu''à ce qu''aucune marge ne soit plus possible.
3. La différenciation réduit la substituabilité parfaite : les clients ne changent plus de fournisseur pour un petit écart de prix, ce qui permet de conserver une marge, alors qu''en produit homogène la moindre différence de prix fait basculer toute la demande vers le moins cher.
4. Profit individuel en collusion = 2025/2 = 1012,5, contre 900 en Cournot. Chaque firme gagne davantage (1012,5>900), ce qui explique l''incitation à s''entendre, mais aussi l''incitation à « tricher » en produisant plus pour un gain immédiat supérieur, d''où la fragilité de l''accord.
5. Dupliquer l''infrastructure serait extrêmement coûteux et inefficace (coûts fixes énormes, fortes économies d''échelle) : un seul réseau régulé (tarifs encadrés, obligations d''accès) est plus efficace que plusieurs réseaux concurrents sous-utilisés.
6. Parts de marché anormalement stables sans gagnant ni perdant ; hausses de prix simultanées de montant proche malgré des coûts potentiellement différents ; absence de guerre des prix malgré seulement deux acteurs (attendue en Bertrand). Ces indices ne prouvent pas une entente mais peuvent justifier une enquête.
7. Dans un jeu à un coup, chaque firme a toujours intérêt à tricher, sans conséquence future. Dans un jeu répété, une triche aujourd''hui peut entraîner une rétorsion future : la menace crédible de punition peut rendre la collusion stable, tant que les gains futurs de coopération dépassent le gain immédiat de la triche.', 'texte', 50, false, 30
from public.courses c where c.slug = 'mas-eco-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Économie industrielle et organisation des marchés : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Politiques économiques et macroéconomie ouverte avancée : l''essentiel pour l''examen', 'Objectifs de la leçon

Cette leçon traite des politiques économiques en économie ouverte : les canaux de la politique budgétaire et monétaire lorsque l''économie commerce avec le reste du monde, les contraintes propres à une union monétaire comme l''UEMOA, et la soutenabilité de la dette publique.

De l''économie fermée à l''économie ouverte

En Licence, le modèle IS-LM a été étudié surtout en économie fermée. En Master 1, on introduit explicitement le compte extérieur : exportations, importations, taux de change, mobilité des capitaux. Le modèle de référence, souvent appelé IS-LM-BP (Mundell-Fleming), ajoute une courbe BP représentant l''équilibre de la balance des paiements.

Le trilemme de Mundell

Un résultat central de l''économie ouverte : un pays ne peut pas avoir simultanément (1) un taux de change fixe, (2) une parfaite mobilité des capitaux, et (3) une politique monétaire pleinement autonome. Il doit renoncer à l''un des trois.

Application à l''UEMOA (en termes généraux, sans taux précis) : les pays membres partagent une monnaie commune avec une parité fixe historique à l''euro, et une relative ouverture aux mouvements de capitaux. Conséquence directe du trilemme : chaque État membre renonce à une politique monétaire nationale autonome, décidée au niveau de la banque centrale commune. C''est le prix de la stabilité du taux de change offerte par l''union.

Politique budgétaire en économie ouverte avec change fixe

Avec un change fixe et une mobilité des capitaux élevée, la politique budgétaire devient l''instrument principal dont dispose un État membre pour agir sur son activité nationale, la politique monétaire ne lui appartenant plus en propre. Une relance budgétaire a, en théorie, un effet multiplicateur plus important dans ce cadre qu''en change flexible, car elle n''est pas « absorbée » par une appréciation automatique du taux de change pénalisant les exportations.

Cette dépendance renforcée à la politique budgétaire explique pourquoi la discipline budgétaire est sensible dans une union monétaire : un déficit mal maîtrisé dans un État membre peut peser sur la crédibilité de l''ensemble de la zone, même si chaque État reste en principe responsable de ses propres finances.

La soutenabilité de la dette publique

La dette publique est soutenable si l''État peut, durablement, honorer ses engagements sans ajustement brutal. Une approche simplifiée compare le taux de croissance (g) et le taux d''intérêt réel moyen de la dette (r).

Règle simplifiée (à utiliser avec prudence) : si g > r et que le solde primaire n''est pas trop négatif, le ratio dette/PIB tend à se stabiliser ou diminuer ; si r > g durablement, le ratio dette/PIB tend à augmenter mécaniquement, même sans nouveau déficit, par effet « boule de neige ».

Exemple numérique fictif (calcul vérifié) : ratio dette/PIB de 60 %, croissance réelle 5 %, taux d''intérêt réel 3 %, solde primaire nul. Formule : Δ(dette/PIB) ≈ (r-g)×(dette/PIB) - solde primaire/PIB. Calcul : (0,03-0,05)×0,60 - 0 = -0,012, soit une baisse d''environ 1,2 point, grâce à une croissance supérieure au taux d''intérêt.

Contre-exemple fictif : si la croissance chute à 1 % (r inchangé à 3 %) : (0,03-0,01)×0,60 = +0,012, soit une hausse d''environ 1,2 point. Ce basculement illustre que la croissance est une variable clé de la soutenabilité de la dette, au même titre que le déficit.

Attention : cette formule est une approximation pédagogique. Les seuils réellement utilisés par les institutions (critères de convergence UEMOA notamment) sont des valeurs officielles précises, à vérifier auprès des textes en vigueur ; aucun seuil officiel n''est affirmé ici.

Les canaux de la politique monétaire commune

Dans l''UEMOA, la politique monétaire commune agit en principe par plusieurs canaux généraux, sans taux précis non vérifié : le canal du taux d''intérêt (coût du crédit), le canal du crédit bancaire (disponibilité du financement), et le canal des anticipations (confiance dans la stabilité des prix et de la monnaie commune). La coordination entre politique monétaire commune et politiques budgétaires nationales est centrale dans la gouvernance économique régionale.

Points clés à retenir
- Le trilemme de Mundell explique pourquoi une union monétaire à change fixe implique de renoncer à une politique monétaire nationale autonome.
- En change fixe, la politique budgétaire devient l''instrument national principal de régulation de l''activité économique.
- La soutenabilité de la dette dépend de l''écart entre le taux de croissance et le taux d''intérêt réel, et du solde budgétaire primaire.
- Quand la croissance dépasse le taux d''intérêt réel, le ratio dette/PIB tend mécaniquement à diminuer, même sans excédent primaire.
- Aucun taux officiel, seuil réglementaire ou critère de convergence précis ne doit être affirmé sans vérification du texte officiel en vigueur.

## Exercices pratiques

1. Énoncez le trilemme de Mundell et expliquez ce qu''une union monétaire à change fixe doit sacrifier.
2. Pourquoi la politique budgétaire est-elle particulièrement importante pour un État membre d''une union monétaire par rapport à un pays à change flexible et politique monétaire autonome ?
3. Un pays fictif a un ratio dette/PIB de 50 %, une croissance réelle de 2 %, un taux d''intérêt réel de 4 %, un solde primaire de -1 % du PIB. Calculez la variation du ratio dette/PIB avec la formule du cours.
4. Expliquez, sans chiffre précis, pourquoi la discipline budgétaire d''un État membre peut affecter la crédibilité de toute une union monétaire.
5. Cas pratique : un gouvernement fictif envisage une relance budgétaire après un choc externe. Discutez, avec le trilemme et la soutenabilité de la dette, les avantages et risques de cette relance en union monétaire à change fixe.
6. Qu''est-ce que l''effet « boule de neige » de la dette, et dans quelles conditions (r vs g) se produit-il ?
7. Pourquoi faut-il être prudent avant d''affirmer un seuil officiel précis de dette/PIB dans un devoir ?

## Corrigé

1. Le trilemme énonce qu''un pays ne peut pas avoir simultanément change fixe, mobilité parfaite des capitaux et politique monétaire autonome. En acceptant un change fixe commun et une certaine ouverture financière, les États membres renoncent à fixer eux-mêmes leur politique monétaire, déléguée à la banque centrale commune.
2. Parce que la politique monétaire n''est plus un levier national : l''État ne peut pas seul baisser son taux ou dévaluer pour répondre à un choc spécifique. Il ne lui reste que la politique budgétaire comme instrument national de stabilisation, d''où son importance accrue.
3. Δ(dette/PIB) ≈ (0,04-0,02)×0,50-(-0,01) = 0,01+0,01 = 0,02, soit une hausse d''environ 2 points, résultant d''un taux d''intérêt supérieur à la croissance et d''un déficit primaire.
4. Si un État membre accumule une dette jugée non soutenable, les marchés peuvent réévaluer le risque perçu pour l''ensemble de la zone (contagion de la confiance), même si chaque État reste en théorie responsable de ses propres finances.
5. Avantages : la relance budgétaire reste l''instrument national disponible (conforme au trilemme) ; en change fixe, son effet n''est pas atténué par une appréciation automatique de la monnaie. Risques : si r > g, le ratio dette/PIB peut se dégrader durablement (boule de neige), pesant à terme sur la crédibilité du pays et de la zone ; une réponse équilibrée combine relance ciblée et trajectoire de dette soutenable à moyen terme.
6. Il se produit lorsque r est durablement supérieur à g : la charge d''intérêt croît plus vite que la capacité de l''économie à la rembourser, augmentant mécaniquement le ratio dette/PIB même sans nouveau déficit primaire.
7. Parce que ces seuils sont fixés par des textes officiels précis, révisables dans le temps ; il faut toujours renvoyer au texte en vigueur plutôt que d''inventer ou de se fier à un chiffre non vérifié.', 'texte', 50, false, 40
from public.courses c where c.slug = 'mas-eco-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Politiques économiques et macroéconomie ouverte avancée : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Master 1 Économie (entraînement, corrigé détaillé)', '## Fiche du sujet type

Ce sujet type d''examen de Master 1 en Économie couvre les trois matières avancées du semestre : économétrie appliquée, économie industrielle et organisation des marchés, et politiques économiques en économie ouverte. Il s''agit d''un sujet NON OFFICIEL construit pour l''entraînement, avec un barème indicatif sur 20 points. Durée indicative : 3 heures.

## Sujet

Partie 1 — Économétrie appliquée (7 points)

Une cellule d''analyse fictive étudie la relation entre le chiffre d''affaires mensuel (Y, en millions de FCFA) de dix commerces fictifs d''un même quartier et deux variables : la surface de vente (X1, en dizaines de m²) et le nombre d''employés (X2). L''estimation par MCO donne le modèle suivant (coefficients fournis, calculs déjà vérifiés par l''énoncé) :

Y_estimé = 5 + 4,2 × X1 + 1,8 × X2

avec les écarts-types suivants : SE(β1) = 0,6 et SE(β2) = 1,5, sur un échantillon de n = 10 observations avec k = 2 variables explicatives.

1.1. (2 points) Interprétez économiquement les coefficients β1 = 4,2 et β2 = 1,8.
1.2. (3 points) Calculez les statistiques de Student pour β1 et β2. En utilisant une valeur critique de table d''environ 2,36 (5 %, 7 degrés de liberté), concluez sur la significativité de chaque coefficient.
1.3. (2 points) Le R² du modèle est de 0,95. Que signifie cette valeur ? Citez un facteur de prudence à garder en tête avant de conclure trop vite à la qualité du modèle.

Partie 2 — Économie industrielle (7 points)

Deux brasseries fictives, « Lion d''Or » et « Teranga Brew », sont en situation de duopole de Cournot sur un marché régional fictif. La demande inverse est P = 120 - Q, avec Q = q1 + q2, et le coût marginal commun est c = 20.

2.1. (3 points) Calculez la quantité produite par chaque firme à l''équilibre de Cournot, le prix de marché, et le profit de chaque firme.
2.2. (2 points) Si les deux brasseries décidaient de s''entendre pour produire comme un monopole conjoint, calculez la quantité totale de monopole, le prix, et le profit joint. Comparez ce profit joint au profit joint obtenu en situation de Cournot.
2.3. (2 points) Expliquez pourquoi un tel accord, bien que plus profitable pour les deux firmes, reste fragile sans mécanisme de surveillance, et pourquoi une autorité de la concurrence s''y intéresserait.

Partie 3 — Politiques économiques en économie ouverte (6 points)

Un pays fictif, membre d''une union monétaire à change fixe, a un ratio dette publique/PIB de 55 % en début d''année, une croissance réelle anticipée de 4 %, un taux d''intérêt réel moyen de 2 % sur sa dette, et un solde primaire de +0,5 % du PIB (léger excédent primaire).

3.1. (2 points) Rappelez le trilemme de Mundell et expliquez ce que ce pays a dû accepter de sacrifier en adhérant à une union monétaire à change fixe.
3.2. (2 points) Calculez la variation approximative du ratio dette/PIB sur l''année, avec la formule simplifiée Δ(dette/PIB) ≈ (r - g) × (dette/PIB) - solde primaire/PIB.
3.3. (2 points) Le pays subit un choc externe qui fait chuter sa croissance réelle à 1 % sans changer le taux d''intérêt réel ni le solde primaire. Recalculez la variation du ratio dette/PIB et commentez l''évolution par rapport à la question précédente.

## Corrigé détaillé

1.1. β1 = 4,2 : toutes choses égales par ailleurs (nombre d''employés constant), chaque dizaine de m² supplémentaire de surface de vente est associée à une hausse moyenne de 4,2 millions de FCFA de chiffre d''affaires mensuel dans cet échantillon. β2 = 1,8 : toutes choses égales par ailleurs (surface constante), chaque employé supplémentaire est associé à une hausse moyenne de 1,8 million de FCFA de chiffre d''affaires mensuel.

1.2. t(β1) = 4,2 / 0,6 = 7,0. t(β2) = 1,8 / 1,5 = 1,2. Avec une valeur critique d''environ 2,36 : t(β1) = 7,0 > 2,36, donc β1 est statistiquement significatif, on rejette l''hypothèse β1 = 0. t(β2) = 1,2 < 2,36, donc β2 n''est pas statistiquement significatif à ce seuil sur cet échantillon : on ne peut pas rejeter l''hypothèse β2 = 0 avec confiance.

1.3. Un R² de 0,95 signifie que 95 % de la variation du chiffre d''affaires observé dans l''échantillon est expliquée par les deux variables du modèle (surface et nombre d''employés). Facteur de prudence : l''échantillon est petit (seulement 10 observations), ce qui rend le résultat statistiquement fragile et peu généralisable à d''autres commerces ou d''autres périodes ; un R² élevé ne garantit pas non plus une relation causale, seulement une forte association statistique dans cet échantillon précis.

2.1. Formule du duopole de Cournot symétrique : qi* = (a-c)/3 = (120-20)/3 = 100/3 ≈ 33,33. Q* = 66,67. P* = 120 - 66,67 = 53,33. Profit de chaque firme : (P*-c) × qi* = (53,33-20) × 33,33 ≈ 33,33 × 33,33 ≈ 1111,1 (unités fictives de profit, calcul vérifié : (100/3)² = 10000/9 ≈ 1111,11).

2.2. Quantité de monopole : qm* = (a-c)/2 = 100/2 = 50. Prix de monopole : Pm = 120 - 50 = 70. Profit joint de monopole : (70-20) × 50 = 50 × 50 = 2500. Profit joint de Cournot : 2 × 1111,11 ≈ 2222,2. On observe que 2500 > 2222,2 : la collusion en monopole conjoint est plus profitable pour les deux firmes réunies que la concurrence de Cournot.

2.3. L''accord est fragile car chaque firme a individuellement intérêt à produire davantage que sa part convenue pour capter un profit immédiat supérieur ; sans mécanisme crédible de surveillance et de sanction, l''accord tend à se rompre. Une autorité de la concurrence s''y intéresse parce qu''un tel accord, même tacite, réduit la quantité offerte et augmente le prix payé par les consommateurs, un préjudice économique pour le marché.

3.1. Le trilemme de Mundell énonce qu''un pays ne peut pas combiner simultanément taux de change fixe, mobilité parfaite des capitaux et politique monétaire nationale autonome. En adhérant à une union monétaire à change fixe avec une certaine ouverture financière, ce pays a dû accepter de renoncer à une politique monétaire nationale indépendante : les décisions de taux d''intérêt et de masse monétaire sont prises au niveau de la banque centrale commune, pas au niveau national.

3.2. Δ(dette/PIB) ≈ (0,02 - 0,04) × 0,55 - 0,005 = (-0,02) × 0,55 - 0,005 = -0,011 - 0,005 = -0,016, soit une baisse d''environ 1,6 point de pourcentage du ratio dette/PIB sur l''année, résultant à la fois d''une croissance supérieure au taux d''intérêt réel et d''un léger excédent primaire.

3.3. Avec une croissance tombée à 1 % : Δ(dette/PIB) ≈ (0,02-0,01)×0,55-0,005 = 0,0055-0,005 = 0,0005, variation quasi nulle, contre une baisse de 1,6 point initialement. Le choc de croissance fait basculer la trajectoire de la dette, malgré le maintien d''un excédent primaire.

## Exercices pratiques

1. Dans la partie 1 de ce sujet, si le nombre d''observations était de 30 au lieu de 10 (toutes choses égales par ailleurs sur les coefficients et écarts-types), quel effet attendu cela aurait-il généralement sur la fiabilité statistique du modèle ?
2. Dans la partie 2, si le coût marginal des deux brasseries augmentait à 30 (au lieu de 20), recalculez la quantité individuelle et le prix d''équilibre de Cournot.
3. Dans la partie 3, expliquez pourquoi un excédent primaire ne suffit pas toujours à garantir une baisse du ratio dette/PIB.

## Corrigé

1. Avec un échantillon plus grand, les degrés de liberté augmentent, ce qui réduit en général les écarts-types et augmente la puissance des tests : un coefficient proche de la significativité avec un petit échantillon peut devenir clairement significatif, et les résultats sont plus robustes.
2. qi* = (120-30)/3 = 30. Q* = 60. P* = 120-60 = 60. Le prix augmente par rapport au cas précédent (53,33 à 60), cohérent avec la hausse du coût marginal.
3. Parce que la variation dépend aussi de l''écart (r-g) : si r est durablement supérieur à g, l''effet boule de neige peut dépasser l''effet favorable d''un excédent primaire modeste, comme en 3.3 où un excédent de 0,5 % du PIB n''a presque plus suffi à stabiliser la dette une fois la croissance tombée à 1 %.', 'texte', 60, false, 50
from public.courses c where c.slug = 'mas-eco-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Master 1 Économie (entraînement, corrigé détaillé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Économétrie appliquée', '## Fiche du cours vidéo

Durée : 1h30 (90 minutes). Sujet : Économétrie appliquée — construire, tester et interpréter un modèle de régression multiple.
Objectifs : à la fin de la séance, l''étudiant sait estimer une régression multiple, interpréter chaque coefficient, réaliser un test de Student et un test F, et discuter les limites du modèle (variable omise, multicolinéarité, hétéroscédasticité).
Matériel : tableau ou diaporama, calculatrice ou tableur, le jeu de données fictif de l''étude de cas (exportations d''une filière agro-industrielle).
Prérequis : régression simple (Licence 2), notions de moyenne, variance, écart-type.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs de la séance

Bonjour à toutes et à tous. Bienvenue dans ce cours vidéo consacré à l''économétrie appliquée, la première des trois matières avancées de votre semestre de Master 1 en Économie. Aujourd''hui, nous allons passer de la théorie vue en cours à la pratique : vous allez apprendre à construire un modèle de régression multiple, à l''estimer, à tester la significativité de ses coefficients, et surtout à l''interpréter comme un économiste, pas seulement comme un calculateur. L''objectif de cette séance n''est pas de vous transformer en statisticien pur, mais de vous donner les réflexes méthodologiques qui vous serviront aussi bien pour vos examens que pour votre mémoire de recherche ou votre futur travail en entreprise ou en administration. Nous travaillerons sur un exemple fictif, construit spécialement pour cette séance, dont tous les calculs ont été vérifiés.

## 05:00 – 20:00 · Rappel du modèle et présentation du cas d''étude

Commençons par rappeler la structure d''un modèle de régression linéaire multiple : Y égale bêta zéro, plus bêta un fois X un, plus bêta deux fois X deux, plus epsilon, le terme d''erreur. Y est la variable que l''on cherche à expliquer, les X sont les variables explicatives, et les bêta sont les coefficients que la méthode des moindres carrés ordinaires va estimer en minimisant la somme des carrés des écarts entre les valeurs observées et les valeurs prédites par le modèle.

Notre étude de cas : un observatoire régional fictif étudie les exportations mensuelles d''une filière de transformation agroalimentaire dans dix zones de production comparables. Nous disposons de deux variables explicatives : l''investissement productif cumulé, en milliards de FCFA, et le taux d''ouverture commerciale de chaque zone, en pourcentage. La variable à expliquer est le niveau d''exportations, en milliards de FCFA.

Je vous invite à noter les dix observations au tableau ou sur votre support : l''investissement va de 5 à 14 milliards FCFA, le taux d''ouverture de 2 à 6 %, et les exportations de 20 à 53 milliards FCFA, en progression régulière d''une zone à l''autre. Prenez un instant pour observer ces chiffres : on voit déjà, à l''œil, que les exportations augmentent globalement avec l''investissement. C''est précisément ce que la régression va quantifier de façon rigoureuse.

Question à la classe : avant même de calculer quoi que ce soit, à votre avis, laquelle des deux variables explicatives aura le coefficient le plus élevé en valeur absolue, et pourquoi ? Prenez trente secondes pour y réfléchir avant que nous passions au calcul.

## 20:00 – 35:00 · Estimation du modèle et lecture des coefficients

Le calcul, réalisé avec un outil de calcul scientifique vérifié, donne les résultats suivants : bêta zéro, la constante, est d''environ 2,00 ; bêta un, le coefficient de l''investissement, est d''environ 3,60 ; bêta deux, le coefficient du taux d''ouverture, est d''environ 0,05.

Le modèle estimé s''écrit donc : exportations estimées égale 2,00, plus 3,60 fois l''investissement, plus 0,05 fois le taux d''ouverture.

Interprétons chaque coefficient, et c''est ici que se joue la vraie compétence d''économiste. Le coefficient de 3,60 signifie que, toutes choses égales par ailleurs — c''est-à-dire en maintenant le taux d''ouverture constant — une augmentation d''un milliard de FCFA de l''investissement productif est associée à une augmentation de 3,60 milliards de FCFA des exportations. C''est un effet marginal important.

Le coefficient de 0,05, en revanche, est très faible : toutes choses égales par ailleurs, une hausse d''un point de pourcentage du taux d''ouverture n''est associée qu''à 0,05 milliard de FCFA d''exportations supplémentaires. C''est un effet quasiment négligeable dans cet échantillon précis. Retenez bien cette phrase : « toutes choses égales par ailleurs ». C''est la clé de toute interprétation économétrique correcte, et c''est souvent ce qui manque dans les copies d''examen qui se contentent de recopier un chiffre sans l''interpréter.

## 35:00 – 50:00 · Le test de Student sur les coefficients

Comment savoir si un coefficient est statistiquement fiable, ou s''il pourrait être dû au hasard de l''échantillon ? C''est le rôle du test de Student. La formule est simple : t égale le coefficient divisé par son écart-type estimé.

Dans notre exemple, l''écart-type de bêta un est d''environ 0,207, et celui de bêta deux est d''environ 0,420. Calculons : t un égale 3,60 divisé par 0,207, ce qui donne environ 17,39. C''est une valeur très élevée. Avec dix observations et deux variables explicatives, nous avons sept degrés de liberté, et la valeur critique usuelle à 5 % est d''environ 2,36 — valeur à toujours vérifier dans une table de Student officielle. Puisque 17,39 est largement supérieur à 2,36, nous rejetons l''hypothèse selon laquelle bêta un serait nul : l''investissement a un effet statistiquement significatif.

Pour bêta deux : t deux égale 0,05 divisé par 0,420, ce qui donne environ 0,12. Cette valeur est bien inférieure à 2,36 : nous ne pouvons pas rejeter l''hypothèse que bêta deux est nul. Attention à la formulation correcte : cela ne veut pas dire que le taux d''ouverture commerciale n''a aucun effet économique sur les exportations en général. Cela signifie seulement que, sur cet échantillon fictif précis de dix observations, l''effet mesuré n''est pas statistiquement distinguable de zéro.

## 50:00 – 55:00 · Pause et quiz interactif

Nous allons marquer une pause de cinq minutes. Avant cela, un petit quiz pour vérifier votre compréhension. Première question : si la statistique de Student d''un coefficient est de 1,5 et que la valeur critique est de 2,36, que concluez-vous ? Deuxième question : que signifie l''expression « toutes choses égales par ailleurs » dans l''interprétation d''un coefficient de régression ? Troisième question : pourquoi faut-il sept degrés de liberté dans notre exemple et pas dix ? Réfléchissez à ces trois questions pendant la pause ; nous les corrigerons ensemble à notre retour.

Correction du quiz : premièrement, avec un t de 1,5 inférieur à 2,36, on ne peut pas rejeter l''hypothèse de nullité du coefficient, celui-ci n''est pas statistiquement significatif à ce seuil. Deuxièmement, cela signifie que l''on étudie l''effet d''une variable en maintenant toutes les autres variables du modèle constantes, pour isoler sa contribution propre. Troisièmement, les degrés de liberté sont égaux au nombre d''observations moins le nombre de variables explicatives moins un (pour la constante), soit dix moins deux moins un, égal sept.

## 55:00 – 1:10:00 · Qualité globale du modèle et pièges à éviter

Passons maintenant à l''évaluation globale du modèle. Le R² mesure la part de la variance de la variable expliquée qui est captée par le modèle. Dans notre exemple, le R² est d''environ 0,999, soit 99,9 % de la variation des exportations expliquée par nos deux variables. Le R² ajusté, qui pénalise l''ajout de variables supplémentaires, reste également très élevé. Le test F, qui évalue la significativité globale du modèle, donne ici une valeur d''environ 5057, largement supérieure à la valeur critique usuelle : le modèle, dans son ensemble, est hautement significatif.

Mais attention, et c''est un point méthodologique essentiel que je veux que vous reteniez durablement : un R² aussi proche de 1 sur seulement dix observations fictives doit vous rendre prudents, pas satisfaits. Dans la réalité professionnelle, avec des données économiques réelles, un R² aussi élevé est rare et doit alerter sur un possible problème : échantillon trop petit, relation trop mécanique entre les variables construites pour l''exercice, ou données trop lissées.

Trois pièges classiques à toujours mentionner dans une analyse économétrique appliquée, même sans les calculer en détail à ce niveau. Premièrement, la variable omise : si une variable qui influence réellement la variable expliquée est corrélée avec une variable du modèle mais n''y figure pas, les coefficients estimés peuvent être biaisés. Deuxièmement, la multicolinéarité : quand deux variables explicatives sont très corrélées entre elles, il devient difficile de distinguer statistiquement leurs effets respectifs. Troisièmement, l''hétéroscédasticité : quand la variance des erreurs n''est pas constante, les écarts-types usuels des coefficients ne sont plus fiables, même si les coefficients eux-mêmes restent souvent corrects.

## 1:10:00 – 1:25:00 · Application guidée et synthèse

Reprenons un exercice guidé ensemble. Imaginez une nouvelle zone fictive avec un investissement de 10 milliards de FCFA et un taux d''ouverture de 4 %. Quelle est l''exportation prédite par notre modèle ? Calculons ensemble : 2,00, plus 3,60 fois 10, plus 0,05 fois 4, soit 2,00 plus 36,00 plus 0,20, égal 38,20 milliards de FCFA. Vous voyez que le calcul lui-même est simple ; la vraie difficulté, et ce sur quoi portera votre examen, c''est de savoir interpréter ce chiffre avec ses limites : un modèle estimé sur dix observations fictives, avec un coefficient de taux d''ouverture non significatif, ne doit pas être présenté comme une vérité absolue, mais comme une estimation à discuter.

Synthétisons les points essentiels de cette séance : un modèle de régression multiple s''interprète coefficient par coefficient, toujours « toutes choses égales par ailleurs » ; le test de Student permet de juger la significativité individuelle de chaque coefficient par comparaison à une valeur critique de table ; le R² et le test F évaluent la qualité globale du modèle, mais un R² très élevé sur un petit échantillon appelle la prudence plutôt que la satisfaction ; enfin, variable omise, multicolinéarité et hétéroscédasticité sont les trois limites méthodologiques à toujours savoir mentionner dans une copie d''examen ou un mémoire de recherche.

## 1:25:00 – 1:30:00 · Évaluation finale

Pour clore cette séance, voici cinq questions d''évaluation finale.

Question 1 : Dans un modèle Y = β0 + β1·X1 + β2·X2 + ε avec n = 20 observations, combien de degrés de liberté a le résidu ?
Réponse : n - k - 1 = 20 - 2 - 1 = 17 degrés de liberté.

Question 2 : Un coefficient β1 = 2,5 a un écart-type de 0,5. Quelle est sa statistique de Student ?
Réponse : t = 2,5 / 0,5 = 5,0, une valeur fortement significative dans la plupart des configurations usuelles.

Question 3 : Que mesure le R² d''un modèle de régression ?
Réponse : la part de la variance de la variable expliquée qui est captée par le modèle, entre 0 (aucune variance expliquée) et 1 (toute la variance expliquée).

Question 4 : Citez les trois problèmes classiques qui peuvent biaiser ou fragiliser une estimation par les moindres carrés ordinaires.
Réponse : la variable omise, la multicolinéarité, et l''hétéroscédasticité.

Question 5 : Pourquoi un R² extrêmement élevé sur un très petit échantillon doit-il être interprété avec prudence ?
Réponse : parce qu''avec peu d''observations, le résultat est statistiquement fragile, peu généralisable, et peut refléter une relation trop mécanique entre les variables plutôt qu''une véritable régularité économique robuste.

Merci à toutes et à tous pour votre attention. Révisez bien cette méthode : elle reviendra systématiquement dans vos examens d''économétrie appliquée et dans tout travail de recherche appliquée que vous mènerez cette année. À la prochaine séance.', 'video', 90, false, 60
from public.courses c where c.slug = 'mas-eco-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Économétrie appliquée');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Économie industrielle et organisation des marchés', '## Fiche du cours vidéo

Durée : 1h30 (90 minutes). Sujet : Économie industrielle — Cournot, Bertrand, différenciation, collusion et régulation.
Objectifs : savoir résoudre un duopole de Cournot et un duopole de Bertrand, comprendre l''effet de la différenciation de produit, analyser la logique économique de la collusion et le rôle de la régulation.
Matériel : tableau ou diaporama, calculatrice.
Prérequis : monopole et notions de base de duopole (Licence 2).

## Déroulé minuté

## 00:00 – 05:00 · Accueil et mise en contexte

Bonjour et bienvenue dans ce deuxième cours vidéo de votre Master 1 en Économie, consacré à l''économie industrielle avancée. En Licence, vous avez étudié le monopole et une introduction au duopole. Aujourd''hui, nous allons formaliser rigoureusement deux modèles classiques d''oligopole, le modèle de Cournot et le modèle de Bertrand, puis nous verrons pourquoi les entreprises différencient leurs produits, comment fonctionne la collusion, et pourquoi la régulation économique intervient sur ces marchés. Tous nos exemples utiliseront des entreprises fictives, construites pour l''exercice, inspirées de secteurs ouest-africains sans référence à une entreprise réelle.

## 05:00 – 20:00 · Le modèle de Cournot : concurrence en quantités

Dans le modèle de Cournot, chaque firme choisit simultanément la quantité qu''elle va produire, sans connaître la décision exacte de l''autre, mais en anticipant correctement son comportement à l''équilibre. Prenons notre cas fictif : deux opérateurs de télécommunications, que nous appellerons Firme A et Firme B, se partagent un marché régional. La demande inverse du marché est P égale 100 moins Q, où Q est la quantité totale produite par les deux firmes, et P le prix unitaire. Le coût marginal est identique pour les deux : 10.

La solution classique du duopole de Cournot symétrique, avec une demande linéaire P égale a moins Q et un coût marginal constant c, donne pour chaque firme : qi étoile égale a moins c, divisé par trois. Faisons le calcul ensemble : 100 moins 10, divisé par 3, égale 90 divisé par 3, égale 30. Chaque firme produit donc 30 unités, la quantité totale est de 60, et le prix d''équilibre est de 100 moins 60, soit 40.

Le profit de chaque firme, hors coûts fixes, est le prix moins le coût marginal, multiplié par la quantité : 40 moins 10, soit 30, multiplié par 30, soit 900 unités fictives de profit.

Comparons maintenant à deux cas de référence. En situation de monopole, la quantité optimale serait a moins c divisé par deux, soit 45, avec un prix de 100 moins 45, soit 55 — un prix supérieur à celui de Cournot. En concurrence pure, où le prix égale le coût marginal, le prix serait de 10 — un prix inférieur à celui de Cournot. L''oligopole de Cournot se situe donc exactement où la théorie le prédit : entre le monopole et la concurrence pure.

## 20:00 – 35:00 · Le modèle de Bertrand et le paradoxe de Bertrand

Changeons maintenant de variable stratégique : au lieu de choisir des quantités, les firmes choisissent leur prix, pour un produit parfaitement homogène, c''est-à-dire identique du point de vue du client. C''est le modèle de Bertrand.

Le résultat théorique est saisissant, et je veux que vous le reteniez précisément : avec seulement deux firmes, un produit homogène, et des coûts marginaux identiques, la concurrence en prix conduit le prix d''équilibre au niveau du coût marginal, exactement comme en concurrence parfaite, et cela avec seulement deux concurrents. C''est ce qu''on appelle le paradoxe de Bertrand.

Pourquoi ce résultat ? Parce que si une firme fixe un prix supérieur au coût marginal, l''autre a toujours intérêt à fixer un prix légèrement inférieur pour capter toute la demande du marché, et ce processus se répète jusqu''à ce que le prix atteigne le coût marginal, où plus aucune marge positive n''est possible pour inciter à baisser davantage.

Dans notre exemple fictif, si Firme A et Firme B vendaient un service de télécommunication strictement identique avec un coût marginal de 10, le modèle de Bertrand prédirait un prix d''équilibre de 10 — bien inférieur au prix de Cournot que nous avons calculé, qui était de 40. C''est une différence considérable, et elle explique un comportement stratégique essentiel des entreprises dans la réalité : pourquoi, à votre avis, les entreprises évitent-elles généralement de vendre un produit parfaitement homogène face à leurs concurrents ? Réfléchissez trente secondes.

La réponse, bien sûr : pour échapper au paradoxe de Bertrand et à l''anéantissement de leurs marges, les entreprises différencient leur offre.

## 35:00 – 50:00 · Différenciation de produit et pouvoir de marché

Lorsque les produits ne sont pas parfaitement substituables — par la marque, la qualité perçue, le réseau de distribution, le service après-vente — chaque firme conserve un pouvoir de marché même en présence de concurrents directs, car une partie de sa clientèle reste fidèle malgré un prix légèrement supérieur à celui du concurrent.

Reprenons notre exemple : si Firme A différencie son offre par une meilleure couverture réseau dans certaines zones rurales, elle peut maintenir un prix plus élevé que Firme B sans perdre immédiatement tous ses clients dans ces zones, parce que ces clients valorisent la qualité de couverture au-delà du simple prix. La différenciation atténue donc mécaniquement la pression concurrentielle sur les prix.

Du point de vue du bien-être économique, cet effet est ambigu : il profite aux marges des entreprises, ce qui peut financer l''innovation et l''investissement, mais il peut aussi, si la différenciation devient excessive ou artificielle, réduire le pouvoir d''achat des consommateurs par rapport à une situation de concurrence plus frontale. C''est un arbitrage que les économistes et les régulateurs doivent évaluer au cas par cas.

## 50:00 – 55:00 · Pause et quiz interactif

Prenons une pause de cinq minutes avec un quiz. Premièrement : dans le modèle de Cournot avec n firmes symétriques, la formule générale est qi étoile égale a moins c, divisé par n plus un. Si n passe de 2 à 10, que devient le prix d''équilibre, intuitivement ? Deuxièmement : pourquoi le paradoxe de Bertrand ne se vérifie-t-il presque jamais exactement dans la réalité ? Troisièmement : citez un exemple fictif de différenciation de produit dans un secteur de votre choix.

Correction : premièrement, quand n augmente, le prix d''équilibre de Cournot se rapproche progressivement du coût marginal, convergeant vers la concurrence pure — c''est une propriété importante du modèle. Deuxièmement, en réalité, les produits sont presque toujours différenciés d''une manière ou d''une autre, et l''information des consommateurs n''est jamais parfaite, ce qui atténue la pression extrême du paradoxe de Bertrand. Troisièmement, toute réponse pertinente est acceptée, par exemple une enseigne de distribution qui se différencie par la proximité de ses points de vente plutôt que par le prix.

## 55:00 – 1:10:00 · Collusion, cartels et instabilité

Étudions maintenant la collusion : une situation où des firmes concurrentes s''entendent, explicitement ou tacitement, pour limiter la concurrence entre elles — en fixant des prix communs, en se répartissant des marchés, ou en limitant la production — afin d''augmenter leurs profits conjoints, au détriment des consommateurs. Un cartel est une collusion organisée explicitement.

Calculons l''incitation à la collusion dans notre exemple. Si Firme A et Firme B s''entendaient pour se comporter comme un monopole conjoint, elles produiraient ensemble la quantité de monopole, soit 45, au prix de 55, pour un profit joint de 55 moins 10, soit 45, multiplié par 45, soit 2025. Comparons ce chiffre au profit joint obtenu en situation de Cournot : 900 plus 900, soit 1800. La collusion est donc plus profitable pour les deux firmes réunies : 2025 est supérieur à 1800.

Mais, et c''est un point fondamental de la théorie des jeux, cet accord reste fragile sans mécanisme de surveillance, car chaque firme a individuellement intérêt à produire davantage que sa part convenue, pour capter un profit immédiat encore supérieur, tant que l''autre firme respecte l''accord. C''est l''incitation à « tricher ». Dans un jeu répété, cette tentation peut être contenue par la menace crédible d''une rétorsion future, comme une guerre des prix ; mais dans un jeu à un seul coup, la tentation de tricher l''emporte systématiquement.

## 1:10:00 – 1:25:00 · Le rôle de la régulation économique

Face à ces risques de pouvoir de marché excessif et de collusion, la régulation économique poursuit deux objectifs principaux. Premièrement, préserver une concurrence suffisante sur les marchés où elle est possible, en sanctionnant les pratiques anticoncurrentielles — ententes, abus de position dominante — par des autorités nationales et régionales de la concurrence. Deuxièmement, encadrer les secteurs où la concurrence pure n''est pas naturellement possible, notamment les monopoles naturels, où les coûts fixes très élevés rendent la duplication des infrastructures économiquement inefficace, comme certains réseaux d''énergie ou de transport.

En Afrique de l''Ouest, des régulateurs sectoriels interviennent dans les télécommunications, l''énergie, les transports, pour encadrer les tarifs et les conditions d''accès aux infrastructures. Je dois insister sur un point de méthode important : les règles précises, les seuils, les taux de sanction diffèrent selon les pays et évoluent dans le temps. Dans un examen ou un mémoire, ne citez jamais un seuil réglementaire précis sans l''avoir vérifié dans le texte officiel en vigueur ; expliquez plutôt le mécanisme économique général, ce qui est toujours valorisé par un correcteur.

## 1:25:00 – 1:30:00 · Évaluation finale

Cinq questions pour clore cette séance.

Question 1 : Dans un duopole de Cournot avec demande P = a - Q et coût marginal c, quelle est la formule de la quantité individuelle d''équilibre ?
Réponse : qi* = (a - c) / 3.

Question 2 : Que prédit le modèle de Bertrand avec un produit homogène et deux firmes aux coûts identiques ?
Réponse : un prix d''équilibre égal au coût marginal, comme en concurrence parfaite.

Question 3 : Pourquoi la différenciation de produit permet-elle à une firme de conserver un pouvoir de marché ?
Réponse : parce qu''elle réduit la substituabilité parfaite entre les offres, fidélisant une partie de la clientèle malgré un prix plus élevé.

Question 4 : Pourquoi un accord de collusion reste-t-il souvent instable sans mécanisme de surveillance ?
Réponse : parce que chaque firme a individuellement intérêt à produire davantage que sa part convenue pour un gain immédiat supérieur, ce qui rompt l''accord.

Question 5 : Quels sont les deux objectifs principaux de la régulation économique face au pouvoir de marché ?
Réponse : préserver une concurrence suffisante en sanctionnant les pratiques anticoncurrentielles, et encadrer les secteurs de monopole naturel où la concurrence pure n''est pas réaliste.

Merci de votre attention. La semaine prochaine, nous passerons aux politiques économiques en économie ouverte.', 'video', 90, false, 70
from public.courses c where c.slug = 'mas-eco-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Économie industrielle et organisation des marchés');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Politiques économiques et macroéconomie ouverte avancée', '## Fiche du cours vidéo

Durée : 1h30 (90 minutes). Sujet : Politiques économiques et macroéconomie ouverte avancée — trilemme de Mundell, politique budgétaire en union monétaire, soutenabilité de la dette.
Objectifs : comprendre le trilemme de Mundell et son application à une union monétaire à change fixe, analyser le rôle renforcé de la politique budgétaire, calculer et interpréter la variation du ratio dette/PIB.
Matériel : tableau ou diaporama, calculatrice.
Prérequis : modèle IS-LM en économie fermée (Licence).

## Déroulé minuté

## 00:00 – 05:00 · Accueil et plan de la séance

Bonjour et bienvenue dans ce troisième cours vidéo de votre Master 1 en Économie. Nous allons aujourd''hui passer de l''économie fermée, étudiée en Licence avec le modèle IS-LM, à l''économie ouverte, où le compte extérieur — exportations, importations, taux de change, mobilité des capitaux — joue un rôle central. Nous verrons le trilemme de Mundell, son application à une union monétaire comme l''UEMOA, le rôle renforcé de la politique budgétaire quand la politique monétaire est commune, et enfin la question cruciale de la soutenabilité de la dette publique, avec des calculs que nous vérifierons ensemble.

## 05:00 – 20:00 · Le trilemme de Mundell

Le résultat central de cette séance est ce qu''on appelle le trilemme, ou triangle des incompatibilités de Mundell. Il énonce qu''un pays ne peut pas avoir simultanément trois choses : un taux de change fixe, une parfaite mobilité des capitaux, et une politique monétaire nationale pleinement autonome. Il doit nécessairement renoncer à l''un des trois sommets de ce triangle.

Réfléchissons ensemble à pourquoi. Si un pays fixe son taux de change et autorise les capitaux à circuler librement, alors son taux d''intérêt domestique est contraint de s''aligner sur le taux d''intérêt international, sous peine de provoquer des flux de capitaux massifs qui déstabiliseraient la parité fixe. Si les investisseurs anticipent un taux d''intérêt plus élevé chez lui, les capitaux afflueraient et menaceraient la parité à la hausse ; si le taux est plus bas, les capitaux fuiraient et menaceraient la parité à la baisse. La banque centrale perd donc la liberté de fixer son taux d''intérêt en fonction des seuls besoins de l''économie nationale.

Appliquons ce trilemme à l''UEMOA, en restant en termes généraux, sans invoquer de taux ou de texte précis non vérifié. Les pays membres de l''UEMOA partagent une monnaie commune avec une parité fixe historique à l''euro, et une relative ouverture aux mouvements de capitaux régionaux et internationaux. La conséquence directe du trilemme est que chaque État membre renonce à une politique monétaire nationale autonome : les décisions de taux d''intérêt et de masse monétaire sont prises au niveau de la banque centrale commune pour l''ensemble de la zone, pas au niveau de chaque État. C''est le prix à payer pour la stabilité du taux de change que procure l''union monétaire — un choix institutionnel avec des avantages, comme la crédibilité anti-inflationniste, et des coûts, comme la perte d''un instrument d''ajustement national face à un choc spécifique.

## 20:00 – 35:00 · Politique budgétaire renforcée en change fixe

Puisque la politique monétaire n''est plus un levier national disponible, que reste-t-il à un État membre d''une union monétaire pour agir sur son activité économique en cas de choc ? La réponse : la politique budgétaire, c''est-à-dire les dépenses publiques et la fiscalité, devient l''instrument principal de stabilisation nationale.

Il y a une subtilité théorique importante à connaître : en change fixe, une relance budgétaire a, en théorie, un effet multiplicateur plus important que dans un cadre de change flexible. Pourquoi ? Parce qu''en change flexible, une relance budgétaire tend à faire monter les taux d''intérêt domestiques, ce qui attire des capitaux étrangers et fait apprécier la monnaie nationale, ce qui pénalise à son tour les exportations et vient partiellement compenser, ou « absorber », l''effet expansionniste initial de la relance. En change fixe, ce mécanisme de compensation automatique disparaît, puisqu''il n''y a pas de monnaie nationale distincte qui s''apprécie ou se déprécie librement : l''effet multiplicateur de la politique budgétaire est donc potentiellement plus fort.

Cette dépendance renforcée à la politique budgétaire explique pourquoi la discipline budgétaire est un sujet particulièrement sensible dans une union monétaire : un déficit mal maîtrisé dans un État membre peut peser sur la perception de solidité financière de l''ensemble de la zone monétaire partagée, même si, en principe, chaque État conserve la responsabilité individuelle de ses propres finances publiques. C''est un sujet de gouvernance économique régionale central dans l''actualité de l''UEMOA.

## 35:00 – 50:00 · La soutenabilité de la dette publique : la méthode

Un concept central de cette séance : la dette publique est dite soutenable si l''État peut, dans la durée, honorer ses engagements sans ajustement brutal — défaut de paiement, restructuration forcée, ou inflation non maîtrisée pour éroder la dette réelle. Une approche simplifiée, à utiliser avec prudence car la réalité comporte davantage de nuances, consiste à comparer le taux de croissance économique, noté g, et le taux d''intérêt réel moyen de la dette, noté r.

Voici la règle simplifiée que je veux que vous reteniez : si g est supérieur à r, et que le solde primaire — c''est-à-dire les recettes moins les dépenses hors charge d''intérêt — n''est pas trop négatif, le ratio dette sur PIB tend à se stabiliser ou à diminuer dans le temps. En revanche, si r est durablement supérieur à g, le ratio dette sur PIB tend à augmenter mécaniquement, même sans nouveau déficit primaire, par un effet qu''on appelle « boule de neige » : la charge d''intérêt croît alors plus vite que la capacité de l''économie à la rembourser.

La formule simplifiée que nous utiliserons est : variation du ratio dette sur PIB est environ égale à, r moins g, multiplié par le ratio dette sur PIB de départ, moins le solde primaire en pourcentage du PIB.

## 50:00 – 55:00 · Pause et quiz interactif

Avant de passer au calcul guidé, un quiz de cinq minutes. Première question : si g est supérieur à r, le ratio dette sur PIB tend-il à augmenter ou à diminuer, toutes choses égales par ailleurs ? Deuxième question : qu''est-ce que le solde primaire, précisément ? Troisième question : pourquoi dit-on que l''effet boule de neige est « mécanique » ?

Correction : premièrement, si g est supérieur à r, le terme (r moins g) est négatif, donc le ratio dette sur PIB tend à diminuer, toutes choses égales par ailleurs sur le solde primaire. Deuxièmement, le solde primaire est la différence entre les recettes publiques et les dépenses publiques hors charge d''intérêt de la dette — il exclut donc le service de la dette elle-même. Troisièmement, l''effet est dit mécanique parce qu''il se produit même sans nouveau déficit primaire : la seule accumulation des intérêts sur une dette dont le coût réel dépasse la croissance de l''économie suffit à faire grossir le ratio.

## 55:00 – 1:25:00 · Calcul guidé complet et discussion

Reprenons notre exemple numérique fictif, dont les calculs ont été vérifiés. Un pays fictif a un ratio dette sur PIB de 60 % en début de période, une croissance réelle de 5 % par an, un taux d''intérêt réel moyen de 3 % par an, et un solde primaire nul.

Calculons ensemble, étape par étape. D''abord, r moins g : 0,03 moins 0,05, égal moins 0,02. Ensuite, multiplions par le ratio dette sur PIB de départ : moins 0,02 multiplié par 0,60, égal moins 0,012. Enfin, soustrayons le solde primaire, qui est nul ici : moins 0,012 moins 0, égal moins 0,012. Résultat : une baisse d''environ 1,2 point de pourcentage du ratio dette sur PIB sur l''année, uniquement grâce à une croissance supérieure au taux d''intérêt réel, même sans excédent budgétaire primaire.

Maintenant, un contre-exemple pour bien ancrer la logique. Supposons que ce même pays subisse un choc externe et voie sa croissance réelle tomber à 1 % par an, le taux d''intérêt réel restant inchangé à 3 %. Recalculons : r moins g égale 0,03 moins 0,01, égal 0,02. Multiplié par 0,60, égal 0,012. Moins le solde primaire nul : 0,012. Résultat : une hausse d''environ 1,2 point de pourcentage du ratio dette sur PIB — l''exact opposé du cas précédent, uniquement parce que la croissance a chuté.

Cet exemple illustre un point fondamental pour votre compréhension des politiques économiques : la croissance économique est une variable aussi déterminante que le niveau du déficit pour la soutenabilité de la dette publique. Un gouvernement qui néglige les politiques favorisant la croissance de long terme, même en maintenant une discipline budgétaire apparente, peut voir sa trajectoire de dette se détériorer simplement parce que la croissance ralentit.

Un point de méthode essentiel pour vos examens et votre mémoire : cette formule est une approximation pédagogique simplifiée. Les niveaux de taux d''intérêt, de croissance, et les seuils d''alerte réellement utilisés par les institutions, notamment les critères de convergence de l''UEMOA, sont des valeurs officielles précises qui évoluent dans le temps et doivent être vérifiées auprès des textes et publications officiels en vigueur. N''affirmez jamais un seuil officiel précis sans l''avoir vérifié récemment.

## 1:25:00 – 1:30:00 · Évaluation finale

Cinq questions pour conclure.

Question 1 : Énoncez le trilemme de Mundell.
Réponse : un pays ne peut pas avoir simultanément un taux de change fixe, une parfaite mobilité des capitaux, et une politique monétaire nationale pleinement autonome.

Question 2 : Pourquoi la politique budgétaire a-t-elle un rôle renforcé dans une union monétaire à change fixe ?
Réponse : parce que la politique monétaire nationale n''est plus disponible, la politique budgétaire devient le principal instrument national de stabilisation de l''activité économique.

Question 3 : Donnez la formule simplifiée de la variation du ratio dette sur PIB.
Réponse : variation ≈ (r - g) × (dette/PIB) - solde primaire/PIB.

Question 4 : Qu''est-ce que l''effet boule de neige de la dette ?
Réponse : lorsque le taux d''intérêt réel dépasse durablement la croissance, la charge d''intérêt croît plus vite que la capacité de l''économie à la rembourser, augmentant mécaniquement le ratio dette sur PIB.

Question 5 : Pourquoi faut-il être prudent avant d''affirmer un seuil officiel précis de dette ou de déficit ?
Réponse : parce que ces seuils sont fixés par des textes officiels précis, révisables dans le temps ; il faut toujours vérifier le texte en vigueur plutôt que de se fier à une valeur non vérifiée récemment.

Merci pour votre attention. Notre quatrième et dernière vidéo de ce semestre sera un atelier transversal combinant les trois matières sur un cas d''entreprise complet.', 'video', 90, false, 80
from public.courses c where c.slug = 'mas-eco-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Politiques économiques et macroéconomie ouverte avancée');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Atelier transversal — cas pratique filé', '## Fiche du cours vidéo

Durée : 1h30 (90 minutes). Sujet : Atelier transversal — cas pratique filé combinant économétrie appliquée, économie industrielle et politiques économiques.
Objectifs : mobiliser conjointement les trois matières du semestre sur un cas d''entreprise et de politique économique complet, comme à l''examen.
Matériel : tableau ou diaporama, calculatrice, vos notes des trois précédentes vidéos.
Prérequis : les trois cours vidéo précédents de ce semestre.

## Déroulé minuté

## 00:00 – 05:00 · Présentation du cas filé

Bonjour et bienvenue dans cette quatrième et dernière vidéo de votre semestre de Master 1 en Économie. Contrairement aux trois précédentes, cette séance ne porte pas sur une matière unique : nous allons suivre un cas d''entreprise fictif complet, du début à la fin, et mobiliser successivement l''économétrie appliquée, l''économie industrielle, puis les politiques économiques, exactement comme un sujet d''examen transversal pourrait vous le demander.

Notre cas fictif : une entreprise de transformation agroalimentaire, que nous appellerons « Groupe Fictif Sahel », opère dans un pays membre fictif d''une union monétaire régionale, en situation de duopole avec un concurrent direct sur son marché domestique, et exporte une partie de sa production vers les pays voisins de la zone.

## 05:00 – 25:00 · Partie économétrie : estimer la demande

Première étape : le service d''études du Groupe Fictif Sahel veut comprendre ce qui détermine ses ventes mensuelles dans ses dix zones de distribution. Nous reprenons exactement le jeu de données déjà vu dans notre première vidéo : investissement productif cumulé par zone (X1, de 5 à 14 milliards FCFA), taux d''ouverture commerciale de la zone (X2, de 2 à 6 %), et exportations ou ventes (Y, de 20 à 53 milliards FCFA).

Rappel du modèle estimé, vérifié par le calcul : Y égale 2,00, plus 3,60 fois X1, plus 0,05 fois X2. Le test de Student donne t1 environ égal à 17,39 pour l''investissement, largement significatif, et t2 environ égal à 0,12 pour le taux d''ouverture, non significatif sur cet échantillon. Le R² est d''environ 0,999.

Question d''examen typique : la direction de l''entreprise doit-elle, sur la base de ce modèle, continuer à investir dans l''ouverture commerciale de ses zones de distribution ? Discutons-en. La réponse économétrique rigoureuse est la suivante : le modèle, sur cet échantillon précis, ne montre pas d''effet statistiquement significatif du taux d''ouverture sur les ventes, une fois l''investissement pris en compte. Cela ne signifie pas que l''ouverture commerciale n''a aucun intérêt stratégique — elle peut avoir des effets à plus long terme, non captés par ce modèle statique et cet échantillon réduit — mais la direction ne peut pas s''appuyer sur ce modèle précis pour justifier un investissement massif dans l''ouverture commerciale au nom d''un effet statistique démontré, puisque cet effet n''est pas significatif ici. C''est exactement le type de nuance qu''un correcteur attend dans une copie de Master.

## 25:00 – 50:00 · Partie économie industrielle : la stratégie face au concurrent

Deuxième étape : le Groupe Fictif Sahel fait face à un concurrent direct, « Rival Fictif Teranga », sur son marché domestique. Les deux entreprises sont en situation d''oligopole. Reprenons les paramètres déjà étudiés : demande inverse P égale 100 moins Q, coût marginal commun c égal 10.

À l''équilibre de Cournot : chaque firme produit 30 unités, le prix est de 40, et chaque firme réalise un profit de 900. Supposons maintenant que le Groupe Fictif Sahel envisage une stratégie de différenciation : en investissant dans une marque perçue comme plus qualitative, il pourrait réduire la sensibilité de ses clients au prix de son concurrent.

Discutons des implications stratégiques. Si le Groupe Fictif Sahel parvient à différencier suffisamment son offre, il échappe partiellement à la pression concurrentielle qui se rapprocherait du paradoxe de Bertrand si les deux entreprises vendaient un produit strictement identique et se livraient à une concurrence frontale par les prix — rappelez-vous, dans ce cas, le prix tendrait vers le coût marginal, soit 10, bien inférieur au prix de Cournot de 40. La différenciation permet donc, en théorie, de préserver des marges plus proches, voire supérieures, à celles de l''équilibre de Cournot.

Mais il existe une autre option stratégique, risquée : la collusion tacite avec « Rival Fictif Teranga ». Rappelons le calcul : en monopole conjoint, les deux entreprises produiraient 45 unités au prix de 55, pour un profit joint de 2025, contre 1800 en situation de Cournot non coopérative. La tentation de collusion est donc réelle sur le plan du profit. Mais attention, et c''est une question d''examen classique : quels sont les risques d''une telle stratégie pour le Groupe Fictif Sahel ? Premièrement, un risque juridique et réputationnel, puisque la collusion est en principe sanctionnée par les autorités de la concurrence. Deuxièmement, un risque économique intrinsèque : l''accord reste instable, car chaque firme a individuellement intérêt à tricher en produisant davantage, ce qui peut faire s''effondrer l''accord et déclencher une guerre des prix dommageable pour les deux parties.

## 50:00 – 55:00 · Pause et quiz interactif

Pause de cinq minutes avec un quiz transversal. Première question : pourquoi la différenciation de produit est-elle une stratégie généralement plus robuste juridiquement que la collusion, même si les deux visent à préserver des marges ? Deuxième question : dans notre modèle économétrique, pourquoi ne peut-on pas conclure que « l''ouverture commerciale n''a jamais d''effet sur les ventes » ? Troisième question : à l''équilibre de Cournot calculé, quel est le profit total du secteur (les deux firmes réunies) ?

Correction : premièrement, la différenciation de produit est une stratégie légale et même souhaitable du point de vue de l''innovation et de la qualité, alors que la collusion est une pratique anticoncurrentielle sanctionnable, bien que les deux puissent chercher à limiter la pression sur les prix. Deuxièmement, parce qu''une non-significativité statistique sur un échantillon précis et réduit ne prouve pas une absence d''effet économique réel, elle montre seulement que cet effet n''est pas mesurable avec confiance sur ces données précises. Troisièmement, le profit total du secteur à l''équilibre de Cournot est 900 plus 900, soit 1800.

## 55:00 – 1:25:00 · Partie politiques économiques : le contexte macroéconomique

Troisième étape, celle des politiques économiques : le Groupe Fictif Sahel exporte une partie de sa production vers les pays voisins de son union monétaire régionale. Le gouvernement de son pays d''origine envisage une politique de soutien au secteur agro-industriel, dans un contexte où le pays, membre d''une union monétaire à change fixe, a un ratio dette sur PIB de 55 % en début d''année, une croissance réelle anticipée de 4 %, un taux d''intérêt réel moyen de 2 %, et un solde primaire de plus 0,5 % du PIB.

Rappelons d''abord le trilemme de Mundell : ce pays, en adhérant à une union monétaire à change fixe avec une certaine ouverture financière, a renoncé à une politique monétaire nationale autonome. S''il veut soutenir le secteur agro-industriel, il ne peut pas le faire par une baisse de son taux d''intérêt national ou une dévaluation ciblée : il doit utiliser la politique budgétaire, par exemple des subventions, des investissements publics dans les infrastructures de transport reliant les zones de production aux ports d''exportation, ou des incitations fiscales.

Calculons la trajectoire de la dette avant toute nouvelle dépense : variation du ratio dette sur PIB est environ égale à, r moins g, multiplié par le ratio de départ, moins le solde primaire. Soit : 0,02 moins 0,04, multiplié par 0,55, moins 0,005, égal moins 0,02 multiplié par 0,55, moins 0,005, égal moins 0,011 moins 0,005, égal moins 0,016. Le ratio dette sur PIB baisse donc d''environ 1,6 point sur l''année, avant toute nouvelle politique de soutien.

Question d''examen : si le gouvernement finance un programme de soutien au secteur agro-industriel en augmentant ses dépenses publiques, par exemple en réduisant son solde primaire de 0,5 % à 0 % du PIB, quel est l''impact sur la trajectoire de la dette, toutes choses égales par ailleurs sur r et g ? Recalculons : moins 0,011, moins 0 (le nouveau solde primaire), égal moins 0,011. Le ratio dette sur PIB continuerait de baisser, mais plus modestement qu''avant, d''environ 1,1 point au lieu de 1,6 point. La politique de soutien reste donc compatible avec une trajectoire de dette toujours orientée à la baisse dans ce scénario précis, tant que la croissance reste nettement supérieure au taux d''intérêt réel.

Cette conclusion illustre bien l''intérêt de l''approche transversale : une décision de politique industrielle ou sectorielle (soutenir un secteur) doit toujours être évaluée en tenant compte de ses implications macroéconomiques et budgétaires, dans le cadre institutionnel spécifique de l''union monétaire à laquelle le pays appartient.

## 1:25:00 – 1:30:00 · Synthèse finale et évaluation

Pour conclure ce semestre, retenez la démarche méthodologique que nous venons d''appliquer : face à un cas d''entreprise ou de politique économique complexe, identifiez d''abord les données et la question économétrique sous-jacente, puis analysez la structure de marché et les choix stratégiques des acteurs, enfin replacez l''ensemble dans le cadre macroéconomique et institutionnel pertinent. C''est cette capacité à combiner les trois niveaux d''analyse qui sera évaluée dans vos examens de fin de semestre.

Question 1 : Dans notre cas filé, pourquoi la non-significativité du coefficient du taux d''ouverture ne doit-elle pas être utilisée seule pour décider d''arrêter tout investissement dans l''ouverture commerciale ?
Réponse : parce qu''elle reflète seulement l''absence d''effet statistiquement démontré sur cet échantillon précis, pas une preuve d''absence d''effet économique réel à plus long terme.

Question 2 : Pourquoi la différenciation de produit est-elle juridiquement préférable à la collusion pour préserver des marges ?
Réponse : parce que la différenciation est une stratégie légale fondée sur l''innovation et la qualité, alors que la collusion est anticoncurrentielle et sanctionnable.

Question 3 : Pourquoi ce pays fictif ne peut-il pas utiliser une baisse de son taux d''intérêt national pour soutenir son secteur agro-industriel ?
Réponse : parce qu''il a renoncé à une politique monétaire nationale autonome en adhérant à une union monétaire à change fixe, conformément au trilemme de Mundell.

Question 4 : Quel est l''effet d''une réduction du solde primaire sur la trajectoire de la dette, toutes choses égales par ailleurs sur r et g ?
Réponse : elle détériore (rend moins favorable) la trajectoire du ratio dette sur PIB, même si celui-ci peut rester orienté à la baisse si la croissance reste nettement supérieure au taux d''intérêt réel.

Question 5 : Quelle est la démarche méthodologique transversale à retenir pour un sujet d''examen combinant plusieurs matières de Master ?
Réponse : identifier d''abord la question économétrique et les données, analyser ensuite la structure de marché et les choix stratégiques, puis replacer l''ensemble dans le cadre macroéconomique et institutionnel pertinent, en reliant toujours les trois niveaux d''analyse entre eux.

Bon courage à toutes et à tous pour la suite de votre préparation et vos examens de Master 1.', 'video', 90, false, 90
from public.courses c where c.slug = 'mas-eco-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Atelier transversal — cas pratique filé');

-- Cours : Économie Master 2 : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'mas-eco-m2', (select id from public.levels where name = 'Master 2'), null, 'Économie', 'Économie Master 2 : réussir ses examens', 'Préparation aux examens de Master 2 en Économie : économie internationale et intégration régionale africaine (UEMOA/CEDEAO), finance du développement et politiques publiques (évaluation d''impact), méthodologie du mémoire de recherche et soutenance. Pour étudiants ayant validé le Master 1 en Économie. Fiches avancées, cas fictifs sénégalais/africains, exercices corrigés, sujet type d''examen et quatre cours vidéo de 1h30 dont un atelier méthodologie.', true, 762
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Master 2 en Économie', 'Objectifs de la leçon

Cette leçon ouvre votre année de Master 2 en Économie, la dernière année de votre cursus avant l''entrée dans la vie professionnelle ou la poursuite en doctorat. Elle présente les spécificités de cette année : la préparation du mémoire de recherche ou professionnel, les trois matières avancées du semestre, et un plan de révision sur six semaines. Elle ne répète aucune matière déjà vue en Licence ni en Master 1.

Ce qui change en Master 2

Le Master 2 est l''année de la spécialisation et de la production personnelle. Contrairement au Master 1, où vous consolidiez encore des méthodes, le Master 2 vous demande de produire un travail original : un mémoire de recherche ou un mémoire professionnel, souvent adossé à un stage, qui mobilise l''ensemble de vos acquis pour traiter une question économique précise. L''évaluation finale combine généralement des examens de connaissances sur les matières avancées et une soutenance orale de votre mémoire devant un jury.

Les trois matières de ce semestre

1. Économie internationale et intégration régionale africaine. Cette matière approfondit les théories du commerce international (avantage comparatif, théories plus modernes du commerce) et les mécanismes concrets de l''intégration régionale ouest-africaine : l''union douanière de l''UEMOA, les enjeux de la zone de libre-échange continentale africaine et de la convergence avec la CEDEAO, les effets de création et de détournement de commerce.

2. Finance du développement et politiques publiques. Cette matière porte sur les instruments de financement du développement (financement public, aide au développement, financement privé et partenariats), et sur les principes méthodologiques de l''évaluation d''impact des politiques publiques et des projets de développement, utilisés pour juger si un programme atteint réellement ses objectifs.

3. Méthodologie du mémoire de recherche et soutenance. Cette matière, transversale, vous accompagne dans la construction méthodologique de votre mémoire : formulation d''une question de recherche, revue de littérature rigoureuse, choix et justification d''une méthode, présentation honnête des résultats, et préparation de la soutenance orale devant un jury.

Le mémoire de fin de Master

Que votre mémoire soit à dominante recherche ou à dominante professionnelle, la logique est la même : vous devez répondre à une question précise et utile, en mobilisant une méthode adaptée aux données ou au terrain dont vous disposez, et en argumentant honnêtement, y compris sur les limites de votre travail. Un bon mémoire de Master 2 ne prétend jamais résoudre un problème économique majeur à lui seul ; il apporte une contribution modeste mais rigoureuse, clairement délimitée.

Règle d''or sur les sources : ne citez jamais un auteur, une institution, un chiffre officiel ou une étude empirique que vous n''avez pas vérifiés vous-même dans une source fiable. En cas de doute sur un chiffre précis (taux de croissance d''un pays, montant d''un programme, date d''un accord régional), formulez le constat en termes généraux plutôt que d''inventer une précision que vous ne maîtrisez pas. Un correcteur ou un jury détecte très vite une référence fabriquée, et cela discrédite immédiatement l''ensemble du travail.

Méthode de travail en Master 2

- Construisez un calendrier de mémoire dès le début du semestre : question de recherche d''ici deux semaines, revue de littérature d''ici un mois, collecte ou analyse des données ensuite, rédaction continue plutôt que tout en fin de parcours.
- Pour les matières d''examen, privilégiez les cas transversaux : un sujet de Master 2 combine souvent intégration régionale, financement du développement et parfois une dimension méthodologique.
- Préparez votre soutenance comme un exercice de communication professionnelle : dix minutes pour présenter l''essentiel de votre travail à un public qui ne l''a pas lu en détail, puis des réponses construites aux questions du jury.

Plan de révision sur six semaines

Semaine 1 : consolidation des prérequis de Licence et Master 1 utiles (avantage comparatif, politiques économiques en économie ouverte, trilemme de Mundell) et cadrage de votre sujet de mémoire.

Semaine 2 : économie internationale et intégration régionale, partie théorique (avantage comparatif ricardien, théories modernes du commerce).

Semaine 3 : économie internationale et intégration régionale, partie appliquée (union douanière, création et détournement de commerce, CEDEAO/UEMOA en termes généraux).

Semaine 4 : finance du développement et politiques publiques, partie instruments de financement, puis partie évaluation d''impact (principes, méthode de la différence de différences en exemple simple).

Semaine 5 : méthodologie du mémoire, revue de littérature de votre propre sujet, préparation d''un plan détaillé.

Semaine 6 : révision croisée, sujets types, et répétition orale de votre présentation de soutenance devant un camarade ou un miroir, chronométrée à dix minutes.

Points clés à retenir
- Le Master 2 est l''année de la production personnelle : le mémoire mobilise l''ensemble de vos acquis.
- L''économie internationale avancée porte sur les théories du commerce et l''intégration régionale ouest-africaine concrète.
- La finance du développement combine instruments de financement et méthodes d''évaluation d''impact des politiques publiques.
- La méthodologie du mémoire et la préparation à la soutenance sont une matière à part entière, à ne pas négliger.
- Aucune référence, chiffre ou étude ne doit être inventé dans un mémoire ; en cas de doute, restez en termes généraux.

## Exercices pratiques

1. Citez les trois matières avancées de ce semestre de Master 2 et expliquez en une phrase ce que chacune apporte par rapport au Master 1.
2. Pourquoi un mémoire de Master 2 doit-il se limiter à une contribution modeste et clairement délimitée plutôt que viser à résoudre un problème économique majeur ?
3. Que risque un étudiant qui cite, dans son mémoire, un chiffre officiel qu''il n''a pas vérifié et qui se révèle faux ?
4. Construisez un calendrier personnel de rédaction de mémoire sur les six semaines de cette séquence, en l''adaptant à votre propre sujet.
5. Pourquoi la préparation de la soutenance orale est-elle considérée comme une compétence professionnelle à part entière, au-delà du contenu du mémoire lui-même ?

## Corrigé

1. Économie internationale et intégration régionale africaine : approfondit les théories du commerce et les mécanismes concrets de l''intégration régionale ouest-africaine. Finance du développement et politiques publiques : instruments de financement du développement et méthodes d''évaluation d''impact. Méthodologie du mémoire et soutenance : accompagne la construction méthodologique et la communication orale du travail de fin d''études.
2. Parce qu''un sujet de mémoire trop large ou trop ambitieux dépasse généralement les moyens méthodologiques et le temps disponibles d''un étudiant de Master, ce qui conduit à un travail superficiel sur tous les points plutôt qu''à une contribution rigoureuse sur un point précis ; les jurys valorisent davantage la rigueur sur un périmètre restreint que l''ambition mal maîtrisée.
3. Il risque de voir la crédibilité de l''ensemble de son travail remise en cause par le jury, au-delà du seul chiffre erroné : une erreur factuelle vérifiable fait douter de la rigueur générale du mémoire et peut affecter sérieusement la note, en plus de poser un problème d''intégrité académique si l''erreur relève d''une invention plutôt que d''une simple imprécision involontaire.
4. Réponse libre : l''essentiel est d''inclure un cadrage du sujet en semaine 1, une revue de littérature en semaines 2 à 3, puis une phase d''analyse et de rédaction continue, avec un temps dédié à la répétition de la soutenance en fin de parcours.
5. Parce que, dans la vie professionnelle, savoir présenter clairement et convaincre un public qui n''a pas le temps de lire un document complet est une compétence aussi précieuse que la capacité à produire une analyse rigoureuse ; la soutenance est souvent la première occasion pour un étudiant de s''exercer formellement à cet exercice devant un jury exigeant.', 'texte', 45, true, 10
from public.courses c where c.slug = 'mas-eco-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Master 2 en Économie');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Économie internationale et intégration régionale africaine : l''essentiel pour l''examen', 'Objectifs de la leçon

Cette leçon approfondit l''économie internationale et l''intégration régionale africaine : les théories du commerce international au-delà de l''avantage comparatif simple, et les mécanismes concrets d''une union douanière comme l''UEMOA, avec les notions de création et de détournement de commerce. Tous les calculs numériques ont été vérifiés.

Rappel et approfondissement : l''avantage comparatif ricardien

En Licence, vous avez vu que chaque pays a intérêt à se spécialiser dans la production où son coût d''opportunité est le plus faible. Reprenons un exemple fictif vérifié : au Sénégal fictif, produire une unité de tissu nécessite 4 heures de travail, et une unité de riz 8 heures. En Côte d''Ivoire fictive, tissu et riz nécessitent chacun 6 heures. Le coût d''opportunité du tissu, exprimé en riz sacrifié, est de 4/8 = 0,5 au Sénégal fictif, contre 6/6 = 1,0 en Côte d''Ivoire fictive. Le Sénégal fictif a donc un avantage comparatif dans le tissu (coût d''opportunité plus faible), et la Côte d''Ivoire fictive dans le riz (coût d''opportunité du riz, en tissu, de 1,0 contre 2,0 au Sénégal fictif). Chaque pays gagne à se spécialiser et à échanger, même si l''un des deux pays (ici la Côte d''Ivoire fictive) n''a d''avantage absolu dans aucun des deux biens dans cet exemple particulier.

Au-delà de Ricardo : les théories modernes du commerce

Le modèle ricardien explique la spécialisation par les différences de productivité du travail entre pays. Les théories plus modernes enrichissent ce cadre : le modèle de Heckscher-Ohlin explique la spécialisation par les différences de dotations en facteurs de production (travail, capital, terre) entre pays ; les théories de la concurrence imparfaite et des économies d''échelle expliquent pourquoi des pays aux structures économiques proches échangent quand même beaucoup entre eux (commerce intra-branche, différenciation de produit) ; enfin, les théories plus récentes insistent sur l''hétérogénéité des entreprises au sein d''un même secteur, où seules les entreprises les plus productives parviennent à exporter, ce qui explique pourquoi l''ouverture commerciale peut accroître la productivité moyenne d''un secteur sans que chaque entreprise individuelle change de technologie.

L''intégration régionale ouest-africaine : mécanismes

L''UEMOA constitue une union douanière : les pays membres appliquent un tarif extérieur commun face aux pays tiers, et suppriment les droits de douane entre eux (tarif nul pour le commerce intra-régional). C''est une étape plus poussée qu''une simple zone de libre-échange, où chaque pays garde son propre tarif extérieur. La Communauté économique des États de l''Afrique de l''Ouest (CEDEAO), plus large géographiquement, poursuit également des objectifs d''intégration économique régionale, avec des enjeux de convergence entre les différents cadres institutionnels de la région. La zone de libre-échange continentale africaine (ZLECAf) vise, à une échelle encore plus large, à réduire les barrières commerciales entre pays africains. Ces architectures se complètent et se chevauchent partiellement, ce qui pose des défis pratiques de cohérence des règles commerciales.

Création et détournement de commerce : un exemple numérique vérifié

Une union douanière peut avoir deux effets opposés sur le bien-être économique, qu''il faut savoir distinguer avec un exemple chiffré.

Avant l''union, un pays fictif importe un bien du reste du monde au prix mondial de 100 FCFA (en unité fictive), avec un tarif national de 30 %, soit un prix domestique payé par le consommateur de 100 × 1,30 = 130 FCFA.

Après l''union douanière, ce pays importe désormais sans tarif (tarif nul intra-régional) auprès d''un partenaire régional dont le coût de production est de 105 FCFA — un partenaire moins efficace que le reste du monde (dont le prix restait à 100 FCFA), mais dont l''accès est désormais exonéré de tarif.

Le consommateur paie maintenant 105 FCFA au lieu de 130 FCFA : c''est un gain de pouvoir d''achat de 25 FCFA par unité, lié à la suppression du tarif. Mais comparé au prix mondial hors tarif de référence, 100 FCFA, le partenaire régional reste 5 FCFA plus cher : c''est un coût de détournement de commerce, car les échanges se sont réorientés vers un fournisseur moins efficace (le partenaire régional) au détriment du fournisseur le plus efficace au niveau mondial, uniquement en raison de la structure tarifaire de l''union.

Ce cas illustre le détournement de commerce : les échanges se détournent d''un fournisseur mondial plus efficace vers un partenaire régional moins efficace, simplement parce que ce dernier bénéficie d''une exonération tarifaire. À l''inverse, on parle de création de commerce lorsque l''union douanière permet des échanges nouveaux, bénéfiques, qui n''existaient pas auparavant, par exemple si le partenaire régional avait été plus efficace que le reste du monde (un coût de production inférieur à 100 FCFA dans notre exemple) : dans ce cas, l''union n''aurait fait que révéler et exploiter un avantage comparatif réel, sans coût de détournement.

L''enjeu pour les décideurs de politique commerciale régionale est donc de concevoir des règles d''origine et des tarifs extérieurs communs qui maximisent la création de commerce (échanges avec les partenaires les plus efficaces) et limitent le détournement de commerce (échanges biaisés vers des partenaires moins efficaces mais favorisés tarifairement).

Points clés à retenir
- L''avantage comparatif ricardien reste la base, mais les théories modernes (Heckscher-Ohlin, concurrence imparfaite, hétérogénéité des entreprises) enrichissent l''analyse du commerce international.
- L''UEMOA est une union douanière : tarif extérieur commun et suppression des tarifs intra-régionaux, une étape plus intégrée qu''une simple zone de libre-échange.
- La création de commerce est un gain net lorsque l''union révèle un avantage comparatif réel ; le détournement de commerce est une perte d''efficacité lorsque l''union réoriente les échanges vers un partenaire moins efficace que le reste du monde.
- Un exemple numérique simple permet de quantifier ces effets : comparer le prix domestique avant l''union, le prix du partenaire régional après l''union, et le prix mondial de référence.

## Exercices pratiques

1. Expliquez la différence entre une zone de libre-échange et une union douanière.
2. Si le coût du partenaire régional était de 98 FCFA (prix mondial 100 FCFA), s''agirait-il de création ou de détournement de commerce ? Justifiez.
3. Pourquoi les théories modernes du commerce expliquent-elles mieux que le modèle ricardien le fait que deux pays proches commercent beaucoup entre eux ?
4. Cas pratique : un pays fictif a un tarif national de 40 % sur un bien au prix mondial de 200 FCFA. Son partenaire régional le produit à 230 FCFA. Calculez le prix avant/après union, et qualifiez l''effet.
5. Pourquoi la coexistence de plusieurs cadres d''intégration (UEMOA, CEDEAO, ZLECAf) pose-t-elle des défis de cohérence ?
6. Si le coût du travail pour le riz passait à 10 heures en Côte d''Ivoire fictive (au lieu de 6), les avantages comparatifs changeraient-ils ? Recalculez.
7. Pourquoi un décideur doit-il se préoccuper à la fois de création et de détournement de commerce lors de la conception d''un tarif extérieur commun ?

## Corrigé

1. Zone de libre-échange : suppression des tarifs entre membres, chacun garde son tarif extérieur propre. Union douanière : suppression des tarifs entre membres ET tarif extérieur commun face aux tiers — une intégration plus poussée.
2. Création de commerce : à 98 FCFA, le partenaire régional est moins cher que le prix mondial (100 FCFA). L''union révèle alors un avantage comparatif réel, sans réorienter les échanges vers un fournisseur moins efficace.
3. Le modèle ricardien explique le commerce par des différences de productivité ; or une grande partie du commerce mondial se fait entre pays aux structures proches, mieux expliquée par la concurrence imparfaite et la différenciation de produit (diversité des préférences, économies d''échelle).
4. Avant : 200×1,40 = 280 FCFA. Après : 230 FCFA. Gain consommateur : 50 FCFA, mais le partenaire (230) reste plus cher que le monde (200) : détournement de commerce, coût d''inefficacité de 30 FCFA/unité.
5. Des règles d''origine, tarifs ou calendriers différents entre cadres créent des incohérences pour les entreprises exportant dans plusieurs cadres, complexifient les formalités, et ralentissent la convergence vers un marché régional unifié.
6. Oui, partiellement. Coût d''opportunité du tissu en Côte d''Ivoire fictive : 6/10 = 0,6 (contre 0,5 au Sénégal, inchangé) : le Sénégal garde l''avantage. Coût d''opportunité du riz : 10/6 ≈ 1,67 (contre 2,0 au Sénégal) : la Côte d''Ivoire garde aussi son avantage, mais l''écart se resserre.
7. Un tarif mal calibré peut maximiser le détournement (partenaires moins efficaces favorisés) plutôt que la création (échanges avec les partenaires réellement les plus efficaces) ; l''objectif est de maximiser les gains nets d''efficacité pour la zone, pas seulement de protéger les producteurs existants.', 'texte', 50, false, 20
from public.courses c where c.slug = 'mas-eco-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Économie internationale et intégration régionale africaine : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Finance du développement et politiques publiques : l''essentiel pour l''examen', 'Objectifs de la leçon

Cette leçon traite de la finance du développement et des politiques publiques : les principaux instruments de financement du développement, et les principes méthodologiques de l''évaluation d''impact, utilisés pour juger si un programme ou une politique publique atteint réellement ses objectifs. Les calculs numériques sont vérifiés et les données fictives.

Les instruments de financement du développement

Le financement du développement mobilise plusieurs grandes catégories de ressources, qu''il convient de connaître en termes généraux. Le financement public domestique provient des recettes fiscales et non fiscales de l''État, et de l''emprunt public (marchés financiers nationaux ou régionaux, institutions internationales). Le financement extérieur public comprend l''aide au développement (dons et prêts concessionnels d''institutions bilatérales ou multilatérales) et les prêts non concessionnels. Le financement privé comprend les investissements directs étrangers, les investissements de portefeuille, le crédit bancaire privé, et des montages plus récents comme les partenariats public-privé, qui associent financement et gestion privés à des infrastructures ou services d''intérêt public.

Chaque instrument a ses avantages et ses limites. L''aide au développement concessionnelle peut financer des investissements à fort impact social mais à faible rentabilité financière directe (santé, éducation de base), mais elle dépend de la volonté des bailleurs et peut être volatile. L''emprunt sur les marchés financiers offre davantage d''autonomie mais à un coût financier plus élevé et avec un risque de change si la dette est libellée en devise étrangère. Les partenariats public-privé peuvent mobiliser l''expertise et le capital privés pour des infrastructures, mais nécessitent des contrats complexes et un partage rigoureux des risques entre les parties, sous peine de coûts cachés pour les finances publiques à long terme.

L''évaluation d''impact : principes méthodologiques

Une politique publique ou un programme de développement (par exemple un programme de microcrédit, une subvention agricole, un programme de formation professionnelle) a-t-il réellement produit l''effet escompté ? Répondre correctement à cette question nécessite une méthode rigoureuse, car il ne suffit pas d''observer que la situation des bénéficiaires s''est améliorée après le programme : cette amélioration aurait pu se produire même sans le programme, pour d''autres raisons (tendance générale de l''économie, saison agricole favorable, etc.).

Le principe central de l''évaluation d''impact est la comparaison à un contrefactuel : que serait-il arrivé aux bénéficiaires SANS le programme ? Puisque l''on ne peut observer directement ce contrefactuel, les méthodes d''évaluation construisent une approximation crédible, le plus souvent à l''aide d''un groupe témoin (ou groupe de comparaison) qui n''a pas bénéficié du programme mais qui lui est similaire par ailleurs.

La méthode de la différence de différences (DID)

Une méthode simple et très utilisée consiste à comparer l''évolution dans le temps du groupe bénéficiaire (groupe « traité ») à celle d''un groupe témoin comparable, avant et après la mise en place du programme. L''idée : si les deux groupes auraient évolué de façon similaire sans le programme, alors tout écart d''évolution entre les deux groupes après le programme peut être attribué à l''effet du programme.

Exemple numérique fictif vérifié : un programme de microcrédit fictif est mis en place dans une région test. Le revenu mensuel moyen des ménages, en milliers de FCFA, est mesuré avant et après le programme, dans la région test (bénéficiaire) et dans une région témoin comparable (non bénéficiaire) :

Région test (traitée) : avant = 85, après = 112. Région témoin : avant = 83, après = 92.

Différence dans le groupe traité : 112 - 85 = 27 milliers de FCFA. Différence dans le groupe témoin : 92 - 83 = 9 milliers de FCFA. L''effet DID, c''est-à-dire l''impact net attribuable au programme, est la différence de ces deux différences : 27 - 9 = 18 milliers de FCFA par mois.

Interprétation : sans le programme, on aurait pu s''attendre à ce que le revenu de la région test augmente d''environ 9 milliers de FCFA, comme dans la région témoin (évolution de fond commune aux deux régions, due par exemple à la conjoncture économique générale). L''augmentation effective de 27 milliers de FCFA dans la région traitée dépasse donc cette évolution de fond de 18 milliers de FCFA, ce supplément étant attribué à l''effet net du programme de microcrédit.

Hypothèse clé et limites de la méthode

La différence de différences repose sur une hypothèse cruciale appelée « hypothèse des tendances parallèles » : en l''absence du programme, les deux groupes auraient évolué de façon similaire dans le temps. Cette hypothèse n''est jamais directement vérifiable après le fait, mais elle peut être rendue plus ou moins crédible en choisissant un groupe témoin réellement comparable (mêmes caractéristiques socio-économiques, même zone géographique, même exposition aux chocs économiques généraux), et en vérifiant si possible que les deux groupes évoluaient déjà de façon parallèle avant le programme.

Un décideur public ou un bailleur de fonds qui doit juger de l''efficacité d''un programme de développement doit toujours se poser trois questions : le groupe témoin est-il réellement comparable au groupe traité ? L''hypothèse des tendances parallèles est-elle plausible dans ce contexte ? L''effet mesuré est-il suffisamment important, au regard du coût du programme, pour justifier sa généralisation à plus grande échelle ?

Points clés à retenir
- Le financement du développement combine ressources publiques domestiques, financement extérieur (aide, emprunt), et financement privé (investissement direct, partenariats public-privé).
- L''évaluation d''impact répond à la question : que serait-il arrivé sans le programme ? en construisant un contrefactuel crédible, souvent via un groupe témoin.
- La méthode de la différence de différences compare l''évolution du groupe traité à celle du groupe témoin, avant et après le programme.
- L''hypothèse des tendances parallèles est la condition de validité centrale de cette méthode, à toujours discuter dans une analyse rigoureuse.
- Aucun chiffre officiel de financement ou de résultat d''évaluation réelle ne doit être inventé ; les exemples numériques de cette leçon sont fictifs et construits pour l''exercice.

## Exercices pratiques

1. Citez trois instruments de financement du développement et une limite de chacun.
2. Pourquoi ne suffit-il pas d''observer une amélioration après un programme pour conclure qu''il a été efficace ?
3. Si le revenu du groupe témoin était resté parfaitement stable (avant = après = 83), quel serait l''effet DID calculé ?
4. Qu''est-ce que l''hypothèse des tendances parallèles, et pourquoi est-elle difficile à vérifier directement ?
5. Cas pratique : un programme fictif de formation est évalué. Taux d''emploi des bénéficiaires avant = 40 %, après = 58 %. Groupe témoin avant = 42 %, après = 48 %. Calculez l''effet DID et interprétez.
6. Pourquoi un partenariat public-privé mal structuré peut-il générer des coûts cachés pour les finances publiques ?
7. Un décideur compare un programme à effet DID de 2 points à coût élevé, et un autre à effet de 1,5 point à coût bien plus faible. Quels éléments doivent entrer dans sa décision ?

## Corrigé

1. Aide concessionnelle : fort impact social possible mais dépend des bailleurs, volatile. Emprunt sur les marchés : autonomie mais coût plus élevé et risque de change si en devise étrangère. Partenariat public-privé : mobilise expertise et capital privés mais contrats complexes, risque de coûts cachés si le partage des risques est mal défini.
2. Parce que cette amélioration aurait pu survenir même sans le programme (tendance générale, facteurs saisonniers) : sans contrefactuel crédible, on ne peut isoler l''effet propre du programme.
3. Différence traité : 112-85=27. Différence témoin : 0. Effet DID = 27, plus élevé que les 18 du cours, car l''absence totale d''évolution du témoin attribue davantage au programme.
4. C''est l''hypothèse que, sans le programme, les deux groupes auraient évolué de façon similaire. Difficile à vérifier car le contrefactuel réel est inobservable ; on évalue sa plausibilité en comparant les tendances avant le programme.
5. Différence traité : 58-40=18 points. Différence témoin : 48-42=6 points. Effet DID = 18-6 = 12 points. Le programme est associé à une amélioration nette d''environ 12 points du taux d''emploi, au-delà de la tendance générale.
6. Les contrats peuvent sous-estimer des risques futurs (maintenance, demande, coûts), les transférer implicitement à l''État en cas de défaillance du partenaire, ou inclure des garanties publiques coûteuses révélées bien après la signature.
7. Comparer le rapport effet/coût (rentabilité sociale par FCFA investi), vérifier la robustesse méthodologique de chaque évaluation (échantillon, qualité du témoin, plausibilité des tendances parallèles), et envisager de combiner les programmes selon les contraintes budgétaires et priorités.', 'texte', 50, false, 30
from public.courses c where c.slug = 'mas-eco-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Finance du développement et politiques publiques : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Méthodologie du mémoire de recherche et soutenance : l''essentiel pour l''examen', 'Objectifs de la leçon

Cette leçon traite de la méthodologie du mémoire de recherche ou professionnel et de la préparation à la soutenance orale, dernière matière avancée de ce semestre. Elle s''applique aussi bien à un mémoire académique qu''à un mémoire professionnel adossé à un stage.

Formuler une question de recherche

Un bon mémoire commence par une question précise, pas par un sujet vague. Une question vague du type « l''intégration régionale en Afrique de l''Ouest » ne permet pas de structurer un travail rigoureux. Une question précise, par exemple « dans quelle mesure l''ouverture tarifaire intra-UEMOA a-t-elle affecté la compétitivité d''un secteur donné dans un pays donné sur une période donnée », permet de délimiter le travail, de choisir une méthode adaptée, et de conclure clairement.

Une bonne question de recherche doit être : précise (délimitée dans le temps, l''espace, le secteur), pertinente (elle intéresse un public économique ou professionnel réel), faisable (vous disposez ou pouvez obtenir les données ou les informations nécessaires dans le temps imparti), et honnête (vous ne savez pas déjà la réponse avant de commencer le travail : c''est une vraie question, pas une démonstration a priori).

La revue de littérature

La revue de littérature situe votre travail par rapport à ce qui a déjà été écrit sur le sujet ou sur des sujets proches. Elle poursuit trois objectifs : montrer que vous connaissez le champ de votre question, identifier ce qui a déjà été établi (pour ne pas refaire un travail déjà fait) et ce qui reste incertain ou débattu (c''est souvent là que se loge votre contribution), et construire le cadre théorique ou conceptuel que vous allez utiliser dans votre propre analyse.

Règle absolue sur les sources : chaque référence citée dans votre revue de littérature doit avoir été réellement lue ou au minimum son résumé vérifié par vous-même, auprès d''une source fiable (ouvrage, article académique, rapport institutionnel). N''inventez jamais un auteur, un titre, une date de publication ou un résultat empirique précis que vous n''avez pas vérifié. Si vous avez un doute sur un chiffre ou une référence, il est toujours préférable d''écrire une phrase plus générale et honnête (« plusieurs études ont montré un effet positif de ce type de programme dans des contextes comparables », sans citer précisément une étude non vérifiée) que d''inventer une précision non maîtrisée. Une référence fabriquée, si elle est détectée par le jury, peut gravement compromettre la crédibilité de l''ensemble du mémoire.

Choisir et justifier une méthode

Une fois la question posée et la littérature maîtrisée, vous devez choisir une méthode adaptée aux données ou au terrain réellement disponibles, et non une méthode « idéale » que vous ne pourrez pas mettre en œuvre. Un petit échantillon de données qualitatives (entretiens, études de cas) appelle une méthode d''analyse qualitative rigoureuse ; des données chiffrées suffisantes peuvent justifier une analyse économétrique ; l''absence de groupe témoin crédible limite les méthodes d''évaluation d''impact disponibles. La méthode doit toujours être justifiée explicitement dans le mémoire : pourquoi cette méthode, et pas une autre, est-elle adaptée à votre question et à vos données ?

Présenter des résultats honnêtes

Un résultat statistiquement non significatif, un résultat partiel, ou un résultat qui contredit votre hypothèse initiale, ne doivent jamais être cachés ou maquillés : ils doivent être présentés et discutés honnêtement, avec leurs limites. Un jury valorise beaucoup plus un travail qui présente honnêtement des résultats modestes mais bien analysés, qu''un travail qui prétend à des conclusions plus fortes que ce que les données permettent réellement d''établir. La section « limites de l''étude », loin d''être une faiblesse, est un signe de maturité méthodologique : elle montre que vous comprenez la portée réelle de votre travail.

Préparer la soutenance orale

La soutenance est un exercice de communication professionnelle, distinct de la rédaction écrite. Quelques principes à appliquer : préparez une présentation d''environ dix minutes qui résume l''essentiel (question, méthode, résultat principal, limite principale) sans entrer dans tous les détails techniques du mémoire écrit ; anticipez les questions attendues du jury (pourquoi cette méthode, pourquoi ce choix de données, quelle est la limite principale de votre travail, quelle serait la suite possible de cette recherche) et préparez des réponses construites ; entraînez-vous à voix haute, chronométré, devant un public même informel (camarade, membre de la famille), car la fluidité orale ne s''acquiert pas en lisant ses notes en silence ; enfin, montrez que vous savez prendre du recul sur votre propre travail en acceptant les critiques du jury sans vous braquer ni sur-défendre un point faible identifié à juste titre.

Points clés à retenir
- Une question de recherche doit être précise, pertinente, faisable et honnête.
- La revue de littérature situe le travail et construit le cadre théorique ; aucune référence ne doit être inventée.
- La méthode choisie doit être justifiée par rapport aux données et au terrain réellement disponibles, pas par rapport à une méthode idéale inaccessible.
- Les résultats, même modestes ou partiels, doivent être présentés honnêtement, avec leurs limites clairement assumées.
- La soutenance est un exercice de communication à préparer spécifiquement : présentation courte et claire, anticipation des questions, entraînement oral chronométré.

## Exercices pratiques

1. Transformez le sujet vague « le financement des petites entreprises au Sénégal » en une question de recherche précise, pertinente et faisable.
2. Pourquoi une revue de littérature ne doit-elle pas se limiter à résumer ce que d''autres ont déjà écrit, sans identifier ce qui reste incertain ou débattu ?
3. Un étudiant trouve un résultat statistiquement non significatif après plusieurs semaines de travail. Que doit-il faire, et que ne doit-il surtout pas faire ?
4. Pourquoi la justification explicite de la méthode choisie est-elle un élément attendu par un jury de mémoire ?
5. Préparez, en cinq phrases maximum, le squelette d''une présentation orale de dix minutes pour un mémoire fictif sur un sujet de votre choix.
6. Pourquoi une référence bibliographique fabriquée ou non vérifiée est-elle particulièrement risquée pour la crédibilité d''un mémoire ?
7. Quelles sont les quatre questions que le jury pose presque systématiquement à un candidat, et comment s''y préparer ?

## Corrigé

1. Exemple de question précise : « Dans quelle mesure l''accès au microcrédit a-t-il affecté la survie à trois ans des petites entreprises commerciales dans une zone urbaine donnée du Sénégal, sur la période récente ? » Elle est précise (secteur, zone, horizon temporel), pertinente (enjeu réel de politique économique), potentiellement faisable (données d''enquête ou administratives mobilisables), et honnête (la réponse n''est pas connue à l''avance).
2. Parce que l''objectif d''un mémoire est d''apporter une contribution, même modeste ; si la revue de littérature se limite à résumer l''existant sans identifier une zone d''incertitude ou de débat, le mémoire n''a alors aucun espace propre pour apporter quoi que ce soit de nouveau, même à petite échelle.
3. Il doit présenter ce résultat honnêtement, en discutant ses causes possibles (échantillon limité, variable manquante, effet réellement faible dans ce contexte) et ses implications. Il ne doit surtout pas maquiller le résultat, choisir arbitrairement une autre spécification du modèle jusqu''à obtenir un résultat « significatif » sans justification théorique, ni cacher ce résultat en ne présentant que les résultats qui confirment son hypothèse initiale.
4. Parce que la rigueur méthodologique, et non seulement le résultat final, est au cœur de l''évaluation d''un mémoire de Master : un jury veut vérifier que l''étudiant comprend pourquoi sa méthode est adaptée à sa question et à ses données, et pas seulement qu''il sait appliquer une technique de façon mécanique.
5. Réponse libre, exemple de structure : présenter la question de recherche et sa pertinence ; situer brièvement le contexte et la littérature existante ; présenter la méthode choisie et pourquoi elle est adaptée ; présenter le résultat principal ; conclure sur la limite principale et une piste de recherche future.
6. Parce qu''une référence fabriquée, si elle est détectée, remet en cause non seulement cette référence précise mais la fiabilité de l''ensemble du travail aux yeux du jury, posant un problème de rigueur académique qui dépasse largement l''erreur ponctuelle elle-même.
7. Pourquoi ce terrain ? pourquoi cette méthode ? quelle est la principale limite ? quelle suite de recherche ? S''y préparer consiste à anticiper des réponses construites et honnêtes, appuyées sur les choix réellement faits, plutôt qu''à improviser le jour de la soutenance.', 'texte', 50, false, 40
from public.courses c where c.slug = 'mas-eco-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Méthodologie du mémoire de recherche et soutenance : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Master 2 Économie (entraînement, corrigé détaillé)', '## Fiche du sujet type

Ce sujet type d''examen de Master 2 en Économie couvre les trois matières avancées du semestre : économie internationale et intégration régionale africaine, finance du développement et politiques publiques, et méthodologie de recherche. Sujet NON OFFICIEL construit pour l''entraînement, barème indicatif sur 20 points. Durée indicative : 3 heures.

## Sujet

Partie 1 — Économie internationale et intégration régionale (7 points)

Un pays fictif membre d''une union douanière régionale importe un bien dont le prix mondial est de 150 FCFA (unité fictive). Son tarif national avant l''union était de 20 %. Après l''union, il importe ce bien sans tarif auprès d''un partenaire régional dont le coût de production est de 160 FCFA.

1.1. (2 points) Calculez le prix payé par le consommateur avant l''union, et après l''union.
1.2. (2 points) Qualifiez l''effet de cette union sur ce marché (création ou détournement de commerce) et justifiez par le calcul.
1.3. (3 points) Expliquez, en mobilisant la théorie de l''avantage comparatif, pourquoi un pays peut avoir intérêt à participer à une union régionale même si celle-ci génère, sur certains biens précis, un détournement de commerce.

Partie 2 — Finance du développement et évaluation d''impact (7 points)

Un programme fictif de subvention agricole est évalué par la méthode de la différence de différences. Le rendement moyen (en sacs de 50 kg par hectare) est mesuré avant et après le programme, dans une zone bénéficiaire et une zone témoin comparable : zone bénéficiaire avant = 18, après = 27 ; zone témoin avant = 17, après = 20.

2.1. (3 points) Calculez l''effet DID du programme sur le rendement agricole.
2.2. (2 points) Citez l''hypothèse clé de validité de cette méthode et expliquez pourquoi elle est difficile à vérifier directement.
2.3. (2 points) Citez deux instruments de financement qui pourraient avoir permis de financer ce programme, avec une limite de chacun.

Partie 3 — Méthodologie de recherche (6 points)

Un étudiant de Master 2 souhaite rédiger son mémoire sur le sujet suivant, tel qu''il l''a formulé initialement : « l''impact du commerce régional sur le développement en Afrique de l''Ouest ».

3.1. (2 points) Expliquez pourquoi ce sujet, formulé ainsi, n''est pas encore une question de recherche satisfaisante, et reformulez-le en une question précise, pertinente et faisable.
3.2. (2 points) L''étudiant trouve, après son analyse, un résultat statistiquement non significatif sur sa variable principale d''intérêt. Que doit-il faire dans la rédaction de son mémoire ?
3.3. (2 points) Citez deux questions que le jury est susceptible de poser à cet étudiant lors de sa soutenance, et expliquez comment il devrait s''y préparer.

## Corrigé détaillé

1.1. Avant l''union : 150 × 1,20 = 180 FCFA. Après l''union : 160 FCFA (prix du partenaire régional, sans tarif).

1.2. Le consommateur gagne (180-160 = 20 FCFA de baisse de prix), mais le partenaire régional (160 FCFA) reste plus cher que le prix mondial de référence (150 FCFA) : il s''agit donc de détournement de commerce, avec un coût d''inefficacité de 160-150 = 10 FCFA par unité par rapport au fournisseur mondial le plus efficace.

1.3. Même en présence d''un détournement de commerce sur certains biens précis, un pays peut avoir intérêt global à l''union régionale pour plusieurs raisons : la baisse de prix pour les consommateurs reste positive par rapport à la situation pré-union (gain net de 20 FCFA dans cet exemple, même si ce n''est pas optimal au niveau mondial) ; l''union peut générer une création de commerce nette sur d''autres biens où le partenaire régional est réellement plus efficace que le reste du monde, conformément à la théorie de l''avantage comparatif ; enfin, l''intégration régionale peut apporter des bénéfices dynamiques plus larges (économies d''échelle de marché, attractivité pour l''investissement, stabilité politique et institutionnelle régionale) qui dépassent le cadre étroit d''un seul bien analysé isolément.

2.1. Différence zone bénéficiaire : 27-18 = 9 sacs/ha. Différence zone témoin : 20-17 = 3 sacs/ha. Effet DID = 9-3 = 6 sacs de 50 kg par hectare, attribuable au programme de subvention agricole.

2.2. L''hypothèse des tendances parallèles : en l''absence du programme, les deux zones auraient évolué de façon similaire dans le temps. Elle est difficile à vérifier directement car le contrefactuel réel (ce qui serait arrivé à la zone bénéficiaire sans le programme) n''est jamais observable ; on ne peut qu''évaluer la plausibilité de cette hypothèse, par exemple en comparant les tendances des deux zones avant la mise en place du programme.

2.3. Aide au développement concessionnelle : peut financer ce type de programme à fort impact social, mais dépend de la volonté et de la disponibilité des bailleurs, une source potentiellement volatile. Financement public domestique (budget national) : offre davantage d''autonomie et de pérennité, mais est contraint par les capacités fiscales de l''État et peut être mis en concurrence avec d''autres priorités budgétaires.

3.1. Ce sujet est trop vague : il ne précise ni le secteur, ni la période, ni le pays, ni l''indicateur de développement retenu, ce qui rend le travail difficile à délimiter et à mener à bien dans le temps imparti. Reformulation possible : « Dans quelle mesure la suppression des tarifs intra-régionaux sur les produits agricoles transformés a-t-elle affecté le revenu des producteurs d''une filière donnée dans un pays donné, sur la période récente ? » Cette question est précise (secteur, pays, période), pertinente, et potentiellement faisable si des données sont mobilisables.

3.2. Il doit présenter ce résultat honnêtement dans son mémoire, en discutant les causes possibles (échantillon limité, variable omise, effet réellement faible dans ce contexte précis) et en évitant deux pièges : ne pas maquiller le résultat pour le faire apparaître plus favorable qu''il ne l''est, et ne pas chercher arbitrairement une autre spécification statistique jusqu''à obtenir un résultat significatif sans justification théorique solide (une pratique appelée recherche de significativité, à proscrire).

3.3. Exemples de questions possibles : pourquoi avoir choisi ce secteur et cette période précise plutôt qu''un autre cadre d''analyse ? Quelle est la principale limite méthodologique de votre travail, notamment liée à la non-significativité du résultat principal ? Pour s''y préparer, l''étudiant doit anticiper des réponses construites et honnêtes, fondées sur les choix réellement faits dans son mémoire (disponibilité des données, contraintes de temps), et s''entraîner à voix haute à les formuler clairement avant le jour de la soutenance.

## Exercices pratiques

1. Dans la partie 1, si le coût du partenaire régional était de 140 FCFA au lieu de 160 FCFA, l''effet serait-il toujours un détournement de commerce ?
2. Dans la partie 2, si la zone témoin avait connu une baisse de rendement (avant = 17, après = 15), recalculez l''effet DID et commentez.
3. Pourquoi la reformulation d''une question de recherche vague en question précise est-elle presque toujours nécessaire avant de commencer un mémoire ?

## Corrigé

1. Non : à 140 FCFA, le partenaire régional serait moins cher que le prix mondial de référence (150 FCFA). Il s''agirait alors de création de commerce, l''union révélant un avantage comparatif réel du partenaire régional plutôt que de détourner les échanges vers un fournisseur moins efficace.
2. Différence zone témoin : 15-17 = -2 sacs/ha. Effet DID = 9 - (-2) = 11 sacs/ha, un effet net plus élevé que les 6 sacs calculés initialement, car la zone témoin a connu une évolution défavorable que la zone bénéficiaire n''a pas connue, accentuant l''écart attribué au programme.
3. Parce qu''une question vague ne permet pas de délimiter les données nécessaires, la méthode adaptée, ni le temps de travail requis ; elle rend le mémoire difficile à structurer et expose l''étudiant au risque de dériver vers un travail trop large et superficiel, insatisfaisant pour un jury qui attend une contribution rigoureuse sur un périmètre clairement défini.', 'texte', 60, false, 50
from public.courses c where c.slug = 'mas-eco-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Master 2 Économie (entraînement, corrigé détaillé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Économie internationale et intégration régionale africaine', '## Fiche du cours vidéo

Durée : 1h30 (90 minutes). Sujet : Économie internationale et intégration régionale africaine — théories du commerce, union douanière, création et détournement de commerce.
Objectifs : maîtriser l''avantage comparatif et les théories modernes du commerce, comprendre les mécanismes de l''UEMOA et de la CEDEAO, savoir calculer et interpréter la création et le détournement de commerce.
Matériel : tableau ou diaporama, calculatrice.
Prérequis : économie monétaire et internationale (Licence 3).

## Déroulé minuté

## 00:00 – 05:00 · Accueil

Bonjour et bienvenue dans ce premier cours vidéo de votre semestre de Master 2. Nous allons approfondir l''économie internationale et l''intégration régionale africaine, un sujet central pour comprendre les choix de politique commerciale de nos pays. Au programme : les théories du commerce international au-delà de l''avantage comparatif simple, le fonctionnement concret d''une union douanière, et les notions de création et de détournement de commerce, avec des calculs vérifiés.

## 05:00 – 20:00 · L''avantage comparatif, rappel et approfondissement

Reprenons notre exemple fictif vérifié. Au Sénégal fictif, produire une unité de tissu nécessite 4 heures de travail, une unité de riz 8 heures. En Côte d''Ivoire fictive, chaque bien nécessite 6 heures. Calculons le coût d''opportunité du tissu, en riz sacrifié : au Sénégal fictif, 4 divisé par 8, égal 0,5 ; en Côte d''Ivoire fictive, 6 divisé par 6, égal 1,0. Le Sénégal fictif a donc un coût d''opportunité plus faible dans le tissu : il détient l''avantage comparatif dans ce bien. Symétriquement, le coût d''opportunité du riz, en tissu, est de 8 divisé par 4, égal 2,0 au Sénégal fictif, et de 6 divisé par 6, égal 1,0 en Côte d''Ivoire fictive : c''est la Côte d''Ivoire fictive qui détient l''avantage comparatif dans le riz. Chaque pays gagne à se spécialiser et à échanger, même si, dans cet exemple, la Côte d''Ivoire fictive n''a d''avantage absolu dans aucun des deux biens : c''est tout l''intérêt pédagogique du modèle ricardien, qui montre que le commerce profite aux deux parties indépendamment des niveaux absolus de productivité.

Mais ce modèle, aussi élégant soit-il, laisse de côté une grande partie du commerce mondial réel. Les théories modernes l''enrichissent : le modèle de Heckscher-Ohlin explique la spécialisation par les différences de dotations en facteurs de production, travail, capital, terre, entre pays. Les théories de la concurrence imparfaite et des économies d''échelle expliquent pourquoi des pays aux structures économiques très proches échangent quand même énormément entre eux, ce qu''on appelle le commerce intra-branche, par la différenciation de produit et la diversité des préférences des consommateurs. Enfin, les théories plus récentes sur l''hétérogénéité des entreprises montrent que, au sein d''un même secteur, seules les entreprises les plus productives parviennent à exporter, ce qui explique pourquoi l''ouverture commerciale peut augmenter la productivité moyenne d''un secteur par un effet de sélection, sans que chaque entreprise individuelle ait changé de technologie.

## 20:00 – 35:00 · L''architecture de l''intégration régionale ouest-africaine

Parlons maintenant des mécanismes concrets de l''intégration régionale en Afrique de l''Ouest, toujours en termes généraux. L''UEMOA constitue une union douanière : ses pays membres appliquent un tarif extérieur commun face aux pays tiers, et suppriment les droits de douane entre eux. C''est une étape plus intégrée qu''une simple zone de libre-échange, où chaque pays garde son propre tarif extérieur face au reste du monde. La Communauté économique des États de l''Afrique de l''Ouest, la CEDEAO, plus large géographiquement, poursuit également des objectifs d''intégration économique régionale, avec des enjeux de convergence entre les différents cadres institutionnels présents dans la région. À une échelle encore plus large, la zone de libre-échange continentale africaine vise à réduire les barrières commerciales entre l''ensemble des pays africains.

Ces architectures se complètent, mais se chevauchent aussi partiellement, ce qui pose de véritables défis pratiques : des règles d''origine différentes, des calendriers de libéralisation différents, des formalités douanières parfois redondantes pour une entreprise qui exporte dans plusieurs de ces cadres à la fois. Un des grands enjeux de la gouvernance économique régionale actuelle est précisément de renforcer la cohérence entre ces différents niveaux d''intégration.

## 35:00 – 50:00 · Création et détournement de commerce : construction de l''exemple

Passons maintenant à l''outil analytique central de cette séance : la distinction entre création et détournement de commerce, que nous allons construire pas à pas avec un exemple numérique vérifié.

Imaginons un pays fictif qui importe un bien dont le prix mondial est de 100 FCFA, en unité fictive. Avant l''union douanière, ce pays applique un tarif national de 30 % sur ce bien : le prix payé par le consommateur domestique est donc de 100 multiplié par 1,30, soit 130 FCFA.

Après l''union douanière, ce pays importe désormais ce bien sans tarif auprès d''un partenaire régional, dont le coût de production est de 105 FCFA — un partenaire moins efficace que le reste du monde, dont le prix restait à 100 FCFA, mais dont l''accès est désormais exonéré de tarif grâce à l''union.

Calculons l''effet sur le consommateur : il paie maintenant 105 FCFA au lieu de 130 FCFA, soit un gain de pouvoir d''achat de 25 FCFA par unité. Mais comparons ce nouveau prix au prix mondial de référence, 100 FCFA : le partenaire régional reste 5 FCFA plus cher. C''est le coût du détournement de commerce : les échanges se sont réorientés vers un fournisseur moins efficace au niveau mondial, uniquement parce que la structure tarifaire de l''union l''avantage artificiellement.

## 50:00 – 55:00 · Pause et quiz interactif

Pause de cinq minutes avec un quiz. Première question : dans l''exemple précédent, si le coût du partenaire régional avait été de 95 FCFA au lieu de 105 FCFA, s''agirait-il de création ou de détournement de commerce ? Deuxième question : pourquoi dit-on que l''UEMOA est une union douanière et pas seulement une zone de libre-échange ? Troisième question : citez un défi pratique posé par la coexistence de l''UEMOA, de la CEDEAO et de la ZLECAf.

Correction : premièrement, à 95 FCFA, le partenaire régional serait moins cher que le prix mondial de référence de 100 FCFA : il s''agirait de création de commerce, l''union révélant un avantage comparatif réel du partenaire. Deuxièmement, parce que l''UEMOA combine suppression des tarifs intra-régionaux ET adoption d''un tarif extérieur commun face aux pays tiers, alors qu''une simple zone de libre-échange ne supprime que les tarifs internes, chaque pays gardant son propre tarif extérieur. Troisièmement, par exemple des règles d''origine ou des calendriers de libéralisation différents entre les cadres, compliquant les formalités pour les entreprises qui exportent dans plusieurs d''entre eux.

## 55:00 – 1:25:00 · Application guidée et discussion des implications de politique commerciale

Reprenons un cas guidé complet. Un gouvernement fictif, membre d''une union douanière régionale, doit décider s''il maintient ou révise son tarif extérieur commun sur un bien stratégique, par exemple un intrant industriel. Le prix mondial de cet intrant est de 80 FCFA. Le tarif extérieur commun actuel est de 25 %, donnant un prix domestique, pour les importations hors zone, de 80 multiplié par 1,25, soit 100 FCFA. Un partenaire régional produit cet intrant à 90 FCFA, sans tarif intra-régional.

Calculons : le prix payé actuellement pour l''intrant importé du partenaire régional est de 90 FCFA, contre 100 FCFA s''il venait du reste du monde avec le tarif actuel, et 80 FCFA au prix mondial hors tout tarif. Le partenaire régional, à 90 FCFA, reste 10 FCFA plus cher que le prix mondial : nous sommes dans une situation de détournement de commerce sur ce bien précis.

Question de politique économique : ce gouvernement doit-il pour autant chercher à réduire le tarif extérieur commun pour limiter ce détournement de commerce ? La réponse nécessite de mettre en balance plusieurs éléments : l''intérêt des consommateurs et des entreprises utilisatrices de cet intrant à payer un prix plus proche du prix mondial, face à l''intérêt de préserver un espace de production régional pour cet intrant, susceptible de générer des emplois et une capacité industrielle régionale, même si celle-ci n''est pas immédiatement la plus compétitive au niveau mondial. C''est précisément ce type d''arbitrage, entre efficacité économique de court terme et objectifs plus larges de développement industriel régional, qui anime les débats de politique commerciale dans les instances régionales ouest-africaines.

## 1:25:00 – 1:30:00 · Évaluation finale

Question 1 : Donnez la formule du coût d''opportunité du tissu, en riz sacrifié, dans le modèle ricardien.
Réponse : heures de travail nécessaires pour une unité de tissu, divisées par les heures nécessaires pour une unité de riz.

Question 2 : Quelle théorie moderne explique le commerce intra-branche entre pays aux structures économiques proches ?
Réponse : les théories de la concurrence imparfaite et des économies d''échelle, via la différenciation de produit.

Question 3 : Quelle est la différence structurelle entre une union douanière et une zone de libre-échange ?
Réponse : l''union douanière ajoute un tarif extérieur commun face aux pays tiers, en plus de la suppression des tarifs internes.

Question 4 : Qu''est-ce que le détournement de commerce ?
Réponse : une réorientation des échanges vers un partenaire régional moins efficace que le reste du monde, uniquement en raison d''une exonération tarifaire intra-régionale.

Question 5 : Pourquoi un décideur de politique commerciale doit-il mettre en balance l''efficacité de court terme et des objectifs de développement industriel régional ?
Réponse : parce qu''un tarif extérieur commun qui génère un détournement de commerce pénalise les consommateurs à court terme, mais peut aussi soutenir une capacité industrielle régionale jugée stratégique à plus long terme, un arbitrage politique et économique qui dépasse le seul calcul d''efficacité statique.

Merci pour votre attention. La prochaine vidéo portera sur la finance du développement et l''évaluation d''impact des politiques publiques.', 'video', 90, false, 60
from public.courses c where c.slug = 'mas-eco-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Économie internationale et intégration régionale africaine');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Finance du développement et politiques publiques', '## Fiche du cours vidéo

Durée : 1h30 (90 minutes). Sujet : Finance du développement et politiques publiques — instruments de financement et évaluation d''impact par la différence de différences.
Objectifs : connaître les principaux instruments de financement du développement, maîtriser la logique du contrefactuel et calculer un effet DID.
Matériel : tableau ou diaporama, calculatrice.
Prérequis : économie publique (Licence 3), statistiques de base.

## Déroulé minuté

## 00:00 – 05:00 · Accueil

Bonjour et bienvenue dans ce deuxième cours vidéo de votre semestre de Master 2. Nous allons aujourd''hui parler de finance du développement et d''évaluation des politiques publiques, deux sujets au cœur du travail de nombreux économistes dans les administrations, les institutions internationales, ou les organisations de développement. Nous verrons les grands instruments de financement, puis nous nous concentrerons sur une méthode d''évaluation d''impact simple et puissante, la différence de différences, avec un calcul entièrement vérifié.

## 05:00 – 20:00 · Les instruments de financement du développement

Commençons par une cartographie générale des instruments de financement du développement. Premièrement, le financement public domestique : les recettes fiscales et non fiscales de l''État, et l''emprunt public sur les marchés financiers nationaux ou régionaux. Deuxièmement, le financement extérieur public : l''aide au développement, sous forme de dons ou de prêts concessionnels accordés par des institutions bilatérales ou multilatérales, et les prêts non concessionnels. Troisièmement, le financement privé : les investissements directs étrangers, les investissements de portefeuille, le crédit bancaire privé, et des montages comme les partenariats public-privé, qui associent financement et gestion privés à des infrastructures ou services d''intérêt public.

Chaque instrument a ses avantages et ses limites, qu''un futur économiste doit savoir discuter. L''aide concessionnelle peut financer des investissements à fort impact social, en santé ou en éducation de base par exemple, mais elle dépend de la volonté et de la disponibilité des bailleurs, une source potentiellement volatile d''une année sur l''autre. L''emprunt sur les marchés financiers offre davantage d''autonomie de décision à l''État emprunteur, mais à un coût financier plus élevé, et avec un risque de change si la dette est libellée en devise étrangère alors que les recettes de l''État sont en monnaie locale. Les partenariats public-privé peuvent mobiliser l''expertise technique et le capital du secteur privé pour construire des infrastructures, mais nécessitent des contrats complexes et un partage rigoureux des risques entre les parties : mal négociés, ils peuvent générer des coûts cachés pour les finances publiques, révélés seulement plusieurs années après la signature du contrat.

## 20:00 – 35:00 · Le problème du contrefactuel

Passons maintenant au cœur méthodologique de cette séance : comment savoir si une politique publique ou un programme de développement a réellement fonctionné ? Il ne suffit pas d''observer que la situation des bénéficiaires s''est améliorée après le programme, car cette amélioration aurait pu se produire même sans le programme, pour d''autres raisons : une tendance générale de l''économie, une saison agricole favorable, une autre politique mise en œuvre en parallèle.

Le principe central de toute évaluation d''impact rigoureuse est la comparaison à un contrefactuel : que serait-il arrivé aux bénéficiaires SANS le programme ? Ce contrefactuel n''est jamais directement observable — on ne peut pas observer le même individu, à la fois avec et sans le programme, au même moment. Les méthodes d''évaluation d''impact construisent donc une approximation crédible de ce contrefactuel, le plus souvent à l''aide d''un groupe témoin, c''est-à-dire un groupe similaire au groupe bénéficiaire par ailleurs, mais qui n''a pas bénéficié du programme.

## 35:00 – 50:00 · La méthode de la différence de différences, calcul guidé

La méthode de la différence de différences, souvent abrégée DID, compare l''évolution dans le temps du groupe bénéficiaire, dit groupe traité, à celle d''un groupe témoin comparable, avant et après la mise en place du programme. L''idée centrale : si les deux groupes auraient évolué de façon similaire sans le programme, alors tout écart d''évolution entre les deux groupes après le programme peut être attribué à l''effet du programme lui-même.

Reprenons notre exemple numérique fictif, entièrement vérifié. Un programme de microcrédit fictif est mis en place dans une région test. Le revenu mensuel moyen des ménages, en milliers de FCFA, est mesuré avant et après le programme, dans la région test et dans une région témoin comparable. Région test : avant = 85, après = 112. Région témoin : avant = 83, après = 92.

Calculons ensemble, étape par étape. D''abord, la différence dans le groupe traité : 112 moins 85, égal 27 milliers de FCFA. Ensuite, la différence dans le groupe témoin : 92 moins 83, égal 9 milliers de FCFA. Enfin, l''effet DID, c''est-à-dire l''impact net attribuable au programme : 27 moins 9, égal 18 milliers de FCFA par mois.

Interprétons ce résultat avec précision, car c''est exactement ce qui est attendu de vous à l''examen : sans le programme, on aurait pu s''attendre à ce que le revenu de la région test augmente d''environ 9 milliers de FCFA, comme dans la région témoin — c''est l''évolution de fond commune aux deux régions, due par exemple à la conjoncture économique générale. L''augmentation effective de 27 milliers de FCFA dans la région traitée dépasse cette évolution de fond de 18 milliers de FCFA, ce supplément étant attribué à l''effet net du programme de microcrédit.

## 50:00 – 55:00 · Pause et quiz interactif

Pause de cinq minutes avec un quiz. Première question : pourquoi ne peut-on pas se contenter de regarder uniquement l''évolution du groupe traité (27 milliers de FCFA) pour mesurer l''effet du programme ? Deuxième question : qu''est-ce qu''un groupe témoin, et quelle est sa fonction méthodologique ? Troisième question : si le groupe témoin avait connu une évolution de 15 milliers de FCFA au lieu de 9, quel serait le nouvel effet DID ?

Correction : premièrement, parce que cette évolution de 27 milliers de FCFA inclut à la fois l''effet propre du programme ET l''évolution de fond qui se serait produite de toute façon (conjoncture générale, saison) ; sans comparaison à un groupe témoin, on surestimerait l''effet réel du programme. Deuxièmement, le groupe témoin sert à approximer le contrefactuel : ce qui serait arrivé au groupe traité sans le programme, en observant un groupe similaire mais non bénéficiaire. Troisièmement, le nouvel effet DID serait 27 moins 15, égal 12 milliers de FCFA, plus faible que les 18 calculés initialement, car une plus grande partie de l''évolution du groupe traité serait alors attribuée à la tendance générale plutôt qu''au programme.

## 55:00 – 1:25:00 · L''hypothèse des tendances parallèles et discussion critique

La différence de différences repose sur une hypothèse cruciale, appelée hypothèse des tendances parallèles : en l''absence du programme, les deux groupes auraient évolué de façon similaire dans le temps. Cette hypothèse n''est jamais directement vérifiable après le fait — on ne peut jamais observer ce qui se serait réellement passé sans le programme — mais elle peut être rendue plus ou moins crédible selon la qualité du choix du groupe témoin.

Un bon groupe témoin partage des caractéristiques socio-économiques comparables avec le groupe traité, une exposition similaire aux chocs économiques généraux, et, idéalement, une évolution déjà parallèle à celle du groupe traité avant la mise en place du programme — ce qu''on peut vérifier si des données antérieures au programme sont disponibles sur plusieurs périodes.

Un décideur public ou un bailleur de fonds qui doit juger de l''efficacité d''un programme de développement doit se poser systématiquement trois questions avant d''accepter les conclusions d''une évaluation DID : le groupe témoin est-il réellement comparable au groupe traité, au-delà des apparences ? L''hypothèse des tendances parallèles est-elle plausible dans ce contexte précis, ou existe-t-il des raisons de penser que les deux groupes auraient évolué différemment même sans le programme ? Enfin, l''effet mesuré est-il suffisamment important, au regard du coût du programme, pour justifier sa généralisation à plus grande échelle, par exemple à l''ensemble d''un pays plutôt qu''à une seule région test ?

Ces trois questions doivent devenir des réflexes automatiques chaque fois que vous lisez ou produisez une évaluation d''impact, qu''il s''agisse d''un examen, d''un mémoire, ou plus tard d''un rapport professionnel.

## 1:25:00 – 1:30:00 · Évaluation finale

Question 1 : Citez trois grandes catégories d''instruments de financement du développement.
Réponse : financement public domestique, financement extérieur public (aide, emprunt), financement privé (investissement direct, partenariats public-privé).

Question 2 : Qu''est-ce qu''un contrefactuel en évaluation d''impact ?
Réponse : ce qui serait arrivé aux bénéficiaires en l''absence du programme, jamais directement observable, et approximé par des méthodes comme le groupe témoin.

Question 3 : Donnez la formule de l''effet DID.
Réponse : (après - avant) du groupe traité, moins (après - avant) du groupe témoin.

Question 4 : Qu''est-ce que l''hypothèse des tendances parallèles ?
Réponse : l''hypothèse que, sans le programme, le groupe traité et le groupe témoin auraient évolué de façon similaire dans le temps.

Question 5 : Citez les trois questions à se poser systématiquement avant d''accepter les conclusions d''une évaluation DID.
Réponse : le groupe témoin est-il réellement comparable ? l''hypothèse des tendances parallèles est-elle plausible ? l''effet mesuré justifie-t-il, au regard du coût, une généralisation à plus grande échelle ?

Merci de votre attention. La prochaine et dernière vidéo de ce semestre sera un atelier consacré à la méthodologie du mémoire et à la préparation de votre soutenance.', 'video', 90, false, 70
from public.courses c where c.slug = 'mas-eco-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Finance du développement et politiques publiques');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Méthodologie du mémoire de recherche et soutenance', '## Fiche du cours vidéo

Durée : 1h30 (90 minutes). Sujet : Méthodologie du mémoire de recherche et préparation de la soutenance.
Objectifs : savoir formuler une question de recherche, construire une revue de littérature rigoureuse, choisir et justifier une méthode, présenter des résultats honnêtes, préparer une soutenance orale.
Matériel : tableau ou diaporama, votre propre projet de mémoire si vous en avez déjà un.
Prérequis : aucun prérequis technique spécifique, mais une idée même approximative de votre futur sujet de mémoire est utile.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et enjeux

Bonjour et bienvenue dans ce troisième cours vidéo de votre semestre de Master 2, consacré à la méthodologie du mémoire de recherche et à la préparation de la soutenance. Cette matière est différente des deux précédentes : elle ne porte pas sur un contenu économique précis, mais sur la méthode de travail qui va structurer votre dernier semestre d''études, qu''il s''agisse d''un mémoire académique ou d''un mémoire professionnel adossé à un stage.

## 05:00 – 20:00 · Formuler une question de recherche précise

Tout commence par la question de recherche. Un sujet vague, par exemple « l''intégration régionale en Afrique de l''Ouest », ne permet pas de structurer un travail rigoureux : il est trop large, ne précise ni le secteur, ni la période, ni le pays, ni l''angle d''analyse retenu. Une bonne question de recherche doit remplir quatre critères : être précise, délimitée dans le temps, l''espace et le secteur ; être pertinente, c''est-à-dire intéresser un public économique ou professionnel réel ; être faisable, c''est-à-dire que vous disposez ou pouvez obtenir les données ou les informations nécessaires dans le temps qui vous est imparti ; et être honnête, c''est-à-dire que vous ne connaissez pas déjà la réponse avant de commencer votre travail — c''est une vraie question, pas une démonstration décidée à l''avance.

Exercice pratique immédiat : prenons le sujet vague cité plus haut, et transformons-le ensemble. Une reformulation possible : « Dans quelle mesure la suppression des tarifs intra-régionaux sur les produits agricoles transformés a-t-elle affecté le revenu des producteurs d''une filière donnée, dans un pays donné, sur la période récente ? » Observez comment cette reformulation ajoute une délimitation sectorielle, géographique et temporelle précise, tout en restant une vraie question ouverte.

## 20:00 – 35:00 · La revue de littérature et la règle d''or des sources

La revue de littérature situe votre travail par rapport à ce qui a déjà été écrit. Elle poursuit trois objectifs : montrer votre maîtrise du champ de votre question, identifier ce qui est déjà établi pour ne pas refaire un travail déjà fait, et repérer ce qui reste incertain ou débattu — c''est souvent là que se loge votre propre contribution, même modeste.

J''insiste maintenant sur une règle absolue, que je veux que vous reteniez durablement : chaque référence citée dans votre mémoire doit avoir été réellement lue, ou au minimum son résumé vérifié par vous-même, auprès d''une source fiable. N''inventez jamais un auteur, un titre, une date de publication, ou un résultat empirique précis que vous n''avez pas vérifié. Si vous avez un doute sur un chiffre ou une référence exacte, il est toujours préférable d''écrire une phrase plus générale et honnête, du type « plusieurs études ont montré un effet positif de ce type de programme dans des contextes comparables », plutôt que d''inventer une précision que vous ne maîtrisez pas. Une référence fabriquée, si elle est détectée par le jury — et elle l''est souvent, car les jurys connaissent bien leur champ — peut compromettre gravement la crédibilité de l''ensemble de votre mémoire, bien au-delà de cette seule référence.

## 35:00 – 50:00 · Choisir et justifier sa méthode

Une fois la question posée et la littérature maîtrisée, vous devez choisir une méthode adaptée aux données ou au terrain réellement disponibles, et non une méthode idéale que vous ne pourrez jamais mettre en œuvre dans le temps imparti. Un petit nombre d''entretiens qualitatifs appelle une méthode d''analyse qualitative rigoureuse, pas une tentative de régression statistique sur trop peu d''observations. Des données chiffrées suffisantes peuvent justifier une analyse économétrique. L''absence d''un groupe témoin crédible limite les méthodes d''évaluation d''impact réellement disponibles pour vous.

Point essentiel : la méthode doit toujours être justifiée explicitement dans votre mémoire. Pourquoi cette méthode, et pas une autre, est-elle adaptée à votre question précise et aux données dont vous disposez réellement ? Un jury valorise énormément cette justification explicite, bien plus que la seule sophistication technique de la méthode employée.

## 50:00 – 55:00 · Pause et quiz interactif

Pause de cinq minutes avec un quiz. Première question : citez les quatre critères d''une bonne question de recherche. Deuxième question : pourquoi une référence bibliographique non vérifiée est-elle particulièrement risquée ? Troisième question : pourquoi la méthode choisie doit-elle être justifiée par rapport aux données disponibles, et non par rapport à une méthode jugée « idéale » en théorie ?

Correction : premièrement, précise, pertinente, faisable, honnête. Deuxièmement, parce qu''elle peut être détectée par le jury et compromettre la crédibilité de l''ensemble du travail, pas seulement celle de cette référence précise. Troisièmement, parce qu''une méthode inaccessible avec les données ou le temps réellement disponibles ne pourra pas être menée à bien rigoureusement, produisant un travail bâclé ou incomplet, alors qu''une méthode plus modeste mais bien exécutée est toujours préférable à l''examen comme en soutenance.

## 55:00 – 1:25:00 · Résultats honnêtes et préparation de la soutenance

Un résultat statistiquement non significatif, un résultat partiel, ou un résultat qui contredit votre hypothèse de départ, ne doivent jamais être cachés ou maquillés : présentez-les et discutez-les honnêtement, avec leurs limites. Un jury valorise beaucoup plus un travail qui présente honnêtement des résultats modestes mais bien analysés qu''un travail qui prétend à des conclusions plus fortes que ce que les données permettent réellement d''établir. La section « limites de l''étude » est un signe de maturité méthodologique, pas une faiblesse à minimiser.

Passons à la préparation de la soutenance orale elle-même, un exercice de communication professionnelle distinct de la rédaction écrite. Préparez une présentation d''environ dix minutes qui résume l''essentiel : la question, la méthode, le résultat principal, la limite principale, sans entrer dans tous les détails techniques du mémoire écrit. Anticipez les questions attendues du jury : pourquoi cette méthode, pourquoi ce choix de données, quelle est la limite principale de votre travail, quelle serait la suite possible de cette recherche. Préparez des réponses construites à chacune. Entraînez-vous à voix haute, chronométré, devant un public même informel : la fluidité orale ne s''acquiert jamais en lisant simplement ses notes en silence. Enfin, montrez que vous savez prendre du recul sur votre propre travail en acceptant les critiques du jury sans vous braquer, ni sur-défendre un point faible identifié à juste titre : un jury valorise davantage un candidat qui reconnaît intelligemment les limites de son travail qu''un candidat qui refuse toute critique.

## 1:25:00 – 1:30:00 · Évaluation finale

Question 1 : Citez les quatre critères d''une bonne question de recherche.
Réponse : précise, pertinente, faisable, honnête.

Question 2 : Quels sont les trois objectifs d''une revue de littérature ?
Réponse : montrer la maîtrise du champ, identifier ce qui est déjà établi, repérer ce qui reste incertain ou débattu pour situer sa propre contribution.

Question 3 : Que doit faire un étudiant face à un résultat non significatif ?
Réponse : le présenter honnêtement, en discutant ses causes possibles et ses implications, sans le maquiller ni chercher arbitrairement une autre spécification pour obtenir un résultat significatif.

Question 4 : Citez trois questions fréquemment posées par un jury en soutenance.
Réponse : pourquoi cette méthode plutôt qu''une autre ? quelle est la principale limite de votre travail ? quelle suite donneriez-vous à cette recherche ?

Question 5 : Pourquoi l''entraînement oral chronométré est-il indispensable avant une soutenance ?
Réponse : parce que la fluidité et la clarté de l''expression orale, sous contrainte de temps, ne s''acquièrent pas en lisant silencieusement ses notes, mais par la répétition active devant un public, même informel.

Un dernier mot avant de conclure cette séance : beaucoup d''étudiants sous-estiment le temps nécessaire à la préparation de la soutenance, pensant qu''il suffit de bien connaître son mémoire écrit pour improviser une présentation convaincante le jour venu. C''est une erreur fréquente. La capacité à résumer dix pages de méthode et de résultats en dix minutes orales, de façon claire pour un jury qui n''a peut-être lu votre travail que partiellement avant la soutenance, est une compétence qui se travaille spécifiquement, indépendamment de la qualité du mémoire écrit lui-même. Un excellent mémoire mal présenté oralement peut laisser une impression de confusion ; un mémoire plus modeste mais présenté avec clarté, structure et honnêteté intellectuelle peut au contraire convaincre pleinement un jury. Ne négligez donc jamais cette dimension de votre travail de fin d''études, qui compte généralement pour une part significative de votre note finale.

Merci pour votre attention. La prochaine et dernière vidéo de ce semestre sera un atelier pratique où nous construirons ensemble, étape par étape, le squelette méthodologique d''un mémoire fictif complet, de la question de recherche jusqu''à la préparation concrète de la soutenance.', 'video', 90, false, 80
from public.courses c where c.slug = 'mas-eco-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Méthodologie du mémoire de recherche et soutenance');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Atelier méthodologie — construire son mémoire pas à pas', '## Fiche du cours vidéo

Durée : 1h30 (90 minutes). Sujet : Atelier méthodologie — construire pas à pas le squelette d''un mémoire de Master 2 en Économie, de la question de recherche à la préparation de la soutenance.
Objectifs : appliquer concrètement, sur un exemple fictif complet, les étapes méthodologiques vues dans les trois vidéos précédentes du semestre.
Matériel : tableau ou diaporama, une feuille pour noter votre propre plan de mémoire en parallèle.
Prérequis : les trois vidéos précédentes de ce semestre (économie internationale, finance du développement, méthodologie du mémoire).

## Déroulé minuté

## 00:00 – 05:00 · Présentation de l''atelier

Bonjour et bienvenue dans cette quatrième et dernière vidéo de votre semestre de Master 2. Contrairement aux trois précédentes, cette séance est un atelier pratique : nous allons construire ensemble, étape par étape, le squelette méthodologique complet d''un mémoire fictif, en mobilisant à la fois la méthodologie de recherche et les deux matières économiques du semestre, l''économie internationale et la finance du développement. Munissez-vous d''une feuille pour noter, en parallèle, les étapes équivalentes de votre propre projet de mémoire.

## 05:00 – 20:00 · Étape 1 : du sujet vague à la question de recherche

Notre étudiant fictif, que nous appellerons Awa, part d''une idée vague : « je voudrais travailler sur le financement de l''agriculture dans mon pays ». Suivons ensemble la démarche de transformation de cette idée en question de recherche exploitable.

Première sous-étape : délimiter le secteur. Awa choisit de se concentrer sur une filière précise, par exemple la filière maraîchère, plutôt que « l''agriculture » en général, trop vaste pour un mémoire de Master.

Deuxième sous-étape : délimiter la zone géographique et la période. Awa choisit une zone de production précise et une période récente de quelques années, pour laquelle elle pourra raisonnablement espérer obtenir des données ou réaliser des entretiens.

Troisième sous-étape : préciser l''angle économique. Plutôt que de rester sur « le financement », trop général, Awa se demande ce qui l''intéresse vraiment dans ce thème. En repensant à ce qu''elle a appris sur la finance du développement, elle choisit de s''orienter vers l''évaluation de l''effet d''un instrument de financement précis, par exemple un programme de subvention ou de microcrédit agricole, sur un indicateur mesurable, par exemple le rendement ou le revenu des producteurs.

Résultat de cette étape : la question de recherche d''Awa devient : « Dans quelle mesure un programme de subvention agricole a-t-il affecté le rendement des producteurs maraîchers dans une zone de production donnée, sur la période récente ? » Vérifions les quatre critères : précise (filière, zone, période, indicateur), pertinente (enjeu réel de politique agricole), faisable (si des données de rendement avant et après le programme sont mobilisables), honnête (Awa ne connaît pas encore la réponse).

## 20:00 – 35:00 · Étape 2 : la revue de littérature et le cadrage théorique

Awa doit maintenant situer sa question par rapport à ce qui existe déjà. Elle mobilise deux champs théoriques vus ce semestre : d''une part, les instruments de financement du développement, pour situer la subvention agricole parmi les autres outils possibles, comme l''aide concessionnelle ou le crédit bancaire ; d''autre part, et surtout, les méthodes d''évaluation d''impact, pour comprendre comment la littérature économique évalue habituellement ce type de programme.

Rappel de la règle d''or : chaque référence que mentionnerait Awa dans sa revue de littérature doit avoir été réellement vérifiée par elle. Si elle n''a pas accès à une étude précise sur un programme comparable, elle doit rester prudente dans sa formulation, par exemple « des évaluations de programmes agricoles comparables, dans d''autres contextes, suggèrent souvent des effets positifs mais variables selon la conception du programme », plutôt que d''inventer un auteur ou un chiffre précis qu''elle ne maîtrise pas.

## 35:00 – 50:00 · Étape 3 : choisir et justifier la méthode

Awa a accès à des données de rendement avant et après le programme, à la fois dans la zone bénéficiaire du programme et dans une zone témoin comparable qui n''en a pas bénéficié. Cette situation de données correspond exactement à ce que nous avons étudié : la méthode de la différence de différences est donc adaptée à son cas, et elle doit le justifier explicitement dans son mémoire, en expliquant pourquoi elle dispose des deux groupes nécessaires (traité et témoin) et des deux périodes nécessaires (avant et après).

Simulons le calcul qu''Awa pourrait obtenir, avec des chiffres fictifs pour l''exercice : rendement moyen dans la zone bénéficiaire, avant = 20 sacs par hectare, après = 29 sacs par hectare ; rendement moyen dans la zone témoin, avant = 19, après = 23. Calculons ensemble : différence zone bénéficiaire, 29 moins 20, égal 9. Différence zone témoin, 23 moins 19, égal 4. Effet DID : 9 moins 4, égal 5 sacs par hectare, un effet net attribuable au programme.

## 50:00 – 55:00 · Pause et quiz interactif

Pause de cinq minutes. Premier exercice : si la zone témoin d''Awa avait connu une différence de 6 sacs par hectare au lieu de 4, quel serait le nouvel effet DID ? Deuxième exercice : pourquoi Awa doit-elle vérifier que sa zone témoin est réellement comparable à sa zone bénéficiaire, au-delà de la simple disponibilité des données ?

Correction : premièrement, nouvel effet DID égal 9 moins 6, égal 3 sacs par hectare, un effet plus faible, car une plus grande part de l''évolution de la zone bénéficiaire serait attribuée à une tendance générale partagée avec la zone témoin. Deuxièmement, parce que l''hypothèse des tendances parallèles, condition de validité de la méthode, n''est crédible que si les deux zones sont réellement similaires par ailleurs ; une zone témoin disponible mais peu comparable rendrait les résultats peu fiables, même si le calcul lui-même reste correct.

## 55:00 – 1:25:00 · Étape 4 : présenter honnêtement et préparer l''oral

Supposons maintenant qu''Awa obtienne, après analyse statistique complète, un effet DID qui reste faible et proche de la limite de significativité statistique sur son échantillon réel. Comment doit-elle présenter ce résultat dans son mémoire ? Elle doit l''annoncer clairement, discuter les raisons possibles de cette faible significativité, par exemple un échantillon de zones limité ou une forte variabilité climatique d''une année à l''autre, et éviter absolument de présenter son résultat comme plus solide qu''il ne l''est réellement.

Préparons maintenant, ensemble, le squelette de sa présentation orale de dix minutes. Minute 1 à 2 : présentation de la question de recherche et de sa pertinence pour la politique agricole régionale. Minute 2 à 4 : cadrage théorique rapide, instruments de financement et méthodes d''évaluation d''impact. Minute 4 à 6 : présentation de la méthode choisie et justification par rapport aux données disponibles. Minute 6 à 8 : présentation du résultat principal, avec ses limites assumées. Minute 8 à 10 : conclusion, implications pour la politique agricole, et pistes de recherche future.

Anticipons les questions du jury pour Awa : pourquoi cette filière et cette zone précises ? Pourquoi la méthode DID plutôt qu''une autre approche d''évaluation ? Quelle est la principale limite de son travail ? Que recommanderait-elle à un décideur public sur la base de ce résultat, en tenant compte de son incertitude ? Awa doit préparer des réponses construites à chacune, ancrées dans les choix réels de son mémoire.

## 1:25:00 – 1:30:00 · Synthèse finale et évaluation

Cet atelier a parcouru l''ensemble du processus méthodologique : de la question vague à la question précise, de la revue de littérature prudente au choix de méthode justifié, de la présentation honnête des résultats à la préparation structurée de la soutenance. C''est exactement cette démarche que vous devez appliquer à votre propre projet de mémoire dans les semaines qui viennent.

Question 1 : Quelles sont les trois sous-étapes pour transformer un sujet vague en question de recherche précise ?
Réponse : délimiter le secteur, délimiter la zone géographique et la période, préciser l''angle économique de l''analyse.

Question 2 : Pourquoi Awa choisit-elle la méthode de la différence de différences pour son mémoire ?
Réponse : parce qu''elle dispose de données avant et après le programme, à la fois pour une zone bénéficiaire et pour une zone témoin comparable, exactement la configuration de données requise par cette méthode.

Question 3 : Si l''effet DID recalculé avec une zone témoin différente passe de 5 à 3, que doit en conclure Awa sur la robustesse de son résultat ?
Réponse : que le résultat est sensible au choix du groupe témoin, ce qui doit l''inciter à discuter cette sensibilité comme une limite explicite de son travail plutôt qu''à la cacher.

Question 4 : Comment Awa doit-elle traiter un résultat statistiquement fragile dans son mémoire ?
Réponse : le présenter honnêtement, en discutant ses causes possibles, sans le présenter comme plus solide qu''il ne l''est réellement.

Question 5 : Citez deux questions que le jury pourrait poser à Awa lors de sa soutenance.
Réponse : pourquoi cette méthode plutôt qu''une autre approche d''évaluation ? quelle est la principale limite de son travail ? (toute reformulation pertinente de ces deux questions, ou d''autres questions cohérentes avec le cours, est acceptée).

Merci à toutes et à tous pour votre travail ce semestre, et bon courage pour la construction et la soutenance de votre propre mémoire de Master 2.', 'video', 90, false, 90
from public.courses c where c.slug = 'mas-eco-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Atelier méthodologie — construire son mémoire pas à pas');
