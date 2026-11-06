-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Cours (partie 15/18). À exécuter après seed.sql.

-- Cours : Contrôle de gestion Master 1 : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'mas-cg-m1', (select id from public.levels where name = 'Master 1'), null, 'Contrôle de gestion', 'Contrôle de gestion Master 1 : réussir ses examens', 'Préparation aux examens de Master 1 en Contrôle de gestion : pilotage de la performance globale (RSE, triple bottom line), gestion par centres de responsabilité et prix de cession interne avancé, systèmes d''information décisionnels (ERP, reporting consolidé). Études de cas d''entreprise sénégalaises et africaines fictives, calculs vérifiés, sujet type d''examen corrigé et quatre cours vidéo de 1h30.', true, 731
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Master 1 en Contrôle de gestion', 'Le Master 1 en Contrôle de gestion marque une rupture nette avec la Licence. Les examens ne se limitent plus au calcul correct d''un coût ou d''un écart : ils évaluent votre capacité à analyser une situation de gestion complexe, à articuler plusieurs outils entre eux, à argumenter un choix de méthode et à vous situer dans la stratégie globale de l''entreprise ou du groupe. Le correcteur attend un raisonnement de contrôleur de gestion senior, pas seulement un technicien du calcul.

## Ce qui change par rapport à la Licence

En Licence, vous avez appris à calculer : coûts complets, coûts partiels, écarts budgétaires, coûts ABC, indicateurs de tableau de bord. En Master 1, ces outils deviennent des briques que vous devez combiner pour répondre à des problématiques de pilotage : comment faire converger la performance économique, sociale et environnementale d''un groupe ? Comment fixer un prix de cession interne qui soit à la fois équitable entre filiales et cohérent avec la stratégie du groupe ? Comment un système d''information décisionnel fiabilise-t-il le reporting consolidé mensuel ?

Les études de cas d''examen portent sur des groupes ou des entreprises de taille significative, souvent multi-activités ou multi-sites, confrontés à des arbitrages réels : investir ou non dans une nouvelle unité, déléguer ou centraliser une décision, choisir entre plusieurs scénarios de performance globale. Vous devez mobiliser une analyse critique : discuter les limites d''un indicateur, les biais d''une méthode de cession interne, les risques d''un système d''information mal paramétré.

## Les trois matières avancées de l''année

- Contrôle de gestion stratégique et pilotage de la performance globale : relier le contrôle de gestion à la stratégie de l''entreprise, intégrer la responsabilité sociétale des entreprises (RSE) et la logique de triple bottom line (performance économique, sociale, environnementale) dans les outils de pilotage.
- Gestion de la performance par centres de responsabilité et prix de cession interne avancé : construire une organisation en centres de responsabilité (coût, profit, investissement), évaluer leur performance par le ROI et l''EVA, et maîtriser les méthodes avancées de fixation des prix de cession interne entre filiales d''un même groupe.
- Systèmes d''information décisionnels (ERP, reporting consolidé) : comprendre le rôle d''un ERP et des outils de Business Intelligence dans la production d''un reporting de gestion fiable, rapide et consolidé à l''échelle d''un groupe.

## Méthode de travail au niveau Master

Le travail attendu change de nature. Une étude de cas complexe ne se résout pas en appliquant une formule : il faut d''abord qualifier le problème (quel est l''enjeu de pilotage réel ?), choisir les outils pertinents parmi ceux que vous connaissez, les mettre en œuvre avec rigueur numérique, puis discuter les résultats (que signifient-ils pour le dirigeant ? quelles sont les limites de l''analyse ?). Beaucoup d''étudiants perdent des points non pas sur le calcul, mais sur l''absence de discussion critique en fin de réponse.

La revue de littérature courte devient un réflexe : quand une question porte sur un concept (RSE, EVA, prix de cession interne), rappelez en deux ou trois phrases le cadre théorique avant de l''appliquer au cas. Cela montre au correcteur que vous maîtrisez le concept et pas seulement la formule.

Enfin, les cas d''entreprise de Master mêlent souvent plusieurs filiales ou plusieurs centres de responsabilité : prenez l''habitude de schématiser l''organisation (qui vend à qui, qui décide de quoi) avant de calculer, pour ne pas vous perdre dans les flux internes.

## Plan de révision sur 6 semaines

- Semaine 1 : contrôle de gestion stratégique, RSE et triple bottom line ; relire les notions de Licence sur le tableau de bord prospectif pour bien voir la progression.
- Semaine 2 : exercices chiffrés sur le tableau de bord RSE et la construction d''indicateurs de performance globale pondérés.
- Semaine 3 : centres de responsabilité, ROI, EVA ; cas d''entreprise sur l''évaluation de filiales.
- Semaine 4 : prix de cession interne avancé (méthodes du coût, du marché, négociée) ; exercices sur l''impact de chaque méthode sur la marge des filiales et sur le résultat consolidé.
- Semaine 5 : systèmes d''information décisionnels, ERP, reporting consolidé ; qualité des données et délais de clôture.
- Semaine 6 : sujet type complet en conditions chronométrées, puis révision ciblée des points faibles identifiés.

## Points clés à retenir

- Le Master 1 exige d''articuler plusieurs outils de contrôle de gestion pour répondre à une problématique de pilotage, pas seulement de calculer juste.
- La RSE et la triple bottom line transforment le tableau de bord classique en un outil de pilotage de la performance globale.
- Le prix de cession interne n''a pas d''effet sur le résultat consolidé du groupe, mais il redistribue la performance entre filiales : c''est un enjeu d''évaluation et de motivation des responsables.
- La qualité et la rapidité du reporting consolidé dépendent directement de la fiabilité du système d''information décisionnel.

## Exercices pratiques

1. Expliquez en cinq lignes en quoi la logique de triple bottom line modifie la définition même de la performance d''une entreprise par rapport à une approche strictement financière.
2. Citez trois méthodes de fixation d''un prix de cession interne et donnez, pour chacune, un avantage et une limite.
3. Un centre de profit dégage un résultat d''exploitation de 245 100 000 FCFA avec des capitaux investis de 1 200 000 000 FCFA. Calculez son ROI.
4. Pourquoi un prix de cession interne différent ne change-t-il pas le résultat consolidé du groupe, alors qu''il change le résultat de chaque filiale prise séparément ?
5. Citez deux risques liés à un ERP mal paramétré pour la production d''un reporting consolidé mensuel.
6. Un groupe veut mettre en place un tableau de bord RSE. Proposez un indicateur simple pour chacun des trois axes (économique, social, environnemental).

## Corrigé

1. La triple bottom line (« triple résultat ») affirme qu''une entreprise performante doit créer de la valeur sur trois dimensions simultanées : économique (rentabilité, création de valeur financière), sociale (conditions de travail, emploi local, formation) et environnementale (empreinte carbone, gestion des ressources, déchets). Une entreprise très rentable financièrement mais dégradant fortement son environnement ou ses conditions sociales n''est plus considérée comme pleinement performante. Le contrôle de gestion doit donc produire des indicateurs sur les trois axes et pas seulement des indicateurs financiers.
2. Méthode du coût complet majoré d''une marge : avantage, simple à mettre en œuvre et traçable ; limite, elle peut intégrer l''inefficience du centre vendeur dans le prix. Méthode du prix du marché ajusté des économies internes : avantage, elle rapproche le prix d''une référence externe objective ; limite, elle suppose l''existence d''un marché externe comparable, ce qui n''est pas toujours le cas. Méthode du prix négocié entre responsables : avantage, elle respecte l''autonomie des centres de responsabilité ; limite, elle peut être longue à négocier et source de conflits internes.
3. ROI = résultat d''exploitation / capitaux investis = 245 100 000 / 1 200 000 000 = 0,2042, soit environ 20,4 %.
4. Le prix de cession interne est une opération intragroupe : ce que le centre vendeur gagne en plus, le centre acheteur le paie en plus, et inversement. Au niveau consolidé, cette opération s''élimine : seule compte la marge réalisée avec un client final extérieur au groupe. Le prix de cession interne est donc un outil de répartition interne de la performance, pas un levier de création de valeur pour le groupe dans son ensemble.
5. Un ERP mal paramétré peut produire des doublons ou des pertes de données lors de la consolidation de plusieurs filiales (incohérence des référentiels comptables), et peut allonger fortement les délais de clôture si les interfaces entre modules ne sont pas fiabilisées, retardant le reporting de gestion au moment où les décideurs en ont le plus besoin.
6. Exemples possibles : axe économique, taux de marge opérationnelle ou ROI ; axe social, taux de formation du personnel ou taux d''accidents du travail ; axe environnemental, volume de déchets rapporté à la production ou consommation d''énergie par unité produite. D''autres indicateurs pertinents et correctement justifiés sont acceptés.', 'texte', 45, true, 10
from public.courses c where c.slug = 'mas-cg-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Master 1 en Contrôle de gestion');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Contrôle de gestion stratégique et pilotage de la performance globale (RSE, triple bottom line) : l''essentiel pour l''examen', 'Le contrôle de gestion stratégique prolonge le contrôle de gestion opérationnel que vous avez étudié en Licence : il ne s''agit plus seulement de maîtriser des coûts ou des écarts à court terme, mais de piloter la mise en œuvre de la stratégie de l''entreprise sur le moyen et le long terme, en intégrant des dimensions qui dépassent la seule performance financière.

## De la performance financière à la performance globale

Pendant longtemps, le contrôle de gestion s''est concentré sur des indicateurs financiers : chiffre d''affaires, marge, résultat, rentabilité des capitaux investis. Cette approche reste nécessaire mais elle est jugée insuffisante, pour trois raisons : elle ne capture pas la création de valeur future (innovation, satisfaction client), ce que le tableau de bord prospectif étudié en Licence corrigeait déjà en ajoutant les axes clients, processus internes et apprentissage ; elle ignore les impacts sociaux (conditions de travail, emploi local) ; et elle ignore les impacts environnementaux (ressources, émissions, déchets), qui deviennent des risques financiers directs : réglementation plus stricte, coût de l''énergie, exigences des bailleurs de fonds et des clients internationaux.

La notion de performance globale réunit ces trois dimensions, en s''appuyant sur le concept de triple bottom line : une organisation durable doit produire simultanément un résultat économique (profit), un résultat social (people) et un résultat environnemental (planet). Le contrôle de gestion stratégique construit les outils qui mesurent, suivent et pilotent ces trois résultats en cohérence avec la stratégie.

## La responsabilité sociétale des entreprises (RSE) comme cadre de pilotage

La RSE désigne l''intégration volontaire, par l''entreprise, de préoccupations sociales et environnementales dans ses activités et ses relations avec ses parties prenantes (salariés, clients, fournisseurs, communautés locales, État). Pour le contrôleur de gestion, la RSE n''est pas qu''une politique de communication : c''est un domaine à piloter avec les mêmes exigences de rigueur que le contrôle budgétaire, avec des indicateurs mesurables et suivis dans le temps (taux de formation, taux de fréquence des accidents du travail, part des achats auprès de fournisseurs locaux, consommation d''eau ou d''énergie par unité produite, volume de déchets valorisés).

Ces indicateurs doivent être intégrés au tableau de bord courant au même titre que les indicateurs financiers, avec des cibles et des seuils d''alerte. Un tableau de bord qui isole la RSE dans un rapport annuel séparé ne remplit pas sa fonction de pilotage stratégique.

## Construire un indice de performance globale pondéré

Une pratique courante en contrôle de gestion stratégique consiste à agréger plusieurs indicateurs, parfois hétérogènes, en un indice de synthèse pondéré, pour faciliter la communication avec la direction générale et le conseil d''administration.

Prenons l''exemple du Groupe Teranga Agro-Industries, un groupe sénégalais fictif actif dans la transformation et la distribution de produits céréaliers. Sa direction générale souhaite disposer d''un indice de performance globale sur 20, construit à partir de trois scores (chacun noté sur 20 par un comité de pilotage, sur la base d''indicateurs objectifs) :

- Axe économique (poids 40 %) : score de 16/20, fondé sur la marge opérationnelle et le ROI des filiales.
- Axe social (poids 30 %) : score de 13/20, fondé sur le taux de formation, le taux d''accidents du travail et le taux de rétention du personnel.
- Axe environnemental (poids 30 %) : score de 11/20, fondé sur la consommation d''énergie par tonne produite et le taux de déchets valorisés.

L''indice de performance globale se calcule ainsi :
Indice = (16 × 0,40) + (13 × 0,30) + (11 × 0,30) = 6,4 + 3,9 + 3,3 = 13,6/20.

Ce résultat de 13,6/20 montre une performance économique solide, mais un retard net sur l''axe environnemental, qui tire l''indice global vers le bas. Le rôle du contrôleur de gestion n''est pas de s''arrêter au chiffre : il doit analyser la composition de l''indice pour identifier le levier d''action prioritaire. Ici, un plan d''action ciblé sur la réduction de la consommation d''énergie ou l''amélioration du taux de valorisation des déchets aurait un effet plus rapide sur l''indice global qu''un effort supplémentaire sur l''axe économique, déjà bien noté.

## Les limites de la pondération et la vigilance du contrôleur de gestion

La construction d''un indice pondéré pose deux problèmes méthodologiques fréquemment testés à l''examen. Premièrement, le choix des poids reste en partie arbitraire et reflète les priorités de la direction : un changement de pondération peut faire basculer l''appréciation globale sans que rien n''ait changé dans la réalité de l''entreprise. Deuxièmement, agréger des scores en un seul chiffre peut masquer une situation critique sur un sous-indicateur isolé (par exemple un taux d''accidents du travail en forte hausse) noyé dans une moyenne globalement satisfaisante. Un bon dispositif de pilotage conserve donc toujours, en complément de l''indice de synthèse, le détail des indicateurs avec leurs seuils d''alerte propres.

## Le contrôle de gestion stratégique face à la décision d''investissement durable

Le contrôle de gestion stratégique intervient aussi dans l''évaluation des choix d''investissement à dimension durable : un investissement dans une technologie moins polluante mais plus coûteuse à court terme doit être évalué non seulement sur sa rentabilité financière, mais aussi sur sa contribution aux objectifs RSE et sur les risques évités (réglementaires, réputationnels, d''approvisionnement). Cela conduit à des méthodes d''évaluation multicritères, où la rentabilité financière reste nécessaire mais n''est plus l''unique critère de décision.

## Points clés à retenir

- La performance globale réunit les dimensions économique, sociale et environnementale (triple bottom line) et dépasse la seule performance financière.
- La RSE doit être pilotée avec des indicateurs mesurables, intégrés au tableau de bord courant, et non reléguée à un rapport annuel isolé.
- Un indice de performance globale pondéré facilite la communication avec la direction, mais ses limites (arbitraire des poids, effet de masquage) doivent être connues et discutées.
- Les décisions d''investissement durable doivent être évaluées avec des critères multiples, pas seulement financiers.

## Exercices pratiques

1. Définissez la notion de triple bottom line et expliquez pourquoi elle élargit la définition traditionnelle de la performance d''entreprise.
2. Le comité de pilotage du Groupe Teranga Agro-Industries révise ses pondérations : axe économique 35 %, axe social 25 %, axe environnemental 40 %, avec les mêmes scores (16, 13, 11). Recalculez l''indice de performance globale.
3. Comparez le résultat obtenu à la question 2 avec l''indice initial de 13,6/20 et commentez l''effet du changement de pondération sur l''appréciation de la performance du groupe.
4. Proposez deux indicateurs RSE supplémentaires pertinents pour une entreprise agro-industrielle sénégalaise, en justifiant votre choix.
5. Expliquez pourquoi un indice de synthèse pondéré peut masquer une dégradation grave sur un indicateur isolé, et proposez une solution de pilotage pour éviter ce risque.
6. Cas pratique complet : la filiale Teranga Distribution envisage d''investir dans une flotte de camions plus propres, pour un surcoût de 120 000 000 FCFA par rapport à une flotte classique, avec une économie de carburant estimée à 18 000 000 FCFA par an sur 10 ans, et une réduction estimée des émissions de CO2 de 25 % sur le périmètre logistique. En tant que contrôleur de gestion stratégique, rédigez en huit à dix lignes une recommandation à la direction générale, en mobilisant à la fois un critère financier simple et un critère de performance globale.

## Corrigé

1. La triple bottom line postule qu''une organisation durablement performante doit produire simultanément trois résultats : un résultat économique (profit, création de valeur financière), un résultat social (conditions de travail, emploi, formation, équité) et un résultat environnemental (gestion des ressources, émissions, déchets). Elle élargit la définition traditionnelle de la performance, centrée sur le seul résultat financier, en intégrant des impacts qui deviennent progressivement des facteurs de risque et de création de valeur à part entière (réglementation, réputation, accès au financement).
2. Nouvel indice = (16 × 0,35) + (13 × 0,25) + (11 × 0,40) = 5,6 + 3,25 + 4,4 = 13,25/20.
3. L''indice passe de 13,6/20 à 13,25/20, soit une baisse de 0,35 point, alors qu''aucun des trois scores sous-jacents n''a changé. Cette baisse s''explique uniquement par le renforcement du poids de l''axe environnemental (le plus faible score, 11/20), au détriment de l''axe économique (le plus fort score, 16/20). Cela illustre la limite méthodologique de la pondération : le choix des poids, qui relève d''une décision de la direction, influence directement le résultat affiché, indépendamment de toute évolution réelle de la performance de l''entreprise.
4. Exemples acceptés : le taux de fournisseurs locaux dans les achats (indicateur social et économique, pertinent pour une agro-industrie qui structure une filière locale) ; le taux de valorisation ou de recyclage des sous-produits agricoles (indicateur environnemental directement lié à l''activité de transformation de céréales). D''autres indicateurs cohérents avec le secteur et correctement justifiés sont acceptés.
5. Un indice pondéré additionne des scores qui peuvent évoluer en sens contraire : une forte amélioration sur l''axe économique peut compenser statistiquement une dégradation sévère sur un indicateur social isolé (par exemple une hausse du taux d''accidents du travail), sans que l''indice global ne baisse de façon visible. La solution de pilotage consiste à conserver, en parallèle de l''indice de synthèse, un tableau de bord détaillé par indicateur avec des seuils d''alerte individuels, de sorte qu''une dégradation critique sur un seul indicateur déclenche une alerte même si l''indice global reste satisfaisant.
6. Sur le plan financier, l''investissement dégage une économie de carburant de 18 000 000 FCFA par an, soit 180 000 000 FCFA sur 10 ans, supérieure au surcoût initial de 120 000 000 FCFA : l''investissement est donc rentable en valeur brute non actualisée, et le serait probablement aussi en valeur actualisée compte tenu de l''écart important entre le gain cumulé et le surcoût. Sur le plan de la performance globale, la réduction de 25 % des émissions de CO2 sur le périmètre logistique améliore directement le score de l''axe environnemental du tableau de bord RSE du groupe, et réduit un risque réglementaire et réputationnel croissant. La recommandation est donc favorable à l''investissement, en soulignant qu''il combine un retour financier positif et une contribution mesurable à la performance globale du groupe, ce qui renforce la cohérence stratégique de la décision.', 'texte', 45, false, 20
from public.courses c where c.slug = 'mas-cg-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Contrôle de gestion stratégique et pilotage de la performance globale (RSE, triple bottom line) : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Gestion de la performance par centres de responsabilité et prix de cession interne avancé : l''essentiel pour l''examen', 'La gestion de la performance par centres de responsabilité prolonge et approfondit ce que vous avez vu en Licence sur les tableaux de bord et le prix de cession interne appliqué aux PME et au secteur public. Au niveau Master, l''enjeu est de construire une organisation complète en centres de responsabilité, d''évaluer rigoureusement leur performance, et de maîtriser les méthodes avancées de prix de cession interne dans un groupe à plusieurs filiales.

## Les quatre types de centres de responsabilité

Un centre de responsabilité est une unité de l''organisation (direction, filiale, usine, service) dont le responsable dispose d''une autonomie de décision sur des ressources, et qui est évalué sur des indicateurs correspondant exactement à son périmètre de décision. On distingue classiquement quatre types : le centre de coût, responsable de la maîtrise de ses charges pour un niveau d''activité donné, sans maîtrise directe sur le chiffre d''affaires (exemple : un atelier de production) ; le centre de recettes, responsable du chiffre d''affaires généré, sans maîtrise directe sur les coûts (exemple : une force de vente) ; le centre de profit, responsable à la fois des coûts et des recettes de son périmètre, et donc de son résultat (exemple : une filiale commerciale) ; et le centre d''investissement, dont le responsable décide aussi des investissements et des capitaux engagés, et doit être évalué sur la rentabilité de ces capitaux, pas seulement sur le résultat en valeur absolue.

Le principe de contrôlabilité est essentiel : un responsable ne doit être évalué que sur ce qu''il contrôle réellement. Évaluer un directeur d''usine (centre de coût) sur le chiffre d''affaires de l''entreprise viole ce principe et produit des indicateurs de pilotage inopérants, voire démotivants.

## Évaluer un centre d''investissement : le ROI et ses limites

Le retour sur investissement (ROI, Return on Investment) est l''indicateur le plus utilisé pour évaluer un centre d''investissement : ROI = Résultat d''exploitation du centre / Capitaux investis dans le centre. Il permet de comparer des centres de taille différente, puisqu''il s''exprime en pourcentage. Mais il présente une limite majeure : un responsable évalué sur son ROI peut être incité à refuser un projet rentable pour le groupe (rentabilité supérieure au coût du capital) mais qui ferait baisser le ROI moyen actuel de son centre. C''est le classique problème de sous-investissement induit par le pilotage au ROI.

## L''EVA, un indicateur complémentaire

La valeur ajoutée économique (EVA, Economic Value Added) corrige cette limite en mesurant la création de valeur réelle, au-delà de la simple rémunération du capital au coût exigé par les actionnaires ou le groupe : EVA = Résultat opérationnel net après impôt (NOPAT) − (Capitaux investis × Coût moyen pondéré du capital, CMPC). Une EVA positive signifie que le centre crée de la valeur au-delà du coût de son financement ; une EVA négative signifie qu''il détruit de la valeur, même si son résultat comptable reste positif. Contrairement au ROI, l''EVA n''incite pas à refuser un projet rentable qui dépasse le coût du capital, même s''il fait baisser le ROI moyen du centre.

Illustrons avec Teranga Céréales, filiale du Groupe Teranga Agro-Industries, centre d''investissement avec un résultat d''exploitation total de 245 100 000 FCFA pour des capitaux investis de 1 200 000 000 FCFA, soit un ROI de 20,4 %. Avec un taux d''impôt fictif de 30 % et un CMPC fictif de 12 %, le NOPAT est de 245 100 000 × 0,70 = 171 570 000 FCFA, et la charge de capital de 1 200 000 000 × 0,12 = 144 000 000 FCFA. L''EVA est donc de 27 570 000 FCFA : la filiale crée de la valeur, mais bien moins que ne le suggère son ROI apparent.

## Les méthodes avancées de prix de cession interne

Le prix de cession interne (PCI) est le prix auquel un centre vend un bien ou un service à un autre centre du même groupe. Il mesure la performance de chaque centre séparément et oriente les décisions des responsables (achat interne ou externe). Trois méthodes principales existent : la méthode du coût (coût complet ou marginal, éventuellement majoré d''une marge négociée) ; la méthode du prix de marché, qui s''appuie sur un bien comparable échangé entre entreprises indépendantes, ajusté des économies internes (coûts commerciaux évités, par exemple) ; et la méthode du prix négocié, qui laisse les deux responsables fixer un prix d''accord commun dans une fourchette encadrée par la direction générale, ce qui respecte leur autonomie mais demande un arbitrage en cas de désaccord.

Reprenons Teranga Céréales, qui cède du mil transformé à Teranga Distribution. Son coût complet unitaire est de 225 000 FCFA la tonne (coût variable 180 000 FCFA plus charges fixes unitaires de 45 000 FCFA, pour une activité normale de 10 000 tonnes). Le prix de marché d''un produit comparable est de 260 000 FCFA la tonne. Méthode du coût, marge négociée de 10 % : 225 000 × 1,10 = 247 500 FCFA. Méthode du marché, économie commerciale évitée de 8 % : 260 000 × 0,92 = 239 200 FCFA. Méthode du prix négocié, moyenne des deux bornes : (247 500 + 239 200) / 2 = 243 350 FCFA.

## L''effet du prix de cession interne sur la performance des filiales

Sur un volume cédé de 6 000 tonnes, avec un coût variable de distribution de 15 000 FCFA la tonne chez Teranga Distribution et un prix de revente externe de 300 000 FCFA la tonne, les trois méthodes donnent des marges différentes par filiale, mais une marge groupe identique : au prix négocié de 243 350 FCFA, Teranga Céréales dégage 110 100 000 FCFA et Teranga Distribution 249 900 000 FCFA, soit 360 000 000 FCFA au total. À la méthode du coût (247 500 FCFA), Teranga Céréales gagnerait 135 000 000 FCFA et Teranga Distribution 225 000 000 FCFA, toujours 360 000 000 FCFA au total. Le choix de méthode déplace la performance affichée entre filiales sans jamais modifier la création de valeur du groupe : la direction générale doit donc l''arbitrer avec soin, car il affecte l''évaluation et la rémunération variable des responsables.

## Points clés à retenir

- Le principe de contrôlabilité impose d''évaluer un responsable uniquement sur ce qu''il contrôle réellement.
- Le ROI peut inciter à refuser des investissements pourtant rentables pour le groupe ; l''EVA corrige ce biais en mesurant la création de valeur au-delà du coût du capital.
- Les trois méthodes de prix de cession interne (coût, marché, négocié) produisent des prix différents et donc des performances différentes par filiale, sans jamais changer le résultat consolidé du groupe.
- Le choix de la méthode de cession interne est un enjeu de gouvernance et de motivation, pas seulement un enjeu de calcul.

## Exercices pratiques

1. Expliquez le principe de contrôlabilité et donnez un exemple d''indicateur mal choisi qui le violerait.
2. Teranga Distribution (centre d''investissement) dégage un résultat d''exploitation de 249 900 000 FCFA pour des capitaux investis de 800 000 000 FCFA. Calculez son ROI, puis son EVA avec un taux d''impôt fictif de 30 % et un CMPC fictif de 12 %.
3. Comparez les ROI de Teranga Céréales (20,4 %) et de Teranga Distribution calculé à la question 2. Cette comparaison suffit-elle à conclure sur la performance respective des deux centres pour le groupe ?
4. Pourquoi un responsable de centre d''investissement évalué uniquement sur le ROI peut-il être incité à refuser un projet d''investissement rentable pour le groupe ?
5. Expliquez pourquoi le choix entre méthode du coût et méthode du marché n''a aucun effet sur le résultat consolidé du groupe, mais un effet direct sur la rémunération variable de chaque responsable de filiale si celle-ci dépend du résultat de sa propre entité.
6. Cas pratique : une troisième filiale, Teranga Export, pourrait acheter la même qualité de mil auprès d''un fournisseur étranger indépendant à 230 000 FCFA la tonne, mais la direction générale lui impose de s''approvisionner chez Teranga Céréales au prix négocié de 243 350 FCFA. En six à huit lignes, analysez la tension entre la performance affichée de Teranga Export et l''intérêt du groupe, et proposez un ajustement.

## Corrigé

1. Le principe de contrôlabilité impose d''évaluer un responsable uniquement sur les éléments qu''il maîtrise par ses décisions. Exemple de violation : évaluer le responsable d''un atelier de production (centre de coût) sur l''évolution du chiffre d''affaires, qui dépend de décisions commerciales qui ne relèvent pas de lui.
2. ROI = 249 900 000 / 800 000 000 = 0,3124, soit 31,24 %. NOPAT = 249 900 000 × 0,70 = 174 930 000 FCFA. Charge de capital = 800 000 000 × 0,12 = 96 000 000 FCFA. EVA = 174 930 000 − 96 000 000 = 78 930 000 FCFA.
3. Non : le ROI ne tient pas compte de la taille des capitaux investis. Teranga Céréales mobilise bien plus de capitaux (1 200 000 000 contre 800 000 000 FCFA) ; ici son EVA (27 570 000 FCFA) reste aussi inférieure à celle de Teranga Distribution (78 930 000 FCFA), mais ce ne serait pas systématique : un centre à fort ROI et faibles capitaux peut créer moins de valeur en montant absolu qu''un centre à ROI plus modeste mais à capitaux bien plus importants.
4. Si le ROI moyen actuel d''un centre est de 20 %, un nouveau projet rentable à 15 %, pourtant supérieur au coût du capital de 12 %, ferait baisser son ROI moyen. Un responsable évalué sur ce ROI peut donc refuser ce projet, alors qu''il créerait de la valeur pour le groupe. L''EVA, qui compare la rentabilité au coût du capital plutôt qu''au ROI moyen du centre, évite ce biais.
5. Le prix de cession interne est une transaction intragroupe : la marge gagnée en plus par le vendeur est exactement la marge perdue par l''acheteur, et leur somme reste inchangée. Le résultat consolidé est donc invariant. Mais si la rémunération de chaque responsable dépend du résultat de sa seule entité, le choix de méthode redistribue concrètement cette rémunération, ce qui explique les négociations entre centres de profit.
6. Teranga Export paie 13 350 FCFA de plus par tonne en achetant en interne, ce qui dégrade sa marge sans que cela résulte d''une décision qu''elle contrôle : c''est une violation du principe de contrôlabilité. L''achat interne peut se justifier si Teranga Céréales a besoin de ce débouché, ou pour la fiabilité d''approvisionnement. Un ajustement raisonnable consiste à aligner la cession sur le prix de marché externe (230 000 FCFA), ou à évaluer Teranga Export sur un résultat retraité à ce prix.', 'texte', 45, false, 30
from public.courses c where c.slug = 'mas-cg-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Gestion de la performance par centres de responsabilité et prix de cession interne avancé : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Systèmes d''information décisionnels (ERP, reporting consolidé) : l''essentiel pour l''examen', 'Un système d''information décisionnel (SID) est l''ensemble des outils, des bases de données et des processus qui permettent de collecter, structurer et restituer l''information de gestion nécessaire au pilotage de l''entreprise ou du groupe. Pour le contrôleur de gestion de Master, maîtriser le fonctionnement et les limites de ces systèmes est devenu aussi important que maîtriser les méthodes de calcul elles-mêmes : un indicateur parfaitement construit sur le plan théorique ne vaut rien s''il repose sur des données fausses, incomplètes ou produites trop tard.

## Le rôle de l''ERP dans la chaîne d''information de gestion

Un ERP (Enterprise Resource Planning, ou progiciel de gestion intégré) est un logiciel qui centralise dans une base de données unique les informations de plusieurs fonctions de l''entreprise (comptabilité, ventes, achats, production, ressources humaines, stocks). Avant la généralisation des ERP, chaque fonction gérait souvent ses propres fichiers, ce qui multipliait les ressaisies, les incohérences et les délais.

L''intérêt principal d''un ERP pour le contrôle de gestion est la cohérence et la traçabilité des données : une vente enregistrée dans le module commercial met automatiquement à jour le stock, génère l''écriture comptable correspondante et alimente en temps réel les tableaux de bord, sans ressaisie manuelle. Cela réduit les erreurs, accélère la production des informations de gestion et permet un suivi plus fréquent (hebdomadaire voire quotidien) plutôt que purement mensuel.

Mais un ERP mal paramétré peut produire l''effet inverse. Si les référentiels (plan de comptes, codification des centres de coûts, nomenclatures produits) ne sont pas harmonisés entre les filiales d''un groupe, la consolidation devient source d''erreurs : une même catégorie de charge peut être enregistrée différemment selon les filiales, rendant les agrégations peu fiables. Le paramétrage initial d''un ERP, notamment l''harmonisation des référentiels au niveau groupe, est donc un enjeu de contrôle de gestion à part entière, pas seulement informatique.

## Du système transactionnel au reporting de gestion

Un ERP enregistre des transactions (une vente, un achat, une sortie de stock) : c''est un système transactionnel. Le reporting de gestion a besoin d''une vision agrégée et analytique de ces transactions : marge par produit, par client, par filiale, évolution dans le temps, comparaison au budget. Cette transformation est assurée par des outils de Business Intelligence (BI), qui extraient les données de l''ERP, les structurent dans un entrepôt de données, puis les restituent sous forme de tableaux de bord.

Le contrôleur de gestion occupe une position charnière : il ne construit généralement pas lui-même l''ERP ou l''outil de BI, mais il définit les règles de gestion qui doivent y être codées (définition de la marge opérationnelle, périmètre d''un centre de coût, fréquence de mise à jour), et il reste responsable de la qualité des indicateurs restitués aux décideurs.

## Le reporting consolidé : un enjeu de délai et de qualité des données

Dans un groupe à plusieurs filiales, le reporting consolidé agrège les données de chaque entité pour donner une vision globale de la performance. Deux critères mesurent la qualité d''un dispositif de reporting consolidé : le délai de production (combien de jours ouvrés après la clôture du mois le reporting est-il disponible ?) et la fiabilité des données agrégées.

Illustrons avec le Groupe Teranga Agro-Industries. Avant l''ERP intégré, le reporting consolidé mensuel nécessitait 12 jours ouvrés (collecte manuelle, retraitements, consolidation sur tableur). Après l''intégration d''un ERP commun avec des référentiels harmonisés, ce délai est ramené à 5 jours ouvrés, soit un gain de (12 − 5) / 12 = 0,583, soit 58,3 %. La direction générale dispose donc de l''information près de deux semaines plus tôt, ce qui lui permet de réagir à un écart défavorable avant la fin du trimestre plutôt que de le constater trop tard.

## Mesurer la qualité des données consolidées

Un indice de qualité des données peut être construit comme l''indice de performance globale, en pondérant plusieurs critères notés sur 100 : exhaustivité 92 (poids 30 %), exactitude 88 (poids 35 %), cohérence inter-filiales 80 (poids 20 %), délai de saisie 75 (poids 15 %). L''indice se calcule ainsi : (92 × 0,30) + (88 × 0,35) + (80 × 0,20) + (75 × 0,15) = 27,6 + 30,8 + 16 + 11,25 = 85,65, soit environ 85,6 sur 100. Ce résultat montre une qualité globale satisfaisante, avec un point de vigilance clair sur le délai de saisie (75/100), le critère le moins bien noté, qui mérite une action corrective prioritaire, par exemple un rappel des échéances ou une automatisation renforcée de la collecte.

## Les risques spécifiques du reporting consolidé en environnement multi-ERP

De nombreux groupes, notamment issus de croissance externe (acquisition de filiales), fonctionnent encore avec plusieurs ERP différents selon les filiales, faute d''avoir harmonisé leurs systèmes d''information. La consolidation nécessite alors des interfaces ou des retraitements manuels, ce qui réintroduit les risques d''erreur et de délai que l''ERP intégré est censé éliminer. Le contrôleur de gestion doit documenter les règles de passage entre référentiels (table de correspondance des comptes, des centres de coûts) et mettre en place des contrôles de cohérence automatisés, par exemple un contrôle qui vérifie que le total des ventes intragroupe déclarées par le vendeur correspond au total des achats intragroupe déclarés par l''acheteur, avant toute élimination en consolidation.

## Points clés à retenir

- Un ERP centralise l''information de gestion mais sa fiabilité dépend d''un paramétrage initial rigoureux, en particulier l''harmonisation des référentiels entre filiales d''un groupe.
- Le reporting de gestion transforme la donnée transactionnelle de l''ERP en information de pilotage grâce aux outils de Business Intelligence ; le contrôleur de gestion définit les règles de gestion à y intégrer.
- La qualité d''un reporting consolidé se mesure à la fois par son délai de production et par la fiabilité des données agrégées (exhaustivité, exactitude, cohérence, respect des délais de saisie).
- En environnement multi-ERP, des contrôles de cohérence automatisés sont indispensables pour fiabiliser la consolidation.

## Exercices pratiques

1. Expliquez la différence entre un système transactionnel (ERP) et un outil de Business Intelligence (BI), et précisez le rôle du contrôleur de gestion dans leur articulation.
2. Pourquoi l''harmonisation des référentiels (plan de comptes, centres de coûts) entre filiales est-elle une condition nécessaire à la fiabilité d''un reporting consolidé ?
3. Un groupe réduit son délai de clôture consolidée de 18 jours ouvrés à 9 jours ouvrés grâce à un nouvel ERP intégré. Calculez le gain de délai en pourcentage.
4. Un comité qualité évalue les données consolidées d''un autre groupe sur les mêmes quatre critères que Teranga Agro-Industries, avec les scores suivants : exhaustivité 95 (poids 30 %), exactitude 90 (poids 35 %), cohérence inter-filiales 70 (poids 20 %), délai de saisie 85 (poids 15 %). Calculez l''indice de qualité des données.
5. Identifiez, dans le résultat de la question 4, le critère le plus faible et proposez une action corrective concrète.
6. Expliquez pourquoi un contrôle de cohérence automatisé entre ventes intragroupe déclarées par le vendeur et achats intragroupe déclarés par l''acheteur est particulièrement utile avant l''étape d''élimination en consolidation.
7. Cas pratique : le Groupe Teranga Agro-Industries envisage de remplacer ses deux ERP distincts (issus d''une acquisition récente) par un ERP unique, pour un coût de 400 000 000 FCFA sur 18 mois, qui réduirait le délai de clôture de 15 à 6 jours ouvrés et améliorerait l''indice de qualité des données de 78 à 90. Rédigez, en six à huit lignes, une note identifiant les bénéfices attendus et les principaux risques du projet (hors coût financier).

## Corrigé

1. Un système transactionnel comme l''ERP enregistre et stocke les opérations élémentaires de l''entreprise (une vente, un achat, un mouvement de stock) au moment où elles se produisent. Un outil de Business Intelligence extrait ces données, les agrège et les restitue sous une forme analytique utile à la décision (marge par produit, écarts au budget, évolution dans le temps). Le contrôleur de gestion n''intervient généralement pas dans la programmation technique de ces outils, mais il définit les règles de gestion à y intégrer (périmètre des centres de coûts, définition des indicateurs, fréquence de mise à jour) et il est responsable de la pertinence et de la fiabilité des informations finalement restituées aux décideurs.
2. Si chaque filiale utilise des définitions différentes pour une même notion (par exemple, un centre de coût ou une catégorie de charge codée différemment), l''agrégation des données au niveau groupe additionne des éléments qui ne sont pas réellement comparables, ce qui fausse les indicateurs consolidés (une charge peut être comptée dans une catégorie dans une filiale et dans une autre catégorie dans une autre filiale, rendant la lecture par nature de charge non fiable au niveau groupe). L''harmonisation des référentiels est donc une condition de fond, pas seulement technique, de la fiabilité du reporting consolidé.
3. Gain de délai = (18 − 9) / 18 = 0,50, soit 50 %.
4. Indice de qualité = (95 × 0,30) + (90 × 0,35) + (70 × 0,20) + (85 × 0,15) = 28,5 + 31,5 + 14 + 12,75 = 86,75, soit environ 86,8 sur 100.
5. Le critère le plus faible est la cohérence inter-filiales (70/100). Une action corrective concrète consiste à lancer un chantier d''harmonisation du plan de comptes analytique et des référentiels de centres de coûts entre toutes les filiales, avec une table de correspondance documentée et validée, avant la prochaine clôture consolidée.
6. Ce contrôle permet de détecter une incohérence (erreur de saisie, décalage de période, erreur d''affectation) avant l''étape d''élimination des opérations intragroupe en consolidation. Si les montants déclarés par le vendeur et par l''acheteur ne correspondent pas exactement, l''élimination produira un résultat consolidé erroné (une partie de la marge interne ne sera pas correctement neutralisée), sans que l''erreur soit nécessairement visible dans les comptes consolidés finaux. Un contrôle de cohérence systématique en amont évite ce risque et accélère la clôture, car les écarts sont corrigés à la source plutôt que découverts tardivement par la direction financière.
7. Deux bénéfices majeurs : un gain de délai de clôture de (15 − 6) / 15 = 60 %, pour un pilotage plus réactif en cas de dérive budgétaire ; une amélioration de l''indice de qualité de 78 à 90 sur 100, qui renforce la fiabilité des décisions (ROI, EVA, prix de cession interne, qui dépendent de données homogènes entre filiales). Risques hors coût financier : rupture opérationnelle pendant les 18 mois de migration, résistance au changement des équipes, et risque qu''un référentiel commun mal validé par le contrôle de gestion reproduise les mêmes problèmes de cohérence que le projet cherche à résoudre.', 'texte', 45, false, 40
from public.courses c where c.slug = 'mas-cg-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Systèmes d''information décisionnels (ERP, reporting consolidé) : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Master 1 en Contrôle de gestion (corrigé)', 'Ce sujet type regroupe les trois matières avancées du Master 1 en Contrôle de gestion : le contrôle de gestion stratégique et la performance globale, la gestion par centres de responsabilité et le prix de cession interne, et les systèmes d''information décisionnels. Il n''a pas de valeur officielle et le barème indiqué est purement indicatif, pour vous aider à répartir votre temps de révision. Traitez-le en conditions d''examen (durée conseillée : 3 heures) avant de consulter le corrigé.

## Présentation du cas

Le Groupe Sahel Industries (groupe fictif sénégalais) regroupe deux filiales : Sahel Minoterie (transformation de céréales, centre d''investissement) et Sahel Agro-Export (distribution et exportation régionale, centre d''investissement). Sahel Minoterie cède une partie de sa production à Sahel Agro-Export, qui la revend sur le marché régional. Le groupe a par ailleurs engagé un chantier de refonte de son système d''information et souhaite renforcer sa démarche RSE.

Données disponibles pour Sahel Minoterie : coût variable unitaire de 95 000 FCFA la tonne ; charges fixes annuelles totales de 300 000 000 FCFA pour une activité normale de 7 500 tonnes ; capitaux investis de 950 000 000 FCFA. Un produit comparable se vend sur le marché régional à 155 000 FCFA la tonne entre entreprises indépendantes. La marge négociée retenue en méthode du coût est de 8 %, et l''économie commerciale évitée en méthode du marché est de 10 %. Le volume cédé à Sahel Agro-Export est de 4 200 tonnes.

Le comité de pilotage du groupe évalue sa performance globale sur trois axes (notés sur 20) : axe économique 15, axe social 12, axe environnemental 10, avec des pondérations respectives de 45 %, 25 % et 30 %.

Un comité qualité évalue le système d''information décisionnel du groupe sur quatre critères (notés sur 100) : exhaustivité 90 (poids 30 %), exactitude 85 (poids 35 %), cohérence inter-filiales 72 (poids 20 %), délai de saisie 80 (poids 15 %).

## Questions (barème indicatif sur 20)

1. (3 points) Calculez le coût complet unitaire de Sahel Minoterie, puis le prix de cession interne selon la méthode du coût (coût complet majoré de la marge négociée) et selon la méthode du marché (prix de marché diminué de l''économie commerciale évitée).
2. (2 points) Proposez un prix de cession interne négocié et calculez-le.
3. (3 points) Sahel Minoterie dégage, par ailleurs, un résultat sur ses ventes externes de 80 000 000 FCFA, en plus de la marge réalisée sur la cession interne au prix négocié. Calculez le résultat d''exploitation total de Sahel Minoterie, puis son ROI, avec des capitaux investis de 950 000 000 FCFA.
4. (2 points) Avec un taux d''impôt fictif de 30 % et un CMPC fictif de 12 %, calculez l''EVA de Sahel Minoterie.
5. (3 points) Calculez l''indice de performance globale du Groupe Sahel Industries.
6. (3 points) Calculez l''indice de qualité des données du système d''information décisionnel du groupe.
7. (4 points) En mobilisant les résultats des questions précédentes, rédigez une synthèse argumentée (dix à quinze lignes) qui identifie le principal point fort et le principal point de vigilance du groupe sur les trois matières étudiées, et proposez une action prioritaire pour la direction générale.

## Corrigé détaillé

1. Charges fixes unitaires = 300 000 000 / 7 500 = 40 000 FCFA la tonne. Coût complet unitaire = 95 000 + 40 000 = 135 000 FCFA. Méthode du coût : 135 000 × (1 + 0,08) = 145 800 FCFA. Méthode du marché : 155 000 × (1 − 0,10) = 139 500 FCFA.
2. Le prix négocié peut raisonnablement être fixé comme la moyenne des deux bornes : (145 800 + 139 500) / 2 = 142 650 FCFA. Toute autre valeur comprise entre les deux bornes et correctement justifiée est acceptée.
3. Marge sur cession interne = (142 650 − 135 000) × 4 200 = 32 130 000 FCFA. Résultat d''exploitation total = 32 130 000 + 80 000 000 = 112 130 000 FCFA. ROI = 112 130 000 / 950 000 000 = 0,118, soit environ 11,8 %.
4. NOPAT = 112 130 000 × (1 − 0,30) = 78 491 000 FCFA. Charge de capital = 950 000 000 × 0,12 = 114 000 000 FCFA. EVA = 78 491 000 − 114 000 000 = −35 509 000 FCFA. L''EVA est négative : malgré un ROI positif de 11,8 %, Sahel Minoterie détruit de la valeur, car sa rentabilité est inférieure au coût du capital exigé par le groupe (12 %).
5. Indice de performance globale = (15 × 0,45) + (12 × 0,25) + (10 × 0,30) = 6,75 + 3 + 3 = 12,75/20.
6. Indice de qualité des données = (90 × 0,30) + (85 × 0,35) + (72 × 0,20) + (80 × 0,15) = 27 + 29,75 + 14,4 + 12 = 83,15, soit environ 83,2 sur 100.
7. Synthèse attendue : le principal point fort du groupe est la performance économique relative de ses deux filiales considérées isolément (axe économique noté 15/20, le plus élevé des trois axes de performance globale) et un système d''information globalement fiable (indice de qualité de 83,2/100). Le principal point de vigilance est double et doit être relié : d''une part, la performance environnementale (10/20, le plus faible des trois axes), qui tire l''indice global à 12,75/20 et appelle une action corrective ciblée ; d''autre part, et surtout, l''EVA négative de Sahel Minoterie (−35 509 000 FCFA) révèle que la filiale, malgré un ROI positif, détruit de la valeur au regard du coût du capital du groupe, ce qui doit alerter la direction générale au-delà du seul indicateur de rentabilité comptable. L''action prioritaire recommandée est de conduire un diagnostic approfondi des capitaux investis et de la structure de coûts de Sahel Minoterie (plutôt que de se satisfaire du ROI positif), en parallèle d''un plan d''action ciblé sur l''axe environnemental, ces deux chantiers pouvant d''ailleurs converger si une partie de la destruction de valeur provient d''investissements environnementaux coûteux mais encore peu valorisés dans le résultat d''exploitation.

## Exercices pratiques complémentaires

1. Pourquoi est-il important de calculer à la fois le ROI et l''EVA d''un centre d''investissement avant de conclure sur sa performance, comme l''illustre le cas de Sahel Minoterie ?
2. Si la direction générale du Groupe Sahel Industries retenait la méthode du coût (145 800 FCFA) plutôt que le prix négocié (142 650 FCFA) pour la cession interne, quel serait l''effet sur le résultat consolidé du groupe ? Justifiez sans recalculer.
3. Proposez une action corrective concrète pour améliorer le critère le plus faible de l''indice de qualité des données du groupe (cohérence inter-filiales, 72/100).

## Corrigé

1. Le ROI seul peut donner une image trompeuse de la performance : un ROI positif, comme celui de Sahel Minoterie (11,8 %), peut masquer le fait que cette rentabilité reste inférieure au coût du capital exigé par le groupe. L''EVA complète l''analyse en comparant directement la rentabilité au coût du capital, révélant ici une destruction de valeur (EVA négative) malgré un résultat comptable positif. Conclure sur la seule base du ROI aurait conduit la direction générale à sous-estimer gravement la situation réelle de la filiale.
2. Le résultat consolidé du groupe resterait strictement identique, car le prix de cession interne est une opération intragroupe qui s''élimine en consolidation : ce que Sahel Minoterie gagnerait en plus serait exactement ce que Sahel Agro-Export paierait en plus, sans effet sur la marge globale du groupe avec le client final.
3. Une action corrective concrète consiste à établir une table de correspondance unique entre les référentiels analytiques de Sahel Minoterie et de Sahel Agro-Export (plan de comptes, codification des centres de coûts), validée par le contrôle de gestion groupe, et à imposer son utilisation uniforme avant la prochaine clôture consolidée, avec un contrôle de cohérence automatisé entre les montants déclarés par chaque filiale.', 'texte', 45, false, 50
from public.courses c where c.slug = 'mas-cg-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Master 1 en Contrôle de gestion (corrigé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Contrôle de gestion stratégique et pilotage de la performance globale', '## Fiche du cours vidéo

Durée : 1h30. Public : étudiants de Master 1 en Contrôle de gestion. Objectifs : savoir construire un tableau de bord de performance globale intégrant la RSE et la triple bottom line, savoir calculer et interpréter un indice de performance pondéré, savoir discuter les limites méthodologiques de cette approche face à un cas d''entreprise. Prérequis : tableau de bord prospectif (balanced scorecard) vu en Licence 3. Matériel : tableau ou diaporama, calculatrice, le cas du Groupe Teranga Agro-Industries.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et mise en perspective

Bonjour à toutes et à tous. Nous commençons aujourd''hui le premier des trois cours vidéo consacrés aux matières avancées du Master 1 en Contrôle de gestion. Cette séance porte sur le contrôle de gestion stratégique et le pilotage de la performance globale, avec un accent particulier sur la responsabilité sociétale des entreprises et la triple bottom line.

Avant de commencer, je veux que vous ayez bien en tête où se situe cette matière dans votre parcours. En Licence 3, vous avez étudié le tableau de bord prospectif, le balanced scorecard, qui articule déjà quatre axes : financier, client, processus internes, apprentissage organisationnel. Ce que nous allons voir aujourd''hui n''est pas un nouvel outil isolé, mais un approfondissement et un élargissement de cette logique, en intégrant explicitement les dimensions sociale et environnementale de la performance, dans un cadre que l''on appelle la triple bottom line.

Notez au tableau le plan de la séance : d''abord, pourquoi la performance financière seule ne suffit plus ; ensuite, comment construire un indice de performance globale pondéré ; puis, les limites méthodologiques de cette approche, illustrées sur un cas d''entreprise complet ; enfin, un quiz, un exercice de synthèse, et l''évaluation finale.

## 05:00 – 20:00 · De la performance financière à la performance globale

Pourquoi parle-t-on aujourd''hui de performance globale plutôt que de simple performance financière ? Trois raisons principales. La première est économique : les investisseurs, les bailleurs de fonds internationaux, mais aussi de plus en plus les clients grands comptes, exigent des garanties sur les pratiques sociales et environnementales des entreprises avec lesquelles ils travaillent. Une entreprise qui néglige ces dimensions prend un risque financier direct, par exemple en perdant un marché ou un financement. La deuxième raison est réglementaire : les exigences en matière de reporting extra-financier se renforcent progressivement, y compris dans l''espace UEMOA, même si le cadre réglementaire précis varie selon les pays et continue d''évoluer, donc je vous invite à toujours vérifier la réglementation en vigueur plutôt que de vous fier à une règle apprise par cœur. La troisième raison est stratégique : une entreprise qui anticipe ces exigences plutôt que de les subir se donne un avantage concurrentiel durable.

La triple bottom line, formalisée à la fin des années 1990, résume cette idée en trois mots : profit, people, planet. Une organisation durablement performante doit produire un résultat économique, un résultat social et un résultat environnemental. Le rôle du contrôle de gestion stratégique est de construire les outils de mesure et de pilotage qui rendent ces trois résultats aussi suivis et aussi rigoureux que le résultat financier classique.

Prenons un exemple concret pour fixer les idées. Un groupe agro-industriel peut avoir une marge opérationnelle excellente, mais un taux d''accidents du travail en forte hausse, ou une consommation d''eau par tonne produite qui dépasse largement les standards du secteur. Dans une logique de triple bottom line, cette entreprise n''est pas pleinement performante, même si son résultat financier est excellent, car elle accumule des risques sociaux et environnementaux qui finiront, à plus ou moins long terme, par se traduire en coûts financiers : turnover, conflits sociaux, durcissement réglementaire, perte de clients exigeants sur ces critères.

## 20:00 – 35:00 · Construire un indice de performance globale pondéré

Passons maintenant à la construction pratique d''un indice de performance globale. La méthode la plus courante consiste à noter l''entreprise sur chacun des trois axes (économique, social, environnemental), généralement sur une échelle de 0 à 20 ou de 0 à 100, à partir d''indicateurs objectifs suivis dans le temps, puis à pondérer ces trois notes pour obtenir un indice de synthèse.

Reprenons le cas du Groupe Teranga Agro-Industries, que vous connaissez déjà par les leçons texte de ce cours. Le comité de pilotage retient les pondérations suivantes : axe économique 40 %, axe social 30 %, axe environnemental 30 %. Les scores obtenus sont 16/20 pour l''axe économique, 13/20 pour l''axe social, et 11/20 pour l''axe environnemental.

Je vous laisse trente secondes pour calculer l''indice de performance globale sur votre feuille, avant que je ne fasse le calcul au tableau.

Voici le calcul : (16 × 0,40) + (13 × 0,30) + (11 × 0,30). Premier terme : 16 fois 0,40 égale 6,4. Deuxième terme : 13 fois 0,30 égale 3,9. Troisième terme : 11 fois 0,30 égale 3,3. La somme est 6,4 plus 3,9 plus 3,3, soit 13,6 sur 20.

Qu''est-ce que ce résultat nous dit ? D''abord, un niveau global plutôt moyen, ni franchement mauvais ni réellement satisfaisant. Ensuite, et c''est le point le plus important pour vous en tant que futurs contrôleurs de gestion, ce chiffre global ne doit jamais être votre seule conclusion. Vous devez systématiquement décomposer l''indice pour identifier quel axe tire la performance vers le bas. Ici, c''est clairement l''axe environnemental, avec son score de 11/20, le plus faible des trois, qui pèse sur l''indice global malgré son poids identique à l''axe social.

## 35:00 – 45:00 · Les limites méthodologiques de la pondération

Arrêtons-nous maintenant sur un point que l''examen vous demandera très probablement de discuter : les limites de cette approche par indice pondéré.

Première limite : le choix des pondérations est en grande partie arbitraire, et reflète les priorités de la direction plutôt qu''une vérité objective. Si le comité de pilotage de Teranga Agro-Industries décidait de repondérer ses trois axes à 35 %, 25 % et 40 % au lieu de 40 %, 30 % et 30 %, avec exactement les mêmes scores de 16, 13 et 11, l''indice recalculé serait : (16 × 0,35) + (13 × 0,25) + (11 × 0,40), soit 5,6 plus 3,25 plus 4,4, soit 13,25 sur 20. L''indice baisse de 13,6 à 13,25, soit 0,35 point, sans que la réalité de l''entreprise n''ait changé d''un iota. C''est un point essentiel à retenir : derrière un chiffre unique qui paraît objectif se cache toujours un choix de pondération qui, lui, ne l''est pas.

Deuxième limite : l''effet de masquage. Une moyenne pondérée peut dissimuler une dégradation grave sur un sous-indicateur isolé. Imaginez que, dans le score social de 13/20, le taux d''accidents du travail se soit brutalement détérioré, alors que le taux de formation s''est amélioré en compensation : le score global de 13 pourrait rester stable ou même progresser, alors qu''un problème de sécurité au travail s''aggrave dangereusement et devrait déclencher une alerte immédiate. C''est pourquoi un dispositif de pilotage rigoureux ne doit jamais se limiter à l''indice de synthèse : il doit toujours conserver, en parallèle, le détail de chaque indicateur avec ses propres seuils d''alerte.

## 45:00 – 50:00 · Pause active et quiz interactif

Nous faisons maintenant une pause active avec un quiz pour vérifier que les notions sont bien installées. Je vous pose trois questions, prenez quelques secondes pour répondre avant que je ne donne la réponse.

Première question : que signifient les trois lettres de la triple bottom line ? Réponse : profit, people, planet, soit les résultats économique, social et environnemental.

Deuxième question : si l''on augmente le poids de l''axe le moins bien noté dans un indice pondéré, sans changer aucun score, l''indice global augmente-t-il ou diminue-t-il ? Réponse : il diminue, puisque l''on donne plus de poids relatif au score le plus faible, comme nous l''avons vu avec l''exemple du passage de 13,6 à 13,25 sur 20.

Troisième question : pourquoi un dispositif de pilotage ne doit-il jamais se limiter au seul indice de synthèse ? Réponse : parce qu''une moyenne pondérée peut masquer une dégradation grave sur un indicateur isolé, qui doit pourtant déclencher une alerte indépendamment de l''évolution de l''indice global.

## 50:00 – 1:05:00 · Application complète sur un cas d''entreprise

Reprenons maintenant un cas complet, un peu différent de celui déjà vu dans les leçons texte, pour vous entraîner à une situation nouvelle. Le Groupe Casamance Fruits, une coopérative fictive de transformation de fruits tropicaux dans le sud du Sénégal, évalue sa performance globale avec les pondérations suivantes : axe économique 50 %, axe social 20 %, axe environnemental 30 %. Les scores obtenus sont de 14/20 pour l''économique, 16/20 pour le social, et 9/20 pour l''environnemental.

Calculons ensemble. Premier terme : 14 fois 0,50 égale 7. Deuxième terme : 16 fois 0,20 égale 3,2. Troisième terme : 9 fois 0,30 égale 2,7. La somme est 7 plus 3,2 plus 2,7, soit 12,9 sur 20.

Que pouvons-nous dire de ce résultat ? L''indice global de 12,9/20 est inférieur à celui de Teranga Agro-Industries (13,6/20), malgré un score social nettement meilleur (16 contre 13). L''explication se trouve dans deux éléments combinés : un score environnemental très faible (9/20, le plus bas des deux cas étudiés aujourd''hui), et un poids économique élevé (50 %) qui, ici, ne compense pas suffisamment la faiblesse environnementale parce que le score économique lui-même (14/20) reste inférieur à celui de Teranga (16/20). La recommandation pour la direction de Casamance Fruits est donc double : traiter en priorité la faiblesse environnementale, probablement liée à la gestion des déchets de transformation de fruits, et chercher à consolider la performance économique, qui reste perfectible malgré un poids élevé dans l''indice.

## 1:05:00 – 1:20:00 · Les décisions d''investissement durable et synthèse

Terminons par un point que vous retrouverez souvent en examen : comment le contrôle de gestion stratégique évalue-t-il une décision d''investissement à dimension durable ? La règle est simple à énoncer mais essentielle : la rentabilité financière reste un critère nécessaire, mais elle ne doit plus être le seul critère de décision. Un bon raisonnement d''examen combine toujours un critère financier chiffré (gain net, économie annuelle, retour sur investissement) et un critère de performance globale (effet attendu sur l''indice RSE, réduction de risque réglementaire ou réputationnel).

Pour synthétiser toute la séance : la performance globale élargit la définition de la performance au-delà du seul résultat financier, en intégrant les dimensions sociale et environnementale selon la logique de la triple bottom line. La construction d''un indice pondéré facilite le pilotage et la communication avec la direction générale, mais elle comporte deux limites qu''il faut systématiquement savoir discuter à l''examen : l''arbitraire du choix des pondérations, et le risque de masquage d''une dégradation isolée par une moyenne globalement satisfaisante. Enfin, les décisions d''investissement durable doivent toujours être évaluées sur des critères multiples, financiers et extra-financiers.

## 1:20:00 – 1:30:00 · Évaluation finale

Voici cinq questions pour conclure cette séance. Prenez le temps d''y répondre avant d''écouter les réponses.

Première question : citez les trois dimensions de la triple bottom line. Réponse : économique, sociale et environnementale (profit, people, planet).

Deuxième question : le Groupe Casamance Fruits obtient un indice de performance globale de 12,9/20 avec des poids de 50 %, 20 % et 30 % et des scores de 14, 16 et 9. Si le poids de l''axe environnemental passait à 40 % au détriment de l''axe économique (ramené à 40 %), quel serait le nouvel indice ? Réponse : (14 × 0,40) + (16 × 0,20) + (9 × 0,40) = 5,6 + 3,2 + 3,6 = 12,4 sur 20, soit une baisse de 0,5 point liée uniquement au changement de pondération.

Troisième question : pourquoi un dirigeant pourrait-il être tenté de choisir des pondérations qui avantagent artificiellement l''image de son entreprise ? Réponse : parce que le choix des poids reste en grande partie discrétionnaire et peut être orienté pour afficher un indice plus favorable sans que la réalité opérationnelle ne change, ce qui justifie une vigilance critique du contrôleur de gestion et, idéalement, une validation des pondérations par un comité indépendant de la seule direction générale.

Quatrième question : quel type de décision d''investissement doit systématiquement être évalué à la fois sur un critère financier et sur un critère de performance globale ? Réponse : tout investissement présentant une dimension durable, par exemple une technologie moins polluante mais plus coûteuse à court terme, où la rentabilité financière seule ne suffit pas à rendre compte de la contribution à la stratégie RSE de l''entreprise.

Cinquième question : quelle est la principale limite de l''indice de performance globale pondéré que nous avons identifiée aujourd''hui concernant le risque de masquage ? Réponse : une moyenne pondérée peut dissimuler une dégradation grave sur un indicateur isolé si elle est compensée statistiquement par de bons résultats sur d''autres indicateurs, ce qui impose de toujours conserver un suivi détaillé par indicateur en complément de l''indice de synthèse.

Merci pour votre attention. Je vous retrouve dans le prochain cours vidéo pour la gestion de la performance par centres de responsabilité et le prix de cession interne avancé.', 'video', 90, false, 60
from public.courses c where c.slug = 'mas-cg-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Contrôle de gestion stratégique et pilotage de la performance globale');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Centres de responsabilité et prix de cession interne avancé', '## Fiche du cours vidéo

Durée : 1h30. Public : étudiants de Master 1 en Contrôle de gestion. Objectifs : savoir construire une organisation en centres de responsabilité, calculer et interpréter le ROI et l''EVA d''un centre d''investissement, maîtriser les trois méthodes avancées de prix de cession interne et leurs effets sur la performance des filiales. Prérequis : prix de cession interne de base vu en Licence 3, calcul de coût complet. Matériel : tableau ou diaporama, calculatrice, le cas du Groupe Teranga Agro-Industries.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs de la séance

Bonjour à toutes et à tous. Nous poursuivons notre série de cours vidéo du Master 1 avec une matière centrale du contrôle de gestion avancé : la gestion de la performance par centres de responsabilité et le prix de cession interne. Vous avez déjà rencontré une première approche du prix de cession interne en Licence 3, appliquée aux PME et au secteur public. Aujourd''hui, nous allons beaucoup plus loin : nous allons construire une organisation complète en centres de responsabilité, apprendre à évaluer un centre d''investissement avec deux indicateurs complémentaires, le ROI et l''EVA, puis maîtriser les trois méthodes avancées de fixation du prix de cession interne et leurs conséquences sur la performance affichée de chaque filiale.

Le plan de la séance : d''abord, les quatre types de centres de responsabilité et le principe de contrôlabilité ; ensuite, le ROI et ses limites ; puis l''EVA comme indicateur correctif ; un quiz à mi-séance ; puis les trois méthodes de prix de cession interne appliquées à un cas complet ; et enfin l''évaluation finale.

## 05:00 – 18:00 · Les quatre types de centres de responsabilité

Commençons par la notion de centre de responsabilité. C''est une unité de l''organisation, par exemple une direction, une filiale, une usine, un service, dont le responsable dispose d''une autonomie de décision sur un périmètre de ressources, et qui doit être évalué sur des indicateurs correspondant exactement à ce périmètre de décision, ni plus, ni moins.

On distingue classiquement quatre types de centres. Notez-les au tableau avec moi. Le centre de coût : son responsable maîtrise les charges pour un niveau d''activité donné, mais ne maîtrise pas le chiffre d''affaires. Exemple typique : un atelier de production, ou un service support comme la comptabilité. Le centre de recettes : son responsable maîtrise le chiffre d''affaires généré, sans maîtriser directement les coûts de production du bien vendu. Exemple typique : une force de vente. Le centre de profit : son responsable maîtrise à la fois les coûts et les recettes de son périmètre, et donc le résultat qui en découle. Exemple typique : une filiale commerciale autonome. Le centre d''investissement : c''est le niveau le plus élevé d''autonomie, son responsable décide aussi des investissements et des capitaux engagés dans son périmètre.

Le principe qui sous-tend toute cette typologie est le principe de contrôlabilité : un responsable ne doit être évalué que sur ce qu''il contrôle réellement par ses décisions. C''est un principe simple à énoncer, mais souvent violé dans la pratique des entreprises, et l''examen vous demandera régulièrement d''identifier ce type de violation sur un cas donné. Par exemple, évaluer un directeur d''usine, qui est un centre de coût, sur l''évolution du chiffre d''affaires de l''entreprise, viole ce principe, car le chiffre d''affaires dépend de décisions commerciales qui ne relèvent pas de lui.

## 18:00 – 35:00 · Évaluer un centre d''investissement : ROI et sa limite majeure

Pour un centre d''investissement, l''indicateur le plus utilisé est le retour sur investissement, le ROI. Sa formule : ROI égale résultat d''exploitation du centre, divisé par capitaux investis dans le centre. C''est un indicateur simple, exprimé en pourcentage, qui permet de comparer des centres de taille très différente.

Mais le ROI a une limite majeure que vous devez absolument connaître pour l''examen : il peut inciter un responsable à refuser un investissement pourtant rentable pour le groupe. Voici le mécanisme. Imaginez un centre dont le ROI actuel est de 20 %. On lui propose un nouveau projet rentable à 15 %. Ce taux de 15 % est largement supérieur au coût du capital exigé par le groupe, disons 12 %. Ce projet crée donc de la valeur pour le groupe. Mais si le responsable est évalué et rémunéré sur le maintien ou l''amélioration de son ROI moyen, intégrer ce nouveau projet à 15 % va faire baisser son ROI moyen actuel de 20 % vers quelque chose d''inférieur. Le responsable, rationnellement de son point de vue personnel, peut donc être incité à refuser ce projet, alors qu''il serait bénéfique pour le groupe dans son ensemble. C''est ce qu''on appelle le problème du sous-investissement induit par le pilotage au seul ROI.

## 35:00 – 50:00 · L''EVA comme indicateur correctif

Pour corriger ce biais, le contrôle de gestion avancé utilise un second indicateur : la valeur ajoutée économique, l''EVA, Economic Value Added. Sa formule : EVA égale le résultat opérationnel net après impôt, qu''on appelle le NOPAT, moins les capitaux investis multipliés par le coût moyen pondéré du capital, le CMPC.

L''idée centrale de l''EVA est de comparer directement la rentabilité du centre au coût réel de son financement, plutôt qu''à son propre ROI moyen historique. Avec l''EVA, le responsable n''a plus d''incitation perverse à refuser un projet rentable à 15 % si le coût du capital du groupe est de 12 %, car ce projet améliorera son EVA, même s''il fait baisser son ROI moyen apparent.

Faisons le calcul ensemble sur le cas de Teranga Céréales, filiale du Groupe Teranga Agro-Industries. Son résultat d''exploitation total est de 245 100 000 FCFA, pour des capitaux investis de 1 200 000 000 FCFA. Son ROI est donc de 245 100 000 divisé par 1 200 000 000, soit 0,2042, soit 20,42 %. Avec un taux d''impôt fictif pour l''exemple de 30 % et un CMPC fictif pour l''exemple de 12 %, calculons le NOPAT : 245 100 000 fois (1 moins 0,30), soit 245 100 000 fois 0,70, soit 171 570 000 FCFA. Calculons maintenant la charge de capital : 1 200 000 000 fois 0,12, soit 144 000 000 FCFA. L''EVA est donc de 171 570 000 moins 144 000 000, soit 27 570 000 FCFA.

Que nous dit ce résultat ? L''EVA est positive, la filiale crée donc bien de la valeur, mais dans une proportion nettement plus modeste que ce que suggérait le ROI de 20,42 %, qui paraissait très confortable. C''est précisément l''intérêt de calculer systématiquement les deux indicateurs : le ROI donne une image rapide et comparable entre centres, l''EVA corrige cette image en la rapportant au coût réel du capital.

## 50:00 – 55:00 · Pause active et quiz interactif

Petit quiz pour vérifier vos acquis avant la deuxième partie de la séance, consacrée au prix de cession interne.

Première question : quel principe impose d''évaluer un responsable uniquement sur ce qu''il contrôle réellement ? Réponse : le principe de contrôlabilité.

Deuxième question : pourquoi un responsable évalué uniquement sur son ROI peut-il refuser un projet rentable pour le groupe ? Réponse : parce qu''un projet dont la rentabilité est inférieure au ROI moyen actuel du centre, mais supérieure au coût du capital du groupe, ferait baisser son ROI moyen, même s''il crée de la valeur pour le groupe.

Troisième question : quelle est la formule de l''EVA ? Réponse : NOPAT moins capitaux investis multipliés par le coût moyen pondéré du capital.

## 55:00 – 1:15:00 · Les trois méthodes de prix de cession interne et leurs effets

Passons maintenant au prix de cession interne, le PCI. C''est le prix auquel un centre vend un bien ou un service à un autre centre du même groupe. Trois méthodes principales existent, notez-les.

La méthode du coût : on fixe le prix à partir du coût complet (ou parfois du coût marginal) du centre vendeur, éventuellement majoré d''une marge négociée. La méthode du marché : on s''appuie sur le prix observé pour un bien comparable échangé entre entreprises indépendantes, ajusté le cas échéant des économies réalisées en interne, par exemple des frais commerciaux évités. La méthode du prix négocié : les deux responsables fixent un prix d''accord commun, dans une fourchette encadrée par la direction générale.

Appliquons ces trois méthodes au cas de Teranga Céréales, qui cède du mil transformé à Teranga Distribution. Le coût variable unitaire de Teranga Céréales est de 180 000 FCFA la tonne. Les charges fixes annuelles sont de 450 000 000 FCFA pour une activité normale de 10 000 tonnes, soit des charges fixes unitaires de 45 000 FCFA la tonne. Le coût complet unitaire est donc de 180 000 plus 45 000, soit 225 000 FCFA.

Méthode du coût, avec une marge négociée de 10 % : 225 000 fois 1,10, soit 247 500 FCFA. Méthode du marché : un produit comparable se vend à 260 000 FCFA la tonne entre entreprises indépendantes, avec une économie commerciale évitée de 8 % en vente interne. Le calcul est 260 000 fois (1 moins 0,08), soit 260 000 fois 0,92, soit 239 200 FCFA. Méthode du prix négocié, prise comme moyenne des deux bornes : (247 500 plus 239 200) divisé par 2, soit 243 350 FCFA.

Regardons maintenant l''effet de ces trois méthodes sur la performance de chaque filiale, pour un volume cédé de 6 000 tonnes, avec un coût variable de distribution de 15 000 FCFA la tonne chez Teranga Distribution, et un prix de revente externe de 300 000 FCFA la tonne. Avec le prix négocié de 243 350 FCFA : la marge de Teranga Céréales est de (243 350 moins 225 000) fois 6 000, soit 110 100 000 FCFA. La marge de Teranga Distribution est de (300 000 moins 243 350 moins 15 000) fois 6 000, soit 249 900 000 FCFA. La marge groupe consolidée est donc de 110 100 000 plus 249 900 000, soit 360 000 000 FCFA.

Faisons maintenant le même calcul avec la méthode du coût, à 247 500 FCFA. Marge de Teranga Céréales : (247 500 moins 225 000) fois 6 000, soit 135 000 000 FCFA. Marge de Teranga Distribution : (300 000 moins 247 500 moins 15 000) fois 6 000, soit 225 000 000 FCFA. La marge groupe est de 135 000 000 plus 225 000 000, soit à nouveau 360 000 000 FCFA, strictement identique.

Ce résultat est fondamental et vous devez le retenir pour l''examen : quelle que soit la méthode de prix de cession interne retenue, la marge groupe consolidée reste rigoureusement identique, car il s''agit d''une opération intragroupe qui s''élimine en consolidation. Seule la répartition de cette marge entre les deux filiales change. C''est pourquoi le choix de la méthode est avant tout un enjeu de gouvernance, d''évaluation et de motivation des responsables de filiale, et non un levier de création de valeur pour le groupe.

## 1:15:00 – 1:20:00 · Synthèse de la séance

Récapitulons les points essentiels. Premièrement, un centre de responsabilité ne doit être évalué que sur ce qu''il contrôle, selon le principe de contrôlabilité. Deuxièmement, le ROI est utile pour comparer des centres entre eux mais peut induire un sous-investissement si on l''utilise seul ; l''EVA corrige ce biais en comparant la rentabilité au coût réel du capital. Troisièmement, les trois méthodes de prix de cession interne (coût, marché, négocié) donnent des prix différents et donc des performances différentes par filiale, mais ne changent jamais le résultat consolidé du groupe, car l''opération s''élimine en consolidation.

## 1:20:00 – 1:30:00 · Évaluation finale

Cinq questions pour conclure.

Première question : citez les quatre types de centres de responsabilité. Réponse : centre de coût, centre de recettes, centre de profit, centre d''investissement.

Deuxième question : un centre d''investissement dégage un résultat d''exploitation de 174 930 000 FCFA après impôt théorique n''étant pas encore appliqué, avec un résultat avant impôt de 249 900 000 FCFA et des capitaux investis de 800 000 000 FCFA. Calculez son ROI. Réponse : ROI égale 249 900 000 divisé par 800 000 000, soit 0,3124, soit 31,24 %.

Troisième question : avec un taux d''impôt fictif de 30 % et un CMPC fictif de 12 %, calculez l''EVA de ce même centre. Réponse : NOPAT égale 249 900 000 fois 0,70, soit 174 930 000 FCFA. Charge de capital égale 800 000 000 fois 0,12, soit 96 000 000 FCFA. EVA égale 174 930 000 moins 96 000 000, soit 78 930 000 FCFA.

Quatrième question : pourquoi le choix d''une méthode de prix de cession interne plutôt qu''une autre ne change-t-il jamais le résultat consolidé du groupe ? Réponse : parce que la cession interne est une opération entre deux entités du même groupe, et que ce que l''une gagne en plus est exactement ce que l''autre paie en plus ; cette opération s''élimine donc intégralement lors de la consolidation, et seule compte la marge réalisée avec un client final extérieur au groupe.

Cinquième question : pourquoi ce même choix de méthode peut-il néanmoins créer des tensions internes entre responsables de filiale ? Réponse : parce que si la rémunération variable de chaque responsable dépend du résultat de sa propre entité, le choix de la méthode redistribue concrètement cette rémunération entre les responsables, même si la création de valeur globale du groupe reste inchangée, ce qui explique que ce choix fasse souvent l''objet de négociations, voire de conflits, entre centres de profit.

Merci pour votre attention, je vous retrouve pour le prochain cours vidéo consacré aux systèmes d''information décisionnels.', 'video', 90, false, 70
from public.courses c where c.slug = 'mas-cg-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Centres de responsabilité et prix de cession interne avancé');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Systèmes d''information décisionnels', '## Fiche du cours vidéo

Durée : 1h30. Public : étudiants de Master 1 en Contrôle de gestion. Objectifs : comprendre le rôle d''un ERP et des outils de Business Intelligence dans la production du reporting de gestion, savoir calculer et interpréter un gain de délai de clôture et un indice de qualité des données, identifier les risques d''un reporting consolidé multi-filiales. Prérequis : notions de base sur les systèmes d''information de gestion. Matériel : tableau ou diaporama, calculatrice, le cas du Groupe Teranga Agro-Industries.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et enjeux de la séance

Bonjour à toutes et à tous. Ce troisième cours vidéo du Master 1 porte sur les systèmes d''information décisionnels, les ERP et le reporting consolidé. C''est une matière qui peut sembler plus technique que les deux précédentes, mais elle est en réalité tout aussi stratégique pour le contrôleur de gestion : un indicateur parfaitement construit sur le plan théorique, un prix de cession interne savamment calculé, un indice RSE bien pensé, tout cela ne vaut rien si les données sous-jacentes sont fausses, incomplètes, ou produites trop tard pour être utiles à la décision.

Plan de la séance : d''abord, le rôle de l''ERP et son articulation avec les outils de Business Intelligence ; ensuite, comment mesurer le délai et la qualité d''un reporting consolidé, avec des calculs chiffrés ; un quiz à mi-parcours ; puis les risques spécifiques du reporting en environnement multi-ERP, avec un cas pratique complet ; et l''évaluation finale.

## 05:00 – 20:00 · Le rôle de l''ERP dans la chaîne d''information de gestion

Un ERP, Enterprise Resource Planning, ou progiciel de gestion intégré, est un logiciel qui centralise dans une base de données unique les informations de plusieurs fonctions de l''entreprise : comptabilité, ventes, achats, production, ressources humaines, gestion des stocks. Avant la généralisation des ERP, chaque fonction gérait souvent ses propres fichiers séparés, ce qui multipliait les ressaisies manuelles, les incohérences entre services, et les délais de production de l''information.

L''intérêt principal d''un ERP pour le contrôle de gestion, c''est la cohérence et la traçabilité des données. Une vente enregistrée dans le module commercial met automatiquement à jour le stock, génère l''écriture comptable correspondante, et alimente en temps réel les tableaux de bord de suivi d''activité, sans aucune ressaisie manuelle. Cela réduit les erreurs, accélère considérablement la production de l''information de gestion, et permet un suivi plus fréquent, hebdomadaire voire quotidien, plutôt que purement mensuel comme c''était souvent le cas auparavant.

Mais attention, un point que l''examen adore tester : un ERP mal paramétré peut produire l''effet exactement inverse de celui recherché. Si les référentiels, c''est-à-dire le plan de comptes, la codification des centres de coûts, les nomenclatures de produits, ne sont pas harmonisés entre les différentes filiales d''un groupe, la consolidation des données devient source d''erreurs majeures. Une même catégorie de charge peut être enregistrée différemment selon les filiales, ce qui rend les comparaisons et les agrégations peu fiables, voire trompeuses. Retenez bien ceci : le paramétrage initial d''un ERP, et en particulier la définition commune des référentiels pour l''ensemble du groupe, est un enjeu de contrôle de gestion à part entière, pas seulement un enjeu informatique que l''on pourrait déléguer entièrement à la direction des systèmes d''information.

## 20:00 – 32:00 · Du système transactionnel au reporting de gestion

Distinguons maintenant deux notions que l''on confond souvent. Un ERP enregistre des transactions : une vente, un achat, une sortie de stock. C''est ce qu''on appelle un système transactionnel. Le reporting de gestion, en revanche, a besoin d''une vision agrégée et analytique de ces transactions : la marge par produit, par client, par filiale, l''évolution dans le temps, la comparaison au budget. Cette transformation de la donnée transactionnelle en information de pilotage est assurée par des outils de Business Intelligence, qui extraient les données de l''ERP, les structurent dans un entrepôt de données, puis les restituent sous forme de tableaux de bord.

Quelle est la place du contrôleur de gestion dans cette chaîne ? Il ne construit généralement pas lui-même l''ERP ni l''outil de Business Intelligence, cela reste le métier de la direction des systèmes d''information. Mais il définit les règles de gestion qui doivent y être codées : quelle définition retenir pour la marge opérationnelle, quel périmètre exact pour un centre de coût, quelle fréquence de mise à jour des tableaux de bord. Et surtout, il reste responsable de la qualité et de la pertinence des indicateurs finalement restitués aux décideurs, même si la technique informatique est assurée par d''autres équipes.

## 32:00 – 50:00 · Mesurer le délai et la qualité du reporting consolidé : calculs chiffrés

Deux critères permettent de mesurer la qualité d''un dispositif de reporting consolidé dans un groupe à plusieurs filiales : le délai de production, c''est-à-dire combien de jours ouvrés après la clôture du mois le reporting est-il disponible, et la fiabilité des données agrégées.

Prenons le cas du Groupe Teranga Agro-Industries. Avant la mise en place d''un ERP intégré entre ses filiales, le reporting consolidé mensuel nécessitait 12 jours ouvrés, avec une collecte manuelle des fichiers de chaque filiale et des retraitements sur tableur. Après l''intégration d''un ERP commun avec des référentiels harmonisés, ce délai est ramené à 5 jours ouvrés. Calculons le gain de délai ensemble : (12 moins 5) divisé par 12, soit 7 divisé par 12, soit 0,583, soit un gain de 58,3 %.

Qu''est-ce que cela signifie concrètement pour la direction générale ? Elle dispose de l''information de gestion près de deux semaines plus tôt qu''auparavant, ce qui lui permet de réagir à un écart défavorable avant la fin du trimestre, plutôt que de le découvrir trop tard pour agir efficacement.

Passons maintenant à la qualité des données. Un indice de qualité peut être construit en pondérant plusieurs critères, exactement comme nous l''avons fait pour l''indice de performance globale dans le cours précédent. Pour Teranga Agro-Industries, un comité qualité évalue sur 100 quatre critères : l''exhaustivité des données, notée 92, pondérée à 30 % ; l''exactitude, notée 88, pondérée à 35 % ; la cohérence inter-filiales, notée 80, pondérée à 20 % ; le délai de saisie, noté 75, pondéré à 15 %.

Calculons l''indice ensemble : 92 fois 0,30, cela donne 27,6. 88 fois 0,35, cela donne 30,8. 80 fois 0,20, cela donne 16. 75 fois 0,15, cela donne 11,25. La somme de ces quatre termes est 27,6 plus 30,8 plus 16 plus 11,25, soit 85,65, que l''on arrondit à 85,6 sur 100.

Ce résultat montre une qualité globale satisfaisante, mais avec un point de vigilance clair sur le délai de saisie, à 75 sur 100, le critère le moins bien noté des quatre, qui mérite une action corrective prioritaire, par exemple un rappel systématique des échéances aux filiales ou une automatisation renforcée de la collecte des données à la source.

## 50:00 – 55:00 · Pause active et quiz interactif

Quiz de mi-séance. Première question : quelle est la différence entre un système transactionnel et un outil de Business Intelligence ? Réponse : le système transactionnel, comme l''ERP, enregistre les opérations élémentaires au moment où elles se produisent ; l''outil de Business Intelligence extrait, agrège et restitue ces données sous une forme analytique utile à la décision.

Deuxième question : pourquoi l''harmonisation des référentiels entre filiales est-elle indispensable à la fiabilité d''un reporting consolidé ? Réponse : parce que sans référentiels communs, une même catégorie de charge ou de produit peut être enregistrée différemment selon les filiales, ce qui fausse les agrégations au niveau du groupe.

Troisième question : un groupe réduit son délai de clôture consolidée de 20 jours ouvrés à 8 jours ouvrés. Quel est le gain de délai en pourcentage ? Réponse : (20 moins 8) divisé par 20, soit 12 divisé par 20, soit 0,60, soit 60 %.

## 55:00 – 1:18:00 · Les risques du reporting en environnement multi-ERP : cas pratique

De nombreux groupes, en particulier lorsqu''ils résultent d''une croissance externe par acquisition de filiales, fonctionnent encore avec plusieurs ERP différents selon les filiales, faute d''avoir harmonisé leurs systèmes d''information dès le départ. Dans cette situation, la consolidation nécessite des interfaces ou des retraitements manuels entre systèmes, ce qui réintroduit exactement les risques d''erreur et de délai que l''ERP intégré est censé éliminer.

Prenons un cas pratique complet. Le Groupe Teranga Agro-Industries, qui a récemment acquis Teranga Distribution, fonctionne encore avec deux ERP distincts, l''un pour Teranga Céréales, l''autre pour Teranga Distribution, issu de l''ERP que cette filiale utilisait avant son acquisition. La direction financière envisage un projet de remplacement par un ERP unique pour tout le groupe, pour un coût d''implémentation de 400 000 000 FCFA sur 18 mois, avec deux bénéfices attendus : une réduction du délai de clôture consolidée de 15 à 6 jours ouvrés, et une amélioration de l''indice de qualité des données de 78 à 90 sur 100.

Que devez-vous faire face à ce type de cas à l''examen ? D''abord, chiffrer les bénéfices : le gain de délai est de (15 moins 6) divisé par 15, soit 9 divisé par 15, soit 0,60, soit 60 %, un gain très significatif pour la réactivité du pilotage. Ensuite, qualifier les risques du projet au-delà du seul coût financier : le risque de rupture opérationnelle pendant la période de migration de 18 mois, durant laquelle la fiabilité du reporting peut temporairement se dégrader avant de s''améliorer ; le risque de résistance au changement des équipes de chaque filiale, habituées à leur ancien système ; et le risque, souvent sous-estimé, que le nouveau référentiel commun ne soit pas correctement validé par le contrôle de gestion avant le déploiement, ce qui reproduirait à terme les mêmes problèmes de cohérence que le projet cherche justement à résoudre.

La leçon méthodologique à retenir pour l''examen : face à un projet de système d''information, ne vous contentez jamais de recopier les bénéfices chiffrés annoncés par la direction financière. Mobilisez systématiquement, en contrôleur de gestion, une analyse des risques opérationnels et organisationnels du projet, qui sont tout aussi déterminants que le gain financier brut pour juger de la réussite réelle du projet.

## 1:18:00 – 1:30:00 · Synthèse et évaluation finale

Récapitulons les points essentiels de cette séance. Un ERP centralise l''information de gestion, mais sa fiabilité dépend d''un paramétrage initial rigoureux, en particulier l''harmonisation des référentiels entre filiales. Les outils de Business Intelligence transforment la donnée transactionnelle en information de pilotage, et le contrôleur de gestion en définit les règles de gestion. La qualité d''un reporting consolidé se mesure à la fois par son délai de production et par la fiabilité des données agrégées. En environnement multi-ERP, des contrôles de cohérence automatisés sont indispensables pour fiabiliser la consolidation.

Cinq questions pour l''évaluation finale.

Première question : citez deux fonctions de l''entreprise que centralise typiquement un ERP. Réponse : par exemple la comptabilité et les ventes, ou les achats et la gestion des stocks ; toute paire de fonctions parmi comptabilité, ventes, achats, production, ressources humaines, stocks est acceptée.

Deuxième question : un groupe réduit son délai de clôture consolidée de 10 à 4 jours ouvrés. Calculez le gain de délai en pourcentage. Réponse : (10 moins 4) divisé par 10, soit 6 divisé par 10, soit 0,60, soit 60 %.

Troisième question : un comité qualité note les données consolidées d''un groupe sur les critères suivants : exhaustivité 85 (poids 25 %), exactitude 90 (poids 40 %), cohérence inter-filiales 75 (poids 20 %), délai de saisie 70 (poids 15 %). Calculez l''indice de qualité des données. Réponse : (85 fois 0,25) plus (90 fois 0,40) plus (75 fois 0,20) plus (70 fois 0,15), soit 21,25 plus 36 plus 15 plus 10,5, soit 82,75, arrondi à 82,8 sur 100.

Quatrième question : pourquoi un contrôle de cohérence automatisé entre ventes intragroupe déclarées par le vendeur et achats intragroupe déclarés par l''acheteur est-il particulièrement utile avant la consolidation ? Réponse : parce qu''il permet de détecter une incohérence avant l''étape d''élimination des opérations intragroupe, évitant qu''une erreur de saisie ou d''affectation ne fausse silencieusement le résultat consolidé final.

Cinquième question : citez un risque organisationnel, autre que financier, d''un projet de remplacement d''ERP dans un groupe multi-filiales. Réponse : par exemple le risque de rupture opérationnelle pendant la période de migration, le risque de résistance au changement des équipes, ou le risque qu''un référentiel commun mal validé reproduise les mêmes incohérences que l''ancien système ; toute réponse pertinente et justifiée est acceptée.

Merci pour votre attention. Je vous retrouve dans le dernier cours vidéo de ce Master 1, consacré à un atelier transversal qui combine les trois matières que nous venons d''étudier sur un cas d''entreprise filé.', 'video', 90, false, 80
from public.courses c where c.slug = 'mas-cg-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Systèmes d''information décisionnels');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Atelier transversal — synthèse du Master 1 en Contrôle de gestion', '## Fiche du cours vidéo

Durée : 1h30. Public : étudiants de Master 1 en Contrôle de gestion. Objectifs : mobiliser simultanément les trois matières avancées de l''année (performance globale, centres de responsabilité et prix de cession interne, systèmes d''information décisionnels) sur un cas d''entreprise transversal filé, dans des conditions proches de l''examen. Prérequis : les trois cours vidéo précédents de ce Master 1. Matériel : tableau ou diaporama, calculatrice, le cas du Groupe Sahel Industries.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs de l''atelier

Bonjour à toutes et à tous. Ce quatrième et dernier cours vidéo du Master 1 est un atelier de synthèse. Nous n''allons pas introduire de nouvelle notion théorique : nous allons mobiliser ensemble, sur un seul cas d''entreprise filé du début à la fin de la séance, les trois matières que vous avez étudiées cette année. C''est exactement le type d''exercice que vous rencontrerez à l''examen, où un même cas mêle souvent plusieurs matières dans une seule étude.

Le cas que nous allons traiter aujourd''hui est celui du Groupe Sahel Industries, que vous avez peut-être déjà croisé dans le sujet type de la leçon 5. Nous allons le reprendre intégralement, en détaillant chaque étape du raisonnement, comme si nous étions en situation d''examen.

## 05:00 – 10:00 · Présentation du cas transversal

Le Groupe Sahel Industries regroupe deux filiales : Sahel Minoterie, qui transforme des céréales, et Sahel Agro-Export, qui distribue et exporte la production sur le marché régional. Sahel Minoterie cède une partie de sa production à Sahel Agro-Export. Les deux filiales sont des centres d''investissement. Le groupe a par ailleurs engagé un chantier de refonte de son système d''information et souhaite renforcer sa démarche RSE.

Voici les données. Pour Sahel Minoterie : coût variable unitaire de 95 000 FCFA la tonne, charges fixes annuelles totales de 300 000 000 FCFA pour une activité normale de 7 500 tonnes, capitaux investis de 950 000 000 FCFA. Un produit comparable se vend à 155 000 FCFA la tonne entre entreprises indépendantes. La marge négociée retenue en méthode du coût est de 8 %, et l''économie commerciale évitée en méthode du marché est de 10 %. Le volume cédé à Sahel Agro-Export est de 4 200 tonnes. Notez bien toutes ces données, nous allons les utiliser pas à pas.

## 10:00 – 30:00 · Étape 1 : le prix de cession interne

Commençons par le prix de cession interne. Première étape : le coût complet unitaire de Sahel Minoterie. Les charges fixes unitaires sont de 300 000 000 divisé par 7 500, soit 40 000 FCFA la tonne. Le coût complet unitaire est donc de 95 000 plus 40 000, soit 135 000 FCFA.

Calculons maintenant les deux méthodes de référence. Méthode du coût, avec une marge négociée de 8 % : 135 000 fois 1,08, soit 145 800 FCFA. Méthode du marché, avec une économie commerciale évitée de 10 % sur un prix de marché de 155 000 FCFA : 155 000 fois (1 moins 0,10), soit 155 000 fois 0,90, soit 139 500 FCFA.

Retenons un prix négocié comme moyenne de ces deux bornes : (145 800 plus 139 500) divisé par 2, soit 142 650 FCFA. C''est ce prix que nous utiliserons pour la suite de l''atelier, mais rappelez-vous que tout autre prix situé entre les deux bornes et correctement justifié serait également accepté à l''examen.

## 30:00 – 45:00 · Étape 2 : ROI et EVA de Sahel Minoterie

Sahel Minoterie dégage, par ailleurs, un résultat sur ses ventes externes de 80 000 000 FCFA, en plus de la marge réalisée sur la cession interne. Calculons cette marge sur cession interne : (142 650 moins 135 000) fois 4 200, soit 7 650 fois 4 200, soit 32 130 000 FCFA.

Le résultat d''exploitation total de Sahel Minoterie est donc de 32 130 000 plus 80 000 000, soit 112 130 000 FCFA. Avec des capitaux investis de 950 000 000 FCFA, son ROI est de 112 130 000 divisé par 950 000 000, soit 0,118, soit environ 11,8 %.

Calculons maintenant l''EVA, avec un taux d''impôt fictif de 30 % et un CMPC fictif de 12 %. Le NOPAT est de 112 130 000 fois 0,70, soit 78 491 000 FCFA. La charge de capital est de 950 000 000 fois 0,12, soit 114 000 000 FCFA. L''EVA est donc de 78 491 000 moins 114 000 000, soit moins 35 509 000 FCFA.

Arrêtons-nous sur ce résultat, car c''est le cœur pédagogique de cet atelier : l''EVA est négative, alors que le ROI est positif à 11,8 %. Si vous vous étiez arrêtés au seul ROI, vous auriez conclu, à tort, que Sahel Minoterie est une filiale performante. L''EVA révèle que sa rentabilité réelle, 11,8 %, est inférieure au coût du capital exigé par le groupe, 12 %, et que la filiale détruit donc de la valeur économique, même si son résultat comptable reste positif. C''est exactement le type de piège que l''examen de Master cherche à tester : ne jamais conclure sur un seul indicateur de performance.

## 45:00 – 50:00 · Pause active et quiz interactif

Première question du quiz : quel est le coût complet unitaire de Sahel Minoterie ? Réponse : 135 000 FCFA la tonne.

Deuxième question : pourquoi l''EVA de Sahel Minoterie est-elle négative alors que son ROI est positif ? Réponse : parce que sa rentabilité réelle de 11,8 % reste inférieure au coût du capital exigé par le groupe, fixé à 12 % dans cet exemple ; l''EVA compare directement la rentabilité au coût du capital, ce que le ROI seul ne fait pas.

Troisième question : le résultat consolidé du groupe serait-il différent si l''on avait retenu le prix de cession interne de 145 800 FCFA (méthode du coût) plutôt que 142 650 FCFA (prix négocié) ? Réponse : non, car l''opération de cession interne s''élimine en consolidation ; seule la répartition de la marge entre les deux filiales changerait.

## 50:00 – 1:05:00 · Étape 3 : performance globale et système d''information

Poursuivons le cas. Le comité de pilotage du Groupe Sahel Industries évalue sa performance globale sur trois axes notés sur 20 : axe économique 15, axe social 12, axe environnemental 10, avec des pondérations respectives de 45 %, 25 % et 30 %.

Calculons l''indice de performance globale : (15 fois 0,45) plus (12 fois 0,25) plus (10 fois 0,30), soit 6,75 plus 3 plus 3, soit 12,75 sur 20.

Passons maintenant au système d''information. Un comité qualité évalue les données du groupe sur quatre critères notés sur 100 : exhaustivité 90 (poids 30 %), exactitude 85 (poids 35 %), cohérence inter-filiales 72 (poids 20 %), délai de saisie 80 (poids 15 %).

Calculons l''indice de qualité des données : (90 fois 0,30) plus (85 fois 0,35) plus (72 fois 0,20) plus (80 fois 0,15), soit 27 plus 29,75 plus 14,4 plus 12, soit 83,15, arrondi à 83,2 sur 100.

## 1:05:00 – 1:22:00 · Étape 4 : synthèse argumentée, l''exercice le plus difficile

Nous arrivons maintenant à l''exercice le plus exigeant, celui qui rapporte le plus de points à l''examen et qui différencie vraiment les bonnes copies : la synthèse argumentée qui relie tous les résultats calculés.

Reprenons tout ce que nous avons calculé. Le point fort apparent du groupe est sa performance économique relative, avec un axe économique noté 15 sur 20, le plus élevé des trois axes de performance globale, et un système d''information globalement fiable, avec un indice de qualité de 83,2 sur 100. Mais ce point fort doit être immédiatement nuancé par deux éléments de vigilance que nous avons mis en évidence.

D''une part, l''axe environnemental, noté seulement 10 sur 20, le plus faible des trois, qui tire l''indice de performance globale à 12,75 sur 20, un niveau moyen qui appelle une action corrective ciblée. D''autre part, et c''est le point le plus important à souligner dans votre copie, l''EVA négative de Sahel Minoterie, moins 35 509 000 FCFA, révèle que la filiale, malgré un ROI positif de 11,8 %, détruit de la valeur au regard du coût du capital du groupe. C''est une alerte bien plus sérieuse que le seul score environnemental, car elle concerne directement la rentabilité économique de la filiale, et elle doit être signalée à la direction générale au-delà du seul indicateur de rentabilité comptable habituellement regardé.

L''action prioritaire que nous recommandons à la direction générale est donc double et, idéalement, convergente : conduire un diagnostic approfondi des capitaux investis et de la structure de coûts de Sahel Minoterie, plutôt que de se satisfaire de son ROI positif, en parallèle d''un plan d''action ciblé sur l''axe environnemental ; ces deux chantiers peuvent d''ailleurs converger si une partie de la destruction de valeur de Sahel Minoterie provient précisément d''investissements environnementaux coûteux mais encore peu valorisés dans son résultat d''exploitation actuel.

Ce qu''il faut retenir de cette démonstration : à l''examen de Master, les meilleures copies ne se contentent jamais d''empiler des calculs indépendants matière par matière. Elles tissent des liens explicites entre les résultats des différentes matières pour construire un diagnostic global cohérent, exactement comme nous venons de le faire entre l''EVA de la filiale et le score environnemental du groupe.

## 1:22:00 – 1:30:00 · Synthèse finale et évaluation

Pour conclure cet atelier et ce Master 1, retenez la méthode suivante face à un cas d''entreprise de Master : qualifiez d''abord le problème de pilotage posé, identifiez les outils pertinents parmi ceux que vous maîtrisez, menez les calculs avec une rigueur numérique totale, puis reliez systématiquement les résultats entre eux pour produire un diagnostic global argumenté, et non une simple succession de réponses isolées.

Cinq questions pour l''évaluation finale de ce cours vidéo et de ce Master 1.

Première question : quel est le résultat d''exploitation total de Sahel Minoterie dans ce cas ? Réponse : 112 130 000 FCFA.

Deuxième question : l''EVA de Sahel Minoterie est-elle positive ou négative, et que signifie ce résultat ? Réponse : elle est négative, à moins 35 509 000 FCFA, ce qui signifie que la filiale détruit de la valeur économique malgré un résultat comptable et un ROI positifs, car sa rentabilité reste inférieure au coût du capital exigé par le groupe.

Troisième question : quel est l''indice de performance globale du Groupe Sahel Industries ? Réponse : 12,75 sur 20.

Quatrième question : quel est l''indice de qualité des données du système d''information du groupe ? Réponse : environ 83,2 sur 100.

Cinquième question : pourquoi est-il essentiel, dans une synthèse de Master, de relier les résultats de plusieurs matières plutôt que de les présenter séparément ? Réponse : parce qu''un diagnostic global cohérent, qui met en évidence des liens entre les points de vigilance de différentes matières, par exemple entre la destruction de valeur économique d''une filiale et son retard environnemental, a une valeur de pilotage bien supérieure à une simple liste de calculs isolés, et c''est précisément ce que recherchent les correcteurs au niveau Master.

Merci à toutes et à tous pour votre participation à ce Master 1 en Contrôle de gestion. Bon courage pour vos examens, et à bientôt pour le Master 2.', 'video', 90, false, 90
from public.courses c where c.slug = 'mas-cg-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Atelier transversal — synthèse du Master 1 en Contrôle de gestion');

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

-- Cours : Master 2 Comptabilité : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'mas-compta-m2', (select id from public.levels where name = 'Master 2'), null, 'Comptabilité', 'Master 2 Comptabilité : réussir ses examens', 'Préparation aux examens de Master 2 en Comptabilité : audit financier approfondi, ingénierie financière et opérations de restructuration, méthodologie du mémoire professionnel et de la soutenance. Études de cas d''entreprises sénégalaises fictives, exercices corrigés, sujet type d''examen et atelier pratique de préparation à la soutenance. Public : étudiants de Master 2 ayant validé le Master 1 en Comptabilité.', true, 742
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Master 2 en Comptabilité', '## Objectifs de la leçon

- Comprendre les spécificités de l''année de Master 2 en Comptabilité : mémoire professionnel, stage long, soutenance.
- Identifier les trois matières avancées de l''année et leur lien avec le mémoire.
- Mettre en place une méthode de travail combinant révisions d''examen et avancement du mémoire.
- Construire un plan de révision réaliste sur six semaines avant les examens.

Ce cours de Master 2 prolonge le Master 1 (consolidation approfondie, normes IFRS en comparaison avec le SYSCOHADA, fiscalité internationale et prix de transfert) sans reprendre ces bases. Il suppose qu''elles sont acquises et introduit trois nouveaux domaines mobilisés dans l''année qui conduit normalement à la fin du cursus de Master : l''audit financier approfondi, l''ingénierie financière et les opérations de restructuration, et la méthodologie du mémoire professionnel.

## 1. Une année tournée vers la sortie du cursus

Le Master 2 est souvent l''année où l''étudiant combine un stage long ou une activité professionnelle, la rédaction d''un mémoire (professionnel ou de recherche selon les établissements) et une soutenance orale devant un jury. Cette organisation change la façon de travailler : vous n''avez plus seulement des examens à préparer, vous devez aussi avancer, en parallèle, sur un travail personnel de plusieurs mois qui sera évalué différemment (écrit long, soutenance orale, capacité à défendre un point de vue).

Les trois matières avancées de l''année ne sont pas choisies au hasard : elles correspondent à des compétences que vous mobiliserez directement dans votre futur métier, et souvent dans votre mémoire lui-même.

## 2. Les trois matières avancées de l''année

- L''audit financier approfondi : démarche d''audit, évaluation des risques, seuil de signification, méthodes d''échantillonnage, types d''opinion.
- L''ingénierie financière et les opérations de restructuration : évaluation d''entreprise (actualisation des flux, multiples comparables), fusion-acquisition, notions générales de financement par effet de levier.
- La méthodologie du mémoire professionnel et de la soutenance : construction d''une problématique, revue de littérature, méthodologie de terrain, structuration du plan, préparation de la soutenance orale.

Un étudiant qui prépare un mémoire sur, par exemple, l''évaluation d''une PME sénégalaise avant une opération de reprise mobilisera directement l''ingénierie financière ; un étudiant qui travaille sur la qualité du contrôle interne dans une entreprise mobilisera l''audit financier approfondi. La méthodologie du mémoire n''est donc pas une matière isolée : elle structure la façon dont vous allez présenter ce que les deux autres matières vous auront appris à faire.

## 3. Le mémoire : ce qu''il faut savoir dès le début de l''année

Sans entrer dans le détail (voir la leçon dédiée de ce cours), retenez trois principes dès maintenant. Premièrement, un bon mémoire part d''une problématique précise et délimitée, pas d''un thème vague : « la consolidation en Afrique » n''est pas une problématique, « comment les PME sénégalaises exportatrices documentent-elles leurs prix de transfert avec leurs filiales ouest-africaines » commence à en être une. Deuxièmement, un mémoire professionnel s''appuie sur un terrain réel ou réaliste, pas seulement sur des lectures : une étude de cas, des entretiens, une analyse de données d''entreprise. Troisièmement, la soutenance n''est pas une répétition du mémoire : c''est une défense argumentée, qui suppose d''anticiper les questions du jury et de savoir reconnaître les limites de son propre travail sans se dévaloriser.

## 4. Une méthode de travail combinant examens et mémoire

- Réservez des plages horaires distinctes pour les révisions d''examen et pour le mémoire : les mélanger dilue l''attention sur les deux.
- Utilisez vos études de cas de cours (audit, ingénierie financière) comme matériau de réflexion pour votre mémoire, sans jamais copier un cas fictif de cours dans un travail censé être original.
- Tenez un journal de bord du mémoire, même sommaire : ce que vous avez lu, ce que vous avez décidé, ce qui reste à faire. Il vous servira directement à rédiger la partie méthodologique.
- Anticipez la soutenance dès la rédaction : en écrivant chaque partie, demandez-vous quelle question un membre du jury pourrait poser, et préparez mentalement une réponse.

## 5. Plan de révision sur six semaines

- Semaine 1 : relire les bases de Master 1 indispensables (consolidation approfondie, test de dépréciation, principe de pleine concurrence) ; faire un point d''avancement honnête sur le mémoire.
- Semaine 2 : travailler l''audit financier approfondi, démarche complète, du seuil de signification à l''opinion d''audit, avec des cas chiffrés.
- Semaine 3 : travailler l''ingénierie financière, évaluation d''entreprise par plusieurs méthodes, opérations de fusion avec calcul de parité.
- Semaine 4 : consolider la méthodologie du mémoire (plan détaillé, bibliographie, préparation de la soutenance) en l''appliquant directement à votre propre sujet.
- Semaine 5 : traiter un sujet type complet dans les conditions de l''examen, puis corriger soi-même avant de regarder le corrigé ; faire relire une partie de votre mémoire par un pair.
- Semaine 6 : reprendre uniquement ses points faibles identifiés en semaine 5, relire les fiches de synthèse, répéter oralement sa future soutenance devant un miroir ou un camarade.

## Points clés à retenir

- Le Master 2 combine examens et mémoire ; il faut organiser son temps pour ne négliger aucun des deux.
- Les trois matières avancées de l''année nourrissent souvent directement le contenu du mémoire.
- Une problématique précise et délimitée vaut mieux qu''un thème vague, dès le départ de la rédaction.
- La préparation de la soutenance commence pendant la rédaction, pas après.

## Exercices pratiques

1. Formulez, en une phrase, une problématique de mémoire précise qui pourrait s''appuyer sur l''une des trois matières avancées de l''année.
2. Expliquez la différence entre un thème de mémoire et une problématique de mémoire.
3. Construisez votre propre calendrier de révision sur six semaines, en indiquant pour chaque semaine une matière, un objectif et un temps dédié au mémoire.
4. Citez deux raisons pour lesquelles il est utile de tenir un journal de bord pendant la rédaction du mémoire.
5. Donnez un exemple de question qu''un jury pourrait poser sur un mémoire consacré à l''évaluation d''une PME avant une opération de reprise, et esquissez une réponse possible.

## Corrigé

1. Exemple : « Comment une PME agroalimentaire sénégalaise peut-elle documenter ses prix de transfert avec une filiale installée dans un pays voisin de l''UEMOA ? » Toute problématique précise, délimitée et vérifiable à partir d''un cas réel ou réaliste est acceptée.
2. Un thème est un sujet large (« l''audit en Afrique », « les fusions d''entreprises ») qui ne précise ni l''angle d''étude ni le terrain. Une problématique est une question précise, délimitée dans le temps, l''espace ou le secteur, à laquelle le mémoire doit répondre à partir d''une analyse argumentée et d''un terrain identifié.
3. Réponse libre ; le calendrier doit comporter six lignes datées, chacune avec une matière, un objectif mesurable et un temps réservé au mémoire, la sixième semaine étant consacrée aux points faibles et à la répétition de la soutenance.
4. Il permet de retrouver facilement, au moment de rédiger la partie méthodologique, les choix effectués et leurs justifications ; il aide aussi à mesurer objectivement son avancement et à repérer tôt un retard ou un blocage.
5. Exemple de question : « Pourquoi avez-vous choisi la méthode d''actualisation des flux plutôt que les seuls multiples comparables pour évaluer cette PME ? » Réponse possible : expliquer que les multiples comparables manquaient de données fiables pour une entreprise de cette taille et que l''actualisation des flux permettait de mieux intégrer les spécificités de son activité, tout en reconnaissant que le choix du taux d''actualisation reste une source d''incertitude à discuter.', 'texte', 45, true, 10
from public.courses c where c.slug = 'mas-compta-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Master 2 en Comptabilité');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Audit financier approfondi : l''essentiel pour l''examen', '## Objectifs de la leçon

- Dérouler la démarche d''audit depuis l''évaluation des risques jusqu''à l''opinion exprimée.
- Calculer un seuil de signification (matérialité) et ses déclinaisons (seuil de planification, seuil de report).
- Comprendre le principe de l''échantillonnage en audit et appliquer une méthode simplifiée.
- Distinguer les grands types d''opinion d''audit.

Cette leçon prolonge le module d''audit et de contrôle interne de Licence 3 : elle approfondit la démarche, sans revenir sur les notions de base (indépendance du commissaire aux comptes, cycles d''audit élémentaires). Les normes internationales d''audit sont évoquées en termes généraux ; tout numéro précis de norme ou seuil réglementaire doit être vérifié dans les textes en vigueur.

## 1. La démarche d''audit en quatre temps

Un audit financier approfondi suit une démarche structurée : prise de connaissance de l''entité et de son environnement, évaluation du risque d''anomalies significatives, détermination d''une stratégie d''audit (tests de procédures sur les contrôles internes, contrôles substantifs sur les comptes), puis formation de l''opinion. Cette démarche repose sur un principe central : l''auditeur ne vérifie pas tout, il concentre ses efforts là où le risque d''erreur ou de fraude est le plus élevé et le plus susceptible d''influencer les décisions des utilisateurs des comptes.

Le risque d''audit combine classiquement trois composantes : le risque inhérent (propre à la nature de l''activité ou du compte, par exemple un stock de produits périssables plus risqué qu''une trésorerie bancaire), le risque de contrôle (le contrôle interne de l''entreprise ne détecte ou ne corrige pas une anomalie) et le risque de non-détection (les travaux de l''auditeur eux-mêmes ne détectent pas une anomalie existante). L''auditeur ajuste l''étendue de ses travaux pour ramener le risque de non-détection à un niveau acceptable, compte tenu des deux premiers risques.

## 2. Le seuil de signification (matérialité)

Le seuil de signification est le montant au-delà duquel une anomalie, ou le cumul de plusieurs anomalies, est susceptible d''influencer les décisions économiques des utilisateurs des comptes. Il sert de référence pour déterminer l''étendue des travaux et pour juger, en fin de mission, si les anomalies relevées doivent être corrigées ou peuvent être tolérées.

Cas d''entreprise : l''auditeur de Casamance Négoce, société fictive, retient un taux de matérialité, fictif pour l''exemple, de 1 % du chiffre d''affaires. Le chiffre d''affaires de l''exercice est de 2 400 000 000 FCFA.

- Seuil de signification global : 1 % × 2 400 000 000 = 24 000 000 FCFA.
- Seuil de planification, retenu de façon prudente à 75 % du seuil global pour piloter les travaux en cours de mission : 75 % × 24 000 000 = 18 000 000 FCFA.
- Seuil de report des anomalies triviales, fixé ici à 5 % du seuil global, en dessous duquel une anomalie individuelle n''est pas suivie séparément : 5 % × 24 000 000 = 1 200 000 FCFA.

Ces trois seuils ne sont pas de simples formalités : ils structurent concrètement le travail. Une anomalie de 500 000 FCFA, inférieure au seuil de report, ne mobilise pas de ressources d''investigation supplémentaires isolément. Une anomalie de 20 000 000 FCFA, proche du seuil de signification global, déclenche une analyse approfondie et peut remettre en cause l''opinion si elle n''est pas corrigée.

## 3. L''échantillonnage en audit

Face à une population nombreuse d''opérations (factures de ventes, écritures de paie), l''auditeur ne peut généralement pas tout contrôler : il sélectionne un échantillon représentatif. La méthode de l''échantillonnage en unités monétaires (MUS, monetary unit sampling) donne plus de chances d''être sélectionnées aux opérations de montant élevé, cohérent avec l''objectif de détecter des anomalies significatives en valeur plutôt qu''en nombre d''opérations.

Illustration pédagogique simplifiée, à ne pas confondre avec une formule statistique officielle : pour une population de comptes clients d''une valeur comptable totale de 1 800 000 000 FCFA, et un seuil de signification de 24 000 000 FCFA calculé plus haut, une approche simplifiée consiste à diviser la valeur de la population par le seuil de signification pour obtenir un ordre de grandeur de la taille d''échantillon : 1 800 000 000 divisé par 24 000 000, soit environ 75 éléments. Les méthodes statistiques réellement employées en pratique ajustent ce chiffre selon le niveau de confiance recherché, le risque de contrôle évalué et la stratification éventuelle de la population ; retenez le principe, pas une formule figée.

## 4. Les types d''opinion d''audit

Au terme de ses travaux, l''auditeur exprime une opinion sur les comptes. En termes généraux, on distingue : l''opinion sans réserve (les comptes donnent, dans tous leurs aspects significatifs, une image fidèle) ; l''opinion avec réserve (les comptes sont globalement fiables, mais un ou plusieurs points précis, limités, appellent une réserve) ; l''opinion défavorable (les anomalies sont si importantes et répandues que les comptes ne donnent pas une image fidèle) ; et l''impossibilité d''exprimer une opinion (l''auditeur n''a pas pu réunir des éléments suffisants et appropriés pour fonder une opinion, par exemple en cas de limitation imposée à ses travaux).

Le choix entre ces opinions dépend à la fois de l''ampleur des anomalies ou limitations constatées (significatives ou non) et de leur caractère diffus ou circonscrit (généralisées à l''ensemble des comptes, ou limitées à un poste précis).

## Points clés à retenir

- Le risque d''audit combine risque inhérent, risque de contrôle et risque de non-détection ; l''auditeur concentre ses travaux sur les zones les plus risquées.
- Le seuil de signification global se décline en seuil de planification (plus prudent) et seuil de report des anomalies triviales.
- L''échantillonnage en unités monétaires privilégie les montants élevés ; toute formule chiffrée dans ce cours est pédagogique et simplifiée, pas une norme officielle.
- Le type d''opinion dépend de l''ampleur et du caractère diffus ou circonscrit des anomalies ou limitations constatées.

## Exercices pratiques

1. Expliquez la différence entre risque inhérent, risque de contrôle et risque de non-détection, avec un exemple pour chacun.
2. Le chiffre d''affaires de l''entreprise fictive Sahel Distribution est de 1 500 000 000 FCFA. L''auditeur retient un taux de matérialité fictif de 1,2 %. Calculez le seuil de signification global, puis le seuil de planification à 70 % de ce seuil.
3. Pourquoi l''échantillonnage en unités monétaires donne-t-il plus de chances d''être sélectionnées aux opérations de montant élevé ?
4. Une population de stocks a une valeur comptable de 900 000 000 FCFA ; le seuil de signification retenu est de 15 000 000 FCFA. En appliquant la méthode pédagogique simplifiée du cours, estimez un ordre de grandeur de la taille d''échantillon.
5. Donnez un exemple de situation qui justifierait une opinion avec réserve plutôt qu''une opinion défavorable.
6. Expliquez en quoi une impossibilité d''exprimer une opinion diffère d''une opinion défavorable.

## Corrigé

1. Risque inhérent : un stock de produits périssables est intrinsèquement plus exposé à une perte de valeur non constatée qu''une trésorerie bancaire. Risque de contrôle : une entreprise sans séparation des tâches entre la personne qui encaisse et celle qui enregistre les ventes présente un risque que les contrôles internes ne détectent pas une anomalie. Risque de non-détection : un échantillon trop petit ou mal ciblé par l''auditeur peut ne pas repérer une anomalie réellement présente dans les comptes.
2. Seuil de signification global : 1,2 % × 1 500 000 000 = 18 000 000 FCFA. Seuil de planification : 70 % × 18 000 000 = 12 600 000 FCFA.
3. Parce que la sélection s''effectue proportionnellement à la valeur monétaire de chaque opération : une opération de montant élevé représente une plus grande part de la valeur totale de la population, donc une plus grande probabilité d''être incluse dans l''échantillon, ce qui est cohérent avec l''objectif de détecter prioritairement les anomalies significatives en valeur.
4. 900 000 000 divisé par 15 000 000, soit environ 60 éléments, selon la méthode pédagogique simplifiée du cours.
5. Par exemple, une provision pour dépréciation de stock jugée insuffisante sur un seul site parmi plusieurs, pour un montant proche mais inférieur au seuil de signification : l''anomalie est significative sur ce point précis mais reste circonscrite, sans remettre en cause l''image fidèle de l''ensemble des comptes.
6. Une opinion défavorable signifie que l''auditeur a pu réunir des éléments suffisants et conclut que les comptes, pris dans leur ensemble, ne donnent pas une image fidèle en raison d''anomalies généralisées. Une impossibilité d''exprimer une opinion signifie que l''auditeur n''a pas pu réunir des éléments suffisants et appropriés pour se prononcer du tout, par exemple à cause d''une limitation imposée à ses travaux ou d''une documentation manquante.', 'texte', 45, false, 20
from public.courses c where c.slug = 'mas-compta-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Audit financier approfondi : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Ingénierie financière et opérations de restructuration : l''essentiel pour l''examen', '## Objectifs de la leçon

- Évaluer une entreprise par la méthode de l''actualisation des flux de trésorerie disponibles (DCF) et par les multiples comparables.
- Comprendre, en termes généraux, le principe de l''effet de levier dans un financement par endettement (LBO).
- Calculer une parité d''échange et une prime de fusion dans une opération de fusion-acquisition.
- Situer les opérations de restructuration (apport partiel d''actif, scission) par rapport à la fusion.

Cette leçon prolonge la comptabilité des sociétés de Licence 2 et les opérations de fusion déjà abordées en Licence 3 : elle approfondit l''évaluation d''entreprise et les montages de restructuration, du point de vue de la décision financière plus que de la seule écriture comptable. Tous les taux (WACC, croissance, multiples) sont explicitement fictifs pour l''exemple.

## 1. Évaluer une entreprise : la méthode DCF

La méthode DCF (discounted cash flows) valorise une entreprise par la somme actualisée des flux de trésorerie qu''elle devrait générer dans le futur, plus une valeur terminale représentant les flux au-delà de l''horizon explicite de prévision.

Cas d''entreprise : la société cible fictive Rufisque Agro-Business présente les flux de trésorerie disponibles prévisionnels suivants pour les cinq prochaines années : 50 000 000, 55 000 000, 60 000 000, 66 000 000 et 70 000 000 FCFA. Le taux d''actualisation retenu (coût moyen pondéré du capital, ou WACC) est de 12 %, fictif pour l''exemple ; le taux de croissance à l''infini retenu pour la valeur terminale est de 2 %, également fictif.

- Valeur actualisée des flux explicites (années 1 à 5) : environ 212 900 000 FCFA.
- Valeur terminale (flux de l''année 5 majoré du taux de croissance, divisé par la différence entre le WACC et le taux de croissance) : environ 714 000 000 FCFA, actualisée sur cinq ans à environ 405 100 000 FCFA.
- Valeur d''entreprise par la méthode DCF : environ 212 900 000 + 405 100 000 = 618 000 000 FCFA.

## 2. Évaluer une entreprise : les multiples comparables

La méthode des multiples applique à un agrégat financier de la cible (chiffre d''affaires, EBITDA, résultat net) un multiple observé sur des entreprises comparables cotées ou récemment cédées. Pour Rufisque Agro-Business, l''EBITDA de l''exercice est de 80 000 000 FCFA ; le multiple comparable observé dans le secteur, fictif pour l''exemple, est de 6 fois l''EBITDA.

- Valeur d''entreprise par les multiples : 80 000 000 × 6 = 480 000 000 FCFA.

Les deux méthodes donnent des résultats différents (618 000 000 FCFA par le DCF, 480 000 000 FCFA par les multiples), ce qui est normal : elles reposent sur des hypothèses et sources distinctes. Une pratique courante retient une valeur médiane ou moyenne, plutôt qu''un chiffre unique présenté comme certain. Une moyenne simple donnerait ici environ 549 000 000 FCFA de valeur d''entreprise. Pour passer à la valeur des capitaux propres (equity value), il faut déduire la dette financière nette, par exemple 90 000 000 FCFA, soit environ 459 000 000 FCFA.

## 3. L''effet de levier, en termes généraux

Une opération à effet de levier (leveraged buy-out, LBO) consiste à financer l''acquisition d''une cible majoritairement par de la dette, remboursée grâce aux flux de trésorerie générés par la cible elle-même. L''intérêt pour l''acquéreur est d''amplifier la rentabilité de ses fonds propres investis, si la rentabilité économique de la cible dépasse le coût de la dette ; le risque est symétrique : en cas de difficulté, l''endettement amplifie aussi les pertes et la pression sur la trésorerie, qui doit servir la dette en plus de l''activité normale. Ce mécanisme se développe aussi progressivement en Afrique pour la transmission de PME, avec des structures à adapter au contexte local : toute donnée chiffrée doit être vérifiée au cas par cas.

## 4. La fusion-acquisition : parité d''échange et prime de fusion

Dans une fusion-absorption, la société absorbante évalue la société absorbée et détermine une parité d''échange, c''est-à-dire le nombre d''actions nouvelles de l''absorbante à remettre aux actionnaires de l''absorbée.

Cas d''entreprise : la société absorbante Teranga Capital évalue son action à 10 000 FCFA, et l''action de la société absorbée Sine Agro-Export à 6 000 FCFA. La parité d''échange est le rapport entre ces deux valeurs : 6 000 divisé par 10 000, soit 0,6, ce qui s''exprime aussi comme 3 actions Teranga Capital pour 5 actions Sine Agro-Export.

- Sine Agro-Export compte 10 000 actions en circulation. Le nombre d''actions Teranga Capital à créer est de 10 000 × 0,6, soit 6 000 actions nouvelles.
- Si la valeur nominale de l''action Teranga Capital est de 5 000 FCFA, l''augmentation de capital nominale s''élève à 6 000 × 5 000, soit 30 000 000 FCFA.
- La valeur réelle des apports de Sine Agro-Export, évaluée à 10 000 × 6 000, soit 60 000 000 FCFA, est supérieure à cette augmentation de capital nominale. La différence constitue la prime de fusion : 60 000 000 − 30 000 000, soit 30 000 000 FCFA, inscrite en capitaux propres de l''absorbante.

## 5. Autres opérations de restructuration

Au-delà de la fusion, deux opérations méritent d''être distinguées. L''apport partiel d''actif consiste, pour une société, à apporter une partie seulement de son patrimoine (une branche d''activité) à une autre société, en échange de titres, sans dissolution de la société apporteuse. La scission répartit l''ensemble du patrimoine d''une société entre plusieurs sociétés, avec dissolution de la société scindée. Ces opérations suivent une logique comptable proche de la fusion mais se distinguent par leur effet sur l''existence juridique de la société d''origine.

## Points clés à retenir

- Le DCF et les multiples comparables donnent rarement la même valeur ; une fourchette ou une moyenne reflète mieux l''incertitude qu''un chiffre unique.
- L''effet de levier amplifie symétriquement la rentabilité et le risque d''une acquisition financée principalement par dette.
- La parité d''échange se calcule comme le rapport entre la valeur de l''action absorbée et celle de l''action absorbante ; la prime de fusion est la différence entre la valeur réelle des apports et l''augmentation de capital nominale correspondante.
- L''apport partiel d''actif n''entraîne pas la dissolution de la société apporteuse, contrairement à la fusion et à la scission.

## Exercices pratiques

1. Expliquez pourquoi le DCF et les multiples comparables peuvent donner des valorisations différentes pour la même entreprise.
2. Une cible présente un EBITDA de 60 000 000 FCFA ; le multiple comparable retenu est de 5 fois, fictif pour l''exemple. Calculez la valeur d''entreprise par les multiples.
3. Expliquez en deux phrases le principe de l''effet de levier dans une opération de LBO, et son risque symétrique.
4. L''action de la société absorbante vaut 8 000 FCFA, celle de la société absorbée 5 000 FCFA. Calculez la parité d''échange.
5. La société absorbée compte 4 000 actions ; la valeur nominale de l''action absorbante est de 4 000 FCFA. Avec la parité calculée à la question précédente, calculez le nombre d''actions à créer, l''augmentation de capital nominale et la prime de fusion.
6. Quelle est la différence essentielle entre un apport partiel d''actif et une scission ?
7. Cas pratique complet : reprenez le cas Rufisque Agro-Business et présentez en tableau la valeur d''entreprise par DCF, par multiples, la valeur moyenne retenue, puis la valeur des capitaux propres après déduction d''une dette nette de 90 000 000 FCFA.

## Corrigé

1. Le DCF repose sur des prévisions de flux futurs et des hypothèses de taux propres à l''entreprise ; les multiples comparables s''appuient sur des transactions ou cotations d''entreprises similaires observées sur le marché. Deux sources d''information différentes, d''où des résultats qui convergent rarement exactement.
2. Valeur d''entreprise : 60 000 000 × 5 = 300 000 000 FCFA.
3. Financer une acquisition majoritairement par dette amplifie la rentabilité des fonds propres investis si la rentabilité économique de la cible dépasse le coût de la dette ; symétriquement, en cas de difficulté, l''endettement amplifie les pertes et la pression sur la trésorerie de la cible, qui doit rembourser la dette en plus de financer son activité.
4. Parité : 5 000 divisé par 8 000, soit 0,625.
5. Nombre d''actions à créer : 4 000 × 0,625 = 2 500 actions. Augmentation de capital nominale : 2 500 × 4 000 = 10 000 000 FCFA. Valeur réelle des apports : 4 000 × 5 000 = 20 000 000 FCFA. Prime de fusion : 20 000 000 − 10 000 000 = 10 000 000 FCFA.
6. L''apport partiel d''actif ne porte que sur une partie du patrimoine et n''entraîne pas la dissolution de la société apporteuse, qui continue d''exister avec le reste de son activité. La scission porte sur l''ensemble du patrimoine, réparti entre plusieurs sociétés, et entraîne la dissolution de la société scindée.
7. Tableau attendu : valeur d''entreprise DCF environ 618 000 000 FCFA ; valeur d''entreprise par les multiples 480 000 000 FCFA ; valeur moyenne retenue environ 549 000 000 FCFA ; valeur des capitaux propres après déduction de la dette nette de 90 000 000 FCFA, environ 459 000 000 FCFA.', 'texte', 45, false, 30
from public.courses c where c.slug = 'mas-compta-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Ingénierie financière et opérations de restructuration : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Méthodologie du mémoire professionnel et soutenance : l''essentiel pour l''examen', '## Objectifs de la leçon

- Construire une problématique de mémoire précise et un plan détaillé cohérent.
- Mener une revue de littérature courte et une méthodologie de terrain adaptées à un mémoire professionnel.
- Rédiger dans les règles (citations, bibliographie, éthique de la recherche) sans invention de sources.
- Préparer une soutenance orale : structure de la présentation, anticipation des questions du jury.

Cette leçon ne traite pas d''une matière comptable au sens strict, mais d''une compétence professionnelle transversale indispensable à la fin du cursus de Master. Les exemples de plan et de questions sont génériques ; adaptez-les toujours à votre sujet réel et à votre établissement, dont les exigences précises (longueur, format de citation, durée de soutenance) doivent être vérifiées dans le règlement de votre formation.

## 1. De la problématique au plan détaillé

Un mémoire professionnel ne part pas d''un thème mais d''une problématique : une question précise, délimitée, à laquelle le mémoire répond par une analyse argumentée. Une bonne problématique combine trois qualités : elle est spécifique (pas « la fiscalité internationale », mais « comment une PME exportatrice documente ses prix de transfert ») ; elle est vérifiable sur un terrain accessible (une entreprise réelle ou réaliste, des données que vous pouvez effectivement obtenir) ; elle laisse place à une véritable analyse, pas seulement à une description.

Une fois la problématique fixée, le plan détaillé découpe la réponse en parties cohérentes. Un plan type pour un mémoire professionnel en comptabilité ou finance comporte généralement : une introduction qui pose la problématique et son intérêt ; une revue de littérature qui synthétise ce que les textes normatifs et les travaux existants disent du sujet ; une partie méthodologique qui explique comment vous avez étudié votre terrain (étude de cas, entretiens, analyse de données) ; une partie résultats et analyse qui présente ce que vous avez observé et ce que cela signifie ; des recommandations si le mémoire est à visée professionnelle ; une conclusion qui répond explicitement à la problématique et en reconnaît les limites.

## 2. La revue de littérature courte

Dans un mémoire professionnel, la revue de littérature n''a pas besoin d''être exhaustive comme dans un mémoire de recherche académique : elle doit situer votre sujet par rapport à ce que disent les textes normatifs applicables (SYSCOHADA, IFRS le cas échéant, textes fiscaux, normes d''audit en termes généraux) et les travaux ou guides professionnels existants sur la question. Règle absolue : chaque source citée doit être réelle et vérifiable. N''inventez jamais un auteur, un titre d''ouvrage ou un article pour étoffer une bibliographie ; une source inventée, si elle est détectée, discrédite l''ensemble du travail et constitue une faute grave d''intégrité académique. Si vous ne disposez pas d''une source précise sur un point, dites-le explicitement plutôt que de fabriquer une référence.

## 3. La méthodologie de terrain

La partie méthodologique explique, de façon transparente, comment vous avez recueilli et traité vos données : étude de cas d''une entreprise (réelle, ou fictive si l''entreprise réelle ne peut être nommée pour des raisons de confidentialité, ce qui doit alors être dit explicitement), entretiens avec des professionnels, analyse de documents comptables. Elle justifie aussi les choix effectués : pourquoi cette entreprise plutôt qu''une autre, pourquoi cette méthode d''évaluation plutôt qu''une autre, quelles limites ces choix impliquent. Un jury valorise une méthodologie qui reconnaît honnêtement ses limites plutôt qu''une méthodologie qui prétend à une rigueur qu''elle n''a pas.

## 4. Citer et référencer sans inventer

Toute idée reprise d''un texte normatif, d''un ouvrage ou d''un article doit être attribuée à sa source, selon le format demandé par votre établissement (souvent une variante du style APA ou d''un style propre à l''école). Le plagiat, défini comme la reprise de mots ou d''idées d''autrui sans attribution, est une faute grave qui peut entraîner l''invalidation du mémoire. À l''inverse, citer abondamment sans jamais apporter d''analyse personnelle appauvrit le travail : l''objectif est de construire votre propre raisonnement en vous appuyant sur des sources identifiées, pas de juxtaposer des citations.

## 5. Préparer la soutenance

La soutenance est un exercice oral distinct de la lecture du mémoire. Une présentation efficace, généralement structurée en une dizaine de minutes suivies de questions (la durée précise dépend de votre établissement), résume la problématique, la méthodologie, les résultats principaux et les recommandations, sans chercher à tout redire. Préparez-vous à trois types de questions fréquentes : des questions de clarification (« pouvez-vous préciser comment vous avez obtenu telle donnée ? »), des questions de fond (« pourquoi avoir choisi cette méthode plutôt qu''une autre ? »), et des questions qui testent vos limites (« quelle est la principale limite de votre travail ? »). Répondre honnêtement à une question sur les limites de son travail est mieux perçu qu''une défense rigide qui refuse toute critique.

## Points clés à retenir

- Une problématique précise, délimitée et vérifiable vaut mieux qu''un thème vague.
- La revue de littérature situe le sujet par rapport aux textes et travaux existants, sans jamais inventer de source.
- La méthodologie doit être transparente sur ses choix et honnête sur ses limites.
- La soutenance est un exercice oral distinct : elle valorise la clarté, la capacité à argumenter et l''honnêteté sur les limites du travail.

## Exercices pratiques

1. Transformez le thème vague « l''audit en Afrique » en une problématique précise, délimitée et vérifiable.
2. Citez les six grandes parties d''un plan type de mémoire professionnel évoqué dans ce cours.
3. Expliquez pourquoi inventer une source bibliographique est une faute grave, même si l''idée rapportée semble plausible.
4. Donnez un exemple de question de fond qu''un jury pourrait poser sur un mémoire consacré à l''évaluation d''une PME par la méthode DCF, et une réponse possible.
5. Pourquoi une revue de littérature qui ne fait que juxtaposer des citations, sans analyse personnelle, est-elle jugée insuffisante ?
6. Expliquez la différence entre une étude de cas réelle et une étude de cas fictive dans un mémoire, et dans quelle situation la seconde se justifie.

## Corrigé

1. Exemple : « Comment les cabinets d''audit sénégalais adaptent-ils leur évaluation du risque de contrôle interne lorsqu''ils interviennent auprès de PME familiales sans service comptable structuré ? » Toute problématique spécifique, vérifiable sur un terrain accessible et ouverte à l''analyse est acceptée.
2. Introduction, revue de littérature, méthodologie, résultats et analyse, recommandations, conclusion.
3. Parce que la crédibilité d''un mémoire repose sur la vérifiabilité de ses sources ; une source inventée, même si l''idée semble plausible, trompe le lecteur sur l''origine réelle de l''information et constitue une fraude intellectuelle, détectable et sanctionnée lorsqu''elle est découverte.
4. Exemple de question : « Pourquoi avez-vous retenu un taux d''actualisation de 12 % plutôt qu''un autre taux pour cette PME ? » Réponse possible : expliquer la construction du taux à partir d''un coût des fonds propres et d''un coût de la dette pondérés par leur part dans le financement, tout en reconnaissant que l''absence de données boursières pour une PME non cotée introduit une marge d''incertitude sur ce taux.
5. Parce que l''objectif du mémoire est de construire un raisonnement personnel argumenté à partir des sources, pas de prouver seulement qu''on les a lues ; une juxtaposition de citations ne montre pas que l''étudiant a compris, confronté et dépassé ces sources pour répondre à sa propre problématique.
6. Une étude de cas réelle s''appuie sur une entreprise identifiée et des données vérifiées auprès d''elle. Une étude de cas fictive, construite pour l''exercice ou pour préserver la confidentialité d''une entreprise réelle qui ne peut être nommée, se justifie si elle est explicitement présentée comme telle au lecteur et au jury, sans jamais être présentée comme une donnée réelle qu''elle ne serait pas.', 'texte', 45, false, 40
from public.courses c where c.slug = 'mas-compta-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Méthodologie du mémoire professionnel et soutenance : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Master 2 (entraînement)', '## Présentation du sujet

Sujet type non officiel, à titre d''entraînement, barème indicatif sur 20 points. Durée conseillée : 3 heures. Il mobilise les trois matières avancées du Master 2 : audit financier approfondi, ingénierie financière et opérations de restructuration, méthodologie du mémoire professionnel, à partir d''un même dossier.

L''entreprise fictive Kaolack Industries envisage de céder sa filiale de transformation agroalimentaire Gandiol Process à un repreneur. Le cabinet d''audit Teranga Audit intervient en amont pour certifier les derniers comptes de Gandiol Process, et le repreneur mandate un conseil pour évaluer la cible.

## Partie 1 — Audit financier approfondi (7 points)

Le chiffre d''affaires de Gandiol Process est de 1 800 000 000 FCFA. Teranga Audit retient un taux de matérialité fictif de 1 % du chiffre d''affaires, et un seuil de planification à 70 % du seuil global.

1. (2 points) Calculez le seuil de signification global et le seuil de planification.
2. (3 points) La population des comptes clients de Gandiol Process a une valeur comptable de 1 200 000 000 FCFA. En appliquant la méthode pédagogique simplifiée du cours (valeur de la population divisée par le seuil de signification global), estimez un ordre de grandeur de la taille d''échantillon.
3. (2 points) Teranga Audit constate une anomalie de 3 000 000 FCFA sur une provision, nettement inférieure au seuil de signification global. Expliquez, en deux ou trois phrases, l''effet probable de cette anomalie isolée sur l''opinion d''audit.

## Partie 2 — Ingénierie financière et restructuration (9 points)

Gandiol Process présente des flux de trésorerie disponibles prévisionnels de 40 000 000, 44 000 000, 48 000 000, 52 000 000 et 56 000 000 FCFA sur cinq ans. Le WACC retenu est de 14 %, fictif pour l''exemple, et le taux de croissance à l''infini de 2 %, également fictif. Son EBITDA de l''exercice est de 65 000 000 FCFA, et le multiple comparable observé dans le secteur, fictif, est de 5,5 fois l''EBITDA.

4. (3 points) Calculez la valeur d''entreprise par la méthode des multiples comparables.
5. (2 points) Expliquez en quelques lignes pourquoi la valeur obtenue par DCF (non calculée ici en détail, mais dont le principe doit être rappelé) peut différer sensiblement de la valeur obtenue par les multiples.
6. (4 points) Si l''acquéreur finance 70 % du prix d''acquisition par de la dette, expliquez le principe de l''effet de levier dans ce montage et son risque principal.

## Partie 3 — Méthodologie du mémoire professionnel (4 points)

Un étudiant souhaite consacrer son mémoire à cette opération (de façon anonymisée et fictive pour l''exercice).

7. (2 points) Proposez une problématique de mémoire précise à partir de ce cas.
8. (2 points) Citez deux précautions méthodologiques que l''étudiant doit respecter en utilisant ce cas comme terrain de mémoire.

## Corrigé détaillé

1. Seuil de signification global : 1 % × 1 800 000 000 = 18 000 000 FCFA. Seuil de planification : 70 % × 18 000 000 = 12 600 000 FCFA.
2. 1 200 000 000 divisé par 18 000 000, soit environ 67 éléments, selon la méthode pédagogique simplifiée du cours.
3. Une anomalie de 3 000 000 FCFA, nettement inférieure au seuil de signification global de 18 000 000 FCFA, n''est en principe pas de nature, à elle seule, à remettre en cause une opinion sans réserve ; elle doit néanmoins être suivie et cumulée avec d''éventuelles autres anomalies, car le cumul de plusieurs anomalies individuellement non significatives peut, lui, devenir significatif.
4. Valeur d''entreprise par les multiples : 65 000 000 × 5,5 = 357 500 000 FCFA.
5. Le DCF repose sur des prévisions de flux futurs propres à l''entreprise et sur des hypothèses de taux d''actualisation et de croissance ; les multiples comparables reposent sur des transactions ou cotations d''entreprises similaires observées sur le marché à un moment donné. Ces deux sources d''information étant différentes, les deux méthodes convergent rarement exactement, ce qui justifie de présenter une fourchette plutôt qu''un chiffre unique.
6. Financer 70 % du prix par de la dette amplifie la rentabilité des fonds propres de l''acquéreur si la rentabilité économique de Gandiol Process dépasse le coût de cette dette, puisque l''acquéreur mobilise moins de fonds propres pour un même contrôle de la cible. Le risque principal est symétrique : si l''activité de Gandiol Process se dégrade, la dette doit malgré tout être remboursée, ce qui peut mettre en péril la trésorerie de la société et, en dernier ressort, la capacité de l''acquéreur à honorer ses engagements financiers.
7. Exemple : « Comment un repreneur évalue-t-il une PME agroalimentaire sénégalaise avant une opération de reprise, et quelles limites méthodologiques pèsent sur cette évaluation ? » Toute problématique précise et vérifiable est acceptée.
8. Par exemple : anonymiser ou rendre fictives les données réellement sensibles de l''entreprise (noms, montants exacts) si la confidentialité l''exige, et le dire explicitement au lecteur ; ne jamais présenter des hypothèses de taux ou de multiples fictives pour l''exercice comme des données officielles ou certaines.

## Exercices pratiques

1. Reprenez la partie 1 du sujet avec un chiffre d''affaires de 2 200 000 000 FCFA et un taux de matérialité fictif de 0,8 %. Calculez le seuil de signification global.
2. Une population de stocks a une valeur comptable de 600 000 000 FCFA ; le seuil de signification retenu est de 12 000 000 FCFA. Estimez un ordre de grandeur de la taille d''échantillon avec la méthode pédagogique simplifiée.
3. Un EBITDA de 90 000 000 FCFA est valorisé avec un multiple fictif de 7 fois. Calculez la valeur d''entreprise par les multiples.
4. Expliquez pourquoi un acquéreur qui finance une acquisition entièrement par fonds propres, sans aucune dette, ne bénéficie d''aucun effet de levier.
5. Proposez une problématique de mémoire différente de celle du corrigé, à partir du même cas Kaolack Industries / Gandiol Process.

## Corrigé (exercices complémentaires)

1. Seuil de signification global : 0,8 % × 2 200 000 000 = 17 600 000 FCFA.
2. 600 000 000 divisé par 12 000 000, soit environ 50 éléments.
3. Valeur d''entreprise : 90 000 000 × 7 = 630 000 000 FCFA.
4. Sans dette, la rentabilité des fonds propres de l''acquéreur est simplement égale à la rentabilité économique de la cible : aucun effet multiplicateur ne joue, puisque l''effet de levier résulte précisément de l''écart entre la rentabilité économique de la cible et le coût de la dette utilisée pour financer une partie du prix, écart qui n''existe pas en l''absence de dette.
5. Exemple : « Quel rôle joue l''audit des derniers comptes dans la négociation du prix d''une opération de reprise de PME au Sénégal ? » Toute problématique précise, vérifiable et distincte de celle déjà proposée est acceptée.', 'texte', 45, false, 50
from public.courses c where c.slug = 'mas-compta-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Master 2 (entraînement)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Audit financier approfondi', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Master 2 en Comptabilité.
- Objectifs : calculer un seuil de signification et ses déclinaisons ; comprendre le principe de l''échantillonnage en audit ; distinguer les types d''opinion.
- Matériel : diaporama, calculatrice.
- Prérequis : audit et contrôle interne de Licence 3 ; leçon « Audit financier approfondi » de ce cours.
- Précaution : toute formule d''échantillonnage présentée est pédagogique et simplifiée, pas une norme statistique officielle.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture

Bonjour. Vous avez vu, en Licence, les grands principes du contrôle interne et de l''audit. Aujourd''hui, nous allons dérouler une démarche d''audit complète, du calcul du seuil de signification jusqu''au choix du type d''opinion, à partir du cas fictif de l''entreprise Casamance Négoce.

## 05:00 – 15:00 · Le risque d''audit en trois composantes

Rappel essentiel : l''auditeur ne vérifie pas tout, il concentre ses efforts là où le risque d''anomalie significative est le plus élevé. Le risque d''audit combine le risque inhérent, propre à la nature de l''activité ou du compte, le risque de contrôle, qui tient à l''efficacité du contrôle interne de l''entreprise, et le risque de non-détection, qui tient à l''efficacité des travaux de l''auditeur lui-même. Plus les deux premiers risques sont élevés, plus l''auditeur doit réduire le risque de non-détection en étendant ses travaux, par exemple en augmentant la taille de son échantillon ou en resserrant la période couverte par ses contrôles.

Question à la salle : un stock de produits électroniques à forte obsolescence technologique présente-t-il un risque inhérent élevé ou faible ? Réponse attendue : élevé, car la valeur de ce stock peut se dégrader rapidement et de façon difficile à anticiper, ce qui justifie une attention particulière de l''auditeur sur ce poste.

## 15:00 – 30:00 · Calcul du seuil de signification

Prenons le cas de Casamance Négoce, dont le chiffre d''affaires de l''exercice est de 2 400 000 000 FCFA. L''auditeur retient un taux de matérialité, fictif pour l''exemple, de 1 % du chiffre d''affaires.

Premier calcul : le seuil de signification global, 1 % de 2 400 000 000, soit 24 000 000 FCFA. Deuxième calcul : le seuil de planification, retenu de façon prudente à 75 % du seuil global pour piloter les travaux en cours de mission, soit 75 % de 24 000 000, soit 18 000 000 FCFA. Troisième calcul : le seuil de report des anomalies triviales, fixé ici à 5 % du seuil global, soit 5 % de 24 000 000, soit 1 200 000 FCFA.

Ces trois chiffres structurent concrètement la mission. Une anomalie de 500 000 FCFA, inférieure au seuil de report, ne mobilise pas de ressources d''investigation isolément. Une anomalie de 20 000 000 FCFA, proche du seuil global, déclenche au contraire une analyse approfondie.

## 30:00 – 35:00 · Pause active

À vous : le chiffre d''affaires de l''entreprise fictive Sahel Distribution est de 1 500 000 000 FCFA, avec un taux de matérialité fictif de 1,2 %. Calculez le seuil de signification global, puis le seuil de planification à 70 % de ce seuil. Deux minutes, puis correction.

Correction : seuil de signification global, 1,2 % de 1 500 000 000, soit 18 000 000 FCFA. Seuil de planification, 70 % de 18 000 000, soit 12 600 000 FCFA.

## 35:00 – 50:00 · Quiz interactif à mi-parcours

Question 1. Quelles sont les trois composantes du risque d''audit ? Réponse : le risque inhérent, le risque de contrôle et le risque de non-détection.

Question 2. Que mesure le seuil de signification ? Réponse : le montant au-delà duquel une anomalie, ou un cumul d''anomalies, est susceptible d''influencer les décisions économiques des utilisateurs des comptes.

Question 3. Le seuil de planification est-il généralement plus élevé ou plus prudent que le seuil de signification global ? Réponse : plus prudent, donc généralement inférieur, pour anticiper un risque de cumul d''anomalies en cours de mission.

Question 4. Pourquoi l''échantillonnage en unités monétaires privilégie-t-il les montants élevés ? Réponse : parce que la sélection s''effectue proportionnellement à la valeur monétaire de chaque opération, cohérent avec l''objectif de détecter prioritairement les anomalies significatives en valeur.

Question 5. Qu''exprime une opinion avec réserve ? Réponse : que les comptes sont globalement fiables, mais qu''un ou plusieurs points précis et limités appellent une réserve.

## 50:00 – 1:05:00 · Échantillonnage et application complète

Pour une population de comptes clients d''une valeur comptable de 1 800 000 000 FCFA, et un seuil de signification de 24 000 000 FCFA, l''approche pédagogique simplifiée de ce cours consiste à diviser la valeur de la population par le seuil de signification : 1 800 000 000 divisé par 24 000 000, soit environ 75 éléments. Je le répète car c''est important : cette formule est une illustration pédagogique, pas une méthode statistique officielle ; en pratique, le niveau de confiance recherché et le risque de contrôle évalué ajustent ce chiffre.

Exercice d''application : une population de stocks a une valeur comptable de 900 000 000 FCFA, pour un seuil de signification de 15 000 000 FCFA. Calculez l''ordre de grandeur de la taille d''échantillon.

Correction : 900 000 000 divisé par 15 000 000, soit environ 60 éléments.

## 1:05:00 – 1:20:00 · Les types d''opinion et discussion

Au terme des travaux, quatre types d''opinion possibles : l''opinion sans réserve, l''opinion avec réserve, l''opinion défavorable, et l''impossibilité d''exprimer une opinion. Le choix dépend de l''ampleur des anomalies constatées et de leur caractère diffus ou circonscrit.

Discussion de cas : Teranga Audit constate, chez Casamance Négoce, une anomalie de 3 000 000 FCFA sur une provision, nettement inférieure au seuil de signification global de 24 000 000 FCFA. Quel type d''opinion est le plus probable, toutes choses égales par ailleurs ? Réponse attendue : une opinion sans réserve reste probable, l''anomalie étant nettement inférieure au seuil de signification et apparemment circonscrite à un seul poste ; il faut néanmoins vérifier qu''elle ne se cumule pas avec d''autres anomalies identifiées ailleurs dans la mission, qui, additionnées, pourraient dépasser le seuil.

Variante de discussion : imaginons maintenant que l''équipe d''audit découvre, en fin de mission, trois anomalies distinctes de 8 000 000, 9 000 000 et 10 000 000 FCFA, réparties sur trois cycles différents (achats, ventes, stocks). Prises isolément, chacune reste inférieure au seuil de signification global de 24 000 000 FCFA. Mais leur cumul atteint 27 000 000 FCFA, qui dépasse ce seuil. C''est précisément la raison pour laquelle un auditeur tient un registre centralisé de toutes les anomalies relevées, même non corrigées individuellement par l''entreprise : c''est le cumul, et non chaque anomalie prise isolément, qui peut faire basculer l''opinion d''une opinion sans réserve vers une opinion avec réserve. Retenez bien cette logique de cumul, régulièrement testée dans les sujets d''examen de Master.

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Synthèse : la démarche d''audit part de l''évaluation du risque, se structure autour du seuil de signification et de ses déclinaisons, s''appuie sur un échantillonnage ciblé, et se conclut par une opinion dont le type dépend de l''ampleur et de la diffusion des anomalies constatées, jamais d''une impression générale non chiffrée.

Évaluation finale, cinq questions.

Question 1. Le chiffre d''affaires d''une entreprise est de 3 000 000 000 FCFA, avec un taux de matérialité fictif de 1 %. Quel est le seuil de signification global ? Réponse : 30 000 000 FCFA.

Question 2. Pourquoi l''auditeur ne vérifie-t-il pas l''intégralité des opérations d''une entreprise ? Réponse : parce que cela serait généralement disproportionné en temps et en coût ; il concentre ses travaux sur les zones où le risque d''anomalie significative est le plus élevé, via l''évaluation des risques et l''échantillonnage.

Question 3. Une anomalie généralisée à l''ensemble des comptes, d''un montant très supérieur au seuil de signification, oriente vers quel type d''opinion ? Réponse : une opinion défavorable.

Question 4. Quelle est la différence entre une opinion défavorable et une impossibilité d''exprimer une opinion ? Réponse : l''opinion défavorable suppose que l''auditeur a réuni suffisamment d''éléments et conclut que les comptes ne donnent pas une image fidèle ; l''impossibilité d''exprimer une opinion signifie qu''il n''a pas pu réunir des éléments suffisants pour se prononcer du tout.

Question 5. Pourquoi le seuil de report des anomalies triviales est-il nécessaire, en plus du seuil de signification global ? Réponse : pour éviter de consacrer des ressources d''investigation à des anomalies individuellement négligeables, tout en gardant la possibilité de les cumuler si leur somme devient significative.

Merci de votre attention. Avant de nous quitter, un dernier conseil méthodologique pour vos révisions : face à un sujet d''examen d''audit, commencez toujours par calculer les seuils demandés avant de vous prononcer sur une opinion, car un correcteur attend que votre conclusion découle explicitement de ces chiffres, et non d''une impression générale sur le dossier. La prochaine séance portera sur l''ingénierie financière et les opérations de restructuration.', 'video', 90, false, 60
from public.courses c where c.slug = 'mas-compta-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Audit financier approfondi');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Ingénierie financière et opérations de restructuration', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Master 2 en Comptabilité.
- Objectifs : évaluer une entreprise par DCF et par multiples ; comprendre l''effet de levier ; calculer une parité d''échange et une prime de fusion.
- Matériel : diaporama, calculatrice.
- Prérequis : comptabilité des sociétés de Licence 2, fusion simple de Licence 3 ; leçon « Ingénierie financière et opérations de restructuration » de ce cours.
- Précaution : tous les taux (WACC, croissance, multiples) utilisés dans les exemples sont fictifs pour l''exemple.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture

Bonjour. Cette séance porte sur l''évaluation d''entreprise et les opérations de restructuration, deux compétences centrales pour quiconque travaille en finance d''entreprise, en conseil ou en direction financière de groupe. Fil rouge : la société cible fictive Rufisque Agro-Business, qu''un groupe envisage de racheter.

## 05:00 – 20:00 · La méthode DCF

Rufisque Agro-Business présente des flux de trésorerie disponibles prévisionnels de 50 000 000, 55 000 000, 60 000 000, 66 000 000 et 70 000 000 FCFA sur cinq ans. Le WACC retenu est de 12 %, fictif pour l''exemple, et le taux de croissance à l''infini de 2 %, également fictif.

Nous actualisons chaque flux à son année respective avec le WACC, ce qui donne une valeur actualisée des flux explicites d''environ 212 900 000 FCFA. Nous calculons ensuite la valeur terminale, qui représente les flux au-delà de l''horizon explicite : le flux de la cinquième année, majoré du taux de croissance, divisé par la différence entre le WACC et le taux de croissance, soit environ 714 000 000 FCFA, que nous actualisons sur cinq ans pour obtenir environ 405 100 000 FCFA. La valeur d''entreprise par la méthode DCF est la somme de ces deux éléments : environ 212 900 000 plus 405 100 000, soit 618 000 000 FCFA.

## 20:00 – 30:00 · La méthode des multiples comparables

Rufisque Agro-Business a réalisé un EBITDA de 80 000 000 FCFA sur l''exercice. Le multiple comparable observé dans le secteur, fictif pour l''exemple, est de 6 fois l''EBITDA. La valeur d''entreprise par les multiples est donc de 80 000 000 multiplié par 6, soit 480 000 000 FCFA.

Nous obtenons deux valeurs différentes : 618 000 000 FCFA par le DCF, 480 000 000 FCFA par les multiples. Ce n''est pas une erreur : ces méthodes reposent sur des informations distinctes. Une pratique courante retient une moyenne ou une fourchette : ici, une moyenne simple donnerait environ 549 000 000 FCFA de valeur d''entreprise. Pour obtenir la valeur des capitaux propres, nous déduisons la dette financière nette, par exemple 90 000 000 FCFA, ce qui donne environ 459 000 000 FCFA.

## 30:00 – 35:00 · Pause active

À vous : une cible présente un EBITDA de 60 000 000 FCFA ; le multiple comparable retenu est de 5 fois, fictif. Calculez la valeur d''entreprise par les multiples. Deux minutes, puis correction : 60 000 000 multiplié par 5, soit 300 000 000 FCFA.

## 35:00 – 50:00 · Quiz interactif à mi-parcours

Question 1. Que représente la valeur terminale dans un DCF ? Réponse : la valeur des flux de trésorerie au-delà de l''horizon explicite de prévision.

Question 2. Pourquoi le DCF et les multiples comparables donnent-ils rarement la même valeur ? Réponse : parce qu''ils s''appuient sur des informations et des hypothèses différentes, prévisions internes pour le premier, transactions ou cotations de marché pour le second.

Question 3. Qu''est-ce que l''effet de levier dans une opération de LBO ? Réponse : le fait de financer majoritairement une acquisition par de la dette pour amplifier la rentabilité des fonds propres investis, si la rentabilité économique de la cible dépasse le coût de la dette.

Question 4. Comment calcule-t-on une parité d''échange dans une fusion ? Réponse : comme le rapport entre la valeur de l''action de la société absorbée et celle de l''action de la société absorbante.

Question 5. Qu''est-ce que la prime de fusion ? Réponse : la différence entre la valeur réelle des apports de la société absorbée et l''augmentation de capital nominale correspondante chez l''absorbante.

## 50:00 – 1:10:00 · Fusion : parité d''échange et prime de fusion

Prenons un cas de fusion. La société absorbante Teranga Capital évalue son action à 10 000 FCFA, et l''action de la société absorbée Sine Agro-Export à 6 000 FCFA. La parité d''échange est le rapport entre ces deux valeurs : 6 000 divisé par 10 000, soit 0,6, c''est-à-dire 3 actions Teranga Capital pour 5 actions Sine Agro-Export.

Sine Agro-Export compte 10 000 actions en circulation. Le nombre d''actions Teranga Capital à créer est de 10 000 multiplié par 0,6, soit 6 000 actions nouvelles. Avec une valeur nominale de 5 000 FCFA par action, l''augmentation de capital nominale s''élève à 6 000 multiplié par 5 000, soit 30 000 000 FCFA. La valeur réelle des apports de Sine Agro-Export est de 10 000 multiplié par 6 000, soit 60 000 000 FCFA. La prime de fusion est la différence : 60 000 000 moins 30 000 000, soit 30 000 000 FCFA, inscrite en capitaux propres de l''absorbante.

Exercice à vous : l''action absorbante vaut 8 000 FCFA, l''action absorbée 5 000 FCFA, qui compte 4 000 actions, avec une valeur nominale absorbante de 4 000 FCFA. Calculez la parité, le nombre d''actions à créer, l''augmentation de capital et la prime de fusion.

Correction : parité, 5 000 divisé par 8 000, soit 0,625. Actions à créer : 4 000 multiplié par 0,625, soit 2 500 actions. Augmentation de capital : 2 500 multiplié par 4 000, soit 10 000 000 FCFA. Valeur réelle des apports : 4 000 multiplié par 5 000, soit 20 000 000 FCFA. Prime de fusion : 20 000 000 moins 10 000 000, soit 10 000 000 FCFA.

## 1:10:00 – 1:20:00 · Apport partiel d''actif et scission

Au-delà de la fusion, rappelons deux opérations voisines. L''apport partiel d''actif consiste à apporter une partie seulement du patrimoine d''une société, une branche d''activité, à une autre société en échange de titres, sans dissolution de la société apporteuse. La scission répartit l''ensemble du patrimoine entre plusieurs sociétés, avec dissolution de la société scindée. Discussion : pourquoi un groupe choisirait-il un apport partiel d''actif plutôt qu''une fusion complète pour céder une branche d''activité ? Réponse attendue : parce qu''il souhaite continuer à exercer le reste de son activité sous la même structure juridique, sans dissoudre l''ensemble de la société pour céder une seule branche. Autre question possible à l''examen : si une entreprise souhaite au contraire se séparer entièrement de deux activités distinctes pour les loger dans deux sociétés différentes, sans rien conserver pour elle-même, quelle opération est la plus adaptée ? Réponse : la scission, puisqu''elle répartit l''ensemble du patrimoine entre les sociétés bénéficiaires et entraîne la disparition de la société d''origine, alors qu''un simple apport partiel d''actif laisserait subsister une société mère sans activité résiduelle clairement définie.

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Synthèse : le DCF et les multiples comparables sont deux approches complémentaires de l''évaluation d''entreprise, à présenter en fourchette plutôt qu''en chiffre unique ; l''effet de levier amplifie symétriquement la rentabilité et le risque d''une acquisition financée par dette ; la parité d''échange et la prime de fusion structurent comptablement une opération de fusion-acquisition.

Évaluation finale, cinq questions.

Question 1. Une cible a un EBITDA de 100 000 000 FCFA, valorisé avec un multiple fictif de 6,5 fois. Quelle est la valeur d''entreprise ? Réponse : 650 000 000 FCFA.

Question 2. Qu''est-ce que le WACC dans une évaluation par DCF ? Réponse : le coût moyen pondéré du capital, utilisé comme taux d''actualisation des flux de trésorerie futurs.

Question 3. L''action absorbante vaut 12 000 FCFA, l''action absorbée 9 000 FCFA. Quelle est la parité d''échange ? Réponse : 9 000 divisé par 12 000, soit 0,75.

Question 4. Quel est le risque principal d''un financement par effet de levier pour l''acquéreur ? Réponse : si la rentabilité économique de la cible se dégrade sous le coût de la dette, l''endettement amplifie les pertes et met en péril la trésorerie de la cible et de l''acquéreur.

Question 5. Quelle est la différence essentielle entre un apport partiel d''actif et une scission ? Réponse : l''apport partiel d''actif ne porte que sur une partie du patrimoine et n''entraîne pas la dissolution de la société apporteuse, contrairement à la scission qui porte sur l''ensemble du patrimoine et entraîne la dissolution de la société scindée.

Merci de votre attention. Gardez toujours à l''esprit, en révisant ces calculs, qu''un sujet d''examen n''attend jamais un chiffre isolé : il attend que vous expliquiez ce que ce chiffre signifie pour la décision d''investir, de racheter ou de restructurer. La prochaine séance portera sur la méthodologie du mémoire professionnel et de la soutenance.', 'video', 90, false, 70
from public.courses c where c.slug = 'mas-compta-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Ingénierie financière et opérations de restructuration');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Méthodologie du mémoire professionnel et soutenance', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Master 2 en Comptabilité, en phase de rédaction du mémoire.
- Objectifs : construire une problématique et un plan détaillé ; mener une revue de littérature et une méthodologie honnêtes ; préparer une soutenance orale.
- Matériel : diaporama, exemples de plans et de questions de jury.
- Prérequis : leçon « Méthodologie du mémoire professionnel et soutenance » de ce cours.
- Précaution : les exemples de problématiques et de questions sont génériques ; adaptez-les à votre sujet et vérifiez le règlement de votre établissement.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture

Bonjour. Cette séance ne porte pas sur une technique comptable mais sur une compétence transversale décisive pour terminer votre Master : transformer un sujet d''intérêt en un mémoire structuré, honnête et défendable à l''oral. Nous suivrons l''exemple fil rouge d''un mémoire consacré à l''évaluation d''une PME sénégalaise avant une opération de reprise.

## 05:00 – 15:00 · De la problématique au plan détaillé

Un thème n''est pas une problématique. « L''évaluation d''entreprise » est un thème ; « comment un repreneur évalue-t-il une PME agroalimentaire sénégalaise non cotée, et quelles limites méthodologiques pèsent sur cette évaluation » commence à être une problématique, car elle est spécifique, vérifiable sur un terrain accessible, et ouverte à une véritable analyse.

Une fois la problématique fixée, le plan détaillé organise la réponse : introduction qui pose la problématique et son intérêt, revue de littérature qui situe le sujet par rapport aux textes et travaux existants, méthodologie qui explique comment le terrain a été étudié, résultats et analyse qui présentent ce qui a été observé, recommandations à visée professionnelle, et conclusion qui répond explicitement à la problématique en reconnaissant ses limites.

Question à la salle : pourquoi la conclusion doit-elle reconnaître des limites, et pas seulement résumer les résultats ? Réponse attendue : parce qu''un mémoire honnête montre que l''étudiant comprend la portée réelle de son travail, ce qui renforce sa crédibilité auprès du jury, plutôt que de prétendre à une certitude que le travail ne permet pas d''atteindre.

## 15:00 – 30:00 · Revue de littérature et méthodologie, sans jamais inventer

La revue de littérature d''un mémoire professionnel situe le sujet par rapport aux textes normatifs applicables et aux travaux ou guides existants, sans viser l''exhaustivité d''un mémoire académique. Règle absolue, à répéter sans relâche : chaque source citée doit être réelle et vérifiable. Inventer un auteur, un titre, un article pour étoffer une bibliographie est une faute grave qui, si elle est détectée, discrédite l''ensemble du travail. Si une source précise manque sur un point, il faut le dire explicitement plutôt que de fabriquer une référence.

La méthodologie explique, de façon transparente, comment les données ont été recueillies : étude de cas, entretiens, analyse de documents. Elle justifie les choix effectués et leurs limites. Un jury valorise une méthodologie qui reconnaît honnêtement ses limites plutôt qu''une méthodologie qui prétend à une rigueur qu''elle n''a pas.

## 30:00 – 35:00 · Pause active

Exercice : reformulez le thème vague « la fiscalité internationale » en une problématique précise, délimitée et vérifiable, sur le modèle vu en introduction. Deux minutes, puis nous écoutons quelques propositions à l''oral.

Exemple de correction possible : « Comment une PME exportatrice sénégalaise documente-t-elle ses prix de transfert avec une filiale installée dans un pays voisin de l''UEMOA ? »

## 35:00 – 50:00 · Quiz interactif à mi-parcours

Question 1. Qu''est-ce qui distingue un thème d''une problématique ? Réponse : un thème est large et descriptif ; une problématique est une question précise, délimitée et ouverte à l''analyse.

Question 2. Pourquoi ne faut-il jamais inventer une source bibliographique ? Réponse : parce que cela trompe le lecteur sur l''origine réelle de l''information et constitue une fraude intellectuelle détectable et sanctionnée.

Question 3. Que doit faire un étudiant qui ne dispose pas d''une source précise sur un point ? Réponse : le dire explicitement plutôt que de fabriquer une référence.

Question 4. Qu''évalue, en priorité, un jury dans la partie méthodologique d''un mémoire professionnel ? Réponse : la transparence sur les choix effectués et l''honnêteté sur leurs limites.

Question 5. Combien de grandes parties comporte le plan type de mémoire professionnel présenté dans ce cours ? Réponse : six : introduction, revue de littérature, méthodologie, résultats et analyse, recommandations, conclusion.

## 50:00 – 1:10:00 · Préparer la soutenance

La soutenance est un exercice oral distinct de la lecture du mémoire. Une présentation efficace résume, en quelques minutes, la problématique, la méthodologie, les résultats principaux et les recommandations, sans chercher à tout redire : le jury a déjà lu le mémoire, il attend une mise en perspective, pas une récitation.

Préparez-vous à trois types de questions. Les questions de clarification demandent de préciser un point technique, par exemple « comment avez-vous obtenu les données financières de cette entreprise ? ». Les questions de fond interrogent vos choix, par exemple « pourquoi avoir retenu la méthode DCF plutôt que les seuls multiples comparables ? ». Les questions qui testent vos limites demandent d''identifier honnêtement les faiblesses de votre travail, par exemple « quelle est la principale limite de votre évaluation ? ».

Exercice de simulation : je vous pose la question suivante, préparez une réponse en deux minutes. « Si vous deviez refaire ce mémoire avec plus de temps, que changeriez-vous ? » Il n''y a pas de bonne réponse unique, mais une mauvaise réponse consiste à dire qu''on ne changerait rien : cela suggère, à tort, une confiance excessive. Une bonne réponse identifie un point précis et explique pourquoi on l''améliorerait, par exemple interroger davantage de professionnels pour renforcer la partie terrain.

Deuxième simulation, plus technique : « Votre évaluation DCF repose sur un taux d''actualisation de 12 %. Comment avez-vous construit ce taux, et que se passerait-il avec un taux de 14 % ? » Préparez votre réponse. Une bonne réponse explique la logique du coût moyen pondéré du capital, reconnaît que ce taux reste une estimation sujette à discussion pour une entreprise non cotée, et peut même esquisser le sens de la variation attendue : un taux d''actualisation plus élevé réduirait la valeur actualisée des flux futurs et de la valeur terminale, donc la valeur d''entreprise globale. Savoir expliquer le sens d''une variation, même sans recalculer précisément à l''oral, démontre une compréhension solide du mécanisme, ce qui compte souvent davantage pour le jury qu''un chiffre exact.

## 1:10:00 – 1:20:00 · Discussion sur l''intégrité académique

Discutons ensemble d''un cas limite : un étudiant, pressé par le temps, reformule un paragraphe trouvé sur internet sans le citer, en pensant que « reformuler » suffit à éviter le plagiat. Qu''en pensez-vous ? Réponse attendue : non, reformuler une idée sans citer sa source reste du plagiat, car ce qui doit être attribué, c''est l''idée elle-même et non seulement sa formulation exacte ; la bonne pratique consiste à citer la source chaque fois qu''une idée n''est pas la sienne, même reformulée.

Deuxième cas limite, pour aller plus loin : un étudiant, faute de temps pour mener de vrais entretiens, invente les propos d''un « responsable financier interrogé » pour étoffer sa partie résultats, en se disant que ces propos restent plausibles et ne trompent personne sur le fond. Qu''en pensez-vous ? Réponse attendue : c''est une fraude grave, de même nature qu''une source bibliographique inventée, car elle présente comme réelle une donnée de terrain qui ne l''est pas ; si l''étudiant n''a pas pu mener l''entretien prévu, la bonne pratique consiste à le dire explicitement dans la méthodologie, à expliquer cette limite et, si nécessaire, à adapter la problématique à ce qui a réellement pu être observé, plutôt que de fabriquer une preuve de terrain qui n''existe pas.

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Synthèse : une problématique précise et vérifiable, un plan cohérent, une revue de littérature honnête sans aucune source inventée, une méthodologie transparente sur ses limites, et une soutenance qui valorise la clarté et l''honnêteté plutôt que la défense rigide.

Évaluation finale, cinq questions.

Question 1. Qu''est-ce qu''une problématique de mémoire, par opposition à un thème ? Réponse : une question précise, délimitée et vérifiable sur un terrain accessible, à laquelle le mémoire répond par une analyse argumentée.

Question 2. Citez les six grandes parties d''un plan type de mémoire professionnel. Réponse : introduction, revue de littérature, méthodologie, résultats et analyse, recommandations, conclusion.

Question 3. Que faire si l''on ne trouve aucune source précise sur un point du mémoire ? Réponse : le dire explicitement, jamais inventer une référence.

Question 4. La reformulation d''une idée trouvée ailleurs, sans citer la source, est-elle acceptable ? Réponse : non, c''est toujours du plagiat si la source n''est pas citée, même reformulée.

Question 5. Quelle attitude un jury valorise-t-il face à une question sur les limites du travail ? Réponse : une reconnaissance honnête et précise des limites, plutôt qu''une défense rigide qui refuse toute critique.

Merci de votre attention. La prochaine séance sera un atelier pratique de préparation à la soutenance.', 'video', 90, false, 80
from public.courses c where c.slug = 'mas-compta-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Méthodologie du mémoire professionnel et soutenance');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Atelier méthodologie - préparer son mémoire et sa soutenance', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Master 2 en Comptabilité, en fin de rédaction du mémoire.
- Objectifs : construire, en atelier pratique, une problématique et un plan détaillés à partir d''un cas ; simuler une soutenance avec questions de jury.
- Matériel : diaporama, grille d''auto-évaluation d''un plan de mémoire.
- Prérequis : les trois cours vidéo précédents de ce cours, en particulier celui sur la méthodologie du mémoire.
- Précaution : le cas Kaolack Industries / Gandiol Process est entièrement fictif, construit pour l''entraînement.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture : un atelier, pas un cours

Bonjour. Cette dernière séance de l''année change de format : au lieu de vous présenter une notion nouvelle, je vous propose de construire ensemble, étape par étape, un mémoire fictif complet à partir du cas Kaolack Industries / Gandiol Process déjà rencontré dans le sujet type de ce cours, puis de simuler la soutenance correspondante. L''objectif est de vous entraîner à faire, pas seulement à savoir.

## 05:00 – 10:00 · Rappel du cas

Kaolack Industries envisage de céder sa filiale Gandiol Process à un repreneur. Le cabinet Teranga Audit certifie les derniers comptes de Gandiol Process ; le repreneur mandate un conseil pour évaluer la cible par DCF et par multiples comparables, avec un financement partiellement assuré par de la dette.

## 10:00 – 25:00 · Construire la problématique, ensemble

Premier travail d''atelier : à partir de ce cas, proposez une problématique de mémoire. Je vous laisse trois minutes en petits groupes, puis nous recueillons plusieurs propositions à l''oral et nous les évaluons ensemble selon les trois critères déjà vus : spécifique, vérifiable sur un terrain accessible, ouverte à l''analyse.

Exemple de proposition insuffisante : « L''évaluation d''entreprise dans les opérations de reprise. » Trop large, pas de terrain précis, pas de question ouverte à une analyse distincte d''un simple exposé de méthodes. Exemple de proposition intermédiaire, encore incomplète : « Comment évalue-t-on une PME sénégalaise ? » Un peu plus précis, mais encore trop général : il manque un contexte concret (quel secteur, quelle opération) et une tension à explorer, qui donnerait matière à une véritable discussion plutôt qu''à un simple catalogue de méthodes. Exemple de proposition satisfaisante : « Comment un conseil financier combine-t-il DCF et multiples comparables pour évaluer une PME agroalimentaire sénégalaise non cotée avant une opération de reprise, et quelles limites pèsent sur cette combinaison ? » Cette version est spécifique (secteur, taille d''entreprise, contexte), vérifiable (un cas réel ou réaliste de reprise), et ouverte à l''analyse (la question des limites appelle une vraie réflexion critique, pas une simple description de méthode).

## 25:00 – 35:00 · Construire le plan détaillé

Deuxième travail d''atelier : à partir de cette problématique retenue, esquissez un plan détaillé en six parties. Trois minutes, puis restitution. Exemple de plan attendu : introduction qui présente le contexte des reprises de PME en Afrique de l''Ouest et la problématique ; revue de littérature sur les méthodes d''évaluation d''entreprise et leurs limites documentées pour les PME non cotées ; méthodologie qui explique le choix du cas Gandiol Process (fictif pour l''exercice) et la façon dont les données ont été recueillies ; résultats et analyse qui présentent les valorisations obtenues par DCF et par multiples et discutent leur écart ; recommandations à l''intention du conseil financier ou du repreneur ; conclusion qui répond à la problématique en reconnaissant les limites de l''exercice, notamment l''absence de données boursières comparables pour une PME non cotée.

## 35:00 – 50:00 · Quiz interactif à mi-parcours

Question 1. Quels sont les trois critères d''une bonne problématique ? Réponse : spécifique, vérifiable sur un terrain accessible, ouverte à l''analyse.

Question 2. Pourquoi « l''évaluation d''entreprise dans les opérations de reprise » n''est-elle pas une problématique satisfaisante ? Réponse : parce qu''elle reste trop large, sans terrain précis ni question ouverte à une analyse distincte d''un simple exposé de méthode.

Question 3. Dans quelle partie du plan explique-t-on comment les données ont été recueillies ? Réponse : dans la partie méthodologie.

Question 4. Dans quelle partie du plan reconnaît-on les limites du travail ? Réponse : principalement dans la conclusion, même si certaines limites méthodologiques peuvent déjà être annoncées dans la partie méthodologie.

Question 5. Pourquoi est-il important d''annoncer, dans le plan, le choix d''un cas fictif pour l''exercice ? Réponse : pour rester honnête sur la nature des données utilisées, sans jamais laisser croire qu''il s''agit d''une entreprise réelle non anonymisée.

## 50:00 – 1:15:00 · Simulation de soutenance

Maintenant, mettons-nous en situation. Un volontaire présente, en trois minutes, une synthèse orale du mémoire fictif que nous venons de construire : problématique, méthode, résultat principal (l''écart entre valorisation DCF et valorisation par multiples), recommandation. Le reste du groupe joue le rôle du jury et prépare des questions.

Nous recueillons ensuite quatre questions types de jury, avec leurs réponses possibles. Première question : « Pourquoi avoir choisi ce cas précis plutôt qu''une autre PME ? » Réponse possible : expliquer que le secteur agroalimentaire et la taille de l''entreprise permettaient d''illustrer clairement l''écart entre DCF et multiples, tout en reconnaissant que le choix reste en partie contraint par l''accès aux données. Deuxième question : « Que recommanderiez-vous concrètement au repreneur ? » Réponse possible : recommander de négocier un prix situé dans la fourchette entre les deux valorisations plutôt que sur l''une d''elles seule, et de documenter cette fourchette auprès des parties pour en expliquer la logique. Troisième question, qui teste les limites : « Si vous aviez eu accès à de vraies données de marché, qu''auriez-vous fait différemment ? » Réponse possible : affiner le choix du multiple comparable et du WACC à partir de données réellement observées, plutôt que des hypothèses fictives retenues pour l''exercice. Quatrième question, plus inattendue : « En quoi le rapport de Teranga Audit sur les derniers comptes de Gandiol Process influence-t-il, selon vous, la négociation du prix entre les deux parties ? » Réponse possible : expliquer que le type d''opinion exprimé par l''auditeur, sans réserve ou avec réserve sur un point précis, conditionne la confiance du repreneur dans les chiffres servant de base à l''évaluation, et peut justifier une clause de garantie de passif dans le contrat de cession si certaines réserves subsistent, ce qui relie directement la matière audit, vue en début d''année, à la matière ingénierie financière.

## 1:15:00 – 1:25:00 · Grille d''auto-évaluation

Avant de nous quitter, voici une grille simple que vous pouvez appliquer à votre propre mémoire : la problématique est-elle spécifique et vérifiable ? Chaque source citée est-elle réelle et vérifiable, sans aucune invention ? La méthodologie explique-t-elle honnêtement ses choix et ses limites ? Le plan répond-il effectivement à la problématique annoncée en introduction, du début à la fin ? La présentation de soutenance tient-elle dans le temps imparti sans réciter le mémoire mot à mot ? Si vous répondez oui aux cinq questions, votre mémoire est sur de bonnes bases méthodologiques, indépendamment de la qualité technique de son contenu comptable ou financier, qui reste évidemment essentielle.

Un dernier conseil pratique : imprimez cette grille, ou recopiez-la dans votre journal de bord, et relisez-la une dernière fois quelques jours avant de déposer votre mémoire, puis à nouveau juste avant la soutenance. L''expérience montre que la plupart des faiblesses relevées par un jury ne portent pas sur un calcul isolé, mais sur l''un de ces cinq points de méthode : une problématique restée trop vague, une source douteuse, une limite non reconnue, un plan qui s''écarte progressivement de sa question initiale, ou une présentation orale trop longue et trop fidèle au texte écrit.

## 1:25:00 – 1:30:00 · Évaluation finale

Évaluation finale, cinq questions.

Question 1. Quels sont les trois critères d''une bonne problématique de mémoire ? Réponse : spécifique, vérifiable sur un terrain accessible, ouverte à l''analyse.

Question 2. Face à une question de jury qui teste les limites du travail, quelle attitude est la plus appréciée ? Réponse : une reconnaissance honnête et précise des limites, plutôt qu''une défense rigide.

Question 3. Pourquoi faut-il annoncer explicitement qu''un cas d''étude est fictif, s''il l''est ? Réponse : pour rester honnête sur la nature des données, sans laisser croire à une entreprise réelle non anonymisée.

Question 4. Que doit faire une recommandation finale face à deux valorisations différentes obtenues par deux méthodes ? Réponse : s''appuyer sur une fourchette documentée plutôt que de choisir arbitrairement l''une des deux valeurs comme seule référence.

Question 5. Quelle est la différence entre présenter une synthèse orale et réciter le mémoire en soutenance ? Réponse : la synthèse orale met en perspective les points essentiels pour un jury qui a déjà lu le mémoire ; la récitation répète le texte écrit sans valeur ajoutée et donne une impression de manque de maîtrise du sujet.

Merci à toutes et à tous pour votre travail cette année, de la consolidation approfondie jusqu''à cet atelier final. Bon courage pour vos examens, la rédaction de votre mémoire et votre soutenance.', 'video', 90, false, 90
from public.courses c where c.slug = 'mas-compta-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Atelier méthodologie - préparer son mémoire et sa soutenance');
