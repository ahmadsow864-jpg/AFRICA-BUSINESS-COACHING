-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Contenus initiaux du site. À exécuter après migrations/001_schema.sql.

insert into public.services (id, pole, title, short, description, features, icon, image_url, badge, sort) values
  ('paie-senegal', 'rh', 'Paie & RH Sénégal', 'Gestion de la paie et des RH selon le droit du travail sénégalais.', 'Logiciel de gestion de la paie et des ressources humaines construit sur le droit du travail et de la sécurité sociale sénégalais, avec un moteur juridique versionné : chaque règle est datée et sourcée (texte, article). Éditions Windows, Web et Cloud.', array['Entreprise, établissements, services et postes', 'Dossier salarié, contrats, avenants et carrière', 'Temps, présences et heures supplémentaires', 'Congés et absences (annuel, maladie, maternité…)', 'Variables : primes, indemnités, avantages', 'Calcul brut → net, cotisations et fiscalité', 'Bulletins de paie et déclarations', 'Avances, prêts et soldes de tout compte', 'Rôles et permissions, journal d''audit']::text[], '💼', 'img/modules/paie-senegal.svg', 'SoftwarePaie-Sénégal', 10),
  ('paie-uemoa', 'rh', 'Paie & RH UEMOA / CEDEAO', 'Un noyau commun, des référentiels juridiques par pays.', 'Un noyau de paie et RH réutilisable, complété par un référentiel juridique, social et fiscal propre à chaque pays. Les entreprises présentes dans plusieurs pays gèrent leurs salariés sur une seule plateforme.', array['Référentiels de règles par pays', 'Gestion multi-sociétés et multi-sites', 'Paramétrage des devises et calendriers', 'Bulletins et déclarations par pays', 'Consolidation des effectifs et de la masse salariale', 'Historique des règles et traçabilité']::text[], '🌍', 'img/modules/paie-uemoa.svg', 'Version multi-pays', 20),
  ('transport-logistique', 'transport', 'Transport & Logistique', 'Expéditions, entrepôts, livraisons et suivi des marchandises.', 'Pilotez toute la chaîne logistique : de la commande à la preuve de livraison, en passant par l''entrepôt et la planification des tournées.', array['Commandes et ordres de transport', 'Gestion des entrepôts et des stocks', 'Planification des livraisons', 'Suivi des colis et des marchandises', 'Bons de livraison et preuves de livraison', 'Facturation des prestations']::text[], '📦', 'img/modules/transport-logistique.svg', '', 30),
  ('carburant', 'transport', 'Gestion Carburant', 'Approvisionnement, consommation et contrôle des dépenses.', 'Maîtrisez vos dépenses de carburant : achats, bons et cartes, consommation par véhicule et détection des anomalies.', array['Achats et approvisionnements', 'Bons et cartes carburant', 'Consommation par véhicule et par conducteur', 'Détection des anomalies de consommation', 'Budgets et rapports de dépenses']::text[], '⛽', 'img/modules/carburant.svg', '', 40),
  ('transport', 'transport', 'Gestion Transport', 'Lignes, trajets, chauffeurs, voyageurs et recettes.', 'Organisez le transport de voyageurs et du personnel : lignes, horaires, affectations, billetterie et recettes.', array['Lignes, trajets et horaires', 'Affectation des chauffeurs et véhicules', 'Billetterie et réservations', 'Transport du personnel', 'Recettes et rapports d''activité']::text[], '🚌', 'img/modules/transport.svg', '', 50),
  ('parking-entreprise', 'transport', 'Parking dans les entreprises', 'Places, badges et accès pour le personnel et les visiteurs.', 'Gérez les parkings de vos sites : attribution des places, badges d''accès, visiteurs et taux d''occupation.', array['Plan et attribution des places', 'Badges et autorisations d''accès', 'Accueil et enregistrement des visiteurs', 'Historique des entrées et sorties', 'Taux d''occupation en temps réel']::text[], '🅿️', 'img/modules/parking-entreprise.svg', '', 60),
  ('parking-public', 'transport', 'Parkings hors entreprise', 'Parkings publics et privés : tickets, abonnements, caisse.', 'Exploitez des parkings publics ou privés sur plusieurs sites : tickets, abonnements, tarifs et recettes.', array['Parkings publics et privés, multi-sites', 'Tickets horaires et abonnements', 'Tarification paramétrable', 'Caisse et paiements', 'Rapports de recettes et d''occupation']::text[], '🏙️', 'img/modules/parking-public.svg', '', 70),
  ('station-service', 'transport', 'Station-service avancée', 'Pompes, cuves, boutique, lavage et caisse de la station.', 'Une gestion complète de station-service : distribution, stocks en cuves, boutique, lavage, équipes et contrôle des écarts.', array['Pompes, index et volumes distribués', 'Cuves, jaugeage et livraisons', 'Boutique, lubrifiants et lavage', 'Caisse, pompistes et relèves d''équipe', 'Clients professionnels et crédits', 'Rapprochement et contrôle des écarts']::text[], '🛢️', 'img/modules/station-service.svg', '', 80),
  ('flotte', 'vehicules', 'Gestion des Flottes', 'Véhicules, entretien, assurances, conducteurs et coûts.', 'Suivez chaque véhicule de votre parc : documents, entretien, échéances, conducteurs et coût total.', array['Parc de véhicules et documents', 'Entretien, réparations et pneumatiques', 'Assurances, visites techniques et échéances', 'Conducteurs et affectations', 'Coût total par véhicule']::text[], '🚚', 'img/modules/flotte.svg', '', 90),
  ('vente-vehicules', 'vehicules', 'Vente de Véhicules', 'Stock, clients, devis, ventes et suivi après-vente.', 'Pour les concessionnaires et revendeurs : stock, prospects, devis, ventes, paiements et après-vente.', array['Stock de véhicules neufs et d''occasion', 'Fiches clients et prospects', 'Devis, commandes et factures', 'Paiements et échéanciers', 'Suivi après-vente et garanties']::text[], '🚗', 'img/modules/vente-vehicules.svg', '', 100),
  ('gps', 'vehicules', 'GPS avancé', 'Géolocalisation en temps réel, itinéraires et alertes.', 'Localisez vos véhicules en temps réel, analysez les trajets et recevez des alertes.', array['Localisation des véhicules en temps réel', 'Historique des trajets', 'Zones géographiques et alertes', 'Excès de vitesse et arrêts', 'Rapports kilométriques']::text[], '🛰️', 'img/modules/gps.svg', '', 110),
  ('education', 'education', 'Éducation en ligne', 'Cours en ligne du collège au doctorat, par abonnement.', 'Une plateforme d''apprentissage en ligne pour les élèves et étudiants, du collège au doctorat. Chaque élève crée son compte, choisit une formule d''abonnement et accède aux cours de son niveau.', array['Collège, lycée, licence, master et doctorat', 'Compte personnel élève / étudiant', 'Abonnement par niveau ou tous niveaux', 'Leçons gratuites de découverte', 'Cours et leçons publiés par l''administrateur', 'Accès sécurisé aux contenus payants']::text[], '🎓', 'img/modules/education.svg', 'Nouveau', 120)
on conflict (id) do nothing;

insert into public.site_settings (key, value) values
  ('contact_email', 'sowsenfoods2026@outlook.fr'),
  ('contact_phone', '+221 70 912 84 96'),
  ('contact_city', 'Thiès, Sénégal'),
  ('hero_title', 'Des logiciels de gestion pour les entreprises de la francophonie'),
  ('hero_lead', 'Paie & Ressources Humaines, transport et logistique, carburant, parkings, stations-service, flottes, vente de véhicules, GPS et éducation en ligne : une plateforme de services pensée au Sénégal pour l''Afrique et toute la francophonie.'),
  ('payment_instructions', 'Effectuez le paiement selon les instructions communiquées par l''administrateur, puis saisissez la référence de la transaction. Votre accès est activé après vérification.')
on conflict (key) do nothing;

insert into public.levels (cycle, name, sort) values
  ('college', '6e', 10),
  ('college', '5e', 20),
  ('college', '4e', 30),
  ('college', '3e', 40),
  ('lycee', 'Seconde', 50),
  ('lycee', 'Première', 60),
  ('lycee', 'Terminale', 70),
  ('licence', 'Licence 1', 80),
  ('licence', 'Licence 2', 90),
  ('licence', 'Licence 3', 100),
  ('master', 'Master 1', 110),
  ('master', 'Master 2', 120),
  ('doctorat', 'Doctorat', 130),
  ('pro', 'Formation professionnelle', 140)
on conflict (name) do nothing;

-- Cours : Mathématiques 6e : nombres, géométrie et proportionnalité
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'maths-6e', (select id from public.levels where name = '6e'), null, 'Mathématiques', 'Mathématiques 6e : nombres, géométrie et proportionnalité', 'Ce cours couvre l''essentiel du programme de mathématiques de 6e : nombres entiers et décimaux, fractions, géométrie de base, périmètres et aires, proportionnalité. Il s''adresse aux élèves entrant au collège et à leurs parents. Prérequis : maîtriser les quatre opérations sur les entiers vues à l''école élémentaire.', true, 10
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Nombres entiers et nombres décimaux', '## Objectifs de la leçon

- Lire, écrire et décomposer les nombres entiers et les nombres décimaux.
- Comparer, ranger et arrondir des nombres décimaux.
- Effectuer les quatre opérations et résoudre des problèmes de la vie courante.

## Les nombres entiers

Un nombre entier naturel sert à compter : 0, 1, 2, 3… Pour l''écrire, on utilise dix chiffres (0 à 9) et la position de chaque chiffre donne sa valeur. Dans 4 527 318, le chiffre 4 est le chiffre des millions, 5 celui des centaines de mille, 2 celui des dizaines de mille, 7 celui des unités de mille, 3 celui des centaines, 1 celui des dizaines et 8 celui des unités.

Pour lire facilement un grand nombre, on le sépare en tranches de trois chiffres en partant de la droite : 4 527 318 se lit « quatre millions cinq cent vingt-sept mille trois cent dix-huit ».

## Les nombres décimaux

Un nombre décimal possède une partie entière et une partie décimale, séparées par une virgule. Dans 25,476 : la partie entière est 25 ; le chiffre 4 est le chiffre des dixièmes, 7 celui des centièmes et 6 celui des millièmes.

- 1 dixième = 1/10 = 0,1
- 1 centième = 1/100 = 0,01
- 1 millième = 1/1 000 = 0,001

On peut donc écrire 25,476 = 25 + 4/10 + 7/100 + 6/1 000. Un nombre décimal peut aussi s''écrire comme une fraction décimale : 25,476 = 25 476/1 000.

Remarque importante : on peut ajouter ou supprimer des zéros à droite de la partie décimale sans changer le nombre. 3,5 = 3,50 = 3,500. En revanche 3,05 n''est pas égal à 3,5.

## Comparer et ranger des décimaux

Méthode :
- On compare d''abord les parties entières : le nombre qui a la plus grande partie entière est le plus grand.
- Si les parties entières sont égales, on compare les chiffres des dixièmes, puis des centièmes, puis des millièmes.

Exemple : comparer 12,8 et 12,75. Les parties entières sont égales (12). Chiffre des dixièmes : 8 contre 7. Donc 12,8 > 12,75. Piège : 12,75 n''est pas plus grand « parce que 75 > 8 » ; écrivez 12,80 et 12,75 pour comparer.

Ranger dans l''ordre croissant, c''est écrire du plus petit au plus grand avec le symbole < ; dans l''ordre décroissant, du plus grand au plus petit avec >.

## Arrondir et donner une valeur approchée

Pour arrondir au dixième, on regarde le chiffre des centièmes : s''il vaut 0, 1, 2, 3 ou 4, on garde le chiffre des dixièmes ; s''il vaut 5, 6, 7, 8 ou 9, on ajoute 1 au chiffre des dixièmes.

Exemple : 14,368 arrondi à l''unité donne 14 ; au dixième 14,4 ; au centième 14,37.

## Les quatre opérations

Addition et soustraction posées : on aligne les virgules les unes sous les autres, on complète avec des zéros si nécessaire, puis on calcule comme avec des entiers. Exemple : 125,6 + 38,75 = 164,35 et 200 − 64,8 = 135,2.

Multiplication : on multiplie sans tenir compte des virgules, puis on place la virgule dans le résultat de sorte qu''il ait autant de chiffres après la virgule que les deux facteurs réunis. Exemple : 3,4 × 2,5. On calcule 34 × 25 = 850 ; il y a 2 décimales au total, donc 3,4 × 2,5 = 8,50 = 8,5.

Multiplier par 10, 100, 1 000 : on décale la virgule de 1, 2 ou 3 rangs vers la droite. 4,56 × 100 = 456. Diviser par 10, 100, 1 000 : on décale vers la gauche. 37 ÷ 100 = 0,37.

Division euclidienne : diviser 157 par 12, c''est trouver le quotient q et le reste r tels que 157 = 12 × q + r avec r < 12. Ici 12 × 13 = 156, donc q = 13 et r = 1.

## Exemple de la vie courante

Au marché Sandaga, Fatou achète 2,5 kg de tomates à 600 FCFA le kilogramme et un sac d''oignons à 1 750 FCFA. Prix des tomates : 2,5 × 600 = 1 500 FCFA. Total : 1 500 + 1 750 = 3 250 FCFA. Si elle paie avec un billet de 5 000 FCFA, on lui rend 5 000 − 3 250 = 1 750 FCFA.

## Points clés

- La valeur d''un chiffre dépend de sa position dans le nombre.
- Pour comparer des décimaux, on compare chiffre par chiffre de gauche à droite, après avoir égalisé le nombre de décimales.
- Dans une addition posée, on aligne les virgules ; dans une multiplication, on compte les décimales.

## Exercices

Exercice 1 : Écrire en chiffres « deux millions trois cent mille quarante-cinq », puis donner le chiffre des dizaines de mille.

Exercice 2 : Ranger dans l''ordre croissant : 3,5 ; 3,05 ; 3,505 ; 3,055.

Exercice 3 : Calculer : a) 12,75 + 8,4 ; b) 50 − 17,35 ; c) 2,5 × 1,2 ; d) 63,8 ÷ 10.

Exercice 4 : Arrondir 7,846 à l''unité, au dixième puis au centième.

Exercice 5 : Awa achète 3 kg de riz à 450 FCFA le kilogramme et 2 litres d''huile à 1 250 FCFA le litre. Elle paie avec un billet de 5 000 FCFA. Combien lui rend-on ?

## Corrigé

Exercice 1 : 2 300 045. Le chiffre des dizaines de mille est 0 (on lit 2 / 3 0 0 / 0 4 5 : millions 2, centaines de mille 3, dizaines de mille 0).

Exercice 2 : On écrit tous les nombres avec trois décimales : 3,500 ; 3,050 ; 3,505 ; 3,055. Donc 3,05 < 3,055 < 3,5 < 3,505.

Exercice 3 : a) 12,75 + 8,40 = 21,15. b) 50,00 − 17,35 = 32,65. c) 25 × 12 = 300, deux décimales, donc 2,5 × 1,2 = 3,00 = 3. d) 63,8 ÷ 10 = 6,38.

Exercice 4 : À l''unité : 8 (le chiffre des dixièmes est 8, on arrondit au-dessus). Au dixième : 7,8 (le chiffre des centièmes est 4). Au centième : 7,85 (le chiffre des millièmes est 6).

Exercice 5 : Riz : 3 × 450 = 1 350 FCFA. Huile : 2 × 1 250 = 2 500 FCFA. Total : 1 350 + 2 500 = 3 850 FCFA. Monnaie rendue : 5 000 − 3 850 = 1 150 FCFA.', 'texte', 45, true, 10
from public.courses c where c.slug = 'maths-6e'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Nombres entiers et nombres décimaux');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Les fractions', '## Objectifs de la leçon

- Comprendre ce que représente une fraction.
- Reconnaître des fractions égales et simplifier une fraction.
- Comparer, additionner et soustraire des fractions simples.
- Calculer une fraction d''une quantité.

## Qu''est-ce qu''une fraction ?

Une fraction s''écrit a/b, où a est le numérateur et b le dénominateur (b n''est jamais égal à 0). Le dénominateur indique en combien de parts égales on partage l''unité ; le numérateur indique combien de parts on prend.

Exemple : on partage une galette en 8 parts égales et Ibrahima en mange 3. Il a mangé 3/8 de la galette.

Une fraction est aussi le résultat d''une division : 3/4 = 3 ÷ 4 = 0,75. Ainsi 1/2 = 0,5 ; 1/4 = 0,25 ; 3/4 = 0,75 ; 1/5 = 0,2. Certaines fractions comme 1/3 ne tombent pas juste : 1/3 ≈ 0,333.

- Si le numérateur est plus petit que le dénominateur, la fraction est plus petite que 1 (exemple 2/5).
- Si le numérateur est égal au dénominateur, la fraction vaut 1 (exemple 7/7).
- Si le numérateur est plus grand, la fraction est plus grande que 1 (exemple 9/4 = 2 + 1/4).

## Fractions égales et simplification

Propriété : on ne change pas une fraction en multipliant (ou en divisant) son numérateur et son dénominateur par un même nombre non nul.

Exemple : 2/3 = (2 × 4)/(3 × 4) = 8/12. Et 15/20 = (15 ÷ 5)/(20 ÷ 5) = 3/4.

Simplifier une fraction, c''est l''écrire avec un numérateur et un dénominateur plus petits. On utilise les critères de divisibilité :
- un nombre est divisible par 2 s''il se termine par 0, 2, 4, 6 ou 8 ;
- par 5 s''il se termine par 0 ou 5 ;
- par 3 si la somme de ses chiffres est divisible par 3 ;
- par 9 si la somme de ses chiffres est divisible par 9.

Une fraction est irréductible quand on ne peut plus la simplifier. Exemple : 36/48. On divise par 12 (ou par 2 plusieurs fois, puis par 3) : 36/48 = 3/4, qui est irréductible.

## Comparer des fractions

- Même dénominateur : la plus grande est celle qui a le plus grand numérateur. 5/9 > 2/9.
- Même numérateur : la plus grande est celle qui a le plus petit dénominateur. 3/4 > 3/7 (des quarts sont plus gros que des septièmes).
- Dénominateurs différents : on réduit au même dénominateur. Pour comparer 2/3 et 3/5, on écrit 2/3 = 10/15 et 3/5 = 9/15. Donc 2/3 > 3/5.

## Additionner et soustraire

Si les dénominateurs sont égaux, on additionne (ou soustrait) les numérateurs et on garde le dénominateur : 2/7 + 3/7 = 5/7 ; 8/9 − 5/9 = 3/9 = 1/3.

Si les dénominateurs sont différents, on commence par les rendre égaux. Exemple : 1/2 + 1/4 = 2/4 + 1/4 = 3/4. Autre exemple : 5/6 − 1/3 = 5/6 − 2/6 = 3/6 = 1/2.

Attention à l''erreur classique : 1/2 + 1/4 n''est pas égal à 2/6. On n''additionne jamais les dénominateurs.

## Fraction d''une quantité

Pour prendre a/b d''une quantité, on divise la quantité par b puis on multiplie par a (ou l''inverse).

Exemple : un commerçant de Thiès a un stock de 120 sacs de ciment. Il en vend les 3/4. Il a vendu 120 ÷ 4 × 3 = 30 × 3 = 90 sacs. Il lui reste 30 sacs, c''est-à-dire 1/4 du stock.

Autre exemple : un élève dépense les 2/5 de son argent de poche de 2 500 FCFA. Il dépense 2 500 ÷ 5 × 2 = 1 000 FCFA.

## Méthode pour un problème de partage

- Repérer l''unité (le tout) : le champ, le salaire, le stock…
- Écrire chaque part sous forme de fraction.
- Réduire au même dénominateur et additionner les parts connues.
- Trouver la part restante en retirant de 1 (c''est-à-dire de b/b).
- Calculer la quantité correspondante.

## Points clés

- a/b = a ÷ b ; le dénominateur n''est jamais nul.
- Multiplier ou diviser le numérateur et le dénominateur par un même nombre ne change pas la fraction.
- Pour additionner ou comparer, il faut le même dénominateur.
- Prendre a/b d''une quantité : diviser par b, multiplier par a.

## Exercices

Exercice 1 : Simplifier pour obtenir une fraction irréductible : a) 18/24 ; b) 35/49 ; c) 45/60.

Exercice 2 : Comparer 3/5 et 7/10.

Exercice 3 : Calculer : a) 2/7 + 3/7 ; b) 5/6 − 1/3 ; c) 3/4 + 1/8.

Exercice 4 : Mariama reçoit 2 000 FCFA. Elle en dépense les 3/4 pour acheter des fournitures. Combien a-t-elle dépensé ? Combien lui reste-t-il ?

Exercice 5 : Moussa cultive un champ de 1 500 m². Il plante 2/5 du champ en arachide et 1/3 en mil. Le reste est planté en niébé. Quelle fraction du champ est plantée en niébé ? Quelle surface cela représente-t-il ?

## Corrigé

Exercice 1 : a) 18/24 : on divise par 6 : 3/4. b) 35/49 : on divise par 7 : 5/7. c) 45/60 : on divise par 15 : 3/4.

Exercice 2 : 3/5 = 6/10. Comme 6/10 < 7/10, on a 3/5 < 7/10.

Exercice 3 : a) 5/7. b) 5/6 − 2/6 = 3/6 = 1/2. c) 6/8 + 1/8 = 7/8.

Exercice 4 : 2 000 ÷ 4 × 3 = 500 × 3 = 1 500 FCFA dépensés. Il lui reste 2 000 − 1 500 = 500 FCFA (soit 1/4 de la somme).

Exercice 5 : Parts connues : 2/5 + 1/3 = 6/15 + 5/15 = 11/15. Part du niébé : 15/15 − 11/15 = 4/15. Surface : 1 500 ÷ 15 × 4 = 100 × 4 = 400 m². Vérification : arachide 600 m², mil 500 m², niébé 400 m², total 1 500 m².', 'texte', 45, false, 20
from public.courses c where c.slug = 'maths-6e'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Les fractions');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Géométrie de base : droites, angles et triangles', '## Objectifs de la leçon

- Connaître le vocabulaire de base : point, droite, demi-droite, segment.
- Reconnaître des droites parallèles et perpendiculaires et utiliser leurs propriétés.
- Mesurer, construire et classer des angles.
- Connaître les triangles particuliers et la somme des angles d''un triangle.

## Points, droites, segments

Un point se note avec une lettre majuscule. Par deux points distincts A et B passe une seule droite, notée (AB). Une droite est illimitée des deux côtés.

- La demi-droite [AB) commence en A et passe par B, sans fin de l''autre côté.
- Le segment [AB] est la portion de droite limitée par A et B. Sa longueur se note AB.
- Le milieu I du segment [AB] est le point de [AB] tel que AI = IB.

Des points sont alignés lorsqu''ils appartiennent à une même droite.

## Droites parallèles et perpendiculaires

Deux droites sont sécantes si elles se coupent en un point. Elles sont perpendiculaires si elles se coupent en formant un angle droit ; on note (d) ⊥ (d''). Deux droites qui ne se coupent jamais sont parallèles ; on note (d) // (d'').

Trois propriétés à connaître :
- Si deux droites sont parallèles à une même troisième, alors elles sont parallèles entre elles.
- Si deux droites sont perpendiculaires à une même troisième, alors elles sont parallèles entre elles.
- Si deux droites sont parallèles et qu''une troisième est perpendiculaire à l''une, alors elle est perpendiculaire à l''autre.

Exemple concret : sur un plan du quartier, deux rues tracées perpendiculairement à la même grande avenue sont parallèles entre elles.

La médiatrice d''un segment est la droite perpendiculaire à ce segment qui passe par son milieu. Tout point de la médiatrice est à égale distance des deux extrémités du segment.

## Les angles

Un angle est formé par deux demi-droites de même origine, appelée sommet. On le mesure en degrés avec un rapporteur.

- Angle nul : 0°.
- Angle aigu : entre 0° et 90°.
- Angle droit : 90° (on le vérifie avec l''équerre).
- Angle obtus : entre 90° et 180°.
- Angle plat : 180°.

Méthode pour mesurer un angle avec le rapporteur : placer le centre du rapporteur sur le sommet ; aligner le zéro d''une graduation sur un côté de l''angle ; lire la mesure sur la même graduation, là où passe l''autre côté. Vérifier ensuite à l''œil : un angle visiblement aigu ne peut pas mesurer 140°.

La bissectrice d''un angle est la demi-droite qui le partage en deux angles de même mesure.

## Les triangles

Un triangle ABC a trois sommets, trois côtés et trois angles.

Propriété fondamentale : la somme des mesures des trois angles d''un triangle est toujours égale à 180°.

Triangles particuliers :
- Triangle isocèle : deux côtés de même longueur. Les deux angles à la base sont égaux.
- Triangle équilatéral : trois côtés de même longueur. Ses trois angles mesurent 60° (180 ÷ 3).
- Triangle rectangle : il possède un angle droit. Les deux autres angles sont aigus et leur somme vaut 90°. Le côté opposé à l''angle droit s''appelle l''hypoténuse.

Inégalité triangulaire : pour qu''un triangle existe, la longueur de chaque côté doit être inférieure à la somme des deux autres. Par exemple, avec des côtés de 3 cm, 4 cm et 8 cm, c''est impossible car 3 + 4 = 7 < 8.

## Construire un triangle

Pour construire un triangle ABC avec AB = 6 cm, AC = 5 cm et BC = 4 cm :
- tracer le segment [AB] de 6 cm ;
- avec le compas, tracer un arc de centre A et de rayon 5 cm ;
- tracer un arc de centre B et de rayon 4 cm ;
- le point d''intersection des deux arcs est C ; relier A, B et C.

## Exemple d''application

Le toit d''une case a la forme d''un triangle isocèle dont l''angle au sommet mesure 100°. Les angles à la base sont égaux et leur somme vaut 180° − 100° = 80°. Chacun mesure donc 80 ÷ 2 = 40°.

## Points clés

- Deux perpendiculaires à une même droite sont parallèles.
- Somme des angles d''un triangle : 180°.
- Isocèle : deux angles égaux ; équilatéral : trois angles de 60° ; rectangle : un angle de 90°.
- Un triangle n''existe que si chaque côté est plus petit que la somme des deux autres.

## Exercices

Exercice 1 : Donner la nature des angles suivants : 35° ; 90° ; 130° ; 180°.

Exercice 2 : Dans un triangle ABC, l''angle en A mesure 50° et l''angle en B mesure 60°. Calculer l''angle en C.

Exercice 3 : Un triangle isocèle a un angle principal (au sommet) de 40°. Calculer ses angles à la base.

Exercice 4 : Les droites (d1) et (d2) sont toutes les deux perpendiculaires à la droite (d). Que peut-on dire de (d1) et (d2) ? Justifier.

Exercice 5 : Peut-on construire un triangle dont les côtés mesurent 5 cm, 7 cm et 10 cm ? Et avec 2 cm, 3 cm et 6 cm ?

## Corrigé

Exercice 1 : 35° : angle aigu ; 90° : angle droit ; 130° : angle obtus ; 180° : angle plat.

Exercice 2 : Angle C = 180° − (50° + 60°) = 180° − 110° = 70°.

Exercice 3 : Les deux angles à la base sont égaux. Leur somme vaut 180° − 40° = 140°, donc chacun mesure 140 ÷ 2 = 70°.

Exercice 4 : (d1) et (d2) sont parallèles, car si deux droites sont perpendiculaires à une même droite, alors elles sont parallèles entre elles.

Exercice 5 : 5, 7, 10 : le plus grand côté est 10 et 5 + 7 = 12 > 10, le triangle existe. 2, 3, 6 : 2 + 3 = 5 < 6, le triangle n''existe pas.', 'texte', 50, false, 30
from public.courses c where c.slug = 'maths-6e'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Géométrie de base : droites, angles et triangles');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Périmètres et aires', '## Objectifs de la leçon

- Distinguer périmètre et aire.
- Connaître les formules du rectangle, du carré, du triangle et du cercle.
- Convertir des unités de longueur et d''aire.
- Résoudre des problèmes concrets (clôture, carrelage, champ).

## Périmètre et aire : deux notions différentes

Le périmètre d''une figure est la longueur de son contour. Il s''exprime en unités de longueur : m, cm, km…

L''aire d''une figure est la mesure de la surface qu''elle occupe. Elle s''exprime en unités d''aire : m², cm², hectares…

Exemple : pour clôturer un terrain, on a besoin de son périmètre (longueur de grillage). Pour le carreler ou le cultiver, on a besoin de son aire.

## Les unités

Longueurs : km, hm, dam, m, dm, cm, mm. Chaque unité vaut 10 fois l''unité suivante. 1 km = 1 000 m ; 1 m = 100 cm.

Aires : km², hm², dam², m², dm², cm², mm². Chaque unité vaut 100 fois l''unité suivante. 1 m² = 100 dm² = 10 000 cm².

Unités agraires, très utilisées pour les champs et les terrains :
- 1 are (a) = 1 dam² = 100 m² ;
- 1 hectare (ha) = 1 hm² = 10 000 m².

Exemple : un champ de 2,5 ha mesure 2,5 × 10 000 = 25 000 m².

## Formules à connaître

Rectangle de longueur L et de largeur l :
- Périmètre P = 2 × (L + l)
- Aire A = L × l

Carré de côté c :
- P = 4 × c
- A = c × c = c²

Triangle de base b et de hauteur h (la hauteur est perpendiculaire à la base et passe par le sommet opposé) :
- A = (b × h) / 2
- Le périmètre est la somme des trois côtés.

Triangle rectangle : les deux côtés de l''angle droit jouent le rôle de base et de hauteur, donc A = (côté 1 × côté 2) / 2.

Cercle et disque de rayon r (le diamètre vaut d = 2 × r) :
- Périmètre du cercle P = 2 × π × r = π × d
- Aire du disque A = π × r × r = π × r²
- On prend souvent π ≈ 3,14.

## Méthode de résolution

- Faire un schéma et y reporter les mesures.
- Vérifier que toutes les longueurs sont dans la même unité ; sinon, convertir.
- Choisir la bonne formule (contour ou surface ?).
- Calculer, puis écrire l''unité correcte (m pour un périmètre, m² pour une aire).
- Répondre par une phrase.

## Exemples

Exemple 1 : une salle de classe rectangulaire mesure 9 m sur 7 m. Périmètre : 2 × (9 + 7) = 32 m. Aire : 9 × 7 = 63 m². Si un carreau carré mesure 50 cm de côté, son aire est 0,5 × 0,5 = 0,25 m². Il faut 63 ÷ 0,25 = 252 carreaux (sans compter les pertes).

Exemple 2 : un puits circulaire a un rayon de 1 m. Le tour de la margelle mesure environ 2 × 3,14 × 1 = 6,28 m et l''ouverture a une aire d''environ 3,14 × 1 × 1 = 3,14 m².

Exemple 3 : une figure composée. Un terrain a la forme d''un rectangle de 20 m sur 12 m auquel on ajoute un triangle rectangle dont les côtés de l''angle droit mesurent 12 m et 5 m. Aire totale : 20 × 12 + (12 × 5) / 2 = 240 + 30 = 270 m².

## Erreurs fréquentes

- Confondre périmètre et aire.
- Oublier de convertir : on ne multiplie pas des mètres par des centimètres.
- Utiliser le diamètre à la place du rayon dans π × r².
- Pour le triangle, oublier de diviser par 2.

## Points clés

- Périmètre : longueur du contour ; aire : mesure de la surface.
- Rectangle : P = 2(L + l), A = L × l. Carré : P = 4c, A = c².
- Triangle : A = b × h / 2. Cercle : P = 2πr ; disque : A = πr².
- 1 m² = 10 000 cm² ; 1 ha = 10 000 m².

## Exercices

Exercice 1 : Calculer le périmètre et l''aire d''un rectangle de 12 m sur 7,5 m.

Exercice 2 : Calculer le périmètre et l''aire d''un carré de 6 cm de côté.

Exercice 3 : Calculer l''aire d''un triangle de base 10 cm et de hauteur 6 cm.

Exercice 4 : Un bassin circulaire a un rayon de 5 m. Calculer la longueur de son bord et son aire (π ≈ 3,14).

Exercice 5 : M. Ndiaye veut clôturer son jardin rectangulaire de 25 m sur 18 m. Il laisse une ouverture de 3 m pour le portail. Le grillage coûte 1 500 FCFA le mètre. Calculer la longueur de grillage nécessaire et le prix à payer.

## Corrigé

Exercice 1 : P = 2 × (12 + 7,5) = 2 × 19,5 = 39 m. A = 12 × 7,5 = 90 m².

Exercice 2 : P = 4 × 6 = 24 cm. A = 6 × 6 = 36 cm².

Exercice 3 : A = (10 × 6) / 2 = 60 / 2 = 30 cm².

Exercice 4 : Bord : P = 2 × 3,14 × 5 = 31,4 m. Aire : A = 3,14 × 5 × 5 = 3,14 × 25 = 78,5 m².

Exercice 5 : Périmètre du jardin : 2 × (25 + 18) = 2 × 43 = 86 m. Grillage : 86 − 3 = 83 m. Prix : 83 × 1 500 = 124 500 FCFA.', 'texte', 50, false, 40
from public.courses c where c.slug = 'maths-6e'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Périmètres et aires');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'La proportionnalité et les pourcentages', '## Objectifs de la leçon

- Reconnaître une situation de proportionnalité.
- Compléter un tableau de proportionnalité par différentes méthodes.
- Calculer et appliquer un pourcentage.
- Utiliser une échelle sur un plan ou une carte.

## Qu''est-ce que la proportionnalité ?

Deux grandeurs sont proportionnelles lorsqu''on passe des valeurs de l''une aux valeurs de l''autre en multipliant toujours par le même nombre, appelé coefficient de proportionnalité.

Exemple : au marché, le kilogramme de mangues coûte 500 FCFA.

- 1 kg → 500 FCFA
- 2 kg → 1 000 FCFA
- 3 kg → 1 500 FCFA
- 5 kg → 2 500 FCFA

Le prix est proportionnel à la masse : on multiplie toujours par 500. Le coefficient de proportionnalité est 500.

Contre-exemple : un taxi demande 500 FCFA de prise en charge plus 200 FCFA par kilomètre. Pour 1 km on paie 700 FCFA, pour 2 km 900 FCFA. 700 × 2 = 1 400 ≠ 900 : le prix n''est pas proportionnel à la distance.

Autre contre-exemple : la taille d''un enfant n''est pas proportionnelle à son âge.

## Reconnaître un tableau de proportionnalité

On calcule le quotient de chaque valeur de la deuxième ligne par la valeur correspondante de la première ligne. Si tous les quotients sont égaux, le tableau est un tableau de proportionnalité.

Exemple : 2 → 6 ; 5 → 15 ; 8 → 24. Les quotients 6/2, 15/5 et 24/8 valent tous 3 : c''est un tableau de proportionnalité de coefficient 3.

## Méthodes pour compléter un tableau

Méthode 1, le coefficient : on cherche le nombre par lequel on multiplie et on l''applique.

Méthode 2, le passage par l''unité (règle de trois) : 4 cahiers coûtent 1 000 FCFA. Un cahier coûte 1 000 ÷ 4 = 250 FCFA. Donc 7 cahiers coûtent 7 × 250 = 1 750 FCFA.

Méthode 3, les propriétés de linéarité : si 4 cahiers coûtent 1 000 FCFA, alors 8 cahiers (le double) coûtent 2 000 FCFA ; et 12 cahiers (4 + 8) coûtent 1 000 + 2 000 = 3 000 FCFA.

Méthode 4, le produit en croix (quatrième proportionnelle) : si a/b = c/x, alors x = (b × c) / a. Exemple : 3 kg de riz pour 12 personnes ; pour 20 personnes il faut x kg avec 3/12 = x/20, donc x = (3 × 20) / 12 = 60 / 12 = 5 kg.

## Les pourcentages

Un pourcentage est une proportion rapportée à 100. « 15 % » signifie « 15 pour 100 », c''est-à-dire 15/100.

Pour calculer t % d''une quantité Q, on calcule Q × t / 100.

Exemple : une boutique de Dakar accorde une remise de 20 % sur une paire de chaussures à 12 500 FCFA. Remise : 12 500 × 20 / 100 = 2 500 FCFA. Nouveau prix : 12 500 − 2 500 = 10 000 FCFA.

Pour exprimer une proportion en pourcentage : dans une classe de 50 élèves, 30 sont des filles. La proportion de filles est 30/50 = 60/100 = 60 %.

## Les échelles

Sur un plan ou une carte, les distances sont proportionnelles aux distances réelles. L''échelle est le coefficient qui permet de passer de la réalité au plan : échelle = distance sur le plan / distance réelle (dans la même unité).

Exemple : sur une carte au 1/50 000, 1 cm représente 50 000 cm, c''est-à-dire 500 m. Une distance de 3 cm sur la carte représente 3 × 50 000 = 150 000 cm = 1,5 km.

## Méthode générale

- Vérifier que la situation est bien proportionnelle (le coefficient est-il constant ?).
- Organiser les données dans un tableau.
- Choisir la méthode la plus simple : coefficient, unité, linéarité ou produit en croix.
- Vérifier la vraisemblance du résultat et rédiger une phrase-réponse.

## Points clés

- Proportionnalité : on multiplie toujours par le même coefficient.
- Le passage par l''unité et le produit en croix permettent de trouver une valeur manquante.
- t % de Q = Q × t / 100.
- Échelle = distance sur le plan / distance réelle, dans la même unité.

## Exercices

Exercice 1 : 4 cahiers coûtent 1 000 FCFA. Quel est le prix de 7 cahiers ? de 10 cahiers ?

Exercice 2 : Les tableaux suivants sont-ils des tableaux de proportionnalité ? a) 2 → 6 ; 5 → 15 ; 8 → 24. b) 3 → 12 ; 5 → 20 ; 7 → 30.

Exercice 3 : Un pagne coûte 8 000 FCFA. Le commerçant accorde une remise de 15 %. Calculer le montant de la remise et le prix payé.

Exercice 4 : Sur une carte au 1/50 000, deux villages sont séparés de 3 cm. Quelle est la distance réelle en km ?

Exercice 5 : Pour préparer un thiéboudiène pour 12 personnes, une cuisinière utilise 3 kg de riz. Quelle quantité de riz faut-il pour 20 personnes ?

## Corrigé

Exercice 1 : Prix d''un cahier : 1 000 ÷ 4 = 250 FCFA. 7 cahiers : 7 × 250 = 1 750 FCFA. 10 cahiers : 10 × 250 = 2 500 FCFA.

Exercice 2 : a) 6/2 = 15/5 = 24/8 = 3 : oui, coefficient 3. b) 12/3 = 4 et 20/5 = 4, mais 30/7 ≈ 4,29 ≠ 4 : ce n''est pas un tableau de proportionnalité.

Exercice 3 : Remise : 8 000 × 15 / 100 = 1 200 FCFA. Prix payé : 8 000 − 1 200 = 6 800 FCFA.

Exercice 4 : 3 × 50 000 = 150 000 cm = 1 500 m = 1,5 km.

Exercice 5 : x = (3 × 20) / 12 = 60 / 12 = 5 kg de riz. Vérification par l''unité : 3 kg pour 12 personnes, soit 0,25 kg par personne ; 20 × 0,25 = 5 kg.', 'texte', 45, false, 50
from public.courses c where c.slug = 'maths-6e'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'La proportionnalité et les pourcentages');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : révision guidée du programme de 6e', '## Fiche du cours vidéo

- Durée : 1h30.
- Thème : révision guidée du programme de 6e, des nombres décimaux à la proportionnalité.
- Objectifs : consolider le calcul sur les décimaux et les fractions, réinvestir la géométrie (angles, triangles), calculer périmètres et aires, résoudre des problèmes de proportionnalité.
- Matériel : tableau ou diaporama, règle, équerre, rapporteur, compas, calculatrice (seulement pour vérifier), cahier de brouillon.
- Prérequis : avoir lu les cinq leçons écrites du cours.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et présentation de la séance

« Bonjour à toutes et à tous, et bienvenue dans ce cours vidéo de mathématiques de 6e. Pendant une heure trente, nous allons faire ensemble le tour de tout ce que vous avez appris : les nombres décimaux, les fractions, la géométrie, les périmètres et les aires, et enfin la proportionnalité. Préparez votre cahier de brouillon, votre règle, votre équerre et votre rapporteur. Je vous demanderai souvent de mettre la vidéo en pause pour chercher seuls avant de regarder la correction : c''est comme cela que l''on progresse. »

Visuel : le plan de la séance en cinq blocs, avec une icône pour chacun.

## 05:00 – 18:00 · Bloc 1 : les nombres décimaux

« Commençons par un petit défi. Au tableau, j''écris quatre nombres : 4,7 ; 4,07 ; 4,70 ; 4,007. Lesquels sont égaux ? Mettez en pause et réfléchissez. »

« Correction : 4,7 et 4,70 sont égaux, car on peut ajouter un zéro à droite de la partie décimale sans changer le nombre. 4,07 a 0 dixième et 7 centièmes : il est plus petit. 4,007 est le plus petit des quatre. Rangement croissant : 4,007 < 4,07 < 4,7 = 4,70. »

Ensuite, le formateur pose une multiplication : « Calculons 1,25 × 3,2. Je multiplie 125 par 32 : 125 × 32 = 4 000. Il y a deux décimales dans 1,25 et une dans 3,2, soit trois au total. Le résultat est donc 4,000, c''est-à-dire 4. Vérifions par un ordre de grandeur : 1 × 3 = 3 et 1,5 × 3 = 4,5 ; 4 est bien entre les deux. »

Problème rapide : « Un taxi-brousse transporte 14 passagers ; chacun paie 2 750 FCFA. Quelle est la recette ? » Réponse détaillée : 14 × 2 750 = 14 × 2 000 + 14 × 750 = 28 000 + 10 500 = 38 500 FCFA.

Question à poser : « Pourquoi est-il utile de calculer un ordre de grandeur ? » Réponse attendue : pour détecter une erreur de virgule.

## 18:00 – 30:00 · Bloc 2 : les fractions

« Passons aux fractions. Rappelez-vous : a/b, c''est a divisé par b. Le dénominateur dit en combien de parts on coupe l''unité. »

Visuel : un rectangle partagé en 12 cases dont 8 sont coloriées. « Quelle fraction est coloriée ? 8/12. Simplifions : on divise par 4, on obtient 2/3. Le dessin le confirme : si je regroupe les cases par 4, j''ai 3 groupes dont 2 sont coloriés. »

Calcul au tableau : « 1/2 + 1/3. Attention, ce n''est pas 2/5 ! Je mets au même dénominateur : 1/2 = 3/6 et 1/3 = 2/6. Donc 1/2 + 1/3 = 5/6. »

Problème : « Une famille de Kaolack consacre 1/4 de son budget à la nourriture et 1/6 au transport. Le budget mensuel est de 240 000 FCFA. Quelle fraction reste-t-il ? Combien cela fait-il ? » Correction : 1/4 + 1/6 = 3/12 + 2/12 = 5/12 ; reste 7/12 ; 240 000 ÷ 12 × 7 = 20 000 × 7 = 140 000 FCFA. Vérification : nourriture 60 000, transport 40 000, reste 140 000, total 240 000.

## 30:00 – 42:00 · Bloc 3 : droites, angles et triangles

« Prenez votre équerre. Tracez une droite (d), puis deux droites (d1) et (d2) perpendiculaires à (d). Que remarquez-vous ? Elles ne se coupent pas : elles sont parallèles. C''est une propriété que vous devez savoir citer pour justifier. »

« Maintenant, les angles. Je montre trois angles au tableau. Le premier mesure 45° : il est aigu. Le deuxième 90° : droit. Le troisième 150° : obtus. »

Démonstration visuelle : on découpe les trois coins d''un triangle en papier et on les met côte à côte ; ils forment un angle plat. « Voilà pourquoi la somme des angles d''un triangle vaut 180°. »

Exercice guidé : « Dans un triangle rectangle, un angle aigu mesure 35°. Combien mesure l''autre ? » Réponse : 90° − 35° = 55°, car les deux angles aigus d''un triangle rectangle ont une somme de 90°.

Question : « Un triangle peut-il avoir deux angles obtus ? » Réponse : non, car deux angles de plus de 90° dépasseraient déjà 180°.

## 42:00 – 50:00 · Pause active et quiz interactif

« Faisons une pause active. Levez-vous, étirez-vous, puis répondez à ces cinq questions en deux minutes, sans calculatrice. »

- Question 1 : 0,5 + 0,25 = ? Réponse : 0,75.
- Question 2 : 3/4 de 80 = ? Réponse : 60.
- Question 3 : un triangle équilatéral a des angles de combien de degrés ? Réponse : 60°.
- Question 4 : combien de m² dans un hectare ? Réponse : 10 000 m².
- Question 5 : 10 % de 4 500 FCFA = ? Réponse : 450 FCFA.

« Comptez vos points. Quatre ou cinq bonnes réponses : excellent. Moins de trois : reprenez les leçons concernées après la séance. »

## 50:00 – 1:02:00 · Bloc 4 : périmètres et aires

« Un terrain de football de quartier mesure 90 m sur 45 m. Pour tracer les lignes de touche et de but, il faut le périmètre : 2 × (90 + 45) = 270 m. Pour savoir combien de gazon semer, il faut l''aire : 90 × 45 = 4 050 m². »

Visuel : une figure composée en forme de maison, un carré de 8 m de côté surmonté d''un triangle de base 8 m et de hauteur 3 m. « Aire du carré : 8 × 8 = 64 m². Aire du triangle : 8 × 3 / 2 = 12 m². Aire totale : 76 m². »

Le cercle : « Une roue de charrette a un diamètre de 1 m. Quelle distance parcourt-elle en un tour ? Son périmètre : π × d ≈ 3,14 × 1 = 3,14 m. En 100 tours, elle parcourt environ 314 m. »

Question piège : « Un carré de 4 cm de côté et un rectangle de 8 cm sur 2 cm ont-ils la même aire ? le même périmètre ? » Réponse : même aire (16 cm²) mais périmètres différents (16 cm et 20 cm).

## 1:02:00 – 1:14:00 · Bloc 5 : proportionnalité et pourcentages

« Dernier bloc. Une couturière de Saint-Louis utilise 2,5 m de tissu pour 1 boubou. Combien de tissu pour 6 boubous ? Situation proportionnelle : 6 × 2,5 = 15 m. Et avec 40 m de tissu, combien de boubous ? 40 ÷ 2,5 = 16 boubous. »

Tableau au diaporama : boubous 1, 2, 6, 16 ; tissu 2,5 ; 5 ; 15 ; 40. « Le coefficient est 2,5. »

Pourcentage : « Le prix d''un sac de riz de 25 kg passe de 12 000 FCFA à 13 200 FCFA. De combien de pour cent a-t-il augmenté ? Hausse : 1 200 FCFA. 1 200 / 12 000 = 0,1 = 10 %. »

Échelle : « Sur un plan au 1/200, une chambre mesure 2 cm sur 1,5 cm. Dimensions réelles : 2 × 200 = 400 cm = 4 m et 1,5 × 200 = 300 cm = 3 m. »

## 1:14:00 – 1:22:00 · Synthèse

« Résumons ce que vous devez retenir. »

- Décimaux : aligner les virgules pour additionner, compter les décimales pour multiplier.
- Fractions : même dénominateur pour additionner et comparer ; a/b d''une quantité = diviser par b, multiplier par a.
- Géométrie : deux perpendiculaires à une même droite sont parallèles ; somme des angles d''un triangle = 180°.
- Mesures : périmètre en m, aire en m² ; ne pas oublier la division par 2 pour le triangle.
- Proportionnalité : coefficient constant, passage par l''unité, t % de Q = Q × t / 100.

## 1:22:00 – 1:30:00 · Évaluation finale

« Pour terminer, une évaluation de cinq questions. Mettez la vidéo en pause, faites-les sur votre cahier, puis regardez les réponses. »

- Question 1 : Ranger dans l''ordre croissant 2,3 ; 2,03 ; 2,33. Réponse : 2,03 < 2,3 < 2,33.
- Question 2 : Calculer 2/3 + 1/6. Réponse : 4/6 + 1/6 = 5/6.
- Question 3 : Dans un triangle isocèle, les angles à la base mesurent 65°. Combien mesure l''angle au sommet ? Réponse : 180° − 2 × 65° = 50°.
- Question 4 : Aire d''un disque de rayon 10 cm (π ≈ 3,14). Réponse : 3,14 × 100 = 314 cm².
- Question 5 : 5 stylos coûtent 750 FCFA. Prix de 8 stylos ? Réponse : 750 ÷ 5 = 150 FCFA le stylo ; 8 × 150 = 1 200 FCFA.

« Bravo pour votre travail. Pour progresser encore, refaites les exercices des leçons sans regarder le corrigé, puis comparez. À bientôt ! »', 'video', 90, false, 60
from public.courses c where c.slug = 'maths-6e'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : révision guidée du programme de 6e');
