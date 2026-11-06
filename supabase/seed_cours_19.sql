-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Cours (partie 19/20). À exécuter après seed.sql.

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
