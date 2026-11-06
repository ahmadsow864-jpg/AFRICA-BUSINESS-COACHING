-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Cours (partie 16/16). À exécuter après seed.sql.

-- Cours : Droit des affaires Master 1 : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'mas-droit-m1', (select id from public.levels where name = 'Master 1'), null, 'Droit des affaires', 'Droit des affaires Master 1 : réussir ses examens', 'Préparation aux examens de Master 1 en droit des affaires : gouvernance et groupes de sociétés, contrats d''affaires et concurrence, arbitrage et modes alternatifs de résolution des litiges. Public : étudiants de Master 1 ayant validé une Licence en droit des affaires (introduction au droit, obligations, sociétés OHADA, droit du travail de base).', true, 771
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Master 1 en droit des affaires', '## Objectifs de la leçon

Le Master 1 en droit des affaires marque un changement de registre par rapport à la Licence. Vous ne vous contentez plus de restituer des mécanismes juridiques : on attend de vous une analyse critique, la capacité à qualifier des montages complexes (groupes de sociétés, contrats d''affaires sophistiqués, clauses de résolution des litiges) et à argumenter en incertitude, c''est-à-dire lorsque plusieurs qualifications juridiques sont défendables. Cette leçon pose le cadre de l''année : les attentes des examinateurs, les matières au programme, la méthode de travail adaptée au Master, et un plan de révision réaliste sur six semaines.

## Ce qui change par rapport à la Licence

En Licence 3, vous avez étudié le droit des sociétés commerciales OHADA dans sa dimension statutaire (constitution, organes, dissolution) et le droit des sûretés et des procédures collectives. En Master 1, l''approche se déplace vers la gouvernance et les groupes de sociétés : comment une société mère pilote ses filiales, comment se contrôlent les conventions passées entre une société et ses dirigeants ou actionnaires significatifs (les conventions dites réglementées), et comment les contrats d''affaires organisent des relations économiques durables plutôt que de simples échanges ponctuels. On y ajoute les modes alternatifs de résolution des litiges, en particulier l''arbitrage, essentiel dans les relations d''affaires internationales et régionales.

L''examinateur de Master ne demande plus seulement « quelle est la règle ? » mais « quelle qualification retenir face à des faits ambigus, et avec quelles conséquences pratiques pour l''entreprise ? ». Un cas pratique de Master mêle souvent plusieurs branches du droit (sociétés, contrats, concurrence, arbitrage) dans une même situation d''entreprise, et exige une hiérarchisation des arguments plutôt qu''une récitation.

## Les matières de l''année

Le programme de Master 1 en droit des affaires, tel que couvert par ce cours, s''organise autour de trois axes :

- Droit des sociétés approfondi et gouvernance : groupes de sociétés, notion de contrôle, conventions réglementées, responsabilité des dirigeants dans les montages complexes.
- Droit des contrats d''affaires et de la concurrence : clauses complexes (exclusivité, non-concurrence, earn-out, hardship, limitation de responsabilité) et principes du droit de la concurrence applicables aux pratiques anticoncurrentielles.
- Arbitrage et modes alternatifs de résolution des litiges : logique de la clause compromissoire, déroulement d''un arbitrage, rôle de la Cour commune de justice et d''arbitrage (CCJA) de l''OHADA dans le paysage régional, médiation et conciliation.

Ces trois matières ne sont pas étanches : un contrat d''affaires entre deux sociétés d''un même groupe peut relever à la fois du droit des conventions réglementées, du droit de la concurrence s''il restreint l''accès au marché, et contenir une clause d''arbitrage. C''est précisément cette transversalité que les examens de Master évaluent.

## Méthode de travail avancée

Trois outils structurent le travail en Master :

- L''étude de cas complexe : partir d''un scénario d''entreprise (souvent sénégalais ou ouest-africain, fictif) comportant plusieurs acteurs, plusieurs contrats et un ou plusieurs litiges potentiels. La méthode consiste à cartographier les parties, les actes juridiques en cause, puis à qualifier chaque élément avant de répondre à la question posée.
- Le business case : analyse d''une décision d''entreprise (restructuration de groupe, négociation d''un contrat-cadre, choix d''un mode de résolution des litiges) en croisant l''angle juridique et l''angle économique. Il ne s''agit pas seulement de dire ce qui est licite, mais ce qui est opportun pour l''entreprise, compte tenu des risques.
- La revue de littérature ciblée : savoir situer une question dans les débats doctrinaux (sans inventer de référence précise), reconnaître les tendances d''évolution du droit des affaires OHADA, et construire un raisonnement nuancé plutôt qu''une réponse binaire.

Pour chaque matière, construisez une fiche de synthèse avec : définitions clés, conditions d''application, effets juridiques, et un exemple d''entreprise type. Complétez-la par une liste de points de vigilance (erreurs fréquentes de qualification).

## Plan de révision sur six semaines

- Semaines 1 et 2 : droit des sociétés approfondi et gouvernance. Reprendre les bases de Licence 3 (sociétés commerciales OHADA) puis construire les fiches sur les groupes et les conventions réglementées.
- Semaines 3 et 4 : droit des contrats d''affaires et de la concurrence. Travailler les clauses complexes à partir de modèles de contrats commentés, puis les principes de la concurrence.
- Semaine 5 : arbitrage et modes alternatifs de résolution des litiges. Comprendre la logique de la clause compromissoire et le rôle de la CCJA en général, sans entrer dans le détail procédural précis qui relève d''un cours spécialisé.
- Semaine 6 : entraînement sur sujets types, cas transversaux, et relecture des fiches. Prévoir au moins deux simulations d''examen en temps limité (3 heures), avec autocorrection stricte.

Chaque semaine doit se terminer par un exercice écrit complet (pas seulement une lecture), car la compétence évaluée en Master est la rédaction argumentée, pas la seule connaissance.

## Points clés à retenir

- Le Master exige une analyse transversale et critique, pas une récitation de règles.
- Les trois matières de l''année (sociétés/gouvernance, contrats d''affaires/concurrence, arbitrage/MARL) s''articulent souvent dans un même cas pratique d''examen.
- La méthode de l''étude de cas complexe et du business case doit être pratiquée dès le début de la révision, pas seulement la veille de l''examen.
- Aucune donnée chiffrée officielle (taux, seuils, numéros d''articles) ne doit être mémorisée comme certaine sans vérification du texte en vigueur : utilisez les valeurs de ce cours comme illustrations pédagogiques.

## Exercices pratiques

1. Listez les trois matières avancées du programme de M1 en droit des affaires et, pour chacune, indiquez une notion de Licence 3 sur laquelle elle s''appuie directement.
2. Expliquez en cinq lignes la différence entre une approche « récitation de la règle » et une approche « qualification en incertitude », à partir d''un exemple au choix.
3. Construisez le squelette d''une fiche de synthèse (rubriques, sans contenu) que vous utiliserez pour la matière « gouvernance et groupes de sociétés ».
4. Proposez un planning hebdomadaire personnel sur six semaines, en adaptant celui proposé ci-dessus à vos contraintes (travail, stage, autres matières).
5. Citez deux raisons pour lesquelles un même cas pratique d''examen de Master peut mobiliser à la fois le droit des sociétés, le droit des contrats et l''arbitrage.

## Corrigé

1. Gouvernance et groupes de sociétés s''appuie sur le droit des sociétés commerciales OHADA (L3) ; contrats d''affaires et concurrence s''appuie sur le droit des obligations (contrat, L1/L2) et le droit commercial général OHADA (L2) ; arbitrage et MARL s''appuie sur les institutions et les bases de la procédure vues en introduction au droit (L1) ainsi que sur le droit commercial.
2. La récitation de la règle consiste à énoncer une condition ou une définition sans la rattacher aux faits (« l''article prévoit que... »). La qualification en incertitude consiste à confronter des faits ambigus à plusieurs qualifications possibles et à argumenter le choix retenu, par exemple déterminer si un accord entre deux filiales constitue une convention réglementée ou un contrat de droit commun selon la qualité des parties signataires.
3. Exemple de squelette : définition de la notion, conditions d''application, procédure ou formalisme associé, sanctions en cas de non-respect, exemple d''entreprise type, points de vigilance.
4. Le planning doit respecter la logique progressive (sociétés d''abord, puis contrats/concurrence, puis arbitrage, puis entraînement) mais peut être compressé ou étendu selon le temps disponible ; l''essentiel est de conserver une semaine complète d''entraînement en fin de parcours.
5. D''une part, les opérations d''affaires réelles combinent rarement une seule branche du droit : un contrat entre sociétés d''un même groupe touche à la fois à la gouvernance et au droit des contrats. D''autre part, les examens de Master visent à vérifier la capacité à transférer des connaissances d''une matière à l''autre, ce qui est précisément ce que travaille l''étude de cas transversale.', 'texte', 40, true, 10
from public.courses c where c.slug = 'mas-droit-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Master 1 en droit des affaires');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Droit des sociétés approfondi et gouvernance : groupes de sociétés et conventions réglementées', '## Objectifs de la leçon

Cette leçon approfondit le droit des sociétés au-delà du cadre statutaire vu en Licence : elle traite des groupes de sociétés et de la gouvernance, c''est-à-dire des règles qui encadrent le pouvoir au sein d''une société et entre sociétés liées. Deux notions structurent la matière : le contrôle (qui permet de qualifier un ensemble de sociétés comme un groupe) et les conventions réglementées (les contrats passés entre une société et des personnes qui y exercent une influence, qui font l''objet d''un contrôle renforcé pour éviter les conflits d''intérêts).

## La notion de groupe de sociétés

Un groupe de sociétés n''est pas, en droit OHADA, une personne morale unique : chaque société conserve sa personnalité juridique propre, son patrimoine et sa responsabilité. Le groupe est une réalité économique organisée autour d''un lien de contrôle, que le droit encadre plutôt que de créer un sujet de droit nouveau.

Le contrôle est le pouvoir de déterminer en fait les décisions en assemblée générale, que ce pouvoir résulte d''une détention majoritaire du capital, d''un accord entre associés, ou de la capacité à nommer ou révoquer la majorité des dirigeants. On distingue :

- Le contrôle de droit, qui résulte de la détention d''une majorité des droits de vote.
- Le contrôle de fait, qui résulte d''une influence déterminante sans détention majoritaire, par exemple lorsqu''un actionnaire minoritaire dispose en pratique de la majorité dans les assemblées en raison de la dispersion du capital des autres actionnaires.
- Le contrôle conjoint, lorsque plusieurs associés exercent ensemble le pouvoir de décision en vertu d''un accord.

Illustration (cas fictif pour l''exemple) : la société Teranga Industries SA détient 55 % du capital de sa filiale Sahel Logistique SARL. Elle exerce un contrôle de droit. Si elle ne détenait que 30 % du capital, mais que les 70 % restants étaient répartis entre douze actionnaires dispersés n''agissant jamais ensemble, elle pourrait néanmoins exercer un contrôle de fait si elle obtient systématiquement la majorité en assemblée.

## Les conséquences juridiques du contrôle

Le contrôle emporte plusieurs conséquences pratiques qu''il faut savoir repérer dans un cas pratique :

- Comptes consolidés : une société mère qui contrôle des filiales peut devoir établir des comptes consolidés présentant le groupe comme une seule entité économique, sans remettre en cause l''autonomie juridique de chaque société.
- Obligations d''information renforcées entre sociétés liées, notamment lors d''opérations significatives (cessions d''actifs importants, garanties données par une filiale au profit de sa mère).
- Vigilance accrue sur les conventions entre sociétés liées, qui peuvent dissimuler un transfert de valeur au détriment d''une filiale minoritaire (prix de transfert non justifiés économiquement).

## Les conventions réglementées

Une convention réglementée est un contrat conclu entre une société et une personne qui exerce une influence sur elle : un dirigeant, un actionnaire significatif, ou une société avec laquelle ces personnes ont elles-mêmes des liens. L''idée directrice est simple : lorsque la même personne se trouve de part et d''autre d''un contrat, le risque de conflit d''intérêts justifie un contrôle procédural renforcé, sans pour autant interdire la convention, qui peut être parfaitement légitime économiquement.

La logique procédurale, de façon générale, repose sur trois temps :

- L''information préalable des organes compétents (conseil d''administration ou organe équivalent) avant ou dès la conclusion de la convention, lorsque la personne intéressée ne peut prendre seule la décision.
- L''autorisation ou, selon les cas, la ratification par l''organe compétent, la personne intéressée ne participant pas au vote sur sa propre convention.
- L''information de l''assemblée générale des associés, qui peut statuer sur les conventions et, le cas échéant, en tirer les conséquences si elles se révèlent défavorables à la société.

Les conventions dites « courantes », conclues à des conditions normales (c''est-à-dire comparables à celles pratiquées avec des tiers indépendants), échappent en principe à ce formalisme renforcé, car le risque de conflit d''intérêts y est réputé faible. La qualification « courante et à conditions normales » est souvent au cœur des cas pratiques : il s''agit de comparer les conditions du contrat litigieux à celles du marché.

Illustration chiffrée (fictive pour l''exemple) : le directeur général de Sahel Logistique SARL est également propriétaire à titre personnel d''un entrepôt qu''il loue à la société pour 3 000 000 FCFA par mois. Si le prix de marché pour un entrepôt comparable dans la même zone est de 1 800 000 FCFA par mois, l''écart de 1 200 000 FCFA par mois (soit 14 400 000 FCFA sur l''année) constitue un indice fort que la convention n''est pas conclue à des conditions normales, ce qui justifie son traitement comme convention réglementée, avec les conséquences en cas d''absence d''autorisation (responsabilité éventuelle du dirigeant, voire nullité dans certains cas).

## Sanctions en cas de non-respect du formalisme

Les conséquences générales à envisager, selon les circonstances et sans préjudice du texte applicable qu''il faut toujours vérifier, sont les suivantes :

- La responsabilité civile du dirigeant qui a conclu la convention sans l''autorisation requise, s''il en résulte un préjudice pour la société.
- La possibilité, selon la gravité, que la convention soit annulée si elle a causé un préjudice imputable à l''absence d''autorisation.
- Un risque réputationnel et de gouvernance, notamment vis-à-vis des partenaires financiers.

## Cas d''entreprise : groupe Baobab Négoce

La société Baobab Négoce SA, basée à Dakar, contrôle à 70 % sa filiale Baobab Transit SARL, spécialisée dans le transport de marchandises. Le président de Baobab Négoce SA, M. Ndiaye, est également actionnaire à 40 % d''une société tierce, Rapid Fret SARL, qui fournit des prestations de transport sous-traité à Baobab Transit SARL pour un montant annuel de 45 000 000 FCFA. Les tarifs pratiqués par Rapid Fret SARL sont supérieurs de 20 % à ceux du marché constatés chez deux autres sous-traitants comparables.

Analyse : le contrat constitue potentiellement une convention réglementée, car M. Ndiaye, dirigeant de la société mère, a un intérêt personnel significatif (40 %) dans le cocontractant. Le prix de marché théorique est de 45 000 000 ÷ 1,20 = 37 500 000 FCFA, soit un surcoût de 7 500 000 FCFA, ce qui écarte la qualification de convention courante. L''autorisation préalable de l''organe compétent aurait dû être respectée ; à défaut, la responsabilité de M. Ndiaye pourrait être recherchée pour ce préjudice.

## Points clés à retenir

- Le groupe n''a pas de personnalité juridique propre ; chaque société reste autonome, mais le contrôle emporte des obligations spécifiques.
- Le contrôle peut être de droit, de fait, ou conjoint ; il se caractérise en fait, pas seulement en pourcentage de capital.
- Une convention réglementée se définit par la qualité des parties (lien d''influence), pas par son objet.
- Les conventions courantes à conditions normales échappent au formalisme renforcé ; la comparaison au prix de marché est l''outil clé.
- Vérifiez toujours le texte en vigueur pour les règles précises de majorité, de délai et de sanction : les mécanismes exposés ici sont généraux et pédagogiques.

## Exercices pratiques

1. Définissez le contrôle de droit et le contrôle de fait, et donnez un exemple distinct pour chacun.
2. Pourquoi une convention « courante et à conditions normales » échappe-t-elle en principe au formalisme renforcé des conventions réglementées ?
3. Un administrateur d''une société vend à celle-ci un véhicule professionnel à un prix identique à celui pratiqué par un concessionnaire pour un véhicule comparable. Cette convention doit-elle être qualifiée de réglementée ? Justifiez.
4. Cas pratique : la société Fouta Agro SA contrôle à 60 % sa filiale Fouta Semences SARL. Le directeur général de Fouta Agro SA, actionnaire à 25 % d''une société de transport Express Nord SARL, fait conclure par Fouta Semences SARL un contrat de transport annuel de 30 000 000 FCFA avec Express Nord SARL, alors que le prix de marché pour une prestation comparable serait de 24 000 000 FCFA. Qualifiez la situation et chiffrez l''écart par rapport au marché.
5. Quelles sont, de façon générale, les trois étapes procédurales associées au contrôle d''une convention réglementée ?
6. En reprenant le cas Baobab Négoce ci-dessus, indiquez quel organe aurait dû autoriser préalablement le contrat avec Rapid Fret SARL.

## Corrigé

1. Le contrôle de droit résulte de la majorité des droits de vote (ex. 55 % du capital). Le contrôle de fait résulte d''une influence déterminante sans majorité, par exemple un actionnaire à 30 % obtenant systématiquement la majorité en assemblée du fait de la dispersion du capital restant.
2. Parce que le risque de conflit d''intérêts est réputé faible lorsque les conditions sont identiques à celles négociées avec un tiers indépendant : l''intérêt personnel ne se traduit alors par aucun avantage anormal.
3. Non, en principe : si le prix est identique au marché, la convention est courante et à conditions normales, même si l''administrateur a un intérêt personnel dans l''opération.
4. L''écart de prix est de 30 000 000 − 24 000 000 = 6 000 000 FCFA, soit 25 % au-dessus du marché. Le lien (directeur général actionnaire à 25 %) et cet écart écartent la qualification de convention courante : autorisation préalable requise.
5. Information préalable de l''organe compétent, autorisation sans participation au vote de l''intéressé, puis information de l''assemblée générale.
6. Le conseil d''administration de Baobab Transit SARL aurait dû autoriser le contrat. À défaut, et si le préjudice (7 500 000 FCFA) est démontré, la responsabilité de M. Ndiaye pourrait être engagée.', 'texte', 45, false, 20
from public.courses c where c.slug = 'mas-droit-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Droit des sociétés approfondi et gouvernance : groupes de sociétés et conventions réglementées');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Droit des contrats d''affaires et de la concurrence : clauses complexes et pratiques anticoncurrentielles', '## Objectifs de la leçon

Cette leçon traite des contrats d''affaires sophistiqués, c''est-à-dire des contrats qui organisent une relation économique durable entre entreprises (distribution, approvisionnement, partenariat industriel, cession de participations) et qui comportent des clauses complexes dont la rédaction et l''interprétation exigent une maîtrise fine. Elle introduit ensuite les principes généraux du droit de la concurrence applicables aux pratiques anticoncurrentielles, sans entrer dans le détail procédural d''une autorité de concurrence précise.

## Les clauses complexes des contrats d''affaires

### La clause d''exclusivité

La clause d''exclusivité engage une partie (souvent un fournisseur ou un distributeur) à ne pas contracter avec des concurrents de son partenaire, en contrepartie d''avantages (garantie de débouchés, investissement commercial). Elle doit être distinguée selon qu''elle est unilatérale (seule une partie est liée) ou réciproque. Sa validité dépend généralement de sa durée, de son champ géographique et de la proportionnalité entre la contrainte imposée et la contrepartie obtenue : une exclusivité trop large, trop longue, ou sans contrepartie réelle, peut être requalifiée ou jugée abusive, en particulier si elle a pour effet de restreindre significativement la concurrence sur un marché.

### La clause de non-concurrence

Elle interdit à une partie (souvent le cédant d''un fonds de commerce ou d''actions, ou un ancien partenaire) d''exercer une activité concurrente pendant une durée et sur un territoire déterminés après la fin du contrat. Pour être valable, elle doit généralement être limitée dans le temps, dans l''espace, et proportionnée à l''intérêt légitime qu''elle protège (éviter que le cédant ne récupère immédiatement la clientèle qu''il vient de céder, par exemple). Une clause de non-concurrence de dix ans sur l''ensemble du territoire national, sans lien avec l''activité réellement cédée, serait un exemple d''excès susceptible d''être sanctionné.

### La clause d''earn-out

Fréquente dans les cessions d''entreprises, la clause d''earn-out prévoit qu''une partie du prix de cession n''est payée qu''après la réalisation d''objectifs futurs (chiffre d''affaires, résultat) sur une période définie après la cession. Elle permet de concilier les attentes d''un cédant optimiste sur l''avenir de son entreprise et la prudence d''un acquéreur qui veut limiter son risque.

Illustration chiffrée (fictive pour l''exemple) : la cession des actions de Teranga Agro-Transformation SARL est fixée à un prix de base de 200 000 000 FCFA, complété par un earn-out égal à 10 % du chiffre d''affaires additionnel réalisé au-delà de 150 000 000 FCFA sur les deux exercices suivant la cession, plafonné à 40 000 000 FCFA. Si le chiffre d''affaires cumulé des deux exercices atteint 230 000 000 FCFA, l''earn-out théorique serait de 10 % × (230 000 000 − 150 000 000) = 10 % × 80 000 000 = 8 000 000 FCFA, bien en-deçà du plafond ; le prix total payé serait donc de 208 000 000 FCFA.

### La clause de hardship (imprévision)

Elle permet à une partie de demander une renégociation du contrat lorsque survient un changement de circonstances imprévisible lors de la conclusion, qui rend l''exécution excessivement onéreuse, sans pour autant rendre l''exécution impossible (ce qui relèverait de la force majeure). La clause de hardship organise par avance la procédure de renégociation (délai, méthode, recours à un tiers en cas d''échec), évitant que les parties ne restent bloquées sur l''alternative brutale entre exécuter à perte ou rompre le contrat.

Illustration : un contrat d''approvisionnement agricole fixe un prix pour trois ans. Une sécheresse exceptionnelle double le coût d''achat pour le fournisseur. Avec une clause de hardship, il peut demander une renégociation ; sans elle, il doit en principe exécuter aux conditions initiales, sauf à démontrer une impossibilité (force majeure), plus difficile à établir qu''une simple aggravation du coût.

### La clause limitative de responsabilité

Elle plafonne, par avance, le montant des dommages-intérêts dus en cas de manquement contractuel, souvent en pourcentage du prix du contrat. Valable entre professionnels, elle perd son effet en cas de faute particulièrement grave, et ne peut vider l''obligation essentielle de toute portée réelle.

## Principes généraux du droit de la concurrence

Le droit de la concurrence vise à protéger le fonctionnement concurrentiel des marchés, dans l''intérêt des entreprises et des consommateurs. En Master 1, il convient de connaître les grandes catégories de pratiques anticoncurrentielles, sans entrer dans le détail procédural d''une autorité déterminée (national ou communautaire), qui relève d''un enseignement spécialisé.

- Les ententes anticoncurrentielles : accords ou pratiques concertées entre entreprises concurrentes qui ont pour objet ou pour effet de restreindre la concurrence, par exemple une fixation concertée des prix, une répartition des marchés ou des clients, ou une limitation concertée de la production.
- L''abus de position dominante : le fait, pour une entreprise qui détient une position dominante sur un marché (c''est-à-dire la capacité de s''y comporter indépendamment de ses concurrents et de ses clients dans une mesure appréciable), d''exploiter cette position de façon abusive, par exemple en imposant des prix excessifs, en pratiquant des prix d''éviction destinés à exclure un concurrent, ou en imposant des conditions commerciales discriminatoires sans justification objective.
- Les pratiques restrictives dans les relations contractuelles verticales (entre un fournisseur et un distributeur, par exemple), qui peuvent être anticoncurrentielles lorsqu''elles ont pour effet de cloisonner les marchés de façon excessive, au-delà de ce qui est nécessaire pour organiser légitimement un réseau de distribution.

Le lien avec les clauses complexes étudiées plus haut est direct : une clause d''exclusivité très large entre un fournisseur dominant et l''ensemble de ses distributeurs peut, selon son ampleur et ses effets, être analysée comme une pratique restrictive de concurrence, alors que la même clause entre deux acteurs de taille modeste, sur un marché très concurrentiel, pose beaucoup moins de difficulté.

## Cas d''entreprise : réseau de distribution Sahel Boissons

Sahel Boissons SA, producteur de boissons basé à Thiès, conclut avec quinze distributeurs régionaux des contrats comportant une clause d''exclusivité réciproque de dix ans, interdisant à chaque distributeur de vendre des boissons concurrentes et à Sahel Boissons SA de vendre à d''autres distributeurs dans la même zone. Sahel Boissons SA détient 65 % du marché national des boissons gazeuses.

Analyse : la durée de dix ans et la position de Sahel Boissons SA sur le marché (65 %, ce qui peut constituer une position dominante selon les critères du marché pertinent) sont des facteurs de risque. Une clause d''exclusivité de cette ampleur, appliquée à l''ensemble d''un réseau de distribution par une entreprise en position dominante, peut avoir pour effet de verrouiller durablement l''accès au marché pour des concurrents potentiels, ce qui est caractéristique d''une pratique susceptible d''être qualifiée d''abus si elle ne répond à aucune justification objective suffisante (investissements spécifiques des distributeurs à amortir, par exemple). Une analyse rigoureuse comparerait la durée et l''ampleur de l''exclusivité aux standards du secteur et à la justification économique avancée par Sahel Boissons SA.

## Points clés à retenir

- Chaque clause complexe (exclusivité, non-concurrence, earn-out, hardship, limitation de responsabilité) répond à une logique économique propre qu''il faut identifier avant de juger de sa validité.
- La validité des clauses restrictives de liberté (exclusivité, non-concurrence) dépend généralement de leur proportionnalité : durée, champ géographique, contrepartie.
- Les pratiques anticoncurrentielles se répartissent en ententes, abus de position dominante, et pratiques restrictives verticales ; une même clause contractuelle peut, selon son contexte et son ampleur, basculer d''une clause licite à une pratique anticoncurrentielle.
- Aucun seuil précis de part de marché ou de durée maximale ne doit être mémorisé comme règle absolue sans vérification du texte en vigueur ; ce cours donne la méthode d''analyse, pas des seuils officiels.

## Exercices pratiques

1. Distinguez la clause d''exclusivité et la clause de non-concurrence par leur objet et par leur moment d''application dans la vie du contrat.
2. Expliquez l''intérêt économique d''une clause d''earn-out pour un acquéreur et pour un cédant, respectivement.
3. Un contrat d''approvisionnement de cinq ans à prix fixe ne comporte aucune clause de hardship. Un choc exogène fait tripler le coût de la matière première pour le fournisseur. Quelles sont ses options juridiques, en principe ?
4. Cas pratique chiffré : la cession des parts de Casamance Pêche SARL est fixée à 90 000 000 FCFA, avec un earn-out de 15 % du chiffre d''affaires additionnel au-delà de 60 000 000 FCFA sur l''exercice suivant, plafonné à 20 000 000 FCFA. Le chiffre d''affaires de l''exercice suivant atteint 95 000 000 FCFA. Calculez le prix total payé.
5. Qu''est-ce qui distingue une entente anticoncurrentielle d''un abus de position dominante quant au nombre d''entreprises impliquées ?
6. Pourquoi une clause d''exclusivité identique peut-elle être licite entre deux petites entreprises et poser un problème de concurrence lorsqu''elle est imposée par une entreprise en position dominante ?

## Corrigé

1. La clause d''exclusivité organise l''exécution du contrat (interdiction de contracter avec des concurrents pendant la durée du contrat), alors que la clause de non-concurrence s''applique en principe après la fin du contrat, pour protéger un intérêt légitime (clientèle cédée, savoir-faire) une fois la relation terminée.
2. Pour l''acquéreur, l''earn-out limite le risque : il ne paie la part variable que si les performances futures confirment la valeur de l''entreprise. Pour le cédant, elle permet de capter une partie de la valeur future qu''il estime probable, sans l''imposer intégralement à l''acquéreur dès la cession.
3. En principe, sans clause de hardship, le fournisseur reste tenu d''exécuter le contrat aux conditions initiales fixées, l''aggravation du coût n''étant pas, en elle-même, un cas de force majeure (qui suppose une impossibilité d''exécuter, pas seulement une difficulté économique). Il pourrait tenter une négociation amiable, mais n''a pas de droit automatique à une révision du prix en l''absence de clause ou de disposition légale spécifique applicable.
4. L''earn-out théorique est de 15 % × (95 000 000 − 60 000 000) = 15 % × 35 000 000 = 5 250 000 FCFA, inférieur au plafond de 20 000 000 FCFA. Le prix total payé est donc de 90 000 000 + 5 250 000 = 95 250 000 FCFA.
5. Une entente suppose un accord ou une pratique concertée entre au moins deux entreprises (généralement concurrentes) ; un abus de position dominante est le fait d''une seule entreprise qui détient individuellement (ou parfois collectivement) une position dominante sur un marché.
6. Parce que l''analyse concurrentielle s''intéresse à l''effet réel sur le marché : une exclusivité entre deux petits acteurs a un effet négligeable, alors que la même clause imposée par un acteur dominant à l''ensemble de son réseau peut verrouiller l''accès au marché pour des concurrents.', 'texte', 45, false, 30
from public.courses c where c.slug = 'mas-droit-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Droit des contrats d''affaires et de la concurrence : clauses complexes et pratiques anticoncurrentielles');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Arbitrage et modes alternatifs de résolution des litiges : clause compromissoire et rôle de la CCJA', '## Objectifs de la leçon

Cette leçon présente l''arbitrage et les modes alternatifs de résolution des litiges (MARL) dans les relations d''affaires, avec une attention particulière à la logique de la clause compromissoire et au rôle de la Cour commune de justice et d''arbitrage (CCJA) de l''OHADA dans le paysage régional. L''objectif du Master 1 est de comprendre la logique d''ensemble et les avantages comparés de ces modes de résolution des litiges, non de maîtriser le détail procédural fin, qui relève d''un enseignement spécialisé d''arbitrage.

## Pourquoi recourir à l''arbitrage et aux MARL dans les affaires

Les entreprises qui contractent, en particulier dans un cadre régional ou international, préfèrent souvent éviter la juridiction étatique de l''une ou l''autre des parties, pour plusieurs raisons :

- La neutralité : aucune des parties ne souhaite être jugée devant les tribunaux du pays de son cocontractant.
- La confidentialité : l''arbitrage se déroule, en principe, de façon confidentielle, contrairement à une procédure judiciaire généralement publique.
- La spécialisation : les parties choisissent des arbitres ayant une expertise technique ou sectorielle précise.
- La rapidité relative et la flexibilité procédurale.
- L''exécution transfrontalière généralement facilitée des sentences arbitrales, grâce à des conventions internationales de reconnaissance et d''exécution.

Les modes alternatifs de résolution des litiges comprennent, au-delà de l''arbitrage proprement dit :

- La médiation : un tiers neutre (le médiateur) aide les parties à trouver elles-mêmes une solution amiable, sans trancher le litige à leur place.
- La conciliation : proche de la médiation, le conciliateur peut être plus actif dans la proposition de solutions, selon les traditions et les textes applicables.
- L''arbitrage : à la différence de la médiation et de la conciliation, l''arbitre tranche le litige par une décision (la sentence arbitrale), qui a, en principe, une force obligatoire comparable à un jugement, mais rendue par un tribunal privé choisi par les parties plutôt que par une juridiction étatique.

## La clause compromissoire

La clause compromissoire est la clause, insérée dans un contrat avant la survenance d''un litige, par laquelle les parties conviennent de soumettre à l''arbitrage les différends qui pourraient naître de ce contrat. Elle se distingue du compromis d''arbitrage, qui est l''accord conclu après la naissance du litige pour le soumettre à l''arbitrage.

Une clause compromissoire bien rédigée précise généralement :

- Le siège de l''arbitrage (le lieu juridique de référence pour la procédure, qui n''est pas nécessairement le lieu où se tiennent les audiences).
- Le règlement d''arbitrage applicable (celui d''une institution d''arbitrage déterminée, ou un arbitrage ad hoc sans institution).
- La langue de la procédure.
- Le nombre d''arbitres (souvent un ou trois) et la méthode de leur désignation.
- Le droit applicable au fond du litige, qui peut être distinct de la loi du siège de l''arbitrage.

L''absence de précision sur ces points n''empêche pas nécessairement l''arbitrage, les règlements institutionnels prévoyant des mécanismes de désignation par défaut, mais elle crée un risque de contestation et de retard.

L''effet essentiel de la clause compromissoire est de dessaisir, en principe, les juridictions étatiques du litige : si une partie saisit malgré tout un tribunal étatique en violation de la clause, l''autre partie peut en principe soulever l''incompétence de ce tribunal au profit de l''arbitrage convenu. On parle de l''effet négatif de la clause (elle écarte la compétence étatique) et de son effet positif (elle fonde la compétence du tribunal arbitral).

## La CCJA de l''OHADA : rôle en général

La Cour commune de justice et d''arbitrage (CCJA) est l''organe juridictionnel commun aux États membres de l''OHADA. Elle exerce, en matière d''arbitrage, un double rôle qu''il convient de connaître en général, sans entrer dans le détail procédural fin :

- Un rôle d''appui à l''arbitrage institutionnel : la CCJA peut administrer des arbitrages selon son propre règlement, en particulier pour les litiges relatifs aux contrats exécutés ou à exécuter dans l''espace OHADA, lorsque les parties ont choisi ce cadre.
- Un rôle juridictionnel vis-à-vis des sentences arbitrales rendues sous son égide, notamment pour leur reconnaissance et leur exécution dans l''espace OHADA, ainsi qu''un contrôle limité de leur régularité, sans réexaminer le fond du litige déjà tranché par les arbitres.

Au-delà de l''arbitrage, la CCJA joue également un rôle de juridiction de cassation commune pour l''interprétation et l''application des actes uniformes OHADA (droit des sociétés, droit commercial général, sûretés, etc.), ce qui favorise une interprétation harmonisée du droit des affaires dans l''ensemble de la zone, limitant les divergences entre juridictions nationales.

Pour un cas pratique de Master 1, il suffit en général de savoir identifier qu''un litige entrant dans le champ de l''OHADA, assorti d''une clause d''arbitrage faisant référence à la CCJA ou à son règlement, peut être porté devant cette institution, sans qu''il soit demandé de détailler précisément les délais ou les voies de recours internes à la procédure, qui relèvent d''un enseignement spécialisé.

## Choisir entre arbitrage, médiation et juridiction étatique

Le choix du mode de résolution des litiges dépend de plusieurs facteurs que l''on doit savoir mettre en balance dans un cas pratique :

- La nature de la relation : une relation d''affaires que les parties souhaitent préserver à long terme s''oriente plutôt vers la médiation, plus propice à une solution négociée que l''arbitrage, procédure contradictoire qui tranche en faveur d''une partie.
- Le montant et la complexité du litige : un litige technique de montant élevé justifie souvent le coût et la durée d''un arbitrage avec des arbitres spécialisés, alors qu''un litige de faible montant peut être disproportionné par rapport au coût d''un arbitrage.
- Le besoin d''exécution transfrontalière : lorsque les parties ou leurs actifs sont situés dans des pays différents, l''arbitrage offre souvent de meilleures perspectives d''exécution qu''un jugement étatique.
- Le besoin de confidentialité : particulièrement important lorsque le litige touche à des secrets d''affaires ou pourrait nuire à la réputation d''une partie si rendu public.

## Cas d''entreprise : litige Delta Cacao

La société Delta Cacao SA, basée en Côte d''Ivoire, a conclu avec Sahel Négoce SA, basée au Sénégal, un contrat de fourniture de fèves de cacao sur trois ans, comportant une clause compromissoire désignant un arbitrage à trois arbitres, sous un règlement d''arbitrage faisant référence à la CCJA, siège à Abidjan, droit applicable au fond : droit ivoirien. Un désaccord survient sur la qualité des livraisons de la deuxième année, Sahel Négoce SA estimant avoir subi un préjudice de 60 000 000 FCFA du fait de fèves non conformes.

Analyse : la clause compromissoire dessaisit en principe les juridictions étatiques sénégalaises et ivoiriennes du litige ; Sahel Négoce SA ne pourrait donc pas saisir directement un tribunal sénégalais sans que Delta Cacao SA ne puisse soulever l''incompétence de ce tribunal au profit de l''arbitrage convenu. Le litige relève du champ de l''OHADA (contrat de fourniture entre entreprises ayant une activité dans l''espace OHADA) et peut être porté devant un arbitrage administré selon le règlement visé, le siège fixé à Abidjan déterminant le cadre juridique de référence pour la procédure, sans préjudice du droit ivoirien choisi pour trancher le fond du différend sur la conformité des livraisons.

## Points clés à retenir

- L''arbitrage tranche le litige par une sentence obligatoire ; la médiation et la conciliation aident les parties à trouver elles-mêmes une solution, sans l''imposer.
- La clause compromissoire, insérée avant le litige, a pour effet d''écarter la compétence des juridictions étatiques au profit de l''arbitrage convenu.
- Une clause compromissoire bien rédigée précise le siège, le règlement applicable, la langue, le nombre d''arbitres et le droit applicable au fond.
- La CCJA de l''OHADA joue un rôle d''appui à l''arbitrage institutionnel et un rôle juridictionnel de reconnaissance et d''exécution des sentences, ainsi qu''un rôle de cassation commune pour le droit uniforme OHADA ; les détails procéduraux fins ne sont pas exigés en Master 1 et relèvent d''un enseignement spécialisé.
- Le choix entre arbitrage, médiation et juridiction étatique dépend de la nature de la relation, du montant du litige, du besoin d''exécution transfrontalière et du besoin de confidentialité.

## Exercices pratiques

1. Distinguez la clause compromissoire du compromis d''arbitrage par leur moment de conclusion.
2. Citez trois éléments qu''une clause compromissoire bien rédigée devrait préciser.
3. Expliquez la différence entre l''effet négatif et l''effet positif de la clause compromissoire.
4. Pourquoi une entreprise souhaitant préserver une relation commerciale durable avec son partenaire pourrait-elle préférer la médiation à l''arbitrage en cas de différend ?
5. Dans le cas Delta Cacao ci-dessus, le tribunal de commerce de Dakar peut-il, en principe, trancher directement le litige si Sahel Négoce SA le saisit malgré la clause compromissoire ? Justifiez.
6. Citez deux rôles généraux de la CCJA de l''OHADA en matière d''arbitrage.

## Corrigé

1. La clause compromissoire est conclue avant la naissance du litige, au sein du contrat initial, pour les différends futurs et éventuels ; le compromis d''arbitrage est conclu après la naissance du litige, pour ce litige précisément identifié.
2. Par exemple : le siège de l''arbitrage, le règlement d''arbitrage applicable, et le nombre d''arbitres (on pouvait aussi citer la langue de la procédure ou le droit applicable au fond).
3. L''effet négatif écarte la compétence des juridictions étatiques pour le litige couvert par la clause ; l''effet positif fonde, à l''inverse, la compétence du tribunal arbitral pour statuer sur ce même litige.
4. Parce que la médiation vise une solution négociée et consensuelle qui préserve la relation entre les parties, alors que l''arbitrage, comme une procédure judiciaire, tranche en faveur d''une partie contre l''autre, ce qui peut davantage détériorer la relation commerciale future.
5. En principe non, ou plus précisément le tribunal de commerce de Dakar devrait se déclarer incompétent si Delta Cacao SA soulève l''exception d''incompétence fondée sur la clause compromissoire, puisque celle-ci a dessaisi les juridictions étatiques du litige au profit de l''arbitrage convenu.
6. Un rôle d''appui à l''arbitrage institutionnel (administration d''arbitrages selon son propre règlement) et un rôle juridictionnel de reconnaissance et d''exécution des sentences arbitrales rendues sous son égide (on pouvait aussi citer son rôle de cassation commune pour le droit uniforme OHADA).', 'texte', 45, false, 40
from public.courses c where c.slug = 'mas-droit-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Arbitrage et modes alternatifs de résolution des litiges : clause compromissoire et rôle de la CCJA');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Master 1 en droit des affaires (entraînement, corrigé détaillé)', '## Sujet type d''examen de Master 1 en droit des affaires (entraînement non officiel, barème indicatif)

Durée indicative : 3 heures. Ce sujet est un entraînement pédagogique, non un sujet officiel ; le barème proposé est indicatif et peut être adapté par votre enseignant.

### Énoncé

La société Jolof Industries SA, basée à Dakar, est la société mère d''un groupe comprenant deux filiales : Jolof Emballages SARL (détenue à 80 %) et Jolof Distribution SARL (détenue à 45 %, les 55 % restants étant détenus par neuf actionnaires minoritaires n''agissant jamais ensemble, ce qui permet en pratique à Jolof Industries SA d''obtenir systématiquement la majorité en assemblée générale).

Premier fait : le directeur général de Jolof Industries SA, M. Faye, est également actionnaire majoritaire (70 %) d''une société de transport, Rapid Cargo SARL, qui fournit à Jolof Distribution SARL l''intégralité de ses prestations de transport pour un montant annuel de 54 000 000 FCFA. Le prix de marché pour des prestations comparables, selon deux devis obtenus auprès de transporteurs concurrents, serait de 42 000 000 FCFA par an. Le contrat a été conclu par le directeur général de Jolof Distribution SARL sans consultation préalable du conseil d''administration.

Deuxième fait : Jolof Emballages SARL, qui détient 58 % du marché régional de l''emballage plastique alimentaire, impose à l''ensemble de ses douze distributeurs un contrat d''exclusivité réciproque de huit ans, leur interdisant de distribuer des emballages concurrents, sans contrepartie financière spécifique autre que les conditions commerciales habituelles.

Troisième fait : le contrat entre Jolof Emballages SARL et l''un de ses distributeurs, Teranga Pack SARL, comporte une clause compromissoire désignant un arbitrage à arbitre unique, siège à Dakar, règlement de la CCJA, droit sénégalais applicable au fond. Un litige survient sur une rupture anticipée du contrat par Jolof Emballages SARL, Teranga Pack SARL réclamant 15 000 000 FCFA de dommages-intérêts. Jolof Emballages SARL saisit directement le tribunal de commerce de Dakar sans mentionner la clause compromissoire, espérant une procédure plus rapide.

### Questions

1. (6 points) Qualifiez le lien de contrôle entre Jolof Industries SA et chacune de ses deux filiales, en précisant le type de contrôle en cause pour Jolof Distribution SARL.
2. (8 points) Analysez le premier fait : le contrat entre Jolof Distribution SARL et Rapid Cargo SARL constitue-t-il une convention réglementée ? Chiffrez l''écart par rapport au prix de marché et indiquez les conséquences possibles de l''absence de consultation du conseil d''administration.
3. (8 points) Analysez le deuxième fait au regard des principes généraux du droit de la concurrence : la clause d''exclusivité réciproque de huit ans imposée par Jolof Emballages SARL pose-t-elle un risque de qualification comme pratique anticoncurrentielle ? Justifiez en identifiant les éléments pertinents.
4. (8 points) Analysez le troisième fait : la saisine du tribunal de commerce de Dakar par Jolof Emballages SARL est-elle conforme à la clause compromissoire ? Quelle réaction procédurale Teranga Pack SARL pourrait-elle opposer, et quel rôle la CCJA pourrait-elle jouer dans la suite du dossier ?

### Corrigé détaillé

1. Jolof Industries SA exerce un contrôle de droit sur Jolof Emballages SARL (détention de 80 % du capital, majorité évidente des droits de vote). Sur Jolof Distribution SARL, elle détient seulement 45 % du capital, ce qui est minoritaire en droit, mais la dispersion des 55 % restants entre neuf actionnaires n''agissant jamais ensemble lui permet d''obtenir systématiquement la majorité en assemblée : il s''agit donc d''un contrôle de fait, et non d''un contrôle de droit, bien que les conséquences pratiques du contrôle (vigilance sur les conventions, information renforcée) soient similaires.

2. Le contrat entre Jolof Distribution SARL et Rapid Cargo SARL présente les caractéristiques d''une convention réglementée : M. Faye, directeur général de la société mère Jolof Industries SA, est également actionnaire majoritaire (70 %) du cocontractant Rapid Cargo SARL, ce qui crée un lien d''influence pertinent même s''il n''est pas formellement dirigeant de Jolof Distribution SARL (une analyse complète devrait vérifier s''il exerce également une fonction ou une influence directe sur cette filiale, ce qui est cohérent avec son rôle de dirigeant du groupe). L''écart de prix est de 54 000 000 − 42 000 000 = 12 000 000 FCFA par an, soit environ 28,6 % au-dessus du marché (12 000 000 / 42 000 000 ≈ 0,286), ce qui écarte la qualification de convention courante à conditions normales. L''absence de consultation préalable du conseil d''administration de Jolof Distribution SARL constitue un manquement au formalisme applicable aux conventions réglementées ; les conséquences possibles sont, selon les circonstances, la responsabilité civile du dirigeant ayant conclu le contrat pour le préjudice correspondant au surcoût (12 000 000 FCFA par an), et un risque de contestation de la convention par les actionnaires minoritaires de Jolof Distribution SARL.

3. La clause d''exclusivité réciproque de huit ans, imposée par Jolof Emballages SARL à l''ensemble de son réseau de douze distributeurs, pose un risque réel de qualification anticoncurrentielle pour plusieurs raisons convergentes : premièrement, Jolof Emballages SARL détient 58 % du marché régional de l''emballage plastique alimentaire, ce qui peut constituer une position dominante selon la définition du marché pertinent ; deuxièmement, la durée de huit ans est longue et l''exclusivité est appliquée systématiquement à l''ensemble du réseau, ce qui peut avoir un effet cumulatif de verrouillage du marché pour les concurrents de Jolof Emballages SARL qui chercheraient à accéder aux mêmes distributeurs ; troisièmement, l''absence de contrepartie financière spécifique (au-delà des conditions commerciales habituelles) affaiblit la justification économique de cette contrainte. L''ensemble de ces éléments (position dominante probable, durée longue, absence de contrepartie spécifique, effet cumulatif sur l''ensemble du réseau) est caractéristique d''une pratique susceptible d''être analysée comme un abus de position dominante, sous réserve d''une analyse plus fine du marché pertinent et des justifications économiques que pourrait avancer Jolof Emballages SARL (investissements spécifiques à amortir, par exemple).

4. La saisine directe du tribunal de commerce de Dakar par Jolof Emballages SARL n''est pas conforme à la clause compromissoire, qui a pour effet de dessaisir en principe les juridictions étatiques du litige couvert par le contrat. Teranga Pack SARL peut soulever l''exception d''incompétence du tribunal de commerce de Dakar en se fondant sur la clause compromissoire, ce qui devrait conduire le tribunal à se déclarer incompétent au profit de l''arbitrage convenu (arbitre unique, règlement CCJA, siège Dakar, droit sénégalais au fond). Le litige, relatif à un contrat de distribution exécuté dans l''espace OHADA, pourrait ensuite être porté devant un arbitrage administré selon le règlement de la CCJA, qui jouerait son rôle d''appui institutionnel à la procédure arbitrale, puis, le cas échéant, un rôle de reconnaissance et d''exécution de la sentence arbitrale qui serait rendue sur la demande de dommages-intérêts de 15 000 000 FCFA formulée par Teranga Pack SARL.

## Exercices pratiques (questions complémentaires)

1. Dans le sujet ci-dessus, si Jolof Industries SA ne détenait que 20 % de Jolof Distribution SARL, sans lien particulier avec les autres actionnaires, la qualification de contrôle de fait serait-elle encore pertinente ? Justifiez.
2. Proposez une contrepartie financière spécifique que Jolof Emballages SARL pourrait négocier avec ses distributeurs pour renforcer la justification économique de la clause d''exclusivité, tout en réduisant le risque concurrentiel.
3. Si le conseil d''administration de Jolof Distribution SARL avait autorisé préalablement le contrat avec Rapid Cargo SARL, en toute connaissance de l''écart de prix constaté, la qualification de convention réglementée changerait-elle les conséquences juridiques ? Expliquez.
4. Si la clause compromissoire du troisième fait avait désigné un arbitrage ad hoc (sans institution), quel aurait été l''impact sur l''intervention éventuelle de la CCJA ?
5. Résumez, en cinq lignes, le fil conducteur transversal reliant les trois faits du sujet (gouvernance de groupe, concurrence, résolution des litiges) dans la gestion des risques juridiques d''un groupe de sociétés.

## Corrigé

1. La qualification de contrôle de fait dépendrait de la réalité du pouvoir de décision en assemblée, pas seulement du pourcentage détenu : à 20 % sans lien particulier avec les autres actionnaires (qui pourraient, par exemple, agir de façon coordonnée ou être eux-mêmes majoritaires de fait), il serait plus difficile de démontrer que Jolof Industries SA obtient systématiquement la majorité ; une analyse des résultats effectifs des assemblées précédentes serait nécessaire pour trancher, et en l''absence d''une telle démonstration, la qualification de contrôle ne serait pas retenue.
2. Par exemple, un financement ou une subvention des investissements commerciaux spécifiques des distributeurs (présentoirs, formation, garantie de volumes minimums d''achat par Jolof Emballages SARL), qui constituerait une contrepartie réelle et proportionnée à la contrainte d''exclusivité, renforçant sa justification économique et réduisant le risque de qualification abusive.
3. L''autorisation préalable par le conseil d''administration ne change pas la qualification de convention réglementée (qui dépend de la qualité des parties, pas du respect de la procédure), mais elle change les conséquences pratiques : le respect du formalisme réduit significativement le risque de responsabilité du dirigeant ayant conclu le contrat, car la décision a été prise collectivement, en connaissance de l''écart de prix, par l''organe compétent, même si les actionnaires minoritaires pourraient encore contester l''opportunité économique de la décision par d''autres voies.
4. Un arbitrage ad hoc, sans institution, ne ferait en principe pas intervenir la CCJA dans l''administration de la procédure elle-même (désignation des arbitres selon le règlement institutionnel, par exemple) ; toutefois, la CCJA pourrait encore intervenir en aval pour la reconnaissance et l''exécution de la sentence arbitrale dans l''espace OHADA, ce rôle juridictionnel n''étant pas conditionné au caractère institutionnel ou ad hoc de l''arbitrage initial.
5. Les trois faits illustrent qu''un groupe de sociétés doit gérer simultanément plusieurs familles de risques juridiques liés à ses choix d''organisation : les conflits d''intérêts internes entre dirigeants et sociétés liées (gouvernance), les effets externes de sa puissance économique sur le marché (concurrence), et la sécurisation contractuelle du règlement des différends avec ses partenaires (arbitrage). Une gestion rigoureuse de ces trois dimensions, en amont de la signature des contrats plutôt qu''au moment du litige, réduit fortement l''exposition juridique et financière du groupe.', 'texte', 50, false, 50
from public.courses c where c.slug = 'mas-droit-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Master 1 en droit des affaires (entraînement, corrigé détaillé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Droit des sociétés approfondi et gouvernance', '## Fiche du cours vidéo

Durée : 1h30. Objectif : permettre à l''étudiant de maîtriser la notion de contrôle entre sociétés et le régime des conventions réglementées, en étant capable de qualifier une situation d''entreprise complexe et d''en tirer les conséquences pratiques. Matériel recommandé : tableau ou diaporama avec un organigramme de groupe vierge à compléter, calculatrice pour les exemples chiffrés. Prérequis : droit des sociétés commerciales OHADA (notions de capital, d''organes sociaux, d''assemblée générale) vu en Licence 3.

## Déroulé minuté

## 00:00 – 05:00 · Introduction et enjeux

Bonjour à toutes et à tous. Dans cette séance, nous allons travailler une notion centrale du droit des sociétés approfondi : la gouvernance des groupes, à travers deux piliers, le contrôle et les conventions réglementées. Pourquoi cette matière est-elle si importante en pratique ? Parce qu''une très grande partie des grandes entreprises africaines fonctionnent aujourd''hui sous forme de groupes : une société holding qui détient des participations dans plusieurs filiales, parfois dans des secteurs différents. Cette organisation présente des avantages économiques réels — mutualisation des ressources, diversification des risques, optimisation de la gestion — mais elle crée aussi des risques juridiques spécifiques, en particulier le risque que les dirigeants ou les actionnaires significatifs utilisent leur position pour favoriser une société du groupe au détriment d''une autre, ou au détriment des actionnaires minoritaires. C''est ce risque que le droit des conventions réglementées cherche à encadrer. Gardez cette idée directrice en tête tout au long de la séance : le droit ne cherche pas à empêcher les relations entre sociétés liées, qui sont souvent légitimes et nécessaires, mais à s''assurer qu''elles ne dissimulent pas un transfert de valeur injustifié.

## 05:00 – 15:00 · La notion de contrôle

Commençons par la notion de contrôle, qui est le fondement même de la notion de groupe. Je vous rappelle qu''en droit OHADA, le groupe n''est pas un sujet de droit : chaque société du groupe garde sa personnalité juridique propre. Ce qui unit les sociétés du groupe, c''est un lien de fait et de droit : le contrôle. On distingue trois formes de contrôle qu''il faut absolument savoir reconnaître dans un cas pratique. D''abord, le contrôle de droit : une société détient la majorité des droits de vote d''une autre, et peut donc, mathématiquement, imposer ses décisions en assemblée. Ensuite, le contrôle de fait : une société ne détient pas la majorité du capital, mais obtient, en pratique, la majorité des voix exprimées en assemblée, parce que les autres actionnaires sont dispersés et n''agissent jamais ensemble. Prenons un exemple au tableau : une société détient 35 % du capital d''une autre société, le reste étant détenu par vingt actionnaires individuels qui ne se coordonnent jamais. Si, lors des trois dernières assemblées générales, cette société a systématiquement obtenu plus de 50 % des voix exprimées parce que les petits actionnaires ne se déplacent pas tous, on est en présence d''un contrôle de fait. Enfin, le contrôle conjoint : plusieurs associés exercent ensemble le pouvoir de décision en vertu d''un accord explicite, par exemple un pacte d''actionnaires qui prévoit un vote commun. Cette distinction n''est pas un exercice théorique : elle détermine le périmètre du groupe, l''obligation éventuelle de comptes consolidés, et surtout la vigilance à exercer sur les conventions entre sociétés liées, que nous allons étudier maintenant.

## 15:00 – 30:00 · Les conventions réglementées : logique et procédure

Passons au cœur de la séance : les conventions réglementées. Je vous propose la définition suivante, que vous devez pouvoir reformuler avec vos propres mots à l''examen : une convention réglementée est un contrat conclu entre une société et une personne qui exerce une influence sur elle — un dirigeant, un actionnaire significatif, ou une société liée à ces personnes. L''idée est simple : quand la même personne négocie des deux côtés de la table, implicitement ou explicitement, le risque de conflit d''intérêts justifie un contrôle procédural renforcé. Attention : ce contrôle renforcé ne signifie pas interdiction. Beaucoup de conventions réglementées sont parfaitement légitimes et bonnes pour l''entreprise — par exemple, un dirigeant qui met à disposition de sa société un bien personnel à un prix juste. Le droit organise une procédure en trois temps que vous devez connaître par cœur : premièrement, l''information préalable de l''organe compétent, généralement le conseil d''administration ; deuxièmement, l''autorisation ou la ratification par cet organe, la personne intéressée ne participant pas au vote sur sa propre convention — c''est un point très souvent oublié par les étudiants et qui vaut des points à l''examen ; troisièmement, l''information de l''assemblée générale des associés. Il existe une exception importante : les conventions dites courantes, conclues à des conditions normales, c''est-à-dire comparables à ce qu''un tiers indépendant aurait négocié. Ces conventions échappent au formalisme renforcé. C''est là que se trouve la vraie difficulté pratique des cas d''examen : comment déterminer si une convention est courante et à conditions normales ? La méthode est la comparaison avec le prix de marché. Prenons un exemple chiffré au tableau : un directeur général loue à sa société un entrepôt qu''il possède personnellement, pour 3 000 000 FCFA par mois. Le prix de marché pour un bien comparable est de 1 800 000 FCFA par mois. L''écart est de 1 200 000 FCFA par mois, soit 14 400 000 FCFA par an. Cet écart très significatif écarte la qualification de convention courante : c''est une convention réglementée qui devait suivre la procédure en trois temps.

## 30:00 – 35:00 · Pause active et question au groupe

Je vous propose une courte pause active de cinq minutes. Avant de reprendre, réfléchissez individuellement à cette question, que nous corrigerons ensemble à l''oral : si le même directeur général avait loué l''entrepôt au prix exact de 1 800 000 FCFA par mois, identique au marché, la convention devrait-elle encore suivre la procédure en trois temps ? Notez votre réponse et votre justification, nous en discuterons au retour de la pause. (Réponse attendue : non, en principe, car il s''agirait alors d''une convention courante conclue à des conditions normales, échappant au formalisme renforcé, même si le dirigeant a un intérêt personnel dans l''opération — l''important est l''absence d''avantage anormal, pas l''existence du lien d''intérêt en lui-même.)

## 35:00 – 50:00 · Cas d''entreprise filé : groupe Baobab Négoce

Reprenons avec un cas d''entreprise complet, que nous allons résoudre ensemble étape par étape, exactement selon la méthode que vous devrez appliquer à l''examen. Baobab Négoce SA, basée à Dakar, contrôle à 70 % sa filiale Baobab Transit SARL. Le président de Baobab Négoce SA, M. Ndiaye, est actionnaire à 40 % d''une société tierce, Rapid Fret SARL, qui fournit des prestations de transport sous-traité à Baobab Transit SARL pour 45 000 000 FCFA par an. Les tarifs de Rapid Fret SARL sont supérieurs de 20 % aux tarifs du marché constatés chez deux concurrents comparables. Première étape de la méthode : identifier le lien de contrôle. Baobab Négoce SA détient 70 % de Baobab Transit SARL : c''est un contrôle de droit, sans ambiguïté. Deuxième étape : identifier les parties au contrat litigieux et leurs liens d''intérêt. Le contrat est conclu entre Baobab Transit SARL (la filiale) et Rapid Fret SARL. M. Ndiaye, qui est président de la société mère Baobab Négoce SA, détient 40 % de Rapid Fret SARL : c''est un lien d''intérêt significatif qui justifie d''examiner la qualification de convention réglementée, même s''il n''est pas formellement dirigeant de la filiale elle-même — en pratique, son influence sur le groupe rend cette vigilance pertinente. Troisième étape : chiffrer l''écart par rapport au marché. Le prix de marché théorique, si le tarif pratiqué (45 000 000 FCFA) représente 120 % du prix de marché (c''est-à-dire 100 % plus 20 % de majoration), se calcule ainsi : prix de marché = 45 000 000 ÷ 1,20 = 37 500 000 FCFA. Le surcoût est donc de 45 000 000 − 37 500 000 = 7 500 000 FCFA. Quatrième étape : conclure sur la qualification et les conséquences. L''écart significatif écarte la qualification de convention courante. La procédure d''autorisation préalable aurait dû être respectée. À défaut, la responsabilité de M. Ndiaye pourrait être recherchée par les actionnaires minoritaires de Baobab Transit SARL pour le préjudice correspondant au surcoût de 7 500 000 FCFA.

## 50:00 – 65:00 · Approfondissement : sanctions et vigilance pratique

Allons plus loin sur les conséquences du non-respect du formalisme, question fréquente à l''examen, en gardant à l''esprit qu''il faut toujours vérifier le texte précis en vigueur : je vous donne ici la logique générale, pédagogique, pas des références d''articles. Premièrement, la responsabilité civile du dirigeant qui a conclu la convention sans l''autorisation requise, s''il en résulte un préjudice — c''est la conséquence la plus fréquemment retenue à l''examen, celle que nous avons appliquée dans le cas Baobab Négoce. Deuxièmement, selon la gravité, la possibilité que la convention soit remise en cause si elle a causé un préjudice imputable à l''absence d''autorisation. Troisièmement, un risque réputationnel et de gouvernance vis-à-vis des partenaires financiers. Pour une entreprise, la vigilance se traduit par une cartographie des conventions intra-groupe et une vérification systématique du prix de marché avant tout contrat avec une personne liée.

## 65:00 – 75:00 · Quiz interactif

Je vous propose maintenant un quiz de cinq questions, à choix de réponse courte, pour vérifier votre compréhension avant la synthèse finale. Première question : le contrôle de fait suppose-t-il la détention de la majorité du capital ? Réponse : non, il suppose une influence déterminante en pratique sans détention majoritaire. Deuxième question : une convention courante à conditions normales doit-elle suivre la procédure d''autorisation préalable renforcée ? Réponse : non, en principe, elle en est dispensée. Troisième question : qui ne doit pas participer au vote d''autorisation d''une convention réglementée au sein de l''organe compétent ? Réponse : la personne intéressée elle-même. Quatrième question : le groupe de sociétés a-t-il, en droit OHADA, une personnalité juridique propre distincte de ses sociétés membres ? Réponse : non, chaque société du groupe garde sa personnalité juridique propre. Cinquième question : dans le cas Baobab Négoce, quel est le montant du surcoût annuel identifié ? Réponse : 7 500 000 FCFA. Si vous avez eu des difficultés sur l''une de ces questions, reprenez la section correspondante de vos fiches avant l''examen.

## 75:00 – 85:00 · Synthèse et mise en perspective

Pour conclure cette séance, reprenons les points essentiels. Premièrement, le contrôle se définit par le pouvoir de fait sur les décisions en assemblée, pas seulement par un pourcentage de capital : il peut être de droit, de fait, ou conjoint. Deuxièmement, une convention réglementée se caractérise par la qualité des parties — l''existence d''un lien d''influence — et non par son objet : n''importe quel type de contrat peut être une convention réglementée s''il est conclu avec une personne liée. Troisièmement, la procédure en trois temps (information, autorisation sans le vote de l''intéressé, information de l''assemblée) est la colonne vertébrale du régime, et son non-respect ouvre la voie à la responsabilité du dirigeant. Quatrièmement, la comparaison avec le prix de marché est l''outil méthodologique central pour qualifier ou écarter le caractère « courant et à conditions normales » d''une convention — c''est la compétence la plus directement transférable à vos examens et à votre future pratique professionnelle. Pensez toujours, face à un cas pratique, à appliquer la méthode en quatre étapes que nous avons utilisée : identifier le contrôle, identifier les parties et leurs liens d''intérêt, chiffrer l''écart par rapport au marché, conclure sur la qualification et les conséquences.

## 85:00 – 90:00 · Évaluation finale

Pour terminer, voici cinq questions d''évaluation finale avec leurs réponses, que je vous invite à retravailler par écrit avant la prochaine séance. Question 1 : qu''est-ce qui distingue le contrôle de droit du contrôle de fait ? Réponse : le contrôle de droit résulte de la détention de la majorité des droits de vote ; le contrôle de fait résulte d''une influence déterminante en pratique, en l''absence de majorité, du fait de la dispersion des autres actionnaires. Question 2 : citez les trois étapes de la procédure applicable aux conventions réglementées. Réponse : information préalable de l''organe compétent, autorisation ou ratification sans participation au vote de la personne intéressée, information de l''assemblée générale des associés. Question 3 : quelle est la conséquence générale en cas d''absence d''autorisation d''une convention réglementée qui cause un préjudice à la société ? Réponse : la responsabilité civile du dirigeant qui a conclu la convention peut être engagée pour ce préjudice. Question 4 : comment qualifier une convention dont le prix est identique au prix de marché pour un bien ou un service comparable ? Réponse : convention courante conclue à des conditions normales, échappant en principe au formalisme renforcé. Question 5 : dans un groupe où la société mère détient 30 % du capital d''une filiale, le reste étant détenu par quinze actionnaires dispersés n''agissant jamais ensemble, et où la société mère obtient systématiquement la majorité en assemblée, quel type de contrôle est caractérisé ? Réponse : un contrôle de fait. Merci à toutes et à tous pour votre attention ; la prochaine séance portera sur les contrats d''affaires et la concurrence.', 'video', 90, false, 60
from public.courses c where c.slug = 'mas-droit-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Droit des sociétés approfondi et gouvernance');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Droit des contrats d''affaires et de la concurrence', '## Fiche du cours vidéo

Durée : 1h30. Objectif : savoir identifier, rédiger et apprécier la validité des clauses complexes des contrats d''affaires (exclusivité, non-concurrence, earn-out, hardship, limitation de responsabilité), et reconnaître les principes généraux du droit de la concurrence applicables aux pratiques anticoncurrentielles. Matériel recommandé : tableau ou diaporama, extraits de modèles de clauses contractuelles, calculatrice. Prérequis : droit des obligations (le contrat) et droit commercial général OHADA vus en Licence.

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Bonjour à toutes et à tous. Après avoir travaillé la gouvernance des groupes dans la séance précédente, nous abordons aujourd''hui les contrats d''affaires sophistiqués et le droit de la concurrence. Ces deux thèmes sont liés par un fil conducteur que je veux que vous ayez en tête dès le départ : une clause contractuelle qui est parfaitement licite entre deux petites entreprises peut devenir problématique, au regard du droit de la concurrence, lorsqu''elle est imposée par une entreprise puissante sur un marché. C''est cette bascule, de la liberté contractuelle à la régulation concurrentielle, que nous allons apprendre à repérer.

## 05:00 – 20:00 · Les clauses complexes : exclusivité et non-concurrence

Commençons par la clause d''exclusivité. Elle engage une partie à ne pas contracter avec des concurrents de son partenaire. Elle peut être unilatérale ou réciproque. Sa validité dépend de trois critères que vous devez systématiquement examiner dans un cas pratique : la durée, le champ géographique, et la proportionnalité par rapport à la contrepartie obtenue. Une exclusivité de deux ans sur une zone limitée, en contrepartie d''un investissement commercial réel du bénéficiaire, est généralement acceptable. Une exclusivité de quinze ans sur tout le territoire national, sans contrepartie spécifique, est un signal d''alerte. Passons à la clause de non-concurrence, qui s''applique en principe après la fin du contrat, souvent lors de la cession d''un fonds de commerce ou de titres sociaux. Elle doit être limitée dans le temps, dans l''espace, et proportionnée à l''intérêt légitime qu''elle protège — typiquement, empêcher le cédant de récupérer immédiatement la clientèle qu''il vient de céder. Exemple au tableau : une clause de non-concurrence de dix ans sur l''ensemble du territoire national, pour la cession d''un commerce de quartier qui ne rayonnait que sur sa ville, serait manifestement disproportionnée par rapport à l''intérêt légitime à protéger, qui se limite à la zone de chalandise réelle du commerce cédé.

## 20:00 – 35:00 · Earn-out et hardship : deux outils de gestion du risque dans le temps

Abordons maintenant deux clauses qui organisent la relation entre les parties dans la durée, face à l''incertitude de l''avenir. La clause d''earn-out, d''abord : elle est utilisée dans les cessions d''entreprises pour concilier les attentes du cédant, souvent optimiste sur l''avenir de son entreprise, et la prudence de l''acquéreur, qui veut limiter son risque. Une partie du prix n''est payée qu''après la réalisation d''objectifs futurs. Travaillons un exemple chiffré ensemble : la cession des actions d''une société de transformation agroalimentaire est fixée à un prix de base de 200 000 000 FCFA, complété par un earn-out égal à 10 % du chiffre d''affaires additionnel réalisé au-delà de 150 000 000 FCFA sur les deux exercices suivant la cession, plafonné à 40 000 000 FCFA. Si le chiffre d''affaires cumulé des deux exercices atteint 230 000 000 FCFA, calculons : l''earn-out théorique est de 10 % multiplié par (230 000 000 moins 150 000 000), soit 10 % multiplié par 80 000 000, soit 8 000 000 FCFA. Ce montant est bien en-deçà du plafond de 40 000 000 FCFA, donc l''earn-out effectivement dû est de 8 000 000 FCFA, et le prix total payé par l''acquéreur est de 200 000 000 plus 8 000 000, soit 208 000 000 FCFA. Retenez bien cette méthode de calcul en deux temps : calculer l''earn-out théorique selon la formule contractuelle, puis le comparer au plafond pour déterminer le montant effectivement dû. Passons à la clause de hardship, ou clause d''imprévision : elle permet à une partie de demander une renégociation du contrat lorsque survient un changement de circonstances imprévisible qui rend l''exécution excessivement onéreuse, sans la rendre impossible — ce qui la distingue nettement de la force majeure. Exemple : un contrat d''approvisionnement en matières premières agricoles à prix fixe sur trois ans ; une sécheresse exceptionnelle double le coût d''achat pour le fournisseur. Avec une clause de hardship, le fournisseur peut demander une renégociation organisée du prix ; sans elle, il reste en principe tenu d''exécuter aux conditions initiales, sauf à démontrer une impossibilité, ce qui est beaucoup plus difficile à établir qu''une simple aggravation du coût.

## 35:00 – 40:00 · Pause active et question au groupe

Prenons cinq minutes de pause active. Question à préparer pour notre retour : pourquoi une clause de hardship est-elle particulièrement utile dans un contrat de longue durée portant sur des matières premières agricoles, plutôt que dans un contrat ponctuel de courte durée ? Réfléchissez-y et nous en discuterons au retour. (Réponse attendue : parce que les contrats de longue durée sont davantage exposés à des changements de circonstances imprévisibles sur leur durée d''exécution — climatiques, économiques — et que, sans mécanisme de renégociation organisée, les parties seraient contraintes à l''alternative brutale entre exécuter à perte ou chercher une rupture, souvent plus coûteuse et conflictuelle qu''une renégociation encadrée.)

## 40:00 – 50:00 · La clause limitative de responsabilité

Terminons les clauses complexes avec la clause limitative de responsabilité, qui plafonne par avance le montant des dommages-intérêts qu''une partie pourra devoir à l''autre en cas de manquement contractuel, souvent exprimé en pourcentage du prix du contrat ou en multiple d''un montant annuel. Ces clauses sont généralement valables entre professionnels, mais deux limites doivent être retenues : d''une part, elles perdent leur effet en cas de faute particulièrement grave de la partie qui chercherait à s''en prévaloir ; d''autre part, un plafond fixé à un niveau si bas qu''il viderait l''obligation essentielle du contrat de toute portée réelle peut être remis en cause, car une partie ne peut pas s''engager tout en se protégeant d''avance contre toute conséquence réelle de son inexécution.

## 50:00 – 65:00 · Principes généraux du droit de la concurrence

Passons maintenant au droit de la concurrence, dont la logique est différente : il ne s''agit plus seulement de protéger l''équilibre entre deux contractants, mais de protéger le fonctionnement concurrentiel du marché dans son ensemble, dans l''intérêt de toutes les entreprises et des consommateurs. Trois catégories de pratiques sont à connaître. Premièrement, les ententes anticoncurrentielles : des accords entre entreprises concurrentes qui restreignent la concurrence — fixation concertée des prix, répartition des marchés ou des clients, limitation concertée de la production. Deuxièmement, l''abus de position dominante : une entreprise qui détient une position dominante — c''est-à-dire la capacité de se comporter indépendamment de ses concurrents et de ses clients dans une mesure appréciable — exploite cette position de façon abusive, par exemple par des prix d''éviction destinés à exclure un concurrent, ou des conditions discriminatoires sans justification. Troisièmement, les pratiques restrictives verticales, entre un fournisseur et un distributeur, qui peuvent devenir anticoncurrentielles lorsqu''elles cloisonnent excessivement les marchés. Travaillons maintenant le cas d''entreprise filé : Sahel Boissons SA, producteur basé à Thiès, conclut avec quinze distributeurs régionaux des contrats d''exclusivité réciproque de dix ans, et détient 65 % du marché national des boissons gazeuses. Analysons ensemble, selon la méthode à appliquer dans un cas pratique : d''abord, la position de marché — 65 % est un indice fort de position dominante, à confirmer par la définition précise du marché pertinent ; ensuite, l''ampleur de la pratique — une exclusivité systématique sur l''ensemble du réseau de quinze distributeurs a un effet cumulatif bien plus fort qu''une exclusivité isolée avec un seul distributeur ; enfin, la durée — dix ans est une durée longue qui prolonge l''effet de verrouillage du marché pour les concurrents potentiels. La combinaison de ces trois éléments (position dominante probable, ampleur systématique, durée longue) est caractéristique d''un risque de qualification d''abus de position dominante, sous réserve de l''analyse du marché pertinent et des justifications économiques avancées par l''entreprise.

## 65:00 – 75:00 · Quiz interactif

Voici cinq questions pour vérifier votre compréhension. Première question : qu''est-ce qui distingue la force majeure de la situation visée par une clause de hardship ? Réponse : la force majeure rend l''exécution impossible, alors que la clause de hardship vise une exécution devenue seulement excessivement onéreuse, sans impossibilité. Deuxième question : dans l''exemple d''earn-out travaillé, pourquoi le montant effectivement dû est-il de 8 000 000 FCFA et non de 40 000 000 FCFA ? Réponse : parce que le plafond de 40 000 000 FCFA n''est qu''un maximum ; le montant effectivement dû résulte du calcul selon la formule contractuelle (10 % du chiffre d''affaires additionnel), qui donne ici 8 000 000 FCFA, inférieur au plafond. Troisième question : une entente anticoncurrentielle suppose-t-elle qu''une entreprise détienne une position dominante ? Réponse : non, l''entente suppose un accord entre plusieurs entreprises, indépendamment de leur taille respective, alors que l''abus suppose qu''une entreprise détienne individuellement une position dominante. Quatrième question : une clause limitative de responsabilité produit-elle son effet en cas de faute particulièrement grave ? Réponse : non, en principe, une faute particulièrement grave prive la clause de son effet. Cinquième question : dans le cas Sahel Boissons, quels sont les trois éléments qui convergent pour caractériser un risque de qualification anticoncurrentielle ? Réponse : la position dominante probable (65 % du marché), l''ampleur systématique de l''exclusivité sur l''ensemble du réseau, et la durée longue de dix ans.

## 75:00 – 85:00 · Synthèse et mise en perspective

Pour synthétiser cette séance : chaque clause complexe répond à une logique économique précise qu''il faut identifier avant d''en juger la validité — l''exclusivité et la non-concurrence restreignent la liberté d''une partie et doivent être proportionnées ; l''earn-out et le hardship organisent la gestion du risque dans le temps ; la limitation de responsabilité plafonne les conséquences financières d''un manquement, sous réserve des fautes graves. Sur le droit de la concurrence, retenez la méthode d''analyse en trois temps que nous avons appliquée au cas Sahel Boissons : évaluer la position de marché de l''entreprise, évaluer l''ampleur et la systématicité de la pratique contractuelle en cause, évaluer sa durée et sa justification économique. C''est la combinaison de ces facteurs, et non un seul critère isolé, qui permet de qualifier un risque de pratique anticoncurrentielle. Cette méthode de pondération multi-critères est exactement ce qu''un examinateur de Master attend de vous : pas une réponse binaire, mais une analyse nuancée des facteurs en présence.

## 85:00 – 90:00 · Évaluation finale

Cinq questions d''évaluation à retravailler par écrit. Question 1 : citez les trois critères de validité d''une clause d''exclusivité ou de non-concurrence. Réponse : la durée, le champ géographique, et la proportionnalité par rapport à la contrepartie ou à l''intérêt légitime protégé. Question 2 : dans une cession à 90 000 000 FCFA avec un earn-out de 15 % du chiffre d''affaires additionnel au-delà de 60 000 000 FCFA, plafonné à 20 000 000 FCFA, quel est le prix total si le chiffre d''affaires de l''exercice suivant atteint 95 000 000 FCFA ? Réponse : earn-out théorique = 15 % × (95 000 000 − 60 000 000) = 15 % × 35 000 000 = 5 250 000 FCFA, inférieur au plafond ; prix total = 90 000 000 + 5 250 000 = 95 250 000 FCFA. Question 3 : quelle est la différence essentielle entre une entente et un abus de position dominante quant au nombre d''acteurs impliqués ? Réponse : l''entente implique au moins deux entreprises en accord ; l''abus implique une seule entreprise qui détient individuellement une position dominante. Question 4 : une clause de hardship permet-elle d''obtenir automatiquement une révision du prix ? Réponse : non, elle organise seulement une procédure de renégociation ; elle ne garantit pas un résultat déterminé à l''avance. Question 5 : pourquoi la même clause d''exclusivité peut-elle être licite entre deux petites entreprises et poser un problème de concurrence entre un acteur dominant et son réseau ? Réponse : parce que l''analyse concurrentielle s''intéresse à l''effet réel sur la structure du marché, qui dépend du pouvoir de marché de l''entreprise qui impose la clause, pas seulement du contenu littéral de la clause. Merci pour votre attention ; la prochaine séance portera sur l''arbitrage et les modes alternatifs de résolution des litiges.', 'video', 90, false, 70
from public.courses c where c.slug = 'mas-droit-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Droit des contrats d''affaires et de la concurrence');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Arbitrage et modes alternatifs de résolution des litiges', '## Fiche du cours vidéo

Durée : 1h30. Objectif : comprendre la logique de la clause compromissoire, les avantages comparés des modes alternatifs de résolution des litiges, et le rôle général de la CCJA de l''OHADA en matière d''arbitrage. Matériel recommandé : tableau ou diaporama, exemple de clause compromissoire type à annoter. Prérequis : institutions et bases de la procédure vues en Licence 1, droit commercial général OHADA vu en Licence 2.

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Bonjour à toutes et à tous. Nous terminons aujourd''hui le cycle des trois matières de Master 1 avec l''arbitrage et les modes alternatifs de résolution des litiges. C''est une matière différente des deux précédentes : il ne s''agit plus de qualifier une opération d''affaires, mais de comprendre comment les entreprises choisissent, par avance, la façon dont elles régleront leurs désaccords futurs. Gardez à l''esprit, pendant toute la séance, que l''objectif du Master 1 est de comprendre la logique d''ensemble et les grands mécanismes, pas de maîtriser le détail procédural fin d''un arbitrage, qui relève d''un enseignement spécialisé que certains d''entre vous approfondiront peut-être en Master 2 ou en formation professionnelle.

## 05:00 – 15:00 · Pourquoi choisir l''arbitrage et les MARL dans les affaires

Pourquoi des entreprises, en particulier dans un cadre régional, préfèrent-elles souvent éviter la juridiction étatique de leur cocontractant ? Cinq raisons structurent la réponse. La neutralité, d''abord : aucune partie ne souhaite être jugée devant les tribunaux du pays de l''autre, par crainte d''un traitement moins favorable, même si cette crainte n''est pas toujours justifiée en pratique. La confidentialité, ensuite : l''arbitrage se déroule en principe de façon confidentielle, contrairement à une procédure judiciaire généralement publique, ce qui protège les secrets d''affaires des parties. La spécialisation : les parties choisissent des arbitres ayant une expertise sectorielle précise, alors qu''un juge étatique traite des litiges de toute nature. La flexibilité procédurale et la rapidité relative, les parties pouvant organiser elles-mêmes certains aspects de la procédure. Enfin, l''exécution transfrontalière généralement facilitée des sentences arbitrales, grâce à des conventions internationales de reconnaissance et d''exécution, ce qui est essentiel lorsque les parties ou leurs actifs sont situés dans des pays différents. Au-delà de l''arbitrage, rappelons les autres modes alternatifs : la médiation, où un tiers neutre aide les parties à trouver elles-mêmes une solution sans trancher le litige, et la conciliation, proche de la médiation mais où le conciliateur peut être plus actif dans la proposition de solutions.

## 15:00 – 30:00 · La clause compromissoire : rédaction et effets

Entrons maintenant dans le détail de la clause compromissoire, qui est l''outil juridique central de cette matière. Définition à retenir : c''est la clause insérée dans un contrat avant la survenance d''un litige, par laquelle les parties conviennent de soumettre à l''arbitrage les différends qui pourraient naître de ce contrat. Distinguez-la bien du compromis d''arbitrage, conclu après la naissance du litige pour ce litige précisément identifié — cette distinction de vocabulaire est souvent demandée à l''examen. Une clause compromissoire bien rédigée doit préciser cinq éléments que je vous demande de mémoriser : le siège de l''arbitrage, qui est le lieu juridique de référence pour la procédure, et qui n''est pas nécessairement le lieu où se tiennent physiquement les audiences ; le règlement d''arbitrage applicable, celui d''une institution déterminée, ou un arbitrage ad hoc sans institution ; la langue de la procédure ; le nombre d''arbitres, souvent un ou trois, et la méthode de leur désignation ; et le droit applicable au fond du litige, qui peut être différent de la loi du siège. L''absence de précision sur ces points n''empêche pas nécessairement l''arbitrage, car les règlements institutionnels prévoient des mécanismes de désignation par défaut, mais elle crée un risque de contestation et de retard. Venons-en maintenant à l''effet essentiel de la clause : elle dessaisit, en principe, les juridictions étatiques du litige couvert. On parle d''effet négatif (elle écarte la compétence étatique) et d''effet positif (elle fonde la compétence du tribunal arbitral). Si une partie saisit malgré tout un tribunal étatique en violation de la clause, l''autre partie peut soulever l''exception d''incompétence au profit de l''arbitrage convenu — retenez bien ce mécanisme, car il est systématiquement testé dans les cas pratiques de ce chapitre.

## 30:00 – 35:00 · Pause active et question au groupe

Prenons cinq minutes de pause active. Question à préparer : une entreprise qui a signé une clause compromissoire peut-elle, si elle le souhaite au moment du litige, décider unilatéralement de saisir plutôt un tribunal étatique parce qu''elle estime que ce sera plus rapide ? Réfléchissez à la réponse et à sa justification. (Réponse attendue : non, en principe, elle ne peut pas décider unilatéralement d''écarter la clause compromissoire qu''elle a signée ; si elle saisit malgré tout un tribunal étatique, l''autre partie peut soulever l''exception d''incompétence fondée sur la clause, ce qui devrait conduire le tribunal à se déclarer incompétent au profit de l''arbitrage convenu.)

## 35:00 – 50:00 · Le rôle de la CCJA de l''OHADA en matière d''arbitrage

Abordons maintenant la Cour commune de justice et d''arbitrage, la CCJA, organe juridictionnel commun aux États membres de l''OHADA. Son rôle en matière d''arbitrage se décompose en deux fonctions que vous devez pouvoir citer et distinguer. Premièrement, un rôle d''appui à l''arbitrage institutionnel : la CCJA peut administrer des arbitrages selon son propre règlement, en particulier pour des litiges relatifs à des contrats exécutés ou à exécuter dans l''espace OHADA, lorsque les parties ont choisi ce cadre dans leur clause compromissoire. Deuxièmement, un rôle juridictionnel vis-à-vis des sentences rendues sous son égide : reconnaissance et exécution de ces sentences dans l''espace OHADA, avec un contrôle limité de leur régularité, sans réexamen du fond du litige déjà tranché par les arbitres — ce point est important, la CCJA ne rejuge pas l''affaire, elle vérifie la régularité de la sentence. Au-delà de l''arbitrage, j''ajoute, pour la culture générale du droit des affaires OHADA, que la CCJA joue également un rôle de juridiction de cassation commune pour l''interprétation des actes uniformes — droit des sociétés, droit commercial général, sûretés — ce qui favorise une interprétation harmonisée du droit dans toute la zone et limite les divergences entre juridictions nationales. Pour un cas pratique de Master 1, il vous suffit de savoir identifier qu''un litige entrant dans le champ de l''OHADA, assorti d''une clause de référence à la CCJA, peut être porté devant cette institution, sans qu''on vous demande de détailler les délais précis ou les voies de recours internes à la procédure, qui relèvent d''un enseignement spécialisé d''arbitrage. Travaillons maintenant le cas filé : Delta Cacao SA, basée en Côte d''Ivoire, et Sahel Négoce SA, basée au Sénégal, ont un contrat de fourniture de fèves de cacao sur trois ans avec une clause compromissoire : arbitrage à trois arbitres, règlement CCJA, siège à Abidjan, droit ivoirien au fond. Un désaccord survient sur la qualité des livraisons, Sahel Négoce SA réclamant 60 000 000 FCFA. Analysons : la clause dessaisit en principe les juridictions étatiques sénégalaises et ivoiriennes ; le litige relève du champ OHADA et peut être porté devant un arbitrage administré selon le règlement visé ; le siège à Abidjan fixe le cadre juridique de référence pour la procédure, sans préjudice du droit ivoirien choisi pour trancher le fond sur la conformité des livraisons.

## 50:00 – 65:00 · Choisir entre arbitrage, médiation et juridiction étatique

Terminons la partie théorique par les critères de choix entre ces différents modes, qui est une question fréquente de business case. Quatre facteurs à mettre en balance systématiquement. La nature de la relation : une relation d''affaires que les parties veulent préserver à long terme s''oriente plutôt vers la médiation, plus propice à une solution négociée que l''arbitrage, qui tranche en faveur d''une partie. Le montant et la complexité du litige : un litige technique et élevé justifie souvent le coût d''un arbitrage spécialisé, alors qu''un litige de faible montant rendrait ce coût disproportionné — nous avons vu un exemple de ce type dans le cours précédent, avec un contrat de 2 000 000 FCFA assorti d''une clause d''arbitrage à trois arbitres sous règlement complexe, manifestement disproportionnée. Le besoin d''exécution transfrontalière : lorsque les parties ou leurs actifs sont dans des pays différents, l''arbitrage offre souvent de meilleures perspectives d''exécution. Le besoin de confidentialité : important lorsque le litige touche à des secrets d''affaires. Un bon candidat au Master doit, face à un cas pratique, mettre en balance ces quatre facteurs plutôt que de recommander systématiquement l''arbitrage, qui n''est pas toujours la meilleure option.

## 65:00 – 75:00 · Quiz interactif

Cinq questions pour vérifier votre compréhension. Première question : la clause compromissoire est-elle conclue avant ou après la naissance du litige ? Réponse : avant, ce qui la distingue du compromis d''arbitrage, conclu après. Deuxième question : que se passe-t-il, en principe, si une partie saisit un tribunal étatique en violation d''une clause compromissoire ? Réponse : l''autre partie peut soulever l''exception d''incompétence, et le tribunal devrait se déclarer incompétent au profit de l''arbitrage convenu. Troisième question : citez deux rôles généraux de la CCJA en matière d''arbitrage. Réponse : un rôle d''appui à l''arbitrage institutionnel et un rôle juridictionnel de reconnaissance et d''exécution des sentences. Quatrième question : pourquoi la médiation peut-elle être préférable à l''arbitrage pour préserver une relation commerciale durable ? Réponse : parce qu''elle vise une solution négociée et consensuelle, alors que l''arbitrage tranche en faveur d''une partie contre l''autre. Cinquième question : dans le cas Delta Cacao, quel est le droit applicable au fond du litige, distinct du siège de l''arbitrage ? Réponse : le droit ivoirien, alors que le siège de l''arbitrage est fixé à Abidjan — ces deux éléments coïncident ici, mais auraient pu être différents.

## 75:00 – 85:00 · Synthèse et mise en perspective

Synthétisons cette séance, qui clôt le cycle des trois matières de Master 1. L''arbitrage se distingue de la médiation et de la conciliation par son caractère tranchant : une sentence obligatoire, alors que les autres modes aident seulement les parties à trouver elles-mêmes une solution. La clause compromissoire, insérée avant le litige, a pour effet d''écarter la compétence étatique au profit de l''arbitrage convenu, et doit être rédigée avec soin sur cinq points : siège, règlement, langue, nombre d''arbitres, droit applicable au fond. La CCJA de l''OHADA joue un double rôle en matière d''arbitrage, d''appui institutionnel et de reconnaissance-exécution des sentences, en plus de son rôle de cassation commune pour le droit uniforme — rôle qu''il faut savoir situer sans en détailler la procédure fine. Enfin, le choix entre les modes de résolution des litiges doit toujours résulter d''une mise en balance de plusieurs facteurs (nature de la relation, montant, exécution transfrontalière, confidentialité), jamais d''un réflexe automatique. Cette approche en facteurs multiples, que nous avons retrouvée dans les trois matières de l''année, est exactement la compétence d''analyse que le Master 1 cherche à développer chez vous.

## 85:00 – 90:00 · Évaluation finale

Cinq questions d''évaluation à retravailler par écrit avant la synthèse générale de fin d''année. Question 1 : définissez la clause compromissoire et distinguez-la du compromis d''arbitrage. Réponse : la clause compromissoire est conclue avant le litige, dans le contrat initial, pour les différends futurs ; le compromis d''arbitrage est conclu après la naissance du litige, pour ce litige précisément identifié. Question 2 : citez les cinq éléments qu''une clause compromissoire bien rédigée doit préciser. Réponse : le siège, le règlement applicable, la langue, le nombre d''arbitres et leur méthode de désignation, et le droit applicable au fond. Question 3 : quels sont les deux rôles généraux de la CCJA en matière d''arbitrage ? Réponse : appui à l''arbitrage institutionnel et rôle juridictionnel de reconnaissance et d''exécution des sentences rendues sous son égide. Question 4 : citez trois des cinq raisons pour lesquelles les entreprises préfèrent souvent l''arbitrage à la juridiction étatique dans les relations d''affaires internationales. Réponse : par exemple la neutralité, la confidentialité, et l''exécution transfrontalière facilitée (on pouvait aussi citer la spécialisation des arbitres ou la flexibilité procédurale). Question 5 : pourquoi un litige de faible montant assorti d''une clause d''arbitrage institutionnel complexe à trois arbitres pose-t-il un problème d''opportunité économique ? Réponse : parce que le coût et la durée de cette procédure risquent de dépasser, ou d''être disproportionnés par rapport à, l''enjeu financier réel du litige, ce qui rend ce choix économiquement inadapté pour des montants modestes. Merci à toutes et à tous : nous nous retrouvons pour la séance de synthèse transversale qui clôturera l''année de Master 1.', 'video', 90, false, 80
from public.courses c where c.slug = 'mas-droit-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Arbitrage et modes alternatifs de résolution des litiges');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Synthèse transversale et atelier cas pratique (groupe Sine Agro)', '## Fiche du cours vidéo

Durée : 1h30. Objectif : synthèse transversale de l''année de Master 1 à travers un cas pratique d''entreprise filé mêlant gouvernance de groupe, contrats d''affaires et concurrence, arbitrage ; entraînement à la méthode de résolution d''un cas pratique complexe en temps limité. Matériel recommandé : tableau ou diaporama avec l''organigramme du groupe étudié, chronomètre pour simuler les conditions d''examen. Prérequis : les trois séances vidéo précédentes de Master 1.

## Déroulé minuté

## 00:00 – 05:00 · Introduction à l''atelier de synthèse

Bonjour à toutes et à tous. Cette séance clôt le cycle de Master 1 : ce n''est pas un cours nouveau, mais un atelier de synthèse transversale, construit autour d''un cas pratique d''entreprise unique qui va mobiliser, successivement, les trois matières que nous avons étudiées — gouvernance et groupes de sociétés, contrats d''affaires et concurrence, arbitrage et modes alternatifs de résolution des litiges. L''objectif est double : consolider vos connaissances en les reliant entre elles, et vous entraîner à la méthode de résolution d''un cas complexe en conditions proches de l''examen, avec gestion du temps.

## 05:00 – 15:00 · Présentation du cas d''entreprise filé : groupe Sine Agro

Voici le cas que nous allons résoudre ensemble pendant toute la séance. Le groupe Sine Agro, basé à Kaolack, est structuré autour d''une société holding, Sine Agro Holding SA, qui détient 75 % de Sine Agro Production SARL (activité de transformation de céréales) et 40 % de Sine Agro Export SARL (activité d''exportation), les 60 % restants de cette dernière étant détenus par onze actionnaires individuels qui, historiquement, n''ont jamais voté ensemble contre les propositions de la holding lors des cinq dernières assemblées générales. Premier fait à traiter : le directeur général de Sine Agro Holding SA, Mme Diallo, est actionnaire à 50 % d''une société d''emballage, Pack Sine SARL, qui fournit à Sine Agro Production SARL l''intégralité de ses emballages pour 36 000 000 FCFA par an, alors que deux devis concurrents indépendants situent le prix de marché à 27 000 000 FCFA par an pour une prestation comparable. Le contrat a été signé par le directeur général de Sine Agro Production SARL sans consultation préalable de son conseil d''administration. Deuxième fait : Sine Agro Export SARL, qui détient 52 % du marché régional de l''exportation de céréales transformées vers les pays voisins, impose à ses neuf partenaires logistiques locaux une clause d''exclusivité réciproque de sept ans, sans contrepartie financière spécifique. Troisième fait : le contrat entre Sine Agro Export SARL et l''un de ses partenaires logistiques, Express Sine SARL, comporte une clause compromissoire (arbitre unique, règlement CCJA, siège Dakar, droit sénégalais au fond). Un litige survient sur une rupture anticipée, Express Sine SARL réclamant 18 000 000 FCFA ; Sine Agro Export SARL saisit directement le tribunal de commerce de Kaolack sans mentionner la clause.

## 15:00 – 30:00 · Résolution guidée : la gouvernance du groupe

Prenons le premier bloc de questions, exactement comme à l''examen, chronomètre en main — comptez-vous quinze minutes pour cette partie si vous étiez en conditions réelles. Première sous-question : qualifiez le lien de contrôle entre la holding et chacune de ses deux filiales. Pour Sine Agro Production SARL, 75 % du capital : contrôle de droit, sans ambiguïté. Pour Sine Agro Export SARL, 40 % du capital, mais majorité systématique obtenue en assemblée depuis cinq ans face à des actionnaires dispersés n''ayant jamais voté ensemble : c''est un contrôle de fait. Deuxième sous-question : le contrat entre Sine Agro Production SARL et Pack Sine SARL constitue-t-il une convention réglementée ? Mme Diallo, directrice générale de la holding, détient 50 % de Pack Sine SARL : lien d''intérêt significatif. Calculons l''écart : 36 000 000 moins 27 000 000 égale 9 000 000 FCFA, soit un taux de majoration de 9 000 000 divisé par 27 000 000, soit environ 33,3 % au-dessus du marché. Cet écart très significatif écarte la qualification de convention courante : c''est une convention réglementée, et l''absence de consultation préalable du conseil d''administration de Sine Agro Production SARL constitue un manquement procédural, ouvrant la voie à la responsabilité civile de la personne ayant engagé la société sans autorisation, pour un préjudice correspondant au surcoût de 9 000 000 FCFA par an.

## 30:00 – 35:00 · Pause active et question au groupe

Cinq minutes de pause active. Question à préparer : si Mme Diallo n''était que directrice générale de Sine Agro Holding SA, sans aucune participation au capital de Pack Sine SARL, le contrat entre Sine Agro Production SARL et Pack Sine SARL poserait-il encore un risque de qualification de convention réglementée du simple fait de l''appartenance au même groupe ? Réfléchissez-y. (Réponse attendue : pas automatiquement du seul fait de l''appartenance au groupe ; la qualification de convention réglementée dépend de l''existence d''un lien d''influence identifié entre une personne physique ou morale liée et l''une des sociétés concernées, pas de la seule structure de groupe en elle-même ; en l''absence de tout lien d''intérêt personnel de Mme Diallo dans Pack Sine SARL, l''opération resterait une relation commerciale ordinaire entre deux sociétés, à apprécier sous l''angle du droit commun des contrats plutôt que sous celui des conventions réglementées.)

## 35:00 – 55:00 · Résolution guidée : concurrence et arbitrage

Continuons avec le deuxième bloc. Troisième sous-question : la clause d''exclusivité réciproque de sept ans imposée par Sine Agro Export SARL à ses neuf partenaires logistiques pose-t-elle un risque de qualification anticoncurrentielle ? Reprenons la méthode en trois facteurs étudiée précédemment. Position de marché : 52 % du marché régional de l''exportation, indice fort de position dominante possible, sous réserve de la définition précise du marché pertinent. Ampleur : l''exclusivité est appliquée systématiquement à l''ensemble des neuf partenaires, ce qui crée un effet cumulatif de verrouillage pour des concurrents qui chercheraient à accéder aux mêmes partenaires logistiques. Durée et justification : sept ans est une durée longue, et l''absence de contrepartie financière spécifique affaiblit la justification économique de la contrainte. La combinaison de ces trois facteurs constitue un risque réel de qualification d''abus de position dominante, sous réserve d''une analyse plus fine du marché pertinent. Quatrième sous-question : la saisine directe du tribunal de commerce de Kaolack par Sine Agro Export SARL est-elle conforme à la clause compromissoire ? Non : la clause dessaisit en principe les juridictions étatiques du litige couvert ; Express Sine SARL peut soulever l''exception d''incompétence fondée sur la clause, ce qui devrait conduire le tribunal à se déclarer incompétent au profit de l''arbitrage convenu — arbitre unique, règlement CCJA, siège Dakar, droit sénégalais au fond — pour la demande de 18 000 000 FCFA. La CCJA jouerait alors son rôle d''appui institutionnel à la procédure arbitrale, puis, le cas échéant, un rôle de reconnaissance et d''exécution de la sentence qui serait rendue.

## 55:00 – 65:00 · Quiz interactif transversal

Cinq questions qui mobilisent les trois matières ensemble. Première question : dans le cas Sine Agro, quel est le montant du surcoût annuel identifié dans le contrat d''emballage ? Réponse : 9 000 000 FCFA. Deuxième question : quel type de contrôle caractérise le lien entre la holding et Sine Agro Export SARL ? Réponse : un contrôle de fait. Troisième question : quels sont les trois facteurs qui convergent pour caractériser un risque d''abus de position dominante dans le cas de l''exclusivité logistique ? Réponse : la position de marché (52 %), l''ampleur systématique sur les neuf partenaires, et la durée longue (sept ans) sans contrepartie spécifique. Quatrième question : la saisine du tribunal de commerce de Kaolack est-elle valable malgré la clause compromissoire ? Réponse : non, en principe, sous réserve que l''autre partie soulève l''exception d''incompétence. Cinquième question : quel est le point commun méthodologique entre l''analyse de la convention réglementée et l''analyse de la clause d''exclusivité anticoncurrentielle ? Réponse : dans les deux cas, la méthode consiste à comparer la situation litigieuse à une référence objective (le prix de marché pour la convention réglementée, les standards de proportionnalité et de justification économique pour l''exclusivité) plutôt qu''à juger sur la seule base du lien d''intérêt ou de la puissance économique en eux-mêmes.

## 65:00 – 80:00 · Rédaction guidée en temps limité

Je vous propose maintenant un exercice de rédaction en temps limité, pour vous entraîner aux conditions réelles d''examen. Vous avez quinze minutes, chronomètre en main, pour rédiger une réponse structurée à la question suivante : « En reprenant le cas Sine Agro, rédigez une recommandation destinée au conseil d''administration de Sine Agro Holding SA, identifiant les trois principaux risques juridiques du groupe et une mesure corrective pour chacun. » Pendant que vous rédigez, je vous rappelle la structure attendue : une phrase d''introduction qui annonce les trois risques, puis, pour chacun, un paragraphe qui qualifie juridiquement le risque, chiffre son impact lorsque c''est possible, et propose une mesure corrective concrète. À la fin des quinze minutes, voici une proposition de corrigé que vous pourrez comparer à votre rédaction : premier risque, la convention réglementée non autorisée avec Pack Sine SARL, exposant Mme Diallo et la société à un risque de responsabilité civile pour le surcoût de 9 000 000 FCFA par an ; mesure corrective : soumettre rétroactivement la convention à l''autorisation du conseil d''administration de Sine Agro Production SARL et renégocier le tarif au niveau du marché. Deuxième risque, l''exposition à une qualification d''abus de position dominante pour la clause d''exclusivité logistique ; mesure corrective : réduire la durée de l''exclusivité et introduire une contrepartie financière spécifique (par exemple un financement des investissements logistiques des partenaires) pour renforcer sa justification économique. Troisième risque, le non-respect de la clause compromissoire dans le litige avec Express Sine SARL, qui expose le groupe à une perte de temps procédurale si le tribunal de commerce se déclare incompétent ; mesure corrective : retirer la saisine du tribunal de commerce et engager directement la procédure d''arbitrage convenue, pour éviter un double contentieux.

## 80:00 – 85:00 · Synthèse générale de l''année de Master 1

Pour conclure cette année de Master 1 en droit des affaires, retenez la méthode transversale que nous avons appliquée tout au long de ce cas filé : face à un ensemble de faits d''entreprise, il faut systématiquement cartographier les structures de contrôle, identifier les parties liées et leurs intérêts, comparer les éléments chiffrés à une référence objective de marché, puis vérifier la cohérence des choix contractuels de résolution des litiges avec le comportement effectif des parties. Cette méthode, applicable à la gouvernance, à la concurrence et à l''arbitrage, est exactement ce qui distingue une copie de Master d''une copie de Licence : la capacité à faire dialoguer plusieurs branches du droit sur un même ensemble de faits, plutôt qu''à traiter chaque question de façon isolée.

## 85:00 – 90:00 · Évaluation finale

Cinq questions d''évaluation finale pour clore l''année. Question 1 : quelle est la différence entre un contrôle de droit et un contrôle de fait, illustrée par le cas Sine Agro ? Réponse : le contrôle de droit (75 % sur Sine Agro Production SARL) résulte de la majorité du capital ; le contrôle de fait (40 % sur Sine Agro Export SARL avec majorité systématique en assemblée) résulte d''une influence déterminante sans majorité formelle. Question 2 : quel est le taux de majoration du contrat d''emballage par rapport au prix de marché dans le cas Sine Agro ? Réponse : environ 33,3 %, calculé comme 9 000 000 divisé par 27 000 000. Question 3 : citez les trois facteurs d''analyse d''un risque anticoncurrentiel appliqués au cas de l''exclusivité logistique. Réponse : la position de marché, l''ampleur et la systématicité de la pratique, et la durée associée à la justification économique. Question 4 : quelle est la conséquence procédurale générale d''une saisine d''un tribunal étatique en violation d''une clause compromissoire, si l''autre partie soulève l''exception d''incompétence ? Réponse : le tribunal étatique devrait se déclarer incompétent au profit de l''arbitrage convenu. Question 5 : quelle est la compétence transversale centrale que ce cycle de Master 1 a cherché à développer ? Réponse : la capacité à analyser un ensemble de faits d''entreprise en mobilisant simultanément plusieurs branches du droit des affaires (gouvernance, contrats et concurrence, résolution des litiges), avec une méthode fondée sur la comparaison à des références objectives plutôt que sur des réponses automatiques. Merci à toutes et à tous pour votre travail cette année ; bon courage pour vos examens de Master 1.', 'video', 90, false, 90
from public.courses c where c.slug = 'mas-droit-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Synthèse transversale et atelier cas pratique (groupe Sine Agro)');

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
