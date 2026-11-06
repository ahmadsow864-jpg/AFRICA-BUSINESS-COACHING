-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Cours (partie 19/21). À exécuter après seed.sql.

-- Cours : Doctorat Informatique : préparer l'examen de qualification doctorale
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'doc-info', (select id from public.levels where name = 'Doctorat'), null, 'Informatique', 'Doctorat Informatique : préparer l''examen de qualification doctorale', 'Préparation à l''examen de qualification doctorale (comprehensive exam) en Informatique : le débat entre l''ingénierie logicielle classique fondée sur la preuve et la vérification formelle, et l''apprentissage automatique fondé sur les données, la boîte noire et l''explicabilité ; les méthodes de recherche du champ (preuve formelle, expérimentation et benchmarking, étude empirique par fouille de dépôts logiciels) ; une épreuve type corrigée et une simulation complète de soutenance. Public : doctorants en informatique préparant leur examen de qualification. Prérequis : Master en informatique.', true, 803
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir son examen de qualification doctorale en Informatique', '## Objectifs de la leçon

Cette première leçon pose le cadre de l''examen de qualification doctorale (comprehensive exam) en
Informatique. Avant d''entrer dans les courants théoriques du champ, il faut comprendre ce que le jury
attend réellement de vous, et se doter d''une méthode de travail tenable sur plusieurs semaines. Un
doctorant qui aborde cet examen comme une accumulation de lectures isolées s''épuise sans jamais produire
de vision d''ensemble ; un doctorant qui construit, dès le départ, une cartographie des courants et une
note de synthèse vivante progresse de façon cumulative.

## Nature de l''épreuve

L''examen de qualification doctorale en Informatique n''est pas un contrôle de connaissances techniques au
sens d''un examen de Master. Il vérifie trois choses très différentes.

- La maîtrise de l''état de l''art : savoir situer les grands courants de la discipline (génie logiciel
  formel, intelligence artificielle et apprentissage automatique, systèmes, algorithmique, réseaux, sécurité
  informatique, selon la spécialité de la thèse), leurs auteurs fondateurs, leurs méthodes et leurs limites.
- La capacité de synthèse critique : ne pas réciter des définitions, mais comparer deux courants, montrer
  leurs tensions (par exemple preuve formelle contre apprentissage statistique), et argumenter pourquoi un
  projet de thèse se positionne d''un côté, de l''autre, ou à leur intersection.
- La défense orale d''un projet de thèse : présenter, devant un jury de chercheurs confirmés, la
  problématique, l''ancrage théorique et la méthodologie envisagée, puis répondre à des questions qui
  testent la solidité du raisonnement plus que la mémorisation.

Le format concret varie selon les universités et les écoles doctorales (épreuve écrite de synthèse,
soutenance orale, ou les deux), mais le fond est partout le même : montrer que vous maîtrisez le champ
scientifique dans lequel votre thèse va s''inscrire, et que vous êtes capable de le discuter, pas seulement
de le réciter.

## Ce que le jury attend vraiment

Un jury doctoral en informatique cherche d''abord de la rigueur intellectuelle. Une affirmation du type
« les réseaux de neurones ont remplacé les méthodes formelles » sera immédiatement sanctionnée, parce
qu''elle ignore que ces deux courants coexistent et se complètent selon les problèmes traités (un système
critique de pilotage aérien reste vérifié formellement ; un système de recommandation s''appuie sur
l''apprentissage statistique). Le jury valorise au contraire une pensée qui articule :

- la connaissance précise des définitions et des limites théoriques de chaque courant,
- la capacité à citer les contributions fondatrices sans les déformer,
- l''aptitude à relier ces courants à des méthodes de recherche concrètes (preuve, expérimentation,
  étude empirique),
- et la capacité à situer sa propre problématique de thèse dans cette cartographie, en expliquant ce que
  son travail apporte par rapport à l''existant.

Le jury sanctionne à l''inverse l''absence de recul critique, les généralisations non étayées, et toute
affirmation chiffrée ou citation qui ne pourrait pas être vérifiée dans la littérature.

## Méthode de travail recommandée

Trois outils structurent efficacement une préparation sur plusieurs semaines.

La fiche de lecture systématique. Pour chaque article, ouvrage ou chapitre important, une fiche courte
qui répond à quatre questions : quelle est la problématique traitée ? Quelle est la méthode utilisée
(preuve, expérimentation, étude empirique) ? Quel est le résultat principal ? Quelles sont les limites
reconnues par l''auteur lui-même ou par la littérature postérieure ? Cette discipline évite de relire un
même texte plusieurs fois sans en retenir l''essentiel.

La cartographie des courants. Un schéma ou un tableau, régulièrement mis à jour, qui place les grands
courants du champ (par exemple : méthodes formelles, apprentissage automatique, systèmes distribués,
algorithmique et complexité) avec, pour chacun, ses auteurs fondateurs, ses méthodes de recherche
privilégiées, ses succès reconnus et ses critiques. Cette carte devient le squelette de la note de
synthèse finale et du plan de soutenance.

La note de synthèse vivante. Un document unique, réécrit et enrichi semaine après semaine, qui ne
recopie pas les fiches de lecture mais construit un discours argumenté : « le champ de l''informatique est
traversé par la tension entre vérifiabilité formelle et efficacité empirique des heuristiques ; ma thèse se
positionne... ». C''est ce document, et non les fiches brutes, qui doit être présentable au jury.

## Plan de travail sur 8 semaines

- Semaines 1 et 2 : lecture de synthèse sur le premier grand courant théorique du champ (fiches de lecture,
  début de cartographie).
- Semaines 3 et 4 : lecture de synthèse sur le second grand courant, en construisant systématiquement des
  comparaisons avec le premier (points communs, tensions, exemples de systèmes relevant de chacun).
- Semaine 5 : approfondissement des méthodes de recherche du champ (preuve formelle, expérimentation,
  étude empirique des dépôts logiciels) et rédaction d''un protocole de recherche illustratif.
- Semaine 6 : rédaction de la note de synthèse qui articule les deux courants et les méthodes de
  recherche, et premier positionnement du projet de thèse personnel dans cette cartographie.
- Semaine 7 : entraînement à l''oral sur des questions type, seul puis devant un collègue ou un encadrant,
  avec chronométrage des réponses.
- Semaine 8 : répétition générale de la soutenance (quinze minutes de présentation, puis questions de
  jury), relecture finale de la note de synthèse, vérification de tous les exemples chiffrés ou calculs
  mentionnés.

Ce plan n''est pas rigide : il doit être adapté à la spécialité exacte de la thèse et aux exigences propres
de l''école doctorale. Mais le principe reste valable dans tous les cas : construire, lecture après lecture,
une vision argumentée du champ plutôt qu''un empilement de connaissances disjointes.

## Exercices pratiques

1. Dressez la liste des deux ou trois grands courants théoriques de l''informatique qui vous semblent les
   plus pertinents pour votre propre projet de thèse, et justifiez ce choix en deux phrases chacun.
2. Rédigez une fiche de lecture (modèle : problématique, méthode, résultat, limites) sur un article ou un
   ouvrage de référence que vous avez déjà lu dans votre spécialité.
3. Esquissez, sous forme de tableau à deux colonnes, une première cartographie opposant « méthodes
   formelles / vérification » et « apprentissage automatique / approche statistique ».
4. Formulez, en une phrase, la question de synthèse que vous redoutez le plus pour votre propre examen de
   qualification, et expliquez pourquoi.
5. Construisez votre propre plan de travail sur 8 semaines en adaptant celui proposé ici à votre
   spécialité et à votre calendrier réel.

## Corrigé

1. Il n''existe pas de bonne réponse unique : l''essentiel est que les courants choisis soient réellement
   structurants pour votre champ (par exemple, pour une thèse en apprentissage automatique appliqué, les
   courants pertinents seraient plutôt « apprentissage statistique » et « explicabilité / IA de confiance »,
   alors que pour une thèse en vérification de systèmes critiques, ce seraient « méthodes formelles » et
   « test et validation empirique »), et que la justification montre un lien explicite avec la problématique
   de thèse envisagée.
2. Une fiche réussie reste courte (une demi-page au maximum), distingue clairement les quatre rubriques, et
   formule les limites sans les minimiser : un bon candidat sait dire ce qu''un travail ne démontre pas.
3. Le tableau doit éviter la caricature « les méthodes formelles sont dépassées » ou « l''apprentissage
   automatique est sans fondement » : chaque courant possède des succès reconnus (la preuve formelle pour
   les systèmes où une erreur est inacceptable, l''apprentissage statistique pour les problèmes où la
   spécification exacte du comportement attendu est elle-même inconnue ou trop complexe à écrire) et des
   limites assumées (coût et rigidité de la preuve formelle à grande échelle, difficulté à expliquer et à
   garantir le comportement d''un modèle statistique, en particulier dans des cas rares).
4. Toute question honnête est recevable ; l''essentiel est d''identifier précisément la source de la crainte
   (manque de lectures sur un sous-thème, difficulté à comparer deux courants, manque d''aisance à l''oral)
   pour y consacrer un temps de travail ciblé dans les semaines suivantes.
5. Un bon plan conserve la logique générale (courant 1, courant 2, méthodes, synthèse, entraînement oral,
   répétition générale) mais adapte les durées à la charge réelle de lecture disponible dans la
   spécialité choisie, et prévoit des marges pour les imprévus (délai de l''encadrant, autres obligations
   doctorales).', 'texte', 50, true, 10
from public.courses c where c.slug = 'doc-info'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir son examen de qualification doctorale en Informatique');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Courant théorique n°1 : l''ingénierie logicielle classique, la preuve et la vérification formelle', '## Objectifs de la leçon

Cette leçon présente le premier grand courant théorique du champ informatique : l''approche dite
« classique » du génie logiciel, fondée sur la spécification rigoureuse, la preuve et la vérification
formelle. Ce courant pose une question centrale pour toute l''informatique : comment garantir, avec
certitude mathématique, qu''un programme fait exactement ce qu''il doit faire, ni plus ni moins ?

## Définitions

La vérification formelle désigne l''ensemble des techniques qui établissent, par le raisonnement
mathématique et non par le simple test, qu''un programme respecte une spécification donnée. Une
spécification est un énoncé précis des propriétés attendues : par exemple, « cette fonction de tri
retourne toujours une liste triée, de même longueur et contenant les mêmes éléments que la liste
d''entrée ». La preuve formelle consiste à démontrer, étape par étape, que le code satisfait cette
spécification pour toute entrée possible, et non seulement pour les cas testés.

Ce courant se distingue radicalement du test logiciel classique. Un test exécute le programme sur un
nombre fini de cas et vérifie le résultat obtenu ; il peut révéler la présence d''une erreur, mais jamais
garantir son absence totale, puisque l''espace des entrées possibles est en général infini ou trop grand
pour être parcouru entièrement. La preuve, à l''inverse, raisonne sur le programme lui-même, pas sur des
exécutions particulières : si elle est correcte, elle couvre toutes les entrées simultanément.

## Auteurs fondateurs et évolution historique

Ce courant trouve sa source dans les travaux fondateurs sur la calculabilité et la logique des
programmes au milieu du vingtième siècle. Alan Turing a posé, dès les années 1930 et 1940, les bases
théoriques de ce qu''un programme peut ou ne peut pas calculer, et a esquissé très tôt l''idée que la
correction d''un programme pouvait être établie par un raisonnement formel plutôt que par la seule
observation de son exécution.

Dans les années 1960 et 1970, plusieurs chercheurs ont donné à cette intuition un cadre mathématique
exploitable. Robert Floyd a proposé une méthode d''assertions attachées aux points du programme,
permettant de raisonner sur l''état des variables à chaque étape de l''exécution. Tony Hoare a formalisé
ce travail sous la forme d''une logique de programmation (la logique de Hoare), qui exprime une preuve de
correction comme une suite de « triplets » reliant une précondition, une instruction, et une
postcondition. Edsger Dijkstra, de son côté, a défendu avec force l''idée que la correction d''un programme
devait être pensée et prouvée en même temps que le programme était construit, plutôt que vérifiée après
coup par des tests, et a insisté sur la discipline de programmation structurée comme condition de la
vérifiabilité.

Cette ligne de pensée s''est ensuite prolongée, à partir des années 1980 et 1990, par le développement
d''outils de vérification automatique ou semi-automatique : les démonstrateurs de théorèmes assistés par
ordinateur, qui aident un humain à construire une preuve formelle complète, et le model checking, une
technique qui explore de façon exhaustive et automatique tous les états possibles d''un système fini pour
vérifier qu''aucun d''eux ne viole la spécification. Le model checking a connu un succès particulier dans la
vérification de protocoles de communication et de circuits matériels, où le nombre d''états, bien que très
grand, reste fini et peut être exploré par des algorithmes dédiés.

## Domaines d''application et succès reconnus

L''ingénierie logicielle classique fondée sur la preuve trouve son terrain d''élection dans les systèmes où
une erreur est inacceptable : logiciels de pilotage aérien, systèmes de signalisation ferroviaire,
microprocesseurs, protocoles de sécurité cryptographique. Dans ces domaines, des projets ont démontré
qu''il est possible de prouver formellement la correction de composants entiers d''un système, et pas
seulement de petits algorithmes isolés. Ce courant a également produit des langages de spécification
formelle, qui décrivent précisément ce qu''un système doit faire avant même d''écrire le code.

## Limites et critiques

Ce courant fait l''objet de critiques bien documentées, qui expliquent en partie pourquoi il ne s''est pas
généralisé à l''ensemble du développement logiciel.

- Le coût. Écrire une spécification formelle complète et construire une preuve associée demande un temps
  et une expertise considérables, hors de portée pour la majorité des projets logiciels commerciaux aux
  délais contraints.
- L''explosion combinatoire. Le model checking, bien qu''automatique, se heurte au problème de l''explosion
  du nombre d''états à explorer lorsque le système devient complexe, ce qui limite la taille des systèmes
  vérifiables en pratique.
- L''écart entre spécification et besoin réel. Une preuve ne garantit que la conformité du programme à sa
  spécification ; si la spécification elle-même ne traduit pas correctement le besoin réel de
  l''utilisateur, le programme peut être prouvé correct et pourtant inutile ou dangereux. Ce problème,
  parfois appelé l''écart de validation, rappelle qu''une preuve ne dispense jamais d''une réflexion sur la
  pertinence de la spécification choisie.
- L''inadaptation à certains problèmes. De nombreux problèmes informatiques modernes (reconnaissance
  d''images, traduction automatique, recommandation de contenus) n''admettent pas de spécification exacte et
  complète du comportement attendu : on ne sait pas écrire, de façon formelle, la règle qui définirait
  « une bonne traduction ». Ce constat ouvre sur le second grand courant théorique du champ, fondé sur
  l''apprentissage à partir de données plutôt que sur la spécification explicite.

## Points clés à retenir

- La vérification formelle prouve mathématiquement qu''un programme respecte une spécification, pour
  toutes les entrées, contrairement au test qui n''examine qu''un nombre fini de cas.
- Les contributions fondatrices (Turing sur la calculabilité, Floyd et Hoare sur la logique de preuve,
  Dijkstra sur la discipline de programmation prouvable) structurent encore le vocabulaire du domaine.
- Le model checking automatise l''exploration exhaustive des états d''un système fini, avec une limite
  pratique liée à l''explosion combinatoire.
- Ce courant excelle sur les systèmes critiques à spécification claire, et atteint ses limites sur les
  problèmes où la spécification exacte du comportement attendu n''est elle-même pas formulable.

## Exercices pratiques

1. Expliquez, dans vos propres mots et sans citation textuelle, la différence entre « tester » un
   programme et « prouver » sa correction.
2. En quoi la contribution de Dijkstra sur la programmation structurée est-elle liée à la possibilité de
   prouver un programme correct ?
3. Donnez un exemple de système informatique pour lequel la preuve formelle est particulièrement adaptée,
   et un exemple pour lequel elle serait difficile ou impossible à mettre en œuvre, en justifiant chaque
   choix.
4. Qu''est-ce que « l''écart de validation » et pourquoi montre-t-il qu''une preuve formelle ne suffit pas,
   seule, à garantir la qualité d''un logiciel ?
5. En quoi l''explosion combinatoire limite-t-elle la portée pratique du model checking ?
6. Préparez, en cinq phrases, une réponse synthétique à la question : « Le génie logiciel fondé sur la
   preuve formelle est-il encore pertinent à l''ère de l''apprentissage automatique ? »

## Corrigé

1. Le test exécute le programme sur un ensemble fini de cas choisis et observe si le résultat est celui
   attendu ; il peut révéler une erreur mais ne peut jamais garantir qu''aucune erreur ne subsiste, car il
   ne couvre pas la totalité des entrées possibles. La preuve, au contraire, raisonne sur la structure du
   programme et sa spécification de façon à couvrir toutes les entrées simultanément : si elle est
   correcte, elle établit une garantie universelle, pas seulement ponctuelle.
2. La programmation structurée limite les constructions autorisées (évite les sauts incontrôlés dans le
   programme) pour que l''état du programme à chaque étape reste prévisible et analysable pas à pas. Cette
   discipline rend le raisonnement par assertions et par triplets de Hoare applicable de façon
   systématique, alors qu''un code désorganisé rendrait ce raisonnement pratiquement impossible.
3. Exemple adapté : un protocole cryptographique ou un algorithme de contrôle d''un système embarqué
   critique, où le comportement attendu est entièrement spécifiable. Exemple inadapté : un système de
   reconnaissance de visages, où il n''existe pas de règle formelle complète définissant ce qu''est
   « reconnaître correctement » un visage dans toutes les conditions possibles.
4. L''écart de validation désigne le risque qu''une spécification, bien que respectée à la lettre par le
   programme prouvé correct, ne traduise pas fidèlement le besoin réel de l''utilisateur. Un programme peut
   donc être formellement correct par rapport à sa spécification et néanmoins inadapté, incomplet ou
   dangereux si cette spécification elle-même contenait une erreur de conception ou une mauvaise
   compréhension du besoin.
5. Le nombre d''états possibles d''un système croît en général de façon exponentielle avec le nombre de ses
   composants : explorer exhaustivement tous ces états devient rapidement impraticable en temps de calcul
   et en mémoire, même pour des systèmes de taille modeste. C''est cette croissance explosive, et non une
   limite de la méthode elle-même, qui borne la taille des systèmes vérifiables automatiquement.
6. Une réponse synthétique de qualité reconnaîtrait que la preuve formelle reste irremplaçable pour les
   systèmes critiques à spécification claire, qu''elle coexiste avec l''apprentissage automatique plutôt que
   d''être « dépassée » par lui, et que des travaux récents cherchent même à combiner les deux (par
   exemple vérifier formellement certaines propriétés de sécurité d''un système qui intègre des composants
   d''apprentissage).', 'texte', 55, false, 20
from public.courses c where c.slug = 'doc-info'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Courant théorique n°1 : l''ingénierie logicielle classique, la preuve et la vérification formelle');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Courant théorique n°2 : l''apprentissage automatique, la boîte noire et l''explicabilité', '## Objectifs de la leçon

Cette leçon présente le second grand courant théorique du champ, en tension et en complémentarité avec le
premier : l''apprentissage automatique, fondé non pas sur une spécification écrite à l''avance par un
humain, mais sur l''extraction automatique de régularités statistiques à partir de données. Ce courant
pose une question aussi centrale que la précédente : comment construire des systèmes performants pour des
problèmes qu''on ne sait pas spécifier formellement, et comment leur faire confiance si l''on ne peut pas,
le plus souvent, prouver leur comportement ?

## Définitions

L''apprentissage automatique (en anglais machine learning) désigne l''ensemble des méthodes qui permettent
à un programme d''améliorer ses performances sur une tâche à partir de données d''exemple, sans que la
règle de décision soit écrite explicitement par un développeur. Au lieu d''écrire : « si telle condition
précise, alors telle action », on fournit au système un grand nombre d''exemples (des images déjà
étiquetées, des textes déjà classés, des décisions passées déjà observées), et un algorithme
d''apprentissage ajuste automatiquement un modèle statistique qui reproduit, puis généralise, les
régularités observées dans ces exemples.

Le problème de la boîte noire désigne la difficulté, pour de nombreux modèles d''apprentissage performants
(en particulier les réseaux de neurones profonds), à expliquer de façon compréhensible par un humain
pourquoi le modèle a produit telle prédiction pour telle entrée donnée. Le modèle peut être extrêmement
précis statistiquement tout en restant opaque dans son fonctionnement interne : des millions de paramètres
numériques interagissent sans qu''aucun d''eux, pris isolément, ne corresponde à une règle lisible par un
humain. L''explicabilité (en anglais interpretability ou explainability) est le champ de recherche qui
cherche à rendre ces décisions compréhensibles, soit en construisant des modèles intrinsèquement plus
simples à lire, soit en développant des méthodes qui expliquent, après coup, les décisions d''un modèle
complexe.

## Auteurs fondateurs et évolution historique

Les racines de ce courant remontent aux premiers travaux sur les réseaux de neurones artificiels. Frank
Rosenblatt a proposé, à la fin des années 1950, le perceptron, un modèle simple capable d''ajuster
automatiquement ses paramètres à partir d''exemples pour séparer deux catégories de données, posant ainsi
la première pierre de l''apprentissage statistique moderne. Ce modèle a connu une période de scepticisme
après que ses limites théoriques sur certains problèmes simples ont été démontrées, ce qui a ralenti la
recherche sur les réseaux de neurones pendant plus d''une décennie.

Le courant a connu un renouveau décisif dans les années 1980 avec la diffusion de l''algorithme de
rétropropagation du gradient, qui a permis d''entraîner efficacement des réseaux de neurones à plusieurs
couches, popularisé notamment par les travaux de David Rumelhart, Geoffrey Hinton et leurs collègues. En
parallèle, Vladimir Vapnik a développé, à partir des années 1960 et surtout dans les années 1990, la
théorie de l''apprentissage statistique, qui fournit un cadre mathématique rigoureux pour comprendre à
quelles conditions un modèle appris sur un ensemble d''exemples peut raisonnablement généraliser à des
données nouvelles qu''il n''a jamais vues.

À partir des années 2010, la combinaison de très grandes quantités de données, de capacités de calcul
accrues et de réseaux de neurones profonds (l''apprentissage profond, ou deep learning) a permis des
progrès très rapides sur des tâches jusque-là considérées comme hors de portée : reconnaissance d''images,
traduction automatique, génération de texte. C''est précisément cette montée en puissance qui a rendu le
problème de l''explicabilité urgent : des systèmes de plus en plus influents sur des décisions humaines
(crédit, recrutement, santé, justice) fonctionnent sur des principes statistiques que leurs propres
concepteurs ne peuvent pas toujours expliquer finement.

## Domaines d''application et succès reconnus

L''apprentissage automatique excelle précisément là où le courant précédent atteint ses limites : les
problèmes pour lesquels il n''existe pas de règle explicite et complète, mais pour lesquels on dispose de
nombreux exemples représentatifs. La reconnaissance vocale, la traduction automatique, la détection de
fraude, le diagnostic assisté à partir d''images médicales, ou la recommandation de contenus en sont des
illustrations couramment citées dans la littérature. Dans tous ces cas, il serait extrêmement difficile,
voire impossible, d''écrire à la main une spécification formelle complète du comportement attendu, alors
qu''il est possible de rassembler des exemples représentatifs du problème.

## Limites et critiques

- L''opacité et le risque d''erreurs non détectées. Un modèle statistique peut se tromper de façon
  systématique sur des cas rares ou atypiques, sans qu''aucun signal n''alerte explicitement les
  concepteurs, puisque le modèle n''offre pas de preuve de correction, seulement une performance moyenne
  mesurée sur un échantillon de test.
- Le biais hérité des données. Un modèle appris sur des données reflétant des inégalités ou des erreurs
  historiques peut reproduire, voire amplifier, ces biais, sans qu''un simple examen du code ne permette de
  le détecter : le problème ne réside pas dans une instruction erronée, mais dans la statistique des
  données d''apprentissage elles-mêmes.
- L''absence de garantie formelle. À la différence du courant précédent, l''apprentissage automatique ne
  fournit, dans l''immense majorité des cas, aucune preuve mathématique que le modèle se comportera
  correctement sur toute entrée future : la confiance repose sur une évaluation empirique, nécessairement
  partielle.
- La dépendance à la qualité et à la quantité des données disponibles, problème particulier dans les
  contextes où les données numériques structurées restent rares, notamment pour certaines langues
  africaines ou secteurs économiques peu numérisés.

## Points clés à retenir

- L''apprentissage automatique construit un modèle statistique à partir d''exemples, plutôt que d''appliquer
  une règle écrite explicitement par un humain.
- Les contributions fondatrices (Rosenblatt sur le perceptron, Rumelhart et Hinton sur la
  rétropropagation, Vapnik sur la théorie de l''apprentissage statistique) structurent encore le
  vocabulaire du domaine.
- Le problème de la boîte noire et le champ de l''explicabilité répondent à la difficulté de comprendre, a
  posteriori, pourquoi un modèle complexe a pris telle décision.
- Ce courant excelle sur les problèmes sans spécification formelle possible, mais ne fournit, en général,
  aucune garantie de correction comparable à une preuve formelle.

## Exercices pratiques

1. Expliquez, sans citation textuelle, la différence entre « écrire une règle » et « apprendre un modèle
   à partir de données », à l''aide d''un exemple de votre choix.
2. En quoi la théorie de l''apprentissage statistique de Vapnik répond-elle à une question différente de
   celle que pose la logique de Hoare étudiée dans la leçon précédente ?
3. Donnez un exemple de problème pour lequel l''apprentissage automatique est particulièrement adapté, et
   un exemple pour lequel il serait risqué de s''y fier sans garde-fou supplémentaire.
4. Pourquoi le biais hérité des données constitue-t-il un problème différent d''une simple erreur de
   programmation au sens classique ?
5. Qu''est-ce que l''explicabilité cherche à résoudre, et pourquoi ce besoin est-il devenu plus pressant
   avec l''apprentissage profond ?
6. Préparez, en cinq phrases, une réponse synthétique à la question : « L''apprentissage automatique
   rend-il obsolète la vérification formelle ? »

## Corrigé

1. Écrire une règle consiste à formuler explicitement, à l''avance, la logique de décision (par exemple :
   « refuser un crédit si le revenu mensuel est inférieur à un seuil donné »). Apprendre un modèle
   consiste à fournir de nombreux dossiers déjà traités et à laisser un algorithme ajuster automatiquement
   une fonction statistique qui généralise les régularités observées, sans qu''un humain n''ait écrit la
   règle.
2. La logique de Hoare répond à : « comment prouver qu''un programme, dont la spécification est connue à
   l''avance, respecte effectivement cette spécification ? ». La théorie de l''apprentissage statistique
   répond à une question différente : « à quelles conditions un modèle ajusté sur un ensemble fini
   d''exemples peut-il généraliser à des données nouvelles, pour un problème sans spécification explicite
   complète ? ».
3. Exemple adapté : la reconnaissance vocale ou la détection de fraude bancaire, où il existe une grande
   quantité d''exemples mais aucune règle simple et exhaustive. Exemple à risque : l''octroi automatique de
   crédit sans aucun contrôle humain, où un biais peut avoir des conséquences sociales graves et où
   l''absence de garantie formelle appelle un contrôle supplémentaire.
4. Une erreur de programmation classique se situe dans une instruction identifiable du code, que l''on peut
   localiser et corriger. Un biais hérité des données ne vient d''aucune instruction fausse : le code peut
   être parfaitement correct et le modèle performant en moyenne, tout en reproduisant une inégalité déjà
   présente dans les données d''entraînement.
5. L''explicabilité cherche à rendre compréhensible, pour un humain, la raison pour laquelle un modèle a
   produit telle prédiction, ce qui est nécessaire pour détecter les erreurs ou contester une décision.
   Ce besoin s''est renforcé avec l''apprentissage profond parce que la complexité interne des réseaux de
   neurones (des millions de paramètres sans règles lisibles) rend l''explication a posteriori plus
   difficile que pour des modèles statistiques plus simples.
6. Une bonne réponse refuserait l''opposition binaire : l''apprentissage automatique répond à des problèmes
   sans spécification formelle possible ; les systèmes critiques à spécification claire continuent de
   relever de la preuve formelle. Les deux courants coexistent selon la nature du problème traité, et la
   recherche actuelle explore des approches hybrides, par exemple vérifier formellement certaines
   propriétés d''un système qui intègre des composants d''apprentissage.', 'texte', 55, false, 30
from public.courses c where c.slug = 'doc-info'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Courant théorique n°2 : l''apprentissage automatique, la boîte noire et l''explicabilité');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Les méthodes de recherche en Informatique : preuve, expérimentation et étude empirique', '## Objectifs de la leçon

Après avoir situé les deux grands courants théoriques du champ, cette leçon présente les méthodes de
recherche propres à l''informatique : la preuve formelle, l''expérimentation et le benchmarking, et l''étude
empirique du génie logiciel par fouille de dépôts de code (mining software repositories). Un travail de
thèse en informatique se définit autant par le courant théorique dans lequel il s''inscrit que par la ou
les méthodes qu''il mobilise pour produire des résultats valides et vérifiables.

## La preuve formelle comme méthode de recherche

Déjà présentée comme courant théorique, la preuve formelle est aussi, concrètement, une méthode de
travail du chercheur : écrire une spécification précise, construire un raisonnement déductif (manuel ou
assisté par un outil logiciel) qui établit la conformité du système à cette spécification, puis faire
vérifier ce raisonnement, soit par un outil automatique, soit par la communauté scientifique lors de la
publication. La validité d''un résultat obtenu par cette méthode repose sur la rigueur de la déduction :
une erreur dans un seul pas du raisonnement invalide la conclusion entière, ce qui impose une relecture
particulièrement exigeante, souvent facilitée aujourd''hui par des outils d''assistance à la preuve.

## L''expérimentation et le benchmarking

L''expérimentation en informatique consiste à mesurer, de façon contrôlée et reproductible, la performance
d''un système ou d''un algorithme sur des données ou des tâches représentatives. Le benchmarking désigne
plus précisément la comparaison de plusieurs méthodes concurrentes sur un même jeu de données ou un même
protocole de test, afin de déterminer laquelle est la plus rapide, la plus précise, ou la plus économe en
ressources.

Une expérimentation rigoureuse en informatique respecte plusieurs exigences méthodologiques : un jeu de
données de test clairement défini et si possible partagé avec la communauté, une séparation nette entre
les données utilisées pour ajuster une méthode (apprentissage) et celles utilisées pour mesurer sa
performance finale (test), une répétition des mesures pour tenir compte de la variabilité (temps
d''exécution qui peut varier légèrement d''une exécution à l''autre, initialisation aléatoire d''un modèle
d''apprentissage), et une description suffisamment précise du protocole pour qu''un autre chercheur puisse
reproduire l''expérience de façon indépendante. Cette dernière exigence, la reproductibilité, est devenue
un critère central d''évaluation de la qualité scientifique d''un travail expérimental en informatique.

## L''étude empirique du génie logiciel par fouille de dépôts

La troisième méthode, plus récente dans son ampleur, consiste à étudier empiriquement comment les
logiciels sont réellement conçus, modifiés et maintenus, en analysant à grande échelle les dépôts de code
source et leur historique (fouille de dépôts logiciels, mining software repositories). Un dépôt de code
conserve, au fil du temps, chaque modification apportée au code, chaque correction de défaut, chaque
discussion entre développeurs liée à un changement. Cette masse de données constitue un matériau
empirique considérable pour répondre à des questions que ni la preuve ni l''expérimentation contrôlée ne
peuvent trancher seules : quels types d''erreurs reviennent le plus souvent dans la pratique réelle ?
Quelles pratiques de développement sont statistiquement associées à moins de défauts ? Comment les
équipes de développement collaborent-elles effectivement ?

Cette méthode se distingue de l''expérimentation contrôlée par son caractère observationnel : le chercheur
n''intervient pas sur le système étudié, il observe et analyse statistiquement des données déjà produites
par l''activité réelle de développement. Elle partage avec les méthodes empiriques des sciences sociales
des exigences de rigueur statistique (taille de l''échantillon, contrôle des facteurs de confusion,
prudence dans l''interprétation causale d''une simple corrélation observée).

## Protocole de recherche illustratif (contexte sénégalais fictif)

Pour illustrer l''articulation de ces méthodes, prenons un exemple fictif de protocole de recherche :
une équipe doctorale sénégalaise souhaite étudier la fiabilité des applications mobiles de paiement
utilisées par de petits commerçants dans plusieurs marchés de Dakar.

- Question de recherche : les défauts logiciels les plus fréquents dans ces applications relèvent-ils
  principalement de la logique métier (calculs de montants, gestion des soldes) ou de la gestion des
  pannes réseau propres au contexte local (coupures de connexion fréquentes) ?
- Méthode 1, fouille de dépôts : analyser l''historique de développement (fictif, à des fins pédagogiques)
  de plusieurs applications open source comparables, en classant chaque correction de défaut archivée
  selon sa catégorie (logique métier, réseau, interface, sécurité), pour obtenir une répartition empirique
  des types de défauts.
- Méthode 2, expérimentation contrôlée : soumettre, en environnement de test, les applications étudiées à
  des scénarios simulant des coupures réseau répétées, et mesurer le taux d''erreurs observées (montants
  incorrects, transactions dupliquées) comparé à un scénario de réseau stable.
- Articulation des deux méthodes : la fouille de dépôts donne une image de ce qui a historiquement posé
  problème en conditions réelles ; l''expérimentation contrôlée permet de vérifier, dans un cadre maîtrisé,
  si l''hypothèse issue de cette analyse (davantage de défauts liés au réseau que de défauts purement
  logiques) se confirme de façon mesurable.
- Limite assumée du protocole : un échantillon fictif ou restreint d''applications ne permettrait pas de
  généraliser la conclusion à l''ensemble de l''écosystème des paiements mobiles ouest-africains ; toute
  généralisation devrait être formulée avec prudence et accompagnée d''une proposition d''étude à plus
  grande échelle.

## Points clés à retenir

- La preuve formelle, l''expérimentation et le benchmarking, et l''étude empirique par fouille de dépôts
  sont trois méthodes de recherche complémentaires, pas concurrentes, en informatique.
- La reproductibilité (données partagées, protocole décrit précisément) est un critère central de
  validité pour les méthodes expérimentales.
- La fouille de dépôts logiciels est une méthode observationnelle, qui demande la même rigueur
  statistique que les méthodes empiriques des sciences sociales, notamment sur la distinction entre
  corrélation et causalité.
- Un protocole de recherche solide articule souvent plusieurs méthodes et assume explicitement ses
  limites plutôt que de généraliser abusivement un résultat partiel.

## Exercices pratiques

1. Expliquez, en une phrase chacune, la différence entre une preuve formelle, une expérimentation
   contrôlée et une étude empirique par fouille de dépôts.
2. Pourquoi la reproductibilité est-elle devenue un critère central d''évaluation d''un travail
   expérimental en informatique ?
3. Dans le protocole fictif proposé sur les applications de paiement mobile, identifiez une menace
   possible à la validité de la conclusion (un facteur qui pourrait fausser l''interprétation du résultat).
4. Proposez, pour votre propre spécialité de thèse, une question de recherche qui mobiliserait à la fois
   une méthode expérimentale et une méthode empirique observationnelle.
5. En quoi la fouille de dépôts logiciels est-elle une méthode « observationnelle », et pourquoi cela
   impose-t-il une prudence particulière dans l''interprétation causale des résultats ?

## Corrigé

1. La preuve formelle établit, par un raisonnement déductif, qu''un système respecte une spécification
   pour toute entrée possible. L''expérimentation contrôlée mesure la performance d''un système sur des
   scénarios de test définis par le chercheur, qui peut faire varier certains facteurs pour isoler leur
   effet. L''étude empirique par fouille de dépôts analyse statistiquement des données déjà produites par
   l''activité réelle de développement, sans intervention du chercheur sur le système observé.
2. Parce qu''un résultat expérimental qu''aucun autre chercheur ne peut reproduire avec le même protocole
   et les mêmes données reste fragile scientifiquement : il pourrait provenir d''un artefact particulier du
   jeu de test utilisé, d''une erreur d''implémentation non détectée, ou d''un choix de paramètres
   favorable au résultat souhaité. La reproductibilité permet à la communauté de vérifier
   indépendamment la validité d''une conclusion.
3. Une menace possible : les applications open source analysées en fouille de dépôts pourraient ne pas
   être représentatives des applications commerciales réellement utilisées par les petits commerçants
   dakarois, qui restent souvent propriétaires et dont le code n''est pas accessible à l''analyse ; la
   répartition des défauts observée pourrait donc différer de la réalité du terrain visé.
4. Toute proposition cohérente est recevable : l''essentiel est que les deux méthodes répondent à des
   aspects complémentaires de la même question (par exemple, une étude empirique observationnelle pour
   identifier un phénomène fréquent en conditions réelles, puis une expérimentation contrôlée pour en
   tester une explication causale précise).
5. La méthode est observationnelle parce que le chercheur ne manipule aucune variable : il se contente
   d''observer des données déjà produites par l''activité normale de développement. Cette absence de
   manipulation contrôlée signifie qu''une association statistique observée (par exemple, telle pratique
   de développement associée à moins de défauts) peut s''expliquer par un facteur caché plutôt que par un
   lien de cause à effet direct, ce qui impose de formuler les conclusions comme des corrélations à
   confirmer, pas comme des causes établies.', 'texte', 60, false, 40
from public.courses c where c.slug = 'doc-info'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Les méthodes de recherche en Informatique : preuve, expérimentation et étude empirique');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Épreuve type d''examen de qualification en Informatique', '## Objectifs de la leçon

Cette leçon simule une épreuve type (non officielle, construite pour l''exercice) de l''examen de
qualification doctorale en Informatique. Elle mobilise les deux courants théoriques étudiés (ingénierie
logicielle classique fondée sur la preuve, apprentissage automatique fondé sur les données) et les
méthodes de recherche vues précédemment (preuve formelle, expérimentation et benchmarking, étude
empirique par fouille de dépôts). L''objectif n''est pas de mémoriser cette réponse, mais de comprendre la
structure d''un bon plan de réponse, transposable à d''autres questions de synthèse.

## Question de synthèse type

« Dans quelle mesure la distinction entre systèmes dont le comportement peut être garanti par la preuve
formelle et systèmes dont le comportement ne peut être évalué que de façon empirique constitue-t-elle une
limite théorique fondamentale de l''informatique, plutôt qu''une simple difficulté pratique actuelle ? Vous
illustrerez votre réponse par des exemples chiffrés. »

## Analyse de la question

Une question de synthèse de ce type attend trois mouvements de pensée : définir précisément les termes en
jeu (ce qu''est une garantie formelle, ce qu''est une évaluation empirique), discuter si la limite évoquée
est de nature théorique (liée à la calculabilité et à la complexité, donc permanente) ou seulement
pratique (liée aux moyens actuels, donc susceptible d''évoluer), et illustrer la réponse par des exemples
vérifiables, chiffrés si possible, plutôt que par des affirmations générales invérifiables.

## Plan de réponse détaillé

Introduction. Rappeler les deux courants (preuve formelle issue des travaux de Turing, Floyd, Hoare et
Dijkstra ; apprentissage automatique issu des travaux de Rosenblatt, puis de la théorie de l''apprentissage
statistique de Vapnik et de l''apprentissage profond) et annoncer le plan : d''abord une limite théorique
réelle liée à la calculabilité et à la complexité, ensuite une limite pratique liée à l''efficacité des
heuristiques, enfin une articulation par les méthodes de recherche.

Partie 1, une limite théorique réelle. La théorie de la calculabilité, fondée par Turing, établit qu''il
existe des problèmes pour lesquels aucun programme ne peut, en toute généralité, décider correctement
(le problème de l''arrêt en est l''exemple fondateur) : ceci n''est pas une limite de nos outils actuels,
mais une impossibilité démontrée mathématiquement, donc une limite théorique au sens strict. De même, la
théorie de la complexité montre que certains problèmes, bien que calculables en principe, demandent un
temps de calcul qui croît si rapidement avec la taille de l''entrée qu''aucune machine, aussi puissante
soit-elle, ne pourrait les résoudre exactement à grande échelle dans un temps raisonnable. On peut
illustrer cette croissance par un exemple vérifié : une recherche dans une liste non triée de mille
éléments demande, dans le pire cas, mille comparaisons (complexité dite linéaire), alors qu''une recherche
dans une liste triée de même taille, par recherche binaire, n''en demande que dix. Pour un million
d''éléments, la recherche linéaire exige, dans le pire cas, un million de comparaisons, contre seulement
vingt pour la recherche binaire : l''écart entre les deux approches se creuse fortement lorsque la taille
du problème augmente, ce qui illustre concrètement pourquoi le choix d''une structure de données et d''un
algorithme adaptés constitue, en soi, un résultat théorique et non un simple détail d''implémentation.

Partie 2, une limite pratique qui n''est pas pour autant anodine. En revanche, la distinction entre
« garanti par la preuve » et « évalué empiriquement » relève, pour une grande partie des systèmes
courants, d''une difficulté pratique plutôt que d''une impossibilité théorique : il est souvent possible,
en principe, d''écrire une spécification formelle d''un système, mais le coût humain et calculatoire de
cette preuve la rend irréaliste à l''échelle de la majorité des logiciels. C''est précisément ce qui
explique le succès pratique des heuristiques de l''apprentissage automatique : elles acceptent de renoncer
à une garantie formelle universelle pour obtenir, à un coût raisonnable, une performance mesurée très
élevée sur les cas réellement rencontrés. On peut l''illustrer par un exemple chiffré et vérifié de
métrique de classification : sur un ensemble fictif de cent dossiers de crédit évalués par un modèle
statistique, avec 18 vrais positifs, 7 faux positifs, 5 faux négatifs et 70 vrais négatifs, l''exactitude
globale du modèle atteint 88 pour cent, sa précision 72 pour cent, son rappel environ 78 pour cent et son
F1-score 75 pour cent. Ces chiffres montrent une performance globale élevée, mais aussi des erreurs
résiduelles (douze dossiers mal classés sur cent) qu''aucune preuve formelle ne vient garantir absentes :
la confiance dans le système repose sur cette évaluation statistique, pas sur une démonstration
mathématique universelle.

Partie 3, l''articulation par les méthodes de recherche. La preuve formelle reste la méthode de référence
quand une spécification complète existe et qu''une erreur est inacceptable. L''expérimentation et le
benchmarking permettent de mesurer, de façon rigoureuse et reproductible, la performance d''un système
d''apprentissage sur des données représentatives, comme dans l''exemple chiffré ci-dessus. L''étude
empirique par fouille de dépôts logiciels permet, de son côté, d''observer à grande échelle où et
pourquoi les systèmes réels échouent en pratique, qu''ils relèvent de l''un ou l''autre courant, nourrissant
ainsi en retour la recherche théorique.

Conclusion. La limite entre vérifiabilité formelle et évaluation empirique recouvre en réalité deux
phénomènes distincts qu''il faut savoir dissocier dans une bonne réponse de synthèse : une limite
théorique réelle et démontrée (calculabilité, complexité), qui ne disparaîtra jamais quels que soient les
progrès technologiques, et une limite pratique mouvante (coût de la preuve, disponibilité des données),
qui explique pourquoi l''apprentissage automatique domine aujourd''hui de nombreux usages sans pour autant
rendre la preuve formelle obsolète sur son terrain propre.

## Points clés à retenir

- Une bonne réponse de synthèse distingue toujours limite théorique (permanente, démontrée) et limite
  pratique (actuelle, liée aux moyens disponibles).
- Les exemples chiffrés doivent être vérifiés, pas inventés : un ordre de grandeur correct (par exemple
  l''écart entre recherche linéaire et recherche binaire) vaut mieux qu''un chiffre impressionnant mais
  incertain.
- Le jury valorise l''articulation explicite entre courants théoriques et méthodes de recherche, plutôt
  que leur traitement séparé.

## Exercices pratiques

1. Reformulez, dans vos propres mots, la différence entre une limite théorique et une limite pratique en
   informatique, à l''aide d''un exemple autre que ceux proposés dans cette leçon.
2. Pourquoi le problème de l''arrêt est-il cité comme exemple fondateur d''une limite théorique, et non
   d''une simple difficulté pratique ?
3. Expliquez pourquoi un écart de performance entre deux algorithmes peut se creuser fortement quand la
   taille du problème augmente, même si les deux algorithmes restent corrects.
4. En quoi un F1-score de 75 pour cent, dans l''exemple chiffré de cette leçon, illustre-t-il à la fois le
   succès pratique et la limite d''un système fondé sur l''apprentissage ?
5. Construisez votre propre plan en trois parties pour la question : « L''étude empirique des dépôts
   logiciels peut-elle remplacer l''expérimentation contrôlée ? »
6. Entraînez-vous à présenter oralement, en trois minutes chronométrées, le plan de réponse détaillé
   proposé dans cette leçon.

## Corrigé

1. Une limite théorique reste vraie quels que soient les progrès futurs (par exemple, aucun ordinateur,
   même infiniment plus puissant, ne pourra résoudre en toute généralité le problème de l''arrêt). Une
   limite pratique peut reculer avec le temps (par exemple, un problème jugé trop coûteux à prouver
   formellement aujourd''hui pourrait devenir abordable avec de meilleurs outils de preuve assistée dans
   dix ans).
2. Parce qu''il a été démontré mathématiquement, par un raisonnement valable pour tout programme possible,
   qu''aucun algorithme ne peut décider dans tous les cas si un programme donné s''arrêtera ou non : ce
   n''est pas une question de puissance de calcul insuffisante, mais une impossibilité logique définitive.
3. Parce que la relation entre la taille du problème et le nombre d''opérations nécessaires n''est pas la
   même pour les deux algorithmes : si l''un croît proportionnellement à la taille (linéaire) et l''autre
   beaucoup plus lentement (logarithmique, comme la recherche binaire), l''écart entre les deux, négligeable
   pour de petites tailles, devient considérable pour de grandes tailles, comme le montre le passage de
   mille à un million d''éléments dans l''exemple vérifié de cette leçon.
4. Un F1-score de 75 pour cent montre que le modèle obtient un bon équilibre entre précision et rappel sur
   l''échantillon testé, ce qui illustre le succès pratique de l''approche statistique sur un problème sans
   spécification formelle complète. Il montre en même temps la limite du courant : contrairement à une
   preuve formelle, ce chiffre ne garantit rien pour un dossier futur particulier, et vingt-cinq pour cent
   d''erreur relative sur les cas positifs identifiés reste un risque résiduel assumé, pas éliminé.
5. Un plan possible : d''abord ce que l''étude empirique par fouille de dépôts apporte (données massives,
   conditions réelles, aucune intervention du chercheur) ; ensuite ce qu''elle ne peut pas apporter
   (contrôle précis des facteurs, preuve de causalité) ; enfin une conclusion montrant que les deux
   méthodes sont complémentaires et non substituables l''une à l''autre.
6. Il n''existe pas de corrigé unique pour un exercice oral ; l''essentiel est de respecter la structure en
   trois parties, de citer les exemples chiffrés avec exactitude, et de conclure explicitement sur la
   distinction entre limite théorique et limite pratique.', 'texte', 55, false, 50
from public.courses c where c.slug = 'doc-info'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Épreuve type d''examen de qualification en Informatique');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Vidéo 1 : l''ingénierie logicielle classique, la preuve et la vérification formelle', '## Fiche du cours vidéo

Durée : 1h30. Objectifs : approfondir, à l''oral et avec des exemples commentés en direct, le courant de
l''ingénierie logicielle classique fondée sur la preuve et la vérification formelle, et savoir le défendre
devant un jury doctoral. Matériel : tableau ou diaporama avec les définitions clés, un exemple de petit
algorithme pour la démonstration de preuve. Prérequis : avoir lu la leçon texte correspondante et les
fiches de lecture associées.

## Déroulé minuté

## 00:00 – 05:00 · Introduction et mise en contexte

Bonjour à toutes et à tous. Dans cette séance d''une heure trente, nous allons approfondir le premier
grand courant théorique de votre examen de qualification en informatique : l''ingénierie logicielle
fondée sur la preuve et la vérification formelle. L''enjeu de cette vidéo n''est pas de répéter la leçon
écrite mot pour mot, mais de vous entraîner à en parler à l''oral, avec vos propres mots, de façon à être
prêts le jour de la soutenance. Je vous propose de commencer par une question simple que je vous invite à
vous poser mentalement : si l''on vous demandait, en trente secondes, de définir ce qu''est une preuve de
correction d''un programme, que diriez-vous ? Gardez cette question en tête, nous y reviendrons.

Visuel à montrer : le plan de la séance, avec les grandes étapes annoncées (définitions, auteurs
fondateurs, exemple de preuve, domaines d''application, limites, quiz, synthèse, évaluation).

## 05:00 – 15:00 · Définitions précises

Reprenons les définitions avec soin, car c''est souvent sur l''imprécision du vocabulaire que les
candidats perdent des points en soutenance. La vérification formelle, c''est l''ensemble des techniques qui
établissent, par un raisonnement mathématique, qu''un programme respecte une spécification. J''insiste sur
le mot « établissent » : il ne s''agit pas de rendre probable, ni de rendre vraisemblable, mais
d''établir avec certitude, pour toutes les entrées possibles du programme, pas seulement pour celles que
l''on a testées.

Il faut absolument savoir distinguer, à l''oral, la preuve du simple test. Un test exécute le programme
sur un nombre fini de cas et observe le résultat : c''est une démarche empirique, qui peut révéler une
erreur mais jamais garantir son absence totale. La preuve, elle, raisonne sur la structure du programme
lui-même : si elle est valide, elle couvre, en un seul raisonnement, l''ensemble infini ou quasi infini
des entrées possibles. C''est cette différence de nature, et non seulement de degré, qui fait la
spécificité de ce courant.

Visuel à montrer : un schéma à deux colonnes, « test » contre « preuve », avec la portée de chaque
démarche.

Question à poser aux apprenants : pouvez-vous citer, de mémoire, un exemple de système pour lequel un
simple test ne suffirait pas et où une preuve serait nécessaire ?

## 15:00 – 28:00 · Auteurs fondateurs et évolution historique

Revenons maintenant sur les contributions fondatrices, en veillant à les présenter par leur apport
scientifique réel, sans jamais inventer de citation textuelle précise que vous ne pourriez pas vérifier.
Alan Turing, dès les années 1930 et 1940, a posé les bases théoriques de la calculabilité : il a montré
qu''il existe des limites démontrables à ce qu''un programme peut calculer, ouvrant la voie à l''idée que la
correction d''un programme pouvait elle-même se raisonner formellement.

Dans les années 1960, Robert Floyd a introduit une méthode d''assertions attachées aux points du
programme : à chaque étape, on associe une propriété que les variables doivent vérifier si le programme
fonctionne correctement jusqu''à ce point. Tony Hoare a formalisé cette idée en une véritable logique de
programmation, la logique de Hoare, qui exprime la preuve comme une chaîne de « triplets » reliant une
précondition, une instruction, et une postcondition. Edsger Dijkstra, enfin, a insisté sur l''idée que la
preuve devait accompagner la construction du programme, et non intervenir après coup : la discipline de
programmation structurée qu''il a défendue rend justement ce raisonnement pas à pas possible.

Visuel à montrer : une frise chronologique avec Turing, Floyd, Hoare, Dijkstra, puis le model checking à
partir des années 1980.

## 28:00 – 40:00 · Exemple de preuve simple, étape par étape

Voici maintenant l''exercice que nous allons détailler ensemble, car un exemple concret vaut mieux que
beaucoup de définitions abstraites. Prenons l''algorithme le plus simple possible : la recherche d''un
élément dans une liste, en parcourant la liste du début jusqu''à la fin. La spécification est la
suivante : si l''élément cherché est présent dans la liste, l''algorithme doit retourner sa position ; s''il
est absent, l''algorithme doit le signaler après avoir examiné tous les éléments.

La méthode de preuve la plus naturelle ici repose sur un invariant de boucle : une propriété qui reste
vraie avant chaque tour de boucle, et qui, combinée à la condition d''arrêt, permet de conclure que le
résultat final est correct. Dans notre cas, l''invariant est : « au début de chaque tour de boucle,
l''élément cherché ne se trouve pas parmi les éléments déjà examinés ». Cet invariant est vrai au départ,
avant le premier tour, puisqu''aucun élément n''a encore été examiné. Si, à un tour donné, l''élément
courant est égal à l''élément cherché, l''algorithme retourne immédiatement sa position, ce qui est
correct. Si l''élément courant est différent, l''invariant reste vrai au tour suivant, puisque l''ensemble
des éléments déjà examinés s''est simplement agrandi d''un élément qui n''était pas la cible. Si la boucle
se termine sans avoir trouvé l''élément, c''est que tous les éléments de la liste ont été examinés sans
succès, et l''invariant garantit alors que l''élément cherché n''était présent dans aucun d''eux : conclure
qu''il est absent est donc correct.

Pour vérifier concrètement que ce raisonnement n''est pas qu''une affirmation en l''air, on peut l''éprouver
empiriquement : en exécutant cette méthode de recherche sur deux cents listes aléatoires différentes et
en vérifiant, pour chacune, que l''algorithme retrouve bien la bonne position d''un élément que l''on sait
présent, on obtient deux cents succès sur deux cents essais, ce qui est cohérent avec la preuve par
invariant, sans pour autant la remplacer : ce test conforte la confiance, mais seule la preuve par
invariant garantit la correction pour toute liste possible, y compris les listes qu''aucun test n''a
couvertes.

Visuel à montrer : le déroulé pas à pas de l''invariant sur une petite liste d''exemple, tour de boucle par
tour de boucle, avec la propriété rappelée à chaque étape.

Question à poser aux apprenants : que se passerait-il si l''invariant énoncé était faux au départ, avant
même le premier tour de boucle ? Pourquoi toute la preuve s''effondrerait-elle ?

## 40:00 – 48:00 · Pause et quiz interactif

Faisons une courte pause et testons ce que nous venons de voir avec un quiz à choix de réponses, que vous
pouvez répondre mentalement ou à voix haute.

Question 1 : un test logiciel qui passe sur mille cas garantit-il l''absence totale d''erreurs ? Réponse :
non, un test ne couvre jamais, en général, l''ensemble infini ou quasi infini des entrées possibles.

Question 2 : qu''est-ce qu''un invariant de boucle ? Réponse : une propriété qui reste vraie avant chaque
tour de boucle, et qui, combinée à la condition d''arrêt, permet de conclure la correction du résultat
final.

Question 3 : quelle est la différence essentielle entre Floyd et Hoare dans l''histoire de ce courant ?
Réponse : Floyd a introduit les assertions attachées aux points du programme, Hoare a formalisé ce
raisonnement sous la forme d''une logique complète, la logique de Hoare, avec ses triplets précondition,
instruction, postcondition.

Question 4 : le model checking explore-t-il un échantillon ou la totalité des états d''un système fini ?
Réponse : la totalité, ce qui le distingue du test classique, mais au prix d''un risque d''explosion
combinatoire sur les systèmes complexes.

## 48:00 – 58:00 · Domaines d''application et succès reconnus

Reprenons les domaines où ce courant brille particulièrement : les logiciels de pilotage aérien, les
systèmes de signalisation ferroviaire, les microprocesseurs et les protocoles cryptographiques. Dans
tous ces cas, une erreur a un coût si élevé qu''investir dans une preuve formelle, malgré son coût humain
et calculatoire, devient justifié. C''est aussi dans ces domaines que les langages de spécification
formelle, qui décrivent précisément le comportement attendu avant même d''écrire le code, ont trouvé leur
usage le plus développé.

Visuel à montrer : une liste illustrée des domaines cités, avec, pour chacun, la raison pour laquelle une
erreur y est jugée inacceptable.

## 58:00 – 1:10:00 · Limites et critiques, l''écart de validation

Abordons maintenant les limites, car un bon candidat à l''examen de qualification doit savoir critiquer le
courant qu''il défend, pas seulement le vanter. Premièrement, le coût : écrire une spécification complète
et construire la preuve associée demande un temps considérable, hors de portée de la plupart des projets
commerciaux. Deuxièmement, l''explosion combinatoire, qui limite la taille des systèmes vérifiables
automatiquement par model checking. Troisièmement, et c''est le point le plus subtil, l''écart de
validation : une preuve ne garantit que la conformité du programme à sa spécification, pas la pertinence
de cette spécification par rapport au besoin réel. Un système peut être prouvé correct et pourtant
inadapté si la spécification elle-même traduisait mal l''intention de l''utilisateur. Enfin, certains
problèmes n''admettent simplement aucune spécification exacte et complète : on ne sait pas écrire, de
façon formelle, ce qu''est « une bonne traduction » pour toute phrase possible. C''est précisément ce
constat qui introduit le second courant théorique, que nous verrons dans la prochaine vidéo.

Question à poser aux apprenants : pouvez-vous imaginer un exemple où un programme serait formellement
prouvé correct par rapport à sa spécification, et pourtant jugé défaillant par ses utilisateurs réels ?

## 1:10:00 – 1:22:00 · Synthèse et mise en perspective pour la soutenance

Pour conclure cette partie, voici comment je vous conseille de synthétiser ce courant en soutenance, en
une trentaine de secondes si le jury vous le demande : « L''ingénierie logicielle classique prouve, par un
raisonnement mathématique s''appuyant notamment sur les travaux de Turing, Floyd, Hoare et Dijkstra, que
tout programme respecte sa spécification pour toutes les entrées possibles, ce qui la distingue
radicalement du simple test. Ce courant excelle sur les systèmes critiques à spécification claire, mais
se heurte au coût de la preuve, à l''explosion combinatoire, et à l''écart de validation, ce qui explique
qu''il coexiste, plutôt que de s''y opposer frontalement, avec l''apprentissage automatique sur les
problèmes sans spécification formelle possible. » Entraînez-vous à reformuler cette synthèse avec vos
propres mots, sans la réciter mécaniquement.

## 1:22:00 – 1:30:00 · Évaluation finale

Cinq questions pour conclure cette séance.

1. Quelle est la différence essentielle entre tester un programme et le prouver correct ? Réponse : le
   test couvre un nombre fini de cas choisis, la preuve raisonne sur la structure du programme pour
   couvrir, en principe, toutes les entrées possibles.
2. Citez deux contributeurs fondateurs de la logique de preuve des programmes et leur apport respectif.
   Réponse : Robert Floyd a introduit les assertions attachées aux points du programme ; Tony Hoare a
   formalisé ce raisonnement en une logique complète, exprimée par des triplets précondition, instruction,
   postcondition.
3. Qu''est-ce qu''un invariant de boucle et à quoi sert-il dans une preuve de correction ? Réponse : une
   propriété qui reste vraie avant chaque tour de boucle ; combinée à la condition d''arrêt de la boucle,
   elle permet de conclure que le résultat final du programme est correct.
4. Qu''est-ce que l''écart de validation et pourquoi montre-t-il qu''une preuve formelle ne suffit pas à
   elle seule ? Réponse : c''est le risque qu''une spécification, bien que respectée par le programme
   prouvé correct, ne traduise pas fidèlement le besoin réel de l''utilisateur ; la preuve garantit la
   conformité à la spécification, pas la pertinence de cette spécification.
5. Pourquoi l''explosion combinatoire limite-t-elle la portée pratique du model checking ? Réponse : le
   nombre d''états possibles d''un système croît en général de façon exponentielle avec ses composants, ce
   qui rend leur exploration exhaustive rapidement impraticable en temps de calcul et en mémoire, même
   pour des systèmes de taille modeste.', 'video', 90, false, 60
from public.courses c where c.slug = 'doc-info'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Vidéo 1 : l''ingénierie logicielle classique, la preuve et la vérification formelle');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Vidéo 2 : l''apprentissage automatique, la boîte noire et l''explicabilité', '## Fiche du cours vidéo

Durée : 1h30. Objectifs : approfondir le courant de l''apprentissage automatique, savoir en exposer les
définitions, les auteurs fondateurs et les limites, et manier avec aisance un exemple chiffré de
métriques de classification. Matériel : tableau ou diaporama, un exemple de matrice de confusion à
projeter. Prérequis : avoir lu la leçon texte correspondante.

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Bienvenue dans cette seconde séance consacrée aux courants théoriques du champ. Nous avons vu, dans la
vidéo précédente, le courant de la preuve formelle. Nous allons maintenant explorer son pendant, en
tension mais aussi en complémentarité : l''apprentissage automatique. Gardez à l''esprit, tout au long de
cette séance, la question suivante : pourquoi ce courant a-t-il pris une telle importance alors même
qu''il ne fournit, le plus souvent, aucune garantie formelle de correction ?

Visuel à montrer : le plan de la séance.

## 05:00 – 15:00 · Définitions précises

L''apprentissage automatique, c''est l''ensemble des méthodes qui permettent à un programme d''améliorer sa
performance sur une tâche à partir d''exemples, sans que la règle de décision soit écrite explicitement.
Au lieu d''écrire une condition précise, on fournit des exemples, et un algorithme ajuste automatiquement
un modèle statistique qui généralise les régularités observées.

Deux notions sont essentielles à bien maîtriser pour l''oral. D''abord, le problème de la boîte noire :
certains modèles, en particulier les réseaux de neurones profonds, sont si complexes dans leur
fonctionnement interne qu''il devient très difficile d''expliquer, de façon compréhensible par un humain,
pourquoi telle prédiction a été produite pour telle entrée. Ensuite, l''explicabilité : le champ de
recherche qui tente de rendre ces décisions compréhensibles, soit par des modèles plus simples à lire,
soit par des méthodes qui expliquent a posteriori les décisions d''un modèle complexe.

Visuel à montrer : un schéma « règle écrite par un humain » contre « modèle appris à partir de données ».

Question à poser aux apprenants : pouvez-vous donner un exemple de tâche pour laquelle il serait presque
impossible d''écrire une règle explicite complète ?

## 15:00 – 28:00 · Auteurs fondateurs et évolution historique

Frank Rosenblatt a proposé, à la fin des années 1950, le perceptron, un modèle qui ajuste automatiquement
ses paramètres à partir d''exemples pour séparer deux catégories de données : c''est la première pierre de
l''apprentissage statistique moderne. Ce modèle a connu une période de scepticisme après la démonstration
de ses limites sur certains problèmes simples, ce qui a ralenti la recherche pendant plus d''une décennie.

Le courant renaît dans les années 1980 avec l''algorithme de rétropropagation du gradient, qui permet
d''entraîner efficacement des réseaux de neurones à plusieurs couches, popularisé notamment par David
Rumelhart et Geoffrey Hinton. En parallèle, Vladimir Vapnik développe, à partir des années 1960 et
surtout dans les années 1990, la théorie de l''apprentissage statistique, qui établit à quelles
conditions un modèle appris sur des exemples peut raisonnablement généraliser à des données nouvelles.
Depuis les années 2010, la combinaison de grandes quantités de données, de capacités de calcul accrues et
de réseaux profonds a permis des progrès rapides sur des tâches jusque-là hors de portée.

Visuel à montrer : une frise chronologique, Rosenblatt, puis la période de scepticisme, puis
rétropropagation, puis théorie de Vapnik, puis apprentissage profond.

## 28:00 – 42:00 · Exemple chiffré vérifié : la matrice de confusion et ses métriques

Voici l''exemple que je vous recommande de maîtriser parfaitement pour l''oral, car les questions de jury
portent souvent sur la capacité à interpréter un chiffre, pas seulement à le citer. Imaginons un modèle
statistique chargé d''évaluer, pour cent dossiers de crédit fictifs, le risque de défaut de paiement. On
construit une matrice de confusion à partir des résultats du modèle comparés à la réalité observée
ensuite : dix-huit vrais positifs, c''est-à-dire des dossiers correctement identifiés comme risqués ; sept
faux positifs, des dossiers jugés risqués à tort ; cinq faux négatifs, des dossiers risqués que le modèle
n''a pas détectés ; et soixante-dix vrais négatifs, des dossiers correctement jugés non risqués.

À partir de ces quatre nombres, qui totalisent bien cent dossiers, on calcule quatre métriques
essentielles. L''exactitude, ou accuracy, est la proportion de dossiers correctement classés sur
l''ensemble : dix-huit plus soixante-dix, divisé par cent, soit quatre-vingt-huit pour cent. La précision
est la proportion de dossiers réellement risqués parmi ceux que le modèle a jugés risqués : dix-huit
divisé par dix-huit plus sept, soit soixante-douze pour cent. Le rappel, ou sensibilité, est la
proportion de dossiers réellement risqués que le modèle a su détecter : dix-huit divisé par dix-huit plus
cinq, soit environ soixante-dix-huit pour cent. Le F1-score, enfin, combine précision et rappel en une
seule mesure équilibrée : il vaut ici soixante-quinze pour cent.

Pourquoi ces quatre chiffres racontent-ils une histoire différente ? L''exactitude, à quatre-vingt-huit
pour cent, paraît très rassurante, mais elle peut être trompeuse si les deux catégories ne sont pas
équilibrées : un modèle qui prédirait systématiquement « pas de risque » obtiendrait ici, sur cette
répartition, une exactitude déjà élevée simplement parce que la majorité des dossiers ne sont
effectivement pas risqués, sans avoir rien appris d''utile sur les cas réellement risqués. C''est précisément
pour cette raison que la précision et le rappel, qui se concentrent sur la catégorie qui nous intéresse
réellement (les dossiers risqués), apportent une information plus fine : ici, le modèle rate environ un
cinquième des dossiers réellement risqués (cinq faux négatifs sur vingt-trois dossiers réellement
risqués), ce qui est précisément le type d''erreur qu''aucune preuve formelle ne permettrait d''exclure a
priori : seule l''évaluation empirique, répétée sur des données représentatives, permet de la quantifier.

Visuel à montrer : la matrice de confusion projetée en tableau deux par deux, avec le calcul de chaque
métrique détaillé à côté.

Question à poser aux apprenants : si l''on réduisait le nombre de faux négatifs en acceptant davantage de
faux positifs, quelles métriques évolueraient, et dans quel sens ?

## 42:00 – 50:00 · Pause et quiz interactif

Question 1 : qu''est-ce qui distingue fondamentalement l''apprentissage automatique d''une règle écrite
explicitement ? Réponse : le modèle est ajusté automatiquement à partir d''exemples, sans qu''un humain
n''écrive la règle de décision sous une forme explicite.

Question 2 : qu''est-ce que le problème de la boîte noire ? Réponse : la difficulté à expliquer, de façon
compréhensible par un humain, pourquoi un modèle complexe a produit telle prédiction pour telle entrée.

Question 3 : dans notre exemple de cent dossiers, combien de dossiers étaient réellement risqués au
total ? Réponse : vingt-trois, soit les dix-huit vrais positifs plus les cinq faux négatifs.

Question 4 : pourquoi l''exactitude seule peut-elle être trompeuse ? Réponse : si les catégories sont
déséquilibrées, un modèle qui prédit toujours la catégorie majoritaire peut obtenir une exactitude élevée
sans avoir appris à détecter la catégorie minoritaire qui nous intéresse le plus.

## 50:00 – 1:00:00 · Domaines d''application et succès reconnus

L''apprentissage automatique excelle là où le courant précédent atteint ses limites : la reconnaissance
vocale, la traduction automatique, la détection de fraude, le diagnostic assisté à partir d''images
médicales, la recommandation de contenus. Dans tous ces cas, il serait extrêmement difficile d''écrire à
la main une règle complète, alors qu''il est possible de rassembler des exemples représentatifs.

Visuel à montrer : une liste illustrée des domaines cités.

## 1:00:00 – 1:12:00 · Limites et critiques

Quatre limites méritent d''être maîtrisées à l''oral. L''opacité et le risque d''erreurs non détectées sur
des cas rares, puisque le modèle n''offre pas de preuve, seulement une performance moyenne mesurée. Le
biais hérité des données, qui peut reproduire une inégalité historique sans qu''aucune instruction du code
ne soit en cause. L''absence de garantie formelle, qui distingue radicalement ce courant du précédent : la
confiance repose sur une évaluation empirique, nécessairement partielle. Enfin, la dépendance à la
qualité et à la quantité des données disponibles, qui pose un problème particulier dans certains
contextes où les données structurées restent rares.

Question à poser aux apprenants : pourquoi un biais hérité des données est-il plus difficile à détecter
qu''une erreur de programmation classique ?

## 1:12:00 – 1:22:00 · Synthèse pour la soutenance

Voici la synthèse que je vous propose de mémoriser, en vos propres mots : « L''apprentissage automatique
construit un modèle statistique à partir d''exemples, grâce notamment aux travaux de Rosenblatt, Vapnik,
Rumelhart et Hinton, pour traiter des problèmes sans spécification formelle possible. Il atteint des
performances élevées, comme le montre un F1-score de soixante-quinze pour cent sur notre exemple chiffré,
mais ne fournit, en général, aucune garantie de correction comparable à une preuve formelle, d''où
l''importance croissante du champ de l''explicabilité. » Entraînez-vous à la restituer sans la réciter
mécaniquement, et à l''articuler avec le courant précédent plutôt qu''à l''opposer frontalement.

## 1:22:00 – 1:30:00 · Évaluation finale

1. Qu''est-ce que l''apprentissage automatique, en une phrase ? Réponse : un ensemble de méthodes qui
   permettent à un programme d''améliorer sa performance sur une tâche à partir d''exemples, sans règle de
   décision écrite explicitement par un humain.
2. Citez un auteur fondateur du perceptron et un auteur fondateur de la théorie de l''apprentissage
   statistique. Réponse : Frank Rosenblatt pour le perceptron ; Vladimir Vapnik pour la théorie de
   l''apprentissage statistique.
3. Dans l''exemple chiffré de cette séance, que vaut la précision du modèle, et comment se calcule-t-elle ?
   Réponse : soixante-douze pour cent, calculée en divisant les vrais positifs par la somme des vrais
   positifs et des faux positifs, soit dix-huit divisé par vingt-cinq.
4. Pourquoi l''exactitude seule ne suffit-elle pas à évaluer un modèle de classification ? Réponse : parce
   qu''elle peut rester élevée même si le modèle échoue à détecter correctement la catégorie minoritaire,
   en particulier quand les catégories sont déséquilibrées.
5. Qu''est-ce que l''explicabilité cherche à résoudre ? Réponse : rendre compréhensible, pour un humain, la
   raison pour laquelle un modèle complexe a produit telle prédiction, afin de détecter les erreurs et
   d''établir la confiance dans le système.', 'video', 90, false, 70
from public.courses c where c.slug = 'doc-info'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Vidéo 2 : l''apprentissage automatique, la boîte noire et l''explicabilité');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Vidéo 3 : les méthodes de recherche en Informatique', '## Fiche du cours vidéo

Durée : 1h30. Objectifs : approfondir les trois méthodes de recherche du champ informatique (preuve
formelle, expérimentation et benchmarking, étude empirique par fouille de dépôts logiciels), et savoir
construire oralement un protocole de recherche cohérent. Matériel : tableau ou diaporama, le protocole
fictif de la leçon écrite à projeter. Prérequis : avoir lu la leçon texte correspondante.

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Dans cette troisième séance, nous quittons les courants théoriques pour nous concentrer sur un aspect
souvent sous-estimé par les candidats : les méthodes de recherche elles-mêmes. Un jury doctoral attend
de vous que vous sachiez non seulement ce que vous pensez étudier, mais comment vous allez l''étudier, et
pourquoi cette méthode est la plus adaptée à votre question.

Visuel à montrer : le plan de la séance.

## 05:00 – 18:00 · La preuve formelle comme méthode

Nous avons déjà vu la preuve formelle comme courant théorique ; voyons-la maintenant comme méthode de
travail concrète du chercheur. Elle consiste à écrire une spécification précise, à construire un
raisonnement déductif, manuel ou assisté par un outil logiciel, qui établit la conformité du système à
cette spécification, puis à faire vérifier ce raisonnement, par un outil automatique ou par la
communauté scientifique lors de la publication. La validité du résultat repose entièrement sur la
rigueur de la déduction : une seule erreur dans un pas du raisonnement invalide la conclusion entière.
C''est pourquoi la relecture d''une preuve, par soi-même ou par des pairs, est une étape aussi importante
que sa construction.

Question à poser aux apprenants : pourquoi une seule erreur dans un pas de raisonnement suffit-elle à
invalider toute une preuve, alors qu''une erreur ponctuelle dans un grand jeu de données expérimentales
n''invalide pas nécessairement toute une expérimentation ?

Un point à ne pas négliger pour l''oral : la preuve formelle, en tant que méthode, se prête aussi
aujourd''hui à des outils d''assistance, les démonstrateurs de théorèmes assistés par ordinateur, qui
vérifient mécaniquement chaque pas du raisonnement humain. Cette assistance ne dispense pas le
chercheur de concevoir la stratégie de preuve, mais elle réduit fortement le risque d''erreur de détail
qui invaliderait l''ensemble, et elle facilite la relecture par les pairs lors de la publication, puisque
l''outil peut rejouer automatiquement la vérification.

## 18:00 – 32:00 · L''expérimentation et le benchmarking

L''expérimentation consiste à mesurer, de façon contrôlée et reproductible, la performance d''un système
sur des données ou des tâches représentatives. Le benchmarking compare plusieurs méthodes concurrentes
sur un même protocole, pour déterminer laquelle est la plus rapide, la plus précise, ou la plus économe
en ressources.

Une expérimentation rigoureuse respecte plusieurs exigences : un jeu de données de test clairement
défini, une séparation nette entre données d''apprentissage et données de test, une répétition des
mesures pour tenir compte de la variabilité, et une description du protocole suffisamment précise pour
qu''un autre chercheur puisse reproduire l''expérience de façon indépendante. Cette dernière exigence, la
reproductibilité, est devenue un critère central d''évaluation scientifique en informatique : un résultat
qui ne peut pas être reproduit reste fragile, quelle que soit la qualité apparente de l''article qui le
présente.

Visuel à montrer : un schéma du protocole expérimental type, données d''apprentissage séparées des
données de test, répétition des mesures.

Un piège fréquent, à signaler explicitement à l''oral : comparer deux méthodes sur des jeux de données
différents, ou avec des conditions de mesure différentes (matériel, paramètres, prétraitement des
données), rend le benchmarking non valide, même si chaque méthode, prise isolément, a été correctement
évaluée. La comparabilité du protocole, et pas seulement sa rigueur interne à chaque méthode, conditionne
la validité d''une conclusion de type « la méthode A est meilleure que la méthode B ».

## 32:00 – 46:00 · L''étude empirique par fouille de dépôts logiciels

La troisième méthode consiste à étudier empiriquement comment les logiciels sont réellement conçus et
maintenus, en analysant à grande échelle les dépôts de code source et leur historique. Chaque
modification, chaque correction de défaut, chaque discussion liée à un changement est conservée dans ces
dépôts, constituant un matériau empirique considérable pour répondre à des questions que ni la preuve ni
l''expérimentation contrôlée ne peuvent trancher seules : quels types d''erreurs reviennent le plus
souvent dans la pratique ? Quelles pratiques de développement sont statistiquement associées à moins de
défauts ?

Cette méthode est observationnelle : le chercheur n''intervient pas sur le système étudié, il observe et
analyse statistiquement des données déjà produites. Elle demande la même rigueur statistique que les
méthodes empiriques des sciences sociales, en particulier la prudence sur la distinction entre
corrélation observée et causalité établie.

Question à poser aux apprenants : pourquoi la fouille de dépôts logiciels ne permet-elle pas, en général,
d''établir seule une relation de cause à effet entre une pratique de développement et une réduction des
défauts ?

## 46:00 – 54:00 · Pause et quiz interactif

Question 1 : quelle est la différence entre expérimentation contrôlée et étude empirique
observationnelle ? Réponse : dans l''expérimentation contrôlée, le chercheur manipule certains facteurs
pour en isoler l''effet ; dans l''étude observationnelle, il n''intervient pas et analyse des données déjà
produites par l''activité réelle.

Question 2 : qu''est-ce que la reproductibilité et pourquoi est-elle devenue un critère central ? Réponse :
la possibilité, pour un autre chercheur, de reproduire une expérience avec le même protocole et d''obtenir
un résultat cohérent ; elle garantit qu''un résultat ne provient pas d''un artefact particulier du jeu de
test ou d''un choix de paramètres favorable.

Question 3 : dans la preuve formelle, que se passe-t-il si une seule étape du raisonnement est fausse ?
Réponse : la conclusion entière est invalidée, car la preuve est une chaîne déductive où chaque étape
dépend de la validité de la précédente.

Question 4 : qu''est-ce que le benchmarking ? Réponse : la comparaison de plusieurs méthodes concurrentes
sur un même jeu de données ou un même protocole de test.

## 54:00 – 1:08:00 · Le protocole de recherche illustratif, pas à pas

Reprenons maintenant, pas à pas, le protocole fictif présenté dans la leçon écrite, car vous pourriez
être interrogés sur votre capacité à construire un protocole similaire pour votre propre sujet. Une
équipe doctorale sénégalaise souhaite étudier la fiabilité des applications mobiles de paiement utilisées
par de petits commerçants sur plusieurs marchés de Dakar. La question de recherche est précise : les
défauts les plus fréquents relèvent-ils de la logique métier ou de la gestion des pannes réseau propres
au contexte local ?

La première méthode mobilisée est la fouille de dépôts : analyser l''historique de développement
d''applications open source comparables, en classant chaque correction de défaut selon sa catégorie, pour
obtenir une répartition empirique des types de défauts. La seconde méthode est l''expérimentation
contrôlée : soumettre les applications, en environnement de test, à des scénarios simulant des coupures
réseau répétées, et mesurer le taux d''erreurs observées comparé à un scénario de réseau stable.
L''articulation des deux méthodes est essentielle : la fouille de dépôts indique ce qui a historiquement
posé problème en conditions réelles, l''expérimentation contrôlée vérifie, dans un cadre maîtrisé, si
l''hypothèse qui en découle se confirme de façon mesurable. Enfin, la limite du protocole doit être
assumée explicitement : un échantillon fictif ou restreint ne permettrait pas de généraliser la
conclusion à l''ensemble de l''écosystème des paiements mobiles ouest-africains.

Visuel à montrer : le protocole en quatre blocs, question, méthode 1, méthode 2, articulation et limite.

## 1:08:00 – 1:22:00 · Synthèse pour la soutenance

La synthèse que je vous propose : « Les trois méthodes du champ, preuve formelle, expérimentation et
benchmarking, étude empirique par fouille de dépôts, répondent à des questions complémentaires plutôt que
concurrentes. Un protocole de recherche solide, comme celui construit sur les applications de paiement
mobile, articule souvent plusieurs méthodes et assume explicitement ses limites plutôt que de
généraliser abusivement un résultat partiel. » Entraînez-vous à construire, pour votre propre sujet de
thèse, un protocole similaire, en quatre blocs : question, méthode principale, méthode complémentaire,
limite assumée.

## 1:22:00 – 1:30:00 · Évaluation finale

1. Quelles sont les trois méthodes de recherche propres au champ informatique étudiées dans cette
   séance ? Réponse : la preuve formelle, l''expérimentation et le benchmarking, et l''étude empirique par
   fouille de dépôts logiciels.
2. Pourquoi la reproductibilité est-elle un critère central en recherche expérimentale informatique ?
   Réponse : parce qu''un résultat non reproductible reste fragile scientifiquement, pouvant provenir d''un
   artefact du jeu de test ou d''un choix de paramètres favorable plutôt que d''un effet réel et général.
3. Qu''est-ce qui distingue une méthode observationnelle d''une méthode expérimentale contrôlée ? Réponse :
   dans la méthode observationnelle, le chercheur n''intervient pas sur le système étudié ; dans la méthode
   expérimentale, il manipule certains facteurs pour en isoler l''effet.
4. Dans le protocole illustratif sur les applications de paiement mobile, quelle méthode permettrait de
   vérifier, en conditions maîtrisées, une hypothèse issue de la fouille de dépôts ? Réponse :
   l''expérimentation contrôlée, en soumettant les applications à des scénarios de coupures réseau simulées.
5. Pourquoi faut-il toujours assumer explicitement les limites d''un protocole de recherche ? Réponse :
   parce qu''un échantillon restreint ou un contexte particulier ne permet pas, en général, de généraliser
   une conclusion à l''ensemble d''une population ou d''un écosystème sans étude complémentaire à plus
   grande échelle.', 'video', 90, false, 80
from public.courses c where c.slug = 'doc-info'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Vidéo 3 : les méthodes de recherche en Informatique');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Vidéo 4 : épreuve type d''examen de qualification en Informatique', '## Fiche du cours vidéo

Durée : 1h30. Objectifs : s''entraîner à construire, à l''oral et en temps limité, une réponse complète à
une question de synthèse type, en mobilisant les deux courants théoriques et les méthodes de recherche
étudiés dans les séances précédentes. Matériel : tableau ou diaporama, un chronomètre pour l''entraînement
oral. Prérequis : avoir visionné les trois vidéos précédentes.

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Dans cette quatrième séance, nous allons nous entraîner directement sur une question de synthèse type,
du genre de celles qui peuvent être posées à l''écrit ou à l''oral lors de l''examen de qualification.
L''objectif n''est pas de mémoriser une réponse par cœur, mais de s''entraîner à construire, en temps
limité, un raisonnement structuré qui mobilise plusieurs courants et plusieurs méthodes à la fois.

Visuel à montrer : la question de synthèse projetée en entier.

## 05:00 – 12:00 · Présentation de la question et analyse

Voici la question : « Dans quelle mesure la distinction entre systèmes dont le comportement peut être
garanti par la preuve formelle et systèmes dont le comportement ne peut être évalué que de façon
empirique constitue-t-elle une limite théorique fondamentale de l''informatique, plutôt qu''une simple
difficulté pratique actuelle ? Vous illustrerez votre réponse par des exemples chiffrés. »

Cette question attend trois mouvements : définir précisément les termes, discuter la nature de la limite
évoquée, théorique ou pratique, et illustrer par des exemples vérifiables. Prenez quelques secondes pour
identifier, mentalement, les mots clés de la question avant que nous ne construisions la réponse ensemble.

## 12:00 – 26:00 · Partie 1, la limite théorique réelle, avec l''exemple de la recherche dans une liste

La théorie de la calculabilité, fondée par Turing, établit qu''il existe des problèmes pour lesquels aucun
programme ne peut, en toute généralité, décider correctement : le problème de l''arrêt en est l''exemple
fondateur, et ceci n''est pas une limite de nos outils actuels, mais une impossibilité démontrée
mathématiquement. La théorie de la complexité montre, de son côté, que certains problèmes calculables en
principe demandent un temps de calcul qui croît si rapidement avec la taille de l''entrée qu''aucune
machine ne pourrait les résoudre exactement à grande échelle.

Illustrons cela par un exemple vérifié et facile à retenir. Une recherche dans une liste non triée de
mille éléments demande, dans le pire cas, mille comparaisons : c''est une complexité dite linéaire,
puisque le nombre d''opérations croît proportionnellement à la taille de la liste. Une recherche dans une
liste triée de même taille, par recherche binaire, qui compare toujours l''élément du milieu et élimine
la moitié des possibilités restantes à chaque étape, n''en demande que dix. Pour un million d''éléments,
l''écart se creuse spectaculairement : un million de comparaisons dans le pire cas pour la recherche
linéaire, contre seulement vingt pour la recherche binaire. Cet écart n''est pas un détail
d''implémentation : il illustre une différence de nature dans la façon dont le nombre d''opérations
nécessaires croît avec la taille du problème, ce qui est un résultat théorique vérifiable, pas une
estimation approximative.

Visuel à montrer : un tableau avec les quatre tailles de liste (mille, dix mille, cent mille, un million)
et, pour chacune, le nombre de comparaisons en recherche linéaire contre recherche binaire.

Question à poser aux apprenants : pourquoi l''écart entre les deux méthodes de recherche se creuse-t-il
davantage pour de grandes tailles de liste que pour de petites tailles ?

## 26:00 – 40:00 · Partie 2, la limite pratique, avec l''exemple de la matrice de confusion

En revanche, la distinction entre « garanti par la preuve » et « évalué empiriquement » relève, pour une
grande partie des systèmes courants, d''une difficulté pratique plutôt que d''une impossibilité théorique :
il est souvent possible, en principe, d''écrire une spécification formelle, mais le coût humain et
calculatoire de la preuve la rend irréaliste à l''échelle de la majorité des logiciels. C''est précisément
ce qui explique le succès pratique des heuristiques de l''apprentissage automatique.

Reprenons l''exemple chiffré de la vidéo précédente : sur cent dossiers de crédit fictifs évalués par un
modèle statistique, avec dix-huit vrais positifs, sept faux positifs, cinq faux négatifs et soixante-dix
vrais négatifs, l''exactitude atteint quatre-vingt-huit pour cent, la précision soixante-douze pour cent,
le rappel environ soixante-dix-huit pour cent, et le F1-score soixante-quinze pour cent. Ces chiffres
montrent une performance globale élevée, mais aussi des erreurs résiduelles, douze dossiers mal classés
sur cent, qu''aucune preuve formelle ne vient garantir absentes : la confiance dans le système repose sur
cette évaluation statistique, répétée et reproductible, pas sur une démonstration mathématique
universelle.

Visuel à montrer : la matrice de confusion et ses quatre métriques, déjà vue en vidéo 2, reprise ici pour
l''articuler avec la question de synthèse.

Question à poser aux apprenants : en quoi cet exemple illustre-t-il une limite « pratique » plutôt que
« théorique » ?

## 40:00 – 48:00 · Pause et quiz interactif

Question 1 : le problème de l''arrêt illustre-t-il une limite théorique ou pratique ? Réponse : une
limite théorique, démontrée mathématiquement, qui ne disparaîtra jamais quels que soient les progrès
futurs.

Question 2 : combien de comparaisons la recherche binaire nécessite-t-elle, dans le pire cas, pour une
liste triée d''un million d''éléments ? Réponse : vingt comparaisons.

Question 3 : pourquoi le coût de la preuve formelle constitue-t-il une limite pratique et non une
impossibilité théorique ? Réponse : parce qu''il est souvent possible, en principe, d''écrire une
spécification et de construire une preuve, mais le coût humain et calculatoire rend cette démarche
irréaliste à grande échelle pour la majorité des logiciels actuels.

Question 4 : que signifie un F1-score de soixante-quinze pour cent dans notre exemple de matrice de
confusion ? Réponse : un équilibre correct, mais non parfait, entre précision et rappel, qui laisse
subsister une proportion significative d''erreurs que seule une évaluation empirique permet de quantifier.

## 48:00 – 1:02:00 · Partie 3, l''articulation par les méthodes de recherche

La preuve formelle reste la méthode de référence quand une spécification complète existe et qu''une
erreur est inacceptable. L''expérimentation et le benchmarking permettent de mesurer, de façon rigoureuse
et reproductible, la performance d''un système d''apprentissage sur des données représentatives, comme
dans notre exemple chiffré. L''étude empirique par fouille de dépôts logiciels permet d''observer, à
grande échelle, où et pourquoi les systèmes réels échouent en pratique, qu''ils relèvent de l''un ou
l''autre courant, nourrissant en retour la recherche théorique elle-même.

Entraînons-nous maintenant, ensemble, à relier ces trois méthodes à la question initiale en une seule
phrase de transition : « Ainsi, la preuve formelle documente la limite théorique au sens strict, tandis
que l''expérimentation et l''étude empirique documentent, chiffres à l''appui, l''ampleur réelle de la
limite pratique actuelle. » Essayez de reformuler cette phrase de transition avec vos propres mots, en
veillant à ne jamais présenter l''un des deux courants comme simplement supérieur à l''autre : le jury
sanctionne systématiquement ce type de raccourci, qui ignore que chaque courant répond à un type de
problème différent plutôt qu''à concurrencer directement l''autre sur le même terrain.

## 1:02:00 – 1:22:00 · Entraînement oral chronométré

Prenez maintenant trois minutes, chronomètre en main, pour restituer oralement le plan complet de
réponse : introduction, partie 1 sur la limite théorique avec l''exemple de la recherche binaire, partie 2
sur la limite pratique avec l''exemple de la matrice de confusion, partie 3 sur l''articulation par les
méthodes de recherche, conclusion. Ne cherchez pas à tout dire en détail : l''objectif est de tenir le fil
du raisonnement dans le temps imparti, comme vous devrez le faire devant un jury. Recommencez l''exercice
une seconde fois en essayant d''améliorer la fluidité de la transition entre les parties.

## 1:22:00 – 1:30:00 · Évaluation finale

1. Quelle est la différence entre une limite théorique et une limite pratique en informatique ? Réponse :
   une limite théorique reste vraie quels que soient les progrès futurs, car elle est démontrée
   mathématiquement ; une limite pratique peut reculer avec le temps, car elle dépend des moyens
   disponibles.
2. Pourquoi le problème de l''arrêt est-il un exemple fondateur de limite théorique ? Réponse : parce
   qu''il a été démontré qu''aucun algorithme ne peut décider, dans tous les cas, si un programme donné
   s''arrêtera, ce qui est une impossibilité logique définitive et non un manque de puissance de calcul.
3. Dans l''exemple vérifié de cette séance, combien de comparaisons la recherche linéaire nécessite-t-elle
   dans le pire cas pour une liste de cent mille éléments ? Réponse : cent mille comparaisons.
4. Que vaut le rappel dans l''exemple de la matrice de confusion utilisée dans cette séance, et comment se
   calcule-t-il ? Réponse : environ soixante-dix-huit pour cent, calculé en divisant les vrais positifs
   par la somme des vrais positifs et des faux négatifs, soit dix-huit divisé par vingt-trois.
5. Pourquoi une bonne réponse de synthèse doit-elle articuler plusieurs méthodes de recherche plutôt que
   n''en défendre qu''une seule ? Réponse : parce que les méthodes répondent à des questions complémentaires
   (preuve pour la garantie universelle, expérimentation pour la performance mesurée, étude empirique
   pour la réalité observée à grande échelle), et qu''un jury valorise la capacité à les articuler plutôt
   qu''à opposer les courants de façon caricaturale.', 'video', 90, false, 90
from public.courses c where c.slug = 'doc-info'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Vidéo 4 : épreuve type d''examen de qualification en Informatique');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Vidéo 5 : simulation complète d''une soutenance de qualification doctorale', '## Fiche du cours vidéo

Durée : 1h30. Objectifs : vivre, en conditions proches du réel, une simulation complète de soutenance de
qualification doctorale en Informatique, de la présentation du champ et d''un projet de thèse fictif aux
questions de jury. Matériel : tableau ou diaporama, chronomètre pour respecter le temps de présentation.
Prérequis : avoir visionné les quatre vidéos précédentes et relu la note de synthèse personnelle construite
au fil du cours.

## Déroulé minuté

## 00:00 – 05:00 · Introduction et consignes de la simulation

Bienvenue dans cette cinquième et dernière vidéo, consacrée à la simulation complète d''une soutenance.
Nous allons procéder en deux temps : d''abord une présentation de quinze minutes du champ et d''un projet
de thèse fictif, puis une séquence de questions de jury type, avec, pour chacune, la structure d''une
bonne réponse. Gardez à l''esprit que l''objectif n''est pas de mémoriser ce projet fictif, mais d''observer
la méthode de présentation et de réponse pour la transposer à votre propre sujet.

## 05:00 – 20:00 · Présentation de quinze minutes : le champ et le projet de thèse fictif

Voici la présentation telle qu''un candidat pourrait la dérouler devant un jury. « Mesdames et Messieurs
les membres du jury, mon travail de thèse se situe à l''intersection de deux courants théoriques majeurs
de l''informatique. Le premier, l''ingénierie logicielle fondée sur la preuve, hérité des travaux de
Turing, Floyd, Hoare et Dijkstra, garantit mathématiquement la conformité d''un programme à sa
spécification. Le second, l''apprentissage automatique, hérité des travaux de Rosenblatt puis de la
théorie de l''apprentissage statistique de Vapnik et des avancées de l''apprentissage profond, construit
des modèles statistiques performants à partir de données, sans spécification explicite complète.

Mon projet de thèse fictif porte sur la fiabilité des systèmes d''aide à la décision de crédit dans le
secteur de la microfinance en Afrique de l''Ouest, des systèmes qui combinent de plus en plus souvent un
modèle d''apprentissage automatique pour l''évaluation du risque et des règles métier classiques pour les
contraintes réglementaires. Ma question de recherche est la suivante : comment concevoir une
architecture qui combine la garantie formelle, là où la réglementation l''exige de façon stricte, et la
performance statistique de l''apprentissage, là où la complexité du risque réel ne se prête à aucune règle
simple et exhaustive ?

Ma méthodologie s''appuiera sur trois piliers méthodologiques déjà développés dans ce cours : premièrement,
une preuve formelle des règles réglementaires non négociables du système, afin de garantir qu''aucune
décision ne puisse les enfreindre, quelle que soit la sortie du modèle statistique ; deuxièmement, un
protocole de benchmarking rigoureux et reproductible pour comparer plusieurs modèles de scoring sur un
même jeu de données représentatif, avec des métriques de classification clairement définies ;
troisièmement, une étude empirique par fouille de dépôts, portant sur des systèmes open source
comparables, pour identifier les types d''erreurs les plus fréquents en conditions réelles de déploiement.
Ce travail se positionne ainsi non pas comme un choix entre les deux grands courants du champ, mais
comme une étude de leur articulation concrète dans un contexte où les deux sont simultanément
nécessaires. Je vous remercie de votre attention et me tiens à votre disposition pour vos questions. »

Visuel à montrer : le plan de la présentation en quatre blocs (courants théoriques, projet, question de
recherche, méthodologie), projeté pendant tout l''exposé.

## 20:00 – 28:00 · Première série de questions de jury (1 à 3)

Question de jury 1 : « Pourquoi ne pas simplement tout prouver formellement, puisque vous travaillez
dans un secteur réglementé ? » Structure d''une bonne réponse : rappeler que la preuve formelle s''applique
efficacement aux règles réglementaires, dont la spécification est connue et stable, mais que l''évaluation
fine du risque de crédit, qui dépend de facteurs multiples et évolutifs, n''admet pas de spécification
exacte et complète, ce qui justifie l''architecture mixte proposée plutôt qu''une preuve totale.

Question de jury 2 : « Comment allez-vous garantir que votre benchmarking est valide et reproductible ? »
Structure d''une bonne réponse : préciser la séparation entre données d''apprentissage et données de test,
la description complète du protocole pour permettre une réplication indépendante, et la répétition des
mesures pour tenir compte de la variabilité.

Question de jury 3 : « Quelle métrique privilégierez-vous pour évaluer vos modèles de scoring, et
pourquoi pas seulement l''exactitude ? » Structure d''une bonne réponse : expliquer que l''exactitude seule
peut être trompeuse en cas de déséquilibre entre bons et mauvais payeurs, et qu''une analyse combinant
précision, rappel et F1-score donne une vision plus fine des erreurs réellement commises par le modèle.

## 28:00 – 36:00 · Deuxième série de questions de jury (4 à 6)

Question de jury 4 : « Votre fouille de dépôts logiciels porte sur des systèmes open source : en quoi
cela reste-t-il pertinent pour des systèmes commerciaux souvent fermés ? » Structure d''une bonne
réponse : reconnaître honnêtement la limite de représentativité de l''échantillon, tout en expliquant que
cette analyse permet de formuler des hypothèses sur les types d''erreurs à surveiller, hypothèses qui
pourront ensuite être testées, si l''accès est négocié, sur des systèmes commerciaux comparables.

Question de jury 5 : « Comment réagiriez-vous si votre modèle d''apprentissage se révélait biaisé envers
certaines catégories de demandeurs ? » Structure d''une bonne réponse : expliquer que ce risque, inhérent
à l''apprentissage automatique, justifie précisément un contrôle a posteriori par des règles formellement
vérifiées, et un suivi empirique régulier des métriques de classification par sous-catégorie, pas
seulement sur la population globale.

Question de jury 6 : « En quoi votre travail apporte-t-il quelque chose de nouveau par rapport à la
littérature existante sur le scoring de crédit ? » Structure d''une bonne réponse : situer précisément
l''apport du travail par rapport à l''état de l''art déjà présenté dans les quatre premières vidéos,
notamment en insistant sur l''articulation méthodologique entre preuve et apprentissage, plutôt que sur
une performance statistique isolée.

## 36:00 – 44:00 · Pause et quiz interactif

Question 1 : dans le projet de thèse fictif, quelle partie du système relève de la preuve formelle, et
laquelle relève de l''apprentissage automatique ? Réponse : les règles réglementaires non négociables
relèvent de la preuve formelle ; l''évaluation fine du risque de crédit relève de l''apprentissage
automatique.

Question 2 : pourquoi le candidat ne privilégie-t-il pas uniquement l''exactitude pour évaluer ses
modèles ? Réponse : parce qu''elle peut être trompeuse en cas de déséquilibre entre catégories, masquant
des erreurs importantes sur la catégorie minoritaire.

Question 3 : quelle méthode de recherche permet d''identifier, en amont, les types d''erreurs fréquentes
en conditions réelles ? Réponse : l''étude empirique par fouille de dépôts logiciels.

## 44:00 – 1:02:00 · Troisième série de questions de jury (7 à 10), les questions les plus difficiles

Question de jury 7 : « Votre architecture mixte n''est-elle pas simplement un compromis qui affaiblit les
deux approches plutôt que de les renforcer ? » Structure d''une bonne réponse : réfuter la prémisse en
montrant que chaque composant de l''architecture conserve ses propriétés propres dans son domaine
d''application (garantie formelle sur les règles réglementaires, performance statistique sur
l''évaluation du risque), sans que l''un n''affaiblisse l''autre ; le compromis porterait seulement sur la
complexité de conception du système global.

Question de jury 8 : « Comment traiteriez-vous le cas où votre preuve formelle et votre modèle
statistique entreraient en conflit sur une décision ? » Structure d''une bonne réponse : préciser
explicitement une règle de priorité conçue dès la spécification du système (par exemple, la règle
formellement prouvée prévaut toujours sur la sortie du modèle statistique lorsqu''elles sont en désaccord
sur une contrainte réglementaire), plutôt que de laisser cette situation ambiguë.

Question de jury 9 : « Quelle est la limite la plus sérieuse de votre méthodologie, selon vous-même ? »
Structure d''une bonne réponse : identifier honnêtement une limite réelle, par exemple la représentativité
incertaine de l''échantillon de fouille de dépôts, plutôt que de minimiser systématiquement toute
objection ; un jury valorise fortement l''autocritique argumentée.

Question de jury 10 : « En une phrase, pourquoi votre travail mérite-t-il d''être poursuivi jusqu''à la
thèse ? » Structure d''une bonne réponse : une phrase de synthèse qui relie explicitement la question de
recherche, l''originalité méthodologique et l''enjeu pratique, sans emphase ni généralisation non étayée.

## 1:02:00 – 1:30:00 · Synthèse finale et grille d''auto-évaluation de la soutenance simulée

Cette dernière séquence remplace l''évaluation habituelle à cinq questions par une grille d''auto-évaluation,
que vous pourrez réutiliser après chacun de vos propres entraînements à la soutenance. Pour chacun des
six critères suivants, notez-vous de façon honnête sur une échelle de 1 (insuffisant) à 4 (excellent), et
notez une action concrète d''amélioration si le score est inférieur à 3.

- Clarté de la présentation du champ : avez-vous su présenter les deux grands courants théoriques sans
  les caricaturer, en quinze minutes maîtrisées ?
- Précision des auteurs fondateurs : avez-vous cité les contributions des auteurs par leur apport réel,
  sans citation textuelle inventée ni erreur factuelle ?
- Rigueur des exemples chiffrés : vos exemples numériques (complexité algorithmique, métriques de
  classification) étaient-ils exacts et correctement interprétés ?
- Articulation méthodologique : avez-vous su relier votre projet de thèse à plusieurs méthodes de
  recherche (preuve, expérimentation, étude empirique) plutôt qu''à une seule ?
- Qualité des réponses aux questions de jury : avez-vous répondu directement à la question posée, en
  reconnaissant les limites de votre travail plutôt qu''en les évitant ?
- Gestion du temps et de l''oral : avez-vous respecté le temps imparti pour la présentation, et gardé un
  débit de parole clair et posé pendant les questions ?

Pour conclure ce cours, rappelez-vous que l''examen de qualification ne récompense pas la perfection, mais
la solidité d''un raisonnement capable de situer un projet de thèse dans la littérature existante, d''en
reconnaître les limites, et de le défendre avec rigueur devant des pairs exigeants. Bonne préparation à
votre propre soutenance.', 'video', 90, false, 100
from public.courses c where c.slug = 'doc-info'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Vidéo 5 : simulation complète d''une soutenance de qualification doctorale');

-- Cours : Doctorat Contrôle de gestion : réussir l'examen de qualification doctorale
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'doc-cg', (select id from public.levels where name = 'Doctorat'), null, 'Contrôle de gestion', 'Doctorat Contrôle de gestion : réussir l''examen de qualification doctorale', 'Préparation à l''examen de qualification doctorale en contrôle de gestion : l''opposition entre l''approche cybernétique et rationnelle du contrôle et les approches socio-organisationnelles, le débat budget traditionnel contre beyond budgeting, les méthodes de recherche du champ (étude de cas clinique, recherche-intervention, enquêtes quantitatives) et une simulation complète de soutenance. Public : doctorants en sciences de gestion ayant déjà une formation de niveau Master en contrôle de gestion.', true, 804
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir son examen de qualification doctorale en contrôle de gestion', 'L''examen de qualification doctorale en contrôle de gestion n''est pas un contrôle de connaissances au sens scolaire du terme. C''est une épreuve de passage, souvent appelée comprehensive exam ou examen de synthèse selon les programmes, qui vérifie qu''un doctorant maîtrise suffisamment l''état de l''art de son champ pour s''engager, en toute autonomie intellectuelle, dans la rédaction d''une thèse. Avant cette épreuve, on est étudiant qui apprend une discipline ; après, on est censé être un chercheur qui peut la faire avancer. Comprendre cette bascule est la première clé de la réussite.

## Nature de l''épreuve

Dans la plupart des programmes doctoraux en sciences de gestion, l''examen de qualification en contrôle de gestion comporte deux volets qui se répondent.

Le premier est une synthèse écrite de la littérature. Le candidat doit produire un document qui démontre qu''il connaît les grands courants théoriques du contrôle de gestion, qu''il peut les situer historiquement les uns par rapport aux autres, qu''il perçoit leurs tensions et leurs complémentarités, et qu''il est capable d''en tirer un positionnement pour son propre projet de thèse. Ce n''est pas un résumé juxtaposé d''auteurs : c''est une mise en intrigue de la littérature, organisée autour de débats (par exemple l''opposition entre une vision cybernétique du contrôle, héritée des travaux fondateurs sur la planification-contrôle, et une vision socio-organisationnelle qui voit le contrôle comme une construction sociale traversée par des jeux d''acteurs).

Le second volet est une soutenance orale devant un jury, généralement composé de trois à cinq enseignants-chercheurs du département, parfois complété par un spécialiste extérieur. Le candidat y présente d''abord brièvement son positionnement théorique et l''esquisse de son projet de thèse, puis répond à des questions qui testent la profondeur de sa compréhension : peut-il expliquer pourquoi un courant a émergé en réaction à un autre ? Peut-il discuter les limites d''une méthode de recherche qu''il envisage d''utiliser ? Peut-il relier un phénomène de terrain qu''il a observé à un concept théorique précis ?

## Ce qu''attend un jury doctoral

Un jury de qualification n''attend pas l''exhaustivité, il attend la maîtrise. Un candidat qui cite vingt auteurs sans jamais les faire dialoguer entre eux inquiète davantage un jury qu''un candidat qui structure sa pensée autour de trois ou quatre débats solides, qu''il explique avec précision et qu''il relie explicitement à son projet.

Trois qualités sont systématiquement recherchées. La rigueur conceptuelle, d''abord : les termes du champ (contrôle de gestion, pilotage, planification, budget, tableau de bord, contrôle organisationnel) doivent être employés avec la précision qu''exige la discipline, et non comme des synonymes interchangeables. La distance critique, ensuite : un bon candidat ne récite pas une théorie, il sait dire dans quel contexte elle s''applique bien, dans quel contexte elle a été critiquée, et par qui. La capacité de positionnement, enfin : le candidat doit montrer qu''il sait où se situe son propre projet de recherche dans cette cartographie théorique, et pourquoi ce positionnement est pertinent et original.

Un jury sanctionne en revanche très sévèrement trois défauts récurrents : la paraphrase sans recul (répéter ce que dit un auteur sans jamais le discuter), l''anachronisme théorique (utiliser un cadre d''analyse hors de son contexte d''émergence sans le justifier), et l''approximation historique (confondre l''ordre d''apparition des courants, ce qui trahit une connaissance livresque et non digérée).

## Méthode de travail recommandée

La préparation d''un examen de qualification s''étale typiquement sur plusieurs mois et repose sur trois outils complémentaires.

Les fiches de lecture sont le socle. Pour chaque texte ou chaque courant important, une fiche synthétique doit répondre à des questions stables : quelle est la question de recherche ou le problème pratique à l''origine de ce courant ? Quels sont les concepts clés qu''il mobilise ? Quelles hypothèses sur l''organisation et sur l''acteur humain sous-tend-il ? Quelles critiques lui ont été adressées, et par quels courants concurrents ? Quels usages empiriques en a-t-on faits ?

La cartographie des courants vient ensuite. Il s''agit de construire, au fil de la lecture, une représentation visuelle (un tableau à double entrée, une frise chronologique, un schéma de filiations) qui situe les courants les uns par rapport aux autres : qui critique qui, qui prolonge qui, quels courants partagent des présupposés malgré des vocabulaires différents. Cette cartographie est l''outil qui permet, le jour de l''oral, de répondre avec aisance à une question inattendue en resituant immédiatement l''enjeu dans l''ensemble du champ.

La note de synthèse, enfin, est l''aboutissement écrit : un document structuré de quelques dizaines de pages qui expose la cartographie sous forme de texte argumenté, conclut sur les zones encore peu explorées de la littérature (les « trous » dans lesquels une thèse peut s''insérer utilement), et propose un positionnement théorique et méthodologique pour le projet de thèse du candidat.

## Plan de travail sur huit semaines

Un calendrier de préparation réaliste peut s''organiser ainsi. Les deux premières semaines sont consacrées à la relecture des textes fondateurs du champ et à l''ouverture des fiches de lecture ; l''objectif est de couvrir large avant d''aller en profondeur. Les semaines trois et quatre approfondissent les deux ou trois grands débats théoriques jugés les plus structurants pour le projet de thèse, avec un effort particulier sur les critiques croisées entre courants. La semaine cinq est consacrée aux méthodes de recherche du champ : il faut être capable de discuter, pour chaque grande méthode, ses forces, ses limites, et les débats épistémologiques qu''elle soulève. La semaine six est celle de la rédaction de la note de synthèse. La semaine sept est consacrée à des simulations d''oral, idéalement devant des pairs doctorants ou un directeur de thèse, qui posent des questions déstabilisantes. La semaine huit, enfin, est une semaine de consolidation : relecture de la cartographie, révision des points faibles identifiés lors des simulations, et repos la veille de l''épreuve, car un jury perçoit immédiatement la fatigue intellectuelle d''un candidat.

Ce cours vous accompagne dans cette préparation en se concentrant sur le contrôle de gestion : ses grands débats théoriques, ses méthodes de recherche spécifiques, et un exercice type d''examen de qualification entièrement corrigé.

## Exercices pratiques

1. Construisez le squelette d''une fiche de lecture type (rubriques et questions) que vous utiliserez pour chaque courant théorique étudié dans ce cours.

2. Esquissez une première version de votre cartographie des courants en contrôle de gestion, même incomplète : placez au moins quatre courants ou auteurs que vous connaissez déjà et tracez les relations (filiation, critique, complémentarité) que vous pressentez entre eux.

3. Identifiez, dans votre propre projet de thèse (même à l''état d''ébauche), la question pratique de contrôle de gestion à laquelle il cherche à répondre. Reformulez-la en une phrase qui pourrait ouvrir votre note de synthèse.

4. Rédigez un calendrier de préparation sur huit semaines adapté à votre situation (temps disponible, accès aux textes, disponibilité d''un directeur de thèse pour les simulations d''oral).

5. Listez trois questions que vous redoutez qu''un jury vous pose sur votre projet de thèse, et pour chacune, notez en une phrase l''angle par lequel vous pourriez commencer à y répondre.

## Corrigé

1. Une fiche de lecture robuste comporte au minimum les rubriques suivantes : référence complète du texte ou identification du courant ; problème pratique ou question de recherche à l''origine ; concepts clés et leur définition précise ; hypothèses implicites sur l''organisation et sur l''acteur ; principaux apports ; principales critiques reçues, avec le nom des courants ou auteurs critiques ; usages empiriques connus ; liens possibles avec votre propre projet de thèse.

2. Il n''y a pas de corrigé unique : l''exercice vise à vous faire prendre conscience, dès le début de la préparation, de l''état réel de vos connaissances et de leurs lacunes. Une cartographie satisfaisante à ce stade montre au moins une opposition claire (par exemple une approche qui insiste sur la rationalité des dispositifs de contrôle face à une approche qui insiste sur leur dimension sociale et politique) et une filiation claire (par exemple un courant qui prolonge et complexifie un modèle plus ancien).

3. L''exercice est individuel, mais une bonne reformulation évite deux pièges : elle n''est pas purement théorique et déconnectée du terrain (« étudier le contrôle de gestion dans les PME »), et elle n''est pas purement opérationnelle sans portée théorique (« aider une entreprise à construire son budget »). Une formulation réussie relie un phénomène observable à une question conceptuelle non résolue dans la littérature.

4. Le calendrier proposé dans la leçon est un gabarit ; l''essentiel est de vérifier qu''il réserve du temps explicite à quatre activités distinctes : lecture large, approfondissement des débats structurants, travail sur les méthodes, et entraînement oral — cette dernière étant souvent négligée par les candidats qui sur-investissent la seule lecture.

5. Il n''y a pas de bonne ou de mauvaise question redoutée : l''intérêt de l''exercice est de la nommer explicitement plutôt que de l''éviter, et de commencer, même modestement, à y préparer une réponse structurée plutôt que de compter sur l''improvisation le jour de l''oral.', 'texte', 45, true, 10
from public.courses c where c.slug = 'doc-cg'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir son examen de qualification doctorale en contrôle de gestion');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Courant théorique 1 : l''approche cybernétique et rationnelle du contrôle de gestion', 'Le premier grand courant que doit maîtriser tout candidat à l''examen de qualification en contrôle de gestion est ce que l''on appelle, par commodité, l''approche cybernétique ou rationnelle du contrôle. Elle constitue le socle historique de la discipline et reste, aujourd''hui encore, le cadre implicite de la plupart des dispositifs de gestion observés dans les organisations.

## Définition et logique d''ensemble

Dans cette approche, le contrôle de gestion est pensé comme un processus de régulation : on fixe des objectifs, on alloue des ressources pour les atteindre, on mesure les résultats obtenus, on compare ces résultats aux objectifs, et on corrige l''action en consé­quence. Cette boucle (objectif, action, mesure, écart, correction) est directement inspirée de la cybernétique, c''est-à-dire de la science du pilotage des systèmes par rétroaction, dont les principes ont été formulés dans les travaux fondateurs sur la théorie des systèmes et des mécanismes de régulation au milieu du vingtième siècle. Appliquée à l''organisation, cette logique traite l''entreprise comme un système que l''on peut piloter rationnellement, à condition de disposer des bons instruments de mesure et de la bonne architecture de responsabilités.

Le contrôle de gestion y est donc défini comme le processus par lequel les dirigeants s''assurent que les ressources sont obtenues et utilisées avec efficacité et efficience pour atteindre les objectifs de l''organisation. Cette définition, devenue classique dans la discipline, insiste sur trois idées : le contrôle sert la stratégie (il n''est pas une fin en soi), il porte sur l''utilisation des ressources (il est donc étroitement lié à la comptabilité de gestion), et il est distinct à la fois de la planification stratégique, qui fixe les grandes orientations à long terme, et du contrôle d''exécution, qui porte sur des tâches programmables et répétitives à très court terme.

## Auteurs fondateurs et apports

L''auteur le plus structurant de ce courant est le chercheur américain à l''origine, dans les années 1960 et 1970, du modèle dit de la planification-contrôle, qui distingue trois niveaux de pilotage dans l''organisation. Le niveau de la planification stratégique définit les finalités et les grandes orientations, sur un horizon long et dans un contexte d''incertitude élevée. Le niveau du contrôle de gestion (management control) organise la mise en œuvre de la stratégie à moyen terme, notamment par les budgets, les centres de responsabilité et les tableaux de bord : c''est un processus qui engage un dialogue entre dirigeants et responsables opérationnels. Le niveau du contrôle d''exécution (ou contrôle opérationnel) assure, à très court terme, que des tâches bien définies sont exécutées efficacement, souvent par des règles et des procédures plutôt que par un dialogue managérial.

Cette architecture à trois niveaux a eu une influence considérable : elle a fourni le vocabulaire encore utilisé aujourd''hui (centres de coûts, centres de profit, centres d''investissement, prix de cession interne) et elle a légitimé le contrôle de gestion comme fonction managériale distincte de la comptabilité générale, orientée vers l''aide à la décision plutôt que vers la seule production d''états financiers.

D''autres apports ont enrichi ce socle. Les travaux sur la comptabilité de gestion et les coûts de production, antérieurs et postérieurs, ont fourni les outils de calcul (coûts complets, coûts variables, coûts standards, analyse des écarts) qui permettent de rendre opérationnelle la logique de comparaison entre prévision et réalisation. Les travaux sur la théorie de l''agence, développés en économie des organisations, ont ensuite donné un fondement microéconomique à cette approche : si les intérêts des dirigeants et des actionnaires, ou des responsables opérationnels et de la direction générale, peuvent diverger, les dispositifs de contrôle (budgets, indicateurs, systèmes d''incitation) servent à aligner ces intérêts et à réduire les asymétries d''information.

## Évolution historique

Ce courant naît dans un contexte précis : celui des grandes entreprises industrielles américaines de la première moitié du vingtième siècle, confrontées au problème de la décentralisation. Comment une direction générale peut-elle déléguer des responsabilités à des directions de division tout en gardant une vision d''ensemble de la performance ? La réponse apportée est celle des centres de responsabilité budgétaire : on découpe l''organisation en unités dont on peut mesurer la performance de façon homogène (coûts, profit ou rentabilité des capitaux investis selon le périmètre de responsabilité confié), et on pilote l''ensemble par un système de reporting périodique.

Cette logique s''est ensuite diffusée largement, y compris dans des organisations non marchandes, avec l''idée que tout système organisé peut bénéficier d''un pilotage par objectifs et indicateurs, pour peu que l''on adapte les outils de mesure à la nature de son activité.

## Limites et critiques

Ce courant a fait l''objet de critiques convergentes, qui ont ouvert la voie aux approches concurrentes étudiées dans la leçon suivante. Une première limite porte sur l''hypothèse de rationalité : le modèle suppose des acteurs qui réagissent de façon prévisible aux objectifs et aux mesures, alors que les comportements réels face aux budgets (négociation à la baisse des objectifs, constitution de « coussins » budgétaires, manipulation des indicateurs en fin de période) montrent que les acteurs interprètent et s''approprient stratégiquement les dispositifs de contrôle.

Une deuxième limite porte sur le réductionnisme de la mesure : tout ce qui compte vraiment dans une organisation (la qualité de service, la coopération entre équipes, l''innovation) n''est pas toujours mesurable facilement, et un pilotage trop centré sur quelques indicateurs quantitatifs financiers risque de détourner l''attention des acteurs vers ce qui est mesuré au détriment de ce qui ne l''est pas.

Une troisième limite porte sur la rigidité face à l''incertitude : le modèle de la planification-contrôle a été pensé pour des environnements relativement stables, où l''on peut fixer des objectifs annuels pertinents sur toute la période. Dans des environnements plus volatils, le cycle budgétaire annuel devient rapidement obsolète, ce qui a nourri, bien plus tard, le débat sur le « beyond budgeting » étudié en leçon quatre.

Malgré ces critiques, l''approche cybernétique reste la grammaire de base du contrôle de gestion : même les auteurs qui la critiquent le plus vivement s''y réfèrent, explicitement ou implicitement, comme le point de départ de leur propre construction théorique.

## Exercices pratiques

1. Expliquez, avec vos propres mots, la différence entre contrôle de gestion et contrôle d''exécution selon le modèle de la planification-contrôle. Donnez un exemple pour chaque niveau dans une entreprise de distribution.

2. Pourquoi la théorie de l''agence est-elle considérée comme un fondement complémentaire de l''approche cybernétique plutôt que comme un courant concurrent ?

3. Un directeur financier affirme : « Tant que nos indicateurs sont dans le vert, l''organisation fonctionne bien. » Discutez cette affirmation à la lumière des limites du courant cybernétique.

4. En quoi le découpage d''une organisation en centres de responsabilité peut-il créer des comportements non prévus par les concepteurs du système de contrôle ? Donnez deux exemples.

5. Dans quel type de contexte organisationnel (stabilité, prévisibilité, nature de l''activité) l''approche cybernétique vous semble-t-elle la plus pertinente ? Justifiez.

## Corrigé

1. Le contrôle de gestion organise, à moyen terme, le dialogue entre la direction générale et les responsables d''unités autour d''objectifs négociés (budgets, plans d''action) : il laisse une marge d''appréciation aux responsables sur la façon d''atteindre l''objectif. Le contrôle d''exécution porte sur des tâches très cadrées, à très court terme, où la marge d''appréciation est faible et où des règles ou procédures suffisent : par exemple, dans une enseigne de distribution, la définition des objectifs de chiffre d''affaires et de marge d''un directeur de magasin relève du contrôle de gestion, tandis que le respect d''une procédure d''encaissement en caisse relève du contrôle d''exécution.

2. Parce qu''elle ne propose pas un modèle alternatif de pilotage de l''organisation, mais un fondement théorique qui explique pourquoi les dispositifs de contrôle (budgets, indicateurs, incitations) sont nécessaires : elle justifie, en termes d''intérêts divergents et d''asymétrie d''information entre dirigeants et subordonnés, la logique même de surveillance et de mesure que l''approche cybernétique met en œuvre.

3. L''affirmation traduit un réductionnisme typique de la mesure : elle suppose que les indicateurs choisis captent l''essentiel de la performance de l''organisation, alors que des dimensions importantes (qualité perçue par les clients, climat social, capacité d''innovation) peuvent se détériorer sans que les indicateurs financiers s''en trouvent immédiatement affectés. Une bonne réponse doit nuancer : les indicateurs sont utiles mais insuffisants seuls, et leur interprétation doit être complétée par d''autres sources d''information.

4. Le découpage en centres de responsabilité peut inciter un responsable à optimiser son propre indicateur au détriment de la performance globale (par exemple refuser une commande urgente qui dégraderait son taux d''utilisation des capacités, alors qu''elle serait bénéfique pour l''entreprise dans son ensemble), ou à retarder artificiellement des charges d''une période sur l''autre pour présenter un résultat conforme à l''objectif du centre, sans que cela corresponde à une amélioration réelle de la gestion.

5. L''approche cybernétique est la plus pertinente dans des contextes où l''activité est relativement stable et répétitive, où les relations de cause à effet entre actions et résultats sont bien connues, et où les objectifs peuvent être fixés avec un horizon de douze mois sans devenir rapidement caducs : c''est typiquement le cas d''activités industrielles ou de services standardisés dans un environnement concurrentiel prévisible. Elle est moins adaptée dans des environnements très incertains ou dans des organisations dont la performance repose largement sur des dimensions difficiles à mesurer, comme l''innovation ou la créativité.', 'texte', 45, false, 20
from public.courses c where c.slug = 'doc-cg'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Courant théorique 1 : l''approche cybernétique et rationnelle du contrôle de gestion');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Courant théorique 2 : les approches socio-organisationnelles du contrôle', 'Face au courant cybernétique présenté dans la leçon précédente, un ensemble de travaux, regroupés ici sous le terme d''approches socio-organisationnelles du contrôle, proposent une lecture radicalement différente : le contrôle de gestion n''y est plus seulement un instrument de régulation rationnelle, mais une construction sociale, traversée par des jeux d''acteurs, des rapports de pouvoir et des significations qui se négocient dans l''organisation.

## Définition et logique d''ensemble

L''idée centrale de ce courant est que les dispositifs de contrôle (budgets, indicateurs, tableaux de bord, procédures) ne produisent jamais mécaniquement les effets prévus par leurs concepteurs. Entre la conception d''un outil de gestion et son usage effectif sur le terrain s''interposent des acteurs qui l''interprètent, le détournent, le contournent, ou au contraire s''en saisissent pour défendre leurs propres intérêts, leur position dans l''organisation, ou leur conception légitime du métier. Le contrôle de gestion devient alors un objet d''analyse sociologique autant qu''un objet de gestion technique.

Ce courant s''appuie sur une hypothèse différente de celle du modèle cybernétique quant à la nature de l''acteur organisationnel : l''acteur n''est pas seulement un agent qui réagit à des incitations financières, il est un acteur stratégique, doté d''une rationalité limitée mais réelle, qui cherche à préserver ou à étendre ses marges de liberté (ses « zones d''incertitude ») dans un système d''action concret. Il en résulte que tout dispositif de contrôle, aussi bien conçu soit-il techniquement, est en réalité le produit (et l''enjeu) d''un jeu de pouvoir entre les acteurs qui le construisent, ceux qui doivent l''appliquer, et ceux qui en subissent les effets.

## Apports fondateurs

Plusieurs lignées de travaux nourrissent ce courant. La sociologie des organisations, en France notamment, a développé l''analyse stratégique des organisations : toute organisation est un système d''action concret, structuré par des jeux de pouvoir autour de zones d''incertitude que chaque acteur cherche à contrôler pour négocier en position favorable. Appliquée au contrôle de gestion, cette grille de lecture montre que les responsables budgétaires, par exemple, ne se contentent pas d''exécuter des directives : ils négocient les objectifs qui leur sont fixés, retiennent stratégiquement de l''information sur leurs marges de manœuvre réelles, et utilisent leur connaissance fine du terrain comme une ressource de pouvoir face à la direction générale.

Une deuxième lignée, issue des études critiques en comptabilité (critical accounting studies), analyse les dispositifs comptables et budgétaires comme des technologies de pouvoir : loin d''être neutres, ils rendent visibles certains phénomènes et invisibles d''autres, ils légitiment certaines catégories d''acteurs (les gestionnaires, les financiers) au détriment d''autres (les métiers opérationnels, les corps de métier traditionnels), et ils participent ainsi à façonner les rapports de force dans l''organisation autant qu''ils les mesurent.

Une troisième lignée s''appuie sur les théories de l''institutionnalisation et de la construction sociale des pratiques de gestion : les outils de contrôle se diffusent dans les organisations non pas uniquement parce qu''ils sont techniquement supérieurs, mais parce qu''ils deviennent des normes socialement attendues, des signes de légitimité et de modernité organisationnelle, que les dirigeants adoptent parfois davantage pour se conformer à ce qui est considéré comme une « bonne pratique » du secteur que pour leur efficacité intrinsèque démontrée.

## Évolution historique

Ces approches se développent à partir des années 1970-1980, en réaction aux limites perçues du modèle cybernétique : les chercheurs en sociologie des organisations et en comptabilité critique observent, sur le terrain, des écarts considérables entre le fonctionnement théorique des dispositifs de contrôle et leurs usages réels. Le courant se nourrit également de la montée, dans les sciences sociales, d''une attention plus générale portée aux dimensions symboliques, politiques et discursives des phénomènes organisationnels, par contraste avec des approches plus fonctionnalistes qui dominaient auparavant.

Ce courant a progressivement gagné en influence dans la recherche académique en contrôle de gestion, notamment via le développement de la méthode de l''étude de cas clinique et de la recherche-intervention (présentées en leçon quatre), qui permettent précisément de documenter finement ces jeux d''acteurs autour des dispositifs de contrôle, alors que les méthodes quantitatives à grande échelle les rendent plus difficiles à observer.

## Limites et critiques

Ce courant a lui-même été critiqué, notamment par les tenants de l''approche cybernétique et par certains chercheurs en gestion plus appliquée. Une première critique porte sur l''opérationnalité : en insistant sur la complexité des jeux d''acteurs et sur l''imprévisibilité des usages des outils, ce courant offre parfois peu de prescriptions concrètes aux praticiens qui doivent, malgré tout, concevoir et faire vivre des systèmes de contrôle dans leurs organisations.

Une deuxième critique porte sur un risque de relativisme excessif : si tout dispositif de contrôle n''est qu''un enjeu de pouvoir sans portée technique propre, on perd de vue que certains outils de mesure sont, de fait, plus pertinents que d''autres pour éclairer une décision économique, et que la dimension sociale du contrôle n''épuise pas entièrement sa dimension instrumentale.

Une troisième critique, plus méthodologique, porte sur la généralisation : les études de cas qualitatives qui nourrissent ce courant, riches et détaillées, se prêtent plus difficilement à des conclusions généralisables à un grand nombre d''organisations que les enquêtes quantitatives privilégiées par l''approche cybernétique.

## Tension et complémentarité avec le courant cybernétique

La tension entre les deux courants n''est pas seulement académique : elle structure directement la pratique du contrôle de gestion. Un contrôleur de gestion qui ignore la dimension sociale et politique des dispositifs qu''il conçoit risque de produire des outils techniquement irréprochables mais massivement contournés ou vidés de leur sens sur le terrain. Inversement, un contrôleur de gestion qui négligerait entièrement la dimension instrumentale (la qualité du calcul de coût, la pertinence d''un indicateur) au profit d''une lecture uniquement politique perdrait la capacité de produire une information de gestion fiable. Les recherches les plus récentes en contrôle de gestion tendent d''ailleurs à articuler les deux lectures plutôt qu''à les opposer frontalement, en étudiant comment la dimension technique et la dimension sociale des dispositifs de contrôle s''influencent mutuellement dans le temps.

## Exercices pratiques

1. Expliquez la notion de « zone d''incertitude » et montrez, par un exemple, comment un responsable opérationnel peut en tirer un pouvoir de négociation face à la direction financière lors de l''élaboration du budget.

2. En quoi les dispositifs comptables peuvent-ils être qualifiés de « technologies de pouvoir » plutôt que de simples outils de mesure neutre ? Donnez un exemple concret.

3. Comparez, sur le plan des hypothèses sur l''acteur organisationnel, le courant cybernétique et le courant socio-organisationnel.

4. Un chercheur affirme que les approches socio-organisationnelles rendent le contrôle de gestion « illisible » pour les praticiens. Discutez cette critique en identifiant ses limites.

5. Dans votre propre projet de thèse, identifiez un phénomène de terrain qui relèverait davantage d''une lecture socio-organisationnelle que d''une lecture cybernétique, et expliquez pourquoi.

## Corrigé

1. Une zone d''incertitude est une portion d''information ou de compétence que seul un acteur maîtrise réellement, ce qui lui donne un pouvoir de négociation face aux autres acteurs qui en dépendent. Par exemple, un chef d''atelier qui connaît seul les capacités réelles de production (au-delà des chiffres officiels) peut, lors de la négociation budgétaire, sous-estimer stratégiquement ces capacités pour obtenir un objectif plus facile à atteindre, la direction financière ne disposant pas des moyens de vérifier cette information de façon indépendante.

2. Un dispositif comptable n''est pas neutre parce qu''il choisit ce qui est mesuré (donc rendu visible et légitime) et ce qui ne l''est pas (donc rendu invisible). Par exemple, un système de coûts qui valorise fortement la productivité horaire d''une chaîne de production, sans mesurer la qualité perçue par le client final, oriente implicitement les comportements des opérateurs vers la vitesse au détriment de la qualité, tout en donnant l''apparence d''une mesure purement technique et objective.

3. Le courant cybernétique suppose un acteur qui réagit de façon relativement prévisible aux incitations et aux objectifs fixés, dans une logique proche de l''agent rationnel de la théorie économique. Le courant socio-organisationnel suppose un acteur stratégique, doté d''une rationalité limitée, qui interprète activement les dispositifs de contrôle, cherche à préserver ses marges de liberté, et peut détourner un dispositif de ses objectifs initiaux pour servir ses propres intérêts ou sa conception du métier.

4. La critique a une part de vérité : une lecture purement sociologique et politique, sans traduction opérationnelle, peut effectivement laisser le praticien démuni face à la question concrète « que dois-je faire demain matin pour améliorer mon système de contrôle ? ». Mais la limite de la critique est qu''elle sous-estime l''utilité pratique de comprendre les jeux d''acteurs : un contrôleur de gestion averti de ces mécanismes peut anticiper les détournements probables d''un outil et concevoir des dispositifs plus robustes socialement, ce qui est en soi une forme d''opérationnalité, différente mais non inférieure à celle du courant cybernétique.

5. Il n''y a pas de réponse unique : un exemple type serait l''observation que des responsables intermédiaires parviennent à neutraliser un nouvel outil de pilotage imposé par le siège d''un groupe, non par refus ouvert, mais par une application purement formelle qui en vide le contenu, ce qui ne peut s''expliquer par le seul design technique de l''outil et appelle une lecture en termes de jeux de pouvoir et de défense de l''autonomie professionnelle.', 'texte', 45, false, 30
from public.courses c where c.slug = 'doc-cg'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Courant théorique 2 : les approches socio-organisationnelles du contrôle');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Les méthodes de recherche en contrôle de gestion', 'Un candidat à l''examen de qualification doit non seulement connaître les grands courants théoriques du contrôle de gestion, mais aussi maîtriser les méthodes de recherche propres au champ, c''est-à-dire savoir comment la discipline produit ses connaissances, avec quels outils, et avec quelles limites. Cette leçon présente trois grandes familles de méthodes : l''étude de cas clinique, la recherche-intervention, et les enquêtes quantitatives sur les pratiques de contrôle.

## L''étude de cas clinique en contrôle de gestion

L''étude de cas clinique consiste à observer en profondeur, sur une durée généralement longue, le fonctionnement réel des dispositifs de contrôle dans une ou plusieurs organisations, en combinant entretiens avec les acteurs, observation directe de réunions ou de processus budgétaires, et analyse de documents internes (budgets, tableaux de bord, comptes rendus). Le terme « clinique » souligne que le chercheur adopte une posture proche de celle d''un clinicien : il s''intéresse au fonctionnement singulier d''un cas, dans toute sa complexité, plutôt qu''à la vérification d''une loi générale sur un grand échantillon.

Cette méthode est particulièrement adaptée pour étudier les phénomènes mis en avant par les approches socio-organisationnelles : elle permet de documenter finement comment un outil de contrôle est effectivement interprété, négocié ou détourné par les acteurs, ce qu''une enquête quantitative ne peut généralement pas saisir avec la même profondeur. Elle permet aussi d''observer des processus dans leur déroulement temporel, ce qui est précieux pour comprendre la dynamique de construction d''un dispositif, pas seulement son état à un instant donné.

Ses limites sont bien identifiées : la difficulté de généraliser les résultats d''un ou quelques cas à toute une population d''organisations, le risque d''un biais d''interprétation du chercheur impliqué longuement sur le terrain, et l''exigence méthodologique d''un protocole de collecte explicite, d''une triangulation des sources, et d''une transparence sur les critères de choix des cas étudiés.

## La recherche-intervention

La recherche-intervention va plus loin que l''étude de cas en ce que le chercheur n''observe pas seulement l''organisation de l''extérieur, mais y intervient activement, généralement en accompagnant un changement organisationnel (par exemple la conception ou la refonte d''un système de contrôle de gestion), tout en produisant simultanément une connaissance scientifique sur ce processus de changement. Le chercheur occupe alors une double posture, à la fois acteur du changement (parfois rémunéré comme consultant) et observateur scientifique de ce même changement, ce qui exige une vigilance méthodologique particulière pour distinguer ce qui relève de l''action du chercheur et ce qui relève du phénomène qu''il étudie.

Cette méthode est très présente en contrôle de gestion parce que la discipline a, historiquement, des liens étroits avec la pratique managériale : de nombreux dispositifs étudiés par la recherche ont d''abord été conçus en partenariat avec des organisations. Les tenants de cette méthode soutiennent qu''elle seule permet d''accéder à certaines connaissances : on ne comprend vraiment la dynamique de résistance à un nouvel outil de contrôle qu''en participant à sa mise en œuvre, non en l''observant de l''extérieur a posteriori.

Sa limite principale tient à la validité scientifique : comment s''assurer que les conclusions ne reflètent pas simplement les intérêts du chercheur-intervenant, qui a par construction intérêt à ce que son intervention soit perçue comme réussie ? La discipline y répond par l''explicitation de la posture du chercheur, la validation croisée avec d''autres acteurs, et la publication de protocoles détaillés — un débat méthodologique qui reste permanent dans le champ.

## Les enquêtes quantitatives sur les pratiques de contrôle

À l''inverse de ces deux méthodes qualitatives, les enquêtes quantitatives consistent à administrer des questionnaires structurés à un grand nombre d''organisations ou de responsables de contrôle de gestion, afin de mesurer statistiquement des relations entre variables : par exemple, la relation entre le degré de turbulence de l''environnement d''une entreprise et le degré de flexibilité de son système budgétaire, ou entre la taille d''une organisation et la sophistication de ses outils de pilotage.

Cette méthode permet des résultats généralisables, avec des tests statistiques explicites de la robustesse des relations observées, ce qui répond à la principale limite des méthodes qualitatives. Elle s''inscrit dans la continuité du courant cybernétique, qui postule des relations relativement stables et mesurables entre caractéristiques organisationnelles et pratiques de contrôle.

Ses limites sont, en miroir, celles des méthodes qualitatives : la perte de profondeur (un questionnaire standardisé capture mal les jeux d''acteurs autour d''un dispositif), le risque que les répondants déclarent des pratiques officielles qui ne correspondent pas aux usages réels, et la difficulté de mesurer fiablement des phénomènes par nature qualitatifs, comme le degré de « jeu politique » autour d''un budget.

## Choisir sa méthode selon sa question de recherche

Un doctorant doit justifier le choix d''une méthode par cohérence avec sa question de recherche, non par préférence personnelle. Mesurer l''ampleur d''un phénomène dans une population d''organisations appelle une enquête quantitative ; comprendre un mécanisme fin de construction sociale d''un dispositif appelle une étude de cas clinique ; produire une connaissance tout en accompagnant un changement concret appelle une recherche-intervention.

## Exemple de protocole de recherche appliqué à un contexte sénégalais fictif

Prenons un projet de thèse fictif sur l''introduction de démarches de pilotage inspirées du beyond budgeting dans des PME agro-industrielles de la région de Thiès. Le protocole pourrait combiner les trois méthodes. Une phase quantitative, par questionnaire auprès d''un échantillon de PME du secteur, mesurerait la diffusion des pratiques budgétaires traditionnelles et alternatives, et leur association avec la taille de l''entreprise ou le degré de concurrence perçu. Une phase de recherche-intervention accompagnerait une ou deux PME volontaires dans la refonte de leur système de pilotage, en documentant les résistances et les apprentissages observés. Une phase d''étude de cas clinique a posteriori analyserait, un an après, comment le nouveau dispositif est réellement utilisé au quotidien, au-delà de son fonctionnement officiel initial.

Pour illustrer concrètement le type de calcul que ce terrain pourrait mobiliser, prenons l''exemple d''une unité de transformation agro-alimentaire fictive. Son budget initial prévoyait un volume de 10 000 unités vendues à un prix unitaire de 2 500 francs CFA (valeur fictive pour l''exemple), pour un coût variable unitaire budgété de 1 500 francs CFA et des charges fixes budgétées de 8 000 000 francs CFA. Le résultat budgété est donc de (2 500 moins 1 500) multiplié par 10 000, soit 10 000 000 francs CFA de marge sur coût variable, moins 8 000 000 de charges fixes, soit un résultat budgété de 2 000 000 francs CFA.

En réalité, l''entreprise a vendu 11 200 unités, mais à un prix unitaire moyen de seulement 2 400 francs CFA (pression concurrentielle plus forte que prévu), avec un coût variable unitaire réel de 1 600 francs CFA (hausse du coût des intrants) et des charges fixes réelles de 8 300 000 francs CFA. Le résultat réel est de (2 400 moins 1 600) multiplié par 11 200, soit 8 960 000 francs CFA de marge sur coût variable, moins 8 300 000 de charges fixes, soit un résultat réel de 660 000 francs CFA.

L''écart total entre le résultat réel et le résultat budgété est donc de 660 000 moins 2 000 000, soit moins 1 340 000 francs CFA. L''analyse des écarts, vérifiée par un calcul informatique, permet de décomposer cet écart total en quatre effets : un effet volume favorable de 1 200 000 francs CFA (l''entreprise a vendu plus que prévu), un effet prix de vente défavorable de 1 120 000 francs CFA (le prix réel est inférieur au prix budgété sur le volume réellement vendu), un effet coût variable défavorable de 1 120 000 francs CFA (le coût unitaire réel est supérieur au coût budgété sur le volume réellement vendu), et un effet charges fixes défavorable de 300 000 francs CFA. La somme de ces quatre effets (1 200 000 moins 1 120 000 moins 1 120 000 moins 300 000) redonne bien moins 1 340 000 francs CFA, ce qui confirme la cohérence de la décomposition.

Ce calcul, technique en apparence, illustre le débat entre les deux courants : le courant cybernétique y voit un diagnostic rationnel des causes de la sous-performance, tandis que le courant socio-organisationnel invite à se demander comment les acteurs interprètent ou contestent cette décomposition — par exemple si le responsable commercial conteste que l''effet prix lui soit attribué, alors que la baisse résultait d''une décision collective de la direction face à la concurrence.

## Exercices pratiques

1. Un doctorant souhaite étudier comment des contrôleurs de gestion de grandes entreprises sénégalaises perçoivent la légitimité de leur fonction face aux directions opérationnelles. Quelle méthode lui recommanderiez-vous en priorité, et pourquoi ?

2. Expliquez la différence essentielle entre une étude de cas clinique et une recherche-intervention.

3. Quelle est la principale difficulté méthodologique propre à la recherche-intervention, et comment la discipline tente-t-elle d''y répondre ?

4. Reprenez l''exemple chiffré de la leçon : si le volume réel avait été de 9 000 unités au lieu de 11 200 (toutes choses égales par ailleurs), l''effet volume aurait-il été favorable ou défavorable ? Justifiez sans recalculer précisément le montant.

5. Proposez, pour votre propre projet de thèse, la méthode de recherche qui vous semble la plus cohérente avec votre question de recherche, en justifiant ce choix en trois phrases.

## Corrigé

1. L''étude de cas clinique est la plus adaptée : la question porte sur des perceptions fines et potentiellement contradictoires entre acteurs, qu''un questionnaire standardisé capturerait mal ; des entretiens approfondis, combinés à l''observation de situations de travail réelles, permettent de documenter cette légitimité perçue dans toute sa complexité.

2. Dans l''étude de cas clinique, le chercheur observe un phénomène existant sans chercher à le modifier ; dans la recherche-intervention, il participe activement à la transformation de l''organisation, ce qui exige une vigilance supplémentaire sur la distinction entre son rôle d''acteur et son rôle d''observateur.

3. La principale difficulté est le risque de biais lié à l''intérêt du chercheur-intervenant à ce que son intervention soit perçue comme réussie. La discipline y répond par l''explicitation de sa posture, la validation croisée auprès d''autres acteurs, et la publication de protocoles détaillés.

4. Avec un volume réel de 9 000 unités, inférieur au volume budgété de 10 000, l''effet volume serait défavorable : vendre moins que prévu réduit mécaniquement la marge réalisée par rapport à celle qui aurait résulté du volume budgété, toutes choses égales par ailleurs.

5. Il n''y a pas de réponse unique : une justification satisfaisante relie la nature de la question de recherche au type de connaissance que la méthode choisie permet de produire, en écartant explicitement au moins une autre méthode jugée moins adaptée.', 'texte', 45, false, 40
from public.courses c where c.slug = 'doc-cg'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Les méthodes de recherche en contrôle de gestion');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Épreuve type d''examen de qualification : budget traditionnel et beyond budgeting', 'Cette leçon propose un exercice type d''examen de qualification doctorale en contrôle de gestion (non officiel, construit pour l''entraînement), avec un plan de réponse détaillé et corrigé. L''objectif est de vous montrer, sur un cas concret, comment mobiliser ensemble les deux courants théoriques et les méthodes de recherche étudiés dans les leçons précédentes.

## La question type

Voici une question de synthèse représentative du type d''épreuve que peut poser un jury de qualification : « Dans quelle mesure le débat entre le contrôle budgétaire traditionnel et les démarches dites de "beyond budgeting" renouvelle-t-il, ou prolonge-t-il, l''opposition entre une conception cybernétique et une conception socio-organisationnelle du contrôle de gestion ? Vous illustrerez votre propos en indiquant comment vous mobiliseriez une méthode de recherche pour instruire empiriquement cette question dans un contexte d''entreprises africaines. »

Cette question est typique à plusieurs égards : elle demande de maîtriser un débat contemporain spécifique du champ (budget traditionnel contre beyond budgeting), elle demande de le relier aux grands courants théoriques structurants de la discipline, et elle demande une mise en œuvre méthodologique concrète. C''est exactement l''articulation que teste un jury : connaissances théoriques, capacité de mise en relation, et sens pratique de la recherche.

## Présentation du débat budget traditionnel contre beyond budgeting

Avant de construire le plan de réponse, il faut maîtriser le contenu de ce débat, qui prolonge directement les deux courants étudiés en leçons 2 et 3.

Le contrôle budgétaire traditionnel, héritier direct de l''approche cybernétique, repose sur un cycle annuel : négociation des objectifs, allocation de ressources, suivi mensuel des écarts, actions correctives. Ses défenseurs soulignent qu''il reste, malgré ses défauts, un outil puissant de coordination entre unités, de responsabilisation des managers, et de discipline financière, en particulier dans des organisations de grande taille où il faut synchroniser des centaines de décisions décentralisées.

Le mouvement dit du « beyond budgeting », apparu à la fin des années 1990 dans la littérature professionnelle et académique, critique le cycle budgétaire annuel pour son incapacité à s''adapter à des environnements changeant plus vite qu''un an, pour le temps et les ressources considérables qu''il consomme (la préparation du budget annuel mobilise souvent plusieurs mois de l''année dans les grandes organisations), et pour les comportements pervers qu''il engendre : négociation stratégique des objectifs à la baisse, dépenses de fin d''année pour « consommer » une enveloppe budgétaire avant qu''elle ne soit perdue, ou focalisation sur l''atteinte d''un chiffre au détriment de la création de valeur réelle pour les clients. Les démarches alternatives proposées remplacent le budget annuel fixe par des prévisions glissantes révisées plus fréquemment, des objectifs relatifs (comparés à des concurrents ou à des unités comparables plutôt qu''à un chiffre absolu fixé un an à l''avance), et une décentralisation plus large des décisions vers les équipes opérationnelles, combinée à un pilotage par des indicateurs de performance globale plutôt que par le seul respect d''une enveloppe budgétaire.

Le point essentiel pour un candidat au doctorat est de percevoir que ce débat contemporain n''est pas purement technique : il rejoue, sous un vocabulaire différent, l''opposition entre les deux courants fondamentaux du champ. Le camp qui défend le contrôle budgétaire traditionnel reste largement dans une logique cybernétique : on peut améliorer le dispositif (le rendre plus flexible, plus réactif) sans remettre en cause l''idée qu''un bon système d''objectifs et de mesures, bien conçu, pilote rationnellement l''organisation. Le camp qui défend le beyond budgeting, en revanche, mobilise souvent, explicitement ou implicitement, des arguments proches du courant socio-organisationnel : il met en avant les effets pervers du budget sur les comportements des acteurs, la nécessité de faire confiance aux équipes plutôt que de les contraindre par des chiffres négociés sous contrainte hiérarchique, et l''idée que la performance d''une organisation dépend autant de sa capacité d''adaptation collective que de la rigueur de son calcul budgétaire.

## Plan de réponse détaillé

Une introduction efficace rappellerait d''abord les deux grands courants théoriques du contrôle de gestion (brièvement, sans développer : ce n''est pas l''objet principal de la question), puis annoncerait le fil directeur : le débat budget traditionnel contre beyond budgeting n''est pas un simple débat d''outils, mais la reformulation contemporaine de l''opposition théorique fondamentale du champ, enrichie par des considérations propres au contexte économique actuel (incertitude accrue, digitalisation, attentes de décentralisation).

Une première partie montrerait que le contrôle budgétaire traditionnel prolonge directement la logique cybernétique : elle rappellerait les fondements du modèle de planification-contrôle, puis montrerait comment le cycle budgétaire annuel en est une application directe, avant de reconnaître les limites de ce modèle déjà identifiées par la littérature (rigidité face à l''incertitude, comportements de négociation stratégique des objectifs).

Une deuxième partie montrerait que le beyond budgeting, sans être une pure application du courant socio-organisationnel, en reprend des intuitions centrales : la défiance envers un pilotage centralisé et chiffré qui ignore les jeux d''acteurs, l''attention portée aux effets pervers des dispositifs de mesure sur les comportements, et une préférence pour des mécanismes de coordination qui laissent plus de place à l''autonomie et à la négociation locale des équipes. Cette partie nuancerait cependant : le beyond budgeting reste, lui aussi, un dispositif de pilotage par indicateurs (relatifs plutôt qu''absolus), ce qui montre qu''aucun des deux camps ne sort complètement de la logique de mesure, et que l''opposition entre les deux courants théoriques est une opposition de degré et d''accent plus qu''une rupture totale.

Une troisième partie proposerait une mise en œuvre méthodologique : elle justifierait, par exemple, une recherche-intervention auprès de quelques entreprises sénégalaises ou ouest-africaines engagées dans une transition de leur système budgétaire, complétée par une enquête quantitative plus large pour mesurer l''ampleur de la diffusion de ces pratiques dans le tissu économique régional, en expliquant pourquoi une étude de cas clinique seule ne suffirait pas à mesurer cette diffusion, et pourquoi une enquête quantitative seule ne suffirait pas à comprendre les mécanismes fins de résistance ou d''appropriation de ces nouvelles pratiques par les acteurs.

Une conclusion rappellerait que ce débat contemporain illustre bien la nécessité, pour un chercheur en contrôle de gestion, de maîtriser les deux grandes lectures théoriques du champ : ni l''une ni l''autre, prise isolément, n''épuise la compréhension d''un phénomène de gestion aussi central que le pilotage budgétaire des organisations, et un bon positionnement de thèse sait souvent se situer à l''articulation des deux plutôt que dans l''adhésion exclusive à l''une.

## Ce que le jury évaluerait dans cette réponse

Un jury évaluerait, dans l''ordre d''importance, la capacité à relier explicitement le débat contemporain aux courants théoriques fondamentaux (et non à les traiter comme deux sujets séparés), la nuance apportée (éviter de caricaturer un camp comme purement rationnel et l''autre comme purement social), la justification méthodologique concrète et argumentée, et enfin la clarté de l''articulation entre les trois parties de la réponse.

## Exercices pratiques

1. Reformulez, en une phrase, le lien que vous établiriez entre le contrôle budgétaire traditionnel et l''approche cybernétique du contrôle.

2. Identifiez une limite du beyond budgeting qui n''est pas mentionnée dans cette leçon, et expliquez à quel courant théorique elle pourrait, selon vous, se rattacher.

3. Un candidat répond à la question type en se limitant à une description technique des deux systèmes budgétaires, sans les relier aux courants théoriques. Quel serait le principal défaut de cette réponse selon les critères d''évaluation d''un jury ?

4. Proposez une question d''examen de qualification alternative, sur un autre thème du contrôle de gestion, qui obligerait également à mobiliser les deux courants théoriques.

5. En vous appuyant sur le plan de réponse de cette leçon, rédigez l''introduction complète (4 à 6 phrases) que vous donneriez à l''oral si cette question vous était posée.

## Corrigé

1. Le contrôle budgétaire traditionnel applique directement la logique du modèle de planification-contrôle : il suppose qu''un cycle d''objectifs, de mesures et de corrections, correctement conçu, pilote rationnellement l''organisation vers ses finalités stratégiques, dans la continuité de l''approche cybernétique.

2. Une limite possible, non développée dans la leçon, est la difficulté du beyond budgeting à maintenir une cohérence financière globale lorsque les objectifs deviennent relatifs et négociés localement plutôt que fixés centralement : cette limite se rattacherait plutôt au courant cybernétique, qui valorise la cohérence d''ensemble et la comparabilité des performances entre unités, menacée par une décentralisation trop poussée.

3. Le principal défaut serait de traiter la question comme une simple comparaison technique d''outils de gestion, sans démontrer la compréhension du débat théorique sous-jacent que la question appelle explicitement : un jury y verrait un candidat capable de décrire des pratiques mais pas encore capable de les analyser comme chercheur, ce qui est précisément ce que l''examen de qualification doit vérifier.

4. Une question alternative pourrait être : « Dans quelle mesure l''introduction des tableaux de bord de type "balanced scorecard" dans les organisations africaines relève-t-elle d''une logique de pilotage rationnel de la performance, ou d''un phénomène d''imitation institutionnelle sans appropriation réelle par les acteurs de terrain ? » Cette question oblige également à articuler la logique cybernétique (le tableau de bord comme instrument rationnel de pilotage multidimensionnel) et la logique socio-organisationnelle et institutionnelle (la diffusion d''un outil comme phénomène social de légitimation plutôt que comme choix purement technique).

5. Une introduction satisfaisante rappellerait brièvement les deux courants théoriques fondamentaux du contrôle de gestion, annoncerait que le débat budget traditionnel contre beyond budgeting en constitue une reformulation contemporaine, préciserait que la réponse montrera d''abord la filiation du contrôle traditionnel avec le courant cybernétique, puis la proximité du beyond budgeting avec le courant socio-organisationnel, nuancerait en annonçant qu''aucun des deux dispositifs ne sort complètement de la logique de mesure, et annoncerait enfin la proposition méthodologique qui clôturera la démonstration.', 'texte', 45, false, 50
from public.courses c where c.slug = 'doc-cg'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Épreuve type d''examen de qualification : budget traditionnel et beyond budgeting');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : l''approche cybernétique et rationnelle du contrôle de gestion', '## Fiche du cours vidéo

Durée : 1h30. Public : doctorants préparant leur examen de qualification en contrôle de gestion. Objectifs : maîtriser en profondeur l''approche cybernétique et rationnelle du contrôle de gestion, savoir la restituer oralement devant un jury avec precision terminologique, et savoir en discuter les limites de façon critique. Matériel : tableau ou diaporama avec le schéma du modèle de planification-contrôle à trois niveaux, prérequis : avoir lu la leçon 2 de ce cours.

## Déroulé minuté

## 00:00 – 05:00 · Introduction et enjeux de la séance

Bonjour à toutes et à tous. Cette séance vidéo reprend et approfondit l''un des deux grands courants théoriques que vous devez absolument maîtriser pour votre examen de qualification : l''approche cybernétique et rationnelle du contrôle de gestion. Je vous propose de commencer par une question simple, que vous devez être capable de traiter à l''oral sans hésitation : qu''est-ce que le contrôle de gestion, au sens où ce courant le définit ? Prenez trente secondes pour formuler mentalement votre réponse avant que je ne poursuive. Cette discipline de la reformulation rapide est précisément ce qu''un jury testera le jour de votre soutenance : il ne vous laissera jamais le temps de consulter vos notes pour une définition de base.

## 05:00 – 20:00 · Les fondements de la logique cybernétique

Le mot cybernétique vient d''un champ scientifique plus large que le contrôle de gestion : c''est la science du pilotage des systèmes par rétroaction, formulée au milieu du vingtième siècle. L''idée clé, que je veux que vous puissiez expliquer avec vos propres mots, est la boucle de régulation : on fixe un objectif, on agit, on mesure le résultat obtenu, on calcule l''écart entre le résultat et l''objectif, et on utilise cet écart pour corriger l''action future. Cette boucle s''applique à un thermostat qui régule une température, à un système de navigation qui corrige une trajectoire, et, par transposition, à une organisation que l''on souhaite piloter vers ses objectifs stratégiques.

Visuel à montrer : un schéma simple avec quatre cases reliées en boucle (Objectif, Action, Mesure, Écart et correction). Je vous invite à le redessiner vous-même, de mémoire, après cette séance : c''est un excellent test de votre compréhension réelle, au-delà de la récitation.

Appliquée à l''entreprise, cette logique suppose que l''organisation peut être pilotée rationnellement si l''on dispose de bons instruments de mesure et d''une architecture claire de responsabilités. C''est tout l''enjeu du modèle que nous allons détailler maintenant.

## 20:00 – 40:00 · Le modèle de planification-contrôle à trois niveaux

Le modèle fondateur de ce courant distingue trois niveaux de pilotage dans l''organisation, et je veux que vous puissiez les distinguer sans la moindre hésitation à l''oral, car c''est l''une des questions les plus fréquemment posées lors des épreuves de qualification.

Le premier niveau est la planification stratégique : elle définit les finalités de l''organisation, ses grandes orientations, sur un horizon long, dans un contexte d''incertitude généralement élevée. C''est le niveau de la direction générale et, le cas échéant, du conseil d''administration.

Le deuxième niveau est le contrôle de gestion proprement dit, ce que l''on appelle en anglais le management control : il organise la mise en œuvre de la stratégie à moyen terme, typiquement sur un horizon annuel, par des outils comme les budgets, les centres de responsabilité, les tableaux de bord et les prix de cession interne entre unités. Ce niveau engage un dialogue, une négociation, entre la direction générale et les responsables opérationnels : ce n''est pas une simple transmission mécanique d''ordres.

Le troisième niveau est le contrôle d''exécution, ou contrôle opérationnel : il porte sur des tâches très cadrées, répétitives, à très court terme, où la marge d''appréciation du responsable est faible, et où des règles et procédures bien définies suffisent généralement à garantir la bonne exécution.

Visuel à montrer : le schéma pyramidal à trois niveaux, avec, pour chaque niveau, un exemple concret tiré d''une entreprise de distribution de produits alimentaires au Sénégal (stratégie d''expansion géographique du groupe au niveau un, budget annuel négocié avec chaque directeur régional au niveau deux, procédure de contrôle des caisses en magasin au niveau trois).

Question à poser aux apprenants : pourquoi est-il essentiel de distinguer le contrôle de gestion du contrôle d''exécution, et quelles conséquences pratiques cette distinction a-t-elle sur le type d''indicateurs à utiliser à chaque niveau ?

## 40:00 – 45:00 · Pause et quiz interactif

Nous faisons une courte pause. Je vous propose un quiz en quatre questions pour vérifier votre compréhension à ce stade de la séance.

Première question : le contrôle de gestion, dans ce modèle, se situe-t-il à l''horizon court terme, moyen terme ou long terme ? Réponse : moyen terme, typiquement annuel.

Deuxième question : quel est le mot-clé qui distingue le contrôle de gestion du contrôle d''exécution sur le plan de la relation managériale ? Réponse : le dialogue, ou la négociation, qui caractérise le contrôle de gestion, par opposition à l''application de règles qui caractérise le contrôle d''exécution.

Troisième question : d''où vient le terme cybernétique appliqué au contrôle de gestion ? Réponse : de la science du pilotage des systèmes par rétroaction, développée au milieu du vingtième siècle, puis transposée à l''organisation.

Quatrième question : citez un outil typique du niveau du contrôle de gestion. Réponse possible : le budget, le tableau de bord, le centre de responsabilité, le prix de cession interne.

Si vous avez répondu correctement à au moins trois de ces quatre questions, vous maîtrisez les bases de ce courant ; sinon, je vous invite à revoir la séquence précédente avant de poursuivre.

## 45:00 – 60:00 · Les apports complémentaires : théorie de l''agence et calcul des coûts

Au-delà du modèle à trois niveaux, deux familles de travaux viennent enrichir ce courant et vous devez pouvoir les mobiliser à l''oral. La théorie de l''agence, développée en économie des organisations, apporte un fondement microéconomique : lorsque les intérêts d''un dirigeant et d''un actionnaire, ou d''un responsable opérationnel et de la direction générale, peuvent diverger, les dispositifs de contrôle (budgets, indicateurs, systèmes d''incitation) servent à réduire ces divergences et les asymétries d''information entre les parties.

La comptabilité de gestion, de son côté, fournit l''instrumentation technique nécessaire : coûts complets, coûts variables, coûts standards, analyse des écarts. C''est cette instrumentation qui rend concrètement possible la comparaison entre prévision et réalisation, pierre angulaire de la logique cybernétique.

Visuel à montrer : un tableau à deux colonnes opposant, pour chaque outil (budget, tableau de bord, coût standard), sa fonction de pilotage rationnel (colonne de gauche) et la justification qu''en donne la théorie de l''agence en termes de réduction des asymétries d''information (colonne de droite).

## 60:00 – 75:00 · Les limites et critiques du courant

Un bon candidat doit pouvoir exposer spontanément trois limites de ce courant, sans attendre qu''on les lui demande. Première limite : l''hypothèse de rationalité des acteurs est contestée par l''observation empirique de comportements de négociation stratégique des objectifs budgétaires, de constitution de coussins budgétaires, ou de manipulation des indicateurs en fin de période. Deuxième limite : le réductionnisme de la mesure, c''est-à-dire le risque qu''un pilotage centré sur quelques indicateurs financiers détourne l''attention des acteurs vers ce qui est mesuré, au détriment de dimensions importantes mais difficiles à quantifier, comme la qualité de service ou la coopération entre équipes. Troisième limite : la rigidité face à l''incertitude, le cycle budgétaire annuel devenant rapidement obsolète dans des environnements très changeants, ce qui a nourri, plus récemment, le débat sur le beyond budgeting que nous étudierons dans une séance ultérieure.

Je vous invite ici à un exercice de nuance essentiel pour l''oral : ne présentez jamais ces limites comme une invalidation totale du courant, mais comme des angles morts identifiés par la littérature, qui ont nourri le développement de courants complémentaires, notamment le courant socio-organisationnel que nous étudierons dans la prochaine vidéo.

## 75:00 – 85:00 · Mise en situation : simuler une question de jury

Je vais maintenant vous poser, comme le ferait un membre de jury, une question difficile, et vous laisser le temps d''y réfléchir avant de vous proposer une structure de réponse. Question : « Si l''approche cybernétique est si critiquée, pourquoi reste-t-elle, selon vous, la grammaire de base implicite de la plupart des dispositifs de contrôle observés dans les organisations ? »

Une bonne structure de réponse commencerait par reconnaître la prémisse de la question (oui, les critiques sont fondées et largement documentées), puis apporterait trois éléments de réponse : la robustesse opérationnelle du modèle dans des environnements relativement stables, la facilité de diffusion d''un vocabulaire commun (centres de coûts, centres de profit) qui permet la comparaison entre unités et organisations, et le fait que même les courants critiques s''y réfèrent, explicitement ou implicitement, comme point de départ, ce qui en fait un socle conceptuel difficile à remplacer entièrement plutôt qu''à seulement contester.

## 85:00 – 90:00 · Synthèse et évaluation finale

Pour conclure cette séance, rappelons les trois points essentiels : le modèle de planification-contrôle à trois niveaux, les apports complémentaires de la théorie de l''agence et de la comptabilité de gestion, et les trois grandes limites du courant.

Évaluation finale, cinq questions :

Un, quels sont les trois niveaux du modèle de planification-contrôle ? Réponse : planification stratégique, contrôle de gestion, contrôle d''exécution.

Deux, quel horizon temporel caractérise typiquement le niveau du contrôle de gestion ? Réponse : le moyen terme, généralement annuel.

Trois, quelle théorie économique apporte un fondement microéconomique à ce courant ? Réponse : la théorie de l''agence.

Quatre, citez une des trois limites majeures de ce courant discutées dans cette séance. Réponse possible : l''hypothèse de rationalité des acteurs contestée par l''observation empirique, le réductionnisme de la mesure, ou la rigidité face à l''incertitude.

Cinq, pourquoi ce courant reste-t-il, malgré ses critiques, un socle conceptuel difficile à remplacer ? Réponse : parce qu''il reste robuste dans des environnements stables, qu''il fournit un vocabulaire commun de comparaison entre unités, et que même les courants critiques s''y réfèrent comme point de départ.', 'video', 90, false, 60
from public.courses c where c.slug = 'doc-cg'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : l''approche cybernétique et rationnelle du contrôle de gestion');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : les approches socio-organisationnelles du contrôle', '## Fiche du cours vidéo

Durée : 1h30. Public : doctorants préparant leur examen de qualification en contrôle de gestion. Objectifs : maîtriser les approches socio-organisationnelles du contrôle, savoir les opposer et les articuler avec l''approche cybernétique étudiée dans la séance précédente, et savoir illustrer ces concepts par des exemples de terrain. Matériel : tableau ou diaporama, schéma des jeux d''acteurs autour d''un dispositif de contrôle. Prérequis : avoir suivi la vidéo précédente et lu la leçon 3.

## Déroulé minuté

## 00:00 – 05:00 · Introduction : un changement de regard

Dans la séance précédente, nous avons vu le contrôle de gestion comme un dispositif de pilotage rationnel. Aujourd''hui, je vous propose de changer complètement de regard : nous allons voir le contrôle de gestion comme un phénomène social, traversé par des rapports de pouvoir, des interprétations divergentes, et des stratégies d''acteurs. Cette bascule de regard est exactement ce qu''un jury testera lorsqu''il vous demandera de comparer les deux courants : il voudra voir que vous savez changer de lunettes théoriques selon la question posée, et non que vous récitez un seul cadre d''analyse appliqué partout.

## 05:00 – 15:00 · L''idée centrale : le contrôle comme construction sociale

L''idée centrale de ce courant est qu''un dispositif de contrôle (un budget, un indicateur, un tableau de bord) ne produit jamais mécaniquement les effets prévus par ses concepteurs. Entre la conception d''un outil et son usage réel sur le terrain s''interposent des acteurs qui l''interprètent, le négocient, le détournent, ou s''en saisissent pour défendre leur position. Le contrôle de gestion devient alors autant un objet d''analyse sociologique qu''un objet de gestion technique.

Visuel à montrer : un schéma en deux colonnes opposant « ce que prévoit le concepteur du dispositif » et « ce qui se passe réellement sur le terrain », avec des flèches représentant les interprétations, négociations et détournements possibles.

Je vous invite à un exercice simple : pensez à un outil de gestion que vous avez vu fonctionner différemment, dans la réalité, de ce que prévoyait son manuel d''utilisation officiel. Cette expérience, même anecdotique, est exactement le type d''intuition que ce courant théorise.

## 15:00 – 30:00 · Les trois lignées fondatrices

Trois lignées de travaux nourrissent ce courant, et vous devez pouvoir les distinguer clairement à l''oral.

La première est l''analyse stratégique des organisations, issue de la sociologie des organisations : toute organisation est un système d''action concret, structuré par des jeux de pouvoir autour de zones d''incertitude que chaque acteur cherche à contrôler. Appliquée au budget, cette grille montre que les responsables négocient leurs objectifs, retiennent stratégiquement de l''information, et utilisent leur connaissance fine du terrain comme ressource de pouvoir.

La deuxième est la comptabilité critique, qui analyse les dispositifs comptables comme des technologies de pouvoir : ils rendent visibles certains phénomènes et invisibles d''autres, et légitiment certains acteurs (les gestionnaires) au détriment d''autres (les métiers opérationnels).

La troisième est la théorie de l''institutionnalisation, qui montre que les outils de gestion se diffusent parfois davantage parce qu''ils sont devenus des normes socialement attendues, des signes de légitimité et de modernité, que pour leur efficacité intrinsèque démontrée.

Visuel à montrer : un tableau à trois colonnes, une par lignée, avec pour chacune le concept clé, un exemple d''application au contrôle de gestion, et le nom du champ disciplinaire d''origine (sociologie des organisations, comptabilité critique, théorie des organisations).

## 30:00 – 45:00 · La notion de zone d''incertitude et de jeu de pouvoir

Arrêtons-nous en détail sur la notion de zone d''incertitude, car c''est l''une des notions les plus fréquemment demandées à l''oral. Une zone d''incertitude est une portion d''information ou de compétence que seul un acteur maîtrise réellement : par exemple, un chef d''atelier qui connaît seul les capacités réelles de production, au-delà des chiffres officiels. Cette maîtrise lui donne un pouvoir de négociation face aux autres acteurs qui en dépendent, par exemple lors de l''élaboration du budget annuel.

Question à poser aux apprenants : si un responsable opérationnel sait que la direction financière ne peut pas vérifier indépendamment ses déclarations sur ses capacités réelles, quel comportement stratégique pourrait-il adopter lors de la négociation budgétaire, et quel est le risque pour l''organisation dans son ensemble si ce comportement se généralise ?

Cette notion permet de comprendre pourquoi les budgets négociés aboutissent souvent à des objectifs qui ne reflètent pas fidèlement les capacités réelles de l''organisation : ce n''est pas un défaut de conception technique du budget, c''est la conséquence logique des jeux de pouvoir qui l''entourent.

## 45:00 – 50:00 · Pause et quiz interactif

Petite pause avec un quiz en quatre questions. Première question : qu''est-ce qu''une zone d''incertitude ? Réponse : une portion d''information ou de compétence que seul un acteur maîtrise, qui lui donne un pouvoir de négociation. Deuxième question : citez les trois lignées fondatrices de ce courant. Réponse : l''analyse stratégique des organisations, la comptabilité critique, la théorie de l''institutionnalisation. Troisième question : qu''entend-on par « technologie de pouvoir » appliquée à un dispositif comptable ? Réponse : l''idée qu''il rend visibles certaines réalités et invisibles d''autres, et légitime certains acteurs plutôt que d''autres. Quatrième question : pourquoi un outil de gestion peut-il se diffuser sans être le plus efficace techniquement ? Réponse : parce qu''il devient une norme socialement attendue, un signe de légitimité et de modernité organisationnelle.

## 50:00 – 65:00 · Limites du courant et débat avec l''approche cybernétique

Ce courant a lui-même reçu des critiques que vous devez pouvoir exposer avec nuance. Première critique : un déficit d''opérationnalité, le courant offrant parfois peu de prescriptions concrètes aux praticiens qui doivent, malgré tout, concevoir des systèmes de contrôle qui fonctionnent. Deuxième critique : un risque de relativisme excessif, qui ferait perdre de vue que certains outils de mesure sont, de fait, plus pertinents que d''autres pour éclairer une décision économique. Troisième critique, méthodologique : la difficulté à généraliser des études de cas qualitatives riches à un grand nombre d''organisations.

Visuel à montrer : un schéma en double colonne comparant explicitement, point par point, les critiques adressées à l''approche cybernétique (vues dans la séance précédente) et les critiques adressées à l''approche socio-organisationnelle, pour que les apprenants visualisent la symétrie du débat.

Je veux insister ici sur un point de nuance essentiel pour votre oral : les recherches les plus récentes tendent à articuler les deux lectures plutôt qu''à les opposer frontalement. Un contrôleur de gestion qui ignore la dimension sociale produit des outils contournés ; un contrôleur qui ignore la dimension technique perd la capacité de produire une information fiable. Les deux dimensions s''influencent mutuellement dans le temps.

## 65:00 – 80:00 · Mise en situation : analyser un cas fictif

Je vous propose maintenant un cas fictif à analyser avec les outils de cette séance. Une entreprise sénégalaise de distribution impose à ses directeurs régionaux un nouveau tableau de bord mensuel, conçu par le siège, avec quinze indicateurs. Six mois après son déploiement, le siège constate que les directeurs régionaux remplissent bien le tableau de bord, mais que leurs décisions quotidiennes semblent inchangées : le dispositif paraît purement formel.

Avec les concepts de cette séance, comment analyseriez-vous cette situation ? Une bonne analyse mobiliserait la notion de zone d''incertitude (les directeurs régionaux conservent leur connaissance fine du terrain, que le tableau de bord ne capture pas entièrement, et continuent donc à décider sur cette base), la notion de technologie de pouvoir (le tableau de bord légitime le siège comme détenteur de l''information de pilotage, ce qui peut être perçu comme une remise en cause de l''autonomie historique des directeurs régionaux), et la notion d''institutionnalisation (le tableau de bord a peut-être été adopté par le siège davantage comme signe de modernité managériale que pour une utilité opérationnelle clairement établie en amont).

## 80:00 – 90:00 · Synthèse et évaluation finale

Pour conclure, retenez trois points : l''idée que le contrôle de gestion est une construction sociale et non un mécanisme neutre, les trois lignées fondatrices (analyse stratégique des organisations, comptabilité critique, institutionnalisation), et la nécessité d''articuler ce courant avec le courant cybernétique plutôt que de les opposer de façon binaire.

Évaluation finale, cinq questions :

Un, définissez en une phrase l''idée centrale du courant socio-organisationnel. Réponse : un dispositif de contrôle ne produit jamais mécaniquement les effets prévus par ses concepteurs, car les acteurs l''interprètent, le négocient ou le détournent.

Deux, qu''est-ce qu''une zone d''incertitude ? Réponse : une portion d''information ou de compétence que seul un acteur maîtrise réellement, source de pouvoir de négociation.

Trois, citez une critique adressée à ce courant. Réponse possible : déficit d''opérationnalité, risque de relativisme excessif, ou difficulté de généralisation des études de cas.

Quatre, pourquoi un dispositif de contrôle peut-il être qualifié de technologie de pouvoir ? Réponse : parce qu''il rend visibles certaines réalités et invisibles d''autres, et légitime certains acteurs au détriment d''autres.

Cinq, comment les recherches récentes tendent-elles à articuler ce courant avec le courant cybernétique ? Réponse : en étudiant comment la dimension technique et la dimension sociale des dispositifs de contrôle s''influencent mutuellement dans le temps, plutôt qu''en choisissant exclusivement l''une ou l''autre lecture.', 'video', 90, false, 70
from public.courses c where c.slug = 'doc-cg'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : les approches socio-organisationnelles du contrôle');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : les méthodes de recherche en contrôle de gestion', '## Fiche du cours vidéo

Durée : 1h30. Public : doctorants préparant leur examen de qualification en contrôle de gestion. Objectifs : maîtriser les trois grandes méthodes de recherche du champ (étude de cas clinique, recherche-intervention, enquête quantitative), savoir justifier le choix d''une méthode selon une question de recherche, et savoir présenter et vérifier un calcul d''écart budgétaire. Matériel : tableau ou diaporama, calculatrice ou tableur pour la démonstration chiffrée. Prérequis : avoir lu la leçon 4 de ce cours.

## Déroulé minuté

## 00:00 – 05:00 · Introduction : pourquoi les méthodes comptent autant que les théories

Un jury de qualification ne vous demandera pas seulement ce que vous savez sur le contrôle de gestion, mais comment vous comptez produire de la connaissance nouvelle sur votre sujet de thèse. Cette séance vous donne les trois grandes familles de méthodes du champ, avec leurs forces et leurs limites, pour que vous puissiez défendre un choix méthodologique de façon argumentée.

## 05:00 – 20:00 · L''étude de cas clinique

L''étude de cas clinique consiste à observer en profondeur, sur une durée longue, le fonctionnement réel des dispositifs de contrôle dans une ou plusieurs organisations, en combinant entretiens, observation directe et analyse de documents internes. Le terme « clinique » souligne une posture proche de celle d''un clinicien : s''intéresser au fonctionnement singulier d''un cas dans toute sa complexité, plutôt qu''à la vérification d''une loi générale sur un grand échantillon.

Visuel à montrer : un schéma représentant les trois sources de données typiques d''une étude de cas (entretiens, observation, documents) convergeant vers une interprétation triangulée.

Cette méthode est particulièrement adaptée pour documenter les phénomènes du courant socio-organisationnel : interprétation, négociation, détournement d''un outil de contrôle par les acteurs. Ses limites : la difficulté de généraliser les résultats, le risque de biais d''interprétation du chercheur impliqué longuement sur le terrain, et l''exigence d''un protocole rigoureux (triangulation des sources, transparence sur le choix des cas).

## 20:00 – 35:00 · La recherche-intervention

La recherche-intervention va plus loin : le chercheur n''observe pas seulement, il intervient activement dans l''organisation, généralement en accompagnant un changement (par exemple la refonte d''un système de contrôle), tout en produisant une connaissance scientifique sur ce processus. Le chercheur occupe une double posture, acteur et observateur, ce qui exige une vigilance méthodologique particulière.

Question à poser aux apprenants : si vous étiez rémunéré comme consultant par l''entreprise que vous étudiez en recherche-intervention, quel risque cela crée-t-il pour la validité scientifique de vos conclusions, et comment pourriez-vous y répondre méthodologiquement ?

Réponse attendue : le risque est que vos conclusions reflètent vos propres intérêts (montrer que votre intervention a réussi) plutôt que la réalité observée ; on y répond par l''explicitation systématique de sa posture, la validation croisée avec d''autres acteurs de l''organisation non impliqués dans la rémunération, et la publication d''un protocole de recherche détaillé et vérifiable.

Visuel à montrer : un schéma en double cercle représentant le chercheur à l''intersection du rôle d''acteur du changement et du rôle d''observateur scientifique.

## 35:00 – 45:00 · Les enquêtes quantitatives sur les pratiques de contrôle

À l''inverse des deux méthodes précédentes, les enquêtes quantitatives administrent des questionnaires structurés à un grand nombre d''organisations, pour mesurer statistiquement des relations entre variables : par exemple la relation entre la turbulence de l''environnement d''une entreprise et la flexibilité de son système budgétaire, ou entre la taille d''une organisation et la sophistication de ses outils de pilotage. Cette méthode permet des résultats généralisables, avec des tests statistiques explicites de la robustesse des relations observées, ce qui répond directement à la principale limite des deux méthodes qualitatives présentées précédemment.

Elle s''inscrit naturellement dans la continuité du courant cybernétique, qui postule des relations relativement stables et mesurables entre caractéristiques organisationnelles et pratiques de contrôle. Mais elle perd en profondeur et en contexte : un questionnaire standardisé capture mal la complexité des jeux d''acteurs autour d''un dispositif, et elle dépend de la sincérité déclarative des répondants, qui peuvent décrire des pratiques officielles plutôt que des usages réels du terrain.

Visuel à montrer : un tableau récapitulatif à trois colonnes (étude de cas clinique, recherche-intervention, enquête quantitative) avec, pour chacune, le type de question de recherche à laquelle elle répond le mieux, sa principale force, et sa principale limite.

## 45:00 – 50:00 · Pause et quiz interactif

Quiz en quatre questions. Un, quelle méthode privilégier pour comprendre un mécanisme social fin de détournement d''un outil de gestion ? Réponse : l''étude de cas clinique. Deux, quelle méthode implique une double posture d''acteur et d''observateur ? Réponse : la recherche-intervention. Trois, quelle méthode permet la généralisation statistique à une population d''organisations ? Réponse : l''enquête quantitative. Quatre, quelle est la limite commune aux deux méthodes qualitatives face à l''enquête quantitative ? Réponse : la difficulté à généraliser les résultats obtenus sur un nombre restreint de cas.

## 50:00 – 70:00 · Démonstration chiffrée : l''analyse des écarts budgétaires

Je vous propose maintenant une démonstration chiffrée, vérifiée informatiquement, qui illustre comment un calcul technique peut nourrir une question de recherche. Prenons une unité de transformation agro-alimentaire fictive. Le budget initial prévoyait 10 000 unités vendues à un prix unitaire de 2 500 francs CFA, valeur fictive pour l''exemple, avec un coût variable unitaire budgété de 1 500 francs CFA et des charges fixes budgétées de 8 000 000 francs CFA.

Visuel à montrer : un tableau à deux colonnes, budget initial et réalisé, avec les quatre lignes volume, prix unitaire, coût variable unitaire, charges fixes.

Calculons le résultat budgété : la marge sur coût variable est de 2 500 moins 1 500, soit 1 000 francs CFA par unité, multipliée par 10 000 unités, soit 10 000 000 francs CFA ; moins 8 000 000 de charges fixes, le résultat budgété est de 2 000 000 francs CFA.

En réalité, l''entreprise a vendu 11 200 unités, à un prix unitaire moyen de 2 400 francs CFA, avec un coût variable unitaire réel de 1 600 francs CFA et des charges fixes réelles de 8 300 000 francs CFA. Le résultat réel est de (2 400 moins 1 600) multiplié par 11 200, soit 8 960 000 francs CFA de marge, moins 8 300 000 de charges fixes, soit un résultat réel de 660 000 francs CFA.

L''écart total est de 660 000 moins 2 000 000, soit moins 1 340 000 francs CFA. Décomposons-le en quatre effets, vérifiés par calcul : un effet volume favorable de 1 200 000 francs CFA (plus d''unités vendues que prévu), un effet prix défavorable de 1 120 000 francs CFA (prix réel inférieur au prix budgété, sur le volume réel), un effet coût variable défavorable de 1 120 000 francs CFA (coût réel supérieur au coût budgété, sur le volume réel), et un effet charges fixes défavorable de 300 000 francs CFA. La somme de ces quatre effets redonne exactement moins 1 340 000 francs CFA, ce qui confirme la cohérence de la décomposition.

Question à poser aux apprenants : si cette entreprise avait vendu seulement 9 000 unités au lieu de 11 200, toutes choses égales par ailleurs sur le prix et le coût unitaire, l''effet volume aurait-il été favorable ou défavorable, et pourquoi ?

## 70:00 – 85:00 · Articuler calcul technique et question de recherche

Ce calcul, purement technique en apparence, est un excellent point d''appui pour illustrer le débat entre les deux courants théoriques. Le courant cybernétique y voit un diagnostic rationnel et objectif des causes de la sous-performance. Le courant socio-organisationnel invite à se demander comment les acteurs de l''entreprise interprètent ou contestent cette décomposition : le responsable commercial pourrait contester que l''effet prix lui soit attribué, si la baisse de prix résultait d''une décision collective de la direction face à la concurrence, et non d''une défaillance de sa propre action commerciale.

C''est exactement ce type d''articulation entre rigueur technique et analyse critique que vous devez montrer à l''oral : ne jamais présenter un calcul comme neutre sans interroger la façon dont les acteurs se l''approprient ou le contestent dans l''organisation réelle.

## 85:00 – 90:00 · Synthèse et évaluation finale

Pour conclure, retenez les trois méthodes et leur domaine de pertinence respectif, ainsi que la démarche de vérification systématique d''un calcul d''écart budgétaire par décomposition en effets qui doivent se recomposer exactement.

Évaluation finale, cinq questions :

Un, quelle méthode choisiriez-vous pour mesurer l''ampleur de la diffusion d''une pratique de gestion dans une population d''entreprises ? Réponse : l''enquête quantitative.

Deux, quelle est la principale limite méthodologique de la recherche-intervention ? Réponse : le risque de biais lié à l''intérêt du chercheur-intervenant à voir son intervention perçue comme réussie.

Trois, dans l''exemple chiffré, quel est le montant de l''effet volume ? Réponse : 1 200 000 francs CFA, favorable.

Quatre, pourquoi la somme des quatre effets doit-elle être strictement égale à l''écart total ? Réponse : parce que la décomposition en effets est une recomposition exacte et non une approximation de l''écart global entre résultat réel et résultat budgété.

Cinq, comment le courant socio-organisationnel enrichit-il la lecture d''un calcul d''écart budgétaire a priori purement technique ? Réponse : en interrogeant la façon dont les acteurs interprètent, négocient ou contestent l''attribution de chaque effet, au-delà de sa validité arithmétique.', 'video', 90, false, 80
from public.courses c where c.slug = 'doc-cg'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : les méthodes de recherche en contrôle de gestion');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : budget traditionnel et beyond budgeting, un débat théorique renouvelé', '## Fiche du cours vidéo

Durée : 1h30. Public : doctorants préparant leur examen de qualification en contrôle de gestion. Objectifs : maîtriser le débat entre contrôle budgétaire traditionnel et beyond budgeting, savoir le relier aux deux courants théoriques fondamentaux du champ, et savoir construire à l''oral un plan de réponse structuré à une question de synthèse. Matériel : tableau ou diaporama. Prérequis : avoir suivi les deux vidéos précédentes et lu la leçon 5.

## Déroulé minuté

## 00:00 – 05:00 · Introduction : un débat contemporain, un débat ancien

Cette séance traite d''un débat très actuel en contrôle de gestion, celui du contrôle budgétaire traditionnel face aux démarches de beyond budgeting. Mon objectif est de vous montrer que ce débat contemporain, loin d''être un sujet isolé, est la reformulation actuelle de l''opposition théorique fondamentale que vous avez étudiée dans les deux séances précédentes : l''approche cybernétique contre l''approche socio-organisationnelle. Savoir faire ce lien est précisément ce qui distingue, à l''oral, un candidat qui connaît sa discipline en profondeur d''un candidat qui empile des connaissances sans les articuler.

## 05:00 – 20:00 · Le contrôle budgétaire traditionnel et ses justifications

Le contrôle budgétaire traditionnel repose sur un cycle annuel : négociation des objectifs, allocation de ressources, suivi mensuel des écarts, actions correctives. C''est l''héritier direct du modèle de planification-contrôle étudié dans notre première vidéo. Ses défenseurs soulignent qu''il reste un outil puissant de coordination entre unités, de responsabilisation des managers, et de discipline financière, en particulier dans les grandes organisations où il faut synchroniser des centaines de décisions décentralisées.

Visuel à montrer : le schéma du cycle budgétaire annuel (fixation des objectifs, mise en œuvre, suivi des écarts, actions correctives), avec, en regard, un rappel du schéma de la boucle cybernétique vu en première vidéo, pour souligner visuellement la filiation directe entre les deux.

## 20:00 – 35:00 · Les critiques du beyond budgeting

Le mouvement du beyond budgeting, apparu à la fin des années 1990, critique le cycle budgétaire annuel pour trois raisons principales. D''abord, son incapacité à s''adapter à des environnements changeant plus vite qu''un an. Ensuite, le temps et les ressources considérables qu''il consomme, la préparation budgétaire mobilisant souvent plusieurs mois dans les grandes organisations. Enfin, les comportements pervers qu''il engendre : négociation stratégique des objectifs à la baisse, dépenses de fin d''année pour consommer une enveloppe avant qu''elle ne soit perdue, ou focalisation sur l''atteinte d''un chiffre au détriment de la création de valeur réelle.

Les démarches alternatives remplacent le budget annuel fixe par des prévisions glissantes révisées plus fréquemment, des objectifs relatifs plutôt qu''absolus, et une décentralisation plus large des décisions vers les équipes opérationnelles.

Question à poser aux apprenants : en quoi la critique du beyond budgeting sur les comportements pervers du budget rejoint-elle les intuitions du courant socio-organisationnel étudiées dans notre deuxième vidéo ?

## 35:00 – 40:00 · Pause et quiz interactif

Quatre questions. Un, sur quel cycle repose le contrôle budgétaire traditionnel ? Réponse : un cycle annuel de fixation d''objectifs, allocation, suivi des écarts, actions correctives. Deux, citez une critique du beyond budgeting envers le budget traditionnel. Réponse possible : rigidité face à l''incertitude, coût élevé en temps et ressources, ou comportements pervers. Trois, par quoi le beyond budgeting remplace-t-il le budget annuel fixe ? Réponse : des prévisions glissantes et des objectifs relatifs. Quatre, le beyond budgeting élimine-t-il toute forme de mesure de la performance ? Réponse : non, il la déplace vers des indicateurs relatifs et une décentralisation plus large, mais ne sort pas de la logique de mesure.

## 40:00 – 60:00 · L''articulation avec les deux courants théoriques

Voici le cœur de cette séance, le point que vous devez absolument savoir exposer à l''oral. Le camp qui défend le contrôle budgétaire traditionnel reste largement dans une logique cybernétique : on peut améliorer le dispositif, le rendre plus flexible, sans remettre en cause l''idée qu''un bon système d''objectifs et de mesures pilote rationnellement l''organisation. Le camp qui défend le beyond budgeting mobilise, souvent implicitement, des arguments proches du courant socio-organisationnel : les effets pervers du budget sur les comportements des acteurs, la nécessité de faire confiance aux équipes plutôt que de les contraindre par des chiffres négociés sous contrainte hiérarchique.

Mais attention à la nuance essentielle que j''attends de vous à l''oral : le beyond budgeting reste, lui aussi, un dispositif de pilotage par indicateurs, relatifs plutôt qu''absolus. Aucun des deux camps ne sort complètement de la logique de mesure. L''opposition entre les deux courants théoriques est donc une opposition de degré et d''accent, plus qu''une rupture totale entre un monde purement rationnel et un monde purement social.

Visuel à montrer : un schéma à double flèche, avec à une extrémité « logique cybernétique pure » et à l''autre « logique socio-organisationnelle pure », sur lequel on positionne le budget traditionnel plutôt vers la première extrémité et le beyond budgeting plutôt vers la seconde, sans jamais les placer aux extrêmes absolus.

## 60:00 – 75:00 · Construire un plan de réponse à l''oral

Reprenons maintenant la question type : « Dans quelle mesure le débat entre le contrôle budgétaire traditionnel et les démarches de beyond budgeting renouvelle-t-il, ou prolonge-t-il, l''opposition entre une conception cybernétique et une conception socio-organisationnelle du contrôle de gestion ? » Un bon plan comporterait une introduction qui rappelle brièvement les deux courants et annonce le fil directeur, une première partie sur la filiation du budget traditionnel avec la logique cybernétique, une deuxième partie sur la proximité du beyond budgeting avec la logique socio-organisationnelle (nuancée par le fait qu''aucun des deux camps ne sort de la logique de mesure), une troisième partie proposant une mise en œuvre méthodologique concrète (par exemple une recherche-intervention combinée à une enquête quantitative dans un contexte d''entreprises ouest-africaines), et une conclusion qui rappelle la nécessité d''articuler les deux lectures théoriques plutôt que d''en choisir une exclusivement.

Je vous invite à vous entraîner maintenant : prenez deux minutes pour formuler oralement, à voix haute si possible, l''introduction de cette réponse, avant que je ne vous propose une version possible dans la synthèse finale.

## 75:00 – 85:00 · Ce qu''un jury évalue dans ce type de réponse

Un jury évalue, dans l''ordre d''importance, la capacité à relier explicitement le débat contemporain aux courants théoriques fondamentaux, la nuance apportée (éviter de caricaturer un camp comme purement rationnel et l''autre comme purement social), la justification méthodologique concrète, et la clarté de l''articulation entre les parties de la réponse. Un candidat qui se limite à une description technique des deux systèmes budgétaires, sans les relier à la théorie, montrera qu''il connaît la pratique mais pas encore qu''il sait l''analyser comme chercheur, ce qui est précisément ce que l''examen de qualification doit vérifier.

Un autre piège fréquent, que j''ai vu commettre par des candidats par ailleurs bien préparés, est de présenter le beyond budgeting comme une solution définitive qui aurait remplacé le budget traditionnel dans la pratique des organisations. Ce n''est factuellement pas le cas : la grande majorité des organisations, y compris de grande taille, continuent d''utiliser un cycle budgétaire annuel, parfois assoupli par des éléments empruntés au beyond budgeting (prévisions glissantes partielles, objectifs relatifs sur certains indicateurs) sans abandonner totalement la logique budgétaire classique. Un bon candidat signale cette coexistence plutôt que de présenter une rupture totale et généralisée qui ne correspond pas à la réalité observée du terrain.

## 85:00 – 90:00 · Synthèse et évaluation finale

Pour conclure, une introduction possible à la question type serait la suivante : le contrôle de gestion s''est historiquement construit autour de deux grandes lectures, cybernétique et socio-organisationnelle ; le débat entre budget traditionnel et beyond budgeting en constitue une reformulation contemporaine, le premier restant fidèle à la logique de pilotage rationnel, le second reprenant des intuitions proches du courant socio-organisationnel sans pour autant sortir entièrement de la logique de mesure ; nous montrerons cette filiation avant de proposer une mise en œuvre méthodologique adaptée à un contexte d''entreprises africaines.

Évaluation finale, cinq questions :

Un, à quelle logique théorique le contrôle budgétaire traditionnel reste-t-il fidèle ? Réponse : la logique cybernétique et rationnelle.

Deux, quelles intuitions du courant socio-organisationnel le beyond budgeting reprend-il ? Réponse : la défiance envers un pilotage centralisé et chiffré ignorant les jeux d''acteurs, et l''attention aux effets pervers des dispositifs de mesure sur les comportements.

Trois, pourquoi faut-il nuancer une opposition trop binaire entre les deux dispositifs ? Réponse : parce que le beyond budgeting reste lui-même un dispositif de pilotage par indicateurs, relatifs plutôt qu''absolus, et ne sort donc pas complètement de la logique de mesure.

Quatre, quelles méthodes de recherche combineriez-vous pour étudier ce débat empiriquement dans un contexte africain ? Réponse possible : une recherche-intervention auprès de quelques entreprises en transition, complétée par une enquête quantitative pour mesurer l''ampleur de la diffusion de ces pratiques.

Cinq, que doit viser en priorité l''introduction d''une réponse à ce type de question de synthèse ? Réponse : annoncer explicitement le lien entre le débat contemporain et les courants théoriques fondamentaux du champ, pour montrer d''emblée au jury la structure argumentative de la réponse.', 'video', 90, false, 90
from public.courses c where c.slug = 'doc-cg'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : budget traditionnel et beyond budgeting, un débat théorique renouvelé');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : simulation complète d''une soutenance de qualification doctorale', '## Fiche du cours vidéo

Durée : 1h30. Public : doctorants préparant leur examen de qualification en contrôle de gestion, en fin de préparation. Objectifs : vivre une simulation complète de soutenance de qualification doctorale, de la présentation initiale aux questions de jury, et savoir s''auto-évaluer avec une grille structurée. Matériel : tableau ou diaporama, chronomètre. Prérequis : avoir suivi l''ensemble des leçons et vidéos précédentes de ce cours.

## Déroulé minuté

## 00:00 – 05:00 · Introduction : le format de la soutenance simulée

Cette dernière séance simule intégralement une soutenance de qualification doctorale en contrôle de gestion. Je vais jouer, tour à tour, le rôle du candidat qui présente son champ et son projet de thèse fictif, puis le rôle du jury qui pose des questions. Je vous invite à vous mettre réellement à la place du candidat : notez vos propres réponses aux questions du jury avant d''écouter la réponse modèle que je proposerai, car c''est cet entraînement actif, et non l''écoute passive, qui vous préparera efficacement.

## 05:00 – 20:00 · Présentation du champ et du projet de thèse fictif (15 minutes)

Voici la présentation introductive que ferait un candidat type, d''une durée de quinze minutes, que nous allons dérouler intégralement.

« Mesdames et messieurs les membres du jury, le contrôle de gestion, en tant que champ de recherche, s''est structuré historiquement autour d''une approche cybernétique et rationnelle, héritée du modèle de la planification-contrôle, qui pense le pilotage de l''organisation comme une boucle de régulation par objectifs, mesures et corrections. Cette approche a été enrichie, puis fortement questionnée, par des travaux qui montrent que le contrôle de gestion est aussi, et peut-être avant tout, une construction sociale, traversée par des jeux de pouvoir entre acteurs, où les dispositifs de mesure ne produisent jamais mécaniquement les effets prévus par leurs concepteurs.

Mon projet de thèse, encore à l''état de proposition, s''inscrit précisément à l''articulation de ces deux lectures. Il porte sur l''introduction de démarches de pilotage inspirées du beyond budgeting dans des petites et moyennes entreprises agro-industrielles de la région de Thiès, au Sénégal. Ma question de recherche est la suivante : comment des PME familiales, habituées à un pilotage budgétaire informel ou récemment formalisé, s''approprient-elles, négocient-elles, ou résistent-elles à l''introduction d''outils de pilotage par indicateurs relatifs et par prévisions glissantes, portés par des organismes d''accompagnement ou des investisseurs extérieurs ?

Sur le plan théorique, je mobiliserai le cadre de l''analyse stratégique des organisations pour comprendre les jeux de pouvoir entre le dirigeant propriétaire, souvent détenteur de zones d''incertitude considérables sur le fonctionnement réel de son entreprise, et les acteurs extérieurs qui portent ces nouveaux outils. Sur le plan méthodologique, je propose un protocole en trois phases : une enquête quantitative exploratoire pour mesurer la diffusion actuelle des pratiques budgétaires dans un échantillon de PME agro-industrielles de la région, une recherche-intervention auprès de deux ou trois PME volontaires pour accompagner et documenter finement un processus de changement, et un retour d''étude de cas clinique un an après l''intervention pour observer les usages réels, au-delà du fonctionnement officiel du dispositif au moment de sa conception.

Ma contribution attendue est double : sur le plan théorique, mieux comprendre comment les outils de pilotage de la performance globale, conçus initialement dans de grandes entreprises occidentales, sont réappropriés dans un contexte de PME familiales africaines, où les zones d''incertitude et les rapports de pouvoir prennent des formes spécifiques liées à la structure de propriété et de gouvernance de ces entreprises ; sur le plan pratique, produire des recommandations pour les organismes d''accompagnement qui promeuvent ces outils, afin qu''ils tiennent mieux compte des jeux d''acteurs réels plutôt que de supposer une adoption purement technique et rationnelle. »

Visuel à montrer : le plan de la présentation affiché à l''écran (champ théorique, question de recherche, cadre théorique mobilisé, protocole méthodologique en trois phases, contribution attendue), pour que les apprenants voient la structure même pendant qu''ils l''écoutent.

## 20:00 – 25:00 · Pause et quiz interactif

Avant de passer aux questions du jury, un quiz rapide en quatre questions sur la présentation que vous venez d''entendre. Un, à quels deux courants théoriques le projet de thèse présenté se réfère-t-il explicitement ? Réponse : l''approche cybernétique et rationnelle, et l''approche socio-organisationnelle (via l''analyse stratégique des organisations). Deux, combien de phases comporte le protocole méthodologique proposé, et lesquelles ? Réponse : trois phases, une enquête quantitative exploratoire, une recherche-intervention, et un retour d''étude de cas clinique. Trois, quelle notion du courant socio-organisationnel est mobilisée pour analyser le dirigeant propriétaire de PME ? Réponse : la zone d''incertitude. Quatre, quelle est la double nature de la contribution attendue annoncée par le candidat ? Réponse : une contribution théorique et une contribution pratique.

## 25:00 – 70:00 · Les questions de jury type (8 à 10 questions) et la structure d''une bonne réponse

Question 1 du jury : « Vous présentez votre projet comme se situant à l''articulation des deux courants théoriques. N''est-ce pas une façon de refuser de trancher, plutôt qu''un véritable positionnement ? » Structure d''une bonne réponse : reconnaître la légitimité de la question, puis expliquer que l''articulation n''est pas une absence de choix mais un choix argumenté, cohérent avec l''état actuel du débat académique où les recherches les plus récentes articulent justement les deux lectures plutôt que de les opposer, et préciser à quel endroit précis de l''analyse chaque cadre théorique sera mobilisé.

Question 2 : « Comment allez-vous gérer, sur le plan méthodologique, le fait d''être à la fois chercheur et possible intervenant rémunéré dans les PME de votre recherche-intervention ? » Réponse attendue : expliciter systématiquement sa posture dans les publications, prévoir une validation croisée des observations avec des acteurs non directement impliqués dans la relation contractuelle, et documenter un protocole détaillé permettant d''évaluer la rigueur de la démarche.

Question 3 : « Pourquoi ne pas vous contenter d''une enquête quantitative à grande échelle, qui serait plus rapide et plus généralisable ? » Réponse attendue : une enquête quantitative seule ne permettrait pas de comprendre les mécanismes fins d''appropriation ou de résistance aux outils de pilotage, qui sont précisément l''objet central de la question de recherche ; elle est donc complémentaire, non substituable, aux deux autres méthodes.

Question 4 : « En quoi votre terrain sénégalais apporte-t-il une contribution originale par rapport à la littérature existante, majoritairement produite sur des contextes occidentaux ? » Réponse attendue : souligner que les structures de propriété et de gouvernance des PME familiales étudiées diffèrent souvent significativement des grandes entreprises occidentales sur lesquelles le beyond budgeting a été initialement théorisé, ce qui permet de tester la portée et les limites de ce cadre théorique dans un contexte différent, sans prétendre que « le contexte africain » serait homogène ou uniformément différent.

Question 5 : « Quelle est la principale limite de votre protocole méthodologique en trois phases ? » Réponse attendue : reconnaître une limite réelle, par exemple la difficulté de recruter des PME volontaires pour la phase de recherche-intervention, ou le risque que les deux ou trois PME étudiées en profondeur ne soient pas représentatives de l''échantillon plus large mesuré par l''enquête quantitative, et indiquer comment cette limite sera explicitement discutée dans la thèse plutôt que dissimulée.

Question 6 : « Si vos résultats montraient que les PME étudiées résistent massivement à ces nouveaux outils sans jamais les adopter réellement, cela invaliderait-il votre projet de thèse ? » Réponse attendue : non, un résultat de résistance massive serait en soi un résultat de recherche intéressant et interprétable à la lumière du cadre théorique mobilisé (il confirmerait, par exemple, l''importance des zones d''incertitude et des jeux de pouvoir), ce qui montre la nécessité de ne jamais présupposer, avant l''enquête, le résultat que l''on souhaiterait obtenir.

Question 7 : « Comment définiriez-vous, en une phrase, la différence entre le contrôle de gestion et le pilotage de la performance globale que vous évoquez ? » Réponse attendue : le contrôle de gestion, dans son acception la plus classique, se concentre sur le pilotage des ressources financières et opérationnelles au regard d''objectifs budgétaires, tandis que le pilotage de la performance globale élargit cette logique à des dimensions non strictement financières (sociale, environnementale, relationnelle) et à des indicateurs relatifs plutôt qu''absolus.

Question 8 : « Votre projet mobilise-t-il des auteurs ou des travaux issus du continent africain sur le contrôle de gestion ? » Réponse attendue : un candidat honnête reconnaît l''état réel de ses lectures sur ce point précis plutôt que de citer des noms par complaisance ; si la littérature spécifiquement africaine sur le contrôle de gestion en PME reste encore peu développée par rapport à d''autres champs des sciences sociales, le candidat peut légitimement annoncer que sa thèse contribuera à combler, même modestement, ce manque, sans jamais inventer une filiation académique qu''il ne maîtrise pas réellement.

## 70:00 – 85:00 · Débriefing de la simulation

Reprenons maintenant, à froid, les points clés de cette simulation. Le candidat a montré une capacité constante à relier chaque réponse aux deux courants théoriques fondamentaux du champ, sans jamais s''en écarter durablement. Il a su reconnaître les limites réelles de son protocole plutôt que de les nier, ce qui renforce sa crédibilité plutôt que de l''affaiblir. Il a su rester prudent sur les points où ses connaissances étaient incertaines, notamment sur la littérature africaine spécifique du champ, plutôt que de prendre le risque d''une affirmation non vérifiée devant un jury qui pourrait la contester immédiatement.

Visuel à montrer : la liste des huit questions de jury posées pendant la séquence précédente, pour que les apprenants puissent les reprendre et s''exercer eux-mêmes à y répondre après la séance, avec leur propre projet de thèse.

## 85:00 – 90:00 · Grille d''auto-évaluation de la soutenance simulée

Cette dernière vidéo ne se conclut pas par une évaluation à cinq questions avec réponses, mais par une grille d''auto-évaluation que vous utiliserez pour préparer votre propre soutenance. Notez-vous, sur une échelle de un à quatre, pour chacun des six critères suivants, en étant honnête plutôt que complaisant avec vous-même.

Premier critère : la présentation initiale relie-t-elle explicitement le champ théorique, la question de recherche, le cadre mobilisé et la méthodologie, sans rupture logique entre ces éléments ?

Deuxième critère : chaque réponse à une question de jury commence-t-elle par reconnaître explicitement la légitimité ou la difficulté de la question posée, plutôt que de l''éluder ?

Troisième critère : les limites du projet sont-elles reconnues spontanément, sans attendre d''y être acculé par le jury ?

Quatrième critère : le candidat évite-t-il toute affirmation non vérifiable, notamment sur des auteurs, des chiffres ou des filiations académiques qu''il ne maîtrise pas réellement ?

Cinquième critère : le candidat sait-il articuler les deux grands courants théoriques du champ plutôt que de n''en mobiliser qu''un seul de façon rigide ?

Sixième critère : la justification méthodologique est-elle argumentée en fonction de la question de recherche, et non présentée comme un choix arbitraire ou de pure convenance ?

Un score global de dix-huit sur vingt-quatre ou plus indique une préparation solide ; un score inférieur signale les critères sur lesquels concentrer vos dernières semaines de préparation avant l''épreuve réelle. Je vous souhaite une excellente soutenance.', 'video', 90, false, 100
from public.courses c where c.slug = 'doc-cg'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : simulation complète d''une soutenance de qualification doctorale');

-- Cours : Doctorat Comptabilité : réussir l'examen de qualification doctorale
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'doc-compta', (select id from public.levels where name = 'Doctorat'), null, 'Comptabilité', 'Doctorat Comptabilité : réussir l''examen de qualification doctorale', 'Cours de préparation à l''examen de qualification doctorale en Comptabilité : maîtrise de la théorie positive de la comptabilité et des approches critiques et sociales, du débat entre harmonisation IFRS et référentiels régionaux OHADA/SYSCOHADA, et des méthodes de recherche du champ (études d''événements, recherche qualitative et institutionnelle, études de cas). Public : doctorants en comptabilité préparant leur soutenance de qualification. Prérequis : Master en comptabilité ou discipline proche, projet de thèse en cours de construction.', true, 805
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir son examen de qualification doctorale en Comptabilité', 'Objectifs de la leçon

Cette première leçon pose le cadre de l''examen de qualification doctorale en Comptabilité : à quoi il sert, comment un jury doctoral l''évalue, et comment organiser un travail de préparation efficace sur huit semaines. Elle s''adresse au doctorant qui a validé son inscription en thèse et doit, avant de s''y consacrer pleinement, démontrer qu''il maîtrise l''état de l''art de son champ disciplinaire.

Nature de l''épreuve

L''examen de qualification doctorale (souvent appelé examen comprehensive dans les systèmes anglo-saxons, ou soutenance de projet de thèse dans les systèmes francophones) n''est pas un contrôle de connaissances au sens d''un examen de Master. Il vérifie trois choses distinctes.

- La maîtrise de la littérature du champ : le doctorant doit savoir restituer les grands courants théoriques de la recherche comptable, leurs auteurs représentatifs (identifiés par leur apport, pas par citation exacte mémorisée), leurs débats et leurs limites.
- La capacité de synthèse critique : il ne s''agit pas de réciter des théories côte à côte, mais de les mettre en tension, de montrer leurs présupposés respectifs et d''expliquer pourquoi des chercheurs les opposent ou les articulent.
- La solidité du projet de thèse : le candidat doit situer sa propre problématique dans cette littérature, justifier le choix d''un cadre théorique et d''une méthode de recherche, et anticiper les critiques qu''un jury pourrait formuler.

Concrètement, l''épreuve combine le plus souvent un document écrit (note de synthèse de la littérature et/ou projet de thèse détaillé) et une soutenance orale devant un jury de trois à cinq enseignants-chercheurs, dont le directeur de thèse n''est pas toujours partie prenante au vote. La durée de la soutenance varie selon les établissements, mais elle suit presque toujours la même logique : un exposé initial du candidat (15 à 30 minutes), puis une série de questions du jury portant sur la littérature, la méthode et la faisabilité du projet.

Ce que le jury doctoral attend réellement

Un jury de qualification ne cherche pas l''exhaustivité encyclopédique. Il évalue surtout la posture de chercheur du candidat, à travers quatre attentes récurrentes.

- La clarté du positionnement théorique : le candidat sait dire explicitement dans quel courant il s''inscrit (ou comment il articule plusieurs courants) et pourquoi ce choix est cohérent avec sa question de recherche.
- L''honnêteté intellectuelle face aux limites : un bon candidat reconnaît les faiblesses de son cadre théorique et de sa méthode plutôt que de les occulter. C''est souvent ce critère qui distingue un candidat qui maîtrise son sujet d''un candidat qui le récite.
- La cohérence méthodologique : la méthode de recherche annoncée doit être adaptée à la question posée ; un jury sanctionne sévèrement une méthode choisie par habitude plutôt que par pertinence.
- La capacité à dialoguer : contrairement à un examen écrit, la soutenance est un échange. Le jury observe comment le candidat réagit à une objection, s''il sait nuancer sans se contredire, et s''il distingue ce qu''il sait de ce qu''il ignore encore.

En comptabilité, ces attentes prennent une coloration particulière : le champ est traversé par une tension ancienne entre une tradition de recherche proche des sciences de gestion quantitatives et des marchés financiers, et une tradition plus proche des sciences sociales, qui interroge la comptabilité comme construction sociale et politique. Un candidat qui ignore l''existence de cette tension, ou qui prétend qu''un seul courant détient la vérité, affaiblit sa position.

Méthode de travail pour préparer l''épreuve

Trois outils structurent efficacement la préparation.

- La fiche de lecture : pour chaque texte ou chaque courant étudié, une fiche courte et standardisée (problématique, cadre théorique mobilisé, méthode, résultat principal, limite assumée par l''auteur ou relevée par la critique) évite de se noyer dans le détail et permet de réviser rapidement avant la soutenance.
- La cartographie des courants : un schéma ou un tableau qui positionne les courants les uns par rapport aux autres (sur quoi ils s''opposent, sur quoi ils se recoupent, quels objets d''étude ils privilégient) aide à répondre aux questions transversales du jury, qui portent souvent sur les liens entre courants plutôt que sur un courant isolé.
- La note de synthèse : un document de quelques pages qui résume l''état de l''art du champ et positionne le projet de thèse par rapport à lui. C''est souvent ce document, ou une version enrichie, qui sert de support écrit à la soutenance.

Plan de travail sur huit semaines

Un calendrier réaliste, à adapter selon le temps disponible, peut s''organiser ainsi.

- Semaines 1 et 2 : recensement et lecture des textes fondateurs du courant de la théorie positive de la comptabilité (recherche en information financière, lien avec les marchés de capitaux) ; rédaction des fiches de lecture correspondantes.
- Semaines 3 et 4 : recensement et lecture des textes représentatifs des approches critiques et sociales de la comptabilité (comptabilité comme construction sociale, théorie des parties prenantes, responsabilité sociétale) ; fiches de lecture ; premier essai de cartographie opposant les deux courants.
- Semaine 5 : étude des méthodes de recherche propres au champ comptable (études d''événements sur les marchés financiers, recherche qualitative et institutionnelle, études de cas) et de leurs conditions d''application.
- Semaine 6 : rédaction d''un premier jet de note de synthèse articulant les deux courants et une méthode, et esquisse du positionnement du projet de thèse personnel.
- Semaine 7 : entraînement sur une question de synthèse type, rédaction d''un plan de réponse complet, puis simulation orale (seul ou avec un pair) chronométrée.
- Semaine 8 : relecture critique, correction des points faibles identifiés lors de la simulation, préparation des réponses aux objections les plus probables, repos la veille de l''épreuve.

Ce plan n''est pas une recette rigide : il s''ajuste au nombre de courants exigés et au temps disponible. Ce qui compte est la régularité du travail de fiche, plus efficace qu''une révision massive de dernière minute.

## Exercices pratiques

1. Rédigez en cinq lignes la différence entre un examen de Master et un examen de qualification doctorale, du point de vue de ce qui est évalué.
2. Listez les quatre attentes d''un jury doctoral présentées dans cette leçon et donnez, pour chacune, un exemple concret de ce qu''un candidat pourrait dire ou faire pour y répondre.
3. Construisez le squelette d''une fiche de lecture (rubriques uniquement, sans contenu) que vous utiliserez pour les leçons suivantes.
4. Pourquoi la cohérence entre la question de recherche, le cadre théorique et la méthode est-elle un critère d''évaluation central, plus que la seule exactitude des connaissances ?
5. Rédigez votre propre plan de travail sur huit semaines en l''adaptant à votre situation (temps disponible, nombre de courants exigés par votre programme).

## Corrigé

1. Un examen de Master évalue la capacité à résoudre un cas ou à appliquer une connaissance balisée dans un cadre fixé par l''enseignant. Un examen de qualification doctorale évalue la capacité à se positionner soi-même dans un champ de recherche existant, à comparer de façon critique des courants théoriques concurrents, et à défendre un projet de thèse original devant un jury qui peut remettre en cause chaque choix. Le niveau attendu est donc celui d''un chercheur en formation, pas celui d''un étudiant qui applique une méthode enseignée.

2. Clarté du positionnement théorique : dire explicitement « je m''inscris dans la perspective critique et sociale de la comptabilité parce que ma question porte sur la légitimité des normes, pas sur leur utilité pour les marchés ». Honnêteté sur les limites : reconnaître par exemple qu''une étude de cas unique ne permet pas de généraliser, et expliquer pourquoi ce choix reste justifié pour une recherche exploratoire. Cohérence méthodologique : ne pas annoncer une étude d''événements sur les marchés financiers si la question de recherche porte sur la perception des normes par des acteurs non cotés en bourse. Capacité à dialoguer : répondre à une objection du jury en reformulant ce qui est accepté et ce qui est nuancé, sans se contredire ni se braquer.

3. Une fiche de lecture utile comporte au minimum : référence et auteur(s) identifiés par leur apport ; problématique traitée ; cadre théorique mobilisé ; méthode de recherche employée ; principal résultat ou argument ; limite assumée ou critique reçue ; lien possible avec mon propre projet de thèse.

4. Parce qu''un jury évalue la capacité à raisonner comme un chercheur, pas la mémoire. Un candidat qui connaît un courant théorique mais choisit une méthode inadaptée révèle qu''il n''a pas intégré la logique de la recherche : la question doit guider le cadre théorique, qui oriente à son tour la méthode. Cette incohérence est l''un des signaux les plus visibles d''un travail insuffisamment mûri.

5. Il n''existe pas de corrigé unique : la bonne réponse est un plan réaliste, daté, qui couvre bien les étapes clés (lecture des courants, méthodes, entraînement à la question de synthèse, simulation orale) et qui tient compte du temps réellement disponible du candidat. L''essentiel à vérifier soi-même : chaque semaine doit avoir un livrable concret (une fiche, une cartographie, un brouillon de note de synthèse), pas seulement une intention de lecture.', 'texte', 45, true, 10
from public.courses c where c.slug = 'doc-compta'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir son examen de qualification doctorale en Comptabilité');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Courant théorique 1 : la théorie positive de la comptabilité', 'Objectifs de la leçon

Cette leçon présente le premier grand courant théorique du champ comptable retenu pour votre examen de qualification : la théorie positive de la comptabilité (positive accounting theory). Vous devez être capable d''en exposer les fondements, d''en citer l''apport des auteurs fondateurs, de retracer son évolution, et d''en formuler les limites et les critiques les plus sérieuses.

Définition et postulat central

La théorie positive de la comptabilité désigne un courant de recherche qui cherche à expliquer et à prédire les pratiques comptables réellement observées, plutôt qu''à prescrire ce qu''elles devraient être. Son postulat central est que les choix comptables des dirigeants, des entreprises et des régulateurs s''expliquent par des motivations économiques rationnelles : minimiser les coûts contractuels, gérer les conflits d''intérêts entre actionnaires, dirigeants et créanciers, et répondre aux incitations créées par les contrats (rémunération indexée sur le résultat, clauses d''endettement, pression politique sur les grandes entreprises).

Ce courant s''inscrit dans une démarche positiviste empruntée aux sciences économiques : il formule des hypothèses testables statistiquement, les confronte à des données de marché ou d''entreprise, et en tire des régularités. Il s''oppose explicitement à une comptabilité normative qui se contenterait de dire comment les comptes devraient être tenus, sans chercher à expliquer pourquoi les praticiens s''en écartent souvent.

Auteurs fondateurs et apport

Sans prétendre à une citation textuelle exacte de leurs travaux, on peut situer l''apport de plusieurs figures associées à ce courant.

- Ross Watts et Jerold Zimmerman sont les auteurs dont l''apport est le plus directement associé à la formalisation de la théorie positive de la comptabilité dans les années 1970 et 1980. Leur contribution majeure est d''avoir proposé un cadre explicatif des choix comptables fondé sur trois hypothèses répandues dans la littérature qui leur est associée : l''hypothèse du plan de rémunération (les dirigeants choisissent des méthodes comptables qui augmentent leur rémunération quand celle-ci dépend du résultat comptable), l''hypothèse des clauses d''endettement (les entreprises proches de violer une clause contractuelle liée à leur niveau d''endettement ont intérêt à choisir des méthodes comptables qui améliorent leurs ratios), et l''hypothèse des coûts politiques (les grandes entreprises visibles ont intérêt à lisser ou minorer un résultat trop élevé pour éviter une attention réglementaire ou fiscale accrue).
- William Beaver est associé à l''apport fondateur sur l''utilité de l''information comptable pour les marchés financiers, en étudiant comment la publication des résultats comptables modifie le comportement des investisseurs (volume des transactions, volatilité des cours) autour de la date d''annonce.
- Ray Ball et Philip Brown sont associés à l''un des travaux fondateurs établissant empiriquement un lien entre le contenu informatif des résultats comptables publiés et les variations de cours de bourse, ce qui a durablement orienté la recherche comptable vers l''étude de la valeur informationnelle (value relevance) des chiffres comptables pour les marchés de capitaux.

Évolution historique du courant

Le courant trouve son origine dans le mouvement de recherche empirique en comptabilité financière des années 1960 et 1970, lui-même porté par le développement de l''hypothèse d''efficience des marchés financiers en finance. Si les marchés intègrent rapidement l''information disponible, alors on peut étudier statistiquement comment ils réagissent à la publication d''une information comptable, et en déduire si cette information est utile.

Dans les années 1980, le courant s''élargit des études de marché aux études de choix comptables eux-mêmes : pourquoi une entreprise choisit-elle une méthode d''amortissement plutôt qu''une autre, pourquoi certains dirigeants pratiquent-ils la gestion du résultat (earnings management) à certaines périodes. La théorie de l''agence, qui analyse les conflits d''intérêts entre les différentes parties prenantes d''un contrat, devient le cadre explicatif dominant de cette deuxième vague.

À partir des années 1990 et 2000, le courant se diversifie encore : il nourrit une abondante littérature sur la pertinence des normes comptables internationales (IFRS) pour les marchés financiers. L''argument central de cette littérature est que l''harmonisation comptable internationale réduit les coûts d''information pour les investisseurs, facilite la comparabilité des entreprises cotées entre pays, et peut ainsi abaisser le coût du capital des entreprises qui adoptent des normes de haute qualité perçue. C''est une extension logique du postulat de départ : si l''information comptable est utile aux marchés, alors sa qualité et sa comparabilité internationale doivent avoir une valeur économique mesurable, par exemple via des études d''événements autour des dates d''adoption des IFRS.

Limites et critiques

Ce courant a fait l''objet de critiques anciennes et récurrentes, qu''un candidat doit connaître pour nuancer sa présentation.

- Un déterminisme économique excessif : en expliquant tout choix comptable par un calcul d''intérêt économique rationnel, la théorie positive tend à ignorer les dimensions institutionnelles, culturelles et politiques qui façonnent aussi les pratiques comptables, notamment dans des contextes où les marchés financiers jouent un rôle secondaire.
- Une confusion possible entre corrélation et explication : montrer qu''un choix comptable est statistiquement associé à une incitation économique ne prouve pas que cette incitation en est la cause, ni qu''elle en est la seule cause.
- Une focalisation sur les marchés financiers développés : une large part des travaux fondateurs du courant s''appuie sur des données de marchés nord-américains très liquides. Leur transposition à des contextes où les marchés boursiers sont étroits ou peu liquides, ce qui est le cas de nombreuses places africaines, pose la question de la validité externe des résultats, un point qu''un candidat doit savoir discuter sans pour autant rejeter l''ensemble du courant.
- Une neutralité scientifique contestée : des chercheurs d''autres courants reprochent à la théorie positive de se présenter comme purement descriptive alors qu''elle véhicule, selon eux, une vision implicite de l''entreprise centrée sur l''efficience des marchés et les intérêts des actionnaires, ce qui n''est pas un choix neutre. Cette critique prépare directement la discussion du courant opposé ou complémentaire étudié dans la prochaine leçon.

Ce que le candidat doit retenir pour l''épreuve

Pour l''examen, il est attendu de savoir présenter ce courant de façon équilibrée : en rappeler le postulat et l''apport réel (avoir mis l''information comptable au centre d''une démarche empirique testable, avoir éclairé des mécanismes contractuels concrets), tout en étant capable d''articuler ses limites sans les présenter comme une réfutation totale. C''est cette capacité de nuance, plus que la restitution brute des trois hypothèses de Watts et Zimmerman, qui distingue une bonne réponse de jury d''une réponse mémorisée.

## Exercices pratiques

1. En trois phrases, formulez le postulat central de la théorie positive de la comptabilité sans utiliser le mot « positive ».
2. Expliquez avec un exemple fictif comment l''hypothèse des clauses d''endettement pourrait motiver un choix comptable précis dans une entreprise sénégalaise fortement endettée.
3. Pourquoi le développement de ce courant est-il historiquement lié à l''hypothèse d''efficience des marchés financiers ?
4. Présentez un argument et une limite de l''application de ce courant à l''étude de la valeur informationnelle des normes IFRS dans un contexte de marché financier peu liquide.
5. Un membre du jury vous objecte : « votre cadre théorique réduit les dirigeants à des calculateurs d''intérêt, n''est-ce pas réducteur ? ». Rédigez une réponse de deux phrases qui reconnaît la limite sans abandonner le cadre théorique.

## Corrigé

1. Les choix comptables observés dans les entreprises s''expliquent principalement par des motivations économiques rationnelles liées aux contrats qui lient les dirigeants aux actionnaires et aux créanciers. Ce courant chercher à expliquer les pratiques réelles plutôt qu''à prescrire des règles idéales. Il utilise des méthodes empiriques pour tester statistiquement ces explications sur des données réelles.

2. Une entreprise sénégalaise proche de violer une clause contractuelle bancaire liée à un ratio d''endettement maximal (exemple fictif pour l''illustration) pourrait choisir une méthode de comptabilisation qui améliore son résultat ou réduit son passif apparent, afin d''éviter un défaut technique et ses conséquences (renégociation, exigibilité anticipée). Ce choix n''est pas nécessairement frauduleux : il reste souvent dans le cadre des options autorisées par le référentiel comptable applicable, ce qui est précisément ce que l''hypothèse des clauses d''endettement chercher à expliquer.

3. Parce que l''étude empirique de l''utilité de l''information comptable pour les marchés suppose que ces marchés réagissent à cette information de façon suffisamment rapide et cohérente pour être mesurable statistiquement. Sans l''hypothèse d''efficience, qui postule que les prix intègrent rapidement l''information disponible, il serait difficile d''interpréter une variation de cours autour d''une annonce comptable comme la preuve que l''information a eu une valeur pour les investisseurs.

4. Argument : l''adoption de normes IFRS, perçues comme de meilleure qualité et plus comparables, peut réduire l''incertitude des investisseurs sur la qualité des comptes et donc, en théorie, réduire le coût du capital des entreprises qui les adoptent. Limite : sur un marché financier peu liquide, où les volumes d''échange sont faibles et où peu d''investisseurs suivent activement l''information publiée, la réaction du marché à une annonce comptable peut être trop faible ou trop bruitée pour être mesurée de façon fiable, ce qui affaiblit la validité empirique de l''argument dans ce contexte.

5. Réponse possible : « Je reconnais que ce cadre simplifie la motivation des dirigeants en la ramenant à des incitations contractuelles mesurables, et qu''il laisse de côté des dimensions institutionnelles ou culturelles plus difficiles à modéliser statistiquement. Je le mobilise néanmoins parce qu''il permet de formuler des hypothèses testables sur mon terrain, et je prévois de le compléter, si nécessaire, par une lecture plus institutionnelle pour les aspects qu''il laisse dans l''ombre. »', 'texte', 45, false, 20
from public.courses c where c.slug = 'doc-compta'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Courant théorique 1 : la théorie positive de la comptabilité');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Courant théorique 2 : les approches critiques et sociales de la comptabilité', 'Objectifs de la leçon

Cette leçon présente le second grand courant théorique retenu pour votre examen : les approches critiques et sociales de la comptabilité. Ce courant se construit en partie en réaction au courant étudié dans la leçon précédente, et il est fréquent qu''un jury demande explicitement de mettre les deux en tension. Vous devez savoir en exposer les fondements, les apports, l''évolution, et les limites.

Définition et postulat central

Les approches critiques et sociales de la comptabilité regroupent un ensemble de courants hétérogènes qui partagent un postulat commun : la comptabilité n''est pas un simple outil technique neutre de mesure économique, mais une construction sociale qui façonne, et est façonnée par, des rapports de pouvoir, des représentations sociales et des choix politiques. Produire un chiffre comptable, c''est déjà faire un choix sur ce qui compte, pour qui, et selon quelles catégories.

Ce courant déplace donc la question de recherche. Là où la théorie positive demande « quelle incitation économique explique ce choix comptable, et quel effet ce choix a-t-il sur les marchés », les approches critiques et sociales demandent « quels intérêts, quelles représentations du monde, quels rapports entre l''entreprise et la société ce choix comptable reflète-t-il ou contribue-t-il à construire ». Ce ne sont pas seulement des méthodes différentes, mais des questions différentes posées à partir de présupposés différents sur ce qu''est la comptabilité.

Auteurs et apports représentatifs

Plusieurs lignes de travail peuvent être situées dans ce courant, par leur apport plutôt que par citation exacte.

- Anthony Hopwood est associé à l''apport fondateur consistant à étudier la comptabilité comme pratique sociale et organisationnelle, en s''intéressant à la façon dont les systèmes comptables influencent le comportement des acteurs dans l''organisation, au-delà de leur seule fonction de mesure.
- Richard Laughlin et des chercheurs proches de la tradition dite de la comptabilité critique sont associés à l''apport d''une lecture inspirée des théories sociales critiques, qui interroge le rôle de la comptabilité dans la reproduction de rapports de pouvoir au sein des organisations et de la société.
- Les travaux rattachés à la théorie des parties prenantes (stakeholder theory), popularisée notamment à partir des apports de R. Edward Freeman en management stratégique puis largement repris en comptabilité sociale et environnementale, sont associés à l''idée que l''entreprise doit rendre compte non seulement à ses actionnaires mais à l''ensemble des parties affectées par son activité (salariés, communautés locales, collectivités, environnement), ce qui a nourri le développement de la comptabilité sociale et environnementale et des rapports de responsabilité sociétale des entreprises.
- La théorie de la légitimité, mobilisée par de nombreux chercheurs de ce courant, est associée à l''idée que les entreprises publient des informations sociales et environnementales en partie pour préserver leur légitimité auprès de la société, indépendamment de toute utilité directe pour les décisions des investisseurs financiers.

Évolution historique du courant

Ce courant émerge à partir des années 1970 et 1980, en partie comme réaction au tournant empirique et quantitatif de la recherche comptable dominante à cette période. Des chercheurs, souvent influencés par la sociologie des organisations, la philosophie sociale ou l''économie politique, estiment que réduire la comptabilité à son utilité pour des marchés financiers efficients laisse de côté l''essentiel : les effets de la comptabilité sur le travail, sur les communautés, sur l''environnement, et sur la répartition du pouvoir dans et autour des organisations.

Dans les années 1990, le courant se structure davantage autour de la comptabilité sociale et environnementale, avec l''essor des rapports extra-financiers des grandes entreprises et l''apparition progressive de cadres de reporting sur la responsabilité sociétale. La recherche critique s''intéresse alors beaucoup à la question de savoir si ces rapports traduisent un changement réel de comportement des entreprises, ou s''ils servent surtout une fonction de légitimation symbolique, sans effet substantiel sur les pratiques.

Depuis les années 2000, une partie de ce courant s''intéresse de près à la normalisation comptable internationale elle-même comme objet d''étude social et politique : qui participe à l''élaboration des normes comptables internationales, quels intérêts y sont représentés, et quelles conséquences la diffusion mondiale d''un même référentiel a-t-elle sur des économies très différentes. C''est ici que se noue un débat particulièrement pertinent pour un chercheur africain en comptabilité : celui de l''harmonisation comptable internationale portée par les normes IFRS, face à la pertinence de référentiels régionaux comme le droit comptable de l''Organisation pour l''Harmonisation du Droit des Affaires en Afrique, mis en œuvre à travers le Système Comptable Ouest-Africain (OHADA et SYSCOHADA).

Les chercheurs proches des approches critiques et sociales invitent à ne pas considérer l''adoption des IFRS comme un simple progrès technique universel, mais à interroger les conditions sociales de sa production (élaborée principalement par des organismes des économies les plus industrialisées) et sa pertinence pour des économies où les marchés financiers sont étroits, où le tissu économique est dominé par des petites et moyennes entreprises non cotées, et où les besoins d''information des utilisateurs diffèrent de ceux des investisseurs boursiers visés en priorité par les IFRS. Le référentiel SYSCOHADA, construit pour un espace économique régional ouest et centrafricain, peut alors être lu non comme un simple retard par rapport à une norme internationale supérieure, mais comme une construction institutionnelle répondant à des besoins et à des rapports de pouvoir économiques propres à la zone, ce qui est précisément la question posée par les approches critiques et sociales.

Limites et critiques

Ce courant, à son tour, fait l''objet de critiques qu''un candidat doit connaître.

- Un déficit de généralisation statistique : beaucoup de travaux s''appuient sur des études de cas ou des analyses qualitatives dont la portée reste difficile à généraliser, ce que les chercheurs du courant opposé soulignent régulièrement.
- Un risque de glissement normatif : partant d''un engagement critique explicite, certains travaux sont accusés de mélanger analyse scientifique et prise de position militante.
- Une difficulté à proposer des solutions opérationnelles immédiates : mettre en évidence des rapports de pouvoir est parfois jugé plus facile que formuler des recommandations applicables.

Articulation avec le courant précédent

Pour l''examen, il est attendu de ne pas présenter ces deux courants comme simplement incompatibles. Beaucoup de chercheurs contemporains considèrent qu''ils répondent à des questions différentes et peuvent être mobilisés de façon complémentaire selon l''objet étudié : un travail sur la valeur informationnelle d''une annonce comptable sur un marché boursier relève naturellement du premier courant, tandis qu''un travail sur l''adoption d''un référentiel comptable régional par des petites entreprises non cotées relève plus naturellement du second. Savoir expliquer ce critère de choix, plutôt que de déclarer un courant supérieur à l''autre, est souvent ce qui distingue une bonne prestation orale.

## Exercices pratiques

1. Formulez en trois phrases le postulat central des approches critiques et sociales de la comptabilité, en évitant toute formule mémorisée.
2. Expliquez la différence entre la théorie des parties prenantes et la théorie de la légitimité, en une phrase chacune.
3. Pourquoi le débat sur la pertinence d''un référentiel régional comme le SYSCOHADA face aux normes IFRS est-il un terrain naturel pour les approches critiques et sociales de la comptabilité ?
4. Donnez un exemple fictif de rapport de responsabilité sociétale d''une entreprise sénégalaise qui pourrait être analysé sous l''angle de la théorie de la légitimité plutôt que sous l''angle de son utilité informationnelle pour les marchés.
5. Un membre du jury vous objecte que vos travaux critiques « ne proposent pas de solution concrète ». Rédigez une réponse de deux phrases qui défend la valeur du travail descriptif et critique sans prétendre qu''il doit toujours produire une recommandation opérationnelle.

## Corrigé

1. La comptabilité n''est pas un outil technique neutre : elle reflète et façonne des rapports de pouvoir, des représentations sociales et des choix politiques, dans l''organisation comme dans la société. Produire un chiffre comptable implique toujours de choisir ce qui compte et selon quelles catégories. Ce courant étudie donc les effets sociaux et politiques des pratiques comptables, plutôt que leur seule utilité économique pour les marchés.

2. La théorie des parties prenantes soutient que l''entreprise doit rendre compte à l''ensemble des acteurs affectés par son activité, pas seulement à ses actionnaires. La théorie de la légitimité explique, elle, pourquoi une entreprise publie certaines informations sociales ou environnementales : pour préserver son acceptabilité sociale, indépendamment de toute obligation envers des parties prenantes précises.

3. Parce que ce débat ne porte pas seulement sur une question technique de qualité comptable, mais sur la question de savoir qui produit les normes, pour quels besoins, et avec quels intérêts économiques en jeu, ce qui est exactement l''objet d''étude privilégié des approches critiques et sociales : interroger les conditions sociales et institutionnelles de production d''un référentiel plutôt que supposer sa supériorité technique universelle.

4. Une entreprise sénégalaise (exemple fictif) qui publie chaque année un rapport détaillé sur ses actions sociales dans les communautés où elle opère, sans que ce rapport soit directement utilisé par les investisseurs financiers pour évaluer son cours de bourse, illustre bien la théorie de la légitimité : la publication vise à maintenir une image socialement acceptable de l''entreprise, plutôt qu''à informer un marché financier sur sa valeur.

5. Réponse possible : « La recherche critique a pour fonction première de révéler des mécanismes et des rapports de pouvoir qui restent invisibles dans une lecture purement technique de la comptabilité ; cette mise en lumière a une valeur scientifique propre. Je reconnais cependant que mon projet pourrait, en complément, discuter des implications pratiques de ces résultats pour les régulateurs ou les praticiens, sans pour autant transformer un travail descriptif en recommandation normative. »', 'texte', 45, false, 30
from public.courses c where c.slug = 'doc-compta'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Courant théorique 2 : les approches critiques et sociales de la comptabilité');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Les méthodes de recherche en comptabilité', 'Objectifs de la leçon

Cette leçon présente les grandes méthodes de recherche propres au champ comptable, en lien direct avec les deux courants théoriques étudiés précédemment. Elle se termine par un exemple de protocole de recherche appliqué à un contexte sénégalais fictif, construit pour vous entraîner à justifier une méthode devant un jury.

Les études d''événements sur les marchés financiers

L''étude d''événements (event study) est la méthode quantitative la plus associée à la théorie positive de la comptabilité et à l''étude de la valeur informationnelle des chiffres comptables. Son principe est de mesurer la réaction d''un marché financier à la publication d''une information comptable précise (résultat annuel, changement de méthode comptable, adoption d''un nouveau référentiel), en comparant le rendement réellement observé d''un titre autour de la date de l''événement à un rendement attendu en l''absence de cet événement.

La démarche suit généralement quatre étapes. Premièrement, définir précisément l''événement et sa date (par exemple la date de publication officielle d''un résultat annuel). Deuxièmement, estimer un modèle de rendement attendu sur une période antérieure à l''événement, le plus souvent un modèle de marché qui relie le rendement du titre au rendement d''un indice de référence par une relation linéaire. Troisièmement, calculer le rendement anormal (abnormal return) à chaque date de la fenêtre d''événement, défini comme la différence entre le rendement observé et le rendement attendu par le modèle. Quatrièmement, cumuler ces rendements anormaux sur la fenêtre étudiée (cumulative abnormal return, CAR) et tester si ce cumul est statistiquement différent de zéro.

Un exemple chiffré, entièrement fictif et vérifié par calcul, illustre la méthode. Sur une fenêtre de onze jours de bourse autour de la publication des comptes annuels d''une entreprise fictive cotée sur un marché régional (jour 0 = date de l''annonce), avec un modèle de marché fictif déjà estimé (alpha = 0,02 pourcent, bêta = 1,10), les rendements anormaux quotidiens calculés sont faibles les jours sans événement (de l''ordre de -0,08 à +0,07 pourcent) mais atteignent 1,67 pourcent le jour de l''annonce elle-même. Le cumul des rendements anormaux sur l''ensemble de la fenêtre (CAR) atteint environ 1,86 pourcent, très majoritairement porté par le seul jour de l''annonce. Un test de significativité simplifié, comparant l''écart du jour 0 à la moyenne et à l''écart-type des rendements anormaux des autres jours, donne une statistique très supérieure aux valeurs seuils usuelles, ce qui, dans cet exemple construit pour l''illustration, serait interprété comme une réaction de marché statistiquement significative à l''annonce comptable. Ces chiffres sont fictifs et construits pour la démonstration : dans une recherche réelle, la robustesse d''un tel résultat dépend de la qualité du modèle de rendement attendu, de la taille de l''échantillon d''entreprises étudiées, et du contrôle d''événements concurrents susceptibles d''affecter le cours à la même date.

Cette méthode suppose un marché boursier suffisamment liquide et un échantillon suffisant d''entreprises cotées pour être statistiquement robuste, ce qui limite directement son application dans des contextes où le marché financier est étroit.

La recherche qualitative et institutionnelle

À l''opposé méthodologique, la recherche qualitative et institutionnelle est la méthode privilégiée des approches critiques et sociales de la comptabilité. Elle vise à comprendre en profondeur comment des acteurs donnent sens à des pratiques comptables, comment des institutions (organismes de normalisation, administrations, organisations professionnelles) façonnent ces pratiques, et comment des rapports de pouvoir s''y expriment.

Les techniques les plus courantes sont l''entretien semi-directif avec des acteurs clés (dirigeants, comptables, régulateurs, auditeurs), l''analyse documentaire approfondie (rapports annuels, procès-verbaux d''organismes de normalisation, débats publics autour d''un projet de norme), et l''observation directe ou participante au sein d''une organisation. L''analyse qualitative recourt souvent à un codage thématique des données recueillies pour en dégager des catégories et des régularités interprétatives, sans viser une généralisation statistique.

La recherche institutionnelle, plus spécifiquement, s''appuie fréquemment sur la théorie néo-institutionnelle pour expliquer pourquoi des organisations adoptent des pratiques comptables similaires non pas parce qu''elles sont techniquement supérieures, mais parce qu''elles répondent à des pressions de légitimité, d''imitation ou de normalisation professionnelle. Ce cadre est particulièrement utile pour étudier la diffusion d''un référentiel comme le SYSCOHADA dans un espace régional, ou l''adoption progressive de pratiques inspirées des IFRS par des entreprises non cotées.

Les études de cas

L''étude de cas occupe une place particulière : elle peut servir aussi bien une démarche positiviste (étudier en détail les mécanismes contractuels d''une entreprise précise pour illustrer ou affiner une hypothèse générale) qu''une démarche critique et sociale (comprendre en profondeur un contexte organisationnel singulier). Une étude de cas rigoureuse précise toujours son unité d''analyse (une entreprise, un service, un processus de décision), sa stratégie d''échantillonnage (cas unique en profondeur ou cas multiples comparés), et ses sources de données (entretiens, documents internes, observation), en veillant à trianguler plusieurs sources pour renforcer la validité des résultats. Sa principale limite, souvent soulevée par le jury, est la difficulté à généraliser les résultats obtenus sur un ou quelques cas à une population plus large, ce qui doit être anticipé et assumé dans la présentation de la méthode plutôt que nié.

Exemple de protocole de recherche appliqué à un contexte sénégalais fictif

Imaginons un projet de thèse fictif portant sur la question suivante : « Comment les petites et moyennes entreprises sénégalaises non cotées perçoivent-elles la pertinence du référentiel SYSCOHADA révisé par rapport aux normes IFRS, et quels facteurs institutionnels expliquent leurs pratiques comptables effectives ? » Un protocole de recherche cohérent avec cette question, mobilisant la méthode qualitative et institutionnelle plutôt que l''étude d''événements (puisque ces entreprises ne sont pas cotées en bourse), pourrait s''organiser ainsi.

- Choix du cadre théorique : approche néo-institutionnelle, issue du courant critique et social, pour expliquer l''adoption de pratiques comptables par des pressions de légitimité plutôt que par un seul calcul d''efficience.
- Échantillon : étude de cas multiples, par exemple six à dix petites et moyennes entreprises sénégalaises de secteurs différents (commerce, industrie légère, services), sélectionnées pour contraster leur taille et leur exposition à des bailleurs de fonds exigeant des normes internationales.
- Collecte de données : entretiens semi-directifs avec les dirigeants et les responsables comptables de chaque entreprise, complétés par l''analyse de leurs états financiers et, lorsque disponible, de leurs échanges avec des organismes de normalisation ou des cabinets d''audit.
- Analyse : codage thématique des entretiens pour identifier les catégories de justification données par les acteurs (contrainte réglementaire, exigence d''un bailleur de fonds, habitude professionnelle, méconnaissance des alternatives), puis comparaison systématique entre les cas.
- Limites anticipées à présenter au jury : un échantillon de cas multiples sénégalais ne permet pas de généraliser les résultats à l''ensemble des petites entreprises ouest-africaines ; le choix de s''appuyer sur les discours des dirigeants, plutôt que sur une observation prolongée des pratiques réelles, introduit un biais de déclaration qu''il convient de discuter.

## Exercices pratiques

1. Expliquez en trois phrases le principe d''une étude d''événements, sans recourir au vocabulaire anglais.
2. Pourquoi l''étude d''événements est-elle difficilement applicable à une recherche portant sur des petites entreprises sénégalaises non cotées ?
3. Donnez deux techniques de collecte de données propres à la recherche qualitative et institutionnelle, et expliquez à quel type de question de recherche chacune convient le mieux.
4. Dans le protocole fictif présenté, pourquoi le choix d''une étude de cas multiples est-il préférable à un cas unique pour cette question de recherche précise ?
5. Un membre du jury objecte que les résultats de votre étude de cas multiples « ne prouvent rien de généralisable ». Formulez une réponse de deux phrases qui assume cette limite sans abandonner la méthode.

## Corrigé

1. Une étude d''événements mesure la réaction d''un marché financier à la publication d''une information précise, par exemple un résultat comptable. Elle compare le rendement réellement observé d''un titre autour de cette publication à un rendement attendu calculé à partir d''un modèle estimé sur une période antérieure. L''écart entre ces deux rendements, appelé rendement anormal, est interprété comme la réaction du marché à l''information en question.

2. Parce que cette méthode suppose un titre coté sur un marché boursier suffisamment liquide pour que ses variations de cours reflètent l''arrivée d''une information nouvelle. Des petites entreprises sénégalaises non cotées n''ont, par définition, aucun cours de bourse observable : il n''existe donc aucun rendement de marché à mesurer, ce qui rend la méthode inapplicable à cette population.

3. L''entretien semi-directif convient aux questions portant sur le sens que les acteurs donnent à leurs pratiques (pourquoi un dirigeant choisit telle méthode comptable) ; l''analyse documentaire (rapports, procès-verbaux d''organismes de normalisation) convient aux questions portant sur l''évolution institutionnelle d''un référentiel ou sur les débats publics qui l''ont entouré.

4. Parce que la question de recherche porte sur des facteurs institutionnels qui peuvent varier selon la taille, le secteur ou l''exposition à des bailleurs de fonds exigeants : un cas unique ne permettrait pas de voir si ces facteurs varient systématiquement selon ces dimensions, alors que des cas multiples contrastés permettent une comparaison qui enrichit l''interprétation, même sans viser une généralisation statistique.

5. Réponse possible : « Je reconnais que mes résultats ne sont pas généralisables statistiquement à l''ensemble des petites entreprises ouest-africaines : ce n''est pas l''objectif de ma méthode. Mon objectif est de comprendre en profondeur les mécanismes institutionnels à l''œuvre dans les cas étudiés, une compréhension qui peut ensuite nourrir des hypothèses à tester sur un échantillon plus large par une autre méthode. »', 'texte', 45, false, 40
from public.courses c where c.slug = 'doc-compta'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Les méthodes de recherche en comptabilité');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Épreuve type d''examen de qualification doctorale', 'Objectifs de la leçon

Cette leçon vous propose une question de synthèse typique d''un examen de qualification doctorale en comptabilité (question non officielle, construite pour l''entraînement), suivie d''un plan de réponse détaillé et corrigé. L''objectif est de vous entraîner à mobiliser ensemble les deux courants théoriques et une méthode de recherche étudiés dans les leçons précédentes, exactement comme un jury vous le demanderait.

Énoncé de la question type

« Dans quelle mesure la recherche comptable peut-elle à la fois évaluer l''utilité de l''information financière pour les marchés de capitaux et interroger la comptabilité comme construction sociale ? Vous discuterez cette tension à partir du débat entre harmonisation comptable internationale (IFRS) et pertinence des référentiels comptables régionaux, et vous proposerez une méthode de recherche adaptée à l''étude de cette question dans un contexte africain. »

Analyse de la question avant de répondre

Avant de se lancer dans la rédaction, un bon candidat prend quelques minutes pour décomposer la question en ses exigences implicites. Cette question en comporte au moins quatre : présenter le courant de la théorie positive de la comptabilité et son approche de l''utilité de l''information financière ; présenter le courant critique et social et sa lecture de la comptabilité comme construction sociale ; articuler ces deux courants autour du débat IFRS contre référentiels régionaux ; proposer et justifier une méthode de recherche cohérente avec un contexte africain. Un plan qui traiterait ces quatre éléments de façon séparée, sans les relier, répondrait partiellement à la question mais perdrait des points sur la capacité de synthèse attendue.

Plan de réponse détaillé

Introduction (environ 10 pourcent du temps de réponse) : rappeler que la recherche comptable est traversée par une tension entre une tradition qui étudie la comptabilité comme information utile aux décisions des marchés, et une tradition qui l''étudie comme construction sociale et politique ; annoncer que cette tension s''illustre particulièrement bien dans le débat sur l''harmonisation comptable internationale ; annoncer le plan en trois temps.

Premier temps : la lecture de l''utilité de l''information financière (mobilise la leçon 2). Présenter le postulat de la théorie positive de la comptabilité : les choix et les normes comptables s''expliquent et se justifient par leur capacité à réduire l''incertitude des investisseurs et à faciliter l''allocation efficace du capital. Appliquer ce postulat au débat IFRS : l''argument principal en faveur de l''harmonisation internationale est que des normes communes et de qualité perçue élevée réduisent les coûts d''information et peuvent abaisser le coût du capital des entreprises qui les adoptent, ce qui est testable empiriquement par des études d''événements autour des dates d''adoption. Signaler la limite : cet argument suppose des marchés financiers suffisamment développés et liquides pour que l''effet soit mesurable, ce qui n''est pas la situation de la majorité des entreprises africaines.

Deuxième temps : la lecture de la comptabilité comme construction sociale (mobilise la leçon 3). Présenter le postulat des approches critiques et sociales : la comptabilité reflète et façonne des rapports de pouvoir et des représentations sociales, et les normes comptables sont elles-mêmes le produit d''un processus institutionnel situé, pas une vérité technique universelle. Appliquer ce postulat au même débat : la normalisation IFRS est portée par des organismes et des intérêts principalement issus des économies les plus industrialisées, ce qui invite à interroger sa pertinence pour des économies où les marchés financiers sont étroits et où le tissu économique est dominé par des entreprises non cotées. Présenter alors le référentiel régional SYSCOHADA non comme un simple retard technique, mais comme une réponse institutionnelle à des besoins et à des rapports de pouvoir économiques spécifiques à l''espace ouest et centrafricain.

Troisième temps : articulation des deux lectures et proposition méthodologique (mobilise la leçon 4). Montrer que les deux lectures ne sont pas forcément incompatibles : elles répondent à des questions différentes selon l''objet étudié. Pour une question portant sur la réaction des marchés financiers à l''adoption de nouvelles normes par de grandes entreprises cotées, une étude d''événements, cohérente avec la théorie positive, est pertinente. Pour une question portant sur la façon dont des petites entreprises non cotées perçoivent et appliquent effectivement un référentiel comptable régional, une démarche qualitative et institutionnelle, cohérente avec les approches critiques et sociales, est plus appropriée. Proposer, à titre d''illustration, un protocole combinant les deux regards : une étude d''événements limitée aux quelques grandes entreprises africaines cotées ayant adopté les IFRS, complétée par une étude de cas qualitative auprès de petites entreprises non cotées restées au référentiel régional, afin de confronter les deux logiques sur un même terrain.

Conclusion (environ 10 pourcent du temps de réponse) : rappeler que la tension entre les deux courants n''est pas un obstacle à résoudre mais un objet d''étude en soi, particulièrement fécond pour un chercheur travaillant sur un contexte africain, où la coexistence de normes internationales et régionales offre un terrain naturel de comparaison.

Corrigé commenté : ce qui ferait la différence devant un jury

Un jury valoriserait particulièrement trois éléments dans cette réponse. Premièrement, la clarté de la distinction entre les deux courants dès l''introduction, sans les mélanger prématurément. Deuxièmement, le fait de ne pas présenter le référentiel régional comme simplement inférieur aux IFRS, ce qui serait une erreur de positionnement révélant une mauvaise compréhension du courant critique et social. Troisièmement, la capacité à proposer une méthode concrète et réalisable, plutôt qu''une méthode mentionnée sans justification de son adéquation au terrain étudié. À l''inverse, un jury pénaliserait une réponse qui se contenterait de réciter les deux courants sans jamais les articuler autour du débat proposé, ou qui proposerait une méthode sans expliquer pourquoi elle convient précisément à la question posée.

## Exercices pratiques

1. Rédigez seul, en quinze minutes chronométrées, une introduction de réponse à la question type de cette leçon, sans relire le plan proposé.
2. Identifiez, dans le plan de réponse détaillé, la phrase qui articule explicitement les deux courants plutôt que de les juxtaposer, et expliquez pourquoi cette articulation est importante pour le jury.
3. Proposez une variante de la question type qui porterait sur un autre couple de méthodes (par exemple étude de cas contre recherche institutionnelle) plutôt que sur le débat IFRS contre référentiels régionaux.
4. Un jury vous demande : « votre protocole combinant étude d''événements et étude de cas n''est-il pas simplement un empilement de deux méthodes sans cohérence ? ». Rédigez une réponse de trois phrases qui justifie la cohérence du protocole.
5. Entraînez-vous à l''oral : présentez le plan de réponse à voix haute en dix minutes maximum, puis identifiez les deux points que vous avez eu le plus de mal à articuler clairement.

## Corrigé

1. Il n''existe pas de corrigé unique pour cet exercice d''entraînement individuel : la bonne pratique est de comparer votre introduction à celle proposée dans la leçon et de vérifier qu''elle annonce bien les trois temps du plan (utilité pour les marchés, construction sociale, articulation méthodologique), sans entrer déjà dans le détail de chaque courant.

2. La phrase clé est celle qui explique que les deux lectures « répondent à des questions différentes selon l''objet étudié » : elle montre au jury que le candidat ne choisit pas un courant par conviction personnelle mais sait identifier à quel type de question chaque courant, et chaque méthode associée, est le mieux adapté. C''est cette logique de choix raisonné, plus que la connaissance des courants eux-mêmes, qui démontre la maturité de chercheur attendue à ce niveau.

3. Exemple de variante : « Dans quelle mesure l''étude de cas et la recherche institutionnelle permettent-elles d''éclairer des questions que l''étude d''événements sur les marchés financiers ne peut pas traiter, notamment dans des économies où les marchés boursiers sont peu développés ? » Cette question mobiliserait les mêmes courants théoriques mais déplacerait le débat appliqué sur un autre terrain.

4. Réponse possible : « Le protocole n''empile pas deux méthodes au hasard : il applique chaque méthode à la population pour laquelle elle est pertinente, les grandes entreprises cotées pour l''étude d''événements et les petites entreprises non cotées pour l''étude de cas qualitative. La cohérence ne vient donc pas de l''unité de la méthode, mais de l''adéquation entre chaque méthode et le sous-objet de recherche auquel elle s''applique. Cette combinaison permet justement de couvrir toute la population étudiée, ce qu''aucune des deux méthodes prise isolément ne permettrait. »

5. Cet exercice n''a pas de corrigé textuel : il vise à faire expérimenter la contrainte orale du temps et à identifier, par l''auto-évaluation, les transitions les moins maîtrisées, qui devront être retravaillées avant la soutenance réelle.', 'texte', 45, false, 50
from public.courses c where c.slug = 'doc-compta'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Épreuve type d''examen de qualification doctorale');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : la théorie positive de la comptabilité', '## Fiche du cours vidéo

Durée : 1h30. Public : doctorants préparant un examen de qualification en comptabilité. Objectifs : maîtriser la théorie positive de la comptabilité pour pouvoir l''exposer, la mettre en œuvre dans un exemple, et en discuter les limites devant un jury. Matériel : tableau ou diaporama avec les trois hypothèses de la théorie positive, un tableau de calcul d''étude d''événements projeté, de quoi prendre des notes. Prérequis : avoir lu la leçon texte sur la théorie positive de la comptabilité et tenté les exercices correspondants.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture et objectifs de la séance

Bonjour à toutes et à tous. Cette séance vidéo reprend et approfondit la leçon sur la théorie positive de la comptabilité, premier grand courant théorique de votre examen de qualification. Mon objectif aujourd''hui n''est pas de vous refaire lire la leçon texte, mais de vous faire manipuler ce courant comme un chercheur le ferait réellement : en le mettant à l''épreuve d''un exemple chiffré, et en anticipant les objections qu''un jury pourrait vous opposer. Nous allons procéder en quatre temps : d''abord un rappel structuré du postulat et des hypothèses du courant, ensuite une démonstration complète d''une étude d''événements avec des chiffres fictifs mais calculés, puis une discussion critique des limites, et enfin un temps de questions-réponses simulé, comme à l''oral. Gardez un papier à portée de main : je vais vous demander de noter vos propres réponses avant de vous donner les miennes.

## 05:00 – 20:00 · Rappel structuré : postulat et hypothèses de la théorie positive

Commençons par le postulat central. La théorie positive de la comptabilité part d''une idée simple mais puissante : les choix comptables observés dans les entreprises ne sont pas arbitraires, ils s''expliquent par des motivations économiques rationnelles liées aux contrats qui lient les différents acteurs de l''entreprise. Ce courant ne cherche pas à dire comment on devrait comptabiliser, il cherche à expliquer pourquoi on comptabilise de telle ou telle façon dans la réalité.

Trois hypothèses structurent la majorité des travaux de ce courant. La première, l''hypothèse du plan de rémunération, dit que lorsque la rémunération d''un dirigeant dépend du résultat comptable, ce dirigeant a intérêt à choisir des méthodes comptables qui augmentent ce résultat, ou à les choisir au moment où cela sert le mieux son intérêt. Prenez un exemple simple : un dirigeant dont le bonus est calculé sur le résultat net d''une année donnée pourrait avoir intérêt à retarder une charge exceptionnelle à l''année suivante, dans la mesure où le référentiel comptable applicable l''autorise.

La deuxième, l''hypothèse des clauses d''endettement, dit qu''une entreprise proche de violer une clause contractuelle liée à son endettement (un ratio maximal imposé par un prêteur, par exemple) a intérêt à choisir des méthodes comptables qui améliorent ce ratio, pour éviter les conséquences d''un défaut technique : renégociation du prêt, exigibilité anticipée, perte de confiance des créanciers.

La troisième, l''hypothèse des coûts politiques, dit que les grandes entreprises très visibles ont intérêt, au contraire, à minorer ou à lisser un résultat trop élevé, pour ne pas attirer une attention réglementaire, fiscale ou syndicale qui pourrait leur coûter cher. Vous voyez que ces trois hypothèses, loin de se contredire, décrivent des situations contractuelles différentes qui orientent le choix comptable dans des directions parfois opposées.

Je vous propose un petit exercice mental, à faire en pause sur votre papier : pour chacune des trois hypothèses, trouvez un exemple fictif d''entreprise sénégalaise où cette hypothèse jouerait un rôle. Prenez trente secondes... Nous reviendrons sur vos réponses possibles à la fin de cette section.

## 20:00 – 45:00 · Démonstration complète d''une étude d''événements

Passons maintenant à la méthode de recherche la plus associée à ce courant : l''étude d''événements sur les marchés financiers. Je vais vous montrer, pas à pas, comment elle fonctionne, avec un exemple entièrement fictif mais dont tous les calculs ont été vérifiés.

Imaginons une entreprise fictive cotée sur un marché régional, qui publie ses comptes annuels au jour que nous appelons jour zéro. Nous observons une fenêtre de onze jours de bourse, de cinq jours avant à cinq jours après l''annonce. Pour chaque jour, nous disposons du rendement réellement observé de l''action, et du rendement de l''indice de marché.

La première étape consiste à estimer, sur une période antérieure à cette fenêtre, un modèle de marché qui relie le rendement de l''action au rendement de l''indice par une relation du type : rendement attendu égale alpha plus bêta multiplié par le rendement du marché. Dans notre exemple fictif, ce modèle a déjà été estimé et donne un alpha de 0,02 pourcent et un bêta de 1,10. Cela signifie que, toutes choses égales, le titre amplifie légèrement les mouvements du marché.

La deuxième étape consiste à calculer, pour chaque jour de la fenêtre, le rendement attendu à partir de ce modèle, puis à le comparer au rendement réellement observé. L''écart entre les deux est le rendement anormal du jour. Sur les jours sans événement particulier, dans notre exemple, ces écarts restent faibles, de l''ordre de moins 0,08 pourcent à plus 0,07 pourcent : rien d''anormal. Mais le jour de l''annonce elle-même, le rendement observé de l''action est de 1,80 pourcent, alors que le rendement attendu par le modèle n''était que de 0,13 pourcent. Le rendement anormal de ce jour est donc de 1,67 pourcent, nettement supérieur à tous les autres jours de la fenêtre.

La troisième étape consiste à cumuler ces rendements anormaux sur l''ensemble de la fenêtre pour obtenir ce qu''on appelle le rendement anormal cumulé. Dans notre exemple, ce cumul atteint environ 1,86 pourcent sur les onze jours, et vous remarquez qu''il est presque entièrement porté par le seul jour de l''annonce : cela confirme que l''essentiel de la réaction du marché se concentre bien sur l''événement étudié, et non sur un bruit diffus avant ou après.

La quatrième étape, enfin, consiste à tester si ce rendement anormal du jour de l''annonce est statistiquement différent des rendements anormaux habituels. En comparant l''écart du jour zéro à la moyenne et à l''écart-type des rendements anormaux des autres jours de la fenêtre, on obtient dans notre exemple une statistique très largement supérieure aux seuils usuels de significativité, ce qui, pour cet exemple construit à des fins pédagogiques, serait interprété comme une réaction significative du marché à l''annonce comptable.

Je veux insister sur un point de méthode important pour votre examen : dans une recherche réelle, on ne travaille jamais sur une seule entreprise. On construit un échantillon de plusieurs dizaines ou centaines d''événements similaires, et on teste si, en moyenne sur l''échantillon, le rendement anormal du jour de l''annonce est significativement différent de zéro. Travailler sur un seul cas, comme nous venons de le faire, sert à illustrer la mécanique du calcul, pas à produire un résultat scientifiquement valide.

## 45:00 – 50:00 · Quiz interactif

Prenons une pause active. Je vous pose cinq questions, répondez sur votre papier avant d''entendre la réponse. Première question : quelle hypothèse de la théorie positive explique qu''une entreprise proche de violer une clause bancaire choisisse une méthode comptable qui améliore son ratio d''endettement ? Réponse : l''hypothèse des clauses d''endettement. Deuxième question : dans une étude d''événements, que mesure le rendement anormal ? Réponse : l''écart entre le rendement réellement observé d''un titre et le rendement attendu par un modèle de marché estimé sur une période antérieure. Troisième question : pourquoi une étude d''événements fondée sur un seul cas n''est-elle pas scientifiquement concluante ? Réponse : parce qu''elle ne permet pas de distinguer un effet systématique d''un résultat dû au hasard sur ce cas particulier ; il faut un échantillon. Quatrième question : quelle condition de marché limite l''application de l''étude d''événements dans de nombreux contextes africains ? Réponse : la faible liquidité et le nombre réduit d''entreprises cotées sur certains marchés financiers régionaux. Cinquième question : citez une limite non méthodologique, mais théorique, de la théorie positive de la comptabilité. Réponse : son déterminisme économique, qui tend à expliquer tout choix comptable par un calcul d''intérêt rationnel, en laissant de côté des dimensions institutionnelles et sociales.

## 50:00 – 1:10:00 · Discussion critique et mise en perspective

Revenons maintenant sur les limites de ce courant, car un jury doctoral valorise toujours la capacité à nuancer. Première limite : le déterminisme économique. En expliquant les choix comptables uniquement par des incitations contractuelles, la théorie positive laisse de côté les dimensions culturelles, institutionnelles et politiques qui façonnent aussi les pratiques, ce qui prépare directement la discussion du courant critique et social que nous verrons dans la prochaine vidéo.

Deuxième limite : la confusion possible entre corrélation et explication. Montrer qu''un choix comptable est statistiquement associé à une incitation économique ne prouve pas que cette incitation est la seule cause de ce choix. D''autres facteurs, non observés dans le modèle, peuvent jouer un rôle.

Troisième limite, particulièrement importante pour vous : la focalisation historique sur des marchés financiers développés et liquides. Une large part des travaux fondateurs de ce courant s''appuie sur des données nord-américaines. Leur transposition à des contextes où les marchés boursiers sont étroits, comme c''est le cas de nombreuses places africaines, pose une vraie question de validité externe. Cela ne signifie pas que le courant est inapplicable en Afrique : cela signifie qu''il faut être prudent sur les méthodes mobilisées, et parfois préférer d''autres approches pour certaines questions, comme nous l''avons vu avec les méthodes qualitatives et institutionnelles.

Je vous propose maintenant un temps de réflexion individuelle : pensez à votre propre projet de thèse. Si vous deviez mobiliser la théorie positive de la comptabilité, sur quel objet précis le feriez-vous, et quelle limite devriez-vous assumer explicitement devant un jury ? Prenez deux minutes pour l''écrire.

## 1:10:00 – 1:25:00 · Simulation de questions de jury

Passons à un exercice de simulation orale. Je vais vous poser trois questions comme le ferait un membre de jury, avec un temps de réflexion, puis je vous donnerai une structure de bonne réponse.

Première question : « Votre cadre théorique réduit les dirigeants à des calculateurs d''intérêt économique, n''est-ce pas réducteur ? » Une bonne réponse reconnaît la limite sans abandonner le cadre : on peut dire que ce cadre simplifie effectivement la motivation des dirigeants pour la rendre testable statistiquement, qu''il laisse de côté des dimensions plus difficiles à modéliser, mais qu''on le mobilise précisément parce qu''il permet de formuler des hypothèses vérifiables sur le terrain étudié, et qu''on prévoit, si nécessaire, de le compléter par une lecture plus institutionnelle.

Deuxième question : « Comment justifiez-vous l''usage d''une étude d''événements sur un marché financier aussi peu liquide que celui que vous étudiez ? » Une bonne réponse reconnaît la contrainte, propose une adaptation méthodologique (élargir la fenêtre d''observation, élargir l''échantillon à plusieurs marchés régionaux comparables, ou compléter par une méthode qualitative) et explique en quoi cette adaptation répond à la critique sans abandonner l''objectif de recherche.

Troisième question : « En quoi votre travail apporte-t-il quelque chose de nouveau par rapport aux études fondatrices de Watts et Zimmerman ? » Une bonne réponse situe précisément la contribution : un contexte empirique différent, une population d''entreprises différente, ou une hypothèse complémentaire testée, en évitant la formule vague « mon contexte est différent » sans préciser en quoi cette différence change l''analyse.

## 1:25:00 – 1:30:00 · Synthèse et évaluation finale

Nous arrivons au terme de cette séance. Retenez trois idées : la théorie positive explique les choix comptables par des incitations contractuelles rationnelles ; l''étude d''événements est sa méthode de recherche la plus emblématique et suppose un marché suffisamment liquide ; ses limites, notamment sa focalisation sur des marchés développés, préparent logiquement la discussion du courant critique et social que nous aborderons dans la prochaine vidéo.

Évaluation finale, cinq questions. Un, quelles sont les trois hypothèses de la théorie positive de la comptabilité ? Réponse : l''hypothèse du plan de rémunération, l''hypothèse des clauses d''endettement, l''hypothèse des coûts politiques. Deux, que mesure un rendement anormal cumulé (CAR) dans une étude d''événements ? Réponse : la somme des rendements anormaux sur toute la fenêtre d''événement, qui indique l''ampleur totale de la réaction du marché. Trois, pourquoi une étude sur un seul cas ne suffit-elle pas à conclure scientifiquement ? Réponse : parce qu''elle ne permet pas de distinguer un effet systématique d''un hasard propre à ce cas, il faut un échantillon suffisant. Quatre, citez une limite théorique et une limite méthodologique de la théorie positive. Réponse : limite théorique, le déterminisme économique qui néglige les dimensions institutionnelles et culturelles ; limite méthodologique, la dépendance à des marchés suffisamment liquides pour produire des résultats robustes. Cinq, pourquoi la focalisation historique sur les marchés nord-américains pose-t-elle une question de validité externe pour un chercheur africain ? Réponse : parce que les mécanismes observés sur des marchés très liquides ne se transposent pas nécessairement à des marchés étroits, où la réaction des investisseurs à une information comptable peut être trop faible ou trop bruitée pour être mesurée de façon fiable, ce qui exige prudence et parfois des méthodes complémentaires.', 'video', 90, false, 60
from public.courses c where c.slug = 'doc-compta'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : la théorie positive de la comptabilité');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : les approches critiques et sociales de la comptabilité', '## Fiche du cours vidéo

Durée : 1h30. Public : doctorants préparant un examen de qualification en comptabilité. Objectifs : maîtriser les approches critiques et sociales de la comptabilité, savoir les mettre en tension avec la théorie positive vue dans la vidéo précédente, et discuter le débat IFRS contre référentiels régionaux. Matériel : tableau ou diaporama avec un schéma comparatif des deux courants, de quoi prendre des notes. Prérequis : avoir suivi la vidéo précédente sur la théorie positive et lu la leçon texte sur les approches critiques et sociales.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture et lien avec la séance précédente

Bonjour à toutes et à tous. Dans la séance précédente, nous avons étudié la théorie positive de la comptabilité, qui explique les choix comptables par des incitations économiques rationnelles, et nous avons vu ses limites, notamment son déterminisme économique. Cette séance prend le relais en étudiant le courant qui, historiquement, s''est en partie construit en réaction à cette lecture : les approches critiques et sociales de la comptabilité. Mon objectif est de vous permettre de présenter ce courant de façon aussi rigoureuse que le précédent, et surtout de savoir les articuler l''un à l''autre, ce qui est très souvent demandé à l''oral. Nous verrons le postulat du courant, ses apports représentatifs, une discussion approfondie du débat entre harmonisation IFRS et référentiels régionaux comme OHADA et SYSCOHADA, puis un temps de simulation de jury.

## 05:00 – 25:00 · Le postulat des approches critiques et sociales

Le postulat de ce courant renverse la question posée par la théorie positive. Là où la théorie positive demande quelle incitation économique explique un choix comptable, les approches critiques et sociales demandent quels rapports de pouvoir, quelles représentations sociales, quels intérêts un choix comptable reflète-t-il ou contribue-t-il à construire. La comptabilité n''est plus un simple instrument de mesure neutre, elle devient un objet d''étude social et politique à part entière.

Plusieurs lignes de travail structurent ce courant. La première s''intéresse à la comptabilité comme pratique organisationnelle, en étudiant comment les systèmes comptables influencent le comportement des acteurs dans l''organisation, au-delà de leur fonction de mesure. La deuxième, inspirée de théories sociales critiques, interroge le rôle de la comptabilité dans la reproduction de rapports de pouvoir, dans l''organisation comme dans la société plus large. La troisième s''appuie sur la théorie des parties prenantes, qui soutient que l''entreprise doit rendre compte non seulement à ses actionnaires mais à l''ensemble des acteurs affectés par son activité : salariés, communautés locales, environnement. La quatrième s''appuie sur la théorie de la légitimité, qui explique pourquoi les entreprises publient des informations sociales et environnementales en partie pour préserver leur acceptabilité sociale, indépendamment de toute utilité directe pour des investisseurs financiers.

Je vous propose un exercice de clarification : prenez votre papier et notez, en une phrase chacune, la différence entre la théorie des parties prenantes et la théorie de la légitimité. Prenez une minute... La théorie des parties prenantes porte sur à qui l''entreprise doit rendre compte. La théorie de la légitimité porte sur pourquoi l''entreprise choisit de communiquer certaines informations. Ce sont deux questions complémentaires, pas rivales.

## 25:00 – 50:00 · Le débat IFRS contre référentiels régionaux, lu par ce courant

C''est ici que ce courant devient particulièrement pertinent pour votre propre recherche si vous travaillez sur un terrain africain. Les chercheurs proches des approches critiques et sociales invitent à ne jamais considérer l''adoption de normes comptables internationales comme un simple progrès technique universellement bénéfique. Ils posent plutôt la question suivante : qui a produit ces normes, avec quels intérêts représentés, et pour répondre à quels besoins d''information ?

Les normes IFRS ont été élaborées principalement par des organismes et des experts issus des économies les plus industrialisées, avec pour préoccupation centrale l''information des investisseurs sur des marchés financiers développés et liquides. Cette préoccupation n''est pas universelle. Dans de nombreuses économies africaines, le tissu économique est dominé par des petites et moyennes entreprises non cotées, les marchés financiers sont étroits, et les utilisateurs principaux de l''information comptable ne sont pas des investisseurs boursiers mais des administrations fiscales, des bailleurs de fonds, ou des institutions régionales. Dans ce contexte, le référentiel SYSCOHADA, construit pour l''espace économique régional ouest et centrafricain par l''Organisation pour l''Harmonisation du Droit des Affaires en Afrique, peut se lire non comme un simple retard par rapport à une norme internationale supérieure, mais comme une construction institutionnelle répondant à des besoins d''information et à des rapports de pouvoir économiques spécifiques à la région.

Cette lecture ne nie pas les avantages pratiques de la comparabilité internationale pour les entreprises qui lèvent des capitaux sur des marchés mondiaux. Elle invite seulement à ne pas transposer cet avantage comme une évidence universelle à toutes les entreprises, quelle que soit leur situation. C''est précisément la tension que vous devez savoir exposer : la théorie positive, vue dans la vidéo précédente, mettrait l''accent sur la valeur informationnelle mesurable de l''harmonisation pour les marchés ; les approches critiques et sociales mettraient l''accent sur les conditions de production du référentiel et sur sa pertinence différenciée selon les besoins réels des utilisateurs.

Prenons un instant pour une réflexion personnelle : si votre projet de thèse touche, même indirectement, à la comparaison entre normes internationales et référentiels régionaux, quelle serait votre position de chercheur sur cette tension ? Il ne s''agit pas de trancher dans l''absolu, mais de savoir dire explicitement sur quel terrain et pour quelle question vous mobiliseriez chaque lecture.

## 50:00 – 55:00 · Quiz interactif

Pause active, cinq questions. Première question : quel est le postulat central des approches critiques et sociales de la comptabilité ? Réponse : la comptabilité n''est pas un instrument neutre, elle reflète et façonne des rapports de pouvoir et des représentations sociales. Deuxième question : quelle théorie explique pourquoi une entreprise publie un rapport social sans que ce rapport serve directement les investisseurs financiers ? Réponse : la théorie de la légitimité. Troisième question : pourquoi le référentiel SYSCOHADA n''est-il pas, pour ce courant, simplement un retard technique par rapport aux IFRS ? Réponse : parce qu''il répond à des besoins d''information et à des rapports de pouvoir économiques propres à la région, différents de ceux des marchés financiers développés visés par les IFRS. Quatrième question : citez une limite méthodologique souvent adressée à ce courant. Réponse : la difficulté à généraliser des résultats issus d''études de cas ou d''analyses qualitatives. Cinquième question : qu''est-ce qui distingue la question posée par la théorie positive de celle posée par les approches critiques et sociales face à un même choix comptable ? Réponse : la théorie positive demande quelle incitation économique explique ce choix, les approches critiques et sociales demandent quels rapports de pouvoir ou quelles représentations sociales ce choix reflète.

## 55:00 – 1:15:00 · Discussion critique et articulation des deux courants

Abordons maintenant les limites de ce courant, pour la même raison que précédemment : un jury valorise la nuance. Première limite, le déficit de généralisation statistique, déjà évoqué : beaucoup de travaux de ce courant s''appuient sur des cas ou des analyses qualitatives dont la portée reste difficile à généraliser à grande échelle. Deuxième limite, le risque de glissement normatif : en partant d''un engagement critique explicite, certains travaux sont accusés de mélanger analyse scientifique et prise de position militante, ce qui peut fragiliser leur neutralité perçue par certains pairs. Troisième limite, la difficulté à produire des recommandations opérationnelles immédiates : révéler des rapports de pouvoir est souvent jugé plus facile que de formuler des solutions concrètes applicables par des régulateurs ou des praticiens.

Pour autant, je veux insister sur un point essentiel pour votre examen : ces deux courants, la théorie positive et les approches critiques et sociales, ne sont pas de simples rivaux dont il faudrait choisir le vainqueur. Ils répondent à des questions différentes. Une recherche sur la réaction d''un marché boursier à l''adoption d''une norme comptable relève naturellement de la théorie positive. Une recherche sur la façon dont des petites entreprises non cotées perçoivent et appliquent un référentiel régional relève naturellement des approches critiques et sociales. Savoir expliquer ce critère de choix, plutôt que de déclarer un courant supérieur à l''autre dans l''absolu, est très souvent ce qui distingue une bonne prestation orale d''une prestation moyenne.

## 1:15:00 – 1:25:00 · Simulation de questions de jury

Passons à la simulation. Première question de jury : « Votre approche critique ne risque-t-elle pas de n''être qu''un jugement moral déguisé en recherche ? » Une bonne réponse distingue clairement la description analytique (quels intérêts, quels rapports de pouvoir sont à l''œuvre) de la prescription normative (ce qui devrait changer), en assumant que le chercheur peut adopter une posture engagée tout en appliquant une méthode rigoureuse de collecte et d''analyse des données.

Deuxième question : « Si le référentiel régional répond mieux aux besoins locaux, pourquoi tant d''entreprises cherchent-elles quand même à adopter les IFRS ? » Une bonne réponse reconnaît la réalité de cette tendance (accès à des financements internationaux, exigences de bailleurs de fonds) et explique qu''elle ne contredit pas la lecture critique mais l''enrichit : elle montre justement comment des pressions institutionnelles et des rapports de pouvoir économiques, plutôt qu''une seule supériorité technique, orientent le choix des entreprises.

Troisième question : « Comment rendriez-vous votre étude de cas plus convaincante pour un jury qui valorise la généralisation ? » Une bonne réponse propose, par exemple, d''étendre l''échantillon à plusieurs cas contrastés, ou de préciser explicitement l''objectif de compréhension en profondeur visé par la méthode, sans prétendre à une généralisation qu''elle ne permet pas.

## 1:25:00 – 1:30:00 · Synthèse et évaluation finale

Pour conclure, retenez trois idées : les approches critiques et sociales étudient la comptabilité comme construction sociale et politique, pas comme simple outil de mesure neutre ; le débat entre normes IFRS et référentiels régionaux comme le SYSCOHADA est un terrain d''application privilégié de ce courant ; et la théorie positive comme les approches critiques et sociales ne s''excluent pas, elles répondent à des questions différentes selon l''objet étudié.

Évaluation finale, cinq questions. Un, quel est le postulat central des approches critiques et sociales ? Réponse : la comptabilité reflète et façonne des rapports de pouvoir et des représentations sociales, elle n''est pas un outil neutre. Deux, citez deux théories mobilisées par ce courant et leur apport respectif. Réponse : la théorie des parties prenantes, qui élargit la responsabilité de l''entreprise au-delà des actionnaires, et la théorie de la légitimité, qui explique la communication sociale des entreprises par le besoin de préserver leur acceptabilité sociale. Trois, pourquoi le référentiel SYSCOHADA peut-il être lu comme une construction institutionnelle plutôt qu''un simple retard technique ? Réponse : parce qu''il répond à des besoins d''information et à des rapports de pouvoir économiques propres à la région, différents de ceux visés en priorité par les IFRS. Quatre, citez une limite de ce courant. Réponse : la difficulté à généraliser statistiquement des résultats issus de méthodes qualitatives, ou le risque de glissement normatif. Cinq, comment choisir entre théorie positive et approches critiques et sociales pour un projet de recherche donné ? Réponse : en fonction de la question posée et de l''objet étudié, pas en fonction d''une préférence théorique a priori : les marchés financiers et la valeur informationnelle relèvent plutôt de la théorie positive, les rapports de pouvoir et les constructions institutionnelles relèvent plutôt des approches critiques et sociales.', 'video', 90, false, 70
from public.courses c where c.slug = 'doc-compta'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : les approches critiques et sociales de la comptabilité');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : les méthodes de recherche en comptabilité', '## Fiche du cours vidéo

Durée : 1h30. Public : doctorants préparant un examen de qualification en comptabilité. Objectifs : savoir présenter et justifier les grandes méthodes de recherche du champ comptable, refaire pas à pas le calcul d''une étude d''événements, et construire un protocole de recherche adapté à un contexte africain. Matériel : tableau de calcul projeté, diaporama avec le schéma des quatre étapes d''une étude d''événements, de quoi prendre des notes. Prérequis : avoir suivi les deux vidéos précédentes et lu la leçon texte sur les méthodes de recherche.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture et objectifs de la séance

Bonjour à toutes et à tous. Nous avons vu deux courants théoriques qui posent des questions différentes à la comptabilité : la théorie positive, qui s''intéresse à l''utilité de l''information pour les marchés, et les approches critiques et sociales, qui s''intéressent à la comptabilité comme construction sociale. Cette séance fait le pont entre théorie et pratique de recherche : nous allons détailler les méthodes qui permettent concrètement d''étudier ces questions, avec une attention particulière à leur adéquation au terrain africain. Nous verrons l''étude d''événements, la recherche qualitative et institutionnelle, l''étude de cas, puis nous construirons ensemble, pas à pas, un protocole de recherche appliqué à un contexte sénégalais fictif.

## 05:00 – 30:00 · L''étude d''événements, méthode par méthode

Reprenons la logique de l''étude d''événements, en insistant cette fois sur les choix méthodologiques qu''un chercheur doit justifier, pas seulement sur le calcul. Premier choix : la définition précise de l''événement et de sa date. Un événement mal défini, par exemple une date d''annonce approximative, introduit un bruit qui affaiblit toute l''analyse ultérieure. Deuxième choix : la longueur de la fenêtre d''événement. Une fenêtre trop courte risque de manquer une réaction retardée du marché ; une fenêtre trop longue risque de capter d''autres événements qui brouillent l''interprétation. Troisième choix : le modèle de rendement attendu. Le modèle de marché, que nous avons utilisé dans notre exemple avec un alpha et un bêta estimés sur une période antérieure, est le plus courant, mais d''autres modèles existent et le choix doit être justifié. Quatrième choix : la taille et la composition de l''échantillon d''entreprises étudiées, qui doit être assez large pour permettre un test statistique robuste, et assez homogène pour que l''événement étudié ait un sens comparable pour chaque entreprise de l''échantillon.

Petit rappel chiffré de notre exemple fictif : avec un alpha de 0,02 pourcent et un bêta de 1,10, nous avions obtenu un rendement anormal du jour de l''annonce de 1,67 pourcent, et un rendement anormal cumulé sur la fenêtre d''environ 1,86 pourcent. Ce que je veux que vous reteniez ici, c''est que ces chiffres n''ont de valeur scientifique que rapportés à un échantillon, jamais à un cas isolé. Un jury qui vous demande « votre résultat est-il robuste » attend que vous sachiez immédiatement répondre en termes de taille d''échantillon et de test statistique, pas seulement en termes de calcul individuel.

## 30:00 – 50:00 · La recherche qualitative et institutionnelle, et l''étude de cas

Passons maintenant à l''autre grande famille de méthodes. La recherche qualitative vise à comprendre en profondeur comment des acteurs donnent sens à des pratiques comptables. Ses techniques principales sont l''entretien semi-directif, l''analyse documentaire et l''observation. La recherche institutionnelle, plus spécifiquement, s''appuie souvent sur la théorie néo-institutionnelle pour expliquer pourquoi des organisations adoptent des pratiques similaires non par supériorité technique, mais par pression de légitimité, d''imitation entre pairs, ou de normalisation professionnelle.

L''étude de cas, de son côté, peut servir les deux grandes lectures théoriques que nous avons vues. Elle précise toujours trois éléments : l''unité d''analyse, qui peut être une entreprise, un service ou un processus de décision ; la stratégie d''échantillonnage, cas unique en profondeur ou cas multiples comparés ; les sources de données, en veillant à en trianguler plusieurs pour renforcer la validité du résultat. Sa limite principale, la difficulté à généraliser, doit être assumée explicitement devant un jury, pas dissimulée.

Un point de méthode essentiel à retenir : le choix entre ces familles de méthodes ne dépend pas d''une préférence personnelle, mais de la nature de la question posée et de la population étudiée. Une question sur la réaction de marchés financiers appelle une méthode quantitative sur données boursières. Une question sur la perception d''acteurs non cotés appelle une méthode qualitative. Un jury sanctionne sévèrement un candidat qui choisit une méthode par habitude plutôt que par adéquation à sa question.

## 50:00 – 55:00 · Quiz interactif

Pause active, cinq questions. Première question : quelles sont les quatre étapes d''une étude d''événements ? Réponse : définir l''événement et sa date, estimer un modèle de rendement attendu, calculer les rendements anormaux, cumuler et tester leur significativité. Deuxième question : pourquoi la taille de l''échantillon est-elle déterminante dans une étude d''événements ? Réponse : parce qu''un résultat obtenu sur un seul cas ne permet pas de distinguer un effet systématique d''un hasard propre à ce cas, un échantillon suffisant est nécessaire pour un test statistique robuste. Troisième question : citez deux techniques de collecte de données propres à la recherche qualitative. Réponse : l''entretien semi-directif et l''analyse documentaire, auxquelles s''ajoute l''observation directe ou participante. Quatrième question : qu''apporte la théorie néo-institutionnelle à l''étude d''un référentiel comptable régional ? Réponse : elle explique l''adoption de pratiques comptables par des pressions de légitimité ou d''imitation plutôt que par un seul calcul d''efficience économique. Cinquième question : quelle est la principale limite d''une étude de cas, et comment la gérer devant un jury ? Réponse : la difficulté à généraliser les résultats, qu''il faut assumer explicitement plutôt que nier, en précisant l''objectif de compréhension en profondeur visé par la méthode.

## 55:00 – 1:20:00 · Construction pas à pas d''un protocole de recherche en contexte sénégalais fictif

Construisons maintenant ensemble un protocole complet, comme vous devrez le faire pour votre propre projet de thèse. Notre question fictive est la suivante : comment les petites et moyennes entreprises sénégalaises non cotées perçoivent-elles la pertinence du référentiel SYSCOHADA révisé par rapport aux normes IFRS, et quels facteurs institutionnels expliquent leurs pratiques comptables effectives ?

Première étape, le choix du cadre théorique. Puisque la population étudiée est composée d''entreprises non cotées, l''étude d''événements est exclue d''emblée : il n''existe aucun cours de bourse à observer. Le cadre le plus pertinent est donc une approche néo-institutionnelle issue du courant critique et social, pour expliquer l''adoption de pratiques comptables par des pressions de légitimité plutôt que par un seul calcul d''efficience.

Deuxième étape, le choix de l''échantillon. Une étude de cas multiples, par exemple six à dix entreprises de secteurs contrastés comme le commerce, l''industrie légère et les services, sélectionnées pour varier leur taille et leur exposition à des bailleurs de fonds exigeant des normes internationales, permet une comparaison enrichissante sans viser une généralisation statistique.

Troisième étape, la collecte de données. Des entretiens semi-directifs avec les dirigeants et les responsables comptables de chaque entreprise, complétés par l''analyse de leurs états financiers et, lorsque disponible, de leurs échanges avec des cabinets d''audit ou des organismes de normalisation.

Quatrième étape, l''analyse. Un codage thématique des entretiens pour identifier les catégories de justification données par les acteurs, par exemple contrainte réglementaire, exigence d''un bailleur de fonds, habitude professionnelle, ou méconnaissance des alternatives, suivi d''une comparaison systématique entre les cas étudiés.

Cinquième étape, les limites à anticiper et présenter au jury sans attendre qu''il les découvre lui-même : un échantillon de cas sénégalais ne permet pas de généraliser à l''ensemble des petites entreprises ouest-africaines, et le choix de s''appuyer sur les discours des dirigeants plutôt que sur une observation prolongée des pratiques réelles introduit un biais de déclaration qu''il faut discuter ouvertement.

Je vous invite à refaire cet exercice avec votre propre question de thèse : passez les cinq mêmes étapes, et vérifiez que chaque choix méthodologique découle logiquement de la question posée, pas d''une préférence personnelle pour une méthode plutôt qu''une autre.

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Pour conclure cette séance, retenez trois idées : l''étude d''événements est la méthode la plus associée à la théorie positive et suppose un marché suffisamment liquide ; la recherche qualitative et institutionnelle, dont l''étude de cas, est la méthode la plus associée aux approches critiques et sociales et vise une compréhension en profondeur plutôt qu''une généralisation statistique ; et le choix d''une méthode doit toujours découler de la question de recherche et de la population étudiée, jamais d''une habitude.

Évaluation finale, cinq questions. Un, pourquoi l''étude d''événements est-elle inapplicable à une population d''entreprises non cotées ? Réponse : parce qu''elle suppose l''existence d''un cours de bourse observable, qui n''existe pas pour des entreprises non cotées. Deux, quelles sont les trois éléments qu''une étude de cas rigoureuse doit toujours préciser ? Réponse : l''unité d''analyse, la stratégie d''échantillonnage, et les sources de données triangulées. Trois, dans le protocole sénégalais fictif construit en séance, pourquoi le choix de cas multiples plutôt qu''un cas unique ? Réponse : parce que la question porte sur des facteurs institutionnels susceptibles de varier selon la taille, le secteur et l''exposition à des bailleurs de fonds, ce qu''un cas unique ne permettrait pas de comparer. Quatre, citez une limite à anticiper explicitement dans ce protocole. Réponse : l''absence de généralisation statistique au-delà de l''échantillon étudié, ou le biais de déclaration lié à l''usage principal d''entretiens. Cinq, quel principe général doit guider le choix d''une méthode de recherche en comptabilité ? Réponse : la cohérence entre la question de recherche, le cadre théorique mobilisé et la méthode choisie, la méthode devant toujours être justifiée par son adéquation à l''objet étudié et à la population concernée.', 'video', 90, false, 80
from public.courses c where c.slug = 'doc-compta'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : les méthodes de recherche en comptabilité');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : s''entraîner sur une question de synthèse type', '## Fiche du cours vidéo

Durée : 1h30. Public : doctorants préparant un examen de qualification en comptabilité. Objectifs : s''entraîner en conditions réelles de temps à répondre à une question de synthèse type, mobilisant les deux courants théoriques et les méthodes de recherche étudiés. Matériel : chronomètre, papier pour prise de notes, diaporama avec le plan de réponse projeté progressivement. Prérequis : avoir suivi les trois vidéos précédentes.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture et consignes de l''entraînement

Bonjour à toutes et à tous. Cette séance est différente des trois précédentes : il ne s''agit plus d''apprendre un contenu nouveau, mais de vous entraîner, en conditions proches de la réalité d''un oral, à répondre à une question de synthèse type. Je vais vous donner la question, vous laisser un temps de préparation chronométré comme à l''oral, puis nous construirons ensemble le plan de réponse complet, section par section, avec les mêmes exigences qu''un jury doctoral. Prenez votre papier et votre chronomètre, nous allons vraiment nous mettre en situation.

## 05:00 – 10:00 · Énoncé et temps de préparation chronométré

Voici la question type, non officielle, construite pour cet entraînement : « Dans quelle mesure la recherche comptable peut-elle à la fois évaluer l''utilité de l''information financière pour les marchés de capitaux et interroger la comptabilité comme construction sociale ? Vous discuterez cette tension à partir du débat entre harmonisation comptable internationale et pertinence des référentiels comptables régionaux, et vous proposerez une méthode de recherche adaptée à l''étude de cette question dans un contexte africain. » Je vous laisse maintenant cinq minutes, comme à l''oral, pour noter au brouillon les grandes lignes de votre réponse, sans consulter vos notes de cours. Mettez la vidéo en pause si besoin, et reprenez une fois vos cinq minutes écoulées.

## 10:00 – 20:00 · Analyse de la question et construction du plan

Reprenons. Avant de répondre, un bon candidat décompose toujours la question en ses exigences implicites. Celle-ci en comporte quatre : présenter la théorie positive et sa lecture de l''utilité de l''information financière ; présenter les approches critiques et sociales et leur lecture de la construction sociale ; articuler les deux autour du débat IFRS contre référentiels régionaux ; proposer une méthode de recherche justifiée pour un contexte africain. Comparez ces quatre exigences à ce que vous avez noté pendant votre préparation. Avez-vous bien identifié les quatre, ou en avez-vous oublié une ? C''est souvent la quatrième, la proposition méthodologique, qui est oubliée ou traitée trop rapidement, alors qu''elle compte autant que les deux premières aux yeux d''un jury.

Construisons le plan en quatre temps : une introduction qui annonce la tension entre les deux lectures et le plan en trois parties ; un premier temps sur la lecture par l''utilité de l''information financière ; un deuxième temps sur la lecture par la construction sociale ; un troisième temps qui articule les deux et propose une méthode ; une conclusion qui ouvre sur la fécondité de cette tension pour un chercheur africain.

## 20:00 – 45:00 · Développement complet du plan, partie par partie

Développons maintenant chaque partie comme vous devriez le faire à l''oral, avec des phrases complètes, pas de simples mots-clés.

Introduction : la recherche comptable est traversée par une tension entre une tradition qui étudie la comptabilité comme information utile aux décisions des marchés financiers, et une tradition qui l''étudie comme construction sociale et politique. Cette tension s''illustre particulièrement bien dans le débat sur l''harmonisation comptable internationale face aux référentiels régionaux. Nous traiterons cette question en trois temps : la lecture par l''utilité informationnelle, la lecture par la construction sociale, puis leur articulation méthodologique.

Premier temps, la lecture par l''utilité de l''information financière. La théorie positive de la comptabilité postule que les choix et les normes comptables s''expliquent et se justifient par leur capacité à réduire l''incertitude des investisseurs et à faciliter l''allocation efficace du capital. Appliqué au débat qui nous occupe, l''argument en faveur de l''harmonisation internationale est que des normes communes et de qualité perçue élevée réduisent les coûts d''information et peuvent abaisser le coût du capital des entreprises qui les adoptent, ce qui est testable par des études d''événements autour des dates d''adoption. La limite de cet argument est qu''il suppose des marchés financiers suffisamment développés et liquides pour que l''effet soit mesurable, ce qui n''est pas la situation de la majorité des entreprises africaines.

Deuxième temps, la lecture par la construction sociale. Les approches critiques et sociales soutiennent que la comptabilité reflète et façonne des rapports de pouvoir, et que les normes comptables sont elles-mêmes le produit d''un processus institutionnel situé, pas une vérité technique universelle. Appliqué au même débat, les normes IFRS sont portées par des organismes et des intérêts principalement issus des économies les plus industrialisées, ce qui invite à interroger leur pertinence pour des économies où les marchés financiers sont étroits et où le tissu économique est dominé par des entreprises non cotées. Le référentiel régional SYSCOHADA se lit alors comme une réponse institutionnelle à des besoins et à des rapports de pouvoir économiques spécifiques à la région, et non comme un simple retard technique.

Troisième temps, articulation et proposition méthodologique. Ces deux lectures ne sont pas incompatibles : elles répondent à des questions différentes selon l''objet étudié. Pour une question sur la réaction des marchés financiers à l''adoption de nouvelles normes par de grandes entreprises cotées, une étude d''événements, cohérente avec la théorie positive, est pertinente. Pour une question sur la façon dont des petites entreprises non cotées perçoivent et appliquent un référentiel régional, une démarche qualitative et institutionnelle, cohérente avec les approches critiques et sociales, est plus appropriée. On peut même proposer un protocole combinant les deux regards : une étude d''événements limitée aux grandes entreprises africaines cotées ayant adopté les IFRS, complétée par une étude de cas qualitative auprès de petites entreprises restées au référentiel régional, afin de confronter les deux logiques sur un même terrain.

Conclusion : la tension entre les deux courants n''est pas un obstacle à résoudre, mais un objet d''étude en soi, particulièrement fécond pour un chercheur travaillant sur un contexte africain, où la coexistence de normes internationales et régionales offre un terrain naturel de comparaison.

## 45:00 – 50:00 · Quiz interactif

Pause active, cinq questions sur la méthode de réponse elle-même. Première question : combien d''exigences implicites une bonne analyse de la question type a-t-elle identifiées ? Réponse : quatre. Deuxième question : quelle exigence est le plus souvent oubliée ou sous-traitée par les candidats ? Réponse : la proposition et la justification d''une méthode de recherche adaptée. Troisième question : pourquoi faut-il annoncer le plan dès l''introduction dans une réponse orale de ce type ? Réponse : pour que le jury puisse suivre la structure de la réponse et évaluer si chaque partie annoncée est bien traitée. Quatrième question : qu''est-ce qui distingue une bonne articulation des deux courants d''une simple juxtaposition ? Réponse : expliquer le critère qui permet de choisir quel courant mobiliser selon la question posée, plutôt que de présenter les deux courants l''un après l''autre sans les relier. Cinquième question : pourquoi la conclusion proposée ouvre-t-elle sur la fécondité de la tension plutôt que de chercher à la refermer ? Réponse : parce qu''un jury valorise la capacité à voir une tension théorique comme un objet de recherche productif, pas comme un problème qu''il faudrait nécessairement résoudre.

## 50:00 – 1:20:00 · Simulation orale complète et retour sur erreurs fréquentes

Passons maintenant à une simulation orale complète. Je vous invite à reprendre votre plan préparé en début de séance, et à le présenter à voix haute, chronomètre en main, en visant quinze minutes maximum, comme le temps généralement imparti à un exposé de ce type devant un jury. Mettez la vidéo en pause et faites cet exercice maintenant, avant de continuer.

Une fois cet exercice réalisé, voici les erreurs les plus fréquentes que l''on observe chez des candidats qui s''entraînent sur ce type de question, et que vous devez vérifier n''avoir pas commises. Première erreur fréquente : présenter les deux courants théoriques sans jamais les relier explicitement au débat IFRS contre référentiels régionaux, en les traitant comme deux parties séparées sans lien apparent. Deuxième erreur : présenter le référentiel régional comme simplement inférieur aux IFRS, ce qui révèle une mauvaise compréhension du courant critique et social et de sa capacité à relativiser une hiérarchie supposée entre normes. Troisième erreur : proposer une méthode de recherche sans justifier son adéquation à la question posée, en se contentant de nommer une méthode à la fin de l''exposé sans expliquer pourquoi elle convient précisément à cet objet. Quatrième erreur : dépasser largement le temps imparti par excès de détail sur un seul courant, au détriment de l''articulation finale, qui est pourtant la partie la plus valorisée par le jury.

Comparez votre propre prestation à ces quatre erreurs fréquentes. Lesquelles avez-vous évitées, lesquelles devez-vous encore travailler avant votre soutenance réelle ?

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Pour conclure cette séance d''entraînement, retenez trois idées : une bonne réponse à une question de synthèse décompose toujours la question en exigences implicites avant de répondre ; l''articulation explicite entre les courants théoriques, plutôt que leur simple juxtaposition, est ce qui distingue le plus une bonne prestation ; et la proposition méthodologique finale doit toujours être justifiée par son adéquation à la question posée, pas simplement mentionnée.

Évaluation finale, cinq questions. Un, combien de temps un exposé oral de ce type dure-t-il généralement devant un jury ? Réponse : de l''ordre de quinze à trente minutes selon les établissements, suivi d''une phase de questions du jury. Deux, quelle est la première étape avant de répondre à une question de synthèse ? Réponse : décomposer la question en ses exigences implicites, pour s''assurer de n''en oublier aucune. Trois, pourquoi présenter un référentiel régional comme simplement inférieur à un référentiel international est-il une erreur de positionnement ? Réponse : parce que cela ignore la lecture critique et sociale, qui explique la pertinence différenciée des référentiels selon les besoins et les rapports de pouvoir propres à chaque contexte, plutôt que de supposer une hiérarchie technique universelle. Quatre, quelle est l''erreur la plus fréquente concernant la proposition méthodologique en fin de réponse ? Réponse : la mentionner sans la justifier par son adéquation à la question et à la population étudiée. Cinq, que doit viser la conclusion d''une réponse à ce type de question ? Réponse : montrer que la tension entre les courants théoriques est un objet de recherche fécond, pas un problème à trancher définitivement, en particulier pour un chercheur travaillant sur un contexte africain où coexistent normes internationales et régionales.', 'video', 90, false, 90
from public.courses c where c.slug = 'doc-compta'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : s''entraîner sur une question de synthèse type');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : simulation complète d''une soutenance de qualification doctorale', '## Fiche du cours vidéo

Durée : 1h30. Public : doctorants préparant un examen de qualification en comptabilité, en fin de préparation. Objectifs : vivre une simulation complète d''une soutenance de qualification doctorale, de la présentation initiale aux questions de jury, et s''auto-évaluer à l''aide d''une grille structurée. Matériel : chronomètre, grille d''auto-évaluation imprimée ou notée sur papier. Prérequis : avoir suivi les quatre vidéos précédentes et les cinq leçons texte du cours.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture : le principe de cette séance finale

Bonjour à toutes et à tous. Cette dernière séance est différente de toutes les précédentes : il n''y aura pas de nouveau contenu théorique. Nous allons simuler, du début à la fin, une soutenance de qualification doctorale en comptabilité, avec un candidat fictif, un projet de thèse fictif, et un jury qui pose des questions types. Mon objectif est double : vous montrer concrètement le déroulement complet d''une telle épreuve, et vous donner, à la fin, une grille d''auto-évaluation que vous pourrez réutiliser pour préparer votre propre soutenance réelle.

## 05:00 – 20:00 · Présentation du champ et du projet de thèse fictif (15 minutes)

Voici la présentation que ferait notre candidat fictif en ouverture de soutenance, pendant les quinze minutes qui lui sont généralement accordées.

« Mesdames et messieurs les membres du jury, mon travail de thèse porte sur la pertinence perçue des référentiels comptables par les petites et moyennes entreprises ouest-africaines, dans un contexte où coexistent les normes IFRS, destinées en priorité aux grandes entreprises cotées, et le référentiel régional SYSCOHADA, applicable à l''ensemble des entreprises de l''espace OHADA. Le champ de la recherche comptable, dans lequel je m''inscris, est traversé par une tension ancienne entre deux grandes lectures. La première, portée par la théorie positive de la comptabilité, explique les choix et les normes comptables par leur utilité pour réduire l''incertitude des investisseurs sur les marchés de capitaux, et les étudie notamment par des méthodes quantitatives comme l''étude d''événements sur les marchés financiers. La seconde, portée par les approches critiques et sociales de la comptabilité, lit les normes comptables comme des constructions institutionnelles situées, reflétant des rapports de pouvoir et des besoins d''information différenciés selon les contextes économiques, et les étudie plutôt par des méthodes qualitatives et institutionnelles.

Mon projet de thèse se positionne principalement dans la seconde lecture, pour une raison précise : mon objet d''étude, les petites et moyennes entreprises non cotées, est par définition hors du champ d''application des méthodes fondées sur les marchés financiers. Je mobiliserai donc un cadre néo-institutionnel pour comprendre pourquoi des entreprises non cotées adoptent, ou non, des pratiques inspirées des IFRS alors qu''elles relèvent légalement du référentiel SYSCOHADA, et quels facteurs institutionnels, au-delà de la seule obligation légale, expliquent leurs pratiques effectives.

Ma méthode de recherche envisagée est une étude de cas multiples, portant sur six à dix entreprises sénégalaises de secteurs contrastés, combinant entretiens semi-directifs avec les dirigeants et responsables comptables, et analyse documentaire de leurs états financiers. J''assume dès à présent deux limites de ce choix : l''absence de généralisation statistique à l''ensemble des petites entreprises ouest-africaines, et le risque de biais de déclaration lié à l''usage principal d''entretiens plutôt que d''une observation prolongée des pratiques réelles. Je vous remercie de votre attention et je reste à votre disposition pour vos questions. »

Voilà pour la présentation initiale. Remarquez sa structure : situer le champ et sa tension théorique, positionner son propre projet dans cette tension en justifiant ce choix, présenter la méthode envisagée, et assumer explicitement ses limites avant même que le jury ne les soulève. C''est exactement cette structure que vous devez reproduire pour votre propre présentation.

## 20:00 – 25:00 · Quiz interactif avant les questions de jury

Avant d''entendre les questions du jury fictif, testez-vous. Première question : pourquoi le candidat fictif choisit-il de se positionner principalement dans les approches critiques et sociales plutôt que dans la théorie positive ? Réponse : parce que son objet d''étude, des entreprises non cotées, est hors du champ d''application des méthodes fondées sur les marchés financiers, qui supposent un cours de bourse observable. Deuxième question : quelle méthode de recherche le candidat envisage-t-il, et pourquoi ? Réponse : une étude de cas multiples combinant entretiens et analyse documentaire, cohérente avec un cadre néo-institutionnel appliqué à des entreprises non cotées. Troisième question : quelles limites le candidat assume-t-il dès sa présentation initiale ? Réponse : l''absence de généralisation statistique et le risque de biais de déclaration lié aux entretiens. Quatrième question : pourquoi est-il stratégiquement utile d''assumer ses limites avant que le jury ne les soulève ? Réponse : cela démontre une maîtrise critique du projet et évite que le jury n''ait l''impression de révéler une faiblesse que le candidat aurait ignorée ou dissimulée. Cinquième question : quel élément de la présentation initiale rappelle explicitement la tension théorique du champ ? Réponse : la phrase qui oppose la théorie positive, centrée sur l''utilité pour les marchés, et les approches critiques et sociales, centrées sur les constructions institutionnelles et les rapports de pouvoir.

## 25:00 – 1:15:00 · Simulation des questions de jury (huit à dix questions)

Passons maintenant aux questions du jury fictif. Pour chacune, je vous laisse un court temps de réflexion, puis je donne la structure d''une bonne réponse, comme la donnerait notre candidat.

Première question du jury : « Pourquoi n''avoir pas envisagé une étude d''événements, qui est pourtant une méthode reconnue en recherche comptable ? » Structure de bonne réponse : rappeler que cette méthode suppose un cours de bourse observable, inexistant pour la population étudiée, et affirmer que le choix méthodologique découle de la question de recherche et de la population, pas d''un rejet de la méthode en général.

Deuxième question : « Votre échantillon de six à dix entreprises n''est-il pas trop restreint pour conclure quoi que ce soit ? » Structure de bonne réponse : assumer que l''objectif n''est pas une généralisation statistique mais une compréhension en profondeur de mécanismes institutionnels, qui pourront ensuite nourrir des hypothèses testables sur un échantillon plus large par une autre méthode.

Troisième question : « En quoi votre travail n''est-il pas qu''une simple description de ce que disent des dirigeants interrogés ? » Structure de bonne réponse : préciser que l''analyse ne se limite pas à rapporter les discours mais à les coder thématiquement, à les comparer systématiquement entre les cas, et à les interpréter à la lumière du cadre néo-institutionnel mobilisé.

Quatrième question : « Pensez-vous que le référentiel SYSCOHADA est moins pertinent que les IFRS pour ces entreprises ? » Structure de bonne réponse : refuser l''opposition binaire, et répondre que la pertinence d''un référentiel dépend des besoins d''information des utilisateurs concernés, le SYSCOHADA répondant à des besoins propres à la région, sans que cela implique une infériorité technique.

Cinquième question : « Comment gérerez-vous le biais de déclaration que vous évoquez vous-même ? » Structure de bonne réponse : proposer une triangulation avec les documents comptables disponibles, et reconnaître que ce biais ne peut pas être totalement éliminé mais seulement atténué, ce qu''il faut assumer plutôt que promettre une solution parfaite.

Sixième question : « Votre cadre néo-institutionnel ne risque-t-il pas de négliger les motivations économiques réelles des dirigeants ? » Structure de bonne réponse : reconnaître que le cadre institutionnel met l''accent sur la légitimité et l''imitation plutôt que sur le seul calcul économique, mais préciser que les entretiens permettront justement de recueillir aussi les justifications économiques exprimées par les dirigeants, sans présupposer leur absence.

Septième question : « Quelle serait la contribution originale de votre thèse par rapport à la littérature existante sur ce sujet ? » Structure de bonne réponse : situer précisément l''apport, par exemple l''étude d''un contexte sénégalais spécifique encore peu documenté, ou la comparaison entre secteurs contrastés, en évitant une réponse vague comme « mon contexte est différent » sans préciser en quoi cette différence change l''analyse.

Huitième question : « Si vos résultats montrent que les entreprises adoptent des pratiques IFRS malgré l''absence d''obligation légale, comment l''interpréterez-vous ? » Structure de bonne réponse : proposer une interprétation cohérente avec le cadre mobilisé, par exemple une pression de légitimité liée à des bailleurs de fonds ou à des partenaires commerciaux internationaux, plutôt qu''une conclusion hâtive sur la supériorité technique des IFRS.

Neuvième question : « Votre calendrier de thèse vous semble-t-il réaliste au regard de la méthode choisie ? » Structure de bonne réponse : présenter un calendrier indicatif découpé en phases (revue de littérature, collecte de données, analyse, rédaction), en reconnaissant les risques de retard les plus probables, par exemple la disponibilité des dirigeants pour les entretiens.

Dixième question : « Quel usage pratique un régulateur ou une organisation professionnelle pourrait-il faire de vos résultats ? » Structure de bonne réponse : proposer un usage raisonnable et modeste, par exemple mieux comprendre les freins à l''adoption de certaines pratiques comptables pour adapter l''accompagnement des petites entreprises, sans promettre une recommandation normative que l''étude ne permettrait pas de fonder seule.

## 1:15:00 – 1:30:00 · Grille d''auto-évaluation de la soutenance simulée

Cette séance, et ce cours, se concluent non par une évaluation à cinq questions mais par une grille d''auto-évaluation que vous devez remplir vous-même après avoir simulé votre propre soutenance, seul ou avec des pairs. Pour chacun des critères suivants, notez-vous honnêtement de un à quatre : un, insuffisant ; deux, à améliorer ; trois, satisfaisant ; quatre, maîtrisé.

Critère un : clarté du positionnement théorique dès la présentation initiale, sans attendre une question du jury pour le préciser.
Critère deux : justification explicite du choix méthodologique par son adéquation à la question de recherche et à la population étudiée, plutôt que par habitude.
Critère trois : capacité à assumer les limites de son projet avant que le jury ne les soulève, sans les dissimuler ni les minimiser.
Critère quatre : capacité à articuler les courants théoriques du champ plutôt que de les juxtaposer ou d''en rejeter un en bloc.
Critère cinq : qualité du dialogue avec le jury, c''est-à-dire la capacité à reformuler une objection, à distinguer ce qui est accepté de ce qui est nuancé, sans se contredire ni se braquer.
Critère six : respect du temps imparti à la présentation initiale, sans sacrifier les parties les plus importantes par excès de détail sur les parties moins centrales.
Critère sept : précision des réponses aux questions sur la contribution originale du projet, en évitant les formules vagues non étayées.
Critère huit : réalisme et honnêteté du calendrier de thèse présenté, avec reconnaissance des risques probables.

Additionnez vos points sur ces huit critères. Un score élevé indique une préparation solide ; un score faible sur un critère précis indique exactement où concentrer votre travail dans les jours qui précèdent votre soutenance réelle. Ce cours se termine ici : vous disposez maintenant des deux courants théoriques du champ, des méthodes de recherche propres à la comptabilité, d''un exemple complet d''épreuve type, et d''une simulation entière de soutenance. La suite du travail vous appartient : répétez, faites-vous challenger par des pairs ou par votre directeur de thèse, et présentez-vous à l''épreuve avec la même honnêteté critique que celle démontrée par le candidat fictif de cette séance.', 'video', 90, false, 100
from public.courses c where c.slug = 'doc-compta'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : simulation complète d''une soutenance de qualification doctorale');
