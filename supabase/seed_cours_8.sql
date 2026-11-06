-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Cours (partie 8/13). À exécuter après seed.sql.

-- Cours : Gestion de projets Licence 1 : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'lic-projet-l1', (select id from public.levels where name = 'Licence 1'), null, 'Gestion de projets', 'Gestion de projets Licence 1 : réussir ses examens', 'Ce cours prépare les partiels et examens semestriels de première année de Licence en gestion de projets : fondamentaux du management de projet (cycle de vie, acteurs, cadrage, cahier des charges), outils de planification (WBS, Gantt, PERT et chemin critique) et communication en équipe projet. Il propose des fiches de révision, des exercices corrigés, un sujet type et trois cours vidéo de 1h30. Aucun prérequis autre que le niveau baccalauréat.', true, 311
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Licence 1 en Gestion de projets', '## Objectifs de la leçon

À la fin de cette leçon, vous saurez comment est organisée votre première année de Licence en gestion de projets dans le système LMD, quelles matières vous attendent aux partiels et aux examens semestriels, quels types d''épreuves vous devrez affronter et comment bâtir un plan de révision efficace sur six semaines.

## Le système LMD en quelques mots

Le système LMD (Licence, Master, Doctorat) est appliqué dans les universités publiques et la plupart des écoles privées du Sénégal et de l''espace UEMOA. La Licence se prépare en trois ans, soit six semestres. Chaque semestre regroupe plusieurs unités d''enseignement (UE). Une UE rassemble des matières proches, appelées éléments constitutifs (EC), par exemple une UE « Fondamentaux du management de projet » qui contient un cours magistral et des travaux dirigés.

Chaque UE donne des crédits. Les crédits mesurent la charge de travail de l''étudiant (cours, TD, travail personnel), pas seulement les heures passées en amphithéâtre. Le nombre exact de crédits par UE, les règles de compensation entre matières et les conditions de passage en année supérieure varient selon les établissements : consultez toujours le règlement des études et le guide de l''étudiant de votre université ou de votre école. Retenez le principe général : une UE validée est acquise définitivement, et une note faible dans une matière peut parfois être compensée par une bonne note dans une autre matière de la même UE ou du même semestre, selon les règles locales.

## Les matières clés de la Licence 1 en gestion de projets

En première année, l''objectif est de poser les bases. Ce cours se concentre sur trois matières centrales, que vous retrouverez sous des intitulés proches dans la plupart des maquettes :

- Fondamentaux du management de projet : définition d''un projet, cycle de vie, acteurs (maître d''ouvrage, maître d''œuvre, chef de projet, parties prenantes), cadrage, note de cadrage et cahier des charges.
- Outils de planification : structure de découpage du projet (WBS ou organigramme des tâches), diagramme de Gantt, réseau PERT et calcul du chemin critique avec les marges.
- Communication et travail en équipe projet : plan de communication, réunions, comptes rendus, rôles dans l''équipe, gestion des conflits, matrice des responsabilités.

Ces matières s''accompagnent souvent de cours transversaux (économie générale, comptabilité, mathématiques appliquées, informatique bureautique, expression écrite) qui ne sont pas traités ici mais qui comptent dans votre moyenne. Les notions de coûts, de risques et de méthodes agiles seront approfondies en Licence 2, et l''évaluation financière de projets en Licence 3.

## Les types d''épreuves

Aux partiels comme aux examens semestriels, vous rencontrerez principalement cinq formats.

- Le cas pratique : un texte décrit une organisation fictive (une ONG à Kaolack, une PME de transformation de fruits à Ziguinchor) et vous demande de cadrer le projet, d''identifier les acteurs ou de proposer un plan de communication. On attend une réponse appliquée au cas, pas une récitation du cours.
- L''exercice chiffré : calcul des dates au plus tôt et au plus tard, des marges et du chemin critique d''un réseau PERT, construction d''un Gantt, calcul d''une durée moyenne avec trois estimations.
- Le QCM ou les questions courtes : définitions précises (qu''est-ce qu''un livrable ? un jalon ? la marge libre ?).
- La dissertation ou question de réflexion : par exemple « Le chef de projet doit-il être avant tout un technicien ou un communicant ? ». On attend une introduction, un plan en deux ou trois parties et une conclusion.
- Le projet tutoré ou dossier de groupe : rédaction d''une note de cadrage, présentation orale, travail collectif évalué.

## Méthode de révision

Révisez en trois temps. D''abord, comprenez : relisez le cours en reformulant chaque notion avec vos propres mots et un exemple sénégalais. Ensuite, mémorisez : fabriquez des fiches courtes (une notion, une définition, un exemple, un piège). Enfin, entraînez-vous : refaites les exercices de TD sans regarder la correction, chronométrez-vous et comparez ensuite.

Pour les exercices de planification, la régularité compte plus que la quantité. Un réseau PERT par jour pendant deux semaines vaut mieux que dix réseaux la veille de l''examen. Écrivez toujours vos calculs dans un tableau propre : tâche, durée, antériorités, début au plus tôt, fin au plus tôt, début au plus tard, fin au plus tard, marge totale, marge libre. Le correcteur suit votre raisonnement ligne par ligne et peut vous accorder des points même si une erreur s''est glissée au début.

Travaillez aussi en groupe. La gestion de projets est un métier collectif : expliquer le chemin critique à un camarade est le meilleur moyen de vérifier que vous l''avez compris.

## Plan de révision sur six semaines

- Semaine 1 : relecture des fondamentaux (définitions, cycle de vie, acteurs). Fiches de vocabulaire. Une question de cours par jour.
- Semaine 2 : cadrage et cahier des charges. Rédiger une note de cadrage complète sur un projet fictif (par exemple l''ouverture d''une cantine scolaire à Saint-Louis).
- Semaine 3 : WBS et Gantt. Construire deux WBS et deux Gantt à la main, puis sur tableur.
- Semaine 4 : PERT et chemin critique. Un réseau par jour, avec calcul des marges totales et libres.
- Semaine 5 : communication et équipe. Plan de communication, matrice RACI, gestion de conflits. Entraînement à la rédaction de comptes rendus.
- Semaine 6 : sujets types en conditions réelles (3 heures), correction, reprise des points faibles, repos la veille.

## Points clés à retenir

- Lisez le règlement des études de votre établissement pour connaître les crédits et les règles de compensation.
- Trois matières clés en L1 : fondamentaux, planification, communication et équipe.
- Les exercices chiffrés rapportent des points sûrs si la méthode est rigoureuse et présentée en tableau.
- Révisez tôt, régulièrement et en vous entraînant sur des sujets complets.

## Exercices pratiques

1. Citez trois matières clés de la Licence 1 en gestion de projets et donnez pour chacune une notion importante.
2. Quelle est la différence entre une UE et un EC ?
3. Expliquez pourquoi un crédit ne correspond pas seulement à des heures de cours.
4. Classez les épreuves suivantes par type : « Calculez le chemin critique », « Le chef de projet est-il un manager ? », « Rédigez la note de cadrage du projet de l''association Jappo ».
5. Cas pratique : Aminata dispose de six semaines avant ses examens, mais elle travaille le samedi dans une boutique à Pikine. Proposez-lui un plan de révision réaliste en indiquant le contenu de chaque semaine et le nombre d''heures par jour.

## Corrigé

1. Fondamentaux du management de projet (cycle de vie) ; outils de planification (chemin critique) ; communication et travail en équipe projet (plan de communication). D''autres notions sont acceptées si elles relèvent bien de la matière.

2. L''UE (unité d''enseignement) est un ensemble cohérent de matières qui donne des crédits. L''EC (élément constitutif) est l''une des matières qui composent l''UE. Une UE peut contenir un ou plusieurs EC.

3. Le crédit mesure la charge de travail totale de l''étudiant : cours, TD, TP, travail personnel, préparation des examens. Deux matières ayant le même volume horaire en salle peuvent donc représenter des charges différentes.

4. « Calculez le chemin critique » : exercice chiffré. « Le chef de projet est-il un manager ? » : dissertation ou question de réflexion. « Rédigez la note de cadrage » : cas pratique.

5. Proposition : du lundi au vendredi, 3 heures par jour ; le dimanche, 4 heures ; le samedi, révision légère de fiches dans les transports (30 minutes). Semaine 1 : fondamentaux ; semaine 2 : cadrage et cahier des charges ; semaine 3 : WBS et Gantt ; semaine 4 : PERT ; semaine 5 : communication et équipe ; semaine 6 : sujets complets en 3 heures le dimanche et le mercredi, reprise des erreurs les autres jours. L''essentiel est que le plan soit réaliste, régulier et qu''il comporte des entraînements en conditions d''examen.', 'texte', 50, true, 10
from public.courses c where c.slug = 'lic-projet-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Licence 1 en Gestion de projets');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Fondamentaux du management de projet : l''essentiel pour l''examen', '## Objectifs

Maîtriser les définitions de base (projet, livrable, jalon), décrire le cycle de vie d''un projet, identifier les acteurs et leurs rôles, réaliser le cadrage et connaître le contenu d''un cahier des charges.

## Fiche 1 : qu''est-ce qu''un projet ?

Un projet est un effort temporaire, unique, entrepris pour atteindre un objectif précis, dans des contraintes de délai, de coût et de qualité. Trois caractéristiques le distinguent des opérations courantes : il a un début et une fin ; il produit un résultat nouveau ; il mobilise des ressources limitées.

Exemple : la gestion quotidienne d''une boulangerie à Dakar est une opération. L''ouverture d''une deuxième boulangerie à Mbour est un projet.

Le triangle des contraintes (ou triangle « coût – délai – qualité/périmètre ») rappelle que ces trois dimensions sont liées : si l''on réduit le délai sans changer le périmètre, le coût augmente souvent ; si l''on réduit le budget, il faut parfois réduire le périmètre.

Vocabulaire indispensable :

- Livrable : résultat tangible et vérifiable produit par le projet (un rapport d''étude, un bâtiment, un logiciel).
- Jalon : événement clé de durée nulle qui marque une étape (validation du cahier des charges, réception des travaux).
- Tâche (ou activité) : travail élémentaire qui consomme du temps et des ressources.
- Périmètre : ensemble de ce que le projet doit produire, et de ce qu''il ne produira pas.

Les référentiels internationaux de management de projet, comme le guide PMBOK ou la méthode PRINCE2, proposent chacun leur vocabulaire et leurs processus ; vous en verrez les grands principes, mais l''examen porte avant tout sur les notions générales.

## Fiche 2 : le cycle de vie du projet

Le cycle de vie décrit les grandes phases qu''un projet traverse. Un découpage classique comprend cinq phases :

- Initialisation (ou avant-projet) : identifier le besoin, étudier l''opportunité, désigner le chef de projet.
- Cadrage et planification : définir les objectifs, le périmètre, les livrables, le planning, le budget et l''organisation.
- Exécution : réaliser les travaux, coordonner les équipes.
- Suivi et maîtrise : mesurer l''avancement, comparer au prévu, corriger les écarts (cette phase se déroule en parallèle de l''exécution).
- Clôture : réceptionner les livrables, faire le bilan, capitaliser les leçons apprises, libérer les ressources.

À chaque fin de phase correspond souvent un jalon de décision (« go / no go ») : le commanditaire décide de continuer, d''ajuster ou d''arrêter.

Schéma décrit en texte : imaginez une flèche horizontale découpée en cinq blocs successifs, avec sous les blocs « exécution » une bande parallèle « suivi et maîtrise », et un losange de décision entre chaque bloc.

## Fiche 3 : les acteurs du projet

- Maître d''ouvrage (MOA) : celui pour qui le projet est réalisé ; il exprime le besoin, finance et réceptionne. Exemple : la mairie de Thiès qui veut un marché couvert.
- Maître d''œuvre (MOE) : celui qui conçoit et/ou réalise la solution technique. Exemple : le bureau d''études et l''entreprise de BTP.
- Commanditaire (ou sponsor) : personne de haut niveau qui soutient le projet et arbitre.
- Chef de projet : il planifie, coordonne, suit et rend compte. Il est responsable de l''atteinte des objectifs.
- Comité de pilotage : instance de décision qui valide les grandes étapes.
- Parties prenantes : toutes les personnes ou organisations concernées par le projet ou qui peuvent l''influencer (riverains, commerçants, services techniques, bailleurs).

Méthode d''analyse des parties prenantes : classez chaque acteur selon son pouvoir (influence) et son intérêt pour le projet. Pouvoir fort et intérêt fort : gérer de près. Pouvoir fort et intérêt faible : satisfaire. Pouvoir faible et intérêt fort : informer. Pouvoir faible et intérêt faible : surveiller.

## Fiche 4 : le cadrage et la note de cadrage

Le cadrage répond à six questions : pourquoi (contexte, enjeux), quoi (objectifs, périmètre, livrables), qui (acteurs, organisation), quand (jalons principaux), combien (budget estimatif), comment (démarche, risques majeurs).

Un bon objectif est SMART : spécifique, mesurable, atteignable, réaliste, temporellement défini. « Améliorer la cantine » n''est pas SMART. « Servir 300 repas par jour aux élèves de l''école de Médina Gounass d''ici le 1er mars, pour un coût unitaire inférieur à 400 FCFA » l''est.

La note de cadrage tient en quelques pages et est validée par le commanditaire. Elle précise aussi ce qui est hors périmètre, ce qui évite les malentendus.

## Fiche 5 : le cahier des charges

Le cahier des charges fonctionnel exprime le besoin en termes de fonctions attendues, sans imposer de solution technique. Il comprend généralement : présentation du contexte et de l''organisation ; objectifs ; description des fonctions attendues, avec critères d''appréciation et niveaux ; contraintes (budget, délais, normes, environnement) ; modalités de réception ; annexes.

Exemple : pour un logiciel de gestion des stocks d''une pharmacie à Kaolack, la fonction « alerter en cas de rupture » a pour critère « délai d''alerte » et pour niveau « dès que le stock passe sous le seuil défini ».

## Exemple chiffré : estimation du budget de cadrage

La coopérative fictive Ndiambour Lait veut installer un point de collecte. Le cadrage retient : équipement de réfrigération 4 500 000 FCFA ; aménagement du local 2 800 000 FCFA ; formation des collecteurs 700 000 FCFA. Sous-total : 8 000 000 FCFA. Avec une provision pour imprévus de 10 % (choix de gestion du projet), le budget de cadrage est de 8 800 000 FCFA.

## Exercices pratiques

1. Définissez : projet, livrable, jalon.
2. Pour chacune des situations suivantes, dites s''il s''agit d''un projet ou d''une opération : (a) la paie mensuelle d''une PME ; (b) la construction d''un forage à Linguère ; (c) la migration du système informatique d''une banque.
3. Reformulez l''objectif « Améliorer l''accès à l''eau » en objectif SMART.
4. Dans le projet de construction d''un marché par la commune de Thiès, identifiez le MOA, le MOE et trois parties prenantes, puis classez-les dans la matrice pouvoir/intérêt.
5. Calculez le budget de cadrage d''un projet comprenant 3 200 000 FCFA d''équipements, 1 500 000 FCFA de travaux, 300 000 FCFA de formation, avec une provision pour imprévus de 8 %.
6. Cas pratique : l''association fictive Jappo veut créer un centre de soutien scolaire à Pikine. Rédigez les six rubriques d''une note de cadrage.

## Corrigé

1. Projet : effort temporaire et unique pour atteindre un objectif dans des contraintes de coût, de délai et de qualité. Livrable : résultat tangible et vérifiable produit par le projet. Jalon : événement de durée nulle marquant une étape importante.

2. (a) Opération (répétitive). (b) Projet (unique, temporaire). (c) Projet.

3. Exemple : « Mettre en service, d''ici le 30 juin, un forage alimentant 2 bornes-fontaines pour 1 500 habitants du village de Keur Samba, avec un débit d''au moins 10 m³ par heure. »

4. MOA : la commune de Thiès. MOE : le bureau d''études et l''entreprise de construction. Parties prenantes : commerçants (pouvoir moyen, intérêt fort : informer et associer), services techniques de l''État (pouvoir fort, intérêt moyen : satisfaire), riverains (pouvoir faible, intérêt fort : informer). Le classement peut varier si la justification est cohérente.

5. Sous-total : 3 200 000 + 1 500 000 + 300 000 = 5 000 000 FCFA. Provision : 5 000 000 × 8 % = 400 000 FCFA. Budget : 5 400 000 FCFA.

6. Pourquoi : taux d''échec scolaire élevé dans le quartier, demande des parents. Quoi : ouvrir un centre accueillant 80 élèves de CM2 et de 3e, deux salles équipées, un programme de soutien ; hors périmètre : la cantine. Qui : MOA l''association Jappo, chef de projet bénévole désigné, enseignants vacataires, mairie, parents. Quand : local trouvé en septembre, ouverture en novembre. Combien : budget estimatif détaillé par poste avec provision. Comment : démarche par étapes, principaux risques (local indisponible, manque d''enseignants) et parades.', 'texte', 60, false, 20
from public.courses c where c.slug = 'lic-projet-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Fondamentaux du management de projet : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Outils de planification (WBS, Gantt, PERT) : l''essentiel pour l''examen', '## Objectifs

Savoir découper un projet avec une WBS, construire un diagramme de Gantt, tracer un réseau PERT, calculer les dates au plus tôt et au plus tard, les marges totale et libre, et identifier le chemin critique.

## Fiche 1 : la WBS (organigramme des tâches)

La WBS (Work Breakdown Structure), ou structure de découpage du projet, décompose le projet en livrables puis en lots de travail, de façon hiérarchique. Le niveau le plus fin s''appelle le lot de travail : il doit pouvoir être estimé, attribué à un responsable et suivi.

Règle des 100 % : les éléments d''un niveau représentent exactement tout le travail du niveau supérieur.

Exemple décrit en texte, projet « Centre de formation à Thiès » :

- 1 Études : 1.1 Étude des besoins ; 1.2 Conception des plans.
- 2 Financement : 2.1 Recherche de financement.
- 3 Construction : 3.1 Appel d''offres travaux ; 3.2 Travaux.
- 4 Équipement : 4.1 Achat des équipements ; 4.2 Installation.
- 5 Démarrage : 5.1 Recrutement des formateurs ; 5.2 Lancement.

## Fiche 2 : le diagramme de Gantt

Le Gantt représente les tâches en lignes et le temps en colonnes ; chaque tâche est une barre horizontale dont la longueur est proportionnelle à sa durée. Les jalons sont des losanges. Le Gantt est lisible par tous, idéal pour communiquer, mais il montre mal les dépendances complexes : on le combine donc avec le PERT.

Quatre types de liens : fin-début (le plus courant), début-début, fin-fin, début-fin (rare).

## Fiche 3 : le réseau PERT et le chemin critique

Le réseau représente les tâches et leurs antériorités, soit sur les flèches (PERT classique), soit dans des nœuds (méthode des potentiels). Restez cohérent avec la convention de votre cours.

Méthode de calcul (en tableau) :

- Passe avant : début au plus tôt (DTO) d''une tâche = maximum des fins au plus tôt de ses prédécesseurs (0 pour une tâche sans prédécesseur). Fin au plus tôt (FTO) = DTO + durée. La durée du projet = la plus grande FTO.
- Passe arrière : fin au plus tard (FTA) d''une tâche = minimum des débuts au plus tard de ses successeurs (durée du projet pour une tâche finale). Début au plus tard (DTA) = FTA − durée.
- Marge totale (MT) = DTA − DTO : retard maximal possible sans retarder le projet.
- Marge libre (ML) = minimum des DTO des successeurs − FTO : retard possible sans retarder aucun successeur.
- Chemin critique : suite des tâches de marge totale nulle. Tout retard sur une tâche critique retarde le projet entier.

## Exemple complet chiffré (durées en semaines)

Projet « Centre de formation à Thiès » :

- A Étude des besoins : 4 ; aucun prédécesseur.
- B Conception des plans : 6 ; après A.
- C Recherche de financement : 8 ; après A.
- D Appel d''offres travaux : 5 ; après B.
- E Travaux : 12 ; après C et D.
- F Achat des équipements : 6 ; après C.
- G Installation des équipements : 3 ; après E et F.
- H Recrutement des formateurs : 5 ; après C.
- I Lancement : 2 ; après G et H.

Passe avant : A : 0 → 4. B : 4 → 10. C : 4 → 12. D : 10 → 15. E : max(12 ; 15) = 15 → 27. F : 12 → 18. H : 12 → 17. G : max(27 ; 18) = 27 → 30. I : max(30 ; 17) = 30 → 32. Durée du projet : 32 semaines.

Passe arrière : I : 30 → 32. G : 27 → 30. H : FTA 30, DTA 25. E : FTA 27, DTA 15. F : FTA 27, DTA 21. D : FTA 15, DTA 10. C : FTA = min(15 ; 21 ; 25) = 15, DTA 7. B : FTA 10, DTA 4. A : FTA = min(4 ; 7) = 4, DTA 0.

Marges :

- A : MT 0, ML 0.
- B : MT 0, ML 0.
- C : MT 7 − 4 = 3 ; ML = min(15 ; 12 ; 12) − 12 = 0.
- D : MT 0, ML 0.
- E : MT 0, ML 0.
- F : MT 21 − 12 = 9 ; ML = 27 − 18 = 9.
- G : MT 0, ML 0.
- H : MT 25 − 12 = 13 ; ML = 30 − 17 = 13.
- I : MT 0, ML 0.

Chemin critique : A – B – D – E – G – I (4 + 6 + 5 + 12 + 3 + 2 = 32 semaines). Remarquez que C a une marge totale de 3 mais une marge libre nulle : si C prend 2 semaines de retard, F et H démarrent plus tard, mais le projet n''est pas retardé.

## Fiche 4 : les durées probabilistes (PERT à trois estimations)

Quand la durée est incertaine, on demande trois estimations : optimiste (o), la plus probable (m), pessimiste (p). Durée moyenne te = (o + 4m + p) / 6. Écart-type σ = (p − o) / 6. Exemple : o = 2, m = 5, p = 14 semaines. te = (2 + 20 + 14) / 6 = 36 / 6 = 6 semaines ; σ = (14 − 2) / 6 = 2 semaines.

## Points clés

- Passe avant avec le maximum, passe arrière avec le minimum.
- Marge totale nulle = tâche critique ; marge libre ≤ marge totale.

## Exercices pratiques

1. Énoncez la règle des 100 % de la WBS.
2. Citez les quatre types de liens entre tâches.
3. Une tâche a pour estimations o = 4, m = 6, p = 8 jours. Calculez te et σ.
4. Réseau (durées en jours) : A 3 (aucun) ; B 5 (après A) ; C 2 (après A) ; D 4 (après C) ; E 6 (après B et D) ; F 3 (après B). Calculez les dates, les marges et le chemin critique.
5. Dans l''exercice 4, que se passe-t-il si B prend 2 jours de retard ?
6. Cas pratique : l''entreprise fictive Sahel Agro Services organise un salon agricole à Kaolack. Proposez une WBS à deux niveaux comprenant au moins quatre livrables.

## Corrigé

1. La somme du travail des éléments enfants doit représenter exactement 100 % du travail de l''élément parent : rien ne manque, rien n''est en trop.

2. Fin-début, début-début, fin-fin, début-fin.

3. te = (4 + 24 + 8) / 6 = 36 / 6 = 6 jours ; σ = (8 − 4) / 6 ≈ 0,67 jour.

4. Passe avant : A 0 → 3 ; B 3 → 8 ; C 3 → 5 ; D 5 → 9 ; E max(8 ; 9) = 9 → 15 ; F 8 → 11. Durée : 15 jours. Passe arrière : E 9 → 15 ; F DTA 12, FTA 15 ; D DTA 5, FTA 9 ; B FTA = min(9 ; 12) = 9, DTA 4 ; C DTA 3, FTA 5 ; A FTA = min(4 ; 3) = 3, DTA 0. Marges : A 0/0 ; B MT 1, ML = min(9 ; 8) − 8 = 0 ; C 0/0 ; D 0/0 ; E 0/0 ; F MT 4, ML 4. Chemin critique : A – C – D – E (3 + 2 + 4 + 6 = 15 jours).

5. B a une marge totale de 1 jour. Un retard de 2 jours dépasse la marge de 1 jour : le projet est retardé de 1 jour (B finit à 10, E démarre à 10 et finit à 16). Le chemin critique devient A – B – E.

6. Exemple : 1 Organisation (1.1 réservation du site ; 1.2 autorisations) ; 2 Exposants (2.1 prospection ; 2.2 contrats) ; 3 Communication (3.1 affiches et radios locales ; 3.2 réseaux sociaux) ; 4 Logistique (4.1 stands ; 4.2 sécurité ; 4.3 sonorisation) ; 5 Bilan (5.1 enquête de satisfaction ; 5.2 rapport final).', 'texte', 75, false, 30
from public.courses c where c.slug = 'lic-projet-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Outils de planification (WBS, Gantt, PERT) : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Communication et travail en équipe projet : l''essentiel pour l''examen', '## Objectifs

Construire un plan de communication de projet, organiser des réunions efficaces, rédiger un compte rendu, répartir les responsabilités avec une matrice RACI, comprendre la dynamique d''une équipe et gérer les conflits.

## Fiche 1 : pourquoi la communication est vitale

Une grande partie du temps d''un chef de projet est consacrée à communiquer : informer le commanditaire, coordonner l''équipe, rassurer les bénéficiaires, négocier avec les fournisseurs. Les échecs de projets s''expliquent souvent moins par des problèmes techniques que par des malentendus : objectifs mal compris, décisions non transmises, parties prenantes oubliées.

Le schéma classique de la communication comprend un émetteur, un message, un canal, un récepteur et un retour (feedback). Des « bruits » perturbent la transmission : langue (français, wolof, pulaar…), jargon technique, distance, réseau téléphonique instable.

Nombre de canaux de communication dans une équipe de n personnes : n(n − 1) / 2. Avec 5 personnes : 5 × 4 / 2 = 10 canaux ; avec 10 personnes : 10 × 9 / 2 = 45 canaux. Ce calcul montre pourquoi la communication devient plus difficile quand l''équipe grandit.

## Fiche 2 : le plan de communication

Le plan de communication est un tableau qui précise, pour chaque public : quoi communiquer, pourquoi, par quel canal, à quelle fréquence, qui est responsable.

Exemple, projet fictif d''électrification solaire de cinq villages dans la région de Tambacounda :

- Comité de pilotage : avancement, budget, risques ; réunion et rapport ; mensuel ; chef de projet.
- Équipe technique : planning de la semaine, consignes de sécurité ; réunion de chantier ; hebdomadaire ; chef de chantier.
- Populations bénéficiaires : dates des travaux, coupures, formation à l''usage ; assemblée villageoise et radio communautaire ; à chaque étape ; animateur social.
- Bailleur : rapport d''activité et financier ; document écrit ; trimestriel ; chef de projet.

Distinguez communication formelle (rapports, comptes rendus, courriers) et informelle (échanges de couloir, messagerie instantanée). La seconde est utile mais ne remplace pas la trace écrite des décisions.

## Fiche 3 : réunions et comptes rendus

Une réunion efficace a un objectif clair, un ordre du jour envoyé à l''avance, un animateur, un secrétaire et une durée maîtrisée. Les principaux types : réunion de lancement (kick-off), réunion d''avancement, comité de pilotage, revue de fin de phase, réunion de clôture.

Le compte rendu comporte : date, lieu, participants et absents, ordre du jour, points discutés, décisions prises, actions à mener (quoi, qui, pour quand), date de la prochaine réunion. Il est diffusé rapidement, idéalement dans les 48 heures.

## Fiche 4 : la matrice RACI

La matrice RACI attribue à chaque tâche quatre rôles :

- R (Responsible, réalise) : celui qui fait le travail.
- A (Accountable, approuve) : celui qui rend des comptes et valide ; un seul A par tâche.
- C (Consulted, consulté) : celui dont on demande l''avis avant.
- I (Informed, informé) : celui qu''on tient au courant après.

Exemple pour la tâche « Choisir le fournisseur de panneaux » : R = responsable achats, A = chef de projet, C = ingénieur électricien, I = comité de pilotage.

Erreurs fréquentes : plusieurs A sur une tâche, tâche sans R, personne avec trop de R (surcharge).

## Fiche 5 : l''équipe projet et la gestion des conflits

Le modèle de Tuckman décrit cinq étapes de développement d''une équipe : formation (on se découvre), tension (on s''affronte sur les rôles), normalisation (on fixe les règles), performance (on travaille efficacement), dissolution (fin du projet). Le chef de projet adapte son style : directif au début, plus participatif ensuite.

Les sources de conflit dans un projet : priorités, ressources partagées, plannings, choix techniques, personnalités. Cinq attitudes face au conflit : évitement, accommodation (céder), compétition (imposer), compromis (chacun cède une partie), collaboration (chercher ensemble une solution qui satisfait les deux). La collaboration est souvent la meilleure pour les problèmes importants, mais elle prend du temps ; le compromis est utile quand le temps presse.

Le contexte culturel compte : le respect de la hiérarchie et des aînés, l''importance de la palabre et du consensus, le rôle des chefs de village ou des imams dans un projet communautaire. Un chef de projet efficace s''appuie sur ces relais plutôt que de les ignorer.

## Points clés

- Un plan de communication répond à : qui, quoi, pourquoi, comment, quand, par qui.
- Toute décision doit être écrite dans un compte rendu avec un responsable et une échéance.
- RACI : un seul A par tâche.
- Les conflits se gèrent ; ils ne disparaissent pas seuls.

## Exercices pratiques

1. Combien de canaux de communication existe-t-il dans une équipe de 8 personnes ? Et si l''on passe à 12 personnes ?
2. Citez les rubriques obligatoires d''un compte rendu de réunion.
3. Qu''est-ce qui ne va pas dans une matrice RACI où la tâche « valider le budget » a deux A ?
4. Une équipe projet vient de se former ; deux membres se disputent la responsabilité des achats. À quelle étape de Tuckman se trouve l''équipe ? Que doit faire le chef de projet ?
5. Cas pratique : la mutuelle de santé fictive Kër Wér Gi lance une campagne d''adhésion dans trois quartiers de Rufisque. Proposez un plan de communication pour quatre publics.

## Corrigé

1. 8 × 7 / 2 = 28 canaux. 12 × 11 / 2 = 66 canaux, soit 38 canaux de plus.

2. Date, lieu, participants et absents, ordre du jour, points discutés, décisions, actions (quoi, qui, quand), prochaine réunion.

3. Il ne doit y avoir qu''un seul A, c''est-à-dire une seule personne qui rend des comptes ; sinon chacun pense que l''autre décide et la validation risque de ne jamais se faire. Il faut désigner un A unique et passer l''autre en C ou I.

4. Étape de tension. Le chef de projet clarifie les rôles (matrice RACI), écoute les deux personnes, rappelle l''objectif commun et tranche si nécessaire, puis formalise la répartition.

5. Exemple : conseil d''administration de la mutuelle (objectifs, résultats d''adhésion ; réunion ; mensuel ; coordonnateur) ; relais communautaires et délégués de quartier (argumentaire, calendrier ; réunion de formation ; au lancement puis tous les quinze jours ; animateur) ; populations (avantages, cotisation, démarches ; radio communautaire, causeries, porte-à-porte ; pendant toute la campagne ; relais) ; partenaires (structures de santé : conventions, circuit de prise en charge ; courrier et rencontre ; au lancement ; coordonnateur).', 'texte', 60, false, 40
from public.courses c where c.slug = 'lic-projet-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Communication et travail en équipe projet : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Licence 1 en Gestion de projets', '## Présentation

Ce sujet d''entraînement multi-matières n''est pas un sujet officiel. Il reproduit le format d''un examen semestriel de 3 heures. Le barème est indicatif, non officiel. Faites-le d''abord seul, chronomètre en main, puis comparez avec le corrigé.

## Énoncé

Contexte. Le groupement d''intérêt économique fictif Saloum Céréales, basé à Kaolack, veut construire une petite unité de transformation de mil (farine et couscous) pour ses 120 membres. Le GIE a obtenu une promesse de financement d''une ONG partenaire. Vous êtes recruté comme chef de projet.

Partie 1 – Fondamentaux (6 points)

1. Expliquez pourquoi cette initiative est un projet et non une opération. (1 point)
2. Identifiez le maître d''ouvrage, le maître d''œuvre probable et trois parties prenantes. (2 points)
3. Formulez l''objectif principal de façon SMART. (1 point)
4. Citez les phases du cycle de vie et dites dans quelle phase on rédige le cahier des charges. (2 points)

Partie 2 – Planification (9 points)

Les tâches du projet (durées en semaines) :

- A Étude de faisabilité : 2 ; aucune.
- B Choix et commande des machines : 4 ; après A.
- C Aménagement du bâtiment : 3 ; après A.
- D Livraison et installation des machines : 5 ; après B.
- E Formation des opératrices : 2 ; après C.
- F Essais et démarrage : 4 ; après D et E.

5. Calculez les dates au plus tôt et au plus tard, les marges totales et libres. (5 points)
6. Donnez le chemin critique et la durée du projet. (2 points)
7. La durée de D est incertaine : o = 3, m = 5, p = 7. Calculez la durée moyenne et l''écart-type. (2 points)

Partie 3 – Communication et équipe (5 points)

8. Proposez une matrice RACI pour les tâches B, E et F, avec les acteurs : chef de projet, présidente du GIE, technicien fournisseur, formatrice. (3 points)
9. Les membres du GIE se plaignent de ne pas être informés de l''avancement. Proposez deux actions concrètes. (2 points)

## Corrigé détaillé

1. Il s''agit d''un effort temporaire (début : décision du GIE ; fin : démarrage de l''unité), unique (une unité nouvelle) et soumis à des contraintes de coût, de délai et de qualité. La production quotidienne de farine qui suivra sera, elle, une opération.

2. Maître d''ouvrage : le GIE Saloum Céréales (il exprime le besoin et réceptionnera l''unité). Maître d''œuvre : le fournisseur-installateur des machines et l''artisan ou l''entreprise chargés du bâtiment. Parties prenantes : l''ONG partenaire (financeur), les membres du GIE, les services techniques compétents (hygiène, agriculture), les clients commerçants, la commune.

3. Exemple : « Mettre en service, dans un délai de 15 semaines, une unité capable de transformer au moins 500 kg de mil par jour en farine et couscous conformes aux règles d''hygiène, pour un budget ne dépassant pas l''enveloppe accordée. »

4. Initialisation, cadrage et planification, exécution, suivi et maîtrise, clôture. Le cahier des charges est rédigé lors du cadrage et de la planification, avant l''exécution.

5. Passe avant : A 0 → 2 ; B 2 → 6 ; C 2 → 5 ; D 6 → 11 ; E 5 → 7 ; F max(11 ; 7) = 11 → 15. Durée : 15 semaines.

Passe arrière : F : DTA 11, FTA 15. D : FTA 11, DTA 6. E : FTA 11, DTA 9. B : FTA 6, DTA 2. C : FTA 9, DTA 6. A : FTA = min(2 ; 6) = 2, DTA 0.

Marges : A MT 0, ML 0 ; B MT 0, ML 0 ; C MT 6 − 2 = 4, ML = 5 − 5 = 0 ; D MT 0, ML 0 ; E MT 9 − 5 = 4, ML = 11 − 7 = 4 ; F MT 0, ML 0.

6. Chemin critique : A – B – D – F, soit 2 + 4 + 5 + 4 = 15 semaines.

7. te = (3 + 4 × 5 + 7) / 6 = 30 / 6 = 5 semaines ; σ = (7 − 3) / 6 ≈ 0,67 semaine. La durée moyenne est inchangée : le planning reste à 15 semaines, mais D étant critique, son incertitude est un risque pour la date de fin.

8. Exemple :

- B Choix et commande des machines : R chef de projet ; A présidente du GIE ; C technicien fournisseur ; I formatrice.
- E Formation des opératrices : R formatrice ; A chef de projet ; C technicien fournisseur ; I présidente.
- F Essais et démarrage : R technicien fournisseur ; A chef de projet ; C formatrice ; I présidente.

Toute répartition cohérente avec un seul A par tâche est acceptée.

9. Une assemblée d''information mensuelle avec un point d''avancement simple (photos, planning affiché en wolof et en français) ; un groupe de messagerie animé par une déléguée, avec un message hebdomadaire validé par le chef de projet.

## Barème indicatif, non officiel

Partie 1 : 6 points ; partie 2 : 9 points (dont 5 pour le tableau complet et juste) ; partie 3 : 5 points. Une présentation claire, en tableau, est valorisée.

## Exercices pratiques

1. Dans le sujet, si C prend 3 semaines de retard, le projet est-il retardé ?
2. Et si E prend 5 semaines de retard ?
3. Combien de canaux de communication y a-t-il entre les 4 acteurs de la question 8 ?
4. Quelle est la différence entre marge totale et marge libre, en une phrase ?

## Corrigé

1. Non : la marge totale de C est 4 semaines. En revanche, sa marge libre est nulle, donc E sera décalée de 3 semaines (E finira à 10 au lieu de 7), toujours sans retarder F qui démarre à 11.

2. E a une marge totale de 4 semaines : un retard de 5 semaines retarde le projet de 1 semaine (fin à 16 semaines).

3. 4 × 3 / 2 = 6 canaux.

4. La marge totale est le retard admissible sans retarder la fin du projet ; la marge libre est le retard admissible sans retarder le début au plus tôt d''aucun successeur.', 'texte', 90, false, 50
from public.courses c where c.slug = 'lic-projet-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Licence 1 en Gestion de projets');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Fondamentaux du management de projet', '## Fiche du cours vidéo

Durée : 1h30. Public : étudiants de Licence 1 en gestion de projets. Objectifs : définir un projet et ses composantes, décrire le cycle de vie, identifier les acteurs, analyser les parties prenantes, rédiger une note de cadrage et connaître le contenu d''un cahier des charges. Matériel : tableau blanc, diaporama, feuilles pour le quiz. Prérequis : aucun, sinon la lecture de la leçon « Fondamentaux du management de projet ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour à toutes et à tous. Pendant une heure et demie, nous allons poser les fondations de tout ce que vous ferez en gestion de projets. Si ces bases sont solides, la planification, les coûts et les risques des années suivantes seront beaucoup plus faciles. Notre fil rouge sera un projet fictif : la construction d''un marché couvert par la commune de Thiès. À l''écran, je vous montre le plan de la séance : définitions, cycle de vie, acteurs, parties prenantes, cadrage, cahier des charges, puis quiz et évaluation finale.

## 05:00 – 15:00 · Qu''est-ce qu''un projet ?

Commençons par une question : la vente quotidienne de pain dans une boulangerie de la Médina, est-ce un projet ? Réfléchissez dix secondes. Non : c''est une activité répétitive, une opération. En revanche, ouvrir une deuxième boulangerie à Mbour est un projet. Pourquoi ? Parce que c''est temporaire, il y a un début et une fin ; c''est unique, on n''ouvre pas cette boutique tous les jours ; et c''est contraint, on a un budget, un délai, une qualité à atteindre.

Retenez la définition : un projet est un effort temporaire et unique entrepris pour atteindre un objectif précis dans des contraintes de coût, de délai et de qualité. Je dessine maintenant le triangle : un sommet coût, un sommet délai, un sommet qualité ou périmètre. Si la mairie de Thiès veut le marché trois mois plus tôt, que se passe-t-il ? Il faudra plus d''ouvriers ou des heures supplémentaires : le coût augmente. Tout est lié.

Vocabulaire : un livrable est un résultat vérifiable, par exemple le plan d''architecte ou le bâtiment. Un jalon est un événement sans durée, par exemple « signature du contrat ». Une tâche consomme du temps et des ressources.

## 15:00 – 27:00 · Le cycle de vie

Je trace une flèche découpée en cinq blocs. Premier bloc : l''initialisation. La commune constate que les commerçants vendent au bord de la route, dans de mauvaises conditions. Elle étudie l''opportunité et désigne un chef de projet. Deuxième bloc : le cadrage et la planification, où l''on fixe objectifs, périmètre, budget, planning. Troisième bloc : l''exécution, les travaux. Quatrième : le suivi et la maîtrise, qui court en parallèle de l''exécution ; on mesure, on compare, on corrige. Cinquième : la clôture, avec la réception, le bilan et les leçons apprises.

Entre chaque bloc, je dessine un losange : c''est un point de décision. Le commanditaire peut dire « on continue », « on ajuste » ou « on arrête ». Arrêter un mauvais projet tôt n''est pas un échec, c''est une bonne gestion de l''argent public. Les grands référentiels internationaux, comme le guide PMBOK ou PRINCE2, insistent tous sur ces points de contrôle, même si leurs découpages diffèrent.

## 27:00 – 40:00 · Les acteurs

Qui fait quoi dans le marché de Thiès ? Le maître d''ouvrage, c''est la commune : elle exprime le besoin, elle paie, elle réceptionne. Le maître d''œuvre, c''est le bureau d''études qui conçoit et l''entreprise de BTP qui construit. Le chef de projet coordonne. Le comité de pilotage, présidé par exemple par le maire ou son adjoint, valide les grandes étapes.

Piège classique à l''examen : confondre maître d''ouvrage et maître d''œuvre. Moyen mnémotechnique : l''ouvrage, c''est ce qu''on veut avoir ; l''œuvre, c''est le travail pour le faire. Celui qui veut l''ouvrage est le maître d''ouvrage ; celui qui fait l''œuvre est le maître d''œuvre.

## 40:00 – 50:00 · Analyse des parties prenantes

Les parties prenantes sont toutes les personnes ou organisations concernées. Pour le marché : commerçants, clients, riverains, transporteurs, services d''hygiène, sapeurs-pompiers, bailleur éventuel. Je dessine une matrice : en abscisse l''intérêt, en ordonnée le pouvoir. En haut à droite, pouvoir fort et intérêt fort : on gère de près, par exemple le bailleur. En bas à droite, pouvoir faible et intérêt fort : on informe, par exemple les commerçants… mais attention, des commerçants organisés en association peuvent bloquer le projet ; leur pouvoir n''est donc pas si faible. L''analyse doit être honnête et mise à jour.

## 50:00 – 58:00 · Pause et quiz interactif

Faisons une pause active. Prenez une feuille et répondez en trois minutes.

Question 1 : la paie mensuelle d''une entreprise est-elle un projet ? Question 2 : qui est le maître d''ouvrage dans la construction d''un forage financé et commandé par une communauté rurale ? Question 3 : un jalon a-t-il une durée ? Question 4 : citez les trois sommets du triangle des contraintes.

Corrigeons. 1 : non, c''est une opération répétitive. 2 : la communauté rurale. 3 : non, un jalon a une durée nulle. 4 : coût, délai, qualité ou périmètre. Si vous avez quatre bonnes réponses, bravo ; sinon, notez la notion à revoir.

## 58:00 – 1:10:00 · Le cadrage et la note de cadrage

Le cadrage répond à six questions : pourquoi, quoi, qui, quand, combien, comment. Appliquons au marché. Pourquoi : améliorer l''hygiène et la sécurité des commerçants, augmenter les recettes communales. Quoi : un marché de 200 cantines avec toilettes, point d''eau et éclairage ; hors périmètre : la voirie autour. Qui : commune, bureau d''études, entreprise, association des commerçants. Quand : études en six mois, travaux en douze mois. Combien : un budget estimatif par poste avec une provision pour imprévus. Comment : démarche, principaux risques et parades.

L''objectif doit être SMART. Je vous propose de corriger ensemble cet objectif : « Construire un beau marché ». Ce n''est ni mesurable ni daté. Version SMART : « Livrer un marché couvert de 200 cantines conformes au cahier des charges, au plus tard le 31 décembre, dans la limite du budget voté. »

Exercice commenté : la coopérative fictive Ndiambour Lait prévoit 4 500 000 FCFA d''équipements, 2 800 000 FCFA d''aménagement et 700 000 FCFA de formation. Sous-total : 8 000 000 FCFA. Avec 10 % d''imprévus : 800 000 FCFA, soit un budget de 8 800 000 FCFA. Les erreurs typiques : oublier la provision, ou l''appliquer à un seul poste.

## 1:10:00 – 1:20:00 · Le cahier des charges

Le cahier des charges fonctionnel exprime ce que le produit doit faire, pas comment le faire. Pour le marché, une fonction : « permettre aux commerçants de stocker leurs marchandises en sécurité la nuit ». Critère : fermeture des cantines. Niveau : porte métallique avec cadenas pour chaque cantine. On ajoute les contraintes, comme le budget, les délais, les normes d''accessibilité, et les modalités de réception.

Un bon cahier des charges évite le célèbre problème du « ce n''est pas ce que nous voulions » à la livraison. Il sert aussi de base à l''appel d''offres.

Correction commentée d''un exercice de TD. Énoncé : pour un logiciel de gestion des stocks d''une pharmacie de Kaolack, formulez deux fonctions avec critère et niveau. Une copie a écrit : « Le logiciel doit être rapide et utiliser une base de données moderne. » Deux erreurs : « rapide » n''a ni critère ni niveau, et « base de données moderne » impose une solution technique au lieu d''exprimer un besoin. Correction proposée. Fonction 1 : alerter le pharmacien en cas de rupture ; critère : délai d''alerte ; niveau : dès que le stock passe sous le seuil défini pour chaque produit. Fonction 2 : suivre les dates de péremption ; critère : anticipation ; niveau : liste des produits périmant dans les 60 jours, éditable chaque semaine. Voyez la différence : on dit ce que l''outil doit permettre, et comment on vérifiera à la réception que c''est bien le cas.

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Résumons. Un projet est temporaire, unique et contraint. Il suit un cycle de vie en cinq phases avec des points de décision. Le maître d''ouvrage veut l''ouvrage, le maître d''œuvre le réalise. Les parties prenantes s''analysent selon le pouvoir et l''intérêt. Le cadrage répond à six questions et fixe un objectif SMART. Le cahier des charges exprime le besoin en fonctions.

Évaluation finale, cinq questions.

1. Donnez la définition d''un projet. Réponse : un effort temporaire et unique pour atteindre un objectif dans des contraintes de coût, de délai et de qualité.
2. Quelle phase se déroule en parallèle de l''exécution ? Réponse : le suivi et la maîtrise.
3. Où classer, dans la matrice pouvoir/intérêt, un bailleur qui finance 80 % du projet ? Réponse : pouvoir fort, intérêt fort, à gérer de près.
4. Que contient la rubrique « hors périmètre » d''une note de cadrage ? Réponse : ce que le projet ne réalisera pas, pour éviter les malentendus.
5. Un budget de 6 000 000 FCFA avec 5 % d''imprévus donne quel total ? Réponse : 6 000 000 + 300 000 = 6 300 000 FCFA.

Merci pour votre attention. Pour la prochaine séance, rédigez la note de cadrage d''un projet de votre quartier.', 'video', 90, false, 60
from public.courses c where c.slug = 'lic-projet-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Fondamentaux du management de projet');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Outils de planification (WBS, Gantt, PERT)', '## Fiche du cours vidéo

Durée : 1h30. Public : Licence 1 gestion de projets. Objectifs : construire une WBS, un Gantt et un réseau PERT, calculer les dates, les marges et le chemin critique, utiliser les durées probabilistes. Matériel : tableau, diaporama, papier quadrillé, calculatrice, tableur facultatif. Prérequis : notions de projet, tâche, livrable et jalon.

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Bonjour. Aujourd''hui, nous faisons la séance qui rapporte le plus de points à l''examen : la planification. Un exercice de PERT bien présenté, c''est souvent un tiers de la note. Notre fil rouge : l''entreprise fictive Teranga Events organise un festival culturel à Saint-Louis. Plan de la séance : WBS, Gantt, réseau, calcul des dates, marges, chemin critique, quiz, exercices et évaluation.

## 05:00 – 15:00 · La WBS

Avant de planifier, il faut savoir quoi planifier. La WBS découpe le projet en livrables puis en lots de travail. Je l''écris au tableau sous forme d''arbre. Niveau 0 : Festival. Niveau 1 : programmation artistique, site et logistique, communication, billetterie, bilan. Niveau 2 pour la logistique : scène, sonorisation, sécurité, restauration.

Règle des 100 % : si j''additionne les lots de niveau 2 d''une branche, je dois retrouver toute la branche, pas plus. Si j''oublie la sécurité, ma WBS est incomplète et le jour J sera dangereux. Un lot de travail doit pouvoir être estimé et confié à un responsable : « organiser le festival » est trop large ; « louer la sonorisation » est un bon lot.

## 15:00 – 25:00 · Le diagramme de Gantt

Je trace un tableau : les tâches en lignes, les semaines en colonnes. Chaque tâche est une barre. Les jalons, comme « contrat avec les artistes signé », sont des losanges. Le Gantt est parfait pour communiquer avec le comité ou les partenaires, car tout le monde le comprend. Mais regardez : quand j''ai vingt tâches, je ne vois plus quelles tâches dépendent de quelles autres. C''est pourquoi on calcule d''abord avec le réseau PERT, puis on dessine le Gantt.

Conseil pratique : sur le Gantt, coloriez en rouge les barres des tâches critiques, que nous allons apprendre à identifier, et laissez apparaître les marges sous forme de barre en pointillés après les tâches non critiques. Le Gantt devient alors un véritable outil de pilotage : chaque lundi, vous tracez une ligne verticale à la date du jour et vous voyez immédiatement quelles tâches sont en retard. Sur tableur, une simple mise en forme conditionnelle suffit pour produire ce graphique.

Les liens : fin-début, le plus courant ; début-début, par exemple la communication commence en même temps que la billetterie ; fin-fin, par exemple la décoration doit finir quand la scène finit.

## 25:00 – 42:00 · Calcul du réseau : passe avant et passe arrière

Passons au calcul avec l''exemple du centre de formation de Thiès, que vous avez dans votre leçon. Tâches en semaines : A 4 ; B 6 après A ; C 8 après A ; D 5 après B ; E 12 après C et D ; F 6 après C ; G 3 après E et F ; H 5 après C ; I 2 après G et H.

Passe avant, je remplis la colonne début au plus tôt. A commence à 0, finit à 4. B commence à 4, finit à 10. C commence à 4, finit à 12. D commence à 10, finit à 15. E attend C et D : je prends le maximum entre 12 et 15, donc 15, et E finit à 27. F : 12 à 18. H : 12 à 17. G attend E et F : maximum de 27 et 18, donc 27, fin à 30. I attend G et H : maximum de 30 et 17, donc 30, fin à 32. Le projet dure 32 semaines.

Passe arrière, je pars de la fin avec le minimum. I doit finir à 32, donc commencer au plus tard à 30. G finit au plus tard à 30, commence à 27. H finit au plus tard à 30, commence à 25. E finit à 27, commence à 15. F finit à 27, commence à 21. D finit à 15, commence à 10. C a trois successeurs, E, F et H, qui commencent au plus tard à 15, 21 et 25 : je prends le minimum, 15 ; C commence au plus tard à 7. B finit à 10, commence à 4. A a deux successeurs, B et C, qui commencent au plus tard à 4 et 7 : minimum 4, donc A commence à 0. Tout est cohérent : on retombe sur 0.

## 42:00 – 50:00 · Marges et chemin critique

La marge totale est la différence entre début au plus tard et début au plus tôt. A, B, D, E, G et I ont une marge nulle : c''est le chemin critique, 4 + 6 + 5 + 12 + 3 + 2 = 32. C a une marge totale de 3, F de 9, H de 13.

La marge libre se calcule avec les successeurs : plus petit début au plus tôt des successeurs moins fin au plus tôt de la tâche. Pour C : successeurs E, F, H avec débuts au plus tôt 15, 12 et 12 ; minimum 12 ; 12 − 12 = 0. C a donc une marge totale de 3 mais une marge libre nulle. Si C glisse d''une semaine, la fin du projet ne bouge pas, mais F et H sont décalés. Pour F : 27 − 18 = 9. Pour H : 30 − 17 = 13.

## 50:00 – 57:00 · Pause et quiz interactif

Trois questions, deux minutes. Un : dans la passe avant, maximum ou minimum ? Deux : peut-on avoir une marge libre plus grande que la marge totale ? Trois : si une tâche critique prend deux semaines de retard, combien de retard pour le projet ?

Réponses : un, le maximum ; deux, non, la marge libre est toujours inférieure ou égale à la marge totale ; trois, deux semaines, si rien n''est fait pour rattraper.

## 57:00 – 1:07:00 · Durées probabilistes

Dans un pays où la saison des pluies peut bloquer un chantier, une durée unique est souvent illusoire. Le PERT probabiliste demande trois estimations. Exemple : o = 2, m = 5, p = 14 semaines. La moyenne pondérée vaut (2 + 4 × 5 + 14) / 6 = 36 / 6 = 6 semaines, et l''écart-type (14 − 2) / 6 = 2 semaines. Remarquez que la moyenne, 6, est supérieure à la valeur la plus probable, 5, parce que le pessimiste tire vers le haut. Dans la vie réelle, les retards sont plus fréquents que les avances.

## 1:07:00 – 1:20:00 · Correction commentée d''exercice

Prenons l''exercice 4 de votre leçon : A 3 ; B 5 après A ; C 2 après A ; D 4 après C ; E 6 après B et D ; F 3 après B. Faites-le seuls cinq minutes, puis corrigeons.

Passe avant : A 0 à 3 ; B 3 à 8 ; C 3 à 5 ; D 5 à 9 ; E maximum de 8 et 9, soit 9 à 15 ; F 8 à 11. Durée 15 jours. Passe arrière : E 9 à 15 ; F 12 à 15 ; D 5 à 9 ; B : successeurs E et F débutant au plus tard à 9 et 12, minimum 9, donc B de 4 à 9 ; C de 3 à 5 ; A : minimum de 4 et 3, soit 3, donc A de 0 à 3. Chemin critique : A, C, D, E. B a une marge totale de 1 jour et une marge libre de 0. F a 4 et 4.

L''erreur que je vois le plus souvent dans les copies : prendre le maximum dans la passe arrière. Si vous trouvez un début au plus tard négatif pour la première tâche, c''est le signal d''une erreur.

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Résumé : WBS pour découper, réseau pour calculer, Gantt pour communiquer. Passe avant avec le maximum, passe arrière avec le minimum. Marge totale nulle signifie tâche critique.

Évaluation finale :

1. Que dit la règle des 100 % ? Réponse : les éléments enfants représentent exactement tout le travail du parent.
2. Une tâche a un début au plus tôt de 6 et un début au plus tard de 9. Quelle est sa marge totale ? Réponse : 3.
3. Tâche avec o = 4, m = 6, p = 14. Durée moyenne ? Réponse : (4 + 24 + 14) / 6 = 7.
4. Pourquoi combiner Gantt et PERT ? Réponse : le PERT calcule les dépendances et le chemin critique, le Gantt communique visuellement le planning.
5. Une tâche de marge totale 5 prend 7 jours de retard. Effet sur le projet ? Réponse : 2 jours de retard, toutes choses égales par ailleurs.

Bon travail, et faites un réseau par jour jusqu''à l''examen.', 'video', 90, false, 70
from public.courses c where c.slug = 'lic-projet-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Outils de planification (WBS, Gantt, PERT)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Communication et travail en équipe projet', '## Fiche du cours vidéo

Durée : 1h30. Public : Licence 1 gestion de projets. Objectifs : expliquer le rôle de la communication dans le projet, bâtir un plan de communication, conduire une réunion et rédiger un compte rendu, construire une matrice RACI, comprendre la dynamique d''équipe et gérer un conflit. Matériel : tableau, diaporama, fiches de jeu de rôle. Prérequis : notions d''acteurs et de parties prenantes.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture

Bonjour à tous. On pense souvent que la gestion de projets, ce sont des plannings et des budgets. Mais demandez à un chef de projet expérimenté de Dakar ou d''Abidjan comment il passe ses journées : il vous dira qu''il parle, écoute, écrit, négocie. Aujourd''hui, notre fil rouge est un projet fictif d''électrification solaire de cinq villages de la région de Tambacounda, porté par une ONG avec une équipe de huit personnes.

## 05:00 – 15:00 · Les bases de la communication

Je dessine le schéma : émetteur, message, canal, récepteur, retour. Entre l''émetteur et le récepteur, je dessine des éclairs : ce sont les bruits. Dans notre projet, quels bruits ? La langue, car beaucoup de villageois parlent pulaar ou mandinka ; le jargon technique, « onduleur », « kilowatt-crête » ; le réseau téléphonique faible ; la distance avec le siège à Dakar. Le retour est essentiel : si vous ne vérifiez pas que le message a été compris, vous ne savez pas s''il a été reçu.

Calcul utile : le nombre de canaux dans une équipe de n personnes vaut n(n − 1)/2. Notre équipe de 8 personnes : 8 × 7 / 2 = 28 canaux. Si l''on recrute 4 personnes de plus, 12 × 11 / 2 = 66. Plus de deux fois plus de canaux pour 50 % de personnes en plus. D''où l''intérêt de structurer la communication.

## 15:00 – 30:00 · Le plan de communication

Le plan de communication est un tableau avec six colonnes : public, contenu, objectif, canal, fréquence, responsable. Construisons-le ensemble pour le projet solaire.

Le comité de pilotage : avancement, budget, risques ; pour décider ; réunion plus rapport écrit ; mensuel ; chef de projet. L''équipe technique : planning de la semaine et sécurité ; pour coordonner ; réunion de chantier ; hebdomadaire ; chef de chantier. Les populations : dates des travaux, formation à l''usage, tarifs ; pour obtenir l''adhésion ; assemblée villageoise, radio communautaire, en langue locale ; à chaque étape ; animateur social. Le bailleur : rapport d''activité et financier ; pour rendre compte ; rapport écrit ; trimestriel ; chef de projet.

Notez l''importance des relais traditionnels : chef de village, notables, imams, associations de femmes. Une assemblée sous l''arbre à palabres avec le chef de village peut être plus efficace qu''une affiche.

Deuxième point : adaptez le message au public. Le comité de pilotage veut des chiffres et des décisions à prendre : trois pages maximum, avec un résumé en tête. Les villageois veulent savoir ce qui va changer pour eux : quand l''électricité arrivera, combien ils paieront, qui contacter en cas de panne. Le bailleur veut des preuves : indicateurs, photos, justificatifs. Un même fait, « le chantier a deux semaines de retard », se dira différemment à chacun : au comité, avec la cause et le plan de rattrapage ; aux villageois, avec la nouvelle date et des excuses ; au bailleur, avec l''impact sur le calendrier des décaissements.

## 30:00 – 42:00 · Réunions et comptes rendus

Une réunion coûte cher. Huit personnes pendant deux heures, c''est seize heures de travail. Elle doit donc être préparée : objectif, ordre du jour envoyé à l''avance, animateur, secrétaire, heure de fin respectée.

Le compte rendu fixe les décisions. Rubriques : date, lieu, présents et absents, ordre du jour, points discutés, décisions, actions avec responsable et échéance, prochaine réunion. Je vous montre à l''écran un mauvais compte rendu : « On a parlé des panneaux. Il faut avancer. » Qui fait quoi ? Pour quand ? Personne ne sait. Version correcte : « Décision : commande de 40 panneaux auprès du fournisseur retenu. Action : Moussa envoie le bon de commande avant vendredi 12. »

Quelques règles d''animation que je vous conseille. Commencez à l''heure, même si tout le monde n''est pas là : sinon vous récompensez les retardataires. Rappelez l''objectif en une phrase. Donnez la parole à chacun, y compris aux plus jeunes ou aux plus timides, qui hésitent parfois à contredire un aîné. Notez les sujets hors ordre du jour dans un « parking » pour une prochaine réunion. Terminez en relisant à voix haute les décisions et les actions : c''est le moment où l''on découvre les malentendus. Pour les réunions à distance, avec des collègues sur le terrain, vérifiez la connexion avant et envoyez les documents à l''avance, car beaucoup suivront depuis un téléphone.

## 42:00 – 50:00 · Pause et quiz interactif

Cinq minutes de quiz à main levée. Question 1 : combien de canaux pour 6 personnes ? Question 2 : un compte rendu doit-il mentionner les absents ? Question 3 : le canal le plus adapté pour informer des villageois non alphabétisés ? Question 4 : quelle différence entre communication formelle et informelle ?

Réponses : 1, 6 × 5 / 2 = 15 ; 2, oui ; 3, l''oral, assemblée villageoise ou radio communautaire en langue locale ; 4, la formelle est organisée et laisse une trace écrite, l''informelle est spontanée.

## 50:00 – 1:02:00 · La matrice RACI

Prenons trois tâches : choisir le fournisseur de panneaux ; installer les kits ; former les comités de gestion villageois. Quatre acteurs : chef de projet, responsable achats, ingénieur électricien, animateur social.

Choisir le fournisseur : R responsable achats, A chef de projet, C ingénieur, I animateur. Installer les kits : R ingénieur, A chef de projet, C responsable achats, I animateur. Former les comités : R animateur, A chef de projet, C ingénieur, I responsable achats.

Contrôles : chaque tâche a un R et un seul A. Lisez aussi la matrice en colonne : si une personne a des R partout, elle est surchargée. Ici, le chef de projet est A partout : c''est normal dans une petite équipe, mais il pourrait déléguer l''approbation de la formation à un responsable social expérimenté.

## 1:02:00 – 1:15:00 · Dynamique d''équipe et conflits

Le modèle de Tuckman : formation, tension, normalisation, performance, dissolution. Au début, chacun est poli ; puis vient la tension, les désaccords sur les rôles ; ensuite on fixe des règles ; puis l''équipe devient performante ; enfin elle se dissout à la clôture. Le chef de projet est plutôt directif au début et devient plus délégatif.

Jeu de rôle commenté. Situation : l''ingénieur veut installer d''abord dans le plus gros village ; l''animateur social veut commencer par le village le plus enclavé, qui a été promis en premier. Cinq attitudes possibles. L''évitement : on reporte, le chantier prend du retard. L''accommodation : l''un cède, mais garde de la rancœur. La compétition : le chef de projet impose. Le compromis : on coupe l''équipe en deux. La collaboration : on cherche ensemble ; par exemple, on commence par le village enclavé pour tenir la promesse, mais avec une équipe renforcée pour ne pas perdre de temps, et l''on explique la décision au grand village. Discutez en binôme : quelle solution choisiriez-vous et pourquoi ? Retenez que la collaboration demande du temps et de la confiance ; elle est réservée aux enjeux importants. Pour un désaccord mineur, sur la couleur des tee-shirts du projet par exemple, le compromis ou même l''accommodation suffisent.

## 1:15:00 – 1:23:00 · Correction commentée d''un exercice

Exercice : la mutuelle de santé fictive Kër Wér Gi lance une campagne d''adhésion à Rufisque. Proposez un plan de communication pour quatre publics. Correction : conseil d''administration, réunion mensuelle avec les chiffres d''adhésion ; relais de quartier, formation au lancement puis réunion tous les quinze jours ; populations, radio communautaire, causeries et porte-à-porte pendant toute la campagne ; structures de santé partenaires, courrier et rencontre pour expliquer le circuit de prise en charge. Les copies qui obtiennent tous les points précisent toujours le responsable et la fréquence.

## 1:23:00 – 1:30:00 · Synthèse et évaluation finale

À retenir : communiquer, c''est vérifier que le message est compris ; le plan de communication organise qui informe qui, de quoi, comment et quand ; toute décision s''écrit ; RACI avec un seul A ; les conflits se gèrent, de préférence par la collaboration quand l''enjeu est important.

Évaluation finale :

1. Combien de canaux dans une équipe de 10 personnes ? Réponse : 10 × 9 / 2 = 45.
2. Citez les six colonnes d''un plan de communication. Réponse : public, contenu, objectif, canal, fréquence, responsable.
3. Que signifie le A de RACI ? Réponse : celui qui approuve et rend des comptes ; un seul par tâche.
4. Quelle est la deuxième étape du modèle de Tuckman ? Réponse : la tension.
5. Quand le compromis est-il préférable à la collaboration ? Réponse : quand le temps presse et que l''enjeu est modéré.

Merci et à bientôt.', 'video', 90, false, 80
from public.courses c where c.slug = 'lic-projet-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Communication et travail en équipe projet');

-- Cours : Gestion de projets Licence 2 : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'lic-projet-l2', (select id from public.levels where name = 'Licence 2'), null, 'Gestion de projets', 'Gestion de projets Licence 2 : réussir ses examens', 'Ce cours prépare les examens de deuxième année de Licence en gestion de projets : gestion des coûts et du budget (estimation, suivi, valeur acquise), gestion des risques et de la qualité, méthodes agiles (Scrum, Kanban). Fiches, exercices chiffrés corrigés, sujet type et trois cours vidéo de 1h30 accompagnent la révision. Prérequis : les bases de la Licence 1 (cycle de vie, WBS, PERT).', true, 312
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Licence 2 en Gestion de projets', '## Objectifs de la leçon

Comprendre ce qui change en deuxième année de Licence, connaître les matières clés et le type d''épreuves, adopter une méthode de révision adaptée aux exercices chiffrés et aux études de cas, et suivre un plan de révision de six semaines.

## Rappel : la Licence 2 dans le système LMD

La Licence 2 correspond aux semestres 3 et 4 du parcours LMD. Comme en première année, les enseignements sont regroupés en unités d''enseignement (UE) qui donnent des crédits, eux-mêmes composés d''éléments constitutifs (EC). Le nombre de crédits, les coefficients, les règles de compensation, de rattrapage et de passage en Licence 3 dépendent de chaque université ou école : le règlement des études de votre établissement fait foi. Un conseil : vérifiez dès la rentrée si vous avez des UE de Licence 1 non validées à rattraper, car elles s''ajoutent à votre charge de travail.

## Ce qui change par rapport à la Licence 1

En Licence 1, vous avez appris à définir, cadrer et planifier un projet. En Licence 2, on passe à la maîtrise : combien coûte le projet et comment suivre ce coût, quels événements peuvent le faire dérailler et comment garantir la qualité du résultat, et comment travailler autrement quand le besoin évolue sans cesse, avec les méthodes agiles. Les exercices deviennent plus chiffrés et les cas pratiques plus proches des situations réelles des entreprises, ONG et administrations de la sous-région.

## Les matières clés de la Licence 2

- Gestion des coûts et budget : méthodes d''estimation (analogique, paramétrique, ascendante, à trois points), construction du budget, réserves, courbe en S, suivi des dépenses et méthode de la valeur acquise (indicateurs CV, SV, CPI, SPI, EAC, ETC, VAC, TCPI).
- Gestion des risques et de la qualité : identification, matrice probabilité-impact, valeur monétaire attendue, stratégies de réponse, registre des risques ; plan qualité, coût de la qualité, outils (Pareto, Ishikawa, roue de Deming).
- Méthodes agiles : valeurs et principes, Scrum (rôles, événements, artefacts), Kanban (visualisation, limitation du travail en cours, flux), vélocité, burndown, user stories.

Ces matières s''appuient sur la Licence 1 : impossible de calculer une valeur acquise sans WBS ni planning. Revoyez donc rapidement le PERT et le Gantt avant de commencer. Les autres matières de votre maquette (comptabilité analytique, statistiques, droit, anglais, informatique) comptent aussi dans votre moyenne, mais ne sont pas traitées ici.

## Les types d''épreuves en Licence 2

- Exercice chiffré de valeur acquise : à partir d''un tableau de lots (budget, avancement prévu, avancement réel, coût réel), calculer et interpréter les indicateurs. C''est un grand classique.
- Exercice d''estimation : calculer un coût par la méthode paramétrique ou à trois points, construire un budget avec réserves.
- Étude de cas risques : à partir d''un texte, identifier les risques, les coter, calculer la valeur monétaire attendue et proposer des réponses.
- Questions de cours et QCM sur Scrum et Kanban : rôles, durée des événements, définition de « terminé ».
- Question de réflexion : « Les méthodes agiles sont-elles adaptées aux projets de construction ? »
- Projet tutoré : par exemple, piloter en Scrum le développement d''une petite application pour une association étudiante.

## Méthode de révision

Pour la valeur acquise, apprenez les formules par cœur, mais surtout leur sens. CPI = EV / AC : combien de valeur produite pour 1 FCFA dépensé. SPI = EV / PV : quelle part du travail prévu a été réalisée. Un indice inférieur à 1 est défavorable, supérieur à 1 favorable. Les écarts (CV, SV) négatifs sont défavorables. Si vous retenez cette logique, vous retrouverez toujours les formules.

Pour les risques, entraînez-vous à transformer un texte en registre : cause, événement, conséquence. Pour l''agile, faites une fiche comparative Scrum / Kanban / approche prédictive.

Présentez toujours vos calculs avec la formule, l''application numérique, le résultat avec son unité (FCFA, millions de FCFA, semaines) et une phrase d''interprétation. Une valeur sans interprétation perd des points.

## Plan de révision sur six semaines

- Semaine 1 : rappels de L1 (WBS, PERT) et estimation des coûts. Trois exercices d''estimation.
- Semaine 2 : budget, courbe en S, valeur acquise. Un exercice complet chaque jour.
- Semaine 3 : risques (registre, matrice, valeur monétaire attendue) et qualité (Pareto, Ishikawa, coût de la qualité).
- Semaine 4 : agile (Scrum, Kanban, vélocité, burndown, loi de Little).
- Semaine 5 : études de cas multi-matières et questions de réflexion.
- Semaine 6 : deux sujets types en 3 heures, correction, révision des fiches, repos la veille.

## Points clés

- La Licence 2 passe de la planification à la maîtrise : coûts, risques, qualité, agilité.
- La valeur acquise est l''exercice incontournable : formules, calcul, interprétation.
- Le règlement des études de votre établissement fixe les crédits et les règles de passage.

## Exercices pratiques

1. Citez les trois matières clés de la Licence 2 et un outil de chacune.
2. Que signifie un CPI de 0,9 ? Et un SPI de 1,1 ?
3. Pourquoi faut-il revoir le PERT de Licence 1 avant d''étudier la valeur acquise ?
4. Transformez la phrase suivante en risque structuré (cause, événement, conséquence) : « Il pleut beaucoup en août à Ziguinchor. »
5. Cas pratique : Ibrahima a une UE de Licence 1 à rattraper et travaille comme stagiaire deux après-midi par semaine. Construisez son plan de révision de six semaines.

## Corrigé

1. Coûts et budget : la valeur acquise. Risques et qualité : la matrice probabilité-impact ou le diagramme de Pareto. Méthodes agiles : le Scrum avec le sprint, ou le tableau Kanban.

2. CPI de 0,9 : pour 1 FCFA dépensé, le projet n''a produit que 0,90 FCFA de valeur ; il y a dépassement de coût. SPI de 1,1 : le projet a réalisé 110 % du travail prévu à cette date ; il est en avance.

3. La valeur acquise compare le travail réalisé au travail planifié. Il faut donc une WBS (pour découper le budget par lot) et un planning (pour savoir ce qui devait être fait à chaque date).

4. Cause : fortes pluies d''août à Ziguinchor. Événement : arrêt ou ralentissement des travaux de terrassement. Conséquence : retard de plusieurs semaines et surcoût de main-d''œuvre.

5. Exemple : réserver les matinées des jours de stage et les autres journées complètes à la révision. Semaine 1 : UE de L1 à rattraper et rappels de PERT ; semaine 2 : coûts et valeur acquise ; semaine 3 : risques et qualité ; semaine 4 : agile ; semaine 5 : cas multi-matières et nouvelle séance sur l''UE de L1 ; semaine 6 : sujets types. L''important est de prévoir explicitement du temps pour l''UE à rattraper et des entraînements en conditions réelles.', 'texte', 50, true, 10
from public.courses c where c.slug = 'lic-projet-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Licence 2 en Gestion de projets');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Gestion des coûts et budget : l''essentiel pour l''examen', '## Objectifs

Estimer les coûts d''un projet avec les principales méthodes, construire un budget avec ses réserves, suivre les dépenses et maîtriser la méthode de la valeur acquise (EVM) : calcul et interprétation des indicateurs.

## Fiche 1 : les méthodes d''estimation

- Estimation analogique : on s''appuie sur un projet passé comparable. Rapide mais imprécise. Exemple : « Le dernier forage a coûté 18 millions de FCFA ; celui-ci devrait coûter à peu près autant. »
- Estimation paramétrique : on multiplie une quantité par un coût unitaire issu de données historiques. Exemple : 2 500 m² de bureaux à 180 000 FCFA le m² = 450 000 000 FCFA.
- Estimation ascendante (bottom-up) : on estime chaque lot de travail de la WBS puis on additionne. Plus longue mais plus précise.
- Estimation à trois points : coût moyen = (O + 4M + P) / 6, avec O optimiste, M le plus probable, P pessimiste ; écart-type = (P − O) / 6.

## Fiche 2 : construire le budget

Le budget regroupe les coûts directs (main-d''œuvre affectée au projet, matériaux, équipements, sous-traitance) et une part de coûts indirects (loyer, direction, informatique), répartis selon une clé choisie par l''organisation.

On ajoute ensuite deux réserves :

- La réserve pour aléas (ou provision pour risques connus, contingence) : elle couvre les risques identifiés ; elle fait partie du budget de référence géré par le chef de projet.
- La réserve de management : elle couvre l''imprévisible ; elle est gérée par la direction et ne fait pas partie du budget de référence.

Budget à l''achèvement (BAC) = budget de référence du travail prévu. Le budget total du projet = budget de référence + réserve de management.

La courbe en S représente le budget cumulé dans le temps : les dépenses démarrent lentement, s''accélèrent en pleine exécution, puis ralentissent à la fin. Elle sert de référence pour le suivi.

## Fiche 3 : la valeur acquise (EVM)

Trois grandeurs, à une date d''état donnée :

- PV (valeur planifiée) : budget du travail qui devait être réalisé à cette date.
- EV (valeur acquise) : budget du travail réellement réalisé = BAC × pourcentage d''avancement réel.
- AC (coût réel) : ce qui a été effectivement dépensé pour ce travail.

Indicateurs :

- Écart de coût CV = EV − AC (négatif : dépassement).
- Écart de délai SV = EV − PV (négatif : retard).
- Indice de performance des coûts CPI = EV / AC.
- Indice de performance des délais SPI = EV / PV.
- Estimation à l''achèvement EAC = BAC / CPI si la performance actuelle se maintient. Si l''écart est jugé exceptionnel (atypique) : EAC = AC + (BAC − EV).
- Reste à dépenser ETC = EAC − AC.
- Écart à l''achèvement VAC = BAC − EAC.
- Indice de performance à achever TCPI = (BAC − EV) / (BAC − AC) : performance nécessaire sur le reste du projet pour respecter le BAC.

## Exemple complet chiffré

L''ONG fictive Jàmm Santé construit un centre de santé à Kolda. BAC = 120 millions de FCFA, durée prévue 12 mois. À la fin du mois 6 : PV = 60 M ; avancement réel 41,67 %, soit EV = 50 M ; AC = 58 M.

- CV = 50 − 58 = −8 M : dépassement de 8 millions.
- SV = 50 − 60 = −10 M : retard équivalent à 10 millions de travail.
- CPI = 50 / 58 ≈ 0,862 : 1 FCFA dépensé ne produit que 0,86 FCFA de valeur.
- SPI = 50 / 60 ≈ 0,833 : seulement 83 % du travail prévu est réalisé.
- EAC = 120 / 0,862… = 120 × 58 / 50 = 139,2 M.
- ETC = 139,2 − 58 = 81,2 M.
- VAC = 120 − 139,2 = −19,2 M : dépassement prévisible de 19,2 millions.
- EAC si l''écart est atypique = 58 + (120 − 50) = 128 M.
- TCPI = (120 − 50) / (120 − 58) = 70 / 62 ≈ 1,129 : il faudrait désormais produire 1,13 FCFA de valeur par FCFA dépensé, ce qui est peu réaliste quand on tourne à 0,86.

Interprétation : le projet est en retard et en dépassement. Le chef de projet doit analyser les causes (prix des matériaux, productivité, erreurs d''estimation), présenter une nouvelle estimation au comité et proposer des actions : renégociation, réduction du périmètre non essentiel, mobilisation de la réserve.

## Points clés

- EV est toujours calculée avec le budget, jamais avec les dépenses.
- Écarts négatifs et indices inférieurs à 1 : situation défavorable.
- EAC = BAC / CPI est l''hypothèse la plus utilisée à l''examen ; précisez toujours l''hypothèse retenue.

## Exercices pratiques

1. Une école de 12 salles de classe est estimée par méthode paramétrique à 9 500 000 FCFA par salle. Calculez le coût, puis le budget avec une réserve pour aléas de 10 %.
2. Un lot a pour estimations O = 8 M, M = 10 M, P = 18 M de FCFA. Calculez le coût moyen et l''écart-type.
3. Budget d''un projet de formation : 3 formateurs pendant 6 mois à 400 000 FCFA par mois et par formateur ; matériel 5 000 000 FCFA ; coûts indirects 15 % des coûts directs ; réserve pour aléas 5 % du sous-total. Calculez le budget de référence.
4. Projet (BAC = 120 M) à la fin du mois 5, par lot (budget ; avancement prévu ; avancement réel ; coût réel) : gros œuvre 50 M ; 100 % ; 80 % ; 42 M. Électricité 20 M ; 50 % ; 30 % ; 7 M. Équipements 30 M ; 30 % ; 10 % ; 6 M. Formation 20 M ; 0 % ; 0 % ; 0. Calculez PV, EV, AC, puis CV, SV, CPI, SPI, EAC, VAC et TCPI.
5. Interprétez les résultats de l''exercice 4 et proposez deux actions.
6. Cas pratique : quelle est la différence entre réserve pour aléas et réserve de management ? Qui décide de leur utilisation ?

## Corrigé

1. 12 × 9 500 000 = 114 000 000 FCFA. Réserve : 11 400 000 FCFA. Budget : 125 400 000 FCFA.

2. Coût moyen = (8 + 40 + 18) / 6 = 66 / 6 = 11 M de FCFA. Écart-type = (18 − 8) / 6 ≈ 1,67 M de FCFA.

3. Main-d''œuvre : 3 × 6 × 400 000 = 7 200 000. Coûts directs : 7 200 000 + 5 000 000 = 12 200 000. Indirects : 12 200 000 × 15 % = 1 830 000. Sous-total : 14 030 000. Réserve : 14 030 000 × 5 % = 701 500. Budget de référence : 14 731 500 FCFA.

4. PV = 50 + 10 + 9 + 0 = 69 M. EV = 40 + 6 + 3 + 0 = 49 M. AC = 42 + 7 + 6 + 0 = 55 M. CV = 49 − 55 = −6 M. SV = 49 − 69 = −20 M. CPI = 49 / 55 ≈ 0,891. SPI = 49 / 69 ≈ 0,710. EAC = 120 / 0,891 ≈ 134,7 M (exactement 120 × 55 / 49 ≈ 134,69). VAC ≈ 120 − 134,7 = −14,7 M. TCPI = 71 / 65 ≈ 1,092.

5. Le retard est très important (seulement 71 % du travail prévu) et le coût dépasse de 11 % environ. Le gros œuvre, en retard et le plus coûteux, explique l''essentiel. Actions : renforcer l''équipe du gros œuvre sur le chemin critique, négocier les prix des équipements, revoir le planning avec le comité de pilotage.

6. La réserve pour aléas couvre les risques identifiés ; elle est incluse dans le budget de référence et utilisée par le chef de projet selon les règles fixées. La réserve de management couvre les événements non identifiés ; elle est hors budget de référence et son utilisation est décidée par la direction ou le commanditaire.', 'texte', 75, false, 20
from public.courses c where c.slug = 'lic-projet-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Gestion des coûts et budget : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Gestion des risques et de la qualité : l''essentiel pour l''examen', '## Objectifs

Identifier, analyser et traiter les risques d''un projet, calculer une valeur monétaire attendue, tenir un registre des risques ; définir la qualité, connaître le coût de la qualité et utiliser les outils Pareto, Ishikawa et PDCA.

## Fiche 1 : qu''est-ce qu''un risque ?

Un risque est un événement incertain qui, s''il se produit, a un effet sur au moins un objectif du projet (coût, délai, qualité, périmètre). Le risque peut être négatif (menace) ou positif (opportunité). Un problème, lui, est un risque qui s''est déjà réalisé.

Formulation recommandée en trois parties : « En raison de [cause], [événement] peut survenir, ce qui entraînerait [conséquence]. » Exemple : « En raison de la saison des pluies, les routes vers le chantier peuvent devenir impraticables, ce qui entraînerait un retard de livraison des matériaux. »

## Fiche 2 : le processus de gestion des risques

- Planifier : définir l''approche, les échelles de cotation, les responsabilités.
- Identifier : remue-méninges, retours d''expérience, listes de contrôle, entretiens avec les experts.
- Analyser qualitativement : coter la probabilité (P) et l''impact (I), par exemple de 1 à 5 ; criticité = P × I. On place les risques dans une matrice : zone rouge (criticité élevée), orange, verte.
- Analyser quantitativement : valeur monétaire attendue (VMA) = probabilité × impact financier. Pour une opportunité, la VMA vient en déduction.
- Planifier les réponses. Menaces : éviter (modifier le plan pour supprimer le risque), transférer (assurance, sous-traitance, clause contractuelle), atténuer (réduire probabilité ou impact), accepter (active avec réserve, ou passive). Opportunités : exploiter, partager, améliorer, accepter.
- Surveiller : mettre à jour le registre à chaque comité, suivre les déclencheurs, identifier les nouveaux risques.

Le registre des risques contient, pour chaque risque : identifiant, description, cause, catégorie, probabilité, impact, criticité, réponse, responsable (propriétaire du risque), échéance, statut.

## Exemple chiffré : VMA et réserve pour aléas

Projet fictif d''adduction d''eau dans le département de Matam :

- R1 : hausse du prix des tuyaux ; probabilité 30 % ; impact 20 M FCFA ; VMA = 6 M.
- R2 : effondrement d''une tranchée nécessitant de reprendre un tronçon ; probabilité 10 % ; impact 50 M ; VMA = 5 M.
- R3 : retard de dédouanement des pompes entraînant des pénalités ; probabilité 50 % ; impact 4 M ; VMA = 2 M.
- O1 (opportunité) : remise fournisseur si commande groupée ; probabilité 20 % ; gain 10 M ; VMA = −2 M.

VMA totale = 6 + 5 + 2 − 2 = 11 M de FCFA. C''est une base raisonnable pour dimensionner la réserve pour aléas.

## Fiche 3 : la qualité dans le projet

La qualité est l''aptitude du livrable à satisfaire les exigences : conformité au cahier des charges et adéquation à l''usage. Plus de fonctionnalités n''est pas plus de qualité : c''est la « classe » ou le « grade ».

- Planifier la qualité : plan qualité (normes applicables, critères d''acceptation, responsabilités, contrôles prévus).
- Assurance qualité : vérifier que les processus sont bien appliqués (audits) ; elle prévient.
- Contrôle qualité : vérifier les livrables (inspections, essais, mesures) ; il détecte.

Le coût de la qualité se décompose en quatre familles :

- Prévention : formation, procédures, conception soignée.
- Évaluation : essais, inspections, audits.
- Défaillances internes : rebuts, reprises avant livraison.
- Défaillances externes : réparations après livraison, garanties, perte de réputation.

Exemple : prévention 2 M, évaluation 3 M, défaillances internes 6 M, défaillances externes 9 M. Coût total de la qualité : 20 M, dont 15 M (75 %) dus aux défaillances. Investir davantage en prévention serait rentable.

## Fiche 4 : les outils de la qualité

- Diagramme de Pareto : classer les causes de non-qualité par fréquence décroissante et repérer les quelques causes qui expliquent la majorité des problèmes (principe dit « 80/20 », qui est une tendance et non une loi exacte).
- Diagramme d''Ishikawa (causes-effet ou arête de poisson) : l''effet à droite, les causes rangées en familles, les « 5 M » : main-d''œuvre, matériel, méthode, matière, milieu.
- Roue de Deming (PDCA) : planifier (Plan), réaliser (Do), vérifier (Check), agir (Act), puis recommencer pour l''amélioration continue.

Exemple Pareto : réception de 10 salles de classe, 100 défauts relevés : fissures 42, peinture 25, menuiserie 18, électricité 9, plomberie 6. Fissures et peinture représentent 67 % des défauts ; avec la menuiserie, 85 %. On commence donc par traiter les fissures (analyse Ishikawa du dosage du béton, de la cure, de la qualité du sable).

## Points clés

- Risque = événement incertain ; problème = risque réalisé.
- Criticité = P × I ; VMA = probabilité × impact financier.
- Quatre réponses aux menaces : éviter, transférer, atténuer, accepter.
- Le coût de la non-qualité dépasse souvent celui de la prévention.

## Exercices pratiques

1. Distinguez risque et problème avec un exemple.
2. Formulez en trois parties le risque suivant : « Le fournisseur de panneaux solaires est en difficulté financière. »
3. Coter (P, I de 1 à 5) et calculer la criticité : R1 P = 4, I = 3 ; R2 P = 2, I = 5 ; R3 P = 5, I = 1. Classez-les.
4. Calculez la VMA totale : R1 25 % × 12 M ; R2 40 % × 5 M ; opportunité 10 % × 6 M.
5. Pour chaque risque, proposez une réponse et nommez la stratégie : (a) vol de matériel sur le chantier ; (b) incendie de l''entrepôt ; (c) utilisation d''une technologie non maîtrisée par l''équipe.
6. Cas pratique : une entreprise fictive de BTP à Touba relève sur ses chantiers 60 défauts d''étanchéité, 25 de carrelage, 10 de peinture, 5 divers. Construisez le Pareto (pourcentages cumulés) et proposez un plan d''action avec le PDCA.

## Corrigé

1. Risque : « Le fournisseur pourrait livrer en retard. » Problème : « Le fournisseur a livré avec trois semaines de retard. »

2. « En raison des difficultés financières du fournisseur, celui-ci pourrait ne pas livrer les panneaux à la date prévue, ce qui retarderait l''installation et le démarrage du service. »

3. R1 : 12 ; R2 : 10 ; R3 : 5. Ordre : R1, R2, R3. Attention : R2 a un impact maximal ; même si sa criticité est inférieure, il mérite un plan de réponse.

4. 3 + 2 − 0,6 = 4,4 M de FCFA.

5. (a) Atténuer : gardiennage, clôture, stockage sécurisé. (b) Transférer : assurance ; on peut aussi atténuer avec des extincteurs. (c) Éviter : choisir une technologie éprouvée, ou atténuer : former l''équipe et recruter un expert.

6. Total 100. Étanchéité 60 % (cumul 60 %) ; carrelage 25 % (85 %) ; peinture 10 % (95 %) ; divers 5 % (100 %). Priorité : l''étanchéité. Plan : analyser les causes avec Ishikawa et fixer un objectif de réduction (Plan) ; former les équipes et changer de produit sur un chantier pilote (Do) ; mesurer les défauts après trois mois (Check) ; généraliser si les résultats sont bons et passer au carrelage (Act).', 'texte', 70, false, 30
from public.courses c where c.slug = 'lic-projet-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Gestion des risques et de la qualité : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Méthodes agiles (Scrum, Kanban) : l''essentiel pour l''examen', '## Objectifs

Comprendre les valeurs agiles, décrire Scrum (rôles, événements, artefacts), utiliser Kanban, calculer une vélocité, lire un burndown chart, appliquer la loi de Little et rédiger des user stories.

## Fiche 1 : pourquoi l''agilité ?

L''approche prédictive (dite « en cascade ») fixe le périmètre au départ et enchaîne les phases. Elle convient quand le besoin est stable et bien connu, comme la construction d''un pont. L''approche agile livre le produit par petits incréments, avec des retours fréquents du client. Elle convient quand le besoin est incertain ou évolue, comme le développement d''une application de paiement mobile.

Le Manifeste agile, publié en 2001 par des praticiens du logiciel, énonce quatre valeurs : les individus et leurs interactions plus que les processus et les outils ; des logiciels opérationnels plus qu''une documentation exhaustive ; la collaboration avec le client plus que la négociation contractuelle ; l''adaptation au changement plus que le suivi d''un plan. Les éléments de droite gardent de la valeur, mais ceux de gauche sont privilégiés.

Le triangle est inversé : en prédictif, le périmètre est fixe et le coût et le délai s''ajustent ; en agile, le délai (sprints) et l''équipe sont fixes, et c''est le périmètre livré qui s''ajuste selon les priorités.

## Fiche 2 : Scrum

Scrum est un cadre de travail léger, décrit dans un guide public. Il repose sur trois piliers : transparence, inspection, adaptation.

Trois responsabilités :

- Product Owner : maximise la valeur du produit, gère et ordonne le Product Backlog.
- Scrum Master : aide l''équipe à appliquer Scrum, lève les obstacles.
- Developers : l''équipe qui réalise l''incrément (pas seulement des informaticiens).

Cinq événements :

- Le Sprint : période fixe d''un mois au maximum (souvent deux semaines), qui contient tous les autres événements.
- Sprint Planning : on choisit ce qui sera fait et comment.
- Daily Scrum : point quotidien de 15 minutes maximum, pour inspecter l''avancement vers l''objectif du sprint.
- Sprint Review : présentation de l''incrément aux parties prenantes et adaptation du backlog.
- Sprint Retrospective : l''équipe améliore sa façon de travailler.

Trois artefacts : le Product Backlog (liste ordonnée de tout ce qui pourrait être fait), le Sprint Backlog (ce qui est retenu pour le sprint et le plan pour le réaliser), l''Incrément (résultat utilisable). La définition de « terminé » (Definition of Done) précise quand un élément est réellement fini.

## Fiche 3 : user stories, estimation et vélocité

Une user story s''écrit : « En tant que [utilisateur], je veux [action] afin de [bénéfice]. » Exemple : « En tant que commerçante du marché Sandaga, je veux consulter mon solde par SMS afin de suivre mes ventes sans connexion internet. » Une bonne story est indépendante, négociable, porteuse de valeur, estimable, petite et testable (critères INVEST).

On estime souvent en points d''effort relatifs. La priorisation peut suivre la méthode MoSCoW : Must have, Should have, Could have, Won''t have this time.

La vélocité est le nombre de points réellement terminés par sprint. Exemple : sprints de deux semaines, vélocités 18, 22 et 20 points. Vélocité moyenne : 60 / 3 = 20 points. S''il reste 140 points au backlog : 140 / 20 = 7 sprints, soit 14 semaines. C''est une prévision, pas un engagement.

## Fiche 4 : le burndown chart

Le burndown montre le travail restant (en points) en fonction du temps. La droite idéale va du total au début à zéro à la fin. Exemple : sprint de 10 jours, 40 points ; rythme idéal 4 points par jour. Au jour 5, l''idéal est 40 − 20 = 20 points restants. Si l''équipe a encore 24 points, elle a 4 points de retard : on en parle au Daily Scrum, et l''on peut renégocier le contenu avec le Product Owner sans compromettre l''objectif du sprint.

## Fiche 5 : Kanban

Kanban est une méthode de gestion du flux : on visualise le travail sur un tableau (par exemple « À faire / En cours / En test / Terminé »), on limite le travail en cours (WIP) par colonne, on mesure et améliore le flux. Il n''y a pas de sprints imposés ni de rôles prescrits.

Loi de Little : délai moyen de traversée = travail en cours moyen / débit moyen. Exemple : le service client d''une microfinance fictive à Thiès a 12 dossiers en cours en moyenne et en traite 3 par jour ; délai moyen = 12 / 3 = 4 jours. Pour réduire le délai à 2 jours sans augmenter le débit, il faut ramener le travail en cours à 6 dossiers.

## Points clés

- Agile : livraisons incrémentales, retours fréquents, périmètre ajustable.
- Scrum : 3 responsabilités, 5 événements, 3 artefacts, sprint d''un mois maximum.
- Vélocité moyenne pour prévoir ; burndown pour suivre ; WIP limité en Kanban.

## Exercices pratiques

1. Citez les quatre valeurs du Manifeste agile.
2. Qui ordonne le Product Backlog ? Quelle est la durée maximale du Daily Scrum ?
3. Vélocités de quatre sprints de trois semaines : 25, 30, 26, 27 points. Backlog restant : 162 points. Combien de sprints et de semaines faut-il prévoir ?
4. Sprint de 10 jours, 50 points. Au jour 6, il reste 26 points. L''équipe est-elle en avance ou en retard ?
5. Une équipe Kanban a un débit de 5 tâches par semaine et 15 tâches en cours. Calculez le délai moyen. Que faire pour le réduire ?
6. Rédigez deux user stories pour une application de réservation de places dans les bus interurbains.
7. Cas pratique : la start-up fictive Xaalis Tech (Dakar) développe une application de tontine en ligne. Le client change souvent d''avis. Justifiez le choix de Scrum et décrivez l''organisation du premier sprint.

## Corrigé

1. Individus et interactions plus que processus et outils ; logiciels opérationnels plus que documentation exhaustive ; collaboration avec le client plus que négociation contractuelle ; adaptation au changement plus que suivi d''un plan.

2. Le Product Owner. 15 minutes.

3. Vélocité moyenne = 108 / 4 = 27 points. 162 / 27 = 6 sprints, soit 18 semaines.

4. Rythme idéal : 5 points par jour. Au jour 6, l''idéal est 50 − 30 = 20 points restants. Il en reste 26 : retard de 6 points.

5. 15 / 5 = 3 semaines. Réduire le travail en cours (limite WIP plus basse), éliminer les blocages, ou augmenter le débit.

6. « En tant que voyageur, je veux réserver ma place depuis mon téléphone afin de ne pas attendre à la gare routière. » « En tant que gestionnaire de la compagnie, je veux voir le taux de remplissage de chaque départ afin d''ajuster le nombre de bus. »

7. Le besoin est incertain et évolutif : Scrum permet de livrer toutes les deux semaines et d''ajuster. Organisation : Product Owner côté client ou start-up, Scrum Master, équipe de développeurs. Sprint Planning : objectif « un utilisateur peut créer une tontine et inviter des membres » ; stories retenues selon la vélocité estimée ; Daily Scrum chaque matin ; Review avec quelques utilisatrices pilotes ; Retrospective en fin de sprint.', 'texte', 70, false, 40
from public.courses c where c.slug = 'lic-projet-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Méthodes agiles (Scrum, Kanban) : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Licence 2 en Gestion de projets', '## Présentation

Sujet d''entraînement multi-matières, non officiel, conçu pour une épreuve de 3 heures. Barème indicatif, non officiel. Calculatrice autorisée. Travaillez-le en conditions réelles avant de lire le corrigé.

## Énoncé

Contexte. La société fictive Baobab Digital, basée à Dakar, réalise pour une collectivité un projet de numérisation de l''état civil, avec deux volets : un volet « infrastructure » (équipement des centres, réseau) et un volet « application » (logiciel de saisie et de recherche des actes). Budget du projet : 80 millions de FCFA. Durée prévue : 10 mois.

Partie 1 – Valeur acquise (8 points)

À la fin du mois 4 : valeur planifiée 32 M ; avancement réel 35 % ; coût réel 35 M.

1. Calculez EV, CV, SV, CPI et SPI. (3 points)
2. Calculez EAC (hypothèse : la performance de coût se maintient), ETC et VAC. (2 points)
3. Calculez le TCPI et commentez. (1 point)
4. Calculez l''EAC si l''on considère que le dépassement est exceptionnel. (1 point)
5. Rédigez une note de trois lignes au comité de pilotage. (1 point)

Partie 2 – Risques et qualité (6 points)

Risques identifiés : R1 panne prolongée du réseau électrique dans certains centres (probabilité 25 %, impact 12 M) ; R2 départ du développeur principal (probabilité 40 %, impact 5 M).

6. Calculez la VMA totale. (1 point)
7. Proposez une réponse pour chaque risque et nommez la stratégie. (2 points)
8. Lors des tests, on relève 80 anomalies : erreurs de saisie des noms 36, lenteurs 20, doublons 16, autres 8. Établissez le Pareto et indiquez les priorités. (3 points)

Partie 3 – Agilité (6 points)

Le volet « application » est mené en Scrum, sprints de 3 semaines. Vélocités : 25, 30, 26, 27 points. Reste : 162 points.

9. Combien de sprints et de semaines restent nécessaires ? (2 points)
10. Expliquez pourquoi une approche mixte (prédictive pour l''infrastructure, agile pour l''application) est pertinente. (2 points)
11. Citez les cinq événements Scrum. (2 points)

## Corrigé détaillé

1. EV = 80 × 35 % = 28 M. CV = 28 − 35 = −7 M (dépassement). SV = 28 − 32 = −4 M (retard). CPI = 28 / 35 = 0,80. SPI = 28 / 32 = 0,875.

2. EAC = 80 / 0,80 = 100 M. ETC = 100 − 35 = 65 M. VAC = 80 − 100 = −20 M.

3. TCPI = (80 − 28) / (80 − 35) = 52 / 45 ≈ 1,156. Il faudrait produire 1,16 FCFA de valeur par FCFA dépensé jusqu''à la fin, alors que la performance actuelle est de 0,80 : respecter le budget initial est irréaliste sans action forte (réduction de périmètre, renégociation) ; il faut demander une révision du budget.

4. EAC = AC + (BAC − EV) = 35 + (80 − 28) = 87 M.

5. Exemple : « À fin mois 4, le projet a réalisé 35 % du travail pour 35 M dépensés (CPI 0,80, SPI 0,875). Si la tendance se poursuit, le coût final atteindrait 100 M (dépassement de 20 M). Nous proposons une revue des causes et un plan d''économies au prochain comité. »

6. R1 : 0,25 × 12 = 3 M ; R2 : 0,40 × 5 = 2 M ; total 5 M.

7. R1 : atténuer (onduleurs et petits kits solaires dans les centres concernés) ou transférer partiellement (clause avec le prestataire d''énergie). R2 : atténuer (documentation du code, binômage, revue de code croisée, prime de fidélisation).

8. Pourcentages : saisie des noms 45 % (cumul 45 %) ; lenteurs 25 % (70 %) ; doublons 20 % (90 %) ; autres 10 % (100 %). Priorités : les erreurs de saisie des noms puis les lenteurs, qui représentent 70 % des anomalies. Pistes : contrôles de saisie, listes de prénoms et noms usuels, formation des agents.

9. Vélocité moyenne = (25 + 30 + 26 + 27) / 4 = 27. 162 / 27 = 6 sprints, soit 6 × 3 = 18 semaines.

10. L''infrastructure a un périmètre stable et connu (nombre de centres, équipements) : une planification prédictive convient. L''application dépend des retours des agents d''état civil, dont les besoins se précisent en voyant le logiciel : livrer par incréments réduit le risque de produire un outil inadapté.

11. Le Sprint, le Sprint Planning, le Daily Scrum, la Sprint Review, la Sprint Retrospective.

## Barème indicatif, non officiel

Partie 1 : 8 points ; partie 2 : 6 points ; partie 3 : 6 points. Chaque calcul : formule, application numérique, résultat, interprétation.

## Exercices pratiques

1. Dans le sujet, à combien de mois de travail correspond approximativement l''écart de délai, si le budget est consommé de façon régulière (8 M par mois prévus) ?
2. Avec un SPI de 0,875 maintenu, quelle serait la durée estimée du projet ?
3. Quelle est la criticité d''un risque coté P = 3, I = 4 ?
4. Que signifie un TCPI inférieur à 1 ?

## Corrigé

1. SV = −4 M ; 4 / 8 = 0,5 mois de retard environ.

2. Durée estimée ≈ 10 / 0,875 ≈ 11,4 mois. C''est une approximation : le SPI tend vers 1 en fin de projet et doit être complété par l''analyse du chemin critique.

3. 3 × 4 = 12.

4. Le reste du projet peut être réalisé avec une performance de coût inférieure à 1 tout en respectant le budget : la situation est confortable.', 'texte', 90, false, 50
from public.courses c where c.slug = 'lic-projet-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Licence 2 en Gestion de projets');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Gestion des coûts et budget', '## Fiche du cours vidéo

Durée : 1h30. Public : Licence 2 gestion de projets. Objectifs : maîtriser les méthodes d''estimation, construire un budget avec réserves, lire une courbe en S, calculer et interpréter les indicateurs de la valeur acquise. Matériel : tableau, diaporama, calculatrice, tableur facultatif. Prérequis : WBS et planning (Licence 1).

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Bonjour à toutes et à tous. Question d''ouverture : un chef de projet vous dit « J''ai dépensé la moitié du budget à mi-parcours, tout va bien ». A-t-il raison ? Gardez votre réponse en tête : à la fin de la séance, vous saurez pourquoi cette phrase ne prouve rien. Notre fil rouge : le centre de santé de Kolda construit par l''ONG fictive Jàmm Santé, budget 120 millions de FCFA, 12 mois.

## 05:00 – 17:00 · Les méthodes d''estimation

Quatre méthodes. L''analogique : « le dernier centre de santé nous a coûté 110 millions, celui-ci coûtera à peu près autant ». C''est rapide, utile au stade de l''idée, mais dangereux si les projets diffèrent : le terrain, l''accès, les prix ont changé. La paramétrique : on multiplie une quantité par un coût unitaire. 600 m² à 150 000 FCFA le m² : 90 millions. Plus précise si le ratio est fiable. L''ascendante : on part des lots de la WBS, on estime chaque lot, on additionne. C''est la plus précise, mais il faut une WBS détaillée. Enfin, l''estimation à trois points : coût moyen égal à optimiste plus quatre fois probable plus pessimiste, le tout divisé par six.

Exemple : un lot de toiture, optimiste 8 millions, probable 10, pessimiste 18. Moyenne : 8 + 40 + 18 = 66, divisé par 6 = 11 millions. Écart-type : 18 moins 8, divisé par 6, environ 1,67 million. On retient 11 et non 10 : la méthode intègre le risque de dépassement.

Deux pièges très concrets en Afrique de l''Ouest. Premier piège : les équipements importés. Si le fournisseur de matériel médical facture en euros, convertissez avec la parité fixe : 1 euro vaut 655,957 FCFA. Un échographe à 30 000 euros coûte donc 19 678 710 FCFA, mais n''oubliez pas le transport, l''assurance, les frais de passage portuaire et les droits éventuels, qui peuvent représenter une part importante du prix ; renseignez-vous auprès d''un transitaire plutôt que d''inventer un pourcentage. Si le fournisseur facture en dollars, le cours varie : prévoyez un risque de change. Deuxième piège : l''inflation des matériaux sur un chantier long. Un devis de ciment établi en janvier n''est plus forcément valable en octobre. Datez toujours vos estimations et indiquez la source des prix unitaires.

## 17:00 – 30:00 · Construire le budget

Le budget contient les coûts directs et une part de coûts indirects. Ensuite, deux réserves. Je dessine une pile : en bas, les estimations des lots ; au-dessus, la réserve pour aléas qui couvre les risques identifiés ; l''ensemble forme le budget de référence, appelé BAC. Tout en haut, la réserve de management, pour l''imprévisible, gardée par la direction. Le budget total est la somme de tout.

Correction commentée de l''exercice 3 de la leçon : trois formateurs, six mois, 400 000 FCFA par mois chacun : 7,2 millions. Matériel : 5 millions. Directs : 12,2 millions. Indirects à 15 % : 1,83 million. Sous-total : 14,03 millions. Réserve de 5 % : 701 500 FCFA. Budget de référence : 14 731 500 FCFA. Erreur fréquente : appliquer les 5 % aux seuls coûts directs. Lisez bien l''énoncé : il dit « du sous-total ».

## 30:00 – 40:00 · La courbe en S

Je trace le budget cumulé en fonction des mois. Au début, études et autorisations : on dépense peu. Puis les travaux : la courbe monte fort. À la fin, finitions et réception : elle s''aplatit. D''où la forme en S. Cette courbe est votre référence, la valeur planifiée cumulée. Revenons à la phrase du début : « j''ai dépensé la moitié du budget à mi-parcours ». Si la courbe prévoyait justement 50 %, les dépenses suivent le plan. Mais a-t-on réalisé la moitié du travail ? On ne le sait pas ! Il manque la troisième grandeur : la valeur acquise.

Regardons un exemple de courbe en S simplifiée pour Kolda, en cumul : mois 2, 6 millions, soit 5 % du budget ; mois 4, 30 millions ; mois 6, 60 millions, la moitié ; mois 8, 90 millions ; mois 10, 108 millions ; mois 12, 120 millions. Remarquez que les mois 1 et 2 ne consomment que 5 % du budget et les mois 11 et 12 seulement 10 % : la forme en S se lit dans les chiffres. Sur le diaporama, je superpose deux courbes : la courbe planifiée en bleu, la courbe des dépenses réelles en orange. L''orange colle au bleu jusqu''au mois 4, puis passe au-dessous. Bonne nouvelle ? Pas forcément : on dépense peut-être moins parce qu''on avance moins. Encore une fois, seule la valeur acquise tranche.

## 40:00 – 48:00 · Pause et quiz interactif

Trois questions, deux minutes. Un : quelle méthode d''estimation utilise la WBS détaillée ? Deux : la réserve de management fait-elle partie du BAC ? Trois : estimation à trois points avec 4, 6 et 14 millions : quel coût moyen ?

Réponses. Un : l''ascendante. Deux : non. Trois : 4 + 24 + 14 = 42, divisé par 6, soit 7 millions.

## 48:00 – 1:05:00 · La valeur acquise : définitions et calculs

Trois grandeurs. PV, la valeur planifiée : ce qu''on aurait dû réaliser, exprimé en budget. EV, la valeur acquise : ce qu''on a réellement réalisé, exprimé en budget. AC, le coût réel : ce qu''on a dépensé.

Kolda, fin du mois 6. PV = 60 millions. Le métreur constate un avancement de 41,67 % : EV = 120 × 0,4167, environ 50 millions. La comptabilité indique AC = 58 millions.

Écart de coût : EV − AC = 50 − 58 = −8 millions. Écart de délai : EV − PV = −10 millions. CPI = 50 / 58 ≈ 0,862. SPI = 50 / 60 ≈ 0,833.

Retenez l''astuce : EV est toujours en premier. Dans les écarts, EV moins quelque chose ; dans les indices, EV divisé par quelque chose. Si le résultat est négatif ou inférieur à 1, c''est mauvais.

Prévisions. EAC = BAC / CPI = 120 × 58 / 50 = 139,2 millions. Reste à dépenser : 139,2 − 58 = 81,2. VAC : 120 − 139,2 = −19,2 millions. Si l''on pense que le dépassement est accidentel, par exemple une hausse ponctuelle du ciment, EAC = 58 + 70 = 128 millions. TCPI = 70 / 62 ≈ 1,13 : il faudrait devenir beaucoup plus efficace qu''aujourd''hui.

## 1:05:00 – 1:18:00 · Correction commentée d''un exercice par lots

Exercice 4 de la leçon. Je construis le tableau à l''écran avec quatre lots. Pour chaque lot : PV = budget × avancement prévu ; EV = budget × avancement réel. Gros œuvre : PV 50, EV 40, AC 42. Électricité : PV 10, EV 6, AC 7. Équipements : PV 9, EV 3, AC 6. Formation : 0, 0, 0. Totaux : PV 69, EV 49, AC 55.

CV = −6 millions ; SV = −20 millions ; CPI ≈ 0,891 ; SPI ≈ 0,710 ; EAC ≈ 134,7 millions ; VAC ≈ −14,7 millions ; TCPI = 71 / 65 ≈ 1,09.

Interprétation : le problème principal est le retard, avec un SPI de 0,71. Le lot gros œuvre, le plus lourd, est en cause. Une analyse par lot permet de cibler l''action : on ne renforce pas toute l''équipe, seulement le lot critique. Remarquez aussi le lot équipements : CPI de 0,5 seulement, car 6 millions dépensés pour 3 millions de valeur. Peut-être des acomptes versés au fournisseur avant livraison : attention à l''interprétation, il faut toujours vérifier les données avant de conclure.

## 1:18:00 – 1:30:00 · Synthèse et évaluation finale

Synthèse : on estime par analogie, paramètre, agrégation ou trois points ; le budget de référence inclut la réserve pour aléas, pas la réserve de management ; la valeur acquise compare le réalisé au planifié et au dépensé ; EV est toujours la référence.

Évaluation finale.

1. BAC 200 M, avancement 30 %, AC 70 M. Calculez EV et CV. Réponse : EV = 60 M ; CV = −10 M.
2. Avec PV = 50 M dans la question 1, calculez le SPI. Réponse : 60 / 50 = 1,2 : avance.
3. Calculez le CPI et l''EAC de la question 1. Réponse : CPI = 60 / 70 ≈ 0,857 ; EAC = 200 × 70 / 60 ≈ 233,3 M.
4. Pourquoi « avoir dépensé la moitié du budget à mi-parcours » ne prouve-t-il rien ? Réponse : il faut connaître la valeur acquise, c''est-à-dire le travail réellement réalisé.
5. Qui décide de l''utilisation de la réserve de management ? Réponse : la direction ou le commanditaire.

Merci, et refaites l''exercice par lots sans regarder la correction.

Un dernier mot sur l''attitude professionnelle. Lorsque vos indicateurs sont mauvais, ne les cachez pas : un comité de pilotage pardonne un dépassement annoncé tôt avec un plan d''action, rarement un dépassement découvert à la fin. Présentez toujours trois éléments : la situation chiffrée, les causes analysées, les options avec leurs conséquences, par exemple réduire le périmètre, demander un complément de budget ou accepter un report de délai.', 'video', 90, false, 60
from public.courses c where c.slug = 'lic-projet-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Gestion des coûts et budget');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Gestion des risques et de la qualité', '## Fiche du cours vidéo

Durée : 1h30. Public : Licence 2 gestion de projets. Objectifs : formuler, coter et traiter des risques, calculer une valeur monétaire attendue, tenir un registre ; définir la qualité, calculer un coût de la qualité, utiliser Pareto, Ishikawa et PDCA. Matériel : tableau, diaporama, post-it, calculatrice. Prérequis : budget et réserves.

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Bonjour. Imaginez que vous dirigez un projet d''adduction d''eau dans le département de Matam. En juillet, la pluie coupe la route, le camion de tuyaux reste bloqué à Ourossogui, le chantier s''arrête. Était-ce imprévisible ? Non : c''était un risque connu, qui aurait dû figurer dans un registre avec une réponse. Aujourd''hui, nous apprenons à anticiper au lieu de subir, puis à garantir la qualité du résultat.

## 05:00 – 15:00 · Définir et formuler un risque

Un risque est un événement incertain qui, s''il survient, affecte un objectif. Il peut être négatif, une menace, ou positif, une opportunité. Un problème est un risque qui s''est réalisé : on ne le gère plus avec le registre des risques mais avec le registre des problèmes.

Formulation en trois parties : en raison de telle cause, tel événement peut survenir, ce qui entraînerait telle conséquence. Exemple au tableau : « En raison de la saison des pluies, la route Ourossogui – chantier peut devenir impraticable, ce qui retarderait la livraison des tuyaux de trois semaines. » Cette précision permet de trouver la bonne réponse : on agit sur la cause, par exemple en livrant avant juillet.

## 15:00 – 30:00 · Identifier et analyser

Atelier post-it : en cinq minutes, chacun écrit trois risques du projet Matam. Je regroupe au tableau par catégories : techniques, financiers, humains, environnementaux, institutionnels. Vous trouvez : hausse du prix des tuyaux, effondrement de tranchée, retard de dédouanement des pompes, conflit foncier avec un propriétaire de champ, départ du conducteur de travaux.

Analyse qualitative : probabilité de 1 à 5, impact de 1 à 5, criticité égale au produit. Je dessine la matrice cinq par cinq : en haut à droite, rouge ; au milieu, orange ; en bas à gauche, vert. Le conflit foncier : probabilité 3, impact 5, criticité 15, zone rouge.

Analyse quantitative : valeur monétaire attendue. R1 hausse des tuyaux : 30 % fois 20 millions = 6 millions. R2 tranchée : 10 % fois 50 millions = 5 millions. R3 dédouanement : 50 % fois 4 millions = 2 millions. Opportunité de remise : 20 % fois 10 millions = 2 millions, à déduire. Total : 11 millions. C''est une base pour la réserve pour aléas vue la dernière fois.

## 30:00 – 42:00 · Répondre et surveiller

Quatre stratégies pour les menaces. Éviter : on change le plan pour que le risque disparaisse, par exemple choisir un tracé qui ne traverse pas le champ contesté. Transférer : on fait porter l''impact financier par un tiers, assurance ou clause dans le contrat du fournisseur. Atténuer : on réduit la probabilité ou l''impact, par exemple blindage des tranchées. Accepter : on ne fait rien de spécial, mais on prévoit une réserve, c''est l''acceptation active.

Pour les opportunités : exploiter, partager, améliorer, accepter. Commande groupée avec un autre projet de l''ONG pour obtenir la remise : c''est partager ou améliorer.

Chaque risque a un propriétaire, une personne nommée et non « l''équipe ». Le registre est revu à chaque comité de pilotage.

Je vous montre une ligne complète du registre à l''écran. Identifiant : R4. Description : en raison d''un désaccord sur les limites d''un champ, un propriétaire peut s''opposer au passage de la canalisation, ce qui bloquerait le chantier sur ce tronçon. Catégorie : institutionnel et foncier. Probabilité : 3. Impact : 5. Criticité : 15. Déclencheur : plainte ou attroupement sur le tracé. Réponse : éviter, en étudiant un tracé alternatif, et atténuer, en organisant dès maintenant une rencontre avec le chef de village, le propriétaire et les services compétents. Propriétaire du risque : l''animateur social. Échéance : avant le démarrage des terrassements. Statut : ouvert.

Notez le déclencheur : c''est le signal qui montre que le risque est en train de se réaliser. Le surveiller permet de réagir avant que le problème ne devienne grave. À chaque comité, on met à jour les cotations, on ferme les risques passés, on ajoute les nouveaux, et l''on suit la consommation de la réserve pour aléas.

## 42:00 – 50:00 · Pause et quiz interactif

Quatre questions. Un : un camion en panne aujourd''hui sur le chantier, risque ou problème ? Deux : souscrire une assurance, quelle stratégie ? Trois : VMA d''un risque de 20 % pour 15 millions ? Quatre : criticité d''un risque P = 2, I = 4 ?

Réponses : problème ; transférer ; 3 millions ; 8.

## 50:00 – 1:02:00 · La qualité et son coût

La qualité, c''est la conformité aux exigences et l''aptitude à l''usage. Une borne-fontaine en marbre n''a pas plus de qualité qu''une borne en béton si les deux répondent au cahier des charges : elle a une classe supérieure, et coûte plus cher.

Assurance qualité et contrôle qualité : l''assurance vérifie les processus, elle prévient ; le contrôle vérifie les produits, il détecte. Exemple : un audit du mode opératoire de soudure des tuyaux, c''est de l''assurance ; un essai de pression sur un tronçon, c''est du contrôle.

Le plan qualité formalise tout cela. Il indique les normes et exigences applicables, les critères d''acceptation de chaque livrable, les contrôles prévus, à quel moment et par qui, les documents à produire comme les procès-verbaux d''essai, et la façon de traiter une non-conformité. Pour le projet Matam, on écrira par exemple : chaque tronçon de canalisation subit un essai de pression avant remblaiement ; le procès-verbal est signé par le chef de chantier et le contrôleur ; en cas d''échec, le tronçon est réparé puis testé à nouveau. Ce n''est pas de la paperasse : c''est la preuve, au moment de la réception, que l''ouvrage est conforme.

Coût de la qualité. Prévention 2 millions, évaluation 3, défaillances internes 6, défaillances externes 9. Total : 20 millions, dont 15 dus aux défaillances, soit 75 %. Message : chaque franc investi en prévention en économise souvent plusieurs en réparation, surtout après livraison, quand la population a déjà perdu confiance.

## 1:02:00 – 1:15:00 · Les outils : Pareto, Ishikawa, PDCA

Correction commentée de l''exercice des 10 salles de classe. 100 défauts : fissures 42, peinture 25, menuiserie 18, électricité 9, plomberie 6. Je trace les barres décroissantes et la courbe des pourcentages cumulés : 42, 67, 85, 94, 100. Deux causes font deux tiers des défauts, trois causes 85 %. On commence par les fissures.

Ishikawa sur les fissures. Je dessine l''arête : à droite « fissures ». Main-d''œuvre : maçons non formés au dosage. Matériel : bétonnière défaillante. Méthode : pas de cure du béton, arrosage insuffisant sous la chaleur. Matière : sable trop argileux. Milieu : forte chaleur et vent sec. On vérifie ensuite chaque hypothèse sur le terrain. Attention, Ishikawa liste des causes possibles, pas des causes prouvées. On mesure : on fait analyser le sable, on observe une journée de coulage, on compare les salles construites par différentes équipes. Si les fissures apparaissent surtout sur les salles coulées en plein après-midi, la piste du milieu et de la cure se confirme.

PDCA : on planifie une action, par exemple une procédure de cure et un contrôle du sable ; on la teste sur deux salles ; on vérifie le nombre de fissures ; on généralise et l''on recommence avec la peinture.

## 1:15:00 – 1:30:00 · Synthèse et évaluation finale

Synthèse : formuler en cause, événement, conséquence ; coter P × I ; calculer la VMA ; répondre par éviter, transférer, atténuer ou accepter ; surveiller avec un propriétaire. Pour la qualité : prévenir coûte moins cher que réparer, et les outils Pareto, Ishikawa et PDCA structurent l''amélioration.

Évaluation finale.

1. VMA totale : R1 40 % × 10 M, R2 5 % × 60 M, opportunité 50 % × 2 M. Réponse : 4 + 3 − 1 = 6 M.
2. Différence entre assurance et contrôle qualité ? Réponse : l''assurance porte sur les processus et prévient, le contrôle porte sur les livrables et détecte.
3. Quels sont les 5 M d''Ishikawa ? Réponse : main-d''œuvre, matériel, méthode, matière, milieu.
4. Défauts 30, 12, 6, 2 : quel pourcentage cumulé pour les deux premières causes ? Réponse : 42 / 50 = 84 %.
5. Que signifie « acceptation active » ? Réponse : on n''agit pas sur le risque mais on prévoit une réserve pour y faire face.

Merci. Pour la prochaine séance, construisez le registre des risques de votre projet tutoré.

Conseil pour l''examen : dans une étude de cas, ne vous contentez pas de lister des risques génériques comme « retard » ou « dépassement ». Ce sont des conséquences. Cherchez dans le texte les causes propres au cas : la saison, la distance, le fournisseur unique, la nouveauté de la technologie, la rotation du personnel. Le correcteur valorise un registre court mais précis.', 'video', 90, false, 70
from public.courses c where c.slug = 'lic-projet-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Gestion des risques et de la qualité');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Méthodes agiles (Scrum, Kanban)', '## Fiche du cours vidéo

Durée : 1h30. Public : Licence 2 gestion de projets. Objectifs : comparer approches prédictive et agile, décrire Scrum, rédiger des user stories, calculer une vélocité, lire un burndown, organiser un tableau Kanban et appliquer la loi de Little. Matériel : tableau, post-it de couleurs, diaporama. Prérequis : cycle de vie et planification.

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Bonjour. La start-up fictive Xaalis Tech, à Dakar, développe une application de tontine en ligne. Au bout de six mois de développement en cascade, elle présente le produit aux utilisatrices… qui demandent surtout de pouvoir payer en espèces auprès d''un agent. Six mois perdus. Avec une approche agile, on l''aurait su après deux semaines. C''est l''objet de cette séance.

## 05:00 – 15:00 · Prédictif ou agile ?

L''approche prédictive fige le périmètre, puis enchaîne étude, conception, réalisation, tests. Elle est parfaite quand le besoin est connu et stable : on ne construit pas un pont par incréments de deux semaines en changeant d''avis sur le nombre de piles. L''approche agile livre de petits morceaux utilisables, recueille les retours et adapte. Elle convient quand le besoin est incertain : logiciel, nouveau service, campagne de communication.

Je dessine les deux triangles. En prédictif, le périmètre est fixe, le coût et le délai sont estimés. En agile, le temps et l''équipe sont fixes, le périmètre varie selon les priorités. Les quatre valeurs du Manifeste agile de 2001 : individus et interactions, produit opérationnel, collaboration avec le client, adaptation au changement, privilégiés par rapport aux processus, à la documentation exhaustive, à la négociation contractuelle et au suivi rigide d''un plan.

## 15:00 – 30:00 · Scrum en détail

Trois responsabilités. Le Product Owner, chez Xaalis Tech la responsable produit, décide de l''ordre du backlog : c''est la voix de la valeur. Le Scrum Master facilite, protège l''équipe et lève les obstacles, par exemple obtenir enfin l''accès à l''interface de paiement de l''opérateur. Les Developers réalisent : développeurs, designer, testeur.

Cinq événements. Le Sprint, ici deux semaines, au maximum un mois. Le Sprint Planning : pourquoi ce sprint, quoi, comment. Le Daily Scrum : 15 minutes maximum, chaque jour à la même heure. La Sprint Review : on montre l''incrément aux parties prenantes, des utilisatrices de Pikine et de Grand-Yoff par exemple. La Sprint Retrospective : comment travailler mieux.

Trois artefacts : Product Backlog, Sprint Backlog, Incrément. Et la définition de « terminé » : par exemple, code relu, testé, documenté, déployé en environnement de test. Une fonction « presque finie » n''est pas terminée.

## 30:00 – 42:00 · User stories et estimation

Rédigeons ensemble. « En tant que membre d''une tontine, je veux recevoir un rappel la veille de la cotisation afin de ne pas oublier de payer. » Vérifions INVEST : indépendante, négociable, porteuse de valeur, estimable, petite, testable. Critère d''acceptation : le rappel arrive par SMS à 18 heures la veille.

Estimation en points relatifs : la story la plus simple vaut 1, les autres sont comparées. On utilise souvent une suite 1, 2, 3, 5, 8, 13 pour rappeler que l''incertitude augmente avec la taille. Priorisation MoSCoW : le rappel est un « Should » ; la création de tontine est un « Must ».

Passons au Sprint Planning de Xaalis Tech. L''équipe compte cinq personnes, le sprint dure dix jours ouvrés, mais un développeur est en congé trois jours. Capacité : on raisonne d''abord en disponibilité, environ 47 jours-personne au lieu de 50. L''équipe n''a pas encore d''historique de vélocité : elle prend prudemment 20 points. Le Product Owner propose l''objectif : « une organisatrice peut créer une tontine et inviter des membres par numéro de téléphone ». Stories retenues : créer un compte, 5 points ; créer une tontine, 8 points ; inviter des membres, 5 points ; total 18 points. On laisse un peu de marge pour les imprévus. Puis l''équipe découpe chaque story en tâches techniques : écran, base de données, envoi de SMS, tests. C''est le Sprint Backlog.

## 42:00 – 50:00 · Pause et quiz interactif

Quatre questions. Un : qui ordonne le backlog ? Deux : durée maximale d''un sprint ? Trois : à quoi sert la rétrospective ? Quatre : construire un barrage est-il un bon candidat pour Scrum pur ?

Réponses : le Product Owner ; un mois ; améliorer la façon de travailler de l''équipe ; non, le besoin est stable et les contraintes physiques imposent une approche prédictive, même si certaines pratiques agiles peuvent aider.

## 50:00 – 1:05:00 · Vélocité et burndown : correction commentée

Exercice : vélocités 18, 22, 20 ; backlog restant 140 points. Moyenne : 60 / 3 = 20. Sprints restants : 140 / 20 = 7, soit 14 semaines. Je vous mets en garde : la vélocité n''est pas un indicateur de productivité à comparer entre équipes, car chaque équipe a sa propre échelle de points. C''est un outil de prévision interne.

Burndown : sprint de 10 jours, 40 points. Je trace la droite idéale de 40 à 0 : 4 points par jour. Au jour 5, on attend 20 points restants. L''équipe en a 24. Retard de 4 points. Que faire ? En parler au Daily Scrum, identifier l''obstacle, et si nécessaire, discuter avec le Product Owner pour retirer une story moins prioritaire, sans abandonner l''objectif du sprint.

Exercice 4 de la leçon : 50 points en 10 jours, 26 restants au jour 6. Idéal : 50 − 6 × 5 = 20. Retard : 6 points.

Et la rétrospective ? Un format simple : trois colonnes au tableau, « ce qui a bien marché », « ce qui peut être amélioré », « ce que nous changeons au prochain sprint ». Chez Xaalis Tech, l''équipe note que les coupures d''électricité ont fait perdre du temps de développement. Action concrète : installer un onduleur pour le serveur de test et synchroniser le code plus souvent. Une rétrospective qui ne produit aucune action concrète est une réunion perdue.

## 1:05:00 – 1:18:00 · Kanban et loi de Little

Je dessine un tableau : À faire, En cours, En test, Terminé. Chaque carte est une tâche. On fixe une limite de travail en cours, par exemple 3 cartes maximum dans « En cours ». Quand la colonne est pleine, on n''en commence pas une nouvelle : on aide à terminer. Ce principe, « arrêter de commencer, commencer à finir », réduit le multitâche. Prenons le service de maintenance informatique d''une mutuelle fictive : sans limite, chaque technicien ouvre cinq tickets à la fois, passe de l''un à l''autre, et aucun n''est clos avant la fin de la semaine. Avec une limite de deux tickets par technicien, les tickets sont fermés un par un, les utilisateurs sont dépannés plus vite et les blocages deviennent visibles : une colonne « En test » qui déborde révèle immédiatement qu''il manque un testeur. Le tableau ne sert pas à décorer le bureau ; on le regarde chaque jour pour décider où aider.

Loi de Little : délai moyen égal au travail en cours divisé par le débit. Microfinance de Thiès : 12 dossiers en cours, 3 traités par jour, délai 4 jours. On veut 2 jours : il faut 6 dossiers en cours, à débit égal. Exercice 5 de la leçon : 15 tâches en cours, 5 par semaine : 3 semaines.

Scrum ou Kanban ? Scrum convient au développement de produit avec un rythme régulier ; Kanban aux flux continus, comme le support client ou la maintenance. Beaucoup d''équipes combinent les deux.

Dernière question, fréquente dans nos pays : comment concilier agilité et projet financé par un bailleur qui exige un budget et un calendrier fixés au départ ? La réponse est souvent hybride. On fixe le budget global, la durée et les grands objectifs dans le document de projet, avec des jalons de décaissement. À l''intérieur, l''équipe travaille par sprints sur les composantes incertaines, comme une plateforme numérique, et le comité de pilotage valide les priorités à chaque revue. Le contrat peut prévoir un périmètre ajustable à budget constant. Les grands référentiels de management de projet reconnaissent d''ailleurs aujourd''hui ces approches hybrides.

## 1:18:00 – 1:30:00 · Synthèse et évaluation finale

Synthèse : l''agilité livre de la valeur par incréments ; Scrum fixe un cadre de rôles, d''événements et d''artefacts ; la vélocité aide à prévoir ; le burndown à suivre ; Kanban limite le travail en cours pour fluidifier.

Évaluation finale.

1. Vélocités 30, 34, 32 ; reste 192 points ; sprints de 2 semaines. Combien de semaines ? Réponse : moyenne 32 ; 6 sprints ; 12 semaines.
2. Durée maximale du Daily Scrum ? Réponse : 15 minutes.
3. Débit 4 tâches par jour, délai voulu 2 jours. Travail en cours maximal ? Réponse : 8 tâches.
4. Citez les trois artefacts Scrum. Réponse : Product Backlog, Sprint Backlog, Incrément.
5. Rédigez une user story pour un agent de mobile money. Réponse type : « En tant qu''agent, je veux voir mon solde de liquidités en temps réel afin d''éviter de refuser des retraits. »

Merci et bonne préparation.', 'video', 90, false, 80
from public.courses c where c.slug = 'lic-projet-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Méthodes agiles (Scrum, Kanban)');

-- Cours : Gestion de projets Licence 3 : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'lic-projet-l3', (select id from public.levels where name = 'Licence 3'), null, 'Gestion de projets', 'Gestion de projets Licence 3 : réussir ses examens', 'Ce cours prépare les examens de troisième année de Licence en gestion de projets : montage et évaluation de projets de développement (cadre logique, faisabilité, VAN et TRI), gestion de portefeuille et pilotage par tableaux de bord, suivi-évaluation et principes généraux des marchés publics. Il comprend des fiches, des exercices corrigés, un sujet type et trois cours vidéo de 1h30. Prérequis : Licence 2 (coûts, valeur acquise, risques).', true, 313
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Licence 3 en Gestion de projets', '## Objectifs de la leçon

Comprendre les enjeux de la dernière année de Licence, identifier les matières clés, connaître les types d''épreuves et le travail de fin d''études, et organiser six semaines de révision efficaces.

## La Licence 3 dans le système LMD

La Licence 3 correspond aux semestres 5 et 6 et conclut le premier cycle du système LMD. Elle donne accès au diplôme de Licence lorsque l''ensemble des crédits des six semestres est validé, selon les règles de l''établissement. Elle conditionne aussi l''admission en Master, souvent sur dossier : les notes de Licence 3, le stage et le mémoire ou rapport de fin d''études pèsent lourd. Les crédits, coefficients, conditions de compensation et modalités de rattrapage sont fixés par chaque université ou école ; lisez attentivement votre règlement des études et le guide du mémoire ou du rapport de stage.

## Ce qui change par rapport à la Licence 2

En Licence 1, vous avez appris à cadrer et planifier ; en Licence 2, à maîtriser coûts, risques, qualité et à travailler en agile. En Licence 3, on prend de la hauteur : comment monter un projet de développement et convaincre un financeur ; comment décider entre plusieurs projets et piloter un ensemble de projets ; comment suivre et évaluer les résultats, et acheter dans le respect des règles de la commande publique. Les sujets mêlent calculs financiers, raisonnement stratégique et connaissance des pratiques des bailleurs, des administrations et des ONG.

## Les matières clés de la Licence 3

- Montage et évaluation de projets de développement : cycle du projet, analyse des problèmes et des objectifs, cadre logique, études de faisabilité, critères financiers (VAN, TRI, indice de profitabilité, délai de récupération actualisé), notions d''analyse économique.
- Gestion de portefeuille et pilotage : distinction projet, programme, portefeuille ; sélection et priorisation (notation pondérée, contrainte budgétaire) ; bureau des projets ; conception et lecture de tableaux de bord.
- Suivi-évaluation et marchés publics : chaîne de résultats, indicateurs, situation de référence et cibles, plan de suivi-évaluation, critères d''évaluation ; principes généraux de la commande publique, étapes d''une procédure, évaluation des offres.

Ces matières mobilisent tout ce qui précède : la valeur acquise de Licence 2 alimente les tableaux de bord, la planification de Licence 1 sert à construire le chronogramme d''un projet de développement. Les autres enseignements de votre maquette (finance, droit, anglais, méthodologie) comptent aussi dans la moyenne mais ne sont pas traités ici.

## Les types d''épreuves

- Exercice de choix d''investissement : calculer la VAN, le TRI par interpolation, l''indice de profitabilité et le délai de récupération ; comparer deux projets.
- Cas de montage de projet : à partir d''un texte, construire l''arbre à problèmes et le cadre logique avec des indicateurs objectivement vérifiables.
- Cas de portefeuille : classer des projets par notation pondérée, choisir sous contrainte budgétaire, commenter un tableau de bord.
- Cas de suivi-évaluation : calculer des taux de réalisation, juger un projet selon les critères d''évaluation.
- Questions sur la commande publique : principes, étapes, évaluation d''offres sur un exemple chiffré.
- Dissertation : « Un projet rentable financièrement est-il forcément un bon projet de développement ? »
- Mémoire ou rapport de stage, avec soutenance.

## Méthode de révision

Pour les calculs financiers, maîtrisez le facteur d''actualisation 1 / (1 + t)^n et construisez toujours un tableau : année, flux, facteur, flux actualisé, cumul. Le cumul donne directement la VAN et le délai de récupération. Pour le TRI, entraînez-vous à l''interpolation linéaire entre deux taux qui encadrent le zéro.

Pour le cadre logique, apprenez la logique verticale (si les activités sont réalisées et que les hypothèses se vérifient, alors les résultats sont atteints…) et la logique horizontale (indicateur, source de vérification). Pour la commande publique, retenez les principes et les étapes ; ne citez jamais de seuils ou d''articles dont vous n''êtes pas certain : expliquez le mécanisme et renvoyez au texte en vigueur.

Préparez en parallèle votre mémoire ou rapport : les révisions et la rédaction se nourrissent mutuellement.

## Plan de révision sur six semaines

- Semaine 1 : cycle du projet, arbre à problèmes, cadre logique ; deux cadres logiques complets.
- Semaine 2 : faisabilité et critères financiers ; un exercice de VAN/TRI par jour.
- Semaine 3 : portefeuille, notation pondérée, sélection sous contrainte, tableaux de bord.
- Semaine 4 : suivi-évaluation (indicateurs, critères) et commande publique (principes, étapes, évaluation des offres).
- Semaine 5 : études de cas multi-matières et dissertations ; avancement du mémoire.
- Semaine 6 : deux sujets types en conditions réelles, corrections, fiches finales, repos.

## Points clés

- La Licence 3 conclut le premier cycle et prépare le Master.
- Trois matières : montage et évaluation, portefeuille et pilotage, suivi-évaluation et marchés publics.
- Tableau d''actualisation systématique ; prudence sur les références réglementaires.

## Exercices pratiques

1. Citez les trois matières clés de la Licence 3 et un outil de chacune.
2. Calculez le facteur d''actualisation à 10 % pour l''année 3 (arrondi à 4 décimales).
3. Qu''est-ce que la logique verticale du cadre logique ?
4. Pourquoi ne faut-il pas citer un seuil de marché public dont on n''est pas sûr ?
5. Cas pratique : Fatou doit rendre son rapport de stage dans huit semaines et passer ses examens dans six. Proposez une organisation.

## Corrigé

1. Montage et évaluation : le cadre logique ou la VAN. Portefeuille et pilotage : la notation pondérée ou le tableau de bord. Suivi-évaluation et marchés publics : l''indicateur avec situation de référence et cible, ou la grille d''évaluation des offres.

2. 1 / 1,1³ = 1 / 1,331 ≈ 0,7513.

3. C''est l''enchaînement de causalité de bas en haut : les activités, sous réserve des hypothèses, produisent les résultats ; les résultats, sous réserve des hypothèses, permettent d''atteindre l''objectif spécifique ; celui-ci contribue à l''objectif global.

4. Les seuils et articles changent avec les réformes et diffèrent selon les pays et les bailleurs. Une erreur fait perdre des points et, dans la vie professionnelle, peut entraîner l''annulation d''une procédure. Il vaut mieux expliquer le mécanisme et renvoyer au texte en vigueur.

5. Exemple : chaque matin, 3 heures de révision selon le plan de six semaines ; chaque après-midi, 2 heures de rédaction du rapport (plan validé en semaine 1, partie descriptive en semaines 2 et 3, analyse en semaines 4 et 5) ; pendant la semaine des examens, pause sur le rapport ; semaines 7 et 8, finalisation, relecture et préparation de la soutenance.', 'texte', 50, true, 10
from public.courses c where c.slug = 'lic-projet-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Licence 3 en Gestion de projets');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Montage et évaluation de projets de développement : l''essentiel pour l''examen', '## Objectifs

Décrire le cycle du projet de développement, construire un arbre à problèmes et un cadre logique, connaître les volets d''une étude de faisabilité, et calculer VAN, TRI, indice de profitabilité et délai de récupération actualisé.

## Fiche 1 : le cycle du projet de développement

Les bailleurs, administrations et ONG utilisent un cycle proche de celui-ci : programmation (orientations, politiques nationales et sectorielles) ; identification (idée de projet, analyse des problèmes et des parties prenantes) ; formulation ou instruction (études de faisabilité, cadre logique, budget) ; financement (décision, convention) ; mise en œuvre (exécution et suivi) ; évaluation (à mi-parcours, finale, ex post), dont les leçons alimentent une nouvelle programmation. C''est un cycle, pas une ligne.

## Fiche 2 : de l''arbre à problèmes au cadre logique

L''arbre à problèmes place au centre le problème principal, en dessous ses causes, au-dessus ses effets. Exemple fictif, commune rurale de la région de Kaffrine : problème central « forte prévalence des maladies hydriques chez les enfants » ; causes : eau consommée non potable, puits non protégés, faible connaissance des règles d''hygiène ; effets : absentéisme scolaire, dépenses de santé des ménages.

L''arbre à objectifs transforme chaque situation négative en situation positive souhaitée : « eau consommée potable », « puits protégés »… On choisit ensuite la stratégie, c''est-à-dire les branches sur lesquelles le projet agira.

Le cadre logique est une matrice de quatre lignes et quatre colonnes.

- Lignes : objectif global (le changement de long terme auquel le projet contribue) ; objectif spécifique (le bénéfice durable pour les bénéficiaires, atteint à la fin du projet) ; résultats (ce que le projet produit) ; activités (ce qu''on fait).
- Colonnes : logique d''intervention ; indicateurs objectivement vérifiables (IOV) ; sources de vérification ; hypothèses (conditions externes nécessaires). Sur la ligne des activités, on indique souvent les moyens et les coûts.

Exemple, ligne de l''objectif spécifique : « Les ménages de la commune consomment une eau potable » ; IOV : « Proportion de ménages consommant une eau conforme aux analyses passe de 35 % à 80 % en fin de projet » ; source : enquête ménages et analyses du laboratoire ; hypothèse : les ménages acceptent de payer le service d''eau.

## Fiche 3 : les études de faisabilité

- Technique : la solution fonctionne-t-elle dans ce contexte (ressource en eau, sols, compétences) ?
- Commerciale ou de marché : y a-t-il une demande, à quel prix, face à quelle concurrence ?
- Financière : le projet est-il rentable et viable du point de vue de l''organisme qui le porte ?
- Économique : le projet crée-t-il de la richesse pour la collectivité ? On corrige les prix de marché (subventions, taxes, prix administrés) et l''on intègre des effets non marchands.
- Sociale et environnementale : impacts sur les populations, le genre, l''environnement, mesures d''atténuation ; une évaluation environnementale peut être exigée par la réglementation nationale.
- Institutionnelle : qui gérera l''ouvrage après le projet, avec quelles capacités ?

## Fiche 4 : les critères financiers

On actualise les flux nets de trésorerie au taux d''actualisation t (coût du capital ou taux exigé, choisi par l''investisseur ou le financeur).

- VAN = somme des flux actualisés − investissement initial. Projet acceptable si VAN > 0.
- Indice de profitabilité IP = 1 + VAN / investissement initial (ou somme des flux actualisés / investissement). Acceptable si IP > 1.
- TRI : taux qui annule la VAN. Acceptable si TRI > taux exigé.
- Délai de récupération actualisé (DRCI) : temps nécessaire pour que le cumul des flux actualisés couvre l''investissement.

## Exemple complet chiffré

Une unité fictive de transformation de noix de cajou à Sédhiou : investissement 250 millions de FCFA ; flux nets annuels (années 1 à 5) : 60, 70, 80, 80, 90 millions (le dernier inclut la valeur résiduelle) ; taux d''actualisation 10 %.

- Année 1 : 60 × 0,9091 = 54,55 ; cumul −195,45.
- Année 2 : 70 × 0,8264 = 57,85 ; cumul −137,60.
- Année 3 : 80 × 0,7513 = 60,11 ; cumul −77,50.
- Année 4 : 80 × 0,6830 = 54,64 ; cumul −22,86.
- Année 5 : 90 × 0,6209 = 55,88 ; cumul +33,03.

VAN ≈ 33,03 millions de FCFA > 0 : projet rentable au taux de 10 %. IP = 1 + 33,03 / 250 ≈ 1,13 : chaque FCFA investi rapporte 1,13 FCFA en valeur actualisée. DRCI = 4 ans + 22,86 / 55,88 ≈ 4,41 ans, soit environ 4 ans et 5 mois.

TRI par interpolation : VAN à 12 % ≈ +18,23 ; VAN à 15 % ≈ −1,81. TRI ≈ 12 + 3 × 18,23 / (18,23 + 1,81) ≈ 14,73 % (le calcul exact donne environ 14,71 %). Le TRI dépasse le taux exigé de 10 %.

## Points clés

- Cadre logique : quatre niveaux d''objectifs, indicateurs, sources, hypothèses.
- Faisabilité : technique, marché, financière, économique, sociale et environnementale, institutionnelle.
- VAN > 0, IP > 1, TRI > taux exigé ; DRCI par le cumul des flux actualisés.

## Exercices pratiques

1. Distinguez objectif spécifique et résultat dans un cadre logique, avec un exemple.
2. Proposez un IOV et une source de vérification pour le résultat « 20 puits sont protégés ».
3. Projet A : investissement 100 M ; flux 30, 40, 50, 30 M (années 1 à 4) ; taux 10 %. Calculez la VAN, l''IP et le DRCI.
4. Projet B : investissement 100 M ; flux 50, 40, 30, 20 M. VAN à 10 % = 14,71 M ; TRI ≈ 17,8 %. Le TRI de A est d''environ 18,0 %. Lequel choisir si les projets sont exclusifs ?
5. Projet C : investissement 60 M ; flux 20, 25, 30 M. Calculez la VAN à 10 % et à 12 %, puis le TRI par interpolation.
6. Cas pratique : la VAN financière d''un projet de piste rurale est négative, mais l''analyse économique montre des gains importants pour les producteurs. Que recommandez-vous ?

## Corrigé

1. Le résultat est ce que le projet produit et maîtrise (20 puits protégés). L''objectif spécifique est le bénéfice pour les bénéficiaires, qui dépend aussi de leur comportement (les ménages consomment une eau potable).

2. IOV : « Nombre de puits équipés d''une margelle, d''un couvercle et d''un système d''exhaure, conformes aux plans : 20 au mois 18. » Source : procès-verbaux de réception et visites de contrôle.

3. Flux actualisés : 27,27 ; 33,06 ; 37,57 ; 20,49. Somme ≈ 118,39. VAN ≈ 18,39 M. IP ≈ 1,18. Cumul : −72,73 ; −39,67 ; −2,10 ; +18,39. DRCI = 3 + 2,10 / 20,49 ≈ 3,10 ans.

4. Pour des projets exclusifs de même montant, on retient le critère de la VAN : A (18,39 M) est préférable à B (14,71 M). Ici les deux critères concordent. En cas de conflit, la VAN prime, car elle mesure la création de valeur en FCFA.

5. À 10 % : 18,18 + 20,66 + 22,54 − 60 ≈ 1,38 M. À 12 % : VAN ≈ −0,86 M. TRI ≈ 10 + 2 × 1,38 / (1,38 + 0,86) ≈ 11,23 % (valeur exacte voisine de 11,22 %).

6. Un projet non rentable pour son exploitant peut être utile à la collectivité. On peut recommander un financement public ou concessionnel (subvention, prêt à taux réduit), à condition que l''analyse économique soit solide, que l''entretien soit financé (comité de gestion, budget communal) et que les impacts sociaux et environnementaux soient maîtrisés.', 'texte', 80, false, 20
from public.courses c where c.slug = 'lic-projet-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Montage et évaluation de projets de développement : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Gestion de portefeuille et pilotage par tableaux de bord : l''essentiel pour l''examen', '## Objectifs

Distinguer projet, programme et portefeuille ; sélectionner et prioriser des projets par notation pondérée et sous contrainte budgétaire ; comprendre le rôle d''un bureau des projets ; concevoir et lire un tableau de bord de projet et de portefeuille.

## Fiche 1 : projet, programme, portefeuille

- Projet : effort temporaire et unique avec un objectif propre.
- Programme : ensemble de projets liés, gérés de façon coordonnée pour obtenir des bénéfices qu''on n''obtiendrait pas en les gérant séparément. Exemple : un programme national fictif d''accès à l''eau regroupant forages, réseaux et formation des comités de gestion.
- Portefeuille : ensemble de projets et programmes, pas forcément liés entre eux, réunis pour atteindre les objectifs stratégiques d''une organisation et partager des ressources limitées. Exemple : tous les projets d''une banque régionale fictive (nouvelle agence, application mobile, mise en conformité, formation).

La gestion de portefeuille répond à la question « faisons-nous les bons projets ? », la gestion de projet à « faisons-nous bien les projets ? ».

## Fiche 2 : sélectionner et prioriser

Notation pondérée : on définit des critères alignés sur la stratégie, on les pondère (somme 100 %), on note chaque projet (par exemple de 1 à 5), et l''on calcule la note globale.

Exemple : critères alignement stratégique 40 %, rentabilité 30 %, urgence 20 %, faisabilité 10 %.

- P1 : notes 4, 3, 5, 2 → 0,4 × 4 + 0,3 × 3 + 0,2 × 5 + 0,1 × 2 = 1,6 + 0,9 + 1,0 + 0,2 = 3,7.
- P2 : notes 5, 2, 3, 4 → 2,0 + 0,6 + 0,6 + 0,4 = 3,6.
- P3 : notes 3, 5, 4, 3 → 1,2 + 1,5 + 0,8 + 0,3 = 3,8.

Classement : P3, P1, P2. Le résultat dépend fortement des pondérations : elles doivent être validées par la direction avant la notation.

Sélection sous contrainte budgétaire : avec une enveloppe de 450 M FCFA et quatre projets (coût ; VAN) : A 200 ; 40 — B 150 ; 35 — C 250 ; 50 — D 100 ; 20. Combinaisons possibles dans l''enveloppe : A + C (450 ; VAN 90), A + B + D (450 ; VAN 95), B + C (400 ; VAN 85)… La meilleure est A + B + D, VAN totale 95 M, alors que C est le projet de plus forte VAN individuelle. Leçon : on optimise le portefeuille, pas chaque projet isolément.

L''équilibrage complète l''analyse : répartition entre court et long terme, risque faible et élevé, projets obligatoires (mise en conformité) et projets de croissance.

## Fiche 3 : le bureau des projets (PMO)

Le bureau des projets est une structure qui harmonise les pratiques (modèles, méthodes), consolide les informations, appuie les chefs de projet et prépare les arbitrages du comité de portefeuille. Selon les organisations, il peut être simplement d''appui, de contrôle ou directif.

## Fiche 4 : le tableau de bord

Un tableau de bord est un outil de pilotage : peu d''indicateurs (souvent 5 à 10), choisis pour décider, avec pour chacun une valeur actuelle, une cible, un seuil d''alerte et une tendance. Il n''est pas un rapport exhaustif.

Indicateurs usuels d''un projet : avancement physique, SPI et CPI (valeur acquise), consommation du budget, jalons tenus, nombre de risques critiques ouverts, satisfaction des bénéficiaires ou du client, anomalies qualité.

Présentation « météo » ou feux tricolores (vert, orange, rouge) avec des règles explicites. Exemple de règle : vert si CPI et SPI ≥ 0,95 ; orange si l''un est entre 0,85 et 0,95 ; rouge si l''un est inférieur à 0,85. Ces seuils sont un choix de gestion de l''organisation.

Exemple de tableau de bord de portefeuille, banque fictive :

- Nouvelle agence de Thiès : SPI 0,98 ; CPI 0,96 ; vert.
- Application mobile : SPI 0,88 ; CPI 1,02 ; orange (délai).
- Mise en conformité : SPI 0,80 ; CPI 0,90 ; rouge.

Lecture : la mise en conformité est prioritaire pour le comité, car elle est obligatoire et en difficulté ; on peut y réaffecter des ressources de l''agence, en avance relative.

## Points clés

- Portefeuille : faire les bons projets ; projet : bien faire les projets.
- Notation pondérée : critères alignés, pondérations validées.
- Sous contrainte budgétaire, chercher la combinaison qui maximise la valeur totale.
- Un tableau de bord sert à décider : peu d''indicateurs, cibles, seuils, tendance.

## Exercices pratiques

1. Classez : (a) construction d''un forage ; (b) ensemble des forages, réseaux et formations d''un programme national ; (c) tous les projets d''un ministère.
2. Avec les pondérations de la fiche 2, calculez la note d''un projet P4 noté 2, 4, 4, 5.
3. Avec une enveloppe de 350 M et les projets A, B, C, D de la fiche 2, quelle combinaison choisir ?
4. Classez les projets A, B, C, D par indice de profitabilité (IP = 1 + VAN / coût). Qu''observez-vous ?
5. Proposez six indicateurs pour le tableau de bord d''un projet de construction d''un lycée.
6. Cas pratique : un projet affiche SPI 0,92 et CPI 0,83. Appliquez la règle des feux de la fiche 4 et proposez deux décisions au comité.

## Corrigé

1. (a) Projet ; (b) programme ; (c) portefeuille.

2. 0,8 + 1,2 + 0,8 + 0,5 = 3,3.

3. Combinaisons possibles à 350 M ou moins : A + B (350 ; 75), C + D (350 ; 70), A + D (300 ; 60), B + C (400) dépasse, B + D (250 ; 55). Meilleure : A + B, VAN 75 M.

4. A : 1,20 ; B : 1,233 ; C : 1,20 ; D : 1,20. B est le plus efficace par FCFA investi ; les autres sont à égalité. L''IP aide à classer quand le budget est limité, mais il faut vérifier la combinaison qui remplit le mieux l''enveloppe.

5. Avancement physique ; SPI ; CPI ; jalons tenus (fondations, gros œuvre, réception) ; risques critiques ouverts ; non-conformités relevées ; incidents de sécurité sur le chantier.

6. CPI 0,83 inférieur à 0,85 : feu rouge. Décisions : analyse des causes de surcoût et plan d''économies sous un mois ; révision de l''estimation à l''achèvement ; si nécessaire, arbitrage entre réduction du périmètre et complément de budget.', 'texte', 70, false, 30
from public.courses c where c.slug = 'lic-projet-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Gestion de portefeuille et pilotage par tableaux de bord : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Suivi-évaluation et marchés publics : l''essentiel pour l''examen', '## Objectifs

Distinguer suivi et évaluation, construire une chaîne de résultats et des indicateurs, calculer des taux de réalisation, appliquer les critères d''évaluation ; connaître les principes généraux de la commande publique, les étapes d''une procédure et la logique de l''évaluation des offres.

## Fiche 1 : suivi et évaluation

- Le suivi est continu : il collecte et analyse des données pendant le projet pour vérifier l''avancement (activités, dépenses, extrants) et corriger.
- L''évaluation est ponctuelle : elle porte un jugement sur la valeur du projet, à mi-parcours, à la fin ou plusieurs années après (ex post), souvent par des évaluateurs externes.

La chaîne de résultats : intrants (moyens financiers, humains, matériels) → activités → extrants (produits directs : 20 puits protégés, 300 personnes formées) → effets (changements à moyen terme chez les bénéficiaires : consommation d''eau potable) → impact (changement à long terme : baisse des maladies hydriques). Le projet maîtrise les extrants ; il contribue aux effets et à l''impact.

## Fiche 2 : indicateurs, référence et cibles

Chaque indicateur comporte : définition précise, unité, situation de référence (valeur au départ), cible, échéance, source et fréquence de collecte, responsable. Il est désagrégé quand c''est utile (femmes et hommes, zones).

Taux de réalisation d''un indicateur de progression = (valeur actuelle − référence) / (cible − référence). Exemple : taux de fréquentation des consultations prénatales, référence 40 %, cible 70 %, valeur actuelle 58 %. Progression = (58 − 40) / (70 − 40) = 18 / 30 = 60 % du chemin parcouru.

Efficience simplifiée : coût par bénéficiaire. Un projet de 150 millions de FCFA qui atteint 1 200 bénéficiaires coûte 125 000 FCFA par bénéficiaire, à comparer avec des projets similaires.

Le plan de suivi-évaluation regroupe les indicateurs, les outils de collecte (fiches, enquêtes, registres), le calendrier des rapports, les responsabilités et le budget du suivi-évaluation.

## Fiche 3 : les critères d''évaluation

Les évaluations de projets de développement s''appuient très souvent sur les critères définis par le Comité d''aide au développement de l''OCDE, révisés en 2019 : pertinence (le projet répond-il aux besoins ?), cohérence (s''articule-t-il avec les autres interventions ?), efficacité (atteint-il ses objectifs ?), efficience (les ressources sont-elles bien utilisées ?), impact (quels changements de long terme ?), viabilité ou durabilité (les bénéfices dureront-ils après le projet ?).

## Fiche 4 : principes de la commande publique

Dans l''espace UEMOA, les règles nationales de passation des marchés publics s''inscrivent dans un cadre communautaire harmonisé par des directives de l''Union. Chaque État dispose de son code ou de sa réglementation des marchés publics, régulièrement révisés ; au Sénégal, un organe de régulation et un organe de contrôle des marchés publics interviennent dans le dispositif. Les projets financés par des bailleurs peuvent aussi être soumis aux règles de passation de ces bailleurs, selon la convention de financement. Toujours vérifier le texte applicable en vigueur.

Principes généraux communs :

- Liberté d''accès à la commande publique.
- Égalité de traitement des candidats.
- Transparence des procédures.
- Économie et efficacité de la dépense : obtenir le meilleur rapport qualité-prix.

L''appel d''offres ouvert est en principe la règle ; les procédures restreintes, simplifiées ou par entente directe sont des exceptions encadrées par la réglementation, avec des seuils et conditions fixés par les textes nationaux.

## Fiche 5 : les étapes d''une procédure

Planification (plan de passation des marchés) ; préparation du dossier d''appel d''offres (spécifications techniques, critères d''évaluation, modèle de contrat) ; publicité de l''avis ; réception et ouverture publique des plis ; évaluation des offres par une commission ; attribution provisoire et publication ; délai pour les éventuels recours ; signature, approbation et notification du contrat ; exécution, suivi et réception.

Logique d''évaluation pour les travaux et fournitures : on vérifie d''abord la conformité administrative et technique, on corrige les erreurs arithmétiques selon les règles du dossier, puis on retient en général l''offre conforme évaluée la moins-disante. Pour les prestations intellectuelles, on combine souvent qualité technique et prix.

Exemple de combinaison qualité-prix, avec des pondérations fictives pour l''exemple : technique 80 %, financière 20 %. Note financière = 100 × prix le plus bas / prix de l''offre. Trois bureaux d''études :

- X : note technique 85 ; prix 48 M ; note financière 100 × 40 / 48 ≈ 83,33 ; note finale 0,8 × 85 + 0,2 × 83,33 ≈ 84,67.
- Y : technique 78 ; prix 40 M ; financière 100 ; finale 62,4 + 20 = 82,40.
- Z : technique 90 ; prix 60 M ; financière ≈ 66,67 ; finale 72 + 13,33 ≈ 85,33.

Z est classé premier malgré le prix le plus élevé, en raison du poids de la qualité technique.

## Points clés

- Suivi continu, évaluation ponctuelle ; chaîne intrants → impact.
- Indicateur : référence, cible, échéance, source.
- Critères du CAD de l''OCDE : pertinence, cohérence, efficacité, efficience, impact, viabilité.
- Commande publique : liberté d''accès, égalité, transparence, efficacité ; vérifier le texte en vigueur.

## Exercices pratiques

1. Classez dans la chaîne de résultats : (a) 50 enseignants formés ; (b) amélioration des résultats scolaires ; (c) 30 millions de FCFA de budget ; (d) organisation de 5 sessions de formation.
2. Référence 50 %, cible 80 %, valeur actuelle 62 % : calculez le taux de réalisation.
3. À quel critère d''évaluation se rattache chaque question : (a) les comités de gestion fonctionneront-ils après le retrait de l''ONG ? (b) le coût par latrine est-il raisonnable ? (c) le projet répond-il aux priorités des femmes du village ?
4. Citez quatre principes de la commande publique.
5. Reprenez l''exemple des bureaux X, Y, Z avec une pondération fictive de 70 % technique et 30 % financière. Qui gagne ?
6. Cas pratique : une commune veut confier directement, sans mise en concurrence, la construction d''un marché à une entreprise « de confiance ». Quels risques et quelles recommandations ?

## Corrigé

1. (c) intrant ; (d) activité ; (a) extrant ; (b) effet (ou impact à long terme).

2. (62 − 50) / (80 − 50) = 12 / 30 = 40 %.

3. (a) Viabilité ; (b) efficience ; (c) pertinence.

4. Liberté d''accès, égalité de traitement, transparence, économie et efficacité de la dépense.

5. X : 0,7 × 85 + 0,3 × 83,33 ≈ 84,50. Y : 54,6 + 30 = 84,60. Z : 63 + 20 = 83,00. Y gagne de justesse : le choix des pondérations change le résultat, d''où l''obligation de les fixer dans le dossier avant l''ouverture des offres.

6. Risques : violation des principes de concurrence et de transparence, prix non optimisé, recours d''entreprises évincées, nullité du contrat, mise en cause des responsables. Recommandations : vérifier si les conditions exceptionnelles d''une entente directe prévues par la réglementation sont réunies ; à défaut, lancer la procédure de mise en concurrence applicable au montant et à la nature du marché, avec l''appui de la cellule de passation.', 'texte', 75, false, 40
from public.courses c where c.slug = 'lic-projet-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Suivi-évaluation et marchés publics : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Licence 3 en Gestion de projets', '## Présentation

Sujet d''entraînement multi-matières, non officiel, pour une épreuve de 3 heures. Barème indicatif, non officiel. Calculatrice autorisée. Les valeurs et pondérations sont fictives.

## Énoncé

Contexte. L''association fictive Terres du Saloum veut créer un centre de stockage et de conditionnement d''oignons dans la région de Fatick, pour limiter les pertes après récolte et vendre à meilleur prix hors saison. Elle sollicite un financement et prépare un dossier.

Partie 1 – Montage et évaluation (9 points)

1. Construisez un arbre à problèmes simplifié (problème central, deux causes, deux effets). (2 points)
2. Rédigez la ligne « objectif spécifique » du cadre logique (logique d''intervention, IOV, source, hypothèse). (2 points)
3. Investissement : 150 M FCFA ; flux nets années 1 à 4 : 40, 50, 60, 50 M ; taux 10 %. Calculez la VAN, l''IP et le DRCI. (3 points)
4. Sachant que la VAN à 12 % vaut environ 0,06 M et la VAN à 15 % environ −9,37 M, estimez le TRI. (2 points)

Partie 2 – Portefeuille et pilotage (5 points)

L''association gère aussi deux autres projets. Le comité a fixé : vert si SPI et CPI ≥ 0,95 ; orange si l''un est entre 0,85 et 0,95 ; rouge si l''un est inférieur à 0,85.

- Projet maraîchage : SPI 0,97 ; CPI 0,93.
- Projet alphabétisation : SPI 0,82 ; CPI 1,01.

5. Attribuez une couleur à chaque projet et justifiez. (2 points)
6. Proposez cinq indicateurs pour le tableau de bord du centre de stockage. (3 points)

Partie 3 – Suivi-évaluation et marchés publics (6 points)

7. Indicateur « taux de pertes après récolte » : référence 30 %, cible 10 %, valeur à mi-parcours 22 %. Calculez le taux de réalisation. (2 points)
8. Citez les six critères d''évaluation du CAD de l''OCDE. (2 points)
9. L''association est financée sur fonds publics et doit acheter des équipements de ventilation. Quels principes doit-elle respecter et quelles étapes suivre ? (2 points)

## Corrigé détaillé

1. Problème central : fortes pertes d''oignons après récolte. Causes : absence de magasins ventilés ; méconnaissance des techniques de séchage et de tri. Effets : ventes forcées à bas prix en pleine récolte ; revenus faibles des producteurs. D''autres réponses cohérentes sont acceptées.

2. Logique d''intervention : « Les producteurs membres réduisent leurs pertes et vendent une partie de leur récolte hors saison. » IOV : « Taux de pertes ramené de 30 % à 10 % et au moins 40 % des volumes vendus hors saison d''ici la fin de l''année 3. » Source : registres du centre, enquête annuelle auprès des producteurs. Hypothèse : les prix hors saison restent supérieurs aux prix de récolte.

3. Facteurs : 0,9091 ; 0,8264 ; 0,7513 ; 0,6830. Flux actualisés : 36,36 ; 41,32 ; 45,08 ; 34,15. Somme ≈ 156,92. VAN ≈ 6,92 M > 0. IP ≈ 1 + 6,92 / 150 ≈ 1,05. Cumul : −113,64 ; −72,31 ; −27,24 ; +6,92. DRCI = 3 + 27,24 / 34,15 ≈ 3,80 ans, soit environ 3 ans et 10 mois. Le projet est rentable mais avec une faible marge de sécurité.

4. La VAN s''annule entre 12 % et 15 %, très près de 12 % : TRI ≈ 12 + 3 × 0,06 / (0,06 + 9,37) ≈ 12,02 %. Le TRI dépasse le taux de 10 %, mais de peu : il faut tester la sensibilité aux prix de vente et aux pertes.

5. Maraîchage : SPI ≥ 0,95 mais CPI 0,93 entre 0,85 et 0,95 : orange (coût). Alphabétisation : SPI 0,82 inférieur à 0,85 : rouge (délai), malgré un bon CPI.

6. Volumes stockés ; taux de pertes ; prix moyen de vente hors saison comparé au prix de récolte ; taux de remplissage du centre ; CPI et SPI de la construction ; nombre de producteurs utilisateurs dont femmes.

7. (22 − 30) / (10 − 30) = −8 / −20 = 40 %. Le projet a parcouru 40 % du chemin entre la référence et la cible.

8. Pertinence, cohérence, efficacité, efficience, impact, viabilité (durabilité).

9. Principes : liberté d''accès, égalité de traitement, transparence, économie et efficacité. Étapes : vérifier les règles applicables (réglementation nationale ou règles du bailleur selon la convention) ; définir le besoin et les spécifications ; choisir la procédure adaptée au montant ; publier ou consulter ; ouvrir et évaluer les offres selon des critères fixés à l''avance ; attribuer, informer les candidats, signer, réceptionner.

## Barème indicatif, non officiel

Partie 1 : 9 points ; partie 2 : 5 points ; partie 3 : 6 points. Les calculs doivent être présentés en tableau, avec interprétation.

## Exercices pratiques

1. Si l''investissement de la question 3 passait à 160 M avec les mêmes flux, quelle serait la VAN ?
2. Avec une valeur à mi-parcours de 14 % de pertes, quel serait le taux de réalisation ?
3. Pourquoi un TRI à peine supérieur au taux d''actualisation appelle-t-il une analyse de sensibilité ?
4. Donnez un exemple d''hypothèse pour la ligne des résultats du cadre logique.

## Corrigé

1. VAN ≈ 156,92 − 160 = −3,08 M : le projet ne serait plus rentable au taux de 10 %.

2. (14 − 30) / (10 − 30) = 16 / 20 = 80 %.

3. Une petite baisse des flux (prix, volumes) ou une hausse du coût d''investissement suffirait à rendre la VAN négative. L''analyse de sensibilité mesure l''effet de ces variations et identifie les variables critiques.

4. « Les producteurs acceptent d''apporter leur récolte au centre et de payer les frais de stockage. »', 'texte', 90, false, 50
from public.courses c where c.slug = 'lic-projet-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Licence 3 en Gestion de projets');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Montage et évaluation de projets de développement', '## Fiche du cours vidéo

Durée : 1h30. Public : Licence 3 gestion de projets. Objectifs : parcourir le cycle du projet, construire arbre à problèmes, arbre à objectifs et cadre logique, présenter les volets de la faisabilité, calculer et interpréter VAN, IP, TRI et délai de récupération actualisé. Matériel : tableau, diaporama, calculatrice, tableur facultatif. Prérequis : notions d''actualisation, budget de projet.

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Bonjour à toutes et à tous. Un bailleur reçoit chaque année des centaines de demandes de financement. Lesquelles retient-il ? Celles qui démontrent clairement le problème, la logique de la solution, la faisabilité et la rentabilité ou l''utilité collective. Aujourd''hui, nous allons apprendre à monter un dossier convaincant. Fil rouge : une unité fictive de transformation de noix de cajou à Sédhiou, et un projet d''eau potable dans une commune de Kaffrine.

## 05:00 – 15:00 · Le cycle du projet

Je dessine un cercle avec six étapes : programmation, identification, formulation, financement, mise en œuvre, évaluation. Pourquoi un cercle ? Parce que les leçons de l''évaluation nourrissent la programmation suivante. À l''identification, on part d''un problème réel, pas d''une solution toute faite. Erreur classique : « Nous voulons construire un forage. » Le forage est une solution. Le problème, c''est peut-être que les enfants tombent malades à cause de l''eau. Peut-être que la bonne réponse est aussi de protéger les puits existants et de former les familles à l''hygiène.

## 15:00 – 30:00 · Arbre à problèmes, arbre à objectifs

Atelier au tableau, cas Kaffrine. Au centre : « forte prévalence des maladies hydriques chez les enfants ». En dessous, les racines : eau de puits non protégés, stockage de l''eau dans des récipients ouverts, faible connaissance des règles d''hygiène. Au-dessus, les branches : absentéisme scolaire, dépenses de santé, temps perdu par les mères.

Je retourne chaque case en positif : « puits protégés », « récipients couverts », « bonnes pratiques d''hygiène connues ». C''est l''arbre à objectifs. Puis on choisit la stratégie : le projet ne pourra pas tout faire ; il retient par exemple la protection des puits et la sensibilisation, et laisse la construction d''un réseau d''adduction à un programme national.

## 30:00 – 45:00 · Le cadre logique

Je trace la matrice : quatre lignes, quatre colonnes. Ligne 1, objectif global : « contribuer à réduire la morbidité infantile dans la commune ». Ligne 2, objectif spécifique : « les ménages consomment une eau potable ». Ligne 3, résultats : « 20 puits sont protégés », « 600 ménages appliquent les règles de stockage ». Ligne 4, activités : travaux de protection, sessions de sensibilisation, création de comités de gestion.

Colonne indicateurs : pour l''objectif spécifique, la proportion de ménages consommant une eau conforme passe de 35 % à 80 %. Colonne sources : enquête ménages, analyses du laboratoire. Colonne hypothèses : les ménages acceptent de payer une petite contribution pour l''entretien.

Logique verticale : je lis de bas en haut avec « si… et si… alors ». Si les activités sont réalisées, et si les entreprises respectent les délais, alors les puits sont protégés. Si les puits sont protégés et les pratiques adoptées, et si la nappe n''est pas polluée par ailleurs, alors les ménages consomment une eau potable. Les hypothèses sont des conditions hors du contrôle du projet : si une hypothèse est trop risquée, on parle d''hypothèse « fatale » et il faut revoir le projet.

## 45:00 – 53:00 · Pause et quiz interactif

Trois questions. Un : « 20 puits protégés », est-ce un résultat ou un objectif spécifique ? Deux : dans quelle colonne met-on « rapport du laboratoire » ? Trois : « Le gouvernement maintient la gratuité des analyses d''eau » : quelle colonne ?

Réponses : un résultat ; la colonne sources de vérification ; la colonne hypothèses.

## 53:00 – 1:00:00 · Les études de faisabilité

Six volets à retenir. Technique : la nappe est-elle accessible, les maçons savent-ils faire ? Commerciale : pour l''unité de cajou, y a-t-il des acheteurs, à quel prix ? Financière : l''unité gagne-t-elle de l''argent ? Économique : le projet crée-t-il de la valeur pour la collectivité, en corrigeant les prix faussés par les subventions ou les taxes et en ajoutant les effets non marchands ? Sociale et environnementale : qui gagne, qui perd, quelles nuisances, quelles mesures ? Institutionnelle : qui gérera après le projet ?

Un projet peut être financièrement non rentable et économiquement très utile, comme une piste rurale. L''inverse existe aussi : rentable pour l''investisseur, mais coûteux pour la collectivité s''il pollue une rivière. Pour l''analyse économique, retenez la logique sans entrer dans des calculs complexes en Licence : on retire des coûts les transferts qui ne consomment pas de ressources pour la collectivité, comme certaines taxes, on corrige les prix fortement subventionnés, et l''on ajoute les avantages non vendus, comme le temps gagné par les producteurs grâce à la piste ou les soins évités grâce à l''eau potable. Le résultat s''appelle souvent la VAN économique ou le taux de rentabilité économique.

## 1:00:00 – 1:15:00 · VAN, IP, TRI, DRCI : correction commentée

Unité de cajou : 250 millions investis, flux de 60, 70, 80, 80, 90 millions, taux 10 %. Je construis le tableau à l''écran. Année 1 : facteur 0,9091, flux actualisé 54,55, cumul −195,45. Année 2 : 0,8264, 57,85, cumul −137,60. Année 3 : 0,7513, 60,11, cumul −77,50. Année 4 : 0,6830, 54,64, cumul −22,86. Année 5 : 0,6209, 55,88, cumul +33,03.

La VAN est la dernière valeur du cumul : 33,03 millions. Positive : le projet crée de la valeur au-delà de la rémunération exigée de 10 %. IP : 1 + 33,03 / 250, environ 1,13. Délai de récupération : le cumul devient positif pendant l''année 5. Il manquait 22,86 au début de l''année 5, qui rapporte 55,88 actualisés : 22,86 / 55,88 = 0,41 année, soit environ 5 mois. Total : 4 ans et 5 mois environ.

TRI : on cherche le taux qui annule la VAN. À 12 %, la VAN vaut environ 18,23 ; à 15 %, environ −1,81. Interpolation : 12 + 3 × 18,23 / 20,04, soit environ 14,73 %. Le calcul exact au tableur donne environ 14,71 %. L''interpolation linéaire donne une bonne approximation quand les deux taux sont proches.

Comparaison de projets exclusifs : A, VAN 18,39 et TRI 18,0 % ; B, VAN 14,71 et TRI 17,8 %. On retient A. Si les deux critères divergeaient, on privilégierait la VAN, qui mesure la richesse créée en FCFA.

Allons plus loin avec l''analyse de sensibilité, que les jurys apprécient beaucoup. La somme des flux actualisés de l''unité de cajou vaut environ 283,03 millions. Si tous les flux baissaient de 10 %, par exemple à cause d''une chute du prix de l''amande sur le marché international, la somme tomberait à 0,9 × 283,03 ≈ 254,72 millions, et la VAN à environ 4,72 millions seulement. Encore positive, mais de justesse. À partir de quelle baisse la VAN devient-elle nulle ? Il faut que la somme actualisée tombe à 250 : la baisse critique est 33,03 / 283,03, soit environ 11,7 %. Cela signifie qu''une baisse des flux de plus de 11,7 % rend le projet non rentable au taux de 10 %. Le promoteur doit donc sécuriser ses débouchés, par exemple par des contrats d''achat avec des exportateurs, avant de convaincre un financeur.

Dernier exercice commenté, le projet C de la leçon : 60 millions investis, flux de 20, 25 et 30. Flux actualisés à 10 % : 18,18, 20,66 et 22,54, total 61,38. VAN : 1,38 million. À 12 %, la VAN devient légèrement négative, environ −0,86. Le TRI se situe donc entre 10 et 12 %, autour de 11,2 %. Projet acceptable, mais avec une marge très faible.

## 1:15:00 – 1:30:00 · Synthèse et évaluation finale

Synthèse : partir du problème, construire l''arbre, choisir la stratégie, formaliser le cadre logique, vérifier la faisabilité sous tous ses angles, puis calculer les critères financiers avec un tableau rigoureux.

Évaluation finale.

1. Facteur d''actualisation à 10 % pour l''année 2 ? Réponse : 1 / 1,21 ≈ 0,8264.
2. Investissement 100, flux actualisés cumulés 112 : VAN et IP ? Réponse : VAN 12 ; IP 1,12.
3. VAN à 8 % = +5 ; VAN à 10 % = −3. TRI approximatif ? Réponse : 8 + 2 × 5 / 8 = 9,25 %.
4. Que met-on dans la colonne hypothèses ? Réponse : les conditions externes, hors du contrôle du projet, nécessaires à l''atteinte du niveau supérieur.
5. Citez trois volets de la faisabilité. Réponse : technique, financier, économique (ou commercial, social et environnemental, institutionnel).

Merci. Exercez-vous avec le projet C de votre leçon. Et pour votre mémoire ou votre projet tutoré, appliquez toute la démarche à une idée réelle de votre région : arbre à problèmes, cadre logique, faisabilité et tableau d''actualisation. Un dossier complet, même modeste, vous apprendra davantage que dix exercices isolés, et constituera un excellent support pour un entretien de stage ou d''admission en Master.', 'video', 90, false, 60
from public.courses c where c.slug = 'lic-projet-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Montage et évaluation de projets de développement');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Gestion de portefeuille et pilotage par tableaux de bord', '## Fiche du cours vidéo

Durée : 1h30. Public : Licence 3 gestion de projets. Objectifs : distinguer projet, programme et portefeuille ; prioriser par notation pondérée ; sélectionner sous contrainte budgétaire ; concevoir et commenter un tableau de bord. Matériel : tableau, diaporama, tableur. Prérequis : valeur acquise (SPI, CPI), VAN.

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Bonjour. Une banque régionale fictive dont le siège est à Dakar a vingt idées de projets pour l''année : nouvelles agences, application mobile, mise en conformité, formation, nouveau système informatique. Elle n''a ni l''argent ni les équipes pour tout faire. Qui décide, et comment ? C''est la gestion de portefeuille. Ensuite, une fois les projets lancés, comment la direction sait-elle lesquels vont bien ? C''est le tableau de bord.

## 05:00 – 15:00 · Projet, programme, portefeuille

Je dessine trois cercles emboîtés. Le projet : la nouvelle agence de Thiès. Le programme : l''ensemble des agences et du réseau de guichets automatiques d''une stratégie d''expansion, coordonnés car ils partagent la même campagne de communication et les mêmes recrutements. Le portefeuille : tous les projets et programmes de la banque, liés ou non, qui se disputent le même budget et les mêmes compétences.

Phrase à retenir pour l''examen : la gestion de portefeuille s''assure qu''on fait les bons projets ; la gestion de projet, qu''on fait bien les projets.

## 15:00 – 30:00 · Notation pondérée

Méthode en quatre étapes. Un : choisir des critères qui traduisent la stratégie, par exemple alignement stratégique, rentabilité, urgence, faisabilité. Deux : les pondérer, total 100 %. Trois : noter chaque projet de 1 à 5 avec une grille définie à l''avance. Quatre : calculer la somme pondérée.

Exemple : pondérations 40, 30, 20 et 10 %. P1 noté 4, 3, 5, 2 : 1,6 + 0,9 + 1,0 + 0,2 = 3,7. P2 noté 5, 2, 3, 4 : 2,0 + 0,6 + 0,6 + 0,4 = 3,6. P3 noté 3, 5, 4, 3 : 1,2 + 1,5 + 0,8 + 0,3 = 3,8. Classement : P3, P1, P2.

Attention : changez les pondérations et le classement peut changer. Avec des pondérations de 60, 20, 10 et 10 %, P2 obtiendrait 4,1, P1 3,7 et P3 3,5 : P2 passerait en tête. C''est pourquoi les pondérations sont validées par la direction avant la notation, sinon on peut « fabriquer » le résultat qu''on veut.

## 30:00 – 42:00 · Sélection sous contrainte budgétaire

Enveloppe : 450 millions. Projets : A coûte 200 pour une VAN de 40 ; B 150 pour 35 ; C 250 pour 50 ; D 100 pour 20. Le réflexe naïf : prendre le projet de plus forte VAN, C, puis compléter. C + A = 450, VAN 90. Mais regardons A + B + D : 200 + 150 + 100 = 450, VAN 40 + 35 + 20 = 95. Meilleur ! B + C = 400, VAN 85, et il reste 50 millions inutilisés.

Avec peu de projets, on énumère les combinaisons. Avec beaucoup de projets, on utilise des outils d''optimisation au tableur. L''indice de profitabilité donne une première indication : B a l''IP le plus élevé, 1,23. Mais il faut toujours vérifier la combinaison finale.

## 42:00 – 50:00 · Pause et quiz interactif

Trois questions. Un : un ensemble de forages et de formations coordonnés pour un objectif commun, projet, programme ou portefeuille ? Deux : avec les pondérations 40/30/20/10, quelle note pour un projet noté 5, 5, 1, 1 ? Trois : avec une enveloppe de 250 millions et les projets A, B, C, D, quelle combinaison ?

Réponses. Un : programme. Deux : 2,0 + 1,5 + 0,2 + 0,1 = 3,8. Trois : les combinaisons possibles sont A seul (40), B seul (35), C seul (50), D seul (20), B + D (55), A + D dépasse avec 300. La meilleure est B + D, VAN 55.

## 50:00 – 1:00:00 · Le bureau des projets et la gouvernance

Le bureau des projets harmonise les méthodes, fournit les modèles de note de cadrage, de registre des risques et de rapport, consolide les données et prépare le comité de portefeuille. Selon son pouvoir, il est d''appui, de contrôle ou directif. Le comité de portefeuille, présidé par la direction générale, décide : lancer, poursuivre, réorienter, suspendre ou arrêter un projet. Arrêter un projet qui ne sert plus la stratégie libère des ressources : ce n''est pas un échec mais une bonne décision.

Le comité veille aussi à l''équilibre du portefeuille. Je dessine un graphique à bulles : en abscisse le risque, en ordonnée la valeur attendue, la taille de chaque bulle représentant le budget. Un portefeuille sain contient des projets sûrs qui rapportent régulièrement, quelques projets plus risqués mais prometteurs, comme l''application mobile, et les projets obligatoires de mise en conformité, qui ne rapportent rien directement mais évitent des sanctions. Si toutes les bulles sont en haut à droite, la banque prend trop de risques ; si elles sont toutes en bas à gauche, elle ne prépare pas l''avenir. On regarde aussi la charge des ressources rares : si trois projets prioritaires ont besoin des deux mêmes architectes informatiques au même trimestre, il faut étaler les lancements.

Enfin, les projets passent par des portes de décision successives : idée, étude de faisabilité, lancement, mi-parcours, clôture. À chaque porte, le comité vérifie que le projet reste pertinent et que ses indicateurs justifient la suite.

## 1:00:00 – 1:15:00 · Concevoir et lire un tableau de bord

Un tableau de bord sert à décider. Pas plus de cinq à dix indicateurs. Pour chacun : valeur actuelle, cible, seuil d''alerte, tendance par une flèche. Les règles de couleur sont écrites : par exemple vert si SPI et CPI supérieurs ou égaux à 0,95, orange entre 0,85 et 0,95, rouge en dessous de 0,85. Ces seuils sont un choix interne de l''organisation.

Correction commentée. Agence de Thiès : SPI 0,98, CPI 0,96 : vert. Application mobile : SPI 0,88, CPI 1,02 : orange à cause du délai. Mise en conformité : SPI 0,80, CPI 0,90 : rouge. Lecture : la mise en conformité est obligatoire et en difficulté, priorité numéro un du comité. On peut y affecter temporairement deux analystes de l''agence, qui est en bonne santé. L''application mobile doit présenter un plan de rattrapage.

Exercice 6 de la leçon : SPI 0,92 et CPI 0,83. Le CPI est sous 0,85 : rouge. Décisions : analyse des causes et plan d''économies sous un mois, nouvelle estimation à l''achèvement, arbitrage éventuel sur le périmètre.

Erreurs fréquentes : un tableau de bord de quarante indicateurs que personne ne lit ; des indicateurs sans cible ; des données vieilles de trois mois ; des couleurs attribuées « au feeling ».

Construisons ensemble un tableau de bord pour la construction d''un lycée. Je propose sept lignes : avancement physique, avec une cible de 50 % au mois 8 ; SPI et CPI, avec les seuils du cours ; jalons tenus, par exemple fondations, élévation, toiture, réception ; nombre de risques critiques ouverts, cible zéro risque rouge sans plan de réponse ; non-conformités relevées par le contrôleur ; incidents de sécurité sur le chantier, cible zéro. Pour chaque ligne, la source est indiquée : rapport du bureau de contrôle, comptabilité du projet, registre des risques. Le tableau tient sur une page, avec en bas trois messages clés et les décisions attendues du comité. C''est ce dernier encadré qui fait la différence entre un tableau de bord et un simple rapport.

Au niveau du portefeuille, on consolide : nombre de projets par couleur, budget total engagé et consommé, principaux risques transversaux, ressources en tension. La direction voit en un coup d''œil où concentrer son attention.

## 1:15:00 – 1:30:00 · Synthèse et évaluation finale

Synthèse : choisir les bons projets par des critères alignés et validés, optimiser la combinaison sous contrainte, gouverner par un comité et un bureau des projets, piloter avec un tableau de bord sobre et fondé sur des règles.

Évaluation finale.

1. Différence entre programme et portefeuille ? Réponse : le programme regroupe des projets liés pour des bénéfices communs ; le portefeuille regroupe des projets et programmes, liés ou non, pour atteindre la stratégie avec des ressources limitées.
2. Note pondérée d''un projet noté 3, 3, 3, 3 ? Réponse : 3.
3. Pourquoi valider les pondérations avant de noter ? Réponse : pour éviter de manipuler le classement.
4. SPI 0,96 et CPI 0,86 avec les règles du cours ? Réponse : orange.
5. Citez trois qualités d''un bon indicateur de tableau de bord. Réponse : utile à la décision, assorti d''une cible et d''un seuil, mis à jour régulièrement.

Merci, à la prochaine séance. D''ici là, prenez trois projets de votre association étudiante ou de votre quartier, proposez quatre critères pondérés, notez-les et construisez un tableau de bord d''une page pour le projet classé premier. Apportez-le : nous comparerons vos pondérations et vous verrez combien ce choix influence le résultat.', 'video', 90, false, 70
from public.courses c where c.slug = 'lic-projet-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Gestion de portefeuille et pilotage par tableaux de bord');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Suivi-évaluation et marchés publics', '## Fiche du cours vidéo

Durée : 1h30. Public : Licence 3 gestion de projets. Objectifs : construire une chaîne de résultats et des indicateurs, calculer un taux de réalisation, appliquer les critères d''évaluation ; connaître les principes et étapes de la commande publique et la logique d''évaluation des offres. Matériel : tableau, diaporama, calculatrice. Prérequis : cadre logique.

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Bonjour. Deux questions reviennent dans tous les projets financés sur fonds publics ou par des bailleurs : « Qu''avez-vous obtenu avec l''argent ? » et « Avez-vous acheté de façon régulière ? ». La première relève du suivi-évaluation, la seconde de la commande publique. Ce sont deux piliers de la redevabilité. Fil rouge : un projet fictif de santé maternelle dans un district sanitaire de la région de Kolda.

## 05:00 – 15:00 · Suivi ou évaluation ?

Le suivi, c''est le tableau de bord de la voiture : on le regarde en permanence. On collecte chaque mois le nombre de consultations, les dépenses, les formations réalisées. L''évaluation, c''est le contrôle technique : ponctuel, approfondi, souvent externe. On se demande si le projet était pertinent, s''il a atteint ses objectifs, à quel coût, avec quels effets durables. Les deux se complètent : sans données de suivi, l''évaluateur n''a rien à analyser.

## 15:00 – 30:00 · Chaîne de résultats et indicateurs

Je dessine cinq boîtes reliées par des flèches : intrants, activités, extrants, effets, impact. Kolda : intrants, 150 millions de FCFA, deux sages-femmes formatrices, des kits ; activités, formations, équipement des postes de santé, causeries communautaires ; extrants, 40 agents formés, 12 postes équipés ; effets, plus de femmes font leurs consultations prénatales ; impact, baisse de la mortalité maternelle à long terme.

Un indicateur complet : définition, unité, référence, cible, échéance, source, fréquence, responsable. Exemple : taux de femmes enceintes ayant effectué les consultations prénatales recommandées ; référence 40 % ; cible 70 % à la fin de l''année 3 ; source, registres des postes de santé ; collecte trimestrielle ; responsable, le chargé de suivi-évaluation. Désagrégez quand c''est utile, par zone ou par tranche d''âge.

## 30:00 – 40:00 · Calculs de suivi : correction commentée

Valeur actuelle de l''indicateur : 58 %. Taux de réalisation : (58 − 40) / (70 − 40) = 18 / 30 = 60 %. Erreur fréquente : calculer 58 / 70 = 83 %, ce qui ignore la situation de départ et surestime la performance.

Indicateur décroissant : pertes après récolte, référence 30 %, cible 10 %, valeur 22 %. (22 − 30) / (10 − 30) = −8 / −20 = 40 %. La formule fonctionne dans les deux sens, à condition de garder les signes.

Coût par bénéficiaire : 150 millions pour 1 200 femmes suivies, soit 125 000 FCFA par bénéficiaire. Ce chiffre n''a de sens qu''en comparaison avec des projets similaires.

## 40:00 – 48:00 · Pause et quiz interactif

Trois questions. Un : « 12 postes de santé équipés », extrant ou effet ? Deux : référence 20, cible 50, valeur 35 ; taux de réalisation ? Trois : « les comités de santé continueront-ils à fonctionner après le projet ? », quel critère d''évaluation ?

Réponses : extrant ; (35 − 20) / (50 − 20) = 50 % ; viabilité ou durabilité.

## 48:00 – 58:00 · Les critères d''évaluation

Les six critères du Comité d''aide au développement de l''OCDE, révisés en 2019. Pertinence : le projet répond-il aux besoins des femmes et aux priorités sanitaires ? Cohérence : s''articule-t-il avec le programme national et les autres partenaires du district ? Efficacité : les objectifs sont-ils atteints ? Efficience : les ressources ont-elles été bien utilisées, au bon moment ? Impact : quels changements durables, voulus ou non ? Viabilité : les bénéfices se maintiendront-ils ?

Une évaluation rigoureuse croise les sources : données du suivi, entretiens, groupes de discussion avec les femmes, visites. Elle formule des recommandations concrètes.

Un mot sur le plan de suivi-évaluation et la qualité des données. Le plan précise qui collecte quoi, avec quel outil, à quelle fréquence, et qui analyse. Il a un budget propre : enquête de référence, enquêtes de suivi, évaluation finale, formation des agents de collecte. Un projet qui oublie de faire l''enquête de référence au démarrage ne pourra jamais prouver son effet, car il n''aura pas de point de départ. Quant aux données, vérifiez-les : un poste de santé qui déclare exactement le même nombre de consultations trois mois de suite mérite une visite. Des données fausses produisent des décisions fausses.

## 58:00 – 1:10:00 · Principes de la commande publique

Changeons de pilier. Dans l''espace UEMOA, les réglementations nationales des marchés publics s''inscrivent dans un cadre harmonisé par des directives communautaires. Chaque État a son code ou sa réglementation, révisés périodiquement ; au Sénégal, le dispositif comprend notamment un organe de régulation et un organe de contrôle. Les projets financés par un bailleur peuvent suivre les règles de ce bailleur selon la convention. Je ne vous donne volontairement aucun seuil chiffré : ils changent et diffèrent selon les textes. Votre réflexe professionnel doit être de consulter le texte en vigueur et la cellule de passation des marchés.

Les principes communs : liberté d''accès, égalité de traitement, transparence, économie et efficacité. L''appel d''offres ouvert est en principe la règle ; les autres procédures sont des exceptions encadrées.

Les étapes : plan de passation ; dossier d''appel d''offres avec spécifications et critères fixés à l''avance ; publicité ; ouverture publique des plis ; évaluation par une commission ; attribution provisoire publiée ; délai de recours ; signature, approbation, notification ; exécution et réception.

## 1:10:00 – 1:20:00 · Évaluer des offres : correction commentée

Pour des fournitures, on retient en général l''offre conforme évaluée la moins-disante : d''abord la conformité, ensuite la correction des erreurs arithmétiques, enfin le classement par prix.

Exemple fictif : achat de lits d''accouchement pour les postes de santé. Trois offres sont lues à l''ouverture des plis : A à 52 millions, B à 53 millions, C à 55 millions. La commission vérifie la conformité : il manque à B un document exigé par le dossier comme éliminatoire ; selon les règles du dossier, B est écartée. Elle vérifie ensuite les calculs : dans l''offre A, une quantité multipliée par le prix unitaire donne en réalité 54 millions et non 52 ; selon la règle habituelle des dossiers, le prix unitaire fait foi et le total est corrigé à 54 millions. Classement : A à 54 millions, puis C à 55 millions. A reste la moins-disante et est proposée pour l''attribution. Les candidats sont informés et disposent d''un délai pour exercer un recours avant la signature. Remarquez que chaque étape s''appuie sur des règles écrites dans le dossier : c''est la meilleure protection contre les contestations.

Pour des prestations intellectuelles, on combine qualité et prix. Exemple avec des pondérations fictives : 80 % technique, 20 % financier. Note financière égale à 100 fois le prix le plus bas divisé par le prix de l''offre. X : technique 85, prix 48 millions, note financière 83,33, finale 84,67. Y : technique 78, prix 40 millions, note financière 100, finale 82,40. Z : technique 90, prix 60 millions, note financière 66,67, finale 85,33. Z gagne. Avec 70/30, Y gagnerait de justesse avec 84,60 contre 84,50 pour X et 83,00 pour Z. Conclusion : les pondérations doivent figurer dans le dossier avant l''ouverture des offres ; les modifier après serait une violation de l''égalité de traitement.

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Synthèse : le suivi est continu, l''évaluation ponctuelle ; l''indicateur se juge par rapport à sa référence et à sa cible ; six critères structurent l''évaluation ; la commande publique repose sur des principes, des étapes et des critères fixés à l''avance, et l''on vérifie toujours le texte en vigueur.

Évaluation finale.

1. Classez « organisation de causeries » dans la chaîne de résultats. Réponse : activité.
2. Référence 10 %, cible 60 %, valeur 35 %. Taux de réalisation ? Réponse : 25 / 50 = 50 %.
3. Quel critère interroge l''articulation avec les autres interventions ? Réponse : la cohérence.
4. Citez trois principes de la commande publique. Réponse : liberté d''accès, égalité de traitement, transparence.
5. Pourquoi fixer les critères d''évaluation avant l''ouverture des plis ? Réponse : pour garantir l''égalité de traitement et la transparence, et éviter de favoriser un candidat.

Merci pour votre attention et bonne préparation. Pour la prochaine séance, choisissez un projet de votre commune ou d''une ONG que vous connaissez, reconstituez sa chaîne de résultats, proposez trois indicateurs complets avec référence et cible, puis formulez une question d''évaluation pour chacun des six critères. Pour la partie marchés publics, recherchez le texte en vigueur dans votre pays et identifiez par vous-même la procédure de droit commun et les institutions chargées de la régulation et du contrôle : c''est le meilleur moyen de ne jamais citer de mémoire un seuil ou un article erroné le jour de l''examen.', 'video', 90, false, 80
from public.courses c where c.slug = 'lic-projet-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Suivi-évaluation et marchés publics');

-- Cours : Informatique Licence 1 : réussir ses examens (algorithmique, architecture, mathématiques)
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'lic-info-l1', (select id from public.levels where name = 'Licence 1'), null, 'Informatique', 'Informatique Licence 1 : réussir ses examens (algorithmique, architecture, mathématiques)', 'Ce cours prépare aux partiels et examens semestriels de Licence 1 en informatique : algorithmique et programmation en Python, architecture des ordinateurs et systèmes de numération (binaire, hexadécimal, logique booléenne), mathématiques pour l''informatique (logique, ensembles, matrices). Il réunit fiches de cours, exercices corrigés, un sujet type d''examen et trois cours vidéo de 1h30. Prérequis : niveau baccalauréat scientifique ou équivalent, aucune expérience de programmation exigée.', true, 321
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Licence 1 en Informatique', '## Objectifs de la leçon

- Comprendre comment est organisée une année de Licence 1 dans le système LMD.
- Connaître les trois matières clés de l''année et ce que les examinateurs attendent.
- Identifier les types d''épreuves et la bonne façon d''y répondre.
- Construire un plan de révision réaliste sur six semaines.

## 1. La Licence 1 dans le système LMD

Les universités et écoles du Sénégal et de l''espace UEMOA fonctionnent selon le système LMD : Licence, Master, Doctorat. La Licence se prépare en trois années, soit six semestres. La Licence 1 correspond aux semestres 1 et 2.

Chaque semestre est découpé en unités d''enseignement (UE). Une UE regroupe une ou plusieurs matières, parfois appelées éléments constitutifs (EC ou ECUE). Par exemple, une UE « Programmation » peut contenir un cours d''algorithmique et des travaux pratiques en Python. À chaque UE est attaché un nombre de crédits, qui mesure la charge de travail demandée à l''étudiant (cours, TD, TP et travail personnel).

Retiens trois mécanismes généraux, sachant que leurs règles précises (note minimale, coefficients, nombre de crédits pour passer) varient d''un établissement à l''autre et figurent dans le règlement des examens de ta faculté ou de ton école :

- La capitalisation : une UE validée reste acquise, même si l''année n''est pas entièrement validée.
- La compensation : selon le règlement, une note faible dans une matière peut être compensée par une bonne note dans une autre matière de la même UE, ou entre UE d''un même semestre.
- La session de rattrapage : elle permet de repasser les épreuves non validées. Ne compte pas dessus : la préparer pendant les vacances coûte plus cher en énergie que réussir en session normale.

Conseil pratique : dès la rentrée, récupère la maquette de ta formation (liste des UE, coefficients, crédits, modalités de contrôle) et colle-la au début de ton classeur.

## 2. Les matières clés de la Licence 1 Informatique

Ce cours couvre les trois piliers qu''on retrouve dans presque toutes les maquettes de première année.

- Algorithmique et programmation (Python) : variables, conditions, boucles, fonctions, listes, chaînes de caractères, algorithmes classiques (somme, maximum, recherche, tri). On attend que tu saches écrire un algorithme correct, le traduire en Python et suivre son exécution à la main.
- Architecture des ordinateurs et systèmes de numération : modèle de von Neumann, processeur, mémoire, bus, conversions entre décimal, binaire et hexadécimal, codage des entiers négatifs, logique booléenne et portes logiques. On attend des calculs exacts et une présentation claire des étapes.
- Mathématiques pour l''informatique : logique propositionnelle, tables de vérité, ensembles, cardinaux, matrices simples. On attend de la rigueur dans les notations et des justifications courtes mais complètes.

Ces trois matières se répondent : la logique booléenne de l''architecture est la même que la logique propositionnelle des mathématiques, et les conditions d''un programme Python sont des expressions booléennes. Réviser l''une aide à comprendre les autres.

## 3. Les types d''épreuves et comment y répondre

- Exercice d''algorithmique sur papier : on te demande d''écrire une fonction. Écris d''abord l''idée en une phrase, puis le code bien indenté, puis teste-le à la main sur un petit exemple. Un code sans indentation lisible perd des points, même s''il est juste.
- Trace d''exécution : on te donne un programme et on te demande ce qu''il affiche. Fais un tableau avec une colonne par variable et une ligne par tour de boucle. Ne saute aucune étape.
- QCM : très fréquent en architecture et en mathématiques. Lis toutes les propositions ; méfie-toi des questions où plusieurs réponses sont justes. Si le barème pénalise les mauvaises réponses, ne réponds pas au hasard.
- Exercice chiffré : conversions, complément à deux, produits de matrices. Pose chaque étape, encadre le résultat, vérifie par la conversion inverse.
- Questions de cours : définitions (bit, octet, registre, tautologie, matrice identité…). Apprends des définitions courtes et exactes, accompagnées d''un exemple.
- TP noté ou projet : un petit programme à rendre. On évalue le fonctionnement, la lisibilité (noms de variables, commentaires) et le respect des consignes et des délais.
- Cas pratique : un problème concret, par exemple calculer la facture d''une boutique de Thiès ou les frais d''un transfert d''argent. Il faut modéliser (quelles données, quel résultat ?) avant de coder.

## 4. Une méthode de révision qui marche

Lire son cours ne suffit pas. Ce qui fait progresser, c''est de produire : écrire du code, faire des conversions, refaire des exercices sans regarder le corrigé.

- Fiches : une fiche par chapitre, avec définitions, méthodes et un exemple résolu. Pas plus d''une page recto verso.
- Programmation à la main : l''examen se passe souvent sans ordinateur. Entraîne-toi à écrire du Python sur papier, puis vérifie sur machine (ordinateur, ou même un interpréteur Python sur téléphone).
- Rappel actif : ferme le cours et réécris de mémoire, par exemple, la table de vérité de l''implication ou l''algorithme du tri par sélection.
- Annales : les sujets des années précédentes, quand ton département les met à disposition, montrent le style de l''enseignant. Fais-les en temps limité.
- Travail en groupe : expliquer un exercice à un camarade est le meilleur test de compréhension. Trois ou quatre étudiants, deux séances par semaine, c''est un bon rythme.
- Sommeil et santé : une nuit blanche avant un examen d''algorithmique fait perdre plus de points qu''elle n''en fait gagner.

## 5. Le jour de l''épreuve

Lis tout le sujet pendant les cinq premières minutes et repère le barème. Commence par l''exercice que tu maîtrises le mieux pour prendre confiance. Garde dix minutes à la fin pour relire : indentation, parenthèses, conversions vérifiées, unités indiquées.

## 6. Plan de révision sur six semaines

- Semaine 1 : bilan. Relis les trois maquettes de cours, liste les chapitres, classe-les en « maîtrisé », « fragile », « pas compris ». Commence les fiches d''algorithmique.
- Semaine 2 : Python. Conditions, boucles, fonctions, listes ; 2 exercices par jour, dont une trace d''exécution.
- Semaine 3 : architecture et numération. Conversions quotidiennes (10 minutes par jour), complément à deux, portes logiques, tables de vérité.
- Semaine 4 : mathématiques pour l''informatique. Logique, ensembles, matrices ; refais tous les TD.
- Semaine 5 : sujets complets. Deux sujets types en temps limité, correction sévère, retour sur les points faibles.
- Semaine 6 : consolidation. Relecture des fiches, rappel actif, un dernier sujet, repos la veille de chaque épreuve.

## Points clés

- Le système LMD repose sur des UE, des crédits, la capitalisation et, selon le règlement, la compensation : vérifie les règles de ton établissement.
- Trois piliers en L1 : programmation, architecture et numération, mathématiques pour l''informatique.
- On réussit en produisant : code à la main, conversions, exercices refaits sans corrigé.

## Exercices pratiques

1. Cite trois documents à récupérer auprès de ta scolarité dès la rentrée et explique à quoi sert chacun.
2. Un étudiant dit : « Je relis mon cours de Python trois fois, je suis prêt. » Quelle erreur de méthode commet-il ?
3. Pour une trace d''exécution, comment organiser ta copie ?
4. Échauffement : que vaut 7 // 2 en Python ? et 7 % 2 ?
5. Échauffement : convertis 13 en binaire.
6. Établis ton propre planning de la semaine 3 jour par jour.

## Corrigé

1. La maquette de la formation (liste des UE, matières, crédits), le règlement des examens (règles de validation, compensation, rattrapage) et le calendrier universitaire (dates des partiels et des sessions). Ils permettent de savoir où mettre ses efforts et quand.
2. Il se contente d''une lecture passive. Il doit écrire du code à la main, faire des traces d''exécution et refaire des exercices sans corrigé.
3. Un tableau avec une colonne par variable (et une colonne « affichage »), une ligne par instruction importante ou par tour de boucle.
4. 7 // 2 vaut 3 (quotient entier) et 7 % 2 vaut 1 (reste). En effet 7 = 2 × 3 + 1.
5. 13 = 8 + 4 + 1, donc 13 s''écrit 1101 en binaire.
6. Exemple : lundi conversions décimal-binaire-hexadécimal ; mardi complément à deux ; mercredi modèle de von Neumann et cycle d''instruction ; jeudi portes logiques ; vendredi tables de vérité et De Morgan ; samedi mini-sujet de 1 heure ; dimanche repos et relecture des fiches.', 'texte', 60, true, 10
from public.courses c where c.slug = 'lic-info-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Licence 1 en Informatique');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Algorithmique et programmation (Python) : l''essentiel pour l''examen', '## Objectifs de la leçon

- Maîtriser les bases du langage : variables, types, opérateurs, conditions, boucles.
- Écrire des fonctions correctes et les tester.
- Connaître les algorithmes classiques sur les listes : somme, maximum, comptage, recherche, tri par sélection.
- Réaliser une trace d''exécution sans erreur.

## Fiche 1 : variables, types et opérateurs

Une variable est un nom associé à une valeur stockée en mémoire. L''affectation s''écrit avec le signe = : prix = 1500. Les types de base sont : int (entier), float (nombre à virgule, écrit avec un point : 2.5), str (chaîne de caractères entre guillemets) et bool (True ou False).

Opérateurs à connaître : + − * / pour les quatre opérations (attention, / donne toujours un float : 7 / 2 vaut 3.5) ; // pour le quotient entier ; % pour le reste ; pow(a, b) pour la puissance a à la puissance b. Les comparaisons (==, !=, <, <=, >, >=) donnent un booléen ; on les combine avec and, or, not.

Attention : input() renvoie toujours une chaîne, à convertir avec int() ou float().

## Fiche 2 : conditions et boucles

La condition if / elif / else exécute un bloc selon la valeur d''une expression booléenne. Le bloc est défini par l''indentation (quatre espaces).

La boucle for répète un bloc pour chaque élément d''une séquence : for i in range(1, 6) parcourt 1, 2, 3, 4, 5 (la borne de fin est exclue). La boucle while répète tant qu''une condition est vraie ; il faut s''assurer qu''elle devient fausse un jour.

Exemple : une boutique de Thiès accorde une remise commerciale de 5 % si la facture atteint 50 000 FCFA (règle commerciale fictive pour l''exemple).

prix = [12500, 3000, 800]
quantites = [3, 4, 10]
total = 0
for k in range(len(prix)):
    total = total + prix[k] * quantites[k]
if total >= 50000:
    total = total - total * 5 // 100
print(total)

Calcul : 12 500 × 3 = 37 500 ; 3 000 × 4 = 12 000 ; 800 × 10 = 8 000 ; total brut 57 500 FCFA. La remise vaut 57 500 × 5 / 100 = 2 875 FCFA. Le programme affiche 54625.

## Fiche 3 : fonctions

Une fonction regroupe des instructions sous un nom, reçoit des paramètres et renvoie un résultat avec return. Elle évite de répéter du code et se teste séparément.

def moyenne(notes):
    s = 0
    for n in notes:
        s = s + n
    return s / len(notes)

print(moyenne([12, 8, 15, 9]))

La somme vaut 44, divisée par 4 : le programme affiche 11.0. Attention à la différence entre print (afficher) et return (renvoyer une valeur utilisable par le reste du programme) : c''est une erreur classique en examen.

## Fiche 4 : les algorithmes classiques sur les listes

Une liste se note entre crochets ; ses éléments sont numérotés à partir de 0 : dans L = [4, 7, 1], L[0] vaut 4 et len(L) vaut 3. On ajoute un élément avec L.append(x).

Recherche du maximum : on suppose que le premier élément est le plus grand, puis on compare avec chacun des suivants.

def maximum(L):
    m = L[0]
    for x in L:
        if x > m:
            m = x
    return m

def compter_admis(notes):
    c = 0
    for n in notes:
        if n >= 10:
            c = c + 1
    return c

def rechercher(L, v):
    for i in range(len(L)):
        if L[i] == v:
            return i
    return -1

print(maximum([23, 41, 17, 39]), compter_admis([12, 8, 15, 9, 10]), rechercher([5, 9, 2], 2))

Le programme affiche 41 3 2 : le maximum est 41 ; trois notes sont au moins égales à 10 (12, 15 et 10) ; la valeur 2 se trouve à l''indice 2. Si la valeur est absente, rechercher renvoie -1.

Tri par sélection : pour chaque position i, on cherche le plus petit élément de la partie non triée et on l''échange avec l''élément en position i.

def tri_selection(L):
    n = len(L)
    for i in range(n - 1):
        imin = i
        for j in range(i + 1, n):
            if L[j] < L[imin]:
                imin = j
        L[i], L[imin] = L[imin], L[i]
    return L

print(tri_selection([29, 10, 14, 37, 13]))

Le programme affiche [10, 13, 14, 29, 37].

## Fiche 5 : la trace d''exécution

Pour suivre un programme, on construit un tableau : une colonne par variable, une ligne par tour. Exemple avec le programme suivant.

x = 1
for i in range(1, 5):
    x = 2 * x + i
print(x)

- Avant la boucle : x = 1.
- i = 1 : x = 2 × 1 + 1 = 3.
- i = 2 : x = 2 × 3 + 2 = 8.
- i = 3 : x = 2 × 8 + 3 = 19.
- i = 4 : x = 2 × 19 + 4 = 42.

Le programme affiche 42.

## Points clés

- Indentation de quatre espaces, deux-points après if, for, while, def.
- range(a, b) exclut b ; les indices d''une liste commencent à 0.
- Une fonction renvoie son résultat avec return ; print ne fait qu''afficher.
- Savoir réécrire de mémoire : somme, moyenne, maximum, comptage, recherche, tri par sélection.

## Exercices pratiques

1. Que valent 17 // 5, 17 % 5, 17 / 5 et pow(2, 10) ?
2. Écris une fonction pgcd(a, b) utilisant l''algorithme d''Euclide, puis calcule pgcd(84, 36).
3. Écris une fonction est_palindrome(mot) qui renvoie True si le mot se lit de la même façon dans les deux sens. Teste avec "kayak" et "dakar".
4. Fais la trace du tri par sélection sur [29, 10, 14, 37, 13] : écris la liste après chaque passage de la boucle sur i.
5. Les ventes journalières d''une échoppe de Ziguinchor sur une semaine sont [42000, 38500, 51000, 27000, 60500, 75000, 33000] (en FCFA). Écris une fonction qui renvoie la moyenne et le nombre de jours au-dessus de la moyenne. Donne les résultats.
6. Cas pratique. Un service de transfert d''argent applique des frais de 1 % du montant, plafonnés à 5 000 FCFA (barème fictif pour l''exemple). Écris une fonction frais(montant), puis une fonction total_frais(liste) qui additionne les frais d''une liste de transferts. Calcule pour [25000, 800000, 150000].

## Corrigé

1. 17 // 5 = 3 ; 17 % 5 = 2 ; 17 / 5 = 3.4 ; pow(2, 10) = 1024.

2. Euclide : tant que b n''est pas nul, on remplace (a, b) par (b, a % b).

def pgcd(a, b):
    while b != 0:
        a, b = b, a % b
    return a

print(pgcd(84, 36))

Déroulement : (84, 36) puis (36, 12) car 84 = 2 × 36 + 12, puis (12, 0) car 36 = 3 × 12. Le résultat est 12.

3. On compare le mot à son inverse, obtenu par la tranche mot[::-1].

def est_palindrome(mot):
    return mot == mot[::-1]

print(est_palindrome("kayak"), est_palindrome("dakar"))

Résultats : True pour "kayak", False pour "dakar" (son inverse est "rakad").

4. Passage i = 0 : le minimum est 10, échangé avec 29 : [10, 29, 14, 37, 13]. Passage i = 1 : minimum 13, échangé avec 29 : [10, 13, 14, 37, 29]. Passage i = 2 : minimum 14, déjà en place : [10, 13, 14, 37, 29]. Passage i = 3 : minimum 29, échangé avec 37 : [10, 13, 14, 29, 37].

5. La somme vaut 327 000 FCFA, la moyenne 327 000 / 7 ≈ 46 714,29 FCFA. Les jours au-dessus de la moyenne sont 51 000, 60 500 et 75 000 : 3 jours.

def bilan(ventes):
    moy = sum(ventes) / len(ventes)
    c = 0
    for v in ventes:
        if v > moy:
            c = c + 1
    return round(moy, 2), c

print(bilan([42000, 38500, 51000, 27000, 60500, 75000, 33000]))

Le programme affiche (46714.29, 3).

6. On calcule 1 % puis on applique le plafond avec min.

def frais(montant):
    return min(montant * 1 / 100, 5000)

def total_frais(liste):
    t = 0
    for m in liste:
        t = t + frais(m)
    return t

print(frais(25000), frais(800000), frais(150000), total_frais([25000, 800000, 150000]))

Frais : 250 FCFA pour 25 000 ; 8 000 dépasse le plafond donc 5 000 FCFA pour 800 000 ; 1 500 FCFA pour 150 000. Total : 6 750 FCFA. Le programme affiche 250.0 5000 1500.0 6750.0 (les divisions donnent des float).', 'texte', 75, false, 20
from public.courses c where c.slug = 'lic-info-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Algorithmique et programmation (Python) : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Architecture des ordinateurs et systèmes de numération : l''essentiel pour l''examen', '## Objectifs de la leçon

- Décrire le modèle de von Neumann et le cycle d''exécution d''une instruction.
- Convertir sans erreur entre décimal, binaire et hexadécimal.
- Coder un entier négatif en complément à deux et effectuer une addition binaire.
- Manipuler les portes logiques, les tables de vérité et les lois de De Morgan.

## Fiche 1 : le modèle de von Neumann

Presque tous les ordinateurs actuels suivent l''architecture décrite par von Neumann : le programme et les données sont rangés dans la même mémoire. On distingue quatre blocs.

- Le processeur (CPU), qui contient l''unité de commande (elle lit et décode les instructions), l''unité arithmétique et logique ou UAL (elle calcule) et des registres, petites mémoires très rapides. Parmi eux : le compteur ordinal, qui contient l''adresse de la prochaine instruction, et le registre d''instruction.
- La mémoire centrale (RAM), volatile : son contenu disparaît à l''extinction. La ROM, non volatile, contient par exemple le micrologiciel de démarrage.
- Les bus, ensembles de fils qui relient les blocs : bus de données, bus d''adresses, bus de contrôle.
- Les périphériques d''entrée et de sortie : clavier, écran, disque, carte réseau.

Schéma décrit en texte : au centre le processeur (unité de commande + UAL + registres), relié par les trois bus d''un côté à la mémoire centrale, de l''autre aux contrôleurs d''entrée-sortie.

Le cycle d''instruction se répète sans arrêt : 1) recherche (fetch) de l''instruction en mémoire à l''adresse indiquée par le compteur ordinal ; 2) décodage par l''unité de commande ; 3) exécution par l''UAL ou transfert de données ; puis le compteur ordinal passe à l''instruction suivante.

Hiérarchie des mémoires, de la plus rapide et la plus petite à la plus lente et la plus grande : registres, mémoire cache, RAM, disque SSD ou disque dur.

Un bus d''adresses de n bits permet de désigner pow(2, n) adresses différentes. Avec 16 bits : 65 536 adresses.

## Fiche 2 : unités

Un bit vaut 0 ou 1. Un octet compte 8 bits et peut prendre 256 valeurs. Attention aux préfixes : 1 ko (kilooctet) = 1 000 octets, alors que 1 Kio (kibioctet) = 1 024 octets ; de même 1 Mio = 1 024 Kio et 1 Gio = 1 024 Mio.

## Fiche 3 : conversions entre bases

Décimal vers binaire : divisions successives par 2, on lit les restes de bas en haut. Exemple avec 156 : 156 = 2 × 78 + 0 ; 78 = 2 × 39 + 0 ; 39 = 2 × 19 + 1 ; 19 = 2 × 9 + 1 ; 9 = 2 × 4 + 1 ; 4 = 2 × 2 + 0 ; 2 = 2 × 1 + 0 ; 1 = 2 × 0 + 1. Lecture de bas en haut : 156 = 10011100 en binaire.

Binaire vers décimal : on additionne les poids des bits à 1. 1001 1100 = 128 + 16 + 8 + 4 = 156.

Binaire vers hexadécimal : on groupe par 4 bits en partant de la droite ; chaque groupe donne un chiffre de 0 à F (A = 10, B = 11, C = 12, D = 13, E = 14, F = 15). 1001 1100 donne 9 et C : 156 = 9C en hexadécimal. Vérification : 9 × 16 + 12 = 156.

## Fiche 4 : addition binaire et complément à deux

Addition binaire : 0 + 0 = 0 ; 0 + 1 = 1 ; 1 + 1 = 10 (on pose 0, on retient 1) ; 1 + 1 + 1 = 11. Exemple : 0101 1011 (91) + 0011 0110 (54) = 1001 0001 (145).

Pour coder les entiers négatifs sur n bits, on utilise le complément à deux : on écrit la valeur absolue en binaire, on inverse tous les bits, on ajoute 1. Exemple, −45 sur 8 bits : 45 = 0010 1101 ; inversion : 1101 0010 ; plus 1 : 1101 0011, soit D3 en hexadécimal. Sur 8 bits, on représente les entiers de −128 à 127. Le bit de gauche vaut 1 pour un nombre négatif.

Pour décoder un nombre négatif, on refait la même opération.

## Fiche 5 : logique booléenne et portes logiques

Une variable booléenne vaut 0 ou 1. Opérations de base : ET (noté a.b, vaut 1 seulement si a = 1 et b = 1), OU (noté a + b, vaut 1 si au moins une entrée vaut 1), NON (noté ā ou non a, inverse la valeur). On utilise aussi le OU exclusif XOR (vaut 1 si les entrées sont différentes), NAND (non-ET) et NOR (non-OU).

Table de vérité pour deux entrées (a, b → ET, OU, XOR) :

- 0, 0 → 0, 0, 0
- 0, 1 → 0, 1, 1
- 1, 0 → 0, 1, 1
- 1, 1 → 1, 1, 0

Lois utiles : a + 0 = a ; a.1 = a ; a + ā = 1 ; a.ā = 0 ; a + a.b = a (absorption) ; a.b + a.b̄ = a. Lois de De Morgan : non(a.b) = ā + b̄ et non(a + b) = ā.b̄.

Le demi-additionneur additionne deux bits : la somme S = a XOR b et la retenue R = a ET b. Pour a = b = 1 : S = 0 et R = 1, ce qui correspond bien à 1 + 1 = 10 en binaire.

## Points clés

- Von Neumann : CPU (commande, UAL, registres), mémoire, bus, entrées-sorties ; cycle recherche, décodage, exécution.
- Complément à deux : inverser puis ajouter 1 ; sur 8 bits de −128 à 127.
- De Morgan : la négation transforme ET en OU et OU en ET.

## Exercices pratiques

1. Convertis 203 en binaire puis en hexadécimal.
2. Convertis 3F7 (hexadécimal) en décimal et en binaire.
3. Code −100 en complément à deux sur 8 bits. Quelle valeur représente 1111 0110 en complément à deux sur 8 bits ?
4. Calcule 0111 0101 + 0011 1010 en binaire. Interprète le résultat en non signé puis en signé sur 8 bits.
5. Dresse la table de vérité de F = a.b + ā.c.
6. Cas pratique. Une agence de photographie de Kaolack stocke des photos de 2 Mio chacune sur une carte mémoire de 32 Gio. Combien de photos au maximum (en négligeant le système de fichiers) ? Un microcontrôleur de son imprimante possède un bus d''adresses de 20 bits, chaque adresse désignant un octet : quelle mémoire peut-il adresser ?

## Corrigé

1. 203 = 128 + 64 + 8 + 2 + 1, donc 1100 1011 en binaire ; les groupes 1100 et 1011 donnent C et B : 203 = CB en hexadécimal. Vérification : 12 × 16 + 11 = 203.

2. 3F7 = 3 × 256 + 15 × 16 + 7 = 768 + 240 + 7 = 1015. En binaire, chaque chiffre donne 4 bits : 0011 1111 0111.

3. 100 = 0110 0100 ; inversion : 1001 1011 ; plus 1 : 1001 1100. Donc −100 s''écrit 1001 1100 (9C). Pour 1111 0110, le bit de gauche vaut 1, le nombre est négatif ; inversion : 0000 1001 ; plus 1 : 0000 1010 = 10. La valeur est −10.

4. 0111 0101 (117) + 0011 1010 (58) = 1010 1111. En non signé, 1010 1111 vaut 175 = 117 + 58 : correct. En signé sur 8 bits, le bit de gauche vaut 1 : le résultat serait lu comme négatif (−81), alors que deux positifs ont été additionnés. C''est un dépassement de capacité : 175 sort de l''intervalle −128 à 127.

5. Table (a, b, c → F) : 000 → 0 ; 001 → 1 ; 010 → 0 ; 011 → 1 ; 100 → 0 ; 101 → 0 ; 110 → 1 ; 111 → 1. Quand a = 0, F vaut c ; quand a = 1, F vaut b.

6. 32 Gio = 32 × 1 024 Mio = 32 768 Mio ; 32 768 / 2 = 16 384 photos. Avec 20 bits d''adresse : pow(2, 20) = 1 048 576 adresses, soit 1 048 576 octets = 1 Mio.', 'texte', 75, false, 30
from public.courses c where c.slug = 'lic-info-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Architecture des ordinateurs et systèmes de numération : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Mathématiques pour l''informatique : l''essentiel pour l''examen', '## Objectifs de la leçon

- Utiliser les connecteurs logiques, les tables de vérité et les quantificateurs.
- Manipuler les ensembles : opérations, cardinaux, produit cartésien, ensemble des parties.
- Calculer avec des matrices simples : somme, produit, transposée, déterminant et inverse d''une matrice 2 × 2.

## Fiche 1 : logique propositionnelle

Une proposition est un énoncé qui est soit vrai (V, ou 1), soit faux (F, ou 0). Les connecteurs sont : la négation ¬p, la conjonction p ∧ q (et), la disjonction p ∨ q (ou inclusif), l''implication p ⇒ q et l''équivalence p ⇔ q.

L''implication p ⇒ q est fausse dans un seul cas : p vrai et q faux. Table (p, q → p ⇒ q) :

- V, V → V
- V, F → F
- F, V → V
- F, F → V

Équivalences à connaître par cœur :

- p ⇒ q a la même table que ¬p ∨ q.
- La contraposée de p ⇒ q est ¬q ⇒ ¬p ; elle lui est équivalente.
- La réciproque q ⇒ p n''est pas équivalente à p ⇒ q.
- ¬(p ⇒ q) équivaut à p ∧ ¬q.
- De Morgan : ¬(p ∧ q) équivaut à ¬p ∨ ¬q ; ¬(p ∨ q) équivaut à ¬p ∧ ¬q.

Une tautologie est une formule vraie pour toutes les valeurs de ses variables (exemple : p ∨ ¬p). Une contradiction est toujours fausse (p ∧ ¬p).

Quantificateurs : ∀ (pour tout) et ∃ (il existe). Pour nier, on échange les quantificateurs et on nie la propriété : la négation de « ∀ x ∈ E, P(x) » est « ∃ x ∈ E, ¬P(x) ». Exemple : la négation de « tous les étudiants ont validé l''UE » est « au moins un étudiant n''a pas validé l''UE ».

## Fiche 2 : ensembles

Un ensemble est une collection d''objets distincts. On note x ∈ A (x appartient à A) et A ⊂ B (A est inclus dans B : tout élément de A est dans B).

- Union A ∪ B : éléments de A ou de B.
- Intersection A ∩ B : éléments communs.
- Différence A \ B : éléments de A qui ne sont pas dans B.
- Complémentaire de A dans E : E \ A.
- Produit cartésien A × B : ensemble des couples (a, b) avec a ∈ A et b ∈ B ; card(A × B) = card(A) × card(B).
- Ensemble des parties P(E) : si E a n éléments, P(E) en a pow(2, n).

Formule d''inclusion-exclusion : card(A ∪ B) = card(A) + card(B) − card(A ∩ B).

Exemple : dans une promotion de 120 étudiants d''une université de Saint-Louis, 75 sont inscrits au club de programmation, 48 au club de robotique et 30 aux deux. Inscrits à au moins un club : 75 + 48 − 30 = 93. Inscrits à aucun club : 120 − 93 = 27. Seulement en programmation : 75 − 30 = 45.

## Fiche 3 : matrices simples

Une matrice de taille n × p est un tableau de n lignes et p colonnes. On additionne deux matrices de même taille terme à terme. On multiplie par un réel en multipliant chaque terme.

Produit A × B : possible si le nombre de colonnes de A égale le nombre de lignes de B. Le terme ligne i, colonne j du produit est la somme des produits des termes de la ligne i de A par ceux de la colonne j de B. En général A × B ≠ B × A.

Exemple. Deux boutiques (Dakar, Thiès) vendent trois produits (sac de riz de 5 kg, litre d''huile, kilo de sucre). Quantités vendues dans la matinée : Q = [[10, 4, 6], [7, 9, 3]]. Prix unitaires (fictifs pour l''exemple) en colonne : P = [[3500], [1600], [700]]. Le produit Q × P donne le chiffre d''affaires de chaque boutique :

- Dakar : 10 × 3 500 + 4 × 1 600 + 6 × 700 = 35 000 + 6 400 + 4 200 = 45 600 FCFA.
- Thiès : 7 × 3 500 + 9 × 1 600 + 3 × 700 = 24 500 + 14 400 + 2 100 = 41 000 FCFA.

La transposée de A, notée tA, échange lignes et colonnes. La matrice identité I a des 1 sur la diagonale et des 0 ailleurs : A × I = A.

Pour une matrice 2 × 2 A = [[a, b], [c, d]], le déterminant vaut det A = ad − bc. Si det A ≠ 0, A est inversible et son inverse vaut (1/det A) × [[d, −b], [−c, a]]. Exemple : A = [[3, 2], [1, 4]] ; det A = 12 − 2 = 10 ; inverse = (1/10) × [[4, −2], [−1, 3]].

Application informatique : un graphe se représente par une matrice d''adjacence. Pour quatre villes D (Dakar), T (Thiès), M (Mbour), K (Kaolack) reliées par les routes D–T, D–M, T–M, T–K et M–K, la matrice (ordre D, T, M, K) est M = [[0, 1, 1, 0], [1, 0, 1, 1], [1, 1, 0, 1], [0, 1, 1, 0]]. Le terme (i, j) de M × M compte les trajets en deux étapes de i vers j.

Calcul de la première ligne de M × M : [2, 1, 1, 2]. Il existe donc 2 trajets en deux étapes de Dakar à Kaolack (par Thiès ou par Mbour).

## Points clés

- p ⇒ q n''est fausse que si p est vraie et q fausse ; elle équivaut à ¬p ∨ q et à sa contraposée.
- Nier un « pour tout », c''est affirmer un « il existe » qui ne vérifie pas la propriété.
- card(A ∪ B) = card(A) + card(B) − card(A ∩ B) ; card(P(E)) = pow(2, n).
- Produit matriciel : ligne par colonne, dimensions compatibles, non commutatif.

## Exercices pratiques

1. Écris la négation de : « Pour tout entier n, si n est pair alors n² est pair. »
2. Soit E = {1, …, 10}, A = {2, 4, 6, 8, 10} et B = {1, 2, 3, 4, 5}. Détermine A ∪ B, A ∩ B, A \ B et le complémentaire de A ∪ B dans E.
3. Soit A = [[1, 2], [3, 4]] et B = [[2, 0], [1, 5]]. Calcule A × B et B × A. Conclusion ?
4. Les matrices [[6, 4], [3, 2]] et [[5, 2], [7, 3]] sont-elles inversibles ? Si oui, donne l''inverse.
5. Cas pratique. Une entreprise de services numériques de Dakar compte 350 clients : 200 utilisent son application mobile, 140 son site web, 60 les deux. Combien utilisent au moins un des deux canaux ? Aucun ? Seulement le site web ?

## Corrigé

1. La proposition est « ∀ n, (n pair ⇒ n² pair) ». Sa négation : « Il existe un entier n tel que n est pair et n² n''est pas pair. » (On utilise ¬(p ⇒ q) équivaut à p ∧ ¬q.)

2. A ∪ B = {1, 2, 3, 4, 5, 6, 8, 10} ; A ∩ B = {2, 4} ; A \ B = {6, 8, 10} ; complémentaire de A ∪ B dans E : {7, 9}.

3. A × B = [[1×2 + 2×1, 1×0 + 2×5], [3×2 + 4×1, 3×0 + 4×5]] = [[4, 10], [10, 20]]. B × A = [[2×1 + 0×3, 2×2 + 0×4], [1×1 + 5×3, 1×2 + 5×4]] = [[2, 4], [16, 22]]. Les deux produits sont différents : le produit matriciel n''est pas commutatif.

4. det [[6, 4], [3, 2]] = 6 × 2 − 4 × 3 = 0 : non inversible. det [[5, 2], [7, 3]] = 15 − 14 = 1 : inversible, d''inverse [[3, −2], [−7, 5]]. Vérification : [[5, 2], [7, 3]] × [[3, −2], [−7, 5]] = [[15 − 14, −10 + 10], [21 − 21, −14 + 15]] = [[1, 0], [0, 1]].

5. Au moins un canal : 200 + 140 − 60 = 280 clients. Aucun : 350 − 280 = 70. Seulement le site web : 140 − 60 = 80.', 'texte', 75, false, 40
from public.courses c where c.slug = 'lic-info-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Mathématiques pour l''informatique : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Licence 1 Informatique (corrigé détaillé)', '## Présentation

Ce sujet d''entraînement n''est pas un sujet officiel : il reproduit le style des épreuves semestrielles de Licence 1 et mélange les trois matières du cours. Durée conseillée : 3 heures, sans document ni calculatrice. Barème indicatif, non officiel, sur 20 points. Traite-le en temps limité avant de lire le corrigé.

## Exercice 1 : algorithmique et Python (7 points)

1.1 (1,5 pt) Quel est l''affichage du programme suivant ? Présente une trace d''exécution.

s = 0
for k in range(1, 6):
    if k % 2 == 1:
        s = s + k
    else:
        s = s - 1
print(s)

1.2 (1,5 pt) Écris une fonction nb_occurrences(L, v) qui renvoie le nombre de fois où la valeur v apparaît dans la liste L.

1.3 (1,5 pt) Les températures maximales relevées à Matam pendant cinq jours sont [38, 41, 44, 39, 43]. Écris une fonction ecart(L) qui renvoie la différence entre la plus grande et la plus petite valeur, sans utiliser max ni min. Donne le résultat.

1.4 (2,5 pts) Cas pratique. Une régie d''eau facture la consommation par tranches (tarif fictif pour l''exemple) : les 20 premiers mètres cubes à 200 FCFA le m³, chaque m³ au-delà à 650 FCFA. Écris une fonction facture(conso) et calcule la facture pour 12 m³ et pour 35 m³.

## Exercice 2 : architecture et numération (7 points)

2.1 (1,5 pt) Convertis 181 en binaire puis en hexadécimal.

2.2 (1,5 pt) Code −37 en complément à deux sur 8 bits.

2.3 (1 pt) Calcule 1010 1100 + 0011 0111 en binaire et vérifie en décimal.

2.4 (2 pts) Soit F = non(a + b).c. Dresse sa table de vérité et donne une écriture sans négation de groupe grâce à De Morgan.

2.5 (1 pt) Quel est le rôle du compteur ordinal dans le processeur ?

## Exercice 3 : mathématiques pour l''informatique (6 points)

3.1 (2 pts) Montre que (p ∧ q) ⇒ p est une tautologie.

3.2 (2 pts) Dans un groupe de TD de 80 étudiants, 50 ont choisi l''option Python, 35 l''option langage C et 15 les deux. Combien ont choisi au moins une option ? Aucune ?

3.3 (2 pts) Soit A = [[2, 1], [5, 3]]. Calcule A × A, det A et, s''il existe, l''inverse de A.

## Corrigé détaillé

1.1 Trace (k, s) : départ s = 0 ; k = 1, impair, s = 1 ; k = 2, pair, s = 0 ; k = 3, impair, s = 3 ; k = 4, pair, s = 2 ; k = 5, impair, s = 7. Affichage : 7. Barème : 1 pt pour la trace complète, 0,5 pt pour le résultat.

1.2 On parcourt la liste avec un compteur.

def nb_occurrences(L, v):
    c = 0
    for x in L:
        if x == v:
            c = c + 1
    return c

print(nb_occurrences([3, 7, 3, 1, 3], 3))

Pour [3, 7, 3, 1, 3] et v = 3, la fonction renvoie 3. Erreur fréquente : écrire print(c) au lieu de return c.

1.3 On initialise le plus grand et le plus petit avec le premier élément.

def ecart(L):
    grand = L[0]
    petit = L[0]
    for x in L:
        if x > grand:
            grand = x
        if x < petit:
            petit = x
    return grand - petit

print(ecart([38, 41, 44, 39, 43]))

Le maximum vaut 44, le minimum 38 : l''écart est de 6 degrés.

1.4 On distingue deux cas.

def facture(conso):
    if conso <= 20:
        return conso * 200
    return 20 * 200 + (conso - 20) * 650

print(facture(12), facture(35))

Pour 12 m³ : 12 × 200 = 2 400 FCFA. Pour 35 m³ : 20 × 200 + 15 × 650 = 4 000 + 9 750 = 13 750 FCFA. Le correcteur valorise le test de cohérence : à 20 m³, les deux formules donnent 4 000 FCFA, la facture est continue.

2.1 181 = 128 + 32 + 16 + 4 + 1, donc 1011 0101. Groupes 1011 = B et 0101 = 5 : 181 = B5. Vérification : 11 × 16 + 5 = 181.

2.2 37 = 0010 0101 ; inversion : 1101 1010 ; plus 1 : 1101 1011 (DB en hexadécimal).

2.3 1010 1100 (172) + 0011 0111 (55) = 1110 0011 (227). Vérification : 128 + 64 + 32 + 2 + 1 = 227 = 172 + 55.

2.4 F vaut 1 seulement si a = 0, b = 0 et c = 1. Table (a, b, c → F) : 000 → 0, 001 → 1, et 0 pour les six autres lignes. Par De Morgan, non(a + b) = ā.b̄, donc F = ā.b̄.c.

2.5 Le compteur ordinal est un registre qui contient l''adresse en mémoire de la prochaine instruction à exécuter. Il est mis à jour à chaque cycle (incrémenté, ou modifié par une instruction de saut).

3.1 Table (p, q → p ∧ q → (p ∧ q) ⇒ p) : (V, V) → V → V ; (V, F) → F → V ; (F, V) → F → V ; (F, F) → F → V. La formule est vraie dans tous les cas : c''est une tautologie. Autre preuve : l''implication n''est fausse que si p ∧ q est vrai et p faux, ce qui est impossible.

3.2 card(P ∪ C) = 50 + 35 − 15 = 70 étudiants ont au moins une option ; 80 − 70 = 10 n''en ont aucune.

3.3 A × A = [[2×2 + 1×5, 2×1 + 1×3], [5×2 + 3×5, 5×1 + 3×3]] = [[9, 5], [25, 14]]. det A = 2 × 3 − 1 × 5 = 1, non nul : A est inversible et A⁻¹ = [[3, −1], [−5, 2]]. Vérification : A × A⁻¹ = [[6 − 5, −2 + 2], [15 − 15, −5 + 6]] = [[1, 0], [0, 1]].

## Conseils de correction

Les points perdus le plus souvent : une indentation incohérente en Python, une conversion sans vérification, une table de vérité incomplète (il faut pow(2, n) lignes pour n variables), une réponse sans phrase de conclusion. Présente chaque résultat encadré ou souligné.

## Exercices pratiques

1. Combien de lignes compte la table de vérité d''une formule à 4 variables ?
2. Que renvoie facture(20) ? et facture(21) ?
3. Quelle est la plus grande valeur positive codable en complément à deux sur 8 bits ? sur 16 bits ?
4. Donne la négation de « Il existe un étudiant qui a eu 20 en algorithmique ».
5. La matrice [[4, 2], [6, 3]] est-elle inversible ?

## Corrigé

1. pow(2, 4) = 16 lignes.
2. facture(20) = 4 000 FCFA ; facture(21) = 4 000 + 650 = 4 650 FCFA.
3. Sur 8 bits : 127 ; sur 16 bits : pow(2, 15) − 1 = 32 767.
4. « Aucun étudiant n''a eu 20 en algorithmique », autrement dit « tout étudiant a eu une note différente de 20 ».
5. Non : son déterminant vaut 4 × 3 − 2 × 6 = 0.', 'texte', 90, false, 50
from public.courses c where c.slug = 'lic-info-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Licence 1 Informatique (corrigé détaillé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Algorithmique et programmation en Python', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 1 Informatique préparant les partiels.
- Objectifs : écrire des programmes Python corrects (conditions, boucles, fonctions, listes), réaliser une trace d''exécution, maîtriser les algorithmes classiques et le tri par sélection.
- Matériel : tableau blanc, diaporama, ordinateur avec Python 3 projeté, feuille d''exercices distribuée.
- Prérequis : avoir lu la leçon « Algorithmique et programmation (Python) : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Texte du formateur : « Bonjour à toutes et à tous. Pendant une heure et demie, nous allons faire exactement ce que l''examen vous demandera : lire un programme, le faire tourner à la main, écrire des fonctions propres. Prenez une feuille et un stylo : on va programmer sur papier, comme le jour de l''épreuve. À la fin, une petite évaluation de cinq questions vous dira où vous en êtes. »

Visuel : diapositive avec les quatre objectifs et le plan de la séance.

## 05:00 – 15:00 · Rappels express : types et opérateurs

Texte du formateur : « Commençons par les briques. Une variable, c''est un nom qui désigne une valeur. En Python, on ne déclare pas le type : il est déduit de la valeur. 1500 est un int, 2.5 un float, "Dakar" une chaîne, True un booléen. Trois opérateurs piègent les étudiants chaque année. La barre simple donne toujours un float : 7 / 2 vaut 3.5. La double barre donne le quotient entier : 7 // 2 vaut 3. Le pourcentage donne le reste : 7 % 2 vaut 1. Et pour la puissance, on utilise pow : pow(2, 10) vaut 1024. »

Question posée au public : « Comment tester si un nombre n est pair ? » Réponse attendue : n % 2 == 0. Le formateur insiste sur la différence entre = (affectation) et == (comparaison).

## 15:00 – 25:00 · Conditions : bien ordonner les tests

Texte du formateur : « Une condition, c''est un aiguillage. Regardez ce programme qui attribue une mention. » Le formateur écrit au tableau :

def mention(m):
    if m >= 16:
        return "Très bien"
    elif m >= 14:
        return "Bien"
    elif m >= 12:
        return "Assez bien"
    elif m >= 10:
        return "Passable"
    return "Ajourné"

print(mention(15), mention(9.5))

« Avec 15, le premier test échoue, le deuxième réussit : "Bien". Python s''arrête au premier test vrai. Si j''inversais l''ordre et testais d''abord m >= 10, tout le monde aurait "Passable". L''ordre des tests est donc une question de logique, pas de style. Avec 9.5, aucun test ne réussit : la fonction renvoie "Ajourné". »

Visuel : l''arbre de décision dessiné en losanges et rectangles.

## 25:00 – 40:00 · Boucles et trace d''exécution

Texte du formateur : « Deux boucles : for quand on sait combien de tours, while quand on attend un événement. Faisons une trace ensemble, c''est l''exercice le plus rentable de l''examen. »

n = 1
total = 0
while total < 20:
    total = total + n
    n = n + 2
print(n, total)

Le formateur construit le tableau au tableau blanc, colonne n, colonne total : départ (1, 0) ; tour 1 : total = 1, n = 3 ; tour 2 : total = 4, n = 5 ; tour 3 : total = 9, n = 7 ; tour 4 : total = 16, n = 9 ; tour 5 : total = 25, n = 11. Comme 25 n''est pas inférieur à 20, la boucle s''arrête. Affichage : 11 25.

« Remarquez : on ajoute les nombres impairs 1, 3, 5, 7, 9 et on obtient des carrés parfaits, 1, 4, 9, 16, 25. Une trace bien faite permet souvent de découvrir ce que fait vraiment un programme. »

## 40:00 – 45:00 · Quiz interactif (pause active)

Le formateur affiche quatre questions, les étudiants répondent sur papier ou à main levée, puis il corrige.

- Q1 : que vaut len([4, 8, 15, 16]) ? Réponse : 4.
- Q2 : combien de tours fait for i in range(3, 10, 2) ? Réponse : 4 tours (i = 3, 5, 7, 9).
- Q3 : que vaut 17 % 3 ? Réponse : 2.
- Q4 : que vaut [5, 9, 2][-1] ? Réponse : 2 (l''indice -1 désigne le dernier élément).

## 45:00 – 1:00:00 · Fonctions et listes : les algorithmes classiques

Texte du formateur : « À l''examen, on vous demandera presque toujours une fonction qui parcourt une liste. Il existe trois schémas à connaître par cœur : l''accumulateur (somme, produit), le compteur et le meilleur élément (maximum ou minimum). Prenons un cas concret : un grossiste de Touba note les montants des commandes de la semaine et veut la somme des commandes d''au moins 100 000 FCFA. »

def total_grosses(commandes, seuil):
    t = 0
    for c in commandes:
        if c >= seuil:
            t = t + c
    return t

print(total_grosses([85000, 120000, 64000, 230000, 100000], 100000))

« On garde 120 000, 230 000 et 100 000 : le total vaut 450 000 FCFA. Attention au signe : "au moins" se traduit par supérieur ou égal. Si vous écrivez strictement supérieur, vous oubliez la commande de 100 000 et vous perdez le point. »

Le formateur écrit ensuite au tableau la fonction de recherche de position du maximum et fait remarquer qu''on renvoie un indice, pas une valeur.

def indice_max(L):
    im = 0
    for i in range(1, len(L)):
        if L[i] > L[im]:
            im = i
    return im

print(indice_max([12, 47, 33, 47, 5]))

« Le programme affiche 1 : en cas d''égalité, on garde la première occurrence, car on utilise une comparaison stricte. »

## 1:00:00 – 1:10:00 · Correction commentée : le tri par sélection

Texte du formateur : « Le tri par sélection tombe très souvent. L''idée : à chaque étape, on sélectionne le plus petit élément restant et on le met à sa place définitive. Faisons-le sur [52, 18, 33, 7, 41]. »

Étapes écrites au tableau :

- i = 0 : minimum 7 (indice 3), échange avec 52 : [7, 18, 33, 52, 41].
- i = 1 : minimum 18, déjà en place : [7, 18, 33, 52, 41].
- i = 2 : minimum 33, déjà en place.
- i = 3 : minimum 41, échange avec 52 : [7, 18, 33, 41, 52].

« Combien de comparaisons pour n éléments ? Au premier passage n − 1, puis n − 2, et ainsi de suite jusqu''à 1, soit n(n − 1)/2. Pour 5 éléments : 10 comparaisons. Vous retrouverez cette idée de coût en Licence 2, sous le nom de complexité. »

Erreur fréquente commentée : oublier que la boucle intérieure commence à i + 1, ou échanger à chaque comparaison au lieu d''une seule fois par passage.

## 1:10:00 – 1:15:00 · Exercice flash : les chaînes de caractères

Texte du formateur : « Une chaîne se parcourt exactement comme une liste : caractère par caractère. Vous avez trois minutes pour écrire une fonction qui compte les voyelles d''un mot. Pensez au schéma du compteur. » Les étudiants travaillent seuls, puis le formateur projette une correction.

def nb_voyelles(mot):
    c = 0
    for lettre in mot.lower():
        if lettre in "aeiouy":
            c = c + 1
    return c

print(nb_voyelles("Ziguinchor"), nb_voyelles("Kaolack"))

« Ziguinchor contient i, u, i, o : 4 voyelles. Kaolack contient a, o, a : 3 voyelles. Deux détails font la différence sur une copie : la méthode lower() met le mot en minuscules, sinon une majuscule initiale comme le A d''Abidjan serait oubliée ; et l''opérateur in teste l''appartenance d''un caractère à une chaîne, ce qui évite d''écrire cinq comparaisons reliées par or. Dernier rappel : une chaîne n''est pas modifiable. Pour construire un nouveau mot, on crée une nouvelle chaîne, par exemple en concaténant avec +. Ainsi, pour inverser un mot, on part d''une chaîne vide et on ajoute chaque lettre devant : inverse = lettre + inverse. »

Question posée au public : « Que renvoie nb_voyelles("") ? » Réponse : 0, la boucle ne fait aucun tour. C''est un cas limite à toujours tester.

## 1:15:00 – 1:22:00 · Synthèse

Texte du formateur : « Retenez cinq réflexes. Un : l''indentation est la syntaxe. Deux : range exclut la borne de fin. Trois : une fonction renvoie avec return. Quatre : pour chaque liste, demandez-vous si vous accumulez, comptez ou cherchez le meilleur. Cinq : testez toujours votre code à la main sur un petit exemple, y compris un cas limite comme une égalité ou un seuil exact. »

Visuel : diapositive récapitulative avec les trois schémas de parcours.

## 1:22:00 – 1:30:00 · Évaluation finale (5 questions)

1. Que vaut 25 // 4 + 25 % 4 ? Réponse : 6 + 1 = 7.
2. Qu''affiche for i in range(4): print(i * i, end=" ") ? Réponse : 0 1 4 9.
3. Écris une fonction somme_pairs(L) qui renvoie la somme des éléments pairs. Réponse : un accumulateur avec le test x % 2 == 0 ; pour [3, 8, 10, 7], le résultat est 18.
4. Combien de comparaisons fait le tri par sélection sur 8 éléments ? Réponse : 8 × 7 / 2 = 28.
5. Quelle est la différence entre print et return ? Réponse : print affiche à l''écran ; return renvoie une valeur à l''appelant et termine la fonction.

Mot de fin : « Refaites ce soir la trace de la boucle while sans regarder vos notes. Si vous retrouvez 11 et 25, vous êtes prêts. »', 'video', 90, false, 60
from public.courses c where c.slug = 'lic-info-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Algorithmique et programmation en Python');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Architecture des ordinateurs et systèmes de numération', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 1 Informatique.
- Objectifs : décrire le modèle de von Neumann et le cycle d''instruction ; convertir entre décimal, binaire et hexadécimal ; coder un entier en complément à deux ; repérer un dépassement de capacité ; simplifier une expression booléenne et concevoir un petit circuit.
- Matériel : tableau blanc, diaporama avec le schéma de von Neumann, tableau des puissances de 2 affiché en permanence, feuille d''exercices.
- Prérequis : leçon « Architecture des ordinateurs et systèmes de numération : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Texte du formateur : « Bonjour. Aujourd''hui, nous ouvrons la machine. Vous allez comprendre ce qui se passe quand un programme s''exécute, puis vous allez apprendre à parler la langue de la machine : le binaire. Cette matière rapporte beaucoup de points à ceux qui sont méthodiques, car les exercices sont très codifiés. Mon objectif : qu''à la fin, aucune conversion ne vous fasse peur. »

Visuel : le plan de la séance en quatre parties : machine, conversions, nombres négatifs, logique.

## 05:00 – 15:00 · Le modèle de von Neumann

Texte du formateur : « Imaginez la cuisine d''un restaurant de Saint-Louis. Le chef lit la recette, ligne après ligne : c''est l''unité de commande. Le commis qui coupe, mélange et cuit : c''est l''unité arithmétique et logique. Le plan de travail, tout petit mais à portée de main : ce sont les registres. Le garde-manger, plus grand mais plus loin : c''est la mémoire centrale. Les couloirs entre la cuisine et le garde-manger : ce sont les bus. Et la salle, où arrivent les commandes et d''où repartent les plats : ce sont les entrées-sorties. »

« L''idée géniale de von Neumann, c''est que la recette, donc le programme, est rangée dans le même garde-manger que les ingrédients, donc les données. »

Visuel : schéma en blocs, processeur au centre, mémoire à gauche, périphériques à droite, trois bus horizontaux (données, adresses, contrôle).

Question au public : « Pourquoi la RAM est-elle dite volatile ? » Réponse attendue : son contenu est perdu quand on coupe l''alimentation.

## 15:00 – 25:00 · Cycle d''instruction et hiérarchie mémoire

Texte du formateur : « Le processeur répète une boucle infinie en trois temps. Recherche : il lit en mémoire l''instruction dont l''adresse est dans le compteur ordinal. Décodage : l''unité de commande comprend ce qu''il faut faire. Exécution : l''UAL calcule, ou une donnée est déplacée. Puis le compteur ordinal avance. Une fréquence de quelques gigahertz signifie que l''horloge bat plusieurs milliards de fois par seconde. »

« Pourquoi tant de niveaux de mémoire ? Parce que la mémoire rapide coûte cher. On met donc un peu de mémoire très rapide près du processeur, les registres et le cache, et beaucoup de mémoire plus lente plus loin, la RAM puis le disque. »

« Dernier point d''examen : un bus d''adresses de n bits permet pow(2, n) adresses. Avec 32 bits, pow(2, 32) = 4 294 967 296 adresses, soit 4 Gio si chaque adresse désigne un octet. »

## 25:00 – 40:00 · Conversions : la méthode sans faute

Texte du formateur : « Convertissons 237 en binaire par soustraction des puissances de 2. Je cherche la plus grande puissance qui tient dans 237 : 128. Reste 109. 64 tient : reste 45. 32 tient : reste 13. 16 ne tient pas : 0. 8 tient : reste 5. 4 tient : reste 1. 2 ne tient pas : 0. 1 tient : reste 0. J''écris les bits de 128 à 1 : 1110 1101. »

« Pour l''hexadécimal, je coupe en paquets de quatre : 1110 vaut 14, soit E ; 1101 vaut 13, soit D. Donc 237 = ED. Et je vérifie : 14 × 16 + 13 = 224 + 13 = 237. Cette vérification prend dix secondes et vous sauve des points. »

Exercice en direct : convertir 2AF (hexadécimal) en décimal. Le formateur laisse une minute puis corrige : 2 × 256 + 10 × 16 + 15 = 512 + 160 + 15 = 687. En binaire : 0010 1010 1111.

« Où rencontre-t-on l''hexadécimal dans la vraie vie ? Partout où l''on manipule des octets. Une couleur sur une page web s''écrit par exemple FF8800 : trois octets, FF pour le rouge (255), 88 pour le vert (136) et 00 pour le bleu (0), ce qui donne un orange. Une adresse physique de carte réseau s''écrit en six octets hexadécimaux séparés par des deux-points. Et quand un programme plante, les adresses mémoire affichées sont en hexadécimal. L''avantage est la compacité : un octet tient toujours en exactement deux chiffres hexadécimaux, contre huit chiffres binaires et jusqu''à trois chiffres décimaux. »

« Erreur classique : oublier les zéros de tête. Pour l''hexadécimal, on complète toujours à gauche jusqu''à un multiple de quatre bits. »

## 40:00 – 45:00 · Quiz interactif

- Q1 : combien de valeurs différentes peut prendre un octet ? Réponse : 256.
- Q2 : que vaut F en décimal ? Réponse : 15.
- Q3 : 1 Kio, c''est combien d''octets ? Réponse : 1 024.
- Q4 : quel registre contient l''adresse de la prochaine instruction ? Réponse : le compteur ordinal.

Le formateur fait lever la main et note au tableau le nombre de bonnes réponses, pour adapter le rythme de la suite.

## 45:00 – 1:00:00 · Nombres négatifs et dépassement

Texte du formateur : « La machine ne connaît pas le signe moins. On utilise donc le complément à deux. Recette : j''écris la valeur absolue, j''inverse tous les bits, j''ajoute 1. Codons −58 sur 8 bits. 58 = 32 + 16 + 8 + 2, soit 0011 1010. J''inverse : 1100 0101. J''ajoute 1 : 1100 0110, soit C6. »

« Pourquoi ce codage ? Parce qu''avec lui, l''addition ordinaire marche : 58 + (−58) donne 1 0000 0000, on ignore la neuvième retenue et on obtient bien zéro. Le processeur n''a pas besoin d''un circuit spécial pour la soustraction. »

« Sur 8 bits signés, on va de −128 (1000 0000) à 127 (0111 1111). Que se passe-t-il si j''additionne 100 et 50 ? Le résultat 150 dépasse 127. En binaire, 0110 0100 + 0011 0010 = 1001 0110 : le bit de gauche est à 1, la machine lit un nombre négatif, −106. C''est le dépassement de capacité. Règle pour le détecter : deux nombres de même signe donnent un résultat de signe opposé. »

Correction commentée : le formateur montre une copie d''étudiant où −58 a été codé 1011 1010 (on a seulement mis le bit de gauche à 1). Il explique que c''est le codage « signe et valeur absolue », qui n''est pas celui demandé.

## 1:00:00 – 1:15:00 · Logique booléenne et circuits

Texte du formateur : « Passons aux portes logiques. ET vaut 1 si tout vaut 1. OU vaut 1 si au moins un vaut 1. NON inverse. Et le OU exclusif vaut 1 si les deux entrées sont différentes. »

« Simplifions F = a.b + a.b̄ + ā.b. Les deux premiers termes se regroupent : a.b + a.b̄ = a.(b + b̄) = a.1 = a. Il reste F = a + ā.b. Or a + ā.b = a + b, propriété que l''on vérifie par la table de vérité. Donc F = a + b : trois portes ET et deux OU remplacées par une seule porte OU. Moins de portes, c''est moins de coût et moins de consommation. »

Cas pratique résolu : l''alarme d''un magasin de Kaolack doit sonner si la porte est ouverte (p = 1) alors que le système est armé (a = 1), ou si le détecteur de fumée est activé (f = 1), quel que soit l''état du système. On obtient S = p.a + f : une porte ET suivie d''une porte OU. Le formateur dresse la table de vérité à 8 lignes et fait vérifier que S vaut 1 pour (p, a, f) = (1, 1, 0) et pour toute ligne où f = 1, soit 5 lignes sur 8.

« Enfin, De Morgan : non(a.b) = ā + b̄. Pour s''en souvenir : on casse la barre, on change le signe. »

## 1:15:00 – 1:22:00 · Synthèse

Texte du formateur : « Je résume les quatre méthodes. Un : von Neumann, quatre blocs et un cycle en trois temps. Deux : conversion par puissances de 2, paquets de quatre pour l''hexadécimal, vérification inverse. Trois : complément à deux, inverser puis ajouter 1, et surveiller le dépassement. Quatre : simplifier avant de câbler, en utilisant les lois de l''algèbre de Boole et De Morgan. »

## 1:22:00 – 1:30:00 · Évaluation finale (5 questions)

1. Convertis 99 en binaire et en hexadécimal. Réponse : 99 = 64 + 32 + 2 + 1 = 0110 0011 = 63 en hexadécimal.
2. Code −1 sur 8 bits en complément à deux. Réponse : 1111 1111.
3. Quelle mémoire est la plus rapide : cache, RAM ou registre ? Réponse : le registre.
4. Simplifie a + a.b. Réponse : a (loi d''absorption).
5. Un bus d''adresses de 24 bits adresse combien d''octets ? Réponse : pow(2, 24) = 16 777 216 octets, soit 16 Mio.

Mot de fin : « Faites dix minutes de conversions chaque jour jusqu''à l''examen. C''est comme le sport : la régularité bat l''intensité. »', 'video', 90, false, 70
from public.courses c where c.slug = 'lic-info-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Architecture des ordinateurs et systèmes de numération');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Mathématiques pour l''informatique', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 1 Informatique.
- Objectifs : maîtriser les tables de vérité et les équivalences logiques, nier une phrase quantifiée, calculer des cardinaux d''ensembles, effectuer des calculs matriciels simples et les relier à l''informatique.
- Matériel : tableau blanc, diaporama, feuille d''exercices, un interpréteur Python pour les vérifications.
- Prérequis : leçon « Mathématiques pour l''informatique : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil

Texte du formateur : « Bonjour. On me demande souvent : pourquoi des mathématiques en informatique ? Réponse simple : chaque condition de vos programmes est une formule logique, chaque requête de base de données est une opération sur des ensembles, et chaque image, chaque réseau, chaque moteur de recommandation manipule des matrices. Aujourd''hui, nous allons travailler les trois. »

## 05:00 – 20:00 · Logique : connecteurs et tables de vérité

Texte du formateur : « Une proposition est vraie ou fausse, jamais les deux. Avec deux propositions p et q, il y a quatre cas possibles ; avec n propositions, pow(2, n) cas. C''est pour cela qu''une table de vérité à trois variables a huit lignes. »

« Le connecteur qui pose problème, c''est l''implication. Prenons la phrase : "S''il pleut à Ziguinchor, alors le match est reporté." Quand cette promesse est-elle trahie ? Seulement s''il pleut et que le match n''est pas reporté. S''il ne pleut pas, la promesse n''est pas trahie, quoi qu''il arrive au match. Voilà pourquoi p ⇒ q est vraie dès que p est fausse. »

Le formateur construit au tableau la table de ¬p ∨ q et montre qu''elle coïncide ligne à ligne avec celle de p ⇒ q.

Question au public : « Quelle est la contraposée de "si le mot de passe est correct, alors l''accès est accordé" ? » Réponse : « si l''accès n''est pas accordé, alors le mot de passe n''est pas correct ». Le formateur souligne que la réciproque, « si l''accès est accordé, le mot de passe est correct », n''est pas équivalente.

Deuxième exemple au tableau : montrer que (p ⇒ q) ∧ p ⇒ q est une tautologie. Le formateur remplit la table colonne par colonne : p ⇒ q, puis (p ⇒ q) ∧ p, puis l''implication finale. Sur les quatre lignes, la dernière colonne ne contient que des V. « Ce raisonnement porte un nom, le modus ponens : si p entraîne q et si p est vrai, alors q est vrai. C''est exactement ce que fait un programme : si la condition du if est vraie, le bloc s''exécute. En informatique, on vérifie aussi les tautologies par programme : deux boucles imbriquées sur False et True suffisent pour parcourir les quatre cas. »

## 20:00 – 30:00 · Quantificateurs et négation

Texte du formateur : « Pour nier "tous les serveurs de l''entreprise sont à jour", ne dites surtout pas "aucun serveur n''est à jour". La négation correcte est : "au moins un serveur n''est pas à jour". Règle : ∀ devient ∃, et on nie la propriété. »

Exercice en direct : nier « ∃ x ∈ ℝ, x² < 0 ». Réponse : « ∀ x ∈ ℝ, x² ≥ 0 », qui est vraie ; la proposition de départ était donc fausse.

« Attention à l''ordre des quantificateurs. "Pour tout étudiant, il existe un enseignant qui le suit" n''a pas le même sens que "il existe un enseignant qui suit tous les étudiants". La seconde phrase est beaucoup plus forte. »

## 30:00 – 40:00 · Ensembles et dénombrement

Texte du formateur : « Les opérations sur les ensembles sont les mêmes que celles des requêtes de bases de données que vous verrez en Licence 2 : union, intersection, différence. Faisons un cas concret. Une société de téléphonie fictive étudie 500 abonnés : 320 utilisent les données mobiles, 210 le paiement mobile, 150 les deux. »

- Au moins un service : 320 + 210 − 150 = 380.
- Aucun service : 500 − 380 = 120.
- Données mobiles seulement : 320 − 150 = 170.
- Paiement mobile seulement : 210 − 150 = 60.

Visuel : diagramme de Venn à deux cercles, avec 170, 150 et 60 dans les trois zones et 120 à l''extérieur. Le formateur fait vérifier que 170 + 150 + 60 + 120 = 500.

« Et le produit cartésien ? Si un code d''accès est formé d''une lettre parmi A, B, C suivie d''un chiffre de 0 à 9, il y a 3 × 10 = 30 codes possibles. C''est le principe multiplicatif. »

## 40:00 – 45:00 · Quiz interactif

- Q1 : combien de lignes dans la table de vérité d''une formule à 3 variables ? Réponse : 8.
- Q2 : p ⇒ q est-elle vraie si p est faux et q vrai ? Réponse : oui.
- Q3 : combien de parties a un ensemble à 5 éléments ? Réponse : 32.
- Q4 : A ∩ B est-il toujours inclus dans A ∪ B ? Réponse : oui.

## 45:00 – 1:05:00 · Matrices : calcul et sens

Texte du formateur : « Une matrice, c''est un tableau de nombres, et on lui donne des règles de calcul. La seule règle délicate, c''est le produit : ligne par colonne. Pour multiplier A de taille 2 × 3 par B de taille 3 × 2, le nombre de colonnes de A, 3, doit égaler le nombre de lignes de B, 3. Le résultat est de taille 2 × 2. »

Exercice corrigé au tableau : A = [[1, 0, 2], [3, 1, 1]] et B = [[2, 1], [0, 4], [1, 3]].

- Ligne 1, colonne 1 : 1 × 2 + 0 × 0 + 2 × 1 = 4.
- Ligne 1, colonne 2 : 1 × 1 + 0 × 4 + 2 × 3 = 7.
- Ligne 2, colonne 1 : 3 × 2 + 1 × 0 + 1 × 1 = 7.
- Ligne 2, colonne 2 : 3 × 1 + 1 × 4 + 1 × 3 = 10.

Résultat : A × B = [[4, 7], [7, 10]]. Le produit B × A existe aussi, mais il est de taille 3 × 3 : on voit immédiatement que A × B ≠ B × A.

« Inverse d''une matrice 2 × 2 : on calcule le déterminant ad − bc. S''il est nul, pas d''inverse. Sinon, on échange a et d, on change le signe de b et c, et on divise par le déterminant. Pour [[4, 3], [2, 2]] : det = 8 − 6 = 2, inverse = (1/2) × [[2, −3], [−2, 4]], c''est-à-dire la matrice de première ligne (1 ; −1,5) et de deuxième ligne (−1 ; 2). On vérifie toujours en multipliant : on doit retrouver l''identité. »

« Application informatique : en traitement d''image, une image en niveaux de gris est une matrice de nombres de 0 à 255. Éclaircir l''image revient à ajouter une constante à chaque terme, en plafonnant à 255. Exemple : un bloc de 2 × 2 pixels [[120, 250], [30, 200]] éclairci de 40 devient [[160, 255], [70, 240]], car 250 + 40 = 290 est plafonné à 255. Le négatif d''une image s''obtient en remplaçant chaque valeur x par 255 − x : le même bloc devient [[135, 5], [225, 55]]. Pour un réseau de villes, la matrice d''adjacence indique les liaisons directes, et son carré compte les trajets en deux étapes. »

## 1:05:00 – 1:15:00 · Correction commentée d''un exercice d''examen

Énoncé : « Montrer que ¬(p ∧ ¬q) est équivalente à p ⇒ q. »

Texte du formateur : « Deux méthodes. Méthode 1, la table de vérité : quatre lignes, on calcule ¬q, puis p ∧ ¬q, puis la négation, et on compare avec la colonne de p ⇒ q. Méthode 2, le calcul : par De Morgan, ¬(p ∧ ¬q) = ¬p ∨ ¬¬q = ¬p ∨ q, et on sait que ¬p ∨ q est équivalente à p ⇒ q. La méthode 2 est plus élégante, mais la méthode 1 ne pardonne pas d''erreur : si vous hésitez, faites la table. »

« Sur les copies, l''erreur la plus fréquente est d''écrire ¬(p ∧ ¬q) = ¬p ∧ q : on a nié chaque morceau sans transformer le ET en OU. De Morgan, toujours De Morgan. »

## 1:15:00 – 1:22:00 · Synthèse

Texte du formateur : « Trois messages. En logique : l''implication n''est fausse que dans un cas, et la contraposée lui est équivalente. En ensembles : inclusion-exclusion et principe multiplicatif. En matrices : ligne par colonne, vérifier les dimensions, vérifier l''inverse en multipliant. »

## 1:22:00 – 1:30:00 · Évaluation finale (5 questions)

1. Nie : « Tous les fichiers sont sauvegardés. » Réponse : « Au moins un fichier n''est pas sauvegardé. »
2. Donne la contraposée de p ⇒ ¬q. Réponse : q ⇒ ¬p.
3. Card(A) = 12, card(B) = 9, card(A ∩ B) = 4. Card(A ∪ B) ? Réponse : 17.
4. Le produit d''une matrice 3 × 2 par une matrice 2 × 4 est de quelle taille ? Réponse : 3 × 4.
5. [[2, 6], [1, 3]] est-elle inversible ? Réponse : non, son déterminant vaut 6 − 6 = 0.

Mot de fin : « Refaites l''exercice des abonnés avec un diagramme de Venn sans regarder vos notes : c''est le type de question qui tombe chaque année. »', 'video', 90, false, 80
from public.courses c where c.slug = 'lic-info-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Mathématiques pour l''informatique');

-- Cours : Informatique Licence 2 : réussir ses examens (structures de données, bases de données, réseaux)
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'lic-info-l2', (select id from public.levels where name = 'Licence 2'), null, 'Informatique', 'Informatique Licence 2 : réussir ses examens (structures de données, bases de données, réseaux)', 'Ce cours prépare aux partiels et examens de Licence 2 en informatique : structures de données et complexité des algorithmes, bases de données relationnelles et SQL (modélisation, normalisation, requêtes), réseaux informatiques (modèles OSI et TCP/IP, adressage IPv4 et calcul de sous-réseaux). Il contient des fiches de cours, des exercices corrigés vérifiés, un sujet type d''examen et trois cours vidéo de 1h30. Prérequis : programmation Python et numération binaire de Licence 1.', true, 322
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Licence 2 en Informatique', '## Objectifs de la leçon

- Situer la Licence 2 dans le parcours LMD et comprendre ce qui change par rapport à la première année.
- Connaître les trois matières clés de l''année et les compétences évaluées.
- Savoir répondre aux types d''épreuves propres à la Licence 2 : calcul de complexité, modélisation de données, requêtes SQL sur papier, calcul de sous-réseaux.
- Construire un plan de révision sur six semaines.

## 1. La Licence 2 dans le système LMD

La Licence 2 correspond aux semestres 3 et 4 de la Licence. On y retrouve l''organisation en unités d''enseignement (UE) dotées de crédits, avec les mécanismes de capitalisation, de compensation et de session de rattrapage. Leurs règles exactes (moyenne minimale, compensation entre UE, conditions de passage en Licence 3 avec ou sans dettes de crédits) dépendent du règlement des examens de ton université ou de ton école : relis-le en début d''année, car elles peuvent différer de celles de Licence 1.

Ce qui change surtout, c''est le niveau d''abstraction. En Licence 1, on apprenait à écrire un programme qui marche. En Licence 2, on apprend à choisir la bonne structure de données, à estimer le coût d''un algorithme, à concevoir une base de données propre et à comprendre comment les machines communiquent. Les enseignants attendent des justifications : pourquoi cette structure, pourquoi cette clé, pourquoi ce masque.

## 2. Les matières clés de la Licence 2

- Structures de données et complexité : piles, files, listes chaînées, tables de hachage, arbres binaires de recherche ; notation O, comparaison d''algorithmes de recherche et de tri. On attend des comptages d''opérations justifiés et des schémas clairs.
- Bases de données relationnelles et SQL : modèle entité-association, cardinalités, passage au modèle relationnel, dépendances fonctionnelles et formes normales, requêtes SQL (sélection, jointure, regroupement, sous-requête). On attend des schémas cohérents et des requêtes exactes, écrites à la main.
- Réseaux informatiques : modèles OSI et TCP/IP, protocoles usuels, adressage IPv4, masques, découpage en sous-réseaux. On attend des calculs binaires exacts et la bonne couche pour chaque notion.

Ces matières s''appuient sur la Licence 1 : le binaire et le ET logique servent au calcul des adresses réseau, la logique et les ensembles servent au SQL, et la programmation Python sert à implémenter les structures de données.

## 3. Les types d''épreuves et comment y répondre

- Exercice de complexité : on te donne un algorithme, tu comptes les opérations en fonction de n. Écris le nombre de tours de chaque boucle, fais la somme, puis donne l''ordre de grandeur. Une réponse « O(n²) » sans justification rapporte peu.
- Exercice sur les structures : dessiner l''état d''une pile, d''une file ou d''un arbre après une suite d''opérations. Dessine chaque étape ; c''est long mais sûr.
- Modélisation : à partir d''un texte décrivant une activité (une pharmacie, une agence de transport, une mutuelle de santé), construire le schéma entité-association puis le schéma relationnel. Souligne les clés primaires, marque les clés étrangères d''un dièse.
- Requêtes SQL sur papier : écris une clause par ligne (SELECT, FROM, JOIN, WHERE, GROUP BY, HAVING, ORDER BY). Relis en te demandant quelles lignes sortent vraiment.
- Calcul de sous-réseaux : adresse réseau, diffusion, plage d''hôtes, nombre d''hôtes. Présente le dernier octet en binaire : c''est là que se jouent les erreurs.
- QCM de cours : couches OSI, numéros de ports courants, propriétés des formes normales.
- TP noté ou projet : souvent une petite base de données avec ses requêtes, ou l''implémentation d''une structure en Python.

## 4. Méthode de révision

- Une fiche par notion, avec un exemple résolu : une fiche « sous-réseaux », une fiche « jointures », une fiche « arbres binaires de recherche ».
- Pratique quotidienne et courte : un calcul de sous-réseau par jour, une requête SQL par jour. La répétition rend ces exercices automatiques.
- Vérification sur machine : installe un interpréteur Python et un petit SGBD (SQLite, par exemple, qui fonctionne sans serveur). Écris tes requêtes à la main, puis exécute-les pour vérifier. Pour les réseaux, le module ipaddress de Python permet de contrôler tes calculs.
- Annales et sujets types en temps limité, puis correction sévère.
- Travail en binôme : l''un modélise, l''autre critique le schéma ; puis on échange.

## 5. Le jour de l''épreuve

Commence par lire le sujet en entier et repère les exercices « mécaniques » (calcul de sous-réseau, requête simple) : ce sont des points presque sûrs. Garde du temps pour la modélisation, qui demande de la réflexion. En fin d''épreuve, relis les requêtes : un oubli de condition de jointure ou de GROUP BY change complètement le résultat.

## 6. Plan de révision sur six semaines

- Semaine 1 : bilan et fiches. Liste les chapitres des trois matières, classe-les selon ta maîtrise, rédige les fiches manquantes.
- Semaine 2 : structures de données et complexité. Piles, files, listes chaînées, arbres ; un exercice de comptage d''opérations par jour.
- Semaine 3 : bases de données. Modélisation lundi et mardi, normalisation mercredi, SQL du jeudi au samedi.
- Semaine 4 : réseaux. Modèles en couches et protocoles, puis adressage et sous-réseaux, un calcul par jour.
- Semaine 5 : deux sujets complets en temps limité, correction, retour ciblé sur les erreurs.
- Semaine 6 : consolidation, rappel actif sur les fiches, dernier sujet, sommeil régulier.

## Points clés

- Les règles de validation dépendent du règlement de ton établissement : vérifie-les.
- En Licence 2, on justifie ses choix : structure, clé, masque.
- Vérifie tes réponses sur machine pendant les révisions : Python, SQLite, module ipaddress.

## Exercices pratiques

1. Cite trois compétences de Licence 1 réutilisées en Licence 2 et indique dans quelle matière.
2. Pourquoi présenter le dernier octet d''une adresse en binaire dans un calcul de sous-réseau ?
3. Une requête SQL sur papier doit-elle être écrite sur une seule ligne ? Justifie.
4. Échauffement : combien vaut pow(2, 10) ? Et log₂(1 024) ?
5. Échauffement : combien d''adresses contient un bloc de 8 bits ?
6. Propose ta semaine 4 jour par jour.

## Corrigé

1. Le ET logique et le binaire (réseaux : calcul de l''adresse réseau), les ensembles et la logique (bases de données : sélection, union, intersection), la programmation Python (structures de données).
2. Parce que le masque coupe souvent cet octet en deux : la partie réseau et la partie hôte ne sont visibles qu''en binaire.
3. Non : une clause par ligne rend la requête lisible et permet de vérifier chaque partie (tables, conditions, regroupements).
4. pow(2, 10) = 1 024, donc log₂(1 024) = 10.
5. pow(2, 8) = 256 adresses.
6. Exemple : lundi modèle OSI ; mardi modèle TCP/IP et encapsulation ; mercredi protocoles et ports ; jeudi adresse réseau et diffusion ; vendredi découpage en sous-réseaux ; samedi découpage à longueur variable ; dimanche repos et relecture.', 'texte', 60, true, 10
from public.courses c where c.slug = 'lic-info-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Licence 2 en Informatique');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Structures de données et complexité : l''essentiel pour l''examen', '## Objectifs de la leçon

- Évaluer la complexité d''un algorithme et utiliser la notation O.
- Comparer recherche séquentielle et recherche dichotomique.
- Connaître les piles, les files, les listes chaînées, les tables de hachage et les arbres binaires de recherche.

## Fiche 1 : complexité et notation O

La complexité en temps d''un algorithme est le nombre d''opérations élémentaires (comparaisons, affectations, opérations arithmétiques) qu''il effectue, exprimé en fonction de la taille n des données. On s''intéresse en général au pire cas et à l''ordre de grandeur quand n devient grand. On écrit O(n²) pour dire que le coût croît au plus comme n² à une constante près.

Classes usuelles, de la meilleure à la pire : O(1) constante ; O(log n) logarithmique ; O(n) linéaire ; O(n log n) ; O(n²) quadratique ; O(pow(2, n)) exponentielle. Pour n = 1 000 : log₂ n ≈ 10, n log₂ n ≈ 10 000, n² = 1 000 000.

Méthode de comptage : une boucle de n tours contenant un travail constant coûte O(n) ; deux boucles imbriquées de n tours chacune coûtent O(n²) ; une boucle où la taille est divisée par 2 à chaque tour coûte O(log n).

## Fiche 2 : recherche séquentielle et dichotomique

La recherche séquentielle parcourt la liste élément par élément : n comparaisons dans le pire cas, O(n). Si la liste est triée, la recherche dichotomique compare la valeur cherchée à l''élément du milieu et élimine la moitié de la liste à chaque étape : O(log n).

def dichotomie(L, v):
    g, d = 0, len(L) - 1
    while g <= d:
        m = (g + d) // 2
        if L[m] == v:
            return m
        elif L[m] < v:
            g = m + 1
        else:
            d = m - 1
    return -1

print(dichotomie([3, 8, 12, 17, 25, 31, 40, 52], 31))

Le programme affiche 5. Sur un million d''éléments triés, la dichotomie fait au plus 20 comparaisons, car pow(2, 20) = 1 048 576 dépasse un million.

## Fiche 3 : piles et files

Une pile (LIFO, dernier entré premier sorti) offre deux opérations : empiler au sommet et dépiler le sommet, en O(1). Exemples : le bouton « retour » d''un navigateur, la pile des appels de fonctions. En Python, une liste suffit : append pour empiler, pop() pour dépiler.

Une file (FIFO, premier entré premier sorti) ajoute en queue et retire en tête : la file d''attente au guichet d''une banque de Dakar, la file d''impression. En Python, on utilise collections.deque (append et popleft en O(1)).

Application classique : vérifier qu''une expression est bien parenthésée. On empile chaque symbole ouvrant ; à chaque symbole fermant, le sommet doit être l''ouvrant correspondant.

def bien_parenthesee(expr):
    paires = {")": "(", "]": "[", "}": "{"}
    pile = []
    for c in expr:
        if c in "([{":
            pile.append(c)
        elif c in ")]}":
            if len(pile) == 0 or pile.pop() != paires[c]:
                return False
    return len(pile) == 0

print(bien_parenthesee("(a[b]{c})"), bien_parenthesee("(a]"), bien_parenthesee("(("))

Le programme affiche True False False.

## Fiche 4 : listes chaînées et tables de hachage

Une liste chaînée est une suite de maillons ; chaque maillon contient une valeur et une référence vers le maillon suivant. Schéma décrit en texte : tête → [12 | •] → [7 | •] → [30 | None]. Insérer en tête coûte O(1), mais accéder au k-ième élément oblige à parcourir k maillons : O(n). Un tableau, au contraire, donne l''accès direct en O(1) mais l''insertion au début coûte O(n) car il faut décaler les éléments.

Une table de hachage (le dict de Python) associe des clés à des valeurs. Une fonction de hachage transforme la clé en indice de case. L''accès est en O(1) en moyenne. Quand deux clés tombent dans la même case, on parle de collision ; on la gère par exemple en chaînant les éléments de la case.

## Fiche 5 : arbres binaires de recherche (ABR)

Un arbre binaire est formé de nœuds ayant au plus deux fils. Dans un ABR, pour chaque nœud, les valeurs du sous-arbre gauche sont plus petites et celles du sous-arbre droit plus grandes. La recherche et l''insertion coûtent O(h), où h est la hauteur : O(log n) si l''arbre est équilibré, O(n) s''il est dégénéré (valeurs insérées dans l''ordre croissant, par exemple).

Parcours : préfixe (racine, gauche, droite), infixe (gauche, racine, droite), postfixe (gauche, droite, racine). Le parcours infixe d''un ABR donne les valeurs triées.

def inserer(arbre, v):
    if arbre is None:
        return [v, None, None]
    if v < arbre[0]:
        arbre[1] = inserer(arbre[1], v)
    else:
        arbre[2] = inserer(arbre[2], v)
    return arbre

def infixe(arbre):
    if arbre is None:
        return []
    return infixe(arbre[1]) + [arbre[0]] + infixe(arbre[2])

def prefixe(arbre):
    if arbre is None:
        return []
    return [arbre[0]] + prefixe(arbre[1]) + prefixe(arbre[2])

def hauteur(arbre):
    if arbre is None:
        return 0
    return 1 + max(hauteur(arbre[1]), hauteur(arbre[2]))

a = None
for v in [50, 30, 70, 20, 40, 60, 80]:
    a = inserer(a, v)
print(infixe(a), hauteur(a))

Le programme affiche [20, 30, 40, 50, 60, 70, 80] 3. Ici, la hauteur compte le nombre de niveaux (un arbre réduit à sa racine a une hauteur 1) ; certains cours comptent les arêtes et trouvent 2 : précise toujours ta convention.

## Points clés

- On compte les tours de boucle pour obtenir la complexité ; boucles imbriquées : on multiplie.
- La dichotomie exige une liste triée et coûte O(log n).
- Pile : LIFO ; file : FIFO ; table de hachage : accès moyen O(1) ; ABR : O(h).

## Exercices pratiques

1. Combien de fois l''instruction x = x + 1 est-elle exécutée dans : for i in range(n): for j in range(i, n): x = x + 1 ? Donne la complexité.
2. Fais la trace de dichotomie([3, 8, 12, 17, 25, 31, 40, 52], 31) : valeurs de g, d, m à chaque tour.
3. Une pile vide subit : empiler 4, empiler 9, dépiler, empiler 2, empiler 7, dépiler, empiler 5. Quel est son contenu (de la base au sommet) ?
4. Insère dans un ABR vide : 45, 20, 60, 10, 30, 50, 70, 25. Donne les parcours infixe et préfixe, et la hauteur (en niveaux).
5. Cas pratique. Un opérateur fictif de paiement mobile gère 2 millions de comptes. Combien de comparaisons au pire faut-il pour retrouver un compte par recherche séquentielle ? Par dichotomie sur une liste triée ? Quelle structure Python permettrait un accès moyen en temps constant ?

## Corrigé

1. Pour i = 0, la boucle intérieure fait n tours ; pour i = 1, n − 1 tours ; … ; pour i = n − 1, 1 tour. Total : n + (n − 1) + … + 1 = n(n + 1)/2. Complexité O(n²).

2. Tour 1 : g = 0, d = 7, m = 3, L[3] = 17 inférieur à 31, donc g = 4. Tour 2 : g = 4, d = 7, m = 5, L[5] = 31 : trouvé, la fonction renvoie 5. Deux comparaisons ont suffi.

3. Après empiler 4 et 9 : [4, 9] ; dépiler retire 9 : [4] ; empiler 2 et 7 : [4, 2, 7] ; dépiler retire 7 : [4, 2] ; empiler 5 : [4, 2, 5]. Le sommet est 5.

4. Racine 45 ; à gauche 20 (avec 10 à gauche, 30 à droite, et 25 à gauche de 30) ; à droite 60 (avec 50 et 70). Infixe : 10, 20, 25, 30, 45, 50, 60, 70 (valeurs triées). Préfixe : 45, 20, 10, 30, 25, 60, 50, 70. Hauteur : 4 niveaux (45, 20, 30, 25).

5. Séquentielle : jusqu''à 2 000 000 de comparaisons. Dichotomie : pow(2, 20) = 1 048 576 est inférieur à 2 millions et pow(2, 21) = 2 097 152 le dépasse, donc au plus 21 comparaisons. Un dictionnaire (table de hachage) indexé par le numéro de compte donne un accès moyen en O(1).', 'texte', 75, false, 20
from public.courses c where c.slug = 'lic-info-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Structures de données et complexité : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Bases de données relationnelles et SQL : l''essentiel pour l''examen', '## Objectifs de la leçon

- Construire un modèle entité-association et le traduire en schéma relationnel.
- Identifier les dépendances fonctionnelles et normaliser jusqu''à la troisième forme normale.
- Écrire des requêtes SQL : sélection, jointure, regroupement, sous-requête.

## Fiche 1 : vocabulaire relationnel

Une base de données relationnelle range les informations dans des tables (relations). Chaque ligne (tuple) décrit un objet ; chaque colonne (attribut) a un domaine de valeurs. Un SGBD (système de gestion de bases de données) stocke les tables, contrôle les accès et exécute les requêtes.

- Clé primaire : attribut (ou groupe d''attributs) qui identifie chaque ligne de façon unique ; on la souligne.
- Clé étrangère : attribut qui fait référence à la clé primaire d''une autre table ; on la précède d''un dièse (#).
- Contrainte d''intégrité référentielle : une clé étrangère doit correspondre à une ligne existante.

## Fiche 2 : modèle entité-association

On part d''un texte. Exemple : « La boutique en ligne fictive Sama Market enregistre ses clients (nom, ville). Un client passe zéro ou plusieurs commandes ; une commande est passée par un seul client. Une commande contient un ou plusieurs produits, en une certaine quantité ; un produit peut figurer dans zéro ou plusieurs commandes. »

- Entités : CLIENT, COMMANDE, PRODUIT.
- Association PASSER entre CLIENT (0,n) et COMMANDE (1,1).
- Association CONTENIR entre COMMANDE (1,n) et PRODUIT (0,n), portant l''attribut quantité.

Schéma décrit en texte : trois rectangles (entités) reliés par deux ovales (associations) ; les cardinalités sont écrites près de chaque entité, sur le trait.

Règles de passage au modèle relationnel :

- Association avec une cardinalité (1,1) d''un côté : la clé du côté (0,n) ou (1,n) devient clé étrangère dans la table du côté (1,1).
- Association avec (0,n) ou (1,n) des deux côtés : elle devient une table, dont la clé primaire est la réunion des deux clés étrangères.

Schéma relationnel obtenu :

- CLIENT(id_client, nom, ville)
- COMMANDE(id_cmd, date_cmd, #id_client)
- PRODUIT(id_prod, libelle, prix)
- LIGNE(#id_cmd, #id_prod, quantite), clé primaire (id_cmd, id_prod)

## Fiche 3 : dépendances fonctionnelles et formes normales

Une dépendance fonctionnelle A → B signifie : connaître A détermine une seule valeur de B. Exemple : id_prod → prix.

- 1re forme normale (1FN) : tous les attributs sont atomiques (pas de liste de téléphones dans une seule case).
- 2e forme normale (2FN) : 1FN, et aucun attribut non clé ne dépend d''une partie seulement de la clé primaire.
- 3e forme normale (3FN) : 2FN, et aucun attribut non clé ne dépend d''un autre attribut non clé (pas de dépendance transitive).

Exemple : la table VENTE(id_cmd, id_prod, quantite, libelle, prix, id_client, ville) n''est pas en 2FN, car libelle et prix dépendent seulement de id_prod, et id_client dépend seulement de id_cmd. On la décompose en LIGNE, PRODUIT et COMMANDE. Dans COMMANDE(id_cmd, id_client, ville), on a id_cmd → id_client → ville : dépendance transitive ; on sort ville dans CLIENT. On retrouve le schéma de la fiche 2, qui est en 3FN. La normalisation évite la redondance et les anomalies de mise à jour (changer un prix à un seul endroit).

## Fiche 4 : le langage SQL

Création et remplissage :

CREATE TABLE client (id_client INTEGER PRIMARY KEY, nom TEXT, ville TEXT);
CREATE TABLE produit (id_prod INTEGER PRIMARY KEY, libelle TEXT, prix INTEGER);
CREATE TABLE commande (id_cmd INTEGER PRIMARY KEY, date_cmd TEXT, id_client INTEGER REFERENCES client(id_client));
CREATE TABLE ligne (id_cmd INTEGER REFERENCES commande(id_cmd), id_prod INTEGER REFERENCES produit(id_prod), quantite INTEGER, PRIMARY KEY (id_cmd, id_prod));
INSERT INTO client VALUES (1, ''Diop'', ''Dakar''), (2, ''Ndiaye'', ''Thiès''), (3, ''Fall'', ''Dakar''), (4, ''Sow'', ''Saint-Louis'');
INSERT INTO produit VALUES (1, ''Clé USB'', 5000), (2, ''Souris'', 3500), (3, ''Clavier'', 7500), (4, ''Casque'', 12000);
INSERT INTO commande VALUES (101, ''2026-03-02'', 1), (102, ''2026-03-05'', 2), (103, ''2026-03-07'', 1), (104, ''2026-03-09'', 3);
INSERT INTO ligne VALUES (101, 1, 2), (101, 2, 1), (102, 4, 1), (103, 3, 2), (103, 1, 1), (104, 2, 3);

Sélection avec condition et tri :

SELECT libelle, prix FROM produit WHERE prix >= 5000 ORDER BY prix DESC;

Résultat : Casque 12000, Clavier 7500, Clé USB 5000.

Jointure et regroupement : montant total de chaque commande.

SELECT l.id_cmd, SUM(l.quantite * p.prix) AS montant
FROM ligne l JOIN produit p ON l.id_prod = p.id_prod
GROUP BY l.id_cmd;

Résultat : 101 → 13 500 ; 102 → 12 000 ; 103 → 20 000 ; 104 → 10 500 FCFA. Vérification de 101 : 2 × 5 000 + 1 × 3 500 = 13 500.

Filtrer des groupes avec HAVING : clients dont le total d''achats dépasse 15 000 FCFA.

SELECT c.nom, SUM(l.quantite * p.prix) AS total
FROM client c
JOIN commande o ON o.id_client = c.id_client
JOIN ligne l ON l.id_cmd = o.id_cmd
JOIN produit p ON p.id_prod = l.id_prod
GROUP BY c.id_client, c.nom
HAVING SUM(l.quantite * p.prix) > 15000;

Résultat : Diop, 33 500 FCFA (13 500 + 20 000). WHERE filtre les lignes avant le regroupement, HAVING filtre les groupes après.

Sous-requête : clients n''ayant jamais commandé.

SELECT nom FROM client WHERE id_client NOT IN (SELECT id_client FROM commande);

Résultat : Sow.

## Points clés

- (1,1) d''un côté : clé étrangère ; (x,n) des deux côtés : table d''association.
- 2FN : pas de dépendance à une partie de la clé ; 3FN : pas de dépendance transitive.
- Toute colonne du SELECT qui n''est pas agrégée doit figurer dans le GROUP BY.

## Exercices pratiques

1. Dans PRODUIT(id_prod, libelle, prix), cite une dépendance fonctionnelle.
2. Écris la requête donnant le nom et la ville des clients de Dakar, triés par nom.
3. Écris la requête donnant le nombre de commandes par client (nom, nombre), y compris pour les clients sans commande.
4. Écris la requête donnant le produit le plus cher, à l''aide d''une sous-requête.
5. La table EMPRUNT(num_etudiant, nom_etudiant, code_livre, titre, date_emprunt), de clé (num_etudiant, code_livre, date_emprunt), est-elle en 2FN ? Normalise-la.
6. Cas pratique. Une mutuelle de santé de Kaolack veut gérer ses adhérents (nom, quartier), leurs ayants droit (nom, lien de parenté) et les remboursements (date, montant) versés à chaque adhérent. Un ayant droit est rattaché à un seul adhérent. Propose un schéma relationnel.

## Corrigé

1. id_prod → libelle (ou id_prod → prix).

2. Requête :

SELECT nom, ville FROM client WHERE ville = ''Dakar'' ORDER BY nom;

Résultat : Diop, Fall.

3. Une jointure externe gauche conserve les clients sans commande ; COUNT(o.id_cmd) ne compte pas les valeurs absentes.

SELECT c.nom, COUNT(o.id_cmd) AS nb
FROM client c LEFT JOIN commande o ON o.id_client = c.id_client
GROUP BY c.id_client, c.nom ORDER BY c.id_client;

Résultat : Diop 2, Ndiaye 1, Fall 1, Sow 0.

4. Requête :

SELECT libelle, prix FROM produit WHERE prix = (SELECT MAX(prix) FROM produit);

Résultat : Casque, 12000.

5. Non : nom_etudiant dépend seulement de num_etudiant, et titre dépend seulement de code_livre (dépendances partielles). Décomposition : ETUDIANT(num_etudiant, nom_etudiant), LIVRE(code_livre, titre), EMPRUNT(#num_etudiant, #code_livre, date_emprunt). Chaque table est en 3FN.

6. ADHERENT(id_adherent, nom, quartier) ; AYANT_DROIT(id_ayant_droit, nom, lien, #id_adherent) ; REMBOURSEMENT(id_remb, date_remb, montant, #id_adherent). Les deux associations sont de type (1,1) côté ayant droit et côté remboursement : on place la clé de l''adhérent en clé étrangère.', 'texte', 75, false, 30
from public.courses c where c.slug = 'lic-info-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Bases de données relationnelles et SQL : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réseaux informatiques : l''essentiel pour l''examen', '## Objectifs de la leçon

- Connaître les couches des modèles OSI et TCP/IP et le principe d''encapsulation.
- Distinguer les équipements et les protocoles usuels.
- Calculer adresse réseau, adresse de diffusion, plage et nombre d''hôtes d''un réseau IPv4.
- Découper un réseau en sous-réseaux, y compris à longueur de masque variable.

## Fiche 1 : le modèle OSI et le modèle TCP/IP

Le modèle OSI décrit la communication en 7 couches, de la plus basse à la plus haute :

- 1 Physique : transmission des bits (câble, fibre, ondes radio).
- 2 Liaison de données : trames entre machines d''un même réseau local, adresses MAC (Ethernet, Wi-Fi). Équipement typique : le commutateur (switch).
- 3 Réseau : acheminement des paquets entre réseaux, adresses IP. Équipement : le routeur.
- 4 Transport : communication de bout en bout entre applications, ports, segments (TCP, UDP).
- 5 Session, 6 Présentation, 7 Application : dialogue, format des données, services aux utilisateurs (HTTP, DNS, SMTP).

Le modèle TCP/IP, utilisé en pratique, regroupe ces fonctions en 4 couches : Accès réseau (OSI 1 et 2), Internet (OSI 3), Transport (OSI 4), Application (OSI 5 à 7).

Encapsulation : à l''émission, chaque couche ajoute son en-tête aux données de la couche supérieure (données → segment → paquet → trame → bits) ; à la réception, chaque couche retire l''en-tête qui la concerne.

## Fiche 2 : protocoles à connaître

- TCP : orienté connexion (établissement en trois temps), fiable (accusés de réception, retransmission), ordonné. Pour le web, la messagerie, le transfert de fichiers.
- UDP : sans connexion, sans garantie de livraison, mais léger et rapide. Pour la voix sur IP, la vidéo en direct, les requêtes DNS courtes.
- Ports courants : HTTP 80, HTTPS 443, DNS 53, SSH 22, SMTP 25.
- DNS traduit un nom de domaine en adresse IP ; DHCP attribue automatiquement une configuration IP (adresse, masque, passerelle, serveur DNS) ; ARP trouve l''adresse MAC correspondant à une adresse IP du réseau local.

## Fiche 3 : adressage IPv4

Une adresse IPv4 compte 32 bits, écrits en quatre octets décimaux : 192.168.10.77. Le masque indique quels bits désignent le réseau. La notation CIDR /26 signifie 26 bits à 1 dans le masque : 255.255.255.192.

Méthode de calcul :

- Adresse réseau = adresse ET masque (bit à bit) : on met à 0 les bits d''hôte.
- Adresse de diffusion (broadcast) : on met à 1 tous les bits d''hôte.
- Nombre d''adresses du bloc : pow(2, 32 − n) ; nombre d''hôtes utilisables : pow(2, 32 − n) − 2.

Exemple : 192.168.10.77/26. Le dernier octet 77 s''écrit 0100 1101 ; le masque 192 s''écrit 1100 0000. Le ET donne 0100 0000 = 64. Réseau : 192.168.10.64 ; diffusion : 0111 1111 = 127, soit 192.168.10.127 ; hôtes de 192.168.10.65 à 192.168.10.126, soit pow(2, 6) − 2 = 62 hôtes.

Astuce : la taille du bloc vaut 256 − 192 = 64 ; les réseaux commencent à 0, 64, 128, 192 ; 77 tombe dans le bloc 64 à 127.

Plages privées, non routées sur Internet : 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16.

## Fiche 4 : découpage en sous-réseaux

Pour obtenir k sous-réseaux, on emprunte b bits à la partie hôte, avec pow(2, b) ≥ k. Exemple : une PME de Dakar dispose de 192.168.1.0/24 et veut 4 sous-réseaux : b = 2, masque /26. Sous-réseaux : 192.168.1.0/26, .64/26, .128/26, .192/26, de 62 hôtes chacun.

Découpage à longueur variable (VLSM) : on traite les besoins du plus grand au plus petit. Avec 192.168.5.0/24 et des besoins de 100, 50 et 20 hôtes :

- 100 hôtes : il faut 7 bits d''hôte (126 hôtes), soit /25 : 192.168.5.0/25.
- 50 hôtes : 6 bits (62 hôtes), /26 : 192.168.5.128/26.
- 20 hôtes : 5 bits (30 hôtes), /27 : 192.168.5.192/27.
- Il reste 192.168.5.224/27 pour une extension future.

## Points clés

- OSI : 7 couches ; TCP/IP : 4 couches ; switch couche 2, routeur couche 3.
- TCP fiable et orienté connexion ; UDP léger et sans connexion.
- Réseau = adresse ET masque ; hôtes = pow(2, 32 − n) − 2.
- VLSM : du plus grand besoin au plus petit, blocs alignés sur leur taille.

## Exercices pratiques

1. À quelle couche OSI appartiennent : une adresse MAC, une adresse IP, un numéro de port, un câble à paires torsadées ?
2. Pour 172.16.45.200/20, donne le masque décimal, l''adresse réseau, l''adresse de diffusion et le nombre d''hôtes.
3. Les machines 10.0.5.20/27 et 10.0.5.40/27 peuvent-elles communiquer sans routeur ?
4. On veut 6 sous-réseaux à partir de 192.168.20.0/24. Combien de bits emprunter ? Quel masque ? Combien d''hôtes par sous-réseau ?
5. Pour une visioconférence et pour le téléchargement d''un relevé bancaire, quel protocole de transport est le plus adapté ?
6. Cas pratique. Un lycée technique de Thiès dispose de 192.168.50.0/24. Besoins : Wi-Fi des élèves 110 hôtes, salle informatique 60 hôtes, administration 28 hôtes, liaison entre deux routeurs 2 hôtes. Propose un plan d''adressage VLSM.

## Corrigé

1. Adresse MAC : couche 2 (liaison) ; adresse IP : couche 3 (réseau) ; port : couche 4 (transport) ; câble : couche 1 (physique).

2. /20 : 8 + 8 + 4 bits à 1, donc 255.255.240.0. Le troisième octet 45 s''écrit 0010 1101 ; ET 1111 0000 donne 0010 0000 = 32. Réseau : 172.16.32.0. Taille du bloc sur le troisième octet : 256 − 240 = 16, donc le bloc va de 32 à 47 : diffusion 172.16.47.255. Hôtes : pow(2, 12) − 2 = 4 094.

3. Avec /27, la taille du bloc est 32. 10.0.5.20 est dans le réseau 10.0.5.0 (de 0 à 31) ; 10.0.5.40 dans le réseau 10.0.5.32 (de 32 à 63). Réseaux différents : il faut un routeur.

4. pow(2, 3) = 8 ≥ 6 : on emprunte 3 bits, masque /27 (255.255.255.224). Chaque sous-réseau a pow(2, 5) − 2 = 30 hôtes ; on obtient 8 sous-réseaux, dont 2 en réserve.

5. Visioconférence : UDP, car un léger retard est plus gênant qu''une image perdue. Relevé bancaire : TCP, car chaque octet doit arriver intact et dans l''ordre.

6. Du plus grand au plus petit : Wi-Fi 110 hôtes → 7 bits (126 hôtes), 192.168.50.0/25 (hôtes .1 à .126). Salle informatique 60 → 6 bits (62), 192.168.50.128/26 (.129 à .190). Administration 28 → 5 bits (30), 192.168.50.192/27 (.193 à .222). Liaison 2 → 2 bits (2 hôtes), 192.168.50.224/30 (.225 et .226, diffusion .227). Il reste de .228 à .255 pour l''avenir.', 'texte', 75, false, 40
from public.courses c where c.slug = 'lic-info-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réseaux informatiques : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Licence 2 Informatique (corrigé détaillé)', '## Présentation

Sujet d''entraînement, non officiel, conçu sur le modèle des examens semestriels de Licence 2. Durée conseillée : 3 heures, sans document. Barème indicatif, non officiel, sur 20 points. Les montants et l''entreprise sont fictifs.

## Exercice 1 : structures de données et complexité (6 points)

1.1 (2 pts) Que renvoie f(64) ? Quelle est la complexité de f en fonction de n ?

def f(n):
    c = 0
    i = n
    while i > 1:
        i = i // 2
        c = c + 1
    return c

print(f(64))

1.2 (1,5 pt) Une file vide subit : enfiler A, enfiler B, enfiler C, défiler, enfiler D, défiler. Quels éléments sont sortis ? Que contient la file ?

1.3 (2,5 pts) Insère dans un ABR vide : 8, 3, 10, 1, 6, 14, 4, 7, 13. Donne le parcours infixe, la hauteur (en niveaux) et le nombre de comparaisons pour rechercher 7.

## Exercice 2 : bases de données (7 points)

La compagnie fictive de transport interurbain Teranga Voyages utilise le schéma suivant :

- BUS(immat, nb_places)
- CHAUFFEUR(id_ch, nom)
- VOYAGE(id_voy, date_voy, ville_dep, ville_arr, prix, #immat, #id_ch)
- RESERVATION(id_res, #id_voy, passager, nb_places)

Données : 3 voyages (1 : Dakar–Touba le 2 mai, 4 000 FCFA, chauffeur Gueye ; 2 : Dakar–Saint-Louis le 2 mai, 5 000 FCFA, chauffeur Sarr ; 3 : Dakar–Touba le 3 mai, 4 000 FCFA, chauffeur Sarr), 3 chauffeurs (Gueye, Sarr, Ba) et 5 réservations (voyage 1 : 3, 2 et 5 places ; voyage 2 : 4 places ; voyage 3 : 1 place).

2.1 (1 pt) Quelles sont les clés étrangères ? Pourquoi VOYAGE porte-t-il #immat plutôt que BUS porter #id_voy ?

2.2 (1 pt) Écris la requête listant les voyages Dakar–Touba (identifiant et date).

2.3 (2 pts) Écris la requête donnant la recette de chaque voyage (places réservées × prix). Donne le résultat.

2.4 (1,5 pt) Écris la requête donnant les chauffeurs n''ayant effectué aucun voyage.

2.5 (1,5 pt) Écris la requête donnant les voyages ayant au moins 5 places réservées.

## Exercice 3 : réseaux (7 points)

3.1 (1 pt) À quelle couche OSI travaillent un commutateur et un routeur ?

3.2 (2 pts) Pour 192.168.100.150/25 : adresse réseau, diffusion, nombre d''hôtes.

3.3 (1,5 pt) Pour 172.20.8.0/22 : masque décimal, nombre d''hôtes, première et dernière adresse utilisables.

3.4 (2,5 pts) Découpe 192.168.200.0/24 en VLSM pour trois services de 50, 25 et 10 hôtes.

## Corrigé détaillé

1.1 i prend les valeurs 64, 32, 16, 8, 4, 2, 1 : la boucle fait 6 tours, f(64) = 6 = log₂ 64. La taille est divisée par 2 à chaque tour : complexité O(log n).

1.2 La file est FIFO : le premier défilement sort A, le second sort B. La file contient C puis D (C en tête).

1.3 Arbre : racine 8 ; à gauche 3 (fils 1 et 6 ; 6 a pour fils 4 et 7) ; à droite 10 (fils droit 14, qui a pour fils gauche 13). Infixe : 1, 3, 4, 6, 7, 8, 10, 13, 14. Hauteur : 4 niveaux (8, 3, 6, 4 ou 8, 10, 14, 13). Recherche de 7 : comparaisons avec 8, 3, 6, puis 7 : 4 comparaisons.

2.1 Clés étrangères : immat et id_ch dans VOYAGE, id_voy dans RESERVATION. Un voyage utilise un seul bus (cardinalité 1,1 côté VOYAGE) alors qu''un bus effectue plusieurs voyages (0,n) : la clé du bus migre dans VOYAGE. L''inverse obligerait à mettre plusieurs voyages dans une seule case, ce qui viole la 1FN.

2.2 Requête :

SELECT id_voy, date_voy FROM voyage WHERE ville_dep = ''Dakar'' AND ville_arr = ''Touba'';

Résultat : voyage 1 du 2026-05-02 et voyage 3 du 2026-05-03.

2.3 Requête :

SELECT v.id_voy, SUM(r.nb_places) * v.prix AS recette
FROM voyage v JOIN reservation r ON r.id_voy = v.id_voy
GROUP BY v.id_voy, v.prix;

Résultat : voyage 1 : (3 + 2 + 5) × 4 000 = 40 000 FCFA ; voyage 2 : 4 × 5 000 = 20 000 FCFA ; voyage 3 : 1 × 4 000 = 4 000 FCFA.

2.4 Requête :

SELECT nom FROM chauffeur WHERE id_ch NOT IN (SELECT id_ch FROM voyage);

Résultat : Ba. Une variante avec LEFT JOIN et WHERE v.id_voy IS NULL est également acceptée.

2.5 Requête :

SELECT id_voy, SUM(nb_places) AS places FROM reservation
GROUP BY id_voy HAVING SUM(nb_places) >= 5;

Résultat : voyage 1 avec 10 places. Utiliser WHERE à la place de HAVING est une erreur fréquente, sanctionnée.

3.1 Commutateur : couche 2 (liaison) ; routeur : couche 3 (réseau).

3.2 Masque /25 = 255.255.255.128 ; 150 s''écrit 1001 0110, ET 1000 0000 donne 128. Réseau 192.168.100.128 ; diffusion 192.168.100.255 ; pow(2, 7) − 2 = 126 hôtes.

3.3 /22 : 255.255.252.0. Hôtes : pow(2, 10) − 2 = 1 022. Bloc de 4 sur le troisième octet (8 à 11) : première adresse 172.20.8.1, dernière 172.20.11.254 (diffusion 172.20.11.255).

3.4 50 hôtes → /26 : 192.168.200.0/26 (hôtes .1 à .62). 25 hôtes → /27 : 192.168.200.64/27 (.65 à .94). 10 hôtes → /28 (14 hôtes) : 192.168.200.96/28 (.97 à .110, diffusion .111). Reste disponible à partir de .112.

## Conseils de correction

Les points se perdent surtout sur trois erreurs : une complexité donnée sans compter les tours de boucle, une requête de regroupement sans GROUP BY ou avec WHERE à la place de HAVING, et un calcul de sous-réseau où le bloc n''est pas aligné (un /27 doit commencer à un multiple de 32 sur le dernier octet). Écris toujours le dernier octet en binaire et vérifie que l''adresse de diffusion précède immédiatement le réseau suivant.

## Exercices pratiques

1. Quelle est la complexité d''un tri par sélection ?
2. Quelle clause SQL élimine les doublons ?
3. Combien d''hôtes dans un /30 ? Pour quel usage ?
4. Quel protocole attribue automatiquement les adresses IP ?

## Corrigé

1. O(n²) : n(n − 1)/2 comparaisons.
2. SELECT DISTINCT.
3. pow(2, 2) − 2 = 2 hôtes : liaison point à point entre deux routeurs.
4. DHCP.', 'texte', 90, false, 50
from public.courses c where c.slug = 'lic-info-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Licence 2 Informatique (corrigé détaillé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Structures de données et complexité', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 2 Informatique.
- Objectifs : compter les opérations d''un algorithme et donner sa complexité ; utiliser piles et files ; construire et parcourir un arbre binaire de recherche ; choisir la structure adaptée à un problème.
- Matériel : tableau blanc, diaporama, Python projeté, feuille d''exercices.
- Prérequis : programmation Python de Licence 1 ; leçon « Structures de données et complexité : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil

Texte du formateur : « Bonjour. Deux programmes peuvent donner le même résultat et pourtant l''un répondre en une seconde et l''autre en une journée. Aujourd''hui, nous apprenons à mesurer ce coût avant même d''exécuter le programme, et à choisir la bonne structure pour ranger les données. »

## 05:00 – 20:00 · Mesurer le coût d''un algorithme

Texte du formateur : « On ne mesure pas en secondes, car cela dépend de la machine. On compte les opérations élémentaires en fonction de la taille n des données. Regardez ce programme, qui cherche si deux clients ont le même numéro de téléphone. »

def doublon(L):
    n = len(L)
    for i in range(n):
        for j in range(i + 1, n):
            if L[i] == L[j]:
                return True
    return False

print(doublon([771234567, 781112233, 771234567]))

« Dans le pire cas, sans doublon, on fait (n − 1) + (n − 2) + … + 1 = n(n − 1)/2 comparaisons : O(n²). Pour 10 000 clients, c''est environ 50 millions de comparaisons. Maintenant, la même chose avec un ensemble, qui est une table de hachage. »

def doublon_rapide(L):
    vus = set()
    for x in L:
        if x in vus:
            return True
        vus.add(x)
    return False

print(doublon_rapide([771234567, 781112233, 771234567]))

« Le test x in vus coûte O(1) en moyenne : l''algorithme est en O(n). Pour 10 000 clients, environ 10 000 opérations. Même résultat, un coût divisé par plusieurs milliers. Voilà pourquoi la structure de données compte. »

## 20:00 – 35:00 · Recherche dichotomique et logarithme

Texte du formateur : « Jeu : je pense à un nombre entre 1 et 1 000, vous avez droit à des questions "plus grand ou plus petit". Combien de questions au maximum ? » Le formateur fait jouer deux étudiants. « Avec la bonne stratégie, toujours couper en deux, 10 questions suffisent, car pow(2, 10) = 1 024. C''est la recherche dichotomique, en O(log n). »

Le formateur écrit la fonction au tableau, puis fait la trace pour rechercher 40 dans [3, 8, 12, 17, 25, 31, 40, 52] : tour 1, g = 0, d = 7, m = 3, 17 est inférieur à 40, g = 4 ; tour 2, m = 5, 31 est inférieur à 40, g = 6 ; tour 3, m = 6, L[6] = 40 : trouvé en 3 comparaisons.

« Condition indispensable : la liste doit être triée. Si elle ne l''est pas, il faut d''abord la trier, ce qui coûte O(n log n) avec un bon algorithme comme le tri fusion. Cela ne vaut la peine que si on fait beaucoup de recherches. »

## 35:00 – 40:00 · Quiz interactif

- Q1 : deux boucles imbriquées de n tours : complexité ? Réponse : O(n²).
- Q2 : combien de comparaisons au plus pour une dichotomie sur 1 000 000 d''éléments ? Réponse : 20.
- Q3 : une pile est-elle FIFO ou LIFO ? Réponse : LIFO.
- Q4 : quelle structure Python offre un test d''appartenance en O(1) en moyenne ? Réponse : set ou dict.

## 40:00 – 55:00 · Piles et files en situation

Texte du formateur : « Une pile, c''est la pile d''assiettes : on prend celle du dessus. Une file, c''est la file d''attente devant le guichet d''une agence de transfert d''argent à Pikine : premier arrivé, premier servi. »

Exemple de pile : l''annulation dans un traitement de texte. Chaque action est empilée ; « annuler » dépile la dernière. Exemple de file : un serveur d''impression d''université qui reçoit les documents des étudiants et les imprime dans l''ordre d''arrivée.

from collections import deque
guichet = deque()
for client in ["Awa", "Moussa", "Fatou"]:
    guichet.append(client)
servi = guichet.popleft()
guichet.append("Ibrahima")
print(servi, list(guichet))

« Le programme affiche Awa [''Moussa'', ''Fatou'', ''Ibrahima'']. Pourquoi deque et pas une liste ? Parce que retirer le premier élément d''une liste avec pop(0) décale tous les autres : O(n). Avec deque, popleft est en O(1). »

Le formateur passe ensuite aux listes chaînées. « Une liste chaînée, c''est un convoi de charrettes : chaque charrette transporte une valeur et est attachée à la suivante. Pour ajouter une charrette en tête, on l''accroche devant : une seule opération, O(1). Mais pour atteindre la dixième charrette, il faut longer les neuf premières : O(n). »

class Maillon:
    def __init__(self, valeur, suivant=None):
        self.valeur = valeur
        self.suivant = suivant

tete = None
for v in [30, 7, 12]:
    tete = Maillon(v, tete)
m = tete
while m is not None:
    print(m.valeur, end=" ")
    m = m.suivant

« Chaque insertion se fait en tête : on insère 30, puis 7 devant, puis 12 devant. Le parcours affiche donc 12 7 30. Retenez la boucle de parcours : on part de la tête et on suit les références jusqu''à None. À l''examen, on vous demandera souvent de dessiner l''état de la liste après une insertion ou une suppression : dessinez des cases et des flèches, et barrez la flèche qui change. »

## 55:00 – 1:10:00 · Arbres binaires de recherche : correction commentée

Énoncé distribué : « Insérer successivement 40, 25, 60, 10, 30, 50, 70, 35 dans un ABR vide. Donner le parcours infixe et la hauteur. Que se passe-t-il si on insère 10, 25, 30, 35, 40, 50, 60, 70 dans cet ordre ? »

Texte du formateur : « On compare toujours à partir de la racine. 40 est la racine. 25 est plus petit : à gauche. 60 : à droite. 10 : plus petit que 40, plus petit que 25 : à gauche de 25. 30 : à gauche de 40, à droite de 25. 50 : à droite de 40, à gauche de 60. 70 : à droite de 60. 35 : à gauche de 40, à droite de 25, à droite de 30. »

Visuel : l''arbre dessiné niveau par niveau. Niveau 1 : 40 ; niveau 2 : 25 et 60 ; niveau 3 : 10, 30, 50, 70 ; niveau 4 : 35.

« Parcours infixe : 10, 25, 30, 35, 40, 50, 60, 70, les valeurs triées, comme toujours pour un ABR. Hauteur : 4 niveaux. Si on insère les valeurs déjà triées, chaque nouvelle valeur part à droite de la précédente : l''arbre devient une liste, de hauteur 8, et la recherche redevient O(n). C''est pour cela qu''on utilise en pratique des arbres équilibrés, qui se réorganisent automatiquement pour garder une hauteur en O(log n). »

Erreur fréquente commentée : placer 35 à droite de 40 parce que « 35 est grand ». On ne compare jamais une valeur au hasard : on descend depuis la racine.

## 1:10:00 – 1:20:00 · Choisir la bonne structure

Texte du formateur : « À l''examen, on vous demande souvent : quelle structure pour ce problème ? Voici ma grille. »

- Accès par position et taille stable : tableau (liste Python).
- Dernier entré, premier sorti : pile.
- Ordre d''arrivée : file.
- Accès rapide par clé (numéro de compte, matricule) : table de hachage (dict).
- Données à garder triées avec insertions fréquentes : arbre binaire de recherche équilibré.
- Insertions et suppressions fréquentes en tête sans accès par position : liste chaînée.

« Exemple : un service de livraison de Dakar veut retrouver instantanément un colis par son code de suivi : dictionnaire. Il veut traiter les colis dans l''ordre d''arrivée au dépôt : file. Il veut lister les colis triés par date limite tout en en ajoutant sans cesse : arbre équilibré, ou file de priorité. »

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale (5 questions)

Synthèse : « Comptez les tours de boucle ; pensez en ordre de grandeur ; une bonne structure vaut mieux qu''une machine plus rapide. Et quand vous hésitez entre deux structures, comparez le coût des opérations que le problème utilise le plus souvent : ajout, suppression, recherche ou parcours. »

1. Complexité de doublon_rapide ? Réponse : O(n) en moyenne.
2. Que vaut log₂(1 048 576) ? Réponse : 20.
3. On enfile 1, 2, 3 puis on défile deux fois : que reste-t-il ? Réponse : 3.
4. Parcours qui donne les valeurs triées dans un ABR ? Réponse : le parcours infixe.
5. Pourquoi un ABR peut-il devenir aussi lent qu''une liste ? Réponse : si les valeurs sont insérées dans l''ordre, l''arbre dégénère et sa hauteur vaut n.

Mot de fin : « Refaites l''ABR de l''énoncé sans regarder la correction. Si vous trouvez la hauteur 4 et le parcours trié, c''est acquis. »', 'video', 90, false, 60
from public.courses c where c.slug = 'lic-info-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Structures de données et complexité');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Bases de données relationnelles et SQL', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 2 Informatique.
- Objectifs : passer d''un texte à un schéma relationnel normalisé ; écrire des requêtes SQL de sélection, de jointure, de regroupement et des sous-requêtes ; éviter les erreurs classiques de copie.
- Matériel : tableau blanc, diaporama, SQLite projeté pour exécuter les requêtes en direct, feuille d''exercices.
- Prérequis : leçon « Bases de données relationnelles et SQL : l''essentiel pour l''examen » ; notions d''ensembles de Licence 1.

## Déroulé minuté

## 00:00 – 05:00 · Accueil

Texte du formateur : « Bonjour. Toutes les applications que vous utilisez, du paiement mobile à l''inscription en ligne à l''université, reposent sur une base de données. Aujourd''hui, nous allons concevoir une petite base de gestion des notes, puis l''interroger en SQL. Tout ce que j''écris, je l''exécute devant vous : vous verrez que le SQL ne pardonne pas l''approximation. »

## 05:00 – 20:00 · Du texte au schéma

Texte du formateur : « Voici l''énoncé : "Le département enregistre ses étudiants (matricule, nom, filière) et ses UE (code, intitulé, nombre de crédits). Un étudiant obtient au plus une note par UE ; une UE est évaluée pour plusieurs étudiants." Première question : quelles sont les entités ? Ce sont les noms qui ont un identifiant propre : ETUDIANT et UE. La note, elle, n''existe que pour un couple étudiant-UE : c''est un attribut de l''association. »

Visuel : deux rectangles ETUDIANT et UE reliés par l''association EVALUER (0,n) des deux côtés, portant l''attribut note.

« Cardinalités (0,n) des deux côtés : l''association devient une table. Schéma relationnel : ETUDIANT(matricule, nom, filiere), UE(code_ue, intitule, credits), NOTE(#matricule, #code_ue, note), avec la clé primaire composée (matricule, code_ue). Cette clé garantit qu''un étudiant n''a qu''une note par UE, exactement ce que dit l''énoncé. »

Question au public : « Pourquoi ne pas mettre nom dans la table NOTE ? » Réponse attendue : nom dépend seulement de matricule, une partie de la clé ; ce serait une violation de la 2FN et une source de redondance.

## 20:00 – 30:00 · Création et premières requêtes

Le formateur crée les tables et insère les données, affichées en permanence sur une diapositive : quatre étudiants (E01 Sy, Info ; E02 Kane, Info ; E03 Diallo, Maths ; E04 Thiam, Info), trois UE de 6 crédits chacune (crédits fictifs pour l''exemple : INF201 Bases de données, INF202 Réseaux, INF203 Structures de données), et les notes : Sy 14, 9 et 12 ; Kane 8, 11 et 10 ; Diallo 16 en INF201 seulement ; Thiam aucune note.

SELECT nom FROM etudiant WHERE filiere = ''Info'' ORDER BY nom;

« Résultat : Kane, Sy, Thiam. Remarquez l''ordre alphabétique et les apostrophes simples autour du texte. »

« Testons maintenant les contraintes. Si j''essaie d''insérer une deuxième note pour Sy en INF201, le SGBD refuse : la clé primaire (matricule, code_ue) existe déjà. Si j''insère une note pour un matricule E09 qui n''existe pas dans ETUDIANT, un SGBD qui applique les clés étrangères refuse aussi : c''est l''intégrité référentielle. Ces refus sont une bonne nouvelle : la base protège elle-même la cohérence des données, au lieu de compter sur la vigilance de chaque programmeur. Attention, avec SQLite il faut activer explicitement la vérification des clés étrangères ; vérifiez toujours la documentation de votre SGBD. »

« Deux instructions de modification complètent le tableau. UPDATE note SET note = 10 WHERE matricule = ''E01'' AND code_ue = ''INF202'' corrige une note après une délibération. DELETE FROM note WHERE matricule = ''E04'' supprime les notes d''un étudiant. Oubliez le WHERE et vous modifiez ou supprimez toute la table : relisez toujours une requête de modification avant de l''exécuter, et faites-la d''abord précéder d''un SELECT avec la même condition pour voir les lignes concernées. »

## 30:00 – 45:00 · Jointures et regroupements

Texte du formateur : « Je veux la moyenne de chaque étudiant. Les noms sont dans ETUDIANT, les notes dans NOTE : il faut une jointure sur le matricule, puis un regroupement par étudiant. »

SELECT e.nom, ROUND(AVG(n.note), 2) AS moyenne
FROM etudiant e JOIN note n ON n.matricule = e.matricule
GROUP BY e.matricule, e.nom
ORDER BY e.matricule;

« Résultat : Sy 11,67 ; Kane 9,67 ; Diallo 16. Vérifions Sy : (14 + 9 + 12)/3 = 35/3 ≈ 11,67. Et Thiam ? Il n''apparaît pas : la jointure interne ne garde que les lignes qui ont une correspondance. Si l''énoncé demande tous les étudiants, il faut un LEFT JOIN. »

« Maintenant, les étudiants dont la moyenne est au moins 10. La condition porte sur une moyenne, donc sur un groupe : c''est HAVING, pas WHERE. »

SELECT e.nom, ROUND(AVG(n.note), 2) AS moyenne
FROM etudiant e JOIN note n ON n.matricule = e.matricule
GROUP BY e.matricule, e.nom
HAVING AVG(n.note) >= 10
ORDER BY e.matricule;

« Résultat : Sy et Diallo. »

## 45:00 – 50:00 · Quiz interactif

- Q1 : quelle clause filtre les groupes ? Réponse : HAVING.
- Q2 : une jointure interne garde-t-elle les étudiants sans note ? Réponse : non.
- Q3 : que compte COUNT(*) par rapport à COUNT(note) ? Réponse : COUNT(*) compte toutes les lignes, COUNT(note) seulement celles où note n''est pas vide.
- Q4 : quelle forme normale interdit les dépendances transitives ? Réponse : la 3FN.

## 50:00 – 1:05:00 · Correction commentée : crédits obtenus

Énoncé : « Pour chaque étudiant ayant au moins une note, donner le nombre d''UE validées (note au moins égale à 10) et le total des crédits obtenus. »

Texte du formateur : « Raisonnons étape par étape. Les crédits sont dans UE, les notes dans NOTE, les noms dans ETUDIANT : trois tables, deux jointures. La condition "note au moins égale à 10" porte sur chaque ligne de note : elle va dans le WHERE, avant le regroupement. »

SELECT e.nom, COUNT(*) AS ue_validees, SUM(u.credits) AS credits
FROM etudiant e
JOIN note n ON n.matricule = e.matricule
JOIN ue u ON u.code_ue = n.code_ue
WHERE n.note >= 10
GROUP BY e.matricule, e.nom
ORDER BY e.matricule;

« Résultat : Sy, 2 UE, 12 crédits ; Kane, 2 UE, 12 crédits ; Diallo, 1 UE, 6 crédits. Kane a exactement 10 en INF203 : avec un strictement supérieur, il perdrait une UE. Lisez chaque mot de l''énoncé. »

Erreur de copie commentée : un étudiant a écrit HAVING n.note >= 10 sans WHERE. La requête est refusée par certains SGBD, et même acceptée, elle ne filtre pas ligne par ligne. Règle : une condition sur une ligne va dans WHERE, une condition sur un agrégat dans HAVING.

## 1:05:00 – 1:15:00 · Sous-requêtes

Texte du formateur : « Quels étudiants n''ont aucune note ? On cherche ceux dont le matricule n''est pas dans la table NOTE. »

SELECT nom FROM etudiant
WHERE matricule NOT IN (SELECT matricule FROM note);

« Résultat : Thiam. Autre exemple : l''étudiant qui a la meilleure note en Bases de données. »

SELECT e.nom, n.note FROM etudiant e JOIN note n ON n.matricule = e.matricule
WHERE n.code_ue = ''INF201''
AND n.note = (SELECT MAX(note) FROM note WHERE code_ue = ''INF201'');

« Résultat : Diallo, 16. La sous-requête calcule le maximum, la requête principale retrouve qui l''a obtenu. Ne tentez pas d''écrire SELECT nom, MAX(note) sans regroupement : le nom affiché ne correspondrait pas forcément au maximum selon le SGBD. »

## 1:15:00 – 1:22:00 · Synthèse

Texte du formateur : « Méthode en cinq temps pour toute requête. Un : quelles colonnes afficher ? Deux : dans quelles tables sont-elles ? Trois : comment relier ces tables (conditions de jointure sur les clés) ? Quatre : quelles lignes garder (WHERE) ? Cinq : faut-il regrouper (GROUP BY) et filtrer les groupes (HAVING) ? Puis triez avec ORDER BY. Côté conception : (x,n) des deux côtés, une table d''association ; (1,1), une clé étrangère ; et vérifiez la 3FN. Enfin, testez mentalement chaque requête sur deux ou trois lignes de données : si vous ne savez pas prédire le résultat, c''est que la requête n''est pas encore claire dans votre tête. »

## 1:22:00 – 1:30:00 · Évaluation finale (5 questions)

1. Écris la requête donnant le nombre d''étudiants par filière. Réponse : SELECT filiere, COUNT(*) FROM etudiant GROUP BY filiere ; résultat : Info 3, Maths 1.
2. Quelle est la clé primaire de NOTE ? Réponse : le couple (matricule, code_ue).
3. Quelle jointure faut-il pour lister tous les étudiants, même sans note ? Réponse : LEFT JOIN depuis ETUDIANT.
4. Quel est le nombre de lignes de NOTE ? Réponse : 7.
5. Une table LIVRE(isbn, titre, id_editeur, nom_editeur) est-elle en 3FN ? Réponse : non, car isbn → id_editeur → nom_editeur est une dépendance transitive ; on crée EDITEUR(id_editeur, nom_editeur).

Mot de fin : « Installez SQLite, recréez ces trois tables et rejouez chaque requête, puis inventez-en dix autres. Le SQL s''apprend les doigts sur le clavier, pas en relisant ses notes. »', 'video', 90, false, 70
from public.courses c where c.slug = 'lic-info-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Bases de données relationnelles et SQL');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Réseaux informatiques et adressage IPv4', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 2 Informatique.
- Objectifs : expliquer les modèles OSI et TCP/IP et l''encapsulation ; décrire ce qui se passe quand on ouvre une page web ; calculer adresse réseau, diffusion et nombre d''hôtes ; réaliser un plan d''adressage VLSM.
- Matériel : tableau blanc, diaporama, tableau des puissances de 2, feuille d''exercices, Python et son module ipaddress pour les vérifications.
- Prérequis : binaire et ET logique de Licence 1 ; leçon « Réseaux informatiques : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil

Texte du formateur : « Bonjour. Quand vous envoyez un message depuis Dakar vers un ami à Abidjan, il traverse des dizaines d''équipements en une fraction de seconde. Aujourd''hui, nous comprenons comment, puis nous faisons les calculs d''adresses qui tombent à chaque examen. »

## 05:00 – 20:00 · Les couches, expliquées par La Poste

Texte du formateur : « Imaginez une lettre. Vous l''écrivez : c''est l''application. Vous la mettez dans une enveloppe avec le nom du service destinataire : c''est le transport, avec le numéro de port. Le bureau de poste ajoute l''adresse de la ville et du quartier : c''est la couche réseau, l''adresse IP. Le facteur la porte jusqu''au prochain bureau : c''est la couche liaison, avec l''adresse MAC, qui change à chaque étape. Et la route elle-même : c''est la couche physique. »

« Le modèle OSI compte 7 couches : physique, liaison, réseau, transport, session, présentation, application. Moyen mnémotechnique : écrivez les initiales P, L, R, T, S, P, A en colonne et répétez-les de bas en haut. Le modèle TCP/IP, celui d''Internet, en compte 4 : accès réseau, Internet, transport, application. »

Visuel : deux colonnes côte à côte, avec des flèches indiquant les correspondances.

« Au niveau transport, deux protocoles se partagent le travail. TCP, c''est le courrier recommandé avec accusé de réception : on établit d''abord la connexion en trois temps (demande, acceptation, confirmation), on numérote les segments, le destinataire accuse réception et l''émetteur renvoie ce qui s''est perdu. UDP, c''est la carte postale glissée dans la boîte : pas de connexion, pas d''accusé, mais aucune attente. Pour un appel vidéo, mieux vaut perdre une image que tout figer en attendant une retransmission : UDP. Pour un virement ou un fichier, chaque octet compte : TCP. »

« Encapsulation : chaque couche ajoute son en-tête. Les données deviennent un segment avec l''en-tête TCP, puis un paquet avec l''en-tête IP, puis une trame avec l''en-tête Ethernet. À l''arrivée, on déballe dans l''ordre inverse. »

## 20:00 – 30:00 · Que se passe-t-il quand on ouvre une page web ?

Texte du formateur : « Vous tapez l''adresse d''un site d''université dans le navigateur. Étape 1 : votre machine a obtenu son adresse IP, son masque, sa passerelle et son serveur DNS grâce à DHCP en se connectant au Wi-Fi. Étape 2 : le navigateur demande au DNS l''adresse IP du site, en général en UDP sur le port 53. Étape 3 : le navigateur ouvre une connexion TCP vers le port 443 du serveur ; c''est l''établissement en trois temps. Étape 4 : la connexion est chiffrée, puis le navigateur envoie une requête HTTP. Étape 5 : le serveur répond avec la page. Pour sortir du réseau local, chaque paquet passe par la passerelle, dont l''adresse MAC a été trouvée grâce à ARP. »

« Un mot sur la pénurie d''adresses. Une adresse IPv4 fait 32 bits, soit pow(2, 32), environ 4,3 milliards d''adresses : c''est moins que le nombre d''appareils connectés dans le monde. Deux réponses coexistent : les adresses privées derrière une traduction d''adresses, que nous verrons plus loin, et IPv6, dont les adresses comptent 128 bits et s''écrivent en hexadécimal. Les calculs d''examen de Licence 2 portent toutefois surtout sur IPv4. »

Question au public : « Pourquoi le DNS utilise-t-il souvent UDP ? » Réponse attendue : la question et la réponse sont courtes ; ouvrir une connexion TCP coûterait plus cher que la requête elle-même.

## 30:00 – 35:00 · Quiz interactif

- Q1 : un routeur travaille à quelle couche ? Réponse : 3, réseau.
- Q2 : port de HTTPS ? Réponse : 443.
- Q3 : quel protocole associe une adresse IP à une adresse MAC ? Réponse : ARP.
- Q4 : TCP ou UDP pour un transfert de fichier ? Réponse : TCP.

## 35:00 – 55:00 · Calcul d''adresses : la méthode en quatre lignes

Texte du formateur : « Prenons 10.10.37.200/21. Ligne 1 : le masque. 21 bits à 1, c''est 8 + 8 + 5 : 255.255.248.0. Ligne 2 : l''octet intéressant, celui où le masque n''est ni 255 ni 0, ici le troisième. Ligne 3 : la taille du bloc, 256 − 248 = 8. Les réseaux commencent donc à 0, 8, 16, 24, 32, 40… 37 tombe dans le bloc qui commence à 32. Ligne 4 : on écrit tout. »

- Réseau : 10.10.32.0.
- Diffusion : 10.10.39.255 (le bloc suivant commence à 40).
- Plage d''hôtes : de 10.10.32.1 à 10.10.39.254.
- Nombre d''hôtes : pow(2, 11) − 2 = 2 046.

« Vérification en binaire : 37 s''écrit 0010 0101, 248 s''écrit 1111 1000 ; le ET donne 0010 0000 = 32. La méthode du bloc et la méthode binaire doivent donner la même chose. Pendant vos révisions, vérifiez aussi avec Python. »

import ipaddress
r = ipaddress.ip_interface("10.10.37.200/21").network
print(r.network_address, r.broadcast_address, r.netmask, r.num_addresses - 2)

« Le programme affiche 10.10.32.0 10.10.39.255 255.255.248.0 2046. »

## 55:00 – 1:10:00 · Correction commentée : plan VLSM d''un centre de santé

Énoncé : « Un centre de santé fictif de Ziguinchor dispose de 172.16.10.0/24. Besoins : 120 postes pour le personnel, 50 pour les consultations, 12 caméras de surveillance, et une liaison entre deux routeurs. »

Texte du formateur : « Règle d''or : on trie les besoins du plus grand au plus petit. Pour chaque besoin, on cherche la plus petite puissance de 2 qui, moins 2, couvre le besoin. »

- Personnel, 120 hôtes : pow(2, 7) − 2 = 126, donc /25 : 172.16.10.0/25, hôtes .1 à .126, diffusion .127.
- Consultations, 50 hôtes : pow(2, 6) − 2 = 62, donc /26 : 172.16.10.128/26, hôtes .129 à .190, diffusion .191.
- Caméras, 12 hôtes : pow(2, 4) − 2 = 14, donc /28 : 172.16.10.192/28, hôtes .193 à .206, diffusion .207.
- Liaison, 2 hôtes : /30 : 172.16.10.208/30, hôtes .209 et .210, diffusion .211.

« Erreur classique sur les copies : commencer les caméras à .191 ou à .200. Un bloc /28 doit commencer à un multiple de 16 ; un /26 à un multiple de 64. Si vous traitez les besoins dans le désordre, vous créez des trous ou des chevauchements. Il reste ici de .212 à .255 pour l''avenir. »

## 1:10:00 – 1:20:00 · Bonnes pratiques d''adressage

Texte du formateur : « Dans une vraie entreprise, on réserve une plage pour la croissance, on documente le plan dans un tableau (service, réseau, masque, passerelle, plage DHCP), et on donne en général à la passerelle la première adresse utilisable du sous-réseau. On utilise les plages privées 10.0.0.0/8, 172.16.0.0/12 et 192.168.0.0/16 en interne ; la traduction d''adresses du routeur permet ensuite de sortir sur Internet. »

Visuel : le tableau de documentation du centre de santé, que le formateur remplit en direct.

- Personnel : 172.16.10.0/25, passerelle 172.16.10.1, plage DHCP de .10 à .126.
- Consultations : 172.16.10.128/26, passerelle 172.16.10.129, plage DHCP de .140 à .190.
- Caméras : 172.16.10.192/28, passerelle 172.16.10.193, adresses fixes de .194 à .206.
- Liaison : 172.16.10.208/30, routeur A en .209, routeur B en .210.

« Pourquoi des adresses fixes pour les caméras ? Parce que le logiciel d''enregistrement doit toujours les retrouver au même endroit. Les imprimantes et les serveurs sont dans le même cas. Les adresses de .2 à .9 du réseau du personnel sont gardées hors DHCP pour de futurs équipements fixes. Enfin, séparer les services en sous-réseaux n''est pas qu''une question de calcul : cela limite la diffusion inutile et permet au routeur de filtrer les échanges, par exemple d''interdire aux postes de consultation l''accès direct aux caméras. »

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale (5 questions)

Synthèse : « Couches : savoir placer chaque notion. Calcul : masque, octet intéressant, taille du bloc, résultat. VLSM : du plus grand au plus petit, blocs alignés. »

1. Masque décimal d''un /27 ? Réponse : 255.255.255.224.
2. Nombre d''hôtes d''un /23 ? Réponse : pow(2, 9) − 2 = 510.
3. Adresse réseau de 192.168.3.100/27 ? Réponse : 192.168.3.96 (blocs de 32 : 96 à 127).
4. Combien de couches dans le modèle TCP/IP ? Réponse : 4.
5. Quel service fournit automatiquement l''adresse de la passerelle à un poste ? Réponse : DHCP.

Mot de fin : « Faites un calcul de sous-réseau par jour jusqu''à l''examen, et vérifiez-le avec Python. En deux semaines, ce sera un réflexe. »', 'video', 90, false, 80
from public.courses c where c.slug = 'lic-info-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Réseaux informatiques et adressage IPv4');
