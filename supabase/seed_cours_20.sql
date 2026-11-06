-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Cours (partie 20/20). À exécuter après seed.sql.

-- Cours : Doctorat Droit des affaires : examen de qualification doctorale
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'doc-droit', (select id from public.levels where name = 'Doctorat'), null, 'Droit des affaires', 'Doctorat Droit des affaires : examen de qualification doctorale', 'Préparation à l''examen de qualification doctorale en droit des affaires : maîtrise des grands courants théoriques (positivisme juridique, analyse économique du droit, réalisme juridique), du débat sur l''harmonisation régionale du droit des affaires face à la diversité des traditions juridiques et au droit international des investissements, et des méthodes de recherche du champ (dogmatique, droit comparé, méthode empirique). Public : doctorants en droit des affaires préparant leur soutenance de qualification. Prérequis : Master en droit des affaires.', true, 808
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir son examen de qualification doctorale en droit des affaires', 'L''examen de qualification doctorale en droit des affaires n''est pas un contrôle de connaissances comme un autre. Il marque le moment où un doctorant doit prouver à un jury qu''il maîtrise suffisamment l''état de l''art de sa discipline pour être autorisé à se consacrer, presque sans filet, à la rédaction de sa thèse. Cette leçon pose le cadre de l''épreuve, les attentes du jury et une méthode de travail pour s''y préparer sur plusieurs semaines.

## La nature de l''épreuve

Selon les établissements, l''examen de qualification doctorale en droit des affaires combine presque toujours trois dimensions. D''abord, une synthèse de la littérature : le candidat montre qu''il connaît les grands courants théoriques qui structurent le champ, qu''il sait les situer historiquement et qu''il perçoit leurs tensions internes. Ensuite, une soutenance orale devant un jury de professeurs, organisée comme un mini-colloque où chaque question appelle une réponse structurée et argumentée, non une récitation. Enfin, une défense de projet de thèse : relier ce que l''on sait de la littérature à l''objet précis que l''on compte étudier, et justifier pourquoi ce sujet est pertinent, original et faisable.

Cet examen n''est pas un remake du mémoire de master. Au master, on apprend à résoudre un cas, à appliquer une règle à une situation. Au doctorat, on est évalué sur la capacité à prendre du recul sur les règles elles-mêmes, à les interroger comme objets de connaissance, à comparer les écoles de pensée qui expliquent pourquoi le droit des affaires est fait comme il est fait, et à proposer une contribution nouvelle. Le jury ne demande pas « que dit le texte ? » mais « quelles explications concurrentes existent pour comprendre ce que fait le droit des affaires, et laquelle vous semble la plus féconde pour votre objet de thèse ? ».

## Ce qu''un jury doctoral évalue réellement

Un jury de qualification doctorale vérifie plusieurs qualités. La première est la maîtrise cartographique du champ : savoir nommer les grands courants (positivisme juridique, approches économiques du droit, réalisme juridique, débats sur l''harmonisation régionale) et les situer les uns par rapport aux autres, sans les confondre. La deuxième est l''esprit critique : ne jamais présenter un courant comme une vérité acquise, mais rappeler ses apports et ses limites, et montrer qu''on sait pourquoi d''autres chercheurs l''ont contesté. La troisième est la rigueur méthodologique : distinguer une analyse dogmatique (qui commente et systématise les textes), une analyse comparative (qui met en regard plusieurs systèmes juridiques) et une analyse empirique (qui observe comment le droit est réellement appliqué, notamment à travers la jurisprudence). La quatrième est la capacité à argumenter à l''oral, en structurant sa pensée plutôt qu''en l''énumérant.

Un bon candidat ne cherche pas à « tout savoir », ce qui est impossible, mais à construire une grille de lecture claire du champ, mobilisable pour répondre à des questions variées. C''est cette grille qui doit être travaillée pendant la préparation.

## Méthode de travail recommandée

La préparation repose sur trois outils complémentaires. Le premier est la fiche de lecture : pour chaque courant ou débat, une fiche courte résume l''idée centrale, les auteurs ou traditions associés (par leur apport général, sans citation textuelle précise non vérifiée), le contexte d''émergence, les critiques majeures, et un exemple d''application au droit des affaires africain. Le deuxième est la cartographie des courants : un tableau qui place les écoles de pensée les unes par rapport aux autres, en indiquant ce qui les oppose (par exemple une lecture qui privilégie la cohérence formelle des textes face à une lecture qui privilégie l''efficacité économique des règles) et ce qui peut les rendre complémentaires. Le troisième est la note de synthèse : un exercice limité à deux ou trois pages, qui répond à une question transversale en mobilisant plusieurs courants et méthodes. C''est le format que l''on retrouvera dans l''épreuve type présentée en fin de cours.

Il est également recommandé de préparer, en parallèle, un bref exposé de son propre projet de thèse, capable de tenir en quinze minutes, et de l''articuler explicitement avec les débats théoriques du champ : pourquoi ce sujet, quel courant mobiliser pour l''éclairer, quelle méthode pour l''étudier.

## Un plan de travail sur huit semaines

Un calendrier réaliste peut s''organiser ainsi. Les deux premières semaines : cartographie générale du champ, identification des grands courants et débats, construction du tableau comparatif. Les semaines trois et quatre : approfondissement du premier grand débat théorique, avec ses auteurs, son histoire et ses critiques. Les semaines cinq et six : même travail pour le second grand débat, en identifiant systématiquement les points de tension et de complémentarité avec le premier. La semaine sept : méthodes de recherche propres au champ, avec la construction d''un protocole d''étude appliqué à un cas africain fictif. La semaine huit : entraînement actif, rédaction de notes de synthèse chronométrées, simulation de questions de jury, répétition de l''exposé du projet de thèse, relecture des fiches.

Ce rythme laisse volontairement du temps pour revenir sur les points faibles identifiés en cours de route. Il vaut mieux consolider trois courants théoriques bien compris et bien articulés que de survoler dix courants sans pouvoir les comparer sérieusement à l''oral.

## Points clés à retenir

- L''examen de qualification doctorale évalue la maîtrise des courants théoriques, la capacité de comparaison critique et la connaissance des méthodes de recherche du champ, pas la résolution d''un cas pratique.
- Le jury attend une pensée structurée et nuancée, jamais une récitation ni une vérité présentée sans contradicteur.
- Trois outils de préparation sont essentiels : fiches de lecture, cartographie des courants, notes de synthèse chronométrées.
- Le projet de thèse doit être relié explicitement aux débats théoriques et aux méthodes du champ.
- Un plan de travail sur huit semaines permet de couvrir le champ sans le survoler.

## Exercices pratiques

1. Rédigez en dix lignes la différence entre ce qu''évalue un mémoire de master en droit des affaires et ce qu''évalue un examen de qualification doctorale dans la même discipline.
2. Dressez la liste des trois à quatre grands courants ou débats théoriques que vous pensez devoir maîtriser pour votre propre spécialité, même si vous ne les connaissez encore que de nom.
3. Construisez le squelette d''une fiche de lecture type (rubriques, sans contenu) que vous utiliserez pour chaque courant étudié dans ce cours.
4. Proposez un calendrier de révision sur huit semaines adapté à votre emploi du temps réel, en identifiant les deux semaines où vous serez le moins disponible et comment vous les compenserez.
5. Formulez, en trois phrases, une présentation provisoire de votre projet de thèse telle que vous pourriez la donner aujourd''hui à un jury, en identifiant ce qui vous semble le plus fragile dans cette présentation.

## Corrigé

1. Le mémoire de master demande d''appliquer une règle de droit des affaires à une situation donnée (un cas d''entreprise, un contrat, un litige) pour produire une solution opérationnelle. L''examen de qualification doctorale demande de prendre du recul sur les règles elles-mêmes : comprendre pourquoi elles existent, quelles théories expliquent leur fonction et leur évolution, comment les chercheurs les étudient, et comment ces débats éclairent un projet de recherche original. Le premier exercice est tourné vers la solution d''un problème concret ; le second est tourné vers la connaissance du champ comme objet d''étude.

2. Une liste plausible pour le droit des affaires comprend : le débat positivisme juridique / analyse économique du droit et réalisme juridique ; le débat sur l''harmonisation régionale du droit des affaires (droit OHADA) face à la diversité des traditions juridiques nationales et à l''articulation avec le droit international des investissements ; éventuellement un troisième débat plus spécifique (par exemple sur le rôle du droit souple ou sur l''effectivité du droit). L''essentiel est de ne pas se contenter d''un seul courant et de pouvoir nommer au moins une tension entre deux approches.

3. Une fiche de lecture type peut comporter les rubriques suivantes : nom du courant ou du débat ; idée centrale en une phrase ; contexte d''émergence (sans date précise si elle n''est pas certaine) ; auteurs ou traditions associés et nature de leur apport (jamais de citation textuelle exacte non vérifiée) ; principales critiques adressées au courant ; un exemple d''application possible au contexte africain ou sénégalais ; une phrase reliant le courant à votre propre projet de thèse.

4. Un calendrier correct respecte la logique proposée : cartographie générale (semaines 1-2), premier débat (semaines 3-4), second débat (semaines 5-6), méthodes de recherche et protocole appliqué (semaine 7), entraînement actif et simulation (semaine 8). La qualité de la réponse se juge sur la capacité à anticiper les semaines creuses et à prévoir une marge de rattrapage, plutôt que sur le respect mécanique du découpage.

5. Il n''existe pas de bonne réponse unique : l''évaluation porte sur la clarté de l''articulation entre le sujet de thèse et au moins un courant théorique du champ, et sur l''honnêteté de l''auto-critique (un point réellement fragile, comme un manque de précision sur la méthode ou sur la portée du terrain d''étude, plutôt qu''une fausse modestie générale).', 'texte', 45, true, 10
from public.courses c where c.slug = 'doc-droit'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir son examen de qualification doctorale en droit des affaires');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Le positivisme juridique face à l''analyse économique du droit et au réalisme juridique', 'Le droit des affaires peut être lu de deux manières très différentes. On peut le lire comme un système de normes cohérent, qu''il faut comprendre de l''intérieur à partir de ses propres textes et de sa propre logique : c''est l''approche du positivisme juridique. On peut aussi le lire comme un ensemble de règles dont il faut évaluer les effets réels sur les comportements économiques et sociaux : c''est l''approche de l''analyse économique du droit et du réalisme juridique. Cette leçon présente ces deux grands courants, leur histoire, leurs apports et leurs limites.

## Le positivisme juridique : le droit comme système de textes

Le positivisme juridique part d''une idée simple : le droit est un ensemble de normes posées par une autorité compétente (le législateur, le pouvoir réglementaire, les organisations régionales d''harmonisation), et la tâche du juriste est de décrire ce système tel qu''il est, pas de juger s''il est économiquement efficace ou moralement souhaitable. Cette approche, souvent appelée dogmatique, insiste sur la cohérence interne du droit : chaque règle doit pouvoir se rattacher à une source valide, s''articuler sans contradiction avec les autres règles, et être interprétée selon des méthodes propres au raisonnement juridique (interprétation littérale, systématique, téléologique).

Appliqué au droit des affaires, le positivisme juridique conduit à étudier en priorité les textes qui organisent les sociétés commerciales, les contrats, les procédures collectives ou les sûretés, à en dégager la logique interne, à classer les règles par catégories, et à résoudre les contradictions apparentes par les techniques classiques d''interprétation. Le travail du chercheur positiviste ressemble à celui d''un architecte qui décrit la structure d''un bâtiment : il cherche à comprendre comment les pièces du système s''articulent, sans nécessairement se demander si le bâtiment est confortable à habiter.

Les auteurs associés à cette tradition insistent, de façon générale, sur la séparation entre le droit tel qu''il est (ce que décrit le juriste) et le droit tel qu''il devrait être (une question qui relève, pour eux, de la politique ou de la morale, non de la science juridique). Cette séparation a donné au droit des affaires une grande partie de sa rigueur technique : sécurité juridique, prévisibilité des solutions, cohérence des concepts.

## Les limites du positivisme et l''émergence des approches économiques

Le positivisme juridique a cependant été critiqué pour son relatif désintérêt envers les effets réels des règles. Une règle peut être parfaitement cohérente sur le plan logique et pourtant produire des effets économiques indésirables : freiner l''investissement, favoriser certains acteurs au détriment d''autres, ou rester lettre morte parce que personne ne l''applique en pratique. C''est pour répondre à cette limite que s''est développée l''analyse économique du droit, souvent désignée par l''expression anglaise « law and economics ».

Cette approche part d''un postulat différent : les règles de droit des affaires doivent être évaluées à l''aune de leur efficacité économique, c''est-à-dire de leur capacité à orienter les comportements des acteurs (entreprises, investisseurs, créanciers) vers des résultats globalement bénéfiques, en tenant compte des incitations qu''elles créent. Par exemple, une règle sur les sûretés n''est pas seulement analysée pour sa cohérence avec le reste du droit des contrats, mais aussi pour son effet sur le coût du crédit, la prise de risque des prêteurs, ou l''accès des petites entreprises au financement. L''analyse économique du droit mobilise des outils issus de la microéconomie (incitations, coûts de transaction, asymétries d''information) pour expliquer pourquoi certaines règles se diffusent plus que d''autres et pour proposer des réformes jugées plus efficaces.

## Le réalisme juridique : regarder le droit en action

Proche de l''analyse économique sur un point essentiel — le refus de s''arrêter au texte — le réalisme juridique porte une critique complémentaire, mais distincte. Pour les réalistes, le droit « sur le papier » (les textes, les traités, les actes uniformes) ne suffit pas à comprendre le droit « en action » : ce qui compte réellement, c''est la manière dont les juges, les administrations, les praticiens et les entreprises appliquent effectivement les règles. Deux textes identiques peuvent produire des résultats très différents selon les pratiques locales, les moyens des juridictions, les habitudes des acteurs économiques ou l''accès réel à la justice.

Le réalisme juridique invite donc le chercheur à étudier l''effectivité du droit : les règles sont-elles connues des acteurs auxquels elles s''adressent, sont-elles invoquées devant les tribunaux, les décisions sont-elles exécutées, existe-t-il un écart significatif entre la règle affichée et la pratique observée ? Cette préoccupation rejoint, pour le droit des affaires africain, une question centrale : l''harmonisation des textes (par exemple à travers des actes uniformes régionaux) ne garantit pas, par elle-même, une application uniforme, si les pratiques judiciaires et administratives demeurent très différentes d''un pays à l''autre.

## Comparer les deux courants plutôt que les opposer radicalement

Il serait réducteur de présenter le positivisme juridique et les approches économiques ou réalistes comme totalement incompatibles. Le positivisme garantit la rigueur conceptuelle et la sécurité juridique, indispensables à toute analyse scientifique du droit des affaires : on ne peut pas étudier l''effet économique d''une règle que l''on n''a pas correctement identifiée et interprétée. Les approches économiques et réalistes, de leur côté, rappellent que le droit n''est pas un système clos : il est fait pour produire des effets sur l''économie et la société, et ces effets peuvent diverger fortement de l''intention initiale du législateur.

Un chercheur avisé mobilise donc les deux perspectives de façon complémentaire : une analyse dogmatique précise pour établir ce que dit effectivement le droit, suivie d''une analyse économique ou empirique pour évaluer ce que ce droit produit réellement. C''est exactement cette articulation qui sera mobilisée, dans la leçon suivante, pour aborder le débat sur l''harmonisation régionale du droit des affaires.

## Points clés à retenir

- Le positivisme juridique étudie le droit comme un système de normes cohérent, à partir de ses propres textes et méthodes d''interprétation.
- L''analyse économique du droit évalue les règles à l''aune de leur efficacité économique et des incitations qu''elles créent.
- Le réalisme juridique insiste sur l''écart possible entre le droit affiché dans les textes et le droit réellement appliqué.
- Ces courants ne s''excluent pas : la rigueur dogmatique et l''analyse des effets réels se complètent dans une recherche doctorale solide.
- Pour le droit des affaires africain, la question de l''effectivité (le texte est-il réellement appliqué de façon homogène ?) est particulièrement centrale.

## Exercices pratiques

1. En trois phrases, distinguez l''objet d''étude du positivisme juridique de celui de l''analyse économique du droit.
2. Donnez un exemple fictif de règle de droit des affaires qui serait jugée cohérente par une analyse positiviste mais critiquée comme inefficace par une analyse économique, en expliquant pourquoi.
3. Expliquez, en vos propres termes, ce que signifie l''expression « droit sur le papier » versus « droit en action » et pourquoi cette distinction intéresse particulièrement le réalisme juridique.
4. Pour un projet de thèse portant sur le financement des petites entreprises, indiquez comment un chercheur pourrait combiner une analyse dogmatique et une analyse économique du droit.
5. Discutez la limite suivante : l''analyse économique du droit risque de réduire le droit des affaires à un simple instrument d''efficacité, en oubliant d''autres fonctions du droit (protection des parties faibles, stabilité sociale). Développez un contre-argument.

## Corrigé

1. Le positivisme juridique étudie le droit comme un système de normes posées par une autorité compétente, en se concentrant sur sa cohérence interne et son interprétation correcte. L''analyse économique du droit étudie les effets réels de ces normes sur les comportements économiques des acteurs, en se demandant si elles créent des incitations efficaces ou contre-productives.

2. Exemple fictif : une règle imposant un formalisme très lourd pour la constitution d''une sûreté peut être jugée parfaitement cohérente par une analyse positiviste, car elle s''articule sans contradiction avec le reste du droit des garanties. Une analyse économique pourrait pourtant la critiquer si ce formalisme décourage les petits prêteurs d''accorder du crédit, faute de pouvoir en supporter le coût, réduisant ainsi l''accès au financement pour les petites entreprises.

3. Le « droit sur le papier » désigne les règles telles qu''elles figurent dans les textes officiels. Le « droit en action » désigne la manière dont ces règles sont effectivement appliquées par les juges, les administrations et les acteurs économiques. Le réalisme juridique s''intéresse en priorité à ce second niveau, car un texte peut rester largement inappliqué ou être appliqué de façon très différente selon les contextes, ce qui rend l''étude du seul texte insuffisante.

4. Un chercheur pourrait d''abord mener une analyse dogmatique précise des règles existantes sur les sûretés, les procédures collectives ou l''accès au crédit, pour établir un état exact du droit applicable. Il pourrait ensuite mobiliser l''analyse économique du droit pour évaluer si ces règles créent des incitations favorables ou défavorables à l''octroi de crédit aux petites entreprises, par exemple en comparant le coût de constitution des garanties à leur effet protecteur pour le prêteur.

5. Le contre-argument consiste à rappeler que l''analyse économique du droit n''est qu''un outil d''évaluation parmi d''autres, et que la plupart des chercheurs qui la mobilisent ne prétendent pas réduire le droit à la seule efficacité : ils l''utilisent pour éclairer un aspect du fonctionnement des règles, à côté d''autres critères (équité, protection des parties faibles, stabilité institutionnelle) qui restent légitimes et peuvent être traités par d''autres approches, notamment le positivisme pour la cohérence des protections légales elles-mêmes.', 'texte', 45, false, 20
from public.courses c where c.slug = 'doc-droit'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Le positivisme juridique face à l''analyse économique du droit et au réalisme juridique');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Harmonisation régionale du droit des affaires (droit OHADA), diversité des traditions juridiques et droit international des investissements', 'Le droit des affaires en Afrique francophone est marqué, depuis plusieurs décennies, par un projet d''harmonisation régionale porté notamment par l''Organisation pour l''harmonisation en Afrique du droit des affaires, souvent désignée par son acronyme OHADA. Ce projet suscite un débat théorique important, qui oppose les partisans d''une unification poussée du droit des affaires à ceux qui insistent sur la diversité persistante des traditions juridiques nationales et sur la nécessité d''articuler ce droit régional avec le droit international des investissements. Cette leçon présente ce débat sans entrer dans le détail d''articles précis, qui doivent toujours être vérifiés dans les textes officiels en vigueur.

## Le projet d''harmonisation régionale : logique et promesses

L''idée d''harmoniser le droit des affaires entre plusieurs États d''Afrique répond à un constat partagé par de nombreux chercheurs : la diversité des législations nationales en matière de droit commercial, de droit des sociétés ou de droit des sûretés peut constituer un frein à l''investissement et aux échanges économiques régionaux, en multipliant les coûts d''adaptation pour les entreprises qui opèrent dans plusieurs pays. L''harmonisation vise donc à substituer, dans certains domaines du droit des affaires, un corpus commun de règles aux législations nationales disparates, afin de réduire l''incertitude juridique, de faciliter la circulation des investissements et de donner aux opérateurs économiques un cadre prévisible, quel que soit le pays concerné.

Sur le plan théorique, ce projet s''appuie sur une intuition proche de l''analyse économique du droit présentée dans la leçon précédente : des règles uniformes réduisent les coûts de transaction liés à la diversité normative, et une jurisprudence commune (lorsqu''elle existe au niveau régional) peut homogénéiser l''interprétation des textes. L''harmonisation régionale est ainsi souvent présentée comme un facteur d''attractivité pour les investisseurs, qui préfèrent un cadre juridique stable et lisible à une mosaïque de règles nationales changeantes.

## La critique de la diversité des traditions juridiques nationales

Ce projet rencontre cependant une critique récurrente dans la littérature : l''harmonisation des textes ne supprime pas, par elle-même, la diversité des traditions juridiques, des pratiques judiciaires et des contextes socio-économiques des États concernés. Un même texte harmonisé peut être interprété et appliqué différemment selon les habitudes des juridictions nationales, la formation des magistrats, les moyens matériels des tribunaux, ou les pratiques des administrations locales. Cette critique rejoint directement le réalisme juridique étudié dans la leçon précédente : le droit harmonisé « sur le papier » ne garantit pas une application harmonisée « en action ».

Certains chercheurs insistent également sur le risque d''un décalage entre des règles conçues pour répondre à des standards internationaux (souvent inspirés de systèmes juridiques extérieurs à la région) et les réalités économiques locales, notamment le poids de l''économie informelle, les pratiques contractuelles coutumières, ou les capacités institutionnelles variables d''un État à l''autre. L''harmonisation, pour être réellement efficace, suppose donc un accompagnement institutionnel (formation des praticiens, renforcement des juridictions, diffusion de l''information juridique) qui ne se décrète pas par le seul vote d''un texte commun.

## L''articulation avec le droit international des investissements

Un second axe du débat porte sur l''articulation entre le droit régional harmonisé et le droit international des investissements, c''est-à-dire l''ensemble des règles, le plus souvent issues de traités bilatéraux ou multilatéraux de protection des investissements, qui organisent les relations entre les États hôtes et les investisseurs étrangers. Cette articulation pose plusieurs questions théoriques. D''abord, une question de cohérence des normes : les garanties offertes aux investisseurs étrangers par les traités internationaux (protection contre l''expropriation, traitement juste et équitable, recours à l''arbitrage international) coexistent avec les règles régionales harmonisées de droit des sociétés ou de droit des sûretés, et il faut comprendre comment ces deux corpus s''articulent lorsqu''un même litige implique potentiellement les deux.

Ensuite, une question plus politique et doctrinale : certains chercheurs soulignent une tension entre la logique protectrice du droit international des investissements, pensée historiquement pour sécuriser le capital étranger, et les objectifs de développement économique régional que poursuit l''harmonisation du droit des affaires, censée bénéficier d''abord aux économies locales et à leurs opérateurs, grandes entreprises comme petites et moyennes entreprises. Le débat porte alors sur l''équilibre à trouver entre attractivité pour les capitaux extérieurs et appropriation du cadre juridique par les acteurs économiques locaux.

## Un débat à situer, non à trancher définitivement

Pour un doctorant, l''enjeu n''est pas de prendre parti de façon tranchée entre « l''harmonisation est bonne » ou « l''harmonisation est insuffisante », mais de montrer qu''il comprend les termes précis du débat et qu''il peut le mobiliser pour éclairer son propre sujet de thèse. Un chercheur travaillant sur le droit des sociétés commerciales pourra, par exemple, interroger dans quelle mesure l''harmonisation régionale a effectivement réduit les coûts de transaction pour les entreprises opérant dans plusieurs pays, tout en examinant si les pratiques judiciaires nationales restent divergentes malgré l''uniformité du texte. Un chercheur travaillant sur le financement des investissements pourra, de son côté, interroger la cohérence entre les garanties offertes par le droit régional et celles issues des traités internationaux de protection des investissements, sans prétendre inventer des chiffres ou des taux précis qui relèveraient de données qu''il faudrait vérifier au cas par cas.

Ce débat illustre bien, enfin, la complémentarité des courants vus en leçon 2 : une analyse positiviste rigoureuse est nécessaire pour établir précisément le contenu des textes harmonisés, tandis qu''une analyse réaliste et économique est nécessaire pour évaluer leurs effets réels sur l''investissement, les coûts de transaction et le développement économique régional.

## Points clés à retenir

- L''harmonisation régionale du droit des affaires vise à réduire l''incertitude juridique et les coûts de transaction liés à la diversité des législations nationales.
- Cette harmonisation ne supprime pas la diversité des traditions juridiques et des pratiques judiciaires, ce qui peut créer un écart entre le droit harmonisé affiché et son application réelle.
- Le droit international des investissements pose des questions d''articulation avec le droit régional harmonisé, tant sur le plan de la cohérence des normes que sur le plan des objectifs poursuivis.
- Un chercheur doctoral doit situer son sujet dans ce débat sans le trancher de façon simpliste, et sans jamais inventer de données chiffrées précises.
- Ce débat mobilise directement les outils vus en leçon 2 : analyse dogmatique des textes et analyse réaliste ou économique de leurs effets.

## Exercices pratiques

1. Expliquez, en vos propres termes, pourquoi l''harmonisation régionale du droit des affaires est souvent présentée comme un facteur d''attractivité pour les investisseurs.
2. Formulez un argument qui illustre la critique selon laquelle « le droit harmonisé sur le papier » peut diverger du « droit harmonisé en action », en l''appliquant à un exemple fictif de droit des sociétés.
3. Identifiez deux questions théoriques distinctes que pose l''articulation entre droit régional harmonisé et droit international des investissements.
4. Pour un sujet de thèse fictif portant sur l''accès des petites et moyennes entreprises au crédit dans un contexte régional harmonisé, formulez une problématique qui mobilise à la fois le débat sur l''harmonisation et celui vu en leçon 2 sur le positivisme et le réalisme juridique.
5. Discutez la proposition suivante : « l''harmonisation du droit des affaires profite d''abord aux grandes entreprises et aux investisseurs étrangers, pas aux économies locales ». Présentez un argument et un contre-argument, sans trancher de façon définitive.

## Corrigé

1. L''harmonisation réduit la diversité des législations nationales dans certains domaines du droit des affaires, ce qui diminue les coûts d''adaptation pour une entreprise ou un investisseur opérant dans plusieurs pays de la région et rend le cadre juridique plus prévisible, un facteur généralement considéré comme favorable à la décision d''investir.

2. Exemple fictif : un même texte harmonisé sur la constitution d''une société commerciale peut être appliqué rapidement et de façon souple dans un pays dont les juridictions sont bien dotées en moyens, et de façon beaucoup plus lente et formaliste dans un autre pays où les tribunaux sont moins équipés, créant ainsi une différence pratique malgré l''identité du texte applicable.

3. Une première question porte sur la cohérence des normes : comment les garanties du droit international des investissements (protection contre l''expropriation, recours à l''arbitrage) s''articulent avec les règles régionales de droit des sociétés ou des sûretés lorsqu''un même litige mobilise les deux corpus. Une seconde question porte sur l''équilibre des objectifs poursuivis : protéger le capital étranger d''un côté, favoriser le développement économique local et l''appropriation du droit par les acteurs locaux de l''autre.

4. Une problématique possible : « Dans quelle mesure l''harmonisation régionale du droit des sûretés a-t-elle effectivement réduit le coût du crédit pour les petites et moyennes entreprises, compte tenu des écarts persistants dans les pratiques judiciaires nationales d''application de ce droit harmonisé ? » Cette formulation mobilise le débat sur l''harmonisation (leçon 3) et l''opposition entre droit affiché et droit appliqué issue du réalisme juridique (leçon 2).

5. Argument en faveur de la proposition : les traités de protection des investissements et certaines règles harmonisées sont historiquement conçus pour sécuriser le capital étranger, et les grandes entreprises disposent de plus de moyens pour mobiliser ces protections (conseils juridiques, recours à l''arbitrage international) que les petites entreprises locales. Contre-argument : l''harmonisation régionale vise aussi, dans son principe, à créer un marché régional plus intégré dont les entreprises locales peuvent bénéficier en accédant plus facilement à des partenaires ou à des financements dans les pays voisins, et la question de savoir qui en bénéficie réellement reste, précisément, un objet d''étude empirique plutôt qu''une évidence à affirmer sans vérification.', 'texte', 45, false, 30
from public.courses c where c.slug = 'doc-droit'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Harmonisation régionale du droit des affaires (droit OHADA), diversité des traditions juridiques et droit international des investissements');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Les méthodes de recherche en droit des affaires : dogmatique, droit comparé, méthode empirique', 'La recherche en droit des affaires mobilise plusieurs méthodes, qui ne s''opposent pas mais se complètent selon la question posée. Cette leçon présente trois grandes méthodes : l''analyse dogmatique ou doctrinale, le droit comparé, et la méthode empirique en droit, centrée notamment sur l''analyse de la jurisprudence. Elle propose ensuite un exemple de protocole de recherche appliqué à un contexte sénégalais fictif.

## L''analyse dogmatique ou doctrinale

L''analyse dogmatique, parfois appelée analyse doctrinale, consiste à étudier le droit à partir de ses propres sources : textes législatifs et réglementaires, actes régionaux harmonisés, décisions de justice, et travaux des auteurs qui commentent ces sources. Le chercheur dogmatique cherche à systématiser le droit applicable à une question précise : quelles sont les règles en vigueur, comment s''articulent-elles entre elles, quelles interprétations ont été proposées, quelles contradictions ou lacunes subsistent.

Cette méthode suppose une grande rigueur dans l''identification des sources : il faut distinguer un texte en vigueur d''un texte abrogé ou d''un projet de réforme, distinguer une règle générale d''une exception, et toujours vérifier l''état actuel du droit plutôt que de se fier à une version ancienne ou à une citation de seconde main. C''est la méthode de base de toute recherche en droit des affaires, y compris lorsque l''on mobilise ensuite d''autres approches : on ne peut pas comparer des systèmes juridiques, ni étudier l''effectivité d''une règle, si l''on n''a pas d''abord correctement établi ce que dit le droit.

## Le droit comparé

Le droit comparé consiste à mettre en regard plusieurs systèmes juridiques pour en dégager les ressemblances, les différences et les logiques propres à chacun. Appliqué au droit des affaires, le droit comparé peut porter, par exemple, sur la comparaison entre un système régional harmonisé et un système juridique national resté hors de ce cadre, ou entre deux traditions juridiques différentes (par exemple une tradition de droit civil et une tradition de common law) sur un même sujet, comme le traitement des sûretés ou la responsabilité des dirigeants de société.

Le droit comparé exige de la prudence méthodologique : il ne suffit pas de juxtaposer deux textes qui portent le même nom pour conclure qu''ils règlent la même chose de la même façon, car un même concept juridique peut avoir une portée très différente selon le contexte institutionnel, économique et judiciaire dans lequel il s''insère. Un bon travail de droit comparé explique toujours pourquoi deux systèmes diffèrent ou convergent, en resituant chaque règle dans son contexte, plutôt que de se limiter à une liste de différences textuelles.

## La méthode empirique en droit : l''analyse de la jurisprudence

La méthode empirique en droit cherche à observer comment le droit fonctionne réellement, au-delà du texte. En droit des affaires, cette méthode repose le plus souvent sur l''analyse de la jurisprudence : on étudie un ensemble de décisions de justice portant sur une même question, pour en dégager des tendances (comment les juges interprètent-ils une règle en pratique, quelles solutions reviennent le plus souvent, existe-t-il des divergences entre juridictions), plutôt que de se contenter d''étudier le texte de loi de façon abstraite.

Cette méthode suppose, en principe, de rassembler un corpus de décisions suffisamment représentatif, de les classer selon des critères pertinents (nature du litige, juridiction, période, solution retenue), puis d''en tirer des observations prudentes sur les pratiques réelles d''application du droit. Il est essentiel de ne jamais inventer ou citer de façon approximative une décision de justice précise que l''on n''a pas vérifiée : lorsqu''on évoque la jurisprudence dans un travail doctoral, on le fait soit en citant des décisions réellement identifiées et vérifiées, soit en parlant, de façon prudente et générale, des « tendances observées dans la jurisprudence en la matière », sans attribuer une solution précise à une décision inventée. La méthode empirique peut aussi s''appuyer sur d''autres données que la jurisprudence : entretiens avec des praticiens, enquêtes auprès d''entreprises, étude de la pratique contractuelle, lorsque ces données sont effectivement disponibles et correctement recueillies.

## Articuler les trois méthodes dans un même projet de thèse

Un projet de recherche doctorale en droit des affaires mobilise rarement une seule méthode. Le point de départ est presque toujours dogmatique : établir précisément l''état du droit applicable à la question étudiée. Vient ensuite, selon le sujet, soit une comparaison avec un ou plusieurs autres systèmes juridiques pour éclairer les choix possibles, soit une étude empirique de la jurisprudence ou de la pratique pour vérifier comment le droit identifié est réellement appliqué, soit les deux.

## Exemple de protocole de recherche appliqué à un contexte sénégalais fictif

Prenons un sujet fictif : l''effectivité des garanties accordées aux créanciers dans le financement des petites entreprises d''un secteur donné, dans un contexte sénégalais imaginaire. Un protocole de recherche pourrait s''organiser en quatre étapes. Première étape, dogmatique : identifier précisément, à partir des textes en vigueur, les règles applicables à la constitution et à la mise en œuvre des garanties concernées, en vérifiant leur version actuelle. Deuxième étape, comparative : situer ces règles par rapport à celles d''un ou deux autres pays de la région, pour identifier si des choix alternatifs existent et quelles logiques les sous-tendent. Troisième étape, empirique : constituer, dans la mesure du possible, un corpus de décisions de justice portant sur la mise en œuvre de ces garanties, et compléter éventuellement ce corpus par des entretiens avec des praticiens (notaires, banquiers, avocats) pour documenter les pratiques réelles, sans jamais présenter des données non vérifiées comme établies. Quatrième étape, analytique : confronter ce que disent les textes, ce que montre la comparaison et ce que révèle l''observation empirique, pour formuler une appréciation argumentée de l''effectivité réelle des garanties étudiées et, le cas échéant, des pistes de réflexion.

Ce protocole illustre bien la logique générale attendue au doctorat : partir du droit tel qu''il est écrit, le comparer pour en éclairer les choix, puis vérifier, autant que les données le permettent, comment il fonctionne réellement en pratique.

## Points clés à retenir

- L''analyse dogmatique établit avec rigueur l''état du droit applicable à partir des sources officielles ; c''est le point de départ de toute recherche.
- Le droit comparé met en regard plusieurs systèmes juridiques, en resituant toujours chaque règle dans son contexte institutionnel et économique.
- La méthode empirique, notamment l''analyse de la jurisprudence, observe comment le droit fonctionne réellement, sans jamais inventer ni citer de façon approximative une décision précise.
- Un bon protocole de recherche doctorale articule ces trois méthodes selon une progression logique : établir le droit, le comparer, vérifier son application réelle.
- Toute donnée chiffrée ou toute décision de justice évoquée doit être réellement vérifiée ; à défaut, on reste au niveau de tendances générales prudemment formulées.

## Exercices pratiques

1. Expliquez pourquoi l''analyse dogmatique est presque toujours la première étape d''un travail de recherche en droit des affaires, même lorsque l''objectif final est une étude empirique.
2. Donnez un exemple de question de recherche fictive pour laquelle le droit comparé serait particulièrement utile, en expliquant pourquoi.
3. Expliquez la différence entre « citer une décision de justice précise et vérifiée » et « évoquer une tendance jurisprudentielle générale », et pourquoi cette distinction est importante pour l''intégrité d''un travail doctoral.
4. En reprenant le protocole en quatre étapes présenté dans la leçon, adaptez-le à un sujet fictif de votre choix portant sur un autre aspect du droit des affaires.
5. Discutez les limites pratiques que peut rencontrer un doctorant souhaitant constituer un corpus de décisions de justice dans un contexte où l''accès à la jurisprudence est inégal ou incomplet, et proposez une ou deux solutions méthodologiques raisonnables.

## Corrigé

1. L''analyse dogmatique est première parce qu''elle établit ce que dit effectivement le droit applicable. Sans cette étape, toute comparaison ou toute observation empirique risquerait de porter sur une mauvaise compréhension du cadre juridique réel, ce qui invaliderait les conclusions tirées ensuite.

2. Exemple fictif : une question portant sur les différentes manières d''organiser la responsabilité des dirigeants de société en cas de difficulté financière de l''entreprise se prête bien au droit comparé, car elle permet de mettre en regard plusieurs choix institutionnels possibles (plus ou moins protecteurs des dirigeants ou des créanciers) et d''en comprendre les logiques respectives.

3. Citer une décision de justice précise et vérifiée signifie s''appuyer sur une référence réelle, que l''on a identifiée et dont on peut rendre compte fidèlement. Évoquer une tendance jurisprudentielle générale signifie parler, de façon prudente, d''une orientation observée sur un ensemble de décisions, sans attribuer cette orientation à une décision inventée ou non vérifiée. Cette distinction est essentielle car un travail doctoral qui citerait une jurisprudence fictive comme si elle était réelle commettrait une erreur grave d''intégrité scientifique.

4. Il n''existe pas de réponse unique : l''évaluation porte sur la cohérence de l''adaptation, qui doit conserver la progression dogmatique puis comparative puis empirique puis analytique, appliquée de façon pertinente au nouveau sujet choisi (par exemple la protection des associés minoritaires, ou les délais de paiement entre entreprises).

5. Parmi les limites possibles : bases de données de jurisprudence incomplètes, accès restreint à certaines décisions, absence de publication systématique. Des solutions raisonnables incluent la limitation explicite du corpus étudié à ce qui est effectivement accessible, en le précisant clairement dans la thèse, le recours complémentaire à des entretiens avec des praticiens pour documenter les pratiques non reflétées dans les décisions publiées, ou encore la comparaison avec un pays où l''accès à la jurisprudence est meilleur, pour éclairer par contraste le contexte étudié.', 'texte', 45, false, 40
from public.courses c where c.slug = 'doc-droit'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Les méthodes de recherche en droit des affaires : dogmatique, droit comparé, méthode empirique');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Épreuve type d''examen de qualification : question de synthèse et corrigé détaillé', 'Cette leçon propose une épreuve type d''examen de qualification doctorale en droit des affaires, construite sur le modèle d''une question de synthèse. Cette question n''est pas une question officielle d''un établissement précis : elle illustre le format attendu et mobilise les deux grands débats théoriques et la méthode de recherche étudiés dans les leçons précédentes.

## Énoncé de la question type

« Dans quelle mesure l''harmonisation régionale du droit des affaires permet-elle réellement de sécuriser les investissements et de réduire les coûts de transaction pour les entreprises, compte tenu de la diversité persistante des pratiques judiciaires nationales ? Vous répondrez en mobilisant les apports et les limites du positivisme juridique, de l''analyse économique du droit et du réalisme juridique, et en proposant une démarche méthodologique pour instruire cette question. »

Cette question appelle une réponse structurée, d''une durée orale équivalente à quinze ou vingt minutes, suivie de questions du jury. Elle ne demande pas de réciter le contenu des leçons précédentes, mais de les articuler pour construire une argumentation originale.

## Plan de réponse détaillé

Une introduction efficace commence par reformuler la question en termes précis, en distinguant deux sous-questions implicites : d''une part, l''harmonisation régionale atteint-elle ses objectifs affichés (sécurisation des investissements, réduction des coûts de transaction) ; d''autre part, quels outils théoriques et méthodologiques permettent d''instruire sérieusement cette question sans se contenter d''affirmations non vérifiées. L''introduction annonce ensuite un plan en deux ou trois parties.

Une première partie peut être consacrée à l''apport du positivisme juridique pour établir, de façon rigoureuse, ce que l''harmonisation régionale change effectivement sur le plan des textes : substitution de règles nationales disparates par un corpus commun dans certains domaines, cohérence accrue des concepts utilisés, prévisibilité renforcée pour les opérateurs économiques qui connaissent ce corpus. Cette partie doit aussi mentionner les limites propres au positivisme : il décrit la cohérence du système normatif, mais ne permet pas, à lui seul, de savoir si cette cohérence se traduit par une sécurisation réelle des investissements.

Une deuxième partie peut mobiliser l''analyse économique du droit et le réalisme juridique pour interroger les effets réels de l''harmonisation. L''analyse économique du droit permet de formuler l''hypothèse que des règles harmonisées réduisent les coûts de transaction liés à la diversité normative, en facilitant la circulation des investissements entre pays de la région. Le réalisme juridique vient nuancer cette hypothèse en rappelant que l''harmonisation des textes ne garantit pas une application harmonisée : les pratiques judiciaires, les moyens des juridictions et les habitudes administratives peuvent continuer à diverger fortement d''un pays à l''autre, ce qui peut maintenir, en pratique, une partie des coûts de transaction que l''harmonisation visait à réduire.

Une troisième partie, méthodologique, peut proposer une démarche concrète pour instruire sérieusement cette question : une analyse dogmatique précise des textes harmonisés pertinents, une comparaison avec le droit antérieur à l''harmonisation ou avec un pays resté hors du cadre régional, et une étude empirique s''appuyant, dans la mesure du possible, sur l''observation de la jurisprudence et sur des entretiens avec des praticiens, pour vérifier si les promesses de sécurisation et de réduction des coûts se vérifient réellement dans un secteur ou un contexte donné.

La conclusion doit éviter toute réponse tranchée et non nuancée. Elle peut rappeler que l''harmonisation régionale constitue une avancée réelle sur le plan de la cohérence normative, mais que son effet réel sur la sécurisation des investissements et la réduction des coûts de transaction reste une question empirique, qui dépend fortement des capacités institutionnelles locales et qui mérite d''être étudiée au cas par cas plutôt que tranchée par principe.

## Ce que le jury valorise dans cette réponse

Un jury valoriserait, dans une telle réponse, plusieurs éléments : la capacité à distinguer clairement les trois courants théoriques mobilisés sans les confondre ; la capacité à montrer leur articulation plutôt que de les opposer artificiellement ; la prudence dans l''affirmation des effets réels de l''harmonisation, qui sont présentés comme des hypothèses à vérifier plutôt que comme des certitudes ; et la proposition d''une démarche méthodologique concrète et réaliste, plutôt qu''une méthode vague ou disproportionnée par rapport au sujet.

Un jury sanctionnerait, à l''inverse, une réponse qui se contenterait de décrire l''harmonisation régionale sans la relier aux débats théoriques, une réponse qui présenterait un seul courant comme la seule grille de lecture valable, ou une réponse qui inventerait des chiffres précis, des taux ou des décisions de justice non vérifiées pour « étoffer » l''argumentation.

## Points clés à retenir

- Une bonne réponse de synthèse articule plusieurs courants théoriques plutôt que de les juxtaposer ou de n''en retenir qu''un seul.
- La prudence dans l''affirmation des effets réels d''une réforme ou d''une politique juridique est une qualité attendue, pas un signe de faiblesse.
- Une proposition méthodologique concrète (quelles sources, quelle comparaison, quelles données empiriques) renforce considérablement une réponse de synthèse.
- Il ne faut jamais inventer de données chiffrées, de taux ou de jurisprudence précise pour appuyer une argumentation à l''oral comme à l''écrit.
- Le plan en trois temps (établir le droit, interroger ses effets, proposer une méthode pour vérifier) est transposable à de nombreuses questions de synthèse en droit des affaires.

## Exercices pratiques

1. Reformulez, en une phrase, la question type de cette leçon en identifiant ses deux sous-questions implicites.
2. Rédigez l''introduction (cinq à huit lignes) que vous donneriez à l''oral pour cette question type.
3. Développez, en un paragraphe, la partie consacrée à l''apport et aux limites du positivisme juridique pour cette question.
4. Proposez une question de relance que pourrait poser un jury après cette réponse, et esquissez les grandes lignes de la réponse que vous y donneriez.
5. Rédigez une variante de cette question type appliquée à un autre sujet du droit des affaires de votre choix (par exemple la protection des associés minoritaires ou le droit des procédures collectives), en respectant la même logique de construction.

## Corrigé

1. La question type pose, d''une part, si l''harmonisation régionale atteint réellement ses objectifs affichés de sécurisation des investissements et de réduction des coûts de transaction, et, d''autre part, quels outils théoriques et méthodologiques permettent d''instruire sérieusement cette question sans se contenter d''affirmations non vérifiées.

2. Une introduction possible : « La question posée invite à examiner si l''harmonisation régionale du droit des affaires atteint réellement les objectifs qui lui sont généralement attribués, à savoir la sécurisation des investissements et la réduction des coûts de transaction, au-delà de la seule cohérence des textes. Je montrerai, dans un premier temps, ce que le positivisme juridique permet d''établir sur ce point, puis, dans un second temps, comment l''analyse économique du droit et le réalisme juridique viennent nuancer cette première approche, avant de proposer, enfin, une démarche méthodologique pour instruire empiriquement cette question. »

3. Le positivisme juridique permet d''établir avec rigueur ce que l''harmonisation change sur le plan des textes : remplacement de règles nationales disparates par un corpus commun, cohérence conceptuelle accrue, prévisibilité renforcée pour les opérateurs qui connaissent ce corpus harmonisé. Sa limite est qu''il décrit la cohérence formelle du système sans pouvoir, à lui seul, établir si cette cohérence se traduit par une sécurisation réelle des investissements ou par une réduction effective des coûts de transaction, questions qui relèvent d''une analyse des effets réels plutôt que de la seule structure normative.

4. Une question de relance possible : « Vous avez mentionné que les pratiques judiciaires nationales peuvent diverger malgré l''harmonisation des textes ; comment procéderiez-vous concrètement pour vérifier cette divergence dans votre futur travail de thèse ? » Une réponse esquissée pourrait proposer de constituer, dans la mesure du possible, un corpus de décisions portant sur l''application des règles harmonisées dans deux ou trois pays de la région, de les comparer, et de compléter cette observation par des entretiens avec des praticiens locaux pour documenter les pratiques non reflétées dans les décisions publiées.

5. Une variante possible pour le droit des procédures collectives : « Dans quelle mesure l''harmonisation régionale des procédures collectives permet-elle réellement de mieux concilier le sauvetage des entreprises en difficulté et la protection des créanciers, compte tenu de la diversité persistante des pratiques judiciaires nationales en la matière ? » L''évaluation porte sur la cohérence de la transposition : la nouvelle question doit conserver la même structure (constat affiché, débat théorique à mobiliser, démarche méthodologique à proposer) appliquée à un objet différent.', 'texte', 45, false, 50
from public.courses c where c.slug = 'doc-droit'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Épreuve type d''examen de qualification : question de synthèse et corrigé détaillé');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : positivisme juridique, analyse économique du droit et réalisme juridique', '## Fiche du cours vidéo

Durée : 1h30. Niveau : Doctorat, examen de qualification en droit des affaires.
Objectifs : maîtriser le débat entre le positivisme juridique et les approches économiques et réalistes du droit, savoir les comparer de façon critique, et pouvoir les mobiliser à l''oral face à un jury.
Matériel : diaporama avec le tableau comparatif des courants, tableau blanc pour les schémas.
Prérequis : avoir lu la leçon texte correspondante et préparé une fiche de lecture pour chacun des deux courants.

## Déroulé minuté

## 00:00 – 05:00 · Introduction et enjeux de la séance

Bonjour à toutes et à tous. Dans cette séance d''une heure trente, nous allons reprendre en profondeur l''un des débats les plus structurants pour quiconque se présente à un examen de qualification doctorale en droit des affaires : l''opposition, et surtout l''articulation, entre le positivisme juridique d''un côté, et l''analyse économique du droit ainsi que le réalisme juridique de l''autre. Ce débat n''est pas un simple exercice académique : il conditionne la manière dont vous allez, toute votre carrière de chercheur, poser vos questions de recherche. Je vous propose de procéder en plusieurs temps : d''abord bien poser le positivisme juridique, ensuite montrer ses limites et introduire l''analyse économique du droit, puis le réalisme juridique, avant de les mettre en regard et de nous entraîner sur un cas appliqué au contexte africain. Gardez vos fiches de lecture sous les yeux, nous allons les enrichir au fil de la séance.

## 05:00 – 20:00 · Le positivisme juridique en détail

Commençons par le positivisme juridique. L''idée centrale, rappelons-la clairement : le droit est un système de normes posées par une autorité compétente, et la tâche du juriste est de décrire ce système tel qu''il est, pas de porter un jugement sur son efficacité ou sa justice. Cette approche a une force considérable : elle garantit la rigueur conceptuelle. Quand vous étudiez, par exemple, les règles qui organisent une société commerciale, vous devez d''abord savoir exactement ce que dit le texte applicable, comment il s''articule avec les autres règles, et comment l''interpréter selon les méthodes classiques — interprétation littérale, systématique, téléologique.

Je vous invite à visualiser le positivisme comme le travail d''un architecte qui dessine les plans d''un bâtiment déjà construit : il décrit précisément l''agencement des pièces, les flux de circulation, la cohérence structurelle. Il ne se demande pas, à ce stade, si les habitants seront heureux d''y vivre. C''est tout l''intérêt de cette approche pour la sécurité juridique : elle offre une base solide, prévisible, sur laquelle les acteurs économiques peuvent s''appuyer.

Mais cette force est aussi, potentiellement, une limite. Si je m''arrête au positivisme, je peux décrire une règle parfaitement cohérente sur le plan logique, et pourtant totalement contre-productive sur le plan économique. Prenons un exemple fictif : une règle qui impose un formalisme très lourd pour constituer une garantie bancaire. Du point de vue positiviste, cette règle peut être irréprochable : elle s''articule sans contradiction avec le reste du droit des garanties, elle respecte la hiérarchie des normes. Mais est-elle efficace ? Est-ce qu''elle facilite ou qu''elle freine l''accès au crédit des petites entreprises ? Le positivisme, par construction, ne pose pas cette question. C''est précisément la porte d''entrée vers notre second courant.

## 20:00 – 35:00 · Les limites du positivisme et l''émergence des approches économiques

Reprenons l''exemple de la garantie bancaire trop formaliste. L''analyse économique du droit, souvent appelée « law and economics », va directement interroger les effets de cette règle sur les comportements des acteurs. Elle part du postulat que le droit crée des incitations : une règle qui augmente le coût de constitution d''une garantie va, mécaniquement, renchérir le crédit ou réduire le nombre de prêteurs disposés à prêter à des conditions raisonnables. L''analyse économique du droit mobilise des concepts empruntés à la microéconomie : les coûts de transaction, les asymétries d''information, les incitations.

Ce qui est important pour vous, candidats à l''examen de qualification, c''est de comprendre que cette approche ne dit pas que le positivisme a tort. Elle dit que la cohérence formelle d''une règle ne garantit pas son efficacité économique, et qu''il faut un outil d''analyse supplémentaire pour évaluer cette efficacité. Vous pouvez illustrer cela à l''oral avec une formule simple : le positivisme répond à la question « est-ce cohérent ? », l''analyse économique répond à la question « est-ce efficace ? ». Deux questions différentes, deux réponses potentiellement différentes pour la même règle.

Je vous propose un exercice mental : pensez à une règle de droit des affaires de votre choix, et demandez-vous successivement si elle est cohérente avec le reste du système (question positiviste), puis si elle crée de bonnes incitations économiques (question de l''analyse économique du droit). Notez vos réponses, nous y reviendrons après la pause.

## 35:00 – 50:00 · Le réalisme juridique

Le réalisme juridique porte une critique complémentaire, mais distincte de celle de l''analyse économique. Pour les réalistes, ce qui compte, c''est le droit « en action », c''est-à-dire la manière dont les juges, les administrations et les praticiens appliquent effectivement les règles, par opposition au droit « sur le papier », c''est-à-dire le texte officiel. Deux textes identiques peuvent produire des résultats très différents selon les pratiques locales, les moyens des juridictions, ou l''accès réel des acteurs à la justice.

Pour le droit des affaires africain en particulier, cette distinction est centrale. Vous pouvez avoir un texte harmonisé au niveau régional, parfaitement rédigé, et pourtant observer des pratiques judiciaires très différentes d''un pays à l''autre, en fonction des moyens des tribunaux, de la formation des magistrats, ou des habitudes des praticiens. Le réaliste vous dira : n''étudiez pas seulement le texte, étudiez son application réelle, par exemple à travers l''analyse de la jurisprudence ou des entretiens avec des praticiens.

Attention à un point de méthode très important, que je veux souligner avec insistance : quand vous parlez de jurisprudence à l''oral devant un jury, vous ne devez jamais citer une décision précise que vous n''avez pas vérifiée. Si vous voulez illustrer une tendance jurisprudentielle, parlez de façon prudente et générale de « tendances observées », sans inventer un numéro de décision ou une date précise. C''est une question d''intégrité scientifique, et un jury y sera très attentif.

## 50:00 – 55:00 · Pause et quiz interactif

Prenons une pause de quelques minutes pour un quiz rapide. Première question : le positivisme juridique répond principalement à la question de la cohérence ou à la question de l''efficacité économique d''une règle ? Réponse : la cohérence. Deuxième question : quel courant insiste sur l''écart entre le droit sur le papier et le droit en action ? Réponse : le réalisme juridique. Troisième question : quels concepts économiques mobilise l''analyse économique du droit ? Réponse : les coûts de transaction, les incitations, les asymétries d''information. Prenez un instant pour vérifier vos réponses à l''exercice mental proposé plus tôt, et notez si votre règle choisie vous semble à la fois cohérente et efficace, ou si un écart apparaît entre les deux critères.

## 55:00 – 1:10:00 · Comparer les courants plutôt que les opposer

Reprenons maintenant du recul. Il serait réducteur de présenter ces courants comme irréconciliables. En réalité, un chercheur compétent les articule. L''analyse dogmatique, positiviste, est indispensable pour établir précisément ce que dit le droit : on ne peut pas évaluer l''effet économique d''une règle que l''on n''a pas correctement identifiée et interprétée. L''analyse économique et le réalisme juridique viennent ensuite enrichir cette base en interrogeant les effets réels et l''application concrète de la règle.

Je vous conseille, pour l''examen, de toujours présenter ces courants dans cet ordre logique : d''abord établir le droit (positivisme), puis interroger ses effets économiques (analyse économique), puis vérifier son application réelle (réalisme juridique). Cette structure en trois temps est un squelette de réponse que vous pourrez réutiliser pour de très nombreuses questions de synthèse, quel que soit le sujet précis posé par le jury.

## 1:10:00 – 1:20:00 · Application à un cas africain fictif

Prenons un cas fictif complet pour nous entraîner. Imaginons une règle régionale harmonisée qui impose des conditions précises pour la constitution d''une sûreté mobilière destinée à garantir un crédit accordé à une petite entreprise. Premièrement, analyse positiviste : la règle est-elle cohérente avec le reste du droit des sûretés et du droit des contrats ? Deuxièmement, analyse économique : cette règle facilite-t-elle ou complique-t-elle l''accès au crédit, en pesant sur le coût de constitution de la garantie et sur le risque perçu par le prêteur ? Troisièmement, analyse réaliste : comment cette règle est-elle effectivement appliquée en pratique — les tribunaux locaux la mettent-ils en œuvre rapidement, les praticiens la connaissent-ils bien, existe-t-il un écart entre les pays de la région qui appliquent pourtant le même texte harmonisé ?

Vous voyez que cette grille de lecture en trois temps permet de construire une réponse complète et nuancée, sans jamais avoir besoin d''inventer un chiffre ou une décision de justice précise : on reste au niveau des mécanismes et des questions à instruire, ce qui est exactement ce qu''un jury doctoral attend.

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Pour synthétiser cette séance : retenez la distinction entre les trois questions — cohérence, efficacité économique, application réelle — et la nécessité de les articuler plutôt que de n''en retenir qu''une. Voici l''évaluation finale, cinq questions.

Question 1 : quelle question centrale pose le positivisme juridique ? Réponse : il pose la question de la cohérence du système normatif, pas celle de son efficacité ou de son effectivité.

Question 2 : quels outils conceptuels mobilise l''analyse économique du droit ? Réponse : les incitations, les coûts de transaction, les asymétries d''information, pour évaluer les effets réels des règles sur les comportements économiques.

Question 3 : que signifie l''opposition entre « droit sur le papier » et « droit en action » ? Réponse : le droit sur le papier désigne les textes officiels, le droit en action désigne la manière dont ces textes sont réellement appliqués par les juges, les administrations et les praticiens ; le réalisme juridique insiste sur l''écart possible entre les deux.

Question 4 : pourquoi est-il risqué de ne mobiliser qu''un seul de ces trois courants dans une réponse d''examen ? Réponse : parce que chaque courant éclaire une dimension différente et incomplète du droit ; une réponse complète articule la cohérence, l''efficacité économique et l''application réelle.

Question 5 : quelle règle de prudence s''impose lorsqu''on évoque la jurisprudence à l''oral ? Réponse : ne jamais citer une décision précise non vérifiée ; parler, si besoin, de tendances générales observées, formulées avec prudence. Merci pour votre attention, je vous retrouve dans la prochaine séance pour le second grand débat théorique du champ.', 'video', 90, false, 60
from public.courses c where c.slug = 'doc-droit'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : positivisme juridique, analyse économique du droit et réalisme juridique');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : harmonisation régionale (droit OHADA), diversité des traditions juridiques et droit international des investissements', '## Fiche du cours vidéo

Durée : 1h30. Niveau : Doctorat, examen de qualification en droit des affaires.
Objectifs : maîtriser le débat sur l''harmonisation régionale du droit des affaires face à la diversité des traditions juridiques nationales, et comprendre son articulation avec le droit international des investissements.
Matériel : diaporama, carte mentale des acteurs et des niveaux de normes (national, régional, international).
Prérequis : leçon texte correspondante lue, séance vidéo précédente assimilée.

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Bienvenue dans cette nouvelle séance. Nous allons aborder un débat qui est, pour beaucoup de doctorants en droit des affaires africain, le cœur même de leur problématique de thèse : celui de l''harmonisation régionale du droit des affaires, souvent associée au droit OHADA, face à la diversité persistante des traditions juridiques nationales, et son articulation avec le droit international des investissements. Je vous rappelle d''emblée la règle de prudence : nous ne citerons aucun article précis de texte, aucune disposition chiffrée, et nous resterons au niveau des mécanismes et des débats, qu''il appartient toujours à chacun de vérifier dans les textes officiels en vigueur au moment de sa recherche.

## 05:00 – 20:00 · Le projet d''harmonisation régionale : logique et promesses

Replaçons d''abord le projet dans sa logique. L''idée de départ est économique et juridique à la fois : la diversité des législations nationales en droit des affaires peut constituer un frein pour les entreprises qui opèrent dans plusieurs pays d''une même région, en multipliant les coûts d''adaptation à des règles différentes. L''harmonisation vise à substituer, dans certains domaines, un corpus commun de règles aux législations nationales disparates. L''objectif affiché est triple : réduire l''incertitude juridique, faciliter la circulation des investissements, et offrir un cadre prévisible aux opérateurs économiques, quel que soit le pays de la région dans lequel ils opèrent.

Sur le plan théorique, remarquez le lien direct avec ce que nous avons vu dans la séance précédente : cette logique s''appuie sur une intuition proche de l''analyse économique du droit. Des règles uniformes réduisent les coûts de transaction liés à la diversité normative. C''est un argument puissant, souvent mis en avant pour justifier la poursuite et l''approfondissement du projet d''harmonisation régionale.

## 20:00 – 35:00 · La critique de la diversité des traditions juridiques

Mais ce projet rencontre une critique récurrente, qui mobilise directement le réalisme juridique étudié précédemment. L''harmonisation des textes ne supprime pas, par elle-même, la diversité des pratiques judiciaires, des traditions juridiques et des contextes socio-économiques des États concernés. Un même texte harmonisé peut être interprété et appliqué très différemment selon les habitudes des juridictions nationales, la formation des magistrats, ou les moyens matériels des tribunaux.

Je vous propose de visualiser cela avec une image simple : l''harmonisation régionale construit une seule carte routière pour plusieurs pays, mais chaque pays continue de conduire avec ses propres habitudes, ses propres véhicules, et des routes en meilleur ou moins bon état. La carte est identique, le trajet réel peut rester très différent. C''est exactement la critique du décalage entre le droit harmonisé affiché et son application réelle. Certains chercheurs ajoutent une nuance supplémentaire : le risque d''un décalage entre des standards conçus en partie à partir de modèles extérieurs à la région et les réalités économiques locales, notamment le poids de l''économie informelle ou les pratiques contractuelles coutumières.

## 35:00 – 50:00 · L''articulation avec le droit international des investissements

Passons maintenant au deuxième grand axe : l''articulation entre ce droit régional harmonisé et le droit international des investissements, c''est-à-dire l''ensemble des règles, souvent issues de traités, qui organisent les relations entre États hôtes et investisseurs étrangers. Deux questions théoriques se posent ici.

La première est une question de cohérence des normes. Les garanties offertes aux investisseurs étrangers par les traités internationaux — protection contre l''expropriation, traitement juste et équitable, recours à l''arbitrage international — coexistent avec les règles régionales harmonisées de droit des sociétés ou de droit des sûretés. Il faut comprendre comment ces deux corpus de normes s''articulent lorsqu''un même litige implique potentiellement les deux : par exemple un investisseur étranger qui invoquerait à la fois une protection issue d''un traité et des règles de droit des sociétés harmonisées au niveau régional.

La seconde question est plus politique et doctrinale. Certains chercheurs soulignent une tension entre la logique protectrice du droit international des investissements, pensée historiquement pour sécuriser le capital étranger, et les objectifs de développement économique régional que poursuit l''harmonisation du droit des affaires, censée bénéficier d''abord aux économies locales. Le débat porte alors sur l''équilibre à trouver entre attractivité pour les capitaux extérieurs et appropriation du cadre juridique par les acteurs économiques locaux, grandes entreprises comme petites et moyennes entreprises.

## 50:00 – 55:00 · Pause et quiz interactif

Petit quiz de vérification. Première question : quel est l''objectif économique affiché de l''harmonisation régionale du droit des affaires ? Réponse : réduire les coûts de transaction liés à la diversité des législations nationales et sécuriser les investissements régionaux. Deuxième question : quelle critique le réalisme juridique adresse-t-il à ce projet ? Réponse : l''harmonisation des textes ne garantit pas une application harmonisée, du fait de la diversité des pratiques judiciaires nationales. Troisième question : quels sont les deux grands axes du débat sur l''articulation avec le droit international des investissements ? Réponse : la cohérence des normes entre les deux corpus, et l''équilibre entre protection du capital étranger et développement économique local.

## 55:00 – 1:10:00 · Ne pas trancher, mais situer son sujet

Pour un doctorant, l''enjeu n''est pas de prendre parti de façon tranchée entre « l''harmonisation est bonne » ou « l''harmonisation est insuffisante ». L''enjeu est de montrer que vous comprenez précisément les termes du débat et que vous pouvez le mobiliser pour éclairer votre propre sujet de thèse. Prenons un exemple : si votre sujet porte sur le droit des sociétés commerciales, vous pourrez interroger dans quelle mesure l''harmonisation a effectivement réduit les coûts de transaction pour les entreprises opérant dans plusieurs pays, tout en examinant si les pratiques judiciaires nationales restent divergentes malgré l''uniformité du texte. Si votre sujet porte sur le financement des investissements, vous pourrez interroger la cohérence entre les garanties du droit régional et celles des traités internationaux, sans jamais inventer de chiffres ou de taux précis.

Cette démarche illustre, une fois encore, la complémentarité des courants vus en séance précédente : une analyse positiviste rigoureuse pour établir le contenu exact des textes harmonisés, une analyse réaliste et économique pour évaluer leurs effets réels.

## 1:10:00 – 1:20:00 · Application à un cas africain fictif

Imaginons un sujet de thèse fictif : l''accès des petites et moyennes entreprises au crédit dans un contexte régional harmonisé. Premier temps : établir précisément, par une analyse dogmatique, les règles harmonisées applicables à la constitution des garanties de crédit. Deuxième temps : interroger, à l''aide de l''analyse économique du droit, si ces règles réduisent effectivement le coût du crédit pour les petites entreprises par rapport à la situation antérieure à l''harmonisation. Troisième temps : vérifier, à l''aide du réalisme juridique et d''une démarche empirique, si l''application de ces règles varie significativement entre plusieurs pays de la région malgré l''identité du texte. Quatrième temps : relier cette observation au débat sur l''articulation avec le droit international des investissements si le financement étudié implique des investisseurs étrangers.

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Retenez de cette séance trois idées fortes : l''harmonisation répond à une logique économique de réduction des coûts de transaction ; elle ne garantit pas, par elle-même, une application uniforme en raison de la diversité des pratiques judiciaires ; et son articulation avec le droit international des investissements pose des questions de cohérence des normes et d''équilibre des objectifs poursuivis. Voici l''évaluation finale, cinq questions.

Question 1 : quel est l''objectif économique principal de l''harmonisation régionale du droit des affaires ? Réponse : réduire les coûts de transaction liés à la diversité des législations nationales et offrir un cadre prévisible aux investisseurs et aux entreprises.

Question 2 : pourquoi l''harmonisation des textes ne garantit-elle pas une application uniforme du droit ? Réponse : parce que les pratiques judiciaires, la formation des magistrats et les moyens des juridictions restent très différents d''un pays à l''autre, créant un écart possible entre le droit harmonisé affiché et son application réelle.

Question 3 : quelles sont les deux questions théoriques posées par l''articulation entre droit régional harmonisé et droit international des investissements ? Réponse : la cohérence des normes lorsqu''un même litige mobilise les deux corpus, et l''équilibre entre la protection du capital étranger et les objectifs de développement économique local.

Question 4 : comment un doctorant doit-il se positionner face à ce débat dans une réponse d''examen ? Réponse : il doit situer son sujet de thèse dans ce débat, en montrant sa compréhension des tensions en jeu, sans trancher de façon simpliste ni inventer de données chiffrées précises.

Question 5 : quelle démarche méthodologique permet d''instruire sérieusement une question liée à ce débat ? Réponse : une analyse dogmatique des textes harmonisés, suivie d''une analyse économique et réaliste de leurs effets réels, éventuellement complétée par une comparaison avec d''autres pays ou périodes. Rendez-vous à la prochaine séance pour les méthodes de recherche propres au champ.', 'video', 90, false, 70
from public.courses c where c.slug = 'doc-droit'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : harmonisation régionale (droit OHADA), diversité des traditions juridiques et droit international des investissements');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : méthodes de recherche en droit des affaires et protocole appliqué', '## Fiche du cours vidéo

Durée : 1h30. Niveau : Doctorat, examen de qualification en droit des affaires.
Objectifs : maîtriser les trois grandes méthodes de recherche du champ (dogmatique, droit comparé, méthode empirique), savoir les articuler, et savoir construire un protocole de recherche appliqué.
Matériel : diaporama, tableau pour construire en direct un protocole de recherche.
Prérequis : leçon texte correspondante lue, séances vidéo précédentes assimilées.

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Bienvenue dans cette troisième séance vidéo. Après avoir vu deux grands débats théoriques du droit des affaires, nous allons maintenant nous concentrer sur la boîte à outils méthodologique du chercheur : comment, concrètement, mène-t-on une recherche sérieuse en droit des affaires. Nous verrons trois méthodes — l''analyse dogmatique, le droit comparé et la méthode empirique centrée sur la jurisprudence — puis nous construirons ensemble, en direct, un protocole de recherche appliqué à un contexte sénégalais fictif.

## 05:00 – 20:00 · L''analyse dogmatique ou doctrinale

Commençons par la méthode la plus fondamentale, celle sans laquelle aucune des deux autres n''est possible : l''analyse dogmatique, aussi appelée analyse doctrinale. Elle consiste à étudier le droit à partir de ses propres sources : textes législatifs et réglementaires, actes régionaux harmonisés, décisions de justice, travaux des auteurs qui commentent ces sources. L''objectif est de systématiser le droit applicable à une question précise : quelles règles sont en vigueur, comment s''articulent-elles, quelles interprétations ont été proposées, quelles lacunes subsistent.

Je veux insister sur un point de rigueur essentiel : il faut toujours vérifier l''état actuel du droit, distinguer un texte en vigueur d''un texte abrogé ou d''un projet de réforme, et ne jamais se fier à une citation de seconde main sans l''avoir vérifiée vous-même. C''est la méthode de base : vous ne pouvez pas comparer des systèmes juridiques, ni étudier l''effectivité d''une règle, si vous n''avez pas d''abord établi correctement ce que dit le droit. Pensez à cette méthode comme aux fondations d''une maison : invisibles une fois la construction terminée, mais sans lesquelles rien ne tient.

## 20:00 – 35:00 · Le droit comparé

Deuxième méthode : le droit comparé. Elle consiste à mettre en regard plusieurs systèmes juridiques pour en dégager les ressemblances, les différences, et les logiques propres à chacun. En droit des affaires, cela peut porter sur la comparaison entre un système régional harmonisé et un système resté hors de ce cadre, ou entre deux traditions juridiques différentes sur un même sujet, comme le traitement des sûretés ou la responsabilité des dirigeants de société.

Attention à un piège méthodologique fréquent : il ne suffit pas de juxtaposer deux textes qui portent le même nom pour conclure qu''ils règlent la même chose de la même façon. Un même concept juridique peut avoir une portée très différente selon le contexte institutionnel, économique et judiciaire dans lequel il s''insère. Un bon travail de droit comparé explique toujours pourquoi deux systèmes diffèrent ou convergent, en resituant chaque règle dans son contexte, plutôt que de se limiter à une liste de différences textuelles. C''est un exercice d''explication, pas seulement de description.

## 35:00 – 50:00 · La méthode empirique et l''analyse de la jurisprudence

Troisième méthode : la méthode empirique, qui cherche à observer comment le droit fonctionne réellement, au-delà du texte. En droit des affaires, elle repose le plus souvent sur l''analyse de la jurisprudence : on étudie un ensemble de décisions de justice portant sur une même question, pour en dégager des tendances — comment les juges interprètent-ils une règle en pratique, quelles solutions reviennent le plus souvent, existe-t-il des divergences entre juridictions.

Cette méthode suppose, en principe, de rassembler un corpus de décisions suffisamment représentatif, de les classer selon des critères pertinents, puis d''en tirer des observations prudentes. Je répète ici un point de méthode déjà souligné dans les séances précédentes, car il est capital pour votre intégrité scientifique : ne jamais inventer ou citer de façon approximative une décision de justice précise que vous n''avez pas vérifiée. Si vous voulez évoquer la jurisprudence sans disposer de références vérifiées, parlez de « tendances générales observées dans la jurisprudence en la matière », formulées avec prudence. La méthode empirique peut aussi mobiliser d''autres données, lorsqu''elles sont réellement disponibles : entretiens avec des praticiens, enquêtes auprès d''entreprises, étude de la pratique contractuelle.

Un point pratique mérite d''être développé : la constitution d''un corpus de jurisprudence pertinent n''est jamais un exercice mécanique. Il faut d''abord délimiter précisément la question juridique étudiée, pour éviter de rassembler des décisions trop hétérogènes qui ne permettraient aucune comparaison sérieuse. Il faut ensuite choisir une période d''observation cohérente avec le sujet, en étant transparent, dans le travail final, sur les limites de ce corpus : s''il est restreint par manque d''accès à certaines bases de données, cela doit être explicitement reconnu plutôt que dissimulé. Enfin, l''analyse du corpus ne se limite pas à compter les décisions qui vont dans un sens ou dans l''autre : elle doit chercher à comprendre pourquoi les juridictions retiennent telle ou telle solution, en resituant chaque décision dans son contexte factuel et procédural.

## 50:00 – 55:00 · Pause et quiz interactif

Petit quiz de vérification des acquis. Première question : quelle méthode est presque toujours le point de départ d''une recherche en droit des affaires, et pourquoi ? Réponse : l''analyse dogmatique, car elle établit ce que dit effectivement le droit, base indispensable à toute comparaison ou étude empirique. Deuxième question : quel piège méthodologique faut-il éviter en droit comparé ? Réponse : juxtaposer deux textes qui portent le même nom sans expliquer pourquoi ils diffèrent ou convergent dans leur contexte respectif. Troisième question : que faire si l''on souhaite évoquer la jurisprudence sans disposer de décisions vérifiées ? Réponse : parler prudemment de tendances générales, sans jamais inventer une décision précise.

## 55:00 – 1:10:00 · Articuler les trois méthodes dans un même projet

Un projet de recherche doctorale mobilise rarement une seule méthode. Le point de départ est presque toujours dogmatique : établir l''état du droit applicable. Vient ensuite, selon le sujet, une comparaison avec un ou plusieurs autres systèmes juridiques pour éclairer les choix possibles, ou une étude empirique pour vérifier comment le droit identifié est réellement appliqué, ou les deux à la fois. Cette progression en plusieurs temps — établir, comparer, vérifier — est exactement la structure que nous avons mobilisée dans les deux séances précédentes pour répondre aux questions sur les grands débats théoriques du champ. Vous voyez donc que théorie et méthode s''articulent naturellement.

## 1:10:00 – 1:20:00 · Construction en direct d''un protocole appliqué

Construisons ensemble un protocole pour un sujet fictif : l''effectivité des garanties accordées aux créanciers dans le financement des petites entreprises d''un secteur donné, dans un contexte sénégalais imaginaire. Étape un, dogmatique : identifier précisément, à partir des textes en vigueur vérifiés, les règles applicables à la constitution et à la mise en œuvre de ces garanties. Étape deux, comparative : situer ces règles par rapport à celles d''un ou deux autres pays de la région, pour comprendre les choix alternatifs possibles. Étape trois, empirique : constituer, dans la mesure du possible, un corpus de décisions portant sur la mise en œuvre de ces garanties, complété par des entretiens avec des praticiens — notaires, banquiers, avocats — sans jamais présenter des données non vérifiées comme établies. Étape quatre, analytique : confronter ce que disent les textes, ce que montre la comparaison, et ce que révèle l''observation empirique, pour formuler une appréciation argumentée.

Imaginons que l''observation empirique révèle, dans notre scénario fictif, que les tribunaux d''une partie de la zone étudiée mettent en œuvre ces garanties avec une lenteur qui décourage certains prêteurs, alors que dans une autre partie de la zone, les mêmes textes sont appliqués plus rapidement. Le chercheur ne doit pas se contenter de constater cet écart : il doit chercher à l''expliquer, par exemple en le reliant à des différences de moyens matériels des juridictions, à des pratiques de formation des magistrats, ou à des habitudes professionnelles des praticiens locaux. C''est cette capacité à expliquer, et non seulement à décrire, qui distingue une recherche doctorale solide d''un simple constat journalistique.

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Retenez de cette séance la logique en trois méthodes complémentaires et la progression en quatre étapes du protocole appliqué. Voici l''évaluation finale, cinq questions.

Question 1 : pourquoi l''analyse dogmatique est-elle la première étape de toute recherche en droit des affaires ? Réponse : parce qu''elle établit avec rigueur ce que dit le droit applicable, base nécessaire pour toute comparaison ou analyse empirique ultérieure.

Question 2 : quelle erreur méthodologique faut-il éviter en droit comparé ? Réponse : comparer des textes sans resituer chaque règle dans son contexte institutionnel et économique propre, ce qui conduirait à des conclusions trompeuses.

Question 3 : sur quoi repose le plus souvent la méthode empirique en droit des affaires ? Réponse : sur l''analyse de la jurisprudence, complétée éventuellement par des entretiens avec des praticiens ou des enquêtes, lorsque ces données sont réellement disponibles.

Question 4 : quelle règle de prudence s''impose pour toute évocation de jurisprudence dans un travail doctoral ? Réponse : ne jamais citer une décision précise non vérifiée ; se limiter, à défaut, à des tendances générales prudemment formulées.

Question 5 : quelles sont les quatre étapes d''un protocole de recherche type appliqué à un cas africain fictif ? Réponse : établir le droit applicable par une analyse dogmatique, le comparer à d''autres systèmes, vérifier son application réelle par une méthode empirique, puis confronter ces trois niveaux d''analyse pour formuler une conclusion argumentée. La prochaine séance sera consacrée à une simulation complète de soutenance de qualification doctorale.', 'video', 90, false, 80
from public.courses c where c.slug = 'doc-droit'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : méthodes de recherche en droit des affaires et protocole appliqué');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : s''entraîner en direct sur une question de synthèse type', '## Fiche du cours vidéo

Durée : 1h30. Niveau : Doctorat, examen de qualification en droit des affaires.
Objectifs : s''entraîner en conditions réelles à répondre à une question de synthèse type, en mobilisant les deux débats théoriques et la méthode de recherche vus dans les séances précédentes.
Matériel : diaporama, chronomètre pour simuler le temps de parole d''une soutenance.
Prérequis : les trois séances vidéo précédentes et les leçons texte correspondantes.

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Bienvenue dans cette quatrième séance vidéo, consacrée à l''entraînement actif. Je vais vous présenter une question de synthèse type, construite sur le modèle d''un examen de qualification doctorale, puis nous allons construire ensemble, pas à pas, un plan de réponse complet, comme si nous étions face à un jury. Rappelez-vous : cette question n''est pas une question officielle d''un établissement précis, elle illustre le format attendu.

## 05:00 – 15:00 · Présentation de la question type

Voici l''énoncé : « Dans quelle mesure l''harmonisation régionale du droit des affaires permet-elle réellement de sécuriser les investissements et de réduire les coûts de transaction pour les entreprises, compte tenu de la diversité persistante des pratiques judiciaires nationales ? Vous répondrez en mobilisant les apports et les limites du positivisme juridique, de l''analyse économique du droit et du réalisme juridique, et en proposant une démarche méthodologique pour instruire cette question. »

Prenez quelques instants, comme vous le feriez à l''oral, pour repérer les mots clés de l''énoncé : « dans quelle mesure », qui invite à une réponse nuancée plutôt que tranchée ; « réellement », qui invite à interroger les effets concrets au-delà des textes ; et la consigne explicite de mobiliser plusieurs courants théoriques et une démarche méthodologique. C''est un énoncé qui, à lui seul, vous dit presque tout le plan attendu, si vous savez le lire correctement.

## 15:00 – 30:00 · Construction de l''introduction et du plan

Une bonne introduction reformule la question en distinguant deux sous-questions implicites : l''harmonisation régionale atteint-elle ses objectifs affichés, et quels outils permettent d''instruire sérieusement cette question sans affirmation non vérifiée. Elle annonce ensuite un plan en trois parties : d''abord l''apport et les limites du positivisme juridique pour établir ce que l''harmonisation change sur le plan des textes ; ensuite l''apport de l''analyse économique du droit et du réalisme juridique pour interroger les effets réels ; enfin une proposition méthodologique pour vérifier empiriquement ces effets.

Entraînez-vous maintenant, à voix haute si possible, à prononcer cette introduction en moins de deux minutes, en respectant un rythme calme et structuré. C''est un exercice que vous devez répéter plusieurs fois avant l''examen réel, car la gestion du temps de parole est une compétence à part entière.

Un conseil pratique : annoncez toujours votre plan de façon explicite, en nommant les trois parties par leur fonction plutôt que par un simple numéro. Dire « je montrerai d''abord ce que l''harmonisation change sur le plan des textes, puis j''interrogerai ses effets économiques et pratiques réels, avant de proposer une démarche pour les vérifier » est beaucoup plus clair pour un jury que de dire simplement « je ferai trois parties ». Cette annonce explicite rassure le jury sur votre maîtrise de la structure et facilite sa propre écoute, ce qui joue en votre faveur dans l''évaluation globale de la prestation orale.

## 30:00 – 50:00 · Développement de la première et de la deuxième partie

Développons la première partie : le positivisme juridique permet d''établir que l''harmonisation substitue des règles nationales disparates par un corpus commun dans certains domaines, ce qui accroît la cohérence conceptuelle et la prévisibilité pour les opérateurs économiques qui connaissent ce corpus. Sa limite : il décrit la cohérence formelle du système sans pouvoir, à lui seul, établir si cette cohérence se traduit par une sécurisation réelle des investissements.

Développons la deuxième partie : l''analyse économique du droit permet de formuler l''hypothèse que des règles harmonisées réduisent les coûts de transaction liés à la diversité normative, en facilitant la circulation des investissements. Le réalisme juridique vient nuancer cette hypothèse en rappelant que l''harmonisation des textes ne garantit pas une application harmonisée, du fait de la diversité des pratiques judiciaires et des moyens des juridictions, ce qui peut maintenir, en pratique, une partie des coûts de transaction que l''harmonisation visait à réduire.

## 50:00 – 55:00 · Pause et quiz interactif

Petit quiz avant de poursuivre. Première question : pourquoi faut-il éviter de ne mobiliser qu''un seul courant théorique dans une réponse de synthèse ? Réponse : parce que chaque courant éclaire une dimension différente et incomplète de la question, et qu''une réponse complète doit articuler cohérence des textes, effets économiques et application réelle. Deuxième question : quelle expression de l''énoncé invite à une réponse nuancée plutôt que tranchée ? Réponse : « dans quelle mesure ». Troisième question : quelle est la première chose à faire en lisant un énoncé de question de synthèse ? Réponse : repérer les mots clés qui indiquent la structure et le degré de nuance attendus dans la réponse.

## 55:00 – 1:10:00 · Développement de la troisième partie et de la conclusion

Développons maintenant la troisième partie, méthodologique : proposer une analyse dogmatique précise des textes harmonisés pertinents, une comparaison avec le droit antérieur à l''harmonisation ou avec un pays resté hors du cadre régional, et une étude empirique s''appuyant, dans la mesure du possible, sur l''observation de la jurisprudence et sur des entretiens avec des praticiens, pour vérifier si les promesses de sécurisation et de réduction des coûts se vérifient réellement dans un secteur donné.

La conclusion, enfin, doit éviter toute réponse tranchée. Elle peut rappeler que l''harmonisation régionale constitue une avancée réelle sur le plan de la cohérence normative, mais que son effet réel sur la sécurisation des investissements reste une question empirique, qui dépend fortement des capacités institutionnelles locales et qui mérite d''être étudiée au cas par cas plutôt que tranchée par principe. Entraînez-vous à prononcer cette conclusion en moins d''une minute trente, en gardant un ton assuré mais nuancé.

## 1:10:00 – 1:20:00 · Anticiper les questions du jury

Un jury pose presque toujours des questions de relance après une réponse de synthèse. Entraînons-nous sur deux exemples. Premier exemple de question : « Vous avez mentionné que les pratiques judiciaires nationales peuvent diverger malgré l''harmonisation des textes ; comment procéderiez-vous concrètement pour vérifier cette divergence dans votre futur travail de thèse ? » Une bonne réponse esquisse un protocole empirique concret : corpus de décisions dans deux ou trois pays, entretiens avec des praticiens, comparaison prudente des résultats. Deuxième exemple : « Pensez-vous que l''analyse économique du droit suffit à elle seule à évaluer une politique d''harmonisation ? » Une bonne réponse rappelle que l''analyse économique est un outil parmi d''autres, complémentaire du positivisme et du réalisme juridique, et qu''elle ne doit pas être présentée comme la seule grille de lecture valable.

Troisième exemple, plus déstabilisant : « Si vous deviez résumer votre position en une seule phrase, l''harmonisation régionale est-elle, selon vous, globalement positive ou globalement insuffisante ? » C''est une question piège classique, qui invite à une réponse binaire alors que toute la séance nous a appris l''inverse. La bonne stratégie n''est pas d''esquiver la question, mais de répondre en assumant la nuance comme une position à part entière : par exemple, affirmer que l''harmonisation constitue une avancée nette sur le plan de la cohérence et de la prévisibilité juridique, mais que son effet réel sur la sécurisation économique dépend de facteurs institutionnels qui restent, eux, très inégaux d''un pays à l''autre, et que c''est précisément cette variabilité qui mérite d''être étudiée plutôt que présupposée dans un sens ou dans l''autre.

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Retenez de cette séance la méthode de lecture d''un énoncé, la structure en trois parties, et l''entraînement à l''anticipation des questions de relance. Voici l''évaluation finale, cinq questions.

Question 1 : quelles sont les trois parties attendues dans une réponse à une question de synthèse de ce type ? Réponse : l''apport et les limites du positivisme juridique, l''apport de l''analyse économique et du réalisme juridique, et une proposition méthodologique pour vérifier empiriquement les effets réels.

Question 2 : que signale l''expression « dans quelle mesure » dans un énoncé de question de synthèse ? Réponse : qu''une réponse nuancée est attendue, plutôt qu''une réponse tranchée par l''affirmative ou la négative.

Question 3 : que doit valoriser une bonne conclusion à ce type de question ? Réponse : la reconnaissance d''une avancée réelle sur la cohérence normative, tout en rappelant que l''effet réel sur les objectifs économiques affichés reste une question empirique à vérifier au cas par cas.

Question 4 : comment anticiper une question de relance portant sur la vérification empirique d''un argument avancé ? Réponse : esquisser un protocole concret, par exemple un corpus de jurisprudence comparé entre plusieurs pays, complété par des entretiens avec des praticiens.

Question 5 : pourquoi ne faut-il jamais présenter un seul courant théorique comme la seule grille de lecture valable face à une question de synthèse ? Réponse : parce qu''un jury valorise l''articulation de plusieurs approches complémentaires, et sanctionne une réponse unilatérale ou dogmatique dans un sens appauvri du terme. La dernière séance vidéo sera consacrée à la simulation complète d''une soutenance de qualification doctorale.', 'video', 90, false, 90
from public.courses c where c.slug = 'doc-droit'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : s''entraîner en direct sur une question de synthèse type');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : simulation complète d''une soutenance de qualification doctorale', '## Fiche du cours vidéo

Durée : 1h30. Niveau : Doctorat, examen de qualification en droit des affaires.
Objectifs : vivre une simulation complète de soutenance de qualification doctorale, de la présentation du champ et du projet de thèse jusqu''aux questions de jury, et s''auto-évaluer à l''aide d''une grille finale.
Matériel : diaporama, chronomètre, grille d''auto-évaluation distribuée en fin de séance.
Prérequis : l''ensemble des leçons et séances vidéo précédentes de ce cours.

## Déroulé minuté

## 00:00 – 05:00 · Introduction à la simulation

Bienvenue dans cette dernière séance, la plus importante pour votre préparation : une simulation complète de soutenance de qualification doctorale en droit des affaires. Je vais jouer, tour à tour, le rôle du candidat qui présente son champ et son projet de thèse, puis celui des membres du jury qui posent leurs questions. Suivez cette simulation comme si vous étiez vous-même dans la salle, en notant les formulations qui vous semblent efficaces et celles que vous auriez envie d''améliorer.

## 05:00 – 20:00 · Présentation du champ (quinze minutes, partie 1)

« Mesdames et Messieurs les membres du jury, je vous remercie de votre attention. Mon champ de recherche est le droit des affaires, et plus précisément la question de l''articulation entre les instruments juridiques régionaux d''harmonisation et l''effectivité réelle de la protection des créanciers et des investisseurs dans un contexte de diversité institutionnelle persistante entre les pays d''une même région.

Ce champ est structuré par deux grands débats théoriques. Le premier oppose le positivisme juridique, qui étudie le droit comme système cohérent de normes, aux approches économiques et réalistes, qui interrogent les effets réels des règles et leur application concrète par les juridictions et les praticiens. Le second porte sur l''harmonisation régionale du droit des affaires, souvent associée au droit OHADA, face à la diversité des traditions juridiques nationales et à son articulation avec le droit international des investissements. Ces deux débats ne sont pas indépendants : le premier fournit la grille théorique qui permet d''instruire le second de façon rigoureuse. »

## 20:00 – 35:00 · Présentation du projet de thèse fictif (partie 2)

« Mon projet de thèse, encore à ce stade exploratoire, s''intitulerait provisoirement : "L''effectivité des garanties de crédit dans le financement des petites entreprises, dans un contexte régional harmonisé : une étude comparée et empirique." La problématique centrale serait la suivante : dans quelle mesure l''harmonisation régionale des règles relatives aux garanties de crédit a-t-elle effectivement amélioré l''accès au financement des petites entreprises, compte tenu des pratiques judiciaires qui demeurent très différentes d''un pays à l''autre de la région étudiée ?

Ma démarche méthodologique combinerait une analyse dogmatique rigoureuse des textes harmonisés applicables, une comparaison avec la situation antérieure à l''harmonisation dans deux pays de la région, et une étude empirique s''appuyant sur un corpus de décisions de justice portant sur la mise en œuvre de ces garanties, complétée par des entretiens avec des praticiens du crédit et du droit des sûretés. J''ai conscience que l''accès aux données jurisprudentielles pourra être inégal selon les pays, ce qui m''amènera à documenter explicitement les limites de mon corpus plutôt qu''à généraliser au-delà de ce que les données permettront réellement d''établir. »

## 35:00 – 40:00 · Pause et quiz interactif

Avant d''entrer dans les questions du jury, un court quiz. Première question : quels sont les deux grands débats théoriques structurant ce champ fictif présenté ? Réponse : le débat positivisme contre analyse économique et réalisme juridique, et le débat sur l''harmonisation régionale face à la diversité des traditions nationales et au droit international des investissements. Deuxième question : quelle précaution méthodologique le candidat a-t-il prise concernant les données jurisprudentielles ? Réponse : il a reconnu par avance que l''accès pourrait être inégal selon les pays, et s''est engagé à documenter les limites de son corpus plutôt qu''à généraliser indûment.

## 40:00 – 1:05:00 · Questions du jury et structure de bonne réponse

Question du jury 1 : « Pourquoi avoir choisi d''articuler deux débats théoriques plutôt que de vous concentrer sur un seul ? » Structure de bonne réponse : rappeler que le premier débat fournit les outils d''analyse (cohérence, efficacité, effectivité) nécessaires pour instruire sérieusement le second, qui est l''objet empirique précis de la thèse ; montrer que cette articulation évite de se limiter à une lecture uniquement textuelle ou uniquement économique du phénomène étudié.

Question du jury 2 : « Comment allez-vous éviter de généraliser abusivement à partir d''un corpus de jurisprudence potentiellement incomplet ? » Structure de bonne réponse : expliquer la méthode de délimitation du corpus, la transparence sur ses limites, et le recours complémentaire à des entretiens pour ne pas dépendre uniquement des décisions publiées.

Question du jury 3 : « En quoi votre sujet se distingue-t-il d''une étude purement descriptive du droit harmonisé des sûretés ? » Structure de bonne réponse : insister sur la dimension comparative et empirique du projet, qui ne se limite pas à décrire le texte mais interroge ses effets réels sur l''accès au crédit, en s''appuyant sur une problématique originale.

Question du jury 4 : « Le droit international des investissements est-il réellement pertinent pour votre sujet, qui porte sur de petites entreprises locales ? » Structure de bonne réponse : reconnaître que le lien est indirect si le financement étudié est purement local, mais expliquer qu''il pourrait devenir pertinent si certains prêteurs ou partenaires financiers sont des acteurs étrangers, et préciser que cette dimension sera explorée ou explicitement écartée selon les données disponibles, sans l''affirmer par principe.

Question du jury 5 : « Quelle est la principale limite de votre projet à ce stade ? » Structure de bonne réponse : assumer une limite réelle et précise, par exemple l''incertitude sur l''ampleur du corpus jurisprudentiel réellement accessible, plutôt que de minimiser artificiellement les difficultés du projet.

Question du jury 6 : « Si vous deviez résumer l''apport attendu de votre thèse en une phrase, que diriez-vous ? » Structure de bonne réponse : une phrase courte, qui relie la problématique à sa contribution attendue, par exemple : documenter empiriquement, dans un cas précis, l''écart éventuel entre l''harmonisation affichée et son application réelle, pour nourrir la réflexion sur l''accompagnement institutionnel nécessaire à l''effectivité du droit harmonisé.

Question du jury 7 : « Comment comptez-vous garantir l''objectivité de vos entretiens avec les praticiens ? » Structure de bonne réponse : expliquer le choix d''un échantillon diversifié de praticiens, la formulation de questions ouvertes plutôt que suggestives, et la confrontation systématique des témoignages recueillis avec les données dogmatiques et jurisprudentielles disponibles, plutôt que de s''appuyer sur un seul témoignage isolé.

Question du jury 8 : « Que répondriez-vous à quelqu''un qui dirait que l''harmonisation ne peut, par construction, jamais être pleinement effective tant que les capacités judiciaires nationales ne sont pas elles-mêmes renforcées ? » Structure de bonne réponse : reconnaître la pertinence de cet argument tout en le nuançant : l''effectivité n''est pas nécessairement binaire, elle peut être partielle et variable selon les domaines, ce qui justifie précisément une étude empirique plutôt qu''un jugement global tranché a priori.

## 1:05:00 – 1:20:00 · Débriefing de la simulation

Reprenons maintenant, à froid, ce qui a bien fonctionné dans ces réponses simulées. D''abord, chaque réponse commence par reformuler brièvement l''enjeu de la question, ce qui montre au jury que le candidat l''a bien comprise. Ensuite, chaque réponse assume une position claire, sans fuite, mais toujours nuancée et justifiée méthodologiquement. Enfin, aucune réponse n''invente de données chiffrées ou de décisions précises : le candidat reste toujours au niveau des mécanismes et des engagements méthodologiques qu''il prend pour son travail futur, ce qui est exactement ce qu''un jury doctoral attend à ce stade du projet.

## 1:20:00 – 1:30:00 · Grille d''auto-évaluation de la soutenance simulée

Pour conclure ce cours, voici une grille d''auto-évaluation que vous pouvez utiliser après chacun de vos propres entraînements à la soutenance.

- Clarté de la présentation du champ : ai-je nommé explicitement les grands débats théoriques qui structurent ma spécialité, sans les confondre ni les réduire à une seule idée ?
- Qualité de la problématique de thèse : ma problématique relie-t-elle clairement mon sujet précis aux débats théoriques et aux méthodes de mon champ ?
- Rigueur méthodologique annoncée : ai-je précisé quelles méthodes (dogmatique, comparative, empirique) je mobiliserai, et dans quel ordre logique ?
- Honnêteté sur les limites : ai-je reconnu au moins une limite réelle de mon projet, sans la minimiser artificiellement ni la dramatiser excessivement ?
- Gestion du temps de parole : ma présentation tient-elle dans le temps imparti, avec un débit clair et une structure annoncée explicitement ?
- Qualité des réponses aux questions : mes réponses reformulent-elles la question, assument-elles une position nuancée, et évitent-elles toute donnée inventée ou non vérifiée ?
- Cohérence d''ensemble : mes réponses aux questions de jury restent-elles cohérentes avec la présentation initiale de mon champ et de mon projet, sans contradiction interne ?

Notez-vous honnêtement sur chacun de ces sept points, identifiez les deux ou trois points les plus faibles, et consacrez vos prochaines séances d''entraînement en priorité à ces points. C''est avec cette méthode d''amélioration continue, bien plus que par la mémorisation de réponses toutes faites, que vous arriverez le jour de votre examen de qualification doctorale avec la solidité nécessaire pour convaincre votre jury. Je vous souhaite une excellente réussite dans cette étape décisive de votre parcours doctoral.', 'video', 90, false, 100
from public.courses c where c.slug = 'doc-droit'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : simulation complète d''une soutenance de qualification doctorale');

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
