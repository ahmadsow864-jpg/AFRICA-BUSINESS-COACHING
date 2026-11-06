-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Cours (partie 3/9). À exécuter après seed.sql.

-- Cours : Gérer les parkings d'une entreprise
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'formation-parking-entreprise', (select id from public.levels where name = 'Formation professionnelle'), 'parking-entreprise', 'Gestion des parkings', 'Gérer les parkings d''une entreprise', 'Cette formation apprend à organiser et piloter le parking d''une entreprise, d''une administration ou d''un site industriel : plan et attribution des places, politique d''accès et badges, accueil des visiteurs, sécurité et optimisation du taux d''occupation. Elle s''adresse aux responsables des services généraux, gestionnaires de sites, agents de sécurité encadrants et assistants de direction. Aucun prérequis technique n''est demandé ; savoir utiliser un tableur est un plus.', true, 60
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Le parking d''entreprise : enjeux, acteurs et diagnostic', '## Objectifs de la leçon

- Comprendre pourquoi le parking est une ressource stratégique et coûteuse pour l''entreprise.
- Identifier les acteurs concernés et leurs attentes.
- Réaliser un premier diagnostic du parking d''un site.

## Le parking, une ressource rare et coûteuse

Dans beaucoup de villes d''Afrique de l''Ouest, et particulièrement à Dakar, le foncier est cher et la circulation dense. Une place de stationnement occupe en moyenne 12 à 13 m² de surface, auxquels il faut ajouter les voies de circulation : on compte couramment 25 m² par place en surface. Un parking de 100 places mobilise donc environ 2 500 m², soit l''équivalent d''un petit immeuble de bureaux. Que l''entreprise soit propriétaire du terrain ou locataire, chaque place a un coût : loyer ou amortissement, entretien, éclairage, gardiennage, assurance.

Pourtant, le parking est souvent géré "au fil de l''eau" : les premiers arrivés se garent, les places réservées se multiplient au gré des promotions, les visiteurs tournent dans la rue. Le résultat est connu : des conflits entre salariés, des clients mécontents, des véhicules garés sur les voies pompiers et des places payées mais vides une partie de la journée.

Gérer le parking, c''est donc appliquer une démarche de gestionnaire : connaître l''offre, mesurer la demande, fixer des règles équitables, les faire respecter et améliorer en continu.

## Les acteurs et leurs attentes

Un parking d''entreprise concerne plusieurs groupes dont les intérêts peuvent diverger :

- La direction générale : maîtriser les coûts, préserver l''image de l''entreprise, garantir la sécurité.
- Les salariés : trouver une place facilement, de façon équitable, sans perdre de temps.
- Les visiteurs et clients : être accueillis sans attendre et se garer à proximité de l''entrée.
- Les fournisseurs et livreurs : accéder aux quais et zones de livraison à heure fixe.
- Le service de sécurité : contrôler les entrées, prévenir les vols et les accidents.
- Les voisins et la commune : éviter le stationnement sauvage dans la rue.

Le gestionnaire du parking, souvent rattaché aux services généraux, joue le rôle d''arbitre. Il doit écrire des règles claires, validées par la direction et, si possible, présentées aux représentants du personnel.

## Les notions de base

L''offre est le nombre de places réellement utilisables, par catégorie : places standard, places pour personnes à mobilité réduite (PMR), places deux-roues, places visiteurs, places de service (véhicules de la flotte), zones de livraison.

La demande est le nombre de véhicules qui souhaitent stationner, heure par heure. Elle dépend des effectifs présents, des horaires, du télétravail, des visites et de la saisonnalité (fin de mois, inventaires, fêtes).

Le taux d''occupation est le rapport entre les places occupées et les places disponibles à un instant donné. Nous l''étudierons en détail dans la leçon 5.

La règle d''attribution est la façon dont une place est donnée : place nominative (toujours la même personne), place partagée (premier arrivé, premier servi), place réservée par créneau.

## Méthode : le diagnostic en cinq étapes

- Étape 1 : faire l''inventaire physique des places, par catégorie, avec un plan à jour.
- Étape 2 : recenser les ayants droit (salariés autorisés, véhicules de service, prestataires).
- Étape 3 : compter les véhicules présents à plusieurs heures de la journée pendant au moins une semaine.
- Étape 4 : interroger les usagers (questionnaire court) sur leurs difficultés.
- Étape 5 : calculer le coût annuel du parking et le coût par place.

## Exemple : le siège d''une société de distribution à Dakar

Une société de distribution installée à Dakar dispose d''un parking de 80 places sur un terrain loué. Le diagnostic donne les résultats suivants :

- 80 places : 4 PMR, 10 visiteurs, 6 véhicules de service, 60 salariés.
- 95 salariés déclarent venir en voiture au moins deux jours par semaine.
- Comptage à 10 h sur cinq jours : en moyenne 71 véhicules présents.
- Plaintes principales : visiteurs sans place, places réservées aux cadres vides le matin.

Le coût annuel est estimé ainsi : loyer du terrain 9 600 000 FCFA, gardiennage 4 800 000 FCFA, éclairage et entretien 1 200 000 FCFA, soit 15 600 000 FCFA. Le coût par place et par an est donc 15 600 000 / 80 = 195 000 FCFA, soit 16 250 FCFA par mois.

Ce chiffre change la discussion : une place réservée inoccupée la moitié du temps "gaspille" environ 8 000 FCFA par mois. Le diagnostic montre aussi que l''offre (80 places) dépasse la présence moyenne (71 véhicules) : le problème n''est pas le manque de places mais leur mauvaise répartition.

## Points clés

- Le parking a un coût réel qu''il faut chiffrer par place.
- Plusieurs acteurs ont des attentes différentes : le gestionnaire arbitre avec des règles écrites.
- Avant de décider, on mesure : inventaire, ayants droit, comptages, enquête, coûts.
- Un manque de places ressenti est souvent un problème d''organisation plutôt que de capacité.

## Exercices

- Exercice 1 : citez quatre catégories de places qu''on doit distinguer dans l''inventaire.
- Exercice 2 : un parking de 120 places coûte 21 600 000 FCFA par an. Calculez le coût par place et par mois.
- Exercice 3 : sur un site de 50 places, on compte 32, 45, 48 et 30 véhicules à 8 h, 10 h, 12 h et 16 h. À quelle heure la tension est-elle maximale et quel est le taux d''occupation à ce moment ?
- Exercice 4 : pourquoi faut-il compter pendant au moins une semaine et non un seul jour ?

## Corrigé

Exercice 1 : par exemple places standard salariés, places PMR, places visiteurs, places des véhicules de service ; on peut aussi citer les places deux-roues et les zones de livraison.

Exercice 2 : coût par place et par an = 21 600 000 / 120 = 180 000 FCFA ; par mois = 180 000 / 12 = 15 000 FCFA.

Exercice 3 : la tension est maximale à 12 h avec 48 véhicules. Taux d''occupation = 48 / 50 = 0,96 soit 96 %. Le parking est presque saturé à midi.

Exercice 4 : la demande varie selon les jours (réunions, jours de marché, télétravail, fins de mois). Un seul comptage peut tomber sur un jour atypique et conduire à de mauvaises décisions ; une semaine donne une moyenne et révèle les pics.', 'texte', 45, true, 10
from public.courses c where c.slug = 'formation-parking-entreprise'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Le parking d''entreprise : enjeux, acteurs et diagnostic');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Concevoir le plan du parking et attribuer les places', '## Objectifs de la leçon

- Lire et produire un plan de parking utile à la gestion.
- Répartir les places entre les différentes catégories d''usagers.
- Choisir et justifier des règles d''attribution équitables.

## Le plan du parking : un outil de gestion

Le plan n''est pas un simple dessin d''architecte. Pour le gestionnaire, c''est une carte de référence qui doit indiquer pour chaque place un numéro unique, sa catégorie, ses dimensions, et les éléments de circulation : entrées, sorties, sens de circulation, passages piétons, voies réservées aux secours, emplacements des extincteurs et de l''éclairage.

La numérotation doit être logique : par exemple une lettre pour la zone (A, B, C) et un numéro dans la zone (A01 à A30). Elle est peinte au sol ou affichée sur le mur, et reprise dans le tableau d''attribution. Sans numérotation, impossible d''attribuer, de contrôler ou de signaler un incident.

## Dimensions et circulation

Les dimensions usuelles d''une place en épi droit (perpendiculaire à la voie) sont d''environ 2,50 m de large sur 5 m de long, avec une allée de circulation d''environ 5,50 à 6 m pour manœuvrer. Les places en épi à 45° demandent une allée plus étroite mais occupent plus de longueur de bordure. Les places PMR sont plus larges (on prévoit une bande latérale pour ouvrir la porte et sortir un fauteuil) et placées au plus près de l''entrée. Ces valeurs sont des repères de conception : pour un projet neuf, l''architecte applique les normes et règles d''urbanisme en vigueur.

Le gestionnaire vérifie surtout trois points de circulation :

- La voie pompiers et les accès de secours restent libres en permanence.
- Les piétons disposent d''un cheminement protégé jusqu''à l''entrée du bâtiment.
- Les camions de livraison n''ont pas à traverser les zones de stationnement des voitures.

## Répartir les places par catégorie

La répartition se fait à partir du diagnostic. On commence par les places "non négociables" : PMR, secours, livraisons, véhicules de service indispensables. Viennent ensuite les visiteurs, dont le nombre se calcule à partir des rendez-vous constatés : si l''accueil reçoit en pointe 8 véhicules visiteurs simultanés, on prévoit 8 à 10 places visiteurs proches de l''entrée. Le reste est attribué aux salariés.

## Les règles d''attribution aux salariés

Trois grandes formules existent, souvent combinées.

La place nominative : un salarié a toujours la même place. Avantage : simplicité, confort. Inconvénient : la place reste vide quand le titulaire est en mission, en congé ou en télétravail.

Le pool partagé : un ensemble de places est ouvert à un groupe d''ayants droit, sans place fixe. Avantage : meilleure utilisation. Inconvénient : incertitude pour l''usager, surtout s''il arrive tard.

La réservation : l''usager réserve une place pour une journée ou une demi-journée via un tableau partagé ou une application. Avantage : équilibre entre certitude et efficacité. Inconvénient : demande un outil et de la discipline (libérer une réservation non utilisée).

Pour décider qui a droit à une place, l''entreprise fixe des critères objectifs et écrits : contraintes de santé, nécessité de service (commerciaux itinérants, astreintes), horaires décalés, éloignement du domicile, covoiturage. Le rang hiérarchique peut être un critère, mais il est perçu comme moins équitable lorsqu''il est le seul.

## Le foisonnement

Comme tous les ayants droit ne sont jamais présents en même temps, on peut attribuer un pool à plus de personnes qu''il n''y a de places. Le coefficient de foisonnement est le rapport entre le nombre d''ayants droit et le nombre de places du pool. Par exemple, 75 ayants droit pour 60 places donnent un coefficient de 75 / 60 = 1,25. Ce coefficient se fixe à partir des comptages : si la présence maximale observée des ayants droit est de 80 %, alors 60 places couvrent 60 / 0,80 = 75 ayants droit.

## Exemple : refonte de l''attribution d''un siège à Thiès

Une entreprise de BTP à Thiès dispose de 60 places. Avant refonte : 30 places nominatives pour les cadres, 30 places libres pour 70 autres salariés. Les comptages montrent que les places nominatives sont occupées à 55 % en moyenne (déplacements sur les chantiers), tandis que le pool libre est saturé dès 8 h.

La refonte retient : 6 places de service, 4 PMR et visiteurs prioritaires, 6 places visiteurs, 8 places nominatives pour les fonctions à contrainte (direction, astreinte), et un pool réservable de 36 places. Les places nominatives non occupées à 10 h sont libérées pour la journée. Le nombre de salariés servis augmente sans créer une seule place.

## Points clés

- Chaque place a un numéro, une catégorie et figure sur un plan à jour.
- On attribue d''abord les places de sécurité et de service, puis les visiteurs, puis les salariés.
- Les critères d''attribution sont écrits, objectifs et communiqués.
- Le foisonnement permet de servir plus d''usagers que de places, à condition de mesurer la présence réelle.

## Exercices

- Exercice 1 : citez deux avantages et deux inconvénients de la place nominative.
- Exercice 2 : un pool de 40 places est destiné à des salariés dont la présence maximale observée est de 80 %. Combien d''ayants droit peut-on accepter ?
- Exercice 3 : 54 ayants droit partagent 45 places. Calculez le coefficient de foisonnement.
- Exercice 4 : dans quel ordre attribue-t-on les catégories de places ? Justifiez.
- Exercice 5 : proposez trois critères objectifs pour accorder une place à un salarié.

## Corrigé

Exercice 1 : avantages : simplicité de gestion, confort et certitude pour le titulaire. Inconvénients : place vide pendant les absences du titulaire, sentiment d''injustice chez les autres salariés.

Exercice 2 : nombre d''ayants droit = 40 / 0,80 = 50 personnes.

Exercice 3 : coefficient = 54 / 45 = 1,2.

Exercice 4 : d''abord les places liées à la sécurité et aux obligations (secours, PMR), ensuite les places indispensables à l''activité (livraisons, véhicules de service), puis les visiteurs qui représentent l''image de l''entreprise, enfin les salariés avec le solde. On sécurise d''abord ce qui ne peut pas être sacrifié.

Exercice 5 : par exemple raison de santé ou handicap, nécessité de service (déplacements fréquents, astreinte), horaires décalés sans transport public, pratique du covoiturage, éloignement du domicile.', 'texte', 50, false, 20
from public.courses c where c.slug = 'formation-parking-entreprise'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Concevoir le plan du parking et attribuer les places');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Politique d''accès, badges et accueil des visiteurs', '## Objectifs de la leçon

- Rédiger une politique d''accès au parking.
- Choisir un système de contrôle d''accès et gérer les badges.
- Organiser l''accueil et le stationnement des visiteurs.

## La politique d''accès : un document de référence

La politique d''accès est un document court, validé par la direction, qui répond à cinq questions : qui peut entrer, avec quel véhicule, à quelles heures, par quel moyen d''identification, et que se passe-t-il en cas de non-respect. Elle est intégrée au règlement intérieur ou annexée à celui-ci, et portée à la connaissance de tous les usagers. Un usager qui signe la charte du parking reconnaît connaître les règles.

Elle précise notamment :

- Les catégories d''ayants droit et la procédure pour obtenir une autorisation.
- Les horaires d''ouverture et la procédure pour les entrées hors horaires.
- Les règles de circulation : vitesse limitée sur le site, sens de circulation, interdiction de stationner hors des places.
- Les sanctions graduées : rappel oral, avertissement écrit, suspension de l''autorisation.
- La responsabilité : l''entreprise précise ce qu''elle couvre ou non en cas de vol ou de dégât, après vérification avec son assureur.

## Les moyens de contrôle d''accès

Selon la taille du site et le budget, plusieurs solutions existent.

Le contrôle humain : un agent de sécurité à la barrière vérifie une vignette ou une liste. C''est la solution la plus répandue sur les petits sites ; elle est souple mais dépend de la rigueur de l''agent.

La vignette ou macaron : un autocollant numéroté posé sur le pare-brise. Peu coûteux, il est facile à contrôler visuellement mais difficile à retirer quand un salarié quitte l''entreprise.

Le badge sans contact : une carte ou un porte-clés lu par une borne qui commande la barrière. Le système enregistre chaque passage. Le badge se désactive à distance en cas de perte ou de départ.

La lecture de plaques d''immatriculation : une caméra lit la plaque et ouvre la barrière si le véhicule est enregistré. Confortable, mais plus coûteuse et sensible à la propreté des plaques. Ces systèmes enregistrent des données personnelles : leur usage doit respecter la réglementation sur la protection des données (au Sénégal, la Commission de protection des données personnelles, CDP).

## Gérer le cycle de vie des badges

Le badge est un objet de sécurité. Sa gestion suit un cycle précis :

- Demande : formulaire signé par le responsable hiérarchique.
- Attribution : enregistrement dans un registre (numéro de badge, nom, immatriculation, catégorie, date).
- Utilisation : le badge est personnel, il ne se prête pas.
- Perte : déclaration immédiate, désactivation, remplacement éventuellement facturé selon la politique.
- Restitution : à la fin du contrat ou du droit, avec désactivation le jour même.

Le contrôle clé est la revue périodique : chaque trimestre, on compare la liste des badges actifs avec la liste du personnel transmise par les ressources humaines. Tout badge sans titulaire présent est désactivé.

## Accueillir les visiteurs

Le visiteur se fait une première impression de l''entreprise dès le portail. Une bonne organisation comprend :

- Une signalétique claire depuis la rue jusqu''aux places visiteurs.
- Une pré-annonce : l''hôte déclare son visiteur la veille (nom, société, immatriculation, heure).
- Un enregistrement à l''arrivée sur un registre papier ou numérique, avec remise d''un badge ou ticket visiteur temporaire.
- Une durée de validité limitée et la restitution du badge à la sortie.
- Des places proches de l''accueil, réservées et contrôlées.

Pour les livraisons, on définit des créneaux et une zone dédiée afin que les camions ne bloquent pas l''entrée aux heures de pointe.

## Exemple : la clinique de Saint-Louis

Une clinique privée de Saint-Louis reçoit chaque jour des patients, des visiteurs, des médecins vacataires et des fournisseurs de produits médicaux. Le parking de 45 places était saturé par les véhicules du personnel. La clinique a mis en place : badges pour le personnel limités à une zone arrière de 25 places, 15 places patients à l''avant avec contrôle par l''agent d''accueil, 2 places ambulance strictement réservées, 3 places livraisons utilisables de 7 h à 10 h seulement, puis ouvertes aux patients. La revue trimestrielle des badges a permis de désactiver 9 badges d''anciens vacataires dès la première vérification.

## Points clés

- La politique d''accès est écrite, validée, communiquée et assortie de sanctions graduées.
- Le choix du moyen de contrôle dépend du volume, du budget et du niveau de sécurité recherché.
- Le badge a un cycle de vie : demande, attribution, perte, restitution, revue périodique.
- L''accueil des visiteurs commence avant leur arrivée grâce à la pré-annonce.

## Exercices

- Exercice 1 : citez les cinq questions auxquelles répond une politique d''accès.
- Exercice 2 : un salarié quitte l''entreprise le 15 du mois. Décrivez ce qui doit se passer pour son badge.
- Exercice 3 : lors de la revue trimestrielle, le système compte 212 badges actifs et la liste RH 197 salariés ayants droit, dont 4 qui n''ont pas de badge. Combien de badges sont à examiner pour désactivation ?
- Exercice 4 : proposez une procédure d''accueil d''un visiteur en quatre étapes.

## Corrigé

Exercice 1 : qui peut entrer ; avec quel véhicule ; à quelles heures ; par quel moyen d''identification ; quelles sanctions en cas de non-respect.

Exercice 2 : le jour de son départ, il restitue son badge (et sa vignette éventuelle) ; le gestionnaire désactive le badge dans le système le jour même et l''indique dans le registre avec la date. Si le badge n''est pas rendu, il reste désactivé et la procédure prévue (facturation éventuelle) s''applique.

Exercice 3 : ayants droit ayant un badge = 197 - 4 = 193. Badges sans titulaire valide = 212 - 193 = 19 badges à examiner (à désactiver sauf justification : prestataire autorisé, véhicule de service).

Exercice 4 : 1) l''hôte pré-annonce le visiteur la veille ; 2) à l''arrivée, l''agent vérifie l''identité et l''immatriculation et enregistre l''entrée ; 3) il remet un badge visiteur et indique la place ; 4) à la sortie, le badge est restitué et l''heure de sortie notée.', 'texte', 50, false, 30
from public.courses c where c.slug = 'formation-parking-entreprise'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Politique d''accès, badges et accueil des visiteurs');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sécuriser le parking : risques, prévention et incidents', '## Objectifs de la leçon

- Identifier les risques propres à un parking.
- Mettre en place des mesures de prévention et des consignes.
- Gérer un incident et en tirer des enseignements.

## Les risques d''un parking

Un parking concentre des personnes, des véhicules en mouvement et des biens de valeur. On distingue quatre familles de risques :

- Risques pour les personnes : piétons renversés, chutes (sol glissant, nids de poule), agressions, malaises liés à la chaleur.
- Risques pour les véhicules : vols de véhicules ou d''accessoires (batteries, rétroviseurs, roues), rayures, accrochages.
- Risques pour le site : intrusion par le parking, incendie (véhicule, végétation sèche, stockage sauvage), inondation en saison des pluies.
- Risques organisationnels : voie pompiers obstruée, fraude au badge, conflits entre usagers.

## Évaluer les risques

La méthode simple consiste à noter chaque risque selon sa probabilité (de 1 rare à 4 fréquent) et sa gravité (de 1 faible à 4 très grave). La criticité est le produit des deux : criticité = probabilité × gravité, sur une échelle de 1 à 16. On traite en priorité les risques dont la criticité est la plus élevée. Ces évaluations alimentent le document d''évaluation des risques de l''entreprise exigé en matière de santé et sécurité au travail.

## Les mesures de prévention

Aménagement : éclairage suffisant sur toutes les allées et les cheminements piétons, marquage au sol visible, ralentisseurs, miroirs aux angles morts, caniveaux entretenus avant l''hivernage, clôture en bon état.

Équipements : extincteurs adaptés à proximité, accessibles et vérifiés selon la périodicité prévue, trousse de premiers secours au poste de garde, vidéoprotection aux entrées et aux zones sensibles, interphone à la barrière.

Organisation : rondes de gardiennage à horaires variables, registre de main courante, consignes écrites pour les agents, interdiction de laisser des objets de valeur visibles, interdiction de stocker carburant ou matériel dans le parking.

Information : panneaux de vitesse limitée (par exemple 10 km/h sur site, règle interne), rappel des règles à l''arrivée des nouveaux salariés, affichage des numéros d''urgence.

## Les consignes de sécurité

Une consigne doit être courte, actionnable et affichée là où elle sert. Exemple de consigne incendie pour l''agent de parking : donner l''alerte au poste de sécurité ; appeler les sapeurs-pompiers ; si cela est possible sans danger, utiliser l''extincteur ; éloigner les personnes ; dégager la voie d''accès des secours ; accueillir les secours et les guider.

## Gérer un incident

Tout incident, même mineur, est enregistré. La fiche d''incident comprend : date, heure, lieu (numéro de place ou zone), description des faits, personnes et véhicules impliqués, témoins, mesures immédiates, photos, suites données. En cas d''accrochage entre deux véhicules de salariés, l''entreprise rappelle aux conducteurs de remplir un constat amiable et de prévenir leurs assureurs ; elle peut fournir les images de vidéoprotection selon les règles applicables.

Après l''incident, on analyse les causes : pourquoi l''accident s''est-il produit, et pourquoi cette cause existait-elle ? Cette méthode des "pourquoi successifs" évite de s''arrêter à la faute individuelle et fait apparaître les défauts d''organisation (éclairage en panne, marquage effacé, consigne inconnue).

## Exemple : l''entrepôt de la zone industrielle

Un entrepôt de la zone industrielle de Dakar subit trois vols de batteries en deux mois dans son parking du personnel. L''évaluation donne : probabilité 3, gravité 2, criticité 6. Le risque "piéton renversé par un chariot ou un camion" est noté probabilité 2, gravité 4, criticité 8 : il est en réalité prioritaire, même s''il fait moins parler.

Plan d''action retenu : séparation physique du flux camions et du flux piétons par des barrières et un passage marqué ; réparation de l''éclairage de la zone arrière ; déplacement d''une caméra vers la zone des vols ; rondes à horaires variables la nuit. Trois mois plus tard, aucun vol n''est constaté et le flux piétons est sécurisé.

## Points clés

- Quatre familles de risques : personnes, véhicules, site, organisation.
- Criticité = probabilité × gravité : on traite d''abord les risques les plus critiques.
- La prévention combine aménagement, équipements, organisation et information.
- Chaque incident est enregistré et analysé pour en trouver les causes profondes.

## Exercices

- Exercice 1 : citez deux risques pour chacune des quatre familles.
- Exercice 2 : calculez la criticité d''un risque de probabilité 2 et de gravité 3, puis d''un risque de probabilité 4 et de gravité 1. Lequel traiter en premier ?
- Exercice 3 : rédigez la liste des informations d''une fiche d''incident.
- Exercice 4 : un salarié a heurté un poteau en reculant la nuit. Proposez deux "pourquoi" successifs et une mesure corrective.

## Corrigé

Exercice 1 : personnes : piéton renversé, agression ; véhicules : vol de batterie, rayures ; site : intrusion, incendie ; organisation : voie pompiers bloquée, prêt de badge.

Exercice 2 : 2 × 3 = 6 et 4 × 1 = 4. Le premier risque (criticité 6) est prioritaire. Il faut toutefois rester attentif aux risques de gravité élevée, même peu probables.

Exercice 3 : date, heure, lieu précis, description des faits, personnes et véhicules impliqués, témoins, mesures immédiates prises, photos ou images, suites données et responsable du suivi.

Exercice 4 : Pourquoi a-t-il heurté le poteau ? Parce qu''il ne le voyait pas. Pourquoi ne le voyait-il pas ? Parce que le lampadaire de la zone est en panne et que le poteau n''est pas signalé. Mesures : réparer l''éclairage et peindre le poteau avec des bandes réfléchissantes ; vérifier l''éclairage lors des rondes.', 'texte', 50, false, 40
from public.courses c where c.slug = 'formation-parking-entreprise'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sécuriser le parking : risques, prévention et incidents');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Taux d''occupation, indicateurs et optimisation', '## Objectifs de la leçon

- Mesurer le taux d''occupation et les indicateurs du parking.
- Interpréter les résultats pour décider.
- Proposer des actions d''optimisation chiffrées.

## Les indicateurs essentiels

Le taux d''occupation instantané est égal au nombre de places occupées divisé par le nombre de places disponibles, à une heure donnée. Exemple : 102 véhicules sur 120 places à 10 h, taux = 102 / 120 = 85 %.

Le taux d''occupation moyen sur la journée est la moyenne des taux mesurés à intervalles réguliers (par exemple toutes les heures de 7 h à 18 h).

Le taux de pointe est le taux maximal observé. C''est lui qui détermine la sensation de saturation.

Le taux d''utilisation d''une place nominative est la part du temps où cette place est effectivement occupée par son titulaire.

Le coût par place utilisée rapporte le coût du parking au nombre moyen de places réellement occupées, et non au nombre total de places.

En pratique, on considère qu''un parking dont le taux de pointe dépasse 85 à 90 % est vécu comme plein : les usagers tournent pour trouver les dernières places. À l''inverse, un taux moyen faible signale une surcapacité ou une mauvaise répartition.

## Comment collecter les données

- Comptage manuel : l''agent parcourt le parking à heures fixes et note le nombre de véhicules par zone sur une fiche.
- Données de barrière : le système de badges fournit les entrées et sorties ; on en déduit le nombre de véhicules présents.
- Capteurs de place ou caméras : plus précis, utiles sur les grands sites.

Les données sont saisies dans un tableur : une ligne par relevé, avec la date, l''heure, la zone, le nombre de véhicules. Un tableau croisé donne ensuite la moyenne par heure et par jour de la semaine.

## Méthode d''analyse

- Tracer la courbe d''occupation heure par heure pour un jour moyen.
- Repérer le pic et l''heure à laquelle il survient.
- Comparer les zones : certaines sont saturées pendant que d''autres sont vides.
- Comparer les places nominatives à leur utilisation réelle.
- Chiffrer le gaspillage : places payées mais non utilisées.

## Les leviers d''optimisation

Mieux répartir : transformer des places nominatives peu utilisées en places partagées, libérer à 10 h les places réservées inoccupées.

Lisser la demande : décaler certains horaires d''arrivée, planifier les réunions avec visiteurs hors des heures de pointe, organiser les livraisons tôt le matin.

Réduire la demande : encourager le covoiturage avec des places réservées aux voitures de deux personnes ou plus, mettre en place une navette depuis un point de regroupement, faciliter les deux-roues avec un abri sécurisé.

Augmenter l''offre seulement en dernier recours : remarquage plus dense, location d''un terrain voisin, convention avec un parking public. Chaque option est chiffrée et comparée.

## Exemple chiffré : un siège de 120 places

Une banque régionale dispose de 120 places dont 30 nominatives. Le coût annuel du parking est de 21 600 000 FCFA, soit 15 000 FCFA par place et par mois. Les relevés d''un mois donnent :

- Taux de pointe : 96 % à 10 h, d''où les plaintes.
- Taux moyen sur la journée : 68 %.
- Places nominatives : utilisées en moyenne 50 % du temps, soit 15 places vides en moyenne.

Coût des places nominatives inutilisées : 15 places × 15 000 FCFA = 225 000 FCFA par mois, soit 2 700 000 FCFA par an. Décision : on conserve 10 places nominatives pour les fonctions à contrainte et on bascule 20 places dans un pool réservable. Avec un foisonnement de 1,25, ces 20 places servent 25 ayants droit au lieu de 20. Le taux de pointe baisse à 88 % après la mise en place, sans investissement.

## Points clés

- Le taux d''occupation se calcule à l''instant donné, en moyenne journalière et en pointe.
- Au-delà d''environ 85 à 90 % en pointe, le parking est perçu comme saturé.
- On optimise d''abord par l''organisation (répartition, lissage, covoiturage) avant d''investir.
- Chaque place vide a un coût qu''on sait chiffrer.

## Exercices

- Exercice 1 : un parking de 150 places compte 126 véhicules à 11 h. Calculez le taux d''occupation.
- Exercice 2 : relevés sur 4 heures : 60 %, 80 %, 90 %, 70 %. Calculez le taux moyen et le taux de pointe.
- Exercice 3 : 24 places nominatives sont utilisées 40 % du temps. Combien de places sont vides en moyenne ? Avec un coût de 16 000 FCFA par place et par mois, quel est le coût mensuel de ces places vides ?
- Exercice 4 : citez trois leviers pour réduire la pointe sans créer de places.
- Exercice 5 : un parking de 80 places coûte 1 200 000 FCFA par mois et l''occupation moyenne est de 60 places. Calculez le coût par place et le coût par place utilisée.

## Corrigé

Exercice 1 : 126 / 150 = 0,84 soit 84 %.

Exercice 2 : moyenne = (60 + 80 + 90 + 70) / 4 = 300 / 4 = 75 % ; pointe = 90 %.

Exercice 3 : places occupées en moyenne = 24 × 0,40 = 9,6 ; places vides = 24 - 9,6 = 14,4 places. Coût = 14,4 × 16 000 = 230 400 FCFA par mois.

Exercice 4 : par exemple libérer à 10 h les places réservées inoccupées, décaler les horaires de certains services ou des livraisons, encourager le covoiturage, proposer un abri deux-roues ou une navette.

Exercice 5 : coût par place = 1 200 000 / 80 = 15 000 FCFA par mois ; coût par place utilisée = 1 200 000 / 60 = 20 000 FCFA par mois.', 'texte', 55, false, 50
from public.courses c where c.slug = 'formation-parking-entreprise'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Taux d''occupation, indicateurs et optimisation');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : piloter le parking d''une entreprise de A à Z', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : responsables des services généraux, gestionnaires de sites, chefs de poste de sécurité.
- Objectifs : diagnostiquer un parking d''entreprise, organiser l''attribution et l''accès, sécuriser le site et piloter l''occupation avec des indicateurs.
- Matériel : diaporama, tableau blanc, plan d''un parking fictif imprimé, tableur projeté, fiches de comptage.
- Prérequis : avoir lu les cinq leçons du module ou connaître le fonctionnement d''un site d''entreprise.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et cas fil rouge

Bonjour à toutes et à tous, et bienvenue dans cette séance consacrée à la gestion des parkings d''entreprise. Pendant une heure et demie, nous allons travailler sur un cas unique que je vous présente tout de suite : la société fictive Teranga Logistique, installée à Dakar, compte 180 salariés et dispose d''un parking de 100 places. La direction reçoit chaque semaine des plaintes : les visiteurs ne trouvent pas de place, les cadres se disputent les emplacements ombragés, et un camion de livraison a bloqué la voie pompiers la semaine dernière. Notre mission : proposer à la direction un plan d''action complet.

Visuel : plan du parking de Teranga Logistique, avec ses trois zones A, B et C. Question à la salle : d''après vous, le problème vient-il d''un manque de places ? Notez votre réponse, nous la vérifierons dans une heure.

## 05:00 – 15:00 · Pourquoi le parking est un sujet de gestion

Commençons par une idée simple : une place de parking coûte de l''argent. Sur le plan, chaque place occupe environ 25 mètres carrés en comptant les allées. Teranga Logistique loue son terrain 12 000 000 FCFA par an et paie 4 800 000 FCFA de gardiennage et 1 200 000 FCFA d''entretien et d''éclairage. Faisons le calcul ensemble au tableau : 12 000 000 plus 4 800 000 plus 1 200 000, cela fait 18 000 000 FCFA par an. Divisé par 100 places, chaque place coûte 180 000 FCFA par an, soit 15 000 FCFA par mois.

Retenez ce chiffre : il va transformer toutes les discussions. Quand un directeur demande une place réservée qu''il n''utilise que deux jours par semaine, vous pourrez lui dire combien coûte cette place vide.

Visuel : diapositive "Les acteurs du parking" : direction, salariés, visiteurs, livreurs, sécurité, voisins. Je vous demande de citer, pour chaque acteur, une attente et une source de conflit possible. Prenez deux minutes avec votre voisin.

## 15:00 – 27:00 · Le diagnostic : inventaire et comptages

Pour décider, il faut mesurer. Le diagnostic de Teranga Logistique a donné ceci : 100 places, dont 4 PMR, 6 visiteurs, 8 véhicules de service, 2 livraisons et 80 places salariés, dont 35 nominatives. Les comptages, réalisés toutes les heures pendant deux semaines, montrent une présence moyenne de 78 véhicules à 10 h et une pointe à 92 véhicules à 11 h.

Visuel : la courbe d''occupation heure par heure, qui monte de 40 % à 7 h à 92 % à 11 h, redescend à 70 % à 14 h puis à 30 % à 18 h.

Regardez bien : à 11 h, il reste 8 places libres. Mais où sont-elles ? Le relevé par zone répond : elles sont toutes en zone A, celle des places nominatives des cadres, dont le taux d''utilisation moyen n''est que de 55 %. Pendant ce temps, les places visiteurs sont occupées par des salariés et les visiteurs se garent dans la rue.

Alors, revenons à la question du début : manque-t-on de places ? La réponse est non. Le problème est un problème de répartition et de contrôle. C''est le constat le plus fréquent dans les entreprises.

## 27:00 – 40:00 · Plan et règles d''attribution

Passons à la reconstruction. Première règle : on attribue d''abord les places qui ne se négocient pas. Les 4 places PMR restent au plus près de l''entrée. La voie pompiers est matérialisée par un marquage jaune et des plots. Les 2 places de livraison sont réservées de 7 h à 10 h, puis ouvertes aux visiteurs.

Deuxième règle : on dimensionne les visiteurs à partir des rendez-vous réels. L''accueil enregistre jusqu''à 9 véhicules visiteurs simultanés : on passe donc de 6 à 10 places visiteurs, contrôlées par l''agent.

Troisième règle : les places nominatives sont réservées aux fonctions à contrainte. Sur 35, on en garde 12 : direction générale, astreintes, salariés avec contrainte de santé. Les 23 autres rejoignent un pool réservable.

Calculons le pool : 80 places salariés moins 4 places transférées aux visiteurs, cela donne 76 places ; moins 12 nominatives, il reste 64 places dans le pool. La présence maximale observée des ayants droit est de 80 % : avec un foisonnement de 1 divisé par 0,80, soit 1,25, le pool peut servir 64 × 1,25 = 80 ayants droit.

Visuel : le nouveau plan coloré par catégorie. Question : quels critères écririez-vous pour être admis dans le pool ? Je note vos propositions au tableau : covoiturage, horaires décalés, éloignement, nécessité de service.

## 40:00 – 45:00 · Pause et quiz interactif

Faisons une courte pause active. Je projette cinq questions, répondez à main levée ou dans le chat.

Question 1 : un parking de 60 places coûte 10 800 000 FCFA par an : combien coûte une place par mois ? Réponse : 10 800 000 divisé par 60 donne 180 000 par an, soit 15 000 FCFA par mois.

Question 2 : quel est le coefficient de foisonnement si 66 ayants droit partagent 55 places ? Réponse : 66 divisé par 55, soit 1,2.

Question 3 : vrai ou faux, un taux d''occupation moyen de 65 % prouve qu''il n''y a jamais de saturation ? Réponse : faux, c''est le taux de pointe qui mesure la saturation.

Question 4 : quelle catégorie de places attribue-t-on en premier ? Réponse : les places liées à la sécurité et aux obligations, comme la voie pompiers et les places PMR.

Question 5 : une place nominative utilisée 40 % du temps coûte 15 000 FCFA par mois ; combien coûte sa part inutilisée ? Réponse : 60 % de 15 000, soit 9 000 FCFA par mois.

## 45:00 – 57:00 · Politique d''accès, badges et visiteurs

Reprenons. Teranga Logistique contrôle aujourd''hui l''accès par une vignette collée sur le pare-brise. Problème : 140 vignettes ont été distribuées en trois ans et personne ne sait combien sont encore valables. Nous proposons un passage au badge sans contact, avec un registre.

Le registre contient pour chaque badge : son numéro, le nom du titulaire, l''immatriculation, la catégorie de droit, la date d''attribution et la date de fin. Chaque trimestre, le gestionnaire compare la liste des badges actifs avec la liste du personnel fournie par les ressources humaines. Tout badge sans titulaire présent est désactivé.

Pour les visiteurs, la procédure tient en quatre temps : l''hôte pré-annonce son visiteur la veille ; l''agent enregistre l''arrivée et remet un badge temporaire ; il indique la place ; le badge est restitué à la sortie.

Attention à un point : si vous choisissez la lecture de plaques d''immatriculation ou la vidéoprotection, vous traitez des données personnelles. Vous devez informer les personnes, limiter la durée de conservation et respecter les formalités auprès de l''autorité de protection des données, au Sénégal la CDP. Vérifiez toujours les textes en vigueur avant de déployer.

Visuel : modèle de charte du parking d''une page. Question : quelles sanctions graduées prévoir pour un salarié qui se gare sur une place visiteur ?

## 57:00 – 1:09:00 · Sécurité du parking

Passons à la sécurité. Je vous propose de construire ensemble la grille des risques de Teranga Logistique. Pour chaque risque, nous notons la probabilité de 1 à 4 et la gravité de 1 à 4, puis nous calculons la criticité, qui est leur produit.

Premier risque : piéton renversé par un camion de livraison. Probabilité 2, gravité 4, criticité 8. Deuxième risque : vol de batterie la nuit. Probabilité 3, gravité 2, criticité 6. Troisième risque : voie pompiers bloquée. Probabilité 3, gravité 4, criticité 12. Quatrième risque : inondation de la zone C pendant l''hivernage. Probabilité 2, gravité 2, criticité 4.

Visuel : la matrice de criticité colorée du vert au rouge. Vous voyez que le risque prioritaire n''est pas le vol, dont on parle beaucoup, mais la voie pompiers bloquée. Les mesures : marquage, plots, consigne aux livreurs, contrôle par l''agent à chaque ronde.

Pour le piéton, on sépare les flux : un passage piéton protégé de la zone B jusqu''à l''entrée, et un créneau de livraison avant 10 h. Pour les vols, on répare l''éclairage de la zone arrière et on varie les horaires des rondes. Enfin, chaque incident est noté sur une fiche : date, heure, lieu, faits, personnes, témoins, mesures, suites.

## 1:09:00 – 1:20:00 · Piloter avec des indicateurs

Un plan d''action sans suivi s''essouffle en trois mois. Nous allons donc définir le tableau de bord mensuel du parking. Il contient cinq indicateurs : le taux de pointe, le taux moyen journalier, le taux d''utilisation des places nominatives, le nombre d''incidents, et le nombre de plaintes enregistrées.

Visuel : le tableur projeté. Je saisis les relevés d''une semaine type après réorganisation : pointe à 86 %, taux moyen à 66 %, utilisation des nominatives à 82 %, un incident mineur, deux plaintes.

Calculons le gain : avant, 35 nominatives utilisées à 55 % laissaient en moyenne 35 × 0,45 = 15,75 places vides, soit environ 236 000 FCFA par mois à 15 000 FCFA la place. Après, 12 nominatives utilisées à 82 % laissent 12 × 0,18 = 2,16 places vides, soit environ 32 400 FCFA par mois. L''économie d''usage dépasse 200 000 FCFA par mois, sans aucun investissement.

Question à la salle : quel seuil d''alerte fixeriez-vous pour le taux de pointe ? Une réponse raisonnable est 90 % : au-delà, on réexamine le foisonnement ou on active des leviers comme le covoiturage.

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Faisons la synthèse. Un parking d''entreprise se gère comme toute ressource : on le chiffre, on le mesure, on fixe des règles écrites et équitables, on contrôle l''accès, on prévient les risques et on pilote avec des indicateurs. Dans le cas de Teranga Logistique, le sentiment de manque de places venait d''une mauvaise répartition, pas d''une capacité insuffisante.

Évaluation finale, cinq questions. Notez vos réponses, puis je donne la correction.

Question 1 : donnez la formule du taux d''occupation instantané. Réponse : nombre de places occupées divisé par nombre de places disponibles, à une heure donnée.

Question 2 : un pool de 48 places et une présence maximale de 80 % : combien d''ayants droit ? Réponse : 48 divisé par 0,80, soit 60 ayants droit.

Question 3 : citez les quatre étapes du cycle de vie d''un badge après la demande. Réponse : attribution avec inscription au registre, utilisation personnelle, déclaration et désactivation en cas de perte, restitution et désactivation au départ, complétées par une revue périodique.

Question 4 : un risque a une probabilité de 3 et une gravité de 3 ; quelle est sa criticité ? Réponse : 3 × 3 = 9.

Question 5 : citez deux leviers d''optimisation sans création de places. Réponse : par exemple transformer des places nominatives en pool réservable, libérer à 10 h les places réservées inoccupées, encourager le covoiturage, lisser les horaires de livraison.

Merci pour votre participation. Pour la suite, je vous invite à réaliser le diagnostic de votre propre site avec la fiche de comptage fournie.', 'video', 90, false, 60
from public.courses c where c.slug = 'formation-parking-entreprise'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : piloter le parking d''une entreprise de A à Z');

-- Cours : Physique-Chimie Terminale : mécanique, oscillations et chimie des solutions
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'physique-chimie-terminale', (select id from public.levels where name = 'Terminale'), null, 'Physique-Chimie', 'Physique-Chimie Terminale : mécanique, oscillations et chimie des solutions', 'Ce cours de Terminale scientifique traite la cinématique et les lois de Newton, l''énergie mécanique, les oscillations mécaniques et électriques, puis les réactions acido-basiques et la cinétique chimique. Il prépare au Bac avec des méthodes de résolution et des travaux pratiques commentés. Prérequis : programme de Première (vecteurs, forces, énergie, quantité de matière) et dérivation.', true, 60
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cinématique du point', '## Objectifs de la leçon

- Définir un référentiel, un repère et la trajectoire d''un mobile.
- Déterminer les vecteurs position, vitesse et accélération.
- Établir et utiliser les équations horaires des mouvements rectilignes uniformes et uniformément variés.
- Caractériser le mouvement circulaire uniforme.

## Référentiel et repère

Un mouvement est toujours décrit par rapport à un référentiel, c''est-à-dire un objet de référence associé à une horloge. Le passager assis dans un car qui roule de Dakar vers Saint-Louis est immobile par rapport au car, mais en mouvement par rapport à la route. En Terminale, on utilise surtout le référentiel terrestre (supposé galiléen pour des mouvements de courte durée).

Dans le référentiel, on choisit un repère (O ; i, j, k). La position du mobile M est donnée par le vecteur position OM = x i + y j + z k. La trajectoire est l''ensemble des positions successives du mobile.

## Vitesse et accélération

- Vecteur vitesse : v = dOM/dt, de coordonnées vx = dx/dt, vy = dy/dt, vz = dz/dt. Il est tangent à la trajectoire. Sa norme s''exprime en m/s (1 m/s = 3,6 km/h).
- Vecteur accélération : a = dv/dt, de coordonnées ax = dvx/dt… Sa norme s''exprime en m/s².

Le mouvement est accéléré si le produit scalaire a · v est positif, ralenti s''il est négatif.

## Mouvement rectiligne uniforme (MRU)

La trajectoire est une droite et la vitesse est constante : a = 0. Équation horaire : x(t) = v t + x₀.

## Mouvement rectiligne uniformément varié (MRUV)

La trajectoire est une droite et l''accélération est constante (a ≠ 0). Équations horaires :
- x(t) = (1/2) a t² + v₀ t + x₀ ;
- v(t) = a t + v₀ ;
- relation indépendante du temps : v² − v₀² = 2a(x − x₀).

Exemple : un taxi démarre à un feu avec une accélération de 2 m/s². Au bout de 5 s, sa vitesse est v = 2 × 5 = 10 m/s (36 km/h) et il a parcouru x = (1/2) × 2 × 25 = 25 m.

## Mouvement circulaire uniforme (MCU)

La trajectoire est un cercle de rayon r et la valeur de la vitesse est constante. La vitesse angulaire est ω = v/r (en rad/s), et la période T = 2π/ω.

Attention : même si la valeur de la vitesse est constante, sa direction change, donc l''accélération n''est pas nulle. Elle est centripète (dirigée vers le centre du cercle) et vaut a = v²/r = rω².

## Méthode de résolution

- Préciser le référentiel et le repère, ainsi que l''origine des dates.
- Identifier le type de mouvement à partir des données (vitesse constante ? accélération constante ?).
- Écrire les équations horaires avec les conditions initiales (x₀, v₀).
- Convertir les unités (km/h en m/s : diviser par 3,6).
- Résoudre et vérifier la cohérence (signe, ordre de grandeur).

## Points clés

- v = dOM/dt et a = dv/dt.
- MRU : x = vt + x₀. MRUV : x = (1/2)at² + v₀t + x₀, v = at + v₀, v² − v₀² = 2aΔx.
- MCU : a = v²/r, dirigée vers le centre.
- 1 m/s = 3,6 km/h.

## Exercices

Exercice 1 : L''abscisse d''un mobile est x(t) = 2t² + 3t + 5 (x en m, t en s). Déterminer v(t) et a(t). Calculer x et v à t = 2 s. Quelle est la nature du mouvement ?

Exercice 2 : Une moto part du repos avec une accélération constante de 2 m/s². Au bout de combien de temps atteint-elle 20 m/s ? Quelle distance a-t-elle alors parcourue ?

Exercice 3 : Un véhicule roulant à 72 km/h freine et s''arrête sur 40 m avec une décélération constante. Calculer l''accélération et la durée du freinage.

Exercice 4 : Un point de la périphérie d''une roue de rayon 0,3 m a une vitesse de 6 m/s. Calculer la vitesse angulaire et l''accélération de ce point.

Exercice 5 : On suppose que deux villes sont distantes de 70 km sur une route rectiligne. Un bus part de la ville A à 60 km/h et, au même instant, une voiture part de la ville B vers A à 80 km/h. Quand et où se croisent-ils ?

## Corrigé

Exercice 1 : v(t) = 4t + 3 (m/s) ; a = 4 m/s². À t = 2 s : x = 8 + 6 + 5 = 19 m et v = 11 m/s. L''accélération est constante et la trajectoire rectiligne : MRUV accéléré (a et v de même signe).

Exercice 2 : v = at, donc t = 20/2 = 10 s. Distance : x = (1/2) × 2 × 10² = 100 m.

Exercice 3 : v₀ = 72/3,6 = 20 m/s. v² − v₀² = 2a Δx : 0 − 400 = 2a × 40, donc a = −5 m/s². Durée : 0 = −5t + 20, donc t = 4 s.

Exercice 4 : ω = v/r = 6/0,3 = 20 rad/s. a = v²/r = 36/0,3 = 120 m/s², dirigée vers le centre de la roue.

Exercice 5 : Origine en A, axe orienté vers B. Bus : x₁ = 60t ; voiture : x₂ = 70 − 80t (x en km, t en h). Croisement : 60t = 70 − 80t, donc 140t = 70 et t = 0,5 h = 30 min. Position : x = 60 × 0,5 = 30 km de la ville A.', 'texte', 50, true, 10
from public.courses c where c.slug = 'physique-chimie-terminale'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cinématique du point');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Les lois de Newton et leurs applications', '## Objectifs de la leçon

- Énoncer les trois lois de Newton.
- Appliquer la deuxième loi (théorème du centre d''inertie) à des situations variées.
- Étudier la chute libre et le mouvement d''un projectile.

## Forces et système

Une force modélise une action mécanique ; elle est représentée par un vecteur (point d''application, direction, sens, valeur en newtons N). Forces usuelles :
- le poids P = m g, vertical, vers le bas (g ≈ 9,8 m/s² ; on prend souvent 10 m/s² pour simplifier) ;
- la réaction d''un support R, qui se décompose en réaction normale et force de frottement ;
- la tension d''un fil ou d''un ressort ;
- la poussée d''Archimède dans un fluide.

Avant tout calcul, on précise le système étudié et le référentiel, puis on fait le bilan des forces extérieures.

## Les trois lois de Newton

Première loi (principe d''inertie) : dans un référentiel galiléen, si la somme des forces extérieures appliquées à un système est nulle, son centre d''inertie est soit au repos, soit en mouvement rectiligne uniforme.

Deuxième loi (théorème du centre d''inertie) : dans un référentiel galiléen, ΣF = m a, où a est l''accélération du centre d''inertie.

Troisième loi (actions réciproques) : si A exerce sur B une force F(A/B), alors B exerce sur A une force F(B/A) = −F(A/B), de même droite d''action.

## Méthode d''application de la deuxième loi

- Définir le système et le référentiel galiléen.
- Faire le bilan des forces et les représenter.
- Écrire ΣF = m a.
- Projeter sur des axes bien choisis (souvent l''axe du mouvement et l''axe perpendiculaire).
- En déduire l''accélération, puis les équations horaires.

## Exemple 1 : plan incliné

Un solide de masse m glisse sans frottement sur un plan incliné d''un angle α par rapport à l''horizontale. Forces : poids P et réaction normale R. Sur l''axe parallèle au plan, orienté vers le bas : m a = m g sin α, donc a = g sin α. Le mouvement est rectiligne uniformément accéléré. Avec α = 30° et g = 10 m/s², a = 5 m/s².

S''il existe une force de frottement f constante opposée au mouvement : m a = m g sin α − f.

## Exemple 2 : chute libre verticale

Un objet est en chute libre s''il n''est soumis qu''à son poids. Alors m a = m g, donc a = g, quelle que soit la masse. Lâché sans vitesse initiale d''une hauteur h, axe vertical orienté vers le bas : z = (1/2) g t² et v = g t. Il atteint le sol au bout de t = √(2h/g), avec la vitesse v = √(2gh).

## Exemple 3 : mouvement d''un projectile

Un ballon est lancé depuis l''origine avec une vitesse v₀ faisant un angle α avec l''horizontale. On néglige l''air. Repère : Ox horizontal, Oy vertical vers le haut. a = g, donc ax = 0 et ay = −g.
- vx = v₀ cos α ; vy = −g t + v₀ sin α.
- x = v₀ cos α × t ; y = −(1/2) g t² + v₀ sin α × t.
- Équation de la trajectoire (parabole) : y = −g x² / (2 v₀² cos² α) + x tan α.
- Portée (retour à y = 0) : xmax = v₀² sin(2α)/g, maximale pour α = 45°.
- Flèche (hauteur maximale) : h = v₀² sin² α/(2g).

Application : un footballeur frappe le ballon à 20 m/s sous un angle de 45° (g = 10 m/s²). Portée : 400 × 1/10 = 40 m. Flèche : 400 × 0,5/20 = 10 m.

## Points clés

- Toujours : système, référentiel, bilan des forces, ΣF = m a, projection.
- Chute libre : a = g, indépendante de la masse.
- Projectile : mouvement uniforme selon x, uniformément varié selon y ; trajectoire parabolique.

## Exercices

On prendra g = 10 m/s².

Exercice 1 : Une mangue se détache d''une branche située à 20 m de hauteur. En négligeant l''air, calculer la durée de chute et la vitesse à l''arrivée au sol.

Exercice 2 : Un solide glisse sans frottement sur un plan incliné de 30°. Calculer son accélération.

Exercice 3 : Une caisse de 2 kg est tirée sur un sol horizontal par une force horizontale de 10 N. Les frottements équivalent à une force de 4 N opposée au mouvement. Calculer l''accélération.

Exercice 4 : Une balle est lancée horizontalement à 10 m/s depuis une hauteur de 5 m. Au bout de combien de temps touche-t-elle le sol ? À quelle distance horizontale du point de lancement ?

Exercice 5 : Une personne de 60 kg se tient sur un pèse-personne dans un ascenseur qui monte avec une accélération de 2 m/s². Quelle force le pèse-personne exerce-t-il sur elle ?

## Corrigé

Exercice 1 : t = √(2h/g) = √(40/10) = 2 s. v = g t = 20 m/s (soit 72 km/h).

Exercice 2 : a = g sin 30° = 10 × 0,5 = 5 m/s².

Exercice 3 : Sur l''axe du mouvement : m a = F − f, soit 2a = 10 − 4 = 6, donc a = 3 m/s². (Poids et réaction normale se compensent sur l''axe vertical.)

Exercice 4 : Selon la verticale, chute libre sans vitesse initiale verticale : 5 = (1/2) × 10 × t², donc t = 1 s. Selon l''horizontale, mouvement uniforme : x = 10 × 1 = 10 m.

Exercice 5 : Forces : poids P = 600 N vers le bas, réaction R vers le haut. Axe vertical vers le haut : R − m g = m a, donc R = m(g + a) = 60 × 12 = 720 N. Le pèse-personne indique une valeur supérieure au poids.', 'texte', 55, false, 20
from public.courses c where c.slug = 'physique-chimie-terminale'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Les lois de Newton et leurs applications');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Travail, énergie et puissance', '## Objectifs de la leçon

- Calculer le travail d''une force constante et la puissance.
- Appliquer le théorème de l''énergie cinétique.
- Utiliser l''énergie potentielle de pesanteur et l''énergie mécanique.
- Analyser la conservation ou la non-conservation de l''énergie mécanique.

## Travail d''une force constante

Le travail d''une force constante F dont le point d''application se déplace de A à B est : W(F) = F · AB = F × AB × cos θ, où θ est l''angle entre F et AB. Il s''exprime en joules (J).
- Si 0 ≤ θ < 90°, le travail est moteur (positif).
- Si θ = 90°, le travail est nul (exemple : la réaction normale sur un plan horizontal).
- Si 90° < θ ≤ 180°, le travail est résistant (négatif), comme celui des frottements.

Travail du poids entre A et B (axe vertical vers le haut) : W(P) = m g (zA − zB). Il ne dépend pas du chemin suivi, seulement de la différence d''altitude.

## Puissance

La puissance moyenne est P = W/Δt, en watts (W). Pour une force constante appliquée à un objet de vitesse v : P = F · v.

## Énergie cinétique et théorème de l''énergie cinétique

L''énergie cinétique d''un solide en translation est Ec = (1/2) m v² (m en kg, v en m/s, Ec en J).

Théorème de l''énergie cinétique : dans un référentiel galiléen, la variation d''énergie cinétique d''un solide entre deux instants est égale à la somme des travaux des forces extérieures : Ec(B) − Ec(A) = ΣW(A→B).

Exemple : un car de transport en commun de 2 000 kg roule à 54 km/h, soit 15 m/s. Ec = (1/2) × 2 000 × 15² = 225 000 J. Pour l''arrêter, les freins doivent fournir un travail résistant de −225 000 J. Si la force de freinage est constante et vaut 9 000 N, la distance d''arrêt est d = 225 000/9 000 = 25 m. Comme Ec est proportionnelle à v², doubler la vitesse multiplie par quatre la distance de freinage : c''est un argument essentiel de sécurité routière.

## Énergie potentielle et énergie mécanique

Énergie potentielle de pesanteur : Epp = m g z, l''axe vertical étant orienté vers le haut et l''origine des altitudes choisie (Epp = 0 en z = 0).

Énergie mécanique : Em = Ec + Epp.

- En l''absence de frottements (seul le poids travaille, ou des forces de travail nul), l''énergie mécanique se conserve : Em(A) = Em(B).
- En présence de frottements, l''énergie mécanique diminue : Em(B) − Em(A) = W(frottements) < 0. L''énergie perdue est transformée en chaleur.

## Exemple : chute d''un objet

Une noix de coco de 1,5 kg tombe d''un cocotier de 12 m (on néglige l''air, g = 10 m/s²). En haut : Ec = 0, Epp = 1,5 × 10 × 12 = 180 J. Au sol : Epp = 0, donc Ec = 180 J, d''où v = √(2 × 180/1,5) = √240 ≈ 15,5 m/s. On retrouve v = √(2gh).

## Méthode

- Définir le système, le référentiel et les deux états (initial et final).
- Choisir l''outil : théorème de l''énergie cinétique (si l''on connaît les forces) ou conservation de l''énergie mécanique (si pas de frottements).
- Exprimer chaque terme, puis résoudre.

## Points clés

- W(F) = F × AB × cos θ ; W(P) = m g (zA − zB).
- Ec = (1/2) m v² ; ΔEc = ΣW.
- Em = Ec + Epp ; Em constante sans frottements ; ΔEm = W(frottements) sinon.
- P = W/Δt.

## Exercices

On prendra g = 10 m/s².

Exercice 1 : Calculer l''énergie cinétique d''une voiture de 1 200 kg roulant à 90 km/h.

Exercice 2 : Un commerçant soulève un sac de riz de 50 kg d''une hauteur de 1,2 m. Calculer le travail du poids du sac.

Exercice 3 : Une balle de 0,5 kg est lâchée sans vitesse d''une hauteur de 5 m. En négligeant l''air, calculer sa vitesse en arrivant au sol.

Exercice 4 : Un enfant de 30 kg descend un toboggan d''une hauteur de 3 m, en partant sans vitesse. Il arrive en bas à 6 m/s. Calculer l''énergie mécanique perdue et le travail des frottements.

Exercice 5 : Une pompe solaire élève 3 m³ d''eau d''un puits de 15 m de profondeur en une heure. Calculer le travail fourni contre le poids et la puissance utile moyenne (masse volumique de l''eau : 1 000 kg/m³).

## Corrigé

Exercice 1 : v = 90/3,6 = 25 m/s. Ec = (1/2) × 1 200 × 25² = 600 × 625 = 375 000 J.

Exercice 2 : Le sac monte : W(P) = m g (zA − zB) = 50 × 10 × (0 − 1,2) = −600 J. Le travail du poids est résistant.

Exercice 3 : Conservation de l''énergie mécanique : m g h = (1/2) m v², donc v = √(2gh) = √100 = 10 m/s.

Exercice 4 : Em initiale = m g h = 30 × 10 × 3 = 900 J (Ec = 0, origine en bas). Em finale = (1/2) × 30 × 36 = 540 J. Énergie perdue : 900 − 540 = 360 J. Travail des frottements : W(f) = −360 J.

Exercice 5 : Masse d''eau : 3 × 1 000 = 3 000 kg. Travail : W = m g h = 3 000 × 10 × 15 = 450 000 J. Puissance : P = 450 000/3 600 = 125 W.', 'texte', 50, false, 30
from public.courses c where c.slug = 'physique-chimie-terminale'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Travail, énergie et puissance');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Les oscillations mécaniques et électriques', '## Objectifs de la leçon

- Établir l''équation différentielle d''un oscillateur mécanique (ressort, pendule).
- Connaître la solution sinusoïdale, la période propre et l''énergie de l''oscillateur.
- Décrire l''amortissement et ses régimes.
- Faire l''analogie avec l''oscillateur électrique LC.

## Le pendule élastique horizontal

Un solide de masse m, fixé à un ressort de raideur k, glisse sans frottement sur un plan horizontal. On repère sa position par l''abscisse x, l''origine étant la position d''équilibre.

Forces : poids et réaction normale (qui se compensent), tension du ressort T = −k x i.

Deuxième loi de Newton projetée sur l''axe : m ẍ = −k x, soit l''équation différentielle :

ẍ + (k/m) x = 0.

Solution : x(t) = Xm cos(ω₀ t + φ), avec :
- Xm l''amplitude (m) ;
- ω₀ = √(k/m) la pulsation propre (rad/s) ;
- φ la phase à l''origine, déterminée par les conditions initiales.

Période propre : T₀ = 2π/ω₀ = 2π √(m/k). Fréquence : f₀ = 1/T₀.

Si l''on écarte le solide de Xm et qu''on le lâche sans vitesse à t = 0, alors x(0) = Xm et v(0) = 0, donc φ = 0 et x(t) = Xm cos(ω₀ t).

Vitesse : v(t) = −Xm ω₀ sin(ω₀ t + φ), de valeur maximale Vm = Xm ω₀ (au passage par la position d''équilibre).

## Énergie de l''oscillateur

Em = (1/2) m v² + (1/2) k x². Sans frottement, elle est constante et vaut (1/2) k Xm² = (1/2) m Vm². Pendant l''oscillation, l''énergie passe sans cesse de la forme potentielle élastique (maximale aux extrémités) à la forme cinétique (maximale au centre).

## Le pendule simple

Une petite masse suspendue à un fil de longueur l oscille dans le champ de pesanteur. Pour de petites oscillations (angle inférieur à une quinzaine de degrés environ), la période est :

T₀ = 2π √(l/g).

Elle ne dépend ni de la masse ni de l''amplitude (isochronisme des petites oscillations). Cette propriété permet de mesurer g au laboratoire.

## Oscillations amorties

En réalité, les frottements dissipent l''énergie : l''amplitude diminue au cours du temps.
- Frottements faibles : régime pseudo-périodique, avec une pseudo-période proche de T₀.
- Frottements importants : régime apériodique, le système revient à l''équilibre sans osciller.

Les amortisseurs des véhicules utilisent cet effet pour éviter que la carrosserie oscille longtemps après un nid-de-poule.

Si un oscillateur est soumis à une excitation périodique de fréquence proche de sa fréquence propre, l''amplitude peut devenir très grande : c''est la résonance (utile pour un instrument de musique, dangereuse pour un pont).

## L''oscillateur électrique LC

Un condensateur de capacité C, chargé, se décharge dans une bobine d''inductance L (résistance négligée). La charge q vérifie : q̈ + q/(LC) = 0. C''est la même forme que pour le ressort : q(t) = Qm cos(ω₀ t + φ) avec ω₀ = 1/√(LC) et T₀ = 2π √(LC). L''énergie oscille entre le condensateur (q²/(2C)) et la bobine ((1/2) L i²). Analogies : x ↔ q, m ↔ L, k ↔ 1/C.

## Points clés

- Ressort : ẍ + (k/m) x = 0, T₀ = 2π√(m/k).
- Pendule simple (petites oscillations) : T₀ = 2π√(l/g).
- Em = (1/2) k Xm² sans frottement ; amortissement : pseudo-périodique ou apériodique.
- Circuit LC : T₀ = 2π√(LC).

## Exercices

Exercice 1 : Un solide de 0,2 kg est fixé à un ressort de raideur 20 N/m. Calculer la pulsation propre, la période propre et la fréquence propre.

Exercice 2 : Le même oscillateur est écarté de 5 cm et lâché sans vitesse. Écrire l''équation horaire x(t), puis calculer l''énergie mécanique et la vitesse maximale.

Exercice 3 : Calculer la période d''un pendule simple de 1 m de longueur (g = 9,8 m/s²).

Exercice 4 : Au laboratoire d''un lycée, un pendule de 0,50 m effectue 20 oscillations en 28,4 s. En déduire une valeur de g.

Exercice 5 : Un circuit LC comprend une bobine de 0,1 H et un condensateur de 10 µF. Calculer la période et la fréquence propres.

## Corrigé

Exercice 1 : ω₀ = √(20/0,2) = √100 = 10 rad/s. T₀ = 2π/10 ≈ 0,628 s. f₀ = 1/T₀ ≈ 1,59 Hz.

Exercice 2 : x(t) = 0,05 cos(10 t) (x en m, t en s), car x(0) = Xm et v(0) = 0 donnent φ = 0. Em = (1/2) × 20 × 0,05² = 0,025 J. Vm = Xm ω₀ = 0,05 × 10 = 0,5 m/s. Vérification : (1/2) × 0,2 × 0,5² = 0,025 J.

Exercice 3 : T₀ = 2π √(1/9,8) ≈ 2π × 0,319 ≈ 2,0 s.

Exercice 4 : T₀ = 28,4/20 = 1,42 s. De T₀ = 2π√(l/g), on tire g = 4π² l / T₀² = 4 × 9,87 × 0,50 / 1,42² ≈ 19,74/2,016 ≈ 9,79 m/s².

Exercice 5 : LC = 0,1 × 10 × 10⁻⁶ = 10⁻⁶ s². T₀ = 2π √(10⁻⁶) = 2π × 10⁻³ ≈ 6,28 × 10⁻³ s, soit 6,28 ms. f₀ ≈ 159 Hz.', 'texte', 55, false, 40
from public.courses c where c.slug = 'physique-chimie-terminale'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Les oscillations mécaniques et électriques');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Chimie : acides et bases, cinétique chimique', '## Objectifs de la leçon

- Définir acide, base, couple acide/base, pH, Ka et pKa.
- Calculer le pH de solutions d''acide fort et de base forte ; utiliser la relation pH = pKa + log([A⁻]/[AH]).
- Exploiter un dosage acido-basique.
- Définir la vitesse de réaction, les facteurs cinétiques et le temps de demi-réaction.

## Acides et bases selon Brønsted

Un acide est une espèce capable de céder un proton H⁺ ; une base est une espèce capable de capter un proton. Un acide AH et sa base conjuguée A⁻ forment un couple AH/A⁻ : AH = A⁻ + H⁺.

Couples de l''eau : H₃O⁺/H₂O et H₂O/HO⁻. L''eau est un ampholyte.

## pH et produit ionique de l''eau

pH = −log[H₃O⁺], soit [H₃O⁺] = 10^(−pH) (concentrations en mol/L). À 25 °C, le produit ionique de l''eau est Ke = [H₃O⁺][HO⁻] = 10⁻¹⁴, soit pKe = 14. Une solution est acide si pH < 7, neutre si pH = 7, basique si pH > 7 (à 25 °C).

- Acide fort (réaction totale avec l''eau, exemple acide chlorhydrique) de concentration C : pH = −log C.
- Base forte (exemple hydroxyde de sodium) de concentration C : [HO⁻] = C, pH = 14 + log C.

## Acides faibles, Ka et pKa

Un acide faible réagit partiellement avec l''eau : AH + H₂O ⇌ A⁻ + H₃O⁺. La constante d''acidité est Ka = [A⁻][H₃O⁺]/[AH], et pKa = −log Ka. Plus le pKa est petit, plus l''acide est fort.

Relation fondamentale : pH = pKa + log([A⁻]/[AH]).
- Si pH < pKa, la forme acide AH prédomine ;
- si pH > pKa, la forme basique A⁻ prédomine ;
- si pH = pKa, [AH] = [A⁻].

Exemple : pour le couple acide éthanoïque/ion éthanoate (présent dans le vinaigre), pKa ≈ 4,8.

## Le dosage acido-basique

On dose une solution d''acide (concentration Ca inconnue, volume Va) par une solution de base forte de concentration Cb connue. On suit le pH avec un pH-mètre.
- À l''équivalence, les réactifs ont été mélangés dans les proportions stœchiométriques : Ca Va = Cb VbE.
- Le point d''équivalence se repère par la méthode des tangentes parallèles ou par le maximum de la dérivée dpH/dVb ; on peut aussi utiliser un indicateur coloré dont la zone de virage contient le pH à l''équivalence.
- Pour un acide faible, à la demi-équivalence (Vb = VbE/2), pH = pKa. Au voisinage, le pH varie peu : c''est une solution tampon.

## Cinétique chimique

Certaines réactions sont rapides (précipitation, acide-base), d''autres lentes (oxydation des ions iodure par l''eau oxygénée, rouille du fer). La cinétique étudie l''évolution de l''avancement x au cours du temps.

Vitesse volumique de réaction : v = (1/V) dx/dt. Graphiquement, c''est le coefficient directeur de la tangente à la courbe x(t), divisé par le volume. En général, elle diminue au cours du temps car les réactifs s''épuisent.

Facteurs cinétiques :
- la concentration des réactifs : plus elle est grande, plus la réaction est rapide ;
- la température : une température plus élevée accélère la réaction (c''est pourquoi on conserve le poisson au frais, et pourquoi la cuisson accélère les transformations des aliments) ;
- un catalyseur : il accélère la réaction sans être consommé.

Temps de demi-réaction t½ : durée au bout de laquelle l''avancement atteint la moitié de sa valeur finale.

## Points clés

- pH = −log[H₃O⁺] ; Ke = 10⁻¹⁴ à 25 °C.
- pH = pKa + log([A⁻]/[AH]) ; demi-équivalence : pH = pKa.
- Équivalence : Ca Va = Cb VbE.
- v = (1/V) dx/dt ; facteurs : concentration, température, catalyseur ; t½ : x = xf/2.

## Exercices

Exercice 1 : Calculer le pH d''une solution d''acide chlorhydrique à 1,0 × 10⁻² mol/L, puis celui d''une solution d''hydroxyde de sodium à 1,0 × 10⁻³ mol/L (25 °C).

Exercice 2 : On dose Va = 20,0 mL d''une solution d''acide éthanoïque par de la soude à Cb = 0,10 mol/L. L''équivalence est obtenue pour VbE = 16,0 mL. Calculer Ca. Quel est le pH pour Vb = 8,0 mL ?

Exercice 3 : Pour le couple acide éthanoïque/ion éthanoate (pKa = 4,8), quelle espèce prédomine à pH 3 ? à pH 7 ?

Exercice 4 : Dans une solution de ce couple, [A⁻] = 10 [AH]. Calculer le pH.

Exercice 5 : On suit l''avancement d''une réaction lente (xf = 2,0 mmol) : t (min) : 0 ; 2 ; 4 ; 6 ; 8 ; 10 ; 20 ; 30. x (mmol) : 0 ; 0,6 ; 1,0 ; 1,3 ; 1,5 ; 1,65 ; 1,95 ; 2,0. Déterminer t½. Comment évoluerait t½ si on réalisait l''expérience à une température plus élevée ?

## Corrigé

Exercice 1 : HCl : pH = −log(10⁻²) = 2. NaOH : pH = 14 + log(10⁻³) = 14 − 3 = 11.

Exercice 2 : Ca = Cb VbE / Va = 0,10 × 16,0 / 20,0 = 0,080 mol/L. Vb = 8,0 mL correspond à la demi-équivalence : pH = pKa = 4,8.

Exercice 3 : À pH 3 < 4,8, l''acide éthanoïque prédomine. À pH 7 > 4,8, l''ion éthanoate prédomine.

Exercice 4 : pH = 4,8 + log 10 = 4,8 + 1 = 5,8.

Exercice 5 : t½ correspond à x = xf/2 = 1,0 mmol, atteint à t = 4 min, donc t½ = 4 min. À température plus élevée, la réaction est plus rapide : t½ serait plus petit.', 'texte', 60, false, 50
from public.courses c where c.slug = 'physique-chimie-terminale'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Chimie : acides et bases, cinétique chimique');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : TP et exercices commentés de mécanique et de chimie', '## Fiche du cours vidéo

- Durée : 1h30.
- Thème : de la mécanique à la chimie, séance de travaux pratiques commentés et d''exercices de type Bac.
- Objectifs : réinvestir les lois de Newton et l''énergie sur un exemple complet ; mesurer g avec un pendule ; exploiter un dosage pH-métrique et un suivi cinétique.
- Matériel : tableau ou diaporama, vidéos ou photos de montages (pendule, burette, pH-mètre), courbes projetées, calculatrice.
- Prérequis : leçons 1 à 5. On prendra g = 10 m/s² sauf indication contraire.

## Déroulé minuté

## 00:00 – 05:00 · Introduction

« Bonjour à toutes et à tous. Cette séance est un peu particulière : nous allons travailler comme au laboratoire. Nous commencerons par un problème de mécanique complet, puis nous mesurerons l''accélération de la pesanteur avec un simple pendule, et nous terminerons par deux manipulations de chimie : un dosage et un suivi cinétique. Pour chaque partie, je vous montrerai comment rédiger comme au Bac. »

Visuel : le plan en quatre parties : mécanique, oscillations, dosage, cinétique.

## 05:00 – 20:00 · Partie 1 : un skieur… sur une dune

« Imaginez un sandboarder, c''est-à-dire un glisseur sur planche, sur une dune près de Lompoul. Masse totale : 70 kg. Il part sans vitesse du sommet A, glisse sur une pente rectiligne de 20 m de long inclinée de 30°, et arrive en B. Première question : en l''absence de frottements, quelle est sa vitesse en B ? »

« Méthode énergétique : le dénivelé est h = 20 × sin 30° = 10 m. Conservation de l''énergie mécanique : m g h = (1/2) m vB², donc vB = √(2 × 10 × 10) = √200 ≈ 14,1 m/s. »

« Méthode dynamique pour vérifier : a = g sin 30° = 5 m/s². Avec v² = 2 a d : v² = 2 × 5 × 20 = 200. Même résultat, heureusement ! »

« Deuxième question : en réalité, il arrive en B à 10 m/s. Calculer la force de frottement supposée constante. Théorème de l''énergie cinétique : (1/2) × 70 × 100 − 0 = m g h − f × 20, soit 3 500 = 7 000 − 20 f, donc f = 175 N. »

« Troisième question : après B, le glisseur arrive sur une partie horizontale où la force de frottement vaut toujours 175 N. Quelle distance parcourt-il avant de s''arrêter ? Théorème de l''énergie cinétique entre B et l''arrêt C : 0 − 3 500 = −175 × BC, donc BC = 20 m. Remarquez que sur l''horizontale, le poids ne travaille pas : seule la force de frottement intervient. »

Question à poser : « Pourquoi la réaction normale ne travaille-t-elle pas ? » Réponse : elle est perpendiculaire au déplacement.

## 20:00 – 32:00 · Partie 2 : mesurer g avec un pendule

« Au laboratoire, il suffit d''une ficelle, d''une petite masse et d''un chronomètre. On mesure la durée de 10 oscillations plutôt qu''une seule, pour réduire l''erreur de déclenchement du chronomètre. »

Tableau projeté : l = 0,40 m : 10 T = 12,7 s ; l = 0,60 m : 10 T = 15,5 s ; l = 0,80 m : 10 T = 17,9 s.

« Calculons T² : 1,27² ≈ 1,61 ; 1,55² ≈ 2,40 ; 1,79² ≈ 3,20. Comme T² = (4π²/g) × l, T² est proportionnel à l. Le coefficient directeur vaut environ 1,61/0,40 ≈ 4,03, 2,40/0,60 = 4,00, 3,20/0,80 = 4,00. Donc 4π²/g ≈ 4,0 et g ≈ 39,5/4,0 ≈ 9,9 m/s². C''est très proche de la valeur attendue d''environ 9,8 m/s². »

Question : « Pourquoi garder de petites amplitudes ? » Réponse : la formule T = 2π√(l/g) n''est valable que pour de petites oscillations.

## 32:00 – 42:00 · Partie 3 : l''oscillateur à ressort et l''énergie

« Un solide de 0,5 kg est accroché à un ressort horizontal de raideur 50 N/m. On l''écarte de 4 cm et on le lâche. ω₀ = √(50/0,5) = 10 rad/s ; T₀ = 2π/10 ≈ 0,63 s ; x(t) = 0,04 cos(10t). Énergie mécanique : (1/2) × 50 × 0,04² = 0,04 J. Vitesse maximale : 0,04 × 10 = 0,4 m/s. »

Visuel : graphiques superposés de Ec(t) et Ep(t) qui s''échangent, et Em constante.

« Regardez bien ces courbes. Aux instants où le solide est à une extrémité, x = ±4 cm, la vitesse est nulle : toute l''énergie est potentielle élastique, 0,04 J. Au passage par la position d''équilibre, x = 0, toute l''énergie est cinétique. Remarquez aussi que Ec et Ep oscillent deux fois plus vite que x : leur période est T₀/2, soit environ 0,31 s. Si l''on ajoute des frottements, par exemple en faisant frotter le solide sur un support rugueux, l''amplitude diminue à chaque oscillation et Em décroît par paliers : on passe au régime pseudo-périodique. »

## 42:00 – 50:00 · Pause et quiz interactif

- Question 1 : Unité de la raideur d''un ressort ? Réponse : N/m.
- Question 2 : La période d''un pendule simple dépend-elle de la masse ? Réponse : non.
- Question 3 : Accélération d''un objet en chute libre ? Réponse : g, quelle que soit sa masse.
- Question 4 : pH d''une solution où [H₃O⁺] = 10⁻⁵ mol/L ? Réponse : 5.
- Question 5 : Un catalyseur est-il consommé ? Réponse : non.

## 50:00 – 1:05:00 · Partie 4 : dosage du vinaigre

« On veut vérifier la concentration en acide éthanoïque d''un vinaigre. On le dilue 10 fois. On prélève 10,0 mL de solution diluée, que l''on dose par de la soude à 0,100 mol/L en suivant le pH. »

Visuel : courbe pH = f(Vb) avec un saut de pH autour de 14 mL.

« Méthode des tangentes : on trace deux tangentes parallèles de part et d''autre du saut, puis la parallèle équidistante ; elle coupe la courbe au point d''équivalence. On lit VbE = 14,0 mL et pH à l''équivalence ≈ 8,8, supérieur à 7 car l''ion éthanoate est une base faible. L''indicateur adapté est donc la phénolphtaléine, dont la zone de virage (environ 8,2 à 10) contient ce pH. »

« Calcul : Cdiluée = 0,100 × 14,0 / 10,0 = 0,140 mol/L. Le vinaigre est 10 fois plus concentré : C₀ = 1,40 mol/L. Avec M(CH₃COOH) = 60 g/mol, la concentration massique vaut 1,40 × 60 = 84 g/L. »

« À la demi-équivalence, Vb = 7,0 mL, on lit pH ≈ 4,8 : c''est le pKa du couple. »

Question : « Pourquoi diluer le vinaigre avant de le doser ? » Réponse : pour que le volume équivalent soit mesurable avec une burette de 25 mL et pour économiser la soude.

## 1:05:00 – 1:17:00 · Partie 5 : suivi cinétique

« On étudie la réaction lente entre les ions peroxodisulfate et les ions iodure, qui produit du diiode coloré : S₂O₈²⁻ + 2 I⁻ → 2 SO₄²⁻ + I₂. La couleur brune du diiode s''intensifie ; un spectrophotomètre mesure l''absorbance, proportionnelle à [I₂], ce qui permet de suivre l''avancement. »

Visuel : courbe x(t) croissante qui tend vers xf.

Tableau projeté : t (min) : 0 ; 5 ; 10 ; 15 ; 20 ; 30 ; 40 ; 60. x (mmol) : 0 ; 0,9 ; 1,5 ; 1,9 ; 2,2 ; 2,6 ; 2,8 ; 3,0. On considère que xf = 3,0 mmol.

« Première question : comment évolue la vitesse ? La pente de la tangente diminue au cours du temps : la vitesse diminue car les réactifs se consomment. Deuxième question : t½. On lit l''abscisse du point où x = xf/2 = 1,5 mmol : ici t½ = 10 min. Troisième question : si on refait l''expérience dans un bain d''eau chaude, la courbe monte plus vite et t½ diminue. »

« Application de la vie courante : la chaîne du froid pour le poisson débarqué à Kayar ralentit les réactions de décomposition. »

## 1:17:00 – 1:24:00 · Synthèse

- Mécanique : système, référentiel, forces ; Newton pour l''accélération, l''énergie pour les vitesses.
- Oscillations : T₀ = 2π√(m/k) et 2π√(l/g) ; énergie qui s''échange.
- Dosage : Ca Va = Cb VbE ; demi-équivalence : pH = pKa.
- Cinétique : vitesse = pente, facteurs cinétiques, t½.

## 1:24:00 – 1:30:00 · Évaluation finale

- Question 1 : Vitesse d''un objet lâché de 45 m après sa chute (sans frottement) ? Réponse : √(2 × 10 × 45) = 30 m/s.
- Question 2 : Ec d''une moto de 150 kg à 20 m/s ? Réponse : 30 000 J.
- Question 3 : Période d''un ressort k = 40 N/m avec m = 0,4 kg ? Réponse : 2π√(0,01) = 0,2π ≈ 0,63 s.
- Question 4 : 10,0 mL d''acide dosés par 12,5 mL de soude à 0,20 mol/L. Ca ? Réponse : 0,20 × 12,5 / 10,0 = 0,25 mol/L.
- Question 5 : Citer deux facteurs cinétiques. Réponse : température et concentration (ou catalyseur).

« Merci pour votre attention. Refaites les calculs de cette séance seuls, et entraînez-vous à lire les courbes : c''est une compétence très demandée au Bac. »', 'video', 90, false, 60
from public.courses c where c.slug = 'physique-chimie-terminale'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : TP et exercices commentés de mécanique et de chimie');

-- Cours : Exploiter un parking public ou privé
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'formation-parking-public', (select id from public.levels where name = 'Formation professionnelle'), 'parking-public', 'Gestion des parkings', 'Exploiter un parking public ou privé', 'Cette formation prépare à exploiter un parking ouvert au public, en gestion propre ou déléguée : modèle économique, construction d''une grille tarifaire horaire et d''abonnements avec calculs de rentabilité, caisse et contrôle des recettes, pilotage de plusieurs sites par indicateurs. Elle s''adresse aux exploitants, investisseurs, chefs de parking, caissiers principaux et agents des collectivités. Les calculs utilisent les quatre opérations et les pourcentages ; un tableur est recommandé.', true, 70
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Le métier d''exploitant et le modèle économique d''un parking', '## Objectifs de la leçon

- Comprendre les différentes formes d''exploitation d''un parking.
- Identifier les sources de recettes et les postes de charges.
- Calculer un résultat prévisionnel et un seuil de rentabilité.

## Le métier d''exploitant

Exploiter un parking, c''est vendre du temps de stationnement sur un espace limité. Le produit paraît simple, mais l''activité combine de l''immobilier (un terrain ou un ouvrage), du service (accueil, sécurité, propreté), de la gestion d''encaissements souvent en espèces, et du marketing (attirer les automobilistes et les abonnés). Dans les villes d''Afrique de l''Ouest où la voirie est saturée, comme Dakar, Abidjan ou Bamako, les parkings organisés répondent à une vraie demande autour des quartiers d''affaires, des marchés, des hôpitaux, des gares et des aéroports.

## Les modes d''exploitation

- Le propriétaire-exploitant : il possède le terrain ou l''ouvrage et l''exploite lui-même. Il garde toute la marge mais supporte tous les risques.
- Le locataire-exploitant : il loue le terrain et paie un loyer fixe ; tout ce qui dépasse le loyer et les charges constitue sa marge.
- Le concessionnaire ou délégataire : une collectivité confie l''exploitation d''un parking public pour une durée définie, contre une redevance (fixe, variable ou mixte) et des obligations de service (horaires, tarifs encadrés, entretien). Les conditions sont fixées par le contrat.
- Le gestionnaire pour compte : il exploite pour le compte d''un propriétaire et perçoit une rémunération (forfait ou pourcentage). Le résultat appartient au propriétaire.

Chaque mode répartit différemment le risque : plus l''exploitant prend de risque (loyer fixe, investissement), plus il attend une marge élevée.

## Les recettes

- Recettes horaires : payées par les usagers occasionnels selon la durée.
- Abonnements : forfaits mensuels pour les salariés du quartier, les résidents, les entreprises.
- Services annexes : lavage, petit entretien, recharge de véhicules électriques, consigne, publicité sur les murs et les tickets.
- Recettes exceptionnelles : événements, foires, locations de zone pour un tournage ou un salon.

## Les charges

Les charges fixes ne varient pas avec la fréquentation : loyer ou redevance fixe, salaires des agents et caissiers, gardiennage de nuit, électricité de base, maintenance des barrières et caisses, assurance, amortissement des équipements.

Les charges variables évoluent avec l''activité : commissions sur paiements électroniques, consommables (tickets, papier), redevance variable éventuelle, usure des équipements.

## Les grandeurs de base

L''offre se mesure en places-heures : nombre de places × nombre d''heures d''ouverture. Un parking de 150 places ouvert 14 heures offre 150 × 14 = 2 100 places-heures par jour.

Le taux d''occupation est le pourcentage de places-heures vendues.

Le revenu moyen par place-heure occupée est la recette horaire divisée par les places-heures occupées. Il dépend de la grille tarifaire et des durées de stationnement.

## Méthode : construire un compte prévisionnel mensuel

- Calculer les places-heures offertes par jour.
- Appliquer un taux d''occupation prudent, fondé sur des comptages ou une étude de marché.
- Multiplier par le revenu moyen par place-heure occupée.
- Multiplier par le nombre de jours d''ouverture du mois.
- Retrancher les charges variables, puis les charges fixes.

## Exemple chiffré : un parking près du marché de Sandaga

Un exploitant étudie un parking de 150 places ouvert de 7 h à 21 h (14 heures), 30 jours par mois. Hypothèses : occupation moyenne 60 %, revenu moyen 220 FCFA par place-heure occupée, charges fixes 5 500 000 FCFA par mois, charges variables égales à 8 % des recettes.

- Places-heures offertes par jour : 150 × 14 = 2 100.
- Places-heures occupées : 2 100 × 0,60 = 1 260.
- Recette par jour : 1 260 × 220 = 277 200 FCFA.
- Recette mensuelle : 277 200 × 30 = 8 316 000 FCFA.
- Charges variables : 8 % × 8 316 000 = 665 280 FCFA.
- Marge sur coûts variables : 8 316 000 - 665 280 = 7 650 720 FCFA.
- Résultat : 7 650 720 - 5 500 000 = 2 150 720 FCFA par mois.

Le seuil de rentabilité est la recette qui couvre exactement toutes les charges. La marge sur coûts variables représente 92 % des recettes, donc : seuil = charges fixes / 0,92 = 5 500 000 / 0,92 ≈ 5 978 261 FCFA. En recette maximale théorique (100 % d''occupation), le parking ferait 2 100 × 220 × 30 = 13 860 000 FCFA. Le seuil correspond donc à une occupation d''environ 5 978 261 / 13 860 000 ≈ 43 %. En dessous de ce taux, l''exploitant perd de l''argent.

## Points clés

- Le mode d''exploitation détermine qui porte le risque et qui garde la marge.
- On raisonne en places-heures offertes, occupées et en revenu moyen par place-heure.
- Charges fixes et variables se séparent pour calculer le seuil de rentabilité.
- Le taux d''occupation de seuil est un repère essentiel avant d''investir.

## Exercices

- Exercice 1 : citez quatre modes d''exploitation et indiquez qui garde le résultat dans chacun.
- Exercice 2 : un parking de 80 places est ouvert 12 heures par jour. Combien de places-heures offre-t-il par jour ?
- Exercice 3 : avec 55 % d''occupation et 250 FCFA par place-heure occupée, quelle est la recette journalière du parking de l''exercice 2 ? Et sur 30 jours ?
- Exercice 4 : charges fixes 2 700 000 FCFA par mois, charges variables 10 % des recettes. Calculez le seuil de rentabilité mensuel.

## Corrigé

Exercice 1 : propriétaire-exploitant (il garde le résultat) ; locataire-exploitant (il garde le résultat après loyer) ; concessionnaire ou délégataire (il garde le résultat après redevance, dans le cadre du contrat) ; gestionnaire pour compte (le résultat revient au propriétaire, le gestionnaire perçoit sa rémunération).

Exercice 2 : 80 × 12 = 960 places-heures par jour.

Exercice 3 : places-heures occupées = 960 × 0,55 = 528 ; recette = 528 × 250 = 132 000 FCFA par jour ; sur 30 jours : 3 960 000 FCFA.

Exercice 4 : la marge sur coûts variables est de 90 % des recettes ; seuil = 2 700 000 / 0,90 = 3 000 000 FCFA par mois.', 'texte', 50, true, 10
from public.courses c where c.slug = 'formation-parking-public'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Le métier d''exploitant et le modèle économique d''un parking');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Construire une grille tarifaire horaire', '## Objectifs de la leçon

- Connaître les composantes d''une grille tarifaire horaire.
- Calculer le montant payé par un usager selon différentes règles.
- Choisir une structure tarifaire adaptée à l''objectif de l''exploitant.

## Pourquoi la tarification est stratégique

Le tarif ne sert pas seulement à encaisser. Il oriente le comportement des usagers. Un tarif qui augmente avec la durée encourage les arrêts courts et donc la rotation : c''est utile près des commerces et des administrations, où l''on veut servir beaucoup de clients différents. Un tarif qui diminue avec la durée attire les stationnements longs : c''est adapté aux parkings de gare, d''aéroport ou de périphérie. Avant de fixer des prix, l''exploitant doit donc répondre à la question : quel usage est-ce que je veux favoriser ?

Pour un parking public en délégation, les tarifs peuvent être encadrés par le contrat avec la collectivité : il faut toujours vérifier ce qui est autorisé avant de modifier une grille.

## Les composantes d''une grille

- La franchise : une durée gratuite (par exemple 15 minutes) pour déposer quelqu''un ou faire demi-tour.
- La première heure : souvent à un prix spécifique.
- Les heures suivantes : prix constant, croissant (progressif) ou décroissant (dégressif).
- L''unité de facturation : l''heure entamée, la demi-heure ou le quart d''heure.
- Le plafond : un montant maximal par période de 24 heures ou par journée d''ouverture.
- Les tarifs particuliers : nuit, week-end, événements.
- Le forfait ticket perdu : montant dû quand l''usager ne présente pas son ticket, souvent égal au plafond journalier.

## Méthode de calcul

- Mesurer la durée exacte : heure de sortie moins heure d''entrée.
- Vérifier la franchise : si la durée est inférieure ou égale à la franchise, rien n''est dû.
- Découper la durée selon l''unité de facturation, en arrondissant à l''unité supérieure si toute unité entamée est due.
- Appliquer les prix de chaque tranche.
- Comparer au plafond et retenir le montant le plus faible.

## Exemple 1 : facturation à l''heure entamée

Grille : franchise 15 minutes, première heure 300 FCFA, heures suivantes 200 FCFA, plafond 2 000 FCFA par journée, toute heure entamée est due.

Un automobiliste entre à 9 h 10 et sort à 12 h 30 : durée 3 h 20. Il a entamé 4 heures. Montant : 300 + 3 × 200 = 900 FCFA.

À partir de quelle durée le plafond s''applique-t-il ? Pour h heures entamées, le montant est 300 + 200 × (h - 1). Pour 9 heures : 300 + 1 600 = 1 900 FCFA ; pour 10 heures : 300 + 1 800 = 2 100 FCFA, ramené au plafond de 2 000 FCFA. Le plafond joue donc à partir de la 10e heure entamée.

## Exemple 2 : facturation au quart d''heure

Même grille, mais après la première heure on facture 50 FCFA par quart d''heure entamé (soit toujours 200 FCFA par heure pleine). Pour 3 h 20 : première heure 300 FCFA ; il reste 2 h 20, soit 140 minutes ; 140 / 15 = 9,33, donc 10 quarts d''heure entamés ; 10 × 50 = 500 FCFA. Total : 800 FCFA.

L''usager paie 100 FCFA de moins qu''avec l''heure entamée. Le fractionnement est perçu comme plus juste et favorise la confiance, mais il réduit un peu la recette moyenne. L''exploitant doit simuler l''effet sur sa clientèle réelle.

## Exemple 3 : tarif progressif pour la rotation

Près d''un centre commercial de Dakar, l''exploitant veut éviter que des salariés du quartier occupent les places toute la journée. Grille : première heure 200 FCFA, deuxième heure 300 FCFA, chaque heure suivante 500 FCFA, sans plafond avant 21 h. Un client qui reste 2 heures paie 500 FCFA. Un salarié qui reste 8 heures paie 200 + 300 + 6 × 500 = 3 500 FCFA. Ce prix dissuade le stationnement long, qui se reportera vers les abonnements (leçon suivante) ou vers d''autres parkings.

## Fixer le niveau de prix

Trois repères aident à fixer le niveau :

- Les coûts : le revenu moyen par place-heure occupée doit couvrir les charges au taux d''occupation attendu.
- La concurrence : tarifs des parkings voisins et coût réel du stationnement dans la rue (y compris le risque d''amende ou de vol).
- La valeur pour l''usager : proximité, sécurité, ombre, gardiennage, facilité de paiement.

Toute modification se teste sur une période, en mesurant l''occupation et la recette avant et après.

## Points clés

- La structure tarifaire découle de l''usage que l''on veut favoriser : rotation ou longue durée.
- Une grille comprend franchise, première heure, heures suivantes, unité, plafond et cas particuliers.
- La méthode de calcul est toujours la même : durée, franchise, découpage, prix, plafond.
- Le fractionnement fin est plus juste mais réduit la recette moyenne : il faut simuler.

## Exercices

- Exercice 1 : avec la grille de l''exemple 1, calculez le montant pour 12 minutes, 1 h 05 et 5 h 00 exactement.
- Exercice 2 : avec la grille de l''exemple 1, quel montant paie un usager resté 11 heures ?
- Exercice 3 : avec la grille au quart d''heure de l''exemple 2, calculez le montant pour 2 h 50.
- Exercice 4 : quel type de grille recommandez-vous pour un parking d''aéroport ? Justifiez.

## Corrigé

Exercice 1 : 12 minutes est inférieur à la franchise de 15 minutes : 0 FCFA. 1 h 05 : 2 heures entamées, 300 + 200 = 500 FCFA. 5 h 00 exactement : 5 heures, 300 + 4 × 200 = 1 100 FCFA.

Exercice 2 : 11 heures donnent 300 + 10 × 200 = 2 300 FCFA, supérieur au plafond : l''usager paie 2 000 FCFA.

Exercice 3 : première heure 300 FCFA ; reste 1 h 50, soit 110 minutes ; 110 / 15 = 7,33, donc 8 quarts d''heure ; 8 × 50 = 400 FCFA. Total 700 FCFA.

Exercice 4 : un tarif dégressif avec forfaits à la journée ou à la semaine, car les usagers stationnent longtemps (voyages) ; l''objectif n''est pas la rotation mais la fidélisation sur des durées longues, avec un prix lisible.', 'texte', 50, false, 20
from public.courses c where c.slug = 'formation-parking-public'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Construire une grille tarifaire horaire');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Abonnements et rentabilité : dimensionner et chiffrer l''offre', '## Objectifs de la leçon

- Concevoir une offre d''abonnements cohérente avec la grille horaire.
- Calculer le nombre d''abonnements qu''on peut vendre sans saturer le parking.
- Mesurer l''effet des abonnements sur le résultat.

## Les différentes formules

- L''abonnement jour : accès en semaine aux heures de bureau, pour les salariés du quartier.
- L''abonnement permanent : accès 24 heures sur 24, 7 jours sur 7, souvent avec une place réservée.
- L''abonnement résident ou nuit : accès le soir et la nuit, pour les habitants du quartier sans garage.
- Les contrats entreprises : un lot d''abonnements vendu à une société pour ses salariés ou ses véhicules de service, avec facturation mensuelle.
- Les cartes prépayées : un crédit d''heures à prix réduit.

L''abonnement apporte une recette régulière, payée d''avance, qui réduit le risque. En contrepartie, il occupe des places, parfois aux heures où l''exploitant aurait pu les vendre plus cher à l''heure.

## Comparer abonnement et horaire

Un salarié qui stationne 8 heures par jour, 22 jours par mois, avec la grille horaire standard (première heure 300 FCFA, suivantes 200 FCFA, plafond 2 000 FCFA) paie chaque jour 300 + 7 × 200 = 1 700 FCFA, soit 1 700 × 22 = 37 400 FCFA par mois. Si l''abonnement jour est vendu 25 000 FCFA, le salarié économise 12 400 FCFA, soit environ 33 %. C''est un argument commercial fort.

Pour l''exploitant, la question est : combien rapporte en moyenne une place vendue à l''heure ? Avec une occupation moyenne de 60 %, 14 heures d''ouverture et 220 FCFA par place-heure occupée, une place rapporte 14 × 0,60 × 220 = 1 848 FCFA par jour, soit environ 55 440 FCFA sur 30 jours. Ce chiffre est une moyenne : une place supplémentaire mise en vente à l''heure en dehors des pointes rapporte beaucoup moins, car la demande est déjà servie. C''est pourquoi on vend des abonnements sur la capacité que les clients horaires n''utilisent pas aux heures de pointe.

## Méthode : dimensionner le quota d''abonnements

- Mesurer la demande horaire maximale, à l''heure de pointe, sur plusieurs semaines.
- En déduire la capacité libre à la pointe : places totales moins demande horaire de pointe, moins une marge de confort.
- Mesurer ou estimer le taux de présence simultanée des abonnés (tous ne sont pas là en même temps).
- Quota d''abonnements = capacité libre à la pointe / taux de présence maximal des abonnés.

## Exemple chiffré

Le parking de 150 places de la leçon 1 a une demande horaire de pointe de 92 véhicules à 11 h. L''exploitant garde une marge de confort de 8 places pour ne pas refuser de clients horaires. Capacité libre à la pointe : 150 - 92 - 8 = 50 places. Les comptages sur des parkings comparables montrent une présence simultanée maximale des abonnés de 80 %. Quota = 50 / 0,80 = 62,5, arrondi à 62 abonnements (on arrondit à l''inférieur par prudence).

Recette d''abonnements : 62 × 25 000 = 1 550 000 FCFA par mois.

Nouveau compte mensuel, en supposant que les abonnés n''évincent pas de clients horaires :

- Recettes horaires : 8 316 000 FCFA.
- Abonnements : 1 550 000 FCFA.
- Total : 9 866 000 FCFA.
- Charges variables (8 %) : 789 280 FCFA.
- Charges fixes : 5 500 000 FCFA.
- Résultat : 9 866 000 - 789 280 - 5 500 000 = 3 576 720 FCFA.

Le résultat passe de 2 150 720 à 3 576 720 FCFA, soit une hausse de 1 426 000 FCFA, ce qui correspond à la marge de 92 % sur 1 550 000 FCFA. L''hypothèse de non-éviction doit être vérifiée chaque mois en suivant le nombre de refus de clients horaires.

## Fixer le prix de l''abonnement

On encadre le prix entre deux bornes. Borne haute : le coût horaire équivalent pour l''usager (ici 37 400 FCFA) ; au-delà, personne n''a intérêt à s''abonner. Borne basse : le prix qui ne fait pas perdre d''argent sur les places concernées, compte tenu des charges et de la recette horaire perdue aux heures pleines. Entre les deux, on se positionne selon la concurrence et l''objectif de remplissage. On peut moduler : abonnement jour 25 000 FCFA, permanent 35 000 FCFA, nuit 15 000 FCFA, avec une remise pour les lots d''entreprise.

## Les conditions générales

Un abonnement est un contrat : durée, prix, modalités de paiement (d''avance, en début de mois), droit d''accès (horaires, zone), règles en cas de retard de paiement (suspension du badge), conditions de résiliation, responsabilité de l''exploitant, et traitement des données de l''abonné. Il doit être rédigé clairement et signé.

## Points clés

- L''abonnement sécurise la recette mais consomme de la capacité.
- On vend des abonnements sur la capacité libre à la pointe, corrigée du taux de présence des abonnés.
- Le prix se situe entre le coût horaire équivalent pour l''usager et le seuil qui protège la marge.
- Le suivi des refus de clients horaires vérifie qu''on n''a pas trop vendu.

## Exercices

- Exercice 1 : un usager stationne 6 heures par jour, 20 jours par mois. Avec la grille standard, combien paierait-il au mois ? Quelle économie fait-il avec un abonnement à 20 000 FCFA ?
- Exercice 2 : parking de 200 places, demande horaire de pointe 130 véhicules, marge de confort 10 places, présence des abonnés 75 %. Calculez le quota d''abonnements.
- Exercice 3 : avec 80 abonnements à 22 000 FCFA et une marge sur coûts variables de 92 %, de combien augmente le résultat mensuel ?
- Exercice 4 : citez cinq clauses d''un contrat d''abonnement.

## Corrigé

Exercice 1 : par jour 300 + 5 × 200 = 1 300 FCFA ; par mois 1 300 × 20 = 26 000 FCFA. Économie : 26 000 - 20 000 = 6 000 FCFA, soit environ 23 %.

Exercice 2 : capacité libre = 200 - 130 - 10 = 60 places ; quota = 60 / 0,75 = 80 abonnements.

Exercice 3 : recette = 80 × 22 000 = 1 760 000 FCFA ; hausse du résultat = 1 760 000 × 0,92 = 1 619 200 FCFA par mois (si aucun client horaire n''est évincé).

Exercice 4 : durée, prix et modalités de paiement, horaires et zone d''accès, conséquences d''un retard de paiement, conditions de résiliation, responsabilité de l''exploitant, traitement des données personnelles.', 'texte', 55, false, 30
from public.courses c where c.slug = 'formation-parking-public'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Abonnements et rentabilité : dimensionner et chiffrer l''offre');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Caisse, encaissement et contrôle des recettes', '## Objectifs de la leçon

- Organiser l''encaissement selon les moyens de paiement.
- Réaliser un rapprochement entre véhicules, tickets et recettes.
- Mettre en place des contrôles contre les erreurs et la fraude.

## Pourquoi la caisse est le point sensible

Un parking encaisse chaque jour des centaines de petits montants, souvent en espèces, à des heures étendues et par plusieurs agents successifs. C''est le terrain idéal pour les erreurs (rendu de monnaie, ticket mal lu) et pour la fraude (ticket réutilisé, sortie déclarée gratuite, recette non saisie). Un écart de quelques milliers de francs par jour représente, sur un an, des sommes importantes. Le contrôle des recettes est donc au cœur du métier d''exploitant.

## Les moyens d''encaissement

- La caisse manuelle tenue par un caissier, avec un logiciel qui calcule le montant à partir du ticket.
- La caisse automatique (borne de paiement) qui accepte espèces et cartes.
- Le paiement mobile (porte-monnaie électronique), très répandu en Afrique de l''Ouest, qui laisse une trace électronique.
- Le paiement par carte bancaire.
- La facturation mensuelle pour les abonnés et les entreprises.

Plus la part de paiements électroniques est élevée, plus le contrôle est facile, car chaque paiement est enregistré par un tiers. Les commissions associées sont des charges variables à intégrer au calcul de rentabilité.

## Les règles de base de la caisse

- Chaque caissier a son propre code et sa propre caisse ; on ne partage jamais un tiroir.
- Le fond de caisse est remis et compté en début de poste, signé par les deux parties.
- Chaque ticket est numéroté de façon continue : un numéro manquant doit s''expliquer.
- Les sorties gratuites (franchise, véhicule d''urgence, erreur) sont justifiées et validées par un responsable.
- À la fin du poste, on édite l''état de caisse (souvent appelé ticket Z) qui récapitule les opérations.
- Le comptage des espèces se fait à deux, et les fonds sont mis au coffre ou déposés en banque selon une procédure écrite.

## Le rapprochement physique

Le rapprochement vérifie que tous les véhicules entrés sont justifiés. Sur une journée :

Entrées horaires = sorties payantes + sorties gratuites + tickets perdus + véhicules encore présents en fin de journée.

Le nombre de véhicules présents se constate par un inventaire physique (comptage ou relevé des plaques) à la fermeture ou à une heure fixe.

## Le rapprochement financier

Recette théorique = montant calculé par le système pour toutes les sorties payantes et tickets perdus.

Recette encaissée = espèces comptées (hors fond de caisse) + paiements mobiles + paiements par carte.

Écart = recette encaissée - recette théorique. Un écart nul est l''objectif ; un petit écart s''explique souvent par le rendu de monnaie ; un écart important ou répété déclenche une enquête.

## Exemple chiffré

Journée du lundi, parking de 150 places. Le système enregistre 812 entrées horaires. Les sorties se répartissent ainsi : 780 sorties payantes, 15 sorties gratuites (franchise de 15 minutes), 3 tickets perdus. L''inventaire de 21 h compte 14 véhicules présents.

Rapprochement physique : 780 + 15 + 3 + 14 = 812. Les comptes sont équilibrés.

Recette théorique du système : 486 400 FCFA. Le caissier remet 362 000 FCFA en espèces, dont un fond de caisse de 50 000 FCFA, soit 312 000 FCFA de recettes en espèces. Les paiements mobiles s''élèvent à 170 900 FCFA. Recette encaissée : 312 000 + 170 900 = 482 900 FCFA. Écart : 482 900 - 486 400 = -3 500 FCFA.

L''écart est faible, mais on le note dans le registre des écarts avec le nom du caissier. S''il se répète chaque jour, il représente plus de 100 000 FCFA par mois et justifie une vérification.

## Les indicateurs d''alerte

- Taux de sorties gratuites : sorties gratuites / entrées. Ici 15 / 812 ≈ 1,8 %. Une hausse soudaine chez un caissier particulier est un signal d''alerte classique.
- Nombre de tickets perdus par jour et par caissier.
- Écarts de caisse cumulés par caissier.
- Véhicules présents la nuit inexpliqués (ni abonnés, ni tickets).

## Les contrôles complémentaires

- Séparation des tâches : celui qui encaisse ne saisit pas les annulations et ne fait pas le rapprochement.
- Contrôles inopinés de caisse en cours de poste.
- Rotation des caissiers entre postes et sites.
- Vidéoprotection de la zone de caisse, dans le respect des règles sur les données personnelles.
- Revue mensuelle par la direction des écarts et des indicateurs d''alerte.

## Points clés

- La caisse est le point le plus exposé aux erreurs et à la fraude.
- Deux rapprochements quotidiens : physique (véhicules) et financier (montants).
- Les sorties gratuites, tickets perdus et annulations sont justifiés et validés.
- La séparation des tâches et les contrôles inopinés sont indispensables.

## Exercices

- Exercice 1 : 640 entrées, 598 sorties payantes, 12 gratuites, 2 tickets perdus. Combien de véhicules devraient être présents à la fermeture ? L''inventaire en compte 24 : que concluez-vous ?
- Exercice 2 : recette théorique 395 600 FCFA ; espèces remises 300 000 FCFA dont fond de caisse 40 000 FCFA ; paiements mobiles 132 100 FCFA. Calculez l''écart.
- Exercice 3 : un caissier enregistre 45 sorties gratuites sur 500 entrées, ses collègues environ 2 %. Calculez son taux et commentez.
- Exercice 4 : citez trois mesures de séparation des tâches ou de contrôle.

## Corrigé

Exercice 1 : véhicules attendus = 640 - 598 - 12 - 2 = 28. L''inventaire en trouve 24 : 4 véhicules sont sortis sans être enregistrés (barrière ouverte manuellement, erreur de saisie ou fraude). Il faut analyser les ouvertures manuelles et la vidéoprotection.

Exercice 2 : espèces de recette = 300 000 - 40 000 = 260 000 FCFA ; encaissé = 260 000 + 132 100 = 392 100 FCFA ; écart = 392 100 - 395 600 = -3 500 FCFA.

Exercice 3 : 45 / 500 = 9 %, soit plus de quatre fois le taux habituel. C''est un signal d''alerte : vérifier les justificatifs de chaque sortie gratuite, les images de caisse, et faire un contrôle inopiné.

Exercice 4 : par exemple, l''encaissement et la validation des annulations par deux personnes différentes ; le rapprochement fait par un responsable qui n''encaisse pas ; les contrôles inopinés de caisse ; la rotation des caissiers.', 'texte', 55, false, 40
from public.courses c where c.slug = 'formation-parking-public'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Caisse, encaissement et contrôle des recettes');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Piloter un ou plusieurs sites avec des indicateurs', '## Objectifs de la leçon

- Choisir les indicateurs pour piloter un ou plusieurs parkings.
- Comparer des sites de tailles différentes.
- Organiser la gestion multi-sites et décider des actions.

## Pourquoi des indicateurs

Quand un exploitant gère un seul parking, il le voit chaque jour. Quand il en gère trois, cinq ou dix, dans plusieurs quartiers ou plusieurs villes, il ne peut plus tout observer. Il lui faut un tableau de bord commun, avec des indicateurs calculés de la même façon partout, pour comparer les sites, repérer les anomalies et décider où investir ou réduire les coûts.

## Les indicateurs d''activité

- Taux d''occupation moyen : places-heures occupées / places-heures offertes.
- Taux de pointe : occupation maximale observée.
- Nombre d''entrées par jour.
- Taux de rotation : nombre d''entrées horaires par place et par jour. Un taux de 4 signifie qu''en moyenne chaque place a accueilli 4 véhicules dans la journée.
- Durée moyenne de stationnement.

## Les indicateurs économiques

- Recette par place et par mois (souvent appelée revenu par place disponible) : recette totale / nombre de places. Il permet de comparer des parkings de tailles différentes.
- Ticket moyen : recette horaire / nombre de sorties payantes.
- Part des abonnements dans la recette.
- Charges par place.
- Marge du site : recettes - charges directes du site ; taux de marge = marge / recettes.

## Les indicateurs de qualité et de contrôle

- Écarts de caisse cumulés et taux de sorties gratuites.
- Taux de disponibilité des équipements (barrières, bornes de paiement).
- Nombre de réclamations et d''incidents.
- Nombre de refus de clients faute de place.

## Exemple : un exploitant avec trois sites

Un exploitant gère trois parkings. Données d''un mois :

- Site A, Plateau (Dakar) : 200 places, recettes 12 000 000 FCFA, charges directes 7 000 000 FCFA, 25 000 sorties payantes, recette horaire 10 000 000 FCFA.
- Site B, Almadies (Dakar) : 120 places, recettes 4 800 000 FCFA, charges directes 3 600 000 FCFA.
- Site C, centre de Thiès : 80 places, recettes 2 000 000 FCFA, charges directes 1 900 000 FCFA.

Calculons la recette par place et par mois : A : 12 000 000 / 200 = 60 000 FCFA ; B : 4 800 000 / 120 = 40 000 FCFA ; C : 2 000 000 / 80 = 25 000 FCFA.

Marges : A : 12 000 000 - 7 000 000 = 5 000 000 FCFA, soit 41,7 % ; B : 4 800 000 - 3 600 000 = 1 200 000 FCFA, soit 25 % ; C : 2 000 000 - 1 900 000 = 100 000 FCFA, soit 5 %.

Ensemble : recettes 18 800 000 FCFA, charges directes 12 500 000 FCFA, marge 6 300 000 FCFA avant frais du siège.

Pour le site A : ticket moyen = 10 000 000 / 25 000 = 400 FCFA ; sorties par jour = 25 000 / 30 ≈ 833 ; rotation ≈ 833 / 200 ≈ 4,2 véhicules par place et par jour.

## Interpréter et décider

Le site C est presque à l''équilibre. Avant de le fermer, on analyse : est-ce un problème de demande (faible occupation), de prix (ticket moyen bas) ou de coûts (trop de personnel pour 80 places) ? Si l''occupation est bonne mais le ticket faible, on revoit la grille. Si les coûts sont élevés, on mutualise.

## Organiser la gestion multi-sites

La mutualisation est le principal avantage d''un réseau de parkings :

- Supervision centralisée : un poste central surveille les barrières et répond aux interphones de plusieurs sites, ce qui réduit le personnel de nuit.
- Logiciel unique : mêmes grilles, mêmes règles de caisse, consolidation automatique des données.
- Maintenance commune : un technicien et un stock de pièces pour tous les sites.
- Abonnements réseau : un abonné peut accéder à plusieurs sites, ce qui augmente la valeur de l''offre.
- Procédures standard : manuel d''exploitation commun, formation identique des agents.

Le responsable de réseau anime une revue mensuelle par site : indicateurs, écarts par rapport à l''objectif, causes, actions et responsables.

## Points clés

- On compare des sites différents avec des ratios : recette par place, marge en pourcentage, rotation, ticket moyen.
- Les indicateurs couvrent l''activité, l''économie, la qualité et le contrôle.
- Un site faible s''analyse par la demande, le prix et les coûts avant toute décision.
- La mutualisation (supervision, logiciel, maintenance, abonnements) est le levier du multi-sites.

## Exercices

- Exercice 1 : un parking de 90 places réalise 3 150 000 FCFA de recettes par mois. Calculez la recette par place.
- Exercice 2 : recette horaire 6 000 000 FCFA pour 16 000 sorties payantes. Calculez le ticket moyen.
- Exercice 3 : 120 places, 14 400 sorties horaires en 30 jours. Calculez le taux de rotation.
- Exercice 4 : recettes 5 500 000 FCFA, charges directes 4 400 000 FCFA. Calculez la marge et le taux de marge.
- Exercice 5 : proposez trois actions pour un site dont l''occupation est bonne mais la marge faible.

## Corrigé

Exercice 1 : 3 150 000 / 90 = 35 000 FCFA par place et par mois.

Exercice 2 : 6 000 000 / 16 000 = 375 FCFA.

Exercice 3 : sorties par jour = 14 400 / 30 = 480 ; rotation = 480 / 120 = 4 véhicules par place et par jour.

Exercice 4 : marge = 5 500 000 - 4 400 000 = 1 100 000 FCFA ; taux = 1 100 000 / 5 500 000 = 20 %.

Exercice 5 : revoir la grille tarifaire (ticket moyen trop bas, plafond trop faible) ; réduire les charges en mutualisant la supervision de nuit ou la maintenance ; contrôler la caisse (écarts, sorties gratuites) ; développer des recettes annexes (lavage, publicité).', 'texte', 50, false, 50
from public.courses c where c.slug = 'formation-parking-public'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Piloter un ou plusieurs sites avec des indicateurs');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : exploiter un parking rentable, du tarif au tableau de bord', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : exploitants et futurs exploitants de parkings, chefs de parking, responsables financiers, agents des collectivités.
- Objectifs : bâtir le modèle économique d''un parking, construire une grille tarifaire et une offre d''abonnements chiffrées, contrôler les recettes, piloter plusieurs sites.
- Matériel : diaporama, tableur projeté, calculatrice, tableau blanc.
- Prérequis : maîtriser les pourcentages ; avoir lu les leçons du module est recommandé.

## Déroulé minuté

## 00:00 – 06:00 · Introduction et cas fil rouge

Bonjour et bienvenue. Aujourd''hui, nous allons nous mettre dans la peau d''un exploitant de parking. Notre cas fil rouge : la société fictive Ndar Parking vient de remporter l''exploitation d''un parking de 120 places près de l''hôpital régional de Saint-Louis, ouvert de 6 h à 22 h, soit 16 heures par jour. Elle exploite déjà deux petits parkings en ville. Notre mission tout au long de la séance : construire son modèle économique, ses tarifs, ses procédures de caisse et son tableau de bord.

Visuel : photo d''un parking de surface avec barrière, guérite et borne de paiement. Question d''ouverture : selon vous, qui sont les clients d''un parking d''hôpital ? Notez trois catégories.

## 06:00 – 18:00 · Le modèle économique

Les clients d''un parking d''hôpital sont les visiteurs de patients, les patients en consultation, le personnel soignant et les fournisseurs. Les deux premiers sont des clients horaires ; le personnel peut devenir abonné.

Construisons le compte prévisionnel. L''offre est de 120 places × 16 heures = 1 920 places-heures par jour. Ndar Parking retient une occupation prudente de 50 %, soit 960 places-heures occupées. Le revenu moyen par place-heure est estimé à 200 FCFA. Recette par jour : 960 × 200 = 192 000 FCFA. Sur 30 jours : 5 760 000 FCFA.

Les charges fixes s''élèvent à 3 200 000 FCFA par mois : redevance fixe à la collectivité, quatre agents, gardiennage de nuit, électricité, maintenance. Les charges variables représentent 10 % des recettes. La marge sur coûts variables vaut donc 90 % de 5 760 000, soit 5 184 000 FCFA, et le résultat 5 184 000 - 3 200 000 = 1 984 000 FCFA par mois.

Seuil de rentabilité : 3 200 000 divisé par 0,90, soit environ 3 555 556 FCFA. La recette maximale à 100 % d''occupation serait 1 920 × 200 × 30 = 11 520 000 FCFA. Le seuil correspond donc à une occupation d''environ 31 %. Visuel : graphique recettes et charges qui se croisent au seuil. Question : que se passe-t-il si la redevance devient variable au lieu d''être fixe ? Réponse attendue : le seuil baisse et le risque est partagé avec la collectivité.

## 18:00 – 32:00 · La grille tarifaire horaire

Dans un parking d''hôpital, les visites durent souvent entre une et trois heures, mais certains accompagnants restent toute la journée. Ndar Parking veut un tarif simple et humain. Proposition : franchise 15 minutes, première heure 200 FCFA, heures suivantes 150 FCFA, toute heure entamée due, plafond 1 500 FCFA par journée.

Calculons ensemble. Un visiteur reste 2 h 40 : il entame 3 heures, il paie 200 + 2 × 150 = 500 FCFA. Un accompagnant reste 11 heures : 200 + 10 × 150 = 1 700 FCFA, ramené au plafond de 1 500 FCFA. À partir de combien d''heures le plafond joue-t-il ? Pour h heures, le montant est 200 + 150 × (h - 1). Pour 9 heures, 200 + 1 200 = 1 400 FCFA ; pour 10 heures, 1 550 FCFA, donc le plafond s''applique dès la 10e heure.

Visuel : tableau de la grille et courbe du montant en fonction de la durée. Discutons du fractionnement au quart d''heure : plus juste pour l''usager, il réduit légèrement la recette. Pour 2 h 40 au quart d''heure, avec 37,5 FCFA par quart d''heure, on aurait un montant non rond ; c''est pourquoi on choisit des prix divisibles, comme 50 FCFA le quart d''heure pour 200 FCFA l''heure. Question à la salle : faut-il un tarif plus élevé pour favoriser la rotation près d''un hôpital ? Écoutons vos arguments sur l''équité et l''accès aux soins.

## 32:00 – 44:00 · Les abonnements du personnel

Le personnel de l''hôpital stationne en moyenne 9 heures par jour, 22 jours par mois. À l''heure, il paierait 200 + 8 × 150 = 1 400 FCFA par jour, soit 30 800 FCFA par mois. Ndar Parking propose un abonnement à 18 000 FCFA, soit une économie de 12 800 FCFA, plus de 40 %.

Combien d''abonnements vendre ? La demande horaire de pointe, mesurée à 10 h, est de 70 véhicules. On garde une marge de confort de 10 places. Capacité libre à la pointe : 120 - 70 - 10 = 40 places. Le personnel travaillant en équipes, la présence simultanée maximale des abonnés est de 65 %. Quota : 40 divisé par 0,65, environ 61,5, arrondi à 61 abonnements.

Recette supplémentaire : 61 × 18 000 = 1 098 000 FCFA par mois. Avec 90 % de marge sur coûts variables, le résultat augmente de 988 200 FCFA, à condition de ne pas évincer de clients horaires. Visuel : tableau comparatif avant et après abonnements.

## 44:00 – 50:00 · Pause et quiz interactif

Petite pause active. Cinq questions, répondez dans le chat.

Question 1 : un parking de 100 places ouvert 12 heures offre combien de places-heures par jour ? Réponse : 1 200.

Question 2 : avec la grille de Ndar Parking, combien paie-t-on pour 1 h 10 ? Réponse : 2 heures entamées, 200 + 150 = 350 FCFA.

Question 3 : charges fixes 1 800 000 FCFA, marge sur coûts variables 90 % : quel seuil ? Réponse : 2 000 000 FCFA.

Question 4 : capacité libre de 30 places, présence des abonnés 75 % : quel quota ? Réponse : 40 abonnements.

Question 5 : qu''est-ce que le forfait ticket perdu ? Réponse : le montant dû quand l''usager ne présente pas son ticket, souvent égal au plafond journalier.

## 50:00 – 1:04:00 · Caisse et contrôle des recettes

Passons à la caisse, le point le plus sensible. Ndar Parking encaisse en espèces et par paiement mobile. Rappelons les règles : un code et un tiroir par caissier, un fond de caisse compté et signé, des tickets numérotés en continu, des sorties gratuites justifiées et validées, un état de caisse en fin de poste, un comptage à deux.

Exercice en direct. Mardi : 540 entrées horaires ; 505 sorties payantes ; 10 sorties gratuites ; 2 tickets perdus ; l''inventaire de 22 h compte 23 véhicules. Faisons le rapprochement physique : 505 + 10 + 2 + 23 = 540. C''est équilibré.

Rapprochement financier : recette théorique 268 300 FCFA. Le caissier remet 215 000 FCFA d''espèces dont 30 000 FCFA de fond de caisse, soit 185 000 FCFA de recettes ; paiements mobiles 81 300 FCFA. Total encaissé : 266 300 FCFA. Écart : moins 2 000 FCFA. On l''inscrit au registre des écarts.

Visuel : le tableau des indicateurs d''alerte par caissier. Le caissier du soir enregistre 6 % de sorties gratuites contre 2 % pour les autres. Question : que faites-vous ? Réponse attendue : vérifier chaque justificatif, consulter la vidéoprotection de la caisse dans le respect des règles, procéder à un contrôle inopiné, et rappeler la procédure, sans accuser avant d''avoir des faits.

## 1:04:00 – 1:18:00 · Piloter trois sites

Ndar Parking gère maintenant trois sites. Visuel : tableau du mois. Site hôpital : 120 places, recettes 6 858 000 FCFA, charges directes 3 900 000 FCFA. Site centre-ville : 60 places, recettes 2 100 000 FCFA, charges 1 500 000 FCFA. Site gare routière : 50 places, recettes 1 000 000 FCFA, charges 1 050 000 FCFA.

Calculons la recette par place : hôpital 6 858 000 / 120 = 57 150 FCFA ; centre-ville 2 100 000 / 60 = 35 000 FCFA ; gare routière 1 000 000 / 50 = 20 000 FCFA. Les marges : hôpital 2 958 000 FCFA, soit environ 43 % ; centre-ville 600 000 FCFA, soit environ 29 % ; gare routière moins 50 000 FCFA, une perte.

Avant de fermer la gare routière, analysons. Son occupation est de 75 %, donc la demande existe. Mais son ticket moyen est de 150 FCFA seulement et elle emploie deux agents de jour et un de nuit. Les actions : revoir la grille avec un forfait journée adapté aux voyageurs, mutualiser le gardiennage de nuit avec le centre-ville par une supervision centralisée, et proposer des abonnements aux transporteurs. Question à la salle : quel indicateur suivriez-vous chaque semaine pour vérifier l''effet de ces actions ?

## 1:18:00 – 1:30:00 · Synthèse et évaluation finale

Résumons. Un parking est une entreprise de services dont la matière première est la place-heure. Le modèle économique sépare charges fixes et variables pour calculer le seuil de rentabilité. La grille tarifaire oriente les comportements. Les abonnements se vendent sur la capacité libre à la pointe. La caisse se contrôle par deux rapprochements quotidiens. Le multi-sites se pilote avec des ratios comparables et la mutualisation.

Évaluation finale, cinq questions.

Question 1 : un parking de 200 places ouvert 10 heures, occupé à 60 %, avec 250 FCFA par place-heure : recette journalière ? Réponse : 200 × 10 × 0,60 × 250 = 300 000 FCFA.

Question 2 : grille 300 FCFA la première heure, 200 FCFA les suivantes, heure entamée due : montant pour 4 h 15 ? Réponse : 5 heures entamées, 300 + 4 × 200 = 1 100 FCFA.

Question 3 : capacité libre 45 places, présence des abonnés 90 % : quota ? Réponse : 50 abonnements.

Question 4 : 700 entrées, 660 sorties payantes, 14 gratuites, 1 ticket perdu : combien de véhicules attendus à l''inventaire ? Réponse : 700 - 660 - 14 - 1 = 25.

Question 5 : recettes 4 000 000 FCFA, charges directes 3 000 000 FCFA : taux de marge ? Réponse : 1 000 000 / 4 000 000 = 25 %.

Merci à tous. Votre travail personnel : construire le compte prévisionnel et la grille tarifaire d''un parking que vous connaissez, avec le modèle de tableur fourni.', 'video', 90, false, 60
from public.courses c where c.slug = 'formation-parking-public'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : exploiter un parking rentable, du tarif au tableau de bord');

-- Cours : Management stratégique M2 : diagnostic, choix, changement et entrepreneuriat en Afrique
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'management-strategique-master2', (select id from public.levels where name = 'Master 2'), null, 'Management', 'Management stratégique M2 : diagnostic, choix, changement et entrepreneuriat en Afrique', 'Ce cours forme au diagnostic stratégique (PESTEL, cinq forces, ressources, chaîne de valeur, SWOT), aux choix stratégiques, à la conduite du changement, à la gouvernance et à l''entrepreneuriat dans le contexte africain. Il s''adresse aux étudiants de Master 2 et aux cadres dirigeants en formation. Prérequis : bases du management, du marketing et de la finance d''entreprise.', true, 70
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'La démarche stratégique et le diagnostic externe : PESTEL et cinq forces', '## Objectifs de la leçon

- Situer la démarche de management stratégique et ses étapes.
- Analyser le macro-environnement avec le modèle PESTEL.
- Analyser l''intensité concurrentielle d''un secteur avec les cinq forces de Porter.

## 1. La démarche stratégique

La stratégie est l''ensemble des choix d''allocation de ressources qui engagent l''organisation sur le long terme, afin de lui donner une position durablement favorable dans son environnement. Elle répond à trois questions : où en sommes-nous ? où voulons-nous aller ? comment y aller ?

La démarche classique, souvent associée au modèle LCAG (Learned, Christensen, Andrews, Guth) de la Harvard Business School, comprend :

- La définition de la vocation : mission, vision, valeurs.
- Le diagnostic externe (opportunités et menaces) et interne (forces et faiblesses).
- La formulation et le choix des options stratégiques.
- Le déploiement : structures, ressources, plans d''action, conduite du changement.
- Le contrôle et l''ajustement.

Cette vision planificatrice a été critiquée par Henry Mintzberg : une partie de la stratégie réalisée est émergente, issue d''apprentissages et d''ajustements successifs. Dans des environnements instables, comme beaucoup de marchés africains soumis à des chocs (prix des matières premières, climat, crises sécuritaires, changements réglementaires), il faut combiner orientation de long terme et capacité d''adaptation.

## 2. Le diagnostic externe : le modèle PESTEL

Le PESTEL analyse six dimensions du macro-environnement :

- Politique : stabilité des institutions, politiques sectorielles, relations régionales, commande publique.
- Économique : croissance, inflation, pouvoir d''achat, accès au crédit, taux de change (fixe dans l''UEMOA vis-à-vis de l''euro, mais variable vis-à-vis des autres monnaies), poids de l''informel.
- Socioculturel : démographie jeune, urbanisation rapide, habitudes de consommation, rôle des réseaux communautaires et religieux, langues.
- Technologique : diffusion de la téléphonie mobile et de la monnaie électronique, accès à l''énergie, infrastructures numériques.
- Écologique : changement climatique, pluviométrie, désertification, gestion des déchets plastiques, exigences environnementales des partenaires.
- Légal : droit OHADA des affaires, fiscalité, réglementation sectorielle, protection des données, droit du travail (en transition au Sénégal avec le projet de nouveau Code du travail).

Méthode : pour chaque dimension, identifier les tendances, évaluer leur impact (fort, moyen, faible) et leur probabilité, puis les traduire en opportunités ou en menaces pour l''entreprise. Un PESTEL utile ne se contente pas d''une liste : il hiérarchise.

Les accords d''intégration régionale méritent une attention particulière : l''UEMOA, la CEDEAO et la Zone de libre-échange continentale africaine (ZLECAf) modifient progressivement les conditions d''accès aux marchés voisins, avec des calendriers et des règles d''origine qu''il faut suivre dans les textes officiels.

## 3. L''analyse sectorielle : les cinq forces de Porter

Michael Porter montre que la rentabilité moyenne d''un secteur dépend de cinq forces :

- L''intensité de la rivalité entre concurrents existants (nombre, croissance du marché, différenciation, coûts fixes, barrières à la sortie).
- La menace de nouveaux entrants, qui dépend des barrières à l''entrée : économies d''échelle, capitaux nécessaires, accès à la distribution, réglementation, image de marque.
- La menace des produits de substitution, qui satisfont le même besoin autrement.
- Le pouvoir de négociation des fournisseurs (concentration, importance de leur produit, coûts de changement).
- Le pouvoir de négociation des clients (concentration, volume d''achat, sensibilité au prix, information).

On y ajoute parfois une sixième force : le rôle des pouvoirs publics, déterminant en Afrique (licences, prix administrés, commande publique, politique douanière).

## Exemple : le secteur du ciment en Afrique de l''Ouest (analyse simplifiée et générale)

- Rivalité : quelques grands producteurs ; produit peu différencié ; concurrence par les prix et la logistique.
- Nouveaux entrants : barrières élevées (investissement très lourd, accès au calcaire, autorisations), mais des investisseurs internationaux entrent périodiquement.
- Substituts : faibles pour la construction moderne ; matériaux locaux (terre stabilisée, briques de terre comprimée) en développement pour des raisons de coût et de confort thermique.
- Fournisseurs : l''énergie est un poste majeur ; les fournisseurs d''énergie et de combustibles ont un pouvoir important.
- Clients : grands distributeurs et entreprises de BTP négocient fortement ; les particuliers achètent au détail.
- Pouvoirs publics : grands projets d''infrastructures, politique de prix et de douane.

Conclusion : secteur à barrières d''entrée fortes, mais à rentabilité sensible aux coûts énergétiques et aux prix ; les facteurs clés de succès sont la maîtrise des coûts de production et la logistique de distribution.

## 4. Groupes stratégiques et facteurs clés de succès

Un groupe stratégique rassemble les entreprises d''un secteur qui suivent des stratégies proches (gamme, prix, zone géographique, canaux). Les facteurs clés de succès (FCS) sont les éléments que toute entreprise doit maîtriser pour réussir dans le secteur : par exemple, pour la boutique de quartier, la proximité, le crédit informel accordé aux clients fidèles et l''approvisionnement régulier.

## Points clés

- La stratégie combine vision de long terme et capacité d''adaptation (stratégies délibérées et émergentes).
- Le PESTEL hiérarchise les tendances du macro-environnement en opportunités et menaces.
- Les cinq forces de Porter expliquent la rentabilité d''un secteur ; l''État est souvent une sixième force en Afrique.
- Groupes stratégiques et FCS précisent l''analyse concurrentielle.

## Exercices

- Exercice 1 : Réalisez un PESTEL synthétique pour une entreprise de livraison de repas à Dakar (deux éléments par dimension).
- Exercice 2 : Analysez la menace des substituts pour une entreprise de transport interurbain par car.
- Exercice 3 : Citez trois barrières à l''entrée dans le secteur bancaire.
- Exercice 4 : Distinguez stratégie délibérée et stratégie émergente avec un exemple.

## Corrigé

- Exercice 1 : P : réglementation de la circulation des deux-roues, politique de soutien au numérique. E : pouvoir d''achat des classes moyennes urbaines, coût du carburant. S : urbanisation et embouteillages, habitudes de repas pris hors domicile. T : diffusion du smartphone, paiement mobile. E : emballages plastiques et réglementation, chaleur (conservation). L : statut des livreurs (droit du travail en transition), protection des données clients.
- Exercice 2 : Substituts : covoiturage, transport en taxi-brousse, minibus, train lorsque la ligne existe, avion pour les longues distances, et même le transfert d''argent qui évite certains déplacements. La menace dépend du prix relatif, du confort, de la sécurité et de la régularité.
- Exercice 3 : Capitaux minimums réglementaires et agrément des autorités, réseau d''agences ou infrastructure numérique coûteuse, confiance et réputation, accès aux systèmes de paiement.
- Exercice 4 : Délibérée : un groupe décide d''ouvrir des filiales dans trois pays voisins selon un plan quinquennal. Émergente : une entreprise de cosmétiques découvre que ses ventes en ligne via les réseaux sociaux dépassent celles des boutiques et réoriente progressivement sa distribution.', 'texte', 55, true, 10
from public.courses c where c.slug = 'management-strategique-master2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'La démarche stratégique et le diagnostic externe : PESTEL et cinq forces');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Diagnostic interne : ressources, chaîne de valeur et SWOT', '## Objectifs de la leçon

- Analyser les ressources et compétences d''une organisation, notamment avec la grille VRIO.
- Décomposer l''activité avec la chaîne de valeur de Porter.
- Construire une matrice SWOT utile et en tirer des orientations.

## 1. L''approche par les ressources

Selon l''approche fondée sur les ressources (resource-based view), l''avantage concurrentiel durable vient des ressources et compétences propres à l''entreprise, plus que de sa position dans le secteur. On distingue :

- Ressources tangibles : équipements, sites, trésorerie, réseau de points de vente.
- Ressources intangibles : marque, réputation, brevets, savoir-faire, relations avec les autorités et les communautés, culture d''entreprise.
- Ressources humaines : compétences individuelles et collectives.
- Compétences (capacités) : aptitude à combiner les ressources pour réaliser une activité mieux que les autres, par exemple gérer une chaîne du froid dans un environnement à énergie instable.

Les compétences clés (ou cœur de compétences, selon Prahalad et Hamel) apportent une valeur perçue importante au client, sont difficiles à imiter et ouvrent l''accès à plusieurs marchés.

## 2. La grille VRIO

Jay Barney propose de tester chaque ressource selon quatre questions :

- Valeur : permet-elle d''exploiter une opportunité ou de neutraliser une menace ?
- Rareté : est-elle détenue par peu de concurrents ?
- Imitabilité : est-elle difficile ou coûteuse à imiter ?
- Organisation : l''entreprise est-elle organisée pour l''exploiter ?

Une ressource seulement valable donne une parité concurrentielle ; valable et rare, un avantage temporaire ; valable, rare et difficile à imiter, avec une organisation adaptée, un avantage durable.

Exemple : un réseau de 2 000 agents de paiement mobile répartis dans les zones rurales est valable (accès aux clients), rare (peu de concurrents en ont un aussi dense), difficile à imiter rapidement (relations, formation, liquidité des agents) ; si l''entreprise dispose d''outils de gestion de ce réseau, c''est une source d''avantage durable.

## 3. La chaîne de valeur

Michael Porter décompose l''entreprise en activités qui créent de la valeur pour le client :

- Activités principales : logistique d''approvisionnement, production, logistique de distribution, commercialisation et vente, services après-vente.
- Activités de soutien : infrastructure de l''entreprise (direction, finance, qualité), gestion des ressources humaines, développement technologique, achats.

La marge est la différence entre la valeur perçue par le client et le coût total des activités. L''analyse consiste à identifier, pour chaque activité, les coûts et les sources de différenciation, ainsi que les liens entre activités.

## Exemple : une laiterie de la vallée du fleuve Sénégal (cas fictif)

- Logistique amont : collecte quotidienne du lait auprès de nombreux éleveurs, souvent pastoraux, avec des points de collecte et des cuves réfrigérées. C''est une activité coûteuse mais différenciante : la régularité de l''approvisionnement en lait local est rare.
- Production : pasteurisation, yaourts, lait caillé.
- Logistique aval : distribution vers les villes, chaîne du froid fragile.
- Commercialisation : image « produit local », emballages adaptés aux petits budgets.
- Soutien : relations avec les éleveurs (avances sur fourrage, appui vétérinaire), contrôle qualité.

Le diagnostic montre que l''avantage repose sur les relations avec les éleveurs et la collecte, tandis que la distribution en ville est un point faible (pertes liées à la chaîne du froid).

## 4. La matrice SWOT

La SWOT synthétise les diagnostics :

- Forces (Strengths) et faiblesses (Weaknesses) : internes, issues de l''analyse des ressources et de la chaîne de valeur.
- Opportunités et menaces (Threats) : externes, issues du PESTEL et de l''analyse sectorielle.

Pour être utile, une SWOT doit être sélective (les éléments les plus importants), précise (éviter « bonne équipe »), relative aux concurrents et orientée vers l''action. On la prolonge par une matrice TOWS qui croise les éléments :

- Stratégies SO : utiliser les forces pour saisir les opportunités.
- Stratégies WO : corriger les faiblesses pour saisir les opportunités.
- Stratégies ST : utiliser les forces pour réduire les menaces.
- Stratégies WT : réduire les faiblesses et éviter les menaces.

## Exemple : SWOT de la laiterie

- Forces : réseau de collecte, image locale, savoir-faire produits traditionnels.
- Faiblesses : chaîne du froid aval, capacité limitée, dépendance à quelques distributeurs.
- Opportunités : demande urbaine croissante en produits laitiers, politiques de soutien à la filière lait local, intérêt des consommateurs pour l''origine locale.
- Menaces : concurrence du lait en poudre importé moins cher, sécheresses qui réduisent la production des éleveurs, hausse du coût de l''énergie.

Orientations : SO : lancer une gamme premium « lait local » dans les villes ; WO : investir dans des camions et points de vente réfrigérés, éventuellement par crédit-bail ; ST : sécuriser l''approvisionnement par des contrats et un appui fourrager aux éleveurs ; WT : diversifier les distributeurs.

## Points clés

- L''avantage durable naît de ressources valables, rares, difficiles à imiter et bien exploitées (VRIO).
- La chaîne de valeur localise coûts et sources de différenciation.
- La SWOT synthétise ; la matrice TOWS transforme le diagnostic en orientations.

## Exercices

- Exercice 1 : Appliquez la grille VRIO à la « marque connue localement » d''une entreprise de jus de fruits.
- Exercice 2 : Positionnez dans la chaîne de valeur : formation des vendeurs, transport des marchandises vers les boutiques, négociation avec les fournisseurs d''emballages, service client par téléphone.
- Exercice 3 : Réécrivez de façon précise la force « bonne équipe commerciale ».
- Exercice 4 : Proposez une stratégie ST pour la laiterie face à la concurrence du lait en poudre importé.

## Corrigé

- Exercice 1 : Valeur : oui, elle attire les clients ; rareté : relative si d''autres marques locales existent ; imitabilité : une réputation se construit lentement, elle est difficile à copier ; organisation : il faut une politique marketing et qualité cohérente. Si ces conditions sont réunies, avantage durable ; sinon, temporaire.
- Exercice 2 : Formation des vendeurs : GRH (soutien) ; transport vers les boutiques : logistique aval (principale) ; négociation avec les fournisseurs d''emballages : achats (soutien) ; service client : services (principale).
- Exercice 3 : Par exemple : « 25 commerciaux couvrant 8 régions, taux de visite mensuel de 95 % des points de vente, ancienneté moyenne de 6 ans et connaissance fine des grossistes ».
- Exercice 4 : Utiliser l''image locale et la fraîcheur pour différencier : communication sur l''origine et la qualité, produits frais à durée courte que la poudre ne remplace pas, partenariats avec les écoles et les hôpitaux.', 'texte', 55, false, 20
from public.courses c where c.slug = 'management-strategique-master2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Diagnostic interne : ressources, chaîne de valeur et SWOT');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Les choix stratégiques : stratégies génériques, croissance et portefeuille', '## Objectifs de la leçon

- Connaître les stratégies génériques de Porter et leurs conditions de réussite.
- Choisir des directions de croissance : matrice d''Ansoff, intégration, diversification, internationalisation.
- Utiliser la matrice BCG pour gérer un portefeuille d''activités.
- Évaluer et choisir entre options stratégiques.

## 1. Stratégies au niveau de l''activité : les stratégies génériques

Porter distingue trois stratégies pour obtenir un avantage concurrentiel :

- Domination par les coûts : produire au coût le plus bas du secteur, grâce aux volumes, à l''effet d''expérience, à la standardisation et à la maîtrise des achats. Risque : guerre des prix, innovation d''un concurrent.
- Différenciation : offrir une valeur perçue unique (qualité, service, image, innovation) qui justifie un prix plus élevé. Risque : surcoût non accepté par les clients, imitation.
- Focalisation (concentration) : se spécialiser sur un segment (une clientèle, une zone, un produit), par les coûts ou par la différenciation.

La stratégie « Océan bleu » (Kim et Mauborgne) propose de créer un nouvel espace de marché en éliminant, réduisant, augmentant et créant des attributs de l''offre. Les services de paiement par téléphone mobile ont ainsi ouvert un marché auprès de populations non bancarisées que les banques ne servaient pas.

Les marchés « bas de la pyramide » (Prahalad) invitent aussi à concevoir des offres adaptées aux revenus modestes : petits conditionnements, paiement fractionné, distribution de proximité.

## 2. Stratégies de croissance

La matrice d''Ansoff croise produits et marchés :

- Pénétration du marché (produits actuels, marchés actuels) : gagner des parts de marché.
- Développement de marché (produits actuels, nouveaux marchés) : nouvelles régions, pays voisins, nouveaux segments.
- Développement de produit (nouveaux produits, marchés actuels).
- Diversification (nouveaux produits, nouveaux marchés), la plus risquée.

Autres directions :

- Intégration verticale amont (contrôler ses approvisionnements, comme une huilerie qui encadre des producteurs d''arachide) ou aval (contrôler sa distribution).
- Diversification liée (exploiter des compétences communes) ou conglomérale (sans lien), cette dernière étant fréquente dans les groupes familiaux africains, qui y voient une répartition des risques.
- Internationalisation : exportation, licence, franchise, filiale, avec une attention particulière aux opportunités d''intégration régionale.

Modes de croissance : croissance interne (développement des propres capacités), croissance externe (acquisitions, fusions) et alliances (coentreprises, partenariats, consortiums pour les marchés publics).

## 3. La gestion de portefeuille : la matrice BCG

Pour un groupe présent dans plusieurs domaines d''activité stratégique (DAS), la matrice du Boston Consulting Group croise le taux de croissance du marché et la part de marché relative (part de l''entreprise / part du principal concurrent) :

- Vedettes : forte croissance, part relative supérieure à 1 ; rentables mais consommatrices d''investissement.
- Vaches à lait : faible croissance, forte part ; elles génèrent des liquidités.
- Dilemmes : forte croissance, part faible ; il faut investir massivement ou abandonner.
- Poids morts : faible croissance, faible part ; candidats au désengagement.

Exemple fictif d''un groupe agroalimentaire :

- Huile : marché en croissance de 2 % par an, part de 30 % contre 20 % pour le premier concurrent : part relative 1,5 : vache à lait.
- Jus de fruits : croissance de 12 %, part de 10 % contre 25 % : part relative 0,4 : dilemme.
- Farines infantiles enrichies : croissance de 15 %, part de 35 % contre 15 % : part relative 2,33 : vedette.
- Savon artisanal : croissance de 1 %, part de 5 % contre 30 % : part relative 0,17 : poids mort.

Recommandation : utiliser les liquidités de l''huile pour soutenir la vedette (farines) et décider pour les jus : investir pour atteindre une taille critique, ou se retirer ; envisager la cession du savon.

## 4. Évaluer les options stratégiques

On évalue chaque option selon trois critères (Johnson, Scholes et Whittington) :

- Pertinence : l''option répond-elle au diagnostic ?
- Acceptabilité : rentabilité, risque, réaction des parties prenantes (actionnaires, salariés, État, communautés).
- Faisabilité : ressources financières, compétences, délais.

Grille de notation pondérée (exemple fictif) : critères pertinence (poids 0,4), acceptabilité (0,3), faisabilité (0,3), notés sur 10. Option A (export vers les pays voisins) : 8, 6, 7 → score = 3,2 + 1,8 + 2,1 = 7,1. Option B (nouvelle usine) : 9, 5, 4 → 3,6 + 1,5 + 1,2 = 6,3. L''option A est préférée, mais la grille n''est qu''une aide : le débat sur les poids et les notes compte autant que le score.

## Points clés

- Coûts, différenciation et focalisation sont les stratégies génériques ; l''innovation de valeur crée de nouveaux marchés.
- Ansoff structure les directions de croissance ; la diversification est la plus risquée.
- La matrice BCG aide à allouer les ressources entre activités.
- Une option se juge sur sa pertinence, son acceptabilité et sa faisabilité.

## Exercices

- Exercice 1 : Quelle stratégie générique suit une marque de riz local qui vend en sacs de 1 et 5 kg, à prix bas, dans les boutiques de quartier d''une région ?
- Exercice 2 : Classez dans la matrice d''Ansoff : a) une banque qui ouvre des agences dans un pays voisin ; b) un opérateur téléphonique qui lance une offre d''assurance ; c) une marque de lait qui lance une campagne pour gagner des clients dans sa ville.
- Exercice 3 : Activité X : croissance du marché 10 %, part de l''entreprise 18 %, part du leader concurrent 12 %. Calculez la part relative et classez l''activité (seuil de croissance retenu : 5 %).
- Exercice 4 : Notez deux options avec les poids 0,5 (pertinence), 0,25, 0,25. Option 1 : 6, 8, 8. Option 2 : 9, 5, 6. Laquelle l''emporte ?

## Corrigé

- Exercice 1 : Focalisation par les coûts (segment géographique et clientèle à budget modeste, prix bas), avec une adaptation « bas de la pyramide » (petits conditionnements).
- Exercice 2 : a) développement de marché ; b) diversification (nouveau produit, et souvent nouvelle clientèle) ; on peut discuter du développement de produit si la cible reste la clientèle actuelle ; c) pénétration du marché.
- Exercice 3 : Part relative = 18/12 = 1,5 ; croissance 10 % > 5 % : vedette.
- Exercice 4 : Option 1 : 3 + 2 + 2 = 7. Option 2 : 4,5 + 1,25 + 1,5 = 7,25. L''option 2 l''emporte de peu ; il faut discuter la sensibilité aux poids.', 'texte', 55, false, 30
from public.courses c where c.slug = 'management-strategique-master2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Les choix stratégiques : stratégies génériques, croissance et portefeuille');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Conduite du changement et gouvernance d''entreprise', '## Objectifs de la leçon

- Comprendre les dynamiques du changement organisationnel et les sources de résistance.
- Appliquer les modèles de Lewin et de Kotter.
- Connaître les principes de la gouvernance d''entreprise et ses enjeux en Afrique.

## 1. Pourquoi le changement échoue-t-il souvent ?

Une stratégie bien conçue peut échouer dans sa mise en œuvre. Les causes classiques sont le manque d''adhésion de la direction, une communication insuffisante, l''absence de moyens, la sous-estimation des résistances et l''oubli de la culture organisationnelle.

Les résistances ont des sources individuelles (peur de perdre son emploi, son statut ou ses compétences, fatigue des réformes) et collectives (normes du groupe, équilibres de pouvoir, culture). Elles ne sont pas forcément irrationnelles : elles signalent souvent un risque réel ou une mauvaise conception du projet. Il faut les écouter.

## 2. Le modèle de Lewin

Kurt Lewin décrit le changement en trois phases :

- Décristallisation (unfreezing) : faire prendre conscience de la nécessité de changer, en montrant les écarts de performance ou les menaces.
- Changement (moving) : mettre en œuvre les nouvelles pratiques, avec formation et accompagnement.
- Recristallisation (refreezing) : stabiliser les nouvelles pratiques dans les procédures, les indicateurs et la culture.

Son analyse des « champs de forces » consiste à lister les forces favorables et défavorables au changement, puis à renforcer les premières et réduire les secondes.

## 3. Les huit étapes de Kotter

John Kotter propose une démarche opérationnelle :

- Créer un sentiment d''urgence.
- Former une coalition de pilotage influente.
- Élaborer une vision et une stratégie.
- Communiquer la vision, par tous les canaux, de façon répétée.
- Donner aux acteurs les moyens d''agir et lever les obstacles.
- Obtenir des victoires rapides et visibles.
- Consolider les gains et poursuivre le changement.
- Ancrer les nouvelles pratiques dans la culture.

## Exemple : la digitalisation d''une mutuelle d''épargne et de crédit (cas fictif)

Une mutuelle veut remplacer les carnets papier par une application mobile pour les dépôts et remboursements. Les agents craignent pour leurs emplois, certains membres âgés se méfient du numérique, et les élus de la mutuelle ont peur de perdre le contact avec la base.

Application de Kotter : urgence (les jeunes membres partent vers les services de monnaie électronique) ; coalition (directeur, deux élus respectés, un chef d''agence apprécié) ; vision (« des services plus rapides, sans perdre la proximité ») ; communication en langues locales, lors des assemblées et à la radio communautaire ; moyens (formation des agents, qui deviennent conseillers et accompagnent les membres) ; victoire rapide (une agence pilote réduit le temps d''attente de moitié) ; consolidation (extension progressive) ; ancrage (nouveaux indicateurs de qualité de service, reconnaissance des agents). Le modèle de Lewin éclaire la même démarche : l''urgence correspond à la décristallisation, l''agence pilote au changement, les nouveaux indicateurs à la recristallisation.

## 4. La gouvernance d''entreprise

La gouvernance désigne l''ensemble des mécanismes qui encadrent les décisions des dirigeants et protègent les intérêts des actionnaires et des autres parties prenantes. La théorie de l''agence (Jensen et Meckling) part du constat que les dirigeants (agents) peuvent poursuivre des intérêts différents de ceux des actionnaires (principaux) : il faut des mécanismes de contrôle et d''incitation.

Mécanismes principaux :

- Le conseil d''administration : composition équilibrée, administrateurs indépendants, comités spécialisés (audit, rémunération, risques).
- La séparation des fonctions de président et de directeur général, ou au moins des contre-pouvoirs.
- L''audit interne et le commissariat aux comptes, prévus par le droit OHADA des sociétés commerciales pour certaines formes et tailles de sociétés.
- La transparence de l''information financière.
- Les codes de bonne gouvernance et, pour les sociétés cotées, les exigences du régulateur du marché.

## 5. Enjeux africains de la gouvernance

- Entreprises familiales : forte confusion possible entre patrimoine familial et patrimoine de l''entreprise, enjeux de succession. Bonnes pratiques : pacte d''actionnaires, conseil de famille distinct du conseil d''administration, préparation de la relève, recours à des administrateurs extérieurs.
- Entreprises publiques : risques d''interférences politiques, objectifs multiples ; besoin de contrats de performance et de conseils professionnalisés.
- Parties prenantes : communautés locales (mines, agro-industrie), autorités traditionnelles et religieuses, diaspora investisseuse. La responsabilité sociétale des entreprises (RSE) devient un élément de gouvernance, et un critère pour les bailleurs et investisseurs.
- Lutte contre la corruption et conformité : codes éthiques, procédures d''achat transparentes, mécanismes d''alerte.

## Points clés

- Le changement échoue souvent par défaut d''adhésion ; les résistances sont des informations à traiter.
- Lewin : décristalliser, changer, recristalliser ; Kotter : huit étapes de l''urgence à l''ancrage.
- La gouvernance encadre le pouvoir des dirigeants : conseil, audit, transparence.
- En Afrique, entreprises familiales, entreprises publiques et parties prenantes communautaires appellent des réponses spécifiques.

## Exercices

- Exercice 1 : Identifiez trois sources de résistance à l''introduction d''un système de pointage biométrique dans une administration.
- Exercice 2 : Associez chaque action à une étape de Kotter : a) un projet pilote réussi est célébré ; b) le DG réunit un comité de cinq cadres influents ; c) les nouveaux indicateurs sont intégrés dans l''évaluation annuelle.
- Exercice 3 : Expliquez le problème d''agence dans une société où le fondateur détient 100 % du capital, puis dans une société cotée.
- Exercice 4 : Proposez trois mesures de gouvernance pour une entreprise familiale qui prépare la succession de son fondateur.

## Corrigé

- Exercice 1 : Crainte d''un contrôle accru et de sanctions, remise en cause d''arrangements informels sur les horaires, méfiance vis-à-vis des données personnelles, crainte de pannes techniques.
- Exercice 2 : a) victoires rapides ; b) coalition de pilotage ; c) ancrage dans la culture (et consolidation).
- Exercice 3 : Quand le fondateur détient tout et dirige, il n''y a pas de conflit entre actionnaire et dirigeant (mais il peut y en avoir avec les créanciers ou les salariés). Dans une société cotée au capital dispersé, les dirigeants peuvent privilégier leur rémunération ou leur pouvoir au détriment des actionnaires : il faut un conseil indépendant, de la transparence et des rémunérations liées à la performance.
- Exercice 4 : Pacte d''actionnaires familial, entrée d''administrateurs indépendants, plan de succession avec formation du successeur et éventuelle direction générale confiée à un professionnel extérieur.', 'texte', 55, false, 40
from public.courses c where c.slug = 'management-strategique-master2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Conduite du changement et gouvernance d''entreprise');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Entrepreneuriat en Afrique : modèles d''affaires, financement et croissance', '## Objectifs de la leçon

- Comprendre les spécificités de l''entrepreneuriat en Afrique.
- Construire un modèle d''affaires avec le Business Model Canvas.
- Connaître les étapes et les sources de financement d''une jeune entreprise.
- Analyser la formalisation et la croissance des petites entreprises.

## 1. L''entrepreneuriat africain : nécessité et opportunité

L''Afrique présente une forte dynamique entrepreneuriale. Une partie importante relève de l''entrepreneuriat de nécessité (créer son activité faute d''emploi salarié), souvent dans l''informel, avec de petites unités peu capitalisées. Une autre partie relève de l''entrepreneuriat d''opportunité, porté par des entrepreneurs qui identifient des besoins non satisfaits : agro-transformation, énergie solaire hors réseau, logistique, technologies financières, éducation et santé numériques.

Spécificités du contexte :

- Des besoins essentiels non couverts, qui constituent des marchés (énergie, eau, logistique du dernier kilomètre).
- Des contraintes d''infrastructure, de financement et d''accès aux marchés.
- L''importance des réseaux sociaux et communautaires pour le capital de départ, la clientèle et la confiance.
- Le rôle croissant des femmes entrepreneures et de la diaspora.
- Le développement d''écosystèmes : incubateurs, accélérateurs, espaces de travail partagé, programmes publics d''appui à l''entrepreneuriat des jeunes et des femmes.

## 2. Le Business Model Canvas

Le Business Model Canvas (Osterwalder et Pigneur) décrit en neuf blocs comment une entreprise crée, délivre et capte de la valeur :

- Segments de clientèle.
- Proposition de valeur.
- Canaux.
- Relations clients.
- Flux de revenus.
- Ressources clés.
- Activités clés.
- Partenaires clés.
- Structure de coûts.

## Exemple : kits solaires à paiement fractionné (cas fictif)

- Segments : ménages ruraux non raccordés au réseau, petits commerçants.
- Proposition de valeur : éclairage et recharge de téléphone sans pétrole lampant, payés par petites sommes.
- Canaux : agents villageois, partenariats avec des coopératives.
- Relations : service après-vente de proximité, rappels par SMS.
- Revenus : acompte puis paiements quotidiens ou hebdomadaires par monnaie électronique ; le kit devient propriété du client au terme du paiement.
- Ressources clés : technologie de verrouillage à distance, réseau d''agents, financement du stock.
- Activités clés : importation et contrôle qualité, distribution, recouvrement.
- Partenaires : opérateurs de paiement mobile, fournisseurs de panneaux, institutions financières.
- Coûts : achat des kits, commissions des agents, logistique, coût du financement du crédit accordé aux clients.

Calcul simple (montants fictifs) : un kit coûte 60 000 FCFA rendu au village. Le client verse 10 000 FCFA d''acompte, puis 250 FCFA par jour pendant 360 jours, soit 90 000 FCFA. Total encaissé : 100 000 FCFA. Marge brute : 40 000 FCFA par kit, avant commissions, pertes sur impayés et coûts de financement. Le besoin de financement est élevé : l''entreprise décaisse 60 000 FCFA tout de suite mais n''encaisse le solde que sur un an. C''est pourquoi ces modèles dépendent de financements adaptés.

## 3. De l''idée à l''entreprise : étapes et financement

- Idée et validation : identifier un problème réel, tester la proposition de valeur auprès de clients potentiels, construire un produit minimum viable.
- Lancement : choisir une forme juridique (entreprise individuelle, SARL, SAS selon le droit OHADA ; statut d''entreprenant pour les très petites activités), s''immatriculer au registre du commerce et du crédit mobilier, ouvrir un compte, respecter les obligations fiscales et sociales.
- Croissance : structurer l''organisation, recruter, formaliser les processus.

Sources de financement selon le stade : épargne personnelle, famille et amis, tontines, microfinance, subventions et concours, incubateurs, investisseurs providentiels (business angels), fonds d''amorçage et de capital-risque, prêts bancaires (plus accessibles une fois l''activité établie), financement participatif.

## 4. Formalisation et croissance

La formalisation présente des avantages (accès au crédit, aux marchés publics et aux grandes entreprises, protection juridique) et des coûts perçus (fiscalité, formalités, contrôles). Les politiques publiques cherchent à la faciliter : guichets uniques de création, régimes simplifiés, statut de l''entreprenant prévu par l''OHADA.

Beaucoup de petites entreprises restent petites : c''est le « chaînon manquant » entre micro-entreprises et grandes entreprises. Les causes sont le manque de financement de croissance, la gestion centrée sur le fondateur, la difficulté à recruter des cadres, la confusion entre caisse familiale et caisse de l''entreprise. Les leviers sont la séparation des comptes, la tenue d''une comptabilité (même simplifiée), la délégation, l''ouverture du capital et l''accès aux marchés régionaux.

## Points clés

- L''entrepreneuriat africain combine nécessité et opportunité ; les besoins non satisfaits sont des marchés.
- Le Business Model Canvas structure le modèle d''affaires en neuf blocs.
- Le financement évolue avec le stade de l''entreprise, de l''épargne personnelle au capital-risque et à la banque.
- Formaliser et structurer sont les conditions du passage à l''échelle.

## Exercices

- Exercice 1 : Remplissez les blocs « segments », « proposition de valeur » et « revenus » d''un service de collecte de déchets à domicile dans un quartier de Dakar.
- Exercice 2 : Un entrepreneur vend des moulins à céréales 400 000 FCFA (coût 280 000) avec un acompte de 100 000 et 10 mensualités de 35 000. Calculez le total encaissé, la marge brute et le décaissement non couvert au moment de la vente.
- Exercice 3 : Citez trois sources de financement adaptées à une jeune entreprise sans historique.
- Exercice 4 : Donnez deux avantages et deux freins à la formalisation pour un atelier de couture.

## Corrigé

- Exercice 1 : Segments : ménages des quartiers mal desservis, petits restaurants. Proposition : collecte régulière et fiable, tri, prix abordable. Revenus : abonnement mensuel payé par monnaie électronique, vente de matières triées (plastique, métaux) à des recycleurs.
- Exercice 2 : Total encaissé = 100 000 + 10 × 35 000 = 450 000 FCFA. Marge brute = 450 000 − 280 000 = 170 000 FCFA. Au moment de la vente, l''entrepreneur a décaissé 280 000 et reçu 100 000 : 180 000 FCFA restent à financer.
- Exercice 3 : Épargne personnelle et proches, microfinance ou tontine, subventions et concours, incubateur ou investisseur providentiel.
- Exercice 4 : Avantages : accès au crédit bancaire, possibilité de répondre à des commandes d''entreprises ou de l''administration. Freins : coût et complexité perçus des obligations fiscales et sociales, crainte des contrôles.', 'texte', 55, false, 50
from public.courses c where c.slug = 'management-strategique-master2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Entrepreneuriat en Afrique : modèles d''affaires, financement et croissance');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : élaborer et déployer la stratégie d''un groupe familial', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Master 2 en management, stratégie, entrepreneuriat ; dirigeants et cadres en formation continue.
- Objectifs : conduire un diagnostic stratégique complet, formuler et évaluer des options, préparer leur mise en œuvre (changement, gouvernance) sur un cas africain.
- Matériel : diaporama, canevas imprimés (PESTEL, cinq forces, chaîne de valeur, SWOT, BCG, Business Model Canvas), étude de cas.
- Prérequis : leçons écrites 1 à 5.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture : le cas « Baobab Foods »

Bonjour à toutes et à tous. Pendant cette séance, vous serez le comité stratégique de « Baobab Foods », un groupe agroalimentaire familial fictif fondé à Thiès il y a trente ans. Il produit de l''huile, des farines, des jus et un peu de savon. Le fondateur, âgé de 68 ans, veut préparer sa succession et se demande s''il faut se développer dans les pays voisins. Il vous donne 90 minutes pour lui proposer une stratégie à cinq ans.

Avant de commencer, rappelons la démarche : vocation, diagnostic externe et interne, choix, déploiement, contrôle. Et rappelons la mise en garde de Mintzberg : une stratégie n''est jamais totalement planifiée ; une partie émergera de l''expérience. Notre plan devra donc prévoir des points de révision. Question d''ouverture : quelle est, selon vous, la mission de Baobab Foods ? Je note vos propositions. Une formulation possible : « nourrir les familles d''Afrique de l''Ouest avec des produits locaux, sains et accessibles ».

Visuel : chiffres clés fictifs du groupe et organigramme familial.

## 05:00 – 18:00 · Diagnostic externe : PESTEL et cinq forces

Commençons par le macro-environnement. Je vous propose un PESTEL hiérarchisé au tableau. Politique : politiques de soutien à la transformation locale. Économique : demande urbaine en hausse, pouvoir d''achat sous tension. Socioculturel : jeunesse, urbanisation, attrait pour les produits locaux et nutritionnels. Technologique : vente en ligne et paiement mobile. Écologique : sécheresses, réglementation des plastiques. Légal : droit OHADA, réforme du droit du travail au Sénégal, intégration régionale avec l''UEMOA, la CEDEAO et la ZLECAf.

Question à la classe : parmi tous ces éléments, lesquels ont l''impact le plus fort pour Baobab Foods ? Réponses attendues : la demande urbaine en produits nutritionnels, et l''intégration régionale qui ouvre des marchés.

Puis les cinq forces pour le secteur des farines infantiles : rivalité modérée, barrières à l''entrée liées aux normes sanitaires et à la confiance des mères, substituts faibles, fournisseurs de céréales dispersés mais dépendants du climat, clients distributeurs de plus en plus puissants. Sans oublier l''État, qui fixe les normes nutritionnelles et peut acheter pour des programmes de nutrition.

## 18:00 – 30:00 · Diagnostic interne : VRIO, chaîne de valeur, BCG

Visuel : chaîne de valeur de Baobab Foods.

Forces repérées : un réseau de collecte de céréales auprès de coopératives, une marque connue, un savoir-faire en farines enrichies. Faiblesses : distribution dépendante de quelques grossistes, gouvernance concentrée sur le fondateur, outil industriel vieillissant pour l''huile.

Testons le réseau de collecte avec la grille VRIO : valeur, oui ; rareté, oui ; difficile à imiter, oui, car fondé sur trente ans de relations ; organisation, partiellement. Conclusion : source d''avantage durable, à condition de mieux l''organiser.

Matrice BCG : l''huile est une vache à lait, les farines une vedette, les jus un dilemme, le savon un poids mort. Question : où investir l''argent de l''huile ? Réponse attendue : dans les farines, et décider rapidement pour les jus.

J''attire votre attention sur une limite : la matrice BCG ne regarde que la croissance et la part de marché. Or l''huile, vache à lait, repose sur un outil industriel vieillissant : si l''on n''investit pas un minimum pour la maintenir, elle cessera de produire des liquidités. Une matrice est une aide à la réflexion, pas une décision automatique.

## 30:00 – 40:00 · Synthèse SWOT et matrice TOWS

Je remplis la SWOT avec vous, en exigeant des formulations précises. Puis la matrice TOWS. SO : exporter les farines enrichies vers deux pays voisins de l''UEMOA. WO : moderniser la distribution, ouvrir un canal en ligne et des partenariats avec des pharmacies. ST : sécuriser l''approvisionnement par des contrats pluriannuels avec les coopératives. WT : céder le savon et réorganiser la gouvernance.

Question à la classe : pourquoi ne pas se contenter de la SWOT ? Réponse attendue : parce qu''une SWOT est un constat ; la matrice TOWS oblige à croiser les éléments et à formuler des orientations concrètes. Je vous invite aussi à vérifier la cohérence : une orientation qui exige des compétences que l''entreprise n''a pas, sans plan pour les acquérir, n''est pas réaliste.

## 40:00 – 48:00 · Pause interactive et quiz

Pause active. Trois questions.

- Question 1 : Part de 24 %, leader concurrent à 16 %, marché en croissance de 9 %. Case BCG ? Réponse : part relative 1,5, vedette.
- Question 2 : Une banque qui lance une assurance pour ses clients actuels : quelle case d''Ansoff ? Réponse : développement de produit.
- Question 3 : Dans VRIO, que signifie le O ? Réponse : l''organisation nécessaire pour exploiter la ressource.

## 48:00 – 1:00:00 · Choix stratégiques et évaluation

Trois options sont sur la table. Option A : exporter les farines vers deux pays voisins. Option B : construire une nouvelle huilerie. Option C : racheter un concurrent dans les jus.

Visuel : grille de notation pondérée. Pertinence poids 0,4 ; acceptabilité 0,3 ; faisabilité 0,3. Option A : 8, 7, 7, score 3,2 + 2,1 + 2,1 = 7,4. Option B : 6, 6, 4, score 5,4. Option C : 7, 5, 5, score 5,8. L''option A domine.

Quelle stratégie générique pour les farines ? Une différenciation par la qualité nutritionnelle, combinée à des formats « bas de la pyramide » en petits sachets. Question : quel risque principal à l''export ? Réponses attendues : réglementations sanitaires différentes, distribution à construire, concurrence locale ; d''où l''intérêt d''un partenaire distributeur dans chaque pays.

## 1:00:00 – 1:12:00 · Conduire le changement

La mise en œuvre implique une réorganisation commerciale, un nouveau logiciel de gestion et la cession du savon, où travaillent quinze salariés. Appliquons Kotter. Urgence : montrer la croissance des concurrents. Coalition : le fondateur, sa fille directrice financière, le directeur industriel, un délégué du personnel respecté. Vision : « le leader régional de la nutrition locale ». Communication : réunions par site, en wolof et en français. Moyens : formation. Victoire rapide : premier contrat d''export signé. Consolidation et ancrage.

Pour les salariés du savon : écoute, recherche de reclassements internes, et respect strict des procédures du droit du travail en vigueur, en tenant compte de la transition vers le nouveau Code du travail au Sénégal. Question à la classe : quelle erreur éviter ? Réponse : annoncer la cession par rumeur avant d''avoir parlé aux salariés concernés.

Analysons aussi le champ de forces de Lewin. Forces favorables : la volonté du fondateur, la croissance des farines, l''attente des jeunes cadres. Forces défavorables : l''attachement historique au savon, la crainte des anciens de perdre leur influence, le coût du nouveau logiciel. On renforce les premières par la communication des résultats, et on réduit les secondes en associant les anciens à la formation des nouveaux et en étalant l''investissement.

## 1:12:00 – 1:22:00 · Gouvernance, succession et esprit entrepreneurial

Baobab Foods est une entreprise familiale. Je propose : un conseil d''administration avec deux administrateurs indépendants, un comité d''audit, un conseil de famille séparé pour les questions patrimoniales, un pacte d''actionnaires et un plan de succession sur trois ans. La théorie de l''agence nous rappelle que, dès que la direction sera confiée à quelqu''un d''autre que le fondateur, il faudra des mécanismes de contrôle et d''incitation.

Enfin, l''esprit entrepreneurial : pour le canal en ligne, je propose de créer une petite unité autonome, fonctionnant comme une jeune entreprise, avec son propre Business Model Canvas : segment des jeunes parents urbains, proposition de valeur nutrition et praticité, revenus par vente directe et abonnement, partenaires livreurs et opérateurs de paiement mobile.

## 1:22:00 – 1:30:00 · Synthèse et évaluation finale

Ce que nous avons fait : diagnostic externe et interne, synthèse SWOT et TOWS, options évaluées sur pertinence, acceptabilité et faisabilité, plan de changement, gouvernance renouvelée et innovation entrepreneuriale. C''est la chaîne complète du management stratégique.

Évaluation finale, cinq questions :

- Question 1 : Citez les six dimensions du PESTEL. Réponse : politique, économique, socioculturelle, technologique, écologique, légale.
- Question 2 : Quelles sont les cinq forces de Porter ? Réponse : rivalité, nouveaux entrants, substituts, pouvoir des fournisseurs, pouvoir des clients.
- Question 3 : Quelles sont les trois stratégies génériques ? Réponse : domination par les coûts, différenciation, focalisation.
- Question 4 : Quelles sont les trois phases du modèle de Lewin ? Réponse : décristallisation, changement, recristallisation.
- Question 5 : Citez deux mécanismes de gouvernance pour une entreprise familiale. Réponse : administrateurs indépendants, pacte d''actionnaires ou plan de succession.

Merci pour votre engagement. Pour la prochaine séance, rédigez une note stratégique de trois pages pour le fondateur de Baobab Foods.', 'video', 90, false, 60
from public.courses c where c.slug = 'management-strategique-master2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : élaborer et déployer la stratégie d''un groupe familial');

-- Cours : Philosophie Terminale : conscience, liberté, travail, État et méthode
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'philosophie-terminale', (select id from public.levels where name = 'Terminale'), null, 'Philosophie', 'Philosophie Terminale : conscience, liberté, travail, État et méthode', 'Ce cours de philosophie de Terminale étudie quatre notions majeures, la conscience, la liberté, le travail et l''État, en croisant auteurs classiques (Descartes, Rousseau, Kant, Hegel, Marx) et penseurs africains (Senghor, Cheikh Anta Diop, Fanon, Hountondji). Il enseigne pas à pas la méthode de la dissertation et du commentaire de texte pour le Bac. Aucun prérequis autre qu''une bonne maîtrise de l''expression écrite.', true, 70
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'La conscience', '## Objectifs de la leçon

- Définir la conscience et distinguer ses différentes formes.
- Comprendre le rôle de la conscience dans la connaissance de soi (Descartes, Pascal).
- Discuter les limites de la conscience (inconscient, aliénation) avec Freud, Fanon et Cheikh Anta Diop.
- Mobiliser ces notions dans une problématique de dissertation.

## Définitions

Le mot conscience vient du latin « cum scientia », « avec savoir ». Être conscient, c''est savoir ce que l''on fait, ce que l''on vit, et savoir que l''on sait.

- La conscience spontanée (ou immédiate) accompagne nos actes : je vois ce texte, j''entends le bruit de la rue.
- La conscience réfléchie est le retour de l''esprit sur lui-même : je sais que je lis, je m''interroge sur ce que je pense.
- La conscience morale est la capacité de juger le bien et le mal de nos actes ; c''est elle qui produit le remords.
- La conscience collective ou historique désigne ce qu''un groupe sait de lui-même, de son passé et de son identité.

Husserl résume une caractéristique essentielle : « toute conscience est conscience de quelque chose ». La conscience est toujours tournée vers un objet : c''est l''intentionnalité.

## La conscience, fondement de la connaissance de soi

Descartes, dans le Discours de la méthode (1637) puis les Méditations métaphysiques (1641), cherche une vérité indubitable. Il doute de tout : des sens, qui nous trompent parfois, et même des raisonnements. Mais pendant qu''il doute, il pense ; et pour penser, il faut être. D''où la célèbre formule : « Je pense, donc je suis. » La conscience de soi est la première certitude, le socle de toute connaissance. Le sujet se définit comme « une chose qui pense ».

Pascal souligne la grandeur que la conscience donne à l''homme : « L''homme n''est qu''un roseau, le plus faible de la nature ; mais c''est un roseau pensant. » L''univers peut l''écraser, mais l''homme sait qu''il meurt, tandis que l''univers n''en sait rien. La conscience fait la dignité humaine.

Bergson ajoute que la conscience est d''abord mémoire : elle retient le passé et anticipe l''avenir ; elle relie les moments de notre vie.

## Les limites de la conscience

La conscience est-elle transparente à elle-même ? Plusieurs penseurs en doutent.

Freud, fondateur de la psychanalyse, fait l''hypothèse de l''inconscient : une partie de notre vie psychique (désirs refoulés, souvenirs pénibles) échappe à la conscience mais agit sur nous. Les lapsus, les actes manqués et les rêves en sont des signes. Freud écrit que « le moi n''est pas maître dans sa propre maison ». La conscience n''est donc pas toute la vie de l''esprit.

Frantz Fanon, psychiatre martiniquais engagé en Algérie, montre dans Peau noire, masques blancs (1952) que la domination coloniale peut produire une conscience aliénée : le colonisé intériorise le regard dévalorisant du colonisateur et finit par se percevoir à travers lui. La conscience de soi peut donc être faussée par les rapports de domination.

Cheikh Anta Diop, savant sénégalais, insiste sur la conscience historique. Dans Nations nègres et culture (1954) puis Civilisation ou barbarie (1981), il soutient qu''un peuple privé de la connaissance de son passé est fragilisé, et que l''identité culturelle repose sur des facteurs historiques, linguistiques et psychologiques. Restaurer la conscience historique des peuples africains est, pour lui, une condition de leur affirmation.

## Problématiques possibles

- La conscience de soi est-elle une connaissance de soi ?
- Peut-on se connaître soi-même ?
- L''hypothèse de l''inconscient supprime-t-elle la responsabilité ?
- La conscience de son histoire est-elle nécessaire à un peuple ?

Méthode : partir de la définition, montrer ce que la conscience permet (Descartes, Pascal), puis ce qui lui échappe (Freud, Fanon), et enfin comment la conscience peut se conquérir par un travail sur soi et sur l''histoire (analyse, éducation, conscience historique selon Cheikh Anta Diop).

## Points clés

- Conscience spontanée, réfléchie, morale, historique.
- Descartes : le cogito, première certitude. Pascal : la pensée fait la dignité de l''homme.
- Freud : l''inconscient limite la maîtrise de soi.
- Fanon : la domination peut aliéner la conscience. Cheikh Anta Diop : la conscience historique fonde l''identité culturelle.

## Exercices

Exercice 1 : Définir et distinguer conscience spontanée et conscience réfléchie, avec un exemple pour chacune.

Exercice 2 : Expliquer en quelques lignes le raisonnement qui conduit Descartes au « Je pense, donc je suis ».

Exercice 3 : Associer chaque idée à son auteur : a) « Toute conscience est conscience de quelque chose ». b) « Le moi n''est pas maître dans sa propre maison ». c) Le roseau pensant. d) La conscience historique comme fondement de l''identité culturelle africaine.

Exercice 4 : Formuler la problématique du sujet : « Peut-on se connaître soi-même ? »

Exercice 5 : L''existence de l''inconscient permet-elle d''excuser toutes nos fautes ? Proposer un argument pour et un argument contre.

## Corrigé

Exercice 1 : La conscience spontanée accompagne l''action sans retour sur soi (je marche dans la rue en évitant les obstacles). La conscience réfléchie est le retour de la pensée sur elle-même (je me demande pourquoi j''ai réagi avec colère).

Exercice 2 : Descartes doute de tout ce qui peut être mis en doute : les sens, le monde extérieur, même les vérités mathématiques. Mais il ne peut douter qu''il doute ; or douter, c''est penser, et pour penser il faut exister. Donc l''existence du sujet pensant est certaine.

Exercice 3 : a) Husserl. b) Freud. c) Pascal. d) Cheikh Anta Diop.

Exercice 4 : Exemple : la conscience semble nous donner un accès direct et privilégié à nous-mêmes ; pourtant, nos désirs inconscients, nos illusions et le regard des autres peuvent fausser cette connaissance. La conscience de soi suffit-elle à garantir une véritable connaissance de soi, ou celle-ci exige-t-elle un travail et la médiation d''autrui ?

Exercice 5 : Pour : si une partie de nos actes vient de forces inconscientes, notre responsabilité semble diminuée. Contre : le sujet reste capable de réfléchir sur lui-même et de travailler à se comprendre ; Freud lui-même vise à rendre conscient ce qui était inconscient. L''inconscient explique certaines conduites, mais il ne dispense pas de répondre de ses actes.', 'texte', 50, true, 10
from public.courses c where c.slug = 'philosophie-terminale'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'La conscience');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'La liberté', '## Objectifs de la leçon

- Distinguer les différents sens de la liberté.
- Exposer la thèse du libre arbitre et sa critique déterministe.
- Comprendre la liberté comme autonomie et comme engagement.
- Penser la liberté dans la société et dans l''histoire africaine.

## Définitions

- Au sens courant, être libre, c''est faire ce que l''on veut, sans contrainte.
- Le libre arbitre est le pouvoir de choisir par soi-même entre plusieurs possibles.
- L''autonomie (du grec autos, soi-même, et nomos, loi) est le fait de se donner à soi-même sa propre loi.
- La liberté politique est l''ensemble des droits garantis par la loi : liberté d''expression, de conscience, de circulation.
- La libération est le processus collectif par lequel un peuple s''affranchit d''une domination.

## La liberté comme libre arbitre

Pour Descartes, la volonté humaine est en un sens infinie : rien ne semble plus évident que notre pouvoir de choisir. Mais il précise que la « liberté d''indifférence », choisir sans raison, est « le plus bas degré de la liberté ». Le vrai degré de liberté consiste à se porter vers ce que l''on comprend clairement comme vrai et bon.

## La critique déterministe

Spinoza conteste l''idée de libre arbitre : « les hommes se croient libres parce qu''ils sont conscients de leurs actions et ignorants des causes qui les déterminent ». Comme une pierre lancée qui croirait se mouvoir par elle-même, nous ignorons les causes (corps, désirs, éducation, milieu) qui agissent en nous. Pour Spinoza, la liberté n''est pas l''absence de causes, mais la compréhension de la nécessité : on devient libre en connaissant ce qui nous détermine.

Les sciences humaines prolongent cette critique : notre langue, notre milieu social et notre culture influencent nos goûts et nos choix.

## La liberté comme autonomie

Rousseau, dans Du contrat social (1762), affirme que « l''obéissance à la loi qu''on s''est prescrite est liberté ». Il ne s''agit pas de faire ce que l''on veut, mais d''obéir à une loi que l''on reconnaît comme sienne.

Kant développe cette idée dans le domaine moral : la volonté est autonome lorsqu''elle agit par devoir, selon une loi universelle de la raison, et non sous l''effet des désirs. Dans Qu''est-ce que les Lumières ? (1784), il lance l''appel : « Sapere aude ! Aie le courage de te servir de ton propre entendement. » La paresse et la lâcheté maintiennent les hommes dans la « minorité », c''est-à-dire la dépendance à la pensée d''autrui.

## La liberté comme engagement

Pour Sartre (L''existentialisme est un humanisme, 1946), « l''existence précède l''essence » : l''homme n''a pas de nature fixée d''avance, il se fait par ses actes. Il est « condamné à être libre » : même ne pas choisir est encore un choix. Cette liberté totale implique une responsabilité totale. Invoquer les circonstances pour se décharger est de la « mauvaise foi ».

## Liberté et histoire africaine

La question de la liberté a pris en Afrique une dimension collective : traite négrière, colonisation, luttes d''indépendance. La Charte du Manden, transmise par la tradition orale et attribuée à l''époque de Soundiata Keïta, affirme notamment que « toute vie est une vie », principe de dignité égale. Au XXe siècle, Senghor et les poètes de la Négritude revendiquent la liberté culturelle : le droit de penser et de créer à partir de ses propres valeurs. Fanon insiste sur la nécessité d''une libération qui soit aussi celle des consciences.

## Problématiques possibles

- Être libre, est-ce faire ce que l''on veut ?
- La liberté est-elle une illusion ?
- Obéir à la loi, est-ce renoncer à sa liberté ?
- La liberté se donne-t-elle ou se conquiert-elle ?

## Points clés

- Libre arbitre (Descartes) contre déterminisme (Spinoza).
- Autonomie : obéir à la loi qu''on se donne (Rousseau, Kant).
- Engagement et responsabilité (Sartre).
- Dimension collective de la liberté : libération, dignité, Négritude.

## Exercices

Exercice 1 : Expliquer la différence entre liberté et licence (faire tout ce que l''on veut).

Exercice 2 : Expliquer avec vos mots l''image de la pierre chez Spinoza.

Exercice 3 : Pourquoi, selon Rousseau, obéir à la loi peut-il être une forme de liberté ?

Exercice 4 : Que signifie « l''homme est condamné à être libre » ? Donner un exemple.

Exercice 5 : Proposer un plan en trois parties pour le sujet : « Être libre, est-ce faire ce que l''on veut ? »

## Corrigé

Exercice 1 : La licence est l''absence de toute règle : chacun suit ses désirs, au risque de nuire aux autres et de devenir esclave de ses passions. La liberté suppose au contraire la maîtrise de soi et le respect de règles qui garantissent la liberté de tous.

Exercice 2 : Une pierre lancée, si elle était consciente, croirait se mouvoir par sa propre volonté, alors qu''elle est poussée par une cause extérieure. De même, nous nous croyons libres parce que nous sommes conscients de nos désirs, mais nous ignorons les causes qui les produisent.

Exercice 3 : Parce que dans la société du contrat, la loi exprime la volonté générale à laquelle chaque citoyen participe. En obéissant à la loi, le citoyen obéit à une règle qu''il s''est lui-même donnée, et non à la volonté arbitraire d''un autre.

Exercice 4 : L''homme ne peut pas échapper au choix : même s''abstenir est une décision dont il est responsable. Exemple : un élève qui ne s''inscrit pas à l''examen « pour ne pas choisir » a en réalité choisi de ne pas le passer.

Exercice 5 : I. Au sens courant, la liberté semble être l''absence de contrainte : faire ce que l''on veut (libre arbitre, Descartes). II. Mais faire ce que l''on veut, c''est souvent obéir à des désirs dont on ignore les causes (Spinoza) et nuire à la liberté des autres. III. La vraie liberté est autonomie et responsabilité : se donner sa loi et assumer ses choix (Rousseau, Kant, Sartre).', 'texte', 50, false, 20
from public.courses c where c.slug = 'philosophie-terminale'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'La liberté');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Le travail', '## Objectifs de la leçon

- Définir le travail et ses différentes dimensions.
- Comprendre le travail comme transformation de la nature et de soi.
- Analyser les critiques du travail (aliénation, exploitation).
- Réfléchir au sens du travail dans les sociétés africaines contemporaines.

## Définitions

Le travail est une activité consciente et volontaire par laquelle l''homme transforme la nature pour satisfaire ses besoins. On cite souvent l''étymologie « tripalium », instrument de contrainte, mais cette origine est discutée par les linguistes ; elle a néanmoins nourri l''idée du travail comme peine.

- Le travail se distingue du jeu, activité gratuite et libre.
- Il se distingue de l''activité animale, instinctive et répétitive.
- Il se distingue de l''œuvre, production durable, et de l''emploi, qui est la forme sociale et rémunérée du travail.

## Le travail comme peine et nécessité

Dans la tradition biblique, le travail apparaît comme une conséquence de la faute : « Tu gagneras ton pain à la sueur de ton front. » Dans la Grèce antique, le travail manuel était souvent jugé indigne de l''homme libre et confié aux esclaves ; la vie noble était celle de la pensée et de la politique.

## Le travail comme humanisation

Marx, dans Le Capital, compare l''architecte et l''abeille : l''abeille construit des cellules remarquables, mais l''architecte, même médiocre, a construit l''ouvrage dans sa tête avant de le réaliser. Le travail humain est conscient et projeté. En transformant la nature, l''homme se transforme lui-même : il développe ses facultés.

Hegel, dans la Phénoménologie de l''esprit (1807), décrit la dialectique du maître et de l''esclave : le maître, qui jouit sans travailler, devient dépendant ; l''esclave, en travaillant, façonne le monde, se forme et prend conscience de lui-même. Le travail est formateur.

Kant écrit que l''homme est le seul animal qui doit travailler : la nature ne lui a pas tout donné, il doit tout tirer de lui-même, et cet effort développe ses talents.

Locke voit dans le travail le fondement de la propriété : en mêlant son travail à une chose de la nature, l''homme la fait sienne.

## Les critiques : aliénation et exploitation

Dans les Manuscrits de 1844, Marx analyse le travail aliéné : dans le système capitaliste, l''ouvrier ne possède ni les moyens de production ni le produit de son travail ; son travail lui devient étranger, il ne s''y reconnaît plus. Au lieu de l''épanouir, le travail le mutile.

Le travail à la chaîne (taylorisme) parcellise les tâches : le travailleur répète un geste sans voir le sens de l''ensemble. Selon une formule attribuée à Alain, « le travail est la meilleure et la pire des choses : la meilleure, s''il est libre, la pire, s''il est serf ».

L''histoire africaine rappelle la forme extrême du travail contraint : l''esclavage et la traite, puis le travail forcé de l''époque coloniale.

## Le travail aujourd''hui en Afrique

Dans de nombreux pays africains, une grande partie de la population travaille dans le secteur informel : marchands ambulants, artisans, transporteurs, agriculteurs. Ce travail est souvent précaire, mais il témoigne d''une grande créativité. Le chômage des jeunes diplômés pose la question du sens du travail : faut-il attendre un emploi salarié ou créer son activité ? Senghor, dans sa réflexion sur un socialisme africain, insistait sur la valeur communautaire du travail ; dans les sociétés rurales sénégalaises, les travaux collectifs des champs illustrent cette dimension de solidarité.

## Problématiques possibles

- Le travail est-il une contrainte ou une libération ?
- Travailler, est-ce seulement gagner sa vie ?
- Le travail rend-il l''homme plus humain ?
- Une société sans travail est-elle souhaitable ?

## Points clés

- Le travail transforme la nature et l''homme lui-même (Marx, Hegel, Kant).
- Il peut être aliénant lorsque le travailleur est dépossédé de son activité et de son produit.
- Il fonde la propriété (Locke) et le lien social.
- Ses formes contemporaines (informel, chômage) posent la question de son sens.

## Exercices

Exercice 1 : Distinguer travail, jeu et emploi.

Exercice 2 : Expliquer la comparaison de Marx entre l''architecte et l''abeille.

Exercice 3 : Pourquoi, selon Hegel, l''esclave finit-il par dépasser le maître ?

Exercice 4 : Qu''est-ce que le travail aliéné ? Donner un exemple contemporain.

Exercice 5 : Rédiger une introduction (amorce, problématique, annonce de plan) pour le sujet : « Le travail est-il une contrainte ou une libération ? »

## Corrigé

Exercice 1 : Le travail est une activité productive, souvent contraignante, orientée vers un résultat utile. Le jeu est une activité libre, sans autre but que le plaisir. L''emploi est le cadre social et rémunéré du travail (contrat, salaire) : on peut travailler sans avoir d''emploi (travail domestique, bénévolat).

Exercice 2 : L''abeille construit par instinct, toujours de la même manière. L''architecte conçoit d''abord son projet en pensée, puis le réalise : le travail humain est conscient, intentionnel et inventif.

Exercice 3 : Le maître dépend du travail de l''esclave pour satisfaire ses besoins. L''esclave, en transformant la matière, développe des savoir-faire, se reconnaît dans ses œuvres et prend conscience de sa valeur. Le travail le forme, tandis que le maître reste passif.

Exercice 4 : C''est un travail dans lequel le travailleur ne se reconnaît pas : il ne maîtrise ni son activité ni son produit, et le travail devient un simple moyen de survivre. Exemple : un ouvrier payé à la pièce qui répète le même geste toute la journée sans connaître la destination du produit.

Exercice 5 : Amorce : le jeune diplômé qui cherche un emploi espère, par le travail, gagner son autonomie ; l''ouvrier épuisé par sa journée y voit plutôt une peine. Problématique : le travail est une nécessité imposée par nos besoins ; mais n''est-il qu''une contrainte, ou peut-il être le moyen par lequel l''homme se réalise et se libère ? Plan : nous verrons d''abord que le travail est une contrainte, puis qu''il est une source d''humanisation, enfin à quelles conditions il peut devenir libérateur.', 'texte', 50, false, 30
from public.courses c where c.slug = 'philosophie-terminale'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Le travail');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'L''État', '## Objectifs de la leçon

- Définir l''État et le distinguer de la nation, du gouvernement et de la société.
- Expliquer l''origine de l''État selon les théories du contrat (Hobbes, Rousseau).
- Discuter la légitimité et les limites du pouvoir de l''État.
- Réfléchir à la construction de l''État en Afrique.

## Définitions

- L''État est l''ensemble des institutions qui exercent l''autorité politique sur une population, sur un territoire déterminé. Max Weber le définit comme la communauté humaine qui revendique avec succès le monopole de la violence physique légitime.
- La nation est une communauté humaine unie par une histoire, une culture, une volonté de vivre ensemble.
- Le gouvernement est l''ensemble des personnes qui dirigent l''État à un moment donné ; il passe, l''État demeure.
- La société civile regroupe les individus, les familles, les associations, les entreprises.

Aristote affirmait que « l''homme est par nature un animal politique » : il ne réalise pleinement son humanité que dans la cité.

## L''origine de l''État : le contrat social

Hobbes, dans le Léviathan (1651), imagine un état de nature sans pouvoir commun : chacun ayant droit à tout, c''est « la guerre de chacun contre chacun », où la vie humaine est, selon lui, solitaire, misérable et brève. Par peur de la mort violente, les hommes concluent un pacte : ils transfèrent leur droit à un souverain absolu qui garantit la paix et la sécurité.

Rousseau, dans Du contrat social (1762), part de la formule : « L''homme est né libre, et partout il est dans les fers. » Le contrat légitime est celui par lequel chacun s''unit à tous en restant libre : le peuple souverain obéit à la volonté générale, qui vise l''intérêt commun. La loi est l''expression de cette volonté générale.

## La légitimité et les limites du pouvoir

Un pouvoir est légitime lorsqu''il est reconnu comme juste par ceux sur qui il s''exerce (Weber distingue légitimité traditionnelle, charismatique et légale-rationnelle). La force seule ne fonde pas le droit : Rousseau remarque que « le plus fort n''est jamais assez fort pour être toujours le maître, s''il ne transforme sa force en droit et l''obéissance en devoir ».

Pour éviter les abus, Montesquieu, dans De l''esprit des lois (1748), propose la séparation des pouvoirs législatif, exécutif et judiciaire : « Il faut que, par la disposition des choses, le pouvoir arrête le pouvoir. » C''est le fondement de l''État de droit, où les gouvernants eux-mêmes sont soumis à la loi.

## Les critiques de l''État

- Marx et Engels voient dans l''État un instrument de domination de la classe dominante ; dans la société sans classes, l''État devrait « dépérir ».
- Nietzsche écrit dans Ainsi parlait Zarathoustra que l''État est « le plus froid de tous les monstres froids », qui prétend être le peuple.
- Les anarchistes estiment que toute autorité étatique est une oppression.

Ces critiques rappellent que l''État peut confisquer la liberté au lieu de la garantir.

## L''État en Afrique

Les États africains actuels sont pour la plupart issus des frontières coloniales, tracées sans tenir compte des peuples. Avant la colonisation, l''Afrique a connu de grandes formations politiques : empires du Ghana, du Mali, du Songhaï, royaumes du Djolof, du Kayor, du Sine et du Saloum, entre autres. Cheikh Anta Diop, dans Les fondements économiques et culturels d''un État fédéral d''Afrique noire (1960), plaide pour une unité politique du continent, condition selon lui de son développement. Senghor, premier président du Sénégal, défendait l''idée d''un État fondé sur le dialogue des cultures et l''enracinement dans les valeurs africaines. La question demeure : comment construire un État légitime, efficace et respectueux des libertés, au service de nations diverses ?

## Problématiques possibles

- L''État est-il un mal nécessaire ?
- L''État est-il l''ennemi de la liberté ?
- Peut-on se passer de l''État ?
- Toute obéissance à l''État est-elle légitime ?

## Points clés

- État : institutions, territoire, monopole de la violence légitime (Weber).
- Hobbes : l''État garantit la sécurité ; Rousseau : la volonté générale garantit la liberté.
- Montesquieu : séparation des pouvoirs, État de droit.
- Critiques : Marx, Nietzsche. Afrique : héritage colonial, projets d''unité (Cheikh Anta Diop).

## Exercices

Exercice 1 : Distinguer État, nation et gouvernement, avec un exemple.

Exercice 2 : Pourquoi, selon Hobbes, les hommes acceptent-ils de se soumettre à un souverain ?

Exercice 3 : Expliquer la formule de Montesquieu : « le pouvoir arrête le pouvoir ».

Exercice 4 : Quelle différence y a-t-il entre la légalité et la légitimité ?

Exercice 5 : Proposer une problématique et un plan pour le sujet : « L''État est-il l''ennemi de la liberté ? »

## Corrigé

Exercice 1 : L''État est l''appareil institutionnel qui exerce l''autorité (lois, administration, armée, justice). La nation est la communauté humaine qui se reconnaît une histoire et un destin communs. Le gouvernement est l''équipe dirigeante du moment. Exemple : un changement de gouvernement après une élection ne fait pas disparaître l''État ni la nation.

Exercice 2 : Dans l''état de nature, chacun craint pour sa vie. Pour sortir de cette guerre permanente, les hommes renoncent à leur droit de tout faire et le confient à un souverain qui garantit la paix : ils échangent une liberté sans limite contre la sécurité.

Exercice 3 : Pour qu''un pouvoir ne devienne pas tyrannique, il faut qu''un autre pouvoir puisse le limiter. En séparant le législatif, l''exécutif et le judiciaire, on empêche une seule personne ou un seul organe de concentrer toute l''autorité.

Exercice 4 : La légalité est la conformité à la loi en vigueur. La légitimité est la conformité à ce qui est juste et reconnu comme tel. Une loi peut être légale sans être légitime (par exemple une loi discriminatoire).

Exercice 5 : Problématique : l''État impose des lois et dispose de la force, ce qui semble limiter la liberté ; mais sans lui, la liberté de chacun serait menacée par la violence des autres. L''État est-il un obstacle ou une condition de la liberté ? Plan : I. L''État contraint et peut opprimer (Marx, Nietzsche). II. Mais il est la condition de la sécurité et de la liberté civile (Hobbes, Rousseau). III. Il ne garantit la liberté que s''il est un État de droit, limité et contrôlé (Montesquieu).', 'texte', 50, false, 40
from public.courses c where c.slug = 'philosophie-terminale'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'L''État');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Méthode de la dissertation et du commentaire de texte', '## Objectifs de la leçon

- Analyser un sujet et construire une problématique.
- Bâtir le plan d''une dissertation et rédiger introduction, développement et conclusion.
- Conduire l''explication d''un texte philosophique (commentaire).
- Gérer son temps et éviter les erreurs fréquentes le jour de l''épreuve.

## La dissertation : analyser le sujet

La dissertation est une réflexion argumentée sur une question. Elle ne consiste ni à réciter un cours ni à donner une opinion sans justification.

Étapes de l''analyse :
- Lire le sujet plusieurs fois et souligner les mots-clés.
- Définir chaque terme, en distinguant ses différents sens.
- Repérer la forme de la question (« est-ce… ? », « peut-on… ? », « faut-il… ? ») : « peut-on » interroge à la fois la possibilité et la légitimité.
- Identifier les présupposés : ce que le sujet tient pour acquis.
- Formuler le problème : une tension entre deux réponses également défendables.

Exemple : « La conscience de soi est-elle une connaissance de soi ? » Présupposé : nous avons une conscience de nous-mêmes. Tension : la conscience semble nous donner un accès immédiat à nous-mêmes, mais cet accès peut être partiel ou trompeur.

## Construire le plan

Le plan dialectique est le plus courant :
- I. Thèse : on examine la réponse la plus évidente, avec ses arguments.
- II. Antithèse : on montre ses limites et on développe la réponse opposée.
- III. Synthèse ou dépassement : on propose une réponse plus nuancée qui intègre les acquis des deux premières parties.

Chaque partie contient deux ou trois sous-parties ; chaque sous-partie présente un argument, un exemple et, si possible, une référence à un auteur expliquée (pas seulement citée). Les références africaines (Senghor, Cheikh Anta Diop, Fanon, Hountondji) et classiques (Platon, Descartes, Kant, Rousseau) se complètent.

## Rédiger l''introduction et la conclusion

Introduction, en un seul paragraphe :
- une amorce : un exemple, une situation, une citation qui fait apparaître le problème ;
- la définition des termes et la reformulation du sujet ;
- la problématique, formulée en une ou deux questions ;
- l''annonce du plan.

Conclusion :
- un bilan du parcours ;
- une réponse claire à la question posée ;
- éventuellement une ouverture vers une question voisine.

## Le commentaire de texte

Le commentaire consiste à expliquer un texte philosophique : dégager sa thèse, suivre son argumentation et en évaluer la portée.

Introduction :
- situer l''auteur et l''œuvre si on les connaît (sans réciter une biographie) ;
- dégager le thème (de quoi parle le texte), le problème (à quelle question il répond) et la thèse (sa réponse) ;
- annoncer les étapes de l''argumentation (le plan du texte, souvent marqué par des connecteurs : mais, donc, en effet, ainsi).

Développement :
- Étude ordonnée : expliquer chaque moment du texte, en citant les expressions importantes et en expliquant les concepts, les exemples et les liens logiques.
- Intérêt philosophique : montrer ce que la thèse apporte, la confronter à d''autres positions, en discuter les limites.

Conclusion : rappeler la thèse et l''apport du texte, donner une appréciation argumentée.

Erreur à éviter : paraphraser, c''est-à-dire répéter le texte avec d''autres mots sans l''expliquer.

## Gérer son temps

Les modalités exactes de l''épreuve (durée, choix des sujets) sont fixées par les autorités du Bac : vérifiez-les dans les textes officiels de l''année. Une répartition indicative pour une épreuve de quatre heures :
- 15 minutes pour lire tous les sujets et choisir ;
- 1 heure à 1 heure 15 pour l''analyse et le plan détaillé au brouillon ;
- 2 heures 15 de rédaction directe au propre (introduction et conclusion peuvent être préparées au brouillon) ;
- 15 minutes de relecture.

## Erreurs fréquentes

- Hors-sujet : traiter une notion voisine.
- Catalogue d''auteurs : citer sans expliquer.
- Absence de problématique ou conclusion sans réponse.

## Points clés

- Définir, problématiser, construire un plan progressif.
- Chaque argument : idée, explication, exemple, référence expliquée.
- Commentaire : thème, problème, thèse, structure, explication, intérêt philosophique.
- Relire pour la langue et la cohérence.

## Exercices

Exercice 1 : Analyser les termes et repérer le présupposé du sujet : « Faut-il obéir à toutes les lois ? »

Exercice 2 : Formuler une problématique pour le sujet : « Le travail rend-il libre ? »

Exercice 3 : Voici une phrase de Kant : « Sapere aude ! Aie le courage de te servir de ton propre entendement. » Dégager le thème, le problème et la thèse.

Exercice 4 : Repérer l''erreur dans ce début de développement : « Descartes a dit “Je pense, donc je suis”. Pascal a dit que l''homme est un roseau pensant. Freud a dit qu''il y a un inconscient. »

Exercice 5 : Rédiger une conclusion de quatre phrases pour le sujet : « L''État est-il l''ennemi de la liberté ? »

## Corrigé

Exercice 1 : « Faut-il » interroge l''obligation morale et pas seulement légale. « Obéir » : se conformer à un ordre. « Toutes les lois » : y compris les lois injustes. Présupposé : il existe des lois et un devoir général d''obéissance. Le problème porte sur les limites de ce devoir : la légalité suffit-elle à fonder l''obligation ?

Exercice 2 : Le travail semble d''abord une contrainte imposée par nos besoins, qui occupe notre temps et nous soumet à un employeur ; pourtant, par lui, l''homme transforme la nature, développe ses capacités et gagne son autonomie. Le travail est-il un asservissement ou la condition de notre liberté ?

Exercice 3 : Thème : l''usage de la raison (les Lumières). Problème : pourquoi les hommes restent-ils dépendants de la pensée des autres, et comment s''en libérer ? Thèse : la liberté de penser exige le courage d''utiliser sa propre raison, sans se soumettre à des tuteurs.

Exercice 4 : C''est un catalogue de citations : aucune n''est expliquée ni reliée à un argument ou à la problématique. Il faut partir d''une idée, l''expliquer, l''illustrer, et utiliser l''auteur pour appuyer le raisonnement.

Exercice 5 : Nous avons vu que l''État, parce qu''il impose des lois et détient la force, peut menacer la liberté. Pourtant, sans lui, la liberté de chacun serait livrée à la violence des plus forts. L''État n''est donc pas par nature l''ennemi de la liberté : il en est la condition, à condition d''être un État de droit où le pouvoir est limité et contrôlé par les citoyens. Reste à savoir comment les citoyens peuvent, concrètement, exercer ce contrôle.', 'texte', 55, false, 50
from public.courses c where c.slug = 'philosophie-terminale'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Méthode de la dissertation et du commentaire de texte');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : atelier de dissertation et de commentaire', '## Fiche du cours vidéo

- Durée : 1h30.
- Thème : atelier de dissertation et de commentaire, de l''analyse du sujet à la copie rédigée.
- Objectifs : appliquer la méthode à un sujet complet (« Le travail rend-il libre ? »), mobiliser les notions de conscience, liberté, travail et État, et s''exercer au commentaire d''un court extrait.
- Matériel : tableau ou diaporama, fiche des auteurs du cours, brouillon, chronomètre.
- Prérequis : leçons 1 à 5.

## Déroulé minuté

## 00:00 – 05:00 · Accueil

« Bonjour à toutes et à tous. Beaucoup d''élèves pensent que la philosophie est une matière où “il n''y a pas de bonne réponse”. C''est vrai en partie : on ne vous demande pas une réponse unique. Mais il y a une bonne méthode, et c''est elle qui fait la différence. Aujourd''hui, nous allons construire ensemble une dissertation complète, puis nous ferons un exercice de commentaire. Préparez votre brouillon. »

Visuel : le sujet affiché en grand : « Le travail rend-il libre ? »

## 05:00 – 18:00 · Étape 1 : analyser le sujet

« Commençons par les mots. “Le travail” : activité consciente par laquelle l''homme transforme la nature pour satisfaire ses besoins. Mais aussi, au sens social, l''emploi, le métier, le salariat. “Rend” : le verbe suggère une transformation, un effet produit. “Libre” : plusieurs sens. Indépendance matérielle ? Autonomie ? Liberté intérieure ? Maîtrise de soi et du monde ? »

« Quel est le présupposé ? Que l''homme n''est pas d''emblée libre, et que quelque chose pourrait le libérer. Quelle est la tension ? D''un côté, le travail est contrainte : il répond au besoin, il fatigue, il soumet à un patron ou à un horaire. De l''autre, il est ce par quoi l''homme se forme, gagne son pain sans dépendre de personne et transforme le monde. »

Question à poser : « Pensez à des exemples concrets de votre entourage. Le vendeur ambulant de Dakar est-il plus libre ou moins libre grâce à son travail ? » Réponses attendues : il gagne une indépendance, mais ses journées sont longues et ses revenus incertains.

## 18:00 – 28:00 · Étape 2 : la problématique

« À partir de cette tension, je formule la problématique. Écrivez-la : le travail paraît d''abord comme une nécessité imposée par nos besoins, qui nous assujettit ; pourtant, c''est par lui que l''homme transforme la nature et se transforme lui-même. Le travail est-il un asservissement, ou peut-il être le chemin de la liberté ? Et si oui, à quelles conditions ? »

« Remarquez que la dernière question, “à quelles conditions”, annonce déjà une troisième partie nuancée. »

## 28:00 – 45:00 · Étape 3 : le plan détaillé

Le formateur construit le plan au tableau.

« Première partie : le travail est une contrainte qui semble s''opposer à la liberté. Premier argument : il est imposé par le besoin ; la tradition biblique y voit une peine. Deuxième argument : dans l''Antiquité grecque, l''homme libre était celui qui n''avait pas à travailler de ses mains. Troisième argument : le travail peut être aliéné. Marx montre que l''ouvrier dépossédé de son produit ne se reconnaît pas dans son activité. L''histoire africaine en donne la forme extrême : le travail forcé et l''esclavage. »

« Deuxième partie : pourtant, le travail humanise et libère. Premier argument : le travail est conscient et projeté, comme l''architecte de Marx face à l''abeille. Deuxième argument : la dialectique du maître et de l''esclave chez Hegel : par le travail, l''esclave se forme et prend conscience de lui-même, tandis que le maître devient dépendant. Troisième argument : le travail donne l''indépendance matérielle ; Kant dit que l''homme doit tout tirer de lui-même, et cet effort développe ses talents. »

« Troisième partie : le travail ne rend libre qu''à certaines conditions. Premier argument : il faut qu''il ait un sens pour celui qui l''accomplit ; la formule attribuée à Alain le résume : le travail est la meilleure des choses s''il est libre, la pire s''il est serf. Deuxième argument : il faut un cadre juste, ce qui renvoie au rôle de l''État et du droit du travail, qui protègent le travailleur. Troisième argument : la liberté ne se réduit pas au travail ; le loisir, la culture, la vie politique et la vie spirituelle sont aussi des lieux de liberté. »

## 45:00 – 52:00 · Pause et quiz interactif

« Faisons une pause de deux minutes, puis répondez à ces questions. »

- Question 1 : Qui a écrit « Je pense, donc je suis » ? Réponse : Descartes.
- Question 2 : Pour quel auteur la liberté est-elle « l''obéissance à la loi qu''on s''est prescrite » ? Réponse : Rousseau.
- Question 3 : Quel penseur sénégalais a insisté sur la conscience historique des peuples africains ? Réponse : Cheikh Anta Diop.
- Question 4 : Quelle est la définition de l''État selon Max Weber ? Réponse : le monopole de la violence physique légitime.
- Question 5 : Qu''est-ce que la paraphrase ? Réponse : répéter le texte avec d''autres mots sans l''expliquer.

## 52:00 – 1:05:00 · Étape 4 : rédiger l''introduction et une sous-partie

« Voici une introduction modèle. Écoutez-en la structure. »

« Amorce : chaque matin, à Dakar, des milliers de travailleurs prennent les cars rapides pour rejoindre leur lieu de travail ; beaucoup y voient une fatigue nécessaire, d''autres une fierté, celle de ne dépendre de personne. Définition : le travail est l''activité consciente par laquelle l''homme transforme la nature pour répondre à ses besoins. Problématique : il paraît d''abord comme une nécessité qui nous asservit ; pourtant, c''est par lui que l''homme se forme et conquiert son indépendance. Le travail est-il un asservissement ou le chemin de la liberté ? Annonce du plan : nous verrons d''abord que le travail apparaît comme une contrainte, puis qu''il est aussi une source d''humanisation, avant de chercher à quelles conditions il peut réellement libérer l''homme. »

« Maintenant, une sous-partie rédigée, avec la structure idée, explication, référence, exemple : Le travail forme celui qui l''accomplit. En effet, en transformant la matière, le travailleur acquiert des savoir-faire et prend conscience de ses capacités. C''est ce que montre Hegel avec la dialectique du maître et de l''esclave : le maître, qui consomme sans produire, devient dépendant de l''esclave, tandis que ce dernier, en travaillant, se reconnaît dans ses œuvres. On le voit chez l''apprenti menuisier de Soumbédioune, qui devient, au fil des années, un maître artisan reconnu. Le travail n''est donc pas seulement une peine : il est formation de soi. »

## 1:05:00 – 1:17:00 · Étape 5 : exercice de commentaire

Texte projeté : la phrase de Kant tirée de Qu''est-ce que les Lumières ? (1784) : « Sapere aude ! Aie le courage de te servir de ton propre entendement. »

« Dégageons le thème : l''usage de la raison. Le problème : pourquoi les hommes restent-ils dans la dépendance intellectuelle ? La thèse : la liberté de penser est une affaire de courage, non d''intelligence. Kant explique ailleurs dans ce texte que la paresse et la lâcheté maintiennent les hommes en “minorité”, parce qu''il est confortable de laisser d''autres penser à notre place. »

« Intérêt philosophique : ce texte rejoint notre réflexion sur la liberté comme autonomie. On peut le rapprocher de la critique que Paulin Hountondji adresse à l''ethnophilosophie : la philosophie africaine ne doit pas se réduire à la description d''une sagesse collective, mais être un exercice personnel et critique de la pensée. »

« On peut aussi évoquer Senghor, qui distinguait une raison discursive, analytique, qu''il appelait “raison-œil”, et une raison intuitive, participative, qu''il appelait “raison-étreinte”. Cette distinction a été très discutée, notamment parce qu''elle risque d''enfermer les cultures dans des essences fixes. Dans une copie, vous pouvez l''utiliser pour montrer qu''il existe plusieurs manières de connaître, à condition de présenter aussi la critique. »

## 1:17:00 – 1:24:00 · Synthèse

- Analyser chaque mot du sujet et repérer le présupposé.
- Formuler une problématique qui fait apparaître une tension.
- Construire un plan progressif, avec des arguments expliqués et illustrés.
- Dans le commentaire, dégager thème, problème, thèse et structure, puis discuter.
- Mobiliser des auteurs classiques et africains, toujours en les expliquant.

## 1:24:00 – 1:30:00 · Évaluation finale

- Question 1 : Citer les quatre éléments d''une introduction de dissertation. Réponse : amorce, définition des termes, problématique, annonce du plan.
- Question 2 : Que signifie « autonomie » ? Réponse : se donner à soi-même sa propre loi.
- Question 3 : Quel auteur compare l''architecte et l''abeille ? Réponse : Marx.
- Question 4 : Quelle est la différence entre légalité et légitimité ? Réponse : la légalité est la conformité à la loi, la légitimité la conformité à ce qui est juste.
- Question 5 : Que soutient Freud à propos de la conscience ? Réponse : une partie de notre vie psychique, l''inconscient, échappe à la conscience : le moi n''est pas maître dans sa propre maison.

« Merci pour votre participation. À la maison, rédigez entièrement la dissertation à partir du plan construit aujourd''hui, en temps limité. C''est en écrivant que l''on apprend à penser avec rigueur. Bon courage ! »', 'video', 90, false, 60
from public.courses c where c.slug = 'philosophie-terminale'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : atelier de dissertation et de commentaire');

-- Cours : Gérer une station-service
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'formation-station-service', (select id from public.levels where name = 'Formation professionnelle'), 'station-service', 'Gestion de station-service', 'Gérer une station-service', 'Cette formation couvre la gestion quotidienne d''une station-service : pompes et index, cuves et jaugeage, réception des livraisons, rapprochement des stocks et analyse des écarts, boutique et lavage, caisse et relèves d''équipe, ainsi que les principes généraux de sécurité incendie et de protection de l''environnement. Elle s''adresse aux gérants, chefs de piste, pompistes confirmés et investisseurs. Prérequis : calculs de base et pourcentages.', true, 80
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Organisation d''une station-service, pompes et index', '## Objectifs de la leçon

Comprendre l''organisation d''une station-service et le rôle de chaque poste, connaître le fonctionnement d''un distributeur de carburant, et savoir calculer les volumes et montants vendus à partir des relevés d''index.

## Une station-service, plusieurs métiers

Une station-service est un petit commerce à plusieurs activités : la vente de carburants (essence, gasoil, parfois pétrole lampant et gaz en bouteilles), la vente de lubrifiants, la boutique, le lavage et parfois l''entretien rapide (vidange, pneumatiques). Chaque activité a ses règles de gestion, mais le carburant reste en général le cœur du chiffre d''affaires.

L''équipe type comprend :

- le gérant, responsable des résultats, des stocks, de la sécurité et du personnel ;
- le chef de piste, qui encadre les pompistes pendant une équipe ;
- les pompistes, qui servent les clients et encaissent ;
- le caissier ou la caissière de la boutique ;
- les laveurs ;
- éventuellement un gardien de nuit.

La station fonctionne souvent avec deux ou trois équipes par jour. La passation entre équipes, appelée relève, est un moment clé du contrôle (voir leçon 4).

## Le distributeur de carburant

Le distributeur (couramment appelé pompe) aspire le carburant dans une cuve enterrée et le délivre au client par un pistolet. Un distributeur peut avoir plusieurs pistolets, souvent un par produit et par face. Il comporte :

- un mesureur, qui mesure le volume débité ;
- un calculateur, qui affiche le volume et le montant de chaque vente ;
- des totalisateurs, appelés index, qui cumulent tous les volumes débités depuis la mise en service, pistolet par pistolet.

Il existe des index électroniques (lus sur l''afficheur ou le système de gestion) et souvent des index mécaniques de secours. Les deux doivent évoluer de manière cohérente. Les instruments de mesure sont soumis à des vérifications par les services compétents de métrologie ; un distributeur mal étalonné fait perdre de l''argent à la station ou lèse le client.

## Calculer les ventes à partir des index

L''index fonctionne comme le compteur d''eau ou d''électricité :

Volume débité = index de fin − index de début.

Il faut retirer de ce volume les quantités qui ne sont pas des ventes, en particulier les essais de pompe (volume tiré pour un contrôle puis reversé en cuve).

Volume vendu = volume débité − retours en cuve.

Montant théorique des ventes = volume vendu × prix de vente au litre.

Exemple : pistolet gasoil n°2.

- Index début d''équipe : 1 245 380,50 L.
- Index fin d''équipe : 1 247 112,30 L.
- Volume débité : 1 247 112,30 − 1 245 380,50 = 1 731,80 L.
- Essai de pompe reversé en cuve : 10 L.
- Volume vendu : 1 721,80 L.
- Prix : 755 FCFA par litre (prix fictif pour l''exemple ; les prix à la pompe sont fixés par les autorités compétentes et doivent être vérifiés).
- Montant théorique : 1 721,80 × 755 = 1 299 959 FCFA.

On fait ce calcul pour chaque pistolet, puis on totalise par produit.

## Bonnes pratiques de relevé

- Relever les index à heure fixe, à chaque relève, en présence des deux équipes.
- Noter les index avec toutes les décimales, sur une fiche pré-imprimée ou dans le logiciel.
- Vérifier qu''un index n''a jamais diminué : un index qui recule signale une erreur de lecture, une panne ou une manipulation.
- Enregistrer chaque essai de pompe et chaque retour en cuve avec la signature du chef de piste.
- Comparer de temps en temps index électronique et index mécanique.

## Points clés

- La station combine carburant, lubrifiants, boutique et lavage ; chacun se gère séparément.
- Les index sont des totalisateurs cumulés par pistolet.
- Volume vendu = index fin − index début − retours en cuve.
- Montant théorique = volume vendu × prix au litre.
- Des relevés rigoureux à chaque relève sont la base de tous les contrôles.

## Exercices

Exercice 1. Pistolet super n°1 : index début 523 410,20 ; index fin 524 288,70. Un essai de 5 L a été reversé en cuve. Calculez le volume vendu et le montant théorique avec un prix fictif de 890 FCFA par litre.

Exercice 2. Deux pistolets gasoil ont débité 1 200,40 L et 980,60 L pendant une équipe, sans essai. Calculez le volume total et le montant au prix fictif de 755 FCFA par litre.

Exercice 3. Le pompiste relève un index de fin de 98 540,10 alors que l''index de début était 98 612,30. Que faites-vous ?

Exercice 4. Pourquoi faut-il déduire les essais de pompe du volume débité ?

## Corrigé

Exercice 1. Volume débité : 524 288,70 − 523 410,20 = 878,50 L. Volume vendu : 878,50 − 5 = 873,50 L. Montant : 873,50 × 890 = 777 415 FCFA.

Exercice 2. Volume : 1 200,40 + 980,60 = 2 181,00 L. Montant : 2 181 × 755 = 1 646 655 FCFA.

Exercice 3. L''index de fin est inférieur à l''index de début : c''est impossible en fonctionnement normal. Il faut relire les deux index, vérifier qu''il s''agit du bon pistolet, comparer avec l''index mécanique, et en cas de doute bloquer le pistolet et alerter le gérant et le technicien.

Exercice 4. Parce que ce carburant a bien été débité mais a été reversé en cuve : il n''a pas été vendu. Sans cette déduction, on réclamerait au pompiste un montant qu''il n''a pas encaissé et le stock théorique serait faux.', 'texte', 45, true, 10
from public.courses c where c.slug = 'formation-station-service'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Organisation d''une station-service, pompes et index');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cuves, jaugeage et réception des livraisons', '## Objectifs de la leçon

Connaître les éléments d''une cuve de stockage, savoir jauger une cuve et convertir une hauteur en volume avec un barème, et conduire une réception de livraison en contrôlant les quantités et la sécurité.

## Les cuves de stockage

Les carburants sont stockés dans des cuves, le plus souvent enterrées, une ou plusieurs par produit. Une cuve comporte :

- un trou d''homme, pour l''accès et la maintenance ;
- une bouche de remplissage, raccordée lors des livraisons ;
- un évent, qui laisse sortir l''air et les vapeurs pendant le remplissage ;
- un tube de jaugeage, pour mesurer le niveau ;
- souvent une jauge électronique qui affiche en continu la hauteur, le volume et parfois la hauteur d''eau.

Les installations modernes privilégient les cuves à double paroi ou d''autres dispositifs de détection des fuites. Les exigences techniques précises relèvent de la réglementation en vigueur et des prescriptions de l''autorité compétente.

## Le jaugeage manuel

Le jaugeage consiste à mesurer la hauteur de produit dans la cuve à l''aide d''une règle graduée (pige ou réglette) que l''on descend jusqu''au fond. On lit la hauteur mouillée, puis on la convertit en volume grâce au barème de la cuve, un tableau fourni lors de l''installation qui donne le volume pour chaque hauteur.

Règles de bonne pratique :

- jauger à heure fixe, de préférence sans débit en cours ;
- attendre que le produit soit stabilisé, surtout après une livraison ;
- descendre la règle verticalement et la retirer sans la frotter ;
- répéter la mesure en cas de doute ;
- mesurer aussi l''eau au fond de la cuve, avec une pâte détectrice d''eau qui change de couleur au contact de l''eau.

## Lire un barème avec interpolation

Le barème donne souvent les volumes centimètre par centimètre. Si la mesure tombe entre deux valeurs, on interpole.

Exemple : le barème indique 10 200 L à 100 cm et 10 310 L à 101 cm. La jauge indique 100,4 cm.

- Différence pour 1 cm : 10 310 − 10 200 = 110 L.
- Pour 0,4 cm : 0,4 × 110 = 44 L.
- Volume : 10 200 + 44 = 10 244 L.

## Volume et température

Le volume d''un carburant varie avec la température : il se dilate quand il fait chaud et se contracte quand il fait plus frais. C''est pourquoi les transactions entre fournisseurs et distributeurs sont souvent exprimées à une température de référence, avec des tables de correction. Pour la station, retenir le principe : une partie des petits écarts quotidiens peut s''expliquer par la température, mais pas des écarts importants ou répétés dans le même sens.

## La réception d''une livraison

La réception est une opération sensible, à la fois pour la sécurité et pour les quantités. Méthode :

- Avant le dépotage : vérifier le bon de livraison (produit, quantité, compartiments), les scellés du camion-citerne, la place disponible dans la cuve (pour éviter tout débordement) ; jauger la cuve et noter le volume ; arrêter les ventes sur cette cuve si la procédure de la station le prévoit.
- Sécurité : camion moteur coupé et calé, liaison équipotentielle (mise à la terre) raccordée, extincteurs à proximité, zone balisée, interdiction de fumer et de toute flamme, présence permanente du chauffeur et d''un agent de la station.
- Pendant : vérifier que le bon produit va dans la bonne cuve (une erreur de cuve mélange essence et gasoil, avec des conséquences graves pour les moteurs des clients).
- Après : vidange complète des compartiments vérifiée, attente de stabilisation, nouveau jaugeage, calcul du volume reçu, comparaison avec le bon de livraison, réserves écrites en cas d''écart, signature.

Exemple :

- Jauge avant : 8 450 L.
- Jauge après stabilisation : 20 380 L.
- Volume reçu mesuré : 20 380 − 8 450 = 11 930 L.
- Volume du bon de livraison : 12 000 L.
- Écart : 11 930 − 12 000 = −70 L, soit 70 / 12 000 ≈ 0,58 %.

Le gérant note l''écart, vérifie que les compartiments sont bien vides et formule ses réserves selon la procédure convenue avec le fournisseur.

## Points clés

- Une cuve comporte trou d''homme, bouche de remplissage, évent et dispositif de jaugeage.
- Le jaugeage donne une hauteur, convertie en volume par le barème, avec interpolation si besoin.
- La température fait varier les volumes : principe à connaître pour interpréter les petits écarts.
- La réception exige un jaugeage avant et après, des contrôles documentaires et un strict respect de la sécurité.

## Exercices

Exercice 1. Barème : 150 cm = 18 400 L ; 151 cm = 18 520 L. La jauge indique 150,25 cm. Calculez le volume.

Exercice 2. Avant livraison, la cuve contient 5 200 L ; après livraison et stabilisation, 14 150 L. Le bon indique 9 000 L. Calculez le volume reçu, l''écart et le taux d''écart.

Exercice 3. Citez quatre mesures de sécurité pendant un dépotage.

Exercice 4. Pourquoi vérifie-t-on la place disponible dans la cuve avant de commencer ?

## Corrigé

Exercice 1. Différence pour 1 cm : 120 L. Pour 0,25 cm : 30 L. Volume : 18 430 L.

Exercice 2. Reçu : 14 150 − 5 200 = 8 950 L. Écart : 8 950 − 9 000 = −50 L. Taux : 50 / 9 000 ≈ 0,56 %.

Exercice 3. Par exemple : moteur du camion coupé, liaison équipotentielle raccordée, extincteurs à portée de main, zone balisée, interdiction de fumer, présence permanente du chauffeur et d''un agent.

Exercice 4. Pour éviter un débordement : si la quantité livrée dépasse la place libre, le carburant se déverse, avec un risque d''incendie et de pollution.', 'texte', 60, false, 20
from public.courses c where c.slug = 'formation-station-service'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cuves, jaugeage et réception des livraisons');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Rapprochement des stocks et analyse des écarts', '## Objectifs de la leçon

Savoir calculer le stock théorique d''une cuve, le comparer au stock physique jaugé, calculer et interpréter les écarts journaliers et cumulés, et rechercher méthodiquement leurs causes.

## Le principe du rapprochement

Le rapprochement compare deux mesures indépendantes du stock :

- le stock théorique, calculé à partir des mouvements : ce qui devrait se trouver dans la cuve ;
- le stock physique, mesuré par jaugeage : ce qui s''y trouve réellement.

Stock théorique = stock physique initial + réceptions − ventes (index) + retours en cuve éventuels non déduits.

Pour simplifier, si les ventes sont déjà calculées nettes des essais reversés, on écrit : stock théorique = stock initial + réceptions − ventes nettes.

Écart = stock physique − stock théorique.

Un écart négatif est un manquant ; un écart positif, un excédent.

Taux d''écart = écart / ventes de la période.

On rapporte l''écart aux ventes plutôt qu''au stock, car c''est l''activité qui génère les occasions d''erreur ou de perte.

## Exemple journalier

Cuve de super, une journée :

- stock initial jaugé : 15 200 L ;
- réception : 10 000 L (volume mesuré) ;
- ventes nettes selon les index : 6 850 L ;
- stock théorique : 15 200 + 10 000 − 6 850 = 18 350 L ;
- stock physique jaugé le soir : 18 290 L ;
- écart : 18 290 − 18 350 = −60 L ;
- taux : 60 / 6 850 ≈ 0,88 % de manquant.

## Lire les écarts dans la durée

Un écart isolé ne veut pas dire grand-chose : erreur de lecture de jauge, effet de température, débit en cours au moment du jaugeage. Ce qui compte, c''est la tendance. On tient donc un tableau journalier avec l''écart du jour et l''écart cumulé.

Exemple sur une semaine (cuve de gasoil) : écarts journaliers de −12, −15, +8, −20, −18, −25 et −22 litres.

- Écart cumulé : −104 L.
- Ventes de la semaine : 42 000 L.
- Taux cumulé : 104 / 42 000 ≈ 0,25 %.
- Six jours sur sept sont négatifs, et les manquants tendent à grossir en fin de semaine.

Interprétation : des écarts aléatoires, dus aux erreurs de mesure, devraient être tantôt positifs, tantôt négatifs, et se compenser à peu près dans le cumul. Une série presque toujours négative et croissante signale une cause réelle. La station fixe des seuils internes de tolérance avec son fournisseur ou son réseau ; au-delà, l''enquête est obligatoire.

## Rechercher les causes

On procède du plus simple au plus grave.

- Erreurs de calcul ou de saisie : index mal recopiés, essai non déclaré, livraison saisie dans la mauvaise cuve.
- Erreurs de mesure : jaugeage mal fait, barème inadapté, jauge électronique déréglée.
- Effets physiques : température, évaporation (surtout pour l''essence).
- Distributeur déréglé : il débite plus que ce qu''il affiche ; un contrôle avec une jauge étalon (mesure de capacité contrôlée) le révèle.
- Livraison incomplète : compartiment du camion non entièrement vidé.
- Fuite de cuve ou de tuyauterie : cause grave, à traiter en urgence pour des raisons de sécurité et d''environnement ; un écart négatif persistant, même la nuit sans vente, est un signal d''alarme.
- Vol ou détournement : prélèvements non enregistrés, ventes non saisies.

Un outil très utile : le test de nuit. On jauge la cuve le soir après fermeture des ventes sur ce produit, puis le matin avant ouverture. Sans vente ni livraison, le niveau ne devrait pas baisser, hors effet de température. Une baisse nette et répétée oriente vers une fuite ou un prélèvement.

## Valoriser l''écart

Pour mesurer l''enjeu, on valorise l''écart au prix de vente ou au prix d''achat selon la politique de la station. Avec un prix fictif de 755 FCFA par litre, le cumul hebdomadaire de −104 L représente 78 520 FCFA. Sur un an, si la tendance se maintient, l''enjeu dépasse 4 millions de FCFA.

## Points clés

- Stock théorique = stock initial + réceptions − ventes nettes.
- Écart = physique − théorique ; taux d''écart rapporté aux ventes.
- On lit les écarts en tendance et en cumul, pas jour par jour.
- On cherche les causes du plus simple (saisie) au plus grave (fuite, vol).
- Le test de nuit aide à distinguer fuite et erreurs de vente.

## Exercices

Exercice 1. Stock initial jaugé : 9 800 L. Réception : 6 000 L. Ventes nettes : 4 300 L. Stock jaugé le soir : 11 460 L. Calculez le stock théorique, l''écart et le taux d''écart.

Exercice 2. Écarts d''une semaine sur une cuve de super : +10, −8, +5, −12, +6, −4, +3 litres. Calculez l''écart cumulé et commentez.

Exercice 3. Valorisez un manquant cumulé de 104 L au prix fictif de 890 FCFA par litre.

Exercice 4. Une cuve de gasoil perd 15 à 20 L chaque nuit alors qu''aucune vente n''a lieu. Quelle hypothèse privilégiez-vous et que faites-vous ?

## Corrigé

Exercice 1. Théorique : 9 800 + 6 000 − 4 300 = 11 500 L. Écart : 11 460 − 11 500 = −40 L. Taux : 40 / 4 300 ≈ 0,93 %.

Exercice 2. Cumul : 10 − 8 + 5 − 12 + 6 − 4 + 3 = 0 L. Les écarts alternent et se compensent : ils relèvent des aléas de mesure. Pas d''anomalie particulière.

Exercice 3. 104 × 890 = 92 560 FCFA.

Exercice 4. Hypothèse de fuite ou de prélèvement nocturne, puisque l''effet des ventes est exclu. Il faut alerter immédiatement le gérant et le propriétaire de l''installation, faire contrôler l''étanchéité de la cuve et des tuyauteries par un technicien qualifié, renforcer la surveillance de nuit et appliquer les mesures de sécurité et d''environnement prévues.', 'texte', 60, false, 30
from public.courses c where c.slug = 'formation-station-service'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Rapprochement des stocks et analyse des écarts');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Boutique, lavage, caisse et relèves d''équipe', '## Objectifs de la leçon

Savoir organiser une relève d''équipe complète, rapprocher les ventes théoriques et les encaissements, analyser un écart de caisse, et suivre les activités annexes (boutique et lavage) avec des indicateurs simples.

## La relève d''équipe

La relève est la passation entre l''équipe sortante et l''équipe entrante. Elle délimite les responsabilités : ce qui s''est passé avant la relève relève de l''équipe sortante, ce qui se passe après relève de l''équipe entrante. Une relève bâclée rend impossible l''identification d''un écart.

Déroulement :

- relever les index de chaque pistolet, en présence des deux équipes et du chef de piste ;
- noter les essais et retours en cuve de l''équipe ;
- jauger les cuves si la procédure le prévoit à chaque relève ;
- compter la caisse de chaque pompiste : espèces, tickets de paiement par carte, reçus de paiement mobile, bons clients ;
- remettre et vérifier le fonds de caisse de l''équipe entrante ;
- remplir la fiche de relève, signée par le sortant, l''entrant et le chef de piste ;
- déposer la recette au coffre avec un bordereau.

## Rapprocher ventes et encaissements

Ventes théoriques en valeur = somme, pour chaque produit, du volume vendu × prix au litre.

Encaissements = espèces (hors fonds de caisse) + paiements par carte + paiements mobiles + bons clients et ventes à crédit autorisées.

Écart de caisse = encaissements − ventes théoriques.

Exemple (prix fictifs) :

- gasoil : 1 721,80 L × 755 FCFA = 1 299 959 FCFA ;
- super : 940,50 L × 890 FCFA = 837 045 FCFA ;
- ventes théoriques : 2 137 004 FCFA.

Encaissements :

- espèces : 1 412 500 FCFA ;
- cartes : 380 000 FCFA ;
- paiement mobile : 214 000 FCFA ;
- bons clients : 130 000 FCFA ;
- total : 2 136 500 FCFA.

Écart : 2 136 500 − 2 137 004 = −504 FCFA, un petit manquant, souvent lié aux arrondis de rendu de monnaie. Les règles de traitement des écarts (tolérance, imputation) doivent être écrites, connues de tous et conformes au règlement intérieur et au droit du travail applicable.

Points de vigilance :

- un bon client n''est accepté que s''il est signé par une personne habilitée du client et rattaché à un compte autorisé ;
- les paiements mobiles se vérifient sur le relevé de l''opérateur, pas seulement sur une capture d''écran ;
- les ventes à crédit non autorisées sont interdites.

## La boutique

La boutique vend lubrifiants, boissons, produits alimentaires, accessoires automobiles. Elle se gère comme un commerce de détail :

- réception des marchandises contrôlée contre le bon de livraison ;
- étiquetage des prix ;
- inventaires réguliers, en commençant par les articles de forte valeur ;
- suivi des dates de péremption (méthode FEFO).

Deux indicateurs de base :

- marge brute = chiffre d''affaires hors taxes − coût d''achat des marchandises vendues ;
- taux de marque = marge / chiffre d''affaires ; taux de marge = marge / coût d''achat.

Exemple : chiffre d''affaires du mois 3 500 000 FCFA, coût d''achat des marchandises vendues 2 625 000 FCFA. Marge : 875 000 FCFA. Taux de marque : 875 000 / 3 500 000 = 25 %. Taux de marge : 875 000 / 2 625 000 ≈ 33,3 %.

## Le lavage

Le lavage se suit avec un ticket ou une fiche numérotée par prestation. Indicateurs utiles :

- nombre de lavages par jour et par type ;
- chiffre d''affaires du lavage ;
- consommation de produits (shampoing, cire) et d''eau par lavage.

Exemple : 320 lavages dans le mois au prix fictif de 2 000 FCFA, soit 640 000 FCFA. Produits consommés : 96 000 FCFA, soit 300 FCFA par lavage. Si ce coût monte brusquement à 450 FCFA sans changement de prestation, il faut vérifier les dosages et les sorties de produits.

## Points clés

- La relève délimite les responsabilités : index, essais, jaugeage, caisse, signatures.
- Écart de caisse = encaissements − ventes théoriques en valeur.
- Bons clients et paiements mobiles se vérifient sur pièces.
- La boutique se pilote par la marge et les inventaires ; le lavage par le nombre de prestations et le coût des produits par lavage.

## Exercices

Exercice 1. Ventes d''une équipe : gasoil 1 500 L à 755 FCFA ; super 800 L à 890 FCFA (prix fictifs). Encaissements : espèces 1 240 000 ; cartes 300 000 ; mobile 180 000 ; bons 125 000 FCFA. Calculez l''écart de caisse.

Exercice 2. Boutique : chiffre d''affaires 2 000 000 FCFA, coût d''achat des marchandises vendues 1 500 000 FCFA. Calculez la marge, le taux de marque et le taux de marge.

Exercice 3. Lavage : 250 lavages à 2 500 FCFA (prix fictif) et 87 500 FCFA de produits. Calculez le chiffre d''affaires et le coût des produits par lavage.

Exercice 4. Pourquoi les index doivent-ils être relevés en présence des deux équipes ?

## Corrigé

Exercice 1. Ventes : 1 500 × 755 = 1 132 500 ; 800 × 890 = 712 000 ; total 1 844 500 FCFA. Encaissements : 1 240 000 + 300 000 + 180 000 + 125 000 = 1 845 000 FCFA. Écart : +500 FCFA (petit excédent).

Exercice 2. Marge : 500 000 FCFA. Taux de marque : 500 000 / 2 000 000 = 25 %. Taux de marge : 500 000 / 1 500 000 ≈ 33,3 %.

Exercice 3. Chiffre d''affaires : 250 × 2 500 = 625 000 FCFA. Coût par lavage : 87 500 / 250 = 350 FCFA.

Exercice 4. Pour que les deux équipes reconnaissent le même point de départ et de fin : les ventes et donc les responsabilités de chacune sont ainsi clairement séparées, et aucun écart ne peut être contesté ensuite.', 'texte', 60, false, 40
from public.courses c where c.slug = 'formation-station-service'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Boutique, lavage, caisse et relèves d''équipe');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sécurité incendie et environnement : les principes généraux', '## Objectifs de la leçon

Comprendre les risques d''incendie propres à une station-service, connaître les principes de prévention et d''intervention, savoir réagir face à un déversement et appliquer les bonnes pratiques de protection de l''environnement. Cette leçon présente des principes généraux : les obligations précises relèvent de la réglementation en vigueur et des prescriptions des autorités compétentes et des services de secours.

## Pourquoi le risque est élevé

Les carburants, et surtout l''essence, dégagent des vapeurs inflammables, plus lourdes que l''air, qui peuvent s''accumuler au ras du sol et s''enflammer au contact d''une source d''ignition. Une station réunit en permanence du combustible, de l''air et de nombreuses sources possibles d''inflammation : moteurs, cigarettes, étincelles électriques, électricité statique.

## Le triangle du feu

Un feu a besoin de trois éléments : un combustible, un comburant (l''oxygène de l''air) et une source d''énergie (flamme, étincelle, chaleur). Supprimer un seul de ces éléments empêche ou arrête le feu. La prévention consiste surtout à supprimer les sources d''énergie et à limiter les vapeurs ; l''extinction consiste à étouffer, refroidir ou retirer le combustible.

## Les classes de feux et les extincteurs

On distingue couramment :

- classe A : feux de matériaux solides (bois, papier, tissus, pneus) ;
- classe B : feux de liquides ou solides liquéfiables (essence, gasoil, huiles) ;
- classe C : feux de gaz (gaz en bouteille) ;
- classe D : feux de métaux.

Les feux d''origine électrique demandent un agent extincteur adapté (par exemple le dioxyde de carbone) et la coupure du courant. Dans une station, les extincteurs à poudre polyvalente et à dioxyde de carbone sont fréquents. On ne projette jamais d''eau en jet sur un feu de carburant : elle disperse le liquide enflammé.

Règles :

- extincteurs en nombre suffisant, adaptés, visibles, accessibles et vérifiés périodiquement ;
- personnel formé à leur utilisation, avec des exercices réguliers ;
- bac à sable ou absorbant disponible près des pistes et de la zone de dépotage.

## La prévention au quotidien

- Interdiction de fumer et de toute flamme sur l''ensemble de la piste, affichée et appliquée.
- Moteur coupé pendant le ravitaillement.
- Usage du téléphone selon les consignes de l''exploitant.
- Interdiction de remplir des récipients non adaptés.
- Bouton d''arrêt d''urgence connu de tous et accessible, qui coupe l''alimentation des distributeurs.
- Installations électriques adaptées aux zones à risque et entretenues par des techniciens qualifiés.
- Dépotage selon la procédure (leçon 2), avec liaison équipotentielle.
- Ordre et propreté : pas de chiffons imbibés qui traînent, pas de stockage de produits inflammables près des sources de chaleur.

## Réagir en cas d''incendie

Le plan d''urgence de la station doit être écrit, affiché et exercé. Ses grandes étapes :

- donner l''alerte et appeler les secours ;
- actionner l''arrêt d''urgence ;
- attaquer un début de feu avec l''extincteur adapté, seulement si c''est sans danger ;
- évacuer les clients et le personnel vers le point de rassemblement ;
- empêcher l''accès des véhicules ;
- accueillir et guider les secours.

## Protéger l''environnement

Une station peut polluer le sol, les eaux souterraines et les réseaux d''assainissement. Les principes :

- prévenir les fuites : surveillance des écarts de stock (leçon 3), contrôles d''étanchéité, entretien des tuyauteries ;
- collecter les eaux de ruissellement de la piste et du lavage vers un séparateur d''hydrocarbures, entretenu et vidangé régulièrement par un prestataire habilité ;
- collecter les huiles usagées, filtres et emballages souillés dans des contenants dédiés, remis à une filière autorisée ;
- traiter tout déversement immédiatement avec des absorbants, puis éliminer les absorbants souillés comme déchets dangereux ;
- limiter la consommation d''eau du lavage.

## Réagir à un déversement

- Arrêter la fuite si possible (fermer le pistolet, la vanne, arrêter le dépotage).
- Supprimer les sources d''ignition (arrêt d''urgence, moteurs coupés, éloigner le public).
- Contenir le produit avec du sable ou des absorbants pour l''empêcher d''atteindre les avaloirs.
- Récupérer et stocker les absorbants souillés.
- Prévenir le gérant et, selon l''ampleur, les autorités et services compétents.
- Analyser la cause et corriger.

## Points clés

- Les vapeurs de carburant sont inflammables et s''accumulent au sol.
- Triangle du feu : combustible, comburant, énergie.
- Extincteurs adaptés, vérifiés, et personnel formé ; jamais de jet d''eau sur un feu de carburant.
- Arrêt d''urgence et plan d''urgence connus et exercés.
- Séparateur d''hydrocarbures, collecte des déchets et réaction rapide aux déversements protègent l''environnement.

## Exercices

Exercice 1. Nommez les trois éléments du triangle du feu et donnez un exemple de chacun dans une station-service.

Exercice 2. Pourquoi ne faut-il pas utiliser un jet d''eau sur un feu d''essence ?

Exercice 3. Un client renverse environ 5 litres de gasoil sur la piste. Décrivez les actions à mener dans l''ordre.

Exercice 4. Citez trois déchets dangereux produits par une station et leur mode de gestion.

## Corrigé

Exercice 1. Combustible : essence, gasoil ou leurs vapeurs. Comburant : l''oxygène de l''air. Énergie : cigarette, étincelle électrique, moteur chaud, électricité statique.

Exercice 2. Le carburant, plus léger que l''eau et non miscible, flotte et se disperse avec le jet : le feu s''étend au lieu de s''éteindre.

Exercice 3. Arrêter la distribution sur ce pistolet ; éloigner les personnes et supprimer les sources d''ignition (moteurs coupés, pas de flamme) ; contenir et absorber le gasoil avec du sable ou un absorbant en évitant qu''il atteigne les avaloirs ; récupérer les absorbants dans un contenant dédié aux déchets souillés ; informer le gérant et consigner l''incident.

Exercice 4. Par exemple : huiles usagées, filtres et absorbants souillés, boues du séparateur d''hydrocarbures. Ils sont stockés dans des contenants dédiés et remis à une filière ou un prestataire autorisé.', 'texte', 45, false, 50
from public.courses c where c.slug = 'formation-station-service'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sécurité incendie et environnement : les principes généraux');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : une journée de gestion dans une station-service', '## Fiche du cours vidéo

Durée : 1h30. Public : gérants de station, chefs de piste, pompistes confirmés, investisseurs et étudiants en formation professionnelle.

Objectifs : calculer les ventes par les index ; jauger une cuve et réceptionner une livraison ; rapprocher stocks théoriques et physiques ; réaliser une relève et analyser un écart de caisse ; appliquer les principes de sécurité incendie et de protection de l''environnement.

Matériel : diaporama, tableau blanc, calculatrice, photos d''un distributeur et d''une règle de jaugeage, extrait de barème de cuve, modèles de fiche de relève et de tableau de rapprochement.

Prérequis : avoir suivi les leçons 1 à 5, ou travailler en station-service.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture : la station comme une entreprise

Texte du formateur : « Bonjour à tous. Une station-service, ce n''est pas seulement des pompes : c''est une entreprise qui manipule chaque jour des milliers de litres d''un produit cher et dangereux, beaucoup d''argent liquide et une équipe qui tourne en continu. Aujourd''hui, nous allons vivre une journée entière dans une station fictive, la station du Rond-Point, située à la sortie d''une ville de l''intérieur du pays, avec sa gérante, Aïssatou, et ses deux équipes. »

Question posée : « D''après vous, où se cachent les pertes d''argent dans une station ? » Réponses attendues : écarts de cuve, écarts de caisse, livraisons incomplètes, vols en boutique, gaspillage au lavage.

## 05:00 – 17:00 · 6 h 00 : la relève du matin et les index

Texte du formateur : « Il est 6 heures. L''équipe de nuit cède la place à l''équipe du matin. Première action : relever les index de chaque pistolet, ensemble. Pourquoi ensemble ? Parce que l''index de fin de l''un est l''index de début de l''autre : si l''on n''est pas d''accord ce matin, on ne pourra jamais savoir qui doit quoi ce soir. »

Visuel : photo d''un afficheur de distributeur, avec les zones montant, volume, prix et totalisateur.

Texte du formateur : « Prenons le pistolet gasoil n°2. Index de début : 1 245 380,50. À la relève suivante : 1 247 112,30. Volume débité : 1 731,80 litres. Le technicien a fait un essai de 10 litres reversé en cuve : ventes nettes, 1 721,80 litres. Au prix fictif de 755 FCFA, le montant théorique est de 1 299 959 FCFA. »

Texte du formateur : « Une règle simple : un index ne recule jamais. Si l''index du soir est plus petit que celui du matin, c''est une erreur de lecture, une panne ou une manipulation. On bloque, on vérifie, on appelle le technicien. »

## 17:00 – 30:00 · 10 h 00 : la livraison et le jaugeage

Texte du formateur : « Il est 10 heures, le camion-citerne arrive avec 12 000 litres de super. Aïssatou ne laisse pas commencer avant d''avoir fait quatre choses : vérifier le bon de livraison, vérifier les scellés, jauger la cuve et vérifier qu''il y a assez de place. Côté sécurité : moteur coupé, camion calé, liaison équipotentielle branchée, extincteurs prêts, zone balisée, personne ne fume. »

Visuel : schéma d''une cuve enterrée avec bouche de remplissage, évent, tube de jaugeage, et photo d''une règle avec pâte détectrice d''eau.

Texte du formateur : « Jaugeage avant : 8 450 litres. Après dépotage et stabilisation : 20 380 litres. Reçu mesuré : 11 930 litres. Le bon disait 12 000 : écart de 70 litres, environ 0,58 %. Aïssatou vérifie que les compartiments sont vides et note ses réserves selon la procédure convenue avec le fournisseur. »

Texte du formateur : « Rappel sur le barème : si la règle indique 100,4 cm, entre 100 cm à 10 200 litres et 101 cm à 10 310 litres, on ajoute 0,4 fois 110, soit 44 litres : 10 244 litres. »

Question posée : « Que peut-il se passer si l''on dépote du gasoil dans la cuve de super ? » Réponse : un mélange impropre qui peut endommager les moteurs des clients, la cuve à vidanger, des pertes importantes. D''où le contrôle du produit et de la cuve avant de raccorder.

## 30:00 – 42:00 · 14 h 00 : la relève et la caisse

Texte du formateur : « Il est 14 heures, relève de l''après-midi. On relève les index, on compte la caisse de chaque pompiste. Pour l''équipe du matin : 1 721,80 litres de gasoil à 755 FCFA et 940,50 litres de super à 890 FCFA, prix fictifs. Ventes théoriques : 2 137 004 FCFA. »

Texte du formateur : « Encaissements : espèces 1 412 500, cartes 380 000, paiement mobile 214 000, bons clients 130 000. Total : 2 136 500 FCFA. Écart : moins 504 FCFA. C''est un petit manquant, souvent dû aux arrondis de monnaie. La règle de traitement doit être écrite et connue de tous à l''avance. »

Visuel : fiche de relève remplie, avec les trois signatures.

Texte du formateur : « Vigilance sur les bons clients : ils doivent être signés par une personne habilitée et rattachés à un compte autorisé. Et un paiement mobile se vérifie sur le relevé de l''opérateur, pas sur une capture d''écran montrée par le client. »

## 42:00 – 50:00 · Pause interactive et quiz

Texte du formateur : « Pause active. Quatre questions. »

- Question 1 : index début 523 410,20, fin 524 288,70, essai 5 L. Volume vendu ?
- Question 2 : jauge avant 5 200 L, après 14 150 L, bon de livraison 9 000 L. Écart ?
- Question 3 : barème 150 cm = 18 400 L et 151 cm = 18 520 L. Volume pour 150,25 cm ?
- Question 4 : vrai ou faux, on peut commencer un dépotage moteur tournant si le chauffeur reste à côté ?

Correction : 1) 873,50 L ; 2) 8 950 − 9 000 = −50 L ; 3) 18 430 L ; 4) faux, le moteur doit être coupé.

## 50:00 – 1:04:00 · 22 h 00 : le rapprochement des stocks

Texte du formateur : « Il est 22 heures. Aïssatou fait le rapprochement du jour. Cuve de super : stock initial 15 200 litres, réception 10 000, ventes nettes 6 850. Stock théorique : 18 350. Jauge du soir : 18 290. Écart : moins 60 litres, soit 0,88 % des ventes. »

Texte du formateur : « Faut-il s''inquiéter ? Pas sur un seul jour. Regardons la cuve de gasoil sur la semaine : moins 12, moins 15, plus 8, moins 20, moins 18, moins 25, moins 22. Cumul : moins 104 litres. Six jours sur sept sont négatifs et les manquants grossissent. Des erreurs de mesure se compenseraient ; ici, il y a une cause réelle. »

Visuel : graphique de l''écart cumulé qui descend régulièrement.

Texte du formateur : « On cherche du plus simple au plus grave : erreurs de saisie, jaugeage mal fait, distributeur déréglé, livraison incomplète, puis fuite ou vol. Un outil précieux : le test de nuit. On jauge le soir, on ne vend rien sur cette cuve, on jauge le matin. Si le niveau baisse nettement et régulièrement, on soupçonne une fuite ou un prélèvement, et on fait intervenir un technicien qualifié sans attendre. »

Texte du formateur : « Chiffrons l''enjeu : 104 litres à 755 FCFA, c''est 78 520 FCFA par semaine, plus de 4 millions par an si rien ne change. »

## 1:04:00 – 1:12:00 · Boutique et lavage

Texte du formateur : « La boutique de la station a fait 3 500 000 FCFA de chiffre d''affaires ce mois-ci, pour un coût d''achat de 2 625 000. Marge : 875 000. Taux de marque : 25 %. Taux de marge : environ 33,3 %. Le lavage a réalisé 320 prestations à 2 000 FCFA, prix fictif, et consommé 96 000 FCFA de produits, soit 300 FCFA par lavage. Si ce chiffre grimpe sans raison, on vérifie les dosages et les sorties de produits. »

Visuel : mini-tableau de bord boutique et lavage.

## 1:12:00 – 1:22:00 · Sécurité incendie et environnement

Texte du formateur : « Terminons par l''essentiel. Les vapeurs d''essence sont inflammables et plus lourdes que l''air : elles traînent au sol. Le triangle du feu nous rappelle qu''il faut un combustible, un comburant et une source d''énergie. Notre travail : supprimer les sources d''énergie. Interdiction de fumer, moteurs coupés, installations électriques adaptées, liaison équipotentielle au dépotage. »

Texte du formateur : « En cas de feu : alerte, arrêt d''urgence, extincteur adapté si c''est sans danger, évacuation, accueil des secours. Jamais de jet d''eau sur un feu de carburant. Côté environnement : séparateur d''hydrocarbures entretenu, huiles usagées et absorbants souillés remis à une filière autorisée, et réaction immédiate à tout déversement : arrêter, sécuriser, contenir, récupérer, signaler. Ce sont des principes généraux ; les obligations précises sont celles de la réglementation en vigueur et des prescriptions des autorités et des services de secours. »

Visuel : pictogrammes de sécurité, schéma du triangle du feu, emplacement de l''arrêt d''urgence et du point de rassemblement.

Question posée : « Dans votre station, chacun sait-il où se trouve le bouton d''arrêt d''urgence ? Quand avez-vous fait le dernier exercice ? »

## 1:22:00 – 1:30:00 · Synthèse et évaluation finale

Texte du formateur : « Récapitulons la journée d''Aïssatou. Les index mesurent les ventes. Le jaugeage mesure le stock. La réception se fait avec un jaugeage avant et après, et en sécurité. Le rapprochement compare théorique et physique, et se lit en tendance. La relève sépare les responsabilités et vérifie la caisse. Et la sécurité passe avant tout. »

Évaluation finale, cinq questions :

- Question 1 : index début 98 000,00 et fin 99 250,00, aucun essai, prix fictif 755 FCFA. Montant théorique ? Réponse : 1 250 × 755 = 943 750 FCFA.
- Question 2 : stock initial 9 800 L, réception 6 000 L, ventes 4 300 L, jauge 11 460 L. Écart ? Réponse : −40 L.
- Question 3 : ventes théoriques 1 844 500 FCFA, encaissements 1 845 000 FCFA. Écart de caisse ? Réponse : +500 FCFA.
- Question 4 : chiffre d''affaires boutique 2 000 000 FCFA, marge 500 000 FCFA. Taux de marque ? Réponse : 25 %.
- Question 5 : citez les trois éléments du triangle du feu. Réponse : combustible, comburant, source d''énergie.

Texte du formateur : « Votre mission : reprenez les écarts de cuve de votre station sur le dernier mois, calculez le cumul et dites-moi s''ils se compensent ou s''ils racontent une histoire. Merci et à bientôt. »', 'video', 90, false, 60
from public.courses c where c.slug = 'formation-station-service'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : une journée de gestion dans une station-service');

-- Cours : Méthodologie de la recherche doctorale : de la problématique à la soutenance
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'methodologie-recherche-doctorat', (select id from public.levels where name = 'Doctorat'), null, 'Méthodologie de la recherche', 'Méthodologie de la recherche doctorale : de la problématique à la soutenance', 'Ce séminaire doctoral accompagne la construction d''une thèse : question de recherche et revue de littérature, posture épistémologique, méthodes qualitatives, quantitatives et mixtes, collecte et analyse des données, rédaction, éthique et soutenance. Il s''appuie sur des exemples de terrains africains. Il s''adresse aux doctorants et aux étudiants de Master recherche ayant un thème de thèse, même provisoire.', true, 80
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'De la question de départ à la problématique : revue de littérature et hypothèses', '## Objectifs de la leçon

- Passer d''un thème de recherche à une question de recherche précise et à une problématique.
- Conduire une revue de littérature systématique et critique.
- Formuler des objectifs et, le cas échéant, des hypothèses.

## 1. Du thème à la question de départ

Une thèse de doctorat est une contribution originale à la connaissance. Elle commence rarement par une question claire : on part d''un thème (par exemple « la microfinance et les femmes au Sénégal »), trop large pour être étudié. Le travail des premiers mois consiste à le resserrer.

Une bonne question de départ, selon la tradition des manuels de méthode en sciences sociales (Quivy et Van Campenhoudt), possède trois qualités :

- Clarté : elle est précise, univoque et concise.
- Faisabilité : elle peut être traitée avec les ressources, le temps et l''accès au terrain dont dispose le doctorant.
- Pertinence : elle vise à comprendre ou expliquer, et non à juger ; elle s''inscrit dans un débat scientifique.

Exemple : « La microfinance est-elle bonne pour les femmes ? » est vague et normative. Une meilleure version : « Dans quelle mesure l''accès au crédit de groupe modifie-t-il la participation des commerçantes de Kaolack aux décisions économiques du ménage ? ».

## 2. La revue de littérature

La revue de littérature n''est pas un résumé de lectures : c''est une analyse critique et structurée de l''état des connaissances, qui fait apparaître ce que l''on sait, les débats, les limites et les zones d''ombre. Elle justifie la question de recherche et positionne la contribution.

Méthode :

- Définir les mots-clés et leurs synonymes, en français et en anglais (la majorité des publications est en anglais).
- Interroger les bases de données bibliographiques et les archives ouvertes, ainsi que la littérature grise (rapports d''organismes, thèses soutenues dans les universités africaines, documents des instituts nationaux de statistique et des banques centrales).
- Fixer des critères d''inclusion et d''exclusion (période, langue, type d''étude, zone géographique).
- Lire d''abord les titres et résumés, puis les textes retenus en entier.
- Construire une grille de lecture : auteurs, année, question, théorie, terrain, méthode, résultats, limites.
- Organiser la synthèse par thèmes ou par débats, et non par auteur.
- Gérer les références avec un logiciel bibliographique dès le début.

Pour certaines questions, on réalise une revue systématique, avec un protocole explicite et reproductible, voire une méta-analyse qui combine statistiquement les résultats d''études comparables.

Une attention particulière doit être portée aux travaux produits en Afrique et sur l''Afrique : ils sont souvent moins visibles dans les grandes bases internationales, mais indispensables pour contextualiser la recherche.

## 3. De la revue à la problématique

La problématique est la construction intellectuelle qui relie la question de recherche à un cadre théorique et à un « gap » identifié dans la littérature. Elle répond à : quel problème scientifique précis ? pourquoi est-il important ? sous quel angle théorique l''aborde-t-on ? que va-t-on apporter de nouveau ?

Types de contributions : combler un manque empirique (un terrain jamais étudié), tester une théorie dans un nouveau contexte, réconcilier des résultats contradictoires, proposer un nouveau concept ou un nouveau modèle, améliorer une méthode.

## 4. Objectifs et hypothèses

- Objectif général : ce que la recherche vise globalement.
- Objectifs spécifiques : déclinaisons opérationnelles, mesurables.
- Hypothèses : réponses provisoires à la question, formulées de façon testable dans une démarche hypothético-déductive (quantitative le plus souvent). Une hypothèse relie des concepts opérationnalisés en variables.
- Propositions ou questions de recherche secondaires : dans une démarche qualitative exploratoire, on parle plutôt de propositions ou de questions qui guident l''enquête.

Exemple : objectif général : analyser l''effet du crédit de groupe sur l''autonomie économique des commerçantes. Hypothèse H1 : l''ancienneté dans un groupe de crédit est positivement associée à la participation aux décisions d''investissement du ménage. Variables : ancienneté (en cycles de prêt), indice de participation aux décisions (construit à partir d''un questionnaire).

## 5. Le cadre conceptuel

On définit chaque concept, ses dimensions et ses indicateurs. Par exemple, « autonomie économique » peut comprendre la maîtrise des revenus, la participation aux décisions et la liberté de déplacement pour le commerce ; chaque dimension est mesurée par des indicateurs (questions précises). Ce passage du concept à l''indicateur est appelé opérationnalisation.

## Points clés

- Une bonne question de départ est claire, faisable et pertinente.
- La revue de littérature est critique et organisée par thèmes ; elle identifie un manque.
- La problématique relie question, théorie et contribution attendue.
- Les concepts sont opérationnalisés en dimensions et indicateurs.

## Exercices

- Exercice 1 : Améliorez la question : « Comment améliorer l''agriculture au Sénégal ? ».
- Exercice 2 : Proposez cinq critères d''inclusion pour une revue de littérature sur l''adoption du paiement mobile par les petites entreprises en Afrique de l''Ouest.
- Exercice 3 : Formulez une hypothèse testable à partir de la question : « L''usage de la monnaie électronique favorise-t-il l''épargne des ménages ruraux ? ».
- Exercice 4 : Opérationnalisez le concept de « performance d''une PME » en trois dimensions et deux indicateurs par dimension.

## Corrigé

- Exercice 1 : Par exemple : « Quels facteurs expliquent l''adoption des semences certifiées de riz par les producteurs de la vallée du fleuve Sénégal ? ». La question est précise, explicative et faisable.
- Exercice 2 : Publications de 2010 à aujourd''hui ; articles évalués par les pairs, thèses et rapports institutionnels ; études portant sur au moins un pays d''Afrique de l''Ouest ; population de micro, petites ou moyennes entreprises ; études empiriques mesurant l''adoption ou l''usage.
- Exercice 3 : H1 : les ménages ruraux qui utilisent la monnaie électronique depuis au moins un an ont une probabilité plus élevée de détenir une épargne formelle ou semi-formelle que les ménages non utilisateurs, à caractéristiques socio-économiques comparables.
- Exercice 4 : Financière : évolution du chiffre d''affaires, rentabilité. Commerciale : part de marché locale, fidélité des clients. Sociale : nombre d''emplois créés, taux de rotation du personnel.', 'texte', 55, true, 10
from public.courses c where c.slug = 'methodologie-recherche-doctorat'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'De la question de départ à la problématique : revue de littérature et hypothèses');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Épistémologie et posture du chercheur', '## Objectifs de la leçon

- Comprendre les grands paradigmes épistémologiques et leurs implications.
- Distinguer démarches déductive, inductive et abductive.
- Justifier sa posture de chercheur et les critères de validité de sa recherche.

## 1. Pourquoi l''épistémologie ?

L''épistémologie s''interroge sur la nature de la connaissance produite : qu''est-ce que la réalité étudiée (question ontologique) ? comment peut-on la connaître (question épistémique) ? par quelles méthodes (question méthodologique) ? quelle valeur accorder aux résultats ? Dans une thèse, le jury attend que le doctorant explicite sa posture et montre sa cohérence avec la question, les méthodes et les critères de validité. Ce n''est pas un exercice décoratif : la posture conditionne la manière de conduire et de juger la recherche.

## 2. Les principaux paradigmes

- Positivisme (et post-positivisme) : la réalité existe indépendamment du chercheur et obéit à des régularités que l''on peut découvrir. On vise l''explication, souvent causale, par des hypothèses testées sur des données mesurées. Le post-positivisme admet que la connaissance est toujours provisoire et imparfaite (falsificationnisme de Popper : une théorie scientifique doit pouvoir être réfutée).
- Interprétativisme : la réalité sociale est faite de significations que les acteurs donnent à leurs actions. On vise la compréhension, en reconstruisant le sens vécu par les acteurs, par des méthodes qualitatives (entretiens, observation).
- Constructivisme : la connaissance est construite dans l''interaction entre le chercheur et son objet ; dans certaines versions, la réalité elle-même est construite. On valorise l''utilité et l''adéquation de la connaissance pour l''action, comme dans la recherche-action ou la recherche-intervention.
- Réalisme critique : la réalité existe indépendamment de nous, mais elle comporte des mécanismes profonds qui ne sont pas directement observables ; on cherche à identifier ces mécanismes générateurs, en combinant souvent plusieurs méthodes.

Exemple : sur le thème de la tontine, un chercheur positiviste testera l''effet de la participation sur le niveau d''épargne mesuré ; un interprétativiste étudiera ce que signifie la tontine pour les participantes (solidarité, statut, contrainte sociale) ; un constructiviste pourrait co-construire avec un groupe de femmes un outil de gestion de leur tontine ; un réaliste critique chercherait les mécanismes (pression sociale, engagement public) qui produisent l''épargne dans certains contextes et pas dans d''autres.

## 3. Les modes de raisonnement

- Déduction : on part d''une théorie, on en déduit des hypothèses, on les teste empiriquement.
- Induction : on part d''observations pour construire progressivement des généralisations ou une théorie ; c''est la logique de la théorie enracinée (grounded theory) de Glaser et Strauss.
- Abduction : on part d''un fait surprenant, on formule l''explication la plus plausible, puis on la confronte aux données ; on fait des allers-retours entre théorie et terrain. C''est très fréquent dans les thèses en gestion.

## 4. Les critères de validité

En recherche quantitative :

- Validité interne : les résultats établissent-ils vraiment la relation affirmée (contrôle des variables confondantes, causalité) ?
- Validité externe : peut-on généraliser à d''autres populations ou contextes ?
- Validité de construit : les indicateurs mesurent-ils bien les concepts ?
- Fiabilité : obtiendrait-on les mêmes résultats en répétant la mesure ?

En recherche qualitative, on parle souvent de crédibilité, de transférabilité, de fiabilité (dependability) et de confirmabilité (Lincoln et Guba). Les moyens sont la triangulation des sources, la description dense du contexte, le journal de recherche, la validation par les participants et la transparence sur le codage.

## 5. La réflexivité et la position du chercheur

Le chercheur n''est jamais neutre : son origine, sa langue, son genre, son statut et ses relations avec le terrain influencent l''accès aux informations et leur interprétation. Un doctorant qui étudie l''entreprise familiale dans laquelle il a travaillé bénéficie d''un accès privilégié mais risque de partager les présupposés des acteurs. La réflexivité consiste à expliciter ces éléments et à mettre en place des garde-fous : distance critique, confrontation avec le directeur de thèse, triangulation.

Dans le contexte africain, une réflexion sur la décolonisation des savoirs invite à valoriser les concepts locaux, les langues nationales et les savoirs endogènes, et à interroger l''application mécanique de théories élaborées ailleurs, sans renoncer à la rigueur ni au dialogue international.

## 6. Méthode : construire la cohérence de sa recherche

- Formuler la question et identifier sa nature (expliquer, comprendre, transformer).
- Choisir la posture cohérente avec cette visée.
- En déduire le mode de raisonnement, le design et les méthodes.
- Définir les critères de validité correspondants et la façon de les assurer.

## Points clés

- La posture épistémologique répond aux questions sur la nature de la réalité et de la connaissance.
- Positivisme, interprétativisme, constructivisme et réalisme critique impliquent des méthodes et critères différents.
- Déduction, induction et abduction structurent le raisonnement.
- La réflexivité est une exigence de rigueur, particulièrement sur des terrains proches.

## Exercices

- Exercice 1 : À quel paradigme rattacher la question : « Quel est l''effet du niveau d''instruction du dirigeant sur la probabilité d''exporter des PME ivoiriennes ? ».
- Exercice 2 : Expliquez la différence entre induction et abduction.
- Exercice 3 : Proposez deux moyens d''assurer la crédibilité d''une étude qualitative sur les pratiques managériales dans les PME familiales.
- Exercice 4 : Un doctorant interroge des agents d''une administration dont il est lui-même fonctionnaire. Quels biais et quels garde-fous ?

## Corrigé

- Exercice 1 : Positivisme ou post-positivisme : on cherche un effet mesurable entre variables, avec une démarche hypothético-déductive et des données quantitatives.
- Exercice 2 : L''induction généralise à partir d''observations accumulées ; l''abduction part d''un fait surprenant et formule l''hypothèse explicative la plus plausible, puis la teste par des allers-retours entre théorie et terrain.
- Exercice 3 : Triangulation (entretiens avec plusieurs membres de la famille et des salariés, observation, documents) et validation des interprétations par les participants ; on peut ajouter un double codage d''une partie des entretiens.
- Exercice 4 : Biais : réponses de complaisance ou méfiance, interprétation influencée par ses propres expériences, difficultés à interroger la hiérarchie. Garde-fous : garantie de confidentialité, journal de réflexivité, entretiens menés aussi dans d''autres services, discussion régulière des interprétations avec le directeur de thèse.', 'texte', 55, false, 20
from public.courses c where c.slug = 'methodologie-recherche-doctorat'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Épistémologie et posture du chercheur');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Choisir son design : méthodes qualitatives, quantitatives et mixtes', '## Objectifs de la leçon

- Choisir un design de recherche adapté : qualitatif, quantitatif ou mixte.
- Construire une stratégie d''échantillonnage et justifier la taille de l''échantillon.
- Connaître les principaux designs mixtes.

## 1. Les recherches qualitatives

Elles visent à comprendre des phénomènes complexes, des processus, des significations, dans leur contexte. Les données sont des mots, des images, des observations.

Principaux designs :

- Étude de cas (Yin, Eisenhardt) : analyse approfondie d''un ou de plusieurs cas (entreprises, projets, villages), avec plusieurs sources de données. Utile pour les questions « comment » et « pourquoi ».
- Ethnographie : immersion prolongée dans un milieu (un marché, une coopérative, un atelier).
- Théorie enracinée : construction de théorie à partir des données, par codage progressif.
- Recherche-action : le chercheur participe à la transformation d''une situation avec les acteurs.
- Approche biographique ou récits de vie.

Échantillonnage qualitatif : il est raisonné, non probabiliste. On choisit des cas riches en information : cas typiques, extrêmes, contrastés, ou par « boule de neige » quand la population est difficile d''accès. La taille se justifie par la saturation théorique : on arrête la collecte quand de nouveaux entretiens n''apportent plus d''informations nouvelles pertinentes. En pratique, on documente cette saturation (par exemple en notant le nombre de nouveaux codes apparus à chaque entretien).

## 2. Les recherches quantitatives

Elles visent à mesurer, décrire des distributions, tester des relations entre variables et généraliser à une population.

Principaux designs :

- Enquête par questionnaire (transversale, à un moment donné, ou longitudinale, avec des mesures répétées).
- Expérimentation : affectation aléatoire des participants à un groupe traité et à un groupe témoin ; c''est le design le plus solide pour établir une causalité. Les essais contrôlés randomisés en économie du développement en sont un exemple.
- Quasi-expérimentation : comparaison de groupes sans tirage au sort, avec des méthodes pour corriger les différences (doubles différences, appariement).
- Analyse de données secondaires : enquêtes nationales, données d''entreprises, données administratives.

Échantillonnage quantitatif : on privilégie les méthodes probabilistes (aléatoire simple, stratifié, par grappes, à plusieurs degrés) pour permettre l''inférence. On fixe la taille selon la précision souhaitée ou la puissance statistique.

Exemple de calcul : pour estimer une proportion avec une marge d''erreur de 5 points au niveau de confiance 95 %, sans information préalable, n = 1,96² × 0,5 × 0,5 / 0,05² = 384,16, soit 385 personnes. Si l''enquête utilise un tirage par grappes (villages), on multiplie par un « effet de plan » (par exemple 1,5, valeur à estimer selon les données disponibles) : 385 × 1,5 ≈ 578. Si l''on prévoit 10 % de non-réponses, on vise 578/0,9 ≈ 643 personnes.

Pour tester une différence entre groupes, on calcule la taille nécessaire pour atteindre une puissance donnée (souvent 80 %) avec un logiciel ou des tables, à partir de l''effet minimal que l''on veut détecter.

## 3. Les méthodes mixtes

Les méthodes mixtes combinent données qualitatives et quantitatives dans une même recherche, de façon planifiée (Creswell et Plano Clark). Principaux designs :

- Séquentiel exploratoire : on commence par le qualitatif (comprendre, identifier les dimensions), puis on construit un questionnaire testé quantitativement.
- Séquentiel explicatif : on commence par le quantitatif, puis on explique des résultats surprenants par des entretiens.
- Convergent : on collecte en parallèle les deux types de données et on compare les résultats.

L''intégration est la clé : à quel moment et comment les deux volets se répondent-ils ? Une thèse mixte qui juxtapose deux études sans les relier est fragile.

## Exemple : une thèse sur l''adoption des solutions solaires par les PME rurales

- Phase 1, qualitative : 25 entretiens avec des dirigeants de PME dans trois régions, choisis pour leur diversité (secteur, taille, raccordement au réseau). Saturation constatée vers le 20e entretien, confirmée par les cinq suivants. Résultat : identification de six facteurs d''adoption, dont certains absents de la littérature (rôle des fournisseurs informels, confiance dans les agents locaux).
- Phase 2, quantitative : questionnaire construit à partir de ces facteurs, administré à un échantillon stratifié de 600 PME. Analyse par régression logistique.
- Intégration : les résultats quantitatifs confirment quatre facteurs ; deux ne sont pas significatifs, ce qui conduit à un retour vers les données qualitatives pour comprendre pourquoi.

## 4. Méthode : choisir son design

- Partir de la question : décrire, expliquer, comprendre, transformer ?
- Vérifier la cohérence avec la posture épistémologique.
- Évaluer la faisabilité : accès au terrain, temps, budget, compétences en analyse.
- Prévoir une étude pilote pour tester les outils.
- Justifier explicitement chaque choix dans le chapitre méthodologique.

## Points clés

- Le qualitatif comprend en profondeur ; le quantitatif mesure et généralise ; le mixte combine les deux de manière intégrée.
- L''échantillon qualitatif est raisonné et justifié par la saturation ; l''échantillon quantitatif est probabiliste et dimensionné par la précision ou la puissance.
- Effet de plan et non-réponses augmentent la taille nécessaire.
- Tout choix de design doit être justifié.

## Exercices

- Exercice 1 : Quel design proposeriez-vous pour la question : « Comment les femmes leaders des groupements de transformation de produits halieutiques construisent-elles leur légitimité ? ».
- Exercice 2 : Calculez la taille d''échantillon pour estimer une proportion avec une marge de 4 points à 95 %, sans information préalable.
- Exercice 3 : Reprenez le résultat de l''exercice 2 avec un effet de plan de 2 et 20 % de non-réponses prévues.
- Exercice 4 : Distinguez design séquentiel exploratoire et séquentiel explicatif.

## Corrigé

- Exercice 1 : Une approche qualitative : études de cas multiples ou ethnographie, avec entretiens approfondis, observation des assemblées et récits de vie ; échantillon raisonné de groupements contrastés.
- Exercice 2 : n = 3,8416 × 0,25 / 0,0016 = 600,25, soit 601 personnes.
- Exercice 3 : 601 × 2 = 1 202 ; 1 202 / 0,8 = 1 502,5, soit environ 1 503 personnes à solliciter.
- Exercice 4 : Exploratoire : qualitatif d''abord, pour construire des instruments ou hypothèses, puis quantitatif. Explicatif : quantitatif d''abord, puis qualitatif pour expliquer les résultats.', 'texte', 55, false, 30
from public.courses c where c.slug = 'methodologie-recherche-doctorat'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Choisir son design : méthodes qualitatives, quantitatives et mixtes');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Collecte et analyse des données', '## Objectifs de la leçon

- Construire des instruments de collecte : guide d''entretien, questionnaire, grille d''observation.
- Analyser des données qualitatives par le codage thématique.
- Conduire les analyses quantitatives de base et vérifier la fiabilité des échelles.

## 1. La collecte des données

- L''entretien semi-directif : un guide de thèmes et de relances, avec des questions ouvertes. Il faut obtenir le consentement, enregistrer (avec accord), prendre des notes de contexte, et transcrire fidèlement. Mener l''entretien dans la langue du participant (wolof, pulaar, sérère, etc.) améliore la qualité, mais exige une traduction rigoureuse, idéalement vérifiée par une seconde personne.
- Le questionnaire : questions fermées, échelles (par exemple de Likert en cinq points, de « pas du tout d''accord » à « tout à fait d''accord »), questions filtres. On évite les questions doubles, orientées ou ambiguës. On pré-teste toujours le questionnaire auprès de quelques personnes de la population cible. La collecte sur tablette ou téléphone réduit les erreurs de saisie et permet des contrôles automatiques.
- L''observation : directe ou participante, avec une grille et un journal de terrain.
- Les données secondaires : documents d''entreprise, statistiques publiques, bases de données ; il faut évaluer leur qualité, leur définition et leur couverture.
- Le groupe de discussion (focus group) : utile pour explorer des normes collectives.

## 2. L''analyse qualitative

L''analyse de contenu thématique est la méthode la plus courante :

- Familiarisation : lire et relire les transcriptions.
- Codage initial : attribuer des codes (étiquettes) à des segments de texte significatifs.
- Regroupement des codes en thèmes et sous-thèmes.
- Révision des thèmes au regard de l''ensemble des données.
- Définition et dénomination des thèmes.
- Rédaction, avec des extraits de verbatim qui illustrent l''analyse.

Le codage peut être déductif (codes issus de la théorie), inductif (codes issus des données) ou mixte. Un logiciel d''analyse qualitative facilite l''organisation, mais ne remplace pas l''interprétation. Pour renforcer la fiabilité, on peut faire coder une partie des entretiens par un second codeur et discuter les divergences, voire calculer un indice d''accord comme le kappa de Cohen.

Exemple : extrait d''entretien d''une commerçante : « Avant, je demandais à mon mari pour acheter la marchandise ; maintenant, avec le crédit du groupe, je décide et je lui explique après. » Codes possibles : « autonomie de décision », « rôle du crédit », « négociation dans le couple ». Le thème « recomposition des décisions dans le ménage » regroupera ces codes avec d''autres extraits.

## 3. L''analyse quantitative

Étapes :

- Préparation : saisie ou import, contrôle de cohérence, traitement des valeurs manquantes et aberrantes, codage des variables.
- Statistiques descriptives : moyennes, écarts-types, fréquences, tableaux croisés.
- Fiabilité des échelles : l''alpha de Cronbach mesure la cohérence interne d''un ensemble d''items censés mesurer le même concept. Repère usuel : une valeur d''au moins 0,7 est souvent jugée acceptable, selon le contexte et le nombre d''items.
- Validité des construits : analyses factorielles exploratoires et confirmatoires.
- Tests de relations : comparaison de moyennes, test du khi-deux, corrélations, régressions.

## Exemple : calcul de l''alpha de Cronbach

Formule : α = k/(k − 1) × [1 − (somme des variances des items)/(variance du score total)], où k est le nombre d''items.

Une échelle de satisfaction comporte 4 items. Sur l''échantillon, les variances des items sont 1,2 ; 1,0 ; 1,1 et 0,9 (somme = 4,2), et la variance du score total (somme des 4 items) est 12,0. α = 4/3 × (1 − 4,2/12) = 1,333 × 0,65 ≈ 0,87. La cohérence interne est bonne.

## Exemple : lire une régression

Une régression linéaire explique le chiffre d''affaires annuel des commerçantes (en millions de FCFA) par le nombre de cycles de crédit et les années de scolarité. Résultats (fictifs) : constante 2,1 ; coefficient des cycles de crédit 0,45 (p = 0,01) ; coefficient de la scolarité 0,20 (p = 0,08) ; R² = 0,31.

Interprétation : toutes choses égales par ailleurs, un cycle de crédit supplémentaire est associé à un chiffre d''affaires supérieur de 0,45 million de FCFA en moyenne, effet significatif au seuil de 5 %. L''effet de la scolarité n''est significatif qu''au seuil de 10 %. Le modèle explique 31 % de la variance. Attention : association n''est pas causalité ; les femmes les plus dynamiques ont peut-être davantage recours au crédit (biais de sélection). Une méthode adaptée (expérimentation, variables instrumentales, données de panel) serait nécessaire pour conclure à un effet causal.

## Points clés

- Les instruments se construisent à partir du cadre conceptuel et se pré-testent.
- L''analyse thématique passe du codage aux thèmes, avec transparence et, si possible, double codage.
- L''alpha de Cronbach vérifie la cohérence interne d''une échelle.
- Une régression s''interprète avec prudence : significativité, ampleur, et limites causales.

## Exercices

- Exercice 1 : Repérez le défaut de la question : « Êtes-vous satisfait des prix et de la qualité des services de votre IMF ? ». Proposez une correction.
- Exercice 2 : Proposez trois codes pour l''extrait : « On se réunit chaque semaine, si une femme ne paie pas, les autres la poussent, c''est la honte devant le groupe. ».
- Exercice 3 : Une échelle de 5 items a une somme des variances des items de 5,0 et une variance du score total de 15,0. Calculez l''alpha de Cronbach.
- Exercice 4 : Un coefficient de régression vaut 0,8 avec p = 0,30. Comment l''interpréter ?

## Corrigé

- Exercice 1 : C''est une question double (prix et qualité) : on ne sait pas à quoi la personne répond. Il faut la scinder en deux questions distinctes, chacune avec une échelle de réponse.
- Exercice 2 : « réunion périodique », « pression sociale du groupe », « honte comme mécanisme de remboursement ».
- Exercice 3 : α = 5/4 × (1 − 5/15) = 1,25 × 0,667 ≈ 0,83.
- Exercice 4 : L''effet estimé n''est pas statistiquement significatif aux seuils usuels : on ne peut pas conclure qu''il diffère de zéro dans la population, compte tenu de l''incertitude.', 'texte', 60, false, 40
from public.courses c where c.slug = 'methodologie-recherche-doctorat'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Collecte et analyse des données');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Rédiger la thèse, éthique de la recherche et soutenance', '## Objectifs de la leçon

- Structurer et rédiger une thèse de doctorat.
- Respecter les règles d''éthique de la recherche et d''intégrité scientifique.
- Préparer la soutenance.

## 1. La structure de la thèse

Deux grands formats existent :

- La thèse monographique, en chapitres : introduction générale ; revue de littérature et cadre théorique ; positionnement épistémologique et méthodologie ; chapitres de résultats ; discussion ; conclusion générale ; bibliographie ; annexes.
- La thèse sur articles, lorsque l''école doctorale l''autorise : une introduction et une synthèse encadrent plusieurs articles publiés ou soumis.

L''introduction générale présente le contexte, la question de recherche, la problématique, les objectifs, la démarche et le plan, ainsi que les contributions attendues. La conclusion générale rappelle les résultats, souligne les contributions théoriques, méthodologiques et managériales ou politiques, reconnaît les limites et propose des pistes de recherche.

## 2. Écrire : méthode et style

- Écrire tôt et régulièrement : un chapitre méthodologique peut être rédigé dès la préparation du terrain ; la revue de littérature s''écrit et se réécrit.
- Construire un plan détaillé et le discuter avec le directeur de thèse.
- Chaque chapitre commence par une introduction (objectif, plan) et se termine par une conclusion qui fait la transition.
- Style : clair, précis, argumenté ; phrases courtes ; définitions explicites ; usage mesuré du « nous » ou du « je » selon les usages de la discipline.
- Présenter les résultats avant de les interpréter, puis discuter en les confrontant à la littérature.
- Utiliser une norme de citation unique (APA, Chicago ou celle imposée par l''école doctorale) et un logiciel bibliographique.

## 3. Éthique de la recherche

La recherche impliquant des personnes doit respecter des principes fondamentaux :

- Respect des personnes : consentement libre et éclairé, après information sur les objectifs, la durée, les risques, l''usage des données et le droit de se retirer. Pour les personnes peu alphabétisées, l''information est donnée oralement dans leur langue, et le consentement peut être recueilli selon des modalités adaptées et documentées.
- Bienfaisance et non-malfaisance : minimiser les risques (stigmatisation, représailles, risques économiques) et maximiser les bénéfices.
- Justice : répartir équitablement les charges et les bénéfices de la recherche, ne pas exploiter des populations vulnérables.
- Confidentialité et protection des données : anonymisation ou pseudonymisation, stockage sécurisé, accès limité, respect de la législation nationale sur les données personnelles.
- Restitution : rendre compte des résultats aux communautés et organisations étudiées, sous une forme accessible.

Selon le domaine, une autorisation d''un comité d''éthique est exigée, notamment pour la recherche en santé (au Sénégal, un comité national d''éthique est compétent pour ce domaine). Il faut aussi obtenir les autorisations administratives nécessaires (autorités locales, entreprises, administrations). Les règles exactes doivent être vérifiées auprès de l''école doctorale et des instances concernées.

## 4. Intégrité scientifique

- Plagiat : reprendre les idées ou les phrases d''autrui sans citer la source est une faute grave. Les universités utilisent des logiciels de détection. Paraphraser sans citer reste du plagiat ; l''auto-plagiat (reprendre ses propres textes publiés sans le signaler) est aussi proscrit.
- Fabrication et falsification de données : inventer des données ou les modifier pour obtenir le résultat souhaité est interdit.
- Transparence : décrire honnêtement les méthodes, signaler les limites et les résultats non conformes aux hypothèses.
- Outils d''intelligence artificielle : leur usage doit respecter les règles de l''établissement et être déclaré ; l''auteur reste responsable de chaque phrase, de chaque référence et de chaque analyse, et doit vérifier toute information produite.

## 5. La soutenance

Avant la soutenance, le manuscrit est en général examiné par des rapporteurs qui donnent un avis sur la recevabilité ; la composition du jury et les délais sont fixés par la réglementation de chaque université.

Préparation :

- Un exposé de 20 à 30 minutes environ (selon les usages) : contexte et question, cadre théorique, méthodologie, principaux résultats, contributions, limites et perspectives. Ne pas résumer chapitre par chapitre : raconter l''argument.
- Des diapositives sobres : un message par diapositive, des schémas et tableaux lisibles.
- La préparation des questions : relire les rapports, anticiper les critiques sur la méthode, la généralisation, la posture et les choix théoriques ; répéter devant des collègues.
- Pendant les échanges : écouter la question jusqu''au bout, remercier, reformuler si nécessaire, répondre avec précision, reconnaître une limite plutôt que de se défendre à tout prix.

Exemple de question fréquente : « Votre échantillon est limité à trois régions : vos résultats sont-ils généralisables à tout le pays ? ». Réponse construite : rappeler la logique d''échantillonnage, préciser le domaine de validité des résultats, indiquer les éléments de transférabilité et proposer une extension comme piste de recherche.

## Points clés

- La thèse suit une architecture argumentative claire ; introduction et conclusion générales en sont les pièces maîtresses.
- Écrire tôt, planifier, citer selon une norme unique.
- Consentement éclairé, protection des données, autorisation éthique et restitution sont des obligations.
- L''intégrité scientifique exclut plagiat, fabrication et falsification ; l''usage d''outils d''IA doit être transparent et vérifié.
- La soutenance se prépare comme une argumentation, avec anticipation des questions.

## Exercices

- Exercice 1 : Listez les éléments indispensables d''un formulaire de consentement.
- Exercice 2 : Un doctorant reformule un paragraphe d''un article sans le citer. Est-ce acceptable ? Pourquoi ?
- Exercice 3 : Proposez un plan de diapositives pour une soutenance de 25 minutes.
- Exercice 4 : Comment répondre à un membre du jury qui estime que la posture épistémologique est incohérente avec la méthode ?

## Corrigé

- Exercice 1 : Identité du chercheur et de l''institution, objectifs de l''étude, déroulement et durée, risques et bénéfices, confidentialité et usage des données, caractère volontaire et droit de retrait sans conséquence, contact en cas de question, recueil du consentement (signature ou modalité orale documentée).
- Exercice 2 : Non : c''est du plagiat, car l''idée appartient à un autre auteur. Il faut citer la source, même en paraphrasant.
- Exercice 3 : 1) titre ; 2) contexte et question ; 3) revue et gap ; 4) cadre théorique ; 5) posture et design ; 6) terrain et données ; 7 à 10) résultats principaux ; 11) discussion ; 12) contributions ; 13) limites et perspectives ; 14) remerciements.
- Exercice 4 : Remercier, rappeler la visée de la recherche (expliquer ou comprendre), expliquer comment la posture justifie le design et les critères de validité ; si l''objection est fondée, reconnaître la tension et indiquer comment elle a été gérée ou pourrait l''être dans des travaux futurs.', 'texte', 55, false, 50
from public.courses c where c.slug = 'methodologie-recherche-doctorat'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Rédiger la thèse, éthique de la recherche et soutenance');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : construire la cohérence de sa thèse', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : doctorants de toutes disciplines en sciences économiques, de gestion et sociales ; étudiants de Master recherche.
- Objectifs : construire la cohérence d''un projet de thèse, de la question de recherche à la soutenance, en passant par la posture, le design, la collecte, l''analyse, l''éthique et la rédaction.
- Matériel : diaporama, modèle de « matrice de cohérence » à remplir, exemples de guides d''entretien et de questionnaires.
- Prérequis : leçons écrites 1 à 5 ; avoir un thème de thèse, même provisoire.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectif de la séance

Bonjour à toutes et à tous. Cette séance a un objectif concret : à la fin, chacun de vous aura une première version de sa matrice de cohérence, un tableau d''une page qui relie votre question, votre posture, votre design, vos données, vos analyses et vos critères de validité. C''est l''outil que je recommande de garder sous les yeux pendant toute la thèse, et que votre jury, sans le dire, cherchera à reconstituer en lisant votre manuscrit.

Visuel : la matrice de cohérence vierge, avec ses six colonnes.

Un mot sur la difficulté du doctorat. Beaucoup de doctorants, en Afrique comme ailleurs, abandonnent ou prolongent leur thèse bien au-delà de la durée prévue. Les causes sont connues : une question trop large, un terrain mal préparé, un isolement, des difficultés de financement et une écriture repoussée à la fin. La méthode ne règle pas tout, mais elle évite les erreurs qui coûtent des années. Gérez votre thèse comme un projet, avec un calendrier, des jalons et des rencontres régulières avec votre direction de thèse.

## 05:00 – 18:00 · De la question de départ à la problématique

Partons d''un thème réel de doctorante : « le numérique et les PME au Sénégal ». Je demande à la salle : est-ce une question de recherche ? Non, c''est un thème. Resserrons ensemble : quel numérique ? Le paiement mobile. Quelles PME ? Les commerces de détail. Quel effet ? La gestion de la trésorerie. Nous obtenons : « Comment l''adoption du paiement mobile transforme-t-elle les pratiques de gestion de trésorerie des commerçants de détail de Dakar ? ».

Vérifions les trois critères : clarté, faisabilité, pertinence. Puis la revue de littérature : je montre comment construire une équation de recherche avec des mots-clés en français et en anglais, des critères d''inclusion et une grille de lecture. J''insiste : organisez votre revue par débats, pas par auteurs, et cherchez la littérature produite en Afrique, souvent moins visible.

Question à la classe : quel « gap » pourrait justifier cette thèse ? Réponse possible : la littérature mesure l''adoption mais explique peu comment les pratiques de gestion changent au quotidien.

Passons aux objectifs. Objectif général : comprendre la transformation des pratiques de gestion de trésorerie liée au paiement mobile. Objectifs spécifiques : décrire les usages, identifier les changements de pratiques, analyser les facteurs qui favorisent ou freinent ces changements. Notez que, dans une démarche compréhensive, on formule des propositions de recherche plutôt que des hypothèses à tester.

## 18:00 – 30:00 · Posture épistémologique et raisonnement

Notre question commence par « comment » et porte sur des pratiques et leur sens : elle appelle plutôt une posture interprétativiste, ou un réalisme critique si l''on cherche les mécanismes. Si la question avait été « quel est l''effet du paiement mobile sur le niveau de trésorerie ? », une posture post-positiviste et un design quantitatif seraient plus adaptés.

Visuel : tableau comparatif des paradigmes, avec leur visée, leurs méthodes et leurs critères de validité.

Je rappelle les trois raisonnements : déduction, induction, abduction. La plupart des thèses en gestion procèdent par abduction : allers-retours entre la théorie et le terrain. Le plus important est de le dire et de le montrer.

Question : quelle réflexivité pour une doctorante qui a elle-même tenu un commerce ? Réponse attendue : un accès facilité et une compréhension fine, mais un risque de projection ; d''où un journal de recherche et une discussion régulière avec la direction de thèse.

## 30:00 – 42:00 · Choisir son design et son échantillon

Pour notre question, je propose un design mixte séquentiel exploratoire. Phase qualitative : 20 à 30 entretiens semi-directifs avec des commerçants contrastés (taille, quartier, ancienneté d''usage), jusqu''à saturation. Phase quantitative : un questionnaire construit à partir des thèmes, auprès d''un échantillon probabiliste.

Calculons la taille de cet échantillon pour estimer une proportion avec 5 points de marge à 95 % : 1,96 au carré fois 0,25 divisé par 0,0025, soit 384,16, donc 385. Avec un tirage par grappes de quartiers et un effet de plan supposé de 1,5 : environ 578. Avec 10 % de non-réponses : environ 643 commerçants à solliciter.

Question à la classe : pourquoi la saturation ne se décrète-t-elle pas ? Réponse : parce qu''elle doit être documentée, par exemple en suivant l''apparition de nouveaux codes entretien après entretien.

## 42:00 – 50:00 · Pause interactive et quiz

Pause active. Trois questions.

- Question 1 : Une hypothèse doit-elle être testable ? Réponse : oui, elle relie des variables opérationnalisées et peut être infirmée.
- Question 2 : Qu''est-ce que la triangulation ? Réponse : le croisement de plusieurs sources, méthodes ou chercheurs pour renforcer la crédibilité.
- Question 3 : Un échantillon de 2 000 réponses recueillies via un réseau social est-il représentatif ? Réponse : pas nécessairement ; la taille ne corrige pas un biais de sélection.

## 50:00 – 1:02:00 · Collecter et analyser

Visuel : extrait de guide d''entretien. Thèmes : histoire de l''adoption, gestion quotidienne de la caisse, relations avec les fournisseurs, épargne, difficultés. Relances : « pouvez-vous me donner un exemple ? », « comment faisiez-vous avant ? ».

Je montre ensuite le codage d''un extrait : « Avant, je gardais l''argent dans une boîte, et à la fin du mois je ne savais pas où il était parti. Maintenant, je vois tout dans le téléphone. » Codes : « traçabilité des flux », « séparation des caisses », « contrôle de soi ». Le thème émergent pourrait être « le téléphone comme outil de comptabilité informelle ».

Côté quantitatif, on vérifie la fiabilité des échelles avec l''alpha de Cronbach. Exemple : 4 items, somme des variances 4,2, variance du total 12 : alpha égale 4/3 fois 0,65, environ 0,87. Puis une régression, interprétée avec prudence : association n''est pas causalité.

## 1:02:00 – 1:12:00 · Éthique et intégrité

Avant le terrain : consentement éclairé, dans la langue du participant, droit de retrait, confidentialité. Les données des commerçants, par exemple leurs montants de transactions, sont sensibles : anonymisation, stockage sécurisé, respect de la législation sur les données personnelles. Selon le domaine, une autorisation d''un comité d''éthique est requise : renseignez-vous auprès de votre école doctorale.

Intégrité : pas de plagiat, même par paraphrase ; pas de fabrication ni de falsification. Pour les outils d''intelligence artificielle : respectez les règles de votre établissement, déclarez leur usage, et vérifiez tout, car vous restez responsable de chaque phrase et de chaque référence.

Question à la classe : un enquêteur vous apporte des questionnaires dont plusieurs semblent remplis de la même écriture. Que faites-vous ? Réponse : vérifier par des contrôles de qualité, recontacter un échantillon de répondants, écarter les questionnaires douteux, et documenter la procédure dans la thèse.

## 1:12:00 – 1:22:00 · Rédiger et soutenir

Plan type : introduction générale, revue et cadre théorique, épistémologie et méthodologie, chapitres de résultats, discussion, conclusion générale. Écrivez tôt, chaque semaine ; la revue de littérature se réécrit plusieurs fois.

Pour la soutenance : un exposé centré sur l''argument, pas un résumé chapitre par chapitre ; des diapositives sobres ; des réponses préparées aux questions prévisibles sur la généralisation, la posture et les limites. Je joue le rôle d''un membre du jury et pose une question à un volontaire : « pourquoi ne pas avoir mené une étude entièrement quantitative ? ». Nous analysons ensemble sa réponse : remercier, rappeler la question de recherche, justifier le design mixte par la nécessité de comprendre avant de mesurer.

## 1:22:00 – 1:30:00 · Synthèse et évaluation finale

Remplissons ensemble la matrice de cohérence de notre exemple : question en « comment » ; posture interprétativiste ou réaliste critique ; design mixte séquentiel exploratoire ; données d''entretiens et de questionnaires ; analyse thématique puis statistique ; critères de crédibilité et de validité. Chaque case doit répondre à la précédente.

Évaluation finale, cinq questions :

- Question 1 : Quelles sont les trois qualités d''une bonne question de départ ? Réponse : clarté, faisabilité, pertinence.
- Question 2 : Quelle posture vise la compréhension du sens donné par les acteurs ? Réponse : l''interprétativisme.
- Question 3 : Taille d''échantillon pour 5 points de marge à 95 %, sans information préalable ? Réponse : 385.
- Question 4 : Qu''est-ce que la saturation théorique ? Réponse : le point où de nouvelles données n''apportent plus d''information nouvelle pertinente.
- Question 5 : Citez trois exigences éthiques de la collecte. Réponse : consentement éclairé, confidentialité et protection des données, autorisation éthique lorsque requise.

Merci à tous. Pour la prochaine séance, envoyez votre matrice de cohérence remplie pour votre propre thèse.', 'video', 90, false, 60
from public.courses c where c.slug = 'methodologie-recherche-doctorat'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : construire la cohérence de sa thèse');

-- Cours : Gestion de flotte automobile
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'formation-gestion-flotte', (select id from public.levels where name = 'Formation professionnelle'), 'flotte', 'Gestion de flotte', 'Gestion de flotte automobile', 'Cette formation donne les méthodes pour gérer un parc de véhicules d''entreprise ou d''administration : inventaire et dossier véhicule, maintenance préventive et curative, pneumatiques, assurances et échéances administratives, calcul du coût total de possession (TCO) et politique conducteurs. Elle s''adresse aux gestionnaires de flotte, chefs de parc, responsables des services généraux et dirigeants de PME. Prérequis : calculs de base, pourcentages et usage d''un tableur.', true, 90
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Organiser la gestion de flotte : inventaire et dossier véhicule', '## Objectifs de la leçon

- Comprendre le rôle du gestionnaire de flotte.
- Construire l''inventaire du parc et le dossier de chaque véhicule.
- Mettre en place les outils de suivi de base.

## Qu''est-ce que la gestion de flotte ?

Une flotte automobile est l''ensemble des véhicules qu''une organisation possède, loue ou met à disposition de ses salariés : voitures de direction, véhicules commerciaux, pick-up de chantier, camionnettes de livraison, motos de coursiers, minibus de transport du personnel. Pour une entreprise de distribution, une ONG ou un projet de développement au Sénégal, la flotte représente souvent l''un des premiers postes de dépenses après les salaires.

Gérer une flotte, c''est garantir que les bons véhicules sont disponibles au bon moment, en bon état, en règle avec la réglementation, conduits par des personnes autorisées, au coût le plus juste. Le gestionnaire de flotte coordonne l''achat ou la location, l''affectation, l''entretien, les assurances, le carburant, les sinistres et la revente.

## Les missions du gestionnaire

- Tenir l''inventaire du parc et les dossiers véhicules.
- Planifier et suivre la maintenance.
- Gérer les échéances administratives : assurances, visites techniques, taxes.
- Contrôler les dépenses : carburant, réparations, pneus, péages.
- Gérer les conducteurs : autorisations, règles, sinistres, amendes.
- Analyser les coûts et proposer le renouvellement des véhicules.

## L''inventaire du parc

L''inventaire est la liste exhaustive des véhicules, mise à jour à chaque entrée ou sortie. Chaque véhicule reçoit un code interne unique (par exemple VL-012 pour un véhicule léger, PL-003 pour un poids lourd). L''inventaire comporte au minimum :

- Le code interne et l''immatriculation.
- La marque, le modèle, la version, la motorisation et le type de carburant.
- Le numéro de châssis (numéro d''identification du véhicule).
- La date de mise en circulation et la date d''entrée dans le parc.
- Le mode de détention : achat, crédit, location longue durée, mise à disposition.
- La valeur d''achat ou le loyer.
- Le service et le conducteur affectés.
- Le kilométrage à date.
- L''état général (bon, moyen, à réformer).

On recommande de faire chaque année un inventaire physique : on vérifie que chaque véhicule existe, qu''il est au bon endroit, que le kilométrage déclaré est exact et que les documents sont à bord.

## Le dossier véhicule

Chaque véhicule a un dossier, papier et numérique, qui suit le véhicule toute sa vie dans l''entreprise. Il contient :

- Les documents d''identité du véhicule : carte grise (certificat d''immatriculation), facture d''achat ou contrat de location, certificat de dédouanement le cas échéant.
- Les documents de conformité : attestation d''assurance, procès-verbal de visite technique, justificatifs de taxes.
- Le carnet d''entretien et l''historique des interventions avec les factures.
- Les fiches de sinistres et les constats.
- Les procès-verbaux de remise du véhicule aux conducteurs successifs, avec l''état des lieux et le kilométrage.

Les originaux sont conservés au bureau ; des copies certifiées ou les documents exigés sont placés à bord, selon la réglementation et les recommandations de l''assureur.

## Les outils de suivi

Pour une petite flotte, un tableur bien structuré suffit : un onglet inventaire, un onglet échéances, un onglet interventions, un onglet carburant. Au-delà d''une trentaine de véhicules, un logiciel de gestion de flotte devient utile : alertes automatiques, saisie des pleins, tableaux de bord, lien avec la géolocalisation.

L''information de base qui alimente tout le système est le kilométrage. Il est relevé régulièrement (à chaque plein, chaque semaine ou par le traceur GPS) et sert à planifier l''entretien et à calculer les coûts au kilomètre.

## Exemple : une ONG à Kaolack

Une ONG de santé basée à Kaolack possède 18 véhicules, dont 10 pick-up utilisés pour les tournées dans les villages. Lors de la prise de poste du nouveau gestionnaire, aucun inventaire n''existait. Il a réalisé en deux semaines : la liste complète avec les codes VL-001 à VL-018, la vérification physique de chaque véhicule, et un dossier par véhicule. Il a découvert deux véhicules dont l''assurance avait expiré, un pick-up immobilisé depuis quatre mois dans un garage en attente d''une pièce, et un écart de 12 000 km entre le kilométrage déclaré et le compteur réel d''un véhicule. Ces constats ont justifié la mise en place d''un suivi mensuel.

## Points clés

- La flotte est un poste de dépenses majeur qu''il faut gérer comme un actif.
- L''inventaire est exhaustif, codifié, et vérifié physiquement chaque année.
- Chaque véhicule a un dossier complet qui le suit toute sa vie.
- Le kilométrage est l''information de base de tout le suivi.

## Exercices

- Exercice 1 : citez six informations obligatoires de l''inventaire d''un véhicule.
- Exercice 2 : quels documents mettez-vous dans le dossier d''un véhicule acheté neuf ?
- Exercice 3 : un pick-up affiche 86 400 km au 1er janvier et 113 400 km au 31 décembre. Calculez son kilométrage annuel et mensuel moyen.
- Exercice 4 : pourquoi faut-il un procès-verbal de remise à chaque changement de conducteur ?

## Corrigé

Exercice 1 : par exemple code interne, immatriculation, marque et modèle, numéro de châssis, date de mise en circulation, mode de détention, conducteur affecté, kilométrage.

Exercice 2 : la carte grise, la facture d''achat, l''attestation d''assurance, le carnet d''entretien et la garantie constructeur, le procès-verbal de remise au premier conducteur ; puis, au fil du temps, les visites techniques, factures d''entretien et fiches de sinistres.

Exercice 3 : kilométrage annuel = 113 400 - 86 400 = 27 000 km ; mensuel moyen = 27 000 / 12 = 2 250 km.

Exercice 4 : il établit l''état du véhicule, le kilométrage et les équipements au moment de la remise. En cas de dommage, de pièce manquante ou d''écart de kilométrage, on sait à quelle période et à quel conducteur l''attribuer.', 'texte', 45, true, 10
from public.courses c where c.slug = 'formation-gestion-flotte'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Organiser la gestion de flotte : inventaire et dossier véhicule');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Maintenance préventive et curative', '## Objectifs de la leçon

- Distinguer maintenance préventive et curative.
- Construire un plan de maintenance préventive.
- Suivre les interventions et calculer les indicateurs de maintenance.

## Deux types de maintenance

La maintenance préventive est réalisée avant la panne, selon un calendrier ou un kilométrage : vidange, remplacement des filtres, contrôle des freins, de la courroie de distribution, des liquides, de la batterie. Elle suit les préconisations du constructeur inscrites dans le carnet d''entretien, adaptées aux conditions d''usage.

La maintenance curative est réalisée après une panne ou un accident : remplacement d''un alternateur défaillant, réparation d''une suspension cassée, carrosserie après un choc.

Le préventif coûte moins cher que le curatif, car une panne entraîne souvent des dégâts en chaîne (une courroie qui casse peut endommager le moteur), une immobilisation imprévue, un dépannage et parfois un accident. Un gestionnaire cherche donc à augmenter la part du préventif.

## Les conditions sévères

En Afrique de l''Ouest, de nombreux véhicules roulent dans des conditions que les constructeurs qualifient de sévères : chaleur, poussière et latérite, pistes dégradées, trajets courts en ville avec embouteillages, charges lourdes. Les carnets d''entretien prévoient souvent des intervalles raccourcis pour ces usages. Le gestionnaire doit les lire et appliquer le programme adapté, notamment pour les filtres à air et les vidanges.

## Construire un plan de maintenance préventive

- Lister pour chaque modèle les opérations du carnet et leur intervalle (en kilomètres et en mois, le premier atteint faisant foi).
- Relever le kilométrage de chaque véhicule régulièrement.
- Calculer pour chaque opération le prochain kilométrage ou la prochaine date d''échéance.
- Programmer l''intervention quelques jours avant l''échéance, en coordination avec le service utilisateur.
- Enregistrer l''intervention réalisée et recalculer l''échéance suivante.

Exemple de calcul : un véhicule dont la vidange est prévue tous les 10 000 km (valeur d''exemple, à vérifier dans le carnet) a eu sa dernière vidange à 40 000 km. Il affiche aujourd''hui 47 200 km. Prochaine vidange à 50 000 km, soit dans 2 800 km. S''il roule 250 km par jour ouvré, l''échéance arrive dans environ 2 800 / 250 = 11,2 jours ouvrés : on programme l''intervention dans 10 jours.

## L''ordre de réparation

Toute intervention, interne ou en garage, fait l''objet d''un ordre de réparation : véhicule, kilométrage, symptômes ou opérations demandées, date d''entrée, devis accepté, pièces remplacées, main-d''œuvre, date de sortie, coût total. Sans ordre de réparation signé, aucune facture n''est payée. Cette règle simple évite les travaux non demandés et les surfacturations.

## Choisir les prestataires

Le gestionnaire compare plusieurs garages sur des critères écrits : compétence sur les modèles du parc, disponibilité des pièces, délais, prix de la main-d''œuvre, garantie sur les réparations, proximité. Il négocie un tarif horaire et des délais, et vérifie régulièrement les pièces remplacées (on peut demander la restitution des pièces usagées).

## Les indicateurs de maintenance

Le taux de disponibilité mesure la part du temps où les véhicules sont utilisables : taux = jours disponibles / jours calendaires. Pour 25 véhicules sur 30 jours, on a 750 jours-véhicules. Si les immobilisations totalisent 48 jours, la disponibilité est (750 - 48) / 750 = 702 / 750 = 93,6 %.

La part du préventif est le coût du préventif divisé par le coût total de maintenance.

Le coût de maintenance au kilomètre est le coût total de maintenance divisé par les kilomètres parcourus.

La durée moyenne d''immobilisation est le nombre de jours d''immobilisation divisé par le nombre d''interventions.

## Exemple : une société de distribution à Dakar

Sur une année, la flotte de 25 véhicules d''une société de distribution a parcouru 750 000 km. Les dépenses de maintenance s''élèvent à 9 000 000 FCFA, dont 5 400 000 FCFA de préventif et 3 600 000 FCFA de curatif.

- Coût au kilomètre : 9 000 000 / 750 000 = 12 FCFA par km.
- Part du préventif : 5 400 000 / 9 000 000 = 60 %.

L''analyse des interventions curatives montre que 40 % concernent les freins et les suspensions de quatre camionnettes affectées à des livraisons en zone périurbaine sur pistes. Décision : contrôle des freins et des suspensions à chaque vidange pour ces véhicules et formation des chauffeurs au chargement. L''objectif est de faire passer le préventif à 70 % l''année suivante.

## Points clés

- Le préventif coûte moins cher que le curatif et réduit les immobilisations.
- Le plan de maintenance suit le carnet du constructeur, adapté aux conditions sévères.
- Aucune intervention sans ordre de réparation signé.
- On suit la disponibilité, la part du préventif, le coût au km et la durée d''immobilisation.

## Exercices

- Exercice 1 : classez en préventif ou curatif : vidange, remplacement d''un pare-brise fissuré, changement du filtre à air, réparation d''un démarreur, contrôle des plaquettes de frein.
- Exercice 2 : dernière vidange à 62 000 km, intervalle 7 500 km, compteur à 67 900 km. Combien de kilomètres reste-t-il avant la vidange ?
- Exercice 3 : 12 véhicules, mois de 31 jours, 22 jours d''immobilisation au total. Calculez le taux de disponibilité.
- Exercice 4 : maintenance totale 4 800 000 FCFA dont 2 160 000 FCFA de curatif, 320 000 km parcourus. Calculez la part du préventif et le coût au km.

## Corrigé

Exercice 1 : préventif : vidange, filtre à air, contrôle des plaquettes. Curatif : pare-brise fissuré, réparation du démarreur.

Exercice 2 : prochaine vidange à 62 000 + 7 500 = 69 500 km ; reste 69 500 - 67 900 = 1 600 km.

Exercice 3 : jours-véhicules = 12 × 31 = 372 ; disponibles = 372 - 22 = 350 ; taux = 350 / 372 ≈ 94,1 %.

Exercice 4 : préventif = 4 800 000 - 2 160 000 = 2 640 000 FCFA ; part = 2 640 000 / 4 800 000 = 55 %. Coût au km = 4 800 000 / 320 000 = 15 FCFA.', 'texte', 55, false, 20
from public.courses c where c.slug = 'formation-gestion-flotte'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Maintenance préventive et curative');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Gérer les pneumatiques de la flotte', '## Objectifs de la leçon

- Lire les marquages d''un pneumatique.
- Organiser le suivi et l''entretien des pneus de la flotte.
- Calculer le coût des pneus au kilomètre et l''effet d''une mauvaise gestion.

## Pourquoi les pneus méritent une attention particulière

Le pneu est le seul contact entre le véhicule et la route. Il conditionne le freinage, la tenue de route, la consommation de carburant et le confort. C''est aussi un poste de dépenses important et souvent mal contrôlé : pneus changés trop tôt ou trop tard, pneus de qualité douteuse, vols ou échanges frauduleux. Sur des routes chaudes et parfois dégradées, une bonne gestion des pneus fait une différence nette sur les coûts et la sécurité.

## Lire le marquage d''un pneu

Prenons le marquage 205/55 R16 91V :

- 205 : largeur du pneu en millimètres.
- 55 : rapport entre la hauteur du flanc et la largeur, en pourcentage. La hauteur du flanc est 205 × 0,55 ≈ 113 mm.
- R : structure radiale.
- 16 : diamètre de la jante en pouces.
- 91 : indice de charge ; il correspond à 615 kg par pneu selon le tableau normalisé.
- V : indice de vitesse ; il correspond à 240 km/h maximum.

La date de fabrication figure dans un code à quatre chiffres : 2324 signifie 23e semaine de 2024. Un pneu ancien, même peu usé, durcit et se fissure ; beaucoup de professionnels évitent de monter des pneus stockés depuis trop longtemps.

Les pneus de remplacement doivent respecter les dimensions et les indices prévus pour le véhicule (indiqués dans le carnet ou sur l''étiquette de la portière). Un indice de charge insuffisant sur une camionnette chargée est dangereux.

## Les règles d''entretien

La pression se contrôle à froid, au moins une fois par mois et avant un long trajet, selon les valeurs du constructeur. Un pneu sous-gonflé s''use plus vite sur les bords, chauffe, augmente la consommation et risque l''éclatement. Un pneu surgonflé s''use au centre et adhère moins.

La profondeur des sculptures se mesure avec une jauge. La réglementation fixe une profondeur minimale ; vérifiez la valeur en vigueur. De nombreux gestionnaires fixent un seuil interne de remplacement plus élevé que le minimum légal, pour garder une bonne adhérence sous la pluie pendant l''hivernage.

La permutation consiste à échanger la position des pneus (avant et arrière) à intervalles réguliers pour égaliser l''usure, selon les préconisations du constructeur.

Le parallélisme et l''équilibrage se contrôlent après un choc, lors d''un changement de pneus ou en cas d''usure irrégulière ou de vibrations.

## Organiser le suivi

Chaque pneu peut être identifié (marquage interne ou numéro de série) et suivi dans une fiche : véhicule, position, date et kilométrage de montage, profondeur aux contrôles, date et kilométrage de dépose, motif (usure, crevaison, éclatement). Cette traçabilité permet de calculer la durée de vie réelle par marque et par véhicule, de repérer les conducteurs ou itinéraires qui usent anormalement, et d''éviter le remplacement de pneus en bon état par des pneus usés.

Le stock de pneus neufs est tenu en magasin fermé, à l''abri du soleil et de la chaleur, avec des entrées et sorties enregistrées. Un pneu usé n''est remplacé que contre restitution de l''ancien.

## Calcul du coût au kilomètre

Coût au km = (prix des pneus + montage et équilibrage) / kilomètres parcourus avec ces pneus.

Exemple : un véhicule léger reçoit 4 pneus à 60 000 FCFA, plus 20 000 FCFA de montage et d''équilibrage, soit 260 000 FCFA. Avec un entretien correct, le train dure 40 000 km : coût = 260 000 / 40 000 = 6,5 FCFA par km.

Si la pression n''est pas surveillée et que le train ne dure que 30 000 km : coût = 260 000 / 30 000 ≈ 8,67 FCFA par km.

Pour une flotte de 20 véhicules qui roulent chacun 40 000 km par an, soit 800 000 km : surcoût = (8,67 - 6,5) × 800 000 ≈ 1 733 000 FCFA par an. Sans compter le carburant supplémentaire et le risque d''accident.

## Exemple : une entreprise de BTP à Mbour

Une entreprise de BTP constate que les pneus de ses pick-up durent en moyenne 25 000 km. Le suivi par pneu montre que les pneus avant droits s''usent deux fois plus vite sur trois véhicules : parallélisme déréglé après des passages sur chantier. Le gestionnaire impose un contrôle de géométrie tous les trois mois, un contrôle mensuel de la pression par le chef de parc et des pneus adaptés aux pistes pour les véhicules de chantier. La durée moyenne remonte à 35 000 km.

## Points clés

- Le marquage indique dimensions, charge, vitesse et date : on respecte les spécifications du véhicule.
- Pression, profondeur, permutation et géométrie sont les quatre gestes d''entretien.
- Chaque pneu est tracé du montage à la dépose ; le stock est contrôlé.
- Le coût au km mesure l''efficacité de la gestion des pneus.

## Exercices

- Exercice 1 : décodez le marquage 195/65 R15 91H, sachant que H correspond à 210 km/h. Calculez la hauteur du flanc.
- Exercice 2 : que signifie le code de date 0825 ?
- Exercice 3 : 4 pneus à 75 000 FCFA, montage 24 000 FCFA, durée 48 000 km. Calculez le coût au km.
- Exercice 4 : citez trois conséquences d''un sous-gonflage.

## Corrigé

Exercice 1 : largeur 195 mm ; hauteur du flanc égale à 65 % de la largeur, soit 195 × 0,65 = 126,75 mm, environ 127 mm ; structure radiale ; jante de 15 pouces ; indice de charge 91 (615 kg par pneu) ; vitesse maximale 210 km/h.

Exercice 2 : pneu fabriqué la 8e semaine de 2025.

Exercice 3 : coût total = 4 × 75 000 + 24 000 = 324 000 FCFA ; coût au km = 324 000 / 48 000 = 6,75 FCFA.

Exercice 4 : usure rapide des bords, hausse de la consommation de carburant, échauffement et risque d''éclatement, tenue de route dégradée.', 'texte', 45, false, 30
from public.courses c where c.slug = 'formation-gestion-flotte'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Gérer les pneumatiques de la flotte');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Assurances, échéances et politique conducteurs', '## Objectifs de la leçon

- Comprendre les garanties d''assurance d''une flotte et la gestion des sinistres.
- Tenir un échéancier des obligations administratives.
- Rédiger une politique conducteurs.

## L''assurance automobile

Dans les pays membres de la CIMA (Conférence interafricaine des marchés d''assurances), dont le Sénégal, l''assurance de responsabilité civile automobile est obligatoire : elle couvre les dommages causés aux tiers. Le Code des assurances de la CIMA encadre ces contrats. Au-delà de cette garantie obligatoire, l''entreprise choisit des garanties complémentaires selon la valeur et l''usage des véhicules :

- Dommages au véhicule (tierce collision ou tous accidents).
- Vol et incendie.
- Bris de glace.
- Défense et recours.
- Personnes transportées et individuelle conducteur.
- Assistance (remorquage, dépannage).

La franchise est la part du dommage qui reste à la charge de l''assuré. Une franchise élevée réduit la prime, mais augmente le coût de chaque sinistre pour l''entreprise.

Pour une flotte, l''assureur propose souvent un contrat flotte unique couvrant tous les véhicules, avec des conditions négociées. Sa prime dépend notamment du nombre et du type de véhicules, des garanties et de l''historique des sinistres. Les montants et barèmes varient selon les compagnies et doivent être obtenus par devis.

## Gérer les sinistres

Le ratio de sinistralité compare le coût des sinistres à la prime payée : ratio = montant des sinistres / primes. Un ratio élevé et durable conduit l''assureur à augmenter la prime ou à durcir les conditions.

La procédure sinistre de l''entreprise prévoit : sécuriser les lieux et les personnes, remplir un constat amiable avec l''autre partie, prendre des photos, prévenir le gestionnaire de flotte immédiatement, déclarer le sinistre à l''assureur dans le délai prévu au contrat, faire expertiser le véhicule, suivre la réparation et l''indemnisation. Chaque sinistre est analysé pour identifier les causes : vitesse, fatigue, itinéraire dangereux, état du véhicule.

## L''échéancier administratif

Un véhicule n''a le droit de circuler que si ses documents sont valides. Les principales échéances sont :

- L''assurance (date de renouvellement de l''attestation).
- La visite technique périodique, selon la périodicité fixée par la réglementation pour chaque catégorie de véhicule.
- Les taxes et vignettes éventuelles applicables aux véhicules.
- Les autorisations spécifiques (transport public, matières dangereuses) le cas échéant.
- Les contrats de location ou de crédit (fin de contrat, kilométrage maximal).

L''échéancier est un tableau avec une ligne par véhicule et une colonne par échéance. Une mise en forme conditionnelle colore en orange les échéances à moins de 30 jours et en rouge les échéances dépassées. Chaque lundi, le gestionnaire consulte les alertes et lance les démarches. Un véhicule dont un document est expiré est immobilisé jusqu''à régularisation.

## La politique conducteurs

La politique conducteurs (ou charte d''utilisation des véhicules) est un document signé par chaque conducteur. Elle précise :

- Les conditions pour conduire : permis valide de la bonne catégorie, vérifié et copié au dossier, autorisation écrite de la direction.
- L''usage autorisé : professionnel seulement, ou usage privé encadré (horaires, distance, carburant).
- Les règles de conduite : respect du code de la route, interdiction de l''alcool et des stupéfiants, interdiction du téléphone tenu en main, port de la ceinture, temps de repos sur les longs trajets.
- Les obligations d''entretien courant : contrôles quotidiens (niveaux, pneus, feux), signalement immédiat des anomalies.
- Le carnet de bord : relevé des trajets, kilomètres et pleins.
- La gestion des amendes : l''amende liée au comportement du conducteur est à sa charge, selon les règles internes et le droit applicable.
- Les sanctions en cas de manquement, dans le respect du règlement intérieur et du droit du travail.

La charte doit être cohérente avec le règlement intérieur et le droit du travail ; au Sénégal, celui-ci est en cours de réforme avec un projet de nouveau Code du travail, il convient donc de faire valider la charte par un juriste en tenant compte des textes en vigueur.

## Exemple : une société de services à Ziguinchor

Une société de maintenance de 30 véhicules a subi 14 sinistres en un an pour 9 000 000 FCFA de primes ; les sinistres ont coûté 7 200 000 FCFA, soit un ratio de 7 200 000 / 9 000 000 = 80 %. L''analyse montre que 9 sinistres sur 14 se sont produits en fin de journée, au retour des interventions, et concernent 5 conducteurs. Mesures : limitation des journées de conduite, formation à la conduite défensive pour les 5 conducteurs, rappel de la charte. L''année suivante, le nombre de sinistres tombe à 6.

## Points clés

- La responsabilité civile est obligatoire ; les garanties complémentaires se choisissent selon la valeur et l''usage.
- La sinistralité se mesure et s''analyse pour en réduire les causes.
- L''échéancier avec alertes évite de faire circuler un véhicule non conforme.
- La charte conducteurs, signée, fixe les droits, obligations et sanctions.

## Exercices

- Exercice 1 : citez quatre garanties complémentaires d''assurance automobile.
- Exercice 2 : primes 6 500 000 FCFA, sinistres 4 550 000 FCFA. Calculez le ratio de sinistralité.
- Exercice 3 : nous sommes le 1er mars. La visite technique d''un véhicule expire le 20 mars et son assurance le 15 février. Quelle couleur pour chaque échéance et quelle décision prenez-vous ?
- Exercice 4 : citez cinq rubriques d''une charte conducteurs.

## Corrigé

Exercice 1 : dommages tous accidents, vol et incendie, bris de glace, défense et recours, personnes transportées, assistance.

Exercice 2 : 4 550 000 / 6 500 000 = 0,70, soit 70 %.

Exercice 3 : la visite technique est dans 19 jours : orange, il faut prendre rendez-vous. L''assurance est expirée depuis le 15 février : rouge. Le véhicule doit être immobilisé immédiatement jusqu''au renouvellement de l''assurance, et l''on vérifie pourquoi l''alerte n''a pas été traitée.

Exercice 4 : conditions pour conduire, usage autorisé, règles de conduite, contrôles quotidiens, carnet de bord, gestion des amendes, sanctions.', 'texte', 55, false, 40
from public.courses c where c.slug = 'formation-gestion-flotte'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Assurances, échéances et politique conducteurs');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Calculer le coût total de possession (TCO)', '## Objectifs de la leçon

- Définir le coût total de possession (TCO) d''un véhicule.
- Calculer le TCO total, annuel et au kilomètre.
- Utiliser le TCO pour choisir entre plusieurs véhicules ou modes de détention.

## Définition

Le coût total de possession, souvent désigné par son sigle anglais TCO (total cost of ownership), est la somme de tous les coûts supportés par l''entreprise pour un véhicule, de son acquisition à sa revente. Le prix d''achat n''est qu''une partie de ce coût.

## Les composantes du TCO

- La dépréciation : prix d''achat (avec frais d''immatriculation et de mise en route) moins prix de revente estimé en fin d''utilisation.
- Le coût du financement : intérêts d''emprunt ou coût d''opportunité de l''argent immobilisé.
- Le carburant.
- La maintenance préventive et curative.
- Les pneumatiques.
- L''assurance.
- Les taxes, visites techniques et frais administratifs.
- Les coûts indirects : temps de gestion, immobilisations, véhicule de remplacement.

## Méthode de calcul

- Fixer la durée de détention (par exemple 4 ans) et le kilométrage annuel.
- Calculer la dépréciation.
- Estimer chaque coût annuel à partir de l''historique de la flotte ou des devis.
- Multiplier par la durée et additionner.
- Diviser par le nombre de kilomètres pour obtenir le coût au km, et par le nombre de mois pour le coût mensuel.

## Exemple complet

Une entreprise étudie un véhicule utilitaire léger : prix d''achat 18 000 000 FCFA, revente estimée après 4 ans 6 000 000 FCFA, 30 000 km par an, consommation 8 L/100 km. Le prix du carburant retenu est 800 FCFA le litre ; c''est un prix fictif pour l''exemple : au Sénégal les prix à la pompe sont fixés par les autorités et il faut utiliser le prix en vigueur. Les autres coûts annuels sont estimés à partir de l''historique : maintenance 600 000 FCFA, pneus 400 000 FCFA, assurance 450 000 FCFA (montant fictif pour l''exemple, à remplacer par le devis réel), taxes et visites 100 000 FCFA.

Calculs sur 4 ans :

- Dépréciation : 18 000 000 - 6 000 000 = 12 000 000 FCFA.
- Carburant : 30 000 × 8 / 100 = 2 400 L par an ; 2 400 × 800 = 1 920 000 FCFA par an ; sur 4 ans 7 680 000 FCFA.
- Maintenance : 600 000 × 4 = 2 400 000 FCFA.
- Pneus : 400 000 × 4 = 1 600 000 FCFA.
- Assurance : 450 000 × 4 = 1 800 000 FCFA.
- Taxes et visites : 100 000 × 4 = 400 000 FCFA.

TCO = 12 000 000 + 7 680 000 + 2 400 000 + 1 600 000 + 1 800 000 + 400 000 = 25 880 000 FCFA.

Kilométrage total : 30 000 × 4 = 120 000 km. Coût au km : 25 880 000 / 120 000 ≈ 216 FCFA. Coût mensuel : 25 880 000 / 48 ≈ 539 167 FCFA.

Observation : la dépréciation représente 12 000 000 / 25 880 000 ≈ 46 % du TCO et le carburant environ 30 %. Les leviers principaux sont donc le choix du modèle (valeur de revente) et la consommation.

## Comparer deux modes de détention

Le même véhicule est proposé en location longue durée (LLD) sur 4 ans à 380 000 FCFA par mois, maintenance, pneus et assurance compris. L''entreprise paie en plus le carburant et les frais administratifs non inclus.

- Loyers : 380 000 × 48 = 18 240 000 FCFA.
- Carburant : 7 680 000 FCFA.
- Frais administratifs : 400 000 FCFA.
- Total LLD : 26 320 000 FCFA.

L''achat revient moins cher de 26 320 000 - 25 880 000 = 440 000 FCFA sur 4 ans, soit environ 1,7 %. Mais l''achat immobilise 18 000 000 FCFA, fait porter le risque de revente à l''entreprise et ignore ici le coût du financement. La LLD offre un budget fixe. La décision dépend donc de la situation financière de l''entreprise, pas seulement du chiffre final.

## Utiliser le TCO dans la gestion

- Choisir les modèles lors du renouvellement, en comparant les TCO et non les prix d''achat.
- Fixer la durée de détention optimale : au-delà d''un certain kilométrage, la maintenance augmente plus vite que la dépréciation ne diminue.
- Suivre l''écart entre TCO prévu et TCO réel.

## Points clés

- Le TCO additionne dépréciation, financement, carburant, maintenance, pneus, assurance, taxes et coûts indirects.
- On l''exprime en total, par mois et par kilomètre.
- Dépréciation et carburant sont généralement les deux premiers postes.
- Achat et location se comparent sur le TCO, mais aussi sur la trésorerie et le risque.

## Exercices

- Exercice 1 : citez six composantes du TCO.
- Exercice 2 : véhicule acheté 12 000 000 FCFA, revendu 4 500 000 FCFA après 3 ans, 25 000 km par an, 7 L/100 km, carburant à 750 FCFA le litre (prix fictif), maintenance 450 000 FCFA par an, pneus 300 000 FCFA par an, assurance 350 000 FCFA par an (fictif), taxes 80 000 FCFA par an. Calculez le TCO sur 3 ans.
- Exercice 3 : calculez le coût au km du véhicule de l''exercice 2.
- Exercice 4 : pourquoi un véhicule moins cher à l''achat peut-il avoir un TCO plus élevé ?

## Corrigé

Exercice 1 : dépréciation, financement, carburant, maintenance, pneumatiques, assurance, taxes et visites, coûts indirects.

Exercice 2 : dépréciation 12 000 000 - 4 500 000 = 7 500 000 FCFA. Carburant : 25 000 × 7 / 100 = 1 750 L par an ; 1 750 × 750 = 1 312 500 FCFA par an ; 3 937 500 FCFA sur 3 ans. Maintenance 1 350 000 FCFA ; pneus 900 000 FCFA ; assurance 1 050 000 FCFA ; taxes 240 000 FCFA. TCO = 7 500 000 + 3 937 500 + 1 350 000 + 900 000 + 1 050 000 + 240 000 = 14 977 500 FCFA.

Exercice 3 : kilométrage total 75 000 km ; coût au km = 14 977 500 / 75 000 ≈ 199,7 FCFA.

Exercice 4 : parce qu''il peut consommer plus de carburant, demander plus de réparations, avoir des pièces plus chères ou moins disponibles, et se revendre à un prix plus faible : ces coûts dépassent l''économie réalisée à l''achat.', 'texte', 60, false, 50
from public.courses c where c.slug = 'formation-gestion-flotte'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Calculer le coût total de possession (TCO)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : piloter une flotte automobile, de l''inventaire au TCO', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : gestionnaires de flotte, chefs de parc, responsables administratifs et financiers.
- Objectifs : organiser l''inventaire et les échéances, piloter la maintenance et les pneus, calculer un TCO, mettre en place une politique conducteurs.
- Matériel : diaporama, tableur projeté avec un modèle de suivi de flotte, tableau blanc, calculatrice.
- Prérequis : pourcentages et règle de trois ; lecture des leçons du module recommandée.

## Déroulé minuté

## 00:00 – 05:00 · Introduction et cas fil rouge

Bonjour à tous. Aujourd''hui, vous êtes le nouveau gestionnaire de flotte de Sahel Distribution, une société fictive installée à Dakar avec des dépôts à Thiès et Kaolack. Elle possède 40 véhicules : 6 voitures de direction, 22 véhicules utilitaires légers, 8 camions et 4 motos. Le directeur financier vous fait trois reproches : les coûts augmentent, les véhicules sont souvent en panne, et un camion a été arrêté sur la route avec une assurance expirée. Vous avez une heure et demie pour lui présenter un plan.

Visuel : organigramme simplifié de Sahel Distribution et carte des trois sites. Question : par quoi commenceriez-vous ? Réponse attendue : savoir exactement ce que l''on gère.

## 05:00 – 17:00 · Inventaire et dossiers véhicules

Première étape : l''inventaire. Je projette le modèle de tableur. Chaque ligne est un véhicule avec un code interne, VL pour les véhicules légers, PL pour les poids lourds, MO pour les motos. Les colonnes : immatriculation, marque et modèle, numéro de châssis, date de mise en circulation, mode de détention, valeur, site, conducteur, kilométrage, état.

En faisant l''inventaire physique, votre prédécesseur aurait trouvé ce que l''on trouve presque toujours : des véhicules affectés à des personnes parties, des kilométrages non mis à jour, des documents manquants. Chez Sahel Distribution, l''inventaire révèle 3 véhicules sans carte grise au dossier, 2 camions dont l''assurance expire dans moins de 30 jours et un véhicule utilitaire immobilisé depuis cinq mois dans un garage de Thiès.

Ensuite, on crée un dossier par véhicule : documents d''identité, documents de conformité, carnet et historique d''entretien, sinistres, procès-verbaux de remise. Visuel : la liste de contrôle du dossier véhicule. Question à la salle : pourquoi le procès-verbal de remise est-il si important ? Réponse : il fixe l''état et le kilométrage au moment où le conducteur prend le véhicule.

## 17:00 – 30:00 · Échéances, assurances et sinistres

Deuxième étape : l''échéancier. Je construis devant vous un onglet avec une colonne assurance, une colonne visite technique, une colonne taxes. Une formule calcule le nombre de jours restants : date d''échéance moins date du jour. Une mise en forme conditionnelle colore en orange les valeurs inférieures à 30 et en rouge les valeurs négatives.

Règle de gestion : tout véhicule en rouge est immobilisé. C''est non négociable, car circuler sans assurance de responsabilité civile, obligatoire dans l''espace CIMA, expose l''entreprise à des sanctions et à des conséquences financières très lourdes en cas d''accident.

Parlons sinistres. Sahel Distribution a payé 12 000 000 FCFA de primes et ses sinistres ont coûté 9 600 000 FCFA. Calculons le ratio : 9 600 000 divisé par 12 000 000, soit 80 %. L''assureur annonce une hausse de prime. Que faire ? Analyser : où, quand, qui, pourquoi. Visuel : carte des sinistres. On constate que la moitié se produit sur le même axe entre Dakar et Thiès, en fin de journée. Les actions : revoir les horaires de tournée, former les conducteurs concernés à la conduite défensive, rappeler la charte.

## 30:00 – 42:00 · Maintenance préventive et curative

Troisième étape : la maintenance. L''an dernier, Sahel Distribution a dépensé 16 000 000 FCFA de maintenance pour 1 280 000 km parcourus. Coût au km : 16 000 000 divisé par 1 280 000, soit 12,5 FCFA. Mais seulement 6 400 000 FCFA concernaient le préventif, soit 40 %. Le reste, 60 %, est du curatif : on répare après la panne.

Visuel : graphique en barres préventif contre curatif. Le message est clair : il faut inverser la tendance. Construisons le plan préventif. Pour chaque modèle, on reprend le carnet du constructeur, on choisit le programme conditions sévères car nos véhicules roulent dans la poussière et la chaleur, et on calcule l''échéance de chaque opération.

Exemple au tableau : un utilitaire a eu sa dernière vidange à 85 000 km, l''intervalle prévu dans notre exemple est de 7 500 km, il affiche 91 300 km. Prochaine vidange à 92 500 km, il reste 1 200 km. Il roule 200 km par jour : l''intervention doit être faite dans les 6 jours.

Calculons aussi la disponibilité. 40 véhicules sur 30 jours font 1 200 jours-véhicules. Les immobilisations ont totalisé 132 jours. Disponibilité : 1 068 divisé par 1 200, soit 89 %. Objectif : dépasser 95 %. Rappel de la règle d''or : aucune facture payée sans ordre de réparation signé.

## 42:00 – 48:00 · Pause et quiz interactif

Pause active de quelques minutes. Répondez dans le chat.

Question 1 : un véhicule passe de 52 000 km à 79 000 km en un an : kilométrage mensuel moyen ? Réponse : 27 000 divisé par 12, soit 2 250 km.

Question 2 : primes 5 000 000 FCFA, sinistres 3 000 000 FCFA : ratio ? Réponse : 60 %.

Question 3 : vrai ou faux, on peut laisser circuler un véhicule dont la visite technique est expirée depuis deux jours si le trajet est court ? Réponse : faux, il est immobilisé jusqu''à régularisation.

Question 4 : 10 véhicules, 30 jours, 15 jours d''immobilisation : disponibilité ? Réponse : 285 divisé par 300, soit 95 %.

Question 5 : que signifie le chiffre 16 dans 205/55 R16 ? Réponse : le diamètre de la jante en pouces.

## 48:00 – 58:00 · Les pneumatiques

Quatrième étape : les pneus. Sahel Distribution achète ses pneus au fil des crevaisons, sans suivi. Résultat : des pneus de dimensions différentes sur un même essieu et une durée de vie moyenne de 28 000 km sur les utilitaires.

Visuel : un flanc de pneu agrandi avec son marquage. Je vous rappelle la lecture : largeur, rapport hauteur sur largeur, structure, diamètre de jante, indice de charge, indice de vitesse, et le code de date à quatre chiffres.

Calculons l''enjeu. Un train de 4 pneus coûte 260 000 FCFA montage compris. À 28 000 km de durée, le coût est 260 000 divisé par 28 000, soit environ 9,3 FCFA par km. Avec un bon entretien, on vise 40 000 km, soit 6,5 FCFA par km. Les 22 utilitaires roulent ensemble environ 700 000 km par an. Gain potentiel : 2,8 FCFA par km multiplié par 700 000 km, soit environ 1 960 000 FCFA par an.

Les actions : contrôle mensuel de la pression par le chef de parc, fiche de suivi par pneu, stock fermé avec échange pneu usé contre pneu neuf, contrôle de la géométrie après chaque choc signalé.

## 58:00 – 1:12:00 · Le coût total de possession

Cinquième étape : le TCO. Le directeur financier veut renouveler 10 utilitaires. Deux modèles sont en concurrence. Le modèle A coûte 17 000 000 FCFA, se revend 5 500 000 FCFA après 4 ans, consomme 8,5 L aux 100 km. Le modèle B coûte 19 000 000 FCFA, se revend 8 000 000 FCFA, consomme 7,5 L aux 100 km. Les deux roulent 30 000 km par an. Nous retenons un carburant à 800 FCFA le litre, prix fictif pour l''exercice. Maintenance, pneus, assurance et taxes : 1 550 000 FCFA par an pour A et 1 450 000 FCFA pour B.

Calculons ensemble pour le modèle A. Dépréciation : 17 000 000 moins 5 500 000, soit 11 500 000. Carburant par an : 30 000 fois 8,5 divisé par 100, soit 2 550 litres, fois 800, soit 2 040 000 FCFA, et 8 160 000 sur 4 ans. Autres coûts : 1 550 000 fois 4, soit 6 200 000. TCO de A : 11 500 000 plus 8 160 000 plus 6 200 000, soit 25 860 000 FCFA.

Modèle B. Dépréciation : 19 000 000 moins 8 000 000, soit 11 000 000. Carburant : 30 000 fois 7,5 divisé par 100, soit 2 250 litres, fois 800, soit 1 800 000 par an et 7 200 000 sur 4 ans. Autres coûts : 1 450 000 fois 4, soit 5 800 000. TCO de B : 11 000 000 plus 7 200 000 plus 5 800 000, soit 24 000 000 FCFA.

Le modèle B, plus cher de 2 000 000 FCFA à l''achat, coûte 1 860 000 FCFA de moins sur 4 ans. Pour 10 véhicules, l''économie atteint 18 600 000 FCFA. Coût au km de B : 24 000 000 divisé par 120 000, soit 200 FCFA. Visuel : graphique empilé des composantes du TCO pour A et B. Question à la salle : quelles informations faudrait-il encore vérifier avant de décider ? Réponses attendues : disponibilité des pièces, réseau de garages, fiabilité constatée sur des pistes, coût du financement.

## 1:12:00 – 1:21:00 · La politique conducteurs

Dernière étape : les conducteurs, qui déterminent une grande partie des coûts. Nous rédigeons ensemble les rubriques de la charte : conditions pour conduire avec permis vérifié et autorisation écrite ; usage autorisé ; règles de conduite, dont l''interdiction de l''alcool et du téléphone tenu en main ; contrôles quotidiens ; carnet de bord ; gestion des amendes ; sanctions.

Chaque conducteur la signe, et elle est cohérente avec le règlement intérieur. Je rappelle que le droit du travail sénégalais est en cours de réforme avec un projet de nouveau Code du travail : faites valider vos sanctions par un juriste selon les textes en vigueur. Visuel : exemple de fiche de contrôle quotidien du véhicule. Question : comment rendre la charte vivante ? Réponses : formation à l''arrivée, rappel annuel, analyse partagée des sinistres, reconnaissance des bons conducteurs.

## 1:21:00 – 1:30:00 · Synthèse et évaluation finale

Récapitulons le plan présenté au directeur financier : un inventaire et des dossiers complets ; un échéancier avec immobilisation des véhicules non conformes ; un plan préventif pour porter la part du préventif au-delà de 60 % ; un suivi des pneus ; des choix de véhicules fondés sur le TCO ; une charte conducteurs signée. Chaque mois, un tableau de bord suit la disponibilité, le coût au km, la part du préventif, la sinistralité et les échéances.

Évaluation finale.

Question 1 : citez trois documents du dossier véhicule. Réponse : carte grise, attestation d''assurance, procès-verbal de visite technique ; on accepte aussi le carnet d''entretien ou les procès-verbaux de remise.

Question 2 : 20 véhicules, 30 jours, 36 jours d''immobilisation : disponibilité ? Réponse : (600 - 36) / 600 = 94 %.

Question 3 : maintenance 7 200 000 FCFA dont 4 680 000 de préventif : part du préventif ? Réponse : 65 %.

Question 4 : 4 pneus pour 300 000 FCFA au total, durée 50 000 km : coût au km ? Réponse : 6 FCFA.

Question 5 : achat 15 000 000 FCFA, revente 5 000 000 FCFA, autres coûts sur la période 9 000 000 FCFA, 100 000 km : TCO et coût au km ? Réponse : 10 000 000 + 9 000 000 = 19 000 000 FCFA, soit 190 FCFA par km.

Merci pour votre attention. Votre mission : appliquer le modèle de tableur à votre propre flotte et calculer le TCO de vos trois véhicules les plus utilisés.', 'video', 90, false, 60
from public.courses c where c.slug = 'formation-gestion-flotte'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : piloter une flotte automobile, de l''inventaire au TCO');
