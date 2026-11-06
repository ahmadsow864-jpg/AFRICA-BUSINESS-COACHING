-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Cours (partie 18/18). À exécuter après seed.sql.

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
