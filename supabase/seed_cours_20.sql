-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Cours (partie 20/21). À exécuter après seed.sql.

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

-- Cours : Doctorat Économie : préparer l'examen de qualification doctorale
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'doc-eco', (select id from public.levels where name = 'Doctorat'), null, 'Économie', 'Doctorat Économie : préparer l''examen de qualification doctorale', 'Préparation à l''examen de qualification doctorale en économie : maîtrise critique du courant néoclassique et des approches institutionnalistes, structuralistes et de la dépendance appliquées au développement africain, méthodes de recherche (économétrie de panel, évaluation d''impact, analyse institutionnelle qualitative), et entraînement complet à l''épreuve écrite et à la soutenance orale devant jury. Public : doctorants en économie, prérequis master en économie.', true, 807
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir son examen de qualification doctorale en économie', '## Nature de l''épreuve

L''examen de qualification doctorale (comprehensive exam) en économie n''est pas un examen de connaissances comme ceux rencontrés en licence ou en master. Il ne s''agit plus de résoudre un exercice ou d''appliquer une formule, mais de démontrer que le doctorant maîtrise l''état de l''art de sa discipline, qu''il est capable de situer son propre projet de thèse dans les débats théoriques existants, et qu''il peut défendre ce positionnement devant un jury composé de professeurs expérimentés. Cette épreuve se déroule en général en deux temps : une phase écrite, qui prend la forme d''une note de synthèse ou d''un essai critique portant sur un ou plusieurs courants théoriques du champ, et une phase orale, la soutenance de qualification, au cours de laquelle le candidat présente son projet de thèse puis répond aux questions du jury.

La différence essentielle avec le master tient au niveau d''abstraction attendu. En master, on demande de résoudre un cas concret d''entreprise ou de politique publique en appliquant des outils déjà balisés. En doctorat, le jury veut vérifier que le candidat sait comparer des cadres théoriques concurrents, en identifier les hypothèses implicites, en mesurer la portée et les limites, et choisir ou construire une méthode de recherche cohérente avec le cadre théorique retenu. L''examen de qualification est donc un filtre qui atteste que le doctorant est prêt à produire une contribution originale à la connaissance, et non plus seulement à consommer des connaissances existantes.

## Ce qu''attend un jury doctoral

Un jury de qualification évalue principalement quatre compétences. La première est la maîtrise des grands courants théoriques du champ économique : le candidat doit pouvoir exposer, sans notes, les hypothèses fondatrices de l''école néoclassique, celles des approches institutionnalistes et structuralistes, et situer les débats qui les opposent, en particulier sur la question du développement. La deuxième compétence est la capacité de synthèse critique : il ne s''agit pas de réciter des auteurs, mais de montrer en quoi un cadre théorique éclaire ou, au contraire, échoue à expliquer un phénomène économique observé, par exemple la trajectoire des économies ouest-africaines depuis les indépendances. La troisième compétence est la maîtrise des méthodes de recherche propres à la discipline : l''économétrie appliquée, en particulier les modèles de panel, les méthodes d''évaluation d''impact comme la différence de différences, et les approches qualitatives d''analyse institutionnelle. La quatrième compétence, enfin, est l''aptitude à articuler un projet de thèse personnel avec cette littérature : pourquoi cette question, pourquoi maintenant, avec quelle méthode, et en quoi le travail envisagé apporte-t-il quelque chose de nouveau.

Le jury est en général sévère sur deux points précis. D''abord l''exactitude : un candidat qui attribue à un auteur une thèse qu''il n''a pas défendue, ou qui confond deux courants proches, perd immédiatement en crédibilité. Ensuite la nuance : un bon candidat ne défend pas un courant contre un autre comme on défend une équipe de football, il montre qu''il comprend pourquoi chaque cadre a été construit, quels problèmes il résout, et dans quelles conditions il devient insuffisant.

## Méthode de travail pour préparer l''épreuve

La préparation d''un examen de qualification doctorale repose sur trois outils de travail complémentaires. Le premier est la fiche de lecture structurée : pour chaque texte fondateur ou chaque article de synthèse lu, le doctorant rédige une fiche courte qui résume la question posée par l''auteur, la réponse apportée, les hypothèses sur lesquelles elle repose, et les critiques qui lui ont été adressées par la suite. Cette discipline évite l''écueil classique qui consiste à avoir beaucoup lu sans pouvoir restituer l''essentiel sous pression, à l''oral.

Le deuxième outil est la cartographie des courants : un tableau ou un schéma qui place les écoles de pensée les unes par rapport aux autres, selon leurs hypothèses sur le comportement des agents, le rôle du marché, le rôle de l''État et des institutions, et leur lecture du développement économique. Construire puis mémoriser cette carte permet, à l''oral, de répondre à une question en resituant immédiatement la position de chaque courant plutôt que de partir d''une page blanche.

Le troisième outil est la note de synthèse thématique : un document d''une dizaine de pages, rédigé par le doctorant lui-même, qui traite un débat précis — par exemple le débat sur les politiques d''ajustement structurel en Afrique de l''Ouest — en mobilisant plusieurs courants théoriques et en proposant une méthode empirique pour trancher ou nuancer le débat. Rédiger plusieurs notes de ce type sur les grands débats du champ constitue le meilleur entraînement à l''épreuve écrite, et fournit une base de révision solide pour l''oral.

## Plan de travail sur huit semaines

Un plan de préparation réaliste s''étale sur huit semaines. Les deux premières semaines sont consacrées à la relecture des textes fondateurs du champ et à la rédaction des premières fiches de lecture, en commençant par les courants que le candidat connaît le moins bien. Les semaines trois et quatre servent à construire la cartographie des courants et à rédiger une première note de synthèse sur un débat central, par exemple celui qui oppose les lectures néoclassique et structuraliste du développement africain. Les semaines cinq et six sont centrées sur les méthodes de recherche : revoir les principes de l''économétrie de panel, les méthodes d''évaluation d''impact et l''analyse institutionnelle qualitative, puis rédiger un protocole de recherche fictif qui applique une de ces méthodes à une question africaine. La semaine sept est consacrée à des simulations orales, idéalement devant un collègue ou un directeur de thèse qui joue le rôle du jury et pose des questions imprévues. La huitième semaine, enfin, est réservée à la relecture du projet de thèse personnel, à l''anticipation des objections les plus probables du jury sur ce projet, et à un repos suffisant avant l''épreuve, car la fatigue est le pire ennemi de la clarté d''exposition à l''oral.

## Exercices pratiques

1. Construisez votre propre cartographie des courants économiques du développement (néoclassique, institutionnaliste, structuraliste/dépendantiste) sous forme de tableau comparatif, en précisant pour chaque courant son hypothèse centrale sur le comportement des agents et son hypothèse centrale sur le rôle de l''État.

2. Rédigez une fiche de lecture de deux pages maximum sur un auteur fondateur de l''école néoclassique au choix, en indiquant la question posée, la réponse apportée, et une critique majeure qui lui a été faite.

3. Identifiez trois questions qu''un jury doctoral pourrait poser à un candidat qui affirme vouloir étudier, dans sa thèse, l''impact d''une politique publique sur l''emploi informel en Afrique de l''Ouest, et indiquez pour chacune la nature de la réponse attendue.

4. Expliquez en cinq lignes pourquoi l''examen de qualification doctorale diffère d''un examen de master dans la même discipline.

5. Proposez un plan de travail personnel sur huit semaines, en adaptant le plan proposé dans la leçon à votre propre emploi du temps, et en identifiant les deux courants théoriques que vous devez le plus retravailler.

## Corrigé

1. Un tableau correctement construit doit comporter trois lignes (une par courant) et au moins deux colonnes (hypothèse sur les agents, hypothèse sur l''État). Pour le courant néoclassique : agents rationnels optimisateurs, marché autorégulateur, État dont l''intervention est en général présentée comme une source de distorsion. Pour l''institutionnalisme : comportement des agents encadré par des règles et des conventions, importance des institutions (droits de propriété, règles contractuelles) pour expliquer la performance économique. Pour le structuralisme/la dépendance : rapports de domination structurels entre centre et périphérie, rôle actif de l''État jugé nécessaire pour corriger les déséquilibres hérités de la division internationale du travail.

2. Une fiche réussie reste factuelle : elle attribue à l''auteur une contribution précise (par exemple la formalisation de l''équilibre général, ou la théorie de l''utilité) sans lui prêter de citation textuelle non vérifiée, et mentionne une limite reconnue de cette contribution (hypothèses très simplificatrices, difficulté à rendre compte des situations de marché imparfait, etc.).

3. Exemples de questions possibles : « Quel cadre théorique mobilisez-vous pour définir l''emploi informel et pourquoi ? » (réponse attendue : justifier le choix entre une lecture néoclassique de l''informalité comme choix rationnel d''évitement de la réglementation, et une lecture institutionnaliste de l''informalité comme résultat de règles mal adaptées) ; « Quelle méthode empirique permettrait de mesurer cet impact ? » (réponse attendue : discuter la pertinence d''une différence de différences ou d''une analyse de panel, et les conditions nécessaires à sa validité) ; « En quoi votre travail se distingue-t-il de la littérature existante ? » (réponse attendue : positionnement clair par rapport à des travaux déjà connus).

4. Le master évalue la capacité à appliquer des outils déjà établis à un cas concret ; le doctorat évalue la capacité à comparer, critiquer et choisir entre des cadres théoriques concurrents, puis à concevoir une méthode de recherche originale, ce qui suppose un niveau d''abstraction et d''autonomie intellectuelle supérieur.

5. Il n''existe pas de corrigé unique ; un plan réussi respecte la logique proposée (lecture puis cartographie puis méthode puis simulation puis consolidation) et identifie honnêtement les points faibles personnels du candidat plutôt que de répéter mécaniquement le plan type.', 'texte', 55, true, 10
from public.courses c where c.slug = 'doc-eco'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir son examen de qualification doctorale en économie');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Le courant néoclassique : rationalité, marché et équilibre général', '## Définitions et hypothèses fondatrices

L''école néoclassique désigne le courant dominant de la théorie économique contemporaine, construit à partir de la fin du dix-neuvième siècle sur trois piliers : la rationalité des agents, l''équilibre comme mode normal de fonctionnement des marchés, et la formalisation mathématique du raisonnement économique. Un agent rationnel, dans ce cadre, est un agent qui dispose de préférences cohérentes et stables, qui cherche à maximiser sa satisfaction (l''utilité pour le consommateur, le profit pour l''entreprise) sous une contrainte de ressources, et qui utilise au mieux l''information dont il dispose. L''équilibre, de son côté, désigne une situation dans laquelle les décisions individuelles, une fois agrégées, sont mutuellement compatibles : sur un marché donné, l''équilibre correspond au prix pour lequel la quantité offerte égale la quantité demandée.

La notion d''équilibre général, qui distingue le courant néoclassique de la simple analyse de marché isolé (l''équilibre partiel), consiste à étudier la compatibilité simultanée de tous les marchés d''une économie : marché des biens, marché du travail, marché des capitaux. L''idée centrale est qu''un système de prix, s''il peut s''ajuster librement, est susceptible de conduire l''ensemble de l''économie vers une situation où aucune réallocation de ressources ne peut améliorer le bien-être d''un agent sans détériorer celui d''un autre, situation que l''on appelle un optimum au sens de Pareto.

## Auteurs fondateurs et évolution historique

La formalisation de l''équilibre général est associée aux travaux de Léon Walras, qui a cherché à démontrer mathématiquement l''existence d''un système de prix rendant compatibles l''ensemble des marchés d''une économie. Alfred Marshall, de son côté, a développé l''outil de l''équilibre partiel, plus maniable, qui étudie un marché à la fois en supposant les autres marchés inchangés, outil encore enseigné aujourd''hui sous la forme des courbes d''offre et de demande. Vilfredo Pareto a apporté le critère d''optimalité qui porte son nom, permettant de juger l''efficacité d''une allocation de ressources sans avoir à comparer directement les niveaux de bien-être de deux individus différents.

Au vingtième siècle, le programme néoclassique s''est considérablement formalisé avec les travaux qui ont démontré, sous certaines conditions mathématiques précises, l''existence d''un équilibre général et sa correspondance avec un optimum de Pareto. Ces travaux ont donné naissance aux deux théorèmes fondamentaux de l''économie du bien-être, qui établissent, pour résumer, qu''un équilibre concurrentiel est efficace, et que toute allocation efficace peut en principe être atteinte par un marché concurrentiel associé à une redistribution initiale des ressources. Par la suite, le courant néoclassique s''est étendu à de nouveaux champs : la théorie du capital humain a appliqué le raisonnement de l''investissement rationnel aux décisions d''éducation et de formation ; la nouvelle économie classique a introduit l''hypothèse d''anticipations rationnelles, selon laquelle les agents utilisent de façon optimale toute l''information disponible pour anticiper l''avenir, y compris les effets des politiques économiques elles-mêmes.

## Limites et critiques

Le courant néoclassique a fait l''objet de critiques anciennes et renouvelées. Une première série de critiques porte sur le réalisme des hypothèses comportementales : l''économie comportementale a montré, par des travaux expérimentaux, que les agents réels s''écartent systématiquement de la rationalité parfaite, par des biais de perception du risque, d''aversion à la perte ou de myopie temporelle. Une deuxième série de critiques porte sur l''hypothèse d''information parfaite ou symétrique : lorsque l''information est inégalement répartie entre les parties à un échange, les marchés peuvent échouer à atteindre un équilibre efficace, ce que les théories de l''information asymétrique ont formalisé pour des marchés aussi divers que l''assurance, le crédit ou le travail.

Une troisième série de critiques, plus directement pertinente pour l''analyse du développement, porte sur le silence relatif du cadre néoclassique concernant les institutions, l''histoire et les structures de pouvoir. En supposant des marchés homogènes et concurrentiels, le raisonnement néoclassique standard tend à traiter de façon similaire des économies aux trajectoires historiques et aux structures institutionnelles très différentes, ce qui a conduit des générations d''économistes du développement à juger ce cadre insuffisant pour expliquer pourquoi certaines économies, notamment en Afrique subsaharienne, restent durablement spécialisées dans l''exportation de matières premières peu transformées, ou pourquoi l''ajustement des prix ne suffit pas toujours à résorber le chômage ou le sous-emploi informel.

## Portée pour l''analyse du développement africain

Le cadre néoclassique conserve néanmoins une utilité réelle pour l''analyse économique africaine, à condition d''en connaître les limites. Il fournit des outils puissants pour analyser l''allocation des ressources, l''incitation des agents, l''effet des prix relatifs sur les comportements, par exemple l''effet d''une variation du prix d''un produit agricole d''exportation sur les décisions de production des ménages ruraux. Des travaux de la Banque mondiale et de nombreux économistes appliqués utilisent ce cadre pour étudier les effets de la libéralisation des marchés, de la fiscalité ou des politiques de change. Mais la critique institutionnaliste et structuraliste, qui fait l''objet de la leçon suivante, part précisément du constat que ce cadre, pris seul, ne permet pas de rendre compte de la persistance des inégalités entre nations, ni des mécanismes historiques et structurels qui ont façonné la place des économies africaines dans la division internationale du travail. C''est cette tension entre les deux lectures qui structure une large part des débats contemporains sur les politiques de développement en Afrique de l''Ouest.

## Exercices pratiques

1. Expliquez la différence entre équilibre partiel et équilibre général, et donnez un exemple de question économique pour laquelle l''équilibre partiel suffit, et un exemple pour lequel l''équilibre général est nécessaire.

2. Présentez en quelques lignes l''apport de Léon Walras et celui d''Alfred Marshall, en évitant toute citation textuelle non vérifiée, et en vous concentrant sur la nature de leur contribution.

3. Pourquoi l''hypothèse d''information parfaite est-elle particulièrement discutable sur le marché du crédit dans un contexte où une large partie de la population n''a pas accès aux services bancaires formels ?

4. Un jury vous demande : « le cadre néoclassique est-il inutile pour étudier le développement africain ? » Rédigez un plan de réponse en trois points qui évite la caricature et reconnaît à la fois les apports et les limites du cadre.

5. Identifiez deux hypothèses du modèle néoclassique standard qui semblent les plus fragiles lorsqu''on les applique à une économie où l''emploi informel concerne la majorité de la population active.

## Corrigé

1. L''équilibre partiel étudie un marché isolément, en supposant les autres marchés stables ; il convient pour des questions locales, par exemple l''effet d''une taxe sur un produit particulier. L''équilibre général étudie l''interdépendance de tous les marchés ; il est nécessaire pour des questions de politique macroéconomique globale, par exemple l''effet d''une réforme fiscale d''ensemble sur les prix relatifs de toute l''économie.

2. Walras a formalisé mathématiquement la condition de compatibilité simultanée de tous les marchés d''une économie (l''équilibre général). Marshall a développé l''outil de l''équilibre partiel, fondé sur les courbes d''offre et de demande, encore largement enseigné aujourd''hui pour l''analyse d''un marché particulier.

3. Parce que l''hypothèse d''information parfaite suppose que prêteurs et emprunteurs connaissent également le risque de non-remboursement ; or, dans un contexte de forte informalité, le prêteur formel manque souvent d''informations vérifiables sur le revenu réel ou l''historique de l''emprunteur, ce qui engendre un rationnement du crédit même pour des emprunteurs solvables, phénomène que le cadre d''information parfaite ne permet pas de décrire correctement.

4. Un plan de réponse équilibré pourrait distinguer : premièrement, les apports reconnus du cadre néoclassique (analyse de l''allocation des ressources, effets-prix, outils de calcul de bien-être) ; deuxièmement, ses limites documentées pour le développement (silence sur les institutions, l''histoire, les structures de pouvoir) ; troisièmement, une conclusion nuancée qui plaide pour une combinaison de cadres théoriques plutôt que pour un rejet pur et simple.

5. On peut retenir, par exemple, l''hypothèse de marché du travail unique et fluide (alors que les économies à forte informalité sont souvent segmentées entre un secteur formel protégé et un secteur informel non protégé) et l''hypothèse d''information parfaite ou de coûts de transaction nuls (alors que l''accès à l''information et aux institutions formelles est très inégal selon les agents).', 'texte', 55, false, 20
from public.courses c where c.slug = 'doc-eco'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Le courant néoclassique : rationalité, marché et équilibre général');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Institutionnalisme, structuralisme et théories de la dépendance : lectures critiques du développement africain', '## Définitions et filiations théoriques

Trois courants, distincts mais souvent combinés dans la littérature sur le développement africain, s''opposent à des degrés divers au cadre néoclassique standard. L''institutionnalisme met l''accent sur les règles du jeu qui encadrent l''activité économique : droits de propriété, qualité des contrats, fonctionnement de l''administration, stabilité politique. Son hypothèse centrale est que la performance économique d''un pays ne dépend pas seulement de la disponibilité du capital ou du travail, mais de la qualité des institutions qui structurent les échanges et réduisent l''incertitude ; une économie peut disposer de ressources abondantes et rester pauvre si ses institutions n''offrent pas de garanties suffisantes à l''investissement et à l''échange.

Le structuralisme, né dans les années 1950 autour des travaux menés en Amérique latine, part d''un constat différent : l''économie mondiale est organisée en un centre industrialisé et une périphérie spécialisée dans l''exportation de matières premières, et cette structure tend à désavantager durablement la périphérie, notamment par une détérioration tendancielle des termes de l''échange, c''est-à-dire une baisse relative du prix des produits primaires exportés par rapport au prix des produits manufacturés importés. Raúl Prebisch, économiste argentin, est généralement crédité d''avoir formalisé cette thèse et d''avoir plaidé, en conséquence, pour des politiques d''industrialisation par substitution aux importations dans les pays du Sud.

Les théories de la dépendance, qui se développent à partir des années 1960 en partie en réaction au structuralisme jugé trop modéré, radicalisent l''analyse en affirmant que le sous-développement des économies périphériques n''est pas un simple retard que le développement viendrait combler avec le temps, mais le produit structurel de leur insertion dans l''économie mondiale, insertion qui profite systématiquement aux économies du centre. Samir Amin, économiste égyptien ayant travaillé notamment sur les économies africaines, est l''un des auteurs associés à cette ligne d''analyse ; il a notamment développé, en termes généraux, l''idée que les économies africaines connaissent un développement extraverti, orienté vers les besoins extérieurs plutôt que vers la satisfaction des besoins internes, ce qui limiterait leur capacité à construire une accumulation de capital autonome.

## Évolution historique et renouveau

Le structuralisme et les théories de la dépendance ont fortement influencé les politiques économiques africaines et latino-américaines des décennies 1960 et 1970, marquées par des stratégies d''industrialisation par substitution aux importations, une présence importante de l''État dans la production, et une méfiance envers le libre-échange. À partir de la fin des années 1970, ces stratégies ont rencontré d''importantes difficultés macroéconomiques (endettement extérieur, déséquilibres budgétaires, inefficacités de certaines entreprises publiques), ce qui a ouvert la voie, dans de nombreux pays, aux programmes d''ajustement structurel négociés avec les institutions financières internationales dans les années 1980 et 1990.

Parallèlement, l''institutionnalisme a connu un renouveau important à partir des années 1990, sous la forme de la nouvelle économie institutionnelle, qui cherche à intégrer l''analyse des institutions dans le cadre néoclassique lui-même (en étudiant par exemple les coûts de transaction ou les droits de propriété comme des variables qui affectent l''efficacité des marchés), ainsi que sous la forme d''une économie politique institutionnaliste plus critique, qui insiste sur le caractère conflictuel de la construction des institutions, façonnées par des rapports de pouvoir plutôt que choisies de façon purement efficiente.

## Le débat sur les politiques d''ajustement structurel en Afrique de l''Ouest

Les programmes d''ajustement structurel mis en œuvre dans plusieurs pays d''Afrique de l''Ouest à partir des années 1980, puis prolongés par la dévaluation du franc CFA en 1994 dans la zone UEMOA, constituent l''un des terrains empiriques les plus débattus entre ces courants théoriques. La justification néoclassique de ces programmes repose sur l''idée que les déséquilibres macroéconomiques (déficits budgétaires et extérieurs persistants, surévaluation du taux de change, distorsions de prix) devaient être corrigés pour restaurer la compétitivité et attirer l''investissement, via la discipline budgétaire, la libéralisation des marchés et des prix, et une plus grande ouverture commerciale.

Les critiques structuralistes et institutionnalistes de ces programmes insistent, pour leur part, sur plusieurs limites. D''abord, un coût social élevé, notamment par la réduction des dépenses publiques dans des secteurs sociaux essentiels, dans une période où les filets de protection sociale étaient peu développés. Ensuite, un risque de désindustrialisation précoce : l''ouverture rapide des marchés aurait, selon cette lecture, exposé des industries naissantes peu compétitives à une concurrence internationale à laquelle elles n''étaient pas préparées, limitant les possibilités de diversification productive que le structuralisme jugeait nécessaires. Enfin, une critique institutionnaliste souligne que les mêmes réformes de marché peuvent produire des résultats très différents selon la qualité des institutions locales (administration, justice, régulation), ce que les programmes d''ajustement, conçus de façon relativement standardisée, auraient insuffisamment pris en compte.

Les défenseurs de ces politiques répondent que l''absence de réforme aurait probablement conduit à des crises macroéconomiques plus coûteuses encore, et que certains pays ayant appliqué ces réformes de façon cohérente ont connu, par la suite, des phases de croissance plus stables. Ce débat reste ouvert ; un candidat au doctorat doit présenter les deux lectures de façon équilibrée, sans trancher un débat documenté de manière contrastée selon les pays et les périodes.

## Limites des lectures institutionnaliste et structuraliste

Ces courants ne sont pas non plus exempts de critiques. La thèse de la détérioration tendancielle des termes de l''échange a fait l''objet de vérifications empiriques aux résultats mitigés selon les périodes et les produits considérés. Les théories de la dépendance les plus radicales ont parfois été critiquées pour leur caractère peu falsifiable, c''est-à-dire pour la difficulté à les soumettre à un test empirique clair qui permettrait de les valider ou de les rejeter. L''institutionnalisme, de son côté, est parfois critiqué pour la difficulté à mesurer précisément la qualité des institutions, et pour un risque de raisonnement circulaire qui consiste à expliquer la pauvreté par de « mauvaises institutions », elles-mêmes définies a posteriori par le constat de la pauvreté.

## Exercices pratiques

1. Distinguez, en quelques phrases, le structuralisme de Prebisch et les théories de la dépendance associées à des auteurs comme Samir Amin, en précisant ce qui les rapproche et ce qui les distingue.

2. Présentez les arguments favorables et les arguments critiques concernant les politiques d''ajustement structurel en Afrique de l''Ouest, sous la forme d''un tableau à deux colonnes.

3. En quoi la nouvelle économie institutionnelle se distingue-t-elle d''une économie politique institutionnaliste plus critique, alors que les deux courants se revendiquent de l''institutionnalisme ?

4. Pourquoi la thèse de la détérioration tendancielle des termes de l''échange a-t-elle pu être jugée difficile à vérifier empiriquement de façon définitive ?

5. Un jury vous demande de choisir, pour votre projet de thèse, entre une entrée théorique néoclassique et une entrée institutionnaliste pour étudier une politique économique ouest-africaine. Rédigez un argumentaire de positionnement en cinq lignes.

6. Expliquez pourquoi un bon candidat doctoral évite de présenter le débat sur l''ajustement structurel comme définitivement tranché dans un sens ou dans l''autre.

## Corrigé

1. Les deux courants partagent l''idée d''une relation structurellement défavorable entre centre et périphérie dans l''économie mondiale. Le structuralisme de Prebisch reste réformiste : il propose des politiques d''industrialisation pour corriger cette relation sans remettre en cause le cadre global des échanges internationaux. Les théories de la dépendance, dont Samir Amin est l''un des représentants pour le cas africain, sont plus radicales : elles considèrent que l''insertion périphérique dans l''économie mondiale produit structurellement le sous-développement, ce qui appelle, selon cette lecture, une rupture plus profonde avec ce mode d''insertion plutôt qu''un simple ajustement de politique industrielle.

2. Colonne « arguments favorables » : correction des déséquilibres macroéconomiques, restauration de la compétitivité, discipline budgétaire, ouverture propice à l''investissement. Colonne « arguments critiques » : coûts sociaux élevés, risque de désindustrialisation précoce, standardisation insuffisamment adaptée aux institutions locales, perte de marge de manœuvre de politique économique nationale.

3. La nouvelle économie institutionnelle intègre les institutions dans le cadre néoclassique (coûts de transaction, droits de propriété) sans remettre en cause l''idée d''efficience du marché ; elle cherche à expliquer pourquoi certaines institutions sont efficientes. L''économie politique institutionnaliste critique insiste davantage sur le caractère conflictuel de la construction des institutions, façonnées par des rapports de pouvoir, et se montre plus sceptique sur l''idée que le marché produirait spontanément les institutions les plus efficientes.

4. Parce que l''évolution des termes de l''échange dépend de nombreux facteurs qui varient selon les produits (matières premières agricoles, minérales, énergétiques) et les périodes (cycles de prix des matières premières, chocs pétroliers, cycles de la demande mondiale), ce qui rend difficile l''établissement d''une tendance unique et stable sur longue période, valable pour l''ensemble des produits primaires et pour l''ensemble des périodes.

5. Un argumentaire possible : le choix dépend de la question de recherche posée ; si l''on souhaite mesurer l''effet d''un changement de prix ou d''incitation sur un comportement précis (offre agricole, emploi), une entrée néoclassique outillée par l''économétrie peut suffire ; si l''on souhaite comprendre pourquoi une réforme produit des effets très différents selon les pays malgré des règles formellement identiques, une entrée institutionnaliste, éventuellement combinée à une méthode qualitative, est plus pertinente.

6. Parce que la littérature empirique disponible donne des résultats contrastés selon les pays, les périodes et les indicateurs retenus (croissance, inégalités, emploi, dette), et qu''un jury valorise la capacité à restituer cette complexité plutôt qu''une position tranchée qui simplifierait abusivement un débat encore documenté de façon nuancée.', 'texte', 55, false, 30
from public.courses c where c.slug = 'doc-eco'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Institutionnalisme, structuralisme et théories de la dépendance : lectures critiques du développement africain');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Méthodes de recherche en économie du développement : économétrie de panel, évaluation d''impact et analyse institutionnelle', '## Les trois familles de méthodes du champ

La recherche en économie du développement mobilise aujourd''hui trois grandes familles de méthodes, souvent combinées dans un même travail doctoral : l''économétrie appliquée sur données de panel, les méthodes d''évaluation d''impact, et l''analyse institutionnelle qualitative. Un candidat au doctorat doit savoir présenter les principes de chacune, leurs conditions de validité, et les situations dans lesquelles elles se complètent plutôt que de s''opposer.

## L''économétrie appliquée et les modèles de panel

Une donnée de panel suit les mêmes unités d''observation (pays, régions, ménages, entreprises) sur plusieurs périodes successives. Ce type de donnée présente un avantage décisif par rapport à une simple coupe transversale (une observation à un instant donné) : il permet de neutraliser les caractéristiques propres à chaque unité qui restent stables dans le temps, mais qui ne sont pas toujours observables par le chercheur, par exemple la qualité moyenne des institutions locales ou la culture entrepreneuriale d''une région.

Le modèle à effets fixes est l''outil central de cette neutralisation : il consiste, en principe, à retirer de chaque observation la moyenne propre à son unité et la moyenne propre à sa période (ce qu''on appelle la démoyennisation, ou estimateur « within »), afin d''isoler la variation qui n''est due ni à des différences permanentes entre unités, ni à des chocs communs à toutes les unités au cours d''une même période. Le modèle à effets aléatoires, à la différence, suppose que les caractéristiques propres à chaque unité ne sont pas corrélées avec les variables explicatives étudiées ; cette hypothèse, plus forte, est généralement testée par un test de spécification (le test de Hausman, en principe) qui compare les deux estimateurs et indique lequel est préférable au vu des données.

Illustrons le principe de la démoyennisation à effets fixes (deux dimensions : région et année) sur un exemple fictif de taux de croissance régionaux au Sénégal. Supposons trois régions fictives et trois années fictives, avec les taux de croissance suivants, en pourcentage : région A, 4,2 puis 5,0 puis 4,6 ; région B, 3,0 puis 3,4 puis 3,2 ; région C, 2,1 puis 2,6 puis 2,0. La moyenne de la région A sur les trois années est de 4,6 % ; la moyenne de l''année du milieu, toutes régions confondues, est d''environ 3,67 % ; la moyenne générale de l''ensemble des neuf observations est d''environ 3,34 %. L''estimateur à effets fixes isole, pour chaque observation, l''écart qui reste une fois retirés l''effet région et l''effet année : pour la région A à l''année du milieu, cet écart résiduel est d''environ 0,08 point, ce qui montre que la performance de cette région-année, une fois neutralisés son niveau structurel propre et le choc commun de cette année-là, est très proche de ce que le modèle prédirait, et non le signe d''un événement remarquable propre à cette observation.

## Les méthodes d''évaluation d''impact

L''évaluation d''impact cherche à mesurer l''effet causal d''une politique ou d''un programme, et non une simple corrélation. La méthode de la différence de différences compare l''évolution d''un groupe ayant bénéficié d''une politique (le groupe traité) à l''évolution d''un groupe comparable n''en ayant pas bénéficié (le groupe témoin), avant et après la mise en œuvre de la politique. L''hypothèse centrale de validité de cette méthode est l''hypothèse de tendances parallèles : en l''absence de la politique, les deux groupes auraient dû évoluer de façon similaire ; si cette hypothèse est raisonnable, la différence entre les deux évolutions observées peut être attribuée à la politique elle-même.

Les expériences naturelles constituent une autre famille de méthodes : elles exploitent un événement extérieur (une réforme administrative, une frontière historique, une variation climatique) qui a réparti de façon quasi aléatoire des unités entre une situation « traitée » et une situation « non traitée », sans intervention du chercheur. Lorsqu''une telle situation est disponible, elle permet d''approcher les conditions d''une expérience contrôlée, ce qui renforce la crédibilité de l''estimation causale obtenue. Les expériences contrôlées randomisées, enfin, lorsqu''elles sont possibles sur le plan éthique et logistique, attribuent elles-mêmes, de façon aléatoire, le traitement entre les unités étudiées, ce qui garantit, en principe, la comparabilité initiale des groupes traité et témoin.

## L''analyse institutionnelle qualitative

À côté de ces méthodes quantitatives, l''analyse institutionnelle qualitative reste indispensable pour comprendre les mécanismes par lesquels une politique produit ses effets, et pour expliquer pourquoi des réformes similaires produisent des résultats différents selon les contextes. Elle s''appuie sur des études de cas approfondies, des entretiens avec les acteurs concernés (administrateurs, entrepreneurs, bénéficiaires), l''analyse de documents institutionnels et de discours politiques, et une attention particulière à la trajectoire historique propre à chaque contexte (ce que l''on appelle la dépendance de sentier). Cette approche ne cherche pas à établir une relation causale moyenne généralisable, mais à restituer la logique interne d''un cas particulier, ce qui en fait un complément précieux des méthodes quantitatives plutôt qu''un substitut.

## Exemple de protocole de recherche appliqué

Prenons un exemple fictif de protocole de recherche doctorale, portant sur une région sénégalaise fictive. Question de recherche : un programme fictif de transferts monétaires conditionnels versés à des ménages ruraux améliore-t-il leur revenu mensuel moyen ? Méthode retenue : une différence de différences, comparant des villages fictifs bénéficiaires (groupe traité) à des villages fictifs comparables non bénéficiaires (groupe témoin), avant et après le programme.

Données fictives pour l''exemple : le revenu mensuel moyen des ménages traités est de 45 000 francs CFA avant le programme et de 58 000 francs CFA après, soit une hausse de 13 000 francs CFA. Le revenu mensuel moyen des ménages témoins est de 44 000 francs CFA avant et de 50 000 francs CFA après, soit une hausse de 6 000 francs CFA. L''estimateur de différence de différences soustrait la seconde évolution de la première : 13 000 moins 6 000, soit un effet attribuable au programme d''environ 7 000 francs CFA par mois. Ce protocole devrait être complété par une analyse qualitative (entretiens dans les villages traités) afin de vérifier que l''hypothèse de tendances parallèles est plausible, et pour comprendre les mécanismes concrets par lesquels le transfert a modifié les comportements des ménages (épargne, investissement productif, scolarisation des enfants).

## Exercices pratiques

1. Expliquez pourquoi une donnée de panel permet de contrôler des caractéristiques non observables qu''une simple coupe transversale ne permet pas de contrôler.

2. Présentez l''hypothèse de tendances parallèles et expliquez pourquoi elle est essentielle à la validité d''une différence de différences.

3. Donnez un exemple fictif d''expérience naturelle qui pourrait être exploitée pour étudier l''effet d''une politique économique en Afrique de l''Ouest, en précisant quelle variation « quasi aléatoire » serait exploitée.

4. Pourquoi l''analyse institutionnelle qualitative reste-t-elle utile même lorsqu''une évaluation quantitative rigoureuse (différence de différences, expérience) est disponible ?

5. À partir de l''exemple fictif de transferts monétaires, recalculez l''estimateur de différence de différences si le revenu des ménages témoins après le programme avait été de 48 000 francs CFA au lieu de 50 000 francs CFA.

6. Proposez, pour votre propre projet de thèse, une méthode (panel, évaluation d''impact, analyse qualitative, ou combinaison) et justifiez ce choix en deux ou trois phrases.

## Corrigé

1. Parce que le panel observe plusieurs fois la même unité : il est alors possible de retirer, par la démoyennisation, tout ce qui est propre et stable à cette unité (y compris des caractéristiques non mesurées, comme la qualité institutionnelle locale), ce qu''une coupe transversale, qui observe chaque unité une seule fois, ne permet pas de faire.

2. L''hypothèse de tendances parallèles suppose que, en l''absence du programme étudié, le groupe traité aurait évolué de la même façon que le groupe témoin. Si cette hypothèse est violée (par exemple si le groupe traité était déjà sur une trajectoire différente avant le programme), l''estimateur de différence de différences attribue au programme un effet qui provient en réalité d''une différence préexistante entre les deux groupes.

3. Exemple possible : l''instauration, à une date précise, d''une réforme administrative qui ne s''applique qu''à une partie du territoire pour des raisons purement administratives (par exemple un découpage régional antérieur), sans lien avec les caractéristiques économiques des zones concernées ; la comparaison entre zones couvertes et non couvertes par la réforme, à une date proche de son entrée en vigueur, peut alors approcher les conditions d''une expérience naturelle.

4. Parce que les méthodes quantitatives mesurent un effet moyen mais n''expliquent pas toujours par quel mécanisme cet effet se produit, ni pourquoi il varie selon les contextes institutionnels ; l''analyse qualitative permet de documenter ces mécanismes et d''interpréter de façon plus fine un résultat quantitatif.

5. La hausse chez les témoins serait alors de 48 000 moins 44 000, soit 4 000 francs CFA ; l''estimateur de différence de différences serait de 13 000 moins 4 000, soit 9 000 francs CFA, un effet attribuable plus élevé que dans l''exemple initial.

6. Il n''existe pas de réponse unique ; une bonne réponse justifie le choix par la nature de la question de recherche (mesure d''un effet causal précis, compréhension d''un mécanisme institutionnel, ou les deux combinés dans une approche mixte).', 'texte', 55, false, 40
from public.courses c where c.slug = 'doc-eco'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Méthodes de recherche en économie du développement : économétrie de panel, évaluation d''impact et analyse institutionnelle');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Épreuve type d''examen de qualification : le débat sur l''ajustement structurel en Afrique de l''Ouest', '## La question type

Voici une question de synthèse représentative du type de sujet que peut poser un jury d''examen de qualification doctorale en économie, spécialisation économie du développement (il s''agit d''un exemple pédagogique et non d''un sujet officiel) : « Les politiques d''ajustement structurel mises en œuvre en Afrique de l''Ouest à partir des années 1980 doivent-elles être lues comme un échec du point de vue du développement économique, ou comme une étape nécessaire de rééquilibrage macroéconomique ? Vous mobiliserez les apports du courant néoclassique et des approches institutionnalistes et structuralistes, et vous proposerez une méthode empirique permettant d''éclairer ce débat. »

## Analyse de la question

Avant de répondre, un bon candidat prend quelques minutes pour décomposer la question. Elle comporte trois exigences distinctes : une exigence de positionnement théorique (mobiliser deux courants concurrents), une exigence de jugement nuancé (éviter la réponse binaire « échec » ou « succès »), et une exigence méthodologique (proposer une façon de trancher empiriquement le débat). Un candidat qui ne traite qu''une de ces trois exigences, même brillamment, laisse une impression incomplète au jury.

## Plan de réponse détaillé

Introduction. Il convient de rappeler le contexte : plusieurs économies ouest-africaines ont connu, à partir de la fin des années 1970, des déséquilibres macroéconomiques importants (déficits publics et extérieurs persistants), qui ont conduit à la mise en œuvre de programmes de stabilisation et d''ajustement structurel négociés avec les institutions financières internationales, prolongés par la dévaluation du franc CFA en 1994 dans la zone UEMOA. La question posée appelle une réponse structurée en trois temps : la lecture néoclassique, la critique institutionnaliste et structuraliste, puis une proposition méthodologique.

Première partie : la lecture néoclassique des programmes d''ajustement. Cette lecture part du constat que les déséquilibres macroéconomiques, s''ils ne sont pas corrigés, finissent par produire des crises plus coûteuses (inflation, défaut de paiement, fuite des capitaux). La discipline budgétaire, la libéralisation des prix et des marchés, et l''ouverture commerciale sont présentées comme des conditions nécessaires pour restaurer la compétitivité, attirer l''investissement et retrouver, à terme, une trajectoire de croissance soutenable. Dans cette lecture, les difficultés sociales observées pendant la période d''ajustement sont analysées comme un coût de transition, regrettable mais nécessaire, et non comme la preuve d''un échec de la stratégie elle-même.

Deuxième partie : la critique structuraliste et institutionnaliste. Cette lecture insiste sur trois limites des programmes d''ajustement. D''abord, un coût social élevé supporté dans un contexte de protection sociale peu développée, ce qui pose une question d''équité dans la répartition des efforts d''ajustement. Ensuite, un risque de désindustrialisation précoce lié à une ouverture commerciale rapide, qui aurait fragilisé des activités manufacturières naissantes avant qu''elles n''aient pu devenir compétitives, limitant ainsi la diversification productive que les structuralistes jugent indispensable pour sortir d''une spécialisation primaire défavorable dans la durée. Enfin, une critique institutionnaliste souligne que des réformes de marché standardisées produisent des résultats très différents selon la qualité des institutions locales, ce qui invite à ne pas évaluer ces politiques indépendamment du contexte institutionnel dans lequel elles ont été appliquées.

Troisième partie : une proposition méthodologique. Pour éclairer empiriquement ce débat plutôt que de le trancher par principe théorique, on peut proposer une approche en deux volets. Un premier volet quantitatif consisterait à construire un panel macroéconomique de plusieurs pays ouest-africains sur une période englobant l''avant et l''après-ajustement, et à exploiter les différences de calendrier ou d''intensité de mise en œuvre des réformes entre pays comme une forme d''expérience naturelle, en comparant par une différence de différences l''évolution d''indicateurs comme la croissance, l''investissement ou l''emploi entre pays ayant appliqué les réformes plus tôt ou plus intensément et pays les ayant appliquées plus tard ou plus modérément, sous réserve de vérifier la plausibilité de l''hypothèse de tendances parallèles avant la réforme. Un second volet qualitatif, complémentaire, consisterait à mener des études de cas institutionnelles dans quelques pays contrastés, afin de comprendre par quels mécanismes concrets (qualité de l''administration, stabilité politique, structure du secteur productif) des réformes proches ont produit des trajectoires différentes.

Conclusion. Une bonne conclusion évite de trancher de façon définitive, et rappelle que la littérature empirique disponible donne des résultats contrastés selon les pays et les indicateurs retenus ; elle souligne que le véritable apport scientifique consiste moins à juger ces politiques en bloc qu''à identifier les conditions institutionnelles et macroéconomiques qui ont rendu leurs effets plus ou moins favorables selon les contextes, ce qui ouvre d''ailleurs des pistes concrètes pour un projet de thèse sur ce terrain.

## Ce que le jury valorise dans cette réponse

Le jury valorise, dans ce type de réponse, la capacité à mobiliser les deux courants de façon équilibrée et non caricaturale, la précision des mécanismes invoqués (plutôt que des affirmations générales non étayées), la cohérence entre le cadre théorique mobilisé et la méthode empirique proposée, et la clarté de la structure d''exposition, qui doit rester intelligible même sans les sous-titres écrits, à l''oral devant le jury.

## Exercices pratiques

1. Reformulez la question type de cette leçon en changeant le terrain d''application (par exemple, remplacez l''ajustement structurel par la libéralisation du secteur agricole), et rédigez un plan de réponse en trois parties sur le modèle proposé.

2. Identifiez, dans le plan de réponse détaillé, les deux phrases qui pourraient être contestées par un jury exigeant comme manquant de nuance, et proposez une reformulation plus prudente.

3. Pourquoi est-il risqué, à l''oral, de répondre à une question de synthèse par une position tranchée dès la première minute, avant d''avoir présenté les différentes lectures théoriques ?

4. Expliquez en quoi la proposition méthodologique de cette leçon combine une méthode quantitative et une méthode qualitative, et pourquoi cette combinaison est pertinente pour ce sujet précis.

5. Rédigez, en cinq lignes maximum, l''introduction orale que vous prononceriez devant un jury pour cette question type.

## Corrigé

1. Pour le terrain de la libéralisation agricole, un plan analogue distinguerait : une lecture néoclassique (la libéralisation des prix agricoles améliore les incitations à produire et l''efficacité allocative) ; une critique structuraliste et institutionnaliste (risque de volatilité des revenus pour des producteurs peu couverts par des mécanismes d''assurance, dépendance accrue aux cours mondiaux, nécessité d''institutions de régulation adaptées) ; une proposition méthodologique (différence de différences comparant des zones ayant libéralisé plus tôt ou plus tard, complétée par des entretiens auprès des producteurs).

2. Des formulations comme « les difficultés sociales sont nécessaires » ou « la désindustrialisation est la preuve d''un échec » mériteraient d''être nuancées, par exemple en précisant « selon la lecture néoclassique » ou « selon la lecture structuraliste », afin de toujours attribuer clairement un jugement normatif au courant théorique qui le porte, plutôt que de le présenter comme un fait établi.

3. Parce qu''une position tranchée d''emblée donne l''impression que le candidat n''a pas conscience de la complexité du débat, ou qu''il a choisi une réponse avant même d''avoir examiné les arguments contraires ; le jury valorise un raisonnement qui construit sa conclusion à partir de l''examen successif des différentes lectures, plutôt qu''une opinion affirmée en préalable.

4. La méthode quantitative (panel, différence de différences entre pays) permet de mesurer un effet moyen attribuable aux réformes sur des indicateurs macroéconomiques ; la méthode qualitative (études de cas institutionnelles) permet de comprendre pourquoi cet effet varie selon les pays, en documentant les mécanismes institutionnels concrets ; la combinaison des deux répond à la fois à la question de l''ampleur de l''effet et à la question de ses déterminants.

5. Exemple : « Cette question oppose deux lectures du bilan des programmes d''ajustement structurel en Afrique de l''Ouest. Je présenterai d''abord la justification néoclassique de ces réformes, puis les critiques structuralistes et institutionnalistes qui leur ont été adressées, avant de proposer une méthode empirique combinant une analyse de panel entre pays et une analyse institutionnelle qualitative, qui permet de nuancer plutôt que de trancher ce débat. »', 'texte', 60, false, 50
from public.courses c where c.slug = 'doc-eco'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Épreuve type d''examen de qualification : le débat sur l''ajustement structurel en Afrique de l''Ouest');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : le courant néoclassique, rationalité et équilibre général', '## Fiche du cours vidéo

Durée : 1 heure 30. Objectifs : maîtriser les hypothèses fondatrices du courant néoclassique (rationalité, équilibre, équilibre général), connaître les apports des auteurs fondateurs sans citation textuelle inventée, et savoir exposer les limites de ce cadre pour l''analyse du développement africain, de façon à pouvoir répondre à une question de jury sur ce courant. Matériel : tableau ou diaporama avec le schéma de l''équilibre partiel et le tableau comparatif des courants construit en leçon 1. Prérequis : avoir lu la leçon texte correspondante et préparé une fiche de lecture sur un auteur néoclassique au choix.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et mise en perspective

Bonjour à toutes et à tous. Dans cette séance, nous allons travailler le premier grand courant théorique que tout candidat à l''examen de qualification doctorale en économie doit maîtriser parfaitement : le courant néoclassique. Je vous propose de commencer par une question simple, que vous devez vous poser systématiquement devant un courant théorique : quelle est l''hypothèse de départ, et que cherche-t-elle à expliquer ? Pour le courant néoclassique, l''hypothèse de départ est celle de la rationalité des agents économiques, et ce que ce courant cherche à expliquer, c''est comment des décisions individuelles, prises séparément par des millions d''agents, peuvent se coordonner de façon cohérente à travers le système de prix.

## 05:00 – 20:00 · Rationalité, marché et équilibre

Prenons le temps de bien définir chaque notion. Un agent rationnel, dans ce cadre, dispose de préférences cohérentes, cherche à maximiser sa satisfaction sous une contrainte de ressources, et utilise au mieux l''information disponible. Notez bien que cette définition est une hypothèse de travail, pas une description complète du comportement humain réel ; nous reviendrons sur ses limites plus tard dans la séance. L''équilibre de marché, ensuite, correspond au prix pour lequel la quantité offerte égale la quantité demandée. Visualisez le schéma classique des courbes d''offre et de demande que je vous présente au tableau : le point d''intersection est le point d''équilibre partiel, celui que Marshall a formalisé. Mais un marché ne vit pas isolé des autres marchés : le marché du travail influence le marché des biens, qui influence le marché des capitaux. C''est pour cette raison que Walras a cherché à démontrer, de façon plus ambitieuse, l''existence d''un système de prix qui rende compatibles tous les marchés simultanément : c''est l''équilibre général. Question à vous poser : pourquoi un chercheur aurait-il besoin de l''équilibre général plutôt que de se contenter de l''équilibre partiel ? Réponse : dès qu''une politique économique touche plusieurs marchés à la fois, par exemple une réforme fiscale globale, l''équilibre partiel devient insuffisant pour en mesurer tous les effets.

## 20:00 – 35:00 · Les auteurs fondateurs et leur apport

Je vous propose maintenant de parcourir les contributions des auteurs fondateurs, en nous limitant à ce qui est solidement établi, sans prêter à aucun d''entre eux de citation textuelle que nous ne pourrions vérifier. Léon Walras est associé à la formalisation mathématique de l''équilibre général. Alfred Marshall a développé l''équilibre partiel et les outils d''offre et de demande encore enseignés aujourd''hui. Vilfredo Pareto a apporté le critère d''optimalité qui porte son nom, qui permet de juger l''efficacité d''une allocation sans comparer directement le bien-être de deux personnes différentes. Plus tard, au vingtième siècle, les deux théorèmes fondamentaux de l''économie du bien-être ont établi, sous certaines conditions mathématiques, qu''un équilibre concurrentiel est efficace, et que toute allocation efficace peut en principe être atteinte par un marché concurrentiel associé à une redistribution initiale. Le programme néoclassique s''est ensuite étendu à de nouveaux champs : théorie du capital humain, nouvelle économie classique avec l''hypothèse d''anticipations rationnelles.

## 35:00 – 45:00 · Pause active et quiz interactif

Nous allons marquer une pause pour un quiz interactif. Première question : l''équilibre général étudie-t-il un marché isolé ou l''interdépendance de tous les marchés ? Répondez mentalement avant que je ne donne la réponse. Réponse : l''interdépendance de tous les marchés. Deuxième question : à quel auteur associe-t-on le critère d''optimalité qui porte son nom ? Réponse : Vilfredo Pareto. Troisième question : l''hypothèse d''anticipations rationnelles appartient à quel développement du courant néoclassique ? Réponse : la nouvelle économie classique. Prenez trente secondes pour noter, sur votre fiche personnelle, les points sur lesquels vous avez hésité, afin de les retravailler après la séance.

## 45:00 – 60:00 · Les limites et critiques du cadre néoclassique

Reprenons maintenant les critiques majeures. Premièrement, l''économie comportementale a montré, par des travaux expérimentaux, que les agents réels s''écartent systématiquement de la rationalité parfaite, par des biais d''aversion à la perte ou de myopie temporelle. Deuxièmement, les théories de l''information asymétrique ont montré que lorsque l''information est inégalement répartie entre les parties à un échange, le marché peut échouer à atteindre un équilibre efficace ; pensez au marché du crédit, où le prêteur ne connaît pas toujours parfaitement le risque de l''emprunteur. Troisièmement, et c''est le point le plus important pour notre champ d''étude, le cadre néoclassique standard reste relativement silencieux sur les institutions, l''histoire et les structures de pouvoir, ce qui a conduit de nombreux économistes du développement à le juger insuffisant, pris seul, pour expliquer pourquoi certaines économies restent durablement spécialisées dans l''exportation de matières premières peu transformées.

## 60:00 – 75:00 · Portée et usage pour l''analyse du développement africain

Il serait toutefois une erreur de rejeter en bloc ce cadre. Il reste très utile pour analyser l''allocation des ressources, l''effet des prix relatifs sur les comportements, par exemple l''effet d''une variation de prix d''un produit agricole d''exportation sur les décisions de production des ménages ruraux. De nombreux travaux appliqués continuent de mobiliser ce cadre pour étudier les effets de la libéralisation des marchés ou de la fiscalité. Le point que vous devez retenir pour votre examen : la question n''est pas « le cadre néoclassique est-il vrai ou faux », mais « dans quelles conditions ce cadre est-il pertinent, et où ses limites appellent-elles un cadre complémentaire », ce qui nous amène directement au courant que nous étudierons dans la prochaine vidéo, le courant institutionnaliste et structuraliste.

Un exemple concret peut vous aider à fixer cette idée. Imaginez une étude sur l''effet d''une hausse du prix international d''un produit agricole d''exportation sur la quantité produite par les ménages ruraux d''une région donnée. Un cadre néoclassique standard prédit, toutes choses égales par ailleurs, une hausse de la production en réponse à la hausse du prix, par un effet d''incitation classique. Mais si cette même région souffre d''un accès très limité au crédit pour financer les intrants nécessaires à cette hausse de production, ou si les droits fonciers y sont mal sécurisés, la réponse réelle des ménages peut être beaucoup plus faible que celle prédite par le modèle le plus simple. Cela ne signifie pas que le raisonnement néoclassique est faux, mais qu''il doit être complété par une analyse des contraintes institutionnelles et financières propres au contexte étudié, ce qui est précisément la contribution des courants que nous aborderons dans la vidéo suivante.

## 75:00 – 85:00 · Synthèse et méthode de mémorisation

Pour synthétiser, retenez trois points. Un : le courant néoclassique repose sur la rationalité des agents et l''équilibre des marchés, formalisé à l''échelle de l''équilibre général par Walras. Deux : ses auteurs fondateurs (Walras, Marshall, Pareto) ont chacun apporté un outil précis, qu''il faut pouvoir citer sans confusion. Trois : ses limites (rationalité imparfaite, information asymétrique, silence institutionnel) justifient l''existence de cadres alternatifs, sans pour autant rendre ce cadre inutile. Je vous conseille de reproduire, sur une fiche unique, ces trois points avec un exemple pour chacun, c''est la meilleure façon de les restituer sous la pression de l''oral.

J''ajoute une dernière remarque méthodologique, utile pour l''oral : lorsque le jury vous demande d''exposer un courant théorique, commencez toujours par son hypothèse centrale, avant de citer les auteurs et avant d''évoquer les critiques. Cet ordre (hypothèse, auteurs, critiques, portée) est celui que nous avons suivi dans cette séance, et c''est celui qui structure une réponse claire et complète, quel que soit le courant demandé par le jury.

## 85:00 – 90:00 · Évaluation finale

Cinq questions pour vérifier votre acquisition. Un, quelle est la différence entre équilibre partiel et équilibre général ? Réponse : l''équilibre partiel étudie un marché isolé, l''équilibre général l''interdépendance de tous les marchés. Deux, quel auteur a formalisé l''équilibre général ? Réponse : Léon Walras. Trois, quel auteur a développé l''outil des courbes d''offre et de demande en équilibre partiel ? Réponse : Alfred Marshall. Quatre, citez une critique majeure adressée au cadre néoclassique du point de vue du développement. Réponse : son silence relatif sur les institutions, l''histoire et les structures de pouvoir. Cinq, pourquoi le cadre néoclassique reste-t-il utile malgré ses limites ? Réponse : il fournit des outils puissants pour analyser l''allocation des ressources et l''effet des prix relatifs, utiles en complément d''autres cadres. Rendez-vous à la prochaine vidéo pour le courant institutionnaliste et structuraliste.', 'video', 90, false, 60
from public.courses c where c.slug = 'doc-eco'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : le courant néoclassique, rationalité et équilibre général');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : institutionnalisme, structuralisme, dépendance et le débat sur l''ajustement structurel', '## Fiche du cours vidéo

Durée : 1 heure 30. Objectifs : maîtriser les apports du structuralisme et des théories de la dépendance, comprendre le renouveau de l''institutionnalisme, et savoir présenter de façon équilibrée le débat sur les politiques d''ajustement structurel en Afrique de l''Ouest. Matériel : tableau avec la carte centre-périphérie, chronologie 1950-2000. Prérequis : leçon texte correspondante lue, tableau comparatif des courants de la leçon 1 sous la main.

## Déroulé minuté

## 00:00 – 05:00 · Accueil

Bienvenue dans cette deuxième séance consacrée aux grands courants théoriques. Après le courant néoclassique, nous abordons aujourd''hui trois courants qui s''en distinguent à des degrés divers : l''institutionnalisme, le structuralisme et les théories de la dépendance. Ces trois courants partagent une préoccupation commune : expliquer pourquoi certaines économies, notamment en Afrique, restent durablement en retrait dans l''économie mondiale, alors que le cadre néoclassique standard a du mal à en rendre compte.

## 05:00 – 20:00 · L''institutionnalisme : les règles du jeu comptent

Commençons par l''institutionnalisme. Son hypothèse centrale : la performance économique d''un pays dépend moins de la disponibilité du capital ou du travail que de la qualité des institutions qui encadrent les échanges, c''est-à-dire les droits de propriété, la qualité des contrats, le fonctionnement de l''administration, la stabilité politique. Une économie peut disposer de ressources naturelles abondantes et rester pauvre si ses institutions n''offrent pas de garanties suffisantes à l''investissement. Vous devez savoir distinguer deux formes d''institutionnalisme : la nouvelle économie institutionnelle, qui intègre les institutions dans le raisonnement néoclassique lui-même, par exemple via la notion de coûts de transaction ; et une économie politique institutionnaliste plus critique, qui insiste sur le caractère conflictuel de la construction des institutions, façonnées par des rapports de pouvoir plutôt que choisies de façon purement efficiente.

## 20:00 – 35:00 · Structuralisme et théories de la dépendance

Le structuralisme naît dans les années 1950 autour d''un constat : l''économie mondiale est organisée en un centre industrialisé et une périphérie exportatrice de matières premières, et cette structure tend à désavantager durablement la périphérie, notamment par une détérioration tendancielle des termes de l''échange, c''est-à-dire une baisse relative du prix des produits primaires exportés par rapport au prix des produits manufacturés importés. Raúl Prebisch est l''auteur généralement crédité d''avoir formalisé cette thèse et d''avoir plaidé pour des politiques d''industrialisation par substitution aux importations dans les pays du Sud, c''est-à-dire des politiques visant à produire localement des biens manufacturés jusque-là importés, afin de réduire la dépendance aux cours mondiaux des matières premières.

Les théories de la dépendance, à partir des années 1960, radicalisent cette analyse en partie en réaction au structuralisme jugé trop modéré : le sous-développement n''est pas un simple retard que le temps viendrait combler, il est le produit structurel de l''insertion périphérique dans l''économie mondiale, insertion qui profiterait systématiquement aux économies du centre. Samir Amin, économiste égyptien ayant travaillé notamment sur les économies africaines, est associé à cette ligne d''analyse, avec l''idée, présentée en termes généraux et sans citation textuelle précise, d''un développement extraverti des économies africaines, orienté vers les besoins extérieurs plutôt que vers l''accumulation interne de capital, ce qui limiterait, selon cette lecture, la capacité de ces économies à construire une trajectoire de développement autonome.

## 35:00 – 45:00 · Pause active et quiz interactif

Petit quiz pour fixer ces notions. Un : à quel auteur associe-t-on la thèse de la détérioration tendancielle des termes de l''échange ? Réponse : Raúl Prebisch. Deux : quelle est la différence essentielle entre le structuralisme et les théories de la dépendance les plus radicales ? Réponse : le structuralisme reste réformiste, les théories de la dépendance jugent le sous-développement structurellement produit par l''insertion périphérique elle-même. Trois : quel auteur est associé à l''idée de développement extraverti pour les économies africaines ? Réponse : Samir Amin. Notez vos hésitations avant de continuer.

## 45:00 – 60:00 · Le débat sur l''ajustement structurel en Afrique de l''Ouest

Ce débat constitue le terrain empirique le plus disputé entre ces courants, et c''est un terrain que vous devez connaître en détail pour votre examen. La lecture néoclassique justifie les programmes d''ajustement structurel mis en œuvre à partir des années 1980, puis prolongés par la dévaluation du franc CFA en 1994 dans la zone UEMOA, par la nécessité de corriger des déséquilibres macroéconomiques persistants (déficits publics et extérieurs, surévaluation du taux de change, distorsions de prix) via la discipline budgétaire, la libéralisation des prix et des marchés, et une plus grande ouverture commerciale, considérées comme des conditions nécessaires à la restauration de la compétitivité et à l''attraction de l''investissement.

La critique structuraliste et institutionnaliste souligne trois limites principales. D''abord un coût social élevé, supporté dans un contexte où les filets de protection sociale étaient peu développés, ce qui pose une question d''équité dans la répartition des efforts d''ajustement entre catégories sociales. Ensuite un risque de désindustrialisation précoce : l''ouverture commerciale rapide aurait exposé des industries naissantes peu compétitives à une concurrence internationale à laquelle elles n''étaient pas préparées, limitant les possibilités de diversification productive que les structuralistes jugent indispensables. Enfin, une insuffisante prise en compte des différences institutionnelles entre pays dans des réformes conçues de façon relativement standardisée, ce qui aurait produit des résultats très inégaux selon la qualité de l''administration et de la régulation locale. Les défenseurs de ces politiques répondent, pour leur part, que l''absence de réforme aurait probablement conduit à des crises macroéconomiques plus coûteuses encore, et que certains pays ayant appliqué ces réformes de façon cohérente ont connu, par la suite, des phases de croissance plus stables que celles qui les avaient précédées.

## 60:00 – 75:00 · Limites des lectures critiques et posture du candidat

Ces courants ne sont pas eux-mêmes sans limites. La thèse de la détérioration tendancielle des termes de l''échange a donné des résultats empiriques mitigés selon les produits et les périodes : elle se vérifie mieux pour certains cycles de matières premières agricoles que pour d''autres, et elle dépend fortement de la période de référence choisie par le chercheur, ce qui en limite la portée générale. Les théories de la dépendance les plus radicales ont été critiquées pour leur difficulté à être testées empiriquement de façon claire : si le sous-développement est défini comme la conséquence nécessaire de l''insertion périphérique, il devient difficile d''imaginer une observation qui contredirait la thèse, ce qui pose un problème de méthode scientifique connu sous le nom de difficulté de falsification. L''institutionnalisme, de son côté, est parfois critiqué pour la difficulté à mesurer la qualité des institutions sans tomber dans un raisonnement circulaire, qui consisterait à expliquer la pauvreté par de mauvaises institutions, elles-mêmes définies après coup par le simple constat de cette pauvreté.

Pour votre examen, retenez la posture à adopter devant un jury : présentez les deux lectures du débat sur l''ajustement structurel de façon équilibrée, sans jamais prétendre qu''il est définitivement tranché dans la littérature, car les résultats empiriques varient selon les pays, les périodes et les indicateurs retenus. Un candidat qui affirme sans nuance que les programmes d''ajustement ont été un échec total, ou au contraire un succès total, donne au jury le signal qu''il connaît mal l''état réel de la littérature empirique sur la question, ce qui est précisément ce qu''un jury doctoral cherche à vérifier.

## 75:00 – 85:00 · Synthèse comparée des quatre courants vus jusqu''ici

Reprenons l''ensemble du tableau. Néoclassique : agents rationnels, marché autorégulateur, silence institutionnel relatif. Institutionnalisme : importance des règles du jeu, deux variantes (nouvelle économie institutionnelle et économie politique critique). Structuralisme : centre-périphérie, détérioration des termes de l''échange, réformisme industrialisant. Théories de la dépendance : sous-développement structurellement produit, lecture plus radicale. Sur le terrain de l''ajustement structurel, ces quatre courants offrent des grilles de lecture différentes, et un bon candidat doctoral sait mobiliser chacune selon la question posée par le jury, plutôt que de répéter mécaniquement un seul cadre.

## 85:00 – 90:00 · Évaluation finale

Cinq questions. Un, quelle est l''hypothèse centrale de l''institutionnalisme ? Réponse : la performance économique dépend de la qualité des institutions, pas seulement des ressources disponibles. Deux, à quel auteur associe-t-on le structuralisme centre-périphérie ? Réponse : Raúl Prebisch. Trois, quel auteur est associé au développement extraverti des économies africaines ? Réponse : Samir Amin. Quatre, citez une critique structuraliste des programmes d''ajustement structurel. Réponse : le risque de désindustrialisation précoce lié à une ouverture commerciale rapide. Cinq, pourquoi un candidat doctoral doit-il éviter de trancher définitivement le débat sur l''ajustement structurel ? Réponse : parce que la littérature empirique donne des résultats contrastés selon les pays et les périodes. Un dernier conseil pratique : si le jury vous demande explicitement votre propre avis sur le bilan de ces politiques, répondez en rappelant d''abord les deux lectures, puis en indiquant, si vous devez vous positionner, les conditions précises (pays, période, indicateur) sous lesquelles l''une ou l''autre lecture vous semble la plus étayée empiriquement, plutôt que de donner une opinion générale non appuyée sur des éléments précis.

Rendez-vous à la prochaine vidéo pour les méthodes de recherche du champ.', 'video', 90, false, 70
from public.courses c where c.slug = 'doc-eco'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : institutionnalisme, structuralisme, dépendance et le débat sur l''ajustement structurel');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : économétrie de panel, évaluation d''impact et analyse institutionnelle', '## Fiche du cours vidéo

Durée : 1 heure 30. Objectifs : maîtriser les principes de l''économétrie de panel, des méthodes d''évaluation d''impact et de l''analyse institutionnelle qualitative, et savoir construire un protocole de recherche appliqué. Matériel : tableau avec le tableau de données fictif de croissance régionale, calculatrice. Prérequis : leçon texte correspondante lue.

## Déroulé minuté

## 00:00 – 05:00 · Accueil

Nous abordons aujourd''hui les méthodes de recherche propres à l''économie du développement. C''est un point sur lequel le jury est particulièrement attentif, car un bon positionnement théorique sans méthode crédible ne suffit pas à convaincre un jury doctoral que vous pouvez produire un travail de recherche original. Nous allons voir trois familles de méthodes complémentaires, et je vous demande de garder votre feuille et votre calculatrice à portée de main, car nous allons reproduire ensemble un calcul numérique complet.

## 05:00 – 20:00 · Les données de panel et le modèle à effets fixes

Une donnée de panel suit les mêmes unités (pays, régions, ménages) sur plusieurs périodes. Son avantage décisif : elle permet de neutraliser les caractéristiques propres à chaque unité qui restent stables dans le temps mais que le chercheur n''observe pas toujours, par exemple la qualité institutionnelle locale. Le modèle à effets fixes retire, pour chaque observation, la moyenne propre à son unité et la moyenne propre à sa période, afin d''isoler la variation qui n''est due ni à des différences permanentes entre unités ni à des chocs communs à une période donnée. Le modèle à effets aléatoires suppose, à la différence, que les caractéristiques propres à chaque unité ne sont pas corrélées aux variables explicatives, hypothèse plus forte, généralement testée par un test de spécification de type Hausman.

Travaillons ensemble sur un exemple numérique fictif que je vous invite à reproduire sur votre feuille. Trois régions sénégalaises fictives, trois années fictives, taux de croissance en pourcentage : région A, 4,2 puis 5,0 puis 4,6 ; région B, 3,0 puis 3,4 puis 3,2 ; région C, 2,1 puis 2,6 puis 2,0. Calculez la moyenne de la région A : elle est de 4,6 pour cent. Calculez la moyenne de l''année du milieu, toutes régions confondues : elle est d''environ 3,67 pour cent. La moyenne générale des neuf observations est d''environ 3,34 pour cent. L''estimateur à effets fixes isole, pour chaque observation, l''écart résiduel une fois retirés l''effet région et l''effet année : pour la région A à l''année du milieu, ce résidu est d''environ 0,08 point, ce qui montre que cette observation est très proche de ce que le modèle prédit, une fois neutralisés le niveau structurel de la région et le choc commun de l''année.

## 20:00 – 35:00 · Les méthodes d''évaluation d''impact

L''évaluation d''impact cherche à mesurer l''effet causal d''une politique, et non une simple corrélation, ce qui est une distinction essentielle que le jury attend de vous dès les premières secondes de votre réponse. La différence de différences compare l''évolution d''un groupe traité à celle d''un groupe témoin comparable, avant et après une politique. Sa condition de validité centrale est l''hypothèse de tendances parallèles : en l''absence de la politique, les deux groupes auraient dû évoluer de façon similaire ; si cette hypothèse est raisonnable, la différence entre les deux évolutions observées peut être attribuée à la politique elle-même, et non à des facteurs qui auraient affecté les deux groupes différemment de toute façon.

Les expériences naturelles exploitent un événement extérieur, par exemple une réforme administrative ou une frontière historique, qui a réparti de façon quasi aléatoire des unités entre traitement et non-traitement, sans intervention du chercheur, ce qui approche les conditions d''une expérience contrôlée et renforce la crédibilité de l''estimation causale obtenue. Les expériences contrôlées randomisées, lorsqu''elles sont possibles sur le plan éthique et logistique, attribuent elles-mêmes le traitement de façon aléatoire entre les unités étudiées, garantissant en principe la comparabilité initiale des groupes traité et témoin, ce qui en fait, sur le papier, la méthode la plus robuste, bien qu''elle ne soit pas toujours réalisable pour des raisons de coût, de délai ou d''éthique.

## 35:00 – 45:00 · Pause active et quiz interactif

Quiz. Un : qu''isole un modèle à effets fixes dans une donnée de panel ? Réponse : la variation qui n''est due ni aux différences permanentes entre unités ni aux chocs communs à une période. Deux : quelle hypothèse est essentielle à la validité d''une différence de différences ? Réponse : l''hypothèse de tendances parallèles. Trois : qu''exploite une expérience naturelle ? Réponse : un événement extérieur qui répartit de façon quasi aléatoire les unités entre traitement et non-traitement. Vérifiez vos réponses avant de poursuivre.

## 45:00 – 60:00 · L''analyse institutionnelle qualitative

À côté de ces méthodes quantitatives, l''analyse institutionnelle qualitative reste indispensable pour comprendre les mécanismes par lesquels une politique produit ses effets, et pour expliquer pourquoi des réformes similaires produisent des résultats différents selon les contextes. Elle s''appuie sur des études de cas approfondies, des entretiens avec les acteurs concernés (administrateurs, entrepreneurs, bénéficiaires), l''analyse de documents institutionnels et de discours politiques, et une attention particulière à la trajectoire historique propre à chaque contexte, ce que l''on appelle la dépendance de sentier. Cette approche ne cherche pas à établir une relation causale moyenne généralisable, mais à restituer la logique interne d''un cas particulier, ce qui en fait un complément précieux des méthodes quantitatives plutôt qu''un substitut.

Un exemple vous aidera à fixer cette idée : si une évaluation quantitative montre qu''un programme de transferts monétaires a amélioré le revenu moyen des ménages traités dans deux régions différentes, mais avec une ampleur très différente d''une région à l''autre, l''analyse qualitative permettra d''aller chercher, par des entretiens et des études de cas, les raisons concrètes de cet écart : qualité de l''administration locale chargée de verser les transferts, structure du marché local, confiance des ménages dans le dispositif, ou encore normes sociales qui orientent différemment l''usage de l''argent reçu selon les contextes.

## 60:00 – 75:00 · Construire un protocole de recherche appliqué

Reprenons ensemble, pas à pas, l''exemple de protocole fictif de la leçon texte. Question : un programme fictif de transferts monétaires conditionnels améliore-t-il le revenu mensuel moyen des ménages ruraux ? Méthode : différence de différences entre villages fictifs traités et témoins. Données fictives : revenu des ménages traités, 45 000 francs CFA avant, 58 000 après, soit plus 13 000. Revenu des témoins, 44 000 avant, 50 000 après, soit plus 6 000. Estimateur de différence de différences : 13 000 moins 6 000, soit 7 000 francs CFA par mois attribuables au programme. Notez bien la nécessité de compléter ce protocole par des entretiens qualitatifs, pour vérifier la plausibilité de l''hypothèse de tendances parallèles et comprendre les mécanismes concrets par lesquels le transfert modifie les comportements des ménages.

## 75:00 – 85:00 · Synthèse méthodologique

Retenez la règle d''or : le choix de la méthode découle de la question de recherche, pas l''inverse. Si vous cherchez à mesurer un effet moyen précis et généralisable, privilégiez l''économétrie de panel ou l''évaluation d''impact. Si vous cherchez à comprendre un mécanisme précis ou une variation entre contextes institutionnels, privilégiez l''analyse qualitative, éventuellement combinée à une méthode quantitative dans une approche mixte, qui est de plus en plus valorisée dans les jurys doctoraux contemporains, car elle répond à la fois à la question de l''ampleur d''un effet et à la question des mécanismes qui l''expliquent.

Un dernier point de vigilance méthodologique, souvent demandé à l''oral : n''oubliez jamais de signaler les limites de la méthode que vous proposez. Pour une différence de différences, signalez le risque que l''hypothèse de tendances parallèles soit violée. Pour une expérience naturelle, signalez le risque que la répartition entre groupes ne soit en réalité pas tout à fait indépendante des caractéristiques économiques observées. Pour une analyse qualitative, signalez le risque de généraliser abusivement des résultats obtenus sur un nombre limité de cas étudiés. Un jury valorise toujours un candidat conscient des limites de sa propre méthode plus qu''un candidat qui la présente comme infaillible.

## 85:00 – 90:00 · Évaluation finale

Cinq questions. Un, quel est l''avantage principal d''une donnée de panel sur une coupe transversale ? Réponse : elle permet de neutraliser les caractéristiques non observables stables de chaque unité. Deux, quelle hypothèse garantit la validité d''une différence de différences ? Réponse : l''hypothèse de tendances parallèles. Trois, que faut-il vérifier avant d''utiliser une expérience naturelle ? Réponse : que la répartition entre traitement et non-traitement soit bien quasi aléatoire et indépendante des caractéristiques économiques des unités. Quatre, pourquoi combiner méthode quantitative et analyse qualitative ? Réponse : pour mesurer un effet moyen et comprendre les mécanismes qui l''expliquent. Cinq, dans l''exemple de transferts monétaires, quel est l''effet attribuable estimé ? Réponse : environ 7 000 francs CFA par mois. Rendez-vous à la prochaine vidéo pour l''épreuve type d''examen, où nous reprendrons ensemble la question de l''ajustement structurel en mobilisant les courants théoriques et les méthodes vues dans ces trois dernières séances.', 'video', 90, false, 80
from public.courses c where c.slug = 'doc-eco'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : économétrie de panel, évaluation d''impact et analyse institutionnelle');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : s''entraîner à l''épreuve type de synthèse théorique et méthodologique', '## Fiche du cours vidéo

Durée : 1 heure 30. Objectifs : savoir construire, en temps limité, une réponse structurée à une question de synthèse mobilisant plusieurs courants théoriques et une méthode de recherche, sur le modèle d''une question d''examen de qualification. Matériel : chronomètre, feuille de brouillon. Prérequis : les trois vidéos précédentes vues et les fiches de synthèse correspondantes préparées.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et consigne de l''exercice

Dans cette séance, nous allons traiter ensemble une question de synthèse représentative de l''examen de qualification, en respectant les conditions réelles de l''épreuve : temps limité, réponse structurée, mobilisation explicite des courants et des méthodes vus précédemment. Voici la question, à titre d''exemple pédagogique et non de sujet officiel : « Les politiques d''ajustement structurel mises en œuvre en Afrique de l''Ouest à partir des années 1980 doivent-elles être lues comme un échec du point de vue du développement, ou comme une étape nécessaire de rééquilibrage macroéconomique ? »

## 05:00 – 15:00 · Décomposer la question avant de répondre

Avant de répondre, prenez toujours le temps de décomposer la question. Celle-ci comporte trois exigences : un positionnement théorique (mobiliser le courant néoclassique et les approches institutionnalistes et structuralistes), un jugement nuancé (éviter la réponse binaire), et une exigence méthodologique (proposer une façon d''éclairer empiriquement le débat). Notez ces trois exigences sur votre brouillon avant de commencer à répondre : c''est ce qui vous évitera d''oublier un pan entier de la réponse sous la pression de l''oral.

## 15:00 – 30:00 · Construire l''introduction et la première partie

L''introduction doit rappeler le contexte en une ou deux phrases : des déséquilibres macroéconomiques persistants ont conduit, à partir de la fin des années 1970, à des programmes de stabilisation et d''ajustement structurel, prolongés par la dévaluation du franc CFA en 1994 dans la zone UEMOA. Une bonne introduction annonce aussi explicitement le plan que vous allez suivre, en trois temps : la lecture néoclassique, la critique structuraliste et institutionnaliste, puis une proposition méthodologique permettant d''éclairer empiriquement le débat. Annoncer son plan à voix haute, dès le début de la réponse, rassure le jury sur la structure que vous allez tenir, et vous aide vous-même à ne pas vous égarer sous la pression du temps.

Pour la première partie, développez la lecture néoclassique avec précision, en trois arguments enchaînés. Premièrement, les déséquilibres macroéconomiques non corrigés (déficits publics et extérieurs persistants, surévaluation du taux de change) produisent, à terme, des crises encore plus coûteuses, par l''inflation, le défaut de paiement ou la fuite des capitaux. Deuxièmement, la discipline budgétaire, la libéralisation des prix et des marchés, et une plus grande ouverture commerciale sont présentées comme des conditions nécessaires pour restaurer la compétitivité et attirer l''investissement productif. Troisièmement, les difficultés sociales observées pendant la période d''ajustement sont analysées, dans cette lecture, comme un coût de transition regrettable mais nécessaire, et non comme la preuve d''un échec de la stratégie elle-même. Prenez le temps, à l''oral, de donner ces trois arguments de façon enchaînée plutôt que de les énumérer de façon désordonnée, car la clarté de l''enchaînement logique compte autant que le contenu lui-même.

## 30:00 – 45:00 · Construire la deuxième partie

La deuxième partie développe la critique structuraliste et institutionnaliste, en trois points précis que vous devez pouvoir énoncer sans hésiter, dans l''ordre, et avec un connecteur logique clair entre chacun : d''abord, le coût social élevé supporté dans un contexte où les filets de protection sociale étaient peu développés, ce qui pose une question d''équité dans la répartition des efforts d''ajustement entre catégories sociales ; ensuite, le risque de désindustrialisation précoce lié à une ouverture commerciale rapide, qui aurait exposé des industries manufacturières naissantes à une concurrence internationale à laquelle elles n''étaient pas préparées, limitant ainsi les possibilités de diversification productive que les structuralistes jugent indispensables ; enfin, l''insuffisante prise en compte, dans des réformes conçues de façon relativement standardisée, des différences institutionnelles entre pays, ce qui aurait produit des résultats très inégaux selon la qualité de l''administration et de la régulation locale.

N''oubliez jamais de mentionner, en contrepoint, la réponse des défenseurs de ces politiques, car un jury exigeant attend cette nuance : l''absence de réforme aurait probablement conduit à des crises macroéconomiques encore plus coûteuses, et certains pays ayant appliqué ces réformes de façon cohérente et dans un contexte institutionnel plus favorable ont connu, par la suite, des phases de croissance plus stables que celles qui les avaient précédées. Présenter ce contrepoint, même brièvement, montre au jury que vous n''êtes pas enfermé dans une seule grille de lecture.

## 45:00 – 55:00 · Pause active et quiz interactif

Quiz de mi-séance. Un : quelles sont les trois exigences cachées dans la question type ? Réponse : positionnement théorique, jugement nuancé, proposition méthodologique. Deux : citez les trois critiques structuralistes et institutionnalistes des programmes d''ajustement. Réponse : coût social élevé, risque de désindustrialisation précoce, insuffisante adaptation institutionnelle. Trois : que répondent les défenseurs de ces politiques à ces critiques ? Réponse : l''absence de réforme aurait coûté davantage, et certains pays ont connu par la suite une croissance plus stable.

## 55:00 – 70:00 · Construire la proposition méthodologique

La troisième partie propose une méthode pour éclairer empiriquement le débat plutôt que de le trancher par principe théorique, et c''est souvent la partie la plus valorisée par un jury exigeant, car elle montre votre capacité à transformer un débat théorique en protocole de recherche concret. Un premier volet quantitatif construit un panel macroéconomique de plusieurs pays ouest-africains sur une période englobant l''avant et l''après-ajustement, en exploitant les différences de calendrier ou d''intensité des réformes entre pays comme une forme d''expérience naturelle, et en comparant par une différence de différences l''évolution d''indicateurs comme la croissance, l''investissement ou l''emploi, entre pays ayant appliqué les réformes plus tôt ou plus intensément et pays les ayant appliquées plus tard ou plus modérément, sous réserve de vérifier la plausibilité de l''hypothèse de tendances parallèles avant la réforme.

Un second volet qualitatif, complémentaire et non secondaire, mène des études de cas institutionnelles dans quelques pays contrastés, afin de comprendre par quels mécanismes concrets (qualité de l''administration, stabilité politique, structure du secteur productif) des réformes proches ont produit des trajectoires différentes. Mentionnez explicitement au jury que ces deux volets ne sont pas redondants : le volet quantitatif mesure l''ampleur moyenne d''un effet entre pays comparables, le volet qualitatif explique pourquoi cet effet varie d''un pays à l''autre, ce qui est précisément ce que la question posée vous demande d''éclairer.

## 70:00 – 80:00 · Construire la conclusion et s''entraîner à l''oral

La conclusion évite de trancher de façon définitive : elle rappelle que la littérature empirique donne des résultats contrastés selon les pays et les indicateurs retenus, et souligne que l''apport scientifique consiste moins à juger ces politiques en bloc qu''à identifier les conditions institutionnelles et macroéconomiques qui rendent leurs effets plus ou moins favorables selon les contextes. Une bonne conclusion peut aussi, en une phrase, ouvrir sur votre propre projet de thèse, en indiquant en quoi ce débat éclaire la question que vous souhaitez traiter, ce qui est toujours apprécié par un jury qui cherche à vérifier votre capacité à relier la littérature générale à votre propre recherche.

Je vous invite maintenant à vous entraîner, chronomètre en main, à restituer oralement ce plan complet en cinq minutes, sans notes, comme devant un jury réel. Enregistrez-vous si possible, puis réécoutez votre réponse en notant trois points : avez-vous annoncé clairement votre plan au début, avez-vous enchaîné les arguments de façon logique plutôt que de les énumérer, et avez-vous conclu de façon nuancée plutôt que par une affirmation tranchée. Recommencez l''exercice autant de fois que nécessaire jusqu''à ce que ces trois points soient systématiquement respectés, car c''est exactement ce que le jury évaluera le jour de l''épreuve réelle.

## 80:00 – 90:00 · Synthèse et évaluation finale

Cinq questions pour vérifier votre acquisition de cette méthode de réponse. Un, quelles sont les trois parties d''un plan de réponse à une question de synthèse de ce type ? Réponse : lecture néoclassique, critique structuraliste et institutionnaliste, proposition méthodologique. Deux, pourquoi faut-il éviter une position tranchée dès l''introduction ? Réponse : cela donnerait l''impression de ne pas connaître la complexité réelle du débat. Trois, quelle méthode quantitative est proposée pour ce sujet ? Réponse : un panel macroéconomique entre pays avec une différence de différences exploitant les différences de calendrier des réformes. Quatre, pourquoi compléter cette méthode par une analyse qualitative ? Réponse : pour comprendre les mécanismes institutionnels qui expliquent des trajectoires différentes entre pays. Cinq, que doit rappeler une bonne conclusion sur ce débat ? Réponse : que la littérature empirique reste contrastée selon les pays et les indicateurs retenus, et que l''enjeu scientifique est d''identifier les conditions de succès plutôt que de juger en bloc. La prochaine vidéo sera la simulation complète d''une soutenance de qualification doctorale, dans laquelle vous retrouverez l''ensemble de ces réflexes appliqués à un exercice encore plus proche des conditions réelles de l''épreuve.', 'video', 90, false, 90
from public.courses c where c.slug = 'doc-eco'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : s''entraîner à l''épreuve type de synthèse théorique et méthodologique');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : simulation complète d''une soutenance de qualification doctorale', '## Fiche du cours vidéo

Durée : 1 heure 30. Objectifs : vivre une simulation complète d''une soutenance de qualification doctorale en économie du développement, de la présentation initiale aux questions de jury, afin d''intégrer les réflexes travaillés dans les quatre vidéos précédentes. Matériel : chronomètre. Prérequis : avoir vu les quatre vidéos précédentes de ce cours.

## Déroulé minuté

## 00:00 – 05:00 · Mise en situation

Bienvenue dans cette cinquième et dernière vidéo, la plus importante pour votre préparation : une simulation complète de soutenance de qualification doctorale. Je vais jouer, tour à tour, le rôle du candidat qui présente son champ et son projet de thèse fictif, puis celui du jury qui pose des questions. Suivez cette simulation comme si vous étiez vous-même le candidat, en notant mentalement comment vous répondriez à chaque question avant d''entendre la réponse proposée. Cette séance reprend et met en pratique l''ensemble des connaissances théoriques et méthodologiques travaillées dans les quatre vidéos précédentes de ce cours.

## 05:00 – 20:00 · Présentation du champ (15 minutes, partie 1 sur 2)

Voici le début de la présentation type de 15 minutes. « Mesdames et Messieurs les membres du jury, mon travail doctoral se situe dans le champ de l''économie du développement, et plus précisément dans l''étude des politiques publiques destinées à soutenir le revenu des ménages ruraux en Afrique de l''Ouest. Ce champ est traversé par un débat théorique central, que je vais rapidement situer. D''un côté, le courant néoclassique analyse ces politiques à travers le prisme des incitations individuelles et de l''allocation efficace des ressources : une politique de transfert monétaire, dans cette lecture, doit être évaluée à l''aune de ses effets sur les comportements d''offre de travail et d''investissement des ménages bénéficiaires. De l''autre côté, les approches institutionnalistes et structuralistes insistent sur le fait que l''effet d''une même politique dépend fortement du contexte institutionnel dans lequel elle est mise en œuvre, et sur l''héritage structurel des économies ouest-africaines, marquées par une insertion internationale largement orientée vers l''exportation de matières premières peu transformées. »

## 20:00 – 35:00 · Présentation du champ et du projet de thèse (partie 2 sur 2)

« Mon projet de thèse se situe précisément à l''articulation de ces deux lectures. Je propose d''étudier l''effet d''un programme fictif de transferts monétaires conditionnels sur le revenu et les investissements productifs des ménages ruraux dans une région sénégalaise fictive, en combinant deux méthodes. La première est une différence de différences, comparant des villages bénéficiaires à des villages témoins comparables, avant et après le programme, pour mesurer un effet moyen. La seconde est une analyse institutionnelle qualitative, fondée sur des entretiens avec les ménages et les administrateurs locaux du programme, pour comprendre pourquoi cet effet pourrait varier d''un village à l''autre selon la qualité de la mise en œuvre administrative. Ma question de recherche est la suivante : dans quelle mesure l''effet d''un programme de transfert monétaire sur l''investissement productif des ménages ruraux dépend-il de la qualité des institutions locales chargées de sa mise en œuvre ? »

## 35:00 – 40:00 · Pause active et quiz interactif

Avant de passer aux questions du jury, un quiz rapide sur la présentation que vous venez d''entendre. Un : quelle méthode quantitative le candidat fictif propose-t-il ? Réponse : une différence de différences entre villages traités et témoins. Deux : pourquoi complète-t-il cette méthode par une analyse qualitative ? Réponse : pour comprendre pourquoi l''effet pourrait varier selon la qualité des institutions locales. Trois : quels sont les deux courants théoriques que sa question de recherche articule ? Réponse : le courant néoclassique (incitations individuelles) et les approches institutionnalistes et structuralistes (contexte institutionnel et héritage structurel).

## 40:00 – 75:00 · Les questions du jury et la structure d''une bonne réponse

Question 1 du jury : « Pourquoi avoir choisi une différence de différences plutôt qu''une expérience contrôlée randomisée ? » Structure de bonne réponse : rappeler que l''expérience randomisée est l''étalon de référence mais n''est pas toujours réalisable pour des raisons logistiques ou éthiques dans le cas étudié, et que la différence de différences, sous l''hypothèse de tendances parallèles, offre une alternative crédible, à condition de vérifier cette hypothèse avant la réforme.

Question 2 : « Comment allez-vous vérifier que l''hypothèse de tendances parallèles est plausible dans votre cas ? » Réponse attendue : comparer l''évolution du revenu des deux groupes sur plusieurs périodes avant le programme, pour vérifier qu''elles suivaient des trajectoires similaires avant sa mise en œuvre.

Question 3 : « En quoi votre travail se distingue-t-il de la littérature existante sur les transferts monétaires ? » Réponse attendue : positionner précisément l''apport (par exemple l''accent mis sur l''hétérogénéité institutionnelle locale de l''effet, plutôt que sur son seul effet moyen).

Question 4 : « Le cadre néoclassique seul ne suffirait-il pas à étudier cette question ? » Réponse attendue : reconnaître l''utilité du cadre néoclassique pour analyser les incitations individuelles, tout en expliquant pourquoi il ne permet pas, seul, de rendre compte des différences d''effet entre contextes institutionnels, ce qui justifie le recours complémentaire à une analyse institutionnelle.

Question 5 : « Quelles sont les limites de votre protocole de recherche ? » Réponse attendue : signaler honnêtement les limites, par exemple la difficulté à généraliser des résultats obtenus sur un nombre limité de villages, ou le risque que des facteurs non observés affectent différemment les groupes traité et témoin.

Question 6 : « Comment Samir Amin ou les théories de la dépendance éclaireraient-ils votre sujet ? » Réponse attendue : expliquer que ces approches inviteraient à replacer le programme étudié dans la trajectoire structurelle plus large de l''économie régionale, en questionnant si un transfert ponctuel peut suffire à modifier une insertion économique structurellement défavorable, sans prétendre trancher ce débat de façon définitive.

Question 7 : « Que répondez-vous à un collègue qui pense que votre sujet est trop appliqué pour une thèse d''économie théorique ? » Réponse attendue : rappeler que la thèse articule explicitement un cadre théorique (le débat néoclassique/institutionnaliste) avec une méthode rigoureuse, ce qui constitue une contribution académique à part entière, et non un simple exercice appliqué.

Question 8 : « Quel calendrier envisagez-vous pour votre thèse ? » Réponse attendue : présenter brièvement les grandes étapes (revue de littérature approfondie, collecte des données de terrain, analyse, rédaction), sans entrer dans un détail excessif à l''oral.

## 75:00 – 85:00 · Synthèse de la simulation

Ce que cette simulation doit vous apprendre : une bonne soutenance de qualification repose sur une présentation qui articule clairement un champ théorique, une question de recherche précise et une méthode cohérente, puis sur des réponses qui ne cherchent jamais à éviter une question difficile, mais qui reconnaissent honnêtement les limites du travail proposé tout en défendant sa pertinence et son originalité. Observez que, dans chacune des huit réponses que nous venons de parcourir, la structure est toujours la même : reconnaître la force de l''objection posée par le jury, puis expliquer en quoi le choix fait par le candidat reste néanmoins justifié, sans jamais prétendre que ce choix est au-dessus de toute critique.

Cette structure en deux temps (reconnaître puis justifier) est la plus efficace devant un jury doctoral, car elle évite les deux écueils les plus fréquents chez les candidats mal préparés : soit une défense rigide qui refuse toute objection, ce qui donne l''impression d''un manque d''esprit critique, soit un recul excessif qui abandonne la position dès la première question, ce qui donne l''impression d''un manque de maîtrise du sujet. Entraînez-vous à appliquer cette structure sur vos propres fiches de synthèse, en imaginant systématiquement l''objection la plus probable à chacun de vos arguments avant même que le jury ne la pose.

## 85:00 – 90:00 · Grille d''auto-évaluation de la soutenance simulée

Plutôt qu''une évaluation à cinq questions, évaluez-vous vous-même sur la grille suivante, en vous attribuant une note de 1 à 4 pour chaque critère (1 : insuffisant, 2 : à améliorer, 3 : satisfaisant, 4 : excellent). Premier critère : clarté de l''articulation entre le champ théorique et la question de recherche. Deuxième critère : précision de la méthode proposée et de ses conditions de validité. Troisième critère : capacité à reconnaître sans détour les limites de son propre travail. Quatrième critère : nuance dans la mobilisation des courants théoriques, sans caricature d''aucun d''entre eux. Cinquième critère : clarté et fluidité de l''expression orale, sans recours excessif à des notes écrites. Un score global inférieur à 14 sur 20 indique qu''il faut reprendre les vidéos précédentes de ce cours avant l''épreuve réelle, en particulier les sections consacrées aux critères sur lesquels votre score personnel est le plus faible ; un score supérieur ou égal à 16 sur 20 indique une préparation solide, qu''il convient néanmoins de consolider par plusieurs simulations supplémentaires devant un collègue ou un directeur de thèse avant le jour de l''épreuve réelle. Bon courage pour votre examen de qualification doctorale.', 'video', 90, false, 100
from public.courses c where c.slug = 'doc-eco'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : simulation complète d''une soutenance de qualification doctorale');

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
