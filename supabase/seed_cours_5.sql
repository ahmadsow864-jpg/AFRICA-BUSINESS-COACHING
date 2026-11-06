-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Cours (partie 5/21). À exécuter après seed.sql.

-- Cours : Sciences physiques (PC) : réussir l'épreuve du BFEM
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'bfem-sciences-physiques', (select id from public.levels where name = '3e'), null, 'Sciences physiques', 'Sciences physiques (PC) : réussir l''épreuve du BFEM', 'Ce cours d''examen révise le programme de sciences physiques du collège, avec un accent sur la 4e et la 3e : mélanges et corps purs, atomes et ions, équations-bilans, acides, bases et pH, métaux, électricité (loi d''Ohm, puissance, énergie), forces et équilibre, réflexion, réfraction et lentilles. Il propose des fiches de révision, des exercices progressifs corrigés et un sujet d''entraînement complet. Prérequis : avoir suivi les classes de 6e à 3e et savoir utiliser une calculatrice.', true, 107
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comprendre l''épreuve et méthode de travail', '## Objectifs de la leçon

- Savoir comment se présente une épreuve de sciences physiques (PC) au BFEM.
- Connaître les grands types d''exercices et la manière de les rédiger.
- Repérer les erreurs qui font perdre le plus de points.
- Organiser ses révisions sur 8 semaines.

## Comment se présente l''épreuve

L''épreuve de sciences physiques du BFEM évalue le programme du collège, avec un poids important pour les chapitres de 4e et de 3e. Le sujet est en général partagé entre une partie de chimie et une partie de physique. La durée, le coefficient et le barème dépendent des textes officiels en vigueur : renseigne-toi auprès de ton établissement et ne te fie pas aux rumeurs.

Ce qui ne change pas d''une année à l''autre, c''est la nature des questions. On retrouve presque toujours :
- des questions de cours : définir un mot (corps pur, ion, lentille convergente), énoncer une loi (loi d''Ohm, conservation de la masse) ;
- des questions d''application directe : calculer une intensité, une puissance, un poids, une vergence ;
- des équations-bilans à écrire et à équilibrer ;
- des schémas : circuit électrique, construction de l''image donnée par une lentille, représentation d''une force ;
- des exercices à étapes, où chaque réponse sert à la suivante.

## La méthode de résolution en 5 étapes

Pour tout exercice de calcul, adopte toujours le même plan. Les correcteurs l''attendent et il te protège des oublis.

- Étape 1 : lire tout l''énoncé et souligner les données avec leurs unités.
- Étape 2 : convertir les données dans les unités du Système international (mètre, kilogramme, seconde, ampère, volt, ohm, watt, joule).
- Étape 3 : écrire la formule littérale (exemple : U = R × I).
- Étape 4 : remplacer par les valeurs numériques, puis calculer.
- Étape 5 : donner le résultat avec son unité et, si on le demande, une phrase de conclusion.

Exemple rédigé. Une résistance de 100 Ω est traversée par un courant de 50 mA. Calculer la tension à ses bornes.
Données : R = 100 Ω ; I = 50 mA = 0,050 A.
Formule : U = R × I.
Application numérique : U = 100 × 0,050 = 5 V.
Conclusion : la tension aux bornes de la résistance est de 5 V.

## Les unités à connaître par cœur

- Intensité I : ampère (A) ; 1 mA = 0,001 A.
- Tension U : volt (V).
- Résistance R : ohm (Ω) ; 1 kΩ = 1 000 Ω.
- Puissance P : watt (W) ; 1 kW = 1 000 W.
- Énergie E : joule (J) ou kilowattheure (kWh) ; 1 Wh = 3 600 J et 1 kWh = 3 600 000 J.
- Masse m : kilogramme (kg) ; 1 g = 0,001 kg.
- Poids P et force F : newton (N).
- Intensité de la pesanteur g : newton par kilogramme (N/kg).
- Distance focale f : mètre (m) ; vergence C : dioptrie (δ).
- Concentration massique : gramme par litre (g/L).

## Les erreurs fréquentes

- Oublier l''unité ou en mettre une fausse : un résultat sans unité est souvent compté faux.
- Calculer avec des milliampères ou des centimètres sans convertir.
- Confondre masse (en kg, ne change pas) et poids (en N, dépend du lieu).
- Écrire une équation-bilan non équilibrée : il faut le même nombre d''atomes de chaque élément de chaque côté.
- Dessiner un circuit sans respecter les symboles normalisés, ou placer l''ampèremètre en dérivation et le voltmètre en série (c''est l''inverse).
- Pour les lentilles, oublier les rayons particuliers ou tracer sans règle.
- Recopier une formule au hasard : chaque lettre doit correspondre à une donnée identifiée.

## Plan de révision sur 8 semaines

- Semaine 1 : méthode, unités et conversions ; mélanges et corps purs ; techniques de séparation.
- Semaine 2 : atomes, molécules, ions ; formules chimiques ; réactions chimiques et équations-bilans.
- Semaine 3 : solutions aqueuses, concentration, acides et bases, pH ; métaux et leurs réactions.
- Semaine 4 : électricité 1 : circuits série et dérivation, intensité, tension, résistance, loi d''Ohm.
- Semaine 5 : électricité 2 : puissance et énergie électriques, facture d''électricité, sécurité.
- Semaine 6 : mécanique : forces, poids et masse, équilibre d''un solide.
- Semaine 7 : optique : réflexion, réfraction, lentilles, construction d''images.
- Semaine 8 : sujets d''entraînement complets en temps limité, puis reprise des points faibles.

Chaque séance de révision peut suivre ce rythme : 15 minutes pour relire une fiche, 30 minutes d''exercices sans regarder le corrigé, 15 minutes de correction en notant ses erreurs dans un cahier spécial. Ce cahier d''erreurs devient ton meilleur outil la dernière semaine.

## Points clés

- Toujours : données, conversion, formule, calcul, unité.
- Les schémas se font à la règle et au crayon, avec une légende.
- Le programme de 4e et de 3e est le cœur de l''épreuve.

## Exercices pratiques

Exercice 1 : Convertir : 250 mA en A ; 2,2 kΩ en Ω ; 1 500 W en kW ; 350 g en kg.

Exercice 2 : Convertir 2 kWh en joules.

Exercice 3 : Une lentille a une distance focale de 25 cm. Exprimer cette distance en mètres.

Exercice 4 : Repérer l''erreur dans cette réponse : « P = U × I = 220 × 0,5 = 110 ».

Exercice 5 : Un élève écrit : « La masse de Moussa est de 500 N. » Corriger sa phrase sachant que g = 10 N/kg.

Exercice 6 : Rédiger complètement selon la méthode en 5 étapes : une lampe est traversée par un courant de 200 mA sous une tension de 6 V. Calculer sa puissance.

## Corrigé

Exercice 1 : 250 mA = 0,25 A ; 2,2 kΩ = 2 200 Ω ; 1 500 W = 1,5 kW ; 350 g = 0,35 kg.

Exercice 2 : 1 kWh = 3 600 000 J, donc 2 kWh = 7 200 000 J (soit 7,2 × 10⁶ J).

Exercice 3 : 25 cm = 0,25 m.

Exercice 4 : Le calcul est juste mais l''unité manque. Il faut écrire P = 110 W.

Exercice 5 : 500 N est un poids, pas une masse. Correction : « Le poids de Moussa est de 500 N. » Sa masse vaut m = P / g = 500 / 10 = 50 kg.

Exercice 6 : Données : U = 6 V ; I = 200 mA = 0,2 A. Formule : P = U × I. Application numérique : P = 6 × 0,2 = 1,2 W. Conclusion : la puissance de la lampe est de 1,2 W.', 'texte', 50, true, 10
from public.courses c where c.slug = 'bfem-sciences-physiques'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comprendre l''épreuve et méthode de travail');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Chimie : matière, atomes, ions, réactions, acides, bases et métaux', '## Objectifs de la leçon

- Distinguer mélange et corps pur, corps simple et corps composé.
- Décrire l''atome et l''ion, lire une formule chimique.
- Écrire et équilibrer une équation-bilan, appliquer la conservation de la masse.
- Utiliser le pH, la concentration massique et les réactions des métaux.

## Fiche 1 : mélanges et corps purs

Un corps pur est constitué d''une seule espèce chimique (eau distillée, sel pur). Un mélange contient plusieurs espèces. Il est homogène si l''on ne distingue pas ses constituants à l''œil nu (eau salée), hétérogène dans le cas contraire (eau boueuse du fleuve après la pluie).

Techniques de séparation : décantation et filtration pour un mélange hétérogène ; évaporation ou distillation pour récupérer les constituants d''un mélange homogène. Dans les salins du lac Rose ou du Saloum, l''évaporation de l''eau par le soleil laisse le sel.

Un corps pur se reconnaît à des constantes physiques fixes : sous la pression atmosphérique normale, l''eau pure bout à 100 °C et se solidifie à 0 °C.

Un corps simple est formé d''un seul élément (dioxygène O₂, fer Fe, cuivre Cu). Un corps composé en contient plusieurs (eau H₂O, dioxyde de carbone CO₂).

## Fiche 2 : atomes, molécules et ions

L''atome est formé d''un noyau chargé positivement et d''électrons chargés négativement qui tournent autour. Il est électriquement neutre : il contient autant de charges positives dans le noyau que d''électrons.

Une molécule est un assemblage d''atomes. Dans H₂O, l''indice 2 indique deux atomes d''hydrogène pour un atome d''oxygène.

Un ion est un atome (ou un groupe d''atomes) qui a perdu ou gagné un ou plusieurs électrons :
- un atome qui perd des électrons devient un ion positif ou cation : Na⁺, Fe²⁺, Cu²⁺, Al³⁺, H⁺ ;
- un atome qui gagne des électrons devient un ion négatif ou anion : Cl⁻, OH⁻.

Exemple : l''atome de fer perd 2 électrons et devient l''ion Fe²⁺. Une solution ionique est toujours électriquement neutre : le chlorure de sodium en solution s''écrit (Na⁺ + Cl⁻), le chlorure de cuivre II s''écrit (Cu²⁺ + 2 Cl⁻).

## Fiche 3 : réactions chimiques et équations-bilans

Au cours d''une réaction chimique, des réactifs disparaissent et des produits se forment. Les atomes ne sont ni créés ni détruits : ils se réarrangent. Conséquence : la masse totale des réactifs consommés est égale à la masse totale des produits formés (loi de Lavoisier).

Méthode pour équilibrer une équation :
- écrire les formules des réactifs à gauche et des produits à droite ;
- compter les atomes de chaque élément de chaque côté ;
- ajuster avec des coefficients placés devant les formules, jamais en modifiant les indices.

Exemples à connaître :
- combustion du carbone : C + O₂ → CO₂ ;
- combustion du méthane : CH₄ + 2 O₂ → CO₂ + 2 H₂O ;
- synthèse de l''eau : 2 H₂ + O₂ → 2 H₂O ;
- combustion du fer : 3 Fe + 2 O₂ → Fe₃O₄.

Vérifions la dernière : à gauche 3 Fe et 4 O ; à droite 3 Fe et 4 O. Elle est équilibrée.

Application de la conservation de la masse : 12 g de carbone brûlent complètement avec 32 g de dioxygène. La masse de dioxyde de carbone formé est 12 + 32 = 44 g. Les masses sont proportionnelles : 6 g de carbone donneront 22 g de CO₂.

## Fiche 4 : solutions, concentration, acides, bases et pH

Une solution est obtenue en dissolvant un soluté dans un solvant (souvent l''eau). La concentration massique se calcule par Cm = m / V, avec m en grammes et V en litres.

Exemple : on dissout 5 g de sel dans 250 mL d''eau. V = 0,25 L, donc Cm = 5 / 0,25 = 20 g/L.

Le pH mesure l''acidité, sur une échelle de 0 à 14 :
- pH inférieur à 7 : solution acide (jus de citron, vinaigre, jus de bissap) ; elle contient plus d''ions H⁺ que d''ions OH⁻ ;
- pH égal à 7 : solution neutre (eau pure) ;
- pH supérieur à 7 : solution basique (eau savonneuse, eau de Javel, soude) ; elle contient plus d''ions OH⁻.

On mesure le pH avec du papier pH ou un pH-mètre. Quand on dilue une solution acide avec de l''eau, son pH augmente et se rapproche de 7 ; pour une solution basique, il diminue vers 7. Lors du mélange d''un acide et d''une base, il y a réaction de neutralisation : H⁺ + OH⁻ → H₂O.

Sécurité : on verse toujours l''acide dans l''eau, jamais l''eau dans l''acide, et on porte des lunettes et des gants.

## Fiche 5 : les métaux

- Le fer rouille à l''air humide ; la rouille est poreuse et ne protège pas le métal. On le protège par la peinture, le graissage ou la galvanisation (dépôt de zinc), comme sur les tôles des toits.
- L''aluminium se couvre d''une fine couche d''alumine qui le protège.
- Le cuivre conduit très bien le courant : on l''utilise dans les fils électriques.

Action de l''acide chlorhydrique dilué (H⁺ + Cl⁻) :
- sur le fer : Fe + 2 H⁺ → Fe²⁺ + H₂ ;
- sur le zinc : Zn + 2 H⁺ → Zn²⁺ + H₂ ;
- sur l''aluminium : 2 Al + 6 H⁺ → 2 Al³⁺ + 3 H₂ ;
- le cuivre n''est pas attaqué par l''acide chlorhydrique dilué.

Tests d''identification :
- le dihydrogène H₂ produit une légère détonation à l''approche d''une flamme ;
- avec la soude, Fe²⁺ donne un précipité vert, Cu²⁺ un précipité bleu, Zn²⁺ et Al³⁺ un précipité blanc ;
- avec le nitrate d''argent, l''ion Cl⁻ donne un précipité blanc qui noircit à la lumière.

## Exercices pratiques

Exercice 1 : Classer en mélange homogène, mélange hétérogène ou corps pur : eau distillée, eau boueuse, eau sucrée, fer.

Exercice 2 : L''atome d''aluminium perd 3 électrons. Écrire la formule de l''ion obtenu. Est-ce un cation ou un anion ?

Exercice 3 : Équilibrer : H₂ + Cl₂ → HCl ; Al + O₂ → Al₂O₃ ; C₃H₈ + O₂ → CO₂ + H₂O.

Exercice 4 : On brûle 3 g de carbone. Sachant que 12 g de carbone donnent 44 g de CO₂, calculer la masse de CO₂ obtenue et la masse de dioxygène consommée.

Exercice 5 : Aïssatou dissout 8 g de sucre dans 400 mL d''eau. Calculer la concentration massique.

Exercice 6 : Trois solutions ont des pH de 2, 7 et 12. Indiquer leur nature. Que devient le pH de la première si on la dilue ?

Exercice 7 : On verse de l''acide chlorhydrique dilué sur de la poudre de zinc. On observe un dégagement gazeux. Nommer le gaz, indiquer comment l''identifier et écrire l''équation-bilan. Quel précipité obtient-on en ajoutant de la soude à la solution finale ?

## Corrigé

Exercice 1 : eau distillée et fer : corps purs ; eau boueuse : mélange hétérogène ; eau sucrée : mélange homogène.

Exercice 2 : Al³⁺ ; c''est un cation, car l''atome a perdu des électrons et porte une charge positive.

Exercice 3 : H₂ + Cl₂ → 2 HCl. 4 Al + 3 O₂ → 2 Al₂O₃ (4 Al et 6 O de chaque côté). C₃H₈ + 5 O₂ → 3 CO₂ + 4 H₂O (à droite : 3 C, 8 H, 6 + 4 = 10 O ; à gauche : 3 C, 8 H, 10 O).

Exercice 4 : 3 g, c''est 4 fois moins que 12 g, donc m(CO₂) = 44 / 4 = 11 g. Par conservation de la masse, m(O₂) = 11 − 3 = 8 g.

Exercice 5 : V = 400 mL = 0,4 L ; Cm = m / V = 8 / 0,4 = 20 g/L.

Exercice 6 : pH 2 : acide ; pH 7 : neutre ; pH 12 : basique. Diluée, la solution acide voit son pH augmenter en se rapprochant de 7 (sans jamais le dépasser).

Exercice 7 : Le gaz est le dihydrogène H₂ ; il produit une légère détonation à l''approche d''une flamme. Équation : Zn + 2 H⁺ → Zn²⁺ + H₂. Avec la soude, les ions Zn²⁺ donnent un précipité blanc.', 'texte', 60, false, 20
from public.courses c where c.slug = 'bfem-sciences-physiques'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Chimie : matière, atomes, ions, réactions, acides, bases et métaux');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Électricité : circuits, loi d''Ohm, puissance et énergie', '## Objectifs de la leçon

- Schématiser un circuit et appliquer les lois des intensités et des tensions.
- Utiliser la loi d''Ohm.
- Calculer une puissance, une énergie et le coût d''une consommation.

## Fiche 1 : le circuit électrique

Symboles à connaître : générateur (pile), lampe, interrupteur ouvert ou fermé, résistance (rectangle), moteur (cercle avec M), diode, ampèremètre (cercle avec A), voltmètre (cercle avec V). Le courant circule, à l''extérieur du générateur, de la borne + vers la borne −.

- Montage en série : tous les dipôles forment une seule boucle. Si une lampe grille, tout s''éteint.
- Montage en dérivation (en parallèle) : plusieurs boucles. Si une lampe grille, les autres restent allumées. C''est le cas des installations domestiques.

## Fiche 2 : intensité et tension

L''intensité I se mesure en ampères avec un ampèremètre branché en série. La tension U se mesure en volts avec un voltmètre branché en dérivation, aux bornes du dipôle.

Lois en série :
- l''intensité est la même en tout point : I = I₁ = I₂ ;
- la tension aux bornes du générateur est la somme des tensions : U = U₁ + U₂.

Lois en dérivation :
- l''intensité dans la branche principale est la somme des intensités des branches : I = I₁ + I₂ (loi des nœuds) ;
- les tensions aux bornes des branches sont égales : U = U₁ = U₂.

Exemple : deux lampes en dérivation sont traversées par 0,3 A et 0,5 A. L''ampèremètre de la branche principale indique 0,3 + 0,5 = 0,8 A.

## Fiche 3 : résistance et loi d''Ohm

Une résistance (ou conducteur ohmique) limite le courant. Sa valeur R s''exprime en ohms (Ω) et se mesure à l''ohmmètre, hors circuit.

Loi d''Ohm : la tension aux bornes d''un conducteur ohmique est proportionnelle à l''intensité qui le traverse : U = R × I. On en tire I = U / R et R = U / I.

La caractéristique U = f(I) d''un conducteur ohmique est une droite qui passe par l''origine. Son coefficient directeur est R.

Exemple : un conducteur ohmique de 220 Ω est traversé par 0,05 A. U = 220 × 0,05 = 11 V.

Association de résistances en série : la résistance équivalente est la somme, Re = R₁ + R₂. Avec 100 Ω et 150 Ω en série : Re = 250 Ω. Sous 5 V, I = 5 / 250 = 0,02 A = 20 mA.

## Fiche 4 : puissance électrique

Chaque appareil porte deux indications nominales, par exemple « 220 V – 1 000 W » : sa tension de fonctionnement normal et sa puissance consommée sous cette tension.

En courant continu (et pour les appareils de chauffage ou d''éclairage à incandescence en alternatif) : P = U × I, avec P en watts, U en volts, I en ampères.

Pour un conducteur ohmique, en combinant avec la loi d''Ohm : P = R × I² et P = U² / R.

Exemple : une lampe de 12 V – 6 W fonctionne normalement. I = P / U = 6 / 12 = 0,5 A.

Exemple : un fer à repasser 220 V – 1 100 W. I = 1 100 / 220 = 5 A. Sa résistance vaut R = U / I = 220 / 5 = 44 Ω. Vérification : P = R × I² = 44 × 25 = 1 100 W.

Les appareils qui chauffent (fer, bouilloire, chauffe-eau) ont les puissances les plus élevées. Plusieurs appareils puissants branchés sur la même multiprise font passer une grande intensité : risque d''échauffement et d''incendie. Le fusible ou le disjoncteur coupe le courant en cas de surintensité.

## Fiche 5 : énergie électrique

L''énergie consommée est E = P × t.
- Avec P en watts et t en secondes, E est en joules (J).
- Avec P en kilowatts et t en heures, E est en kilowattheures (kWh).

Exemple : un ventilateur de 60 W fonctionne 5 h. E = 60 × 5 = 300 Wh = 0,3 kWh. En joules : E = 60 × 5 × 3 600 = 1 080 000 J.

Coût : le compteur électrique mesure l''énergie en kWh. Coût = énergie (kWh) × prix du kWh. Pour l''exemple, prenons un prix fictif de 100 FCFA le kWh (le vrai tarif dépend de la tranche et des textes en vigueur). 0,3 kWh coûte 0,3 × 100 = 30 FCFA.

Bilan d''une maison sur une journée (prix fictif 100 FCFA/kWh) :
- 4 lampes de 15 W pendant 6 h : 4 × 15 × 6 = 360 Wh ;
- un téléviseur de 100 W pendant 4 h : 400 Wh ;
- un réfrigérateur de puissance moyenne 150 W pendant 24 h : 3 600 Wh.
Total : 360 + 400 + 3 600 = 4 360 Wh = 4,36 kWh, soit 4,36 × 100 = 436 FCFA.

## Points clés

- Ampèremètre en série, voltmètre en dérivation.
- U = R × I ; P = U × I ; E = P × t.
- 1 kWh = 3 600 000 J.

## Exercices pratiques

Exercice 1 : Dans un circuit en série, la pile délivre 9 V. La tension aux bornes de la lampe est 6 V. Quelle est la tension aux bornes du moteur, seul autre dipôle ?

Exercice 2 : Un conducteur ohmique est soumis à 12 V et traversé par 0,06 A. Calculer R.

Exercice 3 : On mesure, pour un conducteur ohmique : U = 2 V pour I = 0,01 A ; U = 4 V pour I = 0,02 A ; U = 6 V pour I = 0,03 A. Montrer que la loi d''Ohm est vérifiée et donner R.

Exercice 4 : Une bouilloire porte « 220 V – 2 000 W ». Calculer l''intensité qui la traverse en fonctionnement normal (arrondir au dixième).

Exercice 5 : Cette bouilloire fonctionne 15 minutes. Calculer l''énergie consommée en kWh puis en joules.

Exercice 6 : Dans un salon de coiffure à Thiès, un sèche-cheveux de 1 200 W fonctionne 2 h 30 min par jour. Calculer l''énergie consommée en 30 jours et son coût avec un prix fictif de 110 FCFA le kWh.

Exercice 7 : Deux conducteurs ohmiques de 40 Ω et 60 Ω sont montés en série sous 10 V. Calculer l''intensité du courant puis la tension aux bornes de chacun.

## Corrigé

Exercice 1 : En série, U = U₁ + U₂, donc U(moteur) = 9 − 6 = 3 V.

Exercice 2 : R = U / I = 12 / 0,06 = 200 Ω.

Exercice 3 : U / I = 2 / 0,01 = 4 / 0,02 = 6 / 0,03 = 200. Le rapport est constant : U est proportionnelle à I, la loi d''Ohm est vérifiée avec R = 200 Ω.

Exercice 4 : I = P / U = 2 000 / 220 ≈ 9,1 A.

Exercice 5 : t = 15 min = 0,25 h ; E = 2 kW × 0,25 h = 0,5 kWh. En joules : 0,5 × 3 600 000 = 1 800 000 J. Vérification : 2 000 W × 900 s = 1 800 000 J.

Exercice 6 : Par jour : 1,2 kW × 2,5 h = 3 kWh. En 30 jours : 90 kWh. Coût : 90 × 110 = 9 900 FCFA.

Exercice 7 : Re = 40 + 60 = 100 Ω ; I = 10 / 100 = 0,1 A. U₁ = 40 × 0,1 = 4 V ; U₂ = 60 × 0,1 = 6 V. Contrôle : 4 + 6 = 10 V.', 'texte', 55, false, 30
from public.courses c where c.slug = 'bfem-sciences-physiques'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Électricité : circuits, loi d''Ohm, puissance et énergie');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Mécanique et optique : forces, poids, équilibre, lentilles', '## Objectifs de la leçon

- Caractériser et représenter une force.
- Distinguer poids et masse, utiliser P = m × g.
- Énoncer les conditions d''équilibre d''un solide soumis à deux forces.
- Connaître la réflexion, la réfraction et les lentilles, construire une image.

## Fiche 1 : les forces

Une force est une action mécanique capable de mettre un objet en mouvement, de modifier son mouvement ou de le déformer. Elle peut être de contact (main qui pousse une charrette) ou à distance (attraction de la Terre, aimant).

Une force se représente par un vecteur (une flèche) défini par quatre caractéristiques :
- le point d''application ;
- la direction (la droite d''action) ;
- le sens ;
- l''intensité, en newtons (N), mesurée avec un dynamomètre.

Pour dessiner, on choisit une échelle, par exemple 1 cm pour 10 N : une force de 35 N est représentée par une flèche de 3,5 cm.

## Fiche 2 : poids et masse

La masse m mesure la quantité de matière ; elle s''exprime en kilogrammes et se mesure avec une balance. Elle ne dépend pas du lieu.

Le poids P est la force d''attraction exercée par la Terre sur un objet. Ses caractéristiques : point d''application au centre de gravité G, direction verticale, sens vers le bas, intensité P = m × g.

L''intensité de la pesanteur g vaut environ 9,8 N/kg à la surface de la Terre ; dans les exercices on prend souvent 10 N/kg si l''énoncé le précise. Sur la Lune, g vaut environ 1,6 N/kg : on y pèse environ six fois moins, mais la masse est la même.

Exemple : un sac de riz de 25 kg, avec g = 9,8 N/kg : P = 25 × 9,8 = 245 N.

## Fiche 3 : équilibre d''un solide soumis à deux forces

Un solide soumis à deux forces F₁ et F₂ est en équilibre si ces deux forces :
- ont la même droite d''action ;
- sont de sens contraires ;
- ont la même intensité.

On écrit F₁ + F₂ = 0 (somme vectorielle nulle).

Exemple : une calebasse de 2 kg est suspendue à un fil (g = 10 N/kg). Elle est soumise à son poids P (vertical, vers le bas, 20 N) et à la tension du fil T. À l''équilibre, T est verticale, vers le haut, et vaut 20 N. Le fil est vertical et passe par le centre de gravité.

Exemple : un livre posé sur une table est soumis à son poids et à la réaction R de la table : R = P, verticale, vers le haut.

Pour un solide soumis à trois forces non parallèles, à l''équilibre, les trois droites d''action sont dans un même plan et se coupent en un même point, et la somme vectorielle des forces est nulle.

## Fiche 4 : réflexion et réfraction

La lumière se propage en ligne droite dans un milieu transparent et homogène.

Réflexion sur un miroir plan : le rayon réfléchi est dans le plan d''incidence et l''angle de réflexion est égal à l''angle d''incidence (i = r), angles mesurés par rapport à la normale.

Réfraction : quand la lumière passe d''un milieu transparent à un autre (air vers eau), elle change de direction à la surface de séparation. De l''air vers l''eau ou le verre, le rayon se rapproche de la normale. C''est pourquoi un bâton plongé dans un seau d''eau paraît brisé. Un rayon qui arrive perpendiculairement à la surface (selon la normale) n''est pas dévié.

## Fiche 5 : les lentilles

- Lentille convergente : bords minces, centre épais ; elle fait converger un faisceau parallèle.
- Lentille divergente : bords épais, centre mince ; elle fait diverger un faisceau parallèle.

Éléments : centre optique O, axe optique, foyer image F′, foyer objet F (symétrique de F′ par rapport à O). La distance focale f = OF′. La vergence C = 1 / f, avec f en mètres et C en dioptries (δ). On compte f et C positifs pour une lentille convergente, négatifs pour une lentille divergente.

Exemple : f = 20 cm = 0,20 m, donc C = 1 / 0,20 = 5 δ. Une lentille de vergence −4 δ est divergente, de distance focale f = 1 / (−4) = −0,25 m.

Trois rayons particuliers pour une lentille convergente :
- un rayon passant par O n''est pas dévié ;
- un rayon parallèle à l''axe ressort en passant par F′ ;
- un rayon passant par F ressort parallèle à l''axe.

Construction de l''image d''un objet AB (A sur l''axe) : on trace deux rayons issus de B ; leur intersection donne B′, puis on abaisse la perpendiculaire à l''axe pour trouver A′.
- Objet situé plus loin de la lentille que F : image réelle, renversée, que l''on peut recueillir sur un écran. Si l''objet est à 2f de la lentille, l''image est à 2f de l''autre côté, de même taille.
- Objet entre F et O : image virtuelle, droite, agrandie : c''est le principe de la loupe.

Applications : l''œil (le cristallin est une lentille convergente), les lunettes, l''appareil photo, le projecteur. Un œil myope se corrige avec une lentille divergente, un œil hypermétrope avec une lentille convergente.

## Exercices pratiques

Exercice 1 : Donner les quatre caractéristiques du poids d''un ballon de 450 g (g = 10 N/kg).

Exercice 2 : Un astronaute a une masse de 80 kg. Calculer son poids sur Terre (g = 9,8 N/kg) et sur la Lune (g = 1,6 N/kg). Que vaut sa masse sur la Lune ?

Exercice 3 : Représenter à l''échelle 1 cm pour 50 N une force verticale vers le haut de 175 N. Quelle est la longueur de la flèche ?

Exercice 4 : Une lampe de 1,5 kg est suspendue au plafond par une chaîne. Faire l''inventaire des forces et donner les caractéristiques de la force exercée par la chaîne (g = 10 N/kg).

Exercice 5 : Un rayon lumineux arrive sur un miroir plan avec un angle d''incidence de 35°. Quel est l''angle de réflexion ? Quel angle fait le rayon réfléchi avec la surface du miroir ?

Exercice 6 : Calculer la vergence d''une lentille de distance focale 50 cm, puis la distance focale d''une lentille de vergence 8 δ.

Exercice 7 : Un objet AB de 2 cm est placé à 30 cm d''une lentille convergente de distance focale 15 cm. Où se forme l''image ? Donner sa nature et sa taille.

## Corrigé

Exercice 1 : m = 0,45 kg ; P = 0,45 × 10 = 4,5 N. Point d''application : centre de gravité du ballon ; direction : verticale ; sens : vers le bas ; intensité : 4,5 N.

Exercice 2 : Sur Terre : P = 80 × 9,8 = 784 N. Sur la Lune : P = 80 × 1,6 = 128 N. La masse reste 80 kg.

Exercice 3 : 175 / 50 = 3,5 cm. On trace une flèche verticale vers le haut de 3,5 cm.

Exercice 4 : Forces : le poids P et la tension T de la chaîne. P = 1,5 × 10 = 15 N. À l''équilibre, T a la même droite d''action (verticale passant par le centre de gravité), le sens vers le haut, et l''intensité 15 N.

Exercice 5 : i = r, donc r = 35°. L''angle avec la surface vaut 90° − 35° = 55°.

Exercice 6 : f = 0,50 m, C = 1 / 0,50 = 2 δ. Pour C = 8 δ : f = 1 / 8 = 0,125 m = 12,5 cm.

Exercice 7 : 30 cm = 2 × 15 cm : l''objet est à 2f. L''image se forme à 30 cm de l''autre côté de la lentille ; elle est réelle, renversée, et de même taille, 2 cm.', 'texte', 55, false, 40
from public.courses c where c.slug = 'bfem-sciences-physiques'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Mécanique et optique : forces, poids, équilibre, lentilles');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen : sujet d''entraînement corrigé', '## Présentation

Voici un sujet d''entraînement conçu pour ce cours, sur le modèle des épreuves de sciences physiques du BFEM. Ce n''est pas un sujet officiel. Fais-le en temps limité, sans document, avec une calculatrice, puis compare avec le corrigé. Les points indiqués sont une proposition de répartition sur 20 pour t''aider à t''auto-évaluer ; le barème réel est fixé par les correcteurs selon les textes officiels en vigueur.

## Sujet d''entraînement

## Partie A : Chimie (8 points)

Exercice 1 (4 points). Au laboratoire du collège de Kaolack, on fait réagir de la poudre de fer avec une solution d''acide chlorhydrique dilué.
- 1. Quels sont les ions présents dans l''acide chlorhydrique ?
- 2. On observe un dégagement gazeux. Nommer ce gaz et décrire le test d''identification.
- 3. Écrire l''équation-bilan de la réaction (on ne fait pas figurer les ions spectateurs).
- 4. On ajoute quelques gouttes de soude à la solution obtenue. Qu''observe-t-on ?
- 5. Pourquoi ne peut-on pas conserver de l''acide chlorhydrique dans un récipient en fer ?

Exercice 2 (4 points).
- 1. Équilibrer : CH₄ + O₂ → CO₂ + H₂O.
- 2. On dissout 15 g de sel dans de l''eau pour obtenir 500 mL de solution. Calculer la concentration massique.
- 3. Le pH d''un jus de citron vaut 2,5. Est-il acide ou basique ? Comment évolue son pH si on y ajoute beaucoup d''eau ?
- 4. L''atome de chlore gagne un électron. Écrire la formule de l''ion formé.

## Partie B : Physique (12 points)

Exercice 3 (6 points). Une installation solaire dans un village du Ferlo alimente, sous 12 V en courant continu, une lampe portant « 12 V – 9 W » et un petit ventilateur de 18 W, montés en dérivation.
- 1. Faire le schéma du montage avec le générateur, un interrupteur commandant l''ensemble, la lampe, le ventilateur (symbolisé par un moteur) et un ampèremètre mesurant l''intensité principale.
- 2. Calculer l''intensité dans la lampe et dans le ventilateur.
- 3. En déduire l''indication de l''ampèremètre.
- 4. Les deux appareils fonctionnent 4 h par jour. Calculer l''énergie consommée en une journée en Wh puis en joules.
- 5. On remplace la lampe par un conducteur ohmique de 24 Ω. Calculer l''intensité qui le traverse et la puissance qu''il reçoit.

Exercice 4 (6 points).
- 1. Une jarre d''eau de masse 12 kg est posée sur le sol (g = 10 N/kg). Calculer son poids. Faire l''inventaire des forces qui s''exercent sur elle et donner les caractéristiques de la réaction du sol.
- 2. Une lentille convergente a une vergence de 10 δ. Calculer sa distance focale en cm.
- 3. Un objet de 1 cm est placé à 5 cm de cette lentille. Situer l''objet par rapport au foyer F et dire quel type d''image on obtient. Quel instrument utilise ce principe ?
- 4. Un rayon passe de l''air dans l''eau. S''éloigne-t-il ou se rapproche-t-il de la normale ?

## Corrigé détaillé

Exercice 1.
- 1. Les ions H⁺ et Cl⁻ (0,5 point).
- 2. Le dihydrogène H₂ ; à l''approche d''une flamme, il produit une légère détonation (1 point).
- 3. Fe + 2 H⁺ → Fe²⁺ + H₂ (1 point ; 0,5 si non équilibrée).
- 4. Un précipité vert, caractéristique des ions Fe²⁺ (1 point).
- 5. Parce que l''acide attaque le fer : le récipient serait rongé (0,5 point).

Exercice 2.
- 1. CH₄ + 2 O₂ → CO₂ + 2 H₂O : à gauche 1 C, 4 H, 4 O ; à droite 1 C, 4 H, 2 + 2 = 4 O (1 point).
- 2. V = 0,5 L ; Cm = 15 / 0,5 = 30 g/L (1,5 point : formule, conversion, résultat avec unité).
- 3. pH 2,5 inférieur à 7 : acide. Dilué, son pH augmente et se rapproche de 7 (1 point).
- 4. Cl⁻ (0,5 point).

Exercice 3.
- 1. Schéma : générateur et interrupteur dans la branche principale avec l''ampèremètre en série ; lampe et moteur sur deux branches parallèles (1,5 point ; symboles normalisés exigés).
- 2. Lampe : I₁ = P / U = 9 / 12 = 0,75 A. Ventilateur : I₂ = 18 / 12 = 1,5 A (1,5 point).
- 3. Loi des nœuds : I = 0,75 + 1,5 = 2,25 A (1 point).
- 4. Puissance totale 9 + 18 = 27 W ; E = 27 × 4 = 108 Wh. En joules : 108 × 3 600 = 388 800 J (1 point).
- 5. En dérivation, la tension reste 12 V ; I = U / R = 12 / 24 = 0,5 A ; P = U × I = 12 × 0,5 = 6 W (1 point).

Exercice 4.
- 1. P = 12 × 10 = 120 N. Forces : le poids P et la réaction R du sol. R : point d''application au contact jarre-sol, direction verticale, sens vers le haut, intensité 120 N (2 points).
- 2. f = 1 / C = 1 / 10 = 0,1 m = 10 cm (1 point).
- 3. L''objet à 5 cm est entre le foyer F (à 10 cm) et la lentille : l''image est virtuelle, droite et agrandie. C''est le principe de la loupe (2 points).
- 4. Il se rapproche de la normale (1 point).

## Conseils de notation et de rédaction

- Une formule juste avec une erreur de calcul rapporte souvent une partie des points : écris toujours la formule littérale.
- Un résultat sans unité perd des points, même si le nombre est exact.
- Pour les schémas, les correcteurs regardent les symboles, la position des appareils de mesure et le soin.
- Dans un exercice à étapes, si tu bloques à une question, utilise une valeur plausible pour continuer et signale-le : la méthode des questions suivantes peut être valorisée.
- Garde 10 minutes à la fin pour relire unités, signes et équilibrage.

## Exercices pratiques

Exercice 1 : Refaire l''exercice 3 avec une lampe de 12 V – 6 W et un ventilateur de 24 W.

Exercice 2 : Une solution contient 4 g de soluté dans 200 mL. Calculer Cm.

Exercice 3 : Équilibrer : Zn + O₂ → ZnO.

Exercice 4 : Calculer le poids d''un élève de 45 kg avec g = 9,8 N/kg.

Exercice 5 : Une lentille a une distance focale de −20 cm. Calculer sa vergence et donner sa nature.

## Corrigé

Exercice 1 : I₁ = 6 / 12 = 0,5 A ; I₂ = 24 / 12 = 2 A ; I = 2,5 A ; E = 30 W × 4 h = 120 Wh = 432 000 J.

Exercice 2 : Cm = 4 / 0,2 = 20 g/L.

Exercice 3 : 2 Zn + O₂ → 2 ZnO.

Exercice 4 : P = 45 × 9,8 = 441 N.

Exercice 5 : f = −0,20 m ; C = 1 / (−0,20) = −5 δ : lentille divergente.', 'texte', 60, false, 50
from public.courses c where c.slug = 'bfem-sciences-physiques'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen : sujet d''entraînement corrigé');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : révision intensive « veille d''examen » en sciences physiques', '## Fiche du cours vidéo

- Durée : 1h30.
- Thème : séance de révision intensive de la veille de l''examen de sciences physiques.
- Objectifs : revoir les formules et définitions essentielles, corriger des exercices types, s''entraîner à gérer son temps, vérifier ses acquis par un quiz et une évaluation finale.
- Matériel : tableau ou diaporama, calculatrice, règle, crayon, fiche « formules et unités ».
- Prérequis : leçons 1 à 5 de ce cours.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

« Bonsoir à toutes et à tous. Demain, c''est l''épreuve de sciences physiques. Ce soir, nous n''allons pas apprendre de nouvelles choses : nous allons consolider ce que vous savez déjà. Le but est que vous arriviez demain calmes, avec les formules en tête et une méthode sûre. Préparez une feuille, un crayon et votre calculatrice. Pendant la séance, je vous demanderai souvent de mettre la vidéo en pause pour chercher seuls. »

Visuel : le plan de la séance en six étapes : chimie, électricité, mécanique, optique, quiz, gestion du temps et évaluation.

## 05:00 – 20:00 · Rappels clés de chimie

« Commençons par la chimie. Première idée : un corps pur contient une seule espèce chimique, un mélange en contient plusieurs. Deuxième idée : un ion est un atome qui a gagné ou perdu des électrons. Le fer perd deux électrons et devient Fe²⁺ ; le chlore en gagne un et devient Cl⁻. Troisième idée : dans une réaction chimique, les atomes se conservent, donc la masse se conserve. »

« Équilibrons ensemble la combustion du méthane. CH₄ plus O₂ donne CO₂ plus H₂O. À gauche, j''ai 4 atomes d''hydrogène : je mets un 2 devant H₂O. À droite j''ai maintenant 2 oxygènes dans CO₂ et 2 dans 2 H₂O, soit 4 : je mets 2 devant O₂. Résultat : CH₄ + 2 O₂ → CO₂ + 2 H₂O. On ne touche jamais aux indices. »

« Pour les solutions : Cm = m / V, avec V en litres. pH inférieur à 7, acide ; égal à 7, neutre ; supérieur à 7, basique. Une dilution rapproche le pH de 7. Enfin les métaux : l''acide chlorhydrique attaque le fer, le zinc et l''aluminium avec dégagement de dihydrogène ; il n''attaque pas le cuivre. Tests à la soude : vert pour Fe²⁺, bleu pour Cu²⁺, blanc pour Zn²⁺ et Al³⁺. »

Visuel : tableau récapitulatif des tests d''ions et des trois équations Fe, Zn, Al.

Question à poser : « Que donne l''aluminium avec l''acide ? » Réponse attendue : 2 Al + 6 H⁺ → 2 Al³⁺ + 3 H₂.

## 20:00 – 35:00 · Électricité : rappels et exercice corrigé

« Passons à l''électricité. Trois formules suffisent pour l''essentiel : U = R × I, P = U × I, E = P × t. Et deux règles de branchement : l''ampèremètre en série, le voltmètre en dérivation. En série, l''intensité est la même partout et les tensions s''additionnent. En dérivation, les tensions sont égales et les intensités s''additionnent. »

« Exercice. Une boutique à Ziguinchor utilise sous 220 V un réfrigérateur de 330 W et une lampe de 22 W, en dérivation. Mettez en pause et calculez les intensités, l''intensité totale et l''énergie consommée en 10 heures. »

« Correction. Réfrigérateur : I = P / U = 330 / 220 = 1,5 A. Lampe : I = 22 / 220 = 0,1 A. Intensité totale : 1,5 + 0,1 = 1,6 A. Puissance totale : 352 W. Énergie en 10 h : 352 × 10 = 3 520 Wh, soit 3,52 kWh. Si le kWh coûtait 100 FCFA, prix fictif, cela ferait 352 FCFA. Remarquez que je n''oublie jamais l''unité. »

Visuel : le schéma du montage en dérivation, avec l''ampèremètre dans la branche principale.

## 35:00 – 45:00 · Mécanique : forces, poids, équilibre

« Une force a quatre caractéristiques : point d''application, direction, sens, intensité en newtons. Le poids : appliqué au centre de gravité, vertical, vers le bas, intensité P = m × g. Attention : m en kilogrammes ! Un élève qui écrit 500 × 10 pour une masse de 500 g se trompe d''un facteur 1 000. »

« Équilibre sous deux forces : même droite d''action, sens contraires, même intensité. Exemple : un seau de 5 kg pendu à une corde, avec g = 10 N/kg. Le poids vaut 50 N. La tension de la corde est verticale, vers le haut, 50 N. »

Question à poser : « Sur la Lune, la masse du seau change-t-elle ? » Réponse : non, seul le poids change.

## 45:00 – 55:00 · Pause active : quiz éclair

« Mettez la vidéo en pause après chaque question, répondez par écrit, puis reprenez. »

- Question 1 : Quelle est l''unité de la vergence ? Réponse : la dioptrie (δ).
- Question 2 : Combien de joules dans 1 kWh ? Réponse : 3 600 000 J.
- Question 3 : Un pH de 9 indique une solution… ? Réponse : basique.
- Question 4 : Comment branche-t-on un voltmètre ? Réponse : en dérivation.
- Question 5 : Quelle lentille corrige la myopie ? Réponse : une lentille divergente.
- Question 6 : Quelle est la couleur du précipité de Cu²⁺ avec la soude ? Réponse : bleu.

« Comptez vos bonnes réponses. Cinq ou six : très bien. Moins de quatre : relisez la fiche formules ce soir, calmement. »

## 55:00 – 1:05:00 · Optique : rappels et construction commentée

« En optique, retenez : réflexion, angle d''incidence égal à l''angle de réflexion. Réfraction de l''air vers l''eau, le rayon se rapproche de la normale. Pour les lentilles : C = 1 / f, f en mètres. Une lentille convergente de 20 cm a une vergence de 5 δ. »

« Construction. Je dessine l''axe, la lentille, F et F′ à 2 cm de O sur mon schéma à l''échelle. L''objet AB, de 1 cm, est à 4 cm de la lentille, donc à 2f. Du point B, je trace un rayon qui passe par O : il n''est pas dévié. Puis un rayon parallèle à l''axe : il ressort par F′. Les deux se coupent en B′, à 4 cm derrière la lentille, sous l''axe. L''image est réelle, renversée, de même taille. Si je rapproche l''objet entre F et O, les rayons ne se coupent plus après la lentille : je prolonge en pointillés vers l''arrière, j''obtiens une image virtuelle, droite, agrandie : la loupe. »

Visuel : construction animée pas à pas.

## 1:05:00 – 1:15:00 · Gestion du temps et rédaction le jour J

« Demain, commencez par lire tout le sujet pendant cinq à dix minutes. Repérez les questions faciles : questions de cours, conversions, équilibrage. Faites-les d''abord pour sécuriser des points. Partagez votre temps selon le poids de chaque partie indiqué sur le sujet. Ne restez pas plus de dix minutes bloqués sur une question : passez, et revenez à la fin. »

« Pour la rédaction : données, conversion, formule littérale, application numérique, résultat avec unité. Les schémas se font à la règle, au crayon, avec légende. Gardez dix minutes pour la relecture : unités, signes des ions, coefficients des équations. »

« Ce soir : relisez votre fiche, préparez votre matériel, calculatrice avec des piles neuves, règle, crayon, gomme, et dormez tôt. Une nuit de sommeil vaut plus qu''une heure de révision supplémentaire. »

## 1:15:00 – 1:25:00 · Évaluation finale

« Voici cinq questions pour faire le point. Pause, réponses par écrit, puis correction. »

- Question 1 : Une résistance de 50 Ω est traversée par 0,2 A. Calculer la tension. Réponse : U = 50 × 0,2 = 10 V.
- Question 2 : Une lampe de 60 W fonctionne 3 h. Énergie en kWh ? Réponse : 60 × 3 = 180 Wh = 0,18 kWh.
- Question 3 : Équilibrer H₂ + O₂ → H₂O. Réponse : 2 H₂ + O₂ → 2 H₂O.
- Question 4 : Poids d''une moto de 120 kg avec g = 10 N/kg ? Réponse : 1 200 N.
- Question 5 : Distance focale d''une lentille de 4 δ ? Réponse : f = 1 / 4 = 0,25 m = 25 cm.

« Corrigeons ensemble. Pour la question 2, l''erreur classique est d''écrire 180 kWh : 180, ce sont des wattheures, il faut diviser par 1 000. Pour la question 5, n''oubliez pas de convertir le résultat en centimètres si on vous le demande. »

## 1:25:00 – 1:30:00 · Synthèse et encouragements

« Récapitulons : en chimie, conservation des atomes, pH et réactions des métaux ; en électricité, U = R × I, P = U × I, E = P × t ; en mécanique, P = m × g et les conditions d''équilibre ; en optique, C = 1 / f et les trois rayons particuliers. Avec une méthode rigoureuse et des unités justes, vous avez tout pour réussir. Bon courage pour demain, et bonne chance à toutes et à tous. »

Visuel final : fiche « formules et unités » à télécharger ou recopier.', 'video', 90, false, 60
from public.courses c where c.slug = 'bfem-sciences-physiques'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : révision intensive « veille d''examen » en sciences physiques');

-- Cours : Espagnol LV2 : réussir l'épreuve du BFEM
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'bfem-espagnol', (select id from public.levels where name = '3e'), null, 'Espagnol (LV2)', 'Espagnol LV2 : réussir l''épreuve du BFEM', 'Ce cours d''examen prépare l''épreuve d''espagnol LV2 du BFEM : méthode de compréhension écrite, vocabulaire thématique (famille, école, ville, santé, environnement), grammaire essentielle (ser et estar, présent, prétérit, futur, gustar, impératif, comparatifs) et expression écrite. Les explications sont en français et les exemples en espagnol. Prérequis : les bases d''espagnol acquises de la 4e à la 3e.', true, 108
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comprendre l''épreuve et méthode de travail', '## Objectifs de la leçon

- Savoir ce qu''on attend de toi à l''épreuve d''espagnol LV2 du BFEM.
- Connaître les types d''exercices et une méthode pour chacun.
- Éviter les erreurs les plus fréquentes.
- Organiser tes révisions sur 8 semaines.

## Comment se présente l''épreuve

L''épreuve d''espagnol LV2 s''appuie en général sur un texte court en espagnol (récit, dialogue, lettre, article simple) suivi de questions. On y trouve habituellement trois grandes familles d''exercices : la compréhension du texte, des exercices de langue (grammaire, conjugaison, vocabulaire) et une petite expression écrite. La durée, le coefficient et le barème dépendent des textes officiels en vigueur : renseigne-toi auprès de tes professeurs.

Les consignes sont souvent rédigées en espagnol. Il faut donc les comprendre parfaitement :
- Lee el texto : lis le texte.
- Contesta a las preguntas : réponds aux questions.
- Di si es verdadero o falso y justifica : dis si c''est vrai ou faux et justifie.
- Busca en el texto : cherche dans le texte.
- Completa con : complète avec.
- Conjuga los verbos en presente / en pretérito / en futuro : conjugue les verbes au présent, au prétérit, au futur.
- Traduce al francés : traduis en français.
- Redacta / Escribe unas líneas : rédige quelques lignes.

## Méthode pour la compréhension écrite

- Lis d''abord le titre, la source et les questions : ils annoncent le sujet.
- Lis le texte une première fois en entier sans t''arrêter aux mots inconnus.
- Repère qui parle, où, quand, ce qui se passe (¿quién?, ¿dónde?, ¿cuándo?, ¿qué?).
- Relis en cherchant la réponse à chaque question et souligne la phrase du texte qui la justifie.
- Réponds par une phrase complète en espagnol, en reprenant les mots de la question.

Exemple. Question : ¿Dónde vive Moussa? Réponse attendue : Moussa vive en Saint-Louis, con sus padres. Une réponse d''un seul mot (« Saint-Louis ») rapporte moins de points.

## Les mots interrogatifs à reconnaître

Ils portent toujours un accent écrit :
- ¿Quién? / ¿Quiénes? : qui ?
- ¿Qué? : que, quoi, quel ?
- ¿Dónde? / ¿Adónde? : où ? / vers où ?
- ¿Cuándo? : quand ?
- ¿Cómo? : comment ?
- ¿Por qué? : pourquoi ? (réponse : porque, parce que)
- ¿Cuánto? / ¿Cuántos? : combien ?
- ¿Cuál? : lequel, quel ?

Bien les identifier permet de savoir exactement quelle information chercher dans le texte.

## Méthode pour « vrai ou faux »

On écrit « Verdadero » ou « Falso » puis on recopie entre guillemets la courte phrase du texte qui prouve la réponse. Sans justification, la réponse ne vaut presque rien.

## Méthode pour l''expression écrite

- Lis bien le sujet : à qui écris-tu, sur quoi, combien de lignes ?
- Fais un petit plan au brouillon : introduction, deux ou trois idées, conclusion.
- Utilise des phrases simples et correctes plutôt que des phrases longues et fausses.
- Emploie des mots de liaison : primero (d''abord), luego (ensuite), además (de plus), pero (mais), porque (parce que), por eso (c''est pourquoi), por fin (enfin).
- Relis en vérifiant les accords, les accents et les terminaisons des verbes.

## Les erreurs fréquentes

- Oublier les accents écrits : está (il est) n''est pas esta (cette) ; habló (il a parlé) n''est pas hablo (je parle).
- Oublier les signes d''ouverture ¿ et ¡ : ¿Cómo estás? ¡Qué bonito!
- Confondre ser et estar.
- Calquer le français : « je suis 15 ans » se dit tengo quince años (avoir).
- Écrire un mot français à la place d''un mot espagnol (faux amis) : embarazada veut dire « enceinte », pas « embarrassée » ; constipado signifie « enrhumé ».
- Répondre en français alors qu''on demande une réponse en espagnol.

## Plan de révision sur 8 semaines

- Semaine 1 : consignes de l''épreuve, présent de l''indicatif, ser et estar.
- Semaine 2 : vocabulaire de la famille et de l''école ; compréhension de textes courts.
- Semaine 3 : gustar et verbes du même type, comparatifs et superlatifs.
- Semaine 4 : vocabulaire de la ville, de la santé et de l''environnement.
- Semaine 5 : prétérit (passé simple espagnol), réguliers et irréguliers.
- Semaine 6 : futur et impératif ; expression écrite (lettre, description, récit).
- Semaine 7 : sujets d''entraînement complets en temps limité.
- Semaine 8 : révision des tableaux de conjugaison et du cahier d''erreurs.

Chaque jour, apprends dix mots nouveaux avec une phrase d''exemple, lis un petit texte à voix haute et conjugue deux verbes à tous les temps étudiés.

## Exercices pratiques

Exercice 1 : Traduire les consignes : Contesta a las preguntas. Busca en el texto. Conjuga en futuro.

Exercice 2 : Ajouter les signes et accents manquants : Como te llamas? Que calor!

Exercice 3 : Répondre par une phrase complète : ¿Dónde vive Awa? (Elle vit à Ziguinchor.)

Exercice 4 : Corriger l''erreur : « Yo soy quince años. »

Exercice 5 : Texte : « Fatou se levanta a las seis. Después, va al colegio en autobús. » Vrai ou faux, justifier : Fatou va al colegio a pie.

Exercice 6 : Relier les idées avec un mot de liaison : Me gusta el colegio. Las clases son interesantes.

## Corrigé

Exercice 1 : Réponds aux questions. Cherche dans le texte. Conjugue au futur.

Exercice 2 : ¿Cómo te llamas? ¡Qué calor!

Exercice 3 : Awa vive en Ziguinchor.

Exercice 4 : Yo tengo quince años.

Exercice 5 : Falso : « va al colegio en autobús ».

Exercice 6 : Me gusta el colegio porque las clases son interesantes.', 'texte', 50, true, 10
from public.courses c where c.slug = 'bfem-espagnol'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comprendre l''épreuve et méthode de travail');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Vocabulaire thématique et compréhension écrite', '## Objectifs de la leçon

- Réviser le vocabulaire des cinq grands thèmes du collège.
- S''entraîner à comprendre un texte et à justifier ses réponses.

## Fiche 1 : la famille (la familia)

- el padre, la madre, los padres (les parents) ; el hijo, la hija ; el hermano, la hermana.
- el abuelo, la abuela ; el tío, la tía ; el primo, la prima ; el sobrino (le neveu).
- el marido / el esposo, la mujer / la esposa ; casado (marié), soltero (célibataire).
- mayor (aîné, plus âgé), menor (cadet) : mi hermano mayor.

Phrases utiles : Somos seis en mi familia. Tengo dos hermanos y una hermana. Mi abuela vive con nosotros.

## Fiche 2 : l''école (el colegio)

- el alumno, la alumna ; el profesor, la profesora ; el director.
- la clase, el aula (la salle), la pizarra (le tableau), el cuaderno, el libro, el bolígrafo, la regla.
- la asignatura (la matière) : las matemáticas, la historia, las ciencias, el francés, el inglés, el español.
- el recreo (la récréation), los deberes (les devoirs), el examen, aprobar (réussir un examen), suspender (échouer).

## Fiche 3 : la ville (la ciudad)

- la calle (la rue), la plaza, el barrio (le quartier), el mercado, la tienda, el hospital, la mezquita, la iglesia, el ayuntamiento (la mairie).
- el coche, el autobús, el taxi, la moto ; el tráfico, el atasco (l''embouteillage), el ruido.
- Expressions de lieu : cerca de (près de), lejos de (loin de), al lado de (à côté de), enfrente de (en face de), a la derecha, a la izquierda, todo recto (tout droit).

## Fiche 4 : la santé (la salud)

- el médico, la enfermera, el hospital, la farmacia, el medicamento.
- estar enfermo (être malade), tener fiebre (avoir de la fièvre), tener tos (tousser), me duele la cabeza (j''ai mal à la tête), me duelen los dientes.
- el paludismo (le paludisme), el mosquito, la mosquitera (la moustiquaire), lavarse las manos, el agua potable, hacer deporte.

Attention : doler fonctionne comme gustar. Me duele la cabeza (un seul élément), me duelen los ojos (plusieurs).

## Fiche 5 : l''environnement (el medio ambiente)

- la naturaleza, el árbol, el bosque, el río, el mar, la playa, la lluvia, la sequía (la sécheresse), el calor.
- la basura (les ordures), el plástico, la contaminación, reciclar, proteger, plantar árboles, ahorrar agua.
- Expressions : hay que + infinitif (il faut) ; no hay que (il ne faut pas) ; es importante + infinitif.

Exemple : Hay que proteger los árboles. No hay que tirar las bolsas de plástico en la calle.

## Texte d''entraînement

« Me llamo Khady y tengo catorce años. Vivo en Thiès con mis padres y mis dos hermanos. Mi padre es mecánico y mi madre vende telas en el mercado. Todos los días voy al colegio en bicicleta, porque está a dos kilómetros de mi casa. Mi asignatura preferida es la biología, porque quiero ser médica. El sábado pasado, mis compañeros y yo limpiamos el patio del colegio y plantamos diez árboles. Fue un día muy bonito. El año próximo, quiero organizar otra jornada de limpieza en mi barrio. »

Questions et méthode :
- Qui parle ? Khady, une élève de 14 ans.
- Où ? À Thiès.
- Quand ? Le présent (sa vie), le passé (el sábado pasado), le futur (el año próximo).
- Thème : l''école, la famille, l''environnement.

Note grammaticale du texte : limpiamos et plantamos sont ici au prétérit (« nous avons nettoyé », « nous avons planté »), car ils suivent el sábado pasado. Au présent, la forme serait la même : c''est le contexte qui indique le temps.

## Exercices pratiques

Exercice 1 : Traduire : el abuelo, la pizarra, el mercado, la fiebre, la basura, la sequía.

Exercice 2 : Donner le mot espagnol : la tante, le cahier, la rue, la pharmacie, l''arbre.

Exercice 3 : Compléter avec duele ou duelen : Me … la garganta. Le … los pies.

Exercice 4 : Questions sur le texte. ¿Cuántos años tiene Khady? ¿Qué hace su madre? ¿Cómo va al colegio?

Exercice 5 : Vrai ou faux, justifier avec le texte : a) Khady va al colegio en autobús. b) Khady quiere ser médica. c) Los alumnos plantaron veinte árboles.

Exercice 6 : Relever dans le texte trois verbes au présent, deux verbes au prétérit et une expression du futur.

Exercice 7 : Écrire trois phrases avec « hay que » pour protéger l''environnement de ton quartier.

Exercice 8 : Traduire en français : « Mi asignatura preferida es la biología, porque quiero ser médica. »

## Corrigé

Exercice 1 : le grand-père, le tableau, le marché, la fièvre, les ordures, la sécheresse.

Exercice 2 : la tía, el cuaderno, la calle, la farmacia, el árbol.

Exercice 3 : Me duele la garganta. Le duelen los pies.

Exercice 4 : Khady tiene catorce años. Su madre vende telas en el mercado. Va al colegio en bicicleta.

Exercice 5 : a) Falso : « voy al colegio en bicicleta ». b) Verdadero : « quiero ser médica ». c) Falso : « plantamos diez árboles ».

Exercice 6 : Présent : me llamo, tengo, vivo (aussi es, vende, voy, está, quiero). Prétérit : limpiamos, plantamos (et fue). Futur : quiero organizar otra jornada (el año próximo).

Exercice 7 : Exemples : Hay que reciclar el plástico. Hay que plantar árboles en el barrio. No hay que tirar basura en la calle.

Exercice 8 : Ma matière préférée est la biologie, parce que je veux être médecin.', 'texte', 55, false, 20
from public.courses c where c.slug = 'bfem-espagnol'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Vocabulaire thématique et compréhension écrite');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Grammaire 1 : ser et estar, présent, gustar, comparatifs', '## Objectifs de la leçon

- Choisir correctement entre ser et estar.
- Conjuguer le présent régulier et les principaux irréguliers.
- Employer gustar et les comparatifs.

## Fiche 1 : ser et estar

Les deux verbes se traduisent par « être », mais ne s''emploient pas dans les mêmes cas.

- ser : soy, eres, es, somos, sois, son.
- estar : estoy, estás, está, estamos, estáis, están.

On emploie ser pour :
- l''identité et la nationalité : Soy Mamadou. Somos senegaleses.
- la profession : Mi madre es enfermera.
- les caractéristiques durables : La casa es grande. Mi hermano es alto.
- l''heure et la date : Son las ocho. Hoy es lunes.
- la matière et l''origine : La mesa es de madera. Soy de Kolda.

On emploie estar pour :
- la localisation : Dakar está en la costa. El libro está en la mesa.
- un état passager : Estoy cansado. La sopa está caliente. Hoy estoy enfermo.
- la forme progressive estar + gérondif : Estoy estudiando (je suis en train d''étudier).

Le gérondif se forme avec -ando pour les verbes en -ar (hablando) et -iendo pour les verbes en -er et -ir (comiendo, viviendo).

Attention au changement de sens : Es aburrido (il est ennuyeux) ; está aburrido (il s''ennuie).

## Fiche 2 : le présent de l''indicatif

Verbes réguliers :
- hablar : hablo, hablas, habla, hablamos, habláis, hablan.
- comer : como, comes, come, comemos, coméis, comen.
- vivir : vivo, vives, vive, vivimos, vivís, viven.

Verbes à diphtongue (e devient ie, o devient ue, sauf aux formes nosotros et vosotros) :
- querer : quiero, quieres, quiere, queremos, queréis, quieren.
- poder : puedo, puedes, puede, podemos, podéis, pueden.
- dormir : duermo, duermes, duerme, dormimos, dormís, duermen.

Verbes en e qui devient i : pedir : pido, pides, pide, pedimos, pedís, piden.

Irréguliers à la première personne : tengo (tener), hago (hacer), salgo (salir), pongo (poner), conozco (conocer), sé (saber), doy (dar), veo (ver).

Très irréguliers :
- tener : tengo, tienes, tiene, tenemos, tenéis, tienen.
- ir : voy, vas, va, vamos, vais, van.

Les verbes pronominaux : levantarse : me levanto, te levantas, se levanta, nos levantamos, os levantáis, se levantan.

## Fiche 3 : gustar et les verbes du même type

Gustar signifie « plaire ». Ce qui plaît est le sujet, placé souvent après le verbe ; la personne est exprimée par un pronom.

- me gusta, te gusta, le gusta, nos gusta, os gusta, les gusta + un nom singulier ou un infinitif.
- me gustan, te gustan… + un nom pluriel.

Exemples : Me gusta el fútbol. Me gustan los mangos. Nos gusta bailar. A Fatou le gusta leer. A mis padres les gusta el thieboudienne.

Pour insister : A mí me gusta… ; A ti te gusta…
Pour la négation : No me gusta el ruido.
Même fonctionnement : encantar (adorer), doler (faire mal), interesar (intéresser) : Me encanta la música. Me interesan las ciencias.

## Fiche 4 : comparatifs et superlatifs

- Supériorité : más + adjectif + que : Dakar es más grande que Kaolack.
- Infériorité : menos + adjectif + que : El autobús es menos rápido que el avión.
- Égalité : tan + adjectif + como : Aminata es tan alta como su hermana.
- Égalité avec un nom : tanto, tanta, tantos, tantas + nom + como : Tengo tantos libros como tú.

Comparatifs irréguliers : mejor (meilleur), peor (pire), mayor (plus âgé ou plus grand), menor (plus jeune).
Exemple : Mi hermano es mayor que yo.

Superlatif relatif : el / la más + adjectif + de : Es el alumno más trabajador de la clase.
Superlatif absolu : -ísimo : grande devient grandísimo ; bonito devient bonitísimo ; rico devient riquísimo.

## Points clés

- ser : identité, caractère, heure ; estar : lieu, état, action en cours.
- gusta + singulier ou infinitif, gustan + pluriel.
- más / menos … que, tan … como.

## Exercices pratiques

Exercice 1 : Compléter avec ser ou estar au présent : Mi padre … profesor. Saint-Louis … en el norte de Senegal. Hoy (yo) … cansada. … las diez.

Exercice 2 : Conjuguer au présent : (nosotros) comer ; (ella) vivir ; (yo) tener ; (tú) poder ; (ellos) dormir ; (yo) hacer.

Exercice 3 : Compléter avec gusta ou gustan : Me … las frutas. A Ibrahima le … jugar al baloncesto. Nos … el verano.

Exercice 4 : Traduire : Mes parents aiment le cinéma. J''ai mal aux dents.

Exercice 5 : Comparer avec l''élément indiqué : la bicicleta / la moto (rápida, −). Mi hermana / mi prima (alta, =).

Exercice 6 : Mettre à la forme progressive : Leo un libro. Los niños juegan en la calle.

Exercice 7 : Écrire quatre phrases pour te présenter en utilisant ser, estar, tener et gustar.

## Corrigé

Exercice 1 : Mi padre es profesor. Saint-Louis está en el norte de Senegal. Hoy estoy cansada. Son las diez.

Exercice 2 : comemos ; vive ; tengo ; puedes ; duermen ; hago.

Exercice 3 : Me gustan las frutas. A Ibrahima le gusta jugar al baloncesto. Nos gusta el verano.

Exercice 4 : A mis padres les gusta el cine. Me duelen los dientes.

Exercice 5 : La bicicleta es menos rápida que la moto. Mi hermana es tan alta como mi prima.

Exercice 6 : Estoy leyendo un libro (leer donne leyendo, avec y). Los niños están jugando en la calle.

Exercice 7 : Exemple : Me llamo Ousmane y soy senegalés. Tengo quince años. Hoy estoy contento porque es sábado. Me gusta mucho el fútbol y me gustan las matemáticas.', 'texte', 55, false, 30
from public.courses c where c.slug = 'bfem-espagnol'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Grammaire 1 : ser et estar, présent, gustar, comparatifs');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Grammaire 2 : prétérit, futur, impératif et expression écrite', '## Objectifs de la leçon

- Conjuguer le prétérit (pretérito indefinido) et le futur.
- Former l''impératif affirmatif et négatif.
- Rédiger une lettre, une description ou un petit récit.

## Fiche 1 : le prétérit

Le prétérit exprime une action passée et terminée, souvent avec ayer, el año pasado, la semana pasada, en 1960, hace dos días. Il se traduit par le passé composé ou le passé simple français.

Verbes réguliers :
- hablar : hablé, hablaste, habló, hablamos, hablasteis, hablaron.
- comer : comí, comiste, comió, comimos, comisteis, comieron.
- vivir : viví, viviste, vivió, vivimos, vivisteis, vivieron.

Les accents écrits sont obligatoires sur la 1re et la 3e personne du singulier : hablé, habló.

Irréguliers essentiels :
- ser et ir (mêmes formes) : fui, fuiste, fue, fuimos, fuisteis, fueron.
- tener : tuve, tuviste, tuvo, tuvimos, tuvisteis, tuvieron.
- estar : estuve, estuviste, estuvo, estuvimos, estuvisteis, estuvieron.
- hacer : hice, hiciste, hizo, hicimos, hicisteis, hicieron.
- poder : pude ; poner : puse ; venir : vine ; querer : quise ; decir : dije (dijeron) ; dar : di, diste, dio.

Ces prétérits irréguliers ne portent pas d''accent écrit : tuve, hizo, fue.

Exemples : Ayer fui al mercado con mi madre. El año pasado, mi equipo ganó el campeonato. Senegal fue independiente en 1960.

## Fiche 2 : le futur

On ajoute à l''infinitif les terminaisons -é, -ás, -á, -emos, -éis, -án (les mêmes pour tous les verbes).
- hablar : hablaré, hablarás, hablará, hablaremos, hablaréis, hablarán.

Irréguliers (le radical change, les terminaisons restent) :
- tener : tendré ; salir : saldré ; venir : vendré ; poner : pondré ; poder : podré ; saber : sabré ; querer : querré ; hacer : haré ; decir : diré.

Futur proche : ir a + infinitif : Voy a estudiar esta tarde (je vais étudier cet après-midi).

Exemples : Mañana lloverá en Ziguinchor. El año próximo, iré al liceo. De mayor, seré ingeniera.

## Fiche 3 : l''impératif

Affirmatif :
- tú : forme de la 3e personne du présent : habla, come, vive.
- vosotros : infinitif avec -d à la place du -r : hablad, comed, vivid.
- usted / ustedes : on emploie les formes du subjonctif présent : hable / hablen, coma / coman, viva / vivan.

Impératifs irréguliers à la 2e personne du singulier : ten (tener), ven (venir), haz (hacer), di (decir), sal (salir), pon (poner), ve (ir), sé (ser).

Négatif : no + subjonctif présent. No hables. No comas. No vengas tarde. No hagáis ruido.

Pronoms : ils se placent après l''impératif affirmatif, attachés au verbe : Siéntate (assieds-toi), Levántate, Dímelo. Ils se placent avant le verbe à la forme négative : No te sientes.

Exemples de consignes de santé : Lávate las manos. Duerme bajo una mosquitera. No bebas agua sucia.

## Fiche 4 : l''expression écrite

La lettre amicale :
- Lieu et date : Kaolack, 12 de mayo de 2026.
- Formule d''appel : Querido Pablo / Querida Ana :
- Introduction : ¿Qué tal? Espero que estés bien.
- Corps : deux ou trois paragraphes (ta vie, un événement passé, tes projets).
- Formule finale : Un abrazo muy fuerte, Hasta pronto, Escríbeme pronto.
- Signature : Tu amigo, Cheikh.

La description (une personne, une ville) : présent, ser et estar, adjectifs, hay (il y a), comparatifs.

Le récit : prétérit, mots de liaison (primero, luego, después, por fin), expressions de temps (ayer, el domingo pasado).

Exemple de court récit : « El domingo pasado, fui a la playa de Yoff con mis primos. Primero, nadamos en el mar. Luego, comimos pescado a la parrilla. Por fin, volvimos a casa en autobús. Fue un día estupendo. »

Vérifie avant de rendre : temps cohérents, accords nom-adjectif (una casa bonita, unos árboles altos), accents, ponctuation espagnole.

## Exercices pratiques

Exercice 1 : Conjuguer au prétérit : (yo) comprar ; (ella) salir ; (nosotros) hablar ; (ellos) beber.

Exercice 2 : Conjuguer au prétérit : (yo) hacer ; (él) tener ; (ellos) ir ; (tú) estar.

Exercice 3 : Mettre au futur : Estudio mucho. Tenemos vacaciones. Hace calor. Salgo con mis amigos.

Exercice 4 : Mettre à l''impératif (tú), puis à la forme négative : cerrar la puerta (cierra) ; hablar en clase ; venir aquí.

Exercice 5 : Donner trois conseils à un camarade malade, à l''impératif (tú).

Exercice 6 : Mettre le texte au prétérit en commençant par « Ayer » : Me levanto a las siete. Voy al colegio. Tengo un examen de español.

Exercice 7 : Écrire une lettre de 8 à 10 lignes à un ami espagnol pour raconter ta dernière fête de fin d''année au collège et lui dire ce que tu feras pendant les vacances.

## Corrigé

Exercice 1 : compré ; salió ; hablamos ; bebieron.

Exercice 2 : hice ; tuvo ; fueron ; estuviste.

Exercice 3 : Estudiaré mucho. Tendremos vacaciones. Hará calor. Saldré con mis amigos.

Exercice 4 : Cierra la puerta / No cierres la puerta. Habla en clase / No hables en clase. Ven aquí / No vengas aquí.

Exercice 5 : Exemples : Toma tus medicamentos. Bebe mucha agua. Descansa y no vayas al colegio hoy.

Exercice 6 : Ayer me levanté a las siete. Fui al colegio. Tuve un examen de español.

Exercice 7 : Modèle : « Dakar, 20 de junio de 2026. Querido Javier: ¿Qué tal? Yo estoy muy bien. El viernes pasado, celebramos la fiesta de fin de curso en mi colegio. Mis compañeros bailaron y yo canté una canción en español. Comimos arroz con pollo y bebimos zumo de bissap. Fue un día muy alegre. Durante las vacaciones, iré a Saint-Louis a casa de mis abuelos. Visitaré la ciudad y ayudaré a mi abuelo en su tienda. ¿Y tú? ¿Qué harás este verano? Escríbeme pronto. Un abrazo, tu amiga Mariama. »', 'texte', 60, false, 40
from public.courses c where c.slug = 'bfem-espagnol'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Grammaire 2 : prétérit, futur, impératif et expression écrite');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen : sujet d''entraînement corrigé', '## Présentation

Voici un sujet d''entraînement conçu pour ce cours, sur le modèle des épreuves d''espagnol LV2 du BFEM. Ce n''est pas un sujet officiel. Traite-le en temps limité, sans dictionnaire, puis compare avec le corrigé. La répartition des points sur 20 est indicative ; le barème réel relève des textes officiels en vigueur et des correcteurs.

## Texte

« Un día en el hospital

Me llamo Babacar y vivo en Kolda con mi familia. El mes pasado, mi hermana pequeña, Ndèye, tuvo fiebre y dolor de cabeza durante tres días. Mi madre estaba muy preocupada. Por eso, la llevamos al hospital del barrio. Allí, una enfermera muy amable nos recibió. El médico examinó a Ndèye y dijo: “Tiene paludismo. Tiene que tomar estos medicamentos y descansar.” Después, nos explicó: “En la estación de lluvias, hay muchos mosquitos. Dormid siempre bajo una mosquitera y no dejéis agua sucia cerca de la casa.”

Ahora Ndèye está bien y va otra vez al colegio. Desde aquel día, en mi familia todos dormimos bajo una mosquitera. Más tarde, quiero ser médico para ayudar a la gente de mi región. »

Vocabulaire : preocupada : inquiète ; descansar : se reposer ; la gente : les gens.

## Questions

I. Compréhension (8 points)
- 1. ¿Dónde vive Babacar? (1 point)
- 2. ¿Qué tuvo Ndèye? (1 point)
- 3. ¿Quién recibió a la familia en el hospital? (1 point)
- 4. Verdadero o falso, justifica: a) Ndèye estuvo enferma una semana. b) El médico dio consejos a la familia. (2 points)
- 5. ¿Qué profesión quiere tener Babacar y por qué? (1,5 point)
- 6. Traduce al francés : « Ahora Ndèye está bien y va otra vez al colegio. » (1,5 point)

II. Langue (6 points)
- 1. Relève deux verbes au prétérit et donne leur infinitif. (1 point)
- 2. Conjugue au présent : Mi madre (estar) preocupada. Los mosquitos (ser) peligrosos. (1 point)
- 3. Mets au futur : Tomo los medicamentos. Vamos al hospital. (1 point)
- 4. Transforme à l''impératif (tú), puis à la forme négative : dormir bajo una mosquitera. (1 point)
- 5. Complète avec gusta ou gustan : A Ndèye le … el colegio. Me … las ciencias. (1 point)
- 6. Compare : la ciudad de Kolda / la ciudad de Dakar (pequeña, +). (1 point)

III. Expression écrite (6 points)
Tu as été malade et tu as manqué l''école. Écris 8 à 10 lignes à ton correspondant espagnol pour raconter ce qui s''est passé et ce que tu fais maintenant pour rester en bonne santé.

## Corrigé détaillé

I. Compréhension
- 1. Babacar vive en Kolda con su familia.
- 2. Ndèye tuvo fiebre y dolor de cabeza ; tuvo paludismo.
- 3. Una enfermera muy amable recibió a la familia.
- 4. a) Falso : « tuvo fiebre y dolor de cabeza durante tres días ». b) Verdadero : « nos explicó: … Dormid siempre bajo una mosquitera ».
- 5. Babacar quiere ser médico para ayudar a la gente de su región.
- 6. Maintenant Ndèye va bien et va de nouveau à l''école.

II. Langue
- 1. Par exemple : tuvo (tener), llevamos (llevar), recibió (recibir), examinó (examinar), dijo (decir), explicó (explicar).
- 2. Mi madre está preocupada. Los mosquitos son peligrosos.
- 3. Tomaré los medicamentos. Iremos al hospital.
- 4. Duerme bajo una mosquitera. No duermas sin mosquitera. (La forme négative de « duerme » est « no duermas ».)
- 5. A Ndèye le gusta el colegio. Me gustan las ciencias.
- 6. La ciudad de Kolda es más pequeña que la ciudad de Dakar.

III. Expression écrite : modèle
« Kolda, 3 de marzo de 2026. Querida Lucía: ¿Qué tal estás? La semana pasada estuve enfermo. Tuve fiebre y me dolía mucho la cabeza. Mi padre me llevó al médico y el médico me dio medicamentos. No fui al colegio durante cuatro días. Ahora estoy mejor. Para estar sano, duermo bajo una mosquitera, me lavo las manos antes de comer y bebo agua potable. También hago deporte con mis amigos. ¿Y tú? ¿Cómo estás? Escríbeme pronto. Un abrazo, Moussa. »

## Conseils de notation

- En compréhension, une réponse complète et justifiée par le texte vaut plus qu''un simple mot.
- En langue, chaque accent oublié peut coûter des points : hablo n''est pas habló.
- En expression écrite, les correcteurs regardent généralement : le respect de la consigne (destinataire, sujet, longueur), la correction de la langue, la richesse du vocabulaire et l''organisation. Un texte simple mais sans erreurs est préférable à un texte ambitieux plein de fautes.
- Ne recopie pas des phrases entières du texte dans ta rédaction : reformule.

## Exercices pratiques

Exercice 1 : Relever dans le texte une phrase à l''impératif et dire à qui elle s''adresse.

Exercice 2 : Mettre au prétérit : El médico examina a la niña.

Exercice 3 : Pourquoi écrit-on « está bien » et non « es bien » ?

Exercice 4 : Traduire : Il faut dormir sous une moustiquaire.

Exercice 5 : Écrire deux conseils à un ami à l''impératif négatif.

## Corrigé

Exercice 1 : « Dormid siempre bajo una mosquitera » : impératif à la 2e personne du pluriel (vosotros), le médecin s''adresse à toute la famille.

Exercice 2 : El médico examinó a la niña.

Exercice 3 : Parce qu''il s''agit d''un état passager (la santé), on emploie estar.

Exercice 4 : Hay que dormir bajo una mosquitera.

Exercice 5 : No bebas agua sucia. No dejes agua cerca de la casa.', 'texte', 60, false, 50
from public.courses c where c.slug = 'bfem-espagnol'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen : sujet d''entraînement corrigé');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : révision intensive « veille d''examen » en espagnol', '## Fiche du cours vidéo

- Durée : 1h30.
- Thème : séance de révision intensive de la veille de l''épreuve d''espagnol LV2.
- Objectifs : revoir les points de grammaire les plus évalués, réactiver le vocabulaire, corriger des exercices types, préparer l''expression écrite et la gestion du temps.
- Matériel : tableau ou diaporama, cahier, tableaux de conjugaison.
- Prérequis : leçons 1 à 5 de ce cours.

## Déroulé minuté

## 00:00 – 05:00 · Bienvenida : accueil et objectifs

« ¡Hola a todos! Bonsoir. Demain, c''est l''épreuve d''espagnol. Ce soir, nous allons faire une révision efficace, sans stress. Je parlerai surtout en français, avec beaucoup d''exemples en espagnol. Ayez un cahier et un stylo. Quand je dis « pausa », vous arrêtez la vidéo et vous cherchez seuls. »

« Avant de commencer, un mot sur l''état d''esprit. La veille d''un examen, on a souvent l''impression de ne rien savoir. C''est normal, et c''est faux. Vous avez étudié l''espagnol pendant plusieurs années : vous connaissez déjà beaucoup de choses. Ce soir, on range ces connaissances dans de bonnes cases, pour pouvoir les retrouver vite demain. »

Visuel : plan de la séance : consignes, ser et estar, temps verbaux, gustar et comparatifs, quiz, compréhension, expression écrite, évaluation finale.

## 05:00 – 15:00 · Les consignes de l''examen

« Première chose : il faut comprendre les consignes. Contesta a las preguntas : réponds aux questions. Verdadero o falso, justifica con el texto : vrai ou faux, justifie avec le texte. Busca en el texto : cherche dans le texte. Conjuga en pretérito : conjugue au prétérit. Traduce al francés. Redacta unas líneas. Beaucoup d''élèves perdent des points parce qu''ils font autre chose que ce qui est demandé. »

« Rappel : pour un vrai ou faux, on écrit le mot, puis on cite entre guillemets la phrase courte du texte. »

« Deuxième rappel : les mots interrogatifs. Quién, qué, dónde, cuándo, cómo, por qué, cuántos. Ils portent tous un accent. Quand la question commence par ¿Por qué?, votre réponse commence par Porque, en un seul mot et sans accent. Quand la question demande ¿Cuántos años tiene?, la réponse utilise tener : Tiene quince años. Reprenez toujours les mots de la question pour construire une phrase complète. »

« Pausa. Répondez à cette question sur vous-mêmes, par une phrase complète : ¿Dónde vives y con quién? Correction possible : Vivo en Pikine con mis padres y mis hermanos. »

## 15:00 – 30:00 · Ser, estar et le présent

« Ser : soy, eres, es, somos, sois, son. Estar : estoy, estás, está, estamos, estáis, están. Ser pour ce qui définit : identité, nationalité, profession, caractère, heure. Estar pour le lieu et l''état passager. Exemples au tableau : Soy senegalés. Mi tía es comerciante. Son las nueve. Mais : Touba está en la región de Diourbel. Hoy estoy nervioso porque mañana tengo el examen. »

« Pausa. Complétez : Mi colegio … grande. Mi colegio … cerca del mercado. »

« Correction : Mi colegio es grande, c''est une caractéristique. Mi colegio está cerca del mercado, c''est une localisation. »

« Révision rapide du présent : hablo, hablas, habla, hablamos, habláis, hablan. Pensez aux diphtongues : quiero, puedo, duermo. Et aux premières personnes irrégulières : tengo, hago, salgo, pongo, conozco. »

## 30:00 – 42:00 · Prétérit, futur, impératif

« Le prétérit raconte une action terminée : hablé, habló ; comí, comió ; viví, vivió. N''oubliez jamais l''accent. Les irréguliers : fui, tuve, estuve, hice, hizo, dije. Le futur : infinitif plus é, ás, á, emos, éis, án : estudiaré, comeré. Irréguliers : tendré, haré, saldré, vendré, podré. L''impératif : habla, come, vive ; ven, ten, haz, di, sal, pon. À la forme négative : no hables, no comas, no vengas. »

« Pausa. Mettez au prétérit : Hoy voy al colegio y tengo clase de español. »

« Correction : Ayer fui al colegio y tuve clase de español. Fui, tuve : prétérits irréguliers sans accent. »

« Encore une pausa. Mettez au futur : Mañana (yo, hacer) los deberes y (nosotros, salir) al parque. Correction : Mañana haré los deberes y saldremos al parque. Haré vient de hacer, saldremos de salir : radical irrégulier, terminaisons régulières. Dernier piège : n''oubliez pas l''accent du futur sauf à la forme nosotros : haré, harás, hará, haremos, haréis, harán. »

## 42:00 – 50:00 · Gustar et comparatifs

« Gustar : ce qui plaît est le sujet. Me gusta el arroz. Me gustan los plátanos. A mi hermano le gusta dibujar. Comparatifs : más … que, menos … que, tan … como. Dakar es más grande que Thiès. Mejor, peor, mayor, menor. Superlatif : el más simpático de la clase ; grandísimo. »

## 50:00 – 58:00 · Pause interactive : quiz

« Pausa après chaque question. »

- Pregunta 1 : Traduire « j''ai quatorze ans ». Respuesta : Tengo catorce años.
- Pregunta 2 : Prétérit de « hacer » à la 3e personne du singulier ? Respuesta : hizo.
- Pregunta 3 : Compléter : Me … los deportes. Respuesta : gustan.
- Pregunta 4 : Futur de « tener », 1re personne du singulier ? Respuesta : tendré.
- Pregunta 5 : Ser ou estar : Mi abuelo … en el hospital. Respuesta : está.
- Pregunta 6 : Impératif (tú) de « venir » ? Respuesta : ven.

« Cinq ou six bonnes réponses : excellent. Moins de quatre : relisez ce soir les tableaux de conjugaison, calmement. »

## 58:00 – 1:08:00 · Compréhension écrite commentée

Visuel : un court texte. « Me llamo Aliou. Vivo en Mbour, cerca del mar. Mi padre es pescador. Cada mañana sale en su piragua. El año pasado, el mar estuvo muy agitado y mi padre no pudo pescar durante dos semanas. Hoy, en mi barrio, los jóvenes limpian la playa todos los sábados. »

« Lisons ensemble. Qui ? Aliou. Où ? À Mbour. Que fait son père ? Il est pêcheur. Question : ¿Por qué el padre no pudo pescar? Réponse complète : Porque el mar estuvo muy agitado. Vrai ou faux : Los jóvenes limpian la playa cada domingo. Faux : « todos los sábados ». Remarquez les temps : présent pour l''habitude, prétérit pour l''événement de l''année passée : estuvo, pudo. »

## 1:08:00 – 1:18:00 · Expression écrite et gestion du temps

« Pour la rédaction, gardez au moins un quart de votre temps. Faites un plan au brouillon : introduction, deux ou trois idées, conclusion. Utilisez des mots de liaison : primero, luego, además, pero, porque, por eso, por fin. Écrivez des phrases courtes et justes. Relisez les accents et les terminaisons. »

« Exemple d''introduction pour une lettre : Querida Elena: ¿Qué tal? Te escribo para contarte mis vacaciones. Exemple de conclusion : Escríbeme pronto. Un abrazo. »

« Pausa. Écrivez trois phrases sur ce sujet : « Describe tu barrio ». Puis comparez avec ce modèle : Vivo en un barrio tranquilo de Kaolack. Hay una mezquita, un mercado y una escuela. Mi casa está cerca del mercado. Me gusta mi barrio porque la gente es amable, pero hay mucha basura en las calles. Por eso, hay que organizar jornadas de limpieza. Remarquez : présent, hay, ser et estar bien choisis, gustar, un mot de liaison, une proposition avec hay que. C''est simple, correct et complet. »

« Gestion du temps : lisez tout le sujet d''abord, commencez par la compréhension, puis la langue, puis la rédaction. Ne restez pas bloqués sur un mot inconnu : le contexte suffit souvent. Gardez cinq minutes pour la relecture : signes ¿ ¡, accents, accords. »

## 1:18:00 – 1:26:00 · Évaluation finale

« Cinq questions. Pausa, puis correction. »

- 1. Conjuguer « vivir » au présent, 1re personne du pluriel. Respuesta : vivimos.
- 2. Mettre au prétérit : Ella habla con el profesor. Respuesta : Ella habló con el profesor.
- 3. Traduire : Nous irons à Dakar. Respuesta : Iremos a Dakar.
- 4. Comparer : Senegal / Gambia (grande, +). Respuesta : Senegal es más grande que Gambia.
- 5. Impératif négatif (tú) de « tirar la basura en la calle ». Respuesta : No tires la basura en la calle.

« Correction commentée : à la question 2, l''accent sur habló est indispensable, sinon c''est « je parle ». À la question 5, tirar donne tires au subjonctif : la voyelle a devient e. »

« Comptez vos points. Si vous avez eu une erreur à la question 3, revoyez le futur irrégulier : ir donne iré, irás, irá, iremos, iréis, irán, sur la base de l''infinitif complet. Si vous avez hésité à la question 4, rappelez-vous la structure fixe : más, adjectif, que. Et l''adjectif s''accorde : Senegal es más grande, la ciudad es más pequeña. Ce sont exactement ces petits détails qui font la différence entre une copie moyenne et une bonne copie. »

## 1:26:00 – 1:30:00 · Síntesis : synthèse et encouragements

« Récapitulons : ser pour définir, estar pour situer et décrire un état ; le prétérit avec ses accents ; le futur sur l''infinitif ; gustar qui s''accorde avec ce qui plaît ; des réponses complètes et justifiées ; une rédaction simple, organisée et relue. Ce soir, préparez vos affaires et dormez bien. Mañana, ¡mucha suerte a todos! Vous êtes prêts. »

Visuel final : fiche récapitulative des conjugaisons.', 'video', 90, false, 60
from public.courses c where c.slug = 'bfem-espagnol'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : révision intensive « veille d''examen » en espagnol');

-- Cours : Arabe LV2 : réussir l'épreuve du BFEM
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'bfem-arabe', (select id from public.levels where name = '3e'), null, 'Arabe (LV2)', 'Arabe LV2 : réussir l''épreuve du BFEM', 'Ce cours d''examen prépare l''épreuve d''arabe LV2 du BFEM : lecture et compréhension d''un texte, grammaire de base (pronoms, phrase nominale et phrase verbale, accompli et inaccompli, nombres, accords), vocabulaire thématique et expression écrite. Les explications sont en français, les exemples en arabe vocalisé avec translittération. Prérequis : savoir lire l''alphabet arabe et connaître les bases étudiées au collège.', true, 109
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comprendre l''épreuve et méthode de travail', '## Objectifs de la leçon

- Savoir ce que l''on attend de toi à l''épreuve d''arabe LV2 du BFEM.
- Comprendre les consignes écrites en arabe.
- Adopter une méthode pour chaque type d''exercice et éviter les erreurs fréquentes.
- Organiser tes révisions sur 8 semaines.

## Comment se présente l''épreuve

L''épreuve d''arabe LV2 s''appuie en général sur un texte court en arabe, souvent vocalisé, suivi de questions. On y trouve habituellement trois familles d''exercices : la compréhension du texte, des exercices de langue (grammaire, conjugaison, vocabulaire) et une petite production écrite. La durée, le coefficient et le barème dépendent des textes officiels en vigueur : renseigne-toi auprès de ton professeur.

## Convention de translittération utilisée dans ce cours

Pour t''aider à lire, chaque exemple arabe est suivi d''une transcription en lettres latines :
- ā, ī, ū : voyelles longues (alif, yāʾ, wāw) ;
- ʿ : la lettre ʿayn (ع) ; ʾ : la hamza (ء) ;
- ḥ (ح), ṣ (ص), ḍ (ض), ṭ (ط), ẓ (ظ) : consonnes emphatiques ou profondes ;
- th (ث), dh (ذ), kh (خ), gh (غ), sh (ش).

## Les consignes à connaître

- اِقْرَأِ النَّصَّ (iqraʾi n-naṣṣa) : lis le texte.
- أَجِبْ عَنِ الْأَسْئِلَةِ (ajib ʿani l-asʾilati) : réponds aux questions.
- صَحِيحٌ أَمْ خَطَأٌ؟ (ṣaḥīḥun am khaṭaʾun?) : vrai ou faux ?
- اِمْلَأِ الْفَرَاغَ (imlaʾi l-farāgha) : remplis le vide, complète.
- ضَعْ خَطًّا تَحْتَ (ḍaʿ khaṭṭan taḥta) : souligne.
- صَرِّفِ الْفِعْلَ (ṣarrifi l-fiʿla) : conjugue le verbe.
- تَرْجِمْ إِلَى الْفَرَنْسِيَّةِ (tarjim ilā l-faransiyyati) : traduis en français.
- اُكْتُبْ (uktub) : écris.

## Méthode pour la compréhension

- Lis le titre et les questions avant le texte : ils t''indiquent le thème.
- Lis le texte une première fois en entier, sans t''arrêter sur les mots inconnus.
- Repère les mots interrogatifs des questions : مَنْ (man, qui ?), مَا / مَاذَا (mā / mādhā, quoi ?), أَيْنَ (ayna, où ?), مَتَى (matā, quand ?), كَيْفَ (kayfa, comment ?), كَمْ (kam, combien ?), لِمَاذَا (limādhā, pourquoi ?), هَلْ (hal, est-ce que ?).
- Cherche dans le texte la phrase qui contient la réponse et souligne-la.
- Réponds par une phrase complète en reprenant les mots de la question.

Exemple. Question : أَيْنَ يَسْكُنُ عُمَرُ؟ (ayna yaskunu ʿUmaru? : où habite Omar ?). Réponse complète : يَسْكُنُ عُمَرُ فِي دَاكَار (yaskunu ʿUmaru fī Dākār : Omar habite à Dakar).

## Méthode pour la production écrite

- Lis bien le sujet : de quoi dois-tu parler, en combien de lignes ?
- Prépare au brouillon une liste de mots et de phrases simples que tu maîtrises.
- Écris des phrases courtes : une phrase nominale ou verbale correcte vaut mieux qu''une phrase longue et fausse.
- Relie tes idées avec وَ (wa, et), ثُمَّ (thumma, puis), لَكِنَّ (lākinna, mais), لِأَنَّ (li-anna, parce que).
- Relis : accords, points sur les lettres, tāʾ marbūṭa (ة), article.

## Les erreurs fréquentes

- Confondre des lettres proches : ح et ه, ع et ء, س et ص, ت et ط, د et ض, ز, ذ et ظ.
- Oublier ou mal placer les points : ب ت ث ن ي ne se distinguent que par eux.
- Confondre la tāʾ marbūṭa (ة) du féminin et le hāʾ (ه) : مَدْرَسَةٌ (madrasatun, école) mais كِتَابُهُ (kitābuhu, son livre).
- Oublier l''accord en genre : on dit الْبِنْتُ صَغِيرَةٌ (al-bintu ṣaghīratun) et non الْبِنْتُ صَغِيرٌ.
- Écrire le verbe au masculin avec un sujet féminin : ذَهَبَتْ فَاطِمَةُ (dhahabat Fāṭimatu).
- Traduire mot à mot depuis le français.

## Plan de révision sur 8 semaines

- Semaine 1 : lecture, voyelles, signes (sukūn, shadda, tanwīn), article et lettres solaires.
- Semaine 2 : pronoms personnels et suffixes possessifs ; démonstratifs.
- Semaine 3 : phrase nominale, phrase verbale, négation, interrogation.
- Semaine 4 : conjugaison à l''accompli et à l''inaccompli ; futur.
- Semaine 5 : nombres et accords (adjectif, verbe, pluriel non humain).
- Semaine 6 : vocabulaire : famille, école, ville, santé, environnement.
- Semaine 7 : production écrite (se présenter, décrire, raconter) et sujets d''entraînement.
- Semaine 8 : sujets complets en temps limité et relecture du cahier d''erreurs.

Chaque jour : lis à voix haute un petit texte vocalisé, apprends huit mots avec leur pluriel, conjugue un verbe aux deux formes.

## Exercices pratiques

Exercice 1 : Traduire les consignes : أَجِبْ عَنِ الْأَسْئِلَةِ ; صَرِّفِ الْفِعْلَ ; اُكْتُبْ.

Exercice 2 : Donner le sens des interrogatifs : أَيْنَ ; مَتَى ; كَمْ ; لِمَاذَا.

Exercice 3 : Classer selon la dernière lettre (ة ou ه) : مَدْرَسَة ; بَيْتُهُ ; سَيَّارَة ; قَلَمُهُ.

Exercice 4 : Corriger : الْمُعَلِّمَةُ مُجْتَهِدٌ.

Exercice 5 : Répondre par une phrase complète : أَيْنَ تَسْكُنُ عَائِشَةُ؟ (Elle habite à Dakar.)

Exercice 6 : Citer quatre paires de lettres qu''il ne faut pas confondre.

## Corrigé

Exercice 1 : Réponds aux questions ; conjugue le verbe ; écris.

Exercice 2 : أَيْنَ (ayna) : où ? ; مَتَى (matā) : quand ? ; كَمْ (kam) : combien ? ; لِمَاذَا (limādhā) : pourquoi ?

Exercice 3 : Avec ة (tāʾ marbūṭa, féminin) : مَدْرَسَة (madrasa, école), سَيَّارَة (sayyāra, voiture). Avec ه (pronom « son, sa ») : بَيْتُهُ (baytuhu, sa maison), قَلَمُهُ (qalamuhu, son stylo).

Exercice 4 : الْمُعَلِّمَةُ مُجْتَهِدَةٌ (al-muʿallimatu mujtahidatun : l''enseignante est travailleuse). L''adjectif s''accorde au féminin.

Exercice 5 : تَسْكُنُ عَائِشَةُ فِي دَاكَار (taskunu ʿĀʾishatu fī Dākār).

Exercice 6 : Par exemple : ح / ه ; ع / ء ; س / ص ; ت / ط ; د / ض ; ذ / ظ.', 'texte', 50, true, 10
from public.courses c where c.slug = 'bfem-arabe'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comprendre l''épreuve et méthode de travail');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Lecture et compréhension d''un texte', '## Objectifs de la leçon

- Revoir les règles de lecture : voyelles, signes, article.
- Lire et comprendre un texte court vocalisé.
- Répondre à des questions de compréhension par des phrases complètes.

## Fiche 1 : voyelles et signes

L''alphabet arabe compte 28 lettres, qui s''écrivent de droite à gauche et changent de forme selon leur position dans le mot.

- Les voyelles brèves : la fatḥa (a) au-dessus de la lettre : بَ (ba) ; la ḍamma (u) au-dessus : بُ (bu) ; la kasra (i) en dessous : بِ (bi).
- Le sukūn indique l''absence de voyelle : بْ (b). Exemple : قَلْبٌ (qalbun, cœur).
- La shadda redouble la consonne : مُعَلِّمٌ (muʿallimun, enseignant).
- Le tanwīn ajoute un « n » à la fin d''un mot indéfini : كِتَابٌ (kitābun), كِتَابًا (kitāban), كِتَابٍ (kitābin).
- Les voyelles longues s''écrivent avec ا (ā), ي (ī) et و (ū) : بَابٌ (bābun, porte), كَبِيرٌ (kabīrun, grand), نُورٌ (nūrun, lumière).
- La tāʾ marbūṭa (ة) marque souvent le féminin : طَالِبٌ (ṭālibun, étudiant), طَالِبَةٌ (ṭālibatun, étudiante).

## Fiche 2 : l''article et les lettres solaires et lunaires

L''article défini est الْ (al-), toujours attaché au nom. Il remplace le tanwīn : كِتَابٌ (kitābun, un livre) devient الْكِتَابُ (al-kitābu, le livre).

- Devant une lettre lunaire, le lām se prononce : الْقَمَرُ (al-qamaru, la lune), الْبَيْتُ (al-baytu, la maison). Lettres lunaires : ا ب ج ح خ ع غ ف ق ك م ه و ي.
- Devant une lettre solaire, le lām s''écrit mais ne se prononce pas ; la lettre suivante est redoublée (shadda) : الشَّمْسُ (ash-shamsu, le soleil), السُّوقُ (as-sūqu, le marché). Lettres solaires : ت ث د ذ ر ز س ش ص ض ط ظ ل ن.

Astuce : les deux groupes comptent chacun 14 lettres.

## Fiche 3 : salutations et présentations

- السَّلَامُ عَلَيْكُمْ (as-salāmu ʿalaykum) : bonjour, la paix soit sur vous. Réponse : وَعَلَيْكُمُ السَّلَامُ (wa-ʿalaykumu s-salām).
- كَيْفَ حَالُكَ؟ (kayfa ḥāluka? : comment vas-tu ? à un garçon) ; كَيْفَ حَالُكِ؟ (kayfa ḥāluki? à une fille). Réponse : بِخَيْرٍ، وَالْحَمْدُ لِلّٰهِ (bi-khayrin, wa-l-ḥamdu li-llāh : bien, Dieu merci).
- مَا اسْمُكَ؟ (mā smuka? : comment t''appelles-tu ?) ; اِسْمِي ... (ismī ... : je m''appelle ...).
- شُكْرًا (shukran) : merci ; مَعَ السَّلَامَةِ (maʿa s-salāmati) : au revoir.

## Fiche 4 : les prépositions utiles pour comprendre un texte

Après une préposition, le nom se met au cas indirect (terminaison -i ou -in) :
- فِي (fī) : dans, à : فِي الْبَيْتِ (fī l-bayti : dans la maison).
- إِلَى (ilā) : vers, à : إِلَى السُّوقِ (ilā s-sūqi : au marché).
- مِنْ (min) : de, depuis ; devant l''article, on lit مِنَ (mina) : مِنَ الْمَدْرَسَةِ (mina l-madrasati : de l''école).
- عَلَى (ʿalā) : sur : عَلَى الطَّاوِلَةِ (ʿalā ṭ-ṭāwilati : sur la table).
- مَعَ (maʿa) : avec : مَعَ أُسْرَتِي (maʿa usratī : avec ma famille).
- قَبْلَ (qabla) : avant ; بَعْدَ (baʿda) : après ; أَمَامَ (amāma) : devant.

Ces petits mots indiquent souvent le lieu ou le moment : ils aident à répondre aux questions أَيْنَ (où ?) et مَتَى (quand ?).

## Texte d''entraînement

اِسْمِي عُمَرُ. أَسْكُنُ فِي مَدِينَةِ دَاكَار مَعَ أُسْرَتِي. أَبِي تَاجِرٌ فِي السُّوقِ، وَأُمِّي مُمَرِّضَةٌ فِي الْمُسْتَشْفَى. لِي أَخٌ وَاحِدٌ وَأُخْتَانِ. أَذْهَبُ إِلَى الْمَدْرَسَةِ كُلَّ يَوْمٍ مَعَ أَخِي. أُحِبُّ اللُّغَةَ الْعَرَبِيَّةَ وَالرِّيَاضِيَّاتِ. فِي يَوْمِ الْجُمُعَةِ أَذْهَبُ مَعَ أَبِي إِلَى الْمَسْجِدِ. بَعْدَ الدِّرَاسَةِ أُسَاعِدُ أُمِّي فِي الْبَيْتِ.

Translittération : ismī ʿUmaru. askunu fī madīnati Dākār maʿa usratī. abī tājirun fī s-sūqi, wa-ummī mumarriḍatun fī l-mustashfā. lī akhun wāḥidun wa-ukhtāni. adhhabu ilā l-madrasati kulla yawmin maʿa akhī. uḥibbu l-lughata l-ʿarabiyyata wa-r-riyāḍiyyāti. fī yawmi l-jumuʿati adhhabu maʿa abī ilā l-masjidi. baʿda d-dirāsati usāʿidu ummī fī l-bayti.

Traduction : Je m''appelle Omar. J''habite dans la ville de Dakar avec ma famille. Mon père est commerçant au marché et ma mère est infirmière à l''hôpital. J''ai un frère et deux sœurs. Je vais à l''école chaque jour avec mon frère. J''aime la langue arabe et les mathématiques. Le vendredi, je vais à la mosquée avec mon père. Après les cours, j''aide ma mère à la maison.

Remarques de lecture :
- أُخْتَانِ (ukhtāni) est un duel : « deux sœurs ».
- أُسْرَتِي (usratī) : la tāʾ marbūṭa de أُسْرَة devient une tāʾ ordinaire (ت) devant le suffixe ي (mon).
- السُّوقِ, الدِّرَاسَةِ, الرِّيَاضِيَّاتِ : lettres solaires, le lām ne se prononce pas.

## Exercices pratiques

Exercice 1 : Lire et transcrire : الشَّمْسُ ; الْقَمَرُ ; النَّهْرُ ; الْكِتَابُ. Préciser si la lettre après l''article est solaire ou lunaire.

Exercice 2 : Ajouter l''article et le transcrire : بَيْتٌ ; سُوقٌ ; مَدْرَسَةٌ.

Exercice 3 : D''après le texte : أَيْنَ يَسْكُنُ عُمَرُ؟

Exercice 4 : D''après le texte : أَيْنَ تَعْمَلُ أُمُّهُ؟ (ayna taʿmalu ummuhu? où travaille sa mère ?)

Exercice 5 : D''après le texte : مَتَى يَذْهَبُ عُمَرُ إِلَى الْمَسْجِدِ؟ (matā yadhhabu ʿUmaru ilā l-masjidi?)

Exercice 6 : صَحِيحٌ أَمْ خَطَأٌ؟ Justifier avec le texte : a) أُمُّ عُمَرَ مُعَلِّمَةٌ (ummu ʿUmara muʿallimatun). b) يَذْهَبُ عُمَرُ إِلَى الْمَدْرَسَةِ مَعَ أَخِيهِ (yadhhabu ʿUmaru ilā l-madrasati maʿa akhīhi).

Exercice 7 : Traduire : لِي أَخٌ وَاحِدٌ وَأُخْتَانِ.

## Corrigé

Exercice 1 : ash-shamsu (le soleil, ش solaire) ; al-qamaru (la lune, ق lunaire) ; an-nahru (le fleuve, ن solaire) ; al-kitābu (le livre, ك lunaire).

Exercice 2 : الْبَيْتُ (al-baytu) ; السُّوقُ (as-sūqu) ; الْمَدْرَسَةُ (al-madrasatu).

Exercice 3 : يَسْكُنُ عُمَرُ فِي مَدِينَةِ دَاكَار (yaskunu ʿUmaru fī madīnati Dākār).

Exercice 4 : تَعْمَلُ أُمُّهُ فِي الْمُسْتَشْفَى (taʿmalu ummuhu fī l-mustashfā) : sa mère travaille à l''hôpital.

Exercice 5 : يَذْهَبُ إِلَى الْمَسْجِدِ يَوْمَ الْجُمُعَةِ (yadhhabu ilā l-masjidi yawma l-jumuʿati) : il va à la mosquée le vendredi.

Exercice 6 : a) خَطَأٌ (faux) : « وَأُمِّي مُمَرِّضَةٌ فِي الْمُسْتَشْفَى » (sa mère est infirmière). b) صَحِيحٌ (vrai) : « أَذْهَبُ إِلَى الْمَدْرَسَةِ كُلَّ يَوْمٍ مَعَ أَخِي ».

Exercice 7 : J''ai un frère et deux sœurs.', 'texte', 55, false, 20
from public.courses c where c.slug = 'bfem-arabe'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Lecture et compréhension d''un texte');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Grammaire : pronoms, phrase nominale et verbale, conjugaison', '## Objectifs de la leçon

- Utiliser les pronoms personnels, les suffixes possessifs et les démonstratifs.
- Construire une phrase nominale et une phrase verbale.
- Conjuguer un verbe à l''accompli et à l''inaccompli, exprimer le futur et la négation.

## Fiche 1 : les pronoms

Pronoms personnels isolés :
- أَنَا (anā) : je ; نَحْنُ (naḥnu) : nous.
- أَنْتَ (anta) : tu (masculin) ; أَنْتِ (anti) : tu (féminin).
- أَنْتُمْ (antum) : vous (masculin pluriel) ; أَنْتُنَّ (antunna) : vous (féminin pluriel).
- هُوَ (huwa) : il ; هِيَ (hiya) : elle.
- هُمْ (hum) : ils ; هُنَّ (hunna) : elles.
- Duel : أَنْتُمَا (antumā) : vous deux ; هُمَا (humā) : eux deux, elles deux.

Suffixes possessifs (exemple avec كِتَابٌ, livre) :
- كِتَابِي (kitābī) : mon livre ; كِتَابُنَا (kitābunā) : notre livre.
- كِتَابُكَ (kitābuka) : ton livre (à un garçon) ; كِتَابُكِ (kitābuki) : ton livre (à une fille).
- كِتَابُهُ (kitābuhu) : son livre (à lui) ; كِتَابُهَا (kitābuhā) : son livre (à elle).
- كِتَابُكُمْ (kitābukum) : votre livre ; كِتَابُهُمْ (kitābuhum) : leur livre.

Avec un nom en ة, la tāʾ marbūṭa devient ت : مَدْرَسَةٌ devient مَدْرَسَتِي (madrasatī, mon école).

Démonstratifs :
- هَذَا (hādhā) : celui-ci, ceci (masculin) ; هَذِهِ (hādhihi) : celle-ci (féminin).
- ذَلِكَ (dhālika) : celui-là ; تِلْكَ (tilka) : celle-là.

Exemples : هَذَا كِتَابٌ (hādhā kitābun : ceci est un livre). هَذَا الْكِتَابُ جَدِيدٌ (hādhā l-kitābu jadīdun : ce livre est neuf). هَذِهِ مَدْرَسَتِي (hādhihi madrasatī : voici mon école).

## Fiche 2 : la phrase nominale

Elle commence par un nom ou un pronom. Elle comprend un sujet (الْمُبْتَدَأُ, al-mubtadaʾ) et un prédicat (الْخَبَرُ, al-khabar), tous deux au cas sujet (terminaison -u ou -un). Il n''y a pas de verbe « être » au présent.

- الْبَيْتُ كَبِيرٌ (al-baytu kabīrun) : la maison est grande.
- الْمُعَلِّمَةُ نَشِيطَةٌ (al-muʿallimatu nashīṭatun) : l''enseignante est dynamique.
- أَبِي فِي الْبَيْتِ (abī fī l-bayti) : mon père est à la maison.
- أَنَا تِلْمِيذٌ (anā tilmīdhun) : je suis élève.

Attention à la différence : الْبَيْتُ كَبِيرٌ (la maison est grande, une phrase) et الْبَيْتُ الْكَبِيرُ (al-baytu l-kabīru : la grande maison, un simple groupe de mots).

## Fiche 3 : la phrase verbale

Elle commence par un verbe. Ordre habituel : verbe, sujet (الْفَاعِلُ, al-fāʿil, au cas sujet en -u), complément d''objet (الْمَفْعُولُ بِهِ, al-mafʿūl bihi, au cas direct en -a).

- كَتَبَ التِّلْمِيذُ الدَّرْسَ (kataba t-tilmīdhu d-darsa) : l''élève a écrit la leçon.
- يَقْرَأُ الْوَلَدُ الْقِصَّةَ (yaqraʾu l-waladu l-qiṣṣata) : le garçon lit l''histoire.

Règle d''accord : quand le verbe est placé avant le sujet, il reste au singulier, mais il s''accorde en genre.
- ذَهَبَ الطُّلَّابُ إِلَى الْمَلْعَبِ (dhahaba ṭ-ṭullābu ilā l-malʿabi) : les étudiants sont allés au stade.
- ذَهَبَتِ الْبِنْتُ إِلَى السُّوقِ (dhahabati l-bintu ilā s-sūqi) : la fille est allée au marché.
Quand le sujet vient avant, le verbe s''accorde complètement : الطُّلَّابُ ذَهَبُوا (aṭ-ṭullābu dhahabū).

## Fiche 4 : l''accompli (passé)

Modèle : كَتَبَ (kataba, écrire).
- أَنَا كَتَبْتُ (katabtu) ; نَحْنُ كَتَبْنَا (katabnā).
- أَنْتَ كَتَبْتَ (katabta) ; أَنْتِ كَتَبْتِ (katabti).
- أَنْتُمْ كَتَبْتُمْ (katabtum) ; أَنْتُنَّ كَتَبْتُنَّ (katabtunna).
- هُوَ كَتَبَ (kataba) ; هِيَ كَتَبَتْ (katabat).
- هُمْ كَتَبُوا (katabū) ; هُنَّ كَتَبْنَ (katabna).

Le alif final de كَتَبُوا ne se prononce pas.

## Fiche 5 : l''inaccompli (présent)

Modèle : يَكْتُبُ (yaktubu).
- أَنَا أَكْتُبُ (aktubu) ; نَحْنُ نَكْتُبُ (naktubu).
- أَنْتَ تَكْتُبُ (taktubu) ; أَنْتِ تَكْتُبِينَ (taktubīna).
- أَنْتُمْ تَكْتُبُونَ (taktubūna) ; أَنْتُنَّ تَكْتُبْنَ (taktubna).
- هُوَ يَكْتُبُ (yaktubu) ; هِيَ تَكْتُبُ (taktubu).
- هُمْ يَكْتُبُونَ (yaktubūna) ; هُنَّ يَكْتُبْنَ (yaktubna).

La voyelle du milieu varie d''un verbe à l''autre ; apprends-la avec le verbe : ذَهَبَ / يَذْهَبُ (dhahaba / yadhhabu, aller), دَرَسَ / يَدْرُسُ (darasa / yadrusu, étudier), جَلَسَ / يَجْلِسُ (jalasa / yajlisu, s''asseoir), فَتَحَ / يَفْتَحُ (fataḥa / yaftaḥu, ouvrir).

Futur : سَـ ou سَوْفَ devant l''inaccompli : سَأَكْتُبُ (sa-aktubu : j''écrirai) ; سَوْفَ نُسَافِرُ (sawfa nusāfiru : nous voyagerons).

Négation :
- du présent : لَا + inaccompli : لَا أَذْهَبُ (lā adhhabu : je ne vais pas).
- du passé : مَا + accompli : مَا ذَهَبْتُ (mā dhahabtu : je ne suis pas allé) ; on rencontre aussi لَمْ + inaccompli apocopé : لَمْ أَذْهَبْ (lam adhhab), de même sens.
- de la phrase nominale : لَيْسَ, avec le prédicat au cas direct : لَيْسَ الْجَوُّ بَارِدًا (laysa l-jawwu bāridan : il ne fait pas froid).

Interrogation : هَلْ أَنْتَ تِلْمِيذٌ؟ (hal anta tilmīdhun? : es-tu élève ?) نَعَمْ (naʿam : oui) ; لَا (lā : non).

## Exercices pratiques

Exercice 1 : Remplacer le nom par le pronom : الْوَلَدُ ; الْبِنْتُ ; الْأَوْلَادُ.

Exercice 2 : Traduire avec un suffixe possessif : ma maison (بَيْتٌ) ; son école à elle (مَدْرَسَةٌ) ; notre professeur (أُسْتَاذٌ).

Exercice 3 : Conjuguer دَرَسَ à l''accompli avec : أَنَا ; هِيَ ; نَحْنُ ; هُمْ.

Exercice 4 : Conjuguer يَدْرُسُ à l''inaccompli avec : أَنْتِ ; هُمْ ; نَحْنُ.

Exercice 5 : Dire si la phrase est nominale ou verbale : الْجَوُّ حَارٌّ ; فَتَحَ الْمُعَلِّمُ الْبَابَ.

Exercice 6 : Mettre le verbe au féminin : ذَهَبَ الْوَلَدُ إِلَى الْمَدْرَسَةِ (remplacer الْوَلَدُ par الْبِنْتُ).

Exercice 7 : Mettre à la forme négative : أَذْهَبُ إِلَى السُّوقِ ; الْبَيْتُ كَبِيرٌ.

Exercice 8 : Mettre au futur : أَكْتُبُ رِسَالَةً.

## Corrigé

Exercice 1 : هُوَ (huwa) ; هِيَ (hiya) ; هُمْ (hum).

Exercice 2 : بَيْتِي (baytī) ; مَدْرَسَتُهَا (madrasatuhā) ; أُسْتَاذُنَا (ustādhunā).

Exercice 3 : دَرَسْتُ (darastu) ; دَرَسَتْ (darasat) ; دَرَسْنَا (darasnā) ; دَرَسُوا (darasū).

Exercice 4 : تَدْرُسِينَ (tadrusīna) ; يَدْرُسُونَ (yadrusūna) ; نَدْرُسُ (nadrusu).

Exercice 5 : الْجَوُّ حَارٌّ (al-jawwu ḥārrun : il fait chaud) : nominale. فَتَحَ الْمُعَلِّمُ الْبَابَ (fataḥa l-muʿallimu l-bāba : l''enseignant a ouvert la porte) : verbale.

Exercice 6 : ذَهَبَتِ الْبِنْتُ إِلَى الْمَدْرَسَةِ (dhahabati l-bintu ilā l-madrasati).

Exercice 7 : لَا أَذْهَبُ إِلَى السُّوقِ (lā adhhabu ilā s-sūqi) ; لَيْسَ الْبَيْتُ كَبِيرًا (laysa l-baytu kabīran).

Exercice 8 : سَأَكْتُبُ رِسَالَةً (sa-aktubu risālatan : j''écrirai une lettre).', 'texte', 60, false, 30
from public.courses c where c.slug = 'bfem-arabe'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Grammaire : pronoms, phrase nominale et verbale, conjugaison');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Nombres, accords, vocabulaire thématique et expression écrite', '## Objectifs de la leçon

- Compter et accorder les nombres usuels.
- Appliquer les règles d''accord de l''adjectif et du verbe.
- Réviser le vocabulaire des grands thèmes.
- Rédiger un court texte simple et correct.

## Fiche 1 : les nombres

- 1 وَاحِدٌ (wāḥidun) ; 2 اِثْنَانِ (ithnāni) ; 3 ثَلَاثَةٌ (thalāthatun) ; 4 أَرْبَعَةٌ (arbaʿatun) ; 5 خَمْسَةٌ (khamsatun).
- 6 سِتَّةٌ (sittatun) ; 7 سَبْعَةٌ (sabʿatun) ; 8 ثَمَانِيَةٌ (thamāniyatun) ; 9 تِسْعَةٌ (tisʿatun) ; 10 عَشَرَةٌ (ʿasharatun).
- 20 عِشْرُونَ (ʿishrūna) ; 30 ثَلَاثُونَ (thalāthūna) ; 50 خَمْسُونَ (khamsūna) ; 100 مِائَةٌ (miʾatun) ; 1000 أَلْفٌ (alfun).

Chiffres : le Sénégal utilise surtout les chiffres 0 à 9 ; dans de nombreux livres arabes on trouve aussi ٠ ١ ٢ ٣ ٤ ٥ ٦ ٧ ٨ ٩.

Règles simples à retenir :
- 1 et 2 se placent après le nom comme des adjectifs, ou on emploie le duel : كِتَابٌ وَاحِدٌ (kitābun wāḥidun : un seul livre) ; كِتَابَانِ (kitābāni : deux livres) ; بِنْتَانِ (bintāni : deux filles).
- De 3 à 10, le nombre prend le genre inverse du nom au singulier, et le nom se met au pluriel indéfini au cas indirect : ثَلَاثَةُ كُتُبٍ (thalāthatu kutubin : trois livres, car كِتَاب est masculin) ; خَمْسُ بَنَاتٍ (khamsu banātin : cinq filles, car بِنْت est féminin) ; سَبْعَةُ أَيَّامٍ (sabʿatu ayyāmin : sept jours).
- De 11 à 99, le nom est au singulier, au cas direct : عِشْرُونَ تِلْمِيذًا (ʿishrūna tilmīdhan : vingt élèves).
- Avec 100 et 1000, le nom est au singulier, au cas indirect : مِائَةُ تِلْمِيذٍ (miʾatu tilmīdhin : cent élèves).

Pour dire son âge, apprends l''expression telle quelle : عُمْرِي أَرْبَعَ عَشْرَةَ سَنَةً (ʿumrī arbaʿa ʿashrata sanatan : j''ai quatorze ans) ; عُمْرِي خَمْسَ عَشْرَةَ سَنَةً (ʿumrī khamsa ʿashrata sanatan : j''ai quinze ans).

## Fiche 2 : les accords

L''adjectif suit le nom et s''accorde avec lui en genre, en nombre, en définition (avec ou sans article) et en cas :
- وَلَدٌ صَغِيرٌ (waladun ṣaghīrun) : un petit garçon ; الْوَلَدُ الصَّغِيرُ (al-waladu ṣ-ṣaghīru) : le petit garçon.
- بِنْتٌ صَغِيرَةٌ (bintun ṣaghīratun) : une petite fille ; الْبِنْتُ الصَّغِيرَةُ (al-bintu ṣ-ṣaghīratu).
- Pluriel de personnes : مُعَلِّمُونَ مُجْتَهِدُونَ (muʿallimūna mujtahidūna) : des enseignants travailleurs.
- Pluriel de choses ou d''animaux (pluriel non humain) : l''adjectif et le verbe se mettent au féminin singulier : كُتُبٌ جَدِيدَةٌ (kutubun jadīdatun : des livres neufs) ; الْأَشْجَارُ طَوِيلَةٌ (al-ashjāru ṭawīlatun : les arbres sont hauts).

## Fiche 3 : vocabulaire thématique

La famille (الْأُسْرَةُ, al-usratu) : أَبٌ (abun, père), أُمٌّ (ummun, mère), أَخٌ (akhun, frère), أُخْتٌ (ukhtun, sœur), جَدٌّ (jaddun, grand-père), جَدَّةٌ (jaddatun, grand-mère), اِبْنٌ (ibnun, fils), بِنْتٌ (bintun, fille).

L''école (الْمَدْرَسَةُ, al-madrasatu) : مُعَلِّمٌ (muʿallimun, enseignant), أُسْتَاذٌ (ustādhun, professeur), تِلْمِيذٌ (tilmīdhun, élève ; pluriel تَلَامِيذُ, talāmīdhu), فَصْلٌ (faṣlun, classe), كِتَابٌ (kitābun, livre ; pluriel كُتُبٌ, kutubun), قَلَمٌ (qalamun, stylo ; pluriel أَقْلَامٌ, aqlāmun), دَفْتَرٌ (daftarun, cahier), سَبُّورَةٌ (sabbūratun, tableau), دَرْسٌ (darsun, leçon), اِمْتِحَانٌ (imtiḥānun, examen).

La ville (الْمَدِينَةُ, al-madīnatu) : شَارِعٌ (shāriʿun, rue), سُوقٌ (sūqun, marché), مَسْجِدٌ (masjidun, mosquée), حَيٌّ (ḥayyun, quartier), بَيْتٌ (baytun, maison), قَرْيَةٌ (qaryatun, village), سَيَّارَةٌ (sayyāratun, voiture).

La santé (الصِّحَّةُ, aṣ-ṣiḥḥatu) : طَبِيبٌ (ṭabībun, médecin), مُمَرِّضَةٌ (mumarriḍatun, infirmière), مَرِيضٌ (marīḍun, malade), دَوَاءٌ (dawāʾun, médicament), مُسْتَشْفَى (mustashfā, hôpital). رَأْسِي يُؤْلِمُنِي (raʾsī yuʾlimunī) : j''ai mal à la tête.

L''environnement (الْبِيئَةُ, al-bīʾatu) : شَجَرَةٌ (shajaratun, arbre ; pluriel أَشْجَارٌ, ashjārun), مَاءٌ (māʾun, eau), بَحْرٌ (baḥrun, mer), مَطَرٌ (maṭarun, pluie), نَظِيفٌ (naẓīfun, propre), نَظَافَةٌ (naẓāfatun, propreté), أَوْسَاخٌ (awsākhun, saletés, déchets).

Les jours : الْأَحَدُ (al-aḥadu, dimanche), الِاثْنَيْنِ (al-ithnayni, lundi), الثُّلَاثَاءُ (ath-thulāthāʾu, mardi), الْأَرْبِعَاءُ (al-arbiʿāʾu, mercredi), الْخَمِيسُ (al-khamīsu, jeudi), الْجُمُعَةُ (al-jumuʿatu, vendredi), السَّبْتُ (as-sabtu, samedi).

## Fiche 4 : l''expression écrite

Pour se présenter, un modèle simple :

اِسْمِي فَاطِمَةُ. عُمْرِي أَرْبَعَ عَشْرَةَ سَنَةً. أَسْكُنُ فِي قَرْيَةٍ قَرِيبَةٍ مِنَ الْبَحْرِ. أَنَا تِلْمِيذَةٌ فِي الْمَدْرَسَةِ الْإِعْدَادِيَّةِ. أُحِبُّ الْقِرَاءَةَ وَالرِّيَاضَةَ. فِي الْمُسْتَقْبَلِ، أُرِيدُ أَنْ أَكُونَ طَبِيبَةً.

Translittération : ismī Fāṭimatu. ʿumrī arbaʿa ʿashrata sanatan. askunu fī qaryatin qarībatin mina l-baḥri. anā tilmīdhatun fī l-madrasati l-iʿdādiyyati. uḥibbu l-qirāʾata wa-r-riyāḍata. fī l-mustaqbali, urīdu an akūna ṭabībatan.

Traduction : Je m''appelle Fatima. J''ai quatorze ans. J''habite dans un village proche de la mer. Je suis élève au collège. J''aime la lecture et le sport. Plus tard, je veux être médecin.

Conseils : utilise surtout des phrases nominales simples et des verbes que tu sais conjuguer ; vérifie chaque accord masculin ou féminin ; termine par une phrase au futur ou un souhait.

## Exercices pratiques

Exercice 1 : Écrire en lettres arabes : 3 ; 7 ; 10 ; 20.

Exercice 2 : Traduire : trois stylos (قَلَمٌ, pluriel أَقْلَامٌ) ; deux livres.

Exercice 3 : Accorder l''adjectif : بِنْتٌ (مُجْتَهِد) ; الْبَيْتُ (الْجَدِيد).

Exercice 4 : Accorder avec un pluriel non humain : السَّيَّارَاتُ (سَرِيع).

Exercice 5 : Donner le sens : طَبِيبٌ ; سُوقٌ ; شَجَرَةٌ ; جَدَّةٌ ; دَفْتَرٌ.

Exercice 6 : Traduire en arabe : le marché est grand ; la grande école.

Exercice 7 : Rédiger 4 phrases pour présenter ta famille.

## Corrigé

Exercice 1 : ثَلَاثَةٌ (thalāthatun) ; سَبْعَةٌ (sabʿatun) ; عَشَرَةٌ (ʿasharatun) ; عِشْرُونَ (ʿishrūna).

Exercice 2 : ثَلَاثَةُ أَقْلَامٍ (thalāthatu aqlāmin : قَلَم est masculin, donc le nombre prend la forme en ة) ; كِتَابَانِ (kitābāni).

Exercice 3 : بِنْتٌ مُجْتَهِدَةٌ (bintun mujtahidatun) ; الْبَيْتُ الْجَدِيدُ (al-baytu l-jadīdu).

Exercice 4 : السَّيَّارَاتُ سَرِيعَةٌ (as-sayyārātu sarīʿatun : les voitures sont rapides).

Exercice 5 : médecin ; marché ; arbre ; grand-mère ; cahier.

Exercice 6 : السُّوقُ كَبِيرٌ (as-sūqu kabīrun) ; الْمَدْرَسَةُ الْكَبِيرَةُ (al-madrasatu l-kabīratu).

Exercice 7 : Modèle : أُسْرَتِي كَبِيرَةٌ (usratī kabīratun : ma famille est grande). أَبِي فَلَّاحٌ (abī fallāḥun : mon père est cultivateur). أُمِّي تَعْمَلُ فِي الْبَيْتِ (ummī taʿmalu fī l-bayti : ma mère travaille à la maison). لِي أَخَوَانِ (lī akhawāni : j''ai deux frères).', 'texte', 60, false, 40
from public.courses c where c.slug = 'bfem-arabe'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Nombres, accords, vocabulaire thématique et expression écrite');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen : sujet d''entraînement corrigé', '## Présentation

Voici un sujet d''entraînement conçu pour ce cours, sur le modèle des épreuves d''arabe LV2 du BFEM. Ce n''est pas un sujet officiel. Traite-le en temps limité, sans dictionnaire, puis compare avec le corrigé. La répartition des points sur 20 est indicative ; le barème réel relève des textes officiels en vigueur et des correcteurs.

## Texte : يَوْمُ النَّظَافَةِ (yawmu n-naẓāfati, la journée de la propreté)

فِي يَوْمِ السَّبْتِ، اِجْتَمَعَ تَلَامِيذُ مَدْرَسَتِنَا فِي السَّاحَةِ. حَمَلَ الْأَوْلَادُ الْمَكَانِسَ، وَحَمَلَتِ الْبَنَاتُ أَكْيَاسًا كَبِيرَةً. نَظَّفَ التَّلَامِيذُ السَّاحَةَ وَالْفُصُولَ، وَجَمَعُوا الْأَوْسَاخَ. ثُمَّ غَرَسَ الْمُعَلِّمُ مَعَ التَّلَامِيذِ عَشْرَ شَجَرَاتٍ أَمَامَ الْمَدْرَسَةِ. قَالَ الْمُدِيرُ: «النَّظَافَةُ مِنَ الْإِيمَانِ، وَالْبِيئَةُ أَمَانَةٌ فِي أَيْدِينَا». فَرِحَ التَّلَامِيذُ كَثِيرًا، وَقَرَّرُوا أَنْ يُنَظِّفُوا الْمَدْرَسَةَ كُلَّ شَهْرٍ.

Translittération : fī yawmi s-sabti, ijtamaʿa talāmīdhu madrasatinā fī s-sāḥati. ḥamala l-awlādu l-makānisa, wa-ḥamalati l-banātu akyāsan kabīratan. naẓẓafa t-talāmīdhu s-sāḥata wa-l-fuṣūla, wa-jamaʿū l-awsākha. thumma gharasa l-muʿallimu maʿa t-talāmīdhi ʿashra shajarātin amāma l-madrasati. qāla l-mudīru : « an-naẓāfatu mina l-īmāni, wa-l-bīʾatu amānatun fī aydīnā ». fariḥa t-talāmīdhu kathīran, wa-qarrarū an yunaẓẓifū l-madrasata kulla shahrin.

Vocabulaire : السَّاحَةُ (as-sāḥatu) : la cour ; مِكْنَسَةٌ (miknasatun, pluriel مَكَانِسُ) : balai ; كِيسٌ (kīsun, pluriel أَكْيَاسٌ) : sac ; غَرَسَ (gharasa) : planter ; أَمَانَةٌ (amānatun) : un dépôt confié, une responsabilité ; قَرَّرَ (qarrara) : décider.

## Questions

I. Compréhension (8 points)
- 1. مَتَى اجْتَمَعَ التَّلَامِيذُ؟ (matā jtamaʿa t-talāmīdhu?) (1 point)
- 2. أَيْنَ اجْتَمَعُوا؟ (ayna jtamaʿū?) (1 point)
- 3. مَاذَا حَمَلَتِ الْبَنَاتُ؟ (mādhā ḥamalati l-banātu?) (1 point)
- 4. كَمْ شَجَرَةً غَرَسُوا؟ (kam shajaratan gharasū?) (1 point)
- 5. صَحِيحٌ أَمْ خَطَأٌ؟ Justifier : قَرَّرَ التَّلَامِيذُ أَنْ يُنَظِّفُوا الْمَدْرَسَةَ كُلَّ سَنَةٍ. (2 points)
- 6. Traduire la phrase du directeur. (2 points)

II. Langue (6 points)
- 1. Relever deux verbes à l''accompli. (1 point)
- 2. Conjuguer حَمَلَ / يَحْمِلُ à l''inaccompli avec هُوَ, نَحْنُ et هُمْ. (1,5 point)
- 3. Mettre au féminin : الْمُعَلِّمُ نَشِيطٌ. (1 point)
- 4. Dire si la phrase est nominale ou verbale : النَّظَافَةُ مِنَ الْإِيمَانِ ; غَرَسَ الْمُعَلِّمُ شَجَرَةً. (1 point)
- 5. Écrire en lettres et accorder : 3 كُتُب ; 5 بَنَات. (1,5 point)

III. Production écrite (6 points)
Décris ton quartier en 6 à 8 phrases et dis ce que tu feras pour le garder propre.

## Corrigé détaillé

I. Compréhension
- 1. اِجْتَمَعُوا يَوْمَ السَّبْتِ (ijtamaʿū yawma s-sabti) : samedi.
- 2. اِجْتَمَعُوا فِي سَاحَةِ الْمَدْرَسَةِ (ijtamaʿū fī sāḥati l-madrasati) : dans la cour de l''école.
- 3. حَمَلَتِ الْبَنَاتُ أَكْيَاسًا كَبِيرَةً (ḥamalati l-banātu akyāsan kabīratan) : de grands sacs.
- 4. غَرَسُوا عَشْرَ شَجَرَاتٍ (gharasū ʿashra shajarātin) : dix arbres.
- 5. خَطَأٌ (faux) : « قَرَّرُوا أَنْ يُنَظِّفُوا الْمَدْرَسَةَ كُلَّ شَهْرٍ » : chaque mois, et non chaque année.
- 6. « La propreté fait partie de la foi, et l''environnement est un dépôt confié entre nos mains. »

II. Langue
- 1. Par exemple : اِجْتَمَعَ (ijtamaʿa), حَمَلَ (ḥamala), نَظَّفَ (naẓẓafa), غَرَسَ (gharasa), قَالَ (qāla), فَرِحَ (fariḥa).
- 2. هُوَ يَحْمِلُ (yaḥmilu) ; نَحْنُ نَحْمِلُ (naḥmilu) ; هُمْ يَحْمِلُونَ (yaḥmilūna).
- 3. الْمُعَلِّمَةُ نَشِيطَةٌ (al-muʿallimatu nashīṭatun).
- 4. La première est nominale (elle commence par un nom) ; la seconde est verbale (elle commence par un verbe).
- 5. ثَلَاثَةُ كُتُبٍ (thalāthatu kutubin) ; خَمْسُ بَنَاتٍ (khamsu banātin).

III. Production écrite : modèle
أَسْكُنُ فِي حَيٍّ كَبِيرٍ. فِي حَيِّنَا سُوقٌ وَمَسْجِدٌ وَمَدْرَسَةٌ. لَكِنَّ الشَّوَارِعَ لَيْسَتْ نَظِيفَةً. يَرْمِي بَعْضُ النَّاسِ الْأَوْسَاخَ فِي الشَّارِعِ. يَجِبُ أَنْ نُحَافِظَ عَلَى نَظَافَةِ حَيِّنَا. سَأُشَارِكُ مَعَ أَصْدِقَائِي فِي يَوْمِ النَّظَافَةِ، وَسَنَغْرِسُ أَشْجَارًا.

Translittération : askunu fī ḥayyin kabīrin. fī ḥayyinā sūqun wa-masjidun wa-madrasatun. lākinna sh-shawāriʿa laysat naẓīfatan. yarmī baʿḍu n-nāsi l-awsākha fī sh-shāriʿi. yajibu an nuḥāfiẓa ʿalā naẓāfati ḥayyinā. sa-ushāriku maʿa aṣdiqāʾī fī yawmi n-naẓāfati, wa-sanaghrisu ashjāran.

Traduction : J''habite dans un grand quartier. Dans notre quartier, il y a un marché, une mosquée et une école. Mais les rues ne sont pas propres. Certaines personnes jettent les déchets dans la rue. Nous devons préserver la propreté de notre quartier. Je participerai avec mes amis à la journée de la propreté et nous planterons des arbres.

## Conseils de notation

- En compréhension, une réponse en phrase complète, reprenant les mots de la question, est mieux valorisée qu''un mot isolé.
- En langue, les correcteurs vérifient la terminaison exacte : يَحْمِلُونَ et non يَحْمِلُ pour هُمْ.
- En production écrite, ils regardent généralement le respect du sujet, la correction de la langue (accords, orthographe, points), la richesse du vocabulaire et l''enchaînement des idées. Mieux vaut six phrases justes que dix phrases fautives.
- Une écriture lisible, avec les points bien placés, évite des pertes de points inutiles.
- Pour la traduction, rends le sens en bon français plutôt que mot à mot : « أَمَانَةٌ فِي أَيْدِينَا » se traduit mieux par « une responsabilité entre nos mains » que par une suite de mots juxtaposés.
- Si tu ne connais pas un mot du texte, cherche son sens grâce au contexte et aux mots voisins avant d''abandonner la question.

## Exercices pratiques

Exercice 1 : Relever dans le texte un verbe accordé au féminin et expliquer pourquoi.

Exercice 2 : Pourquoi écrit-on نَظَّفَ التَّلَامِيذُ (verbe au singulier) mais وَجَمَعُوا (pluriel) ?

Exercice 3 : Mettre au futur : نَغْرِسُ شَجَرَةً.

Exercice 4 : Mettre à la forme négative : أَرْمِي الْأَوْسَاخَ فِي الشَّارِعِ.

Exercice 5 : Traduire : la cour est propre.

## Corrigé

Exercice 1 : حَمَلَتِ الْبَنَاتُ (ḥamalati l-banātu) : le sujet الْبَنَاتُ est féminin, le verbe prend la marque du féminin ت.

Exercice 2 : Placé avant son sujet, le verbe reste au singulier ; le second verbe vient après le sujet déjà exprimé, il s''accorde donc au pluriel.

Exercice 3 : سَنَغْرِسُ شَجَرَةً (sa-naghrisu shajaratan).

Exercice 4 : لَا أَرْمِي الْأَوْسَاخَ فِي الشَّارِعِ (lā armī l-awsākha fī sh-shāriʿi).

Exercice 5 : السَّاحَةُ نَظِيفَةٌ (as-sāḥatu naẓīfatun).', 'texte', 60, false, 50
from public.courses c where c.slug = 'bfem-arabe'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen : sujet d''entraînement corrigé');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : révision intensive « veille d''examen » en arabe', '## Fiche du cours vidéo

- Durée : 1h30.
- Thème : séance de révision intensive de la veille de l''épreuve d''arabe LV2.
- Objectifs : revoir la lecture, les pronoms, les deux types de phrases, la conjugaison, les nombres et les accords ; corriger des exercices types ; préparer la production écrite et la gestion du temps.
- Matériel : tableau ou diaporama, cahier, tableaux de conjugaison.
- Prérequis : leçons 1 à 5 de ce cours.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

« السَّلَامُ عَلَيْكُمْ, as-salāmu ʿalaykum, bonsoir à toutes et à tous. Demain, c''est l''épreuve d''arabe. Ce soir, nous révisons l''essentiel, calmement. Je vais expliquer en français et écrire les exemples en arabe avec leur lecture. Prenez votre cahier. Quand je dis « pause », arrêtez la vidéo et cherchez seuls avant de regarder la correction. »

Visuel : le plan : lecture, consignes, pronoms, phrase nominale et verbale, conjugaison, quiz, nombres et accords, compréhension, production écrite, évaluation.

## 05:00 – 15:00 · Lecture et consignes

« Commençons par la lecture. Fatḥa pour a, ḍamma pour u, kasra pour i, sukūn pour l''absence de voyelle, shadda pour une consonne doublée. L''article الْ se prononce devant les lettres lunaires, comme dans الْقَمَرُ, al-qamaru, et s''assimile devant les lettres solaires, comme dans الشَّمْسُ, ash-shamsu. »

« Les consignes maintenant : أَجِبْ عَنِ الْأَسْئِلَةِ, réponds aux questions ; صَحِيحٌ أَمْ خَطَأٌ, vrai ou faux ; صَرِّفِ الْفِعْلَ, conjugue le verbe ; تَرْجِمْ, traduis ; اُكْتُبْ, écris. Si vous ne comprenez pas la consigne, vous risquez de faire un exercice juste… mais qui ne correspond pas à la question. »

Question à poser : « Comment lit-on السُّوقُ ? » Réponse : as-sūqu, car س est une lettre solaire.

« Révisons aussi les mots interrogatifs, car ils commandent la réponse. مَنْ, man, qui ? On attend une personne. أَيْنَ, ayna, où ? On attend un lieu, souvent avec فِي ou إِلَى. مَتَى, matā, quand ? On attend un moment : يَوْمَ الْجُمُعَةِ, le vendredi ; كُلَّ صَبَاحٍ, chaque matin. كَمْ, kam, combien ? On attend un nombre. لِمَاذَا, limādhā, pourquoi ? On répond avec لِأَنَّ, li-anna, parce que. Soulignez le mot interrogatif dans chaque question avant de chercher dans le texte. »

## 15:00 – 27:00 · Pronoms et phrase nominale

« Les pronoms : أَنَا anā, je ; أَنْتَ anta, tu au masculin ; أَنْتِ anti, tu au féminin ; هُوَ huwa, il ; هِيَ hiya, elle ; نَحْنُ naḥnu, nous ; هُمْ hum, ils. Les suffixes : كِتَابِي, kitābī, mon livre ; كِتَابُهُ, kitābuhu, son livre à lui ; كِتَابُهَا, kitābuhā, son livre à elle. »

« La phrase nominale commence par un nom et n''a pas de verbe être : الْبَيْتُ كَبِيرٌ, al-baytu kabīrun, la maison est grande. Attention : الْبَيْتُ الْكَبِيرُ, avec l''article sur l''adjectif, signifie seulement « la grande maison ». La différence est dans l''article. »

« Pause. Traduisez : l''école est propre. Correction : الْمَدْرَسَةُ نَظِيفَةٌ, al-madrasatu naẓīfatun. Remarquez que l''adjectif prend le ة du féminin, comme le nom. »

## 27:00 – 42:00 · Phrase verbale et conjugaison

« La phrase verbale commence par un verbe : كَتَبَ التِّلْمِيذُ الدَّرْسَ, kataba t-tilmīdhu d-darsa, l''élève a écrit la leçon. Le sujet porte -u, le complément d''objet porte -a. Quand le verbe est avant le sujet, il reste au singulier mais prend le genre du sujet : ذَهَبَ الطُّلَّابُ, dhahaba ṭ-ṭullābu ; ذَهَبَتِ الْبِنْتُ, dhahabati l-bintu. »

« Accompli de كَتَبَ : كَتَبْتُ katabtu, كَتَبْتَ katabta, كَتَبْتِ katabti, كَتَبَ kataba, كَتَبَتْ katabat, كَتَبْنَا katabnā, كَتَبُوا katabū. Inaccompli : أَكْتُبُ aktubu, تَكْتُبُ taktubu, تَكْتُبِينَ taktubīna, يَكْتُبُ yaktubu, نَكْتُبُ naktubu, يَكْتُبُونَ yaktubūna. Futur : سَأَكْتُبُ, sa-aktubu. Négation : لَا أَكْتُبُ au présent, مَا كَتَبْتُ au passé. »

« Pause. Conjuguez ذَهَبَ avec هِيَ à l''accompli, puis avec نَحْنُ à l''inaccompli. Correction : ذَهَبَتْ, dhahabat ; نَذْهَبُ, nadhhabu. »

## 42:00 – 50:00 · Pause interactive : quiz

« Pause après chaque question, écrivez la réponse, puis reprenez. »

- Question 1 : Comment dit-on « nous » ? Réponse : نَحْنُ (naḥnu).
- Question 2 : Accompli de كَتَبَ avec هِيَ ? Réponse : كَتَبَتْ (katabat).
- Question 3 : Inaccompli de ذَهَبَ avec أَنَا ? Réponse : أَذْهَبُ (adhhabu).
- Question 4 : Féminin de مُعَلِّمٌ ? Réponse : مُعَلِّمَةٌ (muʿallimatun).
- Question 5 : Le duel de كِتَابٌ ? Réponse : كِتَابَانِ (kitābāni).
- Question 6 : الشَّمْسُ : lettre solaire ou lunaire ? Réponse : solaire, on lit ash-shamsu.

« Cinq ou six bonnes réponses : très bien. Moins de quatre : relisez ce soir les tableaux de conjugaison, sans paniquer. »

## 50:00 – 1:00:00 · Nombres et accords

« Les nombres de 1 à 10 : وَاحِدٌ, اِثْنَانِ, ثَلَاثَةٌ, أَرْبَعَةٌ, خَمْسَةٌ, سِتَّةٌ, سَبْعَةٌ, ثَمَانِيَةٌ, تِسْعَةٌ, عَشَرَةٌ. De 3 à 10, le nombre prend le genre inverse du nom : ثَلَاثَةُ كُتُبٍ, thalāthatu kutubin, car كِتَاب est masculin ; خَمْسُ بَنَاتٍ, khamsu banātin, car بِنْت est féminin. »

« Les accords : l''adjectif suit le nom en genre, en nombre et avec ou sans article : بِنْتٌ صَغِيرَةٌ, الْبِنْتُ الصَّغِيرَةُ. Pour un pluriel de choses, l''adjectif se met au féminin singulier : الْأَشْجَارُ طَوِيلَةٌ, al-ashjāru ṭawīlatun. »

« Pause. Écrivez « trois stylos ». Correction : ثَلَاثَةُ أَقْلَامٍ, thalāthatu aqlāmin. قَلَم est masculin, donc le nombre a la forme en ة. »

« Un rappel de vocabulaire, thème par thème, en une minute chacun. La famille : أَبٌ, أُمٌّ, أَخٌ, أُخْتٌ, جَدٌّ, جَدَّةٌ. L''école : مُعَلِّمٌ, تِلْمِيذٌ, كِتَابٌ, قَلَمٌ, دَفْتَرٌ, دَرْسٌ. La ville : شَارِعٌ, سُوقٌ, مَسْجِدٌ, حَيٌّ. La santé : طَبِيبٌ, مَرِيضٌ, دَوَاءٌ, مُسْتَشْفَى. L''environnement : شَجَرَةٌ, مَاءٌ, نَظِيفٌ, أَوْسَاخٌ. Dites chaque mot à voix haute, puis donnez son sens en français. Si vous hésitez sur un mot, notez-le sur votre fiche du soir. »

## 1:00:00 – 1:10:00 · Compréhension commentée

Visuel : texte court. « أَسْكُنُ فِي قَرْيَةٍ صَغِيرَةٍ. أَبِي فَلَّاحٌ. يَذْهَبُ إِلَى الْحَقْلِ كُلَّ صَبَاحٍ. » (askunu fī qaryatin ṣaghīratin. abī fallāḥun. yadhhabu ilā l-ḥaqli kulla ṣabāḥin : j''habite dans un petit village. Mon père est cultivateur. Il va au champ chaque matin.)

« Question : مَاذَا يَعْمَلُ الْأَبُ؟ mādhā yaʿmalu l-abu ? Réponse complète : الْأَبُ فَلَّاحٌ, al-abu fallāḥun. Question : مَتَى يَذْهَبُ إِلَى الْحَقْلِ؟ Réponse : يَذْهَبُ إِلَى الْحَقْلِ كُلَّ صَبَاحٍ. Vous voyez : on reprend les mots de la question et du texte. Pour un vrai ou faux, on écrit صَحِيحٌ ou خَطَأٌ, puis on cite la phrase du texte. »

## 1:10:00 – 1:18:00 · Production écrite et gestion du temps

« Pour la production écrite, préparez quelques phrases sûres : اِسْمِي ... ; عُمْرِي أَرْبَعَ عَشْرَةَ سَنَةً ; أَسْكُنُ فِي ... ; أُحِبُّ ... ; فِي الْمُسْتَقْبَلِ أُرِيدُ أَنْ أَكُونَ ... . Reliez les idées avec وَ, ثُمَّ, لَكِنَّ, لِأَنَّ. Pour parler de l''environnement : يَجِبُ أَنْ نُحَافِظَ عَلَى نَظَافَةِ الْحَيِّ, il faut préserver la propreté du quartier. »

« Gestion du temps : lisez tout le sujet, faites d''abord la compréhension, puis la langue, puis la production écrite. Gardez au moins un quart du temps pour écrire, et cinq minutes pour relire : points sur les lettres, ة du féminin, accords, article. Écrivez lisiblement : une lettre mal formée peut être comptée comme une faute. »

« Voici un modèle court sur le thème de l''école, à adapter demain si le sujet s''y prête : »

مَدْرَسَتِي كَبِيرَةٌ وَنَظِيفَةٌ. فِيهَا فُصُولٌ كَثِيرَةٌ وَسَاحَةٌ وَاسِعَةٌ. أُسْتَاذُ اللُّغَةِ الْعَرَبِيَّةِ نَشِيطٌ. أَدْرُسُ مَعَ أَصْدِقَائِي، ثُمَّ نَلْعَبُ فِي السَّاحَةِ. أُحِبُّ مَدْرَسَتِي لِأَنَّهَا جَمِيلَةٌ.

Translittération : madrasatī kabīratun wa-naẓīfatun. fīhā fuṣūlun kathīratun wa-sāḥatun wāsiʿatun. ustādhu l-lughati l-ʿarabiyyati nashīṭun. adrusu maʿa aṣdiqāʾī, thumma nalʿabu fī s-sāḥati. uḥibbu madrasatī li-annahā jamīlatun. (Mon école est grande et propre. Elle a beaucoup de classes et une vaste cour. Le professeur d''arabe est dynamique. J''étudie avec mes amis, puis nous jouons dans la cour. J''aime mon école parce qu''elle est belle.)

« Observez : فُصُولٌ كَثِيرَةٌ, un pluriel de choses avec un adjectif au féminin singulier ; لِأَنَّهَا, parce qu''elle, avec le suffixe هَا. Ce sont des phrases simples, mais chacune est correcte : c''est exactement ce que le correcteur veut lire. »

« Ce soir : préparez vos stylos, relisez vos fiches une dernière fois et dormez tôt. »

## 1:18:00 – 1:26:00 · Évaluation finale

« Cinq questions. Pause, réponses écrites, puis correction. »

- 1. Traduire « la maison est grande ». Réponse : الْبَيْتُ كَبِيرٌ (al-baytu kabīrun).
- 2. Conjuguer دَرَسَ à l''accompli avec نَحْنُ. Réponse : دَرَسْنَا (darasnā).
- 3. Mettre à la forme négative : أَذْهَبُ. Réponse : لَا أَذْهَبُ (lā adhhabu).
- 4. Accorder : السَّيَّارَاتُ (جَدِيد). Réponse : السَّيَّارَاتُ جَدِيدَةٌ (as-sayyārātu jadīdatun), pluriel non humain.
- 5. Mettre au futur : أَكْتُبُ. Réponse : سَأَكْتُبُ (sa-aktubu).

« Correction commentée : à la question 4, beaucoup d''élèves écrivent جَدِيدُونَ ; c''est une erreur, car les voitures ne sont pas des personnes. À la question 2, n''oubliez pas le sukūn sur le س : darasnā. »

## 1:26:00 – 1:30:00 · Synthèse et encouragements

« Récapitulons : lire avec les voyelles et l''article ; reconnaître la phrase nominale et la phrase verbale ; conjuguer à l''accompli et à l''inaccompli ; accorder l''adjectif, le verbe et le nombre ; répondre par des phrases complètes ; écrire simple et juste. Vous êtes prêts. بِالتَّوْفِيقِ, bi-t-tawfīq : bonne chance à toutes et à tous ! مَعَ السَّلَامَةِ. »

Visuel final : fiche récapitulative pronoms, conjugaisons et nombres.', 'video', 90, false, 60
from public.courses c where c.slug = 'bfem-arabe'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : révision intensive « veille d''examen » en arabe');

-- Cours : Géolocalisation et télématique des véhicules
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'formation-gps-avance', (select id from public.levels where name = 'Formation professionnelle'), 'gps', 'Géolocalisation et télématique', 'Géolocalisation et télématique des véhicules', 'Cette formation explique le fonctionnement du GPS (satellites, temps, trilatération), les traceurs et la télématique embarquée, le géofencing et les alertes, l''analyse des trajets et du comportement de conduite, ainsi que la protection des données personnelles des conducteurs. Elle s''adresse aux gestionnaires de flotte, responsables sécurité, exploitants de transport et techniciens qui déploient ou exploitent une solution de géolocalisation. Prérequis : calculs de base, notion de vitesse (distance / temps) et racine carrée.', true, 110
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comment fonctionne le GPS : satellites, temps et trilatération', '## Objectifs de la leçon

- Expliquer comment un récepteur GPS calcule sa position.
- Comprendre le rôle du temps et de la vitesse de la lumière.
- Résoudre un exemple simple de trilatération et connaître les sources d''erreur.

## Le système GPS

Le GPS (Global Positioning System) est le système de positionnement par satellites des États-Unis. Il appartient à la famille des GNSS (systèmes mondiaux de navigation par satellites), avec GLONASS (Russie), Galileo (Union européenne) et BeiDou (Chine). Les récepteurs modernes utilisent souvent plusieurs constellations à la fois, ce qui améliore la précision.

Le GPS comprend trois segments :

- Le segment spatial : une constellation d''au moins 24 satellites opérationnels (en pratique davantage), répartis sur six plans orbitaux, à environ 20 200 km d''altitude. Chacun fait le tour de la Terre en un peu moins de 12 heures.
- Le segment de contrôle : des stations au sol qui suivent les satellites, corrigent leurs orbites et synchronisent leurs horloges.
- Le segment utilisateur : tous les récepteurs, qui ne font qu''écouter. Un récepteur GPS n''émet rien vers les satellites.

## Le principe : mesurer des distances avec le temps

Chaque satellite porte des horloges atomiques très précises. Il diffuse en permanence un signal contenant l''heure exacte d''émission et sa position sur son orbite (les éphémérides). Le récepteur note l''heure de réception. La différence entre les deux est le temps de trajet du signal. Comme le signal voyage à la vitesse de la lumière, environ 300 000 km/s, on obtient la distance :

distance = vitesse de la lumière × temps de trajet.

Exemple : un satellite situé à 20 200 km à la verticale du récepteur envoie un signal qui met 20 200 / 300 000 ≈ 0,0673 s, soit environ 67 millisecondes, pour arriver.

Cette méthode exige une précision extrême sur le temps : une erreur d''une microseconde (un millionième de seconde) produit une erreur de 300 000 km/s × 0,000001 s = 0,3 km, soit 300 m.

## La trilatération

Connaître sa distance à un satellite place le récepteur quelque part sur une sphère centrée sur ce satellite. Avec deux satellites, on est sur l''intersection de deux sphères (un cercle). Avec trois, on obtient deux points, dont un seul est plausible (l''autre est loin dans l''espace). C''est la trilatération : déterminer une position à partir de distances, sans mesurer d''angles.

Mais l''horloge du récepteur est une simple horloge à quartz, beaucoup moins précise que celles des satellites. Son décalage est une inconnue de plus. On a donc quatre inconnues : les trois coordonnées de position et le décalage d''horloge. Il faut au moins quatre satellites pour résoudre le problème. Les distances mesurées avant correction de l''horloge s''appellent des pseudo-distances.

## Exemple en deux dimensions

Pour comprendre le calcul, simplifions en plan. Trois balises sont placées en A(0 ; 0), B(10 ; 0) et C(0 ; 10), en kilomètres. Un récepteur mesure : distance à A = 5 km, à B = √65 km, à C = √45 km. Où est-il ?

Les équations des cercles sont :

- x² + y² = 25
- (x - 10)² + y² = 65
- x² + (y - 10)² = 45

En soustrayant la première de la deuxième : (x - 10)² - x² = 40, soit -20x + 100 = 40, donc x = 3.

En soustrayant la première de la troisième : (y - 10)² - y² = 20, soit -20y + 100 = 20, donc y = 4.

Vérification : 3² + 4² = 9 + 16 = 25. Le récepteur est en (3 ; 4). Le GPS fait le même type de calcul en trois dimensions, avec le décalage d''horloge en plus.

## Les coordonnées

Le GPS donne une position en latitude, longitude et altitude, dans le système de référence WGS 84. La latitude va de 0° à l''équateur à 90° aux pôles (positive au nord) ; la longitude va de 0° au méridien de Greenwich à 180° (négative à l''ouest). Dakar se trouve vers 14,7° de latitude nord et 17,4° de longitude ouest, soit environ (14,7 ; -17,4) en degrés décimaux.

Un degré de latitude correspond à environ 111 km. Un degré de longitude vaut environ 111 × cos(latitude) km : à la latitude de Dakar, cos(14,7°) ≈ 0,967, donc environ 107 km.

## Les sources d''erreur

- La traversée de l''ionosphère et de la troposphère ralentit le signal.
- Les trajets multiples : le signal rebondit sur les immeubles avant d''arriver, ce qui allonge la distance mesurée.
- Les masques : tunnels, parkings souterrains, rues étroites entre immeubles, végétation dense.
- La géométrie des satellites : des satellites regroupés dans une même région du ciel donnent une position moins précise que des satellites bien répartis.

En ciel dégagé, un récepteur civil courant atteint une précision de quelques mètres.

## Points clés

- Le GPS calcule des distances à partir du temps de trajet des signaux.
- Il faut au moins quatre satellites : trois coordonnées et le décalage d''horloge.
- Une microseconde d''erreur représente 300 m.
- Bâtiments, tunnels et atmosphère dégradent la précision.

## Exercices

- Exercice 1 : quelle distance correspond à un temps de trajet de 0,07 s ?
- Exercice 2 : quelle erreur de position produit une erreur d''horloge de 10 nanosecondes (0,00000001 s) ?
- Exercice 3 : pourquoi faut-il quatre satellites et non trois ?
- Exercice 4 : balises A(0 ; 0) et B(8 ; 0) ; distances mesurées 5 km à A et 5 km à B. Trouvez les deux positions possibles.
- Exercice 5 : deux points ont la même longitude et des latitudes de 14,70° et 14,75°. Quelle distance les sépare ?

## Corrigé

Exercice 1 : 300 000 × 0,07 = 21 000 km.

Exercice 2 : 300 000 000 m/s × 0,00000001 s = 3 m.

Exercice 3 : parce que l''horloge du récepteur n''est pas synchronisée avec celles des satellites : son décalage est une quatrième inconnue qui s''ajoute aux trois coordonnées.

Exercice 4 : x² + y² = 25 et (x - 8)² + y² = 25. En soustrayant : -16x + 64 = 0, donc x = 4. Puis y² = 25 - 16 = 9, donc y = 3 ou y = -3. Positions possibles : (4 ; 3) et (4 ; -3). Une troisième balise permettrait de trancher.

Exercice 5 : écart de 0,05° de latitude ; 0,05 × 111 = 5,55 km.', 'texte', 50, true, 10
from public.courses c where c.slug = 'formation-gps-avance'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comment fonctionne le GPS : satellites, temps et trilatération');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Traceurs et télématique embarquée', '## Objectifs de la leçon

- Décrire les composants d''une solution de télématique embarquée.
- Choisir un traceur et une offre adaptés aux besoins.
- Estimer les volumes de données et le retour sur investissement.

## De la géolocalisation à la télématique

Un récepteur GPS seul calcule une position mais ne la transmet à personne. Un traceur ajoute un moyen de communication (généralement un modem mobile avec une carte SIM) pour envoyer cette position à un serveur. La télématique combine la géolocalisation avec d''autres données du véhicule (contact moteur, régime, consommation, température, portes) sur une plateforme de suivi.

## Les composants d''une solution

- Le boîtier embarqué : récepteur GNSS, modem cellulaire, carte SIM, mémoire, accéléromètre, batterie de secours.
- Les antennes : GNSS et cellulaire, intégrées ou déportées.
- Les entrées et sorties : fil de contact (détection moteur allumé), boutons d''alerte, capteurs de porte, sortie pour couper le démarreur à l''arrêt en cas de vol, selon les règles de sécurité.
- Les capteurs optionnels : sonde de niveau de carburant, sonde de température pour le transport frigorifique, lecteur d''identification du conducteur.
- La connexion au réseau du véhicule : prise de diagnostic OBD ou bus CAN, qui donnent accès au kilométrage réel, au régime moteur, à la consommation ou aux codes défaut, selon les véhicules.
- La plateforme : serveur et application web ou mobile qui affichent les cartes, les historiques, les alertes et les rapports.

## Le fonctionnement

Le boîtier calcule régulièrement sa position et l''enregistre avec l''heure, la vitesse, le cap et l''état des entrées. Il envoie ces données selon des règles paramétrables : par exemple toutes les 30 secondes en roulant, toutes les 30 minutes à l''arrêt, et immédiatement en cas d''événement (allumage, coupure d''alimentation, choc). Quand le réseau mobile est absent, en zone rurale par exemple, le boîtier stocke les positions et les envoie dès que la couverture revient.

## Estimer les volumes de données

Exemple : un véhicule roule 10 heures par jour avec une position toutes les 30 secondes. Nombre de positions : 10 × 3 600 / 30 = 1 200 par jour. Si chaque message pèse environ 100 octets (valeur d''ordre de grandeur, elle varie selon le protocole), le volume quotidien est 1 200 × 100 = 120 000 octets, soit environ 120 ko par jour, et environ 3,6 Mo pour 30 jours. Ce calcul aide à choisir le forfait de données de la carte SIM.

Plus la fréquence est élevée, plus le tracé est précis et plus le volume de données augmente. Une fréquence trop faible rend l''analyse des trajets et des vitesses peu fiable.

## Choisir un traceur et un prestataire

Avant de choisir, on écrit les besoins : sécurité contre le vol, suivi des tournées, contrôle du carburant, preuve de passage chez les clients, suivi de la température, analyse de conduite. Puis on compare les offres sur des critères écrits :

- Précision et fiabilité du boîtier, résistance à la chaleur, à la poussière et aux vibrations.
- Fonctionnement en cas de coupure (batterie de secours) et alerte en cas d''arrachement.
- Couverture des réseaux mobiles sur les itinéraires réels.
- Qualité de la plateforme : cartes à jour, rapports, alertes, application mobile, export des données.
- Installation par des techniciens qualifiés, sans perturber l''électricité du véhicule ni la garantie.
- Service après-vente, délais d''intervention, présence locale.
- Coût total : boîtiers, installation, abonnement mensuel, cartes SIM.
- Hébergement, sécurité et confidentialité des données.

## Calculer le retour sur investissement

Exemple pour une flotte de 30 véhicules. Les prix sont des montants d''exemple, à remplacer par des devis réels.

- Boîtiers et installation : 30 × 120 000 = 3 600 000 FCFA, payés la première année.
- Abonnements : 30 × 8 000 × 12 = 2 880 000 FCFA par an.
- Coût de la première année : 6 480 000 FCFA ; années suivantes : 2 880 000 FCFA.

Gains attendus, estimés à partir d''un projet pilote : réduction de 8 % d''une dépense carburant de 60 000 000 FCFA par an, soit 4 800 000 FCFA, grâce à la fin des trajets non autorisés et à la réduction du ralenti ; baisse des sinistres et de la maintenance estimée à 1 500 000 FCFA. Total : 6 300 000 FCFA par an.

La première année est presque à l''équilibre (6 300 000 - 6 480 000 = -180 000 FCFA) ; les années suivantes, le gain net est 6 300 000 - 2 880 000 = 3 420 000 FCFA par an. Ces gains supposent que quelqu''un exploite les données et agisse.

## Exemple : un transporteur frigorifique à Dakar

Un transporteur de produits de la mer équipe ses 12 camions frigorifiques de traceurs avec sondes de température. Le client exige la preuve que la chaîne du froid est respectée. La plateforme envoie une alerte si la température dépasse le seuil fixé pendant plus de 10 minutes, et produit un rapport de température par livraison. Le transporteur gagne un contrat avec un exportateur grâce à cette traçabilité.

## Points clés

- Traceur = récepteur GNSS + modem de communication + plateforme.
- La télématique ajoute les données du véhicule et des capteurs.
- La fréquence d''envoi fixe la précision et le volume de données.
- Le retour sur investissement dépend de l''exploitation réelle des données.

## Exercices

- Exercice 1 : citez cinq composants d''une solution de télématique.
- Exercice 2 : un véhicule roule 8 heures par jour avec une position toutes les 20 secondes. Combien de positions par jour ?
- Exercice 3 : avec 120 octets par message, quel volume mensuel (30 jours) pour l''exercice 2 ?
- Exercice 4 : 20 véhicules, boîtier et installation 150 000 FCFA, abonnement 7 500 FCFA par mois. Calculez le coût de la première année et des années suivantes.

## Corrigé

Exercice 1 : récepteur GNSS, modem et carte SIM, antennes, accéléromètre, batterie de secours, capteurs (carburant, température), plateforme de suivi.

Exercice 2 : 8 × 3 600 / 20 = 1 440 positions.

Exercice 3 : 1 440 × 120 = 172 800 octets par jour ; × 30 = 5 184 000 octets, soit environ 5,2 Mo par mois.

Exercice 4 : équipement 20 × 150 000 = 3 000 000 FCFA ; abonnements 20 × 7 500 × 12 = 1 800 000 FCFA par an ; première année 4 800 000 FCFA ; années suivantes 1 800 000 FCFA.', 'texte', 50, false, 20
from public.courses c where c.slug = 'formation-gps-avance'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Traceurs et télématique embarquée');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Géofencing, zones et alertes', '## Objectifs de la leçon

- Définir le géofencing et ses usages.
- Paramétrer des zones et des règles d''alerte pertinentes.
- Calculer si un véhicule est dans une zone et limiter les fausses alertes.

## Qu''est-ce que le géofencing ?

Le géofencing (ou barrière virtuelle, géorepérage) consiste à dessiner sur la carte des zones géographiques et à associer des règles aux mouvements des véhicules par rapport à ces zones. Quand un véhicule entre dans une zone, en sort, y reste trop longtemps ou y dépasse une vitesse, la plateforme déclenche une alerte ou enregistre un événement.

## Les types de zones

- Le cercle : défini par un centre (latitude, longitude) et un rayon. Simple, adapté à un dépôt, un client, une station-service.
- Le polygone : défini par une liste de sommets. Adapté à une zone de forme irrégulière : un quartier, un port, une zone industrielle.
- Le corridor : une bande de largeur fixée autour d''un itinéraire, par exemple la route nationale entre Dakar et Kaolack.

## Les usages courants

- Sécurité : alerte si un véhicule quitte le dépôt la nuit ou le week-end.
- Exploitation : enregistrement automatique des heures d''arrivée et de départ chez les clients, preuve de passage.
- Conformité : alerte si un camion sort de son corridor autorisé ou entre dans une zone interdite (centre-ville aux heures de pointe, zone à risque).
- Vitesse : limite plus basse dans une zone scolaire ou un site industriel.
- Carburant : rapprochement entre les pleins déclarés et la présence effective du véhicule à la station.
- Facturation : temps passé sur un chantier pour refacturer un client.

## Paramétrer une règle

Une règle se décrit en cinq éléments :

- La zone concernée.
- L''événement : entrée, sortie, présence prolongée, vitesse dépassée.
- Les conditions : jours, heures, véhicules ou groupes concernés.
- Les destinataires : qui reçoit l''alerte, par quel canal (application, SMS, courriel).
- L''action attendue : appeler le chauffeur, prévenir la sécurité, simple enregistrement.

Exemple : "Si un véhicule du groupe Livraisons sort de la zone Dépôt Rufisque entre 21 h et 5 h, envoyer une notification au chef de poste de sécurité, qui appelle le chauffeur et, sans réponse, la gendarmerie selon la procédure."

## Calculer la position par rapport à un cercle

Pour de petites distances, on peut assimiler la surface terrestre à un plan. On convertit les écarts de coordonnées en mètres :

- écart nord-sud (m) ≈ écart de latitude (degrés) × 111 000
- écart est-ouest (m) ≈ écart de longitude (degrés) × 111 000 × cos(latitude)

puis on applique le théorème de Pythagore : distance = √(écart nord-sud² + écart est-ouest²).

Exemple : la zone Dépôt a pour centre (14,7000 ; -17,4500) et un rayon de 500 m. Un véhicule est signalé en (14,7030 ; -17,4470). Écart de latitude 0,0030°, soit 0,0030 × 111 000 = 333 m. Écart de longitude 0,0030°, soit 0,0030 × 111 000 × 0,967 ≈ 322 m. Distance = √(333² + 322²) = √(110 889 + 103 684) = √214 573 ≈ 463 m. Le véhicule est à l''intérieur du cercle, près du bord.

## Éviter les fausses alertes

Une position GPS n''est jamais parfaite : à l''arrêt, elle "dérive" de quelques mètres, et davantage entre des immeubles. Un véhicule garé au bord de la zone peut sembler entrer et sortir plusieurs fois. Trop d''alertes inutiles produisent la lassitude : les opérateurs finissent par ne plus les lire, et la vraie alerte passe inaperçue. Les bonnes pratiques :

- Prévoir une marge : rayon un peu plus grand que la zone réelle.
- Ajouter une temporisation : alerter seulement si la sortie dure plus de 2 ou 3 minutes.
- Combiner les conditions : sortie de zone et moteur allumé et vitesse supérieure à 10 km/h.
- Limiter les destinataires et hiérarchiser : alerte critique immédiate, alerte mineure dans un rapport quotidien.
- Revoir chaque mois les règles qui génèrent le plus d''alertes sans suite.

## La procédure de traitement

Chaque alerte critique doit avoir une procédure écrite : qui la reçoit, en combien de temps on réagit, qui on appelle, comment on clôture l''alerte en notant la cause (fausse alerte, sortie autorisée, incident réel). Ce registre permet de mesurer le temps de réaction et d''améliorer les règles.

## Points clés

- Le géofencing associe des zones (cercle, polygone, corridor) à des règles.
- Une règle comprend zone, événement, conditions, destinataires et action.
- La distance à un centre se calcule avec la conversion en mètres et Pythagore.
- Marges, temporisations et conditions combinées limitent les fausses alertes.

## Exercices

- Exercice 1 : citez quatre usages du géofencing dans une entreprise de livraison.
- Exercice 2 : zone de centre (14,7000 ; -17,4500) et rayon 600 m. Un véhicule est en (14,7060 ; -17,4520). Est-il dans la zone ? (cos 14,7° ≈ 0,967)
- Exercice 3 : rédigez une règle complète pour surveiller l''arrivée d''un camion chez un client.
- Exercice 4 : une règle génère 40 alertes par jour, dont 38 fausses. Proposez trois corrections.

## Corrigé

Exercice 1 : alerte de sortie du dépôt la nuit, preuve d''arrivée chez les clients, respect d''un corridor, limitation de vitesse sur site, contrôle des pleins à la station.

Exercice 2 : écart nord-sud 0,0060 × 111 000 = 666 m ; écart est-ouest 0,0020 × 111 000 × 0,967 ≈ 215 m. Distance = √(666² + 215²) = √(443 556 + 46 225) = √489 781 ≈ 700 m. 700 m est supérieur à 600 m : le véhicule est hors de la zone.

Exercice 3 : zone : cercle de 200 m autour de l''entrepôt du client ; événement : entrée puis sortie ; conditions : véhicules du groupe Livraisons, jours ouvrés ; destinataires : service clients, par rapport et notification ; action : enregistrer l''heure d''arrivée et de départ et informer le client de la livraison.

Exercice 4 : ajouter une temporisation de quelques minutes ; agrandir légèrement la zone ; combiner avec moteur allumé et vitesse minimale ; restreindre les horaires ou les véhicules concernés.', 'texte', 50, false, 30
from public.courses c where c.slug = 'formation-gps-avance'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Géofencing, zones et alertes');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Analyser les trajets et le comportement de conduite', '## Objectifs de la leçon

- Exploiter les historiques de trajets pour mieux organiser l''activité.
- Mesurer le comportement de conduite avec des indicateurs objectifs.
- Construire un score de conduite et un plan d''accompagnement.

## Ce que racontent les données

Chaque position enregistrée comporte une heure, des coordonnées, une vitesse et souvent l''état du moteur. Mises bout à bout, ces données reconstituent les trajets : départ, itinéraire, arrêts, durée, kilomètres. L''accéléromètre du boîtier ajoute des événements de conduite : freinages brusques, accélérations brusques, virages serrés, chocs.

## Les indicateurs de trajet

- Kilomètres parcourus par véhicule et par jour.
- Temps de conduite et temps d''arrêt.
- Temps de ralenti : moteur allumé, véhicule à l''arrêt.
- Nombre d''arrêts et durée moyenne chez les clients.
- Trajets hors horaires de service.
- Écart entre l''itinéraire prévu et l''itinéraire réel.

Exemple de calcul de vitesse moyenne entre deux positions : un camion est relevé à 10 h 00 puis à 10 h 04 et a parcouru 5 km entre les deux. Vitesse moyenne = 5 km / (4/60) h = 5 × 15 = 75 km/h.

## Optimiser l''organisation

L''analyse des trajets permet de réorganiser les tournées : regrouper les clients proches, éviter les axes saturés aux heures de pointe à Dakar, réduire les kilomètres à vide. Elle permet aussi de vérifier les temps passés chez les clients et de mieux les facturer, ou de détecter un véhicule sous-utilisé qui pourrait être réaffecté.

## Le coût du ralenti

Un moteur qui tourne à l''arrêt consomme du carburant sans produire de déplacement, par exemple pour garder la climatisation pendant une attente. Cette consommation dépend du moteur ; on la mesure sur ses propres véhicules. Prenons une hypothèse de 1 litre par heure et un prix fictif de 800 FCFA le litre. Pour 30 véhicules avec 1 heure de ralenti par jour sur 22 jours : 30 × 1 × 22 × 1 = 660 litres par mois, soit 660 × 800 = 528 000 FCFA par mois, plus de 6 300 000 FCFA par an. Diviser le ralenti par deux économise donc plus de 3 000 000 FCFA par an dans cet exemple.

## Les indicateurs de comportement

- Excès de vitesse : nombre, durée et ampleur des dépassements de la limite fixée (limite légale de la route ou limite interne de l''entreprise).
- Freinages brusques : décélération supérieure à un seuil paramétré.
- Accélérations brusques.
- Virages serrés.
- Conduite de nuit ou durée de conduite sans pause.

Pour comparer des conducteurs qui ne roulent pas autant, on rapporte les événements à la distance : nombre d''événements pour 100 km.

Exemple : le conducteur A a 12 freinages brusques sur 800 km, soit 12 / 800 × 100 = 1,5 pour 100 km. Le conducteur B en a 30 sur 1 200 km, soit 2,5 pour 100 km. Malgré plus de kilomètres, B a une conduite plus brusque.

## Construire un score de conduite

Un score simple part de 100 points et retire des points par événement pour 100 km, avec des poids choisis par l''entreprise. Exemple de barème interne : moins 4 points par freinage brusque pour 100 km, moins 3 par accélération brusque pour 100 km, moins 6 par excès de vitesse pour 100 km.

Conducteur B : 2,5 freinages, 1,0 accélération et 0,5 excès pour 100 km. Score = 100 - 4 × 2,5 - 3 × 1,0 - 6 × 0,5 = 100 - 10 - 3 - 3 = 84.

Les seuils et poids doivent être expliqués aux conducteurs et stables dans le temps, sinon le score perd sa crédibilité. Il faut aussi tenir compte du contexte : un chauffeur de pistes rurales aura plus d''événements qu''un chauffeur sur autoroute.

## Accompagner plutôt que punir

L''objectif est de réduire les accidents et les coûts, pas de sanctionner à tout prix. Une démarche efficace :

- Présenter le dispositif et le barème aux conducteurs avant le démarrage.
- Partager chaque mois le score individuel avec le conducteur, en entretien.
- Identifier avec lui les situations à risque (itinéraire, horaires, fatigue).
- Proposer une formation à la conduite défensive et économique.
- Reconnaître les progrès et les meilleurs conducteurs.
- Réserver les sanctions aux manquements graves et répétés, dans le respect du règlement intérieur et du droit du travail.

## Exemple : une société de transport de personnel à Thiès

Une société qui transporte des ouvriers vers des chantiers équipe ses 15 minibus. Le premier mois, la moyenne est de 3,2 freinages brusques pour 100 km et 20 % des trajets comportent un excès de vitesse. Après trois mois d''entretiens mensuels, d''une formation et d''une prime collective liée au score, la moyenne descend à 1,4 freinage pour 100 km et la consommation baisse de 7 %.

## Points clés

- Les données de trajet reconstituent l''activité : kilomètres, arrêts, ralenti, horaires.
- Les événements de conduite se comparent pour 100 km.
- Un score repose sur un barème connu, stable et adapté au contexte.
- L''accompagnement des conducteurs produit plus de résultats que la sanction seule.

## Exercices

- Exercice 1 : un véhicule parcourt 3 km en 6 minutes. Quelle est sa vitesse moyenne ?
- Exercice 2 : un conducteur a 18 freinages brusques sur 1 500 km. Combien pour 100 km ?
- Exercice 3 : avec le barème de la leçon, calculez le score d''un conducteur ayant 1,2 freinage, 0,8 accélération et 1,5 excès pour 100 km.
- Exercice 4 : 20 véhicules, 1,5 heure de ralenti par jour, 22 jours, 1 L/h, 800 FCFA le litre (prix fictif). Calculez le coût mensuel du ralenti.

## Corrigé

Exercice 1 : 6 minutes = 0,1 h ; vitesse = 3 / 0,1 = 30 km/h.

Exercice 2 : 18 / 1 500 × 100 = 1,2 freinage pour 100 km.

Exercice 3 : 100 - 4 × 1,2 - 3 × 0,8 - 6 × 1,5 = 100 - 4,8 - 2,4 - 9 = 83,8.

Exercice 4 : 20 × 1,5 × 22 × 1 = 660 litres ; 660 × 800 = 528 000 FCFA par mois.', 'texte', 50, false, 40
from public.courses c where c.slug = 'formation-gps-avance'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Analyser les trajets et le comportement de conduite');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Protéger les données personnelles des conducteurs', '## Objectifs de la leçon

- Comprendre pourquoi les données de géolocalisation sont des données personnelles.
- Appliquer les grands principes de protection des données à un projet de géolocalisation.
- Rédiger les règles d''information et d''usage pour les conducteurs.

## La géolocalisation touche à la vie privée

Une position GPS associée à un véhicule conduit par une personne identifiable est une donnée à caractère personnel. Elle révèle beaucoup : lieux fréquentés, horaires, habitudes, domicile, et parfois des informations sensibles (lieu de culte, établissement de santé). L''employeur a des raisons légitimes de géolocaliser ses véhicules, mais il ne peut pas en faire un outil de surveillance permanente et sans limite de ses salariés.

## Le cadre juridique

Au Sénégal, la protection des données personnelles est encadrée par la loi de 2008 sur la protection des données à caractère personnel, dont l''application est contrôlée par la Commission de protection des données personnelles (CDP). Selon les traitements, des formalités préalables (déclaration ou demande d''autorisation) doivent être accomplies auprès de la CDP avant la mise en œuvre. Au niveau régional et continental, la CEDEAO et l''Union africaine ont également adopté des textes sur la protection des données personnelles. Le cadre juridique évolue : avant tout projet, il faut vérifier les textes en vigueur et les recommandations de la CDP, et faire valider le dispositif par un juriste.

Ce cours présente les principes généraux communs à ces textes, sans remplacer la lecture des règles officielles.

## Les grands principes appliqués à la géolocalisation

La finalité : on définit à l''avance et par écrit pourquoi on géolocalise. Exemples de finalités légitimes : sécurité des véhicules et des personnes, organisation des tournées, suivi du temps de transport pour la facturation, preuve de livraison, maîtrise des coûts. Les données ne doivent pas être détournées vers une autre finalité.

La proportionnalité : on ne collecte que ce qui est nécessaire à la finalité. Si le but est la sécurité contre le vol, il n''est pas utile d''analyser chaque minute de la pause déjeuner. La fréquence de relevé, les données collectées et les personnes qui y accèdent doivent être adaptées.

La transparence et l''information : les conducteurs sont informés avant la mise en service, par écrit : finalités, données collectées, durée de conservation, destinataires, droits et contact. Les représentants du personnel sont consultés selon le droit applicable. Un dispositif caché est à proscrire.

La durée de conservation limitée : les données sont conservées le temps nécessaire à la finalité, puis supprimées ou anonymisées. Cette durée est fixée par écrit et justifiée ; il faut vérifier les recommandations de la CDP.

La sécurité : accès réservé à des personnes habilitées, mots de passe individuels, traçabilité des consultations, contrat avec le prestataire qui précise ses obligations de sécurité et le lieu d''hébergement.

Les droits des personnes : le conducteur peut demander à accéder aux données qui le concernent, à les faire rectifier si elles sont inexactes, et s''opposer dans les cas prévus par la loi.

## Les bonnes pratiques spécifiques

- Vie privée : si l''usage privé du véhicule est autorisé (soirs, week-ends), prévoir la possibilité de désactiver la géolocalisation pendant ces périodes, ou de ne pas exploiter ces données.
- Pas de surveillance continue des personnes : on suit l''activité des véhicules pour les finalités prévues, pas les faits et gestes des conducteurs.
- Pas de géolocalisation pour contrôler en permanence la vitesse dans le but unique de sanctionner, sans cadre défini ; le suivi de la conduite doit être prévu, expliqué et proportionné.
- Profils d''accès : le chef d''exploitation voit les positions en temps réel ; la direction voit des rapports agrégés ; les ressources humaines n''accèdent aux données individuelles que dans les cas prévus.
- Registre : documenter le traitement (finalités, données, durées, accès, mesures de sécurité).

## Exemple : la charte de géolocalisation d''une entreprise de distribution

Une entreprise de distribution de Ziguinchor déploie des traceurs sur 25 véhicules. Elle rédige une charte annexée à la politique conducteurs : finalités (sécurité contre le vol, optimisation des tournées, preuve de livraison) ; données collectées (position, vitesse, contact moteur, événements de conduite) ; pas de collecte en dehors des heures de service grâce à un bouton vie privée pour les cinq véhicules à usage mixte ; durée de conservation définie et justifiée ; accès limité au responsable de flotte et au chef d''exploitation ; droits des conducteurs et contact. Elle accomplit les formalités auprès de la CDP, présente la charte aux délégués du personnel et la fait signer par chaque conducteur pour attester qu''il en a pris connaissance.

## Points clés

- Les positions d''un véhicule conduit par une personne identifiable sont des données personnelles.
- Au Sénégal, la loi de 2008 et la CDP encadrent ces traitements ; vérifier les textes en vigueur.
- Finalité, proportionnalité, information, durée limitée, sécurité et droits des personnes sont les principes clés.
- Une charte écrite, des accès limités et le respect de la vie privée hors service rendent le dispositif acceptable.

## Exercices

- Exercice 1 : pourquoi une position GPS de véhicule est-elle une donnée personnelle ?
- Exercice 2 : citez trois finalités légitimes de la géolocalisation d''une flotte.
- Exercice 3 : un directeur veut consulter chaque soir où se trouvent les véhicules de fonction à usage privé, "pour voir". Qu''en pensez-vous ?
- Exercice 4 : citez six informations à donner aux conducteurs avant la mise en service.
- Exercice 5 : proposez trois mesures de sécurité pour protéger les données de géolocalisation.

## Corrigé

Exercice 1 : parce qu''elle est associée à un véhicule conduit par une personne identifiable (registre d''affectation, badge) et révèle ses déplacements, ses horaires et ses habitudes.

Exercice 2 : sécurité contre le vol, organisation et optimisation des tournées, preuve de livraison ou facturation du temps de transport, maîtrise des coûts de carburant.

Exercice 3 : cette consultation n''a pas de finalité légitime définie et porte sur la vie privée en dehors des heures de service : elle est disproportionnée. Il faut prévoir la désactivation ou la non-exploitation des données pendant l''usage privé.

Exercice 4 : finalités, données collectées, durée de conservation, destinataires, droits d''accès et de rectification, personne à contacter, existence des périodes de désactivation.

Exercice 5 : comptes individuels avec mots de passe solides, profils d''accès limités selon les fonctions, traçabilité des consultations, contrat de sécurité avec le prestataire, suppression des données à l''expiration de la durée de conservation.', 'texte', 50, false, 50
from public.courses c where c.slug = 'formation-gps-avance'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Protéger les données personnelles des conducteurs');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : déployer et exploiter la géolocalisation d''une flotte', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : gestionnaires de flotte, responsables sécurité, exploitants de transport, techniciens télématiques.
- Objectifs : expliquer le fonctionnement du GPS, choisir et paramétrer une solution de télématique, créer des zones et des alertes efficaces, analyser trajets et conduite, respecter la protection des données des conducteurs.
- Matériel : diaporama, carte projetée d''une plateforme de suivi (démonstration), tableau blanc, calculatrice.
- Prérequis : notions de vitesse, racine carrée ; lecture des leçons du module conseillée.

## Déroulé minuté

## 00:00 – 05:00 · Introduction et cas fil rouge

Bonjour à toutes et à tous. Pendant cette séance, nous accompagnons la société fictive Baobab Express, qui livre des colis et des produits frais entre Dakar, Thiès, Mbour et Kaolack avec 30 véhicules. Elle a subi deux vols de véhicules l''an dernier, ses dépenses de carburant augmentent et ses clients demandent des preuves de livraison. La direction a décidé d''installer une solution de géolocalisation. Notre rôle : la concevoir de bout en bout, de la compréhension du GPS jusqu''à la charte de protection des données.

Question d''ouverture : selon vous, un traceur GPS envoie-t-il des signaux vers les satellites ? Gardez votre réponse, nous la vérifions tout de suite.

## 05:00 – 20:00 · Comment fonctionne le GPS

La réponse est non : le récepteur GPS ne fait qu''écouter. Visuel : la constellation, avec des satellites à environ 20 200 km d''altitude répartis sur six plans orbitaux. Chaque satellite porte des horloges atomiques et diffuse l''heure exacte d''émission et sa position. Le récepteur mesure le temps de trajet et le multiplie par la vitesse de la lumière, environ 300 000 km par seconde.

Calcul au tableau : un temps de trajet de 0,0673 seconde donne 300 000 fois 0,0673, soit environ 20 190 km. Et si l''horloge se trompe d''une seule microseconde ? 300 000 km/s fois un millionième de seconde, soit 300 mètres d''erreur. Voilà pourquoi le temps est au cœur du GPS.

Visuel : trois sphères qui se coupent. Avec une distance, on est sur une sphère ; avec deux, sur un cercle ; avec trois, sur deux points. Mais l''horloge du récepteur n''est pas parfaite : son décalage est une quatrième inconnue. Il faut donc au moins quatre satellites.

Exemple en plan : balises A(0 ; 0), B(10 ; 0), C(0 ; 10) et distances 5, √65 et √45 kilomètres. En soustrayant les équations des cercles, on trouve x = 3, puis y = 4. Nous vérifions : 9 plus 16 égale 25. Enfin, je vous rappelle les sources d''erreur : atmosphère, rebonds sur les immeubles, tunnels et parkings souterrains, mauvaise répartition des satellites dans le ciel. En ciel dégagé, un récepteur civil courant est précis à quelques mètres.

## 20:00 – 33:00 · Traceurs et télématique pour Baobab Express

Passons à la solution. Visuel : schéma du boîtier avec récepteur GNSS multi-constellations, modem et carte SIM, accéléromètre, batterie de secours, entrée contact moteur, sonde de température pour les véhicules frigorifiques, connexion au réseau du véhicule.

Paramétrage : une position toutes les 30 secondes en roulant, toutes les 30 minutes à l''arrêt, envoi immédiat en cas d''allumage, de choc ou de coupure d''alimentation. Calculons le volume : 10 heures de route font 36 000 secondes, divisées par 30, soit 1 200 positions par jour. À environ 100 octets par message, cela fait 120 ko par jour et environ 3,6 Mo par mois. Un petit forfait de données suffit.

Le budget, avec des montants d''exemple à confirmer par devis : 30 boîtiers installés à 120 000 FCFA, soit 3 600 000 FCFA, et un abonnement de 8 000 FCFA par mois et par véhicule, soit 2 880 000 FCFA par an. Les gains attendus, estimés sur un pilote de 5 véhicules : 8 % de carburant sur une dépense de 60 000 000 FCFA, soit 4 800 000 FCFA, et 1 500 000 FCFA de baisse des sinistres et de la maintenance. Question à la salle : à quelle condition ces gains seront-ils réels ? Réponse attendue : si quelqu''un est chargé d''exploiter les rapports et d''agir.

## 33:00 – 45:00 · Géofencing et alertes

Créons maintenant les zones de Baobab Express. Visuel : la carte de la plateforme avec le dépôt de Rufisque, les entrepôts des grands clients et le corridor de la route nationale vers Kaolack.

Première règle, la sécurité : si un véhicule sort de la zone Dépôt entre 21 h et 5 h, alerte immédiate au poste de sécurité, qui appelle le chauffeur puis suit la procédure. Deuxième règle, l''exploitation : entrée et sortie des zones clients enregistrées automatiquement pour la preuve de livraison. Troisième règle, la conformité : alerte si un camion sort du corridor autorisé de plus de 2 km.

Calculons une position. Centre du dépôt (14,7000 ; -17,4500), rayon 500 mètres. Le véhicule est signalé en (14,7030 ; -17,4470). Écart nord-sud : 0,003 fois 111 000, soit 333 mètres. Écart est-ouest : 0,003 fois 111 000 fois 0,967, soit environ 322 mètres. Distance : racine de 333 au carré plus 322 au carré, environ 463 mètres. Il est dans la zone, mais près du bord : attention aux fausses alertes. Nous ajoutons une temporisation de 3 minutes et la condition moteur allumé.

## 45:00 – 50:00 · Pause et quiz interactif

Pause active. Répondez dans le chat.

Question 1 : combien de satellites faut-il au minimum pour une position GPS en trois dimensions ? Réponse : quatre.

Question 2 : quelle erreur produit une erreur d''horloge de 2 microsecondes ? Réponse : 600 mètres.

Question 3 : quel type de zone choisir pour un itinéraire routier ? Réponse : un corridor.

Question 4 : 8 heures de route, une position toutes les 60 secondes : combien de positions ? Réponse : 480.

Question 5 : vrai ou faux, plus il y a d''alertes, mieux la flotte est protégée ? Réponse : faux, trop d''alertes inutiles créent la lassitude et la vraie alerte passe inaperçue.

## 50:00 – 1:04:00 · Analyser les trajets et la conduite

Trois mois ont passé. Visuel : le rapport mensuel de Baobab Express. Premier constat : le ralenti. Les véhicules tournent moteur allumé à l''arrêt en moyenne 1 heure par jour. Avec une hypothèse de 1 litre par heure et un prix fictif de 800 FCFA, pour 30 véhicules et 22 jours : 660 litres et 528 000 FCFA par mois.

Deuxième constat : la conduite. Calculons pour deux chauffeurs. Moussa : 12 freinages brusques sur 800 km, soit 1,5 pour 100 km. Awa : 9 sur 1 000 km, soit 0,9 pour 100 km. Appliquons le barème interne : moins 4 points par freinage, moins 3 par accélération et moins 6 par excès de vitesse, le tout pour 100 km. Moussa a aussi 1,0 accélération et 0,5 excès : score 100 moins 6 moins 3 moins 3, soit 88. Awa a 0,5 accélération et 0 excès : score 100 moins 3,6 moins 1,5, soit 94,9.

Troisième constat : un véhicule fait régulièrement un détour de 15 km sur la tournée de Mbour. L''analyse montre que l''itinéraire prévu passe par une route en travaux : il faut corriger le plan de tournée, pas sanctionner le chauffeur. Question : comment présenter ces résultats aux chauffeurs ? Réponse attendue : en entretien individuel, avec le barème connu, en cherchant les causes et en proposant une formation.

## 1:04:00 – 1:18:00 · Protéger les données des conducteurs

Nous arrivons à un point essentiel. Les positions des véhicules de Baobab Express, associées aux chauffeurs, sont des données personnelles. Au Sénégal, la loi de 2008 sur la protection des données à caractère personnel s''applique et la CDP contrôle sa mise en œuvre. Avant le déploiement, l''entreprise accomplit les formalités prévues auprès de la CDP et vérifie les textes en vigueur, car le cadre évolue.

Visuel : les six principes. Finalité : sécurité, tournées, preuve de livraison, maîtrise des coûts. Proportionnalité : pas plus de données que nécessaire. Information : chaque chauffeur reçoit une note écrite avant la mise en service, et les représentants du personnel sont consultés. Durée de conservation limitée et justifiée. Sécurité : comptes individuels, profils d''accès, traçabilité. Droits des personnes : accès et rectification.

Cas pratique : cinq véhicules de Baobab Express sont à usage mixte et les cadres les gardent le week-end. Que faire ? Installer un bouton vie privée ou ne pas exploiter les données hors service. Autre cas : le directeur commercial demande l''accès en temps réel à toutes les positions pour vérifier ses commerciaux. Question à la salle : est-ce proportionné ? Discutons-en : un accès aux rapports de visites clients répond à son besoin, sans suivi minute par minute.

## 1:18:00 – 1:30:00 · Synthèse et évaluation finale

Résumons. Le GPS mesure des temps de trajet pour en déduire des distances, et il faut quatre satellites. Le traceur ajoute la communication, la télématique ajoute les données du véhicule. Le géofencing transforme des zones en règles et en alertes, à condition de limiter les fausses alertes. L''analyse des trajets et de la conduite réduit les coûts et les risques, surtout si l''on accompagne les chauffeurs. Enfin, tout repose sur le respect des données personnelles : finalité, proportionnalité, information, durée limitée, sécurité, droits.

Évaluation finale.

Question 1 : pourquoi le GPS a-t-il besoin d''horloges atomiques ? Réponse : parce que la position se déduit du temps de trajet ; une microseconde d''erreur fait 300 mètres.

Question 2 : un véhicule parcourt 6 km en 5 minutes : vitesse moyenne ? Réponse : 6 divisé par 5/60, soit 72 km/h.

Question 3 : un point est à 400 mètres au nord et 300 mètres à l''est du centre d''une zone de rayon 450 mètres : est-il dedans ? Réponse : distance racine de 160 000 plus 90 000, soit 500 mètres : il est dehors.

Question 4 : 15 freinages brusques sur 1 000 km : combien pour 100 km ? Réponse : 1,5.

Question 5 : citez quatre principes de protection des données appliqués à la géolocalisation. Réponse : finalité, proportionnalité, information des conducteurs, durée de conservation limitée, sécurité, droits d''accès et de rectification.

Merci pour votre participation. Votre travail : rédiger les trois règles de géofencing et la note d''information aux conducteurs pour votre propre flotte.', 'video', 90, false, 60
from public.courses c where c.slug = 'formation-gps-avance'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : déployer et exploiter la géolocalisation d''une flotte');

-- Cours : Apprendre et enseigner en ligne efficacement
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'formation-education-numerique', (select id from public.levels where name = 'Formation professionnelle'), 'education', 'Éducation et compétences numériques', 'Apprendre et enseigner en ligne efficacement', 'Cette formation donne aux étudiants, enseignants et formateurs les méthodes pour réussir l''apprentissage et l''enseignement en ligne : mémorisation par répétition espacée, prise de notes, organisation du travail, conception d''un cours en ligne de qualité, évaluation et sécurité numérique. Les exemples sont adaptés aux réalités de l''Afrique de l''Ouest, notamment au coût de la connexion et à l''usage du téléphone. Aucun prérequis n''est demandé, en dehors d''une pratique de base du téléphone ou de l''ordinateur.', true, 120
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comment on apprend : mémoire, récupération active et répétition espacée', '## Objectifs de la leçon

- Comprendre comment la mémoire fonctionne et pourquoi on oublie.
- Utiliser la récupération active et la répétition espacée pour retenir durablement.
- Construire un plan de révision personnel adapté aux études ou à une formation professionnelle.

## Apprendre, c''est d''abord retenir et comprendre

Beaucoup d''élèves et d''étudiants relisent leurs cours plusieurs fois, surlignent, recopient, et sont surpris d''avoir tout oublié le jour de l''examen. Ce n''est pas un manque d''intelligence : c''est une mauvaise méthode. Les recherches en psychologie cognitive ont montré depuis longtemps que certaines stratégies sont beaucoup plus efficaces que d''autres. La bonne nouvelle : elles ne demandent ni matériel coûteux ni connexion permanente.

## Les notions clés

La mémoire de travail : c''est l''espace mental où l''on manipule les informations en ce moment. Elle est très limitée : on ne peut y garder que quelques éléments à la fois. Un cours trop dense, une vidéo trop rapide ou un environnement bruyant la saturent.

La mémoire à long terme : c''est le stockage durable. Pour qu''une information y entre et puisse en ressortir, il faut la relier à ce que l''on sait déjà et la réactiver régulièrement.

La courbe de l''oubli : le psychologue Hermann Ebbinghaus a montré, à la fin du XIXe siècle, que l''on oublie très vite après un premier apprentissage, puis plus lentement. Chaque révision bien placée ralentit l''oubli.

La récupération active : se tester, c''est-à-dire essayer de retrouver une information sans regarder ses notes, renforce la mémoire bien plus que relire. On parle d''« effet de test ».

La répétition espacée : répartir les révisions dans le temps, avec des intervalles croissants, est plus efficace que tout réviser la veille.

L''entrelacement : alterner des types d''exercices (par exemple des problèmes de pourcentages, de proportionnalité et d''équations) oblige le cerveau à choisir la bonne méthode, ce qui prépare mieux à l''examen.

## Méthode : les fiches question-réponse et les boîtes de révision

- Étape 1 : après chaque cours, transformez l''essentiel en questions. Au recto : « Qu''est-ce que la BCEAO ? » ; au verso : la réponse courte.
- Étape 2 : rangez les fiches dans des boîtes numérotées (système de Leitner). Boîte 1 : à revoir chaque jour ; boîte 2 : tous les 2 jours ; boîte 3 : tous les 4 jours ; boîte 4 : chaque semaine ; boîte 5 : avant l''examen.
- Étape 3 : quand vous répondez juste, la fiche avance d''une boîte ; quand vous vous trompez, elle revient en boîte 1.
- Étape 4 : chaque jour, ne révisez que les boîtes prévues. Dix à vingt minutes suffisent.

Ce système fonctionne sur papier (cartons découpés, enveloppes) ou sur téléphone avec une application de cartes de révision fonctionnant hors ligne, ce qui est précieux quand la connexion est chère ou instable.

## Autres techniques efficaces

- L''auto-explication : expliquer à voix haute, ou à un camarade, pourquoi une solution est juste.
- La pratique de rappel libre : sur une feuille blanche, écrire tout ce dont on se souvient d''un chapitre, puis comparer avec le cours.
- Le double codage : associer un texte à un schéma, une carte ou un tableau.
- Les exemples concrets : relier une notion abstraite à une situation connue (le prix du riz au marché pour l''inflation, le budget de la famille pour les pourcentages).

À l''inverse, le surlignage massif, la relecture passive et le « bachotage » de la dernière nuit donnent une impression de maîtrise mais produisent peu de mémorisation durable.

## Exemple : le plan de révision de Mariama

Mariama prépare un BTS en comptabilité à Dakar et a un examen dans six semaines. Elle a 8 chapitres. Son plan :

- Chaque soir, 20 minutes de fiches question-réponse selon ses boîtes.
- Chaque samedi, un rappel libre sur deux chapitres et une série d''exercices mélangés.
- Une semaine avant l''examen, un sujet blanc en conditions réelles.

En répartissant ainsi 20 minutes par jour sur 42 jours, elle consacre 840 minutes, soit 14 heures, aux révisions espacées, sans nuit blanche.

## Points clés

- On oublie vite, mais chaque révision espacée ralentit l''oubli.
- Se tester est plus efficace que relire.
- Espacer, alterner, expliquer et illustrer.
- Un petit temps quotidien vaut mieux qu''une longue séance de dernière minute.

## Exercices

- Exercice 1 : Expliquez la différence entre mémoire de travail et mémoire à long terme.
- Exercice 2 : Transformez ce passage en trois fiches question-réponse : « L''UEMOA regroupe huit États qui utilisent le franc CFA émis par la BCEAO, dont le siège est à Dakar. »
- Exercice 3 : Une fiche est en boîte 3. Vous vous trompez. Où va-t-elle ? Et si vous aviez répondu juste ?
- Exercice 4 : Un étudiant révise 30 minutes par jour pendant 5 semaines. Combien d''heures cela représente-t-il ?

## Corrigé

- Exercice 1 : La mémoire de travail traite les informations du moment ; elle est très limitée et se sature vite. La mémoire à long terme stocke durablement les connaissances ; on y fait entrer une information en la reliant à ce que l''on sait et en la réactivant.
- Exercice 2 : Par exemple : « Combien d''États compte l''UEMOA ? » : huit. « Quelle monnaie utilisent-ils ? » : le franc CFA. « Quelle institution l''émet et où est son siège ? » : la BCEAO, à Dakar.
- Exercice 3 : En cas d''erreur, elle revient en boîte 1. En cas de bonne réponse, elle passe en boîte 4.
- Exercice 4 : 5 semaines = 35 jours ; 35 × 30 = 1 050 minutes = 17 heures 30 minutes.', 'texte', 45, true, 10
from public.courses c where c.slug = 'formation-education-numerique'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comment on apprend : mémoire, récupération active et répétition espacée');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Prendre des notes et organiser son travail d''étudiant', '## Objectifs de la leçon

- Prendre des notes utiles, en cours en présentiel comme devant une vidéo.
- Organiser son temps d''étude et son environnement de travail.
- Gérer la contrainte de la connexion et du matériel.

## Pourquoi prendre des notes

Prendre des notes n''est pas recopier. Une bonne prise de notes oblige à sélectionner, reformuler et organiser ; ce travail actif aide déjà à mémoriser. Les notes servent ensuite de matière première pour les fiches de révision vues à la leçon précédente.

## La méthode des notes en colonnes (méthode Cornell)

On divise la page en trois zones :

- Une grande colonne de droite : les notes prises pendant le cours, en phrases courtes, avec abréviations.
- Une colonne étroite à gauche : remplie après le cours, elle contient les mots-clés et les questions auxquelles répondent les notes.
- Une bande en bas de page : un résumé de la page en deux ou trois phrases.

Pour réviser, on cache la colonne de droite et on essaie de répondre aux questions de la colonne de gauche : c''est de la récupération active intégrée aux notes.

## Les autres formats

- La carte mentale : le sujet au centre, les idées principales en branches, les détails en sous-branches. Utile pour les sujets riches en relations (histoire, gestion, biologie).
- Le tableau comparatif : idéal pour comparer des notions (par exemple CDI et CDD, ou deux pays).
- Le plan hiérarchisé : titres, sous-titres, puces ; adapté aux cours très structurés.

## Abréviations et symboles utiles

- « + » pour « plus, en hausse » ; « − » pour « moins, en baisse ».
- « → » pour « entraîne, conduit à ».
- « ≠ » pour « différent de » ; « ≈ » pour « environ ».
- « ex. » pour exemple ; « cf. » pour se reporter à ; « qqch » pour quelque chose.

Créez votre propre code et gardez-le stable.

## Prendre des notes devant une vidéo

Le grand avantage du cours en ligne est la possibilité de faire pause. Utilisez-la : regardez une séquence de quelques minutes, mettez en pause, notez l''idée principale avec vos mots, puis reprenez. Notez aussi le minutage des passages importants (par exemple « 23:40 calcul du taux horaire ») pour y revenir sans tout revoir. Si la connexion est faible, réduisez la qualité de la vidéo ou téléchargez-la quand le réseau est meilleur, si la plateforme le permet.

## Organiser son temps

Les étudiants en ligne ont souvent plus de liberté, donc plus de risques de procrastination. Quelques règles :

- Un planning hebdomadaire fixe : les mêmes créneaux chaque semaine (par exemple lundi, mercredi et vendredi de 19 h à 21 h).
- Le travail par blocs chronométrés : 25 minutes de concentration, 5 minutes de pause, puis une pause plus longue après quatre blocs.
- La règle des deux minutes : si une tâche prend moins de deux minutes (répondre à un message du formateur, télécharger un document), faites-la tout de suite.
- La liste de tâches du jour : trois priorités maximum.
- Le bilan de fin de semaine : ce qui a été fait, ce qui reste, ce qu''il faut ajuster.

## Organiser son environnement

- Un lieu calme, même modeste : un coin de chambre, une bibliothèque de quartier, un espace numérique universitaire.
- Le téléphone en mode silencieux ou hors de portée pendant les blocs de travail.
- Des dossiers numériques bien nommés : « 2026_Compta_Chap3_Notes », plutôt que « document final 2 ».
- Une sauvegarde régulière des notes (nous y reviendrons à la leçon 5).

## Gérer le coût de la connexion

En Afrique de l''Ouest, les données mobiles représentent un budget. Stratégies :

- Télécharger les ressources via le wifi d''un campus, d''un centre de formation ou d''un espace public sûr.
- Privilégier les documents texte et PDF légers pour la révision.
- Utiliser les fonctions hors ligne des applications.
- Planifier les sessions en direct (classes virtuelles) et couper la vidéo de sa caméra quand elle n''est pas nécessaire pour économiser la bande passante.

## Exemple : la semaine d''Ousmane

Ousmane travaille comme agent commercial à Kaolack et suit une formation en ligne en gestion. Il dispose de 6 heures par semaine. Son organisation : mardi et jeudi soir, 1 h 30 chacun pour les vidéos et les notes en colonnes ; samedi matin, 2 h pour les exercices et la révision des fiches ; dimanche, 1 h pour le bilan et la préparation de la semaine. Total : 1,5 + 1,5 + 2 + 1 = 6 heures. Il télécharge les vidéos le samedi au centre de formation, où le wifi est gratuit.

## Points clés

- Prendre des notes, c''est sélectionner, reformuler et organiser.
- La méthode en colonnes intègre la révision active dans les notes.
- Un planning fixe et des blocs chronométrés limitent la procrastination.
- Anticiper la connexion fait partie de l''organisation.

## Exercices

- Exercice 1 : Décrivez les trois zones de la méthode des notes en colonnes et leur rôle.
- Exercice 2 : Quel format de notes choisiriez-vous pour comparer le salaire brut et le salaire net ? Justifiez.
- Exercice 3 : Une étudiante enchaîne 6 blocs de 25 minutes avec 5 minutes de pause entre chaque bloc et une pause de 20 minutes après le 4e bloc (à la place de la courte). Quelle est la durée totale de la séance, du début du premier bloc à la fin du sixième ?
- Exercice 4 : Proposez trois actions pour réduire le coût de la connexion.

## Corrigé

- Exercice 1 : Colonne de droite : notes prises pendant le cours. Colonne de gauche : mots-clés et questions ajoutés après le cours. Bande du bas : résumé en quelques phrases. La colonne de gauche sert à se tester.
- Exercice 2 : Un tableau comparatif, car il met en regard les deux notions ligne par ligne (définition, composantes, calcul, exemple).
- Exercice 3 : 6 blocs × 25 = 150 minutes. Il y a 5 pauses entre les 6 blocs : 4 courtes de 5 minutes (20 minutes) et 1 longue de 20 minutes, soit 40 minutes. Total : 190 minutes, soit 3 h 10.
- Exercice 4 : Télécharger via un wifi gratuit et sûr ; réduire la qualité vidéo ; utiliser les modes hors ligne ; couper la caméra en classe virtuelle ; préférer les documents légers.', 'texte', 45, false, 20
from public.courses c where c.slug = 'formation-education-numerique'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Prendre des notes et organiser son travail d''étudiant');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Créer un cours en ligne de qualité (pour les formateurs)', '## Objectifs de la leçon

- Concevoir un cours en ligne à partir d''objectifs d''apprentissage précis.
- Appliquer le principe d''alignement entre objectifs, activités et évaluations.
- Produire des contenus clairs, accessibles et adaptés aux contraintes de connexion.

## Le point de départ : les objectifs

Un formateur qui commence par « ce que je vais dire » produit souvent un cours trop long. Un bon cours commence par « ce que l''apprenant saura faire à la fin ». Un objectif d''apprentissage s''écrit avec un verbe d''action observable :

- À éviter : « comprendre la paie » (non observable).
- À préférer : « calculer le salaire net à partir d''un brut et d''une liste de retenues ».

La taxonomie de Bloom aide à choisir le niveau : se souvenir, comprendre, appliquer, analyser, évaluer, créer. Un cours professionnel doit dépasser le simple « se souvenir » et faire appliquer.

## L''alignement pédagogique

Le principe d''alignement (développé notamment par John Biggs) dit que trois éléments doivent correspondre :

- L''objectif : ce que l''apprenant doit savoir faire.
- L''activité : ce qu''il fait pour l''apprendre.
- L''évaluation : comment on vérifie qu''il sait le faire.

Exemple : si l''objectif est « calculer un net à payer », l''activité doit être un exercice de calcul guidé, et l''évaluation un calcul à réaliser, pas un QCM sur des définitions.

## Le modèle de conception en cinq phases

Le modèle ADDIE est un cadre classique :

- Analyse : qui sont les apprenants (niveau, équipement, temps disponible, langue) ? Quel est le besoin ?
- Design (conception) : objectifs, plan, choix des activités et des évaluations.
- Développement : production des textes, vidéos, exercices.
- Implémentation : mise en ligne, accompagnement, animation.
- Évaluation : retours des apprenants, résultats, améliorations.

## Concevoir les contenus

- Découper : des modules courts, des vidéos de quelques minutes centrées sur une idée, des leçons écrites structurées par intertitres.
- Limiter la charge cognitive : un concept à la fois, un vocabulaire défini, pas d''animations décoratives inutiles.
- Associer texte et image : un schéma commenté vaut mieux qu''un long paragraphe ; mais évitez de lire à l''écran un texte identique à celui de la diapositive.
- Contextualiser : des exemples tirés de la réalité des apprenants (une boutique à Thiès, une coopérative agricole en Casamance, un budget en FCFA).
- Faire agir : toutes les 10 à 15 minutes d''apprentissage, une question, un exercice ou une réflexion.

## Accessibilité et faible bande passante

- Proposer pour chaque vidéo une version texte ou un résumé, et des sous-titres.
- Compresser les vidéos et proposer une qualité basse.
- Fournir les documents en PDF légers téléchargeables.
- Vérifier la lisibilité sur téléphone, car beaucoup d''apprenants suivent les cours sur mobile.
- Utiliser des contrastes suffisants et des polices lisibles.

## L''animation : la présence du formateur

Un cours en ligne sans accompagnement connaît souvent de nombreux abandons. La présence du formateur se manifeste par un message d''accueil, un calendrier clair, un forum ou un groupe de discussion modéré, des réponses rapides aux questions, des retours personnalisés sur les travaux et, si possible, quelques classes virtuelles en direct.

## Méthode : la fiche de conception d''une séquence

- Titre de la séquence et public.
- Durée estimée de travail pour l''apprenant.
- Deux à quatre objectifs avec verbes d''action.
- Prérequis.
- Activités (lecture, vidéo, exercice, discussion), avec la durée de chacune.
- Évaluation alignée sur chaque objectif.
- Ressources et versions accessibles.

## Exemple

Une formatrice de Saint-Louis crée une séquence « Tenir le cahier de caisse d''une boutique ». Public : commerçants débutants, sur téléphone. Durée : 2 heures. Objectifs : enregistrer les entrées et sorties ; calculer le solde de caisse du jour ; détecter un écart. Activités : vidéo de 6 minutes avec un exemple de journée de vente, fiche PDF d''une page, exercice sur un cahier fictif de 10 opérations, échange sur le groupe de discussion. Évaluation : calculer le solde d''une nouvelle journée et expliquer un écart. Chaque objectif a son activité et son évaluation : la séquence est alignée.

## Points clés

- Commencer par les objectifs, formulés avec des verbes d''action.
- Aligner objectifs, activités et évaluations.
- Découper, contextualiser, faire agir.
- Penser mobile, bas débit et accessibilité.
- Accompagner les apprenants.

## Exercices

- Exercice 1 : Réécrivez l''objectif « connaître la TVA » sous une forme observable.
- Exercice 2 : Un formateur veut que les apprenants sachent rédiger un CV, mais l''évalue par un QCM. Qu''en pensez-vous ?
- Exercice 3 : Citez les cinq phases du modèle ADDIE.
- Exercice 4 : Proposez trois mesures pour rendre un cours accessible avec une connexion faible.

## Corrigé

- Exercice 1 : Par exemple : « calculer le montant de TVA et le prix toutes taxes comprises à partir d''un prix hors taxes et d''un taux donné ».
- Exercice 2 : L''évaluation n''est pas alignée : un QCM vérifie des connaissances, pas la capacité de rédiger. Il faut demander la rédaction d''un CV, évaluée avec une grille de critères.
- Exercice 3 : Analyse, Design (conception), Développement, Implémentation, Évaluation.
- Exercice 4 : Résumés texte des vidéos, vidéos compressées ou en basse qualité, documents PDF légers téléchargeables, contenus testés sur téléphone.', 'texte', 50, false, 30
from public.courses c where c.slug = 'formation-education-numerique'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Créer un cours en ligne de qualité (pour les formateurs)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Évaluer les apprentissages en ligne', '## Objectifs de la leçon

- Distinguer les fonctions de l''évaluation : diagnostique, formative, sommative.
- Rédiger des questions à choix multiples et des grilles critériées de qualité.
- Limiter la fraude et garantir l''équité des évaluations en ligne.

## Les trois fonctions de l''évaluation

- L''évaluation diagnostique : au début d''un cours, elle mesure les acquis et les besoins. Elle permet d''adapter le parcours.
- L''évaluation formative : pendant l''apprentissage, elle aide l''apprenant à progresser grâce à un retour immédiat. Elle compte peu ou pas dans la note finale.
- L''évaluation sommative : à la fin, elle certifie le niveau atteint (examen, certificat).

Dans un cours en ligne, l''évaluation formative est la plus précieuse : quiz après chaque leçon, exercices corrigés automatiquement, retours du formateur. C''est aussi une application directe de l''effet de test vu en leçon 1.

## Rédiger de bonnes questions à choix multiples

Un QCM bien conçu peut évaluer bien plus que la mémoire. Règles :

- Une seule idée par question, formulée clairement, sans double négation.
- Une seule bonne réponse indiscutable (ou une consigne explicite si plusieurs).
- Des distracteurs plausibles, qui correspondent à des erreurs fréquentes.
- Des options de longueur comparable : la bonne réponse ne doit pas être la plus longue.
- Éviter « toutes les réponses ci-dessus » et les indices grammaticaux.
- Préférer des mises en situation : « Un salarié gagne 200 000 FCFA ; ses retenues sont de 30 000 FCFA ; quel est son net ? »

Exemple de question avec distracteurs fondés sur des erreurs courantes :

« Un article coûte 10 000 FCFA hors taxes. Avec un taux de TVA de 18 %, quel est le prix TTC ? »

- A. 10 018 FCFA (erreur : addition du taux comme un nombre).
- B. 11 800 FCFA (bonne réponse : 10 000 × 1,18).
- C. 8 200 FCFA (erreur : soustraction).
- D. 1 800 FCFA (erreur : calcul de la seule TVA).

## Les grilles critériées

Pour les productions complexes (rapport, projet, présentation), on utilise une grille avec des critères et des niveaux. Exemple pour un plan d''affaires :

- Critère 1 : clarté de l''offre (insuffisant, acceptable, bien, très bien).
- Critère 2 : étude de marché.
- Critère 3 : cohérence des chiffres.
- Critère 4 : qualité de la présentation.

Chaque niveau est décrit précisément (par exemple pour « cohérence des chiffres, très bien » : les prévisions de ventes, de charges et de trésorerie sont reliées et vérifiables). La grille est communiquée à l''avance : l''apprenant sait ce qui est attendu, le correcteur est plus juste, et deux correcteurs donnent des notes proches.

## L''évaluation par les pairs et l''auto-évaluation

Dans les cours à fort effectif, les apprenants peuvent évaluer les travaux de leurs camarades avec la grille. Cette pratique développe l''esprit critique et allège la charge du formateur, à condition de former les apprenants à la grille, de faire évaluer chaque travail par plusieurs pairs et de prévoir un recours. L''auto-évaluation, avant remise du travail, aide l''apprenant à se corriger.

## Intégrité et équité en ligne

La fraude est plus facile à distance. Plutôt que de multiplier les contrôles intrusifs, on privilégie la conception :

- Banques de questions et tirage aléatoire, ordre des réponses mélangé.
- Valeurs numériques différentes pour chaque apprenant dans les exercices de calcul.
- Questions d''application et de réflexion plutôt que de simple restitution.
- Travaux personnalisés : appliquer la méthode à sa propre entreprise ou à son quartier.
- Courte soutenance orale en visioconférence pour les évaluations certifiantes.

L''équité impose aussi de tenir compte des contraintes techniques : prévoir un délai raisonnable, autoriser la reprise en cas de coupure, éviter les épreuves en temps très limité qui pénalisent ceux qui ont une connexion lente.

## Exploiter les résultats

Les statistiques d''un quiz renseignent le formateur : une question ratée par la majorité signale soit une explication insuffisante, soit une question mal rédigée. On calcule par exemple le taux de réussite d''une question : nombre de bonnes réponses / nombre de répondants × 100.

## Points clés

- Diagnostique au début, formative pendant, sommative à la fin.
- Un bon QCM a des distracteurs fondés sur des erreurs réelles.
- Les grilles critériées rendent l''évaluation transparente et juste.
- L''intégrité se construit surtout par la conception des épreuves.

## Exercices

- Exercice 1 : Classez : quiz d''entrée de formation ; exercice corrigé après une vidéo ; examen final certifiant.
- Exercice 2 : Repérez deux défauts dans cette question : « Lequel n''est pas un élément qui ne figure pas sur le bulletin de paie ? A. Le net à payer B. Toutes les réponses ci-dessus ».
- Exercice 3 : 120 apprenants ont répondu à une question ; 78 ont trouvé la bonne réponse. Calculez le taux de réussite.
- Exercice 4 : Proposez deux moyens de limiter la fraude dans un exercice de calcul en ligne.

## Corrigé

- Exercice 1 : Quiz d''entrée : diagnostique. Exercice après la vidéo : formative. Examen final : sommative.
- Exercice 2 : Double négation qui rend la question incompréhensible ; option « toutes les réponses ci-dessus » ; une seule option réelle, donc pas de distracteurs.
- Exercice 3 : 78 / 120 × 100 = 65 %.
- Exercice 4 : Données numériques différentes pour chaque apprenant ; tirage aléatoire des questions ; demander la justification de la démarche ; courte vérification orale.', 'texte', 45, false, 40
from public.courses c where c.slug = 'formation-education-numerique'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Évaluer les apprentissages en ligne');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Outils numériques et bonnes pratiques de sécurité', '## Objectifs de la leçon

- Choisir des outils numériques adaptés à l''apprentissage et à l''enseignement.
- Protéger ses comptes, ses appareils et ses données.
- Reconnaître et éviter les arnaques en ligne les plus courantes.

## Choisir ses outils

Il n''est pas nécessaire d''avoir beaucoup d''outils ; il faut des outils fiables et maîtrisés. Les grandes catégories :

- La plateforme d''apprentissage : elle centralise cours, exercices, évaluations et suivi.
- La visioconférence : pour les classes virtuelles et le tutorat.
- La messagerie de groupe : pour l''entraide, à condition d''être modérée.
- La bureautique : traitement de texte, tableur, présentation ; des suites libres et gratuites existent.
- Les cartes de révision et la prise de notes numérique, de préférence avec mode hors ligne.
- Le stockage en ligne : pour sauvegarder et partager des fichiers.

Critères de choix : fonctionne-t-il sur téléphone et avec une connexion faible ? Est-il gratuit ou abordable ? Où sont stockées les données ? Est-il facile à utiliser pour tous ?

## Protéger ses comptes

Les comptes d''un étudiant ou d''un formateur (messagerie, plateforme de cours, réseaux sociaux, porte-monnaie électronique) sont des cibles. Bonnes pratiques :

- Des mots de passe longs : une phrase de passe de plusieurs mots est plus robuste et plus facile à retenir qu''un mot court compliqué. Exemple de principe : quatre mots sans lien, avec un chiffre et un signe.
- Un mot de passe différent pour chaque compte important : si un site est piraté, les autres comptes restent protégés.
- Un gestionnaire de mots de passe pour les retenir.
- La double authentification (un code reçu ou généré en plus du mot de passe) activée sur la messagerie et les comptes sensibles.
- Ne jamais communiquer un code reçu par SMS : aucun service sérieux ne vous le demandera.

## Protéger ses appareils

- Installer les mises à jour du système et des applications, qui corrigent des failles.
- Télécharger les applications uniquement depuis les magasins officiels.
- Verrouiller le téléphone par un code ou une empreinte.
- Se méfier des clés USB partagées au cybercafé et analyser les fichiers avec un antivirus.
- Sur un ordinateur partagé, se déconnecter de tous les comptes et ne pas enregistrer les mots de passe.

## Sauvegarder : la règle 3-2-1

- 3 copies de vos fichiers importants (mémoire, notes, travaux) ;
- sur 2 supports différents (par exemple ordinateur et clé USB) ;
- dont 1 copie hors du lieu habituel (stockage en ligne ou chez un proche).

Un étudiant dont l''ordinateur est volé la veille de la remise de son mémoire comprend vite l''intérêt de cette règle.

## Reconnaître les arnaques

L''hameçonnage consiste à vous faire cliquer sur un lien ou à vous faire donner des informations en se faisant passer pour une organisation de confiance. Signes d''alerte :

- Une urgence artificielle : « Votre compte sera bloqué dans 24 heures. »
- Une offre trop belle : bourse d''études à l''étranger contre « frais de dossier », gain à un concours auquel vous n''avez pas participé.
- Une adresse d''expéditeur ou un lien légèrement différent de l''officiel.
- Une demande de code secret, de mot de passe ou de transfert d''argent.

Arnaques fréquentes dans le contexte ouest-africain : faux transferts d''argent par téléphone (« je vous ai envoyé par erreur 50 000 FCFA, renvoyez-les »), fausses offres d''emploi demandant un paiement, faux diplômes ou fausses inscriptions universitaires. Réflexe : vérifier par un canal officiel (site de l''établissement, numéro connu, agence) avant toute action.

## Protéger les données des autres

Un formateur manipule des données d''apprenants : noms, notes, numéros de téléphone. Il doit les limiter au nécessaire, ne pas les publier dans un groupe ouvert, protéger les fichiers et respecter la législation nationale sur les données personnelles. En classe virtuelle, il faut demander l''accord avant d''enregistrer et préciser l''usage de l''enregistrement.

## La citoyenneté numérique

Respecter les autres dans les forums, citer ses sources, ne pas plagier, vérifier une information avant de la partager : ces comportements font partie des compétences numériques attendues d''un étudiant comme d''un professionnel.

## Points clés

- Peu d''outils, mais fiables, adaptés au mobile et au bas débit.
- Phrases de passe, mots de passe uniques, double authentification.
- Mises à jour, verrouillage, sauvegarde 3-2-1.
- Urgence, offre trop belle, demande de code : signes d''arnaque.

## Exercices

- Exercice 1 : Pourquoi faut-il un mot de passe différent pour chaque compte important ?
- Exercice 2 : Vous recevez : « Félicitations ! Vous avez obtenu une bourse au Canada. Envoyez 25 000 FCFA de frais de dossier sous 24 h. » Listez les signes d''alerte et la bonne réaction.
- Exercice 3 : Appliquez la règle 3-2-1 à votre mémoire de fin d''études.
- Exercice 4 : Citez trois critères pour choisir un outil numérique pour une classe en zone rurale.

## Corrigé

- Exercice 1 : Si un site est piraté et que le mot de passe fuit, les pirates l''essaient sur d''autres services. Avec des mots de passe uniques, seul le compte du site piraté est exposé.
- Exercice 2 : Signes : gain non sollicité, urgence (24 h), demande d''argent. Réaction : ne pas payer, ne pas cliquer, vérifier auprès de l''organisme officiel de bourses ou de l''ambassade, signaler le message.
- Exercice 3 : Une copie sur l''ordinateur, une sur une clé USB ou un disque externe, une dans un stockage en ligne ou chez un proche ; mise à jour après chaque séance de travail importante.
- Exercice 4 : Fonctionnement sur téléphone, consommation de données faible ou mode hors ligne, gratuité ou faible coût, simplicité d''utilisation, protection des données.', 'texte', 45, false, 50
from public.courses c where c.slug = 'formation-education-numerique'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Outils numériques et bonnes pratiques de sécurité');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : apprendre à apprendre et concevoir une séquence en ligne', '## Fiche du cours vidéo

- Durée : 1h30.
- Titre de la séance : apprendre à apprendre et concevoir une séquence en ligne.
- Objectifs : appliquer la récupération active et la répétition espacée ; prendre des notes en colonnes ; concevoir une séquence de cours alignée ; rédiger un bon QCM ; adopter les réflexes de sécurité numérique.
- Matériel : diaporama, tableau blanc ou tableau numérique, feuilles et stylos, téléphone ou ordinateur pour le quiz, fiche de conception de séquence à télécharger.
- Prérequis : aucun ; les leçons 1 à 5 sont recommandées.
- Public : étudiants, formateurs, enseignants et professionnels en formation continue.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et défi de départ

Texte du formateur : « Bonjour et bienvenue. Cette séance a deux publics : celles et ceux qui apprennent, et celles et ceux qui enseignent. En réalité, nous sommes tous les deux à la fois. Je commence par un petit défi : prenez une feuille, et sans regarder vos notes, écrivez tout ce dont vous vous souvenez du dernier cours que vous avez suivi, il y a une semaine ou un mois. Vous avez deux minutes. »

« Alors ? Pour la plupart d''entre nous, la feuille est presque vide. Ce n''est pas grave : c''est normal. Aujourd''hui, nous allons comprendre pourquoi, et comment changer cela. »

Visuel : diapositive « Qu''avez-vous retenu ? » avec un minuteur.

## 05:00 – 15:00 · Comment fonctionne la mémoire

Texte du formateur : « Notre mémoire de travail est petite : elle ne garde que quelques éléments à la fois. Notre mémoire à long terme est immense, mais il faut savoir y ranger les informations et les en ressortir. Ebbinghaus a montré que l''on oublie très vite après avoir appris, puis plus lentement. Chaque révision bien placée remonte la courbe et la rend moins raide. »

Visuel : courbe de l''oubli, puis la même courbe avec des révisions successives qui la relèvent.

« Deux idées à retenir. Première idée : se tester est plus efficace que relire. Deuxième idée : espacer les révisions est plus efficace que tout concentrer la veille. »

Question : « Combien d''entre vous révisent principalement en relisant ? Qu''est-ce que vous pourriez changer dès demain ? »

## 15:00 – 27:00 · Atelier 1 : fiches et boîtes de révision

Texte du formateur : « Construisons ensemble un système de boîtes de révision. Je prends un extrait de cours : "L''UEMOA regroupe huit États qui partagent le franc CFA émis par la BCEAO, dont le siège est à Dakar." Transformons-le en questions. Première fiche : combien d''États dans l''UEMOA ? Deuxième : quelle monnaie ? Troisième : quelle banque centrale et où est son siège ? »

« Maintenant les boîtes. Boîte 1 : chaque jour. Boîte 2 : tous les deux jours. Boîte 3 : tous les quatre jours. Boîte 4 : chaque semaine. Boîte 5 : avant l''examen. Bonne réponse : la fiche avance. Erreur : retour en boîte 1. Vous pouvez faire cela avec des cartons et des enveloppes, ou avec une application de cartes de révision qui fonctionne hors ligne. »

Visuel : schéma des cinq boîtes avec des flèches.

Activité : chaque participant rédige trois fiches sur un sujet de son choix.

## 27:00 – 40:00 · Atelier 2 : les notes en colonnes

Texte du formateur : « Je vais vous montrer une vidéo de trois minutes sur le calcul d''un pourcentage. Préparez votre page : une grande colonne à droite pour les notes, une colonne étroite à gauche pour les questions, une bande en bas pour le résumé. Pendant la vidéo, n''écrivez qu''à droite, avec des abréviations. »

Après la vidéo : « Maintenant, remplissez la colonne de gauche : quelles questions vos notes permettent-elles de répondre ? Puis écrivez un résumé en deux phrases. Cachez la colonne de droite et répondez aux questions de gauche : vous venez de faire votre première révision active. »

Visuel : modèle de page en colonnes, puis un exemple rempli sur le calcul d''une hausse de 10 % sur un prix de 5 000 FCFA, qui donne 5 500 FCFA.

Question : « Qu''est-ce qui a été le plus difficile : écrire vite ou formuler les questions ? »

## 40:00 – 47:00 · Pause interactive et quiz

Texte du formateur : « Faisons une pause active avec un quiz de trois questions. Répondez dans le chat ou sur vos téléphones. »

- Question 1 : Qu''est-ce qui est le plus efficace pour retenir : relire trois fois ou se tester une fois ? Réponse : se tester.
- Question 2 : Une fiche en boîte 2 est ratée. Où va-t-elle ? Réponse : en boîte 1.
- Question 3 : Un étudiant révise 20 minutes par jour pendant 30 jours. Combien d''heures au total ? Réponse : 600 minutes, soit 10 heures.

« Ce quiz lui-même est un exemple d''évaluation formative : il vous aide à apprendre. Levez-vous, étirez-vous, nous reprenons dans deux minutes. »

## 47:00 – 1:00:00 · Atelier 3 : concevoir une séquence alignée

Texte du formateur : « Changeons de casquette. Vous êtes formateur. Vous devez créer une séquence de deux heures sur le thème "Tenir le cahier de caisse d''une boutique" pour des commerçants qui suivent le cours sur téléphone. Première question : que sauront-ils faire à la fin ? Pas "connaître la caisse", mais "enregistrer les entrées et sorties", "calculer le solde du jour", "repérer un écart". Ce sont des verbes d''action observables. »

« Deuxième question : quelle activité pour chaque objectif ? Une vidéo courte avec une journée de vente, un exercice sur un cahier fictif de dix opérations. Troisième question : comment évaluer ? En faisant calculer le solde d''une nouvelle journée. Objectif, activité, évaluation : c''est l''alignement. »

Visuel : fiche de conception de séquence à trois colonnes : objectifs, activités, évaluations.

Activité : par groupes de trois, les participants remplissent la fiche pour un sujet de leur métier.

Exemple chiffré à montrer : solde d''ouverture 25 000 FCFA, ventes 68 500 FCFA, achats payés en espèces 31 000 FCFA, solde théorique 25 000 + 68 500 − 31 000 = 62 500 FCFA. Si la caisse contient 61 500 FCFA, l''écart est de 1 000 FCFA à expliquer.

## 1:00:00 – 1:10:00 · Atelier 4 : rédiger un bon QCM

Texte du formateur : « Prenons une question : "Un article coûte 10 000 FCFA hors taxes, la TVA est de 18 %. Quel est le prix TTC ?" Bonne réponse : 11 800 FCFA. Les distracteurs doivent correspondre à des erreurs réelles : 10 018 si l''on ajoute 18 comme un nombre, 1 800 si l''on calcule seulement la TVA, 8 200 si l''on soustrait. Un distracteur absurde, comme 1 000 000, n''apprend rien. »

« Règles d''or : une idée par question, pas de double négation, des options de longueur comparable, pas de "toutes les réponses ci-dessus". Et pour limiter la fraude, changez les valeurs pour chaque apprenant. »

Activité : chaque groupe rédige une question avec trois distracteurs justifiés.

## 1:10:00 – 1:20:00 · Atelier 5 : la sécurité numérique

Texte du formateur : « Dernière compétence : protéger son travail et ses comptes. Je vous lis un message reçu par une étudiante : "Félicitations, vous avez gagné une bourse d''études. Envoyez 25 000 FCFA de frais de dossier avant ce soir." Quels sont les signaux d''alerte ? Un gain non sollicité, l''urgence, une demande d''argent. La bonne réaction : ne pas payer, vérifier auprès de l''organisme officiel. »

« Trois réflexes à adopter ce soir : activer la double authentification sur votre messagerie, utiliser une phrase de passe différente pour chaque compte important, et appliquer la règle 3-2-1 à vos travaux : trois copies, deux supports, une copie hors du lieu habituel. »

Visuel : capture d''écran fictive d''un message frauduleux annotée.

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Texte du formateur : « Récapitulons. Pour apprendre : se tester, espacer, alterner, prendre des notes actives, organiser son temps. Pour enseigner : partir des objectifs, aligner activités et évaluations, penser mobile et bas débit, accompagner. Pour tous : sécuriser ses comptes et sauvegarder. Voici l''évaluation finale. »

- Question 1 : Citez deux techniques d''apprentissage dont l''efficacité est bien établie. Réponse : la récupération active (se tester) et la répétition espacée.
- Question 2 : Quelles sont les trois zones de la méthode des notes en colonnes ? Réponse : les notes à droite, les questions et mots-clés à gauche, le résumé en bas.
- Question 3 : Réécrivez l''objectif « connaître le cahier de caisse » de façon observable. Réponse : par exemple « calculer le solde de caisse d''une journée à partir des entrées et des sorties ».
- Question 4 : Dans l''exemple de la caisse, le solde théorique est de 62 500 FCFA et la caisse contient 61 500 FCFA. Quel est l''écart ? Réponse : un manque de 1 000 FCFA.
- Question 5 : Que signifie la règle 3-2-1 ? Réponse : trois copies des fichiers, sur deux supports différents, dont une hors du lieu habituel.

« Merci à toutes et à tous. Votre mission pour la semaine : créer dix fiches de révision et les réviser chaque jour selon les boîtes, ou, si vous êtes formateur, finaliser votre fiche de séquence alignée. »', 'video', 90, false, 60
from public.courses c where c.slug = 'formation-education-numerique'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : apprendre à apprendre et concevoir une séquence en ligne');

-- Cours : Mathématiques série S : réussir l'épreuve du Bac
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'bac-mathematiques-s', (select id from public.levels where name = 'Terminale'), null, 'Mathématiques (série S)', 'Mathématiques série S : réussir l''épreuve du Bac', 'Ce cours de préparation au Baccalauréat s''adresse aux élèves de Terminale des séries scientifiques (S) du Sénégal et d''Afrique francophone. Il révise l''analyse (limites, continuité, dérivation, exponentielle et logarithme, intégrales, équations différentielles), les suites, les nombres complexes et leurs applications géométriques, ainsi que les probabilités et statistiques, avec des fiches de cours, des exercices progressifs corrigés et un sujet d''entraînement complet. Prérequis : le programme de Première S et l''essentiel du programme de Terminale S.', true, 201
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comprendre l''épreuve et méthode de travail', '## À qui s''adresse ce cours

Ce cours vise les candidats au Baccalauréat des séries scientifiques (S). Il reprend le programme du lycée, de la Seconde à la Terminale, sous l''angle de la révision, en insistant sur la Terminale. Les élèves des séries L et G trouveront des cours adaptés à leur propre épreuve sur la plateforme.

## Objectifs de la leçon

- Connaître la forme habituelle d''un sujet de mathématiques au Bac S et les grands types d''exercices.
- Adopter une méthode de travail efficace pendant l''épreuve.
- Repérer les erreurs qui coûtent le plus de points.
- Construire un plan de révision sur 10 semaines.

## Comment se présente l''épreuve

Le sujet de mathématiques du Bac S comporte en général plusieurs exercices indépendants et un problème. Les exercices portent souvent sur les nombres complexes et la géométrie, sur les probabilités ou les statistiques, parfois sur les suites. Le problème est presque toujours un problème d''analyse : étude d''une fonction (souvent avec exponentielle ou logarithme), représentation graphique, calcul d''aire par une intégrale, et parfois une suite ou une équation différentielle liée à la fonction. La durée de l''épreuve, son coefficient et le barème officiel sont fixés par les textes officiels en vigueur : renseigne-toi auprès de ton établissement. Les répartitions de points données dans ce cours sont indicatives, non officielles.

Les questions sont enchaînées : une partie A prépare souvent la partie B. Si tu ne réussis pas à démontrer un résultat donné dans l''énoncé (« montrer que… »), tu peux l''admettre et l''utiliser pour la suite.

## Les verbes de consigne

- Calculer, déterminer : donner un résultat justifié par les étapes de calcul.
- Montrer, démontrer, justifier : raisonnement complet, propriétés citées, conclusion écrite.
- En déduire : utiliser obligatoirement le résultat précédent.
- Étudier les variations : calculer la dérivée, étudier son signe, dresser le tableau de variations avec les limites.
- Interpréter graphiquement : traduire un résultat (une limite, un nombre dérivé, une intégrale) en asymptote, tangente ou aire.
- Conjecturer : proposer un résultat à partir d''un graphique ou de calculs, sans démonstration.

## La méthode pendant l''épreuve

- Lire tout le sujet pendant les dix premières minutes, souligner les données et repérer les questions faciles.
- Commencer par l''exercice où tu te sens le plus solide, mais garder du temps pour le problème, qui pèse lourd.
- Chercher au brouillon, rédiger proprement sur la copie : une idée par ligne, les égalités alignées.
- Encadrer les résultats et répondre par une phrase de conclusion.
- Vérifier la cohérence : une probabilité est entre 0 et 1, une aire est positive, un module est positif, une fonction croissante ne peut pas avoir une dérivée négative.
- Garder 10 à 15 minutes à la fin pour relire, contrôler les numéros de questions et l''orthographe des noms de théorèmes.

## Les erreurs fréquentes

- Oublier le domaine de définition, surtout avec ln : ln(u) n''existe que si u > 0.
- Conclure sur une forme indéterminée (∞ − ∞, 0 × ∞, ∞/∞, 0/0) sans la lever.
- Écrire un tableau de variations sans justifier le signe de la dérivée.
- Confondre f(a), f''(a) et l''équation de la tangente y = f''(a)(x − a) + f(a).
- Oublier les unités d''aire : une aire se donne en unités d''aire (u.a.), puis éventuellement en cm² selon le repère.
- En probabilités, additionner des probabilités d''événements qui ne sont pas incompatibles.
- Pour les complexes, donner un argument sans vérifier le quadrant (signe de la partie réelle et de la partie imaginaire).
- Pour une récurrence, oublier l''initialisation ou écrire l''hérédité sans utiliser l''hypothèse.

## La calculatrice : une alliée, pas une béquille

La calculatrice sert à vérifier une valeur, à tracer une courbe pour conjecturer, à calculer des termes de suite ou une valeur approchée. Mais une réponse sans justification ne rapporte presque rien. Écris toujours la valeur exacte (3 − 4/e, ln 2, √3) avant la valeur approchée, et précise l''arrondi demandé.

## Plan de révision sur 10 semaines

- Semaine 1 : limites, continuité, théorème des valeurs intermédiaires.
- Semaine 2 : dérivation, tangentes, études de fonctions rationnelles et asymptotes.
- Semaine 3 : fonction logarithme népérien.
- Semaine 4 : fonction exponentielle et croissances comparées.
- Semaine 5 : primitives, intégrales, calculs d''aires, intégration par parties, équations différentielles.
- Semaine 6 : suites numériques (récurrence, convergence, suites auxiliaires).
- Semaine 7 : nombres complexes et transformations du plan.
- Semaine 8 : dénombrement, probabilités, loi binomiale ; statistiques à deux variables.
- Semaine 9 : deux sujets complets en temps réel, corrigés soigneusement.
- Semaine 10 : relecture des fiches, reprise des erreurs, un dernier sujet, repos la veille.

Chaque semaine, prévois trois temps : relire la fiche de cours (30 minutes), refaire les exercices corrigés sans regarder la solution, puis traiter au moins un exercice nouveau de niveau Bac. Travailler en groupe d''étude, comme cela se fait dans beaucoup de lycées de Dakar, Thiès ou Ziguinchor, est très utile : expliquer une méthode à un camarade est la meilleure façon de la maîtriser.

## Exercices pratiques

1. Classe les verbes suivants selon qu''ils demandent une démonstration ou un simple calcul : calculer, montrer, justifier, déterminer une valeur approchée.

2. Un élève écrit : « lim (x → +∞) de (x² − x) = +∞ − ∞ = 0 ». Explique son erreur et donne la bonne limite.

3. Donne l''ensemble de définition de f(x) = ln(2x − 6).

4. Un élève affirme qu''une aire vaut −2,5 u.a. Que doit-il contrôler ?

5. Un candidat dispose de 4 heures (durée supposée pour l''exercice) pour un sujet de trois exercices notés 4, 4 et 12 points (barème indicatif). Propose une répartition du temps.

6. Rédige la structure complète d''une démonstration par récurrence de la propriété P(n) : « 2ⁿ ≥ n + 1 » pour tout entier n ≥ 0.

## Corrigé

1. Démonstration : montrer, justifier. Calcul : calculer, déterminer une valeur approchée (mais les étapes doivent rester visibles).

2. ∞ − ∞ est une forme indéterminée, on ne peut pas conclure directement. On factorise : x² − x = x²(1 − 1/x). Comme x² tend vers +∞ et (1 − 1/x) tend vers 1, la limite est +∞.

3. Il faut 2x − 6 > 0, soit x > 3. Df = ]3 ; +∞[.

4. Une aire est toujours positive. S''il a calculé une intégrale sur un intervalle où la fonction est négative, l''aire est l''opposé de l''intégrale, soit 2,5 u.a. Il doit vérifier le signe de la fonction sur l''intervalle.

5. Exemple : 10 minutes de lecture, environ 40 minutes pour chaque exercice de 4 points, 2 heures pour le problème de 12 points, 10 minutes de relecture. Total : 10 + 80 + 120 + 10 = 220 minutes, ce qui laisse 20 minutes de marge.

6. Initialisation : pour n = 0, 2⁰ = 1 et 0 + 1 = 1, donc P(0) est vraie. Hérédité : on suppose P(n) vraie pour un entier n ≥ 0, c''est-à-dire 2ⁿ ≥ n + 1. Alors 2ⁿ⁺¹ = 2 × 2ⁿ ≥ 2(n + 1) = 2n + 2 ≥ n + 2, car n ≥ 0. Donc P(n + 1) est vraie. Conclusion : P(n) est vraie pour tout entier n ≥ 0.', 'texte', 45, true, 10
from public.courses c where c.slug = 'bac-mathematiques-s'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comprendre l''épreuve et méthode de travail');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Analyse : limites, dérivation, exp et ln, intégrales et équations différentielles', '## Objectifs de la leçon

- Calculer des limites et lever les formes indéterminées.
- Utiliser la continuité et le théorème des valeurs intermédiaires.
- Dériver, étudier des variations et rédiger une étude de fonction complète.
- Maîtriser exp et ln, les primitives, les intégrales et les équations différentielles simples.

## Fiche 1 : limites et asymptotes

- Formes indéterminées : ∞ − ∞, 0 × ∞, ∞/∞, 0/0. On les lève en factorisant par le terme dominant, en simplifiant ou en utilisant les croissances comparées.
- En ±∞, une fonction polynôme a la même limite que son terme de plus haut degré ; une fonction rationnelle a la même limite que le quotient de ses termes de plus haut degré.
- Croissances comparées : lim (x → +∞) eˣ/x = +∞ ; lim (x → +∞) ln(x)/x = 0 ; lim (x → −∞) x eˣ = 0 ; lim (x → 0⁺) x ln(x) = 0.
- Si lim f(x) = b en ±∞ : asymptote horizontale y = b. Si lim f(x) = ±∞ quand x tend vers a : asymptote verticale x = a.
- Si lim [f(x) − (ax + b)] = 0 en ±∞ : la droite y = ax + b est asymptote oblique. Le signe de f(x) − (ax + b) donne la position relative.

## Fiche 2 : continuité et théorème des valeurs intermédiaires

Si f est continue et strictement monotone sur [a ; b] et si k est compris entre f(a) et f(b), alors l''équation f(x) = k admet une unique solution dans [a ; b]. C''est le corollaire du théorème des valeurs intermédiaires (ou théorème de la bijection). On encadre ensuite la solution α par balayage à la calculatrice.

## Fiche 3 : dérivation

- (uv)'' = u''v + uv'' ; (u/v)'' = (u''v − uv'')/v² ; (uⁿ)'' = n u'' uⁿ⁻¹ ; (√u)'' = u''/(2√u).
- (eᵘ)'' = u'' eᵘ ; (ln u)'' = u''/u avec u > 0.
- Tangente au point d''abscisse a : y = f''(a)(x − a) + f(a).
- Si f'' > 0 sur un intervalle (sauf en des points isolés où elle s''annule), f est strictement croissante sur cet intervalle.

## Fiche 4 : exponentielle et logarithme

- exp est définie sur ℝ, strictement positive, strictement croissante, exp'' = exp, e⁰ = 1, eᵃ⁺ᵇ = eᵃ × eᵇ.
- ln est définie sur ]0 ; +∞[, strictement croissante, ln'' (x) = 1/x, ln 1 = 0, ln e = 1, ln(ab) = ln a + ln b, ln(aⁿ) = n ln a.
- Pour x > 0 et y réel : y = ln x ⇔ x = eʸ. Donc eˡⁿ ˣ = x et ln(eʸ) = y.
- Limites : ln x tend vers −∞ en 0⁺ et vers +∞ en +∞ ; eˣ tend vers 0 en −∞ et vers +∞ en +∞.

## Fiche 5 : primitives et intégrales

- Primitives usuelles : xⁿ → xⁿ⁺¹/(n + 1) (n ≠ −1) ; 1/x → ln x sur ]0 ; +∞[ ; eᵃˣ → eᵃˣ/a ; u''eᵘ → eᵘ ; u''/u → ln|u| ; cos x → sin x ; sin x → −cos x.
- Si F est une primitive de f sur [a ; b] : ∫ de a à b de f(x) dx = F(b) − F(a).
- Linéarité, relation de Chasles, positivité : si f ≥ 0 sur [a ; b] avec a ≤ b, l''intégrale est positive et égale à l''aire sous la courbe en u.a.
- Intégration par parties : ∫ u v'' = [uv] − ∫ u''v (entre les mêmes bornes).
- Valeur moyenne de f sur [a ; b] : (1/(b − a)) × ∫ de a à b de f(x) dx.

## Fiche 6 : équations différentielles

- y'' = ay (a réel) : solutions y = C eᵃˣ, C réel.
- y'' = ay + b (a ≠ 0) : solutions y = C eᵃˣ − b/a.
- y'''' + ω²y = 0 : solutions y = A cos(ωx) + B sin(ωx).
- y'''' + a y'' + b y = 0 : on résout l''équation caractéristique r² + ar + b = 0 ; deux racines réelles r₁ et r₂ donnent y = A e^(r₁x) + B e^(r₂x) ; une racine double r donne y = (Ax + B) eʳˣ ; deux racines complexes α ± iβ donnent y = e^(αx)(A cos βx + B sin βx).
- Une condition initiale (y(0) = …) fixe les constantes.

## Méthode : l''étude de fonction en sept étapes

- Ensemble de définition.
- Limites aux bornes, asymptotes.
- Dérivée et signe de la dérivée.
- Tableau de variations complet.
- Points particuliers : intersections avec les axes, tangentes demandées.
- Position relative courbe / asymptote si besoin.
- Tracé soigné : asymptotes en pointillés, tangentes, points remarquables.

## Exemple guidé

Soit f(x) = x − ln x sur ]0 ; +∞[. On a f''(x) = 1 − 1/x = (x − 1)/x. Sur ]0 ; 1[, f'' < 0 ; sur ]1 ; +∞[, f'' > 0. Donc f admet un minimum en 1, égal à f(1) = 1. Conséquence : pour tout x > 0, x − ln x ≥ 1 > 0, donc ln x < x. Voilà comment une étude de fonction sert à démontrer une inégalité.

## Exercices pratiques

1. Calculer la limite en +∞ de f(x) = (2x² − 3x + 1)/(x² + 4).

2. Soit f(x) = x³ − 3x + 1 sur ℝ. Étudier ses variations et déterminer le nombre de solutions de f(x) = 0.

3. Dériver g(x) = (2x + 1)e⁻ˣ et h(x) = ln(x² + 1).

4. Calculer I = ∫ de 0 à 1 de (3x² + 2x) dx et J = ∫ de 1 à e de (1/x) dx.

5. Résoudre l''équation différentielle y'' = −2y avec y(0) = 5.

6. À l''aide d''une intégration par parties, calculer K = ∫ de 0 à 1 de x eˣ dx.

7. Résoudre l''équation différentielle y'''' + 4y = 0 avec y(0) = 1 et y''(0) = 2.

## Corrigé

1. On factorise par x² : f(x) = (2 − 3/x + 1/x²)/(1 + 4/x²). Quand x tend vers +∞, le numérateur tend vers 2 et le dénominateur vers 1. La limite est 2 : la droite y = 2 est asymptote horizontale.

2. f''(x) = 3x² − 3 = 3(x − 1)(x + 1). f'' > 0 sur ]−∞ ; −1[ et sur ]1 ; +∞[, f'' < 0 sur ]−1 ; 1[. f est croissante sur ]−∞ ; −1], décroissante sur [−1 ; 1], croissante sur [1 ; +∞[. f(−1) = −1 + 3 + 1 = 3 et f(1) = 1 − 3 + 1 = −1. Limites : −∞ en −∞ et +∞ en +∞. Sur chacun des trois intervalles, f est continue, strictement monotone et change de signe (de −∞ à 3, de 3 à −1, de −1 à +∞). Par le théorème de la bijection, l''équation f(x) = 0 a exactement trois solutions.

3. g''(x) = 2e⁻ˣ − (2x + 1)e⁻ˣ = (1 − 2x)e⁻ˣ. h''(x) = 2x/(x² + 1), car x² + 1 > 0 pour tout réel x.

4. Une primitive de 3x² + 2x est x³ + x². I = (1 + 1) − 0 = 2. J = ln e − ln 1 = 1 − 0 = 1.

5. Les solutions sont y = C e⁻²ˣ. y(0) = C = 5, donc y = 5e⁻²ˣ.

6. On pose u = x, v'' = eˣ, donc u'' = 1, v = eˣ. K = [x eˣ] de 0 à 1 − ∫ de 0 à 1 de eˣ dx = e − (e − 1) = 1.

7. Ici ω² = 4, ω = 2 : y = A cos(2x) + B sin(2x). y(0) = A = 1. y''(x) = −2A sin(2x) + 2B cos(2x), donc y''(0) = 2B = 2 et B = 1. Solution : y = cos(2x) + sin(2x).', 'texte', 75, false, 20
from public.courses c where c.slug = 'bac-mathematiques-s'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Analyse : limites, dérivation, exp et ln, intégrales et équations différentielles');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Suites numériques, nombres complexes et géométrie', '## Objectifs de la leçon

- Étudier une suite définie explicitement ou par récurrence, sa monotonie et sa limite.
- Utiliser les suites arithmétiques, géométriques et les suites auxiliaires.
- Calculer avec les nombres complexes sous forme algébrique, trigonométrique et exponentielle.
- Résoudre des problèmes de géométrie plane avec les complexes et les transformations.

## Fiche 1 : suites arithmétiques et géométriques

- Arithmétique de raison r : uₙ₊₁ = uₙ + r ; uₙ = u₀ + nr ; somme de termes consécutifs = (nombre de termes) × (premier + dernier)/2.
- Géométrique de raison q : uₙ₊₁ = q uₙ ; uₙ = u₀ qⁿ ; somme de termes consécutifs = premier terme × (1 − q^(nombre de termes))/(1 − q), pour q ≠ 1.
- Limite de qⁿ : 0 si −1 < q < 1 ; +∞ si q > 1 ; pas de limite si q ≤ −1.

## Fiche 2 : étude d''une suite

- Monotonie : étudier le signe de uₙ₊₁ − uₙ, ou comparer uₙ₊₁/uₙ à 1 si la suite est strictement positive, ou utiliser une récurrence.
- Une suite croissante et majorée converge ; une suite décroissante et minorée converge.
- Si uₙ₊₁ = f(uₙ), si (uₙ) converge vers ℓ et si f est continue en ℓ, alors ℓ = f(ℓ) : la limite est un point fixe.
- Suite auxiliaire : pour uₙ₊₁ = a uₙ + b (a ≠ 1), on pose vₙ = uₙ − ℓ où ℓ = aℓ + b. Alors (vₙ) est géométrique de raison a.

## Exemple guidé de suite

u₀ = 1 et uₙ₊₁ = 0,5 uₙ + 3. Le point fixe vérifie ℓ = 0,5ℓ + 3, d''où ℓ = 6. On pose vₙ = uₙ − 6 : vₙ₊₁ = 0,5uₙ + 3 − 6 = 0,5(uₙ − 6) = 0,5 vₙ. La suite (vₙ) est géométrique de raison 0,5 et v₀ = −5. Donc vₙ = −5 × 0,5ⁿ et uₙ = 6 − 5 × 0,5ⁿ. Comme 0,5ⁿ tend vers 0, (uₙ) converge vers 6.

## Fiche 3 : nombres complexes

- Forme algébrique z = a + ib, avec i² = −1. Conjugué : z̄ = a − ib. z z̄ = a² + b².
- Module : |z| = √(a² + b²). Argument θ : cos θ = a/|z| et sin θ = b/|z|.
- Forme trigonométrique : z = r(cos θ + i sin θ). Forme exponentielle : z = r e^(iθ).
- Règles : |zz''| = |z||z''| ; arg(zz'') = arg z + arg z'' (modulo 2π) ; arg(z/z'') = arg z − arg z''.
- Formule de Moivre : (cos θ + i sin θ)ⁿ = cos(nθ) + i sin(nθ). Formules d''Euler : cos θ = (e^(iθ) + e^(−iθ))/2 et sin θ = (e^(iθ) − e^(−iθ))/(2i).
- Équation az² + bz + c = 0 à coefficients réels avec Δ < 0 : z = (−b ± i√(−Δ))/(2a), deux solutions conjuguées.
- Racines n-ièmes de l''unité : e^(2ikπ/n), k = 0, 1, …, n − 1.

## Fiche 4 : complexes et géométrie

- Si A et B ont pour affixes a et b : AB = |b − a| ; le milieu de [AB] a pour affixe (a + b)/2.
- Angle orienté : (AB→, AC→) = arg((c − a)/(b − a)).
- (c − a)/(b − a) réel : A, B, C alignés. (c − a)/(b − a) imaginaire pur : triangle rectangle en A.
- (c − a)/(b − a) = e^(±iπ/3) : triangle équilatéral.
- Transformations z'' = az + b : translation si a = 1 ; homothétie si a réel différent de 1 ; rotation si |a| = 1 et a ≠ 1 ; dans le cas général (a ≠ 1), similitude directe de rapport |a|, d''angle arg a et de centre d''affixe ω = b/(1 − a).

## Méthode : trouver la forme exponentielle

Calcule le module, puis cos θ et sin θ, puis cherche l''angle remarquable. Exemple : z = 1 + i√3. |z| = √(1 + 3) = 2. cos θ = 1/2 et sin θ = √3/2, donc θ = π/3 et z = 2e^(iπ/3).

## Points clés

Pour une suite, pense toujours à la suite auxiliaire. Pour un complexe, choisis la forme adaptée : algébrique pour additionner, exponentielle pour multiplier, diviser et élever à une puissance.

## Exercices pratiques

1. Écrire sous forme algébrique z₁ = (1 + i)(2 − 3i) et z₂ = (3 + i)/(1 − i).

2. Donner la forme exponentielle de z = 1 + i√3, puis calculer z⁶.

3. Résoudre dans ℂ l''équation z² − 2z + 5 = 0.

4. (uₙ) est arithmétique, u₀ = 3, r = 4. Calculer u₁₀ puis S = u₀ + u₁ + … + u₁₀.

5. Moussa place 500 000 FCFA à intérêts composés au taux annuel de 5 %. On note Cₙ le capital après n années. Exprimer Cₙ, calculer C₁₀ arrondi au franc, puis le nombre d''années nécessaire pour que le capital double.

6. u₀ = 2 et uₙ₊₁ = (1/3)uₙ + 4. Exprimer uₙ en fonction de n et donner sa limite.

7. Déterminer l''image de A d''affixe 2 + i par la rotation de centre O et d''angle π/2, puis la nature et les éléments caractéristiques de la transformation z'' = (1 + i)z + 2.

## Corrigé

1. z₁ = 2 − 3i + 2i − 3i² = 2 − i + 3 = 5 − i. z₂ = (3 + i)(1 + i)/((1 − i)(1 + i)) = (3 + 3i + i + i²)/2 = (2 + 4i)/2 = 1 + 2i.

2. z = 2e^(iπ/3) (voir la méthode). z⁶ = 2⁶ e^(i6π/3) = 64 e^(2iπ) = 64.

3. Δ = 4 − 20 = −16 = (4i)². z = (2 + 4i)/2 = 1 + 2i ou z = 1 − 2i.

4. u₁₀ = 3 + 10 × 4 = 43. S compte 11 termes : S = 11 × (3 + 43)/2 = 11 × 23 = 253.

5. Cₙ₊₁ = 1,05 Cₙ, donc Cₙ = 500 000 × 1,05ⁿ. C₁₀ = 500 000 × 1,05¹⁰ ≈ 814 447 FCFA. Le capital double si 1,05ⁿ ≥ 2, soit n ln(1,05) ≥ ln 2, n ≥ ln 2/ln 1,05 ≈ 14,2. Il faut 15 années.

6. Point fixe : ℓ = ℓ/3 + 4, donc (2/3)ℓ = 4 et ℓ = 6. vₙ = uₙ − 6 est géométrique de raison 1/3, v₀ = −4. Donc uₙ = 6 − 4 × (1/3)ⁿ. Comme (1/3)ⁿ tend vers 0, la limite est 6.

7. La rotation s''écrit z'' = e^(iπ/2) z = iz. Image de A : i(2 + i) = 2i + i² = −1 + 2i. Pour z'' = (1 + i)z + 2 : |1 + i| = √2 et arg(1 + i) = π/4. Centre : ω = 2/(1 − (1 + i)) = 2/(−i) = 2i. C''est la similitude directe de centre Ω d''affixe 2i, de rapport √2 et d''angle π/4.', 'texte', 70, false, 30
from public.courses c where c.slug = 'bac-mathematiques-s'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Suites numériques, nombres complexes et géométrie');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Probabilités et statistiques', '## Objectifs de la leçon

- Dénombrer avec les listes, les arrangements et les combinaisons.
- Calculer des probabilités, y compris conditionnelles, avec un arbre pondéré.
- Étudier une variable aléatoire et la loi binomiale.
- Traiter une série statistique à deux variables : ajustement affine et corrélation.

## Fiche 1 : dénombrement

- Nombre de p-listes (tirages successifs avec remise) d''un ensemble à n éléments : nᵖ.
- Arrangements (tirages successifs sans remise, l''ordre compte) : Aₙᵖ = n!/(n − p)!.
- Combinaisons (tirages simultanés, l''ordre ne compte pas) : C(n, p) = n!/(p!(n − p)!).
- Propriétés : C(n, p) = C(n, n − p) ; C(n, p) + C(n, p + 1) = C(n + 1, p + 1).

## Fiche 2 : probabilités

- En situation d''équiprobabilité : P(A) = nombre de cas favorables / nombre de cas possibles.
- P(Ā) = 1 − P(A) ; P(A ∪ B) = P(A) + P(B) − P(A ∩ B).
- Probabilité conditionnelle : P_A(B) = P(A ∩ B)/P(A), avec P(A) ≠ 0.
- Formule des probabilités totales : si A et Ā partagent l''univers, P(B) = P(A)P_A(B) + P(Ā)P_Ā(B).
- A et B indépendants si P(A ∩ B) = P(A) × P(B).

## Fiche 3 : variable aléatoire et loi binomiale

- Loi de X : liste des valeurs xᵢ et des probabilités pᵢ, avec somme des pᵢ = 1.
- Espérance : E(X) = somme des xᵢ pᵢ. Variance : V(X) = E(X²) − [E(X)]². Écart-type : σ = √V(X).
- Schéma de Bernoulli : n épreuves identiques et indépendantes à deux issues, succès de probabilité p. X = nombre de succès suit la loi binomiale B(n, p) : P(X = k) = C(n, k) pᵏ (1 − p)ⁿ⁻ᵏ ; E(X) = np ; V(X) = np(1 − p).

## Fiche 4 : statistiques à deux variables

- Point moyen G(x̄ ; ȳ).
- Variance : V(x) = (1/n) Σ (xᵢ − x̄)² = (1/n) Σ xᵢ² − x̄².
- Covariance : cov(x, y) = (1/n) Σ (xᵢ − x̄)(yᵢ − ȳ) = (1/n) Σ xᵢyᵢ − x̄ȳ.
- Coefficient de corrélation linéaire : r = cov(x, y)/(σ(x)σ(y)). Si |r| est proche de 1 (en pratique |r| ≥ 0,87 est souvent retenu comme seuil), l''ajustement affine est justifié.
- Droite de régression de y en x : y = ax + b avec a = cov(x, y)/V(x) et b = ȳ − a x̄. Elle passe par G.

## Exemple guidé : production d''une coopérative

Une coopérative maraîchère des Niayes note sa production (en tonnes) sur cinq années numérotées x = 1 à 5 : y = 10 ; 12 ; 15 ; 17 ; 21. On a x̄ = 3 et ȳ = 75/5 = 15. Les écarts sont, pour x : −2, −1, 0, 1, 2 ; pour y : −5, −3, 0, 2, 6.

cov(x, y) = (10 + 3 + 0 + 2 + 12)/5 = 27/5 = 5,4. V(x) = (4 + 1 + 0 + 1 + 4)/5 = 2. V(y) = (25 + 9 + 0 + 4 + 36)/5 = 14,8.

r = 5,4/√(2 × 14,8) ≈ 0,993 : corrélation très forte. a = 5,4/2 = 2,7 et b = 15 − 2,7 × 3 = 6,9. Droite : y = 2,7x + 6,9. Estimation pour l''année 7 : y = 2,7 × 7 + 6,9 = 25,8 tonnes, si la tendance se maintient.

## Méthode : l''arbre pondéré

Sur chaque branche on écrit une probabilité ; la somme des branches issues d''un même nœud vaut 1 ; la probabilité d''un chemin est le produit des probabilités de ses branches ; la probabilité d''un événement est la somme des chemins qui y mènent. Une probabilité « sachant que » se lit sur une branche du deuxième niveau.

## Points clés

Repère d''abord le type de tirage (simultané, successif avec ou sans remise). Pour « au moins un », passe par l''événement contraire. Pour une loi binomiale, justifie les trois conditions : épreuves identiques, indépendantes, à deux issues.

## Exercices pratiques

1. Une urne contient 5 boules rouges et 3 vertes. On tire simultanément 2 boules. Calculer la probabilité d''obtenir 2 rouges, 2 vertes, puis une boule de chaque couleur.

2. Combien de codes à 4 chiffres peut-on former ? Combien ont 4 chiffres tous différents ?

3. P(A) = 0,4 ; P(B) = 0,5 ; P(A ∪ B) = 0,7. A et B sont-ils indépendants ?

4. Dans une région, 10 % des personnes testées sont atteintes de paludisme. Un test rapide est positif pour 95 % des malades et pour 8 % des personnes non malades (valeurs fictives). Calculer la probabilité qu''un test soit positif, puis la probabilité qu''une personne au test positif soit malade.

5. À un jeu de kermesse, on lance un dé équilibré : on gagne 500 FCFA si on obtient 6, 100 FCFA si on obtient 4 ou 5, on perd 200 FCFA sinon. Soit X le gain algébrique. Donner la loi de X, E(X) et σ(X).

6. Un semencier annonce que 20 % des graines d''un lot ne germent pas. On sème 10 graines, de façon indépendante. X est le nombre de graines qui ne germent pas. Calculer P(X = 0), P(X ≥ 1), P(X = 2) et E(X).

7. Série : x = 2 ; 4 ; 6 ; 8 et y = 3 ; 7 ; 8 ; 10. Calculer r et la droite de régression de y en x.

## Corrigé

1. Nombre de tirages : C(8, 2) = 28. P(2 rouges) = C(5, 2)/28 = 10/28 = 5/14. P(2 vertes) = C(3, 2)/28 = 3/28. P(une de chaque) = (5 × 3)/28 = 15/28. Contrôle : 10 + 3 + 15 = 28.

2. 10⁴ = 10 000 codes. Chiffres tous différents : A₁₀⁴ = 10 × 9 × 8 × 7 = 5 040.

3. P(A ∩ B) = P(A) + P(B) − P(A ∪ B) = 0,4 + 0,5 − 0,7 = 0,2. Or P(A) × P(B) = 0,2. Ils sont indépendants.

4. P(T) = 0,1 × 0,95 + 0,9 × 0,08 = 0,095 + 0,072 = 0,167. P_T(M) = 0,095/0,167 ≈ 0,569. Un peu plus d''une personne sur deux testée positive est réellement malade : il faut confirmer par un autre examen.

5. P(X = 500) = 1/6 ; P(X = 100) = 2/6 ; P(X = −200) = 3/6. E(X) = (500 + 200 − 600)/6 = 100/6 ≈ 16,67 FCFA. E(X²) = (250 000 + 2 × 10 000 + 3 × 40 000)/6 = 390 000/6 = 65 000. V(X) = 65 000 − (100/6)² ≈ 64 722,2 et σ(X) ≈ 254,4 FCFA. Le jeu est légèrement favorable au joueur.

6. X suit B(10 ; 0,2). P(X = 0) = 0,8¹⁰ ≈ 0,107. P(X ≥ 1) = 1 − 0,8¹⁰ ≈ 0,893. P(X = 2) = C(10, 2) × 0,2² × 0,8⁸ = 45 × 0,04 × 0,8⁸ ≈ 0,302. E(X) = 10 × 0,2 = 2.

7. x̄ = 5, ȳ = 7. Écarts x : −3, −1, 1, 3 ; écarts y : −4, 0, 1, 3. cov = (12 + 0 + 1 + 9)/4 = 5,5. V(x) = (9 + 1 + 1 + 9)/4 = 5. V(y) = (16 + 0 + 1 + 9)/4 = 6,5. r = 5,5/√(5 × 6,5) ≈ 0,965. a = 5,5/5 = 1,1 ; b = 7 − 1,1 × 5 = 1,5. Droite : y = 1,1x + 1,5.', 'texte', 65, false, 40
from public.courses c where c.slug = 'bac-mathematiques-s'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Probabilités et statistiques');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen : sujet d''entraînement corrigé', '## Présentation

Voici un sujet d''entraînement complet, conçu sur le modèle des épreuves de mathématiques du Bac S. Ce n''est pas un sujet officiel. La répartition des points est indicative, non officielle. Traite-le en temps limité, sans calculatrice programmable non autorisée, puis compare avec le corrigé.

## Exercice 1 : nombres complexes (4 points)

1. Résoudre dans ℂ l''équation z² − 2√3 z + 4 = 0.

2. On note a la solution de partie imaginaire positive et b l''autre. Écrire a et b sous forme exponentielle.

3. Dans le plan complexe, A et B ont pour affixes a et b. Montrer que le triangle OAB est équilatéral.

4. Montrer que A est l''image de B par la rotation de centre O et d''angle π/3.

5. Calculer a⁶.

## Exercice 2 : probabilités (4 points)

Une coopérative de Casamance achète ses mangues à deux producteurs : 70 % au producteur A et 30 % au producteur B. 5 % des mangues de A et 10 % de celles de B sont abîmées (données fictives). On prend une mangue au hasard.

1. Construire un arbre pondéré.

2. Calculer la probabilité que la mangue soit abîmée.

3. La mangue est abîmée. Quelle est la probabilité qu''elle vienne du producteur A ?

4. On prélève 5 mangues, le stock étant assez grand pour assimiler les tirages à des tirages indépendants. Calculer la probabilité qu''aucune ne soit abîmée, puis qu''au moins une le soit (arrondis à 10⁻³).

## Problème : analyse (12 points)

Soit f la fonction définie sur ℝ par f(x) = (x + 2)e⁻ˣ et C sa courbe dans un repère orthonormé.

Partie A

1. Calculer les limites de f en −∞ et en +∞. Interpréter graphiquement.

2. Montrer que f''(x) = −(x + 1)e⁻ˣ. Dresser le tableau de variations de f.

3. Déterminer le point d''intersection de C avec l''axe des abscisses, puis une équation de la tangente T à C au point d''abscisse 0.

Partie B

1. Déterminer les réels a et b tels que F(x) = (ax + b)e⁻ˣ soit une primitive de f.

2. Calculer l''aire A du domaine limité par C, l''axe des abscisses et les droites x = 0 et x = 1. Donner la valeur exacte puis une valeur approchée à 10⁻² près.

Partie C

1. Vérifier que f est solution de l''équation différentielle (E) : y'' + y = e⁻ˣ.

2. On pose uₙ = f(n) pour tout entier n ≥ 0. Montrer que (uₙ) est décroissante et déterminer sa limite.

## Corrigé de l''exercice 1

1. Δ = 12 − 16 = −4 = (2i)². z = (2√3 + 2i)/2 = √3 + i ou z = √3 − i.

2. |a| = √(3 + 1) = 2 ; cos θ = √3/2 et sin θ = 1/2, donc θ = π/6. a = 2e^(iπ/6) et b = ā = 2e^(−iπ/6).

3. OA = |a| = 2, OB = |b| = 2, AB = |a − b| = |2i| = 2. Les trois côtés sont égaux : OAB est équilatéral.

4. La rotation s''écrit z'' = e^(iπ/3) z. e^(iπ/3) × 2e^(−iπ/6) = 2e^(iπ/6) = a. Donc A est l''image de B.

5. a⁶ = 2⁶ e^(iπ) = −64.

## Corrigé de l''exercice 2

1. Premier niveau : A (0,7) et B (0,3). Second niveau : après A, abîmée D (0,05) ou non (0,95) ; après B, D (0,10) ou non (0,90).

2. P(D) = 0,7 × 0,05 + 0,3 × 0,10 = 0,035 + 0,030 = 0,065.

3. P_D(A) = 0,035/0,065 = 7/13 ≈ 0,538.

4. Le nombre X de mangues abîmées suit B(5 ; 0,065). P(X = 0) = 0,935⁵ ≈ 0,715. P(X ≥ 1) = 1 − 0,935⁵ ≈ 0,285.

## Corrigé du problème

Partie A

1. En −∞ : x + 2 tend vers −∞ et e⁻ˣ vers +∞, donc f tend vers −∞. En +∞ : f(x) = x e⁻ˣ + 2e⁻ˣ ; par croissance comparée x e⁻ˣ = x/eˣ tend vers 0, et 2e⁻ˣ tend vers 0. Donc f tend vers 0 : l''axe des abscisses (y = 0) est asymptote horizontale en +∞.

2. f''(x) = 1 × e⁻ˣ + (x + 2)(−e⁻ˣ) = (1 − x − 2)e⁻ˣ = −(x + 1)e⁻ˣ. Comme e⁻ˣ > 0, f''(x) a le signe de −(x + 1) : positive sur ]−∞ ; −1[, négative sur ]−1 ; +∞[. f est croissante sur ]−∞ ; −1], décroissante sur [−1 ; +∞[, avec un maximum f(−1) = 1 × e¹ = e ≈ 2,72.

3. f(x) = 0 ⇔ x + 2 = 0 ⇔ x = −2 : point (−2 ; 0). f(0) = 2 et f''(0) = −1, donc T : y = −x + 2.

Partie B

1. F''(x) = a e⁻ˣ − (ax + b)e⁻ˣ = (−ax + a − b)e⁻ˣ. On veut −a = 1 et a − b = 2 : a = −1 et b = −3. F(x) = (−x − 3)e⁻ˣ.

2. Sur [0 ; 1], f(x) > 0, donc A = F(1) − F(0) = −4e⁻¹ − (−3) = 3 − 4/e u.a. ≈ 1,53 u.a.

Partie C

1. f''(x) + f(x) = −(x + 1)e⁻ˣ + (x + 2)e⁻ˣ = e⁻ˣ. f est bien solution de (E).

2. f est décroissante sur [−1 ; +∞[, donc sur [0 ; +∞[ : pour tout n ≥ 0, n < n + 1 entraîne f(n + 1) < f(n), c''est-à-dire uₙ₊₁ < uₙ. La suite est décroissante. Comme f tend vers 0 en +∞, lim uₙ = 0.

## Conseils

- Dans l''exercice de complexes, le module et l''argument se lisent mieux après avoir écrit a sous forme exponentielle : toute la suite devient rapide.
- En probabilités, écris l''événement en toutes lettres avant de calculer.
- Dans le problème, la partie A est la plus rentable : ne la bâcle jamais. Si tu bloques en Partie B, l''identification des coefficients (méthode utilisée ici) est la technique standard à maîtriser.
- Trace la courbe avec soin : asymptote, maximum (−1 ; e), tangente T, point (−2 ; 0).

## Exercices pratiques

Pour compléter l''entraînement, voici cinq questions courtes de difficulté croissante, dans l''esprit des questions de cours du Bac.

1. Calculer la limite en +∞ de ln(x)/x².

2. Résoudre dans ℝ l''équation e²ˣ − 3eˣ + 2 = 0.

3. Résoudre l''équation ln(x) + ln(x − 1) = ln 2.

4. Calculer (1 + i)⁸.

5. X suit la loi binomiale B(5 ; 0,5). Calculer P(X = 3).

## Corrigé

1. ln(x)/x² = (ln(x)/x) × (1/x). Le premier facteur tend vers 0 (croissance comparée), le second aussi : la limite est 0.

2. On pose X = eˣ > 0 : X² − 3X + 2 = 0, d''où X = 1 ou X = 2. eˣ = 1 donne x = 0 ; eˣ = 2 donne x = ln 2. Solutions : 0 et ln 2.

3. Il faut x > 0 et x − 1 > 0, donc x > 1. L''équation devient ln(x(x − 1)) = ln 2, soit x² − x − 2 = 0, de racines 2 et −1. Seul 2 vérifie x > 1 : solution x = 2.

4. (1 + i)² = 1 + 2i + i² = 2i, donc (1 + i)⁸ = (2i)⁴ = 16 i⁴ = 16.

5. P(X = 3) = C(5, 3) × 0,5³ × 0,5² = 10/32 = 5/16 ≈ 0,313.', 'texte', 90, false, 50
from public.courses c where c.slug = 'bac-mathematiques-s'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen : sujet d''entraînement corrigé');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : révision intensive de veille du Bac', '## Fiche du cours vidéo

- Durée : 1h30.
- Thème : séance de révision intensive de veille du Bac en mathématiques, série S.
- Objectifs : revoir les résultats indispensables, corriger des exercices types en commentant la rédaction, travailler la gestion du temps, se tester avec un quiz et une évaluation finale.
- Matériel : tableau ou diaporama, calculatrice scientifique, brouillon, fiches de révision.
- Prérequis : leçons 1 à 5 de ce cours.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

« Bonsoir à toutes et à tous. Ce soir, nous n''apprenons rien de nouveau : nous consolidons. L''objectif est que vous entriez demain dans la salle d''examen avec des réflexes clairs. Nous allons parcourir l''analyse, les suites, les complexes et les probabilités, corriger des exercices types et parler de gestion du temps. Quand je dis “pause”, arrêtez la vidéo et cherchez seuls avant de regarder la correction. »

Visuel : le plan de la séance en sept étapes.

## 05:00 – 20:00 · Rappels clés d''analyse

« Première règle : toujours commencer par l''ensemble de définition. Avec ln, l''expression à l''intérieur doit être strictement positive. Deuxième règle : pour une limite, on remplace d''abord ; si on tombe sur une forme indéterminée, on factorise par le terme dominant ou on utilise les croissances comparées. Retenez les quatre : eˣ/x tend vers +∞ en +∞, ln(x)/x tend vers 0 en +∞, x eˣ tend vers 0 en −∞, x ln x tend vers 0 en 0⁺. »

« Pour dériver, repérez la structure : produit, quotient, composée. La dérivée de e puissance u, c''est u'' e puissance u. La dérivée de ln u, c''est u'' sur u. Et l''équation de la tangente en a : y = f''(a)(x − a) + f(a). »

Visuel : tableau des primitives usuelles et la formule d''intégration par parties.

« Pour une équation différentielle y'' = ay + b, la solution générale est C eᵃˣ − b/a. La condition initiale donne C. Pour y'''' + ω²y = 0, c''est A cos ωx + B sin ωx. »

Question à poser : « Quelle est la dérivée de ln(x² + 1) ? » Réponse : 2x/(x² + 1).

## 20:00 – 35:00 · Correction commentée : une étude de fonction avec ln

Visuel : l''énoncé. « Soit g(x) = x ln x − x sur ]0 ; +∞[. Étudier g. »

« Limite en 0⁺ : x ln x tend vers 0 par croissance comparée, et x tend vers 0 ; donc g tend vers 0. Limite en +∞ : j''écris g(x) = x(ln x − 1) ; x tend vers +∞ et ln x − 1 aussi, donc g tend vers +∞. »

« Dérivée : la dérivée de x ln x est 1 × ln x + x × 1/x = ln x + 1. Donc g''(x) = ln x + 1 − 1 = ln x. Le signe est simple : g'' < 0 sur ]0 ; 1[ et g'' > 0 sur ]1 ; +∞[. Minimum en 1 : g(1) = 0 − 1 = −1. »

« Où la courbe coupe-t-elle l''axe des abscisses ? g(x) = 0 ⇔ x(ln x − 1) = 0 ⇔ ln x = 1 (car x > 0) ⇔ x = e. Remarquez la rédaction : chaque équivalence est justifiée. Et un bonus : g''(x) = ln x, donc g est une primitive de ln. Cela permet de calculer ∫ de 1 à e de ln x dx = g(e) − g(1) = 0 − (−1) = 1. »

Visuel : la courbe de g avec le minimum (1 ; −1) et le point (e ; 0).

## 35:00 – 45:00 · Suites : la méthode de la suite auxiliaire

« Exercice type : u₀ = 4 et uₙ₊₁ = 0,8uₙ + 2. Je cherche le point fixe : ℓ = 0,8ℓ + 2, donc 0,2ℓ = 2 et ℓ = 10. Je pose vₙ = uₙ − 10. Je calcule vₙ₊₁ = 0,8uₙ + 2 − 10 = 0,8(uₙ − 10) = 0,8vₙ. Suite géométrique de raison 0,8, de premier terme v₀ = −6. Donc uₙ = 10 − 6 × 0,8ⁿ, qui tend vers 10 car 0 < 0,8 < 1. »

« Contexte réel : c''est le modèle d''un réservoir d''eau dans un village du Ferlo qui perd 20 % de son volume chaque semaine et reçoit 2 mètres cubes : à long terme, il se stabilise à 10 mètres cubes. »

## 45:00 – 55:00 · Pause quiz interactif

« Pause ! Cinq questions, une minute chacune. »

- Q1 : lim (x → +∞) de (3x + 1)/(x − 2) ?
- Q2 : forme exponentielle de −2i ?
- Q3 : primitive de e³ˣ ?
- Q4 : on tire successivement avec remise 3 boules dans une urne de 10 : combien de tirages possibles ?
- Q5 : solution de y'' = 3y avec y(0) = 2 ?

« Correction. Q1 : 3. Q2 : |−2i| = 2 et l''argument est −π/2, donc 2e^(−iπ/2). Q3 : e³ˣ/3. Q4 : 10³ = 1 000. Q5 : y = 2e³ˣ. Si vous avez 4 ou 5 bonnes réponses, bravo ; sinon, relisez la fiche correspondante ce soir, sans paniquer. »

## 55:00 – 1:07:00 · Correction commentée : complexes et géométrie

« Soit A, B, C les points d''affixes a = 1, b = 3 + 2i et c = −1 + 2i. Quelle est la nature du triangle ABC ? Calculons (c − a)/(b − a) = (−2 + 2i)/(2 + 2i). Je multiplie par le conjugué : (−2 + 2i)(2 − 2i)/8 = (−4 + 4i + 4i − 4i²)/8 = (−4 + 8i + 4)/8 = i. C''est un imaginaire pur de module 1 : le triangle ABC est rectangle isocèle en A. »

« Rédaction attendue : (c − a)/(b − a) = i, donc AC/AB = |i| = 1 et (AB→, AC→) = arg i = π/2. Conclusion : ABC est rectangle et isocèle en A. Toujours conclure avec les mots du programme. »

Visuel : la figure avec l''angle droit codé en A.

## 1:07:00 – 1:15:00 · Probabilités : les trois réflexes

« Réflexe 1 : identifier le type de tirage. Réflexe 2 : pour “au moins un”, passer par le contraire. Réflexe 3 : pour la loi binomiale, justifier les trois conditions. Exemple : un élève répond au hasard à 4 questions d''un QCM à 3 propositions dont une seule est juste. X suit B(4 ; 1/3). P(au moins une bonne réponse) = 1 − (2/3)⁴ = 1 − 16/81 = 65/81 ≈ 0,802. »

« Et l''espérance ? E(X) = np = 4/3 ≈ 1,33 : en répondant au hasard, on obtient en moyenne un peu plus d''une bonne réponse sur quatre. »

« Un mot sur les statistiques à deux variables, car elles reviennent souvent. Le calcul se fait en tableau : colonnes xᵢ, yᵢ, xᵢ², yᵢ², xᵢyᵢ, puis les totaux. Avec ces totaux, on obtient les moyennes, les variances, la covariance, puis r et la droite de régression. N''oubliez jamais que la droite de régression passe par le point moyen G : c''est un excellent contrôle. Si votre droite ne passe pas par G, il y a une erreur de calcul. Et quand on vous demande une estimation, comme une production future ou un nombre d''élèves dans un lycée, rédigez avec prudence : “si la tendance se maintient, on peut estimer…”. »

Visuel : un tableau de calcul type à cinq colonnes avec la ligne des totaux.

## 1:15:00 – 1:22:00 · Gestion du temps et dernière consigne

« Demain : dix minutes de lecture complète. Commencez par l''exercice qui vous rassure. Le problème mérite environ la moitié du temps. Si vous bloquez plus de dix minutes sur une question, admettez le résultat et avancez. Gardez dix à quinze minutes de relecture. Écrivez les valeurs exactes, puis les approximations. Ce soir, dormez tôt : un cerveau reposé vaut mieux qu''une heure de révision supplémentaire. »

## 1:22:00 – 1:30:00 · Synthèse et évaluation finale

« Pour finir, une évaluation en cinq questions. Faites-la seuls, puis vérifiez. »

- Question 1 : dériver f(x) = x e⁻²ˣ.
- Question 2 : calculer ∫ de 0 à ln 2 de eˣ dx.
- Question 3 : module et argument de z = −1 + i.
- Question 4 : (uₙ) géométrique, u₀ = 3, q = 2 : calculer u₅ et u₀ + u₁ + … + u₅.
- Question 5 : P(A) = 0,3 et P_A(B) = 0,5 : calculer P(A ∩ B).

Réponses :

- Réponse 1 : f''(x) = e⁻²ˣ − 2x e⁻²ˣ = (1 − 2x)e⁻²ˣ.
- Réponse 2 : [eˣ] de 0 à ln 2 = 2 − 1 = 1.
- Réponse 3 : |z| = √2 ; cos θ = −√2/2 et sin θ = √2/2, donc θ = 3π/4.
- Réponse 4 : u₅ = 3 × 2⁵ = 96 ; somme = 3 × (1 − 2⁶)/(1 − 2) = 3 × 63 = 189.
- Réponse 5 : P(A ∩ B) = P(A) × P_A(B) = 0,3 × 0,5 = 0,15.

« Merci pour votre attention. Vous avez travaillé, vous avez une méthode : faites-vous confiance. Bon courage pour le Bac ! »', 'video', 90, false, 60
from public.courses c where c.slug = 'bac-mathematiques-s'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : révision intensive de veille du Bac');

-- Cours : Mathématiques série L : réussir l'épreuve du Bac
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'bac-mathematiques-l', (select id from public.levels where name = 'Terminale'), null, 'Mathématiques (série L)', 'Mathématiques série L : réussir l''épreuve du Bac', 'Ce cours de préparation au Baccalauréat s''adresse aux élèves de Terminale des séries littéraires (L) du Sénégal et d''Afrique francophone, souvent peu à l''aise avec les mathématiques. Il révise pas à pas les fonctions et leurs graphiques, les suites et les pourcentages (intérêts, croissance d''une population), les statistiques et les probabilités, ainsi que la logique et la résolution de problèmes concrets, avec des exercices corrigés et un sujet d''entraînement complet. Prérequis : les calculs de base du collège (fractions, pourcentages, équations du premier degré).', true, 202
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comprendre l''épreuve et méthode de travail', '## À qui s''adresse ce cours

Ce cours est conçu pour les candidats au Baccalauréat des séries littéraires (L). Il part du principe que tu n''aimes pas forcément les mathématiques et que tu veux surtout des méthodes claires pour gagner des points. Il reprend des notions vues depuis la Seconde, sous l''angle de la révision, en insistant sur la Terminale. Les chapitres exigés peuvent varier selon ta série exacte et les instructions en vigueur : vérifie-les avec ton professeur.

## Objectifs de la leçon

- Savoir comment se présente l''épreuve de mathématiques en série L.
- Comprendre ce que le correcteur attend.
- Éviter les erreurs les plus fréquentes.
- Organiser ses révisions sur 10 semaines.

## Comment se présente l''épreuve

Le sujet comporte en général deux ou trois exercices et parfois un petit problème. Les thèmes qui reviennent le plus sont : les pourcentages et les suites (évolution d''un prix, d''un capital, d''une population), les fonctions (lecture de graphique, étude simple, problème de coût et de bénéfice), les statistiques (moyenne, médiane, écart-type) et les probabilités simples. Des questions de logique ou de raisonnement peuvent aussi apparaître. La durée, le coefficient et le barème officiel sont fixés par les textes officiels en vigueur : ne te fie pas aux rumeurs. Les points indiqués dans nos sujets d''entraînement sont indicatifs, non officiels.

Bonne nouvelle : en série L, les sujets sont très souvent concrets. On te parle d''une boutique, d''un champ, d''une association, d''un village. Si tu sais traduire une phrase en calcul, tu as déjà fait la moitié du travail. C''est là que tes qualités de lecteur deviennent un atout.

## Ce que le correcteur attend

- Des calculs posés, pas seulement des résultats.
- Une phrase de conclusion qui répond à la question, avec l''unité (FCFA, habitants, kilogrammes).
- Des tableaux propres quand il y a des statistiques.
- Une justification courte quand on demande « justifier » : une propriété, un calcul ou un exemple.

## La méthode en cinq étapes

- Lire l''énoncé deux fois et souligner les nombres et les mots importants (« augmente de », « diminue de », « par an », « au moins »).
- Reformuler la question avec tes mots : « On me demande combien il y aura d''habitants dans 5 ans. »
- Écrire le calcul en entier, puis le faire à la calculatrice.
- Vérifier si le résultat est raisonnable : un prix qui baisse ne peut pas devenir plus grand.
- Rédiger la conclusion en une phrase.

## Les erreurs fréquentes

- Additionner des pourcentages successifs : une hausse de 10 % puis une hausse de 10 % ne font pas 20 %, mais 21 %.
- Croire qu''une baisse de 20 % annule une hausse de 20 % : ce n''est pas vrai.
- Confondre médiane et moyenne.
- Oublier de ranger les valeurs dans l''ordre avant de chercher la médiane.
- Donner une probabilité supérieure à 1 ou négative.
- Confondre une implication et sa réciproque en logique.
- Recopier un résultat de la calculatrice avec dix décimales sans arrondir correctement.

## Bien utiliser sa calculatrice

Apprends à utiliser les touches de puissance (pour 1,05 puissance 10 par exemple), de racine carrée et, si ta calculatrice le permet, le mode statistique qui calcule la moyenne et l''écart-type. Entraîne-toi avec ta propre calculatrice, celle que tu utiliseras le jour de l''examen.

## Plan de révision sur 10 semaines

- Semaine 1 : pourcentages, coefficients multiplicateurs, évolutions successives.
- Semaine 2 : suites arithmétiques.
- Semaine 3 : suites géométriques, intérêts simples et composés, croissance d''une population.
- Semaine 4 : fonctions affines et lecture graphique.
- Semaine 5 : fonctions du second degré, dérivée et tableau de variations ; problèmes de bénéfice.
- Semaine 6 : statistiques (moyenne, médiane, quartiles, écart-type).
- Semaine 7 : probabilités simples et tableaux à double entrée.
- Semaine 8 : logique et raisonnement.
- Semaine 9 : deux sujets complets en temps limité.
- Semaine 10 : relecture des fiches, reprise des erreurs, repos la veille.

Conseil pratique : 30 minutes de mathématiques par jour valent mieux que 4 heures le dimanche. Travaille avec un camarade de série S ou un grand frère ou une grande sœur : demande-lui de t''expliquer une méthode, puis réexplique-la toi-même.

## Exercices pratiques

1. Un article coûte 10 000 FCFA. Il augmente de 10 %, puis encore de 10 %. Quel est son nouveau prix ? Quel est le pourcentage global d''augmentation ?

2. Reformule cette question avec tes mots : « Déterminer l''année à partir de laquelle la population dépassera 3 000 habitants. »

3. Un élève trouve qu''une probabilité vaut 1,2. Que peut-on en conclure ?

4. Range dans l''ordre et donne la médiane de la série : 12 ; 7 ; 15 ; 9 ; 10.

5. Propose un emploi du temps de révision de mathématiques pour une semaine, à raison de 30 minutes par jour, pour la semaine 3 du plan.

## Corrigé

1. 10 000 × 1,1 = 11 000 FCFA, puis 11 000 × 1,1 = 12 100 FCFA. Coefficient global : 1,1 × 1,1 = 1,21, soit une hausse de 21 % et non de 20 %.

2. « Je dois trouver la première année où le nombre d''habitants est plus grand que 3 000. » On calcule les termes successifs jusqu''à dépasser 3 000.

3. Il y a une erreur : une probabilité est toujours comprise entre 0 et 1. Il faut reprendre le calcul (souvent, on a divisé dans le mauvais sens).

4. Série rangée : 7 ; 9 ; 10 ; 12 ; 15. Il y a 5 valeurs : la médiane est la 3e, soit 10.

5. Exemple : lundi, relire la fiche sur les suites géométriques ; mardi, deux exercices de calcul de termes ; mercredi, intérêts simples et composés ; jeudi, croissance d''une population ; vendredi, un exercice type Bac ; samedi, correction et liste des erreurs ; dimanche, repos ou quiz rapide.', 'texte', 45, true, 10
from public.courses c where c.slug = 'bac-mathematiques-l'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comprendre l''épreuve et méthode de travail');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Fonctions et graphiques : lecture, second degré, dérivée et bénéfice', '## Objectifs de la leçon

- Lire et interpréter un graphique.
- Utiliser les fonctions affines et du second degré.
- Calculer une dérivée simple et dresser un tableau de variations.
- Résoudre un problème concret de coût, de recette et de bénéfice.

## Fiche 1 : vocabulaire des fonctions

Une fonction f associe à chaque nombre x un unique nombre f(x), appelé image de x. Si f(a) = b, on dit que a est un antécédent de b. La courbe de f est l''ensemble des points de coordonnées (x ; f(x)).

Lecture graphique : pour trouver l''image de 3, on part de 3 sur l''axe horizontal, on monte jusqu''à la courbe et on lit la valeur sur l''axe vertical. Pour trouver les antécédents de 5, on trace la droite horizontale y = 5 et on lit les abscisses des points d''intersection avec la courbe. Résoudre f(x) = k graphiquement, c''est exactement cela.

## Fiche 2 : fonctions affines

- f(x) = ax + b. La courbe est une droite ; a est le coefficient directeur (la pente), b l''ordonnée à l''origine.
- Si a > 0, f est croissante ; si a < 0, f est décroissante ; si a = 0, f est constante.
- Calcul de a à partir de deux points : a = (f(x₂) − f(x₁))/(x₂ − x₁).
- Une fonction linéaire f(x) = ax traduit une situation de proportionnalité.

Exemple : un taxi demande 500 FCFA de prise en charge plus 200 FCFA par kilomètre. Le prix est f(x) = 200x + 500 pour x kilomètres. Pour 7 km : f(7) = 1 400 + 500 = 1 900 FCFA.

## Fiche 3 : fonctions du second degré

- f(x) = ax² + bx + c avec a ≠ 0. La courbe est une parabole, tournée vers le haut si a > 0 et vers le bas si a < 0.
- Le sommet a pour abscisse x = −b/(2a). C''est là que f atteint son minimum (a > 0) ou son maximum (a < 0).
- Racines : on calcule Δ = b² − 4ac. Si Δ > 0, deux solutions x = (−b − √Δ)/(2a) et x = (−b + √Δ)/(2a) ; si Δ = 0, une solution −b/(2a) ; si Δ < 0, pas de solution réelle.
- Signe : ax² + bx + c est du signe de a à l''extérieur des racines et du signe contraire entre les racines.

## Fiche 4 : dérivée et variations

- Dérivées utiles : la dérivée d''une constante est 0 ; celle de x est 1 ; celle de x² est 2x ; celle de x³ est 3x² ; la dérivée de a × u est a × u''.
- Si f''(x) > 0 sur un intervalle, f est croissante ; si f''(x) < 0, f est décroissante.
- Là où la dérivée s''annule en changeant de signe, f atteint un maximum ou un minimum local.

Méthode : calculer f''(x), étudier son signe (souvent une fonction affine ou un produit), dresser le tableau de variations en indiquant les valeurs de f aux bornes et aux extremums.

## Fiche 5 : coût, recette, bénéfice

- Recette R(x) = prix de vente unitaire × quantité vendue.
- Bénéfice B(x) = R(x) − C(x).
- L''entreprise est rentable quand B(x) > 0. Le bénéfice maximal correspond au sommet de la parabole ou au point où B''(x) = 0.

## Exemple guidé : un atelier de couture à Thiès

Un atelier fabrique x tenues par semaine (0 ≤ x ≤ 60). Son bénéfice, en milliers de FCFA, est B(x) = −2x² + 120x − 1 000.

B''(x) = −4x + 120. B''(x) = 0 pour x = 30 ; B'' > 0 avant 30 et B'' < 0 après. Le bénéfice est maximal pour 30 tenues : B(30) = −1 800 + 3 600 − 1 000 = 800, soit 800 000 FCFA.

Rentabilité : −2x² + 120x − 1 000 = 0 équivaut à x² − 60x + 500 = 0. Δ = 3 600 − 2 000 = 1 600 et √Δ = 40. Racines : (60 − 40)/2 = 10 et (60 + 40)/2 = 50. Comme a < 0, B(x) > 0 entre les racines : l''atelier est rentable s''il fabrique entre 10 et 50 tenues (bornes exclues).

## Points clés

Une fonction, c''est une machine à transformer des nombres ; un graphique, c''est une image de cette machine. Dans un problème concret, écris toujours la conclusion avec l''unité.

## Exercices pratiques

1. Soit f(x) = 200x + 500 (offre A d''un taxi) et g(x) = 300x (offre B), x en kilomètres, prix en FCFA. Pour quelle distance les deux offres coûtent-elles le même prix ? Quelle offre choisir pour 3 km ? pour 10 km ?

2. Une droite passe par A(1 ; 4) et B(3 ; 10). Trouver son équation.

3. Soit f(x) = x² − 4x + 3. Calculer f(0), trouver les racines, le sommet et dresser le tableau de variations.

4. Résoudre l''inéquation x² − 4x + 3 < 0.

5. Soit f(x) = x³ − 12x sur [−4 ; 4]. Calculer f''(x), étudier son signe et dresser le tableau de variations.

6. Une coopérative vend du jus de bissap à 500 FCFA la bouteille. Ses coûts journaliers sont C(x) = 200x + 15 000 (en FCFA) pour x bouteilles. À partir de combien de bouteilles est-elle rentable ?

## Corrigé

1. 200x + 500 = 300x donne 100x = 500, x = 5 km. Pour 3 km : f(3) = 1 100 et g(3) = 900, l''offre B est moins chère. Pour 10 km : f(10) = 2 500 et g(10) = 3 000, l''offre A est moins chère.

2. a = (10 − 4)/(3 − 1) = 3. Avec A : 4 = 3 × 1 + b, donc b = 1. Équation : y = 3x + 1.

3. f(0) = 3. Δ = 16 − 12 = 4, √Δ = 2 ; racines (4 − 2)/2 = 1 et (4 + 2)/2 = 3. Sommet : x = 4/2 = 2, f(2) = 4 − 8 + 3 = −1. f''(x) = 2x − 4 : f décroissante sur ]−∞ ; 2], croissante sur [2 ; +∞[, minimum −1 en x = 2.

4. a = 1 > 0 : le trinôme est négatif entre ses racines. Solution : 1 < x < 3, soit l''intervalle ]1 ; 3[.

5. f''(x) = 3x² − 12 = 3(x² − 4) = 3(x − 2)(x + 2). f'' > 0 sur [−4 ; −2[ et sur ]2 ; 4], f'' < 0 sur ]−2 ; 2[. Valeurs : f(−4) = −64 + 48 = −16 ; f(−2) = −8 + 24 = 16 ; f(2) = 8 − 24 = −16 ; f(4) = 64 − 48 = 16. f croît de −16 à 16 sur [−4 ; −2], décroît de 16 à −16 sur [−2 ; 2], puis croît de −16 à 16 sur [2 ; 4].

6. R(x) = 500x ; B(x) = 500x − 200x − 15 000 = 300x − 15 000. B(x) > 0 si x > 50. La coopérative est rentable à partir de 51 bouteilles vendues par jour (à 50 bouteilles, le bénéfice est nul).', 'texte', 60, false, 20
from public.courses c where c.slug = 'bac-mathematiques-l'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Fonctions et graphiques : lecture, second degré, dérivée et bénéfice');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Suites et pourcentages : intérêts et croissance de population', '## Objectifs de la leçon

- Calculer avec les pourcentages et les coefficients multiplicateurs.
- Enchaîner des évolutions et trouver un taux réciproque.
- Utiliser les suites arithmétiques et géométriques.
- Résoudre des problèmes d''intérêts et de croissance d''une population.

## Fiche 1 : pourcentages et coefficients multiplicateurs

- Prendre t % d''une quantité : multiplier par t/100.
- Augmenter de t % : multiplier par (1 + t/100). Diminuer de t % : multiplier par (1 − t/100). Ce nombre est le coefficient multiplicateur CM.
- Taux d''évolution entre une valeur de départ V₀ et une valeur d''arrivée V₁ : t = (V₁ − V₀)/V₀ × 100.
- Évolutions successives : on multiplie les coefficients. On n''additionne jamais les pourcentages.
- Taux réciproque : pour revenir à la valeur de départ, on multiplie par 1/CM.

Exemple : un sac de riz coûte 25 000 FCFA. Hausse de 12 % : 25 000 × 1,12 = 28 000 FCFA. Puis baisse de 12 % : 28 000 × 0,88 = 24 640 FCFA. Coefficient global 1,12 × 0,88 = 0,9856 : baisse globale de 1,44 %.

Après une hausse de 25 % (CM = 1,25), le coefficient réciproque est 1/1,25 = 0,8 : il faut une baisse de 20 % pour revenir au prix initial.

## Fiche 2 : suites arithmétiques

- On passe d''un terme au suivant en ajoutant toujours le même nombre r, la raison : uₙ₊₁ = uₙ + r.
- Formule : uₙ = u₀ + n × r (ou uₙ = u₁ + (n − 1) × r si on commence à u₁).
- Somme de termes consécutifs : (nombre de termes) × (premier terme + dernier terme)/2.
- Modèle d''une croissance constante (même nombre ajouté chaque année) : intérêts simples, salaire augmenté d''un montant fixe.

## Fiche 3 : suites géométriques

- On passe d''un terme au suivant en multipliant toujours par le même nombre q, la raison : uₙ₊₁ = q × uₙ.
- Formule : uₙ = u₀ × qⁿ.
- Somme de termes consécutifs : premier terme × (1 − q^(nombre de termes))/(1 − q), si q ≠ 1.
- Une évolution de t % par période correspond à une suite géométrique de raison q = 1 + t/100.

## Fiche 4 : intérêts simples et composés

- Intérêts simples : les intérêts sont calculés chaque année sur le capital de départ. Après n années, Cₙ = C₀ + n × C₀ × t/100 : suite arithmétique.
- Intérêts composés : les intérêts s''ajoutent au capital et rapportent à leur tour. Cₙ = C₀ × (1 + t/100)ⁿ : suite géométrique.

Exemple : 200 000 FCFA placés à 6 % par an pendant 3 ans. Intérêts simples : 200 000 × 0,06 × 3 = 36 000 FCFA, capital final 236 000 FCFA. Intérêts composés : 200 000 × 1,06³ ≈ 238 203 FCFA. Le placement à intérêts composés rapporte un peu plus.

## Fiche 5 : croissance d''une population

Prenons une commune fictive de 50 000 habitants dont la population augmente de 3 % par an. On note Pₙ la population après n années : Pₙ = 50 000 × 1,03ⁿ. Après 10 ans : P₁₀ = 50 000 × 1,03¹⁰ ≈ 67 196 habitants.

Quand la population aura-t-elle doublé ? On cherche le plus petit n tel que 1,03ⁿ ≥ 2. À la calculatrice : 1,03²³ ≈ 1,974 et 1,03²⁴ ≈ 2,033. Il faut donc 24 ans. Cette méthode par essais successifs (ou avec le tableau de valeurs de la calculatrice) suffit en série L.

## Méthode : reconnaître le type de suite

- « augmente de 500 chaque année » : on ajoute, suite arithmétique de raison 500.
- « augmente de 5 % chaque année » : on multiplie, suite géométrique de raison 1,05.
- « diminue de 10 % par mois » : suite géométrique de raison 0,9.

## Points clés

Un pourcentage se transforme toujours en coefficient multiplicateur. Ajouter : arithmétique. Multiplier : géométrique.

## Exercices pratiques

1. Un téléphone coûte 80 000 FCFA. Il subit une baisse de 15 %. Quel est son nouveau prix ?

2. Le prix du litre d''huile passe de 1 200 FCFA à 1 500 FCFA. Calculer le taux d''évolution.

3. Un prix augmente trois fois de suite de 10 %. Quel est le pourcentage global d''augmentation ?

4. Awa est embauchée avec un salaire mensuel de 150 000 FCFA la première année. Chaque année, son salaire mensuel augmente de 5 000 FCFA. Quel sera son salaire mensuel la 10e année ? Quelle somme totale aura-t-elle perçue en 10 ans ?

5. Une ferme avicole produit 1 000 œufs le premier mois, puis sa production augmente de 10 % chaque mois. Combien d''œufs produit-elle le 6e mois ? Combien en tout sur les 6 premiers mois ?

6. Un capital de 300 000 FCFA est placé à intérêts composés à 4 % par an. Quel est le capital après 5 ans ?

7. Le chiffre d''affaires d''une boutique augmente de 20 % la première année puis de 5 % la deuxième. Quel est le taux d''évolution global ? Quel taux annuel constant aurait donné le même résultat ?

## Corrigé

1. 80 000 × 0,85 = 68 000 FCFA.

2. t = (1 500 − 1 200)/1 200 × 100 = 300/1 200 × 100 = 25 %.

3. 1,1³ = 1,331 : augmentation globale de 33,1 %.

4. Suite arithmétique : u₁ = 150 000, r = 5 000. u₁₀ = 150 000 + 9 × 5 000 = 195 000 FCFA par mois. Total des salaires mensuels sur 10 ans : 10 × (150 000 + 195 000)/2 = 1 725 000 FCFA ; comme chaque année compte 12 mois, la somme totale perçue est 12 × 1 725 000 = 20 700 000 FCFA.

5. Suite géométrique : u₁ = 1 000, q = 1,1. u₆ = 1 000 × 1,1⁵ ≈ 1 611 œufs (1 610,51). Total : 1 000 × (1 − 1,1⁶)/(1 − 1,1) ≈ 7 716 œufs (7 715,61).

6. 300 000 × 1,04⁵ ≈ 364 996 FCFA.

7. Coefficient global : 1,2 × 1,05 = 1,26, soit + 26 %. Taux annuel constant : on cherche q tel que q² = 1,26, donc q = √1,26 ≈ 1,1225, soit environ 12,25 % par an (et non 12,5 %, la moyenne des deux taux).', 'texte', 60, false, 30
from public.courses c where c.slug = 'bac-mathematiques-l'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Suites et pourcentages : intérêts et croissance de population');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Statistiques, probabilités et logique', '## Objectifs de la leçon

- Calculer et interpréter les indicateurs statistiques d''une série.
- Calculer des probabilités simples, avec des tableaux et des arbres.
- Utiliser les connecteurs logiques, les tables de vérité et les quantificateurs.
- Raisonner correctement : implication, réciproque, contraposée, contre-exemple.

## Fiche 1 : statistiques à une variable

- Moyenne : x̄ = (somme des valeurs)/(effectif total) ; avec un tableau d''effectifs, x̄ = (somme des nᵢxᵢ)/N.
- Médiane : on range les valeurs dans l''ordre croissant ; c''est la valeur du milieu (effectif impair) ou la moyenne des deux valeurs du milieu (effectif pair). Au moins la moitié des valeurs lui sont inférieures ou égales.
- Quartiles : Q₁ est la plus petite valeur de la série telle qu''au moins 25 % des valeurs lui soient inférieures ou égales ; Q₃ de même avec 75 %. On calcule le rang N/4 (ou 3N/4) et on l''arrondit à l''entier supérieur.
- Étendue : plus grande valeur − plus petite valeur. Écart interquartile : Q₃ − Q₁.
- Variance : V = moyenne des carrés des écarts à la moyenne ; écart-type σ = √V. Plus σ est grand, plus les valeurs sont dispersées.

## Fiche 2 : probabilités

- Une expérience aléatoire a des issues ; un événement est un ensemble d''issues.
- Si les issues sont équiprobables : P(A) = nombre d''issues favorables / nombre d''issues possibles.
- 0 ≤ P(A) ≤ 1 ; P(Ā) = 1 − P(A) ; P(A ou B) = P(A) + P(B) − P(A et B).
- Outils : tableau à double entrée (deux dés), arbre (épreuves successives), diagramme de Venn (ensembles qui se chevauchent).

## Fiche 3 : logique

- Une proposition est une phrase qui est soit vraie, soit fausse.
- Négation « non P » : vraie quand P est fausse.
- « P et Q » est vraie seulement si P et Q sont vraies toutes les deux. « P ou Q » est vraie si au moins l''une des deux est vraie.
- « P ⇒ Q » (si P alors Q) est fausse seulement quand P est vraie et Q fausse.
- Réciproque de P ⇒ Q : Q ⇒ P (pas toujours vraie). Contraposée : non Q ⇒ non P (toujours équivalente à l''implication de départ).
- Lois de De Morgan : non(P et Q) = (non P) ou (non Q) ; non(P ou Q) = (non P) et (non Q).
- Quantificateurs : la négation de « tous les… sont… » est « au moins un… n''est pas… » ; la négation de « il existe… » est « aucun… » (ou « pour tout…, non… »).
- Pour montrer qu''une affirmation générale est fausse, un seul contre-exemple suffit.

## Exemple guidé : implication et contraposée

P : « il pleut » ; Q : « le sol de la cour est mouillé ». L''implication « s''il pleut, alors le sol est mouillé » est raisonnable. La réciproque « si le sol est mouillé, alors il pleut » est fausse : quelqu''un a pu laver la cour. La contraposée « si le sol n''est pas mouillé, alors il ne pleut pas » dit exactement la même chose que l''implication.

## Méthode : construire une table de vérité

On écrit toutes les combinaisons de vérité (V ou F) de P et Q, soit 4 lignes, puis on remplit colonne par colonne en appliquant les règles des connecteurs.

## Points clés

En statistiques, range d''abord les valeurs. En probabilités, compte toutes les issues possibles avant de compter les favorables. En logique, ne confonds jamais une implication avec sa réciproque.

## Exercices pratiques

1. Voici les notes de 10 élèves d''une classe de Terminale L à Saint-Louis : 8 ; 10 ; 12 ; 12 ; 14 ; 9 ; 15 ; 11 ; 13 ; 6. Calculer la moyenne, la médiane, Q₁, Q₃, l''étendue, la variance et l''écart-type.

2. On a interrogé 20 élèves sur leur nombre de frères et sœurs : 0 (2 élèves), 1 (5 élèves), 2 (8 élèves), 3 (4 élèves), 4 (1 élève). Calculer la moyenne, la médiane et le mode.

3. On lance deux dés équilibrés et on fait la somme. Calculer la probabilité d''obtenir 7, puis celle d''obtenir une somme supérieure ou égale à 10.

4. Dans une classe de 40 élèves, 25 jouent au football, 15 au basket et 8 aux deux. On choisit un élève au hasard. Probabilité qu''il pratique au moins un des deux sports ? aucun ?

5. Construire la table de vérité de P ⇒ Q et de (non Q) ⇒ (non P). Que constate-t-on ?

6. Écrire la négation de : a) « Tous les élèves de la classe ont la moyenne. » b) « Il existe un élève qui parle wolof et anglais. »

7. « Si un nombre entier est divisible par 6, alors il est divisible par 3. » Cette implication est-elle vraie ? Énoncer sa réciproque et sa contraposée, et dire si elles sont vraies.

## Corrigé

1. Série rangée : 6 ; 8 ; 9 ; 10 ; 11 ; 12 ; 12 ; 13 ; 14 ; 15. Somme 110, moyenne 11. Médiane : (11 + 12)/2 = 11,5. Q₁ : rang 10/4 = 2,5 arrondi à 3, Q₁ = 9. Q₃ : rang 7,5 arrondi à 8, Q₃ = 13. Étendue : 15 − 6 = 9. Écarts à la moyenne : −5, −3, −2, −1, 0, 1, 1, 2, 3, 4 ; carrés : 25, 9, 4, 1, 0, 1, 1, 4, 9, 16, somme 70. V = 70/10 = 7 et σ = √7 ≈ 2,65.

2. Moyenne : (0 × 2 + 1 × 5 + 2 × 8 + 3 × 4 + 4 × 1)/20 = 37/20 = 1,85. Effectifs cumulés : 2, 7, 15, 19, 20. Les 10e et 11e valeurs valent 2 : médiane 2. Mode : 2 (effectif le plus grand).

3. 36 issues équiprobables. Somme 7 : (1;6), (2;5), (3;4), (4;3), (5;2), (6;1), soit 6 issues : P = 6/36 = 1/6. Somme ≥ 10 : (4;6), (6;4), (5;5), (5;6), (6;5), (6;6), soit 6 issues : P = 1/6.

4. Au moins un sport : 25 + 15 − 8 = 32 élèves, P = 32/40 = 0,8. Aucun : 40 − 32 = 8 élèves, P = 8/40 = 0,2.

5. Lignes (P ; Q) : (V ; V), (V ; F), (F ; V), (F ; F). P ⇒ Q : V, F, V, V. (non Q) ⇒ (non P) : V, F, V, V. Les deux colonnes sont identiques : une implication et sa contraposée sont équivalentes.

6. a) « Au moins un élève de la classe n''a pas la moyenne. » b) « Aucun élève ne parle à la fois wolof et anglais », autrement dit « pour chaque élève, il ne parle pas wolof ou il ne parle pas anglais ».

7. Vraie : si n = 6k, alors n = 3 × (2k). Réciproque : « si un entier est divisible par 3, il est divisible par 6 » : fausse, contre-exemple 9. Contraposée : « si un entier n''est pas divisible par 3, il n''est pas divisible par 6 » : vraie, comme l''implication.', 'texte', 60, false, 40
from public.courses c where c.slug = 'bac-mathematiques-l'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Statistiques, probabilités et logique');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen : sujet d''entraînement corrigé', '## Présentation

Voici un sujet d''entraînement complet, sur le modèle des épreuves de mathématiques des séries L. Ce n''est pas un sujet officiel ; la répartition des points est indicative, non officielle. Traite-le seul, en temps limité, avec ta calculatrice, puis compare avec le corrigé.

## Exercice 1 : suites et pourcentages (6 points)

En 2025, un village A compte 2 000 habitants. On suppose que sa population augmente de 4 % par an. Un village voisin B compte 2 500 habitants en 2025 et gagne 100 habitants par an. On note uₙ et vₙ les populations de A et de B en l''année 2025 + n.

1. Calculer u₁ et v₁.

2. Quelle est la nature de chaque suite ? Exprimer uₙ et vₙ en fonction de n.

3. Calculer la population de A en 2030 (arrondie à l''unité).

4. À partir de quelle année la population de A dépassera-t-elle 3 000 habitants ?

5. À l''aide de la calculatrice, déterminer à partir de quelle année A sera plus peuplé que B.

## Exercice 2 : statistiques et probabilités (6 points)

Un club de lecture de Ziguinchor a relevé le nombre de livres lus pendant les vacances par ses 25 membres :

- 1 livre : 3 membres
- 2 livres : 6 membres
- 3 livres : 8 membres
- 4 livres : 5 membres
- 5 livres : 3 membres

1. Calculer le nombre moyen de livres lus.

2. Déterminer la médiane et le mode.

3. Calculer la variance et l''écart-type (arrondi à 0,01).

4. On choisit un membre au hasard. Quelle est la probabilité qu''il ait lu au moins 4 livres ? au plus 2 livres ?

5. On considère l''affirmation : « Tous les membres ont lu au moins 2 livres. » Est-elle vraie ? Écrire sa négation.

## Problème : un atelier de couture (8 points)

Un atelier de Pikine fabrique et vend x boubous par mois, avec 0 ≤ x ≤ 60. Chaque boubou est vendu 50 000 FCFA. Le coût de production mensuel, en milliers de FCFA, est C(x) = 0,5x² + 10x + 600.

1. Exprimer la recette R(x) en milliers de FCFA.

2. Montrer que le bénéfice est B(x) = −0,5x² + 40x − 600.

3. Calculer B''(x), étudier son signe et dresser le tableau de variations de B sur [0 ; 60].

4. Pour quelle production le bénéfice est-il maximal ? Quel est ce bénéfice en FCFA ?

5. Résoudre B(x) = 0 et en déduire les productions pour lesquelles l''atelier est rentable.

## Corrigé de l''exercice 1

1. u₁ = 2 000 × 1,04 = 2 080 habitants ; v₁ = 2 500 + 100 = 2 600 habitants.

2. (uₙ) est géométrique de raison 1,04 et de premier terme u₀ = 2 000 : uₙ = 2 000 × 1,04ⁿ. (vₙ) est arithmétique de raison 100 et de premier terme v₀ = 2 500 : vₙ = 2 500 + 100n.

3. 2030 correspond à n = 5 : u₅ = 2 000 × 1,04⁵ ≈ 2 433 habitants.

4. u₁₀ ≈ 2 960 et u₁₁ ≈ 3 079. La population dépasse 3 000 habitants pour n = 11, donc en 2036.

5. À la calculatrice : u₂₁ ≈ 4 558 et v₂₁ = 4 600 ; u₂₂ ≈ 4 740 et v₂₂ = 4 700. A devient plus peuplé que B pour n = 22, soit en 2047. Une croissance en pourcentage finit toujours par dépasser une croissance d''un nombre fixe.

## Corrigé de l''exercice 2

1. Total des livres : 1 × 3 + 2 × 6 + 3 × 8 + 4 × 5 + 5 × 3 = 3 + 12 + 24 + 20 + 15 = 74. Moyenne : 74/25 = 2,96 livres.

2. Effectifs cumulés : 3, 9, 17, 22, 25. La médiane est la 13e valeur : elle vaut 3. Mode : 3 livres (effectif 8).

3. Moyenne des carrés : (1 × 3 + 4 × 6 + 9 × 8 + 16 × 5 + 25 × 3)/25 = (3 + 24 + 72 + 80 + 75)/25 = 254/25 = 10,16. V = 10,16 − 2,96² = 10,16 − 8,7616 = 1,3984. σ = √1,3984 ≈ 1,18.

4. Au moins 4 livres : 5 + 3 = 8 membres, P = 8/25 = 0,32. Au plus 2 livres : 3 + 6 = 9 membres, P = 9/25 = 0,36.

5. Fausse : 3 membres n''ont lu qu''un livre (contre-exemple). Négation : « Au moins un membre a lu moins de 2 livres. »

## Corrigé du problème

1. R(x) = 50x (en milliers de FCFA).

2. B(x) = R(x) − C(x) = 50x − 0,5x² − 10x − 600 = −0,5x² + 40x − 600.

3. B''(x) = −x + 40. B''(x) > 0 pour x < 40 et B''(x) < 0 pour x > 40. B est croissante sur [0 ; 40] et décroissante sur [40 ; 60]. Valeurs : B(0) = −600 ; B(40) = −800 + 1 600 − 600 = 200 ; B(60) = −1 800 + 2 400 − 600 = 0.

4. Le bénéfice est maximal pour 40 boubous ; il vaut 200 milliers de FCFA, soit 200 000 FCFA.

5. −0,5x² + 40x − 600 = 0 ⇔ x² − 80x + 1 200 = 0 (en multipliant par −2). Δ = 6 400 − 4 800 = 1 600, √Δ = 40. Solutions : (80 − 40)/2 = 20 et (80 + 40)/2 = 60. Le coefficient de x² étant négatif, B(x) > 0 entre les racines : l''atelier est rentable pour une production strictement comprise entre 20 et 60 boubous.

## Conseils

- Dans l''exercice 1, présente un petit tableau de valeurs de la calculatrice : c''est une justification acceptée.
- Dans l''exercice 2, le tableau de calcul (valeurs, effectifs, produits, carrés) évite les oublis.
- Dans le problème, écris toujours « en milliers de FCFA » puis convertis à la fin.
- Garde 10 minutes pour relire et vérifier les unités.

## Exercices pratiques

Pour compléter l''entraînement, voici cinq questions courtes de difficulté croissante.

1. Un pagne coûte 60 000 FCFA. Son prix augmente de 15 %. Quel est le nouveau prix ?

2. (uₙ) est une suite géométrique de premier terme u₀ = 3 et de raison 2. Calculer u₄.

3. Donner la médiane de la série : 5 ; 8 ; 2 ; 9 ; 4 ; 7.

4. Une urne contient 3 boules rouges et 7 boules blanches. On tire une boule au hasard. Probabilité qu''elle soit rouge ? blanche ?

5. Écrire la contraposée de : « Si un élève travaille régulièrement, alors il progresse. »

## Corrigé

1. 60 000 × 1,15 = 69 000 FCFA.

2. u₄ = 3 × 2⁴ = 3 × 16 = 48.

3. Série rangée : 2 ; 4 ; 5 ; 7 ; 8 ; 9. Six valeurs : médiane = (5 + 7)/2 = 6.

4. P(rouge) = 3/10 = 0,3 ; P(blanche) = 1 − 0,3 = 0,7.

5. « Si un élève ne progresse pas, alors il ne travaille pas régulièrement. »', 'texte', 75, false, 50
from public.courses c where c.slug = 'bac-mathematiques-l'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen : sujet d''entraînement corrigé');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : révision intensive de veille du Bac', '## Fiche du cours vidéo

- Durée : 1h30.
- Thème : séance de révision intensive de veille du Bac en mathématiques, série L.
- Objectifs : revoir les méthodes indispensables, corriger des exercices types en commentant la rédaction, apprendre à gérer son temps, se tester avec un quiz et une évaluation finale.
- Matériel : tableau ou diaporama, calculatrice, brouillon, fiches de révision.
- Prérequis : leçons 1 à 5 de ce cours.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

« Bonsoir à toutes et à tous. Je sais que, pour beaucoup d''entre vous, les mathématiques ne sont pas la matière préférée. Ce soir, mon objectif est simple : que vous entriez demain dans la salle avec des méthodes sûres pour aller chercher des points. Nous allons revoir les pourcentages et les suites, les fonctions, les statistiques, les probabilités et la logique. Gardez votre calculatrice et une feuille de brouillon. Quand je dis “pause”, arrêtez la vidéo et cherchez seuls. »

Visuel : le plan de la séance en sept étapes.

## 05:00 – 18:00 · Rappels : pourcentages et suites

« Règle d''or : un pourcentage devient un coefficient multiplicateur. Augmenter de 8 %, c''est multiplier par 1,08. Diminuer de 8 %, c''est multiplier par 0,92. Deux évolutions successives ? On multiplie les coefficients. »

« Exemple : le prix du kilo de poisson augmente de 20 % pendant la saison creuse puis baisse de 20 %. Coefficient global : 1,2 × 0,8 = 0,96. Le prix final est inférieur de 4 % au prix de départ. C''est l''erreur classique du Bac : beaucoup d''élèves répondent “le prix revient au départ”. »

« Les suites maintenant. On ajoute toujours le même nombre : suite arithmétique, uₙ = u₀ + nr. On multiplie toujours par le même nombre : suite géométrique, uₙ = u₀ × qⁿ. Intérêts simples : arithmétique. Intérêts composés et croissance en pourcentage : géométrique. »

Visuel : un tableau à deux colonnes « arithmétique / géométrique » avec la relation de récurrence, la formule explicite et la somme.

Question à poser : « Une population augmente de 2 % par an. Quelle est la raison de la suite ? » Réponse : 1,02.

## 18:00 – 32:00 · Correction commentée : un exercice de suites

Visuel : l''énoncé. « Fatou ouvre un compte épargne avec 100 000 FCFA, placé à intérêts composés à 5 % par an. Combien aura-t-elle après 4 ans ? Après combien d''années aura-t-elle au moins 150 000 FCFA ? »

« Étape 1 : je reconnais une suite géométrique de raison 1,05 et de premier terme C₀ = 100 000. J''écris : Cₙ = 100 000 × 1,05ⁿ. Étape 2 : C₄ = 100 000 × 1,05⁴. À la calculatrice, 1,05⁴ ≈ 1,2155, donc C₄ ≈ 121 551 FCFA. Étape 3 : je cherche le plus petit n tel que Cₙ ≥ 150 000, c''est-à-dire 1,05ⁿ ≥ 1,5. J''essaie : 1,05⁸ ≈ 1,477, pas encore ; 1,05⁹ ≈ 1,551, c''est bon. Il faut 9 ans. »

« Regardez la rédaction : j''ai écrit la formule, le calcul, le résultat arrondi et une phrase de conclusion. C''est ce que le correcteur veut voir. Et si on me demandait la même chose avec des intérêts simples ? Chaque année, 5 000 FCFA d''intérêts. Après 4 ans : 120 000 FCFA. Moins que les 121 551 FCFA des intérêts composés. »

## 32:00 – 45:00 · Rappels et exercice : fonctions et bénéfice

« Pour une fonction du second degré ax² + bx + c, retenez trois choses : le sommet en x = −b/(2a), le discriminant Δ = b² − 4ac pour les racines, et le signe : du signe de a à l''extérieur des racines. »

« Exemple : un vendeur de jus de bouye estime son bénéfice journalier à B(x) = −x² + 60x − 500 en centaines de FCFA, pour x litres vendus. Dérivée : B''(x) = −2x + 60, nulle pour x = 30. Bénéfice maximal : B(30) = −900 + 1 800 − 500 = 400 centaines, soit 40 000 FCFA. Racines : Δ = 3 600 − 2 000 = 1 600, √Δ = 40 ; x = (−60 + 40)/(−2) = 10 et x = (−60 − 40)/(−2) = 50. Le vendeur gagne de l''argent entre 10 et 50 litres. »

Visuel : la parabole tournée vers le bas avec son sommet (30 ; 400) et les racines 10 et 50.

## 45:00 – 55:00 · Pause quiz interactif

« Pause ! Cinq questions, une minute chacune. »

- Q1 : une hausse de 30 % correspond à quel coefficient multiplicateur ?
- Q2 : u₀ = 5 et uₙ₊₁ = uₙ + 3 : que vaut u₁₀ ?
- Q3 : médiane de la série 4 ; 9 ; 2 ; 7 ?
- Q4 : on tire une carte au hasard parmi 4 cartes numérotées 1, 2, 3, 4 : probabilité d''obtenir un nombre pair ?
- Q5 : négation de « tous les candidats sont présents » ?

« Correction. Q1 : 1,3. Q2 : 5 + 10 × 3 = 35. Q3 : série rangée 2 ; 4 ; 7 ; 9, médiane (4 + 7)/2 = 5,5. Q4 : 2/4 = 1/2. Q5 : “au moins un candidat est absent”. Quatre ou cinq bonnes réponses : bravo. Sinon, relisez la fiche correspondante ce soir. »

## 55:00 – 1:07:00 · Correction commentée : statistiques

« Une série de notes : 7 ; 9 ; 10 ; 10 ; 12 ; 14. Moyenne : 62/6 ≈ 10,33. Médiane : effectif pair, on prend la moyenne des 3e et 4e valeurs : (10 + 10)/2 = 10. Écart-type : la calculatrice en mode statistique vous le donne, mais sachez la méthode : moyenne des carrés des écarts à la moyenne, puis racine carrée. »

« Interprétation, c''est là que vous, littéraires, êtes forts : “la moyenne et la médiane sont proches, les notes sont assez regroupées autour de 10”. Une phrase claire rapporte des points. »

« Passons aux probabilités, qui accompagnent souvent les statistiques. Dans un lycée, une classe de 30 élèves compte 18 filles et 12 garçons ; 10 filles et 5 garçons font partie du club de théâtre. Je fais un tableau à double entrée : en ligne, filles et garçons ; en colonne, théâtre et pas théâtre. On choisit un élève au hasard. Probabilité qu''il soit au club : 15/30 = 1/2. Probabilité que ce soit une fille du club : 10/30 = 1/3. Probabilité que ce soit une fille ou un membre du club : 18 + 15 − 10 = 23 élèves, donc 23/30. Remarquez que je n''ai pas compté deux fois les 10 filles du club : c''est la formule P(A ou B) = P(A) + P(B) − P(A et B). »

Visuel : le tableau à double entrée complété, avec les totaux en ligne et en colonne (18, 12, 15, 15, 30).

« Dernier conseil sur ce thème : écrivez toujours la fraction avant la valeur décimale, et simplifiez-la. Un correcteur qui lit 23/30 ≈ 0,77 voit immédiatement que vous avez compris. »

## 1:07:00 – 1:15:00 · Logique : les pièges

« Piège numéro un : confondre une implication et sa réciproque. “Si un élève est en Terminale L, il étudie la philosophie” : vrai. Réciproque : “s''il étudie la philosophie, il est en Terminale L” : faux, les élèves de S en font aussi. Piège numéro deux : la négation de “et”. Non(P et Q), c''est non P ou non Q. Piège numéro trois : pour démontrer qu''une phrase générale est fausse, un seul contre-exemple suffit. »

## 1:15:00 – 1:22:00 · Gestion du temps

« Demain : lecture complète du sujet pendant dix minutes. Commencez par l''exercice que vous maîtrisez, souvent les pourcentages ou les statistiques. Ne restez jamais bloqués plus de dix minutes sur une question. Écrivez chaque calcul, même simple. Gardez dix minutes pour relire les unités et les conclusions. Et ce soir, couchez-vous tôt. »

## 1:22:00 – 1:30:00 · Synthèse et évaluation finale

« Dernière étape : cinq questions pour vérifier que tout est en place. »

- Question 1 : un prix de 40 000 FCFA baisse de 25 %. Nouveau prix ?
- Question 2 : u₀ = 1 000 et q = 1,1. Calculer u₂.
- Question 3 : racines de x² − 5x + 6 = 0.
- Question 4 : moyenne de 8 ; 12 ; 13 ; 15.
- Question 5 : contraposée de « s''il pleut, le match est annulé ».

Réponses :

- Réponse 1 : 40 000 × 0,75 = 30 000 FCFA.
- Réponse 2 : 1 000 × 1,1² = 1 210.
- Réponse 3 : Δ = 25 − 24 = 1 ; x = 2 et x = 3.
- Réponse 4 : 48/4 = 12.
- Réponse 5 : « si le match n''est pas annulé, alors il ne pleut pas ».

« Merci de votre attention. Vous avez des méthodes, vous savez rédiger : faites-vous confiance. Bon courage pour le Bac ! »', 'video', 90, false, 60
from public.courses c where c.slug = 'bac-mathematiques-l'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : révision intensive de veille du Bac');

-- Cours : Physique-Chimie séries S : réussir l'épreuve du Bac
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'bac-physique-chimie', (select id from public.levels where name = 'Terminale'), null, 'Physique-Chimie (séries S)', 'Physique-Chimie séries S : réussir l''épreuve du Bac', 'Ce cours de préparation au Baccalauréat s''adresse aux élèves de Terminale des séries scientifiques (S) du Sénégal et d''Afrique francophone. Il révise la mécanique (cinématique, lois de Newton, mouvements dans les champs, énergie), les oscillations et les ondes, l''électricité (circuits RC, RL et LC) et la chimie (acides et bases, dosages, cinétique, alcools, acides carboxyliques et esters), avec des fiches de cours, des exercices corrigés aux calculs vérifiés et un sujet d''entraînement complet. Prérequis : le programme de Première S et les bases du calcul littéral, des dérivées et des logarithmes décimaux.', true, 203
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comprendre l''épreuve et méthode de travail', '## À qui s''adresse ce cours

Ce cours vise les candidats au Baccalauréat des séries scientifiques (S). Il reprend les notions vues depuis la Seconde, sous l''angle de la révision, en insistant sur le programme de Terminale. Selon ta série exacte, certains chapitres peuvent être plus ou moins approfondis : vérifie la liste avec ton professeur.

## Objectifs de la leçon

- Connaître la forme habituelle d''un sujet de Physique-Chimie au Bac S.
- Adopter une méthode de résolution rigoureuse.
- Maîtriser les unités, les conversions et les chiffres significatifs.
- Organiser ses révisions sur 10 semaines.

## Comment se présente l''épreuve

Le sujet comporte en général plusieurs exercices indépendants, à la fois en chimie et en physique. En chimie, on retrouve souvent la chimie organique (alcools, acides carboxyliques, esters), les réactions acide-base et les dosages, la cinétique chimique. En physique, la mécanique (lois de Newton, mouvements dans les champs de pesanteur, électrique ou magnétique, satellites), les oscillations et les circuits électriques (RC, RL, LC), et parfois les ondes. La durée, le coefficient et le barème officiel sont fixés par les textes officiels en vigueur. Les points indiqués dans nos sujets d''entraînement sont indicatifs, non officiels.

## La méthode de résolution en six étapes

- Lire l''énoncé, relever les données avec leurs unités et faire un schéma.
- Préciser le système étudié et le référentiel (en mécanique), ou écrire l''équation de la réaction (en chimie).
- Faire le bilan : forces, quantités de matière, grandeurs électriques.
- Écrire la loi ou le théorème utilisé (deuxième loi de Newton, théorème de l''énergie cinétique, loi d''additivité des tensions, relation à l''équivalence…).
- Établir l''expression littérale, puis seulement remplacer par les valeurs numériques.
- Donner le résultat avec l''unité et un nombre raisonnable de chiffres significatifs, puis vérifier sa vraisemblance.

## Unités et conversions : le carré d''as

- Toujours travailler en unités du Système international : mètre, kilogramme, seconde, ampère, kelvin, mole.
- Préfixes : m (milli) = 10⁻³ ; µ (micro) = 10⁻⁶ ; n (nano) = 10⁻⁹ ; k (kilo) = 10³ ; M (méga) = 10⁶.
- 1 L = 10⁻³ m³ ; 1 mL = 10⁻³ L ; 1 km/h = 1/3,6 m/s ; 1 h = 3 600 s.
- Concentration molaire en mol/L, concentration massique en g/L, et Cm = C × M.
- Une analyse dimensionnelle permet de vérifier une formule : RC et L/R s''expriment en secondes, √(LC) aussi.

## Chiffres significatifs

Le résultat ne doit pas être plus précis que la donnée la moins précise. Si les données sont fournies avec 2 ou 3 chiffres significatifs, donne le résultat avec 2 ou 3 chiffres significatifs. Exemple : 2,0 × 3,14 = 6,3 (et non 6,28).

## Les erreurs fréquentes

- Oublier de convertir les millilitres en litres ou les microfarads en farads.
- Projeter une force sur un axe en se trompant de sinus ou de cosinus.
- Écrire une équation chimique non équilibrée.
- Confondre équivalence et neutralité : à l''équivalence d''un dosage d''acide faible par une base forte, le pH est supérieur à 7.
- Donner un résultat sans unité, ce qui coûte des points.
- Utiliser la calculatrice en degrés au lieu de radians pour une fonction sinusoïdale du temps.

## Plan de révision sur 10 semaines

- Semaine 1 : cinématique et lois de Newton.
- Semaine 2 : mouvement dans le champ de pesanteur, plan incliné, frottements.
- Semaine 3 : mouvements dans les champs électrique et magnétique, satellites.
- Semaine 4 : travail, énergie cinétique, énergie mécanique.
- Semaine 5 : oscillateurs mécaniques et ondes.
- Semaine 6 : circuits RC, RL et LC.
- Semaine 7 : acides et bases, pH, dosages.
- Semaine 8 : cinétique chimique ; alcools, acides carboxyliques, esters.
- Semaine 9 : deux sujets complets en temps limité.
- Semaine 10 : relecture des fiches de formules, reprise des erreurs, repos la veille.

Prépare une fiche de formules par chapitre, avec pour chaque formule les unités de chaque grandeur. Relis-les dans le car rapide ou en attendant le début des cours : la répétition fait la mémoire.

## Exercices pratiques

1. Convertir : 250 mL en L ; 470 µF en F ; 72 km/h en m/s ; 5,0 ms en s.

2. Vérifier par les unités que le produit RC est un temps (on rappelle q = C × u et u = R × i).

3. Donner le résultat avec le bon nombre de chiffres significatifs : m = 2,5 kg et a = 3,32 m/s², F = m × a.

4. Un élève écrit pour la masse d''un satellite « m = 1 200 ». Qu''est-ce qui manque ?

5. On dissout 5,85 g de chlorure de sodium (M = 58,5 g/mol) dans 500 mL d''eau. Calculer la concentration molaire.

6. Un élève trouve qu''une voiture roule à 300 m/s sur la route de Mbour. Que doit-il vérifier ?

## Corrigé

1. 250 mL = 0,250 L ; 470 µF = 4,70 × 10⁻⁴ F ; 72 km/h = 72/3,6 = 20 m/s ; 5,0 ms = 5,0 × 10⁻³ s.

2. R = u/i s''exprime en V/A ; C = q/u s''exprime en C/V. RC s''exprime donc en (V/A) × (C/V) = C/A. Or 1 A = 1 C/s, donc C/A = s. RC est bien un temps.

3. F = 2,5 × 3,32 = 8,30, à arrondir à 2 chiffres significatifs (comme m) : F = 8,3 N.

4. L''unité : il faut écrire m = 1 200 kg (ou 1,2 × 10³ kg).

5. n = 5,85/58,5 = 0,100 mol ; V = 0,500 L ; C = 0,100/0,500 = 0,200 mol/L.

6. 300 m/s = 1 080 km/h : c''est invraisemblable pour une voiture. Il doit vérifier ses conversions (sans doute une confusion entre km/h et m/s ou une erreur de puissance de 10).', 'texte', 45, true, 10
from public.courses c where c.slug = 'bac-physique-chimie'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comprendre l''épreuve et méthode de travail');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Mécanique : cinématique, lois de Newton, mouvements dans les champs et énergie', '## Objectifs de la leçon

- Décrire un mouvement : position, vitesse, accélération.
- Appliquer les lois de Newton à un solide.
- Étudier les mouvements dans les champs de pesanteur, électrique et magnétique, et le mouvement des satellites.
- Utiliser le théorème de l''énergie cinétique et la conservation de l''énergie mécanique.

## Fiche 1 : cinématique

- Le vecteur vitesse est la dérivée du vecteur position : v = dx/dt sur un axe. L''accélération est la dérivée de la vitesse : a = dv/dt.
- Mouvement rectiligne uniforme : a = 0, x = vt + x₀.
- Mouvement rectiligne uniformément varié : a constante, v = at + v₀, x = ½at² + v₀t + x₀, et v² − v₀² = 2a(x − x₀).
- Mouvement circulaire uniforme de rayon r : vitesse de valeur constante, accélération centripète a = v²/r, dirigée vers le centre.

## Fiche 2 : lois de Newton

- Première loi (principe d''inertie) : dans un référentiel galiléen, si la somme des forces est nulle, le centre d''inertie est au repos ou en mouvement rectiligne uniforme.
- Deuxième loi : somme des forces extérieures = m × a (vecteurs).
- Troisième loi : deux corps en interaction exercent l''un sur l''autre des forces opposées.
- Méthode : système, référentiel, bilan des forces, schéma, deuxième loi, projection sur des axes bien choisis.

## Fiche 3 : mouvements dans les champs uniformes

Champ de pesanteur (projectile lancé avec v₀ faisant un angle α avec l''horizontale, frottements négligés) : aₓ = 0 et a_y = −g. Donc x = v₀ cos α × t et y = −½gt² + v₀ sin α × t. Équation de la trajectoire : y = −g x²/(2v₀² cos²α) + x tan α : une parabole. Flèche (hauteur maximale) : v₀² sin²α/(2g). Portée sur un sol horizontal : v₀² sin(2α)/g.

Plan incliné d''angle α sans frottement : a = g sin α. Avec une force de frottement f opposée au mouvement en descente : a = g sin α − f/m.

Champ électrique uniforme : F = qE. Une particule accélérée sous une tension U part du repos et acquiert ½mv² = |q|U, d''où v = √(2|q|U/m). Entre deux plaques, une particule entrant avec v₀ perpendiculairement au champ suit une parabole : y = |q|E x²/(2mv₀²).

## Fiche 4 : champ magnétique et satellites

- Force de Lorentz : F = q v ∧ B, de valeur |q|vB quand v est perpendiculaire à B. Cette force ne travaille pas : la vitesse garde la même valeur. Le mouvement est circulaire uniforme de rayon R = mv/(|q|B).
- Satellite en orbite circulaire de rayon r = R_T + h autour de la Terre : la seule force est l''attraction gravitationnelle GMm/r². On obtient v = √(GM/r) et la période T = 2πr/v = 2π√(r³/(GM)). Troisième loi de Kepler : T²/r³ = 4π²/(GM), constante.
- Un satellite géostationnaire tourne dans le plan de l''équateur, dans le même sens que la Terre, avec une période égale à celle de la rotation propre de la Terre.

## Fiche 5 : énergie

- Énergie cinétique : Ec = ½mv². Énergie potentielle de pesanteur : Ep = mgz (z vers le haut).
- Théorème de l''énergie cinétique : ΔEc = somme des travaux des forces. Travail du poids : W = mg(z_départ − z_arrivée). Travail d''une force constante : W = F × d × cos θ.
- Énergie mécanique Em = Ec + Ep : elle se conserve en l''absence de frottements ; sinon, elle diminue du travail des frottements.

## Exemple guidé : la chute d''une mangue

Une mangue tombe d''une branche située à 5,0 m du sol, sans vitesse initiale (g = 10 m/s², frottements négligés). Conservation de l''énergie mécanique : mgh = ½mv², donc v = √(2gh) = √(2 × 10 × 5,0) = 10 m/s à l''arrivée au sol. Durée de chute : h = ½gt², donc t = √(2h/g) = √1,0 = 1,0 s.

## Exercices pratiques

On prendra g = 10 m/s² sauf indication contraire.

1. Un mobile se déplace sur un axe selon x(t) = 2t² − 4t + 1 (x en m, t en s). Donner v(t) et a(t). À quelle date la vitesse s''annule-t-elle ? Quelle est alors la position ?

2. Un colis de 2,0 kg glisse sur un plan incliné de 30° ; une force de frottement constante de 4,0 N s''oppose au mouvement. Calculer l''accélération, puis la vitesse et la distance parcourue après 2,0 s, s''il part du repos.

3. Un ballon est frappé avec une vitesse de 20 m/s faisant un angle de 30° avec l''horizontale. Calculer la durée du vol, la hauteur maximale et la portée.

4. Un pendule simple de longueur 1,0 m est lâché sans vitesse depuis un angle de 60° avec la verticale. Calculer sa vitesse au passage par la position d''équilibre.

5. Un électron (m = 9,11 × 10⁻³¹ kg, e = 1,6 × 10⁻¹⁹ C) part du repos et est accéléré sous une tension de 1 000 V. Calculer sa vitesse finale.

6. Un proton (m = 1,67 × 10⁻²⁷ kg, q = 1,6 × 10⁻¹⁹ C) entre avec une vitesse de 1,0 × 10⁶ m/s perpendiculairement à un champ magnétique uniforme de 0,10 T. Calculer le rayon de sa trajectoire.

7. Un satellite tourne à 800 km d''altitude. Données : G = 6,67 × 10⁻¹¹ SI, masse de la Terre M = 5,98 × 10²⁴ kg, rayon terrestre 6 400 km. Calculer sa vitesse et sa période.

## Corrigé

1. v(t) = dx/dt = 4t − 4 (m/s) ; a = 4 m/s². v = 0 pour t = 1 s ; x(1) = 2 − 4 + 1 = −1 m.

2. Deuxième loi projetée sur l''axe du plan, vers le bas (la réaction normale est perpendiculaire à l''axe) : ma = mg sin α − f. a = 10 × 0,5 − 4,0/2,0 = 5 − 2 = 3,0 m/s². Après 2,0 s : v = 3,0 × 2,0 = 6,0 m/s ; d = ½ × 3,0 × 2,0² = 6,0 m.

3. Durée du vol : y = 0 pour t = 2v₀ sin α/g = 2 × 20 × 0,5/10 = 2,0 s. Flèche : v₀² sin²α/(2g) = 400 × 0,25/20 = 5,0 m. Portée : v₀² sin(2α)/g = 400 × sin 60°/10 ≈ 34,6 m.

4. Hauteur de chute : h = l(1 − cos 60°) = 0,50 m. Conservation de l''énergie mécanique (la tension du fil ne travaille pas) : v = √(2gh) = √10 ≈ 3,2 m/s.

5. ½mv² = eU, donc v = √(2eU/m) = √(2 × 1,6 × 10⁻¹⁹ × 1 000/9,11 × 10⁻³¹) ≈ 1,9 × 10⁷ m/s.

6. R = mv/(qB) = (1,67 × 10⁻²⁷ × 1,0 × 10⁶)/(1,6 × 10⁻¹⁹ × 0,10) ≈ 0,10 m, soit environ 10 cm.

7. r = 6 400 + 800 = 7 200 km = 7,2 × 10⁶ m. GM ≈ 3,99 × 10¹⁴ SI. v = √(GM/r) ≈ 7,4 × 10³ m/s. T = 2πr/v ≈ 6,1 × 10³ s, soit environ 101 minutes.', 'texte', 75, false, 20
from public.courses c where c.slug = 'bac-physique-chimie'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Mécanique : cinématique, lois de Newton, mouvements dans les champs et énergie');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Oscillations, ondes et électricité : circuits RC, RL et LC', '## Objectifs de la leçon

- Étudier les oscillateurs mécaniques libres.
- Décrire la propagation d''une onde et ses phénomènes caractéristiques.
- Étudier la charge et la décharge d''un condensateur (circuit RC), l''établissement du courant dans une bobine (circuit RL) et les oscillations électriques (circuit LC).

## Fiche 1 : oscillateurs mécaniques

- Pendule élastique horizontal, sans frottement : la deuxième loi de Newton donne m x'''' + k x = 0, soit x'''' + (k/m) x = 0. Solution : x(t) = Xm cos(ω₀t + φ), avec ω₀ = √(k/m) et la période propre T₀ = 2π√(m/k).
- Pendule simple de faibles oscillations : T₀ = 2π√(l/g).
- Énergie mécanique de l''oscillateur élastique : Em = ½mv² + ½kx² = ½kXm², constante sans frottement. Vitesse maximale : Vm = ω₀Xm.
- Avec des frottements, les oscillations sont amorties.

## Fiche 2 : ondes

- Une onde mécanique progressive est la propagation d''une perturbation dans un milieu matériel, sans transport de matière mais avec transport d''énergie.
- Célérité : v = d/Δt. Pour une onde périodique : λ = v × T = v/f.
- Deux points séparés de kλ (k entier) vibrent en phase ; séparés de (k + ½)λ, ils vibrent en opposition de phase.
- Diffraction par une fente de largeur a : écart angulaire θ = λ/a (θ en radians) ; elle est marquée quand a est du même ordre que λ.
- Interférences lumineuses (fentes de Young, distance a entre fentes, écran à la distance D) : interfrange i = λD/a.

## Fiche 3 : circuit RC

- Relations : q = C u_C ; i = dq/dt = C du_C/dt.
- Charge sous une tension E : RC du_C/dt + u_C = E. Solution : u_C = E(1 − e^(−t/τ)), avec τ = RC.
- Décharge : u_C = E e^(−t/τ).
- À t = τ, la charge atteint 63 % de E ; au bout de 5τ, on considère le condensateur chargé (plus de 99 %).
- Énergie stockée : E_C = ½ C u_C².
- Méthode graphique : τ est l''abscisse du point d''intersection de la tangente à l''origine avec l''asymptote u = E.

## Fiche 4 : circuit RL

- Tension aux bornes d''une bobine de résistance r : u_L = L di/dt + ri.
- Établissement du courant sous la tension E (résistance totale R) : L di/dt + R i = E. Solution : i = (E/R)(1 − e^(−t/τ)), avec τ = L/R.
- La bobine s''oppose aux variations du courant : le courant ne peut pas varier brusquement.
- Énergie stockée : E_L = ½ L i².

## Fiche 5 : circuit LC

- Un condensateur chargé se décharge dans une bobine idéale (résistance nulle) : q'''' + q/(LC) = 0.
- Solution : q(t) = Qm cos(ω₀t + φ), avec ω₀ = 1/√(LC), période propre T₀ = 2π√(LC), fréquence f₀ = 1/T₀.
- L''énergie totale ½q²/C + ½Li² est constante : elle passe sans cesse du condensateur à la bobine. Im = ω₀Qm.
- Dans un circuit réel (résistance non nulle), les oscillations sont amorties : régime pseudo-périodique.

## Analogies utiles

Les équations x'''' + (k/m) x = 0 et q'''' + q/(LC) = 0 ont la même forme : la masse m joue le rôle de L, la raideur k celui de 1/C, la position x celui de la charge q. Retenir l''une aide à retenir l''autre.

## Exemple guidé : flash d''appareil photo

Un condensateur de 100 µF est chargé sous 6,0 V à travers une résistance de 10 kΩ. τ = RC = 10 × 10³ × 100 × 10⁻⁶ = 1,0 s. Il faut environ 5τ = 5 s pour le charger. Énergie stockée : ½ × 100 × 10⁻⁶ × 6,0² = 1,8 × 10⁻³ J. Cette énergie est ensuite libérée très vite dans la lampe du flash, ce qui produit un éclair intense.

## Exercices pratiques

1. Un pendule élastique horizontal : m = 0,20 kg, k = 20 N/m, amplitude 5,0 cm. Calculer la période propre, l''énergie mécanique et la vitesse maximale.

2. Calculer la période d''un pendule simple de longueur 1,0 m (g = 9,8 m/s²).

3. Un haut-parleur émet un son de fréquence 680 Hz dans l''air (v = 340 m/s). Calculer la longueur d''onde. Deux points situés sur la même direction de propagation sont séparés de 1,25 m : comment vibrent-ils l''un par rapport à l''autre ?

4. Dans une expérience de fentes de Young, λ = 600 nm, a = 0,50 mm, D = 1,5 m. Calculer l''interfrange.

5. Reprendre l''exemple guidé (R = 10 kΩ, C = 100 µF, E = 6,0 V). Calculer u_C à t = 2,0 s.

6. Une bobine d''inductance 0,50 H est associée à une résistance totale de 50 Ω sous une tension de 10 V. Calculer τ, l''intensité en régime permanent et l''énergie alors stockée dans la bobine.

7. Un circuit LC est formé d''une bobine idéale de 0,10 H et d''un condensateur de 10 µF. Calculer la période et la fréquence propres.

## Corrigé

1. T₀ = 2π√(0,20/20) = 2π × 0,10 ≈ 0,63 s. Em = ½ × 20 × 0,050² = 2,5 × 10⁻² J. ω₀ = √(20/0,20) = 10 rad/s et Vm = ω₀Xm = 10 × 0,050 = 0,50 m/s. Contrôle : ½ × 0,20 × 0,50² = 2,5 × 10⁻² J.

2. T₀ = 2π√(1,0/9,8) ≈ 2,0 s.

3. λ = v/f = 340/680 = 0,50 m. 1,25 m = 2,5λ = (2 + ½)λ : les deux points vibrent en opposition de phase.

4. i = λD/a = (600 × 10⁻⁹ × 1,5)/(0,50 × 10⁻³) = 1,8 × 10⁻³ m = 1,8 mm.

5. u_C = 6,0(1 − e⁻²) = 6,0 × 0,865 ≈ 5,2 V.

6. τ = L/R = 0,50/50 = 1,0 × 10⁻² s = 10 ms. I = E/R = 10/50 = 0,20 A. E_L = ½ × 0,50 × 0,20² = 1,0 × 10⁻² J.

7. LC = 0,10 × 10 × 10⁻⁶ = 1,0 × 10⁻⁶ s². T₀ = 2π√(LC) = 2π × 1,0 × 10⁻³ ≈ 6,3 × 10⁻³ s. f₀ = 1/T₀ ≈ 159 Hz.', 'texte', 70, false, 30
from public.courses c where c.slug = 'bac-physique-chimie'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Oscillations, ondes et électricité : circuits RC, RL et LC');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Chimie : acides-bases et dosages, cinétique, alcools, acides carboxyliques et esters', '## Objectifs de la leçon

- Calculer et interpréter un pH ; distinguer acides forts et acides faibles.
- Exploiter un dosage acide-base.
- Décrire l''évolution temporelle d''une réaction (cinétique).
- Reconnaître, nommer et faire réagir alcools, acides carboxyliques et esters.

## Fiche 1 : acides, bases et pH

- pH = −log[H₃O⁺] et [H₃O⁺] = 10^(−pH), concentrations en mol/L. À 25 °C, Ke = [H₃O⁺][OH⁻] = 1,0 × 10⁻¹⁴, donc pH = 14 + log[OH⁻].
- Acide fort de concentration C (réaction totale avec l''eau) : pH = −log C. Base forte : pH = 14 + log C (pour des concentrations ni trop grandes ni trop petites).
- Acide faible : réaction limitée ; pH > −log C. Couple AH/A⁻ : Ka = [H₃O⁺][A⁻]/[AH] et pKa = −log Ka.
- pH = pKa + log([A⁻]/[AH]). Si pH < pKa, la forme AH prédomine ; si pH > pKa, la forme A⁻ prédomine.
- Solution tampon : pH = pKa quand [A⁻] = [AH] ; le pH varie peu par ajout modéré d''acide, de base ou par dilution.

## Fiche 2 : dosages acide-base

- À l''équivalence, les réactifs ont été mélangés dans les proportions stœchiométriques : Ca × Va = Cb × V_bE (pour un monoacide et une monobase).
- Méthode des tangentes pour repérer le point d''équivalence sur la courbe pH = f(Vb). On peut aussi utiliser un indicateur coloré dont la zone de virage contient le pH à l''équivalence.
- Acide fort dosé par une base forte : pH = 7 à l''équivalence (25 °C).
- Acide faible dosé par une base forte : pH > 7 à l''équivalence ; à la demi-équivalence (Vb = V_bE/2), pH = pKa.

## Fiche 3 : cinétique chimique

- Vitesse de formation d''un produit P : v = d[P]/dt ; vitesse de disparition d''un réactif R : v = −d[R]/dt. Graphiquement, c''est le coefficient directeur de la tangente à la courbe.
- La vitesse diminue en général au cours du temps, car les réactifs s''épuisent.
- Temps de demi-réaction t₁/₂ : durée au bout de laquelle l''avancement atteint la moitié de sa valeur finale.
- Facteurs cinétiques : température, concentrations des réactifs, catalyseur (qui accélère sans être consommé). C''est pourquoi on conserve le lait ou le poisson au froid.

## Fiche 4 : alcools

- Formule générale des alcools saturés : CₙH₂ₙ₊₁OH. Le carbone porteur du groupe OH (carbone fonctionnel) détermine la classe : primaire s''il est lié à un seul carbone (ou aucun), secondaire s''il est lié à deux, tertiaire s''il est lié à trois.
- Oxydation ménagée (par exemple par le dichromate de potassium en milieu acide) : alcool primaire → aldéhyde → acide carboxylique ; alcool secondaire → cétone ; alcool tertiaire : pas d''oxydation ménagée.
- Tests : la 2,4-DNPH donne un précipité jaune-orangé avec aldéhydes et cétones ; la liqueur de Fehling (précipité rouge brique) et le réactif de Tollens (miroir d''argent) ne réagissent qu''avec les aldéhydes.

## Fiche 5 : acides carboxyliques et esters

- Acide carboxylique : R–COOH. Exemple : acide éthanoïque CH₃–COOH (présent dans le vinaigre).
- Ester : R–COO–R''. Nom : « alcanoate d''alkyle ». Exemple : CH₃–COO–CH₂–CH₃, éthanoate d''éthyle.
- Estérification : acide + alcool ⇌ ester + eau. Réaction lente, limitée, quasi athermique. Avec un mélange équimolaire d''acide et d''alcool primaire, le rendement est d''environ 67 % ; la constante d''équilibre vaut environ 4.
- L''hydrolyse de l''ester est la réaction inverse. On améliore le rendement en mettant un réactif en excès ou en éliminant un produit ; on accélère la réaction en chauffant ou avec un catalyseur (ions H₃O⁺), sans changer l''équilibre.
- Avec un anhydride d''acide à la place de l''acide, l''estérification est rapide et totale.
- Saponification : ester + ion hydroxyde → ion carboxylate + alcool. Réaction lente mais totale. Avec un corps gras (triester du glycérol) et la soude, on obtient du savon, comme dans les savonneries artisanales.

## Exemple guidé : dosage d''un vinaigre

On dose 10,0 mL d''un vinaigre dilué par une solution de soude à 0,10 mol/L. L''équivalence est obtenue pour 12,0 mL. Ca = Cb × V_bE/Va = 0,10 × 12,0/10,0 = 0,12 mol/L. Le pH à la demi-équivalence (6,0 mL versés) donne le pKa du couple acide éthanoïque/ion éthanoate, voisin de 4,8.

## Exercices pratiques

Masses molaires : C = 12 g/mol ; H = 1 g/mol ; O = 16 g/mol.

1. Calculer le pH d''une solution d''acide chlorhydrique à 5,0 × 10⁻³ mol/L, puis celui d''une solution d''hydroxyde de sodium à 2,0 × 10⁻² mol/L.

2. On dose 20,0 mL d''une solution d''acide par de la soude à 0,10 mol/L ; V_bE = 15,0 mL. Calculer la concentration de l''acide.

3. Une solution d''acide de concentration 1,0 × 10⁻² mol/L a un pH de 3,4. L''acide est-il fort ou faible ? Justifier.

4. Écrire les formules semi-développées et donner la classe des quatre alcools de formule C₄H₁₀O. Indiquer le produit de leur oxydation ménagée (oxydant en défaut).

5. Un acide carboxylique saturé contient 36,4 % d''oxygène en masse. Trouver sa formule brute.

6. On mélange 1,0 mol d''acide éthanoïque et 1,0 mol d''éthanol. À l''équilibre, il s''est formé 0,67 mol d''ester. Écrire l''équation, nommer l''ester, calculer la constante d''équilibre et la masse d''ester obtenue.

7. Lors d''une réaction, la concentration d''un réactif vaut 0,080 mol/L à t = 0 ; 0,040 mol/L à 10 min ; 0,020 mol/L à 20 min ; 0,010 mol/L à 30 min (la réaction est totale). Donner le temps de demi-réaction et la vitesse moyenne de disparition entre 0 et 10 min.

## Corrigé

1. Acide fort : pH = −log(5,0 × 10⁻³) ≈ 2,3. Base forte : pH = 14 + log(2,0 × 10⁻²) ≈ 14 − 1,7 = 12,3.

2. Ca = Cb × V_bE/Va = 0,10 × 15,0/20,0 = 7,5 × 10⁻² mol/L.

3. Si l''acide était fort, on aurait pH = −log(1,0 × 10⁻²) = 2,0. Or pH = 3,4 > 2,0 : [H₃O⁺] ≈ 4 × 10⁻⁴ mol/L est bien inférieur à C. L''acide est faible.

4. CH₃–CH₂–CH₂–CH₂OH, butan-1-ol, primaire → butanal (puis acide butanoïque si l''oxydant est en excès). CH₃–CH(OH)–CH₂–CH₃, butan-2-ol, secondaire → butanone. (CH₃)₂CH–CH₂OH, 2-méthylpropan-1-ol, primaire → 2-méthylpropanal. (CH₃)₃C–OH, 2-méthylpropan-2-ol, tertiaire → pas d''oxydation ménagée.

5. Formule CₙH₂ₙO₂, M = 14n + 32. 32/M = 0,364 donne M ≈ 88 g/mol, donc 14n = 56 et n = 4 : C₄H₈O₂ (acide butanoïque ou acide 2-méthylpropanoïque).

6. CH₃COOH + CH₃CH₂OH ⇌ CH₃COOCH₂CH₃ + H₂O ; l''ester est l''éthanoate d''éthyle. À l''équilibre : 0,67 mol d''ester et d''eau ; 0,33 mol d''acide et d''alcool. K = (0,67 × 0,67)/(0,33 × 0,33) ≈ 4,1, voisin de 4. M(C₄H₈O₂) = 48 + 8 + 32 = 88 g/mol ; m = 0,67 × 88 ≈ 59 g.

7. La concentration finale est nulle ; la moitié de la transformation (0,040 mol/L) est atteinte à t₁/₂ = 10 min. Vitesse moyenne : (0,080 − 0,040)/10 = 4,0 × 10⁻³ mol/(L·min).', 'texte', 70, false, 40
from public.courses c where c.slug = 'bac-physique-chimie'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Chimie : acides-bases et dosages, cinétique, alcools, acides carboxyliques et esters');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen : sujet d''entraînement corrigé', '## Présentation

Voici un sujet d''entraînement complet, conçu sur le modèle des épreuves de Physique-Chimie du Bac S. Ce n''est pas un sujet officiel ; la répartition des points est indicative, non officielle. Traite-le en temps limité avec ta calculatrice, puis compare avec le corrigé.

Données : g = 10 m/s² ; C = 12 g/mol ; H = 1 g/mol ; O = 16 g/mol.

## Exercice 1 : chimie organique (5 points)

Un ester E, utilisé comme arôme, a pour formule CₙH₂ₙO₂ et contient 54,5 % de carbone en masse.

1. Montrer que n = 4.

2. L''hydrolyse de E donne un acide A et un alcool B. L''oxydation ménagée de B donne un composé qui réagit avec la liqueur de Fehling et qui possède deux atomes de carbone. Identifier B, puis A, puis E.

3. Écrire l''équation de la saponification de E par la soude et préciser deux caractéristiques de cette réaction.

## Exercice 2 : dosage acide-base (5 points)

On dose 20,0 mL d''une solution d''un acide AH par une solution d''hydroxyde de sodium à 2,0 × 10⁻² mol/L. Le pH initial vaut 3,1. L''équivalence est obtenue pour 12,0 mL de soude versée, et le pH vaut 4,2 après ajout de 6,0 mL.

1. Calculer la concentration Ca de l''acide.

2. Montrer que l''acide est faible.

3. Déterminer le pKa du couple AH/A⁻. Proposer une identification parmi : acide méthanoïque (pKa ≈ 3,8), acide benzoïque (pKa ≈ 4,2), acide éthanoïque (pKa ≈ 4,8).

4. Le pH à l''équivalence est-il inférieur, égal ou supérieur à 7 ? Justifier.

## Exercice 3 : mécanique (5 points)

Un solide de masse m = 0,50 kg, assimilé à un point, part sans vitesse du point A d''une piste. La partie AB est un plan incliné de longueur 10 m faisant un angle de 30° avec l''horizontale ; les frottements y sont négligeables. La partie BC est horizontale ; une force de frottement constante f s''y oppose au mouvement, et le solide s''arrête après 25 m.

1. Calculer le travail du poids entre A et B, puis la vitesse en B.

2. Calculer f.

3. Calculer la décélération sur BC et la durée du trajet sur BC.

## Exercice 4 : électricité (5 points)

Un condensateur de capacité C = 1 000 µF, initialement déchargé, est chargé sous une tension E = 12 V à travers une résistance R = 1,0 kΩ.

1. Établir l''équation différentielle vérifiée par u_C et vérifier que u_C = E(1 − e^(−t/τ)) en est solution, avec τ = RC.

2. Calculer τ, puis u_C à t = τ.

3. Calculer l''énergie stockée lorsque le condensateur est complètement chargé.

4. Le condensateur chargé est relié à une bobine idéale de 0,10 H. Calculer la période propre des oscillations et l''intensité maximale du courant.

## Corrigé de l''exercice 1

1. M = 14n + 32. 12n/(14n + 32) = 0,545 donne 12n = 7,63n + 17,44, soit 4,37n = 17,44 et n ≈ 4. Vérification : 48/88 ≈ 0,545. E : C₄H₈O₂.

2. Le produit d''oxydation de B réagit avec la liqueur de Fehling : c''est un aldéhyde à deux carbones, l''éthanal. B est donc un alcool primaire à deux carbones : l''éthanol CH₃CH₂OH. A a 4 − 2 = 2 carbones : acide éthanoïque CH₃COOH. E est l''éthanoate d''éthyle CH₃COOCH₂CH₃.

3. CH₃COOCH₂CH₃ + Na⁺ + HO⁻ → CH₃COO⁻ + Na⁺ + CH₃CH₂OH. La saponification est lente et totale.

## Corrigé de l''exercice 2

1. Ca = Cb × V_bE/Va = 2,0 × 10⁻² × 12,0/20,0 = 1,2 × 10⁻² mol/L.

2. Un acide fort de cette concentration aurait un pH de −log(1,2 × 10⁻²) ≈ 1,9. Or pH = 3,1 : [H₃O⁺] ≈ 7,9 × 10⁻⁴ mol/L, inférieur à Ca. L''acide est faible.

3. 6,0 mL = V_bE/2 : c''est la demi-équivalence, où pH = pKa. pKa = 4,2 : c''est l''acide benzoïque.

4. À l''équivalence, la solution contient la base faible A⁻ (ion benzoate) : le pH est supérieur à 7.

## Corrigé de l''exercice 3

1. W(P) = mgL sin α = 0,50 × 10 × 10 × 0,5 = 25 J. Théorème de l''énergie cinétique entre A et B (la réaction du plan, perpendiculaire au mouvement, ne travaille pas) : ½mv_B² = 25 J, donc v_B² = 100 et v_B = 10 m/s.

2. Sur BC, le poids et la réaction ne travaillent pas. 0 − ½mv_B² = −f × d, donc f = 25/25 = 1,0 N.

3. a = f/m = 1,0/0,50 = 2,0 m/s² (décélération). Durée : t = v_B/a = 10/2,0 = 5,0 s. Contrôle : d = v_B²/(2a) = 100/4 = 25 m.

## Corrigé de l''exercice 4

1. Loi d''additivité des tensions : E = Ri + u_C, avec i = C du_C/dt. Donc RC du_C/dt + u_C = E. Si u_C = E(1 − e^(−t/τ)), alors du_C/dt = (E/τ)e^(−t/τ) et RC du_C/dt + u_C = E e^(−t/τ) + E − E e^(−t/τ) = E, car RC = τ. De plus u_C(0) = 0.

2. τ = 1,0 × 10³ × 1 000 × 10⁻⁶ = 1,0 s. u_C(τ) = 12(1 − e⁻¹) ≈ 12 × 0,632 ≈ 7,6 V.

3. E_C = ½CE² = ½ × 1,0 × 10⁻³ × 144 = 7,2 × 10⁻² J.

4. T₀ = 2π√(LC) = 2π√(0,10 × 1,0 × 10⁻³) = 2π × 1,0 × 10⁻² ≈ 6,3 × 10⁻² s. Conservation de l''énergie : ½LIm² = ½CE², donc Im = E√(C/L) = 12 × √(1,0 × 10⁻²) = 12 × 0,10 = 1,2 A.

## Conseils

- En chimie organique, justifie chaque identification par un test ou une propriété.
- Dans un dosage, commence toujours par la relation à l''équivalence et convertis les volumes de façon cohérente.
- En mécanique, fais un schéma avec toutes les forces avant d''écrire le moindre calcul.
- En électricité, établis l''équation différentielle à partir de la loi des tensions : c''est la question la plus fréquente.

## Exercices pratiques

Pour compléter l''entraînement, voici cinq questions courtes de difficulté croissante.

1. Calculer le pH d''une solution d''hydroxyde de sodium à 1,0 × 10⁻³ mol/L.

2. On dose 10,0 mL d''un acide par une base forte à 0,10 mol/L ; V_bE = 8,0 mL. Calculer Ca.

3. Calculer la constante de temps d''un circuit RL avec L = 0,20 H et R = 100 Ω.

4. Calculer l''énergie cinétique d''un minibus de 1 000 kg roulant à 72 km/h.

5. Nommer l''ester CH₃–COO–CH₃ et indiquer l''acide et l''alcool qui permettent de le préparer.

## Corrigé

1. pH = 14 + log(1,0 × 10⁻³) = 14 − 3 = 11.

2. Ca = 0,10 × 8,0/10,0 = 8,0 × 10⁻² mol/L.

3. τ = L/R = 0,20/100 = 2,0 × 10⁻³ s = 2,0 ms.

4. v = 72/3,6 = 20 m/s ; Ec = ½ × 1 000 × 20² = 2,0 × 10⁵ J.

5. Éthanoate de méthyle, obtenu à partir de l''acide éthanoïque CH₃COOH et du méthanol CH₃OH.', 'texte', 90, false, 50
from public.courses c where c.slug = 'bac-physique-chimie'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen : sujet d''entraînement corrigé');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : révision intensive de veille du Bac', '## Fiche du cours vidéo

- Durée : 1h30.
- Thème : séance de révision intensive de veille du Bac en Physique-Chimie, séries S.
- Objectifs : revoir les lois et formules essentielles, corriger des exercices types en commentant la rédaction, travailler la gestion du temps, se tester avec un quiz et une évaluation finale.
- Matériel : tableau ou diaporama, calculatrice scientifique, fiches de formules, brouillon.
- Prérequis : leçons 1 à 5 de ce cours.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

« Bonsoir à toutes et à tous. Ce soir, pas de nouvelles notions : on consolide les réflexes qui rapportent des points. Nous allons parcourir la mécanique, l''électricité, puis la chimie, avec des exercices types corrigés pas à pas. Gardez votre calculatrice et vos fiches de formules. Quand je dis “pause”, arrêtez la vidéo et cherchez seuls. »

Visuel : le plan de la séance en huit étapes.

## 05:00 – 18:00 · Rappels de mécanique

« Toute la mécanique tient en une méthode : système, référentiel, bilan des forces, schéma, deuxième loi de Newton, projection. Ne sautez jamais le schéma. Sur un plan incliné d''angle α, la composante du poids le long du plan vaut mg sin α ; la composante perpendiculaire vaut mg cos α. »

« Pour les vitesses, pensez d''abord à l''énergie : le théorème de l''énergie cinétique évite souvent de passer par les équations horaires. Pour les champs : dans un champ électrique uniforme, trajectoire parabolique ; dans un champ magnétique uniforme, avec une vitesse perpendiculaire au champ, trajectoire circulaire de rayon R = mv/(|q|B). Pour un satellite : v = √(GM/r), avec r mesuré depuis le centre de la Terre, pas depuis le sol. »

Visuel : un schéma de plan incliné avec le poids décomposé, et un schéma de satellite avec r = R_T + h.

Question à poser : « Que vaut le travail de la force magnétique ? » Réponse : zéro, car elle est toujours perpendiculaire à la vitesse.

## 18:00 – 32:00 · Correction commentée : un projectile

Visuel : l''énoncé. « Un joueur de basket lance le ballon depuis une hauteur de 2,0 m avec une vitesse de 8,0 m/s faisant 45° avec l''horizontale. Établir les équations horaires et la hauteur maximale. On prend g = 10 m/s². »

« Système : le ballon. Référentiel terrestre supposé galiléen. Force : le poids seul, on néglige l''air. Deuxième loi : a = g, donc aₓ = 0 et a_y = −10. J''intègre : vₓ = 8,0 cos 45° ≈ 5,66 m/s, constante ; v_y = −10t + 8,0 sin 45° ≈ −10t + 5,66. Puis x = 5,66t et y = −5t² + 5,66t + 2,0. »

« Sommet : v_y = 0 pour t = 0,566 s. Hauteur : y = −5 × 0,566² + 5,66 × 0,566 + 2,0 ≈ −1,60 + 3,20 + 2,0 = 3,6 m. Vérification par la formule : v₀² sin²α/(2g) = 64 × 0,5/20 = 1,6 m au-dessus du point de lancement, donc 3,6 m au-dessus du sol. Les deux méthodes concordent : c''est rassurant. »

## 32:00 – 45:00 · Électricité : RC, RL, LC

« Trois circuits, trois constantes. RC : τ = RC. RL : τ = L/R. LC : T₀ = 2π√(LC). Tout part de la loi d''additivité des tensions. Pour RC en charge : E = Ri + u_C avec i = C du_C/dt. Pour RL : E = Ri + L di/dt. Pour LC : u_C + u_L = 0, donc q/C + L d²q/dt² = 0. »

« Exemple : R = 2,0 kΩ et C = 50 µF donnent τ = 2,0 × 10³ × 50 × 10⁻⁶ = 0,10 s. Une bobine de 20 mH avec 10 Ω donne τ = 2,0 ms. Un circuit LC avec L = 20 mH et C = 50 µF : LC = 1,0 × 10⁻⁶, T₀ = 2π × 10⁻³ ≈ 6,3 ms. Attention aux préfixes : c''est là que se perdent le plus de points. »

Visuel : les trois courbes types : charge de condensateur, établissement du courant, oscillations sinusoïdales.

## 45:00 – 55:00 · Pause quiz interactif

« Pause ! Cinq questions, une minute chacune. »

- Q1 : pH d''une solution d''acide chlorhydrique à 1,0 × 10⁻³ mol/L ?
- Q2 : quel alcool ne subit pas d''oxydation ménagée ?
- Q3 : unité de L/R ?
- Q4 : longueur d''onde d''une onde de célérité 2,0 m/s et de fréquence 4,0 Hz ?
- Q5 : à la demi-équivalence du dosage d''un acide faible par une base forte, que vaut le pH ?

« Correction. Q1 : pH = 3,0. Q2 : l''alcool tertiaire. Q3 : la seconde. Q4 : λ = v/f = 0,50 m. Q5 : pH = pKa. Quatre ou cinq bonnes réponses : bravo. Sinon, relisez la fiche correspondante ce soir. »

## 55:00 – 1:08:00 · Correction commentée : chimie

« Exercice type : on dose 10,0 mL d''une solution d''acide éthanoïque par la soude à 0,050 mol/L ; l''équivalence est à 16,0 mL. Ca = 0,050 × 16,0/10,0 = 0,080 mol/L. À la demi-équivalence, 8,0 mL versés, on lit pH = pKa ≈ 4,8. Le pH à l''équivalence est supérieur à 7, car on obtient l''ion éthanoate, une base faible : on choisit la phénolphtaléine, dont la zone de virage (environ 8,2 à 10) contient ce pH. »

« Côté organique : estérification lente, limitée, athermique ; saponification lente mais totale. Rendement de 67 % pour un mélange équimolaire avec un alcool primaire. Pour nommer un ester, je coupe au niveau de l''oxygène : la partie acide donne “alcanoate”, la partie alcool donne “d''alkyle”. CH₃–CH₂–COO–CH₃ : propanoate de méthyle. »

« Et la cinétique ? On lit graphiquement le temps de demi-réaction ; la vitesse est la pente de la tangente. Si l''énoncé demande l''effet de la température, répondez : plus la température est élevée, plus la réaction est rapide. C''est le principe de la conservation des aliments au réfrigérateur. »

## 1:08:00 – 1:15:00 · Ondes et oscillateurs : l''essentiel

« λ = vT = v/f. Diffraction : θ = λ/a. Interférences : i = λD/a. Pendule élastique : T₀ = 2π√(m/k). Pendule simple : T₀ = 2π√(l/g). Si l''énoncé donne une courbe x(t), lisez l''amplitude sur l''axe vertical et la période entre deux maxima successifs. Pour la phase à l''origine, utilisez x(0) et le signe de la vitesse initiale. »

« Petit exemple pour fixer les idées. Un solide de 0,50 kg accroché à un ressort de raideur 50 N/m est écarté de 4,0 cm puis lâché sans vitesse. ω₀ = √(k/m) = √(50/0,50) = 10 rad/s, donc T₀ = 2π/10 ≈ 0,63 s. Comme on lâche le solide sans vitesse à l''abscisse + 4,0 cm, x(0) = Xm : la phase à l''origine est nulle et x(t) = 4,0 × 10⁻² cos(10t), en mètres. Énergie mécanique : ½kXm² = ½ × 50 × (4,0 × 10⁻²)² = 4,0 × 10⁻² J. Vitesse maximale : ω₀Xm = 10 × 0,040 = 0,40 m/s. »

« Côté ondes, retenez l''image de la houle sur la plage de Yoff : l''eau monte et descend sur place, mais la perturbation avance vers le rivage. C''est exactement la définition d''une onde progressive : transport d''énergie sans transport de matière. »

Visuel : la courbe x(t) d''un oscillateur avec l''amplitude et la période repérées.

## 1:15:00 – 1:22:00 · Gestion du temps

« Demain : lecture complète du sujet pendant dix minutes, en notant toutes les données sur le brouillon. Commencez par l''exercice le plus sûr, souvent la chimie. Répartissez votre temps selon les points annoncés. Écrivez toujours l''expression littérale avant l''application numérique : si le calcul est faux, la formule juste rapporte quand même des points. Gardez dix minutes pour vérifier unités et chiffres significatifs. Et ce soir, dormez tôt. »

## 1:22:00 – 1:30:00 · Synthèse et évaluation finale

« Pour finir, cinq questions d''évaluation. Faites-les seuls, puis vérifiez. »

- Question 1 : une particule de charge q = 3,2 × 10⁻¹⁹ C, de masse 6,6 × 10⁻²⁷ kg, à 1,0 × 10⁵ m/s, entre perpendiculairement dans B = 0,10 T. Rayon ?
- Question 2 : vitesse d''un objet lâché sans vitesse après une chute de 20 m (frottements négligés) ?
- Question 3 : énergie stockée dans un condensateur de 100 µF chargé sous 10 V ?
- Question 4 : concentration d''une base dont 25,0 mL sont dosés par 10,0 mL d''acide fort à 0,10 mol/L ?
- Question 5 : produit de l''oxydation ménagée du propan-2-ol ?

Réponses :

- Réponse 1 : R = mv/(qB) = (6,6 × 10⁻²⁷ × 1,0 × 10⁵)/(3,2 × 10⁻¹⁹ × 0,10) ≈ 2,1 × 10⁻² m, soit environ 2 cm.
- Réponse 2 : v = √(2gh) = √(2 × 10 × 20) = 20 m/s.
- Réponse 3 : ½CU² = ½ × 100 × 10⁻⁶ × 10² = 5,0 × 10⁻³ J.
- Réponse 4 : Cb = 0,10 × 10,0/25,0 = 4,0 × 10⁻² mol/L.
- Réponse 5 : la propanone (alcool secondaire → cétone).

« Merci pour votre attention. Vous connaissez les lois, vous avez une méthode : soyez rigoureux sur les unités et faites-vous confiance. Bon courage pour le Bac ! »', 'video', 90, false, 60
from public.courses c where c.slug = 'bac-physique-chimie'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : révision intensive de veille du Bac');
