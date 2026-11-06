-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Cours (partie 19/19). À exécuter après seed.sql.

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

-- Cours : Doctorat Finance : préparer l'examen de qualification doctorale
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'doc-fin', (select id from public.levels where name = 'Doctorat'), null, 'Finance', 'Doctorat Finance : préparer l''examen de qualification doctorale', 'Préparation à l''examen de qualification doctorale en Finance : hypothèse d''efficience des marchés face à la finance comportementale, théorème de Modigliani-Miller et ses extensions sur la structure de financement, méthodes de recherche du champ (études d''événements, économétrie financière, enquêtes de dirigeants) et application critique aux marchés financiers en développement d''Afrique de l''Ouest. Public : doctorants en finance préparant leur soutenance de qualification. Prérequis : Master en finance ou en gestion financière.', true, 806
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir son examen de qualification doctorale en Finance', 'La thèse de doctorat en finance se prépare par étapes, et l''une des premières, souvent la plus redoutée, est l''examen de qualification doctorale (comprehensive exam). Cette leçon pose le cadre de cette épreuve et donne une méthode de travail pour s''y préparer sur plusieurs semaines, avant d''entrer dans le détail des courants théoriques et des méthodes propres au champ de la finance.

## Nature de l''épreuve

L''examen de qualification n''est pas un examen de cours comme en Master : il vérifie que le doctorant maîtrise l''état de l''art de la discipline financière, qu''il est capable de situer n''importe quelle question dans les grands débats théoriques (efficience des marchés, structure de financement, gouvernance, risque), et qu''il peut déjà esquisser une problématique de thèse cohérente avec cette littérature. Trois formats se combinent, selon les établissements : une épreuve écrite de synthèse (répondre à une ou plusieurs questions larges du champ, en mobilisant plusieurs courants et auteurs), une soutenance orale devant un jury de 3 à 5 enseignants-chercheurs, et la défense d''un pré-projet de thèse (problématique, revue de littérature initiale, méthode envisagée). Le jury n''attend pas une récitation de cours : il juge la capacité à comparer des cadres théoriques concurrents (par exemple l''hypothèse d''efficience des marchés face à la finance comportementale), à discuter leurs limites empiriques, et à argumenter pourquoi telle méthode de recherche convient à telle question.

## Attentes d''un jury doctoral en finance

Un jury de qualification en finance évalue généralement cinq points : la maîtrise des grands courants théoriques et de leur généalogie (qui a proposé quoi, et pourquoi, sans réciter des citations exactes non vérifiées) ; la capacité à articuler théorie et méthode (quelle méthode d''investigation permet de tester telle hypothèse théorique) ; l''esprit critique (savoir citer les limites d''un courant, les anomalies empiriques qui le contestent, les extensions qui l''ont enrichi) ; la capacité à transposer une théorie construite sur des marchés financiers profonds (Bourses de New York, Paris, Londres) à un contexte de marché financier peu profond, comme celui de l''Afrique de l''Ouest (BRVM) ; et enfin la clarté de l''expression, à l''écrit comme à l''oral, qui est elle-même jugée comme une compétence de chercheur.

## Méthode de travail recommandée

Trois outils structurent une préparation efficace. D''abord, la fiche de lecture : pour chaque article ou ouvrage fondateur, noter en une page la question posée, l''hypothèse testée, la méthode employée, le résultat principal et sa limite ; cette fiche doit pouvoir se relire en moins de deux minutes la veille de l''oral. Ensuite, la cartographie des courants : un schéma (sur une feuille ou un tableau) qui place chaque courant théorique en vis-à-vis de ceux qui le prolongent ou le contestent, avec les dates approximatives et les grandes idées, pas les équations complètes. Enfin, la note de synthèse : un document de quelques pages qui résume, pour chaque grand débat du programme (ici : efficience des marchés contre finance comportementale ; structure de financement et théorème de Modigliani-Miller), les positions en présence, les preuves empiriques de part et d''autre, et une appréciation personnelle argumentée — c''est cette capacité à prendre position avec nuance qui distingue un candidat brillant d''un candidat qui récite.

## Plan de travail sur 8 semaines

Une préparation réaliste s''étale sur huit semaines, avec un rythme hebdomadaire tenable pour un doctorant qui avance aussi sur sa thèse.

- Semaines 1-2 : relecture des bases de la théorie financière (valeur, risque, rendement, marchés) et premières fiches de lecture sur l''hypothèse d''efficience des marchés.
- Semaines 3-4 : approfondissement de la finance comportementale et des anomalies de marché ; début de la cartographie comparant les deux courants.
- Semaines 5-6 : théorème de Modigliani-Miller et ses extensions (fiscalité, coûts de faillite, asymétrie d''information) ; lecture sur les marchés financiers en développement (cas de la BRVM en Afrique de l''Ouest).
- Semaine 7 : méthodes de recherche en finance (études d''événements, modélisation économétrique de séries financières, enquêtes auprès de dirigeants financiers) ; rédaction des notes de synthèse.
- Semaine 8 : simulation d''oral avec un collègue ou un encadrant, révision des fiches, relecture du pré-projet de thèse.

## Points clés à retenir

- L''examen de qualification teste la maîtrise du champ, pas la restitution d''un cours : il faut comparer, critiquer, articuler théorie et méthode.
- Trois outils de travail : fiche de lecture, cartographie des courants, note de synthèse.
- La préparation se répartit sur 8 semaines, avec une place centrale pour la confrontation efficience/finance comportementale et pour le débat sur la structure de financement.
- Toujours savoir transposer un cadre théorique construit sur des marchés développés à un contexte de marché financier en développement, comme celui de l''Afrique de l''Ouest.

## Exercices pratiques

1. Rédigez en une page la fiche de lecture type que vous utiliseriez pour un article fondateur de l''hypothèse d''efficience des marchés (sans citer le contenu exact de l''article, en décrivant la structure attendue de votre fiche).
2. Construisez le squelette d''une cartographie des courants opposant l''hypothèse d''efficience des marchés et la finance comportementale : quelles entrées (auteurs, dates, idées, critiques) feriez-vous figurer ?
3. Proposez un plan de travail hebdomadaire alternatif sur 8 semaines si vous disposiez de deux fois moins de temps (4 semaines) : que garderiez-vous, que sacrifieriez-vous ?
4. Un jury vous demande : « Pourquoi la finance comportementale ne remplace-t-elle pas simplement l''hypothèse d''efficience des marchés ? » Esquissez en 10 lignes les grandes lignes d''une réponse nuancée.
5. Expliquez en quoi la défense d''un pré-projet de thèse diffère d''une restitution de cours de Master en finance d''entreprise.

## Corrigé

1. Une fiche de lecture de qualification doit comporter : la question de recherche posée par l''article, l''hypothèse testée, le contexte de marché étudié (pays, période, type d''actifs), la méthode empirique utilisée, le résultat principal reformulé avec ses propres mots, et une limite ou une critique identifiée dans la littérature postérieure. Elle ne doit jamais comporter de citation textuelle exacte non vérifiée, mais une reformulation fidèle de l''apport.

2. Une cartographie utile distingue au moins quatre colonnes : la période approximative d''émergence de l''idée, les grandes hypothèses du courant (marchés efficients : prix reflètent toute l''information disponible ; finance comportementale : biais cognitifs des investisseurs, anomalies de marché), les preuves empiriques mobilisées de part et d''autre, et les prolongements ou critiques qui relient les deux courants (par exemple les modèles qui intègrent des agents partiellement rationnels).

3. Avec 4 semaines, il faut fusionner les étapes : semaine 1 pour les deux courants théoriques en parallèle (efficience et finance comportementale), semaine 2 pour Modigliani-Miller et ses extensions avec le contexte des marchés en développement, semaine 3 pour les méthodes de recherche condensées, semaine 4 pour la simulation d''oral et la révision. On sacrifie la profondeur de lecture (moins d''articles par courant) mais on conserve la structure comparative, qui est ce que le jury évalue réellement.

4. Une réponse nuancée rappellerait que l''hypothèse d''efficience des marchés reste un point de référence utile (elle explique pourquoi il est difficile de « battre le marché » de façon régulière), que la finance comportementale documente des anomalies récurrentes (sous-réaction ou surréaction à l''information, biais de confiance excessive) sans pour autant proposer un cadre prédictif unifié aussi simple, et que la recherche actuelle tend à combiner les deux approches plutôt qu''à les opposer frontalement : les marchés seraient efficients « en moyenne » avec des écarts transitoires exploitables sous certaines conditions.

5. En Master, l''étudiant résout un cas d''entreprise avec les outils déjà établis du champ (il applique une méthode connue à une situation donnée). En doctorat, le pré-projet de thèse doit identifier un vide ou une tension dans la littérature existante (par exemple : la théorie de Modigliani-Miller a-t-elle été testée sur un marché financier peu profond comme celui de l''Afrique de l''Ouest ?), formuler une question de recherche originale, et proposer une méthode pour y répondre — l''enjeu n''est plus d''appliquer un savoir mais d''en produire.', 'texte', 45, true, 10
from public.courses c where c.slug = 'doc-fin'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir son examen de qualification doctorale en Finance');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Courant théorique 1 : l''hypothèse d''efficience des marchés face à la finance comportementale', 'Le premier grand débat du programme oppose deux visions de la formation des prix sur les marchés financiers : l''hypothèse d''efficience des marchés, qui postule une intégration rapide et complète de l''information dans les cours, et la finance comportementale, qui documente des biais systématiques des investisseurs et des anomalies persistantes. Comprendre ce débat, ses auteurs fondateurs et ses limites est un passage obligé de tout examen de qualification en finance.

## L''hypothèse d''efficience des marchés

L''hypothèse d''efficience des marchés (Efficient Market Hypothesis, EMH) soutient que les prix des actifs financiers reflètent, à chaque instant, toute l''information disponible sur leur valeur fondamentale. Le cadre le plus connu a été formalisé par Eugene Fama, qui distingue trois formes d''efficience : la forme faible (les prix intègrent toute l''information contenue dans les cours passés, ce qui rend l''analyse technique vaine pour générer un profit régulier) ; la forme semi-forte (les prix intègrent aussi toute l''information publique disponible, ce qui rend l''analyse fondamentale classique peu utile pour « battre le marché ») ; et la forme forte (les prix intègrent même l''information privée, y compris celle des initiés, ce qui est la version la plus contestée empiriquement). L''implication centrale de l''EMH est qu''il devient très difficile, sur la durée, d''obtenir un rendement ajusté au risque systématiquement supérieur à celui du marché, sauf à détenir une information non encore intégrée aux prix.

## Les fondements théoriques de l''efficience

L''EMH repose sur l''idée que les investisseurs sont globalement rationnels et que, même si certains se trompent, leurs erreurs s''annulent en moyenne et sont corrigées par l''arbitrage : si un titre est mal évalué, des investisseurs informés profitent de l''écart jusqu''à ce que le prix revienne à sa valeur fondamentale. Cette hypothèse s''articule avec la marche aléatoire des cours (random walk), observée empiriquement sur de nombreux marchés développés : les variations de prix d''un jour sur l''autre ne sont pas prévisibles à partir des variations passées. L''EMH a longtemps structuré la gestion de portefeuille (avec le développement de la gestion indicielle, qui part du principe qu''il est difficile de surperformer le marché de façon régulière) et la réglementation financière (qui mise sur la diffusion rapide de l''information pour protéger les investisseurs).

## La finance comportementale : biais cognitifs des investisseurs

À partir des années 1980-1990, un courant dit de finance comportementale, nourri par les travaux de psychologie cognitive de Daniel Kahneman et Amos Tversky puis développé en finance notamment par Richard Thaler et Robert Shiller, a mis en cause le postulat de rationalité pleine des investisseurs. Ce courant documente des biais cognitifs récurrents : l''excès de confiance (les investisseurs surestiment la précision de leurs propres informations), l''aversion à la perte (une perte est ressentie plus douloureusement qu''un gain équivalent n''est ressenti comme agréable, ce qui pousse à conserver trop longtemps des titres perdants), le biais d''ancrage (les décisions restent influencées par une information initiale, même non pertinente), et le comportement moutonnier (suivre la tendance du groupe plutôt que sa propre analyse). Ces biais ne sont pas de simples erreurs individuelles qui s''annuleraient en moyenne : la finance comportementale montre qu''ils peuvent se renforcer collectivement et affecter durablement les prix de marché.

## Les anomalies de marché documentées

Plusieurs anomalies empiriques sont régulièrement citées comme difficiles à expliquer par la seule hypothèse d''efficience : l''effet taille (les petites capitalisations auraient historiquement généré un rendement ajusté au risque supérieur aux grandes capitalisations, sur certaines périodes et certains marchés) ; l''effet momentum (les titres ayant bien performé récemment continueraient à bien performer sur un horizon de quelques mois, ce qui contredit une marche parfaitement aléatoire) ; les bulles spéculatives et leur éclatement (des hausses de prix prolongées et déconnectées des fondamentaux, suivies de corrections brutales) ; et la volatilité excessive des cours par rapport à celle des fondamentaux économiques sous-jacents, mise en évidence par Robert Shiller. Ces anomalies ne signifient pas que les marchés sont totalement inefficients, mais qu''ils comportent des écarts persistants que l''EMH stricte a du mal à expliquer.

## Un débat en évolution plutôt qu''un affrontement tranché

La recherche contemporaine tend à dépasser l''opposition frontale entre les deux courants. Les modèles dits d''« efficience adaptative » (prolongeant notamment les travaux d''Andrew Lo) proposent que les marchés évoluent entre des phases plus ou moins efficientes selon les conditions, à l''image d''un écosystème où biais comportementaux et arbitrage rationnel coexistent et se limitent mutuellement. La finance comportementale ne nie d''ailleurs pas l''utilité du concept d''efficience comme point de référence : elle cherche plutôt à expliquer pourquoi et quand des écarts aux prix fondamentaux apparaissent et durent, notamment lorsque l''arbitrage est coûteux ou risqué (limites à l''arbitrage). La bonne posture doctorale consiste donc à présenter les deux courants non comme des blocs opposés, mais comme deux grilles de lecture complémentaires, pertinentes selon le contexte de marché, le type d''actif et l''horizon considéré.

## Application à un marché financier en développement

La question de l''efficience se pose avec une acuité particulière sur les marchés financiers peu profonds, comme la Bourse Régionale des Valeurs Mobilières (BRVM) qui couvre l''Afrique de l''Ouest. Un nombre réduit de titres cotés, des volumes d''échange faibles, une information financière parfois moins standardisée et une base d''investisseurs institutionnels plus restreinte créent des conditions moins favorables à une efficience de forme semi-forte : l''information y circule plus lentement et l''arbitrage y est souvent plus coûteux, ce qui laisse davantage de place à des écarts de prix durables. Cela ne signifie pas que la BRVM est « inefficiente » par nature, mais que les deux grilles de lecture doivent y être mobilisées avec prudence, sans extrapoler des résultats obtenus sur des places boursières très liquides comme New York ou Londres.

## Points clés à retenir

- L''hypothèse d''efficience des marchés distingue trois formes (faible, semi-forte, forte) et repose sur la rationalité moyenne des investisseurs et l''arbitrage.
- La finance comportementale documente des biais cognitifs individuels (excès de confiance, aversion à la perte, ancrage, mimétisme) et des anomalies de marché (effet taille, momentum, bulles, volatilité excessive).
- La recherche récente tend à articuler les deux courants plutôt qu''à les opposer (efficience adaptative, limites à l''arbitrage).
- Sur un marché peu profond comme la BRVM, les conclusions obtenues sur des marchés développés doivent être transposées avec prudence.

## Exercices pratiques

1. Distinguez les trois formes d''efficience des marchés et donnez, pour chacune, un exemple de stratégie d''investissement qu''elle rendrait, en théorie, sans intérêt.
2. Expliquez en quoi l''aversion à la perte et le comportement moutonnier peuvent se combiner pour amplifier une baisse de marché.
3. Un doctorant affirme : « L''effet momentum prouve que les marchés sont inefficients. » Discutez cette affirmation de façon nuancée.
4. En quoi la notion de « limites à l''arbitrage » permet-elle de concilier l''existence d''anomalies de marché avec l''idée d''efficience ?
5. Pourquoi la profondeur et la liquidité d''un marché financier doivent-elles être prises en compte avant de transposer une conclusion sur l''efficience obtenue sur une grande Bourse internationale à un marché comme la BRVM ?
6. Proposez un plan de réponse (titres de parties uniquement) pour une question d''examen : « Efficience des marchés et finance comportementale : deux théories inconciliables ? »

## Corrigé

1. Forme faible : une stratégie fondée uniquement sur l''historique des cours (analyse technique) ne devrait pas permettre de surperformer durablement. Forme semi-forte : une stratégie fondée sur l''analyse des informations publiques (résultats publiés, annonces) ne devrait pas non plus permettre de surperformer durablement, puisque l''information est déjà intégrée aux prix. Forme forte : même une stratégie fondée sur une information privée (délit d''initié) ne devrait, en théorie, pas permettre de surperformer, ce qui est la forme la plus contestée empiriquement.

2. Lorsque les prix commencent à baisser, l''aversion à la perte peut pousser certains investisseurs à vendre précipitamment pour éviter une perte ressentie comme très douloureuse ; d''autres investisseurs, observant ce mouvement de vente, peuvent l''imiter par comportement moutonnier sans analyse individuelle approfondie, ce qui amplifie la baisse au-delà de ce que justifieraient les seuls fondamentaux économiques, créant une spirale baissière auto-entretenue.

3. L''affirmation est trop catégorique. L''effet momentum est une anomalie statistique documentée sur certaines périodes et certains marchés, mais il ne prouve pas que les marchés sont inefficients au sens strict : il peut s''expliquer par une sous-réaction initiale à l''information (les prix s''ajustent progressivement plutôt qu''instantanément) ou par des facteurs de risque non encore identifiés dans les modèles d''évaluation utilisés pour mesurer la performance ajustée au risque. Une réponse nuancée distingue ces explications concurrentes plutôt que de conclure directement à l''inefficience.

4. Les limites à l''arbitrage expliquent pourquoi un écart de prix par rapport à la valeur fondamentale peut persister même si des investisseurs rationnels l''identifient : l''arbitrage peut être coûteux (frais de transaction, difficulté à vendre à découvert), risqué (l''écart peut s''accentuer avant de se corriger, ce qui met en péril la position de l''arbitragiste) ou limité par des contraintes de capital. Cela permet de concilier l''existence d''anomalies avec l''idée que les marchés tendent, à terme, vers l''efficience.

5. Un marché peu liquide et peu profond concentre l''information sur un nombre réduit d''acteurs, ralentit la diffusion et le traitement de l''information, et rend l''arbitrage plus coûteux ou plus risqué faute de contreparties suffisantes. Les résultats empiriques obtenus sur des marchés très liquides (comme New York) supposent des conditions (nombreux arbitragistes, information standardisée, coûts de transaction faibles) qui ne sont pas automatiquement réunies sur un marché comme la BRVM, d''où la nécessité de tester spécifiquement l''efficience sur ce contexte plutôt que de l''assumer par analogie.

6. Plan possible : I. L''hypothèse d''efficience des marchés : fondements et formes. II. La finance comportementale : biais cognitifs et anomalies documentées. III. Des théories concurrentes en apparence : les points de friction empirique. IV. Vers une articulation plutôt qu''une opposition : efficience adaptative et limites à l''arbitrage. V. Application prudente au cas des marchés financiers en développement (exemple de la BRVM).', 'texte', 45, false, 20
from public.courses c where c.slug = 'doc-fin'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Courant théorique 1 : l''hypothèse d''efficience des marchés face à la finance comportementale');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Courant théorique 2 : la structure de financement, de Modigliani-Miller à ses extensions', 'Le deuxième grand débat du programme porte sur la structure de financement de l''entreprise : la combinaison entre dette et capitaux propres a-t-elle, ou non, un effet sur la valeur de l''entreprise ? C''est l''une des questions fondatrices de la finance d''entreprise moderne, ouverte par le théorème de Modigliani-Miller, puis prolongée par de nombreuses extensions qui réintroduisent les frictions du monde réel.

## Le théorème de Modigliani-Miller en marchés parfaits

En 1958, Franco Modigliani et Merton Miller démontrent un résultat qui a durablement structuré la finance d''entreprise : sous des hypothèses de marchés parfaits (absence d''impôt, absence de coûts de transaction et de faillite, information parfaitement partagée entre tous les acteurs, possibilité pour les investisseurs d''emprunter et de prêter au même taux que l''entreprise), la valeur totale d''une entreprise ne dépend pas de la façon dont elle est financée, c''est-à-dire de la répartition entre dette et capitaux propres. C''est la proposition I de Modigliani-Miller (MM1) : deux entreprises ayant les mêmes actifs et les mêmes flux de trésorerie futurs ont la même valeur totale, quelle que soit leur structure de financement, car un investisseur peut toujours reproduire par lui-même, en empruntant ou en prêtant à titre personnel, l''effet d''un levier financier que l''entreprise n''aurait pas choisi (c''est l''argument dit de l''arbitrage, ou « home-made leverage »). La proposition II (MM2) complète ce résultat : le coût des capitaux propres augmente avec le niveau d''endettement, car les actionnaires supportent un risque financier croissant, mais cette hausse compense exactement l''avantage apparent d''une dette moins chère, si bien que le coût moyen pondéré du capital reste constant.

## Pourquoi ce résultat est un point de départ, pas une conclusion

Le théorème de Modigliani-Miller n''a jamais eu pour objectif de décrire la réalité des entreprises : il visait à identifier, par la négative, les frictions réelles qui font que la structure de financement compte en pratique. C''est précisément parce que les hypothèses de MM1 sont irréalistes qu''elles sont utiles : chaque hypothèse relâchée a donné naissance à une extension théorique qui explique une partie des choix de financement observés dans la réalité des entreprises.

## Extension 1 : la fiscalité et l''avantage de la dette

Lorsque l''on réintroduit l''impôt sur les sociétés, la dette devient fiscalement avantageuse : les intérêts versés aux créanciers sont généralement déductibles du résultat imposable, ce qui crée une économie d''impôt (parfois appelée « bouclier fiscal ») qui accroît la valeur de l''entreprise endettée par rapport à une entreprise non endettée, toutes choses égales par ailleurs. Cette extension prédit que les entreprises devraient, en théorie, chercher à s''endetter fortement pour maximiser cet avantage fiscal — ce qui ne correspond pourtant pas aux niveaux d''endettement modérés observés dans la réalité, d''où la nécessité d''autres extensions pour comprendre ce qui limite le recours à la dette.

## Extension 2 : les coûts de faillite et de détresse financière

Un endettement croissant augmente la probabilité qu''une entreprise ne puisse plus honorer ses engagements, et donc la probabilité d''une faillite ou d''une restructuration coûteuse. Ces coûts de faillite ne sont pas seulement les frais juridiques et administratifs directs d''une procédure : ils incluent aussi des coûts indirects, souvent plus importants, comme la perte de confiance des clients et fournisseurs, le départ de salariés clés, ou les décisions d''investissement sous-optimales prises par une entreprise financièrement fragile (parfois appelées coûts de détresse financière). La théorie du compromis (trade-off theory) combine cette extension avec l''avantage fiscal de la dette : l''entreprise choisirait un niveau d''endettement qui maximise l''avantage fiscal net des coûts attendus de détresse financière, ce qui explique l''existence d''un niveau d''endettement optimal, ni nul ni maximal.

## Extension 3 : l''asymétrie d''information

Une troisième extension, portée notamment par les travaux de Stewart Myers sur la théorie du financement hiérarchique (pecking order theory), part du constat que les dirigeants disposent généralement de plus d''informations sur la valeur réelle de l''entreprise que les investisseurs externes. Cette asymétrie d''information a une consequence directe sur le choix des sources de financement : émettre de nouvelles actions peut être interprété par le marché comme un signal négatif (si les dirigeants pensent que l''action est surévaluée, ils ont intérêt à émettre maintenant, ce que le marché anticipe et sanctionne par une baisse du cours à l''annonce). Les entreprises préfèrent donc, selon cette théorie, financer leurs projets dans un ordre hiérarchique : d''abord l''autofinancement (bénéfices non distribués), puis la dette, et seulement en dernier recours l''émission de nouvelles actions. Cette théorie n''explique pas un niveau d''endettement optimal précis, mais plutôt une séquence de préférences qui s''écarte de la recherche d''un optimum fixe.

## Synthèse des extensions et débat actuel

Les trois grandes extensions (fiscalité, coûts de faillite, asymétrie d''information) ne s''excluent pas : elles éclairent des aspects complémentaires du choix de financement, et la recherche contemporaine cherche à les combiner avec d''autres dimensions, comme les problèmes d''agence entre dirigeants et actionnaires (l''endettement peut aussi discipliner les dirigeants en réduisant les ressources qu''ils contrôlent librement) ou les conditions macroéconomiques et le cycle de marché (une entreprise émet plus facilement des actions lorsque les valorisations de marché sont élevées). Un bon candidat à l''examen de qualification doit pouvoir mobiliser ces extensions ensemble, en situant chacune par rapport au résultat de référence de Modigliani-Miller.

## Application à un marché financier en développement (Afrique de l''Ouest)

Les hypothèses de marchés parfaits de Modigliani-Miller sont déjà fortement contestées sur les marchés financiers développés ; elles le sont davantage encore sur un marché financier peu profond comme la zone UEMOA et la BRVM. Trois spécificités doivent être prises en compte lorsqu''on y applique ces cadres théoriques. D''abord, l''accès au financement obligataire ou boursier y est limité à un nombre restreint de grandes entreprises, ce qui pousse la majorité des entreprises, notamment les petites et moyennes entreprises, à dépendre fortement du crédit bancaire, rendant la théorie du financement hiérarchique particulièrement pertinente dans ce contexte. Ensuite, l''asymétrie d''information y est potentiellement plus marquée, du fait d''états financiers parfois moins standardisés ou moins audités selon les entreprises, ce qui renforce les prédictions de la pecking order theory sur la préférence pour l''autofinancement et la dette bancaire. Enfin, les coûts de faillite et de détresse financière peuvent y être amplifiés par un cadre judiciaire de traitement des difficultés d''entreprise encore en consolidation selon les pays, ce qui peut rendre les créanciers plus prudents et renchérir le coût de la dette au-delà de ce que prédirait un modèle calibré sur un marché développé. Un travail doctoral sérieux doit donc tester empiriquement ces extensions sur des données locales plutôt que de transposer sans vérification des résultats obtenus ailleurs.

## Points clés à retenir

- MM1 : en marchés parfaits, la valeur de l''entreprise est indépendante de sa structure de financement ; MM2 : le coût des capitaux propres croît avec l''endettement pour compenser le risque financier accru.
- Trois extensions majeures réintroduisent les frictions réelles : l''avantage fiscal de la dette, les coûts de faillite et de détresse financière (théorie du compromis), et l''asymétrie d''information (théorie du financement hiérarchique).
- Ces extensions se combinent plutôt qu''elles ne s''excluent, et se complètent avec les théories d''agence et les effets de cycle de marché.
- Sur un marché financier en développement comme la zone UEMOA, l''accès restreint aux marchés de capitaux, une asymétrie d''information potentiellement plus marquée et un cadre de traitement des défaillances en consolidation justifient une vérification empirique locale plutôt qu''une transposition directe.

## Exercices pratiques

1. Énoncez la proposition I de Modigliani-Miller et expliquez le rôle de l''argument d''arbitrage (« home-made leverage ») dans sa démonstration.
2. Pourquoi l''avantage fiscal de la dette, pris isolément, prédirait-il un endettement maximal, et quelle extension vient corriger cette prédiction ?
3. Expliquez le mécanisme par lequel une émission d''actions peut être perçue négativement par le marché selon la théorie du financement hiérarchique.
4. Un dirigeant sénégalais affirme : « Puisque la dette est fiscalement avantageuse, mon entreprise doit s''endetter au maximum. » Discutez cette affirmation à la lumière des extensions de Modigliani-Miller.
5. En quoi la faible profondeur du marché obligataire et boursier en zone UEMOA renforce-t-elle la pertinence de la théorie du financement hiérarchique pour les PME de la région ?
6. Proposez un plan de réponse (titres de parties uniquement) pour la question : « La structure de financement est-elle neutre sur la valeur de l''entreprise ? »

## Corrigé

1. MM1 énonce que la valeur totale d''une entreprise est indépendante de sa structure de financement en marchés parfaits. L''argument d''arbitrage montre qu''un investisseur peut reproduire à titre personnel, en empruntant ou en prêtant lui-même, l''effet de levier qu''une entreprise choisirait ; si deux entreprises identiques par ailleurs avaient des valeurs différentes du seul fait de leur endettement, un investisseur pourrait acheter l''entreprise sous-évaluée et vendre à découvert la surévaluée pour un profit sans risque, ce qui ramènerait les prix à l''égalité.

2. Un endettement croissant maximiserait l''économie d''impôt si cette seule force agissait ; mais la théorie des coûts de faillite et de détresse financière montre qu''au-delà d''un certain seuil, la probabilité et le coût attendu des difficultés financières croissent plus vite que l''avantage fiscal marginal, ce qui crée un niveau d''endettement optimal intermédiaire plutôt qu''un maximum.

3. Si les dirigeants, mieux informés que le marché, savent que l''action est surévaluée, ils ont intérêt à émettre de nouvelles actions pour profiter de ce prix avantageux ; les investisseurs, anticipant ce comportement rationnel des dirigeants, interprètent toute annonce d''émission comme un signal probable de surévaluation et révisent le cours à la baisse, ce qui rend l''émission d''actions coûteuse en termes de signal et explique la préférence pour d''autres sources de financement.

4. L''affirmation néglige les extensions du théorème : au-delà d''un certain seuil d''endettement, les coûts de détresse financière (risque de rupture de covenants bancaires, perte de confiance des partenaires commerciaux, renchérissement du coût de la dette) peuvent dépasser l''économie d''impôt additionnelle. La théorie du compromis invite plutôt à rechercher un niveau d''endettement optimal qui équilibre ces deux forces, et non un maximum.

5. Lorsque l''accès au marché boursier ou obligataire est limité à un petit nombre de grandes entreprises, les PME de la zone UEMOA n''ont, de fait, qu''un accès restreint aux fonds propres externes ; elles dépendent donc largement de l''autofinancement puis du crédit bancaire, ce qui correspond exactement à la séquence de préférences prédite par la théorie du financement hiérarchique, renforcée par une asymétrie d''information potentiellement plus marquée vis-à-vis des créanciers.

6. Plan possible : I. Le théorème de Modigliani-Miller en marchés parfaits (MM1 et MM2). II. Pourquoi ce résultat est un point de départ théorique plutôt qu''une description du réel. III. L''extension fiscale : l''avantage de la dette. IV. L''extension par les coûts de faillite : la théorie du compromis. V. L''extension par l''asymétrie d''information : la théorie du financement hiérarchique. VI. Application et limites sur un marché financier en développement (zone UEMOA).', 'texte', 45, false, 30
from public.courses c where c.slug = 'doc-fin'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Courant théorique 2 : la structure de financement, de Modigliani-Miller à ses extensions');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Les méthodes de recherche en finance : études d''événements, économétrie financière et enquêtes de terrain', 'La recherche en finance mobilise un ensemble de méthodes bien identifiées, que tout doctorant doit savoir choisir et justifier selon la question posée. Cette leçon présente trois familles de méthodes particulièrement centrales dans le champ — les études d''événements, la modélisation économétrique de séries financières, et les enquêtes auprès de dirigeants financiers — et propose un exemple de protocole de recherche appliqué à un contexte sénégalais fictif.

## L''étude d''événement (event study)

L''étude d''événement mesure l''effet d''un événement précis (annonce de résultats, fusion-acquisition, changement de dirigeant, décision de politique monétaire) sur le cours d''un titre financier. La méthode consiste à estimer, pour une fenêtre de temps entourant l''événement, la rentabilité « anormale » (abnormal return, AR), c''est-à-dire l''écart entre la rentabilité réellement observée du titre et celle qui aurait été attendue en l''absence de l''événement. Cette rentabilité attendue est généralement estimée par un modèle de marché simple : R attendu = alpha + bêta × R marché, où alpha et bêta sont estimés sur une période antérieure à l''événement, hors de la fenêtre d''étude. La rentabilité anormale cumulée sur plusieurs jours (cumulative abnormal return, CAR) permet ensuite de juger si le marché a réagi significativement à l''annonce, et dans quel sens. Cette méthode est centrale pour tester empiriquement l''hypothèse d''efficience des marchés : si les prix réagissent très vite et sans dérive persistante après l''annonce, cela soutient la forme semi-forte de l''efficience ; si une dérive post-annonce est observée (le titre continue à monter ou baisser dans les jours suivants), cela constitue une anomalie à expliquer, par exemple par la finance comportementale.

## Illustration numérique de l''étude d''événement

Prenons un exemple pédagogique simplifié : un titre annonce un résultat le jour « 0 ». Sur la fenêtre -2 à +2 jours, on observe des rentabilités quotidiennes du titre et de l''indice de marché, et on calcule l''AR et le CAR selon la formule ci-dessus (calcul vérifié en Python : paramètres alpha = 0,02 % et bêta = 1,1 estimés sur une période antérieure hors fenêtre). Le résultat obtenu donne un CAR cumulé d''environ +1,45 % sur les cinq jours, avec la plus grande partie de cette rentabilité anormale concentrée le jour même de l''annonce (+1,37 %) : cela suggère une réaction rapide du marché, cohérente avec une forme au moins semi-forte d''efficience, mais la légère dérive observée les jours suivants (+0,28 % puis -0,24 %) illustre le type d''écart résiduel que la recherche empirique chercherait à expliquer sur un échantillon de plusieurs dizaines ou centaines d''événements, et non sur un cas unique.

## La modélisation économétrique de séries financières

Les séries de rendements financiers (quotidiens, hebdomadaires) ont des propriétés statistiques particulières qu''un chercheur doit connaître avant toute modélisation : elles présentent souvent une distribution à queues plus épaisses qu''une loi normale (des variations extrêmes plus fréquentes qu''attendu), une volatilité qui varie dans le temps et qui tend à se regrouper en périodes calmes et en périodes agitées (hétéroscédasticité conditionnelle), et une autocorrélation généralement faible des rendements eux-mêmes mais souvent significative de leur volatilité. Les modèles de la famille ARCH/GARCH (autoregressive conditional heteroskedasticity), introduits par Robert Engle puis étendus par Tim Bollerslev, sont conçus précisément pour modéliser cette volatilité variable dans le temps, ce qui est essentiel pour l''évaluation du risque, la gestion de portefeuille ou le calcul d''une prime de risque. En complément, les modèles d''évaluation d''actifs (comme le modèle à trois facteurs ou des extensions multifactorielles) servent à expliquer la rentabilité moyenne des titres par des facteurs de risque communs (taille, valorisation, momentum), en s''appuyant sur des régressions en séries temporelles et en coupe transversale (panel). Dans l''exemple pédagogique vérifié en Python de cette leçon, une série simulée de 250 rendements quotidiens avec une volatilité quotidienne d''environ 1,9 % donne, une fois annualisée (en multipliant par la racine carrée de 252 jours de bourse), une volatilité annuelle d''environ 30 %, un ordre de grandeur courant pour une action individuelle, qui illustre pourquoi l''horizon de mesure de la volatilité doit toujours être précisé dans un travail de recherche.

## L''enquête auprès de dirigeants financiers

Une troisième famille de méthodes, de nature plus qualitative ou mixte, consiste à interroger directement les dirigeants financiers (directeurs financiers, trésoriers) sur leurs pratiques et leurs perceptions, par questionnaire structuré ou par entretien semi-directif. Cette méthode a notamment été popularisée en finance d''entreprise par les enquêtes sur les pratiques de structure de financement et de budgétisation des investissements, qui ont permis de confronter les théories (comme celles vues en leçon 3) aux motivations réellement déclarées par les praticiens — révélant par exemple que des considérations de flexibilité financière ou de maintien d''une notation de crédit pèsent souvent autant que l''optimisation fiscale théorique dans les décisions d''endettement observées. L''enquête permet d''explorer le « pourquoi » derrière des choix observés dans les données financières, mais elle comporte des limites méthodologiques propres : biais de déclaration (les dirigeants peuvent présenter leurs pratiques de façon favorable), taux de réponse souvent faible, et difficulté à généraliser à partir d''un échantillon de dirigeants volontaires. Elle est donc le plus souvent utilisée en complément d''une analyse quantitative des données financières observées, plutôt qu''en substitut.

## Exemple de protocole de recherche (contexte sénégalais fictif)

Prenons un exemple de protocole, fictif et à visée pédagogique, pour un doctorant qui souhaiterait tester la théorie du financement hiérarchique auprès de PME sénégalaises du secteur agroalimentaire. Le protocole combinerait deux volets. D''abord un volet quantitatif : collecte des états financiers de l''entreprise sur plusieurs exercices auprès d''un échantillon de PME (avec l''accord des entreprises et le respect de la confidentialité des données), construction d''indicateurs de structure de financement (part de la dette bancaire, de l''autofinancement, des apports en capital) et test statistique de leur évolution en fonction des besoins de financement et de la profitabilité, conformément aux prédictions de la théorie du financement hiérarchique. Ensuite un volet qualitatif : entretiens semi-directifs avec les dirigeants ou directeurs financiers de quelques entreprises de l''échantillon, pour comprendre les raisons déclarées de leurs choix de financement (accès au crédit bancaire, relation avec les banques locales, réticence à ouvrir le capital) et vérifier si elles correspondent aux prédictions théoriques ou révèlent des spécificités locales non prévues par la théorie d''origine, construite sur des données d''entreprises de marchés développés. Ce protocole mixte illustre comment articuler une méthode quantitative (données financières) et une méthode qualitative (enquête auprès de dirigeants) pour tester une théorie financière dans un contexte de marché en développement.

## Points clés à retenir

- L''étude d''événement mesure la rentabilité anormale (AR) et cumulée (CAR) autour d''un événement, et sert notamment à tester empiriquement l''hypothèse d''efficience des marchés.
- La modélisation économétrique des séries financières (notamment les modèles de la famille ARCH/GARCH) traite les propriétés particulières des rendements : queues épaisses, volatilité variable dans le temps.
- L''enquête auprès de dirigeants financiers complète l''analyse quantitative en explorant les motivations déclarées des décisions financières, avec ses propres limites méthodologiques.
- Un protocole mixte (données financières + entretiens) est souvent le plus adapté pour tester une théorie financière dans un contexte de marché en développement, où les spécificités locales doivent être documentées et non supposées.

## Exercices pratiques

1. Expliquez les étapes d''une étude d''événement, de l''estimation du modèle de marché jusqu''au calcul du CAR.
2. Pourquoi une dérive persistante des rentabilités anormales après l''annonce (post-event drift) pose-t-elle problème à l''hypothèse d''efficience des marchés sous sa forme semi-forte ?
3. Expliquez pourquoi un modèle de type GARCH est plus adapté qu''une simple moyenne constante pour modéliser la volatilité d''une série de rendements financiers.
4. Quelles sont les principales limites méthodologiques d''une enquête par questionnaire auprès de dirigeants financiers, et comment peut-on les atténuer ?
5. Concevez, en quelques lignes, un protocole mixte (quantitatif et qualitatif) pour tester si les PME sénégalaises du secteur du commerce suivent la théorie du financement hiérarchique.
6. Pourquoi est-il préférable, dans un travail doctoral, de combiner plusieurs méthodes plutôt que de se limiter à une seule pour tester une théorie financière ?

## Corrigé

1. Les étapes sont : définir l''événement et sa date précise ; choisir une fenêtre d''estimation antérieure (hors événement) pour estimer alpha et bêta du modèle de marché ; calculer la rentabilité attendue sur la fenêtre d''événement à partir de ces paramètres et de la rentabilité du marché observée ; calculer l''AR quotidien comme écart entre rentabilité observée et rentabilité attendue ; cumuler les AR sur la fenêtre pour obtenir le CAR ; tester si ce CAR est statistiquement différent de zéro sur un échantillon de plusieurs événements similaires.

2. Si l''hypothèse d''efficience semi-forte est vérifiée, toute information publique (comme l''annonce étudiée) devrait être intégrée rapidement et le CAR devrait se stabiliser dès les jours suivant l''annonce. Une dérive persistante (le titre continue de monter ou de baisser significativement plusieurs jours ou semaines après) suggère que le marché n''a pas intégré l''information instantanément, ce qui constitue une anomalie empirique à expliquer, par exemple par une sous-réaction initiale documentée en finance comportementale.

3. Les rendements financiers présentent des périodes de forte volatilité suivies de périodes plus calmes (regroupement de la volatilité) : une moyenne ou un écart-type constant sur toute la période masquerait cette dynamique et sous-estimerait le risque pendant les phases agitées. Un modèle GARCH modélise explicitement la volatilité comme dépendante des chocs passés, ce qui permet de mieux anticiper les périodes de risque élevé.

4. Limites principales : biais de déclaration (réponses valorisantes), taux de réponse faible, échantillon non représentatif (volontariat). Atténuations possibles : garantir l''anonymat des réponses, croiser les déclarations avec des données financières objectives, élargir et diversifier l''échantillon, et compléter par des entretiens qui permettent de nuancer les réponses au questionnaire.

5. Protocole possible : collecte des bilans et comptes de résultat d''un échantillon de PME commerciales sur 3 à 5 exercices ; calcul de la part de l''autofinancement, de la dette bancaire et des apports en capital dans le financement des nouveaux besoins ; test statistique de la séquence prédite par la théorie du financement hiérarchique (autofinancement d''abord, puis dette, puis capital) ; entretiens avec un sous-échantillon de dirigeants pour comprendre les raisons déclarées de leurs choix et identifier d''éventuelles spécificités locales (accès au crédit, relation bancaire).

6. Combiner plusieurs méthodes (triangulation méthodologique) permet de compenser les limites propres à chacune : une méthode quantitative documente ce qui se passe réellement dans les données mais pas toujours pourquoi, tandis qu''une méthode qualitative explore les motivations mais sur un échantillon restreint et sujet à des biais déclaratifs. La combinaison renforce la validité des conclusions et permet de détecter des résultats contradictoires qui méritent une explication plus approfondie.', 'texte', 45, false, 40
from public.courses c where c.slug = 'doc-fin'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Les méthodes de recherche en finance : études d''événements, économétrie financière et enquêtes de terrain');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Épreuve type d''examen de qualification en Finance : question de synthèse et plan de réponse corrigé', 'Cette leçon propose une épreuve type d''examen de qualification doctorale en finance (question non officielle, construite à titre pédagogique), avec un plan de réponse détaillé qui mobilise les deux courants théoriques vus en leçons 2 et 3, ainsi qu''une méthode de recherche vue en leçon 4. L''objectif est de montrer, sur un exemple complet, comment structurer une réponse de niveau doctoral.

## La question d''examen

« Dans quelle mesure les débats théoriques sur l''efficience des marchés et sur la structure de financement des entreprises doivent-ils être reconsidérés lorsqu''on les applique à un marché financier en développement comme celui de l''Afrique de l''Ouest ? Vous illustrerez votre propos par une proposition de protocole empirique. »

## Analyse de la question avant de répondre

Une question de ce type appelle d''abord un travail d''analyse avant toute rédaction : elle comporte trois exigences croisées qu''il faut traiter ensemble et non séparément. La première est théorique : il faut mobiliser à la fois le débat efficience/finance comportementale et le débat sur la structure de financement (Modigliani-Miller et ses extensions), sans se limiter à l''un des deux. La seconde est contextuelle : la question demande explicitement une discussion critique de la transposition de ces théories à un contexte de marché en développement, ce qui exclut une réponse purement descriptive des théories occidentales. La troisième est méthodologique : la question exige une proposition concrète de protocole empirique, qui doit s''appuyer sur une méthode vue en leçon 4 et être adaptée au contexte évoqué.

## Plan de réponse détaillé

Une réponse de niveau qualification doctorale pourrait suivre le plan suivant.

- Introduction : rappeler que les deux débats (efficience des marchés, structure de financement) ont été construits et testés essentiellement sur des marchés financiers profonds et liquides, et poser la problématique de leur transposition à un contexte de marché en développement comme celui de l''Afrique de l''Ouest (BRVM, zone UEMOA).
- I. Le débat efficience/finance comportementale reconsidéré en contexte de marché peu profond : rappeler les formes de l''efficience et les apports de la finance comportementale (voir leçon 2), puis montrer que la faible liquidité, le nombre réduit de titres cotés et les coûts d''arbitrage plus élevés sur un marché comme la BRVM peuvent limiter l''efficience de forme semi-forte et laisser davantage de place à des anomalies durables, sans pour autant que cela traduise une irrationalité plus marquée des investisseurs locaux : il s''agit d''une différence de structure de marché, pas nécessairement de comportement.
- II. Le débat sur la structure de financement reconsidéré en contexte de marché peu profond : rappeler le théorème de Modigliani-Miller et ses trois extensions (fiscalité, coûts de faillite, asymétrie d''information, voir leçon 3), puis montrer que l''accès restreint aux marchés de capitaux externes, l''asymétrie d''information potentiellement plus marquée et un cadre de traitement des défaillances encore en consolidation renforcent particulièrement la pertinence de la théorie du financement hiérarchique pour les entreprises de la région, davantage que dans un contexte de marché développé où l''accès aux fonds propres externes est plus large.
- III. Mise en tension des deux débats : montrer que les deux débats se rejoignent sur un même constat méthodologique : les théories financières de référence, construites sur des hypothèses de marchés profonds et d''information largement diffusée, doivent être testées empiriquement sur le contexte local avant d''être supposées valides, plutôt que transposées par analogie.
- IV. Proposition de protocole empirique : une étude d''événement (voir leçon 4) appliquée à un échantillon d''annonces de résultats ou de décisions de financement d''entreprises cotées à la BRVM, pour mesurer l''ampleur et la durée des rentabilités anormales (test de l''efficience en contexte local), complétée par une enquête auprès de directeurs financiers d''entreprises de la région sur leurs pratiques déclarées de financement (test de la théorie du financement hiérarchique en contexte local).
- Conclusion : rappeler que la valeur d''un travail doctoral dans ce contexte tient précisément à cette vérification empirique locale, qui peut à la fois confirmer, nuancer ou enrichir les théories de référence plutôt que les rejeter ou les accepter en bloc.

## Rédaction d''un extrait de réponse (partie I, à titre d''illustration)

« L''hypothèse d''efficience des marchés distingue classiquement trois formes, et la forme semi-forte — selon laquelle les prix intègrent rapidement toute information publique disponible — constitue le cadre de référence le plus testé empiriquement. Sur un marché développé et liquide, la présence de nombreux arbitragistes et la faiblesse des coûts de transaction favorisent une intégration rapide de l''information nouvelle dans les prix. Sur un marché comme la BRVM, caractérisé par un nombre de titres cotés plus restreint et des volumes d''échange plus faibles, les mécanismes d''arbitrage peuvent être moins actifs, ce qui n''invalide pas le cadre théorique de l''efficience mais invite à en vérifier empiriquement le degré effectif plutôt que de le supposer identique à celui observé sur des places boursières plus profondes. La finance comportementale apporte ici un éclairage complémentaire : si des biais comme le comportement moutonnier sont documentés sur de nombreux marchés, leur effet sur les prix peut être amplifié sur un marché où le nombre d''investisseurs actifs et la diversité des stratégies d''arbitrage sont plus limités. » Cet extrait illustre la posture attendue : mobiliser la théorie avec précision, la nuancer par le contexte, sans jamais affirmer un résultat empirique précis qui n''aurait pas été vérifié par une étude dédiée.

## Ce qui distingue une excellente réponse d''une réponse moyenne

Une réponse moyenne se contente de résumer séparément les deux débats théoriques sans jamais les articuler à la question du contexte de marché en développement, et propose éventuellement une méthode de recherche sans la relier précisément aux théories discutées. Une excellente réponse, à l''inverse, maintient en permanence le fil directeur de la question (la nécessité de reconsidérer, pas de rejeter, les théories de référence), articule systématiquement chaque argument théorique à sa traduction possible dans le contexte de l''Afrique de l''Ouest, et propose un protocole empirique qui découle logiquement de l''analyse théorique qui précède plutôt que d''être ajouté de façon artificielle en fin de réponse.

## Points clés à retenir

- Une question de synthèse d''examen de qualification doit toujours être décomposée en ses exigences théoriques, contextuelles et méthodologiques avant la rédaction.
- Le plan de réponse doit traiter chaque courant théorique, les mettre en tension avec le contexte imposé (ici : marché financier en développement), puis proposer une méthode cohérente avec l''analyse qui précède.
- La nuance est préférable à l''affirmation catégorique : les théories financières de référence ne sont pas invalidées par un contexte de marché différent, elles doivent y être testées.
- Le protocole empirique proposé doit découler de l''analyse théorique, pas lui être ajouté artificiellement.

## Exercices pratiques

1. Identifiez, dans la question d''examen proposée, les trois exigences croisées (théorique, contextuelle, méthodologique) et reformulez chacune en une phrase.
2. Pourquoi une réponse qui se limiterait à résumer séparément l''efficience des marchés et la structure de financement, sans les relier au contexte de marché en développement, serait-elle jugée insuffisante par un jury ?
3. Proposez une introduction alternative (5 à 8 lignes) pour la question d''examen, différente de celle du plan proposé.
4. En vous appuyant sur la partie IV du plan, expliquez pourquoi une étude d''événement et une enquête auprès de dirigeants financiers sont complémentaires pour répondre à la question posée.
5. Rédigez, sur le modèle de l''extrait fourni, un paragraphe équivalent pour la partie II du plan (structure de financement en contexte de marché en développement).

## Corrigé

1. Exigence théorique : mobiliser à la fois le débat efficience/finance comportementale et le débat sur la structure de financement, sans en privilégier un seul. Exigence contextuelle : discuter explicitement la validité de ces théories lorsqu''elles sont appliquées à un marché financier en développement plutôt que les présenter comme universellement valides. Exigence méthodologique : proposer un protocole empirique concret, cohérent avec l''analyse théorique et contextuelle qui précède.

2. Un jury doctoral évalue la capacité à articuler théorie et contexte, pas seulement la connaissance des théories elles-mêmes : une réponse qui les résume séparément sans les relier à la question du marché en développement ne répond pas réellement à la question posée et laisse penser que le candidat n''a pas intégré les connaissances de façon critique, mais seulement de façon descriptive.

3. Exemple d''introduction alternative : « Les grandes théories financières de référence — l''hypothèse d''efficience des marchés et le théorème de Modigliani-Miller sur la structure de financement — ont été élaborées et testées empiriquement, pour l''essentiel, sur des marchés financiers profonds et liquides des économies avancées. Leur application à des marchés émergents ou en développement, comme celui de la zone UEMOA, soulève une question de fond : ces théories doivent-elles être rejetées, adaptées, ou simplement testées empiriquement dans ce nouveau contexte avant toute conclusion ? Ce travail soutient la troisième option. »

4. L''étude d''événement renseigne sur la vitesse et l''ampleur de la réaction des prix à une information nouvelle (test de l''efficience), mais elle ne dit rien des motivations des dirigeants dans leurs décisions de financement ; l''enquête auprès des directeurs financiers renseigne sur ces motivations déclarées (test de la théorie du financement hiérarchique) mais ne mesure pas directement la réaction des prix de marché. Les deux méthodes répondent ainsi à des aspects différents et complémentaires de la question posée, qui porte à la fois sur l''efficience et sur la structure de financement.

5. Exemple de paragraphe : « Le théorème de Modigliani-Miller établit, en marchés parfaits, la neutralité de la structure de financement sur la valeur de l''entreprise ; ses extensions montrent que la fiscalité, les coûts de faillite et l''asymétrie d''information expliquent les choix de financement observés en pratique. Sur un marché comme la zone UEMOA, où l''accès aux marchés de capitaux externes reste concentré sur un nombre restreint de grandes entreprises, la théorie du financement hiérarchique semble particulièrement pertinente pour expliquer la forte dépendance des PME à l''autofinancement puis au crédit bancaire ; cette hypothèse, cohérente avec les contraintes structurelles du marché local, doit néanmoins être vérifiée empiriquement plutôt que simplement déduite par analogie avec des résultats obtenus sur des marchés développés. »', 'texte', 45, false, 50
from public.courses c where c.slug = 'doc-fin'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Épreuve type d''examen de qualification en Finance : question de synthèse et plan de réponse corrigé');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : l''hypothèse d''efficience des marchés face à la finance comportementale', '## Fiche du cours vidéo

Durée : 1h30. Public : doctorants en finance préparant leur examen de qualification. Objectifs : maîtriser les formes de l''hypothèse d''efficience des marchés, les apports de la finance comportementale, et savoir discuter leur articulation, y compris sur un marché financier en développement. Matériel : diaporama, tableau pour les schémas de cartographie des courants. Prérequis : avoir lu la leçon texte correspondante (leçon 2).

## Déroulé minuté

## 00:00 – 05:00 · Introduction et enjeux

Bonjour à toutes et à tous. Dans cette séance, nous allons reprendre en profondeur le débat entre l''hypothèse d''efficience des marchés et la finance comportementale, qui constitue l''un des piliers de tout programme doctoral en finance. L''enjeu n''est pas de choisir un camp, mais de comprendre pourquoi ce débat structure encore aujourd''hui la recherche en finance de marché, et comment vous devrez le mobiliser devant un jury de qualification. Je vous propose d''afficher à l''écran le plan de la séance : d''abord l''hypothèse d''efficience et ses trois formes, puis la finance comportementale et ses biais, ensuite les anomalies de marché documentées, puis l''articulation contemporaine des deux courants, et enfin l''application prudente à un marché financier en développement comme la BRVM. Une pause quiz interviendra au milieu de la séance, et nous terminerons par une évaluation de cinq questions.

## 05:00 – 20:00 · L''hypothèse d''efficience des marchés

Commençons par le cœur de l''hypothèse d''efficience des marchés, formalisée notamment par Eugene Fama. Je vous demande de noter au tableau, avec moi, les trois formes de l''efficience : forme faible, forme semi-forte, forme forte. La forme faible soutient que les prix intègrent déjà toute l''information contenue dans l''historique des cours : si c''est vrai, l''analyse technique, qui cherche des motifs dans les graphiques de prix passés, ne devrait pas permettre de gagner de l''argent de façon systématique. La forme semi-forte va plus loin : elle affirme que les prix intègrent aussi toute l''information publique disponible, comme les résultats financiers publiés ou les annonces économiques — ce qui réduit fortement l''intérêt de l''analyse fondamentale classique pour « battre le marché » une fois l''information rendue publique. La forme forte, enfin, est la plus extrême et la plus contestée : elle prétend que même l''information privée, détenue par des initiés, serait déjà intégrée aux prix, ce qui est largement démenti empiriquement par les gains significatifs parfois réalisés par des investisseurs disposant d''informations privilégiées. Je vous invite à visualiser sur le diaporama le schéma classique de la marche aléatoire des cours : une trajectoire de prix qui ne montre aucun motif prévisible d''un jour sur l''autre, ce qui est la signature empirique la plus citée de l''efficience de forme faible. Posons-nous une première question de réflexion : si les marchés étaient parfaitement efficients à la forme forte, quel serait l''intérêt économique de produire de la recherche financière ou de rémunérer des analystes ? Cette question, qui peut sembler provocante, est en réalité une excellente porte d''entrée pour comprendre les limites pratiques de la forme forte de l''EMH.

## 20:00 – 35:00 · La finance comportementale et ses biais cognitifs

Passons maintenant au second courant. La finance comportementale part d''un constat emprunté à la psychologie cognitive, notamment aux travaux de Daniel Kahneman et Amos Tversky, puis développé en finance par des chercheurs comme Richard Thaler et Robert Shiller : les investisseurs ne sont pas parfaitement rationnels, et leurs erreurs systématiques peuvent affecter durablement les prix de marché, contrairement à ce que suppose l''hypothèse d''efficience. Je vous propose de détailler quatre biais cognitifs centraux, que vous devez pouvoir définir et illustrer sans hésitation à l''oral. Premier biais : l''excès de confiance, qui pousse un investisseur à surestimer la fiabilité de ses propres analyses, et donc à sous-estimer le risque de ses positions. Deuxième biais : l''aversion à la perte, documentée par la théorie des perspectives, selon laquelle la douleur ressentie face à une perte est plus intense que le plaisir ressenti face à un gain équivalent — ce qui explique pourquoi de nombreux investisseurs conservent trop longtemps des titres en perte, espérant un retour à l''équilibre. Troisième biais : l''ancrage, qui fait qu''une information initiale, même arbitraire, continue d''influencer les décisions ultérieures, par exemple un prix d''achat passé qui sert de référence psychologique pour décider de vendre ou non. Quatrième biais : le comportement moutonnier, qui pousse les investisseurs à suivre la tendance du groupe plutôt que leur propre jugement, ce qui peut amplifier des mouvements de marché au-delà de ce que justifient les fondamentaux économiques. Prenez le temps de noter un exemple personnel pour chacun de ces biais : c''est un excellent exercice pour vous préparer à l''illustrer spontanément à l''oral devant un jury.

## 35:00 – 45:00 · Les anomalies de marché documentées

Voyons à présent les anomalies empiriques les plus souvent citées en complément des biais individuels. L''effet taille suggère qu''historiquement, sur certaines périodes et certains marchés, les petites capitalisations auraient généré un rendement ajusté au risque supérieur aux grandes capitalisations. L''effet momentum documente la tendance des titres récemment performants à continuer de bien performer sur quelques mois, ce qui contredit directement l''idée d''une marche parfaitement aléatoire des cours. Les bulles spéculatives, enfin, illustrent des phases où les prix s''éloignent durablement des fondamentaux avant une correction parfois brutale — un phénomène que Robert Shiller a notamment étudié à travers la notion de volatilité excessive des cours boursiers par rapport à celle des dividendes ou des bénéfices sous-jacents. Il est essentiel de rappeler que documenter une anomalie statistique ne suffit pas à prouver que les marchés sont globalement inefficients : il faut encore écarter d''autres explications possibles, comme l''existence de facteurs de risque non mesurés par le modèle d''évaluation utilisé.

## 45:00 – 50:00 · Pause et quiz interactif

Nous marquons une pause de cinq minutes. Avant de reprendre, je vous propose un quiz rapide à trois questions, à répondre mentalement ou à l''écrit si vous le souhaitez. Première question : citez les trois formes de l''hypothèse d''efficience des marchés dans l''ordre croissant d''exigence. Deuxième question : quel biais cognitif explique qu''un investisseur conserve trop longtemps un titre en perte ? Troisième question : citez une anomalie de marché qui contredit directement l''idée d''une marche aléatoire des cours. Je vous laisse quelques instants pour y réfléchir avant de donner les réponses : forme faible, forme semi-forte, forme forte pour la première ; l''aversion à la perte pour la deuxième ; l''effet momentum pour la troisième.

## 50:00 – 65:00 · Articulation des deux courants : vers l''efficience adaptative

Reprenons maintenant avec la partie la plus importante pour votre préparation à l''oral : comment articuler ces deux courants plutôt que les opposer frontalement. Les modèles dits d''efficience adaptative, qui prolongent notamment les travaux d''Andrew Lo, proposent une image dynamique : les marchés évolueraient entre des phases plus ou moins efficientes selon les conditions économiques et le comportement collectif des investisseurs, un peu comme un écosystème où différentes stratégies (rationnelles et comportementales) coexistent et se limitent mutuellement par la concurrence. Un concept clé à maîtriser ici est celui des limites à l''arbitrage : même si un investisseur rationnel identifie un écart de prix par rapport à la valeur fondamentale, l''exploiter peut être coûteux, risqué, ou limité par des contraintes de capital, ce qui explique pourquoi certaines anomalies persistent dans le temps sans être immédiatement corrigées par le marché. Je vous invite à retenir une formule de synthèse pour votre oral : l''efficience des marchés n''est pas un absolu binaire (efficient ou non), mais un continuum, influencé par la liquidité, le nombre d''arbitragistes actifs, le coût de l''information et la nature des investisseurs présents sur le marché considéré.

## 65:00 – 80:00 · Application à un marché financier en développement (BRVM)

Terminons la partie théorique par l''application au contexte de marché en développement, qui est l''un des axes les plus attendus dans un travail doctoral ancré en Afrique de l''Ouest. La Bourse Régionale des Valeurs Mobilières (BRVM), qui couvre plusieurs pays de la zone UEMOA, se caractérise par un nombre de titres cotés plus restreint que sur les grandes places boursières internationales, des volumes d''échange plus faibles et une base d''investisseurs institutionnels moins large. Ces caractéristiques structurelles ont une conséquence directe sur le degré d''efficience observable : moins d''arbitragistes actifs, des coûts de transaction relativement plus élevés rapportés à la taille des transactions, et une diffusion de l''information parfois plus lente, notamment pour les entreprises moins suivies par les analystes. Cela ne signifie en aucun cas que les investisseurs de la région sont moins rationnels : il s''agit d''une différence de structure de marché et non de comportement individuel. Pour un sujet de thèse, cela suggère une piste de recherche intéressante : tester empiriquement, par une étude d''événement par exemple, le degré effectif d''efficience de forme semi-forte sur la BRVM, sans présupposer qu''il serait identique à celui mesuré sur des marchés développés, ni qu''il en serait radicalement différent — c''est précisément ce que la recherche doit vérifier plutôt que supposer.

## 80:00 – 85:00 · Synthèse de la séance

Récapitulons les points essentiels de cette séance. L''hypothèse d''efficience des marchés distingue trois formes et repose sur la rationalité moyenne des investisseurs et l''arbitrage. La finance comportementale documente des biais individuels et des anomalies collectives qui questionnent cette rationalité. La recherche contemporaine articule les deux courants par la notion d''efficience adaptative et de limites à l''arbitrage. Enfin, l''application à un marché comme la BRVM doit se faire avec prudence méthodologique, en testant empiriquement plutôt qu''en supposant le degré d''efficience local.

## 85:00 – 1:30:00 · Évaluation finale (5 questions avec réponses)

Nous terminons par une évaluation de cinq questions, avec leurs réponses, pour consolider vos acquis avant l''examen.

- Question 1 : Quelle forme de l''hypothèse d''efficience est la plus contestée empiriquement, et pourquoi ? Réponse : la forme forte, car des gains significatifs liés à une information privée (délit d''initié) ont été documentés, ce qui contredit l''idée que même l''information privée serait déjà intégrée aux prix.
- Question 2 : Donnez un exemple de biais cognitif qui peut amplifier une baisse de marché. Réponse : le comportement moutonnier, qui pousse des investisseurs à vendre en imitant les autres plutôt qu''en analysant individuellement la situation, amplifiant ainsi le mouvement de baisse.
- Question 3 : Qu''est-ce que l''effet momentum, et en quoi contredit-il la marche aléatoire des cours ? Réponse : c''est la tendance des titres récemment performants à continuer de bien performer sur quelques mois ; cela contredit la marche aléatoire, qui suppose que les variations de prix ne sont pas prévisibles à partir de l''historique des cours.
- Question 4 : Expliquez la notion de « limites à l''arbitrage » et son rôle dans le débat efficience/finance comportementale. Réponse : elle désigne les coûts, risques et contraintes qui empêchent un arbitragiste rationnel de corriger immédiatement un écart de prix par rapport à la valeur fondamentale, ce qui permet d''expliquer la persistance de certaines anomalies sans rejeter totalement l''idée d''efficience à terme.
- Question 5 : Pourquoi faut-il tester empiriquement, plutôt que supposer, le degré d''efficience de la BRVM ? Réponse : parce que les caractéristiques structurelles de ce marché (liquidité, nombre d''arbitragistes, diffusion de l''information) diffèrent de celles des marchés développés sur lesquels l''essentiel de la littérature a été produit, et qu''une transposition sans vérification empirique risquerait de produire des conclusions non fondées sur ce contexte précis.', 'video', 90, false, 60
from public.courses c where c.slug = 'doc-fin'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : l''hypothèse d''efficience des marchés face à la finance comportementale');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : la structure de financement, de Modigliani-Miller à ses extensions', '## Fiche du cours vidéo

Durée : 1h30. Public : doctorants en finance préparant leur examen de qualification. Objectifs : maîtriser le théorème de Modigliani-Miller (MM1 et MM2), ses trois grandes extensions, et savoir les appliquer de façon critique à un marché financier en développement. Matériel : diaporama avec les formules de calcul du CMPC, tableau pour les schémas. Prérequis : avoir lu la leçon texte correspondante (leçon 3) et disposer d''une calculatrice.

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Bienvenue dans cette séance consacrée au deuxième grand débat du programme : la structure de financement de l''entreprise. Nous allons partir du théorème de Modigliani-Miller, qui constitue le point de référence incontournable de toute discussion sur le choix entre dette et capitaux propres, puis nous verrons ses trois grandes extensions, avant de les appliquer à un contexte de marché financier en développement. Une pause quiz interviendra au milieu, et nous terminerons par une évaluation de cinq questions.

## 05:00 – 20:00 · Le théorème de Modigliani-Miller en marchés parfaits

Commençons par la proposition I de Modigliani-Miller, dite MM1. Sous des hypothèses de marchés parfaits — absence d''impôt, absence de coûts de transaction et de faillite, information parfaitement partagée, et possibilité pour tout investisseur d''emprunter ou de prêter au même taux que l''entreprise — la valeur totale d''une entreprise ne dépend pas de sa structure de financement. L''argument clé, que vous devez pouvoir restituer précisément à l''oral, est celui de l''arbitrage, parfois appelé « home-made leverage » : si deux entreprises identiques par ailleurs avaient des valeurs différentes du seul fait de leur endettement, un investisseur pourrait reproduire à titre personnel l''effet de levier manquant, en empruntant ou en prêtant lui-même, et réaliser un profit sans risque en achetant l''entreprise sous-évaluée et en vendant à découvert la surévaluée — ce mécanisme d''arbitrage ramène les deux valeurs à l''égalité. La proposition II, MM2, complète ce résultat : le coût des capitaux propres croît avec le niveau d''endettement, car les actionnaires supportent un risque financier croissant, mais cette hausse compense exactement l''avantage apparent d''une dette moins chère, de sorte que le coût moyen pondéré du capital (CMPC, ou WACC en anglais) reste constant quelle que soit la structure de financement choisie.

## 20:00 – 30:00 · Calcul illustratif du coût moyen pondéré du capital

Prenons un exemple numérique pour illustrer concrètement le calcul du CMPC, vérifié en Python. Une entreprise a des capitaux propres de 600 millions de FCFA et une dette de 400 millions de FCFA, soit une valeur totale de 1 milliard de FCFA. Le coût des capitaux propres est de 14 %, le coût de la dette avant impôt de 9 %, et le taux d''impôt sur les sociétés, fictif pour l''exemple, de 30 %. La formule du CMPC est : CMPC = (E/V) × coût des capitaux propres + (D/V) × coût de la dette × (1 moins le taux d''impôt). En appliquant cette formule à nos chiffres, on obtient : (600/1000) × 14 % + (400/1000) × 9 % × (1 - 30 %), soit 8,4 % plus 2,52 %, ce qui donne un CMPC d''environ 10,92 %. Ce résultat illustre un point essentiel de MM2 : le coût de la dette, apparemment moins élevé que celui des capitaux propres, ne doit jamais être interprété isolément, car l''entreprise devient plus risquée à mesure qu''elle s''endette, ce qui fait augmenter en parallèle le coût exigé par les actionnaires.

## 30:00 – 40:00 · Extension 1 : la fiscalité et l''avantage de la dette

Passons à la première grande extension du théorème. Lorsque l''on réintroduit l''impôt sur les sociétés, les intérêts de la dette deviennent généralement déductibles du résultat imposable, ce qui crée une économie d''impôt qui augmente la valeur de l''entreprise endettée. Reprenons notre exemple : avec une dette de 400 millions de FCFA et un taux d''impôt fictif de 30 %, le gain fiscal théorique, selon la formule simplifiée VL = VU + taux d''impôt × dette, serait de 30 % × 400 millions, soit 120 millions de FCFA, ce qui porterait la valeur de l''entreprise endettée à 1,12 milliard de FCFA au lieu de 1 milliard pour l''entreprise non endettée. Cette extension prédit, si elle agissait seule, un endettement maximal pour maximiser cet avantage fiscal — ce qui ne correspond pas aux niveaux d''endettement modérés observés en pratique, d''où la nécessité de la deuxième extension.

## 40:00 – 50:00 · Extension 2 : les coûts de faillite et la théorie du compromis

La deuxième extension réintroduit les coûts de faillite et de détresse financière. Un endettement croissant augmente la probabilité qu''une entreprise ne puisse plus honorer ses engagements. Ces coûts incluent des coûts directs (frais juridiques et administratifs d''une procédure collective) mais surtout des coûts indirects souvent plus importants : perte de confiance des clients et fournisseurs, départ de salariés clés, décisions d''investissement sous-optimales prises par une direction sous contrainte financière. La théorie du compromis, ou trade-off theory, combine cette extension avec l''avantage fiscal : l''entreprise chercherait un niveau d''endettement optimal qui maximise l''avantage fiscal net des coûts attendus de détresse financière. Je vous invite à visualiser mentalement une courbe en cloche inversée : la valeur de l''entreprise augmente avec l''endettement grâce à l''avantage fiscal, atteint un maximum, puis diminue lorsque les coûts de détresse financière deviennent dominants — ce sommet représente le niveau d''endettement optimal théorique.

## 50:00 – 55:00 · Pause et quiz interactif

Prenons cinq minutes de pause avec un quiz rapide. Première question : quelle est la différence entre MM1 et MM2 ? Deuxième question : pourquoi l''avantage fiscal de la dette, pris isolément, prédirait un endettement maximal ? Troisième question : quel type de coût la théorie du compromis ajoute-t-elle pour corriger cette prédiction ? Réponses : MM1 porte sur la valeur totale de l''entreprise, invariante à la structure de financement ; MM2 porte sur le coût des capitaux propres, qui croît avec l''endettement. L''avantage fiscal croît proportionnellement à la dette sans limite apparente si on l''isole. La théorie du compromis ajoute les coûts de faillite et de détresse financière, qui croissent plus vite que l''avantage fiscal au-delà d''un certain seuil.

## 55:00 – 70:00 · Extension 3 : l''asymétrie d''information et le financement hiérarchique

Reprenons avec la troisième extension, portée notamment par les travaux de Stewart Myers sur la théorie du financement hiérarchique, ou pecking order theory. Cette théorie part du constat que les dirigeants disposent généralement de plus d''informations sur la valeur réelle de l''entreprise que les investisseurs externes. Une émission de nouvelles actions peut alors être interprétée comme un signal négatif par le marché : si les dirigeants pensent que l''action est surévaluée, ils ont intérêt à émettre maintenant, ce que le marché anticipe rationnellement et sanctionne par une baisse du cours à l''annonce de l''émission. Les entreprises préfèrent donc, selon cette théorie, une séquence de financement hiérarchisée : d''abord l''autofinancement, puis la dette, et en dernier recours seulement l''émission de nouvelles actions. Il est important de noter que cette théorie ne prédit pas un niveau d''endettement optimal précis comme la théorie du compromis, mais plutôt un ordre de préférence entre les sources de financement, ce qui en fait une théorie complémentaire plutôt que concurrente de la précédente.

## 70:00 – 80:00 · Application à un marché financier en développement

Terminons la partie théorique par l''application au contexte de marché en développement, central pour votre travail doctoral. Sur un marché comme la zone UEMOA et sa Bourse Régionale des Valeurs Mobilières, l''accès au financement obligataire ou boursier reste concentré sur un nombre restreint de grandes entreprises, ce qui pousse la majorité des entreprises, en particulier les petites et moyennes entreprises, à dépendre fortement du crédit bancaire — une situation qui rend la théorie du financement hiérarchique particulièrement pertinente dans ce contexte. L''asymétrie d''information y est potentiellement plus marquée, du fait d''états financiers parfois moins standardisés selon les entreprises, ce qui renforce encore la prédiction de préférence pour l''autofinancement et la dette bancaire. Enfin, un cadre judiciaire de traitement des difficultés d''entreprise encore en consolidation selon les pays peut amplifier les coûts de faillite perçus par les créanciers, renchérissant le coût de la dette au-delà de ce que prédirait un modèle calibré uniquement sur un marché développé. Pour un sujet de thèse, cela ouvre une piste intéressante : tester empiriquement, sur des données d''entreprises locales, laquelle des théories — compromis ou financement hiérarchique — explique le mieux les choix de financement observés dans ce contexte spécifique.

## 80:00 – 85:00 · Synthèse de la séance

Récapitulons. MM1 établit la neutralité de la structure de financement sur la valeur de l''entreprise en marchés parfaits ; MM2 montre que le coût des capitaux propres croît avec l''endettement. Les trois extensions — fiscalité, coûts de faillite, asymétrie d''information — réintroduisent les frictions réelles et expliquent les choix de financement observés en pratique. Sur un marché financier en développement, la théorie du financement hiérarchique semble particulièrement pertinente, mais doit être vérifiée empiriquement plutôt que supposée.

## 85:00 – 1:30:00 · Évaluation finale (5 questions avec réponses)

Terminons par une évaluation de cinq questions.

- Question 1 : Énoncez MM1 et l''argument qui la démontre. Réponse : en marchés parfaits, la valeur de l''entreprise est indépendante de sa structure de financement, ce que démontre l''argument d''arbitrage (home-made leverage) : tout écart de valeur serait annulé par des investisseurs reproduisant eux-mêmes l''effet de levier manquant.
- Question 2 : Calculez le CMPC d''une entreprise avec E=700 millions de FCFA, D=300 millions de FCFA, coût des capitaux propres 15 %, coût de la dette avant impôt 8 %, taux d''impôt fictif 25 %. Réponse : CMPC = (700/1000)×15% + (300/1000)×8%×(1-25%) = 10,5% + 1,8% = 12,3%.
- Question 3 : Quelle extension explique pourquoi les entreprises ne s''endettent pas au maximum malgré l''avantage fiscal de la dette ? Réponse : la théorie du compromis, par les coûts de faillite et de détresse financière qui croissent plus vite que l''avantage fiscal au-delà d''un certain seuil d''endettement.
- Question 4 : Pourquoi une émission d''actions peut-elle être perçue négativement par le marché selon la théorie du financement hiérarchique ? Réponse : parce que les dirigeants, mieux informés, ont intérêt à émettre lorsque l''action est surévaluée, ce que le marché anticipe et sanctionne par une baisse du cours à l''annonce.
- Question 5 : Pourquoi la théorie du financement hiérarchique est-elle jugée particulièrement pertinente pour les PME de la zone UEMOA ? Réponse : parce que leur accès restreint aux marchés de capitaux externes, combiné à une asymétrie d''information potentiellement plus marquée, les pousse structurellement à privilégier l''autofinancement puis la dette bancaire, conformément à la séquence prédite par cette théorie.', 'video', 90, false, 70
from public.courses c where c.slug = 'doc-fin'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : la structure de financement, de Modigliani-Miller à ses extensions');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : les méthodes de recherche en finance', '## Fiche du cours vidéo

Durée : 1h30. Public : doctorants en finance préparant leur examen de qualification. Objectifs : maîtriser les étapes d''une étude d''événement, les principes de la modélisation économétrique des séries financières, et les apports et limites de l''enquête auprès de dirigeants financiers. Matériel : diaporama avec exemples chiffrés, tableau pour les schémas. Prérequis : avoir lu la leçon texte correspondante (leçon 4).

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Bienvenue dans cette séance consacrée aux méthodes de recherche en finance. Nous allons détailler trois familles de méthodes que vous devrez savoir choisir et justifier devant un jury : l''étude d''événement, la modélisation économétrique des séries financières, et l''enquête auprès de dirigeants financiers. Une pause quiz interviendra au milieu, et nous terminerons par une évaluation finale.

## 05:00 – 20:00 · L''étude d''événement : principes et formules

L''étude d''événement est sans doute la méthode la plus emblématique de la recherche empirique en finance de marché. Elle mesure l''effet d''un événement précis — annonce de résultats, fusion-acquisition, décision de politique monétaire — sur le cours d''un titre. La première étape consiste à estimer un modèle de marché sur une période antérieure à l''événement, hors de la fenêtre d''étude : rentabilité attendue égale alpha plus bêta multiplié par la rentabilité du marché. La deuxième étape consiste à calculer, pour chaque jour de la fenêtre d''événement, la rentabilité anormale, ou AR, qui est l''écart entre la rentabilité réellement observée et la rentabilité attendue selon le modèle estimé. La troisième étape cumule ces rentabilités anormales sur la fenêtre pour obtenir le CAR, la rentabilité anormale cumulée, qui permet de juger l''ampleur et la persistance de la réaction du marché à l''événement.

## 20:00 – 35:00 · Illustration numérique vérifiée de l''étude d''événement

Prenons l''exemple vérifié en Python de cette séquence. Sur une fenêtre de cinq jours autour d''une annonce (jours -2, -1, 0, +1, +2), avec un modèle de marché estimé à alpha = 0,02 % et bêta = 1,1, on obtient les résultats suivants : jour -2, AR d''environ -0,01 % et CAR cumulé de -0,01 % ; jour -1, AR de +0,05 % et CAR de +0,04 % ; jour 0, le jour de l''annonce, AR de +1,37 % et CAR de +1,41 % ; jour +1, AR de +0,28 % et CAR de +1,69 % ; jour +2, AR de -0,24 % et CAR de +1,45 %. Observez avec moi ce qui se passe : la très grande majorité de la rentabilité anormale est concentrée le jour même de l''annonce, ce qui est cohérent avec une réaction rapide du marché, compatible avec une forme au moins semi-forte d''efficience. La légère variation des jours suivants est le type de résidu que la recherche cherche à expliquer, mais sur un échantillon de plusieurs dizaines ou centaines d''événements, jamais sur un cas unique comme celui-ci, qui n''a qu''une valeur pédagogique.

## 35:00 – 50:00 · La modélisation économétrique des séries financières

Passons à la deuxième grande méthode. Les séries de rendements financiers ont des propriétés statistiques particulières : des distributions à queues plus épaisses qu''une loi normale, c''est-à-dire des variations extrêmes plus fréquentes qu''attendu sous une hypothèse de normalité ; et une volatilité qui varie dans le temps et se regroupe en périodes calmes et en périodes agitées, un phénomène appelé hétéroscédasticité conditionnelle. Les modèles de la famille ARCH, introduits par Robert Engle, puis GARCH, étendus par Tim Bollerslev, sont conçus pour modéliser cette volatilité variable, ce qui est essentiel pour l''évaluation du risque et la gestion de portefeuille. Illustrons avec un exemple vérifié en Python : une série simulée de 250 rendements quotidiens, avec une volatilité quotidienne d''environ 1,9 %, donne, une fois annualisée en multipliant par la racine carrée de 252 jours de bourse, une volatilité annuelle d''environ 30 %. Retenez bien ce principe d''annualisation : il revient très souvent dans les questions de jury sur la mesure du risque. Au-delà de la seule volatilité, ces modèles économétriques servent aussi de brique de base aux modèles d''évaluation d''actifs multifactoriels, qui expliquent la rentabilité moyenne des titres par des facteurs de risque communs comme la taille des entreprises, leur niveau de valorisation ou leur momentum récent, estimés par des régressions en séries temporelles ou en panel sur de larges échantillons de titres. Un point de méthode à toujours mentionner devant un jury : avant d''appliquer un modèle ARCH/GARCH ou un modèle multifactoriel, il faut vérifier la stationnarité de la série étudiée, c''est-à-dire que ses propriétés statistiques (moyenne, variance) ne dérivent pas systématiquement dans le temps, sous peine d''obtenir des résultats économétriques trompeurs.

## 50:00 – 55:00 · Pause et quiz interactif

Prenons cinq minutes de pause avec un quiz. Première question : quelles sont les trois étapes d''une étude d''événement ? Deuxième question : que mesure un modèle GARCH que ne mesure pas un simple écart-type constant ? Troisième question : comment annualise-t-on une volatilité quotidienne ? Réponses : estimation du modèle de marché hors fenêtre, calcul de l''AR, calcul du CAR cumulé. Un modèle GARCH capture la variation de la volatilité dans le temps et son regroupement en périodes calmes et agitées. On annualise en multipliant la volatilité quotidienne par la racine carrée du nombre de jours de bourse dans l''année, généralement 252.

## 55:00 – 70:00 · L''enquête auprès de dirigeants financiers

Reprenons avec la troisième méthode, de nature plus qualitative. L''enquête auprès de dirigeants financiers, par questionnaire structuré ou entretien semi-directif, permet d''explorer les motivations déclarées derrière des choix de financement ou d''investissement observés dans les données. Cette méthode a notamment permis de révéler que des considérations comme la flexibilité financière ou le maintien d''une notation de crédit pèsent souvent autant, dans la pratique, que l''optimisation fiscale théorique dans les décisions d''endettement. Cette méthode comporte cependant des limites qu''il faut toujours mentionner à l''oral : le biais de déclaration, qui pousse les dirigeants à présenter leurs pratiques de façon favorable ; le taux de réponse souvent faible ; et la difficulté à généraliser à partir d''un échantillon de volontaires. C''est pourquoi cette méthode est le plus souvent utilisée en complément d''une analyse quantitative, et non en substitut.

## 70:00 – 80:00 · Protocole mixte appliqué à un contexte sénégalais

Voyons maintenant comment combiner ces méthodes dans un protocole de recherche concret, à titre pédagogique et fictif. Imaginons un doctorant souhaitant tester la théorie du financement hiérarchique auprès de PME sénégalaises du secteur agroalimentaire. Le volet quantitatif collecterait les états financiers de l''entreprise sur plusieurs exercices, avec l''accord des entreprises et le respect de la confidentialité des données, pour construire des indicateurs de structure de financement et tester statistiquement leur évolution en fonction des besoins et de la profitabilité. Le volet qualitatif mènerait des entretiens semi-directifs avec les dirigeants ou directeurs financiers pour comprendre les raisons déclarées de leurs choix, et vérifier si elles correspondent aux prédictions théoriques ou révèlent des spécificités locales non prévues par la théorie d''origine. Cette articulation entre données financières et entretiens illustre la triangulation méthodologique attendue dans un travail doctoral rigoureux.

## 80:00 – 85:00 · Synthèse de la séance

Récapitulons les trois méthodes vues aujourd''hui. L''étude d''événement mesure la réaction des prix à une information nouvelle via l''AR et le CAR. La modélisation économétrique, notamment via les modèles ARCH/GARCH, traite la volatilité variable des séries financières. L''enquête auprès de dirigeants financiers explore les motivations déclarées, en complément indispensable de l''analyse quantitative. Le choix et la combinaison de ces méthodes doivent toujours être justifiés par la question de recherche posée.

## 85:00 – 1:30:00 · Évaluation finale (5 questions avec réponses)

Terminons par une évaluation de cinq questions.

- Question 1 : Qu''est-ce qu''une rentabilité anormale cumulée (CAR), et à quoi sert-elle ? Réponse : c''est la somme des rentabilités anormales (écarts entre rentabilité observée et rentabilité attendue par le modèle de marché) sur une fenêtre de jours autour d''un événement ; elle permet de juger l''ampleur et la persistance de la réaction du marché à cet événement.
- Question 2 : Pourquoi un modèle GARCH est-il préférable à un écart-type constant pour une série de rendements financiers ? Réponse : parce que la volatilité des rendements financiers varie dans le temps et se regroupe en périodes calmes et agitées, ce qu''un écart-type constant ne peut pas représenter.
- Question 3 : Une volatilité quotidienne de 2 % correspond approximativement à quelle volatilité annualisée (avec 252 jours de bourse) ? Réponse : environ 2% × racine de 252, soit environ 31,7 %.
- Question 4 : Citez deux limites méthodologiques de l''enquête auprès de dirigeants financiers. Réponse : le biais de déclaration (réponses valorisantes) et le taux de réponse souvent faible, qui limite la représentativité de l''échantillon.
- Question 5 : Pourquoi recommande-t-on un protocole mixte (quantitatif et qualitatif) pour tester une théorie de structure de financement dans un contexte de marché en développement ? Réponse : parce que l''analyse quantitative documente les choix de financement réellement observés tandis que l''enquête qualitative en explore les motivations, et leur combinaison permet de détecter d''éventuelles spécificités locales non prévues par la théorie d''origine.', 'video', 90, false, 80
from public.courses c where c.slug = 'doc-fin'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : les méthodes de recherche en finance');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : traiter une question de synthèse d''examen de qualification en Finance', '## Fiche du cours vidéo

Durée : 1h30. Public : doctorants en finance préparant leur examen de qualification. Objectifs : s''entraîner en direct au traitement d''une question de synthèse d''examen, en mobilisant les deux courants théoriques et une méthode de recherche vus dans les séances précédentes. Matériel : diaporama, tableau pour construire le plan en direct. Prérequis : avoir visionné les trois vidéos précédentes et lu la leçon texte correspondante (leçon 5).

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Bienvenue dans cette séance d''entraînement direct au traitement d''une question de synthèse d''examen de qualification. Nous allons reprendre la question étudiée en leçon texte : « Dans quelle mesure les débats théoriques sur l''efficience des marchés et sur la structure de financement des entreprises doivent-ils être reconsidérés lorsqu''on les applique à un marché financier en développement comme celui de l''Afrique de l''Ouest ? » et construire ensemble, pas à pas, une réponse complète. Une pause quiz interviendra au milieu, et nous terminerons par une évaluation finale.

## 05:00 – 15:00 · Décomposer la question avant de répondre

La première compétence à démontrer devant un jury, avant même de commencer à répondre, est la capacité à décomposer la question posée. Je vous propose de noter au tableau, avec moi, les trois exigences croisées de cette question. Exigence théorique : mobiliser à la fois le débat efficience/finance comportementale et le débat sur la structure de financement, sans en privilégier un seul au détriment de l''autre. Exigence contextuelle : la question porte explicitement sur la transposition de ces théories à un marché financier en développement, ce qui exclut une réponse purement descriptive qui se contenterait de résumer les théories occidentales sans les discuter. Exigence méthodologique : la question demande une proposition concrète de protocole empirique, qui doit découler logiquement de l''analyse qui précède plutôt que lui être ajoutée artificiellement en fin de copie. Un jury sanctionne sévèrement une réponse qui ignore une de ces trois exigences, même si les connaissances théoriques exposées sont par ailleurs correctes.

## 15:00 – 30:00 · Construire le plan en direct : parties I et II

Construisons maintenant le plan ensemble. La partie I traite le débat efficience/finance comportementale reconsidéré en contexte de marché peu profond : on rappelle les formes de l''efficience et les apports de la finance comportementale, puis on montre que la faible liquidité et les coûts d''arbitrage plus élevés sur un marché comme la BRVM peuvent limiter l''efficience de forme semi-forte, sans que cela traduise nécessairement une irrationalité plus marquée des investisseurs locaux — il s''agit d''une différence de structure de marché, pas de comportement. La partie II traite le débat sur la structure de financement reconsidéré dans le même contexte : on rappelle le théorème de Modigliani-Miller et ses trois extensions, puis on montre que l''accès restreint aux marchés de capitaux externes et l''asymétrie d''information potentiellement plus marquée renforcent particulièrement la pertinence de la théorie du financement hiérarchique pour les entreprises de la région. Remarquez la symétrie de construction entre ces deux parties : chacune suit le même schéma, rappel théorique puis discussion contextuelle, ce qui donne une cohérence visible à votre réponse.

## 30:00 – 40:00 · Construire le plan en direct : parties III et IV

La partie III met en tension les deux débats précédents, en montrant qu''ils se rejoignent sur un même constat méthodologique : les théories financières de référence, construites sur des hypothèses de marchés profonds, doivent être testées empiriquement sur le contexte local avant d''être supposées valides, plutôt que transposées par analogie. C''est cette partie III qui distingue une excellente réponse d''une réponse moyenne, car elle montre que vous ne traitez pas deux questions séparées mais une seule problématique unifiée. La partie IV propose le protocole empirique : une étude d''événement appliquée à un échantillon d''annonces d''entreprises cotées à la BRVM pour mesurer l''efficience locale, complétée par une enquête auprès de directeurs financiers de la région pour tester la théorie du financement hiérarchique. Notez bien que ce protocole combine les deux méthodes vues en séance précédente, ce qui montre au jury votre capacité à relier théorie et méthode de façon cohérente.

## 40:00 – 45:00 · Pause et quiz interactif

Prenons cinq minutes de pause avec un quiz. Première question : quelles sont les trois exigences croisées de la question d''examen étudiée ? Deuxième question : pourquoi la partie III du plan est-elle considérée comme la plus discriminante pour le jury ? Troisième question : quelles deux méthodes sont mobilisées dans le protocole empirique proposé ? Réponses : exigence théorique, exigence contextuelle, exigence méthodologique. La partie III montre que le candidat traite une problématique unifiée plutôt que deux questions séparées. Le protocole mobilise une étude d''événement et une enquête auprès de dirigeants financiers.

## 45:00 – 60:00 · Rédiger un extrait en direct

Passons maintenant à la rédaction, car un bon plan ne suffit pas : il faut savoir le rédiger avec précision à l''oral comme à l''écrit. Reprenons l''extrait de la partie I étudié en leçon texte et décomposons sa construction phrase par phrase. La première phrase pose le cadre théorique avec précision (la forme semi-forte de l''efficience). La deuxième phrase introduit la condition qui rend ce cadre théorique vérifié sur un marché développé (nombreux arbitragistes, coûts de transaction faibles). La troisième phrase introduit la nuance contextuelle, sans jamais affirmer un résultat empirique non vérifié (« ce qui n''invalide pas le cadre théorique mais invite à en vérifier empiriquement le degré effectif »). La quatrième phrase ajoute l''éclairage du second courant théorique (la finance comportementale) pour enrichir l''analyse plutôt que la répéter. Cette structure en quatre temps — cadre théorique, condition de validité, nuance contextuelle, éclairage complémentaire — est une excellente grille de rédaction que vous pouvez réutiliser pour n''importe quelle partie de votre réponse à l''oral.

## 60:00 – 75:00 · Simuler les objections d''un jury

Un jury ne se contente jamais d''écouter une réponse préparée : il pose des questions de relance pour tester la profondeur de votre maîtrise. Entraînons-nous à anticiper trois objections possibles sur cette question. Première objection : « Vous affirmez que la BRVM est moins efficiente, mais avez-vous des preuves empiriques précises ? » Bonne réponse : rappeler que l''on ne peut affirmer un résultat empirique précis sans étude dédiée, et que c''est précisément la raison du protocole proposé en partie IV — la nuance plutôt que l''affirmation catégorique est la meilleure défense. Deuxième objection : « La théorie du financement hiérarchique s''applique-t-elle aussi aux grandes entreprises cotées, ou seulement aux PME ? » Bonne réponse : préciser que la théorie a été développée principalement sur des entreprises cotées de marchés développés, et que son application aux PME de marchés en développement, où l''accès aux fonds propres externes est encore plus restreint, constitue justement une extension intéressante à tester empiriquement. Troisième objection : « Ne pourrait-on pas simplement appliquer les résultats obtenus sur des marchés comme Paris ou New York ? » Bonne réponse : rappeler que les caractéristiques structurelles diffèrent (liquidité, nombre d''arbitragistes, cadre institutionnel), ce qui justifie précisément la nécessité d''un test empirique local plutôt qu''une transposition directe.

## 75:00 – 85:00 · Synthèse de la séance

Récapitulons les compétences travaillées aujourd''hui. Décomposer systématiquement une question de synthèse en ses exigences théoriques, contextuelles et méthodologiques. Construire un plan qui traite chaque courant puis les met en tension avec le contexte imposé. Rédiger selon une grille en quatre temps : cadre théorique, condition de validité, nuance contextuelle, éclairage complémentaire. Anticiper les objections de relance d''un jury en privilégiant toujours la nuance méthodologique à l''affirmation catégorique non vérifiée.

## 85:00 – 1:30:00 · Évaluation finale (5 questions avec réponses)

Terminons par une évaluation de cinq questions.

- Question 1 : Citez les trois exigences croisées d''une question de synthèse d''examen de qualification en finance appliquée à un contexte de marché en développement. Réponse : exigence théorique (mobiliser plusieurs courants), exigence contextuelle (discuter la transposition au contexte imposé), exigence méthodologique (proposer un protocole empirique cohérent).
- Question 2 : Pourquoi une réponse qui traite séparément les deux courants théoriques sans les mettre en tension avec le contexte est-elle jugée insuffisante ? Réponse : parce qu''elle ne répond pas réellement à la question posée, qui porte sur la reconsidération conjointe des théories dans un contexte spécifique, et non sur leur simple restitution.
- Question 3 : Décrivez la grille de rédaction en quatre temps présentée dans cette séance. Réponse : cadre théorique précis, condition de validité de ce cadre, nuance contextuelle sans affirmation catégorique non vérifiée, éclairage complémentaire d''un second courant théorique.
- Question 4 : Un jury vous demande des preuves empiriques précises que vous n''avez pas. Quelle est la meilleure stratégie de réponse ? Réponse : reconnaître qu''aucune affirmation empirique précise ne peut être faite sans étude dédiée, et rappeler que c''est précisément la raison d''être du protocole empirique proposé.
- Question 5 : Pourquoi ne peut-on pas simplement transposer des résultats obtenus sur un marché développé à un marché financier en développement ? Réponse : parce que les caractéristiques structurelles (liquidité, nombre d''arbitragistes, cadre institutionnel, accès aux marchés de capitaux) diffèrent, ce qui impose une vérification empirique locale plutôt qu''une transposition par analogie.', 'video', 90, false, 90
from public.courses c where c.slug = 'doc-fin'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : traiter une question de synthèse d''examen de qualification en Finance');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : simulation complète d''une soutenance de qualification doctorale en Finance', '## Fiche du cours vidéo

Durée : 1h30. Public : doctorants en finance en fin de préparation à leur examen de qualification. Objectifs : vivre, dans des conditions proches du réel, une simulation complète de soutenance de qualification doctorale en finance, avec présentation du champ, défense d''un projet de thèse fictif, et questions de jury type. Matériel : diaporama de présentation, grille d''auto-évaluation finale. Prérequis : avoir suivi les quatre vidéos précédentes et lu les cinq leçons texte du cours.

## Déroulé minuté

## 00:00 – 05:00 · Introduction et mise en situation

Bienvenue dans cette cinquième et dernière vidéo, la plus importante pour votre préparation finale : une simulation complète de soutenance de qualification doctorale en finance. Je vais jouer le rôle du candidat doctorant, puis nous passerons en revue les questions qu''un jury type poserait, avec la structure attendue d''une bonne réponse pour chacune. Mettez-vous dans les conditions réelles de l''épreuve : calme, concentration, et une bonne gestion du temps de parole, qui est aussi évaluée par le jury.

## 05:00 – 20:00 · Présentation du champ (15 minutes)

« Mesdames, Messieurs les membres du jury, je vous propose de présenter en 15 minutes l''état du champ de la finance qui structure mon projet de thèse. La finance de marché et la finance d''entreprise sont traversées par deux grands débats que j''ai choisi d''articuler. D''une part, le débat entre l''hypothèse d''efficience des marchés, qui postule une intégration rapide de l''information dans les prix, et la finance comportementale, qui documente des biais cognitifs systématiques et des anomalies de marché durables. D''autre part, le débat sur la structure de financement des entreprises, ouvert par le théorème de Modigliani-Miller, puis enrichi par trois extensions majeures : l''avantage fiscal de la dette, les coûts de faillite et de détresse financière, et l''asymétrie d''information, cette dernière donnant naissance à la théorie du financement hiérarchique. Ces deux débats, bien que portant sur des objets différents — la formation des prix d''un côté, le choix des sources de financement de l''autre — partagent un point commun essentiel pour mon projet de thèse : ils ont été construits et testés empiriquement, pour l''essentiel, sur des marchés financiers profonds et liquides des économies avancées. Mon projet de thèse propose de les tester empiriquement sur la Bourse Régionale des Valeurs Mobilières et sur un échantillon d''entreprises de la zone UEMOA, en combinant deux méthodes : une étude d''événement pour mesurer le degré effectif d''efficience locale, et une enquête auprès de directeurs financiers pour tester la pertinence de la théorie du financement hiérarchique dans ce contexte. Ma problématique centrale est la suivante : dans quelle mesure les théories de référence de la finance doivent-elles être reconsidérées, plutôt que simplement transposées, lorsqu''elles sont appliquées à un marché financier en développement ? » Voilà le type d''exposé structuré, avec une problématique claire énoncée explicitement à la fin, que votre jury attend de vous en quinze minutes.

## 20:00 – 25:00 · Transition et consignes pour la suite

Après cette présentation, le jury engage généralement une série de questions, qui alternent entre questions de connaissance pure, questions de mise en tension critique, et questions sur la faisabilité méthodologique du projet. Nous allons maintenant passer en revue dix questions de jury type, avec chaque fois la structure attendue d''une bonne réponse, plutôt qu''une réponse mot à mot à mémoriser — c''est cette structure qu''il faut intérioriser.

## 25:00 – 55:00 · Questions de jury type 1 à 5

- Question 1 du jury : « Pourquoi avez-vous choisi d''articuler ces deux débats théoriques plutôt que de vous concentrer sur un seul ? » Structure de bonne réponse : rappeler que les deux débats partagent le même enjeu méthodologique (la transposition à un marché en développement), ce qui justifie leur articulation plutôt qu''un choix exclusif, et montrer que cette articulation enrichit la problématique sans la disperser.
- Question 2 du jury : « L''hypothèse d''efficience des marchés n''est-elle pas réfutée par l''existence de bulles spéculatives ? » Structure de bonne réponse : nuancer en distinguant les formes de l''efficience, rappeler que les bulles sont documentées comme anomalies mais que leur existence ne réfute pas nécessairement l''efficience de forme faible, et mentionner les limites à l''arbitrage comme explication de leur persistance.
- Question 3 du jury : « Pourquoi la théorie du financement hiérarchique vous semble-t-elle plus pertinente que la théorie du compromis pour votre terrain ? » Structure de bonne réponse : ne jamais rejeter totalement l''une des deux théories, mais argumenter que les caractéristiques structurelles du terrain (accès restreint aux marchés de capitaux, asymétrie d''information) rendent la théorie du financement hiérarchique a priori plus prédictive, tout en précisant que cela reste une hypothèse à tester, pas une certitude.
- Question 4 du jury : « Votre étude d''événement portera sur combien d''entreprises, et pourquoi ce nombre ? » Structure de bonne réponse : donner un ordre de grandeur réaliste compte tenu du nombre de titres cotés à la BRVM, reconnaître la contrainte d''un échantillon plus restreint que sur un marché développé, et expliquer les implications statistiques de cette contrainte (puissance du test, nécessité de regrouper plusieurs types d''événements).
- Question 5 du jury : « Comment garantirez-vous la qualité des réponses à votre enquête auprès des directeurs financiers ? » Structure de bonne réponse : mentionner les techniques de fiabilisation (anonymat des réponses, croisement avec des données financières objectives, pré-test du questionnaire auprès d''un petit échantillon) et reconnaître honnêtement les limites qui subsisteront malgré ces précautions.

## 55:00 – 60:00 · Pause et quiz interactif

Prenons cinq minutes de pause. Je vous propose, à titre de quiz, de reformuler mentalement en une phrase chacune des cinq questions de jury déjà vues, sans relire vos notes, pour tester votre capacité de restitution sous une forme proche de l''oral réel.

## 60:00 – 85:00 · Questions de jury type 6 à 10

- Question 6 du jury : « Si votre étude d''événement montre une réaction de marché très rapide, en conclurez-vous que la BRVM est efficiente ? » Structure de bonne réponse : refuser la conclusion hâtive, rappeler qu''un seul résultat ne suffit pas à trancher, et qu''il faudrait répliquer l''analyse sur plusieurs types d''événements et plusieurs périodes avant toute généralisation.
- Question 7 du jury : « Votre projet mentionne un taux d''impôt sur les sociétés pour vos simulations : sur quelle source officielle vous appuyez-vous ? » Structure de bonne réponse : préciser explicitement que toute valeur chiffrée utilisée dans les illustrations théoriques est fictive, à but pédagogique, et qu''une application réelle nécessiterait de vérifier le taux officiel en vigueur auprès des sources réglementaires compétentes au moment de l''étude.
- Question 8 du jury : « En quoi votre travail apporte-t-il une contribution originale par rapport à la littérature existante ? » Structure de bonne réponse : rappeler que la plupart des tests empiriques de ces théories ont été menés sur des marchés développés, et que leur test systématique et combiné sur un marché financier en développement comme la BRVM, avec une méthode mixte, constitue l''apport attendu, sans exagérer la portée de ce qui reste une étude de cas régionale.
- Question 9 du jury : « Quelles limites anticipez-vous déjà pour votre travail ? » Structure de bonne réponse : citer honnêtement la taille réduite de l''échantillon disponible, les éventuelles limites de qualité ou de disponibilité des données financières locales, et le biais de déclaration possible dans l''enquête — une bonne réponse anticipe les limites plutôt que de les laisser découvrir par le jury.
- Question 10 du jury : « Si vos résultats empiriques contredisaient vos hypothèses théoriques, que feriez-vous ? » Structure de bonne réponse : affirmer qu''un résultat contraire aux hypothèses initiales est aussi une contribution scientifique légitime, à condition d''être discuté rigoureusement, et qu''il faudrait alors explorer les raisons de cet écart plutôt que de le dissimuler ou de forcer l''interprétation des données.

## 85:00 – 1:30:00 · Grille d''auto-évaluation de la soutenance simulée

Cette dernière vidéo se termine, non par une évaluation à cinq questions avec réponses comme les précédentes, mais par une grille d''auto-évaluation que vous devez utiliser après chaque entraînement oral, seul ou avec un collègue. Notez-vous honnêtement de 1 à 4 sur chacun des critères suivants (1 = à retravailler, 4 = maîtrisé).

- Clarté de la problématique énoncée en fin de présentation de 15 minutes : la problématique est-elle formulée en une phrase compréhensible, sans jargon excessif ?
- Articulation des deux courants théoriques : les deux débats sont-ils reliés par un fil directeur clair, plutôt que juxtaposés sans lien ?
- Précision du vocabulaire théorique : les termes techniques (formes de l''efficience, extensions de Modigliani-Miller, AR, CAR) sont-ils employés avec exactitude ?
- Gestion des questions pièges : les réponses évitent-elles les affirmations catégoriques non vérifiées, au profit d''une nuance méthodologique assumée ?
- Honnêteté sur les limites du projet : les limites de l''échantillon, des données ou de la méthode sont-elles reconnues spontanément plutôt qu''évitées ?
- Gestion du temps de parole : la présentation tient-elle dans le temps imparti sans précipitation ni longueurs excessives ?
- Capacité à relier théorie et méthode : chaque méthode proposée est-elle justifiée par rapport à la théorie qu''elle permet de tester ?
- Ancrage dans le contexte régional : le projet évite-t-il la transposition par analogie, au profit d''une vérification empirique explicitement revendiquée ?

Faites le total sur 32 points. Un score supérieur à 26 traduit une préparation solide ; entre 18 et 26, continuez à retravailler les points les plus faibles identifiés ; en dessous de 18, reprenez les quatre premières vidéos de ce cours avant de retenter une simulation complète. Cette grille, répétée à intervalles réguliers durant vos huit semaines de préparation, est l''outil le plus efficace pour transformer une connaissance théorique en une performance orale maîtrisée devant un jury réel.', 'video', 90, false, 100
from public.courses c where c.slug = 'doc-fin'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : simulation complète d''une soutenance de qualification doctorale en Finance');

-- Cours : Doctorat Marketing et commerce : préparer l'examen de qualification doctorale
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'doc-mkt', (select id from public.levels where name = 'Doctorat'), null, 'Marketing et commerce', 'Doctorat Marketing et commerce : préparer l''examen de qualification doctorale', 'Cours de préparation à l''examen de qualification doctorale en marketing et commerce : grands courants théoriques (marketing mix vs marketing relationnel et dominante service), débat standardisation/adaptation culturelle en Afrique, méthodes de recherche du champ (expérimentation, enquête, qualitatif) et simulation de soutenance devant jury.', true, 809
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir son examen de qualification doctorale en Marketing et commerce', '## Objectifs de la leçon

Cette première leçon pose le cadre de l''examen de qualification doctorale (comprehensive exam) en marketing et commerce. Elle décrit la nature de l''épreuve, les attentes d''un jury doctoral, une méthode de travail éprouvée et un plan de travail réaliste sur huit semaines. L''objectif n''est pas de refaire un cours de méthodologie générale, mais de donner au doctorant les repères spécifiques à son champ : quelles lectures sont incontournables, comment organiser une cartographie des courants du marketing, et comment transformer des mois de lecture en une note de synthèse défendable à l''oral.

## Nature de l''épreuve de qualification

L''examen de qualification doctorale n''est pas un examen de cours. Il vise à vérifier qu''un doctorant possède une vue d''ensemble critique de son champ avant de se consacrer pleinement à sa thèse. Dans la plupart des programmes doctoraux, l''épreuve comporte deux volets complémentaires. Le premier est une production écrite : une synthèse de la littérature (literature review) qui retrace les grands courants théoriques du marketing, leurs tensions, leurs auteurs fondateurs et leurs prolongements récents. Le second est une soutenance orale devant un jury de professeurs, au cours de laquelle le doctorant présente cette synthèse, expose le positionnement théorique envisagé pour sa future thèse, puis répond à des questions qui testent à la fois l''étendue de ses connaissances et sa capacité à raisonner en temps réel.

Ce qui distingue cette épreuve d''un examen de master, c''est le niveau d''exigence attendu sur la maîtrise des débats théoriques. Un étudiant de master doit savoir appliquer un modèle à un cas d''entreprise. Un doctorant doit savoir d''où vient ce modèle, pourquoi il a été contesté, par qui, et ce qui lui a succédé ou ce qui le complète. Le jury ne demande pas « comment appliquer les 4P à cette entreprise », il demande « en quoi le marketing mix transactionnel est-il aujourd''hui discuté par la logique de dominante service, et que change ce déplacement pour la recherche en marketing ».

## Ce qu''attend un jury doctoral

Un jury de qualification évalue trois choses. D''abord, la rigueur conceptuelle : le doctorant doit employer les termes du champ avec précision, distinguer par exemple un paradigme d''une théorie, un courant d''une méthode, un concept d''un construit mesurable. Ensuite, l''esprit critique : il ne s''agit pas de réciter des courants côte à côte, mais de les mettre en tension, de montrer leurs limites respectives et d''argumenter un positionnement personnel, même provisoire. Enfin, la capacité à situer un projet de thèse dans cette littérature : un doctorant qui ne peut pas expliquer en quoi son sujet dialogue avec les débats existants du champ n''est pas prêt à soutenir son projet.

Les jurys sanctionnent fréquemment trois défauts. Le premier est l''énumération sans articulation : citer de nombreux auteurs et courants sans jamais les relier entre eux ni à une problématique. Le deuxième est l''anachronisme théorique : présenter un courant ancien comme s''il était la dernière frontière du champ, ou l''inverse, ignorer qu''un courant plus récent répond directement aux limites d''un courant plus ancien. Le troisième est l''absence de recul critique sur les méthodes : savoir qu''un plan factoriel existe ne suffit pas, il faut savoir en discuter la pertinence et les limites pour une question de recherche donnée.

## Méthode de travail pour préparer l''épreuve

Trois outils structurent une préparation efficace. Le premier est la fiche de lecture standardisée : pour chaque texte ou chaque courant étudié, une fiche courte qui résume la thèse principale, le contexte d''émergence, les concepts clés, les critiques reçues et les prolongements. Cette discipline évite l''écueil classique du doctorant qui a « beaucoup lu » mais ne retrouve plus, sous la pression de l''oral, l''argument précis d''un auteur.

Le deuxième outil est la cartographie des courants, c''est-à-dire une représentation visuelle (tableau ou schéma) qui place les grands paradigmes du marketing sur une ligne du temps et les relie par des flèches de continuité, de rupture ou de complémentarité. Pour le marketing, une cartographie utile oppose, par exemple, l''axe transactionnel centré sur l''échange ponctuel et le marketing mix, à l''axe relationnel centré sur la durée, la confiance et la coproduction de valeur avec le client. Une bonne cartographie fait aussi apparaître les débats transversaux, comme celui de la standardisation versus l''adaptation culturelle des stratégies marketing dans des contextes émergents.

Le troisième outil est la note de synthèse rédigée, de cinq à dix pages, qui simule l''écrit de l''épreuve. Rédiger cette note force le doctorant à choisir un plan, à hiérarchiser les courants et à formuler une problématique de recherche personnelle, exercice bien plus exigeant que la simple lecture passive.

## Plan de travail sur huit semaines

Un plan de travail réaliste répartit l''effort en quatre phases de deux semaines chacune. Les semaines 1 et 2 sont consacrées à la cartographie générale du champ : identifier les grands paradigmes (marketing mix, marketing relationnel, dominante service, comportement du consommateur, marketing international) et lister, pour chacun, trois à cinq références structurantes. Les semaines 3 et 4 approfondissent deux courants prioritaires, choisis pour leur pertinence par rapport au projet de thèse envisagé, avec fiches de lecture détaillées et premières mises en tension critique.

Les semaines 5 et 6 sont dédiées aux méthodes de recherche : revoir les logiques de l''expérimentation, de l''enquête par questionnaire et des méthodes qualitatives, et surtout savoir argumenter le choix d''une méthode pour une question donnée plutôt que simplement la décrire. Les semaines 7 et 8 servent à la rédaction de la note de synthèse écrite et à la simulation orale, idéalement devant un collègue ou un directeur de recherche qui joue le rôle du jury et pose des questions imprévues. Ce calendrier n''est qu''un repère : il doit être adapté au temps réellement disponible et au nombre de courants exigés par le programme doctoral concerné.

## Points clés à retenir

L''examen de qualification doctorale en marketing teste une maîtrise critique du champ, pas une application de modèle à un cas d''entreprise. Le jury valorise la mise en tension des courants, la précision conceptuelle et la capacité à situer un projet de thèse dans la littérature existante. Une préparation efficace repose sur des fiches de lecture rigoureuses, une cartographie visuelle des courants et une note de synthèse rédigée à l''avance, le tout organisé sur un calendrier de plusieurs semaines qui laisse du temps à la simulation orale.

## Exercices pratiques

1. Construisez votre propre cartographie des courants du marketing, sous forme de tableau à trois colonnes (courant, période d''émergence, idée centrale), en plaçant au moins cinq courants ou paradigmes du champ.

2. Rédigez, en dix lignes maximum, une définition rigoureuse de ce que le jury attend quand il demande de « mettre en tension deux courants théoriques », en donnant un exemple concret au marketing.

3. Identifiez trois défauts fréquents (parmi ceux mentionnés dans la leçon) que vous pensez être le plus exposé à commettre à l''oral, et proposez pour chacun une action corrective précise.

4. Esquissez, en une phrase, le lien possible entre votre futur projet de thèse (réel ou fictif) et le débat standardisation versus adaptation culturelle en marketing.

5. Proposez un calendrier de préparation personnalisé sur huit semaines, adapté à votre situation (temps disponible, nombre de courants exigés par votre programme).

## Corrigé

1. Il n''existe pas de corrigé unique : l''évaluation porte sur la cohérence interne du tableau. Un bon tableau situe correctement, par exemple, le marketing mix transactionnel dans les années 1960, le marketing relationnel à partir des années 1980-1990, la logique de dominante service (service-dominant logic) au milieu des années 2000, et peut ajouter le marketing international/interculturel et le comportement du consommateur comme courants transversaux.

2. Une définition acceptable : mettre en tension deux courants signifie montrer en quoi le second répond, prolonge ou contredit les limites du premier, sans se contenter de les décrire côte à côte. Exemple : le marketing relationnel met en tension le marketing mix transactionnel en déplaçant l''attention de la transaction unique vers la relation durable et la valeur coproduite avec le client, ce qui remet en cause la vision du client comme simple récepteur passif de l''offre.

3. Réponse ouverte ; l''essentiel est que l''action corrective soit concrète (par exemple : pour l''énumération sans articulation, s''imposer systématiquement une phrase de lien entre deux auteurs cités dans la même réponse).

4. Réponse ouverte ; l''essentiel est d''établir un lien plausible et explicite, par exemple un projet de thèse sur l''adaptation des stratégies de marque de distributeurs internationaux sur les marchés ouest-africains, qui s''inscrit directement dans ce débat.

5. Réponse ouverte ; un calendrier acceptable respecte globalement la logique proposée dans la leçon (cartographie générale, puis approfondissement ciblé, puis méthodes, puis rédaction et simulation), même si la répartition en semaines diffère.', 'texte', 60, true, 10
from public.courses c where c.slug = 'doc-mkt'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir son examen de qualification doctorale en Marketing et commerce');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Courant théorique n°1 : du marketing mix transactionnel au marketing relationnel et à la dominante service', '## Objectifs de la leçon

Cette leçon traite le premier grand débat théorique du champ : l''opposition, puis la mise en tension progressive, entre le paradigme transactionnel du marketing mix (les « 4P ») et le paradigme relationnel prolongé par la logique de dominante service (service-dominant logic) et la notion de co-création de valeur. Ce débat est central pour l''examen de qualification car il structure l''histoire récente de la discipline et conditionne le choix des méthodes de recherche appropriées à chaque paradigme.

## Le paradigme transactionnel et le marketing mix

Le marketing, formalisé comme discipline de gestion à partir du milieu du vingtième siècle, s''est d''abord construit autour d''une vision transactionnelle de l''échange économique. Dans cette vision, l''entreprise définit une offre (produit, prix, distribution, communication) et la propose à un marché de consommateurs considérés comme des récepteurs relativement passifs, que l''on cherche à convaincre puis à faire acheter. Le modèle le plus connu de cette période est le marketing mix, généralement résumé par les « 4P » : produit, prix, place (distribution) et promotion (communication). Ce cadre a eu un apport considérable : il a donné aux praticiens un outil opérationnel simple pour organiser les décisions marketing et il a permis de penser le marketing comme un ensemble de leviers combinables, plutôt que comme une suite d''actions isolées.

La vision transactionnelle met l''accent sur l''échange ponctuel : chaque transaction est optimisée pour elle-même, l''objectif premier étant de conclure la vente. La relation entre l''entreprise et le client n''est pas niée, mais elle n''est pas le cœur de l''analyse : ce qui compte, c''est la bonne combinaison des variables du mix pour maximiser les ventes ou la part de marché sur une période donnée. Ce paradigme a dominé l''enseignement et la pratique du marketing pendant plusieurs décennies et reste aujourd''hui un socle pédagogique incontournable, notamment en marketing de grande consommation.

## Les limites du paradigme transactionnel

À partir des années 1980, plusieurs limites du paradigme transactionnel ont été mises en évidence par des chercheurs travaillant notamment sur le marketing des services et le marketing industriel (business to business). Première limite : le modèle du mix traite mal les situations où le produit vendu n''est pas un bien tangible mais un service, c''est-à-dire une prestation souvent coproduite avec le client, difficile à standardiser, et dont la qualité perçue dépend fortement de l''interaction humaine au moment de la prestation. Deuxième limite : dans de nombreux marchés, en particulier entre entreprises, la valeur ne se crée pas lors d''une transaction isolée mais au fil d''une relation de long terme, faite d''échanges répétés, d''ajustements mutuels et de confiance accumulée ; un modèle centré sur la transaction unique ne rend pas compte de cette dynamique. Troisième limite : le marketing mix traite le client comme une cible à atteindre plutôt que comme un acteur qui participe à la définition de la valeur, ce qui devient difficile à soutenir à mesure que les entreprises sollicitent davantage leurs clients dans la conception de l''offre.

## L''émergence du marketing relationnel

En réponse à ces limites, un courant relationnel se développe progressivement, en particulier dans les travaux sur le marketing des services et le marketing industriel. L''idée centrale est de déplacer l''objectif du marketing : non plus seulement conclure une transaction, mais construire, entretenir et développer une relation durable et mutuellement profitable avec le client. Le marketing relationnel s''intéresse à des notions nouvelles par rapport au cadre transactionnel : la confiance, l''engagement, la satisfaction cumulée, la fidélité, et la valeur du client sur l''ensemble de sa relation avec l''entreprise plutôt que sur un seul achat.

Ce déplacement a des conséquences concrètes pour la recherche en marketing. Les variables d''intérêt changent : on ne mesure plus seulement un acte d''achat ponctuel, mais des construits comme la confiance perçue, l''engagement affectif envers une marque ou un prestataire, ou l''intention de rester client sur plusieurs années. Les méthodes de recherche s''adaptent en conséquence, avec un recours accru aux enquêtes longitudinales et aux échelles de mesure validées de ces construits relationnels.

## La logique de dominante service et la co-création de valeur

Au milieu des années 2000, un courant plus radical encore prolonge cette évolution : la logique de dominante service (service-dominant logic), qui propose de renverser la hiérarchie implicite du marketing traditionnel entre biens et services. Dans cette perspective, ce n''est pas le service qui est un cas particulier de produit à commercialiser ; c''est au contraire l''échange de service, entendu comme l''application de compétences et de ressources au bénéfice d''un bénéficiaire, qui constitue le fondement de tout échange économique, y compris quand un bien tangible sert de support à ce service.

Cette logique introduit un concept central pour l''examen : la co-création de valeur. Dans la vision transactionnelle classique, l''entreprise crée la valeur (en fabriquant un produit) et le client se contente de la détruire en la consommant. Dans la logique de dominante service, la valeur n''est jamais créée unilatéralement par l''entreprise : elle est toujours co-créée dans l''usage, au moment où le client mobilise l''offre de l''entreprise avec ses propres ressources, son contexte et ses compétences. L''entreprise ne propose donc pas de la valeur « finie », mais une proposition de valeur que le client doit activer et adapter à sa situation pour qu''elle devienne effective. Cette distinction a des implications fortes pour la recherche : elle invite à étudier non plus seulement l''offre de l''entreprise, mais les pratiques d''usage des clients, leurs compétences, et les interactions au sein d''écosystèmes de services qui dépassent la seule relation bilatérale entre une entreprise et son client.

## Continuité, rupture et complémentarité entre les trois courants

Un point souvent mal maîtrisé par les candidats à l''oral est la nature exacte de la relation entre ces trois courants. Il serait inexact de présenter la dominante service comme un simple raffinement du marketing mix : il s''agit d''un changement de paradigme qui redéfinit ce qu''est la valeur et qui crée la valeur. Il serait également inexact de considérer que le marketing mix a disparu de la pratique : il reste un outil opérationnel utile pour organiser des décisions tactiques, même dans une entreprise qui adopte par ailleurs une philosophie relationnelle ou orientée service. La position la plus défendable devant un jury consiste à dire que ces trois courants ne sont pas simplement successifs mais coexistent dans la pratique actuelle, à des niveaux différents : le mix reste un outil tactique utile, le relationnel oriente la stratégie de gestion de la clientèle, et la dominante service propose un cadre conceptuel plus large pour repenser la nature même de l''échange économique, particulièrement pertinent pour l''économie des services, des plateformes numériques et des écosystèmes d''affaires.

## Points clés à retenir

Le marketing mix transactionnel structure l''échange autour de la transaction ponctuelle et des quatre leviers classiques (produit, prix, distribution, communication). Ses limites, mises en évidence notamment par la recherche sur les services et le marketing industriel, ont nourri l''émergence du marketing relationnel, centré sur la durée, la confiance et la valeur client dans le temps. La logique de dominante service radicalise ce déplacement en posant que toute valeur est co-créée dans l''usage, jamais livrée « finie » par l''entreprise. Ces trois courants ne s''excluent pas mais se superposent dans la pratique contemporaine, à des niveaux d''analyse différents.

## Exercices pratiques

1. Expliquez, en cinq phrases, pourquoi le marketing des services a joué un rôle déclencheur dans la remise en cause du paradigme transactionnel.

2. Distinguez précisément « valeur créée par l''entreprise » et « valeur co-créée dans l''usage » à l''aide d''un exemple de votre choix (bien ou service).

3. Un jury vous demande : « Le marketing mix est-il devenu obsolète ? » Rédigez un plan de réponse en trois points qui évite le piège du simple rejet ou de la simple défense du modèle.

4. Montrez en quoi le passage du marketing transactionnel au marketing relationnel modifie la nature des variables que la recherche doit mesurer (donnez deux exemples de construits relationnels).

5. Identifiez une critique possible adressée à la logique de dominante service elle-même (ses limites ou ses difficultés d''application empirique).

6. Proposez, en deux ou trois phrases, une question de thèse fictive qui se positionnerait explicitement à la frontière entre marketing relationnel et logique de dominante service.

## Corrigé

1. Le marketing des services a joué un rôle déclencheur car un service n''est pas stockable, est souvent produit et consommé simultanément, et dépend fortement de l''interaction humaine entre le prestataire et le client au moment de la prestation. Ces caractéristiques rendent difficile l''application directe du modèle du mix, pensé pour des biens tangibles standardisables. Les chercheurs ont donc dû élargir le cadre d''analyse pour intégrer la relation et l''interaction comme objets d''étude centraux. Cette extension a ouvert la voie à une réflexion plus large sur la relation client, au-delà du seul secteur des services. Elle a ainsi préparé le terrain conceptuel pour le marketing relationnel puis pour la dominante service.

2. La valeur créée par l''entreprise correspond à ce que l''organisation produit et met à disposition : par exemple, un fabricant de matériel de cuisine conçoit et fabrique un robot culinaire. La valeur co-créée dans l''usage correspond à ce qui se passe réellement quand le client utilise cet objet avec ses propres compétences, ses recettes, son contexte familial : le même robot culinaire « vaut » différemment selon que l''utilisateur sait l''exploiter pleinement ou l''utilise de façon minimale. La logique de dominante service insiste sur le fait que la véritable valeur économique se réalise à ce second moment, pas uniquement à la fabrication.

3. Plan recommandé : (a) non, le mix n''est pas obsolète comme outil opérationnel de pilotage tactique des décisions marketing courantes ; (b) oui, il est largement dépassé comme cadre conceptuel unique pour comprendre la création de valeur dans les économies de services et de plateformes ; (c) la position la plus juste est la coexistence à des niveaux différents : outil tactique d''un côté, cadre stratégique et conceptuel plus large de l''autre.

4. Dans le paradigme transactionnel, la variable centrale est l''acte d''achat ou la part de marché sur une période. Dans le paradigme relationnel, les construits mesurés incluent par exemple la confiance envers le prestataire (perception de sa fiabilité et de sa bienveillance) et l''engagement envers la marque ou l''enseigne (attachement affectif qui prédit la fidélité future), deux construits qui nécessitent des échelles de mesure validées et non une simple observation de l''acte d''achat.

5. Une critique courante porte sur la difficulté opérationnelle du concept : s''il est vrai que « toute valeur est co-créée », le concept perd en pouvoir explicatif différenciant s''il s''applique à n''importe quelle situation sans distinction ; certains chercheurs demandent donc des critères plus précis pour identifier quand la co-création est réellement observable et mesurable empiriquement, plutôt qu''affirmée comme principe général.

6. Exemple de question de thèse fictive : « Comment les pratiques de co-création de valeur avec des clients fidèles de longue date diffèrent-elles de celles observées avec des clients récents, dans le secteur des services financiers mobiles en Afrique de l''Ouest ? » Cette question mobilise à la fois le marketing relationnel (ancienneté de la relation, fidélité) et la dominante service (pratiques de co-création).', 'texte', 60, false, 20
from public.courses c where c.slug = 'doc-mkt'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Courant théorique n°1 : du marketing mix transactionnel au marketing relationnel et à la dominante service');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Courant théorique n°2 : standardisation versus adaptation culturelle du marketing dans les marchés africains émergents', '## Objectifs de la leçon

Cette leçon traite le second grand débat théorique attendu à l''examen de qualification : la tension, en marketing international et interculturel, entre les stratégies de standardisation (une offre et une communication globalement uniformes) et les stratégies d''adaptation culturelle (une offre ajustée aux spécificités locales), appliquée en particulier aux marchés africains émergents. Ce débat complète le précédent : il montre qu''au-delà de la question « que crée-t-on comme valeur », se pose la question « pour quel marché, et avec quel degré d''uniformité, cette valeur est-elle proposée ».

## Les termes du débat

Le débat standardisation/adaptation est ancien dans la recherche en marketing international. La thèse de la standardisation soutient qu''une entreprise opérant sur plusieurs marchés devrait, autant que possible, proposer une offre et une communication uniformes, pour deux raisons principales : des économies d''échelle importantes (un seul produit, une seule campagne de communication, conçus une fois et déployés partout) et une image de marque cohérente au niveau mondial. Cette thèse s''appuie sur l''idée, discutée depuis plusieurs décennies, d''une convergence progressive des goûts des consommateurs à l''échelle mondiale, portée par les médias globaux, les voyages et plus récemment par le numérique et les réseaux sociaux.

La thèse de l''adaptation culturelle soutient à l''inverse que les besoins, les codes de communication, les habitudes de consommation et les structures de distribution varient suffisamment d''un marché à l''autre pour qu''une offre uniforme soit sous-optimale, voire contre-productive. Elle s''appuie sur des travaux montrant la persistance de différences culturelles profondes (rapport au temps, à l''autorité, à la famille, au collectif, modes de négociation, langues, pratiques religieuses) qui influencent directement la perception d''un produit, le choix d''un canal de distribution ou l''efficacité d''un message publicitaire.

Entre ces deux positions extrêmes, la recherche contemporaine privilégie largement une position intermédiaire, parfois appelée « glocalisation » : standardiser ce qui peut l''être sans perte d''efficacité (certains attributs fonctionnels du produit, l''identité visuelle de marque, certains principes de positionnement), et adapter ce qui doit l''être pour rester pertinent localement (le packaging, le prix, les canaux de distribution, le ton et les références culturelles de la communication, parfois certaines caractéristiques du produit lui-même).

## Spécificités des marchés africains émergents dans ce débat

Les marchés africains, et notamment les marchés ouest-africains comme le Sénégal, présentent des caractéristiques qui rendent ce débat particulièrement vif et qui nourrissent des travaux de recherche spécifiques. Premièrement, la diversité linguistique et culturelle à l''intérieur même d''un seul pays ou d''une seule zone régionale (par exemple l''espace UEMOA) est souvent plus marquée que dans des marchés occidentaux de taille comparable, ce qui complique l''idée d''une adaptation « nationale » unique : une communication adaptée à Dakar ne l''est pas nécessairement de la même façon dans d''autres zones du pays ou de la sous-région.

Deuxièmement, la coexistence de circuits de distribution très différents (commerce formel moderne, grande distribution naissante, mais aussi un commerce informel et de proximité qui reste central dans beaucoup de catégories de produits de grande consommation) oblige les entreprises internationales à repenser la variable « distribution » du mix de façon beaucoup plus locale que dans des marchés où la grande distribution moderne domine largement.

Troisièmement, le pouvoir d''achat et les structures de prix très différenciées dans la population imposent souvent des stratégies de conditionnement et de tarification spécifiques (par exemple des formats de vente plus petits et plus nombreux, adaptés à une fréquence d''achat élevée mais à un pouvoir d''achat limité par transaction), ce qui constitue une adaptation produit au sens strict, pas seulement une adaptation de communication.

Quatrièmement, l''essor rapide des usages numériques et du mobile (paiement mobile, réseaux sociaux, commerce en ligne naissant) crée des opportunités à la fois de standardisation (des plateformes numériques globales utilisées localement) et d''adaptation (des usages spécifiques du mobile, par exemple pour le paiement, qui diffèrent sensiblement de ceux observés dans d''autres régions du monde), ce qui enrichit le débat plutôt que de le trancher dans un sens univoque.

## Lecture critique du débat pour l''examen de qualification

Un jury attend du candidat qu''il ne prenne pas parti de façon binaire mais qu''il sache articuler ce débat à plusieurs niveaux d''analyse. Au niveau du produit, l''adaptation peut être limitée à des éléments superficiels (packaging, nom local) ou aller jusqu''à une reconception substantielle. Au niveau de la communication, le débat porte sur la standardisation du message central de marque versus l''adaptation des exécutions créatives, des porte-parole, des références culturelles et des canaux médiatiques. Au niveau de la distribution et du prix, les marges de standardisation sont généralement les plus faibles, car ces variables dépendent le plus directement des structures économiques et commerciales locales.

Un autre point attendu est la prudence vis-à-vis d''une lecture essentialiste de la « culture africaine », qui gommerait la diversité interne du continent et des pays qui le composent. La recherche sérieuse en marketing interculturel évite de traiter l''Afrique comme un bloc culturel homogène ; elle privilégie des analyses situées, par pays, par région, voire par segment de consommateurs à l''intérieur d''un même pays, en croisant les variables culturelles avec des variables socio-économiques (urbain/rural, génération, niveau d''éducation, exposition aux médias internationaux).

Enfin, un bon candidat relie ce débat au précédent (transactionnel/relationnel/dominante service) : une stratégie d''adaptation culturelle poussée s''accorde souvent mieux avec une logique relationnelle ou de co-création, puisqu''elle suppose d''écouter et d''intégrer les pratiques et préférences locales des clients dans la définition même de l''offre, plutôt que de leur imposer une offre standardisée pensée ailleurs.

## Un exemple d''illustration (fictif, à but pédagogique)

Pour fixer les idées sans invoquer de marque réelle, on peut imaginer un fabricant international de boissons qui envisage d''entrer sur le marché sénégalais. Une stratégie entièrement standardisée reprendrait la même recette, le même format de conditionnement, le même positionnement prix et la même campagne publicitaire que sur son marché d''origine. Une stratégie entièrement adaptée repenserait la recette selon les préférences gustatives locales, proposerait des formats de vente plus petits adaptés à des achats fréquents et à faible montant unitaire, choisirait des canaux de distribution incluant le commerce de proximité informel, et construirait une communication en langues locales mobilisant des références culturelles sénégalaises. Dans la pratique, une entreprise raisonnable adopterait une position intermédiaire : conserver l''identité visuelle et le positionnement de marque globalement reconnaissables (standardisation du capital de marque), tout en adaptant fortement le format, le prix et les canaux de distribution (adaptation des variables opérationnelles), ce qui illustre concrètement la logique de « glocalisation » évoquée plus haut.

## Points clés à retenir

Le débat standardisation/adaptation oppose les économies d''échelle et la cohérence globale de marque à la pertinence locale et à l''efficacité commerciale sur un marché donné. Les marchés africains émergents, par leur diversité linguistique et culturelle interne, la coexistence de circuits de distribution formels et informels, et des structures de pouvoir d''achat différenciées, rendent ce débat particulièrement riche empiriquement. La position intermédiaire de « glocalisation » domine la recherche contemporaine, avec une analyse différenciée selon la variable du mix considérée (produit, prix, distribution, communication) plutôt qu''un choix global unique. Toute analyse doit éviter de traiter l''Afrique ou un pays africain comme un bloc culturel homogène.

## Exercices pratiques

1. Résumez en cinq phrases les arguments respectifs de la standardisation et de l''adaptation culturelle en marketing international.

2. Expliquez pourquoi les marges de standardisation sont généralement plus faibles pour la distribution et le prix que pour l''identité de marque.

3. Discutez le risque d''une lecture essentialiste de la « culture africaine » en recherche marketing, et proposez une façon plus rigoureuse de traiter la diversité culturelle dans une étude.

4. Montrez, à l''aide de l''exemple fictif de la boisson, en quoi une stratégie de « glocalisation » diffère à la fois d''une standardisation pure et d''une adaptation pure.

5. Reliez ce débat à celui de la leçon précédente (transactionnel/relationnel/dominante service) : en quoi une stratégie d''adaptation culturelle poussée se rapproche-t-elle d''une logique relationnelle ou de co-création ?

6. Formulez une question de thèse fictive qui porterait spécifiquement sur l''arbitrage standardisation/adaptation dans un secteur de votre choix en Afrique de l''Ouest.

## Corrigé

1. La standardisation met en avant les économies d''échelle, la cohérence de l''image de marque mondiale et l''idée d''une convergence progressive des goûts des consommateurs à l''échelle internationale. L''adaptation met en avant la persistance de différences culturelles substantielles (rapport au temps, à l''autorité, codes de communication, structures familiales) qui influencent la perception de l''offre. Elle s''appuie aussi sur des différences structurelles de distribution et de pouvoir d''achat selon les marchés. Entre ces deux positions, la recherche contemporaine retient le plus souvent une position intermédiaire différenciée selon la variable considérée. Aucune des deux thèses extrêmes n''est généralement défendue de façon absolue dans la littérature récente.

2. La distribution et le prix dépendent directement de structures économiques et commerciales locales difficilement contournables (réseaux de distributeurs existants, pouvoir d''achat réel de la population, réglementation locale, fiscalité), alors que l''identité visuelle et le positionnement de marque relèvent davantage d''un choix de l''entreprise elle-même, plus facilement transposable d''un marché à l''autre sans contrainte structurelle externe aussi forte.

3. Une lecture essentialiste traiterait « la culture africaine » comme un bloc homogène et statique, ce qui ignore la diversité linguistique, religieuse, générationnelle et socio-économique à l''intérieur même d''un seul pays. Une approche plus rigoureuse segmente l''analyse par pays, par région, voire par profil socio-économique de consommateurs, et croise systématiquement les variables culturelles avec des variables comme l''urbanité, l''âge ou le niveau d''éducation, plutôt que de supposer une réaction culturelle unique et uniforme.

4. Une standardisation pure garderait recette, format, prix et communication identiques au marché d''origine. Une adaptation pure repenserait tout, y compris la recette. La « glocalisation » conserve l''identité de marque et le positionnement global (éléments standardisés, porteurs d''économies d''échelle et de cohérence), tout en adaptant fortement le format, le prix et les canaux de distribution (éléments adaptés, porteurs de pertinence locale), ce qui illustre un arbitrage différencié variable par variable plutôt qu''un choix global unique.

5. Une adaptation culturelle poussée suppose d''écouter les pratiques, les préférences et le contexte réel des clients locaux pour ajuster l''offre, ce qui se rapproche de la logique relationnelle (construire une relation ajustée aux attentes réelles du client) et de la co-création de valeur (la valeur de l''offre se définit en partie avec le client et son contexte, pas uniquement par l''entreprise en amont), plutôt que de la logique transactionnelle qui imposerait une offre standardisée sans écoute particulière du marché local.

6. Exemple de question de thèse fictive : « Dans quelle mesure les opérateurs de services financiers mobiles présents dans plusieurs pays d''Afrique de l''Ouest adaptent-ils leurs interfaces et leurs canaux de communication aux spécificités linguistiques locales, et quel est l''effet perçu de cette adaptation sur la confiance des utilisateurs ? » Cette question mobilise directement le débat standardisation/adaptation tout en le reliant à un construit relationnel (la confiance).', 'texte', 60, false, 30
from public.courses c where c.slug = 'doc-mkt'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Courant théorique n°2 : standardisation versus adaptation culturelle du marketing dans les marchés africains émergents');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Les méthodes de recherche en marketing : expérimentation, enquête par questionnaire et approches qualitatives', '## Objectifs de la leçon

Cette leçon présente les trois grandes familles de méthodes de recherche mobilisées en marketing : l''expérimentation (en particulier les plans factoriels), l''enquête par questionnaire appuyée sur des échelles de mesure validées, et les méthodes qualitatives (entretiens et ethnographie du consommateur). Pour chacune, on précise la logique scientifique, les conditions de validité et les limites. La leçon se termine par un exemple détaillé de protocole de recherche mixte appliqué à un contexte sénégalais fictif, avec des calculs vérifiés.

## L''expérimentation en marketing

L''expérimentation vise à établir une relation de causalité entre une ou plusieurs variables que le chercheur manipule (les variables indépendantes, par exemple le prix affiché, la présence ou non d''une promotion, la couleur d''un emballage) et une variable qu''il observe (la variable dépendante, par exemple l''intention d''achat ou le choix effectif). Pour établir une causalité convaincante, l''expérimentation repose sur deux principes clés : la manipulation contrôlée de la ou des variables indépendantes, et la comparaison entre des groupes de répondants exposés à des conditions différentes, idéalement constitués par assignation aléatoire pour neutraliser l''influence de caractéristiques individuelles non contrôlées.

Le plan factoriel est la méthode la plus rigoureuse pour étudier simultanément l''effet de plusieurs facteurs et de leurs interactions. Dans un plan factoriel, chaque facteur (par exemple le prix) est décliné en plusieurs niveaux (par exemple prix bas et prix élevé), et l''on construit une condition expérimentale pour chaque combinaison possible de niveaux de tous les facteurs étudiés. Un plan factoriel à trois facteurs, chacun à deux niveaux, noté 2×2×2 ou 2³, génère ainsi 2³, soit 8 conditions expérimentales distinctes. L''intérêt majeur du plan factoriel, par rapport à une série d''expériences séparées, est qu''il permet de détecter non seulement l''effet de chaque facteur pris isolément (effet principal), mais aussi les effets d''interaction, c''est-à-dire les cas où l''effet d''un facteur dépend du niveau d''un autre facteur (par exemple, une promotion peut être efficace à prix bas mais inefficace, voire contre-productive, à prix élevé).

L''expérimentation présente des atouts et des limites qu''un candidat doit savoir discuter. Son principal atout est la validité interne : bien conduite, elle permet d''affirmer qu''une variable cause effectivement un effet observé, ce qu''une enquête corrélationnelle ne permet pas de faire avec la même certitude. Sa principale limite est la validité externe, c''est-à-dire la capacité à généraliser les résultats obtenus en laboratoire ou en situation contrôlée à des comportements réels de marché, souvent plus complexes et soumis à davantage de facteurs non contrôlés.

## L''enquête par questionnaire et les échelles de mesure validées

L''enquête par questionnaire reste la méthode quantitative la plus répandue en marketing pour étudier des construits comme les attitudes, les perceptions, les intentions ou la satisfaction, auprès d''un échantillon représentatif d''une population de consommateurs. Sa rigueur scientifique dépend fortement de la qualité des échelles de mesure utilisées. Une échelle de mesure validée est un ensemble d''items (questions ou affirmations, généralement notées sur une échelle de type Likert en plusieurs points) dont les propriétés psychométriques ont été testées et publiées dans la littérature de recherche : elle doit présenter une bonne fiabilité (cohérence interne des items qui mesurent le même construit) et une bonne validité (elle mesure effectivement le construit visé, et pas un autre construit proche).

La fiabilité d''une échelle se mesure couramment par le coefficient alpha de Cronbach, qui évalue la cohérence interne entre les items d''une même échelle : plus les items censés mesurer le même construit varient de façon cohérente entre les répondants, plus l''alpha est élevé. Un alpha supérieur à environ 0,70 est généralement considéré comme acceptable dans la recherche en gestion, bien que ce seuil doive être interprété avec prudence selon le nombre d''items et le contexte. Une seconde question centrale est la taille de l''échantillon nécessaire pour obtenir des résultats statistiquement fiables : elle dépend du niveau de confiance souhaité, de la marge d''erreur acceptée et, dans certains cas, de la taille de la population étudiée.

Au-delà des aspects techniques, le candidat doit savoir discuter les limites de l''enquête par questionnaire : biais de désirabilité sociale (le répondant répond ce qu''il pense être attendu plutôt que sa véritable opinion), biais de rappel (difficulté à se souvenir précisément de comportements passés), et écart entre intention déclarée et comportement réel, bien documenté en marketing (une intention d''achat élevée ne se traduit pas toujours par un achat effectif).

## Les méthodes qualitatives : entretiens et ethnographie du consommateur

Les méthodes qualitatives visent moins à mesurer l''ampleur d''un phénomène qu''à en comprendre le sens, les mécanismes et le contexte, souvent en amont d''une étude quantitative (pour générer des hypothèses) ou en complément (pour interpréter des résultats quantitatifs surprenants). L''entretien individuel semi-directif est la méthode qualitative la plus utilisée : le chercheur dispose d''un guide thématique mais laisse le répondant développer librement sa pensée, ce qui permet de faire émerger des significations, des logiques d''usage ou des freins à la consommation que des questions fermées de questionnaire n''auraient pas anticipés.

L''ethnographie du consommateur va plus loin : elle consiste à observer, parfois en immersion prolongée, les pratiques réelles de consommation dans leur contexte naturel (au domicile, sur le lieu de vente, dans la rue), plutôt que de se fier uniquement au discours que les personnes tiennent sur leurs pratiques. Cette méthode est particulièrement précieuse en marketing lorsque l''on étudie des comportements que les répondants ont du mal à verbaliser avec précision, ou lorsqu''un écart important est suspecté entre ce que les consommateurs disent faire et ce qu''ils font réellement. Sur les marchés africains, l''ethnographie du consommateur est fréquemment mobilisée pour étudier des pratiques de consommation dans le commerce informel ou de proximité, où les logiques d''achat (fréquence, négociation du prix, rôle du vendeur) sont difficiles à saisir par un simple questionnaire.

La principale limite des méthodes qualitatives, souvent soulignée à l''oral, est l''absence de représentativité statistique : les résultats obtenus auprès d''un nombre restreint de répondants ou de situations observées ne peuvent pas être généralisés à l''ensemble d''une population avec la même assurance qu''une enquête quantitative sur un large échantillon. Leur force réside en contrepartie dans la profondeur et la richesse contextuelle de la compréhension produite.

## Méthodes mixtes et logique de triangulation

Une réponse de bon niveau à l''oral évite d''opposer ces méthodes comme s''il fallait choisir définitivement l''une contre les autres. La recherche en marketing contemporaine recourt fréquemment à des méthodes mixtes, qui combinent, par exemple, une phase qualitative exploratoire (entretiens) pour identifier les dimensions pertinentes d''un phénomène encore peu connu, suivie d''une phase quantitative (enquête par questionnaire, voire expérimentation) pour tester et généraliser les relations identifiées. Cette combinaison, parfois appelée triangulation méthodologique, renforce la validité globale d''une recherche en compensant les limites propres à chaque méthode prise isolément.

## Exemple de protocole de recherche appliqué à un contexte sénégalais fictif

Supposons un projet de thèse fictif qui étudie l''effet du prix et de la présence d''un argumentaire de confiance (par exemple une garantie explicite) sur l''intention d''achat de services financiers mobiles auprès de commerçants de marchés urbains sénégalais. Un protocole de recherche rigoureux combinerait trois étapes.

Étape 1, qualitative exploratoire : conduire une série d''entretiens semi-directifs avec des commerçants, complétés par une observation ethnographique de courte durée sur un marché, afin d''identifier les dimensions de confiance et de prix réellement pertinentes dans ce contexte précis, avant de construire le questionnaire.

Étape 2, expérimentale : construire un plan factoriel à deux facteurs, chacun à deux niveaux : le prix du service (bas ou élevé) et la présence ou l''absence d''un argumentaire de confiance explicite dans la présentation du service. Ce plan 2×2 génère quatre conditions expérimentales. En recrutant par exemple 25 commerçants par condition, on obtiendrait un échantillon expérimental total de 100 répondants, réparti de façon égale entre les quatre groupes, permettant de tester à la fois l''effet principal du prix, l''effet principal de l''argumentaire de confiance, et leur éventuelle interaction (un vérification Python confirme que 4 conditions multipliées par 25 répondants donnent bien 100 participants).

Étape 3, enquête par questionnaire à grande échelle : pour généraliser les résultats expérimentaux à la population des commerçants d''une zone urbaine donnée, on administre un questionnaire plus large utilisant des échelles de mesure validées de la confiance et de l''intention d''adoption. Pour une population de commerçants estimée, à titre d''exemple fictif, à 5 000 personnes dans la zone étudiée, et en visant un niveau de confiance de 95 % avec une marge d''erreur de 5 %, un calcul standard (vérifié en Python) donne une taille d''échantillon minimale théorique d''environ 385 répondants pour une population infinie, ramenée à environ 357 répondants une fois appliquée la correction pour population finie. Si l''on souhaite une marge d''erreur plus exigeante de 3 % (toujours à titre d''exemple fictif, sans qu''il s''agisse d''une norme officielle), la taille d''échantillon nécessaire grimperait à environ 1 068 répondants pour une population infinie, ce qui illustre concrètement le coût, en taille d''échantillon, d''une exigence de précision accrue.

Pour la fiabilité des échelles de confiance utilisées en étape 3, un calcul illustratif et volontairement simplifié sur trois items fictifs notés de 1 à 5 auprès de cinq répondants (exemple strictement pédagogique, bien en dessous de la taille réelle requise pour un calcul valide) donne, une fois vérifié en Python, un coefficient alpha de Cronbach d''environ 0,77, ce qui serait considéré comme une cohérence interne acceptable si ce résultat se confirmait sur un échantillon réel de taille suffisante.

## Points clés à retenir

L''expérimentation, en particulier le plan factoriel, permet d''établir une causalité rigoureuse entre des variables manipulées et un comportement observé, au prix d''une validité externe parfois limitée. L''enquête par questionnaire, appuyée sur des échelles de mesure validées et une taille d''échantillon calculée (fiabilité évaluée par l''alpha de Cronbach, taille d''échantillon dépendant du niveau de confiance et de la marge d''erreur visés), permet de généraliser des relations à une population. Les méthodes qualitatives (entretiens, ethnographie du consommateur) apportent une compréhension fine du sens et du contexte, utile en amont ou en complément du quantitatif. La combinaison mixte de ces méthodes, par triangulation, constitue souvent la réponse méthodologique la plus solide pour une question de recherche en marketing.

## Exercices pratiques

1. Expliquez la différence entre un effet principal et un effet d''interaction dans un plan factoriel, à l''aide d''un exemple marketing de votre choix.

2. Pourquoi la validité externe est-elle souvent présentée comme la principale limite de l''expérimentation en marketing ?

3. Qu''est-ce qu''une échelle de mesure validée, et pourquoi un chercheur devrait-il éviter de créer ses propres items de questionnaire sans justification théorique ni test préalable ?

4. Dans quelles situations l''ethnographie du consommateur apporte-t-elle une information que l''entretien seul ne pourrait pas apporter ?

5. Décrivez en quoi consiste la triangulation méthodologique et donnez un exemple de séquence (qualitatif puis quantitatif, ou l''inverse) adaptée à une question de recherche de votre choix.

6. Reprenez l''exemple du protocole sénégalais fictif de la leçon et proposez une modification pertinente d''un des trois facteurs ou variables étudiés, en justifiant votre choix.

## Corrigé

1. Un effet principal est l''effet d''un facteur pris isolément, indépendamment des autres facteurs : par exemple, un prix plus bas augmente en moyenne l''intention d''achat, quel que soit l''argumentaire de confiance présenté. Un effet d''interaction se produit quand l''effet d''un facteur dépend du niveau d''un autre facteur : par exemple, l''argumentaire de confiance pourrait fortement augmenter l''intention d''achat à prix élevé, mais n''avoir presque aucun effet supplémentaire à prix bas, parce que le prix bas lève déjà une partie de l''hésitation du client. Seul un plan factoriel permet de détecter ce type d''effet croisé, qu''une série d''expériences séparées sur chaque facteur manquerait.

2. La validité externe est limitée parce que l''expérimentation se déroule souvent dans un cadre contrôlé et simplifié (laboratoire, situation artificielle, échantillon restreint de participants volontaires), qui peut différer significativement des conditions réelles d''achat (influence de l''entourage, contraintes budgétaires réelles, environnement de point de vente complet), ce qui rend la généralisation des résultats au marché réel incertaine sans vérification complémentaire.

3. Une échelle de mesure validée a été testée empiriquement sur un ou plusieurs échantillons et a démontré de bonnes propriétés de fiabilité (cohérence interne, souvent mesurée par l''alpha de Cronbach) et de validité (elle mesure réellement le construit visé). Créer ses propres items sans justification ni test expose à mesurer en réalité un autre construit que celui visé, ou à obtenir des résultats peu fiables et difficilement comparables à la littérature existante, ce qui fragilise fortement la crédibilité scientifique d''une recherche.

4. L''ethnographie apporte une information supplémentaire quand il existe un écart probable entre le discours du consommateur sur ses pratiques et ses pratiques réelles, ou quand le consommateur a du mal à verbaliser certains aspects automatiques ou tacites de son comportement (gestes, négociations informelles, usages détournés d''un produit) : l''observation directe en contexte réel révèle alors des éléments que l''entretien seul, fondé sur le discours, ne peut pas capter.

5. La triangulation méthodologique consiste à combiner plusieurs méthodes pour renforcer la validité globale d''une recherche, en compensant les limites propres à chaque méthode. Exemple de séquence : conduire d''abord des entretiens qualitatifs avec des clients d''un service pour identifier les freins perçus à l''adoption, puis construire, à partir de ces freins identifiés, un questionnaire quantitatif à grande échelle utilisant des échelles validées pour mesurer l''importance relative de chaque frein dans la population cible, et enfin tester expérimentalement l''effet d''une action corrective (par exemple un message rassurant) sur le frein identifié comme le plus important.

6. Réponse ouverte ; une modification plausible consisterait, par exemple, à remplacer le facteur « présence d''un argumentaire de confiance » par « source de l''argumentaire de confiance » (recommandation d''un pair commerçant versus communication officielle de l''entreprise), ce qui permettrait de tester si la source de l''information de confiance, et pas seulement sa présence, influence l''intention d''adoption dans ce contexte.', 'texte', 60, false, 40
from public.courses c where c.slug = 'doc-mkt'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Les méthodes de recherche en marketing : expérimentation, enquête par questionnaire et approches qualitatives');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Épreuve type d''examen de qualification : question de synthèse, plan de réponse et corrigé', '## Objectifs de la leçon

Cette dernière leçon texte propose une épreuve type, non officielle, représentative de ce qui pourrait être demandé à l''écrit ou à l''oral d''un examen de qualification doctorale en marketing et commerce. Elle mobilise simultanément les deux courants théoriques étudiés (transactionnel/relationnel/dominante service ; standardisation/adaptation culturelle) et une méthode de recherche (méthodes mixtes). L''objectif est de montrer, par l''exemple, comment construire un plan de réponse complet, argumenté et critique, puis de fournir un corrigé détaillé qui peut servir de modèle d''entraînement.

## Énoncé de la question de synthèse (exemple non officiel)

« Dans quelle mesure les débats théoriques du marketing sur la création de valeur (du marketing mix transactionnel à la logique de dominante service) éclairent-ils la question de l''adaptation culturelle des stratégies marketing sur les marchés africains émergents ? Vous développerez une réponse structurée mobilisant les courants théoriques pertinents, et vous proposerez un protocole de recherche permettant d''étudier empiriquement cette question dans un contexte sénégalais de votre choix. »

Cette question est délibérément construite pour obliger le candidat à relier les deux grands courants du cours plutôt que de les traiter séparément, et à prolonger la réflexion théorique par une proposition méthodologique concrète, exactement comme un jury doctoral le ferait.

## Méthode pour construire le plan de réponse

Face à une question de synthèse qui croise plusieurs courants, la méthode la plus sûre consiste à procéder en quatre temps. Premier temps : reformuler la question pour s''assurer de sa bonne compréhension et identifier explicitement les concepts clés à mobiliser (ici : création de valeur, paradigmes marketing, adaptation culturelle, marchés africains émergents). Deuxième temps : construire un plan qui ne traite pas les courants côte à côte mais qui les articule autour d''une problématique commune. Troisième temps : illustrer chaque articulation théorique par un exemple concret, idéalement situé dans le contexte sénégalais ou ouest-africain pour ancrer la réponse. Quatrième temps : proposer une ouverture méthodologique qui montre comment la question pourrait être étudiée empiriquement, ce qui distingue une réponse de niveau doctoral d''une réponse purement descriptive.

## Plan de réponse détaillé

Introduction : poser que la question de la création de valeur et celle de l''adaptation culturelle, bien qu''issues de débats historiquement distincts en marketing, se rejoignent sur un point central : plus on conçoit la valeur comme co-créée avec le client plutôt que livrée de façon standardisée par l''entreprise, plus l''attention portée au contexte culturel et local du client devient théoriquement incontournable.

Première partie : montrer que le paradigme transactionnel du marketing mix, en traitant le client comme un récepteur relativement passif d''une offre définie en amont par l''entreprise, est structurellement compatible avec une stratégie de standardisation poussée : si la valeur est essentiellement déterminée par l''entreprise au moment de la conception du produit, l''adaptation au contexte local n''est perçue que comme un ajustement secondaire, principalement tactique (traduction, packaging), sans remettre en cause la conception centrale de l''offre.

Deuxième partie : montrer que le passage au marketing relationnel, puis à la logique de dominante service et à la co-création de valeur, change la nature du problème. Si la valeur se réalise dans l''usage, au contact des ressources et du contexte propres du client, alors le contexte culturel local n''est plus un simple facteur d''ajustement périphérique : il devient une composante constitutive de la valeur elle-même. Un service financier mobile, par exemple, n''a pas la même valeur d''usage selon les pratiques locales de gestion de l''argent, les structures familiales d''entraide financière, ou le rôle social du commerce de proximité, qui diffèrent sensiblement entre contextes. Cette partie doit citer explicitement, sans invoquer de marque réelle, un exemple de ce type pour illustrer le propos.

Troisième partie : nuancer en montrant que cette logique n''impose pas un relativisme culturel total ni un rejet de toute standardisation. Certains éléments de l''offre (l''identité de marque globale, certains standards de qualité ou de sécurité) peuvent rester standardisés sans contredire la logique de co-création, tant que les éléments réellement mobilisés dans l''usage quotidien (prix, format, canaux de distribution, communication) sont, eux, adaptés au contexte local. La position de « glocalisation » différenciée, variable par variable, reste donc pertinente même dans une perspective de dominante service.

Quatrième partie : proposer un protocole de recherche mixte pour étudier empiriquement cette question dans un contexte sénégalais, par exemple celui du commerce de détail urbain équipé progressivement de solutions de paiement mobile. Ce protocole combinerait une phase qualitative exploratoire (entretiens avec des commerçants et ethnographie de courte durée sur un marché, pour identifier les pratiques locales de gestion de l''argent et de confiance), une phase expérimentale (un plan factoriel testant par exemple l''effet du degré d''adaptation de l''interface du service, standardisée versus adaptée aux pratiques locales identifiées, sur l''intention d''adoption), et une phase quantitative de généralisation par enquête par questionnaire auprès d''un échantillon calculé selon le niveau de confiance et la marge d''erreur visés, utilisant des échelles de mesure validées de la confiance et de l''intention d''adoption.

Conclusion : rappeler que les deux courants théoriques mobilisés dans cette question ne sont pas de simples débats parallèles du champ marketing, mais qu''ils s''articulent logiquement : plus la conception théorique de la valeur se déplace vers la co-création, plus la question de l''adaptation culturelle cesse d''être un détail opérationnel pour devenir un enjeu théorique central, ce qui justifie de la traiter avec les méthodes de recherche les plus robustes possibles, idéalement mixtes.

## Points de vigilance pour l''oral

Lors de la soutenance de cette réponse, un jury pourrait demander au candidat de préciser en quoi, concrètement, un protocole purement quantitatif aurait été insuffisant pour cette question (réponse attendue : parce que les dimensions culturelles pertinentes à opérationnaliser dans le questionnaire ne peuvent être identifiées correctement sans une phase qualitative préalable, propre au terrain étudié). Le jury pourrait également demander de discuter la généralisabilité des résultats obtenus dans un seul contexte sénégalais à l''ensemble des marchés africains émergents (réponse attendue : prudence méthodologique, en rappelant la diversité interne du continent soulignée dans la leçon précédente, et la nécessité de répliquer l''étude dans d''autres contextes avant toute généralisation).

## Points clés à retenir

Une bonne réponse de synthèse ne traite jamais deux courants théoriques côte à côte : elle les articule autour d''une problématique commune, ici le lien entre conception de la valeur et nécessité de l''adaptation culturelle. L''illustration par un exemple contextualisé (sénégalais ou ouest-africain) et la proposition d''un protocole de recherche concret distinguent une réponse de niveau doctoral d''une réponse purement théorique ou purement descriptive. Le candidat doit anticiper les questions de approfondissement du jury, notamment sur la justification méthodologique et la généralisabilité des résultats.

## Exercices pratiques

1. Reformulez, en vos propres mots, la question de synthèse de cette leçon en identifiant explicitement les quatre concepts clés qu''elle mobilise.

2. Rédigez, en cinq phrases, l''argument central de la première partie du plan de réponse (compatibilité entre marketing mix et standardisation).

3. Rédigez, en cinq phrases, l''argument central de la deuxième partie du plan de réponse (dominante service et nécessité de l''adaptation).

4. Un membre du jury vous objecte que votre protocole de recherche proposé est trop coûteux et trop long à mettre en œuvre pour une thèse. Rédigez une réponse de trois phrases qui défend la pertinence du protocole tout en proposant une version allégée.

5. Proposez, en guise d''entraînement personnel, une question de synthèse alternative qui croiserait les deux mêmes courants théoriques mais appliquée à un secteur différent de celui utilisé dans cette leçon.

## Corrigé

1. Les quatre concepts clés sont : la création de valeur en marketing (du mix transactionnel à la dominante service), les paradigmes théoriques correspondants, l''adaptation culturelle des stratégies marketing, et les marchés africains émergents comme terrain d''application empirique. La question demande de montrer comment le premier ensemble de concepts (théorie de la valeur) permet de mieux comprendre le second (nécessité ou non de l''adaptation).

2. Le marketing mix transactionnel conçoit la valeur comme déterminée essentiellement par l''entreprise au moment de la conception de l''offre, le client étant un récepteur relativement passif de cette offre. Dans cette logique, l''adaptation au contexte local n''est qu''un ajustement secondaire, de nature surtout tactique, comme la traduction d''un message ou la modification d''un packaging. L''essentiel de la valeur proposée reste pensé de façon centralisée, souvent au siège international de l''entreprise. Cette conception est donc structurellement compatible avec une stratégie de forte standardisation. Elle n''exclut pas toute adaptation, mais elle la relègue à un rôle périphérique.

3. La logique de dominante service affirme que la valeur ne se réalise jamais unilatéralement par l''entreprise mais se co-crée dans l''usage, au contact des ressources et du contexte réel du client. Si la valeur dépend ainsi fondamentalement du contexte d''usage, alors les pratiques culturelles locales de consommation, de gestion de l''argent ou d''interaction sociale deviennent une composante constitutive de la valeur elle-même, et non un simple détail d''exécution. L''adaptation culturelle cesse donc d''être secondaire : elle devient une condition nécessaire pour qu''une offre produise effectivement de la valeur pour le client. Cette perspective justifie théoriquement un investissement de recherche important dans la compréhension fine des contextes locaux. Elle explique aussi pourquoi les entreprises orientées service investissent souvent davantage dans la connaissance qualitative de leurs marchés locaux que les entreprises purement transactionnelles.

4. Réponse possible : « Le protocole complet reste la démarche la plus rigoureuse pour établir à la fois la pertinence qualitative des dimensions culturelles et leur généralisabilité quantitative, mais il peut être phasé dans le temps, par exemple en consacrant la première année de thèse à la phase qualitative et expérimentale, et une seconde étude, éventuellement hors du cadre strict de la thèse, à la généralisation quantitative à grande échelle. Une version allégée pourrait aussi se concentrer sur un seul facteur expérimental plutôt que plusieurs, et réduire la taille de l''échantillon quantitatif en acceptant une marge d''erreur plus large, au prix d''une précision statistique moindre mais clairement assumée et justifiée dans la thèse. »

5. Réponse ouverte ; exemple possible : « Dans quelle mesure les débats théoriques sur la création de valeur en marketing éclairent-ils la question de l''adaptation culturelle des stratégies de distribution alimentaire en ligne dans les grandes villes ouest-africaines ? », qui applique la même articulation théorique à un secteur différent (distribution alimentaire en ligne plutôt que services financiers mobiles).', 'texte', 60, false, 50
from public.courses c where c.slug = 'doc-mkt'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Épreuve type d''examen de qualification : question de synthèse, plan de réponse et corrigé');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : le débat marketing transactionnel versus marketing relationnel et dominante service', '## Fiche du cours vidéo

Durée : 1h30. Public : doctorants préparant l''examen de qualification en marketing et commerce. Objectifs : maîtriser l''opposition et l''articulation entre le paradigme transactionnel (marketing mix), le marketing relationnel et la logique de dominante service (co-création de valeur), et savoir restituer ce débat de façon critique à l''oral. Matériel : diaporama de synthèse, tableau comparatif des trois courants, extraits de cas fictifs pour illustration. Prérequis : avoir lu la leçon texte correspondante de ce cours et tenté les exercices.

## Déroulé minuté

## 00:00 – 05:00 · Introduction et enjeux de la séance

Bonjour à toutes et à tous, et bienvenue dans cette séance consacrée à l''un des débats théoriques les plus structurants du marketing contemporain : le passage du paradigme transactionnel au paradigme relationnel, puis à la logique de dominante service. Avant de nous plonger dans la matière, je veux vous dire pourquoi ce débat occupe une place aussi centrale dans un examen de qualification doctorale. Ce n''est pas seulement une question d''histoire de la discipline : c''est une question qui détermine directement la façon dont vous allez concevoir vos propres recherches, quel que soit le sujet précis de votre thèse en marketing. Si vous concevez le client comme un simple récepteur d''une offre, vous poserez certaines questions de recherche. Si vous le concevez comme un co-créateur actif de la valeur, vous en poserez d''autres, radicalement différentes. Nous allons donc consacrer cette heure et demie à bien comprendre ce basculement, ses causes, ses limites, et la façon dont un jury doctoral attend que vous en parliez.

Je vous propose le déroulé suivant : nous commencerons par le paradigme transactionnel et le marketing mix, puis nous verrons les limites qui ont conduit à l''émergence du marketing relationnel, puis nous approfondirons la logique de dominante service et le concept de co-création de valeur, avant de nous arrêter sur un petit quiz pour vérifier votre compréhension à mi-parcours. Nous terminerons par la question délicate de l''articulation entre ces trois courants, par des conseils pratiques pour l''oral, et par une évaluation finale de cinq questions.

## 05:00 – 20:00 · Le paradigme transactionnel et le marketing mix

Commençons par les bases. Le marketing, tel qu''il s''est formalisé comme discipline de gestion, s''est d''abord construit autour d''une vision transactionnelle de l''échange. Regardez le schéma à l''écran : d''un côté, l''entreprise, qui définit une offre à partir de quatre leviers principaux, le produit, le prix, la distribution — appelée aussi « place » — et la communication, appelée aussi « promotion ». De l''autre côté, un marché de consommateurs considéré comme relativement homogène et plutôt passif, que l''on cherche à convaincre d''acheter.

Ce modèle du marketing mix, résumé par l''acronyme des « 4P », a eu un apport considérable pour la pratique : il a donné aux gestionnaires un outil simple, opérationnel, pour organiser leurs décisions. Avant ce cadre, les décisions marketing étaient souvent prises de façon dispersée. Avec le mix, on peut raisonner de façon systématique : quel produit, à quel prix, par quel canal, avec quelle communication. Posons-nous la question : pourquoi ce modèle a-t-il autant duré, et pourquoi reste-t-il enseigné aujourd''hui ? Parce qu''il reste un outil tactique redoutablement efficace pour structurer des décisions opérationnelles, en particulier dans des marchés de grande consommation où les produits sont relativement standardisés.

Mais la vision implicite de ce modèle est celle de la transaction ponctuelle : on optimise chaque vente pour elle-même. La relation entre l''entreprise et le client, si elle existe, n''est pas au cœur de l''analyse. Ce qui compte, c''est la combinaison optimale des quatre leviers pour maximiser les ventes sur une période donnée. Gardez cette idée en tête, elle va être directement contestée dans la partie suivante.

## 20:00 – 35:00 · Les limites du modèle transactionnel et l''émergence du marketing relationnel

À partir des années 1980, plusieurs limites de ce modèle ont été mises en évidence, notamment par des chercheurs travaillant sur le marketing des services et le marketing industriel, c''est-à-dire le marketing entre entreprises. Je vous propose trois limites essentielles à retenir, car elles sont très souvent demandées à l''oral sous forme de question directe : « Quelles sont les limites du marketing mix ? »

Première limite : le modèle du mix a été pensé pour des biens tangibles standardisables, mais il s''applique mal aux services, qui sont souvent coproduits avec le client au moment même de la prestation, et dont la qualité dépend fortement de l''interaction humaine. Deuxième limite : dans de nombreux marchés, en particulier entre entreprises, la valeur ne se crée pas lors d''une transaction isolée mais au fil d''une relation de long terme faite d''échanges répétés et de confiance accumulée ; un modèle centré sur la transaction unique ne rend pas compte de cette dynamique. Troisième limite : le marketing mix traite le client comme une cible à atteindre plutôt que comme un acteur qui participe à la définition de la valeur.

En réponse à ces limites, le marketing relationnel se développe : son objectif n''est plus seulement de conclure une transaction, mais de construire une relation durable et mutuellement profitable avec le client. Les notions centrales changent : on parle désormais de confiance, d''engagement, de satisfaction cumulée, de fidélité, et de la valeur du client sur l''ensemble de sa relation avec l''entreprise, et non plus sur un seul achat. Pour la recherche, cela signifie des variables d''étude nouvelles : on ne mesure plus un acte d''achat ponctuel, mais des construits comme la confiance perçue envers un prestataire, qui nécessitent des échelles de mesure validées, sujet que nous approfondirons dans la leçon vidéo consacrée aux méthodes.

## 35:00 – 50:00 · La logique de dominante service et la co-création de valeur

Nous arrivons maintenant au prolongement le plus récent et le plus exigeant de ce débat : la logique de dominante service, ou service-dominant logic, apparue au milieu des années 2000. Cette approche propose quelque chose d''assez radical : renverser la hiérarchie implicite entre biens et services. Dans la vision classique, le service est souvent traité comme un cas particulier, moins « noble » ou moins central, que le produit physique. La logique de dominante service inverse cette hiérarchie : elle affirme que c''est l''échange de service — entendu comme l''application de compétences au bénéfice d''un bénéficiaire — qui constitue le fondement de tout échange économique, y compris lorsqu''un bien tangible n''est qu''un support à ce service.

Le concept central à retenir absolument pour l''examen est celui de la co-création de valeur. Dans la vision transactionnelle classique, l''entreprise crée la valeur en fabriquant un produit, et le client se contente de la consommer, presque de la « détruire » en l''utilisant. Dans la logique de dominante service, ce schéma est faux : la valeur n''est jamais créée unilatéralement par l''entreprise. Elle est toujours co-créée dans l''usage, au moment où le client mobilise l''offre avec ses propres ressources, son contexte, ses compétences. Prenons un exemple fictif pour fixer les idées : un robot culinaire n''a pas la même valeur selon que l''utilisateur sait l''exploiter pleinement avec ses propres recettes et son savoir-faire culinaire, ou l''utilise de façon minimale. La valeur véritable se réalise à cet instant d''usage, pas uniquement à la fabrication.

Cette idée a des implications méthodologiques fortes, que nous détaillerons plus tard dans ce cours : elle invite à étudier non plus seulement l''offre de l''entreprise, mais les pratiques réelles d''usage des clients, ce qui justifie, entre autres, le recours à des méthodes qualitatives comme l''ethnographie du consommateur.

## 50:00 – 55:00 · Pause et quiz interactif

Nous allons maintenant faire une courte pause avec un quiz interactif pour vérifier votre compréhension à ce stade. Je vous pose trois questions ; prenez le temps d''y réfléchir avant d''entendre la réponse.

Question 1 : Dans le paradigme transactionnel, qui crée la valeur, selon le schéma implicite du modèle ? Réponse : l''entreprise seule, au moment de la conception et de la fabrication de l''offre ; le client est perçu comme un récepteur relativement passif.

Question 2 : Citez deux limites du marketing mix qui ont motivé l''émergence du marketing relationnel. Réponse possible : la difficulté à traiter les services coproduits avec le client, et l''incapacité à rendre compte des relations d''échange répétées et de confiance dans la durée, en particulier en marketing industriel.

Question 3 : Que signifie « co-création de valeur » dans la logique de dominante service ? Réponse : la valeur ne se réalise jamais unilatéralement par l''entreprise ; elle se construit au moment de l''usage, lorsque le client mobilise l''offre avec ses propres ressources et son contexte, ce qui rend le client coproducteur de la valeur et non simple consommateur final.

Si vous avez bien répondu à ces trois questions, vous êtes prêts pour la suite. Si ce n''est pas le cas, je vous invite à revenir en arrière dans la vidéo avant de continuer.

## 55:00 – 1:10:00 · Continuité, rupture et complémentarité entre les trois courants

Abordons maintenant le point le plus délicat, et le plus souvent mal traité par les candidats à l''oral : quelle est la relation exacte entre ces trois courants ? Beaucoup de candidats commettent une erreur en présentant la dominante service comme un simple raffinement du marketing mix, ou à l''inverse en affirmant que le marketing mix a complètement disparu de la pratique actuelle. Les deux affirmations sont inexactes et seront sanctionnées par un jury attentif.

La position la plus défendable, et celle que je vous recommande de défendre à l''oral, est celle de la coexistence à des niveaux d''analyse différents. Le marketing mix reste un outil tactique utile pour organiser des décisions opérationnelles courantes, même dans une entreprise qui adopte par ailleurs une philosophie relationnelle ou orientée service. Le marketing relationnel oriente la stratégie globale de gestion de la clientèle, au-dessus du niveau tactique. La dominante service propose un cadre conceptuel encore plus large, qui redéfinit la nature même de la valeur et de l''échange économique, particulièrement pertinent pour comprendre les économies de services, les plateformes numériques et les écosystèmes d''affaires contemporains.

Un conseil pratique pour l''oral : quand un membre du jury vous demande « le marketing mix est-il obsolète ? », ne répondez jamais par un simple oui ou un simple non. Répondez en trois temps : non, il n''est pas obsolète comme outil tactique ; oui, il est largement dépassé comme cadre conceptuel unique pour penser la création de valeur dans de nombreux secteurs actuels ; et la position la plus juste est celle d''une coexistence à des niveaux différents, ce qui montre au jury que vous maîtrisez la nuance plutôt que l''opposition binaire.

## 1:10:00 – 1:25:00 · Application à un contexte africain et liens avec la recherche doctorale

Terminons par une application concrète. Imaginez un projet de thèse fictif portant sur l''adoption de services financiers mobiles par des commerçants de marchés urbains en Afrique de l''Ouest. Si vous adoptez une perspective transactionnelle, vous allez probablement vous intéresser aux variables classiques du mix : le prix du service, les canaux de distribution de l''offre, la communication commerciale autour du produit. Ce sont des questions de recherche légitimes, mais elles resteront centrées sur l''entreprise et son offre.

Si vous adoptez une perspective relationnelle, vous allez vous intéresser à la confiance progressive que les commerçants développent envers l''opérateur, à leur engagement dans la durée, à la fidélité d''usage au fil du temps. Si vous adoptez une perspective de dominante service, vous allez vous intéresser aux pratiques réelles d''usage du service par les commerçants, à la façon dont ils l''intègrent dans leurs pratiques existantes de gestion de l''argent, à la manière dont la valeur du service dépend de leur contexte et de leurs compétences propres, ce qui vous poussera probablement vers des méthodes qualitatives comme l''entretien ou l''ethnographie, en complément d''une enquête quantitative.

Ce petit exercice de projection montre bien pourquoi ce débat théorique n''est pas qu''une question d''histoire de la discipline : il détermine directement le type de questions de recherche que vous allez poser, et donc le type de méthodes que vous allez devoir mobiliser, ce qui fait le lien avec notre prochaine leçon vidéo sur les méthodes de recherche.

## 1:25:00 – 1:30:00 · Synthèse et évaluation finale

Pour synthétiser cette séance : le marketing mix transactionnel structure l''échange autour de la transaction ponctuelle et de quatre leviers opérationnels. Ses limites, mises en évidence par la recherche sur les services et le marketing industriel, ont nourri l''émergence du marketing relationnel, centré sur la confiance et la valeur client dans la durée. La logique de dominante service radicalise ce déplacement avec le concept de co-création de valeur, qui affirme que la valeur se réalise toujours dans l''usage, jamais livrée « finie » par l''entreprise seule. Ces trois courants coexistent dans la pratique actuelle à des niveaux d''analyse différents.

Voici l''évaluation finale de cette séance, cinq questions avec leurs réponses.

Question 1 : Quels sont les quatre leviers du marketing mix traditionnel ? Réponse : le produit, le prix, la distribution (« place ») et la communication (« promotion »).

Question 2 : Pourquoi le marketing des services a-t-il joué un rôle déclencheur dans la remise en cause du paradigme transactionnel ? Réponse : parce qu''un service est souvent coproduit avec le client au moment de la prestation, difficile à standardiser, et dépend fortement de l''interaction humaine, ce qui rendait le modèle du mix, pensé pour des biens tangibles, insuffisant pour en rendre compte.

Question 3 : Quelles notions centrales introduit le marketing relationnel par rapport au marketing transactionnel ? Réponse : la confiance, l''engagement, la satisfaction cumulée, la fidélité, et la valeur du client appréciée sur l''ensemble de sa relation avec l''entreprise, plutôt que sur une seule transaction.

Question 4 : Expliquez en une phrase le concept de co-création de valeur dans la logique de dominante service. Réponse : la valeur économique ne se réalise jamais unilatéralement par l''entreprise mais se construit toujours au moment où le client mobilise l''offre avec ses propres ressources, son contexte et ses compétences.

Question 5 : Quelle est la position la plus défendable à l''oral concernant la relation entre ces trois courants ? Réponse : la coexistence à des niveaux d''analyse différents, le marketing mix restant un outil tactique utile, le marketing relationnel orientant la stratégie de gestion de la clientèle, et la dominante service offrant un cadre conceptuel plus large pour repenser la nature de l''échange économique.

Merci pour votre attention, et rendez-vous dans la prochaine vidéo pour le second grand débat de ce cours, consacré à la standardisation et à l''adaptation culturelle du marketing sur les marchés africains émergents.', 'video', 90, false, 60
from public.courses c where c.slug = 'doc-mkt'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : le débat marketing transactionnel versus marketing relationnel et dominante service');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : standardisation versus adaptation culturelle sur les marchés africains émergents', '## Fiche du cours vidéo

Durée : 1h30. Public : doctorants préparant l''examen de qualification en marketing et commerce. Objectifs : maîtriser le débat standardisation versus adaptation culturelle en marketing international, et savoir l''appliquer de façon critique et nuancée aux marchés africains émergents. Matériel : diaporama comparatif, carte des spécificités de marchés ouest-africains, exemple fictif filé tout au long de la séance. Prérequis : avoir lu la leçon texte correspondante de ce cours.

## Déroulé minuté

## 00:00 – 05:00 · Introduction et annonce du plan

Bienvenue dans cette deuxième vidéo de notre cours de qualification doctorale en marketing. Nous allons traiter aujourd''hui un débat différent du précédent, mais qui s''y articule étroitement : celui de la standardisation versus l''adaptation culturelle des stratégies marketing, en particulier sur les marchés africains émergents. Ce débat appartient au champ du marketing international et interculturel, et il est régulièrement posé lors des oraux de qualification, souvent sous la forme « faut-il standardiser ou adapter une stratégie marketing dans un marché émergent, et pourquoi ? »

Notre plan pour cette heure et demie : d''abord les termes classiques du débat et la position intermédiaire de « glocalisation » qui domine la recherche contemporaine ; ensuite les spécificités propres aux marchés africains émergents qui rendent ce débat particulièrement riche ; un quiz à mi-parcours ; puis une discussion critique sur les pièges d''une lecture essentialiste de la culture africaine ; et enfin le lien avec le courant théorique vu dans la vidéo précédente, avant l''évaluation finale.

## 05:00 – 20:00 · Les termes classiques du débat standardisation/adaptation

Commençons par poser clairement les deux thèses en présence. La thèse de la standardisation soutient qu''une entreprise opérant sur plusieurs marchés devrait proposer une offre et une communication aussi uniformes que possible. Deux arguments soutiennent cette thèse : d''abord des économies d''échelle considérables, puisqu''un seul produit et une seule campagne conçus une fois peuvent être déployés partout ; ensuite une cohérence d''image de marque au niveau mondial, ce qui facilite la reconnaissance et la confiance des consommateurs qui voyagent ou qui sont exposés à des médias internationaux.

La thèse de l''adaptation culturelle soutient à l''inverse que les besoins, les codes de communication, les habitudes de consommation et les structures de distribution varient suffisamment d''un marché à l''autre pour qu''une offre uniforme devienne sous-optimale, voire contre-productive. Cette thèse s''appuie sur des travaux montrant la persistance de différences culturelles profondes : le rapport au temps, à l''autorité, à la famille, les modes de négociation commerciale, les pratiques religieuses, qui influencent directement la perception d''un produit ou l''efficacité d''un message publicitaire.

Entre ces deux extrêmes, la recherche contemporaine retient largement une position intermédiaire, que l''on appelle parfois « glocalisation » : standardiser ce qui peut l''être sans perte d''efficacité, comme certains attributs fonctionnels ou l''identité visuelle de marque, et adapter ce qui doit l''être pour rester pertinent localement, comme le packaging, le prix, les canaux de distribution, et le ton de la communication. Retenez bien cette idée, car un bon candidat à l''oral ne choisit jamais un camp unique entre standardisation et adaptation : il montre comment arbitrer, variable par variable.

## 20:00 – 40:00 · Spécificités des marchés africains émergents

Venons-en maintenant à ce qui rend ce débat particulièrement vif sur les marchés africains, et notamment ouest-africains comme le Sénégal. Je vous propose quatre spécificités à retenir.

Première spécificité : la diversité linguistique et culturelle interne, souvent plus marquée que dans des marchés occidentaux de taille comparable. Une communication adaptée à une grande ville n''est pas nécessairement adaptée à d''autres zones du même pays ou de la même région. Cela complique sérieusement l''idée d''une adaptation « nationale » simple et unique.

Deuxième spécificité : la coexistence de circuits de distribution très différents. Le commerce formel moderne se développe, mais le commerce informel et de proximité reste central dans de nombreuses catégories de produits de grande consommation. Les entreprises internationales doivent donc repenser la variable distribution de façon beaucoup plus locale que sur des marchés où la grande distribution moderne domine largement.

Troisième spécificité : des structures de pouvoir d''achat très différenciées, qui imposent souvent des stratégies de conditionnement et de tarification spécifiques, par exemple des formats de vente plus petits et plus nombreux, adaptés à une fréquence d''achat élevée mais à un pouvoir d''achat limité par transaction. Ce n''est pas seulement une adaptation de communication, c''est une adaptation produit au sens strict.

Quatrième spécificité : l''essor rapide des usages numériques et mobiles, en particulier le paiement mobile, qui crée à la fois des opportunités de standardisation, via des plateformes globales utilisées localement, et des opportunités d''adaptation, via des usages spécifiques du mobile qui diffèrent sensiblement d''autres régions du monde.

## 40:00 – 45:00 · Pause et quiz interactif

Prenons une pause avec un quiz à trois questions.

Question 1 : Quels sont les deux arguments principaux en faveur de la standardisation ? Réponse : les économies d''échelle et la cohérence de l''image de marque au niveau mondial.

Question 2 : Qu''est-ce que la « glocalisation » ? Réponse : une position intermédiaire qui consiste à standardiser certains éléments de l''offre, comme l''identité de marque, tout en adaptant d''autres éléments, comme le prix, le format ou la distribution, selon le contexte local.

Question 3 : Citez deux spécificités des marchés africains émergents qui rendent le débat standardisation/adaptation particulièrement pertinent. Réponse possible : la diversité linguistique et culturelle interne importante, et la coexistence de circuits de distribution formels et informels.

## 45:00 – 1:05:00 · Le piège de l''essentialisme culturel et la lecture critique du débat

Abordons maintenant un point d''une importance capitale pour l''examen : la prudence méthodologique à adopter face à la notion de « culture africaine ». Un jury doctoral sera très attentif à ce que vous évitiez une lecture essentialiste, c''est-à-dire une lecture qui traiterait l''Afrique, ou même un seul pays africain, comme un bloc culturel homogène et figé.

Pourquoi ce piège est-il si fréquent ? Parce qu''il est tentant, pour simplifier une analyse marketing, de résumer un marché entier à quelques traits culturels supposés généraux. Mais la recherche sérieuse en marketing interculturel évite cette simplification. Elle privilégie des analyses situées : par pays, par région à l''intérieur d''un pays, voire par segment de consommateurs à l''intérieur d''une même ville, en croisant systématiquement les variables culturelles avec des variables socio-économiques comme le milieu urbain ou rural, la génération, le niveau d''éducation, ou l''exposition aux médias internationaux.

Illustrons ce point avec notre exemple filé de la boisson internationale fictive qui envisage d''entrer sur le marché sénégalais. Une analyse essentialiste dirait simplement « les consommateurs sénégalais préfèrent telle saveur », sans plus de précision. Une analyse rigoureuse segmenterait l''étude : peut-être que les préférences diffèrent sensiblement entre consommateurs urbains et ruraux, entre générations, ou selon l''exposition à d''autres marchés via les médias ou les réseaux sociaux. C''est cette rigueur de segmentation que le jury attend de vous.

Revenons maintenant au niveau d''analyse par variable du mix. Au niveau du produit, l''adaptation peut rester superficielle, comme un nom local, ou aller jusqu''à une reconception substantielle, comme une recette différente. Au niveau de la communication, le débat porte sur la standardisation du message central de marque versus l''adaptation des exécutions créatives et des canaux médiatiques. Au niveau de la distribution et du prix, les marges de standardisation sont généralement les plus faibles, car ces variables dépendent le plus directement des structures économiques et commerciales locales, comme nous l''avons vu avec l''exemple du commerce informel.

## 1:05:00 – 1:25:00 · Articulation avec le débat théorique précédent et exemple complet

Terminons par l''articulation entre ce débat et celui vu dans la vidéo précédente, consacré au passage du marketing transactionnel au marketing relationnel et à la dominante service. C''est un lien que les jurys apprécient particulièrement de voir établi spontanément par un candidat, car il montre une compréhension transversale du champ plutôt qu''une connaissance compartimentée.

Une stratégie d''adaptation culturelle poussée s''accorde en effet mieux avec une logique relationnelle ou de co-création : elle suppose d''écouter et d''intégrer les pratiques et préférences locales des clients dans la définition même de l''offre, plutôt que de leur imposer une offre standardisée pensée ailleurs. À l''inverse, une stratégie de standardisation poussée s''accorde plus naturellement avec une logique transactionnelle, où l''offre est définie en amont par l''entreprise et proposée telle quelle à l''ensemble des marchés.

Reprenons notre exemple fictif de la boisson internationale. Une stratégie entièrement standardisée reprendrait la même recette, le même conditionnement, le même prix et la même publicité que sur le marché d''origine : c''est une logique transactionnelle appliquée au marketing international. Une stratégie de « glocalisation » réellement orientée service irait plus loin que l''adaptation tactique classique : elle impliquerait d''écouter en amont, par des méthodes qualitatives comme l''entretien ou l''ethnographie, les pratiques réelles de consommation locales, puis d''ajuster conjointement le format, le prix, les canaux de distribution et certains aspects du produit lui-même, en coopération continue avec les retours du marché local, ce qui se rapproche d''une logique de co-création plutôt que d''une simple adaptation descendante décidée une fois pour toutes au siège de l''entreprise.

Cette articulation doit vous servir de modèle : chaque fois qu''un jury vous pose une question sur l''un des deux courants de ce cours, essayez, quand c''est pertinent, de montrer spontanément le lien avec l''autre courant. C''est souvent ce geste intellectuel, plus que la seule exactitude factuelle, qui distingue une excellente réponse d''une réponse simplement correcte.

## 1:25:00 – 1:30:00 · Synthèse et évaluation finale

Pour synthétiser : le débat standardisation/adaptation oppose les économies d''échelle et la cohérence globale de marque à la pertinence locale et à l''efficacité commerciale sur un marché donné. Les marchés africains émergents, par leur diversité interne, la coexistence de circuits formels et informels, et des structures de pouvoir d''achat différenciées, rendent ce débat particulièrement riche empiriquement. La position de « glocalisation », différenciée variable par variable, domine la recherche contemporaine, et doit toujours s''accompagner d''une vigilance contre toute lecture essentialiste de la culture africaine.

Voici l''évaluation finale de cette séance, cinq questions avec leurs réponses.

Question 1 : Quels sont les deux arguments principaux en faveur de l''adaptation culturelle en marketing international ? Réponse : la persistance de différences culturelles profondes qui influencent la perception de l''offre, et les différences structurelles de distribution et de pouvoir d''achat selon les marchés.

Question 2 : Qu''est-ce qu''une lecture essentialiste de la culture, et pourquoi doit-elle être évitée en recherche marketing ? Réponse : c''est une lecture qui traite une culture, par exemple « la culture africaine », comme un bloc homogène et figé ; elle doit être évitée car elle ignore la diversité réelle, linguistique, générationnelle et socio-économique, à l''intérieur même d''un seul pays ou d''une seule ville, ce qui fausse l''analyse marketing.

Question 3 : Pour quelle(s) variable(s) du mix les marges de standardisation sont-elles généralement les plus faibles, et pourquoi ? Réponse : la distribution et le prix, car elles dépendent le plus directement des structures économiques et commerciales locales, difficilement contournables par une entreprise internationale.

Question 4 : En quoi une stratégie d''adaptation culturelle poussée se rapproche-t-elle d''une logique relationnelle ou de co-création de valeur ? Réponse : parce qu''elle suppose d''écouter et d''intégrer les pratiques et préférences réelles des clients locaux dans la définition même de l''offre, plutôt que d''imposer une offre standardisée décidée en amont, ce qui correspond à l''esprit de la co-création plutôt qu''à celui du marketing transactionnel.

Question 5 : Donnez un exemple de question de recherche doctorale qui combinerait ce débat avec celui de la vidéo précédente. Réponse possible : étudier comment le degré d''adaptation culturelle d''un service numérique influence la confiance perçue et l''intention d''adoption des utilisateurs dans un contexte ouest-africain donné.

Merci pour votre attention. Dans la prochaine vidéo, nous passerons aux méthodes de recherche propres au marketing, avec un protocole complet appliqué à un contexte sénégalais fictif.', 'video', 90, false, 70
from public.courses c where c.slug = 'doc-mkt'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : standardisation versus adaptation culturelle sur les marchés africains émergents');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : les méthodes de recherche en marketing (expérimentation, enquête, qualitatif)', '## Fiche du cours vidéo

Durée : 1h30. Public : doctorants préparant l''examen de qualification en marketing et commerce. Objectifs : maîtriser les logiques de l''expérimentation (plans factoriels), de l''enquête par questionnaire (échelles de mesure validées), et des méthodes qualitatives (entretiens, ethnographie), et savoir construire et défendre un protocole de recherche mixte. Matériel : diaporama avec calculs vérifiés, tableau comparatif des méthodes, exemple filé d''un protocole sénégalais fictif. Prérequis : avoir lu la leçon texte correspondante de ce cours et disposer de notions de base en statistiques descriptives.

## Déroulé minuté

## 00:00 – 05:00 · Introduction et enjeux méthodologiques

Bienvenue dans cette troisième vidéo de notre cours de qualification doctorale en marketing. Nous avons vu, dans les deux vidéos précédentes, les grands débats théoriques du champ. Nous allons maintenant voir comment la recherche en marketing étudie empiriquement ces débats, c''est-à-dire les méthodes de recherche propres à la discipline. C''est un point crucial pour l''examen : un jury ne se contente jamais d''une bonne connaissance théorique, il veut vérifier que vous savez aussi comment on produit de la connaissance scientifique vérifiable en marketing.

Notre plan : d''abord l''expérimentation et les plans factoriels, avec un calcul vérifié ; ensuite l''enquête par questionnaire et les échelles de mesure validées, avec des calculs de taille d''échantillon et de fiabilité ; un quiz à mi-parcours ; puis les méthodes qualitatives, entretiens et ethnographie du consommateur ; et enfin un protocole de recherche mixte complet appliqué à un contexte sénégalais fictif, avant l''évaluation finale.

## 05:00 – 20:00 · L''expérimentation et les plans factoriels

L''expérimentation vise à établir une relation de causalité entre une variable que le chercheur manipule et une variable qu''il observe. Par exemple, on manipule le prix affiché d''un produit, et on observe l''intention d''achat des répondants. Pour établir une causalité convaincante, deux principes sont essentiels : la manipulation contrôlée de la variable indépendante, et la comparaison entre des groupes de répondants exposés à des conditions différentes, idéalement constitués par assignation aléatoire pour neutraliser l''influence de caractéristiques individuelles non contrôlées.

Le plan factoriel permet d''étudier simultanément plusieurs facteurs et leurs interactions. Prenons un exemple concret : supposons que l''on étudie l''effet de trois facteurs sur l''intention d''achat d''un service, chaque facteur ayant deux niveaux. On note ce plan 2 fois 2 fois 2, ou 2 puissance 3. Combien de conditions expérimentales ce plan génère-t-il ? Le calcul est simple : 2 multiplié par 2 multiplié par 2, soit 8 conditions distinctes, chacune correspondant à une combinaison unique des niveaux des trois facteurs. J''ai vérifié ce calcul avec un petit script Python avant cette séance, qui confirme bien que trois facteurs à deux niveaux chacun donnent 8 cellules expérimentales.

Pourquoi est-ce si important, par rapport à une série d''expériences séparées sur chaque facteur ? Parce que le plan factoriel permet de détecter non seulement l''effet de chaque facteur pris isolément, appelé effet principal, mais aussi les effets d''interaction, c''est-à-dire les cas où l''effet d''un facteur dépend du niveau d''un autre facteur. Par exemple, une promotion peut être efficace à prix bas mais inefficace, voire contre-productive, à prix élevé : seul un plan factoriel permet de détecter ce type d''effet croisé.

Deux limites à toujours mentionner à l''oral : la validité interne de l''expérimentation est généralement forte, ce qui permet d''affirmer une causalité ; mais sa validité externe est souvent plus faible, car les conditions contrôlées de l''expérience peuvent différer des comportements réels de marché, plus complexes et soumis à davantage de facteurs non contrôlés.

## 20:00 – 40:00 · L''enquête par questionnaire et les échelles de mesure validées

Passons maintenant à l''enquête par questionnaire, la méthode quantitative la plus répandue pour étudier des construits comme les attitudes, les perceptions ou les intentions d''achat auprès d''un échantillon de consommateurs. La rigueur de cette méthode dépend fortement de la qualité des échelles de mesure employées. Une échelle validée est un ensemble d''items dont les propriétés psychométriques ont été testées et publiées : elle doit présenter une bonne fiabilité, c''est-à-dire une cohérence interne entre les items qui mesurent le même construit, et une bonne validité, c''est-à-dire qu''elle mesure effectivement le construit visé.

La fiabilité se mesure couramment par le coefficient alpha de Cronbach. J''ai préparé un exemple illustratif et volontairement simplifié, calculé et vérifié en Python : sur trois items fictifs notés de 1 à 5 auprès de cinq répondants, le calcul donne un alpha de Cronbach d''environ 0,77. Rappelons qu''un alpha supérieur à environ 0,70 est généralement considéré comme acceptable en recherche en gestion, bien que cet exemple soit construit à but pédagogique sur un échantillon bien trop petit pour être réellement interprétable en recherche.

Deuxième question technique essentielle : la taille d''échantillon nécessaire pour une enquête. Elle dépend du niveau de confiance souhaité et de la marge d''erreur acceptée. J''ai vérifié en Python le calcul suivant, avec la formule statistique classique : pour un niveau de confiance de 95 % et une marge d''erreur de 5 %, la taille d''échantillon minimale théorique est d''environ 385 répondants, pour une population supposée infinie. Si l''on connaît la taille réelle de la population étudiée, on peut appliquer une correction dite de population finie : pour une population de 5 000 personnes, par exemple 5 000 commerçants dans une zone urbaine donnée, cette correction ramène la taille d''échantillon nécessaire à environ 357 répondants, ce qui reste proche du chiffre de 385 car la population reste très supérieure à l''échantillon. En revanche, si l''on exige une marge d''erreur plus stricte de 3 % plutôt que 5 %, toujours à titre d''exemple fictif et non d''une norme officielle, la taille d''échantillon nécessaire grimpe fortement, à environ 1 068 répondants pour une population infinie, ce qui illustre bien le coût, en taille d''échantillon, d''une exigence de précision statistique accrue.

N''oublions pas les limites classiques de l''enquête par questionnaire : le biais de désirabilité sociale, où le répondant répond ce qu''il pense être attendu plutôt que sa véritable opinion, le biais de rappel pour les comportements passés, et l''écart bien documenté en marketing entre intention déclarée et comportement réel d''achat.

## 40:00 – 45:00 · Pause et quiz interactif

Faisons une pause avec un quiz à trois questions.

Question 1 : Combien de conditions expérimentales génère un plan factoriel à trois facteurs, chacun à deux niveaux ? Réponse : 8 conditions, puisque 2 multiplié par 2 multiplié par 2 égale 8.

Question 2 : Que mesure le coefficient alpha de Cronbach ? Réponse : la fiabilité d''une échelle de mesure, c''est-à-dire la cohérence interne entre les items qui sont censés mesurer le même construit.

Question 3 : Si l''on exige une marge d''erreur plus stricte dans une enquête, que se passe-t-il pour la taille d''échantillon nécessaire ? Réponse : elle augmente fortement ; par exemple, passer d''une marge de 5 % à 3 % fait passer la taille d''échantillon nécessaire théorique d''environ 385 à environ 1 068 répondants pour une population infinie.

## 45:00 – 1:05:00 · Les méthodes qualitatives : entretiens et ethnographie du consommateur

Passons maintenant aux méthodes qualitatives, qui visent moins à mesurer l''ampleur d''un phénomène qu''à en comprendre le sens et le contexte. L''entretien individuel semi-directif est la méthode la plus utilisée : le chercheur dispose d''un guide thématique, mais laisse le répondant développer librement sa pensée, ce qui permet de faire émerger des significations ou des logiques d''usage que des questions fermées de questionnaire n''auraient pas anticipées.

L''ethnographie du consommateur va plus loin : elle consiste à observer, parfois en immersion prolongée, les pratiques réelles de consommation dans leur contexte naturel, au domicile, sur le lieu de vente, dans la rue, plutôt que de se fier uniquement au discours que les personnes tiennent sur leurs pratiques. Cette méthode est précieuse lorsqu''on étudie des comportements difficiles à verbaliser, ou lorsqu''un écart important est suspecté entre ce que les consommateurs disent faire et ce qu''ils font réellement. Sur les marchés africains, l''ethnographie est fréquemment mobilisée pour étudier le commerce informel ou de proximité, où les logiques d''achat, la fréquence, la négociation du prix, le rôle du vendeur, sont difficiles à saisir par un simple questionnaire.

La limite principale des méthodes qualitatives, souvent soulignée à l''oral, est l''absence de représentativité statistique : on ne peut pas généraliser les résultats obtenus auprès d''un nombre restreint de répondants à l''ensemble d''une population avec la même assurance qu''une enquête quantitative sur un large échantillon. Leur force réside en contrepartie dans la profondeur et la richesse contextuelle de la compréhension produite, souvent indispensable pour construire correctement un questionnaire quantitatif pertinent en amont.

## 1:05:00 – 1:25:00 · Construction d''un protocole de recherche mixte complet (contexte sénégalais fictif)

Terminons par la construction complète d''un protocole de recherche mixte, appliqué à un projet de thèse fictif étudiant l''effet du prix et de la présence d''un argumentaire de confiance sur l''intention d''achat de services financiers mobiles, auprès de commerçants de marchés urbains sénégalais.

Étape 1, qualitative exploratoire : on conduit une série d''entretiens semi-directifs avec des commerçants, complétés par une observation ethnographique de courte durée sur un marché, afin d''identifier les dimensions de confiance et de prix réellement pertinentes avant de construire le questionnaire. Cette étape est indispensable pour éviter de construire un questionnaire basé sur des hypothèses théoriques générales mal adaptées au terrain spécifique étudié.

Étape 2, expérimentale : on construit un plan factoriel à deux facteurs, chacun à deux niveaux, le prix du service et la présence ou l''absence d''un argumentaire de confiance explicite. Ce plan 2 fois 2 génère quatre conditions expérimentales. En recrutant 25 commerçants par condition, on obtient un échantillon expérimental total de 100 répondants, chiffre que j''ai vérifié en Python : 4 conditions multipliées par 25 répondants donnent bien 100 participants, répartis de façon égale entre les quatre groupes.

Étape 3, enquête par questionnaire à grande échelle : pour généraliser les résultats expérimentaux à la population des commerçants de la zone étudiée, on administre un questionnaire plus large, utilisant des échelles de mesure validées de la confiance et de l''intention d''adoption. Pour une population fictive de 5 000 commerçants et un niveau de confiance de 95 % avec une marge d''erreur de 5 %, on vise, comme calculé plus tôt, un échantillon d''environ 357 répondants après correction de population finie.

Ce protocole en trois étapes illustre la logique de triangulation méthodologique : la phase qualitative identifie les bonnes dimensions à étudier, la phase expérimentale établit une causalité rigoureuse sur un facteur précis, et la phase quantitative généralise les résultats à une population plus large. C''est exactement ce type de raisonnement en plusieurs étapes, articulées logiquement, qu''un jury doctoral attend d''un candidat capable de concevoir sa propre recherche.

## 1:25:00 – 1:30:00 · Synthèse et évaluation finale

Pour synthétiser : l''expérimentation, en particulier le plan factoriel, établit une causalité rigoureuse au prix d''une validité externe parfois limitée. L''enquête par questionnaire, appuyée sur des échelles validées et une taille d''échantillon correctement calculée, permet de généraliser des relations à une population. Les méthodes qualitatives apportent une compréhension fine du sens et du contexte, souvent indispensable en amont du quantitatif. La combinaison mixte de ces méthodes, par triangulation, constitue souvent la réponse méthodologique la plus solide.

Voici l''évaluation finale de cette séance, cinq questions avec leurs réponses.

Question 1 : Qu''est-ce qu''un effet d''interaction dans un plan factoriel ? Réponse : c''est le cas où l''effet d''un facteur sur la variable observée dépend du niveau d''un autre facteur, par exemple quand une promotion est efficace à prix bas mais pas à prix élevé.

Question 2 : Quelle est la principale limite de l''expérimentation en marketing ? Réponse : la validité externe souvent limitée, c''est-à-dire la difficulté à généraliser les résultats obtenus en conditions contrôlées aux comportements réels de marché.

Question 3 : Que faut-il vérifier avant d''utiliser une échelle de mesure dans un questionnaire ? Réponse : qu''il s''agit d''une échelle déjà validée dans la littérature, avec une bonne fiabilité, mesurée par exemple par l''alpha de Cronbach, et une bonne validité, c''est-à-dire qu''elle mesure réellement le construit visé.

Question 4 : Dans quelle situation l''ethnographie du consommateur apporte-t-elle une information que l''entretien seul ne pourrait pas apporter ? Réponse : quand il existe un écart probable entre le discours du consommateur et ses pratiques réelles, ou quand certains aspects du comportement sont difficiles à verbaliser.

Question 5 : Pourquoi recommande-t-on souvent de commencer un protocole de recherche par une phase qualitative avant la phase quantitative ? Réponse : parce que la phase qualitative permet d''identifier les dimensions réellement pertinentes du phénomène étudié dans le contexte spécifique, ce qui évite de construire un questionnaire quantitatif basé sur des hypothèses théoriques génériques mal adaptées au terrain.

Merci pour votre attention. Dans la dernière vidéo de ce cours, nous passerons à l''épreuve type de synthèse, avec un plan de réponse complet mobilisant tout ce que nous avons vu jusqu''ici.', 'video', 90, false, 80
from public.courses c where c.slug = 'doc-mkt'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : les méthodes de recherche en marketing (expérimentation, enquête, qualitatif)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : épreuve type de synthèse, plan de réponse détaillé et corrigé commenté', '## Fiche du cours vidéo

Durée : 1h30. Public : doctorants préparant l''examen de qualification en marketing et commerce. Objectifs : s''entraîner à construire et défendre, en temps limité, un plan de réponse à une question de synthèse mobilisant plusieurs courants théoriques et une méthode de recherche. Matériel : énoncé de la question type, grille de construction de plan, corrigé commenté. Prérequis : avoir suivi les quatre leçons précédentes de ce cours.

## Déroulé minuté

## 00:00 – 05:00 · Introduction et enjeux de l''épreuve de synthèse

Bienvenue dans cette dernière vidéo consacrée à une leçon disciplinaire de notre cours de qualification doctorale en marketing. Nous avons vu, dans les vidéos précédentes, deux grands débats théoriques du champ et les principales méthodes de recherche. Aujourd''hui, nous allons nous entraîner à l''exercice le plus redouté de l''examen : la question de synthèse qui vous oblige à croiser plusieurs de ces éléments en temps limité, exactement comme un jury pourrait vous le demander à l''oral ou à l''écrit.

Notre objectif n''est pas seulement de connaître la bonne réponse à une question précise, mais de maîtriser la méthode qui permet de construire une bonne réponse à n''importe quelle question de ce type, même une question jamais rencontrée auparavant. C''est cette méthode, plus que le contenu mémorisé, qui fera la différence le jour de votre examen réel.

## 05:00 – 15:00 · Présentation de la question type et reformulation

Voici la question type, non officielle, que nous allons traiter aujourd''hui : « Dans quelle mesure les débats théoriques du marketing sur la création de valeur, du marketing mix transactionnel à la logique de dominante service, éclairent-ils la question de l''adaptation culturelle des stratégies marketing sur les marchés africains émergents ? Vous développerez une réponse structurée mobilisant les courants théoriques pertinents, et vous proposerez un protocole de recherche permettant d''étudier empiriquement cette question dans un contexte sénégalais de votre choix. »

Remarquez la construction de cette question : elle combine explicitement les deux grands débats théoriques de ce cours et demande en plus une ouverture méthodologique. C''est typique du niveau d''exigence d''un examen de qualification doctorale : jamais un seul courant isolé, presque toujours une articulation entre plusieurs éléments du programme, et presque toujours une exigence de débouché méthodologique concret.

La première étape, cruciale et souvent négligée sous la pression du temps, consiste à reformuler la question pour identifier précisément les concepts clés à mobiliser. Ici, nous identifions quatre éléments : la théorie de la création de valeur en marketing, l''adaptation culturelle des stratégies marketing, les marchés africains émergents comme terrain d''application, et une proposition méthodologique. Ne sautez jamais cette étape de reformulation, même sous la pression du temps : elle vous évite de partir dans une mauvaise direction dès les premières minutes de votre réponse.

## 15:00 – 40:00 · Construction du plan de réponse, partie théorique

Construisons maintenant le plan en quatre temps que je vous recommande pour ce type de question. Premier temps, l''introduction : nous posons d''emblée le lien entre les deux débats, en affirmant que plus on conçoit la valeur comme co-créée avec le client plutôt que livrée de façon standardisée par l''entreprise, plus l''attention portée au contexte culturel et local du client devient théoriquement incontournable. Cette phrase d''ouverture montre immédiatement au jury que vous avez compris l''articulation demandée par la question, plutôt que de traiter les deux débats côte à côte.

Deuxième temps, la première partie du développement : nous montrons que le paradigme transactionnel du marketing mix, en traitant le client comme un récepteur relativement passif d''une offre définie en amont, est structurellement compatible avec une stratégie de standardisation poussée. Si la valeur est essentiellement déterminée par l''entreprise au moment de la conception du produit, l''adaptation au contexte local n''est perçue que comme un ajustement secondaire, principalement tactique, sans remettre en cause la conception centrale de l''offre.

Troisième temps, la deuxième partie du développement, le cœur de l''argumentation : nous montrons que le passage au marketing relationnel, puis à la dominante service et à la co-création de valeur, change la nature du problème. Si la valeur se réalise dans l''usage, au contact des ressources et du contexte propres du client, alors le contexte culturel local devient une composante constitutive de la valeur elle-même, et non un simple facteur d''ajustement périphérique. Illustrons avec un exemple fictif, sans invoquer de marque réelle : un service financier mobile n''a pas la même valeur d''usage selon les pratiques locales de gestion de l''argent, les structures familiales d''entraide financière, ou le rôle social du commerce de proximité, qui diffèrent sensiblement entre contextes. C''est précisément ce type d''exemple contextualisé que vous devez préparer à l''avance pour chaque grand débat théorique de votre programme doctoral.

## 40:00 – 45:00 · Pause et quiz interactif

Faisons une pause avec un quiz à trois questions sur la construction du plan.

Question 1 : Pourquoi faut-il toujours reformuler une question de synthèse avant de commencer à y répondre ? Réponse : pour identifier précisément les concepts clés attendus et éviter de partir dans une mauvaise direction, surtout sous la pression du temps.

Question 2 : Dans notre plan, pourquoi le marketing mix transactionnel est-il présenté comme compatible avec la standardisation ? Réponse : parce qu''il conçoit la valeur comme déterminée essentiellement par l''entreprise en amont, ce qui relègue l''adaptation locale à un rôle secondaire et tactique.

Question 3 : Pourquoi la logique de dominante service rend-elle l''adaptation culturelle théoriquement plus incontournable ? Réponse : parce que si la valeur se réalise dans l''usage, au contact du contexte réel du client, alors ce contexte culturel devient une composante constitutive de la valeur elle-même, et non plus un simple ajustement périphérique.

## 45:00 – 1:05:00 · Construction du plan de réponse, nuance et protocole méthodologique

Quatrième temps, la troisième partie du développement : la nuance, toujours essentielle pour éviter une réponse binaire. Nous montrons que cette logique n''impose pas un relativisme culturel total : certains éléments de l''offre, comme l''identité de marque globale ou certains standards de qualité, peuvent rester standardisés sans contredire la logique de co-création, tant que les éléments réellement mobilisés dans l''usage quotidien, comme le prix, le format, les canaux de distribution et la communication, sont, eux, adaptés au contexte local. La position de « glocalisation » différenciée variable par variable reste donc pertinente même dans une perspective de dominante service.

Cinquième temps, la quatrième partie du développement, l''ouverture méthodologique, souvent le point le plus discriminant entre un bon candidat et un excellent candidat : nous proposons un protocole de recherche mixte pour étudier empiriquement cette question dans un contexte sénégalais, par exemple le commerce de détail urbain équipé progressivement de solutions de paiement mobile. Ce protocole combine une phase qualitative exploratoire, entretiens et ethnographie de courte durée pour identifier les pratiques locales de gestion de l''argent et de confiance, une phase expérimentale testant par exemple l''effet du degré d''adaptation de l''interface du service sur l''intention d''adoption, et une phase quantitative de généralisation par enquête, utilisant des échelles de mesure validées et une taille d''échantillon calculée selon le niveau de confiance et la marge d''erreur visés.

Sixième temps, la conclusion : nous rappelons que les deux débats théoriques mobilisés ne sont pas de simples débats parallèles du champ marketing, mais qu''ils s''articulent logiquement, ce qui justifie de traiter la question avec les méthodes de recherche les plus robustes possibles, idéalement mixtes.

## 1:05:00 – 1:20:00 · Anticiper les questions de rebond du jury

Un point essentiel pour l''oral : le jury ne se contente jamais d''écouter votre exposé initial, il va presque toujours vous poser des questions de rebond pour tester la robustesse de votre raisonnement. Anticipons deux questions typiques.

Première question possible du jury : « En quoi, concrètement, un protocole purement quantitatif aurait-il été insuffisant pour cette question ? » La réponse attendue est que les dimensions culturelles pertinentes à opérationnaliser dans le questionnaire ne peuvent pas être identifiées correctement sans une phase qualitative préalable, propre au terrain étudié. Un questionnaire construit directement à partir d''hypothèses théoriques génériques, sans exploration qualitative préalable, risquerait de mesurer des dimensions peu pertinentes dans le contexte spécifique étudié.

Seconde question possible du jury : « Vos résultats obtenus dans un seul contexte sénégalais peuvent-ils être généralisés à l''ensemble des marchés africains émergents ? » La réponse attendue est une réponse prudente : non, pas directement, en raison de la diversité interne importante du continent et de chaque pays qui le compose, comme nous l''avons vu dans la vidéo sur la standardisation et l''adaptation culturelle. Une généralisation prudente nécessiterait de répliquer l''étude dans d''autres contextes avant toute affirmation plus large, ce qui constitue d''ailleurs une piste naturelle pour des recherches futures au-delà de la thèse elle-même.

Cette capacité à anticiper et à répondre avec nuance aux questions de rebond, plutôt qu''à défendre votre position initiale de façon rigide, est précisément ce qui distingue, aux yeux d''un jury expérimenté, un candidat qui a mémorisé une réponse d''un candidat qui maîtrise réellement son sujet.

## 1:20:00 – 1:30:00 · Synthèse finale et conseils pour le jour de l''examen

Pour conclure cette séance et ce cours disciplinaire : une bonne réponse de synthèse articule toujours plusieurs courants théoriques autour d''une problématique commune, plutôt que de les juxtaposer. Elle illustre systématiquement les arguments par des exemples contextualisés, idéalement ancrés dans votre zone géographique d''intérêt. Elle débouche toujours sur une proposition méthodologique concrète et justifiée. Et elle anticipe les questions de rebond du jury plutôt que de les subir.

Quelques derniers conseils pratiques pour le jour de l''examen. Préparez à l''avance, pour chaque grand débat de votre programme, deux ou trois exemples contextualisés que vous maîtrisez parfaitement, plutôt que d''essayer d''en improviser le jour même. Entraînez-vous à systématiquement relier spontanément les différents courants de votre programme entre eux, même quand la question ne le demande pas explicitement : c''est souvent ce geste qui distingue les meilleures prestations. Enfin, acceptez qu''un bon candidat ne connaît pas toutes les réponses par cœur, mais sait raisonner en temps réel à partir de ce qu''il maîtrise : un jury valorise presque toujours un raisonnement honnête et nuancé, construit en direct, plutôt qu''une récitation parfaite mais rigide.

Cette leçon disciplinaire achève notre série de quatre vidéos consacrées au contenu du programme de qualification en marketing. La cinquième et dernière vidéo de ce cours sera consacrée à une simulation complète de soutenance de qualification doctorale, avec présentation d''un projet de thèse fictif et questions de jury type. Je vous y attends pour mettre en pratique, en conditions proches du réel, tout ce que nous avons vu dans ces quatre premières vidéos.

Cette vidéo ne comporte pas d''évaluation finale classique de cinq questions comme les précédentes, puisque l''intégralité de la séance a constitué, de fait, un entraînement détaillé et commenté à l''exercice de synthèse lui-même ; je vous invite plutôt, comme exercice personnel, à reprendre dès maintenant la grille de construction de plan présentée aujourd''hui et à l''appliquer à une question de synthèse différente de votre choix, dans votre futur domaine de thèse.', 'video', 90, false, 90
from public.courses c where c.slug = 'doc-mkt'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : épreuve type de synthèse, plan de réponse détaillé et corrigé commenté');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : simulation complète d''une soutenance de qualification doctorale en marketing', '## Fiche du cours vidéo

Durée : 1h30. Public : doctorants préparant l''examen de qualification en marketing et commerce. Objectifs : vivre une simulation complète et réaliste d''une soutenance de qualification doctorale, de la présentation initiale aux questions de jury, et s''auto-évaluer avec une grille structurée. Matériel : support de présentation de 15 minutes, liste de questions de jury type, grille d''auto-évaluation finale. Prérequis : avoir suivi l''ensemble des leçons précédentes de ce cours.

## Déroulé minuté

## 00:00 – 05:00 · Introduction à la simulation

Bienvenue dans cette cinquième et dernière vidéo de notre cours de qualification doctorale en marketing et commerce. Après avoir vu les deux grands débats théoriques du champ et les méthodes de recherche propres à la discipline, nous allons maintenant vivre ensemble une simulation complète de soutenance de qualification, telle qu''elle pourrait se dérouler devant un jury doctoral réel. Je vais d''abord jouer le rôle du candidat qui présente son champ et un projet de thèse fictif pendant quinze minutes, puis nous passerons à une série de huit à dix questions de jury type, avec chaque fois la structure d''une bonne réponse. Nous terminerons par une grille d''auto-évaluation que vous pourrez réutiliser pour vos propres simulations.

Gardez à l''esprit que cette simulation est un exercice pédagogique : le projet de thèse présenté est entièrement fictif, construit uniquement pour illustrer la méthode, et ne constitue en aucun cas un modèle de sujet de thèse à reproduire tel quel.

## 05:00 – 20:00 · Présentation du champ et du projet de thèse fictif (15 minutes)

Mesdames et messieurs les membres du jury, je vous remercie de votre attention. Je vais vous présenter, en quinze minutes, une synthèse de mon positionnement dans le champ du marketing, puis mon projet de thèse.

Le champ du marketing a connu, au cours des dernières décennies, un déplacement théorique majeur : du paradigme transactionnel centré sur le marketing mix et l''échange ponctuel, vers un paradigme relationnel puis vers la logique de dominante service, qui place la co-création de valeur au centre de l''analyse. Ce déplacement n''est pas qu''une évolution académique abstraite : il transforme directement la façon dont on peut étudier des phénomènes marketing concrets, en particulier dans des contextes de marchés émergents où la question de l''adaptation culturelle des stratégies marketing reste vivement débattue, entre les tenants d''une standardisation porteuse d''économies d''échelle et les tenants d''une adaptation locale porteuse de pertinence commerciale, la recherche contemporaine privilégiant une position intermédiaire de glocalisation différenciée variable par variable.

Mon projet de thèse, encore fictif à ce stade, se positionne précisément à la croisée de ces deux débats. Je propose d''étudier comment le degré d''adaptation culturelle des services financiers mobiles, destinés aux commerçants de marchés urbains ouest-africains, influence la confiance perçue envers ces services et, in fine, leur adoption durable. Ce sujet s''inscrit dans la logique de dominante service, car il part du principe que la valeur de ces services ne se réalise pleinement que dans leur usage réel, au contact des pratiques locales de gestion de l''argent, et non dans leur seule conception technique par l''opérateur.

Pour étudier cette question, je propose un protocole de recherche mixte en trois phases. Une première phase qualitative, par entretiens semi-directifs et une courte observation ethnographique sur un marché urbain, permettra d''identifier les dimensions de confiance et d''adaptation réellement pertinentes dans ce contexte précis. Une deuxième phase expérimentale, construite sur un plan factoriel, permettra de tester rigoureusement l''effet causal du degré d''adaptation de l''interface du service sur l''intention d''adoption, en isolant ce facteur d''autres facteurs comme le prix. Une troisième phase, par enquête quantitative à grande échelle utilisant des échelles de mesure validées de la confiance et de l''intention d''adoption, permettra de généraliser les résultats à une population plus large de commerçants, avec une taille d''échantillon calculée selon les exigences de confiance et de précision statistique retenues.

Ce projet se situe ainsi explicitement à la croisée des deux grands débats théoriques de mon champ, et mobilise les trois grandes familles de méthodes de recherche du marketing de façon complémentaire plutôt que concurrente. Je vous remercie de votre attention et reste à votre disposition pour vos questions.

## 20:00 – 55:00 · Questions de jury type et structure de bonne réponse (partie 1)

Passons maintenant aux questions du jury. Je vais formuler chaque question comme le ferait un membre de jury, puis donner la structure d''une bonne réponse, sans réciter une réponse figée, pour que vous compreniez la logique de construction plutôt qu''un contenu à apprendre par cœur.

Question 1 du jury : « Vous présentez votre sujet comme relevant de la dominante service. Pourquoi pas simplement du marketing relationnel, qui semble déjà couvrir la dimension de confiance que vous évoquez ? » Structure de bonne réponse : reconnaître que le marketing relationnel couvre effectivement la dimension de confiance et de relation dans la durée, mais préciser que la dominante service apporte un élément supplémentaire essentiel pour ce sujet, à savoir le fait que la valeur du service dépend structurellement des pratiques d''usage locales du client, ce qui justifie l''attention méthodologique portée aux pratiques réelles via l''ethnographie, au-delà de la seule mesure de la confiance relationnelle.

Question 2 du jury : « Votre protocole est ambitieux. N''est-il pas excessif pour une seule thèse ? » Structure de bonne réponse : reconnaître honnêtement l''ambition du protocole complet, puis proposer une hiérarchisation réaliste dans le temps, par exemple en consacrant la première année à la phase qualitative et à la conception de la phase expérimentale, et en assumant que la généralisation quantitative à grande échelle pourrait être partiellement réduite en échantillon ou reportée en fin de thèse, tout en justifiant explicitement ce choix de priorisation plutôt que de le présenter comme une simple contrainte.

Question 3 du jury : « Comment choisirez-vous le ou les facteurs de votre plan factoriel ? » Structure de bonne réponse : expliquer que les facteurs seront déterminés à partir des résultats de la phase qualitative préalable, et non fixés a priori par la seule théorie, ce qui garantit que l''expérimentation testera des dimensions réellement identifiées comme pertinentes sur le terrain étudié, plutôt que des dimensions supposées pertinentes de façon purement théorique.

Question 4 du jury : « Que ferez-vous si vos résultats qualitatifs contredisent les attentes théoriques tirées de la littérature sur la dominante service ? » Structure de bonne réponse : affirmer qu''un résultat qualitatif contredisant la théorie n''est pas un échec mais une opportunité de contribution théorique, et expliquer que la démarche consisterait alors à documenter précisément cet écart, à chercher des explications contextuelles plausibles, et à discuter si cet écart remet en cause la théorie elle-même dans ce contexte précis ou révèle plutôt une spécificité locale à approfondir.

## 55:00 – 1:05:00 · Pause et quiz interactif

Prenons une courte pause avec un quiz à trois questions sur la simulation que nous venons de voir.

Question 1 : Pourquoi le candidat justifie-t-il le choix de la dominante service plutôt que du seul marketing relationnel pour son sujet ? Réponse : parce que la dominante service met l''accent sur la dépendance de la valeur du service aux pratiques d''usage locales du client, ce qui justifie le recours à des méthodes qualitatives comme l''ethnographie, au-delà de la seule mesure de la confiance relationnelle.

Question 2 : Comment le candidat répond-il à l''objection sur l''ambition excessive de son protocole ? Réponse : en reconnaissant honnêtement l''ambition du protocole, puis en proposant une hiérarchisation réaliste dans le temps et une priorisation justifiée plutôt qu''en défendant rigidement le protocole complet sans aucune concession.

Question 3 : Comment le candidat réagit-il face à l''hypothèse d''un résultat qualitatif contredisant la théorie ? Réponse : il présente cela comme une opportunité de contribution théorique plutôt qu''un échec, en proposant de documenter l''écart et d''en chercher les explications contextuelles.

## 1:05:00 – 1:25:00 · Questions de jury type et structure de bonne réponse (partie 2)

Continuons avec quatre autres questions typiques d''un jury doctoral.

Question 5 du jury : « En quoi votre recherche contribue-t-elle à la littérature existante, au-delà de son application à un contexte particulier ? » Structure de bonne réponse : distinguer la contribution empirique, qui enrichit la connaissance d''un contexte encore peu étudié, de la contribution théorique potentielle, qui pourrait consister à préciser les conditions et limites d''application de la logique de dominante service dans des contextes de marchés émergents à forte hétérogénéité culturelle interne, un point encore peu développé dans la littérature existante.

Question 6 du jury : « Comment garantirez-vous que votre échantillon qualitatif n''est pas biaisé, par exemple en n''interrogeant que des commerçants déjà favorables à l''innovation technologique ? » Structure de bonne réponse : reconnaître ce risque de biais de sélection comme réel, et proposer une stratégie d''échantillonnage qualitatif diversifiée, incluant des profils variés en termes d''âge, d''ancienneté dans le commerce, et de degré d''adoption déjà observé des outils numériques, afin de capturer une diversité de points de vue plutôt qu''une seule catégorie de répondants déjà convaincus.

Question 7 du jury : « Votre question de recherche est-elle réellement nouvelle, ou reformule-t-elle simplement des travaux déjà existants sur l''adoption de la technologie ? » Structure de bonne réponse : reconnaître honnêtement les points de continuité avec les modèles d''adoption de la technologie déjà existants dans la littérature, tout en précisant l''apport spécifique du positionnement choisi, à savoir l''articulation explicite entre adaptation culturelle et logique de co-création de valeur, moins souvent traitée conjointement dans ce contexte précis.

Question 8 du jury : « Comment vos résultats pourraient-ils être utiles concrètement aux opérateurs de services financiers mobiles, au-delà de leur intérêt académique ? » Structure de bonne réponse : expliquer que les résultats pourraient aider les opérateurs à mieux calibrer le degré d''adaptation nécessaire de leurs interfaces et de leur communication selon les profils de commerçants identifiés, tout en rappelant avec prudence qu''une thèse de doctorat vise avant tout une contribution scientifique, les implications managériales restant une conséquence seconde et non l''objectif premier de la recherche.

## 1:25:00 – 1:30:00 · Clôture et grille d''auto-évaluation de la soutenance simulée

Nous arrivons à la fin de cette simulation et de ce cours disciplinaire complet. Je vous propose, pour conclure, une grille d''auto-évaluation que vous pourrez utiliser après chacune de vos propres simulations de soutenance, seul ou avec un collègue qui joue le rôle du jury.

Grille d''auto-évaluation de la soutenance simulée, en six critères, chacun à évaluer de façon honnête sur une échelle qualitative allant de « à retravailler » à « maîtrisé » :

- Clarté et structuration de la présentation initiale de quinze minutes : le positionnement théorique et le projet de thèse sont-ils présentés de façon logique, sans confusion entre les courants théoriques mobilisés ?

- Précision conceptuelle : les termes techniques du champ (paradigme transactionnel, marketing relationnel, dominante service, co-création de valeur, standardisation, adaptation culturelle, plan factoriel, échelle validée) sont-ils employés avec exactitude et sans confusion entre eux ?

- Capacité à mettre en tension plutôt qu''à juxtaposer : les courants théoriques sont-ils reliés entre eux et discutés de façon critique, plutôt que simplement énumérés les uns après les autres ?

- Justification méthodologique : le choix des méthodes de recherche proposées est-il explicitement justifié par rapport à la question de recherche, plutôt que simplement mentionné ?

- Qualité des réponses aux questions de rebond : les objections et questions difficiles du jury sont-elles accueillies avec honnêteté et nuance, plutôt qu''avec une défense rigide de la position initiale ?

- Ancrage contextuel : le projet et les exemples mobilisés sont-ils ancrés dans des exemples concrets et plausibles, sans généralisation abusive ni lecture essentialiste d''un contexte culturel ?

Pour chacun de ces six critères, notez honnêtement votre propre performance lors de vos simulations d''entraînement, identifiez les deux ou trois critères les plus faibles, et concentrez vos prochaines séances de préparation sur ces points précis plutôt que de reviser uniformément l''ensemble du programme. C''est avec cette méthode d''auto-évaluation ciblée, répétée plusieurs fois dans les semaines précédant l''examen réel, que vous maximiserez vos chances de réussite le jour de votre soutenance de qualification doctorale. Je vous souhaite beaucoup de succès dans cette préparation, et dans la suite de votre parcours doctoral.', 'video', 90, false, 100
from public.courses c where c.slug = 'doc-mkt'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : simulation complète d''une soutenance de qualification doctorale en marketing');
