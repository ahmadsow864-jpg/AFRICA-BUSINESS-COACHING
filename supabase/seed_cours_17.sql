-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Cours (partie 17/17). À exécuter après seed.sql.

-- Cours : Marketing et commerce Master 2 : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'mas-mkt-m2', (select id from public.levels where name = 'Master 2'), null, 'Marketing et commerce', 'Marketing et commerce Master 2 : réussir ses examens', 'Préparation aux examens de Master 2 en Marketing et commerce : marketing digital avancé et data marketing, innovation et développement de nouveaux produits, méthodologie du mémoire professionnel et soutenance. Études de cas d''entreprises sénégalaises fictives, calculs chiffrés vérifiés, sujet type, atelier de préparation à la soutenance et quatre cours vidéo de 1h30. Public : étudiants de Master 2 ayant validé un Master 1 en marketing et commerce.', true, 782
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Master 2 en Marketing et commerce', 'Le Master 2 en Marketing et commerce est l''année de la spécialisation la plus poussée et de la
professionnalisation finale. Contrairement au M1, où l''on consolide encore des méthodes, le M2 vous prépare
directement à l''emploi ou à la poursuite en doctorat : les examens y combinent des cas d''entreprise à très forte
composante data et digitale, de l''innovation produit, et surtout la soutenance d''un mémoire professionnel, souvent
adossé à un stage ou une mission en entreprise.

## Les trois matières avancées de l''année

Ce cours d''examen couvre trois matières clés du M2 Marketing et commerce :

- Le marketing digital avancé et le data marketing : indicateurs de performance (CAC, LTV, ROAS), principes du
  marketing automation.
- L''innovation et le développement de nouveaux produits : processus structuré d''innovation, test de concept,
  seuil de rentabilité d''un lancement.
- La méthodologie du mémoire professionnel et la soutenance : structuration d''un mémoire, préparation argumentée
  de la soutenance orale devant un jury.

Ces trois matières ne sont pas indépendantes dans la réalité professionnelle : un mémoire de M2 porte souvent sur
une problématique digitale ou d''innovation vécue en entreprise. Mais pour les examens, chacune est évaluée
séparément par une épreuve dédiée, avant une épreuve de synthèse multi-matières.

## La spécificité du mémoire professionnel en M2

Le mémoire professionnel de M2 diffère du mémoire de recherche académique par son objectif : il s''agit de traiter
une problématique réelle rencontrée en stage ou en mission, à l''aide des concepts et méthodes du marketing, pour en
tirer des recommandations opérationnelles pour l''entreprise d''accueil. Il comprend classiquement une introduction
posant la problématique, une revue de littérature courte situant deux ou trois concepts mobilisés, une partie
méthodologique expliquant comment les données ont été recueillies (entretiens, données internes, observation), une
partie résultats et analyse, et une partie recommandations opérationnelles. La soutenance orale, devant un jury
composé d''enseignants et souvent d''un professionnel, dure généralement entre trente et quarante-cinq minutes :
une présentation de quinze à vingt minutes suivie d''un échange de questions.

## La méthode de travail attendue en M2

- L''étude de cas digitale et chiffrée : en M2, les cas intègrent des données d''analytics et de performance
  (nombre de clics, taux de conversion, coût par acquisition) que vous devez savoir transformer en indicateurs de
  décision (rentabilité d''une campagne, valeur d''un client dans le temps), pas seulement décrire.
- Le processus d''innovation structuré : face à un cas de nouveau produit, suivez toujours les étapes du processus
  (idéation, filtrage, test de concept, analyse économique, développement, test, lancement) plutôt que de sauter
  directement à une recommandation de lancement non argumentée par les étapes précédentes.
- La rigueur méthodologique du mémoire : toute affirmation dans un mémoire doit être reliée soit à une donnée
  recueillie sur le terrain, soit à un concept ou un auteur de référence correctement cité, jamais à une impression
  personnelle non étayée. N''inventez jamais une citation ou une référence précise que vous ne maîtrisez pas : il
  vaut mieux évoquer sobrement un courant théorique (par exemple le débat sur la standardisation/adaptation) sans
  attribution précise que de citer un auteur et une date inexacts.

## Plan de révision sur six semaines

- Semaines 1 et 2 : marketing digital avancé et data marketing (leçon 2), avec les formules de CAC, LTV et ROAS à
  maîtriser par cœur et à savoir appliquer sur un cas chiffré.
- Semaines 3 et 4 : innovation et développement de nouveaux produits (leçon 3), avec le processus structuré en
  étapes et le calcul de seuil de rentabilité d''un lancement.
- Semaine 5 : méthodologie du mémoire professionnel et soutenance (leçon 4), en retravaillant votre propre plan de
  mémoire si vous êtes déjà en train de le rédiger, à partir de la structure type présentée.
- Semaine 6 : sujet type d''examen (leçon 5) en conditions chronométrées, puis les quatre cours vidéo d''1h30,
  en portant une attention particulière au dernier, consacré à l''atelier de préparation à la soutenance.

## Points de vigilance pour l''examen

- Un indicateur digital calculé sans comparaison à un repère ou à un objectif n''a pas de valeur décisionnelle :
  toujours commenter si le chiffre obtenu est satisfaisant ou non pour l''entreprise du cas.
- Un test de concept positif ne garantit jamais mécaniquement la réussite commerciale : il faut toujours
  confronter l''intention d''achat déclarée à une analyse économique de rentabilité du lancement envisagé.
- Pour la soutenance, la forme compte autant que le fond : un jury valorise une présentation structurée, un
  minutage respecté, et une capacité à répondre avec nuance plutôt qu''avec de l''improvisation non maîtrisée aux
  questions posées.

## Exercices pratiques

1. Listez les trois matières avancées de ce cours de M2 et expliquez en une phrase pourquoi chacune prolonge,
   sans la répéter, une matière vue en Licence de Marketing et commerce.
2. Pourquoi le mémoire professionnel de M2 se distingue-t-il d''un mémoire de recherche académique classique ?
3. Construisez votre propre planning de révision sur six semaines en reprenant la trame proposée.
4. Expliquez pourquoi un test de concept positif ne garantit pas, seul, la réussite commerciale d''un nouveau
   produit.

## Corrigé

1. Marketing digital avancé et data marketing : prolonge le marketing digital de base vu en Licence en introduisant
   des indicateurs de performance avancés (CAC, LTV, ROAS) et les principes du marketing automation, non traités
   en Licence. Innovation et développement de nouveaux produits : prolonge le marketing opérationnel de Licence en
   se concentrant sur le processus structuré de création d''une offre nouvelle, absent du programme de Licence.
   Méthodologie du mémoire professionnel et soutenance : matière entièrement nouvelle en M2, propre à la
   professionnalisation de fin de cursus.
2. Il se distingue parce qu''il part d''une problématique réelle rencontrée en stage ou en mission, et vise des
   recommandations opérationnelles directement utilisables par l''entreprise d''accueil, plutôt qu''une contribution
   théorique généralisable comme dans un mémoire de recherche académique.
3. Réponse libre : l''essentiel est de retrouver les six blocs proposés (deux semaines de digital et data marketing,
   deux semaines d''innovation produit, une semaine de méthodologie du mémoire, une semaine de sujet type et de
   révision vidéo), avec des jours et créneaux réalistes.
4. Parce qu''une intention d''achat déclarée dans une enquête surestime presque toujours le comportement d''achat
   réel : un consommateur peut dire qu''il achèterait un produit sans le faire réellement une fois le produit
   disponible. Il faut donc toujours pondérer cette intention déclarée par un facteur de prudence avant de
   construire une prévision de volume, puis vérifier que le volume ainsi estimé permet d''atteindre le seuil de
   rentabilité du lancement envisagé.', 'texte', 40, true, 10
from public.courses c where c.slug = 'mas-mkt-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Master 2 en Marketing et commerce');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Marketing digital avancé et data marketing : l''essentiel pour l''examen', 'Le marketing digital avancé et le data marketing forment la première matière du M2 : il s''agit de savoir
transformer des données brutes de performance (clics, visites, achats) en indicateurs de décision, et de
comprendre les principes du marketing automation sans se limiter à l''usage intuitif des outils.

## Les indicateurs clés de la performance digitale

Trois indicateurs structurent la plupart des cas d''examen de M2 :

- Le CAC, coût d''acquisition client (Customer Acquisition Cost) : le montant moyen dépensé en marketing pour
  acquérir un nouveau client. CAC = dépenses marketing ÷ nombre de nouveaux clients acquis sur la période.
- La LTV, valeur vie client (Lifetime Value) : la marge totale qu''un client rapporte à l''entreprise sur toute la
  durée de sa relation avec elle. Une formule simple, utilisée en M2, est : LTV = marge par achat × nombre d''achats
  par an × durée de vie moyenne du client en années.
- Le ROAS, retour sur dépense publicitaire (Return On Ad Spend) : ROAS = chiffre d''affaires généré par une
  campagne ÷ dépense de cette campagne.

Ces trois indicateurs se complètent : le CAC mesure le coût d''entrée d''un client, la LTV mesure sa valeur dans le
temps, et leur rapport, LTV/CAC, est un repère couramment utilisé par les professionnels (non normatif, à
toujours justifier dans votre raisonnement) pour juger si l''acquisition d''un client est rentable sur la durée.

## Cas d''entreprise : Jokko Shop et le calcul des indicateurs

Jokko Shop, boutique en ligne fictive basée à Dakar vendant des articles de mode, a dépensé 5 000 000 FCFA en
publicité digitale sur un trimestre, pour acquérir 2 000 nouveaux clients sur cette période.

CAC = 5 000 000 ÷ 2 000 = 2 500 FCFA par client acquis.

Le panier moyen de Jokko Shop est de 15 000 FCFA, avec un taux de marge de 35 % sur ce panier. Un client achète en
moyenne 4 fois par an, et reste client en moyenne 3 ans.

Marge par achat = 15 000 × 0,35 = 5 250 FCFA.
LTV = 5 250 × 4 × 3 = 63 000 FCFA.

Ratio LTV/CAC = 63 000 ÷ 2 500 = 25,2.

Ce ratio, très élevé dans notre exemple, signifie qu''un client rapporte, sur sa durée de vie estimée, plus de 25
fois ce qu''il a coûté à acquérir : un repère souvent cité dans la pratique professionnelle considère qu''un ratio
supérieur à 3 est déjà sain, sans qu''il s''agisse d''une norme officielle. Un ratio aussi élevé que 25,2 invite
cependant à vérifier les hypothèses retenues (durée de vie de 3 ans et fréquence de 4 achats par an réalistes ?)
avant de le présenter comme acquis dans une recommandation.

Pour le ROAS, supposons qu''une campagne spécifique de 2 000 000 FCFA ait généré un chiffre d''affaires de
9 000 000 FCFA.

ROAS = 9 000 000 ÷ 2 000 000 = 4,5, soit 450 %.

Cela signifie que chaque FCFA dépensé sur cette campagne a généré 4,5 FCFA de chiffre d''affaires, un résultat à
interpréter en tenant compte du taux de marge réel de Jokko Shop, car le ROAS porte sur le chiffre d''affaires brut
et non sur la marge réellement dégagée.

## Les principes du marketing automation

Le marketing automation désigne l''ensemble des outils et processus qui automatisent des actions marketing
répétitives en fonction du comportement du client, sans intervention manuelle à chaque étape. Trois principes à
retenir pour l''examen, au niveau des mécanismes plutôt que des outils commerciaux précis :

- Le lead scoring : chaque prospect reçoit un score croissant en fonction de ses actions (ouverture d''un courriel,
  visite d''une page produit, téléchargement d''un contenu), ce qui permet de prioriser les prospects les plus
  « chauds » pour une action commerciale humaine.
- Les scénarios de nurturing : des séquences automatisées de communication (courriels, notifications) sont
  déclenchées selon le comportement du prospect, pour l''accompagner progressivement vers l''achat sans sursolliciter
  un prospect pas encore prêt.
- La segmentation comportementale : plutôt que des segments démographiques statiques, le marketing automation
  permet de segmenter les clients selon leur comportement réel (fréquence d''achat, montant dépensé, récence du
  dernier achat), ce qui rend les communications automatisées plus pertinentes.

Pour Jokko Shop, un scénario simple consisterait à relancer automatiquement par courriel tout client ayant ajouté
un article au panier sans finaliser son achat dans les 24 heures, puis à lui proposer une réduction limitée dans le
temps si l''achat n''est toujours pas finalisé après 72 heures.

## Exercices pratiques

1. Une entreprise fictive « Sahel Connect » dépense 3 000 000 FCFA en publicité digitale pour acquérir 1 500
   nouveaux clients. Calculez son CAC.
2. Le panier moyen de Sahel Connect est de 20 000 FCFA, son taux de marge de 40 %, avec 3 achats par an en moyenne
   et une durée de vie client de 2 ans. Calculez la LTV et le ratio LTV/CAC.
3. Une campagne de Sahel Connect coûte 1 500 000 FCFA et génère un chiffre d''affaires de 4 500 000 FCFA. Calculez
   le ROAS.
4. Expliquez la différence entre le lead scoring et la segmentation comportementale.
5. Pourquoi faut-il interpréter un ROAS élevé avec prudence si l''on ne connaît pas le taux de marge de l''entreprise ?
6. Cas pratique complet : « Teranga Click », place de marché fictive, dépense 8 000 000 FCFA en publicité digitale
   sur un semestre et acquiert 4 000 nouveaux clients. Le panier moyen est de 12 000 FCFA, le taux de marge de
   30 %, avec 5 achats par an en moyenne et une durée de vie client de 2,5 ans. a) Calculez le CAC. b) Calculez la
   LTV. c) Calculez le ratio LTV/CAC et commentez s''il semble sain par rapport au repère couramment cité de 3.

## Corrigé

1. CAC = 3 000 000 ÷ 1 500 = 2 000 FCFA par client.
2. Marge par achat = 20 000 × 0,40 = 8 000 FCFA. LTV = 8 000 × 3 × 2 = 48 000 FCFA. Ratio LTV/CAC = 48 000 ÷ 2 000 =
   24.
3. ROAS = 4 500 000 ÷ 1 500 000 = 3, soit 300 %.
4. Le lead scoring attribue un score individuel croissant à chaque prospect selon ses actions, pour prioriser les
   prospects les plus avancés dans leur réflexion d''achat. La segmentation comportementale regroupe les clients en
   catégories selon leur comportement réel (fréquence, montant, récence), pour adapter le contenu des
   communications à chaque groupe, sans nécessairement prioriser un prospect par rapport à un autre.
5. Parce que le ROAS rapporte un chiffre d''affaires brut à une dépense, sans tenir compte des coûts de production
   ou d''achat des produits vendus : un ROAS élevé peut masquer une marge réelle faible si le taux de marge de
   l''entreprise est lui-même faible, rendant la campagne moins rentable qu''il n''y paraît au premier regard.
6. a) CAC = 8 000 000 ÷ 4 000 = 2 000 FCFA. b) Marge par achat = 12 000 × 0,30 = 3 600 FCFA ; LTV = 3 600 × 5 × 2,5
   = 45 000 FCFA. c) Ratio LTV/CAC = 45 000 ÷ 2 000 = 22,5, nettement supérieur au repère indicatif de 3 souvent
   cité dans la pratique professionnelle : l''acquisition de clients semble très rentable sur la durée au regard de
   ces hypothèses, à condition de vérifier que la durée de vie moyenne de 2,5 ans et la fréquence de 5 achats par
   an retenues restent réalistes pour Teranga Click.', 'texte', 45, false, 20
from public.courses c where c.slug = 'mas-mkt-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Marketing digital avancé et data marketing : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Innovation et développement de nouveaux produits : l''essentiel pour l''examen', 'L''innovation et le développement de nouveaux produits (souvent désigné par son acronyme anglais NPD, New
Product Development) est la deuxième matière avancée du M2 : il s''agit de suivre un processus structuré, du concept
à la décision de lancement, en s''appuyant sur des tests et des calculs économiques plutôt que sur l''intuition
seule.

## Le processus structuré de développement de nouveaux produits

Le processus classique comporte sept étapes, qu''il faut savoir citer et appliquer à l''examen :

- L''idéation : génération d''idées de nouveaux produits, à partir de sources internes (R&D, commerciaux) ou
  externes (clients, concurrents, veille technologique).
- Le filtrage des idées : élimination des idées peu réalistes ou peu cohérentes avec la stratégie de l''entreprise,
  avant d''investir du temps et de l''argent dans leur approfondissement.
- Le développement et le test de concept : formulation précise de l''idée retenue sous forme de concept testable
  auprès de consommateurs cibles.
- L''analyse économique : estimation des coûts, des volumes de vente prévisionnels et de la rentabilité attendue du
  lancement.
- Le développement du produit : conception technique réelle du produit à partir du concept validé.
- Le test de marché : lancement limité dans le temps ou dans l''espace (une ville, une région) pour vérifier le
  comportement réel des consommateurs avant un lancement national.
- Le lancement commercial complet, accompagné d''un plan marketing dédié.

L''erreur la plus fréquente à l''examen consiste à traiter un cas de lancement de produit en sautant directement à
l''analyse économique sans mentionner les étapes amont, ou à l''inverse à décrire longuement le processus sans jamais
l''appliquer aux chiffres donnés dans le cas.

## Le test de concept et l''intention d''achat

Le test de concept consiste à présenter le concept du futur produit à un échantillon de consommateurs cibles, et à
mesurer leur intention d''achat déclarée, le plus souvent sur une échelle allant de « n''achèterait certainement
pas » à « achèterait certainement ». On calcule alors un score dit « top 2 box », la proportion de répondants ayant
choisi l''une des deux réponses les plus positives de l''échelle.

Une règle importante, à toujours mentionner en Master : l''intention d''achat déclarée surestime systématiquement le
comportement d''achat réel futur. Il est donc d''usage, dans l''analyse pédagogique de ce type de test, d''appliquer un
facteur de prudence (un coefficient de conversion, non officiel, à définir explicitement dans votre copie) à ce
score déclaré avant d''en tirer une prévision de volume.

## Cas d''entreprise : InnovAgro Sénégal et le test de concept

InnovAgro Sénégal, entreprise fictive de transformation agroalimentaire, teste le concept d''une nouvelle céréale de
petit-déjeuner enrichie en fer, destinée aux ménages avec jeunes enfants. Un test de concept est mené auprès d''un
échantillon de 400 ménages représentatifs du marché cible. Le score top 2 box obtenu est de 46 %.

Le marché cible total est estimé à 500 000 ménages. En appliquant un facteur de prudence de 0,30 (c''est-à-dire que
l''on considère que seuls 30 % des ménages ayant déclaré une intention d''achat positive passeront réellement à
l''achat lors du lancement effectif), on obtient :

Taux d''essai estimé = 46 % × 0,30 = 13,8 %.
Ménages en essai estimés = 500 000 × 0,138 = 69 000 ménages.

Ce chiffre de 69 000 ménages en essai constitue la base de la prévision de volume qui alimentera l''analyse
économique du lancement.

## L''analyse économique du lancement : seuil de rentabilité et délai de retour sur investissement

InnovAgro Sénégal estime que l''investissement nécessaire pour lancer cette céréale (ligne de production dédiée,
communication de lancement) s''élève à 60 000 000 FCFA. La marge dégagée par unité vendue est de 450 FCFA, et les
ventes mensuelles prévisionnelles, une fois le lancement stabilisé, sont estimées à 25 000 unités par mois.

Contribution mensuelle = 450 × 25 000 = 11 250 000 FCFA par mois.
Délai de retour sur investissement (payback) = 60 000 000 ÷ 11 250 000 ≈ 5,33 mois.

Autrement dit, si les ventes mensuelles prévisionnelles se confirment, l''investissement initial serait récupéré en
un peu plus de cinq mois. Pour l''examen, il faut toujours relier ce résultat à la prévision de volume issue du test
de concept : si les 25 000 unités mensuelles prévues sont cohérentes avec les 69 000 ménages en essai estimés sur
l''année (à raison d''un rythme d''achat répété à construire), le plan est globalement cohérent ; si l''écart est trop
important, il faut réviser l''une des deux hypothèses avant de recommander le lancement.

## Exercices pratiques

1. Citez dans l''ordre les sept étapes du processus de développement de nouveaux produits.
2. Un test de concept sur un échantillon de 300 ménages donne un score top 2 box de 52 %. Le marché cible est de
   200 000 ménages, avec un facteur de prudence retenu de 0,25. Calculez le nombre de ménages en essai estimés.
3. Pourquoi applique-t-on un facteur de prudence à l''intention d''achat déclarée dans un test de concept ?
4. Une entreprise envisage un investissement de 40 000 000 FCFA pour un nouveau produit, avec une marge de 320
   FCFA par unité et des ventes mensuelles prévisionnelles de 15 000 unités. Calculez le délai de retour sur
   investissement.
5. Expliquez pourquoi sauter directement à l''analyse économique sans mentionner les étapes amont du processus est
   sanctionné à l''examen, même si les calculs sont corrects.
6. Cas pratique complet : « Fouta Nutrition », entreprise fictive, teste le concept d''une boisson énergétique
   locale auprès de 350 ménages, avec un score top 2 box de 40 %. Le marché cible est de 350 000 ménages, et le
   facteur de prudence retenu est de 0,35. L''investissement nécessaire au lancement est de 50 000 000 FCFA, la
   marge par unité de 280 FCFA. a) Calculez le nombre de ménages en essai estimés. b) Si l''on suppose que chaque
   ménage en essai achète en moyenne 2 unités par mois, calculez les ventes mensuelles prévisionnelles en unités.
   c) Calculez le délai de retour sur investissement correspondant.

## Corrigé

1. Idéation, filtrage des idées, développement et test de concept, analyse économique, développement du produit,
   test de marché, lancement commercial complet.
2. Taux d''essai estimé = 52 % × 0,25 = 13 %. Ménages en essai estimés = 200 000 × 0,13 = 26 000 ménages.
3. Parce que l''intention d''achat déclarée dans une enquête surestime presque toujours le comportement d''achat réel
   futur : un consommateur peut exprimer un intérêt sincère sans pour autant passer à l''acte d''achat une fois le
   produit effectivement disponible, pour des raisons de prix, d''habitude ou de disponibilité au moment du
   lancement.
4. Contribution mensuelle = 320 × 15 000 = 4 800 000 FCFA. Délai de retour sur investissement = 40 000 000 ÷
   4 800 000 ≈ 8,33 mois.
5. Parce qu''en Master, on évalue la maîtrise de la méthode professionnelle complète, pas seulement la capacité de
   calcul : un correcteur veut voir que vous savez situer l''analyse économique dans un processus plus large,
   incluant la validation du concept auprès des consommateurs avant d''investir dans le développement réel du
   produit.
6. a) Taux d''essai estimé = 40 % × 0,35 = 14 %. Ménages en essai estimés = 350 000 × 0,14 = 49 000 ménages.
   b) Ventes mensuelles prévisionnelles = 49 000 × 2 = 98 000 unités par mois. c) Contribution mensuelle = 280 ×
   98 000 = 27 440 000 FCFA. Délai de retour sur investissement = 50 000 000 ÷ 27 440 000 ≈ 1,82 mois.', 'texte', 45, false, 30
from public.courses c where c.slug = 'mas-mkt-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Innovation et développement de nouveaux produits : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Méthodologie du mémoire professionnel et soutenance : l''essentiel pour l''examen', 'La méthodologie du mémoire professionnel et de la soutenance est la troisième matière avancée du M2, et
sans doute la plus décisive pour la suite de votre parcours : un mémoire bien structuré et une soutenance bien
préparée valorisent votre travail de stage ou de mission devant un jury qui ne connaît l''entreprise d''accueil
qu''à travers votre présentation.

## La structure attendue d''un mémoire professionnel

Un mémoire professionnel de M2 en marketing suit généralement une structure en cinq grandes parties :

- L''introduction : présentation du contexte de l''entreprise d''accueil, formulation claire de la problématique
  traitée (une question précise à laquelle le mémoire va répondre), et annonce du plan.
- La revue de littérature courte : situation de la problématique par rapport à deux ou trois concepts ou courants
  de référence du marketing, sans invention de citations ou de dates précises que vous ne maîtrisez pas
  rigoureusement. Il est préférable d''évoquer un concept sobrement (par exemple « le débat entre standardisation
  et adaptation en marketing international ») que de citer un auteur avec une référence bibliographique inexacte.
- La méthodologie : explication de la manière dont les données ont été recueillies pendant le stage ou la mission
  (entretiens avec des responsables de l''entreprise, analyse de données internes, observation participante,
  enquête auprès de clients), et des limites de cette méthodologie.
- Les résultats et leur analyse : présentation factuelle de ce qui a été observé ou mesuré, puis interprétation à
  la lumière des concepts mobilisés dans la revue de littérature.
- Les recommandations opérationnelles et la conclusion : propositions concrètes et réalistes pour l''entreprise
  d''accueil, suivies d''un retour sur la problématique initiale et, souvent, sur les apports personnels du stage ou
  de la mission pour l''étudiant.

## La problématique : le point de départ décisif

Une problématique de mémoire professionnel doit être à la fois suffisamment précise pour être traitée dans le
temps imparti, et suffisamment ouverte pour permettre une véritable analyse plutôt qu''une simple description. Une
problématique trop large (« comment améliorer le marketing de l''entreprise ? ») ne permet pas un travail rigoureux
; une problématique trop étroite ou purement descriptive (« quelles actions de communication l''entreprise a-t-elle
menées cette année ? ») ne laisse pas de place à l''analyse. Un exemple de problématique bien calibrée, pour un
étudiant fictif en stage chez une entreprise de e-commerce sénégalaise : « Dans quelle mesure la mise en place
d''un programme de fidélité peut-elle réduire le taux d''attrition des clients de l''entreprise X, compte tenu des
contraintes logistiques du marché sénégalais ? ». Cette formulation combine une variable d''action (le programme de
fidélité), un indicateur mesurable (le taux d''attrition) et un contexte précis (les contraintes logistiques
locales), ce qui permet un travail d''analyse structuré.

## Préparer la soutenance orale

La soutenance dure généralement entre trente et quarante-cinq minutes, répartis entre une présentation de quinze à
vingt minutes et un échange de questions avec le jury. Quelques règles de méthode :

- Respecter strictement le minutage annoncé : un jury pénalise une présentation qui dépasse largement le temps
  imparti, car cela traduit un manque de maîtrise du contenu plutôt qu''un excès d''enthousiasme.
- Structurer la présentation autour de la problématique et des recommandations, sans redire intégralement
  l''ensemble du mémoire écrit : le jury l''a déjà lu, la présentation doit mettre en valeur les points clés et
  l''apport personnel de l''étudiant.
- Anticiper les questions probables du jury : sur la méthodologie employée (pourquoi ce choix d''entretiens plutôt
  qu''une enquête quantitative, par exemple), sur la faisabilité réelle des recommandations proposées, et sur les
  limites du travail reconnues honnêtement par l''étudiant lui-même.
- Répondre avec nuance plutôt que par une improvisation non maîtrisée : il est préférable de reconnaître une limite
  de son travail avec une explication posée que de défendre une position intenable face à une question pertinente
  du jury.

## Exemple de grille d''anticipation des questions de jury

Pour notre étudiant fictif travaillant sur le programme de fidélité et le taux d''attrition, des questions probables
du jury pourraient être : « Comment avez-vous mesuré le taux d''attrition avant la mise en place du programme ? »
(réponse attendue : préciser la source des données internes utilisées et la période de référence retenue) ; « Le
programme de fidélité proposé est-il financièrement soutenable pour l''entreprise ? » (réponse attendue : relier la
recommandation à un ordre de grandeur de coût, même approximatif, et à un bénéfice attendu en rétention de
clientèle) ; « Quelles limites reconnaissez-vous à votre méthodologie ? » (réponse attendue : par exemple, un
échantillon d''entretiens limité en nombre, ou une période d''observation trop courte pour conclure définitivement
sur l''effet du programme).

## Exercices pratiques

1. Citez les cinq grandes parties de la structure type d''un mémoire professionnel de M2.
2. Expliquez, à l''aide de l''exemple donné, ce qui rend une problématique de mémoire « bien calibrée », ni trop
   large ni trop étroite.
3. Pourquoi est-il risqué d''inventer une citation ou une référence précise dans la revue de littérature si l''on
   n''est pas certain de son exactitude ?
4. Citez trois règles de méthode pour réussir une soutenance orale.
5. Imaginez une problématique de mémoire professionnel fictive, différente de l''exemple du cours, en veillant à
   combiner une variable d''action, un indicateur mesurable et un contexte précis.

## Corrigé

1. Introduction (contexte et problématique), revue de littérature courte, méthodologie, résultats et analyse,
   recommandations opérationnelles et conclusion.
2. Elle combine une variable d''action précise (le programme de fidélité), un indicateur mesurable (le taux
   d''attrition), et un contexte limité et réaliste (les contraintes logistiques du marché sénégalais), ce qui
   permet de mener une analyse approfondie dans le temps imparti, sans être ni trop vague pour être traitée, ni
   purement descriptive sans possibilité d''analyse.
3. Parce qu''une référence inexacte (mauvais auteur, mauvaise date, mauvaise formulation d''un concept) est
   immédiatement repérable par un jury ou un correcteur compétent dans la matière, et nuit à la crédibilité globale
   du travail, bien davantage qu''une évocation sobre et correcte d''un courant théorique sans attribution précise
   non maîtrisée.
4. Par exemple : respecter strictement le minutage annoncé ; structurer la présentation autour de la problématique
   et des recommandations sans redire tout le mémoire écrit ; anticiper les questions probables du jury sur la
   méthodologie, la faisabilité des recommandations et les limites du travail.
5. Réponse libre : par exemple, « Dans quelle mesure une campagne de marketing automation par courriel peut-elle
   améliorer le taux de réachat des clients d''une boutique en ligne sénégalaise de cosmétiques, compte tenu du
   taux d''équipement limité en cartes bancaires de sa clientèle ? ». Cette formulation combine une variable
   d''action (la campagne de marketing automation), un indicateur mesurable (le taux de réachat) et un contexte
   précis (le taux d''équipement limité en moyens de paiement électroniques).', 'texte', 45, false, 40
from public.courses c where c.slug = 'mas-mkt-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Méthodologie du mémoire professionnel et soutenance : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Master 2 en Marketing et commerce (corrigé)', 'Ce sujet type (non officiel, barème indicatif) rassemble les trois matières du Master 2 Marketing et
commerce : marketing digital avancé et data marketing, innovation et développement de nouveaux produits,
méthodologie du mémoire professionnel. Durée indicative : 3 heures. Il s''appuie sur un cas d''entreprise fictif
unique, « Diambars Market », suivi sur les trois dimensions.

## Sujet

Diambars Market est une entreprise fictive sénégalaise de vente en ligne de produits alimentaires locaux
transformés, livrée à Dakar et dans sa périphérie.

Partie 1 (8 points) — Marketing digital et data marketing. Diambars Market a dépensé 6 000 000 FCFA en publicité
digitale sur un trimestre, pour acquérir 2 400 nouveaux clients. Son panier moyen est de 18 000 FCFA, son taux de
marge de 32 %, avec 6 achats par an en moyenne et une durée de vie client estimée à 2 ans. a) Calculez le CAC
(2 points). b) Calculez la LTV (3 points). c) Calculez le ratio LTV/CAC et commentez-le par rapport au repère
indicatif de 3 souvent cité dans la pratique professionnelle (3 points).

Partie 2 (8 points) — Innovation et développement de nouveaux produits. Diambars Market teste le concept d''une
nouvelle gamme de plats cuisinés surgelés auprès d''un échantillon de 250 ménages, avec un score top 2 box de
50 %. Le marché cible est estimé à 300 000 ménages, et un facteur de prudence de 0,30 est retenu. a) Calculez le
nombre de ménages en essai estimés (3 points). b) Si l''investissement nécessaire au lancement est de 45 000 000
FCFA et la marge par unité de 600 FCFA, avec des ventes mensuelles prévisionnelles de 12 000 unités, calculez le
délai de retour sur investissement (3 points). c) Expliquez en deux phrases pourquoi ce délai doit être confronté
à la prévision de volume issue du test de concept avant toute décision de lancement (2 points).

Partie 3 (8 points) — Méthodologie du mémoire. Un étudiant fictif en stage chez Diambars Market envisage la
problématique suivante : « Comment améliorer le marketing de Diambars Market ? ». a) Expliquez en trois phrases
pourquoi cette problématique n''est pas correctement calibrée pour un mémoire professionnel (4 points). b)
Reformulez-la en une problématique mieux calibrée, combinant une variable d''action, un indicateur mesurable et un
contexte précis, en lien avec le cas de Diambars Market (4 points).

## Corrigé détaillé

Partie 1. a) CAC = 6 000 000 ÷ 2 400 = 2 500 FCFA par client. b) Marge par achat = 18 000 × 0,32 = 5 760 FCFA ;
LTV = 5 760 × 6 × 2 = 69 120 FCFA. c) Ratio LTV/CAC = 69 120 ÷ 2 500 = 27,65. Ce ratio est très largement
supérieur au repère indicatif de 3 souvent cité dans la pratique professionnelle (non normatif) : l''acquisition de
clients semble très rentable sur la durée au regard des hypothèses retenues, à condition de vérifier que la durée
de vie de 2 ans et la fréquence de 6 achats par an restent réalistes pour Diambars Market, et ne reposent pas sur
un échantillon de clients encore trop récent pour être fiable.

Partie 2. a) Taux d''essai estimé = 50 % × 0,30 = 15 % ; ménages en essai estimés = 300 000 × 0,15 = 45 000
ménages. b) Contribution mensuelle = 600 × 12 000 = 7 200 000 FCFA ; délai de retour sur investissement =
45 000 000 ÷ 7 200 000 = 6,25 mois. c) Il faut confronter ce délai à la prévision de volume du test de concept
parce qu''un délai de retour sur investissement calculé sur des ventes mensuelles de 12 000 unités n''a de sens que
si ce volume est cohérent avec les 45 000 ménages en essai estimés sur l''année ; si l''écart entre le volume supposé
et le volume réellement atteignable selon le test de concept est trop important, le délai de 6,25 mois calculé
serait trop optimiste et la décision de lancement devrait être révisée.

Partie 3. a) Cette problématique est trop large et trop vague : elle ne précise ni la variable d''action sur
laquelle agir (quel levier marketing précis ?), ni l''indicateur permettant de mesurer une amélioration, ni le
contexte spécifique de l''entreprise ; elle ne permettrait pas de mener une analyse rigoureuse dans le temps
imparti d''un mémoire, mais seulement une description générale non discriminante. b) Exemple de reformulation
acceptable : « Dans quelle mesure la mise en place d''un programme de relance automatisée des paniers abandonnés
peut-elle réduire le taux d''abandon de commande en ligne de Diambars Market, compte tenu des contraintes de
livraison dans la périphérie de Dakar ? ». Cette formulation combine une variable d''action (la relance automatisée
des paniers abandonnés), un indicateur mesurable (le taux d''abandon de commande) et un contexte précis (les
contraintes de livraison en périphérie).

## Exercices pratiques (questions complémentaires)

1. Si Diambars Market réduisait sa durée de vie client estimée de 2 ans à 1,5 an, toutes choses égales par
   ailleurs, quelle serait la nouvelle LTV, et le ratio LTV/CAC resterait-il supérieur au repère indicatif de 3 ?
2. Si les ventes mensuelles prévisionnelles de la gamme de plats cuisinés étaient révisées à la baisse, à 8 000
   unités par mois au lieu de 12 000, calculez le nouveau délai de retour sur investissement.
3. Pourquoi un jury de soutenance accorderait-il plus de crédit à la reformulation de la problématique proposée en
   b) qu''à la version initiale, même si l''étudiant maîtrise bien son sujet dans les deux cas ?
4. Cas pratique complémentaire : un concurrent fictif de Diambars Market, « Click Mbour », affiche un CAC de
   1 800 FCFA et une LTV de 36 000 FCFA. Calculez son ratio LTV/CAC et comparez-le à celui de Diambars Market
   calculé en Partie 1.

## Corrigé (questions complémentaires)

1. Nouvelle LTV = 5 760 × 6 × 1,5 = 51 840 FCFA. Nouveau ratio LTV/CAC = 51 840 ÷ 2 500 = 20,74, qui reste
   largement supérieur au repère indicatif de 3 : même avec une durée de vie client réduite, l''acquisition de
   clients demeure très rentable sur la durée selon ces hypothèses.
2. Contribution mensuelle = 600 × 8 000 = 4 800 000 FCFA. Nouveau délai de retour sur investissement = 45 000 000 ÷
   4 800 000 = 9,375 mois, soit environ 9 mois et demi, contre 6,25 mois initialement : la révision à la baisse du
   volume allonge sensiblement le délai de récupération de l''investissement.
3. Parce que la reformulation permet un travail d''analyse véritable et démontrable devant le jury (une variable
   d''action testable, un indicateur mesurable à présenter avec des données, un contexte qui justifie les choix
   méthodologiques retenus), alors que la version initiale, même traitée avec sérieux, resterait nécessairement
   descriptive et peu susceptible de démontrer une réelle valeur ajoutée analytique de l''étudiant.
4. Ratio LTV/CAC de Click Mbour = 36 000 ÷ 1 800 = 20. Ce ratio est inférieur à celui de Diambars Market (27,65 en
   Partie 1), ce qui suggère, sur la seule base de cet indicateur, une acquisition de clients légèrement moins
   rentable sur la durée chez Click Mbour, bien que les deux ratios restent largement supérieurs au repère
   indicatif de 3.', 'texte', 50, false, 50
from public.courses c where c.slug = 'mas-mkt-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Master 2 en Marketing et commerce (corrigé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Marketing digital avancé et data marketing', '## Fiche du cours vidéo

Durée : 1h30. Public : étudiants de Master 2 Marketing et commerce. Objectifs : savoir calculer et interpréter
CAC, LTV, ratio LTV/CAC et ROAS, savoir relier ces indicateurs à une décision marketing, et comprendre les
principes du marketing automation. Matériel : tableau ou diaporama, calculatrice. Prérequis : avoir lu la leçon 2
(Marketing digital avancé et data marketing).

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Bienvenue dans cette séance consacrée au marketing digital avancé et au data marketing, première matière de votre
Master 2. En entretien d''embauche comme en entreprise, on vous demandera très vite de manipuler ces indicateurs :
CAC, LTV, ROAS. Ce ne sont pas des formules abstraites réservées à l''examen, c''est le langage quotidien d''un
responsable marketing digital. Nous allons les reprendre ensemble sur notre cas fictif Jokko Shop, puis aborder les
principes du marketing automation.

## 05:00 – 20:00 · Le CAC et la LTV, pas à pas

Commençons par le CAC, le coût d''acquisition client. La formule est simple : dépenses marketing divisées par
nombre de nouveaux clients acquis sur la période. Jokko Shop a dépensé 5 000 000 FCFA en publicité digitale sur un
trimestre, pour acquérir 2 000 nouveaux clients. CAC = 5 000 000 divisé par 2 000, soit 2 500 FCFA par client
acquis. Retenez bien : le CAC mesure uniquement le coût d''entrée, pas la valeur que ce client apportera ensuite.

C''est là qu''intervient la LTV, la valeur vie client. La formule que nous utilisons : marge par achat, multipliée
par le nombre d''achats par an, multipliée par la durée de vie moyenne du client en années. Pour Jokko Shop, le
panier moyen est de 15 000 FCFA, avec un taux de marge de 35 %. Marge par achat = 15 000 × 0,35 = 5 250 FCFA. Le
client achète en moyenne 4 fois par an, et reste client en moyenne 3 ans. LTV = 5 250 × 4 × 3. Faisons le calcul
ensemble : 5 250 × 4 = 21 000 ; 21 000 × 3 = 63 000 FCFA. La LTV de Jokko Shop est donc de 63 000 FCFA.

## 20:00 – 32:00 · Le ratio LTV/CAC et son interprétation

Le ratio LTV/CAC est l''indicateur de synthèse que l''on construit à partir des deux précédents : il rapporte la
valeur créée par un client à son coût d''acquisition. Pour Jokko Shop : 63 000 divisé par 2 500, soit 25,2. Un
repère couramment cité dans la pratique professionnelle, non officiel, considère qu''un ratio supérieur à 3 est
déjà sain. Un ratio de 25,2 est donc très élevé. Mais attention à l''erreur de débutant : un ratio très élevé n''est
pas automatiquement une bonne nouvelle sans discussion. Il peut signifier que l''entreprise sous-investit en
acquisition par rapport à la valeur réelle de ses clients, et qu''elle pourrait rentabiliser davantage de budget
publicitaire pour accélérer sa croissance, tout en restant largement profitable. Il peut aussi signifier que les
hypothèses retenues pour la durée de vie client (3 ans) ou la fréquence d''achat (4 fois par an) sont optimistes et
méritent d''être vérifiées sur des données réelles plus longues avant d''être prises pour acquises.

## 32:00 – 40:00 · Le ROAS

Passons au ROAS, le retour sur dépense publicitaire, qui s''applique plutôt au niveau d''une campagne précise que de
l''ensemble de l''activité client. Formule : chiffre d''affaires généré par la campagne, divisé par la dépense de
cette campagne. Supposons qu''une campagne de 2 000 000 FCFA ait généré un chiffre d''affaires de 9 000 000 FCFA.
ROAS = 9 000 000 divisé par 2 000 000, soit 4,5, ce que l''on peut aussi exprimer en pourcentage : 450 %. Attention,
cette fois, à une autre erreur fréquente : le ROAS porte sur le chiffre d''affaires brut, pas sur la marge. Un ROAS
de 4,5 ne signifie pas que l''entreprise a multiplié sa dépense par 4,5 en profit : il faut appliquer le taux de
marge de l''entreprise à ce chiffre d''affaires généré pour obtenir le profit réel dégagé par la campagne.

## 40:00 – 45:00 · Pause quiz interactif

Trois questions rapides. Un : si le CAC de Jokko Shop passait de 2 500 à 4 000 FCFA, toutes choses égales par
ailleurs, que deviendrait le ratio LTV/CAC ? Deux : le ROAS mesure-t-il le chiffre d''affaires ou la marge générée
par une campagne ? Trois : qu''est-ce qu''un repère indicatif, et pourquoi insiste-t-on sur le fait qu''il n''est pas
officiel ? Réponses : un, ratio = 63 000 divisé par 4 000, soit 15,75, toujours largement supérieur à 3. Deux, le
chiffre d''affaires brut, pas la marge. Trois, c''est une valeur couramment observée dans la pratique professionnelle
sans être fixée par un texte réglementaire ; on insiste sur ce point pour éviter de la présenter comme une norme
légale ou comptable, ce qu''elle n''est pas.

## 45:00 – 1:05:00 · Les principes du marketing automation

Passons maintenant au marketing automation. Trois mécanismes à retenir. Le lead scoring attribue un score
croissant à chaque prospect en fonction de ses actions : ouverture d''un courriel, visite d''une page produit,
téléchargement d''un contenu. Plus le score est élevé, plus le prospect est considéré comme « chaud » et prioritaire
pour une relance commerciale humaine. Les scénarios de nurturing sont des séquences automatisées de communication
déclenchées par le comportement du prospect, pour l''accompagner progressivement vers l''achat sans le sursolliciter
trop tôt. La segmentation comportementale regroupe les clients selon leur comportement réel, fréquence d''achat,
montant dépensé, récence du dernier achat, plutôt que selon des critères démographiques statiques, ce qui rend les
communications automatisées plus pertinentes pour chaque groupe.

Pour Jokko Shop, un scénario concret : un client ajoute un article au panier sans finaliser son achat. Un premier
courriel de rappel est envoyé automatiquement 24 heures après. Si l''achat n''est toujours pas finalisé après 72
heures, un second courriel propose une réduction limitée dans le temps pour inciter à la conversion, avant que le
prospect ne retombe dans un segment moins prioritaire s''il reste inactif.

Un point de vigilance à mentionner à l''examen : le marketing automation ne remplace pas la stratégie, il
l''exécute. Programmer des scénarios automatisés sans avoir défini au préalable les segments pertinents et les
messages adaptés à chacun revient à automatiser une erreur de ciblage, et à la répéter à grande échelle plus
rapidement qu''une action manuelle ne l''aurait fait. C''est pourquoi un responsable marketing digital doit toujours
revenir régulièrement sur les règles de scoring et de segmentation définies, pour vérifier qu''elles restent
pertinentes à mesure que le comportement réel des clients évolue, plutôt que de considérer le dispositif comme
définitivement réglé une fois mis en place.

## 1:05:00 – 1:22:00 · Cas d''application et correction commentée

Appliquons tout cela à un nouveau cas. « Teranga Click » dépense 8 000 000 FCFA en publicité digitale sur un
semestre et acquiert 4 000 nouveaux clients. Le panier moyen est de 12 000 FCFA, le taux de marge de 30 %, avec 5
achats par an en moyenne et une durée de vie client de 2,5 ans. Prenez trois minutes pour calculer le CAC, la LTV
et le ratio LTV/CAC avant la correction.

Voici la correction. CAC = 8 000 000 divisé par 4 000, soit 2 000 FCFA. Marge par achat = 12 000 × 0,30 = 3 600
FCFA. LTV = 3 600 × 5 × 2,5. Calculons : 3 600 × 5 = 18 000 ; 18 000 × 2,5 = 45 000 FCFA. Ratio LTV/CAC = 45 000
divisé par 2 000, soit 22,5, toujours très largement supérieur au repère indicatif de 3.

## 1:22:00 – 1:30:00 · Synthèse et évaluation finale

Synthèse : le CAC mesure le coût d''entrée d''un client, la LTV sa valeur dans la durée, leur rapport indique si
l''acquisition est globalement rentable, et le ROAS mesure la performance brute d''une campagne précise sans refléter
directement la marge réelle dégagée. Le marketing automation repose sur le lead scoring, le nurturing et la
segmentation comportementale.

Cinq questions pour conclure. Un : quelle est la formule du CAC ? Réponse : dépenses marketing divisées par nombre
de nouveaux clients acquis. Deux : quelle est la formule simplifiée de la LTV utilisée dans ce cours ? Réponse :
marge par achat multipliée par le nombre d''achats par an multipliée par la durée de vie moyenne en années. Trois :
pourquoi le ROAS doit-il être interprété avec prudence sans connaître le taux de marge de l''entreprise ? Réponse :
parce qu''il porte sur le chiffre d''affaires brut, qui peut masquer une marge réelle faible. Quatre : qu''est-ce que
le lead scoring ? Réponse : un score croissant attribué à chaque prospect selon ses actions, pour prioriser les
prospects les plus avancés. Cinq : pour une entreprise avec un CAC de 1 000 FCFA et une LTV de 18 000 FCFA, quel
est le ratio LTV/CAC, et ce ratio semble-t-il sain par rapport au repère indicatif de 3 ? Réponse : 18 000 divisé
par 1 000, soit 18, largement supérieur à 3. Merci à toutes et à tous, bon travail pour la suite.', 'video', 90, false, 60
from public.courses c where c.slug = 'mas-mkt-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Marketing digital avancé et data marketing');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Innovation et développement de nouveaux produits', '## Fiche du cours vidéo

Durée : 1h30. Public : étudiants de Master 2 Marketing et commerce. Objectifs : savoir dérouler le processus
structuré d''innovation, savoir calculer et interpréter un test de concept avec facteur de prudence, savoir
calculer un délai de retour sur investissement de lancement. Matériel : tableau ou diaporama, calculatrice.
Prérequis : avoir lu la leçon 3 (Innovation et développement de nouveaux produits).

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Bienvenue dans cette séance consacrée à l''innovation et au développement de nouveaux produits, souvent désigné par
l''acronyme NPD. C''est une matière où l''intuition entrepreneuriale doit toujours être disciplinée par un processus
structuré et des calculs de rentabilité, faute de quoi une bonne idée se transforme en échec commercial coûteux.
Nous allons reprendre ensemble le processus en sept étapes, puis travailler en détail le test de concept et
l''analyse économique sur notre cas fictif InnovAgro Sénégal.

## 05:00 – 15:00 · Le processus en sept étapes

Récapitulons les sept étapes : idéation, filtrage des idées, développement et test de concept, analyse économique,
développement du produit, test de marché, lancement commercial complet. Retenez bien l''ordre : on ne lance jamais
un produit directement après l''idéation. Chaque étape sert de filtre, qui élimine les idées les moins solides
avant d''engager davantage de ressources sur les suivantes. C''est précisément ce qui distingue un raisonnement de
Master d''une improvisation entrepreneuriale : vous devez montrer, dans votre copie, que vous suivez ce
cheminement, même si l''énoncé ne vous donne des données que pour certaines étapes.

## 15:00 – 25:00 · Approfondissement : le filtrage des idées

Avant d''arriver au test de concept, l''étape du filtrage des idées mérite un mot d''explication, car un sujet
d''examen peut vous demander de la mobiliser même sans données chiffrées. Le filtrage consiste à confronter chaque
idée issue de l''idéation à des critères simples : cohérence avec la stratégie de l''entreprise, faisabilité
technique approximative, et existence d''un besoin client perçu comme réel par l''équipe projet. Une idée qui échoue
sur l''un de ces critères est écartée avant d''engager le coût, souvent non négligeable, d''un test de concept formel
auprès de consommateurs. Cette étape est souvent oubliée par les étudiants qui passent directement de l''idée
brute au test de concept, alors qu''elle structure justement la sélection préalable des idées qui méritent d''être
testées.

## 25:00 – 42:00 · Le test de concept et la correction du biais d''intention déclarée

Concentrons-nous sur le test de concept. InnovAgro Sénégal teste le concept d''une céréale de petit-déjeuner
enrichie en fer auprès d''un échantillon de 400 ménages représentatifs. Le score top 2 box obtenu, c''est-à-dire la
proportion de répondants ayant déclaré qu''ils achèteraient certainement ou très probablement le produit, est de
46 %.

Voici le point le plus important de cette matière, celui qui distingue un étudiant de Master d''un étudiant de
Licence : on ne peut jamais appliquer directement ce taux déclaré à une prévision de volume. Pourquoi ? Parce que
l''intention d''achat déclarée dans une enquête surestime systématiquement le comportement d''achat réel futur : les
répondants sont influencés par le contexte de l''enquête, par le désir de donner une réponse positive, et par
l''absence de contrainte budgétaire réelle au moment de répondre. On applique donc un facteur de prudence, un
coefficient de conversion que vous devez définir et justifier explicitement dans votre copie, puisqu''il n''existe
pas de valeur officielle universelle. Dans notre cas, nous retenons 0,30.

Calculons : taux d''essai estimé = 46 % × 0,30 = 13,8 %. Le marché cible étant de 500 000 ménages, les ménages en
essai estimés = 500 000 × 0,138 = 69 000 ménages. Ce chiffre de 69 000 ménages, et non les 46 % de départ, est la
base réaliste sur laquelle construire la suite de l''analyse économique.

## 42:00 – 50:00 · Pause quiz interactif

Vérifions votre compréhension. Un test de concept sur 300 ménages donne un score top 2 box de 52 %, pour un
marché cible de 200 000 ménages, avec un facteur de prudence de 0,25. Calculez le nombre de ménages en essai
estimés. Prenez une minute... Correction : taux d''essai estimé = 52 % × 0,25 = 13 % ; ménages en essai estimés =
200 000 × 0,13 = 26 000 ménages. Si vous avez trouvé ce résultat, vous maîtrisez la mécanique du facteur de
prudence.

## 50:00 – 1:08:00 · L''analyse économique du lancement

Passons à l''analyse économique. InnovAgro Sénégal estime l''investissement nécessaire au lancement à 60 000 000
FCFA. La marge dégagée par unité vendue est de 450 FCFA, et les ventes mensuelles prévisionnelles, une fois le
lancement stabilisé, sont estimées à 25 000 unités par mois.

Première étape : la contribution mensuelle, c''est-à-dire la marge totale dégagée chaque mois. Contribution
mensuelle = 450 × 25 000. Calculons : 450 × 25 000 = 11 250 000 FCFA par mois. Deuxième étape : le délai de retour
sur investissement, qui divise l''investissement initial par cette contribution mensuelle. Délai = 60 000 000
divisé par 11 250 000. Ce calcul donne environ 5,33 mois.

Mais attention, l''étape suivante est celle que beaucoup d''étudiants oublient, et c''est elle qui fait toute la
différence en Master : il faut maintenant vérifier la cohérence entre ce volume de 25 000 unités mensuelles
supposé, et les 69 000 ménages en essai estimés par le test de concept sur l''année. Si l''on suppose, par exemple,
que chaque ménage en essai achète en moyenne une unité par mois pendant les premiers mois suivant le lancement, le
volume de 69 000 unités mensuelles potentielles dépasse largement l''hypothèse de 25 000 unités retenue dans
l''analyse économique, ce qui rendrait cette dernière plutôt prudente et donc crédible. Si au contraire le volume
supposé dans l''analyse économique dépassait largement ce que le test de concept permet raisonnablement d''espérer,
il faudrait réviser l''hypothèse avant de recommander le lancement.

## 1:08:00 – 1:24:00 · Cas d''application complet et correction commentée

Appliquons tout cela à un nouveau cas. « Fouta Nutrition » teste le concept d''une boisson énergétique locale
auprès de 350 ménages, avec un score top 2 box de 40 %. Le marché cible est de 350 000 ménages, et le facteur de
prudence retenu est de 0,35. L''investissement nécessaire au lancement est de 50 000 000 FCFA, la marge par unité
de 280 FCFA, et l''on suppose que chaque ménage en essai achète en moyenne 2 unités par mois. Prenez quatre minutes
pour calculer le nombre de ménages en essai estimés, les ventes mensuelles prévisionnelles qui en découlent, et le
délai de retour sur investissement correspondant, avant la correction.

Voici la correction. Taux d''essai estimé = 40 % × 0,35 = 14 %. Ménages en essai estimés = 350 000 × 0,14 = 49 000
ménages. Ventes mensuelles prévisionnelles = 49 000 × 2 = 98 000 unités par mois. Contribution mensuelle = 280 ×
98 000 = 27 440 000 FCFA. Délai de retour sur investissement = 50 000 000 divisé par 27 440 000, soit environ 1,82
mois. Ce délai très court s''explique par un volume mensuel estimé élevé, lui-même dérivé directement du test de
concept : c''est un bon exemple de cas où les trois étapes (test de concept, hypothèse de rythme d''achat, analyse
économique) sont parfaitement articulées entre elles dans le raisonnement.

## 1:24:00 – 1:30:00 · Synthèse et évaluation finale

Synthèse : le processus d''innovation se déroule toujours en sept étapes ordonnées ; le test de concept doit
toujours être corrigé par un facteur de prudence explicite et justifié avant de devenir une prévision de volume ;
et l''analyse économique du lancement doit toujours être reliée à cette prévision de volume issue du test de
concept, jamais traitée comme un calcul isolé.

Avant les cinq questions, un dernier rappel de méthode : à l''examen, ne présentez jamais un chiffre de test de
concept ou un délai de retour sur investissement sans l''accompagner d''une phrase de commentaire qui le relie à la
décision à prendre. Un correcteur de Master distingue immédiatement une copie qui « sait calculer » d''une copie
qui « sait décider à partir d''un calcul » : c''est cette seconde compétence qui est réellement évaluée.

Cinq questions pour conclure. Un : citez les sept étapes du processus de développement de nouveaux produits.
Réponse : idéation, filtrage, développement et test de concept, analyse économique, développement du produit, test
de marché, lancement commercial. Deux : pourquoi applique-t-on un facteur de prudence au score top 2 box ? Réponse
: parce que l''intention d''achat déclarée surestime systématiquement le comportement d''achat réel. Trois : pour un
investissement de 30 000 000 FCFA, une marge de 500 FCFA par unité et des ventes mensuelles de 10 000 unités, quel
est le délai de retour sur investissement ? Réponse : contribution mensuelle = 5 000 000 FCFA ; délai = 30 000 000
divisé par 5 000 000, soit 6 mois. Quatre : pourquoi faut-il confronter le volume supposé dans l''analyse économique
à la prévision issue du test de concept ? Réponse : pour vérifier que l''hypothèse de volume retenue est crédible et
ne surestime pas la demande réelle. Cinq : qu''est-ce qu''un score top 2 box ? Réponse : la proportion de répondants
ayant choisi l''une des deux réponses les plus positives de l''échelle d''intention d''achat. Merci à toutes et à
tous, bon travail pour la suite.', 'video', 90, false, 70
from public.courses c where c.slug = 'mas-mkt-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Innovation et développement de nouveaux produits');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Méthodologie du mémoire professionnel', '## Fiche du cours vidéo

Durée : 1h30. Public : étudiants de Master 2 Marketing et commerce rédigeant leur mémoire professionnel.
Objectifs : savoir structurer un mémoire professionnel en cinq parties, savoir formuler une problématique bien
calibrée, et comprendre les exigences de rigueur de la revue de littérature. Matériel : tableau ou diaporama, un
exemple de plan de mémoire. Prérequis : avoir lu la leçon 4 (Méthodologie du mémoire professionnel et soutenance).

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Bienvenue dans cette séance consacrée à la méthodologie du mémoire professionnel. Contrairement aux deux séances
précédentes, il n''y a pas ici de calcul à proprement parler : la compétence centrale est la rigueur de
construction d''un raisonnement écrit, depuis la formulation de la problématique jusqu''aux recommandations finales.
C''est une compétence tout aussi exigeante, et souvent plus déterminante pour votre réussite globale en M2 que
n''importe quel calcul chiffré, puisque le mémoire représente généralement un coefficient important de votre année.

## 05:00 – 20:00 · La structure en cinq parties, expliquée en détail

Reprenons la structure type. Première partie, l''introduction : elle présente le contexte de l''entreprise
d''accueil, formule la problématique précise, et annonce le plan du mémoire. Ne négligez jamais cette annonce de
plan : elle guide la lecture du jury et montre que votre raisonnement est maîtrisé de bout en bout avant même
d''être développé. Deuxième partie, la revue de littérature courte : vous situez votre problématique par rapport à
deux ou trois concepts ou courants de référence, sans jamais inventer une citation ou une date précise que vous ne
maîtrisez pas avec certitude. Troisième partie, la méthodologie : vous expliquez comment vous avez recueilli vos
données, entretiens, données internes, observation, et vous en reconnaissez honnêtement les limites. Quatrième
partie, les résultats et leur analyse : vous présentez factuellement ce que vous avez observé, puis vous
l''interprétez à la lumière des concepts mobilisés en deuxième partie. Cinquième partie, les recommandations
opérationnelles et la conclusion : des propositions concrètes et réalistes pour l''entreprise, puis un retour sur
la problématique initiale.

## 20:00 – 40:00 · La problématique : l''étape la plus décisive

Arrêtons-nous longuement sur la problématique, car une problématique mal calibrée condamne tout le reste du
mémoire, même si l''étudiant travaille ensuite avec sérieux. Une problématique trop large, comme « comment
améliorer le marketing de l''entreprise ? », ne permet pas un travail rigoureux : elle ouvre sur un champ
d''investigation impossible à traiter sérieusement dans le temps imparti, et conduit presque toujours à un mémoire
superficiel qui survole plusieurs sujets sans en approfondir aucun. Une problématique trop étroite ou purement
descriptive, comme « quelles actions de communication l''entreprise a-t-elle menées cette année ? », ne laisse pas
de place à l''analyse : elle se contente de décrire des faits sans jamais les interroger ni les relier à des
concepts.

Une problématique bien calibrée combine toujours trois éléments : une variable d''action sur laquelle on peut
raisonnablement agir (un levier marketing précis), un indicateur mesurable qui permet de juger l''effet de cette
action, et un contexte suffisamment précis pour rendre l''analyse réaliste et ancrée dans la réalité de
l''entreprise d''accueil. Reprenons notre exemple : « Dans quelle mesure la mise en place d''un programme de
fidélité peut-elle réduire le taux d''attrition des clients de l''entreprise X, compte tenu des contraintes
logistiques du marché sénégalais ? ». La variable d''action est le programme de fidélité, l''indicateur mesurable
est le taux d''attrition, et le contexte précis est celui des contraintes logistiques locales. Vous voyez que
chacun des trois éléments répond à une question différente : sur quoi agit-on, comment mesure-t-on l''effet, et
dans quel contexte particulier se situe l''analyse.

## 40:00 – 45:00 · Pause quiz interactif

Testons votre compréhension. Je vous donne une problématique fictive : « Le marketing digital est-il efficace ? ».
Est-elle bien calibrée ? Pourquoi ? Réponse : non, elle est beaucoup trop large et vague ; elle ne précise ni la
variable d''action (quel levier digital précisément ?), ni l''indicateur mesurable, ni le contexte d''une entreprise
particulière. Il faudrait la reformuler, par exemple en précisant un canal digital précis, un indicateur de
performance mesurable, et l''entreprise d''accueil concernée.

## 45:00 – 1:05:00 · La rigueur de la revue de littérature et de la méthodologie

Insistons maintenant sur un point de rigueur essentiel : n''inventez jamais une citation précise, un nom d''auteur
ou une date que vous ne maîtrisez pas avec certitude absolue. Un jury compétent dans la matière repère
immédiatement une référence inexacte, et cela nuit à la crédibilité de l''ensemble de votre travail, bien plus
qu''une évocation sobre et correcte d''un concept sans attribution précise. Si vous souhaitez mobiliser le débat
entre standardisation et adaptation en marketing international, par exemple, vous pouvez l''évoquer comme un
courant de pensée reconnu du marketing international, sans citer un auteur et une date dont vous n''êtes pas
absolument certain.

Concernant la méthodologie, reconnaissez toujours honnêtement ses limites : un échantillon d''entretiens limité en
nombre, une période d''observation courte, un accès restreint à certaines données internes de l''entreprise. Un
jury valorise davantage un étudiant qui reconnaît lucidement les limites de son travail qu''un étudiant qui
prétend, de façon peu crédible, avoir mené une étude parfaitement exhaustive en quelques mois de stage.

Précisons également le choix entre méthodes qualitatives et quantitatives, fréquemment demandé en soutenance. Des
entretiens individuels avec des responsables de l''entreprise permettent de comprendre en profondeur des
mécanismes internes complexes, mais sur un petit nombre de personnes, non représentatif statistiquement. Une
enquête quantitative auprès de clients permet au contraire de mesurer une tendance sur un échantillon plus large,
mais explore moins en profondeur les raisons sous-jacentes d''un comportement. Le choix dépend de la nature de la
problématique : une problématique portant sur la perception interne d''un processus appelle plutôt des entretiens
qualitatifs, tandis qu''une problématique portant sur un comportement client mesurable à grande échelle appelle
plutôt une enquête quantitative, éventuellement complétée par quelques entretiens qualitatifs pour en éclairer les
résultats chiffrés.

## 1:00:00 – 1:05:00 · Les recommandations opérationnelles : la partie la plus attendue par l''entreprise

Un mot avant l''exercice guidé sur la cinquième partie du mémoire, les recommandations opérationnelles, souvent la
partie la plus lue en priorité par l''entreprise d''accueil elle-même. Une bonne recommandation n''est jamais une
idée générale non chiffrée (« il faudrait communiquer davantage ») : elle précise une action concrète, un ordre
de grandeur de coût ou de ressources nécessaires, même approximatif, et un indicateur de suivi qui permettra à
l''entreprise de vérifier, après mise en œuvre, si la recommandation a porté ses fruits. Une recommandation qui ne
peut pas être suivie dans le temps par un indicateur n''est pas vraiment opérationnelle, même si elle est
intéressante sur le plan des idées.

## 1:05:00 – 1:22:00 · Application : construire et critiquer une problématique

Exercice guidé : construisons ensemble une problématique pour un étudiant fictif en stage chez une entreprise de
e-commerce de cosmétiques. Partons d''une première version trop vague : « Comment Diambars Cosmétique peut-elle
mieux vendre en ligne ? ». Identifions ensemble ce qui manque : aucune variable d''action précise, aucun
indicateur mesurable, un contexte qui n''est pas suffisamment précisé. Reformulons progressivement : d''abord en
précisant la variable d''action, par exemple une campagne de marketing automation par courriel ; puis l''indicateur
mesurable, par exemple le taux de réachat des clientes existantes ; puis le contexte, par exemple le taux
d''équipement limité en moyens de paiement électroniques de la clientèle cible. On obtient : « Dans quelle mesure
une campagne de marketing automation par courriel peut-elle améliorer le taux de réachat des clientes de Diambars
Cosmétique, compte tenu du taux d''équipement limité en moyens de paiement électroniques de sa clientèle ? ».
Comparez cette version à la version initiale : elle est désormais traitable par une analyse rigoureuse en temps
limité.

## 1:22:00 – 1:30:00 · Synthèse et évaluation finale

Synthèse : un mémoire professionnel suit une structure en cinq parties ; sa réussite dépend avant tout de la
qualité de la problématique, qui doit combiner variable d''action, indicateur mesurable et contexte précis ; et la
rigueur méthodologique exige de ne jamais inventer de référence ou de citation non maîtrisée, et de reconnaître
honnêtement les limites de son travail.

Cinq questions pour conclure. Un : citez les cinq parties de la structure type d''un mémoire professionnel. Réponse
: introduction, revue de littérature courte, méthodologie, résultats et analyse, recommandations et conclusion.
Deux : quels sont les trois éléments d''une problématique bien calibrée ? Réponse : une variable d''action, un
indicateur mesurable, un contexte précis. Trois : pourquoi une problématique trop large est-elle risquée ? Réponse
: elle conduit à un mémoire superficiel qui survole plusieurs sujets sans en approfondir aucun. Quatre : que
risque-t-on en citant un auteur et une date inexacts ? Réponse : nuire à la crédibilité de l''ensemble du travail
devant un jury compétent. Cinq : comment un jury perçoit-il un étudiant qui reconnaît honnêtement les limites de
sa méthodologie ? Réponse : plutôt positivement, car cela traduit une maturité professionnelle et une rigueur
intellectuelle, contrairement à une prétention d''exhaustivité peu crédible. Merci à toutes et à tous, bon travail
pour la rédaction de votre mémoire.', 'video', 90, false, 80
from public.courses c where c.slug = 'mas-mkt-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Méthodologie du mémoire professionnel');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Atelier — préparer sa soutenance de mémoire', '## Fiche du cours vidéo

Durée : 1h30. Public : étudiants de Master 2 Marketing et commerce en fin de rédaction de leur mémoire
professionnel. Objectifs : s''entraîner concrètement à la présentation orale de soutenance, anticiper les
questions types d''un jury, et s''exercer à la gestion du temps et du stress. Matériel : tableau ou diaporama,
chronomètre, grille d''autoévaluation. Prérequis : avoir un plan de mémoire déjà rédigé, même provisoire, et avoir
visionné le cours vidéo précédent sur la méthodologie du mémoire.

## Déroulé minuté

## 00:00 – 05:00 · Introduction à l''atelier

Bienvenue dans ce quatrième et dernier cours vidéo de votre préparation au Master 2, un atelier entièrement
consacré à la préparation pratique de votre soutenance de mémoire. Ce n''est pas un cours de transmission de
nouvelles notions : c''est un entraînement actif, où je vous propose de simuler, étape par étape, les moments clés
d''une soutenance réelle, à partir d''un mémoire fictif que nous allons suivre ensemble, celui de notre étudiante
imaginaire travaillant sur le cas de Diambars Cosmétique déjà évoqué dans le cours précédent.

## 05:00 – 15:00 · Construire le plan de sa présentation orale en dix minutes

Premier exercice : construire, en seulement dix minutes, le plan de votre présentation orale, qui ne doit jamais
être la simple table des matières de votre mémoire écrit lu à voix haute. Un plan de présentation efficace suit
généralement cinq temps : une minute pour présenter l''entreprise d''accueil et le contexte du stage ; deux minutes
pour poser la problématique et expliquer pourquoi elle est pertinente pour l''entreprise ; trois minutes pour
résumer la méthodologie et les principaux résultats observés ; trois minutes maximum pour développer vos
recommandations opérationnelles, qui sont souvent ce que le jury et l''entreprise retiennent le plus ; et une
minute de conclusion personnelle sur les apports du stage pour votre propre parcours. Notez bien que ce découpage
tient en quatorze minutes, ce qui laisse une marge de sécurité sur un temps de présentation généralement fixé
entre quinze et vingt minutes.

## 15:00 – 30:00 · Exercice pratique : la minute de présentation du contexte

Prenons le temps de nous exercer sur le premier élément, souvent sous-estimé : la minute de présentation du
contexte. Beaucoup d''étudiants passent cinq minutes à présenter l''entreprise en détail, ce qui n''intéresse pas
réellement le jury et empiète sur le temps consacré à l''analyse. Exercice : en une minute chronométrée, présentez
à voix haute le contexte suivant : « Diambars Cosmétique est une entreprise sénégalaise de vente en ligne de
cosmétiques, fondée il y a cinq ans, confrontée à un taux de réachat de ses clientes jugé insuffisant par la
direction ». Entraînez-vous à dire cela, puis à enchaîner directement sur votre problématique, sans vous perdre
dans des détails secondaires sur l''historique complet de l''entreprise.

## 30:00 – 35:00 · Pause quiz interactif

Petit quiz avant de poursuivre. Un : combien de temps dure généralement une soutenance de mémoire professionnel de
M2, présentation et questions comprises ? Deux : quelle est l''erreur la plus fréquente dans la présentation du
contexte de l''entreprise ? Trois : quelle partie de la présentation orale est souvent la plus regardée par
l''entreprise d''accueil elle-même ? Réponses : un, entre trente et quarante-cinq minutes au total. Deux, y passer
trop de temps au détriment de l''analyse et des recommandations. Trois, les recommandations opérationnelles.

## 35:00 – 1:00:00 · Simulation de questions de jury et entraînement aux réponses

Passons maintenant au cœur de l''atelier : la simulation de questions de jury. Je vais vous poser, comme le ferait
un membre de jury, trois questions typiques, et nous allons construire ensemble une réponse de qualité à chacune.

Première question : « Comment avez-vous mesuré le taux de réachat avant la mise en place de votre recommandation ?
». Une bonne réponse précise la source exacte des données (export des commandes internes de l''entreprise sur une
période donnée), la période de référence retenue, et éventuellement une limite reconnue (données disponibles sur
une période courte, ne permettant pas d''observer un effet saisonnier complet).

Deuxième question : « Votre recommandation de campagne de marketing automation est-elle financièrement
soutenable pour une entreprise de cette taille ? ». Une bonne réponse relie la recommandation à un ordre de
grandeur de coût, même approximatif (par exemple le coût d''un outil d''automatisation et le temps nécessaire à sa
mise en place), et à un bénéfice attendu chiffré ou au moins qualifié (hausse espérée du taux de réachat, sans
sur-promettre un chiffre précis non vérifié).

Troisième question, la plus redoutée : « Quelles limites reconnaissez-vous à votre travail ? ». La meilleure
stratégie face à cette question n''est jamais de prétendre que le travail est parfait, ce qui est toujours perçu
comme peu crédible par un jury expérimenté, mais de reconnaître une ou deux limites précises et réfléchies, par
exemple un échantillon d''entretiens restreint ou une période d''observation trop courte pour conclure
définitivement, tout en expliquant comment ces limites pourraient être levées dans un travail ultérieur.

## Entraînement complémentaire : une quatrième question de jury

Avant de passer à la gestion du stress, ajoutons une quatrième question typique, souvent posée en fin d''échange :
« Si vous deviez refaire ce stage et ce mémoire, que feriez-vous différemment ? ». Cette question teste votre
capacité de recul critique sur votre propre travail, au-delà de la simple défense de ce qui a déjà été fait. Une
bonne réponse identifie un choix méthodologique précis que l''on referait différemment avec le recul (par exemple
mener l''enquête quantitative plus tôt dans le stage pour disposer de davantage de temps pour l''analyser), sans
pour autant dévaloriser l''ensemble du travail réalisé : il s''agit de montrer une capacité de recul professionnel,
pas de remettre en cause la validité générale du mémoire soutenu.

## 1:00:00 – 1:15:00 · Gestion du stress et du temps pendant les questions

Un point souvent négligé dans la préparation : la gestion du temps et du stress pendant la phase de questions
elle-même, pas seulement pendant la présentation. Quelques réflexes à intégrer : prenez toujours deux à trois
secondes de réflexion silencieuse avant de répondre à une question difficile, plutôt que de commencer à parler
immédiatement sans avoir structuré votre réponse dans votre tête ; si une question contient plusieurs sous-
questions, répondez-y une par une, explicitement annoncées (« sur le premier point... », « sur le second point...
») plutôt que de répondre de façon confuse et mélangée ; et si vous ne connaissez réellement pas la réponse à une
question précise, dites-le honnêtement plutôt que d''improviser une réponse inventée qui risquerait d''être
démontée par une question de relance du jury.

## 1:15:00 – 1:25:00 · Grille d''autoévaluation avant le jour J

Avant la synthèse finale, voici une grille d''autoévaluation à utiliser dans les jours précédant votre soutenance.
Vérifiez que vous savez répondre, sans notes, aux questions suivantes : pourquoi avoir choisi cette problématique
précise plutôt qu''une autre ? Quelle est la donnée la plus importante de vos résultats, et pourquoi ? Quelle
recommandation défendriez-vous en priorité si le jury ne vous laissait le temps d''en présenter qu''une seule ?
Quelle est la limite la plus sérieuse de votre travail, et comment la corrigeriez-vous avec plus de temps ou de
moyens ? Si vous hésitez sur l''une de ces quatre questions, c''est le signal qu''il faut retravailler cette partie
avant le jour de la soutenance plutôt que de compter sur l''improvisation. Faites cet exercice si possible à voix
haute, seul ou devant un camarade de promotion qui jouera le rôle du jury, car la formulation orale d''une réponse
mobilise des réflexes différents de sa simple relecture silencieuse dans votre tête.

## 1:25:00 – 1:30:00 · Synthèse et évaluation finale

Synthèse de cet atelier : une présentation orale efficace ne récite jamais le mémoire écrit, elle met en valeur la
problématique, les résultats clés et les recommandations ; la phase de questions se prépare par la simulation des
questions les plus probables, notamment sur la méthodologie, la faisabilité des recommandations et les limites du
travail ; et la gestion du stress passe par des réflexes simples, prendre le temps de structurer sa réponse,
traiter les sous-questions une par une, et reconnaître honnêtement ce que l''on ne sait pas.

Cinq questions pour conclure cette préparation. Un : quelle est la durée approximative d''une minute bien calibrée
de présentation du contexte de l''entreprise ? Réponse : une minute, sans développer l''historique complet de
l''entreprise. Deux : que doit toujours contenir une bonne réponse sur la faisabilité financière d''une
recommandation ? Réponse : un ordre de grandeur de coût, même approximatif, et un bénéfice attendu chiffré ou
qualifié. Trois : comment traiter une question de jury contenant plusieurs sous-questions ? Réponse : y répondre
une par une, explicitement annoncées. Quatre : que faire si l''on ne connaît pas la réponse à une question précise
du jury ? Réponse : le reconnaître honnêtement plutôt que d''improviser une réponse inventée. Cinq : citez une des
quatre questions de la grille d''autoévaluation proposée. Réponse : par exemple, « pourquoi avoir choisi cette
problématique précise plutôt qu''une autre ? ». Bon courage à toutes et à tous pour vos soutenances de Master 2.', 'video', 90, false, 90
from public.courses c where c.slug = 'mas-mkt-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Atelier — préparer sa soutenance de mémoire');

-- Cours : Logistique et transport Master 1 : reussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'mas-log-m1', (select id from public.levels where name = 'Master 1'), null, 'Logistique et transport', 'Logistique et transport Master 1 : reussir ses examens', 'Preparation aux examens de Master 1 en Logistique et transport : supply chain management global et pilotage international, optimisation logistique avancee (localisation, reseaux, tournees), gestion des risques logistiques et continuite d''activite. Cas d''entreprises senegalaises et africaines fictifs, calculs verifies, sujet type et atelier transversal filé. Public : etudiants de Master 1 en logistique, transport ou supply chain.', true, 791
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Reussir ses examens de Master 1 en logistique et transport', 'Le Master 1 en Logistique et Transport marque une rupture nette avec la Licence. Vous ne revisez plus des notions isolees (un mode de transport, une formule de stock) : on vous demande desormais de piloter un systeme entier - une chaine logistique internationale, un reseau de distribution, un portefeuille de risques - et de justifier chaque decision par une analyse chiffree et une argumentation de gestionnaire. Les correcteurs attendent une posture de futur cadre logistique ou consultant supply chain, capable de trancher en situation d''incertitude, avec des donnees incompletes, des objectifs parfois contradictoires (cout, service, delai, risque) et une dimension internationale quasi systematique.

Cette annee de M1 repose sur trois piliers que vous retrouverez dans les examens, les etudes de cas et le memoire : le Supply Chain Management (SCM) global, c''est-a-dire le pilotage integre d''une chaine qui traverse plusieurs pays, plusieurs devises, plusieurs reglementations ; l''optimisation logistique avancee, qui mobilise des modeles quantitatifs (localisation d''entrepots, tournees de vehicules, reseaux de distribution) pour reduire les couts tout en maintenant le niveau de service ; et la gestion des risques logistiques, qui vous apprend a anticiper les ruptures (portuaires, fournisseurs, climatiques, systemes d''information) et a construire un plan de continuite d''activite credible.

## Les specificites du Master 1 : du cas isole a la decision systemique

En Licence, un exercice vous demandait par exemple de calculer une quantite economique de commande. En Master 1, l''exercice devient : « Teranga Global Foods SA exporte de la mangue sechee vers l''Europe via trois pays d''approvisionnement ; son cash-to-cash cycle se degrade, son taux de service (OTIF) baisse, et un risque de congestion portuaire menace sa campagne de haute saison. Vous etes analyste supply chain : proposez un diagnostic et un plan d''action chiffre. » Il n''y a plus une seule bonne reponse technique : il y a une recommandation argumentee, fondee sur des indicateurs (OTIF, cash-to-cash cycle, effet coup de fouet, EMV des risques) et sur une hierarchisation des priorites compte tenu des contraintes de l''entreprise fictive presentee dans le sujet.

Trois exigences methodologiques structurent desormais vos copies : l''analyse critique (discuter les hypotheses d''un modele, par exemple le fait que le centre de gravite suppose un cout de transport proportionnel a la distance, hypothese fragile en Afrique de l''Ouest) ; le cas d''entreprise complexe (sujets avec plusieurs sites, contraintes reelles de saisonnalite ou de douane qui obligent a trier l''information) ; et la prise de decision en incertitude (raisonner en esperance de perte EMV ou en scenarios, plutot qu''avec des donnees certaines).

## Les matieres de l''annee et leur articulation

- Supply chain management global et pilotage de la chaine logistique internationale : vous apprenez a cartographier une chaine multi-pays, a mesurer sa performance avec des indicateurs integres (SCOR, OTIF, cash-to-cash cycle) et a diagnostiquer l''effet coup de fouet (bullwhip effect) qui deforme la demande le long de la chaine.
- Optimisation logistique avancee : vous mobilisez des modeles de localisation (centre de gravite, methode des couts totaux) pour choisir l''implantation d''un entrepot, et des modeles de tournees (algorithme des gains de Clarke et Wright) pour reduire les kilometres parcourus par une flotte de livraison.
- Gestion des risques logistiques et continuite d''activite : vous construisez une matrice des risques (probabilite x impact), calculez une esperance de perte monetaire (EMV) et redigez les grandes lignes d''un plan de continuite d''activite (PCA) logistique.

Ces trois matieres s''articulent autour d''un meme fil directeur : une chaine logistique internationale performante (matiere 1) doit etre a la fois optimisee sur le plan des couts et des flux (matiere 2) et robuste face aux chocs (matiere 3). Un sujet d''examen complet melange souvent les trois : par exemple, une decision d''optimisation de reseau (fermer un entrepot pour en ouvrir un plus central) doit etre evaluee a la fois sur son impact economique et sur le risque qu''elle cree ou qu''elle reduit (dependance accrue a un seul site, par exemple).

## Methode de travail avancee : etude de cas, business case, revue de litterature

Trois exercices intellectuels reviennent constamment en Master. L''etude de cas complexe consiste a lire un cas d''entreprise de deux a quatre pages, en extraire les donnees utiles (souvent noyees parmi des informations secondaires), identifier le ou les problemes de gestion, et structurer une reponse en diagnostic puis recommandations chiffrees. La technique efficace est de surligner trois categories d''information en lisant : les chiffres, les contraintes, et les objectifs affiches par la direction.

Le business case (etude de rentabilite d''un projet) vous demande de comparer un investissement (systeme d''information, entrepot, plan de continuite) a ses benefices attendus, a l''aide d''indicateurs comme le payback, la valeur actuelle nette (VAN) ou le taux de rentabilite interne (TRI). Explicitez toujours les hypotheses retenues (taux d''actualisation, horizon) : c''est souvent sur leur justification, plus que sur le calcul lui-meme, que le correcteur evalue votre maturite.

La revue de litterature consiste a mobiliser les modeles du cours (SCOR, Kraljic, centre de gravite, matrice des risques) en discutant leurs limites, plutot qu''a les reciter. Un bon devoir cite un modele, l''applique au cas, puis en discute une limite pertinente (par exemple : le centre de gravite suppose un cout lineaire a la distance, hypothese fragile sur le corridor Dakar-Bamako ou le dedouanement pese davantage que la distance).

## Plan de revision sur six semaines

- Semaines 1-2 : SCM global et pilotage international (lecon 2) : indicateurs, cash-to-cash cycle, effet coup de fouet, calculs refaits a la main.
- Semaines 3-4 : optimisation logistique avancee (lecon 3) : centre de gravite, algorithme des gains, reseaux de distribution, entrainement sur des donnees differentes du cours.
- Semaine 5 : gestion des risques et continuite d''activite (lecon 4) : matrice des risques, EMV, structure d''un PCA ; relecture transversale des liens entre les trois matieres.
- Semaine 6 : sujet type (lecon 5) en conditions d''examen chronometrees, puis revision des quatre cours video (quiz et evaluations finales sans regarder le corrige avant d''avoir termine).

## Points cles a retenir

- Le Master 1 exige une vision systemique : chaque decision logistique doit etre analysee sous trois angles - performance (indicateurs), optimisation economique (modeles), et risque (continuite d''activite).
- Les sujets presentent des cas d''entreprise fictifs complexes : la competence a extraire l''information pertinente compte autant que la maitrise technique des formules.
- Toute recommandation doit etre chiffree et les hypotheses explicitees ; un calcul juste sans interpretation de gestion ne suffit plus a obtenir une bonne note.
- Le plan de revision doit consacrer un temps specifique a l''entrainement sur cas nouveaux, pas seulement a la relecture des cours.

## Exercices pratiques

1. Quelle difference majeure entre un exercice de Licence et un exercice de Master 1 sur le meme theme logistique ?
2. Cash-to-cash cycle de 45 jours = 52 jours de stock + 38 jours client - X jours fournisseur. Trouvez X.
3. Citez les trois matieres du M1 et, pour chacune, un exemple de decision qu''elle eclaire.
4. Donnez un exemple de limite du modele du centre de gravite appliquee au Senegal.
5. Proposez un planning resserre pour un etudiant disposant de huit heures par semaine.

## Corrige

1. En Licence, l''exercice isole une formule sur des donnees fournies. En Master 1, le meme theme est integre dans un cas complet : il faut identifier les donnees pertinentes dans un texte, relier la decision a d''autres enjeux (service, risque, cout), et justifier une recommandation de gestion, pas seulement un chiffre.
2. Cash-to-cash = jours de stock + jours client - jours fournisseur, donc 45 = 52 + 38 - X, soit X = 45 jours de credit fournisseur.
3. SCM global : regrouper les achats de plusieurs filiales pour ameliorer le cash-to-cash cycle. Optimisation avancee : choisir la localisation d''un nouvel entrepot regional. Gestion des risques : investir dans un double sourcing pour reduire la dependance a un seul fournisseur.
4. Reciter un modele sans le discuter ne correspond pas au niveau Master. Limite du centre de gravite au Senegal : il suppose un cout proportionnel a la distance a vol d''oiseau, alors que l''etat des routes et les delais de dedouanement font que deux trajets de meme distance peuvent couter tres differemment.
5. Deux heures par semaine pour chaque matiere (SCM, optimisation, risques) et deux heures d''entrainement sur sujets, en se concentrant sur les points essentiels plutot que sur l''exhaustivite, avec priorite aux exercices chiffres.', 'texte', 45, true, 10
from public.courses c where c.slug = 'mas-log-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Reussir ses examens de Master 1 en logistique et transport');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Supply chain management global et pilotage de la chaine logistique internationale : l''essentiel pour l''examen', 'Objectifs de la lecon : comprendre la logique d''une chaine logistique internationale integree, savoir calculer et interpreter les indicateurs de pilotage global (OTIF, cash-to-cash cycle), diagnostiquer l''effet coup de fouet (bullwhip effect) et proposer des leviers de coordination entre les acteurs d''une chaine multi-pays.

## Notions : qu''est-ce qu''un SCM global ?

Le Supply Chain Management (SCM) global designe le pilotage integre de l''ensemble des flux (physiques, d''information, financiers) depuis les fournisseurs de matieres premieres jusqu''au client final, lorsque ces flux traversent plusieurs pays et plusieurs devises. A la difference d''une chaine logistique nationale, le SCM global doit composer avec des reglementations douanieres differentes (regime UEMOA entre pays membres, droits de douane et taxes vers les pays tiers), des devises multiples (FCFA, euro, dollar) et des delais de transport variables (maritime, routier inter-etats, aerien pour les produits a forte valeur ou perissables).

Le modele SCOR (Supply Chain Operations Reference) structure cette chaine en cinq processus : Plan (planification de la demande et des ressources), Source (approvisionnement), Make (production ou transformation), Deliver (livraison) et Return (retours). Ce decoupage permet de localiser precisement ou se situe un dysfonctionnement : un retard de livraison peut venir d''un probleme de planification (mauvaise prevision de la demande), d''approvisionnement (rupture fournisseur) ou de livraison (congestion portuaire).

## Cas d''entreprise : Teranga Global Foods SA

Teranga Global Foods SA est une entreprise fictive senegalaise qui transforme et exporte de la mangue sechee et de l''arachide decortiquee vers l''Europe. Elle s''approvisionne en fruits frais au Senegal et au Mali, fait transformer une partie de sa production sous-traitee en Cote d''Ivoire, et exporte le produit fini par voie maritime depuis le port de Dakar. La direction constate une degradation de sa tresorerie et des retards de livraison repetes chez son principal client europeen, sans comprendre d''ou vient le probleme.

## Methode : les indicateurs de pilotage integre

Le premier indicateur a calculer est le cash-to-cash cycle (cycle de conversion de tresorerie), qui mesure le nombre de jours entre le paiement des fournisseurs et l''encaissement des clients. Il se calcule ainsi : cash-to-cash = DIO (jours de stock) + DSO (jours de credit client) - DPO (jours de credit fournisseur). Pour Teranga Global Foods SA, les donnees comptables donnent un DIO de 52 jours, un DSO de 38 jours et un DPO de 45 jours, soit un cash-to-cash cycle de 52 + 38 - 45 = 45 jours : l''entreprise finance pendant 45 jours, sur sa propre tresorerie, le decalage entre ce qu''elle paie a ses fournisseurs et ce qu''elle encaisse de ses clients. Plus ce chiffre est eleve, plus l''entreprise doit immobiliser de capital pour faire fonctionner sa chaine logistique internationale ; c''est un indicateur central pour une direction financiere.

Le deuxieme indicateur est le taux de service OTIF (On Time In Full), qui mesure la proportion de livraisons effectuees a la fois a temps et completes (sans manquant ni erreur de quantite). Sur 1 240 livraisons realisees au cours du semestre, 1 066 ont ete a la fois a l''heure et completes, soit un OTIF de 1066 / 1240 = 86,0 pourcent. Un OTIF de 86 pourcent signifie que 14 pourcent des livraisons posent un probleme de delai ou de completude, ce qui, pour un client europeen exigeant, peut entrainer des penalites contractuelles ou, a terme, la perte du contrat.

## Le diagnostic de l''effet coup de fouet (bullwhip effect)

L''effet coup de fouet designe l''amplification de la variabilite de la demande au fur et a mesure qu''elle remonte la chaine logistique, du client final vers les fournisseurs amont. Il se mesure en comparant la variance des commandes transmises a un echelon de la chaine a la variance de la demande reelle du client final. Sur huit semaines, la demande reelle du client europeen varie faiblement (100, 104, 98, 106, 96, 103, 99, 102 tonnes), avec une variance de 9,75. Mais les commandes que le distributeur europeen transmet a Teranga Global Foods SA, elles, oscillent beaucoup plus (95, 112, 90, 115, 88, 110, 93, 108 tonnes), avec une variance de 104,48. Le ratio bullwhip (variance des commandes / variance de la demande) est de 104,48 / 9,75, soit environ 10,7 : les commandes transmises a l''amont sont amplifiees plus de dix fois par rapport a la demande reelle.

Cette amplification s''explique par trois mecanismes classiques : les commandes par lots (le distributeur groupe ses commandes pour reduire ses couts de passation, creant des pics artificiels), l''anticipation de penurie (chaque acteur commande un peu plus par precaution), et le manque de partage d''information (Teranga Global Foods SA ne voit que les commandes deformees, pas la demande finale reelle). Les leviers sont le partage d''information en temps reel, la reduction de la taille des lots, et la stabilisation des prix (eviter les promotions qui creent des pics artificiels).

## Recommandations pour Teranga Global Foods SA

Face a ce diagnostic, trois recommandations peuvent etre formulees. D''abord, mettre en place un partage d''information avec le distributeur europeen (acces aux ventes reelles en magasin, pas seulement aux commandes) pour attenuer l''effet coup de fouet et ameliorer la fiabilite des previsions. Ensuite, reduire le cash-to-cash cycle en renegociant les delais de paiement fournisseurs (augmenter le DPO) ou en accelerant l''encaissement client (reduire le DSO), ce qui liberera de la tresorerie sans changer les operations physiques. Enfin, ameliorer l''OTIF en identifiant, grace au modele SCOR, si les retards viennent de la planification, de l''approvisionnement ou de la livraison maritime, pour cibler l''action corrective au bon endroit de la chaine.

## Points cles a retenir

- Le SCM global pilote des flux qui traversent plusieurs pays, devises et reglementations ; le modele SCOR (Plan, Source, Make, Deliver, Return) aide a localiser un dysfonctionnement.
- Le cash-to-cash cycle (DIO + DSO - DPO) mesure le besoin de tresorerie lie au cycle d''exploitation ; l''OTIF mesure la fiabilite du service client.
- L''effet coup de fouet amplifie la variabilite de la demande en remontant la chaine ; il se reduit par le partage d''information, la reduction des lots et la stabilisation des prix.
- Une recommandation de Master doit relier le diagnostic chiffre (indicateurs) a des leviers d''action concrets et realistes pour l''entreprise etudiee.

## Exercices pratiques

1. Une entreprise a un DIO de 60 jours, un DSO de 30 jours et un DPO de 50 jours. Calculez son cash-to-cash cycle et interpretez le resultat.
2. Sur 900 livraisons, 774 ont ete a temps et completes. Calculez l''OTIF et commentez.
3. Expliquez, en citant le modele SCOR, comment localiser l''origine d''un retard de livraison recurrent.
4. Citez trois mecanismes qui expliquent l''effet coup de fouet et, pour chacun, un levier de reduction.
5. Cas pratique complet : Sahel Textile Export SA (fictive) exporte du tissu wax vers la CEDEAO. DIO 70 jours, DSO 45 jours, DPO 40 jours. Sur 600 livraisons, 480 sont a temps et completes. Variance de la demande reelle : 12 ; variance des commandes au fournisseur de coton : 96. Calculez les trois indicateurs et proposez deux recommandations.
6. Pourquoi un cash-to-cash cycle eleve penalise-t-il davantage une PME exportatrice qu''une multinationale ?

## Corrige

1. Cash-to-cash = 60 + 30 - 50 = 40 jours : l''entreprise immobilise sa tresorerie 40 jours entre paiement fournisseur et encaissement client ; negocier un DPO plus long ameliorerait son besoin en fonds de roulement.
2. OTIF = 774/900 = 86,0 pourcent : comme pour Teranga, 14 pourcent des livraisons posent probleme, a analyser via le modele SCOR.
3. On verifie d''abord Deliver (transport, douane, dernier kilometre), puis Source (ponctualite des fournisseurs), puis Plan (fiabilite des previsions de demande).
4. Commandes par lots (levier : reduire la taille minimale de commande) ; anticipation de penurie (levier : partager les niveaux de stock reels) ; manque de partage d''information (levier : acces aux ventes reelles via un systeme partage).
5. Cash-to-cash = 70+45-40 = 75 jours (eleve). OTIF = 480/600 = 80,0 pourcent. Ratio bullwhip = 96/12 = 8 (amplification forte). Recommandations : renegocier le DPO fournisseur de coton, et partager les ventes reelles avec les distributeurs CEDEAO pour stabiliser la production.
6. Une PME a un acces au credit plus limite qu''une multinationale ; un cash-to-cash cycle de 45 a 75 jours represente une part importante de son fonds de roulement, alors qu''une multinationale mobilise des lignes de credit internationales a moindre cout.', 'texte', 60, false, 20
from public.courses c where c.slug = 'mas-log-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Supply chain management global et pilotage de la chaine logistique internationale : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Optimisation logistique avancee : l''essentiel pour l''examen', 'Objectifs de la lecon : savoir appliquer le modele du centre de gravite pour localiser un entrepot ou une plateforme logistique, comprendre la logique des reseaux de distribution (direct, par plateforme, par hub), et construire des tournees de vehicules optimisees avec l''algorithme des gains (methode de Clarke et Wright), en discutant les limites de ces modeles dans le contexte africain.

## Notions : localisation, reseaux, tournees

L''optimisation logistique avancee repond a trois questions complementaires. Ou implanter un entrepot ou une plateforme logistique (probleme de localisation) ? Comment organiser le reseau entre usines, entrepots et points de vente (probleme de configuration de reseau : flux direct usine-client, passage par une plateforme centrale, ou organisation en hub-and-spoke) ? Et, une fois les points de livraison fixes, dans quel ordre et avec combien de vehicules les livrer au moindre cout (probleme de tournees, ou Vehicle Routing Problem) ?

## Cas d''entreprise : Sahel Distribution SA

Sahel Distribution SA, entreprise fictive de distribution de boissons, dessert quatre zones commerciales a partir d''un depot unique. La direction souhaite verifier si l''implantation actuelle du depot est pertinente et si les tournees de livraison peuvent etre optimisees.

## Methode 1 : le modele du centre de gravite

Le modele du centre de gravite determine la localisation qui minimise la distance ponderee par les volumes transportes vers chaque zone de livraison. Dans un repere simplifie (en kilometres par rapport a Dakar, origine (0,0)), les quatre zones de Sahel Distribution SA sont : Dakar (0, 0) avec 420 tonnes/mois, Thies (70, 10) avec 180 tonnes/mois, Kaolack (190, -30) avec 260 tonnes/mois, et Touba (160, 60) avec 300 tonnes/mois. Les coordonnees du centre de gravite se calculent ainsi : Xg = somme(volume_i x X_i) / somme(volume_i), et de meme pour Yg.

Le calcul donne : somme des volumes = 420 + 180 + 260 + 300 = 1 160 tonnes/mois. Xg = (420x0 + 180x70 + 260x190 + 300x160) / 1160 = (0 + 12600 + 49400 + 48000) / 1160 = 110000 / 1160 = 94,8 km. Yg = (420x0 + 180x10 + 260x(-30) + 300x60) / 1160 = (0 + 1800 - 7800 + 18000) / 1160 = 12000/1160 = 10,3 km. Le point optimal theorique se situe donc a environ 95 km a l''est de Dakar et 10 km au nord, ce qui correspond approximativement a un point entre Thies et Kaolack, plus proche de Thies : le depot actuel a Dakar n''est pas le mieux place, l''entreprise supporte un surcout de transport en desservant Kaolack et Touba depuis une position excentree.

Ce modele a des limites a discuter : il suppose un cout proportionnel a la distance a vol d''oiseau, ignorant l''etat reel du reseau routier, les ruptures de charge et la disponibilite d''infrastructures au point theorique. En pratique, le centre de gravite donne une zone de recherche, affinee ensuite avec des criteres qualitatifs (foncier, fiscalite locale, proximite d''axes bitumes).

## Methode 2 : les reseaux de distribution

Trois configurations existent. Le flux direct minimise les ruptures de charge mais multiplie les kilometres si les points sont nombreux et disperses. La distribution par plateforme reduit les kilometres totaux en mutualisant le transport longue distance, au prix d''un delai accru. Le hub-and-spoke (hub central redistribuant vers des hubs secondaires) convient aux reseaux etendus avec de multiples origines et destinations, comme un reseau couvrant plusieurs pays de la CEDEAO.

## Methode 3 : l''algorithme des gains pour les tournees (Clarke et Wright)

Sahel Distribution SA doit livrer quatre clients (A, B, C, E) a partir du depot D. Les distances en kilometres sont : D-A 12, D-B 18, D-C 25, D-E 15, A-B 9, A-C 22, A-E 14, B-C 11, B-E 20, C-E 10. Si chaque client est livre par une tournee individuelle aller-retour, le cout total est de 2x(12+18+25+15) = 140 km. L''algorithme des gains calcule, pour chaque paire de clients (i,j), le gain realise en les regroupant dans une meme tournee : Gain(i,j) = Distance(D,i) + Distance(D,j) - Distance(i,j).

Les gains calcules sont : B-C = 18+25-11 = 32 (le plus grand), C-E = 25+15-10 = 30, A-B = 12+18-9 = 21, A-C = 12+25-22 = 15, A-E = 12+15-14 = 13, B-E = 18+15-20 = 13. On fusionne en priorite les paires au gain le plus eleve, en verifiant a chaque etape les contraintes de capacite du vehicule. En fusionnant B et C (gain 32), on obtient une tournee D-B-C-D de cout 18+11+25 = 54 km (au lieu de 2x18 + 2x25 = 86 km separement). En etendant cette tournee a E via la liaison C-E (gain 30), on obtient la tournee D-B-C-E-D de cout 18+11+10+15 = 54 km, qui dessert trois clients. Le client A, dont les gains avec les autres sont plus faibles, reste sur sa tournee individuelle D-A-D de 2x12 = 24 km.

Le cout total optimise est donc de 24 (tournee A) + 54 (tournee B-C-E) = 78 km, contre 140 km en tournees individuelles, soit une economie de 62 km, c''est-a-dire 44,3 pourcent. Cette economie se traduit directement en carburant, heures de conducteur et usure du vehicule, des postes couteux pour une flotte de distribution ouest-africaine.

## Recommandations pour Sahel Distribution SA

L''entreprise devrait etudier une relocalisation de son depot vers la zone identifiee par le centre de gravite (autour de Thies), en verifiant la disponibilite fonciere reelle. A court terme, sans deplacer le depot, elle peut deja appliquer l''algorithme des gains pour reorganiser ses tournees quotidiennes et realiser une economie kilometrique immediate, avant tout investissement lourd.

## Points cles a retenir

- Le centre de gravite donne une zone de recherche pour la localisation d''un entrepot ; il doit toujours etre complete par une analyse qualitative du terrain reel.
- Le choix d''un reseau de distribution (direct, plateforme, hub-and-spoke) depend du nombre de points a desservir et de leur dispersion geographique.
- L''algorithme des gains de Clarke et Wright permet de construire des tournees economiques en fusionnant progressivement les paires de clients au gain le plus eleve, sous contrainte de capacite du vehicule.
- Toute optimisation theorique doit etre confrontee aux contraintes reelles du terrain (etat des routes, capacite des vehicules, fenetres horaires de livraison).

## Exercices pratiques

1. Calculez le centre de gravite pour trois zones : Zone 1 (0,0) 300 tonnes, Zone 2 (100,0) 200 tonnes, Zone 3 (50,80) 250 tonnes.
2. Citez deux limites du modele du centre de gravite dans le contexte d''un pays ou le reseau routier est heterogene.
3. Expliquez la difference entre un reseau de distribution direct et un reseau en hub-and-spoke, avec un exemple de contexte favorable a chacun.
4. A partir des distances D-X 10, D-Y 14, D-Z 20, X-Y 8, X-Z 16, Y-Z 12, calculez les gains pour chaque paire et identifiez la meilleure fusion.
5. Cas pratique complet : Teranga Boissons SA (fictive) dessert cinq points de vente depuis son depot D. Distances (km) : D-P1 8, D-P2 11, D-P3 15, D-P4 9, D-P5 13, P4-P5 5. Calculez le cout en tournees individuelles, puis la fusion P4-P5 et l''economie realisee.
6. Pourquoi documenter l''economie en pourcentage de kilometres est-il utile pour convaincre une direction generale d''investir dans un logiciel de tournees ?

## Corrige

1. Somme des volumes = 300+200+250 = 750. Xg = (300x0+200x100+250x50)/750 = (0+20000+12500)/750 = 32500/750 = 43,3 km. Yg = (300x0+200x0+250x80)/750 = 20000/750 = 26,7 km. Le centre de gravite se situe a (43,3 ; 26,7).
2. Le modele ignore l''etat reel des routes et la disponibilite d''infrastructures au point theorique (acces, foncier, main-d''oeuvre), qui peuvent rendre ce point inexploitable en pratique.
3. Le reseau direct convient a un petit nombre de points proches du depot. Le hub-and-spoke convient a un reseau etendu (CEDEAO) avec de nombreuses origines et destinations, en mutualisant le transport longue distance entre hubs.
4. Gains : X-Y = 10+14-8 = 16, X-Z = 10+20-16 = 14, Y-Z = 14+20-12 = 22. Meilleure fusion : Y-Z (gain 22).
5. Cout individuel = 2x(8+11+15+9+13) = 112 km. Gain P4-P5 = 9+13-5 = 17. Tournee D-P4-P5-D = 9+5+13 = 27 km au lieu de 2x9+2x13 = 44 km, soit une economie de 17 km, coherente avec le gain calcule.
6. Documenter l''economie en pourcentage permet de la comparer au cout de l''investissement (licence, formation) et de construire un retour sur investissement convaincant, langage que la direction generale comprend mieux qu''un chiffre de kilometres isole.', 'texte', 60, false, 30
from public.courses c where c.slug = 'mas-log-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Optimisation logistique avancee : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Gestion des risques logistiques et continuite d''activite : l''essentiel pour l''examen', 'Objectifs de la lecon : construire une matrice des risques logistiques (probabilite x impact), calculer une esperance de perte monetaire (EMV, Expected Monetary Value), evaluer la rentabilite d''un plan de continuite d''activite (PCA) et connaitre la structure d''un PCA logistique adapte au contexte senegalais et ouest-africain.

## Notions : risque, EMV et continuite d''activite

Un risque logistique est un evenement incertain qui, s''il se produit, degrade la performance de la chaine (cout, delai, qualite). Pour le hierarchiser, on evalue sa probabilite d''occurrence annuelle (P) et son impact financier (I, en FCFA). L''esperance de perte monetaire (EMV) se calcule par EMV = P x I ; elle represente la perte moyenne attendue si le risque se repetait dans les memes conditions, et permet de comparer des risques de nature differente sur une meme echelle. Le plan de continuite d''activite (PCA) regroupe les mesures preventives (reduire P ou I avant la crise) et curatives (reagir vite si elle survient) qui permettent de maintenir l''activite essentielle malgre un choc.

## Cas d''entreprise : Baobab Agro-Export SA

Baobab Agro-Export SA, entreprise fictive, exporte des fruits et legumes frais depuis le Senegal vers l''Europe et s''approvisionne en partie en Cote d''Ivoire. La direction demande une cartographie des risques logistiques majeurs et une evaluation de l''interet d''investir dans un plan de continuite.

## Methode : construire la matrice des risques et calculer l''EMV

Cinq risques sont identifies par l''equipe logistique, avec une probabilite annuelle (estimation d''expert) et un impact financier estime :
- Congestion portuaire a Dakar entrainant un retard de 10 jours : probabilite 0,30, impact 45 000 000 FCFA, EMV = 0,30 x 45 000 000 = 13 500 000 FCFA.
- Rupture d''approvisionnement chez un fournisseur cle en Cote d''Ivoire : probabilite 0,15, impact 80 000 000 FCFA, EMV = 0,15 x 80 000 000 = 12 000 000 FCFA.
- Panne majeure du systeme d''information logistique (WMS) pendant 48 heures : probabilite 0,10, impact 20 000 000 FCFA, EMV = 0,10 x 20 000 000 = 2 000 000 FCFA.
- Hausse brutale du prix du carburant de 25 pourcent sur six mois : probabilite 0,40, impact 18 000 000 FCFA, EMV = 0,40 x 18 000 000 = 7 200 000 FCFA.
- Vol ou freinte (perte de marchandise) sur le transport routier inter-etats : probabilite 0,20, impact 12 000 000 FCFA, EMV = 0,20 x 12 000 000 = 2 400 000 FCFA.

L''EMV totale, perte annuelle moyenne attendue si l''entreprise ne fait rien, est la somme des cinq EMV : 13 500 000 + 12 000 000 + 2 000 000 + 7 200 000 + 2 400 000 = 37 100 000 FCFA. Ce chiffre donne un ordre de grandeur du budget qu''il serait rationnel de consacrer a la prevention, au-dela duquel le remede coute plus cher que le mal qu''il previent.

La matrice des risques classe ces cinq evenements selon deux axes (probabilite, impact) en quatre zones : risques mineurs a surveiller (probabilite et impact faibles) ; risques a traiter en priorite (probabilite et impact eleves - la congestion portuaire s''en approche) ; risques a transferer ou assurer (impact fort, probabilite faible - la rupture fournisseur) ; et risques a reduire par des mesures simples (probabilite forte, impact limite - la hausse du carburant).

## Evaluer la rentabilite d''un plan de continuite d''activite

Baobab Agro-Export SA envisage un plan de continuite combinant un stock de securite supplementaire et un double sourcing pour son fournisseur ivoirien, pour un cout d''investissement de 35 000 000 FCFA. Ce plan est estime reduire l''EMV totale de 60 pourcent (hypothese de travail a valider avec l''equipe operationnelle), soit un risque evite de 37 100 000 x 0,60 = 22 260 000 FCFA par an. Sur un horizon de trois ans (duree de vie estimee du plan avant reevaluation), le benefice cumule est de 22 260 000 x 3 = 66 780 000 FCFA, pour un cout d''investissement de 35 000 000 FCFA, soit un retour sur investissement de (66 780 000 - 35 000 000) / 35 000 000 = 90,8 pourcent sur trois ans, avec un delai de retour (payback) de 35 000 000 / 22 260 000 = 1,57 an.

Ce calcul illustre un point methodologique essentiel : une evaluation sur un an seul (22 260 000 contre un cout de 35 000 000 FCFA) donnerait un ROI negatif de -36,4 pourcent et ferait rejeter le projet, alors qu''une evaluation pluriannuelle, plus pertinente pour un investissement structurel, montre une rentabilite nette. Le choix de l''horizon d''analyse n''est jamais neutre et doit toujours etre justifie dans la copie.

## Structure d''un plan de continuite d''activite logistique

Un PCA logistique credible comprend : l''identification des activites essentielles (celles dont l''arret menace la survie de l''entreprise, par exemple l''export de produits perissables) ; les mesures preventives (double sourcing, stock de securite, diversification des couloirs de transport) ; les mesures de reaction immediate (cellule de crise, procedures de communication avec clients et transporteurs) ; et les mesures de reprise d''activite (retour a la normale, reconstitution progressive des stocks et des flux).

## Points cles a retenir

- L''EMV (probabilite x impact) permet de comparer des risques heterogenes sur une echelle commune et de prioriser les actions de prevention.
- Le choix de l''horizon temporel d''evaluation (un an, trois ans) peut inverser la conclusion sur la rentabilite d''un plan de continuite ; il doit toujours etre justifie.
- Un PCA logistique articule identification des activites essentielles, prevention, reaction immediate et reprise d''activite.
- Les probabilites et impacts utilises dans les exemples sont des estimations fictives a des fins pedagogiques ; en entreprise reelle, elles doivent s''appuyer sur un historique d''incidents et un dire d''experts documente.

## Exercices pratiques

1. Un risque a une probabilite de 0,25 et un impact de 60 000 000 FCFA. Calculez son EMV et interpretez.
2. Pourquoi l''EMV permet-elle de comparer des risques tres differents sur une meme echelle ?
3. Pourquoi un risque a faible probabilite mais fort impact appelle-t-il une strategie differente d''un risque a forte probabilite mais impact limite ?
4. Un plan de continuite coute 20 000 000 FCFA et reduit une EMV annuelle de 15 000 000 FCFA de 50 pourcent. Calculez le payback et le ROI sur deux ans.
5. Cas pratique complet : Sahel Cold Chain SA (fictive) transporte des produits refrigeres. Trois risques : panne de groupe frigorifique (probabilite 0,20, impact 30 000 000 FCFA), coupure electrique en entrepot (probabilite 0,35, impact 10 000 000 FCFA), retard douanier sur perissables (probabilite 0,25, impact 22 000 000 FCFA). Calculez l''EMV de chaque risque et l''EMV totale, puis proposez une priorisation.
6. Citez les quatre composantes d''un PCA logistique avec un exemple adapte a une entreprise agro-exportatrice senegalaise.

## Corrige

1. EMV = 0,25 x 60 000 000 = 15 000 000 FCFA : perte annuelle moyenne attendue si ce risque se repetait ; ce chiffre peut servir de plafond indicatif pour le budget de prevention.
2. L''EMV ramene chaque risque a une unite monetaire comparable (FCFA/an), independamment de sa nature technique, ce qui permet de les classer sur une meme liste de priorites budgetaires.
3. Un risque a fort impact et faible probabilite appelle une strategie de transfert (assurance, double sourcing), car sa survenue rare serait tres couteuse. Un risque a forte probabilite et impact limite appelle une reduction continue (optimisation, contrats a prix fixe), car il se repete sans menacer la survie de l''entreprise.
4. Risque evite annuel = 15 000 000 x 0,50 = 7 500 000 FCFA. Payback = 20 000 000/7 500 000 = 2,67 ans. Sur deux ans, benefice cumule = 15 000 000 FCFA, ROI = (15 000 000-20 000 000)/20 000 000 = -25 pourcent : sur cet horizon court, le plan n''est pas encore rentable.
5. EMV panne frigorifique = 6 000 000 FCFA. EMV coupure electrique = 3 500 000 FCFA. EMV retard douanier = 5 500 000 FCFA. EMV totale = 15 000 000 FCFA. Priorisation : panne de groupe frigorifique d''abord (EMV la plus elevee, impact direct sur la perissabilite), puis retard douanier, puis coupure electrique.
6. Activites essentielles (export de perissables, a ne pas interrompre) ; prevention (double sourcing de fournisseurs de fruits) ; reaction immediate (cellule de crise, communication aux clients europeens) ; reprise d''activite (reconstitution des stocks et reprogrammation des exports).', 'texte', 60, false, 40
from public.courses c where c.slug = 'mas-log-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Gestion des risques logistiques et continuite d''activite : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Master 1 logistique et transport (entrainement, corrige detaille)', 'Ce sujet type (non officiel, bareme indicatif) couvre les trois matieres du Master 1 : SCM global et pilotage international, optimisation logistique avancee, gestion des risques logistiques. Duree indicative : 2 heures. Entreprise fictive etudiee : Fatick Agro Logistics SA, qui collecte des cereales et oignons dans la region de Fatick pour les distribuer vers Dakar, Kaolack et Diourbel, et exporte une partie de sa production vers la sous-region.

## Partie 1 : SCM global et pilotage international (bareme indicatif : 7 points)

Donnees : DIO = 58 jours, DSO = 42 jours, DPO = 50 jours. Sur 980 livraisons realisees au cours du semestre, 833 ont ete a la fois a temps et completes. Sur huit semaines, la demande reelle des clients (en tonnes) est : 80, 83, 78, 85, 79, 82, 81, 84 (variance 5,25) ; les commandes transmises par le principal distributeur a Fatick Agro Logistics SA sont : 76, 90, 70, 94, 74, 88, 77, 91 (variance 74).

Question 1.1 (2 points) : calculez le cash-to-cash cycle de l''entreprise et interpretez le resultat pour la direction financiere.
Question 1.2 (2 points) : calculez l''OTIF et commentez son niveau par rapport aux exigences usuelles d''un client exigeant.
Question 1.3 (2 points) : calculez le ratio bullwhip et expliquez, a l''aide du modele SCOR, ou chercher en priorite l''origine du probleme.
Question 1.4 (1 point) : proposez une action concrete de coordination entre Fatick Agro Logistics SA et son distributeur pour reduire l''amplification observee.

## Partie 2 : Optimisation logistique avancee (bareme indicatif : 7 points)

Donnees : trois zones de collecte sont localisees (en kilometres par rapport a Fatick, origine (0,0)) : Fatick (0,0) avec 350 tonnes/mois, Kaolack (45,-20) avec 280 tonnes/mois, Diourbel (60,35) avec 220 tonnes/mois.

Question 2.1 (3 points) : calculez les coordonnees du centre de gravite de ce reseau de collecte et commentez la pertinence de la localisation actuelle de l''entrepot central a Fatick.
Question 2.2 (2 points) : citez deux limites methodologiques du modele du centre de gravite qu''il faut discuter avant de prendre une decision d''implantation.
Question 2.3 (2 points) : l''entreprise envisage de regrouper ses livraisons vers deux points de vente proches en une seule tournee au lieu de deux tournees separees. Expliquez, sans calcul, le principe de l''algorithme des gains qui permettrait de justifier cette decision, et le type d''economie attendu.

## Partie 3 : Gestion des risques logistiques (bareme indicatif : 6 points)

Donnees : trois risques sont identifies. Risque A, retard de collecte lie aux pistes rurales en saison des pluies : probabilite 0,25, impact 25 000 000 FCFA. Risque B, rupture d''un contrat de transport avec le principal transporteur sous-traitant : probabilite 0,15, impact 40 000 000 FCFA. Risque C, perte de marchandise par mauvaise manutention en entrepot : probabilite 0,30, impact 9 000 000 FCFA.

Question 3.1 (3 points) : calculez l''EMV de chacun des trois risques et l''EMV totale.
Question 3.2 (2 points) : classez ces trois risques dans une matrice probabilite/impact et proposez, pour chacun, une strategie adaptee (prevention, transfert, reduction continue).
Question 3.3 (1 point) : l''entreprise envisage un plan de continuite coutant 18 000 000 FCFA, qui reduirait l''EMV totale de 55 pourcent. Sur un horizon de deux ans, ce plan est-il rentable ? Justifiez par un calcul.

## Corrige detaille

1.1 Cash-to-cash = 58+42-50 = 50 jours. L''entreprise finance pendant 50 jours le decalage entre paiement fournisseurs et encaissement clients ; pour une collecte agricole a marges etroites, ce niveau merite l''attention de la direction financiere, surtout en periode de forte collecte.
1.2 OTIF = 833/980 = 85,0 pourcent. Ce niveau est sous le seuil generalement attendu par des clients exigeants (souvent au-dela de 95 pourcent), signalant une fiabilite a ameliorer en priorite.
1.3 Ratio bullwhip = 74/5,25 = 14,1. Cette amplification forte doit etre recherchee d''abord dans Deliver (fiabilite du dernier kilometre), puis dans Plan (previsions du distributeur, qui semble commander par a-coups).
1.4 Un partage d''information en temps reel avec le distributeur (acces aux ventes reelles) permettrait de lisser les commandes et de reduire l''amplification du signal.

2.1 Somme des volumes = 850. Xg = (350x0+280x45+220x60)/850 = 25800/850 = 30,4 km. Yg = (350x0+280x(-20)+220x35)/850 = 2100/850 = 2,5 km. Le centre de gravite se situe a environ 30 km a l''est de Fatick, suggerant qu''une position plus proche de l''axe Fatick-Kaolack reduirait le cout de collecte global.
2.2 Le modele suppose un cout proportionnel a la distance a vol d''oiseau, ignorant l''etat des pistes rurales en saison des pluies et la disponibilite reelle du foncier et des infrastructures au point theorique.
2.3 L''algorithme des gains compare le cout de deux tournees separees au cout d''une tournee unique regroupant les deux points ; si le gain est positif, regrouper les livraisons reduit les kilometres, donc le carburant et le temps de conducteur, sans changer les quantites livrees.

3.1 EMV(A) = 6 250 000 FCFA. EMV(B) = 6 000 000 FCFA. EMV(C) = 2 700 000 FCFA. EMV totale = 14 950 000 FCFA.
3.2 Risque A (probabilite moyenne, impact fort) : prevention (plan de collecte alternatif en saison des pluies). Risque B (probabilite faible, impact tres fort) : transfert ou diversification des transporteurs. Risque C (probabilite forte, impact limite) : reduction continue (formation, equipement de manutention).
3.3 Risque evite annuel = 14 950 000 x 0,55 = 8 222 500 FCFA. Sur deux ans, benefice cumule = 16 445 000 FCFA pour un cout de 18 000 000 FCFA : ROI = -8,6 pourcent. Le plan n''est pas encore rentable sur cet horizon (payback = 2,19 ans) ; il le deviendrait en troisieme annee.

## Exercices pratiques

1. Un candidat calcule un OTIF de 120 pourcent. Expliquez pourquoi ce resultat est necessairement une erreur et identifiez l''erreur de calcul la plus probable.
2. Pourquoi le ratio bullwhip de Fatick Agro Logistics SA (14,1) est-il plus eleve que celui de Teranga Global Foods SA (10,7) vu en cours ? Qu''est-ce que cela signifie en termes de priorite d''action ?
3. Dans la partie 2, si le volume de Diourbel passait de 220 a 400 tonnes/mois (toutes choses egales par ailleurs), dans quelle direction se deplacerait le centre de gravite ? Justifiez sans recalculer precisement.
4. Pourquoi le payback (3.3) peut-il etre legerement superieur a l''horizon d''analyse retenu sans que cela signifie que le projet doive etre abandonne ?

## Corrige

1. L''OTIF est un pourcentage de livraisons conformes parmi un total de livraisons ; il ne peut mathematiquement pas depasser 100 pourcent. L''erreur la plus probable est d''avoir divise le nombre total de livraisons par le nombre de livraisons conformes au lieu de l''inverse, ou d''avoir utilise un numerateur superieur au denominateur par erreur de saisie.
2. Un ratio bullwhip plus eleve signifie une amplification plus forte de la variabilite de la demande le long de la chaine ; pour Fatick Agro Logistics SA, cela signale un besoin plus urgent de partage d''information et de lissage des commandes que pour Teranga Global Foods SA, car le risque de surstock ou de rupture lie a cette amplification est plus important.
3. Le centre de gravite se deplacerait vers Diourbel (c''est-a-dire vers des coordonnees X et Y plus elevees, puisque Diourbel est a (60,35)), car son poids relatif dans la moyenne ponderee augmenterait, attirant le point optimal theorique dans sa direction.
4. Un payback legerement superieur a l''horizon etudie signifie que le projet devient rentable peu de temps apres la fin de la periode analysee ; cela ne remet pas en cause sa pertinence a plus long terme, mais impose de presenter le resultat avec l''horizon exact retenu, car une evaluation sur un horizon plus court ou plus long peut changer la conclusion presentee a la direction.', 'texte', 60, false, 50
from public.courses c where c.slug = 'mas-log-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Master 1 logistique et transport (entrainement, corrige detaille)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours video (1h30) : Supply chain management global et pilotage de la chaine logistique internationale', '## Fiche du cours video

Duree : 1h30. Objectifs : a l''issue de la seance, l''etudiant sait calculer et interpreter le cash-to-cash cycle et l''OTIF d''une chaine logistique internationale, diagnostiquer un effet coup de fouet a partir de donnees de variance, et relier ces indicateurs au modele SCOR pour formuler des recommandations de pilotage. Materiel : tableau ou diaporama avec les donnees chiffrees de Teranga Global Foods SA, calculatrice. Prerequis : notions de stock, de credit client/fournisseur, et bases du modele SCOR vues en lecon 2.

## Deroule minute

## 00:00 – 05:00 · Introduction et mise en contexte

Bonjour a toutes et a tous, et bienvenue dans ce cours video consacre au pilotage de la chaine logistique internationale. Aujourd''hui, nous prenons le role de consultants supply chain appeles en urgence par la direction de Teranga Global Foods SA, entreprise senegalaise fictive qui exporte de la mangue sechee et de l''arachide decortiquee vers l''Europe. Elle rencontre deux problemes simultanes : sa tresorerie se degrade, et son principal client europeen se plaint de retards de livraison repetes. Notre mission est de comprendre ces problemes a l''aide d''indicateurs de pilotage global, puis de proposer un diagnostic argumente. Gardez une feuille et une calculatrice a portee de main, nous allons refaire ensemble tous les calculs.

## 05:00 – 20:00 · Le cash-to-cash cycle : comprendre et calculer

Commencons par le probleme de tresorerie. L''indicateur cle pour l''analyser s''appelle le cash-to-cash cycle, ou cycle de conversion de tresorerie. Il repond a une question simple : combien de jours s''ecoulent entre le moment ou l''entreprise paie ses fournisseurs, et le moment ou elle recoit l''argent de ses clients ? Plus ce delai est long, plus l''entreprise doit immobiliser de capital pour faire tourner son activite, meme si elle est parfaitement rentable sur le papier. La formule est : cash-to-cash = DIO plus DSO moins DPO. DIO, c''est le nombre de jours de stock moyen, c''est-a-dire le temps que la marchandise reste immobilisee dans les entrepots avant d''etre vendue. DSO, c''est le nombre de jours de credit accorde aux clients, le delai moyen avant d''etre paye. DPO, c''est le nombre de jours de credit obtenu des fournisseurs, le delai dont on dispose avant de devoir les payer.

Pour Teranga Global Foods SA, les donnees comptables nous donnent un DIO de 52 jours, un DSO de 38 jours, et un DPO de 45 jours. Appliquons la formule : cash-to-cash egale 52 plus 38 moins 45, ce qui fait 45 jours. Qu''est-ce que cela signifie concretement ? Cela signifie que l''entreprise finance, sur sa propre tresorerie ou sur des lignes de credit bancaire, pendant 45 jours, le decalage entre ce qu''elle doit a ses fournisseurs et ce qu''elle encaisse de ses clients. Pour une entreprise exportatrice de produits agricoles, ou les campagnes sont saisonnieres et les besoins de tresorerie tres concentres sur certaines periodes, ce chiffre de 45 jours est significatif et explique en grande partie les tensions de tresorerie observees par la direction.

Quels leviers permettent de reduire ce cycle, sans changer l''activite physique de l''entreprise ? Trois leviers existent. Premierement, reduire le DIO, c''est-a-dire faire tourner les stocks plus vite, par exemple en synchronisant mieux les achats de matieres premieres avec le rythme de la production et des expeditions. Deuxiemement, reduire le DSO, c''est-a-dire negocier des conditions de paiement plus rapides avec les clients, ou mettre en place un escompte pour paiement anticipe. Troisiemement, augmenter le DPO, c''est-a-dire negocier des delais de paiement plus longs avec les fournisseurs, sans toutefois degrader la relation commerciale au point de perdre leur confiance. Dans le cas de Teranga Global Foods SA, le DPO de 45 jours semble deja correct par rapport aux pratiques du secteur ; c''est plutot sur le DIO, souvent le poste le plus volumineux, qu''il faudrait agir en priorite.

## 20:00 – 35:00 · L''OTIF : mesurer la fiabilite du service client

Passons maintenant au deuxieme probleme signale par la direction : les retards de livraison. L''indicateur de reference ici s''appelle l''OTIF, pour On Time In Full, c''est-a-dire a l''heure et en quantite complete. Une livraison n''est comptee comme conforme que si elle respecte a la fois le delai promis et la quantite commandee ; une livraison a l''heure mais incomplete, ou complete mais en retard, est comptee comme non conforme. C''est un indicateur exigeant, volontairement, car du point de vue du client, une livraison partiellement correcte reste un probleme a gerer.

Pour Teranga Global Foods SA, sur 1240 livraisons realisees au cours du semestre, 1066 ont ete a la fois a l''heure et completes. Le calcul de l''OTIF est simple : on divise le nombre de livraisons conformes par le nombre total de livraisons, puis on multiplie par cent pour obtenir un pourcentage. Cela donne 1066 divise par 1240, soit 0,86, soit 86,0 pourcent. Que faut-il penser de ce chiffre ? Dans beaucoup de secteurs exigeants, notamment l''agroalimentaire destine a la grande distribution europeenne, les contrats prevoient des clauses de penalite lorsque l''OTIF descend sous un seuil souvent fixe autour de 95 pourcent. A 86 pourcent, Teranga Global Foods SA se situe tres en dessous de ce seuil habituel, ce qui explique les plaintes du client europeen et le risque, a terme, de perdre ce contrat au profit d''un concurrent plus fiable.

Pour identifier ou agir, nous mobilisons le modele SCOR, qui decoupe la chaine logistique en cinq processus : Plan, Source, Make, Deliver, et Return. Un retard de livraison peut venir d''un probleme de planification, c''est-a-dire une mauvaise prevision de la demande qui desynchronise la production ; d''un probleme d''approvisionnement, c''est-a-dire une rupture chez un fournisseur de matiere premiere qui retarde la transformation ; ou d''un probleme de livraison proprement dit, comme une congestion au port de Dakar ou un retard de dedouanement. La demarche de diagnostic consiste a reconstituer, pour un echantillon de livraisons en retard, a quelle etape le retard est apparu, afin de cibler l''action corrective sur le bon maillon de la chaine plutot que de disperser les efforts.

## 35:00 – 45:00 · L''effet coup de fouet (bullwhip effect)

Abordons maintenant un phenomene plus subtil, mais tres frequent dans les chaines logistiques internationales : l''effet coup de fouet, ou bullwhip effect en anglais. Ce phenomene decrit l''amplification de la variabilite de la demande au fur et a mesure qu''elle remonte la chaine, du client final vers les fournisseurs les plus en amont. Concretement, meme si la demande reelle des consommateurs finaux est relativement stable, les commandes transmises d''un echelon a l''autre de la chaine deviennent de plus en plus erratiques, car chaque acteur ajoute sa propre marge de precaution, ses propres arrondis de commande, et reagit avec un delai a des signaux deja deformes par l''echelon precedent.

Pour mesurer ce phenomene, on compare la variance des commandes transmises a un echelon donne a la variance de la demande reelle du client final. Dans notre cas, sur huit semaines, la demande reelle du client europeen varie entre 96 et 106 tonnes, avec une variance calculee de 9,75. Mais les commandes que ce meme distributeur transmet a Teranga Global Foods SA oscillent beaucoup plus fortement, entre 88 et 115 tonnes, avec une variance de 104,48. Le ratio bullwhip, c''est-a-dire la variance des commandes divisee par la variance de la demande reelle, est de 104,48 divise par 9,75, soit environ 10,7. Cela signifie que l''amplitude des commandes transmises a Teranga Global Foods SA est plus de dix fois superieure, en termes de variance, a l''amplitude reelle de la demande des consommateurs finaux.

## PAUSE INTERACTIVE - QUIZ (45:00 – 50:00)

Avant d''aller plus loin, faisons une pause de cinq minutes pour verifier votre comprehension. Question 1 : si le DIO augmente de dix jours sans que les autres indicateurs ne changent, le cash-to-cash cycle augmente-t-il ou diminue-t-il ? Reponse : il augmente de dix jours, puisque le DIO s''ajoute dans la formule. Question 2 : une livraison arrivee a l''heure mais avec une quantite inferieure a la commande compte-t-elle dans l''OTIF comme conforme ? Reponse : non, car l''OTIF exige a la fois la ponctualite et la completude ; une livraison partielle, meme a l''heure, est comptee comme non conforme. Question 3 : un ratio bullwhip de 1 signifierait quoi ? Reponse : que la variance des commandes transmises est egale a la variance de la demande reelle, c''est-a-dire qu''il n''y a pas d''amplification du signal le long de la chaine, situation ideale rarement observee en pratique.

## 50:00 – 65:00 · Les causes et les leviers de reduction de l''effet coup de fouet

Pourquoi ce phenomene se produit-il ? Trois mecanismes l''expliquent. Premier mecanisme : les commandes par lots, lorsqu''un distributeur groupe ses commandes pour reduire ses couts administratifs, creant des pics artificiels meme si la demande en magasin reste stable. Deuxieme mecanisme : l''anticipation de penurie, lorsqu''un acteur craignant une rupture commande un peu plus que son besoin reel par precaution. Troisieme mecanisme, le plus important : le manque de partage d''information. Si Teranga Global Foods SA ne voit que les commandes du distributeur, jamais les ventes reelles en magasin, elle reagit a un signal deja deforme.

Les leviers de reduction decoulent de ces causes. Pour les commandes par lots : reduire la taille minimale de commande et augmenter la frequence des livraisons. Pour l''anticipation de penurie : partager les niveaux de stock reels entre partenaires. Et surtout, pour le manque d''information : mettre en place un partage de donnees en temps reel, souvent via un systeme d''information partage, donnant acces aux ventes reelles plutot qu''aux seules commandes. C''est la recommandation la plus structurante pour Teranga Global Foods SA : negocier avec son distributeur europeen un acces, meme partiel, aux donnees de vente reelles.

## 65:00 – 75:00 · Synthese du diagnostic et plan d''action pour Teranga Global Foods SA

Reprenons l''ensemble du diagnostic. Le probleme de tresorerie trouve son origine dans un cash-to-cash cycle de 45 jours, largement explique par un DIO eleve ; le levier prioritaire est d''ameliorer la rotation des stocks. Le probleme de fiabilite se traduit par un OTIF de 86 pourcent, sous le seuil usuel de 95 pourcent ; le levier est d''utiliser le modele SCOR pour localiser precisement l''etape des retards. Enfin, la variabilite des commandes revele un effet coup de fouet marque (ratio de 10,7), qui explique l''instabilite de la planification interne ; le levier central est le partage d''information avec le distributeur.

Ces trois diagnostics ne sont pas independants : un effet coup de fouet mal maitrise degrade a la fois la fiabilite des livraisons, parce que la production reagit tardivement a des signaux deformes, et le cash-to-cash cycle, parce que l''entreprise doit constituer des stocks de securite plus importants pour absorber cette variabilite artificielle. Un plan d''action coherent doit donc traiter la cause profonde, le manque de visibilite sur la demande reelle, plutot que de se contenter de traiter chaque symptome separement. C''est cette capacite a relier plusieurs indicateurs a une cause commune qui distingue une analyse de niveau Master d''une analyse plus descriptive de niveau Licence.

## 75:00 – 85:00 · Application a un cas different : transposer la methode

Pour verifier que vous maitrisez la methode, imaginons une variante. Sahel Textile Export SA affiche un DIO de 70 jours, un DSO de 45 jours, un DPO de 40 jours : cash-to-cash = 70+45-40 = 75 jours, plus eleve que Teranga, ce qui appellerait une action encore plus urgente. Sur 600 livraisons, 480 sont conformes : OTIF = 480/600 = 80,0 pourcent, encore plus faible. Avec une variance de demande de 12 et une variance de commandes de 96, le ratio bullwhip est de 8, une amplification forte mais legerement inferieure a celle de Teranga.

Ce qu''il faut retenir : la methode de calcul reste identique d''une entreprise a l''autre ; ce qui change, c''est l''interpretation selon le contexte specifique de chaque cas presente dans un sujet d''examen.

## 85:00 – 90:00 · Evaluation finale

Pour conclure cette seance, voici cinq questions d''evaluation finale. Question 1 : quelle est la formule du cash-to-cash cycle ? Reponse : cash-to-cash egale DIO plus DSO moins DPO. Question 2 : quelle est la difference essentielle entre un taux de service classique et l''OTIF ? Reponse : l''OTIF exige a la fois la ponctualite et la completude de la livraison, pas seulement l''un des deux criteres. Question 3 : citez les cinq processus du modele SCOR. Reponse : Plan, Source, Make, Deliver, Return. Question 4 : quel est le principal levier pour reduire l''effet coup de fouet entre un fabricant et un distributeur ? Reponse : le partage d''information en temps reel sur les ventes reelles, plutot que sur les seules commandes transmises. Question 5 : pourquoi un effet coup de fouet mal maitrise degrade-t-il a la fois le cash-to-cash cycle et l''OTIF ? Reponse : parce qu''il oblige l''entreprise a constituer des stocks de securite excessifs (ce qui allonge le DIO et donc le cash-to-cash cycle) tout en rendant la planification de la production moins fiable face a une demande amont deformee (ce qui degrade l''OTIF). Merci a toutes et a tous pour votre attention, et a bientot pour le cours suivant consacre a l''optimisation logistique avancee.', 'video', 90, false, 60
from public.courses c where c.slug = 'mas-log-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours video (1h30) : Supply chain management global et pilotage de la chaine logistique internationale');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours video (1h30) : Optimisation logistique avancee', '## Fiche du cours video

Duree : 1h30. Objectifs : savoir appliquer le modele du centre de gravite pour localiser un entrepot, comprendre les trois configurations de reseau de distribution, et construire des tournees optimisees avec l''algorithme des gains de Clarke et Wright. Materiel : tableau ou diaporama avec les coordonnees et distances du cas Sahel Distribution SA, calculatrice. Prerequis : notions de geographie des transports et bases algebriques simples.

## Deroule minute

## 00:00 – 05:00 · Introduction

Bonjour et bienvenue dans ce cours consacre a l''optimisation logistique avancee. Nous allons travailler sur le cas de Sahel Distribution SA, une entreprise fictive de distribution de boissons qui dessert quatre zones commerciales depuis un depot unique situe a Dakar. La direction se demande si ce depot est bien place, et si les tournees de livraison actuelles pourraient etre optimisees pour reduire les couts de transport. Nous allons repondre a ces deux questions avec deux outils quantitatifs : le modele du centre de gravite, et l''algorithme des gains pour les tournees de vehicules.

## 05:00 – 20:00 · Le modele du centre de gravite

Le modele du centre de gravite determine la localisation qui minimise la distance totale ponderee par les volumes transportes vers chaque zone de livraison. L''idee est simple : plus une zone recoit un volume important, plus elle doit peser lourd dans le calcul de la position optimale du depot, exactement comme le centre de gravite physique d''un objet depend de la repartition de sa masse. La formule, pour la coordonnee X, est Xg egale la somme, pour chaque zone, du volume multiplie par la coordonnee X de cette zone, divisee par la somme de tous les volumes. On applique la meme logique pour la coordonnee Y.

Pour Sahel Distribution SA, les quatre zones, exprimees en kilometres par rapport a Dakar comme origine, sont : Dakar a la position zero zero avec 420 tonnes par mois, Thies a la position 70, 10 avec 180 tonnes par mois, Kaolack a la position 190, moins 30 avec 260 tonnes par mois, et Touba a la position 160, 60 avec 300 tonnes par mois. La somme des volumes est de 420 plus 180 plus 260 plus 300, soit 1160 tonnes par mois. Calculons Xg : on multiplie chaque volume par sa coordonnee X, on additionne, puis on divise par 1160. Cela donne 420 fois 0, plus 180 fois 70, plus 260 fois 190, plus 300 fois 160, le tout divise par 1160, soit 0 plus 12600 plus 49400 plus 48000, divise par 1160, soit 110000 divise par 1160, soit environ 94,8 kilometres.

Faisons le meme calcul pour Yg : 420 fois 0, plus 180 fois 10, plus 260 fois moins 30, plus 300 fois 60, le tout divise par 1160. Cela donne 0 plus 1800 moins 7800 plus 18000, divise par 1160, soit 12000 divise par 1160, soit environ 10,3 kilometres. Le point optimal theorique se situe donc a environ 95 kilometres a l''est de Dakar et 10 kilometres au nord, ce qui correspond approximativement a une zone entre Thies et Kaolack, plus proche de Thies. Conclusion operationnelle : le depot actuel a Dakar n''est pas le mieux place pour desservir efficacement l''ensemble du reseau, et l''entreprise supporte probablement un surcout de transport pour atteindre Kaolack et Touba depuis une position excentree.

Mais attention, ce resultat theorique ne doit jamais etre applique mecaniquement. Le modele suppose un cout de transport strictement proportionnel a la distance a vol d''oiseau, ce qui ignore completement l''etat reel du reseau routier. Une route degradee allonge considerablement le temps de trajet et le cout, sans allonger la distance geographique. Le modele ignore aussi les ruptures de charge et la disponibilite reelle d''infrastructures, comme l''acces a une zone industrielle, le foncier disponible, ou la main-d''oeuvre qualifiee, au point theorique identifie par le calcul. Dans la pratique professionnelle, on utilise ce resultat comme une zone de recherche approximative, que l''on affine ensuite avec des criteres qualitatifs de terrain.

## 20:00 – 35:00 · Les trois configurations de reseau de distribution

Avant de passer aux tournees, prenons le temps de comprendre les grandes configurations possibles d''un reseau de distribution, car le choix entre elles conditionne toute l''organisation logistique ulterieure. La premiere configuration est le flux direct : chaque point de vente est livre directement depuis l''usine ou le depot central, sans intermediaire. Cette configuration minimise les ruptures de charge et donc les risques de deterioration ou de perte de marchandise, mais elle multiplie les kilometres parcourus lorsque les points de livraison sont nombreux et disperses geographiquement.

La deuxieme configuration est la distribution par plateforme : un entrepot intermediaire regroupe les flux en provenance de plusieurs sources, avant de les redistribuer localement vers les points de vente. Cette organisation reduit les kilometres totaux en mutualisant le transport longue distance sur de gros volumes, mais elle introduit une rupture de charge supplementaire et allonge legerement le delai de livraison final. La troisieme configuration est l''organisation en hub-and-spoke, ou reseau en etoile : un hub central redistribue les flux vers des hubs secondaires, qui desservent eux-memes les points de livraison finaux dans leur zone. Cette organisation convient particulierement aux reseaux tres etendus geographiquement, avec de multiples origines et destinations, comme un reseau logistique couvrant plusieurs pays de la CEDEAO.

Pour Sahel Distribution SA, qui dessert quatre zones relativement proches les unes des autres au Senegal, une organisation par plateforme unique, bien localisee grace au calcul du centre de gravite, semble plus adaptee qu''un hub-and-spoke, qui serait surequipe pour ce niveau de dispersion geographique. Le choix de la configuration de reseau n''est donc jamais universel : il depend toujours du nombre de points a desservir, de leur dispersion, et du volume transporte sur chaque liaison.

## 35:00 – 45:00 · L''algorithme des gains : principe general

Passons maintenant au deuxieme outil de la seance, l''algorithme des gains, aussi appele methode de Clarke et Wright, qui permet de construire des tournees de vehicules economiques. Le principe de depart est de comparer deux situations : d''une part, le cout si chaque client est livre par une tournee individuelle, c''est-a-dire un aller-retour depuis le depot vers ce client puis retour au depot ; d''autre part, le cout si plusieurs clients sont regroupes dans une seule tournee, dans un ordre qui minimise la distance totale. La difference entre ces deux couts, pour chaque paire de clients consideree, s''appelle le gain, et se calcule ainsi : gain entre i et j egale distance du depot a i, plus distance du depot a j, moins distance entre i et j directement.

L''algorithme procede de maniere iterative : on calcule les gains pour toutes les paires de clients, on les classe du plus grand au plus petit, puis on fusionne progressivement les tournees en commencant par les paires au gain le plus eleve, tout en respectant les contraintes de capacite du vehicule utilise. C''est une methode heuristique, c''est-a-dire qu''elle ne garantit pas la solution mathematiquement optimale dans tous les cas, mais elle donne en pratique de tres bons resultats avec un calcul simple, ce qui explique sa popularite dans les logiciels professionnels de planification de tournees.

## PAUSE INTERACTIVE - QUIZ (45:00 – 50:00)

Petite pause pour verifier votre comprehension. Question 1 : dans le modele du centre de gravite, que se passe-t-il si on double le volume d''une seule zone, toutes choses egales par ailleurs ? Reponse : le centre de gravite se deplace vers cette zone, car son poids relatif dans la moyenne ponderee augmente. Question 2 : quelle configuration de reseau convient le mieux a un tres grand nombre de points disperses sur plusieurs pays ? Reponse : le hub-and-spoke. Question 3 : un gain negatif entre deux clients signifie-t-il qu''il faut les regrouper ? Reponse : non, un gain negatif signifie que regrouper ces deux clients couterait plus cher que les livrer separement ; on ne fusionne que les paires a gain positif, en commencant par les plus eleves.

## 50:00 – 70:00 · Application complete : les tournees de Sahel Distribution SA

Appliquons maintenant l''algorithme au cas concret. Sahel Distribution SA doit livrer quatre clients, nommes A, B, C et E, a partir du depot D. Les distances en kilometres sont les suivantes : depot a A, 12 ; depot a B, 18 ; depot a C, 25 ; depot a E, 15 ; A a B, 9 ; A a C, 22 ; A a E, 14 ; B a C, 11 ; B a E, 20 ; C a E, 10. Si chaque client est livre individuellement, le cout total est de deux fois la somme des distances depot-client, soit deux fois 12 plus 18 plus 25 plus 15, c''est-a-dire deux fois 70, soit 140 kilometres.

Calculons maintenant les gains pour chaque paire. Gain B-C egale 18 plus 25 moins 11, soit 32, le gain le plus eleve. Gain C-E egale 25 plus 15 moins 10, soit 30. Gain A-B egale 12 plus 18 moins 9, soit 21. Gain A-C egale 12 plus 25 moins 22, soit 15. Gain A-E egale 12 plus 15 moins 14, soit 13. Gain B-E egale 18 plus 15 moins 20, soit 13. On commence par fusionner la paire au gain le plus eleve, B et C : la tournee devient depot vers B vers C vers depot, de cout 18 plus 11 plus 25, soit 54 kilometres, au lieu de 86 kilometres si B et C etaient livres separement, soit une economie immediate de 32 kilometres, exactement egale au gain calcule.

On examine ensuite si l''on peut etendre cette tournee a un troisieme client. Le gain C-E, de 30, est le deuxieme plus eleve : on ajoute donc E a la tournee existante, via la liaison C-E, pour obtenir la tournee depot vers B vers C vers E vers depot, de cout 18 plus 11 plus 10 plus 15, soit 54 kilometres pour desservir trois clients. Le client A, dont les gains avec les autres sont plus faibles, reste sur sa tournee individuelle, de cout deux fois 12, soit 24 kilometres. Le cout total optimise est donc de 24 plus 54, soit 78 kilometres, contre 140 kilometres en tournees individuelles. L''economie realisee est de 140 moins 78, soit 62 kilometres, ce qui represente 62 divise par 140, soit 44,3 pourcent de reduction.

Cette economie de 44,3 pourcent est considerable et se traduit directement en carburant economise, en heures de conducteur reduites, et en usure moindre du vehicule, des postes de cout particulierement sensibles pour une flotte de distribution en Afrique de l''Ouest, ou le prix du carburant pese lourdement dans le compte d''exploitation du transport routier.

## 70:00 – 85:00 · Recommandations et discussion critique

Pour Sahel Distribution SA, deux recommandations se degagent de notre analyse. D''abord, a court terme et sans investissement, reorganiser les tournees quotidiennes selon la logique de l''algorithme des gains, pour capter immediatement l''economie kilometrique demontree. Ensuite, a plus long terme, etudier serieusement une relocalisation du depot principal vers la zone identifiee par le centre de gravite, autour de Thies, en verifiant au prealable la disponibilite fonciere reelle, le cout du terrain, et l''acces aux infrastructures necessaires. Il est important de souligner que ces deux leviers sont complementaires et non concurrents : l''optimisation des tournees peut etre mise en oeuvre immediatement, pendant que l''etude de relocalisation, plus lourde et plus longue, se poursuit en parallele.

Sur le plan critique, rappelons que ces deux modeles, centre de gravite et algorithme des gains, sont des outils d''aide a la decision, pas des solutions automatiques. Le centre de gravite donne une zone de recherche, pas une adresse precise. L''algorithme des gains donne une solution heuristique, pas necessairement la solution mathematiquement optimale, et il doit toujours etre complete par la verification des contraintes reelles : capacite des vehicules, fenetres horaires de livraison imposees par les clients, et etat reel des routes entre les points consideres.

## 85:00 – 90:00 · Evaluation finale

Cinq questions pour conclure. Question 1 : quelle est la formule du centre de gravite pour la coordonnee X ? Reponse : Xg egale la somme des volumes multiplies par les coordonnees X, divisee par la somme des volumes. Question 2 : citez les trois configurations de reseau de distribution. Reponse : flux direct, distribution par plateforme, hub-and-spoke. Question 3 : quelle est la formule du gain entre deux clients i et j dans l''algorithme de Clarke et Wright ? Reponse : distance depot-i plus distance depot-j moins distance i-j. Question 4 : dans notre cas Sahel Distribution SA, quelle est l''economie kilometrique realisee par l''optimisation des tournees, en pourcentage ? Reponse : 44,3 pourcent, soit 62 kilometres economises sur 140. Question 5 : pourquoi le resultat du modele du centre de gravite ne doit-il jamais etre applique sans verification de terrain ? Reponse : parce qu''il suppose un cout de transport proportionnel a la distance a vol d''oiseau, ignorant l''etat reel des routes, les ruptures de charge et la disponibilite effective d''infrastructures au point theorique identifie. Merci pour votre attention, et a bientot pour le cours consacre a la gestion des risques logistiques.', 'video', 90, false, 70
from public.courses c where c.slug = 'mas-log-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours video (1h30) : Optimisation logistique avancee');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours video (1h30) : Gestion des risques logistiques et continuite d''activite', '## Fiche du cours video

Duree : 1h30. Objectifs : construire une matrice des risques logistiques, calculer et interpreter une esperance de perte monetaire (EMV), evaluer la rentabilite d''un plan de continuite d''activite selon differents horizons temporels, et connaitre la structure d''un PCA logistique. Materiel : tableau ou diaporama avec les donnees du cas Baobab Agro-Export SA, calculatrice. Prerequis : notions de probabilite simple et de calcul de rentabilite (payback, ROI).

## Deroule minute

## 00:00 – 05:00 · Introduction

Bonjour et bienvenue dans ce cours consacre a la gestion des risques logistiques et a la continuite d''activite. Nous allons etudier le cas de Baobab Agro-Export SA, une entreprise fictive qui exporte des fruits et legumes frais depuis le Senegal vers l''Europe, en s''approvisionnant partiellement en Cote d''Ivoire. La direction nous demande deux choses : cartographier les risques logistiques majeurs qui menacent l''activite, et evaluer si un investissement dans un plan de continuite serait rentable. C''est un exercice typique de niveau Master, qui combine analyse du risque et evaluation financiere.

## 05:00 – 20:00 · L''esperance de perte monetaire (EMV)

Commencons par l''outil central de cette seance : l''esperance de perte monetaire, ou EMV pour Expected Monetary Value. Face a un risque incertain, deux informations sont necessaires pour le quantifier : sa probabilite d''occurrence sur une periode donnee, generalement une annee, et son impact financier s''il se realise, exprime en FCFA. L''EMV se calcule simplement en multipliant ces deux grandeurs : EMV egale probabilite multipliee par impact. Ce chiffre represente la perte moyenne que subirait l''entreprise si ce risque se repetait un grand nombre de fois dans des conditions identiques ; c''est un outil puissant car il permet de comparer, sur une seule et meme echelle monetaire, des risques de nature completement differente, comme une panne informatique et une rupture d''approvisionnement.

L''equipe logistique de Baobab Agro-Export SA a identifie cinq risques majeurs. Premier risque : une congestion portuaire a Dakar entrainant un retard de dix jours, avec une probabilite estimee de 0,30 et un impact de 45 millions de FCFA. Son EMV est de 0,30 multiplie par 45 millions, soit 13,5 millions de FCFA. Deuxieme risque : une rupture d''approvisionnement chez un fournisseur cle en Cote d''Ivoire, probabilite 0,15, impact 80 millions de FCFA, EMV de 0,15 fois 80 millions, soit 12 millions de FCFA. Troisieme risque : une panne majeure du systeme d''information logistique pendant 48 heures, probabilite 0,10, impact 20 millions de FCFA, EMV de 2 millions de FCFA.

Quatrieme risque : une hausse brutale du prix du carburant de 25 pourcent sur six mois, probabilite 0,40, impact 18 millions de FCFA, EMV de 0,40 fois 18 millions, soit 7,2 millions de FCFA. Cinquieme risque : le vol ou la freinte de marchandise sur le transport routier inter-etats, probabilite 0,20, impact 12 millions de FCFA, EMV de 2,4 millions de FCFA. En additionnant ces cinq EMV, 13,5 plus 12 plus 2 plus 7,2 plus 2,4, nous obtenons une EMV totale de 37,1 millions de FCFA par an. C''est la perte annuelle moyenne attendue si l''entreprise ne prend aucune mesure de prevention face a ces cinq risques.

## 20:00 – 35:00 · Construire la matrice des risques

L''EMV nous donne un chiffre global utile, mais pour prioriser nos actions, nous devons aussi representer ces risques visuellement, sur une matrice a deux axes : la probabilite en abscisse, et l''impact en ordonnee. Cette matrice se decoupe generalement en quatre zones. La zone des risques mineurs, a surveiller sans action immediate, regroupe les risques a probabilite et impact tous deux faibles. La zone des risques critiques, a traiter en priorite absolue, regroupe les risques a la fois probables et a fort impact ; dans notre cas, aucun risque n''atteint ce niveau extreme, mais la congestion portuaire, avec une probabilite de 0,30 et un impact de 45 millions, s''en approche le plus.

La troisieme zone concerne les risques a transferer ou a assurer : impact fort, mais probabilite faible. C''est le cas de la rupture d''approvisionnement fournisseur, avec une probabilite de seulement 0,15 mais un impact tres eleve de 80 millions de FCFA. Pour ce type de risque, la strategie recommandee n''est pas necessairement de reduire la probabilite, difficile a maitriser directement, mais de transferer le risque, par exemple via une assurance, ou de le diluer, par exemple via un double sourcing auprès de plusieurs fournisseurs. La quatrieme zone concerne les risques a reduire par des mesures simples et continues : probabilite forte, mais impact limite. La hausse du prix du carburant, avec une probabilite de 0,40 mais un impact de seulement 18 millions, illustre ce cas : elle touche l''activite regulierement, mais reste absorbable par des mesures progressives comme l''optimisation des tournees ou la negociation de contrats de carburant a prix fixe.

## 35:00 – 45:00 · Evaluer la rentabilite d''un plan de continuite

Passons maintenant a la question posee par la direction : faut-il investir dans un plan de continuite d''activite ? Baobab Agro-Export SA envisage un plan combinant un stock de securite supplementaire et un double sourcing pour son fournisseur ivoirien, pour un cout d''investissement de 35 millions de FCFA. Ce plan est estime reduire l''EMV totale de 60 pourcent, une hypothese de travail qu''il faudrait valider avec l''equipe operationnelle avant toute decision definitive. Le risque evite chaque annee serait donc de 37,1 millions multiplie par 0,60, soit 22,26 millions de FCFA par an.

Si nous raisonnons sur une seule annee, le calcul donne un resultat decourageant : le risque evite de 22,26 millions est inferieur au cout d''investissement de 35 millions, ce qui correspond a un retour sur investissement negatif de moins 36,4 pourcent. Sur cette seule base, on pourrait etre tente de rejeter le projet. Mais un plan de continuite d''activite est un investissement structurel, dont les benefices se repetent annee apres annee, pas un cout ponctuel a amortir en douze mois. Il faut donc raisonner sur un horizon pluriannuel, par exemple trois ans, duree de vie estimee du plan avant reevaluation.

## PAUSE INTERACTIVE - QUIZ (45:00 – 50:00)

Verifions votre comprehension avant de poursuivre. Question 1 : si la probabilite d''un risque double sans que l''impact change, l''EMV double-t-elle egalement ? Reponse : oui, car l''EMV est le produit de la probabilite et de l''impact, une relation strictement proportionnelle. Question 2 : un risque a tres faible probabilite mais impact catastrophique doit-il etre ignore parce que sa probabilite est faible ? Reponse : non, ce type de risque appelle justement une strategie de transfert ou d''assurance, precisement parce qu''une seule occurrence suffirait a causer un dommage majeur. Question 3 : pourquoi le choix de l''horizon temporel d''evaluation peut-il changer la conclusion sur la rentabilite d''un investissement de prevention ? Reponse : parce qu''un investissement ponctuel genere des benefices qui se cumulent annee apres annee ; sur un horizon trop court, le cout initial peut sembler superieur aux benefices, alors que sur un horizon plus long, representatif de la duree de vie reelle du projet, le bilan devient favorable.

## 50:00 – 65:00 · Le calcul sur trois ans et la decision finale

Reprenons le calcul sur l''horizon de trois ans. Le benefice cumule est de 22,26 millions multiplie par trois, soit 66,78 millions de FCFA, pour un cout d''investissement de 35 millions de FCFA. Le retour sur investissement sur trois ans est de 66,78 millions moins 35 millions, divise par 35 millions, soit 31,78 millions divise par 35 millions, c''est-a-dire environ 90,8 pourcent. Le delai de retour, ou payback, se calcule en divisant le cout d''investissement par le benefice annuel : 35 millions divise par 22,26 millions, soit environ 1,57 annee. Autrement dit, moins de deux ans apres sa mise en oeuvre, le plan de continuite aura rembourse son cout initial, et chaque annee supplementaire au-dela de ce delai constitue un benefice net pour l''entreprise.

Cette difference entre l''evaluation sur un an, negative, et l''evaluation sur trois ans, tres positive, est l''une des lecons les plus importantes de cette seance : le choix de l''horizon d''analyse n''est jamais neutre, et il doit toujours etre explicite et justifie dans une copie d''examen ou dans un rapport professionnel. Presenter uniquement le chiffre qui sert sa conclusion, sans expliciter l''horizon retenu, serait une erreur methodologique grave, et un correcteur de Master y sera particulierement attentif.

## 65:00 – 80:00 · La structure d''un plan de continuite d''activite logistique

Au-dela du seul calcul financier, un plan de continuite d''activite credible repose sur une structure en quatre composantes. La premiere est l''identification des activites essentielles, c''est-a-dire les operations dont l''arret menacerait la survie meme de l''entreprise. Pour Baobab Agro-Export SA, il s''agit clairement de l''export de produits perissables, qui ne peuvent pas attendre une resolution lente de la crise sans etre totalement perdus.

La deuxieme composante regroupe les mesures preventives, c''est-a-dire les actions mises en place avant qu''une crise ne survienne, pour reduire soit la probabilite, soit l''impact du risque : double sourcing de fournisseurs, constitution de stocks de securite, diversification des couloirs de transport utilises. La troisieme composante concerne les mesures de reaction immediate, activees dans les heures ou les jours qui suivent le declenchement d''une crise : mise en place d''une cellule de crise dediee, procedures de communication immediate avec les clients et les transporteurs, afin de limiter les consequences commerciales du choc. La quatrieme composante, souvent oubliee dans les plans improvises, concerne la reprise d''activite apres la crise : un plan de retour progressif a la normale, avec reconstitution des stocks, reprogrammation des exports retardes, et retour d''experience pour ameliorer le dispositif avant le prochain incident.

## 80:00 – 85:00 · Synthese et discussion critique

Pour conclure notre analyse du cas Baobab Agro-Export SA, rappelons les points essentiels. L''EMV totale de 37,1 millions de FCFA par an donne un ordre de grandeur rationnel du budget de prevention justifiable. Le plan de continuite envisage, au cout de 35 millions de FCFA, n''est pas rentable sur un horizon d''un an, mais devient tres rentable, avec un ROI de 90,8 pourcent, sur un horizon de trois ans, avec un payback d''environ 1,57 annee. Rappelons enfin que les probabilites et impacts utilises dans cet exercice sont des estimations fictives a vocation pedagogique : dans une entreprise reelle, elles doivent s''appuyer sur un historique d''incidents documente et un dire d''experts structure, et non sur une simple intuition.

## 85:00 – 90:00 · Evaluation finale

Cinq questions pour conclure cette seance. Question 1 : quelle est la formule de l''EMV ? Reponse : EMV egale probabilite multipliee par impact. Question 2 : quelle strategie convient le mieux a un risque a faible probabilite mais fort impact ? Reponse : le transfert ou l''assurance, ou la dilution via une diversification des sources. Question 3 : quelle strategie convient le mieux a un risque a forte probabilite mais impact limite ? Reponse : la reduction continue, par des mesures progressives et peu couteuses. Question 4 : citez les quatre composantes d''un plan de continuite d''activite logistique. Reponse : identification des activites essentielles, mesures preventives, mesures de reaction immediate, mesures de reprise d''activite. Question 5 : pourquoi le choix de l''horizon temporel peut-il inverser la conclusion sur la rentabilite d''un plan de continuite ? Reponse : parce que le cout de l''investissement est ponctuel alors que le benefice se repete chaque annee ; un horizon trop court sous-estime le benefice cumule par rapport au cout initial, tandis qu''un horizon representatif de la duree de vie reelle du projet revele sa rentabilite effective. Merci pour votre attention, et a bientot pour l''atelier transversal qui conclura ce module.', 'video', 90, false, 80
from public.courses c where c.slug = 'mas-log-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours video (1h30) : Gestion des risques logistiques et continuite d''activite');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours video (1h30) : Atelier transversal, cas pratique file - Jolof Export et Logistique SA', '## Fiche du cours video

Duree : 1h30. Objectifs : traiter un cas d''entreprise unique qui mobilise simultanement les trois matieres du Master 1 (SCM global, optimisation logistique avancee, gestion des risques), dans les conditions proches d''un examen final, en gerant le temps et en articulant les diagnostics entre eux. Materiel : tableau ou diaporama avec le cas complet de Jolof Export et Logistique SA, calculatrice. Prerequis : avoir suivi les trois cours video precedents du module.

## Deroule minute

## 00:00 – 05:00 · Presentation du cas transversal

Bonjour et bienvenue dans cet atelier de synthese, le dernier cours video de ce module de Master 1. Jusqu''ici, nous avons traite trois cas separes, un par matiere. Aujourd''hui, nous allons traiter un cas unique, Jolof Export et Logistique SA, une entreprise fictive de transformation et d''exportation de produits halieutiques depuis le Senegal, qui presente simultanement les trois types de problemes que vous pourrez rencontrer dans un sujet d''examen integral. L''objectif de cet atelier n''est pas d''apprendre de nouvelles formules, mais de vous entrainer a l''exercice le plus exigeant du Master 1 : traiter un cas complet en gerant votre temps entre les trois dimensions, et surtout en montrant comment elles s''articulent entre elles.

## 05:00 – 15:00 · Presentation complete des donnees du cas

Voici l''ensemble des donnees du cas, que nous allons mobiliser progressivement. Sur le plan du pilotage global : DIO de 48 jours, DSO de 36 jours, DPO de 40 jours ; sur 760 livraisons, 646 sont conformes OTIF ; la demande reelle des clients sur huit semaines est 60, 62, 58, 63, 59, 61, 60, 62 tonnes (variance 2,48), tandis que les commandes transmises au fournisseur de matiere premiere sont 56, 68, 52, 71, 54, 66, 55, 69 tonnes (variance 53,48). Sur le plan de l''optimisation : trois zones de collecte sont localisees a Z1 (0,0) avec 300 tonnes par mois, Z2 (80,20) avec 260 tonnes par mois, et Z3 (130, moins 40) avec 310 tonnes par mois. Sur le plan des risques : trois risques majeurs sont identifies, une rupture de la chaine du froid (probabilite 0,28, impact 32 millions de FCFA), une perte d''un marche export faute de certification sanitaire renouvelee a temps (probabilite 0,12, impact 55 millions de FCFA), et une avarie de manutention en entrepot frigorifique (probabilite 0,35, impact 8 millions de FCFA). Notez bien ces chiffres, nous allons les utiliser dans l''ordre.

## 15:00 – 30:00 · Volet 1 : diagnostic SCM global

Commencons par le pilotage global, exactement comme le ferait un candidat qui suit l''ordre logique d''un sujet d''examen. Cash-to-cash cycle egale DIO plus DSO moins DPO, soit 48 plus 36 moins 40, c''est-a-dire 44 jours. C''est un niveau significatif qui merite une attention de la direction financiere, en particulier pour une entreprise de transformation de produits de la mer, ou les besoins de tresorerie en campagne de peche sont concentres sur de courtes periodes. OTIF egale 646 divise par 760, soit 85,0 pourcent, un niveau insuffisant par rapport au seuil usuel de 95 pourcent attendu par des clients exigeants sur les marches d''exportation.

Le ratio bullwhip se calcule en divisant la variance des commandes par la variance de la demande reelle, soit 53,48 divise par 2,48, ce qui donne environ 21,6, une amplification tres forte. A ce stade, le diagnostic SCM global de Jolof Export et Logistique SA est clair : tresorerie sous tension, fiabilite de service insuffisante, et planification fortement perturbee par une demande amont deformee. La recommandation immediate est le partage d''information avec les distributeurs pour lisser les commandes et stabiliser la planification de la production.

## 30:00 – 45:00 · Volet 2 : diagnostic d''optimisation logistique

Passons au deuxieme volet. Calculons le centre de gravite des trois zones de collecte. La somme des volumes est de 300 plus 260 plus 310, soit 870 tonnes par mois. Xg egale 300 fois 0, plus 260 fois 80, plus 310 fois 130, le tout divise par 870, soit 0 plus 20800 plus 40300, divise par 870, soit 61100 divise par 870, environ 70,2 kilometres. Yg egale 300 fois 0, plus 260 fois 20, plus 310 fois moins 40, le tout divise par 870, soit 0 plus 5200 moins 12400, divise par 870, soit moins 7200 divise par 870, environ moins 8,3 kilometres. Le centre de gravite theorique se situe donc a environ 70 kilometres a l''est du point de reference et legerement au sud, une position intermediaire entre Z2 et Z3, plus proche de Z3 qui pese le volume le plus important.

Ce resultat doit immediatement etre mis en relation avec le diagnostic du volet 1 : si Jolof Export et Logistique SA souffre deja d''un OTIF insuffisant, une partie du probleme peut venir d''une localisation mal adaptee de son unite de collecte et de transformation par rapport a ses trois zones d''approvisionnement, ce qui allonge les trajets, augmente les risques de retard, et degrade la qualite de la chaine du froid pendant le transport, probleme que nous retrouverons dans le volet 3. C''est exactement ce type de lien entre matieres que le correcteur attend de voir explicite dans une copie de Master.

## PAUSE INTERACTIVE - QUIZ (45:00 – 50:00)

Verifions votre comprehension du lien entre les volets. Question 1 : un OTIF faible peut-il avoir une cause liee a la localisation d''un site de production ? Reponse : oui, une localisation excentree par rapport aux zones d''approvisionnement ou de distribution allonge les trajets et augmente la probabilite de retard, ce qui degrade l''OTIF. Question 2 : le ratio bullwhip et le centre de gravite mesurent-ils le meme type de phenomene ? Reponse : non, le premier mesure une amplification de la variabilite de la demande dans le temps, le second une optimisation spatiale de la localisation ; ce sont deux dimensions distinctes qui peuvent neanmoins avoir des effets cumulatifs sur la meme performance globale, comme l''OTIF. Question 3 : pourquoi est-il important, dans un sujet transversal, de relier les diagnostics entre les parties plutot que de les traiter comme trois exercices independants ? Reponse : parce qu''un cas d''entreprise reel presente des causes imbriquees, et qu''une recommandation de gestion efficace doit s''attaquer aux causes communes plutot qu''a chaque symptome isolement.

## 50:00 – 65:00 · Volet 3 : diagnostic des risques et lien avec les deux premiers volets

Terminons par le troisieme volet. EMV du risque de rupture de la chaine du froid egale 0,28 multiplie par 32 millions, soit 8,96 millions de FCFA. EMV de la perte de marche export faute de certification egale 0,12 multiplie par 55 millions, soit 6,6 millions de FCFA. EMV de l''avarie de manutention egale 0,35 multiplie par 8 millions, soit 2,8 millions de FCFA. L''EMV totale est de 8,96 plus 6,6 plus 2,8, soit 18,36 millions de FCFA par an.

Observons maintenant le lien avec les deux volets precedents. Le risque le plus couteux en esperance, la rupture de la chaine du froid, est directement aggrave par la localisation sous-optimale identifiee au volet 2 : plus les trajets de collecte sont longs par rapport au centre de gravite optimal, plus le risque de rupture de la chaine du froid pendant le transport augmente, ce qui devrait nous conduire a revoir a la hausse la probabilite retenue pour ce risque si la relocalisation n''est pas mise en oeuvre. De meme, le risque de perte de marche export, bien que moins probable, a l''impact le plus severe et rejoint la problematique de fiabilite identifiee par un OTIF insuffisant au volet 1 : un client qui recoit des livraisons non conformes de maniere repetee peut, a terme, remettre en cause la certification commerciale de la relation, independamment meme de la certification sanitaire administrative.

## 65:00 – 80:00 · Synthese integree et plan de recommandations

Construisons maintenant la synthese integree que le correcteur attend dans la derniere partie d''une copie de ce type. Les trois diagnostics convergent vers une cause commune partiellement partagee : une organisation logistique qui n''a pas ete reoptimisee depuis la croissance de l''activite de Jolof Export et Logistique SA, ce qui degrade simultanement le cash-to-cash cycle (stocks mal synchronises), l''OTIF (trajets longs et variables), et l''exposition au risque de rupture de la chaine du froid (duree de transport excessive par rapport au point optimal).

Le plan de recommandations doit donc etre hierarchise et non simplement enumere. En premiere priorite, lancer une etude de relocalisation de l''unite de collecte vers la zone identifiee par le centre de gravite, qui traite simultanement une partie du probleme d''OTIF et une partie du risque de rupture de la chaine du froid. En deuxieme priorite, negocier un partage d''information avec les distributeurs pour reduire l''amplification bullwhip et stabiliser la planification, ce qui ameliorera indirectement le cash-to-cash cycle en reduisant le besoin de stocks de securite excessifs. En troisieme priorite, mettre en place un plan de continuite specifique pour le risque de certification sanitaire, le moins probable mais le plus couteux en cas de realisation, via une veille reglementaire renforcee et un dossier de renouvellement anticipe.

## 80:00 – 85:00 · Conseils methodologiques pour l''examen

Avant de conclure, quelques conseils pour l''examen. Premierement, gerez votre temps en fonction du bareme indique, pas en fonction de votre aisance personnelle sur chaque matiere ; un sujet equilibre accorde generalement un temps proportionnel aux points attribues. Deuxiemement, traitez chaque volet avec la meme rigueur de calcul qu''un exercice isole, en ecrivant toujours la formule avant de l''appliquer. Troisiemement, et c''est le point le plus discriminant au niveau Master, reservez toujours du temps, meme cinq minutes, pour une synthese finale qui relie explicitement les diagnostics entre eux, meme succinctement : c''est souvent cette capacite d''articulation qui distingue une excellente copie d''une copie seulement correcte.

## 85:00 – 90:00 · Evaluation finale

Cinq questions pour conclure ce module. Question 1 : dans le cas Jolof Export et Logistique SA, quel est le cash-to-cash cycle calcule ? Reponse : 44 jours. Question 2 : quel est l''OTIF calcule, et comment se situe-t-il par rapport au seuil usuel de 95 pourcent ? Reponse : 85,0 pourcent, nettement en dessous du seuil usuel. Question 3 : quelles sont les coordonnees approximatives du centre de gravite calcule pour les trois zones de collecte ? Reponse : environ 70,2 kilometres sur l''axe X et moins 8,3 kilometres sur l''axe Y. Question 4 : quelle est l''EMV totale des trois risques identifies ? Reponse : 18,36 millions de FCFA par an. Question 5 : pourquoi la relocalisation de l''unite de collecte constitue-t-elle la recommandation prioritaire dans la synthese integree ? Reponse : parce qu''elle traite simultanement deux problemes identifies separement, l''insuffisance de l''OTIF liee a des trajets trop longs, et le risque de rupture de la chaine du froid aggrave par la duree de transport, ce qui en fait le levier d''action le plus efficace rapporte a son cout. Merci a toutes et a tous pour votre participation a ce module de Master 1 ; bon courage pour vos examens et votre poursuite d''etudes en Master 2.', 'video', 90, false, 90
from public.courses c where c.slug = 'mas-log-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours video (1h30) : Atelier transversal, cas pratique file - Jolof Export et Logistique SA');
