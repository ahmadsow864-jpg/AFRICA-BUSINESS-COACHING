-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Cours (partie 1/11). À exécuter après seed.sql.

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
