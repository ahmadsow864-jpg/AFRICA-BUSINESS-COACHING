-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Cours (partie 15/16). À exécuter après seed.sql.

-- Cours : Contrôle de gestion Master 2 : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'mas-cg-m2', (select id from public.levels where name = 'Master 2'), null, 'Contrôle de gestion', 'Contrôle de gestion Master 2 : réussir ses examens', 'Préparation aux examens de Master 2 en Contrôle de gestion : contrôle de gestion des groupes et consolidation du pilotage, audit de la performance et contrôle interne avancé, méthodologie du mémoire professionnel et de la soutenance. Études de cas de groupe sénégalais et africains fictifs, calculs vérifiés, sujet type d''examen corrigé, et quatre cours vidéo de 1h30 dont un atelier de simulation de soutenance.', true, 732
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Master 2 en Contrôle de gestion', 'Le Master 2 en Contrôle de gestion est l''année qui vous mène à la fois aux examens des matières avancées et, le plus souvent, à la soutenance d''un mémoire professionnel ou de recherche. Les enjeux changent de nature : vous devez démontrer une capacité d''analyse critique sur des situations de groupe complexes, et vous devez aussi être capable de défendre oralement un travail personnel devant un jury.

## Ce qui distingue le Master 2 du Master 1

En Master 1, vous avez appris à articuler plusieurs outils de contrôle de gestion pour piloter la performance d''une entreprise ou d''un groupe simple à deux filiales. En Master 2, l''échelle change : on raisonne au niveau d''un groupe à plusieurs filiales, parfois international, avec des enjeux de consolidation comptable et de pilotage de la performance consolidée. On ajoute également une dimension de contrôle et d''audit : vérifier que les chiffres produits par le contrôle de gestion sont fiables, que les processus internes maîtrisent les risques, et que le dispositif de contrôle interne du groupe est robuste.

Enfin, le Master 2 est généralement l''année du mémoire professionnel : un travail personnel, documenté, qui applique les méthodes de contrôle de gestion à un cas réel ou à une problématique précise, suivi d''une soutenance orale devant un jury. Réussir cette année suppose donc de maîtriser à la fois le contenu technique des matières et la méthode de production et de défense d''un mémoire.

## Les trois matières avancées de l''année

- Contrôle de gestion des groupes et consolidation du pilotage : maîtriser les mécanismes de consolidation (périmètre, méthodes, élimination des opérations intragroupe, intérêts minoritaires) du point de vue du contrôleur de gestion, et construire un reporting de pilotage consolidé cohérent avec ces retraitements.
- Audit de la performance et contrôle interne avancé : comprendre les démarches d''audit interne et d''audit de performance, les techniques de sondage et d''évaluation du contrôle interne, et savoir produire des recommandations d''amélioration.
- Méthodologie du mémoire professionnel et soutenance : construire une problématique, une démarche de recherche ou d''étude de cas, un plan rigoureux, et préparer une soutenance orale convaincante.

## Méthode de travail au niveau Master 2

Les études de cas de consolidation exigent une grande rigueur de présentation : schématisez toujours l''organigramme du groupe (quelle filiale, quel pourcentage de détention, quelle méthode de consolidation) avant de calculer quoi que ce soit. En audit de performance, prenez l''habitude de distinguer clairement le constat (ce que révèle le contrôle ou le sondage), la cause probable, le risque associé, et la recommandation : c''est la structure attendue d''un rapport d''audit, et c''est aussi celle qu''un correcteur attend dans une copie d''examen.

Pour le mémoire, la méthode de travail est différente d''un examen classique : il s''agit d''un travail long, étalé sur plusieurs mois, qui demande une problématique claire, une revue de la littérature ou des pratiques existantes, une méthode de collecte ou d''analyse des données explicite, et une discussion critique des résultats. La soutenance, quant à elle, se prépare comme un exercice oral à part entière : un temps de présentation limité (souvent 15 à 20 minutes), suivi de questions du jury, qui exigent une connaissance approfondie de votre propre travail et une capacité à argumenter sous pression.

## Plan de révision sur 6 semaines

- Semaine 1 : mécanismes de consolidation (périmètre, méthodes d''intégration, pourcentages de contrôle et d''intérêt).
- Semaine 2 : élimination des opérations intragroupe, calcul des intérêts minoritaires ; exercices chiffrés complets.
- Semaine 3 : audit interne, contrôle interne, démarche d''audit de performance, techniques de sondage.
- Semaine 4 : exercices de synthèse combinant consolidation et audit sur un cas de groupe complet.
- Semaine 5 : méthodologie du mémoire (problématique, plan, méthode) et préparation de la soutenance.
- Semaine 6 : sujet type complet en conditions chronométrées, puis simulation de soutenance (atelier méthodologie).

## Points clés à retenir

- La consolidation d''un groupe élimine les opérations intragroupe et répartit le résultat entre le groupe et les intérêts minoritaires selon le pourcentage de détention.
- L''audit de performance combine constat, cause, risque et recommandation ; les techniques de sondage permettent d''extrapoler un taux d''anomalie à une population entière.
- La réussite du mémoire professionnel repose autant sur la rigueur méthodologique du document écrit que sur la qualité de l''argumentation orale lors de la soutenance.
- Il n''y a pas de duplication entre les matières de M1 (performance globale, centres de responsabilité, systèmes d''information) et celles de M2 (consolidation, audit, mémoire) : chaque année ajoute un niveau de complexité propre.

## Exercices pratiques

1. Expliquez en quelques lignes pourquoi la consolidation d''un groupe à plusieurs filiales est un enjeu de contrôle de gestion et pas seulement un enjeu de comptabilité.
2. Citez les quatre éléments attendus dans la structuration d''un constat d''audit de performance.
3. Un groupe détient 70 % d''une filiale. Si le résultat consolidé retraité de cette filiale est de 240 725 000 FCFA, quelle est la part du groupe et quelle est la part des intérêts minoritaires ?
4. Quelle est la différence entre un mémoire professionnel et un mémoire de recherche, dans le contexte du Master 2 ?
5. Citez trois bonnes pratiques pour bien préparer l''oral de soutenance d''un mémoire.

## Corrigé

1. La consolidation détermine comment la performance de chaque filiale est agrégée et présentée au niveau du groupe : les choix de méthode de consolidation, de retraitement des opérations intragroupe, et de répartition entre groupe et intérêts minoritaires ont un effet direct sur les indicateurs de pilotage (résultat consolidé, ROI, EVA) que le contrôleur de gestion utilise pour évaluer la performance globale et celle de chaque filiale. C''est donc un enjeu de pilotage, qui dépasse la seule technique comptable.
2. Le constat (ce que révèle le contrôle), la cause probable (pourquoi cette situation existe), le risque associé (quelles conséquences si rien n''est fait), et la recommandation (l''action corrective proposée).
3. Part du groupe = 240 725 000 × 0,70 = 168 507 500 FCFA. Part des intérêts minoritaires = 240 725 000 × 0,30 = 72 217 500 FCFA.
4. Un mémoire professionnel s''appuie généralement sur une expérience ou un cas d''entreprise concret (souvent un stage ou une mission), avec un objectif d''application pratique des outils de contrôle de gestion ; un mémoire de recherche mobilise davantage une problématique théorique, une revue de littérature académique approfondie, et une méthode de collecte de données plus proche de la recherche en gestion. Les deux exigent rigueur méthodologique et esprit critique, mais leur finalité et leur public diffèrent.
5. Exemples acceptés : maîtriser parfaitement son propre travail (chiffres, méthode, limites) pour répondre sans hésitation aux questions du jury ; préparer et chronométrer sa présentation pour respecter le temps imparti ; anticiper les questions critiques probables (limites de la méthode, choix non retenus) et préparer des réponses argumentées plutôt que défensives. D''autres bonnes pratiques pertinentes sont acceptées.', 'texte', 45, true, 10
from public.courses c where c.slug = 'mas-cg-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Master 2 en Contrôle de gestion');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Contrôle de gestion des groupes et consolidation du pilotage : l''essentiel pour l''examen', 'Le contrôle de gestion des groupes prolonge la logique des centres de responsabilité et du prix de cession interne étudiée en Master 1, en l''appliquant à un ensemble de filiales dont les comptes doivent être consolidés pour donner une image fidèle de la performance du groupe dans son ensemble. Maîtriser les mécanismes de consolidation, du point de vue du contrôleur de gestion, est indispensable pour produire un reporting de pilotage consolidé cohérent.

## Le périmètre et les méthodes de consolidation

La consolidation regroupe les comptes de plusieurs entités juridiquement distinctes mais économiquement liées, pour présenter une situation financière et une performance globales du groupe. Le périmètre de consolidation dépend du pourcentage de contrôle (le pouvoir de décision) et du pourcentage d''intérêt (la part de capital détenue) de la société mère dans chaque filiale.

On distingue classiquement trois méthodes selon le niveau de contrôle : l''intégration globale, lorsque la société mère contrôle exclusivement la filiale (généralement une détention supérieure à 50 % des droits de vote), qui consiste à intégrer 100 % des actifs, passifs, charges et produits de la filiale, puis à faire apparaître la part des minoritaires séparément ; l''intégration proportionnelle, utilisée en cas de contrôle conjoint avec d''autres actionnaires, qui intègre les éléments de la filiale à hauteur du pourcentage d''intérêt du groupe ; et la mise en équivalence, utilisée en cas d''influence notable mais sans contrôle (généralement entre 20 % et 50 % des droits de vote), qui ne consolide pas les éléments ligne à ligne mais substitue la valeur des titres par une quote-part de la situation nette de l''entreprise associée.

Pour le contrôleur de gestion, la méthode retenue change radicalement la lecture du reporting consolidé : une filiale en intégration globale apparaît avec 100 % de son activité dans les agrégats du groupe (chiffre d''affaires, charges), alors qu''une filiale mise en équivalence n''apparaît que par une seule ligne de résultat net. Deux groupes de taille comparable peuvent donc afficher des niveaux de chiffre d''affaires très différents selon la nature de leurs participations, sans que cela reflète une différence réelle de taille économique.

## L''élimination des opérations intragroupe

Le principe fondamental de la consolidation, déjà rencontré en Master 1 avec le prix de cession interne, est l''élimination de toutes les opérations réalisées entre entités du même groupe : ventes intragroupe, marges sur stocks internes non encore vendus à des tiers, dividendes versés par une filiale à sa mère. Sans cette élimination, le groupe afficherait un chiffre d''affaires et un résultat artificiellement gonflés par des transactions qui n''ont créé aucune valeur avec l''extérieur.

Prenons un exemple chiffré. Le Groupe Teranga Agro-Industries détient 70 % de Teranga Distribution (intégration globale). Le résultat social de Teranga Distribution (dans ses comptes individuels) est de 249 900 000 FCFA. Mais le stock final de Teranga Distribution contient 500 tonnes de mil transformé achetées à Teranga Céréales au prix de cession interne négocié de 243 350 FCFA, alors que le coût complet réel de production chez Teranga Céréales est de 225 000 FCFA la tonne. Ce stock contient donc une marge interne de (243 350 − 225 000) × 500 = 9 175 000 FCFA, qui n''a pas encore été réalisée avec un client extérieur au groupe et doit être éliminée.

Le résultat de Teranga Distribution retraité pour la consolidation est donc de 249 900 000 − 9 175 000 = 240 725 000 FCFA. Ce résultat retraité est celui qui doit être réparti entre le groupe et les intérêts minoritaires, et non le résultat social initial.

## Les intérêts minoritaires

Lorsqu''une filiale est consolidée par intégration globale mais que la société mère ne détient pas 100 % de son capital, la part de capitaux propres et de résultat qui revient aux autres actionnaires est isolée dans une ligne spécifique du bilan et du compte de résultat consolidés : les intérêts minoritaires (ou participations ne donnant pas le contrôle).

Dans notre exemple, le groupe détient 70 % de Teranga Distribution. La part du groupe dans le résultat retraité de 240 725 000 FCFA est de 240 725 000 × 0,70 = 168 507 500 FCFA. La part des intérêts minoritaires est de 240 725 000 × 0,30 = 72 217 500 FCFA. De la même façon, si les capitaux propres consolidés retraités de Teranga Distribution (après élimination de la marge interne sur stock) s''élèvent, par exemple, à 1 490 825 000 FCFA, les intérêts minoritaires au bilan consolidé représentent 1 490 825 000 × 0,30 = 447 247 500 FCFA.

## L''enjeu de pilotage pour le contrôleur de gestion

Ces mécanismes ne sont pas qu''une contrainte comptable : ils ont un effet direct sur les indicateurs de pilotage. Le résultat consolidé part du groupe, et non le résultat social de chaque filiale, est la mesure de référence pour évaluer la création de valeur réellement captée par les actionnaires de la société mère. Un contrôleur de gestion de groupe doit donc toujours raisonner sur des données retraitées (après élimination des marges internes), et jamais sur une simple addition des résultats sociaux de chaque filiale, qui surestimerait systématiquement la performance réelle du groupe tant qu''il subsiste des stocks internes non écoulés à l''extérieur.

## Points clés à retenir

- Le périmètre et la méthode de consolidation (intégration globale, proportionnelle, mise en équivalence) dépendent du niveau de contrôle et modifient radicalement la lecture du reporting consolidé.
- Les opérations intragroupe doivent être systématiquement éliminées, en particulier la marge interne incluse dans les stocks non encore vendus à des tiers.
- Les intérêts minoritaires isolent la part de résultat et de capitaux propres qui revient aux actionnaires autres que la société mère, en proportion de leur détention.
- Le contrôleur de gestion doit piloter la performance du groupe sur des données consolidées et retraitées, jamais sur une simple addition des résultats sociaux de chaque filiale.

## Exercices pratiques

1. Expliquez la différence entre pourcentage de contrôle et pourcentage d''intérêt, et pourquoi cette distinction détermine la méthode de consolidation à appliquer.
2. Un groupe détient 55 % des droits de vote d''une filiale, en contrôle conjoint avec un autre actionnaire qui détient les 45 % restants, dans un accord de contrôle partagé. Quelle méthode de consolidation serait a priori applicable, et que signifierait-elle concrètement pour les agrégats du groupe ?
3. Un groupe détient 60 % d''une filiale dont le résultat social est de 140 000 000 FCFA, incluant une marge interne à éliminer de 18 000 000 FCFA sur un stock non encore vendu à l''extérieur. Calculez le résultat consolidé retraité de la filiale, puis la part du groupe et les intérêts minoritaires.
4. Pourquoi une addition pure et simple des résultats sociaux de toutes les filiales d''un groupe peut-elle surestimer la performance réelle du groupe ?
5. Un groupe envisage de réduire sa détention dans une filiale de 65 % à 45 %, en cédant 20 % du capital à un investisseur extérieur. Expliquez en quelques lignes comment ce changement de pourcentage de détention pourrait modifier la méthode de consolidation applicable et la lecture du reporting du groupe.

## Corrigé

1. Le pourcentage de contrôle mesure le pouvoir de décision (généralement lié aux droits de vote), tandis que le pourcentage d''intérêt mesure la part de capital et donc de résultat financier détenue. La méthode de consolidation dépend avant tout du niveau de contrôle : un contrôle exclusif conduit à l''intégration globale, un contrôle conjoint à l''intégration proportionnelle, une influence notable sans contrôle à la mise en équivalence, quel que soit le pourcentage d''intérêt exact dans chaque cas.
2. Un contrôle conjoint entre deux actionnaires à parts proches relève a priori de l''intégration proportionnelle : les éléments de la filiale (actifs, passifs, charges, produits) seraient intégrés dans les comptes du groupe à hauteur de son pourcentage d''intérêt, ici 55 %, et non à 100 % comme en intégration globale. Les agrégats du groupe (chiffre d''affaires, charges) n''intégreraient donc qu''une fraction de l''activité de la filiale, proportionnelle à la détention du groupe, sans ligne d''intérêts minoritaires puisque chaque coactionnaire n''intègre que sa propre quote-part.
3. Résultat consolidé retraité = 140 000 000 − 18 000 000 = 122 000 000 FCFA. Part du groupe = 122 000 000 × 0,60 = 73 200 000 FCFA. Intérêts minoritaires = 122 000 000 × 0,40 = 48 800 000 FCFA.
4. Parce qu''une telle addition inclut le résultat social de chaque filiale sans éliminer les opérations intragroupe, en particulier les marges internes sur les stocks non encore vendus à des clients extérieurs au groupe ; ces marges ne constituent pas une création de valeur réelle pour le groupe tant qu''elles ne sont pas réalisées avec l''extérieur, et leur maintien dans l''addition surestime donc la performance réelle, parfois significativement si les volumes de stocks internes sont importants.
5. Une détention ramenée de 65 % à 45 % fait probablement perdre au groupe le contrôle exclusif de la filiale, qui passerait d''une intégration globale (100 % des agrégats intégrés, avec intérêts minoritaires) à une mise en équivalence si le groupe ne conserve qu''une influence notable sans contrôle (généralement le cas entre 20 % et 50 %). Dans ce cas, la filiale n''apparaîtrait plus ligne à ligne dans les comptes consolidés : son chiffre d''affaires et ses charges disparaîtraient des agrégats du groupe, remplacés par une seule ligne de résultat net correspondant à la quote-part du groupe dans son résultat. Le chiffre d''affaires consolidé du groupe baisserait donc mécaniquement, sans que l''activité économique réelle du groupe élargi (filiale incluse) n''ait changé, ce qui impose au contrôleur de gestion d''expliquer clairement cet effet de périmètre à la direction générale pour éviter une lecture erronée de la performance.', 'texte', 45, false, 20
from public.courses c where c.slug = 'mas-cg-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Contrôle de gestion des groupes et consolidation du pilotage : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Audit de la performance et contrôle interne avancé : l''essentiel pour l''examen', 'L''audit de la performance et le contrôle interne avancé complètent la panoplie du contrôleur de gestion de Master 2 : il ne s''agit plus seulement de produire des indicateurs de pilotage, mais de vérifier la fiabilité des processus et des données qui alimentent ces indicateurs, et de proposer des recommandations d''amélioration argumentées.

## Le contrôle interne : définition et composantes

Le contrôle interne désigne l''ensemble des dispositifs mis en place par une organisation pour maîtriser ses risques et atteindre ses objectifs : fiabilité de l''information financière, efficacité et efficience des opérations, conformité aux lois et règlements. Un dispositif de contrôle interne robuste repose sur plusieurs composantes complémentaires : un environnement de contrôle (culture, valeurs, organisation claire des responsabilités), une évaluation des risques (identification et hiérarchisation des risques qui menacent les objectifs), des activités de contrôle (procédures, séparation des tâches, autorisations), une information et communication fiables, et un pilotage ou suivi régulier du dispositif lui-même.

Le contrôleur de gestion n''est pas l''auditeur du contrôle interne, mais il en est un utilisateur et souvent un contributeur direct : la fiabilité du contrôle interne conditionne directement la fiabilité des données qu''il utilise pour construire ses tableaux de bord et ses analyses d''écarts. Un contrôle interne défaillant sur le processus de saisie des ventes, par exemple, peut produire des indicateurs de performance commerciale trompeurs.

## L''audit interne et l''audit de performance

L''audit interne est une fonction indépendante qui évalue, de façon systématique et méthodique, les processus de gestion des risques, de contrôle et de gouvernance d''une organisation, et formule des recommandations pour les améliorer. L''audit de performance, qui intéresse particulièrement le contrôleur de gestion, se concentre sur l''efficacité et l''efficience d''un processus ou d''une activité : utilise-t-on les ressources de façon économe, les objectifs sont-ils atteints, les procédures en place permettent-elles d''atteindre ces objectifs de façon fiable ?

Un rapport d''audit de performance suit généralement une structure en quatre éléments pour chaque point relevé : le constat, c''est-à-dire ce que révèle objectivement le contrôle ou l''observation ; la cause probable, c''est-à-dire pourquoi cette situation existe (procédure mal conçue, absence de contrôle, erreur humaine répétée) ; le risque associé, c''est-à-dire les conséquences possibles si rien n''est corrigé ; et la recommandation, c''est-à-dire l''action corrective concrète proposée, idéalement assortie d''un responsable et d''un délai de mise en œuvre.

## Les techniques de sondage en audit

Faute de pouvoir contrôler l''intégralité d''une population d''opérations (toutes les factures, toutes les commandes), l''auditeur recourt fréquemment à des techniques de sondage : il contrôle un échantillon représentatif, mesure un taux d''anomalie dans cet échantillon, puis extrapole ce taux à la population entière pour estimer l''ampleur du problème.

Prenons un exemple chiffré. Un auditeur contrôle un échantillon de 80 factures parmi une population de 2 400 factures émises sur l''année par une filiale du Groupe Teranga Agro-Industries. Il constate 6 anomalies (erreurs de tarification, de remise ou d''imputation comptable) dans cet échantillon. Le taux d''anomalie dans l''échantillon est de 6 / 80 = 0,075, soit 7,5 %. En appliquant ce taux à la population entière, le nombre d''anomalies extrapolées est de 0,075 × 2 400 = 180 factures potentiellement affectées.

Ce chiffre de 180 factures ne signifie pas que l''auditeur a identifié précisément 180 erreurs : c''est une estimation statistique, qui dépend de la représentativité de l''échantillon et de sa taille. Un échantillon trop petit, ou mal constitué (par exemple en ne sélectionnant que les plus grosses factures), produirait une extrapolation peu fiable. C''est pourquoi la méthode de constitution de l''échantillon (sondage aléatoire, stratifié selon les montants, ou autre) doit être documentée et justifiée dans le rapport d''audit, et le niveau de confiance statistique de l''extrapolation doit être explicitement discuté plutôt que présenté comme une certitude.

## Du constat d''audit à la recommandation

Reprenons notre exemple pour construire un constat d''audit complet. Constat : un taux d''anomalie de tarification de 7,5 % a été relevé sur un échantillon de factures, extrapolé à environ 180 factures sur l''année pour l''ensemble de la population. Cause probable : l''absence de contrôle de second niveau systématique sur les remises commerciales accordées par les commerciaux avant facturation. Risque associé : une perte financière cumulée potentiellement significative sur l''année, ainsi qu''un risque de traitement inéquitable entre clients si les remises ne suivent pas une grille cohérente. Recommandation : mettre en place un contrôle de second niveau obligatoire au-delà d''un certain seuil de remise, avec validation par un responsable hiérarchique avant émission de la facture, et un audit de suivi six mois plus tard pour vérifier la baisse du taux d''anomalie.

Cette structuration en quatre temps (constat, cause, risque, recommandation) est exactement celle que les correcteurs attendent dans vos réponses d''examen face à un cas d''audit de performance : une réponse qui se limite au constat chiffré, sans cause ni recommandation opérationnelle, reste incomplète.

## Points clés à retenir

- Le contrôle interne repose sur cinq composantes complémentaires (environnement de contrôle, évaluation des risques, activités de contrôle, information et communication, pilotage) et conditionne la fiabilité des données du contrôle de gestion.
- Un rapport d''audit de performance structure chaque point en quatre temps : constat, cause probable, risque associé, recommandation.
- Les techniques de sondage permettent d''extrapoler un taux d''anomalie observé sur un échantillon à l''ensemble d''une population, à condition que l''échantillon soit représentatif et sa méthode de constitution documentée.
- L''extrapolation statistique d''un sondage est une estimation, pas une certitude, et son niveau de confiance doit être explicitement discuté.

## Exercices pratiques

1. Citez les cinq composantes classiques du contrôle interne.
2. Expliquez la structure en quatre temps attendue dans un rapport d''audit de performance (constat, cause, risque, recommandation) en illustrant chaque élément par un exemple.
3. Un auditeur contrôle un échantillon de 60 bons de commande parmi une population de 1 800 bons, et constate 3 anomalies. Calculez le taux d''anomalie de l''échantillon et le nombre d''anomalies extrapolées à la population.
4. Pourquoi la méthode de constitution d''un échantillon (aléatoire, stratifié, ou autre) doit-elle être documentée dans un rapport d''audit ?
5. Expliquez pourquoi le contrôleur de gestion, bien qu''il ne soit pas lui-même l''auditeur du contrôle interne, est directement concerné par la qualité de ce dispositif.
6. Cas pratique complet : un audit de performance sur le processus de gestion des stocks d''une filiale du Groupe Teranga Agro-Industries révèle un écart de 4,2 % entre les quantités théoriques en stock (selon le système d''information) et les quantités réellement comptées lors d''un inventaire physique. Rédigez un constat d''audit complet (constat, cause probable, risque associé, recommandation) en quatre à six lignes.

## Corrigé

1. Environnement de contrôle, évaluation des risques, activités de contrôle, information et communication, pilotage (suivi du dispositif).
2. Constat : description objective et chiffrée de ce que révèle le contrôle, par exemple un taux d''anomalie de 7,5 % sur un échantillon de factures. Cause probable : explication plausible de la situation, par exemple l''absence de contrôle de second niveau sur les remises commerciales. Risque associé : conséquence possible si rien n''est corrigé, par exemple une perte financière cumulée ou un traitement inéquitable entre clients. Recommandation : action corrective concrète, par exemple la mise en place d''un contrôle de validation obligatoire au-delà d''un seuil de remise.
3. Taux d''anomalie = 3 / 60 = 0,05, soit 5 %. Anomalies extrapolées = 0,05 × 1 800 = 90 bons de commande.
4. Parce que la fiabilité de l''extrapolation du taux d''anomalie à la population entière dépend directement de la représentativité de l''échantillon ; un échantillon mal constitué (par exemple en sélectionnant uniquement les transactions les plus simples à contrôler, ou les plus importantes en montant) produirait une estimation biaisée, qui ne reflète pas fidèlement le taux d''anomalie réel sur l''ensemble de la population.
5. Parce que la fiabilité des indicateurs de pilotage (tableaux de bord, analyses d''écarts, calculs de ROI ou d''EVA) dépend directement de la fiabilité des données produites par les processus opérationnels. Si le contrôle interne de ces processus est défaillant (par exemple une saisie des ventes non fiabilisée), les indicateurs construits par le contrôleur de gestion à partir de ces données seront eux-mêmes trompeurs, même si le calcul de l''indicateur lui-même est techniquement correct.
6. Constat : un écart de 4,2 % a été relevé entre les quantités théoriques en stock selon le système d''information et les quantités réellement comptées à l''inventaire physique. Cause probable : des mouvements de stock non ou mal enregistrés dans le système (sorties non saisies, erreurs de référence produit). Risque associé : une mauvaise estimation du coût des stocks dans les états financiers et dans le calcul des coûts complets, et un risque de rupture de stock non anticipée. Recommandation : renforcer la fréquence des inventaires tournants et le contrôle de concordance entre mouvements physiques et mouvements système, avec un responsable désigné pour le suivi mensuel de l''écart.', 'texte', 45, false, 30
from public.courses c where c.slug = 'mas-cg-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Audit de la performance et contrôle interne avancé : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Méthodologie du mémoire professionnel et de la soutenance : l''essentiel pour l''examen', 'La méthodologie du mémoire professionnel et de la soutenance est une matière à part dans votre parcours de Master 2 : elle ne porte pas sur une technique de contrôle de gestion particulière, mais sur la façon de construire, rédiger et défendre un travail personnel qui mobilise l''ensemble des compétences acquises durant votre formation.

## Choisir et formuler une problématique

Le mémoire professionnel part d''une problématique : une question précise, à laquelle le mémoire doit répondre de façon argumentée, en mobilisant des concepts de contrôle de gestion et une analyse de terrain (cas d''entreprise, stage, mission). Une bonne problématique est spécifique (elle porte sur une situation ou un enjeu précis, pas sur un sujet trop vaste comme « le contrôle de gestion dans les entreprises africaines »), elle est pertinente au regard des enjeux de l''entreprise ou du secteur étudié, et elle est traitable dans le temps et avec les moyens dont vous disposez réellement pour réaliser le mémoire.

Un exemple de problématique bien formulée, dans l''esprit des cas étudiés cette année : « Dans quelle mesure la mise en place d''un système d''information décisionnel unifié peut-elle améliorer la fiabilité du reporting consolidé d''un groupe agro-industriel sénégalais à plusieurs filiales ? » Cette formulation est spécifique (un type de groupe, un enjeu précis), ancrée dans un cas concret, et suffisamment délimitée pour être traitée dans le cadre d''un mémoire.

## Construire un plan de mémoire rigoureux

Le plan d''un mémoire professionnel suit généralement une logique en trois temps. Une première partie pose le cadre théorique et le contexte : revue des concepts et outils de contrôle de gestion mobilisés, présentation du secteur et de l''entreprise étudiée. Une deuxième partie présente la méthode d''étude retenue (étude de cas, entretiens, analyse de données internes) et les résultats obtenus, avec les preuves et les données chiffrées qui les étayent. Une troisième partie discute ces résultats de façon critique : que signifient-ils pour l''entreprise ? quelles sont les limites de l''étude ? quelles recommandations peut-on en tirer, et avec quelles réserves ?

Cette troisième partie est souvent la plus faible dans les mémoires d''étudiants, par manque d''habitude de la distance critique : beaucoup se contentent de décrire leurs résultats sans les discuter réellement. Or c''est précisément cette capacité de discussion critique, et non la seule description des faits, qui différencie un mémoire de bon niveau d''un mémoire simplement correct.

## La revue de la littérature ou des pratiques existantes

Avant de présenter vos propres résultats, un mémoire doit situer son apport par rapport à ce qui existe déjà : des travaux académiques sur le sujet, des référentiels professionnels (normes, guides de bonnes pratiques), ou des pratiques observées dans d''autres entreprises comparables. Cette revue ne doit jamais se limiter à une liste de résumés juxtaposés : elle doit construire un raisonnement qui identifie ce qui est déjà connu, ce qui reste discuté ou mal résolu, et la place que votre propre travail vient occuper dans cet ensemble. Attention, par ailleurs, à ne jamais inventer de référence ou de citation que vous n''avez pas effectivement consultée : toute source mobilisée doit être réelle et vérifiable, sous peine de fragiliser gravement la crédibilité de l''ensemble du mémoire devant le jury.

## Préparer la soutenance orale

La soutenance est un exercice oral distinct de la rédaction du mémoire, qui obéit à ses propres règles. Le temps de présentation est généralement limité (souvent 15 à 20 minutes, à vérifier selon les modalités propres à votre établissement), ce qui impose de sélectionner l''essentiel plutôt que de résumer l''intégralité du mémoire : la problématique, la méthode en quelques mots, les deux ou trois résultats les plus significatifs, et les recommandations principales.

La seconde partie de la soutenance, les questions du jury, est souvent celle qui différencie le plus les candidats. Le jury cherche à vérifier que vous maîtrisez réellement votre travail (et pas seulement que vous l''avez récité), en posant des questions sur vos choix méthodologiques, sur les limites de votre étude, ou sur des approfondissements possibles. Trois attitudes sont à privilégier : répondre avec précision plutôt que de façon évasive, assumer les limites de votre travail plutôt que de les nier (un bon candidat connaît les faiblesses de son propre mémoire et peut les expliquer), et rester calme même face à une question qui déstabilise, en prenant quelques secondes de réflexion avant de répondre plutôt que de répondre dans la précipitation.

## Points clés à retenir

- Une bonne problématique de mémoire est spécifique, pertinente et traitable avec les moyens réellement disponibles.
- Le plan en trois temps (cadre et contexte, méthode et résultats, discussion critique) structure un mémoire professionnel rigoureux ; la discussion critique est souvent le point faible à travailler en priorité.
- La revue de la littérature ou des pratiques doit construire un raisonnement, jamais une simple juxtaposition de résumés, et ne doit jamais s''appuyer sur des sources inventées.
- La soutenance exige une sélection de l''essentiel dans le temps imparti, et une capacité à répondre avec précision et sans défensive aux questions du jury.

## Exercices pratiques

1. Reformulez la problématique suivante, jugée trop vague, pour la rendre spécifique et traitable : « Le contrôle de gestion dans les entreprises sénégalaises ».
2. Décrivez les trois grandes parties attendues dans le plan d''un mémoire professionnel de contrôle de gestion.
3. Pourquoi la troisième partie d''un mémoire (discussion critique) est-elle souvent la plus faible chez les étudiants, et comment y remédier ?
4. Citez deux attitudes à privilégier et une attitude à éviter lors des questions du jury en soutenance.
5. Expliquez pourquoi inventer une référence ou une citation dans un mémoire est une faute grave, même si elle semble anodine ou si elle « sonne bien » dans le texte.

## Corrigé

1. Exemple de reformulation acceptable : « Comment une PME sénégalaise du secteur agro-industriel peut-elle mettre en place un contrôle budgétaire simple et adapté à ses moyens, pour mieux maîtriser sa trésorerie ? » Cette version est spécifique (un secteur, un outil précis, un objectif clair), contrairement à la version initiale beaucoup trop générale. D''autres reformulations spécifiques et cohérentes sont acceptées.
2. Première partie : cadre théorique et contexte (concepts mobilisés, présentation du secteur et de l''entreprise). Deuxième partie : méthode d''étude retenue et résultats obtenus, avec les données qui les étayent. Troisième partie : discussion critique des résultats (portée, limites, recommandations).
3. Elle est souvent la plus faible par manque d''habitude de la distance critique : les étudiants se contentent fréquemment de décrire leurs résultats sans les interroger. Pour y remédier, il faut systématiquement se poser trois questions après chaque résultat présenté : qu''est-ce que ce résultat signifie réellement pour l''entreprise ? quelles sont les limites de la méthode utilisée pour l''obtenir ? et quelles réserves faut-il apporter à toute recommandation qui en découle ?
4. Attitudes à privilégier : répondre avec précision plutôt que de façon évasive, et assumer les limites de son propre travail plutôt que de les nier. Attitude à éviter : répondre dans la précipitation, sans prendre quelques secondes de réflexion face à une question qui déstabilise, ce qui conduit souvent à des réponses imprécises ou contradictoires avec le contenu du mémoire.
5. Parce qu''un mémoire professionnel engage la crédibilité académique et professionnelle de son auteur : une référence inventée, si elle est découverte par le jury (par une simple vérification), détruit la confiance accordée à l''ensemble du travail, y compris aux parties qui étaient par ailleurs solides et bien menées. Au-delà de la sanction académique possible, c''est une faute d''intégrité intellectuelle qui n''a pas sa place dans un travail présenté comme personnel et vérifié.', 'texte', 45, false, 40
from public.courses c where c.slug = 'mas-cg-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Méthodologie du mémoire professionnel et de la soutenance : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Master 2 en Contrôle de gestion (corrigé)', 'Ce sujet type regroupe les deux matières techniques avancées du Master 2 en Contrôle de gestion : le contrôle de gestion des groupes et la consolidation du pilotage, et l''audit de la performance et le contrôle interne avancé. La méthodologie du mémoire, de nature différente, est traitée séparément dans le cours vidéo d''atelier de cette année. Ce sujet n''a pas de valeur officielle et le barème est purement indicatif.

## Présentation du cas

Le Groupe Baobab Industries (groupe fictif sénégalais) regroupe une société mère et une filiale, Baobab Logistique, détenue à 65 %, consolidée par intégration globale. Baobab Logistique vend des prestations de transport à d''autres entités du groupe, et une partie de ses coûts est, par ailleurs, soumise à un audit de performance portant sur la gestion de son parc de véhicules.

Données de consolidation : le résultat social de Baobab Logistique est de 165 000 000 FCFA. Ce résultat inclut une marge interne de 14 500 000 FCFA sur des prestations facturées à une autre filiale du groupe, non encore intégralement consommées par celle-ci à la clôture de l''exercice, qui doit être éliminée. Les capitaux propres sociaux de Baobab Logistique avant retraitement sont de 420 000 000 FCFA.

Données d''audit : un auditeur interne contrôle un échantillon de 50 ordres de mission parmi une population de 1 500 ordres de mission émis sur l''année pour les chauffeurs de Baobab Logistique, et constate 4 anomalies (kilomètres facturés non justifiés par le carnet de bord, ou incohérents avec le trajet déclaré).

## Questions (barème indicatif sur 20)

1. (3 points) Calculez le résultat consolidé retraité de Baobab Logistique après élimination de la marge interne, puis la part du groupe et la part des intérêts minoritaires dans ce résultat.
2. (2 points) Calculez les intérêts minoritaires au bilan consolidé sur les capitaux propres, en supposant que les capitaux propres retraités après élimination de la marge interne s''élèvent à 405 500 000 FCFA.
3. (2 points) Expliquez en trois ou quatre lignes pourquoi l''élimination de la marge interne sur les prestations non consommées est nécessaire avant de répartir le résultat entre groupe et intérêts minoritaires.
4. (3 points) Calculez le taux d''anomalie de l''échantillon d''ordres de mission, puis le nombre d''anomalies extrapolées à la population entière.
5. (4 points) Rédigez un constat d''audit complet (constat, cause probable, risque associé, recommandation) pour la situation révélée à la question 4.
6. (3 points) En quoi la fiabilité du dispositif de contrôle interne sur les ordres de mission de Baobab Logistique peut-elle avoir un effet direct sur la fiabilité du résultat consolidé calculé à la question 1 ? Justifiez par un mécanisme précis.
7. (3 points) Rédigez une synthèse argumentée (huit à dix lignes) qui relie les résultats de consolidation et d''audit pour formuler une recommandation prioritaire à la direction générale du groupe.

## Corrigé détaillé

1. Résultat consolidé retraité = 165 000 000 − 14 500 000 = 150 500 000 FCFA. Part du groupe = 150 500 000 × 0,65 = 97 825 000 FCFA. Intérêts minoritaires = 150 500 000 × 0,35 = 52 675 000 FCFA.
2. Intérêts minoritaires au bilan = 405 500 000 × 0,35 = 141 925 000 FCFA.
3. Sans cette élimination, le résultat consolidé intégrerait une marge réalisée sur une opération interne au groupe, qui n''a pas encore été validée par une consommation ou une revente à l''extérieur du groupe. Cette marge ne correspond à aucune création de valeur réelle avec un tiers extérieur à la date de clôture, et son maintien dans le résultat consolidé surestimerait la performance réelle du groupe, ainsi que la part effectivement attribuable aux actionnaires de la société mère et aux intérêts minoritaires.
4. Taux d''anomalie = 4 / 50 = 0,08, soit 8 %. Anomalies extrapolées = 0,08 × 1 500 = 120 ordres de mission.
5. Constat : un taux d''anomalie de 8 % a été relevé sur un échantillon d''ordres de mission, portant sur des kilomètres facturés non justifiés ou incohérents avec le trajet déclaré, extrapolé à environ 120 ordres de mission sur l''année. Cause probable : l''absence de contrôle systématique de cohérence entre le carnet de bord des chauffeurs et les kilomètres facturés aux filiales clientes. Risque associé : une surfacturation possible des prestations de transport entre filiales, qui fausserait à la fois les coûts supportés par les filiales clientes et le prix de cession interne réellement pratiqué. Recommandation : mettre en place un contrôle de cohérence systématique entre carnet de bord et facturation avant validation de chaque ordre de mission, avec un audit de suivi dans les six mois.
6. Si les kilomètres facturés par Baobab Logistique à d''autres filiales sont surfacturés, la marge intragroupe réellement réalisée par Baobab Logistique est artificiellement gonflée. Cette marge, bien qu''intragroupe et destinée à être éliminée en consolidation, doit d''abord être correctement identifiée et chiffrée pour être éliminée à son juste montant ; si le contrôle interne ne permet pas de détecter la surfacturation, le montant de la marge interne à éliminer (14 500 000 FCFA dans cet exemple) pourrait lui-même être sous-estimé ou mal documenté, ce qui fragiliserait la fiabilité du résultat consolidé retraité calculé à la question 1, indépendamment même de la question de la répartition entre groupe et minoritaires.
7. Synthèse attendue : les deux volets du cas, consolidation et audit, ne doivent pas être traités de façon indépendante. L''audit révèle un taux d''anomalie significatif (8 %) sur la facturation intragroupe de transport, ce qui questionne directement la fiabilité du montant de marge interne éliminé lors de la consolidation (14 500 000 FCFA) : si une partie de cette marge résulte d''une surfacturation non détectée, le résultat consolidé retraité de 150 500 000 FCFA pourrait lui-même être imprécis, avec un effet direct sur la part attribuée au groupe et aux intérêts minoritaires. La recommandation prioritaire à la direction générale est donc de traiter ces deux enjeux de façon coordonnée : renforcer en urgence le contrôle interne sur la facturation intragroupe de transport (cohérence carnet de bord et facturation), puis revoir, une fois ce contrôle fiabilisé, le montant exact de marge interne à éliminer lors de la prochaine clôture consolidée, plutôt que de considérer les deux chantiers comme indépendants.

## Exercices pratiques complémentaires

1. Si le pourcentage de détention du groupe dans Baobab Logistique passait de 65 % à 100 % (rachat des parts minoritaires), quel type de ligne disparaîtrait du bilan et du compte de résultat consolidés, et pourquoi ?
2. Proposez une action de contrôle interne préventive (avant même tout audit) qui aurait pu réduire le taux d''anomalie constaté à la question 4 de l''exercice principal.

## Corrigé

1. La ligne des intérêts minoritaires (au bilan et au compte de résultat consolidés) disparaîtrait, puisque le groupe détiendrait 100 % du capital de Baobab Logistique : il n''y aurait alors plus aucun autre actionnaire dont la part de capitaux propres ou de résultat devrait être isolée séparément de celle du groupe.
2. Exemple de réponse acceptée : la mise en place d''un système de géolocalisation des véhicules, croisé automatiquement avec les kilomètres facturés, qui aurait permis de détecter les incohérences dès la saisie, avant même la facturation, plutôt que de les découvrir a posteriori lors d''un audit. Toute autre action de contrôle préventif pertinente et correctement justifiée est acceptée.', 'texte', 45, false, 50
from public.courses c where c.slug = 'mas-cg-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Master 2 en Contrôle de gestion (corrigé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Contrôle de gestion des groupes et consolidation du pilotage', '## Fiche du cours vidéo

Durée : 1h30. Public : étudiants de Master 2 en Contrôle de gestion. Objectifs : maîtriser les méthodes de consolidation d''un groupe (périmètre, intégration globale, proportionnelle, mise en équivalence), savoir éliminer les opérations intragroupe et calculer les intérêts minoritaires, comprendre l''enjeu de ces mécanismes pour le pilotage de la performance consolidée. Prérequis : prix de cession interne et centres d''investissement vus en Master 1. Matériel : tableau ou diaporama, calculatrice, le cas du Groupe Teranga Agro-Industries.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et mise en perspective

Bonjour à toutes et à tous. Nous commençons le premier des trois cours vidéo du Master 2, consacré au contrôle de gestion des groupes et à la consolidation du pilotage. Vous avez vu en Master 1 comment évaluer la performance de centres de responsabilité au sein d''un groupe simple à deux filiales, avec le prix de cession interne. Aujourd''hui, nous allons voir comment ces mécanismes s''articulent avec les règles de consolidation comptable, qui déterminent la façon dont la performance de chaque filiale est agrégée pour donner une vision globale du groupe.

Plan de la séance : le périmètre et les méthodes de consolidation ; l''élimination des opérations intragroupe, avec un calcul chiffré complet ; les intérêts minoritaires ; un quiz à mi-séance ; puis un cas pratique complet et l''évaluation finale.

## 05:00 – 20:00 · Le périmètre et les méthodes de consolidation

La consolidation regroupe les comptes de plusieurs entités juridiquement distinctes mais économiquement liées, pour présenter une image globale du groupe. Trois méthodes existent, selon le niveau de contrôle de la société mère sur chaque filiale.

L''intégration globale s''applique en cas de contrôle exclusif, généralement une détention supérieure à 50 % des droits de vote : on intègre 100 % des actifs, passifs, charges et produits de la filiale, puis on isole la part des minoritaires séparément. L''intégration proportionnelle s''applique en cas de contrôle conjoint avec d''autres actionnaires : on intègre les éléments de la filiale seulement à hauteur du pourcentage d''intérêt du groupe. La mise en équivalence s''applique en cas d''influence notable sans contrôle, généralement entre 20 % et 50 % des droits de vote : on ne consolide pas ligne à ligne, on substitue la valeur des titres par une quote-part de la situation nette de l''entreprise associée.

Voici un point essentiel pour l''examen : la méthode retenue change radicalement la lecture du reporting. Une filiale en intégration globale apparaît avec 100 % de son activité dans les agrégats du groupe. Une filiale mise en équivalence n''apparaît que par une seule ligne de résultat net. Deux groupes de taille économique comparable peuvent donc afficher des chiffres d''affaires consolidés très différents selon la nature de leurs participations, sans différence réelle de taille économique sous-jacente. Vous devez toujours vérifier, face à un cas, quelle méthode s''applique à chaque filiale avant de faire le moindre calcul.

## 20:00 – 40:00 · L''élimination des opérations intragroupe : calcul complet

Le principe fondamental de la consolidation est l''élimination de toutes les opérations réalisées entre entités du même groupe. Sans cette élimination, le groupe afficherait un résultat artificiellement gonflé par des transactions qui n''ont créé aucune valeur avec l''extérieur.

Faisons le calcul ensemble sur le cas du Groupe Teranga Agro-Industries. Le groupe détient 70 % de Teranga Distribution, consolidée par intégration globale. Le résultat social de Teranga Distribution, dans ses comptes individuels, est de 249 900 000 FCFA. Mais le stock final de Teranga Distribution contient 500 tonnes de mil transformé achetées à Teranga Céréales au prix de cession interne négocié de 243 350 FCFA, alors que le coût complet réel de production chez Teranga Céréales est de 225 000 FCFA la tonne.

Calculons la marge interne incluse dans ce stock : (243 350 moins 225 000) fois 500, soit 18 350 fois 500, soit 9 175 000 FCFA. Cette marge n''a pas encore été réalisée avec un client extérieur au groupe, puisque le produit est toujours en stock chez Teranga Distribution : elle doit donc être éliminée.

Le résultat de Teranga Distribution retraité pour la consolidation est donc de 249 900 000 moins 9 175 000, soit 240 725 000 FCFA. C''est ce résultat retraité, et non le résultat social initial de 249 900 000 FCFA, qui doit être réparti entre le groupe et les intérêts minoritaires. Notez bien ce point : l''erreur la plus fréquente en examen consiste à oublier cette étape de retraitement et à répartir directement le résultat social, ce qui fausse tout le calcul qui suit.

## 40:00 – 50:00 · Les intérêts minoritaires

Lorsqu''une filiale est consolidée par intégration globale mais que la société mère ne détient pas 100 % de son capital, la part qui revient aux autres actionnaires est isolée dans une ligne spécifique : les intérêts minoritaires.

Reprenons notre exemple. Le groupe détient 70 % de Teranga Distribution. La part du groupe dans le résultat retraité de 240 725 000 FCFA est de 240 725 000 fois 0,70, soit 168 507 500 FCFA. La part des intérêts minoritaires est de 240 725 000 fois 0,30, soit 72 217 500 FCFA. Vérifions que la somme des deux redonne bien le résultat retraité : 168 507 500 plus 72 217 500 égale 240 725 000 FCFA. C''est une vérification simple que vous devez systématiquement faire à l''examen pour détecter une erreur de calcul.

De la même façon, si les capitaux propres consolidés retraités de Teranga Distribution s''élèvent à 1 490 825 000 FCFA, les intérêts minoritaires au bilan consolidé représentent 1 490 825 000 fois 0,30, soit 447 247 500 FCFA.

## 50:00 – 55:00 · Pause active et quiz interactif

Première question : quelle méthode de consolidation s''applique en cas de contrôle conjoint avec un autre actionnaire ? Réponse : l''intégration proportionnelle.

Deuxième question : pourquoi faut-il éliminer la marge interne incluse dans un stock non encore vendu à l''extérieur du groupe avant de répartir le résultat ? Réponse : parce que cette marge ne correspond à aucune création de valeur réelle avec un tiers extérieur au groupe à la date de clôture, et son maintien surestimerait la performance réelle du groupe.

Troisième question : dans notre exemple, quelle vérification simple permet de détecter une erreur dans le calcul de la part du groupe et des intérêts minoritaires ? Réponse : vérifier que la somme des deux parts redonne exactement le résultat consolidé retraité.

## 55:00 – 1:18:00 · Cas pratique complet et enjeu de pilotage

Prenons un cas pratique complet, nouveau par rapport aux leçons texte. Le Groupe Casamance Négoce détient 55 % de sa filiale Casamance Transit, consolidée par intégration globale, spécialisée dans le transit de marchandises au port de Dakar. Le résultat social de Casamance Transit est de 96 000 000 FCFA, incluant une marge interne de 11 000 000 FCFA sur des prestations de transit facturées à une autre filiale du groupe, non encore intégralement consommées à la clôture.

Calculons ensemble. Résultat retraité : 96 000 000 moins 11 000 000, soit 85 000 000 FCFA. Part du groupe : 85 000 000 fois 0,55, soit 46 750 000 FCFA. Intérêts minoritaires : 85 000 000 fois 0,45, soit 38 250 000 FCFA. Vérification : 46 750 000 plus 38 250 000 égale bien 85 000 000 FCFA.

Quel est l''enjeu de pilotage derrière ce calcul ? Le contrôleur de gestion du groupe ne doit jamais présenter à la direction générale le résultat social de 96 000 000 FCFA comme la contribution de Casamance Transit à la performance du groupe : c''est le résultat retraité de 85 000 000 FCFA, et plus précisément la part du groupe de 46 750 000 FCFA, qui mesure la création de valeur réellement captée par les actionnaires de la société mère. Présenter le chiffre non retraité à un comité de direction, même par simplification, risquerait de fausser l''appréciation de la performance réelle du groupe et de ses filiales.

## 1:18:00 – 1:30:00 · Synthèse et évaluation finale

Récapitulons. La méthode de consolidation (intégration globale, proportionnelle, mise en équivalence) dépend du niveau de contrôle et change radicalement la lecture des agrégats du groupe. Les opérations intragroupe doivent systématiquement être éliminées, en particulier les marges internes sur stocks ou prestations non encore consommées à l''extérieur. Les intérêts minoritaires isolent la part de résultat et de capitaux propres qui revient aux autres actionnaires, en proportion de leur détention, et la vérification de leur somme avec la part du groupe est un réflexe à conserver pour détecter vos erreurs de calcul.

Cinq questions pour l''évaluation finale.

Première question : quelle méthode de consolidation s''applique en cas d''influence notable sans contrôle ? Réponse : la mise en équivalence.

Deuxième question : un groupe détient 80 % d''une filiale dont le résultat social est de 60 000 000 FCFA, incluant une marge interne à éliminer de 8 000 000 FCFA. Calculez le résultat retraité, la part du groupe et les intérêts minoritaires. Réponse : résultat retraité = 60 000 000 moins 8 000 000, soit 52 000 000 FCFA. Part du groupe = 52 000 000 fois 0,80, soit 41 600 000 FCFA. Intérêts minoritaires = 52 000 000 fois 0,20, soit 10 400 000 FCFA.

Troisième question : pourquoi une filiale mise en équivalence n''apparaît-elle que par une seule ligne de résultat net dans les comptes consolidés ? Réponse : parce que cette méthode s''applique en cas d''influence notable sans contrôle, et qu''elle substitue simplement la valeur des titres détenus par une quote-part de la situation nette de l''entreprise associée, sans intégrer ligne à ligne ses actifs, passifs, charges et produits.

Quatrième question : quelle vérification simple permet de détecter une erreur dans un calcul d''intérêts minoritaires ? Réponse : vérifier que la part du groupe additionnée à la part des intérêts minoritaires redonne exactement le résultat consolidé retraité de la filiale.

Cinquième question : pourquoi le contrôleur de gestion d''un groupe ne doit-il jamais présenter le résultat social d''une filiale, sans retraitement, comme mesure de sa contribution à la performance du groupe ? Réponse : parce que le résultat social peut inclure des marges intragroupe non encore réalisées avec l''extérieur, qui surestiment la création de valeur réelle ; seul le résultat consolidé retraité, et la part qui en revient au groupe selon son pourcentage de détention, mesure correctement cette contribution.

Merci pour votre attention, je vous retrouve dans le prochain cours vidéo consacré à l''audit de la performance et au contrôle interne avancé.', 'video', 90, false, 60
from public.courses c where c.slug = 'mas-cg-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Contrôle de gestion des groupes et consolidation du pilotage');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Audit de la performance et contrôle interne avancé', '## Fiche du cours vidéo

Durée : 1h30. Public : étudiants de Master 2 en Contrôle de gestion. Objectifs : comprendre les composantes du contrôle interne, savoir structurer un rapport d''audit de performance en quatre temps (constat, cause, risque, recommandation), savoir calculer et interpréter un sondage d''audit avec extrapolation à une population. Prérequis : notions de contrôle de gestion opérationnel. Matériel : tableau ou diaporama, calculatrice, le cas du Groupe Teranga Agro-Industries.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs de la séance

Bonjour à toutes et à tous. Ce deuxième cours vidéo du Master 2 porte sur l''audit de la performance et le contrôle interne avancé. Nous allons voir comment le contrôleur de gestion s''articule avec la fonction d''audit interne, comment structurer un rapport d''audit de façon rigoureuse, et comment utiliser les techniques de sondage pour estimer l''ampleur d''un problème sans contrôler l''intégralité d''une population d''opérations.

Plan de la séance : les composantes du contrôle interne ; la structure d''un rapport d''audit de performance ; les techniques de sondage, avec un calcul chiffré complet ; un quiz à mi-séance ; puis un cas pratique complet et l''évaluation finale.

## 05:00 – 18:00 · Le contrôle interne et ses composantes

Le contrôle interne désigne l''ensemble des dispositifs mis en place par une organisation pour maîtriser ses risques et atteindre ses objectifs : fiabilité de l''information financière, efficacité et efficience des opérations, conformité aux lois et règlements. Il repose sur cinq composantes complémentaires, que vous devez savoir citer et illustrer à l''examen.

L''environnement de contrôle, c''est la culture, les valeurs et l''organisation claire des responsabilités dans l''entreprise. L''évaluation des risques, c''est l''identification et la hiérarchisation des risques qui menacent les objectifs. Les activités de contrôle, ce sont les procédures concrètes : séparation des tâches, autorisations, rapprochements. L''information et la communication, c''est la circulation fiable de l''information nécessaire à la prise de décision. Le pilotage, enfin, c''est le suivi régulier du dispositif de contrôle interne lui-même, pour vérifier qu''il reste efficace dans le temps.

Le contrôleur de gestion n''est pas l''auditeur du contrôle interne, mais il en est directement dépendant : la fiabilité des indicateurs qu''il produit (tableaux de bord, analyses d''écarts, ROI, EVA) repose entièrement sur la fiabilité des données issues des processus opérationnels. Un contrôle interne défaillant sur la saisie des ventes, par exemple, produit des indicateurs de performance commerciale trompeurs, même si le calcul de l''indicateur lui-même est parfaitement correct.

## 18:00 – 30:00 · La structure d''un rapport d''audit de performance

L''audit de performance se concentre sur l''efficacité et l''efficience d''un processus : utilise-t-on les ressources de façon économe, les objectifs sont-ils atteints, les procédures permettent-elles de les atteindre de façon fiable ? Un rapport d''audit de performance structure chaque point relevé en quatre temps, que je vous demande de noter et de mémoriser, car c''est très probablement ce qui vous sera demandé à l''examen.

Premièrement, le constat : ce que révèle objectivement le contrôle ou l''observation, de façon factuelle et si possible chiffrée. Deuxièmement, la cause probable : pourquoi cette situation existe, quelle défaillance de procédure ou quel facteur humain l''explique. Troisièmement, le risque associé : quelles conséquences possibles si rien n''est corrigé. Quatrièmement, la recommandation : l''action corrective concrète proposée, idéalement avec un responsable désigné et un délai de mise en œuvre.

Retenez bien ceci : une réponse d''examen qui se limite au constat chiffré, sans cause ni recommandation opérationnelle, est considérée comme incomplète, même si le calcul est juste. Les correcteurs valorisent la capacité à aller jusqu''à la recommandation concrète.

## 30:00 – 50:00 · Les techniques de sondage : calcul complet

Faute de pouvoir contrôler l''intégralité d''une population d''opérations, l''auditeur recourt à des techniques de sondage : il contrôle un échantillon représentatif, mesure un taux d''anomalie dans cet échantillon, puis extrapole ce taux à la population entière.

Faisons le calcul ensemble. Un auditeur contrôle un échantillon de 80 factures parmi une population de 2 400 factures émises sur l''année par une filiale du Groupe Teranga Agro-Industries, et constate 6 anomalies, c''est-à-dire des erreurs de tarification, de remise ou d''imputation comptable. Calculons le taux d''anomalie dans l''échantillon : 6 divisé par 80, soit 0,075, soit 7,5 %. Appliquons maintenant ce taux à la population entière : 0,075 fois 2 400, soit 180 factures potentiellement affectées sur l''année.

Point de vigilance essentiel, que l''examen aime tester : ce chiffre de 180 factures n''est pas un constat certain, c''est une estimation statistique. Elle dépend directement de la représentativité de l''échantillon et de sa taille. Un échantillon trop petit, ou mal constitué, par exemple en ne sélectionnant que les plus grosses factures, produirait une extrapolation peu fiable. C''est pourquoi la méthode de constitution de l''échantillon doit toujours être documentée et justifiée dans le rapport d''audit.

Construisons maintenant le constat d''audit complet pour cet exemple. Constat : un taux d''anomalie de tarification de 7,5 % a été relevé sur l''échantillon, extrapolé à environ 180 factures sur l''année. Cause probable : l''absence de contrôle de second niveau systématique sur les remises commerciales avant facturation. Risque associé : une perte financière cumulée potentiellement significative, et un risque de traitement inéquitable entre clients. Recommandation : un contrôle de validation obligatoire au-delà d''un certain seuil de remise, avec un audit de suivi six mois plus tard.

## 50:00 – 55:00 · Pause active et quiz interactif

Première question : citez les cinq composantes du contrôle interne. Réponse : environnement de contrôle, évaluation des risques, activités de contrôle, information et communication, pilotage.

Deuxième question : quels sont les quatre éléments attendus dans un constat d''audit de performance ? Réponse : constat, cause probable, risque associé, recommandation.

Troisième question : un auditeur contrôle un échantillon de 100 opérations parmi une population de 3 000, et constate 9 anomalies. Calculez le taux d''anomalie et le nombre d''anomalies extrapolées. Réponse : taux = 9 divisé par 100, soit 9 %. Extrapolation = 0,09 fois 3 000, soit 270 opérations.

## 55:00 – 1:18:00 · Cas pratique complet

Prenons un cas pratique complet et nouveau. Un auditeur interne contrôle, pour la filiale Teranga Distribution, un échantillon de 45 bons de livraison parmi une population de 1 350 bons émis sur l''année, et constate 5 anomalies : des écarts entre les quantités livrées mentionnées sur le bon et les quantités effectivement réceptionnées par les clients, signées sans vérification systématique.

Calculons le taux d''anomalie : 5 divisé par 45, soit environ 0,111, soit 11,1 %. Extrapolons à la population : 0,111 fois 1 350, soit environ 150 bons de livraison potentiellement affectés.

Construisons le constat complet. Constat : un taux d''anomalie de 11,1 % a été relevé sur les bons de livraison, extrapolé à environ 150 bons sur l''année. Cause probable : l''absence de contrôle de concordance systématique entre quantités livrées et quantités réceptionnées avant signature du client. Risque associé : des litiges commerciaux avec les clients, une image de fiabilité dégradée, et un risque de pertes financières si des quantités livrées ne sont pas correctement facturées. Recommandation : mettre en place un contrôle de concordance obligatoire avant signature, avec une procédure de double vérification pour les livraisons dépassant un certain volume, et un audit de suivi dans les six mois pour vérifier la baisse du taux d''anomalie.

## 1:18:00 – 1:30:00 · Synthèse et évaluation finale

Récapitulons les points essentiels. Le contrôle interne repose sur cinq composantes complémentaires et conditionne directement la fiabilité des données du contrôle de gestion. Un rapport d''audit de performance structure chaque point en quatre temps : constat, cause probable, risque associé, recommandation. Les techniques de sondage permettent d''extrapoler un taux d''anomalie à une population entière, à condition que l''échantillon soit représentatif, et cette extrapolation reste une estimation statistique, pas une certitude.

Cinq questions pour l''évaluation finale.

Première question : quelle composante du contrôle interne correspond au suivi régulier du dispositif lui-même ? Réponse : le pilotage.

Deuxième question : un auditeur contrôle un échantillon de 40 opérations parmi une population de 1 200, et constate 2 anomalies. Calculez le taux d''anomalie et le nombre d''anomalies extrapolées. Réponse : taux = 2 divisé par 40, soit 5 %. Extrapolation = 0,05 fois 1 200, soit 60 opérations.

Troisième question : pourquoi une réponse d''examen qui se limite au constat chiffré, sans cause ni recommandation, est-elle considérée comme incomplète ? Réponse : parce qu''un rapport d''audit de performance doit permettre à l''organisation d''agir concrètement sur la situation relevée ; sans cause identifiée ni recommandation opérationnelle, le constat reste descriptif et n''apporte pas la valeur ajoutée attendue d''une démarche d''audit.

Quatrième question : pourquoi la méthode de constitution d''un échantillon doit-elle être documentée dans un rapport d''audit ? Réponse : parce que la fiabilité de l''extrapolation dépend directement de la représentativité de l''échantillon, et qu''un échantillon mal constitué produirait une estimation biaisée du taux d''anomalie réel de la population.

Cinquième question : donnez un exemple de risque associé à un taux d''anomalie élevé sur des bons de livraison non vérifiés avant signature du client. Réponse : par exemple un risque de litige commercial avec les clients, ou un risque de pertes financières si des quantités livrées ne sont pas correctement facturées ; toute réponse pertinente et justifiée est acceptée.

Merci pour votre attention, je vous retrouve dans le prochain cours vidéo consacré à la méthodologie du mémoire professionnel et de la soutenance.', 'video', 90, false, 70
from public.courses c where c.slug = 'mas-cg-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Audit de la performance et contrôle interne avancé');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Méthodologie du mémoire professionnel et de la soutenance', '## Fiche du cours vidéo

Durée : 1h30. Public : étudiants de Master 2 en Contrôle de gestion. Objectifs : savoir formuler une problématique de mémoire spécifique et traitable, construire un plan de mémoire rigoureux en trois temps, mener une revue de littérature ou des pratiques existantes de façon honnête et argumentée, préparer la présentation orale de soutenance. Prérequis : aucun prérequis technique de contrôle de gestion, cette séance porte sur la méthode. Matériel : tableau ou diaporama, un exemple de problématique de mémoire.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et enjeux de la séance

Bonjour à toutes et à tous. Ce troisième cours vidéo du Master 2 est d''une nature différente des précédents : nous ne allons pas approfondir une technique de contrôle de gestion, mais la méthode de construction et de défense de votre mémoire professionnel. C''est un exercice qui compte autant, sinon plus, dans votre réussite de l''année que les matières techniques, car il mobilise l''ensemble de votre formation sur un travail personnel et long.

Plan de la séance : formuler une problématique ; construire un plan rigoureux en trois temps ; mener une revue de littérature honnête ; préparer la soutenance orale ; un quiz à mi-séance ; et l''évaluation finale.

## 05:00 – 20:00 · Choisir et formuler une problématique

Le mémoire professionnel part d''une problématique : une question précise à laquelle le mémoire doit répondre de façon argumentée. Une bonne problématique réunit trois qualités. Elle est spécifique : elle porte sur une situation ou un enjeu précis, pas sur un sujet trop vaste. Elle est pertinente : elle correspond à un enjeu réel pour l''entreprise ou le secteur étudié. Elle est traitable : vous disposez réellement des moyens, du temps et de l''accès aux données nécessaires pour y répondre dans le cadre du mémoire.

Prenons un exemple de mauvaise problématique, trop vague : « Le contrôle de gestion dans les entreprises sénégalaises ». C''est un sujet, pas une problématique : il n''y a pas de question précise, et le périmètre est bien trop large pour être traité sérieusement dans un mémoire. Reformulons-la : « Comment une PME sénégalaise du secteur agro-industriel peut-elle mettre en place un contrôle budgétaire simple et adapté à ses moyens, pour mieux maîtriser sa trésorerie ? » Cette version est spécifique (un secteur, un outil précis, un objectif clair), pertinente, et traitable dans le cadre d''un mémoire appuyé sur un cas d''entreprise réel.

Exercice pour vous, à faire en pause sur votre feuille : reformulez la problématique suivante, elle aussi trop vague, pour la rendre spécifique : « La performance globale dans les groupes africains ». Je vous laisse trente secondes avant de proposer une piste de correction. Une reformulation possible : « Comment un groupe agro-industriel sénégalais à deux filiales peut-il construire un indice de performance globale pondéré qui évite le risque de masquage d''une dégradation sociale ou environnementale isolée ? » Vous retrouvez ici une question précise, ancrée dans un cas, et directement reliée aux outils vus en Master 1.

## 20:00 – 38:00 · Construire un plan de mémoire rigoureux

Le plan d''un mémoire professionnel suit une logique en trois temps, que je vous demande de noter précisément. Première partie : le cadre théorique et le contexte, c''est-à-dire la revue des concepts et outils de contrôle de gestion mobilisés, et la présentation du secteur et de l''entreprise étudiée. Deuxième partie : la méthode d''étude retenue (étude de cas, entretiens, analyse de données internes) et les résultats obtenus, avec les preuves et les données chiffrées qui les étayent. Troisième partie : la discussion critique de ces résultats, c''est-à-dire ce qu''ils signifient réellement pour l''entreprise, les limites de l''étude, et les recommandations qui en découlent, avec leurs réserves.

J''insiste particulièrement sur cette troisième partie, car c''est statistiquement la plus faible dans les mémoires d''étudiants. Beaucoup se contentent de décrire leurs résultats sans jamais vraiment les discuter. Or c''est précisément cette capacité de distance critique qui différencie un mémoire de bon niveau d''un mémoire simplement correct. La méthode concrète pour travailler cette partie : après chaque résultat présenté, posez-vous systématiquement trois questions. Qu''est-ce que ce résultat signifie réellement pour l''entreprise étudiée ? Quelles sont les limites de la méthode qui a permis d''obtenir ce résultat ? Et quelles réserves faut-il apporter à toute recommandation qui en découlerait ?

## 38:00 – 50:00 · La revue de la littérature ou des pratiques existantes

Avant de présenter vos propres résultats, un mémoire doit situer son apport par rapport à ce qui existe déjà : des travaux académiques, des référentiels professionnels, ou des pratiques observées dans des entreprises comparables. Cette revue ne doit jamais se limiter à une liste de résumés juxtaposés les uns après les autres : elle doit construire un raisonnement qui identifie ce qui est déjà bien établi, ce qui reste discuté, et la place que votre propre travail vient occuper dans cet ensemble.

Point absolument essentiel, que je veux que vous reteniez sans ambiguïté : vous ne devez jamais inventer de référence ou de citation que vous n''avez pas effectivement consultée. Une référence inventée, si elle est découverte par le jury, même par une vérification rapide, détruit immédiatement la confiance accordée à l''ensemble de votre travail, y compris les parties qui étaient par ailleurs solides. C''est une faute d''intégrité intellectuelle qui n''a pas sa place dans un travail présenté comme personnel et vérifié, et qui peut avoir des conséquences académiques sérieuses.

## 50:00 – 55:00 · Pause active et quiz interactif

Première question : citez les trois qualités attendues d''une bonne problématique de mémoire. Réponse : spécifique, pertinente, traitable.

Deuxième question : quelles sont les trois parties attendues dans le plan d''un mémoire professionnel ? Réponse : cadre théorique et contexte ; méthode et résultats ; discussion critique.

Troisième question : quelles sont les trois questions à se poser systématiquement pour travailler la partie de discussion critique ? Réponse : que signifie ce résultat pour l''entreprise ? quelles sont les limites de la méthode ? quelles réserves pour les recommandations ?

## 55:00 – 1:18:00 · Préparer la soutenance orale

La soutenance est un exercice oral distinct de la rédaction du mémoire. Le temps de présentation est généralement limité, souvent 15 à 20 minutes selon les modalités de votre établissement, ce qui impose de sélectionner l''essentiel plutôt que de résumer l''intégralité du document : la problématique, la méthode en quelques phrases, les deux ou trois résultats les plus significatifs, et les recommandations principales.

La seconde partie de la soutenance, les questions du jury, est souvent celle qui différencie le plus les candidats. Le jury cherche à vérifier que vous maîtrisez réellement votre travail, et pas seulement que vous l''avez récité, en posant des questions sur vos choix méthodologiques, sur les limites de votre étude, ou sur des approfondissements possibles.

Trois attitudes sont à privilégier, notez-les bien. Premièrement, répondre avec précision plutôt que de façon évasive : si vous ne savez pas répondre précisément à une question, il est plus crédible de le reconnaître et de proposer une piste de réflexion que de noyer la réponse dans des généralités. Deuxièmement, assumer les limites de votre propre travail plutôt que de les nier : un bon candidat connaît les faiblesses de son propre mémoire et peut les expliquer sereinement, ce qui rassure le jury sur sa capacité d''analyse critique. Troisièmement, rester calme même face à une question qui déstabilise, en prenant quelques secondes de réflexion avant de répondre plutôt que de répondre dans la précipitation, ce qui conduit souvent à des réponses imprécises ou même contradictoires avec le contenu du mémoire.

Simulons une question de jury typique, pour vous entraîner. Imaginez que le jury vous demande : « Vous avez étudié un seul groupe fictif pour illustrer votre méthode. En quoi vos conclusions seraient-elles différentes avec un groupe ayant trois filiales plutôt que deux ? » Une bonne réponse ne doit ni paniquer, ni éluder : elle doit assumer la limite (un cas à deux filiales ne permet effectivement pas de généraliser directement à des structures plus complexes), puis proposer une piste argumentée (avec trois filiales, les flux de cession interne croisés entre plusieurs paires d''entités rendraient l''arbitrage de la direction générale plus complexe, et mériteraient une étude complémentaire).

## 1:18:00 – 1:30:00 · Synthèse et évaluation finale

Récapitulons. Une bonne problématique est spécifique, pertinente et traitable. Le plan en trois temps structure un mémoire rigoureux, avec une attention particulière à la discussion critique, souvent le point faible à travailler en priorité. La revue de littérature doit construire un raisonnement et ne jamais s''appuyer sur des sources inventées. La soutenance exige de sélectionner l''essentiel dans le temps imparti, et de répondre aux questions du jury avec précision, en assumant les limites de son travail plutôt qu''en les niant.

Cinq questions pour l''évaluation finale.

Première question : pourquoi « Le contrôle de gestion dans les entreprises sénégalaises » n''est-il pas une problématique acceptable pour un mémoire ? Réponse : parce que ce n''est pas une question précise, et que le périmètre est bien trop large pour être traité sérieusement dans le cadre d''un mémoire ; il manque la spécificité et le caractère traitable attendus.

Deuxième question : quelle est la partie du plan la plus souvent faible chez les étudiants, et pourquoi ? Réponse : la discussion critique, par manque d''habitude de prendre de la distance par rapport à ses propres résultats, que l''on a tendance à seulement décrire plutôt qu''à interroger.

Troisième question : pourquoi inventer une référence dans un mémoire est-il particulièrement grave ? Réponse : parce que, si elle est découverte, elle détruit la confiance accordée à l''ensemble du travail, y compris les parties par ailleurs solides, et constitue une faute d''intégrité intellectuelle aux conséquences académiques potentiellement sérieuses.

Quatrième question : face à une question de jury qui vous déstabilise, quelle est la meilleure attitude à adopter ? Réponse : prendre quelques secondes de réflexion avant de répondre, plutôt que de répondre dans la précipitation, et répondre avec précision en assumant, si nécessaire, les limites de son propre travail.

Cinquième question : pourquoi assumer les limites de son propre mémoire rassure-t-il le jury, plutôt que de l''affaiblir ? Réponse : parce que cela démontre une capacité réelle d''analyse critique et une bonne connaissance des limites méthodologiques de son propre travail, ce qui est précisément ce qu''un jury de Master attend d''un candidat, plutôt qu''une présentation artificiellement parfaite et donc peu crédible.

Merci pour votre attention, je vous retrouve dans le dernier cours vidéo de ce Master 2, un atelier pratique de préparation à la soutenance.', 'video', 90, false, 80
from public.courses c where c.slug = 'mas-cg-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Méthodologie du mémoire professionnel et de la soutenance');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Atelier méthodologie — simulation de soutenance', '## Fiche du cours vidéo

Durée : 1h30. Public : étudiants de Master 2 en Contrôle de gestion. Objectifs : s''entraîner concrètement à la présentation orale d''un mémoire et aux questions du jury, à travers une simulation complète de soutenance commentée. Prérequis : le cours vidéo précédent sur la méthodologie du mémoire. Matériel : tableau ou diaporama, chronomètre.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs de l''atelier

Bonjour à toutes et à tous. Ce quatrième et dernier cours vidéo de votre Master 2 est un atelier pratique : nous allons simuler, pas à pas et de façon commentée, une soutenance complète de mémoire professionnel, de la présentation initiale jusqu''aux questions du jury. L''objectif n''est pas d''apprendre une nouvelle notion de contrôle de gestion, mais de vous entraîner concrètement à l''exercice oral qui vous attend, en observant ce qui fonctionne et ce qui ne fonctionne pas dans une présentation de soutenance.

Le mémoire fictif que nous allons simuler porte sur la problématique suivante, dans l''esprit des cas étudiés cette année : « Comment un groupe agro-industriel sénégalais à deux filiales peut-il fiabiliser son résultat consolidé lorsque la facturation intragroupe fait l''objet d''anomalies détectées par un audit interne ? » Vous reconnaissez ici un sujet qui combine consolidation et audit, les deux matières techniques de cette année.

## 05:00 – 20:00 · Simulation de la présentation initiale (15 minutes chronométrées)

Voici comment une présentation de 15 minutes pourrait être structurée, et je vous invite à noter le minutage indicatif de chaque partie, car le respect du temps imparti est lui-même évalué par le jury.

Minutes 0 à 2 : présentation de la problématique et de son intérêt. « Mon mémoire porte sur la fiabilisation du résultat consolidé d''un groupe à deux filiales, lorsque la facturation intragroupe de prestations de transport présente des anomalies détectées par un audit interne. Cette question est importante car elle relie deux enjeux normalement traités séparément : la consolidation comptable et le contrôle interne, alors que, comme je vais le montrer, ils s''influencent directement. »

Minutes 2 à 5 : présentation rapide du cadre et de la méthode. « Je me suis appuyé sur un cas de groupe à deux filiales, avec une analyse de la méthode de consolidation par intégration globale et des techniques de sondage d''audit. J''ai construit un exemple chiffré complet pour illustrer le mécanisme central de mon mémoire. »

Minutes 5 à 11 : présentation des résultats principaux, avec des chiffres clés. « Mon analyse montre que, dans le cas étudié, un taux d''anomalie de 8 % sur la facturation intragroupe de transport peut remettre en cause la fiabilité du montant de marge interne éliminé en consolidation, ici 14 500 000 FCFA, et donc la fiabilité du résultat consolidé retraité, qui s''élevait à 150 500 000 FCFA dans mon exemple. »

Minutes 11 à 14 : discussion critique et recommandations. « Ce résultat montre que la consolidation et l''audit interne ne devraient jamais être traités comme deux chantiers indépendants dans un groupe. Ma recommandation principale est de coordonner le renforcement du contrôle interne sur la facturation intragroupe avec la révision du processus de retraitement comptable en consolidation. La limite principale de mon étude est qu''elle repose sur un seul cas illustratif, et mériterait d''être confrontée à des données réelles sur plusieurs groupes pour en vérifier la généralité. »

Minutes 14 à 15 : conclusion et transition vers les questions. « Je reste à votre disposition pour toute question. »

## 20:00 – 25:00 · Commentaire sur la présentation simulée

Qu''est-ce qui fonctionne bien dans cette présentation ? D''abord, le respect strict du minutage : chaque partie a une durée indicative claire, et le candidat ne cherche pas à tout dire, mais à sélectionner l''essentiel. Ensuite, la présence de chiffres clés précis (8 %, 14 500 000 FCFA, 150 500 000 FCFA) plutôt que de formulations vagues, ce qui montre une maîtrise réelle du travail. Enfin, et c''est le point le plus important, la discussion critique assume explicitement une limite de l''étude (un seul cas illustratif) plutôt que de la cacher, ce qui, nous l''avons vu dans le cours précédent, rassure le jury sur la capacité d''analyse critique du candidat plutôt que de l''affaiblir.

## 25:00 – 55:00 · Simulation des questions du jury

Passons maintenant à la partie la plus formatrice de cet atelier : la simulation des questions du jury, avec un commentaire après chaque question pour analyser ce qui fait une bonne réponse.

Question du jury numéro un : « Vous présentez un taux d''anomalie de 8 % extrapolé à 120 ordres de mission sur l''année. Comment avez-vous vérifié que votre échantillon de 50 ordres était représentatif ? » Bonne réponse attendue : « J''ai constitué mon échantillon par tirage aléatoire parmi la population totale de 1 500 ordres de mission, en veillant à couvrir l''ensemble de l''année plutôt qu''une seule période, afin d''éviter un biais saisonnier. Je reconnais cependant que la taille de l''échantillon, 50 sur 1 500, reste limitée, et qu''un échantillon plus large aurait renforcé la fiabilité statistique de mon extrapolation. » Remarquez que cette réponse ne nie pas la limite, mais l''assume avec précision.

Question du jury numéro deux : « Si le pourcentage de détention du groupe dans la filiale passait de 70 % à 100 %, qu''est-ce qui changerait concrètement dans votre analyse ? » Bonne réponse attendue : « La ligne des intérêts minoritaires disparaîtrait des comptes consolidés, puisque le groupe détiendrait l''intégralité du capital. Le mécanisme d''élimination de la marge interne resterait identique et tout aussi nécessaire, mais la répartition du résultat retraité entre groupe et minoritaires n''aurait plus lieu d''être : l''intégralité de ce résultat reviendrait au groupe. » Cette réponse montre une maîtrise technique précise, mobilisée immédiatement sur une variante du cas, ce qui est exactement ce que recherche le jury.

Question du jury numéro trois, plus déstabilisante : « Votre recommandation de coordonner contrôle interne et consolidation me semble assez générale. Concrètement, par quoi l''entreprise devrait-elle commencer dans les trois premiers mois ? » Bonne réponse attendue, après quelques secondes de réflexion assumées à voix haute : « C''est une remarque pertinente. Concrètement, je recommanderais de commencer par un contrôle de cohérence automatisé entre le carnet de bord des chauffeurs et la facturation intragroupe, car c''est la cause racine identifiée dans mon audit, avant même de revoir le processus de consolidation lui-même, qui ne peut être fiabilisé que si la donnée source l''est déjà. » Cette réponse transforme une critique en occasion de préciser et d''approfondir sa recommandation, plutôt que de se contenter de la répéter.

## 55:00 – 1:05:00 · Pause active et quiz interactif

Première question : pourquoi le respect strict du minutage d''une présentation de soutenance est-il lui-même un critère d''évaluation ? Réponse : parce qu''il démontre la capacité du candidat à sélectionner l''essentiel de son travail et à communiquer de façon structurée, des compétences professionnelles attendues d''un contrôleur de gestion, au-delà du seul contenu technique.

Deuxième question : face à une question de jury qui pointe une limite réelle du travail, quelle attitude est la plus crédible ? Réponse : reconnaître explicitement la limite plutôt que de la nier, puis si possible indiquer comment elle pourrait être traitée dans un travail ultérieur ou avec davantage de moyens.

Troisième question : pourquoi mobiliser des chiffres précis dans une présentation orale est-il préférable à des formulations vagues ? Réponse : parce que cela démontre une maîtrise réelle et concrète du travail réalisé, et facilite la discussion avec le jury sur des bases factuelles plutôt que des généralités difficiles à questionner ou à défendre précisément.

## 1:05:00 – 1:25:00 · Entraînement individuel guidé

Je vous propose maintenant un exercice d''entraînement individuel. Prenez votre propre sujet de mémoire, ou le sujet type que vous avez étudié dans ce Master 2, et rédigez, en cinq minutes, les deux premières minutes de votre propre présentation de soutenance : la problématique et son intérêt. Puis, dans un second temps de cinq minutes, anticipez une question de jury probable sur votre travail, et rédigez une réponse qui assume une limite réelle plutôt que de la nier.

Cet exercice, que je vous encourage à refaire plusieurs fois avant votre véritable soutenance, avec si possible un camarade ou un enseignant qui joue le rôle du jury, est la meilleure préparation pratique que je puisse vous recommander : la maîtrise d''une soutenance s''acquiert par la répétition, pas par la seule lecture de conseils méthodologiques.

## 1:25:00 – 1:30:00 · Synthèse finale et évaluation

Pour conclure ce Master 2 : une bonne soutenance combine une présentation structurée et chronométrée, des chiffres précis plutôt que des généralités, et une capacité à transformer les questions critiques du jury en occasions de préciser et d''approfondir son travail, plutôt qu''à les vivre comme des attaques à repousser.

Cinq questions pour l''évaluation finale de ce cours vidéo et de ce Master 2.

Première question : combien de temps dure généralement la présentation initiale d''une soutenance de mémoire professionnel ? Réponse : généralement 15 à 20 minutes, selon les modalités propres à chaque établissement, qu''il convient toujours de vérifier précisément à l''avance.

Deuxième question : quelle est la meilleure attitude face à une question de jury qui révèle une limite réelle de votre travail ? Réponse : reconnaître explicitement cette limite avec précision, plutôt que de la nier ou de l''éluder, et si possible proposer une piste pour la traiter dans un travail ultérieur.

Troisième question : pourquoi est-il recommandé de s''entraîner à la soutenance avec un camarade ou un enseignant jouant le rôle du jury ? Réponse : parce que la maîtrise de cet exercice oral s''acquiert par la répétition en conditions proches du réel, et qu''un retour extérieur permet d''identifier des formulations faibles ou des questions auxquelles on n''avait pas pensé à l''avance.

Quatrième question : dans la simulation étudiée, quelle était la cause racine identifiée pour le taux d''anomalie sur la facturation intragroupe de transport ? Réponse : l''absence de contrôle de cohérence systématique entre le carnet de bord des chauffeurs et la facturation intragroupe avant validation.

Cinquième question : pourquoi mobiliser des chiffres précis issus de son propre travail, plutôt que des généralités, renforce-t-il la crédibilité d''une présentation de soutenance ? Réponse : parce que cela démontre une maîtrise concrète et vérifiable du travail réalisé, et permet au jury d''évaluer la rigueur réelle de la démarche plutôt qu''une présentation superficielle difficile à distinguer d''un travail mal maîtrisé.

Merci à toutes et à tous pour votre participation à ce Master 2 en Contrôle de gestion. Bon courage pour vos examens et votre soutenance.', 'video', 90, false, 90
from public.courses c where c.slug = 'mas-cg-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Atelier méthodologie — simulation de soutenance');

-- Cours : Master 1 Comptabilité : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'mas-compta-m1', (select id from public.levels where name = 'Master 1'), null, 'Comptabilité', 'Master 1 Comptabilité : réussir ses examens', 'Préparation aux examens de Master 1 en Comptabilité : consolidation approfondie des comptes de groupe, normes IFRS et comparaison avec le SYSCOHADA révisé, fiscalité internationale et prix de transfert. Études de cas d''entreprises sénégalaises fictives, exercices corrigés et sujet type d''examen. Public : étudiants de Master 1 ayant validé une Licence en Comptabilité (SYSCOHADA, droit OHADA, sociétés, fiscalité, états financiers, consolidation simple, audit).', true, 741
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Master 1 en Comptabilité', '## Objectifs de la leçon

- Comprendre les spécificités du Master en Comptabilité par rapport à la Licence : analyse critique, cas complexes, recherche appliquée, décisions en incertitude.
- Identifier les trois matières avancées de l''année de Master 1 et leur articulation avec le mémoire et le stage.
- Mettre en place une méthode de travail de niveau Master : étude de cas complexe, business case, revue de littérature.
- Construire un plan de révision réaliste sur six semaines avant les examens.

Ce cours de Master 1 en Comptabilité prolonge la Licence (comptabilité générale 1 et 2, mathématiques financières, droit des affaires OHADA, droit des sociétés, fiscalité des entreprises, états financiers SYSCOHADA, consolidation simple, audit et contrôle interne). Il ne reprend pas ces bases : il suppose qu''elles sont acquises et vous demande de les mobiliser dans des situations plus complexes, avec davantage d''incertitude et de jugement professionnel.

## 1. Ce qui change entre la Licence et le Master

En Licence, l''examen vérifie surtout que vous savez appliquer une méthode à un cas relativement balisé : enregistrer une opération, calculer un impôt, consolider deux sociétés avec un seul écart. En Master, l''exercice change de nature. On vous donne un dossier d''entreprise incomplet, parfois contradictoire, et on attend que vous posiez un diagnostic, que vous choisissiez une méthode parmi plusieurs possibles en justifiant ce choix, et que vous discutiez les limites de votre propre solution. La comptabilité n''est plus seulement une technique d''enregistrement : elle devient un outil d''aide à la décision, mobilisé dans des contextes de groupes de sociétés, d''opérations internationales, de restructurations.

Trois conséquences pratiques pour vos révisions :

- Apprenez les mécanismes, pas seulement les formules. Un correcteur de Master pénalise une formule appliquée sans comprendre pourquoi elle s''applique à ce cas précis.
- Entraînez-vous à argumenter par écrit. Beaucoup de questions demandent de justifier un choix (méthode de consolidation, méthode de valorisation, type d''opinion d''audit) en une dizaine de lignes structurées.
- Croisez les matières. Un même cas d''entreprise peut mobiliser consolidation, IFRS et fiscalité internationale dans une seule copie, exactement comme la leçon « Sujet type d''examen » de ce cours vous y entraînera.

## 2. Les trois matières avancées de l''année

Le Master 1 en Comptabilité approfondit trois domaines qui n''étaient qu''esquissés en Licence :

- La consolidation approfondie des comptes de groupe : retraitements d''homogénéisation, écarts d''évaluation et d''acquisition, variations de pourcentage de détention, traitement des minoritaires.
- Les normes IFRS, en complément du référentiel SYSCOHADA révisé : principes généraux, comparaison point par point avec les règles OHADA, cas où les deux référentiels convergent ou divergent.
- La fiscalité internationale et les prix de transfert : résidence fiscale, établissement stable, conventions de non double imposition, méthodes de détermination d''un prix de transfert.

Ces trois matières ne sont pas indépendantes. Un groupe sénégalais qui consolide une filiale installée dans un autre pays de l''UEMOA doit à la fois homogénéiser les comptes (consolidation), s''interroger sur le référentiel comptable applicable aux entités cotées ou à certaines filiales (IFRS) et documenter les prix pratiqués entre les sociétés du groupe (prix de transfert). C''est pourquoi les sujets d''examen de Master aiment construire un même cas d''entreprise filé sur plusieurs questions.

## 3. Le mémoire et le stage, en toile de fond

Selon l''établissement, le Master 1 peut comporter un stage et une initiation au mémoire, dont la rédaction complète et la soutenance interviennent le plus souvent en Master 2 (voir le cours de Master 2 pour la méthodologie détaillée). Dès le Master 1, repérez un terrain d''observation : une entreprise, un secteur, une problématique qui vous intéresse. Les cas traités en consolidation, IFRS ou fiscalité internationale peuvent devenir le point de départ d''une courte revue de littérature : ce que disent les textes, confronté à un cas concret, même fictif pour l''entraînement.

## 4. Une méthode de travail de niveau Master

Quatre habitudes à prendre dès le début de l''année :

- L''étude de cas complexe : face à un dossier de plusieurs pages, commencez par un tableau de synthèse des faits (dates, montants, pourcentages), avant les calculs. La moitié des erreurs viennent d''une lecture trop rapide de l''énoncé.
- Le business case : au-delà du calcul juste, demandez « et alors ? ». Un écart d''acquisition de 34 125 000 FCFA n''est qu''un chiffre si vous ne dites pas ce qu''il implique pour les comptes du groupe ou pour un test de dépréciation.
- La revue de littérature courte : une fiche d''une page par matière avancée, résumant le référentiel (SYSCOHADA, IFRS, convention fiscale type) avec vos propres mots.
- La vérification systématique des calculs : reprenez chaque calcul avec une calculatrice avant de le considérer comme acquis.

## 5. Plan de révision sur six semaines

- Semaine 1 : relire les bases de Licence indispensables (consolidation simple, méthodes de consolidation, calcul d''un impôt sur les sociétés) sans s''y attarder ; ficher les notions nouvelles de consolidation approfondie (écarts d''évaluation, retraitements).
- Semaine 2 : travailler la consolidation approfondie à travers des cas complets, du périmètre jusqu''aux écritures de consolidation, variations de pourcentage incluses.
- Semaine 3 : construire les fiches IFRS/SYSCOHADA, norme par norme ; faire le tableau comparatif pour chaque thème (juste valeur, location, reconnaissance du revenu, dépréciation, consolidation).
- Semaine 4 : fiscalité internationale et prix de transfert, avec au moins deux cas pratiques chiffrés (méthode du prix comparable, méthode du coût majoré).
- Semaine 5 : traiter un sujet type complet dans les conditions de l''examen (temps limité), puis corriger soi-même avant de regarder le corrigé.
- Semaine 6 : reprendre uniquement ses points faibles identifiés en semaine 5, refaire les exercices ratés, relire les fiches de synthèse une dernière fois, se reposer la veille de l''examen.

## Points clés à retenir

- Le Master demande d''argumenter un choix de méthode, pas seulement de l''appliquer.
- Les trois matières avancées de l''année (consolidation approfondie, IFRS, fiscalité internationale) se recoupent souvent dans un même cas d''entreprise.
- Une fiche de synthèse par norme ou par méthode, rédigée avec ses propres mots, vaut mieux qu''un résumé copié.
- Le plan de six semaines réserve toujours une semaine finale consacrée aux points faibles, pas à relire ce qu''on maîtrise déjà.

## Exercices pratiques

1. Listez, pour chacune des trois matières avancées du Master 1, un exemple de situation d''entreprise sénégalaise ou africaine où elle s''appliquerait concrètement.
2. Expliquez en cinq lignes la différence entre « appliquer une méthode » et « justifier le choix d''une méthode », avec un exemple tiré de la consolidation.
3. Construisez votre propre calendrier de révision sur six semaines en indiquant, pour chaque semaine, la matière et l''objectif précis (ex. « semaine 2 : savoir calculer un écart d''évaluation net d''impôt différé »).
4. Citez deux raisons pour lesquelles un correcteur de Master peut refuser une bonne réponse numérique si le raisonnement n''est pas expliqué.
5. Donnez un exemple de problématique de mémoire, même provisoire, que l''une des trois matières avancées pourrait inspirer.

## Corrigé

1. Consolidation approfondie : un groupe dakarois à participations croisées dans plusieurs filiales ouest-africaines, qui doit déterminer qui contrôle qui. IFRS : une société sénégalaise cotée sur une place régionale, qui doit présenter des comptes IFRS en plus de ses comptes SYSCOHADA. Fiscalité internationale : une filiale sénégalaise qui vend des produits semi-finis à sa mère installée ailleurs et doit documenter le prix pratiqué.
2. Appliquer une méthode, c''est suivre une procédure connue (intégrer globalement une filiale contrôlée à plus de 50 %). Justifier, c''est expliquer pourquoi cette méthode convient au cas précis : démontrer un contrôle exclusif (majorité des droits de vote, pas seulement du capital) avant de choisir l''intégration globale plutôt que la mise en équivalence.
3. Réponse libre ; six lignes datées, chacune avec une matière et un objectif mesurable, la sixième semaine étant réservée aux points faibles identifiés en semaine 5.
4. Un résultat juste obtenu par une méthode inadaptée (mise en équivalence appliquée à une filiale contrôlée à 80 %) révèle une mauvaise compréhension, même si le chiffre est correct par coïncidence ; et le barème de Master valorise explicitement la démonstration, pas seulement le résultat.
5. Exemples : « Comment les groupes sénégalais cotés articulent-ils comptes SYSCOHADA et IFRS lorsqu''ils lèvent des capitaux sur une place régionale ? » ou « Quelles méthodes de prix de transfert les PME exportatrices sénégalaises mobilisent-elles pour leurs transactions avec un pays voisin ? » Toute problématique précise et vérifiable est acceptée.', 'texte', 45, true, 10
from public.courses c where c.slug = 'mas-compta-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Master 1 en Comptabilité');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Consolidation approfondie des comptes de groupe : l''essentiel pour l''examen', '## Objectifs de la leçon

- Distinguer l''écart d''évaluation et l''écart d''acquisition (goodwill) lors d''une première consolidation.
- Mener les retraitements d''homogénéisation avant de cumuler les comptes d''un groupe.
- Traiter une variation de pourcentage de détention et son effet sur le goodwill et les minoritaires.
- Appliquer ces mécanismes à un cas de groupe sénégalais fictif complexe.

Numéros de comptes : à vérifier dans le plan de comptes officiel du SYSCOHADA révisé.

En Licence 3, vous avez appris à déterminer un périmètre de consolidation, choisir une méthode et éliminer les titres d''une filiale simple. Cette leçon va plus loin : retraitements qui précèdent le cumul des comptes, et décomposition fine de l''écart de première consolidation entre sous-évaluation d''actifs identifiables (écart d''évaluation) et reste non affecté à un actif précis (écart d''acquisition, ou goodwill).

## 1. Retraitements d''homogénéisation : la condition préalable

Avant tout cumul, chaque société du groupe doit présenter des comptes établis selon les mêmes méthodes, à la même date, dans la même monnaie. Les retraitements les plus courants :

- Harmonisation des méthodes d''amortissement et d''évaluation des stocks entre filiales.
- Neutralisation des écritures à seul objectif fiscal (provisions réglementées, amortissements dérogatoires), remplacées, le cas échéant, par un impôt différé.
- Retraitement du crédit-bail : hors bilan selon la méthode de base du SYSCOHADA, il est réintégré à l''actif consolidé avec une dette financière, selon la méthode préférentielle.
- Conversion des comptes d''une filiale tenue dans une autre monnaie que le franc CFA.

Ces retraitements modifient les capitaux propres de départ. Un oubli fausse tous les calculs qui suivent.

## 2. Écart d''évaluation et écart d''acquisition : bien distinguer les deux

Lors de la première consolidation, on compare le coût d''acquisition des titres à la quote-part acquise de l''actif net de la filiale. Mais cet actif net doit d''abord être réestimé à sa juste valeur à la date d''acquisition, et non laissé à sa valeur comptable d''origine : c''est l''écart d''évaluation. Ce qui reste entre le coût d''acquisition et la quote-part de l''actif net réévalué est l''écart d''acquisition (goodwill), qui rémunère des éléments non identifiables séparément (clientèle, synergies, réputation).

Cas d''entreprise : le groupe Baobab Industries acquiert 70 % du capital de sa filiale Casamance Agro-Transformation (CAT) pour 91 000 000 FCFA. À l''acquisition, les capitaux propres comptables de CAT sont de 70 000 000 FCFA (capital 50 000 000, réserves 20 000 000). Un bâtiment industriel, inscrit à 10 000 000 FCFA, a une juste valeur de 25 000 000 FCFA, soit une plus-value latente de 15 000 000 FCFA.

- Effet d''impôt différé (taux fictif pour l''exemple de 25 %) : 15 000 000 × 25 % = 3 750 000 FCFA.
- Écart d''évaluation net d''impôt différé : 15 000 000 − 3 750 000 = 11 250 000 FCFA.
- Actif net de CAT à la juste valeur : 70 000 000 + 11 250 000 = 81 250 000 FCFA.
- Quote-part acquise (70 %) : 70 % × 81 250 000 = 56 875 000 FCFA.
- Écart d''acquisition (goodwill) : 91 000 000 − 56 875 000 = 34 125 000 FCFA.
- Intérêts minoritaires à l''acquisition (30 %, approche de base OHADA) : 30 % × 81 250 000 = 24 375 000 FCFA.

Vérification de cohérence : la quote-part du groupe (56 875 000) plus les intérêts minoritaires (24 375 000) reconstituent l''actif net réévalué total, soit 81 250 000 FCFA. Le goodwill de 34 125 000 FCFA s''ajoute, à l''actif du bilan consolidé, à cet actif net réévalué.

Le goodwill, une fois comptabilisé, est soumis selon le référentiel appliqué soit à un amortissement sur une durée justifiée, soit à un test de dépréciation périodique (voir la leçon IFRS de ce cours).

## 3. Variation de pourcentage de détention

Un groupe modifie souvent sa participation dans une filiale déjà consolidée : achat de titres complémentaires, cession partielle sans perte de contrôle. Chaque opération est retraitée selon la valeur de l''actif net de la filiale au moment de l''opération, et non au moment de la première consolidation.

Suite du cas : un an plus tard, les capitaux propres réévalués de CAT atteignent 95 000 000 FCFA. Baobab Industries acquiert 10 % complémentaires pour 15 000 000 FCFA, portant sa participation à 80 %.

- Quote-part des 10 % complémentaires : 10 % × 95 000 000 = 9 500 000 FCFA.
- Écart complémentaire : 15 000 000 − 9 500 000 = 5 500 000 FCFA, ajouté au goodwill déjà comptabilisé.
- Goodwill cumulé après l''opération : 34 125 000 + 5 500 000 = 39 625 000 FCFA.
- Minoritaires après l''opération (20 % restants) : 20 % × 95 000 000 = 19 000 000 FCFA, contre 24 375 000 FCFA avant (reclassement vers le groupe, sans mouvement de résultat).

Point de méthode : une acquisition complémentaire sans changement de méthode ne génère ni plus-value ni perte dans le résultat consolidé ; c''est une opération entre actionnaires, traitée dans les capitaux propres, hormis l''écart complémentaire qui ajuste le goodwill.

## 4. Présentation au bilan consolidé

Après la seconde opération : le goodwill de 39 625 000 FCFA figure à l''actif immobilisé ; les actifs et passifs de CAT sont intégrés à 100 % (intégration globale) ; les minoritaires de 19 000 000 FCFA figurent en capitaux propres, distincts de la part du groupe.

## Points clés à retenir

- L''écart de première consolidation se décompose en écart d''évaluation (nette d''impôt différé) et écart d''acquisition résiduel (goodwill).
- Les retraitements d''homogénéisation précèdent toujours le cumul des comptes.
- Une acquisition complémentaire sans changement de méthode ajuste le goodwill et les minoritaires, sans transiter par le résultat consolidé.
- Toute réévaluation d''actif identifiable intègre son effet d''impôt différé avant d''entrer dans l''actif net de la filiale.

## Exercices pratiques

1. Expliquez en quoi l''écart d''évaluation diffère de l''écart d''acquisition, avec un autre exemple que celui du cours.
2. Pourquoi tenir compte d''un impôt différé sur une plus-value latente identifiée lors d''une acquisition ?
3. Téranga Finances acquiert 60 % d''une filiale aux capitaux propres comptables de 40 000 000 FCFA. Un terrain est sous-évalué de 8 000 000 FCFA (pas d''impôt différé ici). Coût d''acquisition : 35 000 000 FCFA. Calculez l''actif net à la juste valeur, la quote-part acquise, le goodwill et les minoritaires.
4. Un an plus tard, les capitaux propres réévalués atteignent 52 000 000 FCFA ; Téranga acquiert 15 % complémentaires pour 9 000 000 FCFA. Calculez l''écart complémentaire et le nouveau goodwill cumulé.
5. Citez deux retraitements d''homogénéisation fréquents et leur effet s''ils sont omis.
6. Un groupe cède 15 % des titres d''une filiale intégrée globalement, sans perdre le contrôle (55 % restants). Cette cession transite-t-elle par le résultat consolidé ? Justifiez.
7. Cas pratique complet : reprenez Baobab Industries / CAT et présentez en tableau l''évolution du goodwill, des minoritaires et de la quote-part du groupe entre 70 % et 80 %.

## Corrigé

1. Écart d''évaluation : différence entre valeur comptable et juste valeur d''un actif identifiable. Écart d''acquisition : le reste, sans actif identifiable précis. Exemple : un brevet non valorisé au bilan, de juste valeur 6 000 000 FCFA, est un écart d''évaluation ; le solde payé au-delà reste un goodwill.
2. La plus-value latente deviendra imposable à la cession ou à l''amortissement ; sans impôt différé, l''actif net serait surévalué et le goodwill sous-évalué.
3. Actif net à la juste valeur : 48 000 000 FCFA. Quote-part acquise (60 %) : 28 800 000 FCFA. Goodwill : 35 000 000 − 28 800 000 = 6 200 000 FCFA. Minoritaires (40 %) : 19 200 000 FCFA.
4. Quote-part des 15 % : 7 800 000 FCFA. Écart complémentaire : 9 000 000 − 7 800 000 = 1 200 000 FCFA. Goodwill cumulé : 7 400 000 FCFA.
5. Harmonisation des amortissements (sinon des résultats diffèrent par simple choix comptable) et neutralisation des provisions réglementées (sinon des éléments fiscaux polluent les capitaux propres consolidés).
6. Non : contrôle exclusif subsistant, l''opération reste entre actionnaires, imputée sur les capitaux propres consolidés, sans effet sur le résultat.
7. Ligne 1 (70 %) : actif net 81 250 000, quote-part groupe 56 875 000, goodwill 34 125 000, minoritaires 24 375 000. Ligne 2 (80 %) : actif net 95 000 000, quote-part des 10 % 9 500 000, écart complémentaire 5 500 000, goodwill cumulé 39 625 000, minoritaires 19 000 000.', 'texte', 45, false, 20
from public.courses c where c.slug = 'mas-compta-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Consolidation approfondie des comptes de groupe : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Normes IFRS et comparaison avec le SYSCOHADA : l''essentiel pour l''examen', '## Objectifs de la leçon

- Situer le référentiel IFRS par rapport au SYSCOHADA révisé : origine, logique, destinataires.
- Comparer, thème par thème, les traitements IFRS et SYSCOHADA : juste valeur, location, reconnaissance du revenu, dépréciation des actifs, consolidation.
- Appliquer le mécanisme du test de dépréciation (impairment) à un cas chiffré.
- Identifier les situations où une entreprise sénégalaise peut être concernée par les IFRS en plus du SYSCOHADA.

Cette leçon ne demande pas de mémoriser le numéro de chaque norme IFRS : elle vise une compréhension des principes et une capacité à comparer, sur un thème donné, la logique IFRS et la logique SYSCOHADA. En cas de doute sur un numéro de norme ou un seuil précis, indiquez-le comme « à vérifier » plutôt que de l''inventer.

## 1. Deux référentiels, deux logiques de départ

Le SYSCOHADA révisé, élaboré par l''Organisation pour l''Harmonisation du Droit des Affaires en Afrique, retient une approche largement fondée sur le coût historique, avec des règles détaillées et uniformes pour l''ensemble des entreprises de la zone, quelle que soit leur taille. L''objectif est la fiabilité, la comparabilité entre entreprises de la zone et la simplicité d''application, y compris pour les petites entreprises.

Les normes IFRS (International Financial Reporting Standards), élaborées par l''IASB (International Accounting Standards Board), s''adressent avant tout aux groupes et sociétés cotés qui informent des investisseurs internationaux. Leur logique privilégie la substance économique sur la forme juridique, et recourt davantage à la juste valeur et au jugement professionnel. Une société sénégalaise peut être concernée par les IFRS si elle est cotée sur une place qui l''exige, si elle appartient à un groupe qui doit consolider en IFRS, ou si un bailleur de fonds l''exige contractuellement : vérifiez toujours le cadre applicable au cas précis.

## 2. Comparaison thème par thème

- Juste valeur : les IFRS autorisent, pour certaines catégories d''actifs (immeubles de placement, certains instruments financiers), une réévaluation régulière à la juste valeur. Le SYSCOHADA reste par principe au coût historique diminué des amortissements et dépréciations, avec des réévaluations plus encadrées.
- Reconnaissance du revenu : les IFRS appliquent un modèle en cinq étapes (contrat, obligations de prestation, prix de la transaction, affectation, puis reconnaissance quand chaque obligation est satisfaite). Le SYSCOHADA retient des règles plus simples, proches de la méthode de l''avancement pour les prestations continues et de la livraison pour la vente de biens.
- Location : les IFRS imposent, pour le preneur, de comptabiliser quasiment tous les contrats de location à l''actif (droit d''utilisation) avec une dette en contrepartie. Le SYSCOHADA distingue, dans les comptes individuels, crédit-bail (méthode de base, retraitement possible en consolidation) et location simple (charge de l''exercice).
- Dépréciation : les deux référentiels imposent un test dès qu''un indice de perte de valeur apparaît, mais les IFRS détaillent précisément la valeur recouvrable (exemple ci-dessous), alors que le SYSCOHADA raisonne en termes plus généraux de valeur actuelle.
- Consolidation : les deux référentiels distinguent contrôle exclusif, contrôle conjoint et influence notable, avec des méthodes voisines, mais les textes IFRS sont plus détaillés sur la définition du contrôle dans des montages complexes (droits de vote potentiels, entités structurées).

## 3. Le test de dépréciation : un mécanisme à maîtriser

Le principe, commun aux deux référentiels dans son esprit, est le suivant : un actif ne doit jamais être maintenu au bilan pour une valeur supérieure à ce que l''entreprise peut en attendre économiquement. La valeur recouvrable d''un actif est le montant le plus élevé entre sa juste valeur diminuée des coûts de la vente et sa valeur d''utilité (valeur actualisée des flux de trésorerie futurs attendus de l''utilisation de l''actif).

Exemple : une unité de production de l''entreprise fictive Thiès Industries présente une valeur nette comptable de 120 000 000 FCFA. Un indice de perte de valeur apparaît (baisse durable d''activité). L''estimation donne une juste valeur nette des coûts de sortie de 95 000 000 FCFA, et une valeur d''utilité, calculée par actualisation des flux futurs attendus, de 105 000 000 FCFA.

- Valeur recouvrable : le montant le plus élevé entre 95 000 000 et 105 000 000, soit 105 000 000 FCFA.
- Comparaison à la valeur nette comptable : 120 000 000 FCFA.
- Dépréciation à comptabiliser : 120 000 000 − 105 000 000 = 15 000 000 FCFA.

Cette dépréciation s''enregistre en charge, par exemple au compte de dotations aux dépréciations (numéro de compte à vérifier dans le plan de comptes officiel du SYSCOHADA révisé, et dans la norme IFRS applicable pour une entité qui présente des comptes IFRS), et réduit la valeur de l''actif au bilan à 105 000 000 FCFA. Le même mécanisme s''applique à un goodwill issu d''une consolidation (voir la leçon précédente) : il est testé au moins annuellement, sans amortissement systématique dans de nombreux cadres IFRS, alors que le SYSCOHADA laisse davantage de place à un amortissement sur une durée justifiée en plus du test.

## 4. Pourquoi cette comparaison compte pour un professionnel sénégalais

Un comptable ou un contrôleur de gestion qui travaille dans un groupe régional, une filiale de multinationale ou une entreprise qui cherche à se faire coter doit savoir dialoguer avec les deux référentiels : produire les comptes individuels en SYSCOHADA tout en comprenant les retraitements qu''exigera une consolidation IFRS au niveau du groupe. La comparaison n''est pas un exercice académique : c''est une compétence directement mobilisée dans les cabinets d''audit, les directions financières de groupe et les missions de conseil.

## Points clés à retenir

- Le SYSCOHADA privilégie le coût historique et l''uniformité ; les IFRS privilégient la substance économique et la juste valeur, avec davantage de jugement professionnel.
- La valeur recouvrable d''un actif est le plus élevé entre sa juste valeur nette des coûts de sortie et sa valeur d''utilité ; une dépréciation s''impose dès que la valeur nette comptable la dépasse.
- Les deux référentiels distinguent contrôle exclusif, contrôle conjoint et influence notable en consolidation, avec des méthodes voisines mais des règles de détail différentes.
- Toujours vérifier, au cas par cas, si une entité sénégalaise est effectivement soumise aux IFRS avant de lui appliquer ce référentiel.

## Exercices pratiques

1. Expliquez en trois phrases la différence de logique générale entre SYSCOHADA et IFRS.
2. Donnez un exemple de situation où une société sénégalaise pourrait devoir produire des comptes IFRS en plus de ses comptes SYSCOHADA.
3. Une machine a une valeur nette comptable de 60 000 000 FCFA. Sa juste valeur nette des coûts de sortie est estimée à 38 000 000 FCFA, sa valeur d''utilité à 45 000 000 FCFA. Calculez la valeur recouvrable et la dépréciation à comptabiliser, le cas échéant.
4. Expliquez, pour la reconnaissance du revenu, la différence entre l''approche SYSCOHADA fondée sur la méthode de l''avancement et l''approche IFRS en cinq étapes.
5. Pourquoi les IFRS imposent-elles, pour le preneur, de comptabiliser la plupart des contrats de location à l''actif, alors que le SYSCOHADA distingue encore crédit-bail et location simple dans les comptes individuels ?
6. Un goodwill de consolidation est-il traité de la même façon en matière d''amortissement selon qu''on applique le SYSCOHADA ou un cadre IFRS ? Expliquez la nuance.

## Corrigé

1. Le SYSCOHADA retient le coût historique et des règles détaillées et uniformes, pour la fiabilité et la simplicité. Les IFRS privilégient la substance économique et la juste valeur, pour informer des investisseurs internationaux.
2. Par exemple une société sénégalaise cotée sur une place régionale qui exige des comptes IFRS, ou une filiale d''un groupe qui doit consolider en IFRS.
3. Valeur recouvrable : le plus élevé entre 38 000 000 et 45 000 000, soit 45 000 000 FCFA. Dépréciation : 60 000 000 − 45 000 000 = 15 000 000 FCFA.
4. La méthode de l''avancement reconnaît le revenu au fur et à mesure d''une prestation continue, en proportion du degré d''avancement. L''approche IFRS en cinq étapes identifie d''abord chaque obligation distincte, puis affecte le prix à chacune avant de reconnaître le revenu obligation par obligation.
5. Parce que la logique IFRS privilégie la substance : un contrat de location crée, dès sa signature, un droit d''usage et une obligation de payer des loyers, proches économiquement d''un actif financé par emprunt. Le SYSCOHADA reste plus proche de la forme juridique du contrat.
6. Oui : plusieurs cadres IFRS ne prévoient pas d''amortissement systématique du goodwill, seulement un test annuel, alors que le SYSCOHADA laisse la possibilité d''un amortissement en plus du test. Vérifiez toujours la règle précise en vigueur.', 'texte', 45, false, 30
from public.courses c where c.slug = 'mas-compta-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Normes IFRS et comparaison avec le SYSCOHADA : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Fiscalité internationale et prix de transfert : l''essentiel pour l''examen', '## Objectifs de la leçon

- Comprendre les notions de résidence fiscale et d''établissement stable dans un contexte international.
- Expliquer le rôle général des conventions de non double imposition, sans en détailler les clauses précises d''une convention particulière.
- Présenter les méthodes usuelles de détermination d''un prix de transfert entre entreprises liées.
- Appliquer la méthode du prix comparable sur le marché libre et la méthode du coût majoré à un cas chiffré.

Rappel important : cette leçon explique des mécanismes généraux. Aucun taux d''impôt, aucun seuil de documentation et aucune clause conventionnelle précise n''est donné comme officiel ; tout chiffre utilisé dans un exemple est explicitement qualifié de fictif, et vous devez vérifier le texte en vigueur (code général des impôts, conventions fiscales applicables) avant toute application réelle.

## 1. Résidence fiscale et établissement stable

Une entreprise est en principe imposée sur ses bénéfices dans l''État où elle a sa résidence fiscale (siège de direction effective, lieu d''immatriculation selon le droit interne). Lorsqu''elle exerce une activité dans un autre État sans y être résidente, ce second État peut néanmoins l''imposer sur les bénéfices rattachables à un établissement stable qu''elle y maintient : une installation fixe d''affaires (succursale, chantier au-delà d''une certaine durée, agent dépendant qui conclut des contrats au nom de l''entreprise). Cette notion détermine quel État a le droit d''imposer quelle part des bénéfices d''une activité transfrontalière.

Exemple : une société sénégalaise qui ouvre un chantier de construction dans un pays voisin peut, selon la durée du chantier et les règles applicables, être considérée comme disposant d''un établissement stable dans ce pays, ce qui ouvre un droit d''imposition à cet État sur les bénéfices rattachables au chantier.

## 2. Le rôle des conventions de non double imposition

Lorsque deux États pourraient chacun revendiquer un droit d''imposer le même revenu, une convention fiscale bilatérale répartit en principe ce droit entre eux et prévoit des mécanismes pour éliminer la double imposition qui en résulterait sinon (exonération dans un État, ou crédit d''impôt imputable dans l''autre). Les pays de l''UEMOA ont, pour certains, conclu de telles conventions entre eux ou avec des pays tiers. Le contenu précis d''une convention (revenus visés, taux de retenue à la source, procédures) varie d''un texte à l''autre : à vérifier convention par convention, jamais à généraliser.

## 3. Les prix de transfert : principe général

Quand deux entreprises liées (une mère et sa filiale, deux filiales sœurs) effectuent des transactions entre elles, le prix qu''elles se facturent peut, en l''absence de contrôle, être fixé pour déplacer artificiellement du bénéfice vers le pays le plus avantageux fiscalement. Le principe de pleine concurrence (arm''s length) impose que ce prix intragroupe soit celui qu''auraient fixé des entreprises indépendantes dans des conditions comparables. Les administrations fiscales demandent aux groupes de documenter la cohérence de leurs prix intragroupe avec ce principe.

Les méthodes les plus courantes pour déterminer ou justifier un prix de transfert :

- La méthode du prix comparable sur le marché libre : comparer directement le prix intragroupe à celui pratiqué entre entreprises indépendantes pour une transaction similaire.
- La méthode du prix de revente : partir du prix auquel le produit est revendu à un client indépendant, et en déduire une marge brute comparable à celle d''un revendeur indépendant, pour en déduire le prix d''achat intragroupe acceptable.
- La méthode du coût majoré (cost plus) : partir du coût de production supporté par l''entité qui fabrique ou fournit le bien ou le service, et y ajouter une marge comparable à celle observée chez des producteurs indépendants comparables.
- Les méthodes transactionnelles fondées sur les bénéfices (partage des bénéfices, marge nette transactionnelle) : utilisées quand les transactions sont trop imbriquées pour isoler un prix par transaction.

## 4. Cas d''entreprise : application de la méthode du coût majoré

La filiale sénégalaise Niayes Composants fabrique des pièces semi-finies qu''elle vend exclusivement à sa société mère installée dans un autre pays. Son coût de production unitaire est de 8 000 FCFA. Une étude de comparables indépendants dans le même secteur fait apparaître une marge sur coûts de 20 %, un taux fictif pour l''exemple.

- Prix de pleine concurrence attendu : 8 000 × (1 + 20 %) = 9 600 FCFA par unité.
- Prix effectivement facturé par Niayes Composants à sa mère : 7 500 FCFA par unité.
- Écart par unité par rapport au prix de pleine concurrence : 9 600 − 7 500 = 2 100 FCFA.
- Pour un volume annuel de 50 000 unités, l''écart total s''élève à 2 100 × 50 000 = 105 000 000 FCFA.

Ce résultat signifie que Niayes Composants a facturé un prix inférieur à ce qu''aurait obtenu une entreprise indépendante comparable, ce qui réduit artificiellement son bénéfice imposable au Sénégal au profit du pays de la mère. Une administration fiscale pourrait, sur la base de comparables documentés, réintégrer cet écart dans le bénéfice imposable de la filiale. L''ampleur exacte d''un tel redressement dépend du droit interne et doit être vérifiée au cas par cas ; ce calcul n''illustre que le principe économique, pas une procédure officielle.

## 5. Documentation des prix de transfert

Au-delà du calcul, les groupes sont généralement tenus de documenter leur politique de prix de transfert : description du groupe et des fonctions de chaque entité, analyse des transactions intragroupe, choix et justification de la méthode retenue par catégorie de transaction. Les seuils de documentation formelle et les sanctions en cas de manquement relèvent du droit interne de chaque État et doivent être vérifiés dans les textes en vigueur, jamais mémorisés comme universels.

## Points clés à retenir

- L''établissement stable détermine quel État peut imposer les bénéfices d''une activité transfrontalière sans résidence fiscale dans cet État.
- Une convention de non double imposition répartit le droit d''imposer entre deux États et prévoit un mécanisme pour éliminer la double imposition ; son contenu précis varie et doit être vérifié convention par convention.
- Le principe de pleine concurrence exige que les prix intragroupe correspondent à ce qu''auraient fixé des entreprises indépendantes comparables.
- Les méthodes de prix de transfert (prix comparable, prix de revente, coût majoré, méthodes fondées sur les bénéfices) se choisissent selon la nature de la transaction et la disponibilité de comparables fiables.

## Exercices pratiques

1. Expliquez la différence entre résidence fiscale et établissement stable, avec un exemple.
2. À quoi sert une convention de non double imposition, en principe général ?
3. Une filiale fabrique un composant à un coût de 5 000 FCFA l''unité. La marge sur coûts observée chez des comparables indépendants est de 15 % (taux fictif pour l''exemple). Calculez le prix de pleine concurrence attendu.
4. Dans le cas précédent, la filiale facture en réalité 5 400 FCFA l''unité à sa société mère, pour un volume de 20 000 unités par an. Calculez l''écart unitaire et l''écart total par rapport au prix de pleine concurrence.
5. Expliquez la différence entre la méthode du prix de revente et la méthode du coût majoré : laquelle se place du point de vue du vendeur, laquelle du point de vue de l''acheteur revendeur ?
6. Pourquoi une administration fiscale s''intéresse-t-elle particulièrement aux transactions entre une filiale locale et sa société mère étrangère, plutôt qu''aux transactions avec des clients indépendants ?

## Corrigé

1. La résidence fiscale dépend du lieu où l''entreprise est établie ou dirigée ; elle entraîne une imposition sur l''ensemble des bénéfices dans cet État. L''établissement stable est une installation fixe d''affaires qu''une entreprise non-résidente maintient dans un autre État (succursale, chantier durable, agent dépendant), qui ouvre à cet État un droit d''imposer les bénéfices rattachables à cette installation.
2. Elle répartit, entre les deux États signataires, le droit d''imposer un même revenu transfrontalier et prévoit un mécanisme (exonération ou crédit d''impôt) pour éviter une double imposition.
3. Prix de pleine concurrence : 5 000 × (1 + 15 %) = 5 750 FCFA.
4. Écart unitaire : 5 750 − 5 400 = 350 FCFA. Écart total pour 20 000 unités : 350 × 20 000 = 7 000 000 FCFA.
5. La méthode du prix de revente part du prix de revente à un client indépendant et en déduit une marge de revendeur comparable, pour vérifier ou fixer le prix d''achat intragroupe : elle se place du point de vue de l''acheteur revendeur. La méthode du coût majoré part du coût de production du fournisseur et y ajoute une marge comparable, en se plaçant du point de vue du vendeur producteur.
6. Parce que la filiale et sa mère ne négocient pas en indépendance réciproque : un lien de contrôle permet, en théorie, de fixer un prix qui déplace le bénéfice vers l''État le plus avantageux fiscalement, ce qu''empêche la logique d''un client réellement indépendant qui défend ses propres intérêts.', 'texte', 45, false, 40
from public.courses c where c.slug = 'mas-compta-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Fiscalité internationale et prix de transfert : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Master 1 (entraînement)', '## Présentation du sujet

Sujet type non officiel, à titre d''entraînement, barème indicatif sur 20 points. Durée conseillée : 3 heures. Il mobilise les trois matières avancées du Master 1 : consolidation approfondie, normes IFRS et comparaison avec le SYSCOHADA, fiscalité internationale et prix de transfert, à partir d''un même groupe fictif.

Le groupe sénégalais Teranga Agro-Industries (TAI) détient 75 % du capital de sa filiale de transformation Louga Semences (LS) et possède une seconde filiale, Dakar Export (DE), dont elle vend les produits finis à un distributeur du groupe installé à l''étranger.

## Partie 1 — Consolidation approfondie (8 points)

TAI a acquis ses 75 % de LS pour 84 000 000 FCFA. À cette date, les capitaux propres comptables de LS sont de 60 000 000 FCFA (capital 40 000 000, réserves 20 000 000). Un entrepôt inscrit au bilan de LS pour 12 000 000 FCFA a une juste valeur de 22 000 000 FCFA.

1. (3 points) Calculez l''écart d''évaluation net d''impôt différé (taux fictif pour l''exemple de 25 %), puis l''actif net de LS à la juste valeur.
2. (3 points) Calculez la quote-part acquise par TAI, l''écart d''acquisition (goodwill) et les intérêts minoritaires à la date d''acquisition.
3. (2 points) Un an plus tard, LS a réalisé un résultat de 6 000 000 FCFA (capitaux propres réévalués atteignant 71 000 000 FCFA, écart d''évaluation inclus). Répartissez ce résultat entre le groupe et les minoritaires.

## Partie 2 — Normes IFRS et comparaison SYSCOHADA (6 points)

4. (2 points) Expliquez, en quelques lignes, la différence de logique générale entre le SYSCOHADA révisé et les normes IFRS.
5. (4 points) Un entrepôt de Dakar Export présente une valeur nette comptable de 50 000 000 FCFA. Un indice de perte de valeur apparaît. La juste valeur nette des coûts de sortie est estimée à 30 000 000 FCFA, la valeur d''utilité à 36 000 000 FCFA. Déterminez la valeur recouvrable et la dépréciation éventuelle à comptabiliser.

## Partie 3 — Fiscalité internationale et prix de transfert (6 points)

Dakar Export vend des produits finis à un distributeur du groupe installé à l''étranger. Son coût de production unitaire est de 12 000 FCFA. Une étude de comparables indépendants fait apparaître une marge sur coûts de 18 %, taux fictif pour l''exemple.

6. (2 points) Calculez le prix de pleine concurrence attendu par la méthode du coût majoré.
7. (2 points) Dakar Export facture en réalité 13 000 FCFA l''unité, pour un volume annuel de 30 000 unités. Calculez l''écart unitaire et l''écart total par rapport au prix de pleine concurrence.
8. (2 points) Expliquez en deux ou trois phrases pourquoi une administration fiscale pourrait s''intéresser à cet écart.

## Corrigé détaillé

1. Plus-value latente sur l''entrepôt : 22 000 000 − 12 000 000 = 10 000 000 FCFA. Effet d''impôt différé (25 %) : 2 500 000 FCFA. Écart d''évaluation net : 7 500 000 FCFA. Actif net de LS à la juste valeur : 60 000 000 + 7 500 000 = 67 500 000 FCFA.
2. Quote-part acquise (75 %) : 75 % × 67 500 000 = 50 625 000 FCFA. Écart d''acquisition (goodwill) : 84 000 000 − 50 625 000 = 33 375 000 FCFA. Intérêts minoritaires à l''acquisition (25 %) : 25 % × 67 500 000 = 16 875 000 FCFA.
3. Résultat de l''exercice : 6 000 000 FCFA, réparti selon les pourcentages d''intérêt : quote-part du groupe (75 %) : 4 500 000 FCFA ; quote-part des minoritaires (25 %) : 1 500 000 FCFA. Vérification des capitaux propres après un an : part groupe 50 625 000 + 4 500 000 = 55 125 000 FCFA ; part minoritaires 16 875 000 + 1 500 000 = 18 375 000 FCFA ; total 73 500 000 FCFA, cohérent avec 75 % + 25 % de 71 000 000 FCFA de capitaux propres réévalués plus la quote-part de résultat déjà incluse ou non selon la présentation retenue — l''essentiel attendu est la répartition correcte 75 % / 25 % du résultat de l''exercice.
4. Le SYSCOHADA retient le coût historique et des règles détaillées et uniformes, dans un objectif de fiabilité et de simplicité pour toutes les entreprises de la zone. Les IFRS privilégient la substance économique et un usage plus large de la juste valeur, pour informer des investisseurs internationaux, avec davantage de jugement professionnel laissé aux préparateurs des comptes.
5. Valeur recouvrable : le montant le plus élevé entre 30 000 000 et 36 000 000, soit 36 000 000 FCFA. Valeur nette comptable 50 000 000 FCFA supérieure à la valeur recouvrable : dépréciation à comptabiliser de 50 000 000 − 36 000 000 = 14 000 000 FCFA.
6. Prix de pleine concurrence : 12 000 × (1 + 18 %) = 14 160 FCFA par unité.
7. Écart unitaire : 14 160 − 13 000 = 1 160 FCFA. Écart total pour 30 000 unités : 1 160 × 30 000 = 34 800 000 FCFA.
8. Parce que le prix facturé est inférieur au prix de pleine concurrence estimé, ce qui réduit le bénéfice imposable de Dakar Export au Sénégal au profit du pays du distributeur ; une administration fiscale pourrait, sur la base d''une analyse de comparables documentée, chercher à réintégrer cet écart dans le bénéfice imposable de la filiale sénégalaise.

## Exercices pratiques

1. Reprenez la partie 1 du sujet en supposant que TAI n''acquiert que 55 % de LS pour 62 000 000 FCFA (mêmes capitaux propres et même entrepôt sous-évalué). Calculez l''écart d''acquisition et les intérêts minoritaires à l''acquisition.
2. Expliquez pourquoi la méthode de mise en équivalence ne serait pas appropriée pour LS dans l''hypothèse initiale du sujet (détention de 75 %).
3. Un bâtiment d''une autre filiale du groupe a une valeur nette comptable de 40 000 000 FCFA, une juste valeur nette des coûts de sortie de 28 000 000 FCFA et une valeur d''utilité de 25 000 000 FCFA. Calculez la valeur recouvrable et la dépréciation éventuelle.
4. Une troisième filiale du groupe vend un service à sa société mère pour 4 000 FCFA l''unité ; son coût de production est de 3 200 FCFA et la marge comparable observée chez des indépendants est de 10 % (taux fictif). Le prix facturé respecte-t-il le principe de pleine concurrence ? Justifiez par le calcul.
5. Citez une raison pour laquelle un groupe pourrait, de bonne foi et sans intention de fraude fiscale, fixer des prix de transfert éloignés du prix de pleine concurrence (par exemple une stratégie commerciale de pénétration de marché).

## Corrigé (exercices complémentaires)

1. Quote-part acquise (55 %) : 55 % × 67 500 000 = 37 125 000 FCFA. Écart d''acquisition : 62 000 000 − 37 125 000 = 24 875 000 FCFA. Intérêts minoritaires (45 %) : 45 % × 67 500 000 = 30 375 000 FCFA.
2. La mise en équivalence s''applique en cas d''influence notable, généralement présumée à partir de 20 % des droits de vote mais sans contrôle. Avec 75 % du capital et, sauf indication contraire, des droits de vote proportionnels, TAI dispose d''un contrôle exclusif présumé sur LS, ce qui impose l''intégration globale et non la mise en équivalence.
3. Valeur recouvrable : le plus élevé entre 28 000 000 et 25 000 000, soit 28 000 000 FCFA. Valeur nette comptable 40 000 000 FCFA supérieure à la valeur recouvrable : dépréciation de 40 000 000 − 28 000 000 = 12 000 000 FCFA.
4. Prix de pleine concurrence attendu : 3 200 × (1 + 10 %) = 3 520 FCFA. Le prix facturé de 4 000 FCFA est supérieur au prix de pleine concurrence attendu : dans cet exemple, la filiale facture plus cher que ne le ferait un indépendant comparable, ce qui n''est pas défavorable au fisc sénégalais si la filiale est celle qui vend (cela augmenterait son bénéfice imposable local plutôt que de le réduire), mais devrait être justifié par une analyse de comparables si contesté.
5. Par exemple une stratégie de pénétration d''un nouveau marché, où une filiale facture volontairement en dessous du prix de marché pendant une période limitée pour gagner des parts de marché, indépendamment de toute considération fiscale ; une documentation adéquate doit alors justifier cette politique commerciale pour la distinguer d''un transfert artificiel de bénéfice.', 'texte', 45, false, 50
from public.courses c where c.slug = 'mas-compta-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Master 1 (entraînement)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Consolidation approfondie des comptes de groupe', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Master 1 en Comptabilité.
- Objectifs : décomposer un écart de première consolidation entre écart d''évaluation et écart d''acquisition ; mener les retraitements d''homogénéisation ; traiter une variation de pourcentage de détention.
- Matériel : diaporama avec organigramme de groupe, calculatrice, plan de comptes SYSCOHADA révisé.
- Prérequis : consolidation simple de Licence 3 ; leçon « Consolidation approfondie des comptes de groupe » de ce cours.
- Précaution : numéros de comptes à vérifier dans le plan de comptes officiel du SYSCOHADA révisé.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture

Bonjour à toutes et à tous. En Licence, vous avez consolidé des groupes relativement simples, avec un seul écart d''acquisition facile à isoler. En Master, les sujets d''examen vous donneront des dossiers plus riches : un actif sous-évalué à retraiter, un impôt différé à calculer, une participation qui augmente d''une année sur l''autre. Cette séance suit le fil rouge du groupe fictif Baobab Industries, qui détient 70 %, puis 80 %, de sa filiale Casamance Agro-Transformation.

## 05:00 – 15:00 · Pourquoi retraiter avant de consolider

Avant tout cumul de comptes, chaque filiale doit parler le même langage comptable que sa société mère. Je vous montre trois retraitements fréquents. Premièrement, l''harmonisation des durées d''amortissement : si une filiale amortit ses véhicules sur quatre ans et une autre sur cinq ans, le groupe retient une méthode unique et ajuste les comptes de celle qui s''écarte. Deuxièmement, la neutralisation des provisions réglementées, qui n''ont qu''un objectif fiscal individuel et n''ont pas leur place dans une image économique du groupe : elles sont annulées, et un impôt différé est constaté si nécessaire. Troisièmement, le retraitement du crédit-bail : un bien financé par crédit-bail, resté hors bilan dans les comptes individuels selon la méthode de base du SYSCOHADA, est réintégré à l''actif consolidé avec sa dette financière, dès que le groupe retient la méthode préférentielle.

Question à la salle : pourquoi ces retraitements doivent-ils intervenir avant le cumul, et non après ? Réponse attendue : parce qu''ils modifient les capitaux propres et le résultat de départ de chaque filiale ; les appliquer après aurait fait l''économie de leur effet sur les écritures de consolidation elles-mêmes, notamment sur l''écart d''évaluation que nous allons calculer.

## 15:00 – 30:00 · Écart d''évaluation et écart d''acquisition : le cas Baobab Industries

Voici l''énoncé. Baobab Industries acquiert 70 % de Casamance Agro-Transformation (CAT) pour 91 000 000 FCFA. Les capitaux propres comptables de CAT sont de 70 000 000 FCFA (capital 50 000 000, réserves 20 000 000). Un bâtiment industriel, inscrit pour 10 000 000 FCFA, a une juste valeur de 25 000 000 FCFA.

Premier calcul : la plus-value latente sur le bâtiment, 25 000 000 moins 10 000 000, soit 15 000 000 FCFA. Deuxième calcul, l''effet d''impôt différé, à un taux fictif pour l''exemple de 25 % : 15 000 000 multiplié par 25 %, soit 3 750 000 FCFA. L''écart d''évaluation net s''élève donc à 15 000 000 moins 3 750 000, soit 11 250 000 FCFA. Nous ajoutons cet écart aux capitaux propres comptables : 70 000 000 plus 11 250 000, soit un actif net à la juste valeur de 81 250 000 FCFA.

Nous calculons maintenant la quote-part acquise par Baobab Industries : 70 % de 81 250 000, soit 56 875 000 FCFA. L''écart d''acquisition, ou goodwill, est la différence entre le coût d''acquisition et cette quote-part : 91 000 000 moins 56 875 000, soit 34 125 000 FCFA. Enfin, les intérêts minoritaires à la date d''acquisition, pour les 30 % restants : 30 % de 81 250 000, soit 24 375 000 FCFA.

Vérifions la cohérence : la quote-part du groupe, 56 875 000, plus les intérêts minoritaires, 24 375 000, doivent redonner l''actif net réévalué total. 56 875 000 plus 24 375 000 égale 81 250 000. Le calcul est cohérent.

## 30:00 – 35:00 · Pause active

Prenez votre calculatrice. Un groupe acquiert 65 % d''une filiale dont les capitaux propres comptables sont de 50 000 000 FCFA, avec un terrain sous-évalué de 6 000 000 FCFA sans impôt différé dans cet exemple. Le coût d''acquisition est de 45 000 000 FCFA. Calculez l''actif net à la juste valeur, la quote-part acquise, le goodwill et les intérêts minoritaires. Je vous laisse deux minutes, puis nous corrigeons ensemble à l''oral.

Correction : actif net à la juste valeur, 50 000 000 plus 6 000 000, soit 56 000 000 FCFA. Quote-part acquise, 65 % de 56 000 000, soit 36 400 000 FCFA. Goodwill, 45 000 000 moins 36 400 000, soit 8 600 000 FCFA. Intérêts minoritaires, 35 % de 56 000 000, soit 19 600 000 FCFA.

## 35:00 – 50:00 · Quiz interactif à mi-parcours

Cinq questions rapides, à main levée ou sur votre application de vote si vous en disposez.

Question 1. L''écart d''évaluation correspond-il à un élément identifiable de l''actif de la filiale, ou à un élément non identifiable comme la réputation ? Réponse : un élément identifiable.

Question 2. Si l''on omet l''effet d''impôt différé sur une plus-value latente, le goodwill calculé sera-t-il surestimé ou sous-estimé ? Réponse : sous-estimé, puisque l''actif net réévalué sera surestimé.

Question 3. Avec 70 % du capital et des droits de vote proportionnels, quelle méthode de consolidation s''applique en principe ? Réponse : l''intégration globale, puisque le contrôle exclusif est présumé au-delà de 50 % des droits de vote.

Question 4. Les intérêts minoritaires figurent-ils en dettes ou en capitaux propres du bilan consolidé ? Réponse : en capitaux propres, distincts de la part du groupe.

Question 5. Le goodwill est-il nécessairement amorti, quel que soit le référentiel appliqué ? Réponse : non, cela dépend du référentiel ; certains cadres IFRS imposent seulement un test de dépréciation annuel, sans amortissement systématique, alors que le SYSCOHADA laisse la possibilité d''un amortissement en plus du test.

## 50:00 – 1:05:00 · Variation de pourcentage de détention

Un an plus tard, les capitaux propres réévalués de CAT atteignent 95 000 000 FCFA. Baobab Industries acquiert 10 % complémentaires pour 15 000 000 FCFA, portant sa participation à 80 %. Comment traiter cette opération ?

D''abord, calculons la quote-part de l''actif net correspondant aux 10 % acquis, à la valeur actuelle de la filiale et non à celle de la première acquisition : 10 % de 95 000 000, soit 9 500 000 FCFA. L''écart complémentaire est la différence entre le prix payé et cette quote-part : 15 000 000 moins 9 500 000, soit 5 500 000 FCFA. Cet écart s''ajoute au goodwill déjà comptabilisé : 34 125 000 plus 5 500 000, soit un goodwill cumulé de 39 625 000 FCFA.

Les intérêts minoritaires, pour les 20 % restants, se recalculent sur la base actuelle : 20 % de 95 000 000, soit 19 000 000 FCFA, contre 24 375 000 FCFA avant l''opération. Cette baisse ne traduit pas une perte : elle correspond simplement au reclassement, vers le groupe, de la part auparavant détenue par les minoritaires. Point de méthode essentiel pour l''examen : tant que le contrôle exclusif subsistait avant et après l''opération, cette acquisition complémentaire est un mouvement entre actionnaires, imputé sur les capitaux propres consolidés, sans transiter par le résultat consolidé du groupe.

## 1:05:00 – 1:20:00 · Application complète et discussion

Reprenons l''ensemble du cas sous forme de tableau récapitulatif, du moment de la première acquisition jusqu''à l''acquisition complémentaire : à 70 %, actif net réévalué 81 250 000 FCFA, quote-part groupe 56 875 000 FCFA, goodwill 34 125 000 FCFA, minoritaires 24 375 000 FCFA ; après passage à 80 %, actif net réévalué 95 000 000 FCFA, quote-part des 10 % acquis 9 500 000 FCFA, écart complémentaire 5 500 000 FCFA, goodwill cumulé 39 625 000 FCFA, minoritaires ramenés à 19 000 000 FCFA.

Discussion : que se passerait-il si, au lieu d''acquérir 10 % complémentaires, Baobab Industries avait cédé 20 % de sa participation tout en conservant le contrôle (passage de 70 % à 50 % plus une voix, par exemple) ? Le principe reste le même : on compare le prix de cession à la quote-part de l''actif net cédé, à la valeur actuelle de la filiale, et l''écart s''impute sur les capitaux propres consolidés, jamais sur le résultat, tant que le contrôle exclusif subsiste.

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Synthèse : retenez la séquence en quatre temps — homogénéiser les comptes, réévaluer l''actif net identifiable à sa juste valeur nette d''impôt différé, calculer le goodwill par différence avec le coût d''acquisition, puis ajuster goodwill et intérêts minoritaires à chaque variation de pourcentage, en utilisant toujours la valeur actuelle de l''actif net au moment de l''opération.

Évaluation finale, cinq questions.

Question 1. Qu''est-ce qui distingue un écart d''évaluation d''un écart d''acquisition ? Réponse : l''écart d''évaluation correspond à la réévaluation d''un actif ou passif identifiable de la filiale ; l''écart d''acquisition est le solde non affecté à un actif précis.

Question 2. Pourquoi faut-il tenir compte d''un impôt différé sur une plus-value latente ? Réponse : parce que cette plus-value deviendra imposable à la cession ou à l''amortissement sur la nouvelle base, et l''ignorer surévaluerait l''actif net réel de la filiale.

Question 3. Un groupe détenant déjà le contrôle exclusif d''une filiale acquiert des titres complémentaires sans changer de méthode de consolidation. Cette opération transite-t-elle par le résultat consolidé ? Réponse : non, elle s''impute sur les capitaux propres consolidés, avec ajustement du goodwill et des intérêts minoritaires.

Question 4. Sur quelle valeur de l''actif net calcule-t-on l''écart complémentaire d''une acquisition de titres postérieure à la première consolidation ? Réponse : sur la valeur actuelle de l''actif net de la filiale à la date de cette nouvelle opération, et non sur la valeur retenue lors de la première acquisition.

Question 5. Citez deux retraitements d''homogénéisation à effectuer avant de cumuler les comptes d''un groupe. Réponse : par exemple l''harmonisation des durées d''amortissement et la neutralisation des provisions réglementées, remplacées le cas échéant par un impôt différé.

Merci pour votre attention. La prochaine séance portera sur les normes IFRS et leur comparaison avec le SYSCOHADA révisé.', 'video', 90, false, 60
from public.courses c where c.slug = 'mas-compta-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Consolidation approfondie des comptes de groupe');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Normes IFRS et comparaison avec le SYSCOHADA', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Master 1 en Comptabilité.
- Objectifs : comparer la logique SYSCOHADA et la logique IFRS sur plusieurs thèmes ; appliquer le mécanisme du test de dépréciation (valeur recouvrable).
- Matériel : diaporama comparatif, calculatrice.
- Prérequis : états financiers SYSCOHADA de Licence 3 ; leçon « Normes IFRS, notions avancées et comparaison avec le SYSCOHADA » de ce cours.
- Précaution : en cas de doute sur le numéro ou le détail d''une norme IFRS précise, dites-le explicitement plutôt que d''inventer une référence.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture

Bonjour. Aujourd''hui, nous ne allons pas apprendre de nouvelles écritures, mais apprendre à comparer deux façons de voir la comptabilité : celle du SYSCOHADA révisé, que vous maîtrisez depuis la Licence, et celle des normes IFRS, que vous croiserez de plus en plus si vous travaillez dans un groupe régional, un cabinet d''audit ou une entreprise qui cherche des financements internationaux.

## 05:00 – 15:00 · Deux logiques de départ

Le SYSCOHADA a été construit pour l''ensemble des entreprises de l''espace OHADA, grandes et petites, avec un objectif de fiabilité, de comparabilité régionale et de simplicité d''application. Il reste attaché, par principe, au coût historique.

Les IFRS, élaborées par l''IASB, visent d''abord les groupes et sociétés cotées qui informent des investisseurs internationaux. Leur logique privilégie la substance économique sur la forme juridique, et recourt davantage à la juste valeur et au jugement professionnel. Retenez cette phrase simple : le SYSCOHADA cherche la règle qui s''applique de la même façon partout ; les IFRS cherchent la représentation la plus fidèle de la réalité économique, même si cela demande plus de jugement au cas par cas.

Question à la salle : une entreprise sénégalaise non cotée, sans filiale étrangère, est-elle concernée par les IFRS ? Réponse attendue : en principe non, directement ; mais elle peut l''être si elle appartient à un groupe qui doit consolider en IFRS, ou si un partenaire financier l''exige contractuellement. Toujours vérifier le cadre applicable au cas précis.

## 15:00 – 30:00 · Comparaison thème par thème

Quatre thèmes à retenir. Premièrement, la juste valeur : les IFRS autorisent, pour certains actifs comme les immeubles de placement, une réévaluation régulière à la juste valeur ; le SYSCOHADA reste par principe au coût historique diminué des amortissements, avec des réévaluations plus encadrées.

Deuxièmement, la reconnaissance du revenu : les IFRS appliquent un modèle en cinq étapes, du contrat à la reconnaissance du revenu obligation de prestation par obligation de prestation. Le SYSCOHADA retient des règles plus simples, proches de la méthode de l''avancement pour les prestations continues.

Troisièmement, la location : les IFRS imposent au preneur de comptabiliser quasiment tous les contrats de location à l''actif, comme un droit d''utilisation avec une dette en contrepartie. Le SYSCOHADA distingue encore, dans les comptes individuels, le crédit-bail et la location simple.

Quatrièmement, la consolidation : les deux référentiels distinguent contrôle exclusif, contrôle conjoint et influence notable, avec des méthodes voisines, mais les textes IFRS détaillent davantage la notion de contrôle dans des montages complexes.

## 30:00 – 35:00 · Pause active

Exercice rapide : pour chacune des quatre situations suivantes, dites si elle illustre plutôt la logique SYSCOHADA ou la logique IFRS. Un immeuble de placement réévalué chaque année à sa juste valeur, avec variation en résultat. Un contrat de crédit-bail laissé hors bilan dans les comptes individuels. Un contrat de service complexe découpé en plusieurs obligations de prestation distinctes pour reconnaître le revenu progressivement. Une règle unique et détaillée appliquée de la même façon à toutes les entreprises de la zone.

Correction : le premier exemple est IFRS (juste valeur, immeuble de placement) ; le deuxième est SYSCOHADA (crédit-bail hors bilan en comptes individuels) ; le troisième est IFRS (modèle en cinq étapes) ; le quatrième est SYSCOHADA (règle uniforme).

## 35:00 – 50:00 · Quiz interactif à mi-parcours

Question 1. Quel référentiel recourt le plus largement à la juste valeur ? Réponse : les IFRS.

Question 2. Quel référentiel vise en priorité les investisseurs internationaux ? Réponse : les IFRS.

Question 3. Dans les comptes individuels SYSCOHADA, un bien pris en crédit-bail figure-t-il systématiquement à l''actif ? Réponse : non, il reste le plus souvent hors bilan selon la méthode de base, sauf retraitement, notamment en consolidation.

Question 4. Le test de dépréciation compare la valeur nette comptable à quelle valeur ? Réponse : à la valeur recouvrable, c''est-à-dire le montant le plus élevé entre la juste valeur nette des coûts de sortie et la valeur d''utilité.

Question 5. Le goodwill de consolidation est-il systématiquement amorti dans tous les cadres IFRS ? Réponse : non, plusieurs cadres IFRS ne prévoient qu''un test de dépréciation annuel, sans amortissement systématique.

## 50:00 – 1:10:00 · Le test de dépréciation en pratique

Reprenons le cas de l''entreprise fictive Thiès Industries. Une unité de production présente une valeur nette comptable de 120 000 000 FCFA. Un indice de perte de valeur apparaît : baisse durable d''activité du secteur. L''estimation donne une juste valeur nette des coûts de sortie de 95 000 000 FCFA, et une valeur d''utilité, calculée par actualisation des flux futurs attendus, de 105 000 000 FCFA.

Premier calcul : la valeur recouvrable est le montant le plus élevé entre 95 000 000 et 105 000 000, soit 105 000 000 FCFA. Deuxième calcul : nous comparons cette valeur recouvrable à la valeur nette comptable de 120 000 000 FCFA. Comme la valeur recouvrable est inférieure, une dépréciation s''impose, pour un montant de 120 000 000 moins 105 000 000, soit 15 000 000 FCFA.

Cette dépréciation s''enregistre en charge, et réduit la valeur de l''actif au bilan à 105 000 000 FCFA. Retenez bien la logique : on ne retient jamais la valeur la plus basse entre juste valeur et valeur d''utilité, mais la plus élevée, car l''entreprise choisirait rationnellement la meilleure option disponible, vendre ou continuer à utiliser l''actif.

Deuxième exercice, à faire vous-même en deux minutes : une machine a une valeur nette comptable de 60 000 000 FCFA, une juste valeur nette des coûts de sortie de 38 000 000 FCFA, une valeur d''utilité de 45 000 000 FCFA. Calculez la valeur recouvrable et la dépréciation.

Correction : valeur recouvrable, le plus élevé entre 38 000 000 et 45 000 000, soit 45 000 000 FCFA. Dépréciation : 60 000 000 moins 45 000 000, soit 15 000 000 FCFA.

## 1:10:00 – 1:20:00 · Pourquoi cette comparaison compte pour votre carrière

Un comptable ou un contrôleur de gestion qui travaille pour un groupe régional ou une filiale de multinationale doit savoir dialoguer avec les deux référentiels, produire des comptes individuels en SYSCOHADA tout en comprenant les retraitements qu''exigera une consolidation IFRS au niveau du groupe. Ce n''est pas un exercice académique : c''est une compétence directement recherchée par les cabinets d''audit, les directions financières de groupe et les cabinets de conseil en Afrique francophone. Les recruteurs apprécient particulièrement les candidats capables d''expliquer, sans jargon, pourquoi un même événement économique peut produire deux chiffres différents selon le référentiel retenu, et de justifier calmement cette différence devant un client ou un investisseur qui s''en étonne.

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Synthèse : le SYSCOHADA privilégie le coût historique et l''uniformité ; les IFRS privilégient la substance économique et la juste valeur, avec davantage de jugement professionnel. Le test de dépréciation compare toujours la valeur nette comptable à la valeur recouvrable, le plus élevé entre juste valeur nette des coûts de sortie et valeur d''utilité.

Évaluation finale, cinq questions.

Question 1. Quelle est la différence de logique générale entre SYSCOHADA et IFRS ? Réponse : le SYSCOHADA privilégie le coût historique et des règles uniformes pour la fiabilité et la simplicité ; les IFRS privilégient la substance économique et la juste valeur, pour informer des investisseurs internationaux.

Question 2. Comment calcule-t-on la valeur recouvrable d''un actif ? Réponse : c''est le montant le plus élevé entre sa juste valeur nette des coûts de sortie et sa valeur d''utilité.

Question 3. Une machine a une valeur nette comptable de 70 000 000 FCFA, une juste valeur nette des coûts de sortie de 50 000 000 FCFA et une valeur d''utilité de 55 000 000 FCFA. Quelle dépréciation faut-il comptabiliser ? Réponse : valeur recouvrable 55 000 000 FCFA ; dépréciation 70 000 000 moins 55 000 000, soit 15 000 000 FCFA.

Question 4. Le crédit-bail est-il traité de la même façon dans les comptes individuels SYSCOHADA et selon les IFRS côté preneur ? Réponse : non, les IFRS imposent la comptabilisation à l''actif d''un droit d''utilisation avec une dette, alors que le SYSCOHADA laisse le bien hors bilan dans les comptes individuels selon la méthode de base.

Question 5. Citez une situation où une entreprise sénégalaise non cotée pourrait tout de même devoir appliquer les IFRS. Réponse : si elle appartient à un groupe international qui doit consolider ses comptes en IFRS, ou si un partenaire financier l''exige contractuellement.

Merci de votre attention. La prochaine séance portera sur la fiscalité internationale et les prix de transfert.', 'video', 90, false, 70
from public.courses c where c.slug = 'mas-compta-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Normes IFRS et comparaison avec le SYSCOHADA');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Fiscalité internationale et prix de transfert', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Master 1 en Comptabilité.
- Objectifs : expliquer résidence fiscale, établissement stable et conventions de non double imposition ; appliquer les méthodes de prix de transfert à un cas chiffré.
- Matériel : diaporama, calculatrice.
- Prérequis : fiscalité des entreprises de Licence 2 ; leçon « Fiscalité internationale et prix de transfert » de ce cours.
- Précaution : tous les taux utilisés dans les exemples sont fictifs ; aucun seuil officiel n''est donné comme définitif, à vérifier dans les textes en vigueur.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture

Bonjour. Nous terminons les trois matières avancées du Master 1 par la fiscalité internationale et les prix de transfert, un sujet de plus en plus central à mesure que les entreprises sénégalaises et africaines se développent au-delà de leurs frontières. Fil rouge de la séance : la filiale fictive Niayes Composants, qui fabrique des pièces vendues exclusivement à sa société mère installée dans un autre pays.

## 05:00 – 15:00 · Résidence fiscale et établissement stable

Une entreprise est imposée, en principe, dans l''État où elle a sa résidence fiscale. Lorsqu''elle exerce une activité dans un autre État sans y être résidente, cet État peut néanmoins l''imposer sur les bénéfices rattachables à un établissement stable qu''elle y maintient : une installation fixe d''affaires, comme une succursale, un chantier au-delà d''une certaine durée, ou un agent dépendant qui conclut des contrats au nom de l''entreprise.

Exemple : une société sénégalaise qui ouvre un chantier de construction dans un pays voisin peut, selon la durée du chantier et les règles applicables, être considérée comme disposant d''un établissement stable dans ce pays. Cela ouvre à cet État un droit d''imposer les bénéfices rattachables au chantier, sans que la société y soit résidente au sens général du terme.

Question à la salle : si le même chantier ne dure que deux semaines, pensez-vous qu''il constituerait un établissement stable ? Réponse attendue : probablement pas, car la notion d''établissement stable suppose une certaine permanence ou une durée minimale selon les règles applicables ; mais la durée précise exigée doit toujours être vérifiée dans le droit interne ou la convention applicable, jamais supposée universelle.

## 15:00 – 25:00 · Les conventions de non double imposition

Lorsque deux États pourraient chacun revendiquer un droit d''imposer le même revenu, une convention fiscale bilatérale répartit ce droit entre eux et prévoit un mécanisme pour éliminer la double imposition : exonération dans un État, ou crédit d''impôt imputable sur l''impôt dû dans l''autre. Les pays de l''UEMOA ont, pour certains, conclu de telles conventions entre eux ou avec des pays tiers. Retenez bien : le contenu précis d''une convention, les revenus visés, les taux de retenue à la source, les procédures à suivre, varie d''un texte à l''autre et doit toujours être vérifié convention par convention.

## 25:00 – 35:00 · Le principe de pleine concurrence et les méthodes de prix de transfert

Quand deux entreprises liées effectuent des transactions entre elles, le prix qu''elles se facturent peut être fixé pour déplacer artificiellement du bénéfice vers le pays le plus avantageux fiscalement. Le principe de pleine concurrence impose que ce prix intragroupe soit celui qu''auraient fixé des entreprises indépendantes dans des conditions comparables.

Quatre méthodes à connaître. La méthode du prix comparable sur le marché libre compare directement le prix intragroupe à celui pratiqué entre indépendants. La méthode du prix de revente part du prix de revente à un client indépendant et en déduit une marge de revendeur comparable. La méthode du coût majoré part du coût de production et y ajoute une marge comparable à celle de producteurs indépendants. Enfin, les méthodes transactionnelles fondées sur les bénéfices s''utilisent quand les transactions sont trop imbriquées pour isoler un prix par transaction.

## 35:00 – 50:00 · Quiz interactif à mi-parcours

Question 1. L''établissement stable permet-il à un État d''imposer une entreprise non résidente ? Réponse : oui, sur les bénéfices rattachables à cet établissement stable.

Question 2. Que prévoit en principe une convention de non double imposition ? Réponse : la répartition du droit d''imposer entre les deux États signataires, et un mécanisme pour éviter qu''un même revenu soit imposé deux fois.

Question 3. Quel principe impose que le prix intragroupe corresponde à celui que fixeraient des entreprises indépendantes ? Réponse : le principe de pleine concurrence.

Question 4. La méthode du coût majoré se place du point de vue de quel acteur de la transaction ? Réponse : du vendeur producteur, qui part de son coût de production et y ajoute une marge comparable.

Question 5. Pourquoi une administration fiscale s''intéresse-t-elle particulièrement aux transactions entre une filiale locale et sa société mère étrangère ? Réponse : parce qu''un lien de contrôle permet, en théorie, de fixer un prix qui déplace artificiellement le bénéfice, ce qu''empêche la logique d''un client indépendant.

## 50:00 – 1:10:00 · Application complète : le cas Niayes Composants

Reprenons le cas en détail. Niayes Composants fabrique des pièces semi-finies qu''elle vend exclusivement à sa société mère. Son coût de production unitaire est de 8 000 FCFA. Une étude de comparables indépendants fait apparaître une marge sur coûts de 20 %, un taux fictif pour l''exemple.

Premier calcul, le prix de pleine concurrence attendu : 8 000 multiplié par 1,20, soit 9 600 FCFA par unité. Deuxième donnée, le prix effectivement facturé par Niayes Composants à sa mère : 7 500 FCFA par unité. Troisième calcul, l''écart par unité : 9 600 moins 7 500, soit 2 100 FCFA. Pour un volume annuel de 50 000 unités, l''écart total s''élève à 2 100 multiplié par 50 000, soit 105 000 000 FCFA.

Ce résultat signifie que Niayes Composants a facturé un prix inférieur à ce qu''aurait obtenu une entreprise indépendante comparable, réduisant artificiellement son bénéfice imposable au Sénégal au profit du pays de la mère. Une administration fiscale pourrait, sur la base de comparables documentés, chercher à réintégrer cet écart dans le bénéfice imposable de la filiale sénégalaise.

Deuxième exercice, à vous de calculer : une autre filiale facture un service à sa mère pour 4 000 FCFA l''unité, alors que son coût de production est de 3 200 FCFA et que la marge comparable observée est de 10 %, taux fictif. Le prix respecte-t-il le principe de pleine concurrence ?

Correction : prix de pleine concurrence attendu, 3 200 multiplié par 1,10, soit 3 520 FCFA. Le prix facturé de 4 000 FCFA est supérieur à ce prix de pleine concurrence : dans ce cas précis, la filiale facture plus cher que ne le ferait un indépendant, ce qui n''est pas défavorable au fisc sénégalais si c''est elle qui vend, mais reste à justifier par une analyse de comparables documentée en cas de contrôle fiscal.

## 1:10:00 – 1:20:00 · Documentation et bonne foi

Au-delà du calcul, les groupes doivent généralement documenter leur politique de prix de transfert : description du groupe, analyse des transactions intragroupe, justification de la méthode retenue. Attention : un prix éloigné du prix de pleine concurrence n''est pas nécessairement frauduleux. Une filiale peut, de bonne foi, pratiquer un prix bas pendant une période limitée pour pénétrer un nouveau marché, sans intention fiscale. Une documentation adéquate doit alors expliquer cette politique commerciale, pour la distinguer d''un transfert artificiel de bénéfice.

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Synthèse : l''établissement stable détermine qui peut imposer une activité transfrontalière ; une convention de non double imposition répartit ce droit et évite la double taxation ; le principe de pleine concurrence impose des prix intragroupe comparables à ceux d''entreprises indépendantes, vérifiables par plusieurs méthodes selon la nature de la transaction.

Évaluation finale, cinq questions.

Question 1. Qu''est-ce qu''un établissement stable ? Réponse : une installation fixe d''affaires qu''une entreprise non résidente maintient dans un autre État, qui ouvre à cet État un droit d''imposer les bénéfices rattachables à cette installation.

Question 2. Quel est le rôle principal d''une convention de non double imposition ? Réponse : répartir le droit d''imposer un même revenu entre deux États et prévoir un mécanisme pour éviter qu''il soit imposé deux fois.

Question 3. Une filiale fabrique un bien à 6 000 FCFA l''unité ; la marge comparable observée est de 12 %, taux fictif. Quel est le prix de pleine concurrence attendu ? Réponse : 6 000 multiplié par 1,12, soit 6 720 FCFA.

Question 4. Dans la question précédente, la filiale facture en réalité 6 200 FCFA l''unité pour 10 000 unités. Quel est l''écart total ? Réponse : écart unitaire 6 720 moins 6 200, soit 520 FCFA ; écart total 520 multiplié par 10 000, soit 5 200 000 FCFA.

Question 5. Un prix de transfert éloigné du prix de pleine concurrence est-il toujours la preuve d''une fraude fiscale ? Réponse : non, il peut résulter d''une stratégie commerciale légitime, à condition d''être documenté et justifié.

Merci de votre attention. La prochaine séance sera un atelier transversal qui rassemble les trois matières de l''année sur un même cas d''entreprise.', 'video', 90, false, 80
from public.courses c where c.slug = 'mas-compta-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Fiscalité internationale et prix de transfert');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Atelier de synthèse transversal (groupe Teranga Agro-Industries)', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Master 1 en Comptabilité, en fin d''année.
- Objectifs : mobiliser dans un même cas d''entreprise les trois matières avancées de l''année (consolidation approfondie, IFRS, fiscalité internationale et prix de transfert) ; s''entraîner dans les conditions proches de l''examen.
- Matériel : diaporama avec organigramme de groupe, calculatrice.
- Prérequis : les trois cours vidéo précédents de ce cours.
- Précaution : cas et chiffres fictifs, construits pour l''entraînement ; toujours vérifier les textes officiels avant une application réelle.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture : pourquoi un atelier transversal

Bonjour. Cette dernière séance de l''année ne vous enseigne aucune notion nouvelle : elle vous entraîne à faire ce que l''examen vous demandera, c''est-à-dire mobiliser plusieurs matières sur un même dossier d''entreprise, exactement comme un professionnel doit le faire face à un cas réel. Nous reprenons le groupe fictif Teranga Agro-Industries, déjà rencontré dans le sujet type de ce cours, et nous le traitons pas à pas, comme en conditions d''examen.

## 05:00 – 10:00 · Présentation du dossier

Teranga Agro-Industries (TAI) détient 75 % du capital de sa filiale de transformation Louga Semences (LS), acquis pour 84 000 000 FCFA, alors que les capitaux propres comptables de LS étaient de 60 000 000 FCFA (capital 40 000 000, réserves 20 000 000), avec un entrepôt sous-évalué de 10 000 000 FCFA (valeur comptable 12 000 000 FCFA, juste valeur 22 000 000 FCFA). TAI possède également une seconde filiale, Dakar Export (DE), qui vend des produits finis à un distributeur du groupe installé à l''étranger, à un coût de production unitaire de 12 000 FCFA, pour un volume annuel de 30 000 unités.

## 10:00 – 30:00 · Bloc 1 : consolidation approfondie

Premier temps, la consolidation. Calculons l''effet d''impôt différé sur la plus-value latente de l''entrepôt, à un taux fictif de 25 % : 10 000 000 multiplié par 25 %, soit 2 500 000 FCFA. L''écart d''évaluation net s''élève donc à 10 000 000 moins 2 500 000, soit 7 500 000 FCFA. L''actif net de LS à la juste valeur devient 60 000 000 plus 7 500 000, soit 67 500 000 FCFA.

Nous calculons la quote-part acquise par TAI : 75 % de 67 500 000, soit 50 625 000 FCFA. L''écart d''acquisition, ou goodwill, est la différence avec le coût d''acquisition : 84 000 000 moins 50 625 000, soit 33 375 000 FCFA. Les intérêts minoritaires à l''acquisition, pour les 25 % restants, s''élèvent à 25 % de 67 500 000, soit 16 875 000 FCFA.

Question à la salle : si LS réalise, l''année suivante, un résultat de 6 000 000 FCFA, comment le répartir entre le groupe et les minoritaires ? Réponse attendue : selon les pourcentages d''intérêt, 75 % pour le groupe et 25 % pour les minoritaires, soit 4 500 000 FCFA pour le groupe et 1 500 000 FCFA pour les minoritaires.

## 30:00 – 35:00 · Pause active

Un petit calcul de vérification : si TAI n''avait acquis que 55 % de LS pour 62 000 000 FCFA, avec le même actif net réévalué de 67 500 000 FCFA, quel serait le nouveau goodwill ? Prenez deux minutes.

Correction : quote-part acquise, 55 % de 67 500 000, soit 37 125 000 FCFA. Goodwill : 62 000 000 moins 37 125 000, soit 24 875 000 FCFA. Vous remarquez que le même actif net réévalué donne un goodwill différent selon le pourcentage acquis et le prix payé : c''est exactement le type de variante qu''un sujet d''examen peut introduire pour tester votre compréhension, et non votre mémoire.

## 35:00 – 50:00 · Quiz interactif à mi-parcours

Question 1. Pourquoi calcule-t-on un impôt différé sur la plus-value latente d''un actif réévalué ? Réponse : parce que cette plus-value deviendra imposable à la cession ou à l''amortissement, et l''ignorer surévaluerait l''actif net réel.

Question 2. Avec 75 % du capital et des droits de vote proportionnels, quelle méthode de consolidation s''applique ? Réponse : l''intégration globale, le contrôle exclusif étant présumé au-delà de 50 % des droits de vote.

Question 3. Quelle est la différence de logique générale entre SYSCOHADA et IFRS ? Réponse : le SYSCOHADA privilégie le coût historique et des règles uniformes ; les IFRS privilégient la substance économique et la juste valeur, pour informer des investisseurs internationaux.

Question 4. Qu''est-ce que la valeur recouvrable d''un actif ? Réponse : le montant le plus élevé entre sa juste valeur nette des coûts de sortie et sa valeur d''utilité.

Question 5. Quel principe impose que le prix d''une transaction intragroupe corresponde à celui que fixeraient des entreprises indépendantes ? Réponse : le principe de pleine concurrence.

## 50:00 – 1:05:00 · Bloc 2 : IFRS et bloc 3 : prix de transfert

Deuxième temps, un entrepôt de Dakar Export présente une valeur nette comptable de 50 000 000 FCFA ; un indice de perte de valeur apparaît ; la juste valeur nette des coûts de sortie est de 30 000 000 FCFA, la valeur d''utilité de 36 000 000 FCFA. La valeur recouvrable est le montant le plus élevé entre les deux, soit 36 000 000 FCFA. La dépréciation à comptabiliser est donc de 50 000 000 moins 36 000 000, soit 14 000 000 FCFA.

Troisième temps, Dakar Export vend ses produits à un distributeur du groupe à l''étranger, pour un coût de production de 12 000 FCFA l''unité. Une étude de comparables indépendants indique une marge sur coûts de 18 %, taux fictif. Le prix de pleine concurrence attendu est de 12 000 multiplié par 1,18, soit 14 160 FCFA. Si Dakar Export facture en réalité 13 000 FCFA l''unité, pour 30 000 unités par an, l''écart unitaire est de 14 160 moins 13 000, soit 1 160 FCFA, et l''écart total de 1 160 multiplié par 30 000, soit 34 800 000 FCFA.

Discussion : pourquoi un même groupe, TAI, doit-il à la fois consolider LS, surveiller la dépréciation d''un actif de DE et documenter les prix facturés par DE à l''étranger ? Réponse attendue : parce que ces trois obligations relèvent de référentiels et d''objectifs différents, mais s''appliquent simultanément à la même réalité économique d''un groupe qui produit, transforme et exporte, et un bon professionnel doit savoir les articuler sans les confondre. Un sujet d''examen peut d''ailleurs vous demander explicitement d''expliquer, en une ou deux phrases, pourquoi un dirigeant non comptable a intérêt à comprendre ces trois résultats ensemble plutôt que séparément : parce qu''ils racontent, chacun à sa manière, la même trajectoire économique du groupe.

## 1:05:00 – 1:20:00 · Mise en situation : rédiger une synthèse pour la direction

Exercice final en petits groupes, puis restitution orale : rédigez, en cinq lignes maximum, une note de synthèse destinée à la direction de TAI, qui résume en langage non technique ce que révèlent ces trois calculs (goodwill de consolidation, dépréciation d''un actif, écart de prix de transfert) sur la situation du groupe. Nous écoutons deux ou trois restitutions et discutons ensemble de la clarté et de la pertinence de chacune, en insistant sur l''importance de traduire un résultat technique en une information utile à la décision, sans jargon excessif ni approximation trompeuse.

## 1:20:00 – 1:30:00 · Synthèse finale et évaluation

Synthèse de l''année : la consolidation approfondie exige de décomposer l''écart de première consolidation et de suivre les variations de pourcentage avec rigueur ; les IFRS complètent le SYSCOHADA par une logique de substance économique et de juste valeur, en particulier pour les tests de dépréciation ; la fiscalité internationale et les prix de transfert exigent de documenter des transactions intragroupe conformes au principe de pleine concurrence. Ces trois compétences se recoupent dans la réalité d''un groupe qui grandit au-delà de ses frontières.

Évaluation finale, cinq questions.

Question 1. Dans le cas TAI, quel est le goodwill calculé pour l''acquisition de 75 % de LS ? Réponse : 33 375 000 FCFA.

Question 2. Quelle est la dépréciation à comptabiliser sur l''entrepôt de DE ? Réponse : 14 000 000 FCFA.

Question 3. Quel est l''écart total de prix de transfert calculé pour les ventes de DE à l''étranger ? Réponse : 34 800 000 FCFA.

Question 4. Pourquoi ces trois résultats doivent-ils être présentés ensemble à la direction d''un groupe, et non comme trois sujets séparés ? Réponse : parce qu''ils décrivent la même réalité économique du groupe sous trois angles complémentaires, utiles à une décision cohérente.

Question 5. Quelle est la leçon méthodologique principale de cet atelier pour votre examen de Master 1 ? Réponse : savoir mobiliser plusieurs matières avancées sur un même dossier d''entreprise, en vérifiant chaque calcul et en reliant les résultats à une conclusion utile, pas seulement produire des chiffres isolés.

Merci à toutes et à tous pour votre travail cette année. Relisez vos trois fiches de synthèse avant l''examen, reprenez les exercices corrigés une dernière fois, et n''oubliez jamais d''écrire le raisonnement qui mène à chaque chiffre : c''est lui, bien plus que le résultat seul, qui sera noté. Bon courage pour vos examens de Master 1.', 'video', 90, false, 90
from public.courses c where c.slug = 'mas-compta-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Atelier de synthèse transversal (groupe Teranga Agro-Industries)');

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
