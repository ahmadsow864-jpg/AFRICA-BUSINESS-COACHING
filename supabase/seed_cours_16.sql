-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Cours (partie 16/16). À exécuter après seed.sql.

-- Cours : Marketing et commerce Master 1 : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'mas-mkt-m1', (select id from public.levels where name = 'Master 1'), null, 'Marketing et commerce', 'Marketing et commerce Master 1 : réussir ses examens', 'Préparation aux examens de Master 1 en Marketing et commerce : marketing stratégique approfondi et branding, marketing international et export, stratégie de distribution et trade marketing. Études de cas d''entreprises sénégalaises fictives, calculs chiffrés vérifiés, sujet type et quatre cours vidéo de 1h30. Public : étudiants de Master 1 ayant validé une Licence en marketing et commerce.', true, 781
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Master 1 en Marketing et commerce', 'Le Master 1 en Marketing et commerce marque une rupture nette avec la Licence. On ne vous demande plus
seulement de connaître des outils (mix marketing, étude de marché, techniques de vente) : on vous demande de les
mobiliser pour analyser des situations complexes, souvent incertaines, et de construire une argumentation de niveau
cadre. Les examens de M1 prennent trois formes principales : des épreuves écrites de cas (étude d''un cas d''entreprise
réel ou fictif, avec questions de diagnostic et de recommandation), des dossiers de recherche appliquée (mini-mémoire
ou dossier d''étude portant sur une problématique marketing précise, avec revue de littérature courte), et parfois une
soutenance orale de dossier de stage ou de projet tuteuré. Il faut donc préparer à la fois des connaissances
théoriques solides et une méthode de raisonnement transférable à des cas inédits.

## Les trois matières avancées de l''année

Ce cours d''examen couvre trois matières clés du M1 Marketing et commerce, qui prolongent sans jamais répéter les
fondamentaux déjà vus en Licence :

- Le marketing stratégique approfondi et le branding : modèles de capital-marque, positionnement complexe,
  repositionnement, architecture de marque.
- Le marketing international et export : choix des modes d''entrée à l''étranger, arbitrage entre standardisation et
  adaptation de l''offre.
- La stratégie de distribution et le trade marketing : conception des canaux, gestion de la relation
  fabricant-distributeur, merchandising et budgets coopératifs.

Ces trois matières se répondent : une marque forte (matière 1) facilite l''entrée sur un marché export (matière 2),
qui elle-même suppose une stratégie de distribution adaptée au pays cible (matière 3). Les sujets d''examen de M1
aiment précisément tester cette articulation en vous demandant de suivre une même entreprise fictive sur les trois
dimensions.

## La méthode de travail attendue en Master

En Licence, on valorisait la restitution organisée d''un cours. En Master, on valorise le diagnostic argumenté. Trois
réflexes à développer :

- L''étude de cas complexe : face à un cas d''entreprise (souvent 1 à 2 pages de contexte chiffré), commencez toujours
  par un diagnostic structuré (forces/faiblesses internes, opportunités/menaces externes, ou modèle des 5 forces de
  Porter si pertinent) avant de proposer une recommandation. Une recommandation sans diagnostic explicite est
  sanctionnée, même si elle est pertinente sur le fond.
- Le business case chiffré : en M1, on attend que vous sachiez construire et interpréter de petits calculs
  (seuil de rentabilité d''un mode d''entrée, marge d''un circuit de distribution, valeur d''une marque). Un correcteur
  de Master valorise un raisonnement chiffré juste et explicité plus qu''une récitation théorique non appliquée.
- La revue de littérature courte : pour un dossier de recherche appliquée, on vous demande de situer votre
  problématique par rapport à deux ou trois courants ou auteurs de référence du marketing (par exemple le débat
  standardisation/adaptation de Levitt et Kotler), sans invention de citations ou de références que vous ne
  maîtrisez pas précisément. Mieux vaut citer un concept sobrement et correctement que d''inventer une référence
  précise non vérifiée.

## Plan de révision sur six semaines

- Semaines 1 et 2 : reprendre en profondeur le marketing stratégique et le branding (leçon 2), avec, pour chaque
  concept, un exemple d''entreprise sénégalaise ou africaine que vous pouvez mobiliser à l''examen.
- Semaines 3 et 4 : traiter le marketing international et export (leçon 3) ; s''entraîner à construire des seuils de
  rentabilité comparant deux modes d''entrée, exercice classique des sujets de M1.
- Semaine 5 : travailler la stratégie de distribution et le trade marketing (leçon 4) ; mémoriser les mécanismes de
  calcul de marge en cascade sur un circuit de distribution (prix public, marge détaillant, marge distributeur, prix
  de cession fabricant).
- Semaine 6 : traiter le sujet type d''examen (leçon 5) en conditions chronométrées (3 heures), puis reprendre les
  quatre cours vidéo d''1h30 en vous arrêtant sur les quiz intermédiaires.

## Points de vigilance pour l''examen

- Un cas d''entreprise fictif doit rester cohérent du début à la fin de votre copie : ne changez pas les chiffres
  donnés dans l''énoncé.
- Un calcul juste mais non interprété (vous donnez un chiffre sans dire ce qu''il signifie pour la décision) ne
  rapporte qu''une partie des points en Master.
- Les correcteurs de Master attendent une structure visible : titres de parties, phrase de diagnostic, phrase de
  recommandation. Une copie dense et non structurée, même juste sur le fond, perd des points de forme.

## Exercices pratiques

1. Listez les trois matières avancées de ce cours de M1 et expliquez en une phrase chacune pourquoi elle prolonge,
   sans la répéter, une matière vue en Licence 3 Marketing et commerce.
2. Pourquoi un correcteur de Master sanctionne-t-il une recommandation sans diagnostic explicite, même si elle est
   pertinente ?
3. Construisez votre propre planning de révision sur six semaines en reprenant la trame proposée, en l''adaptant à
   votre emploi du temps réel.
4. Expliquez la différence entre une récitation théorique et un raisonnement chiffré appliqué à un cas, à l''aide
   d''un exemple que vous inventez (une entreprise fictive de votre choix, sans données officielles précises).

## Corrigé

1. Marketing stratégique approfondi et branding : prolonge le marketing stratégique de Licence 3 en introduisant les
   modèles de capital-marque et le positionnement complexe (repositionnement, architecture de marque), non traités
   en Licence. Marketing international et export : prolonge le commerce international de Licence 3 en se concentrant
   sur le choix argumenté des modes d''entrée et l''arbitrage standardisation/adaptation, plus avancé que les notions
   de base du commerce international. Stratégie de distribution et trade marketing : prolonge le marketing
   opérationnel de Licence 2 en se concentrant sur la conception des canaux et la relation fabricant-distributeur,
   non abordées en détail en Licence.
2. Parce qu''en Master, on évalue la capacité à construire un raisonnement professionnel complet : le diagnostic
   prouve que la recommandation découle d''une analyse de la situation réelle de l''entreprise, et non d''une intuition
   ou d''une récitation. Une bonne idée non justifiée par un diagnostic ne prouve pas la maîtrise de la méthode
   attendue d''un futur cadre marketing.
3. Réponse libre : l''essentiel est de retrouver, dans le planning personnel, les six blocs proposés (deux semaines
   de marketing stratégique et branding, deux semaines d''international et export, une semaine de distribution et
   trade marketing, une semaine de sujet type et de révision vidéo), avec des jours précis et des créneaux
   réalistes.
4. Exemple de réponse : une récitation théorique dirait « le seuil de rentabilité est le niveau d''activité pour
   lequel les charges totales égalent le chiffre d''affaires ». Un raisonnement chiffré appliqué calculerait, pour une
   entreprise fictive « Petit Marché SA » qui envisage d''exporter vers un pays voisin, le seuil de rentabilité en
   tonnes de deux modes d''entrée (export direct et implantation locale), comparerait les deux seuils aux volumes
   réellement prévus par l''énoncé, puis conclurait sur le mode d''entrée le plus adapté à ce volume précis. C''est
   cette dernière démarche qui est valorisée en Master.', 'texte', 40, true, 10
from public.courses c where c.slug = 'mas-mkt-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Master 1 en Marketing et commerce');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Marketing stratégique approfondi et branding : l''essentiel pour l''examen', 'Le branding et le marketing stratégique approfondi forment le cœur analytique du M1. Il ne s''agit plus de
définir un positionnement en une phrase (promesse, cible, différenciation), comme en Licence, mais de comprendre
comment une marque crée une valeur mesurable et comment la repositionner lorsque le marché change.

## Le capital-marque : deux grilles de lecture complémentaires

Le capital-marque (brand equity) désigne la valeur additionnelle qu''une marque apporte à un produit, au-delà de ses
caractéristiques fonctionnelles. Deux modèles structurent la réflexion en Master :

- Le modèle d''Aaker distingue quatre dimensions du capital-marque : la notoriété (la marque est-elle connue et
  reconnue ?), la qualité perçue (la marque est-elle jugée fiable et performante par le marché, indépendamment de sa
  qualité réelle mesurée en laboratoire ?), les associations de marque (quelles images, valeurs, personnalités sont
  attachées à la marque ?) et la fidélité (les clients rachètent-ils la marque, résistent-ils aux offres
  concurrentes moins chères ?).
- Le modèle CBBE (Customer-Based Brand Equity) de Keller propose une pyramide en quatre étages : identité de marque
  (qui êtes-vous ?), sens de la marque (performance et imagerie), réponses du client (jugements et sentiments) et,
  au sommet, résonance (intensité de la relation et fidélité active).

Pour l''examen, retenez surtout que ces modèles structurent le diagnostic : plutôt que « la marque est forte », on
dit « forte sur la notoriété et la qualité perçue, mais fragile sur la fidélité », ce qui oriente la recommandation.

## Mesurer le capital-marque : un indice pondéré

Une méthode pédagogique simple consiste à construire un indice de capital-marque pondéré à partir d''une étude
consommateurs notée sur 10 par dimension.

Cas d''entreprise fictif : Téranga Cosmétiques, marque sénégalaise de cosmétiques naturels vendue à Dakar et dans les
principales villes régionales. Une étude consommateurs donne les scores suivants sur 10 : notoriété 7,5 ; qualité
perçue 8,0 ; fidélité 6,5 ; associations de marque 7,0. L''entreprise pondère ces dimensions selon leur importance
pour sa catégorie : qualité perçue 30 %, fidélité 30 %, notoriété 20 %, associations 20 %.

Indice de capital-marque = (0,20 × 7,5) + (0,30 × 8,0) + (0,30 × 6,5) + (0,20 × 7,0)
= 1,50 + 2,40 + 1,95 + 1,40 = 7,25 sur 10.

Diagnostic : Téranga Cosmétiques a une qualité perçue forte, mais sa fidélité (6,5) est le point le plus faible
malgré son poids élevé (30 %). La recommandation devrait porter en priorité sur la fidélisation (programme de
fidélité, communication sur l''engagement dans la durée) plutôt que sur la notoriété, déjà satisfaisante.

## Valoriser la marque par la méthode du premium de prix

Une seconde méthode, utilisée en gestion de marque, consiste à estimer la valeur financière annuelle apportée par la
marque à partir du supplément de prix qu''elle permet d''obtenir par rapport à un produit générique équivalent.

Téranga Cosmétiques vend sa crème phare à 3 500 FCFA, contre 2 800 FCFA pour un produit générique comparable sur le
marché. Le volume annuel vendu est de 120 000 unités.

Premium unitaire = 3 500 − 2 800 = 700 FCFA par unité.
Valeur de marque annuelle = 700 × 120 000 = 84 000 000 FCFA, soit 84 millions de FCFA par an.

Cette méthode a une limite importante à mentionner à l''examen : elle suppose le produit générique strictement
équivalent en qualité fonctionnelle, ce qui n''est pas toujours vérifiable, et elle ignore les coûts marketing
nécessaires pour entretenir ce premium.

## Le positionnement complexe et le repositionnement

En Licence, le positionnement se résume à une carte perceptuelle à deux axes. En Master, il faut gérer des
situations plus complexes :

- Le repositionnement : une marque change de positionnement quand son marché évolue (nouveaux concurrents,
  nouvelle génération de consommateurs) ou quand son image s''est érodée (banalisation, vieillissement). Il est
  risqué : trop brutal, il déroute les clients fidèles ; trop timide, il reste invisible.
- Le positionnement multi-segments : une marque qui s''adresse à plusieurs segments (particuliers et professionnels,
  par exemple) doit choisir entre un positionnement unique assez large, ou des sous-marques différenciées, au
  risque de complexifier son architecture de marque.
- L''architecture de marque : marque-mère unique (même nom pour tous les produits, synergies de notoriété mais
  risque de contagion en cas de crise), marques multiples (chaque gamme a son nom, image protégée mais
  investissement plus coûteux), ou stratégies intermédiaires (marque-caution, endossement).

## Exemple de repositionnement chiffré

Téranga Cosmétiques constate une érosion de sa part de marché auprès des 18-25 ans, qui perçoivent la marque comme
« pour leurs mères ». Le risque principal pour l''examen : un repositionnement trop brutal peut diluer l''indice de
fidélité (6,5 déjà fragile) des clientes historiques. Une recommandation raisonnable consisterait à lancer une
gamme jeune distincte (« Téranga Jeune ») plutôt qu''un repositionnement total de la marque-mère, limitant le risque
de contagion négative sur la clientèle fidèle existante.

## Exercices pratiques

1. Calculez l''indice de capital-marque d''une entreprise fictive « Sahel Beauté » avec les scores suivants sur 10 :
   notoriété 6,0 ; qualité perçue 7,5 ; fidélité 8,0 ; associations 6,5, et les pondérations suivantes : notoriété
   25 %, qualité perçue 25 %, fidélité 35 %, associations 15 %.
2. Identifiez la dimension la plus fragile de Sahel Beauté et proposez une recommandation marketing cohérente.
3. Une marque de boissons fictive, « Baobab Fraîcheur », se vend 600 FCFA la bouteille contre 480 FCFA pour
   l''équivalent générique, pour un volume annuel de 2 400 000 bouteilles. Calculez la valeur de marque annuelle par
   la méthode du premium de prix.
4. Citez une limite méthodologique de la méthode du premium de prix.
5. Expliquez, en deux phrases, la différence entre une stratégie de marque unique et une stratégie de marques
   multiples, avec un exemple fictif pour chacune.
6. Cas pratique complet : « Casamance Délices », marque fictive de jus de fruits artisanaux, a les scores suivants :
   notoriété 5,5 ; qualité perçue 8,5 ; fidélité 7,0 ; associations 7,5, pondérés respectivement 30 %, 25 %, 25 %,
   20 %. Elle vend sa bouteille à 900 FCFA contre 650 FCFA pour le générique, sur un volume annuel de 300 000
   bouteilles. a) Calculez l''indice de capital-marque. b) Calculez la valeur de marque annuelle. c) Rédigez un
   diagnostic en trois phrases et une recommandation stratégique.

## Corrigé

1. Indice = (0,25 × 6,0) + (0,25 × 7,5) + (0,35 × 8,0) + (0,15 × 6,5) = 1,50 + 1,875 + 2,80 + 0,975 = 7,15 sur 10.
2. La dimension la plus fragile est la notoriété (6,0), qui est également sous-pondérée (25 %) mais reste la plus
   basse des quatre. Recommandation : renforcer les investissements en visibilité (communication, présence en
   points de vente, partenariats) pour faire connaître une marque dont la qualité perçue et la fidélité sont déjà
   bonnes une fois le client touché.
3. Premium unitaire = 600 − 480 = 120 FCFA. Valeur de marque annuelle = 120 × 2 400 000 = 288 000 000 FCFA (288
   millions de FCFA).
4. Elle suppose que le produit générique de comparaison est strictement équivalent en qualité fonctionnelle, ce qui
   est rarement vérifiable avec certitude, et elle ignore les coûts marketing nécessaires pour entretenir ce
   premium.
5. Dans une stratégie de marque unique, tous les produits portent le même nom (exemple fictif : toute la gamme
   « Téranga », cosmétiques et compléments, sous une seule marque), ce qui maximise les synergies de notoriété mais
   expose tous les produits à une crise sur l''un d''entre eux. Dans une stratégie de marques multiples, chaque gamme
   a son propre nom (exemple fictif : le groupe « Sahel Groupe » commercialise « Douceur Fatou » et « Pure Nature »
   comme deux marques distinctes), ce qui protège l''image globale du groupe mais coûte plus cher en investissement
   marketing séparé.
6. a) Indice = (0,30 × 5,5) + (0,25 × 8,5) + (0,25 × 7,0) + (0,20 × 7,5) = 1,65 + 2,125 + 1,75 + 1,50 = 7,025, soit
   environ 7,03 sur 10. b) Premium unitaire = 900 − 650 = 250 FCFA ; valeur de marque annuelle = 250 × 300 000 =
   75 000 000 FCFA (75 millions de FCFA). c) Diagnostic : qualité perçue (8,5) et fidélité (7,0) solides expliquent
   le premium de prix malgré un volume modeste ; la notoriété (5,5), la plus fortement pondérée (30 %), est le
   point faible qui limite la note d''ensemble. Recommandation : investir en visibilité (dégustations, réseaux
   sociaux, distribution élargie) pour élargir la notoriété sans diluer le positionnement artisanal.', 'texte', 45, false, 20
from public.courses c where c.slug = 'mas-mkt-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Marketing stratégique approfondi et branding : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Marketing international et export : l''essentiel pour l''examen', 'Le marketing international et export est l''une des matières les plus exigeantes du M1 : il faut arbitrer entre
plusieurs modes d''entrée sur un marché étranger, chacun avec son niveau de risque et de contrôle, et décider
jusqu''où adapter son offre à un marché local.

## Les modes d''entrée à l''international : une échelle de contrôle et de risque

On distingue classiquement, par ordre croissant d''engagement :

- L''exportation indirecte : l''entreprise vend via un intermédiaire (agent, négociant, société de commerce
  international) qui connaît déjà le marché cible. Investissement et risque faibles, mais contrôle commercial
  également faible et marge partagée avec l''intermédiaire.
- L''exportation directe : l''entreprise vend elle-même sur le marché cible, en général via un agent commissionné ou
  un distributeur exclusif local. Contrôle et marge meilleurs, mais il faut investir en prospection et logistique.
- La licence et la franchise : l''entreprise cède un droit d''exploitation de sa marque, de son savoir-faire ou de son
  procédé à un partenaire local contre redevance. Peu d''investissement direct, développement rapide, mais contrôle
  qualité limité et risque de voir le partenaire devenir un concurrent une fois le savoir-faire transféré.
- La coentreprise (joint-venture) : l''entreprise s''associe à un partenaire local pour créer une structure commune,
  partageant investissement, risque et bénéfices. Utile pour accéder à des marchés réglementairement fermés aux
  investisseurs étrangers seuls, ou pour bénéficier de la connaissance du terrain d''un partenaire.
- La filiale à 100 % : l''entreprise investit seule dans une implantation locale complète. Contrôle maximal et marge
  conservée en totalité, mais investissement et risque les plus élevés, notamment en cas d''instabilité du marché.

Le choix dépend de quatre critères à mobiliser dans une copie d''examen : taille et potentiel du marché cible, risque
politique et économique du pays, ressources financières et managériales disponibles, et nécessité ou non d''adapter
fortement l''offre (ce qui favorise les modes à fort contrôle).

## Cas d''entreprise : Sahel Agro Export et le choix d''un mode d''entrée

Sahel Agro Export SA, entreprise sénégalaise fictive de transformation de céréales, souhaite entrer sur le marché
d''un pays voisin de l''UEMOA. Deux options sont étudiées : l''export direct depuis le Sénégal, ou une coentreprise
avec un partenaire local qui produirait sur place.

Export direct : coûts fixes annuels (prospection, agent commercial, logistique) de 15 000 000 FCFA ; coût variable
de 180 000 FCFA par tonne livrée (transport, douane) ; prix de vente de 260 000 FCFA la tonne.
Marge sur coût variable = 260 000 − 180 000 = 80 000 FCFA par tonne.
Seuil de rentabilité (en tonnes) = 15 000 000 ÷ 80 000 = 187,5 tonnes par an.

Coentreprise locale : coûts fixes annuels (investissement amorti, structure locale) de 45 000 000 FCFA ; coût
variable de 140 000 FCFA par tonne (production locale moins chère, pas de transport longue distance) ; même prix de
vente de 260 000 FCFA la tonne.
Marge sur coût variable = 260 000 − 140 000 = 120 000 FCFA par tonne.
Seuil de rentabilité (en tonnes) = 45 000 000 ÷ 120 000 = 375 tonnes par an.

## Le point d''indifférence entre les deux modes d''entrée

Au-delà du seuil propre à chaque option, l''examen attend souvent le point d''indifférence, le volume pour lequel
les deux modes coûtent exactement la même chose :

15 000 000 + 180 000 × Q = 45 000 000 + 140 000 × Q
40 000 × Q = 30 000 000
Q = 750 tonnes par an.

Interprétation : en dessous de 750 tonnes par an, l''export direct est le moins coûteux. Au-delà, la coentreprise
devient plus avantageuse, ses coûts fixes élevés étant amortis sur un volume plus important. Si Sahel Agro Export
prévoit 500 tonnes la première année, l''export direct reste préférable ; si elle vise 1 000 tonnes à terme, la
coentreprise devient rationnelle sur le plan des coûts, à condition d''intégrer les critères qualitatifs : risque
politique du pays cible et fiabilité du partenaire local pressenti.

## Standardisation ou adaptation de l''offre

Le second grand débat du marketing international, popularisé par l''opposition entre Theodore Levitt (partisan d''une
standardisation mondiale pour profiter des économies d''échelle) et les tenants d''une adaptation systématique aux
spécificités locales (langue, religion, pouvoir d''achat, réglementation), reste central en M1. La position
dominante, dite « glocalisation », consiste à standardiser ce qui peut l''être sans perte de valeur perçue (formule
du produit, identité de marque) et à adapter ce qui doit l''être localement (packaging, distribution, communication,
parfois le prix).

Pour Sahel Agro Export, un produit céréalier standardisé en formule pourrait nécessiter une adaptation du
conditionnement (formats familiaux, langue locale) et du réseau de distribution (marchés traditionnels plutôt que
grandes surfaces), tout en conservant son identité visuelle de marque.

## Exercices pratiques

1. Classez les cinq modes d''entrée présentés par ordre croissant de contrôle et de risque.
2. Une entreprise fictive « Fouta Textile » envisage l''export direct (coûts fixes 8 000 000 FCFA/an, coût variable
   25 000 FCFA par lot, prix de vente 45 000 FCFA par lot) ou une licence de marque (coûts fixes 2 000 000 FCFA/an,
   redevance reçue de 6 000 FCFA par lot vendu par le licencié, pas de coût variable pour Fouta Textile). Calculez
   le seuil de rentabilité de l''export direct en nombre de lots.
3. Expliquez en quoi la licence change la nature du seuil de rentabilité par rapport à l''export direct.
4. Résumez en deux phrases le débat Levitt / adaptation et la position de la « glocalisation ».
5. Pour Sahel Agro Export, citez un critère qualitatif (non chiffré) qui pourrait faire préférer l''export direct à
   la coentreprise même au-delà de 750 tonnes.
6. Cas pratique complet : une entreprise fictive « Thiès Mécanique » compare l''export direct (coûts fixes 20 000 000
   FCFA/an, coût variable 95 000 FCFA/unité, prix de vente 155 000 FCFA/unité) à une filiale locale à 100 % (coûts
   fixes 60 000 000 FCFA/an, coût variable 55 000 FCFA/unité, même prix de vente). a) Calculez le seuil de
   rentabilité de chaque option. b) Calculez le point d''indifférence entre les deux. c) Thiès Mécanique prévoit de
   vendre 550 unités par an : quelle option recommandez-vous sur le plan des coûts ?

## Corrigé

1. Du moins au plus engagé : exportation indirecte, exportation directe, licence/franchise, coentreprise, filiale à
   100 %.
2. Marge sur coût variable = 45 000 − 25 000 = 20 000 FCFA par lot. Seuil de rentabilité = 8 000 000 ÷ 20 000 = 400
   lots par an.
3. Dans la licence, Fouta Textile ne supporte pas de coût variable de production ou de distribution : son seul
   enjeu de rentabilité est de couvrir ses coûts fixes de gestion de la licence (2 000 000 FCFA) par les redevances
   reçues (6 000 FCFA par lot vendu par le licencié), soit un seuil de 2 000 000 ÷ 6 000 ≈ 333 lots vendus par le
   licencié. Le risque commercial (volume vendu) est transféré pour partie au licencié.
4. Levitt défend une standardisation mondiale de l''offre pour profiter des économies d''échelle, estimant les goûts
   des consommateurs de plus en plus homogènes. La position de la glocalisation, dominante aujourd''hui, consiste à
   standardiser ce qui peut l''être (produit, identité de marque) et à adapter ce qui doit l''être localement
   (packaging, distribution, communication).
5. Exemple de réponse acceptable : un risque politique ou réglementaire élevé dans le pays cible, qui rendrait un
   investissement en coentreprise trop risqué malgré son avantage de coût à volume élevé ; ou l''absence d''un
   partenaire local fiable et compétent identifié par Sahel Agro Export.
6. a) Export direct : marge = 155 000 − 95 000 = 60 000 FCFA/unité ; seuil = 20 000 000 ÷ 60 000 ≈ 333,3 unités.
   Filiale locale : marge = 155 000 − 55 000 = 100 000 FCFA/unité ; seuil = 60 000 000 ÷ 100 000 = 600 unités.
   b) Point d''indifférence : 20 000 000 + 95 000 × Q = 60 000 000 + 55 000 × Q → 40 000 × Q = 40 000 000 → Q = 1 000
   unités. c) À 550 unités par an, on est au-dessus du seuil de rentabilité de l''export direct (333,3) mais en
   dessous du seuil de la filiale locale (600) : la filiale locale ne serait même pas rentable à ce volume, alors
   que l''export direct l''est déjà. L''export direct est donc la recommandation sur le plan des coûts à ce niveau de
   volume.', 'texte', 45, false, 30
from public.courses c where c.slug = 'mas-mkt-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Marketing international et export : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Stratégie de distribution et trade marketing : l''essentiel pour l''examen', 'La stratégie de distribution et le trade marketing forment la troisième matière avancée du M1 : il s''agit
de comprendre comment une entreprise choisit ses canaux de vente, gère sa relation avec les distributeurs, et
construit les actions commerciales conjointes (merchandising, promotions, budgets coopératifs) qui font vivre un
produit dans les points de vente.

## Les stratégies de canaux de distribution

Trois grandes stratégies de couverture du marché, à mobiliser selon la nature du produit :

- La distribution intensive : le produit est présent dans le plus grand nombre possible de points de vente
  (boissons, produits d''épicerie courante). Elle maximise la disponibilité mais dilue le contrôle de l''image et des
  conditions de vente, et complique la gestion logistique du grand nombre de points de vente.
- La distribution sélective : l''entreprise choisit un nombre limité de distributeurs répondant à des critères
  (image, zone de chalandise, compétence technique), courante pour les produits semi-techniques ou de milieu de
  gamme.
- La distribution exclusive : un nombre très restreint de distributeurs, parfois un seul par zone, reçoit le droit
  de vendre le produit, en échange d''engagements (stock minimum, formation, respect de l''image de marque). Elle
  maximise le contrôle mais limite fortement la couverture du marché et la disponibilité pour le consommateur final.

## Les conflits de canal et les systèmes marketing verticaux

Un conflit de canal apparaît lorsque les intérêts du fabricant et de ses distributeurs (ou de plusieurs
distributeurs entre eux) divergent : un distributeur peut casser les prix au détriment des autres, un fabricant peut
vendre en direct en ligne en concurrence avec ses propres distributeurs physiques (conflit de canal dit
« cannibalisation numérique »). Les systèmes marketing verticaux (SMV) sont des dispositifs qui réduisent ces
conflits en intégrant davantage la relation fabricant-distributeur : SMV administré (le fabricant, par sa puissance
de marque, oriente sans contrat formel les pratiques du distributeur), SMV contractuel (franchise, chaîne
volontaire, coopérative de détaillants, où les droits et devoirs sont formalisés par contrat) et SMV intégré
(le fabricant possède lui-même son réseau de distribution, comme un magasin de marque).

## Le trade marketing : un partenariat fabricant-distributeur

Le trade marketing regroupe les actions menées conjointement par le fabricant et le distributeur pour optimiser les
ventes au point de vente : merchandising (présentation en rayon, emplacement, facing), opérations promotionnelles
partagées, catalogues, publicité sur le lieu de vente, et budgets de coopération commerciale. Il se distingue du
marketing classique en ce qu''il s''adresse autant au distributeur, considéré comme un client à part entière du
fabricant, qu''au consommateur final.

## Cas d''entreprise : Baobab Distribution et la marge en cascade

Baobab Distribution, distributeur fictif de produits d''hygiène dans la région de Dakar, achète un produit à un
fabricant et le revend à des détaillants, qui le revendent ensuite au consommateur final. Le prix public conseillé
est de 1 200 FCFA.

Le détaillant applique une marge de 18 % sur le prix public :
Marge détaillant = 1 200 × 0,18 = 216 FCFA.
Prix de cession au détaillant (ce que le détaillant paie à Baobab Distribution) = 1 200 − 216 = 984 FCFA.

Baobab Distribution applique à son tour une marge de 12 % sur son propre prix de revente (984 FCFA) :
Prix de cession du fabricant à Baobab Distribution = 984 × (1 − 0,12) = 984 × 0,88 = 865,92 FCFA, soit
environ 866 FCFA.

Cette décomposition en cascade est un classique des sujets de M1 : elle permet de vérifier que chaque acteur du
canal dégage une marge suffisante pour couvrir ses propres coûts (stockage, transport, risque d''invendus) à partir
d''un prix public donné, en partant de l''aval (le consommateur) vers l''amont (le fabricant).

## Le budget de coopération commerciale

Pour renforcer la mise en avant de ses produits chez un distributeur important, un fabricant négocie souvent un
budget de coopération commerciale (ou publicité coopérative), exprimé en pourcentage du chiffre d''affaires net
réalisé avec ce distributeur.

Exemple : Baobab Distribution réalise un chiffre d''affaires net annuel de 250 000 000 FCFA avec une grande chaîne de
détaillants partenaire. Le fabricant accepte de financer un budget de coopération commerciale de 3 % de ce chiffre
d''affaires net.
Budget de coopération = 250 000 000 × 0,03 = 7 500 000 FCFA par an.

Ce budget peut financer des têtes de gondole, des animations en magasin, ou des catalogues communs. Pour l''examen,
il faut savoir discuter la contrepartie attendue de ce budget : le fabricant doit vérifier que l''investissement se
traduit par une hausse de volume ou de part de linéaire mesurable, sans quoi le budget devient une simple ristourne
déguisée qui érode sa marge sans contrepartie commerciale réelle.

## Exercices pratiques

1. Associez chaque stratégie de distribution (intensive, sélective, exclusive) à un exemple de produit fictif
   plausible, en justifiant brièvement votre choix.
2. Donnez un exemple de conflit de canal lié à la vente en ligne directe d''un fabricant.
3. Pour un produit vendu 2 000 FCFA au public, avec une marge détaillant de 20 % et une marge distributeur de 15 %
   (appliquée sur le prix de cession au détaillant), calculez le prix de cession du fabricant au distributeur.
4. Expliquez la différence entre un SMV administré et un SMV contractuel.
5. Un fabricant finance un budget de coopération commerciale de 4 % sur un chiffre d''affaires net de 180 000 000
   FCFA réalisé avec un distributeur. Calculez ce budget et expliquez le risque d''un tel budget mal contrôlé.
6. Cas pratique complet : « Teranga Hygiène », fabricant fictif, vend un savon au prix public de 800 FCFA. Le
   détaillant applique une marge de 22 % sur ce prix public, et le distributeur applique une marge de 10 % sur son
   prix de cession au détaillant. a) Calculez le prix de cession au détaillant. b) Calculez le prix de cession du
   fabricant. c) Si Teranga Hygiène vend 400 000 unités par an au distributeur à ce prix de cession, calculez son
   chiffre d''affaires annuel issu de ce circuit.

## Corrigé

1. Réponse libre attendue : distribution intensive pour un produit d''épicerie courante (boisson, par exemple) car
   l''achat est fréquent et peu réfléchi ; distribution sélective pour un produit électroménager de milieu de gamme,
   qui nécessite conseil et service après-vente ; distribution exclusive pour un produit de luxe ou très technique,
   où l''image et la compétence du point de vente sont déterminantes.
2. Exemple : un fabricant de vêtements vend directement sur son site internet au même prix que ses boutiques
   partenaires physiques, ce qui capte une partie des ventes que les boutiques auraient réalisées, sans que ces
   dernières touchent de marge, créant une tension sur la relation commerciale.
3. Marge détaillant = 2 000 × 0,20 = 400 FCFA ; prix de cession au détaillant = 2 000 − 400 = 1 600 FCFA. Marge
   distributeur = 1 600 × 0,15 = 240 FCFA ; prix de cession du fabricant = 1 600 − 240 = 1 360 FCFA.
4. Dans un SMV administré, le fabricant influence les pratiques du distributeur par sa puissance de marque ou de
   négociation, sans contrat formalisant cette influence. Dans un SMV contractuel, les droits et obligations de
   chaque partie (franchise, chaîne volontaire, coopérative) sont fixés par un contrat écrit.
5. Budget = 180 000 000 × 0,04 = 7 200 000 FCFA. Risque : si ce budget n''est pas associé à des contreparties
   commerciales mesurables (mise en avant réelle, hausse de volume constatée), il devient une ristourne déguisée qui
   réduit la marge du fabricant sans bénéfice commercial vérifiable.
6. a) Marge détaillant = 800 × 0,22 = 176 FCFA ; prix de cession au détaillant = 800 − 176 = 624 FCFA. b) Marge
   distributeur = 624 × 0,10 = 62,4 FCFA ; prix de cession du fabricant = 624 − 62,4 = 561,6 FCFA. c) Chiffre
   d''affaires annuel = 561,6 × 400 000 = 224 640 000 FCFA (environ 224,64 millions de FCFA).', 'texte', 45, false, 40
from public.courses c where c.slug = 'mas-mkt-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Stratégie de distribution et trade marketing : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Master 1 en Marketing et commerce (corrigé)', 'Ce sujet type (non officiel, barème indicatif) rassemble les trois matières du Master 1 Marketing et
commerce : marketing stratégique et branding, marketing international et export, stratégie de distribution et
trade marketing. Durée indicative : 3 heures. Il s''appuie sur un cas d''entreprise fictif unique, « Fouta Textile
SA », suivi sur les trois dimensions.

## Sujet

Fouta Textile SA est une entreprise sénégalaise fictive qui fabrique et vend du tissu wax et des vêtements de
confection. Elle est présente au Sénégal depuis quinze ans et envisage de se développer sur un marché voisin de
l''UEMOA.

Une étude consommateurs locale lui donne les scores suivants sur 10 : notoriété 6,5 ; qualité perçue 8,0 ; fidélité
7,5 ; associations de marque 6,0. L''entreprise pondère ces dimensions à 20 % (notoriété), 30 % (qualité perçue),
30 % (fidélité) et 20 % (associations).

Partie 1 (8 points) — Branding. a) Calculez l''indice de capital-marque de Fouta Textile SA (4 points). b) Identifiez
la dimension la plus fragile de la marque et proposez une recommandation stratégique argumentée (4 points).

Partie 2 (8 points) — International. Fouta Textile SA compare deux modes d''entrée sur le marché voisin : export
direct (coûts fixes annuels 12 000 000 FCFA, coût variable 8 000 FCFA par pièce, prix de vente 14 000 FCFA par
pièce) et franchise locale (coûts fixes annuels 3 000 000 FCFA, redevance reçue de 1 500 FCFA par pièce vendue par
le franchisé, aucun coût variable supporté par Fouta Textile SA). a) Calculez le seuil de rentabilité de chaque
option, en nombre de pièces (4 points). b) Fouta Textile SA prévoit un volume de 1 800 pièces la première année :
quelle option lui est financièrement la plus favorable à ce volume, et pourquoi (4 points) ?

Partie 3 (8 points) — Distribution et trade marketing. Le vêtement se vend au prix public de 15 000 FCFA. Le
détaillant applique une marge de 25 % sur ce prix public, et le distributeur applique une marge de 10 % sur son
propre prix de cession au détaillant. a) Calculez le prix de cession au détaillant, puis le prix de cession du
fabricant (4 points). b) Fouta Textile SA envisage un budget de coopération commerciale de 2,5 % sur un chiffre
d''affaires net de 90 000 000 FCFA réalisé avec son principal distributeur partenaire. Calculez ce budget et
discutez en trois phrases la contrepartie commerciale à exiger pour qu''il ne devienne pas une simple ristourne
déguisée (4 points).

## Corrigé détaillé

Partie 1. a) Indice = (0,20 × 6,5) + (0,30 × 8,0) + (0,30 × 7,5) + (0,20 × 6,0) = 1,30 + 2,40 + 2,25 + 1,20 = 7,15
sur 10. b) La dimension la plus fragile est l''association de marque (6,0), malgré un poids identique à la
notoriété (20 %) ; la qualité perçue et la fidélité sont déjà des points forts. Recommandation : renforcer le
travail sur l''identité et les valeurs associées à la marque (histoire du tissu wax, savoir-faire artisanal,
ancrage local) dans la communication, plutôt que sur la qualité produit déjà bien perçue.

Partie 2. a) Export direct : marge sur coût variable = 14 000 − 8 000 = 6 000 FCFA par pièce ; seuil = 12 000 000 ÷
6 000 = 2 000 pièces. Franchise : seuil (en pièces vendues par le franchisé pour couvrir les coûts fixes de gestion
de la franchise) = 3 000 000 ÷ 1 500 = 2 000 pièces également. b) À 1 800 pièces, aucune des deux options n''atteint
son seuil de rentabilité (2 000 pièces chacune) : les deux seraient en perte à ce volume précis. Cela doit être
signalé explicitement dans la copie : la bonne réponse n''est pas de choisir arbitrairement l''une des deux, mais de
constater qu''aucune n''est encore rentable à 1 800 pièces, et de recommander soit d''augmenter le volume prévisionnel
avant de lancer l''une ou l''autre option, soit de réduire les coûts fixes de l''option retenue.

Partie 3. a) Marge détaillant = 15 000 × 0,25 = 3 750 FCFA ; prix de cession au détaillant = 15 000 − 3 750 =
11 250 FCFA. Marge distributeur = 11 250 × 0,10 = 1 125 FCFA ; prix de cession du fabricant = 11 250 − 1 125 =
10 125 FCFA. b) Budget = 90 000 000 × 0,025 = 2 250 000 FCFA. Discussion : ce budget ne doit pas être versé sans
contrepartie mesurable ; Fouta Textile SA devrait exiger un engagement contractuel du distributeur sur un nombre
minimal de têtes de gondole ou d''animations en magasin sur la période, avec un suivi du volume de vente généré
pendant ces opérations, afin de vérifier que l''investissement se traduit réellement par un gain de part de
linéaire ou de volume, et non par une simple réduction de prix déguisée qui érode la marge de Fouta Textile SA
sans bénéfice commercial constaté.

## Exercices pratiques (questions complémentaires)

1. Pourquoi est-il important, dans une copie de Master, de signaler explicitement qu''aucune des deux options de la
   Partie 2 n''atteint son seuil de rentabilité à 1 800 pièces, plutôt que de choisir une option par défaut ?
2. Si Fouta Textile SA révise son volume prévisionnel à 2 500 pièces, laquelle des deux options (export direct ou
   franchise) devient la plus profitable, et de combien, en FCFA de marge totale ?
3. Proposez une troisième dimension du capital-marque (parmi notoriété, qualité perçue, fidélité, associations) sur
   laquelle Fouta Textile SA pourrait aussi agir en complément de votre recommandation de la Partie 1, en justifiant
   votre choix.
4. Expliquez pourquoi un budget de coopération commerciale non contrôlé peut, à terme, dégrader la rentabilité du
   fabricant sans qu''aucune règle légale ne soit nécessairement violée.
5. Cas pratique complémentaire : un concurrent de Fouta Textile SA, « Wax Création », a un indice de capital-marque
   de 6,80 sur 10 avec les scores suivants : notoriété 8,0 ; qualité perçue 6,5 ; fidélité 6,0 ; associations 7,5,
   pondérés à 20 %, 30 %, 30 %, 20 %. Vérifiez par le calcul si l''indice annoncé (6,80) est exact, et commentez.

## Corrigé (questions complémentaires)

1. Parce qu''un correcteur de Master valorise la rigueur du diagnostic chiffré plutôt que la production d''une
   recommandation par défaut : choisir arbitrairement une option sans vérifier sa rentabilité réelle au volume
   prévisionnel donné serait une erreur méthodologique grave, même si la formule de seuil de rentabilité est par
   ailleurs correctement appliquée.
2. À 2 500 pièces : marge totale export direct = (2 500 × 6 000) − 12 000 000 = 15 000 000 − 12 000 000 =
   3 000 000 FCFA. Marge totale franchise = (2 500 × 1 500) − 3 000 000 = 3 750 000 − 3 000 000 = 750 000 FCFA.
   L''export direct devient le plus profitable, avec un écart de 3 000 000 − 750 000 = 2 250 000 FCFA en sa faveur.
3. Réponse libre : par exemple, la fidélité pourrait encore être renforcée par un programme de fidélité ou des
   éditions limitées de tissus, en complément du travail sur les associations de marque, car une fidélité élevée
   (7,5) reste un atout à consolider plutôt qu''un problème à corriger en priorité.
4. Parce qu''un budget de coopération commerciale est une pratique commerciale négociée entre deux entreprises
   privées, et non un prélèvement obligatoire encadré par la loi : son usage dépend uniquement du contrôle de
   gestion interne de chaque entreprise, ce qui signifie qu''une dérive (versement sans contrepartie réelle) peut se
   poursuivre longtemps sans être détectée si personne ne la mesure.
5. Indice recalculé = (0,20 × 8,0) + (0,30 × 6,5) + (0,30 × 6,0) + (0,20 × 7,5) = 1,60 + 1,95 + 1,80 + 1,50 = 6,85
   sur 10, et non 6,80 comme annoncé : l''indice communiqué par l''énoncé est légèrement erroné (écart de 0,05 point).
   Ce type de vérification arithmétique systématique est une compétence attendue en Master : ne jamais accepter un
   chiffre donné sans le recalculer soi-même avant de construire une recommandation sur cette base.', 'texte', 50, false, 50
from public.courses c where c.slug = 'mas-mkt-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Master 1 en Marketing et commerce (corrigé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Marketing stratégique approfondi et branding', '## Fiche du cours vidéo

Durée : 1h30. Public : étudiants de Master 1 Marketing et commerce préparant leurs examens. Objectifs : savoir
construire et interpréter un indice de capital-marque pondéré, savoir valoriser une marque par la méthode du
premium de prix, et savoir argumenter un repositionnement ou une architecture de marque. Matériel : tableau ou
diaporama avec deux tableaux de chiffres (indice de capital-marque, valorisation de marque), calculatrice.
Prérequis : avoir lu la leçon 2 de ce cours (Marketing stratégique approfondi et branding).

## Déroulé minuté

## 00:00 – 05:00 · Introduction et objectifs de la séance

Bonjour à toutes et à tous. Dans cette séance, nous allons consacrer une heure et demie à l''un des sujets les plus
redoutés, mais aussi les plus valorisés, des examens de Master 1 en marketing : le branding et le capital-marque.
Pourquoi redouté ? Parce que les étudiants confondent souvent le discours sur l''image de marque, assez intuitif, et
la capacité à le chiffrer, beaucoup plus exigeante. Pourquoi valorisé ? Parce qu''un correcteur de Master qui voit
une copie capable de construire un indice chiffré et d''en tirer une recommandation argumentée sait immédiatement
qu''il a affaire à un raisonnement de niveau professionnel. Aujourd''hui, nous allons reprendre ensemble les deux
méthodes de mesure du capital-marque vues dans la leçon 2, les appliquer pas à pas sur notre entreprise fictive
Téranga Cosmétiques, puis travailler le repositionnement et l''architecture de marque.

## 05:00 – 20:00 · Les deux modèles de capital-marque

Commençons par rappeler les deux grandes grilles de lecture. Le modèle d''Aaker distingue quatre dimensions :
notoriété, qualité perçue, associations de marque, fidélité. Retenez bien que ces quatre dimensions ne se valent
pas pour toutes les catégories de produits : pour un produit cosmétique comme celui de Téranga Cosmétiques, la
qualité perçue et la fidélité pèsent généralement plus lourd que la simple notoriété, parce que l''achat répété et
la confiance dans l''efficacité du produit sont déterminants. Le modèle CBBE de Keller, lui, organise la réflexion
en pyramide : on part de l''identité (qui êtes-vous ?), on construit le sens de la marque (performance et imagerie),
on observe les réponses du client (jugements et sentiments), et l''on vise, au sommet, la résonance, c''est-à-dire
une relation active et durable avec le client. Pour l''examen, l''erreur la plus fréquente est de réciter ces modèles
sans jamais les relier à un cas concret. Nous allons corriger cela tout de suite.

Prenez votre feuille. Je vous donne les scores d''une étude consommateurs sur Téranga Cosmétiques : notoriété 7,5 sur
10, qualité perçue 8,0, fidélité 6,5, associations de marque 7,0. Les pondérations retenues par l''entreprise sont :
notoriété 20 %, qualité perçue 30 %, fidélité 30 %, associations 20 %. Avant que je ne vous donne le calcul,
essayez de deviner : à votre avis, quel est le point faible de cette marque ? Beaucoup d''entre vous diront
spontanément « la notoriété », parce que c''est le chiffre qu''on associe intuitivement à une marque fragile. Or
regardez bien les chiffres : c''est la fidélité, à 6,5, qui est le score le plus bas, et c''est aussi la dimension la
plus pondérée. C''est exactement le genre de piège qu''un sujet d''examen de Master aime tendre.

## 20:00 – 35:00 · Calcul guidé de l''indice de capital-marque

Calculons ensemble, étape par étape. Indice = (0,20 × 7,5) + (0,30 × 8,0) + (0,30 × 6,5) + (0,20 × 7,0). Premier
terme : 0,20 × 7,5 = 1,50. Deuxième terme : 0,30 × 8,0 = 2,40. Troisième terme : 0,30 × 6,5 = 1,95. Quatrième terme :
0,20 × 7,0 = 1,40. Faisons la somme : 1,50 + 2,40 = 3,90 ; 3,90 + 1,95 = 5,85 ; 5,85 + 1,40 = 7,25. L''indice de
capital-marque de Téranga Cosmétiques est donc de 7,25 sur 10.

Maintenant, l''étape que beaucoup d''étudiants oublient : l''interprétation. Un indice de 7,25 sur 10 est globalement
bon, mais il cache une fragilité précise. La fidélité, pondérée à 30 %, n''obtient que 6,5, le score le plus bas des
quatre. Si cette dimension passait à 8,0 comme la qualité perçue, l''indice global gagnerait immédiatement 0,30 ×
(8,0 − 6,5) = 0,30 × 1,5 = 0,45 point, pour atteindre 7,70. C''est ce type de simulation « et si » qui impressionne
un correcteur : vous ne vous contentez pas de calculer, vous montrez l''effet d''une amélioration ciblée sur
l''indice global.

## 35:00 – 45:00 · La méthode du premium de prix

Passons à la seconde méthode : la valorisation financière de la marque par le premium de prix. Téranga Cosmétiques
vend sa crème phare à 3 500 FCFA, contre 2 800 FCFA pour un produit générique comparable. Le volume annuel vendu
est de 120 000 unités. Le premium unitaire est simplement la différence : 3 500 moins 2 800, soit 700 FCFA par
unité vendue. Pour obtenir la valeur annuelle apportée par la marque, on multiplie ce premium par le volume : 700 ×
120 000. Faites le calcul avec moi : 700 × 120 000 = 84 000 000 FCFA, soit 84 millions de FCFA par an. C''est la
valeur que la marque, et uniquement la marque, apporte chaque année par rapport à un produit sans image de marque
différenciante.

## 45:00 – 50:00 · Pause quiz interactif

Avant d''aller plus loin, faisons une pause quiz. Je vous pose trois questions, prenez quelques instants pour y
répondre avant que je ne donne la correction. Première question : dans le modèle d''Aaker, quelles sont les quatre
dimensions du capital-marque ? Deuxième question : si le volume annuel de Téranga Cosmétiques passait de 120 000 à
150 000 unités, toutes choses égales par ailleurs, quelle serait la nouvelle valeur de marque annuelle ? Troisième
question : quelle est la principale limite méthodologique de la méthode du premium de prix ? Je vous laisse
quelques secondes... Réponses : premièrement, notoriété, qualité perçue, associations, fidélité. Deuxièmement, 700
× 150 000 = 105 000 000 FCFA, soit 105 millions de FCFA. Troisièmement, cette méthode suppose que le produit
générique de comparaison est strictement équivalent en qualité fonctionnelle, ce qui n''est pas toujours vérifiable,
et elle ignore les coûts marketing nécessaires pour entretenir ce premium.

## 50:00 – 1:05:00 · Repositionnement et architecture de marque

Reprenons maintenant la question du repositionnement. Imaginons que Téranga Cosmétiques constate, dans une étude
qualitative, que les 18-25 ans perçoivent la marque comme vieillissante. Deux options s''offrent à la direction :
repositionner totalement la marque-mère vers une image plus jeune, ou créer une extension de gamme ciblée, par
exemple « Téranga Jeune », tout en conservant l''identité de la marque-mère pour sa clientèle historique. Pourquoi
la seconde option est-elle souvent recommandée dans ce type de cas ? Parce que la fidélité de Téranga Cosmétiques,
nous l''avons vu, est déjà le point faible de la marque à 6,5 sur 10. Un repositionnement trop brutal de la
marque-mère risquerait de dérouter précisément les clientes fidèles existantes, aggravant ce point faible déjà
identifié par notre indice. L''extension de gamme permet de toucher une nouvelle cible sans fragiliser davantage la
relation avec la clientèle historique.

Cela nous amène à l''architecture de marque. Si Téranga Cosmétiques multiplie les extensions dans les années qui
suivent, elle devra choisir entre rester une marque-mère unique portant toutes ses gammes, ou développer des
marques filles distinctes. Rappelez-vous l''arbitrage : une marque-mère unique maximise les synergies de notoriété,
mais expose l''ensemble du portefeuille à une crise sur un seul produit ; des marques multiples protègent l''image
globale du groupe, mais coûtent nettement plus cher à construire et à faire connaître séparément.

## 1:05:00 – 1:20:00 · Application sur un second cas et correction commentée

Appliquons maintenant ces mêmes méthodes à un second cas, pour vérifier votre maîtrise. « Sahel Beauté » obtient les
scores suivants sur 10 : notoriété 6,0, qualité perçue 7,5, fidélité 8,0, associations 6,5, pondérés respectivement
à 25 %, 25 %, 35 %, 15 %. Prenez deux minutes pour calculer l''indice avant que je ne corrige. Voici la correction :
indice = (0,25 × 6,0) + (0,25 × 7,5) + (0,35 × 8,0) + (0,15 × 6,5) = 1,50 + 1,875 + 2,80 + 0,975 = 7,15 sur 10. Ici,
contrairement à Téranga Cosmétiques, c''est la notoriété qui est la dimension la plus faible, à 6,0, bien qu''elle ne
soit pas la plus pondérée. La recommandation serait donc inversée par rapport à Téranga Cosmétiques : il faudrait
ici investir en visibilité, et non en fidélisation, puisque la fidélité est déjà le point fort de Sahel Beauté.
Vous voyez bien que la méthode est identique, mais la recommandation dépend entièrement des chiffres propres à
chaque entreprise : ne récitez jamais une recommandation standard sans recalculer l''indice du cas qui vous est
donné à l''examen.

## 1:20:00 – 1:27:00 · Synthèse

Pour résumer cette séance : le capital-marque se mesure par un indice pondéré, qui révèle souvent un point faible
différent de l''intuition de départ ; la valeur financière d''une marque peut s''estimer par la méthode du premium de
prix, en gardant à l''esprit ses limites méthodologiques ; et toute décision de repositionnement ou d''architecture
de marque doit être reliée explicitement au diagnostic chiffré préalable, jamais décidée dans l''abstrait.

## 1:27:00 – 1:30:00 · Évaluation finale

Cinq questions pour clore la séance. Un : citez les quatre dimensions du modèle d''Aaker. Réponse : notoriété,
qualité perçue, associations, fidélité. Deux : une marque vend son produit 2 000 FCFA contre 1 700 FCFA pour le
générique, sur un volume de 80 000 unités ; quelle est la valeur de marque annuelle ? Réponse : premium unitaire =
300 FCFA ; valeur = 300 × 80 000 = 24 000 000 FCFA. Trois : pourquoi une marque-mère unique est-elle plus risquée en
cas de crise qu''une stratégie de marques multiples ? Réponse : parce qu''une crise sur un seul produit peut
contaminer l''image de toutes les autres gammes portant le même nom. Quatre : quelle est la limite principale de la
méthode du premium de prix ? Réponse : l''hypothèse d''équivalence fonctionnelle stricte avec le produit générique,
rarement vérifiable, et l''oubli des coûts marketing nécessaires pour entretenir ce premium. Cinq : dans quel cas
une extension de gamme est-elle préférable à un repositionnement total de la marque-mère ? Réponse : lorsque la
marque-mère a déjà un point faible identifié (ici la fidélité) que le repositionnement total risquerait
d''aggraver auprès de la clientèle existante. Merci à toutes et à tous, et bon travail pour la suite de votre
préparation.', 'video', 90, false, 60
from public.courses c where c.slug = 'mas-mkt-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Marketing stratégique approfondi et branding');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Marketing international et export', '## Fiche du cours vidéo

Durée : 1h30. Public : étudiants de Master 1 Marketing et commerce. Objectifs : savoir choisir et justifier un
mode d''entrée à l''international à partir d''un calcul de seuil de rentabilité comparé, savoir calculer et interpréter
un point d''indifférence entre deux modes d''entrée, et savoir argumenter l''arbitrage standardisation/adaptation.
Matériel : tableau ou diaporama, calculatrice. Prérequis : avoir lu la leçon 3 (Marketing international et export).

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Bienvenue dans cette séance consacrée au marketing international et export. C''est, avec le branding, l''une des
matières les plus techniques du Master 1, parce qu''elle mêle stratégie et calcul financier. Beaucoup d''étudiants
savent réciter la liste des modes d''entrée, mais échouent à l''examen parce qu''ils ne savent pas construire ni
interpréter correctement le calcul de seuil de rentabilité comparé qui accompagne presque toujours un cas de choix
de mode d''entrée. C''est précisément ce que nous allons travailler aujourd''hui, avec notre entreprise fictive Sahel
Agro Export.

## 05:00 – 18:00 · Rappel des modes d''entrée et de leurs arbitrages

Récapitulons rapidement l''échelle des modes d''entrée, du moins au plus engagé : l''exportation indirecte, via un
intermédiaire qui connaît déjà le marché ; l''exportation directe, où l''entreprise gère elle-même sa prospection ;
la licence ou la franchise, où l''on cède un droit d''exploitation contre redevance ; la coentreprise, où l''on
partage investissement et risque avec un partenaire local ; et la filiale à 100 %, l''implantation complète en
nom propre. Retenez la logique générale : plus on monte dans cette échelle, plus le contrôle et la marge
potentielle augmentent, mais plus l''investissement initial et le risque augmentent également. Le choix dépend de
quatre critères : la taille du marché cible, le risque politique et économique du pays, les ressources disponibles,
et le besoin d''adaptation de l''offre.

## 18:00 – 35:00 · Construction du calcul de seuil de rentabilité comparé

Passons au cas Sahel Agro Export. L''entreprise envisage d''entrer sur un marché voisin de l''UEMOA par export direct
ou par coentreprise locale. Pour l''export direct, les coûts fixes annuels s''élèvent à 15 000 000 FCFA (prospection,
agent, logistique), le coût variable est de 180 000 FCFA par tonne livrée, et le prix de vente est de 260 000 FCFA
la tonne. Calculons la marge sur coût variable : 260 000 moins 180 000, soit 80 000 FCFA par tonne. Le seuil de
rentabilité s''obtient en divisant les coûts fixes par cette marge unitaire : 15 000 000 divisé par 80 000, soit
187,5 tonnes par an.

Pour la coentreprise locale, les coûts fixes annuels sont nettement plus élevés, 45 000 000 FCFA, car ils intègrent
l''investissement amorti dans la structure locale. Mais le coût variable baisse à 140 000 FCFA par tonne, la
production locale évitant le transport longue distance. Marge sur coût variable : 260 000 moins 140 000, soit
120 000 FCFA par tonne. Seuil de rentabilité : 45 000 000 divisé par 120 000, soit 375 tonnes par an.

Arrêtons-nous un instant. Beaucoup d''étudiants, à ce stade, concluent trop vite que l''export direct est « meilleur »
parce que son seuil de rentabilité est plus bas. C''est une erreur de raisonnement : un seuil plus bas ne signifie
pas une option plus profitable à tous les niveaux de volume, cela signifie seulement qu''elle devient profitable
plus vite. Il faut comparer les deux options sur toute la gamme de volumes possibles, pas seulement sur leur seuil
individuel.

## 35:00 – 50:00 · Le point d''indifférence : la clé du raisonnement

C''est ici qu''intervient le point d''indifférence, la compétence la plus discriminante de cette matière à l''examen.
On pose l''égalité des coûts totaux des deux options : 15 000 000 + 180 000 × Q égale 45 000 000 + 140 000 × Q. On
regroupe les termes en Q d''un côté : 180 000 × Q moins 140 000 × Q égale 45 000 000 moins 15 000 000, soit 40 000 ×
Q égale 30 000 000. On isole Q : Q égale 30 000 000 divisé par 40 000, soit 750 tonnes par an.

Que signifie ce chiffre ? En dessous de 750 tonnes par an, l''export direct coûte moins cher au total, parce que ses
coûts fixes, plus faibles, ne sont pas encore pénalisés par son coût variable plus élevé sur un petit volume. Au-delà
de 750 tonnes, c''est la coentreprise qui devient la moins coûteuse, parce que ses coûts fixes élevés sont amortis
sur un volume suffisant, et son coût variable plus faible joue alors pleinement en sa faveur. Vérifions avec un
exemple à 500 tonnes : coût total export direct = 15 000 000 + 180 000 × 500 = 15 000 000 + 90 000 000 =
105 000 000 FCFA ; coût total coentreprise = 45 000 000 + 140 000 × 500 = 45 000 000 + 70 000 000 = 115 000 000
FCFA. L''export direct est bien moins coûteux à ce volume, comme attendu puisque 500 est inférieur à 750.
Vérifions maintenant à 1 000 tonnes : coût total export direct = 15 000 000 + 180 000 000 = 195 000 000 FCFA ; coût
total coentreprise = 45 000 000 + 140 000 000 = 185 000 000 FCFA. Cette fois, c''est la coentreprise qui coûte moins
cher, confirmant notre point d''indifférence à 750 tonnes.

## 50:00 – 55:00 · Pause quiz interactif

Petite pause avec trois questions. Un : si Sahel Agro Export prévoit 600 tonnes la première année, quelle option
est la moins coûteuse ? Deux : que se passe-t-il exactement à 750 tonnes ? Trois : le calcul du point d''indifférence
suffit-il seul à prendre la décision finale, ou faut-il d''autres critères ? Réponses : un, à 600 tonnes, on est
toujours en dessous de 750, donc l''export direct reste la solution la moins coûteuse. Deux, à 750 tonnes exactement,
les deux options coûtent rigoureusement la même chose au total. Trois, non : il faut aussi intégrer les critères
qualitatifs non chiffrés, comme le risque politique du pays cible ou la fiabilité du partenaire local pressenti
pour la coentreprise.

## 55:00 – 1:10:00 · Standardisation ou adaptation : l''arbitrage glocal

Changeons de thème pour la seconde partie de cette séance : l''arbitrage entre standardisation et adaptation de
l''offre. Souvenez-vous de l''opposition historique entre Theodore Levitt, partisan d''une offre mondiale standardisée
pour profiter des économies d''échelle, et les tenants d''une adaptation systématique aux spécificités locales :
langue, religion, pouvoir d''achat, habitudes de consommation, réglementation. La position dominante aujourd''hui,
dite glocalisation, consiste à standardiser ce qui ne perd pas de valeur perçue en restant identique, typiquement
la formule du produit et l''identité de marque, et à adapter ce qui doit l''être pour rester pertinent localement :
packaging, canaux de distribution, communication, parfois le prix lui-même.

Pour Sahel Agro Export, imaginons que le produit céréalier conserve sa formule et son identité visuelle, mais que
le conditionnement soit adapté en formats familiaux plus grands avec des inscriptions dans la langue locale
dominante du pays cible, et que le réseau de distribution privilégie les marchés traditionnels plutôt que les
grandes surfaces encore peu développées dans ce pays. C''est un bon exemple de glocalisation appliquée : rien n''est
laissé au hasard, mais rien n''est non plus adapté « par principe » sans justification.

## 1:10:00 – 1:25:00 · Cas d''application et correction commentée

Appliquons tout cela à un nouveau cas pour vérifier votre maîtrise. « Thiès Mécanique » compare l''export direct
(coûts fixes 20 000 000 FCFA par an, coût variable 95 000 FCFA par unité, prix de vente 155 000 FCFA par unité) à
une filiale locale à 100 % (coûts fixes 60 000 000 FCFA par an, coût variable 55 000 FCFA par unité, même prix de
vente). Prenez deux minutes pour calculer les deux seuils de rentabilité et le point d''indifférence avant que je
ne corrige.

Voici la correction. Export direct : marge = 155 000 moins 95 000, soit 60 000 FCFA par unité ; seuil = 20 000 000
divisé par 60 000, soit environ 333,3 unités. Filiale locale : marge = 155 000 moins 55 000, soit 100 000 FCFA par
unité ; seuil = 60 000 000 divisé par 100 000, soit 600 unités. Point d''indifférence : 20 000 000 + 95 000 × Q
égale 60 000 000 + 55 000 × Q, donc 40 000 × Q égale 40 000 000, donc Q égale 1 000 unités. Si Thiès Mécanique
prévoit de vendre 550 unités par an, on est au-dessus du seuil de l''export direct mais en dessous du seuil de la
filiale locale : la filiale ne serait même pas encore rentable à ce volume, alors que l''export direct l''est déjà.
L''export direct est donc clairement recommandé à ce niveau de volume.

## 1:25:00 – 1:30:00 · Synthèse et évaluation finale

Synthèse : le choix d''un mode d''entrée à l''international ne se limite jamais à comparer deux seuils de
rentabilité isolés ; il faut calculer le point d''indifférence pour savoir, selon le volume réellement prévu,
quelle option est la moins coûteuse, puis confronter ce résultat chiffré aux critères qualitatifs du marché cible.

Cinq questions pour conclure. Un : citez les cinq modes d''entrée à l''international dans l''ordre croissant
d''engagement. Réponse : exportation indirecte, exportation directe, licence ou franchise, coentreprise, filiale à
100 %. Deux : à quoi sert le point d''indifférence ? Réponse : à déterminer le volume à partir duquel une option
devient moins coûteuse que l''autre. Trois : qu''est-ce que la glocalisation ? Réponse : standardiser ce qui peut
l''être sans perte de valeur perçue, et adapter ce qui doit l''être localement. Quatre : pour une entreprise avec des
coûts fixes de 10 000 000 FCFA et une marge de 50 000 FCFA par unité, quel est le seuil de rentabilité ? Réponse :
10 000 000 divisé par 50 000, soit 200 unités. Cinq : citez un critère qualitatif à prendre en compte en complément
du calcul chiffré. Réponse : par exemple le risque politique et économique du pays cible, ou la fiabilité d''un
partenaire local pressenti. Merci à toutes et à tous pour votre attention, bon travail pour la suite.', 'video', 90, false, 70
from public.courses c where c.slug = 'mas-mkt-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Marketing international et export');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Stratégie de distribution et trade marketing', '## Fiche du cours vidéo

Durée : 1h30. Public : étudiants de Master 1 Marketing et commerce. Objectifs : savoir décomposer une marge en
cascade sur un circuit de distribution, savoir calculer un budget de coopération commerciale et en discuter la
contrepartie, savoir argumenter le choix d''une stratégie de distribution. Matériel : tableau ou diaporama,
calculatrice. Prérequis : avoir lu la leçon 4 (Stratégie de distribution et trade marketing).

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Bienvenue dans cette séance consacrée à la stratégie de distribution et au trade marketing. C''est la matière la
plus « concrète » des trois de ce Master 1, parce qu''elle se joue littéralement dans les rayons des points de
vente. Mais c''est aussi une matière où les calculs de marge en cascade, du prix public jusqu''au prix payé par le
fabricant, piègent beaucoup d''étudiants qui confondent le sens dans lequel appliquer un pourcentage. Nous allons
lever ce piège avec méthode, sur notre cas fictif Baobab Distribution.

## 05:00 – 18:00 · Les stratégies de distribution et les conflits de canal

Rappelons les trois stratégies de couverture du marché. La distribution intensive vise le plus grand nombre
possible de points de vente, typique des produits d''achat fréquent et peu réfléchi. La distribution sélective
limite le nombre de distributeurs à ceux qui répondent à certains critères de qualité ou de compétence technique.
La distribution exclusive réserve la vente à un nombre très restreint de distributeurs, parfois un seul par zone,
en échange d''engagements forts sur l''image et le service. Un conflit de canal classique à citer à l''examen : un
fabricant vend en ligne directement au même prix que ses distributeurs physiques, capturant une partie des ventes
sans que ces derniers touchent de marge, ce qui tend fortement la relation commerciale. Les systèmes marketing
verticaux, administré, contractuel ou intégré, existent précisément pour limiter ce type de tension en structurant
davantage la relation fabricant-distributeur.

## 18:00 – 35:00 · La marge en cascade, pas à pas

Voici l''exercice central de cette matière : la décomposition de la marge en cascade. Baobab Distribution vend un
produit d''hygiène dont le prix public conseillé est de 1 200 FCFA. Le détaillant applique une marge de 18 % sur ce
prix public. Attention à bien comprendre le sens du calcul : la marge se calcule sur le prix de vente du
détaillant, c''est-à-dire le prix public, et non sur le prix qu''il a lui-même payé. Marge détaillant = 1 200 × 0,18
= 216 FCFA. Le prix de cession au détaillant, c''est-à-dire ce que le détaillant paie à Baobab Distribution pour
obtenir le produit, est donc le prix public moins cette marge : 1 200 moins 216, soit 984 FCFA.

Deuxième étage de la cascade : Baobab Distribution applique elle-même une marge de 12 %, mais cette fois sur son
propre prix de revente, qui est précisément ce prix de 984 FCFA que nous venons de calculer. Marge du distributeur
= 984 × 0,12 = 118,08 FCFA. Le prix de cession du fabricant à Baobab Distribution, celui que le fabricant reçoit
réellement, est donc 984 moins 118,08, soit 865,92 FCFA, que l''on arrondit à environ 866 FCFA.

Retenez bien la logique : à chaque étage, on part du prix de vente de l''acteur considéré, on calcule sa marge sur
ce prix de vente, puis on soustrait cette marge pour obtenir ce que cet acteur a lui-même payé en amont. On
descend ainsi la chaîne du consommateur final vers le fabricant, étage par étage. C''est une erreur très fréquente
de calculer la marge du distributeur sur le prix public plutôt que sur le prix qu''il facture réellement au
détaillant : si vous appliquiez par erreur les 12 % de Baobab Distribution directement sur 1 200 FCFA, vous
obtiendriez 144 FCFA de marge, un résultat faux, puisque Baobab Distribution ne vend jamais au prix public, elle
vend au détaillant à 984 FCFA. Prenez l''habitude, à chaque étage, de vous demander explicitement : « à quel prix
cet acteur vend-il réellement ? », avant d''appliquer le pourcentage de marge qui lui correspond.

## 35:00 – 45:00 · Pause quiz interactif

Vérifions votre compréhension. Un produit se vend 2 000 FCFA au public. Le détaillant applique une marge de 20 %
sur ce prix public, et le distributeur applique une marge de 15 % sur son propre prix de cession au détaillant.
Calculez le prix de cession du fabricant. Prenez une minute avant la correction... Voici la correction : marge
détaillant = 2 000 × 0,20 = 400 FCFA ; prix de cession au détaillant = 2 000 moins 400, soit 1 600 FCFA. Marge
distributeur = 1 600 × 0,15 = 240 FCFA ; prix de cession du fabricant = 1 600 moins 240, soit 1 360 FCFA. Si vous
avez trouvé ce résultat, vous maîtrisez la mécanique de la cascade.

## 45:00 – 1:05:00 · Le budget de coopération commerciale

Passons maintenant au trade marketing proprement dit, et en particulier au budget de coopération commerciale,
parfois appelé publicité coopérative. C''est un budget que le fabricant accepte de financer pour renforcer la mise
en avant de ses produits chez un distributeur important, exprimé en pourcentage du chiffre d''affaires net réalisé
avec ce distributeur. Baobab Distribution réalise un chiffre d''affaires net annuel de 250 000 000 FCFA avec une
grande chaîne de détaillants partenaire, et le fabricant accepte un budget de coopération de 3 % de ce chiffre
d''affaires. Le calcul est direct : 250 000 000 × 0,03 = 7 500 000 FCFA par an.

C''est un chiffre important, mais la question qui compte vraiment à l''examen n''est pas le calcul lui-même, trop
simple pour être discriminant seul : c''est la discussion de la contrepartie. Ce budget doit financer des actions
mesurables, des têtes de gondole, des animations en magasin, des catalogues communs, et le fabricant doit vérifier
que ces actions se traduisent par une hausse constatée du volume vendu ou de la part de linéaire occupée.
Pourquoi cette vigilance est-elle nécessaire ? Parce que, sans contrôle, ce budget peut devenir une simple
ristourne déguisée : le distributeur l''empoche sans mener d''action particulière, et le fabricant perd 7 500 000
FCFA de marge sans aucune contrepartie commerciale réelle. Un bon correcteur de Master attend que vous souleviez
ce risque spontanément, sans qu''on vous le demande explicitement dans l''énoncé.

## 1:05:00 – 1:22:00 · Cas d''application complet et correction commentée

Appliquons tout cela à un nouveau cas. « Teranga Hygiène » vend un savon au prix public de 800 FCFA. Le détaillant
applique une marge de 22 % sur ce prix public, et le distributeur applique une marge de 10 % sur son propre prix
de cession au détaillant. Première question : calculez le prix de cession au détaillant, puis le prix de cession
du fabricant. Deuxième question : si Teranga Hygiène vend 400 000 unités par an au distributeur à ce prix de
cession, quel est son chiffre d''affaires annuel issu de ce circuit ? Prenez trois minutes avant la correction.

Voici la correction. Marge détaillant = 800 × 0,22 = 176 FCFA ; prix de cession au détaillant = 800 moins 176,
soit 624 FCFA. Marge distributeur = 624 × 0,10 = 62,4 FCFA ; prix de cession du fabricant = 624 moins 62,4, soit
561,6 FCFA. Chiffre d''affaires annuel de Teranga Hygiène = 561,6 × 400 000 = 224 640 000 FCFA, soit environ 224,64
millions de FCFA. Vérifiez bien que vous retrouvez chacune de ces étapes avec votre propre calcul avant de
continuer.

## 1:22:00 – 1:30:00 · Synthèse et évaluation finale

Synthèse de cette séance : la marge en cascade se calcule toujours en partant du prix de vente de chaque acteur, du
consommateur final vers le fabricant ; le budget de coopération commerciale se calcule simplement en pourcentage
du chiffre d''affaires net, mais sa vraie difficulté est de savoir en discuter la contrepartie commerciale attendue.

Cinq questions pour conclure. Un : dans quel sens calcule-t-on la marge d''un acteur du circuit de distribution ?
Réponse : toujours sur son propre prix de vente, jamais sur le prix qu''il a payé en amont. Deux : qu''est-ce qu''un
conflit de canal, avec un exemple ? Réponse : une divergence d''intérêts entre fabricant et distributeurs, par
exemple la vente directe en ligne au même prix que les boutiques partenaires physiques. Trois : à quoi sert un
budget de coopération commerciale ? Réponse : à financer des actions de mise en avant mesurables chez un
distributeur important. Quatre : quel est le principal risque d''un tel budget mal contrôlé ? Réponse : qu''il
devienne une ristourne déguisée, sans contrepartie commerciale réelle. Cinq : pour un prix public de 1 500 FCFA,
une marge détaillant de 20 % et une marge distributeur de 10 %, quel est le prix de cession du fabricant ? Réponse :
marge détaillant = 1 500 × 0,20 = 300 FCFA ; prix de cession au détaillant = 1 200 FCFA ; marge distributeur =
1 200 × 0,10 = 120 FCFA ; prix de cession du fabricant = 1 080 FCFA. Merci à toutes et à tous, bon travail.', 'video', 90, false, 80
from public.courses c where c.slug = 'mas-mkt-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Stratégie de distribution et trade marketing');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Atelier cas pratique transversal — branding, export et distribution', '## Fiche du cours vidéo

Durée : 1h30. Public : étudiants de Master 1 Marketing et commerce, en fin de préparation aux examens. Objectifs :
mobiliser ensemble, sur un même cas d''entreprise fictif filé, les trois matières du semestre (branding, marketing
international, distribution et trade marketing), pour s''entraîner à l''épreuve type qui les combine. Matériel :
tableau ou diaporama, calculatrice, le sujet type de la leçon 5 à portée de main. Prérequis : avoir traité les
leçons 2, 3, 4 et 5, et visionné les trois cours vidéo précédents.

## Déroulé minuté

## 00:00 – 05:00 · Introduction à l''atelier

Bienvenue dans ce quatrième et dernier cours vidéo de votre préparation au Master 1 Marketing et commerce. Ce
n''est pas un cours de transmission classique : c''est un atelier de synthèse, où nous allons suivre une seule
entreprise fictive, « Casamance Agro-Industrie », à travers les trois matières du semestre, exactement comme un
sujet d''examen le ferait. L''objectif n''est pas d''apprendre de nouvelles notions, mais de s''entraîner à l''enchaînement
des trois raisonnements dans une même copie, avec la gestion du temps que cela implique.

## 05:00 – 15:00 · Présentation du cas fil rouge et consignes de méthode

Casamance Agro-Industrie est une entreprise fictive sénégalaise qui transforme des fruits locaux en jus et en
confitures. Elle est reconnue localement pour la qualité de ses produits, mais souhaite se développer à
l''international et renforcer sa présence en grande distribution au Sénégal. Avant de commencer les calculs,
rappelons la méthode générale à suivre pour chaque partie d''un sujet qui combine plusieurs matières : d''abord
identifier la question posée et la matière concernée, ensuite extraire uniquement les données chiffrées utiles à
cette question précise (un cas d''examen contient souvent des chiffres qui serviront à une autre partie, ne les
mélangez pas), puis appliquer la formule appropriée, et enfin formuler une phrase de conclusion qui répond
explicitement à la question posée, pas seulement un chiffre nu.

## 15:00 – 32:00 · Partie branding appliquée au cas fil rouge

Une étude consommateurs donne à Casamance Agro-Industrie les scores suivants sur 10 : notoriété 6,0, qualité
perçue 8,5, fidélité 7,0, associations 7,5, pondérés respectivement à 25 %, 30 %, 25 %, 20 %. Calculons l''indice :
(0,25 × 6,0) + (0,30 × 8,5) + (0,25 × 7,0) + (0,20 × 7,5). Premier terme : 1,50. Deuxième terme : 2,55. Troisième
terme : 1,75. Quatrième terme : 1,50. Somme : 1,50 + 2,55 + 1,75 + 1,50 = 7,30 sur 10. La notoriété, à 6,0, est le
point faible, malgré un poids proche des autres dimensions. Recommandation : avant même d''investir dans
l''international, Casamance Agro-Industrie devrait renforcer sa visibilité sur son marché domestique, car une
notoriété insuffisante au Sénégal fragiliserait aussi sa crédibilité de marque une fois exportée.

## 32:00 – 50:00 · Pause quiz puis partie international appliquée au cas fil rouge

Avant de poursuivre, un quiz rapide : si la pondération de la fidélité passait de 25 % à 35 % au détriment de la
notoriété (qui passerait à 15 %), l''indice augmenterait-il ou diminuerait-il, sachant que la fidélité (7,0) est
supérieure à la notoriété (6,0) ? Réponse : il augmenterait, puisqu''on donne plus de poids à la dimension la plus
forte et moins de poids à la dimension la plus faible.

Passons à l''international. Casamance Agro-Industrie envisage d''exporter vers un pays voisin par export direct
(coûts fixes annuels 10 000 000 FCFA, coût variable 60 000 FCFA par carton, prix de vente 100 000 FCFA par carton)
ou par une franchise locale (coûts fixes annuels 2 500 000 FCFA, redevance reçue de 8 000 FCFA par carton vendu
par le franchisé, aucun coût variable supporté par Casamance Agro-Industrie). Calculons les deux seuils : export
direct, marge = 100 000 moins 60 000, soit 40 000 FCFA par carton ; seuil = 10 000 000 divisé par 40 000, soit 250
cartons. Franchise : seuil = 2 500 000 divisé par 8 000, soit 312,5 cartons. Si l''entreprise prévoit de vendre
800 cartons la première année, les deux seuils sont largement dépassés : il faut alors comparer les marges
totales. Marge totale export direct à 800 cartons = (800 × 40 000) moins 10 000 000 = 32 000 000 moins 10 000 000
= 22 000 000 FCFA. Marge totale franchise à 800 cartons = (800 × 8 000) moins 2 500 000 = 6 400 000 moins 2 500 000
= 3 900 000 FCFA. L''export direct est ici nettement plus profitable à ce volume, malgré un seuil de rentabilité
individuel plus bas pour la franchise : c''est exactement le piège de raisonnement que nous avions signalé dans le
cours vidéo sur l''international, et vous voyez qu''il reste valable sur un nouveau cas.

## 50:00 – 1:08:00 · Partie distribution et trade marketing appliquée au cas fil rouge

Pour sa présence en grande distribution au Sénégal, Casamance Agro-Industrie vend sa confiture au prix public de
1 800 FCFA. Le détaillant applique une marge de 20 % sur ce prix public, et le distributeur applique une marge de
12 % sur son propre prix de cession au détaillant. Calculons : marge détaillant = 1 800 × 0,20 = 360 FCFA ; prix de
cession au détaillant = 1 800 moins 360, soit 1 440 FCFA. Marge distributeur = 1 440 × 0,12 = 172,8 FCFA ; prix de
cession du fabricant = 1 440 moins 172,8, soit 1 267,2 FCFA, arrondi à environ 1 267 FCFA. Si Casamance
Agro-Industrie négocie par ailleurs un budget de coopération commerciale de 2 % sur un chiffre d''affaires net de
60 000 000 FCFA réalisé avec son distributeur principal, ce budget s''élève à 60 000 000 × 0,02 = 1 200 000 FCFA.
Comme toujours, ce budget ne devrait être validé qu''en échange d''une contrepartie mesurable en mise en avant ou en
volume additionnel constaté.

## 1:08:00 – 1:22:00 · Gestion du temps d''examen et synthèse transversale

Un mot maintenant sur la gestion du temps, essentielle pour ce type d''épreuve de trois heures combinant trois
matières. Sur un sujet de 24 points réparti en trois parties égales, consacrez environ 50 à 55 minutes par partie,
en gardant 15 à 20 minutes de marge pour la relecture globale et la vérification de vos calculs. Ne vous attardez
jamais plus de quelques minutes sur une question qui bloque : notez votre meilleure hypothèse, passez à la
question suivante, et revenez-y seulement s''il reste du temps en fin d''épreuve.

Autre réflexe utile : avant de commencer à rédiger, parcourez l''ensemble du sujet et repérez, pour chaque partie,
les chiffres qui vous seront utiles. Il arrive qu''un sujet donne une information commune aux trois parties, par
exemple le volume annuel prévisionnel de l''entreprise, qui doit alors être réutilisé de façon cohérente dans
chacune des parties du marketing international, de la distribution, et parfois même du branding si l''on vous
demande de recalculer une valeur de marque sur ce même volume. Une erreur fréquente est d''inventer un nouveau
chiffre de volume dans une partie alors que l''énoncé en donnait déjà un, ce qui crée une incohérence interne à
votre copie, immédiatement repérée par le correcteur.

La synthèse transversale de cette séance : les trois matières de ce Master 1 se répondent toujours dans un même
cas d''entreprise cohérent, comme nous venons de le voir sur Casamance Agro-Industrie ; chaque partie a sa méthode
propre, mais la rigueur de vérification arithmétique, la cohérence des données réutilisées d''une partie à l''autre,
et l''habitude de conclure par une phrase de recommandation explicite reliée au diagnostic chiffré sont communes
aux trois.

## 1:22:00 – 1:30:00 · Évaluation finale

Avant les cinq questions finales, un dernier conseil de méthode : relisez toujours votre copie en vous posant la
question du correcteur, pas la vôtre. Le correcteur ne cherche pas seulement un chiffre juste, il cherche la preuve
que vous avez compris pourquoi ce chiffre répond à la question posée. Une copie qui aligne des calculs corrects
sans jamais formuler explicitement la recommandation qui en découle perd des points, même avec une arithmétique
parfaite. Prenez donc, à la fin de chaque partie, dix secondes pour vous demander : « ai-je répondu à la question
posée, ou seulement calculé un chiffre ? »

Cinq questions pour clore cette préparation. Un : dans l''indice de capital-marque de Casamance Agro-Industrie,
quelle dimension est-elle le point faible ? Réponse : la notoriété, à 6,0 sur 10. Deux : pourquoi l''export direct
reste-t-il plus profitable que la franchise à 800 cartons malgré un seuil de rentabilité individuel plus élevé ?
Réponse : parce qu''au-delà du seuil, sa marge unitaire plus importante (40 000 FCFA contre 8 000 FCFA par carton)
génère une marge totale bien supérieure sur un volume conséquent. Trois : quel est le prix de cession du fabricant
pour la confiture vendue 1 800 FCFA au public, avec les marges données ? Réponse : environ 1 267 FCFA. Quatre :
combien de temps consacrer, en moyenne, à chaque partie d''un sujet de trois heures réparti en trois parties
égales ? Réponse : environ 50 à 55 minutes, en gardant 15 à 20 minutes pour la relecture finale. Cinq : quelle
habitude commune aux trois matières ce cours a-t-il mise en évidence ? Réponse : vérifier systématiquement ses
calculs arithmétiques et toujours conclure chaque partie par une phrase de recommandation explicite reliée au
diagnostic chiffré. Bon courage à toutes et à tous pour vos examens de Master 1.', 'video', 90, false, 90
from public.courses c where c.slug = 'mas-mkt-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Atelier cas pratique transversal — branding, export et distribution');
