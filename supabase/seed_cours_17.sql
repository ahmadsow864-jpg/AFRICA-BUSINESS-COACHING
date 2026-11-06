-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Cours (partie 17/17). À exécuter après seed.sql.

-- Cours : Droit des affaires Master 2 : réussir ses examens et sa soutenance
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'mas-droit-m2', (select id from public.levels where name = 'Master 2'), null, 'Droit des affaires', 'Droit des affaires Master 2 : réussir ses examens et sa soutenance', 'Préparation aux examens de Master 2 en droit des affaires : investissements et contrats internationaux, fiscalité approfondie des groupes (prix de transfert, conventions fiscales), méthodologie du mémoire de recherche ou professionnel et de la soutenance. Public : étudiants de Master 2 ayant validé le Master 1 en droit des affaires.', true, 772
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Master 2 en droit des affaires', '## Objectifs de la leçon

Le Master 2 est la dernière année avant l''entrée dans la vie professionnelle ou la recherche. Au-delà des matières avancées, cette année est marquée par la préparation d''un mémoire (de recherche ou professionnel, selon la filière) et par sa soutenance orale. Cette leçon présente les spécificités du Master 2, les matières de l''année, la méthode de travail attendue, et un plan de révision sur six semaines qui intègre la préparation du mémoire en parallèle des révisions de matières.

## Ce qui change par rapport au Master 1

En Master 1, vous avez travaillé la gouvernance des groupes, les contrats d''affaires et la concurrence, et l''arbitrage. En Master 2, l''horizon s''élargit à l''international : les investissements étrangers, les contrats internationaux, et la fiscalité des groupes qui opèrent dans plusieurs pays. Vous devez aussi, pour la première fois, produire un travail de recherche personnel et long (le mémoire), puis le défendre oralement devant un jury (la soutenance). C''est une compétence différente de la dissertation ou du cas pratique : il s''agit de choisir un sujet, de construire une problématique, de mener une recherche documentée, et de savoir répondre à des questions improvisées sur votre propre travail.

## Les matières de l''année

- Droit des investissements et contrats internationaux : protection des investissements étrangers, grandes clauses des contrats internationaux d''affaires, articulation avec le droit interne.
- Droit fiscal approfondi des groupes : prix de transfert entre sociétés liées, logique générale des conventions fiscales internationales, risques de double imposition.
- Méthodologie du mémoire de recherche ou professionnel et soutenance : choix du sujet, construction de la problématique, plan, soutenance orale.

## Méthode de travail avancée

- L''étude de cas complexe internationale : un scénario mêlant une entreprise sénégalaise ou ouest-africaine et un partenaire étranger, avec des enjeux d''investissement, de fiscalité et de résolution des litiges.
- Le business case : évaluer une décision d''implantation internationale ou de restructuration fiscale en croisant l''angle juridique et l''angle économique, sans jamais utiliser de taux officiels non vérifiés.
- La revue de littérature : situer votre mémoire dans les débats existants, sans inventer de référence précise, et construire une problématique originale plutôt que descriptive.

## Plan de révision sur six semaines

- Semaines 1 et 2 : droit des investissements et contrats internationaux.
- Semaines 3 et 4 : droit fiscal approfondi des groupes, avec vérification systématique de tous les calculs.
- Semaine 5 : méthodologie du mémoire et simulation de soutenance.
- Semaine 6 : entraînement sur sujets types et finalisation du mémoire, avec au moins une simulation complète de soutenance devant un public (camarades, famille).

Contrairement au Master 1, le Master 2 demande de mener deux travaux en parallèle : les révisions de matières pour les examens écrits, et l''avancement du mémoire. Un planning réaliste doit réserver des plages dédiées à chacun, sans sacrifier l''un pour l''autre dans les dernières semaines. Beaucoup d''étudiants commettent l''erreur de repousser le mémoire après les examens, pensant gagner du temps ; en pratique, un mémoire commencé tardivement laisse trop peu de temps pour la relecture, la correction des défauts méthodologiques, et la préparation sérieuse de la soutenance, qui est elle-même une épreuve distincte des examens écrits et requiert un entraînement spécifique à l''oral.

## Le lien entre mémoire et matières de l''année

Il est vivement conseillé, lorsque cela est possible, de choisir un sujet de mémoire en lien avec l''une des trois matières avancées de l''année : cela permet de mutualiser les révisions et la recherche, et de présenter à l''oral un travail qui démontre une maîtrise approfondie d''une matière du programme. Un mémoire sur les prix de transfert, par exemple, consolide à la fois votre préparation à l''examen de droit fiscal approfondi des groupes et votre travail de recherche personnel, à condition de bien distinguer l''exercice de restitution attendu à l''examen (qui reste encadré par le temps limité et le barème) de l''exercice de recherche personnelle attendu dans le mémoire (qui suppose une problématique originale et une discussion argumentée, non une simple présentation descriptive du sujet).

## Points clés à retenir

- Le Master 2 ajoute une dimension internationale (investissements, contrats, fiscalité des groupes) aux matières déjà vues.
- La méthodologie du mémoire et la soutenance sont une compétence à part, à travailler dès le début de l''année, pas seulement avant la soutenance.
- Aucun taux fiscal ou seuil officiel ne doit être mémorisé comme certain sans vérification du texte en vigueur : ce cours illustre les mécanismes avec des valeurs fictives.

## Exercices pratiques

1. Citez les trois matières avancées du programme de Master 2 en droit des affaires.
2. En quoi la compétence évaluée lors de la soutenance d''un mémoire diffère-t-elle de celle évaluée lors d''un examen écrit classique ?
3. Pourquoi un planning de révision de Master 2 doit-il réserver des plages séparées pour les matières et pour le mémoire ?
4. Proposez deux sujets de mémoire possibles (titres uniquement) en lien avec les matières de l''année.
5. Expliquez pourquoi la dimension internationale est centrale en Master 2 alors qu''elle était peu présente en Master 1.

## Corrigé

1. Droit des investissements et contrats internationaux ; droit fiscal approfondi des groupes ; méthodologie du mémoire et soutenance.
2. L''examen écrit évalue la restitution et l''application de connaissances à un cas donné en temps limité ; la soutenance évalue la capacité à défendre oralement un travail de recherche personnel, à répondre à des questions improvisées, et à démontrer une maîtrise critique de son propre sujet.
3. Parce que les deux travaux (révisions et mémoire) sont cumulatifs et non substituables : négliger l''un pour l''autre dans les dernières semaines expose à un échec soit aux examens, soit à la soutenance, les deux étant généralement nécessaires à la validation de l''année.
4. Exemples possibles : « Les garanties contractuelles dans les contrats internationaux d''approvisionnement agricole en Afrique de l''Ouest » ou « Les prix de transfert dans les groupes agro-industriels ouest-africains : enjeux et limites du contrôle fiscal ».
5. Parce que le Master 2 prépare à une pratique professionnelle qui, dans le droit des affaires, implique de plus en plus des relations transfrontalières : investisseurs étrangers, groupes multinationaux, contrats avec des partenaires situés dans d''autres pays, ce qui nécessite des compétences spécifiques que le Master 1 n''abordait pas encore.', 'texte', 40, true, 10
from public.courses c where c.slug = 'mas-droit-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Master 2 en droit des affaires');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Droit des investissements et contrats internationaux', '## Objectifs de la leçon

Cette leçon présente le droit des investissements et les grandes clauses des contrats internationaux d''affaires, sans entrer dans le détail d''un traité ou d''une convention précise, qu''il faut toujours vérifier dans son texte en vigueur.

## La protection des investissements étrangers

Un investisseur étranger qui implante une activité dans un pays différent du sien s''expose à des risques spécifiques : changement de réglementation, expropriation, restrictions de change, instabilité politique. Les mécanismes généraux de protection, que l''on retrouve dans de nombreux cadres juridiques (droit interne, traités bilatéraux, conventions régionales), reposent sur quelques principes communs :

- Le traitement juste et équitable : l''État d''accueil s''engage à ne pas traiter l''investisseur de façon arbitraire ou discriminatoire.
- La protection contre l''expropriation sans indemnisation : une expropriation peut être licite dans l''intérêt public, mais doit généralement donner lieu à une indemnisation juste.
- La liberté de transfert des capitaux et des revenus : possibilité de rapatrier les bénéfices, sous réserve des règles de change applicables.
- Le règlement des différends : de nombreux cadres prévoient un recours à l''arbitrage international pour les litiges entre un investisseur et l''État d''accueil, distinct de l''arbitrage commercial entre entreprises privées étudié en Master 1.

Illustration (cas fictif pour l''exemple) : une entreprise sénégalaise, Teranga Agro-Export SA, investit dans une unité de transformation dans un pays voisin. Si ce pays modifie brutalement sa réglementation douanière de façon à rendre l''activité non viable, sans justification d''intérêt général proportionnée, l''investisseur pourrait invoquer une atteinte au traitement juste et équitable, selon les mécanismes de protection applicables entre les deux pays, qu''il convient de vérifier au cas par cas.

## Les grandes clauses des contrats internationaux d''affaires

Au-delà des clauses complexes déjà étudiées (exclusivité, hardship, limitation de responsabilité), les contrats internationaux comportent des clauses spécifiques à leur dimension transfrontalière :

- La clause de choix de loi : les parties désignent le droit national applicable au contrat, qui peut être différent de la loi de chacune des parties. Ce choix est généralement respecté entre professionnels, sauf règles impératives contraires.
- La clause attributive de juridiction ou la clause compromissoire internationale : les parties désignent la juridiction ou le tribunal arbitral compétent en cas de litige, selon la même logique que celle étudiée en Master 1 pour l''arbitrage interne, mais avec une attention accrue à l''exécution transfrontalière de la décision.
- La clause de monnaie de paiement et de risque de change : essentielle lorsque les parties opèrent dans des zones monétaires différentes, pour répartir le risque lié aux fluctuations de change.
- La clause de force majeure adaptée au contexte international : elle doit anticiper des événements spécifiques (instabilité politique, fermeture de frontières, sanctions internationales) au-delà des cas classiques.
- La clause de conformité réglementaire (compliance) : engagement des parties à respecter les réglementations applicables dans chaque pays concerné, notamment en matière de lutte contre la corruption.

## Cas d''entreprise : contrat d''approvisionnement Teranga Agro-Export

Teranga Agro-Export SA conclut avec un acheteur européen un contrat de fourniture d''arachides transformées sur cinq ans, pour un montant annuel de base de 300 000 000 FCFA, payable en euros au cours du jour de facturation. Le contrat désigne le droit sénégalais comme loi applicable, et un arbitrage international (siège à Paris, règlement d''une institution d''arbitrage international) en cas de litige. Une clause de risque de change limite la variation prise en charge par Teranga Agro-Export SA à 5 % par rapport au cours de référence fixé à la signature (1 euro = 655,957 FCFA, taux fixe réel rappelé ici), au-delà de quoi le prix est ajusté.

Analyse : la combinaison du choix de la loi sénégalaise au fond et d''un arbitrage international à Paris illustre une pratique fréquente dans les contrats internationaux, qui dissocie le droit applicable au fond (souvent lié au lieu d''exécution principal du contrat) et le siège de l''arbitrage (souvent choisi pour sa neutralité et sa tradition arbitrale). La clause de risque de change protège Teranga Agro-Export SA contre une dépréciation excessive, tout en acceptant une marge de fluctuation limitée à 5 %, ce qui répartit raisonnablement le risque entre les parties plutôt que de le faire peser entièrement sur l''une d''elles.

## Points clés à retenir

- La protection des investissements repose sur des principes communs (traitement juste et équitable, protection contre l''expropriation, liberté de transfert, règlement des différends), dont le contenu précis dépend toujours du cadre juridique applicable entre les pays concernés.
- Les contrats internationaux ajoutent aux clauses complexes classiques des clauses spécifiques à leur dimension transfrontalière : choix de loi, juridiction ou arbitrage international, risque de change, force majeure adaptée, conformité réglementaire.
- Le choix de la loi applicable au fond et le choix du siège de l''arbitrage sont deux décisions distinctes, qui peuvent être dissociées selon la stratégie des parties.
- 1 euro = 655,957 FCFA est un taux fixe réel (parité officielle), utilisable sans réserve ; tout autre taux ou seuil cité dans ce cours est fictif pour l''exemple.

## Exercices pratiques

1. Citez trois mécanismes généraux de protection des investissements étrangers.
2. Pourquoi une entreprise choisirait-elle de dissocier le droit applicable au fond et le siège de l''arbitrage dans un contrat international ?
3. Expliquez l''intérêt d''une clause de risque de change plafonné pour un exportateur qui facture en devise étrangère.
4. Cas pratique : un contrat international prévoit un prix de base de 500 000 000 FCFA payable en euros, avec une clause de risque de change limitant la variation prise en charge par le vendeur à 4 %. Si le cours varie de 6 % par rapport au cours de référence, quelle est la part de variation répercutée sur l''acheteur ?
5. Qu''est-ce qui distingue une clause de force majeure adaptée au contexte international d''une clause de force majeure classique ?
6. Dans le cas Teranga Agro-Export, pourquoi le choix du droit sénégalais au fond est-il cohérent avec l''activité de l''entreprise, malgré l''arbitrage international à Paris ?

## Corrigé

1. Le traitement juste et équitable, la protection contre l''expropriation sans indemnisation, et la liberté de transfert des capitaux et des revenus (on pouvait aussi citer le règlement des différends par arbitrage international).
2. Pour combiner la familiarité ou la pertinence du droit applicable au fond (souvent lié au lieu d''exécution) avec la neutralité et la tradition arbitrale d''un siège reconnu, sans que les deux choix soient nécessairement liés.
3. Elle protège l''exportateur contre une dépréciation excessive de la devise de facturation par rapport à sa propre monnaie, tout en acceptant une marge de fluctuation limitée, ce qui répartit le risque plutôt que de le faire peser entièrement sur une seule partie.
4. La variation prise en charge par le vendeur est plafonnée à 4 % ; la part excédentaire, soit 6 % − 4 % = 2 %, est répercutée sur l''acheteur selon le mécanisme contractuel prévu.
5. Elle doit anticiper des événements spécifiques au contexte international (instabilité politique, fermeture de frontières, sanctions internationales) qui ne figurent généralement pas dans une clause de force majeure classique limitée aux événements naturels ou techniques.
6. Parce que l''activité de production et de transformation de Teranga Agro-Export SA se déroule au Sénégal : le droit sénégalais est donc le droit le plus pertinent pour régir les obligations liées à l''exécution du contrat, alors que le siège de l''arbitrage à Paris est choisi pour sa neutralité procédurale, indépendamment du lieu d''exécution.', 'texte', 45, false, 20
from public.courses c where c.slug = 'mas-droit-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Droit des investissements et contrats internationaux');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Droit fiscal approfondi des groupes : prix de transfert et conventions fiscales internationales', '## Objectifs de la leçon

Cette leçon présente la fiscalité des groupes de sociétés dans sa dimension internationale, en particulier les prix de transfert, et la logique générale des conventions fiscales internationales, sans invoquer de taux ou de barème officiel précis, qu''il faut toujours vérifier dans le texte en vigueur.

## Les prix de transfert : logique générale

Lorsque des sociétés d''un même groupe, situées dans des pays différents, effectuent des transactions entre elles (vente de biens, prestations de services, prêts intra-groupe, redevances de licence), le prix de ces transactions s''appelle un prix de transfert. Ce prix a un impact direct sur la répartition du bénéfice imposable entre les pays concernés : un prix de transfert artificiellement bas pour une vente d''une filiale à sa société mère, par exemple, transfère du bénéfice vers le pays de la mère, au détriment du pays de la filiale.

Le principe de pleine concurrence (arm''s length principle), reconnu de façon générale dans la plupart des cadres fiscaux internationaux, exige que les prix pratiqués entre sociétés liées soient comparables à ceux qui auraient été pratiqués entre entreprises indépendantes dans des conditions comparables. C''est l''équivalent, en matière fiscale, de la comparaison au prix de marché déjà étudiée en Master 1 pour les conventions réglementées : la méthode est transversale, seul l''enjeu change (gouvernance d''un côté, répartition de l''assiette fiscale entre pays de l''autre).

Illustration chiffrée (fictive pour l''exemple) : une filiale sénégalaise de transformation vend sa production à sa société mère basée dans un autre pays, pour 20 000 000 FCFA, alors que le prix qu''une entreprise indépendante comparable facturerait pour une transaction similaire serait de 32 000 000 FCFA. L''écart de 12 000 000 FCFA constitue un indice fort de prix de transfert non conforme au principe de pleine concurrence, qui pourrait conduire l''administration fiscale sénégalaise à réintégrer ce montant dans le bénéfice imposable de la filiale, augmentant d''autant sa base taxable locale.

## Les méthodes générales de détermination des prix de transfert

Sans entrer dans le détail technique précis, qui relève d''un enseignement spécialisé de fiscalité internationale, il convient de connaître l''existence de plusieurs grandes familles de méthodes, dont le choix dépend de la nature de la transaction :

- Les méthodes fondées sur la comparaison directe des prix pratiqués pour des transactions comparables entre entreprises indépendantes.
- Les méthodes fondées sur les marges pratiquées (marge brute, marge nette) par des entreprises comparables exerçant une activité similaire.
- Les méthodes fondées sur le partage des bénéfices entre les entités liées, lorsque la transaction est trop spécifique pour trouver un comparable direct.

L''administration fiscale, dans la plupart des cadres nationaux, peut demander à l''entreprise de documenter sa politique de prix de transfert et de justifier que les prix pratiqués respectent le principe de pleine concurrence, la charge de la preuve pouvant, selon les textes, être partagée entre l''entreprise et l''administration.

## Les conventions fiscales internationales : logique générale

Lorsqu''une même opération économique pourrait être imposée dans deux pays différents (le pays de résidence de l''entreprise et le pays source du revenu), un risque de double imposition apparaît. Les conventions fiscales internationales, conclues entre deux États, visent précisément à éliminer ou atténuer ce risque, selon des mécanismes généraux à connaître sans détail d''une convention précise :

- La répartition du droit d''imposer certains revenus entre l''État de résidence et l''État source, selon la nature du revenu (bénéfices d''entreprise, dividendes, intérêts, redevances).
- Les mécanismes d''élimination de la double imposition, le plus souvent un crédit d''impôt accordé par l''État de résidence pour l''impôt déjà payé dans l''État source, ou une exonération dans l''un des deux États.
- Des clauses anti-abus, destinées à éviter qu''une entreprise n''utilise artificiellement une convention favorable sans lien économique réel avec le pays concerné (pratique parfois appelée « chalandage fiscal »).

## Cas d''entreprise : groupe Siné Industries

Siné Industries SA, basée à Dakar, détient une filiale de distribution dans un pays voisin. La filiale réalise un chiffre d''affaires de 150 000 000 FCFA en revendant des produits achetés à la société mère pour 130 000 000 FCFA, soit une marge brute de 20 000 000 FCFA (13,3 % du prix d''achat). Une étude de comparables indépendants dans le même secteur de distribution montre une marge brute habituelle de 25 % du prix d''achat pour des fonctions comparables.

Analyse : si la marge pratiquée par la filiale (13,3 %) est significativement inférieure à la marge de pleine concurrence observée chez des distributeurs indépendants comparables (25 %), cela peut indiquer que le prix d''achat facturé par la société mère est surévalué, transférant artificiellement du bénéfice vers la société mère au détriment de la filiale et du pays où elle est imposée. Une marge de pleine concurrence de 25 % appliquée au prix d''achat de 130 000 000 FCFA donnerait une marge attendue de 130 000 000 × 25 % = 32 500 000 FCFA, soit un écart de 32 500 000 − 20 000 000 = 12 500 000 FCFA par rapport à la marge effectivement réalisée, que l''administration fiscale du pays de la filiale pourrait chercher à réintégrer dans son bénéfice imposable.

## Points clés à retenir

- Le prix de transfert est le prix des transactions entre sociétés liées situées dans des pays différents ; il doit respecter le principe de pleine concurrence.
- La comparaison à des entreprises indépendantes comparables (prix ou marges) est l''outil méthodologique central, identique dans sa logique à la comparaison au prix de marché des conventions réglementées.
- Les conventions fiscales internationales répartissent le droit d''imposer entre États et organisent l''élimination de la double imposition, avec des clauses anti-abus contre le chalandage fiscal.
- Aucun taux d''imposition, aucun pourcentage de marge de référence, aucune règle précise de convention fiscale ne doit être mémorisé comme officiel sans vérification du texte applicable : les chiffres de ce cours sont fictifs pour l''exemple.

## Exercices pratiques

1. Définissez le principe de pleine concurrence et expliquez son lien méthodologique avec la notion de convention réglementée étudiée en Master 1.
2. Pourquoi un prix de transfert artificiellement bas pour une vente d''une filiale à sa mère réduit-il la base taxable locale de la filiale ?
3. Citez les trois grandes familles de méthodes générales de détermination des prix de transfert.
4. Qu''est-ce que le chalandage fiscal, et pourquoi les conventions fiscales prévoient-elles des clauses anti-abus contre cette pratique ?
5. Cas pratique chiffré : une filiale achète à sa société mère des matières premières pour 80 000 000 FCFA et les revend pour 92 000 000 FCFA, soit une marge brute de 15 % du prix d''achat. Des comparables indépendants montrent une marge habituelle de 22 %. Calculez la marge attendue selon le principe de pleine concurrence et l''écart par rapport à la marge effective.
6. En reprenant le cas Siné Industries, quelle serait la conséquence pratique si l''administration fiscale du pays de la filiale décidait de réintégrer l''écart identifié dans le bénéfice imposable de la filiale ?

## Corrigé

1. Le principe de pleine concurrence exige que les transactions entre sociétés liées soient conclues à des conditions comparables à celles pratiquées entre entreprises indépendantes. Il repose sur la même logique méthodologique que la convention réglementée : la comparaison au marché pour déterminer si un lien d''intérêt se traduit par un avantage anormal.
2. Parce qu''un prix de vente artificiellement bas réduit le chiffre d''affaires, et donc le bénéfice imposable, enregistré par la filiale dans son pays, ce bénéfice étant en réalité transféré vers la société mère qui achète à ce prix réduit.
3. Les méthodes fondées sur la comparaison directe des prix, les méthodes fondées sur les marges pratiquées, et les méthodes fondées sur le partage des bénéfices.
4. Le chalandage fiscal consiste à utiliser artificiellement une convention fiscale favorable sans lien économique réel avec le pays concerné, par exemple via une société-écran. Les clauses anti-abus visent à réserver le bénéfice de la convention aux opérations ayant une substance économique réelle.
5. La marge attendue selon le principe de pleine concurrence est de 80 000 000 × 22 % = 17 600 000 FCFA. La marge effective est de 92 000 000 − 80 000 000 = 12 000 000 FCFA, soit 15 % du prix d''achat. L''écart est de 17 600 000 − 12 000 000 = 5 600 000 FCFA.
6. L''administration fiscale pourrait réintégrer l''écart de 12 500 000 FCFA dans le bénéfice imposable de la filiale, augmentant d''autant l''impôt dû localement, sans préjudice d''un éventuel ajustement corrélatif dans le pays de la société mère pour éviter une double imposition économique du même montant, selon les mécanismes prévus par la convention fiscale applicable entre les deux pays.', 'texte', 45, false, 30
from public.courses c where c.slug = 'mas-droit-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Droit fiscal approfondi des groupes : prix de transfert et conventions fiscales internationales');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Méthodologie du mémoire de recherche ou professionnel et de la soutenance', '## Objectifs de la leçon

Cette leçon présente la méthodologie du mémoire de recherche ou professionnel et de sa soutenance orale, étape centrale et spécifique du Master 2. Elle couvre le choix du sujet, la construction de la problématique, le plan, la rédaction, et la préparation de la soutenance.

## Choisir son sujet de mémoire

Un bon sujet de mémoire en droit des affaires répond à trois critères cumulatifs : il doit être suffisamment précis pour être traité en profondeur dans le volume imposé (généralement entre 40 et 80 pages selon les établissements, à vérifier auprès de votre encadrant), suffisamment documenté pour permettre une recherche sérieuse (textes, doctrine, pratique professionnelle), et porteur d''un intérêt réel, qu''il soit théorique (une question juridique encore débattue) ou pratique (un problème rencontré par les entreprises).

Un sujet trop large (« le droit des sociétés en Afrique ») ne permet pas une analyse approfondie ; un sujet trop étroit ou purement descriptif (« présentation du contrat de vente ») ne permet pas de construire une véritable problématique. L''exercice de cadrage initial consiste à partir d''un thème large, puis à le restreindre progressivement jusqu''à une question précise à laquelle le mémoire va répondre.

## Construire la problématique

La problématique est la question centrale que le mémoire se propose de résoudre. Elle ne doit pas être une simple question fermée (« les prix de transfert sont-ils réglementés ? »), mais une question qui appelle une discussion, une mise en tension d''arguments, une prise de position argumentée. Exemple de cheminement : du thème large « les prix de transfert dans les groupes agro-industriels », on peut arriver à la problématique « dans quelle mesure le principe de pleine concurrence permet-il un contrôle effectif des prix de transfert dans les groupes agro-industriels ouest-africains, compte tenu des difficultés pratiques d''accès à des données de comparables fiables ? ». Cette formulation annonce une tension (le principe existe, mais son application pratique est limitée) que le mémoire va explorer et documenter.

## Construire le plan

Le plan d''un mémoire juridique en droit des affaires suit généralement une logique en deux parties, chacune subdivisée, qui organise la démonstration de façon progressive : une première partie qui pose le cadre et les règles applicables (ce qui existe, ce qui est prévu), une seconde partie qui analyse les difficultés, les limites ou les évolutions (ce qui pose problème, ce qui pourrait changer). Le plan n''est pas un sommaire de connaissances juxtaposées : chaque partie et chaque sous-partie doit apporter un élément de réponse à la problématique, dans un ordre qui construit progressivement l''argumentation jusqu''à la conclusion.

## La soutenance orale

La soutenance est un exercice oral devant un jury, généralement composé de votre encadrant et d''un ou plusieurs autres enseignants ou professionnels. Elle comprend typiquement une présentation orale de quelques minutes (souvent 10 à 15 minutes, à vérifier selon les modalités de votre établissement), suivie d''une série de questions du jury. Plusieurs principes généraux doivent guider votre préparation :

- La présentation orale ne doit pas être une lecture du mémoire, mais une synthèse qui met en valeur votre problématique, votre démarche, et vos conclusions principales, en donnant envie au jury d''approfondir certains points par ses questions.
- Les supports visuels (diaporama), lorsqu''ils sont autorisés, doivent être sobres et servir la présentation orale, pas la remplacer : peu de texte, des schémas clairs, pas de paragraphes entiers lus à l''écran.
- Les questions du jury portent souvent sur les limites de votre travail, les choix méthodologiques que vous avez faits, ou des approfondissements possibles : il faut savoir reconnaître honnêtement les limites de votre travail plutôt que de les nier, ce qui est généralement mieux perçu par un jury qu''une défense rigide.
- Un entraînement oral devant un public (camarades, famille), avec simulation de questions, est la meilleure préparation : la maîtrise orale d''un sujet que l''on connaît par écrit n''est pas automatique et doit être pratiquée.

## Cas d''entreprise : préparation d''une soutenance

Un étudiant a rédigé un mémoire sur la problématique suivante : « dans quelle mesure l''arbitrage CCJA constitue-t-il un mode de résolution des litiges adapté aux petites et moyennes entreprises ouest-africaines ? ». Lors de sa simulation de soutenance, un camarade lui pose la question suivante : « votre mémoire conclut que l''arbitrage CCJA est peu adapté aux PME en raison de son coût ; mais n''auriez-vous pas dû étudier plus précisément les montants de litiges concernés, pour étayer cette conclusion avec des exemples chiffrés ? ».

Analyse : cette question pointe une limite méthodologique réelle du mémoire (l''absence d''exemples chiffrés précis), que l''étudiant doit savoir reconnaître sans se déstabiliser. Une bonne réponse reconnaîtrait la limite identifiée, expliquerait pourquoi elle existe (difficulté d''accès à des données réelles et confidentielles sur les montants de litiges arbitraux), et proposerait une piste pour la dépasser dans une recherche future (par exemple des entretiens avec des praticiens pour obtenir des ordres de grandeur, même non officiels). Cette façon de répondre — reconnaître, expliquer, proposer une piste — est une méthode transférable à la plupart des questions de soutenance portant sur les limites d''un travail.

## Points clés à retenir

- Un bon sujet de mémoire est précis, documenté, et porteur d''un intérêt théorique ou pratique réel ; ni trop large, ni purement descriptif.
- La problématique est une question qui appelle une discussion argumentée, pas une question fermée.
- Le plan organise progressivement la démonstration vers la réponse à la problématique, il n''est pas un sommaire de connaissances juxtaposées.
- La soutenance évalue la capacité à synthétiser oralement son travail et à répondre aux questions du jury, notamment sur les limites de la recherche, qu''il vaut mieux reconnaître honnêtement que nier.

## Exercices pratiques

1. Transformez le thème large « le droit fiscal des groupes » en une problématique précise, en au moins deux étapes de restriction.
2. Pourquoi une problématique formulée comme une question fermée (oui/non) est-elle généralement insuffisante pour un mémoire ?
3. Expliquez la logique générale du plan en deux parties d''un mémoire juridique (cadre, puis difficultés ou évolutions).
4. Citez trois principes à respecter pour une présentation orale efficace lors d''une soutenance.
5. Un membre du jury vous signale une limite méthodologique de votre mémoire que vous n''aviez pas anticipée. Décrivez, en trois étapes, une méthode de réponse appropriée.
6. Pourquoi un entraînement oral devant un public est-il recommandé, alors que vous maîtrisez déjà le contenu écrit de votre mémoire ?

## Corrigé

1. Exemple de cheminement : thème large « le droit fiscal des groupes » ; restriction 1, « les prix de transfert dans les groupes agro-industriels » ; restriction 2 (problématique), « dans quelle mesure le principe de pleine concurrence permet-il un contrôle effectif des prix de transfert dans les groupes agro-industriels ouest-africains ? ».
2. Parce qu''elle n''appelle qu''une réponse binaire et ne permet pas de construire une démonstration progressive ni une discussion argumentée, qui sont les deux éléments attendus d''un mémoire de Master.
3. La première partie pose le cadre et les règles applicables (ce qui existe juridiquement) ; la seconde partie analyse les difficultés pratiques, les limites du cadre existant, ou les évolutions possibles, chaque partie apportant un élément de réponse à la problématique.
4. Par exemple : ne pas lire le mémoire mot pour mot, utiliser des supports visuels sobres qui servent la présentation sans la remplacer, et anticiper les questions probables du jury (on pouvait aussi citer l''entraînement devant un public).
5. Reconnaître honnêtement la limite identifiée sans se déstabiliser, expliquer pourquoi elle existe (contrainte méthodologique, accès aux données, délai), puis proposer une piste pour la dépasser dans une recherche future.
6. Parce que la maîtrise orale d''un sujet, en particulier sous la pression d''un jury et de questions improvisées, est une compétence distincte de la maîtrise écrite, qui ne s''acquiert que par la pratique répétée de l''exercice oral.', 'texte', 45, false, 40
from public.courses c where c.slug = 'mas-droit-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Méthodologie du mémoire de recherche ou professionnel et de la soutenance');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Master 2 en droit des affaires (entraînement, corrigé détaillé)', '## Sujet type d''examen de Master 2 en droit des affaires (entraînement non officiel, barème indicatif)

Durée indicative : 3 heures. Ce sujet est un entraînement pédagogique, non un sujet officiel ; le barème proposé est indicatif et peut être adapté par votre enseignant.

### Énoncé

Le groupe Kayor International, dont la société mère Kayor International SA est basée à Dakar, détient une filiale de production, Kayor Process SARL, et investit dans un pays voisin via une filiale de distribution, Kayor Distrib Co.

Premier fait : Kayor Process SARL vend sa production transformée à Kayor Distrib Co pour 40 000 000 FCFA par trimestre, alors qu''une étude de comparables indépendants dans le même secteur montre que des entreprises comparables pratiqueraient un prix de 55 000 000 FCFA pour une transaction similaire.

Deuxième fait : le contrat entre Kayor International SA et un partenaire financier international prévoit un prêt de 400 000 000 FCFA, remboursable en euros sur cinq ans, avec une clause de risque de change plafonnant à 6 % la variation prise en charge par Kayor International SA par rapport au cours de référence (1 euro = 655,957 FCFA). Le contrat désigne le droit sénégalais comme loi applicable et un arbitrage international (siège à Paris) en cas de litige.

Troisième fait : dans le pays où Kayor Distrib Co est implantée, une nouvelle réglementation locale impose, sans justification d''intérêt général apparente et de façon rétroactive, une taxe exceptionnelle sur les flux de capitaux entrants, réduisant de façon significative la rentabilité de l''investissement de Kayor International SA dans ce pays.

### Questions

1. (8 points) Analysez le premier fait sous l''angle du principe de pleine concurrence : chiffrez l''écart et expliquez la conséquence fiscale possible.
2. (8 points) Analysez le deuxième fait : expliquez l''intérêt de la clause de risque de change et calculez la part de variation répercutée sur le partenaire financier si le cours varie de 9 % par rapport au cours de référence.
3. (10 points) Analysez le troisième fait au regard des mécanismes généraux de protection des investissements étrangers : quels principes Kayor International SA pourrait-elle invoquer, et pourquoi ?
4. (4 points) Rédigez en cinq lignes une problématique de mémoire qui pourrait être construite à partir de l''un des trois faits de ce sujet.

### Corrigé détaillé

1. Le prix pratiqué (40 000 000 FCFA) est inférieur au prix de pleine concurrence observé chez des comparables indépendants (55 000 000 FCFA), soit un écart de 15 000 000 FCFA par trimestre. Ce prix artificiellement bas transfère du bénéfice de Kayor Process SARL (la filiale productrice, basée au Sénégal) vers Kayor Distrib Co (la filiale distributrice, basée dans le pays voisin), ce qui réduit la base taxable sénégalaise de Kayor Process SARL. L''administration fiscale sénégalaise pourrait, selon les mécanismes applicables, réintégrer cet écart dans le bénéfice imposable de Kayor Process SARL, pour un montant annuel de 15 000 000 × 4 = 60 000 000 FCFA si l''écart se répète chaque trimestre.

2. La clause de risque de change protège Kayor International SA contre une dépréciation excessive du FCFA par rapport à l''euro (devise de remboursement du prêt), en plafonnant à 6 % la part du risque qu''elle supporte ; au-delà, le risque est reporté sur le partenaire financier selon le mécanisme contractuel. Si le cours varie de 9 % par rapport au cours de référence, la part prise en charge par Kayor International SA est plafonnée à 6 %, et la part répercutée sur le partenaire financier est de 9 % − 6 % = 3 %.

3. Kayor International SA pourrait invoquer le principe de traitement juste et équitable, dans la mesure où la taxe exceptionnelle est instaurée sans justification d''intérêt général apparente et de façon rétroactive, ce qui peut constituer un traitement arbitraire de l''investissement déjà réalisé. Elle pourrait également invoquer, selon les mécanismes de protection applicables entre les deux pays (à vérifier au cas par cas, aucun traité précis n''étant ici invoqué), une atteinte à la liberté de transfert des capitaux et des revenus si la taxe affecte significativement sa capacité à rapatrier les bénéfices de son investissement. Une analyse complète devrait vérifier l''existence et le contenu exact d''un cadre de protection applicable entre le Sénégal et le pays d''accueil, ce qui dépasse le cadre général de ce cours.

4. Exemple de problématique : « Dans quelle mesure les mécanismes généraux de protection des investissements étrangers permettent-ils à un investisseur ouest-africain de se prémunir contre une modification réglementaire rétroactive et défavorable adoptée par l''État d''accueil, compte tenu des difficultés pratiques de preuve d''une atteinte au traitement juste et équitable ? »

## Exercices pratiques (questions complémentaires)

1. Dans le premier fait, si l''écart de prix avait été favorable à Kayor Process SARL (prix de vente supérieur au prix de marché), quel pays verrait sa base taxable potentiellement contestée par son administration fiscale ?
2. Proposez une mesure corrective que Kayor International SA pourrait mettre en place pour sécuriser sa politique de prix de transfert entre Kayor Process SARL et Kayor Distrib Co.
3. Si la clause de risque de change du deuxième fait avait plafonné la variation prise en charge par Kayor International SA à 10 % au lieu de 6 %, et que le cours avait varié de 9 %, quelle aurait été la part répercutée sur le partenaire financier ?
4. En reprenant le troisième fait, pourquoi la rétroactivité de la nouvelle taxe est-elle un élément aggravant par rapport à une taxe appliquée seulement pour l''avenir ?
5. Résumez, en cinq lignes, le fil conducteur transversal reliant les trois faits de ce sujet (fiscalité des groupes, gestion du risque de change, protection des investissements) dans la stratégie internationale d''un groupe sénégalais.

## Corrigé

1. Ce serait le pays où est implantée Kayor Distrib Co (la filiale distributrice), qui verrait son administration fiscale potentiellement contester la part de bénéfice qu''elle n''aurait pas perçue du fait d''un prix d''achat trop élevé, ce prix élevé réduisant artificiellement le bénéfice imposable localement en augmentant les charges d''achat de la filiale distributrice.
2. Par exemple, la réalisation d''une étude de comparables indépendants documentée et actualisée régulièrement, la formalisation écrite de la politique de prix de transfert du groupe, et un ajustement périodique des prix intra-groupe pour les maintenir alignés sur les prix de marché observés.
3. La part prise en charge par Kayor International SA serait de 9 %, intégralement couverte par le plafond de 10 % ; la part répercutée sur le partenaire financier serait alors de 0 %, le plafond n''étant pas atteint.
4. Parce qu''une mesure rétroactive s''applique à des opérations déjà réalisées sur la base d''un cadre réglementaire différent au moment de la décision d''investissement, ce qui porte atteinte à la prévisibilité sur laquelle l''investisseur s''est fondé pour engager ses capitaux, alors qu''une taxe prospective, même défavorable, laisse à l''investisseur la possibilité d''adapter ses décisions futures.
5. Les trois faits illustrent que la stratégie internationale d''un groupe sénégalais doit anticiper simultanément plusieurs risques juridiques et financiers liés à l''implantation à l''étranger : la cohérence des prix pratiqués entre entités liées au regard des règles fiscales de chaque pays, la gestion contractuelle du risque de change sur les flux financiers transfrontaliers, et l''exposition aux décisions unilatérales de l''État d''accueil qui peuvent affecter la rentabilité de l''investissement. Une gestion rigoureuse de ces trois dimensions, documentée et anticipée contractuellement, réduit fortement l''exposition du groupe aux aléas de l''internationalisation.', 'texte', 50, false, 50
from public.courses c where c.slug = 'mas-droit-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Master 2 en droit des affaires (entraînement, corrigé détaillé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Droit des investissements et contrats internationaux', '## Fiche du cours vidéo

Durée : 1h30. Objectif : maîtriser les mécanismes généraux de protection des investissements étrangers et les grandes clauses spécifiques des contrats internationaux d''affaires, et savoir les mobiliser dans un cas pratique. Matériel recommandé : tableau ou diaporama, calculatrice pour les exemples de risque de change. Prérequis : droit des contrats d''affaires et de la concurrence vu en Master 1.

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Bonjour à toutes et à tous. Nous ouvrons le cycle des trois matières de Master 2 avec le droit des investissements et les contrats internationaux. Cette matière élargit à l''international ce que vous avez appris en Master 1 sur les contrats d''affaires : les mêmes logiques de clause complexe et de gestion du risque s''appliquent, mais avec une dimension supplémentaire liée à la différence de pays, de monnaie, et de système juridique entre les parties.

## 05:00 – 20:00 · La protection des investissements étrangers

Un investisseur qui implante une activité à l''étranger s''expose à des risques spécifiques : changement de réglementation, expropriation, restrictions de change, instabilité politique. Les mécanismes généraux de protection, que l''on retrouve dans de nombreux cadres juridiques, reposent sur quatre principes à connaître par cœur. D''abord, le traitement juste et équitable : l''État d''accueil s''engage à ne pas traiter l''investisseur de façon arbitraire ou discriminatoire. Ensuite, la protection contre l''expropriation sans indemnisation : une expropriation peut être licite dans l''intérêt public, mais doit généralement donner lieu à une indemnisation juste. Puis, la liberté de transfert des capitaux et des revenus, c''est-à-dire la possibilité de rapatrier les bénéfices, sous réserve des règles de change applicables. Enfin, le règlement des différends, de nombreux cadres prévoyant un recours à l''arbitrage international entre investisseur et État, distinct de l''arbitrage commercial entre entreprises privées que nous avons étudié en Master 1. Prenons un exemple au tableau : une entreprise sénégalaise investit dans une unité de transformation dans un pays voisin. Si ce pays modifie brutalement sa réglementation douanière, sans justification d''intérêt général proportionnée, rendant l''activité non viable, l''investisseur pourrait invoquer une atteinte au traitement juste et équitable, selon le cadre de protection applicable entre les deux pays, qu''il faut toujours vérifier au cas par cas — je ne vous donne ici que la logique générale, pas le contenu d''un traité précis.

## 20:00 – 35:00 · Les grandes clauses des contrats internationaux

Passons aux clauses spécifiques des contrats internationaux, qui s''ajoutent aux clauses complexes déjà vues en Master 1. Première clause : le choix de loi. Les parties désignent le droit national applicable au contrat, qui peut être différent de la loi de chacune d''elles ; ce choix est généralement respecté entre professionnels, sauf règles impératives contraires. Deuxième clause : la clause attributive de juridiction ou la clause compromissoire internationale, qui désigne la juridiction ou le tribunal arbitral compétent, avec une attention accrue, par rapport à l''arbitrage interne, à l''exécution transfrontalière de la décision rendue. Troisième clause, essentielle et souvent sous-estimée : la clause de monnaie de paiement et de risque de change, qui répartit entre les parties le risque lié aux fluctuations entre deux devises. Quatrième clause : la force majeure adaptée au contexte international, qui doit anticiper des événements spécifiques — instabilité politique, fermeture de frontières, sanctions internationales — au-delà des cas classiques. Cinquième clause : la conformité réglementaire, ou compliance, qui engage les parties à respecter les réglementations applicables dans chaque pays concerné, notamment en matière de lutte contre la corruption, un sujet devenu central dans la pratique contractuelle internationale.

## 35:00 – 40:00 · Pause active et question au groupe

Cinq minutes de pause active. Question à préparer : pourquoi une entreprise pourrait-elle choisir le droit de son propre pays comme loi applicable au fond du contrat, tout en acceptant un siège d''arbitrage dans un pays tiers neutre ? Réfléchissez-y. (Réponse attendue : parce que le droit applicable au fond est souvent choisi pour sa pertinence par rapport au lieu d''exécution principal du contrat ou à la familiarité qu''en a l''une des parties, alors que le siège de l''arbitrage est choisi pour sa neutralité procédurale et sa tradition arbitrale reconnue, indépendamment du droit qui tranchera le fond du litige ; les deux choix répondent à des logiques différentes et peuvent donc être dissociés.)

## 40:00 – 60:00 · Cas d''entreprise filé : Teranga Agro-Export

Travaillons maintenant un cas complet. Teranga Agro-Export SA conclut avec un acheteur européen un contrat de fourniture d''arachides transformées sur cinq ans, pour 300 000 000 FCFA par an, payable en euros au cours du jour de facturation. Le contrat désigne le droit sénégalais comme loi applicable, et un arbitrage international à Paris en cas de litige. Une clause de risque de change limite à 5 % la variation prise en charge par Teranga Agro-Export SA par rapport au cours de référence, qui est le taux fixe réel de 655,957 FCFA pour un euro. Première analyse : le choix du droit sénégalais est cohérent, car l''activité de production se déroule au Sénégal, c''est donc le droit le plus pertinent pour régir l''exécution ; le siège à Paris pour l''arbitrage est, lui, choisi pour sa neutralité et sa tradition arbitrale internationale reconnue, indépendamment du lieu d''exécution. Deuxième analyse, chiffrée : si le cours de l''euro varie de 8 % par rapport au cours de référence lors d''une facturation, la part prise en charge par Teranga Agro-Export SA est plafonnée à 5 %, et la part répercutée sur l''acheteur européen est de 8 % − 5 % = 3 %. Ce mécanisme répartit raisonnablement le risque de change entre les deux parties, plutôt que de le faire peser entièrement sur l''exportateur, qui serait sinon exposé à une perte de change pouvant déséquilibrer sa rentabilité sur un contrat de cinq ans.

## 60:00 – 70:00 · Approfondissement : compliance et clauses anti-corruption

Un mot sur la clause de conformité réglementaire, de plus en plus centrale dans les contrats internationaux. Elle engage chaque partie à respecter les réglementations applicables dans son propre pays et dans celui de son partenaire, notamment en matière de lutte contre la corruption : interdiction de verser ou de recevoir des paiements indus pour obtenir ou conserver un contrat, obligation de mettre en place des procédures internes de vigilance, droit pour l''autre partie de résilier le contrat en cas de manquement avéré. Cette clause protège les deux parties : l''entreprise qui la respecte se protège contre le risque qu''un partenaire peu scrupuleux ne l''expose, par ricochet, à des poursuites dans son propre pays, en particulier lorsque les législations nationales ont une portée extraterritoriale sur ces sujets. Pour une entreprise sénégalaise qui contracte avec un partenaire étranger, la vigilance sur ce point n''est plus optionnelle : elle fait partie des standards attendus par les grands partenaires internationaux, notamment financiers.

## 70:00 – 80:00 · Quiz interactif

Cinq questions pour vérifier votre compréhension. Première question : citez les quatre principes généraux de protection des investissements étrangers. Réponse : le traitement juste et équitable, la protection contre l''expropriation sans indemnisation, la liberté de transfert des capitaux et des revenus, et le règlement des différends par arbitrage international investisseur-État. Deuxième question : dans le cas Teranga Agro-Export, si le cours varie de 3 % seulement, quelle part est répercutée sur l''acheteur ? Réponse : aucune, car 3 % est inférieur au plafond de 5 % pris en charge par le vendeur ; la totalité de la variation reste à la charge de Teranga Agro-Export SA. Troisième question : la clause de choix de loi et la clause d''arbitrage international répondent-elles à la même logique ? Réponse : non, le choix de loi vise la pertinence du droit applicable au fond, alors que le choix du siège d''arbitrage vise la neutralité procédurale ; ces choix peuvent être dissociés. Quatrième question : pourquoi la clause de force majeure doit-elle être adaptée dans un contrat international ? Réponse : parce qu''elle doit anticiper des événements spécifiques au contexte international, comme l''instabilité politique ou les sanctions, au-delà des cas classiques. Cinquième question : quel est l''objectif principal d''une clause de conformité réglementaire anti-corruption ? Réponse : protéger les deux parties contre le risque juridique et réputationnel lié à des pratiques de corruption, notamment en raison de la portée parfois extraterritoriale de certaines législations.

## 80:00 – 85:00 · Synthèse et mise en perspective

Pour synthétiser : la protection des investissements repose sur des principes généraux communs, dont le contenu précis dépend toujours du cadre juridique applicable entre les pays concernés, qu''il faut vérifier au cas par cas. Les contrats internationaux ajoutent aux clauses complexes déjà connues des clauses spécifiques à leur dimension transfrontalière, en particulier le choix de loi, le choix du mode de résolution des litiges, le risque de change, la force majeure adaptée, et la conformité réglementaire. La méthode à retenir est celle que nous avons appliquée au cas Teranga Agro-Export : identifier chaque clause, comprendre la logique économique qu''elle organise, et savoir chiffrer ses effets lorsque c''est pertinent.

## 85:00 – 90:00 · Évaluation finale

Cinq questions d''évaluation à retravailler par écrit. Question 1 : citez les quatre principes généraux de protection des investissements étrangers. Réponse : traitement juste et équitable, protection contre l''expropriation sans indemnisation, liberté de transfert des capitaux et des revenus, règlement des différends par arbitrage investisseur-État. Question 2 : dans un contrat où le vendeur plafonne à 4 % sa prise en charge du risque de change et où le cours varie de 7 %, quelle part est répercutée sur l''acheteur ? Réponse : 7 % − 4 % = 3 %. Question 3 : quelles sont les cinq grandes clauses spécifiques des contrats internationaux étudiées aujourd''hui ? Réponse : choix de loi, juridiction ou arbitrage international, monnaie de paiement et risque de change, force majeure adaptée, conformité réglementaire. Question 4 : pourquoi le choix du droit applicable au fond et le choix du siège de l''arbitrage peuvent-ils être dissociés ? Réponse : parce qu''ils répondent à des logiques différentes, la pertinence du droit par rapport à l''exécution du contrat d''un côté, la neutralité procédurale de l''autre. Question 5 : pourquoi la clause de conformité réglementaire anti-corruption est-elle devenue centrale dans la pratique contractuelle internationale ? Réponse : en raison du risque juridique et réputationnel accru, notamment du fait de législations à portée parfois extraterritoriale, et de l''exigence croissante des grands partenaires internationaux en matière de vigilance anticorruption. Merci pour votre attention ; la prochaine séance portera sur le droit fiscal approfondi des groupes.', 'video', 90, false, 60
from public.courses c where c.slug = 'mas-droit-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Droit des investissements et contrats internationaux');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Droit fiscal approfondi des groupes', '## Fiche du cours vidéo

Durée : 1h30. Objectif : maîtriser la logique générale des prix de transfert et des conventions fiscales internationales, et savoir appliquer le principe de pleine concurrence à un cas chiffré. Matériel recommandé : tableau ou diaporama, calculatrice. Prérequis : droit des investissements et contrats internationaux (séance précédente), droit fiscal des affaires vu en Licence 3.

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Bonjour à toutes et à tous. Après les investissements et les contrats internationaux, nous abordons la fiscalité internationale des groupes, à travers deux notions : les prix de transfert et les conventions fiscales. Je rappelle d''emblée la règle de prudence : aucun taux d''imposition, aucun pourcentage de marge de référence, aucune règle précise de convention fiscale ne doit être retenu comme officiel ; nous travaillons sur la méthode et sur des valeurs explicitement fictives.

## 05:00 – 20:00 · Les prix de transfert et le principe de pleine concurrence

Lorsque des sociétés d''un même groupe, situées dans des pays différents, effectuent des transactions entre elles — vente de biens, prestations de services, prêts intra-groupe, redevances — le prix de ces transactions s''appelle un prix de transfert. Ce prix a un impact direct sur la répartition du bénéfice imposable entre les pays concernés. Le principe central à retenir est le principe de pleine concurrence : les prix entre sociétés liées doivent être comparables à ceux pratiqués entre entreprises indépendantes dans des conditions comparables. Je veux que vous fassiez immédiatement le lien avec une notion de Master 1 : c''est exactement la même logique méthodologique que la comparaison au prix de marché pour qualifier une convention réglementée. Seul l''enjeu change : gouvernance d''un côté, répartition de l''assiette fiscale entre pays de l''autre, mais la méthode de comparaison à une référence objective est transversale. Exemple au tableau : une filiale sénégalaise de transformation vend sa production à sa société mère étrangère pour 20 000 000 FCFA, alors qu''une entreprise indépendante comparable facturerait 32 000 000 FCFA pour une transaction similaire. L''écart de 12 000 000 FCFA est un indice fort de prix de transfert non conforme, qui pourrait conduire l''administration fiscale sénégalaise à réintégrer ce montant dans le bénéfice imposable de la filiale.

## 20:00 – 30:00 · Les méthodes générales de détermination des prix de transfert

Sans entrer dans le détail technique, qui relève d''un enseignement spécialisé, retenez l''existence de trois grandes familles de méthodes. Premièrement, les méthodes fondées sur la comparaison directe des prix pratiqués pour des transactions comparables entre entreprises indépendantes — c''est la méthode la plus intuitive, mais elle suppose de trouver un comparable suffisamment proche, ce qui est souvent difficile en pratique dans des marchés peu documentés. Deuxièmement, les méthodes fondées sur les marges pratiquées, brute ou nette, par des entreprises comparables exerçant une activité similaire — plus souples, car elles ne comparent pas un prix précis mais un niveau de rentabilité. Troisièmement, les méthodes fondées sur le partage des bénéfices entre entités liées, utilisées lorsque la transaction est trop spécifique pour trouver un comparable direct, par exemple pour des actifs incorporels uniques. L''administration fiscale peut demander à l''entreprise de documenter sa politique de prix de transfert et de justifier le respect du principe de pleine concurrence ; une entreprise bien gérée anticipe cette demande en formalisant sa politique par écrit, plutôt que de la justifier seulement après un contrôle.

## 30:00 – 35:00 · Pause active et question au groupe

Cinq minutes de pause active. Question à préparer : pourquoi la méthode fondée sur les marges est-elle souvent plus facile à appliquer en pratique que la méthode fondée sur la comparaison directe des prix ? Réfléchissez-y. (Réponse attendue : parce qu''il est souvent plus facile de trouver des entreprises comparables ayant un niveau de rentabilité ou de marge publié ou estimable, que de trouver une transaction strictement identique avec un prix directement comparable, notamment pour des produits ou services peu standardisés.)

## 35:00 – 50:00 · Cas d''entreprise filé : groupe Siné Industries

Reprenons un cas complet. Siné Industries SA, basée à Dakar, détient une filiale de distribution dans un pays voisin. La filiale réalise un chiffre d''affaires de 150 000 000 FCFA en revendant des produits achetés à la société mère pour 130 000 000 FCFA, soit une marge brute de 20 000 000 FCFA, c''est-à-dire 20 000 000 divisé par 130 000 000, soit environ 15,4 % du prix d''achat — rectifions au passage un arrondi : 20 000 000 / 130 000 000 ≈ 0,1538, donc environ 15,4 %. Une étude de comparables indépendants dans le même secteur de distribution montre une marge brute habituelle de 25 % du prix d''achat pour des fonctions comparables. Procédons étape par étape. Première étape : calculer la marge attendue selon le principe de pleine concurrence, soit 130 000 000 × 25 % = 32 500 000 FCFA. Deuxième étape : comparer à la marge effectivement réalisée, 20 000 000 FCFA. Troisième étape : calculer l''écart, 32 500 000 − 20 000 000 = 12 500 000 FCFA. Quatrième étape : conclure sur la conséquence fiscale possible — cet écart indique que le prix d''achat facturé par la société mère est probablement surévalué, ce qui transfère artificiellement du bénéfice vers la société mère au détriment de la filiale, et l''administration fiscale du pays de la filiale pourrait chercher à réintégrer cet écart dans son bénéfice imposable local.

## 50:00 – 65:00 · Les conventions fiscales internationales

Passons maintenant aux conventions fiscales internationales. Lorsqu''une même opération économique pourrait être imposée dans deux pays différents — le pays de résidence de l''entreprise et le pays source du revenu — un risque de double imposition apparaît. Les conventions fiscales, conclues entre deux États, visent à éliminer ou atténuer ce risque, selon trois mécanismes généraux à connaître. Premièrement, la répartition du droit d''imposer certains revenus entre l''État de résidence et l''État source, selon la nature du revenu : bénéfices d''entreprise, dividendes, intérêts, redevances. Deuxièmement, les mécanismes d''élimination de la double imposition, le plus souvent un crédit d''impôt accordé par l''État de résidence pour l''impôt déjà payé dans l''État source, ou une exonération dans l''un des deux États. Troisièmement, des clauses anti-abus, destinées à éviter qu''une entreprise n''utilise artificiellement une convention favorable sans lien économique réel avec le pays concerné, pratique parfois appelée chalandage fiscal — par exemple l''interposition d''une société-écran dans un pays tiers uniquement pour bénéficier d''une convention avantageuse, sans aucune activité économique réelle dans ce pays tiers.

## 65:00 – 75:00 · Quiz interactif

Cinq questions pour vérifier votre compréhension. Première question : quel est le principe central qui gouverne les prix de transfert ? Réponse : le principe de pleine concurrence, qui exige une comparabilité avec des transactions entre entreprises indépendantes. Deuxième question : dans le cas Siné Industries, quel est le montant de l''écart identifié ? Réponse : 12 500 000 FCFA. Troisième question : citez les trois grandes familles de méthodes de détermination des prix de transfert. Réponse : la comparaison directe des prix, les méthodes fondées sur les marges, et le partage des bénéfices. Quatrième question : qu''est-ce que le chalandage fiscal ? Réponse : l''utilisation artificielle d''une convention fiscale favorable sans lien économique réel avec le pays concerné. Cinquième question : quel mécanisme général permet d''éliminer la double imposition d''un même revenu dans deux pays ? Réponse : le plus souvent, un crédit d''impôt accordé par l''État de résidence pour l''impôt déjà payé dans l''État source, ou une exonération dans l''un des deux États.

## 75:00 – 85:00 · Synthèse et mise en perspective

Synthétisons cette séance. Le prix de transfert est le prix des transactions entre sociétés liées situées dans des pays différents, et il doit respecter le principe de pleine concurrence, vérifié par comparaison à des entreprises ou des transactions indépendantes comparables. Trois familles de méthodes existent pour cette comparaison, chacune adaptée à un type de transaction. Les conventions fiscales internationales organisent la répartition du droit d''imposer entre États et l''élimination de la double imposition, avec des garde-fous anti-abus contre le chalandage fiscal. La méthode que nous avons appliquée au cas Siné Industries — comparer, chiffrer l''écart, en tirer la conséquence fiscale — est directement transférable à tout cas pratique de cette matière, et fait écho à la méthode de la convention réglementée étudiée en Master 1 : dans les deux cas, on compare une situation liée à une référence de marché indépendante.

## 85:00 – 90:00 · Évaluation finale

Cinq questions d''évaluation à retravailler par écrit. Question 1 : définissez le principe de pleine concurrence. Réponse : l''exigence que les prix pratiqués entre sociétés liées soient comparables à ceux pratiqués entre entreprises indépendantes dans des conditions comparables. Question 2 : une filiale achète à sa mère pour 100 000 000 FCFA et revend pour 118 000 000 FCFA, soit une marge de 18 %. Des comparables indépendants montrent une marge habituelle de 24 %. Calculez l''écart par rapport à la marge attendue. Réponse : marge attendue = 100 000 000 × 24 % = 24 000 000 FCFA ; marge effective = 18 000 000 FCFA ; écart = 24 000 000 − 18 000 000 = 6 000 000 FCFA. Question 3 : citez les trois familles de méthodes de détermination des prix de transfert. Réponse : comparaison directe des prix, méthodes fondées sur les marges, partage des bénéfices. Question 4 : quels sont les deux mécanismes généraux d''une convention fiscale pour traiter la double imposition ? Réponse : la répartition du droit d''imposer selon la nature du revenu, et un mécanisme d''élimination de la double imposition (crédit d''impôt ou exonération). Question 5 : pourquoi les conventions fiscales prévoient-elles des clauses anti-abus ? Réponse : pour éviter le chalandage fiscal, c''est-à-dire l''utilisation artificielle d''une convention favorable sans substance économique réelle dans le pays concerné. Merci pour votre attention ; la prochaine séance portera sur la méthodologie du mémoire et de la soutenance.', 'video', 90, false, 70
from public.courses c where c.slug = 'mas-droit-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Droit fiscal approfondi des groupes');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Méthodologie du mémoire de recherche ou professionnel et soutenance', '## Fiche du cours vidéo

Durée : 1h30. Objectif : maîtriser la méthodologie de construction d''un mémoire de Master 2 (sujet, problématique, plan) et les principes de préparation d''une soutenance orale réussie. Matériel recommandé : tableau ou diaporama, exemples de problématiques à retravailler collectivement. Prérequis : aucun prérequis disciplinaire spécifique, mais utile après avoir déjà réfléchi à un thème de mémoire.

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Bonjour à toutes et à tous. Cette séance est différente des précédentes : nous ne travaillons pas une matière de fond, mais une compétence méthodologique transversale, indispensable au Master 2 : la construction d''un mémoire et la préparation de sa soutenance. C''est un exercice que beaucoup d''étudiants sous-estiment en début d''année, pensant qu''il suffira de « rassembler des informations » sur un thème ; en réalité, un bon mémoire se construit autour d''une problématique précise, dès les premières semaines.

## 05:00 – 20:00 · Choisir son sujet et construire la problématique

Commençons par le choix du sujet. Un bon sujet répond à trois critères cumulatifs : il doit être suffisamment précis pour être traité en profondeur dans le volume imposé par votre établissement (à vérifier auprès de votre encadrant), suffisamment documenté pour permettre une recherche sérieuse, et porteur d''un intérêt réel, théorique ou pratique. Un sujet trop large, comme « le droit des sociétés en Afrique », ne permet pas une analyse approfondie ; un sujet purement descriptif, comme « présentation du contrat de vente », ne permet pas de construire une véritable problématique. La méthode de cadrage consiste à partir d''un thème large, puis à le restreindre progressivement. Travaillons un exemple au tableau : partons du thème « les prix de transfert dans les groupes agro-industriels ». Première restriction : on se concentre sur les groupes agro-industriels ouest-africains spécifiquement. Deuxième restriction, qui devient la problématique : « dans quelle mesure le principe de pleine concurrence permet-il un contrôle effectif des prix de transfert dans les groupes agro-industriels ouest-africains, compte tenu des difficultés pratiques d''accès à des données de comparables fiables ? ». Remarquez la structure de cette problématique : elle annonce une tension — le principe existe en théorie, mais son application pratique est limitée — que tout le mémoire va explorer et documenter. Une problématique qui n''annonce aucune tension, aucune difficulté, n''est généralement pas une bonne problématique : elle ressemble à une question fermée plutôt qu''à un axe de recherche.

## 20:00 – 30:00 · Construire le plan

Le plan d''un mémoire juridique suit généralement une logique en deux parties, chacune subdivisée, qui organise une démonstration progressive. Une première partie pose le cadre et les règles applicables : ce qui existe, ce qui est prévu par les textes et la pratique. Une seconde partie analyse les difficultés, les limites, ou les évolutions : ce qui pose problème, ce qui pourrait changer. Point essentiel à retenir : le plan n''est pas un sommaire de connaissances juxtaposées, où l''on énumérerait tout ce que l''on sait sur le sujet. Chaque partie, chaque sous-partie, doit apporter un élément de réponse à la problématique, dans un ordre qui construit progressivement l''argumentation jusqu''à la conclusion. Pour notre exemple sur les prix de transfert, une première partie pourrait exposer le principe de pleine concurrence et ses méthodes de mise en œuvre ; une seconde partie pourrait analyser les difficultés pratiques de ce contrôle dans le contexte spécifique des groupes agro-industriels ouest-africains — accès aux comparables, capacités de l''administration fiscale, spécificités sectorielles.

## 30:00 – 35:00 · Pause active et question au groupe

Cinq minutes de pause active. Question à préparer : pourquoi un plan qui énumère simplement tout ce que l''on sait sur un thème, sans lien explicite avec une problématique, est-il généralement sanctionné dans un mémoire de Master ? Réfléchissez-y. (Réponse attendue : parce que le mémoire de Master évalue la capacité à construire une démonstration argumentée répondant à une question précise, pas seulement la capacité à restituer des connaissances ; un plan qui juxtapose des connaissances sans les relier à une problématique ne démontre pas cette compétence et s''apparente davantage à une fiche de révision qu''à un travail de recherche.)

## 35:00 – 55:00 · La soutenance orale : principes et simulation

Passons à la soutenance, l''épreuve orale qui clôt le travail de mémoire. Elle comprend typiquement une présentation orale de quelques minutes, souvent entre 10 et 15 minutes selon les modalités de votre établissement, suivie de questions du jury. Quatre principes doivent guider votre préparation. Premièrement, la présentation orale ne doit jamais être une lecture du mémoire : c''est une synthèse qui met en valeur votre problématique, votre démarche, et vos conclusions principales, en donnant envie au jury d''approfondir certains points par ses questions. Deuxièmement, les supports visuels, lorsqu''ils sont autorisés, doivent être sobres : peu de texte, des schémas clairs, jamais de paragraphes entiers lus à l''écran. Troisièmement, les questions du jury portent souvent sur les limites de votre travail, vos choix méthodologiques, ou des approfondissements possibles ; il faut savoir reconnaître honnêtement les limites de votre travail plutôt que de les nier, ce qui est généralement mieux perçu qu''une défense rigide et peu crédible. Quatrièmement, l''entraînement oral devant un public, avec simulation de questions, est la meilleure préparation, car la maîtrise orale d''un sujet que l''on connaît par écrit n''est pas automatique. Simulons maintenant une séquence de questions-réponses : un étudiant a rédigé un mémoire sur l''arbitrage CCJA et les PME ouest-africaines, concluant que l''arbitrage CCJA est peu adapté à ces entreprises en raison de son coût. Un membre du jury demande : « n''auriez-vous pas dû étudier plus précisément les montants de litiges concernés, pour étayer cette conclusion avec des exemples chiffrés ? ». La méthode de réponse à retenir comporte trois étapes : reconnaître honnêtement la limite identifiée, expliquer pourquoi elle existe (ici, la difficulté d''accès à des données réelles et confidentielles sur les montants de litiges arbitraux), puis proposer une piste pour la dépasser dans une recherche future (par exemple des entretiens avec des praticiens pour obtenir des ordres de grandeur).

## 55:00 – 70:00 · Atelier pratique : retravailler une problématique faible

Passons à un atelier pratique. Voici une problématique faible, soumise par un étudiant fictif : « les contrats internationaux sont-ils bien réglementés ? ». Identifions ensemble ses défauts. D''abord, c''est une question fermée, qui appelle une réponse par oui ou par non, sans tension ni discussion. Ensuite, elle est trop large : « les contrats internationaux » et « bien réglementés » ne précisent ni le type de contrat, ni le pays, ni le critère d''évaluation retenu pour juger de la qualité de la réglementation. Reformulons-la ensemble selon la méthode vue plus haut : on restreint d''abord à un type de contrat précis, par exemple les contrats internationaux d''approvisionnement agricole ; on restreint ensuite à une zone géographique, l''Afrique de l''Ouest ; on identifie enfin une tension réelle à explorer, par exemple l''écart entre la sécurité juridique recherchée par les clauses contractuelles et les difficultés pratiques d''exécution transfrontalière. On obtient une problématique reformulée : « dans quelle mesure les clauses contractuelles usuelles des contrats internationaux d''approvisionnement agricole en Afrique de l''Ouest parviennent-elles à sécuriser l''exécution transfrontalière, compte tenu des difficultés pratiques de mise en œuvre de l''arbitrage international pour des opérateurs de taille modeste ? ». Cette reformulation illustre exactement la méthode de restriction progressive que je veux que vous appliquiez à votre propre sujet dès cette semaine.

## 70:00 – 80:00 · Quiz interactif

Cinq questions pour vérifier votre compréhension. Première question : quels sont les trois critères d''un bon sujet de mémoire ? Réponse : précision suffisante, documentation accessible, intérêt théorique ou pratique réel. Deuxième question : pourquoi une problématique fermée est-elle généralement insuffisante ? Réponse : elle n''appelle qu''une réponse binaire et ne permet pas de construire une démonstration argumentée. Troisième question : quelle est la logique générale du plan en deux parties d''un mémoire juridique ? Réponse : une première partie qui pose le cadre existant, une seconde qui analyse les difficultés ou les évolutions, chaque partie répondant à la problématique. Quatrième question : quelle est la méthode en trois étapes pour répondre à une question de jury sur une limite de votre travail ? Réponse : reconnaître la limite, l''expliquer, proposer une piste pour la dépasser. Cinquième question : dans l''atelier de reformulation, quels étaient les deux défauts principaux de la problématique faible initiale ? Réponse : elle était fermée (réponse oui/non) et trop large (aucune précision de type de contrat, de zone géographique ou de critère d''évaluation).

## 80:00 – 85:00 · Synthèse et mise en perspective

Synthétisons cette séance méthodologique. Un bon sujet de mémoire est précis, documenté, et porteur d''un intérêt réel ; la problématique qui en découle doit annoncer une tension à explorer, jamais une simple question fermée. Le plan organise progressivement la démonstration vers la réponse à la problématique, en deux parties articulées, jamais en un sommaire de connaissances juxtaposées. La soutenance évalue votre capacité à synthétiser oralement votre travail et à répondre honnêtement aux questions du jury sur ses limites, selon la méthode en trois étapes que nous avons pratiquée. Ces compétences méthodologiques, que vous devez mobiliser dès les premières semaines de l''année et non dans les derniers jours avant le dépôt du mémoire, sont aussi transférables à votre future pratique professionnelle, où la capacité à poser une problématique claire et à la défendre oralement devant un client ou une direction est une compétence recherchée.

## 85:00 – 90:00 · Évaluation finale

Cinq questions d''évaluation à retravailler par écrit. Question 1 : citez les trois critères d''un bon sujet de mémoire. Réponse : précision, documentation accessible, intérêt théorique ou pratique réel. Question 2 : transformez le thème large « la fiscalité des groupes » en problématique précise, en au moins deux étapes de restriction. Réponse libre, attendue selon la méthode vue en séance (restriction à un type d''opération, puis formulation d''une tension explicite à explorer). Question 3 : pourquoi le plan d''un mémoire ne doit-il jamais être un simple sommaire de connaissances ? Réponse : parce que chaque partie doit apporter un élément de réponse argumenté à la problématique, ce qu''une simple juxtaposition de connaissances ne permet pas de démontrer. Question 4 : citez les quatre principes de préparation d''une soutenance évoqués en séance. Réponse : ne pas lire le mémoire, des supports visuels sobres, anticiper les questions sur les limites du travail, s''entraîner oralement devant un public. Question 5 : quelle est la meilleure attitude face à une question de jury révélant une limite réelle de votre mémoire ? Réponse : la reconnaître honnêtement, l''expliquer, et proposer une piste pour la dépasser, plutôt que de la nier ou de se déstabiliser. Merci à toutes et à tous ; la prochaine et dernière séance sera un atelier de simulation complète de soutenance.', 'video', 90, false, 80
from public.courses c where c.slug = 'mas-droit-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Méthodologie du mémoire de recherche ou professionnel et soutenance');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Atelier méthodologie — simulation de soutenance', '## Fiche du cours vidéo

Durée : 1h30. Objectif : atelier de simulation complète de soutenance de mémoire, synthèse transversale des trois matières de Master 2 (investissements internationaux, fiscalité des groupes, méthodologie du mémoire), entraînement à la gestion du temps et du stress en conditions proches du réel. Matériel recommandé : tableau ou diaporama, chronomètre, grille d''observation de soutenance à distribuer aux participants d''une simulation entre pairs. Prérequis : les trois séances vidéo précédentes de Master 2.

## Déroulé minuté

## 00:00 – 05:00 · Introduction à l''atelier de soutenance

Bonjour à toutes et à tous. Cette séance clôt l''année de Master 2 avec un atelier pratique de simulation de soutenance, construit autour d''un mémoire fictif qui mobilise les deux matières de fond que nous avons étudiées — investissements internationaux et fiscalité des groupes — à travers l''épreuve méthodologique de la soutenance. L''objectif est de vous donner un modèle concret et transférable à votre propre soutenance, quel que soit votre sujet.

## 05:00 – 15:00 · Présentation du mémoire fictif et de sa problématique

Voici le mémoire que nous allons utiliser pour cet atelier. Titre : « Le contrôle des prix de transfert dans les groupes agro-industriels ouest-africains : entre principe de pleine concurrence et réalités pratiques ». Problématique : « dans quelle mesure le principe de pleine concurrence permet-il un contrôle effectif des prix de transfert dans les groupes agro-industriels ouest-africains, compte tenu des difficultés pratiques d''accès à des données de comparables fiables ? ». Plan en deux parties : la première partie expose le principe de pleine concurrence et ses méthodes générales de mise en œuvre (comparaison directe des prix, méthodes fondées sur les marges, partage des bénéfices) ; la seconde partie analyse les difficultés pratiques de ce contrôle dans le contexte spécifique des groupes agro-industriels ouest-africains, notamment l''absence de bases de données de comparables locales suffisamment développées, et propose des pistes d''amélioration, comme le recours à des comparables régionaux élargis ou à des méthodes fondées sur les marges plutôt que sur les prix directs lorsque les données manquent.

## 15:00 – 30:00 · Simulation de présentation orale

Je vous propose maintenant d''écouter, puis de commenter ensemble, une présentation orale type de dix minutes pour ce mémoire — je vais en dérouler la structure, que vous devez adapter à votre propre sujet. Introduction (environ deux minutes) : présenter le contexte économique (l''importance croissante des groupes agro-industriels dans la région), annoncer la problématique et son enjeu pratique, annoncer le plan en une phrase. Première partie (environ trois minutes) : présenter le principe de pleine concurrence sans le réciter mot à mot, mais en insistant sur la méthode de comparaison et les trois familles de méthodes, en illustrant par un exemple chiffré simple. Deuxième partie (environ trois minutes) : présenter les difficultés pratiques identifiées dans la recherche — ici, l''absence de données de comparables fiables et accessibles dans la région — et les pistes d''amélioration proposées. Conclusion (environ deux minutes) : rappeler la réponse apportée à la problématique, reconnaître explicitement une limite du travail (par exemple l''absence d''entretiens avec des praticiens pour vérifier empiriquement les difficultés identifiées dans la littérature), et ouvrir sur une perspective de recherche future. Remarquez la structure : chaque partie reste brève à l''oral, car le jury a déjà lu le mémoire ; l''oral doit mettre en valeur la démarche et les conclusions, pas réciter le contenu intégral.

## 30:00 – 35:00 · Pause active et question au groupe

Cinq minutes de pause active. Question à préparer : pourquoi la conclusion orale de la présentation doit-elle inclure une reconnaissance explicite d''une limite du travail, plutôt que de se contenter d''affirmer que la problématique a été pleinement résolue ? Réfléchissez-y. (Réponse attendue : parce qu''un mémoire de Master, par nature, ne peut pas traiter exhaustivement un sujet de recherche ; reconnaître une limite réelle démontre une maturité critique et une honnêteté intellectuelle appréciées par un jury, et désamorce par avance une partie des questions difficiles qu''il pourrait poser sur ce point, l''étudiant montrant qu''il maîtrise déjà la portée exacte de son propre travail.)

## 35:00 – 55:00 · Simulation de questions du jury

Passons maintenant à la simulation des questions du jury, l''étape la plus redoutée par les étudiants, mais aussi la plus importante à préparer. Je vous propose cinq questions types, avec, pour chacune, la méthode de réponse à appliquer. Première question : « vous n''avez cité aucun exemple chiffré réel de redressement fiscal lié aux prix de transfert dans la région ; votre démonstration n''est-elle pas purement théorique ? ». Méthode de réponse : reconnaître que les données publiques précises sur les redressements fiscaux sont rarement accessibles pour des raisons de confidentialité fiscale, expliquer que le mémoire s''appuie donc sur la méthode générale documentée et sur des illustrations pédagogiques explicitement présentées comme fictives, et proposer, comme piste de recherche future, des entretiens avec des praticiens du contrôle fiscal pour obtenir des ordres de grandeur, même non officiels. Deuxième question : « pourquoi n''avez-vous pas comparé votre analyse à celle d''autres régions du monde confrontées aux mêmes difficultés de comparables ? ». Méthode : reconnaître que le choix a été de concentrer l''analyse sur le contexte régional pour approfondir plutôt que de disperser l''analyse sur une comparaison internationale large, ce qui aurait dépassé le volume imposé au mémoire, tout en indiquant que cette comparaison constitue une piste naturelle d''approfondissement. Troisième question : « votre proposition de recourir à des comparables régionaux élargis est-elle vraiment opérationnelle pour une petite administration fiscale ? ». Méthode : reconnaître la difficulté pratique de mise en œuvre pour une administration aux moyens limités, nuancer la proposition en la présentant comme une piste parmi d''autres plutôt qu''une solution unique et suffisante, et suggérer une mise en œuvre progressive, par exemple en priorisant les secteurs économiques les plus significatifs. Quatrième question : « quelle est la limite méthodologique principale de votre travail ? ». Méthode : répondre directement et sans détour avec la limite déjà identifiée en conclusion, ce qui démontre une cohérence entre l''écrit et l''oral, puis reformuler brièvement la piste de dépassement déjà présentée. Cinquième question, plus générale : « en quoi votre mémoire apporte-t-il quelque chose de nouveau par rapport aux travaux déjà existants sur le sujet ? ». Méthode : identifier précisément l''angle spécifique de votre travail — ici, l''articulation entre le principe théorique de pleine concurrence et les contraintes pratiques propres au contexte agro-industriel régional — sans jamais prétendre avoir épuisé le sujet.

## 55:00 – 70:00 · Grille d''auto-évaluation et conseils pratiques

Je vous propose maintenant une grille d''auto-évaluation que vous pouvez utiliser lors de vos propres simulations entre pairs. Sur la présentation orale : respect du temps imparti (ni trop court, ni trop long), clarté de l''annonce de la problématique dès l''introduction, équilibre entre les deux parties du plan, qualité de la conclusion (réponse à la problématique, limite reconnue, perspective ouverte). Sur la gestion des questions : écoute complète de la question avant de répondre (ne pas répondre avant que le jury ait terminé sa phrase), reformulation brève de la question si elle est complexe pour vérifier la compréhension, réponse structurée selon la méthode reconnaître-expliquer-proposer lorsque la question porte sur une limite, et surtout absence de panique ou de silence prolongé : il est toujours préférable de répondre « je n''ai pas approfondi ce point spécifique dans mon mémoire, mais mon hypothèse serait que... » plutôt que de rester silencieux ou de bluffer une réponse non maîtrisée, qu''un jury expérimenté détecte presque toujours. Sur l''attitude générale : voix posée, contact visuel avec l''ensemble du jury et non un seul membre, gestion du stress par une respiration consciente avant de répondre à une question difficile plutôt que de répondre dans la précipitation.

## 70:00 – 80:00 · Quiz interactif transversal

Cinq questions qui résument l''ensemble du cycle de Master 2. Première question : quel est le principe central qui gouverne les prix de transfert ? Réponse : le principe de pleine concurrence. Deuxième question : quelles sont les quatre composantes générales de la protection des investissements étrangers étudiées en début de cycle ? Réponse : traitement juste et équitable, protection contre l''expropriation sans indemnisation, liberté de transfert des capitaux et des revenus, règlement des différends par arbitrage investisseur-État. Troisième question : quelle est la méthode en trois étapes pour répondre à une question de jury révélant une limite de votre mémoire ? Réponse : reconnaître, expliquer, proposer une piste. Quatrième question : pourquoi une problématique de mémoire doit-elle annoncer une tension plutôt qu''être une question fermée ? Réponse : parce qu''elle doit ouvrir sur une démonstration argumentée, pas sur une simple réponse binaire. Cinquième question : quelle attitude est recommandée face à une question de jury à laquelle vous n''avez pas de réponse toute prête ? Réponse : reconnaître honnêtement les limites de votre analyse sur ce point précis et proposer une hypothèse raisonnée, plutôt que de rester silencieux ou d''improviser une réponse non maîtrisée.

## 80:00 – 85:00 · Synthèse générale de l''année de Master 2

Pour conclure cette année de Master 2, et ce cycle complet de la Licence au Master, retenez l''idée centrale qui traverse toutes les matières étudiées : la comparaison à une référence objective, documentée et vérifiable, est l''outil méthodologique transversal du droit des affaires avancé, qu''il s''agisse de qualifier une convention réglementée, d''apprécier le risque anticoncurrentiel d''une clause d''exclusivité, de vérifier un prix de transfert, ou de construire une argumentation de mémoire face aux objections d''un jury. Cette capacité à comparer rigoureusement, à chiffrer lorsque c''est possible, et à reconnaître honnêtement les limites de son analyse, est exactement ce qui distingue un professionnel du droit des affaires compétent d''un simple connaisseur de règles.

## 85:00 – 90:00 · Évaluation finale

Cinq questions d''évaluation finale pour clore l''année. Question 1 : quelle est la méthode en trois étapes pour répondre à une question de jury sur une limite de votre travail ? Réponse : reconnaître la limite, l''expliquer, proposer une piste de dépassement. Question 2 : citez les trois grandes familles de méthodes de détermination des prix de transfert. Réponse : comparaison directe des prix, méthodes fondées sur les marges, partage des bénéfices. Question 3 : pourquoi faut-il éviter le silence prolongé face à une question difficile du jury ? Réponse : parce qu''il vaut mieux formuler une hypothèse raisonnée et explicitement présentée comme telle, qui montre une capacité de réflexion, plutôt que de laisser penser à une absence totale de maîtrise du sujet. Question 4 : quel est le fil méthodologique transversal reliant la qualification d''une convention réglementée, l''analyse d''un risque anticoncurrentiel, et le contrôle d''un prix de transfert ? Réponse : la comparaison systématique à une référence objective de marché ou de conditions normales, plutôt qu''un jugement fondé uniquement sur l''existence d''un lien d''intérêt ou de pouvoir économique. Question 5 : quelle compétence générale ce cycle de Master 2 a-t-il cherché à développer, au-delà des connaissances de fond en droit international des affaires et en fiscalité ? Réponse : la capacité à mener un travail de recherche personnel rigoureux, à le structurer autour d''une problématique précise, et à le défendre oralement avec honnêteté intellectuelle face à des questions critiques, ce qui constitue une compétence professionnelle transférable bien au-delà du cadre académique. Merci à toutes et à tous pour votre travail durant ces deux années de Master ; bon courage pour vos soutenances et le début de votre vie professionnelle.', 'video', 90, false, 90
from public.courses c where c.slug = 'mas-droit-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Atelier méthodologie — simulation de soutenance');

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
