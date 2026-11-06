-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Cours (partie 6/19). À exécuter après seed.sql.

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

-- Cours : Français au Bac : résumé-discussion, commentaire, dissertation
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'bac-francais', (select id from public.levels where name = 'Terminale'), null, 'Français', 'Français au Bac : résumé-discussion, commentaire, dissertation', 'Cours d''examen pour les élèves de Terminale (séries L, S et G) qui préparent l''épreuve de français du Baccalauréat au Sénégal. Il enseigne pas à pas les trois exercices de l''épreuve : le résumé suivi de la discussion, le commentaire composé et la dissertation littéraire. Il révise l''histoire littéraire utile au Bac (Négritude, roman africain, théâtre, poésie) en s''appuyant sur des œuvres africaines et françaises citées par titre et par thème. Prérequis : maîtrise de l''expression écrite et lecture des œuvres étudiées au lycée.', true, 206
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comprendre l''épreuve de français et méthode de travail', '## Objectifs de la leçon

- Connaître les trois exercices de l''épreuve de français et ce que chacun évalue.
- Choisir son sujet avec méthode.
- Repérer les erreurs les plus coûteuses.
- Organiser ses révisions sur 10 semaines.

Ce cours d''examen s''adresse aux élèves de Terminale des séries L, S et G. La durée, le coefficient et les modalités exactes de l''épreuve dépendent de la série et sont fixés par les textes officiels en vigueur : vérifiez-les auprès de votre établissement.

## Les trois sujets au choix

L''épreuve de français propose en général trois sujets, parmi lesquels le candidat en choisit un seul.

- Le résumé suivi d''une discussion : vous réduisez un texte argumentatif (souvent un texte d''idées sur un sujet de société : école, famille, ville, environnement, médias, développement) au nombre de mots demandé, puis vous discutez une idée du texte dans un développement argumenté.
- Le commentaire composé : vous analysez un texte littéraire (poème, extrait de roman ou de pièce de théâtre) en l''organisant autour de deux ou trois axes de lecture.
- La dissertation littéraire : vous réfléchissez à une question sur la littérature (le rôle du poète, la fonction du roman, le théâtre et la société…) en vous appuyant sur des œuvres précises.

Chaque exercice vérifie trois capacités : comprendre un texte ou une question, organiser sa pensée, écrire dans une langue correcte et précise. La qualité de la langue compte partout : orthographe, syntaxe, ponctuation, vocabulaire.

## Ce que le correcteur attend

- Pour le résumé : fidélité aux idées et à leur ordre, reformulation personnelle, respect strict du nombre de mots.
- Pour la discussion : une thèse claire, des arguments organisés, des exemples précis tirés des lectures et de la vie.
- Pour le commentaire : une lecture qui relie le fond (ce que dit le texte) et la forme (comment il le dit), sans paraphrase ni catalogue de procédés.
- Pour la dissertation : une problématique, un plan logique, des exemples littéraires exacts (auteur, titre, situation).

## Bien choisir son sujet

Lisez les trois sujets en entier. Puis posez-vous trois questions. Est-ce que je comprends parfaitement le texte ou la question ? Ai-je assez d''exemples précis (pour la discussion ou la dissertation) ? Est-ce que je maîtrise les outils d''analyse (pour le commentaire) ? Le résumé-discussion convient aux élèves rigoureux qui comptent bien leurs mots ; le commentaire à ceux qui aiment lire de près ; la dissertation à ceux qui ont beaucoup lu et retenu. Une fois votre choix fait, ne changez plus, sauf erreur manifeste dans les vingt premières minutes.

## Les erreurs fréquentes

- Dans le résumé : recopier des phrases du texte, écrire « l''auteur dit que », dépasser la marge de mots autorisée, oublier d''indiquer le nombre de mots.
- Dans la discussion : réciter des généralités sans exemples, ou ne pas répondre à la question posée.
- Dans le commentaire : paraphraser (« le poète dit que… ») ou énumérer des figures de style sans les interpréter.
- Dans la dissertation : raconter l''histoire des œuvres au lieu d''argumenter ; citer des œuvres non lues.
- Partout : négliger l''orthographe, ne pas relire, ne pas soigner la présentation (paragraphes, alinéas, sauts de ligne entre les parties).

## Méthode de travail pendant l''année

- Tenir un carnet de lecture : pour chaque œuvre, l''auteur, la date, le genre, un résumé de dix lignes, les thèmes, trois passages clés avec leur page.
- Constituer une banque d''exemples par thème : la tradition et la modernité, la condition de la femme, la colonisation et les indépendances, la ville et l''exode rural, le pouvoir, l''engagement de l''écrivain.
- Revoir les outils d''analyse : figures de style, versification, registres, focalisation, modalisation.
- S''entraîner à rédiger une introduction par semaine et à résumer un article de presse.

## Plan de révision sur 10 semaines

- Semaine 1 : méthode du résumé ; deux résumés courts chronométrés.
- Semaine 2 : méthode de la discussion ; un plan détaillé et une introduction.
- Semaine 3 : outils d''analyse littéraire (figures, versification, registres).
- Semaine 4 : méthode du commentaire composé ; un commentaire de poème.
- Semaine 5 : histoire littéraire : la Négritude et la poésie africaine.
- Semaine 6 : le roman africain et le roman français ; un commentaire d''extrait de roman.
- Semaine 7 : le théâtre ; méthode de la dissertation.
- Semaine 8 : une dissertation complète ; révision du carnet de lecture.
- Semaine 9 : deux sujets complets en temps réel.
- Semaine 10 : relecture des fiches, exemples, règles d''orthographe fréquentes ; repos.

## Points clés

- Trois sujets au choix : résumé-discussion, commentaire composé, dissertation.
- Langue soignée et exemples précis dans tous les cas.
- Choisir vite, avec des critères, puis s''y tenir.

## Exercices pratiques

Exercice 1. Pour chacun des sujets suivants, indiquez de quel exercice il s''agit : a) un poème suivi de la consigne « Vous ferez de ce texte un commentaire composé » ; b) un texte d''idées sur l''exode rural, suivi d''une consigne de nombre de mots ; c) « Le roman doit-il seulement divertir ? Vous répondrez en vous appuyant sur des œuvres précises ».

Exercice 2. Corrigez cette phrase de résumé : « L''auteur nous dit que les jeunes quittent les villages pour aller à Dakar. »

Exercice 3. Transformez cette phrase de commentaire en analyse : « Dans le vers 3, il y a une métaphore. »

Exercice 4. Remplissez une fiche de carnet de lecture pour une œuvre de votre choix étudiée au lycée (auteur, date, genre, thèmes, deux passages clés).

Exercice 5. Proposez trois thèmes pour lesquels vous pourriez citer au moins deux œuvres, et nommez ces œuvres.

## Corrigé

Exercice 1. a) commentaire composé ; b) résumé suivi d''une discussion ; c) dissertation littéraire.

Exercice 2. Le résumé adopte le point de vue de l''auteur et ne le nomme pas ; il reformule : « Les jeunes ruraux quittent massivement leurs villages pour la capitale. »

Exercice 3. Il faut nommer la figure, citer, et interpréter : « Au vers 3, la métaphore qui assimile l''Afrique à une mère souligne le lien affectif et nourricier qui unit le poète à sa terre ; elle prépare le registre lyrique de la strophe suivante. »

Exercice 4. Exemple : Mariama Bâ, Une si longue lettre (1979), roman épistolaire. Ramatoulaye, veuve, écrit à son amie Aïssatou. Thèmes : la polygamie, la condition de la femme, l''amitié, l''éducation. Passages clés : l''annonce du second mariage de Modou ; le refus de Ramatoulaye d''épouser Daouda Dieng.

Exercice 5. Exemples : la colonisation (Ferdinand Oyono, Une vie de boy ; Mongo Beti, Le Pauvre Christ de Bomba) ; la tradition et la modernité (Cheikh Hamidou Kane, L''Aventure ambiguë ; Camara Laye, L''Enfant noir) ; le désenchantement après les indépendances (Ahmadou Kourouma, Les Soleils des indépendances ; Ousmane Sembène, Xala).', 'texte', 50, true, 10
from public.courses c where c.slug = 'bac-francais'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comprendre l''épreuve de français et méthode de travail');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Le résumé et la discussion : méthode complète', '## Objectifs de la leçon

- Réduire un texte argumentatif en respectant ses idées, leur ordre et le nombre de mots.
- Construire une discussion argumentée à partir d''une idée du texte.
- S''entraîner sur des textes d''idées liés à la société africaine contemporaine.

## Le résumé : les règles

Résumer, c''est réécrire le texte en plus court, comme si l''auteur lui-même le condensait. Quatre règles sont non négociables.

- Fidélité : garder toutes les idées essentielles, n''en ajouter aucune, ne pas donner son avis.
- Ordre : suivre l''ordre du texte et sa logique (cause, conséquence, opposition, concession).
- Énonciation : garder le point de vue de l''auteur ; si le texte dit « je » ou « nous », le résumé peut le garder ; on n''écrit jamais « l''auteur pense que ».
- Reformulation : ne pas recopier de phrases ; seuls les mots clés sans équivalent peuvent être repris.

Le nombre de mots est fixé par la consigne, souvent autour du quart du texte, avec une marge de tolérance indiquée sur le sujet. Respectez-la strictement et indiquez le nombre de mots à la fin. Pour compter, suivez la convention indiquée par votre professeur ; en général, chaque mot séparé par une espace ou une apostrophe compte (« l''école » = deux mots), et un nombre écrit en chiffres compte pour un mot.

## Le résumé : la méthode en cinq étapes

- Étape 1 : lire le texte deux fois ; dégager le thème et la thèse.
- Étape 2 : repérer les connecteurs logiques et découper le texte en paragraphes d''idées.
- Étape 3 : pour chaque paragraphe, écrire l''idée principale en une phrase, en éliminant exemples, répétitions, citations.
- Étape 4 : rédiger au brouillon en enchaînant les idées avec des connecteurs (« or », « en effet », « pourtant », « ainsi »).
- Étape 5 : compter, ajuster (remplacer une proposition par un nom, une énumération par un terme générique), recopier.

Techniques de réduction : la nominalisation (« parce que les villes grandissent trop vite » devient « à cause de la croissance urbaine ») ; le terme générique (« le mil, le riz, le maïs » devient « les céréales ») ; la suppression des exemples, sauf s''ils portent une idée.

## Application

Texte d''entraînement (rédigé pour ce cours, 150 mots environ) : « Chaque année, des milliers de jeunes quittent les villages du bassin arachidier pour Dakar. On les accuse volontiers de céder au mirage de la ville. Pourtant, leur départ obéit souvent à une logique : la terre s''appauvrit, les pluies deviennent irrégulières et les revenus agricoles ne suffisent plus à nourrir une famille. Partir n''est donc pas fuir, c''est chercher ailleurs ce que le village ne peut plus offrir. Mais la ville ne tient pas toujours ses promesses. Faute de qualification, beaucoup se retrouvent dans de petits métiers précaires et s''entassent dans des quartiers sans services. Le problème n''est donc pas d''empêcher les jeunes de partir, mais de rendre le monde rural capable de les retenir : moderniser l''agriculture, y implanter des formations, des routes et des services de santé. C''est à ce prix que l''exode cessera d''être une fatalité. »

Découpage : 1) l''exode est rationnel (appauvrissement des terres, revenus insuffisants) ; 2) mais la ville déçoit (précarité, quartiers sous-équipés) ; 3) solution : développer le monde rural.

Résumé proposé (41 mots) : « L''exode des jeunes ruraux vers Dakar n''est pas un caprice : l''agriculture ne nourrit plus les familles. Or la ville les condamne souvent à la précarité. Il faut donc, plutôt que freiner les départs, moderniser et équiper les campagnes. »

## La discussion : la méthode

La discussion porte sur une question tirée du texte, par exemple : « Pensez-vous, comme l''auteur, que le développement du monde rural suffira à freiner l''exode ? » Elle se rédige comme un petit devoir argumentatif.

- Introduction : amorce, rappel de l''idée du texte, question posée, annonce du plan.
- Développement : deux ou trois parties. Plan dialectique (oui, mais) ou plan thématique selon la consigne. Chaque paragraphe : un argument, une explication, un exemple précis (situation réelle, œuvre littéraire, fait d''actualité).
- Conclusion : réponse nette et, si possible, ouverture.

Les exemples littéraires enrichissent la discussion : l''exode rural et la ville sont présents dans Maïmouna d''Abdoulaye Sadji (la jeune fille venue de Louga à Dakar), dans Ville cruelle de Mongo Beti (publié sous le nom d''Eza Boto), ou dans La Grève des bàttu d''Aminata Sow Fall, qui met en scène les mendiants de la capitale.

Plan possible : I. Le développement rural peut retenir les jeunes (revenus agricoles améliorés, formations sur place, services de santé). II. Mais il ne suffit pas : l''attrait de la ville tient aussi aux études, aux loisirs, à la liberté individuelle, au désir d''émancipation ; la migration est aussi un projet familial. III. Il faut donc penser ensemble villes et campagnes (villes secondaires, mobilité choisie plutôt que subie).

## Points clés

- Résumé : fidélité, ordre, point de vue de l''auteur, reformulation, nombre de mots.
- Discussion : une question, une thèse, des arguments illustrés d''exemples précis.
- Les exemples littéraires valorisent la copie.

## Exercices pratiques

Exercice 1. Réduisez par nominalisation : « Parce que les prix augmentent sans cesse, les ménages consomment moins. »

Exercice 2. Remplacez par un terme générique : « la télévision, la radio, les journaux et les réseaux sociaux ».

Exercice 3. Combien de mots compte la phrase « L''école n''est pas qu''un lieu d''instruction » selon la convention habituelle ?

Exercice 4. Repérez les trois erreurs dans ce résumé : « Selon l''auteur, l''exode est un mirage, comme le montre l''exemple de mon cousin. La ville est bien. »

Exercice 5. Résumez en 20 mots environ le premier mouvement du texte d''entraînement (jusqu''à « ce que le village ne peut plus offrir »).

Exercice 6. Rédigez l''introduction de la discussion proposée dans la leçon.

## Corrigé

Exercice 1. « La hausse continue des prix réduit la consommation des ménages. »

Exercice 2. « les médias ».

Exercice 3. L'' / école / n'' / est / pas / qu'' / un / lieu / d'' / instruction : 10 mots.

Exercice 4. 1) « Selon l''auteur » : on ne nomme pas l''auteur ; 2) l''exemple personnel (« mon cousin ») ajoute une idée étrangère au texte ; 3) contresens : le texte refuse de voir l''exode comme un mirage, et il présente la ville comme décevante, non comme « bien ».

Exercice 5. Exemple (22 mots) : « Si les jeunes ruraux gagnent Dakar, ce n''est pas par illusion : la terre épuisée et irrégulièrement arrosée ne les nourrit plus. »

Exercice 6. « Dans de nombreux pays africains, les gares routières des capitales voient arriver chaque jour de jeunes ruraux en quête d''un avenir. Pour l''auteur du texte, l''exode cessera lorsque le monde rural sera modernisé et équipé. Mais le développement des campagnes suffit-il à retenir les jeunes ? Nous verrons d''abord ce qu''il peut apporter, puis pourquoi l''attrait de la ville dépasse les seules raisons économiques, avant de proposer une approche qui relie villes et campagnes. »', 'texte', 60, false, 20
from public.courses c where c.slug = 'bac-francais'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Le résumé et la discussion : méthode complète');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Le commentaire composé et la poésie : de la Négritude à aujourd''hui', '## Objectifs de la leçon

- Maîtriser la méthode du commentaire composé.
- Utiliser les outils d''analyse de la poésie : versification, images, rythme, sonorités.
- Situer la Négritude et la poésie africaine dans l''histoire littéraire.

## Le commentaire composé : principes

Commenter un texte, c''est montrer comment sa forme produit son sens. Le commentaire est « composé » parce qu''il n''avance pas ligne à ligne : il s''organise en deux ou trois axes de lecture (centres d''intérêt), chacun divisé en sous-parties. Chaque affirmation s''appuie sur une citation courte, un procédé nommé et une interprétation. C''est la règle des trois éléments : citer, nommer, interpréter.

## La méthode pas à pas

- Lire le texte plusieurs fois ; noter ses premières impressions (émotion, ton, intention).
- Identifier la situation : auteur, œuvre, date, genre, mouvement littéraire, place du passage.
- Repérer l''énonciation : qui parle, à qui, quand, où ?
- Relever les procédés au brouillon, en colonnes : champs lexicaux, figures de style, temps verbaux, rythme, sonorités, ponctuation, structure.
- Regrouper les remarques en deux ou trois axes (par exemple « une célébration lyrique » et « une revendication identitaire ») et ordonner les sous-parties du plus évident au plus profond.
- Rédiger l''introduction : présentation du texte et de son contexte, idée générale, problématique (projet de lecture), annonce des axes.
- Rédiger le développement, avec des transitions entre les axes.
- Conclure : bilan des axes, réponse au projet de lecture, ouverture vers une autre œuvre.

## Les outils de la poésie

- Le vers : on compte les syllabes ; l''alexandrin a 12 syllabes, l''octosyllabe 8, le décasyllabe 10. Le « e » muet se prononce devant une consonne à l''intérieur du vers et ne compte pas en fin de vers ni devant une voyelle.
- Les rimes : suivies (AABB), croisées (ABAB), embrassées (ABBA).
- Le rythme : enjambement (la phrase déborde sur le vers suivant), rejet et contre-rejet, anaphore (reprise d''un mot en début de vers), gradation.
- Le vers libre et le verset : vers sans mètre régulier ni rime obligatoire ; le verset, long et ample, proche de la prose rythmée, est très utilisé par Senghor et Césaire.
- Les images : comparaison (avec un outil : « comme »), métaphore (sans outil), personnification, allégorie.
- Les sonorités : allitération (consonnes répétées), assonance (voyelles répétées).
- Les registres : lyrique (expression des sentiments, première personne), épique (grandeur, combat), polémique (attaque), élégiaque (plainte).

## Histoire littéraire : la Négritude

Dans les années 1930, à Paris, des étudiants noirs venus d''Afrique et des Antilles affirment la valeur des cultures noires face au discours colonial. Léopold Sédar Senghor (Sénégal), Aimé Césaire (Martinique) et Léon-Gontran Damas (Guyane) fondent la revue L''Étudiant noir (1935). Le mot « négritude » est attribué à Césaire, qui l''emploie notamment dans le Cahier d''un retour au pays natal (1939).

- Damas publie Pigments (1937), poèmes de révolte contre l''assimilation.
- Césaire, dans le Cahier d''un retour au pays natal, crie la souffrance et la fierté du peuple noir.
- Senghor publie Chants d''ombre (1945), Hosties noires (1948), Éthiopiques (1956), Nocturnes (1961). En 1948, il publie l''Anthologie de la nouvelle poésie nègre et malgache de langue française, préfacée par Jean-Paul Sartre (« Orphée noir »).
- Birago Diop, conteur (Les Contes d''Amadou Koumba, 1947), est aussi poète : son poème « Souffles » évoque la présence des ancêtres dans la nature.
- David Diop, dans Coups de pilon (1956), écrit une poésie de combat contre la colonisation (le poème « Afrique »).

Thèmes majeurs : la célébration de l''Afrique et de la femme noire, le retour aux sources, la dénonciation de l''esclavage et de la colonisation, le dialogue des cultures. Après les indépendances, la poésie africaine se diversifie : poésie engagée contre les nouveaux pouvoirs, poésie intime, recherche formelle (par exemple chez Tchicaya U Tam''si, poète congolais).

## Exemple de plan : « Femme noire » de Senghor (Chants d''ombre)

Projet de lecture : comment le poète fait-il de l''éloge d''une femme une célébration de l''Afrique ?

- I. Un éloge lyrique de la femme : l''apostrophe initiale « Femme nue, femme noire » et l''adresse à la deuxième personne ; les images sensuelles (le goût, le toucher, l''ouïe) ; le rythme ample des versets.
- II. Une femme qui symbolise l''Afrique : les images de la terre, du fruit, du tam-tam ; la femme comme mère, amante et terre natale.
- III. Un poème de la Négritude : la beauté noire affirmée contre les préjugés ; le poète qui chante pour fixer cette beauté contre le temps et la mort.

## Points clés

- Citer, nommer, interpréter : jamais un procédé sans son effet.
- Deux ou trois axes, pas de commentaire ligne à ligne.
- Négritude : Senghor, Césaire, Damas ; L''Étudiant noir (1935) ; Cahier (1939) ; Anthologie (1948).

## Exercices pratiques

Exercice 1. Comptez les syllabes du vers suivant et dites de quel type de vers il s''agit : « Le soleil sur la mer descend avec lenteur » (vers d''exemple).

Exercice 2. Identifiez la figure de style : a) « Ma mère était comme un baobab » ; b) « L''Afrique, ma mère, me tend les bras » ; c) « Afrique, Afrique, Afrique ! » en début de trois vers successifs.

Exercice 3. Transformez cette remarque en analyse complète : « Il y a beaucoup de mots sur la nature dans le poème. »

Exercice 4. Citez les trois fondateurs de la Négritude, leur pays d''origine et une œuvre de chacun.

Exercice 5. Proposez deux axes de lecture pour un poème qui dénonce la colonisation tout en exprimant l''espoir d''une Afrique libre.

Exercice 6. Rédigez l''introduction d''un commentaire composé de « Femme noire » à partir du plan de la leçon.

## Corrigé

Exercice 1. Le / so / leil / sur / la / mer / des / cend / a / vec / len / teur : 12 syllabes, c''est un alexandrin.

Exercice 2. a) comparaison (outil « comme ») ; b) personnification, l''Afrique étant présentée comme une mère vivante, et métaphore ; c) anaphore (reprise en début de vers), qui crée un effet d''appel et d''insistance.

Exercice 3. « Le champ lexical de la nature (« savane », « fleuve », « baobab ») domine le poème : il enracine le poète dans le paysage africain et fait de la nature le lieu de l''identité retrouvée. »

Exercice 4. Léopold Sédar Senghor (Sénégal), Chants d''ombre ; Aimé Césaire (Martinique), Cahier d''un retour au pays natal ; Léon-Gontran Damas (Guyane), Pigments.

Exercice 5. I. Une dénonciation de la souffrance coloniale (champ lexical de la douleur, images de violence, registre polémique). II. Un chant d''espérance (futur, images de renaissance, rythme ascendant, registre lyrique).

Exercice 6. « Poète et homme d''État sénégalais, Léopold Sédar Senghor est l''un des fondateurs de la Négritude, mouvement qui affirme la valeur des cultures noires. Dans « Femme noire », poème du recueil Chants d''ombre (1945), il s''adresse à une femme dont il chante la beauté. Comment le poète fait-il de cet éloge une célébration de l''Afrique ? Nous étudierons d''abord l''éloge lyrique de la femme, puis la manière dont elle devient le symbole de l''Afrique, avant de montrer que le poème illustre les valeurs de la Négritude. »', 'texte', 60, false, 30
from public.courses c where c.slug = 'bac-francais'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Le commentaire composé et la poésie : de la Négritude à aujourd''hui');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'La dissertation littéraire : roman africain, théâtre et grands thèmes', '## Objectifs de la leçon

- Maîtriser la méthode de la dissertation littéraire.
- Réviser l''histoire du roman africain et du théâtre.
- Disposer d''exemples précis tirés d''œuvres africaines et françaises.

## La dissertation littéraire : méthode

Le sujet prend souvent la forme d''une affirmation sur la littérature suivie d''une consigne (« Vous discuterez cette opinion en vous appuyant sur des exemples précis »), ou d''une question directe (« Le roman doit-il refléter la société ? »).

- Analyser le sujet : définir les mots clés (roman, engagement, divertir, réalité), repérer la thèse proposée et ses limites, identifier le genre littéraire concerné.
- Formuler la problématique : la question que pose réellement le sujet.
- Chercher des exemples : pour chaque idée, une œuvre précise (auteur, titre, personnage, scène), pas un simple titre.
- Choisir le plan : dialectique (la thèse, ses limites, un dépassement) pour une opinion à discuter ; analytique ou thématique pour une question du type « En quoi… ? ».
- Rédiger : introduction (amorce, citation du sujet ou reformulation, problématique, annonce du plan), développement avec transitions, conclusion.

Chaque paragraphe suit le schéma : idée directrice, explication, exemple développé, lien avec le sujet. Un exemple développé ne raconte pas l''œuvre : il montre en quoi une scène ou un personnage prouve l''idée.

## Histoire du roman africain d''expression française

- Les débuts : Batouala de René Maran (prix Goncourt 1921), écrivain d''origine guyanaise, dénonce les abus coloniaux dans sa préface ; Force-Bonté de Bakary Diallo (1926) ; Karim d''Ousmane Socé (1935), roman d''un jeune Sénégalais entre Saint-Louis et Dakar.
- Les années 1950, le roman de la contestation coloniale : Mongo Beti, Ville cruelle (1954, sous le nom d''Eza Boto) et Le Pauvre Christ de Bomba (1956) ; Ferdinand Oyono, Une vie de boy et Le Vieux Nègre et la médaille (1956) ; Ousmane Sembène, Les Bouts de bois de Dieu (1960), sur la grève des cheminots du Dakar-Niger. Camara Laye, avec L''Enfant noir (1953), offre plutôt un récit autobiographique de l''enfance en Haute-Guinée.
- Le conflit des cultures : Cheikh Hamidou Kane, L''Aventure ambiguë (1961), où Samba Diallo, partagé entre l''école coranique et l''école occidentale, ne trouve pas d''équilibre.
- Le désenchantement après les indépendances : Ahmadou Kourouma, Les Soleils des indépendances (1968), avec Fama, prince malinké déchu ; Ousmane Sembène, Xala (1973), satire de la nouvelle bourgeoisie ; Yambo Ouologuem, Le Devoir de violence (1968).
- La parole des femmes : Mariama Bâ, Une si longue lettre (1979) ; Aminata Sow Fall, La Grève des bàttu (1979) ; Ken Bugul, Le Baobab fou (1982).
- Le roman contemporain : Boubacar Boris Diop, Murambi, le livre des ossements (2000), sur le génocide des Tutsi au Rwanda ; Ahmadou Kourouma, Allah n''est pas obligé (2000), sur les enfants-soldats ; Mohamed Mbougar Sarr, La plus secrète mémoire des hommes (prix Goncourt 2021).

## Histoire du théâtre africain

- Les origines : les formes traditionnelles (contes dits devant un public, récits des griots, cérémonies) ; dans les années 1930, le théâtre de l''École normale William-Ponty, où les élèves mettaient en scène des sujets africains.
- Le théâtre historique : Cheik Aliou Ndao, L''Exil d''Albouri (1967), sur le roi du Djolof face à la conquête coloniale ; Amadou Cissé Dia, Les Derniers Jours de Lat Dior ; Aimé Césaire, La Tragédie du roi Christophe (1963) et Une saison au Congo (1966), sur les difficultés du pouvoir après l''indépendance ; Bernard Dadié, Béatrice du Congo.
- La comédie sociale : Guillaume Oyônô Mbia, Trois prétendants… un mari (1964), satire du mariage arrangé et de la dot ; Bernard Dadié, Monsieur Thôgô-gnini, satire de l''arrivisme.
- Le théâtre contemporain : Sony Labou Tansi, La Parenthèse de sang (1981), dénonciation des dictatures ; le théâtre en langues nationales et le théâtre de sensibilisation.
- Repères français utiles : Molière (la comédie qui corrige les mœurs : Le Tartuffe, L''Avare), Corneille et Racine (la tragédie classique), Victor Hugo (le drame romantique), Beckett et Ionesco (le théâtre de l''absurde).

## Exemple de plan détaillé

Sujet : « Le roman africain est avant tout un témoignage sur la société. » Discutez cette opinion.

- I. Le roman africain témoigne de la société : il dénonce la colonisation (Une vie de boy, où le journal de Toundi révèle l''hypocrisie des colons), les injustices sociales (Les Bouts de bois de Dieu), la condition des femmes (Une si longue lettre).
- II. Mais il n''est pas seulement un document : il crée des personnages et des destins singuliers (Samba Diallo dans L''Aventure ambiguë, figure tragique) ; il invente une langue (Kourouma fait entendre le malinké dans le français des Soleils des indépendances) ; il explore l''intime (L''Enfant noir).
- III. Le témoignage passe par l''art : c''est parce qu''il est une œuvre esthétique que le roman rend la réalité sensible et durable ; l''imaginaire (l''ironie de Sembène dans Xala, l''enquête littéraire de Mbougar Sarr) éclaire mieux la société qu''un simple constat.

## Points clés

- Un exemple = auteur, titre, scène ou personnage, et lien explicite avec l''idée.
- Roman : contestation coloniale (années 1950), conflit des cultures, désenchantement (1968), voix des femmes (1979), renouveau contemporain.
- Théâtre : Ponty, théâtre historique, comédie sociale, dénonciation des dictatures.

## Exercices pratiques

Exercice 1. Associez chaque œuvre à son auteur : L''Aventure ambiguë ; Les Soleils des indépendances ; Trois prétendants… un mari ; L''Exil d''Albouri ; Une vie de boy.

Exercice 2. Formulez une problématique pour le sujet : « Le théâtre n''est-il qu''un divertissement ? »

Exercice 3. Développez un exemple (5 à 6 lignes) montrant que le roman peut dénoncer la condition des femmes.

Exercice 4. Pourquoi peut-on parler de « désenchantement » à propos des Soleils des indépendances et de Xala ?

Exercice 5. Proposez un plan dialectique pour : « La littérature doit-elle être engagée ? »

Exercice 6. Rédigez la conclusion du plan détaillé de la leçon.

## Corrigé

Exercice 1. L''Aventure ambiguë : Cheikh Hamidou Kane ; Les Soleils des indépendances : Ahmadou Kourouma ; Trois prétendants… un mari : Guillaume Oyônô Mbia ; L''Exil d''Albouri : Cheik Aliou Ndao ; Une vie de boy : Ferdinand Oyono.

Exercice 2. « Le théâtre, qui fait rire ou émeut un public rassemblé, se borne-t-il à distraire, ou peut-il aussi faire réfléchir et transformer la société ? »

Exercice 3. « Dans Une si longue lettre, Mariama Bâ donne la parole à Ramatoulaye, qui découvre, après des années de mariage, que son mari Modou a pris une seconde épouse, très jeune. La forme de la lettre adressée à son amie Aïssatou permet d''exprimer la blessure intime de l''héroïne, mais aussi une réflexion sur la polygamie, l''éducation des filles et la place des femmes dans la société sénégalaise. Le roman transforme ainsi une souffrance individuelle en question collective. »

Exercice 4. Ces romans montrent la déception qui a suivi les indépendances : les espoirs de liberté et de prospérité laissent place au parti unique, à la corruption et à la misère. Fama, dans Les Soleils des indépendances, a perdu son rang et ne trouve pas sa place dans le nouvel ordre ; El Hadji, dans Xala, incarne une bourgeoisie qui imite l''ancien colonisateur.

Exercice 5. I. Oui : l''écrivain a une responsabilité et la littérature peut dénoncer (Les Bouts de bois de Dieu, Cahier d''un retour au pays natal, La Parenthèse de sang). II. Mais l''engagement peut nuire à l''art s''il réduit l''œuvre à un message, et la littérature a d''autres fonctions (plaisir, expression de l''intime, beauté de la langue). III. L''engagement le plus fort passe par la qualité de l''œuvre : c''est la force du style qui rend un message durable.

Exercice 6. « Le roman africain est bien un témoignage : de la contestation coloniale aux voix des femmes, il a dit les blessures et les espoirs des sociétés africaines. Mais il ne s''y réduit pas, car il crée des personnages, une langue et un imaginaire. C''est même par cet art que le témoignage devient universel et durable. On pourrait poser la même question à la poésie de la Négritude, qui fut à la fois un combat et une recherche de beauté. »', 'texte', 60, false, 40
from public.courses c where c.slug = 'bac-francais'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'La dissertation littéraire : roman africain, théâtre et grands thèmes');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen : entraînement complet corrigé', '## Présentation

Voici un sujet d''entraînement conçu sur le modèle de l''épreuve de français du Bac. Ce n''est pas un sujet officiel, et les textes proposés ont été rédigés pour ce cours. Choisissez un seul des trois sujets et traitez-le en temps limité ; la durée réelle est celle fixée par les textes officiels en vigueur. La marge de mots indiquée et la grille du corrigé sont indicatives et non officielles.

## Exercices pratiques

Exercice 1 (sujet 1 : résumé et discussion). Lisez le texte suivant.

« Le téléphone portable a changé la vie des familles africaines plus vite qu''aucune autre invention. Grâce à lui, l''étudiant parti à Dakar parle chaque soir à sa mère restée au village, le commerçant reçoit ses paiements sans se déplacer et le pêcheur connaît les prix du marché avant d''accoster. Jamais l''information n''a circulé aussi librement. Pourtant, cette révolution a son revers. Les jeunes passent des heures sur les réseaux sociaux, où les rumeurs se propagent plus vite que les vérités. Les conversations familiales s''appauvrissent : autour du plat commun, chacun regarde son écran. Les plus fragiles s''endettent pour acheter le dernier modèle, signe de réussite sociale. Faut-il pour autant condamner l''outil ? Ce serait oublier qu''un téléphone n''est ni bon ni mauvais en lui-même : tout dépend de l''usage qu''on en fait. Ce qui manque, ce n''est pas la technologie, c''est l''éducation à son usage. L''école, les familles et les médias devraient apprendre aux jeunes à vérifier une information, à protéger leur vie privée et à maîtriser leur temps d''écran. Le portable deviendrait alors ce qu''il aurait toujours dû être : un instrument de liberté, et non une nouvelle dépendance. »

- a) Résumez ce texte en 55 mots (une marge de plus ou moins 10 % est admise dans cet entraînement). Indiquez le nombre de mots utilisés.
- b) Discussion : « Ce qui manque, ce n''est pas la technologie, c''est l''éducation à son usage. » Partagez-vous ce point de vue ? Vous répondrez dans un développement argumenté et illustré d''exemples précis.

Exercice 2 (sujet 2 : commentaire composé). Vous ferez un commentaire composé du poème suivant, rédigé pour cet entraînement. Vous pourrez, par exemple, étudier la célébration du fleuve et la méditation sur le temps.

« Fleuve, vieux père aux eaux lentes,
Tu portes le limon des siècles jusqu''à la mer.
Sur tes rives, les femmes chantent en lavant le linge,
Les enfants plongent, les pirogues glissent comme des prières.
Fleuve, tu as vu passer les rois et les marchands,
Les chaînes des captifs et les drapeaux nouveaux.
Tu n''as rien dit. Tu as continué ta route.
Apprends-moi ta patience, fleuve,
Apprends-moi à porter la mémoire sans me noyer,
Et à aller, comme toi, vers l''océan qui nous attend. »

Exercice 3 (sujet 3 : dissertation). On dit souvent que la poésie est un luxe inutile dans un monde qui a d''abord besoin de pain et de justice. Vous discuterez cette opinion en vous appuyant sur des œuvres précises.

Exercice 4 (auto-évaluation). Après avoir traité votre sujet, vérifiez : orthographe des noms d''auteurs et des titres, présence d''une problématique, transitions, nombre de mots (pour le résumé).

Exercice 5 (correction). Un élève écrit en commentaire : « Au vers 4, il y a une comparaison. » Améliorez cette remarque.

## Corrigé

Exercice 1. a) Structure du texte : 1) les bienfaits du portable (communication, commerce, information) ; 2) ses dangers (rumeurs, appauvrissement des liens familiaux, endettement) ; 3) l''outil est neutre : il faut éduquer à son usage (vérifier, protéger, maîtriser), pour qu''il libère au lieu d''asservir.

Résumé proposé (55 mots) : « Le portable a bouleversé les familles africaines : il relie les proches, facilite le commerce et libère l''information. Mais il propage des rumeurs, isole chacun devant son écran et pousse à l''endettement. Pourtant, l''outil est neutre : école, familles et médias doivent enseigner son bon usage pour qu''il libère au lieu d''asservir. »

b) Discussion. Introduction : rappel de la thèse, question (l''éducation suffit-elle à résoudre les problèmes posés par le portable ?), annonce du plan. I. L''éducation est essentielle : vérifier une information, protéger ses données, gérer son temps, cela s''apprend ; exemple de la propagation de fausses nouvelles pendant une épidémie. II. Mais elle ne suffit pas : les applications sont conçues pour retenir l''attention ; la pression sociale pousse à l''achat ; l''accès inégal au réseau dans les zones rurales est aussi un problème technologique. III. Il faut donc associer éducation, règles (protection des données, régulation des plateformes) et choix collectifs. Conclusion : l''auteur a raison sur le rôle central de l''éducation, mais elle doit s''accompagner de règles et d''un accès équitable.

Exercice 2. Situation : poème en vers libres, adressé au fleuve (apostrophe « Fleuve »), registre lyrique. Projet de lecture : comment le poète fait-il du fleuve un témoin de l''histoire et un maître de sagesse ?

I. Une célébration du fleuve vivant. 1) La personnification : « vieux père », le tutoiement, le fleuve qui « voit » et « ne dit rien ». 2) Un tableau de la vie quotidienne : énumération des femmes, des enfants, des pirogues ; la comparaison des pirogues « comme des prières » donne au paysage une dimension sacrée. 3) Le rythme lent des vers longs imite le cours des « eaux lentes ».

II. Une méditation sur le temps et la mémoire. 1) Le fleuve, témoin de l''histoire : les antithèses « rois » et « marchands », « chaînes des captifs » et « drapeaux nouveaux » résument la traite, la colonisation et les indépendances. 2) Le silence du fleuve (phrases courtes : « Tu n''as rien dit. ») contraste avec la violence de l''histoire. 3) L''anaphore « Apprends-moi » transforme l''éloge en prière : le poète demande la patience et la force de porter la mémoire « sans [se] noyer ». La mer finale, « l''océan qui nous attend », évoque la mort, acceptée avec sérénité.

Conclusion : le poème unit la célébration d''un paysage africain, la mémoire historique et une leçon de sagesse ; on peut le rapprocher de « Souffles » de Birago Diop, où la nature est habitée par la présence des morts.

Exercice 3. Problématique : la poésie, qui ne nourrit pas, est-elle un luxe, ou répond-elle à un besoin essentiel de l''homme ? I. La poésie peut sembler inutile : elle ne produit rien de matériel ; certains poèmes cherchent la seule beauté formelle. II. Pourtant elle combat pour la justice : Césaire dans le Cahier d''un retour au pays natal, David Diop dans Coups de pilon, Damas dans Pigments dénoncent l''oppression ; Victor Hugo, dans Les Châtiments, attaque Napoléon III. III. Elle répond aussi à un besoin aussi vital que le pain : dire la dignité, la mémoire, l''émotion ; la Négritude de Senghor affirme une identité ; la poésie orale accompagne les travaux, les fêtes et les deuils. Conclusion : la poésie n''est pas un luxe mais une nourriture de l''esprit, qui participe à la justice en éveillant les consciences.

Exercice 4. Si un élément manque, retravaillez-le sur un nouveau sujet la semaine suivante.

Exercice 5. « Au vers 4, la comparaison des pirogues glissant “ comme des prières ” associe le mouvement silencieux des embarcations à un acte sacré : le quotidien du fleuve prend une dimension spirituelle, qui annonce la prière finale du poète. »

Grille indicative et non officielle : compréhension et fidélité ; organisation ; pertinence des exemples et des analyses ; correction de la langue.', 'texte', 75, false, 50
from public.courses c where c.slug = 'bac-francais'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen : entraînement complet corrigé');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : révision intensive la veille du Bac de français', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : élèves de Terminale des séries L, S et G qui passent l''épreuve de français.
- Objectifs : revoir en accéléré les trois méthodes (résumé-discussion, commentaire composé, dissertation), corriger en direct des productions type Bac, réactiver les repères d''histoire littéraire, préparer la gestion du temps.
- Matériel : tableau ou diaporama, textes courts imprimés, feuille de brouillon, chronomètre.
- Prérequis : avoir suivi les leçons 1 à 5 de ce cours.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonsoir à toutes et à tous. Demain, vous aurez le choix entre trois sujets. Ce soir, notre but est simple : que chacun sache exactement quoi faire face à chacun d''eux, et qu''il entre dans la salle avec des exemples précis en tête. Nous allons alterner rappels courts, exercices et corrections. Gardez votre brouillon à portée de main.

Visuel : les trois sujets de l''épreuve sous forme de trois colonnes, avec pour chacun les mots clés « fidélité », « interpréter », « argumenter ».

## 05:00 – 18:00 · Rappels et correction : le résumé

Rappel des quatre règles : fidélité, ordre, point de vue de l''auteur, reformulation. Et la règle d''or : le nombre de mots, dans la marge indiquée sur le sujet, avec le total écrit à la fin.

Exercice : je projette un paragraphe de 80 mots environ sur l''école et l''emploi des jeunes. Il affirme que l''école forme trop de diplômés sans débouchés, que l''économie a besoin de techniciens, et qu''il faut donc développer la formation professionnelle. Résumez-le en 20 mots. Vous avez quatre minutes.

Correction : « L''école multiplie les diplômés sans emploi alors que l''économie manque de techniciens : il faut développer la formation professionnelle. » Comptons ensemble : L'' / école / multiplie / les / diplômés / sans / emploi / alors / que / l'' / économie / manque / de / techniciens / il / faut / développer / la / formation / professionnelle : 20 mots. Remarquez les procédés : la logique cause-conséquence est conservée par « alors que » et « il faut » ; aucune phrase n''est recopiée ; on ne nomme pas l''auteur.

## 18:00 – 28:00 · Rappels : la discussion

La discussion n''est pas un résumé bis. On vous demande votre point de vue argumenté sur une idée du texte. Introduction : amorce, rappel de l''idée, question, plan. Développement : deux ou trois parties, chaque paragraphe avec un argument, une explication et un exemple précis. Conclusion : une réponse nette.

Exercice oral : « La ville offre-t-elle plus de chances de réussite que la campagne ? » Donnez-moi un argument pour, un argument contre, et un exemple littéraire. Réponses attendues : pour, l''accès aux études et aux emplois ; contre, la précarité et la solitude ; exemple, Maïmouna d''Abdoulaye Sadji, où la jeune fille venue de Louga connaît à Dakar le succès puis la déchéance.

Construisons maintenant l''introduction au tableau. Amorce : « Chaque année, des milliers de jeunes quittent Kolda, Matam ou Kaffrine pour Dakar, convaincus que leur avenir s''y joue. » Rappel de l''idée : le texte affirme que la ville concentre les chances de réussite. Question : la ville offre-t-elle vraiment plus de chances que la campagne ? Annonce du plan : nous verrons d''abord les atouts réels de la ville, puis ses illusions, avant de montrer que la réussite dépend surtout des conditions offertes à chacun, en ville comme à la campagne. Notez que l''introduction tient en cinq phrases : inutile d''en écrire davantage, le correcteur veut voir rapidement que vous avez compris la question.

## 28:00 – 42:00 · Rappels et correction : le commentaire composé

La règle des trois éléments : citer, nommer, interpréter. Je projette deux phrases d''élèves. Première : « Le poète utilise une anaphore. » Que manque-t-il ? La citation et l''effet. Version corrigée : « L''anaphore de “ Afrique ” en tête de trois vers successifs crée un effet d''appel solennel : le poète invoque sa terre comme une personne aimée. »

Deuxième phrase : « Dans le texte, Kourouma raconte que Fama est triste. » C''est de la paraphrase. Version corrigée : « Le vocabulaire de la déchéance et l''ironie du narrateur font de Fama un prince dérisoire : à travers lui, Kourouma montre la fin d''un monde ancien que les indépendances n''ont pas remplacé par un monde plus juste. »

Rappel de versification : alexandrin, 12 syllabes ; « e » muet compté devant consonne à l''intérieur du vers ; rimes suivies, croisées, embrassées ; enjambement ; verset chez Senghor et Césaire.

## 42:00 – 50:00 · Pause et quiz interactif

Petite pause, puis cinq questions. Répondez à voix haute ou dans le chat.

- Question 1 : en quelle année est fondée la revue L''Étudiant noir ? Réponse : 1935.
- Question 2 : qui a écrit L''Aventure ambiguë ? Réponse : Cheikh Hamidou Kane (1961).
- Question 3 : quel est le genre d''Une si longue lettre ? Réponse : un roman épistolaire.
- Question 4 : qu''est-ce qu''un enjambement ? Réponse : la phrase déborde d''un vers sur le vers suivant.
- Question 5 : qui a écrit La Tragédie du roi Christophe ? Réponse : Aimé Césaire.

## 50:00 – 1:04:00 · Correction commentée : une dissertation

Sujet : « Le théâtre doit-il seulement faire rire ? » Cinq minutes pour chercher une problématique et trois idées.

Correction. Problématique : le théâtre, art du spectacle, n''est-il qu''un divertissement, ou peut-il aussi instruire et faire réfléchir ? Partie I : le théâtre fait rire et divertit ; la comédie de Molière, le comique de situation de Trois prétendants… un mari de Guillaume Oyônô Mbia. Partie II : mais le rire est aussi une arme ; il corrige les mœurs et dénonce : la cupidité du père qui veut marier sa fille au plus offrant, chez Oyônô Mbia ; l''arrivisme dans Monsieur Thôgô-gnini de Bernard Dadié. Partie III : le théâtre peut aussi émouvoir et faire réfléchir sans rire : la tragédie historique, avec L''Exil d''Albouri de Cheik Aliou Ndao, ou La Tragédie du roi Christophe de Césaire, qui interroge le pouvoir après l''indépendance. Conclusion : le rire n''est qu''un des moyens du théâtre, qui vise à toucher et à éclairer le spectateur.

Regardez comment chaque exemple est précis : un auteur, un titre, une situation, et le lien avec l''idée.

## 1:04:00 – 1:14:00 · Banque d''exemples express

Ce soir, revoyez une banque de dix exemples sûrs. Colonisation : Une vie de boy d''Oyono ; Le Pauvre Christ de Bomba de Mongo Beti. Tradition et modernité : L''Aventure ambiguë ; L''Enfant noir de Camara Laye. Indépendances : Les Soleils des indépendances ; Xala de Sembène. Condition féminine : Une si longue lettre ; La Grève des bàttu d''Aminata Sow Fall pour la société dakaroise. Poésie engagée : Cahier d''un retour au pays natal ; Coups de pilon de David Diop. Repères français : Molière pour la comédie, Hugo pour l''engagement du poète, Baudelaire et Les Fleurs du mal pour la modernité poétique.

Pour chaque exemple, préparez une phrase qui le relie à une idée. Par exemple : « Dans Une vie de boy, le journal intime de Toundi révèle, derrière la façade respectable des colons, leur mépris et leur violence : le roman dévoile ce que le discours colonial cache. » Avec dix phrases de ce type, vous pourrez nourrir une discussion comme une dissertation.

N''utilisez demain que des œuvres que vous avez réellement lues ou étudiées en classe : un exemple faux ou approximatif fait plus de tort qu''un exemple en moins.

## 1:14:00 – 1:20:00 · Gestion du temps le jour J

Répartissez votre temps en proportion de la durée officielle. Lecture des trois sujets et choix : environ 10 minutes. Brouillon : environ un quart du temps (plan détaillé, introduction rédigée ; pour le résumé, brouillon complet et comptage). Rédaction au propre. Relecture : au moins 10 minutes, en vérifiant les accords, les titres d''œuvres et, pour le résumé, le total des mots. Sautez une ligne entre les parties et faites des alinéas : une copie aérée se lit mieux.

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Synthèse : le résumé exige fidélité et précision ; le commentaire relie forme et sens ; la dissertation argumente avec des exemples précis. Évaluation finale.

- Question 1 : peut-on écrire « selon l''auteur » dans un résumé ? Réponse : non, le résumé adopte le point de vue de l''auteur, sans le nommer.
- Question 2 : quels sont les trois éléments d''une bonne remarque de commentaire ? Réponse : une citation, un procédé nommé, une interprétation.
- Question 3 : combien de syllabes compte un alexandrin ? Réponse : 12.
- Question 4 : citez deux romans du désenchantement après les indépendances. Réponse : Les Soleils des indépendances d''Ahmadou Kourouma (1968) et Xala d''Ousmane Sembène (1973).
- Question 5 : que doit contenir l''introduction d''une dissertation ? Réponse : une amorce, le sujet cité ou reformulé, la problématique, l''annonce du plan.

Merci pour votre attention. Relisez votre banque d''exemples, préparez votre matériel, dormez suffisamment. Demain, lisez bien les trois sujets avant de choisir. Bonne chance à toutes et à tous.', 'video', 90, false, 60
from public.courses c where c.slug = 'bac-francais'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : révision intensive la veille du Bac de français');

-- Cours : Histoire-Géographie : réussir l'épreuve du Bac
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'bac-histoire-geographie', (select id from public.levels where name = 'Terminale'), null, 'Histoire-Géographie', 'Histoire-Géographie : réussir l''épreuve du Bac', 'Ce cours prépare les élèves de Terminale des séries L, S et G à l''épreuve d''Histoire-Géographie du Baccalauréat, en révisant le programme du lycée avec un accent sur la Terminale : relations internationales depuis 1945 (guerre froide, décolonisation, non-alignement, unité africaine) et géographie de la mondialisation, du développement et de la population. Il entraîne aux méthodes de la dissertation, du commentaire de document et du croquis, avec des fiches, des exercices corrigés et un sujet d''entraînement complet. Prérequis : connaître les grandes étapes de l''histoire du XXe siècle et savoir lire une carte.', true, 207
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comprendre l''épreuve et méthode de travail', '## Objectifs de la leçon

- Comprendre ce que l''épreuve d''Histoire-Géographie du Baccalauréat attend de vous.
- Maîtriser les trois exercices habituels : la dissertation, le commentaire de document et le croquis.
- Repérer les erreurs qui font perdre le plus de points.
- Construire un plan de révision réaliste sur dix semaines.

## À qui s''adresse ce cours ?

Ce cours s''adresse aux élèves de Terminale des séries L, S et G qui passent l''épreuve d''Histoire-Géographie au Baccalauréat sénégalais. Les attentes de fond sont les mêmes pour tous ; ce qui change d''une série à l''autre (durée, coefficient, nombre de sujets proposés), c''est le cadre fixé selon les textes officiels en vigueur. Renseignez-vous auprès de votre établissement et ne vous fiez pas aux rumeurs.

Le programme révisé couvre le lycée, avec un poids décisif sur la Terminale. En histoire : les relations internationales depuis 1945 (guerre froide, décolonisation de l''Asie et de l''Afrique, non-alignement, construction de l''unité africaine, mondialisation). En géographie : les grandes puissances et les ensembles économiques, l''Afrique et le Sénégal dans la mondialisation, les questions de développement et de population.

## Ce que l''épreuve évalue

Le correcteur vérifie quatre compétences. D''abord des connaissances exactes : dates, acteurs, notions, localisations. Ensuite la capacité à problématiser, c''est-à-dire à transformer un sujet en question à résoudre. Puis la capacité à organiser une démonstration en parties équilibrées. Enfin la qualité de l''expression : phrases correctes, vocabulaire précis, écriture lisible.

## Exercice 1 : la dissertation

La dissertation est une réflexion organisée sur un sujet. Elle se prépare au brouillon en cinq étapes.

- Analyser le sujet : souligner chaque mot, définir les termes clés, repérer les bornes chronologiques et l''espace concerné.
- Formuler une problématique : une question centrale à laquelle tout le devoir répond.
- Rassembler les connaissances : dates, faits, exemples précis, chiffres sûrs.
- Construire un plan en deux ou trois parties, chacune divisée en deux ou trois sous-parties.
- Rédiger l''introduction et la conclusion au brouillon, puis le développement directement au propre.

L''introduction comprend une accroche (un fait ou une date forte), la définition des termes, la problématique et l''annonce du plan. La conclusion répond clairement à la problématique, puis ouvre sur une question voisine.

Trois types de plans reviennent souvent. Le plan chronologique convient aux sujets d''évolution (par exemple « La guerre froide de 1947 à 1991 » : affrontement, détente, reprise puis fin). Le plan thématique convient aux sujets de bilan (causes, formes, conséquences). Le plan analytique (constat, explications, perspectives) convient bien aux sujets de géographie.

Exemple d''analyse : « La décolonisation de l''Afrique noire française (1944-1960) ». Les bornes sont précises : 1944 correspond à la conférence de Brazzaville, 1960 à l''année des indépendances. L''espace est l''Afrique occidentale et équatoriale françaises. Problématique possible : comment ces territoires sont-ils passés de la tutelle coloniale à l''indépendance, et par quelles étapes ?

## Exercice 2 : le commentaire de document

On vous fournit un ou plusieurs documents (texte, carte, tableau statistique, graphique, caricature) et des questions ou une consigne générale.

- Présenter le document : nature, auteur, date, source, contexte, idée générale.
- Lire les questions avant le document, puis lire le document deux fois, crayon en main.
- Prélever les informations utiles en citant le document entre guillemets ou en reprenant ses chiffres.
- Expliquer ces informations avec vos connaissances : un document ne parle pas seul.
- Porter un regard critique : point de vue de l''auteur, limites, ce que le document ne dit pas.

Erreur classique : paraphraser, c''est-à-dire recopier le texte avec d''autres mots. Le correcteur attend de l''explication, pas une répétition.

## Exercice 3 : le croquis

Le croquis est une représentation simplifiée d''un espace pour répondre à un sujet. Il se juge sur trois critères : la pertinence des informations, la lisibilité et la légende organisée.

- Un titre qui reprend le sujet.
- Une légende organisée en deux ou trois parties titrées, qui correspondent au plan d''une petite dissertation.
- Des figurés adaptés : surfaces (couleurs, hachures) pour les zones, points ou symboles pour les villes et ports, lignes et flèches pour les flux et les axes.
- Une nomenclature écrite à l''horizontale, lisible, en majuscules pour les États et océans.

## Gérer le temps le jour de l''épreuve

Quelle que soit la durée officielle, répartissez votre temps ainsi : environ un quart pour l''analyse du sujet et le brouillon, deux tiers pour la rédaction, et le reste pour la relecture.

## Les erreurs les plus fréquentes

- Hors-sujet : traiter la guerre froide en général quand le sujet porte sur la crise de Cuba.
- Dates fausses ou approximatives : mieux vaut « au début des années 1960 » qu''une date inventée.
- Plan déséquilibré : une partie de deux pages et une autre de cinq lignes.
- Absence d''exemples africains alors que le programme les met au cœur des questions.
- Croquis sans légende organisée ou sans titre.

## Plan de révision sur dix semaines

- Semaine 1 : méthode (dissertation, commentaire, croquis) et lecture du programme.
- Semaine 2 : la guerre froide, des origines à la détente.
- Semaine 3 : la guerre froide, de la reprise des tensions à la fin de l''URSS ; le monde après 1991.
- Semaine 4 : la décolonisation de l''Asie, Bandung et le non-alignement.
- Semaine 5 : la décolonisation de l''Afrique et le Sénégal, de Brazzaville à l''indépendance.
- Semaine 6 : la construction de l''unité africaine (OUA, UA, organisations régionales).
- Semaine 7 : les grandes puissances et les ensembles économiques.
- Semaine 8 : l''Afrique et le Sénégal dans la mondialisation ; développement et population.
- Semaine 9 : sujets d''entraînement en temps limité, un en histoire, un en géographie.
- Semaine 10 : fiches de dates, de notions et de croquis ; repos la veille.

Pour chaque chapitre, fabriquez une fiche d''une page : dix dates, dix notions définies, trois exemples africains, un plan de dissertation type.

## Points clés

- Répondre au sujet, rien qu''au sujet.
- Une problématique claire et un plan équilibré.
- Des connaissances exactes et des exemples africains et sénégalais.

## Exercices pratiques

1. Définissez en une phrase chacun des termes suivants : problématique, paraphrase, nomenclature.

2. Repérez les bornes chronologiques et l''espace du sujet : « Le non-alignement de 1955 à 1961 ».

3. Proposez une problématique pour le sujet : « Les relations Est-Ouest de 1962 à 1975 ».

4. Classez ces figurés selon leur type (surface, point, ligne) : un port, une zone agricole, une route maritime, une capitale, un désert.

5. Une population passe de 12 à 18 millions d''habitants. Calculez l''augmentation absolue et le taux de croissance.

6. Construisez un plan détaillé en deux parties pour le sujet : « Le Sénégal de 1944 à 1960 : de la colonie à l''État indépendant ».

## Corrigé

1. La problématique est la question centrale qui guide tout le devoir. La paraphrase consiste à répéter le document avec d''autres mots sans l''expliquer. La nomenclature est l''ensemble des noms de lieux écrits sur une carte ou un croquis.

2. Bornes : 1955 (conférence de Bandung, avril 1955) et 1961 (conférence de Belgrade, septembre 1961, premier sommet des pays non alignés). Espace : les pays d''Asie et d''Afrique nouvellement indépendants, puis le monde entier dans le contexte de la guerre froide.

3. Exemple : « Comment les relations entre les États-Unis et l''URSS passent-elles, après la crise de Cuba, d''une confrontation dangereuse à une coexistence plus apaisée, sans que la rivalité disparaisse ? »

4. Surfaces : zone agricole, désert. Points : port, capitale. Lignes : route maritime.

5. Augmentation absolue : 18 − 12 = 6 millions. Taux : 6 / 12 × 100 = 50 %.

6. Partie 1 : une marche progressive vers l''autonomie (1944-1958) : conférence de Brazzaville (1944), citoyenneté accordée aux habitants des colonies par la loi Lamine Guèye (1946), rôle de Lamine Guèye et Léopold Sédar Senghor, loi-cadre Defferre (1956). Partie 2 : de la Communauté à l''indépendance (1958-1960) : référendum de septembre 1958 où le Sénégal vote « oui », Fédération du Mali avec le Soudan français, indépendance de la Fédération le 20 juin 1960, éclatement le 20 août 1960, Senghor élu président de la République en septembre 1960.', 'texte', 45, true, 10
from public.courses c where c.slug = 'bac-histoire-geographie'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comprendre l''épreuve et méthode de travail');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Histoire (1) : la guerre froide et le monde depuis 1945', '## Objectifs de la leçon

- Expliquer les origines de la guerre froide et la formation des deux blocs.
- Connaître les grandes crises et les phases de l''affrontement Est-Ouest de 1947 à 1991.
- Comprendre la fin de la guerre froide et le nouvel ordre mondial.
- Montrer comment l''Afrique a été concernée par cet affrontement.

## Fiche 1 : définitions indispensables

- Guerre froide : affrontement idéologique, politique, économique et militaire entre les États-Unis et l''URSS, de 1947 à 1991, sans conflit armé direct entre les deux Grands.
- Bipolarisation : division du monde en deux blocs rivaux.
- Endiguement (containment) : politique américaine visant à empêcher l''extension du communisme.
- Équilibre de la terreur : dissuasion fondée sur la possession par chaque camp d''armes nucléaires capables de détruire l''autre.
- Détente : période d''apaisement relatif des tensions (environ 1962-1975).

## Fiche 2 : les origines et la formation des blocs (1945-1949)

En 1945, les Alliés ont vaincu l''Allemagne et le Japon. La conférence de Yalta (février 1945) réunit Roosevelt, Churchill et Staline. L''ONU est créée par la Charte de San Francisco, signée le 26 juin 1945. Mais l''alliance se défait vite : l''URSS installe des gouvernements communistes en Europe de l''Est ; les États-Unis veulent défendre la démocratie libérale et l''économie de marché.

- 12 mars 1947 : doctrine Truman, l''endiguement du communisme.
- Juin 1947 : plan Marshall, aide économique américaine à la reconstruction de l''Europe.
- Septembre 1947 : doctrine Jdanov, qui décrit un monde divisé en deux camps ; création du Kominform.
- 1948-1949 : blocus de Berlin-Ouest par l''URSS ; les Occidentaux ravitaillent la ville par un pont aérien.
- Avril 1949 : création de l''OTAN, alliance militaire occidentale.
- 1949 : naissance de la RFA et de la RDA ; l''Allemagne est coupée en deux. En août 1949, l''URSS fait exploser sa première bombe atomique. Le 1er octobre 1949, Mao Zedong proclame la République populaire de Chine.
- Mai 1955 : pacte de Varsovie, alliance militaire du bloc de l''Est.

## Fiche 3 : les crises et les phases de l''affrontement

Première phase, la confrontation (1947-1962). La guerre de Corée (1950-1953) oppose le Nord communiste, soutenu par la Chine et l''URSS, au Sud soutenu par les États-Unis et une force de l''ONU ; elle s''achève par l''armistice de Panmunjom (1953) sur une frontière proche du 38e parallèle. Le 13 août 1961, la RDA construit le mur de Berlin. En octobre 1962, la crise de Cuba éclate : les Américains découvrent des rampes de missiles soviétiques sur l''île ; Kennedy décide un blocus naval ; Khrouchtchev accepte de retirer les missiles.

Deuxième phase, la détente (1962-1975). Un « téléphone rouge » relie Washington et Moscou en 1963. Les accords SALT I (1972) limitent certains armements stratégiques. L''Acte final d''Helsinki (1975) reconnaît les frontières européennes. Mais les conflits périphériques continuent : la guerre du Vietnam se termine par la chute de Saïgon le 30 avril 1975.

Troisième phase, la « guerre fraîche » (1975-1985). L''URSS intervient en Afghanistan en décembre 1979. Reagan relance la course aux armements. L''affrontement se déplace en Afrique : guerre civile en Angola après l''indépendance de 1975, avec des troupes cubaines d''un côté et l''appui américain et sud-africain de l''autre.

Quatrième phase, la fin (1985-1991). Gorbatchev, au pouvoir en 1985, lance la perestroïka (restructuration) et la glasnost (transparence). Le mur de Berlin tombe le 9 novembre 1989. L''Allemagne est réunifiée le 3 octobre 1990. L''URSS disparaît en décembre 1991 ; Gorbatchev démissionne le 25 décembre 1991.

## Fiche 4 : l''Afrique et la guerre froide

L''Afrique n''est pas un simple spectateur. Les deux Grands y recherchent des alliés, des bases et des matières premières. La crise du Congo (1960-1965), après l''indépendance du 30 juin 1960, oppose plusieurs factions soutenues de l''extérieur ; le Premier ministre Patrice Lumumba est assassiné en janvier 1961. Beaucoup d''États africains refusent toutefois de choisir un camp : c''est le non-alignement, étudié dans la leçon suivante.

## Fiche 5 : le monde après la guerre froide

La fin de l''URSS laisse les États-Unis seule superpuissance. La guerre du Golfe (1991), menée avec l''accord de l''ONU, semble annoncer un « nouvel ordre mondial ». Mais les attentats du 11 septembre 2001 ouvrent une période de lutte contre le terrorisme. Depuis les années 2000, le monde devient multipolaire : affirmation de la Chine, retour de la Russie, émergence de puissances comme l''Inde, le Brésil ou l''Afrique du Sud, regroupées avec la Chine et la Russie dans les BRICS.

## Méthode : un plan type de dissertation

Sujet : « La guerre froide de 1947 à 1991 ». Problématique : comment l''affrontement entre deux superpuissances a-t-il structuré les relations internationales pendant plus de quarante ans, avant de s''achever par la disparition de l''un des deux camps ?

- I. 1947-1962 : la formation des blocs et la confrontation (Berlin, Corée, Cuba).
- II. 1962-1985 : de la détente à la reprise des tensions (accords, Vietnam, Afghanistan, Afrique).
- III. 1985-1991 : la fin de la guerre froide (réformes de Gorbatchev, chute du mur, fin de l''URSS).

## Points clés

- 1947 : doctrine Truman et plan Marshall ; 1949 : OTAN ; 1955 : pacte de Varsovie.
- Trois crises majeures : Berlin (1948-1949 et 1961), Corée (1950-1953), Cuba (1962).
- Fin : 9 novembre 1989 (chute du mur) et décembre 1991 (disparition de l''URSS).

## Exercices pratiques

1. Définissez : endiguement, équilibre de la terreur, détente.

2. Classez dans l''ordre chronologique : pacte de Varsovie, plan Marshall, construction du mur de Berlin, création de l''OTAN, crise de Cuba.

3. Pourquoi la crise de Cuba est-elle considérée comme le moment le plus dangereux de la guerre froide ?

4. Expliquez en quoi la crise du Congo est liée à la guerre froide.

5. Combien d''années séparent la doctrine Truman de la disparition de l''URSS ? Combien la construction du mur de sa chute ?

6. Rédigez l''introduction complète du sujet : « La guerre froide de 1947 à 1991 ».

7. Proposez une problématique et un plan en deux parties pour : « Le monde depuis 1991 : un monde unipolaire ? ».

## Corrigé

1. L''endiguement est la politique américaine visant à contenir l''expansion du communisme (doctrine Truman, 1947). L''équilibre de la terreur est la situation où chaque Grand renonce à attaquer l''autre parce qu''il sait que la riposte nucléaire le détruirait. La détente est la période d''apaisement relatif entre 1962 et 1975, marquée par le dialogue et des accords de limitation des armements.

2. Plan Marshall (1947), création de l''OTAN (1949), pacte de Varsovie (1955), construction du mur de Berlin (1961), crise de Cuba (1962).

3. Parce que, en octobre 1962, des missiles nucléaires soviétiques capables d''atteindre le territoire américain étaient installés à Cuba et que les deux Grands se sont affrontés directement par un blocus naval et des ultimatums. Une guerre nucléaire était possible. Le retrait des missiles a été obtenu par la négociation.

4. Après l''indépendance du 30 juin 1960, le Congo connaît sécessions et rivalités politiques. Les factions cherchent des appuis extérieurs ; les deux blocs soutiennent des camps opposés, l''ONU intervient. Le pays devient un terrain d''affrontement indirect des deux Grands.

5. De 1947 à 1991 : 44 ans. De 1961 à 1989 : 28 ans.

6. Exemple : « Le 12 mars 1947, le président américain Truman annonce que les États-Unis aideront les peuples menacés par le communisme. Commence alors la guerre froide, affrontement indirect entre les États-Unis et l''URSS, sans guerre directe entre eux mais avec une rivalité totale : idéologique, économique, militaire et culturelle. Elle dure jusqu''à la disparition de l''URSS en décembre 1991. Comment cet affrontement a-t-il structuré les relations internationales pendant plus de quarante ans avant de s''achever par l''effondrement de l''un des deux camps ? Nous verrons d''abord la formation des blocs et la confrontation (1947-1962), puis le passage de la détente à la reprise des tensions (1962-1985), enfin la fin de la guerre froide (1985-1991). »

7. Problématique : la disparition de l''URSS a-t-elle installé durablement la domination d''une seule puissance ? I. Une domination américaine incontestée dans les années 1990 (guerre du Golfe, puissance économique et militaire). II. Un monde devenu multipolaire et instable (terrorisme après 2001, montée de la Chine, retour de la Russie, émergents et BRICS).', 'texte', 60, false, 20
from public.courses c where c.slug = 'bac-histoire-geographie'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Histoire (1) : la guerre froide et le monde depuis 1945');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Histoire (2) : décolonisation, non-alignement et unité africaine', '## Objectifs de la leçon

- Expliquer les causes et les formes de la décolonisation en Asie et en Afrique.
- Connaître les étapes de l''indépendance du Sénégal.
- Comprendre le non-alignement et le rôle du Tiers-Monde.
- Retracer la construction de l''unité africaine, de l''OUA à l''UA et aux organisations régionales.

## Fiche 1 : les causes de la décolonisation

- Causes internes : naissance d''élites instruites, partis politiques et syndicats, mouvements nationalistes, idée panafricaine.
- Effets de la Seconde Guerre mondiale : participation des soldats coloniaux (dont les tirailleurs sénégalais), affaiblissement des métropoles européennes, défaites face au Japon en Asie.
- Contexte international : la Charte de l''Atlantique (1941) et la Charte de l''ONU (1945) affirment le droit des peuples à disposer d''eux-mêmes ; les États-Unis et l''URSS sont hostiles, chacun pour ses raisons, aux empires coloniaux.

## Fiche 2 : la décolonisation de l''Asie

- Indonésie : indépendance proclamée par Sukarno le 17 août 1945, reconnue par les Pays-Bas en 1949 après une guerre.
- Inde : indépendance le 15 août 1947, obtenue surtout par la non-violence (Gandhi) et la négociation (Nehru) ; la partition avec le Pakistan provoque des violences et des déplacements massifs.
- Indochine : guerre de 1946 à 1954 entre la France et le Viet Minh d''Hô Chi Minh ; défaite française à Diên Biên Phu (mai 1954) ; accords de Genève (juillet 1954) qui partagent le Vietnam au 17e parallèle.

## Fiche 3 : la décolonisation de l''Afrique

Afrique du Nord : la Libye (1951), le Maroc et la Tunisie (1956) obtiennent leur indépendance. L''Algérie connaît une longue guerre, déclenchée le 1er novembre 1954 par le FLN ; les accords d''Évian (18 mars 1962) ouvrent la voie à l''indépendance, proclamée le 5 juillet 1962.

Afrique britannique : la Gold Coast devient indépendante le 6 mars 1957 sous le nom de Ghana, avec Kwame Nkrumah. Au Kenya, la révolte des Mau Mau (années 1950) est durement réprimée ; l''indépendance arrive en 1963.

Afrique portugaise : le Portugal refuse de décoloniser ; des guerres de libération éclatent dans les années 1960. La Guinée-Bissau (PAIGC d''Amilcar Cabral) proclame son indépendance en 1973, reconnue par le Portugal en 1974. L''Angola et le Mozambique deviennent indépendants en 1975, après la révolution des Œillets au Portugal (avril 1974).

Afrique australe : le Zimbabwe devient indépendant en 1980, la Namibie en 1990. En Afrique du Sud, le régime d''apartheid prend fin au début des années 1990 : Nelson Mandela est libéré le 11 février 1990 et devient président après les élections multiraciales de 1994.

## Fiche 4 : le Sénégal, de la colonie à l''indépendance

- 1944 : conférence de Brazzaville ; la France promet des réformes mais refuse l''indépendance.
- 1946 : loi Lamine Guèye, qui accorde la citoyenneté aux ressortissants des territoires d''outre-mer ; Lamine Guèye et Léopold Sédar Senghor siègent comme députés à Paris.
- 1956 : loi-cadre Defferre, qui crée des conseils de gouvernement élus dans chaque territoire.
- 28 septembre 1958 : référendum sur la Communauté ; le Sénégal vote « oui », la Guinée vote « non » et devient indépendante le 2 octobre 1958 avec Ahmed Sékou Touré.
- 1959 : création de la Fédération du Mali entre le Sénégal et le Soudan français.
- 4 avril 1960 : signature des accords de transfert des compétences ; le 4 avril est devenu la fête de l''indépendance du Sénégal.
- 20 juin 1960 : indépendance de la Fédération du Mali.
- 20 août 1960 : éclatement de la Fédération ; le Sénégal devient un État souverain.
- Septembre 1960 : Senghor est élu président de la République ; Mamadou Dia est président du Conseil.

## Fiche 5 : Bandung et le non-alignement

Du 18 au 24 avril 1955, la conférence de Bandung (Indonésie) réunit 29 pays d''Asie et d''Afrique, dont l''Inde de Nehru, l''Égypte de Nasser, la Chine de Zhou Enlai et l''Indonésie de Sukarno. Elle condamne le colonialisme et affirme l''égalité des peuples. On y voit la naissance politique du Tiers-Monde.

En septembre 1961, la conférence de Belgrade (Yougoslavie), à l''initiative notamment de Tito, Nasser et Nehru, fonde le mouvement des non-alignés : refus d''appartenir à l''un des deux blocs, soutien aux luttes de libération, coexistence pacifique. Les pays du Tiers-Monde revendiquent aussi un nouvel ordre économique international (CNUCED, créée en 1964).

## Fiche 6 : la construction de l''unité africaine

Au lendemain des indépendances, deux courants s''opposent. Le groupe de Casablanca (1961, autour de Nkrumah) veut une union politique rapide, des « États-Unis d''Afrique ». Le groupe de Monrovia (1961), majoritaire, dont le Sénégal de Senghor, préfère une coopération progressive entre États souverains.

- 25 mai 1963 : création de l''Organisation de l''unité africaine (OUA) à Addis-Abeba, par 32 États. Principes : souveraineté, non-ingérence, intangibilité des frontières héritées de la colonisation, lutte contre le colonialisme et l''apartheid.
- Bilan de l''OUA : succès dans le soutien aux mouvements de libération ; faiblesse face aux guerres civiles, aux coups d''État et au sous-développement.
- 9 septembre 1999 : déclaration de Syrte ; 2000 : Acte constitutif adopté à Lomé ; 9 juillet 2002 : lancement de l''Union africaine (UA) à Durban. L''UA se dote d''une Commission, d''un Parlement panafricain et d''un Conseil de paix et de sécurité ; elle admet un droit d''intervention en cas de crimes graves.
- 2001 : NEPAD ; 2015 : Agenda 2063, la vision à long terme de l''UA.
- Zone de libre-échange continentale africaine (ZLECAf) : accord signé à Kigali le 21 mars 2018, entré en vigueur en 2019, échanges lancés le 1er janvier 2021.

L''intégration se fait aussi par régions : la CEDEAO (traité de Lagos, 28 mai 1975) pour l''Afrique de l''Ouest, l''UEMOA (traité de Dakar, 10 janvier 1994) pour les pays utilisant le franc CFA de l''Ouest.

## Points clés

- Deux voies : négociation (Inde, Afrique noire française) et guerre (Indochine, Algérie, colonies portugaises).
- 1955 Bandung, 1961 Belgrade : le Tiers-Monde s''affirme.
- Sénégal : 4 avril 1960 (transfert des compétences), 20 juin 1960 (indépendance de la Fédération du Mali), 20 août 1960 (État souverain).
- OUA 1963, UA 2002, ZLECAf 2018-2021.

## Exercices pratiques

1. Citez trois causes de la décolonisation et classez-les (internes, liées à la guerre, internationales).

2. Associez chaque pays à sa date d''indépendance : Ghana, Guinée, Algérie, Inde, Angola. Dates : 1947, 1957, 1958, 1962, 1975.

3. Pourquoi la Guinée devient-elle indépendante dès 1958 ?

4. Expliquez la différence entre le groupe de Casablanca et le groupe de Monrovia.

5. Combien d''années séparent la création de l''OUA du lancement de l''UA ?

6. Montrez que le non-alignement est à la fois un succès et une ambition limitée.

7. Construisez le plan détaillé du sujet : « De l''OUA à l''UA : l''Afrique à la recherche de son unité ».

## Corrigé

1. Internes : élites instruites et partis nationalistes. Liées à la guerre : participation des soldats coloniaux et affaiblissement des métropoles. Internationales : droit des peuples affirmé par la Charte de l''ONU et pression des deux Grands.

2. Inde : 1947 ; Ghana : 1957 ; Guinée : 1958 ; Algérie : 1962 ; Angola : 1975.

3. Lors du référendum du 28 septembre 1958, la Guinée, sous la conduite de Sékou Touré, vote « non » à la Communauté proposée par la France. Elle devient donc immédiatement indépendante, le 2 octobre 1958.

4. Le groupe de Casablanca, autour de Nkrumah, voulait une union politique immédiate du continent. Le groupe de Monrovia, majoritaire, voulait une coopération progressive qui respecte la souveraineté de chaque État. L''OUA de 1963 reflète surtout cette seconde conception.

5. 2002 − 1963 = 39 ans.

6. Succès : il donne une voix collective aux pays nouvellement indépendants, condamne le colonialisme, soutient les luttes de libération et défend un nouvel ordre économique. Limites : des membres restent proches d''un bloc, le mouvement est divisé et pèse peu face aux deux Grands sur le plan économique et militaire.

7. Introduction : création de l''OUA le 25 mai 1963. Problématique : comment l''Afrique a-t-elle tenté de s''unir, et avec quels résultats ? I. L''OUA (1963-2002) : naissance, principes, succès dans la décolonisation, limites face aux conflits et au sous-développement. II. L''UA depuis 2002 : institutions nouvelles, paix et sécurité, NEPAD, Agenda 2063, ZLECAf, appui sur les organisations régionales (CEDEAO, UEMOA).', 'texte', 60, false, 30
from public.courses c where c.slug = 'bac-histoire-geographie'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Histoire (2) : décolonisation, non-alignement et unité africaine');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Géographie : puissances, mondialisation, développement et population', '## Objectifs de la leçon

- Connaître les fondements de la puissance et les grands pôles de l''économie mondiale.
- Présenter les principaux ensembles économiques régionaux.
- Situer l''Afrique et le Sénégal dans la mondialisation.
- Maîtriser les notions de développement et de population, et savoir réaliser un croquis.

## Fiche 1 : la mondialisation, notions clés

- Mondialisation : mise en relation croissante des différentes parties du monde par les échanges de marchandises, de capitaux, d''informations et de personnes.
- Acteurs : États, firmes transnationales (FTN), organisations internationales (OMC, FMI, Banque mondiale), ONG, individus (migrants, touristes).
- Flux : commerce maritime (l''essentiel du commerce mondial en volume transite par la mer), flux financiers, flux d''informations par Internet et câbles sous-marins, flux migratoires.
- Institutions : le FMI et la Banque mondiale naissent des accords de Bretton Woods (juillet 1944) ; le GATT est signé en 1947 ; l''OMC le remplace le 1er janvier 1995.
- Triade : expression désignant les trois pôles dominants de l''économie mondiale à la fin du XXe siècle (Amérique du Nord, Europe occidentale, Asie orientale avec le Japon). Aujourd''hui, la Chine fait partie de ce cœur.

## Fiche 2 : les grandes puissances

Les États-Unis sont la première puissance mondiale par l''ensemble de leurs atouts : poids économique et financier (le dollar est la principale monnaie internationale), puissance militaire, innovation (universités, entreprises du numérique), influence culturelle (soft power). Limites : endettement, inégalités sociales, dépendance de certaines chaînes d''approvisionnement.

La Chine est devenue, depuis les réformes lancées par Deng Xiaoping à partir de 1978, la grande puissance émergente : « atelier du monde », premier exportateur mondial de marchandises, puissance technologique et militaire en essor, présence forte en Afrique (infrastructures, prêts, commerce). Limites : vieillissement de la population, inégalités entre littoral et intérieur, problèmes environnementaux.

L''Union européenne est une puissance économique et commerciale, mais politiquement et militairement moins unie.

Les pays émergents (Inde, Brésil, Afrique du Sud, Indonésie, Turquie…) ont une croissance rapide et une influence croissante. Le groupe des BRICS (Brésil, Russie, Inde, Chine, Afrique du Sud) tient son premier sommet en 2009, accueille l''Afrique du Sud en 2010-2011 et s''élargit à de nouveaux membres à partir de 2024.

## Fiche 3 : les ensembles économiques régionaux

- Union européenne : issue de la CEE (traité de Rome, 25 mars 1957) ; traité de Maastricht (1992) ; monnaie unique, l''euro, introduite en 1999 pour les marchés et en 2002 sous forme de pièces et de billets. C''est l''ensemble le plus intégré : marché unique, politiques communes.
- Amérique du Nord : l''ALENA (1994) a été remplacé en 2020 par l''accord États-Unis-Mexique-Canada (ACEUM).
- Asie : l''ASEAN (1967) regroupe des pays d''Asie du Sud-Est.
- Amérique du Sud : le Mercosur (1991).
- Afrique : CEDEAO (1975), UEMOA (1994), CEMAC, SADC, EAC, et à l''échelle du continent la ZLECAf.

On distingue les degrés d''intégration : zone de libre-échange (suppression des droits de douane entre membres), union douanière (en plus, un tarif extérieur commun), marché commun (libre circulation des facteurs de production), union économique et monétaire (monnaie commune). L''UEMOA est une union économique et monétaire.

## Fiche 4 : l''Afrique dans la mondialisation

L''Afrique est longtemps présentée comme « en marge » de la mondialisation : sa part du commerce mondial reste faible, ses exportations sont dominées par les matières premières (pétrole, minerais, produits agricoles) et ses échanges internes restent limités. Mais le continent s''intègre de plus en plus : nouveaux partenaires (Chine, Inde, Turquie, pays du Golfe), grands ports et corridors, téléphonie mobile et paiement mobile, essor des villes et des classes moyennes, ZLECAf.

Les contraintes demeurent : dépendance aux cours des matières premières, déficit d''infrastructures et d''électricité, dette, instabilité dans certaines régions, fuite des cerveaux.

## Fiche 5 : le Sénégal dans la mondialisation

- Atouts : position de carrefour à la pointe occidentale de l''Afrique, port autonome de Dakar, aéroport international Blaise Diagne (ouvert en 2017), stabilité politique reconnue, câbles sous-marins, diaspora importante dont les envois de fonds soutiennent les familles.
- Ressources : phosphates, or, zircon, pêche, arachide, horticulture ; pétrole (gisement de Sangomar, production lancée en 2024) et gaz (projet Grand Tortue Ahmeyim partagé avec la Mauritanie).
- Aménagements : TER Dakar-Diamniadio mis en service en décembre 2021, pôle urbain de Diamniadio, projet de port en eau profonde à Ndayane, zones économiques spéciales.
- Limites : déséquilibre entre la région de Dakar et l''intérieur du pays, balance commerciale déficitaire, forte dépendance aux importations de produits alimentaires et de produits manufacturés, chômage des jeunes, émigration irrégulière.

## Fiche 6 : développement et population

Le développement ne se réduit pas à la croissance. La croissance est l''augmentation de la production (PIB). Le développement est l''amélioration durable des conditions de vie de la population : santé, éducation, revenus, libertés. Le PNUD le mesure depuis 1990 par l''indice de développement humain (IDH), compris entre 0 et 1, qui combine espérance de vie, niveau d''éducation et revenu par habitant. Le développement durable, défini en 1987 par le rapport Brundtland, répond aux besoins du présent sans compromettre ceux des générations futures. Les Objectifs de développement durable (ODD) ont été adoptés par l''ONU en 2015, à l''horizon 2030.

La population mondiale a franchi le cap de 8 milliards d''habitants en novembre 2022 selon l''ONU. La transition démographique est le passage d''une natalité et d''une mortalité élevées à une natalité et une mortalité faibles. Pendant la transition, la mortalité baisse avant la natalité : la population augmente fortement. L''Afrique subsaharienne est aujourd''hui la région du monde où la croissance démographique est la plus rapide, avec une population très jeune.

Au Sénégal, le recensement général de 2023 (RGPH-5, ANSD) a dénombré un peu plus de 18 millions d''habitants. La population est jeune et de plus en plus urbaine ; la région de Dakar concentre une part importante des habitants et des activités. Cette jeunesse est un atout (dividende démographique) si l''éducation, la formation et l''emploi suivent ; sinon, elle devient une source de tensions.

Formules utiles : taux de natalité = naissances / population × 1000 ; taux de mortalité = décès / population × 1000 ; taux d''accroissement naturel = taux de natalité − taux de mortalité (en ‰).

## Exercices pratiques

1. Définissez : FTN, Triade, IDH.

2. Classez du moins intégré au plus intégré : marché commun, zone de libre-échange, union économique et monétaire, union douanière.

3. Un pays compte 20 millions d''habitants, 700 000 naissances et 120 000 décès dans l''année. Calculez les taux de natalité, de mortalité et d''accroissement naturel.

4. Donnez deux atouts et deux limites de la Chine.

5. Pourquoi dit-on que l''Afrique reste faiblement intégrée à la mondialisation ? Nuancez.

6. Expliquez pourquoi croissance et développement ne sont pas synonymes.

7. Rédigez la problématique et le plan du sujet : « L''Afrique dans la mondialisation : marginalisation ou intégration ? ».

## Corrigé

1. Une FTN est une entreprise qui exerce ses activités dans plusieurs pays par l''intermédiaire de filiales. La Triade désigne les trois pôles dominants de l''économie mondiale (Amérique du Nord, Europe occidentale, Asie orientale). L''IDH est un indicateur du PNUD, compris entre 0 et 1, qui combine santé, éducation et niveau de vie.

2. Zone de libre-échange, union douanière, marché commun, union économique et monétaire.

3. Natalité : 700 000 / 20 000 000 × 1000 = 35 ‰. Mortalité : 120 000 / 20 000 000 × 1000 = 6 ‰. Accroissement naturel : 35 − 6 = 29 ‰, soit 2,9 %.

4. Atouts : puissance industrielle et commerciale (premier exportateur mondial de marchandises), progrès technologiques. Limites : vieillissement de la population, inégalités entre le littoral et l''intérieur.

5. Sa part du commerce mondial est faible et ses exportations portent surtout sur des matières premières. Nuance : le continent attire de nouveaux partenaires, développe ses ports, son numérique et son marché intérieur avec la ZLECAf.

6. Un pays peut voir son PIB augmenter (croissance) sans que la santé, l''éducation ou les revenus de la majorité s''améliorent, par exemple si la richesse est mal répartie. Le développement suppose une amélioration durable et partagée des conditions de vie.

7. Problématique : l''Afrique subit-elle la mondialisation ou commence-t-elle à en tirer profit ? I. Une intégration ancienne mais dépendante (matières premières, faible part du commerce mondial, dette). II. Des dynamiques nouvelles (nouveaux partenaires, villes, numérique, ports, ZLECAf). III. Des défis persistants (infrastructures, emploi des jeunes, stabilité, transformation locale des ressources).', 'texte', 60, false, 40
from public.courses c where c.slug = 'bac-histoire-geographie'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Géographie : puissances, mondialisation, développement et population');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen : entraînement corrigé', '## Présentation

Ce sujet est un sujet d''entraînement conçu pour ce cours. Ce n''est pas un sujet officiel du Baccalauréat. Il reprend la forme habituelle des épreuves : un choix entre plusieurs exercices en histoire et en géographie. La répartition des points indiquée est indicative et non officielle ; la durée, le coefficient et les modalités réelles sont fixés selon les textes officiels en vigueur. Entraînez-vous en temps limité, puis comparez votre travail au corrigé.

## Le sujet d''entraînement

Histoire (10 points, répartition indicative). Traitez au choix l''un des deux sujets.

- Sujet 1 (dissertation) : La décolonisation de l''Afrique noire française de 1944 à 1960.
- Sujet 2 (commentaire de document) : Document. Extrait du communiqué final de la conférence de Bandung (avril 1955), présenté ici sous forme résumée : les pays participants déclarent que le colonialisme sous toutes ses formes est un mal auquel il faut mettre fin rapidement ; ils affirment que l''assujettissement des peuples à une domination étrangère constitue une négation des droits fondamentaux de l''homme et est contraire à la Charte des Nations unies ; ils appuient la cause de la liberté et de l''indépendance des peuples dépendants. Questions : a) Présentez le document. b) Relevez les idées principales. c) Expliquez le contexte de cette conférence. d) Montrez la portée de ce texte pour l''Afrique.

Géographie (10 points, répartition indicative). Traitez au choix l''un des deux sujets.

- Sujet 3 (dissertation) : Les atouts et les limites de la puissance chinoise.
- Sujet 4 (croquis) : Réalisez un croquis, accompagné d''une légende organisée, sur le thème : « Le Sénégal dans la mondialisation ».

## Corrigé du sujet 1 (dissertation d''histoire)

Analyse : « Afrique noire française » désigne l''AOF (dont le Sénégal) et l''AEF, ainsi que les territoires sous tutelle comme le Togo et le Cameroun. Les bornes sont 1944 (conférence de Brazzaville) et 1960 (année où ces territoires deviennent indépendants).

Introduction proposée : « En janvier-février 1944, à Brazzaville, le général de Gaulle réunit les responsables de l''Empire français. La conférence promet des réformes mais écarte toute idée d''indépendance. Seize ans plus tard, en 1960, l''ensemble de l''Afrique noire française accède pourtant à l''indépendance. Comment ces territoires sont-ils passés de la domination coloniale à la souveraineté, et pourquoi cette décolonisation s''est-elle faite surtout par la négociation ? Nous étudierons d''abord les réformes et l''éveil politique (1944-1956), puis le passage de l''autonomie à l''indépendance (1956-1960). »

Partie I. Réformes et éveil politique (1944-1956).

- La conférence de Brazzaville : participation de l''Empire à la guerre, promesses de réformes, mais refus de l''autonomie.
- 1946 : suppression du travail forcé (loi Houphouët-Boigny), citoyenneté (loi Lamine Guèye), création de l''Union française ; des Africains élus siègent à Paris.
- Naissance des partis : le Rassemblement démocratique africain (RDA, 1946, autour de Félix Houphouët-Boigny) ; au Sénégal, rôle de Lamine Guèye puis de Senghor, qui fonde le Bloc démocratique sénégalais en 1948.
- Rôle des syndicats et des étudiants ; grande grève des cheminots du Dakar-Niger (1947-1948).

Partie II. De l''autonomie à l''indépendance (1956-1960).

- 1956 : loi-cadre Defferre, suffrage universel et conseils de gouvernement élus dans chaque territoire.
- 1958 : référendum sur la Communauté ; seule la Guinée vote « non » et devient indépendante le 2 octobre 1958.
- 1959-1960 : la Fédération du Mali (Sénégal et Soudan), indépendante le 20 juin 1960, éclate le 20 août 1960 ; les autres territoires deviennent indépendants au cours de l''année 1960.
- Une décolonisation globalement pacifique, à une exception majeure : la guerre menée au Cameroun contre l''UPC.

Conclusion : la décolonisation de l''Afrique noire française s''est faite par étapes et surtout par la négociation, sous la pression des élites africaines et du contexte international. Mais les nouveaux États conservent des liens étroits avec la France (accords de coopération, franc CFA), ce qui ouvre la question de l''indépendance réelle.

## Corrigé du sujet 2 (commentaire)

a) Présentation : texte politique, communiqué final d''une conférence internationale réunie à Bandung (Indonésie) du 18 au 24 avril 1955, à l''initiative de pays asiatiques ; 29 pays d''Asie et d''Afrique y participent. Thème : la condamnation du colonialisme.

b) Idées principales : le colonialisme est un mal qui doit cesser rapidement ; la domination étrangère viole les droits de l''homme et la Charte de l''ONU ; les participants soutiennent l''indépendance des peuples encore dépendants.

c) Contexte : en 1955, l''Asie est en grande partie décolonisée (Inde 1947, Indonésie 1949, défaite française en Indochine en 1954), mais la plus grande partie de l''Afrique est encore colonisée ; la guerre d''Algérie a commencé en novembre 1954. La guerre froide divise le monde en deux blocs.

d) Portée : Bandung marque l''entrée du Tiers-Monde sur la scène internationale. Le texte encourage les mouvements de libération africains et prépare le non-alignement (Belgrade, 1961). Limite : les participants n''ont pas de moyens militaires ou économiques pour imposer la décolonisation, et ils sont divisés face à la guerre froide.

## Corrigé du sujet 3 (dissertation de géographie)

Problématique : la Chine est-elle devenue une superpuissance complète, capable de rivaliser avec les États-Unis ?

- I. Des atouts considérables : population nombreuse, puissance industrielle (« atelier du monde »), premier exportateur mondial de marchandises, réserves financières, montée technologique, puissance militaire et spatiale, présence mondiale (investissements, routes de la soie, présence en Afrique).
- II. Des limites réelles : vieillissement de la population, inégalités entre le littoral et l''intérieur, pollution, dépendance énergétique, tensions avec ses voisins et avec les États-Unis, influence culturelle encore limitée.

Conclusion : une puissance majeure, au cœur de la mondialisation, mais encore incomplète sur certains plans.

## Corrigé du sujet 4 (croquis)

Titre : « Le Sénégal dans la mondialisation ». Légende possible :

- I. Les portes d''entrée du territoire : Dakar (gros point rouge), le port autonome (ancre), l''AIBD (avion), câbles sous-marins (trait bleu partant de Dakar).
- II. Les espaces productifs liés au monde : zones de pêche le long du littoral (hachures bleues), phosphates dans la région de Thiès (symbole), or au Sénégal oriental (symbole jaune), gisements d''hydrocarbures en mer (Sangomar, GTA au large de Saint-Louis), zone touristique de la Petite-Côte.
- III. Un territoire inégalement intégré : cœur Dakar-Thiès-Diamniadio (aplat foncé), axes principaux vers Touba, Kaolack et Saint-Louis (traits épais), périphéries de l''est et du sud (aplat clair), flux d''importations et flux migratoires (flèches).

## Conseils du correcteur

- Choisissez le sujet sur lequel vous avez le plus de connaissances précises, pas celui qui semble le plus facile.
- En commentaire, citez le texte et expliquez-le avec des dates.
- Au croquis, une légende organisée en parties vaut souvent plus que des dessins nombreux.
- Gardez dix minutes pour relire l''orthographe et les dates.

## Exercices pratiques

1. Rédigez la conclusion du sujet 3 en cinq lignes, avec une ouverture.

2. Donnez deux limites du document de Bandung comme source historique.

3. Proposez une accroche différente pour le sujet 1.

4. Quels figurés utiliseriez-vous pour représenter l''axe Dakar-Touba et les envois de fonds de la diaspora ?

5. Refaites le sujet 2 en temps limité, puis comparez avec le corrigé.

## Corrigé

1. Exemple : « La Chine est devenue, en quelques décennies, une puissance économique et commerciale de premier plan, présente sur tous les continents, notamment en Afrique. Elle reste cependant fragilisée par son vieillissement, ses inégalités et ses problèmes environnementaux. Elle est une grande puissance, mais pas encore une superpuissance complète. Reste à savoir si sa rivalité avec les États-Unis structurera le monde du XXIe siècle comme la guerre froide a structuré le XXe. »

2. C''est un texte officiel qui exprime la position commune des gouvernements, en gommant leurs divisions ; il exprime des intentions, pas des résultats concrets.

3. Exemple : « Le 4 avril 1960, le Sénégal obtient le transfert des compétences qui lui ouvre la voie de l''indépendance. »

4. L''axe Dakar-Touba : un trait épais. Les envois de fonds : des flèches orientées de l''extérieur (Europe, autres pays africains) vers le Sénégal.

5. Vérifiez que votre réponse contient bien : la présentation complète, des citations du texte, au moins trois dates de contexte et une portée nuancée.', 'texte', 75, false, 50
from public.courses c where c.slug = 'bac-histoire-geographie'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen : entraînement corrigé');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : révision intensive veille du Bac en Histoire-Géographie', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : élèves de Terminale (séries L, S et G) à la veille de l''épreuve d''Histoire-Géographie du Baccalauréat.
- Objectifs : réactiver les dates et notions essentielles, revoir la méthode de la dissertation, du commentaire et du croquis, s''entraîner à gérer le temps.
- Matériel : tableau ou diaporama, frise chronologique 1945-2025, fond de carte du Sénégal et planisphère, feuilles de brouillon, crayons de couleur.
- Prérequis : avoir suivi les leçons 1 à 5 de ce cours.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs de la séance

Bonjour à toutes et à tous. Nous sommes à la veille de l''épreuve, et l''objectif de cette séance n''est pas d''apprendre du nouveau, mais de mettre de l''ordre dans ce que vous savez déjà. Pendant une heure et demie, nous allons revoir les dates qui comptent, les notions que le correcteur attend, et surtout la manière de les utiliser dans une copie. Préparez une feuille et un crayon : je vous poserai des questions et vous répondrez avant que j''affiche la correction.

Visuel : le plan de la séance en six étapes, de la frise chronologique au quiz final.

## 05:00 – 20:00 · La guerre froide en quinze minutes

Commençons par la frise. Je place quatre jalons : 1947, 1962, 1975, 1991. En 1947, la doctrine Truman et le plan Marshall d''un côté, la doctrine Jdanov de l''autre : le monde se coupe en deux. En 1948 et 1949, le blocus de Berlin ; en avril 1949, l''OTAN ; en mai 1955, le pacte de Varsovie. Retenez les trois grandes crises : Berlin, la Corée de 1950 à 1953, Cuba en octobre 1962.

Après Cuba vient la détente : téléphone rouge en 1963, accords SALT I en 1972, Acte final d''Helsinki en 1975. Puis la reprise des tensions : l''URSS entre en Afghanistan en décembre 1979. Enfin, la fin : Gorbatchev arrive au pouvoir en 1985, le mur tombe le 9 novembre 1989, l''URSS disparaît en décembre 1991.

Question au public : quel continent a servi de terrain d''affrontement indirect avec le Congo en 1960 et l''Angola après 1975 ? Réponse : l''Afrique. N''oubliez jamais ces exemples africains dans vos copies.

Visuel : la frise avec les quatre phases en couleurs différentes.

## 20:00 – 32:00 · Décolonisation, Bandung et Sénégal

Deuxième bloc : la décolonisation. Deux voies, à retenir comme un réflexe : la négociation et la guerre. Inde, 15 août 1947, plutôt négociée. Indochine, guerre de 1946 à 1954, avec Diên Biên Phu en mai 1954. Algérie, guerre de 1954 à 1962, avec les accords d''Évian en mars 1962 et l''indépendance le 5 juillet 1962.

Pour l''Afrique noire, mémorisez cette chaîne : Brazzaville 1944, loi Lamine Guèye 1946, loi-cadre Defferre 1956, référendum de septembre 1958, Guinée indépendante le 2 octobre 1958, Ghana le 6 mars 1957 dans l''Afrique britannique. Pour le Sénégal : 4 avril 1960, transfert des compétences ; 20 juin 1960, indépendance de la Fédération du Mali ; 20 août 1960, éclatement de la Fédération.

Puis le Tiers-Monde : Bandung, du 18 au 24 avril 1955, 29 pays d''Asie et d''Afrique ; Belgrade, septembre 1961, naissance du mouvement des non-alignés.

Visuel : carte de l''Afrique colorée selon les décennies d''indépendance.

## 32:00 – 42:00 · L''unité africaine

Troisième bloc : l''unité africaine. Le 25 mai 1963, l''OUA naît à Addis-Abeba avec 32 États. Ses principes : non-ingérence, intangibilité des frontières, lutte contre le colonialisme et l''apartheid. Avant elle, deux groupes s''opposent : Casablanca, partisan d''une union politique rapide autour de Nkrumah, et Monrovia, partisan d''une coopération progressive, auquel appartient le Sénégal de Senghor.

L''Union africaine est lancée à Durban le 9 juillet 2002. Elle se dote d''un Conseil de paix et de sécurité et d''un Parlement panafricain. Ajoutez le NEPAD en 2001, l''Agenda 2063 en 2015 et la ZLECAf : accord signé à Kigali en mars 2018, échanges lancés le 1er janvier 2021. Côté régional : CEDEAO en 1975, UEMOA en 1994.

Question : pourquoi l''OUA a-t-elle maintenu les frontières coloniales ? Réponse : pour éviter des guerres en chaîne, car presque toutes les frontières pouvaient être contestées.

## 42:00 – 50:00 · Pause active et quiz de mi-parcours

Nous faisons une pause de deux minutes, puis un quiz éclair. Répondez par écrit, sans regarder vos notes.

- Question 1 : en quelle année l''OTAN est-elle créée ? Réponse : 1949.
- Question 2 : que se passe-t-il le 13 août 1961 ? Réponse : la construction du mur de Berlin.
- Question 3 : quel pays vote « non » au référendum de 1958 ? Réponse : la Guinée.
- Question 4 : où et quand l''Union africaine est-elle lancée ? Réponse : à Durban, le 9 juillet 2002.
- Question 5 : que signifie « coexistence pacifique » ? Réponse : la rivalité entre les deux blocs continue, mais sans guerre directe.

Comptez vos points. Quatre ou cinq bonnes réponses : vous êtes prêts. Moins de trois : relisez ce soir vos fiches de dates, et seulement elles.

## 50:00 – 62:00 · Géographie : puissances, ensembles et Sénégal

Passons à la géographie. Pour parler d''une puissance, utilisez toujours la même grille : économie, finance, armée, technologie, culture, et les limites. Les États-Unis cochent toutes les cases. La Chine est la puissance montante depuis les réformes de 1978 : premier exportateur mondial de marchandises, mais vieillissement et inégalités. L''Union européenne est un géant économique mais moins unie politiquement.

Les ensembles régionaux : retenez l''échelle d''intégration, de la zone de libre-échange à l''union économique et monétaire. Exemples : ACEUM, ASEAN, Mercosur, Union européenne, et pour nous la CEDEAO, l''UEMOA et la ZLECAf.

Pour le Sénégal : un carrefour atlantique, le port de Dakar, l''AIBD depuis 2017, le TER depuis décembre 2021, Diamniadio, le pétrole de Sangomar depuis 2024 et le gaz partagé avec la Mauritanie. Limites : déséquilibre Dakar-intérieur, dépendance alimentaire, chômage des jeunes.

Développement et population : croissance n''est pas développement ; l''IDH est compris entre 0 et 1 ; la population mondiale a dépassé 8 milliards en 2022 ; le Sénégal compte un peu plus de 18 millions d''habitants selon le recensement de 2023.

## 62:00 – 75:00 · Correction commentée d''une introduction de dissertation

Prenons un sujet type Bac : « L''Afrique dans les relations internationales de 1955 à 1963 ». Je vous laisse quatre minutes pour analyser le sujet. Que représentent ces bornes ? 1955, c''est Bandung ; 1963, c''est la création de l''OUA. Le sujet porte donc sur l''affirmation du continent sur la scène mondiale.

Voici une copie d''élève fictive : « Après la Seconde Guerre mondiale, l''Afrique était colonisée. Il y a eu beaucoup d''événements. Nous allons voir ce qui s''est passé. » Qu''est-ce qui ne va pas ? Pas d''accroche précise, pas de définition, pas de problématique, pas de plan annoncé.

Version corrigée : « Du 18 au 24 avril 1955, à Bandung, des pays d''Asie et d''Afrique condamnent le colonialisme. Huit ans plus tard, le 25 mai 1963, les États africains indépendants fondent l''OUA à Addis-Abeba. Entre ces deux dates, comment l''Afrique passe-t-elle du statut d''enjeu des puissances à celui d''acteur des relations internationales ? Nous verrons d''abord l''accession aux indépendances dans un monde bipolaire, puis la recherche d''une voix africaine commune, du non-alignement à l''OUA. »

## 75:00 – 82:00 · Gestion du temps et dernière check-list croquis

Le jour J, appliquez la règle des trois temps : un quart du temps pour comprendre le sujet et construire le plan, deux tiers pour rédiger, le reste pour relire. Ne recopiez jamais un brouillon complet.

Pour le commentaire de document, retenez la formule « présenter, prélever, expliquer, critiquer ». Présenter : nature, auteur, date, contexte. Prélever : citer le texte entre guillemets ou reprendre les chiffres exacts. Expliquer : relier chaque information à vos connaissances, avec des dates. Critiquer : se demander qui parle, pour qui, et ce que le document ne dit pas. Un commentaire qui se contente de reformuler le texte reste sous la moyenne, même s''il est bien écrit.

Pour le croquis : un titre, une légende en parties, des figurés cohérents. Surfaces pour les zones, points pour les villes, lignes et flèches pour les axes et les flux. Écrivez les noms à l''horizontale. Une couleur, une signification.

## 82:00 – 90:00 · Synthèse et évaluation finale

Synthèse : en histoire, quatre blocs, la guerre froide, la décolonisation, le non-alignement et l''unité africaine ; en géographie, les puissances, les ensembles régionaux, l''Afrique et le Sénégal dans la mondialisation, le développement et la population. Dans chaque copie : une problématique, un plan, des dates exactes, des exemples africains.

Évaluation finale, cinq questions :

- Question 1 : quelles sont les deux dates qui encadrent la guerre froide ? Réponse : 1947 et 1991.
- Question 2 : que décident les accords d''Évian du 18 mars 1962 ? Réponse : un cessez-le-feu et la voie vers l''indépendance de l''Algérie, proclamée le 5 juillet 1962.
- Question 3 : citez les trois étapes de l''indépendance du Sénégal en 1960. Réponse : 4 avril (transfert des compétences), 20 juin (indépendance de la Fédération du Mali), 20 août (éclatement de la Fédération).
- Question 4 : quelle différence entre une zone de libre-échange et une union douanière ? Réponse : l''union douanière ajoute un tarif extérieur commun à la suppression des droits de douane entre membres.
- Question 5 : que mesure l''IDH ? Réponse : le développement humain, à partir de la santé (espérance de vie), de l''éducation et du revenu par habitant.

Mot de la fin : dormez bien ce soir. Une copie claire, organisée et exacte vaut mieux qu''une copie longue. Bonne chance à toutes et à tous.', 'video', 90, false, 60
from public.courses c where c.slug = 'bac-histoire-geographie'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : révision intensive veille du Bac en Histoire-Géographie');

-- Cours : Économie série G : réussir l'épreuve du Bac
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'bac-economie', (select id from public.levels where name = 'Terminale'), null, 'Économie (série G)', 'Économie série G : réussir l''épreuve du Bac', 'Ce cours prépare les élèves de Terminale série G à l''épreuve d''Économie du Baccalauréat : macroéconomie (agrégats, croissance, développement, inflation, chômage), monnaie et zone UEMOA, commerce international, finances publiques, entreprise et marché. Chaque leçon associe des fiches de cours, des exemples chiffrés en FCFA vérifiés et des exercices corrigés, jusqu''à un sujet d''entraînement complet. Prérequis : savoir calculer un pourcentage, un taux de variation et un indice.', true, 208
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comprendre l''épreuve et méthode de travail', '## Objectifs de la leçon

- Comprendre ce que l''épreuve d''Économie du Baccalauréat série G attend de vous.
- Connaître les types d''exercices : questions de cours, exercices chiffrés, analyse de document, dissertation économique.
- Éviter les erreurs les plus fréquentes.
- Organiser ses révisions sur dix semaines.

## À qui s''adresse ce cours ?

Ce cours s''adresse aux élèves de Terminale de la série G (techniques économiques et de gestion). Il révise le programme d''économie du lycée en insistant sur la Terminale : macroéconomie (agrégats, croissance, développement, inflation, chômage), monnaie et zone UEMOA, commerce international, finances publiques, entreprise et marché. La durée, le coefficient et le barème de l''épreuve sont fixés selon les textes officiels en vigueur : renseignez-vous auprès de votre établissement.

Prérequis : savoir calculer un pourcentage, un taux de variation et un indice ; connaître les notions de base vues en Seconde et en Première (besoins, biens, agents économiques, circuit économique).

## Ce que l''épreuve évalue

- Des connaissances précises : définitions, mécanismes, relations entre les notions.
- Des savoir-faire quantitatifs : calculer, lire un tableau, interpréter un résultat.
- Une capacité d''analyse : expliquer un phénomène par ses causes et ses conséquences.
- Une capacité d''argumentation : construire un raisonnement organisé et nuancé.

## Type 1 : les questions de cours

On vous demande de définir, distinguer ou expliquer. Une bonne réponse comporte trois éléments : la définition exacte, un mécanisme ou une explication, un exemple concret. Exemple : « Définissez l''inflation. » Réponse attendue : hausse générale et durable du niveau des prix, qui entraîne une baisse du pouvoir d''achat de la monnaie ; elle se mesure par la variation de l''indice des prix à la consommation ; par exemple, si le prix moyen d''un panier de biens passe de 10 000 à 10 300 FCFA en un an, l''inflation est de 3 %.

## Type 2 : les exercices chiffrés

Ce sont souvent les points les plus faciles à gagner, à condition d''être rigoureux.

- Écrire la formule avant de calculer.
- Poser le calcul avec les unités (FCFA, milliards de FCFA, %).
- Arrondir à la fin seulement, et indiquer l''arrondi.
- Interpréter chaque résultat par une phrase : un chiffre sans commentaire ne vaut que la moitié des points.

Les formules à connaître par cœur : taux de variation = (valeur d''arrivée − valeur de départ) / valeur de départ × 100 ; indice = valeur de l''année / valeur de l''année de base × 100 ; coefficient multiplicateur = 1 + taux / 100 ; valeur réelle = valeur nominale / indice des prix × 100.

Exemple : un chiffre d''affaires passe de 40 à 46 millions de FCFA. Taux de variation = (46 − 40) / 40 × 100 = 15 %. Indice base 100 = 46 / 40 × 100 = 115. Interprétation : le chiffre d''affaires a augmenté de 15 % sur la période.

## Type 3 : l''analyse de document

On vous donne un texte, un tableau ou un graphique. Méthode :

- Présenter : nature, source, date, unité, thème.
- Lire : que mesure chaque chiffre ? Ne confondez pas une valeur, un pourcentage et un indice.
- Calculer si utile : écarts, taux, parts.
- Expliquer avec vos connaissances : pourquoi ces évolutions ?
- Conclure : ce que le document montre et ses limites.

Attention : diminuer de 5 % à 3 % pour un taux d''inflation signifie que les prix augmentent encore, mais moins vite. Les prix ne baissent pas.

## Type 4 : la dissertation économique

Un sujet du type « La croissance économique suffit-elle à assurer le développement ? » se traite comme une dissertation : introduction (accroche, définitions, problématique, annonce du plan), développement en deux ou trois parties argumentées, conclusion (réponse et ouverture). Chaque argument suit le schéma : idée, explication, exemple. Les exemples africains et sénégalais sont attendus.

## Les erreurs les plus fréquentes

- Confondre grandeur nominale et grandeur réelle (en valeur ou en volume).
- Confondre points de pourcentage et pourcentage : un taux de chômage qui passe de 10 % à 12 % augmente de 2 points, soit de 20 %.
- Additionner des taux de croissance successifs au lieu de multiplier les coefficients.
- Donner des chiffres officiels inventés : si vous n''êtes pas sûr, raisonnez sans chiffre.
- Réciter le cours sans répondre à la question.

Exemple de l''erreur sur les taux successifs : +10 % puis +10 % ne font pas +20 %. Coefficient global = 1,10 × 1,10 = 1,21, soit +21 %.

## Plan de révision sur dix semaines

- Semaine 1 : méthode, formules de base (taux, indices, coefficients), vocabulaire.
- Semaine 2 : les agrégats (PIB, valeur ajoutée, trois approches du PIB).
- Semaine 3 : croissance et développement (facteurs, indicateurs, IDH).
- Semaine 4 : inflation et chômage (mesures, causes, politiques).
- Semaine 5 : monnaie, création monétaire, BCEAO et UEMOA.
- Semaine 6 : commerce international (théories, balance des paiements, protectionnisme).
- Semaine 7 : finances publiques (budget de l''État, impôts, déficit, dette).
- Semaine 8 : entreprise et marché (coûts, seuil de rentabilité, offre et demande, structures de marché).
- Semaine 9 : sujets d''entraînement en temps limité.
- Semaine 10 : fiches de formules et de définitions, repos la veille.

## Points clés

- Définition, mécanisme, exemple : la règle de toute réponse.
- Formule, calcul, unité, interprétation : la règle de tout exercice chiffré.
- Distinguer valeur et volume, point et pourcentage.
- Ne jamais inventer un chiffre officiel.

## Exercices pratiques

1. Définissez en une phrase : agrégat, inflation, chômage.

2. Le prix d''un sac de riz passe de 15 000 à 16 500 FCFA. Calculez le taux de variation et l''indice base 100.

3. Un taux d''intérêt passe de 4 % à 5 %. Exprimez cette hausse en points puis en pourcentage.

4. Les ventes d''une entreprise augmentent de 20 % une année puis baissent de 20 % l''année suivante. Reviennent-elles à leur niveau initial ? Justifiez.

5. Un salaire nominal augmente de 6 % pendant que les prix augmentent de 4 %. Calculez l''évolution du salaire réel (méthode exacte).

6. Proposez une problématique et un plan pour le sujet : « L''inflation est-elle toujours un mal pour l''économie ? ».

## Corrigé

1. Un agrégat est une grandeur synthétique qui mesure l''activité de l''ensemble de l''économie (PIB, consommation nationale, investissement). L''inflation est une hausse générale et durable du niveau des prix. Le chômage est la situation des personnes en âge de travailler, sans emploi, disponibles et à la recherche d''un emploi.

2. Taux = (16 500 − 15 000) / 15 000 × 100 = 10 %. Indice = 16 500 / 15 000 × 100 = 110. Le prix a augmenté de 10 %.

3. Hausse de 5 − 4 = 1 point de pourcentage. En pourcentage : (5 − 4) / 4 × 100 = 25 %.

4. Non. Coefficient global = 1,20 × 0,80 = 0,96. Les ventes ont baissé de 4 % par rapport au niveau initial. Exemple : 100 devient 120, puis 120 × 0,80 = 96.

5. Indice du salaire réel = 1,06 / 1,04 × 100 ≈ 101,92. Le salaire réel augmente d''environ 1,92 %, un peu moins que la différence approximative de 2 points.

6. Problématique : l''inflation est-elle seulement un danger, ou peut-elle accompagner la croissance ? I. Une inflation modérée peut accompagner la croissance (stimulation de la production, allègement réel des dettes). II. Une inflation forte est dangereuse (perte de pouvoir d''achat des ménages pauvres, perte de compétitivité, incertitude) ; c''est pourquoi la BCEAO a pour objectif principal la stabilité des prix.', 'texte', 45, true, 10
from public.courses c where c.slug = 'bac-economie'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comprendre l''épreuve et méthode de travail');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Macroéconomie : agrégats, croissance, développement, inflation et chômage', '## Objectifs de la leçon

- Calculer la valeur ajoutée et le PIB selon les trois approches.
- Distinguer croissance nominale et croissance réelle, croissance et développement.
- Mesurer et expliquer l''inflation et le chômage.
- Réussir les exercices chiffrés de macroéconomie.

Remarque : les chiffres des exemples portent sur un pays fictif, « le pays A », et sont choisis pour l''exercice. Ce ne sont pas des statistiques officielles.

## Fiche 1 : la valeur ajoutée et le PIB

La valeur ajoutée (VA) mesure la richesse réellement créée par une unité de production : VA = valeur de la production − consommations intermédiaires. Les consommations intermédiaires sont les biens et services détruits ou transformés au cours de la production (matières premières, énergie, transport).

Exemple de filière arachide (sans autres consommations intermédiaires, pour simplifier) : un producteur du bassin arachidier vend sa récolte 1 000 000 FCFA à une huilerie ; l''huilerie vend l''huile 2 500 000 FCFA à un distributeur ; le distributeur la vend 3 200 000 FCFA aux consommateurs. VA du producteur : 1 000 000 ; VA de l''huilerie : 2 500 000 − 1 000 000 = 1 500 000 ; VA du distributeur : 3 200 000 − 2 500 000 = 700 000. Total des VA : 3 200 000 FCFA, soit exactement la valeur du produit final. Additionner les chiffres d''affaires (6 700 000 FCFA) compterait plusieurs fois la même richesse.

Le produit intérieur brut (PIB) mesure la richesse produite pendant une année sur le territoire national, par des unités résidentes. On le calcule de trois façons qui donnent en principe le même résultat.

- Optique production : PIB = somme des valeurs ajoutées + impôts sur les produits − subventions sur les produits.
- Optique dépenses (emplois) : PIB = consommation finale + formation brute de capital fixe + variation des stocks + exportations − importations.
- Optique revenus : PIB = rémunération des salariés + excédent brut d''exploitation (et revenu mixte) + impôts sur la production et les importations − subventions.

Exemple pour le pays A (en milliards de FCFA) : consommation finale 7 000 ; FBCF 2 500 ; variation des stocks 100 ; exportations 2 000 ; importations 3 100. PIB = 7 000 + 2 500 + 100 + 2 000 − 3 100 = 8 500 milliards de FCFA.

Le PIB a des limites : il ignore le travail domestique et une partie de l''activité informelle, très importante en Afrique ; il ne mesure ni les inégalités, ni la dégradation de l''environnement.

## Fiche 2 : la croissance économique

La croissance est l''augmentation durable de la production, mesurée par le taux de croissance du PIB réel. Le PIB nominal (en valeur) est mesuré aux prix courants ; le PIB réel (en volume) retire l''effet de la hausse des prix.

Formule : coefficient de variation du volume = coefficient de variation de la valeur / coefficient de variation des prix.

Exemple : le PIB nominal du pays A passe de 8 500 à 9 180 milliards (+8 %) et les prix augmentent de 5 %. Volume : 1,08 / 1,05 ≈ 1,0286. La croissance réelle est d''environ 2,86 %, et non de 3 % comme le donnerait la soustraction approximative.

Les facteurs de la croissance sont le facteur travail (quantité et qualification), le facteur capital (machines, infrastructures) et le progrès technique, qui améliore la productivité.

Le PIB par habitant rapporte le PIB à la population. Si le PIB augmente de 3 % et la population de 3 %, le PIB par habitant stagne (1,03 / 1,03 = 1).

## Fiche 3 : le développement

Le développement est l''ensemble des transformations économiques, sociales et culturelles qui améliorent durablement le bien-être de la population. Il est mesuré notamment par l''indice de développement humain (IDH) du PNUD, compris entre 0 et 1, qui combine santé (espérance de vie), éducation (durée de scolarisation) et niveau de vie (revenu par habitant).

## Fiche 4 : l''inflation

L''inflation est une hausse générale et durable du niveau des prix. Elle se mesure par l''indice des prix à la consommation (IPC), calculé sur un panier de biens et services représentatif. Taux d''inflation = (IPC de l''année − IPC de l''année précédente) / IPC de l''année précédente × 100.

- Inflation par la demande : la demande dépasse les capacités de production.
- Inflation par les coûts : hausse des salaires, de l''énergie, des matières premières.
- Inflation importée : hausse du prix des produits importés (riz, blé, carburant), très sensible dans les pays qui importent beaucoup.
- Inflation d''origine monétaire : la quantité de monnaie augmente plus vite que la production.

Conséquences : baisse du pouvoir d''achat, surtout pour les revenus fixes ; perte de compétitivité des exportations ; allègement réel des dettes.

## Fiche 5 : le chômage

Selon la définition du Bureau international du travail (BIT), un chômeur est une personne en âge de travailler, sans emploi, disponible pour travailler et qui recherche activement un emploi. La population active regroupe les actifs occupés et les chômeurs.

- Taux de chômage = chômeurs / population active × 100.
- Taux d''activité = population active / population en âge de travailler × 100.

Exemple pour le pays A : 4 200 000 actifs occupés et 300 000 chômeurs. Population active = 4 500 000. Taux de chômage = 300 000 / 4 500 000 × 100 ≈ 6,67 %.

Types de chômage : frictionnel (temps de passage d''un emploi à l''autre), conjoncturel (lié au ralentissement de l''activité), structurel (inadéquation entre les qualifications et les emplois). En Afrique, le chômage au sens strict ne suffit pas : il faut aussi considérer le sous-emploi et l''emploi informel, souvent précaire.

## Points clés

- VA = production − consommations intermédiaires ; PIB = somme des VA (+ impôts nets sur les produits).
- Réel = nominal / prix : on divise les coefficients, on ne soustrait pas les taux.
- Taux de chômage = chômeurs / population active.

## Exercices pratiques

1. Une boulangerie de Thiès réalise un chiffre d''affaires de 18 000 000 FCFA ; elle achète pour 7 500 000 FCFA de farine, 1 200 000 FCFA d''énergie et 800 000 FCFA d''emballages. Calculez sa valeur ajoutée.

2. Avec les données suivantes (milliards de FCFA) : consommation finale 5 200, FBCF 1 600, variation des stocks −50, exportations 1 100, importations 1 850, calculez le PIB.

3. L''IPC passe de 125 à 130. Calculez le taux d''inflation.

4. Le PIB nominal augmente de 7 % et les prix de 2,5 %. Calculez la croissance réelle.

5. Un pays compte 6 000 000 de personnes en âge de travailler, dont 3 900 000 actifs occupés et 600 000 chômeurs. Calculez la population active, le taux d''activité et le taux de chômage.

6. Le PIB réel augmente de 4 % et la population de 2,7 %. Calculez l''évolution du PIB réel par habitant.

7. Expliquez pourquoi un pays importateur de riz et de carburant est exposé à l''inflation importée, et proposez une réponse de politique économique.

## Corrigé

1. Consommations intermédiaires = 7 500 000 + 1 200 000 + 800 000 = 9 500 000 FCFA. VA = 18 000 000 − 9 500 000 = 8 500 000 FCFA.

2. PIB = 5 200 + 1 600 − 50 + 1 100 − 1 850 = 6 000 milliards de FCFA.

3. (130 − 125) / 125 × 100 = 4 %.

4. 1,07 / 1,025 ≈ 1,0439. Croissance réelle d''environ 4,39 %.

5. Population active = 3 900 000 + 600 000 = 4 500 000. Taux d''activité = 4 500 000 / 6 000 000 × 100 = 75 %. Taux de chômage = 600 000 / 4 500 000 × 100 ≈ 13,33 %.

6. 1,04 / 1,027 ≈ 1,0127. Le PIB réel par habitant augmente d''environ 1,27 %.

7. Quand le prix mondial du riz ou du pétrole augmente, le coût de ces importations augmente pour les commerçants et les entreprises, qui répercutent la hausse sur les prix intérieurs. Réponses possibles : développer la production locale (riz de la vallée du fleuve Sénégal, par exemple), diversifier les sources d''énergie, mesures ciblées de soutien aux ménages modestes, et, à l''échelle de l''UEMOA, une politique monétaire de la BCEAO orientée vers la stabilité des prix.', 'texte', 60, false, 20
from public.courses c where c.slug = 'bac-economie'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Macroéconomie : agrégats, croissance, développement, inflation et chômage');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Monnaie, UEMOA-BCEAO et commerce international', '## Objectifs de la leçon

- Connaître les fonctions et les formes de la monnaie, et le mécanisme de la création monétaire.
- Comprendre, de façon générale, l''organisation monétaire de l''UEMOA et le rôle de la BCEAO.
- Expliquer les théories du commerce international et lire une balance commerciale.
- Comparer libre-échange et protectionnisme.

## Fiche 1 : la monnaie

La monnaie est un actif accepté par tous en paiement des biens, des services et des dettes. Elle remplit trois fonctions :

- Intermédiaire des échanges : elle évite les difficultés du troc.
- Unité de compte : elle permet d''exprimer la valeur de tous les biens dans une même unité (le franc CFA).
- Réserve de valeur : elle permet de reporter une dépense dans le temps, à condition que l''inflation reste faible.

Formes : monnaie divisionnaire (pièces), monnaie fiduciaire (billets), monnaie scripturale (soldes des comptes bancaires, utilisés par chèque, virement ou carte) et monnaie électronique, très répandue en Afrique de l''Ouest grâce aux services de paiement par téléphone mobile.

La masse monétaire est la quantité de monnaie en circulation dans l''économie. On la décrit par des agrégats emboîtés, du plus liquide au moins liquide : M1 regroupe la monnaie fiduciaire en circulation et les dépôts à vue ; M2 ajoute d''autres dépôts, comme certains dépôts d''épargne.

## Fiche 2 : la création monétaire

Ce sont surtout les banques commerciales qui créent la monnaie, en accordant des crédits : « les crédits font les dépôts ». Quand une banque prête 5 000 000 FCFA à un commerçant de Kaolack, elle inscrit cette somme sur son compte : de la monnaie nouvelle apparaît. Quand le crédit est remboursé, cette monnaie est détruite.

La création monétaire est limitée par les besoins de liquidité des banques (retraits de billets, paiements vers d''autres banques) et par les réserves obligatoires qu''elles doivent déposer à la banque centrale. Dans un modèle simplifié, le multiplicateur de crédit vaut 1 / r, où r est le taux de réserves. Avec un taux fictif de 10 % choisi pour l''exemple, une injection de 100 millions de FCFA de monnaie centrale peut permettre au maximum 100 / 0,10 = 1 000 millions de FCFA de dépôts.

## Fiche 3 : l''UEMOA et la BCEAO

L''Union économique et monétaire ouest-africaine (UEMOA), créée par le traité de Dakar du 10 janvier 1994, regroupe huit États : Bénin, Burkina Faso, Côte d''Ivoire, Guinée-Bissau (membre depuis 1997), Mali, Niger, Sénégal et Togo. Ils partagent une monnaie commune, le franc CFA, émise par la Banque centrale des États de l''Afrique de l''Ouest (BCEAO), dont le siège est à Dakar.

- Parité fixe : le franc CFA est rattaché à l''euro selon une parité fixe, 1 euro = 655,957 FCFA.
- Dévaluation de janvier 1994 : la valeur du franc CFA a été divisée par deux par rapport au franc français.
- Objectif principal de la BCEAO : la stabilité des prix. Elle agit par ses taux directeurs (qui renchérissent ou allègent le refinancement des banques), par les réserves obligatoires et par les opérations d''injection de liquidités.
- Surveillance multilatérale : les États s''engagent à respecter des critères de convergence portant notamment sur l''inflation, le déficit budgétaire et la dette publique ; les seuils précis sont fixés par les textes de l''Union en vigueur.

Avantages de la parité fixe : stabilité des échanges avec la zone euro, inflation généralement plus faible, crédibilité. Inconvénients : impossibilité d''ajuster le taux de change pour soutenir les exportations, politique monétaire commune qui ne convient pas toujours à chaque pays, débat sur la souveraineté monétaire.

## Fiche 4 : pourquoi les pays échangent-ils ?

Adam Smith (1776) : la théorie des avantages absolus. Chaque pays se spécialise dans la production où il est le plus efficace, et importe le reste.

David Ricardo (1817) : la théorie des avantages comparatifs. Même un pays moins efficace en tout gagne à se spécialiser dans la production où son désavantage est le plus faible. Exemple classique de Ricardo : pour produire une même quantité de drap, l''Angleterre a besoin de 100 heures de travail et le Portugal de 90 ; pour le vin, l''Angleterre a besoin de 120 heures et le Portugal de 80. Le Portugal a un avantage absolu dans les deux productions. Mais, en Angleterre, une unité de drap coûte 100 / 120 ≈ 0,83 unité de vin, contre 90 / 80 = 1,125 au Portugal : l''Angleterre a un avantage comparatif dans le drap, le Portugal dans le vin.

Théorie HOS (Heckscher, Ohlin, Samuelson) : chaque pays se spécialise dans les productions qui utilisent intensément le facteur dont il est abondamment doté (travail, terre, capital).

## Fiche 5 : mesurer les échanges

- Solde commercial = exportations − importations de biens.
- Taux de couverture = exportations / importations × 100. Supérieur à 100 : excédent ; inférieur à 100 : déficit.
- Termes de l''échange = indice des prix à l''exportation / indice des prix à l''importation × 100. S''ils baissent, il faut exporter davantage pour importer la même quantité.

La balance des paiements enregistre toutes les opérations entre résidents et non-résidents : le compte courant (biens, services, revenus primaires, revenus secondaires dont les envois de fonds des migrants), le compte de capital et le compte financier (investissements directs, investissements de portefeuille, prêts).

## Fiche 6 : libre-échange ou protectionnisme ?

Le libre-échange élargit les marchés, fait baisser les prix pour les consommateurs et stimule la concurrence. Le protectionnisme protège les industries naissantes : c''est le « protectionnisme éducateur » défendu par Friedrich List au XIXe siècle. En Afrique de l''Ouest, la CEDEAO applique un tarif extérieur commun et l''Afrique construit la ZLECAf pour développer les échanges entre pays africains.

## Points clés

- Trois fonctions de la monnaie ; les crédits font les dépôts.
- UEMOA : huit États, BCEAO à Dakar, 1 euro = 655,957 FCFA, objectif de stabilité des prix.
- Smith : avantage absolu ; Ricardo : avantage comparatif.
- Taux de couverture = X / M × 100 ; termes de l''échange = prix X / prix M × 100.

## Exercices pratiques

1. Citez les trois fonctions de la monnaie et illustrez chacune par un exemple sénégalais.

2. Une banque accorde un crédit de 3 000 000 FCFA à une couturière de Thiès. Expliquez ce qui se passe sur la masse monétaire au moment du crédit et au moment du remboursement.

3. Un exportateur de mangues reçoit 45 000 euros. Combien de FCFA obtient-il ?

4. Exportations : 2 400 milliards de FCFA ; importations : 3 600 milliards. Calculez le solde commercial et le taux de couverture.

5. L''indice des prix à l''exportation passe à 96 et celui des prix à l''importation à 120 (base 100). Calculez les termes de l''échange et interprétez.

6. Pays X : 1 tonne de produit A demande 20 heures, 1 tonne de produit B 40 heures. Pays Y : 30 heures pour A, 45 heures pour B. Identifiez les avantages absolus et comparatifs.

## Corrigé

1. Intermédiaire des échanges : on paie son ticket de bus en francs CFA. Unité de compte : le prix d''un sac de riz est exprimé en FCFA. Réserve de valeur : un parent épargne sur un compte pour la rentrée scolaire.

2. Au moment du crédit, la banque inscrit 3 000 000 FCFA sur le compte de la couturière : la masse monétaire augmente de 3 000 000 FCFA. Au remboursement, cette monnaie est détruite : la masse monétaire diminue d''autant (les intérêts, eux, rémunèrent la banque).

3. 45 000 × 655,957 = 29 518 065 FCFA.

4. Solde = 2 400 − 3 600 = −1 200 milliards (déficit). Taux de couverture = 2 400 / 3 600 × 100 ≈ 66,67 %.

5. 96 / 120 × 100 = 80. Les termes de l''échange se sont dégradés de 20 % : le pays doit exporter davantage pour importer la même quantité de biens.

6. Le pays X a un avantage absolu dans les deux produits (20 < 30 et 40 < 45). Coût relatif de A en B : X, 20 / 40 = 0,5 ; Y, 30 / 45 ≈ 0,67. X a un avantage comparatif en A. Coût relatif de B en A : X, 40 / 20 = 2 ; Y, 45 / 30 = 1,5. Y a un avantage comparatif en B.', 'texte', 60, false, 30
from public.courses c where c.slug = 'bac-economie'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Monnaie, UEMOA-BCEAO et commerce international');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Finances publiques, entreprise et marché', '## Objectifs de la leçon

- Comprendre le budget de l''État, les impôts, le déficit et la dette publique.
- Expliquer la politique budgétaire et l''effet multiplicateur.
- Calculer les coûts et le seuil de rentabilité d''une entreprise.
- Analyser l''équilibre d''un marché et les différentes structures de marché.

## Fiche 1 : le budget de l''État

Le budget de l''État est l''ensemble des recettes et des dépenses prévues pour une année. Il est présenté par le gouvernement dans le projet de loi de finances et voté par l''Assemblée nationale : c''est la loi de finances initiale.

- Recettes : recettes fiscales (impôts et taxes), recettes non fiscales (revenus du domaine de l''État, redevances), dons des partenaires extérieurs.
- Dépenses : dépenses de fonctionnement (salaires des fonctionnaires, achats courants), dépenses d''investissement (routes, écoles, hôpitaux), charges de la dette (intérêts).
- Solde budgétaire = recettes − dépenses. S''il est négatif, il y a déficit, financé par l''emprunt ; l''accumulation des déficits forme la dette publique.

On rapporte souvent le déficit et la dette au PIB pour comparer les pays. Exemple fictif : un déficit de 450 milliards de FCFA pour un PIB de 9 000 milliards représente 450 / 9 000 × 100 = 5 % du PIB.

## Fiche 2 : les impôts

- Impôts directs : payés et supportés par la même personne, par exemple l''impôt sur le revenu des personnes physiques ou l''impôt sur les sociétés.
- Impôts indirects : payés par l''entreprise mais supportés par le consommateur final, par exemple la taxe sur la valeur ajoutée (TVA) ou les droits de douane.

La TVA est collectée à chaque étape mais ne pèse que sur le consommateur final, car chaque entreprise déduit la TVA payée sur ses achats. Exemple avec un taux de 18 % utilisé ici pour l''exemple (vérifiez le taux en vigueur) : un commerçant achète un téléviseur 200 000 FCFA hors taxes et le revend 260 000 FCFA hors taxes. TVA collectée = 260 000 × 0,18 = 46 800 FCFA ; TVA déductible = 200 000 × 0,18 = 36 000 FCFA ; TVA à reverser = 10 800 FCFA, soit 18 % de la valeur ajoutée de 60 000 FCFA. Le client paie 260 000 + 46 800 = 306 800 FCFA toutes taxes comprises.

## Fiche 3 : la politique budgétaire

La politique budgétaire utilise les recettes et les dépenses publiques pour agir sur l''activité. Une politique de relance augmente les dépenses ou baisse les impôts pour soutenir la demande ; une politique de rigueur réduit le déficit.

Selon Keynes, une dépense publique supplémentaire provoque une augmentation plus que proportionnelle du revenu national : c''est l''effet multiplicateur. Dans le modèle simple, k = 1 / (1 − c), où c est la propension marginale à consommer. Si c = 0,8, k = 1 / 0,2 = 5 : une dépense supplémentaire de 100 milliards peut accroître le revenu de 500 milliards au maximum.

## Fiche 4 : l''entreprise et ses coûts

L''entreprise combine des facteurs de production (travail et capital) pour produire des biens ou des services vendus sur un marché.

- Coûts fixes (CF) : indépendants des quantités produites (loyer, assurance).
- Coûts variables (CV) : liés aux quantités (matières premières, emballages).
- Coût total : CT = CF + CV ; coût moyen : CM = CT / Q ; coût marginal : coût de la dernière unité produite.

Le seuil de rentabilité est le chiffre d''affaires pour lequel l''entreprise ne fait ni bénéfice ni perte. Marge sur coût variable (MCV) = chiffre d''affaires − coûts variables ; taux de MCV = MCV / CA ; seuil de rentabilité = CF / taux de MCV.

Exemple : une unité de transformation de céréales à Kaolack réalise un chiffre d''affaires annuel de 60 000 000 FCFA, avec 36 000 000 FCFA de coûts variables et 18 000 000 FCFA de coûts fixes. MCV = 24 000 000 ; taux de MCV = 40 % ; seuil = 18 000 000 / 0,40 = 45 000 000 FCFA. Résultat = 24 000 000 − 18 000 000 = 6 000 000 FCFA. Avec une activité régulière, le seuil est atteint après 45 / 60 × 12 = 9 mois.

## Fiche 5 : le marché

Le marché est le lieu, réel ou virtuel, de rencontre entre l''offre et la demande. En général, la demande diminue quand le prix augmente et l''offre augmente quand le prix augmente. Le prix d''équilibre égalise les quantités offertes et demandées.

Exemple : demande Qd = 1 000 − 2P et offre Qo = 3P − 500. À l''équilibre, 1 000 − 2P = 3P − 500, donc 5P = 1 500 et P = 300 ; Q = 1 000 − 600 = 400.

L''élasticité-prix de la demande = variation relative de la quantité / variation relative du prix. Si le prix augmente de 10 % et la quantité demandée baisse de 5 %, l''élasticité vaut −0,5 : la demande est peu élastique, comme pour les biens de première nécessité.

Structures de marché :

- Concurrence pure et parfaite : atomicité, homogénéité du produit, libre entrée, transparence de l''information, mobilité des facteurs. Aucun agent n''influence le prix.
- Monopole : un seul vendeur, qui peut fixer le prix.
- Oligopole : quelques grandes entreprises, comme souvent dans la téléphonie ou le ciment.
- Concurrence monopolistique : beaucoup de vendeurs aux produits différenciés par la marque ou la qualité.

Quand l''État fixe un prix plafond en dessous du prix d''équilibre, la demande dépasse l''offre : risque de pénurie et de marché parallèle.

## Points clés

- Solde budgétaire = recettes − dépenses ; dette = accumulation des déficits.
- La TVA porte sur la valeur ajoutée et pèse sur le consommateur final.
- Seuil de rentabilité = CF / taux de MCV.

## Exercices pratiques

1. Distinguez impôt direct et impôt indirect, avec un exemple de chacun.

2. Recettes de l''État : 3 800 milliards de FCFA ; dépenses : 4 300 milliards ; PIB : 12 500 milliards. Calculez le solde budgétaire et son poids dans le PIB.

3. Taux de TVA de 18 % utilisé pour l''exercice : un grossiste achète des marchandises 500 000 FCFA HT et les revend 650 000 FCFA HT. Calculez la TVA collectée, la TVA déductible et la TVA à reverser.

4. La propension marginale à consommer est de 0,75. Calculez le multiplicateur et l''effet maximal d''une dépense publique supplémentaire de 40 milliards de FCFA.

5. Une entreprise de jus de bissap a des coûts fixes de 4 500 000 FCFA, vend 30 000 bouteilles à 500 FCFA, avec un coût variable unitaire de 200 FCFA. Calculez le résultat et le seuil de rentabilité en valeur et en quantité.

6. Demande : Qd = 800 − 4P ; offre : Qo = 2P − 100. Déterminez l''équilibre.

## Corrigé

1. L''impôt direct est payé et supporté par le même contribuable (impôt sur le revenu, impôt sur les sociétés). L''impôt indirect est payé par une entreprise mais répercuté sur le consommateur (TVA, droits de douane).

2. Solde = 3 800 − 4 300 = −500 milliards (déficit). Poids : 500 / 12 500 × 100 = 4 % du PIB.

3. TVA collectée = 650 000 × 0,18 = 117 000 FCFA. TVA déductible = 500 000 × 0,18 = 90 000 FCFA. TVA à reverser = 27 000 FCFA (18 % de la valeur ajoutée de 150 000 FCFA).

4. k = 1 / (1 − 0,75) = 4. Effet maximal : 40 × 4 = 160 milliards de FCFA.

5. CA = 30 000 × 500 = 15 000 000 FCFA. CV = 30 000 × 200 = 6 000 000 FCFA. MCV = 9 000 000 FCFA ; taux de MCV = 60 %. Résultat = 9 000 000 − 4 500 000 = 4 500 000 FCFA. Seuil en valeur = 4 500 000 / 0,60 = 7 500 000 FCFA. Seuil en quantité = 7 500 000 / 500 = 15 000 bouteilles (vérification : 4 500 000 / 300 de marge unitaire = 15 000).

6. 800 − 4P = 2P − 100, donc 6P = 900 et P = 150. Q = 800 − 600 = 200.', 'texte', 60, false, 40
from public.courses c where c.slug = 'bac-economie'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Finances publiques, entreprise et marché');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen : entraînement corrigé', '## Présentation

Ce sujet est un sujet d''entraînement conçu pour ce cours ; ce n''est pas un sujet officiel du Baccalauréat. Il combine les types d''exercices habituels de l''épreuve d''Économie en série G. La répartition des points est indicative et non officielle ; la durée, le coefficient et le barème réels sont fixés selon les textes officiels en vigueur. Tous les chiffres concernent un pays fictif, le « pays B », et ont été choisis pour l''exercice.

## Le sujet d''entraînement

Première partie : questions de cours (5 points, indicatif).

- a) Définissez le PIB et citez ses trois optiques de calcul.
- b) Distinguez chômage frictionnel et chômage structurel.
- c) Expliquez la phrase : « les crédits font les dépôts ».
- d) Quel est l''objectif principal de la politique monétaire de la BCEAO ?

Deuxième partie : exercice chiffré (7 points, indicatif). Données du pays B (en milliards de FCFA, sauf indication) :

- PIB nominal : année N, 10 000 ; année N+1, 10 815.
- Indice des prix (base 100 en N) : 103 en N+1.
- Population : 16 millions en N ; 16,4 millions en N+1.
- Exportations de biens : 2 500 en N ; 2 700 en N+1.
- Importations de biens : 3 400 en N ; 3 600 en N+1.
- En N+1 : 7,2 millions d''actifs, dont 0,9 million de chômeurs.

Questions : 1) Calculez le taux de croissance nominale puis réelle du PIB. 2) Calculez le PIB nominal par habitant en N et en N+1, puis l''évolution du PIB réel par habitant. 3) Calculez le solde commercial et le taux de couverture pour les deux années ; commentez. 4) Calculez le taux de chômage en N+1. 5) Rédigez un court commentaire d''ensemble.

Troisième partie : réflexion argumentée (8 points, indicatif). Sujet : « La croissance économique suffit-elle à assurer le développement d''un pays africain ? »

## Corrigé de la première partie

a) Le PIB est la valeur de la production de biens et services réalisée pendant une année par les unités résidentes sur le territoire national. Trois optiques : production (somme des valeurs ajoutées plus impôts nets sur les produits), dépenses (consommation finale + FBCF + variation des stocks + exportations − importations), revenus (rémunération des salariés + excédent brut d''exploitation + impôts nets sur la production et les importations).

b) Le chômage frictionnel correspond au temps nécessaire pour passer d''un emploi à un autre ou pour trouver un premier emploi ; il est court. Le chômage structurel vient d''un décalage durable entre les qualifications des travailleurs et les emplois proposés, ou de transformations profondes de l''économie.

c) Quand une banque accorde un crédit, elle crée de la monnaie scripturale en créditant le compte de l''emprunteur. Le dépôt naît du crédit, et non l''inverse.

d) La stabilité des prix, qui préserve le pouvoir d''achat de la monnaie commune des États de l''UEMOA.

## Corrigé de la deuxième partie

1) Croissance nominale = (10 815 − 10 000) / 10 000 × 100 = 8,15 %. Croissance réelle : 1,0815 / 1,03 = 1,05, soit 5 %. Sur 8,15 % de hausse en valeur, environ 3 % s''expliquent par les prix ; la production a réellement augmenté de 5 %.

2) PIB par habitant en N = 10 000 milliards / 16 millions = 625 000 FCFA. En N+1 = 10 815 milliards / 16,4 millions ≈ 659 451 FCFA. Population : 16,4 / 16 = 1,025, soit +2,5 %. PIB réel par habitant : 1,05 / 1,025 ≈ 1,0244, soit une hausse d''environ 2,44 %.

3) Solde en N = 2 500 − 3 400 = −900 milliards ; en N+1 = 2 700 − 3 600 = −900 milliards. Taux de couverture en N = 2 500 / 3 400 × 100 ≈ 73,53 % ; en N+1 = 2 700 / 3 600 × 100 = 75 %. Le déficit reste le même en valeur, mais la couverture des importations par les exportations s''améliore légèrement.

4) Taux de chômage = 0,9 / 7,2 × 100 = 12,5 %.

5) Commentaire : le pays B connaît une croissance réelle solide (5 %), mais la forte croissance démographique (2,5 %) réduit de moitié environ le gain par habitant. La balance commerciale reste déficitaire, signe d''une dépendance aux importations. Le chômage, à 12,5 %, montre que la croissance ne crée pas assez d''emplois.

## Corrigé de la troisième partie (plan détaillé)

Introduction : accroche sur les fortes croissances observées dans plusieurs pays africains depuis les années 2000, sans recul équivalent de la pauvreté. Définitions : la croissance est l''augmentation durable de la production réelle ; le développement est l''amélioration durable des conditions de vie de toute la population. Problématique : la croissance est-elle une condition suffisante, ou seulement nécessaire, du développement ? Annonce du plan.

I. La croissance est une condition nécessaire du développement.

- Elle augmente les revenus et permet aux ménages de mieux se nourrir, se soigner, se loger.
- Elle accroît les recettes fiscales et finance écoles, hôpitaux, routes, électricité.
- Elle crée des emplois quand elle s''appuie sur l''agriculture, l''industrie de transformation et les services.

II. Mais elle ne suffit pas.

- La croissance peut être concentrée : rente pétrolière ou minière qui profite à peu de personnes.
- Une croissance démographique rapide peut absorber les gains (exercice précédent).
- Une croissance sans emplois laisse les jeunes dans le chômage ou l''informel.
- Une croissance qui détruit l''environnement compromet l''avenir (développement durable).

III. Les conditions pour transformer la croissance en développement.

- Investir dans le capital humain : éducation, formation professionnelle, santé.
- Transformer localement les matières premières (arachide, phosphates, produits de la pêche) pour créer de la valeur ajoutée.
- Bonne gouvernance des ressources et redistribution par le budget de l''État.
- Intégration régionale (UEMOA, CEDEAO, ZLECAf) pour élargir les marchés.

Conclusion : la croissance est nécessaire mais insuffisante ; tout dépend de son contenu en emplois, de sa répartition et de sa durabilité. Ouverture : le défi des ressources pétrolières et gazières récentes du Sénégal sera justement de les transformer en développement.

## Conseils du correcteur

- Dans l''exercice chiffré, écrivez toujours la formule, puis le calcul, puis une phrase d''interprétation.
- Divisez les coefficients pour passer du nominal au réel ; ne soustrayez pas les taux.
- Dans la réflexion, chaque argument doit contenir une explication et un exemple.
- N''inventez aucun chiffre officiel : raisonnez sur les données fournies.

## Exercices pratiques

1. Reprenez la question 1 si l''indice des prix était de 106 en N+1.

2. Calculez le taux d''activité du pays B si la population en âge de travailler est de 10 millions en N+1.

3. Si les importations du pays B augmentaient de 10 % en N+2, quel niveau d''exportations faudrait-il atteindre pour obtenir un taux de couverture de 80 % ?

4. Rédigez l''introduction complète de la troisième partie.

5. Proposez un argument supplémentaire pour la partie II, avec un exemple.

## Corrigé

1. 1,0815 / 1,06 ≈ 1,0203 : croissance réelle d''environ 2,03 %.

2. 7,2 / 10 × 100 = 72 %.

3. Importations en N+2 = 3 600 × 1,10 = 3 960 milliards. Exportations nécessaires = 0,80 × 3 960 = 3 168 milliards de FCFA.

4. Exemple : « Depuis le début des années 2000, plusieurs économies africaines ont connu des taux de croissance élevés, sans que la pauvreté et le chômage des jeunes reculent autant. La croissance désigne l''augmentation durable de la production réelle d''un pays ; le développement, l''amélioration durable des conditions de vie de l''ensemble de la population. La croissance suffit-elle à produire le développement, ou n''en est-elle qu''une condition ? Nous montrerons qu''elle est nécessaire, puis qu''elle ne suffit pas, avant de dégager les conditions d''une croissance au service du développement. »

5. Exemple : la croissance peut s''accompagner d''inégalités régionales. Au Sénégal, une forte concentration des activités autour de Dakar peut faire progresser le PIB sans améliorer autant les conditions de vie dans les régions de l''intérieur.', 'texte', 75, false, 50
from public.courses c where c.slug = 'bac-economie'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen : entraînement corrigé');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : révision intensive veille du Bac en Économie', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : élèves de Terminale série G à la veille de l''épreuve d''Économie du Baccalauréat.
- Objectifs : revoir les définitions et formules essentielles, refaire des exercices chiffrés type Bac, réviser la méthode de la réflexion argumentée, apprendre à gérer son temps.
- Matériel : tableau ou diaporama, calculatrice, fiche de formules, feuilles de brouillon.
- Prérequis : avoir suivi les leçons 1 à 5 de ce cours.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et règles de la séance

Bonjour à toutes et à tous. Demain, c''est l''épreuve. Ce soir, pas de nouveauté : nous consolidons. La séance suit un fil simple : les formules, les notions, les exercices, la méthode, puis un quiz et une évaluation finale. Gardez votre calculatrice à portée de main. Quand je pose une question, notez votre réponse avant de regarder la correction ; c''est ainsi que l''on retient.

Visuel : le plan de la séance et la règle d''or de l''épreuve, « formule, calcul, unité, interprétation ».

## 05:00 – 18:00 · Les formules qui rapportent des points

Première série : les outils de calcul. Taux de variation : valeur d''arrivée moins valeur de départ, divisé par la valeur de départ, fois 100. Indice : valeur de l''année divisée par la valeur de base, fois 100. Coefficient multiplicateur : 1 plus le taux divisé par 100.

Le piège numéro un : les taux successifs. Une hausse de 20 % suivie d''une baisse de 20 % ne ramène pas au point de départ. On multiplie : 1,20 fois 0,80 égale 0,96. On a perdu 4 %.

Le piège numéro deux : le passage du nominal au réel. On divise les coefficients. Si le PIB nominal augmente de 9 % et les prix de 4 %, le volume vaut 1,09 divisé par 1,04, soit environ 1,0481. La croissance réelle est d''environ 4,81 %, pas 5 %.

Le piège numéro trois : points et pourcentages. Un taux de chômage qui passe de 8 % à 10 % augmente de 2 points, mais de 25 % en valeur relative.

Question au public : un indice passe de 120 à 132. De combien de pour cent la grandeur a-t-elle augmenté ? Réponse : 12 divisé par 120, soit 10 %, et non 12 %.

## 18:00 – 30:00 · Les notions de macroéconomie et de monnaie

Deuxième série : les notions. La valeur ajoutée égale la production moins les consommations intermédiaires. Le PIB se calcule selon trois optiques : production, dépenses, revenus. L''optique dépenses s''écrit : consommation finale plus FBCF plus variation des stocks plus exportations moins importations.

Croissance et développement : la croissance est quantitative, le développement est qualitatif, mesuré notamment par l''IDH. L''inflation est une hausse générale et durable des prix, mesurée par l''indice des prix à la consommation ; elle peut venir de la demande, des coûts, de l''extérieur ou de la monnaie. Le chômage, au sens du BIT : sans emploi, disponible, en recherche active. Taux de chômage égale chômeurs sur population active.

Monnaie : trois fonctions, intermédiaire des échanges, unité de compte, réserve de valeur. Les banques créent la monnaie en accordant des crédits. Dans l''UEMOA, huit États partagent le franc CFA émis par la BCEAO, dont le siège est à Dakar, avec une parité fixe : 1 euro égale 655,957 francs CFA. L''objectif principal de la BCEAO est la stabilité des prix.

Visuel : une carte de l''UEMOA avec les huit États et Dakar signalé.

## 30:00 – 42:00 · Commerce international et finances publiques

Troisième série. Adam Smith : avantage absolu. David Ricardo : avantage comparatif, avec son exemple du drap et du vin entre l''Angleterre et le Portugal. Retenez la méthode : on compare les coûts relatifs, c''est-à-dire ce que coûte un produit exprimé en quantité de l''autre produit.

Taux de couverture : exportations sur importations, fois 100. Termes de l''échange : indice des prix à l''exportation sur indice des prix à l''importation, fois 100. Si les termes de l''échange baissent, il faut exporter plus pour importer autant.

Finances publiques : le solde budgétaire égale recettes moins dépenses. Un solde négatif est un déficit, financé par l''emprunt, et l''accumulation des déficits forme la dette. Les impôts directs sont supportés par celui qui les paie ; les impôts indirects, comme la TVA, sont répercutés sur le consommateur final. Multiplicateur keynésien : k égale 1 sur 1 moins c. Avec c égal à 0,8, k égale 5.

Question au public : pourquoi le multiplicateur réel est-il plus faible dans une économie qui importe beaucoup ? Réponse : parce qu''une partie du revenu supplémentaire sert à acheter des produits étrangers et ne relance pas la production nationale.

## 42:00 – 50:00 · Pause active et quiz de mi-parcours

Deux minutes de pause, puis cinq questions éclair. Répondez par écrit.

- Question 1 : que vaut le coefficient multiplicateur d''une baisse de 15 % ? Réponse : 0,85.
- Question 2 : une entreprise produit pour 50 millions avec 32 millions de consommations intermédiaires. Quelle est sa valeur ajoutée ? Réponse : 18 millions.
- Question 3 : quelles sont les trois fonctions de la monnaie ? Réponse : intermédiaire des échanges, unité de compte, réserve de valeur.
- Question 4 : exportations 1 800, importations 2 400. Quel est le taux de couverture ? Réponse : 75 %.
- Question 5 : quelle formule donne le seuil de rentabilité ? Réponse : coûts fixes divisés par le taux de marge sur coût variable.

Quatre ou cinq bonnes réponses : bravo. Moins de trois : relisez ce soir votre fiche de formules, rien d''autre.

## 50:00 – 65:00 · Correction commentée d''un exercice type Bac

Énoncé : une coopérative de transformation de mangues à Ziguinchor vend 40 000 pots de confiture à 750 FCFA. Le coût variable unitaire est de 450 FCFA. Les coûts fixes annuels s''élèvent à 7 200 000 FCFA. Calculez le chiffre d''affaires, la marge sur coût variable, le résultat, le seuil de rentabilité en valeur et en quantité, et la date d''atteinte du seuil si les ventes sont régulières sur douze mois.

Correction. Chiffre d''affaires : 40 000 fois 750 égale 30 000 000 FCFA. Coûts variables : 40 000 fois 450 égale 18 000 000 FCFA. Marge sur coût variable : 12 000 000 FCFA, soit un taux de 40 %. Résultat : 12 000 000 moins 7 200 000 égale 4 800 000 FCFA de bénéfice. Seuil de rentabilité : 7 200 000 divisé par 0,40 égale 18 000 000 FCFA. En quantité : 18 000 000 divisé par 750 égale 24 000 pots. Vérification : la marge unitaire est de 300 FCFA, et 7 200 000 divisé par 300 donne bien 24 000. Date : 18 divisé par 30, fois 12, égale 7,2 mois, soit environ début août si l''exercice commence le 1er janvier.

Commentaire du correcteur : beaucoup de candidats oublient la vérification ou la phrase d''interprétation. Écrivez par exemple : « La coopérative couvre ses coûts fixes après environ 7,2 mois ; au-delà, chaque pot vendu rapporte 300 FCFA de bénéfice. »

## 65:00 – 77:00 · Méthode de la réflexion argumentée

Sujet type : « Faut-il protéger l''économie nationale de la concurrence étrangère ? » Étape un : définir. Le protectionnisme est l''ensemble des mesures qui limitent les importations ; le libre-échange est la libre circulation des marchandises. Étape deux : problématiser. Le protectionnisme protège-t-il durablement l''économie, ou freine-t-il son efficacité ? Étape trois : construire le plan.

Première partie : les arguments en faveur d''une protection. Protéger les industries naissantes, c''est l''idée du protectionnisme éducateur de Friedrich List ; préserver des emplois ; assurer la sécurité alimentaire, par exemple en soutenant la production locale de riz ou d''oignons.

Deuxième partie : les limites. Hausse des prix pour les consommateurs, risque de représailles des partenaires, entreprises moins incitées à innover.

Troisième partie : une protection ciblée et temporaire, combinée à l''intégration régionale, comme avec le tarif extérieur commun de la CEDEAO et la ZLECAf qui élargit les marchés africains.

Rappel : chaque argument contient une idée, une explication et un exemple, de préférence africain ou sénégalais.

## 77:00 – 82:00 · Gestion du temps le jour de l''épreuve

Lisez tout le sujet avant de commencer. Commencez par la partie où vous êtes le plus sûr, souvent l''exercice chiffré. Réservez un temps de préparation au brouillon pour la réflexion, puis rédigez directement au propre. Gardez les dernières minutes pour vérifier les calculs, les unités et les phrases d''interprétation. Indiquez clairement le numéro de chaque question.

## 82:00 – 90:00 · Synthèse et évaluation finale

Synthèse : les formules (taux, indices, coefficients, réel et nominal), les agrégats, l''inflation et le chômage, la monnaie et la BCEAO, le commerce international, les finances publiques, l''entreprise et le marché. Et toujours la règle d''or : formule, calcul, unité, interprétation.

Évaluation finale, cinq questions :

- Question 1 : le PIB nominal augmente de 6 % et les prix de 2 %. Quelle est la croissance réelle ? Réponse : 1,06 divisé par 1,02 égale environ 1,0392, soit environ 3,92 %.
- Question 2 : population active de 5 millions, dont 400 000 chômeurs. Quel est le taux de chômage ? Réponse : 8 %.
- Question 3 : convertissez 2 000 euros en francs CFA. Réponse : 2 000 fois 655,957 égale 1 311 914 FCFA.
- Question 4 : la propension marginale à consommer vaut 0,6. Quel est le multiplicateur ? Réponse : 1 divisé par 0,4, soit 2,5.
- Question 5 : demande Qd égale 600 moins 3P, offre Qo égale 2P moins 100. Quel est l''équilibre ? Réponse : 600 moins 3P égale 2P moins 100, donc 5P égale 700, P égale 140 et Q égale 180.

Mot de la fin : dormez suffisamment, préparez votre calculatrice et vos stylos ce soir, et faites confiance à votre méthode. Bonne chance à toutes et à tous.', 'video', 90, false, 60
from public.courses c where c.slug = 'bac-economie'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : révision intensive veille du Bac en Économie');

-- Cours : Anglais : réussir l'épreuve du Bac
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'bac-anglais', (select id from public.levels where name = 'Terminale'), null, 'Anglais (toutes séries)', 'Anglais : réussir l''épreuve du Bac', 'Ce cours prépare les élèves de Terminale de toutes les séries (L, S, G) à l''épreuve d''Anglais du Baccalauréat : compréhension et analyse de texte, grammaire (temps, passif, discours indirect, conditionnels, relatives, mots de liaison), vocabulaire thématique et expression écrite (essay argumentatif, lettre, résumé). Les explications sont en français, les exemples et les exercices en anglais, avec des corrigés complets et un sujet d''entraînement. Prérequis : les bases de l''anglais du collège.', true, 209
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comprendre l''épreuve et méthode de travail', '## Objectifs de la leçon

- Comprendre ce que l''épreuve d''Anglais du Baccalauréat attend de vous.
- Connaître les trois grandes parties habituelles : compréhension du texte, langue (grammaire et vocabulaire), expression écrite.
- Repérer les erreurs qui coûtent le plus de points.
- Organiser ses révisions sur dix semaines.

## À qui s''adresse ce cours ?

Ce cours s''adresse aux élèves de Terminale de toutes les séries (L, S et G). Le niveau d''exigence, la durée et le coefficient de l''épreuve varient selon les séries et sont fixés selon les textes officiels en vigueur : renseignez-vous auprès de votre établissement. Les explications sont données en français ; les exemples et les exercices sont en anglais, comme le jour de l''examen.

## Ce que l''épreuve évalue

Le sujet d''anglais se construit en général autour d''un texte de quelques paragraphes sur un thème d''actualité : mondialisation, environnement, technologie, éducation, santé, place des femmes, migrations. À partir de ce texte, on vérifie trois compétences.

- Comprendre : saisir l''idée générale et les détails, retrouver une information, expliquer un mot.
- Maîtriser la langue : conjuguer, transformer des phrases, employer le bon mot de liaison.
- S''exprimer : rédiger un texte personnel, organisé et correct (essay, lettre, résumé).

## Partie 1 : reading comprehension

Les questions les plus fréquentes :

- True or false? Justify with a sentence from the text. Il faut répondre « True » ou « False », puis recopier entre guillemets la phrase exacte qui le prouve.
- Answer the questions. Répondez par une phrase complète, avec vos propres mots quand c''est possible.
- Find in the text words or expressions that mean… Recherche de synonymes ou de définitions.
- Who or what do the underlined words refer to? Il s''agit de retrouver ce que remplace un pronom (it, they, which, this).
- Give a title to the text. Le titre doit résumer l''idée principale en quelques mots.

Méthode : lisez d''abord le titre, la source et les questions ; lisez ensuite le texte une première fois pour l''idée générale, puis une seconde fois en soulignant les passages utiles. Les questions suivent souvent l''ordre du texte.

Exemple. Text: "Many young Senegalese now use their phones to learn. Online courses, which were rare ten years ago, are becoming common." Question: True or false? Online courses have always been common. Answer: False. "Online courses, which were rare ten years ago, are becoming common."

## Partie 2 : grammar and vocabulary

Les exercices classiques : mettre les verbes entre parenthèses au bon temps ; passer de l''actif au passif ; transformer au discours indirect ; compléter avec un pronom relatif ; relier deux phrases avec un mot de liaison ; former des mots (noun, adjective, adverb) ; compléter un texte à trous. Ces exercices sont mécaniques : avec des règles sûres, ce sont des points garantis. Les leçons 2 et 3 les révisent en détail.

## Partie 3 : writing

On vous demande en général un texte d''une longueur indiquée (par exemple « about 150 words ») : un essay argumentatif, une lettre ou un résumé. Le correcteur regarde le respect de la consigne, l''organisation (introduction, développement, conclusion), la richesse du vocabulaire et la correction grammaticale. Respectez la longueur demandée : trop court comme trop long fait perdre des points.

## Gérer le temps

Lisez tout le sujet d''abord. Commencez par la partie où vous êtes le plus à l''aise. Préparez l''expression écrite au brouillon par un plan rapide, mais ne rédigez pas tout au brouillon. Gardez quelques minutes pour vous relire en cherchant vos erreurs habituelles.

## Les erreurs les plus fréquentes

- Oublier le -s de la troisième personne au présent : "She works", pas "She work".
- Mettre un -s aux adjectifs : "important problems", pas "importants problems".
- Confondre "since" et "for" : "since 2020" (point de départ), "for three years" (durée).
- Traduire mot à mot du français : "I have 18 years" au lieu de "I am 18 years old".
- Recopier des phrases entières du texte dans l''expression écrite.
- Répondre « True » sans justification.
- Oublier le sujet de la phrase : "It is important", pas "Is important".

## Plan de révision sur dix semaines

- Semaine 1 : méthode et lecture de textes courts chaque jour.
- Semaine 2 : les temps (présent, passé, present perfect, futur).
- Semaine 3 : le passif et le discours indirect.
- Semaine 4 : les conditionnels et les relatives.
- Semaine 5 : les mots de liaison et la formation des mots.
- Semaine 6 : vocabulaire de la mondialisation et de l''environnement.
- Semaine 7 : vocabulaire de la technologie, de l''éducation et de la santé.
- Semaine 8 : l''essay argumentatif, la lettre et le résumé.
- Semaine 9 : sujets d''entraînement complets en temps limité.
- Semaine 10 : fiches de grammaire, liste d''erreurs personnelles, repos la veille.

Conseil : tenez un carnet de vocabulaire par thème, avec dix mots par semaine et une phrase d''exemple pour chacun.

## Points clés

- Justifiez toujours un « True or false » par une citation exacte.
- Les exercices de grammaire sont des points sûrs : révisez les règles.
- En expression écrite, respectez la consigne et la longueur.
- Relisez-vous en traquant vos erreurs habituelles.

## Exercices pratiques

Text: "Dakar is growing fast. Every year, thousands of young people leave rural areas to look for jobs in the capital. However, many of them end up working in the informal sector, where wages are low and jobs are not secure. The government has launched training programmes to help them."

1. Give a title to the text.

2. True or false? Justify. a) Dakar''s population is decreasing. b) Jobs in the informal sector are well paid.

3. Find in the text words that mean: a) countryside; b) salaries; c) started.

4. What does "them" refer to in "to help them"?

5. Correct the mistakes: a) "He go to school every day." b) "They are livings in Thiès since five years."

6. Answer the question with a full sentence: Why do young people move to Dakar?

## Corrigé

1. Possible titles: "Rural Exodus to Dakar" or "Young People and Jobs in Dakar".

2. a) False. "Dakar is growing fast." b) False. "wages are low and jobs are not secure."

3. a) rural areas; b) wages; c) launched.

4. "them" refers to the young people who leave rural areas (many of them working in the informal sector).

5. a) "He goes to school every day." b) "They have been living in Thiès for five years." Explication : action commencée dans le passé et qui continue, donc present perfect continuous ; "for" introduit une durée.

6. Young people move to Dakar because they are looking for jobs.', 'texte', 45, true, 10
from public.courses c where c.slug = 'bac-anglais'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comprendre l''épreuve et méthode de travail');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Grammaire (1) : les temps, le passif et le discours indirect', '## Objectifs de la leçon

- Choisir le bon temps en anglais (présent, passé, present perfect, past perfect, futur).
- Passer de la voix active à la voix passive à tous les temps.
- Transformer une phrase au discours indirect (reported speech).
- Réussir les exercices de transformation du Bac.

## Fiche 1 : les temps du présent

Le présent simple exprime une habitude, une vérité générale ou un fait permanent : "The sun rises in the east." "My father works in Kaolack." Attention au -s à la troisième personne du singulier : he works, she goes, it watches.

Le présent continu (be + V-ing) exprime une action en cours ou temporaire : "Look! It is raining." "I am revising for the Bac this month." Certains verbes d''état ne se mettent pas normalement à la forme continue : know, like, want, believe, understand. On dit "I know", pas "I am knowing".

## Fiche 2 : les temps du passé

Le prétérit simple (V-ed ou forme irrégulière) exprime une action terminée, à un moment précis du passé : "Senegal became independent in 1960." "I visited Saint-Louis last year." Indices : yesterday, last week, ago, in 2010.

Le prétérit continu (was / were + V-ing) exprime une action en cours dans le passé, souvent interrompue : "I was reading when the electricity went off."

Le past perfect (had + participe passé) exprime une action antérieure à une autre action passée : "When we arrived at the station, the bus had already left."

## Fiche 3 : le present perfect

Le present perfect (have / has + participe passé) relie le passé au présent. Il s''emploie pour une action passée dont le résultat compte maintenant, ou pour une situation qui dure jusqu''à aujourd''hui.

- "I have lost my key." (je n''ai toujours pas ma clé)
- "She has lived in Ziguinchor since 2019." (elle y vit encore)
- "They have worked here for ten years."
- "Have you ever seen the Pink Lake?"

Since + point de départ (since 2019, since Monday) ; for + durée (for ten years, for two weeks). Le present perfect ne s''emploie jamais avec une date passée précise : on dit "I saw him yesterday", pas "I have seen him yesterday".

Le present perfect continuous (have been + V-ing) insiste sur la durée d''une action qui continue : "It has been raining for three hours."

## Fiche 4 : l''expression du futur

- will + base verbale : prédiction, décision prise sur le moment. "I think it will rain." "I''ll help you."
- be going to + base verbale : intention ou conséquence visible. "I am going to study medicine." "Look at those clouds: it''s going to rain."
- présent continu : rendez-vous prévu. "We are meeting the teacher tomorrow."
- Après when, as soon as, if, on utilise le présent et non will : "I will call you when I arrive."

## Fiche 5 : la voix passive

Formation : be (au temps de la phrase active) + participe passé. Le complément d''objet de la phrase active devient sujet ; le sujet actif devient complément introduit par "by", que l''on peut supprimer s''il n''est pas important.

- Présent : "Farmers grow rice in the Senegal River valley." → "Rice is grown in the Senegal River valley (by farmers)."
- Prétérit : "The government built the new bridge." → "The new bridge was built by the government."
- Present perfect : "They have opened a new hospital." → "A new hospital has been opened."
- Futur : "The school will organise a debate." → "A debate will be organised by the school."
- Modal : "You must protect the environment." → "The environment must be protected."
- Forme continue : "They are repairing the road." → "The road is being repaired."

Astuce : le temps est porté par "be". Vérifiez que le passif est au même temps que la phrase active.

## Fiche 6 : le discours indirect

On rapporte les paroles de quelqu''un. Après un verbe introducteur au passé (said, told, asked), les temps reculent d''un cran.

- présent simple → prétérit : "I am tired." → She said (that) she was tired.
- présent continu → prétérit continu : "I am working." → He said he was working.
- prétérit ou present perfect → past perfect : "I saw the film." → He said he had seen the film.
- will → would ; can → could ; must → had to.

Les repères de temps et de lieu changent aussi : now → then ; today → that day ; tomorrow → the next day (the following day) ; yesterday → the day before (the previous day) ; here → there ; this → that.

Les questions perdent l''inversion et le point d''interrogation. Questions fermées : if / whether. Questions ouvertes : le mot interrogatif.

- "Do you like football?" → He asked me if I liked football.
- "Where do you live?" → She asked me where I lived.

Ordres et conseils : verbe + to / not to + base verbale. "Close the door." → He told me to close the door. "Don''t be late." → She told us not to be late.

Say ou tell ? "say something", "tell somebody something" : He said that…, He told me that…

## Points clés

- since + point de départ, for + durée ; pas de present perfect avec une date passée.
- Passif = be au bon temps + participe passé.
- Discours indirect : recul des temps et changement des repères.
- Après when, as soon as, if : présent, pas will.

## Exercices pratiques

1. Put the verbs in brackets in the correct tense: a) Awa (live) in Thiès since 2015. b) Yesterday, we (visit) Gorée Island. c) Listen! The children (sing). d) When I arrived, the film (already / start).

2. Choose since or for: a) I have known him … primary school. b) She has been waiting … two hours.

3. Turn into the passive: a) The students clean the classroom every Friday. b) A storm destroyed many houses. c) They will build a new university.

4. Turn into the passive: a) Someone has stolen my phone. b) The workers are painting the school.

5. Turn into reported speech: a) Moussa said, "I am preparing for the Bac." b) The teacher said, "You must work harder."

6. Turn into reported speech: a) She asked me, "Did you see the match yesterday?" b) My mother told me, "Don''t go out tonight."

7. Correct the mistakes: a) "I have seen him last week." b) "I will call you when I will arrive." c) "He said me that he was sick."

## Corrigé

1. a) has lived (ou has been living) ; b) visited ; c) are singing ; d) had already started.

2. a) since ; b) for.

3. a) The classroom is cleaned by the students every Friday. b) Many houses were destroyed by a storm. c) A new university will be built.

4. a) My phone has been stolen. ("by someone" est supprimé, car l''agent est inconnu.) b) The school is being painted by the workers.

5. a) Moussa said (that) he was preparing for the Bac. b) The teacher said (that) we had to work harder (ou they had to, selon les personnes à qui il parlait).

6. a) She asked me if (whether) I had seen the match the day before. b) My mother told me not to go out that night.

7. a) "I saw him last week." (date passée précise, donc prétérit) b) "I will call you when I arrive." c) "He told me that he was sick." ou "He said that he was sick."', 'texte', 60, false, 20
from public.courses c where c.slug = 'bac-anglais'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Grammaire (1) : les temps, le passif et le discours indirect');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Grammaire (2) : conditionnels, relatives, mots de liaison et formation des mots', '## Objectifs de la leçon

- Maîtriser les trois types de phrases conditionnelles (et le type zéro).
- Employer correctement les pronoms relatifs.
- Relier les idées avec les bons mots de liaison.
- Former des mots à partir d''un radical (noun, adjective, adverb, contraire).

## Fiche 1 : les conditionnels

Une phrase conditionnelle comporte deux propositions : la condition (if-clause) et la conséquence (main clause). La virgule s''emploie quand la proposition en "if" vient en premier.

- Type 0, vérité générale : if + présent, présent. "If you heat water to 100 °C, it boils."
- Type 1, situation réelle ou probable : if + présent, will + base verbale. "If it rains tomorrow, we will stay at home."
- Type 2, situation imaginaire ou peu probable dans le présent ou le futur : if + prétérit, would + base verbale. "If I had more money, I would buy a computer." Avec "be", on emploie souvent "were" à toutes les personnes : "If I were the President, I would build more schools."
- Type 3, situation imaginaire dans le passé (regret) : if + past perfect, would have + participe passé. "If he had worked harder, he would have passed his exam."

Règle d''or : jamais de "will" ou de "would" dans la proposition en "if". On dit "If I had time", pas "If I would have time".

Unless signifie "if… not" : "You will fail unless you revise." = "You will fail if you don''t revise."

Transformation type Bac : "I don''t have a car, so I can''t drive you to the airport." → "If I had a car, I could drive you to the airport." On inverse les formes : la phrase de départ est négative, la conditionnelle est affirmative.

## Fiche 2 : les relatives

Le pronom relatif relie une proposition à un nom qu''elle précise.

- who : pour une personne, sujet. "The teacher who teaches us English is from Kolda."
- which : pour une chose ou un animal. "The book which I bought is interesting."
- that : pour une personne ou une chose, seulement dans les relatives déterminatives (sans virgules).
- whose : pour la possession. "The girl whose father is a doctor is my friend."
- whom : pour une personne complément, dans un style soutenu, surtout après une préposition. "The man to whom I spoke was kind."
- where : pour un lieu ; when : pour un moment. "This is the village where I was born." "I remember the day when we met."

Relative déterminative (sans virgules) : elle est indispensable pour identifier le nom. "Students who work hard succeed." Relative explicative (entre virgules) : elle apporte une information supplémentaire. "Dakar, which is the capital of Senegal, is on the Cap-Vert peninsula." Dans une relative explicative, "that" est interdit.

On peut supprimer le pronom quand il est complément dans une relative déterminative : "The book (which) I bought is interesting."

Exercice type : relier deux phrases. "I met a woman. Her son plays for the national team." → "I met a woman whose son plays for the national team."

## Fiche 3 : les mots de liaison

Ils organisent le texte et sont très valorisés dans l''expression écrite.

- Addition : and, moreover, furthermore, in addition, besides, also.
- Opposition, concession : but, however, yet, although / though + proposition, despite / in spite of + nom ou V-ing, whereas, on the other hand, nevertheless.
- Cause : because + proposition, because of + nom, since, as, due to.
- Conséquence : so, therefore, as a result, consequently, that is why.
- But : to, in order to, so as to + base verbale ; so that + proposition.
- Exemple : for example, for instance, such as.
- Conclusion : to conclude, in conclusion, to sum up, all in all.

Attention à la construction : "Although it was raining, we went out." / "Despite the rain, we went out." / "In spite of being tired, she kept studying." Jamais "despite of".

"Because" introduit une proposition (sujet + verbe) ; "because of" introduit un nom : "He stayed home because he was sick." / "He stayed home because of his illness."

## Fiche 4 : la formation des mots

- Noms : -tion (pollute → pollution), -ment (develop → development), -ness (happy → happiness), -ity (able → ability), -er / -or (teach → teacher, act → actor).
- Adjectifs : -ful (use → useful), -less (hope → hopeless), -able (afford → affordable), -al (nation → national), -ous (danger → dangerous), -ive (effect → effective).
- Adverbes : adjectif + -ly (careful → carefully, easy → easily).
- Contraires : un- (unemployed), in- / im- / il- / ir- (independent, impossible, illegal, irregular), dis- (disagree).

Exemple de consigne : "Give the noun of: educate, poor, grow." Réponses : education, poverty, growth.

## Points clés

- Jamais de will ou would après if.
- Type 2 : prétérit / would ; type 3 : past perfect / would have + participe passé.
- that interdit entre virgules ; whose pour la possession.
- although + proposition, despite + nom ; because + proposition, because of + nom.

## Exercices pratiques

1. Put the verbs in brackets in the correct form: a) If you (study) hard, you will pass. b) If I (be) rich, I would help my village. c) If she had taken the bus, she (not / miss) the meeting.

2. Rewrite using "if": a) I don''t speak Chinese, so I can''t work in Beijing. b) He didn''t wear a helmet, so he was badly injured.

3. Rewrite using "unless": "If you don''t drink clean water, you will get sick."

4. Join the sentences with a relative pronoun: a) This is the hospital. My mother works there. b) I have a friend. His sister is an engineer. c) The man is my uncle. He is talking to the teacher.

5. Fill in with the right linking word (although, because of, however, in order to, therefore): a) … the traffic, I arrived late. b) She works hard … succeed. c) … he is poor, he is generous. d) The roads are bad. …, trade is difficult. e) Prices have risen. …, salaries have not changed.

6. Give the word asked for: a) noun of "pollute"; b) adjective of "danger"; c) opposite of "employed"; d) adverb of "careful"; e) noun of "poor".

7. Correct the mistakes: a) "If I would have money, I would travel." b) "Despite of the rain, we played." c) "Dakar, that is the capital, is crowded."

## Corrigé

1. a) study ; b) were (ou was en anglais familier) ; c) would not have missed.

2. a) If I spoke Chinese, I could (ou would be able to) work in Beijing. b) If he had worn a helmet, he would not have been badly injured.

3. Unless you drink clean water, you will get sick.

4. a) This is the hospital where my mother works. b) I have a friend whose sister is an engineer. c) The man who (ou that) is talking to the teacher is my uncle.

5. a) Because of ; b) in order to ; c) Although ; d) Therefore ; e) However.

6. a) pollution ; b) dangerous ; c) unemployed ; d) carefully ; e) poverty.

7. a) "If I had money, I would travel." b) "Despite the rain, we played." ou "In spite of the rain, we played." c) "Dakar, which is the capital, is crowded."', 'texte', 60, false, 30
from public.courses c where c.slug = 'bac-anglais'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Grammaire (2) : conditionnels, relatives, mots de liaison et formation des mots');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Vocabulaire thématique et expression écrite : essay, lettre, résumé', '## Objectifs de la leçon

- Acquérir le vocabulaire des cinq grands thèmes du Bac : mondialisation, environnement, technologie, éducation, santé.
- Rédiger un essay argumentatif organisé.
- Rédiger une lettre formelle ou informelle.
- Résumer un texte en anglais.

## Fiche 1 : vocabulary themes

Globalization : trade (le commerce), goods (les marchandises), a multinational company, to export / to import, a market, competition, the global village, outsourcing (la délocalisation), migration, a migrant, remittances (les envois de fonds des migrants), inequality, developing countries, developed countries.

Environment : climate change, global warming, greenhouse gases, pollution, waste (les déchets), plastic bags, deforestation, desertification, drought (la sécheresse), flooding (les inondations), coastal erosion, renewable energy, solar power, to recycle, to protect, sustainable development.

Technology : the Internet, a smartphone, social media / social networks, an app, to download, online, artificial intelligence, mobile money, cybercrime, fake news, addiction, screen time, digital skills.

Education : school enrolment (la scolarisation), a dropout (un élève qui abandonne), literacy / illiteracy (l''alphabétisation / l''analphabétisme), to attend school, a degree (un diplôme universitaire), vocational training (la formation professionnelle), girls'' education, a scholarship (une bourse), to graduate.

Health : a disease, malaria, a vaccine, to vaccinate, a mosquito net, healthcare, a health centre, a nurse, malnutrition, a balanced diet, hygiene, clean water, to prevent / prevention, an epidemic.

Conseil : apprenez les mots dans une phrase. "Coastal erosion threatens many houses in Saint-Louis." "Mobile money has made payments easier in West Africa." "A mosquito net helps to prevent malaria."

## Fiche 2 : l''essay argumentatif

Sujet type : "Some people think that social media do more harm than good to young people. Do you agree? (about 150 words)"

Plan en quatre paragraphes :

- Introduction : présenter le sujet en une ou deux phrases et annoncer votre position ou le débat.
- Paragraphe 1 : premier point de vue, avec deux arguments et un exemple.
- Paragraphe 2 : point de vue opposé, ou suite de votre argumentation.
- Conclusion : votre opinion nuancée, éventuellement une recommandation.

Expressions utiles : "In my opinion…", "I strongly believe that…", "On the one hand… On the other hand…", "Some people argue that…", "It is true that…, but…", "To conclude…".

Modèle :

"Nowadays, almost every teenager has a smartphone and uses social media every day. Are these networks a danger or an opportunity for young people?

On the one hand, social media can be harmful. Many students spend hours online instead of revising, and some become addicted. Moreover, fake news and cyberbullying spread very quickly on these platforms.

On the other hand, social networks are useful tools. They allow young people to keep in touch with relatives abroad, to share information and even to learn: many students watch free lessons online to prepare for their exams.

To conclude, I believe that social media are neither good nor bad in themselves. What matters is how we use them. Parents and teachers should help young people to use them responsibly."

Ce modèle compte environ 130 mots ; pour atteindre 150 mots, ajoutez un exemple précis dans chaque paragraphe. Remarquez les mots de liaison (On the one hand, Moreover, On the other hand, To conclude) et le vocabulaire thématique.

## Fiche 3 : la lettre

Lettre informelle (à un ami, un correspondant) : adresse de l''expéditeur et date en haut à droite ; "Dear Fatou," ; un paragraphe d''ouverture amical ("Thank you for your letter. I was happy to hear from you.") ; le corps de la lettre ; une formule de fin ("Write back soon." "Best wishes," ou "Love,") ; le prénom.

Lettre formelle (à un directeur, un maire, un journal) : "Dear Sir or Madam," si l''on ne connaît pas le nom, et alors "Yours faithfully," ; "Dear Mr Diop," si l''on connaît le nom, et alors "Yours sincerely," ; un premier paragraphe qui annonce l''objet ("I am writing to complain about…", "I am writing to apply for…") ; un ton poli, pas de contractions (I am, not I''m) ; le nom complet à la fin.

Exemple d''ouverture formelle : "Dear Sir or Madam, I am writing to draw your attention to the problem of plastic waste in our neighbourhood."

## Fiche 4 : le résumé

Le résumé (summary) consiste à réduire un texte à ses idées essentielles, en un nombre de mots indiqué.

- Lisez le texte et repérez l''idée principale de chaque paragraphe.
- Supprimez les exemples, les détails, les chiffres secondaires et les répétitions.
- Reformulez avec vos propres mots ; ne recopiez pas des phrases entières.
- Respectez l''ordre des idées du texte et le nombre de mots demandé.
- Écrivez au présent et à la troisième personne : "The author explains that…", "The text shows that…".
- N''ajoutez jamais votre opinion.

## Points clés

- Un carnet de vocabulaire par thème, avec des phrases d''exemple.
- Essay : introduction, deux paragraphes argumentés, conclusion, mots de liaison.
- Lettre formelle : Yours faithfully (nom inconnu) ou Yours sincerely (nom connu).
- Résumé : idées essentielles, propres mots, aucune opinion.

## Exercices pratiques

1. Translate into English: a) la sécheresse ; b) les énergies renouvelables ; c) l''analphabétisme ; d) un vaccin ; e) les envois de fonds des migrants.

2. Complete with a word from Fiche 1: a) Many trees are cut down: this is called … . b) Students who leave school early are called … . c) Sleeping under a … protects you against mosquitoes.

3. Write the first paragraph of a formal letter to the mayor of your town about the lack of street lights.

4. Write three arguments for and three arguments against this statement: "Every student should study online."

5. Summarize this text in about 30 words: "Plastic bags are cheap and practical, so people use them every day. But after use, many of them are thrown away in streets, fields and the sea. They take hundreds of years to break down. Animals eat them and die. Several African countries have decided to ban or limit them, and people are encouraged to use cloth or paper bags instead."

6. Write an essay of about 150 words: "Girls'' education is the key to development. Discuss."

## Corrigé

1. a) drought ; b) renewable energy (renewable energies) ; c) illiteracy ; d) a vaccine ; e) remittances.

2. a) deforestation ; b) dropouts ; c) mosquito net.

3. Model: "Dear Mr Mayor, I am writing on behalf of the young people of our neighbourhood to draw your attention to the lack of street lights in our area. At night, the streets are completely dark, which makes them dangerous for pedestrians, especially for students coming back from evening classes." (Formule de fin : "Yours sincerely," si l''on s''adresse au maire par son titre ou son nom.)

4. For: students can learn at their own pace; online courses are often cheaper; they can access lessons from anywhere. Against: not everyone has a good Internet connection or a computer; students may lack motivation without a teacher; online learning reduces contact with classmates.

5. Model (about 30 words): "Plastic bags are widely used because they are cheap, but they pollute the environment for centuries and kill animals. Therefore, some African countries limit them and promote alternative bags."

6. Model: "Education is a fundamental right, but in many countries girls still go to school less than boys. Is girls'' education really the key to development? First, educated girls have better jobs and higher incomes, so they can support their families and contribute to the economy. Moreover, an educated mother usually takes better care of her children''s health and education. In addition, education helps women to take part in political and social decisions. However, girls'' education alone is not enough. Countries also need good infrastructure, healthcare and jobs for everybody. Besides, some families still face poverty, early marriage or long distances to school, which keep girls at home. To conclude, girls'' education is not the only condition for development, but it is one of the most powerful. Governments, parents and communities should work together to keep girls in school."', 'texte', 60, false, 40
from public.courses c where c.slug = 'bac-anglais'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Vocabulaire thématique et expression écrite : essay, lettre, résumé');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen : entraînement corrigé', '## Présentation

Ce sujet est un sujet d''entraînement rédigé pour ce cours ; ce n''est pas un sujet officiel du Baccalauréat. Le texte a été écrit spécialement pour l''exercice. Il reprend la structure habituelle de l''épreuve : compréhension, langue, expression écrite. La répartition des points est indicative et non officielle ; la durée et le coefficient réels sont fixés selon les textes officiels en vigueur. Travaillez en temps limité, sans dictionnaire, puis comparez avec le corrigé.

## Le texte

"The Sea Is Coming

In many coastal towns of West Africa, the sea is slowly eating the land. In Saint-Louis, in the north of Senegal, some families have already lost their houses. Fishermen who have lived on the Langue de Barbarie for generations now see the waves reach places that were dry when they were children.

Scientists explain that coastal erosion has several causes. Global warming makes sea levels rise, and storms are becoming stronger. But human activities also play a role: sand is taken from beaches to build houses, and mangroves, which protect the coast, are cut down.

Governments and international partners have started to react. Walls have been built in some places, and families have been moved to safer areas. However, many of these people are worried. ''If we leave the coast, how will we fish?'' asks one of them.

Experts believe that the solution must combine several actions: planting mangroves again, stopping illegal sand extraction and helping communities to adapt. If nothing is done, thousands of people could lose their homes in the coming decades."

## Le sujet d''entraînement

Part A. Reading comprehension (8 points, indicatif).

- 1. Give a suitable title to the text other than the original one.
- 2. True or false? Justify with a sentence from the text. a) Coastal erosion only has natural causes. b) Mangroves help to protect the coast. c) All the families are happy to move.
- 3. Answer the questions: a) Which town in Senegal is mentioned? b) Name two human activities that make erosion worse. c) What are governments doing?
- 4. Find in the text words or expressions that mean: a) slowly destroying; b) for a very long time (paragraph 1); c) more powerful.
- 5. What do these words refer to? "which" (paragraph 2); "them" (paragraph 3).

Part B. Language (6 points, indicatif).

- 1. Turn into the active voice: "Walls have been built in some places."
- 2. Turn into reported speech: One fisherman asks, "If we leave the coast, how will we fish?" Begin: One fisherman asked…
- 3. Complete: If nothing is done, thousands of people (lose) … their homes. Then rewrite the sentence as a type 2 conditional.
- 4. Join with a relative pronoun: "Fishermen live on the Langue de Barbarie. They are worried."
- 5. Give the noun of: protect, erode, extract.

Part C. Writing (6 points, indicatif). Choose one topic (about 150 words).

- Topic 1: Write a letter to the mayor of a coastal town to suggest three actions against coastal erosion.
- Topic 2: "Protecting the environment is the responsibility of governments, not of ordinary citizens." Do you agree?

## Corrigé de la partie A

1. Possible titles: "Coastal Erosion in West Africa", "When the Sea Eats the Land", "Saint-Louis Threatened by the Sea".

2. a) False. "But human activities also play a role." b) True. "mangroves, which protect the coast, are cut down." c) False. "However, many of these people are worried."

3. a) Saint-Louis. b) Taking sand from beaches to build houses and cutting down mangroves. c) They have built walls in some places and moved families to safer areas.

4. a) eating (the land) ; b) for generations ; c) stronger.

5. "which" refers to the mangroves ; "them" refers to the people (the families) who have been moved.

## Corrigé de la partie B

1. Someone (ou The authorities) has built walls in some places. Explication : "have been built" est un present perfect passif ; à l''actif on garde le present perfect, et le sujet singulier "someone" impose "has".

2. One fisherman asked how they would fish if they left the coast. Les temps reculent (leave → left, will → would) et l''inversion de la question disparaît.

3. Type 1 : If nothing is done, thousands of people will lose their homes. Type 2 : If nothing were done, thousands of people would lose their homes.

4. The fishermen who live on the Langue de Barbarie are worried.

5. protection ; erosion ; extraction.

## Corrigé de la partie C (modèles)

Topic 1 (letter): "Dear Mr Mayor, I am writing to suggest some actions against coastal erosion, which threatens many families in our town. First, I suggest that the town hall organise campaigns to plant mangroves along the coast, with the help of schools and associations. Second, illegal sand extraction from beaches should be stopped and controlled more strictly. Finally, people living very close to the sea should receive help to move to safer areas while keeping access to the beach for fishing. I am convinced that these measures, if they are carried out together, will protect our town and the jobs of its inhabitants. Thank you for your attention. Yours sincerely, Mariama Fall."

Topic 2 (essay): plan conseillé. Introduction : présenter le débat. Paragraphe 1 : le rôle des gouvernements (lois, contrôle de l''extraction de sable, financement des digues, accords internationaux). Paragraphe 2 : le rôle des citoyens (ne pas jeter de déchets, recycler, économiser l''eau et l''énergie, planter des arbres, s''engager dans des associations). Conclusion : la protection de l''environnement est une responsabilité partagée.

## Conseils du correcteur

- En compréhension, recopiez la justification entre guillemets, exactement comme dans le texte.
- En grammaire, vérifiez le temps et l''accord du sujet et du verbe.
- En expression écrite, respectez la forme demandée (lettre ou essay) et la longueur.
- Réservez du temps pour la relecture : -s de la troisième personne, accords, orthographe.

## Exercices pratiques

1. Find in the text a word that means "coastal forests of trees that grow in salty water".

2. Turn into the passive: "Human activities destroy mangroves."

3. Turn into reported speech: The expert said, "We must stop illegal sand extraction."

4. Rewrite as a type 3 conditional: "They didn''t protect the mangroves, so the coast was destroyed."

5. Write a summary of the text in about 40 words.

## Corrigé

1. mangroves (paragraph 2).

2. Mangroves are destroyed by human activities.

3. The expert said (that) they had to stop illegal sand extraction.

4. If they had protected the mangroves, the coast would not have been destroyed.

5. Model: "In West Africa, especially in Saint-Louis, the sea is destroying the coast. Erosion is caused by global warming and human activities. Some actions have started, but experts say mangroves, controls and help for communities are needed."', 'texte', 75, false, 50
from public.courses c where c.slug = 'bac-anglais'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen : entraînement corrigé');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : révision intensive veille du Bac en Anglais', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : élèves de Terminale de toutes les séries (L, S, G) à la veille de l''épreuve d''Anglais du Baccalauréat.
- Objectifs : revoir les règles de grammaire les plus rentables, réactiver le vocabulaire thématique, corriger ensemble des exercices type Bac, réviser la méthode de l''expression écrite et de la gestion du temps.
- Matériel : tableau ou diaporama, un texte court imprimé ou projeté, feuilles de brouillon.
- Prérequis : avoir suivi les leçons 1 à 5 de ce cours.

## Déroulé minuté

## 00:00 – 05:00 · Welcome: objectifs de la séance

Bonjour à toutes et à tous, good evening everybody! Demain, c''est l''épreuve d''anglais. Ce soir, nous n''apprenons rien de nouveau : nous consolidons les points qui rapportent le plus. Pendant une heure et demie, nous allons revoir les temps, le passif, le discours indirect, les conditionnels, les relatives et les mots de liaison, puis le vocabulaire et l''expression écrite. Je vous poserai des questions : répondez sur votre feuille avant de regarder la correction.

Visuel : le plan de la séance en sept étapes, avec en bas de l''écran la devise du soir : "Accuracy first."

## 05:00 – 18:00 · Tenses: les temps en douze minutes

Commençons par les temps. Le présent simple pour les habitudes et les vérités générales : "She works in a bank." N''oubliez jamais le -s de la troisième personne. Le présent continu pour l''action en cours : "They are watching the match now."

Le prétérit pour une action terminée à un moment précis du passé : "We moved to Thiès in 2018." Le present perfect pour un lien entre passé et présent : "I have lived here since 2018." Retenez la règle d''or : since + point de départ, for + durée, et jamais de present perfect avec "yesterday", "last year" ou "in 2018".

Le past perfect pour l''antériorité dans le passé : "When I arrived, the lesson had started." Le futur : will pour une prédiction ou une décision immédiate, be going to pour une intention. Et après when, as soon as, if : le présent. "I will call you when I get home."

Question au public : corrigez "I am living in Kaolack since three years." Réponse : "I have been living in Kaolack for three years."

Visuel : une frise avec les temps placés sur la ligne du passé, du présent et du futur.

## 18:00 – 30:00 · Passive and reported speech

Le passif : be au même temps que la phrase active, puis le participe passé. "The pupils plant trees." devient "Trees are planted by the pupils." "They built the bridge in 2020." devient "The bridge was built in 2020." "They have closed the road." devient "The road has been closed." Le complément d''agent avec "by" disparaît quand l''agent est inconnu ou évident.

Le discours indirect : les temps reculent d''un cran. Présent devient prétérit, prétérit et present perfect deviennent past perfect, will devient would, can devient could, must devient had to. Les repères changent : now devient then, today devient that day, tomorrow devient the next day, yesterday devient the day before, here devient there.

Pour les questions : if ou whether pour une question fermée, le mot interrogatif pour une question ouverte, et surtout pas d''inversion. "Where do you live?" devient "He asked me where I lived." Pour les ordres : told + to ou not to. "Don''t shout!" devient "She told them not to shout."

Question au public : mettez au discours indirect "I will help you tomorrow," said Awa. Réponse : Awa said she would help me the next day.

## 30:00 – 42:00 · Conditionals, relatives and linking words

Les conditionnels. Type 1 : if + présent, will. "If you revise, you will pass." Type 2 : if + prétérit, would. "If I were a minister, I would build more schools." Type 3 : if + past perfect, would have + participe passé. "If she had left earlier, she would not have missed the bus." Jamais de will ou would après if.

Les relatives : who pour les personnes, which pour les choses, whose pour la possession, where pour les lieux. Entre virgules, "that" est interdit. "Saint-Louis, which was the capital of French West Africa, is a historic city."

Les mots de liaison : however, moreover, therefore, although, despite, because of, in order to. Rappelez-vous les constructions : although + proposition, despite + nom ; because + proposition, because of + nom.

Question au public : reliez "The boy is my cousin. His bicycle was stolen." Réponse : "The boy whose bicycle was stolen is my cousin."

## 42:00 – 50:00 · Quiz time: pause active

Deux minutes de pause, puis cinq questions éclair. Écrivez vos réponses.

- Question 1 : since ou for ? "I have known her … ten years." Réponse : for.
- Question 2 : mettez au passif "Somebody cleans the office every day." Réponse : The office is cleaned every day.
- Question 3 : complétez "If I … (have) a car, I would drive you." Réponse : had.
- Question 4 : traduisez « la sécheresse ». Réponse : drought.
- Question 5 : quelle formule de fin pour une lettre formelle commençant par "Dear Sir or Madam" ? Réponse : Yours faithfully.

Quatre ou cinq bonnes réponses : très bien. Moins de trois : relisez ce soir votre fiche de règles, rien d''autre.

## 50:00 – 62:00 · Vocabulary: les cinq thèmes

Revoyons rapidement les mots les plus utiles. Globalization : trade, goods, multinational company, competition, migration, remittances, inequality. Environment : climate change, global warming, pollution, waste, drought, flooding, coastal erosion, renewable energy, sustainable development. Technology : social media, smartphone, online, artificial intelligence, mobile money, fake news, addiction. Education : school enrolment, dropout, literacy, vocational training, scholarship, girls'' education. Health : disease, malaria, vaccine, mosquito net, healthcare, malnutrition, clean water, prevention.

Exercice oral : je dis une phrase en français, vous la dites en anglais. « Le paiement par téléphone mobile a facilité la vie des commerçants. » Réponse possible : "Mobile money has made life easier for traders." « Beaucoup d''élèves abandonnent l''école à cause de la pauvreté. » Réponse possible : "Many pupils drop out of school because of poverty."

Visuel : un tableau à cinq colonnes, une par thème.

## 62:00 – 75:00 · Correction commentée d''un exercice de compréhension et d''un essay

Texte projeté : "Many young Africans dream of going abroad. However, some of them are now creating businesses at home, thanks to mobile phones and the Internet. In Dakar, for example, young entrepreneurs sell clothes and food online."

Question 1 : True or false? All young Africans want to go abroad. Une copie fictive répond : "False." C''est insuffisant : il manque la justification. Correction : False. "However, some of them are now creating businesses at home."

Question 2 : Find a word meaning "people who start a business". Réponse : entrepreneurs.

Passons à l''expression écrite. Sujet : "Should young Africans stay in their countries to build their future?" Une introduction faible : "Yes, they should stay. It is good." Pourquoi est-ce faible ? Pas de présentation du sujet, pas de nuance, vocabulaire pauvre. Introduction améliorée : "Every year, many young Africans leave their countries to look for better opportunities abroad. Should they stay at home to build their future, or is migration a reasonable choice?" Ensuite, un paragraphe "On the one hand", un paragraphe "On the other hand", et une conclusion nuancée qui commence par "To conclude".

## 75:00 – 82:00 · Gestion du temps et relecture

Le jour de l''épreuve : lisez tout le sujet, y compris les consignes d''expression écrite, avant de commencer. Faites d''abord la partie que vous maîtrisez le mieux. Pour l''expression écrite, préparez un plan au brouillon en quelques lignes, puis rédigez directement au propre. Gardez cinq à dix minutes pour la relecture, avec une liste de contrôle : -s de la troisième personne, temps des verbes, accord sujet-verbe, absence de -s aux adjectifs, majuscules aux noms de pays et de langues, nombre de mots.

## 82:00 – 90:00 · Synthèse et évaluation finale

Synthèse : en compréhension, justifiez toujours par une citation exacte ; en langue, appliquez les règles sans improviser ; en expression écrite, respectez la forme, la longueur et l''organisation, avec des mots de liaison et du vocabulaire thématique.

Évaluation finale, cinq questions :

- Question 1 : corrigez "He don''t like maths." Réponse : "He doesn''t like maths."
- Question 2 : mettez au passif "The company will hire twenty workers." Réponse : Twenty workers will be hired by the company.
- Question 3 : mettez au discours indirect : She said, "I am tired today." Réponse : She said (that) she was tired that day.
- Question 4 : réécrivez au type 3 : "He didn''t revise, so he failed." Réponse : If he had revised, he would not have failed.
- Question 5 : complétez avec although ou despite : "… the heat, the students kept working." Réponse : Despite.

Mot de la fin : sleep well, have a good breakfast, and trust your preparation. Lisez calmement, écrivez clairement. Good luck to all of you!', 'video', 90, false, 60
from public.courses c where c.slug = 'bac-anglais'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : révision intensive veille du Bac en Anglais');
