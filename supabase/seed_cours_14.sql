-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Cours (partie 14/18). À exécuter après seed.sql.

-- Cours : Gestion de projets Master 1 : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'mas-projet-m1', (select id from public.levels where name = 'Master 1'), null, 'Gestion de projets', 'Gestion de projets Master 1 : réussir ses examens', 'Ce cours prépare les examens de première année de Master en gestion de projets : management multi-projets et bureau de projets (PMO), gestion de projets complexes et internationaux (parties prenantes multiples, contrats, financement bailleurs), négociation et gestion des conflits. Il comprend des fiches avancées, des cas d''entreprise sénégalais et africains fictifs, un sujet type et quatre cours vidéo de 1h30, dont un cas transversal filé. Prérequis : Licence en gestion de projets (planification, coûts, risques, agile, montage et évaluation, portefeuille, suivi-évaluation, marchés publics).', true, 711
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Master 1 en Gestion de projets', '## Objectifs de la leçon

Comprendre les spécificités du Master en gestion de projets, situer les trois matières avancées de l''année (management multi-projets et PMO, projets complexes et internationaux, négociation et gestion des conflits), connaître les épreuves attendues (étude de cas, mémoire professionnel ou de recherche, soutenance) et bâtir un plan de révision sur six semaines.

## Le Master en gestion de projets : un changement de posture

La Licence vous a formé aux fondamentaux : planifier, budgétiser, gérer les risques, travailler en agile, monter et évaluer un projet, piloter un portefeuille, suivre-évaluer, respecter les règles de la commande publique. Le Master 1 change de posture : vous n''exécutez plus seulement un projet, vous apprenez à faire tenir ensemble plusieurs projets concurrents pour les ressources, à conduire des projets complexes mêlant plusieurs pays, plusieurs bailleurs et plusieurs cultures contractuelles, et à négocier et désamorcer des conflits avec des parties prenantes aux intérêts divergents. L''analyse critique remplace l''application mécanique d''un outil : un jury de Master attend que vous justifiiez un choix, que vous discutiez ses limites et que vous proposiez une alternative argumentée.

Le Master 1 prépare aussi, selon les établissements, un stage long ou un projet tutoré donnant lieu à un mémoire professionnel : un travail qui applique une démarche rigoureuse à une situation réelle ou réaliste, avec une revue de la littérature professionnelle, une méthodologie explicite et des recommandations opérationnelles. Les modalités précises (durée du stage, poids du mémoire, barème de soutenance) sont fixées par votre établissement : consultez son règlement des études.

## Les trois matières avancées de l''année

- Management multi-projets et PMO : gouvernance de portefeuille, bureau de projets (PMO), arbitrage de ressources partagées, modèles de maturité organisationnelle, reporting consolidé pour un comité de direction.
- Gestion de projets complexes et internationaux : cartographie de parties prenantes multiples, choix et risques des différents types de contrats, montages de financement associant bailleurs, banques de développement et capitaux privés, gestion du risque de change et des différences culturelles et réglementaires.
- Négociation et gestion des conflits dans les projets : préparation d''une négociation (positions, intérêts, meilleure alternative), zone d''accord possible, styles de gestion des conflits, méthode de négociation raisonnée, médiation interne.

Ces trois matières se combinent naturellement : un PMO arbitre entre plusieurs projets internationaux et doit souvent négocier avec un bailleur, un partenaire ou un contractant quand un conflit surgit sur les ressources ou le périmètre. Le sujet type et les cours vidéo de cette année illustrent systématiquement ces liens.

## Les types d''épreuves attendues

- Étude de cas de portefeuille : classer des projets par notation pondérée, identifier une suraffectation de ressource et proposer un arbitrage.
- Étude de cas de montage international : analyser un plan de financement multi-bailleurs, choisir un type de contrat adapté au risque, cartographier les parties prenantes.
- Cas de négociation : préparer une négociation (position, intérêts, BATNA, zone d''accord possible) et rédiger les arguments d''ouverture.
- Questions de cours et mini-dissertation : par exemple « Le bureau de projets est-il un organe de contrôle ou un organe de service ? », à argumenter avec des exemples.
- Selon l''établissement : soutenance intermédiaire du projet tutoré ou du rapport de stage.

## Méthode de travail au niveau Master

Au Master, une bonne réponse ne se limite pas à appliquer une formule : elle pose d''abord le contexte (quels enjeux, quelles contraintes), mobilise un cadre d''analyse (matrice de priorisation, cartographie des parties prenantes, zone d''accord possible), produit un calcul ou un raisonnement rigoureux, puis discute les limites de la méthode et propose une recommandation. Entraînez-vous à toujours conclure par une phrase de décision : « je recommande… parce que… », et à citer une limite ou un risque de votre propre recommandation. C''est ce regard critique qui distingue une copie de Master d''une copie de Licence.

Pour l''étude de cas d''entreprise, lisez l''énoncé deux fois : la première pour comprendre le contexte, la seconde en surlignant les chiffres et les contraintes. Construisez systématiquement un tableau avant de calculer. Pour une revue de littérature professionnelle (mémoire), distinguez les sources académiques, les rapports d''organisations (bailleurs, institutions) et les retours d''expérience de praticiens, et croisez-les plutôt que de les juxtaposer.

## Plan de révision sur six semaines

- Semaine 1 : management multi-projets, gouvernance de portefeuille, rôle et modèles de PMO ; deux exercices de notation pondérée.
- Semaine 2 : résolution de suraffectation de ressources et lecture de tableaux de bord consolidés multi-projets.
- Semaine 3 : projets complexes et internationaux, cartographie des parties prenantes, types de contrats et montages de financement multi-bailleurs ; un cas chiffré par jour.
- Semaine 4 : négociation et gestion des conflits : préparation de négociation, zone d''accord possible, styles de gestion des conflits, méthode raisonnée ; deux simulations écrites.
- Semaine 5 : cas transversaux combinant les trois matières ; avancement du mémoire ou du projet tutoré (plan détaillé, premières sources).
- Semaine 6 : deux sujets types en conditions réelles, corrections, fiches de synthèse, relecture du mémoire.

## Points clés

- Le Master analyse et argumente ; la Licence appliquait des outils.
- Trois matières : management multi-projets et PMO, projets complexes et internationaux, négociation et gestion des conflits.
- Toute réponse de Master se conclut par une recommandation justifiée et une limite assumée.

## Exercices pratiques

1. Citez les trois matières avancées du Master 1 et un outil caractéristique de chacune.
2. Pourquoi une étude de cas de Master exige-t-elle une recommandation argumentée plutôt qu''un simple calcul ?
3. Donnez un exemple de situation où le PMO, le montage international et la négociation interviennent simultanément.
4. Quelle est la différence entre une revue de littérature académique et une revue de pratiques professionnelles pour un mémoire ?
5. Cas pratique : Moussa, en Master 1, doit rendre un rapport d''étape de son projet tutoré dans quatre semaines et passer ses examens dans six semaines. Proposez une organisation hebdomadaire.

## Corrigé

1. Management multi-projets et PMO : la matrice de notation pondérée ou le tableau de bord consolidé. Projets complexes et internationaux : la cartographie des parties prenantes ou le plan de financement multi-bailleurs. Négociation et conflits : la zone d''accord possible (ZOPA) ou la grille des styles de gestion des conflits.

2. Parce que plusieurs choix sont souvent défendables (prioriser tel projet, choisir tel type de contrat, accepter telle concession) : le jury évalue la qualité du raisonnement, la prise en compte des contraintes et la conscience des limites, pas seulement le résultat chiffré.

3. Exemple : un PMO doit arbitrer les ressources entre deux projets internationaux financés par des bailleurs différents ; le retard de l''un déclenche un désaccord avec le contractant local, que le chef de projet doit négocier avant que le bailleur ne s''inquiète du calendrier.

4. La revue académique s''appuie sur des travaux de recherche validés, avec une démarche méthodologique explicite et des références citées avec précision. La revue de pratiques professionnelles s''appuie sur des rapports d''organisations, des études de cas et des retours d''expérience, utiles pour ancrer le mémoire dans la réalité du terrain, mais à croiser avec la littérature académique pour prendre de la hauteur.

5. Exemple : chaque matin, deux heures de révision selon le plan de six semaines ; chaque après-midi, une heure et demie sur le projet tutoré (collecte de données semaines 1 et 2, analyse semaines 3 et 4, rédaction du rapport d''étape semaines 3 à 6) ; la dernière semaine, priorité aux sujets types le matin et à la relecture finale du rapport l''après-midi.', 'texte', 55, true, 10
from public.courses c where c.slug = 'mas-projet-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Master 1 en Gestion de projets');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Management multi-projets et bureau de projets (PMO) : l''essentiel pour l''examen', '## Objectifs

Distinguer management de projet, de programme et de portefeuille multi-projets ; décrire le rôle et les modèles d''un bureau de projets (PMO) ; résoudre une situation de ressource partagée en suraffectation par une notation pondérée ; lire un tableau de bord consolidé de portefeuille.

## Fiche 1 : du projet au management multi-projets

Un portefeuille regroupe des projets et programmes qui partagent des ressources rares (budget, personnes clés, équipements) et doivent contribuer à la stratégie d''une organisation. Le management multi-projets ajoute une dimension que le management d''un projet isolé ne traite pas : la concurrence pour les ressources. Deux projets peuvent chacun être bien gérés individuellement et pourtant se bloquer mutuellement si le même expert est sollicité en même temps sur les deux.

La gouvernance multi-projets précise qui décide quoi : un comité de portefeuille arbitre les priorités stratégiques et les budgets ; un comité de pilotage par projet suit l''avancement et valide les jalons ; le bureau de projets prépare les arbitrages, consolide l''information et veille à l''application des méthodes communes.

## Fiche 2 : le bureau de projets (PMO)

Le PMO (Project Management Office) existe sous plusieurs formes, qui se distinguent par leur niveau d''autorité :

- PMO de soutien : fournit des modèles, des formations, un appui méthodologique ; n''impose rien.
- PMO de contrôle : impose des méthodes, des outils et des points de contrôle (jalons, revues) ; vérifie la conformité.
- PMO directif : prend en charge directement le management de certains projets, avec les chefs de projet qui lui sont rattachés.

Dans tous les cas, le PMO a trois missions récurrentes : harmoniser les pratiques, consolider l''information de plusieurs projets en une vue unique utile à la direction, et préparer les arbitrages sans se substituer à la décision du comité de portefeuille.

Des cadres de référence généraux décrivent une progression typique de maturité : pratiques ad hoc et dépendantes des individus ; pratiques émergentes ; pratiques standardisées à l''échelle de l''organisation ; pratiques pilotées par des indicateurs ; pratiques optimisées en amélioration continue. Situer son organisation sur cette échelle aide à proportionner les efforts du PMO : un PMO très directif a peu de sens dans une organisation encore au stade des pratiques ad hoc.

## Fiche 3 : la notation pondérée multicritère pour un portefeuille

La notation pondérée vue en Licence 3 se complexifie au Master : plusieurs critères (souvent quatre à six), des pondérations validées par la direction, et une discussion de la sensibilité du résultat à ces pondérations.

Exemple fictif : une société sénégalaise de services numériques évalue quatre projets (E-services administratifs, Application de paiement marchand, Refonte du système interne, Formation des équipes commerciales) selon quatre critères : alignement stratégique (35 %), risque maîtrisé (25 %), urgence réglementaire ou commerciale (20 %), retour sur investissement perçu (20 %). Chaque critère est noté de 1 à 5 par le comité.

- Projet A (E-services) : alignement 5, risque 3, urgence 2, ROI 4. Score = 0,35 × 5 + 0,25 × 3 + 0,20 × 2 + 0,20 × 4 = 1,75 + 0,75 + 0,40 + 0,80 = 3,70.
- Projet B (Paiement marchand) : alignement 3, risque 4, urgence 5, ROI 2. Score = 1,05 + 1,00 + 1,00 + 0,40 = 3,45.
- Projet C (Refonte interne) : alignement 4, risque 2, urgence 3, ROI 5. Score = 1,40 + 0,50 + 0,60 + 1,00 = 3,50.
- Projet D (Formation commerciale) : alignement 2, risque 5, urgence 4, ROI 3. Score = 0,70 + 1,25 + 0,80 + 0,60 = 3,35.

Classement : A (3,70) puis C (3,50) puis B (3,45) puis D (3,35). Un bon devoir de Master ajoute une remarque sur la sensibilité de ce classement aux pondérations retenues, qui doivent être validées avant la notation, jamais ajustées après coup pour favoriser un projet.

## Fiche 4 : résoudre une suraffectation de ressource

Le classement ne suffit pas : il faut vérifier la capacité réelle. Reprenons les quatre projets avec l''unique architecte technique senior de l''entreprise, disponible 160 heures ce mois-ci. Les besoins exprimés sont : A 60 heures, B 50 heures, C 70 heures, D 40 heures, soit 220 heures demandées contre 160 heures disponibles : une suraffectation de 60 heures, soit 37,5 % au-delà de la capacité.

Le PMO propose un lissage fondé sur le classement pondéré : servir d''abord A (60 h) et C (70 h), qui totalisent 130 heures et laissent 30 heures disponibles ; affecter ces 30 heures à B, qui n''obtient alors que 60 % de son besoin (30 sur 50 heures) ; reporter entièrement D au mois suivant, en informant son sponsor. Cette proposition, construite à partir du classement stratégique et non d''un simple « premier arrivé, premier servi », est ensuite soumise au comité de portefeuille, seul habilité à valider un report qui affecte le délai d''un projet.

## Fiche 5 : lire un tableau de bord consolidé de portefeuille

Au niveau Master, le tableau de bord ne présente plus un seul projet mais une vue consolidée : avancement (SPI), coût (CPI), risques critiques ouverts et statut global, projet par projet, avec une ligne de synthèse pour le portefeuille entier. Le comité y lit en un coup d''œil où concentrer son attention, sans avoir à ouvrir chaque rapport détaillé.

## Points clés

- Le management multi-projets gère la concurrence pour des ressources rares entre plusieurs projets.
- Le PMO peut être de soutien, de contrôle ou directif ; il prépare les arbitrages, la gouvernance décide.
- La notation pondérée multicritère doit être complétée par une analyse de sensibilité aux pondérations.
- Une suraffectation se résout en combinant classement stratégique et capacité réelle, validée par la gouvernance.

## Exercices pratiques

1. Distinguez un PMO de soutien et un PMO directif, avec un exemple pour chacun.
2. Reprenez les quatre critères de la fiche 3 avec un cinquième projet E noté 4, 4, 3, 3. Calculez son score et classez-le parmi A, B, C, D.
3. Avec une capacité de 150 heures au lieu de 160 pour l''architecte, et les mêmes besoins (A 60, B 50, C 70, D 40), proposez une nouvelle affectation fondée sur le classement A, C, B, D.
4. Pourquoi les pondérations d''une notation multicritère doivent-elles être validées avant la notation et non après ?
5. Citez trois missions récurrentes d''un bureau de projets.
6. Cas pratique : le directeur général demande au PMO de faire remonter, chaque mois, une seule page de synthèse pour six projets en cours. Proposez le contenu de cette page (au moins six éléments) et justifiez vos choix.

## Corrigé

1. PMO de soutien : il met à disposition un modèle de charte de projet et forme les chefs de projet, sans imposer son usage (exemple : une PME qui veut harmoniser ses pratiques sans les rendre obligatoires). PMO directif : il affecte lui-même un chef de projet à un nouveau projet et en assure la supervision directe (exemple : un grand groupe où le PMO gère en direct les projets stratégiques de transformation).

2. Score E = 0,35 × 4 + 0,25 × 4 + 0,20 × 3 + 0,20 × 3 = 1,40 + 1,00 + 0,60 + 0,60 = 3,60. Classement complet : A (3,70), E (3,60), C (3,50), B (3,45), D (3,35) : E se place en deuxième position.

3. Besoins 220 h contre 150 h disponibles, suraffectation de 70 h (46,7 %). En servant A (60 h) et C (70 h), on atteint déjà 130 h, il ne reste que 20 h : B n''obtient que 40 % de son besoin (20 sur 50 h) et D est intégralement reporté, comme dans l''exemple initial mais avec une marge encore plus réduite pour B.

4. Parce que valider les pondérations après la notation ouvrirait la porte à une manipulation du résultat en faveur d''un projet déjà préféré pour des raisons non déclarées ; la crédibilité de la méthode exige que les critères et leurs poids soient fixés avant de connaître les scores.

5. Harmoniser les pratiques et les outils ; consolider l''information de plusieurs projets en une vue unique ; préparer les arbitrages de ressources et de priorités pour la gouvernance.

6. Contenu possible : statut global (feu vert/orange/rouge) par projet ; SPI et CPI synthétiques ; principal risque critique ouvert ; jalon le plus proche et sa date ; décision ou arbitrage attendu du comité ; tendance par rapport au mois précédent. Justification : une page de direction doit permettre de décider, donc privilégier les signaux d''alerte et les décisions à prendre plutôt qu''un compte rendu exhaustif de l''avancement.', 'texte', 85, false, 20
from public.courses c where c.slug = 'mas-projet-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Management multi-projets et bureau de projets (PMO) : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Gestion de projets complexes et internationaux : l''essentiel pour l''examen', '## Objectifs

Cartographier les parties prenantes d''un projet complexe et international ; comparer les principaux types de contrats et leur répartition des risques ; construire un plan de financement associant plusieurs bailleurs ; comprendre le risque de change et les contraintes de la coordination interculturelle.

## Fiche 1 : qu''est-ce qu''un projet complexe et international

Un projet devient complexe lorsque plusieurs facteurs se combinent : de nombreuses parties prenantes aux intérêts divergents, plusieurs pays ou juridictions, plusieurs monnaies, des financements multiples, et souvent des écarts culturels dans la manière de travailler et de décider. Un projet peut être international sans être complexe (un simple achat d''équipement à l''étranger), et complexe sans être international (un très grand nombre d''acteurs locaux). Le Master s''intéresse surtout au cumul des deux : un projet d''infrastructure régionale associant plusieurs États de l''UEMOA, plusieurs bailleurs et des entreprises de plusieurs nationalités.

## Fiche 2 : cartographier des parties prenantes multiples

La matrice pouvoir-intérêt se complexifie quand les acteurs sont nombreux et hétérogènes. Exemple fictif : un projet régional de corridor routier reliant Dakar à Bamako, financé par plusieurs bailleurs.

Parties prenantes et leur positionnement possible : l''agence régionale d''exécution (pouvoir élevé, intérêt élevé : à gérer en priorité) ; la banque de développement bailleur principal (pouvoir élevé, intérêt élevé : reporting rigoureux) ; les communautés riveraines (pouvoir faible, intérêt élevé : à consulter, car un mécontentement local peut bloquer le chantier) ; l''entreprise de travaux publics internationale (pouvoir élevé, intérêt élevé) ; l''autorité environnementale nationale (pouvoir élevé, intérêt variable) ; les transporteurs routiers locaux (pouvoir faible, intérêt moyen : à informer).

Au-delà de la matrice, le Master attend une analyse des coalitions possibles et des points de friction prévisibles (par exemple une communauté riveraine et l''entreprise de travaux sur les indemnisations foncières), à anticiper dans le plan de gestion des parties prenantes.

## Fiche 3 : les grands types de contrats et la répartition du risque

- Contrat au forfait : le prix est fixé à l''avance pour un périmètre défini ; le contractant porte le risque de dépassement de coût, le client porte le risque de modification du périmètre (chaque changement donne lieu à un avenant onéreux).
- Contrat en dépenses contrôlées : le client porte le risque de dépassement de coût mais garde de la flexibilité ; nécessite un contrôle serré des dépenses.
- Contrat EPC (conception-approvisionnement-construction, « clé en main ») : un contractant unique livre un ouvrage fonctionnel à un prix et une date globalement garantis ; réduit les interfaces pour le client mais concentre le pouvoir de négociation chez le contractant.
- Contrat à prix unitaires : utile quand les quantités sont incertaines à la signature ; le risque de quantité reste au client, le risque de prix unitaire au contractant.

Le choix dépend du degré de certitude sur le périmètre : plus il est bien défini, plus un forfait est pertinent ; plus il reste d''incertitude, plus un contrat en dépenses contrôlées ou à prix unitaires protège les deux parties.

## Fiche 4 : construire un plan de financement multi-bailleurs

Exemple fictif chiffré : un projet d''électrification rurale par mini-centrales solaires à Louga, coût total 2 400 millions de FCFA, financé par trois sources : une subvention d''un bailleur fictif à 40 %, un prêt concessionnel d''une banque de développement fictive à 45 %, et un apport en fonds propres de l''opérateur local à 15 %.

- Subvention : 0,40 × 2 400 = 960 millions de FCFA, versée sans remboursement mais conditionnée au respect d''indicateurs sociaux (nombre de ménages raccordés) suivis par le bailleur.
- Prêt concessionnel : 0,45 × 2 400 = 1 080 millions de FCFA, remboursable à un taux et sur une durée favorables, avec des conditions de décaissement par tranches liées à l''avancement physique.
- Fonds propres : 0,15 × 2 400 = 360 millions de FCFA, apportés par l''opérateur, qui porte l''essentiel du risque résiduel si le projet dépasse son budget.

La somme des trois sources (960 + 1 080 + 360 = 2 400) doit égaler le coût total : un plan mal bouclé est un signal d''alerte immédiat pour tout jury. Chaque source impose ses propres règles (passation des marchés, rapports, audits), à concilier dans un calendrier unique, sous peine de blocages de décaissement.

## Fiche 5 : risque de change et coordination interculturelle

Le franc CFA de l''UEMOA est arrimé à l''euro à un taux fixe (1 euro = 655,957 FCFA) : un contrat libellé en euros avec des paiements en FCFA à ce taux fixe n''expose donc pas, en principe, à un risque de change entre ces deux monnaies, sous réserve du maintien de cet arrimage. En revanche, un contrat libellé en dollars américains, en livres sterling ou dans une autre monnaie dont le cours flotte par rapport à l''euro, expose le projet à un risque de change réel, qu''il faut couvrir (clause d''indexation, instrument de couverture) ou provisionner.

Exemple : un lot d''équipements importés est facturé 1 500 000 euros, soit 1 500 000 × 655,957 = 983 935 500 FCFA, environ 983,94 millions, un montant qui ne varie pas tant que l''arrimage est maintenu. Facturé en dollars, ce même lot aurait vu sa contre-valeur en FCFA varier avec le cours euro-dollar.

La coordination interculturelle complète l''analyse : des équipes de nationalités différentes peuvent avoir des attentes différentes sur la prise de décision, le rapport au temps et la communication. Un chef de projet international explicite ces règles dès la charte de projet.

## Points clés

- La complexité internationale combine parties prenantes nombreuses, multiplicité des pays, des monnaies et des financements, et écarts culturels.
- Forfait, dépenses contrôlées, EPC, prix unitaires : chaque contrat répartit différemment le risque de coût et de périmètre.
- Un plan de financement multi-bailleurs doit boucler à 100 % du coût total et concilier les règles propres à chaque source.
- Le risque de change ne concerne que les monnaies dont le cours flotte par rapport à la monnaie du projet ; la zone FCFA-euro est arrimée à taux fixe.

## Exercices pratiques

1. Classez quatre parties prenantes dans une matrice pouvoir-intérêt : ministère de tutelle, ouvriers du chantier, bailleur principal, association locale de riverains.
2. Pourquoi un contrat au forfait est-il risqué pour le client si le périmètre est mal défini au départ ?
3. Un projet coûte 3 000 millions de FCFA, financé à 30 % par subvention, 50 % par emprunt et le solde en fonds propres. Calculez chaque montant.
4. Un équipement est facturé 800 000 euros. Quelle est sa contre-valeur en FCFA au taux fixe de 655,957 ?
5. En quoi un contrat EPC réduit-il les interfaces pour le client, et quel est son principal inconvénient pour lui ?
6. Cas pratique : au milieu du chantier du corridor Dakar-Bamako, une association de riverains bloque l''accès au chantier pour réclamer une révision des indemnisations foncières, jugées insuffisantes. L''entreprise de travaux menace de réclamer des pénalités de retard au maître d''ouvrage. Analysez la situation avec la matrice pouvoir-intérêt et proposez une démarche en trois étapes.

## Corrigé

1. Ministère de tutelle : pouvoir élevé, intérêt élevé, à gérer en priorité. Bailleur principal : pouvoir élevé, intérêt élevé, à gérer en priorité avec un reporting rigoureux. Association locale de riverains : pouvoir faible, intérêt élevé, à consulter et informer étroitement. Ouvriers du chantier : pouvoir faible, intérêt moyen (leur sécurité et leurs conditions de travail), à informer et encadrer sur le terrain.

2. Parce que chaque modification de périmètre, même mineure, donne lieu à un avenant dont le prix est négocié en position de faiblesse par le client (le contractant sait que le client ne peut pas changer de prestataire en cours de chantier) ; un périmètre mal défini au départ multiplie ces avenants coûteux.

3. Subvention : 0,30 × 3 000 = 900 millions. Emprunt : 0,50 × 3 000 = 1 500 millions. Fonds propres : 3 000 − 900 − 1 500 = 600 millions (20 %).

4. 800 000 × 655,957 = 524 765 600 FCFA, soit environ 524,77 millions de FCFA.

5. Le client n''a qu''un seul interlocuteur responsable de la conception, de l''approvisionnement et de la construction, au lieu de coordonner lui-même plusieurs contractants spécialisés : cela simplifie son pilotage. L''inconvénient principal est la forte dépendance et le pouvoir de négociation élevé du contractant unique, surtout lors des avenants, et une moindre visibilité du client sur le détail des choix techniques.

6. Analyse : l''association de riverains, pouvoir faible mais intérêt élevé et désormais capacité de blocage de fait, doit être reclassée en « pouvoir élevé » tant que le blocage dure. L''entreprise de travaux, pouvoir et intérêt élevés, cherche à se protéger contractuellement. Démarche en trois étapes : premièrement, geler l''escalade en ouvrant un dialogue direct avec les représentants des riverains, avec le maître d''ouvrage et, si nécessaire, l''autorité locale compétente ; deuxièmement, faire auditer la grille d''indemnisation par une structure indépendante pour objectiver le désaccord ; troisièmement, documenter précisément la durée et la cause du blocage pour statuer ensuite, selon les clauses du contrat, sur l''imputation du retard (cas de force majeure, fait du prince ou risque contractant), avant toute discussion de pénalités.', 'texte', 85, false, 30
from public.courses c where c.slug = 'mas-projet-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Gestion de projets complexes et internationaux : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Négociation et gestion des conflits dans les projets : l''essentiel pour l''examen', '## Objectifs

Préparer une négociation avec la méthode des intérêts et de la meilleure alternative (BATNA), déterminer une zone d''accord possible (ZOPA), connaître les principaux styles de gestion des conflits et la méthode de négociation raisonnée, et savoir quand recourir à la médiation interne.

## Fiche 1 : pourquoi la négociation est une compétence centrale du Master

Dans un projet, on négocie en permanence : un délai avec un sponsor, un prix avec un fournisseur, un périmètre avec un client, une ressource avec un autre chef de projet. Le Master attend une préparation méthodique de ces négociations, plutôt qu''une improvisation reposant sur le rapport de force ou la seule bonne volonté. Deux notions structurent cette préparation : les intérêts (pourquoi chaque partie veut ce qu''elle demande, au-delà de sa position affichée) et la meilleure alternative à un accord négocié, c''est-à-dire ce que chaque partie ferait si la négociation échouait.

## Fiche 2 : positions, intérêts et BATNA

La position est ce qu''une partie demande explicitement (« je veux 100 millions de FCFA pour ce lot »). L''intérêt est la raison sous-jacente (sécuriser sa trésorerie, protéger sa marge). Deux parties aux positions incompatibles peuvent avoir des intérêts compatibles : un fournisseur qui veut un prix élevé pour sa trésorerie pourrait accepter un prix plus bas contre un paiement plus rapide, si son véritable intérêt est la trésorerie plutôt que le montant facial.

La meilleure alternative à un accord négocié (BATNA) est ce que chaque partie ferait si elle n''aboutissait pas à un accord : un autre fournisseur, un autre client, un report du projet. Une partie dont la BATNA est bonne négocie en position de force ; une partie dont la BATNA est mauvaise doit accepter des conditions moins favorables ou investir pour l''améliorer avant de négocier.

## Fiche 3 : la zone d''accord possible (ZOPA)

La zone d''accord possible est l''intervalle de valeurs (souvent un prix) dans lequel un accord est possible parce qu''il satisfait le seuil minimal de chaque partie. Exemple fictif : pour un lot de travaux de second œuvre, le sous-traitant n''acceptera pas moins de 85 millions de FCFA (son seuil de rentabilité), et le chef de projet, compte tenu de son budget, ne peut pas payer plus de 95 millions de FCFA sans dépasser son enveloppe validée. La ZOPA se situe donc entre 85 et 95 millions de FCFA : tout accord dans cet intervalle est mutuellement acceptable ; en dehors, aucun accord n''est possible sans qu''une des deux parties revoie son seuil.

À l''intérieur de la ZOPA, le prix final dépend du rapport de force, des BATNA respectives et des techniques d''ancrage : qui propose le premier chiffre tend à influencer la zone de discussion. Un ancrage raisonnable, proche d''une estimation objective, est souvent plus efficace qu''une offre extrême perçue comme déraisonnable.

Si les deux parties n''ont pas de ZOPA (par exemple le sous-traitant exige au moins 100 millions et le budget plafonne à 95), aucun accord direct n''est possible : il faut élargir les termes de l''échange (délai de paiement, volume futur) ou chercher une autre solution.

## Fiche 4 : les styles de gestion des conflits

Un cadre largement utilisé en gestion de projet classe les comportements face à un conflit selon deux dimensions : l''affirmation de ses propres intérêts et la coopération avec l''autre partie. On distingue ainsi cinq styles : la compétition (forte affirmation, faible coopération : on impose sa solution, utile en cas d''urgence ou de principe non négociable) ; la collaboration (forte affirmation et forte coopération : on cherche une solution qui satisfait les deux parties, la plus coûteuse en temps mais souvent la plus durable) ; le compromis (niveau intermédiaire des deux : chacun cède une partie de sa demande) ; l''évitement (faible affirmation et faible coopération : on reporte ou on ignore le conflit, utile si l''enjeu est mineur ou si les esprits doivent se calmer) ; l''accommodation (faible affirmation, forte coopération : on cède pour préserver la relation, utile quand la relation compte plus que l''enjeu ponctuel).

Un bon chef de projet ne choisit pas un style unique mais adapte son style à l''enjeu (financier, sécuritaire, relationnel), à l''urgence et à l''importance de la relation à long terme avec l''autre partie.

## Fiche 5 : la négociation raisonnée et la médiation interne

La négociation raisonnée (souvent appelée méthode de Harvard) repose sur quatre principes : séparer les personnes du problème (ne pas transformer un désaccord technique en conflit personnel) ; se concentrer sur les intérêts, pas sur les positions ; générer plusieurs options avant de choisir, pour élargir la zone de solutions possibles ; et évaluer les options selon des critères objectifs (coût, délai, données techniques, pratiques du secteur) plutôt que selon le rapport de force du moment.

Quand un conflit entre deux acteurs d''un même projet (deux sous-traitants, deux chefs de lot) ne se résout pas directement, le chef de projet ou le PMO peut organiser une médiation interne : un tiers reconnu par les deux parties écoute chacune séparément, reformule les intérêts de chacune, puis anime une séance commune centrée sur la recherche d''options plutôt que sur l''arbitrage immédiat d''un gagnant et d''un perdant.

## Chiffrer le coût d''un conflit non résolu

Exemple fictif : un désaccord entre deux sous-traitants sur l''accès partagé à une zone de chantier bloque l''avancement pendant 10 jours. Le contrat prévoit une pénalité de retard de 1,5 million de FCFA par jour imputable au maître d''ouvrage s''il ne débloque pas la situation : 1,5 × 10 = 15 millions de FCFA de pénalité potentielle. Une escalade contentieuse est estimée à 25 millions de FCFA de frais. Ce chiffrage aide à convaincre les parties que la négociation coûte moins cher que l''escalade.

## Points clés

- Préparer une négociation, c''est distinguer position et intérêt, et estimer sa BATNA et celle de l''autre partie.
- La zone d''accord possible n''existe que si les seuils minimaux des deux parties se recouvrent.
- Cinq styles de gestion des conflits : compétition, collaboration, compromis, évitement, accommodation, à adapter au contexte.
- La négociation raisonnée mobilise intérêts, options multiples et critères objectifs plutôt que le seul rapport de force.

## Exercices pratiques

1. Distinguez position et intérêt à partir de l''exemple du fournisseur qui veut un prix élevé.
2. Un acheteur ne peut pas payer plus de 60 millions de FCFA ; un prestataire n''acceptera pas moins de 65 millions. Y a-t-il une zone d''accord possible ? Que peut-on faire ?
3. Associez chaque situation à un style de gestion des conflits : (a) un incendie menace la sécurité du chantier ; (b) un désaccord mineur sur l''ordre d''affichage d''un panneau de communication ; (c) deux partenaires stratégiques de long terme doivent trouver une solution durable à un désaccord de calendrier.
4. Citez les quatre principes de la négociation raisonnée.
5. Cas pratique : deux sous-traitants bloquent un chantier pendant 8 jours pour un désaccord d''accès, avec une pénalité de 1,2 million de FCFA par jour imputable au maître d''ouvrage s''il ne tranche pas. Calculez le coût de l''inaction sur ces 8 jours et proposez une démarche de résolution en trois étapes.

## Corrigé

1. Position : « je veux 100 millions de FCFA ». Intérêt sous-jacent : sécuriser sa trésorerie ou protéger sa marge face à ses propres coûts. Un accord à un prix plus bas mais avec un paiement plus rapide peut satisfaire ce même intérêt de trésorerie sans satisfaire la position initiale au montant facial.

2. Non : le seuil de l''acheteur (60) est inférieur au seuil du prestataire (65), il n''y a pas de recouvrement, donc pas de ZOPA sur le seul prix. Il faut élargir les termes de l''échange (délai de paiement plus court en échange d''un prix plus bas, volume de commandes futures, réduction du périmètre de la prestation) ou chercher un autre prestataire.

3. (a) Compétition : la sécurité impose une décision rapide et non négociable. (b) Évitement ou accommodation : l''enjeu est mineur, inutile d''y consacrer du temps de négociation. (c) Collaboration : la relation de long terme et l''enjeu méritent une solution durable satisfaisant les deux parties.

4. Séparer les personnes du problème ; se concentrer sur les intérêts plutôt que sur les positions ; générer plusieurs options avant de choisir ; évaluer les options selon des critères objectifs.

5. Coût de l''inaction : 1,2 × 8 = 9,6 millions de FCFA de pénalité potentielle sur 8 jours, sans compter le risque d''allongement du délai global du chantier. Démarche : premièrement, réunir séparément chaque sous-traitant pour identifier ses intérêts réels derrière la demande d''accès exclusif ; deuxièmement, organiser une médiation animée par le chef de projet ou le PMO, centrée sur un partage d''horaires ou un phasage de la zone plutôt que sur un gagnant et un perdant ; troisièmement, si aucun accord n''émerge, trancher par une décision d''arbitrage documentée, en appliquant les clauses contractuelles de priorité d''accès, tout en consignant précisément la chronologie pour l''imputation éventuelle des pénalités.', 'texte', 85, false, 40
from public.courses c where c.slug = 'mas-projet-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Négociation et gestion des conflits dans les projets : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Master 1 en Gestion de projets', '## Présentation

Sujet d''entraînement multi-matières, non officiel, pour une épreuve de 3 heures de Master 1 en gestion de projets. Barème indicatif, non officiel. Calculatrice autorisée. Toutes les valeurs, pondérations et seuils sont fictifs.

## Énoncé

Contexte. Le groupe fictif Teranga Infra, basé à Dakar, gère un portefeuille de projets numériques et pilote par ailleurs un important chantier d''infrastructure régional cofinancé par plusieurs bailleurs. Un désaccord contractuel menace l''avancement d''un lot de travaux.

Partie 1 – Management multi-projets et PMO (8 points)

Le PMO de Teranga Infra évalue cinq projets candidats selon quatre critères pondérés : alignement stratégique 40 %, risque maîtrisé 20 %, urgence 15 %, retour sur investissement perçu 25 %.

- Projet E : alignement 4, risque 3, urgence 5, ROI 2.
- Projet F : alignement 3, risque 5, urgence 2, ROI 4.

1. Calculez le score pondéré de E et de F, et classez-les. (3 points)
2. Le même expert en cybersécurité est demandé sur trois projets du portefeuille pour 220 heures ce mois-ci, alors qu''il n''est disponible que 180 heures. Calculez la suraffectation en heures et en pourcentage, et proposez un principe d''arbitrage. (3 points)
3. Citez deux missions récurrentes d''un PMO et une limite de son rôle face à la gouvernance. (2 points)

Partie 2 – Projets complexes et internationaux (8 points)

Le chantier régional, coût total 1 800 millions de FCFA, est financé par une subvention d''un bailleur (35 %), un prêt concessionnel d''une banque de développement (50 %) et des fonds propres (solde).

4. Calculez le montant de chaque source de financement. (2 points)
5. Un lot d''équipements est facturé 600 000 euros. Calculez sa contre-valeur en FCFA au taux fixe de 655,957, et expliquez pourquoi ce montant n''est pas exposé au risque de change entre l''euro et le FCFA. (2 points)
6. Un sous-traitant et le maître d''ouvrage sont en désaccord sur une clause de pénalité. Le sous-traitant est en contrat à prix unitaires pour ce lot. Expliquez comment ce type de contrat répartit le risque de quantité et de prix entre les parties. (2 points)
7. Citez trois parties prenantes de ce chantier et positionnez chacune sur la matrice pouvoir-intérêt. (2 points)

Partie 3 – Négociation et gestion des conflits (9 points)

Le sous-traitant évoqué en question 6 bloque le chantier pendant 12 jours. Le contrat prévoit une pénalité de 1,8 million de FCFA par jour de retard imputable au maître d''ouvrage s''il ne tranche pas à temps. Une escalade contentieuse est estimée à 30 millions de FCFA de frais.

8. Calculez le coût de l''inaction sur les 12 jours et comparez-le au coût estimé de l''escalade contentieuse. (2 points)
9. Le sous-traitant n''acceptera pas moins de 110 millions de FCFA pour solder le litige ; le maître d''ouvrage ne peut pas aller au-delà de 125 millions de FCFA sans déroger à son budget validé. Déterminez la zone d''accord possible. (2 points)
10. Quel style de gestion des conflits recommandez-vous pour cette négociation, et pourquoi ? (2 points)
11. Citez les quatre principes de la négociation raisonnée et appliquez-en un à ce cas. (3 points)

## Corrigé détaillé

1. Score E = 0,40 × 4 + 0,20 × 3 + 0,15 × 5 + 0,25 × 2 = 1,60 + 0,60 + 0,75 + 0,50 = 3,45. Score F = 0,40 × 3 + 0,20 × 5 + 0,15 × 2 + 0,25 × 4 = 1,20 + 1,00 + 0,30 + 1,00 = 3,50. F devance E de peu : un jury appréciera une remarque sur la sensibilité de ce classement serré aux pondérations retenues.

2. Suraffectation = 220 − 180 = 40 heures, soit 40 / 180 ≈ 22,2 % au-delà de la capacité. Principe d''arbitrage : classer les trois projets par score stratégique pondéré (comme en question 1), servir en priorité les mieux classés jusqu''à épuisement des 180 heures, et reporter ou réduire la contribution du projet le moins prioritaire, avec validation du comité de portefeuille.

3. Missions : harmoniser les pratiques et les outils ; consolider l''information de plusieurs projets pour la direction. Limite : le PMO prépare les arbitrages mais ne se substitue pas à la gouvernance (comité de portefeuille ou direction) pour la décision finale.

4. Subvention = 0,35 × 1 800 = 630 millions de FCFA. Prêt concessionnel = 0,50 × 1 800 = 900 millions de FCFA. Fonds propres = 1 800 − 630 − 900 = 270 millions de FCFA (15 %).

5. 600 000 × 655,957 = 393 574 200 FCFA, soit environ 393,57 millions de FCFA. Ce montant n''est pas exposé au risque de change entre l''euro et le FCFA parce que le franc CFA de l''UEMOA est arrimé à l''euro à un taux fixe ; le risque de change ne porterait que sur une monnaie dont le cours flotte par rapport à l''euro ou au FCFA.

6. Dans un contrat à prix unitaires, le prix de chaque unité d''ouvrage est fixé à l''avance, mais la quantité réelle n''est connue qu''à l''avancement : le risque de prix unitaire revient au sous-traitant, le risque de quantité (donc le montant final payé) au maître d''ouvrage, qui doit suivre les attachements pour éviter les dérives.

7. Exemples : maître d''ouvrage (pouvoir élevé, intérêt élevé, à gérer en priorité) ; bailleur de fonds (pouvoir élevé, intérêt élevé, reporting rigoureux) ; sous-traitant en désaccord (pouvoir devenu élevé de fait pendant le blocage, intérêt élevé) ; communautés riveraines (pouvoir faible, intérêt élevé, à consulter et informer).

8. Coût de l''inaction sur 12 jours = 1,8 × 12 = 21,6 millions de FCFA. Comparé aux 30 millions de l''escalade contentieuse, l''inaction reste moins coûteuse (21,6 contre 30) mais croît chaque jour et dépassera le contentieux après environ 4,7 jours supplémentaires (8,4 / 1,8) : un argument pour résoudre vite le différend.

9. Le seuil minimal du sous-traitant (110) est inférieur au plafond du maître d''ouvrage (125) : la zone d''accord possible existe, elle se situe entre 110 et 125 millions de FCFA.

10. Le style collaboration est recommandé : l''enjeu financier est important, la relation contractuelle doit se poursuivre jusqu''à la fin du chantier, et une zone d''accord possible existe, ce qui permet de chercher une solution satisfaisant les deux parties plutôt que d''imposer un rapport de force ou de simplement céder.

11. Principes : séparer les personnes du problème, se concentrer sur les intérêts, générer plusieurs options, évaluer selon des critères objectifs. Application : plutôt que de discuter uniquement du montant final, générer des options combinant un montant dans la zone 110-125 millions avec un ajustement du calendrier de paiement ou une clause de bonus si le chantier reprend rapidement, évaluées selon des critères objectifs comme le coût réel documenté du blocage pour chaque partie.

## Barème indicatif, non officiel

Partie 1 : 8 points ; partie 2 : 8 points ; partie 3 : 9 points. Les calculs doivent être présentés avec le détail des opérations, et chaque recommandation doit être justifiée.

## Exercices pratiques

1. Si la pondération ROI de la question 1 passait à 35 % (alignement ramené à 30 %), le classement de E et F changerait-il ? Recalculez.
2. Avec une capacité de 200 heures au lieu de 180 pour la question 2, quelle serait la suraffectation en pourcentage ?
3. Pourquoi un contrat à prix unitaires protège-t-il mieux les deux parties qu''un forfait lorsque les quantités sont incertaines au départ ?
4. Si le sous-traitant de la question 9 remontait son seuil minimal à 128 millions de FCFA, que devient la zone d''accord possible et que recommandez-vous ?

## Corrigé

1. Score E = 0,30 × 4 + 0,20 × 3 + 0,15 × 5 + 0,35 × 2 = 1,20 + 0,60 + 0,75 + 0,70 = 3,25. Score F = 0,30 × 3 + 0,20 × 5 + 0,15 × 2 + 0,35 × 4 = 0,90 + 1,00 + 0,30 + 1,40 = 3,60. F prend une avance plus nette qu''avec les pondérations initiales : augmenter le poids du ROI favorise F, qui était déjà mieux noté sur ce critère.

2. Suraffectation = 220 − 200 = 20 heures, soit 20 / 200 = 10 % au-delà de la capacité, nettement moins tendue que les 22,2 % initiaux.

3. Parce qu''un forfait obligerait l''une des deux parties à parier sur une quantité incertaine (le contractant risquerait une perte si les quantités réelles dépassent son estimation, ou le client paierait un prix gonflé par une marge de prudence excessive) ; le prix unitaire isole le risque de prix, que le contractant maîtrise, du risque de quantité, que le client suit et assume au fur et à mesure de l''avancement réel.

4. La zone d''accord possible disparaît (128 millions dépasse le plafond de 125 millions du maître d''ouvrage) : il faut élargir les termes de la négociation (échelonnement du paiement, contrepartie non financière, révision d''une autre clause du contrat) ou envisager une médiation, voire un recours contractuel, plutôt que d''espérer un accord sur le seul montant.', 'texte', 90, false, 50
from public.courses c where c.slug = 'mas-projet-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Master 1 en Gestion de projets');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Management multi-projets et bureau de projets (PMO)', '## Fiche du cours vidéo

Durée : 1h30. Public : Master 1 gestion de projets. Objectifs : approfondir la gouvernance multi-projets, le rôle et les modèles de PMO, la notation pondérée multicritère avec analyse de sensibilité, et la résolution d''une suraffectation de ressource avec arbitrage argumenté. Matériel : tableau, diaporama, calculatrice, tableur facultatif. Prérequis : notation pondérée simple et tableaux de bord vus en Licence.

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Bonjour à toutes et à tous. En Licence, vous avez appris à prioriser des projets avec une notation pondérée et à lire un tableau de bord. Aujourd''hui, nous passons à l''échelle d''un portefeuille réel, avec plusieurs projets qui se disputent les mêmes ressources, et nous verrons comment un bureau de projets structure cette décision sans se substituer à la gouvernance. Fil rouge : une société fictive de services numériques à Dakar, Teranga Digital, qui doit prioriser cinq projets avec un expert en cybersécurité très demandé.

## 05:00 – 14:00 · Projet, programme, portefeuille : rappel et approfondissement

Rappel rapide : un projet a un objectif propre et une durée limitée ; un programme regroupe des projets liés pour obtenir des bénéfices qu''on n''obtiendrait pas séparément ; un portefeuille regroupe des projets et programmes pas nécessairement liés, réunis pour la stratégie et le partage de ressources. La nouveauté du Master : la gouvernance de ce portefeuille. Je dessine trois niveaux au tableau : le comité de portefeuille (direction), le comité de pilotage par projet, et le bureau de projets, qui prépare l''information pour les deux autres sans décider à leur place.

## 14:00 – 26:00 · Les trois formes de PMO

Je présente les trois formes avec un exemple pour chacune. PMO de soutien : il propose un modèle de charte de projet, personne n''est obligé de l''utiliser. PMO de contrôle : il exige que chaque projet passe une revue de jalon avant de continuer, avec une checklist standard. PMO directif : il affecte lui-même les chefs de projet et supervise directement les projets stratégiques. Question au groupe : « Teranga Digital a aujourd''hui des pratiques très inégales d''un chef de projet à l''autre. Quelle forme de PMO lui conseillez-vous pour commencer ? » Réponse attendue : plutôt un PMO de soutien ou de contrôle léger au départ, car un PMO directif imposé trop tôt, sans maturité organisationnelle suffisante, risque un rejet par les équipes.

## 26:00 – 40:00 · La notation pondérée multicritère, avec analyse de sensibilité

Je reprends l''exemple des quatre critères : alignement stratégique 35 %, risque maîtrisé 25 %, urgence 20 %, ROI 20 %. Quatre projets A, B, C, D notés de 1 à 5 : A (5, 3, 2, 4), B (3, 4, 5, 2), C (4, 2, 3, 5), D (2, 5, 4, 3).

Je calcule au tableau : A = 0,35×5 + 0,25×3 + 0,20×2 + 0,20×4 = 1,75 + 0,75 + 0,40 + 0,80 = 3,70. B = 1,05 + 1,00 + 1,00 + 0,40 = 3,45. C = 1,40 + 0,50 + 0,60 + 1,00 = 3,50. D = 0,70 + 1,25 + 0,80 + 0,60 = 3,35. Classement : A, C, B, D.

Maintenant, l''analyse de sensibilité que le Master exige : que se passe-t-il si la direction augmente le poids de l''urgence à 30 % et réduit l''alignement stratégique à 25 %, les deux autres poids restant à 25 % et 20 % ? Nouveau calcul de B : 0,25×3 + 0,25×4 + 0,30×5 + 0,20×2 = 0,75 + 1,00 + 1,50 + 0,40 = 3,65. B dépasse alors C (qui redescend à 0,25×4+0,25×2+0,30×3+0,20×5=1,00+0,50+0,90+1,00=3,40) et s''approche fortement de A (qui devient 0,25×5+0,25×3+0,30×2+0,20×4=1,25+0,75+0,60+0,80=3,40 également). Conclusion à retenir : un changement de pondération peut inverser un classement serré ; c''est pourquoi les pondérations doivent être validées avant la notation par la direction, jamais ajustées après pour arranger un résultat.

## 40:00 – 50:00 · Pause et quiz interactif

Trois questions. Un : un PMO qui affecte lui-même les chefs de projet est-il de soutien, de contrôle ou directif ? Deux : dans l''exemple initial, quel projet a le meilleur score avec les pondérations d''origine ? Trois : pourquoi faut-il valider les pondérations avant de noter les projets ?

Réponses : directif ; le projet A avec 3,70 ; pour éviter qu''elles soient ajustées après coup en faveur d''un projet déjà préféré, ce qui viderait la méthode de sa crédibilité.

## 50:00 – 1:05:00 · Résoudre une suraffectation de ressource : correction commentée

Teranga Digital a un expert en cybersécurité disponible 160 heures ce mois-ci. Les besoins exprimés par les cinq projets prioritaires sont : A 60 h, B 50 h, C 70 h, D 40 h, soit 220 heures demandées, 60 heures de plus que la capacité disponible, une suraffectation de 60 / 160 = 37,5 %.

Je construis au tableau la proposition d''arbitrage fondée sur le classement stratégique : servir en priorité A (60 h) et C (70 h), qui épuisent 130 des 160 heures disponibles ; il reste 30 heures, affectées à B qui n''obtient ainsi que 30 sur 50 heures demandées, soit 60 % de son besoin ; D est intégralement reporté au mois suivant. Je souligne un point d''examen fréquent : cette proposition doit être présentée au comité de portefeuille comme une recommandation argumentée, avec les conséquences pour chaque sponsor de projet, et non appliquée unilatéralement par le PMO, qui prépare l''arbitrage mais ne décide pas à la place de la gouvernance.

Variante pour approfondir : si la capacité tombait à 140 heures (absence partielle de l''expert), la suraffectation passerait à 220 − 140 = 80 heures, soit 80 / 140 ≈ 57,1 %. Avec cette capacité réduite, même en servant entièrement A et C (130 heures), il ne resterait que 10 heures disponibles pour B, qui n''obtiendrait plus que 20 % de son besoin (10 sur 50 heures) ; le PMO devrait alors alerter la direction qu''un ou plusieurs projets supplémentaires doivent être reportés ou que l''organisation doit recruter un renfort externe temporaire.

## 1:05:00 – 1:20:00 · Lire un tableau de bord consolidé de portefeuille

Je projette un tableau de bord fictif à cinq projets avec, pour chacun, un statut (vert, orange, rouge), le SPI, le CPI, le principal risque ouvert et la décision attendue du comité. Je montre comment un comité de direction, en moins de cinq minutes, identifie que deux projets sont en difficulté de coût (CPI inférieur à 0,90) et qu''un projet attend une décision de priorisation de ressource (notre cas de l''expert en cybersécurité). L''enjeu pédagogique : une bonne synthèse de portefeuille ne liste pas tout, elle hiérarchise ce qui appelle une décision.

Je montre aussi comment le PMO documente l''historique d''un arbitrage : date de la décision, projets concernés, justification chiffrée (le score pondéré et le calcul de suraffectation), et instance qui a validé. Cette traçabilité sert deux objectifs : elle protège le PMO si un sponsor contestait plus tard l''équité de l''arbitrage, et elle alimente le retour d''expérience de l''organisation pour affiner ses pondérations ou sa capacité de ressources critiques lors du cycle suivant. Un comité qui redécouvre chaque mois les mêmes tensions de ressources sans les documenter n''apprend rien d''un mois sur l''autre.

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Synthèse : situer le portefeuille dans la gouvernance, choisir la forme de PMO adaptée à la maturité de l''organisation, noter les projets avec des critères et des poids validés en amont, tester la sensibilité du classement, résoudre une suraffectation par un arbitrage argumenté et présenté à la gouvernance, puis synthétiser l''ensemble dans un tableau de bord orienté décision.

Évaluation finale.

1. Quelle est la différence entre un PMO de contrôle et un PMO directif ? Réponse : le PMO de contrôle impose des méthodes et vérifie leur application sans gérer directement les projets ; le PMO directif gère lui-même certains projets avec des chefs de projet qui lui sont rattachés.
2. Pourquoi tester la sensibilité des pondérations d''une notation multicritère ? Réponse : parce qu''un classement serré peut s''inverser avec de petites variations de poids, ce qui doit être signalé à la décision plutôt que caché.
3. Un expert est disponible 150 heures, trois projets demandent 50, 60 et 70 heures. Calculez la suraffectation en heures et en pourcentage. Réponse : demande totale 180 heures, suraffectation 30 heures, soit 30 / 150 = 20 %.
4. Qui doit valider un arbitrage de ressource proposé par le PMO ? Réponse : le comité de portefeuille ou la gouvernance compétente, pas le PMO seul.
5. Citez un élément qu''un tableau de bord de portefeuille doit privilégier pour un comité de direction. Réponse : les signaux d''alerte et les décisions attendues, plutôt qu''un compte rendu exhaustif de chaque projet.

Merci à toutes et à tous. Pour votre projet tutoré ou votre mémoire, si votre terrain comporte plusieurs projets ou activités en concurrence pour des ressources, appliquez cette démarche complète : classement pondéré avec analyse de sensibilité, arbitrage de ressource documenté et présenté comme une recommandation à la gouvernance, et tableau de bord orienté décision plutôt qu''inventaire exhaustif.', 'video', 90, false, 60
from public.courses c where c.slug = 'mas-projet-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Management multi-projets et bureau de projets (PMO)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Gestion de projets complexes et internationaux', '## Fiche du cours vidéo

Durée : 1h30. Public : Master 1 gestion de projets. Objectifs : approfondir la cartographie des parties prenantes multiples, les types de contrats et leur répartition de risque, la construction d''un plan de financement multi-bailleurs et l''analyse du risque de change en zone UEMOA. Matériel : tableau, diaporama, calculatrice. Prérequis : notions de VAN et de budget de projet vues en Licence.

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Bonjour à toutes et à tous. Un projet régional qui relie plusieurs pays n''est pas qu''un grand projet national : il ajoute des parties prenantes aux intérêts parfois opposés, plusieurs bailleurs avec des règles différentes, parfois plusieurs monnaies, et des façons de travailler différentes selon les équipes. Fil rouge : le corridor routier fictif reliant Dakar à Bamako, et le projet fictif d''électrification rurale par mini-centrales solaires dans la région de Louga.

## 05:00 – 16:00 · Cartographier des parties prenantes multiples

Je reprends la matrice pouvoir-intérêt au tableau, avec six parties prenantes du corridor : l''agence régionale d''exécution, la banque de développement bailleur principal, les communautés riveraines, l''entreprise de travaux publics internationale, l''autorité environnementale nationale, les transporteurs routiers locaux. Je positionne chacune et j''insiste sur un point souvent oublié : la position d''une partie prenante peut changer en cours de projet. Une communauté riveraine, pouvoir faible au départ, peut acquérir un pouvoir de blocage de fait si elle organise une mobilisation ou un recours ; il faut réévaluer la cartographie régulièrement, pas seulement au lancement.

## 16:00 – 30:00 · Les types de contrats et la répartition du risque

Je trace un tableau à deux colonnes, « qui porte le risque de coût » et « qui porte le risque de périmètre ou de quantité », pour quatre types de contrats. Forfait : le contractant porte le risque de coût, le client porte le risque de périmètre (chaque avenant est coûteux). Dépenses contrôlées : le client porte le risque de coût, mais garde de la flexibilité sur le périmètre. EPC clé en main : un contractant unique porte l''essentiel du risque global, en échange d''un prix et d''un délai globalement garantis, mais avec un fort pouvoir de négociation sur les avenants. Prix unitaires : le contractant porte le risque de prix unitaire, le client porte le risque de quantité réelle exécutée.

Question au groupe : « Pour le lot de terrassement du corridor, dont les quantités de déblai ne sont connues qu''approximativement avant le chantier, quel type de contrat recommandez-vous ? » Réponse attendue : un contrat à prix unitaires, car il isole le risque de prix, maîtrisé par le contractant, du risque de quantité, qui ne peut être connu avec certitude qu''en cours d''exécution.

## 30:00 – 45:00 · Construire un plan de financement multi-bailleurs : correction commentée

Cas de l''électrification rurale à Louga : coût total 2 400 millions de FCFA, financé par une subvention de 40 %, un prêt concessionnel de 45 % et des fonds propres de 15 %. Je calcule au tableau : subvention 0,40 × 2 400 = 960 millions ; prêt 0,45 × 2 400 = 1 080 millions ; fonds propres 0,15 × 2 400 = 360 millions. Vérification : 960 + 1 080 + 360 = 2 400, le plan boucle exactement.

J''insiste sur un point de méthode essentiel pour l''examen : chaque source a ses propres règles. La subvention peut être conditionnée à des indicateurs sociaux vérifiés par le bailleur (nombre de ménages raccordés) ; le prêt est décaissé par tranches liées à l''avancement physique, vérifié par la banque ; les fonds propres portent le risque résiduel de dépassement. Le chef de projet doit donc produire plusieurs rapports différents, selon des calendriers différents, pour des destinataires différents, tout en gardant une seule comptabilité de projet cohérente.

Variante pour approfondir : si le coût total grimpait à 2 700 millions de FCFA avec les mêmes pourcentages, la subvention passerait à 0,40 × 2 700 = 1 080 millions, le prêt à 0,45 × 2 700 = 1 215 millions et les fonds propres à 0,15 × 2 700 = 405 millions. Si l''opérateur ne peut pas lever ces 405 millions de fonds propres supplémentaires, il devra soit renégocier les pourcentages avec les bailleurs, soit réduire le périmètre du projet, soit chercher un partenaire supplémentaire.

## 45:00 – 53:00 · Pause et quiz interactif

Trois questions. Un : dans un contrat à prix unitaires, qui porte le risque de quantité ? Deux : si un plan de financement de 2 000 millions de FCFA prévoit 25 % de subvention et 55 % d''emprunt, quel est le pourcentage de fonds propres ? Trois : pourquoi faut-il revérifier la cartographie des parties prenantes en cours de projet et pas seulement au lancement ?

Réponses : le client (maître d''ouvrage) ; 20 % (100 − 25 − 55) ; parce que le pouvoir ou l''intérêt d''une partie prenante peut évoluer, par exemple une communauté qui acquiert un pouvoir de blocage de fait en cours de chantier.

## 53:00 – 1:08:00 · Le risque de change en zone UEMOA

Je rappelle le fait certain : le franc CFA de l''UEMOA est arrimé à l''euro à un taux fixe de 655,957 FCFA pour un euro. Je calcule un exemple : un lot d''équipements facturé 1 500 000 euros représente 1 500 000 × 655,957 = 983 935 500 FCFA, soit environ 983,94 millions de FCFA, un montant qui ne varie pas tant que l''arrimage est maintenu.

Je montre ensuite le contraste : si ce même lot avait été facturé en dollars américains, sa contre-valeur en FCFA aurait varié avec le cours euro-dollar, qui flotte. Un chef de projet doit donc identifier, pour chaque contrat, la monnaie de facturation et vérifier si elle est arrimée ou flottante par rapport à la monnaie de référence du projet, avant de décider s''il faut une clause d''indexation ou un instrument de couverture.

## 1:08:00 – 1:22:00 · La coordination interculturelle, et un cas de friction commenté

Sur le chantier du corridor, l''entreprise de travaux internationale applique une prise de décision très hiérarchisée, tandis que l''agence régionale d''exécution attend une concertation plus collégiale avant toute modification de méthode de travail. Un retard d''approbation d''une modification technique s''ensuit, chaque partie attribuant le retard à l''autre. Je montre comment la charte de projet, rédigée dès le lancement avec des règles explicites de décision (qui approuve quoi, dans quel délai), aurait pu éviter ce malentendu. Je relie ce cas à la cartographie des parties prenantes et au risque contractuel : un retard d''approbation peut ensuite déclencher une réclamation de délai du contractant si le contrat prévoit un délai maximal de réponse du client.

J''ajoute un second exemple, sur le rapport au temps. Dans certaines équipes, un délai de validation de « sous une semaine » est compris comme un objectif indicatif, ajustable selon les priorités du moment ; dans d''autres, c''est un engagement ferme. Sur un projet régional, je recommande de transformer ces attentes implicites en règles écrites et chiffrées dans la charte : nombre de jours ouvrés pour chaque type d''approbation, canal de communication de référence, et personne habilitée à valider en cas d''absence du responsable titulaire. Ce n''est pas une question de bonne ou de mauvaise volonté entre les équipes, mais de normes différentes qu''il faut expliciter avant qu''elles ne deviennent, comme ici, une cause de réclamation contractuelle.

## 1:22:00 – 1:30:00 · Synthèse et évaluation finale

Synthèse : cartographier les parties prenantes et la réévaluer régulièrement, choisir le type de contrat selon le degré de certitude du périmètre et des quantités, construire un plan de financement qui boucle à 100 % en respectant les règles de chaque bailleur, distinguer risque de change réel et simple contre-valeur dans une monnaie arrimée, et anticiper les écarts de coordination interculturelle dès la charte de projet.

Évaluation finale.

1. Qu''est-ce qui distingue un contrat au forfait d''un contrat à prix unitaires ? Réponse : le forfait fixe un prix global pour un périmètre défini, avec le risque de coût chez le contractant ; les prix unitaires fixent un prix par unité, avec le risque de quantité chez le client.
2. Un projet de 1 200 millions de FCFA est financé à 30 % par subvention et 60 % par emprunt. Quel est le montant des fonds propres ? Réponse : 10 % de 1 200, soit 120 millions de FCFA.
3. Un équipement facturé 400 000 euros, quelle est sa contre-valeur en FCFA ? Réponse : 400 000 × 655,957 = 262 382 800 FCFA, environ 262,38 millions.
4. Pourquoi une monnaie arrimée à taux fixe n''expose-t-elle pas, en principe, au risque de change vis-à-vis de la monnaie de référence ? Réponse : parce que le taux de conversion ne varie pas tant que l''arrimage est maintenu, contrairement à une monnaie dont le cours flotte sur le marché des changes.
5. Citez un outil pour prévenir les malentendus interculturels dans un projet international. Réponse : une charte de projet explicitant dès le départ les règles de décision, de délai de réponse et de communication entre les parties.

Merci à toutes et à tous. Si votre mémoire traite d''un projet international ou multi-acteurs, documentez systématiquement la cartographie des parties prenantes, le type de contrat retenu, le plan de financement et les règles de coordination interculturelle retenues : ce sont des éléments très valorisés par un jury professionnel, car ils montrent que vous avez anticipé les sources de friction plutôt que de les découvrir en cours de projet.', 'video', 90, false, 70
from public.courses c where c.slug = 'mas-projet-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Gestion de projets complexes et internationaux');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Négociation et gestion des conflits dans les projets', '## Fiche du cours vidéo

Durée : 1h30. Public : Master 1 gestion de projets. Objectifs : approfondir la préparation d''une négociation (intérêts, BATNA, zone d''accord possible), les styles de gestion des conflits et la méthode de négociation raisonnée, à travers une simulation complète chiffrée. Matériel : tableau, diaporama, calculatrice. Prérequis : la fiche de la leçon 4 de ce cours.

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Bonjour à toutes et à tous. Négocier sans préparation, c''est avancer sans savoir où se trouve la zone où un accord est possible. Aujourd''hui, nous allons préparer et simuler une négociation complète, à partir d''un conflit de chantier chiffré, puis nous verrons comment choisir le bon style de gestion d''un conflit. Fil rouge : un désaccord entre un sous-traitant et un maître d''ouvrage sur une clause de pénalité, sur le chantier régional déjà rencontré dans cette unité.

## 05:00 – 15:00 · Rappel structuré : positions, intérêts, BATNA

Je redessine les notions au tableau avec un nouvel exemple : un sous-traitant réclame 100 millions de FCFA de compensation pour un retard qu''il impute à un tiers. Sa position est le montant demandé. Son intérêt réel pourrait être de préserver sa trésorerie à court terme, ou de protéger sa réputation auprès de ses propres financeurs, ou encore d''éviter un contentieux coûteux pour une petite entreprise. Sa BATNA : s''il n''obtient pas d''accord, il peut saisir une instance d''arbitrage contractuelle, avec un coût et un délai à estimer, et un résultat incertain.

## 15:00 – 28:00 · Construire une zone d''accord possible : correction commentée

Reprenons l''exemple chiffré : le sous-traitant n''acceptera pas moins de 85 millions de FCFA, le maître d''ouvrage ne peut pas payer plus de 95 millions de FCFA sans déroger à son budget validé. Je trace la droite numérique au tableau : de 85 à 95, c''est la zone d''accord possible, large de 10 millions de FCFA.

Je montre ensuite l''effet de l''ancrage : si le maître d''ouvrage ouvre la discussion en proposant 86 millions, il ancre la discussion près du bas de la zone ; si le sous-traitant ouvre à 94 millions, il ancre près du haut. Un ancrage trop éloigné de la zone réaliste (par exemple le sous-traitant qui ouvrirait à 150 millions) risque d''être perçu comme déraisonnable et de dégrader la confiance nécessaire à un accord rapide.

Variante pour approfondir : si le budget du maître d''ouvrage était resserré à 90 millions au lieu de 95, la zone d''accord possible se réduirait à l''intervalle 85-90 millions, soit seulement 5 millions de marge de négociation : plus la zone est étroite, plus les deux parties doivent préparer soigneusement leurs arguments, car la moindre erreur de communication peut faire échouer l''accord.

## 28:00 – 40:00 · Les cinq styles de gestion des conflits, en situation

Je présente cinq mini-scènes et je demande au groupe d''identifier le style illustré avant de révéler la réponse. Scène 1 : un responsable sécurité arrête immédiatement un engin de chantier sans discussion, un risque d''accident étant détecté (compétition, justifiée par l''urgence sécuritaire). Scène 2 : deux chefs de lot laissent de côté un désaccord mineur sur l''ordre d''affichage d''un panneau, pour s''occuper de sujets plus importants (évitement). Scène 3 : un chef de projet accepte de décaler une réunion pour préserver une relation de confiance avec un partenaire clé, alors que l''enjeu du jour était mineur pour lui (accommodation). Scène 4 : deux directions se partagent à parts égales un surcoût imprévu, chacune renonçant à une part de sa demande initiale (compromis). Scène 5 : le maître d''ouvrage et le sous-traitant, dans notre cas de la zone d''accord possible 85-95 millions, cherchent ensemble une solution combinant montant et calendrier de paiement qui satisfasse les deux (collaboration).

## 40:00 – 48:00 · Pause et quiz interactif

Trois questions. Un : quel style privilégier quand l''enjeu est vital et le temps compte plus que le consensus ? Deux : quel style privilégier quand la relation de long terme compte plus que l''enjeu ponctuel ? Trois : la collaboration est-elle toujours le meilleur choix ?

Réponses : la compétition ; l''accommodation (ou le compromis selon le contexte) ; non, la collaboration est souvent la plus durable mais aussi la plus coûteuse en temps, inadaptée à une urgence vitale ou à un enjeu trop mineur pour y consacrer autant d''énergie.

## 48:00 – 1:05:00 · Simulation complète de négociation raisonnée

Je mets en scène la négociation du conflit de 12 jours de blocage évoqué dans le sujet type de cette unité : pénalité potentielle de 1,8 million de FCFA par jour, soit 21,6 millions sur 12 jours, à comparer à une escalade contentieuse estimée à 30 millions de FCFA. Le sous-traitant exige au moins 110 millions de FCFA pour solder le litige, le maître d''ouvrage ne peut pas dépasser 125 millions : zone d''accord possible 110-125 millions.

J''anime la négociation en suivant les quatre principes de la méthode raisonnée. Un, séparer les personnes du problème : je rappelle aux deux rôles de ne pas transformer le désaccord contractuel en attaque personnelle contre l''autre négociateur. Deux, se concentrer sur les intérêts : le sous-traitant veut sécuriser sa trésorerie et son image auprès de ses propres partenaires ; le maître d''ouvrage veut respecter son budget et éviter un signal de faiblesse pour ses futurs chantiers. Trois, générer plusieurs options avant de choisir : je propose au tableau trois options combinant montant et calendrier — option 1, 112 millions payés immédiatement ; option 2, 120 millions payés en deux fois sur deux mois ; option 3, 115 millions plus une clause de bonus si le chantier reprend dans les cinq jours. Quatre, évaluer selon des critères objectifs : coût réel documenté du blocage pour chacun, pratiques habituelles du secteur pour ce type de litige, délai réel de trésorerie de chaque partie.

Je conclus la simulation sur l''option 3 comme exemple d''accord raisonnable : elle reste dans la zone 110-125, elle répond à l''intérêt de trésorerie du sous-traitant par un paiement rapide d''une partie de la somme, et elle incite à une reprise rapide du chantier, ce qui sert aussi l''intérêt du maître d''ouvrage.

## 1:05:00 – 1:20:00 · Quand passer à la médiation interne

Je présente le cas où la négociation directe échoue : les deux parties n''arrivent pas à se mettre d''accord même si une zone d''accord possible existe, souvent par méfiance ou par incompréhension des intérêts réels de l''autre. Le PMO ou un tiers reconnu organise alors une médiation : écoute séparée de chaque partie pour reformuler ses intérêts réels, puis séance commune centrée sur la recherche d''options, animée de façon à éviter que la discussion ne redevienne un affrontement de positions. Je rappelle qu''une médiation réussie ne désigne pas de gagnant ni de perdant : elle fait émerger une solution que les deux parties choisissent elles-mêmes.

Je précise aussi les limites de la médiation interne : si le désaccord porte sur l''interprétation stricte d''une clause contractuelle (par exemple la définition d''un cas de force majeure), ou si l''une des parties refuse catégoriquement de participer de bonne foi, la médiation interne atteint ses limites et il faut recourir aux mécanismes prévus par le contrat (expertise technique indépendante, conciliation, arbitrage), plus formels mais aussi plus coûteux et plus longs que la médiation animée en interne par le PMO ou le chef de projet.

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Synthèse : préparer toute négociation en distinguant position et intérêt, en estimant sa BATNA et celle de l''autre partie, en déterminant la zone d''accord possible, en choisissant le style de gestion du conflit adapté à l''enjeu et à la relation, puis en négociant avec la méthode raisonnée plutôt qu''avec le seul rapport de force.

Évaluation finale.

1. Qu''est-ce qu''une BATNA ? Réponse : la meilleure alternative dont dispose une partie si la négociation échoue, qui détermine sa force relative dans la discussion.
2. Un acheteur ne peut pas payer plus de 70 millions de FCFA, un prestataire n''acceptera pas moins de 72 millions. Y a-t-il une zone d''accord possible ? Réponse : non, le seuil du prestataire dépasse le plafond de l''acheteur ; il faut élargir les termes de l''échange ou chercher une autre solution.
3. Quel style de gestion des conflits convient à un désaccord mineur et sans urgence ? Réponse : l''évitement, ou éventuellement l''accommodation si la relation est importante.
4. Citez les quatre principes de la négociation raisonnée. Réponse : séparer les personnes du problème, se concentrer sur les intérêts, générer plusieurs options, évaluer selon des critères objectifs.
5. Pourquoi une médiation réussie ne doit-elle pas désigner de gagnant ni de perdant ? Réponse : parce que son objectif est de faire émerger une solution acceptée par les deux parties elles-mêmes, ce qui favorise sa mise en œuvre durable, plutôt qu''un arbitrage subi par l''une des deux.

Merci à toutes et à tous. Entraînez-vous à préparer par écrit, avant chaque négociation réelle, même modeste, vos intérêts, votre BATNA et une estimation de la zone d''accord possible, et à repérer dès la préparation si le désaccord relève d''une médiation interne ou d''un mécanisme contractuel plus formel : cette discipline simple fait une vraie différence dans la pratique professionnelle.', 'video', 90, false, 80
from public.courses c where c.slug = 'mas-projet-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Négociation et gestion des conflits dans les projets');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Atelier transversal — arbitrage, montage international et négociation', '## Fiche du cours vidéo

Durée : 1h30. Public : Master 1 gestion de projets. Objectifs : mener un cas pratique transversal filé qui combine arbitrage multi-projets par le PMO, montage contractuel et financier international, et négociation d''un conflit, pour s''entraîner à articuler les trois matières de l''année comme dans une étude de cas de Master. Matériel : tableau, diaporama, calculatrice. Prérequis : les trois leçons et les trois cours vidéo précédents de cette unité.

## Déroulé minuté

## 00:00 – 06:00 · Introduction et présentation du cas filé

Bonjour à toutes et à tous. Dans un examen de Master, un même cas mobilise rarement une seule matière : voici le cas transversal de cette unité, que nous allons suivre du début à la fin. Le groupe fictif Sahel Énergie Consortium pilote simultanément trois projets d''accès à l''électricité en zone rurale au Sénégal et au Mali, financés par plusieurs bailleurs, avec une équipe technique commune limitée en ressources. Un conflit contractuel éclate avec l''un des contractants. Nous allons arbitrer les ressources, analyser le montage contractuel et financier, puis préparer et simuler la négociation du conflit.

## 06:00 – 20:00 · Étape 1 : l''arbitrage multi-projets par le PMO

Le PMO de Sahel Énergie Consortium doit répartir son unique ingénieur réseau senior, disponible 170 heures ce mois-ci, entre trois projets : le projet Louga (mini-centrales solaires, déjà rencontré dans cette unité), le projet Kayes au Mali (raccordement de villages à un réseau existant) et le projet Tambacounda (étude de préfaisabilité d''un mini-réseau hybride). Besoins exprimés : Louga 65 heures, Kayes 80 heures, Tambacounda 45 heures, soit 190 heures demandées contre 170 heures disponibles : une suraffectation de 20 heures, soit 20 / 170 ≈ 11,8 %.

Le PMO a préalablement noté les trois projets selon les critères déjà vus : alignement stratégique 35 %, risque maîtrisé 25 %, urgence 20 %, ROI social perçu 20 %. Louga : 4, 3, 5, 3 → 0,35×4 + 0,25×3 + 0,20×5 + 0,20×3 = 1,40 + 0,75 + 1,00 + 0,60 = 3,75. Kayes : 5, 2, 4, 4 → 1,75 + 0,50 + 0,80 + 0,80 = 3,85. Tambacounda : 3, 5, 2, 2 → 1,05 + 1,25 + 0,40 + 0,40 = 3,10. Classement : Kayes, Louga, Tambacounda.

Proposition d''arbitrage présentée au comité de portefeuille : servir intégralement Kayes (80 h) et Louga (65 h), soit 145 heures sur 170 ; il reste 25 heures pour Tambacounda, qui n''obtient que 25 sur 45 heures demandées, soit environ 55,6 % de son besoin, suffisant pour avancer l''étude de préfaisabilité sans la terminer ce mois-ci.

## 20:00 – 34:00 · Étape 2 : le montage contractuel et financier du projet Kayes

Le projet Kayes, coût total 1 600 millions de FCFA, est financé par une subvention d''un baileur régional (fictif) à 35 %, un prêt concessionnel à 50 % et des fonds propres du consortium pour le solde. Calcul : subvention 0,35 × 1 600 = 560 millions ; prêt 0,50 × 1 600 = 800 millions ; fonds propres 1 600 − 560 − 800 = 240 millions (15 %). Vérification : 560 + 800 + 240 = 1 600, le plan boucle.

Le lot de raccordement est confié à un contractant régional sous un contrat à prix unitaires, car le nombre exact de foyers raccordables par village n''est connu qu''après une enquête de terrain réalisée en parallèle des premiers travaux. Un équipement spécifique est importé pour 500 000 euros, soit 500 000 × 655,957 = 327 978 500 FCFA, environ 327,98 millions de FCFA, sans risque de change tant que l''arrimage euro-FCFA est maintenu.

## 34:00 – 42:00 · Pause et quiz interactif

Trois questions. Un : pourquoi Tambacounda est-il le projet le moins bien servi dans l''arbitrage de ressource, malgré un score honorable ? Deux : pourquoi un contrat à prix unitaires convient-il au lot de raccordement de Kayes ? Trois : quel est le montant des fonds propres nécessaires si le coût du projet Kayes passait à 1 800 millions avec les mêmes pourcentages ?

Réponses : parce qu''il est classé dernier des trois projets sur le score pondéré, et que la capacité disponible ne permet de servir intégralement que les deux projets les mieux classés ; parce que la quantité exacte de foyers raccordables n''est connue qu''après enquête de terrain, donc le risque de quantité doit rester suivi au fur et à mesure plutôt que figé dans un forfait ; 0,15 × 1 800 = 270 millions de FCFA.

## 42:00 – 1:00:00 · Étape 3 : le conflit contractuel et sa préparation

Le contractant régional du lot Kayes réclame une compensation de 90 millions de FCFA, estimant que des modifications tardives de tracé lui ont fait perdre du temps et de l''argent. Le consortium juge cette réclamation excessive au regard du dossier technique. Je construis au tableau la préparation de la négociation.

Position du contractant : 90 millions de FCFA. Intérêt probable : couvrir ses surcoûts réels de mobilisation d''équipe et préserver sa marge sur ce marché, ainsi que sa réputation auprès du consortium pour de futurs appels d''offres. BATNA du contractant : une procédure d''arbitrage contractuelle, incertaine et coûteuse pour une entreprise de taille moyenne.

Position du consortium : refus initial, ou contre-proposition basse. Intérêt probable : respecter l''enveloppe budgétaire validée par les bailleurs, qui exigent une justification détaillée de tout dépassement, et éviter un contentieux qui retarderait le décaissement de la tranche suivante du prêt. BATNA du consortium : chercher un autre contractant pour la suite du chantier, au prix d''un délai supplémentaire et d''un nouvel appel d''offres.

Évaluation chiffrée : un audit technique indépendant, demandé en amont de la négociation, estime le surcoût réellement justifié du contractant à environ 55 millions de FCFA. Je trace la zone d''accord possible probable : le contractant n''acceptera sans doute pas moins de 55 millions (son surcoût documenté), le consortium, sous la pression du calendrier de décaissement du bailleur, pourrait aller jusqu''à 65 millions pour clore rapidement le différend : zone d''accord possible 55-65 millions de FCFA.

## 1:00:00 – 1:15:00 · Simulation de la négociation raisonnée

J''anime la négociation avec les quatre principes. Séparer les personnes du problème : le chef de projet rappelle que l''audit indépendant n''accuse personne, il objective le dossier. Se concentrer sur les intérêts : trésorerie et réputation du contractant, respect du calendrier de décaissement du bailleur pour le consortium. Générer des options : option 1, paiement de 58 millions immédiatement, dossier clos ; option 2, paiement de 60 millions en deux tranches liées à l''avancement du reste du chantier ; option 3, paiement de 55 millions plus une clause de priorité sur un prochain lot du consortium, valorisant la relation future. Évaluer selon des critères objectifs : le rapport d''audit indépendant comme référence principale, les délais de décaissement du bailleur comme contrainte de calendrier.

Choix retenu dans la simulation : l''option 2, qui reste dans la zone d''accord possible, limite l''impact de trésorerie immédiat pour le consortium tout en couvrant le surcoût documenté du contractant, et maintient la relation pour la poursuite du chantier.

## 1:15:00 – 1:30:00 · Synthèse générale et évaluation finale

Synthèse transversale : un même cas de Master articule souvent un arbitrage de ressource par le PMO (qui projet prioriser, avec quelle justification chiffrée), un montage contractuel et financier international (quel contrat, quel plan de financement, quel risque de change), et une négociation de conflit (position, intérêt, BATNA, zone d''accord possible, méthode raisonnée). La qualité d''une réponse de Master se juge à la capacité de relier ces trois niveaux dans une recommandation cohérente, documentée et assumée, plutôt que de les traiter comme des exercices isolés.

Évaluation finale.

1. Dans l''arbitrage du PMO, pourquoi Kayes passe-t-il devant Louga dans le classement malgré un risque moins bien maîtrisé ? Réponse : parce que le poids de l''alignement stratégique (35 %) et celui de l''urgence (20 %), sur lesquels Kayes est mieux noté, pèsent davantage dans le score final que l''écart sur le critère risque.
2. Pourquoi le consortium demande-t-il un audit indépendant avant de négocier la réclamation du contractant ? Réponse : pour objectiver le désaccord avec un critère externe et crédible, condition de la négociation raisonnée fondée sur des critères objectifs plutôt que sur le seul rapport de force.
3. Si le coût du projet Kayes était financé à 30 % de subvention et 55 % d''emprunt, quel serait le pourcentage de fonds propres ? Réponse : 15 % (100 − 30 − 55).
4. Que risque le consortium s''il laisse le conflit s''enliser sans négociation ni médiation ? Réponse : un retard du chantier, une dégradation de la relation avec le contractant, et potentiellement un retard du décaissement de la tranche suivante du prêt si le bailleur s''inquiète du calendrier.
5. Citez les trois dimensions qu''un cas transversal de Master en gestion de projets combine souvent. Réponse : l''arbitrage multi-projets et le rôle du PMO, le montage contractuel et financier international, la négociation et la gestion des conflits.

Merci à toutes et à tous pour cette unité. Pour votre mémoire ou votre projet tutoré, entraînez-vous à repérer, dans votre propre terrain, ces trois dimensions et à les relier explicitement : c''est exactement ce que recherchent un jury de Master et, plus tard, un employeur.', 'video', 90, false, 90
from public.courses c where c.slug = 'mas-projet-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Atelier transversal — arbitrage, montage international et négociation');

-- Cours : Gestion de projets Master 2 : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'mas-projet-m2', (select id from public.levels where name = 'Master 2'), null, 'Gestion de projets', 'Gestion de projets Master 2 : réussir ses examens', 'Ce cours prépare les examens de deuxième année de Master en gestion de projets : transformation digitale et innovation projet (méthodes hybrides, agilité à l''échelle), pilotage de la performance et audit de projets, méthodologie du mémoire professionnel et soutenance. Il comprend des fiches avancées, des cas d''entreprise sénégalais et africains fictifs, un sujet type et quatre cours vidéo de 1h30, dont un atelier complet de méthodologie du mémoire et simulation de soutenance. Prérequis : Master 1 en gestion de projets (management multi-projets, PMO, projets internationaux, négociation).', true, 712
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Master 2 en Gestion de projets', '## Objectifs de la leçon

Comprendre les spécificités de la dernière année de Master en gestion de projets, situer les trois matières avancées (transformation digitale et innovation projet, pilotage de la performance et audit de projets, méthodologie du mémoire professionnel et soutenance), connaître les épreuves attendues et bâtir un plan de révision sur six semaines qui intègre la préparation du mémoire.

## Le Master 2 : l''année de la synthèse et de la soutenance

Le Master 2 est l''année où tout converge : les outils techniques du Master 1 (PMO, montages internationaux, négociation) et de la Licence doivent désormais s''articuler avec une capacité à innover dans la pratique projet, à mesurer et auditer la performance, et à produire un travail personnel approfondi, le mémoire professionnel ou de recherche, défendu devant un jury. Les modalités précises (durée du stage, poids du mémoire et de la soutenance, composition du jury) sont fixées par votre établissement : consultez son règlement.

Le Master 2 ne répète pas le Master 1 : il n''y revient pas sur la gouvernance multi-projets, les contrats internationaux ou la négociation déjà traités, mais s''appuie sur eux pour aller plus loin, vers la transformation des pratiques projet elles-mêmes, leur évaluation rigoureuse, et la capacité à produire et défendre un travail de recherche appliquée.

## Les trois matières avancées de l''année

- Transformation digitale et innovation projet : méthodes hybrides combinant approches prédictives et agiles, cadres d''agilité à l''échelle pour plusieurs équipes coordonnées, outils numériques de pilotage, apport et limites de l''intelligence artificielle dans la gestion de projet.
- Pilotage de la performance et audit de projets : modèles de maturité organisationnelle, tableaux de bord équilibrés multidimensionnels, audit de projet et de portefeuille, revue post-projet et capitalisation des enseignements.
- Méthodologie du mémoire professionnel et soutenance : construction d''une problématique, revue de littérature académique et professionnelle, choix d''une méthodologie de collecte et d''analyse, structuration du mémoire, préparation et simulation de la soutenance.

## Les types d''épreuves attendues

- Étude de cas de transformation digitale : choisir une démarche hybride ou une forme d''agilité à l''échelle adaptée à un contexte donné, calculer un retour sur investissement ou une capacité d''équipe.
- Étude de cas d''audit : calculer des indicateurs de performance consolidés, situer une organisation sur un modèle de maturité, rédiger des recommandations d''audit.
- Questions de méthodologie : critiquer une problématique de mémoire, proposer un plan détaillé, identifier les limites d''une méthode de collecte de données.
- Mini-dissertation ou question de synthèse transversale.
- Soutenance du mémoire professionnel ou de recherche, devant un jury, avec questions.

## Méthode de travail pour cette dernière année

Au Master 2, chaque calcul doit déboucher sur une lecture managériale : un retour sur investissement se compare à un seuil de décision explicite, un score de maturité situe l''organisation sur une trajectoire de progression, un indicateur de performance se compare à une cible et à une tendance. Pour le mémoire, commencez tôt : une problématique mûrit par itérations successives, rarement du premier jet, et une revue de littérature solide croise sources académiques et pratiques professionnelles plutôt que de les juxtaposer.

Pour la soutenance, préparez un exposé court (souvent 15 à 20 minutes selon votre établissement) qui va droit à la problématique, à la méthode et aux résultats, laissant le temps aux questions du jury, qui comptent souvent autant que l''exposé lui-même dans l''appréciation finale.

## Plan de révision sur six semaines

- Semaine 1 : méthodes hybrides et agilité à l''échelle ; deux cas de choix de démarche.
- Semaine 2 : calculs de retour sur investissement digital et de capacité d''équipe ; fiches outils numériques et apports de l''intelligence artificielle.
- Semaine 3 : modèles de maturité, tableaux de bord équilibrés, audit de projet ; un cas chiffré par jour.
- Semaine 4 : méthodologie du mémoire : problématique, revue de littérature, méthode de collecte ; relecture critique de son propre plan de mémoire.
- Semaine 5 : cas transversaux combinant les trois matières ; répétition de la soutenance devant un pair ou un tuteur.
- Semaine 6 : deux sujets types en conditions réelles, corrections, répétition finale de la soutenance, fiches de synthèse.

## Points clés

- Le Master 2 articule transformation des pratiques, mesure de la performance et production d''un travail de recherche appliquée.
- Trois matières : transformation digitale et innovation, pilotage de la performance et audit, méthodologie du mémoire et soutenance.
- La soutenance se prépare comme un exercice en soi, distinct de la rédaction du mémoire.

## Exercices pratiques

1. Citez les trois matières avancées du Master 2 et un outil caractéristique de chacune.
2. Pourquoi le Master 2 ne revient-il pas sur la négociation ou les contrats internationaux déjà traités en Master 1 ?
3. Que doit comporter, au minimum, l''exposé d''une soutenance de mémoire professionnel ?
4. Pourquoi une problématique de mémoire mûrit-elle rarement du premier jet ?
5. Cas pratique : Aïda, en Master 2, doit rendre son mémoire dans huit semaines, le soutenir dans dix semaines, et passer ses examens dans six semaines. Proposez une organisation.

## Corrigé

1. Transformation digitale et innovation : le calcul de retour sur investissement d''un outil numérique ou le choix d''une méthode hybride. Pilotage et audit : le tableau de bord équilibré ou le modèle de maturité. Méthodologie du mémoire : le plan détaillé ou la grille de préparation de la soutenance.

2. Parce que ce sont des matières déjà traitées en profondeur en Master 1 ; le Master 2 s''appuie sur ces acquis pour aller vers la transformation des pratiques, leur mesure et la production d''un travail de recherche appliquée, sans répéter ce qui a déjà été vu.

3. Au minimum : la présentation claire de la problématique, la méthode retenue et sa justification, les principaux résultats, et des recommandations opérationnelles, dans un temps limité qui laisse une place réelle aux questions du jury.

4. Parce qu''elle doit à la fois être suffisamment précise pour être traitée dans le temps disponible, suffisamment riche pour mériter un mémoire, et ancrée dans un terrain réel ou réaliste : ces trois exigences se concilient rarement dès la première formulation et s''affinent au fil des lectures et des premiers échanges avec le terrain.

5. Exemple : chaque matin, deux heures de révision selon le plan de six semaines ; chaque après-midi, une heure et demie sur le mémoire (finalisation de la rédaction semaines 1 et 2, relecture et mise en forme semaines 3 et 4) ; les semaines 5 et 6, alternance entre sujets types le matin et répétitions de soutenance l''après-midi, devant un tuteur ou un pair, chronométrées.', 'texte', 55, true, 10
from public.courses c where c.slug = 'mas-projet-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Master 2 en Gestion de projets');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Transformation digitale et innovation projet : l''essentiel pour l''examen', '## Objectifs

Distinguer méthodes prédictives, agiles et hybrides ; décrire les principes de l''agilité à l''échelle pour plusieurs équipes coordonnées ; calculer un retour sur investissement d''un outil numérique de gestion de projet et une capacité d''équipe en points de vélocité ; situer les apports et les limites de l''intelligence artificielle en gestion de projet.

## Fiche 1 : méthodes prédictives, agiles et hybrides

Une méthode prédictive planifie l''essentiel en amont (budget, délais, périmètre figé) avant l''exécution : adaptée quand les exigences sont stables et les contraintes réglementaires fortes. Une méthode agile construit le produit par itérations courtes, avec un périmètre qui s''affine au fil des retours : adaptée quand les exigences évoluent et que la valeur doit être livrée rapidement par morceaux. Une méthode hybride combine les deux : par exemple, un cadrage prédictif pour les jalons réglementaires et les livrables contractuels d''un projet (dates de dépôt de dossier, phases de certification), avec une exécution agile à l''intérieur de chaque phase pour le développement technique.

Exemple fictif : une banque régionale sénégalaise modernise son application mobile tout en respectant un calendrier réglementaire fixé par son régulateur pour la mise en conformité d''un nouveau dispositif de sécurité. Le projet garde un planning prédictif pour les jalons réglementaires (dépôt du dossier de conformité, audit externe), mais organise le développement de l''application en sprints agiles, ce qui permet d''ajuster les fonctionnalités selon les retours des utilisateurs tests sans remettre en cause les dates réglementaires non négociables.

## Fiche 2 : l''agilité à l''échelle

Quand plusieurs équipes agiles doivent livrer un produit commun, une simple multiplication de sprints indépendants crée des dépendances non gérées et des conflits de priorités. Des cadres d''agilité à l''échelle (plusieurs approches existent dans la pratique professionnelle, chacune avec ses propres principes et son propre vocabulaire) organisent la coordination : un rythme commun de planification sur plusieurs sprints (souvent appelé incrément de programme), des synchronisations régulières entre équipes, et une gouvernance qui arbitre les dépendances et les priorités au niveau du programme plutôt qu''au niveau de chaque équipe isolée.

Le principe général à retenir pour l''examen, au-delà du nom de tel ou tel cadre : plus le nombre d''équipes agiles augmente, plus il faut un rythme de synchronisation explicite et une gouvernance de programme, sous peine de dépendances non gérées qui ralentissent tout le monde.

## Fiche 3 : calculer la capacité d''une équipe et planifier un incrément

La vélocité mesure la quantité de travail (en points) qu''une équipe livre par sprint, en moyenne sur plusieurs sprints passés. Exemple fictif : une équipe affiche les vélocités suivantes sur cinq sprints : 32, 28, 35, 30, 40 points. Vélocité moyenne = (32 + 28 + 35 + 30 + 40) / 5 = 165 / 5 = 33 points par sprint.

Pour un reliquat de 260 points de backlog, le nombre de sprints nécessaires est 260 / 33 ≈ 7,88, arrondi à 8 sprints, puisqu''on ne peut pas livrer une fraction de sprint. À l''échelle d''un programme de quatre équipes de vélocité comparable, sur un incrément de cinq sprints, la capacité d''une équipe pour l''incrément est 33 × 5 = 165 points, et la capacité totale du programme est 165 × 4 = 660 points. Cette capacité chiffrée sert de base à la planification de l''incrément : on n''engage pas plus de travail que cette capacité ne permet d''en absorber, sous peine de reports systématiques qui désorganisent la confiance entre équipes et parties prenantes.

## Fiche 4 : calculer le retour sur investissement d''un outil numérique

Exemple fictif : une entreprise de BTP sénégalaise investit dans un outil numérique de pilotage de projet (planification partagée, suivi des coûts en temps réel) pour un coût de mise en œuvre de 45 millions de FCFA, avec des économies annuelles estimées à 18 millions de FCFA (réduction des heures supplémentaires de reporting manuel, réduction des pénalités de retard grâce à une détection plus précoce des dérives).

Délai de récupération = coût / économies annuelles = 45 / 18 = 2,5 ans. Si la direction exige un retour sur investissement en moins de trois ans pour ce type d''outil, le projet est acceptable. Un bon devoir de Master ajoute une discussion des limites de ce calcul simplifié : il ignore l''actualisation des flux futurs, les coûts de maintenance récurrents de l''outil, et la courbe d''apprentissage des équipes, qui peut retarder la réalisation effective des économies annoncées durant les premiers mois d''utilisation.

## Fiche 5 : l''intelligence artificielle en gestion de projet, apports et limites

Des outils d''aide fondés sur l''intelligence artificielle peuvent assister certaines tâches de gestion de projet : détection précoce d''anomalies dans l''avancement à partir de données historiques, génération de brouillons de rapports ou de comptes rendus, aide à la planification en suggérant des enchaînements de tâches à partir de projets similaires passés. Ces outils restent des aides à la décision, pas des décideurs : ils s''appuient sur des données passées qui peuvent être incomplètes, biaisées ou peu représentatives d''un contexte nouveau, et leurs suggestions doivent être validées par le jugement professionnel du chef de projet, qui reste responsable des décisions prises. Un usage raisonnable documente toujours la part laissée à l''outil et la part de validation humaine, en particulier pour les décisions à fort enjeu financier ou contractuel.

## Points clés

- Les méthodes hybrides combinent cadrage prédictif sur les jalons contraints et exécution agile sur le reste.
- L''agilité à l''échelle exige un rythme de synchronisation explicite et une gouvernance de programme.
- La vélocité moyenne permet de planifier un reliquat de backlog et une capacité d''incrément.
- Un retour sur investissement simplifié doit être complété par une discussion de ses limites.
- L''intelligence artificielle assiste la gestion de projet mais ne remplace pas le jugement professionnel responsable.

## Exercices pratiques

1. Pourquoi une méthode hybride convient-elle à un projet avec des jalons réglementaires fixes et un produit numérique à construire par itérations ?
2. Une équipe affiche les vélocités 25, 30, 27, 32, 26 sur cinq sprints. Calculez sa vélocité moyenne, puis le nombre de sprints nécessaires pour un reliquat de 200 points.
3. Un outil numérique coûte 60 millions de FCFA et permet d''économiser 25 millions de FCFA par an. Calculez le délai de récupération. Est-il acceptable pour un seuil de décision de trois ans ?
4. Citez une limite d''un outil d''aide fondé sur l''intelligence artificielle en gestion de projet.
5. Cas pratique : un programme de trois équipes, chacune de vélocité moyenne 30 points par sprint, planifie un incrément de quatre sprints. Calculez la capacité totale du programme, puis discutez ce qui pourrait l''empêcher d''être pleinement utilisée.
6. Cas pratique : la banque régionale de la fiche 1 doit repousser son audit de conformité de deux sprints à cause d''un retard du régulateur. Quel impact cela a-t-il sur la partie agile du projet, et comment le chef de projet peut-il en tirer parti ?

## Corrigé

1. Parce que les jalons réglementaires exigent des dates fermes et un périmètre de conformité non négociable, relevant d''une logique prédictive, tandis que le développement du produit numérique bénéficie des retours itératifs des utilisateurs, relevant d''une logique agile ; combiner les deux évite de figer prématurément des fonctionnalités incertaines tout en respectant des contraintes fermes.

2. Vélocité moyenne = (25 + 30 + 27 + 32 + 26) / 5 = 140 / 5 = 28 points. Nombre de sprints = 200 / 28 ≈ 7,14, arrondi à 8 sprints.

3. Délai de récupération = 60 / 25 = 2,4 ans. Inférieur à trois ans : le projet est acceptable au regard du seuil de décision donné.

4. Exemple : l''outil s''appuie sur des données historiques qui peuvent être incomplètes ou peu représentatives d''un contexte nouveau, ce qui peut conduire à des suggestions erronées si elles ne sont pas validées par le jugement professionnel du chef de projet.

5. Capacité totale = 30 × 4 × 3 = 360 points. Ce qui pourrait l''empêcher d''être pleinement utilisée : des dépendances non anticipées entre les trois équipes (une équipe attend un livrable d''une autre), une sous-estimation de la charge de synchronisation elle-même, ou une indisponibilité partielle de certains membres pendant l''incrément.

6. Le retard de deux sprints sur l''audit de conformité libère du temps avant l''échéance réglementaire sans urgence supplémentaire sur la partie agile : le chef de projet peut en tirer parti pour ajouter un ou deux sprints supplémentaires de tests utilisateurs ou de corrections sur l''application mobile, améliorant la qualité du produit livré sans subir de pression de délai artificielle, à condition de documenter ce choix auprès du comité de pilotage.', 'texte', 85, false, 20
from public.courses c where c.slug = 'mas-projet-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Transformation digitale et innovation projet : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Pilotage de la performance et audit de projets : l''essentiel pour l''examen', '## Objectifs

Situer une organisation sur un modèle de maturité en gestion de projet ; construire et interpréter un tableau de bord équilibré multidimensionnel ; mener un audit de performance consolidé sur un portefeuille avec la valeur acquise ; organiser une revue post-projet qui capitalise les enseignements.

## Fiche 1 : les modèles de maturité organisationnelle

Un modèle de maturité situe une organisation sur une échelle de progression dans ses pratiques de gestion de projet, généralement de cinq niveaux : pratiques ad hoc et dépendantes des individus ; pratiques émergentes et partiellement documentées ; pratiques standardisées à l''échelle de l''organisation ; pratiques pilotées par des indicateurs de performance ; pratiques optimisées en amélioration continue. Plusieurs cadres de référence existent dans la pratique professionnelle pour évaluer cette maturité ; l''essentiel pour l''examen est de savoir situer une organisation à partir de symptômes observables (absence de méthode commune, méthode commune mais peu suivie, méthode suivie et mesurée, amélioration continue outillée) plutôt que de mémoriser le nom précis d''un référentiel.

Exemple fictif : une entreprise de distribution sénégalaise gère ses projets informatiques sans méthode commune, chaque chef de projet improvisant ses propres outils ; elle se situe au niveau 1 ou 2. Un audit de maturité recommande d''abord la standardisation (modèles communs, vocabulaire partagé) avant d''envisager un pilotage fin par indicateurs, qui suppose déjà des données collectées de façon homogène.

## Fiche 2 : le tableau de bord équilibré multidimensionnel

Au-delà du tableau de bord de projet vu en Master 1, un audit de performance de Master 2 mobilise souvent un tableau de bord équilibré, qui évalue la performance selon plusieurs axes pondérés plutôt qu''un seul indicateur financier.

Exemple fictif : un audit de performance d''un projet d''infrastructure évalue quatre axes pondérés : finance 30 %, satisfaction des bénéficiaires 25 %, qualité des processus 25 %, apprentissage et montée en compétence de l''équipe 20 %, chacun noté de 0 à 5 par les auditeurs. Scores obtenus : finance 4, bénéficiaires 3, processus 4, apprentissage 5.

Score global = 0,30 × 4 + 0,25 × 3 + 0,25 × 4 + 0,20 × 5 = 1,20 + 0,75 + 1,00 + 1,00 = 3,95 sur 5, soit 3,95 / 5 × 100 ≈ 79 %. Un bon rapport d''audit ne se contente pas du score global : il identifie l''axe le plus faible (ici la satisfaction des bénéficiaires, à 3 sur 5) et propose une action corrective ciblée, plutôt que de diluer le diagnostic dans une moyenne globalement satisfaisante.

## Fiche 3 : auditer la performance consolidée d''un portefeuille par la valeur acquise

La valeur acquise (vue en Licence pour un seul projet) se consolide au niveau d''un portefeuille pour un audit de Master. Exemple fictif, trois projets d''un même portefeuille, avec valeur planifiée (PV), valeur acquise (EV) et coût réel (AC) en millions de FCFA :

- Projet 1 : PV 120, EV 100, AC 110. SPI = 100/120 ≈ 0,833. CPI = 100/110 ≈ 0,909.
- Projet 2 : PV 90, EV 95, AC 85. SPI = 95/90 ≈ 1,056. CPI = 95/85 ≈ 1,118.
- Projet 3 : PV 60, EV 50, AC 55. SPI = 50/60 ≈ 0,833. CPI = 50/55 ≈ 0,909.

L''indicateur consolidé du portefeuille ne doit pas être la moyenne simple des trois SPI ou des trois CPI, qui sous-pondérerait les grands projets : il se calcule en rapportant la somme des valeurs acquises à la somme des valeurs planifiées, puis à la somme des coûts réels. SPI consolidé = (100 + 95 + 50) / (120 + 90 + 60) = 245 / 270 ≈ 0,907. CPI consolidé = 245 / (110 + 85 + 55) = 245 / 250 = 0,98. Lecture : le portefeuille est globalement en léger retard (SPI inférieur à 1) mais maîtrise ses coûts de près (CPI proche de 1), avec le projet 1 comme principal point de vigilance sur le délai.

## Fiche 4 : la revue post-projet et la capitalisation

Une revue post-projet, organisée à la clôture, ne se limite pas à un bilan financier : elle documente ce qui a bien fonctionné, ce qui a posé problème, et surtout les enseignements transférables à de futurs projets (un modèle de contrat à éviter, un délai de décaissement bailleur à anticiper, une compétence rare à sécuriser plus tôt). Sans un support qui centralise ces enseignements (base de connaissances, registre de leçons apprises), chaque nouveau projet redécouvre les mêmes problèmes, ce qui est un signe classique d''organisation restée à un faible niveau de maturité malgré de bons projets pris isolément.

## Points clés

- Un modèle de maturité situe une organisation à partir de symptômes observables, pas seulement d''un référentiel mémorisé.
- Un tableau de bord équilibré pondère plusieurs axes et doit faire remonter l''axe le plus faible, pas seulement un score global.
- L''indicateur consolidé d''un portefeuille se calcule sur les sommes de valeurs, jamais sur une moyenne simple des indicateurs individuels.
- Une revue post-projet sans capitalisation documentée ne fait pas progresser la maturité organisationnelle.

## Exercices pratiques

1. À quel niveau de maturité approximatif situeriez-vous une organisation où chaque chef de projet utilise ses propres outils, sans modèle commun ?
2. Avec les mêmes axes et pondérations que la fiche 2, un autre projet obtient 3, 4, 2, 4. Calculez son score global en pourcentage.
3. Quatre projets d''un portefeuille ont pour PV, EV, AC (en millions de FCFA) : (80, 75, 70), (50, 55, 60), (100, 90, 95), (40, 35, 38). Calculez le SPI et le CPI consolidés du portefeuille.
4. Pourquoi ne faut-il pas calculer un indicateur consolidé de portefeuille comme la moyenne simple des indicateurs de chaque projet ?
5. Citez deux éléments qu''une revue post-projet doit documenter au-delà du bilan financier.
6. Cas pratique : l''audit de la fiche 2 relève un axe « satisfaction des bénéficiaires » à 3 sur 5, en net retrait par rapport aux trois autres axes. Proposez deux actions correctives et la façon de vérifier leur effet.

## Corrigé

1. Niveau 1 (ad hoc) ou au mieux niveau 2 (pratiques émergentes), puisque l''absence de modèle commun et la dépendance aux individus sont les symptômes typiques de ces premiers niveaux.

2. Score = 0,30 × 3 + 0,25 × 4 + 0,25 × 2 + 0,20 × 4 = 0,90 + 1,00 + 0,50 + 0,80 = 3,20 sur 5, soit 3,20 / 5 × 100 = 64 %, nettement en dessous du score de 79 % de l''exemple de la fiche 2.

3. Somme PV = 80 + 50 + 100 + 40 = 270. Somme EV = 75 + 55 + 90 + 35 = 255. Somme AC = 70 + 60 + 95 + 38 = 263. SPI consolidé = 255 / 270 ≈ 0,944. CPI consolidé = 255 / 263 ≈ 0,970. Le portefeuille est légèrement en retard mais maîtrise ses coûts de près.

4. Parce que la moyenne simple donne le même poids à un petit projet et à un grand projet, ce qui déforme la lecture de la performance réelle du portefeuille ; rapporter les sommes de valeurs pondère naturellement chaque projet selon son poids financier réel.

5. Exemples : les causes des écarts de délai ou de coût rencontrés et la façon dont ils ont été résolus ; les compétences rares qui ont manqué ou ont été mal anticipées, à sécuriser plus tôt sur un projet futur similaire.

6. Actions correctives possibles : organiser des consultations régulières des bénéficiaires pendant l''exécution plutôt qu''une seule enquête finale ; renforcer la communication sur les bénéfices concrets du projet pour mieux aligner les attentes. Vérification : refaire une mesure de satisfaction (même méthode, même échelle) après la mise en œuvre des actions, et comparer le nouveau score à 3 sur 5 pour objectiver le progrès.', 'texte', 85, false, 30
from public.courses c where c.slug = 'mas-projet-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Pilotage de la performance et audit de projets : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Méthodologie du mémoire professionnel et soutenance : l''essentiel pour l''examen', '## Objectifs

Construire une problématique de mémoire professionnel pertinente et traitable ; distinguer revue de littérature académique et revue de pratiques professionnelles ; choisir une méthodologie de collecte adaptée à son terrain ; structurer un mémoire et préparer une soutenance efficace devant un jury.

## Fiche 1 : qu''est-ce qu''un mémoire professionnel en gestion de projet

Le mémoire professionnel applique une démarche rigoureuse à une situation réelle ou réaliste de gestion de projet, pour produire une analyse utile et des recommandations opérationnelles, en s''appuyant sur une littérature existante et sur une collecte de données de terrain. Il se distingue d''un mémoire de recherche académique par sa finalité surtout opérationnelle, sans renoncer à la rigueur méthodologique : les deux exigent une problématique claire, une revue de littérature sérieuse et une méthode explicite.

## Fiche 2 : construire une problématique

Une bonne problématique transforme un sujet large en une question précise, traitable dans le temps et les ressources disponibles. Exemple de sujet trop large : « La gestion de projet dans les PME sénégalaises. » Exemple de problématique traitable : « Dans quelle mesure l''adoption d''un bureau de projets léger améliore-t-elle le respect des délais dans les PME de services numériques de la région de Dakar ? » La problématique traitable nomme un objet précis (le PMO léger), un contexte délimité (PME de services numériques, région de Dakar) et un critère observable (le respect des délais), ce qui permet de choisir une méthode de collecte cohérente.

Une problématique mûrit par itérations : une première lecture de la littérature et un premier contact avec le terrain font souvent apparaître qu''elle est trop large, trop étroite, ou déjà largement traitée ailleurs ; il est normal, et même recommandé, de la reformuler plusieurs fois avant de la figer avec son tuteur.

## Fiche 3 : la revue de littérature

La revue académique mobilise des travaux de recherche validés (articles, ouvrages scientifiques), avec une démarche explicite de sélection des sources et des références précises. La revue de pratiques professionnelles mobilise des rapports d''organisations, des études de cas publiées et des retours d''expérience de praticiens, utiles pour ancrer le mémoire dans la réalité du secteur. Un mémoire professionnel solide croise les deux : la littérature académique apporte des concepts et des résultats de recherches antérieures pour interpréter ce qu''on observe sur le terrain, les pratiques professionnelles montrent comment les praticiens appliquent ou adaptent ces concepts concrètement. Ne jamais inventer une référence ou une citation qu''on n''a pas lue soi-même : une fausse référence, repérée par un jury, discrédite immédiatement le sérieux du travail.

## Fiche 4 : choisir une méthode de collecte

Le choix de la méthode dépend de la nature de la question. Une question qui demande de comprendre en profondeur un mécanisme ou un vécu (pourquoi telle pratique est adoptée ou rejetée) oriente vers une méthode qualitative : entretiens semi-structurés, étude de cas approfondie. Une question qui demande de mesurer une fréquence ou une corrélation sur un ensemble de cas oriente vers une méthode quantitative : questionnaire, analyse de données existantes. Beaucoup de mémoires professionnels combinent les deux : par exemple quelques entretiens exploratoires pour construire un questionnaire pertinent, puis un questionnaire pour mesurer l''ampleur d''un phénomène identifié par les entretiens.

Exemple fictif de calcul simple à connaître : un questionnaire envoyé à 60 chefs de projet reçoit 45 réponses complètes. Taux de réponse = 45 / 60 × 100 = 75 %. Ce taux doit être rapporté dans le mémoire et discuté : un taux élevé renforce la représentativité des résultats, un taux faible impose de la prudence dans leur généralisation, surtout si les répondants pourraient différer systématiquement des non-répondants (par exemple des professionnels plus disponibles ou plus intéressés par le sujet).

## Fiche 5 : structurer le mémoire

Un plan type, à adapter selon les consignes de l''établissement : introduction et problématique ; revue de littérature ; méthodologie (terrain, méthode de collecte, limites assumées) ; présentation des résultats ; discussion des résultats à la lumière de la littérature ; recommandations opérationnelles ; conclusion. La discussion est la partie souvent la plus faible des mémoires d''étudiants qui se contentent de décrire leurs résultats sans les confronter explicitement à ce que disait la littérature : un bon mémoire dit clairement si ses résultats confirment, nuancent ou contredisent les travaux antérieurs, et pourquoi.

## Fiche 6 : préparer et réussir la soutenance

La soutenance n''est pas une lecture du mémoire mais un exposé construit, souvent limité à 15-20 minutes selon l''établissement, qui va droit à la problématique, à la méthode et aux résultats principaux, en laissant volontairement de côté le détail que le jury peut lire dans le document écrit. Préparez une diapositive de synthèse des recommandations, car c''est souvent la dernière image qui reste au jury. Anticipez les questions attendues : sur les limites méthodologiques assumées (taille de l''échantillon, biais possible), sur la généralisation des résultats, et sur ce que vous feriez différemment avec plus de temps. Répondre « je ne sais pas » à une question pointue est souvent moins pénalisant qu''une réponse approximative qui dévoile une incompréhension de sa propre méthode.

## Points clés

- Une problématique traitable nomme un objet précis, un contexte délimité et un critère observable.
- La revue de littérature croise sources académiques et pratiques professionnelles, sans jamais inventer de référence.
- La méthode de collecte (qualitative, quantitative, mixte) se choisit selon la nature de la question.
- La discussion confronte explicitement les résultats à la littérature ; la soutenance se prépare comme un exercice distinct de la rédaction.

## Exercices pratiques

1. Reformulez le sujet trop large « La transformation digitale des entreprises africaines » en une problématique traitable, avec un objet, un contexte et un critère observable.
2. Quelle méthode de collecte choisiriez-vous pour comprendre pourquoi certains chefs de projet résistent à l''adoption d''un nouvel outil numérique ? Justifiez.
3. Un questionnaire envoyé à 80 répondants potentiels reçoit 52 réponses. Calculez le taux de réponse et discutez-le brièvement.
4. Pourquoi une fausse référence citée dans un mémoire est-elle particulièrement grave, au-delà du risque de la détecter ?
5. Cas pratique : lors d''une répétition de soutenance, un pair demande à l''étudiant pourquoi il n''a interrogé que 10 chefs de projet dans une seule entreprise. Proposez une réponse argumentée qui assume les limites sans se décrédibiliser.

## Corrigé

1. Exemple : « Dans quelle mesure l''adoption d''une signature électronique améliore-t-elle le délai de traitement des contrats dans les PME de distribution de la région de Thiès ? » Objet : la signature électronique. Contexte : PME de distribution, région de Thiès. Critère observable : le délai de traitement des contrats.

2. Une méthode qualitative (entretiens semi-structurés), car la question porte sur la compréhension d''un mécanisme de résistance (motivations, craintes, vécu des chefs de projet), ce qu''un questionnaire fermé capterait mal ; des entretiens approfondis permettent de faire émerger des raisons non anticipées.

3. Taux de réponse = 52 / 80 × 100 = 65 %. Ce taux est raisonnable mais doit être discuté : il faut signaler si les non-répondants pourraient différer systématiquement des répondants (disponibilité, intérêt pour le sujet), ce qui limiterait la généralisation des résultats.

4. Parce qu''une référence inventée n''est pas seulement une erreur ponctuelle : elle met en doute la sincérité de l''ensemble du travail et peut être assimilée à une fraude académique, avec des conséquences disciplinaires bien plus graves qu''une faiblesse méthodologique assumée et discutée.

5. Exemple de réponse : « J''assume cette limite : l''échantillon de 10 chefs de projet dans une seule entreprise ne permet pas de généraliser les résultats à l''ensemble du secteur, et je le précise explicitement dans ma partie méthodologie. Ce choix s''explique par un accès de terrain privilégié qui m''a permis des entretiens approfondis ; une recherche future pourrait élargir l''échantillon à plusieurs entreprises pour tester la généralisation de ces premiers résultats. »', 'texte', 85, false, 40
from public.courses c where c.slug = 'mas-projet-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Méthodologie du mémoire professionnel et soutenance : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Master 2 en Gestion de projets', '## Présentation

Sujet d''entraînement multi-matières, non officiel, pour une épreuve de 3 heures de Master 2 en gestion de projets. Barème indicatif, non officiel. Calculatrice autorisée. Toutes les valeurs et pondérations sont fictives.

## Énoncé

Contexte. Le groupe fictif Dakar Services Numériques pilote un portefeuille de projets digitaux et prépare un audit annuel de performance ; l''une des équipes termine en parallèle son mémoire professionnel sur la transformation de ses pratiques.

Partie 1 – Transformation digitale et innovation projet (7 points)

1. Un outil numérique de pilotage coûte 60 millions de FCFA et permet d''économiser 25 millions de FCFA par an. Calculez le délai de récupération. Est-il acceptable pour un seuil de décision de trois ans ? (2 points)
2. Une équipe affiche les vélocités 34, 29, 31, 36, 30 sur cinq sprints. Calculez la vélocité moyenne, puis le nombre de sprints nécessaires pour un reliquat de 210 points. (2 points)
3. Expliquez en deux phrases pourquoi une méthode hybride peut convenir à un projet réglementé mais innovant. (1,5 point)
4. Citez une limite d''un outil d''aide fondé sur l''intelligence artificielle en gestion de projet. (1,5 point)

Partie 2 – Pilotage de la performance et audit de projets (9 points)

Trois projets d''un portefeuille ont pour PV, EV, AC (en millions de FCFA) : Projet X (100, 95, 90), Projet Y (80, 70, 75), Projet Z (60, 65, 58).

5. Calculez le SPI et le CPI de chaque projet. (3 points)
6. Calculez le SPI et le CPI consolidés du portefeuille. (2 points)
7. Un audit évalue un projet selon quatre axes pondérés : finance 25 %, bénéficiaires 30 %, processus 25 %, apprentissage 20 %, notés respectivement 3, 4, 3, 5. Calculez le score global en pourcentage. (2 points)
8. Citez deux éléments qu''une revue post-projet doit documenter au-delà du bilan financier. (2 points)

Partie 3 – Méthodologie du mémoire professionnel et soutenance (8 points)

9. Transformez le sujet trop large « La performance des projets informatiques » en une problématique traitable, avec objet, contexte et critère observable. (2 points)
10. Un questionnaire envoyé à 70 chefs de projet reçoit 42 réponses. Calculez le taux de réponse et discutez brièvement sa représentativité. (2 points)
11. Pourquoi la discussion est-elle souvent la partie la plus faible des mémoires d''étudiants ? (2 points)
12. Citez deux bonnes pratiques pour préparer une soutenance de mémoire. (2 points)

## Corrigé détaillé

1. Délai de récupération = 60 / 25 = 2,4 ans, inférieur au seuil de trois ans : le projet est acceptable.

2. Vélocité moyenne = (34 + 29 + 31 + 36 + 30) / 5 = 160 / 5 = 32 points. Nombre de sprints = 210 / 32 ≈ 6,56, arrondi à 7 sprints.

3. Une méthode hybride permet de garder un cadrage prédictif strict sur les jalons imposés par le régulateur (dates et livrables non négociables), tout en laissant une exécution agile sur les parties innovantes du produit, dont le périmètre peut légitimement s''affiner avec les retours des utilisateurs.

4. Exemple : l''outil s''appuie sur des données historiques pouvant être incomplètes ou peu représentatives d''un contexte nouveau, ce qui exige une validation par le jugement professionnel du chef de projet avant toute décision.

5. Projet X : SPI = 95/100 = 0,95 ; CPI = 95/90 ≈ 1,056. Projet Y : SPI = 70/80 = 0,875 ; CPI = 70/75 ≈ 0,933. Projet Z : SPI = 65/60 ≈ 1,083 ; CPI = 65/58 ≈ 1,121.

6. SPI consolidé = (95 + 70 + 65) / (100 + 80 + 60) = 230 / 240 ≈ 0,958. CPI consolidé = 230 / (90 + 75 + 58) = 230 / 223 ≈ 1,031. Le portefeuille est globalement proche de son planning et maîtrise bien ses coûts.

7. Score = 0,25 × 3 + 0,30 × 4 + 0,25 × 3 + 0,20 × 5 = 0,75 + 1,20 + 0,75 + 1,00 = 3,70 sur 5, soit 3,70 / 5 × 100 = 74 %.

8. Exemples : les causes des écarts de délai ou de coût et la façon dont ils ont été traités ; les compétences rares qui ont manqué, à sécuriser plus tôt sur un futur projet similaire.

9. Exemple : « Dans quelle mesure la mise en place d''un tableau de bord hebdomadaire améliore-t-elle le respect des délais des projets informatiques internes d''une entreprise de services à Dakar ? » Objet : le tableau de bord hebdomadaire. Contexte : projets informatiques internes, entreprise de services, Dakar. Critère observable : le respect des délais.

10. Taux de réponse = 42 / 70 × 100 = 60 %. À discuter : représentativité correcte mais à nuancer si les non-répondants pourraient différer systématiquement des répondants (plus ou moins disponibles, plus ou moins concernés par le sujet du mémoire).

11. Parce qu''elle exige de confronter explicitement ses propres résultats à la littérature déjà lue (les confirmer, les nuancer ou les contredire, et expliquer pourquoi), un exercice plus exigeant que la simple description des résultats obtenus, que beaucoup d''étudiants privilégient par facilité.

12. Exemples : préparer un exposé court centré sur la problématique, la méthode et les résultats plutôt qu''une lecture du mémoire ; anticiper les questions sur les limites méthodologiques et répéter devant un pair ou un tuteur dans les conditions réelles de temps.

## Barème indicatif, non officiel

Partie 1 : 7 points ; partie 2 : 9 points ; partie 3 : 8 points. Les calculs doivent être présentés avec le détail des opérations, et chaque réponse méthodologique doit être argumentée.

## Exercices pratiques

1. Si le coût de l''outil numérique de la question 1 passait à 70 millions avec les mêmes économies annuelles, le projet resterait-il acceptable pour un seuil de trois ans ?
2. Recalculez le SPI et le CPI consolidés de la partie 2 si le Projet Z était retiré du portefeuille.
3. Pourquoi un taux de réponse de 60 % n''est-il ni automatiquement suffisant ni automatiquement insuffisant pour un mémoire professionnel ?

## Corrigé

1. Délai de récupération = 70 / 25 = 2,8 ans, toujours inférieur à trois ans : le projet reste acceptable, mais avec une marge plus faible qu''avec un coût de 60 millions.

2. Sans le Projet Z : SPI consolidé = (95 + 70) / (100 + 80) = 165 / 180 ≈ 0,917. CPI consolidé = 165 / (90 + 75) = 165 / 165 = 1,00. Le retrait du Projet Z, qui tirait les indicateurs vers le haut, fait apparaître un portefeuille un peu plus en retard, bien qu''à l''équilibre exact sur les coûts.

3. Parce que sa suffisance dépend de la nature de la question et du terrain : pour une question qui cherche à mesurer une tendance générale sur une population homogène, 60 % peut être confortable ; pour une question très sensible à un biais de sélection (les répondants étant systématiquement différents des non-répondants sur la variable étudiée), même 60 % appelle une discussion prudente de la représentativité, qu''il faut toujours expliciter dans le mémoire plutôt que supposer acquise.', 'texte', 90, false, 50
from public.courses c where c.slug = 'mas-projet-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Master 2 en Gestion de projets');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Transformation digitale et innovation projet', '## Fiche du cours vidéo

Durée : 1h30. Public : Master 2 gestion de projets. Objectifs : approfondir les méthodes hybrides, l''agilité à l''échelle pour plusieurs équipes, le calcul de vélocité et de capacité de programme, le retour sur investissement d''un outil numérique, et les apports et limites de l''intelligence artificielle en gestion de projet. Matériel : tableau, diaporama, calculatrice. Prérequis : notions agiles de base vues en Licence 2.

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Bonjour à toutes et à tous. Beaucoup d''organisations ne choisissent plus entre méthode prédictive et méthode agile : elles combinent les deux selon les parties du projet, et coordonnent plusieurs équipes agiles à la fois. Aujourd''hui, nous allons apprendre à choisir et à chiffrer ces démarches hybrides et à l''échelle. Fil rouge : une banque régionale fictive qui modernise son application mobile sous contrainte réglementaire, et une entreprise de services numériques fictive de Dakar qui organise un programme de plusieurs équipes.

## 05:00 – 15:00 · Prédictif, agile, hybride : choisir selon le contexte

Je trace deux colonnes au tableau : stabilité des exigences, contrainte de délai fixe d''un côté ; évolution des exigences, livraison incrémentale de valeur de l''autre. La méthode prédictive convient à la première colonne, l''agile à la seconde. Dans le cas de la banque régionale, le dossier de conformité réglementaire et l''audit externe relèvent clairement de la première colonne : dates fermes, périmètre de conformité non négociable. Le développement des fonctionnalités de l''application mobile relève de la seconde : les retours des utilisateurs tests doivent pouvoir faire évoluer certains choix. D''où la décision hybride : cadrage prédictif pour les jalons réglementaires, exécution agile en sprints pour le développement.

## 15:00 – 28:00 · L''agilité à l''échelle : pourquoi et comment coordonner plusieurs équipes

Je pose la question au groupe : « Si quatre équipes agiles travaillent chacune en sprints indépendants sur un même produit, sans synchronisation, que risque-t-il de se passer ? » Réponses attendues : des dépendances découvertes trop tard, une équipe qui attend un livrable d''une autre sans l''avoir anticipé, des priorités contradictoires entre équipes. Je présente alors le principe général de l''agilité à l''échelle : un rythme commun de planification sur plusieurs sprints, des synchronisations régulières entre équipes, et une gouvernance de programme qui arbitre les dépendances et les priorités globales. J''insiste : peu importe le nom exact du cadre retenu par une organisation, ce qui compte à l''examen est de savoir pourquoi cette coordination devient indispensable au-delà d''une ou deux équipes, et quels mécanismes concrets elle met en place.

## 28:00 – 42:00 · Vélocité et capacité de programme : correction commentée

Je reprends l''exemple d''une équipe avec cinq sprints passés : 32, 28, 35, 30, 40 points. Vélocité moyenne = (32+28+35+30+40)/5 = 165/5 = 33 points par sprint. Pour un reliquat de 260 points, le nombre de sprints nécessaires est 260/33 ≈ 7,88, arrondi à 8 sprints : on ne peut pas prévoir une fraction de sprint, on arrondit toujours vers le haut par prudence.

À l''échelle du programme de Dakar Services Numériques, quatre équipes de vélocité comparable planifient un incrément de cinq sprints. Capacité d''une équipe pour l''incrément : 33 × 5 = 165 points. Capacité totale du programme : 165 × 4 = 660 points. Je souligne le point d''examen clé : cette capacité chiffrée doit borner ce qu''on engage dans l''incrément ; engager plus de 660 points de travail planifié reviendrait à promettre un dépassement systématique, qui dégrade la confiance des parties prenantes dans les engagements du programme.

Variante pour approfondir : si l''une des quatre équipes perdait temporairement deux membres clés et voyait sa vélocité moyenne chuter à 20 points par sprint, la capacité totale du programme deviendrait 165 + 165 + 165 + (20 × 5) = 595 points au lieu de 660, une baisse de 65 points, soit environ 9,8 % de la capacité totale : un arbitrage de priorités entre équipes devient alors nécessaire, exactement le rôle de la gouvernance de programme évoquée plus haut.

## 42:00 – 50:00 · Pause et quiz interactif

Trois questions. Un : pourquoi arrondit-on toujours le nombre de sprints nécessaires vers le haut ? Deux : à quoi sert la gouvernance de programme dans l''agilité à l''échelle ? Trois : une équipe de vélocité moyenne 25 points planifie un incrément de quatre sprints ; quelle est sa capacité ?

Réponses : parce qu''on ne peut pas livrer une fraction de sprint, et qu''arrondir vers le bas sous-estimerait le temps réellement nécessaire ; à arbitrer les dépendances et les priorités entre équipes, pour éviter les blocages découverts trop tard ; 25 × 4 = 100 points.

## 50:00 – 1:05:00 · Le retour sur investissement d''un outil numérique : correction commentée

Reprenons l''exemple de l''entreprise de BTP : outil numérique de pilotage à 45 millions de FCFA, économies annuelles estimées à 18 millions de FCFA. Délai de récupération = 45/18 = 2,5 ans. Si le seuil de décision de l''entreprise est fixé à trois ans, le projet est acceptable, mais de justesse.

Je demande ensuite au groupe de discuter les limites de ce calcul, point très attendu au Master : ce calcul simplifié ignore l''actualisation des flux futurs (18 millions perçus dans trois ans valent moins que 18 millions aujourd''hui), les coûts de maintenance récurrents de l''outil, et la courbe d''apprentissage des équipes, qui retarde souvent la réalisation effective des économies durant les six à douze premiers mois. Une version plus rigoureuse actualiserait les flux d''économies au même taux que celui utilisé pour les autres décisions d''investissement de l''entreprise, et comparerait alors une VAN plutôt qu''un simple délai de récupération brut.

## 1:05:00 – 1:15:00 · Discussion de groupe : où placer le curseur hybride

Je propose un débat court avec le groupe sur un second cas fictif : une ONG sénégalaise déploie un programme de formation agricole dans plusieurs régions, avec un calendrier de décaissement fixé par son bailleur mais un contenu pédagogique à ajuster selon les retours des premières sessions. Je demande à deux sous-groupes de défendre, l''un une approche entièrement prédictive (plus simple à justifier auprès du bailleur), l''autre une approche hybride (plus coûteuse à mettre en place mais plus adaptée aux retours du terrain). La synthèse attendue : le calendrier de décaissement, contraint par le bailleur, reste géré en logique prédictive, tandis que le contenu pédagogique de chaque session, qui bénéficie de s''ajuster aux retours des formateurs et des participants, relève d''une logique agile ; c''est exactement la même structure de raisonnement que pour la banque régionale, appliquée à un contexte différent.

## 1:15:00 – 1:22:00 · L''intelligence artificielle en gestion de projet : apports et limites

Je présente trois usages plausibles : détection précoce d''anomalies d''avancement à partir de l''historique de projets similaires, aide à la rédaction de comptes rendus, suggestion d''enchaînements de tâches à partir de projets passés comparables. Pour chacun, je demande au groupe d''identifier une limite. Détection d''anomalies : fondée sur des données historiques qui peuvent ne pas représenter un contexte réellement nouveau, risque de fausses alertes ou d''alertes manquées. Aide à la rédaction : nécessite toujours une relecture humaine, en particulier pour l''exactitude des chiffres et des engagements contractuels mentionnés. Suggestion de planification : peut reproduire des pratiques passées inadaptées au contexte actuel si elles ne sont pas critiquées par le chef de projet. Le principe général à retenir pour l''examen : ces outils sont des aides, le chef de projet reste responsable de la décision finale et doit pouvoir justifier chaque choix important indépendamment de la suggestion reçue.

## 1:22:00 – 1:30:00 · Synthèse et évaluation finale

Synthèse : choisir une démarche hybride selon la stabilité des exigences et des jalons, coordonner plusieurs équipes agiles par un rythme de synchronisation et une gouvernance de programme, chiffrer la vélocité et la capacité avant d''engager un incrément, calculer un retour sur investissement numérique en discutant ses limites, et utiliser l''intelligence artificielle comme une aide documentée, jamais comme un substitut au jugement professionnel.

Évaluation finale.

1. Qu''est-ce qui distingue une méthode hybride d''une simple succession de phases prédictives et agiles mal articulées ? Réponse : une méthode hybride articule délibérément les deux logiques selon la nature de chaque partie du projet (jalons fermes versus périmètre évolutif), avec une coordination explicite entre elles, plutôt qu''une juxtaposition improvisée.
2. Une équipe de vélocité moyenne 36 points planifie un incrément de six sprints. Quelle est sa capacité ? Réponse : 36 × 6 = 216 points.
3. Un outil coûte 50 millions de FCFA pour 20 millions d''économies annuelles. Quel est le délai de récupération ? Réponse : 50/20 = 2,5 ans.
4. Citez une limite du calcul simplifié de délai de récupération. Réponse : il ignore l''actualisation des flux futurs et les coûts récurrents de maintenance.
5. Pourquoi le chef de projet reste-t-il responsable d''une décision même assistée par un outil d''intelligence artificielle ? Réponse : parce que l''outil s''appuie sur des données historiques pouvant être incomplètes ou non représentatives, et que la décision finale, notamment à fort enjeu, doit être validée par le jugement professionnel humain.

Merci à toutes et à tous. Pour votre mémoire, si votre terrain combine des contraintes réglementaires et une volonté d''innovation, documentez précisément le choix hybride retenu et chiffrez, même approximativement, les bénéfices attendus : c''est un exemple très valorisé par un jury professionnel.', 'video', 90, false, 60
from public.courses c where c.slug = 'mas-projet-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Transformation digitale et innovation projet');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Pilotage de la performance et audit de projets', '## Fiche du cours vidéo

Durée : 1h30. Public : Master 2 gestion de projets. Objectifs : approfondir les modèles de maturité organisationnelle, la construction d''un tableau de bord équilibré, le calcul d''indicateurs de performance consolidés sur un portefeuille, et l''organisation d''une revue post-projet avec capitalisation. Matériel : tableau, diaporama, calculatrice. Prérequis : la valeur acquise (SPI, CPI) vue en Licence 2.

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Bonjour à toutes et à tous. Un audit de performance ne se limite jamais à un seul chiffre : il situe une organisation sur une trajectoire de maturité, évalue plusieurs dimensions de la performance, consolide des indicateurs sur un ensemble de projets, et débouche sur des enseignements capitalisés pour l''avenir. Fil rouge : l''entreprise fictive Dakar Services Numériques, qui demande un audit annuel de son portefeuille de projets.

## 05:00 – 16:00 · Situer une organisation sur un modèle de maturité

Je présente les cinq niveaux typiques au tableau : ad hoc, émergent, standardisé, piloté par indicateurs, optimisé en amélioration continue. Je demande au groupe de situer Dakar Services Numériques à partir de symptômes observés par les auditeurs : chaque chef de projet utilise son propre modèle de planning, aucun registre commun de leçons apprises, mais un début de reporting mensuel standardisé introduit l''an dernier. Réponse attendue : l''entreprise se situe entre le niveau 1 et le niveau 2, en transition vers la standardisation, et l''audit doit recommander de consolider cette standardisation avant d''envisager un pilotage fin par indicateurs, qui suppose des données déjà collectées de façon homogène.

## 16:00 – 30:00 · Construire un tableau de bord équilibré : correction commentée

Je reprends l''exemple d''un audit à quatre axes pondérés : finance 30 %, satisfaction des bénéficiaires 25 %, qualité des processus 25 %, apprentissage de l''équipe 20 %, notés 4, 3, 4, 5. Calcul au tableau : 0,30×4 + 0,25×3 + 0,25×4 + 0,20×5 = 1,20 + 0,75 + 1,00 + 1,00 = 3,95 sur 5, soit environ 79 %.

Je souligne le point d''examen essentiel : un score global de 79 % peut cacher un axe nettement plus faible que les autres, ici la satisfaction des bénéficiaires à 3 sur 5. Un bon audit présente toujours le détail par axe, pas seulement le score global, et formule une recommandation ciblée sur l''axe le plus faible plutôt que des généralités applicables à tous les axes.

Variante pour approfondir : si l''axe « apprentissage de l''équipe » tombait à 2 au lieu de 5 (départ de plusieurs collaborateurs expérimentés en cours de projet), le score global deviendrait 1,20 + 0,75 + 1,00 + 0,40 = 3,35 sur 5, soit 67 %, une baisse de 12 points de pourcentage pour un seul axe sur quatre : cela montre combien la perte de compétences clés pèse sur la performance globale perçue d''un projet, bien au-delà de son seul impact financier direct.

## 30:00 – 45:00 · Consolider des indicateurs de valeur acquise sur un portefeuille

Je pose trois projets au tableau avec leurs PV, EV, AC en millions de FCFA : Projet 1 (120, 100, 110), Projet 2 (90, 95, 85), Projet 3 (60, 50, 55). Calcul individuel : Projet 1, SPI = 100/120 ≈ 0,833, CPI = 100/110 ≈ 0,909. Projet 2, SPI = 95/90 ≈ 1,056, CPI = 95/85 ≈ 1,118. Projet 3, SPI = 50/60 ≈ 0,833, CPI = 50/55 ≈ 0,909.

Erreur classique à éviter, que je fais volontairement au tableau puis corrige : faire la moyenne simple des trois SPI, soit (0,833+1,056+0,833)/3 ≈ 0,907, et la présenter comme l''indicateur du portefeuille. C''est à peu près juste ici par coïncidence de l''ordre de grandeur des projets, mais la bonne méthode, qui reste valable même si les projets ont des tailles très différentes, consiste à rapporter les sommes : SPI consolidé = (100+95+50)/(120+90+60) = 245/270 ≈ 0,907. CPI consolidé = 245/(110+85+55) = 245/250 = 0,98. Le résultat est proche ici, mais je montre ensuite un contre-exemple où les tailles de projets sont très différentes, pour que le groupe voie que la moyenne simple des indicateurs individuels peut s''écarter significativement du résultat obtenu en sommant les valeurs, notamment quand un grand projet a une performance très différente des petits projets du portefeuille.

## 45:00 – 53:00 · Pause et quiz interactif

Trois questions. Un : pourquoi la moyenne simple des SPI individuels est-elle risquée pour un indicateur de portefeuille ? Deux : comment calcule-t-on correctement le CPI consolidé d''un portefeuille ? Trois : qu''est-ce qu''un symptôme typique d''une organisation de faible maturité ?

Réponses : parce qu''elle donne le même poids à un petit et à un grand projet, déformant la lecture réelle de la performance ; en rapportant la somme des valeurs acquises à la somme des coûts réels de tous les projets ; par exemple l''absence de méthode commune, chaque chef de projet improvisant ses propres outils.

## 53:00 – 1:08:00 · L''audit de portefeuille complet : lecture managériale

Je combine les deux outils sur le portefeuille de Dakar Services Numériques : le tableau de bord équilibré pour chaque projet individuellement, et les indicateurs consolidés de valeur acquise pour le portefeuille. Je montre comment un rapport d''audit synthétise ces deux niveaux pour la direction : d''abord la vue consolidée (SPI et CPI du portefeuille, tendance par rapport à l''audit précédent), puis, pour les projets en difficulté, le détail par axe du tableau de bord équilibré qui explique la cause probable de la difficulté (financière, relationnelle, de processus, ou de compétences). Cette articulation entre vue d''ensemble et diagnostic ciblé est exactement ce qu''un jury de Master attend d''une étude de cas d''audit.

## 1:08:00 – 1:15:00 · Question de synthèse : relier maturité, tableau de bord et portefeuille

Je pose une question de synthèse au groupe, typique d''une mini-dissertation de Master : « Une organisation peu mature peut-elle tout de même afficher un bon score de tableau de bord équilibré sur un projet donné ? » Réponse construite avec le groupe : oui, un projet isolé peut très bien se dérouler grâce à la compétence individuelle de son chef de projet, même dans une organisation globalement peu mature ; mais cette réussite restera fragile et non reproductible tant que les bonnes pratiques de ce projet ne sont pas capitalisées et diffusées à l''ensemble de l''organisation, ce qui est précisément le rôle de la revue post-projet que nous abordons maintenant.

## 1:15:00 – 1:22:00 · La revue post-projet et la capitalisation : cas commenté

Un projet de Dakar Services Numériques vient de se clôturer avec un net dépassement de délai, causé par un retard de livraison d''un sous-traitant technique non anticipé dans le plan de risques initial. Je montre comment organiser la revue post-projet : d''abord un recueil structuré des faits (sans chercher un coupable), puis l''identification de l''enseignement transférable (toujours intégrer un délai de sécurité pour les sous-traitants critiques identifiés tardivement, ou les qualifier plus tôt dans le cycle de sélection), puis l''inscription de cet enseignement dans un registre partagé, consultable par les futurs chefs de projet avant de démarrer un projet similaire. Je rappelle le symptôme classique d''un audit de maturité : si ce même type de retard se répète d''un projet à l''autre sans que l''enseignement ne soit capitalisé, l''organisation reste bloquée à un faible niveau de maturité malgré des chefs de projet individuellement compétents.

## 1:22:00 – 1:30:00 · Synthèse et évaluation finale

Synthèse : situer une organisation sur un modèle de maturité à partir de symptômes concrets, construire un tableau de bord équilibré qui fait remonter l''axe le plus faible, consolider les indicateurs de valeur acquise par les sommes de valeurs et non par une moyenne simple, et organiser systématiquement une revue post-projet capitalisée dans un registre partagé.

Évaluation finale.

1. Citez les cinq niveaux typiques d''un modèle de maturité organisationnelle. Réponse : ad hoc, émergent, standardisé, piloté par indicateurs, optimisé en amélioration continue.
2. Un audit à quatre axes pondérés 20 %, 30 %, 20 %, 30 % obtient les notes 4, 2, 5, 3. Calculez le score global en pourcentage. Réponse : 0,20×4+0,30×2+0,20×5+0,30×3 = 0,80+0,60+1,00+0,90 = 3,30 sur 5, soit 66 %.
3. Deux projets ont pour PV, EV : (200, 180) et (50, 55). Calculez le SPI consolidé. Réponse : (180+55)/(200+50) = 235/250 = 0,94.
4. Pourquoi un rapport d''audit doit-il toujours présenter le détail par axe, pas seulement un score global ? Réponse : parce qu''un score global satisfaisant peut masquer un axe en net retrait qui appelle une action corrective ciblée.
5. Qu''est-ce qui distingue une revue post-projet qui capitalise réellement d''une simple réunion de clôture ? Réponse : l''inscription explicite des enseignements dans un support partagé et consultable par les futurs projets, plutôt qu''une discussion orale sans trace exploitable.

Merci à toutes et à tous. Si votre mémoire porte sur l''audit ou la performance de projets, appliquez systématiquement la distinction entre score global et détail par axe, et entre indicateur individuel et indicateur consolidé : ce sont des réflexes méthodologiques que les jurys professionnels remarquent.', 'video', 90, false, 70
from public.courses c where c.slug = 'mas-projet-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Pilotage de la performance et audit de projets');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Méthodologie du mémoire professionnel', '## Fiche du cours vidéo

Durée : 1h30. Public : Master 2 gestion de projets. Objectifs : approfondir la construction d''une problématique de mémoire professionnel, la revue de littérature, le choix d''une méthode de collecte et la structure du mémoire, avec correction commentée d''exemples chiffrés. Matériel : tableau, diaporama, calculatrice. Prérequis : la leçon 4 de ce cours.

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Bonjour à toutes et à tous. Un mémoire professionnel réussi ne se juge pas seulement sur le fond du sujet choisi, mais sur la rigueur de sa méthode : une problématique traitable, une revue de littérature qui croise les sources, une méthode de collecte justifiée, et une structure qui discute vraiment les résultats. Fil rouge : Moussa, étudiant fictif en Master 2, qui travaille sur l''adoption d''un tableau de bord hebdomadaire dans les projets informatiques internes d''une entreprise de services à Dakar.

## 05:00 – 18:00 · Construire une problématique traitable : correction commentée

Je reprends le sujet initial trop large de Moussa : « La performance des projets informatiques. » Je montre, étape par étape, comment le resserrer : objet précis (un tableau de bord hebdomadaire), contexte délimité (projets informatiques internes, entreprise de services, Dakar), critère observable (le respect des délais). Problématique obtenue : « Dans quelle mesure la mise en place d''un tableau de bord hebdomadaire améliore-t-elle le respect des délais des projets informatiques internes d''une entreprise de services à Dakar ? »

Je souligne un piège fréquent à l''examen : une problématique qui contient déjà sa propre réponse (« Pourquoi un tableau de bord hebdomadaire améliore-t-il nécessairement le respect des délais ? ») n''est pas traitable, car elle présuppose le résultat au lieu de le questionner. La bonne formulation garde une véritable incertitude : « dans quelle mesure », pas « pourquoi nécessairement ».

## 18:00 – 32:00 · La revue de littérature : croiser les sources sans les juxtaposer

Je présente deux sources fictives pour Moussa : un article académique sur les effets du reporting fréquent sur la performance des équipes projet, et un rapport professionnel d''une association de chefs de projet sur les pratiques de pilotage dans les PME. Je montre, au tableau, la différence entre juxtaposer (résumer l''un, puis résumer l''autre, sans les relier) et croiser (montrer que le rapport professionnel illustre concrètement un mécanisme que l''article académique explique théoriquement, ou au contraire que les deux se contredisent sur un point, ce qui devient alors une question intéressante à creuser dans le mémoire).

Je rappelle la règle non négociable : ne jamais citer un auteur, un chiffre ou une étude qu''on n''a pas lu soi-même directement ; une référence reprise de seconde main sans vérification, si elle s''avère inexacte ou déformée, engage la crédibilité de l''ensemble du mémoire.

## 32:00 – 40:00 · Pause et quiz interactif

Trois questions. Un : pourquoi une problématique qui présuppose sa propre réponse n''est-elle pas traitable ? Deux : quelle est la différence entre juxtaposer et croiser deux sources ? Trois : que risque un mémoire qui cite une référence jamais lue directement par son auteur ?

Réponses : parce qu''elle ne laisse plus de place à une véritable investigation, le résultat étant supposé acquis avant l''analyse ; juxtaposer les résume l''une après l''autre sans les relier, croiser montre comment elles s''éclairent, se complètent ou se contredisent ; il risque de reproduire une erreur ou une déformation, ce qui, si elle est repérée, discrédite la rigueur de l''ensemble du travail.

## 40:00 – 55:00 · Choisir et justifier sa méthode de collecte : correction commentée

Pour la problématique de Moussa, je construis au tableau le raisonnement de choix de méthode. La question porte à la fois sur un mécanisme (comment le tableau de bord change les comportements des chefs de projet) et sur une mesure d''ampleur (le délai moyen avant et après adoption) : une méthode mixte est justifiée. Je détaille : d''abord trois à cinq entretiens semi-structurés avec des chefs de projet ayant déjà utilisé l''outil, pour comprendre le mécanisme perçu ; puis un relevé chiffré du taux de respect des délais sur l''ensemble des projets de l''entreprise, six mois avant et six mois après l''introduction de l''outil.

Exemple chiffré : sur 24 projets avant l''introduction du tableau de bord, 11 ont respecté leur délai initial, soit 11/24 ≈ 45,8 %. Sur 20 projets après l''introduction, 14 l''ont respecté, soit 14/20 = 70 %. Je montre comment présenter cette comparaison dans le mémoire : donner les deux taux, la différence observée (environ 24,2 points de pourcentage), et immédiatement une limite assumée : le nombre de projets est modeste, la période est courte, et d''autres facteurs (changement de direction, nouveaux clients) ont pu jouer en même temps, sans qu''on puisse isoler strictement l''effet du seul tableau de bord.

## 55:00 – 1:05:00 · Structurer le mémoire et rédiger une vraie discussion

Je reprends le plan type au tableau : introduction et problématique, revue de littérature, méthodologie, résultats, discussion, recommandations, conclusion. Je m''arrête longuement sur la discussion, point faible le plus fréquent. À partir des deux taux de 45,8 % et 70 %, je rédige avec le groupe un paragraphe de discussion qui, premièrement, confronte ce résultat à l''article académique (qui prédisait une amélioration du respect des délais grâce à la fréquence accrue du reporting, confirmée ici) ; deuxièmement, nuance en rappelant la limite méthodologique assumée (échantillon modeste, pas de groupe témoin strict) ; troisièmement, propose une piste pour un travail futur (comparer deux services de l''entreprise, l''un ayant adopté l''outil, l''autre non, sur une même période, pour isoler plus rigoureusement son effet).

## 1:05:00 – 1:12:00 · Un deuxième exemple chiffré, pour s''entraîner

Je propose un deuxième exemple, à traiter rapidement avec le groupe pour consolider la méthode : sur 40 projets d''une autre entreprise avant une réforme de gouvernance, 22 respectent leur délai (22/40 = 55 %) ; sur 35 projets après la réforme, 28 le respectent (28/35 = 80 %). Je demande au groupe de formuler, en une phrase, la limite méthodologique assumée la plus évidente de cette comparaison. Réponse attendue : le nombre de projets diffère avant et après (40 contre 35), et rien n''indique que les deux ensembles de projets sont strictement comparables en nature ou en difficulté, ce qui doit être signalé avant de conclure trop vite à un effet de la réforme.

## 1:12:00 – 1:22:00 · Préparer l''exposé de soutenance

Je présente la structure d''un exposé de 15 à 20 minutes : deux minutes de contexte et de problématique, trois minutes de méthode, cinq à sept minutes de résultats et leur discussion, trois minutes de recommandations, une diapositive finale de synthèse. Je montre un exemple de cette diapositive finale pour le cas de Moussa : la problématique en une phrase, le résultat clé (45,8 % contre 70 %), la recommandation (généraliser l''outil avec un accompagnement de trois mois), et une limite assumée en une ligne. Je rappelle que le jury lira le mémoire complet : l''exposé ne doit pas chercher à tout redire, mais à donner l''essentiel et à montrer la maîtrise du candidat sur son propre travail.

## 1:22:00 – 1:30:00 · Synthèse et évaluation finale

Synthèse : construire une problématique qui garde une vraie incertitude, croiser plutôt que juxtaposer les sources de la revue de littérature, justifier sa méthode de collecte par la nature exacte de la question, rédiger une discussion qui confronte explicitement les résultats à la littérature, et préparer un exposé de soutenance court et centré sur l''essentiel.

Évaluation finale.

1. Pourquoi la problématique « Pourquoi un tableau de bord améliore-t-il nécessairement le respect des délais ? » n''est-elle pas traitable ? Réponse : parce qu''elle présuppose déjà la réponse (une amélioration nécessaire), sans laisser de place à une véritable investigation du résultat.
2. Sur 30 projets avant une réforme, 18 respectent leur délai ; sur 25 projets après, 20 le respectent. Calculez les deux taux. Réponse : avant, 18/30 = 60 % ; après, 20/25 = 80 %.
3. Pourquoi une méthode mixte convient-elle souvent à une question qui porte à la fois sur un mécanisme et sur une mesure d''ampleur ? Réponse : les entretiens éclairent le mécanisme perçu, le relevé chiffré mesure l''ampleur du phénomène sur un ensemble plus large de cas.
4. Que doit toujours accompagner un résultat chiffré présenté dans la discussion d''un mémoire ? Réponse : une mise en perspective avec la littérature et une mention explicite des limites méthodologiques assumées.
5. Combien de minutes dure généralement un exposé de soutenance, et pourquoi reste-t-il volontairement court ? Réponse : souvent 15 à 20 minutes selon l''établissement, pour laisser une place réelle aux questions du jury, qui comptent souvent autant que l''exposé dans l''appréciation finale.

Merci à toutes et à tous. Appliquez dès cette semaine cette méthode de resserrement progressif à votre propre problématique, et rédigez un premier paragraphe de discussion sur un résultat même provisoire : c''est en s''exerçant tôt sur ces deux points, souvent les plus faibles des mémoires d''étudiants, que l''on progresse le plus vite.', 'video', 90, false, 80
from public.courses c where c.slug = 'mas-projet-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Méthodologie du mémoire professionnel');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Atelier méthodologie du mémoire et simulation de soutenance', '## Fiche du cours vidéo

Durée : 1h30. Public : Master 2 gestion de projets. Objectifs : atelier pratique de méthodologie du mémoire professionnel — construire une problématique traitable, bâtir un plan détaillé, choisir une méthode de collecte, puis simuler une soutenance complète avec questions de jury. Matériel : tableau, diaporama. Prérequis : la leçon 4 et le cours vidéo précédent de cette unité.

## Déroulé minuté

## 00:00 – 05:00 · Introduction : un atelier, pas un cours théorique

Bonjour à toutes et à tous. Cette dernière vidéo de l''unité est un atelier pratique : nous allons construire, étape par étape, un mémoire professionnel fictif de bout en bout, puis simuler sa soutenance avec des questions de jury. L''objectif n''est pas de mémoriser une théorie supplémentaire, mais de vous entraîner sur les gestes concrets que vous referez pour votre propre mémoire. Cas fictif retenu pour l''atelier : Khadija, étudiante en Master 2, veut écrire son mémoire sur l''adoption d''un bureau de projets léger dans une PME sénégalaise de services numériques.

## 05:00 – 18:00 · Atelier 1 : de l''idée large à la problématique traitable

Je pars du sujet initial de Khadija, trop large : « La gestion de projet dans les PME sénégalaises. » Je demande au groupe de proposer une première reformulation. Première tentative possible : « Comment améliorer la gestion de projet dans les PME sénégalaises ? », encore trop large car elle ne nomme ni objet précis ni contexte délimité ni critère observable.

Je guide la reformulation en trois questions successives : quel objet précis (un outil, une pratique, un dispositif) ? Réponse : un bureau de projets léger. Quel contexte délimité (quel secteur, quelle zone, quelle taille d''entreprise) ? Réponse : PME de services numériques de la région de Dakar. Quel critère observable (ce qu''on va effectivement mesurer) ? Réponse : le respect des délais des projets. Problématique finale obtenue collectivement : « Dans quelle mesure l''adoption d''un bureau de projets léger améliore-t-elle le respect des délais dans les PME de services numériques de la région de Dakar ? » Je souligne que cette problématique a mis trois itérations à se stabiliser, ce qui est tout à fait normal et même souhaitable.

## 18:00 – 32:00 · Atelier 2 : construire le plan détaillé et choisir la méthode

À partir de cette problématique, je construis au tableau un plan détaillé avec le groupe : introduction et problématique ; revue de littérature (concepts de PMO, modèles de maturité, études antérieures sur les PME africaines) ; méthodologie ; résultats ; discussion ; recommandations ; conclusion.

Pour la méthodologie, je demande : « Pour mesurer le respect des délais avant et après l''adoption du PMO léger, quelle méthode choisir ? » Réponse construite avec le groupe : une méthode mixte, avec d''abord quelques entretiens semi-structurés auprès de chefs de projet de deux ou trois PME ayant déjà adopté un PMO léger, pour comprendre le mécanisme perçu d''amélioration, puis un questionnaire plus large envoyé à un échantillon de PME de la région pour mesurer l''ampleur du phénomène (taux de respect des délais avant et après, taille de l''équipe, secteur). J''insiste sur un point d''examen fréquent : la méthode doit être justifiée par la nature de la problématique, pas choisie par défaut ou par facilité.

## 32:00 – 40:00 · Pause et quiz interactif

Trois questions. Un : quels sont les trois éléments qu''une problématique traitable doit nommer ? Deux : pourquoi une méthode mixte peut-elle convenir au cas de Khadija ? Trois : combien d''itérations la problématique de l''atelier a-t-elle demandées avant d''être stabilisée ?

Réponses : un objet précis, un contexte délimité, un critère observable ; parce qu''elle combine la compréhension approfondie du mécanisme (entretiens) et la mesure de son ampleur sur un échantillon plus large (questionnaire) ; trois itérations.

## 40:00 – 55:00 · Atelier 3 : rédiger l''introduction et la discussion

Je rédige au tableau, avec le groupe, un paragraphe d''introduction qui présente le contexte (les PME sénégalaises de services numériques peinent souvent à respecter leurs délais de projet faute de méthode formalisée), la problématique, et l''annonce du plan. Puis nous travaillons la discussion sur un résultat fictif : le questionnaire montre un taux de respect des délais de 45 % avant adoption du PMO léger, contre 68 % après, sur l''échantillon interrogé. Je demande : « Comment discuter ce résultat plutôt que simplement le décrire ? » Réponse construite avec le groupe : confronter ce résultat à la littérature sur les bénéfices et les limites d''un PMO léger dans les petites structures, signaler que la hausse observée ne prouve pas seule un lien de causalité (d''autres facteurs ont pu évoluer en même temps), et proposer une piste de recherche future (un suivi longitudinal sur plusieurs années) pour renforcer cette preuve.

## 55:00 – 1:12:00 · Atelier 4 : simulation complète de soutenance

Khadija (jouée par l''intervenant) présente un exposé condensé de cinq minutes : problématique, méthode, résultat principal (45 % contre 68 %), recommandation (adopter un PMO léger avec un accompagnement de trois mois). Puis le jury (le groupe) pose des questions types, auxquelles je réponds en modélisant une bonne pratique de soutenance.

Question 1 : « Votre échantillon de PME ayant adopté un PMO léger est-il représentatif du secteur ? » Réponse modèle : « Je l''assume comme une limite explicite de mon travail : mon échantillon est restreint et probablement composé de PME déjà sensibilisées à ces questions de méthode, ce qui peut surestimer le bénéfice observé ; je le signale dans ma partie méthodologie et le propose comme piste pour une recherche future élargie. »

Question 2 : « Comment savez-vous que c''est bien le PMO léger, et pas un autre facteur, qui explique la hausse du respect des délais ? » Réponse modèle : « Je ne peux pas établir une causalité stricte avec ma méthode ; mes entretiens suggèrent un mécanisme plausible, que le questionnaire vient appuyer sur un échantillon plus large, mais je précise dans ma discussion que d''autres facteurs concomitants n''ont pas pu être isolés, et que c''est une limite assumée de ce travail. »

Question 3 : « Que feriez-vous différemment avec plus de temps ? » Réponse modèle : « J''élargirais l''échantillon du questionnaire et je suivrais les mêmes PME sur plusieurs trimestres plutôt qu''une seule mesure avant-après, pour isoler plus rigoureusement l''effet du PMO léger des autres évolutions possibles. »

Je souligne, après cette simulation, le point méthodologique central de l''atelier : dans les trois réponses, Khadija ne nie jamais la limite soulevée par le jury, elle la reconnaît explicitement et montre qu''elle en a mesuré la portée ; c''est précisément ce qui distingue une soutenance maîtrisée d''une soutenance qui se discrédite en minimisant ou en contestant une critique légitime.

## 1:12:00 – 1:25:00 · Atelier 5 : votre propre répétition

Je propose un exercice individuel guidé : chaque étudiant écrit, en cinq minutes, sa propre problématique actuelle en une phrase, puis identifie par écrit la question de jury la plus probable et la plus inconfortable sur son propre terrain, et rédige une première réponse assumant la limite plutôt que la masquant. Je rappelle que cet exercice, répété régulièrement dans les semaines qui précèdent la vraie soutenance, devant un pair ou un tuteur qui joue vraiment le rôle d''un jury exigeant, est l''un des meilleurs investissements de temps possibles avant l''épreuve.

## 1:25:00 – 1:30:00 · Synthèse et évaluation finale

Synthèse de l''atelier : affiner une problématique par itérations successives jusqu''à ce qu''elle nomme un objet, un contexte et un critère observable ; choisir une méthode justifiée par la nature de la question, souvent mixte dans la pratique professionnelle ; discuter ses résultats en les confrontant à la littérature plutôt qu''en les décrivant seulement ; et préparer la soutenance en assumant explicitement ses limites méthodologiques plutôt qu''en les masquant.

Évaluation finale.

1. Quels sont les trois éléments qu''une problématique traitable doit nommer ? Réponse : un objet précis, un contexte délimité, un critère observable.
2. Pourquoi une méthode mixte (entretiens puis questionnaire) convient-elle souvent à un mémoire professionnel ? Réponse : elle combine la compréhension approfondie d''un mécanisme par les entretiens et la mesure de son ampleur sur un échantillon plus large par le questionnaire.
3. Que doit faire un candidat face à une question de jury qui révèle une vraie limite de son travail ? Réponse : la reconnaître explicitement et montrer qu''il en a mesuré la portée, plutôt que de la nier ou de la minimiser.
4. Pourquoi un résultat avant-après ne prouve-t-il pas seul une causalité ? Réponse : parce que d''autres facteurs ont pu évoluer en même temps que la variable étudiée, sans qu''on puisse les isoler avec une simple mesure avant-après.
5. Citez une bonne pratique pour se préparer à la soutenance dans les semaines qui précèdent. Réponse : répéter l''exposé et les réponses aux questions difficiles devant un pair ou un tuteur qui joue réellement le rôle d''un jury exigeant, dans les conditions réelles de temps.

Merci à toutes et à tous pour cette unité de Master 2. Que votre mémoire porte sur la transformation digitale, l''audit de performance ou tout autre sujet de gestion de projet, appliquez cette méthode d''atelier à votre propre problématique dès cette semaine : plus vous l''affinez tôt, plus votre soutenance sera sereine.', 'video', 90, false, 90
from public.courses c where c.slug = 'mas-projet-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Atelier méthodologie du mémoire et simulation de soutenance');

-- Cours : Informatique Master 1 : réussir ses examens (architectures logicielles, bases de données avancées, cybersécurité)
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'mas-info-m1', (select id from public.levels where name = 'Master 1'), null, 'Informatique', 'Informatique Master 1 : réussir ses examens (architectures logicielles, bases de données avancées, cybersécurité)', 'Préparation aux examens de Master 1 en Informatique : architectures logicielles et microservices, bases de données avancées et Big Data, cybersécurité avancée. Cas d''entreprise sénégalais fictifs, exercices corrigés et quatre cours vidéo de 1h30. Public : étudiants de Master 1 Informatique ayant validé une Licence (algorithmique, bases de données, réseaux, génie logiciel).', true, 721
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Master 1 en Informatique', '## Objectifs de la leçon

Cette première leçon pose le cadre du Master 1 en Informatique et la méthode pour réussir les examens de
l''année. Elle s''adresse à des étudiants qui ont déjà validé une Licence en Informatique (algorithmique,
architecture des ordinateurs, structures de données, bases de données relationnelles, réseaux, UML et génie
logiciel, développement web, sécurité de base). Le Master 1 change de nature : on ne révise plus des notions
isolées, on les combine pour concevoir des systèmes complets, on argumente des choix techniques, et on commence
à produire un travail de recherche ou un travail professionnel encadré (mémoire, projet tutoré, stage).

## Ce qui change entre la Licence et le Master 1

En Licence, l''évaluation porte surtout sur la restitution de méthodes : écrire un algorithme correct, normaliser
une base de données, calculer un sous-réseau IPv4. En Master 1, elle porte sur la décision argumentée face à un
problème ouvert : quelle architecture pour un système qui doit évoluer, quelle base de données pour un volume
qui grossit vite, quelles mesures de sécurité prioriser avec un budget limité. Les sujets donnent souvent un cas
d''entreprise (PME sénégalaise ou administration, fictifs) avec des contraintes réalistes, et demandent une
analyse structurée plutôt qu''une seule bonne réponse.

Trois matières structurent cette année de Master 1 :

- Architectures logicielles et microservices : découper une application en services indépendants, les exposer
  par des API REST avancées (versionnage, pagination, sécurité des échanges, gestion des erreurs), et
  comprendre le principe des conteneurs pour les déployer de façon reproductible.
- Bases de données avancées et Big Data : les bases NoSQL (document, clé-valeur, colonne, graphe) en complément
  du relationnel, et la modélisation décisionnelle (schémas en étoile et en flocon) pour des entrepôts de
  données qui alimentent des tableaux de bord.
- Cybersécurité avancée : la cryptographie appliquée (chiffrement symétrique et asymétrique, hachage,
  certificats), la démarche d''audit de vulnérabilités, et la gouvernance de la sécurité des systèmes
  d''information (politique de sécurité, gestion des risques, continuité d''activité).

## Le mémoire professionnel ou de recherche, le stage, les études de cas

En Master 1, la plupart des établissements introduisent un travail personnel encadré : un stage suivi d''un
rapport, un projet tutoré en équipe avec un cahier des charges réaliste, ou les premiers chapitres d''un mémoire
(contexte, problématique, état de l''art). Ce travail n''est pas annexe : il compte souvent pour une part
importante de la validation de l''année, et développe des compétences que les examens classiques ne mesurent
pas : cadrer un besoin flou, choisir une méthode de projet, documenter des choix techniques, respecter des
délais.

Pour les études de cas d''entreprise, qui reviennent en examen comme en projet tutoré, la méthode est toujours la
même : lire l''énoncé deux fois (contexte métier, puis contraintes techniques chiffrées), reformuler le problème
en une phrase, lister les options avec leurs avantages et leurs limites, choisir une option en la justifiant par
rapport aux contraintes données (budget, délai, compétences, volume de données, niveau de sécurité requis), puis
détailler la mise en œuvre. Un correcteur de Master valorise un raisonnement cohérent avec une conclusion
discutable plutôt qu''une réponse "parfaite" non justifiée.

## Méthode de travail avancée pour cette année

La charge de travail augmente et les sujets deviennent transversaux : un même cas d''examen peut mobiliser à la
fois l''architecture, les données et la sécurité. Trois habitudes de travail aident à progresser : le business
case chiffré (s''entraîner à estimer des ordres de grandeur, nombre de requêtes par seconde, volume de données en
gigaoctets, coût approximatif d''une solution, car les correcteurs valorisent la capacité à raisonner avec des
chiffres plutôt qu''avec des généralités) ; la fiche de synthèse par matière (une page recto, avec le vocabulaire
technique, les schémas clés et deux ou trois exemples d''application) ; et la simulation d''examen en conditions
réelles (traiter un sujet type en temps limité, sans notes, puis le corriger soi-même avant de regarder le
corrigé, pour s''habituer à gérer le temps).

## Plan de révision sur six semaines

Semaine 1 et 2 : architectures logicielles et microservices. Revoir les principes du REST, le découpage en
services, les patrons d''architecture (API Gateway, communication asynchrone), et les notions de base des
conteneurs (image, conteneur, isolation des dépendances), sans entrer dans le détail d''un outil précis.

Semaine 3 et 4 : bases de données avancées et Big Data. Revoir les familles NoSQL et leurs cas d''usage, les
schémas en étoile et en flocon, les notions de volumétrie, et pratiquer des requêtes d''agrégation sur un schéma
décisionnel simplifié.

Semaine 5 : cybersécurité avancée. Revoir les mécanismes de cryptographie (chiffrement, hachage, signature), la
démarche d''audit (cartographie des actifs, vulnérabilités, hiérarchisation des risques), et les principes de
gouvernance (politique de sécurité, plan de continuité).

Semaine 6 : entraînement transversal. Traiter au moins deux sujets type combinant les trois matières, revoir les
points faibles identifiés, et relire ses fiches de synthèse la veille plutôt que d''apprendre une notion nouvelle
dans l''urgence.

## Points clés à retenir

- Le Master 1 évalue la capacité à argumenter des choix techniques sur des cas ouverts, pas seulement à
  restituer des méthodes.
- Trois matières avancées structurent l''année : architectures logicielles et microservices, bases de données
  avancées et Big Data, cybersécurité avancée.
- Le travail personnel encadré (stage, projet tutoré, premiers chapitres de mémoire) fait partie intégrante de
  la validation de l''année et développe des compétences méthodologiques durables.
- Une méthode de cas structurée (contexte, contraintes, options, choix justifié, mise en œuvre) s''applique à
  toutes les matières.
- Un plan de révision progressif sur six semaines, terminé par un entraînement transversal chronométré, est la
  meilleure préparation aux examens.

## Exercices pratiques

1. Expliquez en cinq lignes la différence entre l''évaluation attendue en Licence et celle attendue en Master 1
   en Informatique.
2. Citez les trois matières avancées de ce programme de Master 1 et donnez, pour chacune, un exemple concret de
   problème qu''elle permet de résoudre.
3. Une PME sénégalaise de e-commerce (fictive) voit son trafic multiplié par 4 en un an. Proposez, en quelques
   phrases, une démarche (pas une solution technique détaillée) pour analyser si son architecture actuelle doit
   évoluer.
4. Pourquoi un correcteur de Master valorise-t-il un raisonnement cohérent avec une conclusion discutable plutôt
   qu''une réponse jugée "parfaite" mais non justifiée ?
5. Construisez votre propre planning de révision sur six semaines en reprenant la structure proposée, en
   l''adaptant à votre emploi du temps réel (cours, stage, vie personnelle).
6. Citez deux habitudes de travail avancées utiles en Master 1 et expliquez pourquoi elles sont plus efficaces
   qu''un simple réapprentissage du cours par cœur.
7. Quel est le rôle du stage, du projet tutoré ou des premiers chapitres de mémoire dans la validation de
   l''année de Master 1, au-delà de la note elle-même ?

## Corrigé

1. En Licence, l''évaluation porte sur la restitution correcte de méthodes déjà enseignées. En Master 1, elle
   porte sur la capacité à analyser un problème ouvert, souvent présenté comme un cas d''entreprise, à comparer
   plusieurs options et à justifier un choix argumenté selon des contraintes réalistes (budget, délai, volume
   de données, niveau de sécurité).
2. Architectures et microservices : découper une application monolithique devenue difficile à maintenir en
   services indépendants exposés par des API. Bases de données avancées et Big Data : choisir une base NoSQL
   orientée document pour un catalogue très variable, ou un schéma en étoile pour un tableau de bord des ventes.
   Cybersécurité avancée : mettre en place un chiffrement des échanges et un plan de réponse aux incidents pour
   un système traitant des données sensibles.
3. Mesurer précisément la charge actuelle et son évolution, identifier les points qui saturent en premier,
   évaluer si un renforcement simple des serveurs suffit ou si un découpage en services et une meilleure
   gestion des données sont nécessaires, puis chiffrer les options avant de décider.
4. Parce que la démarche de raisonnement démontre la maîtrise réelle des notions ; une réponse jugée "parfaite"
   sans justification peut être due au hasard, alors qu''un raisonnement cohérent, même avec une conclusion
   discutable, montre une compétence transférable.
5. Réponse libre : un planning concret sur six semaines, avec des créneaux réalistes, respectant la progression
   proposée (architectures, puis données, puis sécurité, puis entraînement transversal).
6. Le business case chiffré et la simulation d''examen chronométrée sont plus efficaces qu''un réapprentissage par
   cœur car elles entraînent directement la compétence évaluée : raisonner avec des données concrètes, dans un
   temps limité.
7. Ce travail développe des compétences méthodologiques (cadrage d''un besoin, choix d''une méthode de projet,
   documentation des décisions, gestion des délais) non mesurées par un examen classique, mais essentielles
   pour la suite des études et la vie professionnelle, et prépare au mémoire de Master 2.
', 'texte', 45, true, 10
from public.courses c where c.slug = 'mas-info-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Master 1 en Informatique');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Architectures logicielles et microservices : l''essentiel pour l''examen', '## Objectifs de la leçon

Cette leçon traite l''architecture logicielle moderne : pourquoi et comment découper une application en
microservices, comment concevoir une API REST avancée robuste, et ce qu''apportent les conteneurs, sans entrer
dans la syntaxe d''un outil précis (le principe prime sur l''outillage pour un examen). On s''appuie sur le cas
fictif d''une PME sénégalaise, "Teranga Digital Market", plateforme de vente en ligne de produits locaux.

## Du monolithique aux microservices

Une application monolithique regroupe toutes ses fonctions (catalogue, panier, paiement, livraison, comptes
clients) dans un seul programme, avec une seule base de données. C''est simple à développer au démarrage, mais
cela devient un frein quand l''application grossit : une petite modification du module paiement oblige à
redéployer tout le système, une équipe ne peut pas faire évoluer un module sans bloquer les autres, et un pic de
charge sur une seule fonction sature toute l''application.

L''architecture en microservices découpe le système en services indépendants, chacun responsable d''une
fonctionnalité métier précise (catalogue, panier, paiement, livraison), avec sa propre base de données et son
propre cycle de déploiement. Les services communiquent par le réseau, le plus souvent par des API REST ou des
messages asynchrones. Avantages : chaque équipe fait évoluer et déploie son service sans attendre les autres, on
dimensionne séparément le service le plus sollicité, et une panne dans un service non critique n''arrête pas
forcément tout le système. Inconvénients : la complexité se déplace vers la communication entre services, la
cohérence des données devient plus délicate, et il faut des outils de supervision pour un système distribué. Ce
n''est donc pas une solution universelle : pour une petite application avec une équipe unique, un monolithe bien
structuré reste souvent le choix le plus raisonnable.

## Concevoir une API REST avancée

Une API REST expose les ressources d''un service (un produit, une commande, un client) par des adresses (URI) et
des verbes HTTP standards : GET pour lire, POST pour créer, PUT ou PATCH pour modifier, DELETE pour supprimer.
Au niveau avancé, plusieurs points font la différence entre une API scolaire et une API prête pour la
production.

Le versionnage : modifier une API existante peut casser les applications qui l''utilisent déjà (application
mobile, site partenaire). On fait donc évoluer une API en conservant une ancienne version disponible un
certain temps (par exemple /v1/produits et /v2/produits), pour laisser le temps aux clients de migrer.

La pagination : renvoyer la liste complète de dix mille produits en une seule réponse surchargerait le réseau.
On renvoie des pages (par exemple 20 résultats à la fois), avec des paramètres indiquant la page demandée et le
nombre total de résultats disponibles.

La gestion des erreurs : une API avancée renvoie des codes HTTP précis (400 requête mal formée, 401
authentification manquante, 403 accès refusé, 404 ressource introuvable, 409 conflit, 500 erreur serveur) avec
un message exploitable, plutôt qu''un code 200 systématique avec un champ "erreur" caché dans la réponse.

La sécurité des échanges : chiffrer les communications (HTTPS), authentifier les appels (jeton d''accès attaché
à chaque requête) et limiter le nombre de requêtes qu''un même client peut faire par minute, pour éviter les
abus et les surcharges involontaires.

## Le principe des conteneurs

Un conteneur empaquette un service avec tout ce dont il a besoin (code, dépendances, configuration) dans une
unité isolée et reproductible : le service se comporte de la même façon chez le développeur, en test et en
production. C''est différent d''une machine virtuelle complète, qui embarque un système d''exploitation entier : un
conteneur partage le noyau du système hôte et reste donc plus léger et plus rapide à démarrer.

Pour une architecture en microservices, les conteneurs sont un allié naturel : chaque service tourne dans son
propre conteneur, sans conflit avec les autres. Un outil d''orchestration (hors programme de détail) démarre,
arrête et réplique automatiquement ces conteneurs selon la charge. Pour un examen, il faut retenir le principe
(isolation, reproductibilité, légèreté) et son intérêt pour les microservices, pas la maîtrise d''un outil.

## Étude de cas : Teranga Digital Market

Teranga Digital Market est une plateforme fictive de vente en ligne de produits locaux (artisanat, produits
agroalimentaires) basée à Dakar. L''application a démarré comme un monolithe il y a trois ans. L''équipe technique
constate trois problèmes : le service de paiement, dépendant d''un partenaire externe, tombe parfois en panne et
bloque tout le site, y compris la simple consultation du catalogue ; les promotions saisonnières multiplient
par 6 le trafic sur le catalogue pendant quelques jours, sans affecter les autres fonctions ; et deux équipes de
développement se gênent car elles modifient le même code pour des fonctionnalités différentes.

Analyse : les trois problèmes pointent vers les limites du monolithe. L''indisponibilité en cascade montre un
manque d''isolation entre fonctions ; le pic de charge ciblé sur le catalogue montre un besoin de dimensionner ce
service séparément ; les conflits entre équipes montrent un besoin de responsabilités claires par service.

Proposition : découper l''application en au moins quatre services indépendants (catalogue, panier, paiement,
compte client), chacun exposé par une API REST versionnée, avec son propre stockage de données, déployé dans
son propre conteneur. Le service catalogue, le plus sollicité pendant les pics, peut être répliqué en plusieurs
exemplaires sans toucher aux autres services. Le service paiement, moins fiable car dépendant d''un partenaire
externe, est isolé : s''il tombe en panne, le client peut toujours consulter le catalogue et constituer son
panier. Cette migration se mène service par service, en commençant par celui qui pose le plus de problèmes,
pour limiter les risques.

## Points clés à retenir

- Les microservices résolvent des problèmes réels (déploiement indépendant, dimensionnement ciblé,
  responsabilités claires) au prix d''une communication plus complexe ; ce n''est pas un choix par défaut.
- Une API REST avancée se distingue par son versionnage, sa pagination, sa gestion fine des erreurs et la
  sécurité de ses échanges.
- Un conteneur isole un service et le rend reproductible, de façon plus légère qu''une machine virtuelle.
- Une migration vers les microservices se mène progressivement, service par service.

## Exercices pratiques

1. Citez deux avantages et deux inconvénients de l''architecture en microservices par rapport à un monolithe.
2. Expliquez pourquoi le versionnage d''une API REST est nécessaire dès qu''elle a des utilisateurs externes.
3. Une API renvoie systématiquement le code HTTP 200 avec un champ "erreur" dans le corps de la réponse en cas
   de problème. Expliquez en quoi ce choix est contraire aux bonnes pratiques d''une API REST avancée.
4. Quelle est la différence essentielle entre un conteneur et une machine virtuelle complète ?
5. Reprenez le cas de Teranga Digital Market : pourquoi le service de paiement doit-il être isolé en priorité
   des autres fonctions du site ?
6. Cas pratique complet : "Jokko Mobilité" (transport urbain à Dakar, fictive) gère dans un seul programme la
   réservation de trajets, le suivi des chauffeurs en temps réel et la facturation. Le suivi en temps réel exige
   des mises à jour très fréquentes alors que la facturation n''a lieu qu''une fois par trajet. Proposez un
   découpage en services, justifiez lequel dimensionner le plus largement, et indiquez comment les conteneurs
   aident à ce dimensionnement différencié.
7. Pourquoi une migration vers les microservices se fait-elle généralement service par service plutôt qu''en une
   seule fois ?

## Corrigé

1. Avantages : déploiement indépendant de chaque service, dimensionnement ciblé du service le plus sollicité.
   Inconvénients : complexité accrue de la communication entre services, difficulté à garantir la cohérence des
   données réparties entre plusieurs bases.
2. Parce que modifier une API sans versionnage peut casser les applications externes qui l''utilisent déjà ; le
   versionnage permet de faire évoluer l''API en laissant une version stable disponible le temps que les
   utilisateurs migrent.
3. Les codes HTTP signalent l''état réel de la requête sans que le client doive analyser le corps de la réponse ;
   renvoyer 200 en cas d''erreur oblige chaque développeur consommateur à deviner qu''il doit vérifier un champ
   caché, ce qui multiplie les risques de bugs.
4. Un conteneur partage le noyau du système hôte et n''embarque que l''application et ses dépendances, ce qui le
   rend léger et rapide à démarrer ; une machine virtuelle embarque un système d''exploitation complet et séparé,
   plus coûteux en ressources.
5. Parce qu''il dépend d''un partenaire externe et tombe en panne plus souvent ; en l''isolant, une panne du
   paiement n''empêche plus la consultation du catalogue ni la constitution du panier.
6. Découpage possible : services "réservation", "suivi en temps réel" et "facturation", chacun avec sa propre
   base. Le suivi en temps réel doit être dimensionné le plus largement, car il reçoit des mises à jour très
   fréquentes de tous les chauffeurs actifs, contre un seul événement par trajet pour la facturation. Les
   conteneurs permettent de répliquer plusieurs exemplaires du service de suivi aux heures de forte activité.
7. Migrer en une fois expose à de nombreux problèmes simultanés difficiles à diagnostiquer ; une migration
   progressive permet de valider chaque étape avant de passer à la suivante et de revenir en arrière plus
   facilement en cas de problème.
', 'texte', 50, false, 20
from public.courses c where c.slug = 'mas-info-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Architectures logicielles et microservices : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Bases de données avancées et Big Data : l''essentiel pour l''examen', '## Objectifs de la leçon

Cette leçon prolonge les bases de données relationnelles vues en Licence vers deux directions avancées : les
bases NoSQL, utiles quand le modèle relationnel classique devient contraignant, et la modélisation décisionnelle
(schémas en étoile et en flocon), utilisée pour construire des entrepôts de données au service du pilotage
d''entreprise. On s''appuie sur le cas fictif d''une chaîne sénégalaise de distribution, "Sahel Distribution", et
sur des requêtes SQL exécutées et vérifiées.

## Pourquoi le relationnel ne suffit pas toujours

Une base relationnelle impose un schéma fixe (des tables aux colonnes définies à l''avance) et garantit de fortes
propriétés de cohérence (les propriétés ACID : atomicité, cohérence, isolation, durabilité). Elle reste le
meilleur choix pour des données structurées et des transactions sensibles (comptabilité, gestion des stocks).
Mais trois situations la mettent en difficulté : des données dont la structure varie beaucoup d''un
enregistrement à l''autre (un catalogue de produits avec des caractéristiques très différentes selon la
catégorie) ; un volume de données qui dépasse ce qu''une seule machine peut gérer efficacement, nécessitant de
répartir les données sur plusieurs serveurs ; et un besoin de lecture et d''écriture très rapide à très grande
échelle, où la rigueur transactionnelle complète du relationnel devient un frein de performance.

## Les familles de bases NoSQL

Les bases NoSQL ("Not Only SQL") regroupent plusieurs familles, chacune adaptée à un type de besoin.

Les bases orientées document stockent chaque enregistrement comme un document semi-structuré (souvent au format
JSON), sans schéma fixe imposé à l''avance : utiles pour un catalogue de produits où chaque catégorie a des
attributs différents (une chemise a une taille et une couleur, un ordinateur a une mémoire et un processeur).

Les bases clé-valeur stockent une valeur associée à une clé unique, sans structure interne imposée à la valeur :
utiles pour des accès très rapides par identifiant, par exemple une session utilisateur ou un panier d''achat
temporaire.

Les bases orientées colonne stockent les données par colonne plutôt que par ligne, ce qui accélère les
agrégations sur de très grands volumes (sommes, moyennes sur des millions de lignes) : utiles pour l''analyse de
données à grande échelle.

Les bases orientées graphe stockent des nœuds et des relations entre eux : utiles quand ce qui compte, c''est la
relation elle-même (un réseau de clients et de recommandations, une détection de fraude par association de
comptes).

Un point théorique important pour l''examen : beaucoup de bases NoSQL distribuées privilégient la disponibilité
et la rapidité au prix d''une cohérence "éventuelle" plutôt qu''immédiate (le théorème CAP illustre ce compromis
entre cohérence, disponibilité et tolérance aux pannes réseau) ; une mise à jour peut mettre quelques instants
à être visible partout dans le système, ce qui est acceptable pour un compteur de "j''aime" mais pas pour un
solde bancaire.

## La modélisation décisionnelle : schémas en étoile et en flocon

Un système décisionnel (ou entrepôt de données) ne sert pas à faire fonctionner l''application au quotidien, mais
à analyser l''historique des données pour produire des tableaux de bord et aider à la décision. On y organise les
données différemment du modèle relationnel classique, autour d''une table de faits et de tables de dimensions.

La table de faits contient les mesures chiffrées qu''on veut analyser (montant d''une vente, quantité vendue),
accompagnées de clés qui pointent vers les tables de dimensions (quel produit, quelle région, quelle date).

Les tables de dimensions décrivent le contexte de chaque mesure (le nom et la catégorie d''un produit, le nom
d''une région, le jour, le mois et l''année d''une date).

Dans un schéma en étoile, chaque dimension est une seule table, reliée directement à la table de faits : c''est
simple à comprendre et rapide à interroger. Dans un schéma en flocon, les dimensions sont elles-mêmes découpées
en sous-tables (par exemple la dimension produit découpée en produit et catégorie de produit séparément) : cela
réduit la redondance des données mais complique un peu les requêtes, qui doivent joindre davantage de tables.
Pour un examen, retenir que l''étoile privilégie la simplicité d''interrogation et que le flocon privilégie la
normalisation des dimensions.

## Étude de cas : Sahel Distribution

Sahel Distribution est une chaîne fictive de distribution présente à Dakar et à Thiès. Elle veut construire un
tableau de bord trimestriel des ventes par région. Les données brutes, vérifiées par une requête d''agrégation
sur une table de faits simplifiée (région, trimestre, montant en FCFA, quantité), donnent les totaux suivants
pour l''année 2025 : à Dakar, 2 080 000 FCFA au premier trimestre, 1 660 000 FCFA au deuxième, 1 430 000 FCFA au
troisième ; à Thiès, 540 000 FCFA au premier trimestre, 1 120 000 FCFA au deuxième, 760 000 FCFA au troisième.
Le total cumulé sur les trois trimestres pour Dakar s''élève à 5 170 000 FCFA. Ces montants, obtenus par une
requête SQL de type GROUP BY région, trimestre avec une somme sur le montant, montrent une baisse progressive
des ventes à Dakar et une progression puis un recul à Thiès, ce qui invite l''équipe commerciale à analyser les
causes (concurrence locale, saisonnalité, rupture de stock) plutôt que de se contenter du chiffre global annuel.

Pour ce tableau de bord, un schéma en étoile convient bien : une table de faits "ventes" avec les mesures
(montant, quantité), reliée à des dimensions "produit", "région" et "date". Si Sahel Distribution veut par la
suite affiner l''analyse par catégorie de produit tout en limitant la redondance des libellés, elle peut faire
évoluer la dimension produit vers un schéma en flocon, en séparant produit et catégorie.

## Points clés à retenir

- Le NoSQL complète le relationnel pour les données peu structurées, les très gros volumes ou les besoins de
  performance à grande échelle, pas pour remplacer systématiquement les bases transactionnelles classiques.
- Les quatre grandes familles NoSQL (document, clé-valeur, colonne, graphe) répondent à des besoins différents ;
  savoir les reconnaître dans un énoncé est plus important que mémoriser un produit précis.
- Un entrepôt de données s''organise autour d''une table de faits et de tables de dimensions, en schéma étoile
  (simple) ou en flocon (normalisé).
- Toute agrégation chiffrée présentée en examen doit pouvoir être justifiée par le calcul qui y mène (somme,
  moyenne, regroupement).

## Exercices pratiques

1. Citez les quatre grandes familles de bases NoSQL et, pour chacune, un exemple de besoin auquel elle répond.
2. Pourquoi une base relationnelle classique reste-t-elle préférable pour une application de comptabilité ?
3. Expliquez la différence entre un schéma en étoile et un schéma en flocon pour un entrepôt de données.
4. Qu''est-ce que la "cohérence éventuelle" dans une base NoSQL distribuée, et pourquoi peut-elle être acceptable
   pour certains usages mais pas pour d''autres ?
5. Dans le cas de Sahel Distribution, que signifie concrètement un montant de 5 170 000 FCFA pour Dakar sur les
   trois premiers trimestres 2025, et quelle requête SQL permettrait de l''obtenir ?
6. Cas pratique complet : une plateforme fictive de livraison de repas, "Ndeye Food", veut suivre pour chaque
   trimestre le nombre de commandes et le montant total par ville. Proposez une table de faits et ses
   dimensions, précisez s''il s''agit plutôt d''un schéma étoile ou flocon pour un premier tableau de bord simple,
   et écrivez la structure de la requête SQL (clauses principales) qui donnerait le total par ville et par
   trimestre.
7. Pourquoi Sahel Distribution pourrait-elle choisir de faire évoluer sa dimension produit vers un schéma en
   flocon plutôt que de garder un schéma en étoile pur ?

## Corrigé

1. Document (catalogue de produits à attributs variables), clé-valeur (session utilisateur, panier temporaire),
   colonne (agrégations rapides sur de très grands volumes), graphe (réseau de relations, détection de fraude).
2. Parce qu''une application comptable a besoin de transactions fiables à 100 % (propriétés ACID) : un montant ne
   doit jamais être perdu, dupliqué ou visible de façon incohérente, ce que garantit mieux le relationnel.
3. Le schéma en étoile relie chaque dimension directement, sans sous-niveau, pour des requêtes simples et
   rapides. Le schéma en flocon découpe les dimensions en sous-tables pour réduire la redondance, au prix de
   requêtes qui joignent davantage de tables.
4. Une mise à jour peut mettre un court instant avant d''être visible sur tous les serveurs du système distribué ;
   c''est acceptable pour un compteur social (quelques secondes de retard sans conséquence grave) mais pas pour
   un solde bancaire, où un décalage pourrait permettre une double dépense.
5. Cela signifie que la somme de toutes les ventes enregistrées à Dakar sur les trois premiers trimestres 2025
   atteint ce montant. La requête correspondante regroupe la table de faits par région et trimestre (ou
   directement filtre sur la région) et applique une somme sur la colonne montant : SELECT SUM(montant_fcfa)
   FROM fait_ventes WHERE id_region = ''Dakar''.
6. Table de faits "commandes" avec les mesures nombre de commandes et montant total, reliée aux dimensions
   "ville" et "date" (avec un attribut trimestre). Pour un premier tableau de bord simple, un schéma en étoile
   convient. La requête aurait la structure : SELECT ville, trimestre, COUNT(*) AS nb_commandes,
   SUM(montant_fcfa) AS total FROM fait_commandes GROUP BY ville, trimestre.
7. Parce qu''avec de nombreux produits partageant les mêmes catégories, répéter le libellé de catégorie dans
   chaque ligne de la dimension produit crée de la redondance ; séparer produit et catégorie en sous-tables
   (flocon) réduit cette redondance et facilite la mise à jour d''une catégorie sans toucher à chaque produit.
', 'texte', 50, false, 30
from public.courses c where c.slug = 'mas-info-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Bases de données avancées et Big Data : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cybersécurité avancée : l''essentiel pour l''examen', '## Objectifs de la leçon

Cette leçon prolonge la sécurité de base vue en Licence (mots de passe, pare-feu, mises à jour) vers trois
volets avancés : la cryptographie appliquée (comment chiffrer et authentifier des données concrètement), la
démarche d''audit de vulnérabilités (comment identifier et hiérarchiser les failles d''un système), et la
gouvernance de la sécurité des systèmes d''information (comment organiser la sécurité à l''échelle d''une
entreprise). On s''appuie sur le cas fictif d''une banque de microfinance sénégalaise, "Baobab Finance Digitale".

## Cryptographie appliquée : chiffrement, hachage, signature

Le chiffrement symétrique utilise une même clé secrète pour chiffrer et déchiffrer un message : rapide, adapté
à de gros volumes de données, mais il faut transmettre la clé de façon sûre aux deux parties, ce qui pose un
problème pratique dès que les correspondants sont nombreux ou distants.

Le chiffrement asymétrique utilise une paire de clés : une clé publique, diffusée librement, qui chiffre les
messages, et une clé privée, gardée secrète, qui seule permet de les déchiffrer. Cela résout le problème de la
transmission de la clé : on peut chiffrer un message pour quelqu''un sans jamais lui envoyer de secret au
préalable. Un exemple numérique simplifié (valeurs réduites pour l''exercice, un vrai système utilise des
nombres bien plus grands) : avec deux nombres premiers p = 61 et q = 53, on calcule n = p × q = 3233 et une
valeur associée phi = (p-1) × (q-1) = 3120. En choisissant un exposant public e = 17, on trouve un exposant
privé d = 2753 tel que e × d soit congru à 1 modulo phi. Un message représenté par le nombre 65 est chiffré en
calculant 65 à la puissance e modulo n, ce qui donne 2790 ; en calculant 2790 à la puissance d modulo n, on
retrouve bien 65. Ce principe (chiffrement et déchiffrement par deux clés liées mathématiquement) est celui du
chiffrement asymétrique, à la base notamment des certificats utilisés pour sécuriser les sites web.

Le hachage transforme une donnée en une empreinte de taille fixe, de façon à sens unique (on ne peut pas
retrouver la donnée d''origine à partir de l''empreinte) et telle que la moindre modification de la donnée change
complètement l''empreinte. Il sert à vérifier l''intégrité d''un fichier ou à stocker un mot de passe sans jamais
conserver le mot de passe lui-même en clair.

La signature numérique combine hachage et chiffrement asymétrique pour garantir à la fois l''intégrité d''un
message (il n''a pas été modifié) et son authenticité (il provient bien de l''émetteur annoncé), en chiffrant
l''empreinte du message avec la clé privée de l''émetteur, ce que n''importe qui peut vérifier avec sa clé publique.

## La démarche d''audit de vulnérabilités

Un audit de vulnérabilités suit une démarche structurée en quatre étapes. D''abord, la cartographie des actifs :
recenser les systèmes, applications et données à protéger, car on ne peut pas sécuriser ce qu''on ne connaît pas.
Ensuite, l''identification des vulnérabilités : rechercher les failles connues (logiciels non mis à jour,
configurations par défaut non changées, mots de passe faibles, absence de chiffrement sur des échanges
sensibles) par des outils spécialisés et par une analyse manuelle. Puis la hiérarchisation des risques : toutes
les vulnérabilités ne se valent pas, on les classe selon leur probabilité d''exploitation et leur impact
potentiel (une faille critique sur un système accessible depuis l''extérieur est prioritaire par rapport à une
faille mineure sur un système isolé). Enfin, la recommandation de correctifs : proposer des mesures concrètes et
réalistes, en tenant compte du budget et du temps disponibles, plutôt qu''une liste théorique inapplicable.

Un principe à retenir pour l''examen : le risque se raisonne comme un produit entre la probabilité qu''une menace
se réalise et l''impact qu''elle aurait si elle se réalisait ; une vulnérabilité très probable mais à faible
impact peut être moins prioritaire qu''une vulnérabilité rare mais catastrophique.

## Gouvernance de la sécurité des systèmes d''information

La gouvernance de la sécurité dépasse la technique : c''est l''organisation qui permet à une entreprise de
maintenir un niveau de sécurité cohérent dans le temps. Elle repose sur quelques principes généraux (les
référentiels précis comme la norme ISO 27001 donnent un cadre reconnu, à mentionner en principe sans en détailler
les clauses exactes en l''absence de certitude sur leur contenu précis) : une politique de sécurité écrite et
validée par la direction, qui fixe les règles à respecter ; une gestion des risques régulière, qui réévalue les
menaces à mesure que le système évolue ; une sensibilisation continue des employés, qui restent souvent le point
d''entrée le plus exploité par les attaquants (hameçonnage, mots de passe partagés) ; et un plan de continuité
d''activité, qui prévoit comment l''entreprise continue de fonctionner, ou reprend rapidement, après un incident
grave (panne majeure, cyberattaque, sinistre).

## Étude de cas : Baobab Finance Digitale

Baobab Finance Digitale est un établissement fictif de microfinance qui propose des services bancaires par
application mobile à Dakar et dans les régions environnantes. Un audit interne récent a identifié plusieurs
points : certains échanges entre l''application mobile et le serveur ne sont pas systématiquement chiffrés, les
mots de passe des employés n''ont pas été renouvelés depuis plus d''un an, et aucune procédure écrite n''existe en
cas de panne du système de paiement.

Hiérarchisation : l''absence de chiffrement sur les échanges contenant des données financières est une faille à
fort impact et à forte probabilité d''exploitation (interception des communications), donc prioritaire. Les mots
de passe anciens représentent un risque réel mais moins immédiat si d''autres protections existent (authentification
à plusieurs facteurs). L''absence de procédure de continuité est un risque organisationnel qui ne cause pas une
faille immédiate, mais aggraverait fortement l''impact d''un incident s''il survenait.

Recommandations réalistes : généraliser le chiffrement de tous les échanges contenant des données sensibles en
priorité absolue ; mettre en place une politique de renouvellement régulier des mots de passe et, si possible,
une authentification à plusieurs facteurs ; rédiger un plan de continuité minimal (qui contacter, quelles
actions immédiates, comment informer les clients) même simple, plutôt que de ne rien prévoir du tout.

## Points clés à retenir

- Le chiffrement symétrique est rapide mais pose un problème de transmission de la clé ; le chiffrement
  asymétrique résout ce problème grâce à une paire de clés publique/privée liées mathématiquement.
- Le hachage garantit l''intégrité (vérifier qu''une donnée n''a pas changé) ; la signature numérique combine
  hachage et chiffrement asymétrique pour garantir en plus l''authenticité.
- Un audit de vulnérabilités suit quatre étapes : cartographie des actifs, identification des failles,
  hiérarchisation des risques selon probabilité et impact, puis recommandations réalistes.
- La gouvernance de la sécurité dépasse la technique : politique écrite, gestion des risques continue,
  sensibilisation des employés, plan de continuité d''activité.

## Exercices pratiques

1. Expliquez la différence entre chiffrement symétrique et chiffrement asymétrique, et pourquoi l''asymétrique
   résout un problème pratique que le symétrique seul ne résout pas.
2. Qu''est-ce qu''une fonction de hachage, et pourquoi sert-elle à stocker des mots de passe sans les conserver
   en clair ?
3. Décrivez les quatre étapes d''une démarche d''audit de vulnérabilités.
4. Pourquoi une vulnérabilité très probable mais à faible impact peut-elle être moins prioritaire qu''une
   vulnérabilité rare mais catastrophique ?
5. Citez deux éléments d''une gouvernance de la sécurité des systèmes d''information qui ne relèvent pas
   directement de la technique.
6. Cas pratique complet : une plateforme fictive de paiement mobile, "Teranga Pay", découvre que son
   application envoie certaines données de connexion sans chiffrement et que plusieurs employés utilisent le
   même mot de passe pour des comptes différents. Proposez une hiérarchisation des deux problèmes et une
   recommandation concrète pour chacun, en expliquant votre raisonnement.
7. En reprenant l''exemple numérique du chiffrement asymétrique de cette leçon, expliquez avec vos propres mots
   pourquoi un message chiffré avec la clé publique ne peut être déchiffré qu''avec la clé privée correspondante.

## Corrigé

1. Le chiffrement symétrique utilise une seule clé secrète partagée, rapide mais difficile à transmettre en
   toute sécurité ; l''asymétrique utilise une paire de clés publique/privée, ce qui permet de chiffrer un
   message pour un destinataire sans jamais lui transmettre de secret au préalable.
2. Une fonction de hachage transforme une donnée en une empreinte de taille fixe de façon irréversible ; on
   stocke l''empreinte du mot de passe, et à chaque connexion on recalcule l''empreinte saisie pour la comparer,
   sans jamais avoir besoin de connaître le mot de passe en clair.
3. Cartographie des actifs (recenser ce qui doit être protégé), identification des vulnérabilités (rechercher
   les failles), hiérarchisation des risques (probabilité et impact), recommandation de correctifs réalistes.
4. Parce que le risque global dépend du produit entre probabilité et impact ; une menace rare mais aux
   conséquences catastrophiques peut représenter un risque global plus élevé qu''une menace fréquente mais sans
   conséquence grave.
5. Par exemple : la politique de sécurité écrite validée par la direction, et la sensibilisation continue des
   employés aux risques comme l''hameçonnage (on peut aussi citer le plan de continuité d''activité).
6. L''absence de chiffrement des données de connexion est prioritaire : elle expose directement des identifiants
   à l''interception, avec un impact et une probabilité élevés ; recommandation : chiffrer systématiquement ces
   échanges. Le partage de mots de passe entre comptes est un risque réel mais plus organisationnel ;
   recommandation : imposer des mots de passe uniques par compte et, si possible, une authentification à
   plusieurs facteurs.
7. Parce que les deux clés sont liées par une relation mathématique (ici, via les nombres p, q, n et phi) telle
   que ce qui est chiffré avec l''une ne peut être déchiffré qu''avec l''autre ; sans connaître les nombres premiers
   d''origine utilisés pour construire la clé privée, il est extrêmement difficile de retrouver cette clé à
   partir de la seule clé publique, ce qui garantit la sécurité du système pour des nombres suffisamment grands.
', 'texte', 50, false, 40
from public.courses c where c.slug = 'mas-info-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cybersécurité avancée : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Master 1 Informatique (corrigé détaillé)', '## Sujet type d''examen de Master 1 Informatique (non officiel, à titre d''entraînement)

Durée indicative : 2 heures. Barème indicatif (non officiel) : partie 1 sur 8 points, partie 2 sur 7 points,
partie 3 sur 5 points. Les candidats sont invités à vérifier le barème exact communiqué par leur établissement.

## Énoncé

Contexte : "Agri Connect Sénégal" est une plateforme fictive qui met en relation des producteurs agricoles et
des acheteurs (commerces, restaurants) dans la région de Saint-Louis. La plateforme gère actuellement, dans une
seule application monolithique connectée à une base relationnelle unique, les annonces de produits, les
commandes, la messagerie entre producteurs et acheteurs, et un tableau de bord de suivi des ventes. L''équipe
technique, composée de quatre développeurs, rencontre les difficultés suivantes : la messagerie, très sollicitée
en période de récolte, ralentit l''ensemble du site ; certains producteurs publient des annonces avec des
attributs très différents selon le type de produit (un sac de riz décrit par son poids, un panier de mangues
décrit par son calibre et sa variété) ; et la direction veut un tableau de bord fiable du chiffre d''affaires par
région et par trimestre pour décider où renforcer les équipes commerciales.

Partie 1 (8 points) — Architecture. Proposez un découpage en microservices pertinent pour Agri Connect Sénégal,
en justifiant précisément quel service doit être isolé et pourquoi, et quel rôle joueraient des conteneurs dans
le déploiement de ce découpage.

Partie 2 (7 points) — Données. Pour les annonces de produits aux attributs très variables, quelle famille de
base de données recommandez-vous, et pourquoi ? Pour le tableau de bord du chiffre d''affaires par région et par
trimestre, proposez un schéma décisionnel (table de faits et dimensions) et indiquez la structure d''une requête
SQL permettant d''obtenir le total par région et par trimestre.

Partie 3 (5 points) — Sécurité. La messagerie entre producteurs et acheteurs contient parfois des informations
sensibles (numéros de téléphone, détails de paiement convenus hors plateforme). Proposez deux mesures de
sécurité concrètes pour protéger ces échanges, et expliquez comment vous hiérarchiseriez les risques identifiés
si un audit révélait à la fois cette absence de chiffrement et des mots de passe non renouvelés depuis longtemps.

## Corrigé détaillé

Partie 1. Le découpage pertinent isole au minimum quatre services : "annonces", "commandes", "messagerie" et
"tableau de bord". Le service messagerie doit être isolé en priorité, car c''est lui qui sature actuellement tout
le système en période de récolte ; en l''isolant, on peut le dimensionner (le répliquer) indépendamment des
autres fonctions sans affecter les annonces ou les commandes. Les conteneurs permettent de déployer chaque
service de façon reproductible et d''ajuster le nombre d''exemplaires du service messagerie pendant les pics de
récolte, puis de le réduire en période calme, sans toucher aux autres services. (Barème : 3 points pour le
découpage justifié, 3 points pour l''isolement prioritaire de la messagerie avec sa justification, 2 points pour
le rôle des conteneurs.)

Partie 2. Pour les annonces aux attributs variables, une base NoSQL orientée document est recommandée, car elle
permet de stocker chaque annonce avec sa propre structure (poids pour un sac de riz, calibre et variété pour des
mangues) sans schéma relationnel rigide imposé à l''avance. Pour le tableau de bord, un schéma en étoile convient
pour un premier niveau d''analyse : une table de faits "ventes" avec les mesures (montant, quantité), reliée aux
dimensions "région" et "date" (avec un attribut trimestre). La requête a la structure : SELECT region, trimestre,
SUM(montant_fcfa) AS total FROM fait_ventes GROUP BY region, trimestre ORDER BY region, trimestre. (Barème : 3
points pour le choix NoSQL document justifié, 4 points pour le schéma décisionnel et la requête.)

Partie 3. Deux mesures concrètes : chiffrer systématiquement les échanges de la messagerie (protocole sécurisé
de bout en bout ou au minimum chiffrement des communications réseau), et mettre en place une politique de
renouvellement régulier des mots de passe avec, si possible, une authentification à plusieurs facteurs pour les
comptes sensibles. Hiérarchisation : l''absence de chiffrement des échanges contenant des informations sensibles
(numéros de téléphone, détails de paiement) représente le risque le plus prioritaire, car elle a un impact et une
probabilité d''exploitation élevés (interception directe de données sensibles) ; les mots de passe anciens
constituent un risque réel mais généralement moins immédiat, à traiter en seconde priorité, sauf signe d''une
compromission déjà en cours. (Barème : 2 points par mesure concrète, 1 point pour la hiérarchisation justifiée.)

## Exercices pratiques

1. Reprenez la partie 1 du sujet et proposez une variante : si c''est le service "tableau de bord" qui devenait
   le plus sollicité (par exemple parce que de nombreux responsables régionaux le consultent en continu),
   quelles conséquences cela aurait-il sur votre choix de dimensionnement ?
2. Pour la partie 2, expliquez pourquoi un schéma en flocon serait aussi envisageable pour le tableau de bord
   d''Agri Connect Sénégal, et dans quelle situation il deviendrait préférable au schéma en étoile.
3. Si l''audit de sécurité révélait en plus que le service de commandes n''enregistre aucune trace (journal) des
   modifications de prix, quelle recommandation ajouteriez-vous, et pourquoi ce point relève-t-il à la fois de
   la sécurité et de la gouvernance ?

## Corrigé

1. Si le tableau de bord devient le plus sollicité, c''est ce service qu''il faudrait répliquer davantage (par
   exemple via plusieurs exemplaires du service dans des conteneurs), sans changer le principe général : on
   dimensionne le service réellement sollicité, pas un service choisi à l''avance, ce qui montre l''intérêt de
   pouvoir ajuster chaque service indépendamment des autres.
2. Un schéma en flocon deviendrait préférable si les dimensions comportent beaucoup de sous-catégories répétées
   (par exemple une dimension "région" elle-même découpée en zones plus fines, ou une dimension "produit" avec
   de nombreuses catégories partagées entre annonces) : normaliser ces sous-niveaux réduirait la redondance,
   au prix de requêtes légèrement plus complexes à écrire.
3. L''absence de journal des modifications de prix empêche de savoir qui a modifié quoi et quand, ce qui est à la
   fois une faille de sécurité (impossible de détecter une modification malveillante ou une erreur) et un
   problème de gouvernance (absence de traçabilité, contraire à une politique de sécurité bien formalisée) ; la
   recommandation est de mettre en place un journal d''audit systématique des modifications sensibles.
', 'texte', 45, false, 50
from public.courses c where c.slug = 'mas-info-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Master 1 Informatique (corrigé détaillé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Architectures logicielles et microservices', '## Fiche du cours vidéo

Durée : 1h30. Objectif : savoir concevoir une architecture en microservices pertinente, construire une API REST
avancée robuste, et expliquer le rôle des conteneurs, à travers le fil conducteur d''un cas d''entreprise
sénégalais fictif. Matériel : tableau ou diaporama avec les schémas d''architecture, support papier pour le
quiz. Prérequis : notions de base du web et des API (vues en Licence), notion de client-serveur.

## Déroulé minuté

## 00:00 – 05:00 · Introduction et objectifs

Bonjour à toutes et à tous, et bienvenue dans ce cours vidéo consacré aux architectures logicielles et aux
microservices. Aujourd''hui, nous allons construire ensemble la capacité à répondre à une question centrale du
Master 1 : comment faire évoluer une application qui a grandi au point de devenir difficile à maintenir ? Nous
allons suivre tout au long de cette séance le cas de Teranga Digital Market, une plateforme fictive de vente en
ligne de produits locaux à Dakar, confrontée à des problèmes très concrets de montée en charge et d''organisation
d''équipe. À la fin de cette séance, vous serez capables de proposer un découpage en microservices argumenté,
de concevoir une API REST qui tient la route en production, et d''expliquer simplement à quoi servent les
conteneurs dans ce contexte. Gardez une feuille à côté de vous : je vais vous poser plusieurs questions au fil
du cours, essayez d''y répondre avant que je ne donne la réponse.

## 05:00 – 20:00 · Du monolithe aux microservices

Commençons par le monolithe. Imaginez une application qui gère, dans un seul programme et une seule base de
données, le catalogue de produits, le panier, le paiement, la livraison et les comptes clients. Au démarrage
d''une entreprise, c''est souvent le bon choix : c''est simple à développer, à tester, à déployer, une seule équipe
peut tout maîtriser. Le problème apparaît quand l''application grossit. Je vous montre à l''écran trois symptômes
typiques : premièrement, une panne sur une fonction secondaire bloque tout le site, parce que tout est lié dans
le même programme ; deuxièmement, un pic de charge sur une seule fonction, par exemple le catalogue pendant une
promotion, sature toute l''application, pas seulement cette fonction ; troisièmement, deux équipes qui travaillent
sur le même code se gênent mutuellement, chaque modification de l''une pouvant casser le travail de l''autre.

Face à ces trois symptômes, l''architecture en microservices propose de découper le système en services
indépendants, chacun responsable d''une fonctionnalité métier précise, avec sa propre base de données et son
propre cycle de déploiement. Je dessine au tableau : un service "catalogue", un service "panier", un service
"paiement", un service "compte client", chacun exposé par sa propre API, qui communiquent entre eux par le
réseau. Posons-nous la question : quel est le principal avantage de ce découpage pour une équipe de
développement ? Réponse : chaque équipe peut faire évoluer et déployer son service sans attendre les autres,
ce qui réduit les conflits et accélère les livraisons. Mais attention, ce n''est pas gratuit : la complexité ne
disparaît pas, elle se déplace. Avant, la complexité était dans un seul programme difficile à faire évoluer ;
maintenant, elle est dans la communication entre services, qui doivent se comprendre et rester cohérents entre
eux. C''est pourquoi je vous le dis clairement : les microservices ne sont pas un choix par défaut. Pour une
petite application avec une seule équipe, un monolithe bien structuré en modules internes clairs reste souvent
la décision la plus raisonnable. Le choix dépend toujours du contexte : taille de l''équipe, volume de trafic,
criticité de chaque fonction.

## 20:00 – 35:00 · Concevoir une API REST avancée

Passons maintenant à la conception d''une API REST avancée, celle qui va exposer chacun de nos services. Vous
connaissez déjà les bases depuis la Licence : des ressources identifiées par une adresse, des verbes HTTP
(GET, POST, PUT, DELETE). Au niveau Master, quatre points avancés font la différence entre une API scolaire et
une API prête pour la production, et je vais les détailler avec des exemples tirés de Teranga Digital Market.

Premier point, le versionnage. Si demain nous changeons la structure des données renvoyées par l''API catalogue,
nous risquons de casser l''application mobile qui l''utilise déjà. La solution : garder une ancienne version
disponible, par exemple /v1/produits, pendant qu''on introduit /v2/produits, le temps que tous les clients de
l''API migrent vers la nouvelle version.

Deuxième point, la pagination. Si notre catalogue contient dix mille produits, renvoyer la liste complète en une
seule réponse serait inefficace et lent. On renvoie des pages de résultats, par exemple vingt produits à la
fois, avec une information sur le nombre total de pages disponibles.

Troisième point, la gestion des erreurs. Une API avancée utilise les codes HTTP de façon précise : 400 pour une
requête mal formée, 401 quand l''authentification manque, 403 quand l''accès est refusé, 404 quand la ressource
n''existe pas, 409 en cas de conflit, 500 pour une erreur côté serveur. Je vous pose la question : que pensez-vous
d''une API qui renvoie toujours le code 200, même en cas d''erreur, avec un simple champ texte "erreur" caché dans
la réponse ? Prenez quelques secondes... C''est une mauvaise pratique, car cela oblige chaque développeur qui
utilise l''API à deviner qu''il doit analyser le contenu de la réponse au lieu de se fier au code HTTP standard,
ce qui multiplie les risques de bugs côté client.

Quatrième point, la sécurité des échanges : chiffrement des communications, authentification par jeton d''accès
à chaque requête, et limitation du nombre de requêtes par minute pour éviter les abus.

## 35:00 – 45:00 · Le principe des conteneurs

Abordons maintenant les conteneurs. Un conteneur empaquette un service avec tout ce dont il a besoin pour
fonctionner : le code, les dépendances, la configuration. L''intérêt principal : le service se comporte exactement
de la même façon sur la machine du développeur, sur un serveur de test et sur un serveur de production, parce
que l''environnement d''exécution est identique partout. Je vous montre une comparaison simple au tableau : une
machine virtuelle complète embarque un système d''exploitation entier, séparé de celui de la machine hôte, ce qui
consomme beaucoup de ressources et prend du temps à démarrer. Un conteneur, lui, partage le noyau du système
d''exploitation de la machine hôte et n''embarque que l''application et ses dépendances : il est donc beaucoup plus
léger et démarre en quelques secondes. Pour une architecture en microservices, c''est un allié naturel : chaque
service tourne dans son propre conteneur, isolé des autres, sans conflit de dépendances. Un outil
d''orchestration, que nous ne détaillerons pas ici, permet ensuite de démarrer, arrêter et répliquer
automatiquement ces conteneurs selon la charge réelle du système. Pour l''examen, retenez le principe : isolation,
reproductibilité, légèreté par rapport à une machine virtuelle, et l''intérêt direct pour déployer des
microservices sans conflit entre eux.

## 45:00 – 50:00 · Pause et quiz interactif

C''est le moment de faire une pause et de tester vos acquis avec un petit quiz. Première question : citez un
avantage et un inconvénient des microservices par rapport à un monolithe. Deuxième question : pourquoi le
versionnage d''une API REST est-il nécessaire ? Troisième question : quelle est la différence essentielle entre
un conteneur et une machine virtuelle complète ? Mettez en pause si besoin, répondez sur votre feuille, puis
reprenez la vidéo. ... Voici les réponses attendues : pour la première question, un avantage est le déploiement
indépendant de chaque service, un inconvénient est la complexité accrue de la communication entre services ;
pour la deuxième, parce que modifier une API sans versionnage peut casser les applications qui l''utilisent déjà ;
pour la troisième, un conteneur partage le noyau du système hôte et reste léger, alors qu''une machine virtuelle
embarque un système d''exploitation complet et séparé, plus lourd.

## 50:00 – 1:10:00 · Étude de cas complète : Teranga Digital Market

Reprenons maintenant le cas de Teranga Digital Market dans son intégralité, pour appliquer tout ce que nous
venons de voir. Rappel du contexte : une plateforme de vente en ligne de produits locaux, qui a démarré comme un
monolithe il y a trois ans, et qui rencontre trois problèmes : le service de paiement, dépendant d''un partenaire
externe, tombe parfois en panne et bloque tout le site ; les promotions saisonnières multiplient par six le
trafic sur le catalogue sans affecter les autres fonctions ; et deux équipes de développement se gênent car elles
modifient le même code.

Je vous propose de construire la réponse étape par étape, comme en examen. Étape une, l''analyse : chacun des
trois problèmes pointe vers une limite du monolithe. L''indisponibilité en cascade montre un manque d''isolation.
Le pic de charge ciblé montre un besoin de dimensionnement différencié. Les conflits entre équipes montrent un
besoin de responsabilités claires par service. Étape deux, la proposition : découper l''application en au moins
quatre services indépendants, catalogue, panier, paiement, compte client, chacun exposé par une API REST
versionnée, avec son propre stockage de données, déployé dans son propre conteneur. Étape trois, la
justification du dimensionnement : le service catalogue, le plus sollicité pendant les pics, peut être répliqué
en plusieurs exemplaires sans toucher aux autres services ; le service paiement, moins fiable par nature car
dépendant d''un partenaire externe, est isolé, si bien qu''une panne de paiement n''empêche plus la consultation du
catalogue ni la constitution du panier. Étape quatre, la mise en œuvre progressive : on ne migre pas tout en une
fois, on commence par le service qui pose le plus de problèmes, ici le paiement ou le catalogue, pour limiter
les risques et valider chaque étape avant de passer à la suivante.

Cette méthode en quatre étapes, analyse, proposition, justification, mise en œuvre progressive, est exactement
celle que vous devez reproduire face à n''importe quel cas d''architecture en examen.

## 1:10:00 – 1:20:00 · Synthèse

Résumons les points essentiels de cette séance. Les microservices résolvent des problèmes réels de déploiement
indépendant et de dimensionnement ciblé, mais déplacent la complexité vers la communication entre services ; ce
n''est pas un choix par défaut, il dépend du contexte. Une API REST avancée se distingue par son versionnage, sa
pagination, sa gestion fine des erreurs avec des codes HTTP précis, et la sécurité de ses échanges. Un conteneur
isole un service et le rend reproductible d''un environnement à l''autre, de façon plus légère qu''une machine
virtuelle complète, ce qui en fait un allié naturel des microservices. Et face à un cas d''entreprise, la méthode
est toujours la même : analyser les symptômes, proposer un découpage justifié, argumenter le dimensionnement
différencié, puis prévoir une mise en œuvre progressive.

## 1:20:00 – 1:30:00 · Évaluation finale

Pour terminer, voici cinq questions d''évaluation. Prenez le temps d''y répondre avant d''écouter les réponses.

Question 1 : quel est le principal inconvénient d''une architecture en microservices par rapport à un monolithe ?
Réponse : la complexité accrue de la communication entre services et la difficulté à garantir la cohérence des
données réparties entre plusieurs bases.

Question 2 : pourquoi une API REST avancée ne doit-elle pas renvoyer systématiquement le code 200 en cas
d''erreur ? Réponse : parce que cela oblige le développeur consommateur de l''API à analyser le corps de la
réponse pour détecter une erreur, au lieu de se fier aux codes HTTP standards, ce qui multiplie les risques de
bugs.

Question 3 : quelle est la différence essentielle entre un conteneur et une machine virtuelle complète ?
Réponse : un conteneur partage le noyau du système hôte et reste léger et rapide à démarrer, tandis qu''une
machine virtuelle embarque un système d''exploitation complet et séparé.

Question 4 : dans le cas de Teranga Digital Market, pourquoi le service de paiement doit-il être isolé en
priorité ? Réponse : parce qu''il dépend d''un partenaire externe et tombe en panne plus souvent que les autres
fonctions ; l''isoler évite qu''une de ses pannes bloque la consultation du catalogue ou la constitution du panier.

Question 5 : pourquoi une migration vers les microservices se mène-t-elle généralement service par service
plutôt qu''en une seule fois ? Réponse : pour limiter les risques, valider chaque étape avant de passer à la
suivante, et pouvoir revenir en arrière plus facilement en cas de problème.

Merci pour votre attention et à la prochaine séance, consacrée aux bases de données avancées et au Big Data.
', 'video', 90, false, 60
from public.courses c where c.slug = 'mas-info-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Architectures logicielles et microservices');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Bases de données avancées et Big Data', '## Fiche du cours vidéo

Durée : 1h30. Objectif : savoir choisir entre relationnel et NoSQL selon le besoin, reconnaître les quatre
grandes familles NoSQL, et construire un schéma décisionnel (étoile ou flocon) avec des requêtes SQL
d''agrégation vérifiées. Fil conducteur : le cas fictif de Sahel Distribution. Matériel : tableau ou diaporama,
feuille de calcul pour suivre les exemples chiffrés. Prérequis : SQL de base (SELECT, GROUP BY, jointures),
modélisation relationnelle vue en Licence.

## Déroulé minuté

## 00:00 – 05:00 · Introduction et objectifs

Bonjour et bienvenue dans ce cours vidéo consacré aux bases de données avancées et au Big Data. Vous maîtrisez
déjà le modèle relationnel et le langage SQL depuis la Licence. Aujourd''hui, nous allons voir dans quelles
situations ce modèle montre ses limites, quelles alternatives NoSQL existent, et comment construire un entrepôt
de données pour alimenter des tableaux de bord de pilotage. Nous suivrons le cas de Sahel Distribution, une
chaîne fictive de distribution présente à Dakar et à Thiès, qui veut analyser ses ventes trimestrielles par
région. À la fin de la séance, vous saurez choisir la bonne famille de base de données selon un besoin donné,
et construire un schéma décisionnel avec sa requête d''agrégation.

## 05:00 – 18:00 · Pourquoi le relationnel ne suffit pas toujours

Le modèle relationnel impose un schéma fixe, des tables aux colonnes définies à l''avance, et garantit de fortes
propriétés de cohérence, qu''on appelle les propriétés ACID : atomicité, cohérence, isolation, durabilité. C''est
le choix le plus sûr pour des données structurées et des transactions sensibles, comme la comptabilité ou la
gestion des stocks. Mais trois situations le mettent en difficulté, et je veux que vous les reconnaissiez
immédiatement dans un énoncé d''examen. Premièrement, des données dont la structure varie beaucoup d''un
enregistrement à l''autre : pensez à un catalogue où un sac de riz est décrit par son poids, alors qu''un panier
de mangues est décrit par son calibre et sa variété, des attributs complètement différents. Deuxièmement, un
volume de données qui dépasse ce qu''une seule machine peut gérer efficacement, nécessitant de répartir les
données sur plusieurs serveurs. Troisièmement, un besoin de lecture et d''écriture très rapide à très grande
échelle, où la rigueur transactionnelle complète du relationnel devient un frein de performance plutôt qu''un
atout.

## 18:00 – 35:00 · Les quatre familles NoSQL

Le terme NoSQL signifie "Not Only SQL" : ces bases ne remplacent pas le relationnel, elles le complètent. Je
vous présente les quatre grandes familles, avec un exemple pour chacune. Les bases orientées document stockent
chaque enregistrement comme un document semi-structuré, souvent au format JSON, sans schéma fixe imposé à
l''avance : c''est exactement ce qu''il faut pour le catalogue de produits de Sahel Distribution, avec ses
attributs très variables selon la catégorie. Les bases clé-valeur stockent une valeur associée à une clé
unique, pour des accès très rapides par identifiant : pensez à une session utilisateur ou à un panier d''achat
temporaire, où la vitesse d''accès compte plus que la richesse de la structure. Les bases orientées colonne
stockent les données par colonne plutôt que par ligne, ce qui accélère fortement les agrégations sur de très
grands volumes, des sommes ou des moyennes sur des millions de lignes : utile pour l''analyse à grande échelle.
Les bases orientées graphe stockent des nœuds et des relations entre eux, utiles quand ce qui compte, c''est la
relation elle-même, comme un réseau de clients et de recommandations, ou une détection de fraude par association
de comptes suspects.

Un point théorique important : beaucoup de bases NoSQL distribuées privilégient la disponibilité et la rapidité
au prix d''une cohérence "éventuelle" plutôt qu''immédiate. Cela veut dire qu''une mise à jour peut mettre quelques
instants avant d''être visible sur tous les serveurs du système. Posons-nous la question : est-ce acceptable pour
un compteur de "j''aime" sur un réseau social ? Oui, un léger retard n''a aucune conséquence grave. Est-ce
acceptable pour un solde bancaire ? Non, car un décalage pourrait permettre une double dépense ou une erreur
grave de gestion. C''est tout l''enjeu du choix entre cohérence immédiate et cohérence éventuelle.

## 35:00 – 55:00 · Modélisation décisionnelle : schémas en étoile et en flocon

Passons maintenant à la modélisation décisionnelle, c''est-à-dire la construction d''un entrepôt de données
destiné à l''analyse et au pilotage, pas au fonctionnement quotidien de l''application. On y organise les données
autour d''une table de faits et de tables de dimensions. La table de faits contient les mesures chiffrées qu''on
veut analyser, par exemple le montant d''une vente et la quantité vendue, accompagnées de clés qui pointent vers
les dimensions : quel produit, quelle région, quelle date. Les dimensions décrivent le contexte de chaque
mesure : le nom et la catégorie d''un produit, le nom d''une région, le jour, le mois et l''année d''une date.

Dans un schéma en étoile, chaque dimension est une seule table reliée directement à la table de faits : c''est
simple à comprendre et rapide à interroger, c''est le choix par défaut pour un premier tableau de bord. Dans un
schéma en flocon, les dimensions sont elles-mêmes découpées en sous-tables, par exemple la dimension produit
séparée en produit et catégorie de produit : cela réduit la redondance des données, mais complique un peu les
requêtes, qui doivent joindre davantage de tables. Retenez cette règle simple : l''étoile privilégie la
simplicité d''interrogation, le flocon privilégie la normalisation des dimensions.

Construisons maintenant ensemble, à l''écran, le schéma pour Sahel Distribution. Une table de faits "ventes"
avec les mesures montant et quantité, reliée à trois dimensions : produit, région, date. Pour obtenir le total
des ventes par région et par trimestre, la requête a la structure suivante : SELECT id_region, trimestre,
SUM(montant_fcfa) AS total_fcfa FROM fait_ventes GROUP BY id_region, trimestre ORDER BY id_region, trimestre.
J''ai vérifié cette requête sur des données d''exemple : pour Dakar, elle donne 2 080 000 FCFA au premier
trimestre, 1 660 000 FCFA au deuxième, 1 430 000 FCFA au troisième, soit un cumul de 5 170 000 FCFA sur les trois
trimestres ; pour Thiès, elle donne 540 000 FCFA, puis 1 120 000 FCFA, puis 760 000 FCFA.

## 55:00 – 1:00:00 · Pause et quiz interactif

Petit quiz avant de continuer. Première question : quelle famille NoSQL choisiriez-vous pour stocker des
sessions utilisateur avec un accès très rapide par identifiant ? Deuxième question : dans un schéma décisionnel,
que contient la table de faits, et que contiennent les tables de dimensions ? Troisième question : qu''est-ce
que la cohérence éventuelle, et pourquoi est-elle acceptable pour certains usages mais pas pour d''autres ?
Mettez en pause, répondez, puis reprenez. ... Réponses : la famille clé-valeur, pour des accès rapides par
identifiant ; la table de faits contient les mesures chiffrées et des clés vers les dimensions, les dimensions
décrivent le contexte de chaque mesure ; la cohérence éventuelle signifie qu''une mise à jour peut mettre un
court instant avant d''être visible partout, acceptable pour un usage sans conséquence grave comme un compteur
social, mais pas pour un solde bancaire où un décalage pourrait permettre une erreur grave.

## 1:00:00 – 1:20:00 · Étude de cas complète et exploitation du tableau de bord

Reprenons le cas de Sahel Distribution dans son ensemble, comme vous devrez le faire en examen. L''entreprise
veut un tableau de bord trimestriel des ventes par région pour l''année 2025. Nous avons déjà vu les chiffres :
une baisse progressive à Dakar sur les trois trimestres, et une progression suivie d''un recul à Thiès. Que fait
un bon analyste face à ces chiffres ? Il ne se contente pas du total global de 5 170 000 FCFA pour Dakar sur
l''année ; il interroge la tendance trimestre par trimestre pour comprendre si la baisse est continue ou liée à
un événement ponctuel (une rupture de stock, une nouvelle concurrence locale, un effet de saisonnalité). C''est
exactement l''intérêt d''un schéma décisionnel bien construit : il permet de "trancher" les données selon
plusieurs axes, région, trimestre, produit, sans devoir réécrire toute l''application.

Si, par la suite, Sahel Distribution veut affiner l''analyse par catégorie de produit tout en limitant la
redondance des libellés de catégorie répétés pour chaque produit, elle peut faire évoluer sa dimension produit
vers un schéma en flocon, en séparant produit et catégorie dans deux tables liées. C''est un bon exemple de
décision à argumenter en examen : on ne choisit pas un schéma en flocon par principe, on le choisit quand le
besoin de normalisation des dimensions devient réel, en l''occurrence une forte redondance de libellés répétés.

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Résumons. Le NoSQL complète le relationnel pour les données peu structurées, les très gros volumes ou les
besoins de performance à grande échelle, pas pour le remplacer systématiquement. Les quatre familles NoSQL,
document, clé-valeur, colonne, graphe, répondent à des besoins différents qu''il faut savoir reconnaître dans un
énoncé. Un entrepôt de données s''organise autour d''une table de faits et de tables de dimensions, en étoile pour
la simplicité, en flocon pour la normalisation. Et toute agrégation chiffrée présentée en examen doit pouvoir
être justifiée par le calcul exact qui y mène.

Voici cinq questions d''évaluation finale. Question 1 : pourquoi une base relationnelle reste-t-elle préférable
pour une application de comptabilité ? Réponse : parce qu''elle garantit les propriétés ACID, essentielles pour
des transactions financières fiables à 100 %. Question 2 : quelle famille NoSQL choisiriez-vous pour détecter
des réseaux de fraude par association de comptes ? Réponse : la famille orientée graphe, adaptée à l''analyse de
relations entre entités. Question 3 : quelle est la différence entre un schéma en étoile et un schéma en
flocon ? Réponse : l''étoile relie chaque dimension directement à la table de faits pour des requêtes simples, le
flocon découpe les dimensions en sous-tables pour réduire la redondance, au prix de requêtes plus complexes.
Question 4 : qu''est-ce que la cohérence éventuelle et dans quel cas pose-t-elle un vrai problème ? Réponse : un
court délai avant qu''une mise à jour soit visible partout dans un système distribué ; cela pose un vrai problème
pour des données où un décalage pourrait causer une erreur grave, comme un solde bancaire. Question 5 : dans le
cas de Sahel Distribution, quelle requête SQL donne le total des ventes par région et par trimestre ? Réponse :
SELECT id_region, trimestre, SUM(montant_fcfa) AS total FROM fait_ventes GROUP BY id_region, trimestre.

Merci pour votre attention, et à la prochaine séance consacrée à la cybersécurité avancée.
', 'video', 90, false, 70
from public.courses c where c.slug = 'mas-info-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Bases de données avancées et Big Data');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Cybersécurité avancée', '## Fiche du cours vidéo

Durée : 1h30. Objectif : maîtriser les principes de la cryptographie appliquée (chiffrement symétrique et
asymétrique, hachage, signature), savoir mener une démarche d''audit de vulnérabilités, et comprendre les
grands principes de la gouvernance de la sécurité des systèmes d''information. Fil conducteur : le cas fictif de
Baobab Finance Digitale. Matériel : tableau ou diaporama, calculatrice ou feuille pour l''exemple numérique de
chiffrement. Prérequis : sécurité de base (mots de passe, pare-feu, mises à jour) vue en Licence.

## Déroulé minuté

## 00:00 – 05:00 · Introduction et objectifs

Bonjour et bienvenue dans ce cours vidéo consacré à la cybersécurité avancée. Vous avez déjà vu en Licence les
bases de la sécurité informatique. Aujourd''hui, nous allons aller plus loin sur trois volets : comprendre
concrètement comment fonctionne la cryptographie qui protège nos échanges, apprendre la démarche structurée
d''un audit de vulnérabilités, et comprendre ce que signifie organiser la sécurité à l''échelle d''une entreprise,
ce qu''on appelle la gouvernance. Nous suivrons le cas de Baobab Finance Digitale, un établissement fictif de
microfinance par application mobile à Dakar.

## 05:00 – 25:00 · Cryptographie appliquée

Commençons par le chiffrement symétrique. Il utilise une même clé secrète pour chiffrer et déchiffrer un
message. C''est rapide, adapté à de gros volumes de données, mais il faut transmettre cette clé de façon sûre
aux deux parties, ce qui devient un vrai problème dès que les correspondants sont nombreux ou distants : comment
transmettre un secret sans que quelqu''un l''intercepte en chemin ?

C''est ici qu''intervient le chiffrement asymétrique, qui résout précisément ce problème. Il utilise une paire de
clés : une clé publique, que l''on peut diffuser librement, qui chiffre les messages, et une clé privée, gardée
secrète, qui seule permet de les déchiffrer. Je vais vous montrer un exemple numérique simplifié, avec des
nombres volontairement petits pour qu''on puisse suivre le calcul à la main ; un vrai système utilise des nombres
bien plus grands pour rester sûr. Prenons deux nombres premiers, p égal 61 et q égal 53. On calcule n, le produit
de p et q, soit 3233, et une valeur associée, phi, égale à (p moins 1) fois (q moins 1), soit 3120. On choisit un
exposant public e égal 17. En appliquant l''algorithme d''Euclide étendu, on trouve un exposant privé d égal 2753,
tel que e fois d soit congru à 1 modulo phi ; j''ai vérifié ce calcul, c''est exact. Prenons maintenant un message
représenté par le nombre 65. On le chiffre en calculant 65 à la puissance e, modulo n, ce qui donne 2790. Pour
déchiffrer, on calcule 2790 à la puissance d, modulo n, et on retrouve bien 65. Ce principe, chiffrer avec une
clé, déchiffrer avec une autre clé liée mathématiquement à la première, est celui du chiffrement asymétrique, à
la base notamment des certificats qui sécurisent les sites web que vous visitez tous les jours.

Passons au hachage. Une fonction de hachage transforme une donnée en une empreinte de taille fixe, de façon à
sens unique : on ne peut pas retrouver la donnée d''origine à partir de l''empreinte, et la moindre modification
de la donnée change complètement l''empreinte. Posons-nous la question : pourquoi stocke-t-on l''empreinte d''un
mot de passe plutôt que le mot de passe lui-même ? Parce que si la base de données est compromise, l''attaquant
ne récupère que des empreintes, pas les mots de passe en clair, et il ne peut pas remonter de l''empreinte au mot
de passe d''origine.

Enfin, la signature numérique combine hachage et chiffrement asymétrique : elle garantit à la fois l''intégrité
d''un message, c''est-à-dire qu''il n''a pas été modifié, et son authenticité, c''est-à-dire qu''il provient bien de
l''émetteur annoncé, en chiffrant l''empreinte du message avec la clé privée de l''émetteur, ce que n''importe qui
peut ensuite vérifier avec la clé publique correspondante.

## 25:00 – 45:00 · La démarche d''audit de vulnérabilités

Un audit de vulnérabilités suit une démarche structurée en quatre étapes, que je vous demande de retenir dans
l''ordre, car c''est exactement ce qu''on attend en examen. Première étape, la cartographie des actifs : recenser
les systèmes, applications et données à protéger, car on ne peut pas sécuriser ce qu''on ne connaît pas.
Deuxième étape, l''identification des vulnérabilités : rechercher les failles connues, logiciels non mis à jour,
configurations par défaut non changées, mots de passe faibles, absence de chiffrement sur des échanges
sensibles, par des outils spécialisés et par une analyse manuelle. Troisième étape, la hiérarchisation des
risques : toutes les vulnérabilités ne se valent pas, on les classe selon leur probabilité d''exploitation et
leur impact potentiel. Quatrième étape, la recommandation de correctifs réalistes, en tenant compte du budget et
du temps disponibles.

Retenez ce principe fondamental : le risque se raisonne comme un produit entre la probabilité qu''une menace se
réalise et l''impact qu''elle aurait si elle se réalisait. Une vulnérabilité très probable mais à faible impact
peut donc être moins prioritaire qu''une vulnérabilité rare mais catastrophique. Prenons un exemple : un serveur
accessible depuis l''extérieur avec une faille critique connue est prioritaire par rapport à une faille mineure
sur un système isolé du réseau, même si cette dernière semble plus visible au premier regard.

## 45:00 – 50:00 · Pause et quiz interactif

Petit quiz. Première question : pourquoi le chiffrement asymétrique résout-il un problème que le chiffrement
symétrique seul ne résout pas ? Deuxième question : à quoi sert le hachage dans le stockage des mots de passe ?
Troisième question : citez les quatre étapes d''un audit de vulnérabilités. Mettez en pause, répondez, puis
reprenez. ... Réponses : le chiffrement asymétrique permet de chiffrer un message pour un destinataire sans
jamais lui transmettre de secret au préalable, contrairement au symétrique qui exige de transmettre une clé
secrète partagée ; le hachage permet de vérifier un mot de passe sans jamais le stocker en clair ; les quatre
étapes sont cartographie des actifs, identification des vulnérabilités, hiérarchisation des risques,
recommandation de correctifs.

## 50:00 – 1:05:00 · Gouvernance de la sécurité des systèmes d''information

La gouvernance de la sécurité dépasse la technique : c''est l''organisation qui permet à une entreprise de
maintenir un niveau de sécurité cohérent dans le temps. Je vous présente quatre piliers à connaître, en
rappelant que des référentiels reconnus comme la norme ISO 27001 donnent un cadre pour structurer cette
gouvernance, qu''on peut citer en principe sans en détailler les clauses précises en l''absence de certitude sur
leur contenu exact. Premier pilier, une politique de sécurité écrite et validée par la direction, qui fixe les
règles à respecter. Deuxième pilier, une gestion des risques régulière, qui réévalue les menaces à mesure que le
système évolue, pas une fois pour toutes. Troisième pilier, une sensibilisation continue des employés, qui
restent souvent le point d''entrée le plus exploité par les attaquants, par exemple via l''hameçonnage ou le
partage de mots de passe. Quatrième pilier, un plan de continuité d''activité, qui prévoit comment l''entreprise
continue de fonctionner, ou reprend rapidement, après un incident grave.

## 1:05:00 – 1:20:00 · Étude de cas complète : Baobab Finance Digitale

Appliquons tout cela au cas de Baobab Finance Digitale. Un audit interne a révélé trois points : certains
échanges entre l''application mobile et le serveur ne sont pas systématiquement chiffrés, les mots de passe des
employés n''ont pas été renouvelés depuis plus d''un an, et aucune procédure écrite n''existe en cas de panne du
système de paiement.

Hiérarchisons comme en examen. L''absence de chiffrement sur des échanges contenant des données financières est
une faille à fort impact et à forte probabilité d''exploitation, donc prioritaire : n''importe qui interceptant le
réseau pourrait lire des informations sensibles. Les mots de passe anciens représentent un risque réel mais
moins immédiat si d''autres protections existent, comme une authentification à plusieurs facteurs. L''absence de
procédure de continuité est un risque organisationnel qui ne cause pas de faille immédiate, mais aggraverait
fortement l''impact d''un incident s''il survenait.

Recommandations réalistes, à prioriser dans cet ordre : généraliser le chiffrement de tous les échanges
contenant des données sensibles, en priorité absolue ; mettre en place une politique de renouvellement régulier
des mots de passe et, si possible, une authentification à plusieurs facteurs ; rédiger un plan de continuité
même minimal, qui contacter, quelles actions immédiates, comment informer les clients, plutôt que de ne rien
prévoir du tout.

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Résumons. Le chiffrement symétrique est rapide mais pose un problème de transmission de la clé ; l''asymétrique
le résout grâce à une paire de clés liées mathématiquement. Le hachage garantit l''intégrité, la signature
numérique ajoute l''authenticité. Un audit suit quatre étapes dans l''ordre : cartographie, identification,
hiérarchisation selon probabilité et impact, recommandations réalistes. La gouvernance de la sécurité repose
sur une politique écrite, une gestion des risques continue, la sensibilisation des employés et un plan de
continuité.

Cinq questions d''évaluation finale. Question 1 : pourquoi l''asymétrique résout-il un problème que le symétrique
seul ne résout pas ? Réponse : il permet de chiffrer sans transmettre de secret au préalable, grâce à une clé
publique et une clé privée liées mathématiquement. Question 2 : à quoi sert une fonction de hachage pour les
mots de passe ? Réponse : à vérifier un mot de passe sans jamais le stocker en clair. Question 3 : comment se
raisonne un risque en sécurité ? Réponse : comme un produit entre probabilité d''exploitation et impact potentiel.
Question 4 : citez un pilier de la gouvernance de la sécurité qui ne relève pas de la technique. Réponse : par
exemple la politique de sécurité écrite ou la sensibilisation des employés. Question 5 : dans le cas de Baobab
Finance Digitale, quelle faille doit être corrigée en priorité, et pourquoi ? Réponse : l''absence de chiffrement
des échanges contenant des données financières, car elle a un impact et une probabilité d''exploitation élevés.

Merci pour votre attention. Rendez-vous dans la dernière vidéo de ce module, un atelier transversal qui réunit
architecture, données et sécurité sur un même cas d''entreprise.
', 'video', 90, false, 80
from public.courses c where c.slug = 'mas-info-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Cybersécurité avancée');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Atelier transversal — architecture, données et sécurité (cas Agri Connect Sénégal)', '## Fiche du cours vidéo

Durée : 1h30. Objectif : atelier transversal de synthèse, mobilisant ensemble l''architecture logicielle, les
bases de données avancées et la cybersécurité sur un même cas d''entreprise filé, comme cela peut être demandé
lors d''un examen ou d''une étude de cas de projet tutoré. Fil conducteur : une entreprise fictive unique,
"Agri Connect Sénégal", plateforme de mise en relation entre producteurs agricoles et acheteurs près de
Saint-Louis. Matériel : tableau ou diaporama, feuille pour construire sa propre réponse en parallèle. Prérequis :
les trois séances précédentes de ce module.

## Déroulé minuté

## 00:00 – 05:00 · Introduction et objectifs

Bonjour et bienvenue dans ce dernier atelier du module. Les trois séances précédentes ont traité séparément
l''architecture, les données et la sécurité. En réalité, un examen de Master 1, comme la réalité professionnelle,
mélange ces trois dimensions sur un même cas. Aujourd''hui, nous allons traiter un cas d''entreprise unique du
début à la fin, en mobilisant les trois matières, exactement comme vous devrez le faire le jour de l''examen. Je
vous recommande de prendre une feuille et d''essayer de construire votre propre réponse à chaque étape avant que
je ne donne la mienne.

## 05:00 – 12:00 · Présentation du cas

Voici le cas : Agri Connect Sénégal est une plateforme fictive qui met en relation des producteurs agricoles et
des acheteurs, commerces et restaurants, dans la région de Saint-Louis. La plateforme gère actuellement, dans
une seule application monolithique connectée à une base relationnelle unique, les annonces de produits, les
commandes, la messagerie entre producteurs et acheteurs, et un tableau de bord de suivi des ventes. L''équipe
technique, composée de quatre développeurs, rencontre trois difficultés : la messagerie, très sollicitée en
période de récolte, ralentit l''ensemble du site ; certains producteurs publient des annonces avec des attributs
très différents selon le type de produit, un sac de riz décrit par son poids, un panier de mangues décrit par
son calibre et sa variété ; et la direction veut un tableau de bord fiable du chiffre d''affaires par région et
par trimestre pour décider où renforcer les équipes commerciales. Un audit rapide révèle en plus que la
messagerie contient parfois des informations sensibles, numéros de téléphone, détails de paiement convenus hors
plateforme, échangées sans chiffrement systématique.

## 12:00 – 30:00 · Volet architecture

Premier volet : l''architecture. Je vous laisse quelques secondes pour réfléchir à un découpage en microservices
avant que je ne propose le mien. ... Voici une proposition argumentée : découper l''application en au moins
quatre services, "annonces", "commandes", "messagerie" et "tableau de bord". Pourquoi isoler la messagerie en
priorité ? Parce que c''est elle qui sature aujourd''hui tout le système en période de récolte ; en l''isolant, on
peut la dimensionner indépendamment, c''est-à-dire la répliquer en plusieurs exemplaires pendant les pics, sans
affecter les annonces ni les commandes. C''est exactement la méthode vue dans la première séance : analyser les
symptômes, un service qui sature tout, proposer un découpage qui isole la cause, justifier le dimensionnement
différencié. Les conteneurs jouent ici un rôle précis : ils permettent de déployer chaque service de façon
reproductible, et d''augmenter le nombre d''exemplaires du service messagerie pendant la récolte, puis de le
réduire en période calme, sans toucher aux autres services.

## 30:00 – 48:00 · Volet données

Deuxième volet : les données. Deux besoins à traiter séparément. Pour les annonces aux attributs très variables,
quelle famille de base de données choisir ? Réfléchissez... Une base NoSQL orientée document est recommandée,
car elle permet de stocker chaque annonce avec sa propre structure, sans schéma relationnel rigide imposé à
l''avance ; un sac de riz garde son attribut poids, un panier de mangues garde ses attributs calibre et variété,
dans le même type de base mais avec des structures de document différentes.

Pour le tableau de bord du chiffre d''affaires par région et par trimestre, nous avons besoin d''un schéma
décisionnel. Pour un premier niveau d''analyse, un schéma en étoile convient : une table de faits "ventes" avec
les mesures montant et quantité, reliée aux dimensions "région" et "date" avec un attribut trimestre. La requête
correspondante a la structure suivante : SELECT region, trimestre, SUM(montant_fcfa) AS total FROM fait_ventes
GROUP BY region, trimestre ORDER BY region, trimestre. Si, plus tard, l''entreprise veut affiner l''analyse par
sous-région avec de nombreuses zones partageant des libellés communs, elle pourra faire évoluer ce schéma vers
un flocon, en séparant région et sous-région, pour réduire la redondance des libellés répétés.

## 48:00 – 53:00 · Pause et quiz interactif

Petit quiz de mi-parcours. Première question : pourquoi isoler la messagerie en priorité dans le découpage en
microservices d''Agri Connect Sénégal ? Deuxième question : pourquoi recommander une base NoSQL orientée document
pour les annonces plutôt qu''une base clé-valeur ou orientée graphe ? Mettez en pause, répondez, puis reprenez.
... Réponses : la messagerie sature aujourd''hui tout le système, l''isoler permet de la dimensionner sans
affecter les autres fonctions ; la base orientée document convient car chaque annonce a une structure variable à
conserver telle quelle, alors que la clé-valeur conviendrait pour un accès simple par identifiant sans structure
riche, et le graphe conviendrait pour analyser des relations entre entités, ce qui n''est pas le besoin ici.

## 53:00 – 1:10:00 · Volet sécurité

Troisième volet : la sécurité. L''audit a révélé que la messagerie contient des informations sensibles échangées
sans chiffrement systématique. Première mesure concrète : chiffrer systématiquement les échanges de la
messagerie, au minimum par un chiffrement des communications réseau. Deuxième mesure : limiter la conservation
des informations sensibles échangées en clair dans les messages, et sensibiliser les utilisateurs à ne pas
partager de détails de paiement par ce canal non prévu pour cela.

Imaginons maintenant que l''audit révèle en plus des mots de passe employés non renouvelés depuis longtemps.
Comment hiérarchiser ces deux risques ? L''absence de chiffrement de données sensibles reste prioritaire, car son
impact et sa probabilité d''exploitation sont élevés, une interception réseau suffit à exposer des informations
sensibles. Les mots de passe anciens représentent un risque réel mais généralement moins immédiat, à traiter en
seconde priorité, sauf signe d''une compromission déjà en cours. C''est le même raisonnement que dans la séance
précédente : probabilité multipliée par impact, pas une liste de problèmes traités dans un ordre arbitraire.

## 1:10:00 – 1:22:00 · Mise en commun transversale

Rassemblons maintenant les trois volets dans une seule réponse cohérente, comme devant un jury ou un correcteur.
L''architecture isole la messagerie pour absorber les pics de charge sans affecter les autres services. Les
données séparent un stockage NoSQL document pour les annonces variables et un entrepôt décisionnel en étoile
pour le pilotage des ventes. La sécurité priorise le chiffrement des échanges sensibles avant les mesures moins
urgentes. Le point commun aux trois volets : chaque recommandation part d''un symptôme observé, passe par une
analyse des causes, puis débouche sur une action concrète et hiérarchisée, jamais une solution théorique
détachée du contexte réel de l''entreprise.

Un point mérite d''être souligné, car il revient souvent dans les sujets d''examen les mieux notés : les trois
volets ne sont pas indépendants les uns des autres. Le découpage en microservices facilite justement la mise en
œuvre des mesures de sécurité, puisqu''on peut chiffrer et surveiller le service messagerie sans devoir modifier
les autres services ; de la même façon, séparer les données des annonces, variables, de celles du tableau de
bord, structurées pour l''analyse, limite le risque qu''une faille sur l''une des bases expose l''ensemble du
système. Un bon candidat de Master 1 sait montrer ces liens entre matières plutôt que de traiter chaque volet
de façon totalement cloisonnée, ce qui démontre une compréhension réellement transversale du système.

## 1:22:00 – 1:30:00 · Synthèse finale et évaluation

Nous arrivons au terme de ce module de Master 1. Retenez la méthode plus que les solutions : face à un cas
transversal, identifiez d''abord les symptômes dans chaque dimension, architecture, données, sécurité ; proposez
ensuite une réponse justifiée pour chacune ; et terminez toujours par une hiérarchisation claire des priorités,
en expliquant pourquoi certaines actions passent avant d''autres.

Cinq questions d''évaluation finale pour conclure le module. Question 1 : dans le cas Agri Connect Sénégal,
pourquoi isoler le service messagerie en priorité ? Réponse : parce qu''il sature aujourd''hui tout le système en
période de récolte, et l''isoler permet de le dimensionner sans affecter les autres services. Question 2 :
pourquoi une base NoSQL orientée document convient-elle aux annonces de produits variables ? Réponse : parce
qu''elle permet de stocker chaque annonce avec sa propre structure, sans schéma relationnel rigide. Question 3 :
quelle est la structure d''un schéma en étoile pour le tableau de bord des ventes par région et trimestre ?
Réponse : une table de faits avec les mesures montant et quantité, reliée aux dimensions région et date.
Question 4 : quelle mesure de sécurité est prioritaire face à une messagerie contenant des informations
sensibles non chiffrées ? Réponse : chiffrer systématiquement ces échanges, car l''impact et la probabilité
d''exploitation sont élevés. Question 5 : quelle méthode générale faut-il appliquer face à un cas transversal
combinant architecture, données et sécurité ? Réponse : identifier les symptômes dans chaque dimension,
proposer une réponse justifiée pour chacune, puis hiérarchiser clairement les priorités.

Merci pour votre travail sur ce module de Master 1. Préparez vos révisions en reprenant vos fiches de synthèse
et en vous entraînant sur le sujet type avant l''examen.
', 'video', 90, false, 90
from public.courses c where c.slug = 'mas-info-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Atelier transversal — architecture, données et sécurité (cas Agri Connect Sénégal)');

-- Cours : Informatique Master 2 : réussir ses examens (intelligence artificielle, gouvernance IT, mémoire et soutenance)
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'mas-info-m2', (select id from public.levels where name = 'Master 2'), null, 'Informatique', 'Informatique Master 2 : réussir ses examens (intelligence artificielle, gouvernance IT, mémoire et soutenance)', 'Préparation aux examens de Master 2 en Informatique : intelligence artificielle et data science, gouvernance IT et gestion de projets informatiques, méthodologie du mémoire de recherche ou du projet tutoré et de la soutenance. Cas d''entreprise sénégalais fictifs, exemples chiffrés vérifiés, exercices corrigés et quatre cours vidéo de 1h30, dont un atelier pratique de préparation à la soutenance. Public : étudiants de Master 2 Informatique ayant validé le Master 1.', true, 722
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Master 2 en Informatique', '## Objectifs de la leçon

Cette leçon pose le cadre du Master 2 en Informatique, dernière année avant l''entrée dans la vie professionnelle
ou la poursuite en doctorat. Elle prolonge le Master 1 (architectures et microservices, bases de données
avancées et Big Data, cybersécurité avancée) vers trois nouvelles matières : l''intelligence artificielle et la
data science, la gouvernance IT et la gestion de projets informatiques, et la méthodologie du mémoire de
recherche ou du projet tutoré, qui se conclut par une soutenance.

## Ce qui change en Master 2 : le mémoire et la soutenance

En Master 2, le travail personnel prend une place centrale et devient souvent le cœur de l''évaluation de
l''année : un mémoire de recherche (avec une problématique, une revue de littérature, une méthodologie et des
résultats), ou un projet tutoré professionnel approfondi (souvent lié à un stage long), défendu devant un jury
lors d''une soutenance orale. Ce n''est plus un exercice annexe à côté des examens : c''est un travail de plusieurs
mois qui démontre la capacité à mener une recherche ou un projet de bout en bout, de façon autonome, avec un
encadrement ponctuel plutôt qu''un cours classique.

Les examens de Master 2 évaluent donc deux choses complémentaires : la maîtrise de matières avancées (comme en
Master 1, mais avec un niveau d''exigence plus élevé sur l''analyse critique et la prise de décision en
incertitude), et la capacité à produire et défendre un travail personnel structuré.

## Les trois matières avancées de l''année

Intelligence artificielle et data science : les notions de base de l''apprentissage automatique, la différence
entre régression et classification, et la capacité à construire et interpréter un modèle simple sur des
données vérifiées, sans nécessairement maîtriser les architectures les plus complexes (qui relèvent d''une
spécialisation plus poussée).

Gouvernance IT et gestion de projets informatiques : comment organiser la production et la maintenance des
systèmes d''information à l''échelle d''une entreprise, en s''appuyant sur des référentiels reconnus comme ITIL
(en principe, pour la gestion des services informatiques) et sur les méthodes DevOps (en principe, pour
rapprocher le développement et l''exploitation des systèmes), et comment piloter un projet informatique du
cadrage à la livraison.

Méthodologie du mémoire de recherche ou du projet tutoré et de la soutenance : comment structurer un mémoire
(problématique, revue de littérature, méthodologie, résultats, discussion), comment organiser son temps de
rédaction sur plusieurs mois, et comment préparer une soutenance orale convaincante devant un jury.

## Méthode de travail avancée pour cette année

Le Master 2 demande de mener en parallèle la préparation des examens et l''avancement du mémoire ou du projet
tutoré, ce qui exige une organisation plus rigoureuse qu''en Master 1. Trois habitudes aident à tenir sur la
durée : fixer des jalons intermédiaires pour le mémoire (par exemple, une problématique validée à telle date,
un premier chapitre rédigé à telle autre date) plutôt que d''attendre la dernière semaine ; relier, quand c''est
possible, les révisions d''examen et le travail de mémoire, par exemple en utilisant une notion de data science
vue en cours pour analyser des données réelles de son propre projet ; et s''entraîner à l''oral de soutenance bien
avant la date réelle, devant un petit groupe ou même seul face à une caméra, car la gestion du stress et du
temps de parole se travaille comme une compétence à part.

## Plan de révision sur six semaines

Semaine 1 et 2 : intelligence artificielle et data science. Revoir les notions de base (apprentissage supervisé,
régression, classification), savoir interpréter un résultat chiffré simple (une erreur de prédiction, un taux
de bonne classification) et comprendre ses limites, sans chercher à maîtriser des modèles trop complexes pour
le niveau de l''examen.

Semaine 3 et 4 : gouvernance IT et gestion de projets informatiques. Revoir les grands principes d''ITIL et de
DevOps au niveau des concepts, et les méthodes de pilotage de projet (cadrage, planification, suivi, clôture),
en s''entraînant sur des cas d''entreprise chiffrés (budget, délais, ressources).

Semaine 5 : méthodologie du mémoire et de la soutenance. Revoir la structure attendue d''un mémoire, les règles
de citation et de sourcing, et préparer un plan de soutenance de dix minutes avec les réponses aux questions les
plus prévisibles du jury.

Semaine 6 : entraînement transversal. Traiter au moins deux sujets type combinant les trois matières, relire ses
fiches de synthèse, et faire une répétition complète de sa soutenance si la date approche, en minutant
précisément son intervention.

## Points clés à retenir

- Le Master 2 évalue à la fois la maîtrise de matières avancées et la capacité à produire et défendre un travail
  personnel structuré, mémoire ou projet tutoré, lors d''une soutenance.
- Trois matières avancées structurent l''année : intelligence artificielle et data science, gouvernance IT et
  gestion de projets informatiques, méthodologie du mémoire et de la soutenance.
- Une organisation par jalons intermédiaires, plutôt qu''un travail de dernière minute, est indispensable pour
  mener de front examens et mémoire.
- S''entraîner à l''oral de soutenance bien avant la date réelle développe une compétence distincte de la
  maîtrise du contenu.

## Exercices pratiques

1. Expliquez en quelques lignes ce qui change entre l''évaluation du Master 1 et celle du Master 2 en
   Informatique.
2. Citez les trois matières avancées de ce programme de Master 2 et donnez, pour chacune, un exemple concret
   d''application professionnelle.
3. Pourquoi est-il préférable de fixer des jalons intermédiaires pour la rédaction d''un mémoire plutôt que
   d''attendre la dernière semaine avant la date de remise ?
4. Proposez deux questions qu''un jury pourrait poser à la fin d''une soutenance de mémoire ou de projet tutoré en
   Informatique, et expliquez pourquoi un étudiant doit s''y préparer à l''avance.
5. Construisez votre propre planning de révision sur six semaines en reprenant la structure proposée.
6. En quoi la préparation d''une soutenance orale est-elle une compétence distincte de la simple maîtrise du
   contenu du mémoire ?
7. Pourquoi peut-il être utile de relier les révisions d''examen (par exemple en data science) au travail de
   mémoire plutôt que de les traiter comme deux activités totalement séparées ?

## Corrigé

1. En Master 1, l''évaluation porte sur la maîtrise de matières avancées appliquées à des cas ouverts. En Master
   2, elle ajoute la production et la défense d''un travail personnel long (mémoire ou projet tutoré) devant un
   jury, ce qui exige une autonomie et une organisation plus poussées sur plusieurs mois.
2. Intelligence artificielle et data science : par exemple, analyser les ventes passées d''une entreprise pour
   anticiper la demande future. Gouvernance IT et gestion de projets informatiques : par exemple, organiser la
   maintenance d''un parc applicatif selon des processus clairs, ou piloter un projet de refonte d''un système
   avec un budget et un délai fixés. Méthodologie du mémoire : par exemple, structurer un mémoire sur l''adoption
   du paiement mobile dans une région donnée, avec une problématique claire et une méthode de collecte de
   données adaptée.
3. Parce qu''un mémoire est un travail long qui ne se rattrape pas en quelques jours ; des jalons intermédiaires
   permettent de détecter tôt un retard ou un problème de méthode, et de corriger le cap avant qu''il ne soit
   trop tard.
4. Par exemple : "Pourquoi avez-vous choisi cette méthode plutôt qu''une autre ?" et "Quelles sont les limites de
   votre travail ?" ; un étudiant doit s''y préparer car ces questions demandent une réflexion critique sur son
   propre travail, qui ne s''improvise pas facilement devant un jury.
5. Réponse libre : un planning concret sur six semaines, respectant la progression proposée (intelligence
   artificielle et data science, puis gouvernance IT et gestion de projets, puis méthodologie et soutenance,
   puis entraînement transversal).
6. Parce qu''elle mobilise des compétences de communication orale, de gestion du temps de parole et de gestion du
   stress, qui sont indépendantes de la qualité du contenu écrit ; un mémoire excellent mal défendu à l''oral
   peut donner une impression moins convaincante qu''il ne le devrait.
7. Parce que cela renforce les deux apprentissages à la fois : appliquer une notion de cours à son propre projet
   aide à mieux la comprendre pour l''examen, et enrichit en même temps le mémoire d''une analyse plus solide,
   plutôt que de traiter les deux comme des charges de travail totalement indépendantes.
', 'texte', 45, true, 10
from public.courses c where c.slug = 'mas-info-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Master 2 en Informatique');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Intelligence artificielle et data science : l''essentiel pour l''examen', '## Objectifs de la leçon

Cette leçon introduit les notions de base de l''intelligence artificielle appliquée et de la data science : la
différence entre régression et classification, comment entraîner et évaluer un modèle simple, et comment
interpréter ses résultats avec prudence. Tous les exemples chiffrés de cette leçon ont été calculés et vérifiés.
On s''appuie sur le cas fictif d''une entreprise de services marketing, "Teranga Analytics", basée à Dakar.

## Qu''est-ce que l''apprentissage automatique, au niveau des principes

L''apprentissage automatique (machine learning) consiste à construire, à partir de données passées, un modèle
capable de faire des prédictions sur de nouvelles données, sans programmer explicitement chaque règle de
décision. On parle d''apprentissage supervisé quand on dispose, pour chaque exemple passé, à la fois des
variables d''entrée (par exemple le budget publicitaire d''un mois) et du résultat observé (le chiffre d''affaires
de ce mois) : le modèle apprend la relation entre les deux. Deux grandes familles de problèmes supervisés sont
à distinguer. La régression prédit une valeur numérique continue, par exemple un chiffre d''affaires en FCFA ou
une température. La classification prédit une catégorie parmi un ensemble fini, par exemple "le client va
résilier son abonnement" ou "le client ne va pas résilier", ou encore "cette demande de crédit est risquée" ou
"elle ne l''est pas".

## La régression linéaire simple, pas à pas

Prenons un exemple de régression simple, vérifié par le calcul. Teranga Analytics observe, sur huit mois, le
budget publicitaire mensuel (en millions de FCFA fictifs) et le chiffre d''affaires du mois correspondant (en
millions de FCFA fictifs) : pour des budgets de 2, 3, 4, 5, 6, 7, 8 et 9 millions, les chiffres d''affaires
observés sont respectivement 15, 18, 21, 25, 26, 30, 33 et 35 millions. Une régression linéaire cherche la
droite qui s''ajuste le mieux à ces points, de la forme chiffre d''affaires égal b0 plus b1 fois budget. Le calcul
exact, par la méthode des moindres carrés, donne b0 environ égal à 9,46 et b1 environ égal à 2,89. Cela signifie
que, selon ce modèle, même sans aucun budget publicitaire, l''entreprise réaliserait environ 9,46 millions de
chiffre d''affaires (effet d''autres facteurs), et que chaque million de FCFA supplémentaire investi en publicité
est associé en moyenne à 2,89 millions de chiffre d''affaires supplémentaire, dans la plage de budgets observée.

Pour un budget de 10 millions de FCFA, le modèle prédit un chiffre d''affaires d''environ 38,39 millions de FCFA
(calcul : 9,46 plus 2,89 fois 10). On évalue la qualité du modèle avec un indicateur appelé coefficient de
détermination, noté R carré, qui mesure la part de variation du chiffre d''affaires expliquée par le modèle : ici,
le calcul donne un R carré d''environ 0,993, ce qui signifie que 99,3 % de la variation observée est expliquée
par le budget publicitaire dans cet exemple, un résultat exceptionnellement élevé qui, en situation réelle,
inviterait à vérifier qu''aucun autre facteur plus déterminant n''a été oublié.

## La classification et sa matrice de confusion

Passons à un exemple de classification, également vérifié par le calcul. Imaginons un modèle qui prédit si un
dossier de microcrédit présente un risque de défaut, testé sur 200 dossiers dont on connaît le résultat réel. On
résume les résultats dans une matrice de confusion à quatre cases : 42 vrais positifs (le modèle a prédit un
risque, et il y avait bien un défaut), 8 faux positifs (le modèle a prédit un risque, mais il n''y a pas eu de
défaut), 15 faux négatifs (le modèle n''a pas prédit de risque, mais il y a eu un défaut), et 135 vrais négatifs
(le modèle n''a pas prédit de risque, et il n''y a effectivement pas eu de défaut).

À partir de ces quatre nombres, on calcule plusieurs indicateurs. L''exactitude (accuracy) est la proportion de
prédictions correctes sur l''ensemble : (42 plus 135) divisé par 200, soit 0,885, ou 88,5 %. La précision est la
proportion de vrais défauts parmi les dossiers signalés comme risqués : 42 divisé par (42 plus 8), soit 0,84,
ou 84 %. Le rappel (ou sensibilité) est la proportion de défauts réels correctement détectés : 42 divisé par
(42 plus 15), soit environ 0,737, ou 73,7 %. Le score F1, qui combine précision et rappel, vaut ici environ
0,785. Ces indicateurs racontent des histoires différentes : une exactitude de 88,5 % semble bonne, mais elle
masque le fait que plus d''un quart des défauts réels (26,3 %) ne sont pas détectés par le modèle, ce qui peut
être un problème sérieux selon le contexte métier, par exemple si laisser passer un défaut coûte cher à
l''entreprise.

## Les limites à connaître absolument

Un modèle, même avec de bons indicateurs, ne doit jamais être présenté comme une vérité absolue. Trois limites
sont à connaître pour un examen de Master 2. D''abord, la corrélation n''est pas la causalité : un lien statistique
entre budget publicitaire et chiffre d''affaires ne prouve pas, à lui seul, que la publicité cause
l''augmentation des ventes ; un facteur externe pourrait influencer les deux en même temps. Ensuite, le
surapprentissage : un modèle trop complexe peut "apprendre par cœur" les données passées sans généraliser
correctement à de nouvelles données, ce qui donne de très bons résultats sur les données d''entraînement mais de
mauvais résultats en situation réelle. Enfin, le biais des données : si les données passées contiennent des
déséquilibres (par exemple très peu de cas de défaut dans l''exemple de microcrédit), le modèle peut reproduire
ou amplifier ces déséquilibres, ce qui pose des questions éthiques importantes, notamment pour des décisions
sensibles comme l''octroi de crédit.

## Points clés à retenir

- La régression prédit une valeur numérique continue, la classification prédit une catégorie parmi un ensemble
  fini ; reconnaître laquelle s''applique à un problème donné est la première étape de toute analyse.
- Un modèle de régression simple se résume par ses coefficients (ordonnée à l''origine et pente) et par son
  R carré, qui mesure la part de variation expliquée.
- Une matrice de confusion permet de calculer exactitude, précision, rappel et score F1, des indicateurs
  complémentaires qui ne racontent pas la même histoire.
- Un bon modèle n''est jamais une vérité absolue : corrélation sans causalité, surapprentissage et biais des
  données sont trois limites à vérifier systématiquement.

## Exercices pratiques

1. Expliquez la différence entre un problème de régression et un problème de classification, avec un exemple
   de chacun dans le contexte d''une entreprise sénégalaise.
2. Dans l''exemple de Teranga Analytics, que signifie concrètement le coefficient b1 égal à environ 2,89 dans le
   modèle de régression ?
3. Calculez (ou retrouvez dans la leçon) l''exactitude, la précision et le rappel du modèle de prédiction de
   défaut de microcrédit, et expliquez en une phrase pourquoi l''exactitude seule peut être trompeuse.
4. Qu''est-ce que le surapprentissage, et pourquoi un modèle qui obtient d''excellents résultats sur les données
   d''entraînement peut-il être moins fiable qu''il ne le paraît ?
5. Expliquez en une phrase la différence entre corrélation et causalité, avec un exemple autre que celui de la
   leçon.
6. Cas pratique complet : une coopérative agricole fictive, "Niayes Coop", dispose de dix années de données
   sur la quantité de pluie reçue (en millimètres) et le rendement de sa récolte de légumes (en tonnes). Elle
   veut prédire le rendement de l''année prochaine selon une estimation de pluviométrie. S''agit-il d''un problème
   de régression ou de classification ? Pourquoi ? Quelle limite devriez-vous rappeler à la coopérative avant
   qu''elle ne se fie entièrement à ce modèle pour ses décisions d''investissement ?
7. Pourquoi le biais des données pose-t-il une question éthique particulièrement sensible dans le cas d''un
   modèle de prédiction de défaut de crédit ?

## Corrigé

1. La régression prédit une valeur numérique continue, par exemple le chiffre d''affaires futur d''une entreprise
   selon son budget publicitaire. La classification prédit une catégorie, par exemple si un client va résilier
   son abonnement ou non.
2. Cela signifie que, selon ce modèle estimé sur les données observées, chaque million de FCFA supplémentaire
   investi en publicité est associé en moyenne à environ 2,89 millions de FCFA de chiffre d''affaires
   supplémentaire, dans la plage de budgets observée dans les données.
3. Exactitude environ 88,5 %, précision 84 %, rappel environ 73,7 %. L''exactitude seule peut être trompeuse car
   elle masque que plus d''un quart des défauts réels (26,3 %) ne sont pas détectés par le modèle, un détail
   important si laisser passer un défaut coûte cher à l''entreprise.
4. Le surapprentissage se produit quand un modèle trop complexe mémorise les particularités des données
   d''entraînement plutôt que d''apprendre une relation générale ; il obtient alors d''excellents résultats sur
   ces données précises, mais se trompe davantage sur de nouvelles données qu''il n''a jamais vues, ce qui le
   rend peu fiable en situation réelle.
5. Une corrélation signifie que deux variables évoluent ensemble statistiquement, sans que l''une cause
   nécessairement l''autre ; par exemple, les ventes de parapluies et les ventes de bottes augmentent souvent
   ensemble, non pas parce que l''une cause l''autre, mais parce que les deux sont liées à la pluie.
6. C''est un problème de régression, car on veut prédire une valeur numérique continue, le rendement en tonnes,
   et non une catégorie. Limite à rappeler : la relation observée entre pluviométrie et rendement sur dix ans
   peut masquer d''autres facteurs (qualité du sol, pratiques agricoles, maladies des cultures) et ne garantit
   pas que la même relation se maintiendra à l''avenir, surtout en cas d''événement climatique inhabituel.
7. Parce qu''un déséquilibre dans les données passées, par exemple un historique de crédits où certains profils
   ont été systématiquement moins bien traités pour des raisons non liées au risque réel, peut amener le modèle
   à reproduire ou amplifier ces inégalités dans ses décisions futures, ce qui pose un problème d''équité et de
   responsabilité pour l''entreprise qui utilise ce modèle.
', 'texte', 50, false, 20
from public.courses c where c.slug = 'mas-info-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Intelligence artificielle et data science : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Gouvernance IT et gestion de projets informatiques : l''essentiel pour l''examen', '## Objectifs de la leçon

Cette leçon traite la gouvernance des systèmes d''information et la gestion de projets informatiques : les
grands principes d''ITIL pour organiser les services informatiques, les principes du DevOps pour rapprocher
développement et exploitation, et la méthode de pilotage d''un projet informatique, du cadrage à la clôture. On
s''appuie sur le cas fictif d''une entreprise de logistique, "Dakar Logistique Services", et sur des calculs de
planification vérifiés.

## La gouvernance IT : organiser les services informatiques

La gouvernance IT, c''est l''ensemble des règles et des processus qui permettent à la direction informatique
d''une entreprise d''aligner ses activités sur les besoins métier, de maîtriser les risques, et de rendre compte
de la qualité de service. Un référentiel largement utilisé pour organiser les services informatiques au
quotidien est ITIL (en principe, sans détailler ici ses processus précis en l''absence de certitude sur leur
contenu exact dans sa version actuelle) : il structure, par exemple, la gestion des incidents (remettre en
service rapidement une application en panne), la gestion des problèmes (analyser la cause profonde d''incidents
récurrents pour éviter qu''ils ne se reproduisent), et la gestion des changements (encadrer toute modification
d''un système en production pour limiter les risques d''une mise à jour mal maîtrisée).

Un indicateur de gouvernance couramment utilisé est la disponibilité d''un service, exprimée en pourcentage du
temps où le service fonctionne correctement sur une période donnée. Par exemple, si une application a subi
trois heures d''indisponibilité sur un mois de 30 jours, soit 720 heures, sa disponibilité est de (720 moins 3)
divisé par 720, soit environ 99,58 %. Cet indicateur, souvent fixé comme objectif contractuel entre la
direction informatique et les métiers qu''elle sert, illustre bien le rôle de la gouvernance : traduire un
objectif de qualité de service en un chiffre mesurable et suivi dans le temps.

## Le DevOps : rapprocher développement et exploitation

Le DevOps est une démarche (en principe, sans prétendre à une définition normative unique) qui vise à réduire la
séparation historique entre les équipes qui développent les applications et celles qui les exploitent en
production. Avant le DevOps, une équipe de développement livrait un logiciel "terminé" à une équipe
d''exploitation, souvent avec des frictions : des délais de mise en production longs, des incompréhensions sur
les besoins réels de l''environnement de production, et des équipes qui se renvoient la responsabilité en cas de
panne. Le DevOps rapproche les deux équipes, voire les fusionne partiellement, autour d''objectifs communs : des
livraisons plus fréquentes et plus petites (donc moins risquées individuellement), une automatisation des
tests et des déploiements pour réduire les erreurs humaines répétitives, et une responsabilité partagée sur la
fiabilité du système en production. Pour un examen, il faut retenir le principe (rapprocher développement et
exploitation, automatiser, livrer plus souvent et par petites étapes) plutôt que la maîtrise d''un outil
particulier.

## Piloter un projet informatique : cadrage, planification, suivi, clôture

Un projet informatique se pilote en quatre grandes phases. Le cadrage définit les objectifs du projet, son
périmètre (ce qui est inclus et ce qui ne l''est pas), les parties prenantes et les contraintes principales
(budget, délai, ressources disponibles). La planification découpe le projet en tâches, estime leur durée et
leurs dépendances (certaines tâches ne peuvent commencer qu''après d''autres), et construit un calendrier
réaliste. Le suivi compare régulièrement l''avancement réel à ce calendrier, identifie les écarts, et déclenche
des actions correctives si nécessaire (réaffectation de ressources, révision du périmètre, négociation d''un
délai). La clôture formalise la fin du projet, documente les résultats et les enseignements, pour que
l''expérience serve aux projets suivants.

Prenons un exemple chiffré vérifié, simplifié pour l''exercice. Un projet de refonte d''un système de suivi de
livraisons comporte quatre tâches : analyse des besoins (10 jours), développement (25 jours), tests (12 jours),
et déploiement (5 jours), menées dans cet ordre strict, chacune ne pouvant commencer qu''après la fin de la
précédente. La durée totale du projet, si tout se déroule comme prévu, est de 10 plus 25 plus 12 plus 5, soit 52
jours. Si, après trois semaines, soit 21 jours ouvrés, l''équipe constate que l''analyse des besoins a pris 14
jours au lieu de 10 et que le développement est entamé depuis 7 jours sur les 25 prévus, le retard cumulé sur
cette première partie du projet est de 4 jours (14 moins 10), ce qui, sans action corrective, décalerait
d''autant la date de fin prévue, désormais estimée à 56 jours au lieu de 52.

## Étude de cas : Dakar Logistique Services

Dakar Logistique Services est une entreprise fictive qui gère le suivi de livraisons pour des commerces de la
région de Dakar. Elle constate que son application de suivi, développée il y a deux ans, subit des pannes
fréquentes à chaque mise à jour, car les équipes de développement livrent les nouvelles fonctionnalités sans
prévenir l''équipe d''exploitation, qui découvre les changements au moment où ils causent un incident en
production.

Recommandation de gouvernance et de méthode : adopter une démarche DevOps en rapprochant les deux équipes,
avec des livraisons plus petites et plus fréquentes plutôt que de grosses mises à jour rares et risquées, et une
automatisation des tests avant chaque déploiement pour détecter les problèmes avant qu''ils n''atteignent la
production. Sur le plan de la gouvernance, formaliser un processus de gestion des changements (toute
modification notable est annoncée et validée avant d''être mise en production) permettrait de réduire le nombre
d''incidents liés à des changements mal anticipés, et de suivre dans le temps l''indicateur de disponibilité de
l''application pour mesurer l''amélioration réelle.

## Points clés à retenir

- La gouvernance IT traduit des objectifs de qualité de service en règles, processus et indicateurs mesurables,
  comme la disponibilité d''un service.
- Le DevOps rapproche développement et exploitation autour de livraisons plus fréquentes, plus petites et
  automatisées, pour réduire les frictions et les risques de chaque mise en production.
- Un projet informatique se pilote en quatre phases : cadrage, planification, suivi, clôture ; un retard sur une
  tâche se répercute sur l''ensemble du calendrier si aucune action corrective n''est prise.
- Toute recommandation de gouvernance doit être reliée à un problème concret observé, pas présentée comme une
  bonne pratique théorique isolée.

## Exercices pratiques

1. Expliquez à quoi sert la gouvernance IT dans une entreprise, en citant un exemple d''indicateur mesurable.
2. Quelle est la différence principale entre une organisation classique (développement puis exploitation
   séparées) et une démarche DevOps ?
3. Citez les quatre phases du pilotage d''un projet informatique et expliquez en une phrase le rôle de chacune.
4. Reprenez l''exemple chiffré du projet de refonte du système de suivi de livraisons : si le retard de 4 jours
   sur l''analyse des besoins se répète à l''identique sur chacune des trois phases suivantes, quelle serait la
   durée totale révisée du projet ?
5. Dans le cas de Dakar Logistique Services, pourquoi les pannes fréquentes à chaque mise à jour sont-elles un
   symptôme d''un problème d''organisation plutôt que d''un simple problème technique ?
6. Cas pratique complet : une entreprise fictive de téléphonie mobile, "Sahel Télécom Services", planifie un
   projet de migration de sa facturation vers un nouveau système, avec quatre tâches successives : audit de
   l''existant (8 jours), configuration du nouveau système (20 jours), migration des données (15 jours), tests
   et bascule (10 jours). Calculez la durée totale prévue du projet. Après deux semaines (10 jours ouvrés),
   l''audit a pris 12 jours au lieu de 8. Calculez le retard cumulé et la nouvelle durée totale estimée si aucune
   action corrective n''est prise.
7. Pourquoi la clôture d''un projet informatique, qui documente les résultats et les enseignements, est-elle
   utile même quand le projet s''est globalement bien déroulé ?

## Corrigé

1. La gouvernance IT aligne les activités informatiques sur les besoins métier et permet de rendre compte de la
   qualité de service ; par exemple, la disponibilité d''un service, exprimée en pourcentage du temps de bon
   fonctionnement sur une période donnée, est un indicateur mesurable couramment utilisé.
2. Dans une organisation classique, développement et exploitation sont séparés et se transmettent un logiciel
   "terminé", ce qui crée des frictions ; le DevOps rapproche les deux équipes autour d''objectifs communs, avec
   des livraisons plus fréquentes, plus petites et automatisées.
3. Cadrage (définir objectifs, périmètre, contraintes), planification (découper en tâches et construire un
   calendrier), suivi (comparer l''avancement réel au calendrier et corriger les écarts), clôture (documenter les
   résultats et les enseignements).
4. La durée totale initiale est de 52 jours. Un retard de 4 jours sur chacune des trois phases suivantes
   (développement, tests, déploiement) ajouterait 4 fois 3, soit 12 jours supplémentaires, portant la durée
   totale révisée à 52 plus 12, soit 64 jours.
5. Parce que l''origine du problème n''est pas une erreur technique isolée, mais un défaut de communication
   organisationnel : l''équipe d''exploitation n''est pas informée des changements avant leur mise en production,
   ce qui relève d''un processus de gestion des changements absent ou mal appliqué, pas d''un bug technique précis.
6. Durée totale prévue : 8 plus 20 plus 15 plus 10, soit 53 jours. Retard constaté sur l''audit : 12 moins 8,
   soit 4 jours. Sans action corrective, la nouvelle durée totale estimée est de 53 plus 4, soit 57 jours.
7. Parce que documenter ce qui a bien fonctionné, les délais réellement tenus, les méthodes efficaces, permet de
   capitaliser ces bonnes pratiques pour les projets suivants, et pas seulement de corriger des erreurs ; un
   projet réussi contient aussi des enseignements précieux à ne pas perdre faute de les avoir formalisés.
', 'texte', 50, false, 30
from public.courses c where c.slug = 'mas-info-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Gouvernance IT et gestion de projets informatiques : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Méthodologie du mémoire de recherche ou du projet tutoré et de la soutenance : l''essentiel pour l''examen', '## Objectifs de la leçon

Cette leçon traite la méthodologie du mémoire de recherche ou du projet tutoré, et la préparation de la
soutenance orale qui le conclut. Elle s''appuie sur le cas fictif d''un étudiant de Master 2, Moussa, qui rédige
un mémoire sur l''adoption du paiement mobile par les petits commerces d''une ville moyenne du Sénégal, et sur un
planning de rédaction chiffré et vérifié.

## La structure attendue d''un mémoire

Un mémoire de Master suit généralement une structure proche, que les attentes précises varient selon
l''établissement et le type de mémoire (recherche ou professionnel) : une introduction qui présente le contexte,
la problématique (la question précise à laquelle le mémoire répond) et le plan ; une revue de littérature qui
situe le travail par rapport à ce qui a déjà été écrit sur le sujet (études, rapports, cadres théoriques déjà
connus) ; une partie méthodologie qui explique comment les données ont été collectées et analysées (entretiens,
questionnaires, étude de cas, analyse de données existantes) et pourquoi cette méthode a été choisie ; une
partie résultats qui présente ce qui a été observé, sans encore l''interpréter longuement ; une partie discussion
qui interprète les résultats, les met en lien avec la problématique et la revue de littérature, et en reconnaît
les limites ; et une conclusion qui résume l''apport du travail et ouvre, si pertinent, sur des pistes futures.

La problématique est la pièce centrale : un mémoire qui part d''une question trop large ("le paiement mobile au
Sénégal") sera difficile à traiter sérieusement en quelques mois ; une question précise et bornée ("pourquoi
certains petits commerces d''une ville moyenne adoptent-ils le paiement mobile plus vite que d''autres, malgré
une offre technique équivalente ?") permet une recherche réellement menée à son terme, avec une méthode adaptée
et des résultats interprétables.

## Les règles de citation et de sourcing

Un mémoire de Master doit distinguer clairement ce qui vient d''une source extérieure (un rapport, une étude, un
article) de ce que l''étudiant apporte lui-même comme analyse ou résultat. Toute idée, donnée ou citation
reprise d''une source doit être attribuée explicitement à cette source, avec une référence précise permettant de
la retrouver. Ne jamais inventer une référence ou une citation : si un chiffre ou une étude est nécessaire pour
appuyer un argument mais qu''on ne dispose pas d''une source fiable et vérifiée, il est préférable de formuler
l''argument avec prudence ("on peut supposer que...", "il serait utile de vérifier si...") plutôt que d''attribuer
une fausse source à une affirmation, ce qui constitue une faute grave en recherche et peut être sanctionné
lourdement par un jury qui vérifierait les sources citées.

## Organiser son temps de rédaction

Prenons l''exemple de Moussa, qui dispose de douze semaines avant la remise de son mémoire, et qui vise un
mémoire d''environ 60 pages, soit approximativement 18 000 mots en comptant environ 300 mots par page. Un
découpage réaliste, vérifié par le calcul, pourrait répartir ces 18 000 mots ainsi : introduction et revue de
littérature, 5 000 mots, sur les quatre premières semaines ; méthodologie et collecte des données, 3 000 mots,
sur les trois semaines suivantes ; résultats, 4 000 mots, sur deux semaines, une fois la collecte terminée ;
discussion et conclusion, 4 000 mots, sur deux semaines ; et une dernière semaine réservée à la relecture
complète, à la vérification des références et à la mise en forme finale. Le total (5 000 plus 3 000 plus 4 000
plus 4 000, soit 16 000 mots de corps de texte) laisse une marge d''environ 2 000 mots pour l''introduction
générale, les annexes courtes et les ajustements, ce qui correspond bien à l''objectif de 18 000 mots sur 60
pages. Ce découpage par semaines, avec des jalons clairs, évite le piège classique de reporter toute la
rédaction aux dernières semaines, qui est la cause la plus fréquente de mémoires rendus en retard ou de qualité
insuffisante.

## Préparer la soutenance orale

La soutenance est un exercice différent de la rédaction : il s''agit de présenter oralement, en un temps limité
(souvent entre dix et vingt minutes selon l''établissement), l''essentiel du travail, puis de répondre aux
questions du jury. Quatre principes aident à préparer une soutenance convaincante. D''abord, ne pas chercher à
tout dire : une soutenance réussie choisit les points essentiels (la problématique, la méthode, le résultat
principal, une limite honnêtement reconnue) plutôt que de résumer chaque page du mémoire. Ensuite, minuter
précisément son intervention à l''avance, en s''entraînant à voix haute, car le temps passe toujours plus vite à
l''oral qu''on ne l''imagine en préparant ses notes. Puis anticiper les questions prévisibles du jury, notamment
"pourquoi cette méthode plutôt qu''une autre ?" et "quelles sont les limites de votre travail ?", et préparer des
réponses honnêtes plutôt que défensives : reconnaître une limite avec clarté est généralement mieux perçu que
nier une faiblesse évidente du travail. Enfin, répéter la soutenance en conditions réelles, devant un public
même restreint, car la gestion du stress et du temps de parole se travaille par la pratique, pas seulement par
la préparation du contenu.

## Points clés à retenir

- Un mémoire suit une structure proche d''un établissement à l''autre : introduction et problématique, revue de
  littérature, méthodologie, résultats, discussion, conclusion.
- Une problématique précise et bornée permet une recherche réellement menée à son terme ; une question trop
  large rend le travail difficile à mener sérieusement.
- Toute source doit être attribuée explicitement ; inventer une référence ou une citation est une faute grave
  en recherche.
- Un planning de rédaction par jalons hebdomadaires, avec une semaine réservée à la relecture finale, évite le
  report de tout le travail aux dernières semaines.
- La soutenance orale se prépare comme une compétence à part : choisir l''essentiel, minuter précisément,
  anticiper les questions, s''entraîner en conditions réelles.

## Exercices pratiques

1. Expliquez pourquoi une problématique trop large ("le paiement mobile au Sénégal") est difficile à traiter
   sérieusement dans un mémoire de Master, contrairement à une question plus précise et bornée.
2. Citez les six grandes parties d''un mémoire présentées dans cette leçon, dans l''ordre, et donnez le rôle de
   chacune en une phrase.
3. Pourquoi ne faut-il jamais inventer une référence ou une citation dans un mémoire, même pour appuyer un
   argument qui semble solide ?
4. Reprenez le planning de Moussa : si son mémoire visait 70 pages au lieu de 60, toujours à 300 mots par page,
   combien de mots cela représenterait-il, et de combien de mots supplémentaires faudrait-il augmenter chaque
   partie si l''on garde les mêmes proportions relatives (environ 31 %, 19 %, 25 %, 25 % du corps de texte pour
   les quatre grandes parties) ?
5. Citez les quatre principes de préparation d''une soutenance présentés dans cette leçon.
6. Cas pratique complet : une étudiante de Master 2, Aïda, a sept semaines avant sa soutenance et un mémoire de
   45 pages à finaliser, soit environ 13 500 mots à 300 mots par page. Elle a déjà rédigé 9 000 mots sur ses
   quatre premières semaines. Calculez le nombre de mots restant à rédiger, le nombre de semaines restantes
   avant la soutenance, et proposez une répartition réaliste de ce travail restant sur les semaines
   disponibles, en gardant au moins une semaine pour la préparation orale de la soutenance.
7. Pourquoi est-il généralement mieux perçu par un jury de reconnaître honnêtement une limite de son travail
   plutôt que de la nier ou de la minimiser pendant la soutenance ?

## Corrigé

1. Une question trop large englobe trop de dimensions différentes pour être traitée avec une méthode unique en
   quelques mois ; une question précise et bornée (par exemple limitée à une ville et à une comparaison entre
   commerces) permet de choisir une méthode adaptée et d''obtenir des résultats interprétables dans le temps
   disponible.
2. Introduction (présenter contexte, problématique, plan), revue de littérature (situer le travail par rapport à
   l''existant), méthodologie (expliquer comment les données ont été collectées et analysées), résultats
   (présenter ce qui a été observé), discussion (interpréter les résultats et reconnaître les limites),
   conclusion (résumer l''apport et ouvrir sur des pistes futures).
3. Parce qu''une référence inventée est une fraude académique, détectable par un jury qui vérifie les sources, et
   qui peut invalider la crédibilité de l''ensemble du mémoire ; il est toujours préférable de formuler un
   argument avec prudence que de l''appuyer sur une fausse source.
4. 70 pages à 300 mots donnent 21 000 mots. Avec les mêmes proportions relatives, les quatre parties
   deviendraient environ 6 510 mots (31 % de 21 000), 3 990 mots (19 %), 5 250 mots (25 %) et 5 250 mots (25 %),
   soit une augmentation d''environ 1 510, 990, 1 250 et 1 250 mots par rapport au planning initial de 60 pages.
5. Choisir l''essentiel plutôt que tout dire, minuter précisément l''intervention à l''avance, anticiper les
   questions prévisibles du jury, répéter la soutenance en conditions réelles.
6. Mots restants : 13 500 moins 9 000, soit 4 500 mots. Semaines restantes avant la soutenance : 7 moins 4,
   soit 3 semaines. En gardant une semaine pour la préparation orale, il reste 2 semaines pour rédiger les
   4 500 mots restants, soit environ 2 250 mots par semaine, un rythme à vérifier comme réaliste selon la partie
   du mémoire concernée (résultats et discussion sont souvent plus longs à rédiger que la conclusion).
7. Parce qu''un jury évalue aussi la capacité de recul critique de l''étudiant sur son propre travail ; reconnaître
   une limite montre une compréhension fine des enjeux méthodologiques, alors que nier une faiblesse évidente
   peut donner l''impression inverse, un manque de recul ou une tentative de dissimulation, ce qui nuit
   davantage à la crédibilité du candidat que la limite elle-même.
', 'texte', 50, false, 40
from public.courses c where c.slug = 'mas-info-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Méthodologie du mémoire de recherche ou du projet tutoré et de la soutenance : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Master 2 Informatique (corrigé détaillé)', '## Sujet type d''examen de Master 2 Informatique (non officiel, à titre d''entraînement)

Durée indicative : 2 heures. Barème indicatif (non officiel) : partie 1 sur 7 points, partie 2 sur 6 points,
partie 3 sur 7 points. Les candidats sont invités à vérifier le barème exact communiqué par leur établissement.

## Énoncé

Contexte : "Sahel Télécom Services" (entreprise fictive de téléphonie mobile) observe, sur dix mois, la relation
entre son budget de fidélisation client (en millions de FCFA fictifs) et le taux de clients conservés le mois
suivant. Par ailleurs, l''entreprise a lancé il y a six mois un projet de migration de sa facturation vers un
nouveau système, avec des tâches successives (audit, configuration, migration des données, tests et bascule),
mené par une équipe où développement et exploitation travaillent encore de façon séparée, ce qui a déjà causé
plusieurs incidents lors de précédentes mises à jour. Enfin, un étudiant en projet tutoré dans cette entreprise
doit remettre un rapport méthodologique dans quatre semaines sur l''analyse de ces données de fidélisation.

Partie 1 (7 points) — Intelligence artificielle et data science. L''entreprise envisage de construire un modèle
pour prédire si un client va résilier son abonnement le mois suivant, à partir de plusieurs variables (ancienneté,
montant de la facture, nombre de réclamations). S''agit-il d''un problème de régression ou de classification ?
Justifiez. Si le modèle testé sur 300 clients donne 54 vrais positifs, 16 faux positifs, 20 faux négatifs et
210 vrais négatifs, calculez l''exactitude et le rappel du modèle, et commentez ce que le rappel révèle sur la
capacité du modèle à détecter les résiliations réelles.

Partie 2 (6 points) — Gouvernance IT et gestion de projets. Le projet de migration de la facturation a déjà
causé des incidents lors de précédentes mises à jour, dans un contexte où développement et exploitation
travaillent séparément. Proposez une démarche organisationnelle pour réduire ce risque, et expliquez le lien
entre cette démarche et un indicateur de gouvernance mesurable.

Partie 3 (7 points) — Méthodologie. L''étudiant en projet tutoré dispose de quatre semaines pour un rapport
d''environ 20 pages, soit environ 6 000 mots à 300 mots par page. Proposez un découpage hebdomadaire réaliste de
ce travail, en respectant la structure attendue d''un tel rapport, et indiquez deux questions qu''un jury pourrait
lui poser lors d''une soutenance sur ce travail.

## Corrigé détaillé

Partie 1. C''est un problème de classification, car on veut prédire une catégorie (le client résilie ou ne
résilie pas), pas une valeur numérique continue. Calcul de l''exactitude : (54 plus 210) divisé par 300, soit
264 divisé par 300, soit 0,88, ou 88 %. Calcul du rappel : 54 divisé par (54 plus 20), soit 54 divisé par 74,
soit environ 0,730, ou 73 %. Commentaire : malgré une exactitude élevée de 88 %, le rappel de 73 % montre que
le modèle ne détecte qu''environ sept résiliations réelles sur dix ; pour une entreprise qui veut agir en amont
auprès des clients à risque, ce taux de détection incomplet peut représenter une limite importante à signaler
avant de déployer le modèle en production. (Barème : 2 points pour l''identification du problème, 3 points pour
les deux calculs corrects, 2 points pour le commentaire sur le rappel.)

Partie 2. Démarche recommandée : adopter une approche DevOps, en rapprochant les équipes de développement et
d''exploitation, en formalisant un processus de gestion des changements (toute modification notable du système
de facturation est annoncée et validée avant mise en production), et en favorisant des déploiements plus petits
et plus fréquents plutôt que de grosses mises à jour rares et risquées. Lien avec un indicateur de gouvernance :
on peut suivre la disponibilité du service de facturation avant et après la mise en place de cette démarche
(par exemple, le nombre d''heures d''indisponibilité par mois), ce qui permet de mesurer concrètement si la
nouvelle organisation réduit effectivement le nombre et la durée des incidents. (Barème : 3 points pour la
démarche organisationnelle argumentée, 3 points pour le lien avec un indicateur mesurable.)

Partie 3. Découpage possible sur quatre semaines, avec 6 000 mots à répartir : semaine 1, introduction,
contexte et problématique du rapport, environ 1 200 mots ; semaine 2, méthodologie de collecte et d''analyse des
données de fidélisation, environ 1 500 mots ; semaine 3, présentation des résultats et première discussion,
environ 2 100 mots ; semaine 4, finalisation de la discussion, conclusion, relecture complète et préparation de
la soutenance, environ 1 200 mots (le total, 1 200 plus 1 500 plus 2 100 plus 1 200, donne bien 6 000 mots).
Deux questions possibles du jury : "Pourquoi avez-vous choisi d''analyser ces variables précises plutôt que
d''autres données disponibles dans l''entreprise ?" et "Quelles limites voyez-vous à votre analyse, notamment sur
la fiabilité des données utilisées ?". (Barème : 4 points pour le découpage réaliste et cohérent avec la
structure attendue, 3 points pour les deux questions pertinentes et justifiées.)

## Exercices pratiques

1. Reprenez la partie 1 : si le modèle était retesté et donnait cette fois 60 vrais positifs et 14 faux négatifs
   sur le même total de 74 résiliations réelles, calculez le nouveau rappel et dites s''il s''est amélioré par
   rapport au corrigé.
2. Pour la partie 2, pourquoi suivre un indicateur de disponibilité avant et après la mise en place d''une
   démarche DevOps est-il plus convaincant que de simplement affirmer que la nouvelle organisation "devrait"
   réduire les incidents ?
3. Pour la partie 3, si l''étudiant disposait de six semaines au lieu de quatre pour le même rapport de 6 000
   mots, proposez une répartition hebdomadaire alternative qui ajoute une semaine de collecte de données
   supplémentaire et une semaine de répétition de la soutenance.

## Corrigé

1. Nouveau rappel : 60 divisé par (60 plus 14), soit 60 divisé par 74, soit environ 0,811, ou 81,1 %. C''est une
   amélioration par rapport au rappel initial d''environ 73 %, ce qui signifie que le modèle détecte désormais
   une plus grande proportion des résiliations réelles.
2. Parce qu''un indicateur mesurable permet de comparer objectivement la situation avant et après le changement,
   avec des chiffres concrets (par exemple, le nombre d''heures d''indisponibilité par mois), plutôt que de se
   fier à une impression générale ; cela permet aussi de détecter si la démarche n''apporte pas l''amélioration
   attendue et de l''ajuster en conséquence.
3. Répartition possible sur six semaines : semaine 1, contexte et problématique (1 000 mots) ; semaine 2,
   collecte de données supplémentaire (sans rédaction significative, préparation du terrain) ; semaine 3,
   méthodologie (1 300 mots) ; semaine 4, résultats (1 900 mots) ; semaine 5, discussion et conclusion
   (1 800 mots) ; semaine 6, relecture complète et répétition de la soutenance (aucune rédaction nouvelle,
   uniquement révision et entraînement oral).
', 'texte', 45, false, 50
from public.courses c where c.slug = 'mas-info-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Master 2 Informatique (corrigé détaillé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Intelligence artificielle et data science', '## Fiche du cours vidéo

Durée : 1h30. Objectif : distinguer régression et classification, construire et interpréter un modèle de
régression linéaire simple, calculer et interpréter une matrice de confusion, et connaître les limites
essentielles de l''apprentissage automatique. Fil conducteur : le cas fictif de Teranga Analytics. Matériel :
tableau ou diaporama, calculatrice ou feuille pour suivre les calculs. Prérequis : mathématiques de base
(statistiques descriptives), notions de bases de données.

## Déroulé minuté

## 00:00 – 05:00 · Introduction et objectifs

Bonjour et bienvenue dans ce cours vidéo consacré à l''intelligence artificielle et à la data science. Ce n''est
pas un cours de programmation d''algorithmes complexes : notre objectif, au niveau Master 2, est de comprendre
les principes, de savoir construire et interpréter des modèles simples, et surtout de connaître les limites de
ces modèles, car c''est souvent sur ce point que se joue la différence entre un bon et un excellent candidat en
examen. Nous suivrons le cas de Teranga Analytics, une entreprise fictive de services marketing à Dakar.

## 05:00 – 15:00 · Régression et classification

Commençons par la distinction la plus importante de cette séance. L''apprentissage supervisé construit, à
partir de données passées où l''on connaît à la fois les entrées et le résultat observé, un modèle capable de
prédire ce résultat sur de nouvelles données. Deux grandes familles de problèmes. La régression prédit une
valeur numérique continue : un chiffre d''affaires, une température, un rendement agricole. La classification
prédit une catégorie parmi un ensemble fini : un client va résilier ou non, un dossier de crédit est risqué ou
non. Posons-nous la question, pour chaque exemple que je vais citer : régression ou classification ? Prédire le
montant des ventes du mois prochain : régression, car c''est une valeur numérique continue. Prédire si un email
est un courrier indésirable : classification, car c''est une catégorie parmi deux possibles. Cette distinction
conditionne le choix des indicateurs d''évaluation, ce que nous allons voir dans les deux parties suivantes.

## 15:00 – 35:00 · La régression linéaire pas à pas

Teranga Analytics observe, sur huit mois, le budget publicitaire mensuel et le chiffre d''affaires du mois
correspondant, en millions de FCFA fictifs : pour des budgets de 2, 3, 4, 5, 6, 7, 8 et 9, les chiffres
d''affaires sont 15, 18, 21, 25, 26, 30, 33 et 35. Une régression linéaire cherche la droite qui s''ajuste le
mieux à ces points. J''ai effectué le calcul par la méthode des moindres carrés, et je vous donne le résultat
vérifié : l''ordonnée à l''origine, b0, vaut environ 9,46, et la pente, b1, vaut environ 2,89. Que signifient ces
deux nombres ? Le b0 représente le chiffre d''affaires estimé si le budget publicitaire était nul, soit environ
9,46 millions, ce qui capture l''effet d''autres facteurs que la publicité. Le b1 représente l''effet marginal
d''un million de FCFA supplémentaire de budget : chaque million investi est associé en moyenne à 2,89 millions
de chiffre d''affaires supplémentaire, dans la plage de budgets observée. Pour un budget de 10 millions, le
modèle prédit donc 9,46 plus 2,89 fois 10, soit environ 38,39 millions de chiffre d''affaires.

Comment savoir si ce modèle est bon ? On utilise le coefficient de détermination, R carré, qui mesure la part
de variation du chiffre d''affaires expliquée par le modèle. Dans cet exemple, le calcul donne un R carré
d''environ 0,993, soit 99,3 % de variation expliquée, un résultat exceptionnellement élevé qui, en situation
réelle avec des données plus bruitées, inviterait à vérifier qu''aucun facteur plus déterminant n''a été oublié,
plutôt qu''à se réjouir sans esprit critique d''un résultat aussi parfait.

## 35:00 – 55:00 · La classification et la matrice de confusion

Passons à un exemple de classification, un modèle qui prédit le risque de défaut sur des dossiers de
microcrédit, testé sur 200 dossiers dont on connaît le résultat réel. Je construis avec vous la matrice de
confusion : 42 vrais positifs, le modèle a prédit un risque et il y avait bien un défaut ; 8 faux positifs, le
modèle a prédit un risque à tort ; 15 faux négatifs, le modèle n''a pas détecté un défaut réel ; 135 vrais
négatifs, le modèle a correctement écarté un dossier sans défaut.

Calculons ensemble les indicateurs. L''exactitude : (42 plus 135) divisé par 200, soit 0,885, ou 88,5 %. Cela
semble excellent, mais regardons plus en détail. La précision : 42 divisé par (42 plus 8), soit 0,84, ou 84 %,
qui mesure la fiabilité des alertes données par le modèle. Le rappel : 42 divisé par (42 plus 15), soit environ
0,737, ou 73,7 %, qui mesure la proportion de défauts réels effectivement détectés. Posons-nous la question :
pourquoi l''exactitude de 88,5 % peut-elle être trompeuse ? Parce qu''elle masque que plus d''un quart des défauts
réels, 26,3 %, ne sont pas détectés par le modèle, ce qui peut avoir un coût réel important pour l''entreprise
selon le contexte. C''est exactement pour cette raison qu''un bon candidat de Master 2 ne se contente jamais d''un
seul indicateur pour juger un modèle.

## 55:00 – 1:00:00 · Pause et quiz interactif

Petit quiz de mi-parcours. Première question : un modèle qui prédit le prix de vente futur d''un bien immobilier
relève-t-il de la régression ou de la classification ? Deuxième question : dans la matrice de confusion vue
plus haut, que mesure le rappel, et en quoi diffère-t-il de la précision ? Mettez en pause, répondez, puis
reprenez. ... Réponses : c''est un problème de régression, car le prix est une valeur numérique continue ; le
rappel mesure la proportion de cas positifs réels correctement détectés par le modèle, alors que la précision
mesure la proportion de détections positives qui sont effectivement correctes ; les deux indicateurs répondent
à des questions différentes et peuvent donner des résultats très différents sur le même modèle.

## 1:00:00 – 1:20:00 · Les limites de l''apprentissage automatique

Terminons par les limites, essentielles à connaître pour un examen de Master 2. Première limite, la corrélation
n''est pas la causalité : un lien statistique entre budget publicitaire et chiffre d''affaires ne prouve pas que
la publicité, à elle seule, cause l''augmentation des ventes ; un facteur externe, par exemple une période de
forte demande saisonnière, pourrait influencer les deux variables en même temps. Deuxième limite, le
surapprentissage : un modèle trop complexe peut mémoriser les particularités des données d''entraînement sans
généraliser correctement, donnant d''excellents résultats sur ces données précises mais de mauvais résultats sur
de nouvelles données jamais vues. Troisième limite, le biais des données : si les données passées contiennent
des déséquilibres, par exemple très peu de cas de défaut dans notre exemple de microcrédit, le modèle peut
reproduire ou amplifier ces déséquilibres, ce qui pose des questions éthiques sérieuses pour des décisions
sensibles comme l''octroi de crédit. Un bon candidat sait toujours rappeler au moins une de ces limites quand il
présente un modèle, plutôt que de le présenter comme une vérité absolue.

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Résumons. La régression prédit une valeur numérique continue, la classification prédit une catégorie. Un modèle
de régression se résume par ses coefficients et son R carré. Une matrice de confusion permet de calculer
plusieurs indicateurs complémentaires, exactitude, précision, rappel, qui ne racontent pas la même histoire.
Et aucun modèle n''est une vérité absolue : corrélation sans causalité, surapprentissage, biais des données sont
trois limites à vérifier systématiquement.

Cinq questions d''évaluation finale. Question 1 : quelle est la différence entre régression et classification ?
Réponse : la régression prédit une valeur numérique continue, la classification prédit une catégorie parmi un
ensemble fini. Question 2 : dans l''exemple de Teranga Analytics, que signifie le coefficient b1 d''environ
2,89 ? Réponse : chaque million de FCFA supplémentaire de budget publicitaire est associé en moyenne à 2,89
millions de FCFA de chiffre d''affaires supplémentaire. Question 3 : pourquoi l''exactitude seule peut-elle être
trompeuse pour évaluer un modèle de classification ? Réponse : parce qu''elle peut masquer un rappel faible,
c''est-à-dire une proportion importante de cas positifs réels non détectés. Question 4 : qu''est-ce que le
surapprentissage ? Réponse : un modèle trop complexe qui mémorise les données d''entraînement sans généraliser
correctement à de nouvelles données. Question 5 : pourquoi le biais des données pose-t-il une question éthique
pour un modèle de crédit ? Réponse : parce qu''un déséquilibre dans les données passées peut amener le modèle à
reproduire ou amplifier des inégalités dans ses décisions futures.

Avant de conclure, un dernier point de méthode pour l''examen : quand un sujet vous présente un cas, commencez
toujours par identifier s''il s''agit d''un problème de régression ou de classification, car cela détermine
directement les indicateurs à calculer et la façon de présenter vos résultats ; ensuite, calculez précisément
les chiffres demandés, sans approximation grossière, en montrant le détail du calcul plutôt que seulement le
résultat final ; et terminez systématiquement par un commentaire sur les limites du modèle obtenu, car c''est
souvent ce commentaire, plus que le calcul lui-même, qui distingue une bonne réponse d''une excellente réponse
aux yeux d''un correcteur de Master 2.

Merci pour votre attention et à la prochaine séance, consacrée à la gouvernance IT et à la gestion de projets.
', 'video', 90, false, 60
from public.courses c where c.slug = 'mas-info-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Intelligence artificielle et data science');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Gouvernance IT et gestion de projets informatiques', '## Fiche du cours vidéo

Durée : 1h30. Objectif : comprendre les principes de la gouvernance IT et d''ITIL, comprendre la démarche DevOps,
et savoir piloter un projet informatique à travers ses quatre phases, avec des calculs de planification
vérifiés. Fil conducteur : le cas fictif de Dakar Logistique Services. Matériel : tableau ou diaporama, feuille
pour suivre les calculs de planning. Prérequis : notions de gestion de projet de base, vocabulaire des systèmes
d''information.

## Déroulé minuté

## 00:00 – 05:00 · Introduction et objectifs

Bonjour et bienvenue dans ce cours vidéo consacré à la gouvernance IT et à la gestion de projets informatiques.
Dans un monde professionnel, la maîtrise technique ne suffit pas : il faut aussi savoir organiser les équipes,
suivre la qualité de service, et piloter des projets avec des délais et des budgets. Nous suivrons le cas de
Dakar Logistique Services, une entreprise fictive confrontée à des pannes répétées à chaque mise à jour de son
application de suivi de livraisons.

## 05:00 – 20:00 · La gouvernance IT et le principe d''ITIL

La gouvernance IT, c''est l''ensemble des règles et processus qui permettent à la direction informatique
d''aligner ses activités sur les besoins métier, de maîtriser les risques, et de rendre compte de la qualité de
service. Un référentiel largement utilisé pour organiser les services informatiques est ITIL, que je cite ici
en principe, sans en détailler les processus précis faute de certitude sur leur contenu exact dans sa version
actuelle. Il structure, par exemple, la gestion des incidents, remettre en service rapidement une application
en panne ; la gestion des problèmes, analyser la cause profonde d''incidents récurrents pour éviter qu''ils ne se
reproduisent ; et la gestion des changements, encadrer toute modification d''un système en production pour
limiter les risques d''une mise à jour mal maîtrisée.

Prenons un exemple chiffré pour illustrer un indicateur de gouvernance courant, la disponibilité d''un service.
Si une application a subi trois heures d''indisponibilité sur un mois de 30 jours, soit 720 heures au total, sa
disponibilité se calcule ainsi : (720 moins 3) divisé par 720, ce qui donne environ 0,9958, soit 99,58 %. Cet
indicateur, souvent fixé comme objectif contractuel entre la direction informatique et les métiers qu''elle
sert, illustre bien le rôle concret de la gouvernance : traduire un objectif de qualité en un chiffre mesurable
et suivi dans le temps, plutôt qu''en une intention vague.

## 20:00 – 35:00 · Le DevOps : rapprocher développement et exploitation

Le DevOps est une démarche qui vise à réduire la séparation historique entre les équipes de développement et
celles d''exploitation. Avant le DevOps, une équipe de développement livrait un logiciel "terminé" à une équipe
d''exploitation, souvent avec des frictions : délais de mise en production longs, incompréhensions sur les
besoins réels de la production, et équipes qui se renvoient la responsabilité en cas de panne. Posons-nous la
question : que se passe-t-il concrètement quand ces deux équipes ne communiquent pas sur les changements
prévus ? L''équipe d''exploitation découvre les nouvelles fonctionnalités au moment où elles causent un incident,
exactement ce qui se passe chez Dakar Logistique Services. Le DevOps rapproche les deux équipes autour
d''objectifs communs : des livraisons plus fréquentes et plus petites, donc individuellement moins risquées ;
une automatisation des tests et des déploiements pour réduire les erreurs humaines répétitives ; et une
responsabilité partagée sur la fiabilité du système en production. Pour l''examen, retenez le principe plutôt
qu''un outil particulier : rapprocher, automatiser, livrer plus souvent et par petites étapes.

## 35:00 – 55:00 · Piloter un projet informatique : les quatre phases

Un projet informatique se pilote en quatre grandes phases. Le cadrage définit les objectifs, le périmètre, les
parties prenantes et les contraintes principales, budget, délai, ressources. La planification découpe le
projet en tâches, estime leur durée et leurs dépendances, et construit un calendrier réaliste. Le suivi compare
régulièrement l''avancement réel à ce calendrier et déclenche des actions correctives en cas d''écart. La clôture
formalise la fin du projet et documente les enseignements pour les projets suivants.

Construisons ensemble un exemple chiffré, vérifié, pour bien ancrer la méthode. Un projet de refonte d''un
système de suivi de livraisons comporte quatre tâches successives, chacune ne pouvant commencer qu''après la
fin de la précédente : analyse des besoins, 10 jours ; développement, 25 jours ; tests, 12 jours ; déploiement,
5 jours. La durée totale prévue est de 10 plus 25 plus 12 plus 5, soit 52 jours. Imaginons qu''après trois
semaines, soit 21 jours ouvrés, l''équipe constate que l''analyse des besoins a pris 14 jours au lieu de 10. Le
retard sur cette tâche est de 4 jours, 14 moins 10, ce qui décale d''autant, sans action corrective, la date de
fin prévue, désormais estimée à 56 jours au lieu de 52. C''est exactement ce type de calcul simple que vous devez
savoir reproduire rapidement en examen.

## 55:00 – 1:00:00 · Pause et quiz interactif

Petit quiz. Première question : citez un exemple de processus structuré par ITIL. Deuxième question : quel est
le principal objectif du DevOps ? Troisième question : citez les quatre phases du pilotage d''un projet
informatique. Mettez en pause, répondez, puis reprenez. ... Réponses : la gestion des incidents, des problèmes
ou des changements ; rapprocher développement et exploitation pour réduire les frictions et les risques des
mises en production ; cadrage, planification, suivi, clôture.

## 1:00:00 – 1:20:00 · Étude de cas complète : Dakar Logistique Services

Reprenons le cas en entier. Dakar Logistique Services subit des pannes fréquentes à chaque mise à jour de son
application de suivi, car les équipes de développement livrent sans prévenir l''équipe d''exploitation. Première
recommandation : adopter une démarche DevOps en rapprochant les deux équipes, avec des livraisons plus petites
et plus fréquentes, et une automatisation des tests avant chaque déploiement pour détecter les problèmes avant
qu''ils n''atteignent la production. Deuxième recommandation, de gouvernance : formaliser un processus de gestion
des changements, toute modification notable est annoncée et validée avant mise en production, ce qui relève
directement du principe ITIL vu plus haut. Troisième recommandation, mesurable : suivre dans le temps
l''indicateur de disponibilité de l''application avant et après ces changements organisationnels, pour vérifier
objectivement si l''amélioration espérée se produit réellement, plutôt que de se contenter d''une impression
générale d''amélioration.

Allons un peu plus loin sur ce dernier point, car c''est souvent ce qui distingue une bonne réponse d''une
excellente réponse en examen. Supposons que, sur les trois mois précédant la mise en place de la démarche
DevOps, Dakar Logistique Services ait enregistré en moyenne six heures d''indisponibilité par mois sur un mois
de 720 heures, soit une disponibilité moyenne de (720 moins 6) divisé par 720, environ 99,17 %. Si, sur les
trois mois suivant la mise en place des changements organisationnels, l''indisponibilité moyenne descend à deux
heures par mois, la disponibilité moyenne devient (720 moins 2) divisé par 720, environ 99,72 %. Cette
comparaison chiffrée, avant et après, est précisément ce qu''un bon correcteur attend : elle transforme une
recommandation générale en une preuve mesurable de son efficacité, et permet à la direction de juger
objectivement si l''investissement dans cette réorganisation était justifié.

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Résumons. La gouvernance IT traduit des objectifs de qualité de service en règles, processus et indicateurs
mesurables comme la disponibilité. Le DevOps rapproche développement et exploitation autour de livraisons plus
fréquentes, plus petites et automatisées. Un projet informatique se pilote en quatre phases, et un retard sur
une tâche se répercute sur l''ensemble du calendrier sans action corrective.

Cinq questions d''évaluation finale. Question 1 : à quoi sert un indicateur de disponibilité dans la
gouvernance IT ? Réponse : à mesurer concrètement la qualité de service rendue et à fixer un objectif
contractuel mesurable. Question 2 : quelle est la différence entre une organisation classique et une démarche
DevOps ? Réponse : la démarche DevOps rapproche développement et exploitation autour d''objectifs communs, au
lieu de les séparer avec des livraisons rares et risquées. Question 3 : citez les quatre phases du pilotage
d''un projet informatique. Réponse : cadrage, planification, suivi, clôture. Question 4 : dans l''exemple chiffré
de cette séance, quelle est la nouvelle durée totale estimée du projet après un retard de 4 jours sur l''analyse
des besoins ? Réponse : 56 jours, au lieu des 52 jours initialement prévus. Question 5 : pourquoi les pannes
fréquentes de Dakar Logistique Services relèvent-elles d''un problème d''organisation plutôt que d''un simple
problème technique ? Réponse : parce que l''équipe d''exploitation n''est pas informée des changements avant leur
mise en production, ce qui montre l''absence d''un processus de gestion des changements, pas une erreur technique
isolée.

Un dernier conseil de méthode avant de terminer : face à un sujet d''examen de gouvernance ou de gestion de
projet, ne vous limitez jamais à citer un principe théorique isolé, ITIL, DevOps ou une phase de projet ; reliez
toujours la recommandation à un symptôme concret observé dans l''énoncé, et appuyez-la, chaque fois que c''est
possible, par un indicateur chiffré avant et après, comme nous venons de le faire pour la disponibilité du
service. C''est cette capacité à relier théorie, cas concret et preuve chiffrée qui distingue le niveau Master 2.

Merci pour votre attention et à la prochaine séance, consacrée à la méthodologie du mémoire et de la soutenance.
', 'video', 90, false, 70
from public.courses c where c.slug = 'mas-info-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Gouvernance IT et gestion de projets informatiques');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Méthodologie du mémoire et de la soutenance', '## Fiche du cours vidéo

Durée : 1h30. Objectif : maîtriser la structure attendue d''un mémoire de recherche ou de projet tutoré, les
règles de citation et de sourcing, l''organisation du temps de rédaction par jalons, et la préparation de la
soutenance orale. Fil conducteur : le cas fictif de Moussa, étudiant de Master 2 rédigeant un mémoire sur
l''adoption du paiement mobile. Matériel : tableau ou diaporama, feuille pour construire son propre planning.
Prérequis : avoir déjà entamé la réflexion sur le sujet de son propre mémoire ou projet tutoré.

## Déroulé minuté

## 00:00 – 05:00 · Introduction et objectifs

Bonjour et bienvenue dans ce cours vidéo consacré à la méthodologie du mémoire et de la soutenance. C''est sans
doute la séance la plus directement utile de ce module, car elle s''applique immédiatement au travail que vous
êtes probablement en train de mener en parallèle de vos cours. Nous allons voir comment structurer un mémoire,
comment citer correctement vos sources, comment organiser votre temps de rédaction sans tout reporter à la
dernière minute, et comment préparer une soutenance orale convaincante. Nous suivrons le cas de Moussa, un
étudiant fictif qui rédige un mémoire sur l''adoption du paiement mobile par les petits commerces d''une ville
moyenne du Sénégal.

## 05:00 – 20:00 · La structure attendue d''un mémoire

Un mémoire de Master suit généralement une structure proche, même si les attentes précises varient selon
l''établissement : introduction (contexte, problématique, plan), revue de littérature (situer le travail par
rapport à l''existant), méthodologie (expliquer comment les données ont été collectées et analysées, et
pourquoi), résultats (présenter ce qui a été observé), discussion (interpréter les résultats et reconnaître les
limites), conclusion (résumer l''apport et ouvrir sur des pistes futures).

La problématique est la pièce centrale de tout l''édifice. Posons-nous la question : pourquoi une question comme
"le paiement mobile au Sénégal" est-elle trop large pour un mémoire de Master ? Parce qu''elle englobe trop de
dimensions, techniques, économiques, sociales, régionales, pour être traitée sérieusement en quelques mois avec
une méthode unique. Une question précise et bornée, par exemple "pourquoi certains petits commerces d''une ville
moyenne adoptent-ils le paiement mobile plus vite que d''autres, malgré une offre technique équivalente ?",
permet une recherche réellement menée à son terme, avec une méthode adaptée et des résultats interprétables.
Moussa, après plusieurs semaines de réflexion, a resserré son sujet initial, trop large, vers cette question
précise, ce qui a immédiatement rendu son travail plus concret et plus réalisable.

## 20:00 – 30:00 · Les règles de citation et de sourcing

Un mémoire doit distinguer clairement ce qui vient d''une source extérieure de ce que l''étudiant apporte comme
analyse propre. Toute idée, donnée ou citation reprise d''ailleurs doit être attribuée explicitement, avec une
référence précise permettant de la retrouver. Je veux insister fermement sur un point : ne jamais inventer une
référence ou une citation. Si un chiffre semble utile pour appuyer un argument mais qu''aucune source fiable
n''est disponible, il vaut mieux formuler l''argument avec prudence, "on peut supposer que...", "il serait utile
de vérifier si...", plutôt que d''attribuer une fausse source à une affirmation. C''est une faute grave en
recherche, détectable par un jury qui vérifie les sources citées, et elle peut compromettre la crédibilité de
l''ensemble du mémoire, même si le reste du travail est de bonne qualité.

## 30:00 – 50:00 · Organiser son temps de rédaction

Passons maintenant à l''organisation pratique. Moussa dispose de douze semaines avant la remise de son mémoire,
pour un objectif d''environ 60 pages, soit approximativement 18 000 mots à 300 mots par page. Construisons
ensemble son planning. Introduction et revue de littérature, 5 000 mots, sur les quatre premières semaines.
Méthodologie et collecte des données, 3 000 mots, sur les trois semaines suivantes. Résultats, 4 000 mots, sur
deux semaines, une fois la collecte terminée. Discussion et conclusion, 4 000 mots, sur deux semaines. Et une
dernière semaine entièrement réservée à la relecture complète, à la vérification des références et à la mise en
forme finale. Le total du corps de texte, 5 000 plus 3 000 plus 4 000 plus 4 000, donne 16 000 mots, ce qui
laisse une marge d''environ 2 000 mots pour l''introduction générale, les annexes courtes et les ajustements,
cohérent avec l''objectif de 18 000 mots. Ce découpage par jalons hebdomadaires évite le piège le plus fréquent :
reporter toute la rédaction aux dernières semaines, qui est la cause la plus courante de mémoires rendus en
retard ou de qualité insuffisante.

## 50:00 – 55:00 · Pause et quiz interactif

Petit quiz. Première question : pourquoi une problématique trop large est-elle difficile à traiter dans un
mémoire de Master ? Deuxième question : que faire si un chiffre serait utile pour appuyer un argument mais
qu''aucune source fiable n''est disponible ? Troisième question : pourquoi réserver une semaine entière à la
relecture finale dans le planning de rédaction ? Mettez en pause, répondez, puis reprenez. ... Réponses : elle
englobe trop de dimensions pour être traitée sérieusement avec une méthode unique en quelques mois ; formuler
l''argument avec prudence plutôt que d''inventer une fausse source ; parce que la relecture, la vérification des
références et la mise en forme demandent un temps dédié, qui est souvent sous-estimé si on l''improvise à la
dernière minute.

## 55:00 – 1:15:00 · Préparer la soutenance orale

La soutenance est un exercice différent de la rédaction. Il s''agit de présenter oralement, en un temps limité,
souvent entre dix et vingt minutes selon l''établissement, l''essentiel du travail, puis de répondre aux
questions du jury. Quatre principes à retenir. Premièrement, ne pas chercher à tout dire : choisir les points
essentiels, la problématique, la méthode, le résultat principal, une limite honnêtement reconnue, plutôt que
de résumer chaque page du mémoire. Deuxièmement, minuter précisément son intervention à l''avance, en
s''entraînant à voix haute, car le temps passe toujours plus vite à l''oral qu''on ne l''imagine en préparant ses
notes par écrit. Troisièmement, anticiper les questions prévisibles du jury, notamment "pourquoi cette méthode
plutôt qu''une autre ?" et "quelles sont les limites de votre travail ?", et préparer des réponses honnêtes
plutôt que défensives. Quatrièmement, répéter la soutenance en conditions réelles, devant un public même
restreint, car la gestion du stress et du temps de parole se travaille par la pratique.

Un point mérite d''être souligné particulièrement : reconnaître honnêtement une limite de son travail est
généralement mieux perçu par un jury que de la nier ou de la minimiser. Un jury évalue aussi la capacité de
recul critique de l''étudiant sur son propre travail ; reconnaître une limite montre une compréhension fine des
enjeux méthodologiques, alors que nier une faiblesse évidente donne l''impression inverse, un manque de recul,
ce qui nuit davantage à la crédibilité du candidat que la limite elle-même.

## 1:15:00 – 1:30:00 · Synthèse et évaluation finale

Résumons. Un mémoire suit une structure proche d''un établissement à l''autre, avec une problématique précise et
bornée comme pièce centrale. Toute source doit être attribuée explicitement ; inventer une référence est une
faute grave. Un planning par jalons hebdomadaires, avec une semaine de relecture finale, évite le report de
tout le travail à la dernière minute. Et la soutenance se prépare comme une compétence à part : choisir
l''essentiel, minuter précisément, anticiper les questions, s''entraîner en conditions réelles.

Cinq questions d''évaluation finale. Question 1 : citez les six grandes parties d''un mémoire. Réponse :
introduction, revue de littérature, méthodologie, résultats, discussion, conclusion. Question 2 : pourquoi ne
faut-il jamais inventer une référence dans un mémoire ? Réponse : c''est une faute grave en recherche, détectable
par un jury, qui peut compromettre la crédibilité de l''ensemble du travail. Question 3 : dans le planning de
Moussa, combien de mots sont prévus pour la partie résultats ? Réponse : 4 000 mots, sur deux semaines.
Question 4 : citez les quatre principes de préparation d''une soutenance. Réponse : choisir l''essentiel, minuter
précisément, anticiper les questions, répéter en conditions réelles. Question 5 : pourquoi est-il généralement
préférable de reconnaître une limite de son travail plutôt que de la nier devant un jury ? Réponse : parce que
cela montre une capacité de recul critique, alors que nier une faiblesse évidente donne une impression de
manque de recul, plus préjudiciable que la limite elle-même.

Un dernier conseil avant de terminer cette séance : commencez dès aujourd''hui, si vous ne l''avez pas encore
fait, à noter sur une feuille votre propre problématique telle qu''elle se présente actuellement, même de façon
imparfaite, puis demandez-vous si elle est aussi précise et bornée que celle de Moussa. Si elle vous semble
encore trop large, c''est le moment de la resserrer, avant d''avoir investi plusieurs semaines de collecte de
données sur un sujet finalement impossible à traiter sérieusement dans le temps imparti. Cette seule question,
posée tôt, évite souvent des mois de travail mal orienté.

Merci pour votre attention. La dernière vidéo de ce module sera un atelier pratique entièrement consacré à la
préparation de votre soutenance.
', 'video', 90, false, 80
from public.courses c where c.slug = 'mas-info-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Méthodologie du mémoire et de la soutenance');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Atelier méthodologie — préparer et réussir sa soutenance', '## Fiche du cours vidéo

Durée : 1h30. Objectif : atelier pratique entièrement consacré à la préparation concrète de la soutenance de
mémoire ou de projet tutoré, construit comme une simulation complète, de la préparation du plan d''intervention
jusqu''à une séance de questions-réponses type face à un jury. Fil conducteur : la poursuite du cas de Moussa,
qui prépare la soutenance de son mémoire sur l''adoption du paiement mobile. Matériel : tableau ou diaporama,
chronomètre, feuille pour construire son propre plan de soutenance en parallèle. Prérequis : la séance
précédente sur la méthodologie du mémoire, et un travail personnel déjà avancé.

## Déroulé minuté

## 00:00 – 05:00 · Introduction et objectifs

Bonjour et bienvenue dans cet atelier final du module, entièrement consacré à la soutenance. Ce n''est pas un
cours théorique supplémentaire : c''est une mise en pratique complète, où nous allons construire ensemble, étape
par étape, un plan de soutenance réaliste, minuté, et anticiper les questions d''un jury, en reprenant le cas de
Moussa, dont nous avons suivi le mémoire sur le paiement mobile dans la séance précédente. À la fin de cette
séance, vous devrez être capables de construire votre propre plan de soutenance, chronométré, pour votre propre
travail.

## 05:00 – 15:00 · Construire le plan d''intervention

Supposons que Moussa dispose de quinze minutes pour sa présentation, suivies de questions du jury. Première
règle : ne jamais chercher à résumer chaque page du mémoire en quinze minutes, ce qui est impossible et donne
une impression de survol précipité. Construisons plutôt un plan en cinq temps, chronométré précisément.
Introduction et contexte, deux minutes : pourquoi ce sujet, en une ou deux phrases percutantes. Problématique et
enjeux, deux minutes : la question précise posée et pourquoi elle mérite d''être étudiée. Méthodologie, trois
minutes : comment les données ont été collectées, auprès de qui, et pourquoi cette méthode plutôt qu''une autre.
Résultats principaux, cinq minutes : les deux ou trois résultats les plus importants, présentés avec des
chiffres précis plutôt que des généralités vagues. Discussion, limites et conclusion, trois minutes : ce que
ces résultats signifient, une limite honnêtement reconnue, et une ouverture. Le total, 2 plus 2 plus 3 plus 5
plus 3, donne bien 15 minutes.

## 15:00 – 35:00 · Minuter et répéter

Un plan sur papier n''est jamais le même qu''un plan répété à voix haute avec un chronomètre. Je vous invite,
pendant cette séquence, à faire l''exercice vous-même en parallèle : prenez votre propre plan, même provisoire,
et récitez-le à voix haute en chronométrant chaque partie. Posons-nous la question : que se passe-t-il
généralement la première fois qu''on fait cet exercice ? La plupart des étudiants dépassent largement leur
temps imparti, souvent de 50 % ou plus, parce qu''à l''écrit on sous-estime systématiquement le temps que prend
chaque phrase à l''oral. C''est pourquoi il faut répéter plusieurs fois, en coupant progressivement les détails
les moins essentiels, jusqu''à tenir le temps imparti avec une marge de confort, par exemple en visant 13
minutes pour un oral de 15 minutes maximum, afin de ne pas être interrompu par le jury avant la fin de son
propos.

## 35:00 – 40:00 · Pause et quiz interactif

Petit quiz de mi-parcours. Première question : pourquoi est-il risqué de chercher à résumer chaque page du
mémoire dans une soutenance de quinze minutes ? Deuxième question : pourquoi faut-il répéter son intervention à
voix haute plutôt que de se contenter de la relire silencieusement ? Mettez en pause, répondez, puis reprenez.
... Réponses : cela donne une impression de survol précipité et empêche de développer suffisamment les points
réellement importants, comme les résultats et la discussion ; parce qu''on sous-estime systématiquement à
l''écrit le temps que prend chaque phrase à l''oral, et seule la répétition à voix haute révèle le temps réel
nécessaire.

## 40:00 – 1:05:00 · Simulation de questions-réponses

Passons maintenant au cœur de l''atelier : la simulation de questions du jury. Je vous propose six questions
typiques, avec pour chacune la structure d''une bonne réponse, que vous pourrez adapter à votre propre travail.

Première question, "pourquoi avez-vous choisi cette méthode plutôt qu''une autre ?" Une bonne réponse rappelle
brièvement les alternatives envisagées, puis justifie le choix retenu par rapport aux contraintes réelles du
terrain, temps disponible, accès aux données, nature de la question posée.

Deuxième question, "quelles sont les limites de votre travail ?" Une bonne réponse reconnaît honnêtement une ou
deux limites précises, par exemple la taille de l''échantillon ou une zone géographique restreinte, sans se
dévaloriser excessivement ni minimiser le problème.

Troisième question, "en quoi votre travail apporte-t-il quelque chose de nouveau ?" Une bonne réponse relie le
résultat obtenu à la revue de littérature, en expliquant précisément ce qui n''était pas encore établi avant ce
travail.

Quatrième question, "comment avez-vous vérifié la fiabilité de vos données ?" Une bonne réponse décrit
concrètement les précautions prises, par exemple le recoupement de plusieurs sources ou la vérification de la
cohérence des réponses à un questionnaire.

Cinquième question, "que feriez-vous différemment si vous recommenciez ce travail ?" Une bonne réponse montre
un recul critique constructif, sans remettre en cause l''ensemble du travail déjà réalisé.

Sixième question, "quelles suites donneriez-vous à ce travail ?" Une bonne réponse propose une ou deux pistes
concrètes et réalistes, pas une liste vague de tout ce qui pourrait théoriquement être étudié.

Je vous invite à préparer par écrit, pour votre propre travail, une réponse courte à chacune de ces six
questions avant votre propre soutenance.

## 1:05:00 – 1:20:00 · Gérer le stress et le temps de parole le jour J

Le jour de la soutenance, deux difficultés pratiques reviennent très souvent. La première, le stress, qui peut
faire accélérer le débit de parole ou faire oublier une partie du plan préparé. La meilleure préparation reste
la répétition en conditions aussi réelles que possible, devant un public même restreint, famille, amis ou
camarades de classe, car l''expérience de parler devant quelqu''un d''autre que soi-même réduit progressivement
l''appréhension. La seconde difficulté, la gestion du temps en direct : prévoyez un repère visuel discret, par
exemple une montre posée en vue, pour vérifier à mi-parcours de votre intervention si vous êtes dans les temps,
sans attendre la fin pour vous en rendre compte, moment où il est trop tard pour ajuster le rythme.

## 1:20:00 – 1:30:00 · Synthèse finale et évaluation

Résumons cet atelier. Une soutenance se construit comme un plan chronométré en plusieurs temps, jamais comme
un résumé exhaustif du mémoire. La répétition à voix haute révèle le temps réel nécessaire, toujours plus long
qu''à l''écrit. Anticiper des questions typiques, méthode, limites, apport, fiabilité des données, suites
possibles, permet de préparer des réponses structurées plutôt que de les improviser sous le stress. Et gérer
le temps en direct, avec un repère visuel discret, évite les mauvaises surprises de dernière minute.

Cinq questions d''évaluation finale pour conclure ce module de Master 2. Question 1 : pourquoi construire un
plan de soutenance chronométré par sections plutôt que de préparer un texte continu sans repère de temps ?
Réponse : pour s''assurer que chaque partie reçoit le temps qui lui revient et que l''intervention tient dans la
durée imposée sans être interrompue avant la conclusion. Question 2 : pourquoi répéter son intervention à voix
haute plutôt que de se contenter de la relire ? Réponse : parce que le temps réel à l''oral est systématiquement
sous-estimé à l''écrit, et seule la répétition à voix haute le révèle précisément. Question 3 : que doit
contenir une bonne réponse à la question "quelles sont les limites de votre travail ?" Réponse : une
reconnaissance honnête d''une ou deux limites précises, sans excès de dévalorisation ni minimisation du
problème. Question 4 : comment gérer le stress le jour de la soutenance ? Réponse : en répétant plusieurs fois
devant un public réel avant la date, pour réduire progressivement l''appréhension par l''expérience. Question 5 :
pourquoi prévoir un repère visuel pour vérifier le temps à mi-parcours de son intervention ? Réponse : pour
pouvoir ajuster son rythme en direct si nécessaire, plutôt que de découvrir un dépassement de temps seulement à
la fin, quand il est trop tard pour corriger.

Avant de clore définitivement cet atelier et ce module, je veux insister sur un dernier point qui résume en
réalité tout ce que nous avons vu dans ces quatre séances vidéo : la préparation, qu''elle concerne une
architecture logicielle, un modèle de data science, un projet informatique ou une soutenance de mémoire, suit
toujours la même logique. On part d''un problème concret, jamais d''une récitation théorique abstraite ; on
construit une réponse structurée, étape par étape, en s''appuyant sur des chiffres vérifiés chaque fois que
c''est possible plutôt que sur des impressions vagues ; et on reconnaît honnêtement les limites de ce qu''on
propose, plutôt que de prétendre à une solution parfaite. C''est cette même démarche qui vous servira aussi bien
le jour de vos examens que, plus tard, dans votre vie professionnelle, face à des problèmes réels qui n''auront
jamais de solution unique et évidente.

Merci pour votre travail sur l''ensemble de ce module de Master 2. Bonne préparation pour vos examens, votre
mémoire et votre soutenance.
', 'video', 90, false, 90
from public.courses c where c.slug = 'mas-info-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Atelier méthodologie — préparer et réussir sa soutenance');
