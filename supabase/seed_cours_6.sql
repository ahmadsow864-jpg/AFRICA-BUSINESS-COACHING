-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Cours (partie 6/6). À exécuter après seed.sql.

-- Cours : SVT Terminale S : réussir l'épreuve du Bac
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'bac-svt', (select id from public.levels where name = 'Terminale'), null, 'SVT (séries S)', 'SVT Terminale S : réussir l''épreuve du Bac', 'Cours d''examen destiné aux élèves de Terminale des séries scientifiques (S) qui préparent l''épreuve de SVT du Baccalauréat au Sénégal. Il révise l''essentiel du programme du lycée, en insistant sur la Terminale : reproduction et hérédité, immunologie, système nerveux et activité musculaire, régulations, géologie et évolution. Il entraîne aux méthodes de l''épreuve (exploitation de documents, schémas, résultats expérimentaux) avec des exercices de niveau Bac corrigés et un sujet type. Prérequis : le cours de SVT de Première S.', true, 204
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comprendre l''épreuve de SVT et méthode de travail', '## Objectifs de la leçon

- Savoir ce qu''on attend de vous à l''épreuve de SVT du Bac (séries S).
- Connaître les grands types d''exercices et la manière de les aborder.
- Maîtriser la méthode d''exploitation d''un document (texte, graphique, tableau, schéma, résultat expérimental).
- Éviter les erreurs qui font perdre le plus de points.
- Organiser vos révisions sur 10 semaines.

Ce cours s''adresse aux élèves de Terminale des séries scientifiques (S1, S2…). La durée de l''épreuve, son coefficient et son barème sont fixés par les textes officiels en vigueur : vérifiez-les chaque année auprès de votre établissement.

## Ce que l''épreuve évalue

L''épreuve de SVT ne vérifie pas seulement que vous avez appris votre cours. Elle évalue trois capacités complémentaires.

- Restituer des connaissances : définir un mot (méiose, anticorps, potentiel d''action), décrire un mécanisme, réaliser un schéma annoté.
- Raisonner à partir de documents : lire un graphique, comparer des résultats expérimentaux, formuler une hypothèse et la tester.
- Communiquer avec rigueur : un vocabulaire scientifique exact, des phrases courtes, des schémas propres avec titre et légende.

En pratique, un sujet combine en général une partie de restitution des connaissances (questions de cours, schémas, QCM) et une ou plusieurs parties de raisonnement fondées sur des documents, surtout sur les thèmes de Terminale ; les notions de Seconde et de Première servent de socle.

## Les types d''exercices

- La question de cours : courte, elle exige une réponse précise. Une définition doit contenir le mot clé et la caractéristique essentielle. Exemple : « La méiose est une succession de deux divisions cellulaires qui, à partir d''une cellule diploïde (2n), produit quatre cellules haploïdes (n). »
- Le schéma : il porte un titre, des légendes alignées et reliées par des traits à la règle, et il est assez grand (au moins un tiers de page).
- L''exploitation de documents : on vous demande d''analyser, d''interpréter, puis de conclure.
- Le problème de génétique : à partir de croisements ou d''un arbre généalogique, vous déterminez la dominance, la localisation des gènes et les génotypes, et vous justifiez avec un échiquier de croisement.
- La synthèse : un court texte organisé (introduction, développement, conclusion) qui relie plusieurs notions, par exemple « le rôle des lymphocytes dans la défense de l''organisme ».

## Méthode d''exploitation d''un document

Retenez la démarche en quatre temps : présenter, analyser, interpréter, conclure.

- Présenter : une phrase qui dit ce que montre le document (« Le document 2 présente l''évolution de la glycémie d''un sujet sain après un repas, en fonction du temps »).
- Analyser (« je constate ») : décrire les variations avec des valeurs chiffrées et des unités. Pour une courbe, découpez en phases : « de 0 à 30 min, la glycémie augmente de 0,9 g/L à 1,4 g/L ; de 30 à 120 min, elle diminue et revient à 0,9 g/L ».
- Interpréter (« j''explique ») : donner la cause biologique en mobilisant le cours (« l''augmentation s''explique par l''absorption intestinale du glucose ; le retour à la normale traduit l''action de l''insuline »).
- Conclure : une phrase qui répond exactement à la question posée.

Pour un résultat expérimental, comparez toujours l''expérience au témoin : un seul paramètre doit changer entre les deux. C''est cette comparaison qui permet de conclure sur le rôle d''un organe, d''une molécule ou d''une cellule.

## Les erreurs fréquentes

- Confondre analyse et interprétation : décrire une courbe en écrivant directement « grâce à l''insuline » sans avoir d''abord relevé les valeurs.
- Oublier les unités (mV, ms, g/L) ou recopier les valeurs fausses.
- Écrire « le gène A est dominant » sans justification. Il faut le démontrer : « la F1 est homogène et présente le phénotype [A] : l''allèle A domine l''allèle a ».
- Confondre gène et allèle, chromosome et chromatide, haploïde et diploïde.
- Ne pas répondre à la question posée : relisez la consigne avant de conclure.
- Mal gérer le temps et laisser la dernière partie inachevée.

## Gérer le temps le jour de l''épreuve

Lisez tout le sujet, répartissez le temps selon les points annoncés, commencez par la partie que vous maîtrisez le mieux et gardez dix minutes pour relire unités et conclusions.

## Plan de révision sur 10 semaines

- Semaine 1 : bases cellulaires (ADN, chromosome, mitose) et méthode d''exploitation de documents.
- Semaine 2 : méiose et fécondation, brassages génétiques, schémas à savoir refaire.
- Semaine 3 : génétique mendélienne (monohybridisme, dihybridisme, gènes liés, croisement-test).
- Semaine 4 : génétique humaine (arbres généalogiques, drépanocytose, hémophilie, daltonisme).
- Semaine 5 : immunologie (immunité innée et adaptative, lymphocytes, anticorps, VIH, vaccination).
- Semaine 6 : système nerveux (message nerveux, synapse, réflexe myotatique) et activité musculaire.
- Semaine 7 : régulation de la glycémie et régulations hormonales (reproduction).
- Semaine 8 : géologie et évolution (révisions de Seconde et Première), puis bilan des points faibles.
- Semaine 9 : deux sujets complets en temps limité, correction détaillée.
- Semaine 10 : fiches de synthèse, schémas, définitions ; repos et sommeil la veille.

Chaque semaine, alternez : relire une fiche, refaire un schéma de mémoire, traiter un exercice de documents.

## Points clés

- Le Bac de SVT évalue connaissances, raisonnement et communication.
- Toujours : présenter, analyser avec des valeurs, interpréter avec le cours, conclure.
- Un résultat expérimental se compare à un témoin.
- Un schéma a un titre et des légendes.
- Les durées, coefficients et barèmes sont ceux des textes officiels en vigueur.

## Exercices pratiques

Exercice 1. Définissez : gène, allèle, caryotype.

Exercice 2. Un élève écrit : « D''après le document, la glycémie augmente grâce au repas. » Expliquez pourquoi cette phrase mélange analyse et interprétation, puis réécrivez-la correctement.

Exercice 3. Le tableau suivant donne la glycémie d''un sujet à jeun puis après un repas riche en glucides (en g/L) : 0 min : 0,9 ; 30 min : 1,4 ; 60 min : 1,2 ; 90 min : 1,0 ; 120 min : 0,9. Analysez ces résultats en distinguant deux phases.

Exercice 4. On retire le pancréas d''un chien (expérience A) ; un autre chien subit la même anesthésie et la même incision sans ablation (expérience B). Quel est le rôle de l''expérience B ? Que permet-elle de conclure ?

Exercice 5. Vous disposez de 3 semaines avant l''examen et vous êtes faible en génétique et en immunologie. Proposez un programme de révision réaliste.

## Corrigé

Exercice 1. Un gène est une portion d''ADN, située à un endroit précis d''un chromosome (le locus), qui détermine un caractère héréditaire. Un allèle est une version d''un gène : par exemple l''allèle A (hémoglobine normale) et l''allèle S (hémoglobine S) du gène de la bêta-globine. Le caryotype est la représentation ordonnée des chromosomes d''une cellule, classés par paires selon leur taille et la position du centromère ; chez l''être humain, il compte 46 chromosomes (23 paires).

Exercice 2. « La glycémie augmente » est un constat (analyse) ; « grâce au repas » est une explication (interprétation) qui n''est pas justifiée par des valeurs. Correction : « Après le repas, la glycémie passe de 0,9 g/L à 1,4 g/L en 30 minutes. Cette augmentation s''explique par l''absorption intestinale du glucose issu de la digestion des glucides. »

Exercice 3. Phase 1 (0 à 30 min) : la glycémie augmente de 0,9 à 1,4 g/L, soit une hausse de 0,5 g/L. Phase 2 (30 à 120 min) : elle diminue progressivement (1,2 puis 1,0) et retrouve sa valeur initiale de 0,9 g/L à 120 min. Conclusion : chez ce sujet, la glycémie est régulée et revient à sa valeur de référence en deux heures environ.

Exercice 4. L''expérience B est le témoin : elle montre que les effets observés ne sont dus ni à l''anesthésie ni à l''opération. Si seul le chien A devient hyperglycémique, on peut conclure que le pancréas intervient dans la régulation de la glycémie (hypoglycémiante).

Exercice 5. Exemple : semaine 1, génétique (méiose, brassages, deux exercices de croisements et un arbre généalogique par jour) ; semaine 2, immunologie (fiches sur les lymphocytes, schéma de l''anticorps, deux exercices de documents) ; semaine 3, un sujet complet en temps limité tous les deux jours, correction, révision des fiches des autres chapitres. Chaque jour, 15 minutes de définitions.', 'texte', 50, true, 10
from public.courses c where c.slug = 'bac-svt'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comprendre l''épreuve de SVT et méthode de travail');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Reproduction et hérédité : méiose, génétique mendélienne et génétique humaine', '## Objectifs de la leçon

- Décrire la méiose et expliquer les brassages génétiques qu''elle produit.
- Résoudre un problème de monohybridisme et de dihybridisme (gènes indépendants ou liés).
- Analyser un arbre généalogique humain et calculer un risque génétique.

## Fiche 1 : méiose et fécondation

Une cellule diploïde (2n) possède des chromosomes par paires de chromosomes homologues ; chez l''être humain, 2n = 46. Un gamète est haploïde (n = 23). La méiose est la succession de deux divisions qui transforme une cellule mère diploïde en quatre cellules haploïdes. Elle est précédée d''une réplication de l''ADN (interphase), si bien que chaque chromosome est formé de deux chromatides.

- Première division (réductionnelle) : en prophase I, les homologues s''apparient (bivalents) et des crossing-over (enjambements) se produisent ; en métaphase I, les bivalents se placent de part et d''autre du plan équatorial ; en anaphase I, les homologues se séparent ; en télophase I, on obtient deux cellules à n chromosomes à deux chromatides.
- Seconde division (équationnelle) : elle ressemble à une mitose ; en anaphase II, les chromatides sœurs se séparent. On obtient quatre cellules à n chromosomes à une chromatide.

Deux brassages assurent la diversité des gamètes.

- Le brassage intrachromosomique : les crossing-over de la prophase I échangent des portions de chromatides entre homologues et créent de nouvelles combinaisons d''allèles sur un même chromosome.
- Le brassage interchromosomique : en anaphase I, chaque paire d''homologues se sépare indépendamment des autres. Pour n paires, il existe 2 puissance n combinaisons ; pour l''être humain, 2 puissance 23, soit plus de 8 millions de combinaisons, sans compter les crossing-over.

La fécondation rétablit la diploïdie. Méiose et fécondation assurent la stabilité du caryotype et l''unicité de chaque individu.

## Fiche 2 : génétique mendélienne

Vocabulaire : homozygote (AA ou aa), hétérozygote (Aa). Le génotype s''écrit entre parenthèses ou sous forme de fraction (A//a) ; le phénotype s''écrit entre crochets [A]. Un allèle est dominant s''il s''exprime chez l''hétérozygote ; l''autre est récessif. Si les deux s''expriment, on parle de codominance.

Méthode de résolution.

- Étape 1 : vérifier que les parents sont de lignée pure.
- Étape 2 : analyser la F1. Si elle est homogène, la première loi de Mendel (uniformité des hybrides) est vérifiée ; le phénotype de la F1 indique l''allèle dominant.
- Étape 3 : analyser la F2 ou le croisement-test et comparer les proportions observées aux proportions théoriques.
- Étape 4 : écrire les génotypes, les gamètes et l''échiquier de croisement.

Monohybridisme (un gène) : F1 Aa × Aa donne en F2 trois quarts de [A] et un quart de [a] (3/4 – 1/4). Le croisement-test (F1 × homozygote récessif aa) donne 1/2 [A] et 1/2 [a].

Dihybridisme (deux gènes) :

- Gènes indépendants (sur deux paires de chromosomes différentes) : la F1 AaBb produit quatre types de gamètes équiprobables (AB, Ab, aB, ab, chacun 1/4). La F2 donne 9/16 [AB], 3/16 [Ab], 3/16 [aB], 1/16 [ab]. Le croisement-test donne quatre phénotypes en proportions égales (1/4 chacun).
- Gènes liés (sur la même paire de chromosomes) : au croisement-test, on obtient deux phénotypes parentaux majoritaires et deux phénotypes recombinés minoritaires, dus aux crossing-over. Le pourcentage de recombinés donne la distance entre les gènes : 1 % de recombinés = 1 centimorgan (cM). Sans crossing-over (liaison totale), on n''obtient que les deux phénotypes parentaux.

## Fiche 3 : génétique humaine

Chez l''être humain, on étudie des arbres généalogiques (carré = homme, rond = femme, noirci = atteint).

- Allèle récessif : deux parents sains peuvent avoir un enfant atteint. Ils sont alors tous les deux hétérozygotes.
- Allèle dominant : tout atteint a au moins un parent atteint.
- Gène porté par le chromosome X (récessif) : beaucoup plus de garçons atteints ; un père atteint ne transmet pas la maladie à ses fils (il leur donne son Y).
- Gène autosomal : les deux sexes sont touchés de la même façon.

La drépanocytose est une maladie héréditaire fréquente en Afrique de l''Ouest. Elle est due à un allèle S du gène de la bêta-globine (chromosome 11), qui produit une hémoglobine anormale ; les globules rouges prennent une forme de faucille. Le sujet SS est malade, le sujet AS (porteur sain) est généralement sans symptômes, le sujet AA est sain. Au niveau du phénotype clinique, l''allèle S se comporte comme récessif. L''hémophilie A et le daltonisme sont des exemples de maladies liées à un allèle récessif porté par X.

Le conseil génétique permet aux futurs couples de connaître leur statut (électrophorèse de l''hémoglobine) et d''évaluer les risques.

## Points clés

- Méiose : 2n → n ; deux brassages (intra en prophase I, inter en anaphase I).
- F2 3/4 – 1/4 : un gène, dominance complète. F2 9/3/3/1 ou test-cross 1/1/1/1 : deux gènes indépendants.
- Test-cross avec deux classes majoritaires : gènes liés ; % de recombinés = distance en cM.
- Deux parents sains, enfant atteint : allèle récessif.

## Exercices pratiques

Exercice 1. Combien de types de gamètes différents (sans crossing-over) peut produire un organisme dont 2n = 8 ? Justifiez.

Exercice 2. On croise deux lignées pures de mil : grains à enveloppe colorée × grains à enveloppe blanche. La F1 est entièrement colorée ; la F2 compte 603 colorés et 197 blancs. Interprétez.

Exercice 3. Chez une plante, deux lignées pures [AB] et [ab] donnent une F1 [AB]. La F2 compte 320 individus. Calculez les effectifs théoriques attendus si les gènes sont indépendants.

Exercice 4. Le croisement-test de la F1 de l''exercice 3 donne : 410 [AB], 390 [ab], 90 [Ab], 110 [aB]. Les gènes sont-ils indépendants ? Calculez la distance entre les deux gènes.

Exercice 5. Awa et Moussa sont tous deux AS pour la drépanocytose. Quelle est la probabilité que leur enfant soit SS ? Leur premier enfant est sain : quelle est la probabilité qu''il soit porteur ?

Exercice 6. Une femme conductrice de l''hémophilie épouse un homme sain. Donnez les risques pour les garçons et pour les filles.

Exercice 7. Dans une famille, deux parents non atteints ont une fille atteinte d''une maladie génétique. Montrez que l''allèle est récessif et que le gène n''est pas porté par le chromosome X.

## Corrigé

Exercice 1. n = 4 paires d''homologues. Chaque paire se sépare indépendamment en anaphase I : 2 puissance 4 = 16 types de gamètes.

Exercice 2. Parents de lignée pure, F1 homogène : première loi de Mendel vérifiée ; la F1 est colorée, donc l''allèle « coloré » (C) domine l''allèle « blanc » (b). F2 : 603/800 ≈ 0,75 et 197/800 ≈ 0,25, soit 3/4 – 1/4 : un seul gène à deux allèles avec dominance complète. Génotypes : P (C//C) × (b//b) ; F1 (C//b) ; gamètes de F1 : 1/2 C et 1/2 b ; F2 : 1/4 C//C, 1/2 C//b, 1/4 b//b, d''où 3/4 [C] et 1/4 [b].

Exercice 3. Proportions 9/16, 3/16, 3/16, 1/16 : 320 × 9/16 = 180 [AB] ; 320 × 3/16 = 60 [Ab] ; 60 [aB] ; 320 × 1/16 = 20 [ab]. Total : 180 + 60 + 60 + 20 = 320.

Exercice 4. Total = 1000. Avec des gènes indépendants, on attendrait 250 de chaque classe. Ici, deux classes parentales sont majoritaires (410 + 390 = 800) et deux classes recombinées minoritaires (90 + 110 = 200) : les gènes sont liés. Les recombinés proviennent de crossing-over en prophase I chez la F1. Fréquence de recombinaison = 200/1000 = 20 %, soit une distance de 20 cM.

Exercice 5. Gamètes de chaque parent : 1/2 A, 1/2 S. Échiquier : 1/4 AA, 1/2 AS, 1/4 SS. Probabilité d''un enfant SS : 1/4. Si l''enfant est sain, il est AA ou AS ; parmi ces 3/4, AS représente 2/4 : probabilité = (2/4)/(3/4) = 2/3.

Exercice 6. Mère X(H)X(h), père X(H)Y. Garçons : X(H)Y ou X(h)Y, donc 1/2 hémophiles. Filles : X(H)X(H) ou X(H)X(h), donc aucune malade et 1/2 conductrices.

Exercice 7. Les parents sont sains et ont un enfant atteint : l''allèle responsable était présent mais masqué chez eux, il est donc récessif. Si le gène était sur X, la fille atteinte aurait reçu un X porteur de l''allèle de son père, qui serait alors atteint. Or le père est sain : le gène est donc autosomal.', 'texte', 60, false, 20
from public.courses c where c.slug = 'bac-svt'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Reproduction et hérédité : méiose, génétique mendélienne et génétique humaine');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Immunologie, système nerveux et activité musculaire', '## Objectifs de la leçon

- Distinguer l''immunité innée et l''immunité adaptative, à médiation humorale et cellulaire.
- Expliquer le mécanisme de l''infection par le VIH et le principe de la vaccination.
- Décrire la genèse et la propagation du message nerveux, le fonctionnement de la synapse et du réflexe myotatique.
- Expliquer la contraction musculaire et l''origine de l''énergie nécessaire.

## Fiche 1 : immunologie

Le système immunitaire distingue le soi (dont les marqueurs du CMH) et le non-soi (antigènes étrangers ou soi modifié).

L''immunité innée est immédiate et non spécifique. La réaction inflammatoire (rougeur, chaleur, gonflement, douleur) attire les phagocytes (granulocytes, macrophages). La phagocytose se déroule en étapes : adhésion, ingestion (formation d''une vésicule de phagocytose), digestion, rejet des déchets.

L''immunité adaptative est spécifique et plus lente lors du premier contact. Elle fait intervenir les lymphocytes, produits dans la moelle osseuse ; les lymphocytes T achèvent leur maturation dans le thymus.

- Sélection clonale : un antigène active uniquement les lymphocytes dont le récepteur lui est complémentaire.
- Les lymphocytes T4 (auxiliaires) reconnaissent l''antigène présenté par une cellule présentatrice, se multiplient et sécrètent des interleukines qui stimulent les autres lymphocytes : ils coordonnent la réponse.
- Réponse à médiation humorale : les lymphocytes B activés se multiplient et se différencient en plasmocytes, qui sécrètent des anticorps (immunoglobulines). Un anticorps a une forme en Y : quatre chaînes (deux lourdes, deux légères), deux sites de fixation de l''antigène dans la partie variable. Il forme avec l''antigène un complexe immun, neutralisé puis éliminé par phagocytose.
- Réponse à médiation cellulaire : les lymphocytes T8 se différencient en lymphocytes T cytotoxiques qui détruisent les cellules infectées reconnues (par exemple en libérant de la perforine).
- Mémoire : des lymphocytes mémoires persistent. Lors d''un second contact, la réponse est plus rapide, plus ample et plus durable. C''est le principe de la vaccination, qui introduit un antigène rendu inoffensif.

Le VIH, agent du sida, infecte principalement les lymphocytes T4. Le virus se fixe sur la molécule CD4, son ARN est transcrit en ADN par la transcriptase inverse, puis intégré au génome de la cellule. La diminution progressive des T4 affaiblit toutes les réponses adaptatives, d''où les maladies opportunistes (par exemple la tuberculose). La séropositivité est révélée par la présence d''anticorps anti-VIH dans le sang.

## Fiche 2 : système nerveux

Au repos, la membrane est polarisée : l''intérieur est négatif par rapport à l''extérieur ; le potentiel de repos est d''environ –70 mV. Cette différence est entretenue par une répartition inégale des ions (plus de K+ à l''intérieur, plus de Na+ à l''extérieur) maintenue par la pompe Na+/K+ qui consomme de l''ATP.

Une stimulation d''intensité supérieure ou égale au seuil déclenche un potentiel d''action : dépolarisation (entrée de Na+) jusqu''à environ +30 mV, repolarisation (sortie de K+), puis brève hyperpolarisation. Le potentiel d''action obéit à la loi du tout ou rien : son amplitude est constante. L''intensité de la stimulation est codée en fréquence de potentiels d''action. Le message est plus rapide dans une fibre myélinisée (conduction saltatoire) et de grand diamètre.

La synapse chimique transmet le message d''un neurone à un autre ou à un muscle (plaque motrice). L''arrivée des potentiels d''action provoque l''entrée de Ca2+ dans la terminaison, la libération par exocytose d''un neurotransmetteur (acétylcholine à la plaque motrice), sa fixation sur des récepteurs postsynaptiques et une modification du potentiel postsynaptique. Le neurotransmetteur est ensuite dégradé (acétylcholinestérase). Le message est codé en concentration de neurotransmetteur. Une synapse peut être excitatrice ou inhibitrice ; le neurone postsynaptique intègre l''ensemble des messages (sommation spatiale et temporelle).

Le réflexe myotatique est la contraction d''un muscle en réponse à son propre étirement (exemple : réflexe rotulien). Son arc réflexe comprend : récepteur (fuseau neuromusculaire), neurone sensitif (corps cellulaire dans le ganglion rachidien), centre nerveux (moelle épinière, une seule synapse avec le motoneurone : réflexe monosynaptique), neurone moteur, effecteur (le muscle étiré). Parallèlement, un interneurone inhibiteur provoque le relâchement du muscle antagoniste.

## Fiche 3 : activité musculaire

L''unité contractile est le sarcomère, limité par deux stries Z, qui contient des filaments fins d''actine et des filaments épais de myosine. Lors de la contraction, les filaments ne raccourcissent pas : ils glissent les uns par rapport aux autres ; le sarcomère et la bande claire I raccourcissent, la bande sombre A garde la même longueur.

- Le potentiel d''action musculaire provoque la libération d''ions Ca2+ par le réticulum sarcoplasmique.
- Le Ca2+ démasque les sites de fixation de la myosine sur l''actine.
- Les têtes de myosine se fixent, pivotent en hydrolysant l''ATP, se détachent puis recommencent.

L''ATP est régénéré par la phosphocréatine (très rapide), la fermentation lactique (rapide, sans dioxygène, 2 ATP par glucose) et la respiration cellulaire (plus lente, avec dioxygène, environ 36 à 38 ATP par glucose selon les manuels).

## Points clés

- Innée : rapide, non spécifique. Adaptative : spécifique, avec mémoire ; LT4 au centre.
- Humorale : LB → plasmocytes → anticorps. Cellulaire : LT8 → LT cytotoxiques.
- Potentiel d''action : tout ou rien ; codage en fréquence. Synapse : codage en concentration.
- Contraction : glissement actine-myosine, Ca2+ et ATP.

## Exercices pratiques

Exercice 1. Définissez : antigène et plasmocyte.

Exercice 2. On mesure la concentration d''anticorps contre un antigène après une première injection (jour 0) puis une seconde injection du même antigène (jour 30). Le pic est de 10 unités au jour 14 après la première injection et de 100 unités au jour 36. Analysez et interprétez.

Exercice 3. On stimule une fibre nerveuse avec des intensités croissantes : 0,2 V, 0,4 V, 0,6 V, 0,8 V. Aucun potentiel d''action n''apparaît pour 0,2 et 0,4 V ; pour 0,6 et 0,8 V, on enregistre un potentiel d''action de même amplitude (100 mV). Quelle propriété est mise en évidence ?

Exercice 4. Un potentiel d''action parcourt 6 cm entre deux électrodes en 1,2 ms. Calculez la vitesse de conduction en m/s. Cette fibre est-elle probablement myélinisée ?

Exercice 5. Le curare bloque les récepteurs de l''acétylcholine de la plaque motrice. Quelles conséquences sur la contraction musculaire ?

Exercice 6. Expliquez pourquoi un sujet infecté par le VIH depuis plusieurs années développe des maladies opportunistes.

Exercice 7. Sur un sarcomère, au repos : longueur 2,4 µm, bande A 1,6 µm. Après contraction : 2,0 µm. Quelle est la longueur de la bande A après contraction ? Justifiez.

## Corrigé

Exercice 1. Un antigène est une molécule reconnue comme étrangère par le système immunitaire et capable de déclencher une réponse immunitaire spécifique. Un plasmocyte est une cellule issue de la différenciation d''un lymphocyte B activé, spécialisée dans la sécrétion d''anticorps.

Exercice 2. Analyse : après le premier contact, la réponse est lente (pic au 14e jour) et faible (10 unités) ; après le second, elle est rapide (pic 6 jours après l''injection) et dix fois plus ample (100 unités). Interprétation : le premier contact a produit des lymphocytes B mémoires spécifiques ; lors du second contact, ils se différencient rapidement en plasmocytes nombreux. C''est la mémoire immunitaire, base de la vaccination et des rappels.

Exercice 3. Il existe une intensité seuil (comprise entre 0,4 et 0,6 V) : en dessous, pas de potentiel d''action ; au-dessus, l''amplitude est constante. C''est la loi du tout ou rien, propriété d''une fibre nerveuse isolée.

Exercice 4. 6 cm = 0,06 m ; 1,2 ms = 0,0012 s. v = 0,06/0,0012 = 50 m/s. Une telle vitesse est caractéristique d''une fibre myélinisée (les fibres amyéliniques conduisent en général à quelques m/s au plus).

Exercice 5. L''acétylcholine est libérée mais ne peut plus se fixer sur ses récepteurs : pas de potentiel d''action musculaire, pas de libération de Ca2+, pas de contraction. Le muscle reste relâché (paralysie). Cela montre que la transmission à la plaque motrice est chimique.

Exercice 6. Le VIH infecte et détruit les lymphocytes T4. Or les T4 activent par les interleukines les lymphocytes B et T8. Leur diminution affaiblit toute la réponse adaptative : des microbes habituellement contrôlés provoquent alors des maladies, dites opportunistes.

Exercice 7. La bande A correspond à la longueur des filaments de myosine, qui ne raccourcissent pas : elle reste de 1,6 µm. C''est la bande I qui diminue (le glissement des filaments d''actine réduit le sarcomère de 0,4 µm).', 'texte', 60, false, 30
from public.courses c where c.slug = 'bac-svt'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Immunologie, système nerveux et activité musculaire');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Régulations (glycémie, hormones), géologie et évolution', '## Objectifs de la leçon

- Expliquer la régulation de la glycémie et distinguer les deux grands types de diabète.
- Expliquer la régulation hormonale de la reproduction chez l''homme et chez la femme.
- Réviser les méthodes de datation et la tectonique des plaques.
- Mobiliser les arguments et les mécanismes de l''évolution.

## Fiche 1 : régulation de la glycémie

La glycémie est la concentration de glucose dans le sang. Chez un sujet sain à jeun, elle reste proche de 1 g/L (environ 0,8 à 1,1 g/L selon les références). Cette constance résulte d''un système de régulation avec un capteur, un centre intégrateur, des messagers et des effecteurs.

- Capteurs et centre : les cellules des îlots de Langerhans du pancréas détectent les variations de la glycémie.
- Hyperglycémie (après un repas) : les cellules bêta sécrètent l''insuline, hormone hypoglycémiante. Elle favorise l''entrée du glucose dans les cellules (muscles, tissu adipeux), son stockage sous forme de glycogène (glycogénogenèse) dans le foie et les muscles, et sa transformation en lipides.
- Hypoglycémie (jeûne, effort) : les cellules alpha sécrètent le glucagon, hormone hyperglycémiante. Il stimule l''hydrolyse du glycogène hépatique (glycogénolyse) et la libération de glucose par le foie. Seul le foie peut libérer du glucose dans le sang à partir de son glycogène.

Il s''agit d''une régulation par rétrocontrôle négatif : l''écart à la valeur de référence déclenche une réponse qui le corrige.

Le diabète est une hyperglycémie chronique (le diagnostic repose sur des seuils définis par les autorités de santé). Le diabète de type 1 (souvent chez le sujet jeune) est dû à la destruction auto-immune des cellules bêta : pas d''insuline, traitement par injections d''insuline. Le diabète de type 2 (souvent chez l''adulte, favorisé par la sédentarité et le surpoids) correspond surtout à une insulinorésistance : l''insuline est produite mais les cellules cibles y répondent mal ; traitement par hygiène de vie, médicaments, parfois insuline.

## Fiche 2 : régulations hormonales de la reproduction

Chez l''homme, les testicules produisent les spermatozoïdes (tubes séminifères) et la testostérone (cellules de Leydig). L''hypothalamus sécrète la GnRH de façon pulsatile ; elle stimule l''hypophyse antérieure qui sécrète LH et FSH. La LH stimule les cellules de Leydig (testostérone) ; la FSH agit sur les cellules de Sertoli et favorise la spermatogenèse. La testostérone exerce un rétrocontrôle négatif sur l''hypothalamus et l''hypophyse : son taux reste à peu près constant.

Chez la femme, le fonctionnement est cyclique (cycle d''environ 28 jours, variable selon les femmes).

- Phase folliculaire : sous l''effet de la FSH, un follicule se développe et sécrète des œstrogènes (œstradiol), qui épaississent l''endomètre.
- Ovulation (vers le 14e jour d''un cycle de 28 jours) : un taux élevé d''œstradiol exerce un rétrocontrôle positif sur le complexe hypothalamo-hypophysaire, d''où un pic de LH qui déclenche l''ovulation.
- Phase lutéale : le follicule rompu devient corps jaune et sécrète progestérone et œstrogènes, qui préparent l''endomètre à la nidation et exercent un rétrocontrôle négatif. Sans fécondation, le corps jaune régresse, les hormones chutent, l''endomètre se désagrège : ce sont les règles.

Les pilules contraceptives combinées apportent des hormones de synthèse qui exercent un rétrocontrôle négatif permanent : il n''y a pas de pic de LH, donc pas d''ovulation.

## Fiche 3 : géologie (révision de Seconde et Première)

La datation relative ordonne les événements grâce à des principes : superposition (une couche est plus récente que celle qu''elle recouvre, sauf renversement), recoupement (une faille ou un filon est plus récent que les couches qu''il recoupe), continuité (une même couche a le même âge sur toute son étendue), identité paléontologique (des couches contenant les mêmes fossiles stratigraphiques ont le même âge).

La datation absolue utilise la désintégration d''éléments radioactifs. Après chaque demi-vie (période T), la quantité d''isotope père est divisée par 2 : N = N0 × (1/2) puissance (t/T). Le carbone 14 (T ≈ 5730 ans) date des restes organiques récents (quelques dizaines de milliers d''années) ; d''autres couples (potassium-argon, rubidium-strontium) datent les roches anciennes.

La tectonique des plaques : la lithosphère est découpée en plaques rigides qui se déplacent sur l''asthénosphère. Aux dorsales océaniques, les plaques divergent et de la lithosphère océanique se forme (âge croissant en s''éloignant de la dorsale, anomalies magnétiques symétriques). Aux zones de subduction, une plaque océanique plonge sous une autre (séismes de plus en plus profonds, volcanisme explosif). La collision de deux continents forme des chaînes de montagnes. Au Sénégal, la presqu''île du Cap-Vert conserve des traces de volcanisme récent (les collines des Mamelles à Dakar), et le bassin sédimentaire sénégalais contient des ressources comme les phosphates.

## Fiche 4 : évolution

Les arguments de l''évolution : anatomie comparée (organes homologues, comme le membre antérieur des vertébrés), embryologie (ressemblances des embryons), paléontologie (fossiles et formes intermédiaires), biologie moléculaire (plus deux espèces sont apparentées, plus leurs séquences de protéines ou d''ADN se ressemblent). Les mécanismes : les mutations créent de nouveaux allèles ; la sélection naturelle favorise les allèles avantageux dans un milieu donné ; la dérive génétique modifie au hasard les fréquences alléliques, surtout dans les petites populations. Exemple africain classique : dans les régions où sévit le paludisme, les porteurs AS de la drépanocytose sont mieux protégés contre les formes graves, ce qui maintient l''allèle S à une fréquence élevée.

## Points clés

- Insuline : seule hormone hypoglycémiante ; glucagon : hyperglycémiant ; rétrocontrôle négatif.
- Pic de LH : rétrocontrôle positif de l''œstradiol.
- N = N0 × (1/2) puissance (t/T).
- Évolution : mutations + sélection naturelle + dérive.

## Exercices pratiques

Exercice 1. Définissez glycogénolyse et rétrocontrôle négatif.

Exercice 2. Chez un rat, l''ablation du pancréas provoque une hyperglycémie durable ; la greffe d''îlots de Langerhans sous la peau corrige le trouble. Que peut-on conclure ?

Exercice 3. Deux patients ont une glycémie élevée. Chez le patient A, l''insulinémie est très basse ; chez le patient B, elle est normale ou élevée. Identifiez le type de diabète de chacun.

Exercice 4. Chez un mâle castré, les taux de LH et FSH augmentent fortement. Expliquez.

Exercice 5. Un os retrouvé dans un site archéologique de la vallée du fleuve Sénégal contient 25 % du carbone 14 initial. Quel est son âge ?

Exercice 6. Une couche C est recoupée par une faille F ; une couche D, intacte, recouvre l''ensemble. Classez C, F et D de la plus ancienne à la plus récente.

Exercice 7. Expliquez pourquoi l''allèle S de la drépanocytose reste fréquent en Afrique de l''Ouest alors que les sujets SS sont gravement malades.

## Corrigé

Exercice 1. La glycogénolyse est l''hydrolyse du glycogène en glucose, notamment dans le foie, stimulée par le glucagon. Un rétrocontrôle négatif est un mécanisme dans lequel l''effet d''un système agit en retour pour réduire l''écart qui l''a déclenché, ce qui stabilise une grandeur.

Exercice 2. Le pancréas est indispensable à la régulation de la glycémie (rôle hypoglycémiant). Les îlots greffés, sans connexion nerveuse ni canal, corrigent le trouble : ils agissent par voie sanguine, donc par une hormone (l''insuline).

Exercice 3. A : défaut de production d''insuline, diabète de type 1. B : insuline présente mais inefficace, insulinorésistance, diabète de type 2.

Exercice 4. Sans testicules, il n''y a plus de testostérone, donc plus de rétrocontrôle négatif sur l''hypothalamus et l''hypophyse : la sécrétion de GnRH puis de LH et FSH augmente.

Exercice 5. 25 % = 1/4 = (1/2) au carré : deux demi-vies se sont écoulées. Âge ≈ 2 × 5730 = 11 460 ans.

Exercice 6. C est la plus ancienne (elle est recoupée par F) ; F est postérieure à C ; D recouvre l''ensemble sans être recoupée : elle est la plus récente. Ordre : C, F, D.

Exercice 7. Les sujets AS sont mieux protégés contre les formes graves du paludisme que les sujets AA. Dans les zones d''endémie palustre, ils survivent et se reproduisent davantage : la sélection naturelle favorise les hétérozygotes, ce qui maintient l''allèle S dans la population malgré l''élimination de nombreux sujets SS.', 'texte', 60, false, 40
from public.courses c where c.slug = 'bac-svt'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Régulations (glycémie, hormones), géologie et évolution');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen : entraînement complet corrigé', '## Présentation

Voici un sujet d''entraînement conçu sur le modèle des épreuves de SVT des séries S. Ce n''est pas un sujet officiel. La répartition des points est indicative et non officielle ; la durée et le barème réels sont ceux fixés par les textes officiels en vigueur. Traitez-le d''abord seul, en temps limité, sans document, puis comparez avec le corrigé.

Conseils avant de commencer : lisez tout le sujet ; soulignez les verbes de consigne (définir, analyser, interpréter, schématiser, expliquer) ; répartissez votre temps selon les points ; réservez dix minutes à la relecture.

## Exercices pratiques

Première partie : maîtrise des connaissances (indicatif : 5 points)

Exercice 1 (QCM). Pour chaque item, recopiez la ou les bonnes réponses.
- a) La méiose : (1) produit deux cellules diploïdes ; (2) comporte une seule réplication de l''ADN suivie de deux divisions ; (3) sépare les chromosomes homologues en anaphase I.
- b) Les anticorps sont sécrétés par : (1) les lymphocytes T8 ; (2) les plasmocytes ; (3) les macrophages.
- c) L''insuline : (1) est sécrétée par les cellules alpha ; (2) favorise la glycogénogenèse ; (3) est hypoglycémiante.
- d) À la plaque motrice, le message nerveux est transmis : (1) par l''acétylcholine ; (2) sous forme de potentiels d''action uniquement ; (3) dans un seul sens.

Exercice 2. Réalisez un schéma annoté d''une cellule en anaphase I de méiose (2n = 4), en montrant un crossing-over. Expliquez en quelques lignes comment ce schéma illustre les deux brassages génétiques.

Deuxième partie : exploitation de documents (indicatif : 15 points)

Exercice 3 (génétique). Chez la drosophile, on croise une femelle de lignée pure à corps gris et ailes longues avec un mâle de lignée pure à corps noir et ailes vestigiales. Toute la F1 a le corps gris et les ailes longues.
- Croisement 1 : femelle F1 × mâle noir à ailes vestigiales. Résultats : 415 gris-longues, 405 noir-vestigiales, 85 gris-vestigiales, 95 noir-longues.
- Croisement 2 : mâle F1 × femelle noir à ailes vestigiales. Résultats : 502 gris-longues, 498 noir-vestigiales.
Questions : a) Déterminez les allèles dominants. b) Les gènes sont-ils indépendants ? c) Interprétez les deux croisements (génotypes, gamètes, échiquiers) et expliquez leur différence. d) Calculez la distance entre les deux gènes.

Exercice 4 (immunologie). On utilise des souris d''une même lignée, irradiées (elles n''ont plus de lymphocytes). On leur injecte des cellules prélevées sur une souris saine, puis un antigène X. On recherche ensuite des anticorps anti-X.
- Lot 1 : lymphocytes B seuls → pas d''anticorps anti-X.
- Lot 2 : lymphocytes T4 seuls → pas d''anticorps anti-X.
- Lot 3 : lymphocytes B + lymphocytes T4 → anticorps anti-X présents.
- Lot 4 : lymphocytes B + T4, puis antigène Y → anticorps anti-Y, pas d''anticorps anti-X.
Analysez ces résultats et concluez sur les conditions de production des anticorps.

Exercice 5 (régulation). On mesure la glycémie (g/L) et l''insulinémie (unités arbitraires, u.a.) de deux sujets après absorption de 75 g de glucose à t = 0.
- Sujet A : glycémie 0,9 / 1,5 / 1,1 / 0,9 aux temps 0, 30, 60, 120 min ; insulinémie 10 / 60 / 35 / 12.
- Sujet B : glycémie 1,3 / 2,4 / 2,5 / 2,2 ; insulinémie 3 / 4 / 4 / 3.
Comparez les deux sujets et formulez une hypothèse sur l''état du sujet B.

Exercice 6 (génétique humaine). Dans une famille de Kaolack, Ibrahima et Fatou, tous deux sains, ont trois enfants : un garçon sain, une fille atteinte d''albinisme et un garçon sain. L''albinisme est dû à un allèle d''un gène autosomal. a) L''allèle est-il dominant ou récessif ? b) Donnez les génotypes des parents et de la fille. c) Quelle est la probabilité que le prochain enfant soit atteint ?

## Corrigé

Exercice 1. a) (2) et (3). b) (2). c) (2) et (3) ; elle est sécrétée par les cellules bêta. d) (1) et (3) ; à la synapse, le message est chimique, codé en concentration de neurotransmetteur.

Exercice 2. Le schéma montre une cellule avec deux paires d''homologues dont les chromosomes à deux chromatides migrent vers les pôles ; une chromatide de chaque chromosome d''une paire porte un segment échangé (couleurs différentes). Légendes : chromosome à deux chromatides, centromère, fuseau de division, pôle, portion échangée par crossing-over. Titre : « Anaphase I de méiose d''une cellule à 2n = 4 ». Explication : les segments échangés traduisent le brassage intrachromosomique, réalisé en prophase I ; la répartition au hasard des homologues de chaque paire vers l''un ou l''autre pôle traduit le brassage interchromosomique (ici 2 au carré = 4 combinaisons possibles).

Exercice 3. a) Parents de lignée pure, F1 homogène gris-longues : l''allèle gris (g+) domine noir (g) ; l''allèle long (vg+) domine vestigial (vg). b) Le croisement 1 est un croisement-test (le mâle double récessif ne donne que des gamètes g vg). Avec des gènes indépendants, on aurait quatre classes égales (environ 250 chacune). Or on a deux classes parentales majoritaires (415 + 405 = 820) et deux recombinées minoritaires (85 + 95 = 180) : les gènes sont liés. c) Génotype de la F1 : (g+ vg+ // g vg). Croisement 1 : la femelle F1 produit des gamètes parentaux (g+ vg+ et g vg) et, grâce à des crossing-over en prophase I, des gamètes recombinés (g+ vg et g vg+), moins nombreux. Chaque gamète rencontre un gamète g vg du mâle : le phénotype des descendants reflète directement le gamète de la femelle. Croisement 2 : seules les deux classes parentales apparaissent, à égalité : le mâle F1 ne produit que des gamètes parentaux. On en déduit que chez le mâle drosophile, il n''y a pas de crossing-over (liaison totale). d) Fréquence de recombinaison = 180/1000 = 18 %, soit une distance de 18 cM.

Exercice 4. Analyse : seul le lot 3 (B + T4) produit des anticorps anti-X ; B seuls ou T4 seuls ne suffisent pas. Le lot 4 produit des anticorps anti-Y et non anti-X. Interprétation : les plasmocytes, producteurs d''anticorps, sont issus des lymphocytes B, mais ceux-ci doivent être activés par des lymphocytes T4 (par les interleukines) ; la réponse est spécifique de l''antigène introduit (sélection clonale). Conclusion : la production d''anticorps nécessite la coopération entre LB et LT4 et la présence de l''antigène correspondant.

Exercice 5. Sujet A : glycémie à jeun normale (0,9 g/L), pic modéré à 1,5 g/L à 30 min, retour à 0,9 g/L à 120 min ; l''insulinémie augmente fortement (de 10 à 60 u.a.) en même temps que la glycémie, puis diminue. Sujet B : glycémie à jeun élevée (1,3 g/L), forte hausse jusqu''à 2,5 g/L, et toujours 2,2 g/L à 120 min ; insulinémie très basse (3 à 4 u.a.) et sans réaction au glucose. Interprétation : chez A, l''insuline sécrétée en réponse à l''hyperglycémie ramène la glycémie à la normale. Chez B, l''absence de sécrétion d''insuline empêche la régulation. Hypothèse : le sujet B est atteint d''un diabète de type 1 (déficit des cellules bêta).

Exercice 6. a) Les parents sont sains et ont une fille atteinte : l''allèle est récessif. Notons N (normal, dominant) et a (albinisme). b) Fatou et Ibrahima : N//a (hétérozygotes) ; la fille : a//a. c) Échiquier N//a × N//a : 1/4 N//N, 1/2 N//a, 1/4 a//a. Probabilité d''un enfant atteint : 1/4, à chaque naissance, indépendamment des enfants précédents.

Conseils après correction : si vous avez perdu des points en génétique, vérifiez que vous avez écrit les gamètes et un échiquier ; en exploitation de documents, que chaque interprétation s''appuie sur des valeurs citées ; pour le QCM, qu''aucune réponse n''est laissée vide. Refaites ce sujet dans deux semaines sans regarder le corrigé.', 'texte', 75, false, 50
from public.courses c where c.slug = 'bac-svt'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen : entraînement complet corrigé');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : révision intensive la veille du Bac de SVT', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : élèves de Terminale S qui passent l''épreuve de SVT du Bac.
- Objectifs : réactiver les notions clés de Terminale, corriger en direct des exercices type Bac, s''entraîner à gérer le temps, repartir confiant.
- Matériel : tableau ou diaporama, schémas vierges à compléter (méiose, synapse, sarcomère, anticorps), feuille de brouillon et stylo pour les élèves, chronomètre.
- Prérequis : avoir révisé les leçons 1 à 5 de ce cours.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et règles de la séance

Bonjour à toutes et à tous. Demain, c''est l''épreuve de SVT. Ce soir, l''objectif n''est pas d''apprendre de nouvelles choses : c''est de remettre en ordre ce que vous savez déjà, de vérifier les automatismes et de vous rassurer. Nous allons travailler en séquences courtes. Gardez une feuille de brouillon : à chaque exercice, je vous laisse quelques minutes pour chercher avant de corriger. Ne regardez pas vos fiches pendant les questions : il faut entraîner la mémoire comme le jour de l''examen.

Visuel : le plan de la séance en six blocs (génétique, immunologie, nerf et muscle, régulations, gestion du temps, évaluation finale).

## 05:00 – 18:00 · Rappels clés de génétique

Commençons par la méiose. Qui peut me dire ce qui distingue la première division de la seconde ? Exactement : en anaphase I, ce sont les chromosomes homologues qui se séparent, on passe de 2n à n ; en anaphase II, ce sont les chromatides sœurs. Retenez les deux brassages : intrachromosomique en prophase I, grâce aux crossing-over ; interchromosomique en anaphase I, grâce à la séparation indépendante des paires.

Visuel : schéma de la prophase I avec un bivalent et un chiasma, puis anaphase I.

Pour les exercices de génétique, je vous redonne la grille de lecture. Une F2 en 3/4 – 1/4 : un gène, dominance complète. Une F2 en 9/16, 3/16, 3/16, 1/16 : deux gènes indépendants. Un croisement-test en quatre classes égales : gènes indépendants. Un croisement-test avec deux classes majoritaires et deux minoritaires : gènes liés, et le pourcentage de recombinés donne la distance en centimorgans. Ne donnez jamais une conclusion sans l''échiquier : c''est lui qui montre au correcteur que vous avez compris.

En génétique humaine : deux parents sains et un enfant atteint, l''allèle est récessif. Si c''est une fille atteinte avec un père sain, le gène n''est pas sur le chromosome X. Pour la drépanocytose, deux parents AS ont un risque de 1/4 d''avoir un enfant SS, à chaque grossesse.

## 18:00 – 30:00 · Correction commentée : un croisement-test

Exercice au tableau : chez une plante, la F1 issue de deux lignées pures est croisée avec un double récessif. On obtient 380 [AB], 370 [ab], 130 [Ab], 120 [aB]. Prenez trois minutes.

Correction. Total : 380 + 370 + 130 + 120 = 1000. Si les gènes étaient indépendants, nous attendrions 250 par classe. Ici, 750 parentaux et 250 recombinés : les gènes sont liés. Le pourcentage de recombinés vaut 250/1000 = 25 %, soit 25 cM. Rédaction attendue : « Les phénotypes parentaux sont majoritaires (75 %), les phénotypes recombinés minoritaires (25 %) : les deux gènes sont liés. Les recombinés résultent de crossing-over survenus en prophase I lors de la méiose chez la F1. » Puis on écrit le génotype de la F1 sous forme de fraction (AB//ab), ses quatre types de gamètes avec leurs proportions (37,5 % AB, 37,5 % ab, 12,5 % Ab, 12,5 % aB), et l''échiquier avec le gamète unique ab du double récessif.

Erreur fréquente : dire « les gènes sont liés » parce qu''il y a quatre classes. Non : quatre classes peuvent apparaître dans les deux cas ; c''est l''inégalité des proportions qui compte.

## 30:00 – 42:00 · Rappels clés d''immunologie et correction commentée

Rappel en trois lignes : immunité innée, rapide et non spécifique (inflammation, phagocytose) ; immunité adaptative, spécifique, avec sélection clonale ; les LT4 coordonnent, les plasmocytes issus des LB sécrètent les anticorps, les LT cytotoxiques issus des LT8 détruisent les cellules infectées. Mémoire immunitaire : réponse secondaire plus rapide et plus ample.

Visuel : schéma de l''anticorps en Y à compléter : chaînes lourdes, chaînes légères, partie variable, sites de fixation de l''antigène, partie constante.

Exercice : une souris reçoit du sérum d''une souris vaccinée contre le tétanos, puis la toxine tétanique ; elle survit. Une souris qui reçoit du sérum d''une souris non vaccinée meurt. Que concluez-vous ? Correction : la protection est transférable par le sérum, donc par des molécules solubles, les anticorps antitoxine : c''est une immunité à médiation humorale. La souris non vaccinée sert de témoin. Notez que cette protection est temporaire : la souris receveuse n''a pas fabriqué elle-même de lymphocytes mémoires. C''est le principe de la sérothérapie, différente de la vaccination.

## 42:00 – 50:00 · Pause active et quiz interactif

On souffle deux minutes, on se lève, on boit de l''eau. Puis quiz rapide : répondez à voix haute ou dans le chat.

- Question 1 : quelle est la valeur approximative du potentiel de repos ? Réponse : environ –70 mV.
- Question 2 : quelle hormone est hyperglycémiante ? Réponse : le glucagon.
- Question 3 : quelle cellule le VIH infecte-t-il principalement ? Réponse : le lymphocyte T4.
- Question 4 : quel événement provoque l''ovulation ? Réponse : le pic de LH, déclenché par le rétrocontrôle positif de l''œstradiol.
- Question 5 : quelle bande du sarcomère garde la même longueur lors de la contraction ? Réponse : la bande sombre A.

Si vous avez eu au moins quatre bonnes réponses, vous êtes prêts. Sinon, notez la notion manquée et relisez sa fiche ce soir, une seule fois.

## 50:00 – 1:02:00 · Nerf et muscle : rappels et correction commentée

Rappel : le potentiel d''action obéit à la loi du tout ou rien pour une fibre isolée ; l''intensité de stimulation est codée en fréquence de potentiels d''action ; à la synapse, le message devient chimique et il est codé en concentration de neurotransmetteur. Le réflexe myotatique est monosynaptique : fuseau neuromusculaire, neurone sensitif, moelle épinière, motoneurone, muscle étiré.

Exercice : deux électrodes réceptrices sont placées à 4 cm l''une de l''autre sur une fibre ; le potentiel d''action met 2 ms pour aller de l''une à l''autre. Calculez la vitesse. Correction : 4 cm = 0,04 m ; 2 ms = 0,002 s ; v = 0,04/0,002 = 20 m/s. Précisez toujours l''unité.

Exercice : on injecte dans une fente synaptique une substance qui bloque l''acétylcholinestérase. Correction : l''acétylcholine n''est plus dégradée, elle reste fixée sur les récepteurs ; la membrane postsynaptique reste stimulée, d''où des contractions prolongées. Pour le muscle, retenez la séquence : potentiel d''action musculaire, libération de Ca2+, fixation des têtes de myosine sur l''actine, pivotement grâce à l''hydrolyse de l''ATP, glissement des filaments.

## 1:02:00 – 1:12:00 · Régulations : rappels et correction commentée

Glycémie : insuline, sécrétée par les cellules bêta, seule hormone hypoglycémiante ; glucagon, sécrété par les cellules alpha, hyperglycémiant. Le foie stocke le glucose en glycogène et peut le libérer. Diabète de type 1 : plus d''insuline ; type 2 : insulinorésistance.

Exercice : on présente une courbe de glycémie d''un sujet pendant une course de 2 heures sans alimentation : la glycémie reste stable autour de 0,9 g/L, l''insulinémie baisse et la glucagonémie augmente. Correction attendue : l''effort consomme du glucose ; la baisse de l''insuline limite le stockage, la hausse du glucagon stimule la glycogénolyse hépatique ; la libération de glucose par le foie compense la consommation musculaire, ce qui maintient la glycémie. C''est une régulation par rétrocontrôle négatif.

Hormones de la reproduction : chez l''homme, rétrocontrôle négatif de la testostérone sur l''axe hypothalamus-hypophyse ; chez la femme, rétrocontrôle négatif sauf en fin de phase folliculaire, où l''œstradiol à forte concentration exerce un rétrocontrôle positif.

## 1:12:00 – 1:20:00 · Gestion du temps et rédaction le jour J

Demain, procédez dans l''ordre suivant. Lisez tout le sujet. Calculez votre temps : par exemple, si une partie compte pour un quart des points, elle mérite environ un quart du temps. Commencez par ce que vous maîtrisez le mieux. Pour chaque document : présenter, analyser avec les valeurs, interpréter, conclure. Faites vos schémas au crayon, avec titre et légendes. Gardez dix minutes pour relire les unités et les conclusions. Si vous bloquez sur une question, laissez de l''espace et passez à la suivante : une question non traitée coûte moins cher qu''une heure perdue.

Ce soir : pas de nuit blanche. Préparez votre convocation, votre pièce d''identité, vos stylos, crayon, gomme, règle, et une bouteille d''eau.

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Synthèse : génétique, l''échiquier et les proportions ; immunologie, la coopération LT4-LB et la mémoire ; nerf et muscle, les codages et le rôle du Ca2+ ; régulations, les rétrocontrôles. Évaluation finale en cinq questions, deux minutes chacune.

- Question 1 : un croisement-test donne 50 % [AB] et 50 % [ab]. Que concluez-vous ? Réponse : les gènes sont liés et aucun recombiné n''apparaît : la liaison est totale (pas de crossing-over entre ces gènes chez l''individu testé).
- Question 2 : deux parents AS pour la drépanocytose ont un enfant sain. Probabilité qu''il soit porteur ? Réponse : 2/3.
- Question 3 : quelle est la différence entre vaccination et sérothérapie ? Réponse : la vaccination injecte un antigène inoffensif et provoque une réponse avec mémoire durable ; la sérothérapie injecte des anticorps déjà fabriqués, avec une protection immédiate mais temporaire.
- Question 4 : pourquoi le diabétique de type 1 doit-il recevoir de l''insuline ? Réponse : ses cellules bêta sont détruites, il ne produit plus d''insuline, seule hormone hypoglycémiante.
- Question 5 : un échantillon contient 12,5 % du carbone 14 initial. Âge ? Réponse : 12,5 % = (1/2) au cube, soit trois demi-vies : 3 × 5730 = 17 190 ans environ.

Merci pour votre attention. Relisez vos fiches une dernière fois, dormez bien, et demain, lisez chaque consigne jusqu''au bout. Bonne chance à toutes et à tous.', 'video', 90, false, 60
from public.courses c where c.slug = 'bac-svt'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : révision intensive la veille du Bac de SVT');

-- Cours : Philosophie au Bac : méthode, sujets et plans détaillés
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'bac-philosophie', (select id from public.levels where name = 'Terminale'), null, 'Philosophie (toutes séries)', 'Philosophie au Bac : méthode, sujets et plans détaillés', 'Cours d''examen pour tous les élèves de Terminale (séries L, S et G) qui préparent l''épreuve de philosophie du Baccalauréat au Sénégal. Complémentaire du cours « Philosophie Terminale », il approfondit la méthode de la dissertation et du commentaire de texte, puis propose des sujets traités avec plans détaillés sur les grandes notions (conscience et inconscient, liberté, vérité, travail et technique, État, morale, religion, culture). Il apprend à mobiliser avec rigueur les auteurs occidentaux et africains, sans citations inventées.', true, 205
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comprendre l''épreuve de philosophie et méthode de travail', '## Objectifs de la leçon

- Savoir ce que le correcteur attend d''une copie de philosophie au Bac.
- Reconnaître les différents types de sujets et choisir le sien en connaissance de cause.
- Connaître les erreurs qui coûtent le plus cher.
- Organiser ses révisions sur 10 semaines.

Ce cours d''examen s''adresse aux élèves de Terminale de toutes les séries (L, S et G). Il complète le cours « Philosophie Terminale », qui expose les notions : ici, l''accent est mis sur la méthode, les sujets et les plans détaillés. La durée de l''épreuve, son coefficient selon les séries et les modalités de notation sont fixés par les textes officiels en vigueur ; renseignez-vous auprès de votre établissement.

## Ce que l''épreuve évalue

L''épreuve de philosophie propose en général plusieurs sujets au choix : des sujets de dissertation (une question à traiter) et un texte d''auteur à commenter. Quel que soit le choix, le correcteur évalue la même chose : votre capacité à réfléchir par vous-même de façon rigoureuse. Il ne cherche pas une récitation de cours, ni une opinion personnelle affirmée sans preuve. Il attend :

- une compréhension précise du sujet (le sens exact des mots, la question réellement posée) ;
- un problème clairement formulé (la problématique) ;
- une argumentation progressive, où chaque idée est justifiée, illustrée et discutée ;
- des références philosophiques exactes et utilisées à bon escient ;
- une expression claire, correcte, sans familiarité.

La philosophie n''a pas de « bonne réponse » unique. Deux copies défendant des conclusions opposées peuvent obtenir une excellente note si elles sont rigoureuses.

## Les types de sujets de dissertation

- La question directe sur une notion : « Qu''est-ce qu''être libre ? ». Il faut dépasser la définition du dictionnaire et construire une réflexion.
- La question qui appelle « oui ou non » : « Le travail libère-t-il l''homme ? ». Le piège est de répondre trop vite. Il faut montrer pourquoi la question se pose, c''est-à-dire pourquoi on peut répondre oui et non.
- La question de possibilité ou de légitimité : « Peut-on… ? », « Doit-on… ? », « A-t-on le droit de… ? ». Distinguez le fait (ce qui est possible) et le droit (ce qui est légitime).
- La relation entre deux notions : « La technique menace-t-elle la culture ? », « Le bonheur est-il compatible avec le devoir ? ». Interrogez la nature du lien (opposition, condition, complémentarité).
- La formule à discuter : un énoncé suivi d''une consigne (« Expliquez et discutez »). Il faut d''abord comprendre l''énoncé, puis l''examiner.

## Le commentaire de texte en bref

Le commentaire porte sur un extrait d''un auteur, souvent d''une quinzaine à une trentaine de lignes. On attend que vous dégagiez le thème, la thèse, le problème et la structure du texte, que vous l''expliquiez avec précision, puis que vous en évaluiez la portée. La leçon 3 détaille cette méthode.

## Bien choisir son sujet

Prenez cinq à dix minutes pour lire tous les sujets. Pour chacun : ai-je compris tous les mots ? vois-je au moins deux réponses possibles ? ai-je des références précises ? Le commentaire convient à ceux qui lisent attentivement : le texte fournit les idées. Ne choisissez jamais un sujet parce qu''il « ressemble » à un sujet traité en classe : une petite différence de formulation change souvent tout le problème.

## Les erreurs fréquentes

- Le hors-sujet : traiter la notion en général au lieu de la question posée (parler de la liberté en général pour « Peut-on être libre sans être éclairé ? »).
- Le catalogue d''auteurs : « Descartes pense que…, Kant pense que…, Sartre pense que… » sans fil conducteur.
- L''absence de problématique : une introduction qui répète le sujet sans montrer la difficulté.
- Les citations inventées ou déformées : mieux vaut reformuler fidèlement une idée en citant l''auteur et l''œuvre qu''inventer une phrase entre guillemets.
- Les exemples vagues (« de nos jours, beaucoup de gens… ») au lieu d''exemples précis et analysés.
- Une conclusion qui ne répond pas à la question.
- Une copie inachevée faute de gestion du temps.

## Méthode de travail pendant l''année

- Construire pour chaque notion une fiche de deux pages : définitions, distinctions (fait et droit, nature et culture, croire et savoir), problèmes classiques, références (auteur, œuvre, idée), exemples.
- S''entraîner chaque semaine sur une introduction complète et un plan détaillé : c''est l''exercice le plus rentable.
- Lire de vrais textes courts : un chapitre du Discours de la méthode de Descartes, un passage de L''existentialisme est un humanisme de Sartre, un chapitre de Peau noire, masques blancs de Fanon.

## Plan de révision sur 10 semaines

- Semaine 1 : méthode de la dissertation (analyse du sujet, problématique, plan).
- Semaine 2 : conscience et inconscient ; une introduction rédigée.
- Semaine 3 : liberté ; un plan détaillé.
- Semaine 4 : vérité, raison et science ; méthode du commentaire de texte.
- Semaine 5 : travail et technique ; un commentaire complet.
- Semaine 6 : État et politique, justice et droit ; une dissertation complète en temps limité.
- Semaine 7 : morale et devoir ; religion.
- Semaine 8 : culture ; auteurs africains (Senghor, Cheikh Anta Diop, Hountondji, Fanon).
- Semaine 9 : deux sujets complets en temps réel (une dissertation, un commentaire).
- Semaine 10 : relecture des fiches, banque d''exemples, repos.

## Points clés

- On évalue une réflexion rigoureuse, pas une récitation ni une opinion.
- Toute question cache une difficulté : il faut la faire apparaître.
- Références exactes, reformulées fidèlement ; aucune citation inventée.
- Une introduction et un plan détaillé par semaine.

## Exercices pratiques

Exercice 1. Classez ces sujets selon leur type : a) « Qu''est-ce qu''une vérité ? » ; b) « Peut-on être libre dans une société ? » ; c) « La technique menace-t-elle la nature ? » ; d) « Faut-il obéir aux lois injustes ? ».

Exercice 2. Pour le sujet « Le travail libère-t-il l''homme ? », montrez en deux phrases qu''on peut répondre oui et en deux phrases qu''on peut répondre non.

Exercice 3. Distinguez le fait et le droit dans le sujet « Peut-on désobéir à l''État ? ».

Exercice 4. Corrigez cette phrase d''introduction : « Depuis la nuit des temps, l''homme s''est toujours posé la question de la liberté. »

Exercice 5. Un élève hésite entre une dissertation sur « La conscience de soi est-elle une connaissance de soi ? » et un commentaire d''un texte de Descartes. Donnez-lui trois critères pour choisir.

## Corrigé

Exercice 1. a) question directe sur une notion ; b) question de possibilité ; c) relation entre deux notions (technique et nature) ; d) question de légitimité (droit), qui oppose l''obligation légale et l''exigence morale de justice.

Exercice 2. Oui : par le travail, l''homme transforme la nature et se rend moins dépendant d''elle ; en produisant des œuvres, il prend conscience de ses capacités et gagne son autonomie économique. Non : le travail est d''abord une contrainte imposée par le besoin ; dans certaines conditions (travail forcé, travail à la chaîne, exploitation), il dépossède le travailleur du fruit et du sens de son activité.

Exercice 3. Le fait : est-il matériellement possible de désobéir (oui, chacun peut enfreindre la loi, au risque d''une sanction) ? Le droit : est-il légitime de désobéir, et à quelles conditions (loi injuste, atteinte aux droits fondamentaux, objection de conscience) ? Le cœur du sujet est la question de droit.

Exercice 4. La phrase est vague et invérifiable. Mieux vaut partir d''une situation précise : « Un jeune diplômé de Thiès qui choisit librement son métier découvre vite que ce choix dépend du marché de l''emploi, de sa famille, de ses moyens : son choix était-il vraiment libre ? »

Exercice 5. Comprend-il précisément les mots « conscience de soi » et « connaissance de soi » et leur différence ? Voit-il au moins deux réponses argumentées ? Comprend-il le texte de Descartes à la première lecture, au point d''en dégager la thèse ? Il choisira le sujet pour lequel il répond oui au plus grand nombre de critères.', 'texte', 50, true, 10
from public.courses c where c.slug = 'bac-philosophie'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comprendre l''épreuve de philosophie et méthode de travail');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'La dissertation en profondeur : conscience, inconscient, liberté, vérité', '## Objectifs de la leçon

- Maîtriser les quatre étapes de la dissertation : analyse, problématique, plan, rédaction.
- Rédiger une introduction complète et des transitions efficaces.
- Disposer de plans détaillés sur la conscience, l''inconscient, la liberté et la vérité.

## Étape 1 : analyser le sujet

Définissez chaque terme, y compris les petits mots (« peut-on », « toujours », « faut-il »). Cherchez plusieurs sens pour chaque notion : la liberté peut être une absence de contrainte, un pouvoir de choisir (libre arbitre), une autonomie (obéir à une loi qu''on se donne), une condition politique. Repérez ensuite le présupposé du sujet, c''est-à-dire ce qu''il tient pour acquis. Dans « Peut-on se connaître soi-même ? », on présuppose qu''il y a un « soi » stable à connaître : est-ce si sûr ?

## Étape 2 : construire la problématique

Une problématique fait apparaître une tension entre deux réponses défendables (« D''un côté…, de l''autre… ») et se termine par une ou deux questions précises. Exemple : « D''un côté, la conscience semble me donner un accès direct et immédiat à moi-même ; de l''autre, je découvre souvent après coup des motifs que j''ignorais. La conscience de soi suffit-elle à fonder une connaissance de soi ? »

## Étape 3 : bâtir le plan

Le plan dialectique (thèse, antithèse, dépassement) est le plus courant ; la troisième partie ne doit pas être un compromis (« un peu des deux ») mais redéfinir les termes ou déplacer le problème. Le plan progressif convient aux questions du type « Qu''est-ce que… ? ». Chaque partie contient deux ou trois sous-parties ; chaque sous-partie suit le schéma : idée, argument, référence, exemple, petite conclusion.

## Étape 4 : rédiger

L''introduction comporte quatre moments : une amorce (situation concrète, paradoxe ou opinion courante), l''analyse des termes, la problématique, l''annonce du plan. La conclusion récapitule le parcours et répond clairement à la question, sans ouvrir sur un sujet totalement différent. Les transitions font le bilan d''une partie et montrent sa limite : « Si la conscience me donne la certitude que j''existe, elle ne me dit pas ce que je suis. Il faut donc examiner ce qui, en moi, échappe à la conscience. »

## Plan détaillé 1 : « Peut-on se connaître soi-même ? »

- I. La conscience semble offrir un accès privilégié à soi. 1) Socrate fait de la formule delphique « Connais-toi toi-même » le point de départ de la sagesse. 2) Dans le Discours de la méthode, Descartes établit la certitude du « je pense, donc je suis » : je peux douter de tout, sauf du fait que je pense.
- Transition : la conscience m''assure que j''existe, mais pas de ce que je suis vraiment.
- II. Des obstacles rendent cette connaissance incertaine. 1) Freud montre avec l''hypothèse de l''inconscient que des désirs refoulés se manifestent dans les rêves, les lapsus et les actes manqués : le moi ne maîtrise pas tout ce qui se passe en lui. 2) Spinoza, dans l''Éthique, explique que les hommes se croient libres parce qu''ils sont conscients de leurs désirs mais ignorent les causes qui les déterminent.
- Transition : si l''introspection est trompeuse, faut-il renoncer à se connaître ?
- III. La connaissance de soi passe par les autres et par l''action. 1) Hegel montre que l''homme prend conscience de lui-même en transformant le monde et en se reconnaissant dans ses œuvres. 2) Sartre, dans L''Être et le Néant, analyse le rôle du regard d''autrui : la honte me révèle à moi-même tel qu''autrui me voit. 3) John Mbiti, dans African Religions and Philosophy, résume une conception africaine de la personne par la formule « je suis parce que nous sommes ». Se connaître est une tâche jamais achevée, menée avec les autres.

## Plan détaillé 2 : « La liberté consiste-t-elle à faire ce que l''on veut ? »

- I. Le sens commun : être libre, c''est ne rencontrer aucun obstacle à ses désirs. Cette conception a une part de vérité : la contrainte extérieure (prison, esclavage, travail forcé) supprime bien la liberté.
- II. Mais faire ce que l''on veut peut être une servitude. 1) Platon, dans La République, décrit le tyran comme l''homme le plus esclave, gouverné par ses désirs. 2) Spinoza : céder à tous ses désirs sans en connaître les causes, c''est être déterminé sans le savoir.
- III. La liberté comme autonomie et engagement. 1) Rousseau, dans Du contrat social, définit la liberté morale, acquise avec l''état civil, comme l''obéissance à la loi qu''on s''est prescrite, par opposition à l''esclavage de l''appétit. 2) Kant fonde la liberté sur l''autonomie de la volonté. 3) Sartre affirme que l''homme est « condamné à être libre » : il est responsable de ses choix, même lorsqu''il prétend ne pas avoir eu le choix. 4) Fanon, dans Les Damnés de la terre, montre que la liberté d''un peuple colonisé se conquiert par une action collective de libération.

## Plan détaillé 3 : « La vérité est-elle relative ? »

- I. Arguments en faveur du relativisme : la diversité des opinions et des cultures ; la thèse de Protagoras, rapportée par Platon dans le Théétète, selon laquelle l''homme est la mesure de toutes choses ; l''histoire des sciences, où des théories admises ont été abandonnées.
- II. Les limites du relativisme : dire « tout est relatif » prétend être vrai absolument, ce qui se contredit ; les vérités mathématiques et logiques ne dépendent pas des opinions ; Descartes cherche des idées claires et distinctes qui résistent au doute.
- III. Une vérité objective mais construite et révisable : Popper, dans La Logique de la découverte scientifique, montre qu''une théorie scientifique doit pouvoir être réfutée par l''expérience ; Hountondji, dans Sur la « philosophie africaine », insiste sur le fait que la vérité philosophique naît du débat critique et non de l''adhésion à une vision du monde collective. La vérité est l''horizon d''une recherche commune et argumentée.

## Points clés

- Définir les termes, repérer le présupposé ; problématique : une tension, une ou deux questions.
- Troisième partie : dépasser ; chaque référence : auteur, œuvre, idée fidèle.

## Exercices pratiques

Exercice 1. Donnez trois sens du mot « conscience ».

Exercice 2. Repérez le présupposé du sujet « Pourquoi chercher la vérité ? ».

Exercice 3. Rédigez une problématique pour « L''inconscient est-il une excuse ? ».

Exercice 4. Rédigez une transition entre la partie I et la partie II du plan détaillé 2.

Exercice 5. Rédigez une introduction complète pour « Peut-on se connaître soi-même ? ».

## Corrigé

Exercice 1. Conscience psychologique (savoir immédiat de ce qui se passe en soi), conscience réfléchie (conscience de soi), conscience morale (jugement du bien et du mal de ses actes).

Exercice 2. Le sujet présuppose que la vérité vaut d''être cherchée et qu''elle ne s''impose pas d''elle-même. On peut interroger ce présupposé : l''illusion n''est-elle pas parfois plus confortable que la vérité ?

Exercice 3. « D''un côté, si des désirs inconscients déterminent mes actes, je ne semble pas pleinement responsable de ce que je fais ; de l''autre, admettre l''inconscient, c''est aussi s''obliger à mieux se comprendre pour mieux répondre de soi. L''hypothèse de l''inconscient supprime-t-elle la responsabilité ou l''approfondit-elle ? »

Exercice 4. « Ne rencontrer aucun obstacle extérieur est bien une condition de la liberté. Mais l''absence de contrainte ne garantit pas que celui qui agit soit maître de lui-même : celui qui suit tous ses désirs est-il libre, ou esclave d''une autre manière ? »

Exercice 5. « Il arrive qu''un ami nous connaisse mieux que nous-mêmes et prévoie nos réactions avant nous. Pourtant, chacun a le sentiment d''être le mieux placé pour savoir ce qu''il pense et ressent. Se connaître, c''est savoir ce que l''on est : son caractère, ses désirs, ses valeurs. La conscience semble nous en donner un accès direct, mais nos illusions, nos désirs cachés et le regard des autres viennent troubler ce savoir. La conscience de soi suffit-elle à fonder une connaissance de soi ? Nous verrons d''abord que la conscience offre un accès privilégié à soi, puis que cet accès rencontre des obstacles, avant de montrer que la connaissance de soi est une tâche qui passe par l''action et par autrui. »', 'texte', 60, false, 20
from public.courses c where c.slug = 'bac-philosophie'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'La dissertation en profondeur : conscience, inconscient, liberté, vérité');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Le commentaire de texte en profondeur : travail, technique et État', '## Objectifs de la leçon

- Appliquer pas à pas la méthode du commentaire de texte philosophique.
- S''exercer sur un texte d''entraînement consacré au travail.
- Disposer de plans détaillés sur le travail, la technique et l''État.

## Étape 1 : lire et dégager l''essentiel

Lisez le texte plusieurs fois, crayon en main (mots clés, connecteurs, exemples), puis dégagez quatre éléments :

- le thème : de quoi parle le texte (en quelques mots) ;
- la thèse : ce que l''auteur affirme à propos de ce thème (une phrase) ;
- le problème : la question à laquelle la thèse répond, et la difficulté qu''elle surmonte ;
- l''enjeu : ce qui dépend de la réponse (notre conception de l''homme, de la société, de la morale).

Repérez enfin la thèse adverse, souvent implicite.

## Étape 2 : dégager la structure

Découpez le texte en deux à quatre mouvements à partir des connecteurs (« or », « mais », « donc ») et des changements de fonction (définition, argument, exemple, objection). Titrez chaque mouvement par ce que fait l''auteur (« il réfute… »).

## Étape 3 : expliquer

L''explication suit l''ordre du texte ou ses idées principales. Pour chaque passage : citez une expression courte, expliquez les mots, reconstruisez l''argument, donnez un exemple. Il faut éviter deux défauts : la paraphrase (répéter le texte en d''autres mots) et le hors-texte (parler de la notion sans lire le texte).

## Étape 4 : évaluer la portée

Montrez l''intérêt philosophique du texte, ce qu''il permet de penser aujourd''hui et ses limites, en mobilisant d''autres auteurs. Discuter, ce n''est pas réfuter à tout prix, c''est mesurer la portée d''une thèse.

## Application : texte d''entraînement

Le texte suivant a été rédigé pour ce cours ; ce n''est pas un extrait d''auteur.

« On croit souvent que l''homme travaille seulement pour vivre, comme l''animal cherche sa nourriture. Mais l''animal consomme ce que la nature lui offre, tandis que l''homme transforme ce qu''il trouve. Le cultivateur du Saloum qui prépare son champ avant l''hivernage ne se contente pas de satisfaire un besoin : il prévoit, il organise, il imprime à la terre la marque de sa pensée. Ainsi, en travaillant, l''homme se donne à lui-même la preuve de ce qu''il peut. Or cette preuve n''existe que si le travailleur se reconnaît dans ce qu''il produit. Lorsque le travail n''est plus que l''exécution de gestes commandés par un autre, il cesse d''être une affirmation de soi pour devenir une simple dépense de forces. Ce n''est donc pas le travail en lui-même qui libère ou asservit, mais la manière dont il est organisé. »

Thème : le travail et son rapport à la liberté. Thèse : le travail peut être une affirmation de soi, mais seulement si le travailleur se reconnaît dans son activité et son produit ; sa valeur dépend de son organisation. Thèse adverse : le travail n''est qu''un moyen de survivre. Problème : le travail est-il par nature une contrainte ou un moyen de réalisation de soi ? Structure : premier mouvement (du début à « transforme ce qu''il trouve ») : réfutation de l''opinion courante par la distinction entre l''homme et l''animal ; deuxième mouvement (jusqu''à « ce qu''il peut ») : le travail comme réalisation de soi, illustré par l''exemple du cultivateur ; troisième mouvement (de « Or » à la fin) : la condition de cette réalisation et la conclusion.

Portée : la thèse rejoint l''analyse de Hegel, dans la Phénoménologie de l''esprit, de la dialectique du maître et de l''esclave, où l''esclave, en travaillant, forme la chose et se forme lui-même. Elle rejoint aussi la critique de Marx, dans les Manuscrits de 1844, du travail aliéné, où l''ouvrier ne se reconnaît plus ni dans son produit ni dans son activité. Discussion : même juste, le travail reste lié au besoin ; pour Aristote, dans la Politique, la liberté se réalise plutôt hors du travail, dans le loisir et la vie civique.

## Plan détaillé : « Le travail libère-t-il l''homme ? »

- I. Le travail est d''abord une contrainte : il naît du besoin ; le récit biblique de la Genèse le présente comme une peine.
- II. Pourtant, le travail humanise : il transforme la nature et l''homme lui-même (Hegel, l''esclave qui se forme en formant la chose) ; il donne une place sociale et une autonomie économique.
- III. Sa valeur libératrice dépend de ses conditions : Marx et l''aliénation ; l''exploitation coloniale et le travail forcé, analysés par Fanon dans Les Damnés de la terre ; la nécessité de penser la justice dans l''organisation du travail.

## Plan détaillé : « La technique menace-t-elle l''humanité ? »

- I. La technique libère l''homme de la nature : Descartes, dans la sixième partie du Discours de la méthode, espère que la science nous rendra « comme maîtres et possesseurs de la nature »
- II. Mais sa puissance devient une menace (érosion côtière, armes, dépendance numérique) ; Hans Jonas, dans Le Principe responsabilité, demande d''agir en pensant aux générations futures.
- III. Le problème n''est pas la technique mais la sagesse de son usage : la technique doit rester un moyen au service de fins humaines choisies collectivement.

## Plan détaillé : « L''État est-il l''ennemi de la liberté ? »

- I. L''État contraint : il impose lois, impôts et sanctions ; Max Weber, dans Le Savant et le Politique, le définit par le monopole de la violence physique légitime.
- II. Mais sans État, la liberté est menacée par la loi du plus fort : Hobbes, dans le Léviathan, décrit l''état de nature comme une guerre de chacun contre chacun ; Rousseau fonde l''autorité légitime sur la volonté générale.
- III. Tout dépend de la nature de l''État : Hegel fait de l''État la réalisation de la liberté ; Marx y voit un instrument de domination de classe ; Cheikh Anta Diop, dans Les Fondements économiques et culturels d''un État fédéral d''Afrique noire, pense l''État comme un outil d''indépendance ; Fanon met en garde, dans Les Damnés de la terre, contre la confiscation de l''État par une élite après les indépendances. La liberté exige un État de droit.

## Points clés

- Thème, thèse, problème, enjeu, structure : avant toute rédaction.
- Expliquer, ce n''est ni paraphraser ni sortir du texte.

## Exercices pratiques

Exercice 1. Dans le texte d''entraînement, quel rôle joue l''exemple du cultivateur du Saloum ?

Exercice 2. Expliquez le sens de l''expression « une simple dépense de forces » dans le texte d''entraînement.

Exercice 3. Rédigez une introduction de commentaire pour le texte d''entraînement.

Exercice 4. Proposez une objection à la thèse du texte et une réponse possible de l''auteur.

Exercice 5. Rédigez la problématique du sujet « La technique menace-t-elle l''humanité ? ».

## Corrigé

Exercice 1. Il sert à illustrer la distinction entre l''homme et l''animal : le cultivateur anticipe la saison, organise son activité et transforme la terre selon un projet.

Exercice 2. L''expression désigne un travail réduit à une activité physique sans projet personnel ni reconnaissance : le travailleur fatigue son corps sans s''affirmer comme sujet. C''est la description de ce que Marx appelle le travail aliéné.

Exercice 3. « On présente souvent le travail comme une simple nécessité vitale. L''auteur soutient que le travail peut être une affirmation de soi, mais à condition que le travailleur se reconnaisse dans son activité et son produit. Le problème est de savoir si le travail est par nature une contrainte ou un moyen de se réaliser. L''auteur commence par distinguer le travail humain de l''activité animale, puis montre comment le travail réalise l''homme, avant de préciser la condition de cette réalisation. »

Exercice 4. Objection : beaucoup de personnes se reconnaissent peu dans leur travail mais y trouvent une dignité, celle de nourrir leur famille. Réponse possible : cette dignité confirme la thèse, car le travailleur se reconnaît alors dans le résultat social de son travail, même si l''activité elle-même est pénible.

Exercice 5. « D''un côté, la technique a permis à l''homme de se protéger de la nature et d''améliorer ses conditions de vie ; de l''autre, sa puissance menace aujourd''hui l''environnement et peut échapper à notre contrôle. La technique est-elle en elle-même un danger, ou le danger tient-il à l''usage que nous en faisons ? »', 'texte', 60, false, 30
from public.courses c where c.slug = 'bac-philosophie'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Le commentaire de texte en profondeur : travail, technique et État');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Morale, religion, culture : sujets, plans détaillés et auteurs africains', '## Objectifs de la leçon

- Disposer de plans détaillés sur la morale, la religion et la culture.
- Savoir mobiliser avec exactitude les philosophes africains et ceux qui ont pensé l''Afrique.
- Construire une banque d''exemples tirés du contexte sénégalais et africain.

## Fiche : la morale

Distinctions utiles : le devoir et l''intérêt ; l''intention et les conséquences.

- Kant, dans les Fondements de la métaphysique des mœurs, fonde la morale sur la raison : agir par devoir, selon l''impératif catégorique, qui demande d''agir de telle sorte que la règle de mon action puisse devenir une loi universelle, et de traiter l''humanité toujours aussi comme une fin, jamais simplement comme un moyen.
- Aristote, dans l''Éthique à Nicomaque, relie la vertu au bonheur : la vertu est une disposition acquise par l''habitude, un juste milieu entre deux excès (le courage entre la lâcheté et la témérité).
- Mill, dans L''Utilitarisme, juge les actions par leurs conséquences sur le bonheur du plus grand nombre.
- La teranga (hospitalité) ou le jom (sens de l''honneur) au Sénégal sont des valeurs partagées qu''on peut analyser : coutume ou raison ?

## Plan détaillé : « Le devoir s''oppose-t-il au bonheur ? »

- I. Oui en apparence : le devoir contraint et exige parfois de sacrifier son intérêt (rendre un objet trouvé de valeur, dire une vérité qui nous dessert) ; pour Kant, une action n''a de valeur morale que si elle est faite par devoir, et non par inclination.
- II. Pourtant, les philosophes antiques unissent vertu et bonheur : pour Aristote, l''homme vertueux est celui qui vit bien ; pour Épicure, le plaisir bien compris exige la modération ; le devoir accompli procure la paix intérieure.
- III. Le devoir ne promet pas le bonheur mais nous en rend dignes : Kant distingue la recherche du bonheur et le fait d''en être digne ; la morale n''interdit pas le bonheur, elle refuse qu''il soit le fondement du devoir. Exemple : le fonctionnaire qui refuse un pot-de-vin.

## Fiche : la religion

Distinguer la foi (adhésion personnelle), la religion (croyances, rites, institutions communes) et la superstition. Le Sénégal, république laïque où coexistent plusieurs confessions, offre de bons exemples de dialogue interreligieux et de tolérance.

- Durkheim, dans Les Formes élémentaires de la vie religieuse, voit dans la religion un système de croyances et de pratiques relatives au sacré qui unit une communauté morale.
- Marx, dans la Contribution à la critique de la philosophie du droit de Hegel, écrit que la religion est « l''opium du peuple » : elle console des souffrances réelles au lieu de les combattre.
- Freud, dans L''Avenir d''une illusion, interprète la croyance religieuse comme l''expression d''un désir de protection.
- Bergson, dans Les Deux Sources de la morale et de la religion, distingue une religion close, qui soude un groupe, et une religion ouverte, tournée vers l''humanité entière.

## Plan détaillé : « La religion est-elle un obstacle à la raison ? »

- I. Oui si elle exige d''accepter sans examen : la foi dépasse la preuve ; Marx et Freud y voient une consolation ou une illusion.
- II. Non, car elle répond à des questions que la raison seule ne tranche pas (le sens de la vie, la mort) ; de grands penseurs ont cherché à concilier foi et raison ; la religion fonde aussi un lien social (Durkheim).
- III. Le problème tient au rapport entre croyance et esprit critique : une religion ouverte, au sens de Bergson, et une laïcité qui garantit la liberté de conscience permettent la coexistence de la foi et du libre examen.

## Fiche : la culture

Distinguer nature (inné, universel) et culture (acquis, transmis, variable), au sens de formation de l''esprit ou au sens anthropologique.

- Montaigne, dans le chapitre « Des cannibales » des Essais, observe que chacun appelle barbarie ce qui n''est pas de son usage.
- Claude Lévi-Strauss, dans Race et histoire (1952), critique l''ethnocentrisme et l''idée d''une hiérarchie des cultures.
- Cheikh Anta Diop, dans Nations nègres et culture (1954), affirme l''apport des civilisations africaines, notamment par l''Égypte ancienne.
- Senghor, dans ses essais réunis dans les volumes de Liberté, développe la Négritude et l''idée d''une « civilisation de l''universel » nourrie de l''apport de toutes les cultures.
- Aimé Césaire, dans le Discours sur le colonialisme (1950), dénonce la prétention de la colonisation à « civiliser ».
- Amadou Hampâté Bâ a souligné la valeur des traditions orales ; on lui attribue la formule selon laquelle, en Afrique, un vieillard qui meurt est une bibliothèque qui brûle.

## Plan détaillé : « Peut-on hiérarchiser les cultures ? »

- I. La tentation de la hiérarchie : on juge les cultures selon la puissance technique ; l''idéologie coloniale s''en est servie pour justifier la domination.
- II. La critique de l''ethnocentrisme : Montaigne et Lévi-Strauss montrent que le jugement de « barbarie » dépend du point de vue de celui qui juge ; Cheikh Anta Diop et Césaire réhabilitent les civilisations africaines.
- III. Ni hiérarchie ni relativisme absolu : on peut juger des pratiques au nom de valeurs universelles (dignité humaine) sans hiérarchiser les cultures elles-mêmes ; Senghor propose le dialogue des cultures et le « rendez-vous du donner et du recevoir ».

## Mobiliser les auteurs africains avec rigueur

- Paulin Hountondji, dans Sur la « philosophie africaine » (1976), critique l''ethnophilosophie, c''est-à-dire l''idée d''une philosophie collective et implicite propre à un peuple, illustrée par La Philosophie bantoue du père Placide Tempels. Pour lui, la philosophie africaine est l''ensemble des textes écrits par des Africains dans un débat critique.
- Marcien Towa, dans son Essai sur la problématique philosophique dans l''Afrique actuelle (1971), critique lui aussi l''ethnophilosophie.
- Frantz Fanon, dans Peau noire, masques blancs (1952), analyse l''aliénation du colonisé ; dans Les Damnés de la terre (1961), la décolonisation et ses dérives.

Règle d''or : citez l''auteur, l''œuvre et une idée reformulée fidèlement. N''utilisez des guillemets que pour des formules dont vous êtes absolument sûrs.

## Points clés

- Morale : devoir, bonheur, intention, conséquences. Religion : foi, rite, lien social. Culture : critique de l''ethnocentrisme.
- Auteurs africains : des thèses précises, pas des noms décoratifs.

## Exercices pratiques

Exercice 1. Expliquez ce qu''est l''ethnocentrisme et donnez un exemple.

Exercice 2. Quelle critique Hountondji adresse-t-il à l''ethnophilosophie ?

Exercice 3. Rédigez une problématique pour « La religion est-elle un obstacle à la raison ? ».

Exercice 4. Montrez comment utiliser Kant dans le sujet « Peut-on être moral par intérêt ? ».

Exercice 5. Construisez un plan détaillé (trois parties, deux arguments chacune) pour « La culture nous rend-elle plus humains ? ».

## Corrigé

Exercice 1. L''ethnocentrisme consiste à juger les autres cultures à partir des normes de la sienne, considérées comme supérieures. Exemple : qualifier d''« arriérée » une société qui transmet son savoir oralement, alors que la tradition orale est un mode rigoureux de transmission (généalogies, épopées comme celle de Soundiata conservées par les griots).

Exercice 2. Il lui reproche de prêter à tout un peuple une philosophie unanime et implicite, reconstruite de l''extérieur, au lieu de reconnaître la philosophie comme un travail critique, individuel et pluriel, exprimé dans des textes et soumis au débat.

Exercice 3. « D''un côté, la foi demande d''adhérer à ce qui dépasse la preuve, ce qui semble contraire à l''exigence rationnelle d''examen ; de l''autre, la religion répond à des questions de sens que la raison ne peut trancher seule et a souvent nourri la réflexion. La foi et la raison sont-elles incompatibles, ou peuvent-elles s''éclairer mutuellement ? »

Exercice 4. Kant distingue l''action conforme au devoir et l''action faite par devoir. Le commerçant honnête par peur de perdre ses clients agit conformément au devoir, mais par intérêt : son action n''a pas de valeur morale au sens strict. On peut donc répondre qu''on peut agir conformément à la morale par intérêt, mais pas être moral par intérêt.

Exercice 5. I. Oui : la culture arrache l''homme à la nature (éducation, langage, règles) ; elle transmet savoirs et valeurs. II. Mais elle peut aussi diviser et dominer : ethnocentrisme, colonisation justifiée au nom de la « civilisation » (Césaire) ; une culture raffinée n''empêche pas la barbarie. III. La culture humanise lorsqu''elle s''ouvre : dialogue des cultures (Senghor, Lévi-Strauss) ; formation de l''esprit critique.', 'texte', 60, false, 40
from public.courses c where c.slug = 'bac-philosophie'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Morale, religion, culture : sujets, plans détaillés et auteurs africains');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen : entraînement complet corrigé', '## Présentation

Voici un sujet d''entraînement construit sur le modèle de l''épreuve de philosophie du Bac. Ce n''est pas un sujet officiel. Comme le jour de l''examen, vous choisissez un seul des trois sujets et vous le traitez en temps limité ; la durée réelle de l''épreuve est celle fixée par les textes officiels en vigueur. La grille d''évaluation proposée dans le corrigé est indicative et non officielle.

Méthode conseillée : 10 minutes pour lire les trois sujets et choisir ; environ un quart du temps pour le travail au brouillon (analyse, problématique, plan détaillé) ; la rédaction directe au propre de l''introduction et du développement ; 10 minutes de relecture. Ne rédigez pas tout au brouillon : vous manqueriez de temps.

## Exercices pratiques

Exercice 1 (sujet 1, dissertation). « Faut-il toujours dire la vérité ? »

Exercice 2 (sujet 2, dissertation). « Être libre, est-ce n''obéir à personne ? »

Exercice 3 (sujet 3, commentaire de texte). Le texte suivant a été rédigé pour cet entraînement ; ce n''est pas l''extrait d''un auteur. Commentez-le.

« L''opinion a ceci de commode qu''elle ne demande aucun effort : on la reçoit de son entourage comme on reçoit une langue, sans l''avoir choisie. Elle n''est pas toujours fausse ; il lui arrive même souvent de tomber juste. Mais celui qui pense par opinion ne sait pas pourquoi il a raison lorsqu''il a raison, et il ne peut donc ni défendre sa croyance devant une objection, ni la corriger lorsqu''elle le trompe. Savoir, au contraire, c''est pouvoir rendre raison de ce que l''on affirme. La différence entre l''opinion et le savoir ne tient donc pas au contenu de ce que l''on croit, mais au chemin par lequel on y parvient. C''est pourquoi l''école ne devrait pas seulement transmettre des vérités : elle devrait apprendre à les mériter. »

Exercice 4 (auto-évaluation). Relisez votre introduction et vérifiez qu''elle contient : une amorce précise, la définition des termes, une problématique formulée en question, l''annonce du plan.

Exercice 5 (correction d''une copie). Voici un extrait de copie sur le sujet 1 : « Kant a dit qu''il faut toujours dire la vérité. Mais Benjamin Constant pense le contraire. Donc chacun a son avis. » Relevez trois défauts et réécrivez le passage.

## Corrigé

Exercice 1. Analyse : « dire la vérité », c''est exprimer ce que l''on croit vrai (sincérité), ce qui se distingue de la vérité objective : on peut être sincère et se tromper. « Faut-il » pose une question de devoir. « Toujours » interroge l''existence d''exceptions. Problématique : « D''un côté, la confiance entre les hommes et la dignité de chacun semblent exiger la sincérité sans exception ; de l''autre, certaines vérités peuvent blesser, humilier ou mettre une vie en danger. Le devoir de vérité est-il absolu, ou doit-il céder devant d''autres devoirs ? »

Introduction rédigée possible : « Un médecin de l''hôpital régional de Ziguinchor doit-il annoncer brutalement un diagnostic grave à un patient très affaibli ? La question montre que dire la vérité, c''est-à-dire exprimer sincèrement ce que l''on pense vrai, n''est pas toujours simple. D''un côté, la confiance entre les hommes et le respect d''autrui semblent exiger la sincérité sans exception ; de l''autre, certaines vérités peuvent blesser ou mettre une vie en danger. Le devoir de vérité est-il absolu, ou doit-il céder devant d''autres devoirs ? Nous verrons d''abord ce qui fonde l''exigence de vérité, puis les situations où elle semble devoir fléchir, avant de montrer que le devoir de ne pas mentir n''oblige pas à tout dire, n''importe comment. »

Plan détaillé. I. Le devoir de vérité semble absolu : le mensonge détruit la confiance sans laquelle aucune société, aucun commerce, aucune parole donnée ne tient ; Kant, dans son opuscule Sur un prétendu droit de mentir par humanité, refuse toute exception, même pour protéger un ami, contre Benjamin Constant ; mentir, c''est traiter autrui comme un moyen. II. Pourtant, des exceptions semblent légitimes : le mensonge pour sauver un innocent (cacher une personne persécutée) ; la discrétion du médecin, le secret professionnel ; certaines vérités dites sans égard humilient. III. Distinguer mentir, taire et dire : on n''est pas obligé de tout dire, mais on ne doit pas tromper ; la manière de dire la vérité (le moment, les mots, le respect) fait partie de la morale ; la vérité est due à celui qui peut la recevoir et en faire usage. Conclusion : il faut toujours refuser le mensonge qui manipule, mais le devoir de vérité s''accompagne d''un devoir de tact et de prudence ; il n''oblige pas à tout dire à tout moment.

Exercice 2. Analyse : « obéir », c''est se soumettre à la volonté ou à la règle d''un autre ; « n''obéir à personne » peut signifier n''obéir qu''à soi-même. Problématique : « Si l''obéissance semble le contraire de la liberté, une vie sans aucune loi expose à la domination du plus fort et à l''esclavage des désirs. La liberté exclut-elle toute obéissance, ou consiste-t-elle à obéir à une loi légitime ? » Plan : I. L''obéissance semble s''opposer à la liberté (esclavage, colonisation, tyrannie). II. N''obéir à personne n''est pas être libre : l''état de nature chez Hobbes, l''esclavage des passions chez Platon et Spinoza. III. Être libre, c''est obéir à une loi que l''on reconnaît comme sienne : la liberté morale chez Rousseau, l''autonomie chez Kant, la loi votée par des citoyens dans un État de droit.

Exercice 3. Thème : la différence entre opinion et savoir. Thèse : opinion et savoir ne se distinguent pas par leur contenu mais par la justification ; savoir, c''est pouvoir rendre raison de ce que l''on affirme. Problème : une opinion vraie vaut-elle un savoir ? Structure : 1) de « L''opinion a ceci de commode » à « tomber juste » : caractères de l''opinion, reçue passivement et pas toujours fausse ; 2) de « Mais celui qui » à « au chemin par lequel on y parvient » : la faiblesse de l''opinion, même vraie, et la définition du savoir ; 3) la dernière phrase : la conséquence pour l''école. Portée : le texte rejoint la distinction de Platon, dans le Ménon, entre l''opinion droite et la science, qui est une opinion « attachée » par un raisonnement ; il rejoint aussi la règle de Descartes de ne recevoir pour vrai que ce que l''on connaît évidemment être tel. Discussion : nous ne pouvons pas tout vérifier par nous-mêmes ; une grande partie de nos savoirs repose sur la confiance accordée à des sources fiables ; l''enjeu est alors d''apprendre à juger de la fiabilité de ces sources, par exemple face aux fausses informations sur les réseaux sociaux.

Exercice 4. Si l''un des quatre éléments manque, réécrivez l''introduction : c''est la partie que le correcteur lit avec le plus d''attention, elle doit montrer que vous avez compris le problème.

Exercice 5. Défauts : la formule « Kant a dit » présente une citation approximative comme exacte ; les deux auteurs sont juxtaposés sans argument ; la conclusion « chacun a son avis » renonce à réfléchir. Réécriture : « Dans Sur un prétendu droit de mentir par humanité, Kant répond à Benjamin Constant que le devoir de véracité ne souffre aucune exception : admettre un droit de mentir, même pour une bonne cause, ruinerait la confiance qui fonde toute parole. Cette position a le mérite de la rigueur, mais elle conduit à une conséquence difficile à accepter : livrer un innocent à son agresseur. Il faut donc se demander si le refus du mensonge oblige vraiment à tout dire. »

Grille indicative et non officielle : compréhension du sujet et problématique ; construction et progression ; précision des connaissances et des exemples ; qualité de l''expression. Conseil final : visez une copie lisible, avec des parties nettement séparées et des transitions écrites.', 'texte', 75, false, 50
from public.courses c where c.slug = 'bac-philosophie'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen : entraînement complet corrigé');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : révision intensive la veille du Bac de philosophie', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : élèves de Terminale de toutes les séries (L, S, G) qui passent l''épreuve de philosophie.
- Objectifs : réactiver la méthode de la dissertation et du commentaire, corriger en direct des productions type Bac, revoir les références essentielles, organiser le temps de l''épreuve.
- Matériel : tableau ou diaporama, fiches de notions, feuille de brouillon, chronomètre.
- Prérequis : avoir suivi les leçons 1 à 5 de ce cours.

## Déroulé minuté

## 00:00 – 05:00 · Accueil : l''esprit de la veille

Bonsoir à toutes et à tous. Demain, vous allez réfléchir pendant plusieurs heures sur une question que vous n''avez jamais vue sous cette forme exacte. C''est normal, et c''est même le principe de l''épreuve. Ce soir, nous ne cherchons pas à apprendre de nouveaux auteurs. Nous allons consolider trois choses : la méthode, quelques références sûres, et la gestion du temps. Gardez une feuille de brouillon : je vous ferai travailler sur de vrais sujets.

Visuel : les trois piliers de la séance (méthode, références, temps) et l''horaire de la soirée.

## 05:00 – 17:00 · Rappel : analyser un sujet sans se tromper

Premier réflexe demain : recopier le sujet et entourer chaque mot. Prenons « Peut-on être heureux sans être libre ? ». Que signifie « peut-on » ? Il peut s''agir d''une possibilité de fait (est-ce que cela arrive ?) ou d''une légitimité (est-ce digne d''être appelé bonheur ?). « Heureux » : satisfaction durable, plénitude, et non simple plaisir passager. « Libre » : absence de contrainte, autonomie, liberté politique. Le présupposé : le bonheur et la liberté seraient liés. Le problème apparaît alors : l''esclave content de son sort est-il heureux ? Et l''homme libre mais pauvre et seul est-il heureux ?

Je vous redonne la grille : définir, distinguer, repérer le présupposé, faire apparaître une tension. Si vous ne voyez pas de tension, vous n''avez pas encore de problème. Question à la salle : quelle distinction est utile pour ce sujet ? Réponses attendues : bonheur et plaisir, liberté extérieure et liberté intérieure.

## 17:00 – 30:00 · Correction commentée d''une introduction

Je projette une introduction d''élève sur le sujet « La technique libère-t-elle l''homme ? » : « Depuis toujours l''homme utilise la technique. Dans ce devoir, nous allons parler de la technique et de la liberté. Descartes, Heidegger et Jonas ont parlé de ce sujet. »

Que lui manque-t-il ? Une amorce précise, les définitions, une problématique, l''annonce d''un plan. Réécrivons-la ensemble. Amorce : « Le téléphone portable permet à un commerçant de Kaolack de suivre les prix et de recevoir des paiements sans se déplacer ; mais il l''oblige aussi à être joignable à toute heure. » Définitions : la technique est l''ensemble des procédés et des outils par lesquels l''homme transforme la nature pour satisfaire ses besoins ; libérer, c''est affranchir d''une contrainte. Problématique : « D''un côté, la technique affranchit l''homme des contraintes naturelles ; de l''autre, elle crée de nouvelles dépendances. Libère-t-elle l''homme ou change-t-elle seulement la forme de ses servitudes ? » Annonce du plan en une phrase. Voilà une introduction qui donne envie au correcteur de lire la suite.

## 30:00 – 42:00 · Rappel : le commentaire de texte en cinq questions

Pour le commentaire, posez-vous cinq questions dans l''ordre. De quoi parle le texte (thème) ? Que soutient l''auteur (thèse) ? Contre quoi écrit-il (thèse adverse) ? Comment avance-t-il (structure) ? Pourquoi est-ce important (enjeu) ? Attention aux deux pièges : la paraphrase, qui répète le texte, et le hors-texte, qui récite le cours.

Exercice rapide : un texte affirme que « l''homme ne devient homme que parmi les hommes ». Thème ? La formation de l''humanité. Thèse ? L''humanité n''est pas donnée à la naissance, elle s''acquiert par l''éducation et la vie sociale. Thèse adverse ? L''humanité serait une nature innée. Référence utile pour évaluer la portée : les cas d''enfants privés de contacts humains, souvent étudiés, et la formule de Mbiti « je suis parce que nous sommes », qui insiste sur la dimension communautaire de la personne.

## 42:00 – 50:00 · Pause et quiz interactif

Deux minutes de pause. Puis cinq questions éclair, répondez à voix haute ou dans le chat.

- Question 1 : dans quelle œuvre Descartes établit-il le « je pense, donc je suis » ? Réponse : le Discours de la méthode (quatrième partie), repris dans les Méditations métaphysiques.
- Question 2 : quelle notion Hountondji critique-t-il ? Réponse : l''ethnophilosophie.
- Question 3 : qui a écrit Nations nègres et culture ? Réponse : Cheikh Anta Diop.
- Question 4 : quelle différence entre agir conformément au devoir et agir par devoir chez Kant ? Réponse : la première action respecte la règle, éventuellement par intérêt ; la seconde est accomplie par respect pour la loi morale, et elle seule a une valeur morale.
- Question 5 : dans quelle œuvre Fanon analyse-t-il l''aliénation du colonisé ? Réponse : Peau noire, masques blancs (et, pour la décolonisation, Les Damnés de la terre).

## 50:00 – 1:02:00 · Correction commentée : construire un plan détaillé

Sujet : « L''État est-il nécessaire ? ». Cherchez cinq minutes.

Correction. Partie I : l''État est nécessaire pour garantir la paix et la sécurité ; Hobbes, dans le Léviathan, montre que sans pouvoir commun, les hommes vivent dans la crainte et la guerre. Exemple : l''importance de l''État pour organiser la santé publique pendant une épidémie. Partie II : mais l''État peut devenir une menace ; la tyrannie, la corruption ; Marx y voit un instrument de domination ; Fanon dénonce la confiscation de l''État par une élite après les indépendances. Partie III : la question n''est pas seulement « faut-il un État ? » mais « quel État ? » ; Rousseau fonde la légitimité sur la volonté générale ; l''État de droit, la séparation des pouvoirs et la participation citoyenne rendent l''État nécessaire et acceptable. Remarquez la transition entre II et III : on ne dit pas « un peu des deux », on déplace la question du fait vers la légitimité.

## 1:02:00 – 1:12:00 · Banque de références sûres

Ce soir, relisez seulement des références dont vous êtes certains. Conscience : Descartes, Freud, Sartre. Liberté : Spinoza, Rousseau, Kant, Sartre. Vérité : Platon, Descartes, Popper. Travail : Hegel, Marx. Technique : Descartes, Jonas. État : Hobbes, Rousseau, Weber, Hegel, Marx. Morale : Aristote, Kant, Mill. Religion : Durkheim, Marx, Freud, Bergson. Culture : Montaigne, Lévi-Strauss, Senghor, Cheikh Anta Diop, Césaire. Philosophie africaine : Hountondji, Towa, Fanon.

Pour chacun, sachez dire l''œuvre et l''idée en une phrase. Entraînons-nous sur les auteurs africains, souvent mal utilisés. Senghor : la Négritude comme affirmation des valeurs culturelles du monde noir, puis l''idéal d''une civilisation de l''universel. Cheikh Anta Diop : l''antériorité et l''apport des civilisations africaines, dans Nations nègres et culture. Hountondji : la critique de l''ethnophilosophie, dans Sur la « philosophie africaine ». Fanon : l''aliénation du colonisé et les pièges de la décolonisation. Ce ne sont pas des noms à placer pour faire joli : chacun doit soutenir un argument précis de votre plan. Si vous doutez d''une citation, reformulez : « Comme le montre Lévi-Strauss dans Race et histoire, … ». Une idée exacte reformulée vaut mieux qu''une citation approximative entre guillemets.

## 1:12:00 – 1:20:00 · Gestion du temps le jour J

Répartissez votre temps en proportion de la durée officielle de l''épreuve. Lecture et choix du sujet : environ 10 minutes. Travail au brouillon (définitions, problématique, plan détaillé) : environ un quart du temps. Rédaction de l''introduction au brouillon, puis du développement directement au propre. Conclusion soignée. Relecture : 10 minutes. Si vous êtes en retard, réduisez la troisième partie mais rédigez toujours une conclusion qui répond à la question. Écrivez lisiblement, sautez une ligne entre les parties.

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Synthèse : un sujet, c''est une tension ; une copie, c''est un chemin ; une référence, c''est une idée exacte au service d''un argument. Évaluation finale.

- Question 1 : qu''est-ce qu''une problématique ? Réponse : la formulation d''une difficulté réelle posée par le sujet, sous forme d''une tension entre deux réponses défendables, conclue par une ou deux questions précises.
- Question 2 : que doit faire une troisième partie dialectique ? Réponse : dépasser l''opposition des deux premières, en redéfinissant les termes ou en déplaçant la question, et non proposer un compromis.
- Question 3 : citez les quatre éléments à dégager avant de commenter un texte. Réponse : thème, thèse, problème (avec l''enjeu), structure.
- Question 4 : comment éviter une citation inventée ? Réponse : nommer l''auteur et l''œuvre, puis reformuler fidèlement l''idée sans guillemets.
- Question 5 : quel défaut commet la conclusion « chacun a son avis » ? Réponse : elle renonce à répondre à la question ; une conclusion doit prendre position à partir du parcours argumenté.

Merci pour votre travail. Dormez bien, emportez votre convocation et de quoi écrire, et demain, prenez le temps de bien lire les sujets. Bonne chance.', 'video', 90, false, 60
from public.courses c where c.slug = 'bac-philosophie'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : révision intensive la veille du Bac de philosophie');

-- Cours : Espagnol LV2 : réussir l'épreuve du Bac
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'bac-espagnol', (select id from public.levels where name = 'Terminale'), null, 'Espagnol (LV2)', 'Espagnol LV2 : réussir l''épreuve du Bac', 'Ce cours d''examen prépare l''épreuve d''espagnol LV2 du Baccalauréat : méthode de compréhension écrite et d''analyse de texte, grammaire du Bac (subjonctif présent et imparfait, concordance des temps, conditionnel et hypothèse, ser et estar, por et para, discours indirect), expression écrite (essai argumenté, lettre) et repères de civilisation hispanique (Espagne, Amérique latine, liens avec l''Afrique). Il s''adresse surtout aux candidats des séries L, et à tout élève de Terminale qui présente l''espagnol en LV2. Les explications sont en français et les exemples en espagnol. Prérequis : les acquis d''espagnol de la Seconde et de la Première.', true, 210
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comprendre l''épreuve et méthode de travail', '## Objectifs de la leçon

- Savoir ce que l''on attend de toi à l''épreuve d''espagnol LV2 du Bac.
- Connaître les grandes familles d''exercices et une méthode pour chacune.
- Repérer et éviter les erreurs les plus fréquentes des candidats.
- Organiser tes révisions sur 10 semaines.

## À qui s''adresse ce cours

Ce cours s''adresse d''abord aux élèves de Terminale des séries L, pour qui la deuxième langue vivante occupe une place importante, mais aussi à tout candidat qui présente l''espagnol en LV2, quelle que soit sa série (L, S ou G), selon les choix d''options prévus par les textes officiels en vigueur. La durée de l''épreuve, son coefficient et son barème sont fixés par ces textes : vérifie-les auprès de ton établissement. Ici, nous travaillons la méthode, qui reste la même quelle que soit la série.

Le programme révisé couvre les trois années du lycée : les bases de la Seconde (présent, passés, ser et estar), les structures de Première (subjonctif présent, impératif, por et para) et les exigences de Terminale (subjonctif imparfait, concordance des temps, hypothèse, discours indirect, argumentation).

## Comment se présente l''épreuve

L''épreuve s''appuie en général sur un texte authentique ou adapté : extrait de roman, article de presse, témoignage, lettre ou poème. Il est souvent accompagné d''un paratexte (auteur, titre de l''œuvre, date, source). Les questions se répartissent habituellement en trois familles.

- Compréhension écrite : questions sur le sens du texte, vrai ou faux à justifier par une citation, recherche de synonymes ou de contraires, explication d''une expression.
- Compétence linguistique : transformations grammaticales (mettre au passé, au discours indirect, conjuguer au subjonctif), exercices à trous, parfois une courte traduction.
- Expression écrite : un ou deux sujets au choix, en lien avec le thème du texte (essai argumenté, lettre, dialogue, suite de récit).

La présentation exacte varie selon les sujets : lis toujours toutes les consignes avant de commencer.

## Méthode pour la compréhension

Commence par le paratexte : qui écrit, quand, dans quel pays ? Un texte de Gabriel García Márquez ne parle pas du même monde qu''un article d''un journal madrilène. Fais ensuite une première lecture complète sans t''arrêter sur les mots inconnus, pour saisir le thème général. Pendant la deuxième lecture, souligne les personnages, les lieux, les dates et les mots de liaison (pero, sin embargo, por eso, aunque).

Pour répondre, applique trois règles.

- Réponds en espagnol par des phrases complètes, en reformulant la question : à « ¿Por qué se fue Moussa? », on répond « Moussa se fue porque buscaba trabajo ».
- Justifie un vrai ou faux par une citation courte entre guillemets, suivie du numéro de ligne : « no hablaba ni una palabra de español » (l. 2).
- Ne recopie jamais un paragraphe entier : le correcteur veut voir que tu as compris, pas que tu sais recopier.

## Méthode pour la compétence linguistique

Lis la consigne deux fois et repère le temps demandé. Pour une transformation, identifie d''abord la structure (verbe principal, subordonnée, temps), puis applique la règle, puis relis l''accord du verbe avec son sujet. Les leçons 3 et 4 te donnent toutes les règles nécessaires, avec des tableaux à apprendre par cœur.

## Méthode pour l''expression écrite

Prends quelques minutes pour faire un plan au brouillon. Respecte le nombre de lignes ou de mots demandé. Écris des phrases simples et correctes plutôt que des phrases longues et fautives. Réutilise le vocabulaire du texte, mais sans le recopier. Garde du temps pour te relire : accents, accords, conjugaisons.

## Organiser son temps le jour de l''épreuve

Voici une répartition indicative à adapter à la durée officielle de ton épreuve : environ 15 % du temps pour lire le texte, 35 % pour la compréhension, 20 % pour la grammaire, 25 % pour l''expression écrite et 5 % pour la relecture. Si une question te bloque, passe à la suivante et reviens-y à la fin.

## Les erreurs fréquentes à éviter

- Les faux amis : « constipado » signifie enrhumé, « embarazada » signifie enceinte, « éxito » signifie succès (la sortie se dit « la salida »), « realizar » signifie accomplir ou réaliser un projet (« se rendre compte » se dit « darse cuenta »).
- Les gallicismes de genre : on dit « el problema », « el tema », « el sistema », mais « la leche », « la sangre », « la costumbre ».
- Le conditionnel après « si » : on n''écrit jamais « si tendría » ; on écrit « si tuviera ».
- L''oubli des accents écrits, qui changent parfois le sens : « hablo » (je parle) et « habló » (il a parlé), « el » (le) et « él » (lui).
- L''oubli des signes d''ouverture : ¿Dónde vives? ¡Qué calor!
- La confusion de ser et estar : « estoy cansado » (état) mais « soy senegalés » (identité).

## Plan de révision sur 10 semaines

- Semaine 1 : diagnostic (fais un sujet complet sans aide), lecture de cette leçon, constitution d''un carnet de vocabulaire.
- Semaine 2 : méthode de compréhension, deux textes courts par semaine (leçon 2).
- Semaine 3 : repères de civilisation : Espagne, Amérique latine, liens avec l''Afrique (leçon 2).
- Semaine 4 : subjonctif présent et imparfait (leçon 3).
- Semaine 5 : concordance des temps, conditionnel, phrases hypothétiques (leçon 3).
- Semaine 6 : ser et estar, por et para, discours indirect (leçon 4).
- Semaine 7 : expression écrite : essai et lettre, une production corrigée par semaine (leçon 4).
- Semaine 8 : sujet type complet en temps limité (leçon 5).
- Semaine 9 : deuxième sujet blanc, reprise des fiches d''erreurs.
- Semaine 10 : révision légère, cours vidéo « veille du Bac », sommeil et sérénité.

Chaque jour, consacre au moins 20 minutes à l''espagnol : 10 minutes de vocabulaire, 10 minutes de lecture ou de grammaire. La régularité vaut mieux qu''une nuit blanche.

## Points clés

- Lis le paratexte et les consignes avant tout.
- Réponds en phrases complètes et justifie par des citations courtes.
- Apprends les tableaux de conjugaison et les règles de concordance.
- Garde toujours du temps pour la relecture.

## Exercices pratiques

Exercice 1. Cite les trois grandes familles d''exercices de l''épreuve et donne un exemple de question pour chacune.

Exercice 2. Traduis en français : « Mi hermana está embarazada y mi hermano está constipado. »

Exercice 3. Corrige les erreurs : « La problema es que si tendría dinero, viajaría a Sevilla. »

Exercice 4. Réponds par une phrase complète en reformulant la question : « ¿Dónde vive Awa? » (Awa vit à Saint-Louis.)

Exercice 5. Ajoute les accents et les signes manquants : « Donde esta el? Que alegria! »

Exercice 6. Ton épreuve dure, par hypothèse, 3 heures. Calcule le temps à consacrer à chaque partie selon la répartition indicative de la leçon.

## Corrigé

Exercice 1. Compréhension écrite : « ¿Por qué decide el protagonista salir de su país? ». Compétence linguistique : « Pon el verbo entre paréntesis en subjuntivo ». Expression écrite : « Escribe una carta a un amigo para contarle tus proyectos ».

Exercice 2. « Ma sœur est enceinte et mon frère est enrhumé. » Deux faux amis classiques : « embarazada » ne veut pas dire embarrassée, « constipado » ne veut pas dire constipé.

Exercice 3. « El problema es que, si tuviera dinero, viajaría a Sevilla. » « Problema » est masculin ; après « si » d''hypothèse, on emploie le subjonctif imparfait.

Exercice 4. « Awa vive en Saint-Louis. » On reprend le verbe de la question et on ajoute l''information.

Exercice 5. « ¿Dónde está él? ¡Qué alegría! »

Exercice 6. 3 heures = 180 minutes. Lecture : 15 % de 180 = 27 min. Compréhension : 35 % = 63 min. Grammaire : 20 % = 36 min. Expression : 25 % = 45 min. Relecture : 5 % = 9 min. Total : 27 + 63 + 36 + 45 + 9 = 180 min.', 'texte', 50, true, 10
from public.courses c where c.slug = 'bac-espagnol'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comprendre l''épreuve et méthode de travail');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Compréhension écrite, analyse de texte et civilisation hispanique', '## Objectifs de la leçon

- Appliquer une méthode complète de compréhension et d''analyse d''un texte.
- Maîtriser le vocabulaire espagnol de l''analyse.
- Connaître les repères de civilisation indispensables : Espagne, Amérique latine, liens avec l''Afrique.

## Texte d''étude

Voici un texte d''entraînement rédigé pour ce cours.

« Cuando Moussa llegó a Madrid, hace ya diez años, no hablaba ni una palabra de español. Había cruzado el mar en cayuco desde la costa senegalesa y había pasado varias semanas en un centro de acogida de Canarias. "Al principio, todo me parecía extraño: la comida, el frío, las prisas de la gente", recuerda. Gracias a una asociación de barrio, aprendió el idioma y consiguió un trabajo en un taller de bicicletas. Hoy tiene su propio negocio y ayuda a otros jóvenes africanos a encontrar su camino. Sin embargo, no olvida a su familia de Kaolack: cada mes le envía dinero a su madre y sueña con volver algún día. "Me gustaría que mis hijos conocieran Senegal y que no tuvieran que arriesgar su vida como yo", confiesa. »

## Étape 1 : identifier la situation

Réponds aux questions de base : ¿quién? (Moussa, un emigrante senegalés), ¿dónde? (Madrid, Canarias, Kaolack), ¿cuándo? (hace diez años y hoy), ¿qué? (su llegada, su integración, su nostalgia), ¿cómo? (gracias a una asociación). Le texte est un témoignage : on le voit aux guillemets et aux verbes « recuerda » et « confiesa ».

## Étape 2 : repérer la structure

Les mots de liaison et les temps verbaux découpent le texte. Le passé (llegó, había cruzado, aprendió) raconte le parcours ; le présent (tiene, ayuda, sueña) décrit la situation actuelle ; le conditionnel et le subjonctif imparfait (me gustaría que conocieran) expriment un souhait pour l''avenir. Le connecteur « sin embargo » marque une opposition : la réussite matérielle n''efface pas l''attachement au pays.

## Étape 3 : analyser le sens et le ton

Le ton est à la fois positif (réussite, solidarité) et grave (le risque de la traversée en cayuco). La dernière phrase porte le message du texte : Moussa ne veut pas que ses enfants vivent la même épreuve que lui.

## Le vocabulaire de l''analyse

- El texto trata de... : le texte traite de...
- El autor pone de relieve / subraya... : l''auteur met en relief / souligne...
- El narrador cuenta... ; el protagonista siente... : le narrateur raconte... ; le protagoniste ressent...
- Se trata de un testimonio, un artículo, un fragmento de novela : il s''agit d''un témoignage, d''un article, d''un extrait de roman.
- El tono es irónico, nostálgico, optimista, crítico.
- Primero..., luego..., por fin... : d''abord..., ensuite..., enfin...
- Por una parte..., por otra parte... : d''une part..., d''autre part...
- Sin embargo, no obstante : cependant ; por eso, por lo tanto : c''est pourquoi, donc.

## Repères de civilisation : l''Espagne

- Le « Siglo de Oro » (XVIe-XVIIe siècles) : grande époque culturelle ; Miguel de Cervantes publie la première partie de Don Quijote de la Mancha en 1605.
- La guerre civile (1936-1939) oppose les républicains aux nationalistes du général Franco ; le poète Federico García Lorca est assassiné en 1936.
- La dictature franquiste dure jusqu''à la mort de Franco en 1975. Vient ensuite la « Transición » démocratique : la Constitution est adoptée en 1978.
- L''Espagne entre dans la Communauté européenne en 1986.
- Thèmes actuels fréquents dans les textes : chômage des jeunes, immigration, diversité des régions et des langues (catalan, basque, galicien).

## Repères de civilisation : l''Amérique latine

- La conquête espagnole commence après l''arrivée de Christophe Colomb en 1492 ; les peuples autochtones (aztèques, mayas, incas) subissent la domination coloniale.
- Les indépendances ont lieu au début du XIXe siècle, avec des figures comme Simón Bolívar et José de San Martín.
- La révolution mexicaine commence en 1910.
- Au XXe siècle, beaucoup de pays connaissent des dictatures militaires, puis un retour à la démocratie.
- Littérature : Pablo Neruda (Chili, prix Nobel 1971), Gabriel García Márquez (Colombie, Cien años de soledad, prix Nobel 1982).
- Thèmes fréquents : inégalités, droits des peuples autochtones, exode rural, violence urbaine, migrations vers les États-Unis.

## Repères de civilisation : les liens avec l''Afrique

- La Guinée équatoriale, indépendante depuis 1968, est le seul pays d''Afrique subsaharienne dont l''espagnol est langue officielle.
- Ceuta et Melilla sont deux villes espagnoles situées sur la côte nord du continent africain ; les îles Canaries se trouvent au large des côtes du Maroc et du Sahara occidental.
- Le Sahara occidental est une ancienne colonie espagnole, que l''Espagne a quittée en 1975-1976.
- La traite négrière a déporté des millions d''Africains vers les Amériques : leurs descendants ont profondément marqué la musique, la religion et la littérature de Cuba, de la Colombie, du Venezuela ou du Pérou. Le poète cubain Nicolás Guillén a célébré cet héritage afro-cubain.
- En Colombie, San Basilio de Palenque a été fondé au XVIIe siècle par des Africains réduits en esclavage qui s''étaient libérés ; l''UNESCO a reconnu son patrimoine culturel.
- Depuis les années 2000, des milliers de jeunes Ouest-Africains, dont des Sénégalais, ont tenté la traversée vers les Canaries en pirogue (« cayuco »), souvent au péril de leur vie.

## Points clés

- Qui, où, quand, quoi, comment : c''est la base de toute compréhension.
- Les temps verbaux et les connecteurs révèlent la structure du texte.
- Une citation courte, avec le numéro de ligne, vaut mieux qu''une longue copie.
- Les repères de civilisation enrichissent ton essai, à condition d''être exacts.

## Exercices pratiques

Exercice 1. ¿De dónde salió Moussa y adónde llegó primero?

Exercice 2. Vrai ou faux ? Justifie par une citation. a) Moussa hablaba bien español al llegar. b) Moussa ha olvidado a su familia.

Exercice 3. Trouve dans le texte un synonyme de « lengua » et un contraire de « recordar ».

Exercice 4. Explique en espagnol la phrase « Me gustaría que mis hijos no tuvieran que arriesgar su vida como yo ».

Exercice 5. Quel est le seul pays d''Afrique subsaharienne où l''espagnol est langue officielle ? Depuis quand est-il indépendant ?

Exercice 6. Remets dans l''ordre chronologique : Constitution espagnole, guerre civile, entrée dans la Communauté européenne, publication de Don Quijote.

Exercice 7. Rédige en espagnol une présentation du texte de 4 ou 5 lignes en utilisant au moins trois expressions de l''analyse.

## Corrigé

Exercice 1. Moussa salió de la costa senegalesa y llegó primero a Canarias, donde pasó varias semanas en un centro de acogida.

Exercice 2. a) Faux : « no hablaba ni una palabra de español ». b) Faux : « no olvida a su familia de Kaolack ».

Exercice 3. Synonyme de « lengua » : « el idioma ». Contraire de « recordar » : « olvidar » (« no olvida »).

Exercice 4. Moussa desea que sus hijos visiten el país de su familia y que tengan una vida más segura: no quiere que crucen el mar en cayuco y pongan su vida en peligro como hizo él.

Exercice 5. La Guinée équatoriale (Guinea Ecuatorial), indépendante depuis 1968.

Exercice 6. Don Quijote (1605), guerre civile (1936-1939), Constitution (1978), entrée dans la Communauté européenne (1986).

Exercice 7. Exemple : « Se trata de un testimonio sobre la emigración africana a España. El texto trata de Moussa, un senegalés que llegó a Madrid en cayuco. Primero, el autor cuenta su difícil llegada; luego, subraya su integración gracias a una asociación. Sin embargo, el tono es también nostálgico, porque Moussa sueña con volver a Senegal. »', 'texte', 60, false, 20
from public.courses c where c.slug = 'bac-espagnol'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Compréhension écrite, analyse de texte et civilisation hispanique');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Grammaire du Bac 1 : subjonctif, concordance des temps et hypothèse', '## Objectifs de la leçon

- Former le subjonctif présent et le subjonctif imparfait, y compris des verbes irréguliers.
- Savoir quand employer le subjonctif.
- Appliquer la concordance des temps.
- Former le conditionnel et construire les phrases hypothétiques.

## Fiche 1 : le subjonctif présent

Formation : on part de la première personne du présent de l''indicatif, on enlève le « o » et on ajoute les terminaisons « inversées » : les verbes en -ar prennent un « e », les verbes en -er et -ir prennent un « a ».

- hablar : hable, hables, hable, hablemos, habléis, hablen.
- comer : coma, comas, coma, comamos, comáis, coman.
- vivir : viva, vivas, viva, vivamos, viváis, vivan.

Les irrégularités du présent se retrouvent au subjonctif : tener (tengo) donne tenga ; hacer (hago) donne haga ; decir (digo) donne diga ; salir (salgo) donne salga ; conocer (conozco) donne conozca. Les verbes à diphtongue gardent la diphtongue sauf à « nosotros » et « vosotros » : poder donne pueda mais podamos ; querer donne quiera mais queramos. Les verbes en -ir à affaiblissement changent aussi à « nosotros » : pedir donne pida et pidamos ; dormir donne duerma et durmamos.

Six verbes totalement irréguliers sont à apprendre par cœur : ser (sea), ir (vaya), estar (esté), dar (dé), saber (sepa), haber (haya).

## Fiche 2 : le subjonctif imparfait

Formation : on part de la troisième personne du pluriel du passé simple (pretérito indefinido), on enlève « -ron » et on ajoute -ra, -ras, -ra, -ramos, -rais, -ran (la forme en -se existe aussi : hablase).

- hablar : hablaron donne hablara, hablaras, hablara, habláramos, hablarais, hablaran.
- comer : comieron donne comiera ; vivir : vivieron donne viviera.
- tener : tuvieron donne tuviera ; hacer : hicieron donne hiciera ; decir : dijeron donne dijera.
- ser et ir : fueron donne fuera ; estar : estuvieron donne estuviera ; poder : pudieron donne pudiera.
- poner : pusieron donne pusiera ; venir : vinieron donne viniera ; leer : leyeron donne leyera.

Remarque : la première personne du pluriel porte un accent écrit (habláramos, tuviéramos, fuéramos).

## Fiche 3 : quand employer le subjonctif

- Après un verbe de volonté, d''ordre, de conseil ou de demande : Quiero que estudies. Te aconsejo que descanses.
- Après un verbe de sentiment : Me alegra que vengas. Siento que estés enfermo.
- Après une expression impersonnelle : Es necesario que todos los niños vayan a la escuela. Es importante que protejamos el medio ambiente.
- Après un verbe d''opinion à la forme négative : No creo que llueva hoy. Mais à la forme affirmative, on emploie l''indicatif : Creo que lloverá.
- Après « para que » (but) : Trabajo para que mis hijos estudien.
- Après « cuando » et les conjonctions de temps, si l''action est future : Cuando tenga dinero, compraré un ordenador. Attention : le français dit « quand j''aurai », l''espagnol ne met jamais le futur après « cuando ».
- Après « aunque » pour une concession hypothétique : Aunque llueva, iré al mercado (même s''il pleut).
- Après « ojalá » (pourvu que) : ¡Ojalá apruebe el bachillerato!
- À l''impératif négatif : No hables. No salgáis.

## Fiche 4 : la concordance des temps

C''est la règle la plus testée au Bac. Le temps du subjonctif dépend du temps du verbe principal.

- Verbe principal au présent, au futur, au passé composé ou à l''impératif : subjonctif présent. Quiero que vengas. Te pediré que vengas. Dile que venga.
- Verbe principal au passé simple, à l''imparfait, au plus-que-parfait ou au conditionnel : subjonctif imparfait. Quería que vinieras. Le pedí que viniera. Me gustaría que vinieras.

Exemple contextualisé : El director exige que los alumnos lleguen a las ocho. Au passé : El director exigió que los alumnos llegaran a las ocho.

## Fiche 5 : le conditionnel

Formation : infinitif + -ía, -ías, -ía, -íamos, -íais, -ían. Hablar donne hablaría ; comer donne comería. Les irréguliers ont le même radical qu''au futur : tener (tendría), poner (pondría), salir (saldría), venir (vendría), poder (podría), saber (sabría), querer (querría), haber (habría), hacer (haría), decir (diría).

Emplois : la politesse (¿Podría usted ayudarme?), le souhait (Me gustaría ser médico), le conseil (Deberías estudiar más), la conséquence d''une hypothèse, et le futur dans le passé (Dijo que vendría).

## Fiche 6 : les phrases hypothétiques avec « si »

- Hypothèse réalisable : si + présent de l''indicatif, puis présent ou futur. Si tengo tiempo, iré a Gorée.
- Hypothèse irréelle dans le présent : si + subjonctif imparfait, puis conditionnel. Si tuviera tiempo, iría a Gorée (si j''avais le temps, j''irais).
- Hypothèse irréelle dans le passé : si + subjonctif plus-que-parfait, puis conditionnel passé. Si hubiera estudiado, habría aprobado (si j''avais étudié, j''aurais réussi).

Règle d''or : jamais de conditionnel, ni de subjonctif présent, juste après « si » d''hypothèse.

## Points clés

- Subjonctif présent : radical du « yo » au présent + voyelle inversée.
- Subjonctif imparfait : 3e personne du pluriel du passé simple sans « -ron » + -ra.
- Principal au passé ou au conditionnel : subjonctif imparfait.
- « Cuando » + subjonctif pour le futur ; « si » + subjonctif imparfait pour l''irréel.

## Exercices pratiques

Exercice 1. Conjugue au subjonctif présent : (yo) tener, (nosotros) poder, (ellos) ser, (tú) ir.

Exercice 2. Conjugue au subjonctif imparfait : (yo) decir, (ella) hacer, (nosotros) ser, (ellos) poner.

Exercice 3. Complète : a) Mis padres quieren que yo (estudiar) medicina. b) Es necesario que (nosotros, plantar) árboles. c) Cuando (llegar) las lluvias, los campesinos sembrarán.

Exercice 4. Mets au passé en respectant la concordance : a) El profesor pide que hagamos los deberes. b) Me alegra que vengas a Dakar.

Exercice 5. Transforme en hypothèse irréelle dans le présent : « Si tengo una beca, estudio en Madrid. »

Exercice 6. Corrige : « Cuando seré mayor, trabajaré en Ziguinchor. » et « Si podría, ayudaría a mi barrio. »

Exercice 7. Traduis : « Si les jeunes trouvaient du travail au Sénégal, ils ne prendraient pas la mer. Il faudrait que l''État crée des emplois pour qu''ils puissent rester. »

## Corrigé

Exercice 1. tenga ; podamos ; sean ; vayas.

Exercice 2. dijera ; hiciera ; fuéramos ; pusieran.

Exercice 3. a) estudie (volonté). b) plantemos (expression impersonnelle). c) lleguen (cuando + futur).

Exercice 4. a) El profesor pidió que hiciéramos los deberes. b) Me alegró que vinieras a Dakar.

Exercice 5. Si tuviera una beca, estudiaría en Madrid.

Exercice 6. « Cuando sea mayor, trabajaré en Ziguinchor. » (cuando + subjonctif présent) ; « Si pudiera, ayudaría a mi barrio. » (si + subjonctif imparfait).

Exercice 7. « Si los jóvenes encontraran trabajo en Senegal, no se irían por mar. Haría falta que el Estado creara empleos para que pudieran quedarse. » Explication : « haría falta » est au conditionnel, donc « creara » et « pudieran » sont au subjonctif imparfait (concordance). Variante acceptée : « Sería necesario que el Estado creara... ».', 'texte', 60, false, 30
from public.courses c where c.slug = 'bac-espagnol'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Grammaire du Bac 1 : subjonctif, concordance des temps et hypothèse');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Grammaire du Bac 2 et expression écrite : ser et estar, por et para, discours indirect, essai et lettre', '## Objectifs de la leçon

- Choisir sans hésiter entre ser et estar, puis entre por et para.
- Passer du discours direct au discours indirect.
- Rédiger un essai argumenté et une lettre en espagnol.

## Fiche 1 : ser et estar

Ser exprime ce qui définit : l''identité, la nationalité, l''origine, la profession, la matière, la caractéristique essentielle, l''heure et la date, le lieu d''un événement, et il sert à former la voix passive.

- Soy senegalés y soy profesor. La mesa es de madera. Son las tres. La reunión es en el liceo. El puente fue construido en 2020.

Estar exprime la situation et l''état : la localisation d''une personne ou d''un objet, un état passager, le résultat d''une action, et il forme la progression avec le gérondif.

- Dakar está en la costa atlántica. Estoy cansado. La puerta está cerrada. Estamos estudiando.

Certains adjectifs changent de sens : ser listo (être intelligent) et estar listo (être prêt) ; ser malo (être méchant) et estar malo (être malade) ; ser rico (être riche) et estar rico (être délicieux) ; ser aburrido (être ennuyeux) et estar aburrido (s''ennuyer).

## Fiche 2 : por et para

Por regarde vers la cause ou le chemin parcouru.

- La cause : Lo hizo por amor. No salimos por la lluvia.
- Le lieu traversé : Paseamos por el centro de Saint-Louis.
- Le moyen : Te llamo por teléfono.
- Le moment approximatif : por la mañana, por la tarde.
- Le prix ou l''échange : Compré el libro por cinco mil francos CFA.
- Le complément d''agent du passif : El libro fue escrito por una autora senegalesa.

Para regarde vers le but ou la destination.

- Le but : Estudio para ser ingeniero.
- La destination : Salgo para Tambacounda.
- Le destinataire : Este regalo es para ti.
- L''échéance : El trabajo es para el lunes.
- Le point de vue : Para mí, la educación es lo más importante.

Astuce : si tu peux dire « à cause de » ou « à travers », c''est por ; si tu peux dire « afin de » ou « à destination de », c''est para.

## Fiche 3 : le discours indirect

Si le verbe introducteur est au présent (dice, pregunta), les temps ne changent pas : Fatou dice: «Estudio en Dakar». Fatou dice que estudia en Dakar.

Si le verbe introducteur est au passé (dijo, preguntó), les temps reculent.

- Présent devient imparfait : Dijo: «Estoy cansado». Dijo que estaba cansado.
- Passé simple ou passé composé devient plus-que-parfait : Awa dijo: «Ayer fui al mercado». Awa dijo que el día anterior había ido al mercado.
- Futur devient conditionnel : El profesor dijo: «Mañana habrá examen». El profesor dijo que al día siguiente habría examen.
- Impératif devient subjonctif imparfait : Mi padre me dijo: «Estudia más». Mi padre me dijo que estudiara más.

Les repères changent aussi : hoy devient aquel día, mañana devient al día siguiente, ayer devient el día anterior, aquí devient allí, este devient aquel. Les pronoms s''adaptent : « mi libro » devient « su libro ».

Pour une question : on introduit avec « si » (question fermée) ou on garde le mot interrogatif, sans point d''interrogation. Él preguntó: «¿Has terminado?». Él preguntó si yo había terminado. Ella preguntó: «¿Dónde está la biblioteca?». Ella preguntó dónde estaba la biblioteca.

## Méthode : l''essai argumenté

Le sujet pose souvent une question : « ¿Es la emigración la única solución para los jóvenes africanos? ».

- Introducción : présente le thème, pose la problématique, annonce ton plan.
- Desarrollo : deux ou trois paragraphes, chacun avec une idée, un argument et un exemple concret (Sénégal, Afrique, monde hispanique).
- Conclusión : réponds clairement à la question et ouvre une perspective.

Connecteurs utiles : en primer lugar, además, por otra parte, sin embargo, no obstante, por eso, por lo tanto, en conclusión, para terminar. Expressions d''opinion : creo que, pienso que, me parece que (indicatif) ; no creo que (subjonctif) ; es verdad que, es evidente que (indicatif) ; es necesario que, hace falta que (subjonctif).

## Méthode : la lettre

- En haut à droite, lieu et date : Dakar, 12 de marzo de 2026.
- Formule d''appel suivie de deux points : Querido Ibrahima: (familier) ; Estimado señor: ou Estimada señora: (formel).
- Corps : salutation, raison de la lettre, développement, souhaits.
- Formule finale : Un abrazo, Besos (familier) ; Atentamente, Le saluda atentamente (formel).
- Signature.

## Points clés

- Ser définit, estar situe ou décrit un état.
- Por : cause, passage, moyen, prix ; para : but, destination, échéance.
- Discours indirect au passé : chaque temps recule d''un cran, l''impératif devient subjonctif imparfait.
- Un essai réussi : plan clair, connecteurs, exemples précis.

## Exercices pratiques

Exercice 1. Complète avec ser ou estar : a) Mi madre ... enfermera. b) Hoy mi madre ... muy cansada. c) Saint-Louis ... en el norte de Senegal. d) El concierto ... en el estadio.

Exercice 2. Complète avec por ou para : a) Trabajo ... ganar dinero. b) Pasamos ... Thiès. c) Gracias ... tu ayuda. d) Este libro es ... mi hermana.

Exercice 3. Mets au discours indirect avec « Dijo que... » : a) «Vivo en Kaolack». b) «Iré a la universidad». c) «Compré un libro ayer».

Exercice 4. Mets au discours indirect avec « Le pidió que... » : «Cierra la ventana».

Exercice 5. Mets au discours indirect avec « Preguntó... » : «¿Cuándo empieza el examen?».

Exercice 6. Rédige l''introduction d''un essai sur le sujet : « ¿Es la escuela la clave del desarrollo? » (5 lignes).

Exercice 7. Rédige le début d''une lettre formelle au directeur d''une entreprise de Dakar pour demander un stage (lieu, date, formule d''appel, première phrase).

## Corrigé

Exercice 1. a) es (profession). b) está (état passager). c) está (localisation). d) es (lieu d''un événement).

Exercice 2. a) para (but). b) por (lieu traversé). c) por (cause). d) para (destinataire).

Exercice 3. a) Dijo que vivía en Kaolack. b) Dijo que iría a la universidad. c) Dijo que había comprado un libro el día anterior.

Exercice 4. Le pidió que cerrara la ventana.

Exercice 5. Preguntó cuándo empezaba el examen.

Exercice 6. Exemple : « Hoy en día, muchos países africanos invierten en la educación. Pero, ¿es la escuela realmente la clave del desarrollo? En primer lugar, veremos que la educación forma a los trabajadores del futuro; luego, mostraremos que la escuela sola no basta si no hay empleo para los jóvenes diplomados. »

Exercice 7. Exemple : « Dakar, 5 de abril de 2026. Estimado señor director: Me dirijo a usted para solicitar unas prácticas en su empresa durante las vacaciones de verano. » (« prácticas » = stage.)', 'texte', 60, false, 40
from public.courses c where c.slug = 'bac-espagnol'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Grammaire du Bac 2 et expression écrite : ser et estar, por et para, discours indirect, essai et lettre');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen : sujet d''entraînement corrigé', '## Présentation

Voici un sujet complet d''entraînement conçu pour ce cours. Ce n''est pas un sujet officiel du Bac. La répartition des points est indicative et non officielle ; elle sert seulement à t''entraîner à gérer ton temps. Fais-le en temps limité avant de lire le corrigé.

## Texte

« Yolanda vive en San Basilio de Palenque, un pueblo del Caribe colombiano fundado por africanos que huyeron de la esclavitud. Cada tarde, después de clase, se sienta con su abuela, que le enseña canciones en lengua palenquera. "Mi abuela dice que estas palabras vinieron de África hace siglos", explica la joven. Durante mucho tiempo, los habitantes del pueblo sufrieron el desprecio de la gente de la ciudad. Hoy, en cambio, muchos turistas vienen a descubrir su música y sus tradiciones. Yolanda quiere ser profesora para que los niños del pueblo no pierdan su cultura. "Si no protegemos nuestra lengua, desaparecerá con los ancianos", afirma. Su sueño sería viajar un día a África para conocer la tierra de sus antepasados. »

## Partie I : compréhension (8 points, indicatif)

1. ¿Dónde vive Yolanda y quiénes fundaron su pueblo? (2 pts)
2. Vrai ou faux ? Justifie par une citation. a) Los habitantes de Palenque siempre fueron respetados. b) Yolanda aprende la lengua palenquera en familia. (2 pts)
3. Trouve dans le texte un synonyme de « ancestros » et une expression qui s''oppose à « hoy ». (1 pt)
4. ¿Por qué quiere Yolanda ser profesora? (1 pt)
5. Explique en espagnol : « Si no protegemos nuestra lengua, desaparecerá con los ancianos ». (2 pts)

## Partie II : compétence linguistique (6 points, indicatif)

1. Mets au passé : « Yolanda quiere ser profesora para que los niños no pierdan su cultura. » (2 pts)
2. Mets au discours indirect en commençant par « Yolanda explicó que... » : « Mi abuela dice que estas palabras vinieron de África. » (1 pt)
3. Transforme en hypothèse irréelle : « Si no protegemos nuestra lengua, desaparecerá. » (1 pt)
4. Complète avec ser ou estar, por ou para : « Palenque ... en Colombia. Yolanda ... estudiante. Viaja ... aprender. Pasa ... la plaza. » (2 pts)

## Partie III : expression écrite (6 points, indicatif)

Traite un sujet au choix (15 lignes environ).

- Sujet A : « ¿Cómo proteger las lenguas y las tradiciones africanas en un mundo globalizado? »
- Sujet B : Yolanda escribe una carta a un joven senegalés para presentarle su pueblo y hacerle preguntas sobre Senegal.

## Corrigé de la partie I

1. Yolanda vive en San Basilio de Palenque, un pueblo del Caribe colombiano. Lo fundaron africanos que huyeron de la esclavitud.

2. a) Faux : « los habitantes del pueblo sufrieron el desprecio de la gente de la ciudad ». b) Vrai : « se sienta con su abuela, que le enseña canciones en lengua palenquera ».

3. Synonyme de « ancestros » : « antepasados ». Expression qui s''oppose à « hoy » : « durante mucho tiempo » (le passé du pueblo) ; « hace siglos » est aussi accepté.

4. Yolanda quiere ser profesora para que los niños del pueblo no pierdan su cultura, es decir, para transmitir la lengua y las tradiciones.

5. Yolanda piensa que, si los jóvenes no aprenden ni hablan la lengua palenquera, esta morirá cuando mueran los ancianos, que son los últimos que la conocen bien. Por eso es urgente enseñarla en la escuela.

Conseil : dans une explication, ne répète pas la phrase ; reformule avec tes mots et ajoute une conséquence.

## Corrigé de la partie II

1. « Yolanda quería ser profesora para que los niños no perdieran su cultura. » Le verbe principal passe à l''imparfait, donc « pierdan » devient « perdieran » (concordance des temps). « Quiso » est aussi accepté.

2. « Yolanda explicó que su abuela decía que aquellas palabras habían venido de África. » Quatre changements : dice devient decía, vinieron devient habían venido, estas devient aquellas, et mi devient su.

3. « Si no protegiéramos nuestra lengua, desaparecería. » Si + subjonctif imparfait, puis conditionnel.

4. « Palenque está en Colombia. Yolanda es estudiante. Viaja para aprender. Pasa por la plaza. »

## Corrigé de la partie III (exemple de plan et extraits)

Sujet A, plan possible.

- Introducción : la mondialisation rapproche les peuples mais menace les langues minoritaires ; problématique : comment protéger ce patrimoine ?
- Primera parte : l''école et la famille. Exemple : la grand-mère de Yolanda ; au Sénégal, l''enseignement en langues nationales comme le wolof ou le pulaar dans certaines classes.
- Segunda parte : la culture et le numérique : musique, radios communautaires, réseaux sociaux, tourisme culturel.
- Conclusión : la protection des langues est l''affaire de tous ; ouverture sur l''échange entre Afrique et Amérique latine.

Extrait : « En primer lugar, es necesario que la familia transmita la lengua a los niños, como hace la abuela de Yolanda. Sin embargo, la familia no basta: hace falta que la escuela también enseñe las lenguas locales. »

Sujet B, extrait : « San Basilio de Palenque, 3 de mayo de 2026. Querido Abdou: Te escribo desde mi pueblo, en el Caribe colombiano. Aquí la música y las canciones de los antepasados están presentes en todas partes. Me gustaría que me contaras cómo viven los jóvenes en Senegal. ¿Hablas varias lenguas? ¿Qué tradiciones son importantes para tu familia? Ojalá pueda visitarte un día. Un abrazo, Yolanda. »

## Conseils du correcteur

- Les points de langue se gagnent avec des règles sûres : apprends la concordance des temps.
- En expression écrite, les correcteurs valorisent un plan visible, des connecteurs et des exemples précis.
- Évite de recopier le texte : réutilise ses idées avec tes propres mots.

## Exercices pratiques

Exercice 1. Calcule ta note sur 20 à partir de tes résultats partiels, en appliquant le barème indicatif.

Exercice 2. Relève dans le texte un verbe au subjonctif présent et justifie son emploi.

Exercice 3. Relève un verbe au conditionnel et indique sa valeur.

Exercice 4. Mets au discours indirect : Yolanda afirmó: «Mañana cantaré con mi abuela».

Exercice 5. Rédige la conclusion du sujet A en 4 lignes.

## Corrigé

Exercice 1. Additionne les points des trois parties (8 + 6 + 6 = 20 au maximum). Par exemple, 6/8 + 4/6 + 4/6 = 14/20.

Exercice 2. « pierdan » : subjonctif présent après « para que », qui exprime le but.

Exercice 3. « sería » : conditionnel qui exprime un souhait, un rêve.

Exercice 4. Yolanda afirmó que al día siguiente cantaría con su abuela.

Exercice 5. Exemple : « En conclusión, proteger las lenguas africanas es responsabilidad de las familias, de la escuela y de los Estados. Si todos actuáramos juntos, nuestras culturas seguirían vivas. Tal vez el ejemplo de Palenque pueda inspirar a la juventud senegalesa. »', 'texte', 60, false, 50
from public.courses c where c.slug = 'bac-espagnol'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen : sujet d''entraînement corrigé');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : révision intensive « veille du Bac » en espagnol', '## Fiche du cours vidéo

- Durée : 1h30.
- Thème : séance de révision intensive la veille de l''épreuve d''espagnol LV2 du Bac.
- Objectifs : réactiver les règles clés (subjonctif, concordance, hypothèse, ser et estar, por et para, discours indirect), corriger des exercices de type Bac, revoir la gestion du temps et la méthode d''expression écrite.
- Matériel : tableau ou diaporama, fiches de conjugaison, un texte court imprimé, brouillon.
- Prérequis : leçons 1 à 5 de ce cours. Les exercices sont des exercices d''entraînement, pas des sujets officiels.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

« ¡Buenas tardes a todos! Demain, c''est l''épreuve d''espagnol. Ce soir, pas de notions nouvelles : nous consolidons ce que vous savez déjà. Nous allons revoir les règles qui rapportent le plus de points, corriger ensemble des exercices type Bac, puis parler de la gestion du temps. À mi-parcours, un quiz rapide ; à la fin, une évaluation de cinq questions. Préparez une feuille et un stylo. »

Visuel : le plan de la séance en six étapes.

## 05:00 – 15:00 · Rappel 1 : le subjonctif présent et imparfait

« Première règle d''or : le subjonctif présent se forme sur le "yo" du présent. Tengo donne tenga, hago donne haga, conozco donne conozca. Les verbes en -ar prennent un e, les verbes en -er et -ir prennent un a. N''oubliez pas les six irréguliers : sea, vaya, esté, dé, sepa, haya.

Le subjonctif imparfait se forme sur la troisième personne du pluriel du passé simple : tuvieron donne tuviera, hicieron donne hiciera, fueron donne fuera, dijeron donne dijera. Si vous connaissez votre passé simple, vous connaissez votre subjonctif imparfait.

Écrivez avec moi au tableau quelques phrases complètes : "Es necesario que todos los niños vayan a la escuela." "Mis padres quieren que yo sea médico." "Ojalá haga buen tiempo mañana." Dans chaque phrase, entourez le déclencheur du subjonctif : une expression impersonnelle, un verbe de volonté, ojalá. Si vous savez repérer le déclencheur, vous ne vous tromperez pas de mode. »

Visuel : deux colonnes, présent du « yo » et subjonctif présent ; passé simple « ellos » et subjonctif imparfait. Question à poser : « Quel est le subjonctif imparfait de "poder" ? » Réponse attendue : pudiera.

## 15:00 – 25:00 · Rappel 2 : la concordance des temps et l''hypothèse

« Regardez le verbe principal. Présent, futur ou impératif : subjonctif présent. Passé ou conditionnel : subjonctif imparfait. "Quiero que vengas", mais "quería que vinieras" et "me gustaría que vinieras".

Pour l''hypothèse, retenez trois formules. Si tengo tiempo, iré. Si tuviera tiempo, iría. Si hubiera tenido tiempo, habría ido. Et jamais, jamais de conditionnel juste après "si". Écrivez-le en gros sur votre fiche : "si tendría" est interdit. »

Visuel : le tableau des trois hypothèses avec une flèche « interdit » sur « si + conditionnel ».

Question à poser : « Comment dit-on : si nous protégions la forêt de Casamance, il y aurait plus de pluie ? » Laisser une minute, puis corriger : « Si protegiéramos el bosque de Casamance, habría más lluvia. » Faire remarquer l''accent écrit sur « protegiéramos » et le conditionnel de « haber », qui est « habría ». Autre piège à signaler : après « como si », on emploie toujours le subjonctif imparfait : « Habla como si fuera el jefe. »

## 25:00 – 35:00 · Rappel 3 : ser et estar, por et para, discours indirect

« Ser définit : soy senegalés, es profesora, son las cinco. Estar situe ou décrit un état : Dakar está en la costa, estoy nervioso. Attention aux adjectifs pièges : estar listo, c''est être prêt ; ser listo, c''est être intelligent. Demain, j''espère que vous serez les deux !

Por, c''est la cause et le chemin : por la lluvia, por el centro. Para, c''est le but et la destination : para aprobar, para Dakar.

Au discours indirect introduit par un verbe au passé, chaque temps recule : présent vers imparfait, passé vers plus-que-parfait, futur vers conditionnel, impératif vers subjonctif imparfait. "Mañana" devient "al día siguiente". »

Visuel : un tableau de transformation du discours direct au discours indirect.

## 35:00 – 45:00 · Correction commentée : exercice de grammaire type Bac

Énoncé projeté : « 1) Pon en pasado: El profesor exige que los alumnos lleguen a tiempo. 2) Transforma en hipótesis irreal: Si estudio, apruebo. 3) Pon en estilo indirecto: Mi madre me dijo: "Ven temprano". 4) Completa: Este regalo es (por/para) ti. »

« Corrigeons. Un : El profesor exigió que los alumnos llegaran a tiempo. Le principal est au passé, donc subjonctif imparfait. Deux : Si estudiara, aprobaría. Trois : Mi madre me dijo que viniera temprano : l''impératif devient subjonctif imparfait. Quatre : para ti, car c''est le destinataire. Si vous avez quatre bonnes réponses, bravo. Sinon, notez la règle oubliée sur votre fiche d''erreurs. »

## 45:00 – 50:00 · Pause active : quiz éclair

« Petite pause, mais le cerveau continue ! Cinq questions, répondez sur votre feuille en dix secondes chacune. »

- Subjonctif présent de « ir », première personne : vaya.
- Traduction de « estar malo » : être malade.
- « Cuando ... (tener) dinero, viajaré » : tenga.
- Por ou para : « Compré el pan ... 300 francos » : por.
- Que signifie « constipado » ? Enrhumé.

« Comptez vos points. Quatre ou cinq : vous êtes prêts. Moins de trois : relisez votre fiche ce soir, calmement. »

## 50:00 – 1:05:00 · Correction commentée : compréhension d''un texte court

Texte projeté : « Aminata trabaja en un mercado de Ziguinchor. Antes vendía pescado, pero desde hace dos años tiene un pequeño restaurante. Cada día cocina para los estudiantes de la universidad. "Me gustaría que mis hijas estudiaran y no tuvieran que levantarse a las cinco como yo", dice. »

« Question 1 : ¿Dónde trabaja Aminata? Réponse complète : Aminata trabaja en un mercado de Ziguinchor. Question 2 : vrai ou faux, Aminata siempre ha tenido un restaurante. Faux, et je justifie : "Antes vendía pescado". Question 3 : explique le souhait d''Aminata. Elle veut que ses filles fassent des études et aient une vie moins dure. Remarquez la structure "me gustaría que estudiaran" : conditionnel, donc subjonctif imparfait. Le texte vous donne lui-même un exemple de concordance : profitez-en dans vos réponses.

Question 4 : trouvez dans le texte un contraire de « después ». Réponse : « antes ». Question 5 : mettez au discours indirect la phrase d''Aminata en commençant par « Aminata dijo que... ». Réponse : « Aminata dijo que le gustaría que sus hijas estudiaran y no tuvieran que levantarse a las cinco como ella. » Observez bien trois changements : "dice" devient "dijo", "mis hijas" devient "sus hijas", "yo" devient "ella". Le conditionnel et le subjonctif imparfait, eux, ne bougent pas : ils sont déjà au bon temps.

Erreur fréquente à signaler : beaucoup de candidats répondent "Aminata trabaja a Ziguinchor". En espagnol, la situation dans une ville se dit avec "en" : trabaja en Ziguinchor, vive en Dakar. "A" indique le mouvement : va a Ziguinchor. »

Visuel : le texte avec les mots-clés surlignés et les numéros de ligne.

## 1:05:00 – 1:15:00 · Méthode express de l''expression écrite

« Pour l''essai : introduction avec la question posée, deux parties avec un argument et un exemple chacune, conclusion qui répond. Utilisez vos connecteurs : en primer lugar, además, sin embargo, por eso, en conclusión. Pour la lettre : lieu et date, "Querido" ou "Estimado señor" suivi de deux points, formule finale adaptée. Placez au moins un subjonctif et une hypothèse bien construits : c''est là que vous montrez votre niveau de Terminale. Et choisissez des exemples africains précis : la migration vers les Canaries, la Guinée équatoriale, l''héritage africain à Cuba ou en Colombie. »

Lecture à voix haute d''une introduction modèle sur le sujet « ¿Debe Senegal proteger sus lenguas nacionales? » : « Senegal es un país donde se hablan muchas lenguas: el wolof, el pulaar, el serer, el diola y otras. Sin embargo, el francés sigue siendo la lengua de la administración. ¿Es necesario proteger las lenguas nacionales? En primer lugar, veremos que son la base de nuestra identidad; luego, mostraremos que también pueden ser útiles para la educación. »

« Remarquez : une phrase de contexte, une problématique sous forme de question avec les deux points d''interrogation, et l''annonce du plan avec "en primer lugar" et "luego". C''est simple, clair, et le correcteur sait immédiatement où vous allez. »

Visuel : une grille de relecture en cinq points (plan, connecteurs, subjonctif, accents, longueur).

## 1:15:00 – 1:22:00 · Gestion du temps et du stress

« Demain, lisez d''abord tout le sujet. Répartissez votre temps de façon indicative : un sixième environ pour la lecture, un gros tiers pour la compréhension, un cinquième pour la grammaire, un quart pour l''expression, et quelques minutes pour la relecture. Vérifiez la durée officielle sur votre convocation. Si une question bloque, passez. Ce soir : un dernier coup d''œil à vos fiches, puis dormez. Prévoyez vos stylos, votre pièce d''identité et votre convocation. »

## 1:22:00 – 1:30:00 · Synthèse et évaluation finale

« Pour finir, cinq questions. Notez vos réponses, puis nous corrigeons. »

- Question 1 : Mets au passé : « Quiero que me ayudes ». Réponse : Quería que me ayudaras.
- Question 2 : Complète : « Si (tener) un coche, iría a Saly ». Réponse : tuviera.
- Question 3 : Ser ou estar : « La fiesta ... en casa de Moussa ». Réponse : es (lieu d''un événement).
- Question 4 : Discours indirect : Dijo: «Volveré mañana». Réponse : Dijo que volvería al día siguiente.
- Question 5 : Quel est le seul pays d''Afrique subsaharienne où l''espagnol est langue officielle ? Réponse : la Guinée équatoriale.

« Synthèse : subjonctif bien formé, concordance respectée, jamais de conditionnel après "si", ser pour définir et estar pour situer, por pour la cause et para pour le but. Vous avez travaillé, vous êtes prêts. ¡Mucha suerte mañana y hasta pronto! »', 'video', 90, false, 60
from public.courses c where c.slug = 'bac-espagnol'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : révision intensive « veille du Bac » en espagnol');

-- Cours : Arabe LV2 : réussir l'épreuve du Bac
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'bac-arabe', (select id from public.levels where name = 'Terminale'), null, 'Arabe (LV2)', 'Arabe LV2 : réussir l''épreuve du Bac', 'Ce cours d''examen prépare l''épreuve d''arabe LV2 du Baccalauréat : lecture et analyse d''un texte, grammaire du Bac (cas et déclinaison, phrase nominale et phrase verbale, verbes dérivés usuels, nombres, relatifs, phrase conditionnelle), vocabulaire thématique (éducation, société, environnement) et expression écrite (essai court, lettre). Il s''adresse surtout aux candidats des séries L, et à tout élève de Terminale qui présente l''arabe en LV2. Les explications sont en français, les exemples en arabe vocalisé avec translittération et traduction. Prérequis : lire couramment l''arabe et maîtriser les bases du collège et de la Seconde.', true, 211
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comprendre l''épreuve et méthode de travail', '## Objectifs de la leçon

- Savoir comment se présente l''épreuve d''arabe LV2 du Bac et ce que le correcteur attend.
- Connaître une méthode pour chaque type d''exercice.
- Repérer les erreurs les plus fréquentes et apprendre à les éviter.
- Organiser tes révisions sur 10 semaines.

## À qui s''adresse ce cours

Ce cours s''adresse d''abord aux élèves de Terminale des séries L, et plus largement à tout candidat qui présente l''arabe en deuxième langue vivante, quelle que soit sa série (L, S ou G), selon les options prévues par les textes officiels en vigueur. La durée de l''épreuve, son coefficient et son barème sont fixés par ces textes : renseigne-toi auprès de ton établissement. La méthode présentée ici reste valable dans tous les cas.

Le programme révisé couvre le lycée : la Seconde (phrase nominale, phrase verbale, accompli et inaccompli), la Première (cas et déclinaison, كَانَ et إِنَّ, nombres) et la Terminale (verbes dérivés, relatifs, phrase conditionnelle, expression écrite argumentée).

Dans ce cours, chaque exemple arabe est vocalisé, suivi de sa translittération entre parenthèses et de sa traduction. Les lettres particulières sont notées ainsi : ʿ pour ع, ʾ pour la hamza ء, ḥ pour ح, kh pour خ, dh pour ذ, sh pour ش, ṣ pour ص, ḍ pour ض, ṭ pour ط, ẓ pour ظ, gh pour غ ; les voyelles longues sont ā, ī, ū.

## Comment se présente l''épreuve

L''épreuve repose en général sur un texte en arabe moderne : récit, article, lettre ou dialogue, souvent sur un thème de société (éducation, famille, jeunesse, environnement, santé, solidarité). On y trouve habituellement trois familles d''exercices.

- Compréhension : questions sur le texte, vrai ou faux, recherche de synonymes ou de contraires, titre à proposer.
- Langue : analyse grammaticale de mots (cas, fonction), transformations (pluriel, négation, ajout de كَانَ ou de إِنَّ), conjugaison, nombres, dérivés.
- Expression écrite : un paragraphe ou un court essai, ou une lettre, en lien avec le thème du texte.

La présentation exacte varie : lis toutes les consignes avant de commencer.

## Comprendre les consignes en arabe

Les consignes sont souvent rédigées en arabe. Apprends-les par cœur.

- أَجِبْ عَنِ الْأَسْئِلَةِ (ajib ʿani l-asʾilati) : réponds aux questions.
- ضَعْ عُنْوَانًا مُنَاسِبًا لِلنَّصِّ (ḍaʿ ʿunwānan munāsiban li-n-naṣṣi) : donne un titre approprié au texte.
- اِشْرَحِ الْكَلِمَاتِ التَّالِيَةَ (ishraḥi l-kalimāti t-tāliyata) : explique les mots suivants.
- هَاتِ ضِدَّ (hāti ḍidda) : donne le contraire de.
- هَاتِ جَمْعَ (hāti jamʿa) : donne le pluriel de ; هَاتِ مُفْرَدَ (hāti mufrada) : donne le singulier de.
- أَعْرِبْ (aʿrib) : fais l''analyse grammaticale.
- صَحِيحٌ أَمْ خَطَأٌ (ṣaḥīḥun am khaṭaʾun) : vrai ou faux.

Et les mots interrogatifs : مَنْ (man, qui), مَاذَا (mādhā, que, quoi), أَيْنَ (ayna, où), مَتَى (matā, quand), كَيْفَ (kayfa, comment), لِمَاذَا (limādhā, pourquoi), كَمْ (kam, combien).

## Méthode pour la compréhension

Lis le texte une première fois en entier pour saisir le thème. À la deuxième lecture, souligne les personnages, les lieux, les mots de liaison et les verbes principaux. Pour répondre, reprends les mots de la question et complète avec l''information du texte. À la question أَيْنَ تَعِيشُ فَاطِمَةُ؟ (ayna taʿīshu Fāṭimatu? : où vit Fatima ?), on répond : تَعِيشُ فَاطِمَةُ فِي قَرْيَةٍ صَغِيرَةٍ (taʿīshu Fāṭimatu fī qaryatin ṣaghīratin : Fatima vit dans un petit village). Pour un vrai ou faux, justifie toujours par une courte citation du texte.

## Méthode pour la langue

Avant de répondre, demande-toi trois choses : quel est le type de phrase (nominale ou verbale) ? Quelle est la fonction du mot ? Quel cas ou quel mode en découle ? Écris ensuite la voyelle finale clairement : c''est elle que le correcteur regarde.

## Méthode pour l''expression écrite

Fais un plan au brouillon : une introduction d''une ou deux phrases, deux idées illustrées par un exemple, une conclusion. Écris des phrases courtes et correctes, vocalise les fins de mots dont tu es sûr, et réutilise le vocabulaire du texte. Garde du temps pour relire l''orthographe et les accords.

## Organiser son temps

Répartition indicative, à adapter à la durée officielle de ton épreuve : environ 15 % pour la lecture, 35 % pour la compréhension, 25 % pour la langue, 20 % pour l''expression et 5 % pour la relecture.

## Les erreurs fréquentes

- Accorder au pluriel un verbe placé avant son sujet : on écrit ذَهَبَ الطُّلَّابُ (dhahaba ṭ-ṭullābu : les étudiants sont partis), et non ذَهَبُوا الطُّلَّابُ.
- Oublier qu''un pluriel de non-humains s''accorde au féminin singulier : الْكُتُبُ مُفِيدَةٌ (al-kutubu mufīdatun : les livres sont utiles).
- Se tromper de démonstratif : هَذَا الْكِتَابُ (hādhā l-kitābu : ce livre), mais هَذِهِ الْمَدْرَسَةُ (hādhihi l-madrasatu : cette école).
- Mettre la terminaison -a au lieu de -i après une préposition : فِي الْمَدْرَسَةِ (fī l-madrasati), avec une kasra.
- Confondre la tāʾ marbūṭa ة et le hāʾ ه, ou le yāʾ ي et l''alif maqṣūra ى (عَلَى s''écrit avec ى).
- Mal accorder les nombres de 3 à 10 : on écrit ثَلَاثَةُ كُتُبٍ (thalāthatu kutubin : trois livres), et non ثَلَاثُ كُتُبٍ.

## Plan de révision sur 10 semaines

- Semaine 1 : diagnostic sur un sujet complet, lecture de cette leçon, carnet de vocabulaire.
- Semaine 2 : lecture et analyse de texte, consignes en arabe (leçon 2).
- Semaine 3 : vocabulaire thématique et expression écrite (leçon 2).
- Semaine 4 : cas et déclinaison (leçon 3).
- Semaine 5 : phrase nominale, phrase verbale, كَانَ et إِنَّ, modes du verbe (leçon 3).
- Semaine 6 : verbes dérivés et nombres (leçon 4).
- Semaine 7 : relatifs et phrase conditionnelle (leçon 4).
- Semaine 8 : sujet type en temps limité (leçon 5).
- Semaine 9 : deuxième sujet blanc et fiche d''erreurs personnelles.
- Semaine 10 : révision légère et cours vidéo « veille du Bac ».

Chaque jour, lis au moins un court paragraphe en arabe à voix haute et apprends cinq mots nouveaux.

## Points clés

- Apprends les consignes et les mots interrogatifs : ils rapportent des points faciles.
- Réponds en phrases complètes en reprenant les mots de la question.
- Vérifie la fonction du mot avant d''écrire sa voyelle finale.
- La régularité compte plus que le volume.

## Exercices pratiques

Exercice 1. Traduis les consignes : أَجِبْ عَنِ الْأَسْئِلَةِ ; هَاتِ ضِدَّ ; أَعْرِبْ.

Exercice 2. Associe chaque mot interrogatif à son sens : مَتَى ، كَيْفَ ، لِمَاذَا.

Exercice 3. Corrige : ذَهَبُوا الطُّلَّابُ إِلَى الْمَلْعَبِ.

Exercice 4. Corrige : هَذَا الْمَدْرَسَةُ كَبِيرَةٌ.

Exercice 5. Réponds par une phrase complète : أَيْنَ يَسْكُنُ عَلِيٌّ؟ (Ali habite à Touba.)

Exercice 6. Ton épreuve dure, par hypothèse, 2 heures. Calcule le temps de chaque partie selon la répartition indicative.

## Corrigé

Exercice 1. « Réponds aux questions » ; « donne le contraire de » ; « fais l''analyse grammaticale ».

Exercice 2. مَتَى (matā) : quand ; كَيْفَ (kayfa) : comment ; لِمَاذَا (limādhā) : pourquoi.

Exercice 3. ذَهَبَ الطُّلَّابُ إِلَى الْمَلْعَبِ (dhahaba ṭ-ṭullābu ilā l-malʿabi : les étudiants sont allés au stade). Le verbe placé avant le sujet reste au singulier.

Exercice 4. هَذِهِ الْمَدْرَسَةُ كَبِيرَةٌ (hādhihi l-madrasatu kabīratun : cette école est grande). مَدْرَسَةٌ est féminin, donc démonstratif féminin.

Exercice 5. يَسْكُنُ عَلِيٌّ فِي طُوبَى (yaskunu ʿAliyyun fī Ṭūbā : Ali habite à Touba).

Exercice 6. 2 heures = 120 minutes. Lecture : 15 % = 18 min ; compréhension : 35 % = 42 min ; langue : 25 % = 30 min ; expression : 20 % = 24 min ; relecture : 5 % = 6 min. Total : 18 + 42 + 30 + 24 + 6 = 120 min.', 'texte', 50, true, 10
from public.courses c where c.slug = 'bac-arabe'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comprendre l''épreuve et méthode de travail');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Lecture, analyse de texte, vocabulaire thématique et expression écrite', '## Objectifs de la leçon

- Lire et analyser un texte en arabe avec méthode.
- Maîtriser le vocabulaire des thèmes du Bac : éducation, société, environnement.
- Rédiger un court essai et une lettre en arabe.

## Texte d''étude

Texte d''entraînement rédigé pour ce cours.

تَعِيشُ فَاطِمَةُ فِي قَرْيَةٍ صَغِيرَةٍ قُرْبَ مَدِينَةِ تِيَاس. فِي الْمَاضِي كَانَتِ الْأَشْجَارُ كَثِيرَةً حَوْلَ الْقَرْيَةِ، لَكِنَّ الْجَفَافَ وَقَطْعَ الْأَشْجَارِ غَيَّرَا الْمَنْظَرَ. لِذَلِكَ قَرَّرَتْ فَاطِمَةُ أَنْ تَجْمَعَ شَبَابَ الْقَرْيَةِ، وَقَالَتْ لَهُمْ: «إِذَا غَرَسْنَا الْأَشْجَارَ الْيَوْمَ، وَجَدَ أَوْلَادُنَا الظِّلَّ غَدًا». وَفِي يَوْمِ الْأَحَدِ اجْتَمَعَ الشَّبَابُ وَغَرَسُوا مِائَةَ شَجَرَةٍ. وَالْآنَ يَسْقِيهَا التَّلَامِيذُ بَعْدَ الدُّرُوسِ.

Translittération : taʿīshu Fāṭimatu fī qaryatin ṣaghīratin qurba madīnati Tiyās. fī l-māḍī kānati l-ashjāru kathīratan ḥawla l-qaryati, lākinna l-jafāfa wa-qaṭʿa l-ashjāri ghayyarā l-manẓara. li-dhālika qarrarat Fāṭimatu an tajmaʿa shabāba l-qaryati, wa-qālat lahum : « idhā gharasnā l-ashjāra l-yawma, wajada awlādunā ẓ-ẓilla ghadan ». wa-fī yawmi l-aḥadi jtamaʿa sh-shabābu wa-gharasū miʾata shajaratin. wa-l-āna yasqīhā t-talāmīdhu baʿda d-durūsi.

Traduction : Fatima vit dans un petit village près de la ville de Thiès. Autrefois, les arbres étaient nombreux autour du village, mais la sécheresse et la coupe des arbres ont changé le paysage. C''est pourquoi Fatima a décidé de réunir les jeunes du village et leur a dit : « Si nous plantons des arbres aujourd''hui, nos enfants trouveront de l''ombre demain. » Le dimanche, les jeunes se sont réunis et ont planté cent arbres. Maintenant, les élèves les arrosent après les cours.

## Méthode d''analyse en quatre étapes

- Étape 1, la situation : qui ? Fatima et les jeunes. Où ? Un village près de Thiès. Quand ? Autrefois, puis aujourd''hui.
- Étape 2, le problème : la sécheresse et la coupe des arbres ont changé le paysage.
- Étape 3, la solution : Fatima mobilise les jeunes, qui plantent cent arbres.
- Étape 4, le message : chacun peut agir pour l''environnement, et l''effort d''aujourd''hui profite aux générations futures.

Repère aussi les mots de liaison, qui révèlent la structure : لَكِنَّ (lākinna, mais) annonce le problème, لِذَلِكَ (li-dhālika, c''est pourquoi) annonce la réaction.

## Le vocabulaire de l''analyse

- النَّصُّ (an-naṣṣu) : le texte ; الْعُنْوَانُ (al-ʿunwānu) : le titre.
- الْكَاتِبُ (al-kātibu) : l''auteur ; الشَّخْصِيَّاتُ (ash-shakhṣiyyātu) : les personnages.
- الْفِكْرَةُ الرَّئِيسِيَّةُ (al-fikratu r-raʾīsiyyatu) : l''idée principale.
- يَتَحَدَّثُ النَّصُّ عَنْ... (yataḥaddathu n-naṣṣu ʿan...) : le texte parle de...

## Vocabulaire thématique : l''éducation

- التَّعْلِيمُ (at-taʿlīmu) : l''enseignement.
- الْمَدْرَسَةُ (al-madrasatu), pluriel الْمَدَارِسُ (al-madārisu) : l''école, les écoles.
- الْجَامِعَةُ (al-jāmiʿatu) : l''université.
- الِامْتِحَانُ (al-imtiḥānu) : l''examen ; النَّجَاحُ (an-najāḥu) : la réussite.
- الْأُمِّيَّةُ (al-ummiyyatu) : l''analphabétisme ; مَحْوُ الْأُمِّيَّةِ (maḥwu l-ummiyyati) : l''alphabétisation.
- الْمَعْرِفَةُ (al-maʿrifatu) : la connaissance.

## Vocabulaire thématique : la société

- الْمُجْتَمَعُ (al-mujtamaʿu) : la société ; الْأُسْرَةُ (al-usratu) : la famille.
- الشَّبَابُ (ash-shabābu) : les jeunes, la jeunesse.
- الْبَطَالَةُ (al-baṭālatu) : le chômage ; الْهِجْرَةُ (al-hijratu) : l''émigration.
- التَّضَامُنُ (at-taḍāmunu) : la solidarité.
- الْحُقُوقُ وَالْوَاجِبَاتُ (al-ḥuqūqu wa-l-wājibātu) : les droits et les devoirs.

## Vocabulaire thématique : l''environnement

- الْبِيئَةُ (al-bīʾatu) : l''environnement ; التَّلَوُّثُ (at-talawwuthu) : la pollution.
- النُّفَايَاتُ (an-nufāyātu) : les déchets.
- الْجَفَافُ (al-jafāfu) : la sécheresse ; التَّصَحُّرُ (at-taṣaḥḥuru) : la désertification.
- الْغَابَةُ (al-ghābatu) : la forêt ; الشَّجَرَةُ (ash-shajaratu), pluriel الْأَشْجَارُ (al-ashjāru) : l''arbre, les arbres.
- تَغَيُّرُ الْمُنَاخِ (taghayyuru l-munākhi) : le changement climatique.

Contraires utiles : كَثِيرٌ (kathīrun, nombreux) et قَلِيلٌ (qalīlun, peu nombreux) ; قَرِيبٌ (qarībun, proche) et بَعِيدٌ (baʿīdun, lointain) ; أَمْسِ (amsi, hier) et غَدًا (ghadan, demain) ; النَّجَاحُ (an-najāḥu, la réussite) et الرُّسُوبُ (ar-rusūbu, l''échec à un examen).

## Méthode : le court essai

Un essai comprend trois parties : الْمُقَدِّمَةُ (al-muqaddimatu, l''introduction), الْعَرْضُ (al-ʿarḍu, le développement) et الْخَاتِمَةُ (al-khātimatu, la conclusion). Connecteurs : أَوَّلًا (awwalan, d''abord), ثَانِيًا (thāniyan, deuxièmement), ثُمَّ (thumma, ensuite), بِالْإِضَافَةِ إِلَى ذَلِكَ (bi-l-iḍāfati ilā dhālika, de plus), لِأَنَّ (li-anna, parce que), فِي رَأْيِي (fī raʾyī, à mon avis), وَفِي الْخِتَامِ (wa-fī l-khitāmi, en conclusion).

Phrases modèles :

- أَوَّلًا، يَجِبُ عَلَيْنَا أَنْ نَغْرِسَ الْأَشْجَارَ (awwalan, yajibu ʿalaynā an naghrisa l-ashjāra) : d''abord, nous devons planter des arbres.
- ثَانِيًا، لَا تَرْمُوا النُّفَايَاتِ فِي الشَّارِعِ (thāniyan, lā tarmū n-nufāyāti fī sh-shāriʿi) : ensuite, ne jetez pas les déchets dans la rue.
- فِي رَأْيِي، التَّعْلِيمُ مِفْتَاحُ التَّنْمِيَةِ (fī raʾyī, at-taʿlīmu miftāḥu t-tanmiyati) : à mon avis, l''enseignement est la clé du développement.
- وَفِي الْخِتَامِ، حِمَايَةُ الْبِيئَةِ مَسْؤُولِيَّةُ الْجَمِيعِ (wa-fī l-khitāmi, ḥimāyatu l-bīʾati masʾūliyyatu l-jamīʿi) : en conclusion, protéger l''environnement est la responsabilité de tous.

## Méthode : la lettre

- Lieu et date en haut : دَاكَار، فِي 15 مَارِس 2026 (Dākār, fī 15 māris 2026).
- Lettre amicale : عَزِيزِي عُمَر (ʿazīzī ʿUmar : cher Omar), puis السَّلَامُ عَلَيْكُمْ وَرَحْمَةُ اللَّهِ وَبَرَكَاتُهُ (as-salāmu ʿalaykum wa-raḥmatu llāhi wa-barakātuhu).
- Prise de nouvelles : أَرْجُو أَنْ تَكُونَ فِي صِحَّةٍ جَيِّدَةٍ (arjū an takūna fī ṣiḥḥatin jayyidatin : j''espère que tu es en bonne santé).
- Objet : أَكْتُبُ إِلَيْكَ لِأُخْبِرَكَ بِنَجَاحِي فِي الِامْتِحَانِ (aktubu ilayka li-ukhbiraka bi-najāḥī fī l-imtiḥāni : je t''écris pour t''annoncer ma réussite à l''examen).
- Fin : أَبْلِغْ سَلَامِي إِلَى أُسْرَتِكَ (abligh salāmī ilā usratika : transmets mes salutations à ta famille), puis صَدِيقُكَ الْمُخْلِصُ (ṣadīquka l-mukhliṣu : ton ami fidèle).
- Lettre officielle : حَضْرَةَ السَّيِّدِ الْمُدِيرِ الْمُحْتَرَمِ (ḥaḍrata s-sayyidi l-mudīri l-muḥtarami : Monsieur le Directeur), تَحِيَّةً طَيِّبَةً، وَبَعْدُ (taḥiyyatan ṭayyibatan, wa-baʿdu : salutations, et ensuite), et pour finir وَتَفَضَّلُوا بِقَبُولِ فَائِقِ الِاحْتِرَامِ (wa-tafaḍḍalū bi-qabūli fāʾiqi l-iḥtirāmi : veuillez agréer l''expression de mon profond respect).

## Points clés

- Situation, problème, solution, message : quatre étapes pour analyser un texte.
- Apprends le vocabulaire par thème, avec les pluriels et les contraires.
- Un essai : introduction, deux idées avec exemples, conclusion, connecteurs.
- Une lettre : lieu et date, formule d''appel, objet, formule finale adaptée.

## Exercices pratiques

Exercice 1. أَيْنَ تَعِيشُ فَاطِمَةُ؟ (Où vit Fatima ?) Réponds en arabe.

Exercice 2. مَا الَّذِي غَيَّرَ مَنْظَرَ الْقَرْيَةِ؟ (mā lladhī ghayyara manẓara l-qaryati? : qu''est-ce qui a changé le paysage du village ?) Réponds en arabe.

Exercice 3. صَحِيحٌ أَمْ خَطَأٌ : كَانَتِ الْأَشْجَارُ قَلِيلَةً فِي الْمَاضِي. Justifie.

Exercice 4. كَمْ شَجَرَةً غَرَسَ الشَّبَابُ؟ (kam shajaratan gharasa sh-shabābu? : combien d''arbres les jeunes ont-ils plantés ?)

Exercice 5. هَاتِ مِنَ النَّصِّ ضِدَّ : قَلِيلَةً ، أَمْسِ.

Exercice 6. Propose un titre en arabe pour le texte.

Exercice 7. Écris en arabe trois phrases d''un essai sur la protection de l''environnement, avec أَوَّلًا, ثَانِيًا et وَفِي الْخِتَامِ.

## Corrigé

Exercice 1. تَعِيشُ فَاطِمَةُ فِي قَرْيَةٍ صَغِيرَةٍ قُرْبَ مَدِينَةِ تِيَاس (taʿīshu Fāṭimatu fī qaryatin ṣaghīratin qurba madīnati Tiyās).

Exercice 2. غَيَّرَ الْجَفَافُ وَقَطْعُ الْأَشْجَارِ مَنْظَرَ الْقَرْيَةِ (ghayyara l-jafāfu wa-qaṭʿu l-ashjāri manẓara l-qaryati : la sécheresse et la coupe des arbres ont changé le paysage du village). Le verbe placé avant le sujet reste au singulier.

Exercice 3. خَطَأٌ (khaṭaʾun : faux), لِأَنَّ النَّصَّ يَقُولُ (li-anna n-naṣṣa yaqūlu : parce que le texte dit) : « كَانَتِ الْأَشْجَارُ كَثِيرَةً ».

Exercice 4. غَرَسَ الشَّبَابُ مِائَةَ شَجَرَةٍ (gharasa sh-shabābu miʾata shajaratin : les jeunes ont planté cent arbres). Remarque : après كَمْ interrogatif, le nom est au singulier et au cas direct (شَجَرَةً).

Exercice 5. Contraire de قَلِيلَةً : كَثِيرَةً (kathīratan). Contraire de أَمْسِ : غَدًا (ghadan).

Exercice 6. Exemples : الشَّبَابُ وَالْبِيئَةُ (ash-shabābu wa-l-bīʾatu : les jeunes et l''environnement) ; شَجَرَةٌ لِلْمُسْتَقْبَلِ (shajaratun li-l-mustaqbali : un arbre pour l''avenir).

Exercice 7. Exemple : أَوَّلًا، يَجِبُ عَلَيْنَا أَنْ نَغْرِسَ الْأَشْجَارَ. ثَانِيًا، لَا تَرْمُوا النُّفَايَاتِ فِي الشَّارِعِ. وَفِي الْخِتَامِ، حِمَايَةُ الْبِيئَةِ مَسْؤُولِيَّةُ الْجَمِيعِ. Toute production correcte reprenant les trois connecteurs est acceptée.', 'texte', 60, false, 20
from public.courses c where c.slug = 'bac-arabe'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Lecture, analyse de texte, vocabulaire thématique et expression écrite');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Grammaire du Bac 1 : cas et déclinaison, phrase nominale et phrase verbale', '## Objectifs de la leçon

- Connaître les trois cas du nom et leurs marques.
- Décliner le duel, les pluriels, les « cinq noms » et les diptotes.
- Construire et analyser la phrase nominale (avec كَانَ et إِنَّ) et la phrase verbale.
- Employer les modes de l''inaccompli après لَنْ, لَمْ et أَنْ.

## Fiche 1 : les trois cas (الْإِعْرَابُ, al-iʿrāb)

Le nom arabe change de voyelle finale selon sa fonction.

- Cas sujet, الرَّفْعُ (ar-rafʿ), marque : ḍamma (-u). Exemple : جَاءَ الْمُعَلِّمُ (jāʾa l-muʿallimu : l''enseignant est venu).
- Cas direct, النَّصْبُ (an-naṣb), marque : fatḥa (-a). Exemple : رَأَيْتُ الْمُعَلِّمَ (raʾaytu l-muʿallima : j''ai vu l''enseignant).
- Cas indirect, الْجَرُّ (al-jarr), marque : kasra (-i). Exemple : سَلَّمْتُ عَلَى الْمُعَلِّمِ (sallamtu ʿalā l-muʿallimi : j''ai salué l''enseignant).

Le nom indéterminé porte le tanwīn : هَذَا كِتَابٌ (hādhā kitābun : ceci est un livre) ; قَرَأْتُ كِتَابًا (qaraʾtu kitāban : j''ai lu un livre) ; نَظَرْتُ إِلَى كِتَابٍ (naẓartu ilā kitābin : j''ai regardé un livre).

Le cas indirect s''emploie après une préposition (فِي, مِنْ, إِلَى, عَلَى, عَنْ, بِـ, لِـ) et pour le complément de nom.

## Fiche 2 : l''annexion (الْإِضَافَةُ, al-iḍāfa)

Dans كِتَابُ التِّلْمِيذِ (kitābu t-tilmīdhi : le livre de l''élève), le premier terme n''a ni article ni tanwīn, et le second est toujours au cas indirect. Le premier terme prend le cas de sa fonction : قَرَأْتُ كِتَابَ التِّلْمِيذِ (qaraʾtu kitāba t-tilmīdhi : j''ai lu le livre de l''élève).

## Fiche 3 : l''adjectif

L''adjectif suit le nom et s''accorde en cas, en genre, en nombre et en détermination : قَرَأْتُ كِتَابًا مُفِيدًا (qaraʾtu kitāban mufīdan : j''ai lu un livre utile) ; فِي الْمَدْرَسَةِ الْجَدِيدَةِ (fī l-madrasati l-jadīdati : dans la nouvelle école). Règle essentielle : le pluriel d''un nom non humain s''accorde au féminin singulier : الْأَشْجَارُ الْكَبِيرَةُ (al-ashjāru l-kabīratu : les grands arbres).

## Fiche 4 : duel, pluriels, cinq noms et diptotes

- Duel : -āni au cas sujet, -ayni aux deux autres cas. جَاءَ الْمُعَلِّمَانِ (jāʾa l-muʿallimāni : les deux enseignants sont venus) ; رَأَيْتُ الْمُعَلِّمَيْنِ (raʾaytu l-muʿallimayni : j''ai vu les deux enseignants).
- Pluriel masculin régulier : -ūna au cas sujet, -īna aux deux autres cas. جَاءَ الْمُعَلِّمُونَ (jāʾa l-muʿallimūna) ; رَأَيْتُ الْمُعَلِّمِينَ (raʾaytu l-muʿallimīna).
- Pluriel féminin régulier : -u au cas sujet, -i aux deux autres cas, même au cas direct. جَاءَتِ الْمُعَلِّمَاتُ (jāʾati l-muʿallimātu) ; رَأَيْتُ الْمُعَلِّمَاتِ (raʾaytu l-muʿallimāti).
- Les « cinq noms » (أَبٌ, أَخٌ...) suivis d''un complément allongent leur voyelle : جَاءَ أَبُوكَ (jāʾa abūka : ton père est venu) ; رَأَيْتُ أَبَاكَ (raʾaytu abāka) ; سَلَّمْتُ عَلَى أَبِيكَ (sallamtu ʿalā abīka).
- Les diptotes (الْمَمْنُوعُ مِنَ الصَّرْفِ) n''ont pas de tanwīn et, sans article ni annexion, prennent -a au cas indirect : دَرَسْتُ فِي مَدَارِسَ كَثِيرَةٍ (darastu fī madārisa kathīratin : j''ai étudié dans de nombreuses écoles) ; سَلَّمْتُ عَلَى أَحْمَدَ (sallamtu ʿalā Aḥmada : j''ai salué Ahmed).

## Fiche 5 : la phrase nominale

Elle comprend un sujet, الْمُبْتَدَأُ (al-mubtadaʾ), et un prédicat, الْخَبَرُ (al-khabar), tous deux au cas sujet : الْعِلْمُ نُورٌ (al-ʿilmu nūrun : la science est lumière). Si le sujet est indéterminé, le prédicat (un complément de lieu) passe devant : فِي الْقِسْمِ سَبُّورَةٌ (fī l-qismi sabbūratun : il y a un tableau dans la classe).

كَانَ et ses sœurs (أَصْبَحَ, صَارَ, لَيْسَ, مَا زَالَ) : le sujet reste au cas sujet, le prédicat passe au cas direct.

- كَانَ الْجَوُّ حَارًّا (kāna l-jawwu ḥārran) : le temps était chaud.
- أَصْبَحَ الشَّارِعُ نَظِيفًا (aṣbaḥa sh-shāriʿu naẓīfan) : la rue est devenue propre.
- لَيْسَ الدَّرْسُ صَعْبًا (laysa d-darsu ṣaʿban) : la leçon n''est pas difficile.

إِنَّ et ses sœurs (أَنَّ, لَكِنَّ, لَعَلَّ, لَيْتَ, كَأَنَّ) : le sujet passe au cas direct, le prédicat reste au cas sujet.

- إِنَّ الْعِلْمَ نَافِعٌ (inna l-ʿilma nāfiʿun) : certes, la science est utile.
- لَكِنَّ الطَّرِيقَ طَوِيلٌ (lākinna ṭ-ṭarīqa ṭawīlun) : mais la route est longue.

## Fiche 6 : la phrase verbale

Ordre habituel : verbe, sujet الْفَاعِلُ (al-fāʿil, au cas sujet), complément d''objet الْمَفْعُولُ بِهِ (al-mafʿūl bihi, au cas direct).

- كَتَبَ الطَّالِبُ رِسَالَةً (kataba ṭ-ṭālibu risālatan) : l''étudiant a écrit une lettre.
- كَتَبَتِ الطَّالِبَةُ رِسَالَةً (katabati ṭ-ṭālibatu risālatan) : l''étudiante a écrit une lettre.

Accord : placé avant le sujet, le verbe s''accorde en genre mais reste au singulier : حَضَرَ الْمُعَلِّمُونَ (ḥaḍara l-muʿallimūna : les enseignants sont venus). Placé après, il s''accorde complètement : الْمُعَلِّمُونَ حَضَرُوا (al-muʿallimūna ḥaḍarū).

## Fiche 7 : les modes de l''inaccompli

- Indicatif (مَرْفُوعٌ) : يَدْرُسُ (yadrusu : il étudie).
- Subjonctif (مَنْصُوبٌ) après أَنْ, لَنْ, لِـ, كَيْ, حَتَّى : لَنْ يَدْرُسَ (lan yadrusa : il n''étudiera pas).
- Apocopé (مَجْزُومٌ) après لَمْ, لَا de l''interdiction, إِنْ conditionnel : لَمْ يَدْرُسْ (lam yadrus : il n''a pas étudié) ; لَا تَكْتُبْ (lā taktub : n''écris pas).

Les formes en -ūna, -īna, -āni perdent leur nūn au subjonctif et à l''apocopé : يَدْرُسُونَ devient لَنْ يَدْرُسُوا (lan yadrusū) et لَمْ يَدْرُسُوا (lam yadrusū).

## Points clés

- -u sujet, -a complément direct, -i après préposition et en annexion.
- كَانَ : prédicat au cas direct ; إِنَّ : sujet au cas direct.
- Verbe avant un sujet pluriel : singulier.
- لَنْ + subjonctif ; لَمْ + apocopé.

## Exercices pratiques

Exercice 1. Vocalise la fin du mot entre parenthèses selon sa fonction : a) قَرَأَ الْوَلَدُ (الْقِصَّة). b) ذَهَبْتُ إِلَى (السُّوق). c) (الْجَوّ) جَمِيلٌ.

Exercice 2. Mets le mot entre parenthèses au bon cas : رَأَيْتُ (الْمُهَنْدِسُونَ).

Exercice 3. Ajoute كَانَ : الْجَوُّ بَارِدٌ.

Exercice 4. Ajoute إِنَّ : الْبِيئَةُ نَظِيفَةٌ.

Exercice 5. Mets le sujet au pluriel : كَتَبَ الْمُهَنْدِسُ تَقْرِيرًا ; puis : الْمُهَنْدِسُ مَاهِرٌ.

Exercice 6. Mets à la forme négative avec لَمْ, puis avec لَنْ : يَذْهَبُ التِّلْمِيذُ إِلَى الْمَدْرَسَةِ.

Exercice 7. Corrige : الْكُتُبُ مُفِيدُونَ.

## Corrigé

Exercice 1. a) الْقِصَّةَ (al-qiṣṣata) : complément d''objet, cas direct. b) السُّوقِ (as-sūqi) : après إِلَى, cas indirect. c) الْجَوُّ (al-jawwu) : sujet d''une phrase nominale, cas sujet.

Exercice 2. رَأَيْتُ الْمُهَنْدِسِينَ (raʾaytu l-muhandisīna : j''ai vu les ingénieurs).

Exercice 3. كَانَ الْجَوُّ بَارِدًا (kāna l-jawwu bāridan : il faisait froid).

Exercice 4. إِنَّ الْبِيئَةَ نَظِيفَةٌ (inna l-bīʾata naẓīfatun : certes, l''environnement est propre).

Exercice 5. كَتَبَ الْمُهَنْدِسُونَ تَقْرِيرًا (kataba l-muhandisūna taqrīran) : le verbe reste au singulier. الْمُهَنْدِسُونَ مَاهِرُونَ (al-muhandisūna māhirūna) : l''adjectif d''un pluriel humain se met au pluriel.

Exercice 6. لَمْ يَذْهَبِ التِّلْمِيذُ إِلَى الْمَدْرَسَةِ (lam yadhhabi t-tilmīdhu ilā l-madrasati : l''élève n''est pas allé à l''école) ; la kasra sur le bāʾ évite la rencontre de deux sukūn. لَنْ يَذْهَبَ التِّلْمِيذُ إِلَى الْمَدْرَسَةِ (lan yadhhaba t-tilmīdhu ilā l-madrasati : l''élève n''ira pas à l''école).

Exercice 7. الْكُتُبُ مُفِيدَةٌ (al-kutubu mufīdatun) : pluriel non humain, donc féminin singulier.', 'texte', 60, false, 30
from public.courses c where c.slug = 'bac-arabe'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Grammaire du Bac 1 : cas et déclinaison, phrase nominale et phrase verbale');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Grammaire du Bac 2 : verbes dérivés, nombres, relatifs et phrase conditionnelle', '## Objectifs de la leçon

- Reconnaître et conjuguer les formes dérivées usuelles du verbe, avec leurs noms d''action.
- Écrire et accorder les nombres.
- Employer les pronoms relatifs.
- Construire une phrase conditionnelle simple avec إِذَا, إِنْ, مَنْ et لَوْ.

## Fiche 1 : les verbes dérivés

À partir d''une racine de trois lettres, l''arabe forme des verbes dérivés selon des schèmes. Pour chaque forme : accompli, inaccompli, nom d''action (maṣdar), sens.

- Forme II, فَعَّلَ : عَلَّمَ (ʿallama), يُعَلِّمُ (yuʿallimu), تَعْلِيمٌ (taʿlīmun) : enseigner.
- Forme III, فَاعَلَ : سَاعَدَ (sāʿada), يُسَاعِدُ (yusāʿidu), مُسَاعَدَةٌ (musāʿadatun) : aider.
- Forme IV, أَفْعَلَ : أَرْسَلَ (arsala), يُرْسِلُ (yursilu), إِرْسَالٌ (irsālun) : envoyer.
- Forme V, تَفَعَّلَ : تَعَلَّمَ (taʿallama), يَتَعَلَّمُ (yataʿallamu), تَعَلُّمٌ (taʿallumun) : apprendre.
- Forme VI, تَفَاعَلَ : تَعَاوَنَ (taʿāwana), يَتَعَاوَنُ (yataʿāwanu), تَعَاوُنٌ (taʿāwunun) : coopérer.
- Forme VII, اِنْفَعَلَ : اِنْطَلَقَ (inṭalaqa), يَنْطَلِقُ (yanṭaliqu), اِنْطِلَاقٌ (inṭilāqun) : partir, démarrer.
- Forme VIII, اِفْتَعَلَ : اِجْتَمَعَ (ijtamaʿa), يَجْتَمِعُ (yajtamiʿu), اِجْتِمَاعٌ (ijtimāʿun) : se réunir.
- Forme X, اِسْتَفْعَلَ : اِسْتَخْدَمَ (istakhdama), يَسْتَخْدِمُ (yastakhdimu), اِسْتِخْدَامٌ (istikhdāmun) : utiliser.

Astuce : à l''inaccompli, les formes II, III et IV ont un préfixe en u (يُـ) ; les autres ont un préfixe en a (يَـ). La forme V marque souvent le réfléchi de la forme II (enseigner, apprendre), la forme VI la réciprocité.

Beaucoup de mots courants sont des participes de formes dérivées : مُعَلِّمٌ (muʿallimun, enseignant, forme II) ; مُتَعَلِّمٌ (mutaʿallimun, apprenant, forme V) ; مُجْتَمَعٌ (mujtamaʿun, société, forme VIII) ; مُسْتَقْبَلٌ (mustaqbalun, avenir, forme X).

Exemples :

- يُعَلِّمُ الْأُسْتَاذُ التَّلَامِيذَ الْقِرَاءَةَ (yuʿallimu l-ustādhu t-talāmīdha l-qirāʾata) : le professeur enseigne la lecture aux élèves.
- تَتَعَاوَنُ الْأُسَرُ فِي الْحَيِّ (tataʿāwanu l-usaru fī l-ḥayyi) : les familles coopèrent dans le quartier.
- يَسْتَخْدِمُ الشَّبَابُ الْهَاتِفَ كَثِيرًا (yastakhdimu sh-shabābu l-hātifa kathīran) : les jeunes utilisent beaucoup le téléphone.

## Fiche 2 : les nombres

- 1 et 2 se placent après le nom comme des adjectifs et s''accordent : كِتَابٌ وَاحِدٌ (kitābun wāḥidun : un seul livre) ; on emploie le plus souvent le duel seul : كِتَابَانِ (kitābāni : deux livres).
- De 3 à 10, le nombre prend le genre inverse du singulier du nom, et le nom se met au pluriel, au cas indirect : ثَلَاثَةُ كُتُبٍ (thalāthatu kutubin : trois livres, car كِتَابٌ est masculin) ; ثَلَاثُ بَنَاتٍ (thalāthu banātin : trois filles, car بِنْتٌ est féminin) ; خَمْسَةُ أَطْفَالٍ (khamsatu aṭfālin : cinq enfants).
- De 11 à 99, le nom se met au singulier, au cas direct : أَحَدَ عَشَرَ تِلْمِيذًا (aḥada ʿashara tilmīdhan : onze élèves) ; خَمْسَ عَشْرَةَ تِلْمِيذَةً (khamsa ʿashrata tilmīdhatan : quinze élèves filles) ; عِشْرُونَ طَالِبًا (ʿishrūna ṭāliban : vingt étudiants) ; خَمْسَةٌ وَعِشْرُونَ تِلْمِيذًا (khamsatun wa-ʿishrūna tilmīdhan : vingt-cinq élèves).
- 100 et 1000 sont suivis du nom au singulier, au cas indirect : مِائَةُ شَجَرَةٍ (miʾatu shajaratin : cent arbres) ; أَلْفُ كِتَابٍ (alfu kitābin : mille livres). مِائَةٌ s''écrit aussi مِئَةٌ.
- Les dizaines 20 à 90 se déclinent comme un pluriel masculin : فِي الْقِسْمِ ثَلَاثُونَ تِلْمِيذًا (fī l-qismi thalāthūna tilmīdhan : il y a trente élèves dans la classe) ; رَأَيْتُ ثَلَاثِينَ تِلْمِيذًا (raʾaytu thalāthīna tilmīdhan).
- Ordinaux, accordés comme des adjectifs : الدَّرْسُ الثَّالِثُ (ad-darsu th-thālithu : la troisième leçon) ; السَّنَةُ الْأُولَى (as-sanatu l-ūlā : la première année).

## Fiche 3 : les relatifs

Le relatif s''emploie seulement après un nom déterminé. Il s''accorde avec ce nom.

- الَّذِي (alladhī) : masculin singulier. الْكِتَابُ الَّذِي قَرَأْتُهُ مُفِيدٌ (al-kitābu lladhī qaraʾtuhu mufīdun : le livre que j''ai lu est utile).
- الَّتِي (allatī) : féminin singulier. الْمَدْرَسَةُ الَّتِي أَدْرُسُ فِيهَا قَرِيبَةٌ (al-madrasatu llatī adrusu fīhā qarībatun : l''école où j''étudie est proche).
- الَّذِينَ (alladhīna) : masculin pluriel. نَجَحَ التَّلَامِيذُ الَّذِينَ اجْتَهَدُوا (najaḥa t-talāmīdhu lladhīna jtahadū : les élèves qui ont travaillé ont réussi).
- اللَّوَاتِي ou اللَّاتِي (allawātī, allātī) : féminin pluriel. الْبَنَاتُ اللَّوَاتِي يَدْرُسْنَ (al-banātu llawātī yadrusna : les filles qui étudient).
- Duel : اللَّذَانِ et اللَّتَانِ au cas sujet, اللَّذَيْنِ et اللَّتَيْنِ aux autres cas.

Le pronom de rappel (الْعَائِدُ) renvoie au nom : le هُ de قَرَأْتُهُ, le هَا de فِيهَا. Avec un nom indéterminé, pas de relatif : قَرَأْتُ كِتَابًا مُفِيدًا (qaraʾtu kitāban mufīdan) ; هَذَا كِتَابٌ اشْتَرَيْتُهُ (hādhā kitābuni shtaraytuhu : voici un livre que j''ai acheté).

مَنْ (man, celui qui, pour les personnes) et مَا (mā, ce que, pour les choses) : أُحِبُّ مَنْ يَحْتَرِمُ النَّاسَ (uḥibbu man yaḥtarimu n-nāsa : j''aime celui qui respecte les gens) ; اِفْهَمْ مَا تَقْرَأُ (ifham mā taqraʾu : comprends ce que tu lis).

## Fiche 4 : la phrase conditionnelle

- إِذَا (idhā) + accompli, pour une condition probable : إِذَا اجْتَهَدْتَ نَجَحْتَ (idhā jtahadta najaḥta : si tu travailles, tu réussiras). Le sens est futur malgré l''accompli.
- La réponse prend فَـ si elle commence par سَـ, par un impératif, par لَنْ ou par une phrase nominale : إِذَا اجْتَهَدْتَ فَسَتَنْجَحُ (idhā jtahadta fa-satanjaḥu) ; إِذَا رَأَيْتَ النُّفَايَاتِ فَاجْمَعْهَا (idhā raʾayta n-nufāyāti fa-jmaʿhā : si tu vois des déchets, ramasse-les).
- إِنْ (in) + deux verbes à l''apocopé : إِنْ تَدْرُسْ تَنْجَحْ (in tadrus tanjaḥ : si tu étudies, tu réussis) ; إِنْ تَزْرَعُوا تَحْصُدُوا (in tazraʿū taḥṣudū : si vous semez, vous récolterez).
- مَنْ (man, quiconque) : مَنْ جَدَّ وَجَدَ (man jadda wajada : qui s''efforce trouve), proverbe très connu.
- لَوْ (law) + accompli, puis لَـ, pour l''irréel : لَوْ دَرَسْتَ لَنَجَحْتَ (law darasta la-najaḥta : si tu avais étudié, tu aurais réussi).

## Points clés

- Inaccompli en yu- pour les formes II, III et IV.
- 3 à 10 : genre inverse et pluriel au cas indirect ; 11 à 99 : singulier au cas direct ; 100 et 1000 : singulier au cas indirect.
- Relatif seulement après un nom déterminé, avec pronom de rappel.
- إِنْ : deux apocopés ; لَوْ : irréel avec لَـ.

## Exercices pratiques

Exercice 1. Donne la forme et le nom d''action : يُسَاعِدُ ; يَتَعَلَّمُ ; يَسْتَخْدِمُ.

Exercice 2. Écris en lettres : 3 (أَطْفَال) ; 4 (بَنَات).

Exercice 3. Écris en lettres : 12 تِلْمِيذ (masculin) ; 20 طَبِيب ; 100 شَجَرَة.

Exercice 4. Complète avec le relatif : a) الطَّبِيبَةُ ... تَعْمَلُ فِي الْقَرْيَةِ نَشِيطَةٌ. b) الْمُعَلِّمُونَ ... حَضَرُوا مِنْ دَاكَار.

Exercice 5. Corrige : قَرَأْتُ كِتَابًا الَّذِي اشْتَرَيْتُهُ.

Exercice 6. Transforme avec إِنْ : إِذَا دَرَسْتَ نَجَحْتَ.

Exercice 7. Transforme en irréel avec لَوْ : إِذَا اجْتَهَدْتَ نَجَحْتَ. Traduis.

## Corrigé

Exercice 1. يُسَاعِدُ : forme III, nom d''action مُسَاعَدَةٌ (musāʿadatun). يَتَعَلَّمُ : forme V, تَعَلُّمٌ (taʿallumun). يَسْتَخْدِمُ : forme X, اِسْتِخْدَامٌ (istikhdāmun).

Exercice 2. ثَلَاثَةُ أَطْفَالٍ (thalāthatu aṭfālin), car طِفْلٌ est masculin. أَرْبَعُ بَنَاتٍ (arbaʿu banātin), car بِنْتٌ est féminin.

Exercice 3. اِثْنَا عَشَرَ تِلْمِيذًا (ithnā ʿashara tilmīdhan) ; عِشْرُونَ طَبِيبًا (ʿishrūna ṭabīban) ; مِائَةُ شَجَرَةٍ (miʾatu shajaratin).

Exercice 4. a) الَّتِي : الطَّبِيبَةُ الَّتِي تَعْمَلُ فِي الْقَرْيَةِ نَشِيطَةٌ (aṭ-ṭabībatu llatī taʿmalu fī l-qaryati nashīṭatun : la médecin qui travaille au village est dynamique). b) الَّذِينَ : الْمُعَلِّمُونَ الَّذِينَ حَضَرُوا مِنْ دَاكَار (al-muʿallimūna lladhīna ḥaḍarū min Dākār : les enseignants qui sont venus de Dakar).

Exercice 5. Deux corrections possibles : قَرَأْتُ الْكِتَابَ الَّذِي اشْتَرَيْتُهُ (qaraʾtu l-kitāba lladhī shtaraytuhu : j''ai lu le livre que j''ai acheté) ou قَرَأْتُ كِتَابًا اشْتَرَيْتُهُ (qaraʾtu kitābani shtaraytuhu : j''ai lu un livre que j''ai acheté).

Exercice 6. إِنْ تَدْرُسْ تَنْجَحْ (in tadrus tanjaḥ).

Exercice 7. لَوِ اجْتَهَدْتَ لَنَجَحْتَ (lawi jtahadta la-najaḥta : si tu avais travaillé, tu aurais réussi). La kasra sur لَوِ permet la liaison avec l''alif de اجْتَهَدْتَ.', 'texte', 60, false, 40
from public.courses c where c.slug = 'bac-arabe'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Grammaire du Bac 2 : verbes dérivés, nombres, relatifs et phrase conditionnelle');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen : sujet d''entraînement corrigé', '## Présentation

Voici un sujet complet d''entraînement conçu pour ce cours. Ce n''est pas un sujet officiel du Bac. La répartition des points est indicative et non officielle. Fais-le en temps limité, puis compare avec le corrigé.

## Texte

نَشَأَ مُصْطَفَى فِي قَرْيَةٍ بَعِيدَةٍ عَنِ الْمَدِينَةِ. كَانَتِ الْمَدْرَسَةُ بَعِيدَةً عَنْ بَيْتِهِ، فَكَانَ يَمْشِي كُلَّ صَبَاحٍ سَاعَةً كَامِلَةً. وَرَغْمَ التَّعَبِ لَمْ يَتْرُكِ الدِّرَاسَةَ، وَكَانَ يَقُولُ لِأَصْدِقَائِهِ: «مَنْ جَدَّ وَجَدَ». وَبَعْدَ سَنَوَاتٍ نَجَحَ فِي امْتِحَانِ الْبَكَالُورِيَا، ثُمَّ دَرَسَ الطِّبَّ فِي الْجَامِعَةِ. وَالْيَوْمَ يَعْمَلُ مُصْطَفَى طَبِيبًا فِي قَرْيَتِهِ، وَيُسَاعِدُ الْأَطْفَالَ الَّذِينَ يُرِيدُونَ أَنْ يَتَعَلَّمُوا. يَقُولُ مُصْطَفَى: «التَّعْلِيمُ مِفْتَاحُ الْمُسْتَقْبَلِ».

Translittération : nashaʾa Muṣṭafā fī qaryatin baʿīdatin ʿani l-madīnati. kānati l-madrasatu baʿīdatan ʿan baytihi, fa-kāna yamshī kulla ṣabāḥin sāʿatan kāmilatan. wa-raghma t-taʿabi lam yatruki d-dirāsata, wa-kāna yaqūlu li-aṣdiqāʾihi : « man jadda wajada ». wa-baʿda sanawātin najaḥa fī mtiḥāni l-bakālūriyā, thumma darasa ṭ-ṭibba fī l-jāmiʿati. wa-l-yawma yaʿmalu Muṣṭafā ṭabīban fī qaryatihi, wa-yusāʿidu l-aṭfāla lladhīna yurīdūna an yataʿallamū. yaqūlu Muṣṭafā : « at-taʿlīmu miftāḥu l-mustaqbali ».

Traduction : Moustapha a grandi dans un village éloigné de la ville. L''école était loin de sa maison : il marchait donc chaque matin une heure entière. Malgré la fatigue, il n''a pas abandonné les études, et il disait à ses amis : « Qui s''efforce trouve. » Quelques années plus tard, il a réussi l''examen du baccalauréat, puis il a étudié la médecine à l''université. Aujourd''hui, Moustapha travaille comme médecin dans son village et aide les enfants qui veulent apprendre. Il dit : « L''enseignement est la clé de l''avenir. »

(Au jour de l''examen, le texte n''est évidemment pas traduit.)

## Partie I : compréhension (8 points, indicatif)

1. أَيْنَ نَشَأَ مُصْطَفَى؟ (2 pts)
2. صَحِيحٌ أَمْ خَطَأٌ ؟ a) كَانَتِ الْمَدْرَسَةُ قَرِيبَةً مِنْ بَيْتِهِ. b) دَرَسَ مُصْطَفَى الطِّبَّ. (2 pts)
3. هَاتِ مِنَ النَّصِّ ضِدَّ : قَرِيبَةٍ ، الرَّاحَةِ. (1 pt)
4. مَاذَا يَعْمَلُ مُصْطَفَى الْيَوْمَ؟ (1 pt)
5. Explique en français le proverbe « مَنْ جَدَّ وَجَدَ » et son lien avec l''histoire de Moustapha. (2 pts)

## Partie II : langue (6 points, indicatif)

1. أَعْرِبْ : الْمَدْرَسَةُ et بَعِيدَةً (dans كَانَتِ الْمَدْرَسَةُ بَعِيدَةً) ; الدِّرَاسَةَ (dans لَمْ يَتْرُكِ الدِّرَاسَةَ). (2 pts)
2. Donne la forme dérivée et le nom d''action de يُسَاعِدُ et de يَتَعَلَّمُوا. (1 pt)
3. Écris en lettres : 3 أَطْفَال ; 20 طَبِيب. (1 pt)
4. Transforme en irréel avec لَوْ : إِذَا دَرَسْتَ نَجَحْتَ. (1 pt)
5. Complète avec le relatif : الطَّبِيبَةُ ... تَعْمَلُ مَعَ مُصْطَفَى نَشِيطَةٌ. (1 pt)

## Partie III : expression écrite (6 points, indicatif)

Traite un sujet au choix (8 à 10 lignes).

- Sujet A : essai court : « التَّعْلِيمُ مِفْتَاحُ الْمُسْتَقْبَلِ » (l''enseignement est la clé de l''avenir). Es-tu d''accord ?
- Sujet B : écris une lettre à un ami qui veut abandonner ses études pour l''encourager à continuer.

## Corrigé de la partie I

1. نَشَأَ مُصْطَفَى فِي قَرْيَةٍ بَعِيدَةٍ عَنِ الْمَدِينَةِ (nashaʾa Muṣṭafā fī qaryatin baʿīdatin ʿani l-madīnati : Moustapha a grandi dans un village éloigné de la ville).

2. a) خَطَأٌ (faux) : « كَانَتِ الْمَدْرَسَةُ بَعِيدَةً عَنْ بَيْتِهِ ». b) صَحِيحٌ (vrai) : « ثُمَّ دَرَسَ الطِّبَّ فِي الْجَامِعَةِ ».

3. Contraire de قَرِيبَةٍ : بَعِيدَةٍ (baʿīdatin). Contraire de الرَّاحَةِ (ar-rāḥati, le repos) : التَّعَبِ (at-taʿabi, la fatigue).

4. يَعْمَلُ مُصْطَفَى طَبِيبًا فِي قَرْيَتِهِ (yaʿmalu Muṣṭafā ṭabīban fī qaryatihi : Moustapha travaille comme médecin dans son village).

5. Le proverbe signifie que celui qui fait des efforts obtient un résultat. Moustapha l''illustre : malgré la distance et la fatigue, il a persévéré, il a réussi le baccalauréat puis il est devenu médecin.

## Corrigé de la partie II

1. الْمَدْرَسَةُ : sujet (اِسْمُ كَانَ), au cas sujet, marque ḍamma. بَعِيدَةً : prédicat de كَانَ (خَبَرُ كَانَ), au cas direct, marque fatḥa avec tanwīn. الدِّرَاسَةَ : complément d''objet (مَفْعُولٌ بِهِ), au cas direct, marque fatḥa.

2. يُسَاعِدُ : forme III, nom d''action مُسَاعَدَةٌ. يَتَعَلَّمُوا : forme V, nom d''action تَعَلُّمٌ ; ce verbe est au subjonctif après أَنْ, d''où la chute du nūn.

3. ثَلَاثَةُ أَطْفَالٍ (thalāthatu aṭfālin) ; عِشْرُونَ طَبِيبًا (ʿishrūna ṭabīban).

4. لَوْ دَرَسْتَ لَنَجَحْتَ (law darasta la-najaḥta : si tu avais étudié, tu aurais réussi).

5. الطَّبِيبَةُ الَّتِي تَعْمَلُ مَعَ مُصْطَفَى نَشِيطَةٌ (aṭ-ṭabībatu llatī taʿmalu maʿa Muṣṭafā nashīṭatun : la médecin qui travaille avec Moustapha est dynamique).

## Corrigé de la partie III : exemple pour le sujet A

يَحْتَلُّ التَّعْلِيمُ مَكَانَةً كَبِيرَةً فِي حَيَاةِ الْإِنْسَانِ (yaḥtallu t-taʿlīmu makānatan kabīratan fī ḥayāti l-insāni : l''enseignement occupe une grande place dans la vie de l''homme). أَوَّلًا، يُسَاعِدُ التَّعْلِيمُ الشَّبَابَ عَلَى إِيجَادِ عَمَلٍ (awwalan, yusāʿidu t-taʿlīmu sh-shabāba ʿalā ījādi ʿamalin : d''abord, l''enseignement aide les jeunes à trouver un emploi). ثَانِيًا، يَجْعَلُ التَّعْلِيمُ الْمُوَاطِنَ وَاعِيًا بِحُقُوقِهِ وَوَاجِبَاتِهِ (thāniyan, yajʿalu t-taʿlīmu l-muwāṭina wāʿiyan bi-ḥuqūqihi wa-wājibātihi : ensuite, l''enseignement rend le citoyen conscient de ses droits et de ses devoirs). وَمِثَالُ ذَلِكَ مُصْطَفَى الَّذِي أَصْبَحَ طَبِيبًا بِفَضْلِ الدِّرَاسَةِ (wa-mithālu dhālika Muṣṭafā lladhī aṣbaḥa ṭabīban bi-faḍli d-dirāsati : l''exemple en est Moustapha, devenu médecin grâce aux études). وَفِي الْخِتَامِ، يَجِبُ عَلَيْنَا جَمِيعًا أَنْ نَهْتَمَّ بِتَعْلِيمِ الْأَطْفَالِ (wa-fī l-khitāmi, yajibu ʿalaynā jamīʿan an nahtamma bi-taʿlīmi l-aṭfāli : en conclusion, nous devons tous prendre soin de l''éducation des enfants).

## Corrigé de la partie III : exemple pour le sujet B

دَاكَار، فِي 20 أَبْرِيل 2026. عَزِيزِي إِبْرَاهِيم، السَّلَامُ عَلَيْكُمْ وَرَحْمَةُ اللَّهِ وَبَرَكَاتُهُ. أَرْجُو أَنْ تَكُونَ فِي صِحَّةٍ جَيِّدَةٍ. أَكْتُبُ إِلَيْكَ لِأُشَجِّعَكَ عَلَى مُوَاصَلَةِ الدِّرَاسَةِ (aktubu ilayka li-ushajjiʿaka ʿalā muwāṣalati d-dirāsati : je t''écris pour t''encourager à poursuivre tes études). إِنَّ الدِّرَاسَةَ طَرِيقُ النَّجَاحِ (inna d-dirāsata ṭarīqu n-najāḥi : les études sont le chemin de la réussite). أَبْلِغْ سَلَامِي إِلَى أُسْرَتِكَ. صَدِيقُكَ الْمُخْلِصُ.

## Conseils du correcteur

- En langue, une voyelle finale juste, justifiée par la fonction, rapporte des points sûrs.
- En expression, mieux vaut huit phrases simples et correctes que quinze phrases fautives.
- Réutilise le vocabulaire du texte sans le recopier mot pour mot.

## Exercices pratiques

Exercice 1. Relève dans le texte une phrase conditionnelle et indique l''outil employé.

Exercice 2. Relève un verbe à l''apocopé et justifie.

Exercice 3. Relève un relatif et le nom auquel il renvoie.

Exercice 4. Calcule ta note sur 20 si tu obtiens 6/8, 4/6 et 3,5/6.

Exercice 5. Mets au pluriel masculin : يَعْمَلُ الطَّبِيبُ فِي الْقَرْيَةِ.

## Corrigé

Exercice 1. مَنْ جَدَّ وَجَدَ : condition avec مَنْ ; les deux verbes sont à l''accompli.

Exercice 2. يَتْرُكِ après لَمْ : apocopé (sukūn remplacé par une kasra de liaison devant l''article).

Exercice 3. الَّذِينَ renvoie à الْأَطْفَالَ (masculin pluriel, êtres humains).

Exercice 4. 6 + 4 + 3,5 = 13,5. Ta note est 13,5/20.

Exercice 5. يَعْمَلُ الْأَطِبَّاءُ فِي الْقَرْيَةِ (yaʿmalu l-aṭibbāʾu fī l-qaryati : les médecins travaillent au village). Le verbe placé avant reste au singulier ; أَطِبَّاءُ est un pluriel brisé.', 'texte', 60, false, 50
from public.courses c where c.slug = 'bac-arabe'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen : sujet d''entraînement corrigé');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : révision intensive « veille du Bac » en arabe', '## Fiche du cours vidéo

- Durée : 1h30.
- Thème : séance de révision intensive la veille de l''épreuve d''arabe LV2 du Bac.
- Objectifs : réactiver les règles clés (cas, phrase nominale et verbale, كَانَ et إِنَّ, dérivés, nombres, relatifs, conditionnel), corriger des exercices de type Bac, revoir la gestion du temps et la méthode d''expression écrite.
- Matériel : tableau ou diaporama, fiches de révision, un texte court imprimé et vocalisé, brouillon.
- Prérequis : leçons 1 à 5 de ce cours. Les exercices sont des exercices d''entraînement, pas des sujets officiels.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

« السَّلَامُ عَلَيْكُمْ (as-salāmu ʿalaykum) à toutes et à tous. Demain, c''est l''épreuve d''arabe. Ce soir, aucune notion nouvelle : nous consolidons. Nous reverrons les règles qui rapportent le plus de points, nous corrigerons ensemble des exercices type Bac, puis nous parlerons du temps et de l''expression écrite. Au milieu, un quiz ; à la fin, une évaluation de cinq questions. Prenez une feuille. »

Visuel : le plan de la séance en six étapes.

## 05:00 – 15:00 · Rappel 1 : les trois cas

« Une règle simple vaut beaucoup de points : -u pour le sujet, -a pour le complément d''objet, -i après une préposition et pour le complément de nom. جَاءَ الْمُعَلِّمُ (jāʾa l-muʿallimu), رَأَيْتُ الْمُعَلِّمَ (raʾaytu l-muʿallima), سَلَّمْتُ عَلَى الْمُعَلِّمِ (sallamtu ʿalā l-muʿallimi). Au duel, -āni puis -ayni ; au pluriel masculin, -ūna puis -īna ; au pluriel féminin, attention : رَأَيْتُ الْمُعَلِّمَاتِ (raʾaytu l-muʿallimāti), avec un -i même au cas direct. Et les diptotes, comme مَدَارِسُ, n''ont jamais de tanwīn. »

Visuel : tableau de déclinaison à trois colonnes. Question : « Quel est le cas après فِي ? » Réponse attendue : le cas indirect, avec kasra.

Exercice flash à faire au tableau avec les élèves : analyser les deux mots de بَابُ الْمَدْرَسَةِ (bābu l-madrasati : la porte de l''école). بَابُ est le premier terme de l''annexion : pas d''article, pas de tanwīn, et son cas dépend de sa fonction dans la phrase. الْمَدْرَسَةِ est le complément de nom : toujours au cas indirect. Puis ajouter un adjectif : فِي الْمَدْرَسَةِ الْجَدِيدَةِ (fī l-madrasati l-jadīdati : dans la nouvelle école). L''adjectif copie tout : le cas indirect, le féminin, le singulier et l''article. Rappeler enfin le piège des pluriels de choses : الْأَشْجَارُ الْكَبِيرَةُ (al-ashjāru l-kabīratu : les grands arbres), avec un adjectif au féminin singulier.

## 15:00 – 25:00 · Rappel 2 : phrase nominale, كَانَ et إِنَّ, phrase verbale

« Dans la phrase nominale, tout est au cas sujet : الْعِلْمُ نُورٌ (al-ʿilmu nūrun). Avec كَانَ, le prédicat passe au cas direct : كَانَ الْجَوُّ حَارًّا (kāna l-jawwu ḥārran). Avec إِنَّ, c''est le sujet qui passe au cas direct : إِنَّ الْعِلْمَ نَافِعٌ (inna l-ʿilma nāfiʿun). Retenez : كَانَ agit sur le prédicat, إِنَّ agit sur le sujet.

Dans la phrase verbale, le verbe placé avant un sujet pluriel reste au singulier : حَضَرَ الْمُعَلِّمُونَ (ḥaḍara l-muʿallimūna). Et un pluriel de non-humains s''accorde au féminin singulier : الْكُتُبُ مُفِيدَةٌ. »

Visuel : deux flèches, l''une de كَانَ vers le prédicat, l''autre de إِنَّ vers le sujet.

## 25:00 – 35:00 · Rappel 3 : dérivés, nombres, relatifs, conditionnel

« Les formes dérivées : عَلَّمَ يُعَلِّمُ تَعْلِيمٌ, تَعَلَّمَ يَتَعَلَّمُ تَعَلُّمٌ, اِجْتَمَعَ يَجْتَمِعُ اِجْتِمَاعٌ, اِسْتَخْدَمَ يَسْتَخْدِمُ اِسْتِخْدَامٌ. Les formes II, III et IV ont un inaccompli en yu-.

Les nombres : de 3 à 10, genre inverse et pluriel au cas indirect, ثَلَاثَةُ كُتُبٍ (thalāthatu kutubin) ; de 11 à 99, singulier au cas direct, عِشْرُونَ طَالِبًا (ʿishrūna ṭāliban) ; 100 et 1000, singulier au cas indirect, مِائَةُ شَجَرَةٍ (miʾatu shajaratin).

Les relatifs seulement après un nom déterminé : الْكِتَابُ الَّذِي قَرَأْتُهُ (al-kitābu lladhī qaraʾtuhu). Le conditionnel : إِذَا + accompli, إِنْ + deux apocopés, لَوْ pour l''irréel avec لَـ. »

Questions à poser à la classe, avec un temps de réflexion de trente secondes : « Quel est l''inaccompli de أَرْسَلَ ? » Réponse : يُرْسِلُ (yursilu), avec un préfixe en u car c''est la forme IV. « Comment écrire quinze élèves garçons ? » Réponse : خَمْسَةَ عَشَرَ تِلْمِيذًا (khamsata ʿashara tilmīdhan) : le nom est au singulier et au cas direct. « Quel relatif après الطُّلَّابُ ? » Réponse : الَّذِينَ (alladhīna), car ce sont des êtres humains au masculin pluriel.

Visuel : un tableau récapitulatif des nombres, avec trois lignes (3 à 10, 11 à 99, 100 et 1000) et un exemple par ligne.

## 35:00 – 45:00 · Correction commentée : exercice de langue type Bac

Énoncé projeté : « 1) Ajoute إِنَّ : الطَّرِيقُ طَوِيلٌ. 2) Négation avec لَمْ : يَكْتُبُ الطُّلَّابُ الدَّرْسَ. 3) Écris en lettres : 5 كُتُب. 4) Transforme avec إِنْ : إِذَا قَرَأْتَ فَهِمْتَ. »

« Corrigeons. Un : إِنَّ الطَّرِيقَ طَوِيلٌ (inna ṭ-ṭarīqa ṭawīlun). Deux : لَمْ يَكْتُبِ الطُّلَّابُ الدَّرْسَ (lam yaktubi ṭ-ṭullābu d-darsa) : apocopé, avec une kasra de liaison devant l''article. Trois : خَمْسَةُ كُتُبٍ (khamsatu kutubin), car كِتَابٌ est masculin. Quatre : إِنْ تَقْرَأْ تَفْهَمْ (in taqraʾ tafham : si tu lis, tu comprends). Quatre bonnes réponses ? Excellent. Sinon, notez la règle sur votre fiche d''erreurs. »

## 45:00 – 50:00 · Pause active : quiz éclair

« Cinq questions, dix secondes chacune. »

- Pluriel de مَدْرَسَةٌ : مَدَارِسُ (madārisu).
- Contraire de قَرِيبٌ : بَعِيدٌ (baʿīdun).
- Nom d''action de سَاعَدَ : مُسَاعَدَةٌ (musāʿadatun).
- Relatif pour الْبِنْتُ : الَّتِي (allatī).
- Sens de مَنْ جَدَّ وَجَدَ : qui s''efforce trouve.

« Quatre ou cinq : vous êtes prêts. Moins de trois : relisez vos fiches ce soir, sans paniquer. »

## 50:00 – 1:05:00 · Correction commentée : compréhension d''un texte court

Texte projeté : تَعْمَلُ عَائِشَةُ مُعَلِّمَةً فِي مَدْرَسَةٍ بِمَدِينَةِ كَوْلَخ. تُعَلِّمُ الْأَطْفَالَ الْقِرَاءَةَ وَالْكِتَابَةَ، وَتُشَجِّعُهُمْ عَلَى حِمَايَةِ الْبِيئَةِ. (taʿmalu ʿĀʾishatu muʿallimatan fī madrasatin bi-madīnati Kawlakh. tuʿallimu l-aṭfāla l-qirāʾata wa-l-kitābata, wa-tushajjiʿuhum ʿalā ḥimāyati l-bīʾati : Aïcha travaille comme enseignante dans une école de la ville de Kaolack. Elle enseigne aux enfants la lecture et l''écriture, et les encourage à protéger l''environnement.)

« Question 1 : مَاذَا تَعْمَلُ عَائِشَةُ؟ Réponse : تَعْمَلُ عَائِشَةُ مُعَلِّمَةً (taʿmalu ʿĀʾishatu muʿallimatan). Question 2 : relevez un verbe dérivé. تُعَلِّمُ, forme II, ou تُشَجِّعُ, forme II aussi. Question 3 : analysez الْأَطْفَالَ : complément d''objet, cas direct. Remarquez que عَائِشَةُ n''a pas de tanwīn : c''est un nom propre féminin, donc diptote.

Question 4 : ajoutez كَانَ à la phrase عَائِشَةُ مُعَلِّمَةٌ. Réponse : كَانَتْ عَائِشَةُ مُعَلِّمَةً (kānat ʿĀʾishatu muʿallimatan : Aïcha était enseignante). Le verbe se met au féminin, et le prédicat passe au cas direct. Question 5 : donnez le pluriel de مُعَلِّمَةٌ. Réponse : مُعَلِّمَاتٌ (muʿallimātun), pluriel féminin régulier. Question 6 : proposez un titre. Par exemple : الْمُعَلِّمَةُ وَالْبِيئَةُ (al-muʿallimatu wa-l-bīʾatu : l''enseignante et l''environnement). Un bon titre est court et reprend l''idée principale. »

Visuel : le texte vocalisé avec les mots clés surlignés.

## 1:05:00 – 1:15:00 · Méthode express de l''expression écrite

« Pour l''essai : une phrase d''introduction, deux idées avec أَوَّلًا et ثَانِيًا, un exemple, une conclusion avec وَفِي الْخِتَامِ. Pour la lettre : lieu et date, عَزِيزِي pour un ami ou حَضْرَةَ السَّيِّدِ pour un responsable, l''objet de la lettre, la formule finale. Phrases courtes, vocabulaire du texte, accords vérifiés. Placez une phrase avec كَانَ ou إِنَّ bien vocalisée, et une phrase conditionnelle correcte : c''est votre signature de Terminale. »

Lecture d''un début et d''une fin d''essai modèles sur le chômage des jeunes :

- Introduction : الْبَطَالَةُ مُشْكِلَةٌ كَبِيرَةٌ فِي مُجْتَمَعِنَا. فَمَا أَسْبَابُهَا؟ وَمَا الْحُلُولُ؟ (al-baṭālatu mushkilatun kabīratun fī mujtamaʿinā. fa-mā asbābuhā? wa-mā l-ḥulūlu? : le chômage est un grand problème dans notre société. Quelles en sont les causes ? Et quelles sont les solutions ?)
- Conclusion : وَفِي الْخِتَامِ، إِذَا تَعَاوَنَتِ الدَّوْلَةُ وَالشَّبَابُ قَلَّتِ الْبَطَالَةُ. (wa-fī l-khitāmi, idhā taʿāwanati d-dawlatu wa-sh-shabābu qallati l-baṭālatu : en conclusion, si l''État et les jeunes coopèrent, le chômage diminuera.)

« Regardez la conclusion : en une seule phrase, elle contient un verbe dérivé de forme VI, تَعَاوَنَ, et une phrase conditionnelle avec إِذَا. Voilà comment montrer votre niveau sans prendre de risque. »

Visuel : grille de relecture en cinq points (plan, connecteurs, accords, voyelles finales, orthographe de ة et ى).

## 1:15:00 – 1:22:00 · Gestion du temps et du stress

« Demain, lisez d''abord tout le sujet. Répartition indicative : lecture, un peu moins d''un cinquième ; compréhension, environ un tiers ; langue, un quart ; expression, un cinquième ; et quelques minutes de relecture. Vérifiez la durée officielle sur votre convocation. Si une question bloque, passez et revenez. Ce soir, préparez stylos, convocation et pièce d''identité, puis dormez. »

## 1:22:00 – 1:30:00 · Synthèse et évaluation finale

« Cinq dernières questions. Notez, puis corrigeons. »

- Question 1 : Ajoute كَانَ : الْجَوُّ بَارِدٌ. Réponse : كَانَ الْجَوُّ بَارِدًا (kāna l-jawwu bāridan).
- Question 2 : Mets au bon cas : رَأَيْتُ (الْمُعَلِّمُونَ). Réponse : رَأَيْتُ الْمُعَلِّمِينَ (raʾaytu l-muʿallimīna).
- Question 3 : Écris en lettres : 3 بَنَات. Réponse : ثَلَاثُ بَنَاتٍ (thalāthu banātin).
- Question 4 : Donne la forme et le nom d''action de اِسْتَخْدَمَ. Réponse : forme X, اِسْتِخْدَامٌ (istikhdāmun).
- Question 5 : Traduis لَوْ دَرَسْتَ لَنَجَحْتَ. Réponse : si tu avais étudié, tu aurais réussi.

« Synthèse : -u, -a, -i selon la fonction ; كَانَ sur le prédicat, إِنَّ sur le sujet ; verbe singulier devant un sujet pluriel ; nombres de 3 à 10 au genre inverse ; relatif après un nom déterminé. Vous avez travaillé : faites-vous confiance. بِالتَّوْفِيقِ (bi-t-tawfīqi : bonne chance) et à bientôt ! »', 'video', 90, false, 60
from public.courses c where c.slug = 'bac-arabe'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : révision intensive « veille du Bac » en arabe');
