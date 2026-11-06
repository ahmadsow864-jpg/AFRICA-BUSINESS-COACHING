-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Cours (partie 19/21). À exécuter après seed.sql.

-- Cours : Doctorat Gestion de projets : préparer l'examen de qualification doctorale
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'doc-projet', (select id from public.levels where name = 'Doctorat'), null, 'Gestion de projets', 'Doctorat Gestion de projets : préparer l''examen de qualification doctorale', 'Cours de préparation à l''examen de qualification doctorale (comprehensive exam) en gestion de projets : les grands courants théoriques du champ (approche rationnelle et planificatrice versus approches comportementales et agilité), les méthodes de recherche propres à la discipline (étude de cas longitudinale, recherche-action, enquêtes de maturité organisationnelle), et un entraînement complet à l''oral de soutenance devant un jury doctoral. Public : doctorants en gestion de projets préparant leur examen de qualification.', true, 802
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir son examen de qualification doctorale en gestion de projets', 'Objectifs de la leçon

Cette première leçon pose le cadre de votre préparation à l''examen de qualification doctorale en gestion de projets. Vous allez comprendre la nature exacte de cette épreuve, ce qu''un jury doctoral attend réellement de vous, et comment organiser un plan de travail réaliste sur huit semaines. L''objectif n''est pas d''empiler des lectures, mais de construire une vision structurée et critique du champ de la gestion de projets, capable de résister aux questions d''un jury exigeant.

La nature de l''épreuve

L''examen de qualification doctorale (souvent appelé « comprehensive exam » dans la tradition anglo-saxonne, ou « examen de synthèse » dans certains programmes francophones) n''est pas un examen de connaissances factuelles. C''est une épreuve de maturité scientifique. Elle vise à vérifier trois choses : que vous maîtrisez l''état de l''art de votre discipline (les grands courants théoriques, leurs auteurs, leurs débats, leurs limites) ; que vous êtes capable de positionner un projet de recherche doctoral dans cette littérature, c''est-à-dire de dire précisément ce que votre thèse apporte de neuf ; et que vous savez argumenter à l''oral, sous la contradiction, devant un jury qui va chercher les failles de votre raisonnement.

Concrètement, l''épreuve se déroule en général en deux temps. D''abord une production écrite : une note de synthèse ou un état de l''art sur un sous-champ de la gestion de projets (par exemple l''agilité, la gouvernance de projet, le risque), parfois accompagnée d''une note de positionnement de votre propre projet de thèse. Ensuite une soutenance orale devant un jury de deux à cinq enseignants-chercheurs, où vous présentez votre champ et votre projet pendant une quinzaine de minutes, puis répondez à des questions pendant quarante-cinq minutes à une heure. Les formats varient selon les établissements, mais cette structure (écrit de synthèse puis oral de défense) est très répandue dans les programmes doctoraux africains et francophones qui s''inspirent des standards internationaux.

Ce que le jury évalue réellement

Un jury doctoral ne cherche pas à vous piéger sur une date ou un nom d''auteur. Il évalue votre capacité à raisonner en chercheur. Cinq critères reviennent systématiquement, quel que soit le champ disciplinaire.

Premièrement, la maîtrise cartographique du champ : savez-vous situer les grands courants les uns par rapport aux autres, qui pense quoi, pourquoi et depuis quand ? Deuxièmement, l''esprit critique : savez-vous montrer les limites et les critiques d''un courant, et pas seulement le résumer ? Troisièmement, la rigueur méthodologique : savez-vous expliquer comment la recherche se mène dans votre champ ? Quatrièmement, la capacité de positionnement : savez-vous dire précisément ce que votre thèse interroge et apporte ? Cinquièmement, la solidité face à la contradiction : savez-vous nuancer votre propos sans vous effondrer au premier désaccord ?

Une erreur fréquente est de préparer l''épreuve comme un cours magistral à réciter. Le jury attend un dialogue de chercheur à chercheur, même si vous êtes encore doctorant. Mieux vaut connaître moins de courants mais les maîtriser en profondeur que de survoler dix courants sans pouvoir en discuter sérieusement aucun.

Méthode de travail : fiches de lecture, cartographie, note de synthèse

La préparation méthodique repose sur trois outils complémentaires que vous allez utiliser tout au long de ce cours.

La fiche de lecture. Pour chaque texte ou auteur important, rédigez une fiche courte et standardisée : la question posée, la thèse défendue, les concepts clés, la méthode utilisée, les limites critiquées, et un lien possible avec votre projet de thèse. Une fiche utile tient sur une demi-page et doit vous permettre, six mois plus tard, de vous souvenir de l''essentiel sans relire le texte entier.

La cartographie des courants. Un tableau qui place les grands courants théoriques les uns par rapport aux autres : présupposés, questions posées, oppositions ou complémentarités, auteurs fondateurs, critiques adressées. C''est l''outil que nous allons construire ensemble dans les leçons 2 et 3, pour deux grands débats structurants du champ.

La note de synthèse. Un document de quelques pages qui résume, pour un sous-thème donné, l''état des connaissances : ce qu''on sait, ce qui fait débat, ce qui reste à explorer. C''est l''exercice le plus proche de ce que le jury attendra à l''écrit. Nous en verrons un exemple corrigé dans la cinquième leçon.

Plan de travail sur huit semaines

Une préparation sérieuse à l''examen de qualification s''étale idéalement sur deux mois, à raison de plusieurs heures par semaine. Voici une trame indicative, à adapter à votre calendrier et à l''avancement de votre propre projet de thèse.

Semaines 1 et 2 : cartographie générale du champ. Vous repérez au moins quatre à cinq grands courants théoriques, leurs auteurs fondateurs et leurs idées principales, et vous commencez vos fiches de lecture.

Semaines 3 et 4 : approfondissement des débats que vous jugez les plus pertinents pour votre thèse. C''est le moment de comparer les positions et de repérer les critiques croisées entre courants.

Semaines 5 et 6 : les méthodes de recherche du champ (études de cas, enquêtes, recherche-action), et l''ébauche du protocole méthodologique de votre propre thèse.

Semaine 7 : rédaction de votre note de synthèse écrite et de votre note de positionnement de thèse.

Semaine 8 : simulation de soutenance, présentation orale de quinze minutes, anticipation des questions probables du jury, et si possible un oral d''entraînement devant des collègues. La cinquième vidéo de ce cours propose une simulation complète que vous pourrez utiliser comme répétition générale.

Pourquoi la gestion de projets est un champ particulièrement riche pour cet exercice

La gestion de projets est un champ de recherche relativement jeune en tant que discipline académique autonome, mais extrêmement actif. Elle emprunte à l''ingénierie, à la théorie des organisations, à la sociologie du travail et à la psychologie. Cette hybridité en fait un terrain fertile pour les débats théoriques : faut-il penser le projet comme un processus à planifier et contrôler, ou comme une réalité sociale complexe et émergente ? Comment mesurer son « succès » : par le respect du budget et des délais, ou par la valeur créée pour les parties prenantes ? Ces questions, creusées dans les leçons suivantes, sont directement mobilisables dans votre examen, quel que soit le sujet précis de votre thèse.

## Exercices pratiques

1. Renseignez-vous sur le format exact de l''examen de qualification doctorale dans votre propre établissement (durée de l''écrit, durée de l''oral, composition du jury) et comparez-le à la structure générale présentée dans cette leçon. Identifiez les points communs et les particularités locales.

2. Dressez une première liste, même provisoire, de quatre à cinq grands courants théoriques de la gestion de projets que vous pensez devoir maîtriser. Justifiez en une phrase pourquoi chacun vous semble pertinent pour votre projet de thèse.

3. Rédigez une fiche de lecture type (le gabarit, pas encore remplie) que vous utiliserez pour chaque texte important de votre préparation. Listez les six à huit rubriques qu''elle devra comporter.

4. Construisez votre propre plan de travail sur huit semaines, en tenant compte de vos contraintes réelles (enseignement, terrain de thèse, vie personnelle). Identifiez la semaine la plus à risque de report et prévoyez une marge de sécurité.

5. Expliquez en cinq à huit lignes, comme si vous répondiez à un membre du jury, pourquoi la gestion de projets constitue selon vous un champ de recherche à part entière, et non une simple boîte à outils managériale.

## Corrigé

1. Il n''existe pas de corrigé unique : chaque établissement a ses propres règles (certains organisent un seul oral sans écrit préalable, d''autres exigent un mémoire de synthèse de trente à soixante pages). L''essentiel est que vous ayez formellement vérifié, auprès de votre école doctorale ou de votre directeur de thèse, la durée exacte de chaque épreuve, les modalités de notation et la composition du jury, plutôt que de vous fier à des rumeurs entre doctorants.

2. Une liste plausible, qui sera précisément développée dans les leçons 2 et 3 : (a) l''approche rationnelle et séquentielle de la planification de projet, héritée du génie industriel ; (b) les approches comportementales et l''agilité organisationnelle, centrées sur les personnes et la complexité ; (c) la gouvernance de projet et la question des parties prenantes ; (d) la gestion des risques et de l''incertitude en projet ; (e) la maturité organisationnelle en gestion de projet. Le choix final dépend de votre sujet de thèse : un projet sur les équipes agiles mettra l''accent sur (a) et (b), un projet sur la gouvernance publique de grands projets mettra l''accent sur (c).

3. Un gabarit robuste comporte : référence complète du texte ; question de recherche posée ; thèse ou résultat principal ; concepts clés mobilisés (avec leur définition en une phrase) ; méthode de recherche utilisée le cas échéant ; limites reconnues par l''auteur ou relevées par la critique ultérieure ; courant théorique de rattachement ; lien possible avec votre propre projet de thèse.

4. La correction ici est personnelle : vérifiez que votre plan respecte l''ordre logique (cartographie générale avant approfondissement, approfondissement avant rédaction, rédaction avant simulation orale) et qu''il prévoit au moins une semaine tampon avant l''oral réel.

5. Une bonne réponse insiste sur trois points : la gestion de projets a développé un corpus théorique propre (cycle de vie, parties prenantes, gouvernance, agilité) qui dépasse la simple application d''outils ; elle fait l''objet de revues académiques dédiées et de débats théoriques vifs (par exemple sur la définition même du succès d''un projet) ; elle mobilise des méthodes de recherche spécifiques, en particulier l''étude de cas longitudinale et la recherche-action, adaptées à l''étude de phénomènes organisationnels complexes et temporellement bornés que sont les projets.', 'texte', 45, true, 10
from public.courses c where c.slug = 'doc-projet'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir son examen de qualification doctorale en gestion de projets');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Débat théorique n°1 : l''approche rationnelle et planificatrice du projet', 'Objectifs de la leçon

Cette leçon présente le premier grand courant structurant de la gestion de projets : l''approche rationnelle et planificatrice, souvent qualifiée de « hard skills » ou d''approche classique du cycle de vie de projet. Vous allez en comprendre les fondements, ses auteurs et jalons fondateurs, son évolution historique, et surtout ses limites, qui ont ouvert la voie aux approches comportementales étudiées dans la leçon suivante.

Définition et présupposés de l''approche rationnelle

L''approche rationnelle de la gestion de projets repose sur une idée simple : un projet est un système d''actions complexe mais fondamentalement maîtrisable, à condition de le découper, de le planifier et de le contrôler avec rigueur. Le projet y est pensé comme une séquence d''étapes logiques (le « cycle de vie du projet ») : initiation, planification, exécution, contrôle, clôture. À chaque étape correspondent des outils : la structure de découpage du projet (le WBS, qui décompose le projet en lots de travail), les diagrammes de réseau et le chemin critique pour ordonner les tâches dans le temps, les outils de budgétisation et de suivi des coûts.

Le présupposé central est que l''incertitude d''un projet peut être réduite, pour l''essentiel, par un effort de planification suffisamment détaillé en amont. La réussite du projet se mesure alors par le respect de trois contraintes simultanées, souvent représentées comme un triangle : le coût, le délai et la qualité ou le périmètre technique. On parle du « triangle de fer » du projet : on ne peut, en théorie, améliorer l''un de ces sommets sans dégrader au moins un des deux autres.

Jalons historiques et apports fondateurs

Les racines de cette approche se trouvent dans l''ingénierie industrielle et militaire du vingtième siècle. Les grands programmes d''armement et les chantiers d''infrastructures du milieu du siècle ont été les premiers terrains où des méthodes de planification formalisée ont été développées à grande échelle, pour coordonner des milliers d''intervenants sur des délais contraints. C''est dans ce contexte qu''ont émergé les techniques de réseau comme la méthode du chemin critique et les techniques d''évaluation probabiliste de programme (PERT), qui permettent de calculer la durée minimale d''un projet et d''identifier les tâches dont le retard retarderait l''ensemble.

Dans les décennies suivantes, ces techniques se sont diffusées vers l''ensemble des secteurs économiques, portées par la professionnalisation du métier de chef de projet : apparition d''associations professionnelles dédiées à partir des années 1960-1970, développement de corpus de bonnes pratiques standardisés, diffusion de certifications. Ce mouvement a consolidé l''approche rationnelle comme référentiel dominant, présenté comme un ensemble de processus standardisables, applicables à tout secteur à condition d''être exécutés avec discipline.

Cette approche a aussi été nourrie par la recherche opérationnelle, qui a fourni l''appareil mathématique de l''ordonnancement de tâches et de l''analyse de risques probabilisée.

Ce que cette approche a durablement apporté au champ

Il serait injuste de réduire l''approche rationnelle à un courant dépassé. Elle a apporté des outils robustes qui restent utilisés quotidiennement, quelle que soit la sensibilité théorique du praticien : la décomposition structurée du travail, qui force à clarifier le périmètre d''un projet avant de s''y engager ; les outils de planification et d''ordonnancement, indispensables dès qu''un projet mobilise de nombreuses tâches interdépendantes ; la discipline budgétaire et le suivi des écarts, qui permettent de détecter tôt une dérive ; le vocabulaire commun (jalon, livrable, chemin critique, périmètre) qui facilite la communication entre acteurs. Sur le plan académique, elle a aussi installé la gestion de projet comme objet d''étude légitime, avec ses propres revues et formations universitaires.

Limites et critiques de l''approche rationnelle

Les critiques se sont accumulées à partir des années 1980-1990, à mesure que la recherche empirique montrait que les projets réels se comportaient rarement comme le prévoyait le modèle séquentiel.

Première limite : l''hypothèse d''une planification exhaustive en amont se heurte à la réalité de nombreux projets à forte innovation (logiciels, recherche et développement), où les besoins évoluent en cours de route et où l''information nécessaire n''existe simplement pas au moment où il faudrait planifier. Planifier dans le détail un résultat encore incertain revient à construire un plan largement fictif.

Deuxième limite : l''approche rationnelle traite le projet comme un système technique, en sous-estimant sa dimension humaine et politique. Un projet mobilise des acteurs aux intérêts divergents (maître d''ouvrage, équipe, utilisateurs, sous-traitants), dont les jeux de pouvoir et les résistances au changement influencent souvent davantage la trajectoire réelle du projet que la qualité du planning initial.

Troisième limite : la focalisation sur le triangle coût-délai-qualité a été critiquée comme un indicateur de succès trop étroit. Un projet peut respecter son budget et son calendrier tout en étant un échec si le produit livré ne répond pas aux besoins réels des utilisateurs. C''est le débat sur la mesure du succès, approfondi en leçon 5, en regard de l''approche par la création de valeur.

Quatrième limite, plus empirique : des études menées sur de grands projets (infrastructures, systèmes d''information) ont documenté des dépassements de coûts et de délais récurrents, suggérant que la planification rationnelle seule ne suffit pas à maîtriser les projets complexes. Ce constat a nourri des travaux sur les biais cognitifs des décideurs (sous-estimation systématique des coûts au moment de la décision) et sur les mécanismes politiques qui conduisent à lancer des projets dont le dépassement était prévisible.

Pourquoi ce courant reste indispensable à connaître

Malgré ces critiques, aucun chercheur sérieux ne propose d''abandonner purement et simplement les outils de l''approche rationnelle. Le débat contemporain n''est pas « planification contre absence de planification », mais : à quelles conditions la planification rationnelle reste-t-elle pertinente ? Cette question de contingence structure une bonne partie de la recherche actuelle, et fait le lien avec le courant comportemental et agile étudié dans la prochaine leçon.

## Exercices pratiques

1. Expliquez, en vos propres termes, pourquoi le triangle coût-délai-qualité est à la fois un outil utile et une simplification potentiellement trompeuse de ce qu''est la réussite d''un projet.

2. Identifiez un type de projet pour lequel l''approche rationnelle et planificatrice vous semble particulièrement adaptée, et un type de projet pour lequel elle vous semble particulièrement mal adaptée. Justifiez chaque choix par au moins deux arguments.

3. Un jury vous demande : « L''approche rationnelle de la gestion de projet est-elle un courant théorique, ou une simple collection d''outils techniques ? » Rédigez un plan de réponse en trois points.

4. Expliquez le lien entre la professionnalisation du métier de chef de projet (associations professionnelles, certifications, corpus de bonnes pratiques) et la diffusion de l''approche rationnelle comme référentiel dominant du champ.

5. En quoi les critiques adressées à l''approche rationnelle (dimension humaine négligée, biais cognitifs des décideurs, mesure étroite du succès) préparent-elles, selon vous, l''émergence d''un courant concurrent ? Formulez une hypothèse, sans encore connaître le contenu de la leçon suivante.

6. Discutez l''affirmation suivante, qui pourrait être posée par un membre du jury : « Les dépassements de coûts et de délais récurrents observés sur les grands projets prouvent que l''approche rationnelle a échoué. » Nuancez cette affirmation.

## Corrigé

1. Le triangle coût-délai-qualité est utile car il rend visible les compromis inévitables de toute gestion de projet : on ne peut généralement pas tout optimiser à la fois. Il est trompeur s''il devient le seul critère de succès, car il ignore la satisfaction réelle des utilisateurs et la valeur effectivement créée après la livraison du projet.

2. Un projet de construction d''infrastructure physique à périmètre stable (un pont, une route, un bâtiment standard) se prête bien à l''approche rationnelle, car les besoins sont connus à l''avance et la technique est maîtrisée. Un projet de développement d''un produit numérique innovant, où les besoins des utilisateurs sont découverts progressivement, s''y prête mal, car planifier dans le détail un résultat encore incertain produit un plan largement fictif, rapidement obsolète.

3. Plan possible : (a) rappeler que l''approche s''appuie sur des outils techniques réels, mais que leur usage repose sur des présupposés théoriques explicites (projet maîtrisable par la planification, succès défini par le triangle coût-délai-qualité) ; (b) montrer que ces présupposés ont été théorisés et diffusés par une communauté professionnelle et académique, ce qui en fait un courant et non une boîte à outils isolée ; (c) conclure que c''est précisément parce que ce sont des présupposés théoriques qu''ils ont pu être questionnés par d''autres courants.

4. La professionnalisation a joué un rôle d''institutionnalisation : en formant les chefs de projet à un référentiel commun, en certifiant leur maîtrise de ce référentiel et en diffusant des corpus de bonnes pratiques standardisés à travers les secteurs et les pays, les associations professionnelles ont contribué à faire de l''approche rationnelle la grammaire de référence du métier, bien au-delà de son origine initiale dans l''ingénierie et la défense.

5. Une hypothèse plausible est que la négligence de la dimension humaine et politique du projet, documentée par la critique, a ouvert la voie à des courants qui replacent les comportements des acteurs, la communication, le leadership et l''adaptation au centre de l''analyse du projet, plutôt que les seuls outils de planification technique. C''est précisément l''objet de la leçon suivante.

6. Il faut nuancer : l''existence de dépassements récurrents ne prouve pas à elle seule que la méthode de planification est fausse, elle peut aussi révéler des causes externes (pressions politiques pour sous-estimer les coûts, complexité intrinsèque de certains projets, changements de périmètre). La recherche sérieuse distingue les défaillances de méthode des défaillances de gouvernance ou des biais de décision, explications différentes mais complémentaires.', 'texte', 45, false, 20
from public.courses c where c.slug = 'doc-projet'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Débat théorique n°1 : l''approche rationnelle et planificatrice du projet');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Débat théorique n°2 : approches comportementales et agilité organisationnelle', 'Objectifs de la leçon

Après avoir étudié l''approche rationnelle et planificatrice, cette leçon aborde le second grand courant structurant de la gestion de projets : les approches comportementales et l''agilité organisationnelle, souvent résumées par l''expression « soft skills ». Vous verrez en quoi ce courant s''est construit en tension avec le précédent, quelles idées et quels mouvements l''ont porté, et quelles limites lui sont à leur tour adressées.

Définition et présupposés des approches comportementales

Les approches comportementales partent d''un constat inverse de celui de l''approche rationnelle : un projet n''est pas d''abord un système technique à planifier, mais une réalité sociale faite de personnes, de relations, de communication et d''incertitude irréductible. La performance d''un projet dépendrait donc moins de la qualité du plan initial que de la capacité de l''équipe à collaborer, à communiquer et à s''adapter à des informations nouvelles.

Ce courant regroupe plusieurs familles de travaux complémentaires. D''une part, les recherches sur le leadership de projet, la motivation des équipes, la gestion des conflits et la confiance entre les membres, qui s''inscrivent dans la tradition du comportement organisationnel appliqué au contexte spécifique du projet. D''autre part, et de façon plus récente, le mouvement de l''agilité, né dans le développement de logiciels à la fin des années 1990, qui propose une remise en cause frontale du modèle séquentiel de planification détaillée.

L''agilité et la complexité comme réponse à l''incertitude

Le mouvement agile part d''un diagnostic simple : dans de nombreux projets, en particulier à forte composante d''innovation ou de développement logiciel, il est illusoire de vouloir figer un périmètre détaillé en début de projet, parce que les besoins réels ne sont découverts que progressivement, au contact des utilisateurs. Plutôt que de planifier exhaustivement puis d''exécuter, l''agilité propose de travailler par cycles courts et itératifs : on livre rapidement une version partielle mais fonctionnelle du produit, on recueille un retour, on ajuste, et on recommence. La valeur n''est plus définie une fois pour toutes en amont, mais coconstruite progressivement avec les parties prenantes.

Ce renversement méthodologique s''accompagne d''un renversement des valeurs : la collaboration avec le client plutôt que la négociation contractuelle rigide d''un périmètre figé ; l''adaptation au changement plutôt que le suivi strict d''un plan ; les individus et leurs interactions plutôt que les seuls processus et outils. Ces valeurs, formalisées au début des années 2000 par un collectif de praticiens du développement logiciel, ont ensuite débordé largement le secteur informatique pour infuser la gestion de projets dans de nombreux autres secteurs.

Au plan théorique, ce courant s''appuie sur une lecture des organisations comme systèmes adaptatifs complexes : un projet y est vu non comme une machine qu''on peut entièrement spécifier à l''avance, mais comme un système vivant, où l''ordre émerge de l''interaction entre les acteurs plutôt que d''être imposé par un plan central. Cette lecture rejoint des travaux plus anciens en théorie des organisations sur l''improvisation organisée et la capacité des équipes à s''auto-organiser face à l''imprévu.

Les « soft skills » comme facteur de performance

Un pan important de la recherche comportementale s''est attaché à documenter empiriquement le rôle des compétences non techniques dans la réussite des projets : le style de leadership du chef de projet, la qualité de la communication, la gestion constructive des conflits, la confiance mutuelle entre membres de l''équipe. Plusieurs travaux ont montré, à travers études de cas et enquêtes, que ces dimensions expliquent une part significative de la réussite perçue des projets, parfois davantage que la sophistication des outils de planification utilisés.

Cette ligne de recherche a aussi nourri une réflexion sur la professionnalisation du métier de chef de projet au-delà de la seule maîtrise technique : savoir animer une équipe transversale et temporaire, négocier avec des parties prenantes aux intérêts divergents, maintenir la motivation d''une équipe en conditions d''incertitude.

Tensions et complémentarités avec l''approche rationnelle

Le rapport entre ce courant et l''approche rationnelle n''est pas une simple succession chronologique où l''un remplacerait l''autre. C''est un rapport de tension féconde, qui structure une bonne partie du débat théorique contemporain. D''un côté, les défenseurs de l''agilité soulignent que l''approche rationnelle échoue sur les projets complexes et incertains, et que vouloir tout planifier à l''avance y produit une illusion de maîtrise. De l''autre, les défenseurs d''une approche plus mesurée rappellent que l''agilité suppose des conditions précises (petites équipes, possibilité réelle d''itérer, client disponible pour donner des retours fréquents), non réunies dans tous les contextes, par exemple pour de grands projets d''infrastructure physique où l''on ne peut pas « livrer un pont à moitié ».

De ce débat est né un courant de recherche sur la contingence méthodologique : plutôt que d''opposer frontalement planification et agilité, on cherche à identifier les facteurs de contexte (taille du projet, degré d''incertitude, dispersion de l''équipe, secteur) qui rendent l''une ou l''autre approche plus pertinente, ou qui justifient des approches hybrides.

Limites et critiques des approches comportementales et agiles

Ce courant a lui aussi fait l''objet de critiques sérieuses. Certains chercheurs observent que les discours sur l''agilité ont parfois été adoptés de façon superficielle (on affiche un vocabulaire agile sans changer réellement les pratiques de gouvernance), ce qui produit un écart entre discours managérial et pratiques effectives. D''autres soulignent que la littérature sur les soft skills reste faiblement opérationnalisée : il est plus difficile de mesurer rigoureusement « la qualité du leadership » que « le respect d''un délai ». Enfin, l''application de l''agilité à des contextes très différents du développement logiciel d''origine reste un sujet de débat ouvert.

## Exercices pratiques

1. Expliquez en quoi le mouvement agile constitue une remise en cause, au moins partielle, des présupposés de l''approche rationnelle étudiée dans la leçon précédente.

2. Identifiez trois conditions de contexte qui rendent, selon la littérature, une approche agile particulièrement pertinente, et discutez un type de projet où ces conditions ne sont pas réunies.

3. Un jury vous demande : « Diriez-vous que l''agilité a remplacé l''approche rationnelle en gestion de projets, ou qu''elle l''a complétée ? » Construisez un plan de réponse nuancé en trois temps.

4. En quoi la critique de « l''agilité de façade » (adoption superficielle du vocabulaire agile sans changement réel des pratiques) illustre-t-elle une difficulté plus générale de la recherche en gestion, à savoir distinguer le discours managérial de la pratique effective ?

5. Comparez la manière dont l''approche rationnelle et l''approche comportementale/agile définissent chacune la notion de « risque » dans un projet. Quelles différences voyez-vous ?

6. Rédigez un court paragraphe (six à dix lignes) présentant, comme si vous en faisiez la synthèse pour un jury, le rapport de tension et de complémentarité entre les deux courants étudiés dans les leçons 2 et 3.

## Corrigé

1. L''approche rationnelle suppose qu''un projet peut être spécifié et planifié de façon exhaustive en amont, et que l''essentiel de la performance tient à la qualité de cette planification initiale. L''agilité remet en cause ce présupposé pour les projets à forte incertitude : elle affirme que les besoins réels ne peuvent être connus qu''au fil de l''eau, et propose donc de remplacer la planification exhaustive initiale par des cycles courts d''itération, de retour d''expérience et d''ajustement.

2. Trois conditions souvent citées : une équipe de taille réduite pouvant collaborer étroitement ; la possibilité de découper le produit en incréments livrables de façon autonome ; la disponibilité d''un client ou d''utilisateurs capables de donner des retours fréquents et informés. Un grand projet d''infrastructure physique (un barrage, une autoroute) réunit mal ces conditions : l''équipe est vaste et dispersée, l''ouvrage n''est pas véritablement livrable « par morceaux » utilisables séparément, et les utilisateurs finaux ne peuvent pas tester un incrément partiel de l''ouvrage avant son achèvement.

3. Plan possible : (a) rappeler que, historiquement, l''agilité s''est présentée comme une alternative, voire une critique frontale, du modèle séquentiel de planification ; (b) montrer que la recherche contemporaine, en particulier les travaux sur la contingence méthodologique, tend plutôt à montrer une complémentarité selon le contexte (incertitude, taille, secteur), avec des approches hybrides combinant éléments de planification et cycles itératifs ; (c) conclure que la question pertinente pour un chercheur n''est donc pas « laquelle des deux approches est la bonne », mais « dans quelles conditions chaque approche, ou quelle combinaison des deux, est-elle la plus adaptée ».

4. Cette critique illustre une difficulté méthodologique générale en sciences de gestion : les organisations adoptent souvent le vocabulaire de nouvelles pratiques managériales (ici l''agilité) sans nécessairement transformer en profondeur leurs modes de gouvernance, leurs structures de pouvoir ou leurs routines effectives. Un chercheur sérieux doit donc interroger les pratiques réelles observées sur le terrain, et non se fier seulement au discours ou aux labels utilisés par les organisations qu''il étudie.

5. L''approche rationnelle tend à définir le risque comme un événement identifiable et probabilisable, que l''on peut cartographier en amont et traiter par des plans de mitigation spécifiques (registre des risques, plans de contingence). L''approche comportementale et agile tend à voir l''incertitude comme plus fondamentale et moins réductible à une liste de risques identifiés à l''avance : elle mise davantage sur la capacité d''adaptation continue de l''équipe et sur des cycles courts qui permettent de détecter et de corriger les problèmes au fur et à mesure, plutôt que sur une anticipation exhaustive initiale.

6. Exemple de synthèse : l''approche rationnelle et l''approche comportementale et agile ne s''opposent pas de façon binaire ; elles répondent à des contextes de projet différents et mettent l''accent sur des leviers de performance différents, la planification structurée d''un côté, l''adaptation humaine et itérative de l''autre. La recherche contemporaine s''intéresse moins à départager les deux courants qu''à comprendre dans quelles conditions de contexte chacun est pertinent, et comment les combiner dans des approches hybrides adaptées à la nature réelle de chaque projet.', 'texte', 45, false, 30
from public.courses c where c.slug = 'doc-projet'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Débat théorique n°2 : approches comportementales et agilité organisationnelle');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Les méthodes de recherche en gestion de projets', 'Objectifs de la leçon

Après avoir étudié deux grands courants théoriques de la gestion de projets, cette leçon se concentre sur les méthodes de recherche propres à ce champ. Vous allez découvrir trois grandes familles de méthodes (quantitatives, qualitatives, mixtes), leurs usages respectifs, et un exemple complet de protocole de recherche appliqué à un contexte sénégalais fictif, que vous pourrez adapter à votre propre projet de thèse.

Pourquoi la méthodologie de recherche est un enjeu central en gestion de projets

La gestion de projets étudie des phénomènes temporellement bornés, socialement complexes et souvent uniques dans leurs détails. Cette combinaison pose un défi méthodologique : comment produire des connaissances généralisables à partir de phénomènes aussi singuliers ? C''est pour répondre à ce défi que le champ a développé, ou emprunté à des disciplines voisines, un éventail de méthodes que tout doctorant doit savoir situer et discuter.

Les méthodes quantitatives

Les méthodes quantitatives reposent le plus souvent sur des enquêtes par questionnaire menées auprès de larges échantillons de chefs de projet, suivies d''analyses statistiques. Elles permettent de tester des hypothèses sur les relations entre variables : par exemple entre le style de leadership et la performance perçue du projet, ou entre la maturité organisationnelle (voir plus loin) et le taux de réussite des projets.

L''atout principal des méthodes quantitatives est leur capacité à produire des résultats généralisables, à condition d''un échantillon représentatif et de taille adéquate. Leur limite est qu''elles peinent à restituer la richesse contextuelle et processuelle d''un projet réel : un questionnaire capture un instantané de perceptions déclarées, mais explique mal pourquoi et comment un projet a dérivé ou réussi.

Les méthodes qualitatives : l''étude de cas longitudinale

La méthode qualitative la plus caractéristique du champ est l''étude de cas longitudinale. Elle consiste à suivre un ou plusieurs projets réels sur la durée, souvent depuis leur lancement jusqu''à leur clôture, en combinant entretiens répétés, observation de réunions de pilotage et analyse de documents internes.

L''intérêt de cette méthode est qu''elle permet de saisir la dynamique temporelle du projet : comment une décision prise à une étape affecte les étapes suivantes, comment un projet peut dériver progressivement sans qu''aucun événement isolé ne l''explique à lui seul. Elle est particulièrement adaptée pour étudier les phénomènes du courant comportemental et agile, mais aussi pour documenter les dérives de coûts et de délais étudiées par le courant rationnel.

Sa principale limite est la difficulté de généraliser ses résultats au-delà du ou des cas étudiés. La rigueur méthodologique exige alors une explicitation précise des critères de sélection des cas, une triangulation systématique des sources, et une discussion honnête des limites de transférabilité.

La recherche-action

La recherche-action est une autre méthode qualitative très présente en gestion de projets, en particulier chez les chercheurs ayant une pratique professionnelle du champ. Elle se distingue de l''étude de cas par la posture du chercheur : plutôt que d''observer de l''extérieur, il intervient directement dans le projet étudié (comme consultant ou facilitateur), tout en documentant systématiquement cette intervention et ses effets.

Cette posture permet d''étudier des phénomènes difficiles à observer de l''extérieur (résistances au changement, dynamiques de pouvoir), et de produire une connaissance directement utile aux praticiens. Sa difficulté centrale est de maintenir une distance critique suffisante malgré l''implication du chercheur, qui doit documenter ses propres interventions avec la même rigueur qu''un phénomène observé de l''extérieur.

Les enquêtes de maturité organisationnelle en gestion de projet

Une troisième famille de méthodes, à la frontière du quantitatif et du qualitatif, concerne les enquêtes sur la maturité organisationnelle en gestion de projet. L''idée repose sur un présupposé : les organisations ne sont pas toutes au même niveau de structuration de leurs pratiques, et ce niveau influencerait la performance globale de leur portefeuille de projets. Les chercheurs mobilisent des grilles d''évaluation (processus formalisés, outils communs, soutien de la direction), administrées auprès d''organisations et souvent complétées par des entretiens.

Cette méthode permet de comparer des organisations entre elles, mais elle est critiquée pour son présupposé implicite qu''une maturité plus élevée serait toujours souhaitable, ce qui entre en tension avec les enseignements du courant agile sur l''intérêt de structures plus légères dans certains contextes.

Les méthodes mixtes

Face aux limites respectives des approches quantitatives et qualitatives, une part croissante de la recherche combine les deux dans des designs mixtes : une enquête quantitative à grande échelle pour identifier des régularités statistiques, suivie d''études de cas qualitatives approfondies sur un sous-ensemble de situations pour comprendre les mécanismes. Cette combinaison permet de bénéficier à la fois de la généralisabilité du quantitatif et de la richesse explicative du qualitatif, au prix d''une complexité accrue.

Exemple de protocole de recherche appliqué à un contexte sénégalais fictif

Pour illustrer concrètement ces choix, prenons un protocole de recherche fictif, construit pour les besoins de cette leçon. Une doctorante souhaite étudier : « Comment les équipes de projet des petites et moyennes entreprises technologiques dakaroises s''approprient-elles des pratiques agiles importées, et quels facteurs organisationnels favorisent ou freinent cette appropriation ? »

Un protocole mixte en trois temps. Premier temps, une enquête quantitative exploratoire auprès de chefs de projet d''entreprises technologiques de la région de Dakar, mesurant le degré déclaré d''adoption de pratiques agiles et ses corrélations avec la taille de l''entreprise, l''ancienneté de l''équipe ou la formation préalable. Deuxième temps, la sélection de trois à quatre études de cas longitudinales contrastées (adoption réussie, superficielle, abandonnée), suivies sur plusieurs mois par entretiens répétés, observation de réunions de pilotage et analyse de documents, pour comprendre les mécanismes d''appropriation ou de résistance. Troisième temps, une synthèse croisant résultats quantitatifs et qualitatifs, construisant une typologie des modes d''appropriation.

Ce protocole fictif illustre des principes transférables à de nombreux sujets de thèse : l''articulation entre exploration à large échelle et explication en profondeur ; l''attention au contexte local, dont les contraintes diffèrent de celles des grandes entreprises occidentales étudiées dans la littérature fondatrice sur l''agilité ; et la nécessité de justifier explicitement pourquoi le protocole choisi convient à votre question précise, plutôt que de choisir une méthode par habitude.

## Exercices pratiques

1. Pour un sujet de thèse que vous envisagez (ou un sujet fictif proche de votre champ), identifiez si une approche quantitative, qualitative ou mixte serait la plus pertinente, et justifiez votre choix en trois arguments.

2. Expliquez la différence méthodologique centrale entre l''étude de cas longitudinale et la recherche-action, en particulier sur la posture du chercheur vis-à-vis du terrain étudié.

3. Un jury vous demande : « Quelle est la principale limite de l''étude de cas longitudinale, et comment peut-on l''atténuer sans y renoncer ? » Rédigez une réponse structurée.

4. Discutez la critique adressée aux enquêtes de maturité organisationnelle, selon laquelle elles présupposeraient qu''une structuration plus poussée des processus de gestion de projet serait toujours préférable. Cette critique vous semble-t-elle fondée ?

5. En reprenant l''exemple de protocole sénégalais fictif présenté dans cette leçon, proposez une variante : que changerait votre protocole si la question de recherche portait, non plus sur les petites et moyennes entreprises technologiques, mais sur de grands projets publics d''infrastructure au Sénégal ?

6. Pourquoi la combinaison de méthodes quantitatives et qualitatives (méthodes mixtes) est-elle particulièrement adaptée à l''étude des phénomènes complexes et situés que sont les projets ?

## Corrigé

1. La réponse est nécessairement personnelle, mais une bonne argumentation doit mobiliser trois types de critères : la nature de la question de recherche (explicative/mécanistique, plutôt qualitative, ou relationnelle/généralisable, plutôt quantitative) ; l''accès au terrain (un accès limité à quelques organisations oriente vers l''étude de cas, un accès à un grand nombre de répondants rend l''enquête quantitative possible) ; l''état de la littérature existante (un champ encore peu documenté empiriquement justifie une approche exploratoire qualitative, un champ où des hypothèses sont déjà bien formulées justifie un test quantitatif).

2. Dans l''étude de cas longitudinale, le chercheur observe et documente un projet de l''extérieur, sans intervenir sur son déroulement. Dans la recherche-action, le chercheur intervient directement dans le projet (comme consultant, facilitateur ou accompagnateur), et documente à la fois le déroulement du projet et les effets de sa propre intervention, ce qui pose un enjeu spécifique de distance critique et de réflexivité sur son propre rôle.

3. La principale limite est la faible généralisabilité des résultats au-delà du ou des cas étudiés. On peut l''atténuer, sans y renoncer, par une sélection raisonnée des cas (contrastés, pour couvrir une diversité de situations), une triangulation rigoureuse des sources, et une discussion honnête des conditions de transférabilité.

4. La critique est partiellement fondée : les grilles de maturité organisationnelle ont souvent été conçues dans une logique de standardisation des processus, proche de l''approche rationnelle de la gestion de projet, et peuvent sous-estimer la valeur de structures plus légères et adaptatives mises en avant par le courant agile. Une réponse nuancée consisterait à dire que la notion de maturité reste utile si elle est enrichie pour inclure, parmi les critères de maturité, la capacité d''une organisation à adapter son niveau de formalisation au contexte de chaque projet, plutôt que de viser uniformément « plus de processus ».

5. Pour de grands projets publics d''infrastructure, l''enquête quantitative porterait sur un nombre plus restreint de projets, rendant une approche essentiellement qualitative plus adaptée dès le départ ; les études de cas devraient intégrer davantage d''acteurs institutionnels (autorités publiques, bailleurs), avec une attention accrue aux dynamiques de gouvernance publique, moins présentes dans l''exemple initial.

6. Parce que les projets combinent des régularités observables à grande échelle (types de pratiques adoptées, facteurs de contexte associés statistiquement à la réussite) et des mécanismes fins, situés et souvent non linéaires (comment, concrètement, une équipe s''approprie ou résiste à une pratique nouvelle), que seule une approche qualitative approfondie permet de restituer. Les méthodes mixtes permettent de documenter les deux niveaux dans une même recherche, en articulant explicitement leurs résultats respectifs plutôt qu''en les juxtaposant.', 'texte', 45, false, 40
from public.courses c where c.slug = 'doc-projet'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Les méthodes de recherche en gestion de projets');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Épreuve type d''examen de qualification : mesurer le succès d''un projet', 'Objectifs de la leçon

Cette cinquième leçon propose un exercice complet de type « épreuve d''examen de qualification » : une question de synthèse typique, non officielle mais représentative du genre d''épreuve rencontrée dans les programmes doctoraux, suivie d''un plan de réponse détaillé et corrigé. Cette question mobilise volontairement les deux courants étudiés dans les leçons 2 et 3, ainsi qu''une méthode de recherche étudiée dans la leçon 4, pour vous montrer comment construire une réponse de niveau doctoral, structurée et critique.

La question type

Voici l''énoncé, construit à des fins pédagogiques pour ce cours, et représentatif du type de question qu''un jury pourrait poser à l''écrit comme à l''oral : « Dans quelle mesure le débat entre l''approche rationnelle et planificatrice de la gestion de projet et les approches comportementales et agiles reflète-t-il, plus largement, deux conceptions concurrentes de la mesure du succès d''un projet ? Vous illustrerez votre propos en indiquant comment une recherche empirique pourrait être conçue pour étudier cette question dans un contexte organisationnel précis. »

Cette question est typique de l''examen de qualification car elle ne demande pas de restituer un cours, mais de construire un raisonnement original en reliant plusieurs éléments de littérature, et de montrer que vous savez traduire un débat théorique en question de recherche empirique.

Méthode pour construire le plan de réponse

Avant de rédiger un plan de réponse, il faut décortiquer la question elle-même. Trois opérations indispensables. Premièrement, repérer les concepts clés mobilisés : ici, « approche rationnelle », « approches comportementales et agiles », « mesure du succès ». Deuxièmement, repérer la relation logique demandée : la question demande de relier le débat théorique à un débat plus large sur le succès, ce qui suggère un plan en deux mouvements. Troisièmement, repérer ce que la question demande en plus de la théorie : ici, un protocole de recherche empirique, donc des connaissances méthodologiques.

Un plan de niveau doctoral doit éviter deux écueils : le plan purement descriptif, qui résume les deux courants sans répondre à la question posée ; et le plan qui oublie la dimension méthodologique explicitement demandée.

Plan de réponse détaillé

Introduction. On rappelle que l''examen de qualification valorise une introduction qui pose clairement le problème, annonce le plan, et montre d''emblée que vous avez compris l''articulation entre les deux volets de la question (théorique et méthodologique). Par exemple : « Le débat entre l''approche rationnelle et les approches comportementales et agiles de la gestion de projet n''est pas qu''un débat sur les méthodes de pilotage : il reflète deux définitions concurrentes du succès d''un projet, l''une centrée sur le respect de contraintes contractuelles, l''autre sur la création de valeur pour l''ensemble des parties prenantes. Nous montrerons d''abord ce lien conceptuel, avant de proposer un protocole de recherche permettant de l''étudier empiriquement dans un contexte organisationnel donné. »

Première partie : le lien entre les deux courants et deux conceptions du succès. L''approche rationnelle, en définissant le succès par le triangle coût-délai-qualité, privilégie une vision du projet comme engagement contractuel à honorer : le succès se mesure par la conformité du résultat livré aux contraintes initiales. À l''inverse, les approches comportementales et agiles, en insistant sur l''adaptation continue aux besoins réels des utilisateurs, tendent à définir le succès de façon plus large : non plus la conformité à un plan initial, mais la création effective de valeur perçue par les parties prenantes, même si le résultat diffère du plan de départ. On peut mobiliser ici la distinction, bien documentée dans la littérature du champ, entre le « succès de la gestion du projet » (sens étroit du triangle) et le « succès du projet » (sens large de la valeur et de la satisfaction des parties prenantes sur le moyen et long terme) : ces deux dimensions peuvent diverger, un projet pouvant être un succès de gestion tout en étant un échec de valeur, et inversement.

Deuxième partie : traduire ce débat en protocole de recherche empirique, en reprenant les enseignements de la leçon 4. Par exemple une étude de cas longitudinale menée sur deux ou trois projets d''une même organisation, suivis depuis leur lancement jusqu''à un moment postérieur à leur clôture, afin de documenter à la fois les indicateurs classiques de succès de gestion (budget, délais, périmètre) et des indicateurs de succès de valeur recueillis plus tard (usage effectif, satisfaction des utilisateurs, effets non anticipés). L''étude de cas longitudinale est particulièrement adaptée car elle seule permet d''observer dans la durée l''éventuel écart entre un succès de gestion mesurable rapidement et un succès de valeur qui ne s''évalue que plus tard. On peut enrichir ce protocole d''un volet quantitatif complémentaire, illustrant la pertinence d''un design mixte.

Conclusion. Ce débat sur la mesure du succès n''oppose pas simplement deux écoles théoriques, mais révèle un enjeu pratique majeur : les instances de gouvernance d''un projet évaluent souvent sa performance à la clôture, avec des indicateurs proches du triangle coût-délai-qualité, alors que la valeur réelle créée ou détruite ne se révèle parfois que bien plus tard. En guise d''ouverture, cette tension nourrit des travaux contemporains sur l''alignement, ou le désalignement, entre critères d''évaluation à court terme et effets de long terme sur les parties prenantes.

Ce qu''un jury valoriserait dans cette réponse

Un jury appréciant cette réponse noterait : la capacité à relier explicitement les deux courants à travers le prisme de la question posée ; la mobilisation précise de la distinction entre succès de gestion et succès de valeur, qui montre une connaissance fine du débat et non une opposition caricaturale ; la capacité à proposer un protocole concret et justifié ; et une conclusion qui ouvre vers un enjeu plus large sans digression.

À l''inverse, un jury pénaliserait une réponse qui résumerait successivement les deux courants sans établir le lien demandé, ou qui développerait longuement la théorie en oubliant la demande explicite de protocole.

## Exercices pratiques

1. Reformulez, en une phrase, la thèse centrale que défend le plan de réponse proposé dans cette leçon.

2. Identifiez, dans le plan détaillé, le moment précis où l''exigence méthodologique de la question (proposer un protocole de recherche) est traitée, et évaluez si cela vous semble suffisamment développé pour un oral de quinze minutes.

3. Imaginez une question alternative, construite sur le même modèle, qui relierait cette fois le débat entre approche rationnelle et approche agile à la question de la gestion des risques en projet plutôt qu''à la mesure du succès. Esquissez un plan en trois points.

4. Un membre du jury vous objecte : « Votre distinction entre succès de gestion et succès de valeur n''est-elle pas simplement une reformulation du triangle coût-délai-qualité ? » Préparez une réponse qui clarifie la différence.

5. Rédigez vous-même une introduction alternative (cinq à sept lignes) pour la question type de cette leçon, différente de celle proposée, mais tout aussi recevable sur le plan de la méthode.

6. En vous inspirant du plan de cette leçon, construisez l''ébauche d''un plan de réponse pour une question qui porterait sur votre propre sujet de thèse, en veillant à mobiliser à la fois un débat théorique et une proposition méthodologique.

## Corrigé

1. Thèse centrale : le débat entre approche rationnelle et approches comportementales et agiles de la gestion de projet n''est pas qu''une question d''outils ou de méthodes de pilotage, mais reflète deux conceptions différentes de ce qu''est le succès d''un projet, l''une centrée sur la conformité à des contraintes initiales, l''autre sur la création de valeur réelle et durable pour les parties prenantes.

2. L''exigence méthodologique est traitée dans la deuxième partie du plan, où un protocole d''étude de cas longitudinale, éventuellement complété d''un volet quantitatif, est proposé et justifié. Pour un oral de quinze minutes, ce développement devrait être resserré à l''essentiel (le choix de la méthode et sa justification en deux ou trois phrases), le détail complet étant réservé aux réponses aux questions du jury si celui-ci demande des précisions.

3. Plan possible : (a) montrer que l''approche rationnelle traite le risque comme un ensemble d''événements identifiables et probabilisables, gérés par anticipation (registres de risques, plans de mitigation) ; (b) montrer que l''approche agile traite l''incertitude comme plus fondamentale, gérée non par anticipation exhaustive mais par des cycles courts permettant de détecter et corriger rapidement les problèmes ; (c) proposer un protocole de recherche, par exemple une étude de cas comparant la gestion effective des aléas dans un projet piloté de façon classique et un projet piloté de façon agile, pour documenter empiriquement comment chaque approche traite réellement l''incertitude en pratique.

4. Une bonne réponse distingue clairement les deux notions : le triangle coût-délai-qualité est un ensemble de critères mesurables à la clôture formelle du projet, par rapport à des engagements initiaux. La distinction entre succès de gestion et succès de valeur ajoute une dimension temporelle et relationnelle : le succès de valeur s''évalue après la clôture du projet, dans l''usage réel, et porte sur la satisfaction et les bénéfices perçus par l''ensemble des parties prenantes, y compris des bénéfices non anticipés dans les spécifications initiales. Le triangle coût-délai-qualité est donc un sous-ensemble, à court terme, d''une évaluation plus large du succès.

5. Exemple d''introduction alternative recevable : « Si l''on résume souvent l''opposition entre gestion de projet classique et agilité à une question de méthode (planifier en amont ou s''adapter en continu), cette opposition recouvre en réalité un désaccord plus profond sur ce que signifie réussir un projet. Nous montrerons que ce désaccord théorique peut être étudié empiriquement, à condition de choisir une méthode de recherche capable de suivre un projet au-delà de sa seule clôture formelle. »

6. L''ébauche doit, comme le modèle de cette leçon, comporter au moins trois éléments : un lien explicite entre un débat théorique du champ et la question posée (pas seulement une description séparée de chaque courant) ; une proposition méthodologique concrète et justifiée, cohérente avec la leçon 4 ; et une conclusion qui ouvre vers un enjeu pratique ou théorique plus large, en lien si possible avec votre propre projet doctoral.', 'texte', 45, false, 50
from public.courses c where c.slug = 'doc-projet'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Épreuve type d''examen de qualification : mesurer le succès d''un projet');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : L''approche rationnelle et planificatrice de la gestion de projet', '## Fiche du cours vidéo

Titre : L''approche rationnelle et planificatrice de la gestion de projet, fondements, jalons et critiques.
Durée : 1h30.
Objectifs : approfondir, en mode cours filmé, le premier grand courant théorique de la gestion de projets vu en leçon 2, savoir le présenter à l''oral devant un jury, et être capable de défendre ses apports tout en reconnaissant ses limites.
Matériel conseillé : tableau ou diaporama avec le schéma du triangle coût-délai-qualité, un exemple de structure de découpage de projet (WBS), une frise chronologique des jalons historiques.
Prérequis : avoir lu la leçon 2 de ce cours (texte).

## Déroulé minuté

## 00:00 – 05:00 · Introduction et mise en contexte

Bonjour à toutes et à tous. Dans cette séance, nous allons approfondir le premier des deux grands courants théoriques que vous devez maîtriser pour votre examen de qualification en gestion de projets : l''approche rationnelle et planificatrice, que l''on appelle parfois l''approche classique du cycle de vie, ou encore l''approche des « hard skills » par opposition aux compétences comportementales que nous verrons dans la prochaine vidéo.

L''objectif de cette heure trente n''est pas de vous refaire un cours magistral que vous avez déjà lu dans la leçon correspondante, mais de vous entraîner à en parler comme un chercheur le ferait devant un jury : avec précision, avec esprit critique, et en étant capable de répondre à des objections. Je vais donc alterner exposé, questions que je vous invite à vous poser à voix haute, et un quiz à mi-séance.

## 05:00 – 20:00 · Les présupposés fondamentaux de l''approche rationnelle

Commençons par le cœur théorique de cette approche. L''idée centrale est que le projet est un système d''actions complexe, mais fondamentalement maîtrisable par la planification. Regardez le schéma du triangle à l''écran : coût, délai, qualité ou périmètre. Ce triangle n''est pas qu''un outil pédagogique, c''est une proposition théorique forte : elle affirme que le succès d''un projet se définit par la conformité du résultat à des contraintes fixées en amont, et que ces trois contraintes s''équilibrent nécessairement entre elles.

Pourquoi est-ce une proposition théorique, et pas seulement un outil pratique ? Parce qu''elle suppose implicitement trois choses : premièrement, que l''on peut connaître à l''avance, avec un niveau de détail suffisant, ce que le projet doit produire ; deuxièmement, que l''incertitude du projet se réduit principalement par un effort de planification ; troisièmement, que le succès se mesure par rapport à un référentiel fixé au départ, et non par rapport à un jugement porté après coup sur l''utilité réelle du résultat. Posez-vous la question suivante, et nous en discuterons dans quelques minutes : dans quel type de projet ces trois hypothèses vous semblent-elles les plus solides, et dans quel type de projet vous semblent-elles les plus fragiles ?

Je vous propose maintenant de détailler les outils qui découlent de ces présupposés. La structure de découpage du projet, le WBS, décompose le projet en lots de travail de plus en plus fins, jusqu''à obtenir des tâches élémentaires que l''on peut planifier et contrôler individuellement. Les techniques de réseau, comme la méthode du chemin critique, permettent ensuite d''ordonner ces tâches dans le temps en tenant compte de leurs dépendances, et d''identifier la séquence de tâches qui déterminent la durée totale minimale du projet : c''est le chemin critique, celui sur lequel tout retard se répercute directement sur la date de fin du projet.

## 20:00 – 35:00 · Jalons historiques et professionnalisation du champ

Reprenons maintenant la généalogie historique de cette approche, qui est un point que les jurys aiment souvent vérifier : savez-vous situer les idées dans le temps, pas seulement les citer dans l''absolu ?

Les racines de l''approche rationnelle se trouvent dans l''ingénierie industrielle et militaire du milieu du vingtième siècle. Les grands programmes de défense et les chantiers d''infrastructure de cette époque ont été les premiers terrains à grande échelle où il a fallu coordonner des milliers d''intervenants sur des délais contraints, avec des moyens de calcul encore limités. C''est dans ce contexte qu''ont émergé les techniques de réseau comme le chemin critique et les méthodes d''évaluation probabiliste de la durée des tâches.

Dans les décennies suivantes, ces techniques se sont diffusées bien au-delà du secteur de la défense, portées par un mouvement de professionnalisation du métier de chef de projet : apparition d''associations professionnelles dédiées, élaboration de corpus de connaissances partagés, diffusion de certifications. Ce mouvement a eu un effet structurant majeur : il a transformé un ensemble de techniques d''ingénierie en un référentiel de gestion générique, applicable en théorie à tous les secteurs, de la construction à l''informatique en passant par les services.

Retenez bien cette idée pour votre oral : quand un jury vous demande pourquoi l''approche rationnelle s''est imposée comme référentiel dominant pendant plusieurs décennies, la réponse ne tient pas seulement à la qualité intrinsèque des outils, mais aussi à ce travail d''institutionnalisation professionnelle qui en a fait un langage commun, enseigné, certifié et reconnu internationalement.

## 35:00 – 45:00 · Quiz interactif à mi-séance

Nous arrivons à la pause quiz. Prenez quelques instants pour répondre, sur une feuille ou mentalement, aux questions suivantes, avant que je ne donne les réponses commentées.

Question 1 : L''approche rationnelle suppose-t-elle que l''incertitude d''un projet est principalement réduite par la planification, ou par l''adaptation continue en cours de projet ?
Question 2 : Le chemin critique désigne-t-il la séquence de tâches la plus coûteuse du projet, ou la séquence de tâches dont tout retard retarde l''ensemble du projet ?
Question 3 : Les techniques de réseau comme le chemin critique sont-elles nées d''abord dans le secteur des services, ou dans l''ingénierie et la défense ?
Question 4 : La professionnalisation du métier de chef de projet (associations, certifications) a-t-elle plutôt renforcé, ou plutôt affaibli, la diffusion de l''approche rationnelle ?

Réponses commentées : pour la question 1, c''est bien la planification qui est au cœur de l''approche rationnelle ; l''adaptation continue est au contraire la marque du courant comportemental et agile que nous verrons dans la vidéo suivante. Pour la question 2, le chemin critique désigne la séquence de tâches dont le retard se répercute directement sur la date de fin du projet, pas nécessairement la plus coûteuse. Pour la question 3, les techniques de réseau sont nées dans l''ingénierie et la défense, avant de se diffuser vers les autres secteurs. Pour la question 4, la professionnalisation a clairement renforcé la diffusion de cette approche, en la transformant en référentiel partagé, enseigné et certifié.

## 45:00 – 60:00 · Les apports durables de l''approche rationnelle

Reprenons maintenant l''exposé avec les apports durables de ce courant, un point sur lequel un jury vous interrogera souvent en vous demandant de ne pas caricaturer l''approche rationnelle comme simplement dépassée. Quatre apports méritent d''être défendus avec conviction si le jury vous pousse sur ce terrain.

D''abord, la décomposition structurée du travail, qui force à clarifier le périmètre d''un projet avant de s''y engager : c''est un exercice de clarification intellectuelle précieux, indépendamment de la rigidité qu''on peut ensuite lui reprocher. Ensuite, les outils de planification et d''ordonnancement, indispensables dès qu''un projet mobilise de nombreuses tâches interdépendantes, quel que soit par ailleurs le degré d''agilité de l''organisation. Ensuite encore, la discipline budgétaire et le suivi des écarts, qui permettent de détecter tôt une dérive, y compris dans des projets pilotés de façon largement agile. Enfin, le vocabulaire commun qu''elle a imposé, qui facilite la communication entre des acteurs très divers d''un même projet, du maître d''ouvrage à l''exécutant.

Un bon réflexe à l''oral : quand vous présentez les limites d''un courant, n''oubliez jamais de rappeler d''abord explicitement ce qu''il a durablement apporté. Cela montre au jury que votre critique est nuancée et argumentée, et non une simple récitation d''objections à la mode.

## 60:00 – 75:00 · Les limites et critiques, et le lien avec le débat sur le succès

Passons maintenant aux limites, que vous connaissez déjà par la leçon 2, mais que nous allons relier explicitement au grand débat sur la mesure du succès d''un projet, qui traverse tout ce cours.

Première limite, l''hypothèse d''une planification exhaustive en amont se heurte à la réalité des projets à forte innovation, où les besoins évoluent en cours de route. Deuxième limite, l''approche rationnelle sous-estime la dimension humaine et politique du projet : les jeux de pouvoir entre parties prenantes influencent souvent davantage la trajectoire réelle du projet que la qualité du planning initial. Troisième limite, et c''est le point le plus important pour la suite de notre cours, le triangle coût-délai-qualité a été critiqué comme un indicateur de succès trop étroit : un projet peut parfaitement respecter son budget et son calendrier tout en étant, in fine, un échec si le produit livré ne répond pas aux besoins réels des utilisateurs.

C''est précisément cette troisième limite qui ouvre la porte au débat sur le succès de gestion versus succès de valeur que nous retrouverons dans la vidéo 9, consacrée à l''épreuve type d''examen. Gardez ce fil en tête : les courants théoriques de ce cours ne sont pas des blocs isolés, ils se répondent les uns aux autres sur des questions précises, et le jury appréciera que vous montriez ces connexions plutôt que de présenter chaque courant comme une case étanche.

Quatrième limite, plus empirique : la recherche a documenté des dépassements de coûts et de délais récurrents sur de grands projets, ce qui a nourri des travaux sur les biais cognitifs des décideurs (sous-estimation systématique des coûts et délais au moment de la décision) et sur les mécanismes politiques qui conduisent à lancer des projets dont le dépassement était prévisible.

## 75:00 – 85:00 · Synthèse et préparation à l''oral de qualification

Pour synthétiser cette heure trente, rappelons les trois messages clés à maîtriser pour votre oral. Premièrement, l''approche rationnelle n''est pas une simple boîte à outils : elle repose sur des présupposés théoriques explicites sur la nature du projet et sur la définition du succès. Deuxièmement, elle a été consolidée historiquement par un mouvement de professionnalisation qui en a fait un référentiel dominant, et cette histoire est elle-même un objet d''analyse pour un chercheur en gestion de projets. Troisièmement, ses limites ne sont pas univoques : elles touchent à la fois la faisabilité pratique de la planification exhaustive, la dimension humaine négligée, et la définition même du succès, ce qui ouvre directement sur le courant suivant.

Entraînez-vous maintenant à l''exercice suivant, à voix haute, comme si un membre du jury vous interrompait : « Vous me dites que cette approche est datée, mais alors pourquoi continue-t-on à l''enseigner et à la certifier massivement aujourd''hui ? » Préparez une réponse en trente secondes avant de continuer la vidéo.

Une bonne réponse pourrait être : parce qu''elle reste pertinente pour une large catégorie de projets à périmètre stable et à faible incertitude, parce qu''elle fournit un socle d''outils et de vocabulaire indispensable même dans des contextes plus agiles, et parce que le débat contemporain n''oppose pas « cette approche contre son abandon », mais cherche plutôt à identifier dans quelles conditions de contexte elle reste la plus pertinente, par contraste avec les approches comportementales et agiles.

## 85:00 – 90:00 · Évaluation finale

Pour clore cette séance, voici cinq questions d''évaluation, avec leurs réponses.

Question 1 : Quels sont les trois sommets du triangle classique utilisé pour définir le succès d''un projet dans l''approche rationnelle ? Réponse : le coût, le délai et la qualité ou le périmètre technique.

Question 2 : Dans quel secteur d''origine les techniques de réseau comme le chemin critique se sont-elles développées avant de se diffuser plus largement ? Réponse : l''ingénierie et la défense, dans les grands programmes du milieu du vingtième siècle.

Question 3 : Citez deux limites majeures adressées à l''approche rationnelle. Réponse : la difficulté à planifier exhaustivement des projets à forte incertitude, et la sous-estimation de la dimension humaine et politique du projet (on pouvait aussi citer la définition trop étroite du succès, ou les biais cognitifs des décideurs).

Question 4 : Quel rôle a joué la professionnalisation du métier de chef de projet dans la diffusion de l''approche rationnelle ? Réponse : elle a transformé un ensemble de techniques d''ingénierie en référentiel partagé, enseigné et certifié à grande échelle, consolidant sa position dominante.

Question 5 : En quoi la critique de la définition du succès par le seul triangle coût-délai-qualité annonce-t-elle le débat traité dans la vidéo 9 de ce cours ? Réponse : elle ouvre la distinction, développée dans l''épreuve type, entre un succès de gestion mesuré à la clôture du projet et un succès de valeur évalué dans la durée, du point de vue des parties prenantes.', 'video', 90, false, 60
from public.courses c where c.slug = 'doc-projet'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : L''approche rationnelle et planificatrice de la gestion de projet');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Approches comportementales et agilité organisationnelle', '## Fiche du cours vidéo

Titre : Approches comportementales et agilité organisationnelle en gestion de projet.
Durée : 1h30.
Objectifs : approfondir le second grand courant théorique vu en leçon 3, savoir argumenter sur la tension entre planification et agilité devant un jury, et être capable de proposer des conditions de contingence entre les deux approches.
Matériel conseillé : tableau ou diaporama avec le cycle itératif agile, un schéma comparatif des valeurs de l''agilité face aux présupposés de l''approche rationnelle.
Prérequis : avoir lu les leçons 2 et 3 de ce cours, et visionné la vidéo précédente.

## Déroulé minuté

## 00:00 – 05:00 · Introduction et lien avec la vidéo précédente

Bonjour à toutes et à tous. Dans la vidéo précédente, nous avons vu l''approche rationnelle et planificatrice, et nous avons terminé sur ses limites, en particulier sa définition étroite du succès et sa sous-estimation de la dimension humaine du projet. Cette séance part précisément de ce point de bascule pour construire le second grand courant de votre examen de qualification : les approches comportementales et l''agilité organisationnelle.

Je vous propose de garder, tout au long de cette heure trente, une question en tête : ce courant remplace-t-il le précédent, ou le complète-t-il ? C''est une question que les jurys adorent poser, et nous y répondrons de façon argumentée en fin de séance.

## 05:00 – 20:00 · Le diagnostic de départ de l''agilité

Commençons par le diagnostic qui fonde le mouvement agile. Dans de nombreux projets, en particulier ceux à forte composante d''innovation ou de développement logiciel, il est illusoire de vouloir figer un périmètre détaillé en début de projet, parce que les besoins réels ne sont découverts que progressivement, au contact des utilisateurs. Regardez le schéma à l''écran : plutôt que la séquence linéaire planification puis exécution, l''agilité propose un cycle court et répété : on construit un incrément, on le livre, on recueille un retour, on ajuste, on recommence.

Posez-vous la question suivante avant que je poursuive : si la valeur n''est plus définie une fois pour toutes en amont mais coconstruite progressivement, qu''est-ce que cela implique pour la manière de contractualiser un projet avec un client ou un maître d''ouvrage ? Nous y reviendrons un peu plus tard dans la séance.

Ce renversement méthodologique s''accompagne d''un renversement de valeurs : la collaboration plutôt que la négociation contractuelle rigide d''un périmètre figé ; l''adaptation au changement plutôt que le suivi strict d''un plan ; les individus et leurs interactions plutôt que les seuls processus et outils. Ces valeurs, nées initialement dans le développement logiciel à la fin des années 1990 et au début des années 2000, ont ensuite débordé largement ce secteur d''origine pour infuser de nombreux autres champs de la gestion de projets.

## 20:00 – 35:00 · La complexité, les systèmes adaptatifs et les soft skills

Allons maintenant un peu plus loin dans les fondements théoriques. Le mouvement agile s''appuie sur une lecture des organisations comme systèmes adaptatifs complexes : le projet n''y est plus vu comme une machine entièrement spécifiable à l''avance, mais comme un système vivant, où la solution émerge de l''interaction entre les acteurs plutôt que d''être imposée par un plan central. Cette lecture rejoint des travaux plus anciens en théorie des organisations sur l''improvisation organisée et la capacité des équipes à s''auto-organiser face à l''imprévu.

Un deuxième pilier théorique de ce courant concerne les compétences dites non techniques, les fameuses soft skills : le style de leadership du chef de projet, la qualité de la communication, la gestion constructive des conflits, la confiance mutuelle entre membres de l''équipe. Plusieurs recherches empiriques ont montré que ces dimensions comportementales expliquent une part significative de la réussite perçue des projets, parfois davantage que la sophistication des outils de planification utilisés.

Je vous invite à noter ce point précis, car il revient souvent en question de jury : pourquoi est-il plus difficile de mesurer rigoureusement la qualité du leadership que le respect d''un délai ? Réfléchissez-y, nous y reviendrons dans la partie sur les limites de ce courant.

## 35:00 – 45:00 · Quiz interactif à mi-séance

Pause quiz. Répondez mentalement ou par écrit avant d''entendre les réponses commentées.

Question 1 : Le mouvement agile propose-t-il de planifier exhaustivement en amont, ou de travailler par cycles courts et itératifs avec retours fréquents ?
Question 2 : La lecture des organisations comme systèmes adaptatifs complexes considère-t-elle que l''ordre du projet est imposé par un plan central, ou qu''il émerge de l''interaction entre les acteurs ?
Question 3 : Citez deux exemples de « soft skills » étudiées par la recherche comme facteurs de performance des projets.
Question 4 : L''agilité est-elle née d''abord dans le secteur du développement logiciel, ou dans celui de la construction d''infrastructures ?

Réponses commentées : pour la question 1, le mouvement agile propose des cycles courts et itératifs, avec des retours fréquents des utilisateurs, plutôt qu''une planification exhaustive en amont. Pour la question 2, cette lecture considère que l''ordre émerge de l''interaction entre les acteurs, et non d''un plan central entièrement défini à l''avance. Pour la question 3, on peut citer le style de leadership, la qualité de la communication, la gestion constructive des conflits, ou la confiance mutuelle entre les membres de l''équipe. Pour la question 4, l''agilité est née dans le développement logiciel, avant de se diffuser vers d''autres secteurs de la gestion de projets.

## 45:00 – 60:00 · Les conditions de contingence entre planification et agilité

Reprenons maintenant la question posée en introduction : ce courant remplace-t-il l''approche rationnelle, ou la complète-t-il ? La recherche contemporaine répond plutôt par la contingence méthodologique : on cherche à identifier les facteurs de contexte qui rendent l''une ou l''autre approche plus pertinente, plutôt que d''opposer les deux de façon binaire.

Quels sont ces facteurs ? D''abord la taille et la dispersion géographique de l''équipe : une petite équipe pouvant collaborer étroitement se prête mieux à l''agilité qu''une équipe vaste et dispersée sur plusieurs continents. Ensuite, le degré d''incertitude des besoins : plus les besoins sont susceptibles d''évoluer en cours de route, plus l''agilité apporte de valeur par rapport à une planification rigide. Ensuite encore, la possibilité de découper le produit en incréments livrables de façon autonome : on ne peut pas livrer un pont ou un barrage à moitié et ajuster ensuite, ce qui limite l''application littérale de l''agilité à certains grands projets d''infrastructure physique. Enfin, la disponibilité d''un client ou d''utilisateurs capables de donner des retours fréquents et informés, condition souvent sous-estimée mais pourtant déterminante pour que les cycles itératifs produisent réellement de la valeur.

Reprenons votre question d''introduction sur la contractualisation. Si la valeur se coconstruit progressivement, les contrats classiques à périmètre et prix fixés deviennent mal adaptés : une partie de la littérature sur l''agilité propose donc des formes contractuelles alternatives, fondées sur la confiance et des engagements de collaboration continue plutôt que sur un cahier des charges figé dès le départ, bien que ces montages restent plus délicats à mettre en œuvre dans des environnements juridiques ou administratifs très formalisés, par exemple certains marchés publics.

## 60:00 – 75:00 · Les limites et critiques du courant comportemental et agile

Passons maintenant aux limites de ce courant, qu''un jury attend que vous présentiez avec la même rigueur que pour l''approche rationnelle, sans tomber dans un enthousiasme non critique pour l''agilité.

Première limite, le risque de l''agilité de façade : certaines organisations adoptent le vocabulaire agile (réunions courtes, rôles renommés) sans transformer réellement leurs pratiques de gouvernance ou leurs structures de pouvoir, ce qui crée un écart entre le discours managérial affiché et les pratiques effectives sur le terrain. C''est un point que la recherche en sciences de gestion documente plus largement au-delà de la seule gestion de projets.

Deuxième limite, directement liée à la question que je vous ai posée plus haut : la littérature sur les soft skills reste parfois faiblement opérationnalisée, car il est plus difficile de mesurer rigoureusement « la qualité du leadership » que « le respect d''un délai », ce qui complique la production de résultats de recherche solides, comparables et cumulatifs.

Troisième limite, le transfert de l''agilité hors de son contexte d''origine, le développement logiciel, vers des contextes très différents (grands projets publics, projets d''infrastructure, environnements très réglementés) reste un sujet de débat ouvert : certains chercheurs estiment que l''agilité y est utile sous forme hybride, d''autres estiment que son transfert en dilue le sens initial.

## 75:00 – 85:00 · Synthèse et articulation avec le reste du cours

Synthétisons cette heure trente autour de trois messages clés. Premièrement, l''agilité et les approches comportementales ne sont pas une simple mode managériale : elles reposent sur des fondements théoriques précis, liés à la complexité organisationnelle et aux sciences du comportement humain au travail. Deuxièmement, le rapport entre ce courant et l''approche rationnelle n''est pas un rapport de remplacement mais de tension féconde, structuré par la recherche sur la contingence méthodologique. Troisièmement, ce courant a lui aussi ses limites, notamment la difficulté de mesurer rigoureusement ses variables clés et le risque d''adoption superficielle en pratique.

Exercice oral à voix haute avant de continuer : un membre du jury vous dit « Finalement, votre thèse porte sur l''agilité, donc vous n''avez plus besoin de connaître l''approche rationnelle. » Préparez votre réponse en trente secondes.

Une bonne réponse rappellerait qu''aucune thèse sérieuse en gestion de projets ne peut ignorer le référentiel dominant historiquement installé par l''approche rationnelle, ne serait-ce que parce que c''est précisément par contraste et par critique de ce référentiel que l''agilité se définit elle-même, et parce que la plupart des organisations réelles combinent aujourd''hui des éléments des deux approches plutôt que d''appliquer l''une à l''exclusion totale de l''autre.

## 85:00 – 90:00 · Évaluation finale

Voici cinq questions d''évaluation, avec leurs réponses.

Question 1 : Quelles sont les deux grandes familles de travaux regroupées sous l''étiquette « approches comportementales et agiles » dans ce cours ? Réponse : les recherches sur le leadership, la communication et les comportements d''équipe en projet, d''une part, et le mouvement agile né dans le développement logiciel, d''autre part.

Question 2 : Citez deux conditions de contexte qui favorisent la pertinence d''une approche agile. Réponse : une équipe de taille réduite pouvant collaborer étroitement, et la possibilité de découper le produit en incréments livrables de façon autonome (on pouvait aussi citer la disponibilité d''utilisateurs donnant des retours fréquents, ou un fort degré d''incertitude des besoins).

Question 3 : Pourquoi la mesure rigoureuse des soft skills pose-t-elle une difficulté méthodologique particulière ? Réponse : parce que des dimensions comme la qualité du leadership ou la confiance d''équipe sont plus difficiles à opérationnaliser et à mesurer de façon comparable que des indicateurs objectifs comme le respect d''un délai.

Question 4 : Qu''entend-on par « agilité de façade » ? Réponse : l''adoption du vocabulaire et de certains rituels agiles par une organisation, sans transformation réelle de ses pratiques de gouvernance ou de ses structures de pouvoir.

Question 5 : Le rapport entre l''approche rationnelle et les approches comportementales et agiles est-il, selon la recherche contemporaine, un rapport de remplacement ou de contingence ? Réponse : un rapport de contingence : la recherche cherche à identifier les facteurs de contexte qui rendent l''une ou l''autre approche, ou une combinaison hybride des deux, la plus pertinente, plutôt qu''à décréter la supériorité absolue d''un courant sur l''autre.', 'video', 90, false, 70
from public.courses c where c.slug = 'doc-projet'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Approches comportementales et agilité organisationnelle');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Les méthodes de recherche en gestion de projet', '## Fiche du cours vidéo

Titre : Les méthodes de recherche en gestion de projet, de l''étude de cas longitudinale à la recherche-action.
Durée : 1h30.
Objectifs : approfondir les méthodes de recherche présentées en leçon 4, savoir justifier un choix méthodologique devant un jury, et construire un protocole de recherche crédible appliqué à un contexte africain ou sénégalais.
Matériel conseillé : tableau comparatif des méthodes (quantitatif, qualitatif, mixte), schéma du protocole fictif présenté en leçon 4.
Prérequis : avoir lu la leçon 4 de ce cours.

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Bonjour à toutes et à tous. Après avoir traité les deux grands courants théoriques de la gestion de projets, nous abordons maintenant la dimension méthodologique, qui est tout aussi scrutée par un jury doctoral que la maîtrise théorique. On ne vous demandera pas seulement « que savez-vous sur l''agilité », mais aussi « comment pourriez-vous étudier empiriquement cette question dans votre propre thèse ». Cette séance vous prépare précisément à cet exercice.

## 05:00 – 20:00 · Pourquoi la méthodologie est un enjeu central en gestion de projets

Avant de détailler les méthodes, posons le problème. La gestion de projets étudie des phénomènes temporellement bornés, socialement complexes, et souvent uniques dans leurs détails. Comment, dans ces conditions, produire des connaissances généralisables ? C''est tout l''enjeu de la méthodologie dans ce champ.

Regardez le tableau comparatif à l''écran. Les méthodes quantitatives, le plus souvent des enquêtes par questionnaire suivies d''analyses statistiques, permettent de tester des relations entre variables sur de larges échantillons, par exemple entre le style de leadership et la performance perçue d''un projet. Leur force est la généralisabilité, leur limite est la difficulté à restituer la richesse contextuelle d''un projet réel : un questionnaire capture des perceptions déclarées à un instant donné, mais explique mal pourquoi et comment un projet a concrètement dérivé ou réussi.

## 20:00 – 35:00 · L''étude de cas longitudinale et la recherche-action

Entrons maintenant dans le détail de la méthode qualitative la plus caractéristique du champ : l''étude de cas longitudinale. Elle consiste à suivre un ou plusieurs projets réels sur la durée, souvent depuis leur lancement jusqu''à leur clôture, en combinant entretiens répétés, observation de réunions de pilotage et analyse de documents internes. Son intérêt majeur est de saisir la dynamique temporelle du projet : comment une décision prise à une étape affecte les étapes suivantes, comment un projet peut dériver progressivement sans qu''aucun événement isolé ne l''explique à lui seul.

Posez-vous la question suivante avant que je poursuive : si vous suivez seulement deux ou trois projets en profondeur, quelle objection un jury pourrait-il vous opposer sur la portée de vos résultats ? Nous allons y répondre précisément dans quelques minutes.

La recherche-action, elle, se distingue par la posture du chercheur : il intervient directement dans le projet étudié, par exemple comme consultant ou facilitateur, tout en documentant systématiquement cette intervention à des fins de production de connaissance. Son intérêt est de permettre l''étude de phénomènes difficiles à observer de l''extérieur, comme les résistances au changement ou les dynamiques de pouvoir, et de produire une connaissance directement utile aux praticiens. Sa difficulté centrale est de maintenir une distance critique suffisante malgré l''implication du chercheur.

Répondons maintenant à la question posée plus haut : l''objection classique à l''étude de cas longitudinale est la faible généralisabilité des résultats au-delà des cas étudiés. On y répond, sans renoncer à la méthode, par une sélection raisonnée et explicitement justifiée des cas, par une triangulation rigoureuse des sources de données, et par une discussion honnête des limites de transférabilité dans la restitution de la recherche.

## 35:00 – 45:00 · Quiz interactif à mi-séance

Pause quiz. Répondez avant d''entendre les réponses commentées.

Question 1 : Quelle méthode permet le mieux de saisir la dynamique temporelle d''un projet, c''est-à-dire la manière dont une décision à une étape affecte les étapes suivantes ?
Question 2 : Dans la recherche-action, le chercheur observe-t-il le projet de l''extérieur, ou intervient-il directement dans son déroulement ?
Question 3 : Quelle est la principale limite méthodologique de l''étude de cas longitudinale ?
Question 4 : Les enquêtes de maturité organisationnelle en gestion de projet mesurent-elles plutôt le niveau de structuration des processus d''une organisation, ou la satisfaction individuelle des chefs de projet ?

Réponses commentées : pour la question 1, c''est l''étude de cas longitudinale, grâce au suivi dans la durée et à la combinaison de plusieurs sources de données. Pour la question 2, le chercheur intervient directement dans le projet, ce qui le distingue de l''observation externe de l''étude de cas classique. Pour la question 3, c''est la faible généralisabilité des résultats au-delà du ou des cas étudiés. Pour la question 4, elles mesurent principalement le niveau de structuration des processus de gestion de projet d''une organisation (existence de processus formalisés, outils partagés, soutien de la direction).

## 45:00 – 60:00 · Les enquêtes de maturité et les méthodes mixtes

Reprenons l''exposé avec les enquêtes sur la maturité organisationnelle en gestion de projet. L''idée centrale est que les organisations ne sont pas toutes au même niveau de structuration de leurs pratiques de gestion de projet, et que ce niveau influencerait la performance globale de leur portefeuille de projets. Les chercheurs développent des grilles d''évaluation, administrées auprès d''organisations, souvent complétées par des entretiens pour contextualiser les scores obtenus.

Cette méthode permet de comparer des organisations entre elles, mais elle est critiquée pour un présupposé parfois implicite : une maturité plus élevée, au sens de processus plus formalisés, serait toujours souhaitable. Or cela entre en tension avec les enseignements du courant agile, vu dans la vidéo précédente, sur l''intérêt de structures plus légères et adaptatives dans certains contextes. C''est un excellent exemple, à retenir pour votre oral, de la façon dont une méthode de recherche peut elle-même porter des présupposés théoriques hérités d''un courant particulier.

Face aux limites respectives des méthodes quantitatives et qualitatives, une part croissante de la recherche combine les deux dans des designs mixtes : une enquête quantitative à grande échelle pour identifier des régularités statistiques, suivie d''études de cas qualitatives approfondies sur un sous-ensemble de situations pour comprendre les mécanismes qui expliquent ces régularités.

## 60:00 – 75:00 · Construction pas à pas du protocole sénégalais fictif

Reprenons maintenant, pas à pas, le protocole de recherche fictif présenté en leçon 4, pour vous montrer comment le présenter à l''oral de façon convaincante. Rappel de la question de recherche : comment les équipes de projet des petites et moyennes entreprises technologiques dakaroises s''approprient-elles des pratiques agiles importées, et quels facteurs organisationnels favorisent ou freinent cette appropriation ?

Premier temps du protocole : une enquête quantitative exploratoire par questionnaire, auprès de chefs de projet d''entreprises technologiques de la région de Dakar, mesurant le degré déclaré d''adoption de pratiques agiles et ses corrélations avec la taille de l''entreprise, l''ancienneté de l''équipe ou la formation préalable. Deuxième temps, la sélection de trois à quatre études de cas longitudinales contrastées, suivies sur plusieurs mois, pour comprendre en profondeur les mécanismes d''appropriation ou de résistance. Troisième temps, une synthèse croisant résultats quantitatifs et qualitatifs, construisant une typologie des modes d''appropriation.

Si un jury vous demande pourquoi ce protocole est pertinent, insistez sur trois points : l''articulation entre exploration à large échelle et explication en profondeur ; l''attention portée au contexte local, dont les contraintes de ressources et de culture organisationnelle diffèrent de celles des grandes entreprises occidentales souvent étudiées dans la littérature fondatrice sur l''agilité ; et la cohérence entre la question de recherche posée et la méthode choisie, plutôt qu''un choix méthodologique par habitude.

## 75:00 – 85:00 · Synthèse et entraînement à la justification méthodologique

Synthétisons cette heure trente. Vous devez savoir caractériser chaque méthode (quantitative, qualitative avec ses deux variantes principales que sont l''étude de cas longitudinale et la recherche-action, les enquêtes de maturité, et les méthodes mixtes), savoir en citer les forces et les limites, et surtout savoir justifier pourquoi une méthode donnée convient à une question de recherche donnée, plutôt que de la choisir par défaut.

Exercice oral avant de continuer : un membre du jury vous demande « Pourquoi ne pas simplement faire une grande enquête quantitative sur tout le Sénégal plutôt que ces quelques études de cas limitées ? » Préparez votre réponse en trente secondes.

Une bonne réponse rappellerait que la question de recherche posée (comprendre les mécanismes d''appropriation ou de résistance à l''agilité) appelle une explication fine et processuelle, que seule une approche qualitative en profondeur permet de documenter, alors qu''une enquête quantitative à grande échelle permettrait de mesurer des régularités statistiques mais ne révélerait pas pourquoi elles se produisent ; c''est précisément pour cette raison que le protocole proposé combine les deux approches, chacune répondant à une partie différente de la question.

## 85:00 – 90:00 · Évaluation finale

Voici cinq questions d''évaluation, avec leurs réponses.

Question 1 : Quelle est la force principale des méthodes quantitatives en gestion de projets, et quelle en est la limite principale ? Réponse : la force est la généralisabilité des résultats à une population plus large ; la limite est la difficulté à restituer la richesse contextuelle et processuelle d''un projet réel.

Question 2 : Quelle différence sépare l''étude de cas longitudinale de la recherche-action ? Réponse : dans l''étude de cas, le chercheur observe le projet de l''extérieur sans intervenir ; dans la recherche-action, il intervient directement dans le projet tout en documentant son intervention et ses effets.

Question 3 : Quelle critique est adressée aux enquêtes de maturité organisationnelle en gestion de projet ? Réponse : elles présupposent parfois implicitement qu''une structuration plus poussée des processus serait toujours souhaitable, ce qui entre en tension avec les enseignements du courant agile sur l''intérêt de structures plus légères dans certains contextes.

Question 4 : Pourquoi combiner méthodes quantitatives et qualitatives dans un design mixte ? Réponse : pour bénéficier à la fois de la généralisabilité des méthodes quantitatives et de la richesse explicative des méthodes qualitatives, en articulant explicitement leurs résultats respectifs.

Question 5 : Dans le protocole sénégalais fictif présenté, pourquoi la deuxième phase qualitative est-elle indispensable en complément de la première phase quantitative ? Réponse : parce que la phase quantitative identifie des régularités statistiques sur un échantillon large, mais ne permet pas de comprendre en profondeur les mécanismes concrets d''appropriation ou de résistance à l''agilité, que seules des études de cas longitudinales approfondies permettent de documenter.', 'video', 90, false, 80
from public.courses c where c.slug = 'doc-projet'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Les méthodes de recherche en gestion de projet');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Traiter une question de synthèse type d''examen de qualification', '## Fiche du cours vidéo

Titre : Traiter une question de synthèse type d''examen de qualification, méthode et correction commentée.
Durée : 1h30.
Objectifs : s''entraîner en conditions proches de l''oral à construire un plan de réponse sur la question type vue en leçon 5, et savoir généraliser cette méthode à d''autres questions de synthèse.
Matériel conseillé : tableau pour construire le plan en direct, chronomètre pour simuler les contraintes de temps d''un oral.
Prérequis : avoir lu la leçon 5 et visionné les vidéos précédentes.

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Bonjour à toutes et à tous. Cette séance est la plus proche de la situation réelle de votre oral de qualification : nous allons traiter ensemble, pas à pas, une question de synthèse typique, exactement comme vous devrez le faire devant un jury. L''objectif n''est pas seulement de connaître la réponse à cette question précise, mais de vous entraîner à la méthode de construction d''un plan, que vous pourrez réutiliser pour n''importe quelle autre question de synthèse sur votre champ.

## 05:00 – 15:00 · Présentation de la question et décorticage méthodologique

Voici la question, que nous avons déjà vue en leçon 5 : « Dans quelle mesure le débat entre l''approche rationnelle et planificatrice de la gestion de projet et les approches comportementales et agiles reflète-t-il, plus largement, deux conceptions concurrentes de la mesure du succès d''un projet ? Vous illustrerez votre propos en indiquant comment une recherche empirique pourrait être conçue pour étudier cette question dans un contexte organisationnel précis. »

Avant de répondre, il faut décortiquer la question. Trois opérations systématiques : repérer les concepts clés (ici, les deux courants théoriques, et la notion de mesure du succès) ; repérer la relation logique demandée (relier le débat théorique à un débat plus large sur le succès, ce qui suggère un plan en deux mouvements) ; repérer ce que la question demande en plus de la théorie (ici, une proposition de protocole de recherche empirique). Notez bien ce triptyque, il fonctionne pour n''importe quelle question de synthèse, pas seulement celle-ci.

## 15:00 – 30:00 · Construction en direct de la première partie du plan

Construisons maintenant, en direct, la première partie du plan : le lien entre les deux courants et deux conceptions du succès. L''approche rationnelle, en définissant le succès par le triangle coût-délai-qualité, privilégie une vision du projet comme engagement contractuel à honorer : le succès se mesure par la conformité du résultat livré aux spécifications et contraintes initiales. À l''inverse, les approches comportementales et agiles, en insistant sur l''adaptation continue aux besoins réels des utilisateurs, tendent à définir le succès de façon plus large : la création effective de valeur perçue par l''ensemble des parties prenantes, même si le résultat final diffère du plan de départ.

Un point à mobiliser ici, qui montre une connaissance fine du débat et non une opposition caricaturale : la distinction entre le succès de la gestion du projet, au sens étroit du triangle coût-délai-qualité, et le succès du projet, au sens large de la valeur et de la satisfaction des parties prenantes sur le moyen et long terme. Ces deux dimensions peuvent diverger : un projet peut être un succès de gestion tout en étant un échec de valeur, et inversement. Répétez cette distinction à voix haute, c''est l''articulation centrale de toute votre réponse.

## 30:00 – 40:00 · Quiz interactif à mi-séance

Pause quiz. Répondez avant les réponses commentées.

Question 1 : Dans la distinction présentée, le succès de gestion se mesure-t-il à la clôture du projet, ou plusieurs mois après sa mise en usage ?
Question 2 : Le succès de valeur est-il défini par la conformité à des spécifications initiales, ou par la satisfaction et les bénéfices perçus par les parties prenantes dans la durée ?
Question 3 : Un projet livré à temps et dans le budget, mais finalement peu utilisé par ses destinataires, est-il un exemple de succès de gestion sans succès de valeur, ou l''inverse ?
Question 4 : Quelle méthode de recherche, vue dans la vidéo précédente, est particulièrement adaptée pour étudier l''écart éventuel entre succès de gestion et succès de valeur, et pourquoi ?

Réponses commentées : pour la question 1, le succès de gestion se mesure généralement à la clôture formelle du projet, par rapport aux contraintes initiales. Pour la question 2, le succès de valeur se définit par la satisfaction et les bénéfices perçus par les parties prenantes dans la durée, au-delà de la seule conformité initiale. Pour la question 3, c''est un exemple de succès de gestion sans succès de valeur. Pour la question 4, l''étude de cas longitudinale est particulièrement adaptée, car elle seule permet d''observer dans la durée l''éventuel écart entre un succès de gestion mesurable rapidement à la clôture, et un succès de valeur qui ne peut s''évaluer que plus tard, une fois le produit du projet réellement en usage.

## 40:00 – 55:00 · Construction en direct de la seconde partie du plan

Construisons maintenant la seconde partie, méthodologique, de notre plan. On propose une étude de cas longitudinale menée sur deux ou trois projets d''une même organisation, ou de quelques organisations comparables, suivis depuis leur lancement jusqu''à un moment postérieur à leur clôture formelle. On documente ainsi, à la fois, les indicateurs classiques de succès de gestion (budget, délais, périmètre technique) et des indicateurs de succès de valeur recueillis plus tard (utilisation effective, satisfaction des utilisateurs finaux, effets organisationnels non anticipés).

On peut enrichir ce protocole d''un volet quantitatif complémentaire, par exemple une enquête de satisfaction standardisée administrée à plusieurs mois d''intervalle, illustrant la pertinence d''un design mixte pour cette question précise. Si le jury vous demande pourquoi vous ajoutez ce volet quantitatif, répondez que l''étude de cas qualitative permet de comprendre les mécanismes en profondeur sur un nombre limité de projets, tandis que le volet quantitatif permet de vérifier si les constats observés se retrouvent de façon plus généralisée.

## 55:00 – 70:00 · Entraînement chronométré à l''oral de quinze minutes

Prenez un chronomètre. Je vous propose de vous entraîner maintenant à présenter l''ensemble de ce plan en quinze minutes, comme si vous étiez devant le jury. Découpez votre temps ainsi : deux minutes pour l''introduction et l''annonce du plan, six minutes pour la première partie théorique, cinq minutes pour la seconde partie méthodologique, deux minutes pour la conclusion et l''ouverture. Entraînez-vous à voix haute, en respectant ce minutage, avant de reprendre la vidéo.

Un conseil pratique pour l''oral réel : ne lisez jamais un texte rédigé mot à mot devant le jury. Préparez plutôt des mots-clés ou un plan détaillé que vous développez librement à l''oral ; cela donne une impression de maîtrise réelle du sujet, bien plus convaincante qu''une récitation.

## 70:00 – 85:00 · Généraliser la méthode à d''autres questions, et synthèse

Pour conclure cette séance, généralisons la méthode à d''autres questions possibles. Reprenons l''exemple vu en leçon 5 : une question qui relierait le même débat théorique, non plus à la mesure du succès, mais à la gestion des risques en projet. Le même triptyque méthodologique s''applique : repérer les concepts clés (approche rationnelle, approche agile, gestion du risque ou de l''incertitude), repérer la relation logique demandée, repérer la dimension méthodologique attendue. Vous pouvez ainsi vous entraîner, seul ou avec des collègues doctorants, à inventer vos propres questions de synthèse sur votre champ et à les traiter avec cette même méthode en quinze minutes chronométrées.

Synthétisons les messages clés de cette séance. Premièrement, une question de synthèse de niveau doctoral ne demande jamais de réciter un cours, mais de construire un raisonnement original reliant plusieurs éléments de littérature à travers le prisme précis de la question posée. Deuxièmement, un bon plan doit toujours traiter explicitement toutes les dimensions de la question, y compris la dimension méthodologique si elle est demandée. Troisièmement, l''entraînement chronométré est indispensable : savoir quoi dire ne suffit pas, il faut aussi savoir le dire dans le temps imparti, de façon claire et structurée.

## 85:00 – 90:00 · Évaluation finale

Voici cinq questions d''évaluation, avec leurs réponses.

Question 1 : Quelles sont les trois opérations à effectuer avant de construire un plan de réponse à une question de synthèse ? Réponse : repérer les concepts clés mobilisés, repérer la relation logique demandée entre ces concepts, et repérer les dimensions supplémentaires attendues par la question, par exemple une proposition méthodologique.

Question 2 : Quelle distinction conceptuelle structure la première partie du plan de réponse étudié dans cette vidéo ? Réponse : la distinction entre le succès de la gestion du projet, mesuré par le triangle coût-délai-qualité à la clôture, et le succès du projet, mesuré par la valeur et la satisfaction des parties prenantes dans la durée.

Question 3 : Pourquoi l''étude de cas longitudinale est-elle la méthode privilégiée pour étudier l''écart entre succès de gestion et succès de valeur ? Réponse : parce qu''elle permet de suivre un projet au-delà de sa clôture formelle, et donc d''observer dans la durée un éventuel écart entre un succès mesurable rapidement et un succès qui ne se révèle que plus tard, dans l''usage réel.

Question 4 : Quel écueil fréquent faut-il éviter dans un plan de réponse à une question de synthèse de niveau doctoral ? Réponse : le plan purement descriptif qui résume séparément chaque élément de littérature sans jamais établir explicitement le lien demandé par la question, ou l''oubli d''une dimension explicitement demandée, comme la proposition méthodologique.

Question 5 : Pourquoi est-il conseillé de ne pas lire un texte rédigé mot à mot lors d''un oral de qualification ? Réponse : parce que présenter son propos à partir d''un plan détaillé ou de mots-clés, développés librement, donne une impression de maîtrise réelle du sujet, plus convaincante pour un jury qu''une récitation littérale.', 'video', 90, false, 90
from public.courses c where c.slug = 'doc-projet'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Traiter une question de synthèse type d''examen de qualification');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Simulation complète d''une soutenance de qualification doctorale', '## Fiche du cours vidéo

Titre : Simulation complète d''une soutenance de qualification doctorale en gestion de projets.
Durée : 1h30.
Objectifs : vivre, en conditions proches du réel, une simulation complète de soutenance de qualification : quinze minutes de présentation du champ et d''un projet de thèse fictif, puis huit à dix questions de jury type, avec à chaque fois la structure d''une bonne réponse commentée.
Matériel conseillé : chronomètre, de quoi prendre des notes pour vous auto-évaluer en fin de séance.
Prérequis : avoir visionné l''ensemble des quatre vidéos précédentes de ce cours et relu les cinq leçons texte.

## Déroulé minuté

## 00:00 – 05:00 · Introduction et mode d''emploi de la simulation

Bonjour à toutes et à tous. Cette dernière vidéo de synthèse est le cœur de votre préparation : nous allons simuler, du début à la fin, une soutenance de qualification doctorale en gestion de projets. Je vais d''abord jouer le rôle du doctorant qui présente son champ et son projet de thèse fictif pendant quinze minutes, puis je vais jouer tour à tour le rôle du jury qui pose des questions, et du candidat qui y répond, en commentant à chaque fois la structure attendue d''une bonne réponse. Suivez cette simulation comme une répétition générale : notez ce que vous feriez différemment, et préparez-vous à vous auto-évaluer à la fin, à l''aide de la grille que nous utiliserons en conclusion.

Le projet de thèse fictif que nous allons utiliser, construit uniquement à des fins pédagogiques pour ce cours, porte sur l''appropriation des pratiques agiles dans les petites et moyennes entreprises technologiques dakaroises, le même sujet que le protocole de recherche présenté dans la leçon 4 et la vidéo 8 de ce cours.

## 05:00 – 20:00 · Présentation simulée de quinze minutes

Voici, telle qu''elle pourrait être présentée devant un jury, la présentation de quinze minutes. « Mesdames et messieurs les membres du jury, mon champ de recherche est la gestion de projets, et plus précisément le débat entre l''approche rationnelle et planificatrice du projet et les approches comportementales et agiles. Je vais d''abord situer ce débat théorique, puis vous présenter mon projet de thèse et sa méthodologie.

L''approche rationnelle définit le projet comme un système maîtrisable par la planification, et mesure son succès par le respect du triangle coût, délai, qualité. Elle s''est consolidée historiquement à partir de l''ingénierie et de la défense, puis diffusée par un mouvement de professionnalisation du métier de chef de projet. Les approches comportementales et agiles, à l''inverse, considèrent le projet comme une réalité sociale complexe, où la valeur se coconstruit progressivement avec les parties prenantes à travers des cycles courts et itératifs, et où le succès ne se réduit pas au respect de contraintes initiales mais inclut la valeur réellement créée pour les utilisateurs.

Ces deux courants ne s''opposent pas de façon binaire : la recherche contemporaine s''intéresse à la contingence méthodologique, c''est-à-dire aux conditions de contexte qui rendent l''une ou l''autre approche plus pertinente. C''est précisément dans cet espace que se situe mon projet de thèse.

Ma question de recherche est la suivante : comment les équipes de projet des petites et moyennes entreprises technologiques dakaroises s''approprient-elles des pratiques agiles importées, initialement conçues dans des contextes organisationnels très différents, et quels facteurs organisationnels favorisent ou freinent cette appropriation ? Cette question se situe au croisement des deux courants que je viens de présenter : elle interroge comment un référentiel agile, pensé contre les présupposés de l''approche rationnelle, se diffuse et se transforme au contact de contextes organisationnels africains encore marqués, dans de nombreux cas, par des pratiques plus formalisées de gestion de projet.

Sur le plan méthodologique, je propose un protocole en deux temps. Une enquête quantitative exploratoire par questionnaire auprès de chefs de projet d''entreprises technologiques dakaroises, pour mesurer le degré déclaré d''adoption de pratiques agiles et ses corrélations avec des variables de contexte. Puis, à partir de ces résultats, la sélection de trois à quatre études de cas longitudinales contrastées, suivies sur plusieurs mois, pour comprendre en profondeur les mécanismes d''appropriation ou de résistance. Cette combinaison me permettra d''articuler des régularités statistiques généralisables et une compréhension fine des mécanismes à l''œuvre, ce que ni l''une ni l''autre méthode ne permettrait isolément. Je vous remercie de votre attention et reste à votre disposition pour vos questions. »

## 20:00 – 35:00 · Questions de jury 1 à 3, avec structure de bonne réponse

Question de jury 1 : « Vous présentez ces deux courants comme complémentaires, mais ne pensez-vous pas qu''ils reposent en réalité sur des conceptions incompatibles de ce qu''est un projet ? »

Structure de bonne réponse : reconnaître la part de vérité de l''objection, sans s''effondrer : oui, les présupposés de base diffèrent sensiblement, l''un voyant le projet comme un système à spécifier à l''avance, l''autre comme une réalité émergente. Mais préciser que cette différence de présupposés n''empêche pas une complémentarité pratique, documentée par la recherche sur la contingence, où des organisations combinent des éléments des deux approches selon le sous-projet ou la phase concernée. Conclure en reliant à son propre objet de thèse : c''est précisément cette tension entre présupposés théoriques distincts et pratiques hybrides observées sur le terrain que la thèse se propose d''étudier empiriquement.

Question de jury 2 : « Pourquoi choisir les petites et moyennes entreprises technologiques dakaroises plutôt qu''un échantillon plus large, par exemple à l''échelle de toute l''Afrique de l''Ouest ? »

Structure de bonne réponse : justifier le choix par la faisabilité méthodologique (accès au terrain, connaissance du contexte local, limites de temps et de ressources d''une thèse), tout en reconnaissant explicitement la limite de généralisabilité qui en découle, et en indiquant que cette limite sera discutée de façon transparente dans la thèse, avec des pistes de recherche future pour élargir la portée géographique.

Question de jury 3 : « Votre premier temps méthodologique est quantitatif. N''est-ce pas contradictoire avec votre question de recherche, qui semble appeler une compréhension fine, donc qualitative ? »

Structure de bonne réponse : expliquer que la phase quantitative n''a pas pour but de répondre complètement à la question de recherche, mais de jouer un rôle exploratoire, permettant d''identifier des régularités et de sélectionner de façon informée les cas les plus contrastés pour la phase qualitative. Montrer ainsi que les deux phases sont complémentaires et non redondantes, chacune répondant à une partie différente de la question.

## 35:00 – 50:00 · Questions de jury 4 à 6, avec structure de bonne réponse

Question de jury 4 : « Comment allez-vous éviter que votre propre regard, en tant que chercheur, n''influence les résultats de vos études de cas ? »

Structure de bonne réponse : rappeler les techniques classiques de rigueur en recherche qualitative : triangulation des sources de données (entretiens, observation, documents), explicitation de sa propre position de chercheur et de ses présupposés, et le cas échéant restitution des interprétations préliminaires aux acteurs étudiés pour vérifier leur validité. Ne pas prétendre à une objectivité totale impossible, mais montrer que des procédures rigoureuses permettent de limiter et de documenter les biais inévitables.

Question de jury 5 : « Le triangle coût-délai-qualité n''est-il pas simplement un outil pratique, sans véritable portée théorique ? »

Structure de bonne réponse : s''appuyer sur ce qui a été vu dans la vidéo 6 de ce cours : montrer que ce triangle repose sur des présupposés théoriques explicites (le projet est un système maîtrisable par la planification, le succès se définit par la conformité à des contraintes initiales), et que c''est précisément parce que ce sont des présupposés théoriques, et non de simples techniques neutres, qu''ils ont pu être questionnés et critiqués par d''autres courants, notamment sur la distinction entre succès de gestion et succès de valeur.

Question de jury 6 : « Votre sujet est très actuel, mais en quoi contribue-t-il réellement à la littérature existante sur l''agilité, qui est déjà abondante ? »

Structure de bonne réponse : préciser que la littérature fondatrice sur l''agilité s''est largement construite dans des contextes occidentaux et dans le secteur du développement logiciel, et que l''étude de son appropriation dans un contexte organisationnel africain spécifique, avec ses contraintes propres de ressources, de formation et de culture organisationnelle, constitue un apport empirique original, qui peut aussi contribuer théoriquement à affiner les conditions de contingence identifiées jusqu''ici principalement sur des terrains occidentaux.

## 50:00 – 65:00 · Questions de jury 7 à 9, avec structure de bonne réponse

Question de jury 7 : « Que ferez-vous si votre enquête quantitative ne révèle aucune corrélation significative ? »

Structure de bonne réponse : montrer que l''absence de corrélation significative n''est pas un échec de la recherche, mais un résultat en soi, qui peut orienter différemment la phase qualitative (par exemple en explorant pourquoi les facteurs attendus ne jouent pas le rôle supposé), et rappeler qu''un protocole de recherche robuste doit prévoir, dès sa conception, comment réagir à des résultats inattendus plutôt que de supposer d''avance les résultats qu''on va trouver.

Question de jury 8 : « Comment allez-vous définir et mesurer concrètement l''appropriation des pratiques agiles dans vos études de cas ? »

Structure de bonne réponse : proposer des indicateurs concrets et observables, par exemple la fréquence et la régularité réelle des cycles de livraison, l''existence de retours effectifs des utilisateurs intégrés dans le travail de l''équipe, le degré d''autonomie réelle laissé à l''équipe dans l''organisation de son travail, plutôt que la seule déclaration des acteurs sur leur usage des pratiques agiles, afin de distinguer une appropriation réelle d''une adoption purement déclarative ou de façade.

Question de jury 9 : « En quoi votre protocole méthodologique est-il cohérent avec le cadre théorique que vous avez présenté en introduction ? »

Structure de bonne réponse : relier explicitement les deux éléments : le cadre théorique souligne que le succès et l''appropriation de pratiques se construisent dans la durée et dans l''interaction, ce qui justifie précisément le choix d''un design longitudinal permettant d''observer cette construction progressive, plutôt qu''une mesure ponctuelle qui capturerait un instantané déconnecté du processus réel d''appropriation.

## 65:00 – 80:00 · Question de jury 10, débriefing global et conseils pratiques

Question de jury 10, souvent posée en fin de soutenance : « Si vous deviez résumer, en une phrase, ce que votre thèse apporte de neuf par rapport à la littérature existante, que diriez-vous ? »

Structure de bonne réponse : préparer à l''avance une phrase courte, claire et mémorable, par exemple : « Ma thèse documente empiriquement, à travers un protocole combinant enquête et études de cas longitudinales, comment des pratiques agiles conçues ailleurs se transforment concrètement au contact d''un contexte organisationnel ouest-africain spécifique, contribuant ainsi à affiner les conditions de contingence entre approche rationnelle et agilité identifiées par la littérature. » C''est le type de phrase que vous devez pouvoir prononcer sans hésiter, car elle synthétise à elle seule votre contribution.

Débriefing global : chaque bonne réponse suit une structure similaire, reconnaître la part de légitimité de l''objection, apporter une nuance argumentée, puis relier explicitement la réponse à son propre projet de thèse. C''est ce retour systématique au projet qui distingue une réponse de niveau doctoral d''une réponse purement théorique.

Quelques conseils pratiques : prenez le temps de réfléchir avant de répondre à une question difficile ; si vous ne comprenez pas une question, demandez une reformulation plutôt que de répondre à côté ; si vous ne connaissez pas la réponse, dites-le honnêtement en proposant une piste plutôt que d''improviser une réponse incohérente.

## 80:00 – 90:00 · Grille d''auto-évaluation de la soutenance simulée

Cette dernière vidéo ne se termine pas par un quiz noté, mais par une grille d''auto-évaluation que vous devez utiliser pour analyser votre propre performance, soit sur cette simulation que vous venez de suivre en spectateur, soit, mieux encore, sur un entraînement oral réel que vous aurez vous-même réalisé en répondant à voix haute aux dix questions de jury de cette séance.

Grille d''auto-évaluation, en six dimensions, à noter chacune de 1 (à travailler) à 4 (maîtrisé) :

Dimension 1, clarté de la présentation introductive de quinze minutes : ai-je annoncé clairement mon champ théorique, mon débat central, ma question de recherche et ma méthode, dans cet ordre logique ?

Dimension 2, maîtrise cartographique du champ : ai-je su situer les courants théoriques les uns par rapport aux autres, avec leurs jalons historiques, sans les présenter comme des blocs isolés ?

Dimension 3, esprit critique : ai-je su reconnaître les limites de chaque courant, y compris celui que je mobilise le plus dans mon propre projet de thèse, sans tomber dans un enthousiasme non critique ?

Dimension 4, rigueur méthodologique : ai-je su justifier précisément pourquoi ma méthode choisie convient à ma question de recherche, et reconnaître honnêtement les limites de mon protocole plutôt que de les dissimuler ?

Dimension 5, capacité de positionnement : ai-je su dire, en une phrase claire et mémorable, ce que mon projet de thèse apporte de neuf par rapport à la littérature existante ?

Dimension 6, solidité face à la contradiction orale : ai-je su répondre aux objections du jury en reconnaissant leur part de légitimité, en apportant une nuance argumentée, puis en reliant explicitement ma réponse à mon propre projet, sans m''effondrer ni m''enfermer dans une position rigide ?

Pour chaque dimension notée 1 ou 2, identifiez précisément ce qui a manqué (une connaissance, un exemple, une formulation plus claire) et retravaillez ce point avant votre oral réel, idéalement en vous enregistrant à nouveau pour mesurer votre progression. Cette grille peut être réutilisée autant de fois que nécessaire au cours de vos semaines de préparation, en particulier lors de la semaine 8 de votre plan de travail présenté dans la première leçon de ce cours.', 'video', 90, false, 100
from public.courses c where c.slug = 'doc-projet'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Simulation complète d''une soutenance de qualification doctorale');

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
