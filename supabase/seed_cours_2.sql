-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Cours (partie 2/16). À exécuter après seed.sql.

-- Cours : Mathématiques 3e : préparer le BFEM
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'maths-3e', (select id from public.levels where name = '3e'), null, 'Mathématiques', 'Mathématiques 3e : préparer le BFEM', 'Ce cours reprend les grands chapitres du programme de 3e : calcul littéral et identités remarquables, équations, inéquations et systèmes, théorèmes de Pythagore et de Thalès, trigonométrie, statistiques. Il vise la réussite au BFEM grâce à des méthodes de rédaction et un sujet type commenté. Prérequis : programme de 4e (calcul sur les relatifs et les fractions, puissances, triangle rectangle).', true, 30
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Calcul littéral et identités remarquables', '## Objectifs de la leçon

- Développer et réduire une expression littérale.
- Connaître et utiliser les trois identités remarquables.
- Factoriser une expression (facteur commun, identités remarquables).

## Vocabulaire

Une expression littérale contient des lettres qui représentent des nombres. Développer, c''est transformer un produit en somme. Factoriser, c''est l''inverse : transformer une somme en produit. Réduire, c''est regrouper les termes de même nature (les x², les x, les constantes).

## La distributivité

- Simple distributivité : k(a + b) = ka + kb.
- Double distributivité : (a + b)(c + d) = ac + ad + bc + bd.

Exemple : (2x + 3)(x − 4) = 2x × x + 2x × (−4) + 3 × x + 3 × (−4) = 2x² − 8x + 3x − 12 = 2x² − 5x − 12.

Attention aux signes devant une parenthèse : −(x − 5) = −x + 5. Quand on soustrait un produit, on le développe d''abord entre crochets, puis on change tous les signes.

## Les identités remarquables

Pour tous nombres a et b :
- (a + b)² = a² + 2ab + b²
- (a − b)² = a² − 2ab + b²
- (a + b)(a − b) = a² − b²

Exemples de développement :
- (x + 4)² = x² + 2 × x × 4 + 4² = x² + 8x + 16.
- (3x − 2)² = (3x)² − 2 × 3x × 2 + 2² = 9x² − 12x + 4.
- (5 + 2x)(5 − 2x) = 25 − 4x².

Erreur très fréquente : (a + b)² n''est pas égal à a² + b². On oublie le « double produit » 2ab. Vérification avec a = 3 et b = 4 : (3 + 4)² = 49, alors que 3² + 4² = 25.

Calcul mental grâce aux identités : 51² = (50 + 1)² = 2 500 + 100 + 1 = 2 601. 49 × 51 = (50 − 1)(50 + 1) = 2 500 − 1 = 2 499.

## Factoriser

Méthode 1, le facteur commun : ka + kb = k(a + b).
Exemple : (x + 1)(2x − 5) + (x + 1)(x + 3). Le facteur commun est (x + 1). On obtient (x + 1)[(2x − 5) + (x + 3)] = (x + 1)(3x − 2).

Méthode 2, reconnaître une identité remarquable :
- x² − 25 = x² − 5² = (x − 5)(x + 5).
- 9x² + 6x + 1 = (3x)² + 2 × 3x × 1 + 1² = (3x + 1)².
- 4x² − 20x + 25 = (2x − 5)².
- (x + 2)² − 9 = (x + 2 − 3)(x + 2 + 3) = (x − 1)(x + 5).

Pour reconnaître a² + 2ab + b², on cherche deux carrés, puis on vérifie que le terme restant est bien le double produit.

## Méthode générale pour un exercice de type BFEM

On donne souvent une expression E et on demande : développer et réduire E ; factoriser E ; calculer E pour une valeur ; résoudre E = 0.
- Pour calculer E pour une valeur, choisir la forme la plus pratique (souvent la forme factorisée).
- Vérifier une factorisation en la redéveloppant.

## Exemple concret

Un terrain carré de côté x mètres à Diamniadio est agrandi de 3 m sur chaque dimension. Sa nouvelle aire est (x + 3)² = x² + 6x + 9. L''augmentation d''aire est donc 6x + 9 m². Pour x = 20 m, l''aire passe de 400 m² à 529 m², soit 129 m² de plus (6 × 20 + 9 = 129).

## Points clés

- Développer : produit → somme. Factoriser : somme → produit.
- (a + b)² = a² + 2ab + b² ; (a − b)² = a² − 2ab + b² ; (a + b)(a − b) = a² − b².
- Ne jamais oublier le double produit.
- Toujours vérifier une factorisation en redéveloppant.

## Exercices

Exercice 1 : Développer et réduire : a) (x + 5)² ; b) (2x − 3)² ; c) (3x + 1)(3x − 1).

Exercice 2 : Factoriser : a) x² − 49 ; b) 4x² + 12x + 9 ; c) (x + 2)(3x − 1) + (x + 2)(x + 4).

Exercice 3 : Calculer mentalement en utilisant une identité : a) 101² ; b) 99 × 101.

Exercice 4 : On donne E = (2x + 1)² − (x − 3)(2x + 1). a) Développer et réduire E. b) Factoriser E. c) Calculer E pour x = −1/2.

Exercice 5 : Un champ rectangulaire mesure (x + 6) m de long et (x − 6) m de large. Exprimer son aire en fonction de x, puis la calculer pour x = 30.

## Corrigé

Exercice 1 : a) x² + 10x + 25. b) 4x² − 12x + 9. c) 9x² − 1.

Exercice 2 : a) (x − 7)(x + 7). b) (2x + 3)², car 4x² = (2x)², 9 = 3² et 12x = 2 × 2x × 3. c) (x + 2)[(3x − 1) + (x + 4)] = (x + 2)(4x + 3).

Exercice 3 : a) 101² = (100 + 1)² = 10 000 + 200 + 1 = 10 201. b) 99 × 101 = (100 − 1)(100 + 1) = 10 000 − 1 = 9 999.

Exercice 4 : a) (2x + 1)² = 4x² + 4x + 1 ; (x − 3)(2x + 1) = 2x² + x − 6x − 3 = 2x² − 5x − 3. E = 4x² + 4x + 1 − 2x² + 5x + 3 = 2x² + 9x + 4. b) E = (2x + 1)[(2x + 1) − (x − 3)] = (2x + 1)(x + 4). Vérification : (2x + 1)(x + 4) = 2x² + 8x + x + 4 = 2x² + 9x + 4. c) Pour x = −1/2, 2x + 1 = 0, donc E = 0.

Exercice 5 : Aire = (x + 6)(x − 6) = x² − 36. Pour x = 30 : 900 − 36 = 864 m² (vérification : 36 × 24 = 864).', 'texte', 50, true, 10
from public.courses c where c.slug = 'maths-3e'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Calcul littéral et identités remarquables');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Équations, inéquations et systèmes', '## Objectifs de la leçon

- Résoudre une équation du premier degré et une équation produit nul.
- Résoudre une inéquation du premier degré et représenter ses solutions.
- Résoudre un système de deux équations à deux inconnues.
- Mettre un problème en équation.

## Équations du premier degré

Une équation est une égalité contenant une inconnue. La résoudre, c''est trouver toutes les valeurs de l''inconnue qui rendent l''égalité vraie.

Règles :
- On peut ajouter ou soustraire un même nombre aux deux membres.
- On peut multiplier ou diviser les deux membres par un même nombre non nul.

Exemple : 5x − 4 = 2x + 11. On soustrait 2x : 3x − 4 = 11. On ajoute 4 : 3x = 15. On divise par 3 : x = 5. Vérification : 5 × 5 − 4 = 21 et 2 × 5 + 11 = 21.

## Équation produit nul

Propriété : un produit de facteurs est nul si et seulement si l''un au moins des facteurs est nul.

Exemple : (x − 3)(2x + 5) = 0 équivaut à x − 3 = 0 ou 2x + 5 = 0, donc x = 3 ou x = −5/2. L''ensemble des solutions est {−5/2 ; 3}.

Utilité : pour résoudre x² − 16 = 0, on factorise : (x − 4)(x + 4) = 0, donc x = 4 ou x = −4.

## Inéquations du premier degré

On résout comme une équation, avec une règle supplémentaire très importante : quand on multiplie ou divise les deux membres par un nombre négatif, on change le sens de l''inégalité.

Exemple 1 : 3x + 2 < 14. 3x < 12, donc x < 4. Les solutions sont tous les nombres strictement inférieurs à 4 ; sur une droite graduée, on hachure la partie à droite de 4 (partie qui n''est pas solution) et on met un crochet tourné vers l''extérieur de la zone solution pour montrer que 4 est exclu.

Exemple 2 : −2x + 5 ≥ 11. −2x ≥ 6. On divise par −2, on change le sens : x ≤ −3.

## Systèmes de deux équations à deux inconnues

Méthode par substitution :
- exprimer une inconnue en fonction de l''autre dans une équation ;
- remplacer dans l''autre équation ;
- résoudre puis calculer la seconde inconnue.

Exemple : x + y = 10 et 2x + 3y = 26. De la première : x = 10 − y. Dans la seconde : 2(10 − y) + 3y = 26, soit 20 + y = 26, donc y = 6 et x = 4.

Méthode par combinaison (addition) : on multiplie les équations pour que les coefficients d''une inconnue soient opposés, puis on additionne.
Exemple : 3x + 2y = 16 et 5x − 2y = 16. En additionnant : 8x = 32, donc x = 4 ; puis 12 + 2y = 16, donc y = 2.

On vérifie toujours le couple trouvé dans les deux équations.

## Mettre un problème en équation

- Choisir l''inconnue et l''écrire clairement (« soit x le prix… »).
- Traduire l''énoncé par une équation ou un système.
- Résoudre.
- Vérifier et répondre par une phrase avec l''unité.

Exemple : un tailleur de Pikine vend des chemises à 6 000 FCFA. Ses frais fixes mensuels sont de 90 000 FCFA et chaque chemise lui coûte 2 500 FCFA en tissu et fil. Combien doit-il en vendre au minimum pour faire un bénéfice positif ? Soit x le nombre de chemises. Bénéfice = 6 000x − 2 500x − 90 000 = 3 500x − 90 000. On veut 3 500x − 90 000 > 0, soit x > 90 000 / 3 500 ≈ 25,7. Il doit vendre au moins 26 chemises.

## Points clés

- Équation : mêmes opérations sur les deux membres.
- Produit nul : l''un des facteurs est nul.
- Inéquation : on change le sens quand on multiplie ou divise par un négatif.
- Système : substitution ou combinaison, puis vérification.

## Exercices

Exercice 1 : Résoudre 3x − 7 = 2x + 5.

Exercice 2 : Résoudre (x − 4)(2x + 6) = 0.

Exercice 3 : Résoudre les inéquations : a) 5x − 3 ≤ 2x + 9 ; b) −2x + 1 > 7.

Exercice 4 : Résoudre le système : x + y = 10 et 2x + 3y = 26 (par combinaison cette fois).

Exercice 5 : Au marché Castors, 3 kg de mangues et 2 kg d''oranges coûtent 2 600 FCFA ; 1 kg de mangues et 4 kg d''oranges coûtent 2 200 FCFA. Trouver le prix d''un kilogramme de chaque fruit.

## Corrigé

Exercice 1 : 3x − 2x = 5 + 7, donc x = 12. Vérification : 36 − 7 = 29 et 24 + 5 = 29.

Exercice 2 : x − 4 = 0 ou 2x + 6 = 0, donc x = 4 ou x = −3.

Exercice 3 : a) 3x ≤ 12, donc x ≤ 4. b) −2x > 6 ; on divise par −2 et on change le sens : x < −3.

Exercice 4 : On multiplie la première équation par −2 : −2x − 2y = −20. On additionne avec 2x + 3y = 26 : y = 6. Puis x = 10 − 6 = 4. Solution (4 ; 6).

Exercice 5 : Soit m le prix d''un kg de mangues et o celui d''un kg d''oranges. 3m + 2o = 2 600 et m + 4o = 2 200. De la seconde : m = 2 200 − 4o. Dans la première : 6 600 − 12o + 2o = 2 600, soit −10o = −4 000, donc o = 400 et m = 2 200 − 1 600 = 600. Le kg de mangues coûte 600 FCFA et le kg d''oranges 400 FCFA. Vérification : 1 800 + 800 = 2 600 et 600 + 1 600 = 2 200.', 'texte', 50, false, 20
from public.courses c where c.slug = 'maths-3e'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Équations, inéquations et systèmes');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Théorèmes de Pythagore et de Thalès', '## Objectifs de la leçon

- Utiliser le théorème de Pythagore et sa réciproque.
- Utiliser le théorème de Thalès et sa réciproque.
- Rédiger correctement une démonstration géométrique.

## Le théorème de Pythagore

Énoncé : si un triangle ABC est rectangle en A, alors BC² = AB² + AC². Le côté [BC], opposé à l''angle droit, est l''hypoténuse : c''est le plus long côté.

Utilisation : calculer une longueur dans un triangle rectangle.

Exemple : ABC est rectangle en A avec AB = 5 cm et AC = 12 cm. BC² = 25 + 144 = 169, donc BC = √169 = 13 cm.

Calcul d''un côté de l''angle droit : si BC = 10 et AB = 6, alors AC² = BC² − AB² = 100 − 36 = 64, donc AC = 8.

## La réciproque de Pythagore

Énoncé : si dans un triangle ABC on a BC² = AB² + AC², alors le triangle est rectangle en A.

Méthode : calculer séparément le carré du plus grand côté et la somme des carrés des deux autres. S''il y a égalité, le triangle est rectangle ; sinon, il ne l''est pas (c''est la contraposée).

Application pratique : les maçons utilisent la « règle du 3-4-5 » pour vérifier un angle droit : 3² + 4² = 9 + 16 = 25 = 5².

## Le théorème de Thalès

Configuration : deux droites (BM) et (CN) sécantes en A, avec (MN) parallèle à (BC) (configuration « triangle emboîté » ou « papillon »).

Énoncé : si les points A, M, B d''une part et A, N, C d''autre part sont alignés, et si (MN) // (BC), alors AM/AB = AN/AC = MN/BC.

Exemple : AM = 4, AB = 10, AC = 15, BC = 12, (MN) // (BC). AN = AM × AC / AB = 4 × 15 / 10 = 6. MN = AM × BC / AB = 4 × 12 / 10 = 4,8.

Application : mesurer la hauteur d''un arbre. Un bâton vertical de 1,5 m projette une ombre de 2 m ; au même moment, un fromager projette une ombre de 12 m. Les rayons du soleil sont parallèles, donc par Thalès : hauteur / 1,5 = 12 / 2, soit hauteur = 1,5 × 6 = 9 m.

## La réciproque de Thalès

Énoncé : si les points A, M, B et A, N, C sont alignés dans le même ordre, et si AM/AB = AN/AC, alors (MN) // (BC).

Méthode : calculer les deux rapports séparément (sous forme décimale ou fractions simplifiées), comparer, vérifier l''ordre des points, puis conclure.

Contraposée : si AM/AB ≠ AN/AC, alors les droites (MN) et (BC) ne sont pas parallèles.

## Rédaction type

« Dans le triangle ABC, M ∈ [AB] et N ∈ [AC], et (MN) // (BC). D''après le théorème de Thalès, AM/AB = AN/AC = MN/BC. Donc… »

Une démonstration se rédige toujours en trois temps : les données (on sait que…), la propriété utilisée (or, d''après…), la conclusion (donc…).

## Points clés

- Pythagore : triangle rectangle → calcul de longueur.
- Réciproque de Pythagore : égalité des carrés → triangle rectangle.
- Thalès : droites parallèles → rapports égaux.
- Réciproque de Thalès : rapports égaux et même ordre → droites parallèles.

## Exercices

Exercice 1 : ABC est rectangle en A, AB = 6 cm et AC = 8 cm. Calculer BC.

Exercice 2 : Un triangle a pour côtés 5 cm, 12 cm et 13 cm. Est-il rectangle ?

Exercice 3 : Dans un triangle rectangle, l''hypoténuse mesure 15 cm et un côté de l''angle droit 9 cm. Calculer le troisième côté.

Exercice 4 : Dans le triangle ABC, M ∈ [AB], N ∈ [AC] et (MN) // (BC). AM = 3 cm, AB = 5 cm, AC = 7,5 cm, BC = 6 cm. Calculer AN et MN.

Exercice 5 : A, M, B sont alignés dans cet ordre, ainsi que A, N, C. AM = 2, AB = 5, AN = 3, AC = 7,5. Les droites (MN) et (BC) sont-elles parallèles ?

## Corrigé

Exercice 1 : D''après Pythagore, BC² = 6² + 8² = 36 + 64 = 100, donc BC = 10 cm.

Exercice 2 : Le plus grand côté est 13 : 13² = 169. 5² + 12² = 25 + 144 = 169. Il y a égalité ; d''après la réciproque de Pythagore, le triangle est rectangle (l''angle droit est opposé au côté de 13 cm).

Exercice 3 : x² = 15² − 9² = 225 − 81 = 144, donc x = 12 cm.

Exercice 4 : D''après Thalès, AM/AB = AN/AC = MN/BC, soit 3/5 = AN/7,5 = MN/6. AN = 3 × 7,5 / 5 = 4,5 cm. MN = 3 × 6 / 5 = 3,6 cm.

Exercice 5 : AM/AB = 2/5 = 0,4 et AN/AC = 3/7,5 = 0,4. Les rapports sont égaux et les points sont alignés dans le même ordre ; d''après la réciproque de Thalès, (MN) // (BC).', 'texte', 50, false, 30
from public.courses c where c.slug = 'maths-3e'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Théorèmes de Pythagore et de Thalès');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Trigonométrie dans le triangle rectangle', '## Objectifs de la leçon

- Définir le cosinus, le sinus et la tangente d''un angle aigu.
- Calculer une longueur ou un angle dans un triangle rectangle.
- Utiliser les relations cos² x + sin² x = 1 et tan x = sin x / cos x.

## Définitions

Dans un triangle ABC rectangle en A, pour l''angle aigu B :
- le côté adjacent à B est [AB] ;
- le côté opposé à B est [AC] ;
- l''hypoténuse est [BC].

On définit :
- cos B = côté adjacent / hypoténuse = AB / BC ;
- sin B = côté opposé / hypoténuse = AC / BC ;
- tan B = côté opposé / côté adjacent = AC / AB.

Moyen mnémotechnique : « SOH CAH TOA » (Sinus = Opposé / Hypoténuse ; Cosinus = Adjacent / Hypoténuse ; Tangente = Opposé / Adjacent).

Pour un angle aigu, le cosinus et le sinus sont compris entre 0 et 1 (car l''hypoténuse est le plus grand côté). La tangente est un nombre positif quelconque.

## Relations trigonométriques

Pour tout angle aigu x :
- cos² x + sin² x = 1 ;
- tan x = sin x / cos x.

Démonstration rapide de la première : cos² B + sin² B = (AB² + AC²) / BC² = BC² / BC² = 1, d''après Pythagore.

Exemple : si cos x = 0,8, alors sin² x = 1 − 0,64 = 0,36, donc sin x = 0,6 (positif car x est aigu), et tan x = 0,6 / 0,8 = 0,75.

## Valeurs remarquables

- cos 30° = √3/2 ≈ 0,866 ; sin 30° = 1/2 ; tan 30° = √3/3 ≈ 0,577.
- cos 45° = sin 45° = √2/2 ≈ 0,707 ; tan 45° = 1.
- cos 60° = 1/2 ; sin 60° = √3/2 ≈ 0,866 ; tan 60° = √3 ≈ 1,732.

## Méthode : calculer une longueur

- Repérer l''angle connu et situer les côtés (adjacent, opposé, hypoténuse).
- Choisir la formule qui relie le côté connu et le côté cherché.
- Écrire l''égalité, puis isoler l''inconnue.

Exemple : ABC rectangle en A, angle B = 40°, BC = 8 cm. Calculer AB. AB est adjacent à B et BC est l''hypoténuse : cos 40° = AB / 8, donc AB = 8 × cos 40° ≈ 8 × 0,766 ≈ 6,13 cm.

## Méthode : calculer un angle

On calcule le cosinus, le sinus ou la tangente de l''angle, puis on utilise la touche cos⁻¹ (ou Arccos), sin⁻¹ ou tan⁻¹ de la calculatrice, réglée en degrés.

Exemple : une rampe d''accès pour fauteuil roulant monte de 1 m sur une distance horizontale de 12 m. tan x = 1 / 12 ≈ 0,0833, donc x ≈ 4,8°.

## Application concrète

Un technicien installe une antenne de téléphonie près de Louga. Il tend un câble entre le sommet de l''antenne et un point du sol situé à 15 m de son pied. Le câble fait un angle de 60° avec le sol. Hauteur de l''antenne : tan 60° = h / 15, donc h = 15 × √3 ≈ 25,98 m, soit environ 26 m. Longueur du câble : cos 60° = 15 / L, donc L = 15 / 0,5 = 30 m.

## Points clés

- cos = adjacent / hypoténuse ; sin = opposé / hypoténuse ; tan = opposé / adjacent.
- cos² x + sin² x = 1 et tan x = sin x / cos x.
- Calculatrice en mode degrés ; arrondir seulement à la fin.

## Exercices

Exercice 1 : ABC est rectangle en A avec AB = 4, AC = 3 et BC = 5. Calculer cos B, sin B et tan B.

Exercice 2 : ABC est rectangle en A, l''angle B mesure 30° et BC = 10 cm. Calculer AC et AB (valeur exacte et arrondi au centième).

Exercice 3 : x est un angle aigu tel que cos x = 0,6. Calculer sin x et tan x.

Exercice 4 : Une échelle de 5 m est appuyée contre un mur vertical. Elle fait un angle de 60° avec le sol horizontal. À quelle hauteur arrive-t-elle sur le mur ? À quelle distance du mur est son pied ?

Exercice 5 : Dans un triangle rectangle en A, AB = AC = 7 cm. Calculer la mesure de l''angle B.

## Corrigé

Exercice 1 : cos B = AB / BC = 4/5 = 0,8 ; sin B = AC / BC = 3/5 = 0,6 ; tan B = AC / AB = 3/4 = 0,75. Vérification : 0,8² + 0,6² = 0,64 + 0,36 = 1.

Exercice 2 : AC est opposé à B : sin 30° = AC / 10, donc AC = 10 × 1/2 = 5 cm. AB est adjacent : cos 30° = AB / 10, donc AB = 10 × √3/2 = 5√3 ≈ 8,66 cm.

Exercice 3 : sin² x = 1 − 0,36 = 0,64, donc sin x = 0,8. tan x = 0,8 / 0,6 = 4/3 ≈ 1,33.

Exercice 4 : Hauteur : sin 60° = h / 5, donc h = 5 × √3/2 ≈ 4,33 m. Distance au mur : cos 60° = d / 5, donc d = 5 × 0,5 = 2,5 m.

Exercice 5 : tan B = AC / AB = 7/7 = 1, donc B = 45°. (Le triangle est rectangle isocèle.)', 'texte', 45, false, 40
from public.courses c where c.slug = 'maths-3e'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Trigonométrie dans le triangle rectangle');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Statistiques et méthode pour le BFEM', '## Objectifs de la leçon

- Organiser des données et calculer effectifs, fréquences et effectifs cumulés.
- Calculer une moyenne (simple et pondérée), une médiane, un mode, une étendue.
- Représenter une série (diagramme en bâtons, circulaire, histogramme).
- Adopter une méthode efficace pour l''épreuve de mathématiques du BFEM.

## Vocabulaire

- Population : l''ensemble étudié (les élèves d''une classe, les boutiques d''un quartier).
- Caractère : ce que l''on étudie (la note, le nombre d''enfants, le chiffre d''affaires).
- Effectif d''une valeur : le nombre de fois où elle apparaît. Effectif total : N.
- Fréquence : effectif / effectif total. On l''exprime souvent en pourcentage.
- Effectif cumulé croissant : somme des effectifs des valeurs inférieures ou égales.

## Les indicateurs

- Moyenne : somme des valeurs / effectif total. Si les données sont dans un tableau, moyenne pondérée = (somme des valeurs × effectifs) / N.
- Médiane : valeur qui partage la série ordonnée en deux groupes de même effectif. Si N est impair, c''est la valeur du milieu ; si N est pair, c''est la moyenne des deux valeurs centrales.
- Mode : la valeur qui a le plus grand effectif.
- Étendue : plus grande valeur − plus petite valeur.

## Exemple 1 : une série simple

Notes sur 20 de 11 élèves : 8 ; 12 ; 15 ; 10 ; 9 ; 14 ; 12 ; 7 ; 16 ; 12 ; 11.
Série ordonnée : 7 ; 8 ; 9 ; 10 ; 11 ; 12 ; 12 ; 12 ; 14 ; 15 ; 16.
- Somme : 126. Moyenne : 126 / 11 ≈ 11,45.
- Médiane : N = 11, la 6e valeur : 12.
- Mode : 12 (trois fois). Étendue : 16 − 7 = 9.

## Exemple 2 : un tableau d''effectifs

Une enquête dans un quartier de Rufisque porte sur le nombre d''enfants de 50 familles :
- 0 enfant : 4 familles ; 1 : 6 ; 2 : 10 ; 3 : 12 ; 4 : 8 ; 5 : 6 ; 6 : 4.

Moyenne : (0 × 4 + 1 × 6 + 2 × 10 + 3 × 12 + 4 × 8 + 5 × 6 + 6 × 4) / 50 = (0 + 6 + 20 + 36 + 32 + 30 + 24) / 50 = 148 / 50 = 2,96 enfants.

Effectifs cumulés croissants : 4 ; 10 ; 20 ; 32 ; 40 ; 46 ; 50. La médiane est la moyenne des 25e et 26e valeurs ; toutes deux valent 3 (car l''effectif cumulé passe de 20 à 32 pour la valeur 3). Médiane : 3.

Fréquence des familles de 3 enfants : 12 / 50 = 0,24 = 24 %.

## Représentations graphiques

- Diagramme en bâtons : pour un caractère discret ; hauteur du bâton proportionnelle à l''effectif.
- Diagramme circulaire : angle d''un secteur = 360° × effectif / N. Pour 12 familles sur 50 : 360 × 12 / 50 = 86,4°.
- Histogramme : pour des données regroupées en classes de même amplitude ; rectangles accolés.

Pour une série en classes, on calcule la moyenne en utilisant le centre de chaque classe : centre de [10 ; 20[ = 15.

## Préparer l''épreuve de mathématiques du BFEM

Les informations officielles (durée, barème, coefficients) sont fixées par l''Office du BFEM et le ministère : consultez toujours les textes et annales officielles de l''année. Voici une méthode générale qui vaut pour toute épreuve écrite :
- Lire tout le sujet au début (5 minutes) et commencer par l''exercice où l''on est le plus à l''aise.
- Écrire les calculs intermédiaires : une bonne démarche rapporte des points même si le résultat final est faux.
- Rédiger les démonstrations avec « on sait que », « d''après », « donc ».
- Faire des figures propres, avec règle et compas, en respectant les mesures.
- Garder 10 minutes à la fin pour relire, vérifier les unités et les réponses rédigées.
- S''entraîner sur des annales en temps limité dans les semaines qui précèdent l''examen.

## Points clés

- Moyenne pondérée : somme des produits valeur × effectif, divisée par N.
- Médiane : ranger d''abord la série ; utiliser les effectifs cumulés.
- Angle du diagramme circulaire : 360° × effectif / N.
- Au BFEM : démarche visible, rédaction rigoureuse, relecture.

## Exercices

Exercice 1 : Série : 5 ; 8 ; 8 ; 10 ; 12 ; 15 ; 18 ; 20. Calculer la moyenne, la médiane, le mode et l''étendue.

Exercice 2 : Une vendeuse note le nombre de sachets d''eau vendus par jour pendant 30 jours : [0 ; 10[ : 5 jours ; [10 ; 20[ : 8 jours ; [20 ; 30[ : 12 jours ; [30 ; 40[ : 5 jours. Calculer la moyenne en utilisant les centres des classes.

Exercice 3 : Dans l''exercice 2, quelle est la fréquence en pourcentage de la classe [20 ; 30[ ?

Exercice 4 : Toujours dans l''exercice 2, calculer l''angle du secteur de la classe [20 ; 30[ dans un diagramme circulaire.

Exercice 5 : Un élève a obtenu 14 en mathématiques (coefficient 4), 11 en français (coefficient 3), 13 en SVT (coefficient 2) et 15 en anglais (coefficient 1). Calculer sa moyenne.

## Corrigé

Exercice 1 : Somme : 5 + 8 + 8 + 10 + 12 + 15 + 18 + 20 = 96 ; moyenne : 96 / 8 = 12. Médiane : N = 8, moyenne des 4e et 5e valeurs : (10 + 12) / 2 = 11. Mode : 8. Étendue : 20 − 5 = 15.

Exercice 2 : Centres : 5 ; 15 ; 25 ; 35. Moyenne : (5 × 5 + 15 × 8 + 25 × 12 + 35 × 5) / 30 = (25 + 120 + 300 + 175) / 30 = 620 / 30 ≈ 20,7 sachets par jour.

Exercice 3 : 12 / 30 = 0,4 = 40 %.

Exercice 4 : 360° × 12 / 30 = 144°.

Exercice 5 : (14 × 4 + 11 × 3 + 13 × 2 + 15 × 1) / (4 + 3 + 2 + 1) = (56 + 33 + 26 + 15) / 10 = 130 / 10 = 13.', 'texte', 50, false, 50
from public.courses c where c.slug = 'maths-3e'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Statistiques et méthode pour le BFEM');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : sujet type de BFEM commenté', '## Fiche du cours vidéo

- Durée : 1h30.
- Thème : sujet type de BFEM commenté pas à pas.
- Objectifs : traiter un sujet complet couvrant calcul littéral, équations, Pythagore et Thalès, trigonométrie et statistiques ; apprendre à rédiger et à gérer son temps.
- Matériel : tableau ou diaporama, règle, équerre, compas, calculatrice scientifique, brouillon.
- Prérequis : leçons 1 à 5 du cours. Le sujet présenté est un sujet d''entraînement conçu pour ce cours, pas un sujet officiel.

## Déroulé minuté

## 00:00 – 05:00 · Introduction

« Bonjour à tous. Aujourd''hui, nous faisons ensemble un sujet complet de type BFEM. Je vais vous montrer non seulement les réponses, mais surtout la manière de rédiger. À l''examen, ce n''est pas seulement le résultat qui compte : le correcteur veut voir votre raisonnement. Avant chaque exercice, je vous demanderai de mettre la vidéo en pause et de chercher seuls. »

Visuel : le sujet en trois parties : Activités numériques (exercices 1 et 2), Activités géométriques (exercices 3 et 4), Statistiques (exercice 5).

## 05:00 – 12:00 · Méthode : lire le sujet et gérer son temps

« La première chose à faire le jour de l''examen, c''est de lire tout le sujet. Soulignez les verbes : “développer”, “factoriser”, “justifier”, “en déduire”. Le mot “en déduire” signifie que vous devez utiliser le résultat de la question précédente. Ensuite, répartissez votre temps : un peu plus pour la géométrie, qui demande une figure. Gardez toujours dix minutes à la fin pour relire. »

Question à poser : « Si vous bloquez sur une question, que faites-vous ? » Réponse : on admet le résultat et on continue avec les questions suivantes.

## 12:00 – 25:00 · Exercice 1 : calcul littéral

Énoncé affiché : « On donne F = (3x − 2)² − (3x − 2)(x + 4). 1) Développer et réduire F. 2) Factoriser F. 3) Résoudre F = 0. 4) Calculer F pour x = 0. »

« Pause, cherchez cinq minutes. »

Correction rédigée au tableau :
- (3x − 2)² = 9x² − 12x + 4.
- (3x − 2)(x + 4) = 3x² + 12x − 2x − 8 = 3x² + 10x − 8.
- F = 9x² − 12x + 4 − 3x² − 10x + 8 = 6x² − 22x + 12.

« Attention au signe moins devant le produit : je développe d''abord le produit, puis je change tous les signes. »

Factorisation : F = (3x − 2)[(3x − 2) − (x + 4)] = (3x − 2)(2x − 6). « Je vérifie : (3x − 2)(2x − 6) = 6x² − 18x − 4x + 12 = 6x² − 22x + 12. C''est bon. »

Équation : F = 0 équivaut à 3x − 2 = 0 ou 2x − 6 = 0, donc x = 2/3 ou x = 3.

Calcul pour x = 0 : avec la forme développée, F = 12. « Toujours choisir la forme la plus simple pour calculer. »

## 25:00 – 37:00 · Exercice 2 : système et problème

Énoncé : « Pour une kermesse à l''école, on vend des tickets adultes et des tickets enfants. On a vendu 120 tickets pour une recette de 54 000 FCFA. Un ticket adulte coûte 600 FCFA et un ticket enfant 300 FCFA. Combien de tickets de chaque sorte ? »

« Je choisis mes inconnues : soit a le nombre de tickets adultes et e le nombre de tickets enfants. Je traduis : a + e = 120 et 600a + 300e = 54 000. Je simplifie la seconde équation en divisant par 300 : 2a + e = 180. Je soustrais la première : a = 60. Donc e = 60. »

Vérification : 60 + 60 = 120 et 600 × 60 + 300 × 60 = 36 000 + 18 000 = 54 000. « Réponse rédigée : on a vendu 60 tickets adultes et 60 tickets enfants. »

## 37:00 – 45:00 · Pause et quiz interactif

« Petite pause de deux minutes, puis quiz éclair. »

- Question 1 : (a − b)² = ? Réponse : a² − 2ab + b².
- Question 2 : Résoudre −3x > 12. Réponse : x < −4.
- Question 3 : Un triangle de côtés 6, 8, 10 est-il rectangle ? Réponse : oui, 36 + 64 = 100.
- Question 4 : Que vaut cos 60° ? Réponse : 1/2.
- Question 5 : Médiane de 3 ; 5 ; 9 ; 11 ? Réponse : (5 + 9) / 2 = 7.

## 45:00 – 58:00 · Exercice 3 : Pythagore et Thalès

Énoncé : « ABC est un triangle tel que AB = 9 cm, AC = 12 cm, BC = 15 cm. 1) Montrer que ABC est rectangle. 2) M est le point de [AB] tel que AM = 3 cm ; la parallèle à (BC) passant par M coupe [AC] en N. Calculer AN et MN. »

« Question 1 : le plus grand côté est [BC]. BC² = 225. AB² + AC² = 81 + 144 = 225. Rédaction : on constate que BC² = AB² + AC² ; d''après la réciproque du théorème de Pythagore, le triangle ABC est rectangle en A. »

« Question 2 : on sait que M ∈ [AB], N ∈ [AC] et (MN) // (BC). D''après le théorème de Thalès : AM/AB = AN/AC = MN/BC, soit 3/9 = AN/12 = MN/15. Donc AN = 12 × 3 / 9 = 4 cm et MN = 15 × 3 / 9 = 5 cm. »

Visuel : la figure construite à l''échelle, avec le codage de l''angle droit en A.

« Un mot sur la figure. Pour la construire, je trace d''abord [AB] de 9 cm, puis la perpendiculaire en A avec l''équerre, sur laquelle je place C à 12 cm. Je contrôle : [BC] doit mesurer 15 cm, ce qui confirme mon calcul. Ensuite je place M à 3 cm de A sur [AB] et je trace la parallèle à (BC) avec la règle et l''équerre. Je mesure AN : je dois trouver 4 cm. Une figure soignée permet de vérifier vos résultats et de détecter une erreur de calcul. »

## 58:00 – 1:08:00 · Exercice 4 : trigonométrie

Énoncé : « Dans le triangle ABC précédent, rectangle en A, calculer cos B, puis la mesure de l''angle B arrondie au degré. »

« cos B = AB / BC = 9 / 15 = 0,6. Avec la calculatrice en mode degrés, cos⁻¹(0,6) ≈ 53,13°, donc B ≈ 53°. Je peux vérifier avec la tangente : tan B = AC / AB = 12 / 9 ≈ 1,333, et tan⁻¹(1,333) ≈ 53,13°. Les deux résultats concordent. »

Question à poser : « Combien mesure alors l''angle C ? » Réponse : environ 90° − 53,13° = 36,87°, soit environ 37°.

## 1:08:00 – 1:18:00 · Exercice 5 : statistiques

Énoncé : « Le tableau donne l''âge des 25 joueurs d''une équipe de navétanes : 18 ans : 3 ; 19 ans : 5 ; 20 ans : 8 ; 21 ans : 6 ; 22 ans : 3. Calculer l''âge moyen, l''âge médian et le mode. »

« Moyenne : (18 × 3 + 19 × 5 + 20 × 8 + 21 × 6 + 22 × 3) / 25 = (54 + 95 + 160 + 126 + 66) / 25 = 501 / 25 = 20,04 ans. »

« Médiane : N = 25, c''est la 13e valeur. Effectifs cumulés : 3 ; 8 ; 16 ; 22 ; 25. La 13e valeur est dans la classe 20 ans, donc la médiane est 20 ans. Le mode est 20 ans, car c''est l''effectif le plus grand (8). »

« On peut aussi demander la fréquence des joueurs de 20 ans : 8 / 25 = 0,32, soit 32 %. Et pour un diagramme circulaire, l''angle correspondant serait 360° × 8 / 25 = 115,2°. »

## 1:18:00 – 1:24:00 · Synthèse : les erreurs à éviter

- Oublier le double produit dans (a + b)².
- Oublier de changer les signes devant une parenthèse précédée d''un moins.
- Oublier de changer le sens d''une inéquation quand on divise par un négatif.
- Utiliser Pythagore sans avoir justifié que le triangle est rectangle.
- Calculatrice en mode radians au lieu de degrés.
- Calculer une médiane sans avoir rangé la série.

## 1:24:00 – 1:30:00 · Évaluation finale

« Dernières minutes : cinq questions pour vérifier vos acquis. »

- Question 1 : Factoriser x² − 64. Réponse : (x − 8)(x + 8).
- Question 2 : Résoudre 4x − 9 = x + 6. Réponse : 3x = 15, x = 5.
- Question 3 : ABC rectangle en A, AB = 7, AC = 24. Calculer BC. Réponse : √(49 + 576) = √625 = 25.
- Question 4 : Dans un triangle rectangle, côté opposé 5 et hypoténuse 10 : quel est l''angle ? Réponse : sin = 0,5, angle = 30°.
- Question 5 : Moyenne de 10, 12, 14, 16 ? Réponse : 52 / 4 = 13.

« Bravo ! Refaites ce sujet seuls dans quelques jours, en temps limité, sans regarder la correction. C''est la meilleure préparation au BFEM. Bon courage ! »', 'video', 90, false, 60
from public.courses c where c.slug = 'maths-3e'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : sujet type de BFEM commenté');

-- Cours : Maîtriser les dépenses de carburant
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'formation-carburant', (select id from public.levels where name = 'Formation professionnelle'), 'carburant', 'Gestion du carburant', 'Maîtriser les dépenses de carburant', 'Cette formation apprend à mesurer la consommation (L/100 km), organiser les bons et cartes carburant, détecter les fraudes et anomalies, bâtir un budget, déployer l''éco-conduite et suivre un tableau de bord. Elle s''adresse aux responsables de flotte, gestionnaires administratifs et financiers, chefs de parc et dirigeants de PME. Prérequis : savoir calculer un pourcentage et utiliser un tableur simple.', true, 40
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Mesurer la consommation : le L/100 km et ses facteurs', '## Objectifs de la leçon

Savoir calculer la consommation d''un véhicule en litres aux 100 km par la méthode du « plein à plein », calculer la consommation horaire d''un engin, transformer une consommation en coût au kilomètre et identifier les facteurs qui font varier la consommation.

## Pourquoi mesurer d''abord ?

Dans beaucoup d''entreprises, le carburant est l''un des premiers postes de dépenses de la flotte, et souvent le moins bien suivi. On connaît le montant total payé à la station, mais pas la consommation réelle de chaque véhicule. Sans mesure, impossible de savoir si un véhicule consomme trop, si un chauffeur gaspille ou si des litres disparaissent. La première étape de toute maîtrise des dépenses est donc la mesure fiable.

## La consommation aux 100 km

La consommation s''exprime en litres aux 100 kilomètres (L/100 km) :

Consommation = litres consommés / kilomètres parcourus × 100.

Exemple : un véhicule a consommé 66 litres pour parcourir 600 km. Consommation = 66 / 600 × 100 = 11 L/100 km.

## La méthode du plein à plein

C''est la méthode la plus fiable sans équipement électronique.

- Étape 1 : faire le plein complet et noter le kilométrage au compteur (par exemple 45 230 km).
- Étape 2 : utiliser normalement le véhicule, en notant chaque ravitaillement intermédiaire (litres et kilométrage).
- Étape 3 : refaire le plein complet et noter le kilométrage (par exemple 45 830 km) et les litres servis.
- Étape 4 : additionner les litres servis depuis le premier plein (exclu) jusqu''au dernier plein (inclus), et diviser par la distance.

Exemple : entre 45 230 km et 45 830 km, on a parcouru 600 km. Un ravitaillement intermédiaire de 30 L, puis un plein final de 36 L : total 66 L. Consommation : 11 L/100 km.

Le piège principal : un kilométrage mal noté. Une erreur de 100 km sur 600 km fausse le résultat d''environ 17 %. Il faut donc exiger le relevé du compteur à chaque ravitaillement, idéalement vérifié par une personne autre que le chauffeur.

## Les engins et groupes électrogènes : la consommation horaire

Pour un groupe électrogène, une pelleteuse ou un chariot élévateur, on raisonne en litres par heure de fonctionnement :

Consommation horaire = litres consommés / heures de fonctionnement (lues sur le compteur horaire).

Exemple : un groupe électrogène d''un hôtel de Saly a consommé 540 L pendant 120 heures de marche. Consommation = 540 / 120 = 4,5 L/h.

## Du litre au coût au kilomètre

Coût carburant au km = consommation (L/100 km) / 100 × prix du litre.

Exemple avec un prix de 800 FCFA par litre (prix fictif pour l''exemple ; les prix à la pompe sont fixés par les autorités et évoluent, il faut utiliser le prix en vigueur) : 11 / 100 × 800 = 88 FCFA par km. Un véhicule qui roule 3 000 km par mois coûte donc 264 000 FCFA de carburant par mois.

## Les facteurs qui font varier la consommation

- Le véhicule : type, motorisation, âge, état d''entretien (filtres, injecteurs, réglages).
- Les pneus : sous-gonflés, ils augmentent la résistance au roulement.
- La charge : un camion chargé consomme plus qu''à vide ; la surcharge augmente encore la consommation et l''usure.
- L''itinéraire : embouteillages urbains, pistes, relief, routes dégradées en saison des pluies.
- La conduite : accélérations brutales, vitesse élevée, freinages tardifs, moteur au ralenti à l''arrêt.
- La climatisation et les équipements consommateurs.

C''est pourquoi il faut comparer chaque véhicule à une consommation de référence établie pour sa catégorie et son type de mission (urbain, interurbain, chantier), à partir de l''historique de l''entreprise et des données du constructeur, plutôt qu''à un chiffre unique pour toute la flotte.

## Points clés

- Consommation = litres / km × 100.
- La méthode du plein à plein donne une mesure fiable à condition que les kilométrages soient exacts.
- Pour les engins et groupes : litres par heure.
- Coût au km = L/100 km / 100 × prix du litre.
- Chaque véhicule se compare à une référence adaptée à sa catégorie et à sa mission.

## Exercices

Exercice 1. Un pick-up est passé de 12 400 km à 13 150 km. Les litres servis depuis le premier plein (exclu) jusqu''au dernier plein (inclus) sont 40 L puis 50 L. Calculez sa consommation.

Exercice 2. Avec un prix fictif de 800 FCFA par litre, calculez le coût carburant au km de ce pick-up, puis le coût pour 2 500 km par mois.

Exercice 3. Un groupe électrogène a tourné 200 heures et consommé 1 000 L. Calculez sa consommation horaire.

Exercice 4. Un chauffeur a noté 13 050 km au lieu de 13 150 km au dernier plein de l''exercice 1. Quelle consommation aurait-on calculée ? Commentez.

## Corrigé

Exercice 1. Distance : 13 150 − 12 400 = 750 km. Litres : 40 + 50 = 90 L. Consommation : 90 / 750 × 100 = 12 L/100 km.

Exercice 2. Coût au km : 12 / 100 × 800 = 96 FCFA. Pour 2 500 km : 2 500 × 96 = 240 000 FCFA par mois.

Exercice 3. 1 000 / 200 = 5 L/h.

Exercice 4. Distance erronée : 13 050 − 12 400 = 650 km. Consommation : 90 / 650 × 100 ≈ 13,8 L/100 km. Une simple erreur de relevé fait apparaître une surconsommation d''environ 15 % qui n''existe pas. Le contrôle des kilométrages est donc indispensable avant toute conclusion.', 'texte', 45, true, 10
from public.courses c where c.slug = 'formation-carburant'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Mesurer la consommation : le L/100 km et ses facteurs');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Bons, cartes carburant et procédures d''approvisionnement', '## Objectifs de la leçon

Comprendre les différents modes d''approvisionnement en carburant (bons papier, cartes carburant, cuve interne), mettre en place une procédure claire de la demande au rapprochement, et savoir rapprocher les bons émis avec le relevé du fournisseur.

## Les trois modes d''approvisionnement

Le paiement en espèces par le chauffeur est le mode le plus risqué : il laisse peu de traces et rend les contrôles très difficiles. Les entreprises qui veulent maîtriser leurs dépenses utilisent l''un des trois modes suivants.

- Les bons carburant papier : carnets à souches pré-numérotés, remis par la station partenaire ou édités par l''entreprise. Chaque bon indique le véhicule, la quantité ou le montant autorisé, la date et la signature de l''autorisateur. La station facture ensuite l''entreprise en joignant les bons utilisés.
- Les cartes carburant : cartes émises par un réseau de stations, attribuées à un véhicule ou à un chauffeur, protégées par un code personnel. Elles permettent de fixer des plafonds (litres par jour, montant par mois), de limiter les produits autorisés et d''obtenir un relevé électronique détaillé de chaque transaction (date, heure, station, litres, montant, kilométrage saisi).
- La cuve interne : l''entreprise achète en gros et distribue sur son site. Il faut alors tenir un registre de distribution, sécuriser la pompe et jauger régulièrement la cuve.

Chaque mode a ses avantages. Les bons sont simples mais lourds à contrôler. Les cartes donnent une traçabilité forte mais dépendent du réseau de stations disponible sur les itinéraires. La cuve interne réduit les déplacements, mais exige une gestion de stock rigoureuse.

## La procédure d''approvisionnement

Une bonne procédure sépare les rôles : celui qui demande n''est pas celui qui autorise, et celui qui autorise n''est pas celui qui contrôle.

- Demande : le chauffeur ou le chef de parc exprime le besoin (véhicule, mission, kilométrage actuel).
- Autorisation : le responsable vérifie la cohérence (le véhicule a-t-il été ravitaillé récemment ? la mission justifie-t-elle la quantité ?) et signe le bon, ou vérifie que la carte est active.
- Approvisionnement : le chauffeur se ravitaille, fait noter les litres, le montant et le kilométrage sur le bon ou les saisit sur le terminal.
- Remise des justificatifs : le chauffeur rapporte la souche ou le ticket le jour même.
- Saisie : les données sont saisies dans un registre ou un tableur (date, véhicule, chauffeur, km, litres, montant).
- Rapprochement : en fin de mois, on compare les données internes avec la facture ou le relevé du fournisseur.

## Le rapprochement bons / relevé

Le rapprochement consiste à vérifier ligne par ligne que chaque transaction facturée correspond à une autorisation interne, et inversement.

Exemple : une entreprise de BTP de Thiès a émis 5 bons en une semaine. Registre interne :

- bon 1201 : véhicule AA-01, 60 L ;
- bon 1202 : véhicule AA-02, 45 L ;
- bon 1203 : véhicule AA-03, 70 L ;
- bon 1204 : véhicule AA-01, 55 L ;
- bon 1205 : annulé (souche barrée).

Relevé de la station :

- bon 1201 : 60 L ;
- bon 1202 : 54 L ;
- bon 1203 : 70 L ;
- bon 1204 : 55 L ;
- bon 1205 : 40 L.

Constats : le bon 1202 est facturé 54 L au lieu de 45 L (écart de 9 L à expliquer) ; le bon 1205, annulé chez nous, a été utilisé à la station (anomalie grave : un bon annulé doit être restitué ou détruit sous contrôle). Avant de payer la facture, il faut demander les justificatifs à la station et entendre les personnes concernées.

## Règles de sécurité des bons et cartes

- Conserver les carnets de bons sous clé et tenir un registre des carnets remis.
- Ne jamais signer un bon en blanc.
- Récupérer ou neutraliser les bons annulés.
- Pour les cartes : code personnel non communiqué, plafonds adaptés à la mission, opposition immédiate en cas de perte ou de départ du chauffeur.
- Exiger la saisie du kilométrage à chaque transaction.

## Points clés

- Éviter les paiements en espèces non tracés.
- Bons, cartes et cuve interne exigent chacun des règles de contrôle adaptées.
- Séparer demande, autorisation et contrôle.
- Rapprocher chaque mois registre interne et relevé fournisseur avant paiement.

## Exercices

Exercice 1. Citez deux avantages des cartes carburant par rapport aux bons papier.

Exercice 2. Rapprochez les données suivantes. Registre : bon 3301 = 50 L ; bon 3302 = 40 L ; bon 3303 = 60 L. Relevé : bon 3301 = 50 L ; bon 3302 = 40 L ; bon 3303 = 66 L ; bon 3304 = 35 L. Quelles anomalies relevez-vous ?

Exercice 3. Pourquoi la personne qui autorise un bon ne devrait-elle pas être celle qui fait le rapprochement ?

Exercice 4. Le réservoir du véhicule AA-03 a une capacité de 65 L. Le bon 1203 de l''exemple (70 L) vous paraît-il normal ?

## Corrigé

Exercice 1. Par exemple : relevé électronique détaillé de chaque transaction (date, heure, station, litres) ; plafonds automatiques ; possibilité de faire opposition immédiatement ; limitation des produits autorisés.

Exercice 2. Bon 3303 : 66 L facturés au lieu de 60 L, écart de 6 L à justifier. Bon 3304 : facturé mais absent du registre ; il faut vérifier si le carnet a été perdu ou si un bon a été utilisé sans autorisation. Paiement à suspendre sur ces deux lignes.

Exercice 3. C''est le principe de séparation des tâches : une même personne ne peut pas à la fois autoriser une dépense et vérifier qu''elle est régulière, sinon une erreur ou une fraude pourrait ne jamais être détectée.

Exercice 4. Non : 70 L dépassent la capacité du réservoir (65 L), même en arrivant à sec. Soit une partie du carburant a été mise dans un autre récipient ou un autre véhicule, soit la quantité est mal saisie. C''est une anomalie à vérifier.', 'texte', 45, false, 20
from public.courses c where c.slug = 'formation-carburant'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Bons, cartes carburant et procédures d''approvisionnement');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Contrôler et détecter les fraudes et anomalies', '## Objectifs de la leçon

Connaître les principales formes de fraude et d''anomalie sur le carburant, appliquer des tests de cohérence simples, analyser les écarts de consommation par rapport à une référence et mettre en place un dispositif de contrôle équitable.

## Anomalie ou fraude ?

Une anomalie est une donnée qui sort de la normale : consommation trop élevée, ravitaillement à une heure inhabituelle, quantité supérieure au réservoir. Une anomalie n''est pas forcément une fraude : elle peut venir d''une erreur de saisie, d''un véhicule défectueux ou d''une mission inhabituelle. Le rôle du contrôleur est de repérer les anomalies, de les vérifier, puis seulement de conclure. Toute sanction doit respecter le règlement intérieur, les droits de la défense et la réglementation du travail en vigueur.

## Les formes de fraude les plus courantes

- Siphonnage : carburant retiré du réservoir pour être revendu.
- Ravitaillement d''un véhicule personnel avec la carte ou les bons de l''entreprise.
- Remplissage de bidons en même temps que le véhicule.
- Surfacturation : la quantité facturée dépasse la quantité réellement servie, parfois avec complicité à la station.
- Kilométrages falsifiés pour masquer une surconsommation.
- Détournement à la cuve interne : distribution non enregistrée.
- Trajets privés avec le véhicule de service.

## Les tests de cohérence

Ces tests se font simplement dans un tableur, chaque mois.

- Test de capacité : litres servis supérieurs à la capacité du réservoir.
- Test de fréquence : deux ravitaillements trop rapprochés (même jour, peu de kilomètres entre les deux).
- Test d''horaire : ravitaillement la nuit, le dimanche ou pendant un congé du chauffeur.
- Test de lieu : station éloignée de l''itinéraire de la mission.
- Test de kilométrage : kilométrage qui diminue, qui ne bouge pas, ou nombres trop « ronds ».
- Test de consommation : consommation hors de la fourchette de référence.

## L''analyse par écart à la référence

Méthode :

- fixer une consommation de référence par catégorie (par exemple 12 L/100 km pour les camionnettes de livraison urbaine de l''entreprise, valeur interne fondée sur l''historique) ;
- fixer une tolérance (par exemple plus ou moins 15 %, seuil interne à adapter) ;
- calculer la consommation réelle de chaque véhicule sur le mois ;
- signaler les véhicules hors fourchette.

Fourchette : 12 × 0,85 = 10,2 et 12 × 1,15 = 13,8 L/100 km.

Exemple sur cinq camionnettes :

- V1 : 1 500 km, 180 L, soit 12,0 L/100 km : normal.
- V2 : 1 200 km, 186 L, soit 15,5 L/100 km : alerte.
- V3 : 900 km, 99 L, soit 11,0 L/100 km : normal.
- V4 : 2 000 km, 230 L, soit 11,5 L/100 km : normal.
- V5 : 800 km, 128 L, soit 16,0 L/100 km : alerte.

Pour V2 et V5, on vérifie d''abord les relevés de kilométrage, puis l''état mécanique (passage à l''atelier), puis les missions (charge, itinéraire). Si rien ne l''explique, on examine les transactions une à une avec les tests de cohérence. L''excédent de V5 par rapport à la référence est de 128 − 800 × 12 / 100 = 128 − 96 = 32 L sur le mois.

## Les moyens de contrôle complémentaires

- La télématique (boîtier GPS) : elle donne les kilomètres réels, les trajets et les temps de ralenti, et certaines solutions mesurent le niveau du réservoir.
- Les contrôles inopinés : jaugeage des réservoirs, vérification des compteurs.
- Le bouchon de réservoir antivol et le scellé sur les cuves.
- La rotation des personnes chargées du contrôle.
- La communication : expliquer que des contrôles existent a souvent un effet dissuasif fort.

## Points clés

- Une anomalie se vérifie avant de conclure à une fraude.
- Six tests simples : capacité, fréquence, horaire, lieu, kilométrage, consommation.
- Comparer chaque véhicule à une référence de sa catégorie avec une tolérance.
- Combiner analyse des données, contrôles physiques et dissuasion.

## Exercices

Exercice 1. Référence : 30 L/100 km pour les camions de l''entreprise, tolérance de plus ou moins 10 %. Calculez la fourchette admise.

Exercice 2. Camion T1 : 2 400 km, 744 L. Camion T2 : 1 800 km, 612 L. Camion T3 : 3 000 km, 870 L. Calculez leurs consommations et identifiez les alertes.

Exercice 3. Pour le camion en alerte, calculez l''excédent en litres et son coût avec un prix fictif de 750 FCFA par litre.

Exercice 4. Une carte carburant a enregistré deux transactions le même jour, à 7 h 10 et à 9 h 40, pour 60 L chacune, avec un kilométrage passé de 80 120 à 80 165 km. Que concluez-vous ?

## Corrigé

Exercice 1. 30 × 0,9 = 27 et 30 × 1,1 = 33 L/100 km.

Exercice 2. T1 : 744 / 2 400 × 100 = 31 L/100 km, normal. T2 : 612 / 1 800 × 100 = 34 L/100 km, alerte. T3 : 870 / 3 000 × 100 = 29 L/100 km, normal.

Exercice 3. Consommation de référence pour T2 : 1 800 × 30 / 100 = 540 L. Excédent : 612 − 540 = 72 L. Coût : 72 × 750 = 54 000 FCFA sur la période.

Exercice 4. 120 L pour 45 km parcourus, c''est incohérent : le premier plein aurait dû suffire largement. C''est une anomalie forte (test de fréquence) : vérifier les tickets, interroger le chauffeur, contrôler si du carburant a pu être mis dans un autre véhicule ou un bidon.', 'texte', 60, false, 30
from public.courses c where c.slug = 'formation-carburant'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Contrôler et détecter les fraudes et anomalies');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Construire un budget carburant et déployer l''éco-conduite', '## Objectifs de la leçon

Savoir construire un budget carburant à partir de l''activité prévue, analyser l''écart entre budget et réalisé en séparant l''effet prix et l''effet quantité, et chiffrer l''intérêt d''un programme d''éco-conduite.

## Construire le budget

Un budget carburant sérieux ne se construit pas en ajoutant un pourcentage aux dépenses de l''an passé. Il part de l''activité prévue :

Budget = kilomètres prévus × consommation de référence / 100 × prix prévu du litre.

Méthode :

- estimer les kilomètres par véhicule ou par catégorie, à partir des missions prévues (tournées, chantiers, contrats) ;
- appliquer la consommation de référence de chaque catégorie ;
- appliquer le prix du litre prévu (prix en vigueur au moment du budget, avec éventuellement une hypothèse d''évolution) ;
- ajouter les engins et groupes électrogènes (heures prévues × L/h) ;
- découper le budget par mois pour tenir compte de la saisonnalité (campagne agricole, saison des pluies, fêtes).

Exemple : une société de distribution de Dakar a 10 camionnettes qui roulent chacune 3 000 km par mois, avec une référence de 12 L/100 km et un prix fictif de 800 FCFA par litre.

- Litres par mois : 10 × 3 000 × 12 / 100 = 3 600 L.
- Budget mensuel : 3 600 × 800 = 2 880 000 FCFA.
- Budget annuel : 2 880 000 × 12 = 34 560 000 FCFA.

Sensibilité au prix : si le prix augmente de 5 %, le budget mensuel augmente de 2 880 000 × 5 % = 144 000 FCFA.

## Analyser l''écart budget / réalisé

En fin de mois, on compare le réalisé au budget et on décompose l''écart :

- écart total = coût réel − coût budgété ;
- écart sur prix = (prix réel − prix budgété) × quantité réelle ;
- écart sur quantité = (quantité réelle − quantité budgétée) × prix budgété.

La somme des deux écarts égale l''écart total.

Exemple : budget 3 600 L à 800 FCFA, soit 2 880 000 FCFA. Réalisé : 3 900 L à 820 FCFA, soit 3 198 000 FCFA.

- Écart total : 3 198 000 − 2 880 000 = 318 000 FCFA (défavorable).
- Écart sur prix : (820 − 800) × 3 900 = 78 000 FCFA.
- Écart sur quantité : (3 900 − 3 600) × 800 = 240 000 FCFA.
- Vérification : 78 000 + 240 000 = 318 000 FCFA.

Lecture : l''essentiel du dépassement vient des quantités, sur lesquelles l''entreprise peut agir. Il faut alors savoir si les kilomètres ont augmenté (plus d''activité, ce qui peut être une bonne nouvelle) ou si c''est la consommation aux 100 km qui a dérivé.

## L''éco-conduite

L''éco-conduite est une manière de conduire qui réduit la consommation, l''usure et les accidents. Ses principes :

- anticiper la circulation pour éviter les freinages et accélérations brusques ;
- passer les rapports tôt et rouler à régime modéré ;
- respecter les limitations de vitesse et adopter une vitesse stable sur route ;
- couper le moteur lors des arrêts prolongés (attente chez un client, chargement) ;
- vérifier régulièrement la pression des pneus ;
- éviter la surcharge et les charges inutiles ;
- utiliser la climatisation avec mesure ;
- respecter le plan d''entretien (filtres, vidanges, réglages).

Un programme d''éco-conduite comprend une formation théorique et pratique, un suivi individuel de la consommation et une reconnaissance des progrès (classement, prime, félicitations).

## Chiffrer le gain

Les économies varient beaucoup selon le point de départ ; il faut les mesurer sur sa propre flotte. Prenons une hypothèse de 8 % de réduction de la consommation (hypothèse fictive pour l''exemple).

- Litres économisés par mois : 3 600 × 8 % = 288 L.
- Économie mensuelle : 288 × 800 = 230 400 FCFA.
- Économie annuelle : 230 400 × 12 = 2 764 800 FCFA.
- Si la formation coûte 1 500 000 FCFA, le délai de récupération est de 1 500 000 / 230 400 ≈ 6,5 mois.

## Points clés

- Budget = km prévus × référence / 100 × prix.
- L''écart se décompose en effet prix (subi) et effet quantité (pilotable).
- L''éco-conduite agit sur la consommation, l''usure et la sécurité.
- Tout gain se mesure avant et après, sur la flotte réelle.

## Exercices

Exercice 1. Une ONG de Tambacounda a 4 véhicules tout-terrain roulant chacun 2 500 km par mois, avec une référence de 14 L/100 km et un prix fictif de 780 FCFA par litre. Calculez le budget mensuel et annuel.

Exercice 2. Budget : 1 400 L à 780 FCFA. Réalisé : 1 500 L à 800 FCFA. Calculez l''écart total, l''écart sur prix et l''écart sur quantité.

Exercice 3. Avec une hypothèse fictive de 10 % d''économie grâce à l''éco-conduite, quel est le gain mensuel pour l''ONG de l''exercice 1 ? Si la formation coûte 600 000 FCFA, en combien de mois est-elle remboursée ?

## Corrigé

Exercice 1. Litres : 4 × 2 500 × 14 / 100 = 1 400 L par mois. Budget mensuel : 1 400 × 780 = 1 092 000 FCFA. Budget annuel : 1 092 000 × 12 = 13 104 000 FCFA.

Exercice 2. Réel : 1 500 × 800 = 1 200 000 FCFA. Écart total : 1 200 000 − 1 092 000 = 108 000 FCFA défavorable. Écart sur prix : (800 − 780) × 1 500 = 30 000 FCFA. Écart sur quantité : (1 500 − 1 400) × 780 = 78 000 FCFA. Vérification : 30 000 + 78 000 = 108 000 FCFA.

Exercice 3. Économie : 1 400 × 10 % = 140 L par mois, soit 140 × 780 = 109 200 FCFA. Délai de récupération : 600 000 / 109 200 ≈ 5,5 mois.', 'texte', 60, false, 40
from public.courses c where c.slug = 'formation-carburant'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Construire un budget carburant et déployer l''éco-conduite');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Piloter avec un tableau de bord carburant', '## Objectifs de la leçon

Savoir choisir les indicateurs d''un tableau de bord carburant, organiser la collecte des données, présenter les résultats sur une page et transformer les alertes en actions.

## À quoi sert le tableau de bord ?

Le tableau de bord carburant répond chaque mois à quatre questions : combien avons-nous dépensé par rapport au budget ? Nos véhicules consomment-ils normalement ? Nos données sont-elles fiables ? Quelles anomalies faut-il traiter ? Il s''adresse au responsable de flotte, au contrôleur de gestion et à la direction.

## Les indicateurs recommandés

Indicateurs de dépense :

- dépense totale du mois et cumul depuis le début de l''année, comparés au budget ;
- coût carburant par kilomètre (FCFA/km) ;
- prix moyen payé par litre.

Indicateurs de consommation :

- consommation par véhicule (L/100 km ou L/h) et écart à la référence ;
- consommation moyenne par catégorie ;
- nombre de véhicules hors tolérance.

Indicateurs de fiabilité des données :

- pourcentage de transactions avec kilométrage renseigné ;
- nombre de bons ou tickets non rapprochés.

Indicateurs de contrôle :

- nombre d''anomalies détectées, vérifiées, confirmées ;
- litres excédentaires par rapport à la référence et leur valeur.

## Organiser les données

Le tableau de bord ne vaut que par la qualité de ses données. Il faut une base unique (un tableur suffit au début) avec une ligne par ravitaillement et les colonnes suivantes : date, heure, véhicule, chauffeur, station ou cuve, kilométrage, litres, prix unitaire, montant, numéro de bon ou de transaction.

Les calculs se font ensuite automatiquement. Par exemple, dans un tableur où la colonne B contient les kilomètres du mois et la colonne C les litres, la consommation en D s''obtient par la formule =C2/B2*100. Un tableau croisé dynamique permet de totaliser les litres et montants par véhicule.

## Présenter sur une page

Une bonne présentation comprend :

- un bandeau de synthèse : dépense du mois, budget, écart en valeur et en pourcentage ;
- un tableau par véhicule : km, litres, L/100 km, référence, écart, couleur ;
- un graphique d''évolution sur 12 mois de la dépense et du coût au km ;
- la liste des anomalies avec leur statut et le responsable du traitement.

Code couleur : vert si l''indicateur est dans l''objectif, orange en zone de vigilance, rouge s''il faut agir. Les seuils sont fixés à l''avance, par exemple pour la consommation : vert jusqu''à 5 % au-dessus de la référence, orange de 5 à 15 %, rouge au-delà (seuils internes à adapter).

## Exemple de synthèse mensuelle

Une entreprise de distribution de Kaolack présente pour le mois :

- dépense : 3 198 000 FCFA pour un budget de 2 880 000 FCFA, soit un écart de 318 000 FCFA (+11 %) ;
- kilomètres parcourus : 30 750 km ;
- coût par km : 3 198 000 / 30 750 = 104 FCFA ;
- transactions avec kilométrage renseigné : 172 sur 184, soit environ 93,5 % ;
- anomalies : 6 détectées, 4 vérifiées, 1 confirmée.

Lecture : la dépense dépasse le budget de 11 % ; il faut savoir si c''est dû à l''activité (les kilomètres prévus étaient de 30 000) ou à la consommation. Consommation moyenne réelle : 3 900 L / 30 750 km × 100 ≈ 12,7 L/100 km, contre 12 de référence : la dérive est d''environ 5,7 %, zone orange. Avec 12 transactions sans kilométrage, une partie des calculs n''est pas fiable : l''action prioritaire est d''exiger le kilométrage à chaque ravitaillement.

## De l''alerte à l''action

Chaque indicateur rouge doit donner lieu à une fiche d''action : constat, cause probable, action décidée, responsable, échéance, résultat attendu. Le tableau de bord du mois suivant vérifie si l''action a produit son effet. Un tableau de bord qui n''entraîne aucune décision devient vite un rapport que personne ne lit.

## Points clés

- Quatre familles d''indicateurs : dépense, consommation, fiabilité des données, contrôle.
- Une base de données unique, une ligne par ravitaillement.
- Une page de synthèse avec code couleur et évolution sur 12 mois.
- Chaque alerte rouge déclenche une action suivie.

## Exercices

Exercice 1. Dépense du mois : 1 650 000 FCFA ; kilomètres : 15 000. Calculez le coût par km.

Exercice 2. Sur 240 transactions, 210 ont un kilométrage renseigné. Calculez le taux de fiabilité.

Exercice 3. Référence 12 L/100 km. Seuils : vert jusqu''à +5 %, orange de +5 à +15 %, rouge au-delà. Classez trois véhicules consommant 12,4 ; 13,2 et 14,1 L/100 km.

Exercice 4. Dans un tableur, la colonne E contient les litres et la colonne F les kilomètres. Écrivez la formule de consommation pour la ligne 5.

## Corrigé

Exercice 1. 1 650 000 / 15 000 = 110 FCFA par km.

Exercice 2. 210 / 240 = 87,5 %.

Exercice 3. Seuils : 12 × 1,05 = 12,6 et 12 × 1,15 = 13,8. 12,4 : vert ; 13,2 : orange ; 14,1 : rouge.

Exercice 4. =E5/F5*100.', 'texte', 45, false, 50
from public.courses c where c.slug = 'formation-carburant'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Piloter avec un tableau de bord carburant');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : reprendre le contrôle des dépenses de carburant', '## Fiche du cours vidéo

Durée : 1h30. Public : responsables de flotte, chefs de parc, comptables et contrôleurs de gestion, dirigeants de PME et d''ONG.

Objectifs : calculer une consommation fiable ; organiser bons, cartes et rapprochements ; détecter les anomalies par des tests simples ; construire un budget et analyser les écarts ; chiffrer l''éco-conduite ; lire un tableau de bord carburant.

Matériel : diaporama, tableau blanc, calculatrice, un tableur avec un fichier d''exemple de ravitaillements, un modèle de bon carburant vierge.

Prérequis : avoir suivi les leçons 1 à 5, ou gérer au quotidien les dépenses d''une flotte.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture : le carburant, une dépense qui fuit

Texte du formateur : « Bonjour à tous. Commençons par une question simple : combien votre entreprise a-t-elle dépensé en carburant le mois dernier ? Et combien de litres chacun de vos véhicules a-t-il consommés aux 100 kilomètres ? En général, on connaît la première réponse, rarement la seconde. Or, tant qu''on ne mesure pas la consommation véhicule par véhicule, on ne maîtrise rien. Aujourd''hui, nous allons suivre une entreprise fictive, Transports Baobab, basée à Thiès, qui exploite dix camionnettes et deux groupes électrogènes, et dont la facture de carburant dépasse le budget depuis trois mois. »

Visuel : courbe des dépenses de Transports Baobab sur six mois, au-dessus de la ligne de budget.

## 05:00 – 17:00 · Mesurer : le plein à plein

Texte du formateur : « Première étape : mesurer. La formule est simple : litres divisés par kilomètres, multipliés par 100. Toute la difficulté est dans la qualité des relevés. Prenons la camionnette n°4. Plein complet à 45 230 km. Ravitaillement intermédiaire de 30 litres. Plein complet à 45 830 km avec 36 litres. Distance : 600 km. Litres : 66. Consommation : 11 litres aux 100. »

Texte du formateur : « Attention à l''erreur de relevé. Si le chauffeur note 100 km de moins, la consommation calculée grimpe artificiellement. Avant d''accuser quelqu''un, on vérifie toujours le compteur. Pour les groupes électrogènes, on raisonne en litres par heure, avec le compteur horaire : 540 litres pour 120 heures, soit 4,5 litres par heure. »

Texte du formateur : « Transformons en argent. Avec un prix fictif de 800 FCFA le litre, 11 litres aux 100, c''est 88 FCFA par kilomètre. À 3 000 km par mois, 264 000 FCFA pour un seul véhicule. »

Question posée : « Quels facteurs, dans votre contexte, font monter la consommation ? » Réponses attendues : embouteillages, pistes, charge, pneus mal gonflés, ralenti, climatisation.

## 17:00 – 30:00 · Organiser : bons, cartes, procédure et rapprochement

Texte du formateur : « Chez Transports Baobab, les chauffeurs paient souvent en espèces et rapportent un ticket, quand ils y pensent. C''est la porte ouverte aux erreurs et aux abus. Trois solutions : les bons pré-numérotés, les cartes carburant avec plafonds et code personnel, ou une cuve interne bien gérée. Quelle que soit la solution, appliquez la séparation des tâches : celui qui demande n''autorise pas, celui qui autorise ne contrôle pas. »

Visuel : schéma de la procédure demande – autorisation – ravitaillement – remise du justificatif – saisie – rapprochement.

Texte du formateur : « Faisons ensemble un rapprochement. Registre interne : bon 1202, 45 litres. Relevé de la station : 54 litres. Écart de 9 litres. Bon 1205 : annulé chez nous, mais facturé 40 litres par la station. Que fait-on ? On suspend le paiement de ces lignes, on demande les justificatifs, on entend les personnes. On ne paie jamais une facture carburant sans rapprochement. »

## 30:00 – 45:00 · Détecter : les six tests de cohérence

Texte du formateur : « Passons à la détection. Retenez six tests : capacité, fréquence, horaire, lieu, kilométrage, consommation. Un plein de 70 litres pour un réservoir de 65 : impossible. Deux pleins à deux heures d''intervalle avec 45 kilomètres entre les deux : suspect. Un ravitaillement un dimanche à 23 heures alors que le véhicule est au garage : à vérifier. »

Texte du formateur : « Le test de consommation est le plus puissant. Fixons une référence de 12 litres aux 100 pour les camionnettes, avec une tolérance de 15 %. La fourchette est de 10,2 à 13,8. Regardons les cinq premières camionnettes. V1 : 12. V3 : 11. V4 : 11,5. Tout va bien. V2 : 15,5. V5 : 16. Ces deux-là sont en alerte. Pour V5, l''excédent est de 32 litres sur le mois. »

Visuel : tableau des cinq véhicules avec mise en forme conditionnelle.

Texte du formateur : « Et je le répète : une anomalie n''est pas une preuve. On vérifie d''abord le compteur, puis la mécanique, puis la mission. Ensuite seulement, on examine les transactions une par une. »

Texte du formateur : « Quels outils complètent ces tests ? La télématique d''abord : un boîtier GPS donne les kilomètres réellement parcourus, les trajets et les temps de moteur au ralenti. Si le boîtier indique 1 000 km et que le chauffeur en déclare 1 200, la discussion change de nature. Ensuite les contrôles physiques inopinés : on jauge un réservoir au retour de mission, on vérifie le compteur, on contrôle les scellés de la cuve. Enfin la dissuasion : annoncer clairement que les données sont analysées chaque mois réduit souvent les abus avant même le premier contrôle. Et n''oubliez pas le cadre : toute sanction se prend dans le respect du règlement intérieur et de la réglementation du travail en vigueur. »

Question posée : « Dans votre entreprise, lequel de ces six tests pourriez-vous mettre en place dès la semaine prochaine, avec les données que vous avez déjà ? » Laisser deux ou trois participants répondre et noter les réponses au tableau.

## 45:00 – 52:00 · Pause interactive et quiz

Texte du formateur : « Petite pause active. Quatre questions, trois minutes. »

- Question 1 : 90 litres pour 750 km. Consommation ?
- Question 2 : référence 30 L/100 km, tolérance 10 %. Fourchette ?
- Question 3 : un camion consomme 34 L/100 km sur 1 800 km avec une référence de 30. Excédent en litres ?
- Question 4 : qui ne doit pas faire le rapprochement des bons ?

Correction : 1) 12 L/100 km ; 2) 27 à 33 L/100 km ; 3) 612 − 540 = 72 litres ; 4) la personne qui a autorisé les bons.

## 52:00 – 1:05:00 · Budgéter et analyser les écarts

Texte du formateur : « Construisons le budget de Transports Baobab. Dix camionnettes, 3 000 km par mois chacune, référence 12 litres aux 100 : 3 600 litres par mois. Au prix fictif de 800 FCFA : 2 880 000 FCFA par mois, 34 560 000 FCFA par an. »

Texte du formateur : « Le mois dernier, réalisé : 3 900 litres à 820 FCFA, soit 3 198 000 FCFA. Écart : 318 000 FCFA. D''où vient-il ? Écart sur prix : 20 FCFA de plus par litre, multipliés par 3 900 litres réels, soit 78 000 FCFA. Écart sur quantité : 300 litres de plus, multipliés par 800 FCFA budgétés, soit 240 000 FCFA. Total : 318 000. Le prix, on le subit ; les quantités, on peut les piloter. »

Visuel : graphique en barres décomposant l''écart en effet prix et effet quantité.

Question posée : « Les 300 litres en plus sont-ils forcément une mauvaise nouvelle ? » Réponse : non, si l''activité a augmenté ; il faut comparer les kilomètres réels aux kilomètres prévus.

## 1:05:00 – 1:13:00 · Économiser : l''éco-conduite

Texte du formateur : « L''éco-conduite, c''est anticiper, rouler à régime modéré, couper le moteur à l''arrêt, surveiller les pneus, éviter la surcharge. C''est aussi une question de sécurité : un chauffeur qui anticipe freine moins et a moins d''accidents. Chiffrons : avec une hypothèse fictive de 8 % d''économie, Transports Baobab économise 288 litres par mois, soit 230 400 FCFA. Une formation à 1 500 000 FCFA est remboursée en six mois et demi environ. Mais attention : on mesure avant et après, sur sa propre flotte, au lieu de croire une promesse. »

Visuel : liste des huit gestes d''éco-conduite illustrés.

Question posée : « Comment motiver les chauffeurs sans les mettre sous pression ? » Pistes attendues : partager les résultats individuels de façon respectueuse, féliciter les progrès, associer les chauffeurs au choix des gestes, prévoir une reconnaissance collective quand l''objectif est atteint.

## 1:13:00 – 1:21:00 · Piloter : le tableau de bord sur une page

Texte du formateur : « Tout cela se résume dans un tableau de bord mensuel. En haut, la synthèse : dépense, budget, écart. Au milieu, un tableau par véhicule avec la consommation, la référence et une couleur. En bas, la liste des anomalies et leur statut. À Transports Baobab, 172 transactions sur 184 ont un kilométrage renseigné, soit 93,5 % : tant que ce chiffre n''atteint pas 100 %, une partie de nos calculs reste fragile. »

Visuel : maquette du tableau de bord avec code couleur.

Texte du formateur : « Chaque case rouge devient une fiche d''action : constat, cause, action, responsable, échéance. Le mois suivant, on vérifie le résultat. »

## 1:21:00 – 1:30:00 · Synthèse et évaluation finale

Texte du formateur : « Récapitulons en cinq verbes : mesurer, organiser, détecter, budgéter, piloter. Mesurer avec le plein à plein et des kilométrages fiables. Organiser avec des bons ou des cartes et la séparation des tâches. Détecter avec six tests de cohérence. Budgéter à partir de l''activité et séparer effet prix et effet quantité. Piloter avec un tableau de bord d''une page suivi d''actions. »

Évaluation finale, cinq questions :

- Question 1 : 66 litres pour 600 km. Consommation ? Réponse : 11 L/100 km.
- Question 2 : 12 L/100 km et un prix fictif de 800 FCFA/L. Coût au km ? Réponse : 96 FCFA.
- Question 3 : budget 1 400 L à 780 FCFA ; réel 1 500 L à 800 FCFA. Écart sur prix ? Réponse : 20 × 1 500 = 30 000 FCFA.
- Question 4 : citez trois tests de cohérence. Réponse : par exemple capacité, fréquence, horaire (ou lieu, kilométrage, consommation).
- Question 5 : 1 650 000 FCFA pour 15 000 km. Coût par km ? Réponse : 110 FCFA.

Texte du formateur : « Votre mission : dès demain, créez votre fichier de ravitaillements, une ligne par plein, avec le kilométrage. Dans un mois, vous aurez votre premier tableau de bord. Merci à toutes et à tous. »', 'video', 90, false, 60
from public.courses c where c.slug = 'formation-carburant'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : reprendre le contrôle des dépenses de carburant');

-- Cours : Statistiques L2 : de la statistique descriptive aux tests d'hypothèses
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'statistiques-l2', (select id from public.levels where name = 'Licence 2'), null, 'Statistiques', 'Statistiques L2 : de la statistique descriptive aux tests d''hypothèses', 'Ce cours couvre la statistique descriptive, les probabilités, les lois binomiale et normale, l''échantillonnage, les intervalles de confiance et le principe des tests d''hypothèses, avec des cas tirés d''entreprises et d''institutions de microfinance d''Afrique de l''Ouest. Il s''adresse aux étudiants de deuxième année en économie, gestion et sciences sociales. Prérequis : statistique et probabilités du lycée, aisance avec le calcul algébrique.', true, 40
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Statistique descriptive : résumer une série de données', '## Objectifs de la leçon

- Maîtriser le vocabulaire de la statistique : population, individu, variable, modalité.
- Calculer et interpréter les indicateurs de tendance centrale : moyenne, médiane, mode.
- Calculer et interpréter les indicateurs de dispersion : étendue, quartiles, variance, écart-type, coefficient de variation.

## 1. Vocabulaire de base

La statistique descriptive a pour objet de résumer et de présenter des données observées. On étudie une population (ensemble d''individus ou unités statistiques : ménages, entreprises, étudiants) à travers une ou plusieurs variables (caractères).

- Variable qualitative : ses modalités ne sont pas des nombres (région, secteur d''activité, sexe). Elle peut être nominale ou ordinale (niveau d''études).
- Variable quantitative discrète : elle prend des valeurs isolées (nombre d''enfants, nombre de pièces du logement).
- Variable quantitative continue : elle peut prendre toute valeur d''un intervalle (revenu, taille, durée de trajet) ; on regroupe souvent ses valeurs en classes.

Pour chaque modalité ou classe, l''effectif ni est le nombre d''individus concernés et la fréquence fi = ni / n la proportion correspondante. Les effectifs et fréquences cumulés permettent de répondre à des questions du type « quelle part des ménages dépense moins de 50 000 FCFA ? ».

## 2. Indicateurs de tendance centrale

- Moyenne arithmétique : x̄ = (somme des xi) / n, ou x̄ = (somme des ni × xi) / n pour des données groupées. Pour des classes, on utilise le centre de chaque classe.
- Médiane : valeur qui partage la série ordonnée en deux parties de même effectif. Si n est impair, c''est la valeur de rang (n + 1)/2 ; si n est pair, on prend en général la moyenne des valeurs de rangs n/2 et n/2 + 1.
- Mode : valeur (ou classe) la plus fréquente.

La moyenne est sensible aux valeurs extrêmes, la médiane ne l''est pas. Pour les revenus, souvent très inégalement répartis, la médiane est généralement plus représentative : quelques très hauts revenus suffisent à tirer la moyenne vers le haut.

## 3. Indicateurs de dispersion

- Étendue : maximum − minimum.
- Quartiles : Q1 est la plus petite valeur telle qu''au moins 25 % des observations lui sont inférieures ou égales ; Q3 la même chose avec 75 %. Avec la convention usuelle dans l''enseignement francophone, Q1 est la valeur de rang égal au plus petit entier supérieur ou égal à n/4, et Q3 celle de rang supérieur ou égal à 3n/4. L''écart interquartile Q3 − Q1 contient la moitié centrale des observations.
- Variance : V = (1/n) × somme des (xi − x̄)², ou, formule de calcul pratique, V = (1/n) × somme des xi² − x̄².
- Écart-type : σ = √V, exprimé dans la même unité que les données.
- Coefficient de variation : CV = σ / x̄, utile pour comparer la dispersion de séries d''unités ou de niveaux différents.

Remarque : en statistique inférentielle, pour estimer la variance d''une population à partir d''un échantillon, on divise par n − 1 au lieu de n (variance corrigée, notée s²). Nous y reviendrons à la leçon 4.

## 4. Méthode

- Ordonner la série.
- Calculer la moyenne, puis repérer médiane, quartiles et mode.
- Calculer la variance par la formule la plus pratique, puis l''écart-type.
- Interpréter : niveau, dispersion, symétrie (comparer moyenne et médiane), valeurs atypiques.

## Exemple chiffré : dépenses de transport

On interroge 10 étudiants de l''université de Saint-Louis sur leurs dépenses mensuelles de transport (en milliers de FCFA) : 8, 10, 12, 12, 15, 15, 15, 18, 20, 25.

- Moyenne : somme = 150, donc x̄ = 150/10 = 15.
- Médiane : n = 10 est pair ; valeurs de rangs 5 et 6 : 15 et 15 ; médiane = 15.
- Mode : 15 (trois fois).
- Étendue : 25 − 8 = 17.
- Quartiles : 10/4 = 2,5, donc Q1 est la 3e valeur : 12 ; 3 × 10/4 = 7,5, donc Q3 est la 8e valeur : 18. Écart interquartile = 6.
- Variance : écarts à la moyenne : −7, −5, −3, −3, 0, 0, 0, 3, 5, 10 ; carrés : 49, 25, 9, 9, 0, 0, 0, 9, 25, 100 ; somme = 226 ; V = 22,6.
- Écart-type : σ = √22,6 ≈ 4,75 milliers de FCFA.
- Coefficient de variation : 4,75/15 ≈ 0,32, soit environ 32 %.

Interprétation : un étudiant dépense en moyenne 15 000 FCFA par mois ; la moitié dépense entre 12 000 et 18 000 FCFA ; la valeur 25 tire légèrement la distribution vers la droite.

## Points clés

- Identifier le type de variable avant de choisir indicateurs et graphiques.
- Moyenne, médiane et mode résument le niveau ; la médiane résiste aux valeurs extrêmes.
- Variance et écart-type mesurent la dispersion autour de la moyenne ; le CV permet de comparer.

## Exercices

- Exercice 1 : Donnez la nature des variables : a) nombre de salariés d''une PME ; b) région d''implantation ; c) chiffre d''affaires annuel ; d) niveau de satisfaction (faible, moyen, élevé).
- Exercice 2 : Chiffre d''affaires journalier d''une boutique (milliers de FCFA) sur 8 jours : 45, 60, 52, 70, 48, 65, 58, 62. Calculez la moyenne, la médiane, Q1 et Q3.
- Exercice 3 : Calculez la variance et l''écart-type de la série de l''exercice 2.
- Exercice 4 : Deux séries ont pour moyennes 200 et 50 et pour écarts-types 30 et 12. Laquelle est relativement la plus dispersée ?

## Corrigé

- Exercice 1 : a) quantitative discrète ; b) qualitative nominale ; c) quantitative continue ; d) qualitative ordinale.
- Exercice 2 : Série ordonnée : 45, 48, 52, 58, 60, 62, 65, 70. Somme = 460 ; moyenne = 57,5. Médiane = (58 + 60)/2 = 59. 8/4 = 2 : Q1 = 2e valeur = 48 ; 3 × 8/4 = 6 : Q3 = 6e valeur = 62.
- Exercice 3 : Écarts : −12,5 ; −9,5 ; −5,5 ; 0,5 ; 2,5 ; 4,5 ; 7,5 ; 12,5. Carrés : 156,25 ; 90,25 ; 30,25 ; 0,25 ; 6,25 ; 20,25 ; 56,25 ; 156,25. Somme = 516. V = 516/8 = 64,5 ; σ ≈ 8,03.
- Exercice 4 : CV1 = 30/200 = 0,15 ; CV2 = 12/50 = 0,24. La seconde série est relativement plus dispersée, bien que son écart-type soit plus faible.', 'texte', 50, true, 10
from public.courses c where c.slug = 'statistiques-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Statistique descriptive : résumer une série de données');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Probabilités : conditionnement, Bayes et variables aléatoires', '## Objectifs de la leçon

- Manipuler les notions d''expérience aléatoire, d''événement et de probabilité.
- Calculer des probabilités conditionnelles et utiliser la formule des probabilités totales et la formule de Bayes.
- Définir une variable aléatoire discrète et calculer son espérance et sa variance.

## 1. Expérience aléatoire et événements

Une expérience aléatoire est une expérience dont on connaît les résultats possibles sans pouvoir prévoir lequel se produira : tirer un client au hasard dans un fichier, lancer un dé, observer si un emprunteur rembourse. L''ensemble des résultats possibles est l''univers Ω. Un événement est une partie de Ω.

Opérations : A ∩ B (A et B), A ∪ B (A ou B), Ā (contraire de A). Deux événements sont incompatibles si A ∩ B = ∅.

## 2. Probabilité

Une probabilité associe à chaque événement un nombre entre 0 et 1, avec P(Ω) = 1 et P(A ∪ B) = P(A) + P(B) si A et B sont incompatibles. On en déduit :

- P(Ā) = 1 − P(A).
- P(A ∪ B) = P(A) + P(B) − P(A ∩ B).

En situation d''équiprobabilité, P(A) = nombre de cas favorables / nombre de cas possibles. Les dénombrements utilisent souvent les combinaisons : le nombre de façons de choisir k éléments parmi n est C(n, k) = n! / (k! (n − k)!).

## 3. Probabilité conditionnelle et indépendance

La probabilité de A sachant B (avec P(B) > 0) est P(A | B) = P(A ∩ B) / P(B). On en tire P(A ∩ B) = P(B) × P(A | B).

A et B sont indépendants si P(A ∩ B) = P(A) × P(B), c''est-à-dire si savoir que B est réalisé ne change pas la probabilité de A.

Formule des probabilités totales : si B1, …, Bk forment une partition de Ω, P(A) = somme des P(Bi) × P(A | Bi).

Formule de Bayes : P(Bi | A) = P(Bi) × P(A | Bi) / P(A). Elle permet d''« inverser » le conditionnement.

## Exemple : une institution de microfinance

Dans le portefeuille d''une IMF (données fictives), 60 % des emprunteurs sont des femmes et 40 % des hommes. Le taux de remboursement à l''échéance est de 95 % chez les femmes et de 90 % chez les hommes.

- Probabilité qu''un emprunteur pris au hasard rembourse : P(R) = 0,6 × 0,95 + 0,4 × 0,90 = 0,57 + 0,36 = 0,93.
- Probabilité de défaut : P(D) = 1 − 0,93 = 0,07.
- Sachant qu''un emprunteur est en défaut, probabilité que ce soit une femme : P(F | D) = P(F) × P(D | F) / P(D) = 0,6 × 0,05 / 0,07 = 0,03 / 0,07 ≈ 0,43.

Bien que les femmes remboursent mieux, elles représentent environ 43 % des défauts, parce qu''elles sont majoritaires dans le portefeuille. C''est un piège classique d''interprétation.

## 4. Variables aléatoires discrètes

Une variable aléatoire X associe un nombre à chaque résultat d''une expérience. Elle est discrète si elle prend un nombre fini ou dénombrable de valeurs. Sa loi est donnée par les probabilités P(X = xi), dont la somme vaut 1.

- Espérance : E(X) = somme des xi × P(X = xi). C''est la valeur moyenne à long terme.
- Variance : V(X) = E(X²) − [E(X)]², avec E(X²) = somme des xi² × P(X = xi).
- Écart-type : σ(X) = √V(X).
- Propriétés : E(aX + b) = aE(X) + b et V(aX + b) = a²V(X).

## Exemple : ventes de motos

Un concessionnaire de Thiès vend chaque jour X motos, avec la loi suivante : P(X = 0) = 0,1 ; P(X = 1) = 0,3 ; P(X = 2) = 0,4 ; P(X = 3) = 0,2.

- E(X) = 0 + 0,3 + 0,8 + 0,6 = 1,7 moto par jour.
- E(X²) = 0 + 0,3 + 1,6 + 1,8 = 3,7.
- V(X) = 3,7 − 1,7² = 3,7 − 2,89 = 0,81 ; σ = 0,9.

## 5. Méthode

- Définir clairement les événements par des lettres.
- Traduire chaque donnée de l''énoncé : probabilité simple, conditionnelle, ou intersection.
- Dessiner un arbre pondéré : la somme des branches issues d''un même nœud vaut 1 ; on multiplie le long d''un chemin, on additionne les chemins.
- Vérifier que les résultats sont entre 0 et 1.

## Points clés

- P(Ā) = 1 − P(A) ; P(A ∪ B) = P(A) + P(B) − P(A ∩ B).
- P(A | B) = P(A ∩ B) / P(B) ; indépendance si P(A ∩ B) = P(A)P(B).
- Probabilités totales et Bayes s''appliquent avec un arbre.
- E(X), V(X) = E(X²) − E(X)², et E(aX + b) = aE(X) + b.

## Exercices

- Exercice 1 : Dans une promotion, 30 % des étudiants ont un emploi à temps partiel, 20 % ont une bourse et 8 % ont les deux. Quelle est la probabilité qu''un étudiant ait un emploi ou une bourse ? Les deux événements sont-ils indépendants ?
- Exercice 2 : Un test de qualité détecte 98 % des sacs de riz défectueux et classe à tort comme défectueux 3 % des sacs conformes. 5 % des sacs sont défectueux. Calculez la probabilité qu''un sac soit déclaré défectueux, puis la probabilité qu''il le soit vraiment sachant qu''il est déclaré défectueux.
- Exercice 3 : X prend les valeurs 10, 20, 50 avec les probabilités 0,5 ; 0,3 ; 0,2. Calculez E(X), V(X) et σ(X).
- Exercice 4 : De combien de façons peut-on choisir un comité de 3 personnes dans un groupe de 8 ?

## Corrigé

- Exercice 1 : P(E ∪ B) = 0,30 + 0,20 − 0,08 = 0,42. P(E) × P(B) = 0,06 ≠ 0,08 : les événements ne sont pas indépendants.
- Exercice 2 : P(déclaré défectueux) = 0,05 × 0,98 + 0,95 × 0,03 = 0,049 + 0,0285 = 0,0775. P(défectueux | déclaré) = 0,049 / 0,0775 ≈ 0,632. Plus d''un sac sur trois déclaré défectueux est en réalité conforme.
- Exercice 3 : E(X) = 5 + 6 + 10 = 21. E(X²) = 0,5 × 100 + 0,3 × 400 + 0,2 × 2 500 = 50 + 120 + 500 = 670. V(X) = 670 − 441 = 229 ; σ ≈ 15,13.
- Exercice 4 : C(8, 3) = 8!/(3! × 5!) = (8 × 7 × 6)/(3 × 2 × 1) = 56.', 'texte', 55, false, 20
from public.courses c where c.slug = 'statistiques-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Probabilités : conditionnement, Bayes et variables aléatoires');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Les lois usuelles : binomiale et normale', '## Objectifs de la leçon

- Reconnaître une situation binomiale et calculer des probabilités avec la loi binomiale.
- Utiliser la loi normale et la table de la loi normale centrée réduite.
- Connaître les conditions d''approximation de la loi binomiale par la loi normale.

## 1. La loi de Bernoulli et la loi binomiale

Une épreuve de Bernoulli a deux issues : succès (probabilité p) et échec (probabilité 1 − p). Exemple : un appel d''un téléconseiller aboutit ou non à une vente.

Si l''on répète n fois, de manière indépendante, la même épreuve de Bernoulli, le nombre X de succès suit la loi binomiale B(n, p) :

- P(X = k) = C(n, k) × p^k × (1 − p)^(n − k), pour k = 0, 1, …, n.
- E(X) = np ; V(X) = np(1 − p).

Conditions à vérifier : nombre d''épreuves fixé, deux issues, probabilité de succès constante, indépendance des épreuves.

## Exemple : centre d''appels à Dakar

Un téléconseiller convertit un appel en vente avec une probabilité de 0,2 (indépendamment d''un appel à l''autre). Il passe 10 appels. X suit B(10 ; 0,2).

- P(X = 0) = 0,8^10 ≈ 0,1074.
- P(X = 2) = C(10, 2) × 0,2² × 0,8^8 = 45 × 0,04 × 0,16777 ≈ 0,3020.
- P(X ≥ 2) = 1 − P(X = 0) − P(X = 1), avec P(X = 1) = 10 × 0,2 × 0,8^9 ≈ 0,2684 ; d''où P(X ≥ 2) ≈ 1 − 0,1074 − 0,2684 = 0,6242.
- E(X) = 10 × 0,2 = 2 ventes ; V(X) = 10 × 0,2 × 0,8 = 1,6 ; σ ≈ 1,26.

## 2. La loi normale

Une variable continue X suit la loi normale N(μ, σ²) de moyenne μ et d''écart-type σ si sa densité a la forme d''une courbe en cloche symétrique autour de μ. De nombreux phénomènes s''en approchent : erreurs de mesure, poids de produits conditionnés, et, grâce au théorème central limite, les moyennes d''échantillons.

Pour une variable continue, P(X = a) = 0 : on calcule des probabilités d''intervalles, qui correspondent à des aires sous la courbe.

Centrage-réduction : si X suit N(μ, σ²), alors Z = (X − μ)/σ suit la loi normale centrée réduite N(0, 1), dont la fonction de répartition Φ(z) = P(Z ≤ z) est donnée par une table.

Valeurs à connaître : Φ(1) ≈ 0,8413 ; Φ(1,5) ≈ 0,9332 ; Φ(1,645) ≈ 0,95 ; Φ(1,96) ≈ 0,975 ; Φ(2) ≈ 0,9772 ; Φ(2,576) ≈ 0,995.

Règles de calcul :

- P(Z ≤ −z) = 1 − Φ(z), par symétrie.
- P(a ≤ Z ≤ b) = Φ(b) − Φ(a).
- P(−z ≤ Z ≤ z) = 2Φ(z) − 1.

Repères : environ 68 % des valeurs sont à moins d''un écart-type de la moyenne, 95 % à moins de 1,96 écart-type, et 99,7 % à moins de trois écarts-types.

## Exemple : chiffre d''affaires journalier

Le chiffre d''affaires journalier X d''une station de lavage suit N(500, 80²), en milliers de FCFA.

- P(X ≤ 620) = Φ((620 − 500)/80) = Φ(1,5) ≈ 0,9332.
- P(X ≥ 380) = P(Z ≥ −1,5) = Φ(1,5) ≈ 0,9332.
- P(420 ≤ X ≤ 580) = Φ(1) − Φ(−1) = 2 × 0,8413 − 1 = 0,6826.
- Seuil dépassé seulement 5 % des jours : x = 500 + 1,645 × 80 ≈ 631,6 milliers de FCFA.

## 3. Approximation de la binomiale par la normale

Lorsque n est grand et que p n''est pas trop proche de 0 ou de 1 (règle usuelle : np ≥ 5 et n(1 − p) ≥ 5, certains manuels exigent 10), la loi B(n, p) peut être approchée par N(np, np(1 − p)). On améliore la précision avec la correction de continuité : P(X ≤ k) ≈ P(Y ≤ k + 0,5).

Exemple : sur 400 clients, chacun achète un produit d''épargne avec une probabilité de 0,25. X suit B(400 ; 0,25), de moyenne 100 et d''écart-type √75 ≈ 8,66. P(X ≤ 110) ≈ Φ((110,5 − 100)/8,66) = Φ(1,21) ≈ 0,887.

## 4. Méthode

- Identifier la loi : comptage de succès sur n épreuves indépendantes → binomiale ; variable continue en cloche → normale.
- Écrire les paramètres.
- Pour la normale, centrer et réduire, puis utiliser la table et la symétrie.
- Contrôler la vraisemblance du résultat (une probabilité est entre 0 et 1, et la moyenne doit être un ordre de grandeur plausible).

## Points clés

- B(n, p) : P(X = k) = C(n, k) p^k (1 − p)^(n − k), E = np, V = np(1 − p).
- N(μ, σ²) : on se ramène à Z = (X − μ)/σ et à la table de Φ.
- 1,96 correspond à 95 % bilatéral, 1,645 à 95 % unilatéral.
- Approximation normale de la binomiale si np et n(1 − p) sont suffisamment grands.

## Exercices

- Exercice 1 : Un commercial réussit une vente avec la probabilité 0,4 à chaque visite. Il fait 5 visites. Calculez la probabilité d''exactement 3 ventes et l''espérance du nombre de ventes.
- Exercice 2 : Le poids des sacs de riz suit N(25 ; 0,2²) en kg. Calculez la probabilité qu''un sac pèse moins de 24,7 kg.
- Exercice 3 : Les notes d''un examen suivent N(11 ; 3²). Quelle proportion d''étudiants obtient entre 8 et 14 ? Au-dessus de 17 ?
- Exercice 4 : X suit B(100 ; 0,5). Peut-on l''approcher par une loi normale ? Donnez ses paramètres.

## Corrigé

- Exercice 1 : P(X = 3) = C(5, 3) × 0,4³ × 0,6² = 10 × 0,064 × 0,36 = 0,2304. E(X) = 5 × 0,4 = 2.
- Exercice 2 : z = (24,7 − 25)/0,2 = −1,5. P = 1 − Φ(1,5) ≈ 1 − 0,9332 = 0,0668, soit environ 6,7 % des sacs.
- Exercice 3 : Entre 8 et 14 : z de −1 à 1, P ≈ 0,6826, environ 68 %. Au-dessus de 17 : z = 2, P ≈ 1 − 0,9772 = 0,0228, environ 2,3 %.
- Exercice 4 : np = 50 et n(1 − p) = 50, tous deux ≥ 5 : oui. Paramètres : moyenne 50, variance 25, écart-type 5.', 'texte', 55, false, 30
from public.courses c where c.slug = 'statistiques-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Les lois usuelles : binomiale et normale');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Échantillonnage et intervalles de confiance', '## Objectifs de la leçon

- Distinguer population et échantillon, paramètre et estimateur.
- Connaître la loi d''échantillonnage de la moyenne et de la proportion.
- Construire et interpréter un intervalle de confiance pour une moyenne et pour une proportion.
- Déterminer la taille d''échantillon nécessaire pour une précision donnée.

## 1. Pourquoi échantillonner ?

Interroger toute une population (tous les ménages d''un pays, tous les clients d''un opérateur) coûte cher et prend du temps. On étudie donc un échantillon, puis on généralise à la population : c''est l''inférence statistique. Les recensements, comme ceux que réalisent les instituts nationaux de statistique, sont exhaustifs ; la plupart des enquêtes (emploi, consommation, satisfaction) reposent sur des échantillons.

La qualité du résultat dépend de la façon de tirer l''échantillon. Dans un échantillon aléatoire simple, chaque individu a la même probabilité d''être choisi. D''autres méthodes existent : stratification (par région, par milieu urbain et rural), tirage par grappes (quartiers, villages), méthode des quotas. Un échantillon biaisé (par exemple interroger seulement les personnes joignables par internet) donne des résultats faux, quelle que soit sa taille.

## 2. Paramètres et estimateurs

- Paramètres de la population (inconnus) : moyenne μ, écart-type σ, proportion p.
- Estimateurs calculés sur l''échantillon : moyenne x̄, écart-type corrigé s (avec division par n − 1), proportion observée f.

Un bon estimateur est sans biais (en moyenne, il vise juste) et convergent (sa précision augmente avec n). C''est pour obtenir un estimateur sans biais de la variance qu''on divise par n − 1.

## 3. Lois d''échantillonnage

D''un échantillon à l''autre, x̄ varie. Si les observations sont indépendantes, de moyenne μ et d''écart-type σ :

- E(x̄) = μ et l''écart-type de x̄ (erreur type) vaut σ/√n.
- Théorème central limite : pour n assez grand (souvent n ≥ 30), x̄ suit approximativement N(μ, σ²/n), quelle que soit la loi de la population.

Pour une proportion, f suit approximativement N(p, p(1 − p)/n) si n est grand.

Conséquence importante : pour diviser l''erreur type par 2, il faut multiplier la taille de l''échantillon par 4.

## 4. Intervalle de confiance pour une moyenne

Grand échantillon (n ≥ 30) : au niveau de confiance 95 %, IC = [x̄ − 1,96 × s/√n ; x̄ + 1,96 × s/√n]. Pour 99 %, on remplace 1,96 par 2,576 ; pour 90 %, par 1,645.

Petit échantillon issu d''une population normale, σ inconnu : on utilise la loi de Student à n − 1 degrés de liberté : IC = x̄ ± t × s/√n, où t est lu dans la table de Student.

Interprétation correcte : si l''on répétait l''enquête un grand nombre de fois, environ 95 % des intervalles ainsi construits contiendraient la vraie moyenne μ. On ne dit pas que μ « a 95 % de chances » d''être dans l''intervalle calculé, car μ est fixe.

## Exemple : dépenses de téléphone

Une enquête auprès de 100 ménages de Ziguinchor donne une dépense mensuelle moyenne de téléphonie de 12 500 FCFA, avec un écart-type corrigé s = 4 000 FCFA. Erreur type : 4 000/√100 = 400. Marge à 95 % : 1,96 × 400 = 784. IC à 95 % : [11 716 ; 13 284] FCFA.

Petit échantillon : 16 commerçants déclarent un chiffre d''affaires journalier moyen de 52 milliers de FCFA, avec s = 8. Avec 15 degrés de liberté, t ≈ 2,131 pour 95 %. Marge : 2,131 × 8/4 = 4,262. IC : [47,74 ; 56,26] milliers de FCFA.

## 5. Intervalle de confiance pour une proportion

IC à 95 % : f ± 1,96 × √(f(1 − f)/n), valable si n est grand et que nf et n(1 − f) sont suffisamment grands (au moins 5, ou 10 selon les manuels).

Exemple : sur 400 personnes interrogées, 140 déclarent épargner via un compte de monnaie électronique : f = 0,35. Erreur type : √(0,35 × 0,65/400) ≈ 0,0238. Marge : 1,96 × 0,0238 ≈ 0,047. IC à 95 % : [0,303 ; 0,397], soit entre 30,3 % et 39,7 % environ.

## 6. Taille d''échantillon

Pour estimer une proportion avec une marge d''erreur e au niveau 95 % : n = 1,96² × p(1 − p)/e². Si l''on ne connaît pas p, on prend p = 0,5, qui maximise p(1 − p) et donne la taille la plus prudente.

Exemple : marge de 3 points (e = 0,03) : n = 3,8416 × 0,25/0,0009 ≈ 1 067,1, donc il faut au moins 1 068 personnes. C''est pourquoi beaucoup de sondages nationaux portent sur environ un millier de personnes.

## Points clés

- L''échantillon doit être aléatoire et représentatif ; la taille ne corrige pas un biais.
- L''erreur type de la moyenne est σ/√n.
- IC à 95 % : estimation ± 1,96 × erreur type (Student pour les petits échantillons).
- n = z² p(1 − p)/e² pour une proportion.

## Exercices

- Exercice 1 : Sur 64 PME, le délai moyen de paiement des clients est de 48 jours, s = 16 jours. Construisez l''IC à 95 % du délai moyen.
- Exercice 2 : Sur 300 étudiants, 126 possèdent un ordinateur portable. Construisez l''IC à 95 % de la proportion.
- Exercice 3 : Quelle taille d''échantillon faut-il pour estimer une proportion à ± 5 points au niveau 95 %, sans information préalable ?
- Exercice 4 : Par combien faut-il multiplier la taille d''un échantillon pour diviser la marge d''erreur par 3 ?

## Corrigé

- Exercice 1 : Erreur type = 16/√64 = 2. Marge = 1,96 × 2 = 3,92. IC = [44,08 ; 51,92] jours.
- Exercice 2 : f = 126/300 = 0,42. Erreur type = √(0,42 × 0,58/300) ≈ 0,0285. Marge ≈ 0,0559. IC ≈ [0,364 ; 0,476].
- Exercice 3 : n = 3,8416 × 0,25/0,0025 = 384,16, donc 385 personnes.
- Exercice 4 : La marge est proportionnelle à 1/√n : pour la diviser par 3, il faut multiplier n par 9.', 'texte', 55, false, 40
from public.courses c where c.slug = 'statistiques-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Échantillonnage et intervalles de confiance');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Les tests d''hypothèses : principe et applications', '## Objectifs de la leçon

- Comprendre la logique d''un test statistique : hypothèses, statistique de test, règle de décision.
- Connaître les deux types d''erreurs et la notion de p-valeur.
- Réaliser un test sur une moyenne et un test sur une proportion.
- Découvrir le principe du test du khi-deux d''indépendance.

## 1. La logique du test

Un test d''hypothèse permet de décider, à partir d''un échantillon, si une affirmation sur la population est compatible avec les données. Exemple : un fournisseur affirme que ses sacs de riz pèsent en moyenne 25 kg ; un grossiste de Kaolack veut vérifier.

- Hypothèse nulle H0 : l''affirmation de référence (μ = 25).
- Hypothèse alternative H1 : ce que l''on soupçonne (μ ≠ 25 pour un test bilatéral, μ < 25 pour un test unilatéral).

On raisonne par l''absurde : on suppose H0 vraie et on calcule à quel point le résultat observé serait surprenant. Si l''observation est très improbable sous H0, on rejette H0.

## 2. Erreurs et risques

- Erreur de première espèce : rejeter H0 alors qu''elle est vraie. Sa probabilité maximale α (le seuil ou risque) est fixée à l''avance, souvent 5 %.
- Erreur de seconde espèce : ne pas rejeter H0 alors qu''elle est fausse ; sa probabilité est notée β. La puissance du test vaut 1 − β ; elle augmente avec la taille de l''échantillon.

Ne pas rejeter H0 ne prouve pas qu''elle est vraie : cela signifie seulement que les données ne permettent pas de conclure contre elle.

## 3. Méthode générale en six étapes

- Formuler H0 et H1.
- Choisir le seuil α.
- Choisir la statistique de test et sa loi sous H0.
- Déterminer la région de rejet (valeurs critiques).
- Calculer la statistique sur l''échantillon.
- Conclure, en termes statistiques puis dans le langage du problème.

## 4. Test sur une moyenne (grand échantillon)

Statistique : Z = (x̄ − μ0)/(s/√n), qui suit approximativement N(0, 1) sous H0. Au seuil de 5 %, test bilatéral : on rejette H0 si |Z| > 1,96 ; test unilatéral à gauche : si Z < −1,645.

Exemple : le grossiste pèse 64 sacs ; il obtient x̄ = 24,9 kg et s = 0,4 kg. H0 : μ = 25 ; H1 : μ ≠ 25. Z = (24,9 − 25)/(0,4/8) = −0,1/0,05 = −2. Comme |−2| > 1,96, on rejette H0 au seuil de 5 % : le poids moyen semble différent de 25 kg (inférieur). Au seuil de 1 % (valeur critique 2,576), on ne rejetterait pas H0 : la conclusion dépend du seuil choisi, d''où l''intérêt de la p-valeur.

## 5. La p-valeur

La p-valeur est la probabilité, sous H0, d''obtenir un résultat au moins aussi extrême que celui observé. On rejette H0 si p < α. Dans l''exemple : p = P(|Z| ≥ 2) = 2 × (1 − Φ(2)) = 2 × 0,0228 ≈ 0,046. Elle est inférieure à 0,05 mais supérieure à 0,01, ce qui confirme les deux conclusions précédentes.

Attention : la p-valeur n''est pas la probabilité que H0 soit vraie, et un résultat « statistiquement significatif » n''est pas forcément important en pratique. Un écart de 100 g par sac peut toutefois représenter une somme importante sur des milliers de sacs.

## 6. Test sur une proportion

Statistique : Z = (f − p0)/√(p0(1 − p0)/n).

Exemple : un opérateur affirme que 60 % de ses clients sont satisfaits. Une association de consommateurs interroge 200 clients : 108 se disent satisfaits, f = 0,54. H0 : p = 0,6 ; H1 : p < 0,6 (on soupçonne une surestimation). Z = (0,54 − 0,6)/√(0,6 × 0,4/200) = −0,06/0,0346 ≈ −1,73. Test unilatéral à 5 % : valeur critique −1,645. Comme −1,73 < −1,645, on rejette H0 : l''affirmation de l''opérateur semble exagérée.

Remarque : en test bilatéral (H1 : p ≠ 0,6), |Z| = 1,73 < 1,96 et l''on ne rejetterait pas H0. Le choix de H1 doit être fait avant de regarder les données, en fonction de la question posée.

## 7. Le test du khi-deux d''indépendance (principe)

Pour savoir si deux variables qualitatives sont liées (par exemple, le milieu de résidence et l''usage d''un service bancaire), on compare les effectifs observés d''un tableau croisé aux effectifs théoriques attendus en cas d''indépendance (effectif théorique = total ligne × total colonne / total général). La statistique χ² = somme des (observé − théorique)²/théorique suit, sous H0 (indépendance), une loi du khi-deux à (lignes − 1) × (colonnes − 1) degrés de liberté. Une valeur élevée conduit à rejeter l''indépendance.

## Points clés

- H0 est l''hypothèse de référence ; on la rejette si les données sont trop improbables sous H0.
- α est le risque de rejeter à tort H0 ; la puissance est la capacité à détecter un effet réel.
- Rejet si |Z| > 1,96 (bilatéral, 5 %) ou si p-valeur < α.
- Bien choisir le sens de H1 avant l''analyse.

## Exercices

- Exercice 1 : Un hôtel affirme que la durée moyenne de séjour est de 3 nuits. Sur 100 séjours, x̄ = 3,3 et s = 1,2. Testez au seuil de 5 % (bilatéral).
- Exercice 2 : Une entreprise affirme que 10 % de ses produits sont défectueux au plus. Sur 400 produits contrôlés, 52 sont défectueux. Testez H0 : p = 0,10 contre H1 : p > 0,10 au seuil de 5 %.
- Exercice 3 : Expliquez la différence entre erreur de première et de seconde espèce avec l''exemple d''un test de dépistage.
- Exercice 4 : Une étude obtient une p-valeur de 0,03. Que conclut-on au seuil de 5 % ? au seuil de 1 % ?

## Corrigé

- Exercice 1 : Z = (3,3 − 3)/(1,2/10) = 0,3/0,12 = 2,5 > 1,96 : on rejette H0. La durée moyenne semble supérieure à 3 nuits.
- Exercice 2 : f = 52/400 = 0,13. Z = (0,13 − 0,10)/√(0,1 × 0,9/400) = 0,03/0,015 = 2. Valeur critique unilatérale : 1,645. 2 > 1,645 : on rejette H0 ; la proportion de défectueux semble supérieure à 10 %.
- Exercice 3 : H0 : la personne est saine. Erreur de première espèce : déclarer malade une personne saine (faux positif). Erreur de seconde espèce : déclarer saine une personne malade (faux négatif).
- Exercice 4 : Au seuil de 5 %, 0,03 < 0,05 : on rejette H0. Au seuil de 1 %, 0,03 > 0,01 : on ne rejette pas H0.', 'texte', 55, false, 50
from public.courses c where c.slug = 'statistiques-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Les tests d''hypothèses : principe et applications');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : décrire, modéliser, estimer et tester', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 2 en économie, gestion, sciences sociales.
- Objectifs : enchaîner description, probabilités, lois usuelles, estimation et tests sur un même cas réel simulé.
- Matériel : diaporama, table de la loi normale centrée réduite, calculatrice ou tableur.
- Prérequis : leçons écrites 1 à 5 ; calcul de racines carrées et de puissances.

## Déroulé minuté

## 00:00 – 05:00 · Le cas fil rouge

Bonjour à tous. Aujourd''hui, nous allons suivre une étude fictive menée par une institution de microfinance de Thiès qui veut mieux connaître ses clients commerçants. Elle a des données sur leurs chiffres d''affaires, sur les remboursements, et elle se pose des questions : quel est le chiffre d''affaires typique ? quel risque de défaut ? quelle proportion de clients utilise le paiement mobile ? peut-on croire l''agence qui affirme que ses clients remboursent mieux qu''ailleurs ? Chacune de ces questions correspond à un chapitre du cours.

Visuel : schéma « décrire, modéliser, estimer, tester ».

## 05:00 – 17:00 · Décrire : indicateurs de position et de dispersion

Commençons par dix clients et leurs ventes mensuelles, en centaines de milliers de FCFA : 8, 10, 12, 12, 15, 15, 15, 18, 20, 25. Calculons ensemble.

La somme fait 150, donc la moyenne vaut 15. La série est déjà ordonnée ; n est pair, la médiane est la moyenne des 5e et 6e valeurs, soit 15. Le mode est 15. Les quartiles : Q1 est la 3e valeur, 12 ; Q3 la 8e, 18.

Pour la variance, je calcule les écarts à la moyenne : −7, −5, −3, −3, 0, 0, 0, 3, 5, 10. Leurs carrés font au total 226 ; la variance vaut 22,6 et l''écart-type environ 4,75. Le coefficient de variation, écart-type divisé par moyenne, vaut environ 0,32 : la dispersion représente près d''un tiers du niveau moyen, ce qui est assez élevé. Pour l''IMF, cela signifie que le montant de prêt adapté varie beaucoup d''un client à l''autre : un produit unique ne conviendra pas à tout le monde.

Visuel : boîte à moustaches avec Q1 = 12, médiane = 15, Q3 = 18, minimum 8 et maximum 25.

Question à la classe : si l''on remplace 25 par 75, que deviennent la moyenne et la médiane ? Réponse : la moyenne passe à 20, la médiane reste 15. Voilà pourquoi, pour des revenus, on préfère souvent la médiane.

## 17:00 – 30:00 · Modéliser : probabilités conditionnelles

L''IMF compte 60 % de femmes parmi ses emprunteurs. Les femmes remboursent à 95 %, les hommes à 90 % (données fictives). Je dessine l''arbre au tableau : première branche, femme ou homme ; seconde branche, rembourse ou non.

Probabilité de remboursement : 0,6 × 0,95 + 0,4 × 0,9 = 0,93. Probabilité de défaut : 0,07. Et si un dossier est en défaut, quelle probabilité que ce soit une femme ? Formule de Bayes : 0,03 divisé par 0,07, environ 43 %.

Question : un journaliste écrit que « les femmes représentent 43 % des défauts, donc elles remboursent mal ». Qu''en pensez-vous ? Réponse attendue : c''est faux ; leur taux de défaut est de 5 % contre 10 % pour les hommes. Il faut toujours préciser de quelle probabilité conditionnelle on parle.

## 30:00 – 42:00 · Les lois usuelles

Un agent de crédit visite 10 prospects ; chacun accepte un prêt avec une probabilité de 0,2, indépendamment. Le nombre d''acceptations suit une loi binomiale B(10 ; 0,2). Probabilité d''exactement deux acceptations : 45 × 0,04 × 0,8 puissance 8, environ 0,302. Espérance : 2 ; variance : 1,6.

Passons à la loi normale. Le chiffre d''affaires journalier d''un client type suit une loi normale de moyenne 500 et d''écart-type 80, en milliers de FCFA. Probabilité de dépasser 620 ? On centre et on réduit : (620 − 500)/80 = 1,5. P(Z > 1,5) = 1 − 0,9332 = 0,0668.

Visuel : courbe en cloche avec les zones à 68 %, 95 % et 99,7 %.

Question : quel chiffre d''affaires n''est dépassé que 5 % des jours ? Réponse : 500 + 1,645 × 80, environ 631,6.

## 42:00 – 50:00 · Pause interactive et quiz

Trois questions rapides, répondez sur votre feuille.

- Question 1 : P(A) = 0,3, P(B) = 0,5, A et B indépendants. P(A ∩ B) ? Réponse : 0,15.
- Question 2 : Z suit N(0, 1). P(−1,96 ≤ Z ≤ 1,96) ? Réponse : 0,95.
- Question 3 : X suit B(20 ; 0,1). Espérance et variance ? Réponse : 2 et 1,8.

Prenez deux minutes pour souffler, nous passons à l''inférence.

## 50:00 – 1:02:00 · Estimer : intervalles de confiance

L''IMF ne peut pas interroger ses milliers de clients. Elle tire 400 clients au hasard : 140 utilisent le paiement mobile pour leur commerce, soit 35 %. Erreur type : racine de 0,35 × 0,65 divisé par 400, environ 0,0238. Marge à 95 % : 1,96 fois 0,0238, environ 4,7 points. Intervalle : de 30,3 % à 39,7 %.

Pour une moyenne : 100 clients, chiffre d''affaires mensuel moyen 1 250 milliers de FCFA, écart-type 400. Erreur type 40, marge 78,4, intervalle de 1 171,6 à 1 328,4.

J''insiste sur l''interprétation : 95 % des intervalles construits de cette façon contiennent la vraie valeur. Et sur la taille : pour une marge de 3 points sans information préalable, il faut 1 068 personnes ; pour diviser la marge par deux, il faut quatre fois plus de personnes.

Question : un échantillon de 5 000 personnes recrutées uniquement sur un réseau social est-il meilleur qu''un échantillon aléatoire de 1 000 ? Réponse : non, il est probablement biaisé ; la taille ne corrige pas le biais.

## 1:02:00 – 1:15:00 · Tester : la logique de la décision

L''agence de Thiès affirme que ses clients remboursent à plus de 93 %, la moyenne du réseau. Sur 300 dossiers tirés au hasard, 288 sont remboursés à l''échéance, soit 96 %. Test : H0 : p = 0,93 ; H1 : p > 0,93. Statistique : (0,96 − 0,93) divisé par racine de 0,93 × 0,07/300. Calculons : 0,93 × 0,07 = 0,0651 ; divisé par 300, 0,000217 ; la racine vaut environ 0,01473. Z ≈ 0,03/0,01473 ≈ 2,04. C''est supérieur à 1,645 : on rejette H0 au seuil de 5 %. L''agence semble effectivement faire mieux que le réseau.

Visuel : courbe normale avec la zone de rejet à droite.

Rappel des deux erreurs : rejeter H0 à tort, avec un risque α fixé ; ne pas la rejeter alors qu''elle est fausse. Et la p-valeur : ici, P(Z ≥ 2,04) ≈ 0,021 ; elle est inférieure à 5 %, donc rejet, mais supérieure à 1 %.

## 1:15:00 – 1:24:00 · Aller plus loin : le khi-deux

Dernière question de l''IMF : l''usage du paiement mobile dépend-il du milieu, urbain ou rural ? On construit un tableau croisé, on calcule les effectifs théoriques en cas d''indépendance, puis la statistique du khi-deux. Si elle dépasse la valeur critique pour un degré de liberté, 3,84 au seuil de 5 %, on conclut à une liaison. Prenons un tableau fictif de 300 clients. En ville, 200 clients : 120 utilisent le paiement mobile, 80 non. En milieu rural, 100 clients : 40 l''utilisent, 60 non. Au total, 160 utilisateurs et 140 non-utilisateurs.

Effectifs théoriques sous l''hypothèse d''indépendance : total de la ligne fois total de la colonne divisé par 300. Ville et utilisateurs : 200 × 160/300 ≈ 106,67 ; ville et non-utilisateurs : 93,33 ; rural et utilisateurs : 53,33 ; rural et non-utilisateurs : 46,67. Chaque écart entre observé et théorique vaut 13,33 en valeur absolue. La statistique est la somme des écarts au carré divisés par les effectifs théoriques : environ 1,67 + 1,90 + 3,33 + 3,81, soit 10,71.

Question à la classe : combien de degrés de liberté ? Réponse : (2 − 1) × (2 − 1) = 1. La valeur critique au seuil de 5 % est 3,84 ; 10,71 la dépasse largement : on rejette l''indépendance. L''usage du paiement mobile semble lié au milieu de résidence, plus fréquent en ville dans cet échantillon. Attention : une liaison statistique n''est pas une preuve de causalité ; d''autres facteurs, comme le revenu ou la couverture du réseau, peuvent l''expliquer.

## 1:24:00 – 1:30:00 · Synthèse et évaluation finale

Retenez la chaîne : décrire avec moyenne, médiane, écart-type ; modéliser avec les probabilités et les lois ; estimer avec un intervalle de confiance ; décider avec un test.

Évaluation finale, cinq questions :

- Question 1 : Série 4, 6, 8, 10, 12. Moyenne et variance ? Réponse : moyenne 8 ; écarts −4, −2, 0, 2, 4 ; variance 40/5 = 8.
- Question 2 : P(A) = 0,4 et P(B | A) = 0,5. P(A ∩ B) ? Réponse : 0,2.
- Question 3 : X suit N(100, 15²). P(X ≤ 130) ? Réponse : z = 2, Φ(2) ≈ 0,9772.
- Question 4 : n = 400, f = 0,5. Marge d''erreur à 95 % ? Réponse : 1,96 × √(0,25/400) = 1,96 × 0,025 = 0,049, environ 4,9 points.
- Question 5 : Test bilatéral à 5 %, Z = 1,5. Décision ? Réponse : |Z| < 1,96, on ne rejette pas H0.

Merci à tous. Pour la prochaine séance, reprenez les données de la leçon 1 dans un tableur et refaites tous les calculs.', 'video', 90, false, 60
from public.courses c where c.slug = 'statistiques-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : décrire, modéliser, estimer et tester');

-- Cours : SVT 4e : les fonctions de nutrition, la reproduction et la santé
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'svt-4e', (select id from public.levels where name = '4e'), null, 'SVT', 'SVT 4e : les fonctions de nutrition, la reproduction et la santé', 'Ce cours de Sciences de la Vie et de la Terre de 4e explique comment le corps humain se nourrit, respire, fait circuler le sang et se reproduit, puis aborde la santé : paludisme, hygiène et vaccination. Il s''appuie sur des expériences simples et des situations de la vie quotidienne en Afrique de l''Ouest. Prérequis : notions de 6e et 5e sur les êtres vivants et la cellule.', true, 40
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Nutrition et digestion', '## Objectifs de la leçon

- Classer les aliments et connaître le rôle des nutriments.
- Décrire l''appareil digestif et les transformations des aliments.
- Expliquer l''absorption intestinale.
- Interpréter une expérience de digestion in vitro.

## Aliments et nutriments

Les aliments que nous consommons (riz, mil, poisson, niébé, légumes, fruits, lait…) contiennent des substances appelées constituants alimentaires :
- les glucides (amidon du riz et du mil, sucre) : principale source d''énergie ;
- les lipides (huile d''arachide, beurre, graisses) : source d''énergie et de réserve ;
- les protides ou protéines (poisson, viande, œufs, niébé, lait) : construction et réparation du corps ;
- l''eau, les sels minéraux (calcium, fer…) et les vitamines : indispensables au bon fonctionnement de l''organisme.

On regroupe les aliments en groupes : aliments énergétiques, aliments bâtisseurs, aliments protecteurs. Une ration alimentaire équilibrée contient des aliments de chaque groupe. Un plat comme le thiéboudiène associe riz (glucides), poisson (protides), huile (lipides) et légumes (vitamines, sels minéraux).

Les déséquilibres alimentaires provoquent des maladies : le manque de protéines chez le jeune enfant peut provoquer le kwashiorkor ; le manque de fer, une anémie ; l''excès de sucre et de graisses favorise l''obésité et le diabète.

## L''appareil digestif

Le tube digestif comprend : la bouche, le pharynx, l''œsophage, l''estomac, l''intestin grêle, le gros intestin (côlon) et le rectum, qui se termine par l''anus. Des glandes digestives y déversent leurs sucs : les glandes salivaires, les glandes de la paroi de l''estomac, le foie (qui produit la bile, stockée dans la vésicule biliaire), le pancréas et les glandes de la paroi intestinale.

## Les transformations des aliments

Transformations mécaniques : la mastication par les dents découpe et broie les aliments ; les contractions de l''estomac et de l''intestin les brassent et les font avancer.

Transformations chimiques : les sucs digestifs contiennent des enzymes, des substances qui découpent les grosses molécules en petites molécules appelées nutriments.
- Dans la bouche, l''amylase salivaire commence la transformation de l''amidon en maltose.
- Dans l''estomac, la pepsine commence la digestion des protéines, dans un milieu très acide.
- Dans l''intestin grêle, le suc pancréatique et le suc intestinal achèvent la digestion : l''amidon est transformé en glucose, les protéines en acides aminés, les lipides en acides gras et glycérol. La bile, qui ne contient pas d''enzyme, émulsionne les graisses en fines gouttelettes, ce qui facilite l''action de la lipase.

Les sels minéraux, les vitamines et l''eau ne sont pas digérés : ils sont directement absorbés. Les fibres végétales ne sont pas digérées ; elles favorisent le transit.

## L''expérience de digestion in vitro

On prépare deux tubes contenant de l''empois d''amidon. Dans le tube A on ajoute de la salive, dans le tube B de l''eau. On place les deux tubes au bain-marie à 37 °C pendant 15 minutes. Puis on fait deux tests :
- l''eau iodée colore l''amidon en bleu-noir ;
- la liqueur de Fehling, chauffée, donne un précipité rouge brique en présence de sucres réducteurs (comme le maltose ou le glucose).

Résultats : tube B : bleu-noir avec l''eau iodée, pas de précipité rouge. Tube A : pas de coloration bleu-noir, précipité rouge brique. Conclusion : la salive a transformé l''amidon en sucre réducteur. Si on refait l''expérience à 0 °C ou avec de la salive bouillie, l''amidon n''est pas transformé : l''enzyme agit à la température du corps et est détruite par la chaleur.

## L''absorption intestinale

Les nutriments traversent la paroi de l''intestin grêle et passent dans le sang (et la lymphe) : c''est l''absorption. La paroi de l''intestin grêle est très plissée et couverte de minuscules replis, les villosités intestinales, très riches en vaisseaux sanguins. Ces replis augmentent énormément la surface d''échange. Les nutriments sont ensuite transportés par le sang vers toutes les cellules. Les résidus non absorbés passent dans le gros intestin, où l''eau est en partie réabsorbée, puis sont éliminés sous forme de selles.

## Points clés

- Aliments énergétiques, bâtisseurs et protecteurs : une ration équilibrée les associe.
- Les enzymes des sucs digestifs transforment les aliments en nutriments.
- Amidon → glucose ; protéines → acides aminés ; lipides → acides gras et glycérol.
- Les nutriments sont absorbés au niveau des villosités de l''intestin grêle.

## Exercices

Exercice 1 : Classer les aliments suivants selon leur constituant principal : riz, huile d''arachide, poisson, mangue, niébé, beurre de karité.

Exercice 2 : Citer dans l''ordre les organes traversés par les aliments, de la bouche à l''anus.

Exercice 3 : Pourquoi place-t-on les tubes à 37 °C dans l''expérience de digestion in vitro ? Que se passe-t-il avec de la salive bouillie ?

Exercice 4 : Quel est le rôle de la bile ? Contient-elle des enzymes ?

Exercice 5 : Expliquer pourquoi la structure de la paroi de l''intestin grêle est adaptée à l''absorption.

## Corrigé

Exercice 1 : Glucides : riz, mangue (sucres). Lipides : huile d''arachide, beurre de karité. Protides : poisson, niébé (le niébé est aussi riche en glucides).

Exercice 2 : Bouche, pharynx, œsophage, estomac, intestin grêle, gros intestin (côlon), rectum, anus.

Exercice 3 : 37 °C est la température du corps humain, à laquelle les enzymes agissent le mieux. Avec de la salive bouillie, l''amylase est détruite par la chaleur : l''amidon n''est pas transformé et l''eau iodée donne toujours une coloration bleu-noir.

Exercice 4 : La bile émulsionne les lipides en fines gouttelettes, ce qui facilite l''action de la lipase pancréatique. Elle ne contient pas d''enzyme digestive.

Exercice 5 : La paroi est très plissée et couverte de villosités, ce qui donne une très grande surface d''échange ; elle est fine et très richement irriguée par des vaisseaux sanguins, ce qui permet un passage rapide des nutriments dans le sang.', 'texte', 50, true, 10
from public.courses c where c.slug = 'svt-4e'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Nutrition et digestion');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'La respiration', '## Objectifs de la leçon

- Décrire l''appareil respiratoire et les mouvements respiratoires.
- Expliquer les échanges gazeux au niveau des alvéoles pulmonaires.
- Comprendre la respiration cellulaire et l''utilisation de l''énergie.
- Connaître les dangers du tabac et de la pollution de l''air.

## L''appareil respiratoire

L''air entre par les fosses nasales (où il est réchauffé, humidifié et filtré), puis passe par le pharynx, le larynx, la trachée, les deux bronches, les bronchioles, et arrive dans les alvéoles pulmonaires. Les poumons sont situés dans la cage thoracique, protégés par les côtes, et reposent sur un muscle, le diaphragme.

## Les mouvements respiratoires

- Inspiration : le diaphragme se contracte et s''abaisse, les muscles intercostaux soulèvent les côtes ; le volume de la cage thoracique augmente, les poumons se dilatent et l''air entre.
- Expiration : le diaphragme se relâche et remonte, les côtes s''abaissent ; le volume diminue et l''air est chassé.

Au repos, un adulte respire en moyenne une quinzaine de fois par minute ; pendant un effort, la fréquence et l''amplitude augmentent.

## Comparaison de l''air inspiré et de l''air expiré

Valeurs approximatives couramment retenues :
- air inspiré : environ 21 % de dioxygène et 0,04 % de dioxyde de carbone ;
- air expiré : environ 16 % de dioxygène et 4 % de dioxyde de carbone.

L''air expiré est aussi plus chaud et plus chargé en vapeur d''eau. Expérience : si l''on souffle avec une paille dans de l''eau de chaux, elle se trouble. L''eau de chaux est le réactif du dioxyde de carbone : l''air expiré en contient beaucoup plus que l''air inspiré.

## Les échanges gazeux dans les alvéoles

Les alvéoles pulmonaires sont de minuscules sacs à paroi très fine, entourés d''un réseau dense de capillaires sanguins. Leur nombre est très élevé, ce qui forme une immense surface d''échange.

Le dioxygène passe de l''air alvéolaire, où il est abondant, vers le sang, où il est moins concentré. Le dioxyde de carbone fait le trajet inverse, du sang vers l''alvéole. Ces passages se font par diffusion, toujours du milieu le plus concentré vers le moins concentré. Dans le sang, le dioxygène est surtout transporté par l''hémoglobine des globules rouges.

Conditions qui rendent ces échanges efficaces : grande surface, paroi très mince, forte vascularisation, renouvellement permanent de l''air.

## La respiration cellulaire

Toutes les cellules respirent. Elles reçoivent du sang le glucose (issu de la digestion) et le dioxygène (issu des poumons). Elles les utilisent pour libérer l''énergie nécessaire à leur fonctionnement (contraction musculaire, chaleur du corps, activité du cerveau). Bilan simplifié :

glucose + dioxygène → dioxyde de carbone + eau + énergie

Le dioxyde de carbone produit est rejeté dans le sang, transporté jusqu''aux poumons et expiré. On comprend ainsi pourquoi, pendant un match de football, le joueur respire plus vite et son cœur bat plus fort : ses muscles consomment davantage de glucose et de dioxygène.

## Hygiène respiratoire

- Le tabac contient de la nicotine (qui rend dépendant), des goudrons (cancérigènes) et du monoxyde de carbone (qui se fixe sur l''hémoglobine à la place du dioxygène). Il provoque bronchites chroniques, cancers du poumon et maladies cardiaques. Le tabagisme passif est aussi dangereux.
- La fumée de bois ou de charbon dans une cuisine mal aérée, les gaz d''échappement et la poussière irritent les voies respiratoires. Il faut aérer les pièces et éviter de brûler des déchets plastiques.
- La tuberculose est une maladie respiratoire contagieuse causée par une bactérie ; une toux persistante doit conduire à consulter un centre de santé.

## Points clés

- Inspiration : contraction du diaphragme ; expiration : relâchement.
- L''air expiré est plus pauvre en dioxygène et plus riche en dioxyde de carbone.
- Les échanges gazeux se font par diffusion dans les alvéoles.
- Les cellules utilisent glucose et dioxygène pour produire de l''énergie.

## Exercices

Exercice 1 : Citer dans l''ordre les organes traversés par l''air, des fosses nasales aux alvéoles.

Exercice 2 : On souffle dans un tube d''eau de chaux qui se trouble. Que met en évidence cette expérience ?

Exercice 3 : Un élève respire 15 fois par minute au repos et fait entrer 0,5 L d''air à chaque inspiration. Calculer le volume d''air inspiré en une minute, puis en une heure.

Exercice 4 : Expliquer pourquoi la fumée de cigarette diminue la quantité de dioxygène transportée par le sang.

Exercice 5 : Pourquoi la fréquence respiratoire augmente-t-elle pendant un effort physique ?

## Corrigé

Exercice 1 : Fosses nasales, pharynx, larynx, trachée, bronches, bronchioles, alvéoles pulmonaires.

Exercice 2 : Elle met en évidence la présence de dioxyde de carbone dans l''air expiré.

Exercice 3 : En une minute : 15 × 0,5 = 7,5 L. En une heure : 7,5 × 60 = 450 L.

Exercice 4 : La fumée contient du monoxyde de carbone qui se fixe sur l''hémoglobine des globules rouges à la place du dioxygène ; le sang transporte donc moins de dioxygène vers les organes.

Exercice 5 : Pendant l''effort, les muscles travaillent davantage : ils consomment plus de glucose et de dioxygène et rejettent plus de dioxyde de carbone. La respiration s''accélère pour apporter plus de dioxygène et éliminer plus de dioxyde de carbone.', 'texte', 45, false, 20
from public.courses c where c.slug = 'svt-4e'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'La respiration');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Le sang et la circulation', '## Objectifs de la leçon

- Connaître la composition et les rôles du sang.
- Décrire le cœur et son fonctionnement.
- Expliquer la double circulation sanguine.
- Connaître quelques règles d''hygiène cardio-vasculaire.

## Le sang

Le sang est un liquide rouge qui circule en permanence dans les vaisseaux. Si on le laisse reposer dans un tube avec un produit anticoagulant, on observe deux parties :
- le plasma, liquide jaunâtre composé surtout d''eau, qui transporte les nutriments, les déchets (urée, dioxyde de carbone), les hormones et les sels minéraux ;
- les éléments figurés : les globules rouges (ou hématies), qui contiennent l''hémoglobine et transportent le dioxygène ; les globules blancs (ou leucocytes), qui défendent l''organisme contre les microbes ; les plaquettes, qui interviennent dans la coagulation et arrêtent les saignements.

## Le cœur

Le cœur est un muscle creux, de la taille d''un poing, situé dans la cage thoracique entre les deux poumons. Il est divisé en deux moitiés (cœur droit et cœur gauche) qui ne communiquent pas entre elles. Chaque moitié comprend une oreillette en haut et un ventricule en bas.

Des valvules, sortes de clapets, obligent le sang à circuler dans un seul sens : des oreillettes vers les ventricules, puis des ventricules vers les artères.

Le cœur fonctionne comme une pompe. Un battement comprend : la contraction des oreillettes, la contraction des ventricules (qui chassent le sang dans les artères), puis un temps de relâchement pendant lequel le cœur se remplit. Au repos, le cœur d''un adulte bat environ 70 fois par minute ; ce rythme augmente pendant l''effort. On peut compter les battements en prenant le pouls au poignet.

## Les vaisseaux sanguins

- Les artères partent du cœur et emmènent le sang vers les organes. Leur paroi est épaisse et élastique.
- Les veines ramènent le sang des organes vers le cœur. Elles possèdent souvent des valvules.
- Les capillaires sont de très fins vaisseaux qui relient artères et veines au niveau des organes. C''est à travers leur paroi très mince que se font les échanges entre le sang et les cellules.

## La double circulation

Circulation pulmonaire (petite circulation) : le ventricule droit envoie le sang pauvre en dioxygène dans l''artère pulmonaire vers les poumons ; le sang s''y enrichit en dioxygène et se débarrasse du dioxyde de carbone ; il revient par les veines pulmonaires dans l''oreillette gauche.

Circulation générale (grande circulation) : le ventricule gauche envoie le sang riche en dioxygène dans l''aorte, qui se divise en artères vers tous les organes. Au niveau des capillaires, le sang cède dioxygène et nutriments aux cellules et reçoit leurs déchets. Il revient appauvri en dioxygène par les veines caves dans l''oreillette droite.

Le sang ne se mélange jamais : le cœur droit contient du sang pauvre en dioxygène, le cœur gauche du sang riche en dioxygène. La paroi du ventricule gauche est plus épaisse, car il doit propulser le sang dans tout le corps.

## Les échanges au niveau des organes

Les cellules baignent dans un liquide, la lymphe interstitielle. Le dioxygène et les nutriments passent des capillaires vers ce liquide puis vers les cellules ; le dioxyde de carbone et les déchets font le chemin inverse. Les déchets comme l''urée sont ensuite éliminés par les reins dans l''urine.

## Hygiène de l''appareil circulatoire

- Pratiquer une activité physique régulière (marche, football, lutte, danse).
- Limiter le sel, le sucre et les graisses : l''excès de sel favorise l''hypertension artérielle, une maladie fréquente qui peut provoquer des accidents vasculaires cérébraux.
- Éviter le tabac et l''alcool.
- Faire contrôler sa tension artérielle régulièrement à partir de l''âge adulte.

## Points clés

- Sang = plasma + globules rouges + globules blancs + plaquettes.
- Le cœur est une double pompe : cœur droit (sang pauvre en dioxygène), cœur gauche (sang riche en dioxygène).
- Petite circulation : cœur → poumons → cœur ; grande circulation : cœur → organes → cœur.
- Les échanges avec les cellules se font au niveau des capillaires.

## Exercices

Exercice 1 : Associer chaque élément du sang à son rôle : globules rouges, globules blancs, plaquettes, plasma.

Exercice 2 : Décrire le trajet d''un globule rouge partant de l''oreillette droite jusqu''au retour dans l''oreillette droite.

Exercice 3 : Pourquoi la paroi du ventricule gauche est-elle plus épaisse que celle du ventricule droit ?

Exercice 4 : Le cœur d''un adulte au repos bat 70 fois par minute et éjecte environ 70 mL de sang à chaque contraction du ventricule gauche. Calculer le volume de sang éjecté en une minute (en litres).

Exercice 5 : Donner deux conseils pour prévenir l''hypertension artérielle.

## Corrigé

Exercice 1 : Globules rouges : transport du dioxygène. Globules blancs : défense contre les microbes. Plaquettes : coagulation. Plasma : transport des nutriments, des déchets, des hormones.

Exercice 2 : Oreillette droite → ventricule droit → artère pulmonaire → capillaires des poumons → veines pulmonaires → oreillette gauche → ventricule gauche → aorte → artères → capillaires des organes → veines → veines caves → oreillette droite.

Exercice 3 : Le ventricule gauche doit propulser le sang dans tout le corps (grande circulation), alors que le ventricule droit ne l''envoie qu''aux poumons, tout proches. Il a donc besoin d''un muscle plus puissant.

Exercice 4 : 70 × 70 = 4 900 mL, soit 4,9 L par minute.

Exercice 5 : Réduire la consommation de sel (bouillons, poissons salés, plats très assaisonnés) et pratiquer une activité physique régulière. On accepte aussi : éviter le tabac, surveiller son poids.', 'texte', 45, false, 30
from public.courses c where c.slug = 'svt-4e'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Le sang et la circulation');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'La reproduction humaine', '## Objectifs de la leçon

- Décrire les transformations de la puberté.
- Connaître les appareils reproducteurs de l''homme et de la femme.
- Comprendre le cycle menstruel, la fécondation et la grossesse.
- Connaître les moyens de se protéger et de maîtriser sa fécondité.

## La puberté

La puberté est la période, généralement entre 10 et 16 ans environ, pendant laquelle le corps de l''enfant se transforme et devient capable de se reproduire. L''âge de début varie beaucoup d''une personne à l''autre, et c''est normal.

Chez le garçon : croissance rapide, développement des muscles, apparition des poils, mue de la voix, développement des organes génitaux, premières éjaculations.

Chez la fille : croissance rapide, développement des seins, élargissement du bassin, apparition des poils, premières règles.

Ces transformations sont commandées par des hormones, des substances chimiques produites par des glandes et transportées par le sang. Elles s''accompagnent aussi de changements psychologiques : besoin d''autonomie, émotions plus fortes.

## L''appareil reproducteur masculin

- Les testicules, dans les bourses, produisent les spermatozoïdes (de façon continue à partir de la puberté) et une hormone, la testostérone.
- Les spermatozoïdes passent dans les canaux déférents ; ils sont mélangés aux sécrétions des vésicules séminales et de la prostate pour former le sperme.
- Le sperme est émis par l''urètre, qui traverse le pénis.

## L''appareil reproducteur féminin

- Les deux ovaires contiennent les follicules ; à partir de la puberté, ils libèrent en général un ovule par cycle et produisent des hormones (œstrogènes et progestérone).
- Les trompes recueillent l''ovule ; c''est dans une trompe qu''a lieu la fécondation.
- L''utérus est un organe musclé dont la paroi interne, la muqueuse utérine, accueille l''embryon.
- Le vagin relie l''utérus à l''extérieur.

## Le cycle menstruel

Le cycle dure en moyenne 28 jours, mais il varie de 21 à 35 jours environ selon les femmes, et parfois d''un mois à l''autre. Par convention, le jour 1 est le premier jour des règles.
- Les règles correspondent à l''élimination de la muqueuse utérine, accompagnée d''un saignement de quelques jours.
- La muqueuse se reconstruit ensuite et s''épaissit.
- L''ovulation (libération de l''ovule) a lieu environ 14 jours avant les règles suivantes, donc vers le 14e jour d''un cycle de 28 jours.
- S''il n''y a pas de fécondation, la muqueuse est de nouveau éliminée : ce sont les règles suivantes.

## Fécondation, grossesse et naissance

Lors d''un rapport sexuel, des millions de spermatozoïdes sont déposés dans le vagin ; ils remontent jusqu''aux trompes. Un seul spermatozoïde pénètre dans l''ovule : c''est la fécondation, qui forme une cellule-œuf. Celle-ci se divise et devient un embryon qui descend dans l''utérus et s''implante dans la muqueuse : c''est la nidation.

L''embryon puis le fœtus se développe pendant environ neuf mois. Il est relié à la mère par le placenta et le cordon ombilical : le placenta permet le passage du dioxygène et des nutriments de la mère vers le fœtus, et des déchets en sens inverse, sans que les sangs se mélangent. Certaines substances (alcool, tabac, certains médicaments, certains microbes) peuvent aussi traverser le placenta : la femme enceinte doit les éviter et suivre ses consultations prénatales.

## Maîtrise de la reproduction et protection

- Les méthodes contraceptives (préservatif, pilule et autres méthodes médicales) permettent d''éviter une grossesse non désirée ; elles sont prescrites et expliquées par les professionnels de santé.
- Le préservatif est le seul moyen qui protège aussi des infections sexuellement transmissibles (IST), dont le VIH/sida.
- Une grossesse trop précoce présente des risques importants pour la santé de la jeune fille et de l''enfant.
- En cas de question, il faut s''adresser à un adulte de confiance, à l''infirmerie scolaire ou à un centre de santé.

## Points clés

- La puberté est commandée par les hormones.
- Testicules : spermatozoïdes ; ovaires : ovules.
- L''ovulation a lieu environ 14 jours avant les règles suivantes.
- La fécondation a lieu dans la trompe, la nidation dans l''utérus.
- Le préservatif protège à la fois des grossesses non désirées et des IST.

## Exercices

Exercice 1 : Citer trois transformations de la puberté chez la fille et trois chez le garçon.

Exercice 2 : Où sont produits les spermatozoïdes ? les ovules ? Où a lieu la fécondation ?

Exercice 3 : Une femme a des cycles réguliers de 30 jours. Vers quel jour du cycle a lieu l''ovulation ?

Exercice 4 : Quel est le rôle du placenta ?

Exercice 5 : Pourquoi une femme enceinte doit-elle éviter le tabac et l''alcool ?

## Corrigé

Exercice 1 : Fille : développement des seins, élargissement du bassin, premières règles (ou apparition des poils, poussée de croissance). Garçon : mue de la voix, développement des muscles, apparition de la barbe et des poils (ou premières éjaculations).

Exercice 2 : Les spermatozoïdes sont produits dans les testicules, les ovules dans les ovaires. La fécondation a lieu dans une trompe.

Exercice 3 : L''ovulation a lieu environ 14 jours avant les règles suivantes : 30 − 14 = 16. Elle a donc lieu vers le 16e jour du cycle (c''est une estimation, car les cycles peuvent varier).

Exercice 4 : Le placenta assure les échanges entre la mère et le fœtus : il apporte dioxygène et nutriments au fœtus et élimine ses déchets (dioxyde de carbone, urée), sans mélange des deux sangs.

Exercice 5 : Car des substances toxiques du tabac et l''alcool traversent le placenta et peuvent nuire au développement du fœtus (retard de croissance, malformations, naissance prématurée).', 'texte', 45, false, 40
from public.courses c where c.slug = 'svt-4e'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'La reproduction humaine');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'La santé : microbes, paludisme et hygiène', '## Objectifs de la leçon

- Connaître les différents types de microbes et leurs modes de transmission.
- Décrire le paludisme : agent, vecteur, cycle, symptômes, prévention.
- Connaître les règles d''hygiène individuelle et collective.
- Comprendre le rôle des défenses de l''organisme et de la vaccination.

## Les microbes

Les microbes sont des êtres vivants microscopiques. On distingue :
- les bactéries (exemple : la bactérie du choléra, celle de la tuberculose) ;
- les virus, encore plus petits, qui ne peuvent se multiplier qu''à l''intérieur des cellules (rougeole, VIH, grippe) ;
- les parasites unicellulaires (comme le plasmodium du paludisme) ou les vers (ascaris, ténia) ;
- les champignons microscopiques (mycoses).

Beaucoup de microbes sont utiles ou inoffensifs (fabrication du lait caillé, flore intestinale). Ceux qui provoquent des maladies sont dits pathogènes.

Modes de transmission : par l''eau et les aliments souillés (choléra, diarrhées, fièvre typhoïde), par l''air (tuberculose, grippe), par contact, par le sang ou les rapports sexuels (VIH, hépatite B), par un animal vecteur (moustique pour le paludisme).

## Le paludisme

Agent : le paludisme est causé par un parasite unicellulaire, le plasmodium. L''espèce Plasmodium falciparum est la plus dangereuse.

Vecteur : il est transmis par la piqûre d''un moustique femelle du genre anophèle, qui pique surtout la nuit. Les larves de ce moustique se développent dans les eaux stagnantes (flaques, pneus abandonnés, récipients non couverts), d''où une transmission plus forte pendant et après la saison des pluies (hivernage).

Cycle simplifié :
- un moustique infecté pique une personne et injecte des parasites ;
- les parasites gagnent le foie, où ils se multiplient ;
- ils envahissent ensuite les globules rouges, s''y multiplient et les font éclater, ce qui provoque les accès de fièvre ;
- un moustique sain qui pique cette personne aspire des parasites ; ceux-ci se développent dans le moustique, qui pourra infecter une autre personne.

Symptômes : fièvre, frissons, sueurs, maux de tête, courbatures, vomissements ; anémie due à la destruction des globules rouges. Chez l''enfant et la femme enceinte, la maladie peut devenir grave rapidement (paludisme grave, atteinte cérébrale).

Diagnostic et traitement : toute fièvre doit conduire au poste ou au centre de santé, où un test de diagnostic rapide (TDR) peut confirmer le paludisme. Le traitement est prescrit par l''agent de santé (médicaments combinés) et doit être pris en entier. L''automédication est dangereuse.

Prévention :
- dormir chaque nuit sous une moustiquaire imprégnée d''insecticide ;
- supprimer les eaux stagnantes autour des maisons, couvrir les récipients d''eau ;
- participer aux journées de salubrité (set setal) dans le quartier ;
- suivre les mesures de prévention proposées par les services de santé, notamment pour les femmes enceintes et les jeunes enfants.

## L''hygiène

Hygiène individuelle :
- se laver les mains à l''eau et au savon avant de manger, avant de préparer les repas et après être allé aux toilettes ;
- se brosser les dents après les repas ;
- se laver régulièrement le corps, couper ses ongles.

Hygiène de l''eau et des aliments :
- boire une eau potable ; en cas de doute, la faire bouillir ou la traiter selon les consignes des services de santé ;
- laver les fruits et légumes ; bien cuire la viande et le poisson ;
- protéger les aliments des mouches.

Hygiène collective : utiliser des latrines, ne pas jeter les ordures dans la rue, évacuer les eaux usées, protéger les puits.

## Les défenses de l''organisme et la vaccination

La peau et les muqueuses forment une première barrière. Si des microbes pénètrent, les globules blancs interviennent : certains les absorbent et les détruisent (phagocytose), d''autres produisent des anticorps spécifiques. L''organisme garde la mémoire de certains microbes.

La vaccination consiste à introduire dans l''organisme un microbe tué, affaibli ou une partie de microbe, inoffensif. L''organisme fabrique alors des défenses et en garde la mémoire : s''il rencontre plus tard le vrai microbe, il réagit vite et fort. Il faut respecter le calendrier vaccinal de l''enfant fixé par les services de santé.

## Points clés

- Bactéries, virus, parasites, champignons : tous ne sont pas pathogènes.
- Paludisme : plasmodium transmis par l''anophèle femelle ; prévention par la moustiquaire imprégnée et la suppression des eaux stagnantes.
- Toute fièvre doit être testée au centre de santé.
- Lavage des mains, eau potable et assainissement évitent de nombreuses maladies.
- La vaccination prépare les défenses de l''organisme.

## Exercices

Exercice 1 : Quel est l''agent du paludisme ? Quel est son vecteur ?

Exercice 2 : Pourquoi le paludisme est-il plus fréquent pendant et après l''hivernage ?

Exercice 3 : Expliquer pourquoi le paludisme peut provoquer une anémie.

Exercice 4 : Citer trois mesures pour éviter les maladies transmises par l''eau.

Exercice 5 : Expliquer le principe de la vaccination.

## Corrigé

Exercice 1 : L''agent est un parasite unicellulaire, le plasmodium. Le vecteur est le moustique anophèle femelle.

Exercice 2 : Les pluies créent de nombreuses eaux stagnantes dans lesquelles se développent les larves d''anophèles. Les moustiques sont donc plus nombreux et transmettent davantage le parasite.

Exercice 3 : Les plasmodiums se multiplient dans les globules rouges et les font éclater. La destruction des globules rouges diminue leur nombre dans le sang : c''est l''anémie.

Exercice 4 : Boire de l''eau potable (ou bouillie/traitée) ; se laver les mains au savon ; protéger les puits et évacuer les eaux usées (on accepte aussi : laver les fruits et légumes, utiliser des latrines).

Exercice 5 : On introduit dans l''organisme un microbe rendu inoffensif (tué, affaibli ou une partie du microbe). L''organisme produit des défenses (anticorps, cellules mémoire) et garde la mémoire de ce microbe ; lors d''une vraie infection, il réagit rapidement et la maladie ne se développe pas ou est moins grave.', 'texte', 50, false, 50
from public.courses c where c.slug = 'svt-4e'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'La santé : microbes, paludisme et hygiène');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : le voyage d''un repas, de l''assiette à la cellule', '## Fiche du cours vidéo

- Durée : 1h30.
- Thème : le voyage d''un repas, de l''assiette à la cellule, et la santé du corps.
- Objectifs : relier digestion, respiration et circulation dans un même raisonnement ; interpréter des expériences ; appliquer les connaissances à la prévention du paludisme et à l''hygiène.
- Matériel : tableau ou diaporama, schémas de l''appareil digestif, du cœur et des poumons, photos de moustiquaire et de larves de moustique, cahier.
- Prérequis : leçons 1 à 5 du cours.

## Déroulé minuté

## 00:00 – 05:00 · Introduction : une question pour démarrer

« Bonjour à toutes et à tous. Je commence par une question : ce midi, vous avez peut-être mangé un plat de riz au poisson. Comment l''énergie de ce riz va-t-elle arriver jusqu''aux muscles de vos jambes lorsque vous jouerez au football ce soir ? Gardez cette question en tête : toute la séance va y répondre. Nous allons suivre le voyage d''un grain de riz, puis celui d''une bouffée d''air, puis voir comment le sang relie tout cela. Nous terminerons par la santé : le paludisme et l''hygiène. »

Visuel : un plat de riz au poisson, puis un footballeur en pleine course.

## 05:00 – 18:00 · Étape 1 : la digestion du riz

« Le riz contient surtout de l''amidon, une très grosse molécule. Dès la bouche, la mastication le découpe et la salive commence à le transformer grâce à une enzyme, l''amylase salivaire. »

Visuel : schéma de l''appareil digestif, avec le trajet colorié.

« Rappelez-vous l''expérience des deux tubes : amidon plus salive à 37 °C, et amidon plus eau. Mettez la vidéo en pause et dites-moi quels résultats on obtient avec l''eau iodée et avec la liqueur de Fehling. »

« Correction : dans le tube avec salive, plus de coloration bleu-noir, mais un précipité rouge brique : l''amidon a été transformé en sucre. Dans le tube témoin avec de l''eau, coloration bleu-noir et pas de précipité. Le tube témoin sert à prouver que c''est bien la salive, et pas le temps ou la chaleur, qui a transformé l''amidon. »

« La digestion de l''amidon se termine dans l''intestin grêle, grâce au suc pancréatique et au suc intestinal : le résultat est le glucose, une petite molécule. Le poisson, lui, apporte des protéines qui deviennent des acides aminés ; l''huile apporte des lipides qui deviennent acides gras et glycérol. »

Question à poser : « Pourquoi faut-il transformer les aliments en petites molécules ? » Réponse : seules les petites molécules peuvent traverser la paroi intestinale et passer dans le sang.

## 18:00 – 28:00 · Étape 2 : l''absorption intestinale

« Le glucose arrive dans l''intestin grêle. Sa paroi est couverte de villosités. Imaginez une serviette éponge : ses petites boucles augmentent énormément la surface qui touche l''eau. Les villosités font la même chose : elles multiplient la surface d''échange. Chaque villosité contient un réseau de capillaires sanguins. Le glucose traverse la paroi très fine et passe dans le sang. »

Visuel : coupe de l''intestin grêle avec un zoom sur une villosité.

« Notre grain de riz, devenu glucose, voyage maintenant dans le sang. Mais pour libérer son énergie, il lui faut un partenaire : le dioxygène. Où le trouver ? »

## 28:00 – 40:00 · Étape 3 : la respiration et les échanges gazeux

« Le dioxygène vient de l''air. À l''inspiration, le diaphragme se contracte et descend, la cage thoracique s''agrandit et l''air entre. Il parcourt les fosses nasales, le pharynx, le larynx, la trachée, les bronches, les bronchioles, et atteint les alvéoles. »

« Dans l''alvéole, l''air est riche en dioxygène ; le sang qui arrive dans les capillaires en est pauvre. Le dioxygène diffuse donc vers le sang et se fixe sur l''hémoglobine des globules rouges. Le dioxyde de carbone fait le chemin inverse. »

Visuel : tableau comparatif air inspiré / air expiré (environ 21 % et 16 % de dioxygène ; environ 0,04 % et 4 % de dioxyde de carbone).

Question : « Si je souffle dans de l''eau de chaux, que se passe-t-il ? Pourquoi ? » Réponse : l''eau de chaux se trouble, car l''air expiré est riche en dioxyde de carbone.

## 40:00 – 48:00 · Pause et quiz interactif

« Faisons une pause. Levez-vous, respirez profondément trois fois en posant la main sur le ventre : sentez-vous le diaphragme descendre ? Maintenant, le quiz. »

- Question 1 : Quelle enzyme commence la digestion de l''amidon ? Réponse : l''amylase salivaire.
- Question 2 : En quoi sont transformées les protéines ? Réponse : en acides aminés.
- Question 3 : Où se fait l''absorption des nutriments ? Réponse : dans l''intestin grêle, au niveau des villosités.
- Question 4 : Quel muscle se contracte à l''inspiration ? Réponse : le diaphragme.
- Question 5 : Quel réactif met en évidence le dioxyde de carbone ? Réponse : l''eau de chaux.

## 48:00 – 1:00:00 · Étape 4 : la circulation, le grand transporteur

« Nous avons maintenant du glucose et du dioxygène dans le sang. Qui les transporte jusqu''aux muscles ? Le cœur et les vaisseaux. »

Visuel : schéma du cœur en coupe, côté droit en bleu, côté gauche en rouge.

« Le sang chargé de dioxygène quitte les poumons par les veines pulmonaires, entre dans l''oreillette gauche, passe dans le ventricule gauche, puis est propulsé dans l''aorte. Les artères le conduisent jusqu''aux muscles de vos jambes. Là, dans les capillaires, le glucose et le dioxygène passent dans les cellules musculaires. »

« Dans la cellule se produit la respiration cellulaire : glucose plus dioxygène donnent dioxyde de carbone, eau et énergie. Voilà la réponse à notre question de départ : l''énergie du riz est libérée dans vos muscles grâce au dioxygène de l''air, et c''est le sang qui a tout transporté. »

« Le sang appauvri en dioxygène et chargé de dioxyde de carbone revient par les veines caves dans l''oreillette droite, puis le ventricule droit l''envoie aux poumons. Et le cycle recommence. »

Question : « Pourquoi le cœur bat-il plus vite pendant un match ? » Réponse : pour apporter plus vite le glucose et le dioxygène aux muscles qui en consomment davantage, et évacuer plus de dioxyde de carbone.

## 1:00:00 – 1:12:00 · Étape 5 : quand un parasite s''invite, le paludisme

« Le sang transporte aussi, parfois, des passagers indésirables. Le plasmodium, agent du paludisme, est injecté par la piqûre d''un moustique anophèle femelle. Il se multiplie d''abord dans le foie, puis dans les globules rouges, qu''il fait éclater. Résultat : fièvre, frissons, et anémie. Avec moins de globules rouges, le sang transporte moins de dioxygène : c''est pourquoi le malade est épuisé. »

Visuel : photo d''une flaque d''eau avec des larves de moustique, puis d''une moustiquaire imprégnée.

« Que faire ? Dormir sous une moustiquaire imprégnée, supprimer les eaux stagnantes, et surtout, en cas de fièvre, aller au centre de santé pour faire un test rapide. Le traitement doit être prescrit par un agent de santé et pris jusqu''au bout. »

Question à poser : « Pourquoi vider les vieux pneus et les boîtes qui traînent dans la cour ? » Réponse : l''eau de pluie s''y accumule et les larves de moustiques s''y développent.

## 1:12:00 – 1:20:00 · Étape 6 : l''hygiène au quotidien

« Les maladies transmises par l''eau et les mains sales, comme les diarrhées ou le choléra, s''attaquent directement à notre appareil digestif. Trois gestes simples les évitent : se laver les mains au savon, boire une eau potable et protéger les aliments des mouches. La propreté du quartier, avec les journées de set setal, est une affaire collective. »

Question à poser : « Une famille boit l''eau d''un puits non couvert, situé près des latrines. Quels risques court-elle et que lui conseiller ? » Réponse attendue : l''eau peut être contaminée par des microbes fécaux et provoquer diarrhées ou choléra ; il faut couvrir le puits, l''éloigner des latrines et rendre l''eau potable (ébullition ou traitement selon les consignes des services de santé).

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

« Résumons le voyage : digestion du riz en glucose, absorption dans l''intestin grêle, apport de dioxygène par les poumons, transport par le sang grâce au cœur, et libération d''énergie dans les cellules par la respiration cellulaire. Le paludisme et le manque d''hygiène perturbent ce bel équilibre. Voici l''évaluation finale. »

- Question 1 : Dans l''expérience de digestion in vitro, à quoi sert le tube témoin ? Réponse : à montrer que la transformation de l''amidon est due à la salive.
- Question 2 : Citer les trois produits de la respiration cellulaire. Réponse : dioxyde de carbone, eau et énergie.
- Question 3 : Quel ventricule envoie le sang dans l''aorte ? Réponse : le ventricule gauche.
- Question 4 : Pourquoi le paludisme provoque-t-il une anémie ? Réponse : le plasmodium fait éclater les globules rouges.
- Question 5 : Citer deux moyens de prévention du paludisme. Réponse : dormir sous une moustiquaire imprégnée et supprimer les eaux stagnantes.

« Merci et bravo. Pour réviser, dessinez de mémoire un grand schéma reliant intestin, poumons, cœur et muscle, avec des flèches pour le glucose, le dioxygène et le dioxyde de carbone. À bientôt ! »', 'video', 90, false, 60
from public.courses c where c.slug = 'svt-4e'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : le voyage d''un repas, de l''assiette à la cellule');

-- Cours : Organiser un service de transport de voyageurs et du personnel
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'formation-gestion-transport', (select id from public.levels where name = 'Formation professionnelle'), 'transport', 'Transport de voyageurs', 'Organiser un service de transport de voyageurs et du personnel', 'Cette formation montre comment concevoir des lignes et des horaires, affecter chauffeurs et véhicules, organiser la billetterie et le contrôle des recettes, piloter la sécurité routière et la qualité de service, et calculer la rentabilité d''une ligne. Elle s''adresse aux exploitants de transport urbain et interurbain, aux responsables du transport du personnel et aux gestionnaires de flotte. Prérequis : aisance avec les calculs de base et les pourcentages.', true, 50
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Concevoir les lignes et les horaires', '## Objectifs de la leçon

Savoir décrire une ligne de transport, calculer son temps de rotation, déterminer la fréquence nécessaire à partir de la demande, calculer le nombre de véhicules à mobiliser et construire une grille horaire, pour une ligne ouverte au public comme pour un circuit de transport du personnel.

## Les notions de base

- Une ligne est un itinéraire fixe entre deux terminus, desservant des arrêts.
- Le temps de parcours est la durée d''un trajet d''un terminus à l''autre, arrêts compris.
- Le battement (ou temps de terminus) est la pause au terminus avant le départ suivant : il sert à absorber les retards, à laisser souffler le chauffeur et à embarquer les passagers.
- Le temps de rotation (ou temps de cycle) est la durée d''un aller-retour complet : aller + battement + retour + battement.
- L''intervalle est le temps qui sépare deux départs successifs dans le même sens. La fréquence est le nombre de départs par heure : fréquence = 60 / intervalle (en minutes).

## Calculer le nombre de véhicules

Nombre de véhicules nécessaires = temps de rotation / intervalle, arrondi à l''entier supérieur.

Exemple : une ligne urbaine de 18 km. Aller : 50 minutes. Retour : 50 minutes. Battement : 10 minutes à chaque terminus. Temps de rotation : 50 + 10 + 50 + 10 = 120 minutes. Si l''on veut un départ toutes les 15 minutes, il faut 120 / 15 = 8 véhicules en ligne. Si l''intervalle voulu était de 14 minutes, on aurait 120 / 14 ≈ 8,6, soit 9 véhicules.

## Déterminer l''intervalle à partir de la demande

On part de la demande à l''heure de pointe, dans le sens le plus chargé, au point le plus chargé de la ligne.

Nombre de passages nécessaires par heure = demande horaire / capacité utile d''un véhicule.

La capacité utile est le nombre de places que l''on accepte d''occuper, compte tenu du confort et des règles de sécurité. On ne planifie jamais en surcharge.

Exemple : 480 voyageurs par heure dans le sens le plus chargé, véhicules de 60 places. Il faut 480 / 60 = 8 passages par heure, soit un intervalle de 60 / 8 = 7,5 minutes. En heures creuses, si la demande tombe à 180 voyageurs par heure, 3 passages suffisent, soit un intervalle de 20 minutes.

Moduler l''intervalle selon les heures permet de ne pas faire rouler des véhicules vides en milieu de journée.

## Construire la grille horaire

Méthode :

- fixer l''heure du premier et du dernier départ en fonction des besoins (début des cours, des marchés, des prises de poste) ;
- découper la journée en périodes (pointe du matin, creuse, pointe du soir) avec un intervalle pour chacune ;
- calculer les heures de passage à chaque arrêt principal en ajoutant les temps de parcours partiels ;
- vérifier que le nombre de véhicules disponibles permet de tenir l''intervalle de pointe ;
- afficher la grille aux arrêts et la communiquer (affichage, messagerie, radio locale).

Exemple : premier départ 6 h 00, intervalle de 15 minutes jusqu''à 9 h 00 : 6 h 00, 6 h 15, 6 h 30, 6 h 45, 7 h 00, et ainsi de suite.

## Le transport du personnel

Pour une usine, une zone industrielle ou un grand hôtel, on organise des circuits de ramassage. La logique est différente :

- les horaires sont dictés par les prises et fins de poste (par exemple équipes de 6 h, 14 h et 22 h) ;
- on recense les adresses des employés et on les regroupe par quartiers ;
- chaque circuit part du quartier le plus éloigné et arrive sur le site un peu avant la prise de poste, pour laisser le temps de se changer ;
- la capacité est connue à l''avance : on dimensionne exactement.

Exemple : une usine de Diamniadio emploie 210 personnes sur l''équipe du matin. Avec des minibus de 30 places, il faut au moins 210 / 30 = 7 circuits. Si les employés viennent de quatre zones (Rufisque, Keur Massar, Pikine, Bargny), on répartit les 7 minibus selon les effectifs de chaque zone.

## Points clés

- Temps de rotation = aller + retour + battements.
- Nombre de véhicules = rotation / intervalle, arrondi au supérieur.
- L''intervalle se déduit de la demande au point le plus chargé et de la capacité utile.
- La grille horaire varie selon les périodes de la journée.
- Le transport du personnel suit les horaires d''équipe et les lieux de résidence.

## Exercices

Exercice 1. Une ligne a un aller de 35 minutes, un retour de 35 minutes et un battement de 5 minutes à chaque terminus. Calculez le temps de rotation et le nombre de véhicules nécessaires pour un intervalle de 20 minutes.

Exercice 2. La demande de pointe est de 300 voyageurs par heure, avec des véhicules de 50 places. Calculez le nombre de passages par heure et l''intervalle.

Exercice 3. Écrivez la grille des départs de 6 h 00 à 7 h 00 avec un intervalle de 20 minutes.

Exercice 4. Une entreprise doit transporter 95 agents avec des minibus de 25 places. Combien de minibus faut-il au minimum ?

## Corrigé

Exercice 1. Rotation : 35 + 5 + 35 + 5 = 80 minutes. Véhicules : 80 / 20 = 4 véhicules.

Exercice 2. Passages : 300 / 50 = 6 par heure. Intervalle : 60 / 6 = 10 minutes.

Exercice 3. 6 h 00, 6 h 20, 6 h 40, 7 h 00.

Exercice 4. 95 / 25 = 3,8, arrondi au supérieur : 4 minibus.', 'texte', 60, true, 10
from public.courses c where c.slug = 'formation-gestion-transport'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Concevoir les lignes et les horaires');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Affecter les chauffeurs et les véhicules', '## Objectifs de la leçon

Savoir calculer le parc de véhicules nécessaire en incluant une réserve, dimensionner l''effectif de chauffeurs, construire un roulement équitable et organiser l''affectation quotidienne dans le respect de la réglementation et de la sécurité.

## Du besoin en ligne au parc total

Le calcul de la leçon précédente donne le nombre de véhicules en ligne à l''heure de pointe. Mais il faut aussi des véhicules de réserve pour remplacer ceux qui sont en panne, en entretien préventif ou en contrôle technique.

Parc total = véhicules en ligne + réserve.

Le taux de réserve se fixe selon l''âge du parc et la qualité de l''entretien. Avec un taux de réserve de 10 % (taux interne fictif pour l''exemple) et 8 véhicules en ligne : 8 × 10 % = 0,8, arrondi à 1 véhicule de réserve. Parc total : 9 véhicules.

Un planning d''entretien préventif (vidanges, freins, pneus) doit être tenu : on immobilise les véhicules à tour de rôle, de préférence en heures creuses ou le dimanche, pour ne jamais descendre sous le nombre requis à la pointe.

## Le service et le roulement

Un service (ou vacation) est la journée de travail d''un chauffeur : heure de prise, trajets, pauses, heure de fin. Un roulement est l''organisation qui fait tourner les chauffeurs sur les différents services et jours de repos, sur plusieurs semaines.

Règles à respecter :

- la réglementation en vigueur sur la durée du travail, les temps de conduite, les pauses et le repos ; elle doit être vérifiée auprès des textes officiels et peut évoluer (le Sénégal prépare notamment un nouveau Code du travail) ;
- le permis de conduire de la catégorie requise pour le transport de personnes, en cours de validité, et les éventuelles aptitudes médicales exigées ;
- l''équité : services du matin, du soir et du week-end répartis entre tous ;
- la stabilité : un chauffeur qui connaît sa ligne est plus sûr et plus ponctuel.

## Dimensionner l''effectif de chauffeurs

Méthode :

- compter le nombre de services à assurer par semaine ;
- diviser par le nombre de services qu''un chauffeur fait par semaine ;
- ajouter une marge pour les congés, maladies et formations.

Exemple : 8 véhicules en ligne, de 6 h à 22 h, 7 jours sur 7, avec deux services par véhicule et par jour (6 h – 14 h et 14 h – 22 h).

- Services par semaine : 8 × 2 × 7 = 112.
- Si chaque chauffeur fait 6 services par semaine : 112 / 6 ≈ 18,67 chauffeurs.
- Avec une marge de 10 % pour absences (taux fictif pour l''exemple) : 18,67 × 1,10 ≈ 20,5, arrondi à 21 chauffeurs.

La durée de chaque service doit être compatible avec la réglementation applicable ; l''exemple illustre seulement la méthode de calcul.

## L''affectation quotidienne

Chaque soir, le chef d''exploitation (ou régulateur) prépare l''affectation du lendemain : quel chauffeur prend quel véhicule pour quel service. Il tient compte :

- des véhicules disponibles (état transmis par l''atelier) ;
- des chauffeurs présents (congés, absences signalées) ;
- des compétences (certains chauffeurs connaissent certaines lignes ou sont habilités à certains véhicules).

Un outil simple est le tableau d''affectation : en lignes les services, en colonnes le chauffeur, le véhicule, les heures de prise et de fin, et une case de signature à la prise de service. Le matin, le chauffeur fait la vérification de son véhicule (pneus, feux, freins, niveaux, extincteur) et signe la fiche avant de partir.

## Exemple d''affectation pour le transport du personnel

Une société minière de la région de Thiès assure le transport de 3 équipes. Elle dispose de 6 bus et de 9 chauffeurs. Chaque bus fait le ramassage d''une équipe, puis ramène l''équipe sortante. Le régulateur fixe un chauffeur titulaire par bus et par équipe, et garde des chauffeurs en réserve pour les remplacements. Le principe : un chauffeur titulaire, un véhicule attitré autant que possible, des remplaçants identifiés à l''avance.

## Points clés

- Parc total = véhicules en ligne + réserve pour pannes et entretien.
- Effectif de chauffeurs = services par semaine / services par chauffeur, plus une marge pour absences.
- Toujours respecter la réglementation en vigueur sur le temps de travail et la conduite.
- L''affectation quotidienne croise véhicules disponibles, chauffeurs présents et compétences.

## Exercices

Exercice 1. Une ligne nécessite 12 véhicules en ligne. Le taux de réserve est de 15 % (taux fictif). Calculez le parc total.

Exercice 2. Un réseau assure 5 véhicules en ligne, 2 services par jour, 6 jours par semaine. Chaque chauffeur fait 5 services par semaine. Calculez l''effectif nécessaire avant et après une marge de 10 % (fictive).

Exercice 3. Citez trois éléments que le régulateur doit vérifier avant de finaliser l''affectation du lendemain.

Exercice 4. Pourquoi est-il préférable de conserver un même chauffeur sur une même ligne ?

## Corrigé

Exercice 1. Réserve : 12 × 15 % = 1,8, arrondi à 2. Parc total : 14 véhicules.

Exercice 2. Services : 5 × 2 × 6 = 60. Effectif : 60 / 5 = 12 chauffeurs. Avec la marge : 12 × 1,10 = 13,2, arrondi à 14 chauffeurs.

Exercice 3. La disponibilité des véhicules (état de l''atelier), la présence des chauffeurs (congés, absences) et leurs compétences ou habilitations ; on peut aussi citer le respect des temps de repos entre deux services.

Exercice 4. Il connaît l''itinéraire, les arrêts, les difficultés de circulation et les habitudes des passagers : il est plus ponctuel, plus sûr et la qualité de service est meilleure.', 'texte', 60, false, 20
from public.courses c where c.slug = 'formation-gestion-transport'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Affecter les chauffeurs et les véhicules');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Billetterie et contrôle des recettes', '## Objectifs de la leçon

Connaître les principaux modes de billetterie, organiser le contrôle des recettes de la vente jusqu''au dépôt en banque, calculer la recette attendue à partir des titres vendus et analyser les écarts.

## Les modes de vente

- Le ticket papier numéroté, vendu à bord par un receveur ou en kiosque. Les carnets sont pré-numérotés, ce qui permet de savoir exactement combien de tickets ont été vendus.
- Le carnet ou la carte de plusieurs voyages, vendu à prix réduit pour fidéliser.
- L''abonnement mensuel, pour les élèves, étudiants et travailleurs.
- La billettique électronique : carte sans contact ou ticket à code, validé à bord.
- Le paiement mobile, de plus en plus répandu, qui réduit la manipulation d''espèces.

Pour le transport du personnel, il n''y a souvent pas de billet : l''accès se fait sur présentation du badge ou d''une liste nominative, et le coût est supporté par l''employeur ou facturé à l''entreprise cliente selon un contrat.

## Pourquoi contrôler les recettes ?

Les recettes d''un transport de voyageurs sont faites de nombreuses petites sommes en espèces, encaissées loin du bureau. Les risques sont réels : tickets non délivrés (le receveur encaisse sans donner de ticket), tickets réutilisés, erreurs de rendu de monnaie, pertes ou vols d''espèces. Un contrôle sérieux protège l''entreprise, mais aussi les receveurs honnêtes.

## La chaîne de contrôle

- Dotation : le matin, chaque receveur reçoit des carnets dont les numéros sont enregistrés (du numéro au numéro) et un fonds de caisse.
- Vente : chaque voyageur reçoit son ticket, détaché dans l''ordre.
- Contrôle en ligne : des contrôleurs montent à bord et vérifient que chaque voyageur a un ticket valable.
- Arrêté de caisse : le soir, le receveur indique le dernier numéro vendu et compte ses espèces en présence d''un caissier.
- Rapprochement : recette attendue = nombre de tickets vendus × tarif ; on la compare aux espèces et paiements mobiles versés.
- Dépôt : la recette est mise au coffre puis déposée en banque, avec bordereau.

## Calcul de la recette attendue

Nombre de tickets vendus = dernier numéro vendu − premier numéro vendu + 1.

Exemple : un receveur a vendu les tickets 004501 à 004780 au tarif de 300 FCFA (tarif fictif pour l''exemple).

- Tickets vendus : 4 780 − 4 501 + 1 = 280.
- Recette attendue : 280 × 300 = 84 000 FCFA.
- Recette versée : 81 600 FCFA.
- Écart : 81 600 − 84 000 = −2 400 FCFA, soit l''équivalent de 8 tickets.

On n''oublie pas le « + 1 » : du ticket 1 au ticket 10, on a vendu 10 tickets, pas 9.

L''écart doit être expliqué : erreur de rendu, ticket gratuit accordé sans autorisation, perte. Les écarts répétés d''un même receveur appellent un entretien et un suivi, dans le respect du règlement intérieur.

## Les indicateurs de recettes

- Recette par voyage = recette totale / nombre de voyages effectués.
- Recette par kilomètre = recette totale / kilomètres parcourus.
- Taux de fraude constaté = voyageurs sans titre valable / voyageurs contrôlés.
- Écart de caisse cumulé par receveur.

Exemple : sur une journée, une ligne a fait 24 voyages pour 432 km et encaissé 518 400 FCFA. Recette par voyage : 518 400 / 24 = 21 600 FCFA. Recette par km : 518 400 / 432 = 1 200 FCFA. Si les contrôleurs ont vérifié 400 voyageurs et trouvé 14 sans titre, le taux de fraude constaté est de 14 / 400 = 3,5 %.

Comparer la recette par voyage d''un jour à l''autre et d''un receveur à l''autre, sur une même ligne et un même horaire, permet de repérer des anomalies.

## Points clés

- Les carnets pré-numérotés permettent de calculer exactement la recette attendue.
- Tickets vendus = dernier − premier + 1.
- Chaque écart de caisse est expliqué et suivi.
- Recette par voyage, par km et taux de fraude sont les indicateurs de base.

## Exercices

Exercice 1. Un receveur a vendu les tickets 012340 à 012589 au tarif fictif de 250 FCFA. Il verse 62 000 FCFA. Calculez la recette attendue et l''écart.

Exercice 2. Une ligne a encaissé 360 000 FCFA en 20 voyages et 300 km. Calculez la recette par voyage et par km.

Exercice 3. Les contrôleurs ont vérifié 250 voyageurs et en ont trouvé 10 sans titre. Calculez le taux de fraude constaté.

Exercice 4. Proposez deux mesures pour réduire les tickets non délivrés.

## Corrigé

Exercice 1. Tickets : 12 589 − 12 340 + 1 = 250. Recette attendue : 250 × 250 = 62 500 FCFA. Écart : 62 000 − 62 500 = −500 FCFA, soit 2 tickets.

Exercice 2. Par voyage : 360 000 / 20 = 18 000 FCFA. Par km : 360 000 / 300 = 1 200 FCFA.

Exercice 3. 10 / 250 = 4 %.

Exercice 4. Par exemple : contrôles inopinés à bord, sensibiliser les voyageurs à exiger leur ticket, développer le paiement mobile ou la billettique électronique, comparer la recette par voyage entre receveurs.', 'texte', 60, false, 30
from public.courses c where c.slug = 'formation-gestion-transport'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Billetterie et contrôle des recettes');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sécurité routière et qualité de service', '## Objectifs de la leçon

Mettre en place les règles essentielles de sécurité routière pour un service de transport de voyageurs, savoir réagir en cas d''accident, définir les critères de qualité de service et les mesurer avec des indicateurs simples.

## La sécurité, priorité absolue

Transporter des personnes engage la responsabilité de l''exploitant. Un accident a des conséquences humaines dramatiques, mais aussi juridiques, financières et sur la réputation. La sécurité repose sur trois piliers : le véhicule, le conducteur et l''organisation.

## Le véhicule

- Contrôle technique et assurance à jour, documents à bord.
- Vérification avant départ, chaque jour, par le chauffeur : pneus (usure, pression), freins, feux et clignotants, essuie-glaces, rétroviseurs, niveaux, portes, ceintures si le véhicule en est équipé.
- Équipements de sécurité : extincteur vérifié, trousse de premiers secours, triangle de signalisation.
- Entretien préventif suivi selon un planning ; tout défaut signalé est réparé avant remise en service.

## Le conducteur

- Permis valide de la catégorie requise et aptitude vérifiée selon la réglementation.
- Zéro alcool et aucune substance altérant la vigilance.
- Respect des limitations de vitesse et du code de la route.
- Pas de téléphone tenu en main en conduisant.
- Gestion de la fatigue : respect des temps de conduite et de repos prévus par les textes en vigueur, pauses réelles.
- Formation régulière : conduite défensive, premiers secours, gestion des conflits avec les voyageurs.

## L''organisation

- Interdiction stricte de la surcharge : on ne prend pas plus de voyageurs que le nombre de places autorisé.
- Horaires réalistes : un horaire trop serré pousse à la vitesse.
- Procédure en cas d''accident connue de tous : sécuriser les lieux (feux de détresse, triangle), alerter les secours, porter assistance sans déplacer les blessés sauf danger immédiat, prévenir l''exploitation, remplir le constat, conserver les éléments utiles.
- Analyse de chaque accident ou incident pour en tirer des leçons, sans chercher seulement un coupable.

## La qualité de service

Pour les voyageurs, la qualité se juge sur quelques critères simples :

- la ponctualité : le véhicule part et passe à l''heure annoncée ;
- la régularité : les intervalles sont respectés, sans « trous » ;
- la propreté du véhicule ;
- l''accueil et la courtoisie du personnel ;
- l''information : horaires affichés, annonce des perturbations ;
- le confort et la sécurité ressentie ;
- la gestion des réclamations.

Pour le transport du personnel, la ponctualité est critique : un bus en retard, c''est une équipe entière qui commence en retard, avec un coût direct pour l''entreprise cliente.

## Mesurer : les indicateurs

- Taux de ponctualité = départs à l''heure / départs prévus. On définit « à l''heure » par une règle interne, par exemple entre 1 minute d''avance et 3 minutes de retard.
- Taux de réalisation = voyages effectués / voyages prévus.
- Fréquence des accidents = nombre d''accidents / kilomètres parcourus × 100 000 (accidents pour 100 000 km).
- Taux de réclamations = réclamations / voyageurs transportés × 10 000.

Exemple : sur un mois, 1 240 départs prévus, 1 091 à l''heure. Taux de ponctualité : 1 091 / 1 240 ≈ 88,0 %. Le réseau a parcouru 450 000 km et enregistré 3 accidents matériels : 3 / 450 000 × 100 000 ≈ 0,67 accident pour 100 000 km. Ces chiffres se comparent d''un mois à l''autre et entre lignes ; il ne s''agit pas de normes officielles.

## Améliorer en continu

Méthode simple :

- mesurer chaque mois les indicateurs ;
- identifier la ligne ou l''horaire le plus problématique ;
- rechercher les causes avec les chauffeurs (embouteillage récurrent, temps de parcours sous-estimé, véhicule souvent en panne) ;
- décider une action (ajuster l''horaire, changer d''itinéraire, renforcer l''entretien) ;
- vérifier le résultat le mois suivant.

## Points clés

- La sécurité repose sur le véhicule, le conducteur et l''organisation.
- Vérification quotidienne avant départ, zéro alcool, pas de surcharge, horaires réalistes.
- Une procédure d''accident claire et une analyse de chaque incident.
- Ponctualité, régularité, propreté, accueil et information font la qualité.
- Les indicateurs se suivent mensuellement et déclenchent des actions.

## Exercices

Exercice 1. Sur 860 départs prévus, 774 sont partis à l''heure. Calculez le taux de ponctualité.

Exercice 2. Un réseau a parcouru 320 000 km et connu 2 accidents. Calculez la fréquence pour 100 000 km.

Exercice 3. Citez cinq points que le chauffeur vérifie avant le départ.

Exercice 4. Un chauffeur arrive au terminus avec 15 minutes de retard tous les jours à 7 h 30. Proposez une démarche.

## Corrigé

Exercice 1. 774 / 860 = 90 %.

Exercice 2. 2 / 320 000 × 100 000 = 0,625 accident pour 100 000 km.

Exercice 3. Par exemple : pneus, freins, feux et clignotants, essuie-glaces, rétroviseurs, niveaux, extincteur, trousse de secours.

Exercice 4. Ne pas sanctionner d''emblée : analyser les causes avec le chauffeur (embouteillage récurrent à cette heure, temps de parcours sous-estimé, départ tardif du dépôt). Si le temps de parcours est irréaliste, ajuster l''horaire ou le battement ; vérifier ensuite la ponctualité le mois suivant.', 'texte', 60, false, 40
from public.courses c where c.slug = 'formation-gestion-transport'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sécurité routière et qualité de service');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Calculer la rentabilité d''une ligne', '## Objectifs de la leçon

Savoir calculer les recettes et les coûts d''une ligne, distinguer coûts variables et coûts fixes, déterminer le résultat et le seuil de rentabilité en nombre de voyageurs et en taux de remplissage, et utiliser ces calculs pour décider.

## Les recettes

Pour une ligne ouverte au public :

Recettes = nombre de voyageurs × tarif moyen.

Nombre de voyageurs = nombre de voyages × capacité × taux de remplissage moyen.

Pour le transport du personnel, la recette est souvent un forfait contractuel (par mois, par circuit ou par kilomètre) payé par l''entreprise cliente.

## Les coûts

Les coûts variables dépendent des kilomètres parcourus :

- carburant ;
- pneus ;
- entretien et réparations.

On les exprime en FCFA par km.

Les coûts fixes ne dépendent pas directement des kilomètres sur la période :

- salaires et charges des chauffeurs et receveurs (s''ils sont mensualisés) ;
- amortissement du véhicule (prix d''achat réparti sur sa durée d''utilisation) ;
- assurances, vignettes, taxes et autorisations ;
- part des frais de structure (bureau, régulation, encadrement).

## Exemple complet

Une société exploite une ligne interurbaine de 70 km avec un autocar de 30 places. Toutes les valeurs sont fictives.

Activité :

- 4 allers-retours par jour, soit 8 voyages par jour ;
- 26 jours d''exploitation par mois : 8 × 26 = 208 voyages ;
- kilomètres par mois : 208 × 70 = 14 560 km.

Recettes :

- taux de remplissage moyen 75 %, soit 30 × 0,75 = 22,5 voyageurs par voyage ;
- voyageurs par mois : 208 × 22,5 = 4 680 ;
- tarif : 1 500 FCFA ;
- recettes mensuelles : 4 680 × 1 500 = 7 020 000 FCFA.

Coûts variables :

- carburant : 25 L/100 km × 800 FCFA/L (prix fictif) = 200 FCFA/km ;
- entretien et pneus : 60 FCFA/km ;
- total : 260 FCFA/km × 14 560 km = 3 785 600 FCFA.

Coûts fixes mensuels :

- salaires chargés chauffeurs et receveurs : 900 000 FCFA ;
- amortissement du car : 1 000 000 FCFA ;
- assurances, taxes et autorisations : 250 000 FCFA ;
- frais de structure : 400 000 FCFA ;
- total : 2 550 000 FCFA.

Résultat :

- coût total : 3 785 600 + 2 550 000 = 6 335 600 FCFA ;
- résultat mensuel : 7 020 000 − 6 335 600 = 684 400 FCFA ;
- marge sur coûts variables : 7 020 000 − 3 785 600 = 3 234 400 FCFA.

## Le seuil de rentabilité

Sur une ligne régulière, les kilomètres sont fixés par l''horaire : le coût total du mois est donc connu à l''avance, quel que soit le nombre de voyageurs. Le seuil de rentabilité est le nombre de voyageurs qui couvre ce coût :

Voyageurs au seuil = coût total / tarif = 6 335 600 / 1 500 ≈ 4 223,7, soit 4 224 voyageurs par mois.

Par voyage : 4 224 / 208 ≈ 20,3 voyageurs. Taux de remplissage au seuil : 20,3 / 30 ≈ 67,7 %.

Lecture : la ligne est rentable tant que le car est rempli en moyenne à plus des deux tiers environ. À 75 %, la marge de sécurité est réelle mais faible : une baisse de fréquentation ou une hausse du carburant peut faire basculer la ligne dans le rouge.

## Utiliser le calcul pour décider

- Tester une hausse du prix du carburant : si le carburant passe à 220 FCFA/km, les coûts variables augmentent de 20 × 14 560 = 291 200 FCFA, et le résultat tombe à 393 200 FCFA.
- Tester la suppression d''un aller-retour en heure creuse : moins de kilomètres, mais aussi moins de voyageurs ; il faut connaître le remplissage de cet horaire précis.
- Négocier un contrat de transport du personnel : calculer le coût complet par km ou par mois, puis ajouter une marge, plutôt que de s''aligner sur un prix sans calcul.

## Points clés

- Recettes = voyageurs × tarif ; voyageurs = voyages × places × remplissage.
- Coûts variables au km ; coûts fixes au mois.
- Résultat = recettes − coûts variables − coûts fixes.
- Seuil de rentabilité en voyageurs = coût total / tarif ; on le traduit en taux de remplissage.
- Les simulations aident à décider des tarifs, des horaires et des contrats.

## Exercices

Exercice 1. Une ligne urbaine fait 12 voyages par jour, 25 jours par mois, sur 20 km par voyage. Calculez le nombre de voyages et de kilomètres par mois.

Exercice 2. Chaque voyage transporte en moyenne 40 voyageurs au tarif fictif de 250 FCFA. Calculez les recettes mensuelles.

Exercice 3. Coûts variables : 300 FCFA/km. Coûts fixes : 900 000 FCFA par mois. Calculez le coût total et le résultat.

Exercice 4. Le bus a 60 places. Calculez le seuil de rentabilité en voyageurs par mois, par voyage et en taux de remplissage.

## Corrigé

Exercice 1. Voyages : 12 × 25 = 300. Kilomètres : 300 × 20 = 6 000 km.

Exercice 2. Voyageurs : 300 × 40 = 12 000. Recettes : 12 000 × 250 = 3 000 000 FCFA.

Exercice 3. Coûts variables : 6 000 × 300 = 1 800 000 FCFA. Coût total : 1 800 000 + 900 000 = 2 700 000 FCFA. Résultat : 3 000 000 − 2 700 000 = 300 000 FCFA.

Exercice 4. Voyageurs au seuil : 2 700 000 / 250 = 10 800 par mois. Par voyage : 10 800 / 300 = 36. Taux de remplissage : 36 / 60 = 60 %. Avec 40 voyageurs en moyenne (environ 67 %), la ligne est rentable.', 'texte', 60, false, 50
from public.courses c where c.slug = 'formation-gestion-transport'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Calculer la rentabilité d''une ligne');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : organiser et rentabiliser un service de transport de voyageurs', '## Fiche du cours vidéo

Durée : 1h30. Public : exploitants de transport urbain et interurbain, responsables du transport du personnel, régulateurs, gestionnaires de flotte.

Objectifs : dimensionner une ligne (rotation, intervalle, véhicules) ; calculer l''effectif de chauffeurs ; contrôler les recettes ; piloter sécurité et qualité ; calculer le résultat et le seuil de rentabilité d''une ligne.

Matériel : diaporama, tableau blanc, calculatrice, un plan de ligne, un modèle de feuille d''affectation et un modèle d''arrêté de caisse.

Prérequis : avoir suivi les leçons 1 à 5, ou avoir une expérience de l''exploitation d''un service de transport.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture : un service de transport, c''est une horloge

Texte du formateur : « Bonjour et bienvenue. Un service de transport de voyageurs, c''est une horloge : des véhicules, des chauffeurs et des voyageurs qui doivent se retrouver au bon endroit, à la bonne minute, chaque jour. Quand un seul rouage se grippe, tout le système souffre. Aujourd''hui, nous allons suivre Sahel Mobilité, une entreprise fictive qui veut ouvrir une ligne urbaine dans l''agglomération dakaroise, une ligne interurbaine et un contrat de transport du personnel pour une usine. »

Question posée : « Selon vous, quel est le premier motif de mécontentement des voyageurs ? » Réponses fréquentes : l''attente, l''incertitude sur l''horaire, la surcharge.

## 05:00 – 18:00 · Dimensionner une ligne

Texte du formateur : « Notre ligne urbaine fait 18 km. Aller : 50 minutes, retour : 50 minutes, battement de 10 minutes à chaque bout. Temps de rotation : 120 minutes. À la pointe du matin, nous comptons 480 voyageurs par heure dans le sens le plus chargé, avec des bus de 60 places. Il faut 8 passages par heure, soit un intervalle de 7,5 minutes. Combien de bus ? 120 divisé par 7,5, cela fait 16 bus. »

Visuel : schéma de la ligne avec les terminus, les arrêts et les temps de parcours.

Texte du formateur : « Seize bus, c''est beaucoup. Peut-on accepter 15 minutes d''intervalle ? Alors 8 bus suffisent, mais chaque passage devrait embarquer 120 personnes dans des bus de 60 places : c''est la surcharge, interdite. Le calcul nous montre donc que, pour cette demande, il faut soit 16 bus, soit des véhicules plus grands. Les chiffres ne décident pas à notre place, mais ils évitent de promettre l''impossible. »

Texte du formateur : « En heure creuse, la demande tombe à 180 voyageurs par heure : 3 passages suffisent, soit 20 minutes d''intervalle et seulement 6 bus. On libère donc des bus pour l''entretien en milieu de journée. »

Texte du formateur : « Pour le transport du personnel de l''usine, la logique change : ce sont les prises de poste qui commandent. L''équipe du matin compte 210 personnes réparties dans quatre quartiers. Avec des minibus de 30 places, il faut au moins 7 circuits, que l''on répartit selon les effectifs de chaque quartier, en arrivant sur le site quelques minutes avant la prise de poste. »

## 18:00 – 30:00 · Véhicules de réserve et chauffeurs

Texte du formateur : « Restons sur un scénario plus modeste de 8 bus en ligne. Il faut une réserve pour les pannes et l''entretien : avec un taux interne de 10 %, cela fait 1 bus de plus, 9 au total. Côté chauffeurs : 8 bus, deux services par jour, sept jours sur sept, cela fait 112 services par semaine. Si un chauffeur assure 6 services par semaine, il en faut environ 18,7. Avec une marge de 10 % pour les congés et absences, on arrive à 21 chauffeurs. »

Texte du formateur : « Attention : la durée des services, les temps de conduite et les repos doivent respecter la réglementation en vigueur. Vérifiez toujours les textes officiels, d''autant que le Sénégal prépare un nouveau Code du travail. »

Visuel : tableau d''affectation type (service, chauffeur, véhicule, heures, signature).

Question posée : « Que faites-vous à 5 h 30 si un chauffeur ne se présente pas ? » Réponse : un remplaçant d''astreinte identifié la veille et un véhicule de réserve prêt.

## 30:00 – 42:00 · La billetterie et les recettes

Texte du formateur : « Chez Sahel Mobilité, les receveurs vendent des tickets à 300 FCFA, tarif fictif. Le matin, chaque receveur reçoit des carnets dont on note les numéros. Le soir, il indique le dernier ticket vendu. Le receveur Moussa a vendu du 004501 au 004780. Combien de tickets ? Attention au piège : 4 780 moins 4 501 plus 1, soit 280 tickets. Recette attendue : 84 000 FCFA. Il verse 81 600 : il manque 2 400 FCFA, l''équivalent de 8 tickets. »

Texte du formateur : « Un écart n''est pas une accusation, c''est une question. Erreur de rendu ? Voyageur autorisé à voyager gratuitement ? On écoute, on note, et on suit dans le temps. C''est la répétition qui doit alerter. »

Visuel : modèle d''arrêté de caisse avec les numéros de tickets, la recette attendue et la recette versée.

## 42:00 – 50:00 · Pause interactive et quiz

Texte du formateur : « Pause active. Quatre questions. »

- Question 1 : aller 35 min, retour 35 min, battements 5 + 5 min, intervalle 20 min. Combien de véhicules ?
- Question 2 : 300 voyageurs par heure, véhicules de 50 places. Intervalle ?
- Question 3 : tickets vendus du 012340 au 012589. Combien de tickets ?
- Question 4 : 12 véhicules en ligne et 15 % de réserve. Parc total ?

Correction : 1) rotation 80 min, 4 véhicules ; 2) 6 passages par heure, intervalle 10 min ; 3) 250 tickets ; 4) 12 + 2 = 14 véhicules.

## 50:00 – 1:02:00 · Sécurité routière et qualité de service

Texte du formateur : « Parlons maintenant de ce qui ne se négocie pas : la sécurité. Trois piliers. Le véhicule : vérification chaque matin, entretien préventif, extincteur et trousse de secours à bord. Le conducteur : permis adapté, zéro alcool, pas de téléphone en main, respect des vitesses, repos suffisant. L''organisation : pas de surcharge, des horaires réalistes, une procédure d''accident connue de tous. »

Visuel : check-list de prise de service et schéma de la procédure en cas d''accident.

Texte du formateur : « Arrêtons-nous sur la procédure en cas d''accident, car le stress fait oublier les bons gestes. Premier réflexe : sécuriser, avec les feux de détresse et le triangle, et faire descendre les voyageurs du côté opposé à la circulation si c''est sans danger. Deuxième réflexe : alerter les secours et l''exploitation, en donnant le lieu exact et le nombre de blessés. Troisième réflexe : porter assistance sans déplacer un blessé, sauf danger immédiat comme un risque d''incendie. Ensuite seulement viennent le constat, les témoignages et les photos. Le lendemain, on analyse l''accident avec le chauffeur pour comprendre ce qui s''est passé et éviter qu''il se reproduise. L''objectif n''est pas de trouver un coupable à tout prix, mais d''améliorer le système. »

Texte du formateur : « Côté qualité, mesurons. Le mois dernier, 1 240 départs prévus, 1 091 à l''heure : 88 % de ponctualité. 3 accidents matériels pour 450 000 km : environ 0,67 accident pour 100 000 km. Ces chiffres sont des repères internes, que l''on compare de mois en mois et de ligne en ligne. »

Question posée : « Si une ligne est toujours en retard à la même heure, la faute en revient-elle forcément au chauffeur ? » Discussion : souvent, c''est l''horaire qui est irréaliste.

## 1:02:00 – 1:18:00 · La rentabilité d''une ligne interurbaine

Texte du formateur : « Passons à la ligne interurbaine de Sahel Mobilité : 70 km, un autocar de 30 places, 8 voyages par jour, 26 jours par mois. Cela fait 208 voyages et 14 560 km par mois. Avec un remplissage moyen de 75 %, soit 22,5 voyageurs par voyage, on transporte 4 680 voyageurs. À 1 500 FCFA, tarif fictif, la recette est de 7 020 000 FCFA. »

Texte du formateur : « Les coûts variables : carburant à 200 FCFA par km et entretien à 60 FCFA, soit 260 FCFA par km, donc 3 785 600 FCFA. Les coûts fixes : salaires, amortissement, assurances et structure, 2 550 000 FCFA. Coût total : 6 335 600 FCFA. Résultat : 684 400 FCFA par mois. »

Visuel : tableau recettes – coûts – résultat, puis graphique du résultat en fonction du taux de remplissage.

Texte du formateur : « Où est le seuil ? Coût total divisé par le tarif : environ 4 224 voyageurs par mois, soit 20,3 par voyage, soit un remplissage d''environ 67,7 %. Nous sommes à 75 % : rentable, mais avec une marge étroite. Si le carburant passe à 220 FCFA par km, le résultat tombe à 393 200 FCFA. Ce type de simulation doit précéder toute décision de tarif ou d''horaire. »

Question posée : « Pour le contrat de transport du personnel, comment fixer le prix ? » Réponse : calculer le coût complet par mois du circuit (kilomètres × coût variable + coûts fixes affectés), puis ajouter une marge, au lieu de s''aligner sur un prix sans calcul.

## 1:18:00 – 1:30:00 · Synthèse et évaluation finale

Texte du formateur : « Récapitulons. Une ligne se dimensionne avec la rotation, l''intervalle et la demande. On ajoute une réserve de véhicules et une marge de chauffeurs. Les recettes se contrôlent grâce aux carnets numérotés. La sécurité repose sur le véhicule, le conducteur et l''organisation, et la qualité se mesure. Enfin, la rentabilité se calcule et se simule avant de décider. »

Évaluation finale, cinq questions :

- Question 1 : rotation de 120 minutes et intervalle de 15 minutes. Combien de véhicules ? Réponse : 8.
- Question 2 : 5 véhicules en ligne, 2 services par jour, 6 jours, 5 services par chauffeur. Effectif sans marge ? Réponse : 60 / 5 = 12 chauffeurs.
- Question 3 : 774 départs à l''heure sur 860. Ponctualité ? Réponse : 90 %.
- Question 4 : coût total 2 700 000 FCFA et tarif 250 FCFA. Voyageurs au seuil ? Réponse : 10 800.
- Question 5 : 36 voyageurs par voyage au seuil pour un bus de 60 places. Taux de remplissage au seuil ? Réponse : 60 %.

Texte du formateur : « Votre mission : choisissez une ligne ou un circuit que vous connaissez et calculez son temps de rotation, son besoin en véhicules et son seuil de rentabilité. Merci pour votre participation. »', 'video', 90, false, 60
from public.courses c where c.slug = 'formation-gestion-transport'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : organiser et rentabiliser un service de transport de voyageurs');

-- Cours : Gestion des ressources humaines M1 : stratégie, compétences et dialogue social en contexte africain
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'grh-master1', (select id from public.levels where name = 'Master 1'), null, 'Gestion des ressources humaines', 'Gestion des ressources humaines M1 : stratégie, compétences et dialogue social en contexte africain', 'Ce cours aborde la GRH stratégique en Afrique francophone : GPEC, recrutement et intégration, formation, évaluation et rémunération, relations sociales et SIRH. Il s''appuie sur des cas d''entreprises de la sous-région et rappelle le contexte de réforme du droit du travail au Sénégal. Il s''adresse aux étudiants de Master 1 et aux cadres en reprise d''études ; une connaissance de base du management est souhaitée.', true, 50
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'La GRH stratégique et le contexte africain', '## Objectifs de la leçon

- Situer la GRH comme fonction stratégique de l''organisation.
- Identifier les spécificités du contexte africain francophone : informalité, cadre juridique, dimension sociale et culturelle.
- Connaître les grands domaines et indicateurs de la fonction RH.

## 1. De la gestion du personnel à la GRH stratégique

La gestion du personnel s''est longtemps limitée à l''administration : contrats, paie, congés, discipline. La gestion des ressources humaines (GRH) considère au contraire les personnes comme une ressource stratégique, dont les compétences, l''engagement et la capacité d''innovation conditionnent la performance. La GRH stratégique cherche l''alignement entre la stratégie de l''organisation et les politiques RH : une banque qui se digitalise doit recruter des profils numériques, former ses agents et revoir son organisation du travail.

Le modèle des « quatre rôles » de Dave Ulrich est souvent cité : le DRH est partenaire stratégique, expert administratif, champion des salariés et agent du changement. Dans beaucoup d''entreprises africaines, la fonction RH est encore surtout administrative ; l''enjeu des prochaines années est de la professionnaliser.

## 2. Les domaines de la GRH

- Planification et GPEC : anticiper les besoins en effectifs et en compétences.
- Recrutement et intégration.
- Formation et développement des compétences.
- Évaluation de la performance et gestion des carrières.
- Rémunération et avantages sociaux.
- Relations sociales, dialogue avec les représentants du personnel.
- Santé, sécurité et qualité de vie au travail.
- Administration du personnel et systèmes d''information RH.

## 3. Les spécificités du contexte africain

Le gestionnaire RH en Afrique de l''Ouest travaille dans un environnement particulier :

- Le poids de l''économie informelle : une grande partie de l''emploi se situe hors du salariat formel. Les entreprises formelles côtoient des sous-traitants, des journaliers et des travailleurs non déclarés, ce qui pose des questions de conformité et de responsabilité sociale.
- La démographie : une population jeune et nombreuse arrive chaque année sur le marché du travail ; le défi est autant la création d''emplois que l''adéquation formation-emploi.
- La pénurie de certaines compétences (ingénieurs spécialisés, data, maintenance industrielle, audit) coexistant avec un sous-emploi des diplômés dans d''autres filières.
- La dimension communautaire et culturelle : solidarité familiale, rôle des aînés, importance de la relation personnelle, attentes envers l''employeur en cas d''événements familiaux. Ces éléments peuvent renforcer la cohésion mais aussi créer des pressions (recrutements par affinité, demandes d''avances sur salaire).
- La diversité des statuts : entreprises publiques, multinationales, PME familiales, ONG, administrations, chacune avec ses pratiques.

## 4. Le cadre juridique

La relation de travail est encadrée par le Code du travail national, ses décrets d''application, les conventions collectives (interprofessionnelle et sectorielles) et le contrat de travail. La protection sociale relève d''organismes nationaux ; au Sénégal, par exemple, la Caisse de sécurité sociale et l''Institution de prévoyance retraite. L''inspection du travail contrôle l''application des règles et intervient dans les conflits.

Le Sénégal est engagé dans une transition vers un nouveau Code du travail, avec un projet de loi (n°15/2026) en cours de procédure. Tant que le nouveau texte et ses décrets ne sont pas définitivement adoptés et publiés, le gestionnaire RH doit appliquer les textes en vigueur et suivre attentivement l''évolution de la réforme, notamment pour les contrats, la durée du travail et le dialogue social. Ce cours présente des mécanismes et des méthodes ; pour tout taux, seuil ou délai légal, il faut se référer aux textes officiels.

## 5. Mesurer : les indicateurs RH de base

- Effectif à une date et effectif moyen sur la période.
- Taux de rotation (turnover) = nombre de départs sur la période / effectif moyen × 100.
- Taux d''absentéisme = heures d''absence / heures théoriques de travail × 100.
- Pyramide des âges et des anciennetés.
- Masse salariale et ratio masse salariale / chiffre d''affaires.
- Nombre moyen d''heures de formation par salarié.

## Exemple : une agro-industrie de la vallée du fleuve

Une entreprise de transformation de tomates compte 120 salariés permanents au 1er janvier et 130 au 31 décembre ; 15 salariés sont partis dans l''année. Elle emploie aussi environ 300 saisonniers pendant la campagne. Effectif moyen des permanents ≈ (120 + 130)/2 = 125 ; turnover = 15/125 = 12 %. Les heures d''absence s''élèvent à 9 750 pour 250 000 heures théoriques : absentéisme = 3,9 %.

Analyse : le turnover est concentré chez les techniciens de maintenance, attirés par les sociétés minières. La GRH stratégique doit traiter ce problème (rémunération, carrière, formation interne) car un arrêt de ligne pendant la campagne coûte très cher. La gestion des saisonniers pose par ailleurs des questions de contrats, de sécurité et de fidélisation d''une campagne à l''autre.

## Points clés

- La GRH est une fonction stratégique, à aligner sur la stratégie de l''organisation.
- Le contexte africain combine informalité, jeunesse démographique, pénuries de compétences ciblées et forte dimension sociale.
- Le droit du travail sénégalais est en transition : appliquer les textes en vigueur et suivre la réforme.
- Quelques indicateurs simples (turnover, absentéisme, pyramide des âges) éclairent les décisions.

## Exercices

- Exercice 1 : Citez les quatre rôles du DRH selon Ulrich et illustrez-en deux.
- Exercice 2 : Une PME compte 40 salariés au 1er janvier, 50 au 31 décembre et a enregistré 9 départs. Calculez son taux de rotation.
- Exercice 3 : Donnez deux avantages et deux risques de la dimension communautaire dans la gestion du personnel.
- Exercice 4 : Pourquoi un DRH doit-il éviter de citer de mémoire un délai de préavis ou un taux de cotisation dans une note interne en période de réforme ?

## Corrigé

- Exercice 1 : Partenaire stratégique (participer au plan de développement et traduire ses besoins en compétences), expert administratif (fiabiliser la paie et les contrats), champion des salariés (écoute, qualité de vie au travail), agent du changement (accompagner une digitalisation ou une réorganisation).
- Exercice 2 : Effectif moyen = (40 + 50)/2 = 45 ; turnover = 9/45 = 20 %.
- Exercice 3 : Avantages : forte solidarité et entraide, fidélité et sentiment d''appartenance. Risques : recrutements par affinité au détriment des compétences, conflits entre obligations familiales et exigences professionnelles (absences, demandes d''avances).
- Exercice 4 : Parce qu''une erreur expose l''entreprise à des contentieux et que les règles peuvent changer avec l''adoption du nouveau Code du travail et de ses décrets ; il faut citer le texte en vigueur, vérifié à la date de la note.', 'texte', 50, true, 10
from public.courses c where c.slug = 'grh-master1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'La GRH stratégique et le contexte africain');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'La gestion prévisionnelle des emplois et des compétences (GPEC)', '## Objectifs de la leçon

- Comprendre la finalité et les étapes de la gestion prévisionnelle des emplois et des compétences (GPEC).
- Construire un référentiel emplois-compétences.
- Analyser les écarts entre besoins et ressources et définir un plan d''action.

## 1. Définition et enjeux

La GPEC est une démarche d''anticipation qui vise à adapter, à court et moyen terme, les emplois, les effectifs et les compétences aux exigences de la stratégie et aux évolutions de l''environnement (technologiques, économiques, réglementaires, démographiques). Elle permet d''éviter les ruptures (départs massifs à la retraite, compétences devenues obsolètes) et de sécuriser les parcours des salariés.

Exemples de situations qui la rendent indispensable : une banque qui ferme des guichets au profit des services numériques ; une entreprise du secteur pétrolier et gazier qui démarre une production ; une administration dont une grande partie des cadres partira en retraite dans cinq ans.

## 2. Les notions clés

- Poste : situation de travail individuelle, définie dans une fiche de poste.
- Emploi (ou emploi-type) : regroupement de postes proches (par exemple « chargé de clientèle »).
- Métier : famille d''emplois partageant une technique commune.
- Compétence : combinaison de savoirs (connaissances), savoir-faire (pratiques) et savoir-être (comportements) mobilisée dans une situation professionnelle.
- Référentiel de compétences : liste structurée des compétences requises par emploi, avec des niveaux de maîtrise (par exemple de 1, notions, à 4, expertise).

## 3. La démarche en quatre étapes

- Étape 1 : analyser l''existant (ressources actuelles) : effectifs par emploi, âge, ancienneté, qualification, compétences évaluées, pyramides des âges.
- Étape 2 : déterminer les besoins futurs à l''horizon choisi (3 à 5 ans) à partir de la stratégie : volumes d''activité, nouveaux métiers, métiers en déclin.
- Étape 3 : projeter les ressources futures en l''absence d''action (départs à la retraite, turnover prévisible, promotions) et mesurer les écarts quantitatifs (nombre) et qualitatifs (compétences).
- Étape 4 : définir les plans d''action pour réduire les écarts : recrutement, formation, mobilité interne, reconversion, recours à la sous-traitance, gestion des fins de carrière, et dans les cas de sureffectif, mesures d''accompagnement conformes au droit du travail.

## 4. Les outils

- Pyramide des âges : une pyramide « en champignon » (beaucoup de salariés âgés) annonce des départs massifs et un risque de perte de savoir-faire ; une pyramide « en poire » (beaucoup de jeunes) annonce des besoins de carrière et de rémunération.
- Matrice de polyvalence : tableau croisant salariés et compétences, utile en production.
- Entretiens professionnels et bilans de compétences.
- Cartographie des emplois sensibles : emplois stratégiques, rares, ou en forte évolution.

## Exemple chiffré : une société de distribution d''eau

L''entreprise compte 80 techniciens de réseau. D''après l''analyse de la pyramide des âges, 18 partiront en retraite dans les cinq ans ; le turnover hors retraite est estimé à 2 départs par an. La stratégie prévoit une extension du réseau nécessitant 95 techniciens dans cinq ans, dont 30 capables d''exploiter des capteurs et des outils de télégestion. Aujourd''hui, 6 techniciens maîtrisent ces outils.

- Ressources projetées sans action : 80 − 18 − 2 × 5 = 52 techniciens.
- Écart quantitatif : 95 − 52 = 43 techniciens à recruter ou à former en interne.
- Écart qualitatif : 30 compétences en télégestion requises ; 6 existantes, dont il faut retirer les départs éventuels. Si 2 des 6 partent en retraite, il en reste 4 : écart de 26.
- Plan d''action possible : recrutement progressif de 43 techniciens (dont une partie en alternance avec un lycée technique ou un centre de formation professionnelle), programme de formation à la télégestion pour 26 personnes (recrues et anciens), tutorat des futurs retraités pour transmettre la connaissance du réseau.

## 5. Conditions de réussite

- Un lien explicite avec la stratégie et l''implication de la direction générale.
- Des données RH fiables (d''où l''importance du SIRH).
- L''association des managers et le dialogue avec les représentants du personnel.
- Une démarche réaliste : dans une PME, une GPEC légère (cartographie des postes clés, plan de relève) vaut mieux qu''un dispositif lourd jamais mis à jour.

## Points clés

- La GPEC anticipe les écarts entre besoins et ressources en emplois et en compétences.
- Démarche : existant, besoins futurs, projection et écarts, plans d''action.
- Les outils clés sont la pyramide des âges, le référentiel de compétences et la matrice de polyvalence.
- Sans lien avec la stratégie ni données fiables, la GPEC reste théorique.

## Exercices

- Exercice 1 : Distinguez poste, emploi et métier avec un exemple pris dans une banque.
- Exercice 2 : Une entreprise a 50 commerciaux. Dans trois ans, 6 partiront à la retraite et le turnover sera de 4 départs par an. Le besoin est de 60 commerciaux. Calculez l''écart quantitatif.
- Exercice 3 : Une pyramide des âges montre que 45 % des ingénieurs ont plus de 55 ans. Quels risques et quelles actions ?
- Exercice 4 : Proposez trois actions possibles autres que le recrutement externe pour combler un écart de compétences.

## Corrigé

- Exercice 1 : Poste : chargé de clientèle particuliers à l''agence de Mbour ; emploi : chargé de clientèle (ensemble des postes similaires dans le réseau) ; métier : métiers de la relation commerciale bancaire.
- Exercice 2 : Ressources projetées : 50 − 6 − 4 × 3 = 32. Écart : 60 − 32 = 28 commerciaux à recruter ou à mobiliser.
- Exercice 3 : Risques : départs massifs, perte de savoir-faire, difficultés de recrutement sur un marché tendu. Actions : plan de relève, tutorat et binômes seniors-juniors, documentation des savoirs, recrutement anticipé de jeunes ingénieurs, éventuels aménagements de fin de carrière dans le respect des textes.
- Exercice 4 : Formation interne ou externe, mobilité et promotion internes, tutorat, alternance, recours ponctuel à l''expertise externe ou à la sous-traitance.', 'texte', 55, false, 20
from public.courses c where c.slug = 'grh-master1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'La gestion prévisionnelle des emplois et des compétences (GPEC)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Recrutement, intégration et formation', '## Objectifs de la leçon

- Conduire un processus de recrutement rigoureux, équitable et efficace.
- Réussir l''intégration des nouveaux salariés.
- Concevoir un plan de formation et en évaluer les effets.

## 1. Le processus de recrutement

Recruter, c''est engager l''entreprise sur le long terme : une erreur coûte cher (salaire versé, coût de remplacement, désorganisation). Le processus comprend sept étapes :

- Identification du besoin : remplacement, création de poste, ou alternative (réorganisation, promotion interne).
- Définition du poste et du profil : fiche de poste, compétences indispensables et souhaitables, conditions (lieu, statut, fourchette de rémunération).
- Sourcing : recrutement interne (mobilité, promotion), annonces, sites d''emploi, réseaux professionnels, écoles et universités, cabinets, cooptation encadrée.
- Présélection : tri des candidatures selon des critères définis à l''avance et appliqués à tous.
- Évaluation : entretiens structurés, tests techniques, mises en situation, vérification des références.
- Décision et proposition : offre écrite, négociation, contrat conforme au droit en vigueur.
- Intégration (onboarding).

## 2. Équité et lutte contre les biais

Dans un contexte où le recrutement par relation est fréquent, l''entreprise a intérêt à formaliser son processus. Les décisions doivent reposer sur les compétences, et non sur l''origine, la religion, le sexe, l''appartenance ethnique ou les liens familiaux. Outils : grille d''évaluation commune, entretiens structurés (mêmes questions pour tous), jury de plusieurs personnes, traçabilité des décisions. La cooptation peut être utile si elle reste soumise aux mêmes épreuves que les autres candidatures.

L''entretien comportemental est une technique efficace : on demande au candidat de décrire une situation réelle passée (contexte, action, résultat), par exemple « racontez une situation où vous avez dû récupérer une créance difficile ». Le passé est le meilleur prédicteur du comportement futur.

## 3. L''intégration

Un nouveau salarié mal accueilli risque de partir rapidement. Un parcours d''intégration comprend : la préparation du poste (matériel, accès), une journée d''accueil, la présentation de l''entreprise et des règles (sécurité, éthique), la désignation d''un tuteur, des points d''étape à un mois et à trois mois, et le bilan de fin de période d''essai, dans le respect des durées prévues par les textes applicables.

## 4. Mesurer l''efficacité du recrutement

- Délai de recrutement (de l''ouverture du poste à la prise de fonction).
- Coût par recrutement = (coûts externes + temps interne valorisé) / nombre de recrutements.
- Taux de départ ou de rupture pendant la période d''essai.
- Satisfaction des managers à 6 mois.

Exemple : une banque régionale réalise 20 recrutements dans l''année. Coûts externes (annonces, cabinet, tests) : 9 000 000 FCFA ; temps interne valorisé : 5 000 000 FCFA. Coût par recrutement = 14 000 000 / 20 = 700 000 FCFA. Trois recrues sont parties pendant la période d''essai : taux d''échec de 15 %, à analyser (profil mal défini ? intégration insuffisante ?).

## 5. La formation : ingénierie et plan

La formation développe les compétences nécessaires à la stratégie et à l''employabilité des salariés. L''ingénierie de formation suit un cycle :

- Analyse des besoins : issue de la GPEC, des entretiens annuels, des projets et des incidents.
- Conception : objectifs pédagogiques mesurables, contenus, modalités (présentiel, e-learning, formation en situation de travail, tutorat).
- Réalisation : en interne ou avec un organisme de formation.
- Évaluation.

Le plan de formation regroupe les actions retenues pour l''année, avec un budget et des priorités. Des dispositifs publics de financement de la formation professionnelle existent dans plusieurs pays (au Sénégal, par exemple, un fonds dédié au financement de la formation professionnelle et technique) ; leurs conditions d''accès doivent être vérifiées auprès des organismes concernés.

## 6. Évaluer la formation : le modèle de Kirkpatrick

- Niveau 1, réaction : satisfaction des participants.
- Niveau 2, apprentissage : connaissances acquises (test avant et après).
- Niveau 3, comportement : application sur le poste de travail quelques semaines plus tard.
- Niveau 4, résultats : effet sur les indicateurs de l''entreprise.

On peut compléter par un retour sur investissement : ROI = (gains − coût) / coût.

Exemple : une formation à la maintenance préventive coûte 6 000 000 FCFA pour 15 techniciens. Dans l''année qui suit, les arrêts de production diminuent ; la perte évitée est estimée à 15 000 000 FCFA. ROI = (15 − 6)/6 = 1,5, soit 150 %. Il faut rester prudent : d''autres facteurs (nouvelles pièces, nouvelle équipe) ont pu contribuer à la baisse des pannes.

## Points clés

- Un recrutement réussi commence par une définition précise du besoin et du profil.
- Des critères communs et des entretiens structurés limitent les biais.
- L''intégration conditionne la fidélisation.
- La formation suit un cycle analyse-conception-réalisation-évaluation ; Kirkpatrick structure l''évaluation.

## Exercices

- Exercice 1 : Rédigez trois questions d''entretien comportemental pour un poste de chef d''agence de microfinance.
- Exercice 2 : Coûts externes de recrutement : 4 500 000 FCFA ; temps interne valorisé : 1 500 000 FCFA ; 12 recrutements. Calculez le coût par recrutement.
- Exercice 3 : Une formation coûte 3 000 000 FCFA et génère des gains estimés à 4 200 000 FCFA. Calculez le ROI. Quelles précautions d''interprétation ?
- Exercice 4 : À quel niveau de Kirkpatrick se situe chacune des mesures : a) questionnaire de fin de stage ; b) observation des pratiques un mois après ; c) baisse du taux d''impayés ?

## Corrigé

- Exercice 1 : « Décrivez une situation où un client important était en retard de remboursement : qu''avez-vous fait et quel a été le résultat ? » ; « Racontez un conflit au sein de votre équipe et la façon dont vous l''avez géré » ; « Donnez un exemple d''objectif commercial difficile que vous avez atteint et les actions menées ».
- Exercice 2 : (4 500 000 + 1 500 000)/12 = 500 000 FCFA par recrutement.
- Exercice 3 : ROI = (4,2 − 3)/3 = 0,4, soit 40 %. Précautions : les gains sont des estimations, d''autres facteurs peuvent intervenir, et certains bénéfices (motivation, fidélisation) sont difficiles à chiffrer.
- Exercice 4 : a) niveau 1 (réaction) ; b) niveau 3 (comportement) ; c) niveau 4 (résultats).', 'texte', 55, false, 30
from public.courses c where c.slug = 'grh-master1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Recrutement, intégration et formation');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Évaluation de la performance et rémunération', '## Objectifs de la leçon

- Mettre en place un système d''évaluation de la performance juste et utile.
- Comprendre les composantes d''une politique de rémunération.
- Utiliser les outils de base : classification des emplois, grilles, compa-ratio, pilotage de la masse salariale.

## 1. L''évaluation de la performance

L''entretien annuel d''évaluation est le moment où le manager et le collaborateur font le bilan de l''année et fixent les objectifs de la suivante. Il sert à reconnaître les contributions, à identifier les besoins de formation, à préparer les décisions de carrière et de rémunération.

Un bon système d''évaluation repose sur :

- Des objectifs SMART : spécifiques, mesurables, atteignables, réalistes et temporellement définis. Exemple : « porter le portefeuille de crédit de l''agence de 450 à 520 millions de FCFA d''ici décembre, avec un taux de portefeuille à risque inférieur au seuil fixé par la direction ».
- Des critères de comportement (travail en équipe, relation client, respect des procédures) décrits par des exemples observables.
- Une échelle de notation claire et partagée.
- Une formation des évaluateurs pour limiter les biais : effet de halo (une qualité influence tout le jugement), indulgence ou sévérité systématique, tendance centrale (tout le monde « moyen »), effet de récence (seuls les derniers mois comptent).

Dans certaines cultures d''entreprise, la critique directe d''un supérieur à un collaborateur plus âgé peut être délicate ; le manager doit adapter la forme sans renoncer au fond : faits précis, écoute, plan de progrès.

## 2. La rémunération globale

La rémunération globale comprend :

- Le salaire de base, lié à l''emploi et au niveau de qualification (classification de la convention collective et grille interne).
- Les compléments individuels : primes d''ancienneté, de rendement, de responsabilité, primes liées aux conditions de travail.
- La rémunération variable : bonus individuel ou collectif lié aux objectifs.
- Les avantages en nature et sociaux : logement, véhicule, assurance maladie complémentaire, prêts au personnel, transport.
- Les cotisations sociales obligatoires, dont les taux et plafonds sont fixés par la loi et doivent être vérifiés dans les textes en vigueur.

Une politique de rémunération cherche trois équilibres : l''équité interne (des emplois de même valeur sont payés de façon comparable), la compétitivité externe (attirer et retenir par rapport au marché) et la maîtrise des coûts. Elle doit aussi respecter les minima légaux et conventionnels.

## 3. Les outils

- Classification et pesée des postes : on évalue chaque emploi selon des critères (connaissances requises, complexité, responsabilité, autonomie) et on le classe dans une catégorie.
- Grille salariale : pour chaque catégorie, une bande avec un minimum, un point médian et un maximum.
- Enquêtes de rémunération : comparer ses salaires à ceux du marché, en utilisant des sources fiables et des emplois comparables.
- Compa-ratio = salaire du salarié / point médian de sa bande. Un compa-ratio de 1 signifie un positionnement au milieu de la bande ; inférieur à 0,9, le salarié est plutôt bas dans la bande ; supérieur à 1,1, plutôt haut.

## Exemple chiffré

Un analyste crédit est classé dans une bande dont le point médian est de 800 000 FCFA brut mensuel (montants fictifs). Il perçoit 680 000 FCFA. Compa-ratio = 680 000 / 800 000 = 0,85. Si sa performance est bonne, il est prioritaire pour une augmentation : un risque de départ existe s''il est sous-payé par rapport au marché.

Pilotage de la masse salariale : une entreprise a une masse salariale annuelle de 600 millions de FCFA. La direction étudie, à titre d''hypothèse de négociation, une augmentation générale de 3 % au 1er janvier et un budget d''augmentations individuelles de 1,5 % de la masse au 1er juillet. Coût sur l''année : augmentation générale 600 × 3 % = 18 millions ; augmentations individuelles en année pleine 600 × 1,5 % = 9 millions, mais seulement 6 mois cette année, soit 4,5 millions. Hausse de la masse salariale due à ces mesures : 22,5 millions, soit 3,75 %. L''année suivante, les augmentations de juillet pèseront en année pleine : c''est l''effet report. Les charges sociales patronales s''ajoutent à ces montants.

## 4. Rémunération et motivation

La théorie de l''équité (Adams) montre que les salariés comparent le rapport entre leur contribution et leur rétribution à celui de leurs collègues : un sentiment d''injustice démotive plus qu''un salaire modéré mais perçu comme juste. La théorie des deux facteurs (Herzberg) distingue les facteurs d''hygiène (salaire, conditions de travail), dont l''insuffisance crée l''insatisfaction, et les facteurs de motivation (reconnaissance, responsabilité, développement). La transparence des règles et la reconnaissance non financière sont donc essentielles.

## Points clés

- L''évaluation repose sur des objectifs SMART, des critères observables et des évaluateurs formés.
- La rémunération globale combine fixe, variable, avantages et protection sociale.
- Équité interne, compétitivité externe et maîtrise des coûts sont à concilier.
- Compa-ratio et pilotage de la masse salariale (effet report) sont des outils de base.

## Exercices

- Exercice 1 : Transformez l''objectif « améliorer les ventes » en objectif SMART pour un commercial d''une entreprise de matériaux de construction.
- Exercice 2 : Point médian 1 200 000 FCFA ; salaire 1 380 000 FCFA. Calculez et interprétez le compa-ratio.
- Exercice 3 : Masse salariale 400 millions ; hypothèse d''augmentation générale de 2 % au 1er avril. Calculez le coût sur l''année en cours et l''effet report sur l''année suivante.
- Exercice 4 : Citez trois biais d''évaluation et un moyen de les limiter.

## Corrigé

- Exercice 1 : « Augmenter le chiffre d''affaires réalisé auprès des quincailleries de la région de Thiès de 15 % par rapport à l''an dernier, d''ici le 31 décembre, en ouvrant au moins 10 nouveaux points de vente. »
- Exercice 2 : 1 380 000 / 1 200 000 = 1,15 : le salarié est dans le haut de sa bande ; ses augmentations futures devront être modérées sauf évolution de poste.
- Exercice 3 : Coût annuel plein : 400 × 2 % = 8 millions. Cette année, 9 mois : 8 × 9/12 = 6 millions. Effet report sur l''année suivante : 8 − 6 = 2 millions (les 3 mois non payés cette année).
- Exercice 4 : Effet de halo, effet de récence, tendance centrale. Moyens : formation des évaluateurs, prise de notes régulière tout au long de l''année, critères précis avec exemples, double regard (manager et N+2).', 'texte', 55, false, 40
from public.courses c where c.slug = 'grh-master1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Évaluation de la performance et rémunération');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Relations sociales et système d''information RH', '## Objectifs de la leçon

- Comprendre les acteurs et les mécanismes des relations sociales dans l''entreprise.
- Prévenir et gérer les conflits collectifs.
- Concevoir et conduire un projet de système d''information RH (SIRH).

## 1. Les acteurs des relations sociales

Les relations sociales désignent l''ensemble des échanges entre la direction, les salariés et leurs représentants. On y trouve :

- La direction et la fonction RH.
- Les délégués du personnel, élus par les salariés, qui portent les réclamations individuelles et collectives.
- Les organisations syndicales, présentes dans l''entreprise et au niveau des branches et du pays.
- Les instances liées à la santé et à la sécurité au travail.
- L''inspection du travail, qui contrôle et concilie.
- Au niveau national, les organisations patronales et syndicales qui négocient les conventions collectives et participent aux concertations tripartites avec l''État.

Les seuils d''effectif, les modalités d''élection et les attributions précises des représentants sont fixés par la législation. Au Sénégal, la réforme du Code du travail en cours (projet de loi n°15/2026) peut faire évoluer ces règles : il faut se référer aux textes en vigueur à la date considérée.

## 2. Le dialogue social et la négociation

Le dialogue social prend plusieurs formes : information, consultation, concertation, négociation. Une négociation réussie se prépare :

- Diagnostic partagé : données économiques et sociales transmises aux représentants.
- Clarification des objectifs de chaque partie et des marges de manœuvre.
- Calendrier et méthode (nombre de réunions, compte rendu).
- Recherche d''options créatives : par exemple, compenser une augmentation salariale limitée par une amélioration du transport du personnel ou de la couverture santé.
- Formalisation de l''accord et suivi de son application.

La négociation dite « raisonnée » (Fisher et Ury) recommande de se concentrer sur les intérêts plutôt que sur les positions, de séparer les personnes du problème, d''imaginer plusieurs options et d''utiliser des critères objectifs.

## 3. Prévenir et gérer les conflits

Signaux d''alerte : hausse de l''absentéisme et du turnover, multiplication des réclamations, rumeurs, baisse de la qualité. Les causes fréquentes sont les salaires et primes, les conditions de travail, la précarité des contrats, le management jugé injuste, les restructurations mal expliquées.

Méthode de gestion d''un conflit collectif :

- Écouter et objectiver les revendications.
- Ouvrir rapidement un canal de discussion avec les représentants.
- Faire appel, si nécessaire, à la conciliation de l''inspection du travail ou à la médiation prévue par les textes.
- Respecter strictement les procédures légales relatives à la grève et aux sanctions.
- Après le conflit, analyser les causes et mettre en œuvre les engagements pris.

## Exemple : une entreprise de BTP à Diamniadio

Sur un chantier, des ouvriers cessent le travail pour protester contre des retards de paiement des primes de rendement et l''insuffisance des équipements de protection. La direction reçoit les délégués le jour même, reconnaît les retards (dus à un changement de logiciel de paie), fixe une date de régularisation, commande des équipements et organise une réunion sécurité hebdomadaire. Le travail reprend le lendemain. Leçon : un conflit révèle souvent un dysfonctionnement de gestion ; la rapidité et la transparence évitent l''escalade.

## 4. Le système d''information RH (SIRH)

Le SIRH est l''ensemble des outils informatiques qui gèrent les données et les processus RH. Modules courants :

- Administration du personnel : dossiers, contrats, absences, congés.
- Paie et déclarations sociales et fiscales.
- Gestion des temps et des plannings.
- Recrutement (gestion des candidatures).
- Formation, compétences, entretiens annuels.
- Tableaux de bord et reporting.
- Portail libre-service pour salariés et managers (demandes de congé, bulletins de paie).

Bénéfices : fiabilité des données, gain de temps, traçabilité, pilotage par indicateurs. Risques : coût, résistance des utilisateurs, mauvaise qualité des données importées, dépendance à un éditeur, sécurité.

## 5. Conduire un projet SIRH

- Expression des besoins : processus actuels, irritants, priorités.
- Choix de la solution : logiciel local, solution internationale, solution en ligne ; vérifier l''adaptation à la législation sociale et fiscale nationale et la capacité à suivre les réformes (par exemple la mise à jour des paramètres de paie après l''adoption de nouveaux textes).
- Paramétrage, reprise des données, tests (une paie parallèle sur deux ou trois mois est prudente).
- Formation des utilisateurs et accompagnement du changement.
- Suivi après démarrage.

Protection des données : les données RH sont personnelles et parfois sensibles (santé, sanctions). Il faut respecter la législation sur la protection des données personnelles et les obligations envers l''autorité de contrôle compétente (au Sénégal, la Commission de protection des données personnelles), limiter les accès selon les rôles et sécuriser les sauvegardes.

## Points clés

- Les relations sociales impliquent direction, représentants élus, syndicats et inspection du travail.
- La négociation raisonnée se concentre sur les intérêts et les critères objectifs.
- Un conflit se traite vite, dans le respect des procédures, et s''analyse ensuite.
- Un projet SIRH réussi repose sur les besoins, la qualité des données, la conformité et l''accompagnement.

## Exercices

- Exercice 1 : Citez quatre signaux d''alerte d''un climat social dégradé.
- Exercice 2 : Expliquez la différence entre une position et un intérêt avec un exemple de négociation salariale.
- Exercice 3 : Une PME traite 600 bulletins de paie par an en 30 minutes chacun ; un logiciel réduirait ce temps à 8 minutes. Calculez le gain annuel en heures.
- Exercice 4 : Quelles précautions prendre lors de la reprise des données dans un nouveau SIRH ?

## Corrigé

- Exercice 1 : Hausse de l''absentéisme, hausse du turnover, multiplication des réclamations, rumeurs et tensions, baisse de la qualité ou de la productivité.
- Exercice 2 : Position : « nous voulons 10 % d''augmentation ». Intérêt : faire face à la hausse du coût du transport et du logement. Connaître l''intérêt ouvre d''autres options (prime de transport, navette d''entreprise).
- Exercice 3 : Avant : 600 × 30 = 18 000 minutes = 300 heures. Après : 600 × 8 = 4 800 minutes = 80 heures. Gain : 220 heures.
- Exercice 4 : Nettoyer les données (doublons, erreurs), contrôler un échantillon, faire valider par les responsables, réaliser une paie parallèle, sécuriser les accès et conserver une sauvegarde des données d''origine.', 'texte', 55, false, 50
from public.courses c where c.slug = 'grh-master1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Relations sociales et système d''information RH');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : construire la réponse RH à une stratégie d''entreprise', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Master 1 en GRH, management, administration publique ; cadres en reprise d''études.
- Objectifs : relier les outils de la GRH (GPEC, recrutement, formation, évaluation, rémunération, relations sociales, SIRH) dans un cas intégré en contexte africain.
- Matériel : diaporama, études de cas imprimées, tableur pour les calculs.
- Prérequis : leçons écrites 1 à 5.

## Déroulé minuté

## 00:00 – 05:00 · Introduction et cas intégrateur

Bonjour à toutes et à tous. Nous allons travailler aujourd''hui sur un cas unique : « Agro Sahel », une entreprise fictive de transformation de produits céréaliers installée près de Kaolack, 220 salariés permanents et des saisonniers. La direction vient d''adopter un plan stratégique : doubler la production en quatre ans, lancer une gamme de farines enrichies et digitaliser la distribution. Vous êtes la nouvelle équipe RH. Votre mission : construire la réponse RH à cette stratégie.

Visuel : fiche d''identité d''Agro Sahel et les trois axes stratégiques.

## 05:00 – 15:00 · Le diagnostic RH de départ

Commençons par les indicateurs. Effectif au 1er janvier : 210 ; au 31 décembre : 230 ; départs : 22. Effectif moyen : 220. Turnover : 22 divisé par 220, soit 10 %. Mais regardez la répartition : 9 départs sur 14 techniciens de maintenance. Le turnover y est de plus de 60 % : c''est un signal rouge.

La pyramide des âges montre par ailleurs que 35 % des agents de maîtrise ont plus de 55 ans. Question à la classe : quel est le risque principal ? Réponse attendue : une perte de savoir-faire à court terme sur l''encadrement de production.

J''insiste sur le contexte : Agro Sahel recrute dans une zone où beaucoup de jeunes travaillent dans l''informel ; les attentes communautaires sont fortes ; et le cadre juridique est en transition au Sénégal avec le projet de nouveau Code du travail. Toute décision sur les contrats doit donc s''appuyer sur les textes en vigueur, vérifiés.

Autre constat du diagnostic : l''absentéisme est de 4,5 % en moyenne, mais il monte fortement pendant la saison des pluies chez les salariés qui viennent des villages environnants, faute de transport fiable. Question à la classe : est-ce un problème de discipline ou d''organisation ? Réponse attendue : avant de sanctionner, il faut comprendre ; un service de navette ou des horaires adaptés peuvent régler une partie du problème à moindre coût. Enfin, la fonction RH d''Agro Sahel se résume aujourd''hui à deux personnes qui gèrent la paie sur tableur et les dossiers papier : elle est purement administrative. Le premier chantier est donc de la repositionner comme partenaire stratégique de la direction, au sens d''Ulrich.

## 15:00 – 28:00 · La GPEC d''Agro Sahel

Appliquons la démarche en quatre étapes. Existant : 14 techniciens de maintenance, dont 2 seulement maîtrisent les automates. Besoins à quatre ans, avec la nouvelle ligne : 24 techniciens, dont 12 formés aux automates. Projection sans action : même en supposant que le turnover retombe à 3 départs par an, il resterait 14 − 12 = 2 techniciens si aucun n''était remplacé. Écart quantitatif : 22.

Je vous laisse deux minutes pour proposer un plan d''action. Réponses possibles : réduire d''abord le turnover, car recruter dans un tonneau percé ne sert à rien ; créer un partenariat avec un centre de formation professionnelle pour des apprentis ; former 10 techniciens aux automates ; mettre en place un tutorat avec les anciens.

Visuel : tableau besoins, ressources, écarts, actions.

Pour les agents de maîtrise proches de la retraite, la priorité est la transmission : identifier les savoirs critiques (réglages des machines, relations avec les fournisseurs de céréales), organiser des binômes avec des successeurs désignés et documenter les procédures. Question : comment repérer les successeurs ? Réponse : par les entretiens annuels, l''évaluation des compétences et une discussion en comité de direction, avec des critères transparents.

## 28:00 – 40:00 · Recruter et intégrer

Agro Sahel doit recruter un responsable maintenance. Je présente la fiche de poste et le profil. Discutons du sourcing : réseau des écoles d''ingénieurs, annonces en ligne, cabinet spécialisé, et pourquoi pas une promotion interne.

Puis l''évaluation : je vous propose trois questions d''entretien comportemental. « Décrivez une panne majeure que vous avez gérée : quelle était la situation, qu''avez-vous fait, quel a été le résultat ? » ; « Racontez comment vous avez formé un technicien débutant » ; « Donnez un exemple de conflit avec la production et sa résolution ».

Point d''éthique : le directeur général reçoit la candidature d''un neveu d''un partenaire important. Que faites-vous ? Réponse : la candidature suit le même processus, avec la même grille et le même jury ; la décision est motivée par les compétences.

Enfin, l''intégration : préparation du poste, tuteur, points d''étape à un mois et à trois mois.

## 40:00 – 48:00 · Pause interactive et quiz

Pause active. Répondez rapidement.

- Question 1 : 15 départs pour un effectif moyen de 150. Turnover ? Réponse : 10 %.
- Question 2 : Une formation coûte 2 millions de FCFA et génère 5 millions de gains estimés. ROI ? Réponse : (5 − 2)/2 = 150 %.
- Question 3 : Quel niveau de Kirkpatrick mesure l''application sur le poste ? Réponse : le niveau 3, comportement.

## 48:00 – 58:00 · Former et développer

Le plan de formation d''Agro Sahel découle de la GPEC : automates, hygiène et sécurité alimentaire pour la gamme enrichie, vente digitale pour les commerciaux. Je montre le cycle de l''ingénierie de formation : besoins, conception, réalisation, évaluation.

Pour la formation aux automates, on fixe des objectifs mesurables : « à l''issue de la formation, le technicien diagnostique une panne d''automate en moins de 30 minutes ». Évaluation à quatre niveaux, et calcul de ROI à partir de la réduction des heures d''arrêt de ligne. Rappel de prudence : isoler l''effet de la formation est difficile.

## 58:00 – 1:10:00 · Évaluer et rémunérer

Les techniciens partent : pourquoi ? L''enquête de rémunération montre que les sociétés minières paient nettement plus. Calculons le compa-ratio d''un technicien payé 450 000 FCFA quand le point médian de sa bande est 500 000 (montants fictifs) : 0,9. Il est en bas de bande.

Proposition : une hypothèse d''augmentation ciblée de 8 % pour les techniciens au 1er juillet. Masse salariale des techniciens : 90 millions par an. Coût annuel plein : 7,2 millions ; coût cette année pour six mois : 3,6 millions ; effet report l''année suivante : 3,6 millions. À comparer au coût d''une journée d''arrêt de ligne.

Ajoutons des leviers non financiers, en vous appuyant sur Herzberg : parcours de carrière vers chef d''équipe, reconnaissance, formation certifiante. Et l''évaluation annuelle sur objectifs SMART, par exemple : « réduire de 20 % les heures d''arrêt non planifiées d''ici décembre ».

Question à la classe : quel risque crée une augmentation ciblée sur un seul métier ? Réponse : un sentiment d''iniquité chez les autres catégories ; il faut l''expliquer par des données de marché et des critères transparents.

## 1:10:00 – 1:20:00 · Relations sociales et SIRH

L''annonce de l''augmentation ciblée crée des tensions chez les opérateurs de production. Les délégués du personnel demandent une réunion. Je vous propose un jeu de rôle rapide : un étudiant joue le DRH, un autre le délégué. Consigne : appliquer la négociation raisonnée, en cherchant les intérêts derrière les positions. Les opérateurs veulent surtout une prime de production plus lisible et un meilleur transport. Une option : une prime collective liée à la production, avec des critères objectifs.

Puis le SIRH : Agro Sahel gère encore la paie sur tableur. Les retards de paiement des primes ont déjà provoqué un arrêt de travail. Un projet SIRH s''impose : expression des besoins, choix d''une solution capable de suivre l''évolution de la législation, reprise des données, paie parallèle, formation. Sans oublier la protection des données personnelles et les obligations envers l''autorité de contrôle.

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Ce que montre le cas : la GRH n''est pas une suite d''outils isolés. Le diagnostic alimente la GPEC, qui oriente recrutement et formation ; la rémunération et l''évaluation fidélisent ; les relations sociales et le SIRH sécurisent l''ensemble. Et tout cela s''inscrit dans un cadre juridique à vérifier en permanence.

Évaluation finale, cinq questions :

- Question 1 : Citez les quatre étapes de la GPEC. Réponse : analyse de l''existant, besoins futurs, projection et écarts, plans d''action.
- Question 2 : Effectif 60, départs à la retraite 5 en trois ans, turnover 3 par an, besoin 70. Écart ? Réponse : 60 − 5 − 9 = 46 ; écart 24.
- Question 3 : Salaire 900 000, point médian 750 000. Compa-ratio ? Réponse : 1,2, haut de bande.
- Question 4 : Différence entre position et intérêt ? Réponse : la position est la demande affichée ; l''intérêt est le besoin qui la motive.
- Question 5 : Deux précautions d''un projet SIRH ? Réponse : paie parallèle avant bascule et protection des données personnelles (accès par rôles, sauvegardes).

Merci pour votre participation. Pour la prochaine séance, rédigez une note de deux pages au directeur général d''Agro Sahel présentant votre plan RH sur quatre ans.', 'video', 90, false, 60
from public.courses c where c.slug = 'grh-master1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : construire la réponse RH à une stratégie d''entreprise');

-- Cours : Mathématiques Terminale : analyse, suites et probabilités pour le Bac
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'maths-terminale', (select id from public.levels where name = 'Terminale'), null, 'Mathématiques', 'Mathématiques Terminale : analyse, suites et probabilités pour le Bac', 'Ce cours couvre les chapitres essentiels du programme de Terminale scientifique : limites et continuité, dérivation, fonctions exponentielle et logarithme, suites numériques, probabilités. Il prépare au Bac avec des méthodes de rédaction et un sujet type commenté. Prérequis : programme de Première (dérivation, second degré, suites, probabilités de base).', true, 50
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Limites et continuité', '## Objectifs de la leçon

- Calculer des limites de fonctions aux bornes de leur ensemble de définition.
- Lever les formes indéterminées classiques et interpréter graphiquement une limite (asymptotes).
- Utiliser la continuité et le théorème des valeurs intermédiaires.

## Limites : rappels et opérations

Dire que f(x) tend vers L quand x tend vers +∞ signifie que f(x) devient aussi proche de L que l''on veut pour x assez grand. On note lim f(x) = L (x → +∞).

Limites de référence :
- x², x³, √x tendent vers +∞ quand x → +∞ ;
- 1/x, 1/x², 1/√x tendent vers 0 quand x → +∞ ;
- 1/x tend vers +∞ quand x → 0⁺ et vers −∞ quand x → 0⁻.

Les règles d''opération (somme, produit, quotient) permettent de conclure dans la plupart des cas. Il reste quatre formes indéterminées : « ∞ − ∞ », « 0 × ∞ », « ∞/∞ » et « 0/0 ». Dans ces cas, il faut transformer l''écriture.

## Lever une indétermination

Polynômes et fractions rationnelles en l''infini : on factorise par le terme de plus haut degré.
- lim (2x³ − 5x + 1) quand x → +∞ : 2x³(1 − 5/(2x²) + 1/(2x³)) → +∞. Un polynôme a la même limite en l''infini que son terme de plus haut degré.
- lim (3x² + 1)/(x² − 4) quand x → +∞ = lim 3x²/x² = 3.

Expressions avec racines carrées : on multiplie par la quantité conjuguée.
- √(x + 1) − √x = [(x + 1) − x] / [√(x + 1) + √x] = 1 / [√(x + 1) + √x], qui tend vers 0 quand x → +∞.

Forme « 0/0 » en un point : on factorise. lim (x² − 9)/(x − 3) quand x → 3 = lim (x + 3) = 6.

## Théorèmes de comparaison

- Si f(x) ≥ g(x) pour x assez grand et lim g = +∞, alors lim f = +∞.
- Théorème des gendarmes : si g(x) ≤ f(x) ≤ h(x) et si g et h ont la même limite L, alors lim f = L.

Exemple : pour x > 0, −1/x ≤ sin(x)/x ≤ 1/x ; les deux encadrements tendent vers 0, donc sin(x)/x tend vers 0 quand x → +∞.

## Asymptotes

- Si lim f(x) = L quand x → ±∞, la droite y = L est asymptote horizontale à la courbe.
- Si lim f(x) = ±∞ quand x → a, la droite x = a est asymptote verticale.
- Si lim [f(x) − (ax + b)] = 0 quand x → ±∞, la droite y = ax + b est asymptote oblique.

Exemple : f(x) = (3x² + 1)/(x² − 4). Quand x → 2⁺, le numérateur tend vers 13 et le dénominateur vers 0 par valeurs positives : f(x) → +∞. La droite x = 2 est asymptote verticale, et y = 3 est asymptote horizontale.

## Continuité

Une fonction est continue sur un intervalle si l''on peut tracer sa courbe « sans lever le crayon ». Les fonctions polynômes, rationnelles (sur leur ensemble de définition), racine carrée, exponentielle et logarithme sont continues sur les intervalles où elles sont définies.

## Théorème des valeurs intermédiaires (TVI)

Si f est continue sur [a ; b], alors pour tout réel k compris entre f(a) et f(b), l''équation f(x) = k admet au moins une solution dans [a ; b].

Corollaire (théorème de la bijection) : si f est continue et strictement monotone sur [a ; b], et si k est compris entre f(a) et f(b), alors l''équation f(x) = k admet une unique solution dans [a ; b].

Méthode de rédaction au Bac : citer la continuité, la stricte monotonie, calculer les images aux bornes, constater que k est entre elles, conclure. Puis encadrer la solution par balayage à la calculatrice.

## Points clés

- Quatre formes indéterminées : ∞ − ∞, 0 × ∞, ∞/∞, 0/0.
- En l''infini, un polynôme se comporte comme son terme de plus haut degré.
- Limite finie en l''infini → asymptote horizontale ; limite infinie en a → asymptote verticale.
- Continuité + stricte monotonie → solution unique (corollaire du TVI).

## Exercices

Exercice 1 : Calculer lim (2x³ − 5x + 1) quand x → +∞, puis quand x → −∞.

Exercice 2 : Soit f(x) = (3x² + 1)/(x² − 4). Calculer la limite de f en +∞ et interpréter graphiquement.

Exercice 3 : Pour la même fonction, calculer la limite de f quand x → 2⁺ et interpréter.

Exercice 4 : Calculer lim (√(x + 1) − √x) quand x → +∞.

Exercice 5 : Soit f(x) = x³ + x − 1. Montrer que l''équation f(x) = 0 admet une unique solution α dans [0 ; 1], puis donner un encadrement de α d''amplitude 0,1.

## Corrigé

Exercice 1 : La limite est celle du terme de plus haut degré 2x³ : +∞ quand x → +∞ et −∞ quand x → −∞.

Exercice 2 : En +∞, f(x) a la même limite que 3x²/x² = 3. La droite d''équation y = 3 est asymptote horizontale à la courbe en +∞.

Exercice 3 : Le numérateur tend vers 3 × 4 + 1 = 13. Pour x > 2, x² − 4 > 0 et tend vers 0. Donc f(x) → +∞. La droite d''équation x = 2 est asymptote verticale.

Exercice 4 : Forme « ∞ − ∞ ». Avec la quantité conjuguée : √(x + 1) − √x = 1/(√(x + 1) + √x). Le dénominateur tend vers +∞, donc la limite est 0.

Exercice 5 : f est continue sur [0 ; 1] (polynôme). f''(x) = 3x² + 1 > 0, donc f est strictement croissante. f(0) = −1 < 0 et f(1) = 1 > 0. D''après le corollaire du TVI, l''équation f(x) = 0 admet une unique solution α dans [0 ; 1]. f(0,6) = 0,216 + 0,6 − 1 = −0,184 < 0 et f(0,7) = 0,343 + 0,7 − 1 = 0,043 > 0, donc 0,6 < α < 0,7.', 'texte', 55, true, 10
from public.courses c where c.slug = 'maths-terminale'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Limites et continuité');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Dérivation et étude de fonctions', '## Objectifs de la leçon

- Calculer des dérivées à l''aide des formules usuelles.
- Déterminer l''équation d''une tangente.
- Étudier les variations d''une fonction et ses extremums.
- Résoudre un problème d''optimisation.

## Nombre dérivé et tangente

Le nombre dérivé de f en a est f''(a) = lim [f(a + h) − f(a)] / h quand h → 0, lorsque cette limite existe et est finie. Géométriquement, c''est le coefficient directeur de la tangente à la courbe au point d''abscisse a.

Équation de la tangente au point d''abscisse a : y = f''(a)(x − a) + f(a).

## Formules de dérivation

Fonctions usuelles :
- (k)'' = 0 ; (x)'' = 1 ; (xⁿ)'' = n xⁿ⁻¹ ;
- (1/x)'' = −1/x² ; (√x)'' = 1/(2√x) pour x > 0 ;
- (eˣ)'' = eˣ ; (ln x)'' = 1/x pour x > 0.

Opérations (u et v dérivables) :
- (u + v)'' = u'' + v'' ; (ku)'' = k u'' ;
- (uv)'' = u''v + uv'' ;
- (u/v)'' = (u''v − uv'')/v² ;
- (uⁿ)'' = n u'' uⁿ⁻¹ ;
- (√u)'' = u''/(2√u) ;
- (eᵘ)'' = u'' eᵘ ; (ln u)'' = u''/u.

Exemple : f(x) = (2x + 1)/(x − 3). u = 2x + 1, u'' = 2 ; v = x − 3, v'' = 1. f''(x) = [2(x − 3) − (2x + 1)]/(x − 3)² = −7/(x − 3)².

## Dérivée et sens de variation

Sur un intervalle I :
- si f''(x) > 0 (sauf en des points isolés), f est strictement croissante ;
- si f''(x) < 0, f est strictement décroissante ;
- si f'' s''annule en changeant de signe en a, f admet un extremum local en a.

Méthode :
- déterminer l''ensemble de définition ;
- calculer f''(x) et la factoriser ;
- étudier le signe de f''(x) (tableau de signes) ;
- dresser le tableau de variations avec les limites et les extremums.

## Exemple complet

f(x) = x³ − 3x + 1 sur ℝ. f''(x) = 3x² − 3 = 3(x − 1)(x + 1). f''(x) > 0 pour x < −1 et x > 1 ; f''(x) < 0 pour −1 < x < 1.
- f est croissante sur ]−∞ ; −1], décroissante sur [−1 ; 1], croissante sur [1 ; +∞[.
- Maximum local : f(−1) = −1 + 3 + 1 = 3. Minimum local : f(1) = 1 − 3 + 1 = −1.
- Tangente en 0 : f(0) = 1, f''(0) = −3, donc y = −3x + 1.

## Application économique

Une coopérative de transformation de fruits à Ziguinchor estime son bénéfice mensuel, en milliers de FCFA, par B(q) = −2q² + 120q − 1 000, où q est le nombre de tonnes produites (0 ≤ q ≤ 50). B''(q) = −4q + 120, qui s''annule pour q = 30, est positif avant et négatif après. Le bénéfice est maximal pour 30 tonnes : B(30) = −1 800 + 3 600 − 1 000 = 800, soit 800 000 FCFA.

## Points clés

- Tangente : y = f''(a)(x − a) + f(a).
- Retenir (uv)'', (u/v)'', (uⁿ)'', (eᵘ)'', (ln u)''.
- Signe de f'' → variations de f → extremums.
- Toujours factoriser f''(x) avant d''étudier son signe.

## Exercices

Exercice 1 : Calculer les dérivées : a) f(x) = 4x³ − 2x² + 7 ; b) g(x) = (2x + 1)/(x − 3) ; c) h(x) = (3x − 1)⁴ ; d) k(x) = √(x² + 1).

Exercice 2 : Déterminer l''équation de la tangente à la courbe de f(x) = x² au point d''abscisse 3.

Exercice 3 : Étudier les variations de f(x) = x³ − 6x² + 9x + 2 sur ℝ et préciser ses extremums locaux.

Exercice 4 : Un artisan bijoutier estime son bénéfice hebdomadaire, en milliers de FCFA, par B(x) = −x² + 40x − 300, pour x objets fabriqués (0 ≤ x ≤ 40). Combien d''objets doit-il fabriquer pour un bénéfice maximal ? Quel est ce bénéfice ?

Exercice 5 : Calculer la dérivée de f(x) = (x² + 1)(x − 2) avec la formule du produit, puis vérifier en développant.

## Corrigé

Exercice 1 : a) f''(x) = 12x² − 4x. b) g''(x) = −7/(x − 3)² (voir l''exemple de la leçon). c) h''(x) = 4 × 3 × (3x − 1)³ = 12(3x − 1)³. d) k''(x) = 2x/(2√(x² + 1)) = x/√(x² + 1).

Exercice 2 : f(3) = 9, f''(x) = 2x donc f''(3) = 6. Tangente : y = 6(x − 3) + 9 = 6x − 9.

Exercice 3 : f''(x) = 3x² − 12x + 9 = 3(x² − 4x + 3) = 3(x − 1)(x − 3). f est croissante sur ]−∞ ; 1], décroissante sur [1 ; 3], croissante sur [3 ; +∞[. Maximum local f(1) = 1 − 6 + 9 + 2 = 6 ; minimum local f(3) = 27 − 54 + 27 + 2 = 2.

Exercice 4 : B''(x) = −2x + 40, nul pour x = 20, positif avant et négatif après. Bénéfice maximal pour 20 objets : B(20) = −400 + 800 − 300 = 100, soit 100 000 FCFA.

Exercice 5 : f''(x) = 2x(x − 2) + (x² + 1) × 1 = 2x² − 4x + x² + 1 = 3x² − 4x + 1. Vérification : f(x) = x³ − 2x² + x − 2, donc f''(x) = 3x² − 4x + 1.', 'texte', 55, false, 20
from public.courses c where c.slug = 'maths-terminale'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Dérivation et étude de fonctions');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Fonctions exponentielle et logarithme népérien', '## Objectifs de la leçon

- Connaître les propriétés algébriques et analytiques de l''exponentielle et du logarithme népérien.
- Résoudre des équations et inéquations avec exp et ln.
- Utiliser les croissances comparées pour calculer des limites.
- Modéliser une évolution (épargne, population).

## La fonction exponentielle

La fonction exponentielle est l''unique fonction f dérivable sur ℝ telle que f'' = f et f(0) = 1. On la note exp(x) = eˣ, avec e ≈ 2,718.

Propriétés algébriques :
- e⁰ = 1 ; eᵃ⁺ᵇ = eᵃ × eᵇ ; e⁻ᵃ = 1/eᵃ ; eᵃ⁻ᵇ = eᵃ/eᵇ ; (eᵃ)ⁿ = eⁿᵃ.

Propriétés analytiques :
- pour tout x, eˣ > 0 ; la fonction est strictement croissante sur ℝ ;
- lim eˣ = +∞ quand x → +∞ ; lim eˣ = 0 quand x → −∞ (asymptote y = 0) ;
- eᵃ = eᵇ ⇔ a = b ; eᵃ < eᵇ ⇔ a < b.

## La fonction logarithme népérien

La fonction ln est définie sur ]0 ; +∞[ : pour x > 0, ln x est l''unique réel y tel que eʸ = x. Ainsi e^(ln x) = x pour x > 0, et ln(eˣ) = x pour tout réel x.

Propriétés algébriques (a > 0, b > 0) :
- ln 1 = 0 ; ln e = 1 ;
- ln(ab) = ln a + ln b ; ln(a/b) = ln a − ln b ; ln(1/a) = −ln a ; ln(aⁿ) = n ln a ; ln √a = (1/2) ln a.

Propriétés analytiques :
- ln est strictement croissante sur ]0 ; +∞[, (ln x)'' = 1/x ;
- ln x < 0 sur ]0 ; 1[, ln x > 0 sur ]1 ; +∞[ ;
- lim ln x = +∞ quand x → +∞ ; lim ln x = −∞ quand x → 0⁺ (asymptote x = 0).

## Croissances comparées

- eˣ/x → +∞ et plus généralement eˣ/xⁿ → +∞ quand x → +∞ ;
- x eˣ → 0 quand x → −∞ ;
- (ln x)/x → 0 quand x → +∞ ;
- x ln x → 0 quand x → 0⁺.

À retenir : en l''infini, l''exponentielle l''emporte sur les puissances de x, qui l''emportent sur le logarithme.

## Résoudre des équations et inéquations

Méthode : déterminer d''abord le domaine de validité (ce qui est dans un ln doit être strictement positif), puis appliquer exp ou ln aux deux membres.

- e^(2x − 1) = 3 ⇔ 2x − 1 = ln 3 ⇔ x = (1 + ln 3)/2.
- ln(2x − 1) ≤ 0 : domaine 2x − 1 > 0, soit x > 1/2. ln(2x − 1) ≤ ln 1 ⇔ 2x − 1 ≤ 1 ⇔ x ≤ 1. Solutions : ]1/2 ; 1].
- Équation du second degré déguisée : e²ˣ − 3eˣ + 2 = 0. On pose X = eˣ > 0 : X² − 3X + 2 = 0, donc X = 1 ou X = 2, d''où x = 0 ou x = ln 2.

## Modélisation : doublement d''une épargne

Une commerçante place 1 000 000 FCFA sur un compte rémunéré à 5 % par an, intérêts composés (taux fictif pour l''exemple ; les taux réels dépendent des banques et des produits). Après n années, le capital vaut 1 000 000 × 1,05ⁿ. Il a doublé lorsque 1,05ⁿ ≥ 2, soit n ln 1,05 ≥ ln 2 (ln est croissante), donc n ≥ ln 2 / ln 1,05 ≈ 14,2. Le capital double au bout de 15 ans.

## Points clés

- eˣ > 0, (eᵘ)'' = u''eᵘ ; ln défini sur ]0 ; +∞[, (ln u)'' = u''/u.
- ln transforme les produits en sommes.
- Toujours chercher le domaine avant de résoudre une équation avec ln.
- Croissances comparées : exp > puissances > ln.

## Exercices

Exercice 1 : Simplifier : a) ln 8 − ln 2 ; b) e^(ln 5) ; c) ln(e³) ; d) e^(2 ln 3).

Exercice 2 : Résoudre dans ℝ : e²ˣ − 3eˣ + 2 = 0.

Exercice 3 : Résoudre : ln(x + 2) = ln(3x − 4).

Exercice 4 : Calculer les dérivées : a) f(x) = x eˣ ; b) g(x) = ln(x² + 1) ; c) h(x) = (ln x)/x.

Exercice 5 : Soit f(x) = x − ln x sur ]0 ; +∞[. Étudier ses variations et en déduire que x > ln x pour tout x > 0.

## Corrigé

Exercice 1 : a) ln(8/2) = ln 4 = 2 ln 2. b) 5. c) 3. d) e^(ln 9) = 9.

Exercice 2 : Avec X = eˣ : X² − 3X + 2 = 0, discriminant 9 − 8 = 1, X = 1 ou X = 2. eˣ = 1 donne x = 0 ; eˣ = 2 donne x = ln 2. Solutions : {0 ; ln 2}.

Exercice 3 : Domaine : x + 2 > 0 et 3x − 4 > 0, donc x > 4/3. ln étant strictement croissante, x + 2 = 3x − 4, soit x = 3, qui appartient au domaine. Solution : x = 3.

Exercice 4 : a) f''(x) = eˣ + x eˣ = (x + 1)eˣ. b) g''(x) = 2x/(x² + 1). c) h''(x) = [(1/x) × x − ln x × 1]/x² = (1 − ln x)/x².

Exercice 5 : f''(x) = 1 − 1/x = (x − 1)/x. Sur ]0 ; +∞[, x > 0, donc f''(x) a le signe de x − 1 : f est décroissante sur ]0 ; 1] et croissante sur [1 ; +∞[. Son minimum est f(1) = 1 − 0 = 1 > 0. Donc pour tout x > 0, f(x) ≥ 1 > 0, c''est-à-dire x > ln x.', 'texte', 60, false, 30
from public.courses c where c.slug = 'maths-terminale'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Fonctions exponentielle et logarithme népérien');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Les suites numériques', '## Objectifs de la leçon

- Reconnaître et utiliser les suites arithmétiques et géométriques.
- Étudier le sens de variation et la convergence d''une suite.
- Raisonner par récurrence.
- Étudier une suite du type u(n+1) = a u(n) + b à l''aide d''une suite auxiliaire.

## Généralités

Une suite (uₙ) associe à chaque entier naturel n un réel uₙ. Elle peut être définie de façon explicite (uₙ = 2n + 1) ou par récurrence (u₀ = 3 et uₙ₊₁ = 2uₙ − 1).

Sens de variation : on étudie le signe de uₙ₊₁ − uₙ. Si cette différence est positive pour tout n, la suite est croissante ; si elle est négative, décroissante.

## Suites arithmétiques

(uₙ) est arithmétique de raison r si uₙ₊₁ = uₙ + r pour tout n.
- Terme général : uₙ = u₀ + n r = u_p + (n − p) r.
- Somme de termes consécutifs : S = (nombre de termes) × (premier terme + dernier terme)/2.
- Cas particulier : 1 + 2 + … + n = n(n + 1)/2.

## Suites géométriques

(vₙ) est géométrique de raison q si vₙ₊₁ = q vₙ pour tout n.
- Terme général : vₙ = v₀ × qⁿ.
- Somme : v₀ + v₁ + … + vₙ = v₀ × (1 − qⁿ⁺¹)/(1 − q) pour q ≠ 1.
- Limite de qⁿ : si −1 < q < 1, qⁿ → 0 ; si q > 1, qⁿ → +∞ ; si q ≤ −1, pas de limite.

Exemple : un salaire de 150 000 FCFA augmente de 3 % par an (taux fictif pour l''exemple). Après n années : Sₙ = 150 000 × 1,03ⁿ. Après 10 ans : 150 000 × 1,03¹⁰ ≈ 201 587 FCFA.

## Le raisonnement par récurrence

Pour démontrer qu''une propriété P(n) est vraie pour tout n ≥ n₀ :
- Initialisation : on vérifie P(n₀).
- Hérédité : on suppose P(n) vraie pour un n quelconque (hypothèse de récurrence) et on démontre P(n + 1).
- Conclusion : P(n) est vraie pour tout n ≥ n₀.

## Convergence

Une suite converge si elle admet une limite finie. Théorèmes utiles :
- toute suite croissante et majorée converge ; toute suite décroissante et minorée converge ;
- si uₙ₊₁ = f(uₙ), avec f continue, et si (uₙ) converge vers L, alors L = f(L).

## La suite arithmético-géométrique

Situation : une coopérative de femmes transformatrices de céréales à Kaolack compte 1 000 membres. Chaque année, 20 % des membres quittent la coopérative et 400 nouveaux membres adhèrent. On note uₙ le nombre de membres après n années : u₀ = 1 000 et uₙ₊₁ = 0,8 uₙ + 400.

Méthode :
- Chercher le point fixe : L = 0,8L + 400, donc 0,2L = 400 et L = 2 000.
- Poser vₙ = uₙ − 2 000. Alors vₙ₊₁ = uₙ₊₁ − 2 000 = 0,8uₙ − 1 600 = 0,8(uₙ − 2 000) = 0,8 vₙ. La suite (vₙ) est géométrique de raison 0,8 et de premier terme v₀ = −1 000.
- Donc vₙ = −1 000 × 0,8ⁿ et uₙ = 2 000 − 1 000 × 0,8ⁿ.
- Comme 0 < 0,8 < 1, 0,8ⁿ → 0, donc uₙ → 2 000. À long terme, la coopérative se stabilise autour de 2 000 membres.

## Points clés

- Arithmétique : uₙ = u₀ + nr ; géométrique : vₙ = v₀qⁿ.
- Récurrence : initialisation, hérédité, conclusion.
- Monotone et bornée ⇒ convergente.
- uₙ₊₁ = a uₙ + b : point fixe puis suite auxiliaire géométrique.

## Exercices

Exercice 1 : (uₙ) est arithmétique, u₀ = 5 et r = 3. Calculer u₁₀ et la somme u₀ + u₁ + … + u₁₀.

Exercice 2 : (vₙ) est géométrique, v₀ = 2 et q = 3. Calculer v₅ et la somme v₀ + … + v₅.

Exercice 3 : On reprend l''exemple de la coopérative. Calculer u₁, u₂, u₃ avec la relation de récurrence, puis vérifier u₃ avec la formule explicite.

Exercice 4 : Soit u₀ = 0 et uₙ₊₁ = (uₙ + 4)/2. a) Démontrer par récurrence que uₙ ≤ 4 pour tout n. b) Montrer que (uₙ) est croissante. c) En déduire qu''elle converge et déterminer sa limite.

Exercice 5 : Déterminer la limite de wₙ = 3 × 0,5ⁿ + 7, puis celle de tₙ = 2 × 1,2ⁿ.

## Corrigé

Exercice 1 : u₁₀ = 5 + 10 × 3 = 35. La somme comporte 11 termes : S = 11 × (5 + 35)/2 = 11 × 20 = 220.

Exercice 2 : v₅ = 2 × 3⁵ = 2 × 243 = 486. Somme : 2 × (1 − 3⁶)/(1 − 3) = 2 × (−728)/(−2) = 728. Vérification : 2 + 6 + 18 + 54 + 162 + 486 = 728.

Exercice 3 : u₁ = 0,8 × 1 000 + 400 = 1 200 ; u₂ = 0,8 × 1 200 + 400 = 1 360 ; u₃ = 0,8 × 1 360 + 400 = 1 488. Formule : 2 000 − 1 000 × 0,8³ = 2 000 − 512 = 1 488.

Exercice 4 : a) Initialisation : u₀ = 0 ≤ 4. Hérédité : si uₙ ≤ 4, alors uₙ + 4 ≤ 8 et uₙ₊₁ = (uₙ + 4)/2 ≤ 4. Conclusion : uₙ ≤ 4 pour tout n. b) uₙ₊₁ − uₙ = (uₙ + 4)/2 − uₙ = (4 − uₙ)/2 ≥ 0 d''après a), donc la suite est croissante. c) Croissante et majorée par 4, elle converge vers L qui vérifie L = (L + 4)/2, soit 2L = L + 4, donc L = 4.

Exercice 5 : 0 < 0,5 < 1 donc 0,5ⁿ → 0 et wₙ → 7. 1,2 > 1 donc 1,2ⁿ → +∞ et tₙ → +∞.', 'texte', 55, false, 40
from public.courses c where c.slug = 'maths-terminale'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Les suites numériques');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Probabilités conditionnelles et loi binomiale', '## Objectifs de la leçon

- Calculer des probabilités, y compris conditionnelles, à l''aide d''un arbre.
- Utiliser la formule des probabilités totales et reconnaître l''indépendance.
- Déterminer la loi d''une variable aléatoire, son espérance et sa variance.
- Utiliser la loi binomiale.

## Vocabulaire

Une expérience aléatoire a plusieurs issues possibles ; l''ensemble des issues est l''univers Ω. Un événement est une partie de Ω. En situation d''équiprobabilité, P(A) = nombre d''issues favorables / nombre total d''issues.

- P(Ā) = 1 − P(A) (événement contraire) ;
- P(A ∪ B) = P(A) + P(B) − P(A ∩ B).

## Probabilités conditionnelles

La probabilité de B sachant A (avec P(A) ≠ 0) est P_A(B) = P(A ∩ B)/P(A). Donc P(A ∩ B) = P(A) × P_A(B).

Arbre pondéré : la somme des probabilités issues d''un même nœud vaut 1 ; la probabilité d''un chemin est le produit des probabilités le long de ce chemin.

Formule des probabilités totales : si A et Ā partagent l''univers, P(B) = P(A ∩ B) + P(Ā ∩ B).

Exemple : une usine de conditionnement de jus à Dakar utilise deux machines. La machine A produit 60 % des bouteilles, la machine B 40 %. 3 % des bouteilles de A et 5 % de celles de B sont défectueuses. On choisit une bouteille au hasard (D : « défectueuse »).
- P(D) = 0,6 × 0,03 + 0,4 × 0,05 = 0,018 + 0,020 = 0,038.
- Sachant qu''elle est défectueuse, la probabilité qu''elle vienne de A : P_D(A) = 0,018/0,038 = 9/19 ≈ 0,474.

## Indépendance

A et B sont indépendants si P(A ∩ B) = P(A) × P(B), ce qui équivaut (si P(A) ≠ 0) à P_A(B) = P(B) : savoir que A est réalisé ne change pas la probabilité de B.

## Variables aléatoires

Une variable aléatoire X associe un nombre à chaque issue. Sa loi de probabilité donne les valeurs xᵢ et les probabilités pᵢ = P(X = xᵢ).
- Espérance : E(X) = somme des xᵢ pᵢ (valeur moyenne sur un grand nombre de répétitions).
- Variance : V(X) = somme des pᵢ (xᵢ − E(X))² = E(X²) − [E(X)]² ; écart-type σ = √V(X).

Un jeu est équitable si l''espérance du gain net est nulle.

## Loi binomiale

Une épreuve de Bernoulli a deux issues : succès (probabilité p) et échec (1 − p). Si on répète n fois cette épreuve de façon identique et indépendante, le nombre X de succès suit la loi binomiale B(n ; p) :

P(X = k) = C(n, k) × pᵏ × (1 − p)ⁿ⁻ᵏ, où C(n, k) est le nombre de façons de choisir k éléments parmi n.

E(X) = np et V(X) = np(1 − p).

Exemple : la probabilité qu''un client d''une boutique paie par transfert d''argent mobile est 0,2. On observe 5 clients indépendants. X suit B(5 ; 0,2). P(X = 2) = C(5, 2) × 0,2² × 0,8³ = 10 × 0,04 × 0,512 = 0,2048. E(X) = 5 × 0,2 = 1.

## Points clés

- P_A(B) = P(A ∩ B)/P(A) ; arbre : on multiplie le long des branches, on additionne les chemins.
- Indépendance : P(A ∩ B) = P(A)P(B).
- E(X) = Σ xᵢpᵢ ; jeu équitable si E(gain) = 0.
- Binomiale : P(X = k) = C(n, k) pᵏ(1 − p)ⁿ⁻ᵏ, E = np.

## Exercices

Exercice 1 : Une urne contient 4 boules rouges et 6 boules blanches. On tire une boule, on la remet, puis on en tire une seconde. Calculer la probabilité d''obtenir deux boules rouges, puis au moins une boule rouge.

Exercice 2 : Dans un lycée, 70 % des élèves de Terminale révisent régulièrement. Parmi eux, 90 % obtiennent le Bac ; parmi les autres, 40 %. Calculer la probabilité qu''un élève obtienne le Bac, puis la probabilité qu''il ait révisé régulièrement sachant qu''il a obtenu le Bac.

Exercice 3 : À une kermesse, on paie 500 FCFA pour lancer un dé équilibré. Si on obtient 6, on reçoit 2 000 FCFA ; si on obtient 5, on récupère sa mise de 500 FCFA ; sinon on ne reçoit rien. Soit G le gain net. Donner la loi de G et son espérance. Le jeu est-il favorable au joueur ?

Exercice 4 : Un agriculteur sème 4 graines de mil. Chacune germe avec une probabilité de 0,8, indépendamment des autres. Soit X le nombre de graines qui germent. Calculer P(X = 4), P(X ≥ 3) et E(X).

Exercice 5 : P(A) = 0,5, P(B) = 0,4 et P(A ∩ B) = 0,2. A et B sont-ils indépendants ? Calculer P(A ∪ B).

## Corrigé

Exercice 1 : P(R) = 4/10 = 0,4. Deux rouges : 0,4 × 0,4 = 0,16. Aucune rouge : 0,6 × 0,6 = 0,36, donc au moins une rouge : 1 − 0,36 = 0,64.

Exercice 2 : P(Bac) = 0,7 × 0,9 + 0,3 × 0,4 = 0,63 + 0,12 = 0,75. P_Bac(R) = 0,63/0,75 = 0,84.

Exercice 3 : G = 1 500 avec probabilité 1/6 ; G = 0 avec probabilité 1/6 ; G = −500 avec probabilité 4/6. E(G) = 1 500/6 + 0 − 2 000/6 = −500/6 ≈ −83,33 FCFA. L''espérance est négative : le jeu est défavorable au joueur (en moyenne il perd environ 83 FCFA par partie).

Exercice 4 : X suit B(4 ; 0,8). P(X = 4) = 0,8⁴ = 0,4096. P(X = 3) = C(4, 3) × 0,8³ × 0,2 = 4 × 0,512 × 0,2 = 0,4096. P(X ≥ 3) = 0,4096 + 0,4096 = 0,8192. E(X) = 4 × 0,8 = 3,2.

Exercice 5 : P(A) × P(B) = 0,5 × 0,4 = 0,2 = P(A ∩ B) : A et B sont indépendants. P(A ∪ B) = 0,5 + 0,4 − 0,2 = 0,7.', 'texte', 55, false, 50
from public.courses c where c.slug = 'maths-terminale'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Probabilités conditionnelles et loi binomiale');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : sujet type de Bac commenté', '## Fiche du cours vidéo

- Durée : 1h30.
- Thème : sujet type de Bac commenté (problème d''analyse, suites, probabilités).
- Objectifs : mobiliser limites, dérivation, exponentielle, suites et probabilités dans un sujet complet ; maîtriser la rédaction attendue au Bac.
- Matériel : tableau ou diaporama, calculatrice graphique ou scientifique, brouillon, papier millimétré pour la courbe.
- Prérequis : leçons 1 à 5. Le sujet est un sujet d''entraînement conçu pour ce cours, non un sujet officiel.

## Déroulé minuté

## 00:00 – 05:00 · Introduction et stratégie

« Bonjour à toutes et à tous. Aujourd''hui, nous traitons ensemble un sujet complet de type Bac. Il comporte un exercice de probabilités, un exercice sur les suites et un problème d''analyse avec la fonction exponentielle. Je vous rappelle la règle d''or : lisez tout le sujet, repérez les questions indépendantes, et ne restez jamais bloqués. Une question non résolue peut être admise pour continuer. »

Visuel : le sujet en trois parties avec un barème indicatif de travail (le barème officiel est fixé par les correcteurs de l''examen).

## 05:00 – 20:00 · Exercice 1 : probabilités

Énoncé : « Une entreprise de transport interurbain observe que 30 % de ses voyageurs réservent par téléphone mobile et 70 % au guichet. Parmi les voyageurs ayant réservé par mobile, 10 % annulent ; parmi ceux du guichet, 20 % annulent. 1) Construire un arbre. 2) Calculer la probabilité qu''un voyageur annule. 3) Sachant qu''un voyageur a annulé, quelle est la probabilité qu''il ait réservé par mobile ? 4) On choisit 10 voyageurs au hasard, de façon indépendante. Probabilité qu''exactement 2 annulent ? »

« Mettez en pause et cherchez. »

Visuel : l''arbre pondéré. Du nœud de départ partent deux branches, M (0,3) et M̄ (0,7). De M partent A (0,1) et Ā (0,9) ; de M̄ partent A (0,2) et Ā (0,8). « Vérifiez toujours que les probabilités issues d''un même nœud ont une somme égale à 1 : 0,3 + 0,7 = 1, 0,1 + 0,9 = 1, 0,2 + 0,8 = 1. Sur les branches du second niveau, ce sont des probabilités conditionnelles : 0,1 est P_M(A), pas P(A). »

Correction : « Notons M : “réservation mobile” et A : “annulation”. P(A) = 0,3 × 0,1 + 0,7 × 0,2 = 0,03 + 0,14 = 0,17. P_A(M) = 0,03/0,17 = 3/17 ≈ 0,176. Pour la question 4, le nombre X d''annulations suit la loi binomiale B(10 ; 0,17). P(X = 2) = C(10, 2) × 0,17² × 0,83⁸ = 45 × 0,0289 × 0,83⁸. À la calculatrice, 0,83⁸ ≈ 0,2252, donc P(X = 2) ≈ 0,293. »

« Notez la rédaction : je justifie la loi binomiale par trois éléments : répétition de 10 épreuves identiques, indépendantes, à deux issues. »

## 20:00 – 35:00 · Exercice 2 : suites

Énoncé : « Soit u₀ = 10 et uₙ₊₁ = 0,5 uₙ + 3. 1) Calculer u₁ et u₂. 2) Soit vₙ = uₙ − 6 ; montrer que (vₙ) est géométrique. 3) Exprimer uₙ en fonction de n et déterminer sa limite. 4) Montrer par récurrence que uₙ ≥ 6 pour tout n. »

Correction :
- u₁ = 5 + 3 = 8 ; u₂ = 4 + 3 = 7.
- vₙ₊₁ = uₙ₊₁ − 6 = 0,5uₙ − 3 = 0,5(uₙ − 6) = 0,5 vₙ. Suite géométrique de raison 0,5, v₀ = 4.
- vₙ = 4 × 0,5ⁿ, donc uₙ = 6 + 4 × 0,5ⁿ. Comme 0 < 0,5 < 1, 0,5ⁿ → 0 et uₙ → 6.
- Initialisation : u₀ = 10 ≥ 6. Hérédité : si uₙ ≥ 6, alors 0,5uₙ ≥ 3 et uₙ₊₁ ≥ 6. Conclusion : uₙ ≥ 6 pour tout n.

Question à poser : « La suite (uₙ) est-elle croissante ou décroissante ? » Réponse : uₙ₊₁ − uₙ = 6 + 2 × 0,5ⁿ − 6 − 4 × 0,5ⁿ = −2 × 0,5ⁿ < 0, donc (uₙ) est décroissante. Elle est décroissante et minorée par 6, ce qui confirme sa convergence.

« Remarquez qu''on pouvait aussi conclure directement de la formule : 4 × 0,5ⁿ > 0. Au Bac, faites ce qu''on vous demande : si l''énoncé exige une récurrence, rédigez la récurrence. »

## 35:00 – 43:00 · Pause et quiz interactif

« Pause de deux minutes, puis cinq questions rapides. »

- Question 1 : lim x eˣ quand x → −∞ ? Réponse : 0.
- Question 2 : Dérivée de e^(−x) ? Réponse : −e^(−x).
- Question 3 : ln(e⁵) ? Réponse : 5.
- Question 4 : Limite de 0,9ⁿ ? Réponse : 0.
- Question 5 : Espérance de B(20 ; 0,3) ? Réponse : 6.

## 43:00 – 55:00 · Problème, partie A : limites et dérivée

Énoncé : « Soit f définie sur ℝ par f(x) = (x + 1)e^(−x). 1) Calculer les limites de f en −∞ et en +∞. 2) Calculer f''(x) et dresser le tableau de variations. »

« En −∞ : x + 1 → −∞ et e^(−x) → +∞, donc par produit f(x) → −∞. En +∞ : on a une forme “∞ × 0”. J''écris f(x) = x e^(−x) + e^(−x) = x/eˣ + e^(−x). Par croissances comparées, x/eˣ → 0, et e^(−x) → 0. Donc f(x) → 0 : la droite y = 0 est asymptote horizontale en +∞. »

« Dérivée : produit u = x + 1, v = e^(−x), u'' = 1, v'' = −e^(−x). f''(x) = e^(−x) − (x + 1)e^(−x) = −x e^(−x). Comme e^(−x) > 0, f''(x) a le signe de −x : positif pour x < 0, négatif pour x > 0. f est croissante sur ]−∞ ; 0], décroissante sur [0 ; +∞[, avec un maximum f(0) = 1. »

« Au tableau, je dresse le tableau de variations complet : première ligne les valeurs de x (−∞, 0, +∞) ; deuxième ligne le signe de f''(x) (+ puis −, avec 0 en x = 0) ; troisième ligne les flèches de f, de −∞ jusqu''à 1 puis de 1 jusqu''à 0. Les limites doivent figurer aux extrémités des flèches : c''est un point souvent oublié et qui coûte des points. »

## 55:00 – 1:07:00 · Problème, partie B : tangente et équation

Énoncé : « 3) Déterminer l''équation de la tangente T au point d''abscisse −1. 4) Montrer que l''équation f(x) = 1/2 admet une unique solution α dans [0 ; +∞[ et en donner un encadrement d''amplitude 0,01. »

« f(−1) = 0 et f''(−1) = −(−1)e¹ = e. Donc T : y = e(x + 1). »

« Sur [0 ; +∞[, f est continue et strictement décroissante, f(0) = 1 et lim f = 0 en +∞. Or 1/2 est compris entre 0 et 1. D''après le corollaire du théorème des valeurs intermédiaires, l''équation f(x) = 1/2 a une unique solution α sur cet intervalle. Balayage à la calculatrice : f(1,67) ≈ 0,5026 et f(1,68) ≈ 0,4995. Donc 1,67 < α < 1,68. »

Question à poser : « Combien de solutions a l''équation f(x) = 1/2 sur ℝ tout entier ? » Réponse : deux, car sur ]−∞ ; 0], f croît de −∞ à 1 et prend aussi une fois la valeur 1/2 (solution comprise entre −0,8 et −0,7).

## 1:07:00 – 1:17:00 · Problème, partie C : tracé de la courbe

« Pour tracer la courbe, je place d''abord les éléments sûrs : l''asymptote y = 0 en +∞, le maximum au point (0 ; 1), le point (−1 ; 0) où la courbe coupe l''axe des abscisses avec sa tangente de coefficient directeur e ≈ 2,72, et le point d''abscisse α. Je complète avec quelques valeurs : f(1) = 2/e ≈ 0,74 ; f(2) = 3/e² ≈ 0,41 ; f(−2) = −e² ≈ −7,39. »

Visuel : la courbe tracée progressivement, avec la tangente et l''asymptote en couleur.

« Une courbe soignée et cohérente avec le tableau de variations rapporte des points. Vérifiez toujours que le dessin respecte vos résultats : là où f est croissante, la courbe monte. »

## 1:17:00 – 1:23:00 · Synthèse : la rédaction au Bac

- Toujours justifier une limite (opération, croissances comparées, factorisation).
- Pour le TVI : continuité, stricte monotonie, images aux bornes, conclusion.
- Pour une suite auxiliaire : calculer vₙ₊₁ en fonction de vₙ, pas seulement quelques termes.
- Pour la loi binomiale : justifier les trois conditions.
- Arrondir uniquement à la fin et préciser la précision demandée.

## 1:23:00 – 1:30:00 · Évaluation finale

- Question 1 : lim (ln x)/x quand x → +∞ ? Réponse : 0.
- Question 2 : Dérivée de ln(2x + 1) ? Réponse : 2/(2x + 1).
- Question 3 : (uₙ) géométrique, u₀ = 5, q = 2 : u₄ ? Réponse : 5 × 16 = 80.
- Question 4 : P(A) = 0,4 et P_A(B) = 0,5 : P(A ∩ B) ? Réponse : 0,2.
- Question 5 : Résoudre eˣ = 7. Réponse : x = ln 7.

« Félicitations pour ce travail. Refaites ce sujet seuls, en temps limité, dans une semaine. La régularité de l''entraînement fait la différence au Bac. Bon courage ! »', 'video', 90, false, 60
from public.courses c where c.slug = 'maths-terminale'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : sujet type de Bac commenté');

-- Cours : Finance d'entreprise M1 : diagnostic, investissement et financement en zone UEMOA
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'finance-entreprise-master1', (select id from public.levels where name = 'Master 1'), null, 'Finance', 'Finance d''entreprise M1 : diagnostic, investissement et financement en zone UEMOA', 'Ce cours forme à l''analyse financière (soldes de gestion, CAF, ratios), à la gestion du BFR et de la trésorerie, au choix d''investissement par la VAN et le TRI, et aux décisions de financement, de la banque à la microfinance et au marché financier régional. Il s''adresse aux étudiants de Master 1 en finance et gestion et aux cadres financiers de PME. Prérequis : comptabilité générale et mathématiques financières de base.', true, 60
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Analyse financière : soldes de gestion, CAF et ratios', '## Objectifs de la leçon

- Calculer et interpréter les soldes significatifs du compte de résultat SYSCOHADA.
- Calculer la capacité d''autofinancement (CAF).
- Construire un tableau de ratios de rentabilité, de structure et d''activité, et en tirer un diagnostic.

## 1. Finalité de l''analyse financière

L''analyse financière consiste à étudier les états financiers d''une entreprise pour porter un jugement sur sa performance, son équilibre financier et sa solvabilité. On compare toujours dans le temps (évolution sur trois à cinq exercices) et dans l''espace (entreprises du même secteur).

## 2. Les soldes significatifs de gestion

Le compte de résultat du SYSCOHADA révisé fait apparaître une cascade de soldes, qui correspondent aux soldes intermédiaires de gestion (SIG) de l''analyse financière :

- Marge commerciale : ventes de marchandises − coût d''achat des marchandises vendues. Pertinente pour les activités de négoce.
- Valeur ajoutée (VA) : richesse créée par l''entreprise = production et marge − consommations en provenance des tiers. La VA rémunère le personnel, l''État, les prêteurs, les associés et l''entreprise elle-même.
- Excédent brut d''exploitation (EBE) : VA − charges de personnel (et, selon la présentation, impôts et taxes). C''est la ressource dégagée par l''exploitation avant politique d''amortissement et de financement ; il est indépendant de la structure financière.
- Résultat d''exploitation : EBE − dotations aux amortissements, dépréciations et provisions + reprises.
- Résultat financier, puis résultat des activités ordinaires (RAO).
- Résultat hors activités ordinaires (HAO), puis résultat net après participation et impôt.

## 3. La capacité d''autofinancement

La CAF mesure les ressources internes générées par l''activité et disponibles pour investir, rembourser les emprunts et rémunérer les associés.

Méthode additive (à partir du résultat net) : CAF = résultat net + dotations aux amortissements, dépréciations et provisions − reprises − produits de cession d''immobilisations + valeur comptable des immobilisations cédées.

## 4. Les principaux ratios

- Rentabilité : taux de marge brute d''exploitation = EBE / chiffre d''affaires ; rentabilité économique = résultat d''exploitation / capitaux investis (capitaux propres + dettes financières, ou actif économique) ; rentabilité financière = résultat net / capitaux propres.
- Structure : autonomie financière = capitaux propres / total du passif ; gearing (endettement) = dettes financières / capitaux propres ; capacité de remboursement = dettes financières / CAF (en années).
- Activité : délai clients = créances clients / ventes TTC × 360 ; délai fournisseurs = dettes fournisseurs / achats TTC × 360 ; rotation des stocks = stock moyen / coût des ventes × 360.
- Liquidité : liquidité générale = actif circulant (y compris trésorerie) / dettes à court terme.

## Exemple chiffré : « Sahel Emballages SA » (en millions de FCFA)

Compte de résultat : production vendue 900 ; production stockée 20 ; consommations de matières 390 ; transports et services extérieurs 110 ; impôts et taxes 20 ; charges de personnel 180 ; dotations aux amortissements 70 ; frais financiers 30 ; impôt sur le résultat 30 (montant donné). Pas d''opérations HAO.

- Production de l''exercice = 900 + 20 = 920.
- VA = 920 − 390 − 110 − 20 = 400.
- EBE = 400 − 180 = 220.
- Résultat d''exploitation = 220 − 70 = 150.
- RAO = 150 − 30 = 120 ; résultat net = 120 − 30 = 90.
- CAF = 90 + 70 = 160.

Bilan simplifié : actif immobilisé net 700 ; stocks 150 ; clients 180 ; trésorerie-actif 70 ; total 1 100. Capitaux propres 600 (y compris le résultat) ; dettes financières 300 ; fournisseurs 120 ; autres dettes à court terme 80.

Ratios :

- Taux de marge d''EBE = 220/900 ≈ 24,4 %.
- Rentabilité économique = 150/(600 + 300) ≈ 16,7 % (avant impôt).
- Rentabilité financière = 90/600 = 15 %.
- Autonomie financière = 600/1 100 ≈ 54,5 % ; gearing = 300/600 = 0,5.
- Capacité de remboursement = 300/160 ≈ 1,9 année.
- Délai clients (approximé sur les ventes hors taxes faute de données TTC) = 180/900 × 360 = 72 jours.
- Liquidité générale = (150 + 180 + 70)/(120 + 80) = 2.

Diagnostic : l''entreprise est rentable et peu endettée ; sa capacité de remboursement est confortable. Le point faible est le délai clients de 72 jours, qui immobilise de la trésorerie : une action sur le recouvrement est prioritaire.

## 5. Méthode de diagnostic

- Retraiter et vérifier les données (exercices comparables, éléments exceptionnels).
- Calculer les soldes et la CAF, puis les ratios.
- Comparer : évolution sur plusieurs années, moyennes du secteur.
- Expliquer les causes (prix, volumes, coûts, délais) plutôt que de juxtaposer des chiffres.
- Conclure par des forces, des faiblesses et des recommandations.

## Points clés

- VA, EBE et résultat d''exploitation mesurent la performance économique ; le résultat net intègre financement et fiscalité.
- La CAF est la ressource interne de financement.
- Rentabilité, structure, activité et liquidité forment les quatre familles de ratios.
- Un ratio n''a de sens que comparé et expliqué.

## Exercices

- Exercice 1 : Production vendue 500 ; production stockée −10 ; consommations externes 230 ; impôts et taxes 10 ; charges de personnel 120 ; dotations 40 ; frais financiers 15 ; impôt 20. Calculez VA, EBE, résultat d''exploitation, résultat net et CAF (en millions de FCFA).
- Exercice 2 : Capitaux propres 250, dettes financières 400, CAF 80. Calculez le gearing et la capacité de remboursement ; commentez.
- Exercice 3 : Créances clients 90 millions ; ventes TTC annuelles 540 millions. Calculez le délai clients.
- Exercice 4 : Pourquoi l''EBE est-il un indicateur utile pour comparer deux entreprises qui ont des politiques de financement différentes ?

## Corrigé

- Exercice 1 : Production = 490 ; VA = 490 − 230 − 10 = 250 ; EBE = 250 − 120 = 130 ; résultat d''exploitation = 130 − 40 = 90 ; RAO = 75 ; résultat net = 55 ; CAF = 55 + 40 = 95.
- Exercice 2 : Gearing = 400/250 = 1,6 ; capacité de remboursement = 400/80 = 5 années. L''entreprise est fortement endettée et mettrait cinq ans de CAF à rembourser : un banquier sera réticent à prêter davantage sans renforcement des fonds propres.
- Exercice 3 : 90/540 × 360 = 60 jours.
- Exercice 4 : Parce qu''il est calculé avant les frais financiers, les amortissements et l''impôt : il ne dépend ni du mode de financement, ni de la politique d''amortissement, et reflète la performance de l''exploitation.', 'texte', 55, true, 10
from public.courses c where c.slug = 'finance-entreprise-master1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Analyse financière : soldes de gestion, CAF et ratios');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Fonds de roulement, BFR et gestion de la trésorerie', '## Objectifs de la leçon

- Établir un bilan fonctionnel simplifié et calculer fonds de roulement, besoin en fonds de roulement et trésorerie nette.
- Calculer un BFR normatif exprimé en jours de chiffre d''affaires.
- Construire un budget de trésorerie et connaître les leviers d''action.

## 1. L''équilibre financier : FR, BFR, TN

Le bilan fonctionnel classe les postes selon les cycles : investissement, financement, exploitation. Dans une approche simplifiée, on raisonne sur les valeurs nettes :

- Fonds de roulement (FR) = ressources stables (capitaux propres + dettes financières) − emplois stables (actif immobilisé).
- Besoin en fonds de roulement (BFR) = actif circulant d''exploitation (stocks, créances clients, autres créances d''exploitation) − passif circulant d''exploitation (fournisseurs, dettes fiscales et sociales d''exploitation).
- Trésorerie nette (TN) = FR − BFR = trésorerie-actif − trésorerie-passif.

Le SYSCOHADA facilite cette lecture puisque son bilan distingue déjà actif immobilisé, actif circulant, trésorerie-actif, ressources stables, passif circulant et trésorerie-passif.

Interprétation : le BFR naît du décalage entre les décaissements (achats, salaires) et les encaissements (ventes). Le FR doit financer ce besoin ; s''il n''y suffit pas, la trésorerie devient négative et l''entreprise dépend des découverts.

## Exemple : Sahel Emballages SA (millions de FCFA)

- Ressources stables = 600 + 300 = 900 ; emplois stables = 700 ; FR = 200.
- BFR = stocks 150 + clients 180 − fournisseurs 120 − autres dettes d''exploitation 80 = 130.
- TN = 200 − 130 = 70, ce qui correspond à la trésorerie-actif (pas de découvert).

L''équilibre est satisfaisant. Mais si l''entreprise réalise un investissement de 150 financé sur ses fonds propres, le FR tombe à 50 et la TN à −80 : un découvert apparaît, coûteux et risqué.

## 2. Le BFR normatif

Pour prévoir, on exprime chaque poste en jours de chiffre d''affaires hors taxes (CAHT), en tenant compte de sa durée et de sa base :

- Stocks de marchandises : durée de stockage × coût d''achat / CAHT.
- Clients : délai de paiement × ventes TTC / CAHT.
- Fournisseurs : délai × achats TTC / CAHT.

Exemple simplifié : CAHT annuel de 720 millions, soit 2 millions par jour (année de 360 jours). On estime : stocks 20 jours de CA, clients 45 jours de CA, fournisseurs 30 jours de CA. BFR normatif = 20 + 45 − 30 = 35 jours de CA, soit 70 millions de FCFA.

Conséquence clé : le BFR est proportionnel à l''activité. Si le CA augmente de 25 %, le BFR augmente de 25 % aussi, soit 17,5 millions supplémentaires à financer. Une entreprise en forte croissance peut donc manquer de trésorerie tout en étant rentable : c''est l''« effet ciseaux ». Les entreprises qui vendent à l''État ou aux grandes sociétés avec des délais de paiement longs y sont particulièrement exposées.

## 3. Le budget de trésorerie

Le budget de trésorerie prévoit, mois par mois, les encaissements et les décaissements, afin d''anticiper les besoins de financement à court terme.

Exemple (millions de FCFA) pour un trimestre, trésorerie initiale 10 :

- Janvier : encaissements 60, décaissements 75 ; solde du mois −15 ; trésorerie fin de mois −5.
- Février : encaissements 70, décaissements 62 ; solde +8 ; trésorerie fin de mois 3.
- Mars : encaissements 85, décaissements 70 ; solde +15 ; trésorerie fin de mois 18.

Le besoin de janvier (−5) doit être couvert à l''avance : facilité de caisse, escompte d''effets, report négocié d''un décaissement. L''entreprise évite ainsi un incident de paiement.

## 4. Les leviers de gestion de la trésorerie

- Réduire le BFR : relances clients et facturation rapide, acomptes à la commande, escompte pour paiement anticipé, gestion fine des stocks, négociation des délais fournisseurs dans le respect de la réglementation et des relations commerciales.
- Financements à court terme : découvert autorisé, facilité de caisse, crédit de campagne (fréquent pour les filières agricoles comme l''arachide, le coton ou la noix de cajou), escompte d''effets de commerce, affacturage, avances sur marchés publics.
- Placements des excédents : dépôts à terme, titres de court terme.
- Outils numériques : paiements et encaissements par monnaie électronique, qui accélèrent les flux.

## Points clés

- TN = FR − BFR : la trésorerie est la résultante de l''équilibre entre ressources stables et besoins d''exploitation.
- Le BFR normatif, exprimé en jours de CA, croît avec l''activité.
- Le budget de trésorerie anticipe les besoins mensuels.
- Réduire le BFR libère de la trésorerie sans coût financier.

## Exercices

- Exercice 1 : Capitaux propres 400, dettes financières 250, actif immobilisé 550, stocks 120, clients 160, fournisseurs 140, dettes fiscales et sociales 40. Calculez FR, BFR et TN.
- Exercice 2 : CAHT 1 080 millions par an (360 jours). Stocks 25 jours, clients 60 jours, fournisseurs 40 jours de CA. Calculez le BFR en jours et en FCFA.
- Exercice 3 : Avec les données de l''exercice 2, l''entreprise réduit le délai clients à 45 jours. Combien de trésorerie libère-t-elle ?
- Exercice 4 : Trésorerie initiale 5 ; encaissements prévus 40, 55, 50 ; décaissements 52, 45, 48. Établissez la trésorerie de fin de mois.

## Corrigé

- Exercice 1 : FR = 650 − 550 = 100 ; BFR = 120 + 160 − 140 − 40 = 100 ; TN = 0. L''équilibre est juste atteint, sans marge de sécurité.
- Exercice 2 : 25 + 60 − 40 = 45 jours ; CA journalier = 3 millions ; BFR = 135 millions.
- Exercice 3 : 15 jours de moins × 3 millions = 45 millions libérés ; le BFR passe à 90 millions.
- Exercice 4 : Mois 1 : 5 + 40 − 52 = −7 ; mois 2 : −7 + 55 − 45 = 3 ; mois 3 : 3 + 50 − 48 = 5. Il faut prévoir un financement de 7 millions pour le premier mois.', 'texte', 55, false, 20
from public.courses c where c.slug = 'finance-entreprise-master1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Fonds de roulement, BFR et gestion de la trésorerie');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Choix d''investissement : VAN, TRI et critères complémentaires', '## Objectifs de la leçon

- Déterminer les flux de trésorerie d''un projet d''investissement.
- Calculer et interpréter la VAN, le TRI, l''indice de profitabilité et le délai de récupération actualisé.
- Choisir entre plusieurs projets.

## 1. Les flux d''un projet

Un investissement est une dépense immédiate en vue de flux de trésorerie futurs. On raisonne en flux de trésorerie différentiels, c''est-à-dire ceux que le projet ajoute à l''entreprise :

- Investissement initial : coût d''acquisition, frais d''installation, et augmentation du BFR liée au projet.
- Flux annuels d''exploitation : EBE supplémentaire − impôt sur le résultat d''exploitation supplémentaire. Une formule pratique : flux = (EBE − dotations) × (1 − t) + dotations, où t est le taux d''impôt.
- Flux de fin de projet : valeur résiduelle nette d''impôt et récupération du BFR.

On ne compte pas les frais financiers dans les flux : le coût du financement est pris en compte par le taux d''actualisation.

## 2. L''actualisation

Un franc reçu demain vaut moins qu''un franc aujourd''hui. La valeur actuelle d''un flux F reçu dans n années, au taux r, est F/(1 + r)^n. Pour une suite de n flux constants F : valeur actuelle = F × [1 − (1 + r)^(−n)]/r.

Le taux d''actualisation est le taux de rentabilité minimum exigé, souvent le coût moyen pondéré du capital, majoré si le projet est plus risqué que l''activité habituelle.

## 3. La valeur actuelle nette (VAN)

VAN = somme des flux actualisés − investissement initial. Règle : on accepte un projet si VAN > 0 ; entre deux projets exclusifs de même taille et de même durée, on retient celui dont la VAN est la plus élevée. Une VAN positive signifie que le projet rémunère les capitaux au-delà du taux exigé et crée de la valeur.

## Exemple 1 : flux constants

Une boulangerie industrielle de Thiès envisage un nouveau four : investissement 50 millions de FCFA, flux nets de 15 millions par an pendant 5 ans, valeur résiduelle nulle, taux d''actualisation 10 %.

Facteur d''annuité : [1 − 1,1^(−5)]/0,1 ≈ 3,7908. Valeur actuelle des flux : 15 × 3,7908 ≈ 56,86 millions. VAN ≈ 56,86 − 50 = 6,86 millions de FCFA > 0 : le projet est rentable.

## 4. Le taux de rentabilité interne (TRI)

Le TRI est le taux d''actualisation pour lequel la VAN est nulle. On accepte le projet si le TRI est supérieur au taux exigé. On le calcule par tâtonnement et interpolation linéaire, ou avec la fonction TRI d''un tableur.

Pour l''exemple 1, il faut trouver r tel que 15 × [1 − (1 + r)^(−5)]/r = 50, soit un facteur d''annuité de 3,3333. À 15 %, le facteur vaut 3,3522 (VAN ≈ +0,28) ; à 16 %, 3,2743 (VAN ≈ −0,89). Par interpolation : TRI ≈ 15 % + 0,28/(0,28 + 0,89) ≈ 15,24 %. Comme 15,24 % > 10 %, le projet est accepté.

## Exemple 2 : flux variables

Un projet de chambre froide pour une coopérative de pêcheurs de Mbour : investissement 100 millions ; flux 30, 40, 50 et 30 millions sur 4 ans ; taux 12 %.

- Flux actualisés : 30/1,12 ≈ 26,79 ; 40/1,12² ≈ 31,89 ; 50/1,12³ ≈ 35,59 ; 30/1,12⁴ ≈ 19,07. Total ≈ 113,33.
- VAN ≈ 113,33 − 100 = 13,33 millions.
- Indice de profitabilité (IP) = valeur actuelle des flux / investissement ≈ 1,133 : chaque franc investi rapporte 1,133 franc en valeur actuelle.
- TRI : à 15 %, VAN ≈ 6,36 ; à 20 %, VAN ≈ −3,82. Interpolation : 15 % + 5 % × 6,36/(6,36 + 3,82) ≈ 18,1 %. Le calcul exact au tableur donne environ 18,0 % ; l''interpolation sur un intervalle large surestime légèrement.
- Délai de récupération actualisé : cumul des flux actualisés : −73,21 après un an, −41,33 après deux ans, −5,74 après trois ans, +13,33 après quatre ans. Récupération pendant la 4e année : 3 + 5,74/19,07 ≈ 3,3 années.

## 5. Choisir entre projets

- Projets indépendants : on accepte tous ceux dont la VAN est positive, dans la limite du budget.
- Projets exclusifs : VAN et TRI peuvent donner des classements différents lorsque les tailles ou les profils de flux diffèrent. Le critère de la VAN est en principe prioritaire, car il mesure la création de valeur en FCFA. L''IP est utile en cas de rationnement du capital.
- Durées différentes : on utilise des méthodes d''équivalence (annuité équivalente).

Limites : la qualité de la décision dépend de la qualité des prévisions. Il faut tester la sensibilité de la VAN à une baisse des ventes, une hausse des coûts ou un retard de démarrage, et construire des scénarios (pessimiste, central, optimiste).

## Points clés

- On actualise les flux de trésorerie différentiels, hors frais financiers.
- VAN > 0 : le projet crée de la valeur ; c''est le critère de référence.
- TRI > taux exigé : projet acceptable ; il se calcule par interpolation ou au tableur.
- IP et délai de récupération complètent l''analyse ; la sensibilité aux hypothèses est essentielle.

## Exercices

- Exercice 1 : Investissement 20 millions ; flux de 8 millions par an pendant 3 ans ; taux 10 %. Calculez la VAN. Faut-il investir ?
- Exercice 2 : Investissement 80 millions ; flux 25, 30, 35, 20 millions ; taux 10 %. Calculez la VAN et l''IP.
- Exercice 3 : Pour l''exercice 2, la VAN vaut environ 0,48 à 14 % et −2,68 à 16 %. Estimez le TRI.
- Exercice 4 : Pourquoi n''intègre-t-on pas les intérêts d''emprunt dans les flux du projet ?

## Corrigé

- Exercice 1 : Facteur d''annuité à 10 % sur 3 ans : [1 − 1,1^(−3)]/0,1 ≈ 2,4869. Valeur actuelle ≈ 8 × 2,4869 = 19,89. VAN ≈ −0,11 million < 0 : on ne retient pas le projet (son TRI, environ 9,7 %, est inférieur à 10 %).
- Exercice 2 : 25/1,1 ≈ 22,73 ; 30/1,21 ≈ 24,79 ; 35/1,331 ≈ 26,30 ; 20/1,4641 ≈ 13,66. Total ≈ 87,48. VAN ≈ 7,48 millions ; IP ≈ 87,48/80 ≈ 1,09.
- Exercice 3 : TRI ≈ 14 % + 2 % × 0,48/(0,48 + 2,68) ≈ 14 % + 0,30 % ≈ 14,3 %.
- Exercice 4 : Parce que le coût du financement est déjà pris en compte dans le taux d''actualisation ; compter aussi les intérêts dans les flux reviendrait à le compter deux fois.', 'texte', 60, false, 30
from public.courses c where c.slug = 'finance-entreprise-master1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Choix d''investissement : VAN, TRI et critères complémentaires');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sources de financement, coût du capital et effet de levier', '## Objectifs de la leçon

- Connaître les principales sources de financement de l''entreprise.
- Calculer le tableau d''amortissement d''un emprunt.
- Calculer le coût moyen pondéré du capital (CMPC) et comprendre l''effet de levier.

## 1. Les sources de financement

- Autofinancement : financement par la CAF, après distribution des dividendes. Il préserve l''indépendance mais limite la croissance à la capacité interne.
- Apports en capital : des associés existants, de nouveaux investisseurs, de fonds de capital-investissement ou par introduction en bourse. Les fonds propres ne sont pas remboursables mais sont exigeants en rentabilité et diluent le contrôle.
- Emprunts bancaires à moyen et long terme : remboursables, avec intérêts déductibles fiscalement ; souvent assortis de garanties (hypothèque, nantissement, caution). Des mécanismes de garantie publics ou régionaux peuvent faciliter l''accès des PME au crédit.
- Crédit-bail (leasing) : l''entreprise loue un équipement avec option d''achat ; utile quand les garanties manquent, car le bien reste la propriété du bailleur.
- Emprunts obligataires : pour les grandes entreprises et les États, via le marché financier régional (voir leçon 5).
- Subventions et financements de partenaires au développement, financement participatif, et financements conformes à la finance islamique (mourabaha, ijara), en développement dans la sous-région.
- Microfinance : pour les très petites entreprises et les entrepreneurs individuels (voir leçon 5).

## 2. L''emprunt indivis et son tableau d''amortissement

Deux modalités principales :

- Amortissement constant : le capital remboursé est le même chaque année ; les annuités décroissent.
- Annuités constantes : a = C × i / [1 − (1 + i)^(−n)].

Exemple : emprunt de 100 millions de FCFA, taux 9 % (taux fictif pour l''exemple), 5 ans, annuités constantes. a = 100 × 0,09/[1 − 1,09^(−5)] ≈ 25,71 millions.

- Année 1 : capital début 100 ; intérêts 9,00 ; amortissement 16,71.
- Année 2 : capital 83,29 ; intérêts 7,50 ; amortissement 18,21.
- Année 3 : capital 65,08 ; intérêts 5,86 ; amortissement 19,85.
- Année 4 : capital 45,23 ; intérêts 4,07 ; amortissement 21,64.
- Année 5 : capital 23,59 ; intérêts 2,12 ; amortissement 23,59.

La somme des amortissements fait 100 ; les intérêts totaux s''élèvent à environ 28,55 millions (5 × 25,71 − 100).

## 3. Le coût du capital

Chaque source a un coût :

- Coût de la dette après impôt : kd × (1 − t), car les intérêts sont déductibles.
- Coût des fonds propres : rentabilité exigée par les actionnaires. On peut l''estimer par le MEDAF : ke = rf + β × (rm − rf), avec rf le taux sans risque, β la sensibilité au marché et (rm − rf) la prime de risque du marché. Dans les marchés étroits de la sous-région, l''estimation du bêta est délicate ; on utilise souvent des comparables ou une prime de risque ajoutée.

Coût moyen pondéré du capital : CMPC = ke × CP/(CP + D) + kd × (1 − t) × D/(CP + D).

Exemple : capitaux propres 600 millions (coût 15 %), dettes financières 300 millions (taux 9 %), taux d''impôt de 25 % (taux fictif pour l''exemple ; vérifier le taux en vigueur). Coût de la dette après impôt : 9 % × 0,75 = 6,75 %. CMPC = 15 % × 2/3 + 6,75 % × 1/3 = 10 % + 2,25 % = 12,25 %. Ce taux sert de référence pour actualiser les projets de risque comparable.

## 4. L''effet de levier

L''endettement peut augmenter la rentabilité des capitaux propres si la rentabilité économique dépasse le coût de la dette. Avant impôt :

Rf = Re + (Re − i) × D/CP, puis, après impôt, on multiplie par (1 − t).

Exemple : rentabilité économique 16 %, coût de la dette 9 %, D/CP = 0,5, taux d''impôt fictif 25 %. Rf avant impôt = 16 % + 7 % × 0,5 = 19,5 % ; après impôt : 19,5 % × 0,75 ≈ 14,6 %. Sans dette, elle serait de 16 % × 0,75 = 12 %.

Mais si la rentabilité économique tombe à 6 % (crise, mauvaise campagne agricole), Rf avant impôt = 6 % + (6 % − 9 %) × 0,5 = 4,5 % : l''endettement devient un effet de massue. Le levier augmente donc le risque financier.

## 5. Choisir un financement

Critères : coût, maturité adaptée à la durée de l''actif financé (règle de l''équilibre financier : financer un actif durable par des ressources durables), garanties exigées, impact sur le contrôle, capacité de remboursement, flexibilité.

## Points clés

- Autofinancement, fonds propres, dettes, crédit-bail, marché financier et microfinance sont les principales sources.
- Annuité constante : a = C × i / [1 − (1 + i)^(−n)].
- CMPC = moyenne pondérée des coûts des fonds propres et de la dette après impôt.
- L''effet de levier amplifie la rentabilité financière, à la hausse comme à la baisse.

## Exercices

- Exercice 1 : Emprunt de 50 millions, 3 ans, amortissement constant, taux 10 % (fictif). Établissez le tableau.
- Exercice 2 : CP 400 (coût 14 %), D 600 (taux 8 %), taux d''impôt fictif 30 %. Calculez le CMPC.
- Exercice 3 : Re = 12 %, i = 10 %, D/CP = 2. Calculez Rf avant impôt. Que se passe-t-il si Re = 8 % ?
- Exercice 4 : Pourquoi le crédit-bail est-il intéressant pour une PME qui manque de garanties ?

## Corrigé

- Exercice 1 : Amortissement annuel 16,67. Année 1 : intérêts 5,00, annuité 21,67. Année 2 : capital 33,33, intérêts 3,33, annuité 20,00. Année 3 : capital 16,67, intérêts 1,67, annuité 18,33.
- Exercice 2 : kd après impôt = 8 % × 0,7 = 5,6 %. CMPC = 14 % × 0,4 + 5,6 % × 0,6 = 5,6 % + 3,36 % = 8,96 %.
- Exercice 3 : Rf = 12 % + 2 % × 2 = 16 %. Si Re = 8 % : Rf = 8 % − 2 % × 2 = 4 % : le levier joue négativement.
- Exercice 4 : Le bien financé reste la propriété du bailleur, qui dispose ainsi d''une garantie naturelle ; la PME n''a pas besoin d''apporter d''hypothèque et finance souvent 100 % de l''équipement.', 'texte', 55, false, 40
from public.courses c where c.slug = 'finance-entreprise-master1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sources de financement, coût du capital et effet de levier');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Microfinance, marché financier régional et plan de financement', '## Objectifs de la leçon

- Comprendre le rôle de la microfinance dans le financement des petites entreprises.
- Calculer le coût réel d''un crédit à taux forfaitaire.
- Connaître le fonctionnement général du marché financier régional de l''UEMOA et de la BRVM.
- Construire un plan de financement simple.

## 1. La microfinance

La microfinance offre des services financiers (crédit, épargne, transferts, assurance) aux personnes et petites entreprises peu servies par les banques. Dans l''UEMOA, on parle de systèmes financiers décentralisés (SFD) : mutuelles d''épargne et de crédit, associations, sociétés. Ils sont régis par une réglementation commune et supervisés par les autorités nationales et la BCEAO, avec l''appui de la Commission bancaire de l''UMOA pour les plus grandes institutions.

Méthodologies courantes : crédit solidaire (un groupe se porte caution mutuelle), crédit individuel avec garanties légères, crédit de campagne agricole, crédit lié à l''épargne préalable.

Atouts : proximité, connaissance du client, rapidité. Limites : montants modestes, durées courtes, coût élevé du crédit lié aux frais de gestion de petits prêts, risque de surendettement si plusieurs prêts se cumulent. Les taux sont encadrés par la réglementation sur l''usure et la transparence, qu''il faut vérifier dans les textes en vigueur.

## 2. Calculer le coût réel d''un crédit

Certains crédits affichent un taux « forfaitaire » calculé sur le capital initial, alors que le capital est remboursé progressivement. Le coût réel est alors bien plus élevé que le taux affiché.

Exemple (taux fictifs pour l''exemple) : un prêt de 500 000 FCFA sur 6 mois, au taux forfaitaire de 2 % par mois sur le capital initial. Intérêts = 500 000 × 2 % × 6 = 60 000 FCFA. Mensualité = 560 000/6 ≈ 93 333 FCFA.

Le taux réel mensuel r est le taux qui égalise 500 000 et la valeur actuelle de six mensualités de 93 333 : il vaut environ 3,34 % par mois (calcul au tableur, fonction TAUX), soit environ 40 % par an en taux proportionnel, contre 24 % affichés (2 % × 12). Il faut aussi ajouter les frais de dossier et l''épargne obligatoire éventuelle pour obtenir le taux effectif global. Moralité : comparez toujours les taux effectifs.

## 3. Le marché financier régional

Les huit États de l''UEMOA partagent un marché financier régional comprenant :

- Une autorité de régulation, l''Autorité des marchés financiers de l''UMOA (AMF-UMOA, anciennement CREPMF), qui autorise les opérations d''appel public à l''épargne et contrôle les intervenants.
- La Bourse régionale des valeurs mobilières (BRVM), dont le siège est à Abidjan, avec des antennes nationales dans chaque pays, et le Dépositaire central / Banque de règlement (DC/BR), qui assure la conservation des titres et le règlement des transactions.
- Les sociétés de gestion et d''intermédiation (SGI), seuls intermédiaires habilités à passer les ordres de bourse, ainsi que les sociétés de gestion d''OPCVM.

On y échange des actions de sociétés cotées (banques, télécommunications, distribution, agro-industrie, etc.) et des obligations émises par les États, des organismes régionaux et des entreprises. Par ailleurs, les États émettent des bons et obligations du Trésor par adjudication sur le marché des titres publics, organisé avec la BCEAO.

Pour une entreprise, la cotation permet de lever des fonds propres ou de la dette auprès d''un large public, d''améliorer sa notoriété et sa gouvernance, mais elle impose des obligations de transparence (publication régulière des comptes) et des coûts. Les conditions d''admission (taille, historique, part du capital diffusée) sont fixées par le règlement de la bourse et doivent être consultées dans les textes à jour.

## 4. Quelques indicateurs boursiers

- Rendement du dividende = dividende par action / cours.
- PER (price earning ratio) = cours / bénéfice par action : nombre d''années de bénéfices que le marché paie.
- Capitalisation boursière = cours × nombre d''actions.

Exemple fictif : une société cotée a 10 millions d''actions, un cours de 6 000 FCFA, un bénéfice net de 7,5 milliards et distribue 4 milliards de dividendes. Capitalisation = 60 milliards ; bénéfice par action = 750 FCFA ; PER = 8 ; dividende par action = 400 FCFA ; rendement = 400/6 000 ≈ 6,7 %.

## 5. Le plan de financement

Le plan de financement, établi sur 3 à 5 ans, vérifie que les besoins (investissements, augmentation du BFR, remboursements d''emprunts, dividendes) sont couverts par les ressources (CAF, apports, emprunts, subventions, cessions).

Exemple simplifié (millions de FCFA), année 1 : besoins = investissement 120 + augmentation du BFR 20 + remboursement d''emprunt 15 = 155. Ressources = CAF 70 + nouvel emprunt 60 + apport en capital 30 = 160. Excédent = 5, qui augmente la trésorerie. Si les ressources étaient insuffisantes, il faudrait réduire ou étaler l''investissement, ou chercher d''autres financements.

## Points clés

- Les SFD financent les très petites entreprises avec des méthodologies adaptées, mais à un coût élevé.
- Le coût réel d''un crédit à taux forfaitaire dépasse nettement le taux affiché.
- Le marché financier régional repose sur l''AMF-UMOA, la BRVM, le DC/BR et les SGI.
- Le plan de financement vérifie la cohérence pluriannuelle entre besoins et ressources.

## Exercices

- Exercice 1 : Prêt de 300 000 FCFA sur 10 mois, taux forfaitaire de 1,5 % par mois sur le capital initial (fictif). Calculez les intérêts et la mensualité. Le taux réel est-il supérieur ou inférieur à 1,5 % par mois ?
- Exercice 2 : Cours 12 000 FCFA, bénéfice par action 1 500 FCFA, dividende 900 FCFA. Calculez le PER et le rendement.
- Exercice 3 : Citez le rôle de la BRVM, du DC/BR et d''une SGI.
- Exercice 4 : Besoins : investissement 200, BFR 30, remboursements 40. Ressources : CAF 110, emprunt 100. Calculez l''écart et proposez une solution.

## Corrigé

- Exercice 1 : Intérêts = 300 000 × 1,5 % × 10 = 45 000 ; mensualité = 345 000/10 = 34 500 FCFA. Le taux réel est supérieur à 1,5 % par mois, car les intérêts sont calculés sur le capital initial alors que le capital restant dû diminue chaque mois.
- Exercice 2 : PER = 12 000/1 500 = 8 ; rendement = 900/12 000 = 7,5 %.
- Exercice 3 : BRVM : organiser la cotation et les échanges de titres ; DC/BR : conserver les titres et assurer le règlement-livraison ; SGI : recevoir et exécuter les ordres des investisseurs, conseiller et accompagner les émetteurs.
- Exercice 4 : Besoins = 270 ; ressources = 210 ; insuffisance = 60. Solutions : apport en capital, emprunt complémentaire ou crédit-bail, étalement de l''investissement, réduction du BFR.', 'texte', 55, false, 50
from public.courses c where c.slug = 'finance-entreprise-master1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Microfinance, marché financier régional et plan de financement');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : du diagnostic financier à la décision d''investir et de financer', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Master 1 en finance, comptabilité-contrôle-audit, management ; cadres financiers de PME.
- Objectifs : mener un diagnostic financier, mesurer BFR et trésorerie, évaluer un projet par la VAN et le TRI, puis choisir un plan de financement incluant banque, crédit-bail, microfinance ou marché financier régional.
- Matériel : diaporama, tableur, états financiers simplifiés du cas, table ou fonction d''actualisation.
- Prérequis : leçons écrites 1 à 5.

## Déroulé minuté

## 00:00 – 05:00 · Présentation du cas

Bonjour à tous. Notre cas du jour s''appelle « Teranga Jus », une PME fictive de Rufisque qui transforme des fruits locaux, mangue, bissap, bouye, en jus pasteurisés. Le dirigeant veut installer une seconde ligne de production. Il nous demande trois choses : où en est la santé financière de l''entreprise ? le projet est-il rentable ? comment le financer ? Nous allons répondre dans cet ordre.

Visuel : fiche de l''entreprise, chiffre d''affaires de 600 millions de FCFA, 45 salariés.

## 05:00 – 18:00 · Diagnostic par les soldes et les ratios

Visuel : compte de résultat simplifié. Production vendue 600 ; consommations externes 330 ; impôts et taxes 10 ; charges de personnel 120 ; dotations 40 ; frais financiers 20 ; impôt 20, en millions de FCFA.

Calculons ensemble. Valeur ajoutée : 600 − 330 − 10 = 260. EBE : 260 − 120 = 140. Résultat d''exploitation : 100. Résultat des activités ordinaires : 80. Résultat net : 60. CAF : 60 + 40 = 100.

Ratios : taux de marge d''EBE 140/600, environ 23 %. Capitaux propres 350, dettes financières 150 : gearing 0,43 ; capacité de remboursement 1,5 année. Rentabilité financière : 60/350, environ 17 %.

Point de méthode : un ratio isolé ne veut rien dire. Comparons avec l''année précédente : le taux de marge d''EBE était de 25 %, il a donc légèrement baissé, à cause de la hausse du prix des emballages importés. Comparons aussi avec des entreprises agroalimentaires de taille comparable : la rentabilité est correcte. Un banquier regarderait également la régularité de la CAF sur trois ans et la qualité des garanties.

Question à la classe : la banque prêtera-t-elle ? Réponse attendue : a priori oui, l''entreprise est rentable et peu endettée ; mais regardons sa trésorerie avant de conclure.

## 18:00 – 30:00 · BFR et trésorerie

Le bilan montre des stocks de 80, des clients de 120, des fournisseurs de 60 et des dettes fiscales et sociales de 20. BFR = 80 + 120 − 60 − 20 = 120. Les ressources stables valent 500, l''actif immobilisé 420 : fonds de roulement 80. Trésorerie nette : 80 − 120 = −40. L''entreprise vit sur un découvert.

Pourquoi ? Le délai clients : 120/600 × 360 = 72 jours, car elle vend à de grandes surfaces et à des hôtels qui paient tard. Question : que se passera-t-il si l''activité augmente de 50 % avec la nouvelle ligne ? Réponse : le BFR, proportionnel à l''activité, augmentera d''environ 60 millions. Il faudra le financer en plus de l''investissement. C''est l''erreur classique des entrepreneurs : financer la machine mais oublier le BFR.

Visuel : graphique de l''effet ciseaux, avec le chiffre d''affaires et le BFR qui montent, et la trésorerie qui plonge.

Faisons aussi un mini budget de trésorerie pour les trois mois de la saison des mangues. La trésorerie de départ est de −40 ; les achats de fruits font exploser les décaissements en mai et juin, alors que les encaissements des hôtels n''arrivent qu''en juillet et août. Sans crédit de campagne négocié à l''avance, l''entreprise risque de ne pas pouvoir payer les producteurs, qui se tourneraient alors vers d''autres acheteurs.

Leviers : réduire le délai clients par la facturation rapide et l''escompte pour paiement anticipé, demander des acomptes aux hôtels, utiliser l''affacturage ou un crédit de campagne pendant la saison des mangues.

## 30:00 – 42:00 · Évaluer le projet : flux, VAN

Le projet : une ligne à 100 millions, plus 30 millions de BFR supplémentaire au démarrage, récupérés en fin de projet. Durée 4 ans. Flux d''exploitation nets d''impôt prévus : 30, 40, 50 et 30 millions. Taux exigé : 12 %.

Visuel : ligne du temps des flux.

Pour simplifier la démonstration, je calcule d''abord la VAN de la ligne seule, sans le BFR. Flux actualisés : 30/1,12 ≈ 26,79 ; 40/1,12² ≈ 31,89 ; 50/1,12³ ≈ 35,59 ; 30/1,12⁴ ≈ 19,07. Total ≈ 113,33. VAN de la ligne ≈ 13,33 millions.

Ajoutons maintenant le BFR : on décaisse 30 à la date 0 et on le récupère à la fin de l''année 4, soit 30/1,12⁴ ≈ 19,07 en valeur actuelle. L''effet net du BFR est donc −30 + 19,07 = −10,93. VAN totale ≈ 13,33 − 10,93 = 2,40 millions. Le projet reste rentable, mais de justesse : le BFR a absorbé plus des trois quarts de la valeur créée.

## 42:00 – 50:00 · Pause interactive et quiz

Pause active, trois questions.

- Question 1 : Valeur actuelle de 110 reçus dans un an à 10 % ? Réponse : 100.
- Question 2 : FR = 50 et BFR = 70. Trésorerie nette ? Réponse : −20.
- Question 3 : Une VAN positive à 12 % signifie-t-elle un TRI supérieur ou inférieur à 12 % ? Réponse : supérieur.

## 50:00 – 1:02:00 · TRI, sensibilité et décision

Le TRI de la ligne seule, sans le BFR, est d''environ 18 %. Je vous montre l''interpolation : VAN de 6,36 à 15 % et de −3,82 à 20 %, d''où 15 % + 5 % × 6,36/10,18, environ 18,1 %, le tableur donnant 18,0 %. Avec le BFR, le TRI baisse nettement, à environ 12,8 % : il reste au-dessus de 12 %, ce qui est cohérent avec une VAN totale faiblement positive.

Test de sensibilité : si chaque flux d''exploitation baisse de 10 %, la valeur actuelle des flux baisse de 11,33 et la VAN totale devient négative, environ −8,9 millions. Question à la classe : que conseillez-vous ? Réponse attendue : le projet est fragile ; il faut sécuriser les débouchés, par exemple par des contrats avec des distributeurs, et réduire le BFR avant d''investir.

## 1:02:00 – 1:14:00 · Financer : banque, crédit-bail, coût du capital

Besoin total : 130 millions, ligne et BFR. Options : emprunt bancaire de 80 millions sur 5 ans, crédit-bail pour la ligne, apport des associés, autofinancement.

Calculons l''annuité d''un emprunt de 80 millions à 9 %, un taux fictif pour l''exemple, sur 5 ans : 80 × 0,09/[1 − 1,09^(−5)] ≈ 20,57 millions par an. La CAF actuelle est de 100 : la charge est supportable.

Coût moyen pondéré du capital : fonds propres 350 à 15 %, dettes 230 à 9 %, impôt au taux fictif de 25 %. Coût de la dette après impôt : 6,75 %. CMPC = 15 % × 350/580 + 6,75 % × 230/580, environ 9,05 % + 2,68 %, soit 11,7 %. Notre taux de 12 % est donc légèrement prudent.

Effet de levier : avec une rentabilité économique supérieure au coût de la dette, l''endettement améliore la rentabilité des capitaux propres, mais il augmente le risque si les ventes chutent.

## 1:14:00 – 1:22:00 · Microfinance et marché financier régional

Les petits producteurs de mangues qui fournissent Teranga Jus manquent de trésorerie au moment de la récolte. Une institution de microfinance pourrait leur offrir un crédit de campagne. Je rappelle comment calculer le coût réel d''un crédit à taux forfaitaire : sur 500 000 FCFA à 2 % par mois forfaitaire pendant 6 mois, le taux réel est d''environ 3,3 % par mois. Il faut toujours comparer les taux effectifs.

Et à plus long terme ? Si Teranga Jus devient une grande entreprise, elle pourrait émettre des obligations ou ouvrir son capital sur le marché financier régional : la BRVM, à Abidjan, commune aux huit pays de l''UEMOA, sous la régulation de l''AMF-UMOA, avec le dépositaire central et les SGI comme intermédiaires. Cela exige transparence et gouvernance solides.

## 1:22:00 – 1:30:00 · Synthèse et évaluation finale

Récapitulons la démarche : diagnostic par les soldes et les ratios, analyse du BFR et de la trésorerie, évaluation du projet par la VAN et le TRI en n''oubliant pas le BFR, tests de sensibilité, puis choix d''un financement adapté.

Évaluation finale, cinq questions :

- Question 1 : VA 300, charges de personnel 140, dotations 50. EBE et résultat d''exploitation ? Réponse : 160 et 110.
- Question 2 : Stocks 40, clients 90, fournisseurs 50. BFR ? Réponse : 80.
- Question 3 : Investissement 60, flux de 25 pendant 3 ans, taux 10 %. VAN ? Réponse : 25 × 2,4869 − 60 ≈ 2,17, projet acceptable.
- Question 4 : CP 500 à 14 %, D 500 à 8 %, impôt fictif 25 %. CMPC ? Réponse : 7 % + 3 % = 10 %.
- Question 5 : Un prêt affiché à 2 % par mois forfaitaire coûte-t-il plus ou moins que 2 % par mois en réalité ? Réponse : plus, car les intérêts sont calculés sur le capital initial.

Merci à tous. Pour la prochaine séance, reprenez le cas au tableur et testez trois scénarios de ventes.', 'video', 90, false, 60
from public.courses c where c.slug = 'finance-entreprise-master1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : du diagnostic financier à la décision d''investir et de financer');
